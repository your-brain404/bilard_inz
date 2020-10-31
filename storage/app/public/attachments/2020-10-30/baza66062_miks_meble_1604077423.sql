-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 66062.m.tld.pl
-- Czas generowania: 30 Paź 2020, 17:34
-- Wersja serwera: 5.7.28-31-log
-- Wersja PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza66062_miks_meble`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contact_settings`
--

CREATE TABLE `contact_settings` (
  `id` int(11) NOT NULL,
  `company` text COLLATE utf8_polish_ci NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `map` text COLLATE utf8_polish_ci NOT NULL,
  `address` text COLLATE utf8_polish_ci NOT NULL,
  `city` text COLLATE utf8_polish_ci NOT NULL,
  `zip_code` text COLLATE utf8_polish_ci NOT NULL,
  `phone1` text COLLATE utf8_polish_ci NOT NULL,
  `phone2` text COLLATE utf8_polish_ci NOT NULL,
  `email1` text COLLATE utf8_polish_ci NOT NULL,
  `email2` text COLLATE utf8_polish_ci NOT NULL,
  `hours` text COLLATE utf8_polish_ci NOT NULL,
  `label1` text COLLATE utf8_polish_ci NOT NULL,
  `label2` text COLLATE utf8_polish_ci NOT NULL,
  `label3` text COLLATE utf8_polish_ci NOT NULL,
  `label4` text COLLATE utf8_polish_ci NOT NULL,
  `label5` text COLLATE utf8_polish_ci NOT NULL,
  `phone3` text COLLATE utf8_polish_ci,
  `email3` text COLLATE utf8_polish_ci,
  `label6` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `contact_settings`
--

INSERT INTO `contact_settings` (`id`, `company`, `name`, `map`, `address`, `city`, `zip_code`, `phone1`, `phone2`, `email1`, `email2`, `hours`, `label1`, `label2`, `label3`, `label4`, `label5`, `phone3`, `email3`, `label6`) VALUES
(1, 'MIKS-MEBLE MAGDALENA KORZEŃ', 'MAGDALENA KORZEŃ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2504.014900735723!2d16.973502315756022!3d51.12663317957428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470fea0cbba2956f:0x55928d598448af14!2sHorbaczewskiego 4/6, 54-130 Wrocław!5e0!3m2!1spl!2spl!4v1601898447591!5m2!1spl!2spl', 'ul. Horbaczewskiego 4-6', 'Wrocław', '55-140', '71 354 97 09', '796 628 714', 'biuro@miks-meble.pl', 'patrycja@miks-meble.pl', '', 'Biuro Handlowe', 'Patrycja Janiak', 'Sebastian Gadomski', 'MiKs - Meble<br>Centrum Handlowe \"ASTRA\"', 'Projektant', '515 144 130', 'sebastian@miks-meble.pl', 'Projektant');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dlaczego_my`
--

CREATE TABLE `dlaczego_my` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dlaczego_my`
--

INSERT INTO `dlaczego_my` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`) VALUES
(1, '2019-11-02 10:24:07', 'Jak to działa?', '', '', '2020-10-07/1_PROCES_REALIZACJI1.jpg', 'why us', NULL, NULL, NULL, '', ''),
(2, '2019-11-02 10:35:09', 'Przedstawienie oferty', '', '<p>Zadzwoń lub napisz i umów się na spotkanie w Biurze Handlowym w DH ASTRA lub skorzystaj z wyceny online.</p>\r\n<p>Po wysłaniu formularza online lub przedstawieniu informacji oraz oczekiwań w Biurze Handlowym przygotowujemy wstępną wycenę, a następnie projektant zaprasza na spotkanie.</p>\r\n<p>Podczas spotkania projektant przedstawia projekt oraz ofertę do akceptacji.</p>', '2020-10-07/school-desk.svg', 'expierience', NULL, NULL, NULL, '', ''),
(3, '2019-11-02 10:38:33', 'Pomiar u klienta', '', '<p>Po zaakceptowaniu oferty, w dogodnym dla Państwa terminie umówimy się na szczegółowy pomiar.</p>', '2020-10-07/tape-measure.svg', 'quality', NULL, NULL, NULL, '', ''),
(4, '2019-11-02 10:40:52', 'Podpisanie umowy', '', '<p>Po przedstawieniu projektu uwzględniającego szczegółowe wymiary, ustaleniu wszystkich szczegółów, w tym materiałów i akcesoriów, podpisujemy z Państwem umowę na wykonanie mebli.</p>', '2020-10-07/contract.svg', 'transport', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `example`
--

CREATE TABLE `example` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci NOT NULL,
  `subtitle` text COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `photo` text COLLATE utf8_polish_ci NOT NULL,
  `alt` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `galeria_kategoria`
--

CREATE TABLE `galeria_kategoria` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `galeria_kategoria`
--

INSERT INTO `galeria_kategoria` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`) VALUES
(1, '2019-11-03 21:06:50', 'Web design', NULL, NULL, NULL, NULL),
(2, '2019-11-03 21:07:01', 'Branding', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` text COLLATE utf8_polish_ci NOT NULL,
  `alt` text COLLATE utf8_polish_ci NOT NULL,
  `table_name` text COLLATE utf8_polish_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `category` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gallery`
--

INSERT INTO `gallery` (`id`, `created`, `photo`, `alt`, `table_name`, `item_id`, `category`) VALUES
(11, '2019-11-05 22:13:55', '2019-11-05/8.jpg', '', 'galeria', 1, ''),
(12, '2019-11-05 22:13:58', '2019-11-05/19.jpg', '', 'galeria', 1, ''),
(13, '2019-11-05 22:14:03', '2019-11-05/357.jpg', '', 'galeria', 1, ''),
(14, '2019-11-05 22:14:07', '2019-11-05/513.jpg', '', 'galeria', 1, ''),
(15, '2019-11-05 22:14:10', '2019-11-05/531.jpg', '', 'galeria', 1, ''),
(16, '2019-11-05 22:14:14', '2019-11-05/535.jpg', '', 'galeria', 1, ''),
(17, '2019-11-05 22:14:18', '2019-11-05/563566-pl2j8p-65.jpg', '', 'galeria', 1, ''),
(18, '2019-11-05 22:14:21', '2019-11-05/2373217.jpg', '', 'galeria', 1, ''),
(19, '2019-11-05 22:14:24', '2019-11-05/2882619.jpg', '', 'galeria', 1, ''),
(29, '2020-09-21 09:54:13', '2020-09-21/biala_~1.jpg', '', 'gallery_page', 1, ''),
(30, '2020-09-21 09:54:22', '2020-09-21/biala_~2.jpg', '', 'gallery_page', 1, ''),
(31, '2020-09-21 09:54:30', '2020-09-21/biala_~3.jpg', '', 'gallery_page', 1, ''),
(32, '2020-09-21 09:54:38', '2020-09-21/biala_~4.jpg', '', 'gallery_page', 1, ''),
(33, '2020-09-21 09:54:45', '2020-09-21/biala_kuchnia_fronty_frezowane_mat_bialy_lakier.jpg', '', 'gallery_page', 1, ''),
(34, '2020-09-21 09:54:52', '2020-09-21/bi56d7~1.jpg', '', 'gallery_page', 1, ''),
(35, '2020-09-21 09:55:47', '2020-09-21/ku4f80-1.jpg', '', 'gallery_page', 2, ''),
(36, '2020-09-21 09:56:08', '2020-09-21/kuchni-1.jpg', '', 'gallery_page', 2, ''),
(37, '2020-09-21 09:56:36', '2020-09-21/kuchni-2.jpg', '', 'gallery_page', 2, ''),
(38, '2020-09-21 09:57:01', '2020-09-21/kuchni-3.jpg', '', 'gallery_page', 2, ''),
(39, '2020-09-21 09:57:28', '2020-09-21/kuchni-4.jpg', '', 'gallery_page', 2, ''),
(40, '2020-09-21 09:58:13', '2020-09-21/kuchni-3.jpe', '', 'gallery_page', 3, ''),
(41, '2020-09-21 09:58:18', '2020-09-21/kuchni~1.jpe', '', 'gallery_page', 3, ''),
(42, '2020-09-21 09:58:24', '2020-09-21/kuchni~2.jpe', '', 'gallery_page', 3, ''),
(43, '2020-09-21 09:58:29', '2020-09-21/kuchni~3.jpe', '', 'gallery_page', 3, ''),
(44, '2020-09-21 09:58:35', '2020-09-21/kuchni~4.jpe', '', 'gallery_page', 3, ''),
(45, '2020-09-21 09:58:40', '2020-09-21/ku87b9~1.jpe', '', 'gallery_page', 3, ''),
(46, '2020-09-21 09:59:34', '2020-09-21/kuchni~1.jpg', '', 'gallery_page', 4, ''),
(47, '2020-09-21 09:59:53', '2020-09-21/kuchni~2.jpg', '', 'gallery_page', 4, ''),
(48, '2020-09-21 10:00:12', '2020-09-21/kuchni~3.jpg', '', 'gallery_page', 4, ''),
(49, '2020-09-21 10:00:29', '2020-09-21/prosta~1.jpg', '', 'gallery_page', 4, ''),
(61, '2020-09-21 11:07:15', '2020-09-21/kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg', '', 'gallery_page', 5, ''),
(62, '2020-09-21 11:07:29', '2020-09-21/kuchnia-modna-nowoczesna-stylizowana-klasyczna2.jpg', '', 'gallery_page', 5, ''),
(63, '2020-09-21 11:09:37', '2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 6, ''),
(64, '2020-09-21 11:09:47', '2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 6, ''),
(65, '2020-09-21 11:09:57', '2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', '', 'gallery_page', 6, ''),
(66, '2020-09-21 11:10:06', '2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', '', 'gallery_page', 6, ''),
(67, '2020-09-21 11:10:15', '2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', '', 'gallery_page', 6, ''),
(68, '2020-09-21 11:10:26', '2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-6-.jpg', '', 'gallery_page', 6, ''),
(69, '2020-09-21 11:14:25', '2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 7, ''),
(70, '2020-09-21 11:14:34', '2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 7, ''),
(71, '2020-09-21 11:14:41', '2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', '', 'gallery_page', 7, ''),
(72, '2020-09-21 11:14:49', '2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', '', 'gallery_page', 7, ''),
(73, '2020-09-21 11:14:58', '2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', '', 'gallery_page', 7, ''),
(74, '2020-09-21 11:16:41', '2020-09-21/kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', '', 'gallery_page', 8, ''),
(75, '2020-09-21 11:17:08', '2020-09-21/kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', '', 'gallery_page', 8, ''),
(76, '2020-09-21 11:17:37', '2020-09-21/kuchnia_waska_stolik_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', '', 'gallery_page', 8, ''),
(77, '2020-09-21 11:19:16', '2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_na_raty_wroclaw.jpg', '', 'gallery_page', 9, ''),
(78, '2020-09-21 11:19:22', '2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wrocla_-3-.jpg', '', 'gallery_page', 9, ''),
(79, '2020-09-21 11:19:28', '2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 9, ''),
(80, '2020-09-21 11:19:33', '2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw-2-.jpg', '', 'gallery_page', 9, ''),
(81, '2020-09-21 11:19:39', '2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg', '', 'gallery_page', 9, ''),
(82, '2020-09-21 11:21:01', '2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 10, ''),
(83, '2020-09-21 11:21:04', '2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', '', 'gallery_page', 10, ''),
(84, '2020-09-21 11:21:05', '2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-3-.jpg', '', 'gallery_page', 10, ''),
(85, '2020-09-21 11:21:07', '2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-4-.jpg', '', 'gallery_page', 10, ''),
(86, '2020-09-21 11:21:10', '2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-5-.jpg', '', 'gallery_page', 10, ''),
(87, '2020-09-21 11:22:49', '2020-09-21/lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 11, ''),
(88, '2020-09-21 11:23:03', '2020-09-21/lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-3-.jpg', '', 'gallery_page', 11, ''),
(89, '2020-09-21 11:23:14', '2020-09-21/lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-4-.jpg', '', 'gallery_page', 11, ''),
(90, '2020-09-21 11:24:28', '2020-09-21/biuro_1.jpg', '', 'gallery_page', 12, ''),
(91, '2020-09-21 11:24:39', '2020-09-21/biuro_2.jpg', '', 'gallery_page', 12, ''),
(92, '2020-09-21 11:24:50', '2020-09-21/biuro_3.jpg', '', 'gallery_page', 12, ''),
(93, '2020-09-21 11:25:11', '2020-09-21/meble_biurowe_na_wymiar_zamowienie_wroclaw_.jpg', '', 'gallery_page', 12, ''),
(94, '2020-09-21 11:27:19', '2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka.jpg', '', 'gallery_page', 13, ''),
(95, '2020-09-21 11:27:30', '2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-.jpg', '', 'gallery_page', 13, ''),
(96, '2020-09-21 11:27:40', '2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-3-.jpg', '', 'gallery_page', 13, ''),
(97, '2020-09-21 11:27:49', '2020-09-21/zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka.jpg', '', 'gallery_page', 13, ''),
(98, '2020-09-21 11:27:59', '2020-09-21/zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-.jpg', '', 'gallery_page', 13, ''),
(99, '2020-09-21 11:29:21', '2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg', '', 'gallery_page', 14, ''),
(100, '2020-09-21 11:29:26', '2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-.jpg', '', 'gallery_page', 14, ''),
(101, '2020-09-21 11:29:31', '2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-3-.jpg', '', 'gallery_page', 14, ''),
(102, '2020-09-21 11:33:20', '2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna.jpg', '', 'gallery_page', 15, ''),
(103, '2020-09-21 11:33:24', '2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-2-.jpg', '', 'gallery_page', 15, ''),
(104, '2020-09-21 11:33:28', '2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-3-.jpg', '', 'gallery_page', 15, ''),
(105, '2020-09-21 11:33:32', '2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-4-.jpg', '', 'gallery_page', 15, ''),
(106, '2020-09-21 11:33:35', '2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-5-.jpg', '', 'gallery_page', 15, ''),
(107, '2020-09-21 11:40:23', '2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_skorzane_uchwyty_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 16, ''),
(108, '2020-09-21 11:40:26', '2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 16, ''),
(109, '2020-09-21 11:40:30', '2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', '', 'gallery_page', 16, ''),
(110, '2020-09-21 11:40:34', '2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', '', 'gallery_page', 16, ''),
(111, '2020-09-21 11:40:37', '2020-09-21/uchwyty_skorzane_skandynawskie_komoda_meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', '', 'gallery_page', 16, ''),
(112, '2020-09-21 11:42:50', '2020-09-21/meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 17, ''),
(113, '2020-09-21 11:42:52', '2020-09-21/meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_ratywroclaw.jpg', '', 'gallery_page', 17, ''),
(114, '2020-09-21 11:42:53', '2020-09-21/meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_z_lustrem_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wrocl.jpg', '', 'gallery_page', 17, ''),
(115, '2020-09-21 11:43:58', '2020-09-21/szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 18, ''),
(116, '2020-09-21 11:44:03', '2020-09-21/szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', '', 'gallery_page', 18, ''),
(117, '2020-09-21 11:45:02', '2020-09-21/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 19, ''),
(118, '2020-09-21 11:45:10', '2020-09-21/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', '', 'gallery_page', 19, ''),
(119, '2020-09-21 11:45:17', '2020-09-21/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-3-.jpg', '', 'gallery_page', 19, ''),
(120, '2020-09-21 11:46:43', '2020-09-21/szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 20, ''),
(121, '2020-09-21 11:46:46', '2020-09-21/szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', '', 'gallery_page', 20, ''),
(122, '2020-09-21 11:46:49', '2020-09-21/szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_uchwyty_czarne_modne.jpg', '', 'gallery_page', 20, ''),
(123, '2020-09-21 11:47:56', '2020-09-21/szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 21, ''),
(124, '2020-09-21 11:48:04', '2020-09-21/szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 21, ''),
(125, '2020-09-21 11:48:13', '2020-09-21/szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', '', 'gallery_page', 21, ''),
(126, '2020-09-21 11:49:21', '2020-09-21/szafa_przesuwna_wnekowa_pod_skosem_skosna_z_plyty_lakier_mat_matowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 22, ''),
(127, '2020-09-21 11:49:23', '2020-09-21/szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 22, ''),
(128, '2020-09-21 11:49:57', '2020-09-21/szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 22, ''),
(129, '2020-09-21 11:49:59', '2020-09-21/szafa_przesuwna_wnekowa_z_plyty_drewno_z_materialem_pikowanym_pikowaniem_obiciem_czarne_szprosy_okucia_meble_na_wymiar_zamowienie_wroclaw_na_raty.jpg', '', 'gallery_page', 22, ''),
(130, '2020-09-21 11:50:01', '2020-09-21/szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 22, ''),
(131, '2020-09-21 11:50:05', '2020-09-21/szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', '', 'gallery_page', 22, ''),
(132, '2020-09-21 11:50:17', '2020-09-21/szafa_wnekowa_przesuwna_z_szyba_mleczna_dab_hamilton_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'gallery_page', 22, ''),
(133, '2020-09-21 11:51:43', '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 23, ''),
(134, '2020-09-21 11:51:49', '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 23, ''),
(135, '2020-09-21 11:51:54', '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 23, ''),
(136, '2020-09-21 11:53:05', '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', '', 'gallery_page', 24, ''),
(137, '2020-09-21 11:53:10', '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', '', 'gallery_page', 24, ''),
(138, '2020-09-21 11:53:16', '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', '', 'gallery_page', 24, ''),
(139, '2020-09-30 10:28:16', '2020-09-30/biala_~1.jpg', '', 'blog', 3, ''),
(140, '2020-09-30 10:28:16', '2020-09-30/biala_~1.jpg.webp', '', 'blog', 3, ''),
(141, '2020-09-30 10:28:28', '2020-09-30/biala_~3.jpg', '', 'blog', 3, ''),
(142, '2020-09-30 10:52:02', '2020-09-30/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg.webp', '', 'blog', 2, ''),
(143, '2020-09-30 10:52:02', '2020-09-30/kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg.webp', '', 'blog', 2, ''),
(144, '2020-09-30 10:52:07', '2020-09-30/meble_~31.jpg', '', 'blog', 2, ''),
(145, '2020-09-30 10:58:29', '2020-09-30/szafa_~21.jpg.webp', '', 'blog', 1, ''),
(146, '2020-09-30 10:58:29', '2020-09-30/szafa_~22.jpg.webp', '', 'blog', 1, ''),
(147, '2020-09-30 10:58:42', '2020-09-30/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', '', 'blog', 1, ''),
(160, '2020-10-05 13:24:07', '2020-10-05/wycena_meble_kuchenne_1.jpg', '', 'wycena', 1, ''),
(161, '2020-10-05 13:24:35', '2020-10-05/wycena_meble_kuchenne_2.jpg', '', 'wycena', 1, ''),
(162, '2020-10-05 13:24:49', '2020-10-05/wycena_meble_kuchenne_3.jpg', '', 'wycena', 1, ''),
(163, '2020-10-06 12:03:57', '2020-10-06/inne_1.jpg', '', 'oferta', 5, ''),
(164, '2020-10-06 12:04:11', '2020-10-06/inne_2.jpg', '', 'oferta', 5, ''),
(165, '2020-10-06 12:04:13', '2020-10-06/inne_3.jpg', '', 'oferta', 5, ''),
(166, '2020-10-06 12:04:15', '2020-10-06/inne_3_dluzsze.jpg', '', 'oferta', 5, ''),
(167, '2020-10-06 12:04:24', '2020-10-06/inne_naglowek.jpg', '', 'oferta', 5, ''),
(168, '2020-10-06 12:16:57', '2020-10-06/biura_1.jpg', '', 'oferta', 4, ''),
(169, '2020-10-06 12:17:15', '2020-10-06/biura_naglowek.jpg', '', 'oferta', 4, ''),
(170, '2020-10-06 12:17:30', '2020-10-06/biura2.jpg', '', 'oferta', 4, ''),
(171, '2020-10-06 12:19:07', '2020-10-06/biura3.jpg', '', 'oferta', 4, ''),
(172, '2020-10-06 12:25:43', '2020-10-06/oferta_meble_kuchenne_1.jpeg', '', 'oferta', 2, ''),
(173, '2020-10-06 12:26:11', '2020-10-06/oferta_meble_kuchenne_2.jpg', '', 'oferta', 2, ''),
(174, '2020-10-06 12:27:03', '2020-10-06/oferta_meble_kuchenne_3.jpg', '', 'oferta', 2, ''),
(175, '2020-10-06 12:27:40', '2020-10-06/oferta-szafy_zdj_glowne.jpg', '', 'oferta', 1, ''),
(176, '2020-10-09 06:54:13', '2020-10-09/inne1.jpg', '', 'wycena', 8, ''),
(177, '2020-10-09 06:54:56', '2020-10-09/inne2.jpg', '', 'wycena', 8, ''),
(178, '2020-10-09 06:55:35', '2020-10-09/wycena_inne_3.jpg', '', 'wycena', 8, ''),
(179, '2020-10-09 06:55:48', '2020-10-09/wycena_inne_naglowek.jpg', '', 'wycena', 8, ''),
(180, '2020-10-09 06:58:59', '2020-10-09/wycena_szafy_zdj_1.jpg', '', 'wycena', 2, ''),
(181, '2020-10-09 06:59:09', '2020-10-09/wycena_szafy_zdj_2.jpg', '', 'wycena', 2, ''),
(182, '2020-10-09 06:59:25', '2020-10-09/wycena_szafy_zdj_3.jpg', '', 'wycena', 2, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gallery_page`
--

CREATE TABLE `gallery_page` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gallery_page`
--

INSERT INTO `gallery_page` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`) VALUES
(1, '2020-09-21 11:51:33', 'biala_duza_kuchnia_nowoczesna_lakier_mat_matowa_z_wyspa_zielona_blat_debowy_meble_kuchenne_na_wymiar_zamowienie_wroclaw', NULL, NULL, '2020-09-21/BIALA_~11.JPG', '', NULL, NULL, NULL, '', ''),
(2, '2020-09-21 11:55:18', 'KU4F80-1', NULL, NULL, '2020-09-21/KU4F80-11.JPG', '', NULL, NULL, NULL, '', ''),
(3, '2020-09-21 11:57:46', 'kuchnia_klasyczna_skandynawska_drewniana_debowa_biala_tloczona_frezowana_w_ramke_z_witryna_zabudowa_U_styl_skandynawski_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', NULL, NULL, '2020-09-21/kuchni~1.jpe', '', NULL, NULL, NULL, '', ''),
(4, '2020-09-21 11:58:59', 'kuchnia_L_prosta_nowoczesna_dab_corbridge_plyta_laminowana_biala_lakier_polysk_uchwyty_krawedziowe_czarne_barek_blat_laminowany_marmur_czarny_hpl_meble_kuchenne_na_raty_wymiar_w', NULL, NULL, '2020-09-21/KUCHNI~15.JPG', '', NULL, NULL, NULL, '', ''),
(5, '2020-09-21 12:00:45', 'kuchnia_modna_nowoczesna_stylizowana_klasyczna_biala_matowa_szara_bialy_mat_szare_fronty_tloczone_frezowane_frez_ramka_drewniane_uchwyty_meble_kuchenne_na_wymiar_zamowienie_kuch', NULL, NULL, '2020-09-21/kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2020-09-21 12:01:53', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wr', NULL, NULL, '2020-09-21/KUCHNI~14.JPG', '', NULL, NULL, NULL, '', ''),
(7, '2020-09-21 13:14:00', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wr', NULL, NULL, '2020-09-21/KUCHNI~26.JPG', '', NULL, NULL, NULL, '', ''),
(8, '2020-09-21 13:15:53', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', NULL, NULL, '2020-09-21/kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw1.jpeg', '', NULL, NULL, NULL, '', ''),
(9, '2020-09-21 13:18:11', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_na_raty_wrocla', NULL, NULL, '2020-09-21/KUCHNI~25.JPG', '', NULL, NULL, NULL, '', ''),
(10, '2020-09-21 13:20:18', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw', NULL, NULL, '2020-09-21/KUCHNI~24.JPG', '', NULL, NULL, NULL, '', ''),
(11, '2020-09-21 13:21:42', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw', NULL, NULL, '2020-09-21/LOZKO_~31.JPG', '', NULL, NULL, NULL, '', ''),
(12, '2020-09-21 13:23:44', 'meble_biurowe_na_wymiar_zamowienie_wroclaw_', NULL, NULL, '2020-09-21/biuro_21.JPG', '', NULL, NULL, NULL, '', ''),
(13, '2020-09-21 13:26:06', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka', NULL, NULL, '2020-09-21/MEBLE_~21.JPG', '', NULL, NULL, NULL, '', ''),
(14, '2020-09-21 13:28:26', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna', NULL, NULL, '2020-09-21/asd.jpg', '', NULL, NULL, NULL, '', ''),
(15, '2020-09-21 13:33:01', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalist', NULL, NULL, '2020-09-21/MEBLE_~31.JPG', '', NULL, NULL, NULL, '', ''),
(16, '2020-09-21 13:34:15', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_skorzane_uchwyty_na_wymiar_zamowienie_raty_wroclaw', NULL, NULL, '2020-09-21/MEBLE_~12.JPG', '', NULL, NULL, NULL, '', ''),
(17, '2020-09-21 13:41:14', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_r', NULL, NULL, '2020-09-21/MEBLE_~11.JPG', '', NULL, NULL, NULL, '', ''),
(18, '2020-09-21 13:43:17', 'szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw', NULL, NULL, '2020-09-21/SZAFA_~13.JPG', '', NULL, NULL, NULL, '', ''),
(19, '2020-09-21 13:44:28', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw', NULL, NULL, '2020-09-21/SZAFA_~12.JPG', '', NULL, NULL, NULL, '', ''),
(20, '2020-09-21 13:45:47', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw', NULL, NULL, '2020-09-21/SZAFA_~22.JPG', '', NULL, NULL, NULL, '', ''),
(21, '2020-09-21 13:47:23', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw', NULL, NULL, '2020-09-21/SZAFA_~11.JPG', '', NULL, NULL, NULL, '', ''),
(22, '2020-09-21 13:48:42', 'szafa_przesuwna_wnekowa_pod_skosem_skosna_z_plyty_lakier_mat_matowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw', NULL, NULL, '2020-09-21/SZAFA_~21.JPG', '', NULL, NULL, NULL, '', ''),
(23, '2020-09-21 13:50:49', 'szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw', NULL, NULL, '2020-09-21/SZAFKA~21.JPG', '', NULL, NULL, NULL, '', ''),
(24, '2020-09-21 13:52:21', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_rat', NULL, NULL, '2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', '', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `answer` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL,
  `phone` text COLLATE utf8_polish_ci NOT NULL,
  `subject` text COLLATE utf8_polish_ci NOT NULL,
  `message` text COLLATE utf8_polish_ci NOT NULL,
  `attachment` text COLLATE utf8_polish_ci NOT NULL,
  `rodo1` int(11) NOT NULL,
  `rodo2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `mails`
--

INSERT INTO `mails` (`id`, `created`, `answer`, `name`, `email`, `phone`, `subject`, `message`, `attachment`, `rodo1`, `rodo2`) VALUES
(1, '2019-11-06 11:30:28', 0, 'FSDF', 'FSDF@FDSF', '123123', 'Formularz kontaktowy - FSDF', 'GDFGDF', '', 0, 1),
(2, '2019-11-06 11:40:44', 0, 'fsddsffds', 'fdssfd@fdssdf', '123123', 'Formularz kontaktowy - fsddsffds', 'dfgdfgdfg', '', 0, 0),
(3, '2019-11-06 11:42:41', 0, 'fsdfsdfs', 'fdsfds@fdsfs', '123123', 'Formularz kontaktowy - fsdfsdfs', 'dfgdfgf', '', 0, 0),
(4, '2019-11-06 11:44:19', 0, 'fsdfsd', 'fdsf@fsdfs', '1231', 'Formularz kontaktowy - fsdfsd', 'fsd', '', 0, 0),
(5, '2019-11-06 11:44:54', 0, 'Dawid Płóciennik', 'dasda@sdf', 'dsasd', 'Formularz kontaktowy - Dawid Płóciennik', 'sdf', '', 0, 0),
(6, '2020-09-22 08:40:41', 0, 'asd asd', 'asd@o2.pl', 'asd', 'Formularz kontaktowy - asd asd', 'asd', '', 1, 1),
(7, '2020-10-01 08:59:45', 0, 'asd asd', 'asd@o2.pl', 'asd', 'Formularz kontaktowy - asd asd', 'asd', '', 1, 1),
(8, '2020-10-29 21:24:06', 0, 'asdadadas', 'abc@def.com', '656565656', 'Formularz kontaktowy - asdadadas', 'jgjhgjgjgjg', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `raw_name` text COLLATE utf8_polish_ci NOT NULL,
  `type` text COLLATE utf8_polish_ci NOT NULL,
  `size` float NOT NULL,
  `full_path` text COLLATE utf8_polish_ci NOT NULL,
  `file_path` text COLLATE utf8_polish_ci NOT NULL,
  `is_photo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `media`
--

INSERT INTO `media` (`id`, `created`, `name`, `raw_name`, `type`, `size`, `full_path`, `file_path`, `is_photo`) VALUES
(1, '2019-11-01 16:34:45', '1.png', '1', 'image/png', 446.4, 'C:/laragon/www/template_6/uploads/2019-11-01/1.png', 'C:/laragon/www/template_6/uploads/2019-11-01/', 1),
(2, '2019-11-02 08:30:31', 'slider_photo1.jpg', 'slider_photo1', 'image/jpeg', 737.85, 'C:/laragon/www/template_6/uploads/2019-11-02/slider_photo1.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(3, '2019-11-02 08:32:45', 'slider_photo2.jpg', 'slider_photo2', 'image/jpeg', 1594.52, 'C:/laragon/www/template_6/uploads/2019-11-02/slider_photo2.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(4, '2019-11-02 08:33:09', 'slider_photo3.jpg', 'slider_photo3', 'image/jpeg', 1130.24, 'C:/laragon/www/template_6/uploads/2019-11-02/slider_photo3.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(5, '2019-11-02 08:33:16', 'slider_photo31.jpg', 'slider_photo31', 'image/jpeg', 1130.24, 'C:/laragon/www/template_6/uploads/2019-11-02/slider_photo31.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(6, '2019-11-02 08:33:21', 'slider_photo32.jpg', 'slider_photo32', 'image/jpeg', 1130.24, 'C:/laragon/www/template_6/uploads/2019-11-02/slider_photo32.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(7, '2019-11-02 08:45:03', 'data.png', 'data', 'image/png', 2.31, 'C:/laragon/www/template_6/uploads/2019-11-02/data.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(8, '2019-11-02 08:45:47', 'corporate.png', 'corporate', 'image/png', 1.3, 'C:/laragon/www/template_6/uploads/2019-11-02/corporate.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(9, '2019-11-02 08:47:41', 'web-programming.png', 'web-programming', 'image/png', 1.72, 'C:/laragon/www/template_6/uploads/2019-11-02/web-programming.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(10, '2019-11-02 08:54:29', 'bg-image-1.jpg', 'bg-image-1', 'image/jpeg', 1461.81, 'C:/laragon/www/template_6/uploads/2019-11-02/bg-image-1.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(11, '2019-11-02 08:54:36', 'bg-image-11.jpg', 'bg-image-11', 'image/jpeg', 1461.81, 'C:/laragon/www/template_6/uploads/2019-11-02/bg-image-11.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(12, '2019-11-02 09:01:37', 'typography.png', 'typography', 'image/png', 1.24, 'C:/laragon/www/template_6/uploads/2019-11-02/typography.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(13, '2019-11-02 09:03:30', 'cash-register.png', 'cash-register', 'image/png', 2.06, 'C:/laragon/www/template_6/uploads/2019-11-02/cash-register.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(14, '2019-11-02 09:06:09', 'management.png', 'management', 'image/png', 2.58, 'C:/laragon/www/template_6/uploads/2019-11-02/management.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(15, '2019-11-02 09:24:07', 'home-business.png', 'home-business', 'image/png', 71.4, 'C:/laragon/www/template_6/uploads/2019-11-02/home-business.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(16, '2019-11-02 09:35:09', 'startup.png', 'startup', 'image/png', 2.51, 'C:/laragon/www/template_6/uploads/2019-11-02/startup.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(17, '2019-11-02 09:38:33', 'equalizer.png', 'equalizer', 'image/png', 1.37, 'C:/laragon/www/template_6/uploads/2019-11-02/equalizer.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(18, '2019-11-02 09:40:51', 'arrow-down.png', 'arrow-down', 'image/png', 0.79, 'C:/laragon/www/template_6/uploads/2019-11-02/arrow-down.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(19, '2019-11-02 10:05:14', 'project_photo1.jpg', 'project_photo1', 'image/jpeg', 6.1, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo1.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(20, '2019-11-02 10:05:16', 'project_photo2.jpg', 'project_photo2', 'image/jpeg', 85.04, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo2.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(21, '2019-11-02 10:05:22', 'project_photo6.jpg', 'project_photo6', 'image/jpeg', 105.84, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo6.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(22, '2019-11-02 10:05:29', 'project_photo7.jpg', 'project_photo7', 'image/jpeg', 60.93, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo7.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(23, '2019-11-02 10:05:35', 'project_photo8.jpg', 'project_photo8', 'image/jpeg', 238.7, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo8.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(24, '2019-11-02 10:11:57', 'project_photo3.jpg', 'project_photo3', 'image/jpeg', 23.65, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo3.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(25, '2019-11-02 10:11:59', 'project_photo4.jpg', 'project_photo4', 'image/jpeg', 184.92, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo4.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(26, '2019-11-02 10:12:07', 'project_photo5.jpg', 'project_photo5', 'image/jpeg', 14.37, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo5.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(27, '2019-11-02 10:12:09', 'project_photo9.jpg', 'project_photo9', 'image/jpeg', 72.33, 'C:/laragon/www/template_6/uploads/2019-11-02/project_photo9.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(28, '2019-11-02 10:44:11', 'coffee.png', 'coffee', 'image/png', 1.45, 'C:/laragon/www/template_6/uploads/2019-11-02/coffee.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(29, '2019-11-02 10:46:37', '3d.png', '3d', 'image/png', 1.12, 'C:/laragon/www/template_6/uploads/2019-11-02/3d.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(30, '2019-11-02 10:49:40', 'brackets.png', 'brackets', 'image/png', 0.6, 'C:/laragon/www/template_6/uploads/2019-11-02/brackets.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(31, '2019-11-02 10:51:53', 'mustache-and-glasses-hand-drawn-outlines.png', 'mustache-and-glasses-hand-drawn-outlines', 'image/png', 1.72, 'C:/laragon/www/template_6/uploads/2019-11-02/mustache-and-glasses-hand-drawn-outlines.png', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(32, '2019-11-02 11:17:03', 'team1.jpg', 'team1', 'image/jpeg', 16.92, 'C:/laragon/www/template_6/uploads/2019-11-02/team1.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(33, '2019-11-02 11:18:13', 'team2.jpg', 'team2', 'image/jpeg', 34.47, 'C:/laragon/www/template_6/uploads/2019-11-02/team2.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(34, '2019-11-02 11:18:48', 'team3.jpg', 'team3', 'image/jpeg', 10.41, 'C:/laragon/www/template_6/uploads/2019-11-02/team3.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(35, '2019-11-02 11:42:04', 'opinion-1.jpg', 'opinion-1', 'image/jpeg', 3.48, 'C:/laragon/www/template_6/uploads/2019-11-02/opinion-1.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(36, '2019-11-02 11:42:57', 'opinion-2.jpg', 'opinion-2', 'image/jpeg', 4.07, 'C:/laragon/www/template_6/uploads/2019-11-02/opinion-2.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(37, '2019-11-02 11:43:51', 'opinion-3.jpg', 'opinion-3', 'image/jpeg', 5.93, 'C:/laragon/www/template_6/uploads/2019-11-02/opinion-3.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(38, '2019-11-02 19:37:20', 'post_photo1.jpg', 'post_photo1', 'image/jpeg', 95.99, 'C:/laragon/www/template_6/uploads/2019-11-02/post_photo1.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(39, '2019-11-02 19:40:13', 'post_photo2.jpg', 'post_photo2', 'image/jpeg', 72, 'C:/laragon/www/template_6/uploads/2019-11-02/post_photo2.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(40, '2019-11-02 20:15:42', 'post_photo3.jpg', 'post_photo3', 'image/jpeg', 43.05, 'C:/laragon/www/template_6/uploads/2019-11-02/post_photo3.jpg', 'C:/laragon/www/template_6/uploads/2019-11-02/', 1),
(45, '2019-11-05 21:18:40', '2469482.jpg', '2469482', 'image/jpeg', 688.02, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/2469482.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(46, '2019-11-05 21:22:25', '604977-PN6LR9-697.jpg', '604977-PN6LR9-697', 'image/jpeg', 679.89, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/604977-PN6LR9-697.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(47, '2019-11-05 21:24:42', '511.jpg', '511', 'image/jpeg', 414.41, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/511.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(48, '2019-11-05 21:29:11', 'couch.png', 'couch', 'image/png', 1.48, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/couch.png', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(49, '2019-11-05 21:32:54', 'side-table.png', 'side-table', 'image/png', 1.26, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/side-table.png', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(50, '2019-11-05 21:36:26', 'kitchen.png', 'kitchen', 'image/png', 1.65, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/kitchen.png', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(51, '2019-11-05 21:45:28', '2023.jpg', '2023', 'image/jpeg', 765.25, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/2023.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(52, '2019-11-05 21:55:26', '7170.jpg', '7170', 'image/jpeg', 229.1, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/7170.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(53, '2019-11-05 22:13:48', '8.jpg', '8', 'image/jpeg', 295.08, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/8.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(54, '2019-11-05 22:13:55', '19.jpg', '19', 'image/jpeg', 331.48, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/19.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(55, '2019-11-05 22:13:59', '357.jpg', '357', 'image/jpeg', 400.13, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/357.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(56, '2019-11-05 22:14:03', '513.jpg', '513', 'image/jpeg', 444.16, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/513.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(57, '2019-11-05 22:14:07', '531.jpg', '531', 'image/jpeg', 427.58, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/531.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(58, '2019-11-05 22:14:10', '535.jpg', '535', 'image/jpeg', 441, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/535.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(59, '2019-11-05 22:14:14', '563566-pl2j8p-65.jpg', '563566-pl2j8p-65', 'image/jpeg', 515.65, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/563566-pl2j8p-65.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(60, '2019-11-05 22:14:18', '2373217.jpg', '2373217', 'image/jpeg', 272.9, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/2373217.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(61, '2019-11-05 22:14:21', '2882619.jpg', '2882619', 'image/jpeg', 440.77, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/2882619.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-05/', 1),
(62, '2019-11-06 07:24:27', 'delivery-truck.png', 'delivery-truck', 'image/png', 1.75, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/delivery-truck.png', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(69, '2019-11-06 07:38:37', '209591.jpg', '209591', 'image/jpeg', 307.94, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/209591.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(70, '2019-11-06 07:45:06', '8217.jpg', '8217', 'image/jpeg', 381.16, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/8217.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(71, '2019-11-06 07:45:23', '644347-poo54g-476.jpg', '644347-poo54g-476', 'image/jpeg', 635.64, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/644347-poo54g-476.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(72, '2019-11-06 07:45:44', '12369.jpg', '12369', 'image/jpeg', 477.06, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/12369.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(73, '2019-11-06 07:48:27', '38711.jpg', '38711', 'image/jpeg', 255.58, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/38711.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(74, '2019-11-06 07:53:45', '3439.jpg', '3439', 'image/jpeg', 282.63, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/3439.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(75, '2019-11-06 07:53:47', '3445.jpg', '3445', 'image/jpeg', 392.89, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/3445.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(76, '2019-11-06 07:53:50', '2540799.jpg', '2540799', 'image/jpeg', 459.05, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/2540799.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(77, '2019-11-06 08:01:28', 'OIH9JQ0.jpg', 'OIH9JQ0', 'image/jpeg', 423.95, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/OIH9JQ0.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(78, '2019-11-06 08:01:45', '15.jpg', '15', 'image/jpeg', 174.05, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/15.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(79, '2019-11-06 08:01:48', '3663.jpg', '3663', 'image/jpeg', 229.69, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/3663.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(80, '2019-11-06 08:01:51', '12973.jpg', '12973', 'image/jpeg', 272.55, '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/12973.jpg', '/home/users/przedprojektcom/public_html/szablony.przedprojekt.com/szablon_6/uploads/2019-11-06/', 1),
(81, '2020-09-04 07:16:24', 'polityka-strona.pdf', 'polityka-strona', 'application/octet-stream', 767.98, 'C:/xampp/htdocs/szablony/szablon_6/uploads/2020-09-04/polityka-strona.pdf', 'C:/xampp/htdocs/szablony/szablon_6/uploads/2020-09-04/', 0),
(82, '2020-09-21 09:36:26', 'logo_przeeezroczystwe.png', 'logo_przeeezroczystwe', 'image/png', 96.55, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/logo_przeeezroczystwe.png', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(83, '2020-09-21 09:38:19', 'polityka-miks-meble.pdf', 'polityka-miks-meble', 'application/octet-stream', 768.09, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/polityka-miks-meble.pdf', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 0),
(84, '2020-09-21 09:54:05', 'biala_~1.jpg', 'biala_~1', 'image/jpeg', 420.23, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biala_~1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(85, '2020-09-21 09:54:13', 'biala_~2.jpg', 'biala_~2', 'image/jpeg', 400.65, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biala_~2.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(86, '2020-09-21 09:54:22', 'biala_~3.jpg', 'biala_~3', 'image/jpeg', 400.82, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biala_~3.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(87, '2020-09-21 09:54:30', 'biala_~4.jpg', 'biala_~4', 'image/jpeg', 462.08, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biala_~4.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(88, '2020-09-21 09:54:38', 'biala_kuchnia_fronty_frezowane_mat_bialy_lakier.jpg', 'biala_kuchnia_fronty_frezowane_mat_bialy_lakier', 'image/jpeg', 430.61, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biala_kuchnia_fronty_frezowane_mat_bialy_lakier.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(89, '2020-09-21 09:54:46', 'bi56d7~1.jpg', 'bi56d7~1', 'image/jpeg', 390.5, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/bi56d7~1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(90, '2020-09-21 09:55:32', 'ku4f80-1.jpg', 'ku4f80-1', 'image/jpeg', 728.67, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/ku4f80-1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(91, '2020-09-21 09:55:47', 'kuchni-1.jpg', 'kuchni-1', 'image/jpeg', 2668.59, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni-1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(92, '2020-09-21 09:56:08', 'kuchni-2.jpg', 'kuchni-2', 'image/jpeg', 766.77, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni-2.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(93, '2020-09-21 09:56:36', 'kuchni-3.jpg', 'kuchni-3', 'image/jpeg', 489.6, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni-3.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(94, '2020-09-21 09:57:01', 'kuchni-4.jpg', 'kuchni-4', 'image/jpeg', 675.61, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni-4.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(95, '2020-09-21 09:58:07', 'kuchni-3.jpe', 'kuchni-3', 'image/jpeg', 107.61, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni-3.jpe', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(96, '2020-09-21 09:58:13', 'kuchni~1.jpe', 'kuchni~1', 'image/jpeg', 81.07, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~1.jpe', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(97, '2020-09-21 09:58:18', 'kuchni~2.jpe', 'kuchni~2', 'image/jpeg', 124.5, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~2.jpe', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(98, '2020-09-21 09:58:24', 'kuchni~3.jpe', 'kuchni~3', 'image/jpeg', 106.52, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~3.jpe', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(99, '2020-09-21 09:58:29', 'kuchni~4.jpe', 'kuchni~4', 'image/jpeg', 91.71, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~4.jpe', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(100, '2020-09-21 09:58:35', 'ku87b9~1.jpe', 'ku87b9~1', 'image/jpeg', 110.42, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/ku87b9~1.jpe', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(101, '2020-09-21 09:59:14', 'kuchni~1.jpg', 'kuchni~1', 'image/jpeg', 1421.06, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(102, '2020-09-21 09:59:34', 'kuchni~2.jpg', 'kuchni~2', 'image/jpeg', 1182.13, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~2.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(103, '2020-09-21 09:59:53', 'kuchni~3.jpg', 'kuchni~3', 'image/jpeg', 1323.99, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~3.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(104, '2020-09-21 10:00:12', 'prosta~1.jpg', 'prosta~1', 'image/jpeg', 917.45, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/prosta~1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(105, '2020-09-21 10:00:58', 'kuchni~11.jpg', 'kuchni~11', 'image/jpeg', 4894.33, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~11.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(106, '2020-09-21 10:01:18', 'kuchni~21.jpg', 'kuchni~21', 'image/jpeg', 4546.89, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~21.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(107, '2020-09-21 10:02:10', 'kuchni~12.jpg', 'kuchni~12', 'image/jpeg', 1056.68, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~12.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(108, '2020-09-21 10:02:30', 'kuchni~22.jpg', 'kuchni~22', 'image/jpeg', 1157.97, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~22.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(109, '2020-09-21 10:02:49', 'kuchni~31.jpg', 'kuchni~31', 'image/jpeg', 978.75, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~31.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(110, '2020-09-21 10:03:09', 'kuchni~41.jpg', 'kuchni~41', 'image/jpeg', 866.9, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~41.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(111, '2020-09-21 10:03:48', 'kuc00f~1.jpg', 'kuc00f~1', 'image/jpeg', 922.35, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuc00f~1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(112, '2020-09-21 10:04:04', 'ku6310~1.jpg', 'ku6310~1', 'image/jpeg', 1225.47, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/ku6310~1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(113, '2020-09-21 10:09:01', 'kuchni~13.jpg', 'kuchni~13', 'image/jpeg', 4894.33, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~13.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(114, '2020-09-21 10:09:22', 'kuchni~23.jpg', 'kuchni~23', 'image/jpeg', 4546.89, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~23.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(115, '2020-09-21 11:03:42', 'kuchni~42.jpg', 'kuchni~42', 'image/jpeg', 380.74, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~42.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(116, '2020-09-21 11:04:22', 'kuchni~32.jpg', 'kuchni~32', 'image/jpeg', 423.7, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchni~32.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(117, '2020-09-21 11:07:02', 'kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg', 'kuchnia-modna-nowoczesna-stylizowana-klasyczna', 'image/jpeg', 423.7, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(118, '2020-09-21 11:07:15', 'kuchnia-modna-nowoczesna-stylizowana-klasyczna2.jpg', 'kuchnia-modna-nowoczesna-stylizowana-klasyczna2', 'image/jpeg', 380.74, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia-modna-nowoczesna-stylizowana-klasyczna2.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(119, '2020-09-21 11:09:27', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 291.34, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(120, '2020-09-21 11:09:37', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 312.1, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(121, '2020-09-21 11:09:47', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-', 'image/jpeg', 259.96, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(122, '2020-09-21 11:09:57', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-', 'image/jpeg', 261.43, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(123, '2020-09-21 11:10:06', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-', 'image/jpeg', 263.75, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(124, '2020-09-21 11:10:15', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-6-.jpg', 'kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-6-', 'image/jpeg', 338.43, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__lakierowana_mat_granatowa_z_drewnem_plyta_laminowana_okap_tuba_konstrukcja_metal_metaloplastyka_blat_bialy_marmur_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-6-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(125, '2020-09-21 11:14:17', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 477.43, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(126, '2020-09-21 11:14:25', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 649.09, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(127, '2020-09-21 11:14:34', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-', 'image/jpeg', 435.3, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(128, '2020-09-21 11:14:41', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-', 'image/jpeg', 494.95, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(129, '2020-09-21 11:14:49', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', 'kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-', 'image/jpeg', 489.12, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna__prosta_waska_dab_halifax_biala_lakier_polysk_drewno_uchwyty_czarne_krawedziowe_blat_czarny_laminowany_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(130, '2020-09-21 11:16:06', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 714.55, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(131, '2020-09-21 11:16:41', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 985.89, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(132, '2020-09-21 11:17:08', 'kuchnia_waska_stolik_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', 'kuchnia_waska_stolik_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 457.26, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_waska_stolik_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_blat_laminat_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpeg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(133, '2020-09-21 11:19:11', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_na_raty_wroclaw.jpg', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_na_raty_wroclaw', 'image/jpeg', 200.05, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_na_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(134, '2020-09-21 11:19:16', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wrocla_-3-.jpg', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wrocla_-3-', 'image/jpeg', 214.05, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wrocla_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(135, '2020-09-21 11:19:22', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 243.7, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(136, '2020-09-21 11:19:28', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw-2-.jpg', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw-2-', 'image/jpeg', 234.95, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(137, '2020-09-21 11:19:34', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty', 'image/jpeg', 231.43, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(138, '2020-09-21 11:20:59', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw.jpg', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 97.4, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(139, '2020-09-21 11:21:01', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-2-', 'image/jpeg', 93.57, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(140, '2020-09-21 11:21:04', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-3-.jpg', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-3-', 'image/jpeg', 67.71, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(141, '2020-09-21 11:21:06', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-4-.jpg', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-4-', 'image/jpeg', 63.89, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-4-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(142, '2020-09-21 11:21:08', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-5-.jpg', 'kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-5-', 'image/jpeg', 94.74, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_waska_z_wyspa_niebieska_lakier_polysk_dab_acona_beton_bialy_witryna_meble_kuchenne_na_zamowienie_wymiar_raty_wroclaw_-5-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(143, '2020-09-21 11:22:37', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw.jpg', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw', 'image/jpeg', 429.4, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(144, '2020-09-21 11:22:49', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-3-.jpg', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-3-', 'image/jpeg', 545.46, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(145, '2020-09-21 11:23:03', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-4-.jpg', 'lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-4-', 'image/jpeg', 423.21, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/lozko_na_zamowienie_sypialnia_glamour_szafa_lustrzana_przesuwna_z_drzwiami_czarne_szprosy_meble_sypialniane_biale_lakier_polysk_kobiece_z_garderoba_na_wymiar_raty_wroclaw_-4-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(146, '2020-09-21 11:24:17', 'biuro_1.jpg', 'biuro_1', 'image/jpeg', 391.17, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biuro_1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(147, '2020-09-21 11:24:28', 'biuro_2.jpg', 'biuro_2', 'image/jpeg', 316.81, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biuro_2.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(148, '2020-09-21 11:24:39', 'biuro_3.jpg', 'biuro_3', 'image/jpeg', 344.67, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biuro_3.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(149, '2020-09-21 11:25:01', 'meble_biurowe_na_wymiar_zamowienie_wroclaw_.jpg', 'meble_biurowe_na_wymiar_zamowienie_wroclaw_', 'image/jpeg', 267.64, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_biurowe_na_wymiar_zamowienie_wroclaw_.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(150, '2020-09-21 11:27:09', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka', 'image/jpeg', 317.29, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(151, '2020-09-21 11:27:19', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-', 'image/jpeg', 319.63, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(152, '2020-09-21 11:27:30', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-3-.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-3-', 'image/jpeg', 311.78, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(153, '2020-09-21 11:27:40', 'zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka.jpg', 'zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka', 'image/jpeg', 269.56, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(154, '2020-09-21 11:27:49', 'zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-.jpg', 'zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-', 'image/jpeg', 277.9, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/zabudowa_lozka_meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakier__szara_z_drewnem_mebloscianka_komplet_nowoczesna_regal_na_ksiazki_biblioteka_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(155, '2020-09-21 11:29:15', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna', 'image/jpeg', 175.62, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(156, '2020-09-21 11:29:21', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-', 'image/jpeg', 151.7, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(157, '2020-09-21 11:29:26', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-3-.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-3-', 'image/jpeg', 103.51, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(158, '2020-09-21 11:33:16', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna.jpg', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna', 'image/jpeg', 128.4, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1);
INSERT INTO `media` (`id`, `created`, `name`, `raw_name`, `type`, `size`, `full_path`, `file_path`, `is_photo`) VALUES
(159, '2020-09-21 11:33:20', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-2-.jpg', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-2-', 'image/jpeg', 109.91, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(160, '2020-09-21 11:33:24', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-3-.jpg', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-3-', 'image/jpeg', 118.16, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(161, '2020-09-21 11:33:28', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-4-.jpg', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-4-', 'image/jpeg', 130.74, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-4-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(162, '2020-09-21 11:33:32', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-5-.jpg', 'meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-5-', 'image/jpeg', 67.02, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-5-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(163, '2020-09-21 11:40:19', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_skorzane_uchwyty_na_wymiar_zamowienie_raty_wroclaw.jpg', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_skorzane_uchwyty_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 97.8, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_skorzane_uchwyty_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(164, '2020-09-21 11:40:23', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 108.96, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(165, '2020-09-21 11:40:27', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-3-', 'image/jpeg', 93.66, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(166, '2020-09-21 11:40:30', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', 'meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-5-', 'image/jpeg', 123.69, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_komoda_uchwyty_skorzane_na_wymiar_zamowienie_raty_wroclaw_-5-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(167, '2020-09-21 11:40:34', 'uchwyty_skorzane_skandynawskie_komoda_meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', 'uchwyty_skorzane_skandynawskie_komoda_meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_na_wymiar_zamowienie_raty_wroclaw_-4-', 'image/jpeg', 47.59, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/uchwyty_skorzane_skandynawskie_komoda_meble_na_przedpokoj_szafka_na_buty_biala_z_drewnem_siedzisko_pufa_na_wymiar_zamowienie_raty_wroclaw_-4-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(168, '2020-09-21 11:42:48', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wroclaw.jpg', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wroclaw', 'image/jpeg', 146.61, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(169, '2020-09-21 11:42:50', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_ratywroclaw.jpg', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_ratywroclaw', 'image/jpeg', 113.9, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_ratywroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(170, '2020-09-21 11:42:52', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_z_lustrem_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wrocl.jpg', 'meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_z_lustrem_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wrocl', 'image/jpeg', 170.01, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/meble_na_przedpokoj_zabudowa_sciany_szafa_wnekowa_z_lustrem_otwierana_czarno_biala_lakierowana_polysk_glamour_nowoczesna_z_siedziskiem_pufa_uchwyty_krysztal_na_wymiar_wroclaw_zamowienie_raty_wrocl.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(171, '2020-09-21 11:43:52', 'szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 150, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(172, '2020-09-21 11:43:58', 'szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw_-2-', 'image/jpeg', 190.98, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_lustrzana_klasyczna_otwierana_z_czarnymi_szprosami_nowoczesna_modna_z_lustrem_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(173, '2020-09-21 11:44:55', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 381.83, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(174, '2020-09-21 11:45:02', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-2-', 'image/jpeg', 477.48, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(175, '2020-09-21 11:45:10', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-3-.jpg', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-3-', 'image/jpeg', 369.71, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(176, '2020-09-21 11:46:40', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 66.38, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(177, '2020-09-21 11:46:43', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_-2-', 'image/jpeg', 65.23, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(178, '2020-09-21 11:46:47', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_uchwyty_czarne_modne.jpg', 'szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_uchwyty_czarne_modne', 'image/jpeg', 51.01, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_matowa_szara_z_uchwytami_klasyczna_zabudowa_sciany_szafa_wnekowa_lakier_mat_meble_na_zamowienie_wymiar_raty_wroclaw_uchwyty_czarne_modne.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(179, '2020-09-21 11:47:48', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 542.06, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(180, '2020-09-21 11:47:56', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 462.23, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(181, '2020-09-21 11:48:04', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-3-', 'image/jpeg', 578.06, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_lustrzana_z_lustrem_drzwiami_przesuwnymi_brazowa_dab_halifax_czarne_szprosy_ramka_meble_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(182, '2020-09-21 11:49:19', 'szafa_przesuwna_wnekowa_pod_skosem_skosna_z_plyty_lakier_mat_matowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw.jpg', 'szafa_przesuwna_wnekowa_pod_skosem_skosna_z_plyty_lakier_mat_matowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 49.17, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_wnekowa_pod_skosem_skosna_z_plyty_lakier_mat_matowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(183, '2020-09-21 11:49:21', 'szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw.jpg', 'szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 33.69, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(184, '2020-09-21 11:49:23', 'szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 1174.24, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_wnekowa_z_lustrem_lustrzana_z_czarnymi_okuciami_szprosami_nowoczesna_meble_szafy_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(185, '2020-09-21 11:49:57', 'szafa_przesuwna_wnekowa_z_plyty_drewno_z_materialem_pikowanym_pikowaniem_obiciem_czarne_szprosy_okucia_meble_na_wymiar_zamowienie_wroclaw_na_raty.jpg', 'szafa_przesuwna_wnekowa_z_plyty_drewno_z_materialem_pikowanym_pikowaniem_obiciem_czarne_szprosy_okucia_meble_na_wymiar_zamowienie_wroclaw_na_raty', 'image/jpeg', 29.29, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_przesuwna_wnekowa_z_plyty_drewno_z_materialem_pikowanym_pikowaniem_obiciem_czarne_szprosy_okucia_meble_na_wymiar_zamowienie_wroclaw_na_raty.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(186, '2020-09-21 11:49:59', 'szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw.jpg', 'szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 43.51, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(187, '2020-09-21 11:50:01', 'szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw_-2-', 'image/jpeg', 152.64, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_wnekowa_przesuwna_z_fototapeta_na_zamowienie_wymiar_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(188, '2020-09-21 11:50:05', 'szafa_wnekowa_przesuwna_z_szyba_mleczna_dab_hamilton_na_zamowienie_wymiar_raty_wroclaw.jpg', 'szafa_wnekowa_przesuwna_z_szyba_mleczna_dab_hamilton_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 336.68, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafa_wnekowa_przesuwna_z_szyba_mleczna_dab_hamilton_na_zamowienie_wymiar_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(189, '2020-09-21 11:51:37', 'szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', 'szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 285.33, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(190, '2020-09-21 11:51:43', 'szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 281.99, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_orzech_burgundia_brazowa_blat_laminowany_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(191, '2020-09-21 11:51:49', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-', 'image/jpeg', 128.04, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(192, '2020-09-21 11:53:00', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw', 'image/jpeg', 137.36, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(193, '2020-09-21 11:53:05', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-1.jpg', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-1', 'image/jpeg', 128.04, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-2-1.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(194, '2020-09-21 11:53:10', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-3-', 'image/jpeg', 158.93, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/szafka_lazienkowa_pod_umywalke_umywalkowa_wiszaca_brazowa_blat_laminowany_szafka_wiszaca_lustrzana_lustro_do_lazienki_zabudowa_piec_geberit_nad_wc_meble_na_wymiar_zamowienie_raty_wroclaw_-3-.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(195, '2020-09-21 11:56:07', 'SZAFKA~31.JPG', 'SZAFKA~31', 'image/jpeg', 137.36, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFKA~31.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(196, '2020-09-21 11:56:43', 'SZAFKA~21.JPG', 'SZAFKA~21', 'image/jpeg', 281.99, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFKA~21.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(197, '2020-09-21 11:57:13', 'SZAFA_~21.JPG', 'SZAFA_~21', 'image/jpeg', 49.17, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFA_~21.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(198, '2020-09-21 12:12:05', 'SZAFA_~11.JPG', 'SZAFA_~11', 'image/jpeg', 542.06, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFA_~11.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(199, '2020-09-21 12:12:36', 'SZAFA_~22.JPG', 'SZAFA_~22', 'image/jpeg', 66.38, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFA_~22.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(200, '2020-09-21 12:14:06', 'SZAFA_~12.JPG', 'SZAFA_~12', 'image/jpeg', 381.83, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFA_~12.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(201, '2020-09-21 12:15:14', 'SZAFA_~13.JPG', 'SZAFA_~13', 'image/jpeg', 190.98, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/SZAFA_~13.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(202, '2020-09-21 12:16:06', 'MEBLE_~11.JPG', 'MEBLE_~11', 'image/jpeg', 146.61, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/MEBLE_~11.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(203, '2020-09-21 12:17:08', 'MEBLE_~12.JPG', 'MEBLE_~12', 'image/jpeg', 97.8, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/MEBLE_~12.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(204, '2020-09-21 12:18:46', 'MEBLE_~31.JPG', 'MEBLE_~31', 'image/jpeg', 118.16, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/MEBLE_~31.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(205, '2020-09-21 12:19:11', 'asd.jpg', 'asd', 'image/jpeg', 175.62, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/asd.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(206, '2020-09-21 12:19:43', 'MEBLE_~21.JPG', 'MEBLE_~21', 'image/jpeg', 311.78, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/MEBLE_~21.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(207, '2020-09-21 12:20:22', 'biuro_21.JPG', 'biuro_21', 'image/jpeg', 316.81, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/biuro_21.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(208, '2020-09-21 12:22:07', 'LOZKO_~31.JPG', 'LOZKO_~31', 'image/jpeg', 429.4, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/LOZKO_~31.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(209, '2020-09-21 12:22:31', 'KUCHNI~24.JPG', 'KUCHNI~24', 'image/jpeg', 94.74, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/KUCHNI~24.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(210, '2020-09-21 12:22:58', 'KUCHNI~25.JPG', 'KUCHNI~25', 'image/jpeg', 231.43, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/KUCHNI~25.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(211, '2020-09-21 12:24:53', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw1.jpeg', 'kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw1', 'image/jpeg', 714.55, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/kuchnia_nowoczesna_biala_lakier_polysk_z_drewnem_dab_hamilton_poglebione_szafki_barek_stol_czarny_sprzet_zabudowa_u_meble_kuchenne_na_wymiar_zamowienie_raty_wroclaw1.jpeg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(212, '2020-09-21 12:25:33', 'KUCHNI~26.JPG', 'KUCHNI~26', 'image/jpeg', 649.09, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/KUCHNI~26.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(213, '2020-09-21 12:26:26', 'KUCHNI~14.JPG', 'KUCHNI~14', 'image/jpeg', 291.34, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/KUCHNI~14.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(214, '2020-09-21 12:29:32', 'KUCHNI~15.JPG', 'KUCHNI~15', 'image/jpeg', 1421.06, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/KUCHNI~15.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(215, '2020-09-21 12:31:15', 'KU4F80-11.JPG', 'KU4F80-11', 'image/jpeg', 728.67, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/KU4F80-11.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(216, '2020-09-21 12:31:48', 'BIALA_~11.JPG', 'BIALA_~11', 'image/jpeg', 420.23, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/BIALA_~11.JPG', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-21/', 1),
(217, '2020-09-22 06:11:14', '008-truck.svg', '008-truck', 'image/svg+xml', 3.39, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/008-truck.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(218, '2020-09-22 06:11:36', '007-equalizer.svg', '007-equalizer', 'image/svg+xml', 0.7, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/007-equalizer.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(219, '2020-09-22 06:11:52', '006-startup.svg', '006-startup', 'image/svg+xml', 5.24, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/006-startup.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(220, '2020-09-22 06:12:11', '005-management.svg', '005-management', 'image/svg+xml', 5.63, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/005-management.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(221, '2020-09-22 06:12:28', '004-cash-register.svg', '004-cash-register', 'image/svg+xml', 5.36, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/004-cash-register.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(222, '2020-09-22 06:12:53', '003-couch.svg', '003-couch', 'image/svg+xml', 2.8, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/003-couch.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(223, '2020-09-22 06:13:07', '002-side-table.svg', '002-side-table', 'image/svg+xml', 1.34, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/002-side-table.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(224, '2020-09-22 06:13:23', '001-kitchen.svg', '001-kitchen', 'image/svg+xml', 2.73, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/001-kitchen.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-22/', 0),
(225, '2020-09-29 13:48:28', 'trophy.svg', 'trophy', 'image/svg+xml', 3.7, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/trophy.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/', 0),
(226, '2020-09-29 13:48:49', 'microwave.svg', 'microwave', 'image/svg+xml', 4.3, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/microwave.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/', 0),
(227, '2020-09-29 13:49:10', 'bean-bag.svg', 'bean-bag', 'image/svg+xml', 2.9, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/bean-bag.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/', 0),
(228, '2020-09-29 13:49:34', 'wardrobe.svg', 'wardrobe', 'image/svg+xml', 4.13, 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/wardrobe.svg', 'C:/xampp/htdocs/miks-meble/uploads/2020-09-29/', 0),
(229, '2020-09-30 10:28:04', 'biala_~1.jpg', 'biala_~1', 'image/jpeg', 420.23, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/biala_~1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 1),
(230, '2020-09-30 10:28:16', 'biala_~1.jpg1.webp', 'biala_~1.jpg1', 'image/webp', 72.34, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/biala_~1.jpg1.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(231, '2020-09-30 10:28:16', 'biala_~3.jpg', 'biala_~3', 'image/jpeg', 400.82, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/biala_~3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 1),
(232, '2020-09-30 10:52:02', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg.webp', 'kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg', 'image/webp', 128.92, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/kuchnia_nowoczesna_brazowa_swiss_krono_orzech_burgundia_uchwyty_zobal_krawedziowe_blat_laminowany_ciemny_czarny_egger_lastriko_meble_kuchenne_wroclaw_na_wymiar_zamowienie_raty.jpg.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(233, '2020-09-30 10:52:02', 'kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg.webp', 'kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg', 'image/webp', 151.99, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/kuchnia-modna-nowoczesna-stylizowana-klasyczna.jpg.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(234, '2020-09-30 10:52:02', 'meble_~31.jpg', 'meble_~31', 'image/jpeg', 118.16, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/meble_~31.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 1),
(235, '2020-09-30 10:58:29', 'szafa_~21.jpg.webp', 'szafa_~21.jpg', 'image/webp', 22.65, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/szafa_~21.jpg.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(236, '2020-09-30 10:58:29', 'szafa_~22.jpg.webp', 'szafa_~22.jpg', 'image/webp', 22.38, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/szafa_~22.jpg.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(237, '2020-09-30 10:58:29', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', 'szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw', 'image/jpeg', 381.83, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/szafa_matowa_szara_przesuwna_z_drzwiami_przesuwnymi_lustem_drewnem_czarne_szprosy_meble_na_zamowienie_wymiar_raty_wroclaw.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 1),
(238, '2020-09-30 12:00:55', 'clipboards.svg', 'clipboards', 'image/svg+xml', 3.42, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/clipboards.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(239, '2020-09-30 12:01:06', 'desk.svg', 'desk', 'image/svg+xml', 2.01, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/desk.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-09-30/', 0),
(240, '2020-10-02 06:12:04', 'ku6310~1.jpg', 'ku6310~1', 'image/jpeg', 1225.47, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/ku6310~1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/', 1),
(241, '2020-10-02 06:12:25', 'ku6310~1.jpg.webp.lossless.webp', 'ku6310~1.jpg.webp.lossless', 'image/webp', 3134.13, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/ku6310~1.jpg.webp.lossless.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/', 0),
(242, '2020-10-02 06:12:25', 'ku6310~1.jpg.webp.lossy.webp', 'ku6310~1.jpg.webp.lossy', 'image/webp', 181.91, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/ku6310~1.jpg.webp.lossy.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/', 0),
(243, '2020-10-02 06:13:43', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna', 'image/jpeg', 175.62, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/', 1),
(244, '2020-10-02 06:13:50', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg1.webp', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg1', 'image/webp', 72.54, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna.jpg1.webp', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/', 0),
(245, '2020-10-02 06:13:50', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-.jpg', 'meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-', 'image/jpeg', 151.7, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/meble_do_salonu_komoda_szafka_rtv_na_wymiar_zamowienie_raty_wroclaw_dluga_matowa_lakierowana__czarna_biala_z_drewnem_mebloscianka_komplet_nowoczesna_-2-.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-02/', 1),
(246, '2020-10-02 07:36:27', 'szafa_~11.jpg', 'szafa_~11', 'image/jpeg', 542.06, 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/szafa_~11.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/', 1),
(247, '2020-10-02 07:36:40', 'szafa_~12.jpg', 'szafa_~12', 'image/jpeg', 381.83, 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/szafa_~12.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/', 1),
(248, '2020-10-02 07:36:49', 'szafa_~13.jpg', 'szafa_~13', 'image/jpeg', 190.98, 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/szafa_~13.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/', 1),
(249, '2020-10-02 07:37:30', 'biala_~1.jpg.webp', 'biala_~1.jpg', 'image/webp', 72.34, 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/biala_~1.jpg.webp', 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/', 0),
(250, '2020-10-02 07:37:30', 'biala_~2.jpg', 'biala_~2', 'image/jpeg', 400.65, 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/biala_~2.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/', 1),
(251, '2020-10-02 07:37:40', 'biala_~3.jpg', 'biala_~3', 'image/jpeg', 400.82, 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/biala_~3.jpg', 'C:/xampp/htdocs/miks-meble/uploads/2020-10-02/', 1),
(252, '2020-10-05 11:45:19', 'galeria.jpg', 'galeria', 'image/jpeg', 1056.68, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/galeria.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(253, '2020-10-05 11:45:39', 'proces_realizacji_1.jpg', 'proces_realizacji_1', 'image/jpeg', 126.54, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/proces_realizacji_1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(254, '2020-10-05 11:46:09', 'wycena_meble_kuchenne_1.jpg', 'wycena_meble_kuchenne_1', 'image/jpeg', 1330.54, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/wycena_meble_kuchenne_1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(255, '2020-10-05 11:46:21', 'kontakt.jpg', 'kontakt', 'image/jpeg', 462.08, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/kontakt.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(256, '2020-10-05 12:21:34', 'proces_realizacji_11.jpg', 'proces_realizacji_11', 'image/jpeg', 126.54, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/proces_realizacji_11.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(257, '2020-10-05 12:26:29', 'proces_realizacji_12.jpg', 'proces_realizacji_12', 'image/jpeg', 126.54, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/proces_realizacji_12.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(258, '2020-10-05 12:26:44', 'proces_realizacji_2.jpg', 'proces_realizacji_2', 'image/jpeg', 113.79, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/proces_realizacji_2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(259, '2020-10-05 12:28:44', 'slider_1.jpg', 'slider_1', 'image/jpeg', 1056.68, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/slider_1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(260, '2020-10-05 12:30:08', 'Slider_2.jpeg', 'Slider_2', 'image/jpeg', 2046.24, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/Slider_2.jpeg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(261, '2020-10-05 12:30:40', 'slider_3.jpg', 'slider_3', 'image/jpeg', 462.08, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/slider_3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(262, '2020-10-05 12:40:05', 'slider_4.jpg', 'slider_4', 'image/jpeg', 966.4, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/slider_4.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(263, '2020-10-05 12:42:22', 'slider_5.jpg', 'slider_5', 'image/jpeg', 958.55, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/slider_5.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(264, '2020-10-05 13:23:45', 'wycena_meble_kuchenne_11.jpg', 'wycena_meble_kuchenne_11', 'image/jpeg', 1330.54, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/wycena_meble_kuchenne_11.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(265, '2020-10-05 13:24:07', 'wycena_meble_kuchenne_2.jpg', 'wycena_meble_kuchenne_2', 'image/jpeg', 1056.68, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/wycena_meble_kuchenne_2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(266, '2020-10-05 13:24:35', 'wycena_meble_kuchenne_3.jpg', 'wycena_meble_kuchenne_3', 'image/jpeg', 651.05, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/wycena_meble_kuchenne_3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-05/', 1),
(267, '2020-10-06 12:03:48', 'inne_1.jpg', 'inne_1', 'image/jpeg', 666.83, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(268, '2020-10-06 12:03:57', 'inne_2.jpg', 'inne_2', 'image/jpeg', 878.26, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(269, '2020-10-06 12:04:11', 'inne_3.jpg', 'inne_3', 'image/jpeg', 146.12, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(270, '2020-10-06 12:04:13', 'inne_3_dluzsze.jpg', 'inne_3_dluzsze', 'image/jpeg', 68.84, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_3_dluzsze.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(271, '2020-10-06 12:04:15', 'inne_naglowek.jpg', 'inne_naglowek', 'image/jpeg', 824.85, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_naglowek.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(272, '2020-10-06 12:05:16', 'inne_11.jpg', 'inne_11', 'image/jpeg', 666.83, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_11.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(273, '2020-10-06 12:14:58', 'biura_naglowek.JPG', 'biura_naglowek', 'image/jpeg', 316.81, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/biura_naglowek.JPG', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(274, '2020-10-06 12:15:34', 'biura_1.jpg', 'biura_1', 'image/jpeg', 4886.63, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/biura_1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(275, '2020-10-06 12:16:57', 'biura_naglowek.jpg', 'biura_naglowek', 'image/jpeg', 316.81, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/biura_naglowek.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(276, '2020-10-06 12:17:15', 'biura2.jpg', 'biura2', 'image/jpeg', 267.64, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/biura2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(277, '2020-10-06 12:17:30', 'biura3.jpg', 'biura3', 'image/jpeg', 6272.68, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/biura3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(278, '2020-10-06 12:19:59', 'inne_naglowek1.jpg', 'inne_naglowek1', 'image/jpeg', 824.85, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/inne_naglowek1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(279, '2020-10-06 12:24:44', 'oferta-meble_kuchenne_naglowek.jpg', 'oferta-meble_kuchenne_naglowek', 'image/jpeg', 4539.28, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/oferta-meble_kuchenne_naglowek.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(280, '2020-10-06 12:25:06', 'oferta_meble_kuchenne_1.jpeg', 'oferta_meble_kuchenne_1', 'image/jpeg', 985.89, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/oferta_meble_kuchenne_1.jpeg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(281, '2020-10-06 12:25:43', 'oferta_meble_kuchenne_2.jpg', 'oferta_meble_kuchenne_2', 'image/jpeg', 1072.43, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/oferta_meble_kuchenne_2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(282, '2020-10-06 12:26:11', 'oferta_meble_kuchenne_3.jpg', 'oferta_meble_kuchenne_3', 'image/jpeg', 4546.89, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/oferta_meble_kuchenne_3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(283, '2020-10-06 12:27:25', 'oferta-szafy_zdj_glowne.jpg', 'oferta-szafy_zdj_glowne', 'image/jpeg', 369.71, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/oferta-szafy_zdj_glowne.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(284, '2020-10-06 12:44:06', 'oferta_naglowek.jpg', 'oferta_naglowek', 'image/jpeg', 1003.31, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/oferta_naglowek.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-06/', 1),
(285, '2020-10-07 06:19:58', 'school-desk.svg', 'school-desk', 'image/svg+xml', 2.88, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/school-desk.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(286, '2020-10-07 06:25:15', 'tape-measure.svg', 'tape-measure', 'image/svg+xml', 2.98, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/tape-measure.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(287, '2020-10-07 06:25:42', 'contract.svg', 'contract', 'image/svg+xml', 2.35, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/contract.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(288, '2020-10-07 06:26:57', '1_PROCES_REALIZACJI.jpg', '1_PROCES_REALIZACJI', 'image/jpeg', 79.92, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/1_PROCES_REALIZACJI.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 1),
(289, '2020-10-07 06:27:36', 'hammer-and-nail-on-wood-outline.svg', 'hammer-and-nail-on-wood-outline', 'image/svg+xml', 4.1, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/hammer-and-nail-on-wood-outline.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(290, '2020-10-07 06:28:13', 'fridge.svg', 'fridge', 'image/svg+xml', 2.19, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/fridge.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(291, '2020-10-07 06:28:48', '1_PROCES_REALIZACJI1.jpg', '1_PROCES_REALIZACJI1', 'image/jpeg', 79.92, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/1_PROCES_REALIZACJI1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 1),
(292, '2020-10-07 06:29:28', '2_PROCES_REALIZACJI.jpeg', '2_PROCES_REALIZACJI', 'image/jpeg', 415.38, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/2_PROCES_REALIZACJI.jpeg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 1),
(293, '2020-10-07 07:10:49', 'sofa-of-one-place-outline.svg', 'sofa-of-one-place-outline', 'image/svg+xml', 3.64, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/sofa-of-one-place-outline.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0);
INSERT INTO `media` (`id`, `created`, `name`, `raw_name`, `type`, `size`, `full_path`, `file_path`, `is_photo`) VALUES
(294, '2020-10-07 07:12:42', 'user-experience.svg', 'user-experience', 'image/svg+xml', 3.49, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/user-experience.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(295, '2020-10-07 07:19:24', 'sofa-of-one-place-outline1.svg', 'sofa-of-one-place-outline1', 'image/svg+xml', 3.64, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/sofa-of-one-place-outline1.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(296, '2020-10-07 07:20:21', 'human.svg', 'human', 'image/svg+xml', 4.83, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/human.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(297, '2020-10-07 07:21:00', 'hand-holding-pick-hammer.svg', 'hand-holding-pick-hammer', 'image/svg+xml', 4.78, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/hand-holding-pick-hammer.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-07/', 0),
(298, '2020-10-09 06:52:20', 'INNE1.jpg', 'INNE1', 'image/jpeg', 786.47, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/INNE1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(299, '2020-10-09 06:54:00', 'inne1.jpg', 'inne1', 'image/jpeg', 786.47, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/inne1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(300, '2020-10-09 06:54:13', 'inne2.jpg', 'inne2', 'image/jpeg', 2293.45, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/inne2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(301, '2020-10-09 06:54:56', 'wycena_inne_3.jpg', 'wycena_inne_3', 'image/jpeg', 3238.95, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/wycena_inne_3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(302, '2020-10-09 06:55:35', 'wycena_inne_naglowek.jpg', 'wycena_inne_naglowek', 'image/jpeg', 966.4, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/wycena_inne_naglowek.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(303, '2020-10-09 06:56:41', 'WYCENA_INNE_NAGLOWEK.jpg', 'WYCENA_INNE_NAGLOWEK', 'image/jpeg', 966.4, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/WYCENA_INNE_NAGLOWEK.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(304, '2020-10-09 06:57:20', 'wycena_szafy_naglowek.jpg', 'wycena_szafy_naglowek', 'image/jpeg', 102.15, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/wycena_szafy_naglowek.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(305, '2020-10-09 06:58:14', 'wycena_szafy_zdj_1.jpg', 'wycena_szafy_zdj_1', 'image/jpeg', 4028.64, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/wycena_szafy_zdj_1.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(306, '2020-10-09 06:58:59', 'wycena_szafy_zdj_2.jpg', 'wycena_szafy_zdj_2', 'image/jpeg', 462.23, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/wycena_szafy_zdj_2.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(307, '2020-10-09 06:59:09', 'wycena_szafy_zdj_3.jpg', 'wycena_szafy_zdj_3', 'image/jpeg', 561.52, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/wycena_szafy_zdj_3.jpg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-09/', 1),
(308, '2020-10-14 09:41:38', 'oven.svg', 'oven', 'image/svg+xml', 2.67, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-14/oven.svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-14/', 0),
(309, '2020-10-14 09:51:38', 'wardrobe_(1).svg', 'wardrobe_(1)', 'image/svg+xml', 8.32, '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-14/wardrobe_(1).svg', '/home/users/przedprojekt_git/public_html/miks-meble.przedprojekt.com/uploads/2020-10-14/', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferta`
--

CREATE TABLE `oferta` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `date` text COLLATE utf8_polish_ci,
  `author` text COLLATE utf8_polish_ci,
  `description2` text COLLATE utf8_polish_ci,
  `title_seo` text COLLATE utf8_polish_ci,
  `keywords` text COLLATE utf8_polish_ci,
  `description_seo` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci,
  `button_name` text COLLATE utf8_polish_ci,
  `button_gallery_name` text COLLATE utf8_polish_ci,
  `button_contact_name` text COLLATE utf8_polish_ci,
  `wycena_name` text COLLATE utf8_polish_ci,
  `wycena_link` text COLLATE utf8_polish_ci,
  `description3` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `oferta`
--

INSERT INTO `oferta` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `date`, `author`, `description2`, `title_seo`, `keywords`, `description_seo`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`, `button_name`, `button_gallery_name`, `button_contact_name`, `wycena_name`, `wycena_link`, `description3`) VALUES
(1, '2019-11-02 20:37:20', 'Szafy', '', '<p>Oferujemy szafy wnękowe i wolnostojące na wymiar.</p>\r\n<p>Tworzymy szafy przesuwne i klasyczne.</p>\r\n<p>Wszystkie meble wykonywane są z płyt laminowanych wiodących producentów co zapewnia ich długotrwałe użytkowanie (np.: Kronopol, Pfleiderer).</p>\r\n<p>Ważną częścią zabudowy, mającą decydujący wpływ na komfort użytkowania, są drzwi.</p>\r\n<p>Wypełnienie drzwi może być wykonane z wielu materiałów (np. z płyty laminowanej, fornirowanej, lustra, szyby)</p>\r\n<p>Możliwe jest również dowolne łączenie wymienionych wyżej materiałów, np. w poziomie lub po skosie</p>\r\n<p>Skorzystaj z wyceny szafy</p>', '2020-09-21/ku6310~1.jpg', '', 'Sep.30,2020', 'Magdalena Korzeń', '<p>Możliwe jest również dowolne łączenie wymienionych wyżej materiałów, np. w poziomie lub po skosie</p>\r\n<p></p>', 'Szafy', '', '<p>Aranżujesz mieszkanie i chcesz dodać mu charakteru? Z pomocą przychodzą czerwone dodatki. Na co się zdecydować? Podpowiadamy!</p>', NULL, NULL, NULL, '', '', 'Czytaj więcej', 'Zobacz więcej zdjęć z realizacji', 'Kontakt', 'Wycena', 'wycena/2', '<p><a href=\"http://www.miks-meble.pl/wycena\">Zachęcamy do skorzystania z wyceny szaf online w zakładce SZAFY</a></p>'),
(2, '2019-11-02 20:40:13', 'Meble Kuchenne', '', '<p>Oferujemy meble kuchenne zarówno klasyczne jaki i nowoczesne.</p>\r\n<p>Biorąc pod uwagę przede wszystkim wymagania i oczekiwania klienta proponujemy rozwiązania cechujące się dużą funkcjonalnością i elegancją.</p>\r\n<p>Stosujemy innowacyjne rozwiązania wykorzystując nowości rynkowe.</p>\r\n<p>Współpracujemy z najlepszymi producentami frontów i płyt dostępnych na rynku (np.: Krono, Egger).</p>\r\n<p>Dotyczy to nie tylko materiałów, ale również akcesoriów, dzięki czemu zapewniamy najwyższy komfort użytkowania mebli.</p>\r\n<p>W naszych kuchniach wykorzystujemy akcesoria wiodących producentów tj. Peka, Hettich, Blum.</p>\r\n<p>Wybór odpowiednich systemów zawiasów, szuflad i podnośników daje Państwu gwarancję długotrwałego i bezawaryjnego użytkowania mebli.</p>\r\n<p>Ponadto u Nas mogą Państwo zamówić sprzęt AGD do swojej nowej, wymarzonej kuchni! Wieloletnie doświadczenie w branży pozwoli nam doradzić Państwu w jaki sprzęt warto zainwestować, a jakiego unikać.</p>', '2020-10-06/oferta-meble_kuchenne_naglowek.jpg', '', 'Sep.30,2020', 'Magdalena Korzeń', '<p>Zapraszamy Państwa do naszego biura handlowego, gdzie podczas spotkania projektant przedstawi wstępny projekt, zaproponuje najlepsze rozwiązania i pokaże Państwu próbki materiałów. <a href=\"https://www.miks-meble.pl/kontakt/\">Skontaktuj się z nami!</a></p>', 'Meble Kuchenne', '', '<p>W naszej ofercie znajdą Państwo zarówno meble klasyczne jak i nowoczesne.</p>', NULL, NULL, NULL, '', '', 'Czytaj więcej', 'Zobacz więcej zdjęć z realizacji', 'Kontakt', 'Wycena', 'wycena/1', '<p><a href=\"http://www.miks-meble.pl/wycena\">Istnieje możliwość skorzystania z wstępnej wyceny kuchni online!</a></p>'),
(4, '2020-09-30 13:56:48', 'Biura i przestrzenie komercyjne', '', '<p>Wykonujemy projekty i realizujemy zamówienia w zakresie aranżacji powierzchni biurowych.<br>Współpracujemy z klientami indywidualnymi, firmami oraz klientami instytucjonalnymi.<br>Oferujemy dostosowane do potrzeb klienta biurka, szafy, biblioteki, przegrody na dokumenty, rolety i o wiele więcej.</p>\r\n<p>Dzięki wieloletniemu doświadczeniu, uzyskujemy przestrzenie w pełni ergonomiczne w odpowiednim dla klienta stylu.</p>\r\n<p>Dysponujemy bogatą kolorystyką oraz wszelkimi dostępnymi na rynku materiałami.</p>\r\n<p>Na potrzeby klientów przygotowujemy pomieszczenia biurowe, gospodarcze, socjalne i inne przestrzenie komercyjne.</p>\r\n<p>W naszej ofercie znajdą państwo także kompleksowe aranżacje różnego rodzaju gabinetów.</p>', '2020-10-06/biura_naglowek.JPG', '', 'Sep.30,2020', 'Magdalena Korzeń', '', 'Biura i przestrzenie komercyjne', '', '<p>Wykonujemy projekty i realizujemy zamówienia w zakresie aranżacji powierzchni biurowych.<br>Współpracujemy z klientami indywidualnymi, firmami oraz klientami instytucjonalnymi.<br>Oferujemy dostosowane do potrzeb klienta biurka, szafy, biblioteki, przegrody na dokumenty, rolety i o wiele więcej.</p>', NULL, NULL, NULL, '', '', 'Czytaj więcej', 'Zobacz więcej zdjęć z realizacji', 'Kontakt', NULL, NULL, NULL),
(5, '2020-09-30 13:57:28', 'Inne', '', '<p>Przy zakupach łączonych (meble kuchenne+inne) oferujemy wszelkiego rodzaju meble.</p>\r\n<p>Wykonujemy meble na zamówienie do całego domu. Oferujemy meble na wymiar do salonu, sypialni, łazienki oraz na przedpokój i do pokojów dziecięcych.</p>\r\n<p>Dzięki meblom wykonanym pod wymiar zyskają Państwo jak najwięcej przestrzeni tworząc unikalne wnętrze.</p>\r\n<p>Wykonamy wszystkie meble w tym szafki RTV, komody, biblioteki, konsole, zabudowy w sypialni i łóżka.</p>\r\n<p>Zamówią Państwo u nas idealnie dopasowane meble łazienkowe. Nasze rozwiązania powodują, że łazienki wyglądają estetycznie i stylowo.</p>', '2020-10-06/inne_naglowek1.jpg', '', 'Sep.30,2020', 'Magdalena Korzeń', '<p>Dbając o wystrój łazienki bez problemu schowamy piec grzewczy w specjalnej zabudowie spełniającej wymogi bezpieczeństwa.</p>\r\n<p>Dzięki wieloletniemu doświadczeniu wiemy jak w najlepszy sposób zagospodarować przestrzeń w państwa domach.</p>\r\n<p>Zapraszamy Państwa do naszego biura handlowego, gdzie podczas spotkania projektant przedstawi wstępny projekt, zaproponuje najlepsze rozwiązania i pokaże Państwu próbki materiałów.</p>', 'Inne', '', '<p>Wykonujemy meble do całego domu. Przy zakupach łączonych (meble kuchenne+inne) oferujemy wszelkiego rodzaju zabudowy w sypialni, w tym łóżka.</p>', NULL, NULL, NULL, '', '', 'Czytaj więcej', 'Zobacz więcej zdjęć z realizacji', 'Kontakt', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `proces_realizacji`
--

CREATE TABLE `proces_realizacji` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `proces_realizacji`
--

INSERT INTO `proces_realizacji` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`) VALUES
(2, '2019-11-02 09:54:36', 'Realizacja zamówienia', '', '<p>Po podpisaniu umowy przystępujemy do rezalizacji zamówienia. Gdy wszystkie elementy zabudowy są już gotowe, kontaktujemy się z Państwem by umówić się na ich montaż.</p>', '2020-10-07/2_PROCES_REALIZACJI.jpeg', 'o nas', NULL, NULL, NULL, '', ''),
(3, '2019-11-02 10:01:37', 'Montaż', '', '<p>Wykwalifikowani pracownicy i specjalistyczne narzędzia jakim dysponują dają Państwu gwarancję, że montaż zostanie wykonany solidnie i szybko</p>', '2020-10-07/hammer-and-nail-on-wood-outline.svg', '', NULL, NULL, NULL, '', ''),
(4, '2019-11-02 10:06:09', 'AGD', '', '<p>Pracownicy posiadają uprawnienia umożliwiające podłączenie wszelkiego rodzaju sprzętu AGD i oświetleniowego, dzięki czemu tuż po montażu będą Państwo mogli w pełni cieszyć się nową zabudową</p>', '2020-10-14/oven.svg', 'team', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `meta_title` text COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `keywords` text COLLATE utf8_polish_ci NOT NULL,
  `privace` text COLLATE utf8_polish_ci NOT NULL,
  `logo` text COLLATE utf8_polish_ci NOT NULL,
  `captcha` text COLLATE utf8_polish_ci NOT NULL,
  `rodo` text COLLATE utf8_polish_ci NOT NULL,
  `rodo_tel` text COLLATE utf8_polish_ci NOT NULL,
  `rodo_mail` text COLLATE utf8_polish_ci NOT NULL,
  `fb_link` text COLLATE utf8_polish_ci NOT NULL,
  `inst_link` text COLLATE utf8_polish_ci NOT NULL,
  `yt_link` text COLLATE utf8_polish_ci NOT NULL,
  `tw_link` text COLLATE utf8_polish_ci NOT NULL,
  `first_color` text COLLATE utf8_polish_ci NOT NULL,
  `captcha_secret` text COLLATE utf8_polish_ci,
  `tiny` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `settings`
--

INSERT INTO `settings` (`id`, `meta_title`, `description`, `keywords`, `privace`, `logo`, `captcha`, `rodo`, `rodo_tel`, `rodo_mail`, `fb_link`, `inst_link`, `yt_link`, `tw_link`, `first_color`, `captcha_secret`, `tiny`) VALUES
(1, 'MIKS-MEBLE MAGDALENA KORZEŃ', 'Firma \'MiKs-Meble\' istnieje na polskim rynku od 1992 roku! Od prawie 30 lat projektujemy, służymy pomocą i wykonujemy meble na wymiar. Naszą specjalnością są meble na wymiar. W naszej ofercie znajdują się meble kuchenne w dowolnym stylu, szafy, zabudowy wnęk, biblioteki, garderoby, sypialnie, meble łazienkowe i biurowe.', '', '2020-09-21/polityka-miks-meble.pdf', '2020-09-21/logo_przeeezroczystwe.png', '6LfOEs8ZAAAAAKhwiJ2n9ajQ18Y0NSmblsSo5UkG', '', '', '', 'https://www.facebook.com/MiksMeble', 'inst', '', '', '#8d7747', '6LfOEs8ZAAAAANkHT_mXBMGCkd8KvhqGJbzahvf-', 'jslf2irttimrhb50rrfk7qbxql93f9ywgr0b7su6w4wcq50j');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `button_title` text COLLATE utf8_polish_ci,
  `button_link` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `slider`
--

INSERT INTO `slider` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `button_title`, `button_link`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`) VALUES
(1, '2019-11-02 09:30:31', 'Kup meble na wymiar ', ' Idealnie dopasowane do Twojego wnętrza', NULL, '2020-10-05/slider_1.jpg', 'slider', 'Oferta', 'oferta', NULL, NULL, NULL, '', ''),
(2, '2019-11-02 09:30:31', 'Darmowy projekt i wycena', 'Umów się na darmowe spotkanie projektowe w Biurze Handlowym', NULL, '2020-10-05/Slider_2.jpeg', 'slider', 'Kontakt', 'kontakt', NULL, NULL, NULL, '', ''),
(3, '2019-11-02 09:30:31', 'Stwórz kuchnię swoich marzeń', 'U nas kupisz na raty!', NULL, '2020-10-05/slider_3.jpg', 'slider', 'Meble Kuchenne', 'oferta/2', NULL, NULL, NULL, '', ''),
(4, '2020-10-05 14:40:05', 'Meble na zamówienie do całego domu', 'Poznaj naszą ofertę', NULL, '2020-10-05/slider_4.jpg', '', 'Oferta', 'oferta', NULL, NULL, NULL, '', ''),
(5, '2020-10-05 14:42:22', 'Szybka wycena online', 'Skorzystaj z wyceny kuchni i szaf', NULL, '2020-10-05/slider_5.jpg', '', 'Wycena', 'wycena', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statystyki`
--

CREATE TABLE `statystyki` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `number` text COLLATE utf8_polish_ci,
  `special_sign` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `statystyki`
--

INSERT INTO `statystyki` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `number`, `special_sign`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`) VALUES
(1, '2019-11-02 11:44:11', '28 LAT NA RYNKU<br>WIELOLETNIE DOŚWIADCZENIE', NULL, NULL, '2020-10-07/user-experience.svg', 'projects', '', '', NULL, NULL, NULL, '', ''),
(2, '2019-11-02 11:46:37', 'FACHOWI MONTAŻYŚCI', NULL, NULL, '2020-10-07/hand-holding-pick-hammer.svg', 'awards', '', '', NULL, NULL, NULL, '', ''),
(3, '2019-11-02 11:49:40', 'WYKWALIFIKOWANI PROJEKTANCI', NULL, NULL, '2020-10-07/human.svg', 'reviews', '', '', NULL, NULL, NULL, '', ''),
(4, '2019-11-02 11:51:53', 'ZAKUPY NA RATY ', NULL, NULL, '2020-10-14/wardrobe_(1).svg', 'customers', '', '', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strona_glowna`
--

CREATE TABLE `strona_glowna` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `strona_glowna`
--

INSERT INTO `strona_glowna` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`) VALUES
(1, '2019-11-03 10:05:10', 'OFERTA', NULL, NULL, NULL, NULL),
(2, '2019-11-03 10:05:22', 'POZNAJ OPINIE INNYCH', NULL, NULL, NULL, NULL),
(3, '2019-11-03 10:05:49', 'POZNAJ NASZĄ DRUŻYNĘ', NULL, NULL, NULL, NULL),
(4, '2019-11-03 10:06:00', '', NULL, NULL, NULL, NULL),
(5, '2019-11-03 10:06:24', 'Jak to działa?', NULL, NULL, NULL, NULL),
(6, '2019-11-03 10:07:11', 'Realizacja zamówienia', NULL, NULL, NULL, NULL),
(7, '2019-11-03 10:07:51', 'WYCENA', NULL, NULL, NULL, NULL),
(8, '2019-11-03 10:33:48', 'NAPISZ DO NAS', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subpages`
--

CREATE TABLE `subpages` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci NOT NULL,
  `subtitle` text COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `photo` text COLLATE utf8_polish_ci NOT NULL,
  `alt` text COLLATE utf8_polish_ci NOT NULL,
  `page` text COLLATE utf8_polish_ci NOT NULL,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `subpages`
--

INSERT INTO `subpages` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `page`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`) VALUES
(1, '2020-09-07 08:18:04', 'HOME', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL),
(3, '2019-11-03 08:17:16', 'OFERTA', '', '', '2020-10-06/oferta_naglowek.jpg', '', 'oferta', NULL, NULL, NULL, '', ''),
(4, '2019-11-03 08:17:16', 'WYCENA', '', '', '2020-10-05/wycena_meble_kuchenne_1.jpg', '', 'wycena', NULL, NULL, NULL, '', ''),
(5, '2019-11-03 08:17:16', 'GALERIA', '', '', '2020-10-05/galeria.jpg', '', 'galeria', NULL, NULL, NULL, '', ''),
(6, '2019-11-03 08:17:16', 'PROCES REALIZACJI', '', '', '2020-10-05/proces_realizacji_1.jpg', '', 'proces-realizacji', NULL, NULL, NULL, '', ''),
(7, '2019-11-03 08:17:16', 'KONTAKT', '', '', '2020-10-05/kontakt.jpg', '', 'kontakt', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `name` text COLLATE utf8_polish_ci,
  `position` text COLLATE utf8_polish_ci,
  `facebook` text COLLATE utf8_polish_ci,
  `twitter` text COLLATE utf8_polish_ci,
  `instagram` text COLLATE utf8_polish_ci,
  `youtube` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) NOT NULL,
  `login` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL,
  `password` text COLLATE utf8_polish_ci NOT NULL,
  `first_name` text COLLATE utf8_polish_ci NOT NULL,
  `last_name` text COLLATE utf8_polish_ci NOT NULL,
  `avatar` text COLLATE utf8_polish_ci NOT NULL,
  `rola` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `created`, `active`, `login`, `email`, `password`, `first_name`, `last_name`, `avatar`, `rola`) VALUES
(1, '2019-04-10 13:48:15', 1, 'admin', 'dawid.plociennik13@gmail.com', '$2y$12$KctJz0aVFYzrBNXpQ2xvve8CPzf6BDVgv7MnLmjp/ri2sI1jOutK.', 'Dawid', 'Płóciennik', '', 'administrator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wycena`
--

CREATE TABLE `wycena` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8_polish_ci,
  `subtitle` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `photo` text COLLATE utf8_polish_ci,
  `alt` text COLLATE utf8_polish_ci,
  `name_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_1` text COLLATE utf8_polish_ci,
  `server_photo_2` text COLLATE utf8_polish_ci,
  `server_photo_3` text COLLATE utf8_polish_ci,
  `server_photo_4` text COLLATE utf8_polish_ci,
  `button_name` text COLLATE utf8_polish_ci,
  `link` text COLLATE utf8_polish_ci,
  `button_form_name` text COLLATE utf8_polish_ci,
  `button_gallery_name` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wycena`
--

INSERT INTO `wycena` (`id`, `created`, `title`, `subtitle`, `description`, `photo`, `alt`, `name_photo_1`, `server_photo_1`, `server_photo_2`, `server_photo_3`, `server_photo_4`, `button_name`, `link`, `button_form_name`, `button_gallery_name`) VALUES
(1, '2019-11-02 09:45:03', 'MEBLE KUCHENNE', '', '<p>Mogą Państwo otrzymać wstępną ofertę kuchni zdalnie! </p>\r\n<p></p>\r\n<p></p>\r\n<p>Aby przygotować dla Państwa ofertę, będą nam potrzebne następujące informacje:</p>\r\n<p>Jakie są wymiary pomieszczenia? (Potrzebny nam poglądowy rysunek techniczny, może być zarys pomieszczenia wykonany ręcznie)<br>Gdzie znajdują się podłączenia do mediów? (wodno-kanalizacyjne, gaz, prąd)<br>Jakie wymiary mają mieć meble?<br>Jaki styl Państwa interesuje? (Możesz dołączyć 2-3 poglądowe zdjęcia)<br>Co ma się znajdować w szafie/kuchni? (np. drążki na ubrania, półki na buty, biżuterię itp./ szafka narożna z zastosowaniem konkretnego systemu Magic-Corner, szafki otwierane do góry itp.)<br>Proszę użyć <a href=\"https://www.miks-meble.pl/kontakt/\">formularza </a>do wysłania zgłoszenia.</p>\r\n<p>Wstępną wycenę wyślemy po ok. 3 dniach roboczych od otrzymania wiadomości.</p>\r\n<p>Po przedstawieniu wstępnej oferty zaprosimy Państwa na spotkanie projektowe, podczas którego projektant przedstawi wstępny projekt, omówi szczegóły oferty i odpowie na wszelkie pytania.</p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>', '2020-09-21/meble_kuchenne_mdf_lakier_mat__szary_uchwyty_krawedziowe_srebrne_blat_laminat_kuchnia_nowoczesna_szara_matowa_z_plyta_drewnem_na_zamowienie_wymiar_raty_wroclaw_prosta_minimalistyczna_-3-.jpg', 'meble kuchenne ', NULL, NULL, NULL, '', '', 'czytaj więcej', 'oferta/2/meble-kuchenne', 'Wyślij formularz wyceny ', 'Zobacz więcej zdjęć z realizacji'),
(2, '2019-11-02 09:45:47', 'SZAFY', '', '<p>Przedstawione poniżej rysunki i schematy prezentują najczęściej wykorzystywane elementy zabudowy wnęk i szaf, jednak stanowią one jedynie niewielką część możliwości jakie oferuje nasza firma.</p>\r\n<p>Aby otrzymać wycenę należy wypisać opisane poniżej informacje i wysłać formularz.</p>\r\n<p><strong>UWAGA</strong>: Minimalna wielkość szafy lub wnęki do wyceny nie może być mniejsza niż 100 cm szerokości</p>\r\n<p><strong>Do sporządzenia wyceny potrzebujemy następujące informacje</strong></p>\r\n<p><strong>1. Wymiary</strong></p>\r\n<p>szerokość / wysokość / głębokość</p>\r\n<p><strong>2. Rodzaj zabudowy</strong></p>\r\n<p class=\"mb-5\">Do wyceny potrzebny jest rodzaj zabudowy</p>\r\n<p></p>\r\n<p></p>\r\n<div class=\"row text-center\">\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>pełna</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/pelna.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>obejmuje dwa boki, wieniec dolny i g&oacute;rny oraz plecy w szafie</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>szkieletowa</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/szkieletowa.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>elementy konstrukcyjne mocowane są bezpośrednio do ścian, sufitu i podłogi</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>szkieletowa z jednym bokiem</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/szkieletowa_z_1_bokiem.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>elementy konstrukcyjne mocowane są bezpośrednio do jednego boku</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Moduły</strong></p>\r\n<p>W zależności od docelowego przeznaczenia szafy mogą Państwo dowolnie podzielić wnętrze.</p>\r\n<p><strong>UWAGA</strong>: Należy pamiętać, że szerokość modułu nie może być mniejsza niż 50 cm i nie może przekraczać 100 cm.</p>\r\n<div class=\"row text-center\">\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MA</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/ma-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>składa się z 4,5 lub 6 p&oacute;łek</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MB</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/mb-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>przeznaczony gł&oacute;wnie do przechowywania ubrań długich</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MC</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/mc-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>przeznaczony do przechowywania ubrań kr&oacute;tkich, np. koszul, marynarek</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MD</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/md-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>opr&oacute;cz ubrań kr&oacute;tkich można przechowywać rzeczy w szufladzie</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł ME</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/me-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>opr&oacute;cz ubrań długich można tam przechowywać np. obuwie</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MF</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/mf-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>zawiera część, w kt&oacute;rej można przechowywać np. deskę do prasowania</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MG</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/mg-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>dwa szeregi kr&oacute;tkich ubrań</p>\r\n</div>\r\n<div class=\"col-12 col-lg-4\">\r\n<p><strong>moduł MH</strong></p>\r\n<p><img src=\"../../../../wycena_szafy/mh-wycena_szafy.jpeg\" alt=\"\" width=\"auto\" height=\"200px\" /></p>\r\n<p>zawiera część gospodarczą (jak MF) i p&oacute;łki</p>\r\n</div>\r\n</div>\r\n<p><strong>4. Drzwi&nbsp;</strong></p>\r\n<p>Liczba skrzydeł drzwi przesuwnych w standardowej zabudowie jest r&oacute;wna liczbie części na jakie zostało podzielone wnętrze szafy.</p>\r\n<p>Drzwi przesuwne mogą być wypełnione płytą laminowaną, lustrem srebrnym lub przyciemnianym, szybą mleczną, rattanem lub bambusem.</p>\r\n<p>Możliwe jest r&oacute;wnież wypełnienie drzwi dwoma r&oacute;żnymi materiałami, tworząc dzielenie poziome lub po skosie.</p>\r\n<p><a href=\"https://www.miks-meble.pl/kontakt/\">WYŚLIJ FORMULARZ</a></p>\r\n<p>Wstępną wycenę odeślemy po ok. 3 dniach roboczych.</p>', '2020-10-09/wycena_szafy_naglowek.jpg', 'branding', NULL, NULL, NULL, '', '', 'czytaj więcej', 'oferta/1/szafy', 'Wyślij formularz', 'Zobacz więcej zdjęć z realizacji'),
(8, '2020-10-09 08:52:20', 'Inne', '', '<p>Przy zakupach łączonych (tj. meble kuchenne/ szafa+ inne), oferujemy wszelkiego rodzaju meble.</p>\r\n<p>Meble produkowane na wymiar zgodnie z życzeniem klienta cechują się dużą różnorodnością wybieranych rozwiązań. </p>\r\n<p>To sprawia, że ich wycenienie bez wcześniejszego stworzenia projektu jest zadaniem trudnym do wykonania.</p>\r\n<p>Jeśli chcą Państwo zamówić meble do całego domu, w tym do sypialni, łazienki czy przedpokoju, zapraszamy do Naszego Biura Handlowego, gdzie nasi projektanci doradzą Państwu ciekawe rozwiązania, wykonają projekt i przedstawią ofertę.</p>\r\n<p>Jeśli posiadają Państwo projekty mebli prosimy o przesłanie ich do nas, a wycenimy je online.</p>\r\n<p><a href=\"https://www.miks-meble.pl/kontakt/\">SKONTAKTUJ SIĘ Z NAMI</a></p>', '2020-10-09/WYCENA_INNE_NAGLOWEK.jpg', '', NULL, NULL, NULL, '', '', 'czytaj więcej', NULL, 'Wyślij formularz wyceny ', 'Zobacz więcej zdjęć z realizacji');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `contact_settings`
--
ALTER TABLE `contact_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dlaczego_my`
--
ALTER TABLE `dlaczego_my`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `galeria_kategoria`
--
ALTER TABLE `galeria_kategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gallery_page`
--
ALTER TABLE `gallery_page`
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
-- Indeksy dla tabeli `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `proces_realizacji`
--
ALTER TABLE `proces_realizacji`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `statystyki`
--
ALTER TABLE `statystyki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strona_glowna`
--
ALTER TABLE `strona_glowna`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `subpages`
--
ALTER TABLE `subpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wycena`
--
ALTER TABLE `wycena`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `contact_settings`
--
ALTER TABLE `contact_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `dlaczego_my`
--
ALTER TABLE `dlaczego_my`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `example`
--
ALTER TABLE `example`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `galeria_kategoria`
--
ALTER TABLE `galeria_kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT dla tabeli `gallery_page`
--
ALTER TABLE `gallery_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT dla tabeli `oferta`
--
ALTER TABLE `oferta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `opinie`
--
ALTER TABLE `opinie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `proces_realizacji`
--
ALTER TABLE `proces_realizacji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `statystyki`
--
ALTER TABLE `statystyki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `strona_glowna`
--
ALTER TABLE `strona_glowna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `subpages`
--
ALTER TABLE `subpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `wycena`
--
ALTER TABLE `wycena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
