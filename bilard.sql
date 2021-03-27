-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Mar 2021, 17:01
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
  `short_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `subtitle`, `short_description`, `description`, `photo`, `photo_alt`, `created_at`, `updated_at`, `button_name`) VALUES
(1, 'O klubie', 'W skrócie', '<p>Bilard Centrum Lubin serdecznie zaprasza amatorów jak i profesjonalistów gry w poola. Oferujemy profejsonalne stoły bilardowe <span style=\"color: rgb(34, 34, 34);\">Dynamic II 8ft. W ofercie także stoły do tenisa stołowego oraz maszyna do gry w rzutki. Zapraszamy także do skorzystania z naszej oferty gastronomicznej. Szczegóły w zakładce \"Oferta\" oraz zakładce \"Cennik\".</span></p>', '<p><span style=\"color: rgb(95, 99, 86);\">Szukasz miejsca do spontanicznego wyjścia ze znajomymi? W Lubinie z pewnością nie znajdziesz lepszego lokalu niż Bilard Centrum Baribal. Jak sama nazwa wskazuje, miejsce to oferuje swoim gościom aż 6 profesjonalnych stołów bilardowych do gry w poola, na których komfortowo grać mogą zarówno początkujący, jak i profesjonaliści. Nietuzinkowe i urządzone z gustem wnętrza w tym lokalu sprawiają, że wszyscy goście mogą w miejscu tym zrelaksować się i spędzić czas w niesamowicie przyjaznej atmosferze.</span></p>', '2020-09-03/klub_1599149969.jpg', 'O klubie', NULL, '2021-02-10 18:37:52', 'Czytaj więcej');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `attachments`
--

INSERT INTO `attachments` (`id`, `path`, `mail_id`, `created_at`, `updated_at`) VALUES
(72, '2021-01-09/stol_1610204512.jpg', 131, '2021-01-09 15:01:53', '2021-01-09 15:01:53'),
(73, '2021-01-09/stol_1610204617.jpg', 132, '2021-01-09 15:03:39', '2021-01-09 15:03:39');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_descriptions`
--

CREATE TABLE `auth_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_regulations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_confirm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privace_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make_account` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `or` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_register_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_register_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_login_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_login_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_now` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reminder_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reminder_send` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_password_reminder_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_password_reminder_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgot_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `auth_descriptions`
--

INSERT INTO `auth_descriptions` (`id`, `title`, `register_title`, `shop_regulations`, `name`, `email`, `password`, `password_confirm`, `close_icon`, `download`, `privace_policy`, `make_account`, `or`, `fb_button_name`, `fb_icon`, `login_title`, `bg_register_photo`, `bg_register_photo_alt`, `bg_login_photo`, `bg_login_photo_alt`, `register_now`, `created_at`, `updated_at`, `login`, `password_reminder_title`, `password_reminder_send`, `bg_password_reminder_photo`, `bg_password_reminder_photo_alt`, `forgot_password`) VALUES
(1, 'Opisy', 'Zarejestruj się', 'Akceptuję regulamin sklepu', 'Imię i Nazwisko', 'Adres E-mail', 'Hasło', 'Potwierdź Hasło', 'close', 'Pobierz', 'Polityka prywatności', 'Załóż konto', 'lub', 'Zaloguj się przez Facebooka', 'facebook', 'Zaloguj się', '2020-10-11/8-ball_1602414474.jpg', NULL, '2021-01-06/stol_1609950315.jpg', NULL, 'Nie masz konta? Zarejestruj się', NULL, '2021-03-27 15:15:54', 'Zaloguj się', 'Przypomnienie hasła', 'Wyślij hasło na podany e-mail!', '2020-09-15/2912522_1600184875.jpg', NULL, 'Zapomniałem hasła');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `breadcrumb_descriptions`
--

CREATE TABLE `breadcrumb_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `breadcrumb_descriptions`
--

INSERT INTO `breadcrumb_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Strona główna', NULL, '2021-01-03 14:21:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `calendar_descriptions`
--

CREATE TABLE `calendar_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legend` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unconfirmed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_format` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unconfirmed_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `calendar_descriptions`
--

INSERT INTO `calendar_descriptions` (`id`, `title`, `legend`, `unconfirmed`, `type`, `day_format`, `month`, `week`, `day`, `four_days`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `previous_icon`, `next_icon`, `reservation_icon`, `created_at`, `updated_at`, `unconfirmed_color`, `more`) VALUES
(1, 'Kalendarz', 'Legenda', 'Niepotwierdzona rezerwacja', 'Typ', 'Format dni', 'Miesiąc', 'Tydzień', 'Dzień', 'Cztery Dni', 'pon.', 'wt.', 'śr.', 'czw.', 'pt.', 'sob.', 'niedz.', 'chevron-left', 'chevron-right', 'pencil', NULL, '2021-01-03 10:06:51', 'rgb(197 197 197)', 'Pokaż więcej');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cart_descriptions`
--

CREATE TABLE `cart_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `go_to_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realize` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traditional` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delete` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `cart_descriptions`
--

INSERT INTO `cart_descriptions` (`id`, `title`, `cart_icon`, `empty`, `delivery`, `sum`, `go_to_cart`, `step_1`, `step_2`, `step_3`, `step_4`, `next`, `back`, `realize`, `delivery_type`, `payment_type`, `traditional`, `personal`, `name`, `email`, `phone`, `street`, `house_number`, `flat_number`, `zip_code`, `city`, `message`, `other_address`, `yes`, `no`, `created_at`, `updated_at`, `delete`) VALUES
(1, 'Koszyk', 'cart', 'Twój koszyk jest pusty! Odwiedź zakładkę Sklep!', '+ przesyłka', 'Razem:', 'Przejdź do koszyka!', 'Wybrane produkty', 'Dane kupującego', 'Dostawa i Płatność', 'Podsumowanie', 'Dalej', 'Wróć', 'Zrealizuj zamówienie', 'Wybierz rodzaj dostawy', 'Wybierz rodzaj płatności', 'Przelew tradycyjny', 'Przy odbiorze', 'Imię i nazwisko *', 'E-mail *', 'Telefon *', 'Ulica *', 'Numer Domu *', 'Numer Mieszkania', 'Kod Pocztowy *', 'Miasto *', 'Uwagi do zamówienia', 'Dostawa na inny adres?', 'Tak', 'Nie', NULL, '2021-01-28 10:27:16', 'delete');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments_descriptions`
--

CREATE TABLE `comments_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `write` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `comments_descriptions`
--

INSERT INTO `comments_descriptions` (`id`, `show`, `hide`, `delete`, `send`, `created_at`, `updated_at`, `title`, `write`, `button_icon`, `question`, `login`) VALUES
(1, 'Pokaż więcej komentarzy', 'Zwiń komentarze', 'Usuń', 'Wyślij', NULL, '2021-01-09 14:06:25', 'Komentarze opisy', 'Napisz komentarz', 'billiards', 'Masz pytania lub chcesz podzielić się swoją opinią? Napisz komentarz!', 'Zaloguj się, aby zobaczyć komentarze!');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `contact`
--

INSERT INTO `contact` (`id`, `email_1`, `email_2`, `phone_1`, `phone_2`, `zip_code`, `city`, `address`, `created_at`, `updated_at`, `name`, `title`, `fb`, `ig`, `yt`, `tw`, `map`) VALUES
(1, 'daniel.lewicki@stud.pwsz.legnica.edu.pl', 'b.fortunski@bilardlubin.pl', '+48 665 422 605', '+48 123 456 789', '59-300', 'Lubin', 'Aleja Komisji Edukacji Narodowej 6', NULL, '2021-01-28 09:55:33', 'Bogusław Fortuński', 'Dane Kontaktowe', 'https://www.facebook.com/bfortunski/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'https://twitter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2489.699790756315!2d16.196676415765676!3d51.390195379616074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470f6f6e97ccc527%3A0x7d644ea82e2eebaf!2sBilard%20Centrum%20Lubin!5e0!3m2!1spl!2spl!4v1603721873070!5m2!1spl!2spl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contact_descriptions`
--

CREATE TABLE `contact_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `find_us` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files_length` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `contact_descriptions`
--

INSERT INTO `contact_descriptions` (`id`, `title`, `subtitle`, `name`, `email`, `phone`, `subject`, `message`, `files`, `button_name`, `phone_icon`, `email_icon`, `map_icon`, `account_icon`, `find_us`, `created_at`, `updated_at`, `file_icon`, `files_length`) VALUES
(1, 'Kontakt', 'Skontaktuj się z nami wypełniając formularz kontaktowy!', 'Imię i nazwisko *', 'Adres e-mail *', 'Numer telefonu *', 'Temat *', 'Wiadomość *', 'Pliki (opcjonalnie)', 'Wyślij', 'phone', 'email', 'map', 'account', 'Jak nas znaleźć?', NULL, '2021-01-28 08:45:19', 'file', '{ilosc} plik/plików ({rozmiar} MB w sumie)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cups`
--

CREATE TABLE `cups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `cups`
--

INSERT INTO `cups` (`id`, `title`, `description`, `photo`, `photo_alt`, `created_at`, `updated_at`, `active`, `button_name`, `meta_description`) VALUES
(1, 'Mistrz Polski Warszawa 2010', '<p>Zdobyty przez Mieszka Fortuńskiego niebywałą finalną partią, w której Mieszko zdecydował się wbijać \"siódemkę\" z wyjściem na \"ósemkę\" skoczkiem nad \"dziewiątką\" ryzykując tytuł mistrza Polski. Ta legendarna partia zostanie na długo w sercach klubowiczów. </p>', '2020-10-23/puchar2_1603464889.jpg', NULL, '2020-10-23 14:55:57', '2021-02-10 19:04:09', 1, 'Czytaj więcej', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>'),
(2, 'Mistrzostwa Europy Berlin 2019', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>', '2020-10-23/puchar1_1603464890.jpg', NULL, '2020-10-23 14:59:31', '2021-01-26 17:00:30', 1, 'Czytaj więcej', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>'),
(3, 'Mistrzostwa Polski Łódź 2018', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>', '2020-10-23/puchar3_1603464890.png', NULL, '2020-10-23 14:59:52', '2021-01-26 17:01:00', 1, 'Czytaj więcej', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cups_descriptions`
--

CREATE TABLE `cups_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `cups_descriptions`
--

INSERT INTO `cups_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Puchary', NULL, '2021-01-01 12:40:52');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `day_formats`
--

CREATE TABLE `day_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `format` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `day_formats`
--

INSERT INTO `day_formats` (`id`, `title`, `format`, `created_at`, `updated_at`) VALUES
(15, 'Ndz - Sob', '0 1 2 3 4 5 6', '2021-01-02 15:02:28', '2021-01-03 09:08:01'),
(16, 'Pn - Ndz', '1 2 3 4 5 6 0', '2021-01-02 15:03:15', '2021-01-03 09:09:19'),
(17, 'Pn - Pt', '1 2 3 4 5', '2021-01-02 15:03:20', '2021-01-03 09:10:18'),
(18, 'Pn, Śr, Pt', '1 3 5', '2021-01-02 15:03:26', '2021-01-03 09:10:41');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `delivery_options`
--

CREATE TABLE `delivery_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `delivery_options`
--

INSERT INTO `delivery_options` (`id`, `active`, `title`, `price`, `created_at`, `updated_at`, `value`) VALUES
(1, 1, 'Kurier', 16.00, '2020-12-04 09:54:20', '2020-12-04 10:12:49', 'courier'),
(2, 1, 'Kurier za pobraniem', 20.00, '2020-12-04 09:54:56', '2020-12-04 10:13:03', 'in_advance'),
(3, 1, 'Odbiór osobisty', 0.00, '2020-12-04 09:56:25', '2020-12-04 10:13:14', 'personal');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `documents`
--

INSERT INTO `documents` (`id`, `active`, `title`, `file`, `created_at`, `updated_at`) VALUES
(2, 1, 'Polityka Prywatności', '2020-12-31/Polityka_Prywatności_1609414451.pdf', '2021-01-26 18:41:45', '2021-01-26 18:41:48'),
(3, 1, 'Regulamin Sklepu', '2020-12-31/Regulamin_Sklepu_1609414451.pdf', '2021-01-26 18:41:58', '2021-01-26 18:42:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `documents_descriptions`
--

CREATE TABLE `documents_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `documents_descriptions`
--

INSERT INTO `documents_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Dokumenty', NULL, '2021-01-01 12:54:48');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drawer_descriptions`
--

CREATE TABLE `drawer_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panel_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_account` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_out` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_password_confirm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `drawer_descriptions`
--

INSERT INTO `drawer_descriptions` (`id`, `title`, `panel`, `panel_icon`, `account`, `account_icon`, `delete_photo`, `edit_account`, `accept`, `cancel`, `log_out`, `name`, `photo_text`, `placeholder`, `placeholder_alt`, `created_at`, `updated_at`, `login`, `login_icon`, `change_password`, `password`, `new_password`, `new_password_confirm`) VALUES
(1, 'Opisy', 'Admin Panel', 'remote-desktop', 'Konto', 'account', 'Usuń zdjęcie', 'Edytuj konto', 'Akceptuj', 'Anuluj', 'Wyloguj', 'Imię i nazwisko', 'Zdjęcie', '2021-01-06/8-Ball_1609944002.png', NULL, NULL, '2021-01-17 13:42:30', 'Zaloguj się!', 'account', 'Zmień hasło', 'Stare hasło', 'Nowe hasło', 'Potwierdź nowe hasło');

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
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `gallery`
--

INSERT INTO `gallery` (`id`, `path`, `table_name`, `created_at`, `updated_at`, `item_id`, `photo_alt`) VALUES
(1, '2020-09-03/dart_1599145340.jpg', 'news', '2020-10-15 10:40:04', '2020-10-15 10:40:04', 26, 'asd1'),
(7, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'news', '2020-10-15 12:19:25', '2020-10-15 12:19:25', 26, NULL),
(8, '2020-09-03/tenis_stolowy_1599145342.jpg', 'news', '2020-10-15 12:19:25', '2020-10-15 12:19:25', 26, NULL),
(9, '2020-09-03/klub_1599149969.jpg', 'news', '2020-10-15 12:36:21', '2020-10-15 12:36:21', 26, NULL),
(10, '2020-09-03/dart_1599145340.jpg', 'news', '2020-10-17 08:52:11', '2020-10-17 08:52:11', 4, NULL),
(11, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'news', '2020-10-17 08:52:11', '2020-10-17 08:52:11', 4, NULL),
(12, '2020-09-03/tenis_stolowy_1599145342.jpg', 'news', '2020-10-17 08:52:12', '2020-10-17 08:52:12', 4, NULL),
(13, '2020-09-03/dart_1599145340.jpg', 'about_us', '2020-10-17 10:22:29', '2020-10-17 10:22:29', 1, NULL),
(14, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'about_us', '2020-10-17 10:22:29', '2020-10-17 10:22:29', 1, NULL),
(15, '2020-09-03/tenis_stolowy_1599145342.jpg', 'about_us', '2020-10-17 10:22:29', '2020-10-17 10:22:29', 1, NULL),
(17, '2020-09-03/dart_1599145340.jpg', 'offers', '2020-10-23 09:19:27', '2020-10-23 09:19:27', 1, NULL),
(18, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'offers', '2020-10-23 09:19:27', '2020-10-23 09:19:27', 1, NULL),
(19, '2020-09-03/tenis_stolowy_1599145342.jpg', 'offers', '2020-10-23 09:19:27', '2020-10-23 09:19:27', 1, NULL),
(20, '2020-09-03/dart_1599145340.jpg', 'offers', '2020-10-23 09:19:40', '2020-10-23 09:19:40', 2, NULL),
(21, '2020-09-03/tenis_stolowy_1599145342.jpg', 'offers', '2020-10-23 09:19:40', '2020-10-23 09:19:40', 2, NULL),
(22, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'offers', '2020-10-23 09:19:40', '2020-10-23 09:19:40', 2, NULL),
(23, '2020-09-03/dart_1599145340.jpg', 'offers', '2020-10-23 09:20:01', '2020-10-23 09:20:01', 3, NULL),
(24, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'offers', '2020-10-23 09:20:01', '2020-10-23 09:20:01', 3, NULL),
(25, '2020-09-03/tenis_stolowy_1599145342.jpg', 'offers', '2020-10-23 09:20:01', '2020-10-23 09:20:01', 3, NULL),
(26, '2020-09-03/dart_1599145340.jpg', 'players', '2020-10-23 11:06:50', '2020-10-23 11:06:50', 1, NULL),
(27, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'players', '2020-10-23 11:06:50', '2020-10-23 11:06:50', 1, NULL),
(28, '2020-09-03/tenis_stolowy_1599145342.jpg', 'players', '2020-10-23 11:06:50', '2020-10-23 11:06:50', 1, NULL),
(29, '2020-10-23/puchar2_1603464889.jpg', 'cups', '2020-10-23 15:00:48', '2020-10-23 15:00:48', 1, NULL),
(30, '2020-10-23/puchar3_1603464890.png', 'cups', '2020-10-23 15:00:48', '2020-10-23 15:00:48', 1, NULL),
(31, '2020-10-23/puchar1_1603464890.jpg', 'cups', '2020-10-23 15:00:49', '2020-10-23 15:00:49', 1, NULL),
(32, '2020-10-23/puchar2_1603464889.jpg', 'cups', '2020-10-23 15:11:02', '2020-10-23 15:11:02', 2, NULL),
(33, '2020-10-23/puchar1_1603464890.jpg', 'cups', '2020-10-23 15:11:02', '2020-10-23 15:11:02', 2, NULL),
(34, '2020-10-23/puchar3_1603464890.png', 'cups', '2020-10-23 15:11:02', '2020-10-23 15:11:02', 2, NULL),
(35, '2020-10-23/puchar2_1603464889.jpg', 'cups', '2020-10-23 15:11:17', '2020-10-23 15:11:17', 3, NULL),
(36, '2020-10-23/puchar1_1603464890.jpg', 'cups', '2020-10-23 15:11:17', '2020-10-23 15:11:17', 3, NULL),
(37, '2020-10-23/puchar3_1603464890.png', 'cups', '2020-10-23 15:11:18', '2020-10-23 15:11:18', 3, NULL),
(38, '2020-09-03/dart_1599145340.jpg', 'history', '2020-10-25 12:21:29', '2020-10-25 12:21:29', 1, NULL),
(39, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'history', '2020-10-25 12:21:29', '2020-10-25 12:21:29', 1, NULL),
(40, '2020-09-03/tenis_stolowy_1599145342.jpg', 'history', '2020-10-25 12:21:30', '2020-10-25 12:21:30', 1, NULL),
(41, '2020-09-03/klub_1599149969.jpg', 'history', '2020-10-25 12:21:54', '2020-10-25 12:21:54', 2, NULL),
(42, '2020-09-12/ping_pong_1599903239.jpg', 'history', '2020-10-25 12:21:54', '2020-10-25 12:21:54', 2, NULL),
(43, '2020-09-12/bilard_1599903006.jpg', 'history', '2020-10-25 12:21:54', '2020-10-25 12:21:54', 2, NULL),
(44, '2020-09-12/rzutki_1599906429.jpg', 'history', '2020-10-25 12:22:25', '2020-10-25 12:22:25', 3, NULL),
(45, '2020-09-15/2912522_1600184875.jpg', 'history', '2020-10-25 12:22:25', '2020-10-25 12:22:25', 3, NULL),
(46, '2020-10-11/8-ball_1602414474.jpg', 'history', '2020-10-25 12:22:25', '2020-10-25 12:22:25', 3, NULL),
(47, '2020-09-03/dart_1599145340.jpg', 'gallery_page', '2020-10-29 14:10:47', '2020-10-29 14:10:47', 1, NULL),
(48, '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'gallery_page', '2020-10-29 14:10:47', '2020-10-29 14:10:47', 1, NULL),
(49, '2020-09-03/tenis_stolowy_1599145342.jpg', 'gallery_page', '2020-10-29 14:10:48', '2020-10-29 14:10:48', 1, NULL),
(50, '2020-09-03/klub_1599149969.jpg', 'gallery_page', '2020-10-29 14:10:48', '2020-10-29 14:10:48', 1, NULL),
(51, '2020-09-12/bilard_1599903006.jpg', 'gallery_page', '2020-10-29 14:10:48', '2020-10-29 14:10:48', 1, NULL),
(52, '2020-09-12/ping_pong_1599903239.jpg', 'gallery_page', '2020-10-29 14:10:48', '2020-10-29 14:10:48', 1, NULL),
(53, '2021-01-24/kij-bilardowy-poison-jump_1611483291.jpg', 'shop_products', '2021-01-24 10:14:58', '2021-01-24 10:14:58', 25, NULL),
(54, '2021-01-24/poison_arsenic_33_2_1611483258.jpg', 'shop_products', '2021-01-24 10:14:58', '2021-01-24 10:14:58', 25, NULL),
(55, '2021-01-24/poison_arsenic_31_1_1611483343.jpg', 'shop_products', '2021-01-24 10:16:43', '2021-01-24 10:16:43', 25, NULL),
(56, '2021-01-24/kij-bilardowy-2-cz-lucasi-lze9_1611483352.jpg', 'shop_products', '2021-01-24 10:16:44', '2021-01-24 10:16:44', 25, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gallery_descriptions`
--

CREATE TABLE `gallery_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `gallery_descriptions`
--

INSERT INTO `gallery_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Galeria', NULL, '2021-01-01 13:11:03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `history`
--

CREATE TABLE `history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `history`
--

INSERT INTO `history` (`id`, `title`, `description`, `photo`, `photo_alt`, `created_at`, `updated_at`) VALUES
(1, 'Rodzaj gier', '<h1><strong>8-bill</strong></h1><p><br></p><p><strong>8-bill </strong>tzw. \"<em>ósemka\"</em> - polega na ułożeniu 15 bil w trójkąt o dowolnej kolejności z czarną bilą w środku.</p><p><br></p><blockquote><span style=\"color: rgb(32, 33, 34);\">Gra powstała w pierwszej dekadzie</span>&nbsp;XX wieku.<span style=\"color: rgb(32, 33, 34);\"> Obecnie jest najpopularniejszą odmianą bilardu.</span></blockquote><p><br></p><p>Rodzaj gry w bilard dla dwóch osób, w której każdy z graczy wbija bile należące swojej grupy (tzw. pełne lub połówki) do łuz. Po wbiciu wszystkich swoich bil gracz może wygrać partię, wbijając prawidłowo czarną bilę nr 8 do zadeklarowanej łuzy. Przedwczesne wbicie bili nr 8, wbicie jej do niezadeklarowanej łuzy lub faul podczas jej wbicia, skutkują natychmiastowym przegraniem partii.</p>', '2020-10-25/billiard-table-in-a-lounge-BKCWB79_1603628468.jpg', NULL, '2020-10-25 12:21:16', '2021-02-10 19:11:16'),
(2, 'Zagrania', '<h1>Lorem ipsum dolor</h1><p><br></p><p><strong>Lorem ipsum dolor</strong> sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus!</p><p><br></p><blockquote>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit?</blockquote><p><br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus!</p><p><br></p>', '2021-01-24/stol-do-bilarda-fa-bil_1611499038.jpg', NULL, '2020-10-25 12:21:47', '2021-01-26 18:25:04'),
(3, 'Stoły', '<h1>Lorem ipsum dolor</h1><p><br></p><p><strong>Lorem ipsum dolor</strong> sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus!</p><p><br></p><blockquote>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit?</blockquote><p><br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae inventore dolorem recusandae ipsa sequi, eos quod illum, odit? Ipsa error at, sapiente soluta atque, tempore rerum consequatur quasi odit! Ducimus!</p><p><br></p>', '2021-01-26/American_pool_table-diagram_1611682552.png', NULL, '2020-10-25 12:22:09', '2021-01-26 18:24:40');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `history_descriptions`
--

CREATE TABLE `history_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `history_descriptions`
--

INSERT INTO `history_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Historia', NULL, '2021-01-01 14:40:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `layout_elements`
--

CREATE TABLE `layout_elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eight_ball` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eight_ball_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `layout_elements`
--

INSERT INTO `layout_elements` (`id`, `title`, `eight_ball`, `eight_ball_alt`, `created_at`, `updated_at`) VALUES
(1, 'Elementy Layoutu', '2021-01-03/8_1609684691.png', NULL, NULL, '2021-01-03 14:41:34');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `live_broadcasts`
--

CREATE TABLE `live_broadcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `live_broadcasts`
--

INSERT INTO `live_broadcasts` (`id`, `title`, `subtitle`, `link`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Mieszko Fortuński - Shane van Boening Mosconi Cup 2020', NULL, 'http://transmisja1.com/', '2020-10-25 14:21:44', '2021-01-27 16:12:44', 1),
(2, 'Ronnie O\'Sullivan -  Mark Selby Finał Mistrzostw Świata 2019', NULL, 'https://transmisja2.com/', '2020-10-25 14:22:05', '2021-01-27 16:13:57', 1),
(3, 'Marcel Fortuński - Wiktor Fortuński Bilard Centrum Lubin Mecz towarzyski', NULL, 'https://transmisja3.com/', '2020-10-25 14:22:22', '2021-01-27 16:36:02', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `live_broadcasts_descriptions`
--

CREATE TABLE `live_broadcasts_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `live_broadcasts_descriptions`
--

INSERT INTO `live_broadcasts_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Transmisje na żywo', NULL, '2021-01-01 14:50:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lucky_number`
--

CREATE TABLE `lucky_number` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `number` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `lucky_number`
--

INSERT INTO `lucky_number` (`id`, `active`, `number`, `created_at`, `updated_at`, `title`, `description`, `subtitle`) VALUES
(1, 1, 44, NULL, '2021-03-27 15:56:55', 'Szczęśliwy los', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum inventore enim impedit eligendi numquam autem nihil reprehenderit in veritatis rerum sit fugit quo, nisi eaque praesentium velit assumenda earum deserunt. Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum inventore enim impedit eligendi numquam autem nihil reprehenderit in veritatis rerum sit fugit quo, nisi eaque praesentium velit assumenda earum deserunt. Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum inventore enim impedit eligendi numquam autem nihil reprehenderit in veritatis rerum sit fugit quo, nisi eaque praesentium velit assumenda earum deserunt.</p>', 'Sprawdź swoje szczęście!');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rodo1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rodo2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `answer_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `mails`
--

INSERT INTO `mails` (`id`, `answer`, `name`, `email`, `subject`, `phone`, `message`, `rodo1`, `rodo2`, `created_at`, `updated_at`, `answer_message`) VALUES
(130, NULL, 'asd', 'd.lewicki@adawards.pl', 'asd', 'asd', 'asd', '1', '1', '2020-12-29 13:35:19', '2020-12-29 13:35:19', NULL),
(131, NULL, 'Daniel Lewicki', 'dany97971@gmail.com', 'Bilard Centrum Lubin', '123123123', 'asd', '1', '1', '2021-01-09 15:01:51', '2021-01-09 15:01:51', NULL),
(132, NULL, 'Daniel Lewicki', 'dany97971@gmail.com', 'asdasd', '123123123', 'asdasd', '1', '1', '2021-01-09 15:03:37', '2021-01-09 15:03:37', NULL);

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
(60, 'image/jpeg', '2912522', '2020-09-15/2912522_1600184875.jpg', 282818, '2020-09-15 13:47:55', '2020-09-15 13:47:55'),
(61, 'image/jpeg', '8-ball', '2020-10-11/8-ball_1602414474.jpg', 655723, '2020-10-11 11:07:56', '2020-10-11 11:07:56'),
(62, 'image/png', '1200px-Kghm_nowe_logo.svg', '2020-10-17/1200px-Kghm_nowe_logo.svg_1602935663.png', 32450, '2020-10-17 11:54:23', '2020-10-17 11:54:23'),
(63, 'image/png', 'Predator-Cues', '2020-10-17/Predator-Cues_1602935842.png', 103330, '2020-10-17 11:57:22', '2020-10-17 11:57:22'),
(64, 'image/png', '2019_0005_poison', '2020-10-17/2019_0005_poison_1602935920.png', 17969, '2020-10-17 11:58:40', '2020-10-17 11:58:40'),
(65, 'image/jpeg', 'kamui', '2020-10-17/kamui_1602938016.jpg', 24884, '2020-10-17 12:33:36', '2020-10-17 12:33:36'),
(66, 'image/png', 'logo_lubin', '2020-10-20/logo_lubin_1603186861.png', 5360, '2020-10-20 09:41:01', '2020-10-20 09:41:01'),
(67, 'image/png', 'ergunbierunfolie', '2020-10-20/ergunbierunfolie_1603187503.png', 5497, '2020-10-20 09:51:43', '2020-10-20 09:51:43'),
(68, 'image/png', 'mieszko', '2020-10-23/mieszko_1603450309.png', 567950, '2020-10-23 10:51:49', '2020-10-23 10:51:49'),
(69, 'image/jpeg', 'wiktor', '2020-10-23/wiktor_1603453200.jpg', 66536, '2020-10-23 11:40:00', '2020-10-23 11:40:00'),
(70, 'image/jpeg', 'puchar2', '2020-10-23/puchar2_1603464889.jpg', 39799, '2020-10-23 14:54:49', '2020-10-23 14:54:49'),
(71, 'image/jpeg', 'puchar1', '2020-10-23/puchar1_1603464890.jpg', 140624, '2020-10-23 14:54:50', '2020-10-23 14:54:50'),
(72, 'image/png', 'puchar3', '2020-10-23/puchar3_1603464890.png', 207059, '2020-10-23 14:54:50', '2020-10-23 14:54:50'),
(73, 'image/jpeg', 'billiard-table-in-a-lounge-BKCWB79', '2020-10-25/billiard-table-in-a-lounge-BKCWB79_1603628468.jpg', 300699, '2020-10-25 12:21:09', '2020-10-25 12:21:09'),
(137, 'application/pdf', 'Polityka Prywatności', '2020-12-31/Polityka_Prywatności_1609414451.pdf', 151834, '2020-12-31 11:34:11', '2020-12-31 11:34:11'),
(138, 'application/pdf', 'Regulamin Sklepu', '2020-12-31/Regulamin_Sklepu_1609414451.pdf', 149344, '2020-12-31 11:34:11', '2020-12-31 11:34:11'),
(143, 'image/png', '8', '2021-01-03/8_1609684691.png', 1018542, '2021-01-03 14:38:12', '2021-01-03 14:38:12'),
(144, 'image/png', '8-Ball', '2021-01-06/8-Ball_1609944002.png', 76414, '2021-01-06 14:40:02', '2021-01-06 14:40:02'),
(145, 'image/jpeg', 'stol', '2021-01-06/stol_1609950315.jpg', 379515, '2021-01-06 16:25:16', '2021-01-06 16:25:16'),
(146, 'image/jpeg', 'poison_arsenic_33_2', '2021-01-24/poison_arsenic_33_2_1611483258.jpg', 377301, '2021-01-24 10:14:18', '2021-01-24 10:14:18'),
(147, 'image/jpeg', 'kij-bilardowy-poison-jump', '2021-01-24/kij-bilardowy-poison-jump_1611483291.jpg', 46325, '2021-01-24 10:14:51', '2021-01-24 10:14:51'),
(148, 'image/jpeg', 'poison_arsenic_31_1', '2021-01-24/poison_arsenic_31_1_1611483343.jpg', 461173, '2021-01-24 10:15:43', '2021-01-24 10:15:43'),
(149, 'image/jpeg', 'kij-bilardowy-2-cz-lucasi-lze9', '2021-01-24/kij-bilardowy-2-cz-lucasi-lze9_1611483352.jpg', 2286, '2021-01-24 10:15:52', '2021-01-24 10:15:52'),
(150, 'image/jpeg', 'stol-do-bilarda-fa-bil', '2021-01-24/stol-do-bilarda-fa-bil_1611499038.jpg', 491041, '2021-01-24 14:37:18', '2021-01-24 14:37:18'),
(152, 'image/png', 'American_pool_table-diagram', '2021-01-26/American_pool_table-diagram_1611682552.png', 38526, '2021-01-26 17:35:53', '2021-01-26 17:35:53');

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
(35, '2020_09_27_134628_add_photo_column_to_users_table', 5),
(36, '2020_10_08_125905_create_news_tags_table', 6),
(37, '2020_10_10_121543_add_home_page_column_to_news', 7),
(38, '2020_10_10_121953_add_active_column_to_news_table', 8),
(39, '2020_10_15_113119_add_item_id_column_to_gallery_table', 9),
(40, '2020_10_15_113336_delete_photo_id_column_from_gallery_table', 10),
(41, '2020_10_15_113808_rename_title_column_to_path_in_gallery_table', 11),
(42, '2020_10_15_114725_add_photo_alt_to_gallery', 12),
(43, '2020_10_18_131439_add_active_to_slider', 13),
(44, '2020_10_18_131614_add_active_and_home_page_to_offers', 13),
(45, '2020_10_19_111536_add_active_to_partners', 14),
(46, '2020_10_23_131629_add_active_to_players', 15),
(47, '2020_10_23_165838_add_active_to_cups', 16),
(48, '2020_10_23_171702_add_button_name_to_cups', 17),
(49, '2020_10_23_172555_add_button_name_to_players', 18),
(50, '2020_10_25_123955_create_history_table', 19),
(51, '2020_10_25_134416_add_longtext_description_to_history', 20),
(52, '2020_10_25_145955_add_active_to_live_broadcasts', 21),
(53, '2020_10_25_153352_edit_description_and_short_description_to_news', 22),
(54, '2020_10_25_153441_edit_description_and_short_description_to_about_us', 22),
(55, '2020_10_25_153524_edit_description_and_short_description_to_offers', 22),
(56, '2020_10_25_153637_edit_description_and_short_description_to_players', 22),
(57, '2020_10_25_153709_edit_description_and_short_description_to_cups', 22),
(58, '2020_10_25_155037_create_mails_table', 23),
(59, '2020_10_26_110202_edit_attachment_nullable_to_mails', 24),
(60, '2020_10_26_144633_edit_phone_to_mails', 25),
(61, '2020_10_27_112854_add_answer_message_to_mails', 26),
(62, '2020_10_27_170832_create_attachments_table', 27),
(63, '2020_10_27_183312_delete_attachment_from_mails_table', 28),
(64, '2020_10_27_190020_add_nullables_to_mails', 29),
(65, '2020_10_28_175353_add_active_to_users', 30),
(66, '2020_10_28_181959_add_blocked_to_users', 31),
(67, '2020_10_29_113535_add_nullables_to_users', 32),
(68, '2020_10_29_144951_add_order_to_subpages', 33),
(69, '2020_10_31_104152_create_price_list_categories_table', 34),
(70, '2020_10_31_104324_add_foreign_to_price_list', 35),
(71, '2020_10_31_115240_rename_name_title_to_price_list_categories', 36),
(72, '2020_10_31_115519_add_active_to_price_list_categories', 37),
(73, '2020_10_31_115556_add_active_to_price_list', 37),
(74, '2020_10_31_123150_rename_name_title_to_price_list', 38),
(75, '2020_11_01_095633_create_services_table', 39),
(77, '2020_11_01_095812_create_service_equipments_table', 40),
(78, '2020_11_01_100136_add_service_equipment_id_to_reservations', 41),
(79, '2020_11_01_100833_add_active_to_service_equipments', 42),
(80, '2020_11_01_133414_add_name_to_reservations', 43),
(81, '2020_11_05_111208_add_default_is_paid_to_reservations', 44),
(82, '2020_11_05_112635_add_phone_to_reservations', 45),
(83, '2020_11_05_113303_add_rodo_to_reservations', 46),
(84, '2020_11_05_134734_add_active_to_reservations', 46),
(85, '2020_11_05_135138_add_rodo2_to_reservations', 47),
(86, '2020_11_05_150054_add_color_to_services', 48),
(87, '2020_11_05_163333_edit_earnings_in_reservations', 49),
(88, '2020_11_05_182204_add_email_to_reservations', 50),
(90, '2020_11_06_111628_drop_foreign_category_id_from_shop_items', 51),
(91, '2020_11_06_112114_drop_category_id_from_shop_items', 51),
(92, '2020_11_06_112426_drop_opinion_from_shop_items', 52),
(93, '2020_11_06_112641_drop_details_from_shop_items', 53),
(103, '2020_11_06_113101_create_shop_item_colors', 54),
(117, '2020_11_06_114336_create_shop_items_table', 54),
(118, '2020_11_06_123917_add_foreign_to_shop_items', 54),
(119, '2020_11_06_130319_create_items_colors_table', 54),
(120, '2020_11_06_162124_add_foreign_keys_to_items_colors', 55),
(121, '2020_11_06_165214_rename_items_colors', 56),
(122, '2020_11_11_172352_add_active_to_shop_categories', 57),
(123, '2020_11_11_173237_add_active_to_shop_products', 58),
(124, '2020_11_12_092523_add_discount_to_shop_items', 59),
(125, '2020_11_12_092646_add_active_to_shop_items', 60),
(126, '2020_11_12_092747_delete_brand_from_shop_items', 61),
(127, '2020_11_12_112800_add_active_to_shop_item_colors', 62),
(128, '2020_11_12_142450_delete_table_shop_items_colors', 63),
(130, '2020_11_12_142618_add_color_id_to_shop_items', 64),
(131, '2020_11_12_144846_add_photo_and_photo_alt_to_shop_items', 65),
(133, '2020_11_14_145428_add_price_to_shop_products', 66),
(134, '2020_11_14_150208_edit_price_in_shop_items', 67),
(135, '2020_11_14_160527_delete_price_in_shop_products', 68),
(136, '2020_11_14_162433_add_default_to_shop_items', 69),
(137, '2020_11_15_134945_add2_price_to_shop_products', 70),
(138, '2020_11_19_123306_add_discount_to_shop_products', 71),
(139, '2020_11_22_155913_add_color_id_to_shop_products', 72),
(140, '2020_11_22_163307_add_amount_to_shop_products', 73),
(141, '2020_12_04_103932_create_delivery_options_table', 74),
(142, '2020_12_04_111037_add_value_to_delivery_options', 75),
(143, '2020_12_04_133436_create_shop_orders_table', 76),
(144, '2020_12_04_134506_create_ordered_products_table', 77),
(145, '2020_12_04_144228_add_product_id_and_item_id_in_ordered_products', 78),
(146, '2020_12_04_154131_add_nullables_to_ordered_products', 79),
(147, '2020_12_04_154909_edit_shop_order_id_in_ordered_products', 80),
(148, '2020_12_06_125553_create_documents_table', 81),
(150, '2020_12_06_192415_create_lucky_number_table', 82),
(151, '2020_12_06_193455_add_title_to_lucky_number', 83),
(152, '2020_12_06_193735_add_description_and_subtitle_to_lucky_number', 84),
(153, '2020_12_28_110058_add_meta_description_to_subpages', 85),
(154, '2020_12_28_110715_add_active_to_subpages', 86),
(155, '2020_12_28_125718_add_shop_regulations_to_settings', 87),
(156, '2020_12_28_131640_add_title_to_settings', 88),
(158, '2020_12_28_132719_edit_columns_in_settings', 89),
(159, '2020_12_28_150600_add_description_to_settings', 90),
(160, '2020_12_28_161402_add_meta_description_to_news', 91),
(161, '2020_12_28_161412_add_meta_description_to_offers', 91),
(162, '2020_12_31_161758_add_meta_description_to_cups', 92),
(163, '2020_12_31_161824_add_meta_description_to_players', 92),
(164, '2020_12_31_170312_add_name_to_contact', 93),
(165, '2020_12_31_170904_add_title_to_contact', 94),
(166, '2020_12_31_172801_add_social_links_to_contact', 95),
(167, '2021_01_01_111505_add_button_name_to_about_us', 96),
(168, '2021_01_01_112214_create_table_comments_descriptions', 97),
(169, '2021_01_01_114225_add_title_to_comments_descriptions', 98),
(170, '2021_01_01_114533_add_columns_to_comments_descriptions', 99),
(171, '2021_01_01_115322_add_question_to_comments_descriptions', 100),
(172, '2021_01_01_120237_create_contact_descriptions_table', 101),
(173, '2021_01_01_131533_add_map_to_contact', 102),
(174, '2021_01_01_132119_add_file_icon_to_contact_descriptions', 103),
(175, '2021_01_01_132656_create_cups_descriptions_table', 104),
(176, '2021_01_01_134605_create_documents_descriptions_table', 105),
(177, '2021_01_01_140948_create_gallery_descriptions_table', 106),
(178, '2021_01_01_153256_create_history_descriptions_table', 107),
(179, '2021_01_01_154341_create_live_broadcasts_descriptions_table', 108),
(180, '2021_01_01_155808_create_news_descriptions_table', 109),
(181, '2021_01_01_161301_edit_news_descriptions', 110),
(182, '2021_01_02_111748_create_offers_descriptions_table', 111),
(183, '2021_01_02_114257_create_partners_descriptions_table', 112),
(184, '2021_01_02_115402_create_players_descriptions_table', 113),
(185, '2021_01_02_120739_create_price_list_descriptions_table', 114),
(186, '2021_01_02_121458_add_currency_to_price_list_descriptions', 115),
(187, '2021_01_02_122324_create_reservations_descriptions_table', 116),
(188, '2021_01_02_123541_add_columns_to_reservations_descriptions', 117),
(189, '2021_01_02_125303_create_calendar_descriptions_table', 118),
(190, '2021_01_02_134335_add_unconfirmed_color_to_calendar_descriptions', 119),
(191, '2021_01_02_141258_delete_columns_in_calendar_descriptions', 120),
(193, '2021_01_02_141905_create_day_formats_table', 121),
(194, '2021_01_03_110528_add_more_to_calendar_descriptions', 122),
(195, '2021_01_03_110805_create_shop_descriptions_table', 123),
(196, '2021_01_03_112817_add_columns_to_shop_descriptions', 124),
(198, '2021_01_03_114549_create_cart_descriptions_table', 125),
(199, '2021_01_03_123046_add_columns_to_shop_orders', 126),
(200, '2021_01_03_130544_add_delete_to_cart_descriptions', 127),
(202, '2021_01_03_145110_create_breadcrumb_descriptions_table', 128),
(203, '2021_01_03_150940_create_layout_elements_table', 128),
(204, '2021_01_03_154037_add_nullables_to_layout_elements', 129),
(205, '2021_01_06_132250_add_columns_to_settings', 130),
(206, '2021_01_06_151933_create_drawer_descriptions_table', 131),
(207, '2021_01_06_160238_add_league_to_players_descriptions', 132),
(214, '2021_01_06_160737_create_auth_descriptions_table', 133),
(215, '2021_01_06_161335_add_columns_to_drawer_descriptions', 133),
(216, '2021_01_06_171331_add_columns_to_auth_descriptions', 133),
(218, '2021_01_07_104320_create_snackbar_alerts_table', 134),
(219, '2021_01_07_112135_add_columns_to_snackbar_alerts', 135),
(220, '2021_01_07_113305_add_title_to_snackbar_alerts', 136),
(221, '2021_01_07_122604_create_validation_rules_table', 137),
(222, '2021_01_07_153346_add_meta_description_to_shop_products', 138),
(223, '2021_01_09_150418_add_login_to_comments_descriptions', 139),
(224, '2021_01_09_155224_add_activated_account_success_to_snackbar_alerts', 140),
(225, '2021_01_10_114423_add_two_columns_to_auth_descriptions', 141),
(226, '2021_01_10_114900_add_bg_password_reminder_photo_to_auth_descriptions', 142),
(227, '2021_01_10_115523_add_forgot_password_to_auth_descriptions', 143),
(228, '2021_01_10_124152_add_two_columns_to_snackbar_alerts', 144),
(229, '2021_01_10_133537_add_password_error_to_snackbar_alerts', 145),
(230, '2021_01_10_134409_add_change_password_success_to_snackbar_alerts', 146),
(231, '2021_01_10_141417_add_password_data_to_drawer_descriptions', 147),
(232, '2021_01_15_112232_add_amount_to_ordered_products', 148),
(233, '2021_01_15_152246_add_emails_to_shop_orders', 149),
(234, '2021_01_15_155854_delete_second_email_in_shop_orders', 150),
(235, '2021_01_15_161305_add_few_columns_to_shop_descriptions', 151),
(236, '2021_01_24_120903_add_color_to_shop_descriptions', 152),
(238, '2021_01_28_094015_add_counter_to_contact_descriptions', 153),
(239, '2021_01_28_195519_delete_default_from_shop_items', 154),
(240, '2021_01_30_160122_rename_paid_in_shop_orders', 155),
(241, '2021_02_07_143012_add_sent_to_shop_orders', 156),
(242, '2021_03_27_165146_add_lucky_number_to_snackbar_alerts', 157);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` tinyint(1) DEFAULT 0,
  `active` tinyint(1) DEFAULT 0,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `title`, `category`, `button_name`, `short_description`, `description`, `photo`, `photo_alt`, `banner_photo`, `banner_photo_alt`, `created_at`, `updated_at`, `home_page`, `active`, `meta_description`) VALUES
(4, 'Turniej amatorski 8-bil', 'Turniej', 'CZYTAJ WIĘCEJ', '<p>Zapraszamy serdecznie wszystkich amatorów bilarda na turniej amatorski o odmianie 8-bil.</p>', '<p><strong>1. Miejsce Gier</strong></p><p>Kieleckie Centrum Bilardowe \"Contact\", Kielce ul. Plac Moniuszki 2b:</p><p>- 8 stołów bilardowych 9 ft ( 7 x WiK, 1 x Dynamic),</p><p>- sukno Iwan Simonis 860,</p><p>- bile Aramith Super Pro TV +.</p><p><br></p><p><strong>2. Termin zawodów</strong></p><p>9-10.08.2013</p><p>godzina rozpoczęcia gier: 9.00.</p><p><br></p><p><strong>3. Odmiana gry</strong></p><p>9 bil - zgodnie z przepisami WPA - ramowe przepisy&nbsp;na&nbsp;<a href=\"http://www.bilard-sport.pl/igrzyska_polonijne/informacje.php?cPath=199\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(6, 30, 117);\">tej stronie</a></p><p><br></p><p><strong>4. Zgłoszenia</strong></p><p>Zgłoszenie chęci uczestnictwa w XVI ŚLIP uczestnik dokonuje wypełniając&nbsp;formularz „Karty Zgłoszenia\", za pośrednictwem oficjalnej strony internetowej XVI&nbsp;ŚLIP: www.igrzyskapolonijne.kielce.eu</p><p><br></p><p><strong>5. System gier</strong></p><p>Zawody rozgrywane są systemem pucharowym do&nbsp;2 wygranych partii zasadą \"zwycięzca rozbija\". Od rundy \"Last 32\" gramy do 3 wygranych partii.</p><p><br></p><p><strong>6. Podział na kategorie</strong></p><p>Zawody rozegrane zostaną w dwóch grupach wiekowych: (warunkiem jest zgłoszenie minimum 8 osób do grupy juniorów)</p><p>- do 18 lat - juniorzy,</p><p>- od 19 lat - seniorzy.</p><p><br></p><p><strong>7. Ubiór do gry oraz logo sponsorów</strong></p><p>a) zawodniczki zobowiązane są do gry w stroju sportowym: długie spodnie, koszulka polo z kołnierzykiem,</p><p>b) nie dopuszcza się możliwości gry w krótkich spodenkach oraz koszulach dżinsowych.</p><p><br></p><p><strong>8.Transmisje i relacje live</strong></p><p>Z zawodów przeprowadzane będą&nbsp;<strong>transmisje na żywo na TVsports oraz transmisja live scoring.</strong>&nbsp;Zawodnicy rozgrywające swe pojedynki zobowiązane są do przestrzegania dodatkowych reguł dotyczących min. przerw na reklamy, planowego rozpoczęcia spotkań, wywiadów przed i po zakończonych pojedynkach.</p><p><br></p><p><strong>9. Nagrody w każdym turnieju</strong></p><p>Nagrody w postaci medali.</p><p><br></p><p><strong>10. Dyrektor Turnieju:</strong></p><p class=\"ql-align-justify\">Dyrektorem jest p. Grzegorz Kędzierski</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>11. W sprawach nie ujętych stanowią regulaminy i przepisy WPA oraz Zarządzenia Dyrektora Turnieju.</strong></p><p><br></p>', '2020-09-15/2912522_1600184875.jpg', NULL, '2020-09-03/mlodzi_ludzie_1599145340.jpg', NULL, '2020-09-15 13:48:11', '2021-02-10 18:31:24', 1, 1, '<p>Opis seo aktualnosc</p>'),
(6, 'Ferie zimowe dla dzieci', 'Półkolonia', 'Czytaj więcej', '<p>Serdecznie zapraszamy wszystkich młodych uczestników do skorzystania z udziału w półkolonii, która odbędzie się w trakcie przerwy zimowej. Przed nami wiele atrakcji!</p>', '<p>Serdecznie zapraszamy wszystkich młodych uczestników do skorzystania z udziału w półkolonii, która odbędzie się w trakcie przerwy zimowej. Przed nami wiele atrakcji! Serdecznie zapraszamy wszystkich młodych uczestników do skorzystania z udziału w półkolonii, która odbędzie się w trakcie przerwy zimowej. Przed nami wiele atrakcji! Serdecznie zapraszamy wszystkich młodych uczestników do skorzystania z udziału w półkolonii, która odbędzie się w trakcie przerwy zimowej. Przed nami wiele atrakcji! Serdecznie zapraszamy wszystkich młodych uczestników do skorzystania z udziału w półkolonii, która odbędzie się w trakcie przerwy zimowej. Przed nami wiele atrakcji!</p>', '2021-01-24/stol-do-bilarda-fa-bil_1611499038.jpg', NULL, NULL, NULL, '2020-10-08 15:33:31', '2021-01-24 14:38:16', 0, 1, NULL),
(12, 'tag12', 'tag12', '2', '2', '2', '2020-09-12/rzutki_1599906429.jpg', '2', NULL, NULL, '2020-10-11 10:35:12', '2020-10-20 09:33:28', NULL, NULL, NULL),
(13, 'tag2', 'tag2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-11 10:35:30', '2020-10-11 10:35:30', NULL, NULL, NULL),
(15, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 08:34:25', '2020-10-13 08:34:25', NULL, NULL, NULL),
(16, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 08:35:15', '2020-10-13 08:35:15', NULL, NULL, NULL),
(17, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:03:55', '2020-10-13 09:03:55', NULL, NULL, NULL),
(18, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:04:06', '2020-10-13 09:04:06', NULL, NULL, NULL),
(19, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:04:16', '2020-10-13 09:04:16', NULL, NULL, NULL),
(20, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:04:24', '2020-10-13 09:04:24', NULL, NULL, NULL),
(21, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:04:32', '2020-10-13 09:04:32', NULL, NULL, NULL),
(22, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:04:44', '2020-10-13 09:04:44', NULL, NULL, NULL),
(23, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:04:52', '2020-10-13 09:04:52', NULL, NULL, NULL),
(24, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:05:02', '2020-10-13 09:05:02', NULL, NULL, NULL),
(25, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:05:12', '2020-10-13 09:05:12', NULL, NULL, NULL),
(26, 'asd', 'asd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, '2020-10-13 09:05:22', '2020-10-13 09:05:22', NULL, NULL, NULL),
(27, 'asd', 'asd', 'asd', 'asd', 'asd', '2020-09-03/tenis_stolowy_1599145342.jpg', 'asd', NULL, NULL, '2020-10-20 09:30:44', '2020-10-20 09:30:44', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news_descriptions`
--

CREATE TABLE `news_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filter_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `news_descriptions`
--

INSERT INTO `news_descriptions` (`id`, `title`, `filter_tag`, `date_icon`, `category_icon`, `comment_icon`, `tags_icon`, `button_name`, `created_at`, `updated_at`, `filter_category`) VALUES
(1, 'Aktualności', 'Filtrowanie po: Tagu -', 'calendar-month-outline', 'bookmark-outline', 'comment-text-outline', 'tag-multiple-outline', 'Zobacz aktualności', NULL, '2021-01-01 15:15:54', 'Filtrowanie po: Kategorii -');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news_tags`
--

CREATE TABLE `news_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `news_tags`
--

INSERT INTO `news_tags` (`id`, `text`, `news_id`, `created_at`, `updated_at`) VALUES
(12, 'tag1', 12, '2020-10-11 10:35:12', '2020-10-11 10:35:12'),
(13, 'tag2', 12, '2020-10-11 10:35:12', '2020-10-11 10:35:12'),
(14, 'tag1', 13, '2020-10-11 10:35:30', '2020-10-11 10:35:30'),
(15, 'tag2', 13, '2020-10-11 10:35:30', '2020-10-11 10:35:30'),
(16, 'tag3', 13, '2020-10-11 10:35:30', '2020-10-11 10:35:30'),
(18, 'asd', 15, '2020-10-13 08:34:25', '2020-10-13 08:34:25'),
(19, 'asd', 16, '2020-10-13 08:35:15', '2020-10-13 08:35:15'),
(20, 'asd', 17, '2020-10-13 09:03:55', '2020-10-13 09:03:55'),
(21, 'asd', 18, '2020-10-13 09:04:06', '2020-10-13 09:04:06'),
(22, 'asd', 19, '2020-10-13 09:04:16', '2020-10-13 09:04:16'),
(23, 'asd', 20, '2020-10-13 09:04:24', '2020-10-13 09:04:24'),
(24, 'asd', 21, '2020-10-13 09:04:32', '2020-10-13 09:04:32'),
(25, 'asd', 22, '2020-10-13 09:04:44', '2020-10-13 09:04:44'),
(26, 'asd', 23, '2020-10-13 09:04:53', '2020-10-13 09:04:53'),
(27, 'asd', 24, '2020-10-13 09:05:02', '2020-10-13 09:05:02'),
(28, 'asd', 25, '2020-10-13 09:05:12', '2020-10-13 09:05:12'),
(29, 'asd', 26, '2020-10-13 09:05:22', '2020-10-13 09:05:22'),
(30, 'asd', 27, '2020-10-20 09:30:44', '2020-10-20 09:30:44'),
(31, '2', 12, '2020-10-20 09:33:28', '2020-10-20 09:33:28'),
(36, 'polkolonia', 6, '2021-01-24 14:53:49', '2021-01-24 14:53:49'),
(38, 'turniej', 4, '2021-02-10 18:26:38', '2021-02-10 18:26:38'),
(39, '8-bill', 4, '2021-02-10 18:26:38', '2021-02-10 18:26:38');

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
('00026034521c5d29828c82e691f23a91239073219a23c803f522389b127e818f8e387e3385052b22', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:08:32', '2020-12-28 10:08:32', '2021-12-28 11:08:32'),
('0031c1dde41eed9c3d45fd66183803c1f946fae31a08ec11e132754c35e411ba4ab4a4554bee4658', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:45:24', '2020-12-06 18:45:24', '2021-12-06 19:45:24'),
('003310bd87522b43ffb5963a07d66ed4acc20bbd8ab1e18e4d76c925e4c36a9e8636c9edf44af4b6', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:35:34', '2020-10-08 15:35:34', '2021-10-08 17:35:34'),
('003c05d13078c93c1109ced9e32c86f8433bc39716584e406e7255ce34c008c32ba19e94f1518287', 27, 1, 'authToken', '[]', 0, '2021-01-29 18:23:17', '2021-01-29 18:23:17', '2022-01-29 19:23:17'),
('004037f811ff732664174b87471adfd7c5879886e90dc59b6855f350ab5ca37e0556eae45a4487bf', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:52:50', '2020-11-22 15:52:50', '2021-11-22 16:52:50'),
('004ac10e5edd4031cc0cfc25c94590b93b8326415926d07d6ddd46d9398970e542c9065d008b93e6', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:54:04', '2020-10-10 11:54:04', '2021-10-10 13:54:04'),
('0051b011556fa474a6059daf81139cc49d081fd8390e2f54034011154b49428767c01d0dee759df3', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:46:45', '2021-01-09 14:46:45', '2022-01-09 15:46:45'),
('0098e54824188458f21a2f6898e7ca9c467836770509ff8100061ba3c576881c6dfd48e5a109388d', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:30:02', '2021-01-29 16:30:02', '2022-01-29 17:30:02'),
('009a4a16213e5942b8585afbc449ac4e264446cac749461adb17c17cae869409d2efc20b014758a5', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:47:17', '2020-10-19 11:47:17', '2021-10-19 13:47:17'),
('00b274c42633936c85ae0c5da06cda69fd5f1514c8ca5c7cbf4f4bfd14d412e89983378ef03212e9', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:08:46', '2020-10-17 14:08:46', '2021-10-17 16:08:46'),
('00b41dc1a941bfb30f2d0fb738aaf528a40f7e5278f605d8266dfd8734873f494dae1b13aaf886f2', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:35:51', '2020-10-13 11:35:51', '2021-10-13 13:35:51'),
('00c03187fa083a0a0ef9f19b238ca9ec84918dcec36564b34f3b184a1d3f1c2428a6626d7f06c568', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:06:15', '2020-10-25 13:06:15', '2021-10-25 14:06:15'),
('00c7464fc5f56cbfd28c5d57a26976b5bcceb5815c31af0c7aa8958cbaa8b9fee9ba1ae75ad66cd2', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:39:53', '2021-01-01 12:39:53', '2022-01-01 13:39:53'),
('00ed9668c5b80b7eb96861298dd4d48f5c99d5dd61a723ce444edfde63a891cc7dc0a0e9c87e827e', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:51:51', '2020-12-28 13:51:51', '2021-12-28 14:51:51'),
('00ee1dc71d34bcd4be0bfd21540ddae598373b01debea7c1fa4a1c93a24bfc26c0594660a0a2600c', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:13:46', '2020-10-03 14:13:46', '2021-10-03 16:13:46'),
('00fa8af9aaa3e335baa91c49e88564397314a6f41d21f3448cbcab4f4a7aafc883420f9058a43e93', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:38:55', '2020-11-05 17:38:55', '2021-11-05 18:38:55'),
('01288f4ee21929702bb6674477347a0b893047508d9a757d61641994ddc4a91609715a44fdc2abcd', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:45:52', '2020-11-01 10:45:52', '2021-11-01 11:45:52'),
('013b8dd682326c1f8cbf5bfb957639111e498e2328b211e63bad84eed512e623a4e593763af1638e', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:01:28', '2020-11-05 16:01:28', '2021-11-05 17:01:28'),
('013bbe64eda9e29ba429a218957471be1c4ad86f51ecbd003101ebce01d492a2be92e4b28b9a8e9b', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:03:01', '2020-11-15 13:03:01', '2021-11-15 14:03:01'),
('015cbb9e193f30d94f6789ed1ac27a0e26a9cd58340bbe7fcb74756d9fcbac872e17a6029ecb126f', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:30:40', '2020-10-10 10:30:40', '2021-10-10 12:30:40'),
('016670aae68cb7ab221f32b6f67fbcc41ca0d1bca0c5b4024f4223c395f6e6d5e1ccf3dd4bbc1554', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:55:47', '2021-01-01 11:55:47', '2022-01-01 12:55:47'),
('017d2a0ab1b84c47da5923808b53dc98a5e6a55c6c56b24bab736b0fe5dc10b256e4f641efa46a62', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:38:11', '2020-11-05 14:38:11', '2021-11-05 15:38:11'),
('01863d318ac11e427339c9a83c63ed344695bb09e69756a833a7d3e2732a5d99eb31cb10d89e19cb', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:30:47', '2020-10-13 11:30:47', '2021-10-13 13:30:47'),
('01927ba53b3c4cb1ffca2a3b3d96ffe67d9aeb9c1bc5fad1fbecc97caf8788397c1c1ed0ca5d99ec', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:22:06', '2020-10-19 09:22:06', '2021-10-19 11:22:06'),
('019fbfb423136801b06e9a4e427d887d0e85ccbf7117e54b64064ebf15587a53d13f3ddec9b27cf6', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:43:46', '2020-10-30 09:43:46', '2021-10-30 10:43:46'),
('01aaf4894254d69790e4fba21aa67debe22816b9d16577ffb99393e9f04971f02f44f528ff468702', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:53:32', '2020-12-04 09:53:32', '2021-12-04 10:53:32'),
('01ad40b5558ffcd8e57ae3e8bccdb8f5b6c8762b544bb3bcbd04101c0ab41cef53b2a4bed0afd37a', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:30:48', '2020-10-06 15:30:48', '2021-10-06 17:30:48'),
('01b127bbc1baf5226a1c04e8b56813098a63a885a103e1464c3e6e6dae2d69e3e34f34413cdfec0b', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:42:08', '2020-10-17 09:42:08', '2021-10-17 11:42:08'),
('01d0c4428b16cb6182927853daddb9520b961dd0f4fb5b3be05d0d1edf1fafc50609480898cc45d4', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:38:24', '2021-02-07 13:38:24', '2022-02-07 14:38:24'),
('01d4fd17f4efa8c15d5e61c8e39229a0d4107f08eb8e36b1f13edbfde4e3b6049bf99a9424072329', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:58:06', '2020-10-18 11:58:06', '2021-10-18 13:58:06'),
('01fef7ea07598d3de595a475324de19379a5b79a2827f54acceccbb10b0043e624823af0aa632a56', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:38:08', '2020-10-19 13:38:08', '2021-10-19 15:38:08'),
('0211994a7b77aa1612f7f6839f4b659d622301207544ca27483eceeecb781f52ad69229ac51219ee', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:33:54', '2020-10-28 17:33:54', '2021-10-28 18:33:54'),
('022feee47618a159e42b957ffef00962a6e2d065efee9a6ed88894a0493a3aebe335eb9cecf177d7', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:55:08', '2020-10-03 12:55:08', '2021-10-03 14:55:08'),
('023e5e4f89c53353f40411e5eca25fe0dd8b6b98c2323e890bc688effd470cf5f3dfd5fef94ee3f2', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:27:42', '2021-01-27 17:27:42', '2022-01-27 18:27:42'),
('023e7a344a6c784e6889a7f63aead16bb370021eb08b87f1fef08785a17fa7b726ec09d0c8002d78', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:51:02', '2020-12-31 14:51:02', '2021-12-31 15:51:02'),
('0245e9ebac0c81491bff136b5b0fc86b928a4faaad43be98697747e3ab1962c6ed4f2b2166b7d64f', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:35:23', '2020-12-31 10:35:23', '2021-12-31 11:35:23'),
('025df2d3942fbef86463daffc8bb57d502816a250ae5b125063a7b5f5a19167c8de9458248130427', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:53:15', '2020-10-17 12:53:15', '2021-10-17 14:53:15'),
('0267c5d4ebb91a5e5ae96c67fcd9b4c4ca27fc681787337554cdefd027f5e1148431d5840dc0cfd4', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:05:05', '2020-11-05 15:05:05', '2021-11-05 16:05:05'),
('027e3e6e79b2ea1347163038b895c8d3a29173c01c86cacd0d17b358935fd06394a2577c52064017', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:51:49', '2020-09-27 10:51:49', '2021-09-27 12:51:49'),
('028acaa5ebab2b5417c5c167e2cc14a71c5dd6c94a2affc274a30e4464dce6249b22b7e11ade628c', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:23:16', '2020-11-22 13:23:16', '2021-11-22 14:23:16'),
('029546d9532452af072b9f46b02f530370308da73b11e66d21791dd3cf00cf83526dcfbb9d11e263', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:42:08', '2020-10-11 11:42:08', '2021-10-11 13:42:08'),
('029c70c8d36cf1bd0440e13943ed23324302c624754b5a6cfcf77e036ff3dc4a64f6aa23eba363e7', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:06:40', '2020-10-18 09:06:40', '2021-10-18 11:06:40'),
('029f0870777d50fa0d49296f0a23330d8d36c7b082dc2f122ae1210a1cedbed612e9b74e465fece0', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:35:31', '2020-11-05 14:35:31', '2021-11-05 15:35:31'),
('02a4443b4c21dbf1bdca331413259dd87d365b21dba83fbba8837f11ae2fc3ee7167cd7cbd160287', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:36:37', '2021-02-07 13:36:37', '2022-02-07 14:36:37'),
('02b9137b6664f29957be2cb85f57244e2e8d56d40baa19a845d2c5d4afbbc216155e94a0fca613a8', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:22:45', '2020-12-28 11:22:45', '2021-12-28 12:22:45'),
('02d064e1583dd13e00858f0be937e0e25bb40cbeb0d56e616fe67b5f7271648f3133150e667246d4', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:51:18', '2020-10-31 15:51:18', '2021-10-31 16:51:18'),
('02eca37fcb33ccbbbbdea5d844d5bcb5c96a8d4d38180f59800f860ac5d56ae37b03f4435ef7c350', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:38:52', '2020-11-14 15:38:52', '2021-11-14 16:38:52'),
('02f70b9df33524f0b17dda7df383cf67c9d66fa054f82b729551dc3120a5616122fd4fe2f505f9e8', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:41:55', '2021-01-28 12:41:55', '2022-01-28 13:41:55'),
('030896749794be7756e0eee119951537cccf718e433d4da0e04881c88e8a0b194cd0ffc2f334b04a', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:33:39', '2020-10-15 11:33:39', '2021-10-15 13:33:39'),
('0326841e86af2f903cfdc73f61d52f1b0737a551fc735c0cad3b246b9af4c07336971e8c009fd234', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:10:37', '2021-01-28 09:10:37', '2022-01-28 10:10:37'),
('033f4ab705e311a6baba51833b1de9e1a66c74864c9943295b9173be49563163f2d1ad9001c295d4', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:33:07', '2020-10-20 09:33:07', '2021-10-20 11:33:07'),
('03437e5614b89d5ac008034e2478d336f14c6f771fd9b09dc9b30800e3fe10a9614c2b08b1de3fd2', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:30:30', '2020-10-13 11:30:30', '2021-10-13 13:30:30'),
('03446e393c0636492c94c84fcb8292b9470cf40b6482f067d83d5bc7f7cf896115c6b40b932f3999', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:21:43', '2020-10-23 11:21:43', '2021-10-23 13:21:43'),
('034a938e2c73519974f813f3f3ace005d8fe380b2986d801f13aaf54ed0a664f4427d49b7207b5b7', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:04:30', '2021-01-07 13:04:30', '2022-01-07 14:04:30'),
('0362f8a055348ebb267cb2b6b1fa3555dfb7ee762c5f680bdee0f81288172c787d058f61ac59488f', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:41:23', '2021-02-07 13:41:23', '2022-02-07 14:41:23'),
('036512602bfc3085a6e107fe4551e1c5c05a2eb79d7741ddf17e6083defa70c965682e63cb6e1c2e', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:35:18', '2020-09-27 10:35:18', '2021-09-27 12:35:18'),
('0373c558f630b89b1231bb70555485ae28f43b1d579899c719f8b54ef11122a51a108e8c6381dd49', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:45:38', '2020-11-22 13:45:38', '2021-11-22 14:45:38'),
('037f7ef2fc53d48866dff8bd006eae6b4219111798521cdcf3d1af48ca495bcca1601e19394aeabf', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:59:44', '2020-10-11 10:59:44', '2021-10-11 12:59:44'),
('038658122525302df74dd38818b77a04570a9d54bd4c76b4cc0923a298613cc74639cdfd9151dcca', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:27:54', '2020-10-19 14:27:54', '2021-10-19 16:27:54'),
('038735b26ee42e62a20015b953ead9a703d50e9d5a95547c7cdb44d36995684c14c4fa0da732a444', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:34:29', '2020-10-29 09:34:29', '2021-10-29 10:34:29'),
('03887e3c1311d1c4d5cec108efe941daf92e5def6b7144b743bcdcc55a3f706b0cfee06f03093814', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:04:56', '2020-11-14 14:04:56', '2021-11-14 15:04:56'),
('03962043db29c91d2ade4a88ac337cbceeda3aa88537c5ab241cedfea18353c567600064964a4f55', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:53:14', '2020-10-27 10:53:14', '2021-10-27 11:53:14'),
('03b6d97f94d415ffb98fe0f367132b4c1681459a5f52deeb9259521b3cedda5c95cbd2ddc183d119', 17, 1, 'authToken', '[]', 0, '2020-09-26 08:14:51', '2020-09-26 08:14:51', '2021-09-26 10:14:51'),
('03b6fe6a86db6d60c8691ca9633a599f6608e9cc66d15e1f4dcce4c3096442cfa8d9a592be2e2cb8', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:44:21', '2020-12-29 10:44:21', '2021-12-29 11:44:21'),
('03c07ff81d0ae0d9551242a63a349817dd30833b5310813e98e9fb84aa6dec4b8c4ee23375386620', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:26:13', '2021-01-07 14:26:13', '2022-01-07 15:26:13'),
('03c6afdf84ca19dccb8869274dbcf60ac415d320d251bab7c007be9f3718e7668d9c72f70d219b74', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:00:27', '2020-10-17 12:00:27', '2021-10-17 14:00:27'),
('03cedda6b7266bb608a6ccf61de686a2397da55c59ab0f533d67c18da643009759835ae7da99134a', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:51:34', '2020-12-29 10:51:34', '2021-12-29 11:51:34'),
('03f28710f52844d45d92baa1871e752e412d5cdd628af313cd394e6b6c7da5dc075346525809a099', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:00:28', '2020-10-29 10:00:28', '2021-10-29 11:00:28'),
('041b266f795d9ae758488f13d9a365900fe56a77c38d42aa0cf9bbf4dec042dcfd08554ed8c11df1', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:47:47', '2020-12-31 14:47:47', '2021-12-31 15:47:47'),
('043c493252edc22b273ce6775d3ca32be78653249abb26466efe4f81fe74fa38369732fc608402c0', 35, 1, 'authToken', '[]', 0, '2020-10-29 09:04:42', '2020-10-29 09:04:42', '2021-10-29 10:04:42'),
('044c8d6fe440869f091134d18a31d036570921311a098fd160897df45c6e85153ea05cf852856091', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:40:57', '2020-10-25 13:40:57', '2021-10-25 14:40:57'),
('044d41261233648627717edc25ce9640bc7c8b23b609ea3e699fedb263061b0ea740430c57d2012d', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:45:46', '2020-10-19 12:45:46', '2021-10-19 14:45:46'),
('04647a5944753110325944b8478984a76d08b753cc104badf08094fb46d242d22d9c2beb852d1bb9', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:44:50', '2020-12-31 13:44:50', '2021-12-31 14:44:50'),
('049244cc1e2ac5fd167445227b7fdd008e1b62cce590cd04dccf07ba2d70c285fe0cbf0a0b45cf61', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:01:06', '2021-01-03 09:01:06', '2022-01-03 10:01:06'),
('049ed0a2215185de47c7de3488c1e5cc74c718ff94aa12fb5cdb8f153101b915832d08662656d3c3', 27, 1, 'authToken', '[]', 0, '2020-10-11 07:54:05', '2020-10-11 07:54:05', '2021-10-11 09:54:05'),
('04a0b9bd1dc017c333693bc4904a4ceb395bb9cfa9be7900b0cc7c7b542d6aed49a1b42aaa55018d', 27, 1, 'authToken', '[]', 0, '2020-09-27 12:29:33', '2020-09-27 12:29:33', '2021-09-27 14:29:33'),
('04acc004263fae63716caae252628c399e1e0140acc063729ba61c8d50de1628d64364f62b6a99ca', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:38:07', '2020-10-13 09:38:07', '2021-10-13 11:38:07'),
('04bf18f3dbfaef142eb2ffdb65e8128cdb6a27b8138d6f97b8baa9b039232835a9a69d022808661d', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:30:09', '2020-11-05 16:30:09', '2021-11-05 17:30:09'),
('04d53ea1051ba3873fa368c2943e512734b47f8a509d1ccbc0c20b5bd4bf7cd40cb404842c518aa6', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:57:58', '2020-10-27 17:57:58', '2021-10-27 18:57:58'),
('04d5d46c57421256e2a599ca13450620f210bedf3313a538ae9200bc18157c139929534353c3eba5', 39, 1, 'authToken', '[]', 0, '2021-01-09 13:07:53', '2021-01-09 13:07:53', '2022-01-09 14:07:53'),
('04d7866b1de682e6bced056ab85f63606b31ed4888994fd63d3bc450139ff5b8a69de2947dca4489', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:52:58', '2020-11-14 15:52:58', '2021-11-14 16:52:58'),
('04f82182d0ed0bdd92ff5a153f37cb84e3f2744a56bc4717b612728fb9c7b52ccf76c9ba9424fa8e', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:03:18', '2020-10-31 17:03:18', '2021-10-31 18:03:18'),
('05001c938777620e1b335eaecc44cd962086f072f60d2207dfb9b5cfef83bb9f512424025c2e8c82', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:22:17', '2020-10-17 10:22:17', '2021-10-17 12:22:17'),
('05019291f19d499f128da61537e86f3e63d4c09624d973de6951c8fc14f3f3ced7ffc8653849f226', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:29:38', '2020-10-13 11:29:38', '2021-10-13 13:29:38'),
('052629b06fc8fe0a545e2a45b26d19a078f1327fbdeed3d60e5f99c7d65bd7abcd6ab0f7fec9bbb6', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:21:24', '2020-12-04 10:21:24', '2021-12-04 11:21:24'),
('05269da533b24a9e7ecc10f0a007186603389b6f029309ad4a9e25337aa88f56506ff1ac02e28564', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:43:45', '2020-10-15 11:43:45', '2021-10-15 13:43:45'),
('0528006f363cdb78ea3efa5f89c2510d86fa4a608965dd9d8e6aeea5f518543d7e642a3ba36e3808', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:30:31', '2021-01-07 15:30:31', '2022-01-07 16:30:31'),
('0529698e09700847cf84e89dbd08785ff54460543d3774c344ddff00c55c6c5d546297c8f7c95499', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:31:30', '2021-01-02 14:31:30', '2022-01-02 15:31:30'),
('0548918919877d20ff2d11c9b7f6a96b7ce16bff7b05364585f26c5b5cf72d31919a2ca50cd4e94c', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:09:52', '2020-10-18 09:09:52', '2021-10-18 11:09:52'),
('055d537b50b6cbb2339fc5cd0ca9eb11c57bd3871ee528490a31986611cb8ea3448c3ef7e355dd9c', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:29:49', '2020-11-01 17:29:49', '2021-11-01 18:29:49'),
('05672ea2f207bc3d3dcf6771b5b248a7c2dfd9a5f2ee867e72f49d7fecba7eb8f135eb23f9bae24d', 27, 1, 'authToken', '[]', 0, '2021-01-25 17:20:27', '2021-01-25 17:20:27', '2022-01-25 18:20:27'),
('0582919160b21e3d1342340656d0f893fc8c7e6dc67f2fd1d437c2f42dae5ecb8475f06177d45f57', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:55:58', '2020-11-22 12:55:58', '2021-11-22 13:55:58'),
('05925675453fd7b22972fe76a022b66f186a0a0fba14b935239da2ffc2582f6d9a455eeb4d7c990f', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:50:28', '2020-12-31 14:50:28', '2021-12-31 15:50:28'),
('05a09e730324a7f3e84afc2fe82c3792654987b4584a63857ff6ffae15557a070114e33ef4dcd618', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:07:44', '2020-10-29 14:07:44', '2021-10-29 15:07:44'),
('05aaef8ccde2681160af1a0bd62902edc0d45fc6e0fe5f98aa198dab07bc208f7fa5c41986d74d51', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:35:03', '2021-01-28 09:35:03', '2022-01-28 10:35:03'),
('05abffb18d2307f362794c8c006043874b90c4c99f48c65c18950c7b7e774a6a9a84f72ded7d3a6f', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:05:26', '2021-01-02 11:05:26', '2022-01-02 12:05:26'),
('05b126054bf9c7d69e7506e076c08d6dff1c594c4ac2ca70ea7b889774fc9afbfe5458bc2f1bb586', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:23:48', '2020-12-29 10:23:48', '2021-12-29 11:23:48'),
('05ca122bc5be786513426786c8a4e45ed8db88f45c2a2f985e2f535188af4bf39ac65583e74ca601', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:23:14', '2020-10-13 09:23:14', '2021-10-13 11:23:14'),
('05cd4c8dd9a05a61487c701ea413ed5264de53cc98d70a896617de208a1839e87fe23483bf5fd83c', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:05:28', '2020-10-19 08:05:28', '2021-10-19 10:05:28'),
('05dd1d06c68401e3c2526fd4559c6214b3232a3a4bdd678834540937a976cbd4c8ea3bedb48c9676', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:18:39', '2020-10-25 13:18:39', '2021-10-25 14:18:39'),
('05e3fec7f9027b5b372fa39177e2b69bc62aba554289ddb166da341b0431e0c8a91818f075712371', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:00:08', '2020-10-25 13:00:08', '2021-10-25 14:00:08'),
('05f3bf2718171579aa7c3d2b746871bbd3601ee87fe90e883be9923782858746b721419bed3c0f42', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:15:29', '2021-01-28 09:15:29', '2022-01-28 10:15:29'),
('05f8ef3e227338349cd710b985ffbb47504bc4ec2e18ae9a0489ce9b1bd771f53a756e219e9b3174', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:12:04', '2020-10-03 13:12:04', '2021-10-03 15:12:04'),
('0604075505ef5b390a261df3b4557a162d258750af4efdc9e7c6d077f272c63a7736a5d4fff9ee87', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:37:37', '2021-01-06 14:37:37', '2022-01-06 15:37:37'),
('0605ac37c49eaed61ce6c707f306fc9e111d0a1abe5af61b3d51f5a71194709ffa7d556e6fc63353', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:59:31', '2021-01-09 14:59:31', '2022-01-09 15:59:31'),
('06200ca878bd9dfe4b023eaac6f53b4f4c6b316b6ac3d929db952166bf4b3a1e83d230302ac8ab45', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:32:29', '2020-10-19 07:32:29', '2021-10-19 09:32:29'),
('064ecb3eab0afba316f39ca3abf2ddbb22e57cf55781446072146a5411368c2d2972efa0fc4a14dd', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:12:16', '2020-12-28 11:12:16', '2021-12-28 12:12:16'),
('065b5add77c49755d21583040f2901ae9dc44bff42fa710786254f2a271e6670dcb8ee6dc7cd51c8', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:18:32', '2020-12-04 12:18:32', '2021-12-04 13:18:32'),
('065f02f76d943bb95a07cbdd8d31ce97f0430a77624d96bdb3ca96519231ef169eb9bbc4fc2c1b27', 27, 1, 'authToken', '[]', 0, '2021-01-09 13:35:52', '2021-01-09 13:35:52', '2022-01-09 14:35:52'),
('06759bf11baca7ef8dacc50ea6d0af9b55d0f5d0cb6f85f120cdf078bba94ad912fe486abd4b3ad3', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:11:32', '2020-12-04 10:11:32', '2021-12-04 11:11:32'),
('0677377f192574f6b96264841d5f4e258643779d6bbb4728be71751a33f558e5c50658e9be713df0', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:11:02', '2020-10-18 12:11:02', '2021-10-18 14:11:02'),
('0696a4422de97f9b42e7d308e0869fe9d589ae4b416eda1e68d6f9f8eb5756e25c0726a39435a5be', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:12:27', '2020-11-05 16:12:27', '2021-11-05 17:12:27'),
('06a00bd030033cbac4cbbeb00d0088ed9db878c99d74a2518a8537b2d9a4008389e3a3af757340d5', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:30:52', '2020-12-31 13:30:52', '2021-12-31 14:30:52'),
('06a71a78afdd1e98ce81d25b8dbe67e8c144e115da9f79d4d50552c69f4e1ca3a5ea295153a40b85', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:57:01', '2020-10-23 12:57:01', '2021-10-23 14:57:01'),
('06f0e28cdd690915c2902932e793c2ef69d34cabedbb67b2d30dcf87204a6b4b684a4d7c410428c1', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:22:23', '2021-01-26 18:22:23', '2022-01-26 19:22:23'),
('06f537e421e3c2d6421d19fdbffb5b63cdfd3bfead88f9f2a4bc5e96da1c5d583e1eed689be9e8c1', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:15:19', '2020-10-13 10:15:19', '2021-10-13 12:15:19'),
('07423966dff421cc0857bd0ebe540558329a6438700a88dde4aca5e023f0fd50ba83928fcc2335fd', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:37:13', '2021-01-07 15:37:13', '2022-01-07 16:37:13'),
('07429e3b183f6c6080154ca710be16d1fecfe6d5b0dc543a4cc475e16518c5dbb4797571b2aea492', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:17:43', '2020-11-19 12:17:43', '2021-11-19 13:17:43'),
('07455c40a60ab0ced7f4548d5e4d64d6ebc1c9caae81e4e8052b209b4a298fd0c9a98a4b6895c57f', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:41:12', '2021-01-06 18:41:12', '2022-01-06 19:41:12'),
('074cd4255fcc59ae73dcf95f28c0ba7edecda5fc2c7fe98bd8a6d3ffd705ac8108173c25e8415e75', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:33:55', '2020-12-31 13:33:55', '2021-12-31 14:33:55'),
('075859591201a7f8549dccac97be29028c9374dcb85534f7ff4958fc3e8436db9c4462ea1cb92253', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:59:57', '2020-10-17 08:59:57', '2021-10-17 10:59:57'),
('076c498503f91e7ca32bd18d5a2ffb7ed1abad399354eacf0436bad810739d8ffe2bd56fd92e6f52', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:49:03', '2020-11-05 15:49:03', '2021-11-05 16:49:03'),
('0777761c846fed60fa63d34c1f216d2a6ca296b40a18b092c199b368a6e80360536c9df9283b5add', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:38:13', '2020-10-17 09:38:13', '2021-10-17 11:38:13'),
('0792f08d26e16d7586f4f533160b30cfe8561c067bcc892fc1c4eb360b0159069dc902c307ff3b5e', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:15:21', '2021-01-26 18:15:21', '2022-01-26 19:15:21'),
('079ede4a2256ca9d57f61bfe1f0b532a864c262adbc1340fcceb1e9c6edadf7f74596064b800908c', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:59:44', '2020-10-17 08:59:44', '2021-10-17 10:59:44'),
('07a0de0f033ec7113e5b7091006a4b3e58267edc3c7378c143e1556a09ad30ea03efabdeaff67dfe', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:35:20', '2020-12-06 12:35:20', '2021-12-06 13:35:20'),
('07b8974187ccc35d055365498222ff09ace2c63d2779a59a5c525b34f358cf9ef55a103088dd4af8', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:50:47', '2021-01-10 12:50:47', '2022-01-10 13:50:47'),
('07c39f4c7ee05c20d42f1deee9d82381431581b30df3407258a9cc54d3a08124171eb1bc6bf79f9d', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:08:33', '2020-11-22 15:08:33', '2021-11-22 16:08:33'),
('07d24c99dbd2fa0c15cd4e23f1364f4766a330bf5d27ba1579cf5af7c0598099282e0d5eed1e2df1', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:45:06', '2020-10-23 14:45:06', '2021-10-23 16:45:06'),
('07e32f0bfcfe813ff6b9696a5927b29f0b836bfde39fea52729964204e863cfda851f5101de4afc6', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:32:50', '2020-12-28 13:32:50', '2021-12-28 14:32:50'),
('07e683ec13ea44b1b86d4edd4a5cf0b9ab29edfa99897ef9475504254dea0d3f0489af3115bd5fa5', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:23:10', '2021-01-30 11:23:10', '2022-01-30 12:23:10'),
('07f2845493c3e20a921730be20c13be3064a404d76cc7aafc97893b743a78e7f1bf8a199842774af', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:14:37', '2020-12-31 11:14:37', '2021-12-31 12:14:37'),
('0850500bd6acd312faff8e3c865e3b86a4c13457b5ccf451f8cd3098e14ff3350b4665859d385227', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:53', '2020-10-03 13:41:53', '2021-10-03 15:41:53'),
('0860298323440fa9c8bcc9e53935da12605546e69f800a419ad52fe16a5abbbb3879dddbc1f89367', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:20', '2021-01-07 15:53:20', '2022-01-07 16:53:20'),
('086ff4129281483121b2f4cbd969fca43e87fc328d1fc244af104590740a01d2527edd4c0ece93f0', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:46:30', '2020-12-06 18:46:30', '2021-12-06 19:46:30'),
('0878de9684da2bb7a4a906112354346f978556a76c619b745eea6c2aa8c7303bacc5f3193f545e79', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:06:02', '2020-10-10 13:06:02', '2021-10-10 15:06:02'),
('087b0377614fbd96d9d245d2fdbe67ee6cfaaaa878b5b7c6e68c48eb864ec59a475af0ba7c7c79d4', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:59:01', '2021-01-01 11:59:01', '2022-01-01 12:59:01'),
('087ea80afee059360c3594c1b65272ea67f93da0fe6d476e21cd14565fbb977af99c5a01c7462d4b', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:52:08', '2020-10-29 13:52:08', '2021-10-29 14:52:08'),
('0886ba2ee76c56f734899d23afae3b3ed2fc3790d39589fd94993d7eaa6e9ec2eef39055107ecf9c', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:29:53', '2020-10-31 11:29:53', '2021-10-31 12:29:53'),
('08887e9dae3037c5cf61bc8223d8ee20d180eb6ec2297a57231e14385475a914eae5afa57f87e9ee', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:04:07', '2021-01-24 11:04:07', '2022-01-24 12:04:07'),
('089abe4becd490654bc2c738780cdbacb51be7d9f90a7b80f0174042fda9f20aaadf663ddfe469f6', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:09:23', '2020-10-10 11:09:23', '2021-10-10 13:09:23'),
('08b5bfc80578ba199d808c396f9aafdd67a559f3a72e76194e9b81cc0c2d718cbc9377525297fcd9', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:17:44', '2020-10-17 12:17:44', '2021-10-17 14:17:44'),
('08be4925954c1b259235e4e92b914e84a98ab27bfea50822f74b81f1bfd46d3d9bf500ef0a9507ec', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:26:36', '2020-10-11 11:26:36', '2021-10-11 13:26:36'),
('08cbb7e85befd226f14bd2c71820a72ce34e55595551e3eb1dc648e026d9962276a43673a8704aad', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:18:06', '2020-11-19 12:18:06', '2021-11-19 13:18:06'),
('08f6c88e9f0c6727bdc3a7f1a2f476308f4e89b0047652035eef4dbba305454696fc25d59e269da5', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:15:26', '2020-10-25 13:15:26', '2021-10-25 14:15:26'),
('092b90c017fff6ccb20fffb353cf5cbfb21e6519f804d456093442378b599d901b7ad49f136f6cff', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:46:04', '2020-12-31 13:46:04', '2021-12-31 14:46:04'),
('0948e6b68b485aecd85f6d9122b5309e8b8b918ba7cce7e82dea960815267cb49e6f3bf462d1071c', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:04:05', '2021-01-30 12:04:05', '2022-01-30 13:04:05'),
('094c8d9e54bbf063338821c59adef71c64b1da59b07f9708d28e478c67007802081ca6630c5553e6', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:08:04', '2020-10-29 11:08:04', '2021-10-29 12:08:04'),
('097756dbc53b420f3b41f6b223c9a7a2be19c90a0c985667ef30d7cd58749ba8920411a0f9e8bdfd', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:53:31', '2020-10-19 11:53:31', '2021-10-19 13:53:31'),
('098d5348039429fc5e6a0cd01315a5e901c6451362b6535a52478e2c96887bf20c7980cf0de34f7c', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:54:54', '2021-01-07 15:54:54', '2022-01-07 16:54:54'),
('099d49ae74fdb525a3c0bb49e5b12ed0b201217f1323423beb868dd39226cae52f81d0e51c5a6d24', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:50:21', '2020-10-18 09:50:21', '2021-10-18 11:50:21'),
('0a02066d35ad3bcb43f6d5ead31c6789f3480acafdee1b79d129558c9de69664d31340531d56a32a', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:47:05', '2020-10-29 07:47:05', '2021-10-29 08:47:05'),
('0a0327217f93e8516129237bd2bf992c72635c9ec47deace82682fd95ac07c8cfc10df67795c15f2', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:14:07', '2020-10-19 09:14:07', '2021-10-19 11:14:07'),
('0a2308dab9b7cb9be385cdb770467cf424c47bec496486e7aad39b9432634eadd2415cd2290e1841', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:00:53', '2020-10-10 11:00:53', '2021-10-10 13:00:53'),
('0a2b5040913be206f8eef5a579b715f5a0dcea114473b904b8cb42e85e89fa01d81c133826670ecb', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:03:51', '2020-10-17 14:03:51', '2021-10-17 16:03:51'),
('0a6decf4b1e40b1e4a4dc026831d87defff123b0ac4dadc267f10c26ffa55092cec0f73032a0f2d4', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:41:26', '2021-01-28 09:41:26', '2022-01-28 10:41:26'),
('0a782447707e55d681187e42ebb3c15ba982c13fc47eca83cd8e8f850201cdb38be974b5a867b4c7', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:16:08', '2020-12-28 13:16:08', '2021-12-28 14:16:08'),
('0a8febcc196be3ef997b1e8627c36c8879b31d9e6c7dd619cf1c2f50f4060c07c325e09c45891550', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:21:49', '2020-10-19 13:21:49', '2021-10-19 15:21:49'),
('0ad5a767a9829eaefe07eee4599273acb0bd91038b5cfedb0e847322a85012f4ec83481e8f374060', 27, 1, 'authToken', '[]', 0, '2021-01-10 11:45:47', '2021-01-10 11:45:47', '2022-01-10 12:45:47'),
('0af8641f2a0490e754387885f3ba168232b12088b23338dad0da30878df42eb5b454cdace529aaa9', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:00:48', '2020-11-15 13:00:48', '2021-11-15 14:00:48'),
('0b1d7074235022d5a12265760d5bf7df5b50f4b8e22f1ac7f359de9a55016f12b1bff68d39972608', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:10:28', '2020-11-19 10:10:28', '2021-11-19 11:10:28'),
('0b1f4770e2a1a8b6cd8b4d482cf96b23becc520dec6b6727007c833ed4f8d54e7931fe8e21836d6a', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:55:29', '2020-11-01 14:55:29', '2021-11-01 15:55:29'),
('0b2b71ee46b0b7b6178d2f9ec601f79d402000ecbee262b14d3dd08232014e7f1e7c4e393ee490c0', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:13:09', '2021-03-27 13:13:09', '2022-03-27 14:13:09'),
('0b3b4c7eea7f7addc5214aec30cbdc8c85cd9e5615e8ebaf944da049e1c9182277a898fcebf1ede3', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:08:30', '2020-10-08 15:08:30', '2021-10-08 17:08:30'),
('0b4a33730cc6a775608cbbdfcd427085f438846dc3aed6549b11d4c00a32c6c0678ebaa15a1612c3', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:46:53', '2020-10-03 12:46:53', '2021-10-03 14:46:53'),
('0b773a104dd934cd63151c3a5a0a983a8ee3c0d5fd94f602c3c1c01ee7ed091be116b79279a58c1c', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:39:51', '2020-10-15 10:39:51', '2021-10-15 12:39:51'),
('0ba61d73dc5adf3e0849a5ccd0e3fcb0f2546062bb0150a3f8c25394e64a34c2bd379c538b377c5a', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:53:29', '2021-01-07 11:53:29', '2022-01-07 12:53:29'),
('0bc887da4b65f066dbbbc5311fd3bdca5d77535168f4d3a555ab0b1ab12fbd649076fb737721ca3b', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:42:21', '2020-10-18 09:42:21', '2021-10-18 11:42:21'),
('0bd9815f647b022d2323f1292855175367cc1ae2e8dce22563d41fb315b7c9481243db9d1eb40779', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:26:48', '2020-10-11 10:26:48', '2021-10-11 12:26:48'),
('0bdffd91ae244156b5f79ec31d4395d1d29272609a683fd169b4a0e235ce99938ba6714cdfbd748b', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:46:46', '2020-10-15 11:46:46', '2021-10-15 13:46:46'),
('0c005695161d8f74410c1aa26c1e65b2e08a093ead690b3880fe8e9fda2952bade3a0cce7c4d6d9b', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:25:46', '2020-10-11 10:25:46', '2021-10-11 12:25:46'),
('0c02de41b407b76e2ddcfa100878371ae8309b4299520b9dbe36e94f7d7b1b4d712be2caa5792481', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:37:26', '2020-10-19 08:37:26', '2021-10-19 10:37:26'),
('0c131295def3e539b4aa1e7534e81a8a68fc85cd7fa470088bae764c5fb94bc13801d9381928d20b', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:08:41', '2020-10-10 13:08:41', '2021-10-10 15:08:41'),
('0c313a148561d350f7b0f6b4629b05b4448306401668dec91a207d49bc6135f913c23b442f70728a', 27, 1, 'authToken', '[]', 0, '2021-01-21 12:07:49', '2021-01-21 12:07:49', '2022-01-21 13:07:49'),
('0c350454f0f7c82009740d35e846c7cc1fdf1d95a3045e1304d67b3ac7b031b27c348620a457a50f', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:21:04', '2020-11-19 12:21:04', '2021-11-19 13:21:04'),
('0c3953177f4a1a3fd1113be970518ae14df17552c3e61a782f84c8114d61040e1029abe4be35f329', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:34:13', '2020-12-06 18:34:13', '2021-12-06 19:34:13'),
('0c3aa1929503b1421d23ac672b12f4ed9871a67e58f6e60b3ff34a1d66ad0c1132f355327ba23e58', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:02:02', '2020-10-17 13:02:02', '2021-10-17 15:02:02'),
('0c516284c819f4a175e562c66781bb93dbca5dfbad33e5fc8726b14804be2eae9990d776b0d9e86f', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:17', '2020-10-03 13:10:17', '2021-10-03 15:10:17'),
('0c5260f310e02780df530e456c6b8c75c69274939f2be8bebca56a3e16a47c25b060536943cb4e0e', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:10:58', '2020-10-29 11:10:58', '2021-10-29 12:10:58'),
('0c526be992eaa154e87dfbe27ede90f11897bf9ecb116d31821087d065a42b7eecf7a8b8aabcccc1', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:42:54', '2020-10-29 10:42:54', '2021-10-29 11:42:54'),
('0c8c7382c615a10ec71ad94e8ea2d0709e026ac1a3ac4abd3809bbec2a1949ae57b886a0580ecb3d', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:50:03', '2021-01-07 13:50:03', '2022-01-07 14:50:03'),
('0c9dd376d0b7bffc60248f40c871aa21a91a6598eef099ca04155c06d40da119c4e3e9c4f3bda0ab', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:30:42', '2021-01-26 17:30:42', '2022-01-26 18:30:42'),
('0c9fd367a7357f63bbbaa155d08aa0e1d4cd30fec269a4a8f8eb7dd7f9b3cd2346e728b416b63894', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:09:25', '2020-10-23 09:09:25', '2021-10-23 11:09:25'),
('0ca8ed44fb082930fd3d41387112d7f8689f4256dc35dbf4b69b4f84653b1b71f5f479964732d5e8', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:46:11', '2020-10-19 12:46:11', '2021-10-19 14:46:11'),
('0cbc3ae8015b5538761c996e4941d5bacc39ab63d27fa17fdfaa102f916915b115c5e2efff67b12d', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:25:24', '2021-01-03 13:25:24', '2022-01-03 14:25:24'),
('0cce8f0d018cc1b1b25dc2eb9edf759aecd749fdbcca4a5e4472d2c9edad0c6e5442f0ad296effb9', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:42:14', '2020-10-25 13:42:14', '2021-10-25 14:42:14'),
('0cd63c1d6cf16fa7095b05a23557890712d8d8928788f695bd561a4540a0b14a13f5167c0921c124', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:00:53', '2020-10-19 13:00:53', '2021-10-19 15:00:53'),
('0cd6c41a09cab93aac87bcd992513e36a9024e18f66786b7e199e0b899dbee3da891cdf6f8d5206c', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:47', '2020-10-05 16:54:47', '2021-10-05 18:54:47'),
('0ce495b5408a1d164eecb6c0eb3ec0a30a877f18469fce3498d860addfb815ca348eba4152751730', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:27:59', '2020-10-08 15:27:59', '2021-10-08 17:27:59'),
('0cf8d8338a0a9a1d64c3d4292e963b4f3af44609f87f9f3de053bd004419157fb7f1939479ea029a', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:42:41', '2020-10-03 12:42:41', '2021-10-03 14:42:41'),
('0cfee762e49ca01546499a8582d1f0d9dbad7cb9a950b19dee3f762790d13f8d078c92d6f448dff8', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:02:42', '2021-01-02 11:02:42', '2022-01-02 12:02:42'),
('0d4826660baf7e144dfb61c364178c827d2b2126e2a35a54830270f5b3dea17f0c0365014a13e4ff', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:27:17', '2020-10-03 14:27:17', '2021-10-03 16:27:17'),
('0d5605b3f8b44c0dc538acf4695f41979dd7edee700bb1fb0d669ae1c0105b87153aec7846efd565', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:31:41', '2020-10-11 09:31:41', '2021-10-11 11:31:41'),
('0d80dbf0f23d641c3df368ae2ad698d437c99f6d5ff07f9be14b7dde7d5003c33021893304023666', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:23:17', '2020-10-25 14:23:17', '2021-10-25 15:23:17'),
('0d86b17a5540708c6756a272ce53acbd18bad8e7e6c1f2c012e3131a26fce28c1ec63d31ff42fa6c', 27, 1, 'authToken', '[]', 0, '2020-10-27 12:59:12', '2020-10-27 12:59:12', '2021-10-27 13:59:12'),
('0d9460008ed832f9e0088ebe055468601a3ccb171bde94dcd1b9ebfc5b627f09f721090df7341140', 27, 1, 'authToken', '[]', 0, '2020-10-11 07:53:50', '2020-10-11 07:53:50', '2021-10-11 09:53:50'),
('0d981331af3046e20b41304fe7d8c765af5f39e0584bf097bd351037bce54adc90e0d8a80891f1fe', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:34:34', '2020-11-19 11:34:34', '2021-11-19 12:34:34'),
('0da8f1de1bcac0c3ca6e0ee1fd3080f013d75454708999cc6b9a0fe8bf1e731b8bebf75b92ee3cc7', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:05', '2020-10-03 13:41:05', '2021-10-03 15:41:05'),
('0db706309fb72533c94e66b1d3bcde8209c5e1b53dab8406c1600de601c0a5fbfff58f59b0db31da', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:53:18', '2020-12-06 12:53:18', '2021-12-06 13:53:18'),
('0dbbfe12fbf3d64b418f38fa2da25c523256248efd6d0a098e1a4541c9b5f5b1182000256ba106e7', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:58:04', '2020-10-17 12:58:04', '2021-10-17 14:58:04'),
('0dc57a6dbd2f34558dc59da4056898d4bce80007d51cb7c78af17f417c5e3fa8221a70a2c63c1717', 27, 1, 'authToken', '[]', 0, '2020-11-12 12:55:20', '2020-11-12 12:55:20', '2021-11-12 13:55:20'),
('0dcfe5c34c23023e4a9813af63dc112165208330fdbe6cb8e53e3c301500824e133cf411a4fce0dc', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:27:19', '2020-10-18 11:27:19', '2021-10-18 13:27:19'),
('0dd11ac1b7d23d956d741efbaeab4c52069084b58f847e8967f58a82ea6f962636b56957d3b83718', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:39:35', '2020-10-17 12:39:35', '2021-10-17 14:39:35'),
('0dd5249503cfd8efb8875af9a26cd389c78b93d171eeba57327b31a65e9b91228f6bc05ab425cea7', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:40:24', '2020-09-27 10:40:24', '2021-09-27 12:40:24'),
('0dd717b5763497c10d3011877c4bfc3bf397e4fbcd540a8e3264ff461882cdea50aad8de8c379a03', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:37:32', '2020-10-17 10:37:32', '2021-10-17 12:37:32'),
('0dec116ef7773da28a730bb15ba115fbfd1fb46dd86d9d4f6712ef9529402e818ebc924ebd27ca74', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:00:40', '2020-10-29 11:00:40', '2021-10-29 12:00:40'),
('0df2a2fea226c0150464fb2edbaff5e2e9a20fad4d7acc6c9f12000be15c3151b9516417649353e6', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:37:14', '2021-01-28 08:37:14', '2022-01-28 09:37:14'),
('0e0ac6145751b86b28339e0ceb15d671e09d60a81bec8984690520207caa2911ffd8d25b58d6055a', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:50:48', '2020-10-10 10:50:48', '2021-10-10 12:50:48'),
('0e1d88baa23deb342b71979fdf59b339eadac3352a5e861baeca0cd982bdf2c3d8dd861b974651ca', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:32:14', '2020-10-13 09:32:14', '2021-10-13 11:32:14'),
('0e2ea0692eca9dc3a5d61fa0f323794100ab180ae2c7f214369af93ba34f29f397f3521ae326f7cf', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:20:07', '2020-11-01 17:20:07', '2021-11-01 18:20:07'),
('0e3a3f1a705893042a1b3a93ca1a93e0a15ddca2b638f1f5a9f9e4e1069a91072d2976203b485a90', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:33:18', '2020-10-23 14:33:18', '2021-10-23 16:33:18'),
('0e50cdbb89845f1e1630ffa38f55fcfc69977454846b6bb1ac0e869cfe57b62f23ba22703ba4488c', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:19:06', '2020-12-29 10:19:06', '2021-12-29 11:19:06'),
('0e639247a27e8f5fdbbd21a49ded7345f5073e01f57af5cd3b3caf38398075708fb344c2001e100b', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:59:45', '2021-01-07 15:59:45', '2022-01-07 16:59:45'),
('0e73e2fcbcfeb7a089d16943dcc635ab583ec96bf014fbcd2c00656bc6cbbde8d33af4ff7793edd4', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:35:22', '2020-10-15 11:35:22', '2021-10-15 13:35:22'),
('0ea02462862e9a1e511974e32bb514660fba903af9e60ebce48df5e38982b391712a77dcf490ba1e', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:28:52', '2021-01-06 18:28:52', '2022-01-06 19:28:52'),
('0eb8c633b3b006cb06f007d57a939a2179d9a0d2a3bae236c2c8527fbd5d06adc0b8015352a3e7aa', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:01:37', '2020-12-31 14:01:37', '2021-12-31 15:01:37'),
('0ebb90fba00a7c1dc550dbd38be8b267531b638205ad1ce75e9333edfc8f2b5fc8510f987eaaf072', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:41:40', '2020-11-05 15:41:40', '2021-11-05 16:41:40'),
('0ec96e9ee8ec554a3c57e8d3ac297ce931fac813f78f2307ae758b76f3399aebd577930b38d3b346', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:48:33', '2020-10-19 14:48:33', '2021-10-19 16:48:33'),
('0edf1d75969f01bdb4316f5e2788cdba05c6b657d960a19239d0dbfd012ff82edb0ff7580473173c', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:00:10', '2020-10-19 14:00:10', '2021-10-19 16:00:10'),
('0ee367628200b373e59a4c948c2c76fb9a0ff9cfeff3e846771fc1eecadeb9471a464e4acc340244', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:26:55', '2020-09-26 09:26:55', '2021-09-26 11:26:55'),
('0efb4cd62324fd4ac17e40ddf0ca509737d2da6a625043f0abe959fb514ce1dc91f1aa151e8af693', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:07:41', '2020-11-12 10:07:41', '2021-11-12 11:07:41'),
('0f0046600bd89ddafaa2f1fefdcf9b08ef27f01642356c40d645b50c9d75b49c5b72660748cb3d2b', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:53:18', '2021-01-10 12:53:18', '2022-01-10 13:53:18'),
('0f1538ddb831907b08360f10cf3f4774c7f83389e2381e082b85b05ffac6d9ffd8bb1dee2ea24551', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:52:11', '2021-01-26 18:52:11', '2022-01-26 19:52:11'),
('0f290f1c6c6aea2c716018f845ce018c71de723cd292c1bf414d1f61cdf1267341b29efb4ae4494b', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:05:34', '2020-11-01 11:05:34', '2021-11-01 12:05:34'),
('0f327baeb3b804c5187d2e0e83261dbf1ecc2953023f39fd57249805dc2e64162ddedbb74d801823', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:00:31', '2020-10-23 13:00:31', '2021-10-23 15:00:31'),
('0f5cdda45677b978cfd4723564e8937bc92f94f96c032f8ec8a13604ceaeff7df66f92840048130f', 27, 1, 'authToken', '[]', 0, '2021-01-17 13:44:33', '2021-01-17 13:44:33', '2022-01-17 14:44:33'),
('0f6aeae63ea2498812e68ec89c4e8ad808f357ed5367de5fd3c998c8ed57a4a197a3ad49c2ee3f6c', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:25:49', '2020-10-17 09:25:49', '2021-10-17 11:25:49'),
('0f708044d31cf8934341caa16d83dc5b3df290145262835a3fd66fc2b428d792198b9c97f119546c', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:32:18', '2020-11-01 16:32:18', '2021-11-01 17:32:18'),
('0f844e0d7dc48a068788828519802258a8dfaa8c65653f18db81d66fb949ab4fa4f325999af3da71', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:44:12', '2021-01-30 11:44:12', '2022-01-30 12:44:12'),
('0f8647ce2ba9b5125be306ad08d623c3b8d25050eb357813b64302c1fbcc5bbba927a907ef72f7a4', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:46:03', '2020-12-28 11:46:03', '2021-12-28 12:46:03'),
('0f8b192bd6ed43f70b855006d8eb07fa1637f850e75815f67a33b13dfaae03974a3e276af30fb50f', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:45:06', '2020-11-01 10:45:06', '2021-11-01 11:45:06'),
('0f9604ca0b9e10264d539572e0770102f6de27d4ec03c0caf7f56036103b1cb5688fe96ede59217d', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:00:27', '2020-10-31 17:00:27', '2021-10-31 18:00:27'),
('0fa62efdf5ae47dfac44bcc2be38d3b6d435002d40ca220ed69f0f7aa9653b90c4ce6dc2d7f7040d', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:16:47', '2021-01-28 19:16:47', '2022-01-28 20:16:47'),
('0fad5e778d7663ea3b2bdcacc410b46945169b00b905a7273258f03fdaffba1018f691f7bc10af83', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:09:10', '2021-01-06 14:09:10', '2022-01-06 15:09:10'),
('0fb0df712cdc52bd9fbe29b1534a7b2d53f2936d66e9ac45a3ebccf33b3559d190ad9b9555454eff', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:58:03', '2020-10-29 07:58:03', '2021-10-29 08:58:03'),
('0fb3a35a603cabe4b2e058eaa28902599acedf4237f8229343be5f55c843ce77630f80a2212044cd', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:32:40', '2020-10-11 09:32:40', '2021-10-11 11:32:40'),
('0fbb61f8792761e875ca4cc46d67955146af83e0bf6b582ef420ef7ad99f4fdd46bd75da70d35332', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:23:11', '2021-03-25 18:23:11', '2022-03-25 19:23:11'),
('0fe004e807c84fe02077879f5317a078a199bf48f9df363cf4ea17eba90681f681b6f2f09d526b52', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:29:59', '2020-10-19 09:29:59', '2021-10-19 11:29:59'),
('0fe8e41237563ded3968f0956b17dadadc7821401eaacfdf7ff1628c2dc9dc9fb77ddd6dadd79818', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:38:22', '2020-10-15 11:38:22', '2021-10-15 13:38:22'),
('100183e4d4bffaf0e345f1f8f43bd222f27281052cbbc7718482093992a55c30bc1db54c4217750d', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:18:30', '2021-01-29 15:18:30', '2022-01-29 16:18:30'),
('1017611c457d8fda4764283ea7eade52a73088c6941ba79cc53037a7d416d9178a68f458fc7a5e79', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:48:32', '2020-10-03 12:48:32', '2021-10-03 14:48:32'),
('102a9623bf84397e5716bbc9a3bed3a03132ba44ab6446aa8bc11f0eae76478880cc092615ed2679', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:11:42', '2020-10-19 08:11:42', '2021-10-19 10:11:42'),
('10314550facc3392363015635690c62f5e199989627b07e808c72ad88207ee85fccca1f1a4bf6abe', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:14:35', '2020-10-29 11:14:35', '2021-10-29 12:14:35'),
('1038810b8a3cc0806efd9da1d8f97181dc1ecf0220ce56a6e2bac08556bafcc50fc2b394c3d64aba', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:29:00', '2020-12-04 12:29:00', '2021-12-04 13:29:00'),
('10491b81368880bf2293f4a3ed07de744aae7a6b43475918fff4ef6445b3ff93e33872829750d215', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:43:30', '2020-11-05 15:43:30', '2021-11-05 16:43:30'),
('1053de90d60b8867cb87844fbfd62996b123366187044b7f817a2365142c511840423fa5579c4581', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:42:56', '2020-11-01 12:42:56', '2021-11-01 13:42:56'),
('107609d153bd2a33d6c1d3351c5abbccab7247c7ffadf8f3151c8b8fa75f7f4158070eaeb39300a5', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:30:02', '2020-10-31 14:30:02', '2021-10-31 15:30:02'),
('10844ca4fa640ecd3bbd5bbf3fab5f740a196c7013dc0f9819a3b16a5d8b39f6b311d0252a28e0bf', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:12:44', '2021-01-09 15:12:44', '2022-01-09 16:12:44'),
('1084c49ec6b7b77be0086c17138fe72a40ba4ae1dfc3b0bf43ebf4cd8dbaab05f4bb805e7a11e43d', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:19:44', '2020-10-30 09:19:44', '2021-10-30 10:19:44'),
('10908937c2963180c5db63f850a68800740f3b5238600d632eb606c33963517b7693e43881ad1c99', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:11:59', '2020-11-12 10:11:59', '2021-11-12 11:11:59'),
('10b9062bf7982dedf45dc4b5b5875678704e693646ed41024e9e5c650fce34158cd05758262be77f', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:48:26', '2020-10-23 12:48:26', '2021-10-23 14:48:26'),
('10da5be541974d5ccff8d1374169d37a8fba03a376aa041153ac10925705fad390128a0504ad4639', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:07:24', '2020-11-01 14:07:24', '2021-11-01 15:07:24'),
('10e6ef2d93d2a78b4442d8edd2699b21260c5505b22cee9030893159e25544ef5675aa34ef2930ac', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:26:44', '2021-03-27 13:26:44', '2022-03-27 14:26:44'),
('10f1f78dfd08df00211d5e89b48a5d7a6efef003596356aa6a6310cfc0b2606fae7a6c71c987db4e', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:41:34', '2020-10-19 14:41:34', '2021-10-19 16:41:34'),
('10f7f980bbc498c2160b9346f5f95b660a618956d978ab800b13a1172497b6766140716a51376884', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:50:11', '2021-01-01 14:50:11', '2022-01-01 15:50:11'),
('111557ea7b0e70291c347862a202d6d0841cce0821cc887d37e2c893c5335e91e7cfbec501367682', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:44:50', '2020-10-25 13:44:50', '2021-10-25 14:44:50'),
('112d031ea7c033c47d5975051158facb1810b83d56c92eb006e633aaf39c71b109605776bbd6d476', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:28:13', '2020-11-01 16:28:13', '2021-11-01 17:28:13'),
('112f8ef1ecd668e244e515eafde9043dd49e08b8d669b25957d54d2e68855e678e7ac4d83d4a992e', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:50:33', '2020-10-15 08:50:33', '2021-10-15 10:50:33'),
('1139984e6a76d8d62edc2a8cceae46b3874db31d61f760b9e09cbff41863a0fd7c37bf1db55a6026', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:49:53', '2020-10-20 08:49:53', '2021-10-20 10:49:53'),
('116256f0aef929b84d079fb1c1d831872a64e5ce22f889509fb29e5df8c24972b1edae0edd9c2721', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:38:23', '2020-11-19 12:38:23', '2021-11-19 13:38:23'),
('1190b9e72e3e56507430c4dce1a34a7a6a0ea7b142d35fec7d226fab368c61b036d90ff8efae3f02', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:18:58', '2020-10-23 09:18:58', '2021-10-23 11:18:58'),
('1198f106c45df1ebd585e15652aa4a38d3aaf0429311f3792b587b8407167fdea669023a9185f738', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:16:04', '2020-11-01 10:16:04', '2021-11-01 11:16:04'),
('11b1aca04406dcc15194f8464c5b0eabc25842bb67271d16680d190d4250ad8ab33293cd83ad413c', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:38:09', '2021-01-02 11:38:09', '2022-01-02 12:38:09'),
('11ca5359e8702402f56ce93d5a4c74f09405402295cd6e3eb1aacd7e4d440463187875311094be69', 27, 1, 'authToken', '[]', 0, '2020-12-06 13:00:38', '2020-12-06 13:00:38', '2021-12-06 14:00:38'),
('11d221f8e7f967fe120630f8c02eab1d3ac7d9578bdebe42801b87aaeeca900ab1df2cc96d7c7a15', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:33:45', '2020-10-17 10:33:45', '2021-10-17 12:33:45'),
('11d7e783067c6005c1f6f047129d818c8a4ab1998f92e5dc6566184d894abac6a4fb18d908a5dc28', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:43:18', '2021-01-28 09:43:18', '2022-01-28 10:43:18'),
('11e6a58660a59dcfce6340659b0d027595b632ce50601f41a746afbe48f4303f91bd644d46167e08', 27, 1, 'authToken', '[]', 0, '2021-01-25 16:49:54', '2021-01-25 16:49:54', '2022-01-25 17:49:54'),
('11e8a7276fc316b5e49bf3abf505d01602a5ae9e160c810ae3a822d86df32cd3beebe298aa522dce', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:38:37', '2021-02-07 13:38:37', '2022-02-07 14:38:37'),
('11ef8ecbe2fafa2bd98d41766749d5f903d2bcec1118373ddb896359db210f6682898737658e958a', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:33:08', '2020-12-29 10:33:08', '2021-12-29 11:33:08'),
('11f6fbabe4c4648642afa52b7998ce77dc4237e8e3648a0036891b91e65c3a26da1b09df6bfc4ae2', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:49:07', '2020-10-10 10:49:07', '2021-10-10 12:49:07'),
('120004c0e109d3dbfdc7b739047c6ec53d16657d4807acf3efa3b987925eede26c4bf91b4f2c3dfd', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:52:09', '2021-01-03 12:52:09', '2022-01-03 13:52:09'),
('1223636477cf49c1c247534e4921d61f0d9e091d7b7b60e1baad44db8e475d7d5f8ff5f1ee98ebb3', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:01:15', '2021-02-07 14:01:15', '2022-02-07 15:01:15'),
('12343f2114d8b6ff895e615802fc81ba2eab208fd6877a072acfa8e7d8365529b402db45cd1eb2f5', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:53:33', '2021-01-07 13:53:33', '2022-01-07 14:53:33');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1240b2d4b428f19bb90329e6f72c6da6c169db4c71595c0a209d3c53dde38c607c9a87d39d232324', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:10:20', '2020-09-27 10:10:20', '2021-09-27 12:10:20'),
('1247078322954dbdcafed59fac511ff85115d0ca4fb80ffd467d075a238219ed3119cbbcc5750fad', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:47:44', '2020-10-13 09:47:44', '2021-10-13 11:47:44'),
('124dae658906194762f2efcd3140295d9df3b2c09f28b05bdfb2eb40b76b878e77fbdbf37c7572a8', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:44:26', '2020-11-14 15:44:26', '2021-11-14 16:44:26'),
('124eec795d7543ee8be7a3df28be938fd3a76b8a73e48747fd11ac7b80599a549880facb757b2655', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:11:05', '2020-10-10 11:11:05', '2021-10-10 13:11:05'),
('1253893e434b01dcbdcf3fbfe3f6bbcc5004ae3e260cbbd6ae671ce9216f2707f285d356ad9ceaaf', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:12:01', '2020-11-01 14:12:01', '2021-11-01 15:12:01'),
('126ed9b952af3e65dfc13db85ccf00ef45af55f3cacdee24cf56de8fe69b7a089d13e7f8509744fb', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:47:32', '2020-10-31 16:47:32', '2021-10-31 17:47:32'),
('1279c6a513bfc1e2de5269674eb4e5ed393231be0d44f5b872f3e83060ac2cf03141c5f2d4c802f8', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:09:28', '2020-11-22 15:09:28', '2021-11-22 16:09:28'),
('12a203e878c1bdb29491a64dc0b256ae3eabd4fb01c844277bb45524a445f9dabc17a7d3ca0f1ef4', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:44:43', '2020-11-19 12:44:43', '2021-11-19 13:44:43'),
('12b1ef56e34e05fc967dfef8712fab07ba2577bd55d9f96a0bff02cc6033dcfeac426077a80e6cb5', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:56:11', '2020-10-19 12:56:11', '2021-10-19 14:56:11'),
('12db38d5c6cad55eed416956f0c02da7b3faf3ea86c3f88785aedf769b21efdff2075e0da19e37ac', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:27:27', '2020-11-15 13:27:27', '2021-11-15 14:27:27'),
('12e327521535d1ee6c4b2bbc709715e8bc7df36d449aafce55862e06b8166d21952852d5f6af0f94', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:48:21', '2020-11-12 08:48:21', '2021-11-12 09:48:21'),
('12fb9233e65f1995decedd824f62ada8ee855f7e009b90f4dae221b30765a73dfbef18e35a371c78', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:05:26', '2021-01-29 16:05:26', '2022-01-29 17:05:26'),
('1308ef7da98f7da23d74b0e07971ba41d40e0927626991aa82bd733036c054739f000e1dc8886030', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:07:14', '2021-01-09 15:07:14', '2022-01-09 16:07:14'),
('1374d12220c064bf41476ceddc17279ab7ca1ff0d9867d50deee0e823ff8dcb5a96071053c87f6f2', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:10:06', '2020-12-06 11:10:06', '2021-12-06 12:10:06'),
('13754f17fcb1dc4d9bc6c8b17483d642b9493dfec873daf63878924102bed04a02c686f669c44574', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:10:27', '2020-11-19 11:10:27', '2021-11-19 12:10:27'),
('1375d8776c7b44e40a7edf2b5f960387edb630c04414756089cd995cd383aa3b409e5ff68ebe82fd', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:36:37', '2020-11-19 12:36:37', '2021-11-19 13:36:37'),
('138135f820b97c84174a89ad1c6e3e0f8c9a8601e73f5c9bcab9856a4898e7e9daa2003f5ec24873', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:09:44', '2020-10-13 10:09:44', '2021-10-13 12:09:44'),
('13af5bf215d4a4c4d4ad9a5d3a026624ab386722adfdbca4da991952ae9f8812a59de3770c1476ac', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:09:33', '2020-11-01 14:09:33', '2021-11-01 15:09:33'),
('13b3ea7b82e626811713ebf4e828c7ecf5c3bc1332fec71ac86bef13a051c060d916b775f631e6e8', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:17:38', '2020-11-01 17:17:38', '2021-11-01 18:17:38'),
('13cb328a70f580584f27b8900263cba20ff85707bd95bb39c5274451cebb59b6d663e1649eafb536', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:19:35', '2020-10-29 11:19:35', '2021-10-29 12:19:35'),
('13cd3da7081cde49098bd8167a4434aded4d54bf788a286ff886d4d36280c2cd084ba0902197760d', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:24:40', '2020-10-25 12:24:40', '2021-10-25 13:24:40'),
('13d0b94ec5668338b8543cdbaccd5f29c8f64ed765b56289e480c8db3a15a08691f2932ab797049a', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:14:35', '2020-12-31 11:14:35', '2021-12-31 12:14:35'),
('13e728c67093a9656f4b072d519d5834e9aef01e2d77b2f1441c845c9e4f6184319a85247b74dcba', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:30:55', '2020-10-27 11:30:55', '2021-10-27 12:30:55'),
('13f106734e43926355035c6c6b73e6fe60bf1d06d854a5b97d1a6f266be9d7d6ca88baa16ee9783f', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:42:11', '2020-11-05 17:42:11', '2021-11-05 18:42:11'),
('1401fb5de83ea312a75e3b31d90e8cd61b9878f10950f5e0b03d6209993f3723c36b19c1dde6bead', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:33:26', '2020-10-13 08:33:26', '2021-10-13 10:33:26'),
('140aace1125c967582da84de19fafcc3e63ebf974cd4b52d81dbaa302ed2ded8e11bdf4302e552e8', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:32:41', '2020-12-31 16:32:41', '2021-12-31 17:32:41'),
('140ed0286a4439bf7c5d6df611308c367e8e0fbc4488a139cdc0a32ba1937ea8d8aa85079bc27f91', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:48:07', '2020-10-17 09:48:07', '2021-10-17 11:48:07'),
('1418a38fdf21e1aa60321560f5cbbb20ed24487493b8b7289c43154fdcbb685c0ac95b6fcd4f9678', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:00:57', '2020-11-19 12:00:57', '2021-11-19 13:00:57'),
('141a3c3c58e2ea8326a58eb0f5ddbfcdb4bd081f9731b76c6bf5a3cfe2cb9f23cb694fd07e0b6481', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:52:13', '2020-11-01 16:52:13', '2021-11-01 17:52:13'),
('1422a8d95509e34bed9957a052fe9fb610d45557c5fa226e1ffb7bd7b1c62684c0af14b876e35de5', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:51:37', '2020-10-15 10:51:37', '2021-10-15 12:51:37'),
('1427868d9c32cb0cd61bc66a6c728357114c67085cd9f2eae671ef35abcb699ee800117e142fb234', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:57:40', '2020-10-19 12:57:40', '2021-10-19 14:57:40'),
('143cc0097082e1765c749baaa37f25937be935042ab9da986614ed3a7d3e126681d99ad06a380695', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:54:58', '2020-10-17 09:54:58', '2021-10-17 11:54:58'),
('14462cbf961887c92d2440ac93eea0c669475d9b7d379ac9c8a258495c292e380d7bcbec7c290c96', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:37:29', '2021-01-30 11:37:29', '2022-01-30 12:37:29'),
('144c67d9eba7dc01039fd8f7480016ab3b123f78a420911ee47cf4d7643d27507214828cfcb6eec4', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:42:30', '2020-10-15 08:42:30', '2021-10-15 10:42:30'),
('14593b920c673ef7d50255d102117522a978d669d3a0500386232538dccff8a384ec7ba8342f5a7a', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:03:18', '2020-11-01 14:03:18', '2021-11-01 15:03:18'),
('146315ef4810a5274cbe76a53db7b836d3c2b6e7afa159c24935284a360e6db29d27dc933d2bd09f', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:43:35', '2020-10-03 11:43:35', '2021-10-03 13:43:35'),
('1471b5653260aef0d03cd2a8a2feb6fac776d6ddbbe55b60039ce3c2836eddd52b096e962c241ead', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:05:23', '2020-10-29 11:05:23', '2021-10-29 12:05:23'),
('1472e6ffc025cc5d6496f681aff5454d478866e801e15fb47b6d3c1745e603991022f420b05b8441', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:16:53', '2020-10-03 14:16:53', '2021-10-03 16:16:53'),
('148db7ba21474357c8ac64090b4444862cf77b136f3e50d24196c199f23c96d500ae815306d05d05', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:40:26', '2021-01-28 12:40:26', '2022-01-28 13:40:26'),
('14916b595f89d479799ba5c3d49403d04ab76fd777f9679a847b90efb1f4ebd3307109a689786f7a', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:37:32', '2020-11-05 14:37:32', '2021-11-05 15:37:32'),
('1496826a4df18c1a9184e2b372813b1f389ac9105d5080c979d9b731fe7d0827fb47ef4be1216eae', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:45:37', '2020-10-13 10:45:37', '2021-10-13 12:45:37'),
('149eb86a86ceebde1799414a63c3487c3efefca41c7afd4535a885adf88a85f81ef058ed25ac2626', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:04:28', '2021-01-07 12:04:28', '2022-01-07 13:04:28'),
('14b54412087f1bb8a124983ce2b45a49ebe526e160a79094ab792909f6489a26399b03851ec496cb', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:05:56', '2020-09-27 10:05:56', '2021-09-27 12:05:56'),
('14c7873208415139c1c6acca96665f7fa363f67b6354a185c56ff8558e094a3eeed568caf59b3e1e', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:17:28', '2020-11-14 16:17:28', '2021-11-14 17:17:28'),
('14d566d87271891713a1f99a4ef18ed3a82a5672614f2321dd002eab84da92eefc8addbcb2fa6c6e', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:07:28', '2020-10-27 10:07:28', '2021-10-27 11:07:28'),
('14e08b47bee999951790001f2abdd5c9c829fbd8370ead24bf27e9ac4fd8de255386e54da02c2a42', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:24:58', '2020-11-14 16:24:58', '2021-11-14 17:24:58'),
('14e8738e0b7a5501dbca0b9e852d14707a8d005ad407fe61269ccb3b3c665de9878cd664de98a6bc', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:51:14', '2020-10-17 09:51:14', '2021-10-17 11:51:14'),
('14ec900cd93402f1b7afd13a805d50b5f4c348c74a5b5ebbac844d8fc015161b4a535f14a33c1d93', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:00:12', '2020-10-20 09:00:12', '2021-10-20 11:00:12'),
('15087e3c195f7fec676cbc05bb8decdee640c330ffbabd657e1268b97a254f0828eafadfd8f68a0b', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:38:11', '2020-10-17 12:38:11', '2021-10-17 14:38:11'),
('1518171296bc52448892646ec9ce5cb832d38d438c33aeb4f378e75452a44691e84f9b62af9720e1', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:52:35', '2020-11-05 15:52:35', '2021-11-05 16:52:35'),
('151d8523933dd87d4928cf96b695c19d80fea79607061ae281568d0651c39b27cb9ed7829ed761e0', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:00:44', '2020-10-19 13:00:44', '2021-10-19 15:00:44'),
('15206d93b69990b0fccf07e912539bceec0e05130a5fcbe4a4b8462424f375f288c8d0dbec668842', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:36:48', '2020-10-30 09:36:48', '2021-10-30 10:36:48'),
('15428c52ce0697228bda5f8155948a9bc4b693442480f4f195d9e11ed5319322d41f60a51ca4f6a6', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:07:00', '2020-11-01 14:07:00', '2021-11-01 15:07:00'),
('15460bffe99646c677067343165cd3c10d57fcc4abdd786f557ef9f01ff6f785da2591d58542d1eb', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:43:38', '2020-11-14 15:43:38', '2021-11-14 16:43:38'),
('1596983a1aba72c2c4f2128e47b7b8b802a04a4c5607a811cf8fef21c6fdb6633ba7a19313deb236', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:41:27', '2020-12-31 14:41:27', '2021-12-31 15:41:27'),
('15a1d7665cfc629a616745978edf5b7d6368b7262320d2f5c9913051db28d03344d9a02b9bb01503', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:31:22', '2020-11-14 14:31:22', '2021-11-14 15:31:22'),
('15a39e273d8e69a0b6cae8189cf1f7132729826a894971332540c50c459cf430d0d1333e5903f2bd', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:27:23', '2020-10-17 10:27:23', '2021-10-17 12:27:23'),
('15a556def2152f3cea8a022c3eda6a5a2a2d51aa764a77a4e3a6b5f2cca136479c29419859c356d7', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:26:36', '2021-01-30 11:26:36', '2022-01-30 12:26:36'),
('15a9dab9c43010d8771623b7afae29b8bc33be159f3ab066417ae93a4d5d7e9f34bb0d23d58d805d', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:01:38', '2020-11-15 14:01:38', '2021-11-15 15:01:38'),
('15ab6a321cc642129d6707b16dece3f50d21766988e4dc0281475010e7444cec9a33286b7c71d99c', 27, 1, 'authToken', '[]', 0, '2020-12-29 13:28:50', '2020-12-29 13:28:50', '2021-12-29 14:28:50'),
('15b0e55f83c714258704d6de70096a75d8999c5553f4a3911231101b6f0856206cd9167307c4f1a4', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:42:42', '2020-10-17 09:42:42', '2021-10-17 11:42:42'),
('15d051f2a60035b5569d150270357c05b8790f5ce5ab21543fed1ec22865cf4893591ab0378ab495', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:41:57', '2020-11-12 10:41:57', '2021-11-12 11:41:57'),
('15f454f929e9c432f4ae101f63b82319b45d37b6764265bf8b85368bc2172e26beb2fb9f739266e8', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:55:20', '2020-10-15 11:55:20', '2021-10-15 13:55:20'),
('160278ae91d83a0e19c5021ed51bb590a76c6080506665f81f1a27383e58d1540a659e6d3f4927b2', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:34:54', '2020-10-27 10:34:54', '2021-10-27 11:34:54'),
('16027ccc943051218a918ace332bcf43b6bdbad78488c418d94af5546902d9f242900de7cb1cd346', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:04:23', '2021-01-01 12:04:23', '2022-01-01 13:04:23'),
('1608cf42d9e1816cc1091e7a619d433d9e569c5790e9fdf575813669753d49d7bad3430a143d7ab5', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:39:47', '2020-12-29 10:39:47', '2021-12-29 11:39:47'),
('161a5ec0eff27db0c9a6f9fc11430411ec57622cd08a39cc647df5fe7b7c817d75127d418c4f524d', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:33:14', '2020-12-29 10:33:14', '2021-12-29 11:33:14'),
('16241ed33f3f7922b5590627b6ddf6711ac3817567c2ae10272312d557ab679ca94116ae59cab547', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:52:46', '2020-10-08 15:52:46', '2021-10-08 17:52:46'),
('1625ef3ba21aefdb52a38edc98925227750b6d3927b6c6e872ae567f868f93eb11a178dd7d6ebad6', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:51:53', '2020-10-15 10:51:53', '2021-10-15 12:51:53'),
('16261dd289d099dfe4d5a2870bfe0a9edb2bc3b4f4af0a409b36de726327bb49036cea78ddbf5d28', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:09:48', '2020-10-18 09:09:48', '2021-10-18 11:09:48'),
('162aa289e4f7368222d985943e3477bfd5e14234525ae182d3a8efac54ec06c04fdd0f2f61a34129', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:31:59', '2020-10-19 14:31:59', '2021-10-19 16:31:59'),
('164e978cd28c8becbbb08ad6240d6e5c4ba9fb81e1d6e550e5681310768a5d36897402be3c6fbc56', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:14:36', '2020-10-10 10:14:36', '2021-10-10 12:14:36'),
('165460325913d85a79c5724b09450056c2c2b84b87c0823c2a151e07bff7cebcbc0f84edcf0f1962', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:54:27', '2020-10-19 12:54:27', '2021-10-19 14:54:27'),
('1692fe688c033bae783f2195042e6b4fd6bd1d329e4c63f41857af2194923d8b04371793969eae38', 19, 1, 'authToken', '[]', 0, '2020-09-26 08:39:58', '2020-09-26 08:39:58', '2021-09-26 10:39:58'),
('169d02110e3ac8003b53411ea018fb9b207c718bab35aa2b044e9c8b36fc5b28da1607cbecab1ea2', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:53:23', '2021-01-06 13:53:23', '2022-01-06 14:53:23'),
('16aae047aecc91eae536f439ef02e6573e8a0da21a44db2430b2c9757f94872c0c0bf5652b08d91e', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:42:41', '2020-11-01 10:42:41', '2021-11-01 11:42:41'),
('16baecd9fae77e95afbcc6c4881fe19f00bc6ba31d3d085d8236c2afdcdc74ac6c120d3db3497120', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:41:58', '2020-10-13 09:41:58', '2021-10-13 11:41:58'),
('16c87a73ac3c5d0ead2b4f8de25d5d87f46042ef35c5524eea117a35f889f9fb3248cfadd411c8e5', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:15:00', '2020-11-05 15:15:00', '2021-11-05 16:15:00'),
('16cd04e0a91a0eaef10eb7dec90b5738682892a66a9cdeba9a754902a66655fa377d62ce371df2a5', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:52:26', '2020-10-23 12:52:26', '2021-10-23 14:52:26'),
('16d8f1946b79ed5d7cc01fc44b7a81f137ad53494a0e68f6479823ea5668d66447235f004e15daf9', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:47:20', '2020-11-22 12:47:20', '2021-11-22 13:47:20'),
('16ea316436abd2101bd3622988327e85987d6bc59e042453dec0f98817e46669a4b57216c8c15540', 27, 1, 'authToken', '[]', 0, '2020-11-05 13:49:18', '2020-11-05 13:49:18', '2021-11-05 14:49:18'),
('16ef51df9cb0c53af2280c01a9b703229c492de2f89fd83e979834ea0198a6c2d0996c26c8cdf078', 27, 1, 'authToken', '[]', 0, '2021-01-29 10:57:10', '2021-01-29 10:57:10', '2022-01-29 11:57:10'),
('16f1655b27d5294bf14de196a84aa66f1599f69676746ab244a6658f7ab82f1624834c1ebff91397', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:08:10', '2020-10-03 13:08:10', '2021-10-03 15:08:10'),
('16f32c2f731c39e302cc22718b45b4ad23a93441e8a829b55ce33020d2a5182e184a96f62ab5d32b', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:07:33', '2020-09-27 10:07:33', '2021-09-27 12:07:33'),
('172991b46afb4688fc5a2aee3cf635abf8d45f1d552c53cb33af00d6826431692c822c0f9d4d5f2f', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:57:47', '2021-01-06 18:57:47', '2022-01-06 19:57:47'),
('17452e4ac8e696472a6cb3d5a75be9187e1a31d20e37c687c12dc11d9c3a2f29fb37d8f660027cbc', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:03:29', '2020-11-19 12:03:29', '2021-11-19 13:03:29'),
('174e0f12dad1f4a1a414101dfd9bfea9f745b0652a512d844870c50eac15943f56940b7c2f9c0c40', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:26:29', '2020-11-01 12:26:29', '2021-11-01 13:26:29'),
('17592d522c1466082f9169d13034e1e5b331656cd1b414d6ea88333d99cafbe5a3ab59db1a119c9b', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:16:23', '2020-11-19 12:16:23', '2021-11-19 13:16:23'),
('1781de77903ede48d0a5fa406da56f3ead895bafc934d28388b633c8dbe6501b1d25ddfb42f5d03d', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:48:21', '2020-11-22 15:48:21', '2021-11-22 16:48:21'),
('17cde9d2b3fdec6b8fca1de47e394797fdc85e3e6db8e56931d5c21a70b80284f59036b9acd88866', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:47:23', '2020-12-06 18:47:23', '2021-12-06 19:47:23'),
('17d5152a246af76cc4108df67645a570bbd427b84064a9b4c4d7e6276bdff1b815136e458d0d5289', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:11:36', '2020-11-12 10:11:36', '2021-11-12 11:11:36'),
('17ddbe7b420c7386f17d390278eeb2f7d1ace420e2a24c176a3bf1f2ceb455084b686ccac9bb218b', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:34:13', '2021-02-07 14:34:13', '2022-02-07 15:34:13'),
('17df47782d738e614fc26fd1312f90c2513d0aa4285c430622560768031a1c8fe4c4cf156fe1a8c8', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:13:31', '2020-10-30 09:13:31', '2021-10-30 10:13:31'),
('17f56a0d0b39fe717e87969cb1123a2dbde0e03e471c4c1d6b9547c8148fa7857395293040186b45', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:21:30', '2020-11-01 16:21:30', '2021-11-01 17:21:30'),
('17f750697bf9082538fea4f998c6b9bbf37785dabfe0f73857e6332b8747f29b9c8aed8bfec254d8', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:30:47', '2020-10-17 12:30:47', '2021-10-17 14:30:47'),
('182b250e600caffa4c5727747a7a7e7a0cc3474fe8f0f77d19c0af2816a9e0e2e0bf669a0caf6b1d', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:36:20', '2020-10-10 10:36:20', '2021-10-10 12:36:20'),
('1837ff3c16b338c1e5d6c06b618c2ccf22b58774eba1347f645fad13f033f4d94e28d85dc7fad26d', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:16:10', '2020-10-10 11:16:10', '2021-10-10 13:16:10'),
('1850a719e6b74ea7c0f991e351ea9da75b03f77e43346616f3b514efced8770072287b81525af9df', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:24:48', '2020-10-30 09:24:48', '2021-10-30 10:24:48'),
('185dbd26c61af3f01dc2a4289b33af5793dff2818f1b580f4887d81aa2935ef1d686d41bf0ad90a8', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:45:37', '2020-10-23 12:45:37', '2021-10-23 14:45:37'),
('185e8eb78c8fc74b43790358a4edc47570343d9ecd0a4035ae2d68e7067e92f87dc1220a43ec763a', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:42:00', '2020-10-28 17:42:00', '2021-10-28 18:42:00'),
('186a9d5f59234f6bdb44e8239c39b6bccd47fa3286bd91561378fb5f3e70540073d330e42eef14e1', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:56:43', '2021-01-28 12:56:43', '2022-01-28 13:56:43'),
('187d891d2770ddfb3fa18f05b998ce8cf90698fdcda42ad19eabc2e8ffccb4850755d841918f9d4c', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:32:28', '2021-01-28 08:32:28', '2022-01-28 09:32:28'),
('1882ed693a1cf3aaa502df86019b135dbc8f9b0d638edfcdb223a6535e86796fff2ea7f4d402c3a1', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:25:04', '2021-01-29 16:25:04', '2022-01-29 17:25:04'),
('1892589ccc37f3113558e1856a57eaf8e7fabff1dbe463d8ae547bf1072e684227fd2ad60ceffe91', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:44:46', '2020-10-25 14:44:46', '2021-10-25 15:44:46'),
('189a263f1852df31753da17b53723ad82cded8711c69ec6c3085b421cd1a6a65693f52b32940846b', 27, 1, 'authToken', '[]', 0, '2020-12-29 13:27:59', '2020-12-29 13:27:59', '2021-12-29 14:27:59'),
('18a1c6e2a82b3b623521067afadb6b8fe200fe8531d14d287a6866222c46ac69c13795886735aea6', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:30:52', '2020-10-31 09:30:52', '2021-10-31 10:30:52'),
('18a814f45af1fb4d110c416c1748c989331c5c2c74c781d1c0ca6be215a357914a749a85dcfdd41b', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:50:35', '2020-10-23 12:50:35', '2021-10-23 14:50:35'),
('18c4133d268194c26b2918ec93b7d863b11d150dc291e8f177e7d506b96735299e3a70ec0ec29a64', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:11:01', '2020-10-18 09:11:01', '2021-10-18 11:11:01'),
('18c9690d893293ab18fb9e0f72da86af1c17951270a7126b6e14b255e1409be994b766a9041c961a', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:54:37', '2020-10-31 14:54:37', '2021-10-31 15:54:37'),
('18e3360c787481eaa1c1c1166c46f265645af7281b89a6fe798e7a47ef8a44ab293cdf4510f22c56', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:41:18', '2020-10-13 10:41:18', '2021-10-13 12:41:18'),
('18ea30aa20948ca53eeae2eb2ee128e02e3d3123aaf4ffcb7536f9ae78d25a45034c7c869a321ff7', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:05:18', '2020-10-18 12:05:18', '2021-10-18 14:05:18'),
('18eba25a05124635c2076c68edbacc5632ba0a3bbea3263fff39847de9a25777c154b359fbde0926', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:45:28', '2020-11-12 13:45:28', '2021-11-12 14:45:28'),
('19051bc038c9076c3e3a49fa020d8b7cff686027eef17c90e196f8e7b403839129177a1d497f0761', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:00:25', '2020-10-18 10:00:25', '2021-10-18 12:00:25'),
('191bafa616b7a0ac452d36dd0883e18a8849aae01b4b776a7fecb6e1b8755ad32711a8d5850b63e4', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:38:57', '2020-10-31 14:38:57', '2021-10-31 15:38:57'),
('192a31d7d12b4f54fbd00a8239f8a61748b9af93e7c59e7608bdc502e96a898af9bb4797b57de174', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:05:43', '2021-01-07 11:05:43', '2022-01-07 12:05:43'),
('193eb59dcebf81035354c3a3ab0c6c15c54a4a3ac5baa7125132c696a1dbfb9f1876973994c7e4cb', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:27:09', '2020-12-28 13:27:09', '2021-12-28 14:27:09'),
('198aeddba09db2e575ef465eb2dc88e88c56e457a11bb5285bb65c333703e2b3142859ab95a7654a', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:21:04', '2021-01-03 14:21:04', '2022-01-03 15:21:04'),
('19c7674b7ee3889ce672ff9f2093f0eca67bda38f393564e9bbb54edc79ea7b1a0e06dc0d867b610', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:22:22', '2020-10-15 11:22:22', '2021-10-15 13:22:22'),
('19cb02a0a78e588c5fffcc2ba760b09a4c49b8a3883eeee4de6525edc6054eace7840971af44bb7f', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:56:18', '2020-10-03 11:56:18', '2021-10-03 13:56:18'),
('19e200925e7ddbf7e19aab5637edc379b20e083c4a21743dc372cb1c80109932219694e9dc1f7686', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:04:14', '2020-10-18 10:04:14', '2021-10-18 12:04:14'),
('1a0f39f1843fca31b4cbdb6601c00cfc085ee2eb026e7368977f29bdbf1722cfa6cf8357669fe69f', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:57:02', '2020-11-01 16:57:02', '2021-11-01 17:57:02'),
('1a45bdb3f4ef0f89217ddd7eb610d8b05c1f6090f1cc943c2762082664122bdedee3d453629cd7c5', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:31:06', '2021-01-28 09:31:06', '2022-01-28 10:31:06'),
('1a5bd570191dcd5a8057e2c9e6e2ec5cb3dcb7871070d36a1da6a1e5d0f6e098ab0872a0b1a128cb', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:31:03', '2020-11-14 12:31:03', '2021-11-14 13:31:03'),
('1a5ca33f8d0091fabe6f96a8ba33b1c5240db1b2c30e15118acc178a6ca02a04239694ca920d5767', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:34:14', '2020-12-28 13:34:14', '2021-12-28 14:34:14'),
('1a637035c2f20b959c863995a2c4ab5e2bb4208e795bf2225bd209ae1581e21185c903854f2f6a92', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:46:40', '2020-11-14 12:46:40', '2021-11-14 13:46:40'),
('1a99739dfbdea4f4341f29ba33b7a2a7eab17be338b72847d82bd608f73d29539929cc0cc91e9a90', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:47:31', '2020-10-13 09:47:31', '2021-10-13 11:47:31'),
('1aaf9f02b015035be0eda07593cc554e037f27920977b462f837bcf2349b6241efecaf12a5320525', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:55:19', '2021-01-28 12:55:19', '2022-01-28 13:55:19'),
('1abc2f905b5d19f36b83b69e6d5a0f1858557410db2680ca41c292ad39404005274ca97311d2ba88', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:07:44', '2020-10-10 13:07:44', '2021-10-10 15:07:44'),
('1ac696ace0ee18fda34f84b6533e34fddc3f75766d425db5c8be74cf01eb47300e34415ed75135dc', 36, 1, 'authToken', '[]', 0, '2020-10-29 09:19:57', '2020-10-29 09:19:57', '2021-10-29 10:19:57'),
('1acd6fd7728ae867f8871ff1ccbc6c69c6ee32c441de1318e2d9512b16bb933dcee94b9356bccac6', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:54:54', '2020-12-31 11:54:54', '2021-12-31 12:54:54'),
('1b158267e618a24d8b6e21e6b5163a1fb1e5e3798ac5668bb972bcb72fabdb87f5af0262ed146f0e', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:26:14', '2020-10-11 10:26:14', '2021-10-11 12:26:14'),
('1b3313c8cbf1dad68a581311f10dfde081d0b02b1d97f11206645d56038b5577617fbb52db0378c9', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:32:51', '2020-10-10 11:32:51', '2021-10-10 13:32:51'),
('1b347e7bfae678243abf9796f1579f2d8c97376133cfc7c02e6db151c818b75577448eec0daefa78', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:16:26', '2020-11-05 16:16:26', '2021-11-05 17:16:26'),
('1b470d46f34c80f24c055fa9127fd4119efce6e4e2593fa114c2c6f9f3afddab077342ac3cd02496', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:18:59', '2021-01-02 11:18:59', '2022-01-02 12:18:59'),
('1b73b94bc6b8cb49c987f6519c3a9213f3203567158999940c09e1a2ffc451251a5061f36814323f', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:44:46', '2021-01-07 14:44:46', '2022-01-07 15:44:46'),
('1b784e487a852dbcf434b856dcb92610f716ccf01bcd82adb0651aece01a7c942da97a7a41011c8a', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:04:56', '2021-01-07 16:04:56', '2022-01-07 17:04:56'),
('1b8282b9594e4724fe20ac20535b39bd2726d890135d407e19e063601f2534aa5050190a93d7ec11', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:56:23', '2021-01-07 12:56:23', '2022-01-07 13:56:23'),
('1b89b2bce01a30ea82e72469cba04385d31a3e0410c86c39fd4f013d7a4ab0ba6d348f128191a0df', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:38:45', '2020-11-01 16:38:45', '2021-11-01 17:38:45'),
('1b9104cf36f67f06fe71f6ae71d79f047e26c1190b490f66c1f8fb5f41c62311a6ea800f143e82cd', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:35:36', '2020-10-18 08:35:36', '2021-10-18 10:35:36'),
('1b91ef29c6274894aaa08a884a5b3825242d65a8e69a746c6b6e96c73131cadc6fc141cc3f4bafa5', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:27:33', '2020-10-29 09:27:33', '2021-10-29 10:27:33'),
('1bf9cf3235263c41955a178edc269e08bc340567cb1d52c654c1e0d633db7961f377c97ace2c00d2', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:24:02', '2020-10-13 10:24:02', '2021-10-13 12:24:02'),
('1bfcb336f3f3d02e0814d2610f6286e25b10dd73b453cd606e7354bccc5cdf4607564c25d514276d', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:20:36', '2020-12-28 11:20:36', '2021-12-28 12:20:36'),
('1c0597b343ebdd7301cbda6a8a632d4ab561f6da07d7e40660091c21b9ac40cad386c92b034db376', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:36:46', '2020-11-19 11:36:46', '2021-11-19 12:36:46'),
('1c202fa5395f45b6434545c8e6d2be1e04d07a5d4e3ef19490c4f6e2822bd1689f3f690ec8f3a11c', 27, 1, 'authToken', '[]', 0, '2021-01-30 14:22:18', '2021-01-30 14:22:18', '2022-01-30 15:22:18'),
('1c291dc17df54b6be345485ecb313e40f19526e918c97117a337ebfac8527fe87cde05fe5e4b1462', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:52:05', '2020-10-03 13:52:05', '2021-10-03 15:52:05'),
('1c355121a949d3b04055cce29f1be5e0928ba105297fb237c2fbd5e3d3de305c19f7a0db109ca1cc', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:26:28', '2020-10-25 12:26:28', '2021-10-25 13:26:28'),
('1c4f10ed1030fd5e3bd5f595629db2679b3a6e2f05a4e7ff455f4453955bd5b940c97cccf7482973', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:13:52', '2020-11-01 13:13:52', '2021-11-01 14:13:52'),
('1c63ec47a8419726045cb79fc6f68e664a95959903bebec204558d36b193f893c64f9a2a6050a87c', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:49:04', '2020-10-15 10:49:04', '2021-10-15 12:49:04'),
('1c71ffb869c463c97d3af49a75b34a68aa42c1d6d7b50f992c8cbb068ce865e4955590cd410d8d9e', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:02:06', '2020-12-31 14:02:06', '2021-12-31 15:02:06'),
('1ca1b7862d2c52cb6e711b99a9ecad9116403162cc6ab339b1ced1e40641fe9b883a392f30ac3692', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:29:33', '2021-01-26 17:29:33', '2022-01-26 18:29:33'),
('1cb8dd9d85968b8e0f36953d8013ed37b7b446ffd6ac945b16fc79536f96c2d833abd5359abe1ec9', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:16:07', '2021-03-25 18:16:07', '2022-03-25 19:16:07'),
('1cba6f94caefb8ae548f71fd22e37d142358f0dbfe19b6e0b317e40c8da2b7f54e8fd1e28ffd959a', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:34:22', '2020-10-31 11:34:22', '2021-10-31 12:34:22'),
('1d081e28cc1f682688a314f2df2cb95c7e2ee98ea5f941a69832ac06941ae0322de76b8d88d515e8', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:07:35', '2021-02-07 14:07:35', '2022-02-07 15:07:35'),
('1d11548f3abe764de7ae7ae76af276d35d0196a6d5c24623ad4aaf0d14a6254346f234c317f231b3', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:00:54', '2020-10-23 10:00:54', '2021-10-23 12:00:54'),
('1d208476ac8593cee89fc71a3729c8f5057ee1c8142caa2183679601ec3a74cd327ba584908ad905', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:05:50', '2021-01-29 16:05:50', '2022-01-29 17:05:50'),
('1d2365f522fa69a2e86b1da35cefc3d024c57f9a4ab3309f96a26a3371d5fadc8d14f8136683a482', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:04:51', '2021-01-07 12:04:51', '2022-01-07 13:04:51'),
('1d56e5180c2b7ebb5af79881aab9018812f429a6154fcdb5cd4415611f5176164c151d0effec8e26', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:11:37', '2021-02-07 13:11:37', '2022-02-07 14:11:37'),
('1d6ecbe9fb692b788703cccf0bc3d26d9c9dfdce01d7f819d3f7e54567b4d865d3003c044353f66b', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:27:10', '2020-12-04 12:27:10', '2021-12-04 13:27:10'),
('1d6fd7947175e112915aa0130854631c84844031cf3f5856e9a32a00533d76703d76ac1bf97e61d9', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:17:56', '2020-11-22 15:17:56', '2021-11-22 16:17:56'),
('1d735ade06c51e5e72344262285c7bfb6582e2f8fe228a4c46f58e4410882e6c7c5dd20a150ab466', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:36:23', '2020-10-30 09:36:23', '2021-10-30 10:36:23'),
('1d9bf81329467a497c09ba06f76d24703b1760a1242821fd7232a39cf5f08174632b7aeefd9f13f0', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:32:42', '2020-11-19 12:32:42', '2021-11-19 13:32:42'),
('1da52d19d466be1b4633a39111b95d5bcfe24e90c06e6326d314081223eb05d0b2267ffebb70dabe', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:18:56', '2021-01-01 12:18:56', '2022-01-01 13:18:56'),
('1dad0658f9e5c1305979efbced6a9366a53ff3c51fa6bf132baa568e0d20cdbd3dc781073df370d8', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:42:20', '2020-12-28 11:42:20', '2021-12-28 12:42:20'),
('1dadad03b05169343e148d0e091bf49669f7c32b9b7e822c309c19c48b904cb2e05a4868dc813b01', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:37:01', '2021-01-07 14:37:01', '2022-01-07 15:37:01'),
('1db37c46dd21cd1ae1ebc1d63498faf78148d066cbed0580303a682418e16ce7fcf9b58f23ecfb88', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:34:57', '2021-01-01 12:34:57', '2022-01-01 13:34:57'),
('1dbd4d651702e9fb321279a4a33df8800318cb8dc8133477e3bc90512423c971066267af770adc37', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:22:56', '2020-11-19 12:22:56', '2021-11-19 13:22:56'),
('1dc68bb643d85715206d286290a2b7bf1fd1aae317982d7f25dd186f6226dc42a04c696c38bd3acb', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:50:50', '2020-10-23 11:50:50', '2021-10-23 13:50:50'),
('1dfd3cedaaeaf1c4976bb7398791f62e293fa6a2cabf37ccef9d4e8649218e7a0e17f176b4a9dfc2', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:33:23', '2020-10-18 09:33:23', '2021-10-18 11:33:23'),
('1e1d7486a55302ef2f0768007e41933fcacfa97d44ef128bc40f224b14e5bb5b1f881c4f339f7722', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:00:15', '2020-10-23 15:00:15', '2021-10-23 17:00:15'),
('1e25e57cf77e20593661e9157413cb8ab381ad2f782d0dc6a24ab2901838c1d9a4fbe492570200bf', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:24:52', '2020-10-18 10:24:52', '2021-10-18 12:24:52'),
('1e27c6dbf0d027954f1e552c7f9498eb8dd86426dd2f5a8b86c9f3c04ff17aaf0e72eb55f95d15df', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:10:49', '2021-03-27 13:10:49', '2022-03-27 14:10:49'),
('1e358970500e57826ea3e7e6e9e71b6c92df45986c278cb7193d1c447a90e736d0cde68f92f2ccb4', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:17:24', '2021-01-10 12:17:24', '2022-01-10 13:17:24'),
('1e37c86e9a7c04ce77fe0a7d6f24762c2925675481d7823aaa33d9c31aa26d459b5dc9c6563d2043', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:04:31', '2021-01-27 17:04:31', '2022-01-27 18:04:31'),
('1e38cb37809e59ad2c6dc6ad056135309cad74ab9b30e3eed8dcae549216c332feb178f8a3816c01', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:03:49', '2021-01-07 14:03:49', '2022-01-07 15:03:49'),
('1e41d6eba61f7c5825e21c015d648903ec92ccf0468eaed3f6865fb7749b5e70b3c662dd07c10330', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:51:43', '2020-10-17 13:51:43', '2021-10-17 15:51:43'),
('1e4c84bb4661d836bb62e5fb4e2069b8b3f4075c1bbba42853d9795c1d60e8507fa82dd5177ee44d', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:07:42', '2020-10-31 17:07:42', '2021-10-31 18:07:42'),
('1e61a67782e3ef581fb903a6612dc1afb40cb94a6893db744aaeeca75230197e49c0819228b8bb92', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:34:52', '2020-10-17 12:34:52', '2021-10-17 14:34:52'),
('1e665b3152762471bca6978b33880db4e174e67404612d7d178255b14837fd9e26b1d65a6018e49c', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:57:41', '2020-10-17 12:57:41', '2021-10-17 14:57:41'),
('1e6916243ec72a20ac80cff963b0b68e853140d5f5fde6377982bae6807b31ff59137b1bb7dd4738', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:51:34', '2020-12-31 13:51:34', '2021-12-31 14:51:34'),
('1e9d28ec6b86b11267d4c305dea4aa5d283917a5756825120664842232a344b2bb0787a40c7ca107', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:24:09', '2020-11-01 16:24:09', '2021-11-01 17:24:09'),
('1e9f324e8fcfa511622a9db8167e6defe1419b23124613aea956bc5b2e051b677b4d1204681fd08d', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:02:35', '2020-10-05 17:02:35', '2021-10-05 19:02:35'),
('1eb2848ba076026429b599a38a8f0ffeba2ddb1ffb627aaa8516ab01b14b30271c88fbda386e35c6', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:07:51', '2020-10-19 12:07:51', '2021-10-19 14:07:51'),
('1ebcc9dec4896af99a822f53663aceea3abe6b3f62d2d81f66aa2b84160bfde279805ed32c0b2e3b', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:08:53', '2021-01-30 12:08:53', '2022-01-30 13:08:53'),
('1ec2becabf34a9c02d7403ff67ac972e5569557a96d2f7adf7807051d4af656ef99ffc5d8393d83c', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:57:32', '2021-01-24 11:57:32', '2022-01-24 12:57:32'),
('1ecebc0335dd05c92c1fcfd7c5e0a4a6879a6ef79871494ae9d72a1a67d4da78b177f560d0db82d9', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:34:44', '2020-10-28 17:34:44', '2021-10-28 18:34:44'),
('1ee60f31fd7b0aee1b484934551e8e2a4bc54e5b314ac431db91fbbe24be5ebe9a6c28609da5279c', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:27:09', '2020-12-31 14:27:09', '2021-12-31 15:27:09'),
('1ee898c22f15e81700ecf9b7d3bd49947cc370c97adaba8aec614cd43b7d160eb26fa25e2ab19426', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:21:36', '2020-11-22 13:21:36', '2021-11-22 14:21:36'),
('1f05a49f11435aeab4d7f763f4a009434d861d6f755c19f67c4d1c0efbb4dfcd27eea8b8a73ea7ce', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:42:34', '2020-11-19 12:42:34', '2021-11-19 13:42:34'),
('1f0e5cb6e0456721b56a834a7df42a551291a4fd146c43af900650eb6bd71d5bfe73c00cc9d00e06', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:55:11', '2020-10-10 10:55:11', '2021-10-10 12:55:11'),
('1f1032846d5a93373e5fa72eff767079ab102a875ac3d732e774e97e41fca5c259dfdd7a34787be6', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:36:29', '2020-11-19 12:36:29', '2021-11-19 13:36:29'),
('1f456bdc634e0771ca42ba426c1aefeb0db530c99292a0cdc1832234ad14b4f9505c29f66c47edc2', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:02:19', '2020-10-31 11:02:19', '2021-10-31 12:02:19'),
('1f4d689b9afd6f2b794d24e3faae6aa180d25f0f51da0b3820a64776d6aa8c92838fa002eab2eb69', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:01:14', '2020-10-20 09:01:14', '2021-10-20 11:01:14'),
('1f7737ec0c17d8cba5d3eeb42879fdb5b8073e49d5c939a83e60f50c4c85bc8d47da16f4cf2c40d8', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:31:35', '2021-01-06 12:31:35', '2022-01-06 13:31:35'),
('1f7dcd82e8cd86bf387712be6f4557d23ccacee5df01294d71437242b6faf36d8ca99822efc01e65', 27, 1, 'authToken', '[]', 0, '2021-01-20 17:01:32', '2021-01-20 17:01:32', '2022-01-20 18:01:32'),
('1f7f1615827cd1792073d09e002a356d50cd88354ce540442bf73a4fb4fb12a9d65829acdacede22', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:41:06', '2020-10-28 17:41:06', '2021-10-28 18:41:06'),
('1fa0f54f54b40d9bf7a13d51cc53f72bb0b1a5e3bd0989b1d1d0f1a5c916af72ec77f82ca72f2578', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:13:55', '2021-01-02 11:13:55', '2022-01-02 12:13:55'),
('1fc83916e8839f3dba0485e0aa4a3b41ada477cceab2dfffb40f251e96dcbb7eb7ff66ae3fd11915', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:26:38', '2021-03-27 12:26:38', '2022-03-27 13:26:38'),
('1fcad2bed690512e0b241df128074fc56280a37faa7245b4c03527643c38b340caefdb11ee6b34c5', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:50:26', '2020-11-22 15:50:26', '2021-11-22 16:50:26'),
('1fea46c5138b493b4061cda7587019ee9e880ebf81453f17826b6ec0c3814ace45ceb9624745e8d0', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:26:34', '2020-11-14 12:26:34', '2021-11-14 13:26:34'),
('2009b26f0930950bacfa19c7a1e6cad26791f308ae7898b34f0710d34ec8bba9b17d43bc955b1952', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:49:03', '2020-11-19 12:49:03', '2021-11-19 13:49:03'),
('200b25068df24db0f7eebd402daf8461220eb30a7fe51cc5f211b1ee936b7b24143a69152482ab62', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:34:10', '2020-10-13 09:34:10', '2021-10-13 11:34:10'),
('2015f7c608091a2729d00a1a2b67052730f63b4494c5fcb8a8eb2d88200cd2008daebe7efc1e0167', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:39:26', '2021-03-25 18:39:26', '2022-03-25 19:39:26'),
('20163e43109e860e853a781f993066ee2f936bf56946afa45dfc6226a2348a8df13884172f3fbcbb', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:02:46', '2021-01-07 16:02:46', '2022-01-07 17:02:46'),
('201ed63e72d694b8e83145c1cfba8921fa41d9cca0da50ca6659f435b0b6ab8a0831e21a67d3f03e', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:50:50', '2020-11-19 12:50:50', '2021-11-19 13:50:50'),
('202320b641eac24ac1e3dccefb7664d56f82b3a47f444c3878e065c3e8c64b0db93509802f2ca21a', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:24:31', '2020-10-10 11:24:31', '2021-10-10 13:24:31'),
('202e41c48692a98f0e01f96aba3a596db9623ba43b385ecfb504a602c543012aff503e536fe3dbc6', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:43:30', '2020-11-14 12:43:30', '2021-11-14 13:43:30'),
('2030764669c5de0e124d7619f8cc311c1019e9cebe8830ba647362dc9e184a6182bd38df532d65b9', 27, 1, 'authToken', '[]', 0, '2021-01-24 10:58:14', '2021-01-24 10:58:14', '2022-01-24 11:58:14'),
('203908cedcbc52c27c10105836888d5eca7e96c6cb061152537c0bc3f7372cddcb11044a3fe6e36f', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:20:37', '2020-10-31 09:20:37', '2021-10-31 10:20:37'),
('203ddf2b61ff2cd7d60d39237348fad6116fc2102913212f08bab6c6e18a696577bd97b462437bae', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:08:51', '2021-01-06 14:08:51', '2022-01-06 15:08:51'),
('204807b93abe4524e6069fcd147e8e8c9c22094a89794d8049d4da06a1a6c0d3bdb5be9ff21e47b2', 27, 1, 'authToken', '[]', 0, '2021-01-01 15:10:19', '2021-01-01 15:10:19', '2022-01-01 16:10:19'),
('204fe24aec9abb22d9b57b07f2daa6272a377ecb4c0dcda2935e96dd328febb2e1b6322baaa525a5', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:04:10', '2021-01-29 16:04:10', '2022-01-29 17:04:10'),
('205bf99e5efb056a8b7ff1ed9aa2ce1c802ddebd791faa12a88f12d9a867d7facf86c540f2947214', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:21:32', '2020-10-11 10:21:32', '2021-10-11 12:21:32'),
('206c4f0d634abbd33162d1d4042a3910b1fc30ce5daeb2545ee10d4d4887e4149d72efed55d89282', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:11:33', '2020-10-18 08:11:33', '2021-10-18 10:11:33'),
('2085f2958cbc27f581276507267a5905b2ee6b1991fdde383b5a64f0d05fa3fb8669a1a9971bfac7', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:49:13', '2020-11-19 12:49:13', '2021-11-19 13:49:13'),
('2088d7f610a40fe4c2d0a8ba61f0777644bfeb47e10dc3f629ba78cd86c0b974b4e140a7abf800af', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:57:20', '2021-01-29 15:57:20', '2022-01-29 16:57:20'),
('208adaa533824d350db6ecf691580eaa760c7a9e181246281d50daf0b454a9cd58257cd6b4459c85', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:20:37', '2020-11-22 13:20:37', '2021-11-22 14:20:37'),
('208bf882e883b047e6e0a3d3ce350da273efd6d57be1d6a3ec3074d825c10c1cf5827ca437ea3817', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:39:29', '2020-10-31 14:39:29', '2021-10-31 15:39:29'),
('209091f7c5a24953cb3b48b359f808c60474b523dcc2f7c694c6384fe59154a4c5a09725f8cf1397', 27, 1, 'authToken', '[]', 0, '2021-01-29 17:01:17', '2021-01-29 17:01:17', '2022-01-29 18:01:17'),
('209828fc70bf59db043ddd5a449ca017674055732cf30b11fb999cc6afeba5aa1caf3f85326e35df', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:03:41', '2020-10-11 10:03:41', '2021-10-11 12:03:41'),
('209c1dd3ccf2c07095ba11bf877a21d3cd12577f4778c34217e7e3d78ff3ad53b02d0c1172ffe4d6', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:11:01', '2020-10-25 12:11:01', '2021-10-25 13:11:01'),
('20b775c24157583a4c0cc8ef046ffd80d274646245dcd73ba3d6fce51573592683b9d30edba3a7fa', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:54:34', '2020-10-15 11:54:34', '2021-10-15 13:54:34'),
('20bb1931555f512ec50a8d48153440430e7b90de8e3474b175d755ff2fd5289b6854d1bc22b1dace', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:41:09', '2020-10-13 10:41:09', '2021-10-13 12:41:09'),
('20bf3bd7c0a63be4b3b071c129055dd81a8a2b540cfc07861a3f596ea7b371dd5c0379d96c7fe421', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:58:58', '2020-11-11 16:58:58', '2021-11-11 17:58:58'),
('20ea73780d51b1d4de275ca4ae50f2e7f1092a676f2f5b5894065f7a499631cb282895554748ff01', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:14:37', '2020-11-14 14:14:37', '2021-11-14 15:14:37'),
('21143be315886843e4c0c5ee060b5bb58c09667f40e13471320f5463653d8dd72b45be3001bf96e0', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:09:56', '2021-01-09 14:09:56', '2022-01-09 15:09:56'),
('211944e6b8169e0355afa3ff44b6e66bcac14cc33621f16203535bab25f055e769c40f36245efa8b', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:35:05', '2020-10-15 12:35:05', '2021-10-15 14:35:05'),
('211b8ddfa29fcf0c7467ee3188ec821ce72d1d723cef9ab3c51dff8cc6ef10528cfb9288cd265357', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:38:44', '2020-09-26 09:38:44', '2021-09-26 11:38:44'),
('2131bba5569ff88cf31c3b7105a9281b6de4bd89ffa390873208bda5d06235bb1d7d8813b920f091', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:19:57', '2020-10-27 11:19:57', '2021-10-27 12:19:57'),
('213ac176812c9105b2df08604bed8ad42f2392b85107269f52b43162650f17d9ae99fe76600399e3', 27, 1, 'authToken', '[]', 0, '2020-12-06 09:51:56', '2020-12-06 09:51:56', '2021-12-06 10:51:56'),
('21444aae8c7d98a2dcd1727fa0f173ca57821a65ab90bb9d067c3dffcc4d8990fe027c4a79762344', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:36:35', '2020-10-28 17:36:35', '2021-10-28 18:36:35'),
('2145015a01091597d58a8ac7dc5313dd4418d9b5ee765eb67bb415b7d4cba0b437ce284e03cd96df', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:43:30', '2020-10-31 10:43:30', '2021-10-31 11:43:30'),
('214871f067b8b96304d0c9363462f7e2300155eca43bd2fffef6ea772a01480a162034c174d0c03e', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:40:26', '2021-03-27 15:40:26', '2022-03-27 16:40:26'),
('214c9f45e7d98a87b1ce6e9c3697053ed93acd7a2e4aed906e2e105d266154f53a8ed1271f6cc37f', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:10:48', '2021-01-30 11:10:48', '2022-01-30 12:10:48'),
('2155f261fd3cdc9a168e00cdbac288f0f7ea8fe21c155f32f837076e1b07699f7a04e2abcf6c5307', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:58:44', '2021-01-03 13:58:44', '2022-01-03 14:58:44'),
('215c7f549315755eb2d60a30f5a2b5ad12e8e5d460c60c0c973897b6286036776008c1e4a605d101', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:15:35', '2020-10-23 11:15:35', '2021-10-23 13:15:35'),
('216e347b8277b6d2f5f684496b8f7016f39021163265ee27933a38e8dd9486bbe0af655393706d9a', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:26:49', '2020-11-05 14:26:49', '2021-11-05 15:26:49'),
('217c889cdaf575a932177d86c738827c0691a22b2bfae4a474e0cc6be7df3b3b36d7eedec75e29c7', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:31:23', '2020-11-01 14:31:23', '2021-11-01 15:31:23'),
('218f908e1ceacb9eb8a1dc97582dbd32a02ca2f20345d2fee06c081b4bd14bb032626c26bf31c1ce', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:35:21', '2020-11-01 17:35:21', '2021-11-01 18:35:21'),
('219e84ad735f553a38d62a217c00cb2b129dc1a6b42b26eb4cd3092fad659ce26c9b02c25f25a9b9', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:39:13', '2020-11-19 09:39:13', '2021-11-19 10:39:13'),
('21c159f2280fc863c71d023e302096110fcadeca875a4588537301655ccf9f7e919ff6b7dde0dce3', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:04:01', '2020-11-01 17:04:01', '2021-11-01 18:04:01'),
('21ce9da62f56628912486fafba44b167671d316421e96c31534e3eae945d7bd52e3970aa0e9ee633', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:37:26', '2020-11-01 10:37:26', '2021-11-01 11:37:26'),
('21ea371f934e99ffb609cdbbc336ad8722d1b58312cab29842b3f2a571a35935429a127be8efe2db', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:57:02', '2021-01-01 11:57:02', '2022-01-01 12:57:02'),
('2206a82cb413b630d1f02f4f1cbe7395674c0a2c566adb0d93a0c244066a05cf68caf3b98fc70dc7', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:20:31', '2020-10-18 08:20:31', '2021-10-18 10:20:31'),
('2208a36bc4f0bdec024a6bd52f149972453adc7a9d306e2927b9c5d18c8cad683656ac9d0d4d7722', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:39:26', '2020-10-17 10:39:26', '2021-10-17 12:39:26'),
('221aeacddc18ab04022bfa1a3fc63f91d18c3f1977cc9d98cfc331d6181682292bc4a486e1887737', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:14:38', '2021-01-30 11:14:38', '2022-01-30 12:14:38'),
('22486867a9552093d0d7db5820ab17e457d931993c1d23bf550f71457dbe0165040072e0cc793f8d', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:16:43', '2020-10-31 09:16:43', '2021-10-31 10:16:43'),
('224b737aa8f0591e6630221848d11b7878cb422042bc2975c0f73aa1ef192bb23f2913a9156fd599', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:56:31', '2021-03-27 15:56:31', '2022-03-27 16:56:31'),
('22649fc041b22c5480e5601e87475b52d4a42df6a616bce11399f952fd89798a16fa0c73ce0ba7cd', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:36:54', '2021-01-26 17:36:54', '2022-01-26 18:36:54'),
('2270f31ba41fa4d0b5e009cb27ed439aada8bc33c7f03c2554db2e1752ddc46066b63e18f066d87b', 27, 1, 'authToken', '[]', 0, '2021-02-02 17:23:35', '2021-02-02 17:23:35', '2022-02-02 18:23:35'),
('228c68aa756aa1b27ba284c246fba49862b55c950b6a049fec77f047f8c3967356b66dc9a2fd81f8', 27, 1, 'authToken', '[]', 0, '2021-01-22 13:13:44', '2021-01-22 13:13:44', '2022-01-22 14:13:44'),
('2296b5f51e85d87021d0d846c48b10d267ed4b0640ab89eb7672377fff6a6486f70ff884f1ed8e77', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:43:13', '2020-10-18 09:43:13', '2021-10-18 11:43:13'),
('22af456c78a700b25abd7019cab7f59f4a0c433903bea43b3d33e0019b4f36908d05202551dc92f2', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:33:15', '2020-11-01 13:33:15', '2021-11-01 14:33:15'),
('22b0f23e34d746810f8ef54391b7eed7bd25ba2a682987be5bad1cc54b48c284fbafaff84a70636e', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:05:27', '2020-11-22 13:05:27', '2021-11-22 14:05:27'),
('22cfed44119e3506a4dad0afd5ec309d848dc4bb209fcb6ac02a9a34f0d599414caa4fdb0faf4322', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:21:37', '2020-10-13 11:21:37', '2021-10-13 13:21:37'),
('22f1025974e8cf5ba8913b4a7596d0014da53106870879402b9fdb980959b33128cb3f6af650b7b4', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:58:06', '2020-10-19 12:58:06', '2021-10-19 14:58:06'),
('2319f9f2aa45af7691b12a49d117c5cb33a825c39d4647208015a62086f66165327099345778d993', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:20:03', '2020-11-12 08:20:03', '2021-11-12 09:20:03'),
('231a63633a089c357e6e23fff71df1d51665b98871ec241d7353ac927f2ee2fbfb92d4001da56b2f', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:36:12', '2020-10-17 12:36:12', '2021-10-17 14:36:12'),
('231eff913f813e7e36cc26482e84fdc4fee8d936a8b2e32d543756323e5a4ba28037a8f5bea17458', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:06:03', '2021-01-03 09:06:03', '2022-01-03 10:06:03'),
('23335b8457622fe53d56f0e2637757ff80498779cad85753a7e3ab7dcd03746b26a3eedab814604d', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:36:17', '2020-10-17 10:36:17', '2021-10-17 12:36:17'),
('23396f825d648cbe2cc983a7694fdb259aeadb698e096ca56a09d015f95281600a1a01034d4a9335', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:26:47', '2020-12-31 11:26:47', '2021-12-31 12:26:47'),
('2340f3291fc49b6ab72c078cd9bfee3c4c5159bba10a98a649f0ce367f7fe0dc886b99b104024e33', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:53:37', '2020-11-19 09:53:37', '2021-11-19 10:53:37'),
('2341e0f641d54d059e60f6bdb96125e8e714ebd2d9f00025916c68c7ded297495273f79e58c35a23', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:59:19', '2020-10-31 16:59:19', '2021-10-31 17:59:19'),
('236b6f11d5766e8919923b33ee96f44b1d350ac696729f2b2b8b8de617e1a6ce9ba4e8cfef94714a', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:09:36', '2020-11-19 11:09:36', '2021-11-19 12:09:36'),
('236ebe5e4228735d6341de2bfb3eaaf9a483b62510b24273eb50c56d83997e9dd7656e470691099f', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:33:32', '2020-10-31 14:33:32', '2021-10-31 15:33:32'),
('238802d622fa3a6928df36afacb01ad2abe3fd0a0c1cb2b90560a1e8f469101d426918988bde65d4', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:08:48', '2020-11-01 17:08:48', '2021-11-01 18:08:48'),
('238bb027dded5801c915122fb833c8e3fa8bee1eacfbe3de10a23d87ae6e31ed97471656cad41218', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:47:23', '2020-11-01 12:47:23', '2021-11-01 13:47:23'),
('23bb2e24d76c483fc1d48b57b6574bf1990bf6566ffc4eba165debe06c42271675a356765d0e8feb', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:12:07', '2021-01-09 15:12:07', '2022-01-09 16:12:07'),
('23c6997655c032c3148ac4c3c981e48c1b5254ae0f2cf5317b40e66f42bfb9f8179fa009f8d30cdf', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:36:48', '2020-11-15 13:36:48', '2021-11-15 14:36:48'),
('23e004e6cd0cfb5000822e4293c4ed8254879f6a6a787fe2e1ef9a6d99115510467fdff7ab516949', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:10:38', '2020-09-27 10:10:38', '2021-09-27 12:10:38'),
('2401777d4eba5c0f5ccfcd1583961ff02ebc1995981309337a3af8fb58c616d30a2f4476c6342e49', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:05:38', '2020-11-15 14:05:38', '2021-11-15 15:05:38'),
('240d368dc4710d3f133c7e1796c8e745986fcbd6c2710adc1f70440015a1b2f2913bd2db73c137e0', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:47:47', '2020-10-15 12:47:47', '2021-10-15 14:47:47'),
('24227ed1097c3f4c8e1b1336a8fea91b5ca82395fb3ef8c9fcc1a19d1cc3a0b31128bc74a8c8ff19', 27, 1, 'authToken', '[]', 0, '2021-01-06 17:09:14', '2021-01-06 17:09:14', '2022-01-06 18:09:14'),
('2424a6c3d099bfdc8752f1ff092c064938685195284b640b3e7524bf8e72e92bf3c3ab9946ef9f3a', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:08:46', '2020-11-19 12:08:46', '2021-11-19 13:08:46');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('242704f87f1c887087dea466202ee37dc12c4887ff7283b3ef29be429d2a72f30b3488ed2229903d', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:33:00', '2020-10-28 17:33:00', '2021-10-28 18:33:00'),
('242f21c6596ccb3f9f0586eadcc19b496f3bf45f849b349a57ff0e0a1755628901159737b295825a', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:24:20', '2020-10-25 12:24:20', '2021-10-25 13:24:20'),
('243d4f759e2af87ed83f20c579b52d0a57deca6ae4baa4c37cd7ab2bd445d46608ef6b2445b4457c', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:38:43', '2021-01-28 08:38:43', '2022-01-28 09:38:43'),
('245b259b946529849ab184b9b40a7d4060ea515a68b200b5a2d530e6d96bd74e246671a4a1f4a958', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:45:43', '2020-11-12 13:45:43', '2021-11-12 14:45:43'),
('2469c2f684e0d424e6dc7bdce5dca597af20945881e56ddd948c2affd2e998588a7e6dc9b8c6f4ba', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:15:36', '2020-10-27 10:15:36', '2021-10-27 11:15:36'),
('2469c45b2af14c58260aef077e28e004864c62ee8957a79459b2955ac472756d8c54e908e75c39df', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:28:12', '2020-10-11 11:28:12', '2021-10-11 13:28:12'),
('246f62604819677c501b8fe5a4f7ca2a259cc795b7349a79cb02241b2f1c99077719db38365f02f5', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:36:15', '2021-01-06 12:36:15', '2022-01-06 13:36:15'),
('2474de1475002fb9892f39ac4693ab10bb43e7c4a1cdc3378ef52a391cd23893d3bccd08ba820d4d', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:25:38', '2020-11-05 16:25:38', '2021-11-05 17:25:38'),
('248419bcbf7c0c159a93172171ae4f2006a1d1be635d1efda042b446d2148911f071cd08f9621150', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:58:28', '2020-10-19 11:58:28', '2021-10-19 13:58:28'),
('248eea3989f0208d41fb7ef52c8fe4d6bb8284f03e4987bb9c9832d50cb5ff38d4461a9c2485bb06', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:48:11', '2020-10-13 09:48:11', '2021-10-13 11:48:11'),
('2497795dbbf4992aab1b34dce87e8e4e0f7d23054401a431bdbf39c526ebc74b41e87fbf729643ff', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:09:34', '2021-01-03 13:09:34', '2022-01-03 14:09:34'),
('249dae21bba7c962b4bea0fc113fdb933e7ad89488caa65fc2623bd13785b18099d17c5f6660eb6b', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:38:38', '2020-12-06 10:38:38', '2021-12-06 11:38:38'),
('24c7a46b1d6b9f8b574d1cd809e61a1a30d7c456c823b5c63d7d15c897a497e5352ae3e3a1cf2408', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:46:30', '2020-10-27 11:46:30', '2021-10-27 12:46:30'),
('24db35b6a8c99e835d94161439e5304d7679219e73bdb5a35674b2e79482f105631e6089970def96', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:42:10', '2021-01-01 14:42:10', '2022-01-01 15:42:10'),
('24dfa9bc86431f3aef77bfbcf78895d15f73e1b5cea74cb172bb1e0e193e5cfb03f4d878f15d832e', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:04:20', '2020-10-29 11:04:20', '2021-10-29 12:04:20'),
('24e1c2b4e7ee103aee6ad67c0e87c1af073d668771dc098469f9f5f7af455638f1bb5be1d193650a', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:35:16', '2020-10-23 10:35:16', '2021-10-23 12:35:16'),
('24e579171cc85e3050520191bf781052171e4beb107329e203a003011f57a2c6a9b26c7d1dde2327', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:56:06', '2020-11-19 10:56:06', '2021-11-19 11:56:06'),
('24eee45ffa2d4af39a341bbaad13c09c206121ce701ea063a159f560c11adf51b6f38e057566e1ab', 27, 1, 'authToken', '[]', 0, '2020-12-28 15:56:09', '2020-12-28 15:56:09', '2021-12-28 16:56:09'),
('24f42178b159814640053bcc089c2ecd81979fddd2375db849cc5e3a71e5a8548fee2c34b370ed7c', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:24:38', '2020-10-13 11:24:38', '2021-10-13 13:24:38'),
('24f449f785fa57741a6252ef9f170b4a60ff84fd7c6ed2ab33266e3f8c2005b29a05c04dfc9c7c91', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:11:26', '2021-01-28 19:11:26', '2022-01-28 20:11:26'),
('25057430ce4d35ca47cb8f95a8344d458d7555387f589471e91df9ace16296948c5defff219305c6', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:07:24', '2021-01-24 11:07:24', '2022-01-24 12:07:24'),
('250bda7bdf7542edcd81ad99fccd30a3906bce585cabd425aadc529cc69858cca41bc75262eae78d', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:52:18', '2021-01-07 15:52:18', '2022-01-07 16:52:18'),
('250d75f199d7acd1fbf5b46d2271eb5a7421aa746dee0352de8fb0843a96a6c564eaa8978268d8d1', 27, 1, 'authToken', '[]', 0, '2020-12-28 16:07:09', '2020-12-28 16:07:09', '2021-12-28 17:07:09'),
('2529ad900302428cb9b8671be273bbab2cb5dcd4527f11a13218d6765b710dbf370ed4193f62733d', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:56:54', '2020-10-15 08:56:54', '2021-10-15 10:56:54'),
('253a5502ecd9cbd24f50bb32f1318658dae5635a7a2942198d6262c4b29dedce1a2d2be91406df33', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:39:29', '2020-10-05 17:39:29', '2021-10-05 19:39:29'),
('2564a1fc15dc80bf90d4a9d33e25809576b0e55bd36e73b1868c22854a127b65dd46d5196d93a971', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:31:14', '2020-10-19 13:31:14', '2021-10-19 15:31:14'),
('25812c824a53a77db0313e3fc3ef79e492b1edaf953c8203bf19b0939779640b9ee801f51e46fc72', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:09:42', '2020-10-10 11:09:42', '2021-10-10 13:09:42'),
('2599e9d5e37fafe1fa28f96f7e1453d19f10116243821b9a9cf542ef8edd59ebd69f95e6da059e12', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:10:29', '2020-10-23 15:10:29', '2021-10-23 17:10:29'),
('25abfdf7b0d7d416c36c8c4e173579ea50c76932796aa531c075ee56fdf31a7f9450af27a100d3b3', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:18:28', '2020-10-17 12:18:28', '2021-10-17 14:18:28'),
('25dfdd28a8f523d8e4e2d699e10272627457c51485913a7a4d9b82524f3d2cfc0b27bb8afa6445d8', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:53:41', '2020-10-17 12:53:41', '2021-10-17 14:53:41'),
('25e68e7e3b197b6fb04ec6cdc7252e289cafb88a51e7db13123f4e5d5122940c014c4da8cdaacdde', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:56:22', '2021-03-27 15:56:22', '2022-03-27 16:56:22'),
('25f6f479c1b7ffa16adb7f9eebea6932e495c25b446f88426044514ca4ffe39acdde072ecb065649', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:22:29', '2020-10-17 14:22:29', '2021-10-17 16:22:29'),
('25fcd85e9cec630b23d3db56714da78b6c3f53573c633a8ccb69305a025cb3b16d9616a649c13319', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:35:16', '2020-10-03 13:35:16', '2021-10-03 15:35:16'),
('26008ee34846204ba8b848d244036129e6fd014e4837d9783a8d27d0058d1714bd5bf4a3fe265ce2', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:53:24', '2021-01-06 16:53:24', '2022-01-06 17:53:24'),
('2602202d07f619a9f525292549407fed622bab0e6de231e11bb50acb84ae57e97a159d17d80d8a73', 27, 1, 'authToken', '[]', 0, '2021-01-24 13:28:20', '2021-01-24 13:28:20', '2022-01-24 14:28:20'),
('26409a0cebe8046f23b7924b85b98cce50138c9f6406f38452ccc24f12f142a4ccbd6d82b838ec20', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:22:48', '2020-10-27 16:22:48', '2021-10-27 17:22:48'),
('264ecf98eaf4956a52fdd13302a4d8bc4296fd43101ce9cf96611d601128ba7460690d1cbc371779', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:25:48', '2020-10-03 13:25:48', '2021-10-03 15:25:48'),
('266acab2c738d4fafeeba5fcca17f7fb75e92c5fcf341bb380067f54b1c53caa2397b2e74a50e435', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:28:53', '2021-01-29 15:28:53', '2022-01-29 16:28:53'),
('267d54a710a1a0bab41662bf9a3a4117ca3aad61ea9fc0e5060d6b64b98750175bb49b1273a26dd2', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:12:29', '2020-12-06 10:12:29', '2021-12-06 11:12:29'),
('267ff4a177cd152f3c7a894074765057b58c62bf8be3ebc453de0d32d7c8bb9632cb37d1fa965964', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:00:27', '2020-10-13 10:00:27', '2021-10-13 12:00:27'),
('26867c03d81a440833829d39b19ea3265fcaccd129eaf4fb6b82fc54915ee9bea4956808df7fb8bc', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:49:56', '2020-10-27 16:49:56', '2021-10-27 17:49:56'),
('2694f094659263136296f372d7f8e75f9c2db7cbce868651da01008f0ebf70b017af6e40bea9f1b6', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:43:31', '2020-10-28 17:43:31', '2021-10-28 18:43:31'),
('26a396d9ad192da4a6bdc45ffe95083c78a274008cecafce7892399a5ab27bfe2c7c0d3ad79d4711', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:10:11', '2020-10-18 12:10:11', '2021-10-18 14:10:11'),
('26a8868049983fca34341b79c24ad3233ee6856c3b4960b7b61132d84395d240167feddf88ac6efd', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:54:47', '2021-03-27 12:54:47', '2022-03-27 13:54:47'),
('26b3a70c923ddbc2a477cfb041585dbf917c7625b2eb9f60fc2c2de445036a03098383b9272b2af8', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:18:46', '2020-12-31 13:18:46', '2021-12-31 14:18:46'),
('26b4692e34106b494dde8e29e5067f789f0c7f6e93e17c7a414a0f36f0eeeef86916c014930e6554', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:23:48', '2020-11-01 12:23:48', '2021-11-01 13:23:48'),
('26c1fb69ca464e51fd93adf114f610513be5659a0d59fec38470d58f8a25cbe9531fa84dd0c26cee', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:11:04', '2020-12-04 12:11:04', '2021-12-04 13:11:04'),
('26c53aae5e8946677aa49a616a2a1df255d855d483c0f7ea6591c523d9c18565a3cc352538bb6179', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:45:26', '2020-11-01 10:45:26', '2021-11-01 11:45:26'),
('26ef1b3acea772468c4a707ba0e489d14a7d1dc4be93c03f3547cb0338a8c5558c98e74dea0e9604', 27, 1, 'authToken', '[]', 0, '2021-01-06 19:21:38', '2021-01-06 19:21:38', '2022-01-06 20:21:38'),
('26f1b715bf114f02e933ad64304a3526b9a68d57ddc62d8b71f4fa087a9e548746ad525212294e4c', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:10:28', '2020-10-27 10:10:28', '2021-10-27 11:10:28'),
('270615e2562337676de18354d67e640b4d4cb3ae2430962919a8c5f54828567339cdef2484e845d1', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:18:07', '2020-11-01 13:18:07', '2021-11-01 14:18:07'),
('2728c86d218ea3f3ce9f2fb5e43dfbc459dec1de90d5af1a1eb85bef775e687ab463eea9b9779c13', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:03:47', '2020-10-18 10:03:47', '2021-10-18 12:03:47'),
('272ccd5c6e95c110e5404f6d519ed01848f0d56777b75f2b0ab1ecc0b7c284b6757a6df83ed08c88', 27, 1, 'authToken', '[]', 0, '2020-10-28 16:30:19', '2020-10-28 16:30:19', '2021-10-28 17:30:19'),
('2741bc3fa1e619ddfd3f789e1ad3bcac8d6f944d2680b8926bd4a6328fc8eab2d31b53d159430298', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:21:06', '2020-11-05 17:21:06', '2021-11-05 18:21:06'),
('2752158059b3dcfa836ca36d4b047ff840903cc8e5395d740663d868198013367289b8e9f19d5cf8', 27, 1, 'authToken', '[]', 0, '2020-10-29 08:24:09', '2020-10-29 08:24:09', '2021-10-29 09:24:09'),
('276365301a13001f4ef4b1e4e1b954a66c47714df1082ff51efab603163e7a3c1fdc3afb9b0124dc', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:22:22', '2020-12-29 10:22:22', '2021-12-29 11:22:22'),
('277f9913d46fc1603f56cc0161fe9a06d3fdf65fbd7f711eab359f39fc43f607ff9776685e7ae62c', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:55:29', '2021-01-02 11:55:29', '2022-01-02 12:55:29'),
('27afb5ebcdcc21e191cddfb11e7468a44c772b5d65cc99c08b017dd8d422078678e04f24b0198ecb', 27, 1, 'authToken', '[]', 0, '2021-01-07 10:29:43', '2021-01-07 10:29:43', '2022-01-07 11:29:43'),
('27d57ed9700d8aafce49b71d6aa93caa801d14e5bf7becc01e3517cae7d2049ccd5b7a5e914cf8b4', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:07:07', '2020-10-23 15:07:07', '2021-10-23 17:07:07'),
('27dccb5c6d2b13a62e0476a5571e0bf17ca3df7c9eef854e147f9f67680e7aba89e02b4e26ffca81', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:54:01', '2020-12-04 09:54:01', '2021-12-04 10:54:01'),
('27e5c3393e924ac2eee0e8d3647acf2d43306163dc247720c46f3d22a527133ff4e73dde6bcd9bcd', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:03:34', '2020-10-17 10:03:34', '2021-10-17 12:03:34'),
('27eafef49813ce17d837a4e94c34b044fb796b4fdb7cfe3e2a11361a5b1e21f3e53c9b7c4c24a8d4', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:45:12', '2020-12-31 13:45:12', '2021-12-31 14:45:12'),
('28240c76901d4265aabef08965e45e394d62fb0bf4263f32fb6de6d42975951c2edb27203453d9b0', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:12:39', '2021-01-30 11:12:39', '2022-01-30 12:12:39'),
('2839f0bb97a0b3e37e69e919c43821b03ead879aa2b0d3bdb8f392434424f04332c8ee06481d03a3', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:57:37', '2021-01-06 18:57:37', '2022-01-06 19:57:37'),
('28517507c273ca982a11ce12e17ab7dc4917af9227d4e8e15f79102c65f223b1c586296a95c1a842', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:24:46', '2020-12-28 10:24:46', '2021-12-28 11:24:46'),
('286b7bd1fa1b85780ec9cdc04c1520affcf29ef7d896f54e1ded25720022842ce90f778e96482d09', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:47:48', '2021-01-28 08:47:48', '2022-01-28 09:47:48'),
('287766d659c3cfbb5fdda49793c3cc3f63334db2d8bfd15f9728178444baa472991d67df4e8f6be7', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:30:09', '2020-10-06 15:30:09', '2021-10-06 17:30:09'),
('2880ba1955e5a46274c351e1a54ca25a60aac0fdb0fbd38152c5cfc17bb401d77963617077a09cf7', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:00:10', '2020-10-03 13:00:10', '2021-10-03 15:00:10'),
('289e57540d8d1dae559e7f2f6536135565c50b2cd0f454e6b769fcf2ccb5bae334b6ae6d95a5389e', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:31:46', '2021-02-07 14:31:46', '2022-02-07 15:31:46'),
('28a6bce040c67bb0022a1d502ae4efe877516685995763c5face372e26a40b685db40e9dbccefe64', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:59:28', '2020-10-20 08:59:28', '2021-10-20 10:59:28'),
('28caa67d5b24fc05d5da6d697c7b6c29ffcdcc19aeadc164dd40cd9ecc5a45da194b284e9f172fa5', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:28:48', '2021-02-07 13:28:48', '2022-02-07 14:28:48'),
('28d5b25eab415e536b3d91a28ee4694f54b277ab2f3dd5a0ccc02392b2cd11ca63c2d21e20100bb5', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:52:39', '2020-10-17 10:52:39', '2021-10-17 12:52:39'),
('28df170c9dc3df39166f97ed5750437e7fd2104c8adcf5a38a2ae1eb8a3fb61963bc29354dea829b', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:49:04', '2020-10-31 15:49:04', '2021-10-31 16:49:04'),
('28e0d4e2ea8639d9409c15f33a5677ec734188255f0606bf59160a0053e7e6453c844661abb55e63', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:26:45', '2020-12-04 12:26:45', '2021-12-04 13:26:45'),
('28e77ad50be2061b2649e772c9d881b63942f63a1c07105d54b2a3decda2c5219cdd9d6783f41286', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:15:45', '2020-10-29 14:15:45', '2021-10-29 15:15:45'),
('28edfcd0dfab7f5dc3212bdbe834341cb95db91fd331fd7097032c30897789e22b3eebbfc2222d09', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:04:35', '2020-10-19 14:04:35', '2021-10-19 16:04:35'),
('28ee30edc3799653281fac54564876d3f9b3c4dd006ed529d8197cb5a994a1037728d194c455e02c', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:49:52', '2021-01-01 14:49:52', '2022-01-01 15:49:52'),
('290b2825d5641f5bea94c83b1a3e564127c92215104d2af4187bc63b9b3975ec3aef7c2f56e03962', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:22:24', '2021-01-24 14:22:24', '2022-01-24 15:22:24'),
('2943a5a5ec6455303b7b8ff3de2a6432b5b4d9687844889f01c6605db813b44ad66e87828a7ea863', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:09:49', '2020-09-27 10:09:49', '2021-09-27 12:09:49'),
('2952743eade3c9cfb6f98b9f3b2a01d524d3c553408e6a5510d830d1a5ab749b62bf5ae2166b058f', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:24:46', '2021-01-29 15:24:46', '2022-01-29 16:24:46'),
('296fa312bf1639056cd6e60f2b191f99dd9d762573e359859190decf700c755afd276b4fac0b1251', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:33:02', '2020-10-10 13:33:02', '2021-10-10 15:33:02'),
('297b20b73ea0b09397de5ab907ba51bda2398bc059f37f632028f071919a54afa02f847ff1efe00b', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:36:21', '2020-11-01 11:36:21', '2021-11-01 12:36:21'),
('298069bc7fa54145c17ea1dfeb404e7058738eea5c9094af931c90c87ab3399be45e96e8f6f34c51', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:15:12', '2020-11-05 16:15:12', '2021-11-05 17:15:12'),
('29a3983674b019f18931ded6850c01a649a6d53f306279ec473e0358badcf580cb8d3df6c9c8725e', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:34:17', '2020-12-31 13:34:17', '2021-12-31 14:34:17'),
('29aeb2e97d750755f6ee7c17ca111ddb8e45264cc96e6ee89ff11d9f21c5a923579e602c24087b83', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:00:31', '2020-11-12 13:00:31', '2021-11-12 14:00:31'),
('29b565772bb4dd7497a670ed90400a3bdbf82e6d9e209d9a16cc4d904438b098fa12b5c4ea54d88f', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:03:01', '2020-10-17 09:03:01', '2021-10-17 11:03:01'),
('29b897894b972bfea5514f3c3e7ec652097ad3eff19274549d6542ded8f74ef6d4d7a1644dc02b42', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:33:14', '2020-11-14 12:33:14', '2021-11-14 13:33:14'),
('29be2c5bdb457329f92787514a5a41839d2e76e9c20cf687a2ef8d4d01299ea7ac6265dce05ddf2d', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:15:39', '2020-10-19 14:15:39', '2021-10-19 16:15:39'),
('29c4e4dff06848b924a25bb6d916a1eb392e24ce64052e4f62983d9fc6bb8dcf16c47411ace6446d', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:54:36', '2021-01-07 12:54:36', '2022-01-07 13:54:36'),
('29dec629a7087d33d4ef45def0eeb9487fd5c025c88eda779594219e94632282c590dfea68483a4a', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:44:44', '2020-10-11 11:44:44', '2021-10-11 13:44:44'),
('29f5238eaf8fbadf100d27326fff868329d8f9cbc15c7e385765ce724f7f97065ff24bad9a0a384d', 27, 1, 'authToken', '[]', 0, '2021-01-09 11:10:27', '2021-01-09 11:10:27', '2022-01-09 12:10:27'),
('29f7f22287bf40248ccbacfc39a3f84d5ede5a46e8eb95ae2605eb79371ca7924eff3aa6c1538746', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:24:58', '2020-10-25 14:24:58', '2021-10-25 15:24:58'),
('2a104cd2103e4bccb15acdf117e002e3f0f99f391c0b9a8616b419e5e5d368d1e71319126930defc', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:55:24', '2020-10-31 14:55:24', '2021-10-31 15:55:24'),
('2a13c018a47313ca24c8d1cfaab720d002987c080fe64a17181a32969cf725df82ffdf55fb7c9abb', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:44:18', '2020-09-27 09:44:18', '2021-09-27 11:44:18'),
('2a15398e545100b727886b31874b7bbfe1cf277313fb7ddbf969baad8d447b6160fa7a496c332cb3', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:51:01', '2021-01-28 08:51:01', '2022-01-28 09:51:01'),
('2a197872340217d42248d186cef024112e6ba32451b2a8ec545e9ba09f60921a93090ab26540cc1f', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:48:02', '2020-10-11 09:48:02', '2021-10-11 11:48:02'),
('2a23da95861ff8cd097fc57e4b77031f3e91bb8275a7dc0eaf3ec08bd57b326ff9c42225c71e9986', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:47:26', '2021-01-06 18:47:26', '2022-01-06 19:47:26'),
('2a250a61a2143452798a5fd05dcf09050b3849d89d438e39a5f0289f0bdddc9db66fa938b0b1fa1e', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:56:21', '2020-10-17 10:56:21', '2021-10-17 12:56:21'),
('2a39c371fd180673ab85bf997512e7ae24f9951b30807000db9332fe1f9db26eb21a363b3e02785b', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:25:02', '2021-01-07 14:25:02', '2022-01-07 15:25:02'),
('2a485ea57c9518b8d67633800599d07ddff2bc99f879e0547435117d7cd9771192b5ddae81487a0e', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:40:35', '2020-11-05 17:40:35', '2021-11-05 18:40:35'),
('2a4e4c5205d2222a2701beb39188fb28fd73ed3a44ce5ff0d1d784a1a6494785035ef2b1cfce400a', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:38:23', '2020-11-22 13:38:23', '2021-11-22 14:38:23'),
('2a5cfc821d0431a4089f2f65c2b0cbbe25461bddce35cfd90152ea735e8e2896daae28d51a506791', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:30:49', '2020-10-18 08:30:49', '2021-10-18 10:30:49'),
('2a644198303834006af39b0b5e12326b79db56efb2cc1d12becbdbdadfb52751a0fd77615abec4a4', 27, 1, 'authToken', '[]', 0, '2021-01-10 10:48:01', '2021-01-10 10:48:01', '2022-01-10 11:48:01'),
('2a6c8b40023b782ec794f3079b51954d85e075c03cf025158d8085c17625a9e67f509bf0c1d075bf', 27, 1, 'authToken', '[]', 0, '2020-12-06 09:54:44', '2020-12-06 09:54:44', '2021-12-06 10:54:44'),
('2a802ae99fa7b9348a3f2426216febc2f9a08881edf4f1430b23e5357042e231d9ddd29f3c471f9f', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:58:30', '2021-01-07 11:58:30', '2022-01-07 12:58:30'),
('2ab1b9b672ae4574eae66176f0ce194a53ba088cf6031cabb291bc7fadcae34ad34fd84c893a0606', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:09:27', '2020-10-23 13:09:27', '2021-10-23 15:09:27'),
('2ab5eac85aca2c1b070788897dbe59ce278d89122091ee94059742b3b82fbcfd23887aacfbe53ccb', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:06:03', '2021-01-09 14:06:03', '2022-01-09 15:06:03'),
('2acb13e567c3235959b3be7b0aeea27314d4c6fc84cf6c3af99e2bd08e7bbd05a333c028308f6ce2', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:04:30', '2020-10-05 17:04:30', '2021-10-05 19:04:30'),
('2ad6ee57599d485144de82bfce7ebfb573b9f6faf1998a2c4c277445e5a038ebf887332a81e812db', 27, 1, 'authToken', '[]', 0, '2021-01-06 15:04:06', '2021-01-06 15:04:06', '2022-01-06 16:04:06'),
('2add1ae58b062599c236cd8dab4aafc24af295b807c040917e51c88f73e87cfaa27207fe28367128', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:31:55', '2020-10-19 08:31:55', '2021-10-19 10:31:55'),
('2aef27fcfa507e4a53e203029da615be97a4af78ba0748333644bf2099222cf0f3b53b6826fe90c6', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:06:04', '2021-01-09 14:06:04', '2022-01-09 15:06:04'),
('2af7d20f417a27988cb24ec84993fdac4b5658c0dca405d4cbf9911e7264c9d85f77601de5e203c8', 27, 1, 'authToken', '[]', 0, '2021-01-25 16:53:56', '2021-01-25 16:53:56', '2022-01-25 17:53:56'),
('2b0179bb25f14e995e9b4c72a058a3bb16a37852129789c438d4ad526239a8671d918649f638f81d', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:54:03', '2020-11-19 10:54:03', '2021-11-19 11:54:03'),
('2b045b34ee0232ae037b2b13cf5c0c27aede4d564765834e09b294048a66a4af874e1e8e9a179f52', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:00:30', '2020-12-31 15:00:30', '2021-12-31 16:00:30'),
('2b2c574cae5df6e5821dd483ecc668156036f219c4f6fe63333b18862b40634e045cfbb89c8a9c09', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:29:42', '2020-10-08 15:29:42', '2021-10-08 17:29:42'),
('2b33bc09b00f6a4ac08f45d945b727ebb68d764749f96aec28647e155ebc7d104a28dd20cd09f393', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:17:47', '2020-11-01 10:17:47', '2021-11-01 11:17:47'),
('2b597b78c7afe6f4c523a84edd5202e201bb185995482b8f15b6dad15c71df80d4479b594ad2afe5', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:40:12', '2020-10-18 09:40:12', '2021-10-18 11:40:12'),
('2b7e84413134238dbe96bafde08012fda1107469ccba4bee5f81090b18af9da4748dd0ca867468e5', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:35:26', '2021-01-29 16:35:26', '2022-01-29 17:35:26'),
('2b8abcbad73b011b715927bbcf194c4689a07e29f6a08e14c8903d858e5fb570336281ccf55a215c', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:17:04', '2021-01-07 14:17:04', '2022-01-07 15:17:04'),
('2b949dc1da50f40b27cde459ad9d3a4a983ced4452977fd25aa76dae3f8a66541f506f908e41fc47', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:45:08', '2021-01-28 08:45:08', '2022-01-28 09:45:08'),
('2ba3108db8296c0df5c4e2bc5fe44cc2ab920d1dc2d840a20a95ceabe173c8d30fa5d1effd26b4e2', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:29:32', '2020-10-19 12:29:32', '2021-10-19 14:29:32'),
('2ba509b6b9d0c521fe4e75f6e01c223145be7f8ab04ecbcf7caf87530c4b0e17991645b7fa1b2b5b', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:18:00', '2020-10-31 09:18:00', '2021-10-31 10:18:00'),
('2bab946f65b340697045f14213242bae6e938d8ae900d30a6df900dc492ca1da840b3a5bb6771e78', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:47:34', '2020-10-19 14:47:34', '2021-10-19 16:47:34'),
('2bb2831590862f35d87d827d740ab48cc0ca50b7bdd89c68f78eb86967c1b2121b3bcc9178a0af17', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:06:33', '2020-10-18 12:06:33', '2021-10-18 14:06:33'),
('2bd0485f8b9c64dc9f459b2a7ac0c49ff5b89c15a852880c7e3df9079238281dcac17cbaa134d115', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:41:06', '2020-11-12 10:41:06', '2021-11-12 11:41:06'),
('2be97223515606e9ac890f7ebbae1997c8678b2e57768da98ee9cb91803f93c1da81a852ab7646d6', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:55:26', '2020-10-23 16:55:26', '2021-10-23 18:55:26'),
('2bf7bde25eb5beab319676d345179d48dcd0fb22613f90d39af3b58c3bbe9d0901e7c7f1aa56c5a6', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:07:29', '2020-12-06 10:07:29', '2021-12-06 11:07:29'),
('2bf7cb46eb8018e3713f19c249593df8c7b8bace1ecd97dea4ec657337fe03317cfdf2c397fab503', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:42:14', '2020-10-29 10:42:14', '2021-10-29 11:42:14'),
('2c0844e938560e794e57d82f76dd163c06ea962472425469edc338bb959bd31111c9bba052c2b612', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:06:51', '2020-10-29 11:06:51', '2021-10-29 12:06:51'),
('2c090d891406e46dc303d14529025c6c55b1dcdbe2873206784105b994a9839925b853dfe6cca030', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:17:00', '2020-10-18 09:17:00', '2021-10-18 11:17:00'),
('2c110d6d68654bb7e6f33c6dcf310e90f8fcf2cda349ce35b1d53b796f38a8611557b857991dc6d7', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:41:09', '2020-11-01 14:41:09', '2021-11-01 15:41:09'),
('2c318c20c94a77fb37440dbec5130fd7c9a9563212bc30e3c66efadd24f99e43c8e44128968726f6', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:47:49', '2020-12-06 18:47:49', '2021-12-06 19:47:49'),
('2c4a2f86657faf78648785daafc753c817abd7f54322e977bc7ab033d2afb297da604581468ebb20', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:32:56', '2020-11-19 12:32:56', '2021-11-19 13:32:56'),
('2c526121ae9f8ee3ce5771c9aac644ba60b5c7a4bcbbfcfe53071035e4b9d157fe0cef8aac95a7c2', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:08:31', '2020-10-29 11:08:31', '2021-10-29 12:08:31'),
('2c535a374edc15061ec9d032669ba60346259cf1b7cf1f44378204700adc3a5e49a0a11eb9c2c022', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:38:31', '2020-10-03 11:38:31', '2021-10-03 13:38:31'),
('2c7517523ce879c688794e0aa8f35941b1714cf85e64c877043eb8b2be9b85ee27f0f6e96462dc7f', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:05:15', '2020-10-23 13:05:15', '2021-10-23 15:05:15'),
('2c76c6c4af58af2b85cb3b43e8700fc5cc2bef2f3404e096b03bc997976bfb2a63342e327cb3b6b2', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:34:21', '2020-12-28 11:34:21', '2021-12-28 12:34:21'),
('2c771020d43ba5f8f04026d62d41c9ebf6b68b7aeced1767c8d247ec7348bd63d8de191ca8909221', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:50:48', '2021-02-07 14:50:48', '2022-02-07 15:50:48'),
('2c9612371a0fbf5525e76ae2c0026b148489c11c735e1da9fe1b42df1257d72ff8c59255c71ecce9', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:01:30', '2020-11-22 13:01:30', '2021-11-22 14:01:30'),
('2c9a5e5934249c7ca77b45c8abd084e79397a80463c79d46116c218eb96d3fd630d723d8ca372bb3', 27, 1, 'authToken', '[]', 0, '2021-01-01 15:09:52', '2021-01-01 15:09:52', '2022-01-01 16:09:52'),
('2caecd6247b83371cb75e37565326614a3ae44649894cde3308a92b98ce9721c83fff0a4b11b4527', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:39:56', '2020-10-13 08:39:56', '2021-10-13 10:39:56'),
('2cb2d06678750d800ea3c0a2d770526b29582e22a861cd80d33de19c02f9d7f7ac8700b5ec203bd8', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:36:32', '2020-10-13 11:36:32', '2021-10-13 13:36:32'),
('2cd4daaba1e3a0fb5f24117485d5b9ed8886f5dfa6d13d12f495c35b7ed5e7043480662a16958eb8', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:47:55', '2020-11-22 15:47:55', '2021-11-22 16:47:55'),
('2ce7986092a9d2a159ad5d44c7c0a1895aa6fadb451becdf714f9a6c82dcb5349162e0f970708130', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:12:08', '2020-10-08 15:12:08', '2021-10-08 17:12:08'),
('2ceab4b8141b335edd96fa2838d6a014377af593e6e69c73097070ff6454b1d01adaf95ed1e1a48d', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:42:10', '2020-10-23 10:42:10', '2021-10-23 12:42:10'),
('2cee0c1d2238dd990a9c9b60bc06a017e725df652313d20fd42b01cef6175be4e4d3c46fff226bf6', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:26:38', '2020-10-11 10:26:38', '2021-10-11 12:26:38'),
('2cf27e0ff4a8071b8b27dbe16e64787f82153e416f3a07b844e6dad3aa4606ba21a557a95edd4669', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:14:49', '2020-10-18 08:14:49', '2021-10-18 10:14:49'),
('2cf4fb78416e985171070f6a387d3c55c0bc6448c31fe831d6b2e0be499d8cbb3c06768c0ab25261', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:30:06', '2020-10-31 09:30:06', '2021-10-31 10:30:06'),
('2d01fd556c6dbb11502b141a9b1467919bd7dfd2713418414d6182da0e92519ad145eb258d4a488e', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:47:41', '2020-12-28 11:47:41', '2021-12-28 12:47:41'),
('2d03d458918d7ac148ef8a25afd642f686ba07c27315af79f7c5819ee35c3b0fc6cdd9d802709049', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:24:10', '2021-03-27 15:24:10', '2022-03-27 16:24:10'),
('2d393ac52ae95ddb7740024b9c4ef94be7e60fc474a1fb432a62b6119afb1ebeb5e0fb0f91962da4', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:50:33', '2020-11-19 10:50:33', '2021-11-19 11:50:33'),
('2d3c20c1cdb31b1a195c061924e87a9eaef61bb630513ea5055a5b8a39a16549ef7ec5cac76c9cf0', 27, 1, 'authToken', '[]', 0, '2020-11-12 12:54:50', '2020-11-12 12:54:50', '2021-11-12 13:54:50'),
('2d4d49df1b759a575a8110d99faf8e1e7affb74dcd57b81a6663d878631d72eb023c23908ce08552', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:03:07', '2020-12-06 10:03:07', '2021-12-06 11:03:07'),
('2d5b3c238667df934ecedc7775e17e37d394aa59c28a9f6f46887154b953c4d3c3b7487a0edf28ff', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:38:42', '2020-10-30 11:38:42', '2021-10-30 12:38:42'),
('2d65ad2f413cf72a181d8563146226c5491e6ee4085fa3c212d3ad41296d14588afeedb4c57351b4', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:29:28', '2020-10-18 08:29:28', '2021-10-18 10:29:28'),
('2d80a7d8146ae676e30b271d4a67a1e7531ba764b10ee00b4892f16c6869db17e726124f6f550db9', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:56:44', '2021-01-01 12:56:44', '2022-01-01 13:56:44'),
('2da7d92482027c8e462f37e613bfb096f1d17fede0d45bc9489d78993a2bd371d610d05bef3c64a3', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:06:31', '2020-12-28 13:06:31', '2021-12-28 14:06:31'),
('2dcb36bda4382d05297be7f342e94e7fb9e866ccf4a95bb60dc5ba536eaffcaf6e11b8d70c36dfda', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:51:28', '2020-10-27 11:51:28', '2021-10-27 12:51:28'),
('2dce78fd8d64c5c69291d430d467600806c8dbb6c7fa6f958aafd993f88abbb9594605fe6959ae16', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:00:41', '2020-10-17 12:00:41', '2021-10-17 14:00:41'),
('2de6dced04cc73b6cadd598f0dc463c391970d9206868553dd014da9740bee7170a850b9ea4f32bb', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:44:28', '2021-01-01 12:44:28', '2022-01-01 13:44:28'),
('2deed0c585502dfb9884a091553362c96c8da41378ec6b61b886123cc40461e0504ec3e20e2d5aa6', 27, 1, 'authToken', '[]', 0, '2021-02-02 17:23:37', '2021-02-02 17:23:37', '2022-02-02 18:23:37'),
('2e1b31523855db9c699339aee10838f5be92b7b6b7b4d0e74259d85fbd1da81d1432051df56c1f49', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:50:09', '2020-12-28 13:50:09', '2021-12-28 14:50:09'),
('2e4c835b5ccf2164c9d6615ce1d68d2ea985208c51ed98a7cdf53b6c644e89653195d49e7e494ffe', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:14:47', '2021-01-30 11:14:47', '2022-01-30 12:14:47'),
('2e51b62daea4ea6f39e9c1dcbd8fbf812d13bbe3dbb837a4e6cbfc3b707055e8ea2cc65f28b43073', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:33:35', '2020-10-13 10:33:35', '2021-10-13 12:33:35'),
('2e5634906182e09c61a75b1c159a4cb11f0011784d0de47cf93c9734e7bbdf3cd36dece01267a103', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:11:36', '2021-01-07 13:11:36', '2022-01-07 14:11:36'),
('2e60a043b68537f4e8648ee88e9277add2f6022b9ff306a0f5793cc74228b3c57104a6a9cc11d5d8', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:06:54', '2021-01-24 11:06:54', '2022-01-24 12:06:54'),
('2e740cfd20b14bdf213185d783de29211b828cf33458e4d0a0d2a37466019bf11ae97467442d72b0', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:26:51', '2020-11-14 14:26:51', '2021-11-14 15:26:51'),
('2e8a37c9aed574399950d21cde3affd5deedce73ed32c7e518773b2e9f36b19d469dfa863bbd9e4f', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:58:57', '2021-02-07 14:58:57', '2022-02-07 15:58:57'),
('2e901f73586a526bbd33fd63363a97abb4ad87cb1709816115b1b0ecfc34f45bfbd5693e870d5f08', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:12:43', '2020-12-28 11:12:43', '2021-12-28 12:12:43'),
('2e9f93bd2f696e3328d21a6eceef47025c7a3e46c01db406cc4465d5340a91ecc4bad69ce4c72c42', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:50:30', '2020-10-17 09:50:30', '2021-10-17 11:50:30'),
('2ea8e7f603813651d6466980fc897dffa779a908593d83e826becf2c2cf2ff1beddd82bbc265d84d', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:34:13', '2020-11-19 12:34:13', '2021-11-19 13:34:13'),
('2eaebd4ceee2e695feaa1d0057d37bcbc7aa7a6284b7b8315de4618a9cea30db1c54377f62a0f35e', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:10:18', '2020-10-08 15:10:18', '2021-10-08 17:10:18'),
('2eb98c2f2ee7db97ac20530f1be3b156c9468d32abcc18e9d02b431bbf713a24a83ab43046582305', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:45:02', '2020-11-05 14:45:02', '2021-11-05 15:45:02'),
('2edb035661eac6472a7d23f0776b9ad6c6647607ade5fcf51ccf3789f04e03acea5b93a63e865605', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:01:38', '2020-10-19 08:01:38', '2021-10-19 10:01:38'),
('2f10d873f1b3b3be6194a2aaef8e9cbacf9217521a0df56ac4c4a5959d3de64f13fa2087574d8bd8', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:09:55', '2021-01-09 15:09:55', '2022-01-09 16:09:55'),
('2f23efa078635d53255889b5c427b4a30f5dcb14d6cb2639d45f4076480bd46545c5de802fc30b83', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:29:32', '2021-01-29 15:29:32', '2022-01-29 16:29:32'),
('2f8b3755f927a72e4f3520bd4c3745f91c4286c92e7b3fd1c19f351be6f0ad1b4383e7e92c2942ea', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:08:20', '2020-12-04 10:08:20', '2021-12-04 11:08:20'),
('2f98d4b688cfb40d60578ad437731741a4c6e4783af286c5dc7a359815ca14ac100b672591227a7d', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:00:32', '2020-11-01 17:00:32', '2021-11-01 18:00:32'),
('2fc22fef4f06dda9a159dfbef09a3301bdf38bad9f7c7bfeccef3878d753c0434bcd967b82062f99', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:06:41', '2020-11-01 12:06:41', '2021-11-01 13:06:41'),
('2fc53fa341201cbfd9147b260fedecddc94f541aa0c1742c2df56f142865d8b4ffc68d47a220bedb', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:27:08', '2021-01-27 17:27:08', '2022-01-27 18:27:08'),
('2fe0f9a87cb2c0551c608446fec363f3468f009d67caf0c9ea406c4dde913e8d790ddf04bb2016aa', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:59:44', '2020-12-06 12:59:44', '2021-12-06 13:59:44'),
('2ffb79e75eca48b100f9e25ea2dd25335102a9e18801db16f2605e8f2b6aa4f790589c98990be727', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:05:15', '2020-11-19 12:05:15', '2021-11-19 13:05:15'),
('2ffdb1db67572fb81dce09faaf351c3492bc915d2c5c1fa1afa575e5c4be00f43cf8fb5025256602', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:20:53', '2020-10-31 11:20:53', '2021-10-31 12:20:53'),
('30119ecf0209ab36202ed30638e6f19aea36efed1ee3e8dced1a70939e60f3424c153767ace8237c', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:08:57', '2020-10-23 10:08:57', '2021-10-23 12:08:57'),
('30379636f05b082d7be58ca861a7cd19e135093f9ba4c4ba50894fb85e98aabd4b3c8f7b3667cad5', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:15:27', '2020-11-05 15:15:27', '2021-11-05 16:15:27'),
('303bccfaeb38783beec47b1ea24175ac1c4d4af1fdf0b861285f06e73e12775f21712b800161ac36', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:49:35', '2020-10-31 15:49:35', '2021-10-31 16:49:35'),
('303bfd021e41272572122e4088aa2d5fe86647a7623ba2b33647a7f04df51b44dfa7acf0db4dcaa6', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:59:01', '2021-01-07 12:59:01', '2022-01-07 13:59:01'),
('303ee5acc2ba552aa1a2ebed4b04fbc4cdd857987d0b32ddde25d7afe8f683de70e2a428ce431ece', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:24:10', '2020-10-03 13:24:10', '2021-10-03 15:24:10'),
('30500f5d5958c1d6ce8ad4cf77bde5359792099898ffa92f734c033c5695bae0a320a655b2b33eef', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:06:55', '2021-01-29 16:06:55', '2022-01-29 17:06:55'),
('30505b6ff05225bf265167e02060f72e050982f9afe44e95d6debdb1ca07ec8eb28f9ed0513384c8', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:24:29', '2020-12-28 11:24:29', '2021-12-28 12:24:29'),
('3085c64fa89906c700245bf3e70231322ce704246ce652644444a6a781d2c96404d4885c3c754e8f', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:29:50', '2020-10-17 10:29:50', '2021-10-17 12:29:50'),
('30ab9b305744b31d9044254bd6e2b50b281ffa92af94720747388bf890a2f72da38beb2c75b8dd06', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:02:00', '2020-10-18 10:02:00', '2021-10-18 12:02:00'),
('30b809fbed322b65b4b0b165b040ef8446e00f7857189993f8a5bb44e99ae253efce3f20753a7057', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:15:20', '2020-11-19 11:15:20', '2021-11-19 12:15:20'),
('30c1c159da8fb314b572ed7f72d0a895207c852ca7c52581c5ddf34e115395f8d2f4598707791f53', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:21:46', '2020-10-31 14:21:46', '2021-10-31 15:21:46'),
('30dae0425f13569642ba060fd5e5dcc8867035dbef52fc22ded3e2d56eb359a52fc131887e976a1f', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:46:18', '2020-10-19 13:46:18', '2021-10-19 15:46:18'),
('31190e908ea9fe5e2c82805d197b72c9110669ce98bd54c3fe5fc15c21e75b622800ac101c8276d2', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:31:30', '2020-12-28 11:31:30', '2021-12-28 12:31:30'),
('3120af225195345af6a169f3c46614e5c55f9fff03422ee7cd0a1167dea9ed1e084c3ee9ca60c4f8', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:04:56', '2020-11-14 15:04:56', '2021-11-14 16:04:56'),
('312a585cd0762f41ca5414211d79aa5ea694c72ed41ce29c958b574bd7999080ac5bfe1decb7aa16', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:07:01', '2020-10-19 14:07:01', '2021-10-19 16:07:01'),
('313d7d25be98deaa6ea0af0e6662297c90873e8cdaf2742add747ae518c786f589ddd9360c961bbc', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:42:57', '2021-01-02 13:42:57', '2022-01-02 14:42:57'),
('314a23b36c905bcfbcfe1f3115461af355873472c9002111259f0fa37443c0ee321c48ddcc0a1679', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:19:14', '2020-12-28 10:19:14', '2021-12-28 11:19:14'),
('314a81d5b70dcde4d92c43c27b4ae54ca4ed0e9ae0359adf57a5ec292b51bfcaa2456f59aebd3728', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:08:36', '2020-10-25 13:08:36', '2021-10-25 14:08:36'),
('315da71269c730c3931255d90606be8f6a734181cab7f5991368ceae2839c6af0bd147404aa42be4', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:56:22', '2020-10-03 12:56:22', '2021-10-03 14:56:22'),
('315f26fb57097fcbd56e76ebd549989e918a64df636376568c853ff19103a2890bbca799c44ad50f', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:43:31', '2020-11-22 13:43:31', '2021-11-22 14:43:31'),
('3164d2f7331006e423c1f011a8c5e90b73d5b5dd77497fce2e1d9e7c4b84db9ae046ee6527ebdd27', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:08:08', '2021-01-10 12:08:08', '2022-01-10 13:08:08'),
('316dafc7b570f204230cfedd1f40544ee06cdceba897f09b49fc7d92fac02ceab5b1d98ba05aa268', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:42:39', '2020-11-15 13:42:39', '2021-11-15 14:42:39'),
('317750b7104a00e3a338449f8319cf686ca31834467954d351187492a00fbb72a9e5842cba750d15', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:33:52', '2020-12-28 13:33:52', '2021-12-28 14:33:52'),
('319eb84bdde4fabc844f51482f9cd881ebfafff693163678d49d72ce4d3dc146da153ada2433c936', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:58:50', '2020-10-15 09:58:50', '2021-10-15 11:58:50'),
('31b743bc66cd22f08f5eb191e3169624ad847b4573e574d27e5a051350567e0f136ee47fad9aed6e', 27, 1, 'authToken', '[]', 0, '2020-10-27 09:55:41', '2020-10-27 09:55:41', '2021-10-27 10:55:41'),
('31bce66ad714d511bb35821a127737dbc52ec8b263957bcca383fb201abd34edf85dea9798507885', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:15:58', '2020-10-19 08:15:58', '2021-10-19 10:15:58'),
('31bf0a45db687d3b558fc91e18a80f13e03242a82392b76a3cbf0c04759b500cc81405d8b2d8b187', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:50:01', '2020-10-23 17:50:01', '2021-10-23 19:50:01'),
('31c8b1543cf46f75c16b3bbbd15f719bfb0d0e5cafc2daaff594405fc829c35f2550636b8b86cf14', 33, 1, 'authToken', '[]', 0, '2020-09-27 11:55:33', '2020-09-27 11:55:33', '2021-09-27 13:55:33'),
('31ccf40ece5e1733281c88b2392d97e93ebe1e8c0a36e3019e2b21dc4e12d3b40275f202ccd9ebc7', 27, 1, 'authToken', '[]', 0, '2020-09-27 12:10:20', '2020-09-27 12:10:20', '2021-09-27 14:10:20'),
('31d430d9e1225cc69b3a344ada60252971bd89b7d171b49b9e48660771caa069aca715da2f3af4e5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:23', '2020-10-03 14:10:23', '2021-10-03 16:10:23'),
('31d715e200cafa7c226779aa2d6136142f495f5598339974aac8fd7a3ad3686d0852a710fab0e7c1', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:49:25', '2020-10-17 09:49:25', '2021-10-17 11:49:25'),
('31d8e863e5fabf8c23d63348e36e848dc6702251280cb4d5267971d61ccd9a71899d8c1ddfbd2431', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:37:55', '2020-10-23 15:37:55', '2021-10-23 17:37:55'),
('31e005f65a1290c2f9993dc03d24c458589445fa72c95b42cac1cb9cf2f173baaebece799fcab2d0', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:55:25', '2021-01-29 16:55:25', '2022-01-29 17:55:25'),
('321ff276d941700cf56e3e336d99fe6a79a87cb53cdae26053a0bc3119e148da849cbc66ae595293', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:08:04', '2020-10-10 11:08:04', '2021-10-10 13:08:04'),
('324325067b8c36f2f00326c50724e827a7082c2becb385189b97464dbea324f3d14d8194ad23c751', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:53:00', '2020-10-03 12:53:00', '2021-10-03 14:53:00'),
('3252351c219e68a9d65898a0f68112f9749645d14cd8a0e009b51ccd5c825f721010c369d8a35fb1', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:44:45', '2020-11-12 10:44:45', '2021-11-12 11:44:45'),
('3297a0ddc9978026b227767a55ae43596e77f784f64e9838ba6944ae890a252206e7aa984e5a5046', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:09:47', '2020-10-23 10:09:47', '2021-10-23 12:09:47'),
('329807053c9aedb59bb4f7848d7749c067dfa3f2638b57f22b0d0c69983fdbad4a02b740b8ec34a6', 27, 1, 'authToken', '[]', 0, '2021-01-24 13:57:53', '2021-01-24 13:57:53', '2022-01-24 14:57:53'),
('32a0460e877cd5a472452943bc599b408a9581f4773a158069a493e5c33f481e78f6e5f4f34c5280', 27, 1, 'authToken', '[]', 0, '2020-12-28 17:20:45', '2020-12-28 17:20:45', '2021-12-28 18:20:45'),
('32aa2a86547bc38ff34184ecc4a0758483fb4bfbbd3b9487fe47f856b1c794f23d78f29021e7cd6a', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:12:35', '2021-01-26 18:12:35', '2022-01-26 19:12:35'),
('32bc1d8ac63824659d5724e1d1e2d780ba6b8faef03456edc828085846baddeac2ea591f30bbba48', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:23:19', '2021-03-27 13:23:19', '2022-03-27 14:23:19'),
('32c943a661af4f462ab0462e10a6f00de678e71df7d85a8da1f38cd06d6726707b9a4867cf54483f', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:59:18', '2021-02-07 13:59:18', '2022-02-07 14:59:18'),
('330bd1e123488cb977660969e72cbd7b80bc9d77a9506dac7dd8df7cae24135c313393e74d0f3bf9', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:43:13', '2020-10-19 11:43:13', '2021-10-19 13:43:13'),
('33450e78e003c38ce46d5dcc7952a1836d0ed47f227ba1da545965eebc9075e3a3a1cb5d7b9d6ccd', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:51:04', '2020-10-31 11:51:04', '2021-10-31 12:51:04'),
('334e0d656ec58115aad47b3080ebba2c916ca227e7b1ffea2b4f6cc0f58754114490a1147b199c2c', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:07:14', '2021-01-07 16:07:14', '2022-01-07 17:07:14'),
('335273ab88acdf2376bfabe53272ca8800e3c4a6794ee80af7c326be9a28a87bf311c83e5e177cc2', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:20:57', '2020-10-31 11:20:57', '2021-10-31 12:20:57'),
('335a70689301d3b7cb37473d6fb5ac33d36f954747ea29c3701b65bde56a031755b35583178b44f3', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:32:56', '2020-12-29 10:32:56', '2021-12-29 11:32:56'),
('336236aa996df84b5e94312c237d633436b86bc80f7012dc813f2c23427ffd95d3a4a3640bc7f2a3', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:02:19', '2020-10-17 11:02:19', '2021-10-17 13:02:19'),
('3374ac9749a54b58c6b49f0ebc44e21593cc656096f8348af48b0b0d9a2e24a9422cf9f637f27f34', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:34:55', '2020-12-28 12:34:55', '2021-12-28 13:34:55'),
('338109dd00899e5989571beac5048f54f454d9d7a52db4e3652d4bb74e837127a9de8eceec095978', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:22:56', '2020-12-31 11:22:56', '2021-12-31 12:22:56'),
('338593a6e184d4e9def3bc6ec36fe5cd91b9d3809ef47c824fcf9fe4413fc66f22040e493fcd7b03', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:19:49', '2020-12-04 12:19:49', '2021-12-04 13:19:49'),
('338d5d6dcda4fff20ff1813abf6b652cfec1090621b26cd3a7de653e46ca044c3b3b941365dea857', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:06:36', '2020-12-29 12:06:36', '2021-12-29 13:06:36'),
('339c7ad913ce872a912b0593282e59966d8386e07a3b0691a9a478207d79190e62bc351bcc669c0d', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:54:14', '2020-10-23 16:54:14', '2021-10-23 18:54:14'),
('33a741dd395e551ee06ce1f2e2d79ca19a735c9dcfbea5dd8f806aa1f73a4608e140eb4a9082a543', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:22:13', '2020-10-27 11:22:13', '2021-10-27 12:22:13'),
('33b5a61fde04c84b2f059b084334f01d521c173cc61edb279d7172bdf2f16be56941a1481737d5e4', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:32:42', '2020-12-06 18:32:42', '2021-12-06 19:32:42'),
('33c5482fa93039fba2ac7a9dd1d66bfe0ee84d6b8e9ce0b9cb57d7497fc1aa3d02fcd90e1928f618', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:37:52', '2020-10-19 12:37:52', '2021-10-19 14:37:52'),
('33edf68d6b46447a6e740532b48402465022ebff9e7c973ebf60caa0434b6e0c8ea66279d0f08af8', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:03:57', '2020-10-11 10:03:57', '2021-10-11 12:03:57'),
('33eee7e6aa47226c478bd14d2be2194d9974ee12f760cdc37a3cc2267a13754da78a874229113c30', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:00:54', '2021-01-07 12:00:54', '2022-01-07 13:00:54'),
('33f6026c0984e7999943176e544fe833c6e893a926d5f88170acabbb839deaeeb2e6756f643e59ac', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:38:09', '2021-01-06 12:38:09', '2022-01-06 13:38:09'),
('340067a845b9ef00c0dccffd52b363793b8e5954ce4a5998fe5ce80271a880033ee26a3ca6eb2bad', 27, 1, 'authToken', '[]', 0, '2021-01-29 18:47:27', '2021-01-29 18:47:27', '2022-01-29 19:47:27'),
('34074620e134e6d56cfbee967144305a1cc6bd6c45d2235715bf614509777a825ced7660574055ca', 12, 1, 'authToken', '[]', 0, '2020-09-26 08:00:16', '2020-09-26 08:00:16', '2021-09-26 10:00:16'),
('340c5be78906d7cc66941405604639e2760835bec19f8379faca30c67b678652b4d719732f38173b', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:56:07', '2020-10-31 11:56:07', '2021-10-31 12:56:07'),
('340d91f209dd579449561e7b6cb4f3f8abbfba07343f06b49a72844da981cbf021046916e63a8a4d', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:13:22', '2020-10-23 15:13:22', '2021-10-23 17:13:22'),
('3410f8965716ebddf56cb5ec375d970f5897d496b1ede284d7e90b999c5be0154f8f39dafc4b5485', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:04:59', '2020-11-22 13:04:59', '2021-11-22 14:04:59'),
('341fc11a544735b9b0cdd4006eaf7dfe4e5822897b26c1ff33da3b1e7ff91ecab946d3fbe61b41c5', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:34:31', '2020-11-19 12:34:31', '2021-11-19 13:34:31'),
('3427b597b07e9d83e40b0a24aaff91cd6b659f0150a6006cbc09a2ac4c0e6b93216c4e16d0104b15', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:57:13', '2020-10-17 10:57:13', '2021-10-17 12:57:13'),
('3442ead6e4124b1557e3b6c2115cc333decf523325b4d02481710b32b5e6b29e86e1ed333ec0f456', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:15:44', '2020-11-05 15:15:44', '2021-11-05 16:15:44'),
('344aff6a5a1c39dbf4f2db4e6e8485323c5d1bfa5440d2918fc9adb390f45d58037dc5a3be253d4f', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:45:05', '2020-10-03 13:45:05', '2021-10-03 15:45:05'),
('3453e2646f622732c11f9ae307ba0e2faee44d11dc5b3834dbda5ff329224f3c990d846e15005357', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:53:47', '2020-10-27 10:53:47', '2021-10-27 11:53:47'),
('345f6dbe059b5df67bed24f9c4c092ceaf8a55b8e02cd1832135437b39b935daebd8e5b8803ebb1e', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:29:45', '2020-11-01 13:29:45', '2021-11-01 14:29:45'),
('346532382e65b6d3bccf7fba39ca51bf397a48a879cf2648c5d48fc9615a2c151a2b2404b7b78143', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:01:29', '2020-10-23 11:01:29', '2021-10-23 13:01:29'),
('346676569dd7476efa75140f76cd81a357edafca5eb98b7927e29657a5cbe8697630f1c55935f9d9', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:18:23', '2020-10-17 14:18:23', '2021-10-17 16:18:23'),
('3486b26b5f45d9dc1bd7e7b2f5017b0b22d9bd9cec936dcaffb2fff0c35557c79dc5c55ef4336a0e', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:03:08', '2021-01-24 11:03:08', '2022-01-24 12:03:08'),
('348adab0bb09c4ccd24ff4563e804c2c4af336f6444ff0d08af81f02c4a32078115c7d3152d22e0c', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:28:52', '2020-11-12 13:28:52', '2021-11-12 14:28:52'),
('34989bc1b8d151d37781a3d33e6699386e4ff3a43fa6dad7a6576f6877e25021a49ea639eab2b39e', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:00:07', '2020-11-14 14:00:07', '2021-11-14 15:00:07'),
('34cd15eb12686908e01db3c485daa9aaf9664c529d2f8a2d2c49a57382a50c1e89e9c29c0e96e628', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:31:11', '2020-10-10 10:31:11', '2021-10-10 12:31:11'),
('34db4ea74359f48e1c0bcc73f01186355b321b542f3ecbb0d8f78d2b0ac0ca60a3ef5ba84dc30a72', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:23:01', '2021-01-29 15:23:01', '2022-01-29 16:23:01'),
('34e7a04793226723e2e8f77b07ba1ac6070bfe276db806d43e9dff7a50246620ff642ab52e352b63', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:03:27', '2020-11-01 11:03:27', '2021-11-01 12:03:27'),
('3505114f3252e9beadb1637b78f6cf82775924f629fc3e019af6c9f20f38d84b7561f5193401987c', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:44:41', '2020-10-19 12:44:41', '2021-10-19 14:44:41'),
('350ac1cf2c307faf2b99e5ada8bf9fc50b398cd1a7a34184d27f9cddc8f4f37fcce5f3d09c01856c', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:38:14', '2021-03-27 12:38:14', '2022-03-27 13:38:14'),
('35102896ac8b23e9fe03becb62bfdb1201ae2423baf4a784b05353cf72e7ddefa8dd0699bca71da9', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:46:03', '2020-11-22 14:46:03', '2021-11-22 15:46:03'),
('3521d6213229f952c726d62fa4136d0ec300783a04a6fb0a02d42bf3a7cd577bc425e0fd9b7716cc', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:16:31', '2021-03-25 18:16:31', '2022-03-25 19:16:31'),
('3523e1f247708f0bcc11f94cce5d71a17fce7683b74d5bb99352497ff50ae2d037f2c8b7e97baef9', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:01:51', '2021-03-27 11:01:51', '2022-03-27 12:01:51'),
('35294ae7fbc0de618ae13111e72a67a4ef996e6abae2f5fb349a20bb39085bdd2b7b70bdae572057', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:13:46', '2020-10-10 11:13:46', '2021-10-10 13:13:46'),
('35493a9bb9b77d7782b17b808f22c4cb574b6e9d50d4fe2c3764ab74eec50f3cfd843a990516206e', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:22:51', '2020-11-01 16:22:51', '2021-11-01 17:22:51'),
('354fff3cef4c2005db7cfdebdd8db6b95283272e0e6772b098583db993993751773a21e0f8b8f834', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:19:07', '2021-01-07 14:19:07', '2022-01-07 15:19:07'),
('35695669b6747fe792f790cd89582765b027bef55997826e7fd04a787a457210415954b5d1baa574', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:48:17', '2020-10-17 10:48:17', '2021-10-17 12:48:17'),
('357d9c1a7a04baade45e6e7c15667f9dd72a14f321f77a01b36e3fb378706f2c2012157afda7dea7', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:49:29', '2020-10-17 08:49:29', '2021-10-17 10:49:29'),
('358323c167ceb4f56aa64aa1c55167284c992803af86bb813d9b778486841849cde168c53decacb4', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:56:16', '2021-01-06 13:56:16', '2022-01-06 14:56:16'),
('35bac6e16df5b8635f98782b2cec1f58dfc52ee92b23b23befca5a42efa75175483882da9e6344d1', 9, 1, 'authToken', '[]', 0, '2020-09-26 07:45:14', '2020-09-26 07:45:14', '2021-09-26 09:45:14');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('35d5accfc70c1ebca7b3b66dea1374a7159c0b667eeb55b8d21c73c6814354d32bb00a3bda6482f4', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:40:45', '2021-01-02 11:40:45', '2022-01-02 12:40:45'),
('35eb65a947a534a95e0a12ef63ee8ff93f38087f0181e1fb8c02c2e0d3fa2f490a300dc1c64ae072', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:49:43', '2020-10-17 12:49:43', '2021-10-17 14:49:43'),
('35f362f8e708984f0245455d11343507c8e7a05e1b6e1c11f3f6001a8be7ece93c619f8d4b91e760', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:25:37', '2021-03-27 13:25:37', '2022-03-27 14:25:37'),
('35fd88e8636c171bae5cd24226862cd5813f18d6af0c6e7d249e59b5ba851db61f582ffc7d389334', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:11:44', '2020-11-19 12:11:44', '2021-11-19 13:11:44'),
('362e1502571d460e722b1edd8f3c63656b0a6ac9467650809b52584bbf42c3f4926db45aa7dd9a76', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:21:06', '2021-01-07 14:21:06', '2022-01-07 15:21:06'),
('365bfc5a30177276cde04e0ae1072a91fc9e5736b8798b7ab012112182770ff92296e7062a3c7d51', 27, 1, 'authToken', '[]', 0, '2020-11-11 17:03:28', '2020-11-11 17:03:28', '2021-11-11 18:03:28'),
('366f7b430926721a6a407acd6df26ae8f35dfb13b9600792436d04fec6b12ba08d0e4f0712867f2a', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:28:56', '2021-01-06 13:28:56', '2022-01-06 14:28:56'),
('3670d061e4217a764304528ce4d9c729275684e7919b2b7259ed7e5a18d8fe76786bc4ffb0f997fb', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:45:27', '2021-01-07 13:45:27', '2022-01-07 14:45:27'),
('3675d3c3e4638d0ef7515b8b5912cee7225451ec7f2075306e4637636dda89d9366b5b3f8393cdca', 27, 1, 'authToken', '[]', 0, '2021-01-21 13:56:20', '2021-01-21 13:56:20', '2022-01-21 14:56:20'),
('3678ffbf282fbfb90487cea1278bb0289c8eb3c33e0739ad1a21ddbc90ca961b2cb454c31095790a', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:07:15', '2020-10-31 17:07:15', '2021-10-31 18:07:15'),
('3680b3c3f5995bbcc931931ccaf12cabf0c7a74378c708fd4a85d33e95365a4ad92d5faffbc90710', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:33:29', '2020-11-14 14:33:29', '2021-11-14 15:33:29'),
('36831fc638c6a7954ff772b516a46a78085fdb88d1e781021b7e85f66f0469df636ffd3acceac5b4', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:33:24', '2020-10-31 11:33:24', '2021-10-31 12:33:24'),
('36ac6fb4b8bcb6703f98b8bf87bf0d04d34ca32d8837c588edd32e7ca5ce1f7a4a1ef3c2db63f076', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:55:02', '2020-10-17 13:55:02', '2021-10-17 15:55:02'),
('36c04febdfd7700fad110aeff471e76d89354e3efaca997a78d06da942310326353da6a8d47cbf83', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:46:25', '2020-10-31 15:46:25', '2021-10-31 16:46:25'),
('36c50738f9e275804a63fceec67ab4f1cc98de3cd986871e5b7425dac899057c587ef56e174ab3cf', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:26:55', '2020-10-25 14:26:55', '2021-10-25 15:26:55'),
('36c8984ecba4cd17d681972138eaaf1c598054aa18f6328b28c5d765959b6ee5efc60d78de9f49b0', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:52:23', '2020-10-23 15:52:23', '2021-10-23 17:52:23'),
('36db25a56ca81ba888641fec372261c65d888c8b30853f68f010129f472d9e169b7d721d65e743c6', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:02:07', '2020-10-15 09:02:07', '2021-10-15 11:02:07'),
('36e49d1ab559721f693bdf66b093946cb7398cad64356d377979ab1ce731e170cc876bda6d859330', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:31:13', '2020-11-22 15:31:13', '2021-11-22 16:31:13'),
('370017f5de35e1be09601fbe64d6c8d3268cc3f44a32534f6b36ba4357b512c9811a21288dca8aa8', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:59:58', '2020-10-23 12:59:58', '2021-10-23 14:59:58'),
('370a931e28cf1a663ff8dbece29ac07a96c451ec942a2814dc9198c561e13aabbcada010d3c722ec', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:41:00', '2020-10-13 09:41:00', '2021-10-13 11:41:00'),
('371b8b5a63aea84d420dd3d0db827907e1336d7906bb4362db48c52b5f20e7c48823a0430d3023b7', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:18:35', '2020-10-23 11:18:35', '2021-10-23 13:18:35'),
('372aa427abe8231b5bfffbaecdf2d9ab30105fb6047c415e13119c6b8b3cf1596fc99bcf63457ba7', 27, 1, 'authToken', '[]', 0, '2020-10-31 13:44:35', '2020-10-31 13:44:35', '2021-10-31 14:44:35'),
('3745cef6d06548934600b8fa5e2712162caa78e7acb4464c3bb7041b64bd6a1d2377af85b0fe8750', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:45:41', '2020-12-06 12:45:41', '2021-12-06 13:45:41'),
('3747213bedffe66ce37d86ac2b643113e61c2645b82d46a9d22baa87da75f01f6f78d5ddfe1ee0a4', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:47:40', '2020-10-11 11:47:40', '2021-10-11 13:47:40'),
('374d0a9d49fd713d65408ca4265f8ed1d2c00242c305f524c83228df3027152e4ea1804050e15350', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:43:27', '2020-10-31 14:43:27', '2021-10-31 15:43:27'),
('37572e486225a07b868395265e0b586c30d8b804794c9d5f51e5f4c12f33ad8c328375881fed6c6d', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:41:51', '2021-01-03 12:41:51', '2022-01-03 13:41:51'),
('3758656e825f47ebcfcb60a763bc5c3caa359d5bb46480dcda42728779d2f3462443bf372ac28673', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:03:47', '2021-01-26 19:03:47', '2022-01-26 20:03:47'),
('375b4919bf7afbb72c59f71d8c1c0a9032b05db5dc4539025de7289dbdaecb6cca762ea178e6dbf0', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:14:20', '2020-11-22 13:14:20', '2021-11-22 14:14:20'),
('3763250bdd992d261d39c66f4ac80055283eac6e570f1e36b28d08b44909885e6061e6f8f9731d4a', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:20:41', '2020-12-31 13:20:41', '2021-12-31 14:20:41'),
('376993f15a3b258b7dc694052d53590a30c0923b81889a05228baa1a44ff52dc7010ed32d23e3f4c', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:01:26', '2020-11-14 14:01:26', '2021-11-14 15:01:26'),
('37782e8b131dd73deb542f26f8ef2c987538c9ee573460b2b764f6ea15273fc2bde8fa5f3b3066b6', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:12:20', '2020-11-05 15:12:20', '2021-11-05 16:12:20'),
('37e72f5edf4a357ee9abaf36eeb0228428ffee58cd9bc50541c0957481c011941bde9581c5e0c509', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:28:35', '2020-12-04 12:28:35', '2021-12-04 13:28:35'),
('37eb8121089414c389d8b178d57c0911c59c5b0af676a1b97a64905ea9d7f26eecbc38d0dd0c8979', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:01:44', '2020-10-05 17:01:44', '2021-10-05 19:01:44'),
('37f050a1b935d5de977949ac024005dea7efaa6c86e4cbfafc4eba7b56b7b4fb1a95cbe97486479e', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:48:09', '2020-10-10 10:48:09', '2021-10-10 12:48:09'),
('37ff4a4ae1fb4d6647feac3fd16a5cdbc7a459613ebc2db073b107a7078848ee145d44a014e2fe62', 27, 1, 'authToken', '[]', 0, '2021-01-27 18:58:30', '2021-01-27 18:58:30', '2022-01-27 19:58:30'),
('3803b3b1e039a3da43d30be7edaee17586c3da7539c200a8fbffc4847bd25982827b3f1f8c3a134a', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:24:27', '2021-01-29 15:24:27', '2022-01-29 16:24:27'),
('381cbc7fc034915ef65a85e97c5d361ac6664f6ec84a1ee7e2bfe65736fdc7e221c753800d2a92eb', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:09:30', '2020-10-15 11:09:30', '2021-10-15 13:09:30'),
('3835534946274334b3fb3b917dd0ab9cd827ed324e70e3dbac3a38302dbdb1bc8c2d4be16d248d8d', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:59:35', '2021-01-29 16:59:35', '2022-01-29 17:59:35'),
('383a282ca74daf7b318bc0ff43f0bd3b4158f49b27d180aafa856dbf7ba338b399011c12f4812eec', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:18:13', '2020-10-31 09:18:13', '2021-10-31 10:18:13'),
('383e3606d25e8aab76a94408590fc04416a7e99334803c0a648c8d5bca114cb86ed71d8565500150', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:22:36', '2021-01-07 14:22:36', '2022-01-07 15:22:36'),
('38565c3e71d65d21fd5dc154ffd22875b7cb464feef800ee7f15d693f2ed90f0ee1fb3f615e3ed15', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:39:58', '2020-10-19 13:39:58', '2021-10-19 15:39:58'),
('385670f338c560c9a815b9a852d80bef26fb133ddaf08afefa4f67baea6af29d02ec51070a1c3e0d', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:21:46', '2020-10-25 13:21:46', '2021-10-25 14:21:46'),
('386ad82f8798dd91a481e5a4d465b486984a17a7a3efecf84232fa2b524eb6fdf32e4f696506f594', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:23:38', '2021-01-10 12:23:38', '2022-01-10 13:23:38'),
('386cf91a977d700ee128b658fcef5a10859559693b71dce7dde1fa9264782f6255b4530ecda08258', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:39:05', '2020-12-06 12:39:05', '2021-12-06 13:39:05'),
('387951c8a1873d307abc2709c0b98e3795291d35f454a8dd38f8728219469c48d009473809f783b0', 27, 1, 'authToken', '[]', 0, '2020-10-27 18:10:48', '2020-10-27 18:10:48', '2021-10-27 19:10:48'),
('388fad2529df002645cc607adaf85377972db2e1f47a79a0818f379f65cb0dc062a165e3588f9c13', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:37:42', '2021-01-07 14:37:42', '2022-01-07 15:37:42'),
('3896ce8064fa53798cb0b82234eb43c0fe84e5df93a75db61c0bb97b7e8eaa02302896250b0d59e1', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:45:00', '2020-10-23 16:45:00', '2021-10-23 18:45:00'),
('38ac38a830069a569ff6d5a7e35c75cbc53cef6224a4cb797d167a7af79a227a8a4ee190ef3bc45b', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:11:06', '2020-11-12 09:11:06', '2021-11-12 10:11:06'),
('38c2f4e5c6994f1a5f4788ad7c5a65d6e88e7ab2ac4c998c8b0a6a0dd88dc24ab6e11f79a7a88d81', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:32:30', '2021-02-07 14:32:30', '2022-02-07 15:32:30'),
('38c73fa4d585c12b088940042cec02f0cb2799e05e24ca77c5ad4a248dbf094eb715a627898d21e0', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:32:24', '2020-12-31 10:32:24', '2021-12-31 11:32:24'),
('38cb691c8282f41e2a1c63152a438746c0fe4bd157d614fa8e010b8a1deecda031fcb56ae6c2f37d', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:21:39', '2020-11-05 16:21:39', '2021-11-05 17:21:39'),
('38f0e928b147d31a7eee85995adee87071dd53ac3425635f5cb6e8edb0fcfc44241988afb7612ebf', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:36:55', '2020-10-05 17:36:55', '2021-10-05 19:36:55'),
('3910d142e6bcff87c2793c76c2a0998acf91e9df4c7f563768d508409de7c244f9a07592a31c3dc8', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:29:19', '2020-10-23 16:29:19', '2021-10-23 18:29:19'),
('39118aef383956a0e3474c5f6fbe8ed9c8324a9121139202b12c84c7797a88f4eba8bcbfc34d9dfe', 27, 1, 'authToken', '[]', 0, '2021-01-06 17:09:13', '2021-01-06 17:09:13', '2022-01-06 18:09:13'),
('3917e0f65693ea1cbc9f5d8f109404a47db042e193c56ad1ee081bea9eaaf3da3152413a2b51f8a4', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:19:14', '2020-10-03 14:19:14', '2021-10-03 16:19:14'),
('3930f61fcebe049a684fb9ef78bac4d522e5cf8e1661ccb235e269e6beb26c8ece328dfc4982e3d8', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:05:04', '2020-10-27 13:05:04', '2021-10-27 14:05:04'),
('393d61adcfe45484e78b1fe55d9511dfd8259c71255dce99ed6032c8e6d54ad55947081ac63bdb52', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:15:34', '2020-10-13 10:15:34', '2021-10-13 12:15:34'),
('3951cb7094cc86b593bcc0ad8c0431a54dbeeec6c4fcabb7261e62f73af3b88ead31c534add38149', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:44:43', '2020-11-05 14:44:43', '2021-11-05 15:44:43'),
('39814d693a3a45c4d307e34acb80a077e75c142bb8c5f87ce1f1c2c9892fa51ca2a631a7ac738c05', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:46:16', '2020-10-27 11:46:16', '2021-10-27 12:46:16'),
('39885fb7a252c2a58fb3eba7706cf49b8ebc9906f9a574778573710119013be9691ea08f86414b80', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:06:18', '2021-01-30 12:06:18', '2022-01-30 13:06:18'),
('398c1b8887fbfa536a2a1120c6e939138b7e683e7c73eca0653c65bca2ad6bcc771883be14c6a1f4', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:24:18', '2020-12-06 10:24:18', '2021-12-06 11:24:18'),
('3993d7760a41edb82f30ace53fccf765df4de4766bbc1df60e0c542d00c1a1d2965033728d672fe8', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:32:08', '2020-10-28 17:32:08', '2021-10-28 18:32:08'),
('39943b7c7b901e249e245eb3d25f3f1553601edb03bf4ea81b0ff56a09da05c2d5c92ea921aa19fa', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:51:49', '2020-11-05 15:51:49', '2021-11-05 16:51:49'),
('399f7335a88a69603fc877ebfdcb54ce750c4edb3d39f0133b4ed92d97cc9f5296169c4f7cd35636', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:45:03', '2020-11-19 12:45:03', '2021-11-19 13:45:03'),
('39a079916d0a626554c8db2ef2cb63ef990b6b7a9ffd6e96d8839dc659d7db69e14c7c25bca7f241', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:51:50', '2020-10-17 12:51:50', '2021-10-17 14:51:50'),
('39d4d352eafa7811a26676da9fc15dcd67f3d6338b3b236c1a75ddfacef79179e817c781d9580164', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:55:29', '2021-01-01 10:55:29', '2022-01-01 11:55:29'),
('39d93c98b63a0d00b779f9ada2061fa81d3440743211edda1fcc2adea113021245b80222f232303d', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:57:20', '2020-10-31 10:57:20', '2021-10-31 11:57:20'),
('39e14450ce1c69df13674443547e2dd8574b9fc13c1c0b9415edfbd6aacf08d2031605369694aa7e', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:45:10', '2020-10-29 07:45:10', '2021-10-29 08:45:10'),
('3a01b3786bb2437ad6597269191a8d86103c82ccf96d3cee3164855bb9381cab24041d6f1c42559d', 22, 1, 'authToken', '[]', 0, '2020-10-19 14:50:25', '2020-10-19 14:50:25', '2021-10-19 16:50:25'),
('3a297d209e9300ed655d29bd3d56b229825f2201c0d3a5da1d6dfc7b629fb2c8465b71cf7006a4bc', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:48:41', '2020-10-23 10:48:41', '2021-10-23 12:48:41'),
('3a37b41eda6c32528e0cad2a0964e535152d4a31e3f9d3f20d5c45fbe8a78452607629ab2584e34c', 27, 1, 'authToken', '[]', 0, '2020-11-11 17:08:20', '2020-11-11 17:08:20', '2021-11-11 18:08:20'),
('3a438c8a29a5c2148710ab2ede7a9e08b62aa4393effb1817c99d720ddef3926fb66299a2c247baf', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:39:47', '2020-12-31 10:39:47', '2021-12-31 11:39:47'),
('3a46ccfc1901379499e6068d7e10f36c81468d4afa345d871793d4a0fb0e630a7039d5461ec03c6b', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:33:13', '2020-10-19 14:33:13', '2021-10-19 16:33:13'),
('3a516a48d11a4f55d16d8b43145056cf4ce52f3f733d6378113157fefabb98538811f1a02f9465f2', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:36:12', '2020-12-29 10:36:12', '2021-12-29 11:36:12'),
('3a7b6d9dd9a12e9f94b647982dbf9059a3465de11a31149210ad9890ab620386b26e8740028546b1', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:49:26', '2021-01-29 15:49:26', '2022-01-29 16:49:26'),
('3a850486f2dd98988661b9257bb58e3e6327bf7a403057e8cc5d93b7bf68ac16761f5f8457616893', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:06:09', '2020-11-01 12:06:09', '2021-11-01 13:06:09'),
('3a89994b8d9d4b8f3470af59f980cf8653147a657ac58aa7b48ec01b2d48bf722640c268ec16e0c7', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:56:55', '2020-12-28 10:56:55', '2021-12-28 11:56:55'),
('3a8a9a17eb8b1d4a05dfa373fc4fcf192b776958320f862735f73fb8e497488701552dc3a5174d9a', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:57:06', '2021-01-03 12:57:06', '2022-01-03 13:57:06'),
('3aa4f6de21dc878c5447dfa8b0d5d7e53eb28ee1626dd36802fc56a118a5407a8a3f71af2f4b0ea7', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:51:19', '2020-12-28 10:51:19', '2021-12-28 11:51:19'),
('3ab23eaba178eeb0abf1e99ff420a76eab9899c1a15e13461420cc1ed9599b700c8ee5b0daba7673', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:45:05', '2020-10-23 15:45:05', '2021-10-23 17:45:05'),
('3ab7c03f4dd696c077528e806723ee8543fb24fd50c344ea4b79188488a95bcf1455591ad71f7985', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:49:16', '2020-11-19 12:49:16', '2021-11-19 13:49:16'),
('3adaf82e555f261f51aff16da78575a9d8e550f142b63897f6fdcd02543b83a802d56f619900c735', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:47', '2021-01-07 15:53:47', '2022-01-07 16:53:47'),
('3b01c20b9e432c5f4efcc95b3b12259ccf5d978123e969f005c17c7d29d8cbdce6d28592cf11b32d', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:16:49', '2021-01-06 12:16:49', '2022-01-06 13:16:49'),
('3b38584d7f1d7370f12aec8d99b35b9424da0bedd1a6754b63d00c290e352cad7eb70f944f9d0faa', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:35:21', '2020-10-27 10:35:21', '2021-10-27 11:35:21'),
('3b61d15b454b38f332a5db8fd721dcd356a4f200bf5247432d756672a385c315d64f99f5bbf37eb8', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:14:03', '2021-01-06 12:14:03', '2022-01-06 13:14:03'),
('3b65f4d57677554db4c740d57cc244e2846abf9ed9254b62faefb1e7f90bcee8c8fe20ff2f203cab', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:35:43', '2021-01-28 08:35:43', '2022-01-28 09:35:43'),
('3b6c398b9a4a7ffbab0aeaf1139dfa831520bbd81b738985fcad28322d6cc375f5cb884c01e330e7', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:04:57', '2020-10-17 11:04:57', '2021-10-17 13:04:57'),
('3b74a6481a4e71b42fffbf0908032bee1b0d14a5d5d6ab82d887701f3cd41f3422898ac88b721553', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:16:39', '2020-12-28 11:16:39', '2021-12-28 12:16:39'),
('3b99cb15b840d41c1d01d7cd71d0aa07a7527d24d7a92527b433bd6afd7e0d40bde28243b5188526', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:15:05', '2021-01-07 14:15:05', '2022-01-07 15:15:05'),
('3ba8e2c96c0490730869bf941607a8754de572953f1d49bec4d4580e757ca41eb2df06ad4d5cf3b9', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:22:08', '2020-10-31 14:22:08', '2021-10-31 15:22:08'),
('3bb8efbeb919951ae1b1b0fbf2926cf5b3768911a9f7a461e85c10d5667eccbc04c15af3806b8082', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:35:14', '2020-10-23 12:35:14', '2021-10-23 14:35:14'),
('3bc81a899887587ef7601577d101e2dc773729779414298f9d6fd57d16f12dc05e00bc07c7f29178', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:08:34', '2021-01-03 13:08:34', '2022-01-03 14:08:34'),
('3bc9aed2c42982bdef910c29f0a46a44b74e11edb36e9812c82f507c9b4ffdfcde3d3baba9371b13', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:39:18', '2020-10-31 16:39:18', '2021-10-31 17:39:18'),
('3bca0fbba1893814fc08ccb2702d75d382c469f0a78bb45f91308437d492ed2bdb6adcbc2e544eaa', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:25:42', '2020-10-20 09:25:42', '2021-10-20 11:25:42'),
('3bd0e4c02bf1ccee1a81fd1aa4c860b42ca3985eaf79e430f88e8091d1dd75b8470f9ac59b7efc48', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:25:11', '2020-11-01 17:25:11', '2021-11-01 18:25:11'),
('3bd8ab2bd247177603aa3e6cc123df8893669a1d834b7763633441a4c665a77f83cec41e6b28c12f', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:50:43', '2021-01-06 13:50:43', '2022-01-06 14:50:43'),
('3be694e6dced50aa25f7fe7828c7cb2f307428603c93ff87b77d9e63d86e058cdb85f9cd91ab4965', 27, 1, 'authToken', '[]', 0, '2021-01-25 16:53:50', '2021-01-25 16:53:50', '2022-01-25 17:53:50'),
('3bea0ef8bb12f6754656e7cebc7c8cce24ac73ee46e971f32f7d24262cf3a410f696a2fb85cc3eb9', 27, 1, 'authToken', '[]', 0, '2021-01-29 17:02:39', '2021-01-29 17:02:39', '2022-01-29 18:02:39'),
('3bf222fbad4cd3eba9b88e5d235e039f42bf0ef5cfb967b4eb43111d2e6c32e7e96e33e911d706a2', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:35:57', '2020-10-29 09:35:57', '2021-10-29 10:35:57'),
('3c42bbd996bf3b510c0af60c7925c4acf37badf3f83e834f09bf531079e4ff29e28833b485fde011', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:24:34', '2020-11-05 16:24:34', '2021-11-05 17:24:34'),
('3c6fe1a43178de53438596b5ad8aa8f99cbf28665e1ac78d378760c2b277c58df2b917e87aabd5fb', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:34:01', '2020-12-04 10:34:01', '2021-12-04 11:34:01'),
('3c75e0d57285b2e4f69bb70ec3c6e5df04c8e0749305f27c297955004187ef541fec7f980babe70a', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:18:10', '2021-01-01 12:18:10', '2022-01-01 13:18:10'),
('3c76fc8a56c9ac3f523578831090e84b26147589969adf92db64ccefd2008d949008d03cffde68f9', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:00:25', '2021-01-07 16:00:25', '2022-01-07 17:00:25'),
('3c84b73b093f01ea32e013d4a57fd96c467b38d1705afedd49aaeb68abee320e1655ca0de43eb95e', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:03:37', '2020-10-17 14:03:37', '2021-10-17 16:03:37'),
('3ca6e7189fb3aceccb8818b5204c0371937d0d47310610eb962f875fd7c0806a6a45117c9b4b5d99', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:54:00', '2020-10-15 08:54:00', '2021-10-15 10:54:00'),
('3cbb587fd22a04e28b42360fc59ddbfcd5d18cf81c23536a54f5517656c9f64d17dbb3bd0e1a21de', 27, 1, 'authToken', '[]', 0, '2021-01-29 18:46:55', '2021-01-29 18:46:55', '2022-01-29 19:46:55'),
('3cc3769383120e24880c5d7cd94da7eb05cedc14f3ae90e7a302901de72d96c2bfa1ad8c15be29f8', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:51:04', '2020-10-10 10:51:04', '2021-10-10 12:51:04'),
('3ce16f8550b368690ce62ed0e1e690bc9c2e18521696980093eff4a1a6f9826db664bfbf44365764', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:42:53', '2021-01-26 18:42:53', '2022-01-26 19:42:53'),
('3cf99e870e3739f41ff159e112fc91686f68bf9ae91f24018a01ddc014ec8262203ce644c151b438', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:28:16', '2020-11-22 15:28:16', '2021-11-22 16:28:16'),
('3d072a3b1e8deb13a8c2377459db55e1205379f7edcfca1197052c62440c9f37a31bd00c7b7198f7', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:19:40', '2020-10-25 13:19:40', '2021-10-25 14:19:40'),
('3d0aaec51dd4f1fae3dcc0ee4ce13d25dc4b68023041b7e8333f17ca626d31a04284f107fe81af87', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:41:41', '2020-10-17 09:41:41', '2021-10-17 11:41:41'),
('3d11986a64495f11b4dc8dbf08ff27e17641b6d4f735c8e7849ea7946867ffa33e40f8edbdab488f', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:12:06', '2020-10-08 15:12:06', '2021-10-08 17:12:06'),
('3d26fb57749bbe4e40e6896cddc9c83b2d06134e94dc167e47634993cd55059ccd14beb293f6546b', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:24:20', '2020-11-05 16:24:20', '2021-11-05 17:24:20'),
('3d37fd36ebac136d12e9bfffc4a2f56cddd2a489685d7004357d4b7d37e48e07a76d295d8c142ba2', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:37:34', '2020-10-13 08:37:34', '2021-10-13 10:37:34'),
('3d673dbf4df622ebff2e87a34920bf99f6bb070ecadffbcc1dad5439dd01cf039d0f814d1ed82139', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:37:10', '2020-11-14 15:37:10', '2021-11-14 16:37:10'),
('3d8230ee622a2dd40286458ee400da73be9dfefc03b289a515cac04fa524fea010415c01ba17ec7a', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:21:15', '2020-10-25 14:21:15', '2021-10-25 15:21:15'),
('3d855865a2307d8db0857cae38986073d9bff588c3189dc3e24b2238e4e5e71e1aa4a78a1ab75535', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:46:39', '2020-10-27 16:46:39', '2021-10-27 17:46:39'),
('3d94c222a359a0b2b65f88cbc0661eac96469cd86a971e4c115dc8ba7be99a6777c833b1f614272d', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:37:35', '2021-01-06 12:37:35', '2022-01-06 13:37:35'),
('3db6f29cecd8415a593fb042ac8ea29a140b9c022836ba88a3287621c92f045d66ce0cce58cbd4f7', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:41:33', '2021-01-07 13:41:33', '2022-01-07 14:41:33'),
('3dca163a92e3507d1003d0aef16f137b8560d29e0b7e0325835cf6b85e31541ee12ebbe3206a3895', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:45:38', '2021-01-06 18:45:38', '2022-01-06 19:45:38'),
('3df63c86d19e7c881bc6072f597721392f69ff40dbf163d8ed947b0081814566251dbc4a47c62b2f', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:12:32', '2020-11-01 11:12:32', '2021-11-01 12:12:32'),
('3e109f56ead620de7a62b628de91051788110b6bb65f8caad1ecc8dc328dfe45fb05e5372e1f7cab', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:06:06', '2020-10-23 11:06:06', '2021-10-23 13:06:06'),
('3e1c012c3950e7a0b848d5d979ab525863ef034a7b04d2557f85ca7fe1396caee6f17fcd880b049c', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:34:17', '2020-10-11 11:34:17', '2021-10-11 13:34:17'),
('3e1ed0bfda6f3fd106dd74f164dc27fd962417a02f1f58ea505f36efe0825d23a8f7706450c77ad4', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:34:28', '2020-10-28 17:34:28', '2021-10-28 18:34:28'),
('3e25591297ff62a9399e2d7281df76a73ad2aeee5c173c125704a009454118e06135606e0c7759c4', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:35:03', '2021-01-07 15:35:03', '2022-01-07 16:35:03'),
('3e26cb2f23db8456703b0b31821ba2791c3bb84b781a431738f8b77e74bf5afdbea196f23fcb36f2', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:17:46', '2020-10-18 08:17:46', '2021-10-18 10:17:46'),
('3e3182adfcd484b21aa546e55e069af270e87aa77de1d585f933b3bcdb030a19598527a0004555d1', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:06:46', '2020-11-22 13:06:46', '2021-11-22 14:06:46'),
('3e4b0416d67cfa85b790966f38c7e0dc7432b9f24d980e9b39ea1b7c986f19024c1593a0af539940', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:40:09', '2020-10-31 16:40:09', '2021-10-31 17:40:09'),
('3e61bae8c460b7907467215b73781c1f4b40390c368862c8c775df08c76972fa92194f356040d512', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:12:49', '2020-10-23 11:12:49', '2021-10-23 13:12:49'),
('3e640edbdb9b3870c4d23c61c7061bb8fc26f5f914d98fae0965f6d7ecee545ec13eae302ae5f436', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:55:11', '2020-10-31 15:55:11', '2021-10-31 16:55:11'),
('3e7a8f66e7b56f1b01300a7dbf89865eb774a6ef57f9ce95dc28c8cf565aeb46828db91ed9569f90', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:20:23', '2020-12-28 11:20:23', '2021-12-28 12:20:23'),
('3e858ee6a0ea5568b400f349ac10202216785c00a25928a31077c8f5af8e67b49c9fd6439a2e6973', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:40:12', '2021-01-01 12:40:12', '2022-01-01 13:40:12'),
('3e98ce0700dccad8602d1cddcc976ece0483f81d2cd041042980100f6180bd652c293ab997a48d74', 27, 1, 'authToken', '[]', 0, '2020-10-27 09:57:11', '2020-10-27 09:57:11', '2021-10-27 10:57:11'),
('3ea0c41ab7017125a9e4e0be8856db7e6dcc72bf6d5ee267a3625051d70852ea49f2bd88899e882d', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:20:52', '2020-12-31 13:20:52', '2021-12-31 14:20:52'),
('3ea15810f55b8232499edfad1d514a8719cdc0b69fb39b09bfebf420064ca9649c7342faf8cf1942', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:33:32', '2020-11-01 16:33:32', '2021-11-01 17:33:32'),
('3eb83e0e0732f3999691d703701ff435e4ab8b6d19f4c2637d63c66a822012ef80ee2a740f05ef0e', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:57:05', '2020-10-15 09:57:05', '2021-10-15 11:57:05'),
('3ee09ed0751bfcf9e8b2ab2ff0a98d57546d4ff8d48464e13ccb6ad52b68998e6747411a95aa14d3', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:59:49', '2020-10-15 08:59:49', '2021-10-15 10:59:49'),
('3efaacdbf5e98910231f3a0502f5baeb90c6c68ba93543d81c4f9d3de4e8bd31d8622b6f85c48ada', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:59:56', '2020-10-15 08:59:56', '2021-10-15 10:59:56'),
('3f04401052de62ff67c5d7e5e3af036db2330c59219c9376721f4253dd6eb549645e6a9a286d9966', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:52:18', '2020-12-06 10:52:18', '2021-12-06 11:52:18'),
('3f1e0b920919b2909b9afc2bc260fb1e292b5a0fd76c1d69782acd4ba3e10e4413b3d9c9d3409479', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:30:21', '2021-01-26 17:30:21', '2022-01-26 18:30:21'),
('3f2361762d83485d585a06ba4187f38e3a87e900995b2520947fa9310a1b895e007f467d6b34fa4b', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:52:41', '2020-10-05 16:52:41', '2021-10-05 18:52:41'),
('3f90b579d36167caf7e075c3d84758bb1a9e9f28582aa2891ad540d2ea1ee57787ae0e55b17ebca1', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:24:00', '2020-09-27 10:24:00', '2021-09-27 12:24:00'),
('3f91b01d46846ff754d34d20986838d97cb8b1a1ac50de251f607c39797e9e518b362105165eb376', 27, 1, 'authToken', '[]', 0, '2021-01-25 17:36:06', '2021-01-25 17:36:06', '2022-01-25 18:36:06'),
('3f968cdefd591e1816e2e56e25ddb3938cbf3dc6430b0a0435831a1b0e7ee3a8dd0754a25b622723', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:55:20', '2020-12-28 10:55:20', '2021-12-28 11:55:20'),
('3fa01de4151d3ac0c010980c4c478a5885699d93336f12ec55d4eccad3671f6147c88ac63e13d183', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:38:41', '2020-09-27 10:38:41', '2021-09-27 12:38:41'),
('3fa506ab8307cfefcce67f62297d3a05381da48aee6d33bd2d9015fd9d3875b318ac19c859030d31', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:36:00', '2020-11-19 12:36:00', '2021-11-19 13:36:00'),
('3fa754c4e7fc2dde8a6c2c429e7904df859b731c44f526810124733ca8ac82bb16e59b1840aceec4', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:37:50', '2020-11-19 11:37:50', '2021-11-19 12:37:50'),
('3fa9173b943326fa4ca6ca023e1ce239f89b9d706e261a01277ec4e2a3030c9fbf4e709251cb2bc9', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:01:44', '2021-03-25 18:01:44', '2022-03-25 19:01:44'),
('3faba75dea4fb8e3c30d76732462888b8c76b287d83499461ec7df58a1847bd60a4e41390a3fe65c', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:22:04', '2020-12-04 10:22:04', '2021-12-04 11:22:04'),
('3fc66cc3123a2b3f9290ba92ddcbebf25b05e2b4c2f257f38c0d8152bcfcfaf20292a75175da7f6d', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:30:45', '2020-12-06 10:30:45', '2021-12-06 11:30:45'),
('3fd406b0ed4202d1f2a55c7fd8f71933cececc391affb4cb4787986f1b114ae71238ca361ecb4af3', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:42:47', '2020-10-23 11:42:47', '2021-10-23 13:42:47'),
('3fdaf917e471ac9a596ec7c49148adfb3aa87ac54b9a6844d2d7c1c853a1db97803de856fd3653ae', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:52:18', '2020-10-18 09:52:18', '2021-10-18 11:52:18'),
('3fff164da2e41ebb88498990fb4ed1aa6b441eb9e4694085f715693d710909d2c51c08e324dae549', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:00:13', '2020-10-10 13:00:13', '2021-10-10 15:00:13'),
('400853d2c25f2afcff892b43b87295c70f92a02cf0e37ff477735289fdcdde5403959aa82b79916e', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:26:12', '2020-11-05 16:26:12', '2021-11-05 17:26:12'),
('4015a5caa60febfe2eda0cfd8614f3c26fa81c1eee40f045fee73a2317842e33e412a728ebfb5021', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:39:35', '2020-11-14 12:39:35', '2021-11-14 13:39:35'),
('406f3dfeed922179877673ea441e76fd7948766c9db52f3d11c55d28d27284ba2652bdbef7cfbd8d', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:44:29', '2020-10-23 12:44:29', '2021-10-23 14:44:29'),
('4080272bd34b98a0e7a50953b662dcb5956cd250f59ee41379049cb6e69df58b07c0cc9868e0327a', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:11:52', '2020-10-25 13:11:52', '2021-10-25 14:11:52'),
('40893dc3af1ab35297e773d286508e76b6727599601b913038af66954e06383ab183e685332ce850', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:40:05', '2020-10-13 11:40:05', '2021-10-13 13:40:05'),
('40938763e04b4a908ae2fa4b19a8c20e9d99d9abca1f8ce65a53a298b7dde30bc01bf479c5e306d4', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:58:33', '2021-01-03 13:58:33', '2022-01-03 14:58:33'),
('40b8106953469bbd196ff99e4768c3cab305eddadef7f540f68651d762f26c24efe082ea730f79dd', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:46:32', '2020-11-12 13:46:32', '2021-11-12 14:46:32'),
('40c4f9897e2b3ad3eb3137204f1629d9ae36e595e2727a09c6e00988076f73b489eff04225eb3cda', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:16:57', '2020-11-11 16:16:57', '2021-11-11 17:16:57'),
('40d37cd3857b6a28c6b8e3f27681f3fe2eb5217101bc1b567ddb5e21b58f40cac85542fdf739204d', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:38:14', '2020-12-06 10:38:14', '2021-12-06 11:38:14'),
('40ec8a0bcf7293655139f4e5b8652a0da331eaf52fc25b53b270815f61c913bf096a4bfeb68913e3', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:25:43', '2020-11-14 15:25:43', '2021-11-14 16:25:43'),
('410e376310c2baa537127519dd5963038c127f4cfeaaedd815f14b846b83101578ec94791675f350', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:57:53', '2020-10-15 08:57:53', '2021-10-15 10:57:53'),
('4115c24867c3b35fbda814eeea21de40fe0ed93fe4827a46173d638cf910684fea91d7fd0e9df034', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:21:26', '2020-10-29 09:21:26', '2021-10-29 10:21:26'),
('411707da2191dd8d7bbe31e5599c73b439f2f7172310b33e8076803a9d2fbb8ce39781c16237c687', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:52:17', '2020-10-03 13:52:17', '2021-10-03 15:52:17'),
('41221d7d0d887353316353bfb1368b9aa0e23012846f3596c7ee02d9d71b925075bbe7179df7249e', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:33:31', '2020-10-23 16:33:31', '2021-10-23 18:33:31'),
('4127910d8dd1a437700b4c6ba122065dc3763dcebcf332180c534ce88b8f8e6ff842a1991992ccb3', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:59:33', '2020-10-17 08:59:33', '2021-10-17 10:59:33'),
('4132bef6af4e0fc2083d5d3f545dfeb850a05bc2ec291dd19f98828c0cfdcb197ee284e00e0f09d5', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:37:50', '2020-10-30 11:37:50', '2021-10-30 12:37:50'),
('4132f36dc93f2273950a2d16b8220b58e74c1a3f0bf0dc2d0594aae5b65f269ecec55a7c079ccb79', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:54:57', '2020-10-17 11:54:57', '2021-10-17 13:54:57'),
('413e3a3ae4456359200ba93882c0068449bac79691e8a0d37d1ac4c6639e2a89d5ede4957bdc863c', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:02:56', '2020-12-28 11:02:56', '2021-12-28 12:02:56'),
('415e84d5805810629ad9a6917cf1b5a84d6686b7ba36951182b49b80ef22b4eb19078333c227f4c2', 27, 1, 'authToken', '[]', 0, '2020-10-31 12:02:00', '2020-10-31 12:02:00', '2021-10-31 13:02:00'),
('4179a45148bd5c72522e011178a78b164df7e27dffeea073749b92ed96c0abdb28a278d7db89a8f2', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:05:48', '2020-10-10 11:05:48', '2021-10-10 13:05:48'),
('417befb7d17acbc23acf2175bf3cbebfd22bf380918b1eaf59f34d631373b39663ea5ad8716edde5', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:03:03', '2020-11-19 12:03:03', '2021-11-19 13:03:03'),
('417d7b3bd4e9f4d53841dc497877747389dc750350f994c55267ffe7872453a28d8c19484dd9b746', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:08:52', '2020-10-18 12:08:52', '2021-10-18 14:08:52'),
('41ada00e96b3f9093be78056bf49adb058e090448ab58bdf557bebb214ac9abf6ea0eaf2b8903fcd', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:42:44', '2020-10-19 12:42:44', '2021-10-19 14:42:44'),
('41ae8eb5c34d5807a3b41032ceb314e68e20286d65eef491cb8b179b740ba5dea3ab715ae1dcf132', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:05:56', '2021-01-29 16:05:56', '2022-01-29 17:05:56'),
('41b47f447f5e3b1d5c1146c312fa8c297a40bc53ef988fc9e7bc2ebdec0f8290b6e4fe5c8c333675', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:55:06', '2020-10-17 10:55:06', '2021-10-17 12:55:06'),
('41c7809af5bd9973631c0dbb5ab3f725f1d5fc6ac963f5f81d9bdc509969fae6957c803bba88add9', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:31:11', '2020-10-31 16:31:11', '2021-10-31 17:31:11'),
('41efe5dc9e3a0bc5c7be668adfe7dc384d5e002421c510533f5267f0c1aa6f3fb41c9604ad404fca', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:53:37', '2020-10-08 15:53:37', '2021-10-08 17:53:37'),
('41f382b7a0399bda03a58df9fa45ddcc7189b92cd58278dc6f18348d285c020e7c7ac885db4d6a22', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:19:35', '2021-02-07 13:19:35', '2022-02-07 14:19:35'),
('41fe45f529c8ee339065b2a2e7d13fb4981afa820908d498f18cf48787f0d7e0e54e749cd02fdc76', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:11:05', '2020-09-27 10:11:05', '2021-09-27 12:11:05'),
('420c2a3dd5190049bb592a4f183e906f01b934e5abaf7b48419df13595a65a0d5afc92b536c3e394', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:32:36', '2021-01-07 15:32:36', '2022-01-07 16:32:36'),
('421905108d46848a7c73e2be754b8427fb79451ccee0dd889ac5a8426030674e36bc925a92012d43', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:01:25', '2020-11-19 12:01:25', '2021-11-19 13:01:25'),
('4230b2ca63bf955c097938f317852f90c14bb81e12145a1d3d231223967470f2eb5054a862bb4cca', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:17:04', '2020-10-03 13:17:04', '2021-10-03 15:17:04'),
('424a6d4d3830c6df0001a5def8e1f480fa91ab136101d540422fd5604178439f8113166ab30e2e67', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:56:09', '2020-10-03 12:56:09', '2021-10-03 14:56:09'),
('424ab24298ada5e3b86d79c2d19b0b9226ae54dc1a9b5dfd6ccd4fc242fc2241caa69ba448ebb02c', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:10:16', '2020-10-27 13:10:16', '2021-10-27 14:10:16'),
('427208793c5530412a2cb9ee261c890a44fed058de5c572f5bccb6774442fbe50864447faddebdda', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:24:05', '2021-01-29 15:24:05', '2022-01-29 16:24:05'),
('4278f6754273e4cb5f13fb9ba22189e0d66381a50c0e970fc7c11fd7ac6a23a0c7986187ad8a4592', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:39:08', '2020-10-15 12:39:08', '2021-10-15 14:39:08'),
('428783f8d890cfb847b247841d55cf5fb6cbeba9761bc90590ec92425f8a89466f25b4fa5fb16185', 27, 1, 'authToken', '[]', 0, '2021-01-21 14:00:57', '2021-01-21 14:00:57', '2022-01-21 15:00:57'),
('4290cf12bb0eb4f7ab2c53a94afe82cd70ddb6158aa91f79b128026d757898a74eeb6cb99b8528e6', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:30:49', '2020-11-22 13:30:49', '2021-11-22 14:30:49'),
('429186ba4c9fe30ea81ace0130038c048aa45d425387ef918b76472d7f8cdedd483257a7985c5ed3', 27, 1, 'authToken', '[]', 0, '2021-01-09 10:28:29', '2021-01-09 10:28:29', '2022-01-09 11:28:29'),
('42945f96829d7c7c08a854c8e2ce63fd27f66bda33ef18139010bb1d5fd00beb6f86c38281a49381', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:56:12', '2021-02-07 14:56:12', '2022-02-07 15:56:12'),
('42ba3dcf2d75c19608ea616169d07807ba439bcd9dc3a9641f0acdd686b91dba9684be73e7dfd786', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:37:08', '2021-01-17 14:37:08', '2022-01-17 15:37:08'),
('42de89a07f0b9d16792293751f6b2e89c16d801933ab7612552c466619e074996d1d1fefb2ee7e9f', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:07:22', '2021-03-27 15:07:22', '2022-03-27 16:07:22'),
('42e366be283ec8320e0d1a9fa514a9a03a00129485df4276600ef5deed5c94328ea77e0fcdc93b70', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:57:00', '2020-12-06 10:57:00', '2021-12-06 11:57:00'),
('42eb730c2612dafb04607ffae0d10cb5a22f0d1196447035574b5900b77f6facd1b3d6921159503a', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:09:29', '2021-01-07 16:09:29', '2022-01-07 17:09:29'),
('430a284d7a6a3005388da44c1405ec8a0ae4becf1109fee4374e679c125958cfeadebffba6f75113', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:26:38', '2021-01-07 15:26:38', '2022-01-07 16:26:38'),
('4315e1ed5cb9ea40e5900b36cb9a52a03227d0181b25ade361dc51c95522cc87027af47887955475', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:22:21', '2020-10-13 11:22:21', '2021-10-13 13:22:21'),
('4322169870583dc2176911e7ab5ef29bfa5c129a0fb42cb151aa803d457fe618ddd97eb04d116105', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:51:11', '2021-01-01 11:51:11', '2022-01-01 12:51:11'),
('4341505b991e0ec56b0f1736bae82415f7a231ebc64d6ffd876a7dac3dc5d1f51a133a488f2d6b6a', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:44:40', '2021-01-29 15:44:40', '2022-01-29 16:44:40'),
('43446a6c025d56b84401f8ad5ef4b6d8304680657331cbb03b11e110dbbaefb1ad347ddec88b4a4f', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:50:34', '2020-10-23 15:50:34', '2021-10-23 17:50:34'),
('434b30bcc1b4483dc1668a6b1e32af316a6c652de4085eaf902240f972281e76d55d798ebc12e9cf', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:53:47', '2020-11-19 10:53:47', '2021-11-19 11:53:47'),
('43566ac402e731f3fb0528718a902a3589214fd1cee5c23482ab48b930bc9d4be12d4b81cca56bef', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:57:43', '2020-10-31 16:57:43', '2021-10-31 17:57:43'),
('4366a0dad3dc1a401102cc91742b86a9b7b48cd828075545633b02db78e1bebe6087d91a15857d3d', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:58:55', '2020-11-19 11:58:55', '2021-11-19 12:58:55'),
('438081b1ddf23b84e7345bef27825c5abd83ceb61cb96bd2ec6faac7c079cfc665a2a85daac4f49c', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:36:10', '2020-10-20 09:36:10', '2021-10-20 11:36:10'),
('43829dcc5203c68123721d6b8336cef484bb0b80def959054e3e23c9180f3f5e96cc1112d7fd233f', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:45:37', '2020-10-19 13:45:37', '2021-10-19 15:45:37'),
('439d01a077a528de41f4ff02b1e29f589650ce6bdb28ab3d21cf489c59e1578a844d4e6891d15691', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:33:17', '2020-12-31 13:33:17', '2021-12-31 14:33:17'),
('43a308b17a4685e2d5441979773ea5372ce7a071fa3a83b0fcc672691004e4f2f100113f5bdfef30', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:54:15', '2020-10-31 10:54:15', '2021-10-31 11:54:15'),
('43b86c530c09cbdca125a0051f6fb9ede294c05acbfda86260909470ff15f2ae3583a54a6681b0b0', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:05:03', '2020-11-14 15:05:03', '2021-11-14 16:05:03'),
('43be5951d52ab64b52a24e7e1354d684aafe57c2da3272029c9e750735aaaf3ef2a299f368fe04d4', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:40:12', '2020-11-19 09:40:12', '2021-11-19 10:40:12'),
('43db5cb526677e15446f634ed513244c4fa01ae69d6605d3f4e18bdc05763d4f4e61658d3a951ad2', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:31:47', '2020-10-18 08:31:47', '2021-10-18 10:31:47'),
('43efd7fb04d2d4ccd323145c7db93c3bba933a19f78332d2f4b8ebdca261091d235aede1f9102bc3', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:43:06', '2020-10-05 17:43:06', '2021-10-05 19:43:06'),
('43f70c92bf0424b8cf843fea42c58db4863b1c237021fd664924f365e149c9ff7ad4bda52299c51a', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:12:53', '2021-01-26 18:12:53', '2022-01-26 19:12:53'),
('440e0640380df2ab95ec237e645e22a5e92eacf0f57ce6a735c35f7e62c83adc2a9d28bf615f316f', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:03:13', '2020-10-17 09:03:13', '2021-10-17 11:03:13'),
('44180668ce666ab4ac26fbfd02b403fc50bbb85872477f4c3daa4c49cd23a604534dda5ecdc043ec', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:18:17', '2020-10-17 09:18:17', '2021-10-17 11:18:17'),
('4431965a70c45b05281bf157a486606b776952bee9f510722b1e33e305a5979f063f93c5ff67c662', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:38:55', '2020-10-03 13:38:55', '2021-10-03 15:38:55'),
('4438d6998b21a7d96134e41a865e53241a236bb67de05c1fc12ca5697796a846e96485dbd03b37fc', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:57:26', '2020-10-15 11:57:26', '2021-10-15 13:57:26'),
('445e51b46276156c3fdc84098bc4486d0cc1c79381b91a1806feb738975a03044cecc3d567e2020e', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:20:00', '2021-03-27 13:20:00', '2022-03-27 14:20:00'),
('446eac26a6c50b1f2e41aef7280d7f0df4c374564b2316c7c7fdcb136f333721c4ab43584730d005', 27, 1, 'authToken', '[]', 0, '2020-11-01 15:54:03', '2020-11-01 15:54:03', '2021-11-01 16:54:03'),
('44744d710871739214d191be3a34598f19434a0609b863115776e83491e16bcac236f3bda1b2ccad', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:13:26', '2020-10-15 11:13:26', '2021-10-15 13:13:26'),
('448e250942c936d880219014f3bcc17240664a991193dacf0ba1bc6e06ad67a1d2c195a56215d135', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:09:58', '2020-12-28 12:09:58', '2021-12-28 13:09:58'),
('44acb8c80a5f465aeba35c7bfab6f0d57102461e867672e4f8cf0e932397a814d6d321093504d58c', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:54:05', '2020-10-19 07:54:05', '2021-10-19 09:54:05'),
('44b9b6f5b998af72bfc894efd258784b6e7cdc04b1dcfa583a5ea9c7e88691ec1f2ab80e8a7fe555', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:46:34', '2020-11-05 16:46:34', '2021-11-05 17:46:34'),
('44d7b68239f92375da38907e546f508e7b1af5ccfc82db4eb0794ce62bdaec2331bb80407c585e8b', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:47:58', '2021-01-01 10:47:58', '2022-01-01 11:47:58'),
('450afb24e4ddbca0d78f46fa533f4754510c52a69124c19db581d3c0c484a675921f77295e74ec91', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:59:29', '2021-01-01 10:59:29', '2022-01-01 11:59:29'),
('450b8434044f43a9d51ef5cfa8a6e865e43f4d269e5a24ff178266c49f5375f42d2bf9d3ab05780b', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:55:24', '2020-12-06 12:55:24', '2021-12-06 13:55:24'),
('45295fbdf33e19df79a2c5832380e79c279786eb8b4a9b94b1868bc0553e2046b32da8a357792092', 27, 1, 'authToken', '[]', 0, '2021-01-30 10:02:51', '2021-01-30 10:02:51', '2022-01-30 11:02:51'),
('453605c685624faf08574222f4f42567d9dc4f45eb1f14fde28b8aa715530ebdc6b6c0e7d9356979', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:24:18', '2020-10-20 09:24:18', '2021-10-20 11:24:18'),
('45519c84817afb97a696542ee5f4a1fc4fbfdc2269055d73c86488d48ca5dc68ccd3c6d55cd3d4b3', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:29:37', '2020-11-01 14:29:37', '2021-11-01 15:29:37'),
('45aae193340a7cd7ff1a9ae5cbaed088bd1518b3fe216e37501a4e94f0fe000abaee077d2c5108c9', 27, 1, 'authToken', '[]', 0, '2021-01-09 11:09:47', '2021-01-09 11:09:47', '2022-01-09 12:09:47'),
('45b980db177c2e3750edb8401662d8bc2b81c4b5fc06985b53b62f367be33c8cb309efa1c27b00df', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:50:11', '2020-12-06 18:50:11', '2021-12-06 19:50:11'),
('45ba193745582364a6d2b4e574b35c698f7bc848446ffdce7e893d80467dd7530b45715805e941f1', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:24:32', '2021-01-03 13:24:32', '2022-01-03 14:24:32'),
('45bf0e0679cbc29aebdc7df8cec5fb6593b1a0888602e9800aa4238f0e2967b8d11e8dfef815f970', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:38:30', '2021-01-07 14:38:30', '2022-01-07 15:38:30'),
('45d8126cbee6df454bc367a474ba0d5faf1ad36dfbbdc485f078ddf35542cd03fe430e25ef35a788', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:30:09', '2020-11-22 13:30:09', '2021-11-22 14:30:09'),
('45e8acc816dd2f15615b831742286e7c253e82211b2b45fb3267e367a483e4623772deb4acbaf602', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:36:13', '2020-11-14 12:36:13', '2021-11-14 13:36:13'),
('45f13bda0e6d6b01bebb2c31eecf944c4b83bd028416be920b0d14340510d06b886e93164160d0bf', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:39:56', '2021-01-07 15:39:56', '2022-01-07 16:39:56'),
('45fa0ec2097fa24ff56f936a232031d47ee9b45f5ff7f78f750895876e83f6b8e9de779faee6ee91', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:30:21', '2020-10-29 09:30:21', '2021-10-29 10:30:21'),
('45fc701532d0f6d4bd7074c2e0e5382d6e5731f4a817994120da0b067ad589892844f091ce8bc8e4', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:34:27', '2020-10-25 12:34:27', '2021-10-25 13:34:27'),
('4602b99bb6db8a4254a9fa488d76c7f2269b21a02aa33986fba333d753806561134f170542f45296', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:36:04', '2020-10-13 08:36:04', '2021-10-13 10:36:04'),
('461e4eddcd630f330fbb1ff5f2ef77b4eea81d87894226ac8f5019d7826d9b2ab28226fc381debf3', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:23:14', '2021-03-27 15:23:14', '2022-03-27 16:23:14'),
('462b551c9d952dc7c5257e9af51e71f2628c6f090865fed584b47f110bf1d8787e09fbdc9d79d7b8', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:51:18', '2020-10-19 13:51:18', '2021-10-19 15:51:18'),
('462d8951f34a230291da88ab54b89d7fde7c4ef3162f5033a8a69fab3af820d427fa2a8135345797', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:38:01', '2021-02-07 13:38:01', '2022-02-07 14:38:01'),
('46550baf5778b466a793d2c6d8c5b65dcd1eca3f83b38bb3b35084e44ff735b3990bb2a0d0d2d785', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:15:14', '2020-10-29 11:15:14', '2021-10-29 12:15:14'),
('4670cc02c2c82c0bbd482407dbadae299c5992ddcfe7c63ba26111a3f11e796770eda2a06446642b', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:20:09', '2020-11-15 13:20:09', '2021-11-15 14:20:09'),
('46919616ee4a3aca0b14c45149844f0a0a3506ec07ee6dc5af3056907d4a10c3946c6446b3907946', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:39:49', '2020-10-17 09:39:49', '2021-10-17 11:39:49'),
('4697198ca989a50de7874e18faf398acbff4cf3ff610ce8ed7095e30a784890555218a107d4a44c7', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:10:27', '2021-01-07 16:10:27', '2022-01-07 17:10:27'),
('469c64f6e5cad79a9b85d39cb21c4676002f92f10c312ea76091e4b1bde24ec8b2116ad85c54ea15', 27, 1, 'authToken', '[]', 0, '2021-01-24 13:26:20', '2021-01-24 13:26:20', '2022-01-24 14:26:20'),
('46b318ccc727562d8e74f1074a398cd6c333a651d8db92cace8bf66654159ad0ab414df1398e862a', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:44:11', '2020-10-28 17:44:11', '2021-10-28 18:44:11'),
('46bd0037b0aa979977eb9e9731cd24ac74cf1ba616a42f87b0845427ab939484af65dc11cce2d2a1', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:50:10', '2020-10-15 11:50:10', '2021-10-15 13:50:10'),
('46c69f5e6940387f3eb7509e78622be212126a1a4921639db1dbbb6334d0d54984ff339bf077b73c', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:50:49', '2020-10-23 12:50:49', '2021-10-23 14:50:49'),
('46cedca6d532898a7651da3b686f10ddb3d58c8c777a122ba49cd0179d0ad212f295bae330acb08d', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:14:19', '2020-10-29 11:14:19', '2021-10-29 12:14:19'),
('46e4429d4a6ce9556723e1537eed3b899dc03943de1a765f7b2bc26e1c833215acb0641995d597db', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:09:19', '2020-10-29 14:09:19', '2021-10-29 15:09:19'),
('471c7c35b39627f7ebf50da4a5a9280d8f1bc10292cff53265afff8fec9d71b54cb648d6377c8ca2', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:07:14', '2020-10-15 11:07:14', '2021-10-15 13:07:14'),
('472eba51d52899d098f3e5e24aa1ac0dcc5fec724db8a037169467bf690fff430ea1902dde137786', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:18:39', '2020-11-12 09:18:39', '2021-11-12 10:18:39'),
('47355e4b2cab252600b79a66e6a9795008f3abe701811c8d7e4d11a47273c8331adca79b860fbd16', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:28:15', '2020-10-18 10:28:15', '2021-10-18 12:28:15'),
('4768fd3ed309d2e7f166b1b1075d6044416ff27d389689d4d35ae908ad5279cf8363bd988d64c2a0', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:26:15', '2020-11-14 14:26:15', '2021-11-14 15:26:15'),
('476c592540c81bf2494be4f560497d9f3a39d8ff4443f31f61cec483bb63c99dd6098af2d57a2f11', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:59:40', '2020-10-17 11:59:40', '2021-10-17 13:59:40'),
('476cf123e533ff1dd2a04c6d921bc6a159b18fa9af7c2864a5026807b151cd0b9111d4551470cbf0', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:24:39', '2021-02-10 18:24:39', '2022-02-10 19:24:39'),
('4781edec34eb0e13560b2c711c5bf57c1f7ccd7a14c576b675924c78cbc12f7d75db2a85425874f4', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:12:43', '2020-11-01 10:12:43', '2021-11-01 11:12:43'),
('47a521bdb40a78bbd1faf26dc20bd02bb1b84d58ef312f1a6a259410a0c69f720578d6bc0799d268', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:30:12', '2020-12-29 10:30:12', '2021-12-29 11:30:12'),
('47b1049ef64718aea5622addea3971f55b8c537f9b5fb8bfbe5569e8475629deea07ec5ac9f075b8', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:51:10', '2020-11-22 15:51:10', '2021-11-22 16:51:10'),
('47bbab9ef242f4f7ce14f6d6f4b742621d05b96da293c17a6fc8b4dc33c7748f501656ae15c71c7f', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:58:08', '2020-10-27 17:58:08', '2021-10-27 18:58:08'),
('47d8125eb68378e5353b32f334a512e8d247fe6a8238b6c75c90e00430869a7923a323e4b43f43fc', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:06:41', '2021-01-29 16:06:41', '2022-01-29 17:06:41'),
('47e9263394654bd2dfed035cd8d9bf588c681993bac927a853fcbfc910f8cbcc0f2b7ab4809de10b', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:17:56', '2020-10-13 10:17:56', '2021-10-13 12:17:56'),
('47eaa2d997098c354545bc9efa1b191d1ea0ba1487dd3f8bcad196d9a95d3596caae6513effc6529', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:14:50', '2021-02-07 14:14:50', '2022-02-07 15:14:50'),
('47ee7197e358786aca1786129357a1dfdcb740059d3d9819c0cc67b9b09857531be25f2ceb6192a3', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:10:44', '2021-01-06 14:10:44', '2022-01-06 15:10:44'),
('480f780e7aa6b334b99a9e8dd2b73b0baf8ed2db0934d6b1320bfad1c01e9d2a2470d98df060fe1c', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:03:35', '2020-12-28 11:03:35', '2021-12-28 12:03:35'),
('48115a1089da1825a107c7ea9163ac332e23be49d55a4d44e9bbeb9dfb62197c25b8ed07cc51e7e3', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:35:12', '2020-10-10 13:35:12', '2021-10-10 15:35:12'),
('4813567095d6b5e9c1f45b36ab3e6c9ee7c57849fec66301d2b7b5d87abc16c6e7e23ab5e8702315', 27, 1, 'authToken', '[]', 0, '2021-01-22 09:27:46', '2021-01-22 09:27:46', '2022-01-22 10:27:46'),
('481838bec6cb2f381c7c8cccd4a47dde07d924f5c31ef64d1657235497a03f4818e9627b2bca5612', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:14:39', '2021-03-27 15:14:39', '2022-03-27 16:14:39'),
('482a8d0abe6ec2508ff0216499d0d2235620835f6fb21c55ae11951e2228671b833b05cae6ca39e0', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:30:07', '2020-10-19 11:30:07', '2021-10-19 13:30:07'),
('48428c20b5fa5e357b551fc3adf051b923ad731f8169f69ea0750082eb4e9b21f87d5831b7db3d99', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:55:51', '2020-10-31 16:55:51', '2021-10-31 17:55:51');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4862452d50ac25a80ca086271f8756580f2e0bbfffc8e6cbf7103c5585358a43e3e268c102a164da', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:52:32', '2021-01-01 10:52:32', '2022-01-01 11:52:32'),
('486cc2dde74977d926366c9b520fb6dac36e300405063d65748d85c53d8f79bca4f7f81bb5655b89', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:51:53', '2020-12-06 10:51:53', '2021-12-06 11:51:53'),
('4887191e62023db48ce5f58577909f9393830df4e1485b5ca56c1aabb6607830366678042512ca9b', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:41:21', '2020-11-14 12:41:21', '2021-11-14 13:41:21'),
('4892d902be6b7911516ed18af6beb7aa5fba8ac0c3aa29468f006f229eca16d36b45895347a465fa', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:24:06', '2020-10-13 09:24:06', '2021-10-13 11:24:06'),
('489eecb1457fad7e434a35fa4c48cea0115cd4b71a553be185e94142e5db3ba5d42fe20395af3097', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:09:47', '2021-01-07 12:09:47', '2022-01-07 13:09:47'),
('48ab5475be48362854fd2268c536b3dbb90b062bc0d68754ead8e90ca6e09a4d5495a5e4e48175e3', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:09:13', '2020-10-18 08:09:13', '2021-10-18 10:09:13'),
('48b84743943fab941aa0083433cf8dcc1513c604b0c85f727ca6e5c0aa3dc4ee1d4d8f9078852f03', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:36:23', '2020-10-03 14:36:23', '2021-10-03 16:36:23'),
('48bbf2c9263a7ad0e77c72cea4c04b72ac251ed6cac543e1600a3288a9df678424cf69b86bbb6886', 27, 1, 'authToken', '[]', 0, '2021-01-17 13:47:12', '2021-01-17 13:47:12', '2022-01-17 14:47:12'),
('48c0bb8c8df82658a8aa7af47735efe7fe256c8783706a8566e29946744b44743524d27942c12fc7', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:25:49', '2020-10-19 08:25:49', '2021-10-19 10:25:49'),
('48c55ad9ea74e50c1e32570b72ec1ae6f6720a36f81d317d634a2cd4ac2acf999fcc418503cac355', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:15:30', '2020-11-01 11:15:30', '2021-11-01 12:15:30'),
('48e20762b4804d7907d8cdba2cd208edbb05b2763018fff5c7d9723bf124fa1a04036629caf2d733', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:31:57', '2020-10-23 09:31:57', '2021-10-23 11:31:57'),
('48e921f90edc25291a53981b98d8a44f6fc75a826e8e1635fe44a9c8edfa7544953b5cbfdf127937', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:17:09', '2020-10-23 11:17:09', '2021-10-23 13:17:09'),
('48ef5862c47f8bf50c21558ef33bfa6d2bbba4806fa2c1fc6a3c620f5c8673d5e3f24e8b7507d358', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:13:21', '2020-10-10 11:13:21', '2021-10-10 13:13:21'),
('48f31d36d9f1bbc0c8ac7e2bfa9b34e21818a35522dd9e65d295d20de3f5b289823e302333d6ef5b', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:01:06', '2020-11-19 12:01:06', '2021-11-19 13:01:06'),
('48fa89b3e98128276a30e14d4b2636945f1b8cc68957678706603f31c41d5f51575fc4162bf5b938', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:55:27', '2021-02-07 14:55:27', '2022-02-07 15:55:27'),
('48fa9cab455b6a3f5366158c0439edfd78d94fd04e6240b446b084abeb2ad48fd804cc9bba0a287d', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:27:13', '2020-10-30 11:27:13', '2021-10-30 12:27:13'),
('49004764392f25a98f9f1e48adf565d1107bc9b6b32f748dc07d8e612ac8a8e7e5d501480fc6bf4c', 27, 1, 'authToken', '[]', 0, '2020-11-12 12:54:13', '2020-11-12 12:54:13', '2021-11-12 13:54:13'),
('490e6a91d38b681520a1589578a780dd1f9cb33be4c6baf1bc1a3532c64a9e8ea76c847277fb310c', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:26:40', '2020-12-06 10:26:40', '2021-12-06 11:26:40'),
('493b23c6f1d0dac369d3d11f0d827894bda553944b27f5daba4e56b2494bb391eaf382e4abfb6af3', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:57:03', '2020-11-12 10:57:03', '2021-11-12 11:57:03'),
('495a4b5fa0980b9dd547de73038b24b2bdbeb08c27e04910f9c09ef7a2d1eae4834ad343d3842ce0', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:58:08', '2021-02-07 14:58:08', '2022-02-07 15:58:08'),
('4962caeabc5404b600e8301e26f673ac9ece7707bf80bdeaa122d0886665b7a28a516575054b6b92', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:32:30', '2020-10-10 10:32:30', '2021-10-10 12:32:30'),
('497190ea800d4315db90878abca79feb8f21e311513d97adc68d4fca5abe53ec8940318d9b6227a9', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:39:38', '2021-01-03 14:39:38', '2022-01-03 15:39:38'),
('49862b9542e42d72c0fb2e37ca2b82ac904eee284b6c5c1a88bb3f3afd459f5fd8f128a7573b4af9', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:16:54', '2020-10-29 11:16:54', '2021-10-29 12:16:54'),
('498fdc1734b0a499fca1447ed5723a9c7b9221e110e302469e8830631c4d89a661ff8c09e12b9c86', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:25:31', '2020-12-31 14:25:31', '2021-12-31 15:25:31'),
('499abdc50372810634af328fe5e33ddbb65e9c4244ae1592aa3b897b8bd6809eca8b8d1ebc6373bd', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:11:11', '2021-01-03 13:11:11', '2022-01-03 14:11:11'),
('499eb70f3fc0ff5c7e6ccd3a68db443e75eea5f11394f62c19e665834e2e2222d00348bfc4676943', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:01:44', '2021-01-26 19:01:44', '2022-01-26 20:01:44'),
('49c415fcf521b31aaae90d92f879a20bf24c672eb0ab1f2e5153d46f76c2d4a9e606c954a1c173bd', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:26:37', '2020-10-05 17:26:37', '2021-10-05 19:26:37'),
('49ce18723e5b7ebf96e0b492c1d29abc0cca4664fe8722a3c75b164566f6432bb1f97659baf32138', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:57:19', '2020-10-19 13:57:19', '2021-10-19 15:57:19'),
('49cf2f1d036ca38c62610bcfec752d70bb5f55510c35de83ce96e9f8acbe328484f539de7fb09867', 27, 1, 'authToken', '[]', 0, '2020-10-11 12:06:36', '2020-10-11 12:06:36', '2021-10-11 14:06:36'),
('4a0692dfbc8991cc06b6180a7868b521a2e7667a97a3dad78934ad254a2d68d18877e025c052c0f9', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:58:15', '2021-01-03 13:58:15', '2022-01-03 14:58:15'),
('4a120eb6be8a672cf8f07d25c6cfe71c428c2b534b668355479dee59213176525a295a7476c5bd33', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:04:26', '2021-01-29 16:04:26', '2022-01-29 17:04:26'),
('4a1b713ac9964679f8b318ec7990bbd83bb7ffac622782266df3c32333dfdb06982d0887ca01ad37', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:36:43', '2020-10-18 09:36:43', '2021-10-18 11:36:43'),
('4a1efeafbc6720bd35c1f870128e5a5d49f862abfdffe5865d5ea5efe9bb6ee6dfc3aad8cd2c56d7', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:53:11', '2021-01-02 14:53:11', '2022-01-02 15:53:11'),
('4a2e690d4cf4acbe8796afa774d30cd57e30bb7fdb5be551abae39dadec443618eec47e1b34422ac', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:25:46', '2020-12-06 12:25:46', '2021-12-06 13:25:46'),
('4a3a0213adfccc7d3f3ff5edbb500d29b031ef4475f9d78fdd33e7e8b919a17baf12f2c3bccef2b0', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:44:50', '2020-10-19 12:44:50', '2021-10-19 14:44:50'),
('4a4171772f30e00e16145818d8d55bf49ac3819fa5a5c4cac0f1970280ec2c0b66108e5e42abcd31', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:09:40', '2021-01-02 14:09:40', '2022-01-02 15:09:40'),
('4a4cdf1bf2ebfa8ce97b24c394ce5003b3d157c1d0cd4b66128354762eb34daf4957188e5799caa3', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:29:35', '2020-10-19 11:29:35', '2021-10-19 13:29:35'),
('4a59535fca0a9e7e3c522b897f78cefa20f85274fc9e0be6cfc9915fba527cb71902a6866e8df85e', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:40:01', '2020-10-05 16:40:01', '2021-10-05 18:40:01'),
('4a5f452ee8b07366f21104a9df922c466540abdf5d832d6fea5405b89bd9c745c2342ba7120409ee', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:59:54', '2020-10-13 09:59:54', '2021-10-13 11:59:54'),
('4a6eb48539f09f75adf7c12d365f421116592b6e89c039ddfe1f16423edd7bce12950656babbf045', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:36:35', '2020-10-10 10:36:35', '2021-10-10 12:36:35'),
('4a78a4cefad4cf96715026c9cf975d947846e3806bedba9ba30a9278a96b42776c86c1f3ea437510', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:30:55', '2020-12-04 10:30:55', '2021-12-04 11:30:55'),
('4a82ad5e234ab3d38631948ab922e320c6fc9d4f27a9e908ed91180cce6a96b2328ea4f4d37bbf2f', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:23:25', '2020-11-19 12:23:25', '2021-11-19 13:23:25'),
('4a96e8360033e06eaecc1b51f39bbb3d315474f96db3505fd342c5e486d764f6bfd0f3158daeb310', 27, 1, 'authToken', '[]', 0, '2020-10-30 12:19:01', '2020-10-30 12:19:01', '2021-10-30 13:19:01'),
('4aaee8ccee31875ccbba04e217e9322505d3bd9c61ab5a1178ca880d8a47ad0773f2dc9eedeec15e', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:26:11', '2021-01-03 13:26:11', '2022-01-03 14:26:11'),
('4ac6a17e57038a2480a96978c8181740efb414d12747883539c02bb02c6a2046e8ce1241efa9d6db', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:39:07', '2020-10-13 08:39:07', '2021-10-13 10:39:07'),
('4ad94e2f9ca98b9d0416ace1de58626e8eaee12b77757ab10f70ba854d636b6a7c7c094cf5f2c2be', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:24:23', '2020-12-28 10:24:23', '2021-12-28 11:24:23'),
('4ae2db0282cf0e8af80bb1677740766bde5af803951fbca35a39b879d585edaae65c00099cf1ee4e', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:06:35', '2020-10-23 11:06:35', '2021-10-23 13:06:35'),
('4aea510522577bdf1869b340340b36d60aadf19c202371cea067e5d6f6266a0f6fd6106c9de1df71', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:58:44', '2020-10-17 12:58:44', '2021-10-17 14:58:44'),
('4aea7c36d08d9a63b1106fde91ba28ee3be39cecde15eb5535911054f4859737a1ff53bd3402e7a0', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:18:44', '2021-01-29 15:18:44', '2022-01-29 16:18:44'),
('4b03cdb16d8d24efb6a0a9d8781dd0f3d2da2c5a19dfc4621e87c29b57c1160d65c2b265ecffb42d', 39, 1, 'authToken', '[]', 0, '2020-12-28 17:24:00', '2020-12-28 17:24:00', '2021-12-28 18:24:00'),
('4b06d07a560dda474cc20e61805aff8ede6532dae4adb59a6fd6ef8a340b6cfd28765452c7b1556b', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:48:04', '2020-10-27 16:48:04', '2021-10-27 17:48:04'),
('4b4a2020041e173398b0f7d11f1bd2c3473f15d6fc0b4744a71971920a96ee6f2da4aa3abfa1aa49', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:08:11', '2021-01-07 16:08:11', '2022-01-07 17:08:11'),
('4b67eb1df8b5f709eac4bd83378e5bf85085cd498e61fbe5b93eac147cc332f3f35a29f6ce89ee25', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:45:32', '2020-10-13 09:45:32', '2021-10-13 11:45:32'),
('4b804ec426d751fc093808b747af0ba9e3617f0d6c9b965e88774ce696b2a21207a1e4ceff560848', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:51:02', '2020-10-17 09:51:02', '2021-10-17 11:51:02'),
('4b81179502205bee83ac8c1d35e777035158f66f3f33d324eb65caf862aa2844d09c2984101acd7e', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:50:40', '2020-10-31 15:50:40', '2021-10-31 16:50:40'),
('4b841a46640a77d48e56dc11000c0399291bcceaa181c9af3e91417c5cd67ce4e158fb5435a11f03', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:56:31', '2021-01-02 11:56:31', '2022-01-02 12:56:31'),
('4b926450ce02c22b435c4d8fafa054fca041171d04d7f05632cfecb334150cc953475b7aebeb2602', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:48:41', '2020-10-19 12:48:41', '2021-10-19 14:48:41'),
('4baa92b9c5f468aaebdd4492bed96cc2a07d53c3e5a171db720723eb9ab8a94e1f063ed96e47bb83', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:52:23', '2020-11-14 15:52:23', '2021-11-14 16:52:23'),
('4bb8f2015363a6aa71a37790085ffe4f12f8d1ecf0feaa264e3b5c5611c81acd84623e7d73e93c13', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:01:14', '2020-11-01 11:01:14', '2021-11-01 12:01:14'),
('4bbf3cd3ae10740df6ab0f35f6aed54bb9859b05621897247f1e00e9dc2c649d5b786e5439d91bf3', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:37:38', '2020-10-03 14:37:38', '2021-10-03 16:37:38'),
('4bc6d2f707ef3d816fec83f9947c1e3788760192251d7aa76818af73e1c5b622e5b5d5007b002f7b', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:56:00', '2021-02-07 14:56:00', '2022-02-07 15:56:00'),
('4bcc3f8659ab0d6b1f8dd676651d3305e0808e1ff975c02ec44c7bc62f84b8a381faa962a2291606', 27, 1, 'authToken', '[]', 0, '2020-12-28 14:06:54', '2020-12-28 14:06:54', '2021-12-28 15:06:54'),
('4bd791dff30ae13276f50e09b9c0d6d4917edab975202f4a29d2c001fa9f000fe6f6ade06a4adcdd', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:45:14', '2021-01-06 18:45:14', '2022-01-06 19:45:14'),
('4bdfb77a5d009bc48f1b28533fd97f42bbcb5d0760a0d97c3e726f53c10f106dd303c29a971f0e99', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:22:01', '2021-01-07 14:22:01', '2022-01-07 15:22:01'),
('4be182a95c520817e78b118c325e233d064945fb28864203b6471ef75a1553fb106f3652c14d9df2', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:01:04', '2020-11-12 13:01:04', '2021-11-12 14:01:04'),
('4bf6086bde222bc540ae224fe0114bbf27b1e21d6c21eed1da258e40e370abb22a5acc2c16a995fa', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:09:03', '2020-10-18 10:09:03', '2021-10-18 12:09:03'),
('4bfb6a1f645d8e8ca59c747d6afd895e23373bb2ac39078c2d8629e9debbaea633e875c43e381493', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:39:06', '2020-11-19 09:39:06', '2021-11-19 10:39:06'),
('4c00632772f3b29729078052073960e24d709b03ba77a794abba5e08fbe0481b554583c4338da492', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:41:09', '2021-01-06 14:41:09', '2022-01-06 15:41:09'),
('4c02569a91a1d7783421674a62a5453907052c4d1b58ad21bb70b9288cc97e030ea7ab8ca9b5ab28', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:56:12', '2020-10-23 15:56:12', '2021-10-23 17:56:12'),
('4c028866aa16dba21ee3d9bc74492f1dd57390bb867fe37b771e067dc39ff42f6f00d79caa2c6b6b', 27, 1, 'authToken', '[]', 0, '2020-10-29 08:01:27', '2020-10-29 08:01:27', '2021-10-29 09:01:27'),
('4c20d12b36882554cbe2f1cfeb30ae8e7e39fc8e88051acb50dc789958c8aa0713310a365e749754', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:07:21', '2020-10-19 10:07:21', '2021-10-19 12:07:21'),
('4c2259fd56aeb4f97c77edd796e5ddb679505e59eda965b28645dbf1a26227068458fb3f935c94ae', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:34:20', '2020-10-10 11:34:20', '2021-10-10 13:34:20'),
('4c79f0abb20b93f410df9d10b819ee6f86360abe4cc4a8859e80f359497fab9527e326ed173f9093', 27, 1, 'authToken', '[]', 0, '2020-10-29 08:59:32', '2020-10-29 08:59:32', '2021-10-29 09:59:32'),
('4cb31aaf5a22476c8b5393b412f581bc5237d6f64a2cf264b1556c3c5839bc4cdf220abba494dcee', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:11:20', '2020-12-28 10:11:20', '2021-12-28 11:11:20'),
('4cd60dc07d3f0bc2866ba0e0424768640b92b0f4f3324a71f9fc212de98f3bf5b96610134548d037', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:13:07', '2020-11-01 17:13:07', '2021-11-01 18:13:07'),
('4cda7552719d19f0e950323f2f22be2fe58aeab47c15027fb62318e0cf58c5c7d8eb9b075ca2bce5', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:05:40', '2020-10-31 17:05:40', '2021-10-31 18:05:40'),
('4ce170bc190899bd851b3c6f30c52c61b836e66df5dc714e34eb8d5675b69327120077ab751af443', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:07:07', '2020-11-05 15:07:07', '2021-11-05 16:07:07'),
('4cf3d8d629546e6e8277ad0bebf5ebd7664cfde5d90c467511e7bdcc2daf30c77b01cb434882bc3c', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:21:41', '2020-10-11 11:21:41', '2021-10-11 13:21:41'),
('4cfb5e425db1b5c2ccb73df071bc573836b83d1a458ad6eea150e54ec4cdd37f7a7902bef693730f', 27, 1, 'authToken', '[]', 0, '2020-12-28 15:38:04', '2020-12-28 15:38:04', '2021-12-28 16:38:04'),
('4d019f8f86cebd31d2dbe578ef4fdeb325af93e3d5c79f8f620610882be879d91f3d57afb74492f9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:44:08', '2020-11-01 17:44:08', '2021-11-01 18:44:08'),
('4d043c93262843c278ccc4de0777f772742b80594744f309985d50bcabd08b9a5c19f2443231522e', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:14:08', '2020-12-28 12:14:08', '2021-12-28 13:14:08'),
('4d061b0498cdf3f9940e69a181f3c66acbb542f436de992c47217cb682e66f289fb31655aade9308', 27, 1, 'authToken', '[]', 0, '2021-01-09 11:17:34', '2021-01-09 11:17:34', '2022-01-09 12:17:34'),
('4d07772e9052f046c464ecdca8d1a3d7008e7552cd61e6eaffa409c1b4c2c80e2a58c968175f1f9f', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:12:22', '2020-10-18 11:12:22', '2021-10-18 13:12:22'),
('4d4b4d8b1f8687da4aa4db32f8d5530a307d9ea370e6183ec3446ac85d723aac735dc37331648cc0', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:24:40', '2020-11-14 16:24:40', '2021-11-14 17:24:40'),
('4d4d8baa723f097ce99a738a13e5ae0c16cb264cfea0d73a53cad6244cbacf771d8044f23a54cee2', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:02:27', '2020-10-10 11:02:27', '2021-10-10 13:02:27'),
('4d75a5c494d2e44ad151d7bad9c5a484cc346dcbc281db66b9d67a11b90bc6be337c3c49d882838d', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:48:42', '2021-01-03 13:48:42', '2022-01-03 14:48:42'),
('4d7dacc2cebdf126c5eb041779df7d39d6402af4fe9f94ead754ca243b5d6228e8af92c511136374', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:07:28', '2021-01-07 16:07:28', '2022-01-07 17:07:28'),
('4d93614bfdd81124c04e3cf7582aab7d3bd2b256fd9dfadbfc5e9d22d1609b1124b39c6b169f3b28', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:43:19', '2020-10-19 08:43:19', '2021-10-19 10:43:19'),
('4da0ae220add97477d3b73c96b1870ca88f7e0d4367db92134d7ef76ad93a5410e29990c667ee05d', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:41:41', '2020-10-18 09:41:41', '2021-10-18 11:41:41'),
('4da9621c3564681a373529869b6e84d9d645dc6b8d1ea47066121f4fa67cf25b7e3e39108e1fb7d9', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:54:59', '2020-10-20 08:54:59', '2021-10-20 10:54:59'),
('4dd404e205d15ea5e3da284cc52c24ab49e5bca05174e1fa6dc9951f888dac379c71b552ebd298b9', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:37:23', '2021-01-06 12:37:23', '2022-01-06 13:37:23'),
('4dd68cca8bd72e72ae0a74aa86736a67a5d79d72319fe30b3ef457a3c01f16ade0a4cae467cb4f36', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:33:26', '2020-10-19 13:33:26', '2021-10-19 15:33:26'),
('4ddd4ac40bf1c5bccb116b653bd2b10b51fc0aac80cfe7216955a193e5d7dc191755a76c0c3629b3', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:22:58', '2021-01-10 12:22:58', '2022-01-10 13:22:58'),
('4deb03642855b54ceeb8da73d8c2db7f8e72c090caa9ea46d5fa966f329007f7f735102b5fdd1623', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:06:50', '2021-01-09 14:06:50', '2022-01-09 15:06:50'),
('4df13e15399e59f7f87b069ee67aaf38489aebb68d032e5819cc56036ce0ff3cca828d7ea87701c0', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:13:58', '2020-10-27 10:13:58', '2021-10-27 11:13:58'),
('4df9de3d1d513cef2311338f52495ddf8a593be0e33cf0be66e326f254161ee82333edff04f816b5', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:04:44', '2020-10-31 17:04:44', '2021-10-31 18:04:44'),
('4dffeabf55726253f9c0de6306908a2454f978016b7867c82836d64549cb7c35d1a354897d12f15e', 27, 1, 'authToken', '[]', 0, '2021-01-06 11:59:23', '2021-01-06 11:59:23', '2022-01-06 12:59:23'),
('4e049f2449815cfcae79ffc8ba0a90ef8643a5d95a4e39820de028a42f6a81370f3c0c6ffecb53a8', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:20:45', '2020-12-29 10:20:45', '2021-12-29 11:20:45'),
('4e14816ad0d7be5542be5842cf5fd6c3379c07f80975e905afa70aad137a2d8b9a529b48d1899ae6', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:14:51', '2020-10-17 14:14:51', '2021-10-17 16:14:51'),
('4e3f133ec7bbb503efe7612f7eb4759a02024fdb146f78de666d90864828a5f6d4a6b92716924638', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:02:17', '2020-10-17 13:02:17', '2021-10-17 15:02:17'),
('4e4b0f56028ad71cf01a2c2aca720ab9fc73013b95197ef5625b3ac67b27512fb323f7f37512fe01', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:11:39', '2020-10-08 15:11:39', '2021-10-08 17:11:39'),
('4e4c01a0fe3303e51c027b65ec7e94a139d92a550b93a62c8ff65c0e11ec2f729f8af43922f4e822', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:23:06', '2020-10-19 13:23:06', '2021-10-19 15:23:06'),
('4e51e381be44d30d097635d5df4241a453b6ecea0bdc2fb8ac83800ce6ff4601d043e7929e90f9a9', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:27:35', '2020-10-13 09:27:35', '2021-10-13 11:27:35'),
('4e5c697fb94e86a891a1b97522a341b540f18b08d4398ca41fbc414f4774477970fc30dbb7f429ef', 27, 1, 'authToken', '[]', 0, '2021-01-29 11:10:42', '2021-01-29 11:10:42', '2022-01-29 12:10:42'),
('4e60b8e2e415eb6a69356ff1a5bf569483b5b8890d882ecae1501a387a6b526fedae6f49ab2d84cd', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:23:38', '2020-10-19 13:23:38', '2021-10-19 15:23:38'),
('4e6273d832eeb908c4a371209f707d75a71401b601417769e54047b7d0518518b82f8806c39fa1aa', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:47:12', '2020-10-18 11:47:12', '2021-10-18 13:47:12'),
('4e63b90832c8be0cc9ebf8571dd6f41d64edd551e9898f52bc693a17805404a97ed387661976ed08', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:58:11', '2020-10-29 09:58:11', '2021-10-29 10:58:11'),
('4e674cce632b5f71a279ce42766d31abdfdd2bb3136793f23065392881f6525772140e642efd4ff3', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:37:20', '2020-10-11 10:37:20', '2021-10-11 12:37:20'),
('4e6fe88da3e81f7a729774f8f0b7a630df85a633cd3acfe9d5335fa86f223ae4840364d7a2e67873', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:24:10', '2020-10-18 10:24:10', '2021-10-18 12:24:10'),
('4e70abe83a94c6574f064a000bc076da8c0dab03d9942b662783d7e9e74277ef53297c3d9bd4e8ce', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:21:51', '2020-10-17 09:21:51', '2021-10-17 11:21:51'),
('4e7d3ae2492d4e066e97ce1f71272dd11da43a3eb80f6eb9064b8e8ca31d36d001b5bd16deefc77a', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:09:39', '2020-10-31 16:09:39', '2021-10-31 17:09:39'),
('4e80feceb45cd03a0b7a63d80ea44e0a8d1d69a2967bdbc97faaa8f72dde018581e5696b34dbd12a', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:22:48', '2021-01-29 16:22:48', '2022-01-29 17:22:48'),
('4e9575510c3b9caacb202ba9354b790daae5f3a12c32dc3bf119fec5aa8c05ec5d906cc1cad34e87', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:27:30', '2021-01-29 16:27:30', '2022-01-29 17:27:30'),
('4ead59238bf0edb3726d634ce2b3091e87e8fe6acdd2df5441f96c8879e427e0b7ac5f9b4c6c487e', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:18:23', '2021-01-10 12:18:23', '2022-01-10 13:18:23'),
('4eaeae517685028647286bc974dc4fd597012a09265c1679b3281f14d2ea85484611a18edbbf7da8', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:31:21', '2021-01-07 13:31:21', '2022-01-07 14:31:21'),
('4eb27c36c3540c9f3498c96c66d919febbceeba589806fbe99dffb657bdbdce51f1060fc06d01f86', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:46:14', '2021-03-27 11:46:14', '2022-03-27 12:46:14'),
('4eba5478d6aba09b42cb6a42402237f53162e81c8b554eb043eec8f902a140850bfb11edc4dc3451', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:14:42', '2020-11-19 12:14:42', '2021-11-19 13:14:42'),
('4ec55d7b223fd06bd843aa9ca7d797d26d6da94ed2f4b6a99bef8e1118ff3fb3c87d68b591b0fd90', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:53:48', '2021-02-07 14:53:48', '2022-02-07 15:53:48'),
('4eeee0669db4a4616f14f8092c3a72f0c2b09125c5b09b79211226e8614458e281ff59a66f0ac9c2', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:24:56', '2020-10-13 09:24:56', '2021-10-13 11:24:56'),
('4ef0bb4e84b668091450a5bc8b482b653015118e8c373365480c998a5f4ec4e7c6d7a64093f61036', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:16:54', '2021-02-07 13:16:54', '2022-02-07 14:16:54'),
('4ef8aa043a34f5a4b4c4afc174fc4f738744fb692e85ce161ffb79248b5a9d36a71eea67e0c06f03', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:35:44', '2020-11-19 12:35:44', '2021-11-19 13:35:44'),
('4f1250dec42f8d605ca2da746b0ce12e176d72a3d3c0e5252d9af559f889653672f94d088cef180c', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:54:23', '2020-10-03 13:54:23', '2021-10-03 15:54:23'),
('4f355990bd6254043831bf415b90290f60298b914e82979a2c180e6658b411ec2f01dd2438752aa2', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:08:55', '2020-09-27 10:08:55', '2021-09-27 12:08:55'),
('4f44238b70154a37326c84d6672920a9809b0a3239b80893a22a7753ca5d2bbba3165892a535c992', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:27:53', '2020-10-13 09:27:53', '2021-10-13 11:27:53'),
('4f50837072600d31db69148c113c9e6cfcdfb7abf4086749787ae6cece12a441c61b57430b11cd4a', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:31:21', '2020-10-15 11:31:21', '2021-10-15 13:31:21'),
('4f5bd69930a8c218a8ae95368056f2a5cd9de18a4771433884a26e9c03e60f973edad869feaa23cf', 27, 1, 'authToken', '[]', 0, '2021-01-24 13:59:33', '2021-01-24 13:59:33', '2022-01-24 14:59:33'),
('4f6a12ee542ffd07dd8efa1e55c5ea8e04a8431da01c54be473dc0d03bb11db24da74550845afdec', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:27:57', '2021-01-27 17:27:57', '2022-01-27 18:27:57'),
('4f6eadb3e8e6ead457627c0c9e4667c76cecf5098043ccf1dff03917b9c32b96ce7b018916da324c', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:56:41', '2020-10-19 13:56:41', '2021-10-19 15:56:41'),
('4f7157e9f2341d7193ac0ee78d568b9e9a2f3d141b7e3a7f5ac675dcc7473b84eb422340469d5992', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:17:58', '2020-10-13 11:17:58', '2021-10-13 13:17:58'),
('4f77632b5a28fbe837d0686e9dfc81eee0719951e2962e35d5b300ac62cbf2e55e0304df44b2d376', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:50:47', '2020-10-17 12:50:47', '2021-10-17 14:50:47'),
('4f7c648880f9cb5ce617aa798681762e5b0a2b690b9aade51b9dff2280da20f61fe7737c3465b2b7', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:43:21', '2020-11-15 13:43:21', '2021-11-15 14:43:21'),
('4f8afff83019b86ef51599dbd1cefddd128c55aa06e10b5207178f49b97dfe4f579c991ae759ce1e', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:43:02', '2020-12-29 10:43:02', '2021-12-29 11:43:02'),
('4f8d14790106d573cc08e0976fc88317d8ab62dbb9227a0094cc8e68fd568e283f390f35161a54a2', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:56:28', '2020-11-14 15:56:28', '2021-11-14 16:56:28'),
('4f9273f12a0a5266efb09455a78dfa5ee0de1ed824cffb5655b793cae209e113a9ca05a8ea8ec04e', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:06:28', '2021-01-03 09:06:28', '2022-01-03 10:06:28'),
('4f9a7c7007c9d0c20e8fafc836ee7481ef49efb3cd5ddc5d2200a300991875256652c6519b3e7877', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:44:57', '2020-11-12 08:44:57', '2021-11-12 09:44:57'),
('4fc1e8f5d90410598a8eee9ebc5e7c7242126109193a7f7e2116a811ad00aa9900d69053be304a00', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:12:07', '2021-01-24 11:12:07', '2022-01-24 12:12:07'),
('4fddd1905eb8fa52f8b7cb60a339ed8027d7e4c006cca3f63b8f6b57b0b944460365a041acd8bfd6', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:46:09', '2021-01-07 15:46:09', '2022-01-07 16:46:09'),
('4feb9338fc3bc20f59a20c32f1cab21c12f6a3b5f6da154ca95f0fc9af9347783348846aeace3b3b', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:28:33', '2020-12-06 10:28:33', '2021-12-06 11:28:33'),
('4fefd1d82d64ea2f87c1d99a638a3bb8b4cb4e3b660388b3e01111f21090bf6c640499ac8cad7ca6', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:28:43', '2020-10-15 11:28:43', '2021-10-15 13:28:43'),
('4ff6b4e7bcca18ce9327a102f03f604bb5bc51af136ff4cbccee5649cb577b9878c9f7abbfe13641', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:49:18', '2020-11-01 16:49:18', '2021-11-01 17:49:18'),
('5003b9856069a32c82326d010f93c6f5794eac0b662a381ce1d57b0a5686a60b696824b1ed6ae3ec', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:49:47', '2020-12-06 10:49:47', '2021-12-06 11:49:47'),
('5013d1998383c4644ea9df1225b9598cc7cf5e4a347849914454b9507855a5efea6cf3e0b3eaceab', 27, 1, 'authToken', '[]', 0, '2020-10-27 18:05:21', '2020-10-27 18:05:21', '2021-10-27 19:05:21'),
('5016886f7417d97c0cc57d68e768f91d0456916001779b2b555ddbb9a12b1f80037856ac638f49c2', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:14:06', '2020-11-19 12:14:06', '2021-11-19 13:14:06'),
('50321a3efefcdca8493e14cc9e685a1f9bf97f54f3b319c1ca5c7b180ba88a363c7b4acf0fc389b9', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:43:52', '2021-01-30 11:43:52', '2022-01-30 12:43:52'),
('50488468950780f24a8dcd066b9bc86ecf23377ab5380260029313fec4db58c003e95a9703a06461', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:43:26', '2020-12-29 10:43:26', '2021-12-29 11:43:26'),
('5061e8446f267905e0b6cf16512f15c6634126c846240e5cb26e1f112c7b7576c0de92d757d830bc', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:39:05', '2020-12-31 13:39:05', '2021-12-31 14:39:05'),
('50672f21b4b8cde085eba96ea41f4d21e65095f56aa65d33913df9fe117d296b20c00d85514e54c9', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:04:19', '2020-10-18 10:04:19', '2021-10-18 12:04:19'),
('50714313c4577b768c5db8449624f60f4424c7a060c71e5d32dd706b7e5f943042f5826917523891', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:54:43', '2020-10-19 13:54:43', '2021-10-19 15:54:43'),
('50859ebfdd8e4b261c1d299bea3d0136c7d161e9631d4692323b21437bc34a5c0f35fb098862de24', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:25:56', '2020-10-08 15:25:56', '2021-10-08 17:25:56'),
('5088f16165d1824fa9f05ccabf1a3bf6dc47ea9f6952f8ffbcc8f42b365844a9a6906d0fa55d9283', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:30:44', '2020-11-14 12:30:44', '2021-11-14 13:30:44'),
('50967efcd5083923cb764eb4861a36733c585b7bf3ed385e255ba5849146c46e93eb4bb2b8af1cf6', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:02:43', '2021-02-07 14:02:43', '2022-02-07 15:02:43'),
('509bfabeeee44339740ad36c96fddc56634048cc5551aa0d4af9845826fe95c7c0e0fba51caa4bf8', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:35:30', '2021-01-06 18:35:30', '2022-01-06 19:35:30'),
('50aad865998f8ec1a98629a21bd70a9489993bdf5a386c5f6ada938c5b4c4f6ef1e4c3078b61f319', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:22:50', '2020-11-15 13:22:50', '2021-11-15 14:22:50'),
('50c51434cc84dfecbf98049814a35b6df3321a2962ca1674bb439b42dafd0e38a75cc4dd26c137ed', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:19:45', '2020-12-04 12:19:45', '2021-12-04 13:19:45'),
('50d1fdbc43ac9093e0e9c065f5e30fba695d37eb6fb2f4c27c1535242ff10b046e05949c89025585', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:11:41', '2020-10-03 14:11:41', '2021-10-03 16:11:41'),
('50df7cd227fe1da512827322ac7bfa8a35a4c1a12a7bcb7598ceafeca158c639ae08aea26ab00bc6', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:00:30', '2020-10-15 09:00:30', '2021-10-15 11:00:30'),
('5107c81e672660f8a0dad8c317d8508015c10dbf546ae832dab598c537c71a1e382f61292738f568', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:44:20', '2020-10-05 16:44:20', '2021-10-05 18:44:20'),
('51168d9c2dcf6e7f819e50b6869785486cd642de7d061880ae89304c0e8a308c64a05c7100a501c5', 21, 1, 'authToken', '[]', 0, '2020-09-26 08:45:26', '2020-09-26 08:45:26', '2021-09-26 10:45:26'),
('5143d8013ed95b62096ada632eb54b1fd661c28f6a0e6b3b9a5aa5b7322c5efadd8a28d8240ab153', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:56:39', '2021-01-06 13:56:39', '2022-01-06 14:56:39'),
('51489d92d697bd35c969ebb2d2cd4ce604e57a654c02f20a6a17e8eb8e80a2eae9ee52d594dc05e5', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:55:58', '2021-01-06 13:55:58', '2022-01-06 14:55:58'),
('515eddb46222bb410df1a1fcf067757a0e05d965458ed275582e5c9303ed478cb0131efd94828b03', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:35:21', '2020-11-12 10:35:21', '2021-11-12 11:35:21'),
('51676e7044a9bb62b2ca5738b44dc1fd5b7073db8abd4c3ea54a11f2d6c20ec1091993b2d5ecaa94', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:31:27', '2021-01-07 15:31:27', '2022-01-07 16:31:27'),
('516c495adaf9763aef3147900bdd77cb693839e736cebb59d9c825d75a640cb1a396638f74215ade', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:28:15', '2020-10-25 12:28:15', '2021-10-25 13:28:15'),
('516dba1a5d78ec3b30081aca3ca173b5803d6e2cd5d10f15c60ccfb54d38041da3927f2f19b6a95e', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:48:16', '2021-01-03 12:48:16', '2022-01-03 13:48:16'),
('5199e1745364748e621b8a08edaa739ab6876277c3d0514898cdab5d6bab90a90042a7a2ab9f6565', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:24:35', '2020-09-27 10:24:35', '2021-09-27 12:24:35'),
('51a381251c11284dba5eead4042c1a28172ea07c52036f50b1e56785105a3f2def56d842c7e610c4', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:50:54', '2021-01-09 14:50:54', '2022-01-09 15:50:54'),
('51bb66420e8a39211107a91e8aa49c393d3ea812383a531d3474c883d93be25d14b5b6e462ed3cde', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:29:57', '2021-01-07 13:29:57', '2022-01-07 14:29:57'),
('51bd804f907863af3361397fd34ea3736eaaaf68bda54a6c7e9fc872cf6b3e25b631720ddc27c666', 27, 1, 'authToken', '[]', 0, '2021-01-22 17:19:10', '2021-01-22 17:19:10', '2022-01-22 18:19:10'),
('51bf02e06e461fa55c6ad27383ecf3530d457717d6846dfff8da91445cd7369fefda53a6731fd4bb', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:28:43', '2020-10-19 11:28:43', '2021-10-19 13:28:43'),
('51c8bb5d36ada1e62424392e20f0673beab6079f1451cc0fcdbfa7096502d8da640cfe1747f59c6f', 27, 1, 'authToken', '[]', 0, '2020-10-10 12:59:36', '2020-10-10 12:59:36', '2021-10-10 14:59:36'),
('51d1c8115ad4d9109f6a51bd84172b5b98a25fb108315ad5eb41ef9d35e47d0ee5278761c2463ef3', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:39:05', '2020-10-05 16:39:05', '2021-10-05 18:39:05'),
('51d8d29b2c6ac5ab2fb341c536828cf42c173964cd2fa7c0ec31277c54746495b0c25768f22ec28a', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:43:11', '2020-10-10 11:43:11', '2021-10-10 13:43:11'),
('51e0ab10437e38aa4f4be53f03208b28c6bfe9f5a11142e7882db8b1a2fea3ad8d784c342cb63ff8', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:56:46', '2020-10-27 10:56:46', '2021-10-27 11:56:46'),
('51e619bab7499e523c2d6f34a7316de062e0af33fdb7e34b2ef5d8600e0edfd0fdc7e553647d164e', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:52:10', '2021-01-07 15:52:10', '2022-01-07 16:52:10'),
('5201b13230783743a280489f751c6cd91bde85fc98e6dcf0c16b71582f243997f2748db5fa02e777', 27, 1, 'authToken', '[]', 0, '2020-10-31 13:38:30', '2020-10-31 13:38:30', '2021-10-31 14:38:30'),
('521835931cd79b47277bf29260ea47ee425ced6dff065a39f2cd15e9a06d8e72b98937b10329efe3', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:48:43', '2021-02-07 14:48:43', '2022-02-07 15:48:43'),
('524fa1ec31d0c21469d482c967accdd0908bbd3ec22da19526f019c4d5fdd715a0d6a36de89c829d', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:09:29', '2020-10-31 17:09:29', '2021-10-31 18:09:29'),
('528b6d3b6fb0fb1fc0dd8b1a84456a547d4505770974c4d5a6ba8dce41da5d5d907c69bd9a1d4f85', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:34:11', '2020-12-04 10:34:11', '2021-12-04 11:34:11'),
('52be1c738817df0f87f427f27a8d23b0236c92746724d2b4e16773e88cf8e6e5d5441b871e17e5b3', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:36:53', '2020-10-31 14:36:53', '2021-10-31 15:36:53'),
('52cfcce5d03d44e01e2f987cf52c35db3b553e7d857547d7af8e6aaae41df8e078c59da77fab3a70', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:43:32', '2020-10-17 09:43:32', '2021-10-17 11:43:32'),
('52d638b311011ec768f8daa302402a4a1dd24e1a72302269e4351510e82387dcb0e67347ccea5e4b', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:09:20', '2020-10-19 14:09:20', '2021-10-19 16:09:20'),
('52db9a7e4f5d6ef180df944b2c0eac740f250594f087f735d74c4d6d4bc7baec6eadeb9884054c16', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:48:49', '2020-10-23 12:48:49', '2021-10-23 14:48:49'),
('52e812938aaa22f23a64baaef5785e44d933d2e46a986807ce40092e125db7ae455e3bf017feefde', 27, 1, 'authToken', '[]', 0, '2020-10-31 13:44:07', '2020-10-31 13:44:07', '2021-10-31 14:44:07'),
('5303a52ee4a158e13d465d8410b67e44836185066cbddb4df3653a416577b0812c096de4c476ccf8', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:09:30', '2020-10-11 11:09:30', '2021-10-11 13:09:30'),
('530e3ca3053cfbad193c36918d8de40e95c9b051e13c748f5d1da5fb4c9915ba3f3346b9f87b848d', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:27:30', '2021-01-09 15:27:30', '2022-01-09 16:27:30'),
('5320171cc7ab7454be711f4ccac106f1fb066a1b4ab549d6bc72ad50c258bb23a4d7c363861aa36f', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:17:36', '2021-03-25 18:17:36', '2022-03-25 19:17:36'),
('5338b415c200deabc7fbfb0507b06284ad4987e0e649bbfd9f01f80dddbb66c628a6d3810ff42cac', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:22:30', '2020-10-25 14:22:30', '2021-10-25 15:22:30'),
('5344fc66619a8136f197ce70d4e9b5f53f35b13427b2ee53ae3b10df4abbd31e284bc241c4cc1c4a', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:14:22', '2020-10-17 14:14:22', '2021-10-17 16:14:22'),
('534f28033dae58455adb7d4468033f902303440cce4a45f0d662ba77ddaef62970a5c9bb0da429c9', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:50:25', '2020-11-22 14:50:25', '2021-11-22 15:50:25'),
('535b60635cf219e1356ac52571141018b6769249e8582fa828bee58c5ceb024a40c4dcb9b3f30b6f', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:48:18', '2020-11-05 16:48:18', '2021-11-05 17:48:18'),
('53709dd6e369042afc3eea6c64b86cd1c7576eb763ac466f5c39b13f703604869aa8f52185544981', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:31:12', '2020-10-18 08:31:12', '2021-10-18 10:31:12'),
('53723264fc0659d51f5289c1822b53cdd63557dad87f6230b5fd2253a86c9ab0738e401fa3ee109a', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:35:29', '2021-03-27 13:35:29', '2022-03-27 14:35:29'),
('537b6805efa7edcde2dd10fdb347f01a97867698ee7bb47a36c9ffb473004a21b0f403dc20fe492c', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:08:19', '2020-10-18 12:08:19', '2021-10-18 14:08:19'),
('537d9443cc89d6a1a26689ed147773084a4c8907724ddfbc11cb411aa5c3babb66bd3e68c892c5bc', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:46:29', '2021-03-25 18:46:29', '2022-03-25 19:46:29'),
('5393d711b7ab9defa55869262cf673441f73034a07ffd168d956e0a3a16c8c603c3e1d764ef953b6', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:31:14', '2020-10-05 17:31:14', '2021-10-05 19:31:14'),
('5398307a6db162b835c609beba21537a22c3ced0d4e05b5ab4b58a37118b7c55084a65ee0523639f', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:52:41', '2021-01-07 13:52:41', '2022-01-07 14:52:41'),
('53b5fdf5077e048b9a28287454916b4fc914e747dc9a587e7b656d7d7b1b787dca123ec146519d5f', 27, 1, 'authToken', '[]', 0, '2021-01-02 15:02:25', '2021-01-02 15:02:25', '2022-01-02 16:02:25'),
('53b9bb09600835c8180c3a80c9ea24e44657440259b9de7eb262e56088c930ae630b06f3d030f716', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:33:57', '2020-10-25 12:33:57', '2021-10-25 13:33:57'),
('53ba806da15b12b05d17b406731bc6418d9641fb38edd79818cf41f64d8c948c515f715178dd1a0d', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:21:21', '2020-10-29 11:21:21', '2021-10-29 12:21:21'),
('53be3a22a02fd60912c452fd952d48eeaa2d7e1744dcc5c3765482d193cf58738a938a3ace11de4a', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:13:33', '2020-11-01 13:13:33', '2021-11-01 14:13:33'),
('53bfb5101983252769be51cd2b7540a2e5896fd7b1c5961c89d0c229b03e7669f6b692179ce5325a', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:25:06', '2021-01-24 14:25:06', '2022-01-24 15:25:06'),
('53d7e5fe4a511e4c1684937cc3f5ba01bf547581936525975074df8d8a3e4a044c36ba6277d28a4f', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:38:42', '2020-10-28 17:38:42', '2021-10-28 18:38:42'),
('53e16dd39c6aaf20d59bf7700ef956238cdce25d6372c000c91b2db8ff944f5356436a3b227c5bae', 27, 1, 'authToken', '[]', 0, '2020-10-30 12:16:39', '2020-10-30 12:16:39', '2021-10-30 13:16:39'),
('53e2d3d41739f861788fd052ff80c9c67723aca11051df8e301e034f3f55761440ee85335b7f8174', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:05:52', '2020-10-19 10:05:52', '2021-10-19 12:05:52'),
('53e7f518e9d0d210fe9fe9b4e591579bb99bf42cf3ceb609afa57fb9ccb957670884337950d88c0e', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:04:44', '2020-10-19 12:04:44', '2021-10-19 14:04:44'),
('53fc1255dfe8a014412c3d46f5c21db4dfe692e6e579ec08226474a96f2a348dbd68a4062b0de211', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:04:22', '2020-10-31 17:04:22', '2021-10-31 18:04:22'),
('53fc4c4a8412ad777f81302d896e0dd55cf6225365965b7bd72a0c2687b2f0f1a398c165dc0c49d3', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:45:17', '2021-01-28 09:45:17', '2022-01-28 10:45:17'),
('53fe45fd202236b866493d3e05f499456b0bd6292b77e6aa1c022b0eaf98aa9358d4c5ff8a89be09', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:53:02', '2020-10-17 13:53:02', '2021-10-17 15:53:02'),
('5400355dc5f54c3a9f9f4a1bef79494df950e07e1efab132e44dc049e6a1c91e2450bba722629004', 27, 1, 'authToken', '[]', 0, '2020-10-11 07:53:48', '2020-10-11 07:53:48', '2021-10-11 09:53:48'),
('5432f39d06438a1c2db7fe34bf0ad416c9b7e1dbdb2027b11de0dbc9f9ddb0b9db01ac4782dc0af4', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:19:27', '2020-11-01 17:19:27', '2021-11-01 18:19:27'),
('543d538bb89f76930d833a891bb304211b7c6fc7d1b1685d9b4c439045da2ce2cdc1d84ca930136c', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:32:10', '2021-02-07 14:32:10', '2022-02-07 15:32:10'),
('5459318cba00fb4fa3f774d29e28857cf28437910735ec2a6e0ead909930ab92f5563503c6f3efc2', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:34:20', '2020-12-04 10:34:20', '2021-12-04 11:34:20'),
('5462bcaf72ec847912f3caf39b7f3663e3b5725c44677262ee14e5ad9e3f2ef5854b2a94b9c6176d', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:24:33', '2020-10-30 09:24:33', '2021-10-30 10:24:33'),
('547c165420cc219bd1b6dc60e0066d1aaf220618e31e9a6d37dae9e8edf991723ae3e388f4c69f25', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:23:27', '2020-10-19 09:23:27', '2021-10-19 11:23:27'),
('548904535e2c5dd2e6bb7fa9054eb426916036feca3d7e3ae1738b12f91b92e3d69a16a921c5a124', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:08:49', '2020-12-31 13:08:49', '2021-12-31 14:08:49'),
('54899d29ab57de83f5a1219a1e6ed0599f0e1cc988f9cf52a37316c70833ed7516788ccef98b6321', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:52:46', '2021-01-10 12:52:46', '2022-01-10 13:52:46'),
('54a40a099b69e3e41a7bd1bf6948f74ff88edb76448f49c50f2f67ebeba011b480ebb047a1f81b8d', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:08:53', '2020-10-23 15:08:53', '2021-10-23 17:08:53'),
('54a41b20669ccddfb3544e85fda94e0d7f54cb1acb4d8efd1123824f9ff278c2582f1f2039977378', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:25:58', '2020-10-27 13:25:58', '2021-10-27 14:25:58'),
('54bdf47fcb92418f19fb791713d0fe9c54f0e898233df6fc7c4e55b4a79dc4398a48fd074d1a4d8d', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:53:14', '2020-10-18 10:53:14', '2021-10-18 12:53:14'),
('54c5a2e813de96ddea343873fd2569869be154d8161d41c9166252711c76f37f79ed890688c5d03f', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:40:04', '2020-10-19 11:40:04', '2021-10-19 13:40:04'),
('54dad390da15506cb90f34b24c848822a52b5faa344aafc3a39aa7b9f0a58e62544639f76407e5e3', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:36:18', '2021-01-07 12:36:18', '2022-01-07 13:36:18'),
('54dc9ad8f812d8d5e435d4a4607c5c53781ac4fdb7803d66d88f29c3e92c762cd66d2aec1b048ab8', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:41:56', '2020-10-20 08:41:56', '2021-10-20 10:41:56'),
('54dd70183b005fa4d4cf307d089a203fe73e8fb321464dddf71d72d7e231cd1c613c24703b68c207', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:59:35', '2020-12-06 11:59:35', '2021-12-06 12:59:35'),
('550e747c5639224859dccfe1b2fe1810bca24b942a8b305928fdb7fb0f8734d80a352230c44de919', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:54:37', '2020-10-27 16:54:37', '2021-10-27 17:54:37'),
('5516038561d558168d9582d1327dbbee743f02329678664d7d6a738b3736d2d55b7d7a5e534dd5e7', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:26:21', '2020-10-18 10:26:21', '2021-10-18 12:26:21'),
('552600d5216045d58a78702700af02b866feb420124628a674981a0bb781a5d72e514f2bb7b9ad90', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:44:00', '2020-10-17 10:44:00', '2021-10-17 12:44:00'),
('5539df6714a7b467a58f1b3e2fc0d56661407bf81d50c6725c8049e89552db6e793fc441e4adac6f', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:42:53', '2020-11-22 15:42:53', '2021-11-22 16:42:53'),
('554d9234572e3d3465c8c1ce7dcc38028dbd1ce95c2d4c88d1b6a212d583c01b733793cd5cd2769a', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:50:57', '2020-10-23 17:50:57', '2021-10-23 19:50:57'),
('55529c15211af4bb88072541cb1a2bd25df0f03838dc95c27bc734b8fb4f42ce889cad803d8b82f4', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:54:12', '2020-10-20 08:54:12', '2021-10-20 10:54:12'),
('5575672254520b740fd9b58eb3343c5d278b9e9a050746f18bddc24c0e010fb9b713875f2ac96d11', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:11:52', '2021-01-07 16:11:52', '2022-01-07 17:11:52'),
('55867a314b433a14a8f1d96838b285f822338ab40b9aee68ebe6502b9af09e83c2c43d1d726680f3', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:36:34', '2020-12-28 13:36:34', '2021-12-28 14:36:34'),
('55880fb69c584e2869faabb474646f895b3d6ccf00e99d2accf4d93e061c893ffb3f8af4db6bd1ee', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:37:56', '2020-11-01 10:37:56', '2021-11-01 11:37:56'),
('559db145c97f3babf196c7aa9aa3bcb255316969afb5ec8ae4583353c3fb18e75c225952a6116f02', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:33:41', '2020-10-08 15:33:41', '2021-10-08 17:33:41'),
('55cfde6d36a0631ba557beba43aa0076f8758e99274275cd46ddb83eb67ef6590ee87a88675161b3', 27, 1, 'authToken', '[]', 0, '2021-01-02 12:57:37', '2021-01-02 12:57:37', '2022-01-02 13:57:37'),
('55e3d8cd4c3bae896d29eeaff411aa67e160d29838082dac461378375c5a8bf0ee23216e1804d4ab', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:58:18', '2020-10-27 17:58:18', '2021-10-27 18:58:18'),
('55eea0fb61866df7bb551a3db5d823dc3c609951b365c4d6f73f06cb05cf1b8b6c286f041ce946cc', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:31:00', '2020-11-01 14:31:00', '2021-11-01 15:31:00'),
('55f804d9a769e7a4b8caba1af241a6be366c3a41d1c45fd81d9737f65013254a01c47266d9d0ed65', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:10:13', '2020-10-13 10:10:13', '2021-10-13 12:10:13'),
('5602a9456ef612bc426fce196eb8b3d699336d70d3f2218cc2b4607dc200d0a230a31492a30f62d9', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:39:40', '2020-10-23 12:39:40', '2021-10-23 14:39:40'),
('562d4c36b9278aeeffa10e64f3e223fd1c629c79bfc42a8e4c94c7341841676571af48c5c82421f0', 27, 1, 'authToken', '[]', 0, '2021-01-06 17:09:23', '2021-01-06 17:09:23', '2022-01-06 18:09:23'),
('5631b8fa872e04a917eb15edbff290d0fb49e98c4c8e0f0074866078ae0f62d6204fab2a93f4730f', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:28:32', '2020-11-05 16:28:32', '2021-11-05 17:28:32'),
('564f77976850e431c2e2437a3f376dd315418f2a7a34fe7128729b4d5072f469a542c50fef57f51d', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:11:50', '2021-03-27 13:11:50', '2022-03-27 14:11:50'),
('5658410ceba66e28c4325d2e1d390eba29ae22b6f90d0aa1a66aa6fe3a7a9476e99c7953f567b481', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:40:35', '2020-10-29 07:40:35', '2021-10-29 08:40:35'),
('56784474e05f7d6458ace139c25fc7733a9c9a22e2ff141d76f9e2e91195322365af8458fdcf95b3', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:21:43', '2021-01-07 14:21:43', '2022-01-07 15:21:43'),
('5678b7582cdc03dd5a0ff656f0a41d0bf77a479187518252047301dde6fdba29b116dd93a218f846', 27, 1, 'authToken', '[]', 0, '2021-01-03 10:24:41', '2021-01-03 10:24:41', '2022-01-03 11:24:41'),
('5696463fd8a2a267c41d705fb0ff21a90620c0fc2d4472e69eb9dfd97240af41f30ff4f30870c715', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:14:06', '2021-01-07 16:14:06', '2022-01-07 17:14:06'),
('569aafafe9747689a12a0864158fc878caf6b366ec1981beda68c4f9f21184fdc896e9cf0a35d7ea', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:55:20', '2021-01-30 11:55:20', '2022-01-30 12:55:20'),
('56a883fa0bc1a39ad66411809bec07aac08126d9221076649a16bb6601e74f97b18945dfc442a0b3', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:08:36', '2020-10-10 11:08:36', '2021-10-10 13:08:36'),
('56ac9d2c1baac26af5c3d65c7fb22aaa938b1748e7118f1b4b11562d9c040283d30b39bedd1ee9b4', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:06:52', '2020-12-28 12:06:52', '2021-12-28 13:06:52'),
('56bf6fbe3742bcb159679bfe156527c9f8e2bde91fa1d5d06bab583ca58f23792215422ca80e17b4', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:34:25', '2021-01-07 13:34:25', '2022-01-07 14:34:25'),
('56d07d8ef36115851beda4cc50ed764a87ab69f089d96b9bb7280432260ebce2ed570eefa2d95b7d', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:54:26', '2020-10-29 13:54:26', '2021-10-29 14:54:26'),
('573aeca727fd04e9c29067dfda132ba647a41f4fa30c31685f1d933b9ecd300cd19dce7e83697a0a', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:17:21', '2021-01-03 14:17:21', '2022-01-03 15:17:21'),
('57514e7f9f14c207639a63671eba7adb3ed250929129c04736e2f7aa4335c4ca3f5cce458acb7c15', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:31:00', '2020-10-19 11:31:00', '2021-10-19 13:31:00'),
('575585653ebe45becc9f4b280402c9ef407d01b88987383a512f264964e4f4fe1db57ee7892db37e', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:45:22', '2020-11-01 10:45:22', '2021-11-01 11:45:22'),
('575d598199f2c7a707674724a8e13c11d482c4676946d8c5e7853248ecc468c591e9cf5f36161b05', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:43:08', '2020-12-06 10:43:08', '2021-12-06 11:43:08'),
('5768f5193a06557e9381ab6e58265f2a10e525610467b387297e1c3b1512c67f898f268342f206c4', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:08:08', '2020-10-27 10:08:08', '2021-10-27 11:08:08'),
('5778e550ec1d1aa3c1aa63de2ea941790ce7378ff3f57f8febef950ad76e6dc105c621ab09b3ddfd', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:17:34', '2020-12-28 13:17:34', '2021-12-28 14:17:34'),
('578e8faed1586391011f6b9e92a3c11d94faad2cd68dee6c62a262928d27012523a26a707a99ebdd', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:35:54', '2021-01-06 13:35:54', '2022-01-06 14:35:54'),
('5799a812dc1be2aee43e6057e04fea5b5237a05f60d714d086a66e0473b7daa1f5c7eb23600567ee', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:47:27', '2020-09-27 10:47:27', '2021-09-27 12:47:27'),
('579a10a7f443c8d9484faed3e983416d40ee981b260b6b1e6877c8d5aeb2f8622b1aa0b4f4e4d75d', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:10:30', '2020-10-18 10:10:30', '2021-10-18 12:10:30'),
('57d2bb06afa7ee2a5192ae4e5ff008894ceede9770bb7eb2e0e660277c320dd119d947bd671be1fe', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:58:20', '2021-01-29 15:58:20', '2022-01-29 16:58:20'),
('57e59760adf389f90b269f321f2eda06de966afa283f1edf6c20fbfe309185da1638c69ef70c9155', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:11:25', '2021-01-07 16:11:25', '2022-01-07 17:11:25'),
('57e688b389446cddbe9c6774cc43d7bd93f682b0bc5421144c61285c21a1086a60b66bbb07a44310', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:03:33', '2021-01-01 12:03:33', '2022-01-01 13:03:33'),
('580a4814f2e36452258718251105852c7414918869406f15bdde991dec9c064293c1767f31dcef59', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:47:03', '2020-10-27 16:47:03', '2021-10-27 17:47:03'),
('580c1f481e18c7e33566a0461bfd14cf04824b98ec88ce69299e248b0a5db869d3472e5542c96338', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:41:45', '2020-12-06 18:41:45', '2021-12-06 19:41:45'),
('58263065ef5e812297b971a950f39c344c58a13a7d1a97124bc5746d0fdd4bf955fa0d037635cbc3', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:36:19', '2020-10-19 13:36:19', '2021-10-19 15:36:19'),
('582a1c3a5334293a204ad34e57e85fcf60da09511f216cbea7692091d6c15555059be29d092779be', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:55:25', '2020-10-27 16:55:25', '2021-10-27 17:55:25'),
('582bfa126c6b75246eaf6b6620a933d80c5862141fd0c0928f07e9bef59b063923b0d1e6b7b57f53', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:50:29', '2021-03-27 12:50:29', '2022-03-27 13:50:29'),
('585e13fe62ae5ba557e916cbf9a923932e09c83f86a77a706b6f887e7fe12cd5e1db583a8255855c', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:42:37', '2020-10-17 12:42:37', '2021-10-17 14:42:37'),
('586080dbe0d59f41b913cf00b20fef7e2a8cd1a69d68fa710cc95e66c2e566c35da55818cff5b0ed', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:35:37', '2020-11-12 10:35:37', '2021-11-12 11:35:37'),
('58747f1cfc2cfa927aec45c995ca82b0672c1ee34b3197c2198bcd9677c3304e98ff1354cc08c756', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:11:49', '2021-03-27 15:11:49', '2022-03-27 16:11:49'),
('58817f13e9f30fac051c6f5f2cc5d8498f63501f07f7717419bf2f10c15de28a93d0e266c31e4d88', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:54:11', '2020-12-06 10:54:11', '2021-12-06 11:54:11'),
('588222284124309a3f4ee7398cc0f0ea5eb291ae261382d493cb29157e3346b814eb35a66664e39d', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:03:47', '2020-10-17 13:03:47', '2021-10-17 15:03:47'),
('58840010f20a283bbbd3a86996bb99fe04fb85d1c30b01d04fa5fd19647c79ceae1946669a2999ae', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:08:26', '2021-01-03 09:08:26', '2022-01-03 10:08:26');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('58a81b0cdd77b99f1c8c5edd497bdebfb7d5a9e2d0af0982cf0bb689d61a1818efbbcc3376eea848', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:12:00', '2020-10-30 09:12:00', '2021-10-30 10:12:00'),
('58d49d9b864a4f67db3d524a6b84c8cd5ad4647eb1fade96de61a3528e534557fdcf6a69f2fa0179', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:04:19', '2020-12-28 11:04:19', '2021-12-28 12:04:19'),
('58e9a9de42cda325dae086c70b790ff3b30506c422070910c5f6ac97686504b9d2401494f5836624', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:19:20', '2020-10-23 10:19:20', '2021-10-23 12:19:20'),
('58f8743069c436266ab9cbb360b6da8c07b26fce3ba3db3b62935b34a59a4ab6db49e45c2063e7fe', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:00:18', '2020-10-17 09:00:18', '2021-10-17 11:00:18'),
('590decacb5247bcc21798d1cc981c56afea7d935df3fecc693cc01702b0b01bed2a13b0c842bbcb4', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:58:53', '2020-10-31 16:58:53', '2021-10-31 17:58:53'),
('591b645b05297a9e008bf7c2b8ce08a5f153240504c4f4950d1f78e14e933f9a8abe09610f214449', 22, 1, 'authToken', '[]', 0, '2020-09-27 05:47:12', '2020-09-27 05:47:12', '2021-09-27 07:47:12'),
('5921ff065b61bad600431a7bf0e2786caaf20e82403639972563f4c48fae70dd4d0dc94aaf6c20a7', 27, 1, 'authToken', '[]', 0, '2020-12-28 16:11:17', '2020-12-28 16:11:17', '2021-12-28 17:11:17'),
('59235524b3994cf71000c7a7cc069f047452dc46080791dff90897f88320df6993d17d1125ad1c61', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:52:50', '2020-11-05 17:52:50', '2021-11-05 18:52:50'),
('594c288eec468d0af0d4dbfaf2fa5746a57cd0439ffa3680a2cf6214b0c44535d80bfa925aba4a9f', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:36:57', '2020-10-05 16:36:57', '2021-10-05 18:36:57'),
('596a6cbda474b6807a9c92a1d677b7886fa3ed0bd4a2d306e5f1a79b5618ec24e9aac92426355ef6', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:11:04', '2020-11-01 14:11:04', '2021-11-01 15:11:04'),
('596ab3261265e2ec06e05dffffd5e8ca915127a3f157af5ca9b5c3e77c9f4984c2818193030f6266', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:22:21', '2020-10-18 10:22:21', '2021-10-18 12:22:21'),
('597946e392601f03dcb30422bedbc1f485890deaef983bb92f4e1793b113711e5f4019c9ec159de1', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:37:14', '2020-10-13 08:37:14', '2021-10-13 10:37:14'),
('5996b7542cfb013919efe11d13f2522afd27d745ad74866b65496c447f427eef037548dcbc6fd991', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:07:27', '2020-10-29 13:07:27', '2021-10-29 14:07:27'),
('5998c902581abdee4ff50ceb81e40eff7748221bb99eb9bef3ac4b5a4eb0f8c46960e0767f109dfb', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:23:54', '2020-10-25 14:23:54', '2021-10-25 15:23:54'),
('599c577eaacbe66853c970add3307c72623bd3f800a2f909b8e2ed6ed1de1b4c90a72ac0ec6238a3', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:20:31', '2020-11-22 15:20:31', '2021-11-22 16:20:31'),
('59bb880a6f5fe3e3e1e767dd4d30d43c631677b041448a41056d153a5cbaef404a7b13952d315edb', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:53:52', '2020-12-28 10:53:52', '2021-12-28 11:53:52'),
('59c6b5c0968bcef0f39924e240d8042ba7b40720008291774c63b52ba24c46372a6ddac13fbad77b', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:20:10', '2020-10-23 11:20:10', '2021-10-23 13:20:10'),
('59c91d359889703e8da45a65dbb4d7a9cdd62a5b935ac3c7ee2b136dc12e9d48b6c04e55f1e06be6', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:47:27', '2020-11-12 13:47:27', '2021-11-12 14:47:27'),
('59ce598bff6a92e62fb2e4144de4cfaa8605682f965fd27752ca02a6c53e8a866e0db3fae19244f7', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:25:55', '2020-11-05 16:25:55', '2021-11-05 17:25:55'),
('59d71089a4f78a7320115bddce6901638554808c0e9ec88c1b85f9eb0434c5a187511c3f6ea11e4d', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:54:02', '2020-12-28 10:54:02', '2021-12-28 11:54:02'),
('59d913708b1ca382a038fff73e9bbeb6527e5bd3c5a06efb2420bdcf3e26cbb2d255a94a0001ced0', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:48:06', '2021-01-07 14:48:06', '2022-01-07 15:48:06'),
('59eac41a04ec1223036a6b89bda41af6256c8019208a0ae4b96893f2cf2cfbfa88b265d1baef6a6e', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:31:29', '2021-01-06 16:31:29', '2022-01-06 17:31:29'),
('5a007c358d7b8014ba6d20373764373fd5bac789f490d35b04d26432f359e8a146be6ec55e89d70f', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:10:19', '2021-01-30 11:10:19', '2022-01-30 12:10:19'),
('5a04bc3179868dbc1d519ea4fa45361426ffd72008395a00e16c714f1d3b9c0277f494c5c1f61bf0', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:42:46', '2021-01-07 13:42:46', '2022-01-07 14:42:46'),
('5a1063f8766fbad4c3d7ebaf76947c75f2655997499b36d410e3b294f010676f10c29961f855ffb5', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:40:11', '2020-12-04 10:40:11', '2021-12-04 11:40:11'),
('5a214999414e5ec55dde2e367220c8bdf53c16469c1f3ce40ff3327d58071faba9bfaa7cfd1284d4', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:25:37', '2020-10-19 12:25:37', '2021-10-19 14:25:37'),
('5a29ade61a9fff5c7e8bd1cb6f4c0b412edf899a71dbd514f7781b0d70b8a12000ecc64805e4c763', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:38:02', '2020-10-19 13:38:02', '2021-10-19 15:38:02'),
('5a2aad14d30e57435bc89be131445c2d768de5f678c2e1a86b76ec8bcb9fae57cdd94bdb3985bf01', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:12:22', '2021-03-27 11:12:22', '2022-03-27 12:12:22'),
('5a354ec8ba0907cffefef9aabc5da04d2f539a3346e71f029d3fac0119165f003b389664ea821b6b', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:31:57', '2020-12-31 15:31:57', '2021-12-31 16:31:57'),
('5a4ca7108deaa9d77f7048eb8b0b6a317d1c129fb94805a61c1e7b52268c1d11d07461e867798b54', 27, 1, 'authToken', '[]', 0, '2021-01-30 10:03:21', '2021-01-30 10:03:21', '2022-01-30 11:03:21'),
('5a555cf27b84821e1745ec37c059b229abb2e69576819e62add23321672cc0e9cb26ff5f096ad38c', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:53:27', '2020-10-03 12:53:27', '2021-10-03 14:53:27'),
('5a59aa65b0a95dfb60c6ffb9191064ab71b14f80947a2345884d9361d3d17f316a755cbb7458bbc7', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:58:52', '2020-10-27 17:58:52', '2021-10-27 18:58:52'),
('5a5a4485aa59bd8b9a9ed742b49f106535d6ca3a01c527496d5b65f7bfd5d9bbb3d28f57af0c0886', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:48:45', '2021-01-07 13:48:45', '2022-01-07 14:48:45'),
('5a5ddf77ce5ec749ecc22cc9b20828b999c2c4ddf09b050281feb6e0c6de2a3e6c6a220a35ba0859', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:54:36', '2020-11-01 10:54:36', '2021-11-01 11:54:36'),
('5a60db7914a9ee02be0be5cc532088b437a1039b84338f0bbaae2f5407ae51b2b66861b877a572d6', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:48:13', '2021-01-28 08:48:13', '2022-01-28 09:48:13'),
('5a6dfdc7c1373ca6c018dd5c35b851e1984e1f34ddda6ac9c8277d75ff950e4a08744be2b799e4f0', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:17:52', '2020-10-23 15:17:52', '2021-10-23 17:17:52'),
('5a81269b82f1ca13ad76d9c65d9b5ed36e465ad8dd3bdca44286cb5da49aa60d6fbdf685f0745f94', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:41:37', '2020-11-14 12:41:37', '2021-11-14 13:41:37'),
('5a871c39988f3413a408c552ac0f08c741a1dfa3cee58a5812f552a9c86bf15dd0811d7cb47e9380', 27, 1, 'authToken', '[]', 0, '2020-10-31 12:00:42', '2020-10-31 12:00:42', '2021-10-31 13:00:42'),
('5a9c12bf2d6f3ae6ddc5b0935d6a17e07bf73372af5de770e020506568b702ec4bd57f571d520e74', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:39:26', '2020-10-03 11:39:26', '2021-10-03 13:39:26'),
('5aa4dd56b6a81586239885dad69688ed9b6701e71a8f8d70a95a41d3c345eae35b966dc731103fc0', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:46:46', '2020-10-25 13:46:46', '2021-10-25 14:46:46'),
('5aa9e432f76bfb9f1edb8ca6e6aba9b10c4bffed9a6ca0981857b36950803a46d47177341831cb90', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:35:21', '2021-01-06 13:35:21', '2022-01-06 14:35:21'),
('5aac91d17033d6747c4a7c7b73e2cbfbe8c71ec8e0aee45d9025b1959e18fcd4d3d7f5b3254ac965', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:38:25', '2021-01-06 14:38:25', '2022-01-06 15:38:25'),
('5ae4c18f7cafa8f3ce85e681f0a317da52c01b090672bec127e647725796b9718222eafec9d9142b', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:27:36', '2020-10-17 12:27:36', '2021-10-17 14:27:36'),
('5ae78f269479e8818df82e303d9967f20a1db4390fad9159bdcf8d1cd9262ed28bef53ecc2437563', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:53:45', '2020-10-17 13:53:45', '2021-10-17 15:53:45'),
('5ae9318d70f7a868ea7ff12c18087bafb90e63035a045b922ab34f6e39edfe6fb10abd4300204f9a', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:26:39', '2020-10-19 14:26:39', '2021-10-19 16:26:39'),
('5afb5b23d4d30c57d78ad4d9ff982e4f0c82855e2e5758b9def1023c8d34e2fc59b049b680c499a8', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:49:17', '2020-10-17 13:49:17', '2021-10-17 15:49:17'),
('5afea35a56d13809034d5e0af8f25ba5ae0c1fd68dc4cfd558ed60886aabcb008e52556a98653bda', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:52:11', '2021-01-07 11:52:11', '2022-01-07 12:52:11'),
('5b09c3e9509cb647f1917d682c804d811a4554df2126f5e3d3e1d9b23e6b3cee4180569fed79dba5', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:05:06', '2020-10-19 14:05:06', '2021-10-19 16:05:06'),
('5b18f56d65f728722ebe312f4cf26ab31c64b86b64c9eb4c9dbea8ffb4b1ae05378ad90a427cdb26', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:19:35', '2020-11-01 16:19:35', '2021-11-01 17:19:35'),
('5b219040e0b5f5defc90e0ce8afd865a49696fe82c504c2d7a04d07de33c3a04abb0aba8fa987f88', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:37:09', '2020-10-31 14:37:09', '2021-10-31 15:37:09'),
('5b245de7d85aee095fc5a3aa20f9b90a347d1c286568e74528db6037073c8fde850ca094cc614108', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:41:13', '2020-11-01 10:41:13', '2021-11-01 11:41:13'),
('5b27b864ea2711c8640acf4ea590703af1e22a02e46b032298d32d277e4061cb92f98d278e9678a9', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:47:39', '2020-11-05 15:47:39', '2021-11-05 16:47:39'),
('5b34a3d1c0c2e297eb4a25eda859337be3c7f6f63b086fad58d0562d87e0a15838ffc87340d2e889', 27, 1, 'authToken', '[]', 0, '2020-12-06 13:02:34', '2020-12-06 13:02:34', '2021-12-06 14:02:34'),
('5b76c95079c162af8bf55e1715ec43bff82b13e6393402b56fbf8f3abd78dd2a10c4f933504fe027', 27, 1, 'authToken', '[]', 0, '2020-10-30 12:09:29', '2020-10-30 12:09:29', '2021-10-30 13:09:29'),
('5b7c6b68efba4fed03f65de1892555969fc6ef71c1ef55c30464d7df2cf86c5374e6d90b3bab1b50', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:01:13', '2020-11-11 16:01:13', '2021-11-11 17:01:13'),
('5b81dfe2729f97b7ad221eba956cac8abdd4c5c8b0d323857b0ada39edce9bad22e6f1ba0ea730fa', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:31:22', '2021-01-26 17:31:22', '2022-01-26 18:31:22'),
('5b83a0a268cd0e76fecd188428c84f61e36b8e5299adfd33b40156c76d5158fc58b471ce642363cc', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:28:20', '2020-10-19 11:28:20', '2021-10-19 13:28:20'),
('5b91c08549fa27471b56b2867a13240ced01491de26ffdb0e38e698c57c975a8cec70bd254a18349', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:15:30', '2020-10-29 11:15:30', '2021-10-29 12:15:30'),
('5b9f74877b9cc39d1ae154384e62efe76189aa36cd35ea534271b2e9e1c3b0bf13f24fd99dce3a7e', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:13:00', '2020-11-12 10:13:00', '2021-11-12 11:13:00'),
('5bb3a46018d1f16fbac03296f79a44085105082aee990b88166d5eaaf92f305339aefc61128fa81b', 27, 1, 'authToken', '[]', 0, '2020-12-06 13:00:31', '2020-12-06 13:00:31', '2021-12-06 14:00:31'),
('5bb5fd69ae0ec9b829a97de9ab8c593f53a5ee08a44be01932af291b55c356b9e685f17c6e7df8eb', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:52:07', '2020-11-22 12:52:07', '2021-11-22 13:52:07'),
('5bb7b3b0a6043face7844999e6cf4d89138b8ca0f3d899ecd620779be370edc8fcf5c4837605acb6', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:49:03', '2021-02-07 14:49:03', '2022-02-07 15:49:03'),
('5bb8068e31aa11e8c753ac7f2d09ea6b67fd778c949cc665679fd890538e9dad9dc19d26d0d14229', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:31:10', '2020-12-28 11:31:10', '2021-12-28 12:31:10'),
('5bc9cba4f7e398640a4db8ee00be95bac8e0c04b51dd4fc39794999d20ca7e7f9fdc7804730d45fa', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:42:07', '2020-11-14 15:42:07', '2021-11-14 16:42:07'),
('5bf48c2f6314c6759cd2c339cd2b08bd45f0eadf06dd5270fce0a5c7d4ebd43b53b15d603219560f', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:55:23', '2020-11-14 15:55:23', '2021-11-14 16:55:23'),
('5bf6384da224e7aafac8225f55dd547ea0dfb107300e1224860dc961f868446b22ccdd9945aa0c5f', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:56:18', '2020-11-22 14:56:18', '2021-11-22 15:56:18'),
('5c19b38882993d04c9317525d93f59467bb68f162a266dbde72eda002000092cfacf4f627089f265', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:04:33', '2020-10-23 15:04:33', '2021-10-23 17:04:33'),
('5c3158fb00d5f1c4acc12ea27fdbe0f2e219405678d282f2598a0800082689ed68f72aa23c1cad0a', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:27:46', '2020-10-30 11:27:46', '2021-10-30 12:27:46'),
('5c5d4fa7c3f0a57fab1d9c9121b9a9136324d113a6ab58ffe8b854bf5d48b84a2c362be2f3dc6637', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:44:11', '2020-12-31 13:44:11', '2021-12-31 14:44:11'),
('5c62fd816885bd7625632fab4483d08a666307677ec9934dcda82324ac8f227fe862a08746f50d63', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:58:17', '2020-10-17 09:58:17', '2021-10-17 11:58:17'),
('5c6a791f655388beab6add01da362ce90695d9181719916d7069aa5951908e63cb07184e1fea75b9', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:58:01', '2021-01-09 14:58:01', '2022-01-09 15:58:01'),
('5c6f67ca8e1fbb91932ec46e77f4e4b58094ab3e2c209e8871266c65153f9d9ab557c73ab109a0de', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:46:06', '2021-01-07 13:46:06', '2022-01-07 14:46:06'),
('5c7bab59533b6432d0b7e021dc97c874f99c41ca88b1367244e53eb7fff837724fd3ac06938df455', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:25:28', '2020-10-18 09:25:28', '2021-10-18 11:25:28'),
('5c91aa131a85738ac1e337d03f721ec8fc2429ca287fe8c9924862e2db1c9fa231a58246a1da4d24', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:08:09', '2020-10-25 13:08:09', '2021-10-25 14:08:09'),
('5c9a2f6fe8bbf2d38234172928189c4059e3b44101a91b9ca9a59ec76f043f3b14f8e3cfef820cdd', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:02:52', '2021-01-02 10:02:52', '2022-01-02 11:02:52'),
('5c9e6a906e8d0787450a98358076a18ca866914c7ae38d7e38309dd1e2860b8be3eeaf811988541e', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:04:03', '2020-11-01 12:04:03', '2021-11-01 13:04:03'),
('5c9ecaa2f65fbd550a83be1f670e6d38b45e3f11965e81785304094f0c5651aa5e8c0828f8909418', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:47:37', '2020-12-29 10:47:37', '2021-12-29 11:47:37'),
('5cc56ced310402c4d57f51af1aa0210b6f202d19fa79ca688cc77dfe313b6ed65e22f335d482b222', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:28:33', '2020-10-19 13:28:33', '2021-10-19 15:28:33'),
('5cca4fa745597ce61e0b62727287dc3d52fd65e629c87491a972b38fbdf01dd18906c3e09267afd2', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:07:38', '2020-12-28 13:07:38', '2021-12-28 14:07:38'),
('5cdba75ae0c9045b53434bb546b7d4b85c26341e42d1c54c86e643d500127130cd82d1067d6e8c0b', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:29:28', '2021-01-29 16:29:28', '2022-01-29 17:29:28'),
('5ce025deb09e385dc3860ff546e994e55a931ff84e96854f8aec853ddf470210034249bed5b44aec', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:41:28', '2020-10-29 13:41:28', '2021-10-29 14:41:28'),
('5cee0dbb19b6b4076e14f680ed7949ab91030c1c698091ad415263d9863c04720cd6039490dd5d27', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:23:22', '2020-11-05 16:23:22', '2021-11-05 17:23:22'),
('5d070cfbf34daee74491f554f8b0bbfcbcd1e3de088b744a39a896eee9210820d78e0b90c6e65f7d', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:32:54', '2020-10-28 17:32:54', '2021-10-28 18:32:54'),
('5d1fd0c6cf7a38899629300206e2ec3e466e31121ce06f22abac25af33aacaaf5967f61950fd2568', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:04:36', '2020-10-19 10:04:36', '2021-10-19 12:04:36'),
('5d210cd6271f4ae3fcc19a171b1f42c3906092ea4cddc817d5a9cc82438c038a8a3164fb4bc91ebb', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:36:04', '2020-10-27 10:36:04', '2021-10-27 11:36:04'),
('5d4051ea6c72425ff1a0a1fe142c1ace95ccb404dc1d33393e27c6bdc911435b410daad386a5953f', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:37:11', '2020-10-15 11:37:11', '2021-10-15 13:37:11'),
('5d40a2633aa138dd2fa797a00699fe27274a645d113c17647ce55119103e9ff37bda305d2e7fb289', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:31:49', '2020-10-17 12:31:49', '2021-10-17 14:31:49'),
('5d749dbc6393907386fda919a318d58f21d2365ea35a90f96ae3dad18ad6329ab50b9ba9eff585ed', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:10:22', '2020-11-19 10:10:22', '2021-11-19 11:10:22'),
('5d76a56ab9b66eabbebdf58f96dda02bd46d0e6691bef7d81302d87341c7dc23d9d0e6c3ff3f9487', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:44:48', '2020-11-19 12:44:48', '2021-11-19 13:44:48'),
('5d7d42e5120669de434f4ae9ab647c768b406a60563d5cf811e4c567ec57aef2739b18e79c454120', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:16:03', '2020-10-23 09:16:03', '2021-10-23 11:16:03'),
('5d8fe9495f84e3f1e47b2341df06aec629b5b9ed6607d5e0834d1baf75985d503f841283e03b43fa', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:28:16', '2021-02-10 18:28:16', '2022-02-10 19:28:16'),
('5d97fea0fd9f201b7d451de66edef7d4751b2d127c12757c84d6e84ff0c2ff9855555cbc9a59b48d', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:09:09', '2020-11-19 11:09:09', '2021-11-19 12:09:09'),
('5d9ca746cfaf71248d972e52fdc269ad429396176ad875590c23c27f4837ecf501ec3d275efddeaf', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:39:47', '2020-11-22 12:39:47', '2021-11-22 13:39:47'),
('5da28c0d48fa4471c1787ca4e5cbb137a410df50e339d3fb08ab66f55b0e106893dc45ba793e7946', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:42:46', '2020-10-31 14:42:46', '2021-10-31 15:42:46'),
('5dba4dc20be7e6f9c830e2fa1392fa0f22b50f02560b148490cf84133a8fe3ee37468e947a788471', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:40:25', '2020-11-14 12:40:25', '2021-11-14 13:40:25'),
('5dca52083484c25c8fe589f562bb07dfa040adad5cb88d55f641d2791ae166f3f79f942a2d09f4d7', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:12:02', '2020-10-17 14:12:02', '2021-10-17 16:12:02'),
('5de2aba9f9132fc11912264db3c524a5307975d545180b8dbf9896ffd1045014a5bf827cb0653317', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:12:46', '2021-03-27 15:12:46', '2022-03-27 16:12:46'),
('5df63ca608b9925deaac3c3a45f89355f47391263672c78d59824c848e67115cd0499bd873de3a43', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:57:45', '2021-01-01 11:57:45', '2022-01-01 12:57:45'),
('5e168b004a0270c28827107fcfaf764d4439be2820929f70260eac6a548e4e6161e02856516a3abf', 27, 1, 'authToken', '[]', 0, '2020-10-11 12:06:25', '2020-10-11 12:06:25', '2021-10-11 14:06:25'),
('5e171ee3699b0c90eafd8864f3cf486414963950aac5199c7d1daf5763c7fefaba83a0e9628eaa4c', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:39:59', '2020-10-23 15:39:59', '2021-10-23 17:39:59'),
('5e2335715e18e7fbcfac0400b069d71051143c6400f4b8c7b7c457852d5e130a350adefe43bf92d5', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:34:20', '2020-10-27 10:34:20', '2021-10-27 11:34:20'),
('5e2838395c99861a2332f08e64e35767dcd5868fe63a13f73e379b5ba7d325d74b89e1d91fe94b68', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:36:30', '2020-11-01 13:36:30', '2021-11-01 14:36:30'),
('5e3048663e5f919463c16cb07bc1637eb648a6f509184bbaff107959ee04cfe128fa1d57925a0d41', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:57:29', '2020-10-03 12:57:29', '2021-10-03 14:57:29'),
('5e78cc8c906a47e7e78a5dc82540a1bcbadc3dbbff4ef7f072fa283a42c6d2636652c1b3c52e957a', 27, 1, 'authToken', '[]', 0, '2021-01-01 13:10:39', '2021-01-01 13:10:39', '2022-01-01 14:10:39'),
('5e7ccd684dcb7d4f5c2cd985dea58b941db07d667c274b75aa00f3d8a15e1091f3c7202706e8ed5d', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:06:25', '2020-11-22 15:06:25', '2021-11-22 16:06:25'),
('5e9870ba3460280a8d7214b5066cffba752fd29fc86d098c824434ecf0c5e2ab168cb4d731d04f21', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:00:30', '2020-12-29 12:00:30', '2021-12-29 13:00:30'),
('5e99a21c660645d4af755751ee203b06806a35c92b23e680b570ace64da45b293815c4c5d41c77d6', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:26:08', '2020-10-23 11:26:08', '2021-10-23 13:26:08'),
('5ea8bce4e30f20ef7ac3a088133fe0b1cbdf000fa939a5196d849278a294cc3f716cdff1efe09632', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:32:59', '2020-10-31 11:32:59', '2021-10-31 12:32:59'),
('5ebf41b8c133b07615e5182b74c70759fceba4d9f17c9df9e735c417d923d3c892b0cc102a2c2c43', 27, 1, 'authToken', '[]', 0, '2020-11-01 15:52:01', '2020-11-01 15:52:01', '2021-11-01 16:52:01'),
('5ec1cbe4d7f4c7f0a9b76dd463f1641a0b696227a2c909cab303e2d0a3157cbaaf86d03cd4b52444', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:10:02', '2020-10-17 10:10:02', '2021-10-17 12:10:02'),
('5ec88c1581d1977d9620c5a012cbc3320439f213cad91342dc608babdae737f73735956631160bd3', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:51:35', '2020-11-22 15:51:35', '2021-11-22 16:51:35'),
('5ede1b712b23b4381579c9d7988809a3c781a1838b1edae05b2ae621b37e087b4f0a6d365a41166b', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:48:18', '2020-10-20 09:48:18', '2021-10-20 11:48:18'),
('5eeaefcf90adde5ab70964475302b504492b240c4d19b5462eba37a7853227c5c0c0b09cbc55492e', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:34:47', '2020-10-13 08:34:47', '2021-10-13 10:34:47'),
('5eed5801181fef3a83ba4a079cd86eb15d6db79e91f8396e1b61fa2d7bf6af41ec819ce03c594559', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:26:18', '2020-10-19 08:26:18', '2021-10-19 10:26:18'),
('5ef3f40e4d87cf5e3161e1dacb599c7b80c7045b07d60a31880f0763f42ea8bcdaceb2c8140c6c66', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:00:46', '2020-11-19 12:00:46', '2021-11-19 13:00:46'),
('5f0009ad6ad2e254b0a7dc165f9b6f063cf4055082581ce8b14ea3d3f7f316cf71818311536e917c', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:02:09', '2020-10-17 14:02:09', '2021-10-17 16:02:09'),
('5f0cba8bf516890eaacdb599a2a676314c0221870bd4db5b089bb9455bbbb437e84cf6b6a38982a6', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:07:45', '2020-10-23 13:07:45', '2021-10-23 15:07:45'),
('5f2bba90bc5fd0cac4d64238bf7e7e7c06af4cb16df5a2a84e87bb4db24a4211945f69dff531b127', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:23:20', '2020-11-01 13:23:20', '2021-11-01 14:23:20'),
('5f34f7a8a7cccec77c44f4a49c9fc8efa076175b12f9c3f8b7c6d0cd986b6715874b52e750543f58', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:33:01', '2020-12-31 14:33:01', '2021-12-31 15:33:01'),
('5f36efdf0ad7d7ce87b19338111d96060fde68261b65f10b71e06ab21e538db633d2ddc09baeec1b', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:23:29', '2020-10-25 14:23:29', '2021-10-25 15:23:29'),
('5f3e019a7f617f5831ea7d919707bfb56188355c23fb4b0bcc8b1f3d5b2e4818bb733bb5634802a4', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:50:42', '2020-11-19 12:50:42', '2021-11-19 13:50:42'),
('5f6954a3fd7751b94ee08c024e21f95f653349157002a6e13a890e6331eb56c42ec6b89a6bab497a', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:58:36', '2021-01-01 11:58:36', '2022-01-01 12:58:36'),
('5fa1aeeb068849ba968fc09a580d8e8553f0dd930869c4e576ac6883186885e7b22f39c71164a2df', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:51:00', '2020-11-01 10:51:00', '2021-11-01 11:51:00'),
('5fac8b9adc27915c2123f19cde5c4d655c59838d8d3cfb0ea4c88b118d040cd8cfa2cf3ac0e167d9', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:35:28', '2020-11-01 10:35:28', '2021-11-01 11:35:28'),
('5fd9d320de77e78f80997d87ba628c4d4ba9ec2fa24123735402b94e63165f03e8dc05f7fa685cc0', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:34:57', '2020-10-31 14:34:57', '2021-10-31 15:34:57'),
('5ff89e23a489d156412c19f20764229865d8b5a16081e5ffecb15f3d319f2401c7eb1c1483d0b6f4', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:42:50', '2020-10-31 16:42:50', '2021-10-31 17:42:50'),
('6000d3bc805b65617183eeb69b32b89fb96ecf1890d02734c3a0ae098ba83c7025f902642c8fe0c3', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:09:29', '2020-10-10 11:09:29', '2021-10-10 13:09:29'),
('6006c683b23717c273004585598b1f35dce612660a9518b62c796a8dd6df4d6f2222d6b3377d178e', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:44:21', '2021-03-25 18:44:21', '2022-03-25 19:44:21'),
('600d388b9de91b319656253b1d4283ba078208850b32b9dda35947808d6469c7c3f340de5eeb1201', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:05:13', '2020-12-31 16:05:13', '2021-12-31 17:05:13'),
('600d641246eb8193fdc2ec83d3137fd0fedd5f88df34d39197d3747b493445ea9240ba2fbfb97d3c', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:42:50', '2020-11-22 13:42:50', '2021-11-22 14:42:50'),
('60166ccc1adf122ae71bcbcfbb98a7fa5f485d05009844d9fc4928b8f08c60427f4af7d7292f41e8', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:50:53', '2020-11-19 12:50:53', '2021-11-19 13:50:53'),
('603936baaa8e02f7c5a6564677afbac64b87e623090b5b66df44fb4ae21881e034f7e9d21fc1762a', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:03:17', '2021-01-09 15:03:17', '2022-01-09 16:03:17'),
('60458b62079676ecc2af3e681b5b65b3f43530286c2d80ffd077841d7361722290ef18307b5f75d0', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:59:47', '2020-10-23 09:59:47', '2021-10-23 11:59:47'),
('6050b4e164a70e3e792feccf61dc0967d0c39fc208321fc9667a39ffa608de0b0a0fa51bc2a05369', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:38:05', '2021-01-07 12:38:05', '2022-01-07 13:38:05'),
('6051ab96f53dd59e1761f5731b4937740f495776a964640d003afe455fb1c4d0fe39ad9139c76495', 27, 1, 'authToken', '[]', 0, '2021-01-24 10:52:20', '2021-01-24 10:52:20', '2022-01-24 11:52:20'),
('6082a91e891987d70843afd7b375a735f4d61208885e20cb82082ee1ae90f92f8e9eab3467d6bc41', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:54:16', '2020-11-22 14:54:16', '2021-11-22 15:54:16'),
('6087d1b7d8e1c981d39f41fe7283bd53b0d0624e659c5880f38ddfc3c32118cd48909447bdb2bec4', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:39:56', '2020-11-01 16:39:56', '2021-11-01 17:39:56'),
('608d87c8c86356a631efca23523e140c11ef82936099a569a0a3c92de2e286f8724a3800511288af', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:13:51', '2021-02-07 14:13:51', '2022-02-07 15:13:51'),
('609d39bf69d29824402d53cbdb9f12d82b76fb54284e79e4db5dae7e0db7894423e70310db747f42', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:02:24', '2020-10-19 10:02:24', '2021-10-19 12:02:24'),
('60c8908f282a7a2f9942d053dbc48d56e4a18e7a11d4b0bfb143c8b7bb12c713d130d7cdde90acfb', 27, 1, 'authToken', '[]', 0, '2021-01-22 10:18:33', '2021-01-22 10:18:33', '2022-01-22 11:18:33'),
('60dd93c04e2d1a9fd7611a56aa5613902ffe32d2423b85e80a4957964494fca2bf0543084dff609e', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:23:39', '2020-11-05 16:23:39', '2021-11-05 17:23:39'),
('60e188549262f7a984dce8c9ee3a67ef81fc6189b239585bc493e404b61590bd24c64bfd7c003fac', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:33:12', '2020-12-04 10:33:12', '2021-12-04 11:33:12'),
('60ea0c2fcc3c1a78ed379f727a0be25e1490ff01df3c50942ea10a8d5008d8d8132a38c9b0c3ff77', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:06:57', '2020-10-10 13:06:57', '2021-10-10 15:06:57'),
('60fe7b3d97cfdf47b602a2e1974751b5615ce0d035881dc05b67f01dd8e591b3a284785a031da3ae', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:55:58', '2020-10-15 11:55:58', '2021-10-15 13:55:58'),
('610fb602f86300bc694f40e2e67dafe445ade8c35058a28787fefa61dd14c536d0baecb8261bcab3', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:31:53', '2020-11-19 09:31:53', '2021-11-19 10:31:53'),
('61116ccbd3c85344efb8c88a3cac05ec2aab746dc785f67a63df3a6d03561060c2f31a31d81cfb29', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:13:42', '2020-10-18 11:13:42', '2021-10-18 13:13:42'),
('6117ac317239f4e6dc7c338562a607cd2213bf644c07c0c67719a61329ef42a738c197024565a6d3', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:23:49', '2020-10-31 14:23:49', '2021-10-31 15:23:49'),
('614021cc47e2cee970fd05141736437ef7d472d23842cb8317bbc4e8a3b3be3e92a304696f971f88', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:56:51', '2021-01-30 11:56:51', '2022-01-30 12:56:51'),
('614a6b44225315102f80d71c9a8196c881f19bd2faf6a80a594f613d60576207a1350e4ede0f80e1', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:33:11', '2020-10-18 08:33:11', '2021-10-18 10:33:11'),
('614f5a7eecfc68add7ca8faf580c6a28b19a7896fcf70e99787a2302a246cc4a5d802d95b6daf3aa', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:20:30', '2021-01-09 15:20:30', '2022-01-09 16:20:30'),
('6156034da682a21aece7482fda61b5b7286133d96a452e06a4cc9ab7bac0374d79de48b37a5b3662', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:41:17', '2021-01-07 09:41:17', '2022-01-07 10:41:17'),
('617a15b8405c82f104bcb0c236de3db97c529ff5583d71e09cf2da094525651fa4c638a3bee08bd5', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:10:20', '2020-10-10 11:10:20', '2021-10-10 13:10:20'),
('617be720475afbb4706bcc1231b7a645ab6698a874d3cb0c397d4acaf1fe2b86e97df6a3b6e12df8', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:29:17', '2020-10-18 10:29:17', '2021-10-18 12:29:17'),
('61c12b7f5a00705355b6cc16f4360940b42301425e9febfc99116b95150cf71b8fe0d8f2742a2b22', 27, 1, 'authToken', '[]', 0, '2020-10-11 12:06:32', '2020-10-11 12:06:32', '2021-10-11 14:06:32'),
('61d12cc0fc7c9a9943eaf4100cc84e5ec0f4f932cce28302f5cba478994f0327d6dc80ac4c696554', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:10:42', '2020-11-15 13:10:42', '2021-11-15 14:10:42'),
('61d86f46993a779ca94a99427a7f54b49cfcbe5dfbc8b8354df4763a026e8553f5dc354e5c989f41', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:22:39', '2020-10-17 09:22:39', '2021-10-17 11:22:39'),
('620c2c5f7305025f1a5caa212494c60cf615fcfeace3cee4fb566436e62632a0e722ec2aac55b650', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:05:32', '2021-01-07 16:05:32', '2022-01-07 17:05:32'),
('621ab008ebfc95918b3f84f0f4ed8a9651f33968472436e5fc230b88399ea4c33ec663f469a4693e', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:31:43', '2020-11-01 14:31:43', '2021-11-01 15:31:43'),
('622c0116c39980303648e91472f03b7267abe50861eb880ae4b17bfe4ccb8417f871071dcc55bd27', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:08:08', '2020-09-27 10:08:08', '2021-09-27 12:08:08'),
('6241ce04ba3c7a96140110fff5c8f545b96a7b739103b96c5205fd2352119fe3168fba0d14e2717d', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:19:44', '2021-01-24 14:19:44', '2022-01-24 15:19:44'),
('624e6c1e82cf6f503865937f971457c0e1f7081b39b8d1fb6eb8824dd0a8d574de6ffe1cf28331eb', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:19:07', '2020-11-14 16:19:07', '2021-11-14 17:19:07'),
('6259a981f7fd6ff5eeb91620595dec7937467e736f2dac29946ef981379606aae79a5a48874954e5', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:09:05', '2021-01-06 14:09:05', '2022-01-06 15:09:05'),
('625aba0d3aead4042fb413591820b85074bf93e283cd0557cabf8ef6409bc78ba38cef80a85c2023', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:56:38', '2020-12-31 14:56:38', '2021-12-31 15:56:38'),
('627d7f6b69bfd323579c7e7e7e1ee3e30ce32f66972528ba3faa4c13a30bab4a7a9cb66cc1b8adf0', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:24:52', '2021-03-27 15:24:52', '2022-03-27 16:24:52'),
('62950045050d2f157f23a2d3e2fb5e3a1e06b59edcc554e2729e1925cf850b592e1a3fda39e91c91', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:53:55', '2020-12-06 12:53:55', '2021-12-06 13:53:55'),
('629927350a0b682e9d61dfbf598fb7f0f9f9373b3cce21c937826c6c5e0732ede07aeee2e62a8885', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:37:32', '2021-01-28 09:37:32', '2022-01-28 10:37:32'),
('629f43e99267989ac3cd341e22c1f3a63ea4b27b4beae7bd5f08d1f2b063b699563cb73dafcc08dd', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:00:56', '2020-10-10 13:00:56', '2021-10-10 15:00:56'),
('62a0cac22bbec2c981320dacdb75b613ef334f0e3718d71dc4132ad3c52a3c320806c0e0b964701a', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:30:10', '2020-11-12 13:30:10', '2021-11-12 14:30:10'),
('62ae5803daa469d4f6aa9127867020f3ec61593f4d2c02ca1b88c87e8293da324c2c756c5ff9a7ee', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:47:39', '2020-10-19 12:47:39', '2021-10-19 14:47:39'),
('62f7ffb42eab7d7a882bc6defab94582a38cd5f18bdd3d339c0890e2a549d747b1d7873b75b99ee6', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:27:26', '2020-10-06 15:27:26', '2021-10-06 17:27:26'),
('630c799d89d1fa00d7a9030729514f2b3b9b9747b268af3f1b3e5a51487e0840c44d2c41fce0b45a', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:36:38', '2020-12-31 10:36:38', '2021-12-31 11:36:38'),
('631f05c7d7f55ea699439e69c9c2c82302c5e503c64c90f334ce4e7a71201843704ab83a71530570', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:21:18', '2020-10-19 08:21:18', '2021-10-19 10:21:18'),
('63274079db79d792a283e312a9bf919f9c63e31ec6d8b85b0d1775c3675b927212606eeb980c7e83', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:41:48', '2020-10-31 14:41:48', '2021-10-31 15:41:48'),
('632ce2f7ea072db9fda73f37c9caf66a5e7b36b9a1536cb58b005c2fffb752f61ac023d47959af6c', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:14:34', '2020-10-15 10:14:34', '2021-10-15 12:14:34'),
('63372f1ccaeb385d79e7fd7e4a074e902501e98f66be111bca6abd6cd141b913763140d2e7a0a7b9', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:11:53', '2021-01-07 13:11:53', '2022-01-07 14:11:53'),
('63559bf86cbfb26425daba0537f6abfb16c3501f55d528c71186a5f1367fb7a2458a84325bfa686e', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:51:36', '2020-11-01 16:51:36', '2021-11-01 17:51:36'),
('635bb4b9aeb6c0b214dacdebf217170c2e1ef98371a16e8da4ba57051e960414eab956df245ca13f', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:11:47', '2021-01-26 18:11:47', '2022-01-26 19:11:47'),
('6367f9f54bc888853047659eb829f41da6a2dace67bfaf68ce140504fd9bd641253ac8b8a54a08b6', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:31:39', '2021-01-07 15:31:39', '2022-01-07 16:31:39'),
('638653d6acbb84dce7ad7963255691b9f05aec4d9123640c7c4ac6c25ba20bbfb236412a20d7ecf6', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:35:52', '2020-11-19 12:35:52', '2021-11-19 13:35:52'),
('639c21b7c95077e8e36e7421727317c86d8510d7d56516c52cf4cec79e286faef186f748fe4a0ee3', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:00:39', '2021-01-07 16:00:39', '2022-01-07 17:00:39'),
('63a93f90e6fee121222f3579b5423e83e40f001e8140b6d2e1474760f75ff71cc0a0b73b540f3fdb', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:54:14', '2021-01-07 15:54:14', '2022-01-07 16:54:14'),
('63b2fa6413bb87ccc45fa92fd850fdc63a1627813222bbd7aa7f30f641fff6b583e8308a58d91ff9', 27, 1, 'authToken', '[]', 0, '2021-01-27 16:46:58', '2021-01-27 16:46:58', '2022-01-27 17:46:58'),
('63d2dd2e5ae897b4c21d2649282baecf513b1a39fa086bc9e24938fb66a0a7f070e5f5ea340bff09', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:35:29', '2020-10-11 11:35:29', '2021-10-11 13:35:29'),
('63d7d05de4dab6f92b58c43f9f853b7fc72deeda20dee4027de918486d49c30d1980806cdd514a3d', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:45:50', '2020-12-31 13:45:50', '2021-12-31 14:45:50'),
('63de338732dc4344f2508f469c9aaf658d0e795dde752809d88333ebb3b8dc2e288fc594481e1da3', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:46:20', '2020-10-19 14:46:20', '2021-10-19 16:46:20'),
('63e4ad53282b7e3f0c245eb9337692f7dd2e3d66167e05d224b5d985c8dd184cbe130ba57e408178', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:46:08', '2020-11-01 17:46:08', '2021-11-01 18:46:08'),
('63efd06ff13cb9e06f8083428a57b48276c967df5ea552b26e4746b9eece099adda49e234da050e0', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:08:24', '2021-01-10 12:08:24', '2022-01-10 13:08:24'),
('64041eac63103a83a28ff32a6aa979b4eea656f0e3a86d6f258b2459dcc8ba4fd79cad3d125639b6', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:51:46', '2020-12-28 10:51:46', '2021-12-28 11:51:46'),
('6415feb9bed7adbebcbe6f15f51909381bcc0d1aa89c0aba41506553cb1a59191c22e5b23c392372', 27, 1, 'authToken', '[]', 0, '2021-01-03 10:24:19', '2021-01-03 10:24:19', '2022-01-03 11:24:19'),
('641a3703dc77a0c853be61d1dd48d06d824faae8b7dc150d0e640aa308be0840b1701a089fc63341', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:33:20', '2020-12-06 18:33:20', '2021-12-06 19:33:20'),
('642c07f30480b8852195d62788402de17182f3ea1b352b33346623a6238d8b73dbdbeb6897eb5b4b', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:01:10', '2020-12-29 12:01:10', '2021-12-29 13:01:10'),
('64303ad08755fe58aa3c24c91cc7b6b8489f6b10aa7a00ced4add441148c12f8696e91cfd176de16', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:31:06', '2020-11-05 17:31:06', '2021-11-05 18:31:06'),
('6435d80ce730037d1ef06975da1faca6cf7a6946c0824d88154fcd9477ca7960246b4e5bdd37ce87', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:59:46', '2021-01-29 15:59:46', '2022-01-29 16:59:46'),
('643681a19a1c5e5cf1d32ef4c154b0da5300a6d765eb72128336325fc6dd82645daf48bdf4df2130', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:07:10', '2021-01-17 14:07:10', '2022-01-17 15:07:10'),
('645f5bdd71bb4dc4124517af4c2cd47fac37465a65b30aa78f60fe9c8ea23075b3fe4ee2d78404b2', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:27:05', '2020-10-30 09:27:05', '2021-10-30 10:27:05'),
('6468413fcb0c1f784bd22283d7f4aebd7d13b881c80c1d7b4d2a2255f052b6135180e1179e22ca47', 27, 1, 'authToken', '[]', 0, '2020-12-28 16:11:06', '2020-12-28 16:11:06', '2021-12-28 17:11:06'),
('646b4b7e1eeb2dfc181a74ec87567f57c6ba14a6213d531d9be699f179e109bf8b740d4dde98f8ef', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:57:18', '2020-10-15 08:57:18', '2021-10-15 10:57:18'),
('6479dbf4da16337914a3d3f962a54109683900b6414203e2c627157bd99ec1bc1d837497a03992fd', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:12:47', '2020-10-29 14:12:47', '2021-10-29 15:12:47'),
('6488d028aafdb52b507f2ab4ff5c9601d4b953688a6094f86d141ac8cb848e407045d36559730b55', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:04:10', '2021-01-07 12:04:10', '2022-01-07 13:04:10'),
('6493e3b02b44bb21c9e40589800b21ee0f1469cdcd030fbd6c5e7d094aa27d791092e5e76bcfb028', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:17:38', '2020-10-19 09:17:38', '2021-10-19 11:17:38'),
('6497163b1bd1629aca206cfbf55d5d21a4b4769192cf17517ae444d364a6cc7bb8c5f23cfeaaa672', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:55:14', '2020-10-17 09:55:14', '2021-10-17 11:55:14'),
('64b4854f4389430071430c24ace22ea6d3fd5a36074d73e214234c81dd8629e9d6432507cbb95d47', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:08:22', '2020-10-13 10:08:22', '2021-10-13 12:08:22'),
('64c373af89ccd245d87fcabc7b98c879e37e82c6ace27e8a0e29daa5a8a7222af8ef7b9390edc1c6', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:20:46', '2020-11-05 15:20:46', '2021-11-05 16:20:46'),
('64d829939d045d2d1cfcb56d90c30d1e17fe8705ff16365a510c987a8c7a8e0f948ea61a8c53382e', 27, 1, 'authToken', '[]', 0, '2021-01-28 18:47:44', '2021-01-28 18:47:44', '2022-01-28 19:47:44'),
('64ea384a8afdeae8c60b705d61508fe0ba46a2dadb8f809a451fd22938399e83b6735b774c6eb6d6', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:02:06', '2021-01-26 17:02:06', '2022-01-26 18:02:06'),
('650b681bc7e7c789666c0870a7047b68179cc936fbc8de45f57f17cb683c07a48853780e16b7fd74', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:59:49', '2021-01-06 13:59:49', '2022-01-06 14:59:49'),
('651d9fd1d5c9e0476a66b4cc2734b58baf10c3bd32acf774e2f6b3891b2cf1df71f48f02bb9514a3', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:45:44', '2020-10-17 10:45:44', '2021-10-17 12:45:44'),
('656ca6bb4935e1c460ce4d80c9901873768d8d78bac2ca8141565ae84dc84f3cbddc7f03b854eb09', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:07:44', '2020-11-01 14:07:44', '2021-11-01 15:07:44'),
('658071e587b8b12542f100017a1d760080a7600e4958ccd4579155f0c4b6a7f9f701ca9259ee3488', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:07:48', '2020-10-10 11:07:48', '2021-10-10 13:07:48'),
('65935064960e093a34fb2b19b1d24946de74419ad67d59e6acc0e3e4b838f4523d1d7438f5435799', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:37:06', '2020-10-17 12:37:06', '2021-10-17 14:37:06'),
('65bc0855408cb3d22d264b156bc77266dc286c2643653bd2dc3f0096cdb03a63840385d8db38c835', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:57:07', '2020-12-06 10:57:07', '2021-12-06 11:57:07'),
('65bc9fe17d239c436d4488788aa2656e3865af06774193d798ee3b0a65f0a67748e643e7fc160e76', 27, 1, 'authToken', '[]', 0, '2021-01-07 10:32:28', '2021-01-07 10:32:28', '2022-01-07 11:32:28'),
('65db245235d1e18e9a41224e8e0fd316a3077c11010aaf8dc303ffb23e87cf90f2c5f92fcc6dde5a', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:21:37', '2020-10-31 14:21:37', '2021-10-31 15:21:37'),
('65e2914f98504be35cbc2e021c25a513f06eab6c1dce8360d8dacd7033c7ad83e0f05b8ef3dc71d0', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:11:10', '2021-01-29 16:11:10', '2022-01-29 17:11:10'),
('65e6ad0424659504d1d4eb6f4fd7034302714498e326fb7bfcdd4acd06d4e431180f0e2cfd7e3dbc', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:59:42', '2020-12-28 13:59:42', '2021-12-28 14:59:42'),
('65eb3d0f79f56fa0492308553f33a4a289245224fbe82c05921a6d81fd306019a00dc07d6fa6c17f', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:18:36', '2021-01-06 16:18:36', '2022-01-06 17:18:36'),
('65ed3a26896799f4cf4295ba7ef066e648368de626e7dbcb069df6f581ee5f5a4284c6ee8a6c9943', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:11:58', '2020-10-30 09:11:58', '2021-10-30 10:11:58'),
('65edec9b5091ce89b1c52fe491222d3ddf7b7edcd1f328b7a9ab370678492bb081b07d16ac089aba', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:22:38', '2020-11-14 16:22:38', '2021-11-14 17:22:38'),
('65feced83414f3e176975733fe69dbeb674214111536352d52bc683f187369318e859a34afcb6ac5', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:02:53', '2020-10-18 10:02:53', '2021-10-18 12:02:53'),
('661ed79a0333b314e9224a6cbe08c708c4b5243662e4bc451c72511956a5c96a8ad1aa7d7cffa891', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:01:59', '2021-01-07 13:01:59', '2022-01-07 14:01:59'),
('662a51a6d88e0e86cccc7989db7172475b19cabd63a99bd70a2fd44a32129d39997ea4a6c62d3339', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:00:43', '2021-01-24 14:00:43', '2022-01-24 15:00:43'),
('662ce1c73bbc720af394719710b1cffe0f832a22de657b8de36978e20ca15088826c20df3b61ae0e', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:31:29', '2020-12-28 13:31:29', '2021-12-28 14:31:29'),
('668cee8f8d0eb25ded43a164d1f63fa9e4395931ab25b56147dcb875dfc1655ed1f872e8131fc3fb', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:02:22', '2021-01-26 19:02:22', '2022-01-26 20:02:22'),
('66c5a68868414c2f3a510167e58607f298e32e2b12aa73c01834be6abeed8e0ea5f3a3a44160df9a', 27, 1, 'authToken', '[]', 0, '2020-12-28 17:20:44', '2020-12-28 17:20:44', '2021-12-28 18:20:44'),
('66c8ca5f2266e6e602d3eddc5691387f60deebd1509f60717c386fb6eeb01f14429e6094f4added0', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:48:11', '2020-10-11 09:48:11', '2021-10-11 11:48:11'),
('66c9307db51a9f73e3ce402cd751f00c62bd122c7435a6293d5c777394ef949b1f6079aca73750f6', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:52:21', '2021-01-07 15:52:21', '2022-01-07 16:52:21'),
('66fbf2f72521390089f66e1363750f20830416388e87e0a65c2bf66340ed0079486e77ae5b09b1cb', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:49:40', '2020-10-20 08:49:40', '2021-10-20 10:49:40'),
('66fe4d99b1a5aa8ac00d48bdbfa270e32e8cba4f28169c56624f6a5d862fa5bd9c47bef13d21b2af', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:54:19', '2020-12-06 10:54:19', '2021-12-06 11:54:19'),
('6707363ba112843ac18d7ab2bf8ee6aa5368665f906b9b1b91575167fa0d258b946e779827be17c0', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:33:46', '2021-01-06 12:33:46', '2022-01-06 13:33:46'),
('67188dab08b9da0e400f9eb57eb4f0319b5d9111bc64b5a6e53c8c074851519f17f2647ea85bd8cc', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:26:24', '2020-10-17 12:26:24', '2021-10-17 14:26:24'),
('671a8f343307886677e943a6f5656885a65c07525b04d65eb3d611311a75be0b02294a626683a5ed', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:32:20', '2020-10-19 08:32:20', '2021-10-19 10:32:20'),
('67213561551600d1a806c8ff201f23a56cd591bee2037271d0a5ab268b9bd6bdb374ed23b0b4a75b', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:09:37', '2020-11-05 16:09:37', '2021-11-05 17:09:37'),
('6723d70bc3a43edfc6834fb7510e176c7b7bc737e753d68fbd99039c0429e74ff100ad3bab7c50be', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:31:11', '2020-12-06 10:31:11', '2021-12-06 11:31:11'),
('6738a44d20ca4bce172b49d094e65860d2995c7fa59abb3c72f68dedf48f265884ac2c07953973e5', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:50:17', '2020-11-01 12:50:17', '2021-11-01 13:50:17'),
('67432c456f2ee2edca03c2a9ad4c2ed85897592b93aa9b2a4feb042fd7f96fa71e239b7666577dca', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:00:32', '2020-11-14 14:00:32', '2021-11-14 15:00:32'),
('674a1df4076a5a87ee820a13394b362abc5d36c6428f0ef835156ccd648b100acef9a39a9eedc6d6', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:24:56', '2020-12-31 16:24:56', '2021-12-31 17:24:56'),
('674d8c105de9fbd18f157d7cd70a3de8a630d4cacab3187c213d47dd87cc0edcaf8755176aa12a64', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:34:51', '2021-01-07 15:34:51', '2022-01-07 16:34:51'),
('6764fe75d204bec3a9354dddd40348ff1cca7b4c81ce2d1f8033268eb373b12d561675913c08f170', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:00:25', '2020-11-05 16:00:25', '2021-11-05 17:00:25'),
('678eb80f8d3f65ebb20dd061701d7f10a7befcafb2105bfbbdaf33d93188b83b2fc424666d7c4b14', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:52:28', '2020-10-19 12:52:28', '2021-10-19 14:52:28'),
('67c4f54f625c9c05ddb22b3dc8e1891e04206d4948f1f695e0b425e08d3fd91968572b73f1d97945', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:39:26', '2020-10-11 10:39:26', '2021-10-11 12:39:26'),
('67c7b7aaff6e78b9864c31e44c522aa7bc39b8b4be0745965fed26b878db0f79b72996b45b5dbb93', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:32:25', '2020-12-28 11:32:25', '2021-12-28 12:32:25'),
('67c9fd59f84af4e26aa150fa54fcc54b45e4ad2238155e32ffe72fc9f3225f5e1625113c6b964898', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:38:45', '2021-01-07 09:38:45', '2022-01-07 10:38:45'),
('67cb4734a33b9e205fc0fe0a4c9aae02383b6c0136af301c1f47a43aacb0bac1717b2345ca60f992', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:35:06', '2020-10-18 08:35:06', '2021-10-18 10:35:06'),
('67d4317c07c9b9e807248aceb39451503c35b2259513ea3758903a24f44b2a79910cbc83b7d56492', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:44:07', '2020-10-19 12:44:07', '2021-10-19 14:44:07'),
('67d5a268a2650327f4edf7c3ab21df74401cf7e724637e60053f499a3bbf886a2826dec5ab2741f9', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:40:29', '2020-11-19 11:40:29', '2021-11-19 12:40:29'),
('67ddd623106292e1d9b0da0f9f01799ff381215c48fd6a18f838b2bbf48dc0e3ff387702236e1b2b', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:48:41', '2020-10-18 12:48:41', '2021-10-18 14:48:41'),
('6817c1c8ce7cd349380d3664e115f03d539c8438e9b1be0275b39d989413ef0a91b34df9fc237a58', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:39:55', '2020-11-01 14:39:55', '2021-11-01 15:39:55'),
('68201cae18b181f26005f886ca1bf3bf5547ad7c34c8e899709ffacb45348a9611c9ea25cc20f2a5', 27, 1, 'authToken', '[]', 0, '2021-02-01 16:31:44', '2021-02-01 16:31:44', '2022-02-01 17:31:44'),
('6828b39bb6692be3579451c05a668b7fbac8d76e8be943a5192aa3826391d45bb5aafee7d5e07605', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:04:58', '2020-10-23 10:04:58', '2021-10-23 12:04:58'),
('6829a33cb117c1e6c807a8058f6ed57359ac5dc46e56bf8406c0c99fa88d22fa6fa87c1f4170b8d3', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:38:02', '2020-11-22 13:38:02', '2021-11-22 14:38:02'),
('6831432caaa03a370b5912101e46553272e9e1c25c397140146b541050ea9fda9b067327d2c747da', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:34:07', '2020-11-19 12:34:07', '2021-11-19 13:34:07'),
('683e7ac60557b9e50dfbf24168ca9ee4fecdd363d36b37ff516b65ddab6821d020dec1ec60fef70d', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:02:23', '2021-01-24 11:02:23', '2022-01-24 12:02:23'),
('68414e327ab1cf29d92656cde40edc4a4463e788f191edbc36e89b92b83a993fa819e944966ed5df', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:49:22', '2020-10-31 10:49:22', '2021-10-31 11:49:22'),
('6845082df0d99812124fb081e066756512b609c374898c2215f537d185fdfa5370d753352618f6b4', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:18:12', '2020-10-29 11:18:12', '2021-10-29 12:18:12'),
('684fbb3855d8d5c6054660fc11d7b81558e67ebb29145646426f2aec7fb4c71926624f1a8e1b73b7', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:47:04', '2020-09-27 10:47:04', '2021-09-27 12:47:04'),
('6858238f72291a39a94215f863c73a34887c1177f541acb65cb10718447ade3364fb47e2b1785775', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:03:44', '2020-10-19 13:03:44', '2021-10-19 15:03:44'),
('68674f0e72d83f90cc122d6e8770df718d04a9f09714a3d9e8883c0bfc167b4bd74ffa4469c8db05', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:40:07', '2021-01-06 12:40:07', '2022-01-06 13:40:07'),
('6867dd0c2baccad33a1fcedbdfe2e0ca028e4465e24c80b1b589016e843d42b9b9793814088e9bb7', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:04:48', '2020-10-18 12:04:48', '2021-10-18 14:04:48'),
('688dd09890b8351b40190bd7264c2349651584ba118b3b3c57bd0d7fc2c3dfcc0b47e5577e1bab3c', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:54:17', '2020-11-14 15:54:17', '2021-11-14 16:54:17'),
('689b60bf29b63c0f3deaeca0cea06a699fdc01518a50ffbd41f5b0f7fb5c1b0ecbd0de0b5ec61111', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:06:54', '2020-10-19 12:06:54', '2021-10-19 14:06:54'),
('68ca09b35d6ca69694b2baa837b7169d90ad57495311ff714046231e2c16ae2d6ba46001b6327811', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:02:48', '2020-11-01 11:02:48', '2021-11-01 12:02:48'),
('68ec71f933ff70f91ae4c59f87f9843ef3241e1424a14d2651a96288cbb3843635eae880255ae312', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:04:53', '2020-12-28 11:04:53', '2021-12-28 12:04:53'),
('68fe586241fd66bd542b687751c349e9af83aeb7faf858f008f6ae5da9a00fdecac572beca17e24a', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:35:36', '2020-10-10 13:35:36', '2021-10-10 15:35:36'),
('69016cc4900d5bd7c83568a61a9c86d9b4bd7c473ea24a8909ca130e0f1cbc3a8492d8cfdf36665a', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:09:55', '2020-10-31 11:09:55', '2021-10-31 12:09:55'),
('6902ab1e7a62233f0ed96dc4296e5bb748de961b31ea24b5768661d16124d10e19866271839eae32', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:11:55', '2020-10-03 13:11:55', '2021-10-03 15:11:55'),
('690806dac5aba52c40ca236e871b7d9c831953f936772ee4254fa5c3002cc0dd4f6ed09751501123', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:13:48', '2021-03-27 15:13:48', '2022-03-27 16:13:48'),
('6926db29dc85e87c53c8a0ca616bc41c42eecf9e085de5eb469c982a56f245f9c04cefc0fa6bd78c', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:17:22', '2020-11-15 14:17:22', '2021-11-15 15:17:22'),
('69322a92cebdb559a8da51e5cb1a6f72987c48c50c86a2b94a1a83369d91e9484beca096e77afd4e', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:28:27', '2020-10-18 10:28:27', '2021-10-18 12:28:27'),
('693959ab667aee912eb6e8e0b54a67f8ec0ec79df727d6180bcd8ad8791a0190b6f7b15b93bf6dbf', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:16:08', '2020-10-17 14:16:08', '2021-10-17 16:16:08'),
('6965914db0e5699344c6780c650bbbd9f3f75296ea44e4073470898b9fe20386d4ef50619eb4709c', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:46:55', '2020-10-25 12:46:55', '2021-10-25 13:46:55'),
('696d61c968a7ec7a249d2a0635a95627ed518804b790bef92a35d315fa5039a6365f03f24b7c127a', 27, 1, 'authToken', '[]', 0, '2020-10-27 09:55:42', '2020-10-27 09:55:42', '2021-10-27 10:55:42'),
('697b78e85107d32d06f866835bbead06621997d2fba8c33610a32d407ccd69ad7455dc3d8534fa76', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:12:21', '2021-01-07 13:12:21', '2022-01-07 14:12:21'),
('697e57b4756c5ca98d07acd343462c6fd282df780c03d7d666d6e9c4fc1f99e494805c0d4c6c41af', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:42:02', '2020-11-19 12:42:02', '2021-11-19 13:42:02');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('697e6db287a55afbb92d1b821316e2e233552684e4068547cab44a2a701ab7cb029ff16cc6ed0672', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:30:37', '2021-01-30 11:30:37', '2022-01-30 12:30:37'),
('69935a14d56f8eb9f74078550dbf753176736058baa21741c3cbebc7d3620b030b9c7edc5485842f', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:13:07', '2020-10-03 12:13:07', '2021-10-03 14:13:07'),
('6999ec13d25c98f3cb7ffb7ae4586f328919700539df7c5f95ea167f644aeed2d15ab9f5c25931ca', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:48:18', '2020-10-17 12:48:18', '2021-10-17 14:48:18'),
('69adc9217bdb97bb6cd4fa47c31190e6c8cdbdc95a68cace2d4a33969d2fd27091672ec9b96f09d1', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:28:55', '2020-10-28 17:28:55', '2021-10-28 18:28:55'),
('69b01332ffaa3f5c5b0abd68a1f423cfd4a5fcd6f792ecd94edfe82c93e534ca5e6b3e9d221b90a9', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:04:52', '2020-10-11 10:04:52', '2021-10-11 12:04:52'),
('69b93058726ffdd99f47d68aa09bd3f29d2fb505e55d5241a4ca6fe0d9155d06873b418c07311899', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:48:20', '2020-10-15 10:48:20', '2021-10-15 12:48:20'),
('69cdafa75dc2db17d24ede15a10cdbb1455a2e0d4cdca4dbd66b2ae56c4396f1cbce60b34ddcf39b', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:58:08', '2020-10-17 09:58:08', '2021-10-17 11:58:08'),
('69dabdbc7f3aa032994d9cf7fc1c9296ddb9a769bd632fad089312777398d8bd1c5f517cfaa35dea', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:35:13', '2020-10-31 14:35:13', '2021-10-31 15:35:13'),
('69e1bd14caf492af9a8202825205add9a950bd9b20cd1a5629d70e1658a46792e4ea0f7d14125709', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:45:17', '2020-12-29 10:45:17', '2021-12-29 11:45:17'),
('6a0abf0d02c4613a72883f8b8383d2a68f2756360b0b2702bdeb104d172465f4cf341f18dfa3528e', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:41:52', '2021-01-01 10:41:52', '2022-01-01 11:41:52'),
('6a1189dd290266eebabd913fbbfb52ee5f86ae1c76492ff6e9bf27fa77b07830f9545514041e5ba2', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:25:46', '2020-10-10 13:25:46', '2021-10-10 15:25:46'),
('6a2669be3db6565e794aa6408427e4f3144904b413d3fe5469ef51703d43809d6d1997de3af95354', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:54:40', '2021-01-07 11:54:40', '2022-01-07 12:54:40'),
('6a2caced45fac3f27f1c378c695e0bbfffa6d652a15e3d2d856c26e1da7d5c4e3ceb81cd7ebc50c6', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:32:10', '2020-10-18 08:32:10', '2021-10-18 10:32:10'),
('6a3877e763610f0d53542182abe73f3ca892520a5843ffb299ba40315a887a91eab678e5eabc52be', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:18:51', '2020-10-23 11:18:51', '2021-10-23 13:18:51'),
('6a4f22b4d661d72d49c2f5a11415caada7d2a5fba4b08d28bd7a1414e560285785a2324b0a8ee42a', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:52:02', '2020-10-15 10:52:02', '2021-10-15 12:52:02'),
('6a7bfb812552e317bd47a43b518dc05242e9507596483dcd52eb0cfe1ef2d790578249176d87c0da', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:47:26', '2020-10-25 13:47:26', '2021-10-25 14:47:26'),
('6ac56c96fbb4a28d725273c1ee3198ffc3c8cdd4ed88bc9e282f3485e5dc71357fceac29e64a2051', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:37:17', '2020-10-23 10:37:17', '2021-10-23 12:37:17'),
('6acaadd5ad698b6ef66ecb3b0b66fc1fa5b2c101b133286a3a7b76e8df34c49584193b7c2e943554', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:33:50', '2020-11-01 16:33:50', '2021-11-01 17:33:50'),
('6acc5426b44222391127c2e093aeee268f68f9e5f15a80024549d591a1e2a9ae2307b13b1c61ca33', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:30:49', '2020-11-15 13:30:49', '2021-11-15 14:30:49'),
('6adb249d27d8e2f5efd52da93ff93ca926a161ef0ab1065b7d9bfa9e6c488f464098e66bb357361b', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:25:06', '2020-10-13 09:25:06', '2021-10-13 11:25:06'),
('6ae1234a7aefc70d1206f3a95e9e1fa2e4ba6966f1723e5a2008929f0be07e01b16423fbdb068189', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:25:11', '2020-10-13 09:25:11', '2021-10-13 11:25:11'),
('6ae9e04821cc8687164e99a8094c12aefa413a0dd34e2372e560e355b31f0b3585f8b07d0ec5e35a', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:17:29', '2020-10-17 12:17:29', '2021-10-17 14:17:29'),
('6b021b70a468a78a61608272bcc91367e4334d3e79943a77c29bf369513a2cf36c5df11912698395', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:02:50', '2020-11-22 13:02:50', '2021-11-22 14:02:50'),
('6b1c5da4ef0ac8c144827f15628ceda7870b5002edb1eb9d347d32e448aee2359779e42388977b21', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:01:05', '2020-12-06 12:01:05', '2021-12-06 13:01:05'),
('6b28dff32919229314f79081a6be540d7475875f8c670cfa06b382e86a7b61c34585434b5915d544', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:04:13', '2021-01-07 13:04:13', '2022-01-07 14:04:13'),
('6b5d764b75fff8fd62a80a47360893a45721f0b6bcdc7b6a94392f7bf88411354ab87df25f8ff44f', 27, 1, 'authToken', '[]', 0, '2021-01-01 15:19:51', '2021-01-01 15:19:51', '2022-01-01 16:19:51'),
('6b6f6a50027432944c1b43fe57aa0e142ea75055957808f2098159aff9b5709b8be111a856d0fd2b', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:33:13', '2020-11-01 16:33:13', '2021-11-01 17:33:13'),
('6b81d70ee3e8832621c5c50fb43145cf3f74ccdd668aaa573f28ed55be9e70f593e19bd7b29b119c', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:47:01', '2020-10-31 14:47:01', '2021-10-31 15:47:01'),
('6b9033a67ba001f54f0da10e224d7a69847a0d75dc9b3a11703000fe131f70a34792db3a2f07dfc1', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:09:21', '2020-11-01 11:09:21', '2021-11-01 12:09:21'),
('6b9a3bd987dea0730b17d77d515ee15bf5c4a892ef62a65d6f810e967185bc3f589222013fab0eb9', 27, 1, 'authToken', '[]', 0, '2021-01-06 19:18:08', '2021-01-06 19:18:08', '2022-01-06 20:18:08'),
('6bae7da9a47cc4e8bdb510b47f5779dd0253a377590c7f5ce7b5fe277347a37efaaeb3259451f587', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:55:38', '2021-01-29 15:55:38', '2022-01-29 16:55:38'),
('6bbe7255ca8b951beca7b0b9b78924732048db1e978e1c40642a23deae23d7b515bed83c127e6f83', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:25:17', '2020-10-19 08:25:17', '2021-10-19 10:25:17'),
('6bd710a972cb824c11a7623969e3f7be36010c1c9ab174d062ea708993b113e576d645908e5d0e05', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:20:45', '2020-10-11 10:20:45', '2021-10-11 12:20:45'),
('6be1de142260631b2d65366cfd2fc03f623c7603cf2ef104770d9740df31b1830ad767536b22f93a', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:47:13', '2020-10-03 13:47:13', '2021-10-03 15:47:13'),
('6bf8e12fdc7a37358c28cfd4065d6a290c1bc63d42aa7371768d893769e28ee6528906bff8c4c2be', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:22:10', '2021-01-27 17:22:10', '2022-01-27 18:22:10'),
('6c17d8de0ae3c69686e942317212b14a1d47783ba77759427e8253af1d535cbf0a97c02542efff23', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:02:39', '2020-10-19 10:02:39', '2021-10-19 12:02:39'),
('6c19bc1cdf8c08a2be51bdf1e9745a3b77de2af01f0a04d97f35391a0a8e62161a7f94a7fe7633ae', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:28:16', '2020-12-31 15:28:16', '2021-12-31 16:28:16'),
('6c2aa3c1dcbff102e3615f1e2ff74155ea2320912066130e86a81574357252e8fc847f948e9f012d', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:08:38', '2021-01-06 14:08:38', '2022-01-06 15:08:38'),
('6c3f618c67c30ce037e9f4557ca283d3cb761c46842f8a979d2fc36ad4362ff4f06a36f2087ec1c1', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:02:39', '2020-10-23 15:02:39', '2021-10-23 17:02:39'),
('6c4329e9e7ad030ba57f01c69ab73d831f9eeaacd46006b593f292ab19576f69205e13ca2d42a7cb', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:17:54', '2020-10-29 11:17:54', '2021-10-29 12:17:54'),
('6c4607c110457c28665d2b412d06110ad646d6890825553e7c29b12afc7ca2c090c85c84d4d0e7bd', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:56:49', '2020-11-05 17:56:49', '2021-11-05 18:56:49'),
('6c6bc2339b379eedecb09b46076e5fbce43f0faf8885deaf5bda514cacd8fc201a7e8b540fd725cf', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:07:13', '2020-10-17 12:07:13', '2021-10-17 14:07:13'),
('6c71d2bf1a8778ac48eee3f4bbce0a8509e41b98536a09eddcd7bdaa8670fce35b28d7b095445f3b', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:07:56', '2021-01-09 14:07:56', '2022-01-09 15:07:56'),
('6c7ecc5a0049644333572fd0155cc4e5ec72021be1d7898edcbcee3133491a57a84c32829358231f', 22, 1, 'authToken', '[]', 0, '2020-10-05 17:43:47', '2020-10-05 17:43:47', '2021-10-05 19:43:47'),
('6c8a481652062a1389183a9c5cc3e5d82e8b83647641436acc0ffa2df537b85414c0c12b29728bfe', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:41:17', '2020-10-23 14:41:17', '2021-10-23 16:41:17'),
('6c982004781b1404b500ee458eb8e4ff8ed08e17275b85bdbc7c0977f556988b37bcf6ba2077ab89', 27, 1, 'authToken', '[]', 0, '2020-10-10 12:59:12', '2020-10-10 12:59:12', '2021-10-10 14:59:12'),
('6ca73bcfd10ab8720d1b8450c08a34f171c911e4b83eb08352b8b918bb7ec377c0c97791ca463ab4', 36, 1, 'authToken', '[]', 0, '2020-10-29 09:17:17', '2020-10-29 09:17:17', '2021-10-29 10:17:17'),
('6cade1ef7077976cf2d8d12221d5127b49e7dc807a5430e7071a360430e37d8cbb1aa9351336a477', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:40:48', '2020-12-04 10:40:48', '2021-12-04 11:40:48'),
('6cd22887fc537cfee6b59759e9e95f31489b4d953ccf95c4f2c7ae5aae06bf2ab8bfc95b47a5ebbb', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:36:58', '2020-11-01 16:36:58', '2021-11-01 17:36:58'),
('6ceca23b60600fe6ca9e84a7839475cbab192fc1f39af251f1ff6ab3625ac32d1feaab2507275264', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:02:26', '2021-01-06 14:02:26', '2022-01-06 15:02:26'),
('6d19a64754cfcd44009b35bb7655b103885a049e552211c88edc1204c73225f631a6ce50522d3019', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:26:37', '2020-10-25 12:26:37', '2021-10-25 13:26:37'),
('6d2a7bfc6484070e2e70a130a37864a0770e1abfb506d92e8512f8077f790d2ea2770ef4232085c3', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:36:29', '2021-01-29 15:36:29', '2022-01-29 16:36:29'),
('6d2ec6bb003d194bbbc4850775a5f6f22c2ab3e3872b7392e3be9e3e2f3807b60b537f8c0e0dfad9', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:04:24', '2020-10-18 10:04:24', '2021-10-18 12:04:24'),
('6d39610ea41c9adba3c7ea86b782c11c8cbc2b34640d3a9a80061cd580985263f719db11b2ac66ad', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:13:14', '2020-12-31 16:13:14', '2021-12-31 17:13:14'),
('6d3baa453c18e0ae6ab100c66d72064619977cf98353eed01dea0d4f02722d393ef0a8324880267d', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:12:04', '2021-01-07 16:12:04', '2022-01-07 17:12:04'),
('6d40f2bea8840ba281ff3557465c36b8a9bf2d002a21b7c426e1a22f5bcb09ad574de5b54ca43022', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:00:27', '2021-01-07 13:00:27', '2022-01-07 14:00:27'),
('6d5d472e4fa4f79506d0f4fed38217737a64df110b22a557d1ac94c54000f33d18dfd78d41c96462', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:54:39', '2020-11-19 10:54:39', '2021-11-19 11:54:39'),
('6d6562daa6b3570d386fbb64bcc09a2b665669cba546d27f9cc0ab97cd6488a0aebb8a90bf0ddcaf', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:07:06', '2020-10-13 10:07:06', '2021-10-13 12:07:06'),
('6d9e1cfbedab35108c81b39858a973e76254018019987928963cbccf9af88df2a62713e1aeffb09f', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:54:32', '2020-10-18 10:54:32', '2021-10-18 12:54:32'),
('6db55650f2ceb92ca8a20cd22ce5cfba4295d464aaec551983fdda02906472dfa895a5aa079e0c79', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:58:48', '2020-12-28 10:58:48', '2021-12-28 11:58:48'),
('6dc285b52a9639368814648f680dcda4219273f53f3cf4c91f7e5df77ca9b04789990324ce984d0f', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:31:56', '2020-12-06 18:31:56', '2021-12-06 19:31:56'),
('6de42908e3a64208227793a409fda0f6603390167c9868658f51d0d774bf6a7e25f89a7bfd7f25bf', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:07:18', '2021-02-07 14:07:18', '2022-02-07 15:07:18'),
('6de67663b64d7f0073ca1685bc74be98ee9b397c9fd192b3b0c1d64e53e7ba399bd921f54b99aca3', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:42:22', '2020-10-23 12:42:22', '2021-10-23 14:42:22'),
('6e048b7fd2575569b2c435e0734447ff61ade54cbbc9f6dcf9d4f1da07c5a8cf8d6d96f5ab7cd4d0', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:16:26', '2020-11-14 14:16:26', '2021-11-14 15:16:26'),
('6e069e8bc1e6ed5f8e74fb1cd2995ad77453794b89216a18ee56c0f59ec48dffdcb1d210c341cc1f', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:52:37', '2020-10-11 09:52:37', '2021-10-11 11:52:37'),
('6e5fce800a0164a68e98d6b3e9d8a38ca90794df076fba1856d22618bc8c85b5e4506e3f0982288d', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:46:28', '2020-12-31 10:46:28', '2021-12-31 11:46:28'),
('6e6c6f8fbe27967b3c2d67ac0c52f24c831e93ee4cc279dfe35547f2bd236778669bd5a1ea5da8db', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:17:22', '2020-10-19 09:17:22', '2021-10-19 11:17:22'),
('6e787b619f7f733dc3cc50a173c3657c8fbfc630657572cc8504034412019b390d8430ac02dc00f3', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:05:36', '2021-01-24 11:05:36', '2022-01-24 12:05:36'),
('6e79c592bbd6298f95392509c9765d27ffc6cb7c742c9f905732faf7e1fb608dff5d5222fe5e8af0', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:17:32', '2020-12-28 12:17:32', '2021-12-28 13:17:32'),
('6e819ccc6141b237891b8c6798aaa6e68dfad00359d65f365eb9f596278583125e878123001e0b50', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:03:22', '2021-01-30 12:03:22', '2022-01-30 13:03:22'),
('6e82744dc5a0fc7a3cfbacfc49f3377782a6bcd2a747b5fd19e9e16ae1983f054458c8b75accc465', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:09:23', '2021-01-06 14:09:23', '2022-01-06 15:09:23'),
('6e863fbbebdd19ae2385c9126b4d9ec9cf8e7713669b542574a5ff74be8cda307698d8e5192a53c5', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:39:22', '2020-11-01 17:39:22', '2021-11-01 18:39:22'),
('6e8b2f43e0d7470353bbbe118fbd61de5fef8dce07b16c001b4bafe5cf98c3d53626867780c3ecb5', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:44:49', '2020-12-29 12:44:49', '2021-12-29 13:44:49'),
('6e8bd80b64d02d10b7a92865a95b6770807a541d953fae9508a4336806a16495ddf07145c4d4af2e', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:48:58', '2020-10-11 11:48:58', '2021-10-11 13:48:58'),
('6ea9302eb7e3813d7547b70449b455c6dc5e7827b17e1c68e7f973cd13a0dc64b9d6411324a1c889', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:02:53', '2020-12-31 15:02:53', '2021-12-31 16:02:53'),
('6ec35993db6e7eb5df1f4aae89af4d3c418c7b92f059428c1502fbb0d0131dcd84a624086a606152', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:42:30', '2020-11-14 12:42:30', '2021-11-14 13:42:30'),
('6ec76614e4e3e0dd30eb6715c49b2ec8170ffa1fdd163d1901fa035a525a509678d15c784d60a2f7', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:12:48', '2020-10-25 13:12:48', '2021-10-25 14:12:48'),
('6ec8e3be420ed392b6d7eac183a4cadbee9a3e8bfd8e7d5d88e722a4066bc03793e6fb517f0b4d1e', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:05:40', '2021-01-03 09:05:40', '2022-01-03 10:05:40'),
('6ed37bdb3463b48c5f38457f09c7d5dea4974556e67d7f532ce7cb0952b712f6778eed7bc8c98466', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:15:55', '2021-01-03 14:15:55', '2022-01-03 15:15:55'),
('6edf5423a261551bc490565ccbe23aa46474e4a9a4d18abee0762bb8ffbbc7358b3fdfaa44ff951f', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:47:55', '2021-01-06 18:47:55', '2022-01-06 19:47:55'),
('6f10bddd6c0f4428e515e923777f922afaf3060c20e5dbc59fe27af01e059bde233f33c87a0e18a7', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:59:47', '2021-01-29 15:59:47', '2022-01-29 16:59:47'),
('6f3b3bfab2ea4939f6f41e69e2c5f7069b33ad46c312bff142186d91f652f095cf6e30a53a9a31ea', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:21:11', '2020-11-05 17:21:11', '2021-11-05 18:21:11'),
('6f50a93521b5b26972ba144a00c62dbdbd69e7e24674fc934ad8a22cdf814a58ffba61af5958e663', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:01:58', '2020-10-15 10:01:58', '2021-10-15 12:01:58'),
('6f61ed0731079b7aa880be86557b5701d9c084579c75468e74f4ffd5bd3366196a14c8c3bd15877b', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:59', '2020-10-03 13:10:59', '2021-10-03 15:10:59'),
('6f6a0bb80258711ccfbb38ea393f190725d327ca5639d343f89d9ddb23c9d56385d6e5815219f3df', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:26:42', '2021-01-27 17:26:42', '2022-01-27 18:26:42'),
('6f8b8149886320f1891e20c5e0438b459004d3adbdf6eafdfcff8fcb09cbef5a64a678e2359feb41', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:25:05', '2020-10-10 11:25:05', '2021-10-10 13:25:05'),
('6fbc069aa9ee843d30fcab18d399fd71e5a6226e78c17850bdce3c32f80395acbc98e73fb4bc8408', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:12:22', '2020-12-31 15:12:22', '2021-12-31 16:12:22'),
('6fd2a434c25b26eaff095ac3de575bb2b57f15bfe2bffb0101470b3ab55bc3036d3455867da384ec', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:44:36', '2020-10-17 09:44:36', '2021-10-17 11:44:36'),
('6fdb7d1d546c0c85770ee14d7b050e92df665702144df328b739a25fc7bf10eaefa6e2e61eddf93a', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:14:32', '2020-12-04 12:14:32', '2021-12-04 13:14:32'),
('6fddcd117d1e37f2f5ac92f6bc57095338ef4ea95fb2180b74951a8ca9d31e60561b6b8f37d23165', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:10:40', '2020-10-13 10:10:40', '2021-10-13 12:10:40'),
('6ffe3d3f6eb4122cd7cd554d03dbbfff37da05d25f8470bfc62ec3484a26a8a5fd2b87c9334d4590', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:04:13', '2020-10-17 11:04:13', '2021-10-17 13:04:13'),
('7030cca48b46d5fa0d66ae0b8e1da2aee7e56119acc59ed6c1beb552c8ae36fda1109cdaf25a905a', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:08:29', '2021-01-29 16:08:29', '2022-01-29 17:08:29'),
('70391c5be64fabbea40fcddf870a20506e4e71fa8b24e206290eb87fb26315a7b8bd1ea93fa5293d', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:22:44', '2020-10-15 11:22:44', '2021-10-15 13:22:44'),
('704ff9babebfbc6bb38e8f6480f4609b4a6235c00545467d0f0baf969120fedf4cb06ba3b7edf6f8', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:43:15', '2021-01-30 11:43:15', '2022-01-30 12:43:15'),
('7050c06586dc693e21ffa93aa5753b018e621245b7dc1a0e6c6fb91a43851e98d9fc070c8ab130f4', 27, 1, 'authToken', '[]', 0, '2021-01-21 12:06:02', '2021-01-21 12:06:02', '2022-01-21 13:06:02'),
('7054c98f5b9906fccc81ccad976ddb296f95f2cb4956aa3b137dd3c3945b432444108f413c3850c3', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:59:01', '2020-10-27 17:59:01', '2021-10-27 18:59:01'),
('70651ca7f89a2d6b1a03296dec131c9638e78d633eb84814c75617672ca43c94ea497b044122811a', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:54:41', '2021-01-01 12:54:41', '2022-01-01 13:54:41'),
('708129219e5aafc3a85664b677e89c06a731bfc711c65e98055eb278b1a8ce760b287c54109c1889', 27, 1, 'authToken', '[]', 0, '2021-02-02 17:26:12', '2021-02-02 17:26:12', '2022-02-02 18:26:12'),
('7081e4b5f3a774a5687eae6a327168360fd4509fffcb28f342bf9e93f1ab7529972c3a3f2ac8a87e', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:52:51', '2021-01-02 14:52:51', '2022-01-02 15:52:51'),
('709412699972e2924407645aadad71250830e961b4105626cbfa1a923f56b21e842caa425c190087', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:37:48', '2020-10-17 11:37:48', '2021-10-17 13:37:48'),
('709a990883dbb24d06b42127d8b9e847abe3c28b55fcb1cb04d05901abe2495ffed6d96d6370931f', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:54:21', '2020-10-29 10:54:21', '2021-10-29 11:54:21'),
('70a7a8c598b079e58bdbeec2e1fc5a572f366447a4db0ce9327161425dc92f199ed69ec3c1a1795b', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:24:14', '2020-10-31 11:24:14', '2021-10-31 12:24:14'),
('70b0557e481a82138bdfa71d53cbef85c31fdcb4d3b40f780e9e2c59c02f87dc83e016bbace39cf1', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:43:06', '2020-10-31 16:43:06', '2021-10-31 17:43:06'),
('70bedf08c0a0fbf0d08afc0ccf75aa8485fdc8c95060fa8ef2c5af5c2dc5526728786927580b0097', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:59:43', '2020-10-27 10:59:43', '2021-10-27 11:59:43'),
('70d912d19a5870c4d3f3f78a3c4065e0b3b78667de2d9bdfb4449b425bb1e9b705b73ddad51318e2', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:59:34', '2020-11-05 17:59:34', '2021-11-05 18:59:34'),
('70eff5e1db2b8c84c60823c16d65159bdadded5a4d2b79cf355290b49a3d1dd553e5d89ed932f5af', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:18:32', '2020-11-15 14:18:32', '2021-11-15 15:18:32'),
('70f1f37c4fa95a50cda1122c98c44f8857b5aa36a98d0ce60f7f3c14da809fd680c8f551dc0e9227', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:03:20', '2020-10-11 11:03:20', '2021-10-11 13:03:20'),
('710ae3d2905fbbcbdc2bfd7f54eb04d358a7f2244532d51f80752aa81097649306240911e7020ec1', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:15:37', '2020-10-23 17:15:37', '2021-10-23 19:15:37'),
('71140553304cc6ae9d7c3f9a18dc30b3b68dc00c73b22b8c87c6bbf6030bd616e560d933ef139a55', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:28:20', '2020-10-19 12:28:20', '2021-10-19 14:28:20'),
('7116bcb7aeb8bba265806b70b73b50316eccc020980d8f9b90320194a0a8ac38ffe3caa22aeecdbc', 27, 1, 'authToken', '[]', 0, '2020-12-28 16:10:03', '2020-12-28 16:10:03', '2021-12-28 17:10:03'),
('71494457ffc9aa62fecf2350c958d3cf03c12f7456e41c37c79fc2b9148ca9cb9bc30031f6cedd09', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:22:57', '2020-12-28 10:22:57', '2021-12-28 11:22:57'),
('7151023d404f19d4eed3a459e202dfc523fd705dd8b57300b4993372c2e855022c2ea2dd2448f4f2', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:38:23', '2020-10-27 17:38:23', '2021-10-27 18:38:23'),
('7153e4ffaa349b0cca47b9047d4cea6b5740a0f08272a3606cb11b87fa13da8c08a537de668fe6ab', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:59:12', '2020-10-19 12:59:12', '2021-10-19 14:59:12'),
('716703a16a1207d9c83ad1b4738493a9b4fba6640c9c33192a15d015fa1f64e29b0d47ec0660d607', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:59:48', '2020-11-01 10:59:48', '2021-11-01 11:59:48'),
('716788cd40a0fdd95dbf4c953da4152ff3986ca2d12b925ab44e4207672d1a4f79a7cde9b1912e87', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:51:16', '2020-10-15 10:51:16', '2021-10-15 12:51:16'),
('71924b9f9dd0d0d07b575a8c0d8aaae597e5e38e987cce9bb1544ada478e3be2b85ed9ece64ce970', 27, 1, 'authToken', '[]', 0, '2021-01-22 13:10:30', '2021-01-22 13:10:30', '2022-01-22 14:10:30'),
('71d64204d6b7e932371bc85549b4d02cc2103a11dd781f2d165f4ae1b70a4322f1c7481238e11e23', 27, 1, 'authToken', '[]', 0, '2020-10-27 18:19:15', '2020-10-27 18:19:15', '2021-10-27 19:19:15'),
('71d98cf2aaed90a7401dba6d50acca562d62fc52757005d54d48282a490e6e14cd3983b904394d52', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:25:31', '2021-03-27 11:25:31', '2022-03-27 12:25:31'),
('71ff178f203d740230b76701a379a0cb18698f4d38855f214534575ff03d9d1b98c2520ae67dff32', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:50:06', '2020-10-11 11:50:06', '2021-10-11 13:50:06'),
('72048420d1febb3c0912e5e9aadcf0c2447647cc17da6ce51fc62e9b744dee1632659bc842c107db', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:52:16', '2020-10-31 15:52:16', '2021-10-31 16:52:16'),
('7208596e1bcea83097600a1dc8ab239cd2fc924afe4a8bb4007428f90fb1d451c9d244393f92357b', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:56:51', '2021-01-28 12:56:51', '2022-01-28 13:56:51'),
('721d135e7d47a338fcb0898cf52d82af674df278c512a55154be3c28aeba4d505b810186e2d3630f', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:45:23', '2021-01-26 17:45:23', '2022-01-26 18:45:23'),
('721f5d496fe317374a4e6175872236aacefe8949428daa610970bcadaa31ffb4a3b3bc455f5d19e7', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:42:04', '2021-01-27 17:42:04', '2022-01-27 18:42:04'),
('7268722481cdb5497894fb88f0ccd227dbbade1d2890f1c22c3b975721b8b43a19513b2b8a3b592f', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:16:40', '2020-10-23 09:16:40', '2021-10-23 11:16:40'),
('729105ed7094b7ff4f90344f79bec51dd641cff9b0cc9ccb2a1b050f4d7f1f45d0c309641f5a25c7', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:23:11', '2020-10-25 14:23:11', '2021-10-25 15:23:11'),
('7298af5d0e0629520dddeb498d642d4d7235d86f06337865b3e0028d8929c524dcc16d6ab454eed0', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:26:26', '2020-10-19 11:26:26', '2021-10-19 13:26:26'),
('72a6862140448c0b24d587e1128c629a5a6b528266db777911ea27871037d19008e7e620396c185e', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:53:51', '2020-10-27 16:53:51', '2021-10-27 17:53:51'),
('72ad387be0d307043ca0f79b793b9ffaa8c15704585b970e5ca78d37d56ac671d42cbf0c935c513d', 27, 1, 'authToken', '[]', 0, '2020-12-12 15:02:50', '2020-12-12 15:02:50', '2021-12-12 16:02:50'),
('72b2b4d92705c545ff685e363d94e673f337edd6f72940211b73c7261355013e6e24b66ebe8b204b', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:01:56', '2020-10-23 15:01:56', '2021-10-23 17:01:56'),
('72b537a951b64bf5bebd0dd408eb18e72c49ed5d59963724352b4cfee7e481e09de27241d99dd14f', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:01:29', '2021-01-07 13:01:29', '2022-01-07 14:01:29'),
('72cade2c9c3fe17ac8f2fa92d96ad8821afd305e3460a2b8b843cc4dcdba77afd563d1b01a94da82', 30, 1, 'authToken', '[]', 0, '2020-09-27 11:50:56', '2020-09-27 11:50:56', '2021-09-27 13:50:56'),
('72d1ff08e946af65a82c1eb5928064da0891d9dc5be01aa3c996e68c8eec6c11a2bc3c8b91807710', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:12:00', '2020-11-14 15:12:00', '2021-11-14 16:12:00'),
('72dd8eb0628c3d7d2114f21e79b7e20cd78ed9cfc85c8117baec754348c92cfffb768634d1472ebd', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:31:28', '2021-01-29 16:31:28', '2022-01-29 17:31:28'),
('72e5b194290d45719e8881cb71629ccc7431e7ca912c0f11d91d7e2014e9ac4d753fc50877774463', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:32:10', '2020-10-05 17:32:10', '2021-10-05 19:32:10'),
('72f3dc8d9f426f683222d16031b957a67e69aac34738b2cd0874970135e4fc5e4e1565385dc0ec40', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:37:45', '2020-11-01 16:37:45', '2021-11-01 17:37:45'),
('72f49c63c87962c9c4733da9f7296215231197cb0dba70bbc6fbfb0ae227be954ce0e2cdc515ef0d', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:18:51', '2020-10-19 14:18:51', '2021-10-19 16:18:51'),
('7303870617e3e59318906f7c2bccbb7b638940aa675cc90e29d1995ce2a49e1f21ad085dd25e2629', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:50:56', '2021-01-09 14:50:56', '2022-01-09 15:50:56'),
('731039abfb6afec16d55bd7462cd490c098b2ac5df846511e9eac8014a6674a34e58ee1ed45576f9', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:05:38', '2020-12-31 15:05:38', '2021-12-31 16:05:38'),
('7313b7d7fe83e17afa3bd4be2a5006273dfa7dbf436afe1b4cbb564edf72bca363e7958933e225a1', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:15:42', '2021-01-26 18:15:42', '2022-01-26 19:15:42'),
('73216f2f4897e291b9d455a181f4e7b3a6a3f8b0b3e05e63cdcae7b654cbd6d5d9a972bded12a7f1', 27, 1, 'authToken', '[]', 0, '2020-11-11 15:57:53', '2020-11-11 15:57:53', '2021-11-11 16:57:53'),
('732583f2692ce805626ccc84937c435424b8f8aed4126e05cae1612bf00fb6c79a029673e360d32b', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:31:11', '2020-10-27 13:31:11', '2021-10-27 14:31:11'),
('732fd8d78d0ce9ccb6b8f7ddef3269656003375396c394be65b284b4af2b87b36983521ca1ab74c5', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:00:22', '2021-01-07 14:00:22', '2022-01-07 15:00:22'),
('7338ac84aa686369783970e1f956752e52f3fbe7595ae4481caf5e12278f5e995c559cab1f82179c', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:44:23', '2020-11-22 14:44:23', '2021-11-22 15:44:23'),
('733efd609adb466cf20b5e8db50bcdd691821ea2b4bc0bb5ffa541cec12de33fff101fe9d6a521af', 27, 1, 'authToken', '[]', 0, '2021-02-02 17:33:30', '2021-02-02 17:33:30', '2022-02-02 18:33:30'),
('7349d96a836084657efa273bac82198e171b408b8dbce176afd29d53e39a57a9a79c1bdb062a52fb', 27, 1, 'authToken', '[]', 0, '2021-01-27 16:05:58', '2021-01-27 16:05:58', '2022-01-27 17:05:58'),
('734dcd44d34a6b2d4c8f86322bf378eaacbfb4bb25ac77771177d24cc915c6afdd84baf66708bf82', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:15:44', '2020-11-05 16:15:44', '2021-11-05 17:15:44'),
('7352aabe8ded78c3299c9dc07f59c2c3a9b1c127d1b2e3c2e27a93e9214e610654f2f223dc4bfc68', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:55:32', '2020-11-12 08:55:32', '2021-11-12 09:55:32'),
('735df32d8657e76f474a1566b908ceea6de3e8756c855f2ad93bd5691d18a4bcd6a99f870069ff50', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:57:09', '2020-11-19 09:57:09', '2021-11-19 10:57:09'),
('7363262838a4172614cadc9a04111a12ea6776fec01a0ee9a1d30f626fed86056968b74053998ea1', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:26:29', '2021-01-07 15:26:29', '2022-01-07 16:26:29'),
('73869e294bed5e5268e1dfd13e3805822cb9d84594598610dd0dbccd574517dcb5f727317b60a108', 27, 1, 'authToken', '[]', 0, '2020-09-27 12:09:18', '2020-09-27 12:09:18', '2021-09-27 14:09:18'),
('73ac846507eaacb7e9ca57260a188942a551d5452d2135f5e10bb42e30c30bd6fdbe14c2174edbe4', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:11:00', '2020-10-23 10:11:00', '2021-10-23 12:11:00'),
('73b69e942fa74dc8aa4b203973e6e7a7fdc7912efd5dcedbb5a358e8877851819d48d872855982a0', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:00:17', '2020-10-18 10:00:17', '2021-10-18 12:00:17'),
('73defbae5b741626f2e238bd75e75b3456f84ae2cc4175e1b20d1dcff5d7d2d32e8e4af6b8cbdab5', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:03:40', '2020-10-23 15:03:40', '2021-10-23 17:03:40'),
('73e294c00a1e3ccdb620da31cbd30f1219c662274328f307567f877d6c1af677ea8fcc985e86da71', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:58:32', '2020-10-15 11:58:32', '2021-10-15 13:58:32'),
('73ef5faea9569240fa1973b55ee45ea5c6eef5b2e162a51fa3e50431a53648739684fe01223283f7', 27, 1, 'authToken', '[]', 0, '2020-11-11 15:59:54', '2020-11-11 15:59:54', '2021-11-11 16:59:54'),
('73f30d002a51cdfec2aa85c54b1a206a0cefe93e72e53eb11664a9d5aba5d05070211d91b7b4dabb', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:07:46', '2021-01-28 19:07:46', '2022-01-28 20:07:46'),
('73f3dc681aefe2c336b635ae2adc4a68a2fb0f540b8489791ff9df8b7265136d96787997d3d8e3a6', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:42:17', '2020-11-12 08:42:17', '2021-11-12 09:42:17'),
('73f63e9f0ec40b69f62e5480fcfe7446e0e26b6bd64c9fcb7027af3980948512f4f129bc6af45063', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:33:51', '2020-10-19 08:33:51', '2021-10-19 10:33:51'),
('73f9ee51c0fb9ed4aede42b065011ba60fe3ae2a344c033f5ca435409502176c414b852e5dfef7a3', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:09:51', '2020-10-13 11:09:51', '2021-10-13 13:09:51'),
('740ef76f44d447f94718c0007abf733ab5d9af4f485ac82b8c024ca5d255a683e696ce79f858d7e3', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:15:32', '2021-01-26 18:15:32', '2022-01-26 19:15:32'),
('74117cbbcd60a1dd82161c14bcd039fa41bae644430ea6621527b5ca35b08ad92fd31833e86bca19', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:25:15', '2020-11-14 14:25:15', '2021-11-14 15:25:15'),
('741cf92805b89b585a757194810388cb22aeabe8521f00680045ce6cb49d5d43b8909a5e7229926e', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:48:58', '2021-01-09 14:48:58', '2022-01-09 15:48:58'),
('7427471b8c4f70a2aa2e1b56dee7352c09e88cc4aff5b08ba7658217a11f1af4e954b3b2c7be5620', 27, 1, 'authToken', '[]', 0, '2020-12-28 15:41:53', '2020-12-28 15:41:53', '2021-12-28 16:41:53'),
('74375fa067fc46173bc0053c00357002787915a0435f2293bdd70a83d33217d068d119e38e66adfa', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:38:44', '2020-10-17 09:38:44', '2021-10-17 11:38:44'),
('743935dbc4c786b4c6f3ad778c35a32683f5d21f354d6e241b29efba1783f59d04f1595e3b1ca9f0', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:31:16', '2020-10-18 10:31:16', '2021-10-18 12:31:16'),
('743951cf953265934b5f3ca35e8f54bdcf1ee135d21ed92df1cac76ee0025c6d323fb52414de1235', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:05:35', '2020-10-17 12:05:35', '2021-10-17 14:05:35'),
('744fbde1011c4ab990523c5457c5588813e7f9d4bda85e2ac5c419e720d0a79e6d6d5a3cb53eb783', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:37:21', '2020-10-30 11:37:21', '2021-10-30 12:37:21'),
('7456f279843aa06656151dbe4644734810a878f968d3a635cd42949883bc4540548d3511cf214771', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:08:44', '2021-01-30 12:08:44', '2022-01-30 13:08:44'),
('7460aebca194fa427010e3f6182c63269300f22418388d734498ede2dd83db6d7bbb242aef0c94f4', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:20:35', '2021-01-29 16:20:35', '2022-01-29 17:20:35'),
('74734712ea5098ba289b08118b85482fdb686559c4fbeabc563c6477c68771aac98e617b6bc3022f', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:35:54', '2020-10-20 09:35:54', '2021-10-20 11:35:54'),
('747e0df574ea6c30227fbf7993171fe49e6fb491ba2799762eb5bb0d4ecc4ee5024bfa3ff30c09a2', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:18:50', '2021-01-06 16:18:50', '2022-01-06 17:18:50'),
('7481aaf80dbae421d0c198adc14711e2baa4cc8581e8a2d53717abd5dff415a7be88cc56c88dfab8', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:33:12', '2020-10-15 12:33:12', '2021-10-15 14:33:12'),
('74976f625e7bfe09183346856cf44f0b806bd2bd2b351b9c63babcded181b44d5d3bfee55d843420', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:19:04', '2020-11-19 12:19:04', '2021-11-19 13:19:04'),
('74b45e15fd1ff94bcfa58c46f5839855a844220fef5da4892c2131c7fbf88bc414af526dd12a95a6', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:45:49', '2021-01-07 15:45:49', '2022-01-07 16:45:49'),
('74c2224164cd36545c456daa9a3c4ed5f897f6c08f4ff752a32cccbd37bdfc5f6044b058a957a225', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:13:04', '2020-11-01 14:13:04', '2021-11-01 15:13:04'),
('74c580ee9b3d04c64710f47c5591da9ae3a30f2b926eb0513d27fe1ad9c7cc0becd65760a6b05d24', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:06:48', '2021-01-09 14:06:48', '2022-01-09 15:06:48'),
('74ca6c13d1d64c5696a4e6313d15585220e166dc6a79ba3aa72801bf46fa91742ff93cc94eea9acc', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:25:11', '2020-10-08 15:25:11', '2021-10-08 17:25:11'),
('74cb8e941dd64e4189c6a5929a0bb02fff8604d2f471f8a4f3901aadd85dff1952253165191e06cf', 27, 1, 'authToken', '[]', 0, '2020-10-10 12:59:01', '2020-10-10 12:59:01', '2021-10-10 14:59:01'),
('74cd9d86ab5a37fc0792312e2c573021be4a520b640ce218df2d65ebcfb1dbd916e462f4b4f3fd85', 27, 1, 'authToken', '[]', 0, '2021-01-09 13:35:50', '2021-01-09 13:35:50', '2022-01-09 14:35:50'),
('74fc4c36aa6a73ae8b4e5b5e7b87dc824a082bd8c874e55ea6d15f489cfe4ffac9e442b586ab650e', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:33:02', '2020-11-14 14:33:02', '2021-11-14 15:33:02'),
('7509852aefbdc3256d9aa3b2d4b7e0a3ef58d2bd88e768a31aa6b97434f6be6dca093ba49f40f017', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:44:39', '2020-10-23 11:44:39', '2021-10-23 13:44:39'),
('750a8b9ccb372688f53fcbff03ac54d36ac99011dcf388d9d9f61d098246c50655761487dc6d305f', 27, 1, 'authToken', '[]', 0, '2021-01-01 13:10:56', '2021-01-01 13:10:56', '2022-01-01 14:10:56'),
('750f35d376661d3f0cb1b1b8134c02458e86776c4cc81e324353a843862c8292a49077167e8575be', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:50:40', '2020-12-04 09:50:40', '2021-12-04 10:50:40'),
('751174ce1374d03fd595c678a889fddcd06779fb0e6db91da37e211ea271abb115afb7dd8f014d1b', 27, 1, 'authToken', '[]', 0, '2020-11-01 15:53:28', '2020-11-01 15:53:28', '2021-11-01 16:53:28'),
('754020f7d0d3825663f61e40588270c10ab14442bacc528820042cb9bdf91098c21d150d1c9bb4b8', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:19:08', '2020-12-29 12:19:08', '2021-12-29 13:19:08'),
('7584d9640745bcffcfd20aa9d9bdd94981289b2e345bf911a452b734a84a0b01d799f5d47d985e6d', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:05:50', '2020-10-11 11:05:50', '2021-10-11 13:05:50'),
('75a0c7d695bfbe8899b7fd5a8959b74510dc48348c14d4b2c322563111b681529dfcc70e7832fe41', 27, 1, 'authToken', '[]', 0, '2021-01-29 17:02:23', '2021-01-29 17:02:23', '2022-01-29 18:02:23'),
('75a0d7fbdffbae9b7cd92df1957fc0c386838ff15ec3267c3367f9be4c29bedd3876ff98a4d8e414', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:58:59', '2020-10-23 12:58:59', '2021-10-23 14:58:59'),
('75b3966aa5e8a7d1e13b2fe0b39a60a8940228b68af27467ab3da1f6af4e1c840d59fbc7c61bd432', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:53:59', '2021-01-07 12:53:59', '2022-01-07 13:53:59'),
('75c06310d561a4cf3b320e077c3299a52473816aedffa21e6bc767c7364fa56a24d79c1adc478ab9', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:12:34', '2020-12-04 10:12:34', '2021-12-04 11:12:34'),
('75c7cc268b1f4bfd141ce0bd0fdd6db155025a109306c7acfb91a1a04133774e03061b243f9125f1', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:48:19', '2021-01-07 14:48:19', '2022-01-07 15:48:19'),
('75e18e8fd767b0ba552330ae25704930edc3753a2eb0e5311a783434b95be8939f1868e2e6ecbbf0', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:35:06', '2020-11-01 16:35:06', '2021-11-01 17:35:06'),
('7604ee8b3b4c797aef8e052bae65b5d3bdfe0ec01b64b9c462ee6de9500fe6edcf02d8e0fa4fc7e1', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:22:52', '2020-10-13 10:22:52', '2021-10-13 12:22:52'),
('762d3d59003309666822decb137a74f17bfef1e2344195346d1418d3ea04141ea428c6b2a0a39690', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:46:33', '2020-11-12 09:46:33', '2021-11-12 10:46:33'),
('7631449c2819a09aacd7f867d40b315feb35f7b7175d3769a5ab2234eadbd2162bb3dcfdb38a5864', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:43:09', '2020-11-01 10:43:09', '2021-11-01 11:43:09'),
('763fc926bc0ffd56cb7e31abc28ce235747790e0a4429140f4eb7c72445fa32d28fe40954dd490bc', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:34:05', '2020-10-23 14:34:05', '2021-10-23 16:34:05'),
('7643e9c4b0aa17569ebc0086dd787e4ee3b57e25af7856e5f4370b0b8f62f47efe8966c31de8ec91', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:11:00', '2020-10-23 13:11:00', '2021-10-23 15:11:00'),
('76580745f75f63b83926f5a48d8545cf0132a63b05ebe2714c41215bbe1e0281ac1e587628ef61d9', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:31:42', '2020-11-15 13:31:42', '2021-11-15 14:31:42'),
('7659587e99b273332071d575a4687a54e95114d0e90670467e848ada7e809c9675ff5f4e9bb33310', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:13:30', '2020-10-10 11:13:30', '2021-10-10 13:13:30'),
('7665d0e4e70468b1d613fe92e4b7455cd3d48d8b6ef5837efdedd43f352296428386a8d4f36bb811', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:37:25', '2020-10-23 15:37:25', '2021-10-23 17:37:25'),
('7675e37102b64362b4b01be99debbcc1de9c5ff244dbda729b3d538db31475e505ef18ba02c77434', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:24:12', '2020-11-05 16:24:12', '2021-11-05 17:24:12'),
('76842349da2f6e1bba5a60f1e43f1eab2e738b7ca1f217fd53028bd3992d9ea3d27e7631e26af79f', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:08:56', '2020-10-10 11:08:56', '2021-10-10 13:08:56'),
('76897e7ddb5fd8f8971e0abcc0957295bf3d8f1dfd651976f3486a4d9a76f8171adc7429a84bbecb', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:37:29', '2020-12-31 13:37:29', '2021-12-31 14:37:29'),
('76961416ab3d602de64166863ffc1d2e41f504195f9a1a3d599b0460dae7aa2c6803468815b549a0', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:16:00', '2020-11-15 13:16:00', '2021-11-15 14:16:00'),
('7697185d5ed72d4cdb2aa42ba29780b336242dd98610313b657610c812c32bb35e059f4d4d11f822', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:41:50', '2020-10-23 12:41:50', '2021-10-23 14:41:50'),
('76c28c008338659bc3ba0dd210579a6d6344112e2419194222d20997b1f936a6c47e8a014862ea06', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:18:28', '2020-10-23 09:18:28', '2021-10-23 11:18:28'),
('77107058c685b8f79bec90c3b34ba9ef53bc92085f7baa273514a4ab9778ee6a92594c58091d0452', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:32:39', '2020-10-18 09:32:39', '2021-10-18 11:32:39'),
('771eeeaea7ddfa10753e7c7eb27d81c287f8c5c7ecd34a64da249e90e110585355bb3ee169a5950e', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:34:16', '2020-10-18 09:34:16', '2021-10-18 11:34:16'),
('773e699d3ef3f6c543dc9b1194c0ee537e6185cb7ef14a39ac4af3df4522d23cb4176c540d757767', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:16:43', '2020-10-25 13:16:43', '2021-10-25 14:16:43'),
('7748751a9754272c66de07864563ed7e73899ff1de98742b05e89d88af34469c9cc5dee0626ab9c2', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:33:45', '2020-12-31 11:33:45', '2021-12-31 12:33:45'),
('77495b91fac3af7847542a53f9564353f2878ccdc1780664459e27b6c2501aee1bf39bde4027bd5e', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:03:34', '2021-01-26 19:03:34', '2022-01-26 20:03:34'),
('774a72723f7b894326ac8d02abb06c30436c9bd303abbdd187ae10cf31fa16ea4828802c7c088aaa', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:57:33', '2020-10-19 12:57:33', '2021-10-19 14:57:33'),
('776de9fc1b8f25f3d622e46b9c6cc76c06bde2b5bdbba76dab3b28bf0a227300b21302923e4ea720', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:01:51', '2020-11-15 14:01:51', '2021-11-15 15:01:51'),
('776f08571345f2aefc809d50349a782bd7782e35f3f491916c3744c29c437e3755dab30114fa6d5d', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:44:50', '2020-10-29 13:44:50', '2021-10-29 14:44:50'),
('777b32eb0fdf353fb6f8b6fa81b8b348f6eb029ad0ac6955fcad74cebebf8742d2efa95c9a4eff70', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:26:13', '2020-11-19 11:26:13', '2021-11-19 12:26:13'),
('777c517d2ee6394541912eb367575afaf0c8000d0419f5d316e3069f38c1b536fe42d14afdd33a4b', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:30:12', '2021-01-07 13:30:12', '2022-01-07 14:30:12'),
('778270807152785c68be2a7a56d6687ac431ff5723410021200f03731219dae1db2b33473c007006', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:00:40', '2020-10-25 13:00:40', '2021-10-25 14:00:40'),
('779204fbca72dc823defcd477c718b32416a1987d4a3bf7c2fb96f9b76412bca00e6dae8a2d8c4a2', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:06:54', '2020-09-27 10:06:54', '2021-09-27 12:06:54'),
('779e873eb42413abab0724ae41129f09ce4d0bad87762a9ea5476403ec236293a4998dab92a3c507', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:50:57', '2020-11-22 15:50:57', '2021-11-22 16:50:57'),
('77a638e401e4c97b45c444a2e2100a9a289fec7f997317f86bb37983d646258e1157cc595a94d5f9', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:31:06', '2021-01-30 11:31:06', '2022-01-30 12:31:06'),
('77a6ebd31777eb965629d2ba89aa71b4a4f143686b4fc97aca890ff00428f6677afa15bba322233b', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:08:17', '2021-01-03 13:08:17', '2022-01-03 14:08:17'),
('77bd269629ef95a13184280930f80f552947cd0b8206fce43defd70d2c7055dab7246b2d5abd03c5', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:45:54', '2020-10-31 15:45:54', '2021-10-31 16:45:54'),
('77be1ebdcef0e40c6442b762d60f739e2465c93de41bbb1f43c80e6c360258403cc20db254985d8e', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:35:19', '2020-11-19 12:35:19', '2021-11-19 13:35:19'),
('77e3b6300a74d784baa0dae5c5f0adb498f73a93f640d24daa55fbaa13cfcf81a83280de54950bc5', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:46:25', '2020-09-27 09:46:25', '2021-09-27 11:46:25'),
('77f0b7010d1b0c4c007a808ea75de80d3db257a37af8e232d951a0f6bebd84ec001b63a4d0f656d8', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:57:02', '2020-10-31 16:57:02', '2021-10-31 17:57:02'),
('7804ac02fa9048c7e2340a3c9bd13ba6d42d1d5124994b4e356c8b8a535debffda94e5a545c02c0f', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:14:30', '2020-10-17 10:14:30', '2021-10-17 12:14:30'),
('78198c664d45ab364f4a9b18608d13d355df8a3fb1050e00677bb8f27f972fbbd98f7862b57fb841', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:40:25', '2020-11-19 12:40:25', '2021-11-19 13:40:25'),
('782dd15f5489410e7e90464cb60b91c7d7c3efd98c43aaed7dc5bcd0ac5477ea8579076aefbef9e5', 27, 1, 'authToken', '[]', 0, '2021-01-29 11:51:22', '2021-01-29 11:51:22', '2022-01-29 12:51:22'),
('782e69f16e68fd7ae9c5fa60b5ab8e121ea1c6cbbc4d17cacfcf3f79183874e3ecb20fa5d65fc8ef', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:21:43', '2020-10-29 11:21:43', '2021-10-29 12:21:43'),
('783244ad181d338ab5ff4daa41442c373fe2580fae8837ab3010a2260bd69ce1137b84096db753d6', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:17:09', '2020-10-17 09:17:09', '2021-10-17 11:17:09'),
('7845a85051d3d9d24d4cacb7ff0560cd0d702bbecaa0024790d2e0a795943257585a09eba06dde5d', 27, 1, 'authToken', '[]', 0, '2020-12-28 14:02:02', '2020-12-28 14:02:02', '2021-12-28 15:02:02'),
('785000820777611dbe15d6b345bf25489a10d4517376c58c3be4d5156ac245fe269bb43681b22e48', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:01:59', '2021-02-07 14:01:59', '2022-02-07 15:01:59'),
('785097a75337d64afa3279c5376196c869a38bc999741676f380f2928e76b8f4b6fc0cbe47313267', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:06:12', '2020-10-29 14:06:12', '2021-10-29 15:06:12'),
('785ff82af78ac6f31c90daa2f3cee0e31af1fa0568ba01138b6f8b6fab0087855708aa09e88a0c5d', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:21:32', '2021-01-09 15:21:32', '2022-01-09 16:21:32'),
('786afbefa640422238be302475281c45b609e2ba142fea7ef7ecaaf08acd06e4c9153d46c5f7abb0', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:55:13', '2021-01-02 11:55:13', '2022-01-02 12:55:13'),
('7872681802e50397aa79fc5b9e5b12e2e24752cbb1b84a9f7d1a2c6345da80015e334c7807f7f7f2', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:27:18', '2020-10-23 11:27:18', '2021-10-23 13:27:18'),
('7872942ef79c4b67de74f79bc806d31a57f349ec06fb5dffb0aa341496636824cbde8136acde4107', 20, 1, 'authToken', '[]', 0, '2020-09-26 08:41:39', '2020-09-26 08:41:39', '2021-09-26 10:41:39'),
('787a3a3c59a0626526e478693ac05f672391e3325821c9acf6ee6451ecd7797fca89cd4313f3a4b1', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:46:25', '2020-10-27 11:46:25', '2021-10-27 12:46:25'),
('7896bdd6f6fd081250eb4e30027f84b654ec4af71a88f41883464a2e49e307415061b397f93c20ac', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:19:23', '2020-11-05 17:19:23', '2021-11-05 18:19:23'),
('78b3b1028382bdaf10d5c0ae1a2b5ca3bb80f725fd8383b2ef447f889d18d07d68a43732e699e60a', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:14:58', '2020-11-19 12:14:58', '2021-11-19 13:14:58'),
('78be54c5fda647ec646c675c879d47ec2efa4bea8f301c798fcd45cfd183dd21e184ea7b5621d15c', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:16:16', '2020-12-28 11:16:16', '2021-12-28 12:16:16'),
('78cb550061f005fe34e6c9f4664237fc6d22cab3488f7b14edc7c3f0dc5489650a9a28fc32771c39', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:29:11', '2020-11-14 14:29:11', '2021-11-14 15:29:11'),
('78cc072c7fdef22b79418ebb19ce61f4cb14c1bcedcb89ac09af175b24435d29f20ccdd338eaa772', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:49:11', '2021-01-01 10:49:11', '2022-01-01 11:49:11'),
('78fdc3cdb7924d2e338c4e1ce062c8e5a961d1d1e536fd66cce10cefc657c563d2d5f9e9ae0fa14f', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:50:55', '2020-12-28 13:50:55', '2021-12-28 14:50:55'),
('790d272edf7828eacc75b88e934ff96fd792993894a92b8aa7acbb271e24d0e39409ade4fb359b1b', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:09:52', '2020-10-19 08:09:52', '2021-10-19 10:09:52'),
('791b9b3787d735276553d5860bf380911826d09ab9e5ca27f1a705be0a202807f93e4b25c3ca97e4', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:46:53', '2020-11-15 14:46:53', '2021-11-15 15:46:53'),
('791c98538461d3fe5f1146c8ae950efbd9b9cb89e0df20885ea757ef5df0e482822d9e1021e2a557', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:21:24', '2020-10-17 12:21:24', '2021-10-17 14:21:24'),
('7920c169b10f37a71e0599baa1715021e322c7223293dc3fa1635faaeb4046bcd951c621b3edb970', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:19:06', '2020-10-29 11:19:06', '2021-10-29 12:19:06'),
('7927c280517388d5def3129134fa367b3efb07cb12599358c963d13efea41fde78886f05c30438dc', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:43:56', '2021-01-02 13:43:56', '2022-01-02 14:43:56'),
('79354b886d4496168e35f4485810cef3c0dc41282822ac497470c349d52875b22e61776a260c119e', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:24:15', '2020-10-17 09:24:15', '2021-10-17 11:24:15'),
('7960cb389b2fa90de94ade5d0cebda4751790e000ef4b59587c9def801dcafe18316263cd0230cc1', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:01:55', '2020-11-14 12:01:55', '2021-11-14 13:01:55'),
('7960fe9f8b07a6a1bb15a0f976403b0419ac37e66a63ece5d5e3f1e03a8c25d9f30abac5d6d1ec87', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:11:15', '2020-10-29 11:11:15', '2021-10-29 12:11:15'),
('797b207a21873893271fe8bbe34c2b38e91a245903a9ddedb33e13b8254b40e0b38aec14083cc560', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:25:01', '2020-10-23 11:25:01', '2021-10-23 13:25:01'),
('797ba451f1cfd3d4802ac2f2dc23a4728f4c5db5285d481bc8fa7fce1b7003acff7257e20b5e77b9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:27:22', '2020-11-01 17:27:22', '2021-11-01 18:27:22'),
('7980035943abe450b316804e6b9369c4c01596641d97f61282f9c511fded839926c4c324acc2593f', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:53:51', '2021-01-28 12:53:51', '2022-01-28 13:53:51'),
('799088de2204cbd5294c8fca571f062fca7dc731f874d9209fd3b1555543b3f891293f6d07c6f034', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:42:15', '2021-01-26 17:42:15', '2022-01-26 18:42:15'),
('7997be956fc3b591bdd47688ebb8dd2e053213258ed6c085391c0ba490c52bf390cd8ea305c8b477', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:27:02', '2020-10-23 15:27:02', '2021-10-23 17:27:02'),
('7a20b005ce21ac900fc04362356c20f4441139098061e9566fc972c926715a8eacb9f5347b7614c7', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:06:27', '2021-01-29 16:06:27', '2022-01-29 17:06:27'),
('7a28a02c4dec91b73f3ced53c0487f742fb4942a92666e70c9d33ca2fa9d8db9ec49b8d6bead750e', 27, 1, 'authToken', '[]', 0, '2020-10-28 16:46:54', '2020-10-28 16:46:54', '2021-10-28 17:46:54'),
('7a4a438a4540d6b5ce5487bbe97ce78cec21d44f746b2e727ba4e4e2922a07a1ae4eab989ec3cb1e', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:11:06', '2020-11-05 16:11:06', '2021-11-05 17:11:06'),
('7a5410934a0242679eadd72a3f64ad46b3a73d7f685eef4377c238bb870ea84691761362797f8b93', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:40:09', '2020-12-29 10:40:09', '2021-12-29 11:40:09'),
('7a592b92f86502780e97bfb99ad3b2b0d4191e61a6722ab560eede465e13a4f68f8d3c8a85c15a1c', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:38:05', '2021-01-06 14:38:05', '2022-01-06 15:38:05'),
('7a6b076d74726d9461b13c4e8d7b61e1c91b3e724f7bd2d2c445a6c574374ec65cb5e050028cf816', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:39:52', '2020-10-23 15:39:52', '2021-10-23 17:39:52'),
('7a895989df1a72f9b5b8eda13bcc94d66efb6535ad47dbfaeb26dde7700b04403379cba6ed0d4cff', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:27:09', '2020-10-25 12:27:09', '2021-10-25 13:27:09'),
('7a94676ac4ebbda286b820f716a3097d0972092ddc1e18e5ae9b59ec00576047afeadac819f8d2c4', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:56:10', '2020-10-18 09:56:10', '2021-10-18 11:56:10'),
('7aa0b25fdf54c3984c642daa1b766ef59cae07493eb621b8f3b87d00bec2c7d46c7a63c5bd6293a3', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:05:10', '2020-10-18 09:05:10', '2021-10-18 11:05:10'),
('7aaed4197a92566565437a02162afd4494fda7d2311de48aca00ccd0b105e659036f766ef6dd8b50', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:52:19', '2020-11-05 15:52:19', '2021-11-05 16:52:19'),
('7ac1dc28a275ce75c923a9b82904c72a0f40cb0c30a321420ecee9eb8294a4a28cf73deb8c88890a', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:33:47', '2020-12-28 11:33:47', '2021-12-28 12:33:47'),
('7acab526e2348ee708f747dda3a1733ccbf6d521e902cb7e7f83dad22a6d242b6d9b91f47bfbf754', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:38:17', '2020-10-19 13:38:17', '2021-10-19 15:38:17'),
('7ad669f94af81742364756fa2325b2ffb3dbe660aaa4ea44b85d78f9e89489f0606e2e59bd86561a', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:29:09', '2020-10-19 11:29:09', '2021-10-19 13:29:09'),
('7adfb66c350957c053e153f544463ffb94fc82735d15ae34a6a576f1d1733d242831b4bef63cfff7', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:34:13', '2020-10-31 09:34:13', '2021-10-31 10:34:13'),
('7aeaefed033884e09d19d26008c241f8d475fcd93399770e27b359d629f968876b8cefe96f781958', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:38:37', '2020-11-01 16:38:37', '2021-11-01 17:38:37'),
('7b057a6dc00b3e6fbd7f2f268e91beae5ccdf29576c594239178216395c5d63ac52b556219af59dc', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:19:32', '2020-10-13 11:19:32', '2021-10-13 13:19:32');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7b09aeb4f002e01fbf65921a0cae805238d4265ae5377290593001722c84dcfb4126ce4aacf06539', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:23:53', '2020-12-31 14:23:53', '2021-12-31 15:23:53'),
('7b0cf7784b9d36243ea5bf4628cb8ccdeb24a0d09e4514fdc0e34b1b87ca8e39a022b97df847398a', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:37:19', '2020-10-19 12:37:19', '2021-10-19 14:37:19'),
('7b1245316649f0280123d25f965cd05b54f5be643e880aceabfd126c07c94641209c6e8fdc4afa5a', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:46:02', '2020-12-31 11:46:02', '2021-12-31 12:46:02'),
('7b2400b80552f3220b973c5fa6c002672ef95f0fdd66bd6de556d9ce9d2e8062985b28503153a42f', 27, 1, 'authToken', '[]', 0, '2021-01-27 16:46:30', '2021-01-27 16:46:30', '2022-01-27 17:46:30'),
('7b2d97764d2aa3cfdf5e4f651fba442d10b897978f42619c90b1288f6d87c89f8854a7805517e196', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:41:09', '2021-01-01 10:41:09', '2022-01-01 11:41:09'),
('7b5e9dbbe5968062ac26a5bd169b93a161d99b2b863c40f9616a37d32605f578b1d9871f3fc265e3', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:29:49', '2020-10-10 10:29:49', '2021-10-10 12:29:49'),
('7b72a1dae125c1a8bdb1c0287a2f699297d690222292a5b29e1cd6f8d424eab944ead296411b964d', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:16:26', '2020-10-10 11:16:26', '2021-10-10 13:16:26'),
('7b7ece4427d3149ab4e9ff7b0ee0f5e4aa47806e118d21f4ee351c890adfee9d7a352994e75ae821', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:48:55', '2020-10-15 10:48:55', '2021-10-15 12:48:55'),
('7b7f209a751d198f32551e723fcb9c4e12fdb5395a74585beda3637206e2e9df8983fc36469a38d6', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:20:29', '2021-03-27 11:20:29', '2022-03-27 12:20:29'),
('7b8746b987619b315885d1b84284f1a95dd9abeb578da5d68cd6bc03cb78dab2e16d16a8f5ff2975', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:09:09', '2020-10-13 10:09:09', '2021-10-13 12:09:09'),
('7b87c093828625402935516a508e2a03793aa4254e06abbfdbd7845c63cf0acdc4e6edd2a7deee75', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:39:32', '2021-02-07 13:39:32', '2022-02-07 14:39:32'),
('7b88d183642cf94cad550aefbb800aa738ef180adb39e60339b224d09812589b30ef29362ad867c1', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:36:10', '2021-01-28 08:36:10', '2022-01-28 09:36:10'),
('7b92caa8ad2ce2ccfd62c1237f3a1e8f9ae999f7489df33f517c008d02401b8b21e33483103a9369', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:00:35', '2020-10-19 08:00:35', '2021-10-19 10:00:35'),
('7b99439e90461f18302f86c639e6a92d7f7165c0ff6e41080cf43fef6a23661ac940bc7cf2f4d714', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:20:10', '2021-01-01 12:20:10', '2022-01-01 13:20:10'),
('7baa6e8f42ac721bb70f5a44684e204cbc3981bbaa64963624c8bf77a60830250538206e21f9855f', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:41:12', '2020-11-05 16:41:12', '2021-11-05 17:41:12'),
('7bb7a058109c4aa28b9138fbe4a6c83981e37ed3fd8a924720f49852a3c30b7d162e1b692ccb33e9', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:26:41', '2021-01-30 11:26:41', '2022-01-30 12:26:41'),
('7bc48add50f6b9ea9d075039013f5fb7a4b816e43952fc50f56806291a4151315a96e55da0217c8f', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:50:41', '2020-11-01 11:50:41', '2021-11-01 12:50:41'),
('7bc71e45990964f22bdd588c645d6482278d450d6efd2aa8df29231de7ab71a53547797bff49390f', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:44:55', '2020-10-15 11:44:55', '2021-10-15 13:44:55'),
('7be445c13ada9f1cb3f861302005b2d9c0fffd8c44f0c9192027ace4582cfe232a1ddc16e9abf045', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:56:13', '2020-11-14 15:56:13', '2021-11-14 16:56:13'),
('7bf0409be34561fe7b0d7d4d417415834dd8f16ea25bb75382615fdacc2ec25345c4b6a460ea5280', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:22:11', '2020-11-22 13:22:11', '2021-11-22 14:22:11'),
('7c109bbde4c1f95bcfd2b70fe12d5f910fcc9b02cf00a359ec654b90dd917e9d38357dc66bf9d45a', 27, 1, 'authToken', '[]', 0, '2021-01-28 18:57:47', '2021-01-28 18:57:47', '2022-01-28 19:57:47'),
('7c1112d4d03cf60bd43f084b23bb6ca672ab8e60eb0b9217474d1fa40bb0a00e2018162078e25f29', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:31:23', '2020-12-06 10:31:23', '2021-12-06 11:31:23'),
('7c167b082955219702d751cf654cea3b541b134e57ab0bd3532761878b8da938172abc4de05718a1', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:24:19', '2020-10-31 14:24:19', '2021-10-31 15:24:19'),
('7c1e7009b8ce999f521807216de242240bee378bf841649633d1616505498c27369b1ca9bab5ba46', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:43:04', '2021-01-07 15:43:04', '2022-01-07 16:43:04'),
('7c24ccd864bae87f64228fba5b8e71e2efe2e7e1f2c30be98d5320bf1c80d92a8d708b1070dc47e1', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:51:51', '2020-11-22 12:51:51', '2021-11-22 13:51:51'),
('7c38c4a0d63f28e215803e94af24b93680abc026b8c83960611c466f2a30785d6222facc202b47b0', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:48:34', '2020-11-22 15:48:34', '2021-11-22 16:48:34'),
('7c63c65028a7b49e0b8fef9de6c57e113b48b31ecdcc35c4ef363335740455c849f8306c7272e07e', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:14:43', '2020-10-03 14:14:43', '2021-10-03 16:14:43'),
('7c78c8d7cedd8bd3f8c0612e5d1a13fa1105b7f56db33679224910ab7e7c2b6794d30e7f639b428a', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:49:29', '2020-12-28 10:49:29', '2021-12-28 11:49:29'),
('7c836965f07d6795c6fdac158fea1a1aea30a1bc50ce7a0af2346be125b7ae95b8fbe96e4bd3fa93', 27, 1, 'authToken', '[]', 0, '2020-11-15 12:54:28', '2020-11-15 12:54:28', '2021-11-15 13:54:28'),
('7c88f396300f5bf3ea03330b8e230e948a8a19f755a11d0a345071c090664a3b8df1d1fdbfefc68f', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:20:28', '2021-01-06 12:20:28', '2022-01-06 13:20:28'),
('7c8fa94e99cbce87bdc9b3c8495fa915694428a8b02599fde206aed7b767bdd032ba098fb8af925a', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:44:07', '2020-12-28 11:44:07', '2021-12-28 12:44:07'),
('7cacc1a2087d76312dc8ad970c80da078e52d7e1858dafdb1f8b326d94681d8dffd0081292f3a54d', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:03:38', '2021-01-28 19:03:38', '2022-01-28 20:03:38'),
('7cca8b9b239d8cfe755a78450e65d845e1de6fae8e15364bc93b76546f77f00fc08bf67b5684bd71', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:16:47', '2020-12-06 12:16:47', '2021-12-06 13:16:47'),
('7cd13762309f0b584013ccb3e3a4eefedc122ca2594c7736441f0225106feedd7167ba6d8a01e6dd', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:11:09', '2020-10-25 12:11:09', '2021-10-25 13:11:09'),
('7cdac677bbf704035b5dcf81151761a2560082bd93c712bdf79970618c2f6e81beffd28f3cc561ad', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:13:09', '2020-10-25 12:13:09', '2021-10-25 13:13:09'),
('7ce40eb63e3f50899057039ca8110215c80fb1ac567c3b118760ba2d4f5dff754046073925fad555', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:26:04', '2020-11-05 16:26:04', '2021-11-05 17:26:04'),
('7ce4afe7cd4d880d31703febb9e1928e440c102835d619e831d9b656a72fa38c16eef2582f973a91', 27, 1, 'authToken', '[]', 0, '2021-01-06 11:59:21', '2021-01-06 11:59:21', '2022-01-06 12:59:21'),
('7cecbd6b65ffe5b89ff6738ca7d9de1c196915d8771009bdc3d8faea8cf003d3c982dfda13177434', 27, 1, 'authToken', '[]', 0, '2021-02-11 13:09:09', '2021-02-11 13:09:09', '2022-02-11 14:09:09'),
('7cf6837b5b970d87a10befc1410b0ad4f92226caa367ec1b957ecc5ec1dfc099ff7d1ea59fdcc727', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:59:50', '2020-10-17 13:59:50', '2021-10-17 15:59:50'),
('7d09993f352ffb693c2620e441726d0792ff64b4eb495d0e11143c59d832e28b22dd00d86de2780a', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:19:31', '2020-10-18 11:19:31', '2021-10-18 13:19:31'),
('7d2fafa48e937bc1ba545f35d561ffa642e91d10dc26fb3d97acad27d195c159fb22bc1d61ea07f8', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:11:34', '2021-01-03 13:11:34', '2022-01-03 14:11:34'),
('7d3b82474f1cafb4449debb468f4a8b3dbb4cc271d41bf11c73d41e92859ab1370eac2d3c98b5080', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:41', '2021-01-07 15:53:41', '2022-01-07 16:53:41'),
('7d42ed499080feae3345d009ae74d34245d1802833e68421dca5fe34b52ad7c41dbab1aa4ba71176', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:06:44', '2020-10-05 17:06:44', '2021-10-05 19:06:44'),
('7d4bed7498608c855344d4b638038d87722da1c68a29c0844ecc054c2649f2d6a00aef82e4c9734d', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:47:43', '2020-11-05 16:47:43', '2021-11-05 17:47:43'),
('7d70c13cddeb8f7e719f77b75ac07d482acd89f233cd1628641f2d0161ce1f5c742fd7ec6af3c97d', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:36:22', '2021-01-28 08:36:22', '2022-01-28 09:36:22'),
('7d778075953650cb4faf93d820ec8e210656cbf6ad256096b485abc4f675b76e10af40857dcc0284', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:11:24', '2020-10-18 12:11:24', '2021-10-18 14:11:24'),
('7dad58f30616d1b84d7b888ae5b598a84415936e500b4a0af0f22fa2c9cf1d3e1a587d2fc8857e54', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:24:37', '2020-10-27 11:24:37', '2021-10-27 12:24:37'),
('7db5a6b06884869cf545f23dad14e399cbccdc54f6926b9f16d0a271649a209c74ff734a77fbdbc1', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:14:38', '2020-11-01 11:14:38', '2021-11-01 12:14:38'),
('7db681cc2a32f7993a3597bb9ab3841c50b2449044b57934891b09af0454fb80094f73f182f52ad7', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:41:23', '2020-11-01 14:41:23', '2021-11-01 15:41:23'),
('7dd09b4b1608d844fcecb3b502dc874e8ad343b8f2670131d3c5e5c8d3d18c04f9f4ad86f5f3f9c6', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:32:09', '2020-10-23 09:32:09', '2021-10-23 11:32:09'),
('7dd2ede8f0f8143a2399ea1f8d4ee79bd5ee918cfc731311b45b001a0a7d1c56695e87ed2b15fbe6', 27, 1, 'authToken', '[]', 0, '2020-12-28 14:09:11', '2020-12-28 14:09:11', '2021-12-28 15:09:11'),
('7e09fd7ece15f8a5588bfd0fb0b7ebf389218802a6eea9055b8d306623a6a3e748cf9a5441469019', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:00:12', '2021-01-07 14:00:12', '2022-01-07 15:00:12'),
('7e0de1ffb57242e493684d76b2b5ed8d9c94888a56ec900c11b677dfe7a22c30b77611df699d245d', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:37:23', '2020-12-04 10:37:23', '2021-12-04 11:37:23'),
('7e1bd6cda26c5b66c9620ba1d9f190335e410645d98f38eca96b086eade20023247acaa8248a6b72', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:42:33', '2020-10-27 11:42:33', '2021-10-27 12:42:33'),
('7e1d622e7bf8071524732daa245a678099548b631c8e65017aa529e235af44886637689976142584', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:51:57', '2020-09-27 09:51:57', '2021-09-27 11:51:57'),
('7e3b4d7840be2137507979ba4f70b746c6478073b8dee013d5a13dafa4e933290ff4c73402d1f4dd', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:36:42', '2020-12-06 12:36:42', '2021-12-06 13:36:42'),
('7e628d4b831b6f11505870327e8c953e7d1f3b66eee91f1b6d91d19619d456b379384ad84684e7b7', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:20:40', '2021-01-06 12:20:40', '2022-01-06 13:20:40'),
('7e63ff281739ea7893347808f33aad52a96e4ebd1c7300533db5cc2e28bbe14ab9dfacd96c3b2c84', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:33:02', '2021-01-28 09:33:02', '2022-01-28 10:33:02'),
('7e72ab5c9cbcad4543f9ea5c814c880f7322a1c72a2253c1fb5a93dbe8d6a1c207138c8f06dafca0', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:46:53', '2020-10-31 14:46:53', '2021-10-31 15:46:53'),
('7e8c01fd8057308e9946d7d94481fc7fb45833064ca0e79f932275eac7bdf3db17a4ef6783b027b4', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:46:48', '2020-10-17 10:46:48', '2021-10-17 12:46:48'),
('7ebca65c6aff795f6dd7df3a380d6b7ca646e9c0b84e7b012771dc0162e42102d69d0c0605e244f7', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:21:28', '2020-10-19 09:21:28', '2021-10-19 11:21:28'),
('7ec44a642e48622ce9b4cb1fbd1871481ad77ad79b52926c867944fa23a01812d832c5c63f316ec6', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:37:30', '2020-10-13 11:37:30', '2021-10-13 13:37:30'),
('7ec5f1d758e3d7ca9619a6f9f76f72a2cadb5700c96aeb6d731115e302df372ac1123d4d2480c458', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:13:51', '2020-10-25 12:13:51', '2021-10-25 13:13:51'),
('7ec73a9164a5715d03a4b013954b7b45f916070ada86b40a0d14c5722f68c3691ebc4bebf7765e58', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:57:33', '2020-11-11 16:57:33', '2021-11-11 17:57:33'),
('7ec8a4cd9705fd8bb3b2f9627b3cdb947c398d8024daa3947d0700242faf8bfe8eea33c0ff2ab4a4', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:28:28', '2020-11-14 12:28:28', '2021-11-14 13:28:28'),
('7eee0b22fdcca44994513ef1a253b0feec469a57398850bd50442ac59f9caae18ac399977131a8aa', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:09:36', '2020-12-28 10:09:36', '2021-12-28 11:09:36'),
('7f08eb606fc9222430d3f7e3ea2f2ec7b4d4616f7c3f000d50bc0c67530ba15c7885b3003ed10637', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:22:49', '2020-10-17 10:22:49', '2021-10-17 12:22:49'),
('7f2d58771b239a8a31ad3e98e8fec06fd933bedd41b6ae430ccd1f1b0f5b3087f8c10ee9fd6d3f81', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:13:43', '2020-10-03 13:13:43', '2021-10-03 15:13:43'),
('7f30d02145a0a2805b76d202b780cce7b8c9b4faa284c743dff06fca1438822e9a0415fc9327f0e7', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:51:09', '2020-11-22 13:51:09', '2021-11-22 14:51:09'),
('7f5a4505cef60081bffc00c2e45763c7dde55968fd9e353aa0dedd597eafc46cdb63edf97d27da04', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:36:05', '2020-12-29 10:36:05', '2021-12-29 11:36:05'),
('7f6a64ad810182e916e7654894fd78edc79865c93b6a3a82f83dadfdabfdcf17f4f34d9947a04773', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:06:47', '2020-12-06 10:06:47', '2021-12-06 11:06:47'),
('7f9082e68003112bf7c749d8a11db4c603abd8205f9251467d6b02daaa00224deb0ba14978fb1085', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:10:30', '2020-10-08 15:10:30', '2021-10-08 17:10:30'),
('7fa30f2d51545d9f761dc6a45a0c932c8eb4050e3c6cc9c47fd9c4479e098be8756de1221b86d8d9', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:45:26', '2020-10-31 14:45:26', '2021-10-31 15:45:26'),
('7fa6343662ec43dd4277c1028019c53cf54d790c1ea7bd7db08257bc9d16bc8af1ea165dc9666233', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:06:35', '2020-10-17 12:06:35', '2021-10-17 14:06:35'),
('7fb02a8295c101ac2d59756f76023a702674dd7148ff4c8fd096ac85b73643d6db6f6189f8e16344', 27, 1, 'authToken', '[]', 0, '2021-01-06 19:21:55', '2021-01-06 19:21:55', '2022-01-06 20:21:55'),
('7fbf235a811633ae1387410f8bd3521afb9182d132b6d0b2270e35ed4d8b42377bcb2fe9c91af00e', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:51:02', '2020-11-14 15:51:02', '2021-11-14 16:51:02'),
('7fcf4c5cfc90b15c61c36134139368372bde7c82a42ecf0bcd9f4d6d90bc15c5bae81cfbcff9c145', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:55:13', '2020-11-22 14:55:13', '2021-11-22 15:55:13'),
('7fd8f22370bd88a0c8132b8c8d46e05e635295fbbc06271f4b36bf54bb4941ab7b148c9d1ac60311', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:09:13', '2020-11-01 14:09:13', '2021-11-01 15:09:13'),
('7ff220b304058429d68f1a85ce33fe4c3e2a1d3c9065cafeb9f62db3843edd8a60a1bbb88bea05b3', 27, 1, 'authToken', '[]', 0, '2020-10-31 12:03:14', '2020-10-31 12:03:14', '2021-10-31 13:03:14'),
('7ff8e6e45966d277a3801d2f6dca619747fc8a7dce66bfc1281a202fe4194022926dd78d7c727497', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:52:06', '2020-11-19 12:52:06', '2021-11-19 13:52:06'),
('800a1fcf5cf3340b74e2c5347258c9762dd4f5b7d91fea5423ea90c5e39360a5b11bb3ea410bc510', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:38:41', '2020-12-06 10:38:41', '2021-12-06 11:38:41'),
('800c279b3f6ae33dc2b529a422a60af099ae2f8fcb230941f1ac044a73ebc29b069c583d1dcd429f', 27, 1, 'authToken', '[]', 0, '2021-03-27 10:54:13', '2021-03-27 10:54:13', '2022-03-27 11:54:13'),
('800fe1c91f38f618903236659106ee755c75baca0b11249803debead9e5fddf80e0d70412aadbe68', 27, 1, 'authToken', '[]', 0, '2020-09-27 11:01:43', '2020-09-27 11:01:43', '2021-09-27 13:01:43'),
('801ca847ba82e5a6b594d4566683c30d2873310093e598eeddfa18323aea2019200f8fbd67fa37be', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:38:06', '2021-03-25 18:38:06', '2022-03-25 19:38:06'),
('801d53c42d446ef1781b01501100794d75747efbf5da458ad931a819bd7ec3fbe96b2c091e810593', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:02:38', '2021-01-02 13:02:38', '2022-01-02 14:02:38'),
('801ee4ad48a665a42e31eec0df7a4fd61deff04292e36d48fd848aa97e334e94d192555eea18c4ee', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:13:04', '2020-10-25 13:13:04', '2021-10-25 14:13:04'),
('8025a309935832908f9807e0b3bfdbbb8a0a5af7e01de7ad321a4b0fad7ca70192ef9e5d29570f5c', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:49', '2020-10-03 13:10:49', '2021-10-03 15:10:49'),
('803eacd89a6f4817dddbea7bfc2a24e6013d215207e36816e46547434d4ca1dbabe2da4843fd6a21', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:03:50', '2020-11-01 17:03:50', '2021-11-01 18:03:50'),
('8042e7b9dc96d3a90abee6c1d5b27a093cf1685bf61956307f5319390235e342dfc55c8f35bcb9e4', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:45:14', '2021-01-10 12:45:14', '2022-01-10 13:45:14'),
('805f8fa7ebfae199e694fa16a08fa3e57212abc1527d78e2fd05dfb8a41eb03d734a43e7d8c0758f', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:16:24', '2020-10-15 10:16:24', '2021-10-15 12:16:24'),
('806139446ee5a52fed8dbefb0f5503811bc4068ea578a8766923878168d38c3eb8c2854ef5c3f263', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:48:27', '2020-10-27 16:48:27', '2021-10-27 17:48:27'),
('8067fa174d1fbcbd46774e5a74d0f6064da39cafb954fdf0d1ff7f9655a50b4bf347af621276807a', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:23:54', '2021-01-01 12:23:54', '2022-01-01 13:23:54'),
('807c38b71461ac50aacba3b7530077c835e9cdd8b438c2ffae5faf11a2b3227d9b088a2c489a54fd', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:40:06', '2020-10-19 14:40:06', '2021-10-19 16:40:06'),
('808140bdf5bce8659da94387bb07d3c9df071c15702b2251da56034df76bdd5903d523f1156afa8a', 27, 1, 'authToken', '[]', 0, '2020-11-14 11:58:15', '2020-11-14 11:58:15', '2021-11-14 12:58:15'),
('80bcf1a103eae13c1bffb55ef7b7f20678c5384a2b31b4705b3493808d1ad72d77cc324ca6e09d79', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:26:18', '2021-03-25 18:26:18', '2022-03-25 19:26:18'),
('80bf29a2dd7f74b47807b103ff6000a019253f03d95ff5f44a90843a12bb822c19548adbec5c2e63', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:58:34', '2020-10-17 09:58:34', '2021-10-17 11:58:34'),
('80cd34963fb1e49ee8f1ee2843f869ba770222a6cf74584047a14d2fd757ebb000200a9dc6a6d74e', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:56:19', '2020-11-22 12:56:19', '2021-11-22 13:56:19'),
('80e9f6fe9b3e8e46e692737ddee7025e697cd8188664a0a910289005c531ddec47406cbb28035ae3', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:52:10', '2021-01-07 11:52:10', '2022-01-07 12:52:10'),
('80f0eab694a924e412c678c6f15f0628c2e5962ff96241640340e71aa74a2169a6fa8308b6100836', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:08:17', '2020-12-06 10:08:17', '2021-12-06 11:08:17'),
('810e287a06ef499dd4ab4180b98496df6bc6c06a8f6a14940589bafe7ec076181b76f1c66dba8bf7', 27, 1, 'authToken', '[]', 0, '2020-10-27 12:18:24', '2020-10-27 12:18:24', '2021-10-27 13:18:24'),
('810fca8cd6fe37b92a4b03d50759b2a19ac793df8bbc00889c220e550f03ed943766ea431929e0d8', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:55:44', '2021-01-06 13:55:44', '2022-01-06 14:55:44'),
('811fa43e6608c4027be5830c4852b89bc5188e199eaa83b91eef643e4e0911c83fc4fe5f94b6b49d', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:21:37', '2020-12-04 10:21:37', '2021-12-04 11:21:37'),
('8130bedb202a6afc19d739af13fd7c1d8d50a34fd21027cd0b83349fd003ca5c83560f54ef2f66fb', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:19:41', '2020-10-15 10:19:41', '2021-10-15 12:19:41'),
('81370283c9953b0b4b5a382823a8638886979b4e6a3b5ded990188f8a00ce5c825a59e2dfc34adef', 27, 1, 'authToken', '[]', 0, '2020-12-28 14:09:42', '2020-12-28 14:09:42', '2021-12-28 15:09:42'),
('8144b4f451875b01167025bb5ccf90235b14330d73da296ad9cd41274efd0769ccd1decc29ed94b2', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:00:39', '2020-12-06 12:00:39', '2021-12-06 13:00:39'),
('814f671e803413f1506ea4fac7b3edf739fdf3388534085a77c7331a45fa63fa35b413fbe681604c', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:07:20', '2021-01-28 19:07:20', '2022-01-28 20:07:20'),
('815a36a9d5e52f56c36d0964a09108ff0764fe8890760f3065111d5b40262a97aea2f653835bfcdb', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:14:35', '2021-01-03 14:14:35', '2022-01-03 15:14:35'),
('8192f6f809eeb4e3d928ba33fb8481f7e359078905b467715b757741d560c3178c3bbe5169335cf6', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:42:16', '2020-11-05 16:42:16', '2021-11-05 17:42:16'),
('819980efb3f25f81711f4c2f6884589d6c0a5f9f2adff008b47cdd12508f715b0e32ac835f9394af', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:54:18', '2021-01-09 14:54:18', '2022-01-09 15:54:18'),
('819c0dde9f0c3dcbd3b927deecb335b1c7071bfade2f9f4b14891f44427e8a4da9c8650ccaf8c2bd', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:41:50', '2021-01-03 12:41:50', '2022-01-03 13:41:50'),
('81a3e7383b138a1a873c97c190bd6cf7b9efe7ef912b30c2d20c7cd0dda3ff1b816ca6e9c492aaca', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:26:16', '2020-10-25 12:26:16', '2021-10-25 13:26:16'),
('81b4d67392f6652bad93b3795dc6105358ee1b41397420f251d500d830214cce1c6303d8498c59b3', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:12:10', '2020-10-19 10:12:10', '2021-10-19 12:12:10'),
('81bcc7ca911523699c261bce3aeb9c16d507ce719a9856f9fa5a39877ca90eff351859361f6eaabb', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:40:58', '2020-10-29 13:40:58', '2021-10-29 14:40:58'),
('81c41456ceb1e8d9f7c55ac1941b77964afee9b6cf0b1f8ea08bc491caaaaf67e1dfdcb1678bb668', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:17:36', '2020-10-29 13:17:36', '2021-10-29 14:17:36'),
('81cea657bf885191693a7298a9b4c9618acf5fb593c77a252984c54312c660c73a0cc25704195c49', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:40:43', '2021-02-10 18:40:43', '2022-02-10 19:40:43'),
('81ddbb583fe5613efe1510ced4836b83d1565a54993cd0906a2c4a935cbff4db429f5baa8e52d1dd', 27, 1, 'authToken', '[]', 0, '2020-12-28 17:26:35', '2020-12-28 17:26:35', '2021-12-28 18:26:35'),
('81e0f94ffe782cc81b9adcb92c1f9024d9918a5c5a03f42a1d0e8d0f7670cca737522f6486a40b22', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:18:32', '2020-10-19 08:18:32', '2021-10-19 10:18:32'),
('821689e97396cb61dd3100cae00062a1a974fe2fe0a37482bf9acda861d03d1a816e9f7e6d629e3b', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:22:50', '2020-11-19 12:22:50', '2021-11-19 13:22:50'),
('823a75865290a6f9e1d327c3d00fcb4fa9c21aab6d15ce77a9fdb5a15cd9dc3c17ddc8dda7fc9270', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:29:02', '2020-11-14 16:29:02', '2021-11-14 17:29:02'),
('82407b0b40936ca9d1d8572b9b7591cd71c0bde27182e9f4996a2247fdc0ccb3526e5d5628eef27f', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:06:02', '2020-12-06 11:06:02', '2021-12-06 12:06:02'),
('8247ea3a23cadfb32526cbfd1ac92faf53788625de334bfd8ed921a32a3733f533170a0576caf559', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:10:12', '2020-10-31 16:10:12', '2021-10-31 17:10:12'),
('825ca3b407f7440a95f01cfc639fa7601ce0bdba7a7761fb29d539b80b190fc26cac0ecbf57196e5', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:51:31', '2020-10-23 16:51:31', '2021-10-23 18:51:31'),
('827a814087742a64f13bc13def8735d6061aa636a52b3df64136ba8869649d359242ae7c7bce5276', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:30:42', '2020-11-22 15:30:42', '2021-11-22 16:30:42'),
('8285037d8a740faf712b5b8392efef62d9b5e1af4e48f3cb30aa664d9d108b3c3b13696ff8765289', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:49:38', '2020-12-31 13:49:38', '2021-12-31 14:49:38'),
('828e3130e06b225d0ec4d6b75455951ac7456f398dc30c304239ac6d0285a16192bc5da5a92dc6cb', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:42:37', '2020-11-05 16:42:37', '2021-11-05 17:42:37'),
('82aa48ccdb5752067962389dad91d7b8dbe5ef4ef96b71adaaea4539c7ce58f83b5d02f140353e3f', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:40:01', '2020-12-31 14:40:01', '2021-12-31 15:40:01'),
('82adc34f3ba4721e42d677f7d5ac8477b53fc3ee44cb68b189bb2456ea2c21ef78fbbd13df838647', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:06:36', '2020-10-19 14:06:36', '2021-10-19 16:06:36'),
('82b3cfb005091599b684677066286f941e67dba0b7e81fde44e2c1dba09642db179e18bea0ad7a09', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:46:52', '2020-12-31 11:46:52', '2021-12-31 12:46:52'),
('82b58b21a91de92af6e0ae0e69218ebbd53574c84b439a9d97b66bf726a86c793a08de0e9d2af768', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:04:25', '2020-10-18 09:04:25', '2021-10-18 11:04:25'),
('82daf5bafddae55e706e0b471de4752618af47b638d8e0e7f6954717061abb7af7c25147d78a5b74', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:11:31', '2020-11-19 10:11:31', '2021-11-19 11:11:31'),
('82e8f9c7dc2c33141fb7ae311bcfedb7418f2c1706cf5e4f0a75112e4aa7c666456d93f0d112ca88', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:47:59', '2020-12-06 18:47:59', '2021-12-06 19:47:59'),
('82f30b94cbc47aeb60693f351e1f360da6c66afd63a5f2122926d958578346b075ba326cc3279dad', 36, 1, 'authToken', '[]', 0, '2020-10-29 09:30:50', '2020-10-29 09:30:50', '2021-10-29 10:30:50'),
('82f69c82b6977135b89d94df22fbf804a554d94a972ac244fa83a9b0f3b99d4f12ea2c4335d20fd9', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:54:38', '2020-10-31 10:54:38', '2021-10-31 11:54:38'),
('82fa88b956d8999700ec60ec77bd224112c73dc3dd0e1e977d98ff3ef0ff626172c3568e70f08d0f', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:36:32', '2020-11-01 17:36:32', '2021-11-01 18:36:32'),
('8313bda49bec5ff77e8609756773b683cea29ef2116d96c8a6b9904f5f0820cfcc22b13288df3d53', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:32:39', '2020-12-31 13:32:39', '2021-12-31 14:32:39'),
('8322b72b31f50ab0b62448ee693320d432c9fc69002bbcbc43c23f8465de7a323579433b0b730910', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:12:47', '2020-11-22 13:12:47', '2021-11-22 14:12:47'),
('8328117883d67eb85c65aaf2cde356721a60bc1b261d620ece0288a5cf64225e3e4377e86d945423', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:11:10', '2020-10-17 12:11:10', '2021-10-17 14:11:10'),
('833952cf18aeffd2fc3a85345b6808a96d3ee2e136f9bbb2341cf74976cce2d59012602ae0d6dce8', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:01:20', '2020-10-19 08:01:20', '2021-10-19 10:01:20'),
('834749e3371b3ad73647f4e2e023d70ef6af7fa3591dd6f5ea3976e4539755fbdce8b77ac5a240b4', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:18:22', '2021-03-27 13:18:22', '2022-03-27 14:18:22'),
('83569861b07857736fdd4418ed273d60b97c5d79bf309d1671c918d74f6e7251ae977da40c7caac4', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:43:57', '2020-12-06 18:43:57', '2021-12-06 19:43:57'),
('836abf3e2a1edbee42d1fba832ac9a3c073fe385eb07158695c2df05eb5d00aaeaad02634273abfc', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:00:18', '2020-12-06 10:00:18', '2021-12-06 11:00:18'),
('83729f116851caae27c12f142e6afed80cf8ea0c228fbd338583744eb1eae111e6791f136bf6d9ce', 27, 1, 'authToken', '[]', 0, '2020-11-14 11:58:29', '2020-11-14 11:58:29', '2021-11-14 12:58:29'),
('837a65c75078dbb18645e4b97617570fe7e84ab2322f47645e0f5ebef7ab8c7d1b3fc4d500ebe89c', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:05:40', '2020-11-01 14:05:40', '2021-11-01 15:05:40'),
('837dd1c62b6709cb919b3f587c765cc2e4a8a6fff9a03a631fba730e80cf4de5a3ac5421a2c8795a', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:21:05', '2020-12-31 15:21:05', '2021-12-31 16:21:05'),
('83816a882096c6c2f3fd7d1ce6bf0b9ea7f32c8efd4036cf7c9ef3e3be4a0fdd921734d275ef150d', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:50:25', '2021-02-07 14:50:25', '2022-02-07 15:50:25'),
('8391b0f28f682de66abf94af012d425ad436f4b2584fc875c1a929227990fb1e4220bffdb51e8d6a', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:48:07', '2020-10-15 10:48:07', '2021-10-15 12:48:07'),
('839764227134b0626d9a632deaceab97ad8a1b65120098bb8f1ae0ea9934af92ceb3502569512c40', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:43:01', '2020-10-17 09:43:01', '2021-10-17 11:43:01'),
('8397f2f17c38451c19e2828e3cf0c8395790106bb9573ad318f5c6cc272199c9512c788d48325e36', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:32:44', '2020-10-23 14:32:44', '2021-10-23 16:32:44'),
('83a2e5c8a75dd33a807db8024cba0fad3de6642ce03b479c11db6dea8803dfde90d326b1ad9053f4', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:37:43', '2020-10-23 09:37:43', '2021-10-23 11:37:43'),
('83a64f7cdef2979f4957a5b59ce10e1e2b04f1ab8580beeedec18edd4b307f714f62507c6b6c7348', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:26:38', '2020-10-18 10:26:38', '2021-10-18 12:26:38'),
('83c4ccf8d096188137dafebae04d2f9869ddd76997d9cdb7ac7ac2326e0a2c580659d2053195776a', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:33:00', '2020-10-18 09:33:00', '2021-10-18 11:33:00'),
('83f4f3bb6f75415879f3f8e7d132dd0dae057045c367957993bedce716627d1f42bba681066e92bd', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:09:20', '2020-12-06 10:09:20', '2021-12-06 11:09:20'),
('83f5d3c2a0e9f8dfbe40518819ce5aaad748e66fdb8775fd7e650cfe12f9c6b3304c22b5d485ef04', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:57:02', '2020-10-18 10:57:02', '2021-10-18 12:57:02'),
('83f976bfec44c4010567ea598137e4af38a48047e21ec4acdc50d17a01da0e014b30317cec5fe537', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:01:19', '2020-10-05 17:01:19', '2021-10-05 19:01:19'),
('83fddd659ea29be1efaafbe0584899797f9a8bccae35db58c19331bfcc2e5e79fe726f7473ed4452', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:34', '2020-10-03 13:41:34', '2021-10-03 15:41:34'),
('84119fc11d9301790a5990247dc81dd9f6a471ba58ea3c079c46bc1b15f832b3dce5fa8cf0675386', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:56:26', '2020-11-14 15:56:26', '2021-11-14 16:56:26'),
('841ee1096257cf962b0edf254385346bbd19f08068dd111d550a8daaf0bb71a84e38a47cd76c963a', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:40:47', '2020-10-13 09:40:47', '2021-10-13 11:40:47'),
('842f2fe6d934755e0db0778e0f55116e8de695d3b3b85e5ba4f45758b991a09c071fbd7d71bb126d', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:51:27', '2020-10-17 10:51:27', '2021-10-17 12:51:27'),
('8443f1131a09234a77b6221fdfb80091e062aaa1266358915f351cfc94eb3af1d9377ab370b32085', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:56:29', '2020-11-01 10:56:29', '2021-11-01 11:56:29'),
('845f43cd4ae6c1be8dbb5fcd595d1485d72481f76e23f1a2feb284536905783c989fc452f84d6baa', 27, 1, 'authToken', '[]', 0, '2021-01-27 16:47:24', '2021-01-27 16:47:24', '2022-01-27 17:47:24'),
('845faf9409379ff4bcba4937028389c2b74649f8a43537eaec4bcdf3ec93086a0157ebfd6a1d9a1f', 27, 1, 'authToken', '[]', 0, '2020-10-27 09:56:06', '2020-10-27 09:56:06', '2021-10-27 10:56:06'),
('84740f12c27a50941ce74ca55ad4939d7c1f3c20352dbd537dcc67deacaf211711197b6502dac349', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:22:49', '2020-10-27 16:22:49', '2021-10-27 17:22:49'),
('84816d1edeb0a52d518273d965ced75c51a412e7f4fb6f161b83a31af41bdee12ac93fdefd36aa70', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:33:03', '2020-11-19 12:33:03', '2021-11-19 13:33:03'),
('84a9f29c80db95b1811546bcf38699667c78cf4071ed834353df762be608412bd4ad8d19142edfcc', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:37:56', '2020-10-18 09:37:56', '2021-10-18 11:37:56'),
('84c6eb8439171b6ad15c1c28175669cd24121f13b5dd87a3afd96cff8beed2f4294e8102c486cbc1', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:18:10', '2021-01-03 13:18:10', '2022-01-03 14:18:10'),
('84dddb9a41036f7ad186a06cd76be4eab95b5ff67f15aa9512c8690212ded2b915c4245586cbc002', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:57:52', '2021-01-06 13:57:52', '2022-01-06 14:57:52'),
('84dffc44652667e9a90e7fd83949f52d9edbcb25e49e3a22304f7459cb10d49b2643197ab27f627b', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:06:49', '2021-03-25 18:06:49', '2022-03-25 19:06:49'),
('84e7fed9fa6920533c40693ce7ecc6182ca793453af0b039cd0c85a71b2160798757ac2ace09f31b', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:06:50', '2021-01-03 09:06:50', '2022-01-03 10:06:50'),
('84f4400cd3b53616cfb36002a8d9b9b8380ee5c32da4e084d969c44237c326968950cff579848d59', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:38:53', '2020-09-26 09:38:53', '2021-09-26 11:38:53'),
('851223dfc1c38fd844bc5c958d0c8b5925d217f8f3faf51ef498ca05ef4b2b38fa0c8b02106f69a2', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:40:42', '2020-11-12 13:40:42', '2021-11-12 14:40:42'),
('854fbf965c9b14c257e2d7813a3f44eb26c6350781d7f701dca9a43d80b861aca4a83f737221a9f5', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:29:50', '2020-10-05 17:29:50', '2021-10-05 19:29:50'),
('8550cd2cea8f05900bac9e4340f99c3efb1bb8b5f19572f60c9de90d10b19c60c6f19332f475dde4', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:01:18', '2020-11-19 11:01:18', '2021-11-19 12:01:18'),
('85b586512949d5294f9aef30aa2cc27d7863138776f5fe2d797c7f5b1b33446b2c7b5bf71fea8af4', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:35:25', '2021-01-29 16:35:25', '2022-01-29 17:35:25'),
('85bbe7a8e4b2e1ef051ca372b7323e15198b7b24b28d8d8545ca63feb0fe1bb9453e1bd5e63e4f4b', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:25:01', '2021-03-25 18:25:01', '2022-03-25 19:25:01'),
('85c8239bb18c74acf16c4b282cb7df1011123aa002f41c53ec779b6677660024e8ac6b78b0df4a8b', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:46:15', '2020-11-14 15:46:15', '2021-11-14 16:46:15'),
('85c99669b0305a565daa5f66927e210cb1442f1a46faa82678469e7e83496a3c0fae379f8b1ce102', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:10:55', '2020-10-27 10:10:55', '2021-10-27 11:10:55'),
('85e7759f0445720348f2257553e492a866d9ad657ba17b64933c3561242df1543a0a59e307ba66c3', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:40:29', '2020-10-05 17:40:29', '2021-10-05 19:40:29'),
('864416091cce7de58a9ac8a0d07db8431f5c8dc959f7b02635515021d6f785721fc08ff3acbda2b6', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:16:00', '2021-01-06 12:16:00', '2022-01-06 13:16:00'),
('8644376c5dda793ce7639650b17ba7f5931599e63d181c975354b4275f1f6dd8195c1917c07681ea', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:45:42', '2020-10-18 12:45:42', '2021-10-18 14:45:42'),
('8650f8a5a41e2db00eb933d6b2bb752dba525442d35bb5d977f2a561e37666d4798295031a2fdee4', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:10:59', '2021-01-06 14:10:59', '2022-01-06 15:10:59'),
('865b8a8df83266e6639378b356c7ceacc8434b63b7d87ea336aa2cf309fdf6cba7d0a75412e79313', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:55', '2020-10-05 16:54:55', '2021-10-05 18:54:55'),
('866a683ca2052b464897e4559d054c1ea61f8bcf8b2b081a7670febc847ada3dab4acee517ed1650', 10, 1, 'authToken', '[]', 0, '2020-09-26 07:47:46', '2020-09-26 07:47:46', '2021-09-26 09:47:46'),
('867a4b05114590add48b4cec6276875714c9642b51947ca154ce1b638e748fc97716667adbc82d9d', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:48:08', '2020-11-22 15:48:08', '2021-11-22 16:48:08'),
('86984ec00912ae34c933e124b7e2fd310252b1468f46a72bcd5aa98c778881b21f1507a61e2241ba', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:17:10', '2021-01-06 12:17:10', '2022-01-06 13:17:10'),
('8699081fbee94d630af3e9b3a5f9a5372ad821b893f699a653f0812fb197b5d7e81a4004d4aa58a6', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:57:12', '2020-11-19 11:57:12', '2021-11-19 12:57:12'),
('86b1eb194b40cbac76979db37b28ac87adc11d68b50d83cd86503c82a54ad83fb52a7f3170b6f03d', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:31:42', '2020-10-11 09:31:42', '2021-10-11 11:31:42'),
('86b49420a11f2b8b93c8688bbc5081c6ca7264f3677c08e73ecd42e17210eab27b2a9135d6568ca3', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:38:14', '2020-11-01 16:38:14', '2021-11-01 17:38:14'),
('86cc9294c9e099f76fa96ee514e113365dd5ee2f769b01cff9234aee3a2c45a3820c1a5773ae0ff0', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:17:04', '2020-09-27 09:17:04', '2021-09-27 11:17:04'),
('86d2774c55faa4d4893b83816a3eafdcfe502162e3303978d0d1c89f6c9749239f08412c603395f4', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:42:00', '2021-01-24 14:42:00', '2022-01-24 15:42:00'),
('86eabe31c3e786b1acf19135faed8f1ad8b7ccd5bf7bb3e7d468b74af593e2fceb463a9e141b6853', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:36:09', '2020-10-28 17:36:09', '2021-10-28 18:36:09'),
('86f11de95e66115285aa0a8e128d40b7a44598d86ed125f2828ec70031d8d16e93b837856578af1b', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:59:59', '2020-11-14 15:59:59', '2021-11-14 16:59:59'),
('86f294b1d693ae240e18b420d350f8d9c06f0a0c8fafc8bd029f2219e01d5c504687b1c12838d1e5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:12:52', '2020-10-03 14:12:52', '2021-10-03 16:12:52'),
('86ff6fb5de70009a6060390dcf4ff1ec6b7ed5824cffb3d0519c570dab54725476033f3fc66e01bb', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:51:58', '2020-10-23 15:51:58', '2021-10-23 17:51:58'),
('870b1f3027cf1ed0b2ccc9231074d92d68603e1b9eed9d9caa6ca36d2b0163bbe0ba658781125f0e', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:14:56', '2021-03-27 15:14:56', '2022-03-27 16:14:56'),
('871bf353c585f6c4b5a5c8c765705bca5d2b371072087cf456a17266bc8d29a045e41ec19265d3cb', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:48:43', '2020-10-10 10:48:43', '2021-10-10 12:48:43'),
('8727a5e470b0c379458cdc9483d596dc746cb9780aa52c73c946f5eecd344f1f5bd17b36b68cf1d6', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:57:36', '2020-10-15 08:57:36', '2021-10-15 10:57:36'),
('8735a34f280b4ceaed1eff71d8a6203e9c24fe5adabe3fc2fc74c4aeaad049217456342235f86508', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:27:22', '2020-10-19 12:27:22', '2021-10-19 14:27:22'),
('873a0553fa44b088bdccd4354f443f0330eb8b014132712069ffb9b4668ea1cc6c7a129d1be0bb9d', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:17:25', '2021-01-01 10:17:25', '2022-01-01 11:17:25'),
('87569483064ce975c07c5c3cc1dbc09c1833bb2b9ec5d01da0fedb3ada96590c97d91530eabd0df7', 27, 1, 'authToken', '[]', 0, '2021-01-01 13:12:06', '2021-01-01 13:12:06', '2022-01-01 14:12:06'),
('876ca22cb2ec19cb062381a5d6cebe0a8fe48ee29d6e937461b009c773ff36ac2b9c6a92fb6ac7c5', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:12:40', '2020-11-19 12:12:40', '2021-11-19 13:12:40'),
('8777601f09ceb550ae0a1bf467befc39a8a3b507811e3cf692d637bdfa14b875cdf128af5a420e7d', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:35:18', '2021-01-06 12:35:18', '2022-01-06 13:35:18'),
('8783f4b1d4c6f136ae0246800ed41298d073d9b4f5dfe4ccd12530105776cb7b48109b99b84baa04', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:47:21', '2020-10-31 15:47:21', '2021-10-31 16:47:21'),
('879f4011305901552cbe45d4b4a4a5b0a283ded3555dc0dede32612c0a62e76a1753b01e0430e27d', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:12:05', '2020-10-31 17:12:05', '2021-10-31 18:12:05'),
('87cfef673affefbfe2487e648f0c7f33e2c464df994bd95699056084f1073efc562cd24a24d04691', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:17:23', '2020-11-11 16:17:23', '2021-11-11 17:17:23'),
('87d0fb413d01c2d1a6cd19e64ea08803090e8792f9fa05c2cc581dae10d451f23af71d7b300cde64', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:36:35', '2020-10-23 12:36:35', '2021-10-23 14:36:35'),
('87d41d2304226b302372c68eb4815e9ebd13ef5739d3b860ca85ce1c4e7ed42a664bcf6e179f0a15', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:10:26', '2020-10-18 09:10:26', '2021-10-18 11:10:26'),
('87dd07b2e9168afd4a6d38cdf558810122ffa0c61c9ef1f77064c491f0e364d07ba2eb35c6d9aa25', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:56:47', '2021-01-07 13:56:47', '2022-01-07 14:56:47'),
('87e2d77cb8ea2508ce8cc71f8a37e2b4414902c24a25f1da6ad78ebfd5d84cb43b1a606d9c8015a7', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:13:57', '2020-11-12 09:13:57', '2021-11-12 10:13:57'),
('87ec4cff67ee5b61f97cbeebd5c42af6cdc715275aea25ce52dceb2f57228d30d6824bcb53fd3075', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:41:35', '2020-10-23 14:41:35', '2021-10-23 16:41:35'),
('87f004e75e8b8772411f800c1dc14f6fff5f34053b7ea2be0076f1bd8662f2b76e8e2e7d63ee8d85', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:28:21', '2020-10-31 09:28:21', '2021-10-31 10:28:21'),
('87f9c127bfa357b7a22805e6f6ab972ae576a228175d95216427c97691c527470be8e4ce1c798db4', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:42:31', '2020-11-22 12:42:31', '2021-11-22 13:42:31'),
('87fc9775991a871ee2c708d0f7efec3b182ad31a83ecdeb104f075f414eda151ec59d2d2de51b1fa', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:46:08', '2020-10-25 13:46:08', '2021-10-25 14:46:08'),
('8805dac5a058747f0634fef79c944a9681fabefb0a7072d7571e075f09596a5caa3bbae7357af336', 27, 1, 'authToken', '[]', 0, '2021-01-28 18:50:32', '2021-01-28 18:50:32', '2022-01-28 19:50:32'),
('880cd625a029d8894e4e3eda2d3a9168647ba3af5a22ca2da2d047489612e6127253252fdff8af4a', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:47:45', '2020-11-05 17:47:45', '2021-11-05 18:47:45'),
('881b27867d11113835bf7538feac5dbdee68b3c2af2691f70c7f99a64d2f948e638a981c4d35f5ca', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:54:48', '2020-12-28 10:54:48', '2021-12-28 11:54:48'),
('8828466a92af5808f499d7da4b8562e07b22badb89034a29d0c40ddd7f81aa334c68a7a9c9ed7ba4', 27, 1, 'authToken', '[]', 0, '2021-01-03 10:06:45', '2021-01-03 10:06:45', '2022-01-03 11:06:45'),
('8839fa6702050265f5163a9110224c0eae4b0eaaed0e19f099deea222cf2310136bc20f53e2f2db8', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:58:44', '2020-10-19 12:58:44', '2021-10-19 14:58:44'),
('8858837c70fc5b807caab63fcdbf17519e768177fb45b8f15b82af62d1bcd29157a064ffbcefdb06', 27, 1, 'authToken', '[]', 0, '2021-01-24 09:57:01', '2021-01-24 09:57:01', '2022-01-24 10:57:01'),
('8863c9f9dc86110530e0257e4377e0c26c113eec59ec1e268b20cd93cc918b88a926ed67804b2ef7', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:07:04', '2020-10-23 13:07:04', '2021-10-23 15:07:04'),
('8865f2b496e6541e763eefa6192e5c62081c6e595e44a21c713cc80466af1eecb2ae98fb86ca2703', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:55:50', '2021-01-28 09:55:50', '2022-01-28 10:55:50'),
('886b692371f66b260513489e560fdc19c146411f9a7343d5e259446c6d2827f7af71f03d68676e10', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:16:35', '2020-11-15 14:16:35', '2021-11-15 15:16:35'),
('8874477b888e1d0db41dfd5fede4b3f89956225f29bf75664ab3ed9fd7656e0f6b7ec8e0aea508a9', 27, 1, 'authToken', '[]', 0, '2020-11-15 12:57:49', '2020-11-15 12:57:49', '2021-11-15 13:57:49'),
('887554c0763c2ab4991964fcb50459c10c9477de62f993d5e150addabfdcfc510467d48a6c9ba319', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:05:00', '2020-11-11 16:05:00', '2021-11-11 17:05:00'),
('887d224b0f8b84c8010e3410da060e3a9164e4e917c11b342bce93c7ba6aa4629194555184c838e8', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:42:09', '2020-10-19 11:42:09', '2021-10-19 13:42:09'),
('88a57c0fab9c2203e0d56353e0789d2565c104b0e877c0091154225e34e2c278764f5c1421ead768', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:22:09', '2020-10-18 08:22:09', '2021-10-18 10:22:09'),
('88c9bf1d5b92554967f5b5160f6f67f80e6a242c57d0a5091f4da0ae59093fdc4a4f6de8b7bdba23', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:12:44', '2021-01-24 11:12:44', '2022-01-24 12:12:44'),
('88cb7f04e1bc41496ac175df7cf14a84d6fcf0e55388aa3335e646e18918c64a9e83d110711fc61a', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:23:13', '2021-01-09 15:23:13', '2022-01-09 16:23:13'),
('88cefdc24caf935870b8bece1a97a2f0bff576f1a0ac91ac6cfb1c89e0c2ef82c8329b4b0ee257ce', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:41:34', '2020-12-06 10:41:34', '2021-12-06 11:41:34'),
('88d3f407f3121d87ef3714cda1a6f992b10304b101b39f58a4e603032fbbe57961a15854fe6c3c31', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:24:52', '2020-10-23 11:24:52', '2021-10-23 13:24:52'),
('88da87f5c3029a3859800b6f8836666b8b9cc4a642ef7c0ef01ab07103734f8f5059216b22428436', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:21:02', '2020-12-04 10:21:02', '2021-12-04 11:21:02'),
('88f3e7afa61970825b058dba3162127c7dec502eeef3417693e7284e3b2c9eeebf38250329d77e05', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:06:31', '2021-03-25 18:06:31', '2022-03-25 19:06:31'),
('88fed1954b365ee686e228bb5c42709eac815372a0093ed4ab21b0ebfcacb322fda5e4afcc37e81c', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:04:22', '2020-09-27 10:04:22', '2021-09-27 12:04:22'),
('8903c6938c32f6b43382b566473b7ce71eb68f7346b7f25b36ec0320fcca1bac5fac8af55a352931', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:40:20', '2020-10-19 13:40:20', '2021-10-19 15:40:20'),
('890b4823ff7f00f41250385dd470272f74e8a9cc190d53103dbd147fd7971c138a304f9bfbfe41b9', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:11:12', '2020-10-19 09:11:12', '2021-10-19 11:11:12'),
('89125a435fb669a133eb72424551aaf12d3783dedfaa525a816c35d08c3c42e35118fb9fb0ed4e9d', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:28:01', '2020-12-04 12:28:01', '2021-12-04 13:28:01'),
('89426abc52fe115e26d2c30dfa52fca242a23743ddc06c7fabf102c5b1d88612238bfa547c81c724', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:41:27', '2020-11-05 16:41:27', '2021-11-05 17:41:27'),
('89619ae9cc409cf318593eb4289c74922598e6bbfe6e090bfa5b9fbf7cc5f587da5b8ffbff6767a4', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:34:26', '2020-10-31 14:34:26', '2021-10-31 15:34:26'),
('897da3fd4aaa169b23984f131120469b5d5646a683e0dcf824bfcf1062edef507e4e93ceaacf3700', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:11:37', '2021-01-29 16:11:37', '2022-01-29 17:11:37'),
('898870955c47a86606caf8c6ccdaec80fc2a360f8f98fcc777ddab493d628a621365640636248791', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:41:24', '2021-01-26 18:41:24', '2022-01-26 19:41:24'),
('898d796b78d8dbe4201d72e49ee066816f0448d72320228c792ba91f059310577cfca6b277563807', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:38:11', '2020-10-18 09:38:11', '2021-10-18 11:38:11'),
('89e7fdbba76bc521260bec208f7a90b92c15afbb65cd681fc48d22886ea973e52f57cabc508caac2', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:07:47', '2020-10-13 11:07:47', '2021-10-13 13:07:47'),
('89ec2e0c56ad7db37d425988cf11dce34969605f26f34c31fe61c22f15b4bc18932396a084920d3f', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:12:03', '2020-11-01 17:12:03', '2021-11-01 18:12:03'),
('89ec33acf152c1015bdcc8356612092008d766cada61096c9a25c6c98d0dcc11561e25f7c45e6835', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:52:59', '2021-01-10 12:52:59', '2022-01-10 13:52:59'),
('89f7c9403d78a2fd3dd7656393c218f1fece3bfa4515baee5d5001f68e6e0ef3b235dd9b043ecde9', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:46:29', '2020-12-31 10:46:29', '2021-12-31 11:46:29'),
('89f8d871b3260677eca77ca94e7be6bbbafd260b1191a70a2300d670fc64f3100767531e059c9d11', 27, 1, 'authToken', '[]', 0, '2021-01-10 13:00:38', '2021-01-10 13:00:38', '2022-01-10 14:00:38'),
('89fdd089c00e1f4b2ad6d050cfba4e02176e29a31d2395c5f471dbd1fe442667931f4c02a670bb81', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:42:31', '2020-12-28 11:42:31', '2021-12-28 12:42:31'),
('8a1532a4a7abde14cb2e97a449ee691983d7b7237ab7999325b8ad4161683d441027148f0378308b', 27, 1, 'authToken', '[]', 0, '2020-12-06 09:52:59', '2020-12-06 09:52:59', '2021-12-06 10:52:59'),
('8a2f6ef580996bd751df97b530bc14ecc722ce3c84d3409f4df5c111473838fc066a9e40a3bc8671', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:49:17', '2020-10-15 08:49:17', '2021-10-15 10:49:17'),
('8a42198b533729cbbef6c705d577fdd59de780ba329b39bb898ea4b6e0e229b5f616ec713938efd8', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:36:27', '2020-10-05 17:36:27', '2021-10-05 19:36:27'),
('8a42930eaed61f26fe08dd00c9192f08a6199b518557e44ea897531358cbae2c4a62a8302e0f0633', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:01:33', '2020-10-31 17:01:33', '2021-10-31 18:01:33'),
('8a473069067dfda380606805e837813bdea7e754a1f2d26655b56bed62c8eeaf1246554558e3c04c', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:09:49', '2020-11-19 11:09:49', '2021-11-19 12:09:49'),
('8a582a0a02d1732d4f564955043ae72037184681117fcbf5463d857d3317c903d1e797f69958e548', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:26:08', '2020-10-19 13:26:08', '2021-10-19 15:26:08'),
('8a5a27f50bbb33ad2bb7669c50fae7d990a6b562047cb664614d2ed0bfe3bb771121edc1364b9f7a', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:56:48', '2020-10-31 16:56:48', '2021-10-31 17:56:48'),
('8a7509ca9c8cace06b4759541639845b727d0f641c2df34d7fc00ff87f94deeb8ad1ed2df357833b', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:41:45', '2020-10-27 11:41:45', '2021-10-27 12:41:45'),
('8ab3ae2036c56c06ffc71770a1798ed4bb30c91982c08eeb9f833f08bf94e3f57f4608fa4bd229d9', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:16:23', '2020-10-13 09:16:23', '2021-10-13 11:16:23'),
('8abe4bdc4b906023cfc87db5a1afda40665a7f53effac5e7a993f3c3a3c646af459563bd8fc767ea', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:32:21', '2020-11-14 12:32:21', '2021-11-14 13:32:21'),
('8acd797c0a052b186ee525b9d743e2c941f31732238b48ee714d5b871ee661f1bf8733a473f2a48f', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:26:35', '2020-10-19 13:26:35', '2021-10-19 15:26:35'),
('8ace506e7774c9996b4e52f4417ca67c9824df92d1c8fdb04188a5166631774437760d28f076c723', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:19:44', '2020-10-23 11:19:44', '2021-10-23 13:19:44'),
('8aceb93aa50a44a17c107ed55759af016e7f44a9f167257ca5ba1cb9880d304a4d608d24b5165a5f', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:06:53', '2020-11-01 13:06:53', '2021-11-01 14:06:53'),
('8ad0befd77cb2cf21fdb18492fdc2f6ad2bd1f3be6bfb5e39b61132a542f99e494a9c9565b5b9978', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:09:28', '2020-09-27 10:09:28', '2021-09-27 12:09:28'),
('8ad881bf404a753b03f4704fdddd666cfba538171882d422bd7039df2946fa9eb77904c37eb12203', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:55:15', '2020-10-19 11:55:15', '2021-10-19 13:55:15'),
('8aedf73718c57abbb7a1557ce0c77594ba33c3182a192c181f47cf1709e42d6baf5eff497577ed9d', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:06:03', '2020-10-13 09:06:03', '2021-10-13 11:06:03'),
('8b09841e51bf1ec0d5b12fdbc0e636df33b455b6c68f83950484455c0fdb50ec6c18d3248ec36ea1', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:06:48', '2020-10-23 10:06:48', '2021-10-23 12:06:48'),
('8b17115ec838fadfe04a73fc126d7bee5145d383de93d2f60ae072f04b3cf2d831ab9e88146857ef', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:32:47', '2020-11-15 13:32:47', '2021-11-15 14:32:47'),
('8b2322bbc59b7c38c8bbf6d161962a5c376d80f3eb0e79610cac0ec23f99bcef68f53ad6a8571720', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:00:56', '2020-11-01 11:00:56', '2021-11-01 12:00:56'),
('8b30c2a49527a91d759c1412b0d50922d27da602fb780378fd2af945df13417e3c28e03f27691a1c', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:34:27', '2020-12-29 10:34:27', '2021-12-29 11:34:27'),
('8b37644c869dcf0273a2788dc20948cc3c98e430e4c8c20c69f0396911087abc6b25f805284c059e', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:11:07', '2020-11-01 12:11:07', '2021-11-01 13:11:07'),
('8b79d5cd2501393a65789a8a8000c6a0d9ce8cac5959d547e5327ce0418969c82819a60399507e16', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:38:39', '2020-11-19 11:38:39', '2021-11-19 12:38:39'),
('8b805cdb689d1a04e5784c76b58e158a05a6093ebaf5a83cf18352a09efc39b12d1597b94ba89bdb', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:38:40', '2020-10-23 12:38:40', '2021-10-23 14:38:40'),
('8ba7e36746d93480f3300d1da0681fbd0e5450a1e54c419cb009559ba971efe5c600768e1bf998f4', 27, 1, 'authToken', '[]', 0, '2021-01-28 10:04:53', '2021-01-28 10:04:53', '2022-01-28 11:04:53'),
('8bc474428ba7452f472944bdcc9268a39fd375e86fe6adb8df5c5bc422905db04c04bdc1228e17d0', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:50:09', '2020-10-20 08:50:09', '2021-10-20 10:50:09'),
('8be64479113a3d46fd915c5484a379134eeca44310bb0571bdb890e01efe141aaf5d5411d9d58deb', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:28:22', '2020-10-19 14:28:22', '2021-10-19 16:28:22'),
('8bf078c7f2d0d67c64a6303f1981c61dbacf9e682796d8bc70e9428b877694329ab34f9790462831', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:16:27', '2020-10-23 09:16:27', '2021-10-23 11:16:27');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('8c068188cb0b1ef89b34f313505e122efe109005f7fcba29097cf630f2a31451a09940250d9f2d6d', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:34:12', '2020-12-31 14:34:12', '2021-12-31 15:34:12'),
('8c2dcc34c51357a9ab1deee6b301c91c0af015c5f95691be3536dd3cc06289612f615e0635df136d', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:38:22', '2020-10-29 07:38:22', '2021-10-29 08:38:22'),
('8c30d6c01ea8aad10d1c9e2fababeb50c42ce2a388e67d51938707bcea539c2644b2ba78bf8b8317', 27, 1, 'authToken', '[]', 0, '2021-01-24 10:53:04', '2021-01-24 10:53:04', '2022-01-24 11:53:04'),
('8c38cba5ebda22fec4c2b8e21132a13a32b9913ae8d666e21fbac06126f545b69b74788d928761b1', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:44:16', '2020-10-17 08:44:16', '2021-10-17 10:44:16'),
('8c40fe021f2ffbe1b75430579e3fc64730f1f40003a4d5ad9e2a235b6dccded76a258aa8d85f8431', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:48:39', '2020-10-23 12:48:39', '2021-10-23 14:48:39'),
('8c62ff64f283d679b55d4cd24aa64a91e6d8bdbc4db1a9cd57414703b8978375fd07c37391acb75d', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:02:20', '2020-10-17 14:02:20', '2021-10-17 16:02:20'),
('8c68539c6e8f70306900f048e862b8d0b975f434b2bf943e1c80e48bf3db6c41c5c187666204a99d', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:32:56', '2020-12-28 13:32:56', '2021-12-28 14:32:56'),
('8c84328f27deabcadad979413b631bedcc116eb957490755e0896b1159e0266b8ada29417a239bc2', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:07:03', '2020-10-11 11:07:03', '2021-10-11 13:07:03'),
('8c90821a5139817c95f224b1b9756dbd23ad30d1801afcc80a470673ea8a515e3c69ef89a1dbbce2', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:40:42', '2020-11-01 10:40:42', '2021-11-01 11:40:42'),
('8c960127806f22a4eb9e7af43add9514e48cb04677d24c601f7d9ba5c3f5c69c094c8a9222a43d0c', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:31:29', '2020-10-27 11:31:29', '2021-10-27 12:31:29'),
('8cba69dad61162a348a34cca8540d04d362ab86936c1ba608f11ab1f6512066bde76361a4a38a4f6', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:37:23', '2020-10-31 09:37:23', '2021-10-31 10:37:23'),
('8cc4a1aa20d5a6a60421af66fe28517803f9fc9bc0c338f9d82800dfcccb773de98ada44910ba63e', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:00:10', '2020-12-04 12:00:10', '2021-12-04 13:00:10'),
('8cc983bbc53f855aae3283370b38d048c4b569864393c881a6af7e322f5e6e7a01b9b2ed08eeb321', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:28:44', '2020-10-28 17:28:44', '2021-10-28 18:28:44'),
('8cd159f50bb8092f1b01774e33bddc17ccd29619d45cbec10c3fef348d4a41e1127cc42ff054ed74', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:14:29', '2020-10-13 10:14:29', '2021-10-13 12:14:29'),
('8cd399c67e922a40aa0de4277424fbf8ff0891f4d2b0277db960e059c2b9f608786f5a68647d710b', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:26:01', '2020-11-14 15:26:01', '2021-11-14 16:26:01'),
('8cf0364138da5cb5a3deda5cdcc5edaac45e2143bebad0675cdc0948f15795ac5ae024c4bbbec175', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:39:45', '2020-11-22 12:39:45', '2021-11-22 13:39:45'),
('8cf98f45e7233a317ef7134cfa2f902cb074d20b91c88d4436ee0b0b51b6c94feb2a9b7950543165', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:59:55', '2020-10-11 10:59:55', '2021-10-11 12:59:55'),
('8cfeb10f4453b7c2400749915354875466c075a9b0a3da4fbf70f030b903a18b09335e39d5f6b33d', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:53:00', '2020-12-06 10:53:00', '2021-12-06 11:53:00'),
('8d06a23cea118920fdc4eb9df9f16b9f6f72a2df3229a4e29f73ea60e8522134475f235eb5001735', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:54:14', '2020-10-03 12:54:14', '2021-10-03 14:54:14'),
('8d0e0099cfd13a0f3f9d68ab4e95abfb83f9655dfecce1fcf5e907f8a6173664ab7bf2c20540b63c', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:06:33', '2020-12-06 10:06:33', '2021-12-06 11:06:33'),
('8d2987167a14bf6916f337a010c957fa054206edd7f9ad528c80f76acbdfefc289bdbb7d23bd8f2b', 27, 1, 'authToken', '[]', 0, '2021-01-09 09:59:58', '2021-01-09 09:59:58', '2022-01-09 10:59:58'),
('8d3c62a768bfc2e63925b63671c663378883f2fd0f736438eb89464dcd32dba63b0441c9f796606b', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:23:15', '2020-11-05 15:23:15', '2021-11-05 16:23:15'),
('8d44c29f036dd3522eb24d7ed4f96d8ab4f8633243f13fe0be8dc67c473860f8888b52fc164b9d98', 27, 1, 'authToken', '[]', 0, '2021-01-10 10:54:18', '2021-01-10 10:54:18', '2022-01-10 11:54:18'),
('8d44fc82d5f892a5c3f77f5d7fb7e4860c5fffe7855b80207074b68455c64adfde2d48f870e7529b', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:54:26', '2021-01-02 14:54:26', '2022-01-02 15:54:26'),
('8d668fef756dc9e701a07662c2eef52c78c1f90c19edd869544882d5ff3d5266fa10ee630e3b75e0', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:40:53', '2021-01-07 09:40:53', '2022-01-07 10:40:53'),
('8d6b252dd00e19090c3bc99f621fe1f7c8d366e8239dad6670df525ca1c0cb273edf8e4ccd785bc2', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:48:02', '2020-10-15 08:48:02', '2021-10-15 10:48:02'),
('8d758fd081ac0b2bbc6b409211fae04837f0ae1a7bc13f1818bfff8f3123b5297b4856d259c7868c', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:07:41', '2020-10-19 08:07:41', '2021-10-19 10:07:41'),
('8d878728e9790aaa098fbc46d5e502e260f67be138cadac73bb13dd528aeefee4ed9357b60158084', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:52:36', '2020-11-22 15:52:36', '2021-11-22 16:52:36'),
('8d9fbc159d58b2f1441c3f97e7d4958212c4869b63d23ec56c706d482855f99f228568738d1c207f', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:15:28', '2021-01-07 14:15:28', '2022-01-07 15:15:28'),
('8da09f5eddccfb193c4e670969e09f4ae803795afe89693adda6da4472a2bda6be5ca6fb74b2febb', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:16:53', '2020-10-03 13:16:53', '2021-10-03 15:16:53'),
('8db7ba9f8b233118d8cdcb8794476e65455ff55714fa8e92224f9ef62ef9f01c2cf676bbb938a4d5', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:44:14', '2020-10-17 08:44:14', '2021-10-17 10:44:14'),
('8dee49db8630749c069ac6a4396c6d9d9f850fbcb86ad390481076f88f8f5d47f812d49aa9a94054', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:11:34', '2020-12-06 10:11:34', '2021-12-06 11:11:34'),
('8df27ba3e13b5039a0d79b34b90ded9e581e41cb6a86f9ce4401b8ff9cba0bcec840f957575e47f6', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:48:46', '2020-10-17 09:48:46', '2021-10-17 11:48:46'),
('8dfdc1f1b67dc3dcd0dfff04962922eb7ae75a7407d48508d6d734a8ce9b5865dedb4db2900e4e99', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:13:47', '2020-11-05 15:13:47', '2021-11-05 16:13:47'),
('8e1aee70458c964ceec029a8e31498e400f59c0f5d736546ca3e2b045c3700fe6d6350dc1b698212', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:25:15', '2020-12-29 10:25:15', '2021-12-29 11:25:15'),
('8e1fc0007d791c37158bf772ecb47f7b50466d9222e0e194367b223cb3a162f243ed9321007accf5', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:26:31', '2020-10-10 13:26:31', '2021-10-10 15:26:31'),
('8e56ac689d0a16a166a663bdf65f3f5e97642dba29d96301a0c3bb58ab5990919edefdecc19bc1d5', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:26:09', '2020-11-14 12:26:09', '2021-11-14 13:26:09'),
('8e5fd5735e7545bff7f94ff79506c7fe6bfe9a7fe2c50b7d2a72f476a620932a1291f5a238161046', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:20:32', '2020-10-06 15:20:32', '2021-10-06 17:20:32'),
('8e6652cb8096b975431af7ef292e4c3b6beed5882cb9678bb7e12ba2cd8295823f9a58e5ea14c2d3', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:42:10', '2020-11-01 16:42:10', '2021-11-01 17:42:10'),
('8e6c2b8e5e48c5bc9553927fff00b943db96c131f747c32a7a5dc191b45baa3c89805911a47b33d5', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:43:07', '2020-10-23 11:43:07', '2021-10-23 13:43:07'),
('8e7a8155ce83ec3d4aec6cea44d35a93c7c6824e29a874707369e4c799bc47f03d2c406c8708683b', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:25:39', '2020-10-25 12:25:39', '2021-10-25 13:25:39'),
('8e8b21103bcc07b1dbc972aea94d597dae3c5d788ff90057adeacd28ad62c00aa0eca58a2ee627a9', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:34:42', '2020-12-06 12:34:42', '2021-12-06 13:34:42'),
('8eae19e0c48b6a8dc975fc572e723b20006ea3275b283f4848cbad8f10dcaa43bb69b0b3fadb7d05', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:28:40', '2020-11-22 15:28:40', '2021-11-22 16:28:40'),
('8eb0ee6fb58332891a9f649f2498b47f07ee0a8b9ec16760de67cee314ad3cd2e705fb40c629a386', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:55:29', '2020-10-03 12:55:29', '2021-10-03 14:55:29'),
('8ec3cc4c81a89da0e641fb6966e09141ec33b2ca3126c70c87c8b795238f62e777fe6270f063193c', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:49:23', '2020-10-31 14:49:23', '2021-10-31 15:49:23'),
('8ec82a087252b95a58b9fec5eb57336f93903d1618959e52af88fbf3255128e5cceea2208407f9bb', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:24:17', '2021-01-03 13:24:17', '2022-01-03 14:24:17'),
('8ed5f26074a045a72d5bcbd41db29d2a3f6e440b8d36b5f1cac0f00d06125db17e1ee3d909da3fa0', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:01:01', '2020-10-15 11:01:01', '2021-10-15 13:01:01'),
('8ed7a98aa641e8f157b6007be4a8ee84de20fd94077b1f91030802fcaf23a2495d9f6bb6915c2851', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:29:18', '2020-10-23 11:29:18', '2021-10-23 13:29:18'),
('8ed9c1eae3ac49413634cc69205e6f2aa7289759255f5703d970712ff799284d9cc6ecc3b444f6e7', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:30:47', '2020-10-18 10:30:47', '2021-10-18 12:30:47'),
('8ee20efdde3e5287880f83129258ec96e5ca133a403f0ffb3c8f4af1fca6879a2f7cd91f52059fe9', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:29:14', '2020-11-01 16:29:14', '2021-11-01 17:29:14'),
('8ef8be8098710acfa29df7a9560562791be9c636bf5a2ea13b90d0e7c86c8489d9d6183a581bfbe7', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:33:28', '2020-10-13 08:33:28', '2021-10-13 10:33:28'),
('8efcb4a1311f1017b3e1b01ce7882f020c13962c0fc4d5e61f7d4764cd86157e94b94af16121d544', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:35:51', '2021-01-02 10:35:51', '2022-01-02 11:35:51'),
('8f2273d0d7c5ffa490524978dbd3e8f7673574a72d3daafd81166d1d51b39edbe641467661c8dc7b', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:31:52', '2020-10-23 11:31:52', '2021-10-23 13:31:52'),
('8f44dc1e4cc7e6788a4abc6d2b74e6e7bed2a260c7f17d34b50abaad1e777d3091f6067a009a6990', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:49:05', '2020-10-31 16:49:05', '2021-10-31 17:49:05'),
('8f6a7a20ef39ceea77f25032828ade29b8417a488c1541334bda351ba1cf25217df58d587a248767', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:45:13', '2020-11-01 10:45:13', '2021-11-01 11:45:13'),
('8f6c3c5fb090b07dd9a76e9b6a428010b9f1de91722ce7f1c9ef5299afd94c5e677fbe32a518586c', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:47:54', '2020-10-05 16:47:54', '2021-10-05 18:47:54'),
('8f6fe0aa2d5878cd5415f98d8eb7ccd5f5d04cbf48c4f95b314ae3c07a462af7afd5272b47047879', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:15:42', '2020-11-15 14:15:42', '2021-11-15 15:15:42'),
('8f793448c3bcccc52d1588a1d4ee60070e08cb5d6270eb4cc5ee0861385aa631c22921fdf1990e8e', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:26:30', '2021-01-29 16:26:30', '2022-01-29 17:26:30'),
('8f902110c2fd87ea500c989e2da1bf59c2fb8e84068095138066a8d15109b8b85b91d8ae679037c6', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:03:00', '2021-01-26 19:03:00', '2022-01-26 20:03:00'),
('8f99c6c24dcb544dfb2bf6ecf5778a2131d0fe4d55ef3c273d9328324cb7ffbf174a3a10b9e76088', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:35:07', '2020-10-17 10:35:07', '2021-10-17 12:35:07'),
('8fb1def6bff4ccd0803fc5f0148dddf8e14509e4ed5e75a00ccbd6f66f5029432048ce2999f66293', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:13:13', '2020-10-27 11:13:13', '2021-10-27 12:13:13'),
('8fbcf9aff9e6b2e4ea6ea940a7f13771d0c59a72dada123a1b4b1c955f65bd2677cdcdfd34435b50', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:40:55', '2020-11-19 11:40:55', '2021-11-19 12:40:55'),
('8fc7b08bcd28b6b8d27f2ccbe5cc2750a224fb1eae2ce4cdc4bece98df7f3524825b824f567e6217', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:38:54', '2020-10-23 15:38:54', '2021-10-23 17:38:54'),
('8fc87e57c9e236fbc8c720d18f0f4b838f2574621eea3ef5df1aa103674129d9814d94efecea8b56', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:26:08', '2020-10-15 10:26:08', '2021-10-15 12:26:08'),
('8fd1c6ff95c75df06d67c383e663e4ba120cc36c9a4300c7aac6504fa089abe803820369b6b8f73b', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:30:32', '2020-10-31 11:30:32', '2021-10-31 12:30:32'),
('8fe958e2f7d3df2b806701ba4f57c2963235277c160be24e4326386dade92dda621b7ee900b3e27c', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:04:19', '2020-10-19 13:04:19', '2021-10-19 15:04:19'),
('900084defc1f761d6a1f5f97fefc090fb8c1d879c7619d4a3af0b89300ef780728a3ea43c88f52e6', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:12:44', '2020-11-01 10:12:44', '2021-11-01 11:12:44'),
('901d346994a2386a02a702758f08d95888ad65c13322f38b6b782689fb8e11bab1a2140be7892a94', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:13:36', '2020-10-11 11:13:36', '2021-10-11 13:13:36'),
('9023fb5f307bc7cd204ad6de71b6d5aca139861fcb6750cd12d9a00c6212a6201a0242e30377a88e', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:28:47', '2020-10-31 09:28:47', '2021-10-31 10:28:47'),
('902507a1b785692904fe33c30cee7c9189d125d7ebe07f3e67b64e2a23d22964e1198bccab55e45e', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:27', '2021-01-07 15:53:27', '2022-01-07 16:53:27'),
('903373cb6a26aa97d5dabcb921a9c4284b138651ea5bb80f06698f59f1180da6e8649bbadb47e356', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:33:10', '2020-10-19 07:33:10', '2021-10-19 09:33:10'),
('9045f1c80f52f110f6334f1bb738fde28f1b6bb42e2aed721ea8cf5fb0d471684eb4383d6a0a614c', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:37:01', '2021-01-02 10:37:01', '2022-01-02 11:37:01'),
('9094f6b817d27a7e4a04e1a7e6ac89d6965999b9a19291e548c4cd97bc32e3a75560a9e99f93c2cc', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:10:53', '2020-10-31 11:10:53', '2021-10-31 12:10:53'),
('90be024a806df1c3867d922397c1a0406aa6dd8d84400db0f21b76a82bb2c4b15c322a897810ac91', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:19:36', '2021-01-29 16:19:36', '2022-01-29 17:19:36'),
('90c9faa019bc21cc63b4880758ed6e395787b184f9d859773b39917336dcd1353a6d483586176b6c', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:25:05', '2020-10-20 09:25:05', '2021-10-20 11:25:05'),
('90d5d2bdc22dcb9c8028ec7d17183001b3d8dc8b3a3cf9e5606c9331435551c8de70c381d129e3ee', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:14:20', '2021-02-07 14:14:20', '2022-02-07 15:14:20'),
('90ec8e74aa35dd187ee5c96b2d128fb52ffe3a799aafdf9b4454c03c2f68ea0b40285e5ae6f6ed92', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:59:43', '2021-02-07 13:59:43', '2022-02-07 14:59:43'),
('911b9617a605ecae6530a046d92a98c0681f27116d1aeac53bc8ed18796cf92ab055eee216cee0b3', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:45:59', '2020-10-20 08:45:59', '2021-10-20 10:45:59'),
('911cb862651e357c90092e33c428f15ada7af9430fb70dc0f4652e1787d0fbcda3070c583d9e5e32', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:13:55', '2021-01-03 13:13:55', '2022-01-03 14:13:55'),
('91240bbbcd163d0affa2e6bca29c304fd585c1b4107e4170f5525a05f655b4bdfc261178dd5eaede', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:47:50', '2021-01-09 14:47:50', '2022-01-09 15:47:50'),
('913b7fd273a3948cb351caced16665136ae9cbf934ed081045769dec164be0bad43d6c151aa8e739', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:49:18', '2020-10-31 14:49:18', '2021-10-31 15:49:18'),
('913d0ed3c933f02dd60dec35003102673f1d401edcf5554b5677524457672ea68e6c385c0fc5870a', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:38:06', '2020-10-29 07:38:06', '2021-10-29 08:38:06'),
('914076e06e3f72c64cb9420ad2be438d614d12388d3a346733f8d30ed309ec6db25b9e63297d10da', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:42:27', '2020-12-04 10:42:27', '2021-12-04 11:42:27'),
('91434b6d53bbb2458ae90a259527af9a0d1e0ab80570e5b96ea3581060df413229b87179607ccc66', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:45:04', '2020-12-31 11:45:04', '2021-12-31 12:45:04'),
('9148e384e9eae916a65dafe99a40909fc66e775fe10263fe9c933b9789bc87197a24afa02a1d35fc', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:15:14', '2021-01-06 12:15:14', '2022-01-06 13:15:14'),
('914b8dd68dcd2d1b3c87a41ed901e2b2f70101c83ea721b2315663f232f3f871f5b83815ffd4c279', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:00:38', '2020-10-19 10:00:38', '2021-10-19 12:00:38'),
('9159b0a08e9571cfa9ccfa28b52db293f9d0a3113d34bd8d7347c5103cb88fb4401aa0c2105ca753', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:09:38', '2020-10-10 11:09:38', '2021-10-10 13:09:38'),
('915e6eaaa7433da680452ed9aaee3e7ea5895cc6cf93bfea29470ae9dcf5283692eb411d010a3a60', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:33:39', '2020-10-18 08:33:39', '2021-10-18 10:33:39'),
('9186279add064f64fb3ab7610c0b8df19e755e50060335ff2abdec6eac466249e999e6c6c1293938', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:27:32', '2020-10-18 09:27:32', '2021-10-18 11:27:32'),
('9189d9e1542d7ef6eca3bd64c6babdd0f8f31302e010a42300cf9cc7bb82e68844634cd163d8c27b', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:56:14', '2020-10-31 16:56:14', '2021-10-31 17:56:14'),
('91a04ba9a3266c8dece4e2adb582f36d77ee01fc4ef7d2b050ae51d87981d811c5e6e509e0601cff', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:47:08', '2020-10-13 09:47:08', '2021-10-13 11:47:08'),
('91a51b1c4bc697e5c3d0d342f78f8cf46f999a64b0ee04c8fba56026fd18688e6fa1206687c6a302', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:03:13', '2021-01-03 13:03:13', '2022-01-03 14:03:13'),
('91b6471c1761e34f239efb0970649917f0dd85ae3c0c1b93b9709265eeb8ce073df8f32a288fea8a', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:54:33', '2021-01-06 13:54:33', '2022-01-06 14:54:33'),
('91e27f88391cd4b1dec470cf50d2cd68f100cbee24793dbcfe2ef5fbf1cbe2010667e2665619c5ae', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:49:45', '2021-01-06 13:49:45', '2022-01-06 14:49:45'),
('91eb419c23933594da7f85cea4fdefdab6a361757b9030e96a5b51048911b8de238c12415a676264', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:06:30', '2021-01-17 14:06:30', '2022-01-17 15:06:30'),
('91edc3173351b9cc3a57a7b5088e43774261d26df27bbe04b473474f681c86c092db5985e2fb770c', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:23:49', '2021-01-30 11:23:49', '2022-01-30 12:23:49'),
('91f3ca2296725464e76b0447f4e153670bec10d8699d42bcb382b177cff17d259608c3f93aa3f1aa', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:28:19', '2020-11-11 16:28:19', '2021-11-11 17:28:19'),
('92128bc1e7f083d44bfdf0a5cc74ed1363809c101277d670661614ce707f9e6a03fe450026e29104', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:13:22', '2020-10-19 12:13:22', '2021-10-19 14:13:22'),
('92147315d0e53e500e2418b23fcc3d3c812e8b6064b921d21714346735f838208bf5b4640cc9f2b9', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:06:24', '2021-01-28 19:06:24', '2022-01-28 20:06:24'),
('921b157ef620c6d0d31ee06e08f038f5906bd6780c10d9a5fe870a25cbd26e007c295ae03cf1bfc4', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:51:40', '2020-11-05 15:51:40', '2021-11-05 16:51:40'),
('9222631383a199742e0389cf24a2e13cdc66dc8047b47a3c191903e35b16f5667d407747cee8674e', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:43:26', '2020-12-06 10:43:26', '2021-12-06 11:43:26'),
('9225222e2d58f71bd6081ea4678f0a7e291b71a919b39ed51b718fdd71733579ed74797f22d1e93f', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:24:07', '2020-10-17 10:24:07', '2021-10-17 12:24:07'),
('9226d78dd97276ec10ca217afc4eb50ebb526222dec94e86bd4247304f96faa5f3393368da03e046', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:00:06', '2020-10-23 10:00:06', '2021-10-23 12:00:06'),
('9236e72cd0e46d52eea0985fad6ece70a9fd0057fdcbd3a1877773150239f317febcc856b8674bff', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:43:00', '2020-12-04 10:43:00', '2021-12-04 11:43:00'),
('926e431f99295dfb00f10f35a856b57167d2394ae04345bfe52ae5598ba95dcdf7e0b10c989c41ea', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:43:45', '2020-11-01 10:43:45', '2021-11-01 11:43:45'),
('92910d6f75c04cca91c3186b577bfd00fb62c72354be14fccc7f87a8d7eb1217868fc511360cc42b', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:27:45', '2021-01-01 14:27:45', '2022-01-01 15:27:45'),
('9295be83d2d2df9eebaf3e0bbd267c27359e7e7a62a1d5d7039cfb10a971c7b414d6dab7c9576f60', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:20:07', '2020-10-23 11:20:07', '2021-10-23 13:20:07'),
('92a021c4a08230d1ee71d9ab320c49e9c659c05baec1e6daa270adc156267d4b345b911022d8245f', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:23:14', '2020-10-25 12:23:14', '2021-10-25 13:23:14'),
('92bf1d401ea84fbb2ecb65f5da573cfcdf4f372fe6135820a9c16671dc8c39a1192d097655992b57', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:29:34', '2020-10-13 10:29:34', '2021-10-13 12:29:34'),
('92c13ee5e40899b6e6d435997594c0847a2e6a2ea4182cd332600a723958cad2766dc03485ea932e', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:05:00', '2021-01-26 19:05:00', '2022-01-26 20:05:00'),
('92e227e05feaefaa14769c27f49dcd0f0400bad435e95e1a3647256602d3bfed1c6b756072a656a1', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:37:55', '2020-11-12 13:37:55', '2021-11-12 14:37:55'),
('92e6e39ffc5eaac848b2bde422b027d689d378605c608f008225dd81c7497d37d9c18629ce1c2b32', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:37:39', '2020-10-19 12:37:39', '2021-10-19 14:37:39'),
('93153c76b83fd3120b02fe7e7ba12b1c8a4487b75b34073566247ba6d0df3edf37e604a820baaba9', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:19:56', '2020-12-04 12:19:56', '2021-12-04 13:19:56'),
('93231e308b9594d111caf9fccdc3fa9888cdd74b2b66cd2592b7096b8994c8fc6018dcc6bbfe392d', 27, 1, 'authToken', '[]', 0, '2021-01-17 13:39:17', '2021-01-17 13:39:17', '2022-01-17 14:39:17'),
('9325570380a3855c61aec079531611811527ef4f6343b17aceddfc3c6e3727e4ab7e18c9e6a35b82', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:20:02', '2020-10-23 10:20:02', '2021-10-23 12:20:02'),
('933e188050ed7090c1b028fc4d4823a4fb106506e0f2d2958ea23f665999c18e4ae8add2529c8737', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:18:17', '2020-10-13 10:18:17', '2021-10-13 12:18:17'),
('934ac379bac0dd38bbc9b5fe0d740093b13ad134eb426e53c552156cfb5ef4e4ecea7df780038037', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:34:10', '2020-11-19 11:34:10', '2021-11-19 12:34:10'),
('9356657eaf2b359365bd1a2e7272ebc8c63390a34cfd7abb24669dbd8afeccca491eaf7638711487', 27, 1, 'authToken', '[]', 0, '2021-01-22 13:13:26', '2021-01-22 13:13:26', '2022-01-22 14:13:26'),
('93722b9abea2c5e558edeacfbb42807351dd47de12838b3c0191a3b56319263ba8e609a1e8f4b1fb', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:38:44', '2020-10-11 10:38:44', '2021-10-11 12:38:44'),
('937b0e727a833dd97b552ecd4fbc2bdaee6606588d9edc67e6dc14143221ba1aa48b51298c7f9c73', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:27:56', '2020-10-25 12:27:56', '2021-10-25 13:27:56'),
('9393b95ff177ed194608b2e48e5f178222c5ea70aba6be0870c5624b0d250b099d543214d8c1d1bd', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:40:03', '2020-10-05 17:40:03', '2021-10-05 19:40:03'),
('9395fcbe84fbf139ba9f676056c9ae6e9bd918dabb6d52a0285848a0806902e0301a77b51823f4cd', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:24:28', '2020-12-29 10:24:28', '2021-12-29 11:24:28'),
('93b31fa215a5ab047b893ffc49c59dcde6a97b25d54a372102ec4b86b31df91c363840278e0fe680', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:40:01', '2021-01-07 09:40:01', '2022-01-07 10:40:01'),
('940e270850c5edef0d23c15c81d065750413576ffed6dee7344b09028a7597a8884df10b27e85b52', 27, 1, 'authToken', '[]', 0, '2020-11-15 12:54:29', '2020-11-15 12:54:29', '2021-11-15 13:54:29'),
('9417831fe0de08fd7c5ad292e7e3f68ca662f6dac71179ea978c7fba930220ce750faa37f4a8a8ee', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:22:00', '2021-01-28 09:22:00', '2022-01-28 10:22:00'),
('94249dd8f922443948a088902aa2f319d8bd34c431b9d0f78ff9bf2a13f5c77cf6651ce2f39547d1', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:41:49', '2021-01-07 14:41:49', '2022-01-07 15:41:49'),
('942ff27157a91cfdb6b111e985e55c10e59a4378de8f527ec971d6a3fec49638a1c4154d96212d36', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:55:25', '2020-10-17 13:55:25', '2021-10-17 15:55:25'),
('94357c9ce206debd81e972e8396c6a30678379747c71661642475a371814080cc142ee3087914704', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:17:46', '2021-03-25 18:17:46', '2022-03-25 19:17:46'),
('944c3f38a816ab048bd25316031767801894dcc258bbed3459fb8e05e2505aec7352cb63ac506d06', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:18:50', '2020-11-12 10:18:50', '2021-11-12 11:18:50'),
('944d4768303b3a5e535926ecf926c66f8d139d3a2606ad2387b69ce4419effb6f3baef6c83f66c62', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:22:53', '2020-10-27 13:22:53', '2021-10-27 14:22:53'),
('945cb361d2f72495023e1c2dfdd50cd56c19e0228c7b13665cce9611e2e56657f40b1e0eec748ab1', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:18:29', '2020-10-03 13:18:29', '2021-10-03 15:18:29'),
('945f844a7dbb892285b534739a3b37cc9000d666b1345897578b50951475854de862561ec0502b5c', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:34:47', '2020-10-27 10:34:47', '2021-10-27 11:34:47'),
('948d442e2f263f1e36e9b8a91a9de828cda5dd87039483065d8409f3510811d37ac59135a2dd31ab', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:53:43', '2020-10-31 15:53:43', '2021-10-31 16:53:43'),
('949ba9b3ffc971922fbf39b86ca5539d0e70d10251aa08911874eb3da9f8f89fdcba3743f8c7be7b', 27, 1, 'authToken', '[]', 0, '2020-10-28 16:30:18', '2020-10-28 16:30:18', '2021-10-28 17:30:18'),
('94ca81ef5d26a8fbd419ede45a60464e0d7dff92e21fd8851b7db34691b6c131dc04a0a6226468bf', 27, 1, 'authToken', '[]', 0, '2020-11-11 17:07:54', '2020-11-11 17:07:54', '2021-11-11 18:07:54'),
('94daeec671f697530ef936e769d40a0dcc5a47ebab7ed0d5324e87e83a04eba4d153d879c44af33c', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:37:40', '2020-10-19 11:37:40', '2021-10-19 13:37:40'),
('94db89ce0d4a82b3306c351c8b875105254bd5245463dc3171b873b522a59bc019d5bba697ccdfa9', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:38:22', '2020-10-13 10:38:22', '2021-10-13 12:38:22'),
('95060ecd107ce200fc06876b7334dd2758f7d81027f131917c65aabaa27c346d5c033c948d06b28f', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:47:38', '2020-10-13 10:47:38', '2021-10-13 12:47:38'),
('954854f3b639a09d1cd11f99701ce3b2f19902116b74f183bb96be4beda8e9eb686891a85d1e6b96', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:30:46', '2020-10-18 09:30:46', '2021-10-18 11:30:46'),
('95597b4e8e77e81a9f19ca13c168518dfdeffead370e9d4f20fa9f5b4bbda89285b5287da5d4ad88', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:33:49', '2020-10-25 13:33:49', '2021-10-25 14:33:49'),
('9561c175caf18d5b446b2c1e79f9be92a44fd750db7b876901b104c9f81404e9dac4ddb18e0e2387', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:33:26', '2020-11-19 12:33:26', '2021-11-19 13:33:26'),
('958b99197317e92ee9e252c3f97ec415247472c33407788418b08b59b5c0352c8afd15be91a08224', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:48:24', '2020-11-01 16:48:24', '2021-11-01 17:48:24'),
('95903a6c0db4f0c246a12ac6c31355fcad83e043acb5d4975c41d01307bf45307f22465789a17c92', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:33:50', '2020-12-04 10:33:50', '2021-12-04 11:33:50'),
('95992b2237ddef504ea04a3f48511129d4a9a88f3e34624ba456d2e6ef03616be216d82a440e7233', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:37:26', '2021-01-03 14:37:26', '2022-01-03 15:37:26'),
('95a9e027854659486c8b9b330904b18eb6e25b1c05f05b08c4f513f34e8f5a4a5fc1d717e88ae4b4', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:39:35', '2020-10-29 10:39:35', '2021-10-29 11:39:35'),
('95b807ec09ddd9caf1e8bfdbe864467118b659c42accd4fd057c83d73e0de7a60470e7b3ec835552', 27, 1, 'authToken', '[]', 0, '2021-01-21 13:57:16', '2021-01-21 13:57:16', '2022-01-21 14:57:16'),
('95bad3a6a79cc07f166b097ca5d23c0e0526866ab02e0fd218421f474ca9c17f2729e82c1f2fe3e5', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:10:37', '2020-10-13 09:10:37', '2021-10-13 11:10:37'),
('95be5e119fb13fa1e5df4d1f271efab5a400895dd3473b9964b9128a5c22a613fa30a54f180fcb00', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:32:23', '2020-10-23 12:32:23', '2021-10-23 14:32:23'),
('95c79ef82cc376fe5cb672ffc5174b3cc4e3bfb42d522ef582c18172b6ba9758d935fa5b8494a387', 27, 1, 'authToken', '[]', 0, '2021-01-10 11:44:46', '2021-01-10 11:44:46', '2022-01-10 12:44:46'),
('95d2dc105ce420e1786349403c0771983ea6f1ea34e18f363e7a71c4e53bbc101b10c11ab161ff20', 27, 1, 'authToken', '[]', 0, '2021-01-29 11:04:31', '2021-01-29 11:04:31', '2022-01-29 12:04:31'),
('95eead2362e04db21e533916917e505f39e89b14771eb16f4173a2edddb14d256c2c250b97079047', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:22:08', '2020-12-31 11:22:08', '2021-12-31 12:22:08'),
('95f378816931e91c1a97c8924e81ff6ab2a5196a6f34fa498270ebce3d1caa032650662a9fd1d160', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:55:35', '2020-11-14 15:55:35', '2021-11-14 16:55:35'),
('95f3d6072e37fb2387a657c1868590142463ee2ed10142866054908ea2af012429570cb1031e3f36', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:13:45', '2020-10-23 11:13:45', '2021-10-23 13:13:45'),
('95f6f005ec4629a4050fe55cddb7e1cf6e19cac220bca1bcb143e0c7b3d472eaacd5054f4969ab9f', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:15:15', '2020-12-28 10:15:15', '2021-12-28 11:15:15'),
('95f7c23ec9346b4f1e583a0d5abe20ad273df1a92eec82fd5f8d40fed11b4890b62af54960a410d6', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:48:25', '2021-01-24 14:48:25', '2022-01-24 15:48:25'),
('95fb27e4367b57b8c9d7e7ddd2c0d8895af149da725c32a5f3c19a042163593c2e7c9eab0fbbb259', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:51:41', '2020-10-17 10:51:41', '2021-10-17 12:51:41'),
('9612e7a5e167bda1bcf9452cba3cb64454dd785c292b4dc4749bff8906e86877792654c6962c3b9a', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:54:32', '2020-10-31 15:54:32', '2021-10-31 16:54:32'),
('9614392c9c8136e25ce5c0f5c36cf605f717a6a06af18d18cf8ad6ef4b2182fe0385c9124bd96e5e', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:35:23', '2020-10-19 13:35:23', '2021-10-19 15:35:23'),
('9625cac3709e463d5ab8564361476faba048235863e2f724b776a14248567b6e4b2a195af538d6a8', 36, 1, 'authToken', '[]', 0, '2021-01-09 13:15:57', '2021-01-09 13:15:57', '2022-01-09 14:15:57'),
('962eb358e613cff82597a29d0a727c8240f8bda405029ce62731248a83fe37ca156adace6958fb11', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:27:18', '2021-01-29 15:27:18', '2022-01-29 16:27:18'),
('9631c35d81b04bbb13051bf6fe40fc1dbf3d165786271666f6e1368f5b690adf5ff1671083e12a3f', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:38:00', '2020-12-04 10:38:00', '2021-12-04 11:38:00'),
('963a74cfde20f2808582df6bc092cb9af620dad5d644e8af957cd136cbd9d6aee699cf8b1bc82f65', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:56:38', '2021-03-27 15:56:38', '2022-03-27 16:56:38'),
('963da1feee83c77c6af95fc6ab30798ffbf363c6379996dcfdcb7314b3429009fae295aa00a2ead4', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:12:15', '2021-01-10 12:12:15', '2022-01-10 13:12:15'),
('9643efeb585232a8a5ac6391d4a735c35717f6db3c66f9950899bd4f810c4dd51898b5a7cac75bf8', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:43:59', '2021-01-30 11:43:59', '2022-01-30 12:43:59'),
('9660aa215b15e41650c856f9bb4b2cbf938ec0317dcb1efdb426229c341447d2d0dcf74da2f47d3d', 27, 1, 'authToken', '[]', 0, '2020-10-31 12:02:38', '2020-10-31 12:02:38', '2021-10-31 13:02:38'),
('967917b40ca99cbaa9a8ae263b6722f8add1aa9c41e773896f46c464634d72f2c51c6444b47e7ed7', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:25:53', '2021-01-06 16:25:53', '2022-01-06 17:25:53'),
('968efdad743af9010d4f4b804b7021702a1411dd1ff70ab60f5644b4151ae7e789dc0afa5659a751', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:03:18', '2020-11-14 15:03:18', '2021-11-14 16:03:18'),
('9690ce7588e488517ab3dda6e24d93095cb18a69dd48213a9656419c4b64dad4df1ffef9d2946b6b', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:06:42', '2020-11-14 16:06:42', '2021-11-14 17:06:42'),
('96a457b8fb22f50a0e662e06eb431bebf38e01dfd773cb36a9d9520d7fa8b29948f771787f50e889', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:49:31', '2020-09-27 10:49:31', '2021-09-27 12:49:31'),
('96a9db31f42394a0a662873623575339d7f8c2a54c82b891ef6b4c4c0f48655dda22a8f1b1a1f41c', 22, 1, 'authToken', '[]', 0, '2020-09-27 10:52:16', '2020-09-27 10:52:16', '2021-09-27 12:52:16'),
('96b7642fb471a67624824234f23dec25b4073055cd244f2ecb801a28e8f195056d7036d7d44a6b9d', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:11:22', '2021-01-28 09:11:22', '2022-01-28 10:11:22'),
('96ec5ddbf5fb0523cf5cdc0e22e996d4a38919097018c062c975f2b3b46d2e312576a2619cf5f593', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:58:03', '2020-10-23 14:58:03', '2021-10-23 16:58:03'),
('97066774790133d5c03c6bef60b01ece71a14692dcc7a0127376265bcf514a8c3106ea1cbea403bf', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:38:13', '2020-09-26 09:38:13', '2021-09-26 11:38:13'),
('9719e5b37e0973d33d607c88e49bf49f7c31577a8505a84412b1d6fbf986921d1940092c49b81e1f', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:24:52', '2020-10-13 10:24:52', '2021-10-13 12:24:52'),
('9730793234c828a4c82569e0c28b7b6d91e401e35de895a890ee62e7d3b776da7317a4a2bcb7c28f', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:10:17', '2020-10-19 09:10:17', '2021-10-19 11:10:17'),
('9735530ee2dcec7621f81a621fba8114c0d701f8820996f193ba6691771fef6ec497abc828f9aa69', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:46:03', '2020-10-11 11:46:03', '2021-10-11 13:46:03'),
('9742261b2745907844fdb853bd27a00ff262dc47e1eb66e12d6f68a7a7d1a44b27e573ca5f2ffd56', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:26:22', '2020-10-10 11:26:22', '2021-10-10 13:26:22'),
('977298fb802c8bb27b788c43816628cb5618c4eba4aeb8f7662249bda512e93b8f2187b17f2624e1', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:53:07', '2020-10-23 09:53:07', '2021-10-23 11:53:07'),
('97791f24d20cc22057f4e17434a2a1f96a13930fe3aa9fbec5f5d1f6b260282a33eb2a3b8de964fc', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:09:09', '2021-01-09 15:09:09', '2022-01-09 16:09:09'),
('979bad36a9c39890ce5b6d3871590558862fad89d4146abf350b1978b3563ab17902c84bdd0d9fb6', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:27:10', '2020-10-25 14:27:10', '2021-10-25 15:27:10'),
('979c82fac7916764b2d679c5b13f696628a90b82a50b847b30c856102117c89fdc8a36aecd1f895c', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:55:37', '2020-10-19 07:55:37', '2021-10-19 09:55:37'),
('97be1d012c4df137a53a9ab56366e337329d2418a14b42b21f72d1a8b89c8125c801ecb2169b304d', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:52:33', '2021-01-06 16:52:33', '2022-01-06 17:52:33'),
('97cd129b804d6f10ed56d72effc0686c463ab892a4b5eec6a48c2c595b0f07cfc10aa00ce66fff6c', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:26:46', '2021-03-25 18:26:46', '2022-03-25 19:26:46'),
('97ef38cf60e94a2ae7940bbd429b219609badd8025394492752ab11b28a080fc7fba80380ef065ac', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:50:36', '2020-11-01 12:50:36', '2021-11-01 13:50:36'),
('97fee51402c0391ca1d59be2a2473a95665cef47052fb665b1c590e7e339e2447f9d57aef8c9dd23', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:25:53', '2020-10-19 07:25:53', '2021-10-19 09:25:53'),
('9806caeef3b721242ece26edb6b1b2679d8911f2179ab2367ffffab8f787cfcee18188aefa7405f1', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:46:19', '2021-01-06 14:46:19', '2022-01-06 15:46:19'),
('98089c5a68277b9d708707371636c0e96d6496c42c4fe081983680a3b00aaf6c51abffcbe2819d19', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:38:55', '2020-10-13 11:38:55', '2021-10-13 13:38:55'),
('980e7da5af34b063a5f5323a79867e06b01ffe63c118891baa9ebc04e1e5aea92fa0958c3fdb0db1', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:57:57', '2020-10-23 10:57:57', '2021-10-23 12:57:57'),
('9838fc7808680d4bd7d6c6fb813b64e7e6762043d61cdbabc913742157818820bacb2238b26b3b4e', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:12:14', '2020-10-11 10:12:14', '2021-10-11 12:12:14'),
('98466d80225674caa7118e6fd93154c76a030e80d7f0fd85c836769ee037acc18d55d37cb7382fee', 27, 1, 'authToken', '[]', 0, '2020-11-14 13:59:54', '2020-11-14 13:59:54', '2021-11-14 14:59:54'),
('9857ad548b096eea0a4a0f6f49f2eabbac2b681aec5c900937dd4757153cf8fe10106ec479bd739c', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:29:17', '2020-10-31 11:29:17', '2021-10-31 12:29:17'),
('9866e057dfb9a331b19be45e44fd74b6c756fa741006d97d926cde4514196f166c5fcc5baa450629', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:59:47', '2020-10-31 16:59:47', '2021-10-31 17:59:47'),
('986f62117cb2189ecbbeec9b7a5cc86df1601672f3db6f1d5fd0347bc00c40a4704019e801e73933', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:07:09', '2020-10-29 13:07:09', '2021-10-29 14:07:09'),
('987b5bc8c5ffc47a1bf9dbcb106a0d58c4dd4ac123ca7608c961c328b7e78c415c68def1177c2d86', 27, 1, 'authToken', '[]', 0, '2021-01-17 13:42:20', '2021-01-17 13:42:20', '2022-01-17 14:42:20'),
('98994929322dce80cb00ad48f82b3f6da6bc6ab0ff29addbf9152d241b1685f6c376f7cbbb07e00b', 27, 1, 'authToken', '[]', 0, '2021-01-24 10:11:55', '2021-01-24 10:11:55', '2022-01-24 11:11:55'),
('98b15c0116d049d1a79e3fa4688cbb493c740e83cf5d6dfc9c55efff27d2f922f6cae6d0c7ba4db2', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:35:22', '2020-12-31 10:35:22', '2021-12-31 11:35:22'),
('98b78cfc69012b2482408d21fa937eee03a8d18a6a0db4d5070b315c9911195e45699e197673b622', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:36:44', '2020-11-19 12:36:44', '2021-11-19 13:36:44'),
('98ba4f9ac262d09b93320dba70ffec07329c0fb8ff0efeeac0d783521f7f206d7efd6d3e0255be14', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:06:25', '2020-12-28 11:06:25', '2021-12-28 12:06:25'),
('98caf8663abccbdc0e86062e4774e7ee755cc72ed3a89481ee20562b9f6a983e7abb5343b9597b99', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:44:30', '2020-10-31 16:44:30', '2021-10-31 17:44:30'),
('98cb3c3ed1fc0eba2a9fdaba92b7a50dc91df1654db44c64977e9ff55e62813a0adb390938c60718', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:41:48', '2020-10-29 07:41:48', '2021-10-29 08:41:48'),
('98d205aa82ba4fc2fddd915950572113264d1b856ec55916481dfa550d6e7d19861068c3be5fd973', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:32:06', '2020-11-14 12:32:06', '2021-11-14 13:32:06'),
('98d69bf248f068b4b7d18a119e7682aaa519d03f15de43201c39aa08c933f106208801444572425f', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:52:43', '2021-02-07 14:52:43', '2022-02-07 15:52:43'),
('990fa19522785d6756ec7f98027fa6262ec6b1fdfbb34f9a287facfbf2b6c62f1845a63d99c30713', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:01:35', '2020-10-29 11:01:35', '2021-10-29 12:01:35'),
('991df68beeaf9ccfcd4aea3154c823c9a363117a92d54234970f851ff92c8a5fc74db852f15f2ad1', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:21:23', '2021-01-03 14:21:23', '2022-01-03 15:21:23'),
('993e35f62b5be684ebc8ad8bd19a2e66253c32de01b2cb328fd64c7881c32d9a033da50d31f421e7', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:40:04', '2020-10-17 11:40:04', '2021-10-17 13:40:04'),
('9946f0415983ed69857ad23d916fe1f080085c63a32a0d9425224a9f27f50a835a95c9549fc70d36', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:10:16', '2020-10-23 13:10:16', '2021-10-23 15:10:16'),
('994d88a9a655af581e5f9df4c6618600c564008c88dd46c1dfa423e272b96c420eb1693baec9fc7d', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:46:13', '2020-10-23 15:46:13', '2021-10-23 17:46:13'),
('995e5123f2e75a2619101e44ae90688e1217963ca0f45ee1342cafd2e3eb1bb15ad95b70ed4de5fc', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:29:25', '2020-10-17 10:29:25', '2021-10-17 12:29:25'),
('9974d80596f49c5fffaeab884526287a55c752a0919c7e4dfb6d3c46f63e04aa20e9792d38c1c1a3', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:50:50', '2020-10-31 10:50:50', '2021-10-31 11:50:50'),
('998090ccc88df998a0938c9da22025a17f4c5f11e6523a3c5e68bbaea812eb1ff11fd9b20404f565', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:50:03', '2020-11-14 15:50:03', '2021-11-14 16:50:03'),
('998840722595b482e2f86b46b9a40914d4dc81012b425dbc295af93cc5ceb86248e75863c16fdb39', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:11:10', '2020-11-01 11:11:10', '2021-11-01 12:11:10'),
('999215043c24bd17049955e569628471a93b098f2e88597032addc8337a63ad10247204018f78e62', 27, 1, 'authToken', '[]', 0, '2020-11-11 17:02:02', '2020-11-11 17:02:02', '2021-11-11 18:02:02'),
('99981cc920568f48b4eef44880c6c290c31cff898896657b49180440cad1f002e65f314d2e59c1ee', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:33:51', '2020-10-11 11:33:51', '2021-10-11 13:33:51'),
('99de0c3700375c0f898a3875099d39d4667e97d5e460326a0bc664d99d55edd3458e3f7ff55c43b6', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:40:11', '2020-10-13 08:40:11', '2021-10-13 10:40:11'),
('99e4a6bafd8666438a64f8b6da254c9099ad96f0a4289b1af61925413dd585995b89d21a8328d00a', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:51:50', '2020-11-19 12:51:50', '2021-11-19 13:51:50'),
('9a06ef0cf243bdc0fe2355cd6bde35f822a681f23e598713af0cb9cec69d74b66362ff7db2058217', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:14:43', '2020-10-23 17:14:43', '2021-10-23 19:14:43'),
('9a329bb8161fda4f819038ca67bcbbb8766e0cbf57f411ff66b01ec9b9be1182a17b1a8f882b7154', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:23:55', '2020-10-17 09:23:55', '2021-10-17 11:23:55'),
('9a34d22b18811ad8528275168f9143b8b87667a425e9df57db9743051b83e4a29de141860308a7f7', 27, 1, 'authToken', '[]', 0, '2021-01-27 18:35:55', '2021-01-27 18:35:55', '2022-01-27 19:35:55'),
('9a49840a04d4dfb79251ac233160bc1d8d14f32c67dc7e8801ed18a22eeb1f09b77f32b6bab97eda', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:28:30', '2021-01-06 18:28:30', '2022-01-06 19:28:30'),
('9a61f9beae9301d957ad8e20521ac9e99a845cafc829636b2adcf9980f5c179d454c99b497214d9f', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:56:06', '2020-10-23 17:56:06', '2021-10-23 19:56:06'),
('9a6d5b7c7afd0a720787701786a7d11d29bd1b2605f356a5b29ed6d38e45516381cc6397e48e72b3', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:16:16', '2021-03-27 13:16:16', '2022-03-27 14:16:16'),
('9a704a421439067166a391aeeb51b25a0d65b537435fdea24428a57326687cc351074aca0258180f', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:14:29', '2020-10-25 12:14:29', '2021-10-25 13:14:29'),
('9a820a57f433caeaf1a8b65d47c6bc1658babfe3bdcf66b17872acd30885f4eb98c58bc5e191d8d8', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:16:45', '2020-10-18 09:16:45', '2021-10-18 11:16:45'),
('9a8fac07dba3b5b0954c2a1b5ab29f736b812ec246d90ded97882dbbf06b97be8d45604122c72bcc', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:11:53', '2020-10-17 12:11:53', '2021-10-17 14:11:53'),
('9ab2c1020c704cbe7a73905d34d6f8492ddc1e7cdfdba1f773f7078686ab13d7bff391240bb529e6', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:53:29', '2021-02-07 14:53:29', '2022-02-07 15:53:29'),
('9ab86c35e5391854bdb53347ecb82c7a2a9a8690652f3bc5d49aef4dbd536900dcd29607ad748a65', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:25:56', '2020-10-18 09:25:56', '2021-10-18 11:25:56'),
('9abb17f72fa0ca3a2307813755489d3a9b0a1eadf1536aa9ae702243ee1d8edbd1754b0bf68ac950', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:36:50', '2021-01-06 12:36:50', '2022-01-06 13:36:50'),
('9ac2651a6b2caf72077ec7542488d43befd69aca6df66fbd2d5fdf335d64d29294ac3e1abc180bea', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:16:06', '2020-11-19 12:16:06', '2021-11-19 13:16:06'),
('9ac5160b2dd1a7554bebad01ce41384296859f1050dad3e51c766e60654cd80090c275f1ca637684', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:35:34', '2020-10-17 12:35:34', '2021-10-17 14:35:34'),
('9ad0b7ec39460b341ae84f0eea3eedff21ff94e27d027b3822e591958ac763ab977f7e1cf47c5202', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:09:08', '2020-10-18 12:09:08', '2021-10-18 14:09:08'),
('9adac5f3da695813cc1405a43cd75219066a60dc7f992d9b568c34e8a78f9d8adb906ac56c158155', 27, 1, 'authToken', '[]', 0, '2021-01-09 10:22:42', '2021-01-09 10:22:42', '2022-01-09 11:22:42'),
('9ae0e14c39c6ae1468bd354de362c89a59c65dfc840523349db7fc8ac425f6c97422a820c13fee3f', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:19:49', '2021-02-07 13:19:49', '2022-02-07 14:19:49'),
('9ae1dae5e0eab955c3af93a5d219fd2fd527ed96cddd92767eea0a421df1f3e1bddf9e6dce5380d8', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:47:42', '2021-01-07 12:47:42', '2022-01-07 13:47:42'),
('9b0420b05e6d4a8b942f58b40b4873adcd010377b23c871c15e8d317e9dc41ccdeaae516ea8e4991', 36, 1, 'authToken', '[]', 0, '2021-01-09 13:18:54', '2021-01-09 13:18:54', '2022-01-09 14:18:54'),
('9b273f2d2ccba3d43e72e9827d5e1c713c417338458c979e055d4bbbbe33584a63d669ae84bb4ea9', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:03:47', '2020-10-23 13:03:47', '2021-10-23 15:03:47'),
('9b454328b5186f770e75322d5a0088f7997ca224db01444d686b0850cd9fae3472e6f8ff091e5fe0', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:18:29', '2020-10-25 13:18:29', '2021-10-25 14:18:29'),
('9b5873a665398c73eaee5b7bee35cf95ab15e662d98a179e1ac8194b7900dff88c8fe0f8ed935b0e', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:57:26', '2020-11-19 11:57:26', '2021-11-19 12:57:26'),
('9b6556808186f52309faecf971d15e676c9dc78aac8868b32471ed9162e9b31249eb909b8e607ebd', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:54:41', '2021-01-07 15:54:41', '2022-01-07 16:54:41'),
('9b7d8dda7ec3ef237286358f59bcb2e4a7bf67edaec5eb021409cf71b87181a95d8bced8c3793ed0', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:55:02', '2020-10-23 11:55:02', '2021-10-23 13:55:02'),
('9bcfeb688a6308e37513cf37afd3acb4d6ccaa7ccdeeeddafdc4913086e81a4775d895b7cc2f5893', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:56:51', '2020-12-31 11:56:51', '2021-12-31 12:56:51'),
('9bd1ce77209d9072f0864ff85d8b5bf34d5c765278e6db0fd4bde9a8bbd7eb1f6629bdf270e35980', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:21:43', '2021-01-03 13:21:43', '2022-01-03 14:21:43'),
('9bdea6a1440229e6969ec53b15a1aaefd5223b603bf23bd697d3dc5f9bf9f5b656bd52ad5e9d203b', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:43:47', '2021-01-01 11:43:47', '2022-01-01 12:43:47'),
('9be3e80da84a4585c2f1178ced7be29b19279c8dda61b796f9d803a947e6ed20cc636e029bf52599', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:45:45', '2020-10-03 13:45:45', '2021-10-03 15:45:45'),
('9be8a6634586f92aade5b41cfefc7a0da27e42f0bfc9a0db8e6d2c9116de52473224528826e21da9', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:43:14', '2020-10-31 14:43:14', '2021-10-31 15:43:14'),
('9bed465ee44d112faa55d36470aa0f500a81a862586644d16dc6d971a2fc49e61dd8bbf2b63a6821', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:57:50', '2020-10-17 13:57:50', '2021-10-17 15:57:50'),
('9c11a9c80ef64f478410b9361c3b574665e8ddbd1a741e432bed46e8338d628026109e3dd46190bf', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:25:20', '2020-10-19 11:25:20', '2021-10-19 13:25:20'),
('9c3eb7fb66598b3e31a81ecc0a46ca5853152dec6b808e755e5f25c67f76b52e9163e058e527b599', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:20:31', '2020-11-01 13:20:31', '2021-11-01 14:20:31'),
('9c605b560b503898ae31dc93f4cfc751308944da8c975c37a349ccf7050dc86487246edf5014f243', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:32:00', '2020-10-31 09:32:00', '2021-10-31 10:32:00'),
('9c7e38aa7ebc051cba63653dae006fc6600b0211e006b1df61afc5a8727cfd408626e6d8914106d2', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:35:24', '2020-11-19 12:35:24', '2021-11-19 13:35:24'),
('9c95cfdfe6184575b667c535b5affc3510684ffa49a7fb8c11f9a34f38e9b2706fa4ad983705b84f', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:01:21', '2020-10-11 10:01:21', '2021-10-11 12:01:21'),
('9cb7d6e2e1cfccf186a60d945ec7277f74de124dee6f4ef6376e4e791f3828a2912014b6a41ea34c', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:19:05', '2020-11-22 15:19:05', '2021-11-22 16:19:05'),
('9cc6c130a6d46135a6b3a44a915d800cf66e16601048c11f54626272f70f768266875d29d55be20a', 36, 1, 'authToken', '[]', 0, '2021-01-07 11:09:55', '2021-01-07 11:09:55', '2022-01-07 12:09:55'),
('9ccc8fa0b634127a3f3943e29257438740759a992dc0b128a65017ef396ca61d05c00eb449998ce8', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:51:18', '2020-10-23 17:51:18', '2021-10-23 19:51:18'),
('9cd42c0ca464997eba1687dc4d4b0ad81e611cd77c23b9ebed5fa93b32eec81eca8e61944f183d18', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:42:25', '2020-11-19 09:42:25', '2021-11-19 10:42:25'),
('9cda53387b58913f8d6c23484e5e1d5fb667d13f4c64973f7cf9312350c058a0f6d4aaff44c93afd', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:01:50', '2021-01-02 13:01:50', '2022-01-02 14:01:50'),
('9cde01287e03d70f66bca5193b942be716e25e54568e0483078c9189781e1204840643372a87720b', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:59:41', '2020-12-28 10:59:41', '2021-12-28 11:59:41'),
('9d06b7c2c4b637a9cf20d905ed8dc8df825af6cca074dee3a327ad714f6cc95efa5abb91f77826c2', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:29:34', '2020-10-28 17:29:34', '2021-10-28 18:29:34'),
('9d07bd1502e3dee0e89561cbf1701dc9c8b9d109a37f8d69995e988776619ec34dc73517e960f9a2', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:16:06', '2020-10-29 14:16:06', '2021-10-29 15:16:06'),
('9d44e5f2aed666dab6d83f995e1060352337b4eacbbcd677345b80634916f53af0568d2da268fdb8', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:34:14', '2020-11-01 17:34:14', '2021-11-01 18:34:14'),
('9d62a14992ccdf2db8ad00a85c0a4f02b40aaa3e3ec77b6c7f8132b5020104750c4f30f302299ba1', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:44:23', '2020-10-15 11:44:23', '2021-10-15 13:44:23'),
('9d65789d62065b556086ead2e77971846f2608e55c55a3b807d31a643bf89964b57ed6570273932d', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:57:49', '2020-10-05 16:57:49', '2021-10-05 18:57:49'),
('9d7a7c513345157f993773537b3a013e84fa1e7b555eb5a678289c843ecb398a82e24939137425e1', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:40:16', '2021-01-02 10:40:16', '2022-01-02 11:40:16'),
('9d9269ef306c26ebd3a1bc41a6538486653230b74405988f1c276b4c7fcecbbb503b2c9c4385dc34', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:46:31', '2020-10-13 09:46:31', '2021-10-13 11:46:31'),
('9d936bb370220db6f09746d8001a20673985cbbbcab2b2ab9dd635894adddfbd9bcef1702f8ffe89', 27, 1, 'authToken', '[]', 0, '2021-01-26 16:31:07', '2021-01-26 16:31:07', '2022-01-26 17:31:07'),
('9db191624327e10baadbf922a3a681bdc7ce1f8ee7639df198fa65b93f361349c190697a69ee8133', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:25:12', '2020-10-18 08:25:12', '2021-10-18 10:25:12'),
('9db2da56ddc4ad965d33849d3e804aec204e5e14642d5da39ed2da8fdc7c900deb83c228af3ece05', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:55:03', '2021-01-06 13:55:03', '2022-01-06 14:55:03'),
('9dbc76b930b89f2f49fe98cded78cc2703ef748351c5aba4b33b3d57c25c570f390f124a863f128c', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:00:01', '2021-01-07 13:00:01', '2022-01-07 14:00:01'),
('9dbce13c7f1fc8dff9526a12aaa40ef27218f4668031e5de7b88403aef549fd24ce66998f41af90c', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:06:02', '2020-10-31 11:06:02', '2021-10-31 12:06:02'),
('9dbfa5d4be8684956fa3c18a67354fd5a25ac82cea945673e4d81d8ab6ce2011d4c43a6b5ab2bcc1', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:34:41', '2020-10-13 10:34:41', '2021-10-13 12:34:41'),
('9de2a8894aa775a5adcfd24a67efcc84605d5076e72232f89483f98c3b7237b0d2be09be9e6f7e1b', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:18:45', '2020-11-05 16:18:45', '2021-11-05 17:18:45'),
('9e0aaeff7bd9dc62c2508dff75d3d1f347eca2e20ffdd2c382a2dbaf5005e41456ea2d9e00ef3da5', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:00:59', '2020-11-05 16:00:59', '2021-11-05 17:00:59'),
('9e17af4474691f616fa84e13c076a9365f01d304ba4bc3db2cab65fc6b426eeab51b4181d3598960', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:43:22', '2020-10-03 11:43:22', '2021-10-03 13:43:22'),
('9e29a5b6c1b1f5a93e6eafd52cd286983b3c67f3b4efd9936e2e911358b8cb6846eeb9433cc97aa1', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:01:24', '2020-11-15 14:01:24', '2021-11-15 15:01:24');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9e2f9c624abb5b6d6bbedfd4cd261aa52cd1c81915b71e9ea6698c9fddc1af101e44444aec487c33', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:48:28', '2020-10-19 12:48:28', '2021-10-19 14:48:28'),
('9e49a0479c4236f276f356ca8b4a33945930aca5c848800ef32d6949dc6d68a90761882791ebe00d', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:20:04', '2020-11-05 17:20:04', '2021-11-05 18:20:04'),
('9e4e34852fb92bbada0f1c794a7998e9e69148c6fca4dbd6858bff1b1e69235710339853e58d62d8', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:36:36', '2021-01-06 13:36:36', '2022-01-06 14:36:36'),
('9e664aa0d803df3d2d261197195950dc3841701581818dfb3528f8086e5014049f71db347c77f035', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:30:19', '2020-10-31 14:30:19', '2021-10-31 15:30:19'),
('9e668ac5a93a0130310e1a2d87cd00aaf1051aef45cf09de0f952c77c15a844b3d54fc39e8759f7c', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:46:56', '2020-10-31 16:46:56', '2021-10-31 17:46:56'),
('9e6af5e5257ff021b80e83820cf25d07bf413f40d3be75442c7b7fc6843d1e1d8bac9260f0837d70', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:28:59', '2020-10-19 09:28:59', '2021-10-19 11:28:59'),
('9e876ea84583869fe44b8bb32ecf20a991745f13e3b779e54d44adf31f5b407cc9d2580d6d91b1ef', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:03:00', '2020-10-15 11:03:00', '2021-10-15 13:03:00'),
('9eadfac02322951909fbd31e9dbb8f57dad924e32fe0e26b64e7de3a257594a365dadeed01f0a04f', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:13:03', '2020-10-10 11:13:03', '2021-10-10 13:13:03'),
('9eb20d65fb033483bb604c81bd600a123218fe64b884fd511e0749e37bc6ace02837129ee112016f', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:11:40', '2021-03-25 18:11:40', '2022-03-25 19:11:40'),
('9eb297d6c638b1999465693cfd715ab894edd7191c192bc1aa7c7fadfa2ae54c644b52967065ea83', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:19:31', '2020-10-18 08:19:31', '2021-10-18 10:19:31'),
('9ec5652cd770faf277139891a422f1cb4562759c361122241a8bdc5d58f5ce18ee497f542fbb3b47', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:09:00', '2021-01-09 14:09:00', '2022-01-09 15:09:00'),
('9ed8351cd4d8a78827657ed33846adbfa845c8aa7085d09ed5d3ed1ae17214c70802e4160bb7b8fe', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:47:24', '2020-11-01 17:47:24', '2021-11-01 18:47:24'),
('9edaac7c37571f148695613e095a9285a5edc202bfeef9abcaee0c070ea18f499f5451999ff0ba5a', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:55:45', '2020-11-14 15:55:45', '2021-11-14 16:55:45'),
('9ede8f55d05f38263bb94d158875d5149448ae3a3daf519c67fb259df25038299c23116fc6839837', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:04:27', '2020-10-19 08:04:27', '2021-10-19 10:04:27'),
('9eebd915fd1e9e240dea261e13367bc6f5d16b55ca3139119ab4a32ec2748843cd5efebfa34f98f9', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:52:02', '2020-10-03 12:52:02', '2021-10-03 14:52:02'),
('9eee2975d89836861b67152b20837809858aaa5ee1ff43ef530f900d14d4341a1897035f6693ffad', 27, 1, 'authToken', '[]', 0, '2021-01-22 11:50:01', '2021-01-22 11:50:01', '2022-01-22 12:50:01'),
('9f21636d52d7d2feab43f98a8a79d167b736459b22a49d14baf6a388a7a86f23b71670db2420d7a1', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:06:04', '2020-10-19 14:06:04', '2021-10-19 16:06:04'),
('9f258f54e325906bd41d33caa824ed0801e20058ad115a99813bd5fc1ebe0b6908946943da00344e', 27, 1, 'authToken', '[]', 0, '2020-11-15 12:57:04', '2020-11-15 12:57:04', '2021-11-15 13:57:04'),
('9f4c31abe5361634b3346d2f3c272fc808dadd9fc4e1d2c5b3b6afe8bcdec840218528ef7d9bdc7f', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:27:53', '2020-10-03 14:27:53', '2021-10-03 16:27:53'),
('9f63af9a3ea4112504fea5328bdec1228559d703589ac4f35acec2343bdf887e2167a2be4fac3ad4', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:26:53', '2021-01-07 14:26:53', '2022-01-07 15:26:53'),
('9f65d051d206cfe883a98d02be07dc34c3eadc381d5f1a34fbf46ca3bc329d29e0a47b07143b661f', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:08:51', '2020-10-10 11:08:51', '2021-10-10 13:08:51'),
('9f75ad9dac0884e863a754e1e3d7f9b8998503fe2f01fd13a7b91f65d85a526397fada20537baa1f', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:43:20', '2020-10-17 09:43:20', '2021-10-17 11:43:20'),
('9f7e524396ac56b190a574983300f3c114c171b9caf180601ace3a06e61ab1ab356b5a26182a882e', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:43:39', '2020-10-23 12:43:39', '2021-10-23 14:43:39'),
('9f840a120e79be1822c2fd079f753d8204940eead18e67765d11a2ffb5d2d1a71db32a941906892a', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:39:33', '2020-11-14 15:39:33', '2021-11-14 16:39:33'),
('9f8ab761070036e10a5a803cd7cecae135177df27088a28cf367da9eb6e19d163083a7904319a984', 27, 1, 'authToken', '[]', 0, '2020-10-29 08:24:10', '2020-10-29 08:24:10', '2021-10-29 09:24:10'),
('9fb3d3fceabc1d6b7ab2824bdef82a6edf51c9bd88bb9095eb84ce01b2ceb434a7dad8e8d86ad3e8', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:38:31', '2020-10-23 14:38:31', '2021-10-23 16:38:31'),
('9fbc3d2e25bcd00f2c956347912048d763914da4f0e55071d2128c3ba789120950d9d567970367bd', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:19:04', '2020-12-29 10:19:04', '2021-12-29 11:19:04'),
('9fc73b82a0aa3d14a534686e64fa89c612816c6b89500bbf5bdf90cf760cb5e5efdb08aae4c9f66f', 27, 1, 'authToken', '[]', 0, '2021-01-24 12:05:16', '2021-01-24 12:05:16', '2022-01-24 13:05:16'),
('9fc9ddb086ee4abff2bfcf3b295f54b678676f831be2a08d691c9e181fba3e8e66355138cb2cbdeb', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:26:44', '2021-01-07 15:26:44', '2022-01-07 16:26:44'),
('9fcec9f6b3fcbf1726c58f082ee8ba2b8a764a342711cb09d6556fb71cfbdc78296e9f2ddf5cf6d7', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:44:14', '2020-10-20 09:44:14', '2021-10-20 11:44:14'),
('9fd29ca7285ff81e0c8fa1bde33dbb9ca99f805428f03672fd56db5b5b17426574c2615560255846', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:47:55', '2020-11-01 12:47:55', '2021-11-01 13:47:55'),
('a017e750b1932f1a3d94015f5f6c9094feb1e9893069b501e58eb1cf93d543fdb73c48e4cd366c97', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:24:45', '2020-10-17 09:24:45', '2021-10-17 11:24:45'),
('a02de14995c6ca252bda97c0cca8f49587b26d26bd82cf26e023f34309cc079b65a9a05303ed584b', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:45:08', '2020-11-19 12:45:08', '2021-11-19 13:45:08'),
('a0306b61fa93125224d8259f47de0897cdf1ffd28d1a1cc06ce2526ed6d26599d254ef02f560028f', 27, 1, 'authToken', '[]', 0, '2020-10-25 16:01:01', '2020-10-25 16:01:01', '2021-10-25 17:01:01'),
('a039d4f7edaa8b1a58dd14c36c4a8fd3d29731027c96a04d395cdd2c6466931b7d5ab4763478f28e', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:43:24', '2021-01-26 18:43:24', '2022-01-26 19:43:24'),
('a0565acd0da276ec8fd3707aaa44c4b2197a0b3efd955cbce63104b7e0b78c67c8488d4c40b0f816', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:19:10', '2021-01-01 12:19:10', '2022-01-01 13:19:10'),
('a06bce57ea8e720f47e3f6f08a0cf67dc63b8abbd11a26c4f4e4f6d8042b7829e27aa4f20675c9fa', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:27', '2020-10-05 16:54:27', '2021-10-05 18:54:27'),
('a06db80c9acb2ed94027cfc54ca0a0b48196fba430d6fb20f4a72ce4e1f7fda85023184c0c893cbc', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:03:24', '2020-10-27 13:03:24', '2021-10-27 14:03:24'),
('a0758126dd1b4905d04cc97a7083c6410e50dd8509d000242289c2df4d1826504d97a5863a4bde86', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:43:58', '2020-10-30 09:43:58', '2021-10-30 10:43:58'),
('a0856c7e16c6863178f81a0d2814726752c5e2e1dff4aa9663a95c3b1190c52f77ceba270f85130f', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:09:35', '2021-01-06 14:09:35', '2022-01-06 15:09:35'),
('a095b72dd2338665f8e342154421321514ea77b2d100de1b2b3e55957c48cacb7644641943c6bbdf', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:44:49', '2020-10-03 13:44:49', '2021-10-03 15:44:49'),
('a0c0fa0fbe7f5ed23d8e7580679444c076feec17b959c78ddf70d4cece5f314a1d2c7d24f5500bf1', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:00:25', '2020-12-04 12:00:25', '2021-12-04 13:00:25'),
('a0ce8b34918be394b01f2e2ad54cb5b41bbdf84d34d9f0224163895752ce0ba4ba7c8a81f74c0aaa', 27, 1, 'authToken', '[]', 0, '2021-01-01 15:15:32', '2021-01-01 15:15:32', '2022-01-01 16:15:32'),
('a0d5e07a16982606192e102c25720fcabd309babb9a578284957339cf6c1db96e706ab6eadf1f5b4', 27, 1, 'authToken', '[]', 0, '2021-01-17 13:39:18', '2021-01-17 13:39:18', '2022-01-17 14:39:18'),
('a0e6ab6bf0da9655046d6e9f81838c9ed53cd00236b2637242b00bcf8b34615dd0b043b087ea8e02', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:43:16', '2020-10-29 10:43:16', '2021-10-29 11:43:16'),
('a0ed0c2651f276f649c6988855765c6817a42696ceed6952e1f110430def5e72dfc36278f30b933a', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:45:40', '2020-12-06 18:45:40', '2021-12-06 19:45:40'),
('a103f0b595628f1dc72af385b43cc3d6d7fccdc337e147edcb22cd8d3659d04b06b01533680fb425', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:22:55', '2020-10-03 14:22:55', '2021-10-03 16:22:55'),
('a10448b0a2b98c8d51e17c90866b2a92c758042b864f0fa6ef8c0a7ad0f5c550ea79c162826063a0', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:09:06', '2020-10-10 11:09:06', '2021-10-10 13:09:06'),
('a107325b2db0dc410eca97d25bc5cc396329229bc14b56e56c3dd575c88a66f6c48ad8fefd3e03ac', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:43:19', '2021-01-03 12:43:19', '2022-01-03 13:43:19'),
('a10a25551a1fc189980eb78a7aee56695d05b8734cf0373141f5986067c3b25606c1cf5e1fc5a97a', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:27:52', '2021-01-29 15:27:52', '2022-01-29 16:27:52'),
('a123a96e91d4d6620424cf0beebd74c330ed1e4c9025b63a04eb5c194b9257da6ddc0ab4391a993f', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:15:10', '2021-01-07 13:15:10', '2022-01-07 14:15:10'),
('a1256b4651c994e23f996a08fe38692b6263f9c14b8794412488474658f9b75ed8c7fc078487cb38', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:13:17', '2020-10-03 14:13:17', '2021-10-03 16:13:17'),
('a145b448b79f88a0ed529d323ccb08f1366b6b7d48c4f237bcd4c127646ef5016bc47620e81453c4', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:38:35', '2020-11-01 14:38:35', '2021-11-01 15:38:35'),
('a14e09b347292241034d56d4b65a2467b8d675f4db3220c486b47f2162b841fb1a6268af07569ede', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:49:13', '2020-10-29 10:49:13', '2021-10-29 11:49:13'),
('a16c92e7d43de5e327e1692b592e7b5a67310907ce6aa1145ddc8bd95b4f538a82da56754438f38a', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:24:23', '2020-10-17 09:24:23', '2021-10-17 11:24:23'),
('a188c99cdc891327431fc2d24623c72bf95c760294695c47fa385761ed2c3214978dd0518fccefc4', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:06:28', '2021-01-03 14:06:28', '2022-01-03 15:06:28'),
('a1ae48f9885ed1efe5a6cec00a96f403596679583d5a66f5a595af086cf4339c06560ae9eddebdbe', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:48:41', '2020-11-01 14:48:41', '2021-11-01 15:48:41'),
('a1bdde47a7875148df3b285f822b83b238e9e20f9018e6e59e9eefa292f24e7ce95988d404263588', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:16:26', '2020-10-13 11:16:26', '2021-10-13 13:16:26'),
('a1c2fecedb35f80f03114f149ee273e3f452c3a64eb42a3b2159e6c4ecedf30a2c8f5113d0121bcb', 27, 1, 'authToken', '[]', 0, '2020-10-28 16:46:38', '2020-10-28 16:46:38', '2021-10-28 17:46:38'),
('a1c4eaa81ac1a0fc4f0d5d5b6145e9b0956fd094c7a50cb0079bbda99edd8fa87196b6acd78162e5', 34, 1, 'authToken', '[]', 0, '2020-09-27 11:56:58', '2020-09-27 11:56:58', '2021-09-27 13:56:58'),
('a1ce9b4ad143a06ed6a921a2c64b956a2f7f265e9f81b9c11cd71a27665e7cf1ed3b8c0945317b9a', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:38:36', '2020-10-19 13:38:36', '2021-10-19 15:38:36'),
('a1d001ce1785d2a915f13f6fd46fada2b966ebd34aeffc8747c47ef182f8af11f82475efa5bf95b1', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:40:00', '2020-11-14 15:40:00', '2021-11-14 16:40:00'),
('a1f0ee05361cd7cef63da5c1e1d2c4508a3c73ae927f15d646933bf8789793c5d242458a0b7a6ece', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:17:42', '2020-10-23 09:17:42', '2021-10-23 11:17:42'),
('a1f57c173fc866e2b96729fcc6ac729afeab9778201a5bc75330ae698be37f3af48d6818ebcff3bf', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:01:27', '2021-01-24 14:01:27', '2022-01-24 15:01:27'),
('a2120fb03e7131939a1e0c89d34dfdd96af4b6437b364f633475dbedf2902b12c995f1fe5c6dbf88', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:40:26', '2020-10-10 10:40:26', '2021-10-10 12:40:26'),
('a21f37d2e432bcc7fd88e1b3961423693a4aa960a725c320cba2a503891a75abd1e3db322e0ddd52', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:31:55', '2020-10-19 09:31:55', '2021-10-19 11:31:55'),
('a2293540c02cb7738da184a0c88b9b8d22596fec0bbc987a8c1b7f975800e9102517a1f5fed93801', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:02:38', '2021-01-26 17:02:38', '2022-01-26 18:02:38'),
('a247da759d8879b3998c8af4e0e51aceaf05c4a2e4d6ba3b00f2d89df12864b6837684eaa5973c77', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:28:43', '2020-12-06 10:28:43', '2021-12-06 11:28:43'),
('a26786d1455791f195da5bd6113626803828e5dcbcb8950918149d031fd5af58a72a09056c17c2ed', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:11:29', '2020-09-27 10:11:29', '2021-09-27 12:11:29'),
('a2717f6b27273ab55c83f0f354eb02d478f78c13ae798a0cf0e952b2fe7813ee6fa7a9edda8579fa', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:11:25', '2020-12-06 10:11:25', '2021-12-06 11:11:25'),
('a273c1aa178ee540841b27d8bcd125ea9be44b8d2b6ecf7d0d9beb8f3ea5350d31a14318a32812d9', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:15:26', '2021-03-27 13:15:26', '2022-03-27 14:15:26'),
('a27d6b9132bf89ffe11c9e08694bae939a084650553ae469885fef61368fbc8935bdc3213d89d1a9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:03:00', '2020-11-01 17:03:00', '2021-11-01 18:03:00'),
('a284b525970bc2b769ff9ccc1f34fd505c3f698075c56a464220658fdf0a3e573a6f6dd2ef4f3e1c', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:24:54', '2020-12-28 10:24:54', '2021-12-28 11:24:54'),
('a28ad47b9f1c693eea13c5c0de863bdf20ee7f38d2f957377968f76f6e67b446df84fdbc61b7097e', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:36:45', '2020-12-31 13:36:45', '2021-12-31 14:36:45'),
('a2a7d21caa510883f2f20f0d28f42bdc26cd21c83b7d221e3a54e04baf4c7a3e9638407cfa817d00', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:54:29', '2020-11-01 16:54:29', '2021-11-01 17:54:29'),
('a2c8b506732592b574345de4ed4697303d133abb45d1922dfcbc7a5b90f954dda59f1afa7efe86d7', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:32:29', '2020-10-19 08:32:29', '2021-10-19 10:32:29'),
('a2d664158237c954fb5fbf7799b1578054f056ad0f3574ffc9a67b3839b3b52572a1a80db99b1f53', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:01:46', '2021-03-25 18:01:46', '2022-03-25 19:01:46'),
('a2e67795aeafb5f8fb60579d7197f37338a030ec472d1d78dea5f294aa89dc0d4ebb92f3396d6175', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:43:30', '2020-10-15 11:43:30', '2021-10-15 13:43:30'),
('a2f1f90d0c3efee8bb061cf3558df32504ae4f8225d4bb5b48f449e50515f05df65bd1f1f790f931', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:44:35', '2020-11-05 16:44:35', '2021-11-05 17:44:35'),
('a30e8f3bf6b136da09b770ebcd69aea359e6481dd4a3642eb3f335cd1286f2a9d858632f119bab16', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:05:28', '2020-10-18 09:05:28', '2021-10-18 11:05:28'),
('a30eb88e37417e7c4609b281e01a6757da46545dd8946ae808a18380e942bd1f89c2cc4129fbdfca', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:39:42', '2020-10-27 17:39:42', '2021-10-27 18:39:42'),
('a323e6c0bb660c8bf2e8d3ab110925149f9d3f214ce5d4af8f7edf9a983051fd429d0876f8f960af', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:37:23', '2020-11-01 16:37:23', '2021-11-01 17:37:23'),
('a340d6ad8c93c30ff9c42103c470dd6acb937db11873511b32fa69f69528e8b1a7422bca423d4739', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:22:01', '2020-12-29 12:22:01', '2021-12-29 13:22:01'),
('a34650db43e381951b3b83ae9b41098fd6916062cbd48e3de49a53a9aee3e7e8f8d4a6d8fc3e4317', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:56:35', '2020-10-31 10:56:35', '2021-10-31 11:56:35'),
('a3487bef128d630d3e659ef42efde30c787fd73f900a2607fba86f341b9e7b5ab9454c239b7a313d', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:44:03', '2020-11-14 12:44:03', '2021-11-14 13:44:03'),
('a360454401ccda5b6d2336f955de078022dffe9092dfe7907be52d253673f474aeec14849b110806', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:17:34', '2021-01-07 13:17:34', '2022-01-07 14:17:34'),
('a36dee4184dbd9638de883581b10e4ddef0ab686d6aacdd157561b1f0dfa2ab5d494aa043c6dce6a', 27, 1, 'authToken', '[]', 0, '2021-02-01 16:31:03', '2021-02-01 16:31:03', '2022-02-01 17:31:03'),
('a37973bfa50e00eccdde4a490624379c314aa4358d675f487723f5d0fc67d911cd77340b2bded7ee', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:48:45', '2020-10-20 09:48:45', '2021-10-20 11:48:45'),
('a37b0f4b01669ead012a986caaf087d3d4865bedf8d0bcb2c83764a17afadff1e1cb3b612f221f3a', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:51:53', '2020-11-14 15:51:53', '2021-11-14 16:51:53'),
('a3b7baa1bfdf10f525647a52b3d0284c02d5ac58d07fa96e1b9011440f11ba9e01f9e048d3537e41', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:16:41', '2021-01-30 11:16:41', '2022-01-30 12:16:41'),
('a3bd7db97c97c3a2b938e334b10a9d66cc52560cae749c2ff240d96904302a5fa193aa34fe386e36', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:51:19', '2020-10-20 09:51:19', '2021-10-20 11:51:19'),
('a3c6e4ba6ff895d86dac62b8a1057a4f5f4d9b1035bcd53e6f878ee6eafdb92f92cd286cc9673ff2', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:09:14', '2020-10-10 11:09:14', '2021-10-10 13:09:14'),
('a3df029a446573ed465355dfa8785c61e5b3925e6f17a6aa0d495a6d1a4350ee0b023f84ca71d076', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:19:45', '2020-10-13 11:19:45', '2021-10-13 13:19:45'),
('a3e137fe86dfbf302ffdcb410813ad62eaa419c87f2fd3b6bc52c78060d2bb1acb6ca8afcd25f9ca', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:34:50', '2020-11-19 11:34:50', '2021-11-19 12:34:50'),
('a415f3977508a31cd14891406c3aef50b73834a94fd119ef29da4e7de01f8d685031a09449b553ac', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:18:52', '2021-01-28 09:18:52', '2022-01-28 10:18:52'),
('a41ccb7c475c92f5f645ed3a328386675a517d6f33dd7c9a110a1e9ab270f90d56ec0339a3701057', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:23:54', '2020-10-25 12:23:54', '2021-10-25 13:23:54'),
('a421e27f48a6d79ec9a52f34d42d5b72e82ed1654a2785ebebc2aa8a15dfb2f3aa4d65c13913d555', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:17:41', '2020-12-28 10:17:41', '2021-12-28 11:17:41'),
('a425747cd081d8dfcfd008966040c37057aa96cf54b7c9133293f512f8a74ed32e4eb3f8fae30b49', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:41:53', '2020-11-05 14:41:53', '2021-11-05 15:41:53'),
('a457a81bc9fd112f3a4c390e424f060ec0d671508aeafb102330444c883dbbc15a6ff0cbb5c85039', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:51:54', '2021-01-01 14:51:54', '2022-01-01 15:51:54'),
('a47b22dc6467526d3b5ffac8b5b8888106b0ee9a8487b0d8781d158dcb2ddbf13aa9c4bfc2e34143', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:42:23', '2020-10-03 11:42:23', '2021-10-03 13:42:23'),
('a48547e4d992149da017d97b4db061bff0bbf7d78bb2e4fffe3dcd66905085ff659c94c010285a27', 27, 1, 'authToken', '[]', 0, '2021-01-23 09:47:00', '2021-01-23 09:47:00', '2022-01-23 10:47:00'),
('a48f50e67625aec5e1b32a50aa2f62252e46f1055c4d694238ee9b131e367772b4bff15bb527cfcb', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:13:27', '2020-10-27 11:13:27', '2021-10-27 12:13:27'),
('a4952fefe273778bbbc199ff126f6c2e947ac120d50f68fef436c40fade41bcd7b35e384ce57c24e', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:53:35', '2020-11-19 10:53:35', '2021-11-19 11:53:35'),
('a4a127074e98d29c927bb3002dc1be73500145cf9e16050eeefd01a123cbcc04cbd370f25da98872', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:53:16', '2021-01-10 12:53:16', '2022-01-10 13:53:16'),
('a4a87a1055b8a3c591b2293b6abe115a7fe201eb7cf88a73daa96a38a3f0f6846a91bc9b53ac1df1', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:51:17', '2021-01-06 18:51:17', '2022-01-06 19:51:17'),
('a4a88fbe341241e1b0ee2b670b00a281e05418e4ef87b558e01c46b6600f9979917213493453ab7e', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:38:08', '2020-10-29 07:38:08', '2021-10-29 08:38:08'),
('a4ce22148e7a346124bdcd1565835eb7dc30edc6e868e20ca210397acbe4293f785499ce69b8c97d', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:10:08', '2020-12-06 11:10:08', '2021-12-06 12:10:08'),
('a51831b945b98db4cf9eefd663ce43476350b997311bafd3a5f706cfc306f7be75df64e92618874c', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:16:42', '2020-12-04 12:16:42', '2021-12-04 13:16:42'),
('a51c93de67fc3778920283adb4e2e164b8131c07998011f85af796fa141b7acdd0b20ff3f23030b0', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:21:08', '2020-10-25 13:21:08', '2021-10-25 14:21:08'),
('a52172506b39ccb1f68f7f829fd57a9f495a6c1d05a2505cec3c964245a676d43cd442c71c64641a', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:10:39', '2020-10-23 13:10:39', '2021-10-23 15:10:39'),
('a524556ca2f62a6b82c1c1c31ff58388f12f80b7ea63332a66674b198ef0c459a7f6ed92213216d1', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:31:20', '2020-11-22 13:31:20', '2021-11-22 14:31:20'),
('a526fde826ba0505a6a8960d95baa2788f750c0c5961c43c0e078fa3cc54ded5056a81b174026eba', 27, 1, 'authToken', '[]', 0, '2021-01-29 11:04:16', '2021-01-29 11:04:16', '2022-01-29 12:04:16'),
('a534c26aa28f23ebbe8faed0aa7c6786a69a6e52de39803c7930918df5ff35507cf1b4c3d084e87b', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:34:50', '2020-12-31 11:34:50', '2021-12-31 12:34:50'),
('a542782f76b744929bb655edbdbd6e6b432f62017a86a78cd19bccc4e1005097a641f08391c7b5ff', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:34:02', '2021-01-30 11:34:02', '2022-01-30 12:34:02'),
('a543627f86433baf97e00fcb56d49bd9267df94e2914e9de556f5f597f93eab2eb5fd87360ec5a69', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:22:57', '2020-10-11 11:22:57', '2021-10-11 13:22:57'),
('a5610f5e6c50408cd2f58626e8a27f75b2e1e9b63eb146831f787be46c7b284f9d506728f208be1e', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:48:35', '2020-10-20 08:48:35', '2021-10-20 10:48:35'),
('a56c63ba6238829755cd9a5a9594d665759143e5a0907c5ff64ede6dc2ef4fb8fdcd16a72a820ce1', 27, 1, 'authToken', '[]', 0, '2021-01-30 14:25:57', '2021-01-30 14:25:57', '2022-01-30 15:25:57'),
('a594f65bc61c44472d8e2a54ca59ea26182891f4288b83ddaa4eb6d00fc95f6d7ae815071b9aa815', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:40:39', '2020-10-15 10:40:39', '2021-10-15 12:40:39'),
('a5951ffb582a7f96ff8c70267ff0ae683e9a1d894c9266f1d4f09277e0c19afbd07c3cc0601077cf', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:50:15', '2020-10-31 10:50:15', '2021-10-31 11:50:15'),
('a595df10c3fddc4e9f08b4cf2107b72cd5510e80c075e43814ccbba6bc3c530d1a284ab6b51cd26d', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:42:57', '2020-10-03 11:42:57', '2021-10-03 13:42:57'),
('a5c0e36acfc473b96d38bbe6ba2e4cf434b6317eb08ebf48d1c0de6145b56d5774ca84cb7c5f38ae', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:24:11', '2021-01-01 12:24:11', '2022-01-01 13:24:11'),
('a5c351035968bdc23509958216f7f7382550e2feb680dbce2fc92d0d6915e0171ae202a9a54703a3', 27, 1, 'authToken', '[]', 0, '2021-01-10 10:33:50', '2021-01-10 10:33:50', '2022-01-10 11:33:50'),
('a5d80b4789eee256024c987d4b768bacabd8328e8d1db22f8fc0f0d29482b723cdef75df5fc5ffa0', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:02:24', '2021-02-07 14:02:24', '2022-02-07 15:02:24'),
('a5dc065bae9b13f0052dcfbed2843e91f42ce0c2b8bf1c7c607e65134cc07e71dcb0a03f6f9d8870', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:00:22', '2020-11-14 16:00:22', '2021-11-14 17:00:22'),
('a5f823d0729af0d24ac33012d4aba98003b6d5b84ddaeabab95c2471b615f3317b81b8e60c0dc1b0', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:18:32', '2020-11-05 17:18:32', '2021-11-05 18:18:32'),
('a5fd802e5a84969c27d6c09121c4ffa4707e3f891dfe7fd7782e753016d996e3dfbc8b76de581655', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:22:31', '2021-01-06 16:22:31', '2022-01-06 17:22:31'),
('a5ff2266970481085fec97557fbc9e2fd1e7e9d1b05e2b7faafa54747fbcad7c2cf2b50c10f9e908', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:39:30', '2020-10-17 09:39:30', '2021-10-17 11:39:30'),
('a61a2ce10c4a0671ede4d5c123a3b3ffdf9eac7f7ab5433d45dd609c213d0e867422a370a21b29e0', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:11:15', '2020-11-01 17:11:15', '2021-11-01 18:11:15'),
('a633fc3fc0f332759dec05c797015dc91553b2004c1d18f837358a289cdf3a1b8463f400b5ac2a31', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:11:53', '2021-01-26 17:11:53', '2022-01-26 18:11:53'),
('a63cea04cb847a4853169beb44e3fd49691abe27b329086bf4dc3adba09cf07458532604880b01ee', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:28:34', '2020-10-08 15:28:34', '2021-10-08 17:28:34'),
('a6498c75295cda31845e4e51f37cba889362cb50b993d149492cdfe7d6a9905d5ffd6d2b82969776', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:52:23', '2020-11-19 11:52:23', '2021-11-19 12:52:23'),
('a65cd548b52d4f6434b97a845b567cd42fa31ace204350e824fb7996332b6e22321d61bf198fee82', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:21:19', '2020-11-01 12:21:19', '2021-11-01 13:21:19'),
('a66bf8bdfad632c29554c006084d773bcb4ca6d7c98068ffe280fb80a2f8a73bc2061bec5e0fc56d', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:56:01', '2020-11-22 14:56:01', '2021-11-22 15:56:01'),
('a66ca3707e893a349564288ee39db0259b339d7b20f0eddb261955db2811943891c64702f11a7ba7', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:23:00', '2021-01-26 18:23:00', '2022-01-26 19:23:00'),
('a6a6eedef13b5801d417191b203df40621f487818834f61763d41dab71d87817b5b7277756c10cd9', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:01:28', '2020-11-11 16:01:28', '2021-11-11 17:01:28'),
('a6b55850d19dd4cf00a1490b69574bc8cec4fcc8d87dbf9a940b9a0f284764c5da73cd0c03305c33', 27, 1, 'authToken', '[]', 0, '2021-01-29 11:50:51', '2021-01-29 11:50:51', '2022-01-29 12:50:51'),
('a6b5ca043bcdc3bda64a3aa84e24866e8504fd90fc3cff0d3b9e3a5469908b44667cfa092883bbb6', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:39:17', '2020-09-26 09:39:17', '2021-09-26 11:39:17'),
('a6cf429fb9860a5f72b3ff602d312df12e382646496d2ffec53ab166c843c1101e2272d68fc08ef8', 27, 1, 'authToken', '[]', 0, '2021-01-21 13:55:31', '2021-01-21 13:55:31', '2022-01-21 14:55:31'),
('a6db12c4235cc28b60986621e11b0ab07fb96ee14552e6616f017fd376cf3c9058dd7ae485dadd32', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:39:56', '2021-01-10 12:39:56', '2022-01-10 13:39:56'),
('a6dea2ceff1735f841bd92bfaa3158eb1a518a8bd0db3552b6a434fdbd83f7d1b8c5b8bb3f84b11e', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:34:06', '2020-10-11 11:34:06', '2021-10-11 13:34:06'),
('a6e541ae342e67fda9e57c557aca2f1cf214dbb6b77da19af705a2bbcd91396c17db593dfb660179', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:05:03', '2021-03-27 15:05:03', '2022-03-27 16:05:03'),
('a6fb62e2b748a70847dcee9b449bba14a3361c0f9d297a1702755046f4c2555d0016c161d3725bf5', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:59:02', '2020-10-03 12:59:02', '2021-10-03 14:59:02'),
('a711d25d35cf44a61355087e3ca11b257fb42d49827dae66b0d30229079b05821db9f4df1c99c1c6', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:08:59', '2020-11-12 09:08:59', '2021-11-12 10:08:59'),
('a7234d26932477582a710b9fd9622fddd72ef0534583b194887a90ec12cf4c0c2dfab9415a12027c', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:35:05', '2020-10-13 10:35:05', '2021-10-13 12:35:05'),
('a734c7223182400d55f59f7a967bce3692f08974101045c4d7475187d05af08a1470b8b2f9351ded', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:13:15', '2020-10-15 10:13:15', '2021-10-15 12:13:15'),
('a736e1eba54c18115d0b6f05c2579b8e18116fe4d813fe549b4580adaf98be927c0f1f435d6fbe04', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:48:53', '2020-10-23 11:48:53', '2021-10-23 13:48:53'),
('a73ea9b57d97b4855028591edf3254d50ecafa13ea0a464e7e044e2887b058693f7f2c8d337f10ee', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:55:02', '2020-10-31 15:55:02', '2021-10-31 16:55:02'),
('a7596cd5a4f339240815f6344951a15ebc75241d4e55f80e8b4eeb2b07144f7813f33f4d701ff594', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:05:06', '2021-01-09 15:05:06', '2022-01-09 16:05:06'),
('a77592c5f60ffad93b2f09debac0ffca7d60be289572e471176c82ee35333e2cb39688ea627a5273', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:45:00', '2021-01-06 13:45:00', '2022-01-06 14:45:00'),
('a7864077f90805e0dace602f21759290cfc161e1371488d9781b61fd4d1468580791221971390409', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:48:00', '2020-10-20 09:48:00', '2021-10-20 11:48:00'),
('a7889c07567d2bd66c70d7a1a2f706783b106ccfd0c3e91345df851295039e4d338a2360e9341a75', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:00:53', '2021-01-30 12:00:53', '2022-01-30 13:00:53'),
('a78e0cdd1bbd86131e8d20c757225f2d8b8eb2bc9ff5e88a70c5d4125cf0459430a960300e4c9d68', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:38:27', '2020-10-11 10:38:27', '2021-10-11 12:38:27'),
('a78f7a0e8444ed645264d6d5f879456f57b673d4dcfd7f44e83ac0c0a97e5adbf5d775db80787816', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:52', '2021-01-07 15:53:52', '2022-01-07 16:53:52'),
('a790890862d8d190daa6ecc77286b2b644d73769034733f02a1750cdfd00ba620e760344fb9b912a', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:21:59', '2020-10-11 10:21:59', '2021-10-11 12:21:59'),
('a79586c5b1102e852a9cdc2fb76e75bdead78f1060636876ccc0c9a05b3ca25c5ba71f2d744ff006', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:37:01', '2020-10-31 14:37:01', '2021-10-31 15:37:01'),
('a7b64de4f184f047dde68c389268565ffc190c251783ec4f3a6e6703e372e127d4f25e9d04b12aff', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:16:21', '2021-01-03 14:16:21', '2022-01-03 15:16:21'),
('a7bf8a0e143715e4098f9fca8ccb10150347db51ff0c279f97d24313a5c11d0a0b39cec2c4c04eed', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:37:07', '2020-11-12 13:37:07', '2021-11-12 14:37:07'),
('a7f6d602a5317841b485dec4f80bf75fa93f21b62688f799de396e39fb5698c5319fbd8fc48f8a68', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:59:04', '2020-10-17 08:59:04', '2021-10-17 10:59:04'),
('a7fe53ec009498a8b7c631ee9c8220fd474141b3210d457a20080cb1004f450ab66a25dfe04685fb', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:35:06', '2020-11-14 12:35:06', '2021-11-14 13:35:06'),
('a80c28e336c92ae2ad20d6639980af1cf5394d0ebccca66051b117d76b9586c4bf126cdc0a210118', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:32:32', '2020-10-19 14:32:32', '2021-10-19 16:32:32'),
('a81ad8f1d1baa7bb11e7644ee8d0b2fde5effe241c9091c192d2adc8475c7194f98e752a80f01bec', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:05:54', '2020-12-31 16:05:54', '2021-12-31 17:05:54'),
('a841777c4b46074ff93f96ae6cd9f04d5167a0e0cbe3e45a4c28e6b9e76c6afff440af9bbac6a677', 27, 1, 'authToken', '[]', 0, '2021-01-10 11:44:48', '2021-01-10 11:44:48', '2022-01-10 12:44:48'),
('a84b4031d53c32845f8acc70d292954b07c3bcdcc16f06c395d80bb43b3d842a2087b0649523b7a9', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:42:55', '2020-10-23 11:42:55', '2021-10-23 13:42:55'),
('a8822fd8e314b2be61ed43b2ee46a4d72ac0fc65ec905634522b49893beeb3a332902bd94eb1dae5', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:18:22', '2020-10-18 09:18:22', '2021-10-18 11:18:22'),
('a89c3df7d434e030fdc613324a160f0dbe77cc5d51802d80498fb8e7f626cd3b09cfbd5d591aac44', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:26:35', '2020-11-05 14:26:35', '2021-11-05 15:26:35'),
('a8b58fdc40533344d5e510035d02ff52447d803be9a8396cda1abaddf9f4c9f621b2b9fdaa70af20', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:20:11', '2021-01-09 15:20:11', '2022-01-09 16:20:11'),
('a8e9d9b79dc85c67025536944d8abaa7ac497731f0c41a30856b5dc8d256ab8207cfca5fcbe4293a', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:19:59', '2020-10-11 10:19:59', '2021-10-11 12:19:59'),
('a8ebe13492f8f6175e7ca1360b9f397591f8c1456836869ce900a13d28364355718a5427bbf22fde', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:16:58', '2021-01-01 12:16:58', '2022-01-01 13:16:58'),
('a8f96ea6323f2d66cba063bbe062e391a7cdbd74c31c0b3f18d1d84fccef5e7cc1d92fc53a19d766', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:40:45', '2020-10-31 14:40:45', '2021-10-31 15:40:45'),
('a8ff3de1f5133f88739524aca534e6a46cc16137b78308f161adf344e547f9bb1f58e70314aeaf8a', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:41:06', '2021-01-02 14:41:06', '2022-01-02 15:41:06'),
('a8fff75847f92b4ec57e4516efd671466bd01c2366a95a079f7d7394c64f8adfe867573bf630b56d', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:46:59', '2020-10-15 08:46:59', '2021-10-15 10:46:59'),
('a90a5601f28218882a78507a53eb61ec7592f0a741aac26421c1510d051284cfd68e0cba6fd52672', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:35:00', '2020-10-19 07:35:00', '2021-10-19 09:35:00'),
('a913a53b3ab3d0ef47ff486f9b6d1e547ac36065c4051617f177e4be2b954930ba0045497689f753', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:42:31', '2020-09-27 09:42:31', '2021-09-27 11:42:31'),
('a931cb234800c2840f27c84ac9c4180a14bba2f13b4b0494a27d346bee318ad05350ad56a2e4f605', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:13:37', '2020-10-23 15:13:37', '2021-10-23 17:13:37'),
('a9331b8febcedb59e7b47f6324351ae6c531853d3eee927e0cfb91d18422fd6032f4b8db01fbef16', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:06:10', '2020-11-19 12:06:10', '2021-11-19 13:06:10'),
('a9390ad81bda9964072ba2ab06fa25b4647cd845b563cf71fe83926551e0075cc474eb900237154e', 27, 1, 'authToken', '[]', 0, '2021-01-09 11:23:10', '2021-01-09 11:23:10', '2022-01-09 12:23:10'),
('a94a21c731dd131344b9f6b419c03551a7163c2ac84b0e2d2b872db23b69a5cc6b72968ad356d372', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:39:09', '2020-11-05 14:39:09', '2021-11-05 15:39:09'),
('a9545f2a3ad646ed584907c6902a0bb1fbce3c50842863dc293662b9df41987852f4c6b23d622c8b', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:13:10', '2020-10-18 09:13:10', '2021-10-18 11:13:10'),
('a95ba7b934f57bb5e544695a0ceb2375f040433fe4644f770957f61e3f27b5b680d3b128677c850c', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:40:33', '2020-11-22 12:40:33', '2021-11-22 13:40:33'),
('a960525d42f594fdb76e6266490c464acba996d19c6e0e56f5e1d01f936d59e35c2b701d760c92f6', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:19:21', '2020-10-10 13:19:21', '2021-10-10 15:19:21'),
('a9753b03eab9a58e40b8cb31236093c16eebfde85c9c466d139c24f9b38ed1cb00eb378a22658b6a', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:53:43', '2020-11-22 12:53:43', '2021-11-22 13:53:43'),
('a97fb7977a811bb492b64a0be1b9668b96f1abb02f1ce983cd86c5510ecec9a7dec837c1b7f26221', 27, 1, 'authToken', '[]', 0, '2020-12-06 09:54:38', '2020-12-06 09:54:38', '2021-12-06 10:54:38'),
('a9931bf87b7d72288abff929064a501e689f05bd196c5bede1be26ba4676991f08e46eead6c5f06b', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:46:51', '2021-01-07 14:46:51', '2022-01-07 15:46:51'),
('a995f74bfcdb7f72a6fd2619aba731e52ae274dfa9dd0ac0f0779b3aaca91c4ef77dcd32c1d966fd', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:43:48', '2020-10-15 12:43:48', '2021-10-15 14:43:48'),
('a99b82f3160cce645a9d5a45b34b4d44f63986a38cc293638350a8315c9a69e45879deb00a55050c', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:55:31', '2020-12-31 11:55:31', '2021-12-31 12:55:31'),
('a9a747226a4f81af896900a58a2c505b9dc8526eae067278201e1f434a90acf791a7d3d735e4575c', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:05:24', '2020-12-06 10:05:24', '2021-12-06 11:05:24'),
('a9c5d3c5633b73854e6197e1161bccf624c817623ffa4da592eebbb4040be8753192d2f38b8a8d81', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:45:13', '2020-11-22 12:45:13', '2021-11-22 13:45:13'),
('a9f035e2d68a13dafa88ab1f0290ec5ee91f883d9c16f379d710d4cc2feff607f239b78d42e377c3', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:10:32', '2020-10-18 12:10:32', '2021-10-18 14:10:32'),
('aa117886ba3d803c2b27b657f43acb01005074364ec35097b533ab44f1a26731b13a6a521b5979e0', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:12:16', '2020-10-25 12:12:16', '2021-10-25 13:12:16'),
('aa1677be4f81c32fd28817aa82bb36e2324d6d162e685948642c7317ed600c24877b321093ab0e4b', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:56:34', '2020-10-19 12:56:34', '2021-10-19 14:56:34'),
('aa1987adcbc427eb066765c51abdfd8176e9b6a4aba4cf3fc0989d846b317a9b425777fe1e8f2af3', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:53:20', '2021-01-01 12:53:20', '2022-01-01 13:53:20'),
('aa391964ed5a95b74512cc15c3c61c5873341cab76809d1e975f6d2c8e78e0bc4c2a54f6f282d870', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:42:49', '2020-11-01 17:42:49', '2021-11-01 18:42:49'),
('aa3cb88680c4f6a6b72b023d6ae668994c734ead63eee50a6818310722b4f8eb5810d948a356b1ac', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:42:49', '2020-10-17 12:42:49', '2021-10-17 14:42:49'),
('aa3d7a4fadf107bbf60bc263cd137d9be061fcb39e8c9e6a875cf7b685bb01d9c6846efd8d85c66d', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:42:15', '2021-01-02 13:42:15', '2022-01-02 14:42:15'),
('aa3fa6b01b2d04a401b91ec8be4ef33471ee015cf7a7f12d07f1d8dac53f7bd42aa85e967fcc7e78', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:23:30', '2020-12-28 11:23:30', '2021-12-28 12:23:30'),
('aa4cf7aa268f0e9d49c1b94dcb1e6c4eaa0f40b50562a2242daa0026939293ec5f035c01407c7d5c', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:10:22', '2020-10-03 13:10:22', '2021-10-03 15:10:22'),
('aa711ff317e4fe2e0a9adb1a79eb65ff2f6ca5c94629dd7eebeccc3466c6ab5a8193f43e0fbc93ab', 27, 1, 'authToken', '[]', 0, '2020-12-06 09:54:18', '2020-12-06 09:54:18', '2021-12-06 10:54:18'),
('aa80392bc885506b2cfde6275db52682a863eece5994b22218750ebef408e7135268e47fd5e844d9', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:24:47', '2020-10-28 17:24:47', '2021-10-28 18:24:47'),
('aaa6e1c5a955b103a614895f626edb76c5eddec10c4a34efeede101d811df788dab96218621cc395', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:20:56', '2020-11-01 17:20:56', '2021-11-01 18:20:56'),
('aab49c7ad7dd37b5428b198371e79a25619834bec56dd45489406fb4dc892711c2a494d51cf6b7bd', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:29:26', '2020-10-19 14:29:26', '2021-10-19 16:29:26'),
('aaf4c09a8a1803bc1f53386be94c01c914c5aa5a211f806856e44c0c0885922c68b7c08562a718d9', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:54:59', '2021-01-01 12:54:59', '2022-01-01 13:54:59'),
('aaf665fbf2bff547cc6655ffe9cf5f2efa8e3a2742db83aa55848d4402c8d24c53e011b5be674a46', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:56:13', '2020-10-31 11:56:13', '2021-10-31 12:56:13'),
('aafba5951a3836009922c14f7f44e7dc9e103c3a9fcfabc1483a8bba53e19596dfa1a6946acb88fb', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:23:53', '2020-10-17 10:23:53', '2021-10-17 12:23:53'),
('ab0cd11a8386d463fe865e39d312a2ecbd7bcde5286088d247c717f106b29bbc033331b87b6dd8e3', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:21:29', '2021-01-29 15:21:29', '2022-01-29 16:21:29'),
('ab1717c3d51dee41152405d36563d79706fedbb06850fe2a7789a5216a05f328cf651a0c0a2bf14d', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:39:23', '2020-10-13 08:39:23', '2021-10-13 10:39:23'),
('ab1872951c691c80fe1030c1290296ef1a24f877e4da407e0a94d29f4d0f26e8e3e29a921d39c6cb', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:27:29', '2020-11-14 14:27:29', '2021-11-14 15:27:29'),
('ab451be92b5db3d78b8f62e3dd9b5a0aa4fb3560535f8f672799a7092d3bf13e103623262156dd75', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:14:28', '2020-11-01 17:14:28', '2021-11-01 18:14:28'),
('ab684b51bbd461266ba6bc71229a88518c56b60adb85fc61351e449fd179c0b7c6740e2ebc6ed423', 27, 1, 'authToken', '[]', 0, '2020-10-30 12:01:22', '2020-10-30 12:01:22', '2021-10-30 13:01:22'),
('ab7986d078430214bd5cccfbb67bee2cd91e6f9027080dfa23945f950fa9242864d90de5bbac2836', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:52:25', '2020-10-29 13:52:25', '2021-10-29 14:52:25'),
('ab8effba4fead4ef8dfa61bbb922090f3a2ea81bce72c86a8b715efc103fd18727871c35f27ec05c', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:35:20', '2020-10-18 10:35:20', '2021-10-18 12:35:20'),
('ab96657ab4d4667f6d258085c733ddf3f8fb3f760807b299f8be901be60ad0e4d78d09a2cb7c52aa', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:06:28', '2021-01-17 14:06:28', '2022-01-17 15:06:28'),
('abb77164b1e3a3a0086b8b2df0ba859ba85835462d9ea7ba2dd08ff8149a8349013813305acc6f74', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:15:29', '2021-01-06 12:15:29', '2022-01-06 13:15:29'),
('abe686f12c65e06bbd9efaab58ab4bec9fa4f69b9e8194993948515765917ea79aafc47b24575c52', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:31:39', '2020-11-05 17:31:39', '2021-11-05 18:31:39'),
('ac002433fcff885f498d1f8cb503fb87264d020a1c34a3d89d37b837c569042607994628a1179643', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:22:19', '2021-01-29 16:22:19', '2022-01-29 17:22:19'),
('ac10c3e0f5a58463a9e87e614ca7626f6d95ff396b4f2c4d6c99d098fd786b6924e4431bf9c8e603', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:02:07', '2020-10-10 11:02:07', '2021-10-10 13:02:07'),
('ac2195551c471fe24db9fa17ddf67af28ad350c5836f79e2f4bdeecd79dd222aa84a85bcdbc9dbda', 27, 1, 'authToken', '[]', 0, '2020-12-28 14:33:05', '2020-12-28 14:33:05', '2021-12-28 15:33:05'),
('ac3fdf2a6043717e4751cfd0efd085ec773534b9d73a151c7bda23caa4995158fa1b0492d0c8de4f', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:01:09', '2020-10-31 16:01:09', '2021-10-31 17:01:09'),
('ac63c29ac1c1b63cd58b7798c630e4e7fd374d15dc5a9a0f928dc723d22bded5c41d28d69b86d3e1', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:13:57', '2020-12-04 12:13:57', '2021-12-04 13:13:57'),
('ac6a23c906ba3f267632f5aa21eca97b159701648e67acba5732139775974303cc54a2105fd6eede', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:03:31', '2020-12-06 10:03:31', '2021-12-06 11:03:31'),
('ac6ea00eda71c786048ee25dfc6baa9ef8528f0b6fc678e3c92ad6c056662b30319f088d01d484ac', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:12:15', '2020-10-13 10:12:15', '2021-10-13 12:12:15'),
('ac70091b29e9a14d2f5acbdef25f6a79d7c3c1d061bf2e0f6492764baa6a26ca54b0012ef30021b2', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:01:12', '2020-12-06 10:01:12', '2021-12-06 11:01:12'),
('ac75a5ac2c85ff61346d9357079febd41c2c0751308d50a66cfe0b35860932cf86985d3d9fb9c048', 27, 1, 'authToken', '[]', 0, '2021-01-25 17:34:20', '2021-01-25 17:34:20', '2022-01-25 18:34:20'),
('ac7aae88710f81afb0bcc1ba20df230dc18392de23086db7faaa580d03fbec7bbcb5cc5db00f9d10', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:42:30', '2021-01-26 17:42:30', '2022-01-26 18:42:30'),
('ac8cafef70a5ed091596e71d8e8d8ad0e783f773693770b26b8998d75d8d68fc67e78c7fcb2f0ebd', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:36:58', '2021-01-29 15:36:58', '2022-01-29 16:36:58'),
('aca2e8fdde8379a45529fe6c04735f35f69c8a7a997698df069935bd6e13ca4a46d3ced81f0d7fd5', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:18:56', '2020-11-12 09:18:56', '2021-11-12 10:18:56'),
('acaede3ba638b1cfeaefd6f430afb73df310183661fa9c89fa2fa1901f5df4bfc2e1a796a0e26ae1', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:07:08', '2020-12-31 16:07:08', '2021-12-31 17:07:08'),
('acb2a94dc32b65250c6816d56e8a9b69e2b05c77eb344395970e70ff4e4a11c3e8a7f69cf02571ae', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:27:38', '2020-10-31 14:27:38', '2021-10-31 15:27:38'),
('acc22bb989a7a7f5aa31ab2c43c11b07e564779b7c945df00221c74587504f7939e663fa5c73e561', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:06:06', '2020-10-13 10:06:06', '2021-10-13 12:06:06'),
('acc663382a9d06c90a5cec68ab2761ed83a47d7b6a0adaa9f7177ce9832eedbb9e7e48a39fd048ef', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:53:50', '2020-12-06 10:53:50', '2021-12-06 11:53:50'),
('ad0b8d937b8133ec7577b35db00250737540747519df9d54706bad45bf5055b0781ccb6c8221f67e', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:44:56', '2020-12-04 09:44:56', '2021-12-04 10:44:56'),
('ad2be5a47aeb526de8efa9a561544143926933b6e8897bf816330653a3b8ea97d42d43e991b77c07', 27, 1, 'authToken', '[]', 0, '2020-11-05 13:45:55', '2020-11-05 13:45:55', '2021-11-05 14:45:55'),
('ad6b7cab7c9dd4183914d2d28ccfc630f55f8a9a353b6e50c4c4ecc5dc0fc509a8dd329593ba1950', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:49:08', '2020-11-19 12:49:08', '2021-11-19 13:49:08'),
('ad796b295754179ce80661ec314dce1e2440f8fbe16c6bee4c88343f12e55385b45f489a69d4818c', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:00:21', '2020-10-27 11:00:21', '2021-10-27 12:00:21'),
('ad83682a5207e3dd1512eaf48bf18ae45e853515c29fe26bd7b3055914ecfad99e3610ccef1e5dbe', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:16:16', '2020-10-03 13:16:16', '2021-10-03 15:16:16'),
('ad9258396e9297ec751c092b306bbcf8d832e439479866a0d25de9f601c89f7bae96d6f639bf1226', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:27:29', '2020-10-13 09:27:29', '2021-10-13 11:27:29'),
('ad947569b9b4e21f43ad5e0033becdbcbe717b14cfa00289482aa8e9edfcfc3945dacf328896c8bc', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:38:19', '2020-11-01 11:38:19', '2021-11-01 12:38:19'),
('ad98170bea883a626c546a869a38f2be7e89fa194ff43ecd2713ef29e278fba933586ecd2f2ca503', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:47:08', '2020-10-10 10:47:08', '2021-10-10 12:47:08'),
('adb287477e53bcd2f90810aab2daaf281687f9ce5af094d8cdb80c93f2857a462f7f971a247413da', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:42:20', '2020-10-13 10:42:20', '2021-10-13 12:42:20'),
('adbeccbe109f3486f1612ed56de042f46f09e03fe5312c061a4353bddb43c1c2886b2ac6d7a6f390', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:05:06', '2020-10-11 11:05:06', '2021-10-11 13:05:06'),
('adbfc794927360f9a74bd8ca16cd7502249609efae350a81d22c13dd40200f434a81570c26e70036', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:49:25', '2020-10-31 11:49:25', '2021-10-31 12:49:25'),
('adccc92a65a86712845496d55bfbcc61e2b037b1cad700445a79a459c9157230e0c2a4d454c1ce20', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:46:31', '2021-01-06 14:46:31', '2022-01-06 15:46:31'),
('add18edec703dce5b3781f1db6f69a2f0e9a253e49c774472e3e941fd7183b33fe81f7f5096d0916', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:53:35', '2021-03-27 15:53:35', '2022-03-27 16:53:35'),
('add68850344ca11e84058d915f0b9b6ba0baa303dfde017f049be7bc66c9b22730f6da479b30e4c8', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:26:32', '2020-12-28 10:26:32', '2021-12-28 11:26:32'),
('adde5dff77308364f0d078e86035481d7e7a3d1271f6ece71d65e24f840779ca8be701ce009043f3', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:49:26', '2021-01-02 10:49:26', '2022-01-02 11:49:26'),
('ade39f234e9d829059ded3c2800e5447a6f87a360590138dba1fc85b755583fd507029cb7320ca25', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:43:22', '2020-11-14 12:43:22', '2021-11-14 13:43:22'),
('ae011fd9982859d0f4d019fb7b55e4be45b09370f1b8a51af7fb0c537a41cdce161a2c592eb60514', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:35:21', '2020-12-31 15:35:21', '2021-12-31 16:35:21'),
('ae0b03dcf9ca0a74bc31d066535faafe99360d8f21d1626fab78a018d4533a96a8ea2bc863bf762d', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:00:48', '2020-10-19 14:00:48', '2021-10-19 16:00:48'),
('ae221892e3d5a149179febbac83bfbf87a0ccbd4b30d1df55f44b2225f006bb06b175193602503d0', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:39:17', '2020-12-06 10:39:17', '2021-12-06 11:39:17'),
('ae2634c1532ccbcca6a74450653cb8978cefa2c2234b4e92a58e6afe84695123637a955b39fde337', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:29:27', '2020-10-13 09:29:27', '2021-10-13 11:29:27'),
('ae54c6d0f890e8eb1bf09989d7c6a59a80e85db21e81369cf5c47560fc6cdc0a7147c8289918b30e', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:51:01', '2020-12-31 13:51:01', '2021-12-31 14:51:01'),
('ae5ef4501c14b0873887eec2ce83f8831fbba282ab4c88d5fab14286d40233a9e5f9893059ee3a54', 27, 1, 'authToken', '[]', 0, '2021-01-06 19:22:48', '2021-01-06 19:22:48', '2022-01-06 20:22:48'),
('ae92106d0177fe02458bd85792b1c8d4574dd798c99ee86ff9b9ce459089812893c10ab87b3be8cd', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:51:20', '2020-10-18 09:51:20', '2021-10-18 11:51:20'),
('ae985b938aa5ab627523b1a5283406a75ad6a020410342f2d17df9b96efd13bf989c5c1ac160028a', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:43:23', '2020-10-17 10:43:23', '2021-10-17 12:43:23'),
('aea069f06ced3ef69a59ba45b3a34f7a44442e02df849007f8b807b608edc4ea7db21c77d66d11c7', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:36:45', '2021-01-07 14:36:45', '2022-01-07 15:36:45'),
('aea5c4d2c3d421c741b5d82ad38bdd607548e180346b3210aad07a1dd0095f92e5f13c3e6dda9010', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:10:54', '2021-01-24 11:10:54', '2022-01-24 12:10:54'),
('aeb6fb337de93a1ab77b24a8b39e63a8d3780bc5270a9223bcea89590eb62257bac550aa71fd09c1', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:02:04', '2020-10-23 11:02:04', '2021-10-23 13:02:04'),
('aec385ec65b6bcc75d7dfde7ce4b7a5fd310315379640100733a7c306cd4f81fa30f9f97f946ad36', 27, 1, 'authToken', '[]', 0, '2021-02-01 16:35:28', '2021-02-01 16:35:28', '2022-02-01 17:35:28'),
('aec722e581c5e3ba26a967363a5cfaea309d5ba788d68755a67116b2466a7af5be2e3f7b040f7fb7', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:42:54', '2020-11-15 13:42:54', '2021-11-15 14:42:54'),
('aeccf9c4afb34a371ff40152f12d254a42d0ae1b87bd0ac5965fe5ab7463086825e1faa222329d1b', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:54:58', '2020-11-22 12:54:58', '2021-11-22 13:54:58'),
('af28e4f5271ec7fd5c4fa064278f796fab7e1c581736759dbd625dcd45fafad5a1f3cb0d04aa79af', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:17:54', '2021-01-17 14:17:54', '2022-01-17 15:17:54'),
('af34cd97ba0e583502b5ae040914e51a6bf18c03605ae8424d3a37a420d6ddccaad1493f3c4d5bc9', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:38:01', '2021-01-24 14:38:01', '2022-01-24 15:38:01'),
('af47c36bf352523a564026711edefb9eb306e4f8c48e53be7e1806a913b95c1a1cf081a14d7ef027', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:34:59', '2020-10-31 11:34:59', '2021-10-31 12:34:59'),
('af5879beff5749ae6eac017b81598e55ab7b075eb5df1dbc3cc401b820bd7fc1adddd13318abf025', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:20:41', '2020-10-27 11:20:41', '2021-10-27 12:20:41'),
('af6518da1452db55359c9660fc3d481d72434373d9a48bb38e8632cafea72d6e09dc2707045526a6', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:10:53', '2020-11-19 10:10:53', '2021-11-19 11:10:53'),
('af66be2d1cd212856c616edec1d25b7e2a815f50b933f05aea077fba5173d7774420140ae4ab717a', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:10:35', '2021-01-07 12:10:35', '2022-01-07 13:10:35'),
('af724f8efa53191fb100c572b83efc721ffa47fe310402a0bcce5e9353f3d92f230bcb1468b87fc5', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:24:44', '2021-01-02 13:24:44', '2022-01-02 14:24:44'),
('af80eaeb4cc97cb9bc2c11a5d17981cad8c68fddb66dc58bceb699de12aae62e7401765ef79aeeff', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:13:57', '2021-01-09 15:13:57', '2022-01-09 16:13:57'),
('af96451153d2bb24e1545da42eadf3fc05ed0c8b6465aa6fd5f2ed281bb10d45c65891c5093e31d1', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:02:14', '2020-10-19 10:02:14', '2021-10-19 12:02:14'),
('af9ba07ca78fa214fbf3852bbf5cd9c6fb18d93dbc881506c2aa2899854f40a68dcb80eda7788beb', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:48:30', '2020-10-18 09:48:30', '2021-10-18 11:48:30'),
('afb2036fa1a92654030f3291cae9a49da3d1b0d6c8435be78fce2902d09b67d9e2362c7eb83abf28', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:48:09', '2020-10-19 12:48:09', '2021-10-19 14:48:09'),
('afb7cd054b6215e8c9a616469ba80e8c18046c928b11846a3546a9787f2bd4fadd2be3f3066be5b5', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:58:37', '2020-11-05 15:58:37', '2021-11-05 16:58:37'),
('afdef192d175cfdccfc7adae6e386cb3d9a69252a482046eaa4fd9f3af8cf1a69e0f40e85c83d019', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:08:14', '2020-12-31 16:08:14', '2021-12-31 17:08:14'),
('afe739e2f5f6451c6b83c627ab65d8f44a355804118531e7daff5df60eeb13cbb4e77f7029a6f9e8', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:58:28', '2020-12-06 11:58:28', '2021-12-06 12:58:28');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('aff455bdff12cba8bbef64dddc13c123eb8b07c55aca8b9b9e9900e0c371555eeab39297f246d6a5', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:19:47', '2020-10-29 11:19:47', '2021-10-29 12:19:47'),
('afffcdaef9407f241791b86bb83c0f3ee5d75c886ab54d707a3ff192dcbc74dc05399816ab0924a1', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:41:37', '2020-11-01 17:41:37', '2021-11-01 18:41:37'),
('b02fda0ac294327f605ceb6d715350194ce52eb39087d3bb42d27193aaa614f85637852786030a89', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:43:03', '2020-11-14 15:43:03', '2021-11-14 16:43:03'),
('b030edd9c40cbe423882b3bfee0cc9bfe5ae66f791c6798fe1026a5dec50890e817ee3de08941d8b', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:35:42', '2020-10-13 10:35:42', '2021-10-13 12:35:42'),
('b045e0e9a7bfb294af8ded7613a98d92a9203160a2db09349dd50bc9c0b53bff3e7057232545d3c6', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:21:22', '2020-10-13 09:21:22', '2021-10-13 11:21:22'),
('b0493a488acc5b165e26a83e43f8ff3f18e617ee89b336c29dba4bce560ded1c8876015c48d4f826', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:08:26', '2021-03-27 15:08:26', '2022-03-27 16:08:26'),
('b0509dfc17e0b8638943b92f9d5643d8840dafce5f2beb8eaf1083fc8a2c30885ed62493c16ebac6', 27, 1, 'authToken', '[]', 0, '2021-01-02 12:00:24', '2021-01-02 12:00:24', '2022-01-02 13:00:24'),
('b071c924e393a05dfb5beba0f40beee2fa23e2376a0de957f1b81a301dc211343dcf5ab320d3557c', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:35:31', '2020-11-01 14:35:31', '2021-11-01 15:35:31'),
('b08fde3d7c4d552aa733650cda392219fd8c6bfef45cfbce36f0d59ee23b52d7208b078068e81b2b', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:38:32', '2020-11-01 10:38:32', '2021-11-01 11:38:32'),
('b0945a32b29ac7ab55a981b6b4f1dd0bf9a60966a26d164554afef3e4aec8cd7ab85845d5df5537f', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:33:47', '2020-10-23 10:33:47', '2021-10-23 12:33:47'),
('b09d46e44c0891c3bbe1987853c63a9cd478ccbf1df648ce6499fde596100392c70befd5f5502235', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:56:54', '2020-12-06 12:56:54', '2021-12-06 13:56:54'),
('b0aedefd278675120dbf3e23ec079f9ec655918bea36f906ac5aecafbfc33b580277de5dbe3b9f7f', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:06:11', '2021-01-28 19:06:11', '2022-01-28 20:06:11'),
('b0b47590df21472404fce5bd57930ed79aa4d353701e4b820eb66a8b23f56690d8a013ff9f035ade', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:11:02', '2020-10-25 12:11:02', '2021-10-25 13:11:02'),
('b0b4ba21de8a496d49155adfbdc23bddf7a16a825eedcc44b7aa494a3047ff7a88cb289866c5804b', 27, 1, 'authToken', '[]', 0, '2021-01-27 16:48:45', '2021-01-27 16:48:45', '2022-01-27 17:48:45'),
('b0c99c1ab84cba7b726a9e7d8c65f737cefd5b25840930cb69f67e8433118f7e2fe0f69307b8f764', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:06:02', '2020-10-17 10:06:02', '2021-10-17 12:06:02'),
('b104fd459b6181fe6fee8a1b8fcf6a8d6258e55dd456a851d3f52631280568fc8fa06cc8012b2c3d', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:23:11', '2021-01-07 14:23:11', '2022-01-07 15:23:11'),
('b11a46e74a91e389de475e91515dffdd2299e220b142e10a56aa34a68af039b336112adc86e0e71f', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:56:05', '2021-01-28 12:56:05', '2022-01-28 13:56:05'),
('b11a5c235817b7cd6ae3b14868a84eb5c57a1c567757a1bf7ed944ee8ee4b868a51653b72d13c752', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:56:13', '2021-01-02 14:56:13', '2022-01-02 15:56:13'),
('b141938c0662aa19f21fc600d5e640faacb2b687a790815a38edc954532f43b2944e0dddbbacc962', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:58:46', '2020-10-18 11:58:46', '2021-10-18 13:58:46'),
('b14ae2a1cdc6a403bb76c86e0392ef85b597705aa5a06e47bcf6e493769825de8b1c2c7bad00826c', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:21:27', '2020-10-29 09:21:27', '2021-10-29 10:21:27'),
('b15a36277aede4df2f6d2ce253db7db9f22371261c8ef16e58a3f64adc29d0779e3c2236a32e6ed8', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:04:42', '2020-12-31 15:04:42', '2021-12-31 16:04:42'),
('b16bd25ce805c8edce69e185229a26dd32ea6bfb22de2ef81454f906c791b7939f5cc378ca90f312', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:00:30', '2020-10-17 09:00:30', '2021-10-17 11:00:30'),
('b177c3b97f3a1fd5804ab4acb4a94ef3d48b8a45d5db35136dd972e95f3836b7f45fb628217c9e7a', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:53:32', '2021-01-10 12:53:32', '2022-01-10 13:53:32'),
('b17e7c013c58f73adf96595a2a8f4a724c576ed166404a0671db55fb0824f9a191a365f52a215f94', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:29:24', '2020-10-28 17:29:24', '2021-10-28 18:29:24'),
('b18c6a2093b0e98502b449fb2efe5c9f2bbf33c3ed460e1b784ad033af70859b0245cc5b31776004', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:20:45', '2020-10-19 14:20:45', '2021-10-19 16:20:45'),
('b1b0e8583f08e127e2cbf08226e1b1230f884e562aea51f1014e1b62bd9810e8098e9a79c6053260', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:00:17', '2020-10-03 14:00:17', '2021-10-03 16:00:17'),
('b1b0ea5ccc3a6e1ad02ce5833ab2c9655547ff246a06416eacb7beb39060264bb7b08fce2a98a0e8', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:10:25', '2020-10-10 11:10:25', '2021-10-10 13:10:25'),
('b1c5ca5d171b57e5261a73c69c2a090abd3a1fedec869508f934a6f6aee0aab504ac50512e233c32', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:40:25', '2020-10-29 13:40:25', '2021-10-29 14:40:25'),
('b1d067ff6dd2bd0ffc5f33e2f1e31b6c3c86bc3844323c8a20b2601a3726bb1d53f97944cc7e1d3d', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:17:36', '2021-01-09 15:17:36', '2022-01-09 16:17:36'),
('b1d6086830c2df3173d8d533405e42d2269115cb377567234f333b93dc47be13b7bdc3779cd1745f', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:54:36', '2020-11-22 14:54:36', '2021-11-22 15:54:36'),
('b1ec70846234ec00f9e41568e2f657823f72890f2291c7cf171f254fc1899c90917030d6a96e490a', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:36:59', '2020-12-28 11:36:59', '2021-12-28 12:36:59'),
('b1f5809865fe8ee7cdcb9114b33bc7d5b144721a397fccf24ebe6b41cdf6b41c7ad5608efa6fe590', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:19:45', '2021-01-06 12:19:45', '2022-01-06 13:19:45'),
('b2129125b6b9b1d2773a8430848d1878e4d3a9d724ecb62c398c09e8d1625900f55439b7fcc57548', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:43:52', '2020-10-10 11:43:52', '2021-10-10 13:43:52'),
('b2180097b1d5d9f0a1ce6713bc447a5748cb8bbfab540affca72a541a0acbe116116f60c90a89b48', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:16:09', '2020-12-28 11:16:09', '2021-12-28 12:16:09'),
('b21d536a1f11e711d2a7e4fe477fab2ec791df15253351372c373f98899645910f77d3ea9b1dd5ec', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:09:19', '2021-01-07 16:09:19', '2022-01-07 17:09:19'),
('b21fd0bf91698c21b1c92eaff90d8e7f914c49cd58e1f5ea014dd2a50fd52593a40a87a9068d1155', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:40:54', '2021-02-07 13:40:54', '2022-02-07 14:40:54'),
('b267c1676119d0038aa6343ceffa0429659149fc989821752bce9f27d4d40d577d6dc2478cd1dc76', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:18:09', '2020-10-19 14:18:09', '2021-10-19 16:18:09'),
('b2773cbc7851a87d5f5e8e918adc8d5688da11871042bcfe54ee05025fbae87027ff0dfc6100a340', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:32:13', '2020-11-14 16:32:13', '2021-11-14 17:32:13'),
('b2863dabbed75e7474c73a8447e76389e0bf854a6a855559d47867f0d3814608171edfce81147a6a', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:27:59', '2020-10-11 11:27:59', '2021-10-11 13:27:59'),
('b2870d1df6549970e122a1deb88c76bc25265ae257f3ea82b0ceefaee566bf813ca5568da08b7f93', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:07:33', '2021-01-03 12:07:33', '2022-01-03 13:07:33'),
('b28e97bfab1f59f55639b9251ee28f7b96a0ba766e0828786cc43a72ffb87292ceea2ab1beb80074', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:48:39', '2020-10-27 11:48:39', '2021-10-27 12:48:39'),
('b2916307f052e13f20cf80556f0cae17865031dc0dfda1935f058b50862d92cd25a2e4bca59a9335', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:46:29', '2021-01-07 15:46:29', '2022-01-07 16:46:29'),
('b29b270f2c96685c0f5cbc9061b82b70044e36f03a30c160253719372458ce52269810c513fd8d00', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:54:36', '2020-12-04 09:54:36', '2021-12-04 10:54:36'),
('b29e9d12cf3baecedb4f0368bdd51b1a4ada279a51790ec57e00f2769483249c32a4182b04bddfba', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:44:49', '2021-03-25 18:44:49', '2022-03-25 19:44:49'),
('b2a6db53a7650bb254f04035d9c3cf941b177eedc9b0f552b422de3ef3acca68dc302d51c01b61d8', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:16:30', '2020-10-27 10:16:30', '2021-10-27 11:16:30'),
('b2aabaa42085b9cd980d17dace5dc2529a2aa1041da06651155d95b79b5234fa3904a1efa3f6ead1', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:31:37', '2020-10-05 17:31:37', '2021-10-05 19:31:37'),
('b2ac9bf6a95c09d2779c91dd231c6245be4ed2eed61d950b600ecc7c8b6fa0a2863ddc70161aaa65', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:00:05', '2020-12-06 10:00:05', '2021-12-06 11:00:05'),
('b2b877d16e154c8246516061cfc834900a80dfe8bb9e358625031a44eb88fc586164544e217e4ee5', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:47:38', '2020-10-03 11:47:38', '2021-10-03 13:47:38'),
('b2c14a98e8c28663ed1ba11df53d54558b02a8e24adabb21e4c5072cf5530a60b4cc4a166287d3fa', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:42:31', '2020-10-15 08:42:31', '2021-10-15 10:42:31'),
('b2da596451e0198541c35ff766df76809029d56acc0449b0081c5ca691a11f6236a9db65e4a2dada', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:36:13', '2020-11-19 12:36:13', '2021-11-19 13:36:13'),
('b2e8368fb27994f4b0821c6231f694d813a13e878e42ef2336952814381219c0eebd0f2ec8c3e0fa', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:41:40', '2020-11-05 14:41:40', '2021-11-05 15:41:40'),
('b32460ecb0d5e393af14bc85ccfc0c7f53c3bdd0f6eafb84eae6167ec45bda18b02b98d1ece58f11', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:32:42', '2020-10-23 14:32:42', '2021-10-23 16:32:42'),
('b33ee9cd1bcbc2ce1a41082c9a9561465288c28ec7847d6a182df96a82d81f23fc43e1292121995f', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:30:23', '2020-10-17 10:30:23', '2021-10-17 12:30:23'),
('b3408e4b7bd712a6eba14b3c7e76fdde52db7b7911e3c58ffbe54d77cf05c036f457f5bc6e11b710', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:44:16', '2021-01-26 17:44:16', '2022-01-26 18:44:16'),
('b34a10b9cf507eb53bda56f970a68f27627f2056a4278bcccfa08eba677c857be9a47e7baa2a3a16', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:39:14', '2020-10-03 11:39:14', '2021-10-03 13:39:14'),
('b35b232c1ae483e6fd41de757bed372e6f79c38e71f8e0cd187b6e98005456a3bc06eb0ee9c11257', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:00:23', '2020-10-19 08:00:23', '2021-10-19 10:00:23'),
('b362061c9d254345f26498ca9a90aa5695a57721a224122bf1af473b48d95121ea08c58dbcf9d7c6', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:27:32', '2020-11-22 13:27:32', '2021-11-22 14:27:32'),
('b36272d5a6d8126c61ec649d1bde46affbe5e3939d0ed43bc17851b5cd0538e8e19a47f117be8aaf', 27, 1, 'authToken', '[]', 0, '2021-01-03 10:36:13', '2021-01-03 10:36:13', '2022-01-03 11:36:13'),
('b3685081c1928de7f3a42175c077b28195df92607dfffc9381da04a6899f798eb2fcd3ba9b072552', 27, 1, 'authToken', '[]', 0, '2021-01-25 17:23:31', '2021-01-25 17:23:31', '2022-01-25 18:23:31'),
('b3947ce7d6b3b56f7bec7a7ed3d9d99c0e49899d7f10d8be3708e221a2af0e45bb2f84cc23dfbd8a', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:39:29', '2020-11-19 12:39:29', '2021-11-19 13:39:29'),
('b39af06097d369d48cd79b5c95d8a73f67a9aed0ac928d382059ec093d699363fe3252ab502e7d61', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:43:34', '2020-10-15 10:43:34', '2021-10-15 12:43:34'),
('b3a03b632f0521760804a06883b3c437c392ab1887513861485c3f17258b51ccfc81bb39bf991394', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:35:34', '2020-10-31 14:35:34', '2021-10-31 15:35:34'),
('b3b0912deddf04d12fec165f5e77d6d1d77294c6f1ee5a68c61bea2c56194df127a625b5bd1a88e5', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:26:32', '2020-10-19 07:26:32', '2021-10-19 09:26:32'),
('b3b2bc4ef71c76e4cf53749483b16fb87569882f73651a742dcb860b4df8736b5dc8f9b7e06d7fed', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:52:57', '2020-10-17 11:52:57', '2021-10-17 13:52:57'),
('b3bd00c78076bf11888bf8ad9ff69d79959964cb53df24031ed0ecf72b578fccd9114d27f1927a04', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:05:02', '2020-10-19 12:05:02', '2021-10-19 14:05:02'),
('b3c41b9fe7186d60f23965ca73632ec0f725d26e36b343dea49e1bf32f53f77327fbe175ce776156', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:51:18', '2021-01-28 08:51:18', '2022-01-28 09:51:18'),
('b3cb7a5c7450ed84683d8c401ee826e65854da78247b2f8bde16d93bf6b556e790896e05a6eceb43', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:10:50', '2020-10-25 13:10:50', '2021-10-25 14:10:50'),
('b3dd340e3daaee35d165f033317e94c2d743a509d016116c25c2c9d6f9d161cd2a71142ad6662948', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:06:02', '2020-10-19 10:06:02', '2021-10-19 12:06:02'),
('b3e7b26198ed16bdcc5b19adebc2a019097adec7a768eca623eaf16cc927f6412c5abbc3505121f5', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:05:36', '2020-10-11 11:05:36', '2021-10-11 13:05:36'),
('b3f9c35cb90175b5a6f4b5e84293416ac4814f57ed7a0bc638a95f5096534efcc887b56887fc3c21', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:27:24', '2020-10-28 17:27:24', '2021-10-28 18:27:24'),
('b3fb3fba5e4e7cadf143a590a7043c053c7a5ca717f1ce0e710e874ef2d9f7f5cc4388b30278cb7f', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:43:49', '2020-11-14 15:43:49', '2021-11-14 16:43:49'),
('b400517703040a5c4c1b06a4b9078c3a1a0dd6216ac17c4bfc6813ed1dfd3cae1891baa43e4f6088', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:40:16', '2020-10-03 13:40:16', '2021-10-03 15:40:16'),
('b40440336b80eadb30999ae232bb5981401b4cf48a3fe03431bee8969a507a687eb3ddd4371d4ce7', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:55:48', '2020-11-01 14:55:48', '2021-11-01 15:55:48'),
('b4095a4d73e249c81547d58b7887d73c131dce14b96ac7d3b3376053267e45d09bb69a263b5be257', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:56:35', '2021-01-07 12:56:35', '2022-01-07 13:56:35'),
('b414106a79d6fee9ed352f14be858deb1bd62eb27d2e51096c7ff31c98ccd1e77f7144daa03e92b2', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:24:32', '2021-01-24 14:24:32', '2022-01-24 15:24:32'),
('b41a67ad8cac27d7a350a9650621ec5d6da3464ed054c42be59379a345aa411ac50f84249f1378f5', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:09:54', '2020-10-17 12:09:54', '2021-10-17 14:09:54'),
('b41a9ad0bff3c9bf60cb83f366def0d6123c5ea0a1dd735a2dbd261c03c0eab1649caae0d6cbd35a', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:38:38', '2020-10-17 12:38:38', '2021-10-17 14:38:38'),
('b41bb711a345a619f8770f134017e26439a785ad3fe7592d43086e9fb0f3078c6de4960210e8a336', 27, 1, 'authToken', '[]', 0, '2021-01-22 17:18:51', '2021-01-22 17:18:51', '2022-01-22 18:18:51'),
('b425e769297b82b71c9495e3d48ff1725171a8168f1526ec5ff7375666358ad941e1b37d1210793d', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:14:17', '2021-03-27 13:14:17', '2022-03-27 14:14:17'),
('b436e717d155075b5cc2c5e891c79a5a2d9cf687b52dbb9381d07b28931fd7148a3afc8f0947102a', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:42:24', '2020-10-17 10:42:24', '2021-10-17 12:42:24'),
('b4394d97b05099afc13129647b7d198ece7021174592abc069a4cd8041d0b5f2b0827bdbb7d06798', 27, 1, 'authToken', '[]', 0, '2021-01-06 15:05:03', '2021-01-06 15:05:03', '2022-01-06 16:05:03'),
('b44826d3850a6a67b4a6ce04349c735d716c1ee3619311436b3556d871d983f6df632eabcf2df04c', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:12:06', '2020-11-12 10:12:06', '2021-11-12 11:12:06'),
('b45a7578ffd7365b855f6a0faf53b373109d68a4489be9d84e8cd152dd9f35a0b21259d99beac6a0', 27, 1, 'authToken', '[]', 0, '2021-01-24 12:00:45', '2021-01-24 12:00:45', '2022-01-24 13:00:45'),
('b4694a2f82d2c5e5d05f62afd950551565f74c70a7927e0d2d0bed2929a1f49cdc922d1530f1a5ff', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:34:42', '2020-11-01 16:34:42', '2021-11-01 17:34:42'),
('b469c6eb463636e872c10fa7c289a9439e4f8b201a768284cc5fb67fe86106e3f06e809daf6ac028', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:17:49', '2020-12-04 10:17:49', '2021-12-04 11:17:49'),
('b482323e0a322782cbc2422e53e9103d4984a08aeba1ca9d787ded1df5c5936908bec7bb9bbaad5a', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:21:50', '2020-11-05 15:21:50', '2021-11-05 16:21:50'),
('b48910f097faf407ad8b2450d99e5a93714250f0378841b629f378e119cf335f124b5c58db313436', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:45:42', '2020-11-22 14:45:42', '2021-11-22 15:45:42'),
('b4a0ebde9cdb2dbc0e0d27fc2b414d7edd9c8da19be2d5fa28b8680b74767b47133bd6a303bc4dab', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:52:05', '2021-01-07 15:52:05', '2022-01-07 16:52:05'),
('b4c4d6a3192835d010652a89d387fc595b7fa3ba193655d1b9106bec6f88c568ece839faa0892d41', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:30:37', '2020-10-17 10:30:37', '2021-10-17 12:30:37'),
('b4daac13644d0f8b738c165567c9bae1e35307f164acf12ff08ec386f96974ef36095eac5136ebc1', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:32:56', '2020-09-27 09:32:56', '2021-09-27 11:32:56'),
('b4debace6c63aed1b02e74a28179f2283dbc40618e78307600e09cc7518fcd26f5576f00b4ab4ff7', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:42:20', '2021-03-27 11:42:20', '2022-03-27 12:42:20'),
('b50bd273cf16f3e67e8f179d0f8bf17f76c6087f27c5b9e3abfac11359348c63641c59ea00f52853', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:19:18', '2020-10-29 11:19:18', '2021-10-29 12:19:18'),
('b50e4b70c0e7c5381033712bc899c00d176b390316c7729400d306f617ce8836fe2e781c8a34de97', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:36:46', '2021-01-29 15:36:46', '2022-01-29 16:36:46'),
('b51d31849a4907c7342f3043944a3783b7d37ffef9da3b8951714d7ece46258e66f0f759afef1d3a', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:07:57', '2020-12-06 10:07:57', '2021-12-06 11:07:57'),
('b5327432512781cfe6000435737f344d7028192b10d9d80e4c4162abb8397d4402e9eb87b493eafb', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:43:07', '2020-10-11 11:43:07', '2021-10-11 13:43:07'),
('b558638a38ab540f8ccba9ef66808f7e4be3c7288e84e5fde96b45b444a093a61424d3476b84ad64', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:26:31', '2020-12-28 12:26:31', '2021-12-28 13:26:31'),
('b573ae6cc15412794a9b0a144d39aa196550e8e058b4d3d4c532fc3768c9d9ba08036f8ff2e927a6', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:23:06', '2020-10-15 10:23:06', '2021-10-15 12:23:06'),
('b573c212b3602d364733f5ee216f455f9529bc06b785fa42fb44e8984f113be28b43c7c25d694979', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:18:03', '2020-10-25 13:18:03', '2021-10-25 14:18:03'),
('b576fe6ead0cbaa4389eb9211d1d6d5bf16b373a5a69268333ebc524487f827351d37fb5a2323b4d', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:43:06', '2021-01-01 10:43:06', '2022-01-01 11:43:06'),
('b57962fefeb2157c5bbadc4eeb96710d01dbad298513166e6dabebd7cfc9ffbab1915a23ea0d994a', 27, 1, 'authToken', '[]', 0, '2020-12-28 14:03:16', '2020-12-28 14:03:16', '2021-12-28 15:03:16'),
('b5ad17e4c2b5c96a05721784edff1295be88dfb29867c92331fe26ff16bcd3b8ccce2b8a083ae8b2', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:14:18', '2020-11-05 15:14:18', '2021-11-05 16:14:18'),
('b5ba0b6bf9ce330544f8c0789a1079bc46f076467416e2801b31f02f56dec530f2f83468fcfc0403', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:35:31', '2020-10-19 08:35:31', '2021-10-19 10:35:31'),
('b5bb27670109f2a2925602b250dfd22727ef6df050df6a4496c75ec693b0afe81e44e97d8f046168', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:33:35', '2021-01-07 13:33:35', '2022-01-07 14:33:35'),
('b5bcb96e069ac053df7bcfc6665e278033e7d85bad87fb4db49866bff6bce3df8359a70c12c3f8f4', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:34:37', '2020-11-19 12:34:37', '2021-11-19 13:34:37'),
('b5c4e88a70cf46c6b4d549d1898334795536f222b30e3b6eb4984be703c710d02a2ca5e3081cb615', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:46:19', '2021-01-06 13:46:19', '2022-01-06 14:46:19'),
('b5cca486702b806c59c375c2ef5f2e3fd0d19bf7ff55a0d07974539df3dabe6c2daeb88670583aee', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:05:23', '2020-09-27 10:05:23', '2021-09-27 12:05:23'),
('b5d10f9ccdb09f5ed3901fd8a82bec9a3749ecd44bc152de31a88034ec5bb1c90c19b373b93a70b9', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:45:15', '2020-12-06 12:45:15', '2021-12-06 13:45:15'),
('b60ce67df7b7ab1a7fd518ab734311ac74dde06fa4b07fe0f946701c2db0723c73285277939e7f17', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:38:07', '2020-11-01 17:38:07', '2021-11-01 18:38:07'),
('b60dde8d9ff109eca43d224a7292326f780a0e1d5de783a2425c0485848a310f50f61a5702cf075b', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:46:17', '2020-10-19 12:46:17', '2021-10-19 14:46:17'),
('b63643c2c6aad4187cb3da2a02ce1dca610d28fa9e9f2ef292aa844999a690960755a40d4d15060e', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:46:04', '2020-10-15 08:46:04', '2021-10-15 10:46:04'),
('b63ad689547633c17ff55674276f4bd02247d410df773098b2c49799d131ed713f5b372a1cb57bd7', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:37:20', '2020-11-14 12:37:20', '2021-11-14 13:37:20'),
('b65804c5fd73a6e24675957e3313f8e75fd6b7181d5a0af3ac9594113a19b902c0a45d2fdc6cf8d0', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:21:51', '2020-12-04 10:21:51', '2021-12-04 11:21:51'),
('b666ef516d0f600575d1d54bda7b78985b1c5239f5605920cbb4e658eff64de3de1672d846d35190', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:36:36', '2020-11-01 14:36:36', '2021-11-01 15:36:36'),
('b67b52ff72978923f4b6c303c9aecc677c75272224330b592d7b435d7a8a46b6693ddfdccb4a7aed', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:37:27', '2020-10-19 12:37:27', '2021-10-19 14:37:27'),
('b69da09f1dec2f070657b5fab7dd3ec78d26641b4a356954bd050111d085b23eb5484018ef5c2068', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:44:51', '2020-09-27 09:44:51', '2021-09-27 11:44:51'),
('b69dcdd48d48fbb665df5dd5c3f1701349e467c9f218e28f310f28111410bb6877695b0b69bcc366', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:58:43', '2020-10-27 17:58:43', '2021-10-27 18:58:43'),
('b6d436a54cd445fe43c9c9a3dac862724297e98cfa414e8cde73b4fb6b89910e7bcfe65dd38e1b1e', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:53:22', '2020-11-22 12:53:22', '2021-11-22 13:53:22'),
('b6e88ca332d7d2e09e0f82cd61bdaac429697bc077c1d6b663495f8d0424157a1c4793344305fad2', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:49:09', '2021-01-01 11:49:09', '2022-01-01 12:49:09'),
('b6f36022dd1820822deb763742d1a03ae6dfb486c0742d1b7afb5857b4d45dfbdafd51accc8e9692', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:16:53', '2021-01-07 13:16:53', '2022-01-07 14:16:53'),
('b6fd0cdc031eaa8cbb86eeb45d1c12407c3a9225414c2d6dfe90a55606ffdf7763d1f1dd2cac020e', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:43:13', '2020-11-22 12:43:13', '2021-11-22 13:43:13'),
('b70d3dc25f61fb233fe0ea982685b496890e8397a313b280f3995848e4e65d66cb4edd824fcfb0b6', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:40:46', '2021-01-01 14:40:46', '2022-01-01 15:40:46'),
('b714d27e403fa1e0072a9864ea9e60f636aa00274ebbcaef0d3494262eed6d5dc4317a5ed5c1bfac', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:42:05', '2020-10-29 07:42:05', '2021-10-29 08:42:05'),
('b71b88c6d13b4bb5842107d0f9a59cecb89aecb4ca4eb7708e4f81e26facead00b2a7cfe011335a9', 27, 1, 'authToken', '[]', 0, '2020-11-14 13:59:00', '2020-11-14 13:59:00', '2021-11-14 14:59:00'),
('b72aa56037f611b87f1b2321083c344d9f733953da5adc276782ea27710e0a47373e737ab03f9d96', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:51:15', '2021-02-07 14:51:15', '2022-02-07 15:51:15'),
('b752f412d5822402f8e2eabca6c4d4e740379b691dd1ed48000c3c3cb97d6e17c861d5b3ca3b6c75', 27, 1, 'authToken', '[]', 0, '2020-12-29 13:44:52', '2020-12-29 13:44:52', '2021-12-29 14:44:52'),
('b76ae068a6fe22fd1f7556c04ff951219ace9b2a7f36b954f0d1f833c1db939f6f55448326051b70', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:17:01', '2020-11-15 14:17:01', '2021-11-15 15:17:01'),
('b76bfb1f426f9a0914f560913d5e9e22ce0130d838b9d1cae18918c1ce0e91b59543412f08f683dc', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:39:31', '2021-01-06 13:39:31', '2022-01-06 14:39:31'),
('b780f144a79920f13d9c0fb2af0cefaa0df1dbfe6024366461aae06ef638851d15ea07328ade0b48', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:20:14', '2020-10-15 11:20:14', '2021-10-15 13:20:14'),
('b7812f2f30e9e59e4ddf13c54f33d110fdd94bad26e6c1c04a4ad884bb809bcb303b55c64b49fda7', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:11:56', '2020-11-01 13:11:56', '2021-11-01 14:11:56'),
('b79fea652756276198dd47f187f8c9d584fa5456199cc04b939db7b73fde23ad3eb1ade9637949be', 27, 1, 'authToken', '[]', 0, '2021-01-29 09:12:39', '2021-01-29 09:12:39', '2022-01-29 10:12:39'),
('b7db3ec27f72258020c8cff503abb73fe2b8f4265a960d556ce5db42126146b67a47e111aaabfd9d', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:18:38', '2020-10-13 09:18:38', '2021-10-13 11:18:38'),
('b801d253110a9374b4b5304c5076b468195346bb83500b9772e42e408a00ce50760d2dd27eac0a74', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:40:27', '2020-10-18 08:40:27', '2021-10-18 10:40:27'),
('b804bc2753d3e2e0eae74a8ed663167a5f8f0b4641343f1cca86d6dd1d9c5f394368afba782a57dc', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:55:40', '2020-10-05 16:55:40', '2021-10-05 18:55:40'),
('b80a6dcc4643d710e5743b192b31e725506ab857d53322bcd8cdae011a99a92237d1f6b48ae4ac70', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:29:14', '2020-10-29 09:29:14', '2021-10-29 10:29:14'),
('b812fcea6def64240678caca75d33643f429e7ffe7c2910b9bc290696f30266b68e4e4713290a3f6', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:27:40', '2020-11-22 15:27:40', '2021-11-22 16:27:40'),
('b82e8471e797d15b80acc2a38b7cfd3e3845075949ddbbf826af627b5bedbb5e00f700aa7aaa69e9', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:15:14', '2020-10-05 17:15:14', '2021-10-05 19:15:14'),
('b83a778fac4f73368041ecec9a26909e1bb7ea52ce9a9c07d0750f411aff4e42eedcda128ab948f2', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:26:11', '2020-12-31 14:26:11', '2021-12-31 15:26:11'),
('b84fe97a7fda5c0c031d03dd5fa873f90df01ba8676eaee134e1a6650a85f7e906b6b776ea5d1fbc', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:27:02', '2020-10-03 14:27:02', '2021-10-03 16:27:02'),
('b8805400a45b6ce71ce2320a70cb4ced1c92a127b070cc876448988c4e8b65853f1087ea8a07ad1c', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:16:43', '2020-12-31 13:16:43', '2021-12-31 14:16:43'),
('b88106a8401ebcc284b1c2191d76f5c77fe1fe714228c1ec75ed0ef9c377aea85fc7fa91c78dac5d', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:47:29', '2020-10-18 09:47:29', '2021-10-18 11:47:29'),
('b891c4dc9d275892aaddeea4f438e7cb330d492c786dd7f0f63fd1e44ece12031791f9e339101164', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:10:52', '2020-11-14 16:10:52', '2021-11-14 17:10:52'),
('b89378a016782d47ad6e7c25a2c7c50092187c7cee6dfca56fc8e9f254d3d943b93cbafa670e2492', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:24:48', '2020-10-19 14:24:48', '2021-10-19 16:24:48'),
('b89f0af0c8b20f3a6d5ab30727019a152b1df6d5eefe0c6715d661435346cc3eacd27f518fe12e15', 29, 1, 'authToken', '[]', 0, '2020-09-27 11:41:42', '2020-09-27 11:41:42', '2021-09-27 13:41:42'),
('b89fae44e207cca71234bf8c2fad4ca1b9c0baf9b6971458b1e34c734d2835763528e0d4ef61b13f', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:22:11', '2021-02-07 13:22:11', '2022-02-07 14:22:11'),
('b8a2e4eca7dc960dc0b86d7e06db40021f5d95efbf614017f935965068ea73f0d803ece66cd8526e', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:13:48', '2020-10-23 15:13:48', '2021-10-23 17:13:48'),
('b8a47a312a7ec581ed32ce18eecf2066eca330c479a604c2ac839dda4f295d23c699312b887e0ed4', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:05:03', '2020-10-03 14:05:03', '2021-10-03 16:05:03'),
('b8a4a81a33df1fd0dcc3e94e114a4ec8344433392d95eaebbad31714d99bf9739fc754b1e8c10653', 32, 1, 'authToken', '[]', 0, '2020-09-27 11:55:09', '2020-09-27 11:55:09', '2021-09-27 13:55:09'),
('b8a5cf57e3a3f30617c092141cc516c1e323fad0eff63903be31e49821306237e6347bbdea3628b7', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:32:33', '2020-11-01 12:32:33', '2021-11-01 13:32:33'),
('b8a732f56903899629bbc106bfe62d583135ee4522d3216305dd7bcc00922ba1a6b23eb19f050f72', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:31:11', '2020-10-31 11:31:11', '2021-10-31 12:31:11'),
('b8a985c5843edfe55d7c2430d413457ae0aa44fef5c0f0d48bd2a0431dac34018e8bbe3ff9457bb7', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:07:50', '2021-01-03 13:07:50', '2022-01-03 14:07:50'),
('b8abe035466ac10dfbc8d4ac87a79b04bd03c0b828b379faab3f9cc36e46f53d040a7bb289e73edb', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:35:38', '2020-10-27 10:35:38', '2021-10-27 11:35:38'),
('b8b6f4169c998c1eec480172023d286bc11d4a7ca712d6c0a30274a4fc389ba3efd5e867ee0b156f', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:43:09', '2020-12-06 10:43:09', '2021-12-06 11:43:09'),
('b8b8a5e2ae7d572fae0f8151bfb20379b89d19a8171a3939f5a9e8d872a90ba0aa6faf3009461252', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:29:30', '2021-02-07 14:29:30', '2022-02-07 15:29:30'),
('b8bbee5aff64e5fd6c9b9be935c58bc80287d7817c6bb7468c5f49f65e1e45bdad0a403e5d36f4d0', 27, 1, 'authToken', '[]', 0, '2021-01-27 18:54:10', '2021-01-27 18:54:10', '2022-01-27 19:54:10'),
('b8c294442ce8eeb3370916063cf1699f2b542f4ff72c628304c41f836d81028dc3ca0e394935e5f4', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:56:32', '2021-01-09 14:56:32', '2022-01-09 15:56:32'),
('b8d031057a8e8c07b00b6c45e4ca7d39d28d5b8ab57812a337f6a3c5cd528ccef03538841d4b5adb', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:32:34', '2020-11-22 13:32:34', '2021-11-22 14:32:34'),
('b8d865caa8089af1a0107de807155835c5ac35a3a6ffd18e77d12611e481c5d0b54e147180b70d62', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:14:45', '2020-12-28 10:14:45', '2021-12-28 11:14:45'),
('b8e926583a1032cdd98566493679a0fb8f42e1d94c206e0465a02fc811b1f1d365aeacc9cb17938d', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:51:31', '2020-11-19 09:51:31', '2021-11-19 10:51:31'),
('b9005595c247f5f96729c51c09a4316eaf28a58b4769392e4aa15b0387e5263ef2bdc9bb64b05de6', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:58:01', '2020-10-15 08:58:01', '2021-10-15 10:58:01'),
('b9284b876763e54991b7ef7ce9447eec428fdd8b27f8ef257056bd09a96eb087704dcddae67c38fa', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:28:26', '2020-10-03 14:28:26', '2021-10-03 16:28:26'),
('b9345f8241ef7afa5e50ae30c7e79e65dd4769f1a3f3ab5738c5b5b39887353e8d8c0a2a37d11572', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:41:18', '2020-10-25 12:41:18', '2021-10-25 13:41:18'),
('b936dd0404d3d3e58880171124ec14ae754a411188fb8b1d026ff37a964cebd0d5ca1f24575b5b57', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:40:05', '2020-11-19 12:40:05', '2021-11-19 13:40:05'),
('b93d56beaf0f1a0402b4a5ec8d781bad8585f7e6d21405501f74bc21d0dac7a888d3f0d776688b7a', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:04:07', '2021-01-28 19:04:07', '2022-01-28 20:04:07'),
('b95a589a7ebd29839cdf58c46fa17a0dab3254c6e657786a04c0155f157e49305db5230e43ba3314', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:57:58', '2020-10-11 10:57:58', '2021-10-11 12:57:58'),
('b96af36cab8cc00f37e3f683ff0341427b7bcd3a428024603bceb4368392700e6256cd36b968d535', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:19:48', '2020-11-01 13:19:48', '2021-11-01 14:19:48'),
('b97642089465a9ef55727efb72fa184dd4fc908d6bcd2390d33c65303285a8a1d04b2ecb3b1f7ecb', 27, 1, 'authToken', '[]', 0, '2021-01-27 18:37:18', '2021-01-27 18:37:18', '2022-01-27 19:37:18'),
('b981f47175ef2621278819717c6294bb175d533dafec5a5cb8ec62faefdc25e92b980c158406e27c', 27, 1, 'authToken', '[]', 0, '2021-01-24 13:58:37', '2021-01-24 13:58:37', '2022-01-24 14:58:37'),
('b9b563de58ca7afc374c78183e83c446dce907d5d20097c30d92e2c4bb2b2855446f7f3654af2088', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:57:51', '2020-11-19 11:57:51', '2021-11-19 12:57:51'),
('b9b9bbcabd22089d5119393d7f81923c004c27aafbed8213b941e5481e704ffcb100a7029f250028', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:07:11', '2020-10-31 11:07:11', '2021-10-31 12:07:11'),
('b9cc2e98c77c2e407f179ac28c86f63552e5d0d279f8d7a253aac8f3a1b6247e569b1f553df46818', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:51:52', '2020-10-25 12:51:52', '2021-10-25 13:51:52'),
('b9d870bf04f14017be55a2dc52d4d9138a2da2c41130cfc81d0032c2b51d186da0487b57e61b4527', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:31:17', '2020-10-25 13:31:17', '2021-10-25 14:31:17'),
('b9ee58c2caa128451bd1322ce80515daac90b185cf50630ccd90280860be851d32dc2815ae25c434', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:44:58', '2021-01-03 12:44:58', '2022-01-03 13:44:58'),
('ba3c178bc64896cabe11f9b62fb0bc5a5dc1e077efc52f22850048da07d55de0e8100c5b8579ee5a', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:49:48', '2020-10-11 11:49:48', '2021-10-11 13:49:48'),
('ba5e259f89e7a3455d68b89206ed81e5099e78e9a2315fd2d1577e6f911aa7d9525c9322cf3c1a01', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:13:36', '2020-10-17 10:13:36', '2021-10-17 12:13:36'),
('ba6004c2444d1daef4751c175329196bc4d0b34979a2c628e6e062938a6c9026c269a0f7ad2b6e78', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:09:22', '2020-11-12 09:09:22', '2021-11-12 10:09:22'),
('ba73a29b2ebe1cc250bf10d8b499edadaa639a555430a6ab6b81a5484a2a165fad81f25fd167388e', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:08:27', '2020-11-14 16:08:27', '2021-11-14 17:08:27'),
('ba85d2ef85f237d4ff337eb4ced6be9e7b0d2b5c1724d95d78b5b563dc297aa97c46495c39ccb91a', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:51:26', '2021-01-03 12:51:26', '2022-01-03 13:51:26'),
('baa4290f36bd593ed262806785194ce44ceddf33507d979423716af5aae6b79779f7427b49e80c6b', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:04:37', '2020-11-14 14:04:37', '2021-11-14 15:04:37'),
('baa56c245844927ed58b29fe2456ec4245974129ce628a48e000f5742b2bc7ae56c97be235601a6a', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:22:42', '2020-10-13 10:22:42', '2021-10-13 12:22:42'),
('bae36a470f2120bbd6c03f2c9fcdc43e2557a017b78497a203b662507320f7ecd0f4b79708d698bc', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:21:25', '2020-10-27 13:21:25', '2021-10-27 14:21:25'),
('bae576e4c315cd8eaaf242f5dec5ec42e107aca24ec3798b26a003b6afbbc295ddc0b3a87de38d9b', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:10:11', '2020-10-23 10:10:11', '2021-10-23 12:10:11'),
('baf14a39c36040fa8f91471617411bf10c98bca14a874a0def9bad75577554cb03584ebdf4ab27c0', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:22:34', '2020-11-01 13:22:34', '2021-11-01 14:22:34'),
('baf2e1eaaa0b223fe61fd667fc8b8f176f66d30a7a76a28aa217601980b98e7a56364bc5142beb71', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:34:14', '2020-10-19 08:34:14', '2021-10-19 10:34:14'),
('baf381e67f513b3de08b96c14bcb4f9268b450dd45707c871675fc7c3e7cc12a8816bcfe05b802c9', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:22:53', '2020-11-14 16:22:53', '2021-11-14 17:22:53'),
('baf544e4ada5b2d98b5dbe145fb72a164486b611190433c900779ee612e17dba7b2e60c882d47392', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:17:27', '2020-10-17 14:17:27', '2021-10-17 16:17:27'),
('bb1ed07c028265d3bccde19adde6aac0bb927e0a3d6398e58fc9e37e7bc63107fa427c1ca4b16523', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:41:42', '2020-11-15 13:41:42', '2021-11-15 14:41:42'),
('bb4c1bbaff6825a3eef4a0a83712008167ed3aa4f669d2eaa3245bfab06f4a5e004bcd72433638c5', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:10:46', '2020-10-10 11:10:46', '2021-10-10 13:10:46'),
('bb5f3fd5a568343ca80dab5623fa08b001484ffe303a85bb89307ce971d826e1923a11a2704c0309', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:05:36', '2020-10-23 13:05:36', '2021-10-23 15:05:36'),
('bb89da59029896713327b0a1b9c145298892e8c8ff35c41a25b1c9cc37436dd79235909e300b466b', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:18:47', '2020-12-04 10:18:47', '2021-12-04 11:18:47'),
('bb9fbac99a163db3e163f483fd6310922833a194c39b341137840f05f80be606fd8ad6dc48a7361c', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:12:26', '2020-10-19 14:12:26', '2021-10-19 16:12:26'),
('bba3f73440ddc3d02b7a2840cfd9a30c1de4c6a5b7cc03ad6d2e3f77bf9b07ad70f5fca3adbe41f1', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:50:51', '2020-10-17 10:50:51', '2021-10-17 12:50:51'),
('bbb71e6343293e1b959f55f45c0625bfa2e03219f35f81ce8e81bb1ef8d3e0da9941627f46316ac5', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:51:42', '2021-02-07 14:51:42', '2022-02-07 15:51:42'),
('bbc3bdb07ebe465132d2cfddde94c39e7dcf31161dd80e9073751a79c893cf48ee0effda2165be43', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:15:42', '2020-10-27 10:15:42', '2021-10-27 11:15:42'),
('bbc70b3b2efd27b771cccc90e072907ba23e46392ed736c7ecb0fdf66df75967b0c4d66b8494b895', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:00:28', '2020-11-14 14:00:28', '2021-11-14 15:00:28'),
('bbd903d5039ef32ccb53af52f62ef93f0737a8a262379f202b73280f9152d6477148a3c6e70cff29', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:21:28', '2020-12-29 12:21:28', '2021-12-29 13:21:28'),
('bbebe36177e96edfc6bb298f6aee2c4667cbc1f7bfbb7ddf98d53c57855f7bb6c66e841014a74659', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:23:39', '2021-01-29 15:23:39', '2022-01-29 16:23:39'),
('bbec2542baf6af4d67419690e88edccfc40c6b7762893038b98ecb5974884ab3d8c89b3872629e4f', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:53:24', '2020-10-10 10:53:24', '2021-10-10 12:53:24'),
('bbf4ee328644a599a82aa39a2d1c4ea8593e4d10d71885b44a2b61572d0b71b5d32439d243925e1d', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:40:02', '2020-10-31 16:40:02', '2021-10-31 17:40:02'),
('bc00702f451f962735104003ff478d5888eb3852f32e952a0d85d541cea968e6c723a56dfc6f88d7', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:53:17', '2020-11-05 15:53:17', '2021-11-05 16:53:17'),
('bc06f97c6a2fa4ec78cc0a037645ba5db6bc21b34ce981d06b930f1bb999c00b5deb2bf31bb4a717', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:48:17', '2020-10-18 09:48:17', '2021-10-18 11:48:17'),
('bc203376c4797677fab82e016eca1976cd46be4390a455ea3ed01cda805a0b4ff42ea16d806aa108', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:45:23', '2020-11-14 12:45:23', '2021-11-14 13:45:23'),
('bc245318f94d8d8f23335a8a711684c614d5b515d1fc9f7c843c4864e198537f58a7e5b952725c4d', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:36:57', '2020-10-28 17:36:57', '2021-10-28 18:36:57'),
('bc2d4dd29c60a684b996f68eea2b617ef27e3621b52a3d04adee19e63a55e79f11a5225a8fdf136d', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:40', '2020-10-03 14:10:40', '2021-10-03 16:10:40'),
('bc3ff3bd4c004db6317fa48a36f41693ae60f768e1b7e59bb536e049a4f26f6b99f2aa4697ecfc95', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:44:47', '2020-11-14 15:44:47', '2021-11-14 16:44:47'),
('bc4877e36256a61ab59a95b90b9fc51f02f7fb33335d5ab1653f6c25d1dc4074f23b6224f3614596', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:04:10', '2020-10-23 15:04:10', '2021-10-23 17:04:10'),
('bc49875cefecdad328c3f8fcdb5f00fc2707b4bb332a67498ce721d960c4e942efa1dab0327d82e9', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:43:45', '2020-10-17 09:43:45', '2021-10-17 11:43:45'),
('bc4f130ded565e54b55ec4e6ad5487b7b24761b370b60643b42d756d527ec559b7414ecbfbe69312', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:58:35', '2020-10-11 10:58:35', '2021-10-11 12:58:35'),
('bc57c3eab5eca861aa1ca659845b7304a9efeffa108f6d1b985947a1d6952ce7774136bd0bb9553b', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:41:10', '2021-01-26 17:41:10', '2022-01-26 18:41:10'),
('bc73a5174e1983c1ce9f4754fcddcc5f257e72533235c290df892f4ad258a5b89bb7f40e88151ef7', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:40:51', '2020-10-05 17:40:51', '2021-10-05 19:40:51'),
('bc76a9d98f24684fff171863f6dc48c2980d9b29452ded2a358d0f6052cc8893b688e1a5d02a504c', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:31:20', '2021-01-07 13:31:20', '2022-01-07 14:31:20'),
('bc85e3b78da9e5841f2472014fe9ac7b44fe743d5842b2197e52074ebc03ef754950757d9e2d6924', 27, 1, 'authToken', '[]', 0, '2020-10-19 11:35:48', '2020-10-19 11:35:48', '2021-10-19 13:35:48'),
('bc994f054cb1ecc18c2e1d6b9aea75a0d0849ecfe35be9d42b9b718aa133418baafb377e721df1b8', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:19:49', '2020-11-15 14:19:49', '2021-11-15 15:19:49'),
('bcaec32a696298b88306af3092660af0cd8dc3e50dd4370b1c640d82ac31ccaa5dc545495c5c6482', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:27:51', '2020-11-14 12:27:51', '2021-11-14 13:27:51'),
('bcb5546dd2a872b8cf689417474197266e9f7eea563b9c97944eee2643518b5af38e0f2fe23f7a14', 27, 1, 'authToken', '[]', 0, '2021-01-09 11:09:31', '2021-01-09 11:09:31', '2022-01-09 12:09:31'),
('bcc1cf0bfe15068299e57f19438cafacd6b7520b3d4740766fc33511151905b068cf7d7b3dca1424', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:28:20', '2020-11-05 14:28:20', '2021-11-05 15:28:20'),
('bcdc5def9c86b25d1417e59995023da54b0a3accb9950f84fcbf1ea95fec257516d5edb5bc3e98fa', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:54:25', '2020-10-03 12:54:25', '2021-10-03 14:54:25'),
('bcebafcdf7814d32d6fd67f297592f6e2d91ed941e446825997d775db32d16af7012f0f208c413e7', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:20:17', '2021-03-27 13:20:17', '2022-03-27 14:20:17'),
('bcf00303142d331ffeba2fa2040bc79538a5c25ed3d2bed967213ba734526406795aa2ccd39a6944', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:39:19', '2021-01-06 13:39:19', '2022-01-06 14:39:19'),
('bcf439c577f5957f73a93f0a10c562d6f001e65c30a242f57650b14a14f8db79f1d39df9442d30e0', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:50:48', '2020-10-03 13:50:48', '2021-10-03 15:50:48'),
('bcfd1069d68d4603a52d3e3f6d78075e3b346d955232437b8413f4dd50a0a5777c6fbab5212f1f49', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:40:11', '2021-01-07 14:40:11', '2022-01-07 15:40:11'),
('bd10c29ac9e561e354da1edfae725daa56e55e4a130662d83842bf97412c877b8aba2f03c2176006', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:44:55', '2020-10-31 16:44:55', '2021-10-31 17:44:55'),
('bd13a7b3984c4c6257b132fa9baa1b62421b1f24104609254593ef50ff3faff38d1f01be855ed940', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:00:26', '2020-10-23 10:00:26', '2021-10-23 12:00:26'),
('bd14287b1df1469bc0b22e300b99ed3991f0e444a03a9c0d311e5e176199daf3028a4dfb463b57e9', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:33:12', '2021-03-27 13:33:12', '2022-03-27 14:33:12'),
('bd14dbc2ef079d7c9d76bb9c5a8e4df97593dd21ec75d95a168369cb336755af36c4ccc177a98bcb', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:00:32', '2020-11-14 16:00:32', '2021-11-14 17:00:32'),
('bd3b91ab3b8f46b20971871652611e4f6922dc11ac560090ab3dea82cdaaa4883be24f456015c9cf', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:39:46', '2021-01-07 14:39:46', '2022-01-07 15:39:46'),
('bd3fa3021561845e4c803b0a346493a5891ecb5465a1bec955961043184687620281d9e8c576342d', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:19:21', '2020-12-29 10:19:21', '2021-12-29 11:19:21'),
('bd5f35c5347a822aa3318e7ede803b74f813936267d5c2b7fc3c542b4f657980097aaa77b92b2e34', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:03:54', '2020-10-13 10:03:54', '2021-10-13 12:03:54'),
('bd8e428cca6cdcaa1ce9f7cb25324107bb0406adf6658a153b3e8be17c7dc0c0e242933946170a93', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:39:19', '2021-01-26 18:39:19', '2022-01-26 19:39:19'),
('bdb296c82d52ee2bb67c6e456f6372a78dbba904b76c7d0b6e7d38331fef9a15d323572a07930ca8', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:42:09', '2021-02-07 13:42:09', '2022-02-07 14:42:09'),
('bdb77abeaeb4294fd931d41f90ea8a5c88cffde20d07088744529979bb2e67c2a3f6a1a432bda4e1', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:19:34', '2021-01-06 12:19:34', '2022-01-06 13:19:34'),
('bdbbaffe89f434640b18eac17468bf681ff0f06d5bb5f18fb029cae89c1996ad4a12efd72998bbde', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:37:59', '2021-01-17 14:37:59', '2022-01-17 15:37:59'),
('bdd40a645dc3c898a803833389881106ee9309a3988d0796859b0d8a1bef92aba57e37a1e1f33069', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:51:25', '2021-01-07 13:51:25', '2022-01-07 14:51:25'),
('bdd78871de4044892cc06aef78f5aca4ae9adc24377b8787a8ee6e233c1defe35b5a2f362fd8c9ba', 27, 1, 'authToken', '[]', 0, '2021-01-02 14:08:28', '2021-01-02 14:08:28', '2022-01-02 15:08:28'),
('bdd90d247bb5705cd4e5690a58079f113d3e87d945e22371b9bef6b81e9379a44d1b050becba4567', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:13:29', '2021-01-03 13:13:29', '2022-01-03 14:13:29'),
('be10c9167caab3b5ddee0e667c7851f21577014bbc8d4ef455346422e825988c61c9b05f0a6128f7', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:00:03', '2020-11-14 12:00:03', '2021-11-14 13:00:03'),
('be185c0f9e19f7ac9725e54b1069c28561bbc3c7764c992fafc2e19c560ae32ce7d8d6059413528e', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:37:16', '2020-11-19 12:37:16', '2021-11-19 13:37:16'),
('be3eb00ac174dfbb18a209cc837bc4d353f78de4510cf50aaf63c0e203fd06eefc18757f73e673f5', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:34:08', '2020-10-15 12:34:08', '2021-10-15 14:34:08'),
('be5a8e4bd417607678c6814cb8b93f2dcb92265f7ec84227134695415ca1e0a363084a1da28982e3', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:34:21', '2021-01-06 18:34:21', '2022-01-06 19:34:21'),
('be74e70b9245a3ca6fd2e18d1bab6153ea50f1ea5d082a7f8d6678ad046682fa1de0896ffd0474a1', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:32:41', '2020-10-18 08:32:41', '2021-10-18 10:32:41'),
('be8bc1b838e1c3d6e07da5eb5dc7bcb3be857a828f345fa339ea68356c90f1644b7bb0e480f9716a', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:18:33', '2020-10-30 09:18:33', '2021-10-30 10:18:33'),
('be93ae96aef3c0bba0dc975185b3d46f03c746444924a1c45c94a2ca1f835ccca440326d23669038', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:51:03', '2021-01-06 18:51:03', '2022-01-06 19:51:03'),
('bea7ea0f93b8bd87e2cb349ec576df7d149d0dbd2bcae085804f733b95e9cd2a952c2bbf4cc12472', 27, 1, 'authToken', '[]', 0, '2021-01-21 13:58:12', '2021-01-21 13:58:12', '2022-01-21 14:58:12'),
('bea7f2318799909a6e6bf90fa4775dfa923f2f9781127bc6090ed74bf5a1b0a692b824dacdfe4cfc', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:39:17', '2020-11-14 12:39:17', '2021-11-14 13:39:17'),
('beb224d5151694cdc8be25f3ae15b8255b0a419b259350d4730e2a8ca766fb872698b3a7d21ff64b', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:03:37', '2020-11-22 13:03:37', '2021-11-22 14:03:37'),
('beb9f5c4c5663f5b120132a5d05bbf67471cb3a1d471a95b04a70218a51aabe375b4ed5912fec7a8', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:09:53', '2020-10-18 12:09:53', '2021-10-18 14:09:53'),
('bece91905b8ad28e01ea0aa79a22b2d979d19cda340b150dcc2b8ff649ada4fb200263e436774161', 27, 1, 'authToken', '[]', 0, '2021-01-03 09:01:07', '2021-01-03 09:01:07', '2022-01-03 10:01:07'),
('bed8499a79356474712bd80550ddcc0920216a2bc923e1361cf237e32b1bff3f00b290e8461369f4', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:58:59', '2020-10-19 09:58:59', '2021-10-19 11:58:59'),
('befc2e682b48f669c162034cbbf867db4c1f9f902d5c52abaca4d782f598a075c7268e7d688636da', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:00:33', '2020-10-05 17:00:33', '2021-10-05 19:00:33'),
('bf02cfb2f0e9545427fe382f4df1a0cf8694ed346dcd0ead1ca0ef04488cb254f010158eabb456c4', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:55:41', '2020-10-15 09:55:41', '2021-10-15 11:55:41'),
('bf0db144b471c7fdfd8bf79ef5875cf4924f590f2784af178e5cdd6a229b3db2cef021b2bdf783ff', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:44:55', '2021-01-24 14:44:55', '2022-01-24 15:44:55'),
('bf2b2904d76c47512f51ab8b57eb7cd459e1a5e4a42354d1ae4de3b7c27d94551099f104c8ba4105', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:41:57', '2020-10-20 08:41:57', '2021-10-20 10:41:57'),
('bf3890787c62492359bb8f7b54497e539365356b5001fc0e26ac8eee8fa3d68a66b589aaaf3083e8', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:50:16', '2020-10-19 12:50:16', '2021-10-19 14:50:16'),
('bf3e3637552e800e2c7346ed5b27629f0e432afee1e55989b00af1489981752a03e051a4bae360f2', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:04:21', '2020-10-25 13:04:21', '2021-10-25 14:04:21'),
('bf48b419e8b16b0b4a27855e43105f344a93e9f90fe74b77319f73f963a1b18b1466cef1d75ccc9a', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:33:56', '2021-01-07 13:33:56', '2022-01-07 14:33:56'),
('bf50197b0721ab77cfe81310f40616e48b514f1e92f684a60cd23cf440ec659cdc8a97e246d22757', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:57:38', '2020-10-15 09:57:38', '2021-10-15 11:57:38'),
('bf52391ede8e0845e280eb5d974b30bd36de2cb7e91632f09ce9a86874899c5f8d47db71b483f913', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:02:02', '2021-01-07 16:02:02', '2022-01-07 17:02:02'),
('bf5f8ea61e1755ee1393b832cf518166ca3ccd1eec7490f09edcb77dd03bee0383715f6c8eee8c9b', 11, 1, 'authToken', '[]', 0, '2020-09-26 07:49:41', '2020-09-26 07:49:41', '2021-09-26 09:49:41'),
('bf62d9aa308e9e46cc5d9958beca502e16b39c7d1ccd11adf7ed9826631675b68519b9334b75e74a', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:29:05', '2020-12-04 12:29:05', '2021-12-04 13:29:05'),
('bf701d0d80a4580cb3c3ab87a5c864a50fc003533344dd583f8894381c66a5e6ccdac29928c4e99f', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:45:22', '2020-10-31 14:45:22', '2021-10-31 15:45:22'),
('bf78dc833b24c80ca1bf310bf07ffdee92994b4aef6ed392ff4ea1c89ddfa8a292d4e9e82f8200bb', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:54:29', '2020-10-27 10:54:29', '2021-10-27 11:54:29'),
('bf904320e3b307a0a95f29704a7f22066d7d651f8b233717816aa41d2a51be30af0d47f3763b1418', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:13:54', '2020-10-31 17:13:54', '2021-10-31 18:13:54'),
('bfa255a8604f45758268223f1c71c4be617017e4fe1ddeea4f3e450c0901dfa0ce32bfe59ccc895c', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:15:07', '2020-10-18 08:15:07', '2021-10-18 10:15:07'),
('bfa2f8bcf0a158597fc7dbed73e6c7747caec8aacb7755173a3312d502909f6b5559fbb06a2f8222', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:24:11', '2020-10-15 10:24:11', '2021-10-15 12:24:11'),
('bfa32ef666924947766c6fb1f096bca7ef5b1366cfed6992f06245a2a15c1c7aff6a4aa51472c1fb', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:34:29', '2021-01-27 17:34:29', '2022-01-27 18:34:29'),
('bfa7bd0bcfeb83122df7b537bcdb2bb8cfdbd203eee3b1611809b8abccc5b3884d8f43731148d075', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:20:01', '2020-11-12 08:20:01', '2021-11-12 09:20:01'),
('bfabdc9203eb65c214fbcb4a6421b439debb2c6973b79ab6b672365dbdc62589f6859070aa198ac6', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:35:41', '2021-01-07 14:35:41', '2022-01-07 15:35:41'),
('bfafde5d7da11bf54c675b8a0b867fe845b09642682e69b5b772b8ff7c03de41c8a1f4e95de522b5', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:09:22', '2020-10-23 09:09:22', '2021-10-23 11:09:22'),
('bfdee48e78a1645a2dccdabaec0f0dbf9961eed4792df62a960c5f82f9d40f6e4bc9eed1d6f2a2c2', 27, 1, 'authToken', '[]', 0, '2020-10-23 09:59:18', '2020-10-23 09:59:18', '2021-10-23 11:59:18'),
('bfefeda0eb81c3acc26d29ccce3654476517f355eaf9dc25fc06c1bd9a85f6ed15a3acf98bb749ce', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:34:47', '2020-12-28 11:34:47', '2021-12-28 12:34:47'),
('c0185c31c433041d5d9a2d61225c3c9f80a70f6f5a7311c78185676d3b1102baaec8123fcbad66f4', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:43:23', '2020-10-17 11:43:23', '2021-10-17 13:43:23'),
('c020d898e3ce4e75dbcc12a204c3dc51c6a00449e41f45ec30377d77fa15f86308955e77365118f6', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:34:47', '2020-10-17 10:34:47', '2021-10-17 12:34:47'),
('c02e1c9552b81720160d04548037dd079b70a0521c21b588fe11f78cc54e49f03791a6bfdd24b412', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:24:43', '2020-11-05 16:24:43', '2021-11-05 17:24:43'),
('c0325c9312ceb4c6e49a507806258025e5e6ea3c358148c65cf76a2df81a85f9296835d7a63d7517', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:31:05', '2020-12-31 13:31:05', '2021-12-31 14:31:05');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('c03f42f782435ff1ff47629249aa7ad8bd07e2cf3fd6b21f7af83e2c74990971f642038c612f4f99', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:17:12', '2021-01-28 09:17:12', '2022-01-28 10:17:12'),
('c04966347789cc8b74c48aa2ec64182b0cd91b7a701ce1cb5bb665dca1ee54ecdd76511e72798abb', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:59:24', '2021-01-01 12:59:24', '2022-01-01 13:59:24'),
('c04d6083d8b6c5c73c63bd5dddc94e9855875e25218804c2e14018f96dcc9eb3cc7f291eaa52ddf1', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:18:16', '2020-11-05 16:18:16', '2021-11-05 17:18:16'),
('c055059bf48e06882ddd9bdaa792e93a79c76a6520469fffc6c816fa85b7ba80656693cff245186a', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:40:48', '2020-10-17 09:40:48', '2021-10-17 11:40:48'),
('c07e82998b343368286fcc3c3c322e759b363d6a90f200383076a49739140f1cc62abb11bc9f1c2e', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:52:23', '2020-11-22 13:52:23', '2021-11-22 14:52:23'),
('c089324c39bf03c3b1d935fd6ad1631d0f021cde84ba790242af7219d02a636841335f81b861291f', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:04:37', '2020-11-01 14:04:37', '2021-11-01 15:04:37'),
('c0a4db8a81593835f364d59dbb9e27809632bfac20bc3822971b022b26ffc0f3e229d2117bd395a6', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:01:00', '2021-01-07 16:01:00', '2022-01-07 17:01:00'),
('c0b55d5b96ee83878eac3d26c128c89cf8bbd55707f9f81f7eb8394980670e10a9e75bee3433fb94', 27, 1, 'authToken', '[]', 0, '2020-10-27 11:47:02', '2020-10-27 11:47:02', '2021-10-27 12:47:02'),
('c0b772194f18afa24ce0f13b7a0d1230cf39ad6fe02237d3a0037488b61774dcdbd8b1b603715f74', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:55:16', '2020-11-01 14:55:16', '2021-11-01 15:55:16'),
('c0d27160507c360c9b907be93dc95914a1c098e4454201095c77fa1aeebeeefffc026df28a9a65a3', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:50:33', '2020-10-10 10:50:33', '2021-10-10 12:50:33'),
('c0d45521e883197ca989842f372441ab149c0753d75bcddd3afd0600b33352aa0f64da577379a9e5', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:39:23', '2021-01-07 09:39:23', '2022-01-07 10:39:23'),
('c0ec351caa20ae3ffd476635dc1535b3d364585b07cef407f77b5c93aec5ff69ce23eab3b8321b8a', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:12:56', '2021-03-27 15:12:56', '2022-03-27 16:12:56'),
('c0f780388e740e619c5d57a567949a5886016c734d8f13310fb1084ce86ec57347a0f10fd5cad843', 44, 1, 'authToken', '[]', 0, '2021-02-01 17:01:15', '2021-02-01 17:01:15', '2022-02-01 18:01:15'),
('c0ff3ff6cb6a248cb5a9ac2253cb0f8166b5291ed2fa41dca9d5e6b08e18c575c6f6f9add15a6368', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:25:30', '2020-10-30 11:25:30', '2021-10-30 12:25:30'),
('c116f17b16b6e56899619ae7c2ed5926ac24f510c1a45ed1f96133f663c4d15fa44f5273b8794606', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:34:15', '2020-10-23 10:34:15', '2021-10-23 12:34:15'),
('c11f141d8f6d133741967bb1c922c7aa7f9ab41b2a16197b1320b8f4a22330bbd5e8326735bea136', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:55:57', '2020-10-31 11:55:57', '2021-10-31 12:55:57'),
('c12630a2bea3632085dc0d3bc26d7a55d6258f17ed41aff599d6ded13519bc6ea3fb7ca5f7541c4d', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:08:25', '2020-12-06 10:08:25', '2021-12-06 11:08:25'),
('c13a8da72506a358ddb8c22ea93b5fe6d1eee538b57c0172e5880581211738f19924cdaffb1019bf', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:12:40', '2020-12-04 10:12:40', '2021-12-04 11:12:40'),
('c141cbc0cd7f6ded762fbeb093be0ade45696cf12ba8fbb8048ea34d6527830a36589fc481b0d9b0', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:35:09', '2020-12-28 11:35:09', '2021-12-28 12:35:09'),
('c15171a2f4237bbbc48ce49ea9d14ba0c89a02cc465507a4ced2a9fe8c33747e84beee94c5c6dbf0', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:00:14', '2020-12-28 11:00:14', '2021-12-28 12:00:14'),
('c153113e5dd927623d92349e463ed636a245a26acd0a0552d880cda19a21a857509564eafd6fdb7c', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:12:46', '2021-01-06 12:12:46', '2022-01-06 13:12:46'),
('c15fea596ed8b2eb4f3422e89683fabacb4edd89671a78cf8e110c49e3e48fa58393e34e2266b715', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:49:38', '2020-11-12 13:49:38', '2021-11-12 14:49:38'),
('c1814f76729d92a3092b9269e3c1bfbb2698df4811aaf21bd18ff3fab3f098891ad16ea48575c484', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:38:32', '2021-01-24 14:38:32', '2022-01-24 15:38:32'),
('c18d1127994987b45c331880252696d7c1b271f3f2189af7eacf2389f101f8ca4a0aebc248cb1dc0', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:06:34', '2020-11-05 15:06:34', '2021-11-05 16:06:34'),
('c18d11e91295f0a34020f31feb59fb46a216cb2487e4fca9945c6979f2259ccd3bdc4820e66036bf', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:49:49', '2020-10-17 10:49:49', '2021-10-17 12:49:49'),
('c196e2bcb1cdf20cb2422943edcba73c355aaecfd70e77154e34abf17c741adc20a80bbc0108fccb', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:48:39', '2020-11-01 11:48:39', '2021-11-01 12:48:39'),
('c1a355cdb4808b8880d5110252290ce5e6e1823bf266c38a40f0583b4c9d6bbc6155cc266f428fc1', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:47:00', '2020-12-28 11:47:00', '2021-12-28 12:47:00'),
('c1a63fb73ebcdca747c8a16e94a8b74e3b0b801c6b7c67b06af847fe23f507c8a3bc470cfb58a84d', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:15:49', '2020-11-19 12:15:49', '2021-11-19 13:15:49'),
('c1c946f68a4c7ae8be7b688638ced4124b287e81a28e97807854b8c8765face7450a4111c057f7c9', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:08:39', '2021-01-30 12:08:39', '2022-01-30 13:08:39'),
('c1e867527d20a1147ba31136f33d7b88486731f93f0594485d58c85c6f038f89213362d6c766f57c', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:18:35', '2021-01-26 18:18:35', '2022-01-26 19:18:35'),
('c1ff79d4bde95084c363332a5b86e7f1cb1f59069e10eacb1afe17b3db5e8831e370b3fc1fc0f111', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:17:57', '2021-01-01 12:17:57', '2022-01-01 13:17:57'),
('c2496eeb470b65e4a8e6b5532e5fa4570fbb5576d924ff63fe83ef9c2f34b6d462c8de1d012a5734', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:12:08', '2020-12-04 10:12:08', '2021-12-04 11:12:08'),
('c24a5036e2a4fb5833af1563559f624ceb783f762d2fe942842bfce667e8426e0e83f005ff09922b', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:35:07', '2020-11-01 10:35:07', '2021-11-01 11:35:07'),
('c252603d0e77b7f1903790d9ad95c7ea5de5ba0bf33769a4f43c6a5e952dc98b11b40e3e8ed17216', 27, 1, 'authToken', '[]', 0, '2020-11-11 17:04:56', '2020-11-11 17:04:56', '2021-11-11 18:04:56'),
('c2701ac024638c128bffcdb540f61306f73ac24ceb9f922364534ff95fce1288bd3d6975bc21aec4', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:43:30', '2021-01-07 15:43:30', '2022-01-07 16:43:30'),
('c27aa0702e21de9a14a37a23ebadeabeb63381963ec79bf71b361a45046dd566d711fb0941560930', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:01:01', '2020-12-28 11:01:01', '2021-12-28 12:01:01'),
('c2941b642b54bde186e27421faa4bec1c8281357195ad177a20f8e8a0d400c313bd7dc3b8c6300a3', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:15:14', '2020-10-10 13:15:14', '2021-10-10 15:15:14'),
('c297f203de1d7b1702f2c5569c07d065c549f9a945519bcaa2be509e8504693982d1eb97cb435a83', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:49:52', '2020-11-05 17:49:52', '2021-11-05 18:49:52'),
('c29973accc90e6a77ba4003e911dc3e6b17d28b95de0c91fd59d010b3f97169037db24e89eba6afd', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:43:28', '2021-02-10 18:43:28', '2022-02-10 19:43:28'),
('c2a497b85db4e9a8cc44349fcd859d3fe3ebdb0ebe734750d81b6a38364b0047373f7d200e74d974', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:22:36', '2020-10-31 11:22:36', '2021-10-31 12:22:36'),
('c2a86a612846fed0cc0698a127298d5faba876aefd53bfae1508e91b5990aaba226bd434de103864', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:16:39', '2021-01-29 15:16:39', '2022-01-29 16:16:39'),
('c2b01a0c5cd03f228926f02e3b6ec2fada6f340efc18baa3f14177d38e261eff042303352ce551fc', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:32:40', '2020-10-25 13:32:40', '2021-10-25 14:32:40'),
('c2dda8e265c33c3081e2359bbe758884ddbccc678b82c9f0315aec2e198a29b3f6c604feccac7c1c', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:40:40', '2020-12-06 18:40:40', '2021-12-06 19:40:40'),
('c2de5bff1397eb3a0e740423c2c5da42ef00d5fcb13876a52b83949f2832df18879a3e6a2c83c164', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:25:23', '2020-11-14 16:25:23', '2021-11-14 17:25:23'),
('c2e61842daa6321753a985dd773bfe81f54df62ac121a80a44f8bf1a7ae0cf0b0c906ee00f6e943f', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:59:01', '2020-11-01 16:59:01', '2021-11-01 17:59:01'),
('c2ede1198541cb9aabcfe5db38dda3fa2bb7fbed440b4e06d9d30aa58881abd769ff003573de1f5c', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:22:29', '2020-11-22 13:22:29', '2021-11-22 14:22:29'),
('c300d4f757c86f61243e6dcf5d6b95b9442102e2a8bdb3056b41666b34f67783e88dc9f1fb5341a1', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:53:06', '2020-12-31 14:53:06', '2021-12-31 15:53:06'),
('c30dd3800b16538a47f2e9b0e7745bf5d0617779b84f0ae936af2c3fca6e1c5bce0ae68f57d27045', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:20:14', '2021-01-06 16:20:14', '2022-01-06 17:20:14'),
('c316d0268c0a93ef050ebe46efe0523a4e6b127bdf4daa02f2797945639b1cc409cf9258128604a2', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:35:38', '2020-11-01 16:35:38', '2021-11-01 17:35:38'),
('c31a565f7bc94b4ef4daa156494c7ed0875fe5a7fb6ea89915c5d80913c1a45ec197efcd8b36ff9e', 27, 1, 'authToken', '[]', 0, '2020-12-28 09:58:29', '2020-12-28 09:58:29', '2021-12-28 10:58:29'),
('c3286c3ff911b403d8e89ab431ea612dc8d3afdd567b5b91a1cea01696def0d548b411b58173b09f', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:13:52', '2020-11-15 13:13:52', '2021-11-15 14:13:52'),
('c32bccc8c2fcc175596a2ba164583483cc28212bac4f3f1379c47a859d4e2da2012e25db379f5274', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:55:16', '2020-10-19 12:55:16', '2021-10-19 14:55:16'),
('c33b67d4dfb8d6df68b4b5c6118d0333aa7d56ebe3c5ca66f1ef921763f64e3c8a5ca41ec270871f', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:36:52', '2021-01-29 15:36:52', '2022-01-29 16:36:52'),
('c344893642de9cf9dc36f308d7d19c51ea1da452a1201052089a7f0e78bdd8286b9d3b9fae87a618', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:06:35', '2021-01-28 19:06:35', '2022-01-28 20:06:35'),
('c35c69565bda98b6eaf80862d3738e901c0a0134a74864fe1e2383ca40e6ddee60cafbe3a54c2af2', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:43:37', '2020-10-15 12:43:37', '2021-10-15 14:43:37'),
('c35f20d4e387865a8631cbd700d8e8f9b414c529dab883706cfdf6d96ac82bd42461be40d863c98c', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:35:36', '2020-10-19 12:35:36', '2021-10-19 14:35:36'),
('c38b367f3f7e3d33e07be4f6d751ec332c5d7ef6b08e63608831b4d687822570b4920b8e0adb4c34', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:26:54', '2020-09-27 09:26:54', '2021-09-27 11:26:54'),
('c38bfcb0e3ec68e27dc9805b966a09d3ee3dd686f67242de1d576410de2a4b781970b55e832cc3d1', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:41:20', '2020-10-18 08:41:20', '2021-10-18 10:41:20'),
('c3a031cd791be7694b2de7906fab053383918dfb692283ca142d4ad517e0fd1f4b3ba490bc91c9de', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:04:27', '2020-10-19 13:04:27', '2021-10-19 15:04:27'),
('c3a37b4c5bdcb2121659032af628d4c4d506cc9f21d80f7b387aa6e2c7fa20d17eaac4eaf9730cc0', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:45:39', '2021-01-26 17:45:39', '2022-01-26 18:45:39'),
('c3af6b7348d03ab567dc8a931fe4344a9675197c9f4d33d769f49e11ddf813e8c86689f810d4dae9', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:19:47', '2020-12-31 11:19:47', '2021-12-31 12:19:47'),
('c3dbc5a6dcaa017c6da95e03f5a9d8d294c21b88e8674712b39c98ba9485504ebe8169403864bb3c', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:43:57', '2020-10-05 16:43:57', '2021-10-05 18:43:57'),
('c3df9233229233eca2268ef8052dfa0a92ef0014c70fe6dde4766ed28abff141f4e8f32e53b094b3', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:46:57', '2020-10-25 14:46:57', '2021-10-25 15:46:57'),
('c3fe8e8f090157eecd35f4a8ca24e82ae0abb7294311cf754d4f042ea2242b4a4fea28b0bde24f3c', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:29:25', '2020-12-06 12:29:25', '2021-12-06 13:29:25'),
('c41cc6609d235ba618d70e704b2cd1d3087ae243ae8e1ab5cdb9aa00dbb54b2f84f8bb0aabd2acf3', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:57:39', '2020-10-23 10:57:39', '2021-10-23 12:57:39'),
('c4677ea2f1c8b19a3de86f13cf3e0431630b39b88b5bca45d6a229e584cce65fc52c3182f0d75507', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:31:35', '2020-10-13 10:31:35', '2021-10-13 12:31:35'),
('c46b304e76428f3ce8db103df6da849c57abfeb60bb09f1b073f16ee88b5fc2252ce9c5807bebd49', 27, 1, 'authToken', '[]', 0, '2021-01-03 11:38:52', '2021-01-03 11:38:52', '2022-01-03 12:38:52'),
('c46dd60209a7745b18c6acf55c58c2c609a7a228564cab9e6179cd84721b206e0c4ba407c4015a0d', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:10:41', '2020-11-12 10:10:41', '2021-11-12 11:10:41'),
('c46f14c9480ce148aa59ad8616a8d1b4a141fc55e251ead434ecbbd743da7974c7912e21fcce61ba', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:15:24', '2021-01-03 14:15:24', '2022-01-03 15:15:24'),
('c49bd42a3d465b07c1c10fc479fe90901ebfbe293bae7eb3034de187e2452aef47fab53d929f0459', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:37:00', '2021-01-07 15:37:00', '2022-01-07 16:37:00'),
('c4a6035fb453029c12d5930a6a2bb2db71ab0475b34d9eb60732dbb0b0c95664a1faa20da12b0137', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:52:48', '2020-10-10 10:52:48', '2021-10-10 12:52:48'),
('c4c3956b9833457c6f793459ca1f97144921160a24718969a3648cc70057420582e0d2bd286fc456', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:47:40', '2020-10-11 09:47:40', '2021-10-11 11:47:40'),
('c4e3a8039f910badf97579ee3349573e10c896aa40e8be865a08780c878bd3c51797d10c696c39d7', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:21:16', '2021-01-03 13:21:16', '2022-01-03 14:21:16'),
('c4f472aca4ed53cdb7079308b9484d150acf01530da2467008487ba600014d23f81221481efad0db', 27, 1, 'authToken', '[]', 0, '2020-10-13 08:50:40', '2020-10-13 08:50:40', '2021-10-13 10:50:40'),
('c509aa1b3d831560c3a8f0d04d4a8c7fdb180c0247f42b355faad539c1b702e0376cf01c9895d126', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:52:11', '2020-10-27 16:52:11', '2021-10-27 17:52:11'),
('c50f09c33d870a8ba065e7e12a19aba0d167cf56ad377ecc794fe2be38200af5a4bc16f6d01f8735', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:03:14', '2020-10-18 10:03:14', '2021-10-18 12:03:14'),
('c50f58eb45719af2aafe20cbf8304af933ac27697c7c07ea28f1e5f887fc3f858a765987285473cd', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:44:03', '2020-11-01 16:44:03', '2021-11-01 17:44:03'),
('c55dbd1d6bca197bdb24734eb94052659698b8651fa948af79e3a6b65ec56fca74a2f4408a915c62', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:14:02', '2020-10-03 12:14:02', '2021-10-03 14:14:02'),
('c561fa67b3aa361840c11dc2260180cddec407488ef18e687270d39a1697f3455f5492694a53fbf8', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:56:57', '2020-11-22 12:56:57', '2021-11-22 13:56:57'),
('c564732c136f6689adb77e30360fb89f2d6eb3268d54b7ec00056c63f2b5fdd28d0b6df1af34446f', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:55:43', '2020-11-01 16:55:43', '2021-11-01 17:55:43'),
('c578a532057739912ca5c932262a8b2af239b0c77e67759339aec9505b6ccba21e84efa42b73e0c8', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:06:22', '2020-10-17 11:06:22', '2021-10-17 13:06:22'),
('c57bc53288b4f672054d1f1f200b5979b09507b7d0c50bf28f132f89333d53d6207d2e18036a7eed', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:38:39', '2021-01-07 14:38:39', '2022-01-07 15:38:39'),
('c5921332677c0e62ab9de9762a9b4d75f7d8c777547b3178386925294f7dca6f52b62adb637db2df', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:57:43', '2021-01-02 11:57:43', '2022-01-02 12:57:43'),
('c59d14f8135a0fd3686e2970b5dd4538f52aee1eec439ed52ab3d6c80261397dc9b7af63c42119ce', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:48:52', '2020-10-19 14:48:52', '2021-10-19 16:48:52'),
('c5b5f2e824434c645b1a87a5cb775dbc146444c12e6c1c9615ebd45b803cb50706388a5c0837ed8d', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:20:41', '2021-03-25 18:20:41', '2022-03-25 19:20:41'),
('c5ed0b39e6567e7b5cd009af040eb7274fac68e2e2b5ac8104befe6b42973b24c9eb136f5ee88656', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:49:02', '2020-10-18 09:49:02', '2021-10-18 11:49:02'),
('c6006ecb8a35a1c9e6de19f0aee3e9aece88d40f41110c762abaac7962280105cb8f3446f7b0faac', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:29:23', '2020-10-13 10:29:23', '2021-10-13 12:29:23'),
('c60fae1be5a95f69b1595c3ab2ede125e7e3f08599af31d348db97dea74098e27ccaeaffd2dec145', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:44:49', '2020-11-01 12:44:49', '2021-11-01 13:44:49'),
('c617447c141581f8c975da63bacfe0c997116ad0c8bc2c6ba7882a3c3022a069bd311c45c058d1ed', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:30:30', '2020-10-31 14:30:30', '2021-10-31 15:30:30'),
('c63ad141887bfa44c6d1030640eb74818e2bb519f1aab5c28cee9ef403eeeae8c6897e9e3c81cfea', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:40:45', '2021-01-06 12:40:45', '2022-01-06 13:40:45'),
('c63bc6962e95097b7ff4030301ff93ed3b574a2bbb1d76724e7a7c996e8a592e251f6fad816f31c2', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:08:18', '2020-10-11 10:08:18', '2021-10-11 12:08:18'),
('c64d18ab0c824b93330a8d30c15ba4506d86166ed08bd88d769ef94f4620112b694eaa82558c1380', 27, 1, 'authToken', '[]', 0, '2021-01-10 13:01:41', '2021-01-10 13:01:41', '2022-01-10 14:01:41'),
('c64e42903da457e534b4e570e219648de2ddbbb71d69aab982a23986dd7c782b123085056c4c38a3', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:38:45', '2020-11-01 14:38:45', '2021-11-01 15:38:45'),
('c65d914e6911e5c26d62aa7608a0e4ad9c12659e156d9e4631a8e3a98ff6c1c1158cabb6647d0a7a', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:08:44', '2021-01-07 16:08:44', '2022-01-07 17:08:44'),
('c65ee810c49bce17778803bf6be5fe6411b1c1e99751a952c6da96265fb2a54c0573ca1dad2218b0', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:09:20', '2020-10-17 12:09:20', '2021-10-17 14:09:20'),
('c6a57f0e070249321729c40dd700d557ee747510de5f7369a4f0736b0df6b49d2ae36208b47895c0', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:37:23', '2020-11-19 11:37:23', '2021-11-19 12:37:23'),
('c6afcf016f4600db21973a50e5c86bb2d3d3c8de8e64428bdc9bb75ef77ec8d0e346215865a28e75', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:35:09', '2020-10-19 13:35:09', '2021-10-19 15:35:09'),
('c6b030e509ceb64789cc6179ebb62285c48dd2690e17131528704950858fe5925e0bdd5890d66cc2', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:43:09', '2020-10-19 08:43:09', '2021-10-19 10:43:09'),
('c6b63be21d0f7104a1f1642e65f338f04578dd2a0e55de75409e9f4f13355266fe146e261f06be36', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:57:59', '2021-01-01 12:57:59', '2022-01-01 13:57:59'),
('c6d51d04ff703396a7a2fbf9dabd63b1102fe8e633bd524b9bc3d2a07e6b283e680dca29b8de288f', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:53:17', '2020-10-13 10:53:17', '2021-10-13 12:53:17'),
('c6f4b697ff1ca3e6fe06b9a845102a997fe2106708d962ef96a15b9278ee6c00670568229b73ecb9', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:23:26', '2020-10-11 11:23:26', '2021-10-11 13:23:26'),
('c7006c5acb1c6d41cf941adedd9aa9fa654b7fa752988db72eb7671c38187aa85980874da4978453', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:34:59', '2020-10-03 13:34:59', '2021-10-03 15:34:59'),
('c7091f7ee0d7f48a97f0de9c335afe7b298386732d2d4ad4475891694284e0968cb85c3949b66afd', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:54:00', '2021-01-07 15:54:00', '2022-01-07 16:54:00'),
('c70eae8ee603e4d298c739a95baf36f8876b938923a1628c79f44ac725465b86708a1b3e3e9a5966', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:03:44', '2020-10-19 10:03:44', '2021-10-19 12:03:44'),
('c710c58115781d6d3c2d8efb33fbb05f0cfca8856e0ccec51fe4bd8e1e5f8b2700ed3f80cba86cd4', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:53:51', '2020-11-22 13:53:51', '2021-11-22 14:53:51'),
('c71de1d36b0de21d0f83e2e66de848a915f8f3ecd461751a9d80345dd03c14dce7859cf05226da55', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:26:49', '2021-01-07 15:26:49', '2022-01-07 16:26:49'),
('c72d6cd9b3b1cbe7e89c442a423dc2519a7584f89d58cbd3dc57f81ab3569b73049e5c7d150487e8', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:05:31', '2021-01-30 12:05:31', '2022-01-30 13:05:31'),
('c72e8bc4b86afcda3b71a721f98a54594162c0ecec076e27ddef35bf13e3927bca520603b5e9d128', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:12:45', '2020-12-04 10:12:45', '2021-12-04 11:12:45'),
('c738589fb9b60af3959733e2ec3c9f74794d77c78154c2d5cad4ec0b607f1be2049db63780187962', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:26:56', '2020-12-31 14:26:56', '2021-12-31 15:26:56'),
('c7719779e93a171239b8619caad2cb48922b0220244546446e377577faeddd3c58ab69ac2b496414', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:23:19', '2020-10-17 10:23:19', '2021-10-17 12:23:19'),
('c77de9b76c813ea07d5ecfa2f7fdf0577204bcedfd6407c4e9b12d84fc9d937334c02a90a4380c81', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:10:53', '2020-12-06 11:10:53', '2021-12-06 12:10:53'),
('c7ce3d16d6ee3389c1c5004118f24c3fa8d4d723b031663f368e98501ea44d38dc43c8a1dd3f3f69', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:04:02', '2020-10-17 14:04:02', '2021-10-17 16:04:02'),
('c7f592b99abb603c7d38cddb26ac5639361ad5824495aaf48429216157a8a963557e928d2b2e5cbe', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:34:13', '2020-11-14 12:34:13', '2021-11-14 13:34:13'),
('c8125c429ae956fa9bfd277b5a9f0f5bea8848ff21ebd01a59ff4643c1a0b671cb722c3276839e8f', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:40:21', '2020-10-28 17:40:21', '2021-10-28 18:40:21'),
('c816b7a48fd1de2824f2e2a33b4c29434040d43a57f5904b72516489a3ec916ec419e77c7d5e7de8', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:24:07', '2020-12-29 10:24:07', '2021-12-29 11:24:07'),
('c827e8cd691edb440f343d12d2eedd86c6a344148c257fd77cdc6ac9a9c88968d8c79e5acf29907a', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:04:08', '2020-10-23 17:04:08', '2021-10-23 19:04:08'),
('c8447d4110e584e797ed87d9ff55f3ec577a70bb41c778037d122fc7bd9c2cececec030ec7aed2dc', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:15:13', '2020-11-01 17:15:13', '2021-11-01 18:15:13'),
('c85c5d92a700517ad68751e4ffe9c8db3573265636a56be3a227647ea3621d54e0d61da91a67a71e', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:08:23', '2020-12-04 12:08:23', '2021-12-04 13:08:23'),
('c8628c301bbef35ad30b7344842729f91fdc42432697d85e703e765720f2d80f7c0d1c516fc14b5b', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:38:01', '2020-10-19 12:38:01', '2021-10-19 14:38:01'),
('c8a62cee16b032456b5f0916a0be95edd8421356051da148887f98b3cf70fa428df9ad7a1a0ec9c8', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:11:46', '2020-10-13 11:11:46', '2021-10-13 13:11:46'),
('c8b9c2db155b524dd1bd4501f0949b7506d7a3bfe8091268eeefc1e87870043ab74a4682e9075fbf', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:46:58', '2020-12-06 18:46:58', '2021-12-06 19:46:58'),
('c8dc010661cf942f0bbf643732454196ec09c6d7dcad1ae78de97264cbc11b079e9c1ff13fecd18d', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:48:29', '2020-10-13 09:48:29', '2021-10-13 11:48:29'),
('c8e4339f61f60d3d44fbf62a133a0088700fafdcc115122869e51d03d453d4a914d8ea0d3745f2f7', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:19:25', '2021-01-06 12:19:25', '2022-01-06 13:19:25'),
('c8e597c71f9dde41aff2362f656aa22ddbb6f0bfba803405dab39f18d1ab5b9badc88a57ce7e6119', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:52:13', '2020-10-10 10:52:13', '2021-10-10 12:52:13'),
('c8f4fb49a0450962e53207ca84a87ebf37d51b3f9636da6c793c29d9d5507d6e3430e1ea2dd0e6b7', 27, 1, 'authToken', '[]', 0, '2021-01-22 10:31:59', '2021-01-22 10:31:59', '2022-01-22 11:31:59'),
('c90706f5e344e10ad35abe968467eab3a1749f016a0b8d3883dfdb7b9e986b31072be01a7838ed4f', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:07:11', '2020-12-06 10:07:11', '2021-12-06 11:07:11'),
('c933db963de623341ba0e51a7453dc507ba26e03e3c9efbe9b6583897cee2996731a47b1c5684013', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:18:37', '2020-10-29 13:18:37', '2021-10-29 14:18:37'),
('c9688ca4f00ef173ad0f744860aafeb47b995012e0607aecdf3feb6488d7c48c047c3fdcf7a7be89', 27, 1, 'authToken', '[]', 0, '2021-02-01 16:35:30', '2021-02-01 16:35:30', '2022-02-01 17:35:30'),
('c97482e1148088fe29446c252e8053dc7cb9badbc59b78bb312579bd6c3c258c4b5fa50414821a8b', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:46:28', '2020-10-17 10:46:28', '2021-10-17 12:46:28'),
('c9801993813939c38ab5d766bbc07e0987deacd46bdb6bbc4f12c95fcc37779ef131dd885b50a4d0', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:15:18', '2020-12-04 10:15:18', '2021-12-04 11:15:18'),
('c989b66076920843fc08dfe0dbd85241e0ef3ad1ce61c419d246e8ff074338835f0cf581af3a1ac9', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:44:41', '2020-10-31 10:44:41', '2021-10-31 11:44:41'),
('c98a7e5a81eaf74ac67ffb16f059d8af0249b39642443dd4aff1c2d66d9ffbcc8eac7a05f04603ba', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:51:47', '2020-11-19 09:51:47', '2021-11-19 10:51:47'),
('c9a2508e126e191840ae55d11307b502387cdd12255ce9f80bc018b1abfed4bb8a154c49be2d98c0', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:52:08', '2021-01-06 14:52:08', '2022-01-06 15:52:08'),
('c9cce49f47d2f69a69ebc34a5393ccd4d36c358afd27f190548680c1a6237497a386aa6b28b4590f', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:13:19', '2020-10-13 10:13:19', '2021-10-13 12:13:19'),
('c9ce67148dd6a918193bec5fe6fd819184240839aaea0e946ff7db54126e5d74560ce8addce57e61', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:30:21', '2020-10-13 09:30:21', '2021-10-13 11:30:21'),
('c9d5738f36c589ec6ca629586288e4338ec28d042500f70cf80c2f06e292acd5c0fdd4623a468ab2', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:33:09', '2020-12-31 16:33:09', '2021-12-31 17:33:09'),
('c9e79a3638a994cb01f0229421b6640dda5a7e1f8cdd39d872f8c1045409630d3bf0f446efef9d5a', 27, 1, 'authToken', '[]', 0, '2021-01-28 18:01:18', '2021-01-28 18:01:18', '2022-01-28 19:01:18'),
('c9f07eea122dde1a84c5d14ff31da66ccd878c6bcf86a944df6ed5aa073b05d6253691beb308dda0', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:52:02', '2020-12-31 13:52:02', '2021-12-31 14:52:02'),
('c9f7ab5f4cec0a4e511ca75a10a2db9f1cbc5ed6f1ca5b23cb331767d0dfc6b8a15c6460914b6c8d', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:49:35', '2020-10-25 13:49:35', '2021-10-25 14:49:35'),
('ca03f6e88b9481735936cdd017a1293d006e84bcf5715916bd76e2dac6594ee80939e3b8616f3ff9', 27, 1, 'authToken', '[]', 0, '2020-11-05 13:45:56', '2020-11-05 13:45:56', '2021-11-05 14:45:56'),
('ca369c61307535cc642f70bb2536e62eb34684fdb27d70a624a70cbe48b678eb659082d14d8aabc7', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:31:06', '2020-11-22 13:31:06', '2021-11-22 14:31:06'),
('ca4cc04b157383cf9f544a5d68266f3925f43e0d0683611fcd3b7ffa32edddf2f52a6dffec53c1be', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:18:52', '2020-11-19 12:18:52', '2021-11-19 13:18:52'),
('ca7b827d238b715ba312ddf5e6c9ddc93b5eb8405ee0adc7e20f423f2360824d5db9ba66f58c602d', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:05:55', '2020-11-05 15:05:55', '2021-11-05 16:05:55'),
('ca7f07b0126d4eda70d834dc0758828ae1a2cd65a27d585dc16f8087b617314614fd238de175dd19', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:18:36', '2020-10-13 11:18:36', '2021-10-13 13:18:36'),
('ca81d26f1da9cb9cde82ed86d23068b5ad681ceef416b61d8fa7b8ecf5a37022d71d26c38e90ffb7', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:51:22', '2021-01-09 14:51:22', '2022-01-09 15:51:22'),
('ca83e467cdb89ca438e549bc7759a4afc6678af0126bd63c8a1e6f0d3e77c78758ee42f4a5b07712', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:29:05', '2020-10-17 10:29:05', '2021-10-17 12:29:05'),
('ca861f571328706a9bff439b9f7fdf6ef41c528be85dc7c391693e54cf1744632958fe50ceb6d3d6', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:13:27', '2020-10-29 14:13:27', '2021-10-29 15:13:27'),
('cab2df1a715e710b13e5d538c8ba000f56dc3aefa7e3128180347312a0436594b91ffdb51dbbb9bc', 27, 1, 'authToken', '[]', 0, '2020-10-06 15:24:06', '2020-10-06 15:24:06', '2021-10-06 17:24:06'),
('caea0264f39ceefd215d1818751f4197f1e621311cb175b5b8fb2d68daeb1bc6e8d55e91db6c1c5b', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:26:06', '2020-10-25 13:26:06', '2021-10-25 14:26:06'),
('caeb950f9c7320ed5b3d485f5d29e8d6ab77aa98f178366f4f2f1400a8e7b720c08c1987d537028f', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:37:31', '2020-10-30 11:37:31', '2021-10-30 12:37:31'),
('caf7f5c5f8531609021fd4ee3381ed33fe040a21ed50f9928eac149e711ee48edfde6f98a85dc3b4', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:02:21', '2020-12-31 14:02:21', '2021-12-31 15:02:21'),
('cb071c45fe550f4dfcf54b67066e54089e2442440d3bde3352fbde2fed8d7831509daa72dfbca0ee', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:14:05', '2020-11-01 17:14:05', '2021-11-01 18:14:05'),
('cb0c04169bb04a1dc72a639154e6d279a1b5a00c2723082e96a3d37e2a67ea34f20546f0ed951167', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:52:08', '2020-12-28 10:52:08', '2021-12-28 11:52:08'),
('cb1cbe7004a71b9aacf7cbeed2cf76c2a142643f10d8c2d170d036c5aa4502ed7a84ac9f38448a41', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:15:51', '2021-01-26 18:15:51', '2022-01-26 19:15:51'),
('cb352bca3e1fc029d835c0d427dfa18c775025358cf5f3ca55f3444d885aeab7a3e9f1ce6b9a76da', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:55:23', '2021-01-09 14:55:23', '2022-01-09 15:55:23'),
('cb35e7862d3727eea44f6a1fe5ed6c0acc3d4f0764612cd495082812adce9679be8a966fc974edea', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:56:39', '2020-10-03 12:56:39', '2021-10-03 14:56:39'),
('cb571088a8e63c2777c83e1b91c2cd8ed101e5421d7f8ca2c0b801101031405228aafd7c44e2f924', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:55:51', '2021-01-09 14:55:51', '2022-01-09 15:55:51'),
('cb5cebb50f39329a7e011a475cdb3f9b60d11c8b0db09bcd1d944e438b6b3f83a5d49e7b3abb1e87', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:54:39', '2020-10-19 12:54:39', '2021-10-19 14:54:39'),
('cb6dad66a281d81dcc466a6fd06d3698141e13673d18cda51be3d2939f7f4317c1541f04694ce603', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:31:29', '2020-10-17 12:31:29', '2021-10-17 14:31:29'),
('cb7e2f2f9bdfb124f70e4e85620d5d993a7e5a3a8ddd0538fe9304978a709ddbe0bf42fe8a158e30', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:58:09', '2020-10-23 12:58:09', '2021-10-23 14:58:09'),
('cb91126ed9627f87f797641535bbf31faab2b6adaec9a4b009148c82f268b94c6a2fe28dc147167d', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:05:17', '2020-10-31 17:05:17', '2021-10-31 18:05:17'),
('cba21afdca6b241c383196bad806ecff6fd0d3ddd2a9c64afc43ee05dc5d1b457d3766d3d7a3da01', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:14:06', '2021-01-28 09:14:06', '2022-01-28 10:14:06'),
('cba28ed5cead8b329b65b900f8d17fe10f13a9ced69afce158843898aaef492bab897338755dfc7b', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:48:22', '2020-10-17 09:48:22', '2021-10-17 11:48:22'),
('cba890d3bab1f77ea4e0d11a36dc00affda41499d2492a52292cbf2c6747f11c034359a8aa97fd1c', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:12:38', '2020-11-12 10:12:38', '2021-11-12 11:12:38'),
('cba963a9dcba56127c6cd9b05a9dfb6ab6b5ea4938cff5427557e334209f920797454b06c81be0a1', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:47:35', '2020-10-03 12:47:35', '2021-10-03 14:47:35'),
('cbbd4fd5094433742c5e704e9e37102a4bb18ed661fa178dce8d8f31c62d222e2d78c8baa2168ef5', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:53:30', '2020-11-22 14:53:30', '2021-11-22 15:53:30'),
('cbc34f817023991c11186d7cd1496598212a2884e10f166e27f53cc42b79df604342941a1ed590e3', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:24:25', '2020-10-13 10:24:25', '2021-10-13 12:24:25'),
('cbd2248917c473a5d3b0d8c7eaf0459aed0fff56afaa81ee9731471181adc374f3b08fdc986d9b9f', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:22:55', '2021-01-07 14:22:55', '2022-01-07 15:22:55'),
('cbd42b8fdcaf50313c678255b74032090408bb724ed580d371fe44e2a3e239b97aee6d84e7340df2', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:09:11', '2020-10-10 13:09:11', '2021-10-10 15:09:11'),
('cbda8a598864e6c2e8d4ad2c77ad66ae5b4dbf176798c5d8bd05808ec2199c036aaa666f04dbadcd', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:22:45', '2020-12-29 10:22:45', '2021-12-29 11:22:45'),
('cc0c8cca151b777d70342a16e0bd89f8663866bc792e460f9e7b8777c02c020e8045f07b97b3525d', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:34:36', '2021-03-25 18:34:36', '2022-03-25 19:34:36'),
('cc15524badddabb0a9f97135dbfa896f94d8268998ee78cdc29dab9251cb1ad785c1f4fd435031ed', 27, 1, 'authToken', '[]', 0, '2021-01-07 11:54:24', '2021-01-07 11:54:24', '2022-01-07 12:54:24'),
('cc17f68d44d44cb915eaa1f66ce0f11597e56130c3343630e104991fcc3ddd47dbb55c93b55fe5b4', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:36:19', '2020-11-05 14:36:19', '2021-11-05 15:36:19'),
('cc1815a64c5746c002934dcc19aeb713893c5fb89ddb538c173d65578c6dfdf873d50cedd5c98ac8', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:48:00', '2020-11-01 14:48:00', '2021-11-01 15:48:00'),
('cc199f53b95e2460b1f7fac6a9ad12f5f22b5b3dcedc7a5549255e0a417a8f2a3f04af64b7169c3a', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:09:13', '2020-10-23 15:09:13', '2021-10-23 17:09:13'),
('cc4a620372bd83a078dec890de084b21fcbffb823a80358af58f4d763264fd8a995a2e88ab283c93', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:22:37', '2020-11-05 16:22:37', '2021-11-05 17:22:37'),
('cc6f98f79126ef781b6b56b385aeedac51036de082bdff54d8aefcb351d83bd813fd545d23bd6784', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:13:09', '2020-10-10 11:13:09', '2021-10-10 13:13:09'),
('cc77e6fe63e6e15063fb2a1e048b042e282aa68e1ebd798954ffbe8f7fd74770f706dc6b28761048', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:51:11', '2020-10-17 10:51:11', '2021-10-17 12:51:11'),
('cc9e98d1107fc369914c39e18c0dc1fd73cffaa5fc4c0e4febf792bb82c5444f9f478a229d17d9ec', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:47:43', '2020-10-15 10:47:43', '2021-10-15 12:47:43'),
('ccaa67a5a36ed0829a62bb1faaca2c26b02fd4d93127d1db7c991ca842f918520502335e09638c86', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:33:57', '2020-11-19 12:33:57', '2021-11-19 13:33:57'),
('ccc039d8ea1fe283e9a23c5175edb5df1c319782750945154b898b2f59dcb3f3fce219ef937ca4aa', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:56:12', '2020-12-04 09:56:12', '2021-12-04 10:56:12'),
('ccc2a99a159777fcdd5e2a06d0bc1eb4d93b02570fb3d00ad6b5c97e442b9660a642a4e17355199f', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:16:46', '2021-03-27 13:16:46', '2022-03-27 14:16:46'),
('cce921eed85992e77afcef3ffdeaafa864d5d561d1fdda29aaba068362c0c5c95a94ddd3123cbaa0', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:23:34', '2020-10-17 12:23:34', '2021-10-17 14:23:34'),
('cd1f76c26bb338c76796e69aaed5f31d70abca5b4d04a916d67f2dde2164e49335863954347a9b0b', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:02:55', '2020-10-17 11:02:55', '2021-10-17 13:02:55'),
('cd3a84afa8df3434991f4ec7fbbd2ac3bb2ab7aa41f64a16cb62bddf572833ad523c4de5c46eb7c8', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:30:49', '2021-01-28 09:30:49', '2022-01-28 10:30:49'),
('cd6feeac629ef967e1bcc8f7a24aaa08c31ca4059f63fb0de7a4b0791341540e20215b16ccdac39c', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:02:42', '2020-10-10 13:02:42', '2021-10-10 15:02:42'),
('cd75b2c32df3006da7a7a6854d93c9f1f07e7ca06eb810c056ef32b1d6874ae17e359e18540b80e4', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:08:27', '2020-10-31 16:08:27', '2021-10-31 17:08:27'),
('cd7d05486edddb719a54ec6bb62656d5e2c7d3ed341485dbc104858a448175fdba6126bd8919ebcf', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:09:31', '2020-12-31 13:09:31', '2021-12-31 14:09:31'),
('cd9b3d5854c811ab049c80c9f082a51b01d148d409e64b24dba2564d002a72b3a08edd925b3c0c74', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:35:14', '2020-10-19 12:35:14', '2021-10-19 14:35:14'),
('cdb2a76688cdb0b6906fd0c8a93b46846a1e5faa7e6697dba02abb611194859edb9157ed6a09cc33', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:01:12', '2021-01-26 19:01:12', '2022-01-26 20:01:12'),
('cdb5fcbc6afa74128a1876383b9506b82cc2e5430af472f221a6055a162f569b8f59a1582c1d9195', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:37:50', '2020-11-01 14:37:50', '2021-11-01 15:37:50'),
('cdc0e8b55d8a9412e82e77c8eed54148d2555f9e054ac3923346c03ca48f0466f1f19026d2069edb', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:51:13', '2020-11-05 15:51:13', '2021-11-05 16:51:13'),
('cdd5247505a490476132ba765b524a4d1cebe08c10f51e90bba3f754689a413eb875f40702a7b1dc', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:16:33', '2020-10-29 11:16:33', '2021-10-29 12:16:33'),
('cde666d73d218fd28878d197fe63a99759de7315610929be08b467f4e27a3372991742a3fe1525da', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:26:33', '2021-01-06 12:26:33', '2022-01-06 13:26:33'),
('cde8a06813257343f274a1da3c0cbc7bee06dc1d94ad861929c3a16ba2379a522ad29a8d2901ba9c', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:38:49', '2020-10-17 10:38:49', '2021-10-17 12:38:49'),
('cdf16d31a7f1874a0e7ed67f258058be9e89918b7413b19cd5a4f9c143343c9b96ed40629c399f1d', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:27:01', '2020-10-19 13:27:01', '2021-10-19 15:27:01'),
('ce05ddd866f7a193351826b73ff366873faddbc37f72a6468862ad33d0f50d5a8c380ca761a4e795', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:31:59', '2020-11-15 13:31:59', '2021-11-15 14:31:59'),
('ce0769b644f574ac58f5200d7a20c26e5129b540b9812a971f52d7c8999707e634add344df0d9b34', 27, 1, 'authToken', '[]', 0, '2021-01-25 17:25:26', '2021-01-25 17:25:26', '2022-01-25 18:25:26'),
('ce16a3051b497f0803f2af934936abaf1d8c59f21c9d9122b6f7d8be51ee8f5f88209c6134401415', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:46:39', '2021-01-07 15:46:39', '2022-01-07 16:46:39'),
('ce37ea9d5df439475f720db53a9d619b4abfa9e68667b35b76d23ba3cbca19d388800310c4d0bff5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:16:34', '2020-10-03 14:16:34', '2021-10-03 16:16:34'),
('ce4c6886584b12df8fd45ba101368f506277cd87419482c07ee2fb23141a4f7d7a5b18c5e91997c3', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:40:46', '2020-10-11 11:40:46', '2021-10-11 13:40:46'),
('ce60a912558643e8481b96a6ebd36b99dfc4110909b2e9841328be04a1c50edf37735ae1f0d392b3', 27, 1, 'authToken', '[]', 0, '2020-10-31 16:58:45', '2020-10-31 16:58:45', '2021-10-31 17:58:45'),
('ce6c1e702775c2cc27f3530bc61e2c08c91583c14dfa0f0488c58e5b35f42c8cf474a08ac8e15bb7', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:25:04', '2020-10-19 12:25:04', '2021-10-19 14:25:04'),
('ce73ad885124778e9f9dd86667ad6f5632389ee5a24912eb0aa0dffe03bb459fc65213ad9ef57b9a', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:36:08', '2020-11-19 12:36:08', '2021-11-19 13:36:08'),
('ce7b12fd1d46eed1975f353e4e4748b327ae964d902d8e529746eb369053d648461b5a45ba06f499', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:10:34', '2020-10-29 14:10:34', '2021-10-29 15:10:34'),
('ce7e9b90938eca890b79bb4a1a759bb8e415c812224fb7a1ad8dce0044da783b64fe132bca7180b9', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:47:31', '2020-12-06 18:47:31', '2021-12-06 19:47:31'),
('ce83ad96bed76050b540cb749780f3b2befc88e21ef4933c9578495624256ad7af15dc5fe5bf4d46', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:41:28', '2021-01-26 17:41:28', '2022-01-26 18:41:28'),
('ce9b9798af553ed672548622b2559a21f2a7261ffe1ed4887778fda1369d35ec62bfc6e497b61ace', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:45:50', '2020-10-11 11:45:50', '2021-10-11 13:45:50'),
('cea444a40b2390475d2ab4b4079ecbda42bf6bf9f72132e2c318f1633c39f310fbe72d3f18bdfb76', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:18:29', '2020-11-19 12:18:29', '2021-11-19 13:18:29'),
('ceb6959c505caf09850bcf2866392e37555722d2771f218097a494070eb0c416e479883aa9e28213', 27, 1, 'authToken', '[]', 0, '2021-01-06 18:29:47', '2021-01-06 18:29:47', '2022-01-06 19:29:47'),
('cecfda9e480f296263a074e36edc6c89f8bfa2b924e0cc9ceae63a2fbb524e9edabdae17cf418ac9', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:01:58', '2021-01-26 19:01:58', '2022-01-26 20:01:58'),
('ced1f383b1425f53ae8b85865e422974cef7921e65c2042e69ba9a60043c86762297ce80c38aad4b', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:06:00', '2020-11-22 13:06:00', '2021-11-22 14:06:00'),
('cef04b4cb1754162786146c6541c163b648b69ea10a93b86da92dddf74e7000f9964b9ba39fd568a', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:38:58', '2020-10-17 09:38:58', '2021-10-17 11:38:58'),
('cef7c7ff429ec67c876fbfa8e6ea1e3d3a570f5af6f72d1c2a2267fd1409da5646e50cbaa4f716b6', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:05:19', '2020-12-28 11:05:19', '2021-12-28 12:05:19'),
('cf02108cdf2a02d73d53aecc64b664659d3d02c535117327904ed5befb80ff9ecf3da3e37663c112', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:10:49', '2021-01-07 14:10:49', '2022-01-07 15:10:49'),
('cf13c47472963fbee4d9a89c2db21a85c1b4060491de26d785c88271f9f5cbe0f58b868cd5317a13', 27, 1, 'authToken', '[]', 0, '2020-11-14 14:16:04', '2020-11-14 14:16:04', '2021-11-14 15:16:04'),
('cf1668cf8af6f3c46910677f605ac71bc6f4322b054ea63141aa1e0e6b7d51e99a8e82725ba466b3', 27, 1, 'authToken', '[]', 0, '2020-11-12 12:59:06', '2020-11-12 12:59:06', '2021-11-12 13:59:06'),
('cf1e58b8783cd84092dff382430e160a04cd36104c4f1d42d49c1bed9234428613b34a5050c58ac6', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:45:17', '2020-10-31 14:45:17', '2021-10-31 15:45:17'),
('cf2a1ae1dfe7622d0abd69406a90a62078f7be45fa1b2c9cfaf070a39a4051cb4115b1b0fec574a3', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:09:10', '2020-10-25 13:09:10', '2021-10-25 14:09:10'),
('cf2b9d4aa5e18e286c85d25a5c2d03546412f5cdb356a5d7b35a6356e8a0299a8366d92fc571dabb', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:24:11', '2020-10-19 14:24:11', '2021-10-19 16:24:11'),
('cf3ae685ed5eed0a47c9a141338c01e7a436d9e93c7ef84d786c6b137d1b5ce83c6ad14267d5a01f', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:54:45', '2021-01-06 13:54:45', '2022-01-06 14:54:45'),
('cf3e9cfecd65b15c1a1e1c1ecbaf435f8070cd9f97d5cb4171832a9739264a4073f6184974dd5131', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:33:25', '2020-10-17 10:33:25', '2021-10-17 12:33:25'),
('cf3f65887d958a70c6b90a07ae78fefe1d6a917cf7df6621aa51f5286402a1edc817b06398686b7f', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:17:38', '2020-12-31 13:17:38', '2021-12-31 14:17:38'),
('cf55c667304e8cec7bf70625da53ecaebb06233191b72e5e75a4761494548080985f102740e47477', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:42:13', '2021-01-03 14:42:13', '2022-01-03 15:42:13'),
('cf59162278c82c43c0cda3c8cfd7793057f66f8e899fb7d5143371cae5e6fd58759773f5cb3cb866', 27, 1, 'authToken', '[]', 0, '2021-02-01 16:31:27', '2021-02-01 16:31:27', '2022-02-01 17:31:27'),
('cf5a0cbf41ab7cf5a5c8f2f032abe87b4ba6fb8fdfbe9e4470ca6fbe155b6f01f62bcd613c134f7a', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:22:44', '2021-03-25 18:22:44', '2022-03-25 19:22:44'),
('cf78a46de03a331e8b86ca73a1167aed6d2c8287232b3404c9378f767d62f6d92c84a89028745a11', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:13:33', '2020-10-13 10:13:33', '2021-10-13 12:13:33'),
('cf7c1cfdb8276eff7aa1488303935131b9c51b65ff6421e6a2b3263c88ad5029c6d4b8a213dc6ba1', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:59:18', '2020-10-31 11:59:18', '2021-10-31 12:59:18'),
('cf7fc904882deb9254d5ca7a15895fbe581c199f9d555635461bc903655cd1b5d7f9794f19a1a1be', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:21:18', '2021-01-03 14:21:18', '2022-01-03 15:21:18'),
('cf806533d05f762196990f2b2e4a46ae7121cf3d3f7520404ef2609ea9aac27ebbb9bb599a8c0076', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:37:38', '2021-01-03 14:37:38', '2022-01-03 15:37:38'),
('cf85b700e7fc8efea9925c1523d3c8043e0d53eac03f8cbd833ea9e337bc7b5114f918e6e33e680e', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:06:43', '2020-11-19 12:06:43', '2021-11-19 13:06:43'),
('cf899d25175473f6ddbe05755bcfff769197356d3c02402d3398993a3fefe8619abd75e6565ffa2c', 27, 1, 'authToken', '[]', 0, '2021-01-27 18:35:34', '2021-01-27 18:35:34', '2022-01-27 19:35:34'),
('cf9d62aa62a60786c4ad41b095eaed41bba455ffacc4f840283b05cc3efe24cc2429692df90453f8', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:02:54', '2021-01-01 12:02:54', '2022-01-01 13:02:54'),
('cfb412c63054f3c92c4070f6e0114d6b71e8dbec8c530e5884f1f5761dc1547d3a37faad39238770', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:16:53', '2020-10-13 10:16:53', '2021-10-13 12:16:53'),
('cfc1fe8c351d32e4c272c050b767bd3f4268ea9215d3d07ef655be2e5fc90660f5f7662a2c7b3ad2', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:51:30', '2021-01-02 13:51:30', '2022-01-02 14:51:30'),
('cfff3388cba1fa598974687229317bd4c06334b386f66ede9e6bbae2059b540a4fd4b1cbad69b5e5', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:52:57', '2020-10-23 15:52:57', '2021-10-23 17:52:57'),
('d01383dc251511a44983c6ef098d3ec2a22d5257361b4d7d1a07340935fbe5e82fa6f89a51bc357f', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:38:59', '2020-11-05 16:38:59', '2021-11-05 17:38:59'),
('d01c8b42823705e7bd3b8444cd92385511dd1bbeb5e728bb6d3fb2621bd2619983419d43d8f77b93', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:38:51', '2020-11-22 13:38:51', '2021-11-22 14:38:51'),
('d01cc2a7b97c36d287cd51b9ce646a22dddc321e570bba4c5041982b688570bba6027ff9dc77bd4b', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:19:29', '2020-11-22 13:19:29', '2021-11-22 14:19:29'),
('d02b950c419efc4c8720ac2220b1a49a968bec462baa1ca950f980812ed0edd2e7c766f0a0e87b00', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:15:34', '2021-01-09 15:15:34', '2022-01-09 16:15:34'),
('d059b268394da389ae6b9f0ff8072367d8b04545fe299dfb53d4f11e03455cbde02557710d316057', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:02:13', '2020-11-01 11:02:13', '2021-11-01 12:02:13'),
('d05a2dddc5a16bde259f58c38f9796769a7c5d12325b87c00350634563f7584b9ae15bc214cd2ad7', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:14:11', '2020-10-18 11:14:11', '2021-10-18 13:14:11'),
('d05a33e110b487eddf99286770e6e1ab6fd62e36d81c052eca5f79f2a5dc4b4c46b78bee8eba31fb', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:23:53', '2020-12-06 12:23:53', '2021-12-06 13:23:53'),
('d05fcf23bc22e1baa3319d039e0a8840a66c91f5b0132bbedd0dda8dad611d15bc246f9d93301753', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:48:21', '2021-01-01 11:48:21', '2022-01-01 12:48:21'),
('d072eb2195f2c9d64c5c77250caa960cb5ab450f314f822a41895e3e521277c8102de375fee365cb', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:00:09', '2020-11-19 11:00:09', '2021-11-19 12:00:09'),
('d0751151488237b6c293225a878631a665aef0e7439c3b849a19ce71a0629a26ecb995bc35dd1a68', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:43:29', '2020-11-01 17:43:29', '2021-11-01 18:43:29'),
('d0827db58b35696e5b2f38f1501321fd15fab91cb580608643a64436ebf1cde6585660705a00a7d7', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:09:37', '2020-10-18 12:09:37', '2021-10-18 14:09:37'),
('d085ee7b387720060af6951f0b496064af2154ea0a7dd9558eaf5cbac20b0d36f038e488f1678f63', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:42:18', '2020-12-04 10:42:18', '2021-12-04 11:42:18'),
('d0bb5c4525621606fcb9a18727290c7271d30ffe1310640a9b87173ea79558008520953f5afb5fa9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:08:11', '2020-11-01 17:08:11', '2021-11-01 18:08:11'),
('d0bf6b6dfc0be63e33184721e3a6e45411b9868956ba600b3fbda5eb35dd051a3102445f1c501dac', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:10:17', '2021-01-07 12:10:17', '2022-01-07 13:10:17'),
('d0c31efe4d970f3c86c263ea0238474609622b13537328ebed4ede0f2989c86d0ea1abf83c1715fd', 27, 1, 'authToken', '[]', 0, '2020-11-01 15:53:09', '2020-11-01 15:53:09', '2021-11-01 16:53:09'),
('d0cc700f0743f9138d4609feedf4b642583ab3ecd134075946bc4a403e83d07bdd6a618e77c5640d', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:06:21', '2020-10-08 15:06:21', '2021-10-08 17:06:21'),
('d0cd89bac2e0530ce0c06365fe6668fa1a7297e1443f1df130d89e32c8e75466101c43a7cfd488ea', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:40:11', '2021-01-28 09:40:11', '2022-01-28 10:40:11'),
('d0d0a8513bc93591e47cef65f636c601f62fd069b3854ccc10b7be037b690a360e680e6358389055', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:36:49', '2020-10-25 12:36:49', '2021-10-25 13:36:49'),
('d0d1b9fbec3fd7832ebf54d9d220463d01f0aef0fafe36312bd21b5464b8925b5d9783048e65bcd4', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:58:31', '2020-11-19 09:58:31', '2021-11-19 10:58:31'),
('d0e70d3dbf44468f68f1032d66a85bfe66235b96555abf100a741de1399f47b9f8076273298cffa7', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:50:47', '2020-11-22 13:50:47', '2021-11-22 14:50:47'),
('d0f3eb6d57913bd623811b57ddff18ec3564bd402f7c54a8ccf1ea53f09d577395f8ad9c45d6f980', 8, 1, 'authToken', '[]', 0, '2020-09-26 07:44:30', '2020-09-26 07:44:30', '2021-09-26 09:44:30'),
('d108b072344f2d1d91efeefee22534e919987878f08b4cf1033c2f2e1ecd91f95788a5fe43624e96', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:08:57', '2021-01-07 16:08:57', '2022-01-07 17:08:57'),
('d10e8f706190b1845db591e23fe193a0892f8e67288d7d9cf88db05f9125ddb0b11104196ebf2fc0', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:55:37', '2020-12-06 12:55:37', '2021-12-06 13:55:37'),
('d11c55f64801284bb68e2dc27c7efff9ec0a94e0e14f5521dd74efd537b8b822f1680c31c34da940', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:16:30', '2020-10-19 09:16:30', '2021-10-19 11:16:30'),
('d133ad8888fd62ce45a62f9019c8c9e5d9660406fe667a59e37d800c8e3bc30922990cb28e3311d5', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:53:28', '2021-01-07 13:53:28', '2022-01-07 14:53:28'),
('d13a9d45d5aa9e7ef1895dd7f534f1b2521e6992b3852ebaf0f1a9f67d76c01b130de04a6217a817', 27, 1, 'authToken', '[]', 0, '2021-01-09 11:11:58', '2021-01-09 11:11:58', '2022-01-09 12:11:58'),
('d148fdaa514152438b4765b9b5a5fb57e30b77d50787e32548c99dc14de0973c08a3e89246d87ce5', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:45:57', '2020-10-25 13:45:57', '2021-10-25 14:45:57'),
('d14c729ebbc1fba0fc28843184096e65c6e5f6d0f64cf84143652c82b67d0fae22791ff3b1cfcac7', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:17:52', '2021-01-17 14:17:52', '2022-01-17 15:17:52'),
('d15d334802c20de807e55913527e15b859e40337dc6f4d01cc248aaab131ed748d1a36257c24f488', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:26:57', '2020-12-28 13:26:57', '2021-12-28 14:26:57'),
('d16bbf58107300ebb9aec066003ace65ab95340d0c167a74fbf07989057c7d6d669d85816b512085', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:08:47', '2020-10-19 08:08:47', '2021-10-19 10:08:47'),
('d16d3de6f704ffbcbfb761415977713b533fb842a553c5817c9eb9a12046f4480202e226adb1ee01', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:06:32', '2020-10-23 13:06:32', '2021-10-23 15:06:32'),
('d17c29424fb70ea50342e6919f7daf2dbc3577d9d214be58944dd2311bac43dfae22d44a1262ce8a', 27, 1, 'authToken', '[]', 0, '2021-01-24 13:57:17', '2021-01-24 13:57:17', '2022-01-24 14:57:17'),
('d18f7cd2fa1bc1bf45c99b35e84fd8850b3ea4e08584c5f4d2ed56fbd0489ac277e39fc9da866591', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:15:33', '2020-10-19 08:15:33', '2021-10-19 10:15:33'),
('d191247d8fbd3b0a3f3eab0cc6f8e1949889050aa477e03c0b0205ec648726b3f9b43501c0f0de3b', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:00:18', '2020-10-17 11:00:18', '2021-10-17 13:00:18'),
('d1baf69b8dcdb6117a2fcd6f5bb40339d3437768c82f6791ad50f35b7de8283ca4130d18394eeb21', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:14:28', '2021-01-28 09:14:28', '2022-01-28 10:14:28'),
('d1d786195391d9fcdbab2839cb6a27a3c3e777549159da96c22542785af7dd91209725c9b7e1d2d5', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:55:48', '2020-10-17 10:55:48', '2021-10-17 12:55:48'),
('d1ecf8aab0c6bcbfe47a110b83effa7ba35b8aa883e9b95ff946a26f8b85a793d6254c97661d6baa', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:45:24', '2020-10-27 10:45:24', '2021-10-27 11:45:24');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d1f3c29db75f742aa4d7a439d693b0419f72018e48a0084de679af2fed25ad8c8dd46a3ca2a0afc8', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:39:15', '2020-11-14 15:39:15', '2021-11-14 16:39:15'),
('d1fb0a7d341955d5c512716b40cd84f96ca6302d6e57d5b427c7d02007cf9c366efd9b3a93b0b967', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:47:48', '2021-01-02 11:47:48', '2022-01-02 12:47:48'),
('d202e84cbc77b026f66335add2cf149a70411f1a67e6dd9111a81bd5c1b5ef226e137dea052a87ac', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:18:50', '2020-10-30 09:18:50', '2021-10-30 10:18:50'),
('d20a80fa2722b6ce445d8c3c9b6dca4e2764a37d53eeff7fc8bb6ed4ff66ecad274b01248057e194', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:08:22', '2020-10-08 15:08:22', '2021-10-08 17:08:22'),
('d20c39471ae2f9fe254aebe97c2727c6af9598456b29d08070cd3347a9a2b87763e91ff6050d82fc', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:48:20', '2020-10-25 14:48:20', '2021-10-25 15:48:20'),
('d222ade0e93324078c1d192b21deca512897e43b881592d8aa5923896b41cd6a9d184d62c32698d2', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:55:07', '2021-01-26 18:55:07', '2022-01-26 19:55:07'),
('d2320f34d815adadb3d17af7ac2802b8685785e8d5477c31d16c4a64bf589721e65b6d8c74c2769d', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:09:28', '2020-12-28 12:09:28', '2021-12-28 13:09:28'),
('d2358456ba196e0e48b89909b6f23edeebf5c96a2e8e8a785215df6ef2f2f43fad56b7a734a0f7e7', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:50:29', '2020-10-31 15:50:29', '2021-10-31 16:50:29'),
('d249f2d3e4d95348317dd662300713af86eb892b3a602d9b876f4650059588aba78510ae130030f5', 27, 1, 'authToken', '[]', 0, '2021-01-30 09:51:16', '2021-01-30 09:51:16', '2022-01-30 10:51:16'),
('d24aab40fddb49e1cb067701d7f85b6b154bf8f2d9e4139f64a7f92b2df5b903cc041d65b3be4451', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:37:08', '2020-11-19 12:37:08', '2021-11-19 13:37:08'),
('d24cecd26c9780cb3dc2d94233b7909141c44270f5a76e608bc8b3847a528a2e05f1ed95bb8dd80f', 27, 1, 'authToken', '[]', 0, '2020-11-12 12:58:44', '2020-11-12 12:58:44', '2021-11-12 13:58:44'),
('d2509ee036a754389c8d1d51eb5e66f2fdd9e8e44c46721edc3657422e0f25ee57a9ce91f7058b02', 31, 1, 'authToken', '[]', 0, '2020-09-27 11:52:04', '2020-09-27 11:52:04', '2021-09-27 13:52:04'),
('d264c730a10be7aab4cf5b902abddb848b2e3cf7d26c73be64e4b03620f6f79668bf50379d6453a1', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:49:45', '2021-01-02 10:49:45', '2022-01-02 11:49:45'),
('d2688dc67ab1b1a0a830855c9564323c81b35cce0d81f6ebe94a43fcf4b7d65aa3972c2c1c7dd7fe', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:30:29', '2020-11-15 13:30:29', '2021-11-15 14:30:29'),
('d26b4e62066772966493ca072d0feebbd8a7c771556075891fb1f797ef7bdd3189546c9a34d2b268', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:27:45', '2020-11-19 12:27:45', '2021-11-19 13:27:45'),
('d276f0afe3b63063e05191a60e449a2e2309c0c795c19a6628e5443e906687005c4d8325c21c373f', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:10:48', '2020-12-04 12:10:48', '2021-12-04 13:10:48'),
('d2a027380d74cca0adba17fa5f1a8b89978c02fd697d09525df3bf2766219a61676f8eb0b07583a9', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:54:11', '2021-01-26 18:54:11', '2022-01-26 19:54:11'),
('d2b9bc12274eb30d44b1620fd941bdca39a3a6c6c13d835bab29f81ce97ce81462704a78ebaeb8e9', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:05:48', '2020-10-27 13:05:48', '2021-10-27 14:05:48'),
('d2c303dfb3bfde9a813afad5c348417ba5679f2104bea30dddc4ad1f0c1bc6930ee232e993be382a', 27, 1, 'authToken', '[]', 0, '2021-01-22 10:28:57', '2021-01-22 10:28:57', '2022-01-22 11:28:57'),
('d2caa7f1b446dd161b8909ea439dfa7e00cdeabde7b717350acbbd1620a5477a269fc3960c166762', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:36:21', '2020-10-31 14:36:21', '2021-10-31 15:36:21'),
('d2ce326d3e9e7eb8f8cca48af98023696e9d31a82666a477cb0f8f0a31d9149c7267b676d504a79b', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:03:05', '2020-12-28 10:03:05', '2021-12-28 11:03:05'),
('d2dbcfb635ed540eb59aaff6d422e39506cedf92cf623ee3396725f03cc7d2aa3de9d1791ec25ea0', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:23:30', '2020-10-18 10:23:30', '2021-10-18 12:23:30'),
('d2eb39d18dda9f35a08a64ca812965588e10854855e178562005fa00be09d2aff4b31710db071f09', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:50:57', '2020-10-10 10:50:57', '2021-10-10 12:50:57'),
('d30d7a6637b7d3489ec91dda1a251528f756437d75d966a5fba83efa0c2e262386e59036a6f9d38d', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:27:56', '2021-01-28 09:27:56', '2022-01-28 10:27:56'),
('d315ae4cdbc3ddb0fd6d6ed2bbcfb38d80670d883ea7123b0b54aa0c6fe126ec4870395474e99252', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:03:23', '2021-01-07 16:03:23', '2022-01-07 17:03:23'),
('d32483c068fcedfc448582a7849bf2e1f4862477f514e34837a7164ea513184350c67443d1ff4878', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:03:30', '2020-10-17 09:03:30', '2021-10-17 11:03:30'),
('d32d6613a2e3712906692447c6bc188e6af7dbf4f116cd102e48b683f8e50c25374bed645964e82e', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:12:09', '2020-11-01 11:12:09', '2021-11-01 12:12:09'),
('d33ddb5382c3ab9158a50a5d1ce536cc05fdc835029344f4b65e02748ff40e862b08521c07b94786', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:52:05', '2020-10-17 10:52:05', '2021-10-17 12:52:05'),
('d344d072e0402da363408fcca1ddb943f86beb6ac8670aa62a6e5714a2e5fc624a5376136a8963a7', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:05:02', '2020-10-31 17:05:02', '2021-10-31 18:05:02'),
('d362039d73d4c1f033c4133f7f396407923f337472d658157b31349c083d1ee8ce6f9c4cd1e60411', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:44:56', '2020-11-22 12:44:56', '2021-11-22 13:44:56'),
('d3734e8f0badd63267b910c58243b53c24e8d86d14211208a483e8db78c945404b5067e06514bf4e', 27, 1, 'authToken', '[]', 0, '2020-11-11 17:04:36', '2020-11-11 17:04:36', '2021-11-11 18:04:36'),
('d3792c3c27bb8b8c0be98cc77ea50dd94fab62eafcc497682f9c077ecc4a0279c600f62b852cc8b0', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:22:51', '2020-10-17 09:22:51', '2021-10-17 11:22:51'),
('d37e40f8bd45811c4d5cf62649574f414c63c0488292d6e7e82080821ee901010d8023321fec3c2a', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:44:12', '2020-10-29 13:44:12', '2021-10-29 14:44:12'),
('d3864455cbd9d4d59b494ade167c84a0ec9eceaefca5b28600f12f120d14ea4c766a155e4c1bf4ed', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:53:08', '2020-11-22 12:53:08', '2021-11-22 13:53:08'),
('d38d26291e6ea3c3947f133fe04ffe7c33da4d8d955c63bf1059cf234ac6a23efeed8aaf3b7a885c', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:33:31', '2020-11-19 12:33:31', '2021-11-19 13:33:31'),
('d39572b59ec33eb9c4b6990e82bf1fcf33913216c0c0d9f2329d479e000e9953609191c7520ec2c7', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:15:11', '2020-10-27 10:15:11', '2021-10-27 11:15:11'),
('d3aeba352923048d4f044aca0a3124466a6fcdec7e4b97a25b2014eec66fd073f05efc36aa81e519', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:56:07', '2020-11-01 14:56:07', '2021-11-01 15:56:07'),
('d3c0f62ecad9ca184a3d13a50458e71debd8ad0114c27444a74f2d31b18b5a68b6adcf8ff6c4f775', 27, 1, 'authToken', '[]', 0, '2021-01-29 12:08:39', '2021-01-29 12:08:39', '2022-01-29 13:08:39'),
('d3c2fed0cac1ed0dc8e9d232d9228efac4e2c48f34b8c6a7213fd6f7b2bed4de950eb67a72cf6099', 22, 1, 'authToken', '[]', 0, '2020-10-19 12:11:09', '2020-10-19 12:11:09', '2021-10-19 14:11:09'),
('d3c7035b0e50a510f1fad32b884e544c13fc073ae2b4b434e79c7b759a7398d5daa02a7adfafa9a1', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:47:35', '2020-11-22 12:47:35', '2021-11-22 13:47:35'),
('d3e553b622b14a3b9f6f43b65c9eb31fc05a0282a2aa8b2fc7f2dce7567181cbf9c23891ca805660', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:05:17', '2020-10-25 13:05:17', '2021-10-25 14:05:17'),
('d3e7262d4c8c22b3135e9c5a892faa2fa22b53058c831c4ad5e7bad41178abbc237bccd8ce269791', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:20:10', '2020-12-31 13:20:10', '2021-12-31 14:20:10'),
('d3ea41fa9e112219cd4aba03299da36db1ed7577ed584958c7ddce795f42de6089e9122b9a9bf577', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:08:34', '2020-10-31 11:08:34', '2021-10-31 12:08:34'),
('d4038d0dcaefefd5997e65f79f475193f6a777b0d53b0fc5807455dabf2b8b4c502f07a7f044ef4d', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:34:52', '2020-10-19 12:34:52', '2021-10-19 14:34:52'),
('d40f4807bf89d18dc971bbd205f9c5b60703720eeb5b51aa0edbce5ad5131b53e68240eeed457b9b', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:16:45', '2020-10-10 11:16:45', '2021-10-10 13:16:45'),
('d41148825cd43599d7ae8fbe0941e957272df1350f94276a0ba3031f0819a358cb63204d9ebe0441', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:27:24', '2021-03-25 18:27:24', '2022-03-25 19:27:24'),
('d4181b9f4f9b3887228b2464c75794e858fb199733aabad4bd3b90a9638ace8ebb8e75d99115931f', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:49:14', '2020-10-17 12:49:14', '2021-10-17 14:49:14'),
('d432fddb6b1263a7cc5e195ed1f0b4316e5792b8aa3f3a937f962b87662ff15a0be15ef9b91ace4f', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:47:48', '2020-10-23 12:47:48', '2021-10-23 14:47:48'),
('d44a8587f5c292be373a23b6d104e45b908ad887ea8b52a83b4ff3c9ef52fa1fb484a2252cce90c0', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:05:16', '2020-10-31 11:05:16', '2021-10-31 12:05:16'),
('d4691f098b9976e9c64727425dba4579d43d9f638e3aa745a5af1841ded52b05e9eb493983da39ea', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:51:06', '2020-10-23 15:51:06', '2021-10-23 17:51:06'),
('d476b76fbe25090143ab1f477872c20585fc579da4bce8316643d1289855745ce79964a3678296f4', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:57:37', '2020-11-01 11:57:37', '2021-11-01 12:57:37'),
('d48f3ee7bd3048cde7238143b886f060d442bd7fa8fa21900ef70d8f4b2851522ce2f4fa325e2588', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:03:38', '2020-11-01 17:03:38', '2021-11-01 18:03:38'),
('d49da27c861b085d8ccf65e90fa017a23379267763131b959dfc6e1ece9374ddf4ab0ea46e118548', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:17:48', '2021-01-29 15:17:48', '2022-01-29 16:17:48'),
('d4c123f58de67e0401aad7886fed6e6c7f774f7b7a7a4e38f42da776880a8591f8bf61b7fbd3f25f', 14, 1, 'authToken', '[]', 0, '2020-09-26 08:03:09', '2020-09-26 08:03:09', '2021-09-26 10:03:09'),
('d4c37f57de86846f9e5f9a4a3dba03433768a2c5e176a5c8f58649a6b16fc921776901f8642292dc', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:37:23', '2020-12-28 11:37:23', '2021-12-28 12:37:23'),
('d4cb81ec62b29cd7158d83b855de2f9a49dfff43b4dc06a2e736d9fc2937d7adfcedc3e0ff4401d8', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:11:55', '2020-11-01 11:11:55', '2021-11-01 12:11:55'),
('d4e48b223899000208a17d51290c7c26bd5b84e997625c42452c3e840b2d2c9e6bb2a9ea5ee138ec', 27, 1, 'authToken', '[]', 0, '2021-01-02 12:57:06', '2021-01-02 12:57:06', '2022-01-02 13:57:06'),
('d4f47e603d14d2c675c43cf54740d71f274b6cccbdc4f88f9453f98c185593ed08dded30b8e5c986', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:18:51', '2021-01-01 10:18:51', '2022-01-01 11:18:51'),
('d4f69681f92ba39856976217c976beee32d0ca2b4ea88eb9f9958412fe1cbbc83a1adada76a59ccb', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:59:14', '2021-01-26 18:59:14', '2022-01-26 19:59:14'),
('d51e9644dbfe3f369556240906a7720587b0a7c44b0fdfa61e9ca8543e72cc7d0e7bac92c3becb28', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:02:22', '2020-10-17 12:02:22', '2021-10-17 14:02:22'),
('d53b892155ab4c282fcf9619798f623ce168cd85477f4a49d92977a150a7cf597b58bfa96e236a22', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:30:50', '2020-10-13 10:30:50', '2021-10-13 12:30:50'),
('d542ee71d4bd11de842afc07e408c8df1b1a099687f3a82bb861ff75c5a8ba9ec86a4ab16bab2a60', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:48:01', '2021-03-27 12:48:01', '2022-03-27 13:48:01'),
('d558e7c7b708c24b3b13a776344eafa4cd1205f4a54ed98592fb943497a8070f9407ff3373e18bf9', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:59:34', '2020-11-01 10:59:34', '2021-11-01 11:59:34'),
('d5590e24398bb081dcb27796e22bad0f152f8bdcf6274896ae875bd1d62fd0dc4d03de9a508d360e', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:25:33', '2021-01-07 16:25:33', '2022-01-07 17:25:33'),
('d578e2700e09c39665c5d1c5970a883aa26aba5efdcebfa24f17559c6fd525747fa481dd501c9f97', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:06:56', '2020-10-13 09:06:56', '2021-10-13 11:06:56'),
('d57b89d7649805d5e8238ab235745b71c2aaa7c3a82d57a193761cdf58c90426039c36914d0b4ba7', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:42:45', '2021-01-26 17:42:45', '2022-01-26 18:42:45'),
('d592ca65dafb070d1524b67366099dc2f9e5b37db1c79681c2e3cb8a02bba0ad77a5637ae0f2c944', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:49:37', '2020-10-23 17:49:37', '2021-10-23 19:49:37'),
('d59d53616e7f12be93453492299d0466838f4fa63e2e3062cfa419e4de8bc8cad039accaf8043220', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:23:54', '2020-12-29 10:23:54', '2021-12-29 11:23:54'),
('d5ba89aaf1a9f82faee30b72cf811067fa534ba0ee6af8355f04aec5f139d5f832310ef6a6e9d237', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:17:14', '2020-11-01 11:17:14', '2021-11-01 12:17:14'),
('d5bdbc22eba967f5669f99616e0dd260ac4508e506cdccaae6f0c9f1ba7cf65033deb1f61ec31e3d', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:06:34', '2021-03-27 15:06:34', '2022-03-27 16:06:34'),
('d5c6b245f24c68faa8674df09ddd97c215f24b25a225987d901f5493d44ea7ae4a94df4c508b4f6f', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:47:40', '2020-12-06 12:47:40', '2021-12-06 13:47:40'),
('d5e073c31f66d462b5ca387db22f89e04e04cf9edebe65d38e370a86e23455e148768da19c60e877', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:59:06', '2020-10-17 13:59:06', '2021-10-17 15:59:06'),
('d5efc524dc3aa98de586011dfd73bb5def6f7ff6bc5fc74fc2f2fcf7d8adb072482160db32cf8c36', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:36:10', '2020-10-25 13:36:10', '2021-10-25 14:36:10'),
('d5f11a436917cb21667f509d22130f654b03457d2c38c1727dd0819691e67a9ab715523f6efafd7c', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:32:05', '2020-11-22 15:32:05', '2021-11-22 16:32:05'),
('d5f28b228dfd92d242b96146ea965b1b78024142835242903a2bc3dedc3266128145efcb0b68a640', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:57:02', '2020-10-15 08:57:02', '2021-10-15 10:57:02'),
('d5f9da4d73706a7e34f8eee326b1252d5a865cf9668f56847dbb4212292afa8f315c271d802f8db6', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:00:52', '2020-10-10 11:00:52', '2021-10-10 13:00:52'),
('d5fee6d91cbae0d6c5087cf5a0b5da7887b4c7057e65fe363ba6c78d01d846f35706b3c5914b4d78', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:49:13', '2020-11-19 10:49:13', '2021-11-19 11:49:13'),
('d61b8de006b6bb576f929aba095e62bf0471b42d3f5d915e73fa3b7c7fabf6663166c3af596a029d', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:40:22', '2020-10-17 10:40:22', '2021-10-17 12:40:22'),
('d62c60183874e3cdb73d92cdeb57ea67d3508fa52e9427bb7f3e7c459f0f499b758e7fad553f5698', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:54:08', '2020-10-17 10:54:08', '2021-10-17 12:54:08'),
('d63a5a0e531365cfe3b45a34512ace3ad3d8f87fd1ff1bf0940e3c8c6ebfc6378beb5ca0515a3ef0', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:48:31', '2020-10-11 11:48:31', '2021-10-11 13:48:31'),
('d64852bca137cb3b5a0cc88e6d5bc45fcdf9366fd7faff8a60fe35418ae8f509be4a04efdfaaafde', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:35:38', '2020-10-03 11:35:38', '2021-10-03 13:35:38'),
('d65743bfca3cae2751dba877c51fcb9362e2618ce51a26321969497e202cd8ee735586ca0cd8847a', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:42:26', '2020-10-11 10:42:26', '2021-10-11 12:42:26'),
('d65822c8b6d4f2c3d47a7a35e0320e4d911adbec1d24ca474c874dea52762f2492f8246a38fe5fd3', 27, 1, 'authToken', '[]', 0, '2021-01-06 19:02:50', '2021-01-06 19:02:50', '2022-01-06 20:02:50'),
('d6754121af9c49afc892db7adb64dc38f8dc9ec8ede78591f09dbc958539d64e2a3fabf39cc7a39f', 27, 1, 'authToken', '[]', 0, '2020-10-19 10:06:28', '2020-10-19 10:06:28', '2021-10-19 12:06:28'),
('d695e8df456ee05b97e5c9a158907b1de2b3a00c4e24f97db36f84ee3064ad3537dc2164ecb843cb', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:09:50', '2020-12-31 16:09:50', '2021-12-31 17:09:50'),
('d697008891a8047327c8b18ef76bad0e71904732c9d8e40223ab8ad75fe7e9418203730c2dcb0adc', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:28:53', '2021-02-10 18:28:53', '2022-02-10 19:28:53'),
('d6a203b2b59e13526aacad833dae547b22992f75c91c75482773c5681062cf83a5d62c301c996fda', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:13:53', '2020-10-11 11:13:53', '2021-10-11 13:13:53'),
('d6b87fd94f0074dbfc2f5a0a60f21946b9f15e60dd51882b0b6c6d966d246298fbe1292e61a65352', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:00:37', '2020-10-23 10:00:37', '2021-10-23 12:00:37'),
('d6d57f0520a803a4a97423f02bcb3b5e9d8b7fa7d5a70a49c5ae5b95237b44a0163451d94ba39163', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:13:31', '2020-10-03 13:13:31', '2021-10-03 15:13:31'),
('d6e54d4ad31f23d45cf30e481a9ae29e3fe637fe9fa1e3ca5660c902ec7d8158228956e731d6b778', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:41:53', '2020-12-04 10:41:53', '2021-12-04 11:41:53'),
('d7117c67e70388a5f0ff87505613c7b051ce22f6d98846d3ed50e2836e6f2671c8cc5a031f0f52e3', 32, 1, 'authToken', '[]', 0, '2020-09-27 11:54:23', '2020-09-27 11:54:23', '2021-09-27 13:54:23'),
('d715ecde77c167d12fbd887e498cea01fd9c15972ff039b80481937ac5ab206e573236189de52a25', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:34', '2021-01-07 15:53:34', '2022-01-07 16:53:34'),
('d726d3fa1c207d833b8a73bb137b3324d62c62fee5af62d43793071160ca22b2087ce7e542cfd0fc', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:11:54', '2020-10-19 09:11:54', '2021-10-19 11:11:54'),
('d7379e24dc59414e42b8fa952ff6b4bf42cd1665e782a0983cc3a70e74de0bb7894953ed22e4a928', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:31:04', '2020-11-15 13:31:04', '2021-11-15 14:31:04'),
('d7676749e61e5b9582fd45586e96e60a8da093b672292a599c205b74d26ef0eb40ae255fe9624270', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:15:13', '2020-10-17 09:15:13', '2021-10-17 11:15:13'),
('d775ba2ee5022513006a487cf9e52d91ef1ea9d228fd37df4b092fccc56c21ebc6825e3b54922132', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:18:26', '2020-10-29 11:18:26', '2021-10-29 12:18:26'),
('d792588ff58cdeed057ce8c1fe585f0f1079eb0257d1aaace4e0463ab94678ecd7e08ec2b668f6b0', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:18:26', '2021-01-09 15:18:26', '2022-01-09 16:18:26'),
('d7c6235570874bfb54ebf1f23ecb0b37b1b7d37a20dd45ccbdd34344e3952591723ff1cac9e1a588', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:00:46', '2020-12-06 10:00:46', '2021-12-06 11:00:46'),
('d7c6e9c2d73a010a8a784a16fdfe1ce1c977789fbe9600654eee9db008461284db104d4d487f7cee', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:16:38', '2020-10-17 14:16:38', '2021-10-17 16:16:38'),
('d7de6ddf70f3aefe745834a931a383c92c428277ef8fb218392fc1deabced24278da2db99792c1cc', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:40:58', '2020-11-01 14:40:58', '2021-11-01 15:40:58'),
('d7e6760376af5e8bf373fb858bcd81cef9781ac4c361161b9b4b6a30c130bd1be5a36f43c08f2e1a', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:32:07', '2020-11-01 12:32:07', '2021-11-01 13:32:07'),
('d7e7adf0e98f0c27d8de2781ed4e93c51cc68cfc07fcb3e2a17f070273988901cc26debf694cc295', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:31:16', '2020-11-01 12:31:16', '2021-11-01 13:31:16'),
('d7e8182b546ecd03dbd4e54f6f8078f2afbe758df54676aa77f1f950429a2ba33f30f786950b164b', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:16:31', '2020-09-27 09:16:31', '2021-09-27 11:16:31'),
('d7eaa1c29f5901f364f89bece3455bbb330bf44e2094881d3a794c8203993915006f3546bc81c937', 27, 1, 'authToken', '[]', 0, '2020-10-23 14:55:02', '2020-10-23 14:55:02', '2021-10-23 16:55:02'),
('d7f0140f6d69c0f4462d6825f9dc46977e4df5e37fa822ce0590e20ef55af2f9048648e1fec5af19', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:07:39', '2020-10-18 12:07:39', '2021-10-18 14:07:39'),
('d8228f65b6a0807e7f8843434085ad8acd817926891a31fbe1aa8236d147f54a330497eae41d292c', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:30:59', '2020-10-18 10:30:59', '2021-10-18 12:30:59'),
('d823a317d7ec3753d07dc00c55d6fc069ea3e1401f96bdeb12160fc6125f7e112e4f49a0996048b2', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:22:30', '2020-11-05 16:22:30', '2021-11-05 17:22:30'),
('d82f9b4fd08efcb1a9e4c12731d268eb959db5e322b2706541843c79c1064a387d6f51f2fde80728', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:30:23', '2020-12-28 12:30:23', '2021-12-28 13:30:23'),
('d83c8eccd1550e220dca3425ffb1d2574ef335371f5ee5dfad2315918a8c68d5a9e25929917482d1', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:41:16', '2020-12-06 10:41:16', '2021-12-06 11:41:16'),
('d842fa27a15af7bf89e507c94100b526aae0280911ad5b8dccd9ec1c041eeec1934181d7bc1fafb7', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:34:25', '2021-01-29 15:34:25', '2022-01-29 16:34:25'),
('d8461d488447e8dfedac4252646184372e4fa5189e32e730347d1ccfcfb20f41f45e9baee751b65a', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:20:33', '2020-10-13 11:20:33', '2021-10-13 13:20:33'),
('d84c6bf5451f3f1867892ae4d7d451fe8e5d6097e96ae070377f459e37fe4d23a67e6ddf78b3cfcd', 27, 1, 'authToken', '[]', 0, '2020-12-28 15:40:36', '2020-12-28 15:40:36', '2021-12-28 16:40:36'),
('d850073b24d43a34f9ca00188cdf98730c1922d0cbfa19ff27f8f3001f3df1c3070e0e33da1c8215', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:52:31', '2021-01-06 16:52:31', '2022-01-06 17:52:31'),
('d851e4bd9bae4d611f3222b21769d0c00cbe2e6d970011e084a785e11dd0d37087c8b1b6a0a05b85', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:23:49', '2021-01-02 13:23:49', '2022-01-02 14:23:49'),
('d87718a9e0419c0ee420f7e7a6f7b0f8dab24ea0e040b194bfc04a6c4fd6a3a8aeb49eea00ed4b8a', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:09:57', '2020-11-19 12:09:57', '2021-11-19 13:09:57'),
('d885b60ada6fb29cda003d36766810a4926ead33c6b613c7d25fabc8e3d4552bc0b2d5aa53f21b58', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:37:08', '2020-10-28 17:37:08', '2021-10-28 18:37:08'),
('d8b302d531022dbb2e35d4b46716906248cad407c37bfa8f5e282cc094a8712dc2a3718692a11dfe', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:08:26', '2020-10-25 13:08:26', '2021-10-25 14:08:26'),
('d8ba2962132b8b275512dccb0e54e68a019688bebd0ea4cfd843c7ef4a901852662cda3979a8871e', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:42:56', '2020-11-01 10:42:56', '2021-11-01 11:42:56'),
('d8c199e0d2ed71d59cb150aeb5c09c9e0c73148a836abad818b5df6f95c7a3a63eb65c51c3b5a6cd', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:31:10', '2020-12-31 14:31:10', '2021-12-31 15:31:10'),
('d8c4832e33d5123f7d1ea1092f8e0f7786aa58459f4ed70e55a99c667ee64b061426f1fc16fda2cb', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:41:56', '2020-10-03 11:41:56', '2021-10-03 13:41:56'),
('d8c7a3518a411b640c37076883d8af2fa30ece2fb29cf6c07e802d9385285f707802c0a1f20f236a', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:04:40', '2020-10-03 14:04:40', '2021-10-03 16:04:40'),
('d8c80a63451f6ceff36c4cadd62debc677ab2c3852b4d26ad6446036e6dd7d152b18c5c823183603', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:46:41', '2020-10-20 08:46:41', '2021-10-20 10:46:41'),
('d9227f6d1ce902eff0b928cca6112673dffeb275bee4a4af80dd7052c2d341fd1f42ebf922253312', 27, 1, 'authToken', '[]', 0, '2020-10-27 18:17:45', '2020-10-27 18:17:45', '2021-10-27 19:17:45'),
('d9461861b2e345edfd84b26b1fc45d406b9d8e4771fc467e0a9665316e7a8f82ae04ca91aed5c613', 27, 1, 'authToken', '[]', 0, '2021-01-17 14:32:50', '2021-01-17 14:32:50', '2022-01-17 15:32:50'),
('d94fa110b4090bdfacf11ce9f225b14c8259370483c73510b92035cd34eac741ac2642a165a70507', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:46:18', '2020-12-28 11:46:18', '2021-12-28 12:46:18'),
('d953aae5142f69e1f5f1acdc303a9aa667f6d61f575b886398644a5a01bed97e3c503c4e2dd47463', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:51:27', '2020-10-23 17:51:27', '2021-10-23 19:51:27'),
('d958a5bd21cc39cc1075466faaaf2ae2a53b23f56020e16b65c46f0be09c374e3aaa1d37a24dd52e', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:43:17', '2020-12-28 11:43:17', '2021-12-28 12:43:17'),
('d96ab0d6ebfebed00af2632aedb0c9b5d2542455fd9e3344ba56e89921a60ef3f85213c150f0fd0f', 27, 1, 'authToken', '[]', 0, '2020-12-04 13:24:05', '2020-12-04 13:24:05', '2021-12-04 14:24:05'),
('d977cbc6ba1bc57bf0876bc05bb2796b2f784a042534e65b84707694400cf4a69216434d47ab72c1', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:26:51', '2020-10-10 11:26:51', '2021-10-10 13:26:51'),
('d9831edae233a7021b82a8ce5cd0ccdea4e65ed58ba7b0d898afb06cab0a0201de32f8800360a990', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:34:40', '2020-11-19 12:34:40', '2021-11-19 13:34:40'),
('d983f17f9cb89a968389d077dfb8c9a213f3b4c9469cc46e8f4c15f2328b1c9e61e13f5e3b07fe83', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:35:14', '2020-12-06 12:35:14', '2021-12-06 13:35:14'),
('d984f65506796323c69fc6ab6ced63e40e213b1e40a58d7b05c0804a93c46550c747b3d98ad9b343', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:01:39', '2021-01-07 12:01:39', '2022-01-07 13:01:39'),
('d9a295c2b050e60badb28d4fd3902aabfe3b6a17d418aad322ffefefffd82c2ee057477a95e11dc2', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:54:06', '2020-10-05 16:54:06', '2021-10-05 18:54:06'),
('d9b48da41c85f2ca21dd94f06771275e777fa6783ec7a6b73e23c0c74e5de484531d0a5d77ea2bfb', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:44:53', '2020-10-19 13:44:53', '2021-10-19 15:44:53'),
('d9ecb4a0010eebd5c42606ed7aa5c8b75b8eb06cb310850daf4f294a9f11c47909e6f7017a036300', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:38:17', '2020-10-05 17:38:17', '2021-10-05 19:38:17'),
('da01c950e379aa91e0cfb44bc266dd3e2a47f2e10fa2d0a79667f40a488f363dc36f2b4fe5c18561', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:10:41', '2020-11-19 11:10:41', '2021-11-19 12:10:41'),
('da01f7541142a25c342b58ca3450d6128a22aaa933d0416a003e04158594f3a5958a52cf8fb47e4d', 27, 1, 'authToken', '[]', 0, '2021-02-06 10:58:46', '2021-02-06 10:58:46', '2022-02-06 11:58:46'),
('da122d150e7bdd4459b81a0404fdb9829a9aff859d18f33e82d0cb6b868ea7b459e217d74320ddfa', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:36:10', '2020-11-01 14:36:10', '2021-11-01 15:36:10'),
('da6da5c341b234f1a229132c223cab0e54f929be3a4ea211cbd13246ec8beeaae29d62cf8152b39f', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:21:14', '2021-01-29 16:21:14', '2022-01-29 17:21:14'),
('da95e0874325327ae4e40b43bc04d71ec5892bfc25e6fcfdd5c215ad6262b491ca34be58503c6ab1', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:14:53', '2021-01-26 18:14:53', '2022-01-26 19:14:53'),
('daa58d6f103e22484b3c647fb2605a3eaa603d2e054b7cc2ed580c43636ca28f98885be466ccfd1d', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:48:15', '2020-11-19 12:48:15', '2021-11-19 13:48:15'),
('daa95446594133a2a617497422461786af254d0de63ce616fab95e41066d296dff5c63eccb6b3adc', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:07:31', '2020-10-19 14:07:31', '2021-10-19 16:07:31'),
('dabc7d259e2736d1ba1d1a2e567e6530233ed0bf2c09e4cf54cbde7b1e815a305d4f747453620540', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:39:53', '2021-01-07 15:39:53', '2022-01-07 16:39:53'),
('dad42cbee4e46cecef437ab7ad77f19c294c4644fbc92e7e485a1b5b5820aa3b4aca7ebff0fab059', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:41:56', '2020-10-31 14:41:56', '2021-10-31 15:41:56'),
('daec71a729f1c08f466402adcd5ee0c6dffbb2caa3cc9645ee4b73384fbd0cdc7ba14e22afcff1bb', 2, 1, 'authToken', '[]', 0, '2020-09-23 15:24:30', '2020-09-23 15:24:30', '2021-09-23 17:24:30'),
('dafa14a4455edf63100a207aec2850f34642f0c526838e2d31684692fee63ca72cdc6a403008aaa5', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:54:59', '2020-12-28 10:54:59', '2021-12-28 11:54:59'),
('db144a71472bd8523944b88e84eaa5e15c825a3c6819dfee889c0903fe673002fe96af75487cabdd', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:08:22', '2021-01-10 12:08:22', '2022-01-10 13:08:22'),
('db237ff59c9bb9baf987a9d2e4225acd1b91a15839c6af4142d729fa617055a68cd8a941a22e2d91', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:04:01', '2020-11-01 14:04:01', '2021-11-01 15:04:01'),
('db3cf461ce5b02f2195d32c6730c77180cfcc7fe4c7dd20ad9d6f9ee03546549e9d065c885e2a88c', 27, 1, 'authToken', '[]', 0, '2021-01-10 12:56:38', '2021-01-10 12:56:38', '2022-01-10 13:56:38'),
('db46a80faf1b9fbf126c5bc5cf57c1f277a2fe6d4de32b1d8255bd07de4643660c761bf721116857', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:02:05', '2020-10-11 10:02:05', '2021-10-11 12:02:05'),
('db4e9d5b9bf8e509378b5498a04231076e2301c97cff295bb07863eff7bc2be0aa77e629c794b45e', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:35:18', '2020-12-31 11:35:18', '2021-12-31 12:35:18'),
('db5b38b66c3f01e9c8c66a2e0dac362a50099d7b631aa08007224710c75b6d758dd4be52a96d9805', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:39:53', '2020-10-17 10:39:53', '2021-10-17 12:39:53'),
('db64c85dddfd49fda8741e3c0d2a0d1e4f49fc9ab0bc6aa529b2c16e053d77aba5758129780d7a7a', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:09:28', '2020-10-17 12:09:28', '2021-10-17 14:09:28'),
('db7c5708056f053464a9305fe82f11971e6c52e03229bf0104b416034426e72ca2b5335e566b75c6', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:45:56', '2020-10-03 13:45:56', '2021-10-03 15:45:56'),
('db7cc207a359345e97517b14f3288a0fd137888414f8d6eca98268e65c557f67b36ffe6fb04d5f4d', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:39:52', '2020-12-31 13:39:52', '2021-12-31 14:39:52'),
('db9f97d14b882f04e78efe779ede916efe5fba55dfd15d980af83d41c45d49fd173bd8855faed15a', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:07:44', '2020-11-01 13:07:44', '2021-11-01 14:07:44'),
('dba3f7a50ba905271c853e6bce1f1de69803cebd8df149e4b3939ec7f72b724c54bd3f977e4a0c9e', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:41:44', '2020-10-03 13:41:44', '2021-10-03 15:41:44'),
('dbb3a609194774f34d948dfca9f3beb02b4032a4e5f8a16744b8e760d222c6a8e114b79ac020fb15', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:21:23', '2021-01-06 12:21:23', '2022-01-06 13:21:23'),
('dbc59d5da1ae83351b6e11916c57a2bef208b7bc3bf0615066b4fc0e8da3005dd76e4dc2061369f3', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:25:59', '2020-10-30 11:25:59', '2021-10-30 12:25:59'),
('dc0bcf03963f5815a5723bd92a3f41816268f120554a30a357e55859b161095fba5eb89ac8e3f7e9', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:34:23', '2021-01-29 15:34:23', '2022-01-29 16:34:23'),
('dc4eb2d496f1e1a6e03aa5b7293e021c3987ca74fcd029807b7c363408019b8ec63039a590336b9d', 27, 1, 'authToken', '[]', 0, '2020-12-31 10:32:26', '2020-12-31 10:32:26', '2021-12-31 11:32:26'),
('dc524b007c769eeefa1b8764b8c6bdecb46401ba5d388f1879b90ae1e8244be0c3a8910223233d64', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:39:34', '2020-12-06 18:39:34', '2021-12-06 19:39:34'),
('dc7fd6acc47df9f33ff8bd27c7df23ba9935db4fa4e1b69f3307912b481edb7148f19e043422b611', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:34:20', '2020-12-29 10:34:20', '2021-12-29 11:34:20'),
('dc8184466c1c9f18844bb8abba3f600956f021fa2847320ce71a8837751e808fc3b8ca34f2c7fa7b', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:52:07', '2021-01-01 10:52:07', '2022-01-01 11:52:07'),
('dcad0972fbcea490dd75dde6502b4352b56de1435b69fed1c1dccde2c206a84f2c4420d9863f32d2', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:47:27', '2020-11-01 14:47:27', '2021-11-01 15:47:27'),
('dcad50043d8179a8891d837d15611c6e2d06dcd03abb5195ca5fb8e991ccee9206fb6c877f784587', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:07:25', '2020-12-31 16:07:25', '2021-12-31 17:07:25'),
('dcb57d45b75025eff8a820ef99def9414bb7dddf3e6d4393ecc8943e9d097fe847eb20e46924af14', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:36:34', '2021-01-30 11:36:34', '2022-01-30 12:36:34'),
('dce0636b5f85f85a3ec472a0894b89dd73f10fbcd78b77190da86169a43801ab651e3b20b6e7a442', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:31:26', '2020-12-04 10:31:26', '2021-12-04 11:31:26'),
('dcf33db733f571f1a8ccbc9d2c2a48f5d4736c1170839decd7b470156999465f6004b5da246587cb', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:14:01', '2020-10-17 14:14:01', '2021-10-17 16:14:01'),
('dcfcb14008f6b1b59a5e9c4079757008d1efc35384feb0675ed8381f2f2a497921923006a2f26ccc', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:32:02', '2020-10-10 10:32:02', '2021-10-10 12:32:02'),
('dd2a17360b37ce12646f90a351023fe29fa9784c52e5a3d37f979bf15ea54ae62e01eacf62d2fad2', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:44:43', '2020-11-01 16:44:43', '2021-11-01 17:44:43'),
('dd2c6df3211a28275ed1f4949914ac10568ac619a847b07a78a37bd114525c94766f6fdead7c6cfe', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:37:12', '2020-10-25 12:37:12', '2021-10-25 13:37:12'),
('dd2d88534be527f794c4217e2480dfd7e6e57143feeaf7e43fa93266658da94a561c23a0bbae6eba', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:41:44', '2020-10-11 10:41:44', '2021-10-11 12:41:44'),
('dd3269165a797b1daa3b3dff62bd3537e03a535eb82e683f492084dba00e38b7014d8c1758b2cafc', 27, 1, 'authToken', '[]', 0, '2020-12-04 13:17:19', '2020-12-04 13:17:19', '2021-12-04 14:17:19'),
('dd369e26113c39efce701a86f9260956eae26ea30e0fe1a145f1de0ce8c2d2c68d58054ffa439e02', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:28:13', '2020-11-05 16:28:13', '2021-11-05 17:28:13'),
('dd3b15f0f894b5abfd6905d1eb2ba2c9c2055e266ba3dbf70a9b9473e3b8c5818e52b995a95df7de', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:46:54', '2020-11-22 12:46:54', '2021-11-22 13:46:54'),
('dd4b90c164de144f36a62e87d048cf9864af4dda2a46bc8a7b72e13b0f863b5fb882eb924f9cdcc2', 27, 1, 'authToken', '[]', 0, '2020-09-27 09:15:58', '2020-09-27 09:15:58', '2021-09-27 11:15:58'),
('dd4dba195d2b9960b9052da3536ea309e02eba85a20a7aa81baf9cbbe0f9e1f6c8245baa97f8fae8', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:24:56', '2021-03-27 13:24:56', '2022-03-27 14:24:56'),
('dd543803261cbd6b5201fa2185cbb864a25cb981d87ebdb8a5f2941db483eb996fc502b13b0f1c64', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:25:02', '2020-12-06 10:25:02', '2021-12-06 11:25:02'),
('dd6d2b14584d7f71acf80f5df36b5a0d58e7add5dbcc80633f6b00ad07603c0c06f314bc1ca18d4c', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:25:45', '2020-12-29 10:25:45', '2021-12-29 11:25:45'),
('dd7b217632e7eb9850d772b83dcf049ed6363701c0b3378367dbc3606c84729d4d6bfaf968f8e0a2', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:40:11', '2021-01-07 09:40:11', '2022-01-07 10:40:11'),
('dd7e397bac405e83082b40bd547d1e3a2304f946dc581f5e20561afb9b8ce0c414fd518078c12308', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:32:22', '2021-02-07 14:32:22', '2022-02-07 15:32:22'),
('dd9a546fb1228f99ed525178c9de8fbad77c15172336e73370a1afa58f8143ba4874ac0c0789fac9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:01:31', '2020-11-01 17:01:31', '2021-11-01 18:01:31'),
('dda89d68e87d86330eab61a6c958dadc3a7f2dd11fd2341f61b1507dff1be4ea2d36cb24752b8e99', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:48:14', '2020-10-23 12:48:14', '2021-10-23 14:48:14'),
('ddad3478aa901a57e3847826d14ae7353e6bbb4f2ba45e07e9877af6d3a06f08dc97dd193f36c4bf', 22, 1, 'authToken', '[]', 0, '2020-09-26 09:37:54', '2020-09-26 09:37:54', '2021-09-26 11:37:54'),
('ddb4103a9644dc5344252356cfe74c7cfdd8d913a1a6e0e8788683d58fae136956df37115f0d8bdc', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:57:12', '2020-10-18 09:57:12', '2021-10-18 11:57:12'),
('ddb6303e42529dc9799dd4ace1b88b56f6a480e9f6cefcef48e19bfc59d57cac627492e806d25483', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:34:52', '2020-10-18 08:34:52', '2021-10-18 10:34:52'),
('dde2cfed1c7ac4023dce18c9dd5a078a3ac6c4b12cb84aafcf223e32f10a6c54931498ca57e161d4', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:34:41', '2020-11-12 10:34:41', '2021-11-12 11:34:41'),
('dde547ef4d856f4a06a0729f6b53e9d0edd2c9460ff459858bca54f2ee8d41f1f3a5fcd6e5e62385', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:25:09', '2021-01-28 09:25:09', '2022-01-28 10:25:09'),
('de0486a501de902c417128a1d6babec554b867b508407283ea98507e1b71f9efe1c9165cd71a9103', 27, 1, 'authToken', '[]', 0, '2020-10-31 17:01:15', '2020-10-31 17:01:15', '2021-10-31 18:01:15'),
('de08381a11a73fbff554924ad7c098844ce00713f1750caacd626ec5fd9bd71b390bcacb1b7d94be', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:11:30', '2020-10-18 09:11:30', '2021-10-18 11:11:30'),
('de1faf70ed806891f32b1743419339192ae4bb233421726d875cc18fd329226e56ae7ae48e055b7e', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:58:16', '2021-03-27 12:58:16', '2022-03-27 13:58:16'),
('de2b903e24641e3c582474d7c247ed409126c43efb2e964ae26c0ab6c1728fac1697f24f10f7e928', 27, 1, 'authToken', '[]', 0, '2020-11-14 13:58:19', '2020-11-14 13:58:19', '2021-11-14 14:58:19'),
('de3e6c09c6c2d76218f4e652946723efb7e9e06146033bdb75316fa643541310d8eb475b07c5290c', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:06', '2021-01-07 15:53:06', '2022-01-07 16:53:06'),
('de4dff6d31a31a3aad28c92e608438cb03095e53a7768d86d8cb7ac1ab35fe1fccaba12df1828a88', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:54:04', '2020-10-03 12:54:04', '2021-10-03 14:54:04'),
('de4edf88b7cf1ad215186df2f87040e36c66532c6ca0723b2e2c32d79f9fab2c789a952caf425220', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:49:19', '2020-10-18 09:49:19', '2021-10-18 11:49:19'),
('de5f274859700bc26bfb308f9679df6856ac947bd445e327c3f8b522db85ad8d60f6266c4ba75886', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:54:34', '2020-10-23 16:54:34', '2021-10-23 18:54:34'),
('de84d017fff81049a0b7b8fded0adb7c9c32157c6b74bce9be8bd4df901964b33c667123d4534a63', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:34:44', '2020-11-22 15:34:44', '2021-11-22 16:34:44'),
('de94ec4b84f4421e1d13b696d6295ebb3690e2138eab496f2fae754d3dcc45f36482d08976e3e0de', 27, 1, 'authToken', '[]', 0, '2021-01-02 10:02:53', '2021-01-02 10:02:53', '2022-01-02 11:02:53'),
('de9894a97480e01ae66043ccda3e51f930bd01250175e3218393be3713585b1c3b601451a7f5ec66', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:19:18', '2021-01-28 09:19:18', '2022-01-28 10:19:18'),
('deadb7bc1f1a92c4ac00c6918a4946c5541b2c28b5aebcf7fec74dd0f5ae3744fbc4fe0926b9afcf', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:47:54', '2021-01-07 14:47:54', '2022-01-07 15:47:54'),
('deb6fde712373d46bb6b1d219182e78d48d2624b6ab4fac1c526663a4e1da98bab395f11a090fd61', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:39:58', '2020-10-17 12:39:58', '2021-10-17 14:39:58'),
('deb97a375e48bc43710d6ce0973269f414f9a05bc8bbe02af13041fe0b1999c690fcf347df04e337', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:43:13', '2020-10-17 11:43:13', '2021-10-17 13:43:13'),
('deb98f94111e1d3a231b1eb0031f67b35063f420f3e7c2b6770e8605d4159a0c1b01a7872cce2030', 27, 1, 'authToken', '[]', 0, '2020-10-23 18:02:02', '2020-10-23 18:02:02', '2021-10-23 20:02:02'),
('dee0e96343d54f4ffabff3c8fd0faaf2de6d65d52f23f899ee61f917007f893025ff959019589d8f', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:20:31', '2020-09-27 10:20:31', '2021-09-27 12:20:31'),
('defbd1518e1cc2ea0166bb5395e0543900f8a26db6b98b6340fc16a4b4867ec28bf20532b4177d1c', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:31:23', '2020-10-31 09:31:23', '2021-10-31 10:31:23'),
('df1b9ef063b2d4208585460bfdedc6b96c203d5c468ca9a88f954dc008e23270fcc076838a39df97', 27, 1, 'authToken', '[]', 0, '2020-12-06 13:03:08', '2020-12-06 13:03:08', '2021-12-06 14:03:08'),
('df24d76b126f7159e486c2658c9b74ae034132f82cc80538d3350e817066c29d11a3b795a43f82e7', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:59:58', '2021-01-09 14:59:58', '2022-01-09 15:59:58'),
('df31f5a712b893d44fb9700bc834bf318715e6992a91d2e3399789ef7525b9cfe45a636969279f15', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:06:48', '2020-10-18 11:06:48', '2021-10-18 13:06:48'),
('df5a12046874c936760764aa1835191122aaad28d39a9d80e6b2a5909e3997aabb77634169831397', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:36:14', '2020-10-15 12:36:14', '2021-10-15 14:36:14'),
('df60315ce0aa4c46a7dda09a1492d3c796460518eebeb0e8db8cabe8e073a9e7976b4ff76a3688d0', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:03:02', '2020-10-19 14:03:02', '2021-10-19 16:03:02'),
('df62dadbad3e7eededbf6eae60525948386b4bdaf181c161a82549ac601a63520995127cbb31e169', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:56:15', '2021-01-01 11:56:15', '2022-01-01 12:56:15'),
('df71faaf3d592680e463731d648ed8bd3971fbae2f6e6d4fab11685388c55380bd62a6e489fc207b', 27, 1, 'authToken', '[]', 0, '2021-01-24 14:22:26', '2021-01-24 14:22:26', '2022-01-24 15:22:26'),
('df7ce066bbd1f452266df4881e975b972de01d06136aae6bec4711d01bcf12d3b333c70d76566f40', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:50:13', '2021-01-09 14:50:13', '2022-01-09 15:50:13'),
('df8ec283e928d57e27479ffbffc1290bee0122354e2a3634b0cdbe283daf765def6db1af80a29e28', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:53:01', '2020-12-04 09:53:01', '2021-12-04 10:53:01'),
('df929d2b0eec1c0fb01eb1b2d8833edc7238363c991eb8efa2a7f0462f5c2c47c3717d5975947d73', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:24:31', '2020-10-23 11:24:31', '2021-10-23 13:24:31'),
('df9d41fa5fa11778d288882a09fbf52e2a1f8633d3241137ee6e54de5e323ec4c2be21c49aa1482a', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:51:38', '2020-11-22 13:51:38', '2021-11-22 14:51:38'),
('dfbb02e946be23660e9858acb132a8a49e83103120476d977d102349c7cade9dd996e44d41340576', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:24:45', '2020-12-31 11:24:45', '2021-12-31 12:24:45'),
('dfc25ce6da25ef02d3f878223c1ed4aa224c5e4ad9134b2e28e315ae4ba42b67d8d4a9f88bf11b26', 27, 1, 'authToken', '[]', 0, '2021-03-27 13:15:41', '2021-03-27 13:15:41', '2022-03-27 14:15:41'),
('dfcefd7e4a8cd7d701373236d3fec89390134894440b1c980603cf78f09facfaa826a74a48803f15', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:55:47', '2020-10-23 10:55:47', '2021-10-23 12:55:47'),
('dfda5da65d1f10c76cc6ca9baf7a3c4ab5b66a32f3556d362e7e69cebca2fc464184f346c9a908b8', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:05:27', '2021-01-07 14:05:27', '2022-01-07 15:05:27'),
('dfde3302023f0894cbf24c1fb0ea6d1e72c3febc15dd40119849bab791f433fbbc256ece11b883a6', 27, 1, 'authToken', '[]', 0, '2020-12-29 12:05:52', '2020-12-29 12:05:52', '2021-12-29 13:05:52'),
('dffcc2590a303b02bb6032aa60e22d339ffb6bb88107bb25822e25c949ecef9e6a87eaa80ef3ee1e', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:07:40', '2020-10-11 10:07:40', '2021-10-11 12:07:40'),
('e00f9071077f16cf865ad1a02113b8000887b35212cbf3f69d139f916b0d50b5afc8262ce84a6ba2', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:32:20', '2020-10-18 09:32:20', '2021-10-18 11:32:20'),
('e02178916ad06f4e3575b98b66045f4b89f6e8cbabe543af238a2a03d69056e40ab0dd76925056b8', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:54:13', '2020-12-06 12:54:13', '2021-12-06 13:54:13'),
('e053b7a02030c26acf52030dc454d61672322eb420a61ee64b3fba791c66f9ea14b9dac45242ed9d', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:19:38', '2020-11-15 14:19:38', '2021-11-15 15:19:38'),
('e057f5df9ed0704c603c4d841b1f98783fea8168e6dedd0d44b9149e5489b7429ef29c6a213e0516', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:38:44', '2020-11-14 12:38:44', '2021-11-14 13:38:44'),
('e063cb4041330b9c6d4fe712e5e76849f55dfaf1a5b61221f27c4161053a877bcf8e10635d83bd85', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:43:13', '2020-11-12 08:43:13', '2021-11-12 09:43:13'),
('e0683961285c43040fda324a9072a2da2eb73c872ee229bc70fb8e1269dfb400d700bb64feaab946', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:46:04', '2020-10-15 11:46:04', '2021-10-15 13:46:04'),
('e070f398243269f0becab86d860f2d06bf70d40d86356799f3a56f923dde1f3a98009c51d3f734ea', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:53:44', '2020-12-06 11:53:44', '2021-12-06 12:53:44'),
('e09dbe2ee749a06b91a3a4ceec31833e6ecc6ae588efce3c719ec1d87d3cdff6be5c5b95f41e7302', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:58:10', '2021-01-29 16:58:10', '2022-01-29 17:58:10'),
('e09e878c932d47ff36466426f5f43e628d0ddacbf0bc1ed0e93a842dbf5a32c226064f6b3ddbe682', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:53:03', '2020-12-28 13:53:03', '2021-12-28 14:53:03'),
('e0a80bf815ff36df71ffce948360909388b701926687ea25608780cd2481ef081f7d17e43825fbb7', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:33:10', '2020-12-06 12:33:10', '2021-12-06 13:33:10'),
('e0ae48eb66e2abb0d0ebc2cc4b61278f523a3d5ddc6f93e04cb158046da3c3404c2673b9220d4803', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:55:47', '2020-10-27 10:55:47', '2021-10-27 11:55:47'),
('e0b1ce6a3730225a3d2ed325de42a08df98e4d7b403b5b20432dfea43e2edcd9f99b246fbe3bc1f2', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:16:11', '2020-12-28 12:16:11', '2021-12-28 13:16:11'),
('e0b22d950f5c729afd85b653e198eb0c734d00232a5ad3a4b14784c602ca9197350ea10a9e4ea737', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:50:33', '2020-10-25 13:50:33', '2021-10-25 14:50:33'),
('e0bb1fbe0d5d6d6b26795791662969e3a3ec995d2505bc50f0c1804b5af37ba4413c28668f915f3a', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:42:23', '2020-10-05 16:42:23', '2021-10-05 18:42:23'),
('e0bb38cb64bcd89b166cf7e7c5c91ce4bffc8ef965737513101723c859123841d6fbf85ed8d02c33', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:39:11', '2020-11-22 14:39:11', '2021-11-22 15:39:11'),
('e0c0896f45293c1e4ac6ea69f81b9e1ffc4f071f5922364a52eae06f46f45bc9aad61f8c98c1fba2', 27, 1, 'authToken', '[]', 0, '2020-11-12 08:20:28', '2020-11-12 08:20:28', '2021-11-12 09:20:28'),
('e0d52ba415972f6d97f52bdedc57a749df35b0504e591e5804461aa6c0a80cb73fb7a6690cb754f1', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:58:16', '2021-01-07 12:58:16', '2022-01-07 13:58:16'),
('e0deed100331dcd632fb2ea63da4956333ded2cac1e944331572d1b4c447d1b293e4d18ee620ce40', 27, 1, 'authToken', '[]', 0, '2021-01-01 14:26:04', '2021-01-01 14:26:04', '2022-01-01 15:26:04'),
('e0eb245f87d5694b20dda08dbadd514379179e309c2a1ad3d153475be1412cada41ed1d1e871af0e', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:34:49', '2020-10-19 14:34:49', '2021-10-19 16:34:49'),
('e0fb9a9e862162e268c4bc9b8a697d179d9b051989c24553662be76ae2c3a885e3b11e290c381d42', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:54:30', '2020-11-05 17:54:30', '2021-11-05 18:54:30'),
('e109872202fd1beb333dee5592b040d8db3b2a22ef33934be254f9c15f2344ac8a92fc4d9a68d592', 27, 1, 'authToken', '[]', 0, '2021-01-22 10:28:43', '2021-01-22 10:28:43', '2022-01-22 11:28:43'),
('e10ba2c05425171579d0322f0ff00e8e6cd126d1b021db15299079e26b5b8da2420f43ee311f804e', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:09:05', '2021-02-10 18:09:05', '2022-02-10 19:09:05'),
('e10e53dfa5e7447589320c984a375bd12a4ff2355f6c477032d6c97e4b3113a8ea3dce8c4d24f5da', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:08:19', '2021-01-03 12:08:19', '2022-01-03 13:08:19'),
('e10f3ea647f781e78c098a97b1976e467f662a229f335748b71f6643e95e1465c696c6cc8a8953ba', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:55:06', '2020-10-30 11:55:06', '2021-10-30 12:55:06'),
('e11ffd8463ad4460c804e4ea66f9713a376332b4e218a230312609fc2667663a076e7e046f93e517', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:39:16', '2021-02-07 13:39:16', '2022-02-07 14:39:16'),
('e138bfd236022892aeb3b966865242311dadad293e4b499799a9dc3411af33325995901952772038', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:47:29', '2020-10-27 16:47:29', '2021-10-27 17:47:29'),
('e17694eecca3f061752715ed07500ea0f7debbfd3069a1c94c82379e638fd7c5dfbf3ba2214977f6', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:19:00', '2020-10-29 13:19:00', '2021-10-29 14:19:00'),
('e19691b7a636d6117f7b76e759a310985fe1ddf5280dbe1705960a6acb1cb8f78397ccd42c370f83', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:37:50', '2020-11-05 14:37:50', '2021-11-05 15:37:50'),
('e1aa840e6f8838bc116cac1d5624ee9242dadcb2a2d2a6679a7646324a44749603030ae62ff5aa70', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:43:27', '2020-10-29 13:43:27', '2021-10-29 14:43:27'),
('e1afabb9c41fd30455d6b346e121c30cd0f39fe8db4d7fbdec38c21c6ba8f498849dc500ded7c11d', 27, 1, 'authToken', '[]', 0, '2020-10-27 17:58:30', '2020-10-27 17:58:30', '2021-10-27 18:58:30'),
('e1bb350597365c2a7379b16016e88e2ceba36ea24e04abcb545a50801ace47d9c271a3b6ca971c3e', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:25:42', '2020-11-14 16:25:42', '2021-11-14 17:25:42'),
('e1ca27394a1ba7f50b212f9511731701451d978a35efd2fe5597bf3433904a9faea689475b674853', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:11:21', '2020-10-03 14:11:21', '2021-10-03 16:11:21'),
('e1e3d1bb938d0a6661e31f1828ef0349da8d44f988df369f8b2adc26321a5635eca3ed31b73c506c', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:15:02', '2020-12-28 12:15:02', '2021-12-28 13:15:02'),
('e1e92b9391974a489cf55b233d8022f738b12f00ad7a690851ab7a02404e6fc2b88cfe23f2708b48', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:39:37', '2020-10-19 08:39:37', '2021-10-19 10:39:37'),
('e22645493a58275a28495aed0afd3f2366abd7f9b5b2f70304c70d47a03132ddc6ba360fac0b0d3f', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:25:52', '2020-10-25 13:25:52', '2021-10-25 14:25:52'),
('e2297993fdd10f5b398475d775e64d72bcead6de0f64ff2ef079732d56416613c1ff9b1d77d1634d', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:24:34', '2021-03-25 18:24:34', '2022-03-25 19:24:34'),
('e237cf84e90dc7a1071538a441ee2964a0451a1e56dbe749fb7b1d86bd9766a7494ed761cc5a8392', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:38:28', '2020-10-29 07:38:28', '2021-10-29 08:38:28'),
('e2474913c67cf9757b214989374016705eac5ccda35edf0cdc0227b68327c0f5e503b03dac5dd0f7', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:38:01', '2020-12-06 10:38:01', '2021-12-06 11:38:01'),
('e248e8d448ba02513a780e32673dbb1eced53d113dcc4d2bfbda76ddf0db811e95f3b5b5d1427b33', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:25:23', '2020-10-11 11:25:23', '2021-10-11 13:25:23'),
('e26547a8daf20ca6ee1590c7d6166a34559929521075d549eff3d5ce38a47479a5a493497fdc4c35', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:26:13', '2020-11-01 17:26:13', '2021-11-01 18:26:13'),
('e265b371ca579e18c5cfb0d1f77ac3153802952413eafc192ffe7c06ac8bf1f80fb4881e3a7ebfe4', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:48:36', '2020-10-31 15:48:36', '2021-10-31 16:48:36'),
('e2742cfba6a541fb4624bf4e45265d11c69cab21480d6c5378ca4fc42b506b0cb242ace20293dd02', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:52:15', '2021-01-07 15:52:15', '2022-01-07 16:52:15'),
('e2a36bf34726ce85ac50ee5e8df9b904c588220ad37962aa806dd71f356dd7de943360e722681459', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:34:16', '2020-10-19 12:34:16', '2021-10-19 14:34:16'),
('e2b5eea4f5e1087434bd4fbac859a7cd3c826b5944830bd3a8beb35666039f06075f196d6be6e604', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:38:26', '2020-10-05 17:38:26', '2021-10-05 19:38:26'),
('e2bf47d1220ffce27560ce22c040200ef5755af7642b280dfc12b66869c9a437b2035deba5ea5f69', 27, 1, 'authToken', '[]', 0, '2021-01-02 12:00:38', '2021-01-02 12:00:38', '2022-01-02 13:00:38'),
('e2d664646b85c7efd6a6f53863a6674ac97c0f93c26f8af81301d73f5b04fba2e16847b0158c0d96', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:23:13', '2020-10-31 11:23:13', '2021-10-31 12:23:13'),
('e2ea34fafc17f63ecf017fd8080987cb412df22e4415dda7181fdf28ba681d57f6af84514e516807', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:08:46', '2020-11-01 14:08:46', '2021-11-01 15:08:46'),
('e30b47dcf440aab57fa1badc8e3d83c9c989b45abf859d854b339793d90534fc28f5c6d6a366aacb', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:33:56', '2020-10-19 07:33:56', '2021-10-19 09:33:56'),
('e32be81e0ea314a618e099c4ee39f969ab343b48fcf433355347153f378e0c0f27dac2827ed4d849', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:16:35', '2021-01-28 09:16:35', '2022-01-28 10:16:35'),
('e3334f19eab3e2b9d383aaca0d176a3da643e56e3e2c517e06813ec8a710d7d9b82131328e6d5237', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:48:48', '2021-01-07 12:48:48', '2022-01-07 13:48:48');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e340df5a298a86414cb6bdcc0530cbaa376ef7cf67715ac52156919f07ed777aa421d5d874c9d41e', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:24:37', '2020-12-06 12:24:37', '2021-12-06 13:24:37'),
('e36c9a115d8c371677e80b9a8db8fb260c0e8566218a53aec2124c74229b06fc5ff5fa1f2ecc7719', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:27:47', '2020-10-25 14:27:47', '2021-10-25 15:27:47'),
('e36efafdf6f0e416e3c0a3b8dd5323538d04b8f79ed7ed6308749e50a182cee6c38892ac95800179', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:22:49', '2021-01-03 13:22:49', '2022-01-03 14:22:49'),
('e376fea63be5676678822aa0c43726e2fc37c2f3073a44e370bf4e7f50997220593c075f415b329e', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:20:00', '2020-10-19 14:20:00', '2021-10-19 16:20:00'),
('e37bdef89fc094f3300f4740a26cd0c7a198da7281d430a0ab6c938fafe51b3456ae2e815f5623b6', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:52:12', '2020-11-22 15:52:12', '2021-11-22 16:52:12'),
('e383117cd611bd331230f6f89f69273dc55e558e4ac472c2b8b246628ec1c401eaf15dabe441c8c7', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:29:49', '2021-01-26 17:29:49', '2022-01-26 18:29:49'),
('e395b953df7f982ad790cfe5872ebee932b3d6a4af1bf4d8cdd81d6e66d0b8d4bd52710ad6724cf1', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:12:06', '2020-12-28 12:12:06', '2021-12-28 13:12:06'),
('e3b6fe8c80bf40deed374987bc4a567d6b5e8729884c4f7421ba9c45eacebcc92d2a7db7512fb174', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:15:42', '2020-11-15 13:15:42', '2021-11-15 14:15:42'),
('e3bea38d9cc51075845c47a1c27f70efb3cac14550abc1f7b51a9a2742b5c566bdee03763857446e', 27, 1, 'authToken', '[]', 0, '2020-10-19 07:25:54', '2020-10-19 07:25:54', '2021-10-19 09:25:54'),
('e3c52cb9ceb0df0ad354d640a2d6f77ed84a59aedb22b6deec5b4291562632e18d707fe0ba1accbd', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:47:59', '2020-12-06 10:47:59', '2021-12-06 11:47:59'),
('e3df0f07ab0766ab5b1ecfc00b10aeabde71e8b8f7d3edaf0db478fa5343c70be6909c96b2666fbb', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:00:50', '2020-12-06 10:00:50', '2021-12-06 11:00:50'),
('e3e28f51299f8b8e3065b2762ab33aa5a5c0690fca6a521397f0417b46f758e88934c778935f437e', 27, 1, 'authToken', '[]', 0, '2020-12-31 14:39:27', '2020-12-31 14:39:27', '2021-12-31 15:39:27'),
('e3e3efe09aca7d9e22002dd109f4a7b136d55b2e46ea129b8c7563d637fe6784e818b47ce9a7a7cc', 27, 1, 'authToken', '[]', 0, '2020-10-31 10:51:39', '2020-10-31 10:51:39', '2021-10-31 11:51:39'),
('e3f2e689fa88a16720463f88275f5dc59d484fc6eb82b72a84847a20a0bb322887a80a7c2fd5b7bc', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:55:44', '2020-10-23 15:55:44', '2021-10-23 17:55:44'),
('e41fa558358afbc6c183e1617fc5e5c7764490c6f596b2b333a5232bf3fef027a4830364c165eebd', 27, 1, 'authToken', '[]', 0, '2020-10-17 13:59:32', '2020-10-17 13:59:32', '2021-10-17 15:59:32'),
('e422541038ea1bd86ce491268e475c04a3d185b6e6adad7e4e58a233e70dd78ad3e89b71a95def28', 15, 1, 'authToken', '[]', 0, '2020-09-26 08:04:16', '2020-09-26 08:04:16', '2021-09-26 10:04:16'),
('e4259f5c9096b3204266749c3b49169369aedec06390878aa910958b3759e8d81509a1c87911b207', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:18:27', '2020-10-18 08:18:27', '2021-10-18 10:18:27'),
('e44e2e0fa4b8a94218e661483638eedde7c393c27e5e5113f806349c23724cfb705bdd2bd0246347', 27, 1, 'authToken', '[]', 0, '2020-11-05 17:37:20', '2020-11-05 17:37:20', '2021-11-05 18:37:20'),
('e47fe494de215695c5c52e7574d95c9f8e07ec9280019aed98ea30d6427aae3258ab78414e95c7f8', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:35:01', '2020-10-15 11:35:01', '2021-10-15 13:35:01'),
('e489a7d7f5c662ccbda80a8c6ef16bc2cfb726cf0f9fc394c69fcdb97024385c937765efcb6db240', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:02:41', '2021-01-03 13:02:41', '2022-01-03 14:02:41'),
('e48aa96e6af33aefadecbd2f60711964d65edb7372ea236dfbfe806e94322961db374102227ade33', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:10:02', '2020-11-01 14:10:02', '2021-11-01 15:10:02'),
('e49d7c2cca868b60bac411f22a579dce3767865e4a62aece0e1f078628633de3b55d270105bca6f7', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:22:27', '2020-11-01 16:22:27', '2021-11-01 17:22:27'),
('e4a5c394948381af91a59d82f8aa7f447cb75f01249ed4d0ab1c018616f7a29d2b3e23e66ad62c85', 27, 1, 'authToken', '[]', 0, '2021-01-24 10:52:05', '2021-01-24 10:52:05', '2022-01-24 11:52:05'),
('e4ab9038e20a94966964485fe4102b5f30f32d1fdc0def63ba4649c7be019d2bc852b3fafb3fa9cd', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:02:27', '2020-10-19 13:02:27', '2021-10-19 15:02:27'),
('e4b5a31f343dd95fec820ca1817c8fb69a78b12daaa1ec945d0b91ab3b19751f548645f6e1007027', 27, 1, 'authToken', '[]', 0, '2020-12-31 11:25:06', '2020-12-31 11:25:06', '2021-12-31 12:25:06'),
('e4d93a24bb87753e96b493ae9cc4aca77f2f285b7a20d5ba1bf122d206019be54796695d255028de', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:02:16', '2020-10-23 15:02:16', '2021-10-23 17:02:16'),
('e4f5453caf263dbf5b4c967452823e1da131ce2868a5ff6e9b7cb0d796ff00226b095680bf810fad', 27, 1, 'authToken', '[]', 0, '2021-01-09 13:16:37', '2021-01-09 13:16:37', '2022-01-09 14:16:37'),
('e500849477f4b54b91662df8566f8c5d3ec1f077583dcc2148c1c0d65b69345cffb5b63db67b7083', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:33:59', '2020-12-31 16:33:59', '2021-12-31 17:33:59'),
('e51a9e93c2583916eae631d82130498a7df18c28faf30d1a58444f47b1995cd4f9ce29cbae3a0a28', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:23:34', '2020-10-23 11:23:34', '2021-10-23 13:23:34'),
('e529ccdb7fb6321dac64c938777e243ff08d7d5f9ae7d6c555172742bd1907a5686e4eb9c899612d', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:21:30', '2021-01-26 18:21:30', '2022-01-26 19:21:30'),
('e534659ad70c4200da5daf39f4b12bf0bdd8031359bebfbf84a936226e2b475c8f5899a9cca993be', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:24:34', '2020-11-01 12:24:34', '2021-11-01 13:24:34'),
('e54130d8ff5f376e6d9779e02ac70d1bbc047c7fd44cae52300107555d0ea53533776d64ea5f9288', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:20:02', '2020-12-04 10:20:02', '2021-12-04 11:20:02'),
('e557656a7e736f0b876e23d5cf5f6bb3a01a4039c756a2b080e1f4ee7b8089a1826954162b129fa7', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:20:52', '2020-12-04 12:20:52', '2021-12-04 13:20:52'),
('e5651a11e2589eb40bd9d1260a1c438c5ec1b197895a923ad822a75454643c31f7a50ac4313b2000', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:05:47', '2020-10-18 09:05:47', '2021-10-18 11:05:47'),
('e57128f56563c7b453c06e9f1e00dad31ddf755f105e2977bb30daf165c0ffaa596746b1ac6178ea', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:07:35', '2020-12-04 12:07:35', '2021-12-04 13:07:35'),
('e57e848413f95cc18fedea41cc06baada8ae6ee5600ba2ac245bf918a957295f486cf03efdea1173', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:23:36', '2020-10-13 10:23:36', '2021-10-13 12:23:36'),
('e58fd54a621cc6266a23ce4bb6451bd2375509d4cb621fa4f84b6ea25e2456dc82fb0995e742e814', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:14:34', '2020-10-10 10:14:34', '2021-10-10 12:14:34'),
('e5a6de1746aaeaf042f2159a7f80bd02e3b438ddc79cb1a1d2bc0ad39659bd2ba78a9865216e7bc3', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:13:34', '2021-01-26 18:13:34', '2022-01-26 19:13:34'),
('e5b1bdaffec020a23c1874737d8fe57439f66a906539940739c99875920c691fa35ac0640e9fe2bb', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:42:06', '2020-11-15 13:42:06', '2021-11-15 14:42:06'),
('e5c00345a00209f4afe411ec21aac264bcc627fe6d10d43b1802685c2064080426f7f07f0bf682bb', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:42:29', '2021-01-07 13:42:29', '2022-01-07 14:42:29'),
('e5c3648e0db847ea88a6452debfa14cb4b79f1df5e2f575a709a77cd6b026baa0952ca7074b5bc80', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:18:54', '2020-11-22 15:18:54', '2021-11-22 16:18:54'),
('e5c9a75980ea4d9a7a6b9229d1daa7c2bb70d996d1c8cd8192804cfc62c45962678c756db9c84eb3', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:44:42', '2020-10-13 09:44:42', '2021-10-13 11:44:42'),
('e5cd7e089d1d4cc4e597e7e8f2f41f17cb7c0e72238374ab50ca78eef6ba4d1dea9ecf5aef6bf00b', 27, 1, 'authToken', '[]', 0, '2021-01-30 15:37:50', '2021-01-30 15:37:50', '2022-01-30 16:37:50'),
('e5cf45f9c43e89453aebb5c3a98ffeaf3251e414ae6dda7c230a85e157472a4c9b427e4d08228ca9', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:21:04', '2021-01-29 15:21:04', '2022-01-29 16:21:04'),
('e5d8be570429bbd14ee7733bc070c4de3d452b8398ce7cf4b4a279fe9c7e5e2f0e29000c062b989d', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:28:31', '2021-01-09 15:28:31', '2022-01-09 16:28:31'),
('e5dfc4149da4795a6d8e4a6013cdc70279ce9433e2e37aa66bbc5b45e3bb2bd6166bd58433fbc720', 27, 1, 'authToken', '[]', 0, '2021-01-10 10:56:20', '2021-01-10 10:56:20', '2022-01-10 11:56:20'),
('e5e28cef77c7fcd776ba1b9708ef15cc7efff4c018f43e2bfc1cbae3b71bcd4de7b714065bca4983', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:02:39', '2020-11-05 16:02:39', '2021-11-05 17:02:39'),
('e5e29ae34444c6d95e7f6adcee689ba78fe7a9d28914d040be8608fab1e9dbba353bae0a50deb70f', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:07:58', '2020-10-23 10:07:58', '2021-10-23 12:07:58'),
('e5e714430c66a20bcc9e18932a7aea1a96f999b24fda45ebfc005d33ef3ade21dfb081fed4aa91b1', 27, 1, 'authToken', '[]', 0, '2021-01-22 10:26:51', '2021-01-22 10:26:51', '2022-01-22 11:26:51'),
('e6144752089bda026a50947e3ae30e1fa5c545297cdaf9605c5cf20659c3dc42b8edc919d38f14ef', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:18:22', '2020-10-29 13:18:22', '2021-10-29 14:18:22'),
('e628dc0195b445dfb4fa60884a61f685744d851e1491c5b410dad6ce516f78428b1b8b910a29ce04', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:23:48', '2020-10-31 11:23:48', '2021-10-31 12:23:48'),
('e62975ddbd6dd04dc3b52ecd5cc7b87ce79c732008b388c2993d6da5618826c6fe94a921e324919c', 27, 1, 'authToken', '[]', 0, '2020-12-06 09:51:57', '2020-12-06 09:51:57', '2021-12-06 10:51:57'),
('e62afd3b9b03d36c197bb7a6c391ae7a88d9786fb20d08558169a87618459f42661f72108c8ee277', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:34:37', '2020-10-18 09:34:37', '2021-10-18 11:34:37'),
('e638e681ae57eeb306a05ed094e20d85f533b21e77971dd37452c37644032fd03d20506505512da9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:33:56', '2020-11-01 17:33:56', '2021-11-01 18:33:56'),
('e63e721ddc0170910ffff2ddd57260d8b718b9475081b026c5ef95f3a3215f635cbb59fea269cbd2', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:42:28', '2020-10-11 11:42:28', '2021-10-11 13:42:28'),
('e64137c7a62a9c5b86d32a868a60cb654e8e11da378b9452e4eabf1c4cd62ce660d8da0ad79d2784', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:59:18', '2020-11-01 10:59:18', '2021-11-01 11:59:18'),
('e64b6757a8baf5784e0d3f585d518ab5e807eef818ce8e8899a14eb7cbd1e6b592d4b340f34c40ef', 27, 1, 'authToken', '[]', 0, '2020-12-12 15:02:48', '2020-12-12 15:02:48', '2021-12-12 16:02:48'),
('e65db4957899e15d426c9654b880c14ba0f3af55519116bdfae4707217c7580d0c4eeb1ba1832cc1', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:45:51', '2020-11-12 09:45:51', '2021-11-12 10:45:51'),
('e69cbb6eb2a41a4841796c1d7d6ae1ef80e5039ae3163c8418735d2fe58b507d910707d11dc4c989', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:19:39', '2020-10-19 08:19:39', '2021-10-19 10:19:39'),
('e6b51a4d6b3814f3902a68276f9c4d3f86807278d8c03fb98e6e34b7f218faf6663616a02b43fae7', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:47:45', '2020-10-23 11:47:45', '2021-10-23 13:47:45'),
('e6bb91f166a30abf668ded9eed1019f6b6d64d32fc9b796abf9d6272cfe101824faf69dba950119b', 27, 1, 'authToken', '[]', 0, '2021-01-07 13:31:53', '2021-01-07 13:31:53', '2022-01-07 14:31:53'),
('e6c8726486fdf740f92124d14c3f1ac32f0a48580f8b62e70cfff022e0dc8a12b68fd64767e5bb6a', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:39:03', '2020-12-06 10:39:03', '2021-12-06 11:39:03'),
('e6cf521838a7bc31230c47745543b00c0fddfee18c4479f0ad96b349c482b6433bac325dee1355b3', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:40:49', '2021-01-06 13:40:49', '2022-01-06 14:40:49'),
('e6d42a6e21230ea6fc60250dda3c627d1ef95dba794e405661df7a8b8d79dbd06608d2e8cb580926', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:44:23', '2020-10-31 15:44:23', '2021-10-31 16:44:23'),
('e6ee80866c235408d937b160f332dfa5e4321888b4bebf353fe85d126eab702d5e7a2f05317a81c6', 27, 1, 'authToken', '[]', 0, '2020-10-29 08:58:21', '2020-10-29 08:58:21', '2021-10-29 09:58:21'),
('e6f35b9c15c8aa35b7aecf19931bfcc0510c21f97cf3c5ae4f617cfb0f4363b7e859cd2c2c76ac01', 27, 1, 'authToken', '[]', 0, '2020-10-27 13:02:05', '2020-10-27 13:02:05', '2021-10-27 14:02:05'),
('e6fbaa09d452ef6627e4204726c68dab8bbdf31d409315c139b18341e0bba6a998a8aa24f8d3e0c9', 27, 1, 'authToken', '[]', 0, '2020-12-06 11:05:53', '2020-12-06 11:05:53', '2021-12-06 12:05:53'),
('e71091d19b643a255a5a75ce113effe8aad27bfe41133235b2678108c26d1ff1ae4fb1e73ad8b908', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:30:29', '2020-11-14 12:30:29', '2021-11-14 13:30:29'),
('e74e86a241f6b498b17c9324c2ddac4fc4f69a1fe769584a742d511fbb0c88238e4176c2c5cbf16a', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:26:09', '2021-01-29 16:26:09', '2022-01-29 17:26:09'),
('e7620920f7a129f5b6d003689bef1eca100bbca76ba8d61b3f2f6fd74a8605e56fc902d74be85385', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:16:49', '2020-11-19 12:16:49', '2021-11-19 13:16:49'),
('e78f34bc5cdb01f9330f92d78102a3bcc7d627941c99b9cc717aec40b6be9210aae6d73807789abb', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:06:42', '2021-01-07 12:06:42', '2022-01-07 13:06:42'),
('e7a381bc650ddcbf1cc0423361f4345dfc4f468cd03a6da37d9345028441801b8eb5179f50cfb265', 27, 1, 'authToken', '[]', 0, '2020-10-29 11:20:05', '2020-10-29 11:20:05', '2021-10-29 12:20:05'),
('e7cecf1052278dfebc331a6354c1545386c7f1485fd16ce79e8a570f7cfb1283a102bc924769a7e4', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:09:14', '2021-03-25 18:09:14', '2022-03-25 19:09:14'),
('e7eb66e0e180234f7c63cedd250b2c6581baf487e6a9c56609de5a528e32fd70cd494ad51fdbb55e', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:09:30', '2020-12-04 12:09:30', '2021-12-04 13:09:30'),
('e7f417417b3ba225372f0309c4b3a78e0d9884772b08d310be02381c0abe8b8f8d39fed320e5f601', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:09:09', '2021-03-27 15:09:09', '2022-03-27 16:09:09'),
('e7fbdea90af252dd5f8835ad40f3bb288cc141611868af4b7485700f1e23bb9e683a929b50852789', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:35:43', '2020-10-28 17:35:43', '2021-10-28 18:35:43'),
('e813319aa6b741524197a111e65bae1b03ad42000b6e1a02f3e641926531aca806653db3d7d0b538', 27, 1, 'authToken', '[]', 0, '2020-11-01 11:36:05', '2020-11-01 11:36:05', '2021-11-01 12:36:05'),
('e838e11eefe4c25ca5587ae96d218af3c1be82d931a370af8fdbb8429e9f4c6eea8eec6b27a607c9', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:35:21', '2020-11-01 16:35:21', '2021-11-01 17:35:21'),
('e843b8199ac19773e0f59fbff589e46da7f87d42bd5798e71d316cbb45f9c37955c077ff7416eb9f', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:11:01', '2021-01-28 09:11:01', '2022-01-28 10:11:01'),
('e84a2342a8d1538a0dfb950d78db03c9b54ed1259a062c7c2df3abf7a691147b0b7aefd1c585a92c', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:44:08', '2020-10-13 10:44:08', '2021-10-13 12:44:08'),
('e861ad6b279b1bd3c47310aee06d9a6957873eb15b340608972939d6d178002bd42c8df2308cc860', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:31:02', '2020-10-15 11:31:02', '2021-10-15 13:31:02'),
('e86c777db8e2dc538edbf0efd62df009261468bbd93f045d997336b707a9693e76dd9a61b41dfd0d', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:21:41', '2021-01-06 12:21:41', '2022-01-06 13:21:41'),
('e873558d8cf1d5390d0d4ef81733e121838a599432a28df1b7d56f1d67b4bf99260ee54b73ca96b1', 27, 1, 'authToken', '[]', 0, '2021-01-28 17:58:20', '2021-01-28 17:58:20', '2022-01-28 18:58:20'),
('e880fe542f96f79aab56e604970c771aea29dd7024457ac76cf6569ded326b76f8b1214931ddbdf9', 27, 1, 'authToken', '[]', 0, '2021-01-21 13:53:41', '2021-01-21 13:53:41', '2022-01-21 14:53:41'),
('e883c61358876aa4484da94a40d8c4be32b104e78630dab52635f26d810ff945c2ebd8c0abdfd55b', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:10:32', '2020-10-10 11:10:32', '2021-10-10 13:10:32'),
('e89833c24f6c222c86343d0c3fd3d735cc62367d3d488b5a0f3f127e4cce538ff2f0eaa343a6758d', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:32:43', '2020-10-28 17:32:43', '2021-10-28 18:32:43'),
('e8a3364fab040eec3ba01ed67c7872ce862519ce8800cc1413584fc09cc084194747879afc749b29', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:37:37', '2020-11-01 10:37:37', '2021-11-01 11:37:37'),
('e8bce843b228e3fb6b0221ab9b0e4d57f7848b1138d7f8ed0f6a61c846e1109a25f1ffbc7409bd0f', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:10:56', '2020-10-19 14:10:56', '2021-10-19 16:10:56'),
('e8c344e3668ad32bc469b12e8b8bae6d056c36b77f891c8362adea09843001da07e5f69254fa880e', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:37:48', '2021-01-28 08:37:48', '2022-01-28 09:37:48'),
('e8c84ddf71538e44a0ad083936f35c3df701631b7ba46b626b95faeb3cfdb37a7c9d9361d552935b', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:53:52', '2020-10-19 13:53:52', '2021-10-19 15:53:52'),
('e8ea5ef49f72e6822c70fc3efffed1f766610950373624e1ce5d87f7a63571df4628bd3316fded73', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:50:38', '2020-10-18 09:50:38', '2021-10-18 11:50:38'),
('e8ee6a56675cc5bad114281cf2cb25b07f898a9d684ee0535a409dc79b9c6d1aa1b76eb9bc199f87', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:15:38', '2021-01-03 14:15:38', '2022-01-03 15:15:38'),
('e8f5fb532f3819a85305db7d07775fa6eb45ff360a48c356b746b6da531505cf50ce5eaa0e69036a', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:02:25', '2020-10-23 13:02:25', '2021-10-23 15:02:25'),
('e90aa1897fd128d6729e3ff6444b1cff7f7b8db285313956b831a46868a3cd435919bb20d3f21efe', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:39:40', '2021-01-06 13:39:40', '2022-01-06 14:39:40'),
('e923bda49d4af665b11cef3939ee0ba2dd2f6f0fd684ed8943767eb8ac9d09b1b42428493123beee', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:10:03', '2021-03-25 18:10:03', '2022-03-25 19:10:03'),
('e928f935c01243ffbd2daa339365ad024cb3fb930ca8c8e887f3409549e585ca90e217c2c89c6a29', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:13:17', '2020-10-03 13:13:17', '2021-10-03 15:13:17'),
('e942188e14f51ebb4f09fd9d0b9e7308e7cdec40b204af303338ed301ea50853d29ec84733fe8776', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:47:51', '2020-11-19 12:47:51', '2021-11-19 13:47:51'),
('e9435c9c1f3f1fcc07cb6060629673db106a30d15857f9fd1ffbfc5e8688d54bd098da4cbf7412db', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:18:19', '2020-12-28 10:18:19', '2021-12-28 11:18:19'),
('e958270825543d1d0ff27d16fbd9c334b08a3c3e2978f9cb2013dc9774addb9e52fe5abc62e002c3', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:41:42', '2020-10-17 12:41:42', '2021-10-17 14:41:42'),
('e95df506d1d40750d1a6e86b8e8149979ce21187489023aa1d29dda4b83f93a460f6f0edaad80f3f', 27, 1, 'authToken', '[]', 0, '2020-10-31 13:35:54', '2020-10-31 13:35:54', '2021-10-31 14:35:54'),
('e9ae33a309eaf147ebaa9cd928d99c385544cd882d6a6211a27c1a9350982d25ef0be4d0d6b0f48e', 27, 1, 'authToken', '[]', 0, '2020-12-06 18:45:50', '2020-12-06 18:45:50', '2021-12-06 19:45:50'),
('e9d85564406c0b1b3f5f6e671d91592d73b4fd8125027d453dacfff8958681e215097d7c6583c559', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:46:59', '2020-10-23 12:46:59', '2021-10-23 14:46:59'),
('e9d9ae06cac3df7f44279405c066b0d5df37b33a603222f0de832a2dd05e44187bac39c5322471fb', 27, 1, 'authToken', '[]', 0, '2020-10-27 18:11:39', '2020-10-27 18:11:39', '2021-10-27 19:11:39'),
('e9e5f500ae45b68ebf176cfe661ad5fbfa925b7a70e1ab688871a312b58c712df5289d2b0865be0a', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:52:24', '2020-12-28 10:52:24', '2021-12-28 11:52:24'),
('e9efcde5acaff0e3116dcf79537dce13fe41c95b43f25b53067291e333183b2afbbab1d167ee4730', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:10:05', '2021-01-29 16:10:05', '2022-01-29 17:10:05'),
('ea0342f8b4177982b74988a9d0c30cf39b782c96264c93afddd3c9016e7a9ef472c5aef0071e8e26', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:19:34', '2020-10-31 11:19:34', '2021-10-31 12:19:34'),
('ea04547aeeb02afd5c7b92eb89e2e387cc8875cf5cac08f7689b4e1d69593adc1803c1da58f29e4b', 27, 1, 'authToken', '[]', 0, '2020-12-31 15:02:04', '2020-12-31 15:02:04', '2021-12-31 16:02:04'),
('ea1571319afc216cd302ff52ea713ef121535cb39f25428e7d28ff7be7ea9d1db51caf603c357ed8', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:07:22', '2021-01-09 14:07:22', '2022-01-09 15:07:22'),
('ea1f1d77eca61d2c93aecc718a5c101bf82d97158dcf4ff852b86c3e463daf258cac5c21de3b667b', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:49:14', '2020-11-01 14:49:14', '2021-11-01 15:49:14'),
('ea3bc4dc2828e5795de0b223b341a8e842c0bb97abd1f722eb8da02d147fc1cebf571725407865ba', 27, 1, 'authToken', '[]', 0, '2021-01-29 15:27:19', '2021-01-29 15:27:19', '2022-01-29 16:27:19'),
('ea3de4255509cfdb9ccd1f1d3e60097bf255ed576bbc8b352e74306d417cd633285d2beb40e8159a', 27, 1, 'authToken', '[]', 0, '2021-01-30 12:04:06', '2021-01-30 12:04:06', '2022-01-30 13:04:06'),
('ea45bb6a2ab9ab8a67830c8fff4436fad9a448060c081b286cb36f7333cac28ead179845bd946ae5', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:26:38', '2020-10-18 11:26:38', '2021-10-18 13:26:38'),
('ea4d66f38ea44898ae4a5ee523aa33545681c751f1ab9f274ff65eb57248fe95459f541b3f3f7aa5', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:20:03', '2020-10-17 09:20:03', '2021-10-17 11:20:03'),
('ea7e92213f8bebb6c0fbf8b5985a6ad42d4753acca507448d54df526bacea40b97ec785e1825481e', 27, 1, 'authToken', '[]', 0, '2021-01-09 15:25:09', '2021-01-09 15:25:09', '2022-01-09 16:25:09'),
('ea80b937b344e4dfeca56ad7ddd0daaf83e30049306db6b120484593dde78e40330703d555b8376f', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:52:00', '2020-11-19 12:52:00', '2021-11-19 13:52:00'),
('ea8167e4ac8afacf22ed5cce3e498f6d5d27e1f68831ca2b752b3e88352192613670a0dc309a9827', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:47:43', '2020-10-31 14:47:43', '2021-10-31 15:47:43'),
('eab73263ca2b966d0347ac93338ae658d62ce0f8cbc9227da6498c72f80c48c8fc8c9f0e1a9b7a94', 27, 1, 'authToken', '[]', 0, '2021-01-01 15:19:04', '2021-01-01 15:19:04', '2022-01-01 16:19:04'),
('eabf129d5c16de7eea16460e563429ab180a5944a6ac2230dc691834357c0dcefe4f0cacc386418a', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:32:18', '2020-10-13 10:32:18', '2021-10-13 12:32:18'),
('eac367caeafdcdb63aa65c6135fb4061a015bf262c0944795000cc7032f5ccc10dad60e5859a729a', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:50:03', '2021-01-01 11:50:03', '2022-01-01 12:50:03'),
('eacd58311070caff772013c3e373f52aea18c448d716ecc9879510f1e3fbd9c850dbd657630e4624', 27, 1, 'authToken', '[]', 0, '2020-10-11 11:27:04', '2020-10-11 11:27:04', '2021-10-11 13:27:04'),
('ead68c3be9cd7e24d6069244baae0afcde5fcf3fca0b0493166088ad7ac8d350d95695e8b7587c7a', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:32:45', '2020-12-29 10:32:45', '2021-12-29 11:32:45'),
('ead9142c845025224fb7c8b643aad677f83c7a07a1e097dc13b10f8d38eca579456ca7a8fe75e156', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:47:49', '2020-10-17 10:47:49', '2021-10-17 12:47:49'),
('eade2f2bec0f8efc739155df0c9d937096bf17f86b9cf111eb6a8de3ddaac6aa42f3f4ecada9658d', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:21:06', '2020-11-22 13:21:06', '2021-11-22 14:21:06'),
('eae6f90916d0e1afa00438272d06471068461008959fa46aa76c6ab3a61e5b0fc53cd6b526d71358', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:32:47', '2020-11-01 17:32:47', '2021-11-01 18:32:47'),
('eae756dc11012667b60f5e45a3aa292742ca3ef2b042ce01cc5886de47805441218eef28f1fc3007', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:48:56', '2020-11-01 12:48:56', '2021-11-01 13:48:56'),
('eaec871da8fbb8e43435932239120a62388b0494280ab91389043b2f51af0fdd99f6dd54bd3b1f92', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:52:46', '2020-10-23 16:52:46', '2021-10-23 18:52:46'),
('eaf6f8269dc1a21b7f2372220bf0ac1c0cc7d021cbee038b21bcf3989077dc73d2d3e759da3e7032', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:28:37', '2020-10-31 09:28:37', '2021-10-31 10:28:37'),
('eb1cc5d54ba8d5f9cd6cadd15d5c87c0ebe1660d561884b5341adf3f0e4afbbf6c1160720b8e69af', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:27:33', '2020-10-10 11:27:33', '2021-10-10 13:27:33'),
('eb2159a7597c715cf41bad3db701aaf92600923e37236ef82edffe367d4eb766502d058f42060b0f', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:12:02', '2020-11-22 15:12:02', '2021-11-22 16:12:02'),
('eb3aea24641202430ef83cd0b6aa5dffc41ba1fc51865d31660e22cc61f0c79e67d66f85d0591e1f', 13, 1, 'authToken', '[]', 0, '2020-09-26 08:02:51', '2020-09-26 08:02:51', '2021-09-26 10:02:51'),
('eb3e315dc5d13d0c5b985f8fc2efb1d05b9fcac68a011d2d3e3056a3b799b4494a2432e3e9b5f62c', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:40:07', '2020-11-01 16:40:07', '2021-11-01 17:40:07'),
('eb40ba9a52ec7227b9b691eeef2c87f28b09f7094d2b6ad9a8228647b48162f63738c9404f670602', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:00:25', '2020-11-19 12:00:25', '2021-11-19 13:00:25'),
('eb4c34dc130ad63688beee2336767d5e6cf5c64f82ef8c478337a6348350a4c5004fed6c7b582b24', 27, 1, 'authToken', '[]', 0, '2021-01-28 17:03:01', '2021-01-28 17:03:01', '2022-01-28 18:03:01'),
('eb58230a42b4d8d1bf4c8a544bbb2b3e6299bd0c527d5222136d100cfc837ac7edad76e83a2daf88', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:28:47', '2020-11-22 13:28:47', '2021-11-22 14:28:47'),
('eb59989af60828afc4daa3f1c79ee77d75746fad216c7519ed61a66cf57eef511c3c02666989948a', 27, 1, 'authToken', '[]', 0, '2020-11-14 16:28:28', '2020-11-14 16:28:28', '2021-11-14 17:28:28'),
('eb5c6eb8cf210a169c668975a1ad76ee1ae668699b878b56e97f0762907d8d0ea02053c5bb7c811c', 27, 1, 'authToken', '[]', 0, '2020-11-05 14:37:39', '2020-11-05 14:37:39', '2021-11-05 15:37:39'),
('eb68827e13b8e65d86549da9686f192d0d89051b4c23e79f5259015db72326e0a7984f3d7bf48a15', 27, 1, 'authToken', '[]', 0, '2020-10-23 12:45:17', '2020-10-23 12:45:17', '2021-10-23 14:45:17'),
('eb68a63066821e5e400704a25871db396228289a7c2b9e6d4d45e63ee8f3eb8d3e39bd0c25c07364', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:39:37', '2020-10-03 13:39:37', '2021-10-03 15:39:37'),
('eb69fc740d91ce8b509a74f5a28a184f259731cf8a6bd1b100c5360df493c70c64d793abaac8e5f5', 27, 1, 'authToken', '[]', 0, '2020-11-22 14:51:01', '2020-11-22 14:51:01', '2021-11-22 15:51:01'),
('eb7cb5b7d38af2e4c453b012971120ab966d643b0cc4a669787509ed8e7e51c2a7df820096fc6776', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:31:09', '2020-10-23 11:31:09', '2021-10-23 13:31:09'),
('eb8e2bf832170028c2e9a58139e25b01d197457294b5f97b67b9e73249053d37fb0e7f36e7c5df7f', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:57:10', '2020-10-19 12:57:10', '2021-10-19 14:57:10'),
('eb92e4c049dcba55fe7b572fbb4866ff0bda5a5318c15605e58b02870d09f6a19c740ecb880db585', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:42:25', '2020-10-13 09:42:25', '2021-10-13 11:42:25'),
('eb95907687aacba5a5fa848b1f52f076f3799f89459dba99f02f4a41595ecdf4706b721b03e439ba', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:08:40', '2020-12-06 10:08:40', '2021-12-06 11:08:40'),
('eb98c47d2b8ab042c452ac31e5e6032eca7ee772b8e9d1fbd0657ecd13760809caa59d23b5789d3f', 27, 1, 'authToken', '[]', 0, '2021-02-07 13:39:03', '2021-02-07 13:39:03', '2022-02-07 14:39:03'),
('eb9a4f91d8c6eac12120e322a57a72fb90335591fa301c335edea6188fd201cfcb0187efb781d507', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:43:16', '2020-10-25 13:43:16', '2021-10-25 14:43:16'),
('eb9aef4821fdb5d66362d0e2d9b2937f341fb9b4d6c7f3c793f871ee1c899c2beeb32b1bf72b80f3', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:22:51', '2020-10-25 14:22:51', '2021-10-25 15:22:51'),
('ebaaf3af99738c177d7d08d675bde796572e03a287c255f75db57cf24a6944d9d5b1647f8947bcfe', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:51:36', '2020-10-25 12:51:36', '2021-10-25 13:51:36'),
('ebc61280743c58b96059668d53352e00044b16d9771f58defb96fda2f6deb9c47ffe55312aecc565', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:32:20', '2020-10-10 11:32:20', '2021-10-10 13:32:20'),
('ebc9d9276f26307bd8ef13fc6bfee8e408f4bf1fc269632cf73f0392dbbac65741fe19a0413f2d2c', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:11:17', '2020-12-04 10:11:17', '2021-12-04 11:11:17'),
('ebd8625cd6e9eef378774b721020a368ea26840387a247eb5f6e39641efbb3d4f47fff22e668869a', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:33:15', '2020-10-23 17:33:15', '2021-10-23 19:33:15'),
('ebd94811c69d9ec45ca1b73419768a6c21bf8c2b4008ca580b841c64ee61c7de84caefd8084efe73', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:15:40', '2020-11-01 10:15:40', '2021-11-01 11:15:40'),
('ec0e0fe6aee079496c922c162edf7596efe02daa1caa5b441532a6b615da1887a150096454e7d2ca', 27, 1, 'authToken', '[]', 0, '2021-01-06 14:01:17', '2021-01-06 14:01:17', '2022-01-06 15:01:17'),
('ec15d72566e6d3c7567b822fa23fd31811c7720c56f6186a857aec013e6a4d8ad8e74738f5bdc610', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:04:43', '2021-01-07 12:04:43', '2022-01-07 13:04:43'),
('ec1f6c138e5d446fcbb05cf1fa0f2d40379053214fa342f30184deede2ea6dbe0a8c03649ee0c20d', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:59:30', '2021-01-03 13:59:30', '2022-01-03 14:59:30'),
('ec3eeea440649e3f53374fdf04ded8fd25c6e661a7ac7fe0f737492d4d8f89b934b5679643abd28c', 27, 1, 'authToken', '[]', 0, '2020-10-30 11:57:48', '2020-10-30 11:57:48', '2021-10-30 12:57:48'),
('ec4c94b89ce5304999fd291481e2beb84c28f02683e52493adef0ac0e9cd57252a9c34c0a2996ea7', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:38:14', '2020-11-05 16:38:14', '2021-11-05 17:38:14'),
('ec54068981ad89d05f2f8d27dbc3c56c59207b9dc18b990423b39dccee4f85064de846aba6108fb4', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:15:33', '2021-01-02 11:15:33', '2022-01-02 12:15:33'),
('ec769cc502243e7d3ed9d7b3617b56f400e47c06046412dd3e3ca5cabff36bb39e269dc9dcc7a992', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:03:13', '2020-11-14 15:03:13', '2021-11-14 16:03:13'),
('ec81a23fad74caf8c18d4c80a48d838fc0a291644b7ba9020b37015e2070c678b8443830de988e12', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:50:57', '2021-01-07 12:50:57', '2022-01-07 13:50:57'),
('ec8d895fc52dc1d78dfbb9c92a9df8391c7fcb09e7530782539c7fcc6911bdc8c2173ffdd3d81a2c', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:09:47', '2020-11-19 12:09:47', '2021-11-19 13:09:47'),
('ec8f9b31b75919a26da8e6fd7b7b9efea6520e4c26950acd27e2146fba5a8e3280479cece519605b', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:02:16', '2021-03-27 15:02:16', '2022-03-27 16:02:16'),
('ec9ea20917cd26231cb0a2282ba00eea6d44a6f04d567ee3996387b6de12c944813feb9d940e7f0b', 27, 1, 'authToken', '[]', 0, '2020-10-17 14:16:59', '2020-10-17 14:16:59', '2021-10-17 16:16:59'),
('ec9ebdc4734d881f8015256e7017143f7b3d04000e4205a37570a78fe8f3e9291bd7ad8ae4ff72e6', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:55:32', '2021-01-06 13:55:32', '2022-01-06 14:55:32'),
('eca5b63235d200a522dc7dc9de81869757d22fc74465d0b846dd164cbd60a46437b8d678d4a12158', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:20:40', '2020-10-25 13:20:40', '2021-10-25 14:20:40'),
('ecbde8d55bb218831aa0e86fe1444a19cd39265c7fb368d101e779ba78d332582d4daa0975ad5145', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:50:57', '2020-11-19 12:50:57', '2021-11-19 13:50:57'),
('ecc81ff695bc9c28b7e3a58fd707af86e6cdbb766da119f637dc61853b37a346e034799b1e0b7f14', 27, 1, 'authToken', '[]', 0, '2021-02-11 12:42:00', '2021-02-11 12:42:00', '2022-02-11 13:42:00'),
('ecd61d52891499f0633841812e69a77d8fdb17261a5b1ebf328ca6ea76195cc8e048936b8692afb0', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:07:49', '2020-10-13 10:07:49', '2021-10-13 12:07:49'),
('ece48849869b4e6b04cba8f93701529cb8e9342fedfc3104d0c0564d6ef4339e75213c39b52c7ef3', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:05:37', '2020-10-23 11:05:37', '2021-10-23 13:05:37'),
('ed5cbf4eff3384754a828c601fd53c7db8d61c3b84fb3a4e6f15e136a84d29db47ae1b567b4c7726', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:32:40', '2020-10-03 13:32:40', '2021-10-03 15:32:40'),
('ed797b349824459c1116c974311d28c788cca7cda91fec5cd8eeca183937d0c0acefcab75333ddc5', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:05:39', '2020-10-03 14:05:39', '2021-10-03 16:05:39'),
('ed921d08c90d85e0ccb710e29397d3eb3109a61d7a534d79ce6e2b6112768442ead16db7ac40cd1b', 27, 1, 'authToken', '[]', 0, '2021-01-30 10:04:54', '2021-01-30 10:04:54', '2022-01-30 11:04:54'),
('eda6d145841bad37b2c0d5602bb2e4949e8e126365d18f5a5f2d577b77c0fd39ad6ad861ce8b20d2', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:41:01', '2021-01-07 09:41:01', '2022-01-07 10:41:01'),
('edad9ada9bee0ee8f3e8eb9a38ce6a83e81e131a661cda2e7407dae8e7a6a5cd72a0f99844775391', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:48:14', '2020-10-31 14:48:14', '2021-10-31 15:48:14'),
('edcce684f13c79f0b02479d1a7cad855bac57eea07320b1a05c1af7e9ac9474a12414e6f1a0ebc22', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:53:03', '2020-10-17 09:53:03', '2021-10-17 11:53:03'),
('eddfda4c24162ad3562d21ee2d642d6c9d8196dfaef4b868cfe5a35dbfc0277a3f983ece58e02a38', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:27:48', '2020-10-17 10:27:48', '2021-10-17 12:27:48'),
('edede67130f664367de6c6bb3a10afb46434f27e6b68a49fafdf575c4fda76881b200910f4084707', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:53:14', '2021-01-07 15:53:14', '2022-01-07 16:53:14'),
('edefeb736437192e4b48f3ceedf82ead640394fbad37c876e0ca03f43d9b5630a76ec16918a1ba6a', 27, 1, 'authToken', '[]', 0, '2021-01-01 11:53:29', '2021-01-01 11:53:29', '2022-01-01 12:53:29'),
('ee02886bbdd315d85ee518446ba59f7595a8af61d1378037eb6dd1971707f96be2e1c38e1352ee9e', 27, 1, 'authToken', '[]', 0, '2021-01-30 10:09:47', '2021-01-30 10:09:47', '2022-01-30 11:09:47'),
('ee037865f32e13857106e8e7c144634ef01a4a1108b1f402e7847800802d728ef82646b294041353', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:32:34', '2020-12-28 13:32:34', '2021-12-28 14:32:34'),
('ee11ed86a097416eae159665ea82ad84ed6d71b15ba7770a8fcd2aac1f8e0343af9eff5073f2b92f', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:17:30', '2020-10-30 09:17:30', '2021-10-30 10:17:30'),
('ee12afd7c6c7fba97024d38b2e4333142f4712181c4d42d1da0cca2c707140989b71c8fd58a8ce40', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:37:42', '2020-10-13 09:37:42', '2021-10-13 11:37:42'),
('ee1d0b92ede545c592bed71d5fbd91cc601cf939d6c7adea9d8d76d9469de4e60d137bea0b82f2e0', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:29:10', '2020-10-13 09:29:10', '2021-10-13 11:29:10'),
('ee215af14d1345ea626a099805cc6095ed64bc3bd1590a820b2024b6446d68b1422ca5fd63d25aa7', 27, 1, 'authToken', '[]', 0, '2020-11-19 11:00:57', '2020-11-19 11:00:57', '2021-11-19 12:00:57'),
('ee3c75f03b13a1803ee24d23a5b3542c6e88700e2e162dff72f316cd31b74716f017224b3e52cb04', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:29:15', '2021-02-10 18:29:15', '2022-02-10 19:29:15'),
('ee55b1a8407ec947f3100b019dbf6a1e8f6e5fe3760ac851024ff0c0ac29bfc1b42088c576bb0cb3', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:45:29', '2020-10-23 11:45:29', '2021-10-23 13:45:29'),
('ee5bbd8d41592d48fbd14320ed09f3b4274fbca953d22ff378f192cb831b15f594a2011bddd74525', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:49:02', '2020-12-29 10:49:02', '2021-12-29 11:49:02'),
('ee63cb382343dbac295b103c59851a225a574684445ff8af0e6377543b7f99c1335c964e7ae7190f', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:36:23', '2020-10-23 16:36:23', '2021-10-23 18:36:23'),
('ee7d4869f1d23a0bdb5afd10d84352ba949a88346a497d55da760812e9efeee3ab016fbcdfea8354', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:50:10', '2020-10-03 13:50:10', '2021-10-03 15:50:10'),
('ee913cbdab0d8542b6050845dc023660b4a5717366566c2fd217d9b54b08ff4be0df7e8307b0f8ea', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:07:22', '2020-10-05 17:07:22', '2021-10-05 19:07:22'),
('ee9d3a2a2fa7c4b4d165180d5173e6e077d949cc6beace6758ad14a8537d94036c42d4446a3d368a', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:35:55', '2020-10-03 13:35:55', '2021-10-03 15:35:55'),
('ee9ef56fb715646b61b4a208b40f93da69f0f84afc28bc202a4c236f16713ef48cfe222761f64c1f', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:38:26', '2020-11-15 13:38:26', '2021-11-15 14:38:26'),
('eeabefcec6e20820e1f91338ad0a2cca35e545505f3fa58ecf1cd34ac30bb8aababaf4da18dafdd5', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:37:22', '2020-10-17 11:37:22', '2021-10-17 13:37:22'),
('eeb24cd4e3cc071dbb617e3c280beef15080eddec339eac8eb995b93209361870a9b661582953924', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:59:58', '2020-12-31 13:59:58', '2021-12-31 14:59:58'),
('eeb6054ca685d2350dee92bc5bc6e4c3eb2f7d3870eab2bb9d002a6d382a3f9df5488a09cbe38771', 27, 1, 'authToken', '[]', 0, '2020-12-28 16:12:44', '2020-12-28 16:12:44', '2021-12-28 17:12:44'),
('eecd7c25c03b3d63f174b08372ac492e2d3e7e703f5ac64396d1776383f6087ecd75c51b69b42cb3', 27, 1, 'authToken', '[]', 0, '2020-10-05 17:27:55', '2020-10-05 17:27:55', '2021-10-05 19:27:55'),
('eee13e0d2277e7c51425e0ee4251dd5edbc82d926bd78e8c5eab0fdb98921025797f89100060061e', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:09:47', '2020-12-06 10:09:47', '2021-12-06 11:09:47'),
('eee970d606cccf830756a534f83a37ad185462d1091e8f49a0da8c23e1f083444ae55f10e3cd0b1e', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:31:54', '2020-11-19 09:31:54', '2021-11-19 10:31:54'),
('eefda708487b87bfe72c71eb0c00de28f5215200786a8f1264b98cb831ee77bf006df8eeed15c238', 27, 1, 'authToken', '[]', 0, '2021-01-26 19:05:19', '2021-01-26 19:05:19', '2022-01-26 20:05:19'),
('ef18f1a73d0c0359b6b45d26a6389a272c1d1d89d25f836270e8c33084240babc20d22a36b911996', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:27:42', '2020-10-31 14:27:42', '2021-10-31 15:27:42'),
('ef193a849997505501ed8d4524170d7038a780036b2cba59cdc9b4977d0308aa7c94f9a4ec8f516e', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:41:36', '2020-10-18 08:41:36', '2021-10-18 10:41:36'),
('ef2a785ff864709f3e423a5763a296d2d296bb8403bd832dcd7bc4134bb2d9199bcd3d3502cabd43', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:49:33', '2020-10-13 10:49:33', '2021-10-13 12:49:33'),
('ef318365668c1377a093a971fa9e215cee98d1616f77c427c4b75d65d72f63f438c65cbf5ad740f6', 27, 1, 'authToken', '[]', 0, '2021-01-28 19:09:13', '2021-01-28 19:09:13', '2022-01-28 20:09:13'),
('ef343f4718502131d42d042c321fdab580684a90ae5d97051feab9da132b9250b8ae10a99be68a82', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:43:18', '2020-11-19 09:43:18', '2021-11-19 10:43:18'),
('ef45bae92d450dafe22f21b8ff63423857857b3078f3abdca5137fe273057505d32f679e36e414b0', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:56:44', '2020-10-19 12:56:44', '2021-10-19 14:56:44'),
('ef4d26fe3acc9568c5fcc47fff0943ba4d6ca7d626dcb4e005d4ec5c2d11a53deaae746180ef19e6', 27, 1, 'authToken', '[]', 0, '2020-11-11 16:27:13', '2020-11-11 16:27:13', '2021-11-11 17:27:13'),
('ef5066a0babfbc3cfbc4ed68d32638d4ae51516126cf3ddfdac7e87ad24a7cc79153718fe764c3d7', 27, 1, 'authToken', '[]', 0, '2020-10-30 12:00:24', '2020-10-30 12:00:24', '2021-10-30 13:00:24'),
('ef52b6918b0c6a9670175bee12c3539503a10147ef5a62a1d9036ee7663ac99e7fddf560046864d7', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:48:30', '2020-10-15 08:48:30', '2021-10-15 10:48:30'),
('ef5bcaec3461353b0d76af4e576d4d140cd6f8c9a37d461b714817928f8466bc0b9fd36855a41e2b', 27, 1, 'authToken', '[]', 0, '2020-11-22 13:54:05', '2020-11-22 13:54:05', '2021-11-22 14:54:05'),
('ef635d5cde4df5ece0fee7523adb929028063b1b2669c9895bad6f1545132ea75b708f59976243b2', 27, 1, 'authToken', '[]', 0, '2020-10-03 12:45:29', '2020-10-03 12:45:29', '2021-10-03 14:45:29'),
('ef6aa0324a722f601d51a21f90d5d70f04fa6172761de60de5862b7c6b4a0b2429dc467dc6608a55', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:35:07', '2020-12-04 10:35:07', '2021-12-04 11:35:07'),
('ef6b97e4b50f8488cef99e0231f266a9376095b1a90969e350abbc7567489586359e024b78a5fba7', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:06:12', '2020-10-23 10:06:12', '2021-10-23 12:06:12'),
('ef8ebb07357cbfaca0b529e2bec72ccae548a9bcd2fc08385ad79f1f70fcaac51fabd54d88057ebd', 27, 1, 'authToken', '[]', 0, '2020-10-31 13:47:39', '2020-10-31 13:47:39', '2021-10-31 14:47:39'),
('ef9692738a94b77fca3a801f48ad598aa65762d025e79c9f597fb3d13ebbdf1872c1b838be2b0224', 27, 1, 'authToken', '[]', 0, '2020-10-17 08:52:14', '2020-10-17 08:52:14', '2021-10-17 10:52:14'),
('efab1a3707754a4f85fb30e42b390a87283cc3cc1c87f7d2df1a4e7a61451de88d49c896db3eda69', 27, 1, 'authToken', '[]', 0, '2020-10-15 12:39:46', '2020-10-15 12:39:46', '2021-10-15 14:39:46'),
('efac4656d9426d4df59b5b47224487c0c8fab718b3887c7813e7bb1e97e30b8af1e73bb0196c9b32', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:25:12', '2020-10-25 12:25:12', '2021-10-25 13:25:12'),
('efacc4c1880e0a883f61bf7b626bd2c3d624bdb6939dace6a193e13e45c28b1644daa3742c51740a', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:48:50', '2020-10-17 12:48:50', '2021-10-17 14:48:50'),
('efc77f7e8f00ebe6d05517e5f6d3feff274085b2a436f1e3b9430cef8a707583aca277240101d429', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:41:30', '2021-01-07 14:41:30', '2022-01-07 15:41:30'),
('efe5ee370524c05b41baef07b15f7ffe32a62383e3bc7ad1ad7a73680d410d81d98ba71883dcc369', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:49:33', '2020-10-31 11:49:33', '2021-10-31 12:49:33'),
('efff76be66ea1679aae2e1106187c0ce08050dc84e104f7aaa9eef008e9c89b96789c3775f943b82', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:31:03', '2020-11-22 15:31:03', '2021-11-22 16:31:03'),
('f00251e4f2ad8b02f507f9a63d2e0b6cf8f6e96a4abdf576d3cc4d034a96bba384fa320de04887b4', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:16:13', '2020-11-15 13:16:13', '2021-11-15 14:16:13'),
('f014614da1adf634f4bb8f13fe6e60cb1d10937cd3e9f98a6e3cba5acc3d096d881603209073ce39', 27, 1, 'authToken', '[]', 0, '2020-12-28 09:58:31', '2020-12-28 09:58:31', '2021-12-28 10:58:31'),
('f0232544e088592590e4f63a3814ebcab3467cb5b8cc85b8bedac2bc339e1a3a5b84dc0b54a95623', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:20:00', '2020-10-30 09:20:00', '2021-10-30 10:20:00'),
('f0262ce830e0493b4969182dee6db6955867835d196953c93189f6a5971f16373bbf25fa2d8a595f', 27, 1, 'authToken', '[]', 0, '2020-11-19 10:57:23', '2020-11-19 10:57:23', '2021-11-19 11:57:23'),
('f026ecba761a1e4b41710981c9f5c3d9c708e52b9df94f4d665009b0ae95aeb69ef3166a0f3a2d00', 27, 1, 'authToken', '[]', 0, '2020-10-27 16:57:04', '2020-10-27 16:57:04', '2021-10-27 17:57:04'),
('f02be7996a941e24c79ff5cd997f0d8e389cc129635bbe279aa0454646726dcd9697fae77c6f2f36', 27, 1, 'authToken', '[]', 0, '2021-01-28 12:55:36', '2021-01-28 12:55:36', '2022-01-28 13:55:36'),
('f036f219c107abca699ccb59f3c96481793e6663e05fdafc500e7071931c7a7f53c502e47825d35a', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:12:53', '2021-01-01 12:12:53', '2022-01-01 13:12:53'),
('f03f30fb94cea7479682017f2135be5b977bb533131ddddaf1ddd3642b7468993da17d7d2b05da69', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:41:39', '2020-11-01 14:41:39', '2021-11-01 15:41:39'),
('f0400cf073bc9d75492301cf3c28d8862ab023eea395713be547e52ec2a55974c2d0d07b139274d8', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:33:50', '2020-11-01 14:33:50', '2021-11-01 15:33:50'),
('f053712010807acf7306986ac106499c2f9493bbaad114ca6c29c666e021412b22fb44f986689700', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:13:53', '2020-10-10 11:13:53', '2021-10-10 13:13:53'),
('f0967140a11956768cb15e91ff388a76844b32ae54c703d61c031295040ea199ee70cdb68e3a96a5', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:33:55', '2021-01-29 16:33:55', '2022-01-29 17:33:55'),
('f0ac6931347c9572f53bedf817d1ce174494ef37f54915be369a4bf4354416f31e9e523893aa7edb', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:40:18', '2020-11-01 14:40:18', '2021-11-01 15:40:18'),
('f0c594770fd45cb48d58ffdaef8fa92d31de75d8d3c15304bb433c0db83ff3ee85ee6c648ab94c1e', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:56:45', '2021-02-07 14:56:45', '2022-02-07 15:56:45'),
('f0dd0f360a151c9ac6547cfb802e887240830edd89c559c911f34aa3e29e8f805da35ffebeec388b', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:09:15', '2020-10-18 08:09:15', '2021-10-18 10:09:15'),
('f10b99d081fb4f72ba9a42dab9cb2cd466a87a342431c4876f12621b7771e2f8f1bd46766c1944ef', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:32:23', '2020-10-19 12:32:23', '2021-10-19 14:32:23'),
('f10cd65e4ac427c3c5c03fe9d18c3fcf991c402e8737c3310a9c9a6ab86fa752cb5915e6edd1d44c', 27, 1, 'authToken', '[]', 0, '2021-02-10 18:23:53', '2021-02-10 18:23:53', '2022-02-10 19:23:53'),
('f10f777750ecebe4a79eda4307c39b7541d4e5f5c865fdcfd4fa1a5818e16f8a17e68d21e458abdb', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:53:10', '2021-01-03 12:53:10', '2022-01-03 13:53:10'),
('f116bbca3ee1b03e6830f988bc7e89634b7cab6103b531a87ebac0a999850eeac4e8af2aff9bb778', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:18:51', '2020-11-15 14:18:51', '2021-11-15 15:18:51'),
('f12723e32dc223c16570368a55cfa7d95531412f9f51b592f8fca2d350ecd359de515f6abb5ed424', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:03:39', '2020-10-18 10:03:39', '2021-10-18 12:03:39'),
('f13b43801b54b2135c4ffc3de6093ab4c60de9ef74149f0338b0f9049b7a12b55bdd7d7f1e18ca11', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:20:04', '2021-01-03 13:20:04', '2022-01-03 14:20:04'),
('f15ce8a59d0fbce8a57095ef88e7830fe979076a20e53d6ea1ace836f94c86b813ec4ebab1617875', 27, 1, 'authToken', '[]', 0, '2020-11-22 12:47:53', '2020-11-22 12:47:53', '2021-11-22 13:47:53'),
('f1680cdfe5162c1e8f55a5b6394031ccece09ba8e23ae96b3023485fb510b0e7b890ad12c70d4215', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:08:33', '2020-11-05 16:08:33', '2021-11-05 17:08:33'),
('f1685e179bb7e16022e8d404f3fa4ea16d5db99fe2fa488c4493db173ca48a8726b3add1172998b5', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:39:04', '2020-10-15 11:39:04', '2021-10-15 13:39:04'),
('f16fc6766c8b191bbadbb8a29ee91bb6267cfa9efb7a2a799f6c9f9e8c57b66f5cdcaafb58987c1b', 27, 1, 'authToken', '[]', 0, '2020-10-15 09:59:04', '2020-10-15 09:59:04', '2021-10-15 11:59:04'),
('f1dfc823965addbbf4f722d34dd9616fe4fca2ca9ba32c7b61d2a64b1cb65b83cd120f660f18831c', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:14:03', '2021-02-07 14:14:03', '2022-02-07 15:14:03'),
('f1e2deceb8a40415cc413084c6205fe90ea2b47cf7f6b52f67c920882dae16268854f3f5fd323531', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:50:14', '2020-10-31 15:50:14', '2021-10-31 16:50:14'),
('f20995889e1d23b4e6b4d751abccbf3533a94c925107c341da20c183dec2b261901557a8e6bc360d', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:57:22', '2020-10-18 09:57:22', '2021-10-18 11:57:22'),
('f21208e9a3857382f8e77378cdf4fd5e3c66a51aeefdb52fce0cee0e213266d413cf0e13f844ba58', 27, 1, 'authToken', '[]', 0, '2021-01-07 16:09:58', '2021-01-07 16:09:58', '2022-01-07 17:09:58'),
('f214da196e1bb914b21af70f4c4754baafff4f31cf7d28e15c71236d8a238ca6191473278717acf0', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:16:42', '2020-10-31 09:16:42', '2021-10-31 10:16:42'),
('f21e595cde16161fa4cc039760eb873fb47f09c05d25d12e9e130fd1f33e127e24c20168b35526b3', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:08:16', '2020-11-19 12:08:16', '2021-11-19 13:08:16'),
('f2275efe755e50e6866b0881b09f9ce005c9e14925a1497a69fc50df061c03dfb0014dabac81a1b5', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:16:51', '2020-11-15 14:16:51', '2021-11-15 15:16:51'),
('f24d93a7d845b4cf560c0345ee887cfcb21870c49ca231c5002ec79d050fe670315d04bfdcb8c441', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:51:27', '2020-10-17 09:51:27', '2021-10-17 11:51:27'),
('f252922f08728ae7e76ca39a4628d9c72ad130ec17b7d4c5f67871f78b7ad50b3cc5c28e0242f0aa', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:28:18', '2020-10-25 13:28:18', '2021-10-25 14:28:18'),
('f25f7bc895dff599e8138e678225f33915612deb82458ea317157bacaa94e5e23a107fbb2ac2998d', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:39:45', '2020-10-31 14:39:45', '2021-10-31 15:39:45'),
('f28a9c124c7ca002a78ce21cb5996b88f8815e56958c59cf3abf53f52d72e5079712db08bd931056', 27, 1, 'authToken', '[]', 0, '2020-10-17 11:06:39', '2020-10-17 11:06:39', '2021-10-17 13:06:39'),
('f28dda9a8b8cdd5ad08d4add195f2913e0810aa7a9492c84ffd5ffabc32b4c0362c6892106ddd092', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:21:20', '2020-10-19 13:21:20', '2021-10-19 15:21:20'),
('f28f91427e232b0eac7f66030845196de14aefb5b4d82339f6357a087ae43d876f8e796b2a2e6687', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:23:17', '2020-10-13 10:23:17', '2021-10-13 12:23:17'),
('f29af133971e88333a0fc445384bd75f78984c049c54aee394914165e022f8bfd0fde0e4a45877b1', 27, 1, 'authToken', '[]', 0, '2021-01-07 09:39:53', '2021-01-07 09:39:53', '2022-01-07 10:39:53'),
('f2caea72aa844979b78784e8d1ac6c9346bd94c62184b1b5b247fb97988e56f2751feece12a023b5', 27, 1, 'authToken', '[]', 0, '2020-10-25 13:46:25', '2020-10-25 13:46:25', '2021-10-25 14:46:25'),
('f2d64cf07d3bdc7554cca5eed4733abf3a237516f30fc38634b6846581e98ff7286e071c021fc073', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:08:45', '2020-12-31 16:08:45', '2021-12-31 17:08:45'),
('f3041f1bed83312c910a6c61412e262c4cee1ccf4536944cd03d31525d43fbbb5b3c124a936b5946', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:26:46', '2020-10-30 09:26:46', '2021-10-30 10:26:46'),
('f319a7d8ac9311e2ac6301a8cb4e283c556108c1b209fc0a6b9bf909e9c1046250a17e8b0d6037d2', 27, 1, 'authToken', '[]', 0, '2021-01-28 18:01:40', '2021-01-28 18:01:40', '2022-01-28 19:01:40'),
('f3361aab231ce279cc04ea58d585cba3a0b3559c079027a79d1728c209911076e3b8ce2cc843eca4', 27, 1, 'authToken', '[]', 0, '2021-01-30 10:06:19', '2021-01-30 10:06:19', '2022-01-30 11:06:19'),
('f34c4faf5ce83b304264ffbbcb7be40d8b8aba7bd4d33bd4febe5f810203a43f0295eb3259b79d96', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:53', '2020-10-03 14:10:53', '2021-10-03 16:10:53'),
('f34f841605610a39707b4283afd1a053678cea0c7be6d069e22648a26b94ba2f5448f39d8aa67545', 27, 1, 'authToken', '[]', 0, '2020-11-12 10:56:35', '2020-11-12 10:56:35', '2021-11-12 11:56:35'),
('f36d23ac0baf77237cd30937e196aa890a06975378429c0107fed322156a9101baa73723130a6667', 27, 1, 'authToken', '[]', 0, '2020-10-03 11:39:41', '2020-10-03 11:39:41', '2021-10-03 13:39:41'),
('f370d42f25abfd6d0c93fd3b3cefa55ed719517eea41ef9083c825a46da363a4bc4d9e1fea750bd3', 27, 1, 'authToken', '[]', 0, '2020-11-14 15:06:04', '2020-11-14 15:06:04', '2021-11-14 16:06:04'),
('f37eaebd9673556bfdce22cd04006af35e6c7eb83ad0a6f2d299099af4ca2c590813af526d29f1bb', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:36:43', '2020-11-05 16:36:43', '2021-11-05 17:36:43'),
('f3b5a5aef97aad0f174acf688d96f69102625fbecca8ce75e2b7c6f1ee64de9192194eee6f019640', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:29:39', '2020-10-18 09:29:39', '2021-10-18 11:29:39'),
('f3c02cf07f88604959e9b997d415ce66cc473d90e936b8c4dbce770c4228f340271b7bdc7de91b6b', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:29:47', '2020-10-23 11:29:47', '2021-10-23 13:29:47'),
('f425903df67365dd853e14cc096928ac3af3e535d2b6591fa0ff15fefca09b3c38fcb7e9826d4955', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:26:49', '2020-10-23 11:26:49', '2021-10-23 13:26:49'),
('f4414b2f5df4637cc539af3782a1fe82e33562bb394dfef36b217f3570d7f7429a5901e28de9da8f', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:55:07', '2021-01-30 11:55:07', '2022-01-30 12:55:07'),
('f44453e435698b7a9b285c39403bf01b7c4325b56427e39cffa6e383171ed1c42f8ea33163285ddd', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:11:51', '2020-11-01 14:11:51', '2021-11-01 15:11:51'),
('f45d68d5a6a16804751cd63572320e8200e544f3b656dd1121e1593b1f572495de28679253547777', 27, 1, 'authToken', '[]', 0, '2020-10-27 10:17:33', '2020-10-27 10:17:33', '2021-10-27 11:17:33');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f474e70f711c8b3f183dc6ecb70f74c27c405ec3176dc4553a268721fc1d9ac9956be4d8e498831a', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:17:14', '2020-10-19 14:17:14', '2021-10-19 16:17:14'),
('f479348b16f7a554ef7046587b9009d321a9d4ba3213dfd56270fdd18d660bed8546619d6212c5fa', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:18:57', '2020-09-27 10:18:57', '2021-09-27 12:18:57'),
('f4c8607369c09829012a29e1da84451fb8036e3abf9ca932372df8877a1a1d422757f483c0b864c4', 27, 1, 'authToken', '[]', 0, '2021-02-02 17:29:22', '2021-02-02 17:29:22', '2022-02-02 18:29:22'),
('f4c9703bc38ef4de04d8eb52850563ec6e6ffb6c7c7eb91339440ea5cd647fbacf58cfa3adb090ba', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:39:36', '2020-10-23 16:39:36', '2021-10-23 18:39:36'),
('f4d5c00b8a49dbb520164fbbf4d168ee3589c923638b5aed23528e34cf7f0dbdaedc9f407c4509e0', 27, 1, 'authToken', '[]', 0, '2021-01-06 15:56:33', '2021-01-06 15:56:33', '2022-01-06 16:56:33'),
('f4ebd280556539bc70051e5f2171beda8ce7e2a16b97e9fec857003c8f220a66df755c75dd38193a', 27, 1, 'authToken', '[]', 0, '2020-10-18 09:54:25', '2020-10-18 09:54:25', '2021-10-18 11:54:25'),
('f4f40fa788ad6b6dd018096e87cbb7923d7af9a0c8549b0506cb01da72bde2e76493643ff6fabc4a', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:43:10', '2021-01-07 14:43:10', '2022-01-07 15:43:10'),
('f4f47d7caf54e143036bc280b591076a336d1f9ce35d1486cca95ca263ec3f6c3a1541ced2de130b', 27, 1, 'authToken', '[]', 0, '2020-10-29 10:41:09', '2020-10-29 10:41:09', '2021-10-29 11:41:09'),
('f4fd6cba8f59f42d7bfcbea76054b7e7a037b48f557dbf3dad95d4800d9c48bea2d67d9852abc046', 27, 1, 'authToken', '[]', 0, '2020-12-04 09:44:58', '2020-12-04 09:44:58', '2021-12-04 10:44:58'),
('f508b25c3f870b09712bd7e2e7ebee9059554e8d2ac271ca2f3d28aafc7525e39cdd14aea8858c0d', 27, 1, 'authToken', '[]', 0, '2020-10-18 12:23:51', '2020-10-18 12:23:51', '2021-10-18 14:23:51'),
('f53d706cfcc13875dd7f9a062a8d5d8f4522626202b992e560df59efe1d4ebdc7eff0761363a9bd3', 27, 1, 'authToken', '[]', 0, '2021-01-27 17:28:48', '2021-01-27 17:28:48', '2022-01-27 18:28:48'),
('f54dc332cc4fd3540a8c3eb553c15c9fe1f1108d26c7aed3b27ce7a1cd6692360ca0a4b515cbe591', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:41:15', '2020-12-31 16:41:15', '2021-12-31 17:41:15'),
('f5744f5851cbb047b266202ab763c5be11ef96940d1f804acb1212c62ac96d3873ecc5dc4c246e8d', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:49:33', '2020-10-19 14:49:33', '2021-10-19 16:49:33'),
('f5766ef0ffe1da1661d71f8641a31bf0ee2f5dc1c4f66601234b24c2053271140b4bef9d97cb6570', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:30:32', '2020-10-17 12:30:32', '2021-10-17 14:30:32'),
('f57bd93ca49e55408a9a8c3a914f6d4d2e2528fa5a7145a0782c74494b0cce48ac5ecc781f03f4a2', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:01:57', '2020-10-03 13:01:57', '2021-10-03 15:01:57'),
('f57f5bea87a75687c16a81adc650db0efb3717168dae874d7058828aa35dece12b4564be0d484f66', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:36:44', '2020-10-13 09:36:44', '2021-10-13 11:36:44'),
('f585f3dbe8d15523447c049b7400db420ea78b5585b125b9c164e0dc220547b917c24679003d730e', 27, 1, 'authToken', '[]', 0, '2021-01-17 13:45:49', '2021-01-17 13:45:49', '2022-01-17 14:45:49'),
('f5b399a425af262491e82e7de0215ffdc4a0a88779c7a9837c04c077221d7ce5fee2372f30ad5543', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:59:10', '2021-01-03 13:59:10', '2022-01-03 14:59:10'),
('f5bef91a8171659a60619e5cbe2f0dcfe4005232a10141716e6a3f2daa3ee74fece831211ff28e4f', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:37:33', '2020-10-18 08:37:33', '2021-10-18 10:37:33'),
('f5bf58b5d5256b387fbc6b36024e440b21c561f8942be0abf1e0e660c09b70242dfbc4a852dc5dab', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:22:31', '2020-11-01 17:22:31', '2021-11-01 18:22:31'),
('f5d75b2e228b40ee5eca7df26b62fcb255f13e0a1b3db06aa3a9017630bc60b912f5acfce9853f90', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:37:14', '2020-10-30 09:37:14', '2021-10-30 10:37:14'),
('f5dfe45e946e5103647824be327fbd0effd6651d1a2b5b61383b56c7ce2268dd50b4f79faa97049e', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:52:20', '2020-10-15 10:52:20', '2021-10-15 12:52:20'),
('f5e82cd64991be78175c01488a3b5501915a38d60da5eb0c8ceb6092276a29d65607af1b570dc4c7', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:43:40', '2020-10-19 08:43:40', '2021-10-19 10:43:40'),
('f5fc68171207f5c51d650dfc987b6aa4bd92c428a0403fd7739f913b5cec58411dd567d66faf2959', 27, 1, 'authToken', '[]', 0, '2020-12-04 12:16:49', '2020-12-04 12:16:49', '2021-12-04 13:16:49'),
('f600c505dcaa707500ae548f7d16b1a29dafd8a3e9532c9b4069bcdc1418110e1b4c09c97f5c31be', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:32:32', '2020-10-31 11:32:32', '2021-10-31 12:32:32'),
('f619b2fc2c4d92ddb9fb6800d8f2933048f278698b7afbd918a3eac5768a357eb4c85f3bd7cc756b', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:40:42', '2021-01-01 12:40:42', '2022-01-01 13:40:42'),
('f61ecf7a6c77950a5f1a3fbf59c50a023d1b84b3bed23b106c30f78d3c25702c9d60740f8194c495', 27, 1, 'authToken', '[]', 0, '2020-12-06 12:43:27', '2020-12-06 12:43:27', '2021-12-06 13:43:27'),
('f62cf83a92ddd614fd86f20f6e18ed561ccec232dd4ba047da5f7527ff8db0bc8ad839f2a4ae0f77', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:54:10', '2021-01-06 13:54:10', '2022-01-06 14:54:10'),
('f631b4a3093d50f0a3f798c354575e18507e692e64c32e0362a7ae3e0d192e55db650393b5b01d0f', 27, 1, 'authToken', '[]', 0, '2021-03-25 18:27:15', '2021-03-25 18:27:15', '2022-03-25 19:27:15'),
('f6418f9d5978f0d5d85fc808626ebb9d0a16d8d6ec8002a07bd680a86456675ddedd78abe7508df6', 27, 1, 'authToken', '[]', 0, '2020-11-15 14:19:12', '2020-11-15 14:19:12', '2021-11-15 15:19:12'),
('f64898a1f6bf5f39e19c3dad96191450f2eddb40f8d058ca49061c6bd6a53cd46bfe887ca24a06fb', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:08:08', '2021-01-07 14:08:08', '2022-01-07 15:08:08'),
('f65da3d611a2e3c692a3fa2a8136fb0ae9666da47d17e94d8671bc519a7711be95ffe942f1a5f3b3', 27, 1, 'authToken', '[]', 0, '2020-11-01 14:48:12', '2020-11-01 14:48:12', '2021-11-01 15:48:12'),
('f66606b222946b64980c806351cee534c59e5175686770f7181dd5b880828f14de75d298b0390e66', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:31:13', '2020-11-05 16:31:13', '2021-11-05 17:31:13'),
('f66c845668a9a459c05463c736965907f68182915ed7891377b80bc89b612948a0dc6cbcaeab7235', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:52:04', '2020-10-17 09:52:04', '2021-10-17 11:52:04'),
('f675d8abe6e89edb2cdec97df64c61560786e5e6df22fd8efe295a25b7293c54967e62928d5a0256', 27, 1, 'authToken', '[]', 0, '2020-11-12 09:12:02', '2020-11-12 09:12:02', '2021-11-12 10:12:02'),
('f676177deb68e046a5ee847675aa7ca8d79e3d3a51e2ed99e4df2cee55e196bfa47a352d4a7a0aca', 27, 1, 'authToken', '[]', 0, '2020-11-19 09:53:27', '2020-11-19 09:53:27', '2021-11-19 10:53:27'),
('f696bfdaa4b6a90a0cf1034c93c501a6e835253562b14b0f4936801d7f48773ac6202c05718094d4', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:24:15', '2021-01-07 14:24:15', '2022-01-07 15:24:15'),
('f6aa603c85ab12ef7b139244d131951d490b5bb46719423f41099923186961c5be2ec8945552d39a', 27, 1, 'authToken', '[]', 0, '2020-10-31 15:44:45', '2020-10-31 15:44:45', '2021-10-31 16:44:45'),
('f6de7ced50ad2215da6768c4e680a3cf807a66eec1a3c85cb0d1a96a479bec9e2da192d52a0dfda7', 27, 1, 'authToken', '[]', 0, '2020-12-28 10:08:24', '2020-12-28 10:08:24', '2021-12-28 11:08:24'),
('f6e27173bfb78f610b5caa42539978347258de97d10798a838d8ecad1f52872a09838a02885a15e0', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:35:52', '2020-10-23 16:35:52', '2021-10-23 18:35:52'),
('f6e5c061aec4ce2d1d99d24828be4e7a0fb346f6f5717f080cd8b236ee58761ff5f2b47d183fb061', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:14:38', '2020-11-15 13:14:38', '2021-11-15 14:14:38'),
('f6f8e63ee5e252668a699f70b6ce2a0396139f17e19717823cc62e67a427135d9cc2d4a608d86612', 27, 1, 'authToken', '[]', 0, '2020-10-30 09:27:31', '2020-10-30 09:27:31', '2021-10-30 10:27:31'),
('f700e5ac9d8ca347876b664a6d53a1e767eb50ae973f774cc3e748d95ceba5b57e84108fa2cd6118', 27, 1, 'authToken', '[]', 0, '2020-10-17 12:43:16', '2020-10-17 12:43:16', '2021-10-17 14:43:16'),
('f718824c0f5392457632cba7c2239c235bb7efd83466a889c03d65da60c4d6484a2dc1612bcb98eb', 27, 1, 'authToken', '[]', 0, '2021-01-03 12:50:08', '2021-01-03 12:50:08', '2022-01-03 13:50:08'),
('f71d8c8915b47d15bfca3ea836e322eaa0e8b25f0af45a42e6ccb2fec1c0f1029cc55ee7f36f758e', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:24:32', '2020-10-03 13:24:32', '2021-10-03 15:24:32'),
('f730704d18f0a98691b6b61cf0b99a5f9409a18206ee0a0fe15753286f17c94c60067e1c2e91c7e2', 27, 1, 'authToken', '[]', 0, '2020-10-29 07:45:43', '2020-10-29 07:45:43', '2021-10-29 08:45:43'),
('f7363035f8410410894523a261811c50c72d6c07130656add37b75ad601a07c4755cbf1a2e1c1bd5', 27, 1, 'authToken', '[]', 0, '2021-03-27 11:44:56', '2021-03-27 11:44:56', '2022-03-27 12:44:56'),
('f7404d9f3e39a7f9a1cfe54cf5390b16034bdbbee6b22cd4c844f9bc4610585497fd7664dc190e7a', 27, 1, 'authToken', '[]', 0, '2021-01-01 10:17:26', '2021-01-01 10:17:26', '2022-01-01 11:17:26'),
('f7439c10acac391acfab1ffe3bd2b89dcf2d29fdc9a780204be6dc7aa7d8032e31f065c4898fa350', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:56:20', '2021-01-28 09:56:20', '2022-01-28 10:56:20'),
('f75ec932ed1b3cb2984e538d810cd679ae05694b38d3177f04fffa2c17a8b0d2b1486581cc56e655', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:37:55', '2021-01-30 11:37:55', '2022-01-30 12:37:55'),
('f76b5ebcfee10d2407fa143436c2273072443106f24d2b90eba908f2b3e2a9ef085ee4115012da8e', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:12:57', '2020-10-23 15:12:57', '2021-10-23 17:12:57'),
('f793b79a2d93058daa8216ffab3a7e49121b4a67526af30af0c602aa543b926663bb7fb8bed94bdd', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:20:07', '2021-01-28 09:20:07', '2022-01-28 10:20:07'),
('f79aab76a01375a8c80457d3e40e1d47cf6037ee17b339bed6016b87ec050ce426db30407e8f14f7', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:22:59', '2020-11-05 15:22:59', '2021-11-05 16:22:59'),
('f7afb65069b2f89c8ecb9d18a9f3e4babd48d3876fc0bfc27e86db5075cbb660c97ea5bdbf6f8331', 27, 1, 'authToken', '[]', 0, '2020-11-15 13:05:10', '2020-11-15 13:05:10', '2021-11-15 14:05:10'),
('f7c9494c6876075a36104b3acb5bf8dfcc04047636bbd385d35bf8dc3723482fe2bb65fd10a07bd1', 27, 1, 'authToken', '[]', 0, '2020-12-28 12:11:44', '2020-12-28 12:11:44', '2021-12-28 13:11:44'),
('f7cc25e4e40aa1e049a4427050ef5e79e6f42b37eed6b8440e9d369e20246107d7011d5d35067b1d', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:42:06', '2020-10-18 08:42:06', '2021-10-18 10:42:06'),
('f7dbdea8574b5ac1a96e721ae657327443e78c68bf0e599a93f9ceeb34f39291cc6613c7604e1ebf', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:37:35', '2021-01-06 13:37:35', '2022-01-06 14:37:35'),
('f80f3749df0d0cb22c5100d3443cdbd09b3c4258c79d385bb3afe5dd9a8d975a1721ead7fddeb626', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:27:18', '2020-10-13 09:27:18', '2021-10-13 11:27:18'),
('f8121a3b0400817ab5c9e10c8cfbff90df3ba842f8a41c5e7fffa253ab093295954ca8d7671aa973', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:31:48', '2020-11-01 12:31:48', '2021-11-01 13:31:48'),
('f851dc4ba6c52d251eaaf2912d2892fa55910ec82168b1999c4781b0f4909de7a091c215c78ca007', 27, 1, 'authToken', '[]', 0, '2021-01-09 14:08:31', '2021-01-09 14:08:31', '2022-01-09 15:08:31'),
('f859bba1902bd2684285a5c38127d0a5e8b9029b58335a5d7d1da75295eaf7377c5204a35504a8be', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:51:27', '2020-10-19 13:51:27', '2021-10-19 15:51:27'),
('f8625a696e1f0d8bfa484d2c66d0ac2c359f7595ed9fe8b86277d9616dcf5f2b968526a10bfb3fc4', 27, 1, 'authToken', '[]', 0, '2020-10-31 11:52:23', '2020-10-31 11:52:23', '2021-10-31 12:52:23'),
('f8787ceb0d9300f891ec5c993870fb865ee3fe7ca883e619c06b9bd3e2ecdc5b1e4b21f8391a66b7', 27, 1, 'authToken', '[]', 0, '2020-10-28 16:45:54', '2020-10-28 16:45:54', '2021-10-28 17:45:54'),
('f884e7705c6c33877e2e9a476d78bf01e3a80ecf2774583875128ed5b6b3b30a27e11962416aee67', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:33:22', '2020-10-08 15:33:22', '2021-10-08 17:33:22'),
('f8a93a0a94d1acc56d7c5317c85e1f52ad95f871847d31e239cb015a63dceba381199e39a37f590b', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:38:23', '2020-10-03 14:38:23', '2021-10-03 16:38:23'),
('f8c7f872148eb4e5890ec9689675a46a58fa5fe23d876501b0aadd070e82bf56f74f0e3ff2916401', 27, 1, 'authToken', '[]', 0, '2021-01-28 08:28:18', '2021-01-28 08:28:18', '2022-01-28 09:28:18'),
('f8ce09d76d992e0934da1778bddc852cdebf6bd81e1754709c304a1f617bcfb55265a0352bb72652', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:09:56', '2020-10-29 14:09:56', '2021-10-29 15:09:56'),
('f8cfbbdde4b8fdc68521c2a8e7e874a62596f0629bc9a9c5c01b12e8ad9a2ad55e01c401139b6d41', 27, 1, 'authToken', '[]', 0, '2020-11-01 16:29:52', '2020-11-01 16:29:52', '2021-11-01 17:29:52'),
('f8f23539d317caa0349b87668ed1f11f1482b8a04127a54cc750b6249cd4bd81eacbc0a05d9b3ee0', 27, 1, 'authToken', '[]', 0, '2021-01-07 12:35:29', '2021-01-07 12:35:29', '2022-01-07 13:35:29'),
('f8f35fcd0095fdc0b66c96c6cb83f119a38c4cd8db19343cc007a5f6039ed4a091141ba0221ae8a8', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:23:09', '2021-01-02 13:23:09', '2022-01-02 14:23:09'),
('f8f88897b9248cadf6246f69170a3ccf14fe823e37de6286cb455031ad9265bb27d52e1a5b2336f3', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:49:55', '2020-11-22 15:49:55', '2021-11-22 16:49:55'),
('f8f89d1ac5fcef071e1eccdd81aebec30a767ae0431c7a01ece0c0e0f82c26a2e4aa1226a5b7b147', 27, 1, 'authToken', '[]', 0, '2021-01-02 11:40:24', '2021-01-02 11:40:24', '2022-01-02 12:40:24'),
('f901ae2fbd9de4e0ed6f4e2cb1f81a274f5797c18cf2d1d95e1a2e80c8145bc238abf8ad82b05eda', 27, 1, 'authToken', '[]', 0, '2020-10-23 15:02:29', '2020-10-23 15:02:29', '2021-10-23 17:02:29'),
('f90592c514dc5174e2f340f4a9badc73fad20515a468ab3473367099f9097a3891ddc117fd690877', 27, 1, 'authToken', '[]', 0, '2021-01-06 13:50:05', '2021-01-06 13:50:05', '2022-01-06 14:50:05'),
('f91e896b3232862ca3be116fa1136c2a1f76fbfdc7aeae28aaa07fbf3edc24d48c6cf8f23d8754ff', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:19:55', '2020-11-22 15:19:55', '2021-11-22 16:19:55'),
('f91ef6a95346862bdc600a6a9b8346c6832d0f8ecbcd7a39436d19c841ccb347fefbe70b9f0c95e2', 27, 1, 'authToken', '[]', 0, '2020-11-14 12:37:40', '2020-11-14 12:37:40', '2021-11-14 13:37:40'),
('f92b7a50ee61e53a8dfdd99a1519a36254502c656bc0b523e6cff2d37ab5b02092a427acdd542a8e', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:10:35', '2020-10-03 14:10:35', '2021-10-03 16:10:35'),
('f95a70af53844c0e60321eef2ab4e5d6295553db320c5cbf18c2b9506547a586a69851b02d6991d0', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:34:28', '2020-10-29 09:34:28', '2021-10-29 10:34:28'),
('f973e0cfd5f53917dd01b610700d29e721e86507ba4c8fc6c21ce9fb89b48f89f0380c4368d13ad1', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:15:49', '2021-01-06 12:15:49', '2022-01-06 13:15:49'),
('f979abd5ff970f08df4aa701b0fd3bddb9e2997519f1f6292297174564560de6780536396d37278f', 27, 1, 'authToken', '[]', 0, '2020-11-01 13:11:19', '2020-11-01 13:11:19', '2021-11-01 14:11:19'),
('f97c792c80946168d086c8c948c96ca076134e84d27a27e32401d9fc6c20ddaf74518473bffe9b0e', 27, 1, 'authToken', '[]', 0, '2020-10-17 09:45:54', '2020-10-17 09:45:54', '2021-10-17 11:45:54'),
('f98dcfc725de476198814323c54dd35db10251e19cab93c702f8b9c976689fe1e153cdd4f8a67a17', 27, 1, 'authToken', '[]', 0, '2021-01-24 11:11:47', '2021-01-24 11:11:47', '2022-01-24 12:11:47'),
('f9b58b846f2ee4bd2274c6ba73b15977b5cab6226c3f05a6c6223b7f6e8b36e20b9befdefda2de5a', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:24:07', '2020-10-23 11:24:07', '2021-10-23 13:24:07'),
('f9bf246ecc50d95d20978039e5637847ba7e26fa03d82a6fb1e020a079e38e7fd189d8a7c6cf4482', 27, 1, 'authToken', '[]', 0, '2021-01-07 15:36:00', '2021-01-07 15:36:00', '2022-01-07 16:36:00'),
('f9c000daa1d033616bf794e5bd40aac08a09eef923ed4393068b2a2c56b352a9086a52af7a41b262', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:12:42', '2020-10-03 13:12:42', '2021-10-03 15:12:42'),
('f9c464cb9c32693e889d5ba0a3c59e5b5697ee04633dc3fe31fce4fdd0db8ccac2614e76271d30b6', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:08:59', '2021-01-29 16:08:59', '2022-01-29 17:08:59'),
('f9cfc32b6d4e4a11a5e092d6f3be2adb2de0b890cf053bcf6380f446ddce55d03bf9e01b60e421fd', 27, 1, 'authToken', '[]', 0, '2020-12-31 16:25:28', '2020-12-31 16:25:28', '2021-12-31 17:25:28'),
('f9d202d0b7fa997c38c84793d2a727c97a94ad4940b15a6fa9e7b018f46690350b95fa72ff3049a8', 27, 1, 'authToken', '[]', 0, '2021-01-01 12:03:57', '2021-01-01 12:03:57', '2022-01-01 13:03:57'),
('f9dcf72b0b3e60a17167618dc86404fa0ced11a8221f2531d1671946775991f21668f584b2360bdc', 27, 1, 'authToken', '[]', 0, '2020-10-23 10:34:34', '2020-10-23 10:34:34', '2021-10-23 12:34:34'),
('f9e07b885000236d4d12975a5d11bdaf1ffa210aefe4a0f43e24c64966d6d31c4a39135abf15fd5d', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:01:31', '2021-01-03 13:01:31', '2022-01-03 14:01:31'),
('f9e6feab2b956e478369ec694c47b8312a98acbb8d233a4526ef5d760512e490976ef293a5770ab1', 27, 1, 'authToken', '[]', 0, '2021-01-06 12:19:12', '2021-01-06 12:19:12', '2022-01-06 13:19:12'),
('f9ea8a3b60f26bb60dd0493de53df6d6bc4173543c17c43b5b203dd2eb5ebba2814246103e1db52d', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:04:27', '2020-10-18 10:04:27', '2021-10-18 12:04:27'),
('f9ebceb9bd2b3e058e8e6f5106a8a97ca9e0f040af2059beb022bf7d8525d09a181388c64cd6b417', 27, 1, 'authToken', '[]', 0, '2020-10-28 17:43:57', '2020-10-28 17:43:57', '2021-10-28 18:43:57'),
('f9f7216a3b0377e1bbf78f24ee31225dfe4537d86ba6b4eb8d7fa732df51f0adaef21c67d9cf66c1', 27, 1, 'authToken', '[]', 0, '2020-10-10 10:51:33', '2020-10-10 10:51:33', '2021-10-10 12:51:33'),
('fa02a5a29eecc9e9fab14415d2359dee751d3b88418bc77875498aadc31f87dcd4253b6f3e3a786c', 27, 1, 'authToken', '[]', 0, '2020-10-11 10:21:03', '2020-10-11 10:21:03', '2021-10-11 12:21:03'),
('fa0a2c5b6c9b1c59b2dc87e8cdf7ccb27630206d8221bc4e9b714a740be8344c53e864684cfcb7cd', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:44:44', '2021-01-26 17:44:44', '2022-01-26 18:44:44'),
('fa29f30c145057df27154c0c4a5837ce61bb5da865c42d4e0046917ee83c305298ba136ce8193f92', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:45:19', '2020-10-15 11:45:19', '2021-10-15 13:45:19'),
('fa303e7a2a917f191585fa648873db35384b4489cbaf16e8bcd226f310bb6775a751f0696c390629', 27, 1, 'authToken', '[]', 0, '2020-10-13 11:15:44', '2020-10-13 11:15:44', '2021-10-13 13:15:44'),
('fa4054c52331c61fc74ee81c75bdc9bdaf735036fd2d076b6b959cc9f5790d62977d6b3fe7cc2d74', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:18:08', '2020-10-13 10:18:08', '2021-10-13 12:18:08'),
('fa4a8b13850a12154ac56ce13b0f4f1a2906c7790f4809cf2b243a0d625ef3b55d04e6bc2f4e1836', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:46:24', '2020-10-19 12:46:24', '2021-10-19 14:46:24'),
('fa5ac12c1380c8de665a8d52602d0de7eefcf0d711128053416d383739dc0de8a3ecd40a274f60ad', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:37:06', '2020-10-19 12:37:06', '2021-10-19 14:37:06'),
('fa6952da91b6cee5104947fb4c695c9e45c76d66d9e3d251155718e2577fe67b5ed034c89a802b8b', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:16:45', '2020-12-06 10:16:45', '2021-12-06 11:16:45'),
('fa6c9e4f4879a8d6ba4cc6db096d4c44902e5df3f508bf5943c126570c4c91f8ee3ef9c5c8ff5cb5', 27, 1, 'authToken', '[]', 0, '2020-11-14 11:58:17', '2020-11-14 11:58:17', '2021-11-14 12:58:17'),
('fa975dea8f9386189f5b8235c36302628cac816cdaec8c3c59a302b10e7c12335c26753765df173d', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:44:47', '2020-10-19 14:44:47', '2021-10-19 16:44:47'),
('fabb07a592832c6abd05ae85601dd7ef1675144abf226d7af9a3ec420bb408525b326c702ed23dad', 27, 1, 'authToken', '[]', 0, '2020-10-18 11:47:42', '2020-10-18 11:47:42', '2021-10-18 13:47:42'),
('fad3a1121a308cfea5a35b40bd858e515aaa195b1d581341a1e1284ef5d902388985ff4c6f69b857', 27, 1, 'authToken', '[]', 0, '2020-12-04 10:20:44', '2020-12-04 10:20:44', '2021-12-04 11:20:44'),
('fae18d319838b13a2de3df56bea41a82ec3be94cf4249a6cb03486faf6f6c9f79cce44169ffc1413', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:33:57', '2020-10-31 14:33:57', '2021-10-31 15:33:57'),
('fae455254314c02a11fb642c4c731bbfc3daba841a66234a8e60749fc79df59061e5342305e41f75', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:38:31', '2020-10-19 08:38:31', '2021-10-19 10:38:31'),
('faf004687d2f9502f991f54719b7bba1c713e16fcb27883a6f8680c4b2c8836bfbacf35f727d0604', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:19:01', '2020-10-19 09:19:01', '2021-10-19 11:19:01'),
('faf684f66c209117cecb7c3839649ac541b1e3de884937e64b8daddb01ae687286a7e981e3ef4541', 27, 1, 'authToken', '[]', 0, '2020-10-20 08:50:26', '2020-10-20 08:50:26', '2021-10-20 10:50:26'),
('fafd6a37cb7a06dada1bb3046d59fd052c5971a7b8088a886b323ec59e56b89b4172df65655096c9', 27, 1, 'authToken', '[]', 0, '2020-11-01 17:31:42', '2020-11-01 17:31:42', '2021-11-01 18:31:42'),
('fb034e51810801f958f8e690132cb027d7dd26a38916f6574f01080b12d8f8314539c38725322cc8', 27, 1, 'authToken', '[]', 0, '2021-01-03 14:50:13', '2021-01-03 14:50:13', '2022-01-03 15:50:13'),
('fb0787884b6134a35367cd30ba7f15766a9ef73ad31ffa56e2ec360fd37dcb01d300a158cd5d9281', 27, 1, 'authToken', '[]', 0, '2020-11-11 15:57:51', '2020-11-11 15:57:51', '2021-11-11 16:57:51'),
('fb232e1d449c692820b94e1d3b8c730faf060c7353eb8a4e174a8e923161943f959209999f0be95f', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:45:23', '2020-10-13 09:45:23', '2021-10-13 11:45:23'),
('fb2b5796ea94d31a5025cbcddf0cc245007ef1e267d21bb5d60ecdf3a0c0352749defcf50a321e04', 27, 1, 'authToken', '[]', 0, '2021-01-29 16:25:06', '2021-01-29 16:25:06', '2022-01-29 17:25:06'),
('fb784980837d326c1c5072b755ee33aa6f38a42e701ba74d48bf2d73a32d987a242d44374dfa8485', 27, 1, 'authToken', '[]', 0, '2020-11-22 15:05:47', '2020-11-22 15:05:47', '2021-11-22 16:05:47'),
('fb8a719098b364fb7bf55a185c93c4730f816caf9d5e4bfba24c70b50850221c45de94b0a19f0827', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:30:29', '2020-10-23 11:30:29', '2021-10-23 13:30:29'),
('fb9d53de4ee16a946be73e0954bc1856694d5a9085e4d0e88451952a5cf4741f1a36675d672b59c8', 27, 1, 'authToken', '[]', 0, '2020-10-18 08:41:48', '2020-10-18 08:41:48', '2021-10-18 10:41:48'),
('fba23b86e6bd0f66354db10250bbffce507e8f25eaaec51b2dcdcd90fd520dea8ab82608eb46e1f7', 27, 1, 'authToken', '[]', 0, '2021-01-29 17:00:54', '2021-01-29 17:00:54', '2022-01-29 18:00:54'),
('fbb85deebfe26fd5ca45da13725f36cd33ea8babfb3b99d8daa3e49aae992c219461e17a2c097b9f', 27, 1, 'authToken', '[]', 0, '2020-10-17 10:14:59', '2020-10-17 10:14:59', '2021-10-17 12:14:59'),
('fbba6ad054090ef1d8d2feb45e5e3876006029c0cb1b4aa9a401e3f7ba105ad459a8af03173bda10', 27, 1, 'authToken', '[]', 0, '2021-01-06 16:26:59', '2021-01-06 16:26:59', '2022-01-06 17:26:59'),
('fbd8bef899faa438bb55984880022a8fb8435bfae7829c6c9812e82d819b070ad08f90ce51627044', 27, 1, 'authToken', '[]', 0, '2020-11-05 15:22:25', '2020-11-05 15:22:25', '2021-11-05 16:22:25'),
('fbd9ab0d57f3f2c13f95bf175bbdbeb9fc013e6db643d13d6b6591f7c25268732fe9ff8f230427b4', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:49:08', '2020-10-23 11:49:08', '2021-10-23 13:49:08'),
('fbe1542e02468c855311244b1cf01788cb445fc769e21e0756dbbae9cd234ae1e080299be288b96c', 27, 1, 'authToken', '[]', 0, '2020-10-23 13:07:17', '2020-10-23 13:07:17', '2021-10-23 15:07:17'),
('fbf8da9305b0d0b96d597cd4a1dfe4355db8f8b33307a147219b53fe3168e9226571360b9309a68f', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:30:54', '2020-10-19 13:30:54', '2021-10-19 15:30:54'),
('fc1a97899871559e42a7224768d4cca20653e3510b9441ff061b08caba2dc0faad529abde7ff4d63', 27, 1, 'authToken', '[]', 0, '2020-10-13 09:25:38', '2020-10-13 09:25:38', '2021-10-13 11:25:38'),
('fc2f7e862fc50c975ba77745166dc69b111e08e034b59b77a077a6850f4334f63b0d8e651121f92e', 27, 1, 'authToken', '[]', 0, '2020-10-19 08:02:14', '2020-10-19 08:02:14', '2021-10-19 10:02:14'),
('fc95a627b84f21f33e12d5b43dd784961720ef40b26a7adbcb28fec486cd954670428d4b00cccd0a', 27, 1, 'authToken', '[]', 0, '2021-01-30 10:08:46', '2021-01-30 10:08:46', '2022-01-30 11:08:46'),
('fca85b96cbd11031831c9e60b1361713d1654bc53e82c940ac659923e98bc3ab13469937891d71c2', 27, 1, 'authToken', '[]', 0, '2020-10-25 14:46:06', '2020-10-25 14:46:06', '2021-10-25 15:46:06'),
('fcb71c505297821f0f9284d3b16152480044780bf6f6db086c969f19d7373af5d836bb05a1fa077c', 27, 1, 'authToken', '[]', 0, '2020-10-15 10:48:38', '2020-10-15 10:48:38', '2021-10-15 12:48:38'),
('fcd7fe8201e59f1d82e6bf93234975e71f18ceaae2a1d8307367f2ab5d434b309925b2bf251e0bce', 27, 1, 'authToken', '[]', 0, '2020-10-10 13:13:43', '2020-10-10 13:13:43', '2021-10-10 15:13:43'),
('fd07e8a8c0520ad4ebb88ac6ca9b63b0e5c426b5a073e33a76dded6474be7cef6022f582e443ba3b', 27, 1, 'authToken', '[]', 0, '2020-10-29 09:58:41', '2020-10-29 09:58:41', '2021-10-29 10:58:41'),
('fd09ae15c2c936c78149a3bc6a335501347d496811011e2a0f26acf5e1eead4b0c8f11f10810d700', 27, 1, 'authToken', '[]', 0, '2021-03-27 12:51:08', '2021-03-27 12:51:08', '2022-03-27 13:51:08'),
('fd1926aca1cf31b969921d022fbad41f38aded9059399ad28e99bb88303e9abb02a1b4d3e93b4bc6', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:02:08', '2020-10-18 10:02:08', '2021-10-18 12:02:08'),
('fd1968610d340d5081fea01abfd94f5d2eac176921365b4091f42d4e79b799c5e5826d3bec70149f', 27, 1, 'authToken', '[]', 0, '2020-11-01 10:36:08', '2020-11-01 10:36:08', '2021-11-01 11:36:08'),
('fd1b983759ef7ff42e58014cf0f03b7370c33cc3551e7f9f7903abe88e21f003e163111c13cb3a66', 27, 1, 'authToken', '[]', 0, '2020-10-29 14:12:09', '2020-10-29 14:12:09', '2021-10-29 15:12:09'),
('fd43de9d69541db568bdffbb2285f8c6fe781ba941907ec363f1be0cffe5d1ef74260e96edebda34', 27, 1, 'authToken', '[]', 0, '2020-11-01 12:07:16', '2020-11-01 12:07:16', '2021-11-01 13:07:16'),
('fd4516dd2e95ae2e0076f84e73886ac29dbf2f7a56cf47feae582ebd13b0544f28a412e44811791b', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:36:45', '2020-10-19 12:36:45', '2021-10-19 14:36:45'),
('fd53cbee4f83358d05aed17485adc5421988a80869f8ee7cdfa4d5fe4442e7d47e9b7683f475f226', 27, 1, 'authToken', '[]', 0, '2020-12-31 13:05:25', '2020-12-31 13:05:25', '2021-12-31 14:05:25'),
('fd589343407a46733c53b6e9a9e2ed9f58d715fe169ffddac5ee3c4b7cabcac4c1d5f62f758535d0', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:21:53', '2020-10-15 11:21:53', '2021-10-15 13:21:53'),
('fd65cc787e3a6511e7d48ae68720ade2acd5cbc248dc77f9ef31f0a8154b419210ea631ed117884e', 27, 1, 'authToken', '[]', 0, '2020-10-25 12:11:58', '2020-10-25 12:11:58', '2021-10-25 13:11:58'),
('fd7883bfaee290d335352485b5e92c5c765a8aaeb932e582a32301cc5629b2b543e6e360b23f2c7b', 27, 1, 'authToken', '[]', 0, '2020-10-18 10:47:33', '2020-10-18 10:47:33', '2021-10-18 12:47:33'),
('fd7f1e51ea45345424cd2b69ca135714bbd85e6b1982be2ae53af9f11fc189c354e629b3bef4b0b5', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:09:41', '2020-12-06 10:09:41', '2021-12-06 11:09:41'),
('fd93c1bc621bd84e89c0070e475d86ddd8df9a88f1b12d171c12003e2d08254463778dc5d7d3a594', 27, 1, 'authToken', '[]', 0, '2020-12-28 11:40:16', '2020-12-28 11:40:16', '2021-12-28 12:40:16'),
('fd96bd8197b8d0ee270e3d680dd7240c40197da2a5704bec418b567d2cb68531e984b6fdfb47a963', 27, 1, 'authToken', '[]', 0, '2020-10-23 11:44:18', '2020-10-23 11:44:18', '2021-10-23 13:44:18'),
('fd9f356758116c3c7f44481644c4d16f487d95a6ee4fb193bc2475452eb41531e428fe1da7246e0f', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:34:08', '2020-10-31 14:34:08', '2021-10-31 15:34:08'),
('fda5d1818a2ebfa05e39e15e2640715c8186fe8ebccc011e6f21687421c5d2fe4d3b3466da5d95e2', 27, 1, 'authToken', '[]', 0, '2020-10-11 09:51:55', '2020-10-11 09:51:55', '2021-10-11 11:51:55'),
('fda937a7ca06dc6192aabf3805975e97c6b54129e75b6c439b74d2e70035d50fe851ee522c13e2cd', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:38:42', '2020-12-29 10:38:42', '2021-12-29 11:38:42'),
('fde50624341793b11d5c27c7f029dcbc4c4625db7f0dde55960c250f4108a92f8f6527bdba61a5a4', 27, 1, 'authToken', '[]', 0, '2021-01-25 17:35:19', '2021-01-25 17:35:19', '2022-01-25 18:35:19'),
('fdecb02555d4ddbe4a273d3fdb8062ae1545e5f8d15dd587c6c494e56bb9d0bf66150fbaa96cc186', 27, 1, 'authToken', '[]', 0, '2021-01-02 13:46:19', '2021-01-02 13:46:19', '2022-01-02 14:46:19'),
('fdf683d1b9b65d21a31cada3343e656cf698d62eec91699cf7ab7d4434687ac71ae13cad490776de', 27, 1, 'authToken', '[]', 0, '2021-01-30 09:56:45', '2021-01-30 09:56:45', '2022-01-30 10:56:45'),
('fdf8445d712708965814ad63378edfc9896c69dc8a05be7119cf1930d375fbeaf8c7319ccbf36236', 27, 1, 'authToken', '[]', 0, '2020-10-31 09:20:05', '2020-10-31 09:20:05', '2021-10-31 10:20:05'),
('fdf9f4d1dd3128bcd92654e011e190d046454dd71a51b57ca0d131b99d613fc3e38d9248b0e4707b', 27, 1, 'authToken', '[]', 0, '2020-10-20 09:29:11', '2020-10-20 09:29:11', '2021-10-20 11:29:11'),
('fdfd8a71c7eaba65b2743adbe632cfe8d4932753bbb6e3cf3ae4bf3e047a908b225588ddb7de8918', 27, 1, 'authToken', '[]', 0, '2021-01-10 10:47:59', '2021-01-10 10:47:59', '2022-01-10 11:47:59'),
('fdfe85e043b19d40397c2561c9b203ca1e16efc2d6586fe9da0b65482a4af04806ab83a6ca6199ff', 27, 1, 'authToken', '[]', 0, '2020-10-19 12:46:04', '2020-10-19 12:46:04', '2021-10-19 14:46:04'),
('fe12ca2f49c5402e0351be4bcbf7a20f2de212e30a90acd741f505e089f856ca5896898a313abca2', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:31:56', '2020-10-19 13:31:56', '2021-10-19 15:31:56'),
('fe19b0bf3c3f3ce7f0271c1d38686e5808d0349a88990cce16200e95c3d2d8130cc1cafa1d7c6300', 27, 1, 'authToken', '[]', 0, '2020-10-15 11:38:04', '2020-10-15 11:38:04', '2021-10-15 13:38:04'),
('fe1dd2f66cd969d3efe7f1d56b8e710ea527b9234ec73f908407290f3de2cd2b597b25ccc0303b2b', 27, 1, 'authToken', '[]', 0, '2020-10-31 14:29:25', '2020-10-31 14:29:25', '2021-10-31 15:29:25'),
('fe261332ecb250b2a541a7738a5c6491aaba1dc85a781df9f6f4a08c975efe582eca6b0eba57add8', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:27:00', '2020-10-08 15:27:00', '2021-10-08 17:27:00'),
('fe3d519176a5bba4e47f42c6e00e0e67ffd0bfb47d0da85a46df067ff4b553cb1acb276c8a2aeb49', 27, 1, 'authToken', '[]', 0, '2020-10-13 10:29:45', '2020-10-13 10:29:45', '2021-10-13 12:29:45'),
('fe42b03ec2828a5304b4e5b120cf40ce001d7319726f0bb852b177c5fd0bcdc1f03e3b10655914a6', 27, 1, 'authToken', '[]', 0, '2021-02-07 14:58:27', '2021-02-07 14:58:27', '2022-02-07 15:58:27'),
('fe7a61f464e0a4c61de5baa47d1606fdfcac6e2fdbc262af9b248fba2437460178acf9f349c8b4b0', 27, 1, 'authToken', '[]', 0, '2020-11-05 16:22:14', '2020-11-05 16:22:14', '2021-11-05 17:22:14'),
('fe8555ce987335bff89ab46e5bb3b889f98ba5d60ba16c3304af4a7e516c128aca0f1bfe3011cf1d', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:26:30', '2021-01-03 13:26:30', '2022-01-03 14:26:30'),
('fe89c333b3a49c3817a7cbab00cf275295b331baf617840b248835b1d967567661fce6bf7cc4f52b', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:33:35', '2020-11-19 12:33:35', '2021-11-19 13:33:35'),
('fe9328d164888201547c29701fae0a09b1726ad22a91d01db16f4e02fc29baca6d2bc08cdf909204', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:50:19', '2020-10-23 17:50:19', '2021-10-23 19:50:19'),
('fe962df90612fd0f59c2666b5837ffa58ac2cc63d99af7ade53969d36ffdb6692f76616dee17bb13', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:16:54', '2020-12-06 10:16:54', '2021-12-06 11:16:54'),
('feb5092514774a59ae66362b49bd86b607abe9914751ab6e382ba4c9336d9062804851f74b59e521', 27, 1, 'authToken', '[]', 0, '2021-03-27 15:16:35', '2021-03-27 15:16:35', '2022-03-27 16:16:35'),
('febac04b501f61acee5df5ea6c5ee7fb4a27464b147c68420bfc39d55225327dcd4277aa1099211e', 27, 1, 'authToken', '[]', 0, '2020-10-19 14:37:36', '2020-10-19 14:37:36', '2021-10-19 16:37:36'),
('febb63e45da86f62a8a81bf6e439498c08c593f4cb52b915558249eba6b5b0927087bbefbfc87f35', 27, 1, 'authToken', '[]', 0, '2020-10-15 08:46:20', '2020-10-15 08:46:20', '2021-10-15 10:46:20'),
('fed0ce41441dd18ff445a47ffa17804824c7e3cddf2d08c3fce1ccaadb3338559232fd8fd1575c35', 27, 1, 'authToken', '[]', 0, '2020-12-28 16:10:48', '2020-12-28 16:10:48', '2021-12-28 17:10:48'),
('fed3f95df8603ced459e91c4d2e140b1921706b2def441230e6ca6e07f0eefe3e1cea8e56dee2e26', 27, 1, 'authToken', '[]', 0, '2020-12-29 10:19:17', '2020-12-29 10:19:17', '2021-12-29 11:19:17'),
('fedc1a5a0f8b4efc4d05d9ab57861656aa36af137ab54d6fcd4fb0333848b7d782edef14358630c5', 27, 1, 'authToken', '[]', 0, '2020-10-03 13:16:27', '2020-10-03 13:16:27', '2021-10-03 15:16:27'),
('fee7ce889a095ba5ced077566044b94713d71d2abf3688b6089bc17592e7e7a100d9fd9066ca0021', 27, 1, 'authToken', '[]', 0, '2020-10-19 13:20:58', '2020-10-19 13:20:58', '2021-10-19 15:20:58'),
('fef7ac63fe9bd24a837d4739df1e84c911b81b1f20e529b3b23ac696cfabd698fcf2aeeaf719af9c', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:44:16', '2020-11-19 12:44:16', '2021-11-19 13:44:16'),
('ff05a6652d932b4b45a36a7b23df0ae8f9f8e68451af83bed344f07faa2d1f584ad04d7011fa983e', 27, 1, 'authToken', '[]', 0, '2020-10-29 13:45:42', '2020-10-29 13:45:42', '2021-10-29 14:45:42'),
('ff05e36c19263177a02f62956b057ac6be3c3a4a7d98f6bec177ec987864d5458a4181897310a461', 27, 1, 'authToken', '[]', 0, '2020-12-06 10:24:34', '2020-12-06 10:24:34', '2021-12-06 11:24:34'),
('ff2151e567a285e27b41b3042a76e92fbeb95acfb8ca752fa6d3dce0af66c117cf1880e53327fdaf', 27, 1, 'authToken', '[]', 0, '2021-01-26 17:49:50', '2021-01-26 17:49:50', '2022-01-26 18:49:50'),
('ff248bd211928a91a5fd3d941f66e786d5fd6647e1d52c8cefccc1eb3cbcc98ac475dc051199dae4', 27, 1, 'authToken', '[]', 0, '2020-10-08 15:24:32', '2020-10-08 15:24:32', '2021-10-08 17:24:32'),
('ff2b8e4ad256287c021b389b287170585fc71bedfdb0a972cad9d8d587aa14c826ff708a7a980513', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:16:09', '2020-10-03 14:16:09', '2021-10-03 16:16:09'),
('ff3bcbb3495e0723a3ac296c498f1cf27b4d639bbb4da2f88a91cf9e1d0c6e2ad335eab055ff43c7', 27, 1, 'authToken', '[]', 0, '2021-01-28 09:23:47', '2021-01-28 09:23:47', '2022-01-28 10:23:47'),
('ff479381b31a0606e60310e1a5005e36a33ee60a5fc611809b77333d11fa7ca1d30e99bd3d93953a', 27, 1, 'authToken', '[]', 0, '2020-10-23 16:29:30', '2020-10-23 16:29:30', '2021-10-23 18:29:30'),
('ff5b3192a4aa409caf3ec13f30be0b0ea01a7a616112845c601ab3b107dd902f483a89f9e0941eaa', 27, 1, 'authToken', '[]', 0, '2020-09-27 10:36:38', '2020-09-27 10:36:38', '2021-09-27 12:36:38'),
('ff601ef04cd8412f137bd876ad7748bbbae3bc9d10f41cc2ff42ad17c8f3e7efdaab20fff2abd732', 27, 1, 'authToken', '[]', 0, '2020-12-28 13:54:34', '2020-12-28 13:54:34', '2021-12-28 14:54:34'),
('ff62e502370ad323783c73bd92375a62d24560bdf8eb05b7ae897ce07d3bffdf1316b4c0e425beca', 27, 1, 'authToken', '[]', 0, '2021-01-30 11:31:12', '2021-01-30 11:31:12', '2022-01-30 12:31:12'),
('ff6a16046d0b9acb4a5c225b4ef319f2523cde133f2a0d8ecf914060f3bfa3476edb1519549f9cc4', 27, 1, 'authToken', '[]', 0, '2021-01-27 16:47:34', '2021-01-27 16:47:34', '2022-01-27 17:47:34'),
('ff6a830ca026f2455f350e43fb2078d774290435a322030f2c73ab3cb5c6ff79de262747323cc75c', 27, 1, 'authToken', '[]', 0, '2020-10-19 09:36:39', '2020-10-19 09:36:39', '2021-10-19 11:36:39'),
('ff815d4d260e98b461d7fc9654ceb0ef59c0056f69c5788295559167dcfde0ed2f0148d50a51f615', 27, 1, 'authToken', '[]', 0, '2021-01-26 18:30:04', '2021-01-26 18:30:04', '2022-01-26 19:30:04'),
('ff847a6e32320163d2b9f7aa45e30aa7f566211df07ad74a5961598990e69f3096974d5bd18d9b43', 27, 1, 'authToken', '[]', 0, '2020-10-05 16:40:42', '2020-10-05 16:40:42', '2021-10-05 18:40:42'),
('ff9edae35c575ddcbbdd81adf0c928bc7e2267733fcc37073a1c12b545ae6c7d76f0ffeb1bb2f262', 27, 1, 'authToken', '[]', 0, '2021-01-07 14:40:51', '2021-01-07 14:40:51', '2022-01-07 15:40:51'),
('ffb0b1fd676d8cbe5028ca8f7b86c9301f8b505b20fb977c3f7e9ec7a10d47fcecd5ed9ac077bc85', 27, 1, 'authToken', '[]', 0, '2020-11-12 13:11:08', '2020-11-12 13:11:08', '2021-11-12 14:11:08'),
('ffbcbc2b687cfb6e9af084de5dd47a1c383a35da808ff391592e0ae7d4555183b13999af9d35adec', 27, 1, 'authToken', '[]', 0, '2020-10-03 14:37:54', '2020-10-03 14:37:54', '2021-10-03 16:37:54'),
('ffd0ee53ca6b3da35203ae26cbad1e9e9fad08510c07dcad0a866884af9a38d535b05574ab13a0ee', 27, 1, 'authToken', '[]', 0, '2021-01-03 13:23:08', '2021-01-03 13:23:08', '2022-01-03 14:23:08'),
('ffdcd1da298a2186878e8ae40b008bc8bd33e35c3a10087edeac78a32d9de507b17e4f76fa320a59', 27, 1, 'authToken', '[]', 0, '2020-10-10 11:05:01', '2020-10-10 11:05:01', '2021-10-10 13:05:01'),
('ffe1b428418786d9be79a4bb7aec3d7a0056d5c27d9009083cf282fa4fd5a4572824fc478555941d', 27, 1, 'authToken', '[]', 0, '2020-10-23 17:55:09', '2020-10-23 17:55:09', '2021-10-23 19:55:09'),
('ffe907d0dfdde2a0d8cb4199c725b5f63b0a4a2084681e8f7a5d0a117b4011f1494b769d3eeb7f25', 27, 1, 'authToken', '[]', 0, '2020-11-19 12:08:33', '2020-11-19 12:08:33', '2021-11-19 13:08:33');

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
  `short_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `home_page` tinyint(1) DEFAULT 0,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `offers`
--

INSERT INTO `offers` (`id`, `title`, `subtitle`, `short_description`, `description`, `photo`, `photo_alt`, `banner_photo`, `banner_photo_alt`, `created_at`, `updated_at`, `active`, `home_page`, `meta_description`) VALUES
(1, 'Bilard', 'Wysoka jakość stołów bilardowych', '<p>Oferujemy profesjonalne stoły bilardowe marki Dynamic II. Do dyspozycji 6 stołów do gry w poola oraz jeden do gry w snookera.</p>', '<p><span style=\"color: rgb(95, 99, 86);\">Szukasz miejsca do spontanicznego wyjścia ze znajomymi? W Lubinie z pewnością nie znajdziesz lepszego lokalu niż Bilard Centrum Baribal. Jak sama nazwa wskazuje, miejsce to oferuje swoim gościom aż 6 profesjonalnych stołów bilardowych do gry w poola, na których komfortowo grać mogą zarówno początkujący, jak i profesjonaliści. Nietuzinkowe i urządzone z gustem wnętrza w tym lokalu sprawiają, że wszyscy goście mogą w miejscu tym zrelaksować się i spędzić czas w niesamowicie przyjaznej atmosferze.</span></p>', '2020-09-12/bilard_1599903006.jpg', 'bilard', NULL, NULL, '2020-09-12 07:27:44', '2021-02-10 18:49:47', 1, 1, NULL),
(2, 'Tenis Stołowy', 'Stół do gry amatorskiej jak i profesjonalnej', '<p>Zachęcamy do gry w tenisa stołowego w naszej dedykowanej sali.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.</p>', '2020-09-12/ping_pong_1599903239.jpg', NULL, NULL, NULL, '2020-09-12 07:34:11', '2021-02-10 18:45:47', 1, 1, NULL),
(3, 'Darty', 'Maszyna do gry w rzutki', '<p>Do dyspozycji maszyna do gry w rzutki. Oferujemy pełen zestaw rzutek.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.</p>', '2020-09-12/rzutki_1599906429.jpg', NULL, NULL, NULL, '2020-09-12 08:27:18', '2021-02-10 18:47:22', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offers_descriptions`
--

CREATE TABLE `offers_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `offers_descriptions`
--

INSERT INTO `offers_descriptions` (`id`, `title`, `button_name`, `created_at`, `updated_at`) VALUES
(1, 'A co w ofercie?', 'CZYTAJ WIĘCEJ', NULL, '2021-01-02 10:37:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `shop_order_id`, `created_at`, `updated_at`, `product_id`, `item_id`, `amount`) VALUES
(41, 26, '2021-03-27 11:15:35', '2021-03-27 11:15:35', 25, NULL, 1),
(42, 26, '2021-03-27 11:15:35', '2021-03-27 11:15:35', NULL, 19, 2),
(43, 27, '2021-03-27 13:27:14', '2021-03-27 13:27:14', 25, NULL, 1),
(44, 27, '2021-03-27 13:27:15', '2021-03-27 13:27:15', NULL, 19, 2),
(45, 28, '2021-03-27 13:28:47', '2021-03-27 13:28:47', 25, NULL, 1),
(46, 28, '2021-03-27 13:28:47', '2021-03-27 13:28:47', NULL, 19, 2),
(47, 29, '2021-03-27 13:33:18', '2021-03-27 13:33:18', NULL, 19, 1),
(48, 30, '2021-03-27 13:35:45', '2021-03-27 13:35:45', NULL, 19, 1);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `partners`
--

INSERT INTO `partners` (`id`, `title`, `description`, `photo`, `photo_alt`, `created_at`, `updated_at`, `active`) VALUES
(1, 'KGHM', NULL, '2020-10-17/1200px-Kghm_nowe_logo.svg_1602935663.png', NULL, '2020-10-17 11:54:31', '2020-10-19 09:19:16', 1),
(2, 'Predator', NULL, '2020-10-17/Predator-Cues_1602935842.png', NULL, '2020-10-17 11:57:34', '2020-10-19 09:19:17', 1),
(3, 'Poison', NULL, '2020-10-17/2019_0005_poison_1602935920.png', NULL, '2020-10-17 11:58:52', '2020-10-19 09:19:17', 1),
(4, 'Kamui', NULL, '2020-10-17/kamui_1602938016.jpg', NULL, '2020-10-17 12:33:46', '2020-10-19 09:19:18', 1),
(5, 'Lubin', NULL, '2020-10-20/logo_lubin_1603186861.png', NULL, '2020-10-20 09:41:11', '2020-10-20 09:52:01', 1),
(6, 'ERG Bieruń Folie', NULL, '2020-10-20/ergunbierunfolie_1603187503.png', NULL, '2020-10-20 09:51:52', '2020-10-20 09:51:52', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `partners_descriptions`
--

CREATE TABLE `partners_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `partners_descriptions`
--

INSERT INTO `partners_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Partnerzy', NULL, '2021-01-02 10:50:12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dany97971@gmail.com', 'bVQHaKTf', '2021-01-10 12:00:49');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `league` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `league`, `subtitle`, `description`, `photo`, `photo_alt`, `created_at`, `updated_at`, `active`, `button_name`, `meta_description`) VALUES
(1, 'Mieszko', 'Fortuński', 'Ekstraklasa', 'Mistrz Europy w odmianę 10-bil', '<h2><strong>Mieszko Fortuński </strong>(ur. 1 kwietnia 1992) </h2><p>Był zwycięzcą  turnieju Euro Tour 2016 Italian Open. Mieszko Fortuński to trzykrotny zdobywca mistrzostw Europy w poola, zwycięzca turnieju 10-bil w 2019 roku oraz reprezentant Polski w turnieju drużynowym, wygrywając w 2015 i 2018 roku. </p><h2><strong>Tytuły</strong></h2><p>Polskie tytuły narodowe:</p><ul><li>nine-ball (2010, 2014)</li><li>ten-ball (2014)</li></ul><p>Europejskie mistrzostwa poola:</p><ul><li>team event (2015, 2018)</li><li>ten-ball (2019)</li></ul><p>Euro Tour:</p><ul><li>2016 Italian Open</li></ul>', '2020-10-23/mieszko_1603450309.png', NULL, '2020-10-23 10:55:20', '2021-02-10 18:57:53', 1, 'Czytaj więcej', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>'),
(2, 'Wiktor', 'Fortuński', '1-liga', 'Drużynowy Wicemistrz Europy w odmianie 9-bil', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur! Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur! Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur!</p><p><br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur! Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur! Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur!</p><p><br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur! Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur! Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero eius facere adipisci veritatis ullam aliquam nulla excepturi, incidunt fugiat eligendi magni, fuga quas ratione in voluptatibus, possimus et sint aspernatur!</p>', '2020-10-23/wiktor_1603453200.jpg', NULL, '2020-10-23 11:40:06', '2020-12-31 15:21:50', 1, 'Czytaj więcej', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus asperiores placeat explicabo eaque maiores mollitia quibusdam vero ex obcaecati atque delectus impedit, unde officiis velit cupiditate hic accusantium tenetur! Molestias.</p>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players_descriptions`
--

CREATE TABLE `players_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `league` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `players_descriptions`
--

INSERT INTO `players_descriptions` (`id`, `title`, `created_at`, `updated_at`, `league`) VALUES
(1, 'Zawodnicy', NULL, '2021-01-06 15:04:13', 'Liga:');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `price_list`
--

CREATE TABLE `price_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_list_category_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `price_list`
--

INSERT INTO `price_list` (`id`, `title`, `subtitle`, `price`, `created_at`, `updated_at`, `price_list_category_id`, `active`) VALUES
(1, 'Pepsi', '500 ml', 6, '2020-10-31 11:11:11', '2021-01-30 11:44:03', 1, 1),
(2, 'Pepsi', '500 ml', 6, '2020-10-31 11:12:33', '2020-10-31 14:48:10', 1, 1),
(3, 'Coca Cola', '500 ml', 6, '2020-10-31 11:19:47', '2020-10-31 13:33:56', 1, 1),
(4, 'Pepsi', '500 ml', 6, '2020-10-31 11:21:05', '2020-10-31 13:34:11', 1, 1),
(5, 'Lipton', '500 ml', 6, '2020-10-31 11:22:43', '2020-10-31 13:34:23', 1, 1),
(6, 'Lipton', '330 ml', 5, '2020-10-31 11:23:21', '2020-10-31 13:34:34', 1, 1),
(7, 'Pepsi', '330 ml', 5, '2020-10-31 11:23:51', '2020-10-31 13:34:46', 1, 1),
(8, 'Bilard', '1 godzina', 20, '2020-10-31 13:36:54', '2020-10-31 13:37:04', 2, 1),
(9, 'Tenis Stołowy', '1 godzina', 20, '2020-10-31 13:37:18', '2020-10-31 13:37:20', 2, 1),
(10, 'Darty', '1 gra', 2, '2020-10-31 13:38:06', '2020-10-31 13:38:08', 2, 1),
(11, 'Paluszki', '200 mg', 5, '2020-10-31 16:39:56', '2020-10-31 16:44:59', 3, 1),
(12, 'Czipsy', '200 mg', 6, '2020-10-31 16:40:40', '2021-01-27 18:19:10', 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `price_list_categories`
--

CREATE TABLE `price_list_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `price_list_categories`
--

INSERT INTO `price_list_categories` (`id`, `title`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Napoje', '2020-10-31 10:44:57', '2020-10-31 10:56:33', 1),
(2, 'Sport', '2020-10-31 13:36:31', '2020-10-31 13:36:33', 1),
(3, 'Przekąski', '2020-10-31 15:51:35', '2020-10-31 15:51:37', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `price_list_descriptions`
--

CREATE TABLE `price_list_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `price_list_descriptions`
--

INSERT INTO `price_list_descriptions` (`id`, `title`, `created_at`, `updated_at`, `currency`) VALUES
(1, 'Cennik', NULL, '2021-01-02 11:15:40', 'zł');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entry` datetime DEFAULT NULL,
  `leave` datetime DEFAULT NULL,
  `earnings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service_equipment_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rodo1` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `rodo2` tinyint(1) DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `reservations`
--

INSERT INTO `reservations` (`id`, `entry`, `leave`, `earnings`, `is_paid`, `created_at`, `updated_at`, `service_equipment_id`, `name`, `phone`, `rodo1`, `active`, `rodo2`, `email`) VALUES
(25, '2021-01-09 17:00:00', '2021-01-09 18:00:00', NULL, 0, '2021-01-09 15:23:32', '2021-02-07 14:05:28', 1, 'Daniel Lewicki', '123123123', 1, 0, 1, 'dany97971@gmail.com'),
(26, '2021-01-27 17:00:00', '2021-01-27 18:00:00', NULL, 0, '2021-01-27 17:33:24', '2021-02-07 14:32:50', 1, 'Daniel Lewicki', '794640515', 1, 0, 1, 'd.lewicki@adawards.pl'),
(27, '2021-01-27 17:00:00', '2021-01-27 18:00:00', NULL, 0, '2021-01-27 17:34:53', '2021-02-07 14:31:57', 4, 'Daniel Lewicki', '794640515', 1, 0, 1, 'd.lewicki@adawards.pl'),
(28, '2021-01-27 17:00:00', '2021-01-27 18:00:00', NULL, 0, '2021-01-27 17:35:24', '2021-01-27 17:37:34', 2, 'Daniel Lewicki', '794640515', 1, 1, 1, 'd.lewicki@adawards.pl'),
(29, '2021-01-27 17:00:00', '2021-01-27 18:00:00', NULL, 0, '2021-01-27 17:36:40', '2021-01-27 17:38:02', 3, 'Daniel Lewicki', '794640515', 1, 1, 1, 'd.lewicki@adawards.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations_descriptions`
--

CREATE TABLE `reservations_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_equipment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `reservations_descriptions`
--

INSERT INTO `reservations_descriptions` (`id`, `title`, `name`, `email`, `phone`, `service`, `service_equipment`, `date`, `entry`, `leave`, `button_name`, `created_at`, `updated_at`, `date_icon`, `entry_icon`, `leave_icon`) VALUES
(1, 'Rezerwacja', 'Imię i nazwisko', 'Adres e-mail', 'Telefon', 'Usługa', 'Wybierz miejsce', 'Data', 'Godzina rozpoczęcia', 'Godzina zakończenia', 'Wyślij', NULL, '2021-01-02 11:42:41', 'calendar', 'clock-time-four-outline', 'clock-time-four-outline');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT 'black'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `services`
--

INSERT INTO `services` (`id`, `title`, `created_at`, `updated_at`, `color`) VALUES
(1, 'Bilard', '2020-11-01 10:16:18', '2020-11-05 15:03:18', '#19881d'),
(2, 'Tenis Stołowy', '2020-11-01 10:16:30', '2020-11-05 15:03:56', '#CD2D0B'),
(3, 'Rzutki', '2020-11-01 10:16:36', '2020-11-01 10:16:36', 'black');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `service_equipments`
--

CREATE TABLE `service_equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `service_equipments`
--

INSERT INTO `service_equipments` (`id`, `service_id`, `title`, `created_at`, `updated_at`, `active`) VALUES
(1, 1, 'Stół bilardowy nr 1', '2020-11-01 10:55:07', '2020-11-01 11:12:18', 1),
(2, 2, 'Stół do Tenisa nr 1', '2020-11-01 10:56:45', '2020-11-01 11:12:15', 1),
(3, 3, 'Maszyna do rzutek nr 1', '2020-11-01 11:12:04', '2020-11-01 11:12:07', 1),
(4, 1, 'Stół bilardowy nr 2', '2020-11-01 11:12:27', '2020-11-01 11:15:41', 1),
(5, 1, 'Stół bilardowy nr 3', '2020-11-01 11:15:50', '2020-11-01 11:16:06', 1),
(6, 1, 'Stół bilardowy nr 4', '2020-11-01 11:15:57', '2020-11-01 11:16:06', 1),
(7, 1, 'Stół bilardowy nr 5', '2020-11-01 11:16:04', '2020-11-01 11:16:07', 1);

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
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privace_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_regulations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookies_button` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookies_privace_button` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `settings`
--

INSERT INTO `settings` (`id`, `rodo_1`, `rodo_2`, `recaptcha_secret_token`, `recaptcha_site_token`, `meta_keywords`, `privace_policy`, `created_at`, `updated_at`, `shop_regulations`, `title`, `company`, `photo`, `photo_alt`, `description`, `cookies`, `cookies_button`, `cookies_privace_button`) VALUES
(1, '„Wyrażam zgodę na przetwarzanie danych osobowych podanych w formularzu. Podanie danych jest dobrowolne. Administratorem podanych przez Pana/ Panią danych osobowych jest Bilard Centrum Lubin z siedzibą o adresie ul. Komisji Edukacji Narodowej 6, 59-300 Lubin. Pana/Pani dane będą przetwarzane w celach związanych z udzieleniem odpowiedzi, przedstawieniem oferty usług Bilard Centrum Lubin oraz świadczeniem usług przez administratora danych. Przysługuje Panu/Pani prawo dostępu do treści swoich danych oraz ich poprawiania.”', '„Wyrażam zgodę na otrzymywanie informacji handlowych od Bilard Centrum Lubin dotyczących jej oferty w szczególności poprzez połączenia telefoniczne lub sms z wykorzystaniem numeru telefonu podanego w formularzu, a także zgodę na przetwarzanie moich danych osobowych w tym celu przez Bilard Centrum Lubin oraz w celach promocji, reklamy i badania rynku.”', '6Lf3c-AUAAAAAHoNHijgo_mKp3cMdB7jisUGPoBa', '6Lf3c-AUAAAAAFZvqKdtC2NCcYG_wVDSBccSYJBP', NULL, '2020-12-31/Polityka_Prywatności_1609414451.pdf', NULL, '2021-01-22 10:31:52', '2020-12-31/Regulamin_Sklepu_1609414451.pdf', 'Ustawienia', 'Bilard Centrum Lubin', '2021-01-03/8_1609684691.png', NULL, '<p>Bilard Centrum Lubin dysponuje sześcioma profesjonalnymi stołami do gry w pool-a, tenis stołowy, snooker, darts, piłkarzyki. Oferujemy także usługi organizacji imprez sportowych i okolicznościowych w sali bankietowej.  Zapraszamy wszystkich serdecznie do skorzystania z naszych usług, rezerwacji online oraz do komentowania naszych najnowszych aktualności! Skontaktuj się z nami korzystając z formularza kontaktowego w zakładce Kontakt.</p>', 'Ta strona używa plików cookie w celach statystycznych oraz marketingowych. Możesz zablokować zapisywanie plików cookie na swoim dysku twardym zmieniając ustawienia swojej przeglądarki internetowej. Kontynuując korzystanie z tej strony bez zablokowania plików cookie zgadzasz się na ich zapisywanie na swoim dysku twardym. Dowiedz się więcej w naszej', 'OK', 'Polityce Prywatności.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `title`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Kije bilardowe', '2020-11-11 16:26:02', '2021-03-25 18:03:34', 1),
(3, 'Kredy bilardowe', '2020-11-12 09:44:19', '2020-11-14 15:03:17', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_descriptions`
--

CREATE TABLE `shop_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minus_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plus_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_amount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_to_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_to_cart_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_now_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_now` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_sort_up` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_sort_down` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_sort_up` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_sort_down` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_sort_up` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_sort_down` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_confirm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_deleted` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_amount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shop_descriptions`
--

INSERT INTO `shop_descriptions` (`id`, `title`, `category`, `price`, `currency`, `discount`, `amount`, `minus_icon`, `plus_icon`, `max_amount`, `add_to_cart`, `add_to_cart_icon`, `buy_now_icon`, `buy_now`, `created_at`, `updated_at`, `product_categories`, `all`, `price_sort_up`, `price_sort_down`, `title_sort_up`, `title_sort_down`, `date_sort_up`, `date_sort_down`, `order_confirm`, `product_deleted`, `product_amount`, `color`) VALUES
(1, 'Sklep', 'Kategoria:', 'Cena:', 'PLN', 'Rabat', 'Ilość:', 'minus', 'plus', 'Przykro nam, brak towaru w magazynie!', 'Dodaj do koszyka', 'cart-plus', 'cart', 'Przejdź do koszyka!', NULL, '2021-01-24 11:11:00', 'Kategorie Produktów', 'Wszystkie', 'sort-numeric-ascending', 'sort-numeric-descending', 'sort-alphabetical-ascending', 'sort-alphabetical-descending', 'arrow-up', 'arrow-down', 'Czy na pewno złożyć zamówienie?', 'Przykro nam, produkt {produkt} został usunięty', 'Przykro nam, zostały {ilosc} sztuki produktu {produkt}', 'Kolor:');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_items`
--

CREATE TABLE `shop_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shop_items`
--

INSERT INTO `shop_items` (`id`, `product_id`, `title`, `subtitle`, `description`, `price`, `amount`, `created_at`, `updated_at`, `discount`, `active`, `color_id`, `photo`, `photo_alt`) VALUES
(1, 2, 'Master Czerwona', 'Kreda bilardowa', '<p>Kreda</p>', 12, 3, '2020-11-12 13:37:51', '2020-11-14 16:11:27', 0, 1, 2, '2020-09-12/ping_pong_1599903239.jpg', NULL),
(2, 1, 'Master Zielona', 'Kreda bilardowa', NULL, 12, 3, '2020-11-14 15:15:05', '2020-11-14 15:26:07', 0, 0, 3, '2020-10-11/8-ball_1602414474.jpg', NULL),
(5, 4, 'asd', 'asd', NULL, 12, 12, '2020-11-14 16:29:12', '2020-11-14 16:29:12', 12, 0, 1, NULL, NULL),
(19, 25, 'Poison Brązowy', 'Kij bilardowy', '<p>Lorem ipsum brązowy</p>', 555, 22, '2021-01-24 10:16:04', '2021-03-27 13:35:45', 0, 1, 4, '2021-01-24/poison_arsenic_31_1_1611483343.jpg', NULL);

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
-- Struktura tabeli dla tabeli `shop_item_colors`
--

CREATE TABLE `shop_item_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shop_item_colors`
--

INSERT INTO `shop_item_colors` (`id`, `title`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Niebieski', '2020-11-12 10:57:12', '2020-11-15 14:19:45', 1),
(2, 'Czerwony', '2020-11-12 10:57:20', '2020-11-12 10:57:55', 1),
(3, 'Zielony', '2020-11-12 10:57:42', '2020-11-12 10:57:55', 1),
(4, 'Brązowy', '2020-11-15 13:36:56', '2020-11-15 13:36:56', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_orders`
--

CREATE TABLE `shop_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `sum` double(8,2) DEFAULT NULL,
  `main_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_house_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_flat_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_zip_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_house_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_flat_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_zip_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shop_orders`
--

INSERT INTO `shop_orders` (`id`, `is_paid`, `sum`, `main_name`, `main_phone`, `main_street`, `main_house_number`, `main_flat_number`, `main_zip_code`, `main_message`, `second_name`, `second_phone`, `second_street`, `second_house_number`, `second_flat_number`, `second_zip_code`, `second_message`, `delivery`, `payment`, `created_at`, `updated_at`, `main_city`, `second_city`, `main_email`, `sent`) VALUES
(26, 0, 1554.00, 'Daniel Lewicki', '123 456 789', 'Witelona', '15', '2', '59-300', 'Wiadomość adres główny', 'Daniel Lewicki', '123 123 123', 'Kwiatowa', '25', '12', '59-220', 'asdasdas', 'personal', 'traditional', '2021-03-26 13:15:35', '2021-03-26 13:15:35', 'Lubin', 'Legnica', 'daniel.lewicki@stud.pwsz.legnica.edu.pl', 1),
(27, 0, 1554.00, 'Daniel Lewicki', '123 456 789', 'Witelona', '15', '2', '59-300', 'Wiadomość adres główny', 'Daniel Lewicki', '123 123 123', 'Kwiatowa', '25', '12', '59-220', 'asdasdas', 'personal', 'traditional', '2021-03-27 13:27:14', '2021-03-27 13:27:14', 'Lubin', 'Legnica', 'daniel.lewicki@stud.pwsz.legnica.edu.pl', 0),
(28, 0, 1554.00, 'Daniel Lewicki', '123 456 789', 'Witelona', '15', '2', '59-300', 'Wiadomość adres główny', 'Daniel Lewicki', '123 123 123', 'Kwiatowa', '25', '12', '59-220', 'asdasdas', 'personal', 'traditional', '2021-03-27 12:28:47', '2021-03-27 12:28:47', 'Lubin', 'Legnica', 'daniel.lewicki@stud.pwsz.legnica.edu.pl', 1),
(29, 0, 555.00, 'Daniel Lewicki', '123 456 789', 'Witelona', '15', '2', '59-300', 'Wiadomość adres główny', 'Daniel Lewicki', '123 123 123', 'Kwiatowa', '25', '12', '59-220', 'asdasdas', 'personal', 'traditional', '2021-03-27 13:33:18', '2021-03-27 13:33:18', 'Lubin', 'Legnica', 'daniel.lewicki@stud.pwsz.legnica.edu.pl', 0),
(30, 0, 571.00, 'Daniel Lewicki', '794640515', 'Budowniczych LGOM', '9', '1', '59-300', 'Wiadomość adres główny', 'Kamil Piech', '123123123', 'Alejandro Gov', '6', '9', '59-220', 'A to piech', 'courier', 'traditional', '2021-03-27 13:35:45', '2021-03-27 13:35:45', 'Lubin', 'Legnica', 'dany97971@gmail.com', 0);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `price` double(8,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shop_products`
--

INSERT INTO `shop_products` (`id`, `title`, `subtitle`, `description`, `photo`, `photo_alt`, `category_id`, `created_at`, `updated_at`, `active`, `price`, `discount`, `color_id`, `amount`, `meta_description`) VALUES
(1, 'Predator', 'Z1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus.</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 1, '2020-11-11 16:58:51', '2020-12-03 13:36:16', 1, 4199.00, NULL, NULL, 5, NULL),
(2, 'Master', 'Kreda bilardowa', NULL, '2020-09-15/2912522_1600184875.jpg', NULL, 3, '2020-11-12 09:46:11', '2021-01-15 15:04:06', 1, 12.00, NULL, NULL, 3, NULL),
(3, 'Players', 'Kij Bilardowy', '<p>Lorem</p>', '2020-09-15/2912522_1600184875.jpg', NULL, 1, '2020-11-14 15:46:09', '2021-03-27 11:11:15', 1, 715.00, NULL, NULL, 4, NULL),
(4, 'Kamui', 'Kreda bilardowa', '<p>asd</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 3, '2020-11-14 16:17:51', '2021-01-15 14:44:28', 1, 120.00, NULL, NULL, 1, NULL),
(5, 'Predator', 'Z1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus.</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 1, '2020-11-11 16:58:51', '2020-12-03 13:36:16', 1, 4199.00, NULL, NULL, 5, NULL),
(6, 'Master', 'Kreda bilardowa', NULL, '2020-09-15/2912522_1600184875.jpg', NULL, 3, '2020-11-12 09:46:11', '2020-12-03 13:36:16', 1, 12.00, NULL, NULL, 5, NULL),
(7, 'Players', 'Kij Bilardowy', '<p>Lorem</p>', '2020-09-15/2912522_1600184875.jpg', NULL, 1, '2020-11-14 15:46:09', '2020-12-03 13:36:16', 1, 715.00, NULL, NULL, 5, NULL),
(8, 'Kamui', 'Kreda bilardowa', '<p>asd</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 3, '2020-11-14 16:17:51', '2020-12-03 13:36:16', 1, 120.00, NULL, NULL, 5, NULL),
(9, 'Predator', 'Z1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus.</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 1, '2020-11-11 16:58:51', '2020-12-03 13:36:16', 1, 4199.00, NULL, NULL, 5, NULL),
(10, 'Master', 'Kreda bilardowa', NULL, '2020-09-15/2912522_1600184875.jpg', NULL, 3, '2020-11-12 09:46:11', '2020-12-03 13:36:17', 1, 12.00, NULL, NULL, 5, NULL),
(11, 'Players', 'Kij Bilardowy', '<p>Lorem</p>', '2020-09-15/2912522_1600184875.jpg', NULL, 1, '2020-11-14 15:46:09', '2020-12-03 13:36:17', 1, 715.00, NULL, NULL, 5, NULL),
(12, 'Kamui', 'Kreda bilardowa', '<p>asd</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 3, '2020-11-14 16:17:51', '2020-12-03 13:36:17', 1, 120.00, NULL, NULL, 5, NULL),
(13, 'Predator', 'Z1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus.</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 1, '2020-11-11 16:58:51', '2020-12-03 13:36:17', 1, 4199.00, NULL, NULL, 5, NULL),
(14, 'Master', 'Kreda bilardowa', NULL, '2020-09-15/2912522_1600184875.jpg', NULL, 3, '2020-11-12 09:46:11', '2020-12-03 13:36:17', 1, 12.00, NULL, NULL, 5, NULL),
(15, 'Players', 'Kij Bilardowy', '<p>Lorem</p>', '2020-09-15/2912522_1600184875.jpg', NULL, 1, '2020-11-14 15:46:09', '2020-12-03 13:36:17', 1, 715.00, NULL, NULL, 5, NULL),
(16, 'Kamui', 'Kreda bilardowa', '<p>asd</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 3, '2020-11-14 16:17:51', '2020-12-03 13:36:17', 1, 120.00, NULL, NULL, 5, NULL),
(17, 'Predator', 'Z1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus.</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 1, '2020-11-11 16:58:51', '2020-12-03 13:36:17', 1, 4199.00, NULL, NULL, 5, NULL),
(18, 'Master', 'Kreda bilardowa', NULL, '2020-09-15/2912522_1600184875.jpg', NULL, 3, '2020-11-12 09:46:11', '2020-12-03 13:36:17', 1, 12.00, NULL, NULL, 5, NULL),
(19, 'Players', 'Kij Bilardowy', '<p>Lorem</p>', '2020-09-15/2912522_1600184875.jpg', NULL, 1, '2020-11-14 15:46:09', '2020-12-03 13:36:17', 1, 715.00, NULL, NULL, 5, NULL),
(20, 'Kamui', 'Kreda bilardowa', '<p>asd</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 3, '2020-11-14 16:17:51', '2020-12-03 13:36:17', 1, 120.00, NULL, NULL, 5, NULL),
(21, 'Predator', 'Z1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio doloremque modi quasi explicabo a asperiores consectetur. Molestiae animi aspernatur, cumque saepe, recusandae esse. Eaque voluptate quam vitae beatae facilis minus.</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 1, '2020-11-11 16:58:51', '2020-12-03 13:36:17', 1, 4199.00, NULL, NULL, 5, NULL),
(22, 'Master', 'Kreda bilardowa', NULL, '2020-09-15/2912522_1600184875.jpg', NULL, 3, '2020-11-12 09:46:11', '2020-12-03 13:36:17', 1, 12.00, NULL, NULL, 5, NULL),
(23, 'Players', 'Kij Bilardowy', '<p>Lorem</p>', '2020-09-15/2912522_1600184875.jpg', NULL, 1, '2020-11-14 15:46:09', '2021-01-15 14:50:30', 1, 715.00, NULL, NULL, 4, NULL),
(24, 'Kamui', 'Kreda bilardowa', '<p>asd</p>', '2020-10-11/8-ball_1602414474.jpg', NULL, 3, '2020-11-14 16:17:51', '2020-12-03 13:36:18', 1, 120.00, NULL, NULL, 5, NULL),
(25, 'Poison', 'Kij Bilardowy', '<h2><strong>KIJ KLONOWY POISON ARSENIC 3-3</strong></h2><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Trzecia generacja Arsenic z Poison zachwyca elegancją kształtu, szlachetnością materiałów, siłą kolorów i ogólną zmysłowością. Projekt przypomina najlepsze modele, które zdominowały bilard 50 lat temu. Jednak rewolucyjna technologia tych kiji katapultuje gracza bezpośrednio w przyszłość i pozwala przeciwnikom pozostać daleko w tyle.</span></p><p><br></p><p><strong>Charakterystyka:</strong></p><ul><li>długość kija: 147cm</li><li>wykonany z drewna klonowego w technologii DDTM (Double Density Technology)</li><li>szczytówka&nbsp;VENOM 2 - low deflection została wykonana z najwyższej jakości klonu,&nbsp;dzięki zastosowaniu technologii DDTM otrzymujemy lepszą precyzję kija, oraz idealnie prostą szczytówkę, która jest sklejona z dwóch kawałków drewna klonowego&nbsp;o&nbsp;różnych gęstościach.</li><li>tip klejony&nbsp;8 warstwowy&nbsp;SARIN&nbsp;13mm )&nbsp;</li><li>ferrula THERMAX</li><li>złączka polerowana stalowa stainless steel UNI LOCK - BULLET</li><li><span style=\"color: rgb(102, 102, 102);\">rękojeść wyłożona tworzywem sztucznym&nbsp;&nbsp;</span></li></ul><p><br></p><p><br></p><p><span style=\"color: rgb(34, 34, 34);\">Kij arsenic jest wyposażony w wysokiej jakości szczytówkę Venom², 8-warstwową końcówkę Sarin (firmy Tiger Products) oraz precyzyjne połączenie z Uni-Loc®.</span></p>', '2021-01-24/poison_arsenic_33_2_1611483258.jpg', NULL, 1, '2020-11-19 09:55:44', '2021-03-27 13:28:47', 1, 555.00, 20, 2, 0, '<p>Poison</p>');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `slider`
--

INSERT INTO `slider` (`id`, `title`, `subtitle`, `photo`, `photo_alt`, `created_at`, `updated_at`, `active`) VALUES
(24, 'Bilard', 'Oferujemy wysokiej jakości stoły bilardowe', '2020-09-03/mlodzi_ludzie_1599145340.jpg', 'bilard', '2020-09-03 11:02:33', '2021-01-28 17:40:52', 1),
(25, 'Tenis stołowy', 'Posiadamy także stół do tenisa stołowego', '2020-09-03/tenis_stolowy_1599145342.jpg', 'tenis stołowy', '2020-09-03 13:02:55', '2020-10-25 16:01:16', 1),
(26, 'Dart', 'W ofercie także maszyna do gry w Dart', '2020-09-03/dart_1599145340.jpg', 'dart', '2020-09-03 13:03:14', '2020-10-25 16:01:17', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `snackbar_alerts`
--

CREATE TABLE `snackbar_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_require` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_to_accept` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_to_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_items_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_account_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_from_cart_question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `validate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_activated_account` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked_user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_exist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_account_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_does_not_exist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reminder_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_password_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lucky_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `snackbar_alerts`
--

INSERT INTO `snackbar_alerts` (`id`, `error`, `delete_comment`, `add_comment`, `mail_error`, `attachments_error`, `recaptcha_error`, `login_require`, `reservation_to_accept`, `add_to_cart`, `shop_items_error`, `photo_error`, `edit_account_success`, `delete_from_cart_question`, `order_success`, `login_success`, `register_success`, `created_at`, `updated_at`, `validate`, `non_activated_account`, `blocked_user`, `user_exist`, `mail_success`, `title`, `activated_account_success`, `user_does_not_exist`, `password_reminder_success`, `password_error`, `change_password_success`, `lucky_number`) VALUES
(1, 'Błąd serwera, przepraszamy...', 'Pomyślnie usunięto komentarz!', 'Pomyślnie dodano komentarz!', 'Przepraszamy, nie udało się wysłać maila...', 'Przepraszamy, nie udało się wysłać załączników...', 'System twierdzi, że jesteś robotem...', 'Musisz się zalogować!', 'Twoja rezerwacja czeka na akceptację!', 'Pomyślnie dodano do koszyka!', 'Nie udało się załadować wariantów...', 'Przepraszamy, nie udało się dodać zdjęcia...', 'Pomyślnie edytowano użytkownika!', 'Czy na pewno usunąć z koszyka przedmiot:', 'Pomyślnie złożono zamówienie!', 'Pomyślnie zalogowano!', 'Pomyślnie zarejestrowano! Wysłano link aktywacyjny!', NULL, '2021-03-27 15:53:43', 'Niepoprawne dane!', 'Proszę aktywować konto!', 'Przepraszamy, Twoje konto zostało zablokowane!', 'Taki użytkownik już istnieje!', 'Pomyślnie wysłano wiadomość!', 'Komunikaty', 'Pomyślnie aktywowano konto!', 'Użytkownik nie istnieje!', 'Pomyślnie wysłano nowe hasło!', 'Hasło nieprawidłowe!', 'Pomyślnie zmieniono hasło!', 'Wylosowano szczęśliwca o identyfikatorze {id}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subpages`
--

CREATE TABLE `subpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `subpages`
--

INSERT INTO `subpages` (`id`, `title`, `page`, `photo`, `photo_alt`, `created_at`, `updated_at`, `order`, `meta_description`, `active`) VALUES
(1, 'Home', '/', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-11 11:08:45', '2020-12-28 10:08:29', 1, '<p>Strona główna</p>', 1),
(2, 'Aktualności', '/aktualnosci', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-11 11:09:50', '2020-12-28 10:11:37', 3, '<p>Dowiedz się więcej o naszym bilardowym świecie czytając aktualności!</p>', 1),
(3, 'O klubie', '/o-klubie', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-17 10:06:20', '2020-12-28 10:08:30', 4, '<p>Dowiedz się więcej o naszym klubie!</p>', 1),
(4, 'Oferta', '/oferta', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-19 09:32:04', '2021-01-20 17:04:29', 5, '<p>Dowiedz się więcej o naszej ofercie!</p>', 1),
(5, 'Zawodnicy', '/zawodnicy', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-23 11:15:53', '2020-12-28 10:08:31', 6, '<p>Dowiedz się więcej o naszych zawodnikach!</p>', 1),
(6, 'Puchary', '/puchary', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-23 14:33:30', '2020-12-28 10:08:37', 7, '<p>Zobacz nasze puchary!</p>', 1),
(7, 'Historia', '/historia', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-25 12:11:32', '2020-12-28 10:08:37', 8, '<p>Poczytaj o historii bilarda!</p>', 1),
(8, 'Transmisje', '/transmisje', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-25 14:24:11', '2020-12-28 10:08:38', 9, '<p>Sprawdź link do interesującej Cię transmisji!</p>', 1),
(9, 'Kontakt', '/kontakt', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-27 09:56:33', '2020-12-28 10:08:38', 13, '<p>Masz pytania? Skontaktuj się z nami!</p>', 1),
(10, 'Galeria', '/galeria', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-29 13:52:36', '2020-12-28 10:08:39', 12, '<p>Zobacz naszą galerię zdjęć!</p>', 1),
(11, 'Cennik', '/cennik', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-10-31 14:49:39', '2020-12-28 10:08:39', 10, '<p>Sprawdź nasze ceny!</p>', 1),
(12, 'Rezerwacja', '/rezerwacja', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-11-01 11:17:27', '2020-12-28 10:08:39', 9, '<p>Zarezerwuj wizytę!</p>', 1),
(13, 'Sklep', '/sklep', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-11-14 11:58:45', '2021-03-27 15:22:00', 2, '<p>Kup interesujące Cię produkty!</p>', 0),
(15, 'Dokumenty', '/dokumenty', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-12-06 09:53:22', '2020-12-28 10:08:40', 8, '<p>Pobierz interesujące Cię dokumenty!</p>', 1),
(16, 'Koszyk', '/koszyk', '2020-10-11/8-ball_1602414474.jpg', NULL, '2020-12-31 11:20:20', '2020-12-31 11:20:20', NULL, '<p>Sprawdź swój koszyk przed sfinalizowaniem zakupów!</p>', 0);

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
(27, 'Daniel Lewicki', 'dany97971@gmail.com', '2020-09-27 08:46:39', '$2y$10$/OIVfuOzthUCIDigdtc8r.LOQ3lYAfY7ZUX9rS8megMtDHm5U6E.G', 'Moderator', 'EfTdygXp8YPcbmUqfAtt3tZ9NCbCaVoqGgst8CLhc7xpPY8TVBH4II79jqNb', '2020-09-27 08:46:39', '2021-01-21 13:57:41', '2021-01-21/ja_1611237461.jpg', 1, 0),
(38, 'student daniel', 'daniel.lewicki@stud.pwsz.legnica.edu.pl', NULL, '$2y$10$pfuWtbl9aMOrmTXh4oY/zeGO2wou4DToQXs22Ty50/iYaKkv7WypW', 'Zawodnik', NULL, '2020-10-30 11:25:23', '2021-01-30 11:44:14', NULL, 1, 0),
(39, 'Michał Król', 'krolmichal22@gmail.com', NULL, '$2y$10$Dum67..dQaae3UAB6HOLNOzXEReMrmxho0IVLj2LRBsSyYZMn08r.', 'Klient', NULL, '2020-12-28 17:22:49', '2020-12-28 17:24:11', '2021-01-06/8-Ball_1609944002.png', 1, 0),
(44, 'Geniusz Zbrodni', 'd.lewicki@adawards.pl', NULL, '$2y$10$hwL6.Bruhthy1ODoXNBY7.EPuBxY21zLtTnNDoLvKCkWR6rTYRXmS', 'Klient', NULL, '2021-01-09 13:45:43', '2021-02-02 16:20:06', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `validation_rules`
--

CREATE TABLE `validation_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_length` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_confirm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_min_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_exist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `validation_rules`
--

INSERT INTO `validation_rules` (`id`, `title`, `required`, `email`, `password_length`, `file_size`, `password_confirm`, `reservation_min_time`, `reservation_exist`, `created_at`, `updated_at`) VALUES
(1, 'Opisy', 'To pole jest wymagane!', 'Niepoprawny e-mail.', 'Hasło musi mieć co najmniej 8 liter!', 'Pliki powinny ważyć mniej niż 5 MB!', 'Hasła muszą być takie same!', 'Minimalny czas rezerwacji to 30 minut!', 'Taka rezerwacja już istnieje!', NULL, '2021-01-28 08:39:33');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_mail_id_foreign` (`mail_id`);

--
-- Indeksy dla tabeli `auth_descriptions`
--
ALTER TABLE `auth_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `breadcrumb_descriptions`
--
ALTER TABLE `breadcrumb_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `calendar_descriptions`
--
ALTER TABLE `calendar_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cart_descriptions`
--
ALTER TABLE `cart_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `comments_descriptions`
--
ALTER TABLE `comments_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `contact_descriptions`
--
ALTER TABLE `contact_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cups`
--
ALTER TABLE `cups`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cups_descriptions`
--
ALTER TABLE `cups_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `day_formats`
--
ALTER TABLE `day_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `delivery_options`
--
ALTER TABLE `delivery_options`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `documents_descriptions`
--
ALTER TABLE `documents_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `drawer_descriptions`
--
ALTER TABLE `drawer_descriptions`
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
-- Indeksy dla tabeli `gallery_descriptions`
--
ALTER TABLE `gallery_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `history_descriptions`
--
ALTER TABLE `history_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `layout_elements`
--
ALTER TABLE `layout_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `live_broadcasts`
--
ALTER TABLE `live_broadcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `live_broadcasts_descriptions`
--
ALTER TABLE `live_broadcasts_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lucky_number`
--
ALTER TABLE `lucky_number`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mails`
--
ALTER TABLE `mails`
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
-- Indeksy dla tabeli `news_descriptions`
--
ALTER TABLE `news_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_tags_news_id_foreign` (`news_id`);

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
-- Indeksy dla tabeli `offers_descriptions`
--
ALTER TABLE `offers_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_product_id_foreign` (`product_id`),
  ADD KEY `ordered_products_item_id_foreign` (`item_id`),
  ADD KEY `ordered_products_shop_order_id_foreign` (`shop_order_id`);

--
-- Indeksy dla tabeli `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `partners_descriptions`
--
ALTER TABLE `partners_descriptions`
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
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `players_descriptions`
--
ALTER TABLE `players_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_list_price_list_category_id_foreign` (`price_list_category_id`);

--
-- Indeksy dla tabeli `price_list_categories`
--
ALTER TABLE `price_list_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `price_list_descriptions`
--
ALTER TABLE `price_list_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_service_equipment_id_foreign` (`service_equipment_id`);

--
-- Indeksy dla tabeli `reservations_descriptions`
--
ALTER TABLE `reservations_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `service_equipments`
--
ALTER TABLE `service_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_equipments_service_id_foreign` (`service_id`);

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
-- Indeksy dla tabeli `shop_descriptions`
--
ALTER TABLE `shop_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_items_product_id_foreign` (`product_id`),
  ADD KEY `shop_items_color_id_foreign` (`color_id`);

--
-- Indeksy dla tabeli `shop_items_opinions`
--
ALTER TABLE `shop_items_opinions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_items_opinions_item_id_foreign` (`item_id`),
  ADD KEY `shop_items_opinions_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `shop_item_colors`
--
ALTER TABLE `shop_item_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_products_category_id_foreign` (`category_id`),
  ADD KEY `shop_products_color_id_foreign` (`color_id`);

--
-- Indeksy dla tabeli `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `snackbar_alerts`
--
ALTER TABLE `snackbar_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `subpages`
--
ALTER TABLE `subpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`) USING HASH;

--
-- Indeksy dla tabeli `validation_rules`
--
ALTER TABLE `validation_rules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT dla tabeli `auth_descriptions`
--
ALTER TABLE `auth_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `breadcrumb_descriptions`
--
ALTER TABLE `breadcrumb_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `calendar_descriptions`
--
ALTER TABLE `calendar_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `cart_descriptions`
--
ALTER TABLE `cart_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `comments_descriptions`
--
ALTER TABLE `comments_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `contact_descriptions`
--
ALTER TABLE `contact_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `cups`
--
ALTER TABLE `cups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `cups_descriptions`
--
ALTER TABLE `cups_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `day_formats`
--
ALTER TABLE `day_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `delivery_options`
--
ALTER TABLE `delivery_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `documents_descriptions`
--
ALTER TABLE `documents_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `drawer_descriptions`
--
ALTER TABLE `drawer_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `gallery_descriptions`
--
ALTER TABLE `gallery_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `history_descriptions`
--
ALTER TABLE `history_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `layout_elements`
--
ALTER TABLE `layout_elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `live_broadcasts`
--
ALTER TABLE `live_broadcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `live_broadcasts_descriptions`
--
ALTER TABLE `live_broadcasts_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `lucky_number`
--
ALTER TABLE `lucky_number`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT dla tabeli `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `news_descriptions`
--
ALTER TABLE `news_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `offers_descriptions`
--
ALTER TABLE `offers_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT dla tabeli `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `partners_descriptions`
--
ALTER TABLE `partners_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `players_descriptions`
--
ALTER TABLE `players_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `price_list_categories`
--
ALTER TABLE `price_list_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `price_list_descriptions`
--
ALTER TABLE `price_list_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `reservations_descriptions`
--
ALTER TABLE `reservations_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `service_equipments`
--
ALTER TABLE `service_equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `shop_descriptions`
--
ALTER TABLE `shop_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `shop_items_opinions`
--
ALTER TABLE `shop_items_opinions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `shop_item_colors`
--
ALTER TABLE `shop_item_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `shop_orders`
--
ALTER TABLE `shop_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT dla tabeli `snackbar_alerts`
--
ALTER TABLE `snackbar_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `subpages`
--
ALTER TABLE `subpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `validation_rules`
--
ALTER TABLE `validation_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_mail_id_foreign` FOREIGN KEY (`mail_id`) REFERENCES `mails` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `news_tags`
--
ALTER TABLE `news_tags`
  ADD CONSTRAINT `news_tags_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `shop_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordered_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordered_products_shop_order_id_foreign` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_orders` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `price_list`
--
ALTER TABLE `price_list`
  ADD CONSTRAINT `price_list_price_list_category_id_foreign` FOREIGN KEY (`price_list_category_id`) REFERENCES `price_list_categories` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_service_equipment_id_foreign` FOREIGN KEY (`service_equipment_id`) REFERENCES `service_equipments` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `service_equipments`
--
ALTER TABLE `service_equipments`
  ADD CONSTRAINT `service_equipments_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_items`
--
ALTER TABLE `shop_items`
  ADD CONSTRAINT `shop_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `shop_item_colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_items_opinions`
--
ALTER TABLE `shop_items_opinions`
  ADD CONSTRAINT `shop_items_opinions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `color` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_items_opinions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `shop_item_colors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
