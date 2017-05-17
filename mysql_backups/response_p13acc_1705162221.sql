-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 05:21 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `response_p13acc`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_24_155055_create_organizations_table', 1),
('2016_05_27_161811_create_roles_table', 1),
('2016_06_01_122759_add_fields_to_users_table', 1),
('2016_06_01_135502_add_org_id_to_users_table', 1),
('2016_06_03_202646_create_settings_table', 1),
('2016_06_07_153616_create_project13s_table', 1),
('2016_06_13_130019_add_project_id_to_users_table', 1),
('2016_10_19_192259_move_admin_to_organization', 1),
('2016_10_20_144906_add_blue_hat_id_to_users', 1),
('2016_10_20_145845_change_ordinal_id_to_ordinal_count', 1),
('2017_05_01_091958_add_next_project13_id_to_settings', 1),
('2017_05_15_053302_laratrust_setup_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `main_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `alt_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `address1`, `address2`, `city`, `state`, `zipcode`, `main_phone`, `alt_phone`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Pollich-Daugherty', '99754 Leta Viaduct', '', 'Lake Daniellaville', 'TX', '88914', '+16368590197', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(2, 'Armstrong-Kuhic', '392 Merle Hills Suite 876', '', 'East Jarrett', 'TX', '27439', '787.940.0692 x8013', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(3, 'Torphy, Lesch and Yundt', '5096 Reggie Mall Apt. 056', '', 'North Phyllis', 'TX', '72905-1700', '+1-879-600-6322', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(4, 'Collier-Quigley', '6557 Morar Shore Suite 380', '', 'South Melyna', 'TX', '36590', '1-815-750-9359 x0694', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(5, 'Wiza-Bailey', '3028 Justen Camp', '', 'Madelynnton', 'TX', '76862', '+1-269-454-3807', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(6, 'Collins, Abbott and Altenwerth', '67768 Lilyan Pines', '', 'Herzogstad', 'TX', '00835', '1-956-538-7219', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(7, 'Padberg, Braun and Becker', '530 Marvin Valleys', '', 'North Vladimir', 'TX', '76531-7453', '1-474-713-0374 x1951', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(8, 'Nader Group', '3416 Delores Green', '', 'Port Julianport', 'TX', '08561-8194', '291.756.0140', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(9, 'Haag PLC', '1679 Katherine Vista Suite 721', '', 'Keonborough', 'TX', '63222-9331', '1-257-706-1564 x65654', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL),
(10, 'Stoltenberg, Bradtke and Christiansen', '750 Shyanne Junctions', '', 'North Della', 'TX', '93832', '1-276-992-0149 x9862', '', '2017-05-07 06:33:40', '2017-05-07 06:33:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'view-organization-index', 'View Organization Index', 'view the index showing all organizations', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(2, 'view-add-modify-organization', 'View Add and Modify Organization', 'view add and modify an organization details', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(3, 'view-organization-members', 'View Organization Members', 'view an organization members', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(4, 'modify-organization-members', 'Modify Organization Members', 'modify an organization members', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(5, 'view-project13-index', 'View Project 13 index', 'view project 13 index', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(6, 'add-modify-project13', 'Add and Modify Project 13', 'add and modify a project 13 details, including members but not evaluations', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(7, 'view-all-project13-details', 'View All Project 13 Details', 'view all project 13 details, including members evaluations', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(8, 'view-project13-details', 'View A Project 13 Details', 'view a single project 13 details, including members evaluations', '2017-05-15 13:43:58', '2017-05-15 13:43:58'),
(9, 'view-blue-hat-branch', 'View A Blue Hat Branch', 'view a blue hat details, including members evaluations', '2017-05-15 13:43:58', '2017-05-15 13:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project13s`
--

CREATE TABLE `project13s` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(10) UNSIGNED NOT NULL,
  `ordinal_count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project13s`
--

INSERT INTO `project13s` (`id`, `organization_id`, `ordinal_count`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2017-05-09 14:37:16', '2017-05-09 14:37:16'),
(2, 2, 2, '2017-05-15 09:08:01', '2017-05-15 09:08:01'),
(3, 4, 3, '2017-05-15 09:08:27', '2017-05-15 09:08:27'),
(4, 6, 4, '2017-05-15 09:08:52', '2017-05-15 09:08:52'),
(5, 2, 5, '2017-05-16 07:50:19', '2017-05-16 07:50:19'),
(6, 6, 6, '2017-05-16 07:50:51', '2017-05-16 07:50:51'),
(7, 9, 7, '2017-05-16 07:51:41', '2017-05-16 07:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'none', '[Unassigned]', 'Member has not been assigned a Role yet', NULL, NULL),
(2, 'district_admin', 'District Administrator', 'User has full access to Organization info, and can add a Project 13 following application approval', NULL, NULL),
(3, 'org_admin', 'Organization Administrator', 'Local administrator for the organization. Can enter members, assign them to Project 13s, and edit Evaluation Questions', NULL, NULL),
(4, 'black_hat', 'Black Hat', 'Unused Role as of yet', NULL, NULL),
(5, 'white_hat', 'White Hat', 'Top level of a Project 13', NULL, NULL),
(6, 'blue_hat', 'Blue Hat', 'Middle level of a Project 13, with up to three Yellow Hats under him', NULL, NULL),
(7, 'yellow_hat', 'Yellow Hat', 'Lowest level of the Project 13. Does not have log in privileges to the Accountability tool', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `next_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `next_project13_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `next_user_id`, `created_at`, `updated_at`, `next_project13_id`) VALUES
(1, 7, '2017-05-09 14:37:16', '2017-05-16 13:01:54', 8);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `abbreviation`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'Arizona', 'AZ'),
(4, 'Arkansas', 'AR'),
(5, 'California', 'CA'),
(6, 'Colorado', 'CO'),
(7, 'Connecticut', 'CT'),
(8, 'Delaware', 'DE'),
(9, 'Florida', 'FL'),
(10, 'Georgia', 'GA'),
(11, 'Hawaii', 'HI'),
(12, 'Idaho', 'ID'),
(13, 'Illinois', 'IL'),
(14, 'Indiana', 'IN'),
(15, 'Iowa', 'IA'),
(16, 'Kansas', 'KS'),
(17, 'Kentucky', 'KY'),
(18, 'Louisiana', 'LA'),
(19, 'Maine', 'ME'),
(20, 'Maryland', 'MD'),
(21, 'Massachusetts', 'MA'),
(22, 'Michigan', 'MI'),
(23, 'Minnesota', 'MN'),
(24, 'Mississippi', 'MS'),
(25, 'Missouri', 'MO'),
(26, 'Montana', 'MT'),
(27, 'Nebraska', 'NE'),
(28, 'Nevada', 'NV'),
(29, 'New Hampshire', 'NH'),
(30, 'New Jersey', 'NJ'),
(31, 'New Mexico', 'NM'),
(32, 'New York', 'NY'),
(33, 'North Carolina', 'NC'),
(34, 'North Dakota', 'ND'),
(35, 'Ohio', 'OH'),
(36, 'Oklahoma', 'OK'),
(37, 'Oregon', 'OR'),
(38, 'Pennsylvania', 'PA'),
(39, 'Rhode Island', 'RI'),
(40, 'South Carolina', 'SC'),
(41, 'South Dakota', 'SD'),
(42, 'Tennessee', 'TN'),
(43, 'Texas', 'TX'),
(44, 'Utah', 'UT'),
(45, 'Vermont', 'VT'),
(46, 'Virginia', 'VA'),
(47, 'Washington', 'WA'),
(48, 'West Virginia', 'WV'),
(49, 'Wisconsin', 'WI'),
(50, 'Wyoming', 'WY'),
(51, 'Washington DC', 'DC'),
(84, 'Armed Forces Americas', 'AA'),
(85, 'Armed Forces Europe', 'AE'),
(86, 'Armed Forces Pacific', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) UNSIGNED NOT NULL,
  `project13_id` int(10) UNSIGNED DEFAULT NULL,
  `blue_hat_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `first_name`, `last_name`, `phone`, `organization_id`, `project13_id`, `blue_hat_id`) VALUES
(1, 'annabel35', 'gonzalo.davis@spencer.com', '$2y$10$TeNWnFvnAQ0PGzfDiLZXPOyKcfh5HvQGtBQgGxr367/L2dPg.EbWK', NULL, '2017-05-07 06:34:28', '2017-05-07 06:34:28', 1, 'Diamond', 'Rowe', '(393) 490-9983 x', 1, NULL, NULL),
(2, 'smarquardt', 'wbailey@yahoo.com', '$2y$10$5EJUMWpD0vopHBiNjJqouuZCEW2J4lnQ65.AfAZi0EWjIy.FqwWGO', NULL, '2017-05-07 06:34:28', '2017-05-07 06:34:28', 1, 'Waylon', 'Rice', '627-802-7140 x29', 2, NULL, NULL),
(3, 'gerald.langosh', 'dahlia94@kuhlman.info', '$2y$10$S67Sxk9F6.tEq/iH3G4gY.GZDdB0Fwb8SlIkDu3xWRfr2uyrhecki', NULL, '2017-05-07 06:34:28', '2017-05-07 06:34:28', 1, 'Hilario', 'Price', '+1-879-782-5653', 3, NULL, NULL),
(4, 'andre22', 'cora.emard@hotmail.com', '$2y$10$Izmazi0g82FeYFWA0QyB3eQVtOQgfOlYJUMLjcRNoFXJMhb.Cr05K', 'rzgSAi7Sk4WIGYY27etHkFyDqhndjeu4MV90SEuTBlxPV46xHDxIfYQu9WhC', '2017-05-07 06:34:29', '2017-05-16 09:38:10', 1, 'Garrison', 'Langosh', '(252) 979-2818 x', 4, NULL, NULL),
(5, 'jacobs.ramiro', 'douglas.jenifer@ritchie.com', '$2y$10$TubLwnGc.WUp.TJaSuiNCuEo4RZGY0qN6XidrbVr.Z4OBaLXGF.Su', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Vladimir', 'Effertz', '404.900.8600', 5, NULL, NULL),
(6, 'xreinger', 'rkerluke@hotmail.com', '$2y$10$PKtGD/OmM2nbAeWmE5SLTOj9plQ3epIOR1X0waE8bnz9ACuTLlU0G', NULL, '2017-05-07 06:34:29', '2017-05-16 07:50:51', 7, 'Sam', 'McClure', '1-764-722-4122 x', 6, 6, 1),
(7, 'jody19', 'verner.feeney@koch.com', '$2y$10$o1vwy7cBOYLdemQl8OkeYeh159p3yR2m/yf/Ng8ispLv.8oq1WXa2', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Dawson', 'Hauck', '1-853-832-5290 x', 7, NULL, NULL),
(8, 'koss.kasey', 'kirk64@jaskolski.org', '$2y$10$Y643E0s9/JH4FrYPkDIIme4mioaUMhpHEt7svWoRh8IOrnqWDn.KS', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Abel', 'Prohaska', '939.793.8331', 8, NULL, NULL),
(9, 'zwalsh', 'dlarson@gmail.com', '$2y$10$FVLb7uPHVSxQEEckU0vAweqvyBqmUUys0Gub09g6y34x8ISJAE6S6', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Doyle', 'Runolfsson', '(671) 339-2524 x', 9, NULL, NULL),
(10, 'magnolia58', 'hilpert.wellington@kshlerin.biz', '$2y$10$s4Lsu/KSSY8Q6o3PAaPYKu9mCyQ4LvTCgA0Be.4fkulionklle2ty', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Reggie', 'Goldner', '442.971.8939', 10, NULL, NULL),
(11, 'timmy.aufderhar', 'hegmann.aron@yahoo.com', '$2y$10$DRQ/aHi0nkc.F78zFIM0Teli/cNdMDAnaxH1ybC4E0C42kgc7jDYK', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Patrick', 'Haley', '309.860.6798 x48', 1, NULL, NULL),
(12, 'zwindler', 'lueilwitz.robyn@morar.org', '$2y$10$Yb25X/jwC6Gb2wV1h8X04eQwJSMgvR6E/bQ6HenVdz6gWv/ZBgyS.', NULL, '2017-05-07 06:34:29', '2017-05-16 07:50:19', 7, 'Elmore', 'Mohr', '397-375-4588 x62', 2, 5, 1),
(13, 'hickle.jamey', 'zkris@gmail.com', '$2y$10$32AiDvl8gS/8Sy3A6MXwUuJ.K.HGp2eJ4xw1EUxtqxshl3D7zea5K', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Quinton', 'Reynolds', '294.417.5240 x67', 3, NULL, NULL),
(14, 'marshall.kirlin', 'romaguera.ruthie@spinka.net', '$2y$10$c23DuS.ZlOPTjW.Rbh1xIuK0VjglPScgDoiiU4PoLIy5/KNuRmGwO', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Leopoldo', 'Kreiger', '316.206.7508', 4, NULL, NULL),
(15, 'ottilie.deckow', 'samantha.kerluke@lynch.com', '$2y$10$RYMtc8iw2hQnAmHUgepO1.8BHOINtosx77D0oqNrEuI.Izc5JH31W', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Lucio', 'Medhurst', '(716) 880-0735 x', 5, NULL, NULL),
(16, 'jonathan28', 'bgulgowski@hotmail.com', '$2y$10$KyMwhDkvwHrJXMNp7PonA.gDdDIMJZn/22x8UAeuV46N9tVkzKvCS', NULL, '2017-05-07 06:34:29', '2017-05-16 07:50:51', 7, 'Jamey', 'Kilback', '1-734-672-2018 x', 6, 6, 1),
(17, 'randal12', 'margret.fadel@hotmail.com', '$2y$10$WvMPn5ZxFbfcReaQMq/vAOiyvAcRU8qxa0CfUxzMX0zmGKG8MZCb6', NULL, '2017-05-07 06:34:29', '2017-05-07 06:34:29', 1, 'Hilton', 'Stark', '347-732-2551', 7, NULL, NULL),
(18, 'eusebio.hoeger', 'catherine.hudson@gmail.com', '$2y$10$XuF0uoJM2ARLAUnYcmZUC.PAc4t0JLPo6mNIWByLq36RGWLFqCWUu', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Ulices', 'Harris', '575.827.9313 x79', 8, NULL, NULL),
(19, 'coby01', 'jschmitt@hotmail.com', '$2y$10$.JIoG4945djPIqfmTYMraOph9X3Z3tO6.pOXPKH2GOJmT6OBpke/.', NULL, '2017-05-07 06:34:30', '2017-05-16 07:51:41', 6, 'Gussie', 'Gleason', '303-734-0712', 9, 7, 1),
(20, 'henderson.braun', 'wcassin@skiles.com', '$2y$10$.mwM8lsAygxH6D5fVPdmsOR6BNYjp2DV7lSXgPc/NUhr1d4R75TsK', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Elvis', 'Bosco', '937-828-7278', 10, NULL, NULL),
(21, 'jeramie19', 'otho.rutherford@streich.info', '$2y$10$qa6ygM1U.I7QsbtunSiNIOFjMmqsMdGWdAUj2jxgTxybmuqxxP8Di', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Trevion', 'Torp', '+1.465.871.8817', 1, NULL, NULL),
(22, 'cartwright.victor', 'abagail.kuhlman@hettinger.com', '$2y$10$AhLdGljyY/bjvAQrlHk8JeW5RGzwPaEffxcZ2YW.xrPEBR5P0VBI.', NULL, '2017-05-07 06:34:30', '2017-05-16 07:50:19', 5, 'Titus', 'Keeling', '1-438-824-0198 x', 2, 5, 0),
(23, 'schmitt.althea', 'rdibbert@yahoo.com', '$2y$10$xqME0as51mDOGV9bWXSxmeBXoqhlEz6nYPtD1BGQHfTHzRh2pbJhO', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Jarrett', 'Hayes', '+1-791-493-4677', 3, NULL, NULL),
(24, 'ambrose34', 'cronin.joany@gmail.com', '$2y$10$rA243QOxwfxKGHPq4A22tODqlAg/bWoOBufMQNp1s8Gv7B3bobzSy', NULL, '2017-05-07 06:34:30', '2017-05-15 09:08:27', 5, 'Mathew', 'Armstrong', '+1 (725) 539-432', 4, 3, 0),
(25, 'turner.fern', 'wunsch.johann@hotmail.com', '$2y$10$aylnHzyGp.FpAYBQWelgl.FMGspK9o99bc8D..NV/Yo1S.yAYgGHq', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Evans', 'Volkman', '913.916.1515 x07', 5, NULL, NULL),
(26, 'presley.oconnell', 'valentina.schuppe@yahoo.com', '$2y$10$sC/GwaEE8GRXpm71fW8SVeiIJC9dA5aDkurYadiQORx3SltmADup.', NULL, '2017-05-07 06:34:30', '2017-05-16 07:50:51', 5, 'Monserrate', 'Herzog', '519.413.5426 x18', 6, 6, 0),
(27, 'scottie.hills', 'eden.olson@yahoo.com', '$2y$10$VasMe/AFnne5kFHFDQmiRePau6z6K6o50vXmJqfaf9c8aUsU/9O26', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Junior', 'Considine', '229-789-7683', 7, NULL, NULL),
(28, 'okeefe.cecelia', 'aharris@bergstrom.com', '$2y$10$aKi53DcWSfrLzWddyHlfLORGYlea0Z68fWTDTJ7czn.eXBoA5oqey', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Harry', 'Wunsch', '501-750-0318 x74', 8, NULL, NULL),
(29, 'brittany.spinka', 'marty05@hotmail.com', '$2y$10$BM4.guS3ANbRAzgfpHJtCO.lgoN66xxGCo1yuA0RD8e54FhBx9dn6', NULL, '2017-05-07 06:34:30', '2017-05-16 07:51:41', 7, 'Wellington', 'Mann', '+19785492450', 9, 7, 1),
(30, 'carmel.hagenes', 'kertzmann.henri@hotmail.com', '$2y$10$8H4pVFI3PAMP3VC2TQDi0OMGg0odYSCuPbDAE8onH5OIqv1YNUDui', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Carroll', 'Koch', '1-750-710-5095', 10, NULL, NULL),
(31, 'cassin.lia', 'shaina.wiza@bartoletti.biz', '$2y$10$wxFkI07ZDv7/EN92E8GWW.uLqr2bXeiU2Gu5wBzm5li4Qa0R57en2', NULL, '2017-05-07 06:34:30', '2017-05-07 06:34:30', 1, 'Orville', 'Torp', '964.940.7878 x95', 1, NULL, NULL),
(32, 'delilah.auer', 'liam35@toy.com', '$2y$10$hb.tgnzBnmijHBJrejxte.7baFPL0XksjZQMOXoLm/zgMAwcq7XMG', NULL, '2017-05-07 06:34:31', '2017-05-15 09:08:01', 7, 'Tony', 'DuBuque', '896.781.3252 x50', 2, 2, 1),
(33, 'gcrooks', 'fadel.keeley@hotmail.com', '$2y$10$2X4nNhI0QvWKZLH2ELyET.IGic/uESztLb2yBRKvmQY/mvezW20/e', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Lennie', 'Schaefer', '729.928.8115 x36', 3, NULL, NULL),
(34, 'becker.arno', 'alanna91@tromp.biz', '$2y$10$Cv53AN90T6hkAZC1dtFORO4yfcqsmv2NGnlJ4YDYeQDuOrw0Wd2cK', NULL, '2017-05-07 06:34:31', '2017-05-15 09:08:27', 6, 'Jasper', 'Crist', '867-272-1794', 4, 3, 1),
(35, 'skoss', 'selina84@jaskolski.com', '$2y$10$Hl2VYZbaTN2mswK9/3EZj.s9hZ8XuroSNSuSSomqSp21AwJNBTOgm', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Leonel', 'Bogan', '1-643-312-9594 x', 5, NULL, NULL),
(36, 'pjacobi', 'brakus.ebba@howell.net', '$2y$10$9bQgxxBUl1altuRbvGJgvu6twZGTqMh3XMcDvauk0sr1V3q59B/.O', NULL, '2017-05-07 06:34:31', '2017-05-15 09:08:52', 6, 'Dane', 'Bailey', '(376) 468-3575', 6, 4, 1),
(37, 'griffin.barrows', 'pwintheiser@hotmail.com', '$2y$10$tdoLXAeQHJhOBIIS5kgWtueT6RWqTNYtDBzGaW1MrtfJpilCOsOie', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Brando', 'Bradtke', '+1.394.648.2299', 7, NULL, NULL),
(38, 'tleffler', 'eve.gleichner@stoltenberg.com', '$2y$10$6HQ05MkQwnNg/X0.AwcYaOHLPI8Z.p0woxHDO54q0mH.Uotyq3/Hy', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Jeramie', 'Runolfsson', '+1.849.979.0396', 8, NULL, NULL),
(39, 'sandy.kshlerin', 'etha.robel@pfeffer.org', '$2y$10$2Xr7V077uIpi7S5hEXF/7ud4rxmGahtMp3059hpG/seln4xclZdk.', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Carter', 'Willms', '225-499-5041 x60', 9, NULL, NULL),
(40, 'rodolfo.daniel', 'braun.tad@johns.org', '$2y$10$25EngpYdWPqtWr2Vmf5KaOd3uaI3ImGz4ekBft4dObqTkc55bHYne', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Edmund', 'McGlynn', '415.823.2062', 10, NULL, NULL),
(41, 'estevan35', 'thompson.jenifer@gmail.com', '$2y$10$s0BbXaTsVYw7aXCnw0fgRO7nIM8dlJASPDEQtzz89twherwOS8cdC', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Harmon', 'Mosciski', '665-230-7864', 1, NULL, NULL),
(42, 'maybelle51', 'dedric.bode@hotmail.com', '$2y$10$qYsUp9y3KOYUmuyG2OIQqODHFQ/jE49dxuoZlG3xED76C.vRZjzQi', NULL, '2017-05-07 06:34:31', '2017-05-15 09:08:01', 7, 'Tyshawn', 'Jakubowski', '669.525.8292 x59', 2, 2, 1),
(43, 'okreiger', 'renee.trantow@nader.net', '$2y$10$Pb7HsKDpztLP9TteTu8Xdu1wjWlHRC.wHewSJ857Tb6rW/eUiaX/i', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Jonatan', 'McDermott', '+1-549-783-9718', 3, NULL, NULL),
(44, 'kemmer.tomas', 'camron.balistreri@keebler.net', '$2y$10$afdZWNCc1vg6euID6X6m.uSu81pzBDLdWwzHqldMYEO3FL1/N/nHu', NULL, '2017-05-07 06:34:31', '2017-05-15 09:08:27', 7, 'Morton', 'Fritsch', '231.810.0003 x10', 4, 3, 1),
(45, 'franecki.ronny', 'josefa01@stanton.com', '$2y$10$lr0QYBovMZ/Ez/0La2ta1etpbtZT0N8MCyfAUnJuUBlBwu8Olr5z.', NULL, '2017-05-07 06:34:31', '2017-05-07 06:34:31', 1, 'Jarred', 'Wolff', '326-572-0460', 5, NULL, NULL),
(46, 'carlos85', 'nreinger@yahoo.com', '$2y$10$36dQaHf4GE8CB1wmfyhdQO4cZZYK9WrISnIVoFtF4qX9awk9hCzMq', NULL, '2017-05-07 06:34:32', '2017-05-16 07:50:51', 7, 'Marcel', 'Krajcik', '+1-261-861-5559', 6, 6, 1),
(47, 'dandre.wolff', 'reyna28@cartwright.info', '$2y$10$zRzDLRmCDWg8gbq8NK9Cc.AcoVjtybuJ/3Sezm4Trs8R9EkHKOoee', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Ignatius', 'Koepp', '(993) 353-3989 x', 7, NULL, NULL),
(48, 'michael.hammes', 'brionna21@gmail.com', '$2y$10$HB1R1JZY7zSK75ibLZNojeowg7xuFJFHKcqDa3iL.zwkX5pA.r.nG', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Rodolfo', 'Klein', '575-338-3563 x99', 8, NULL, NULL),
(49, 'stamm.genoveva', 'gmarvin@harris.com', '$2y$10$TkSO.3RMZqBTk5Bv0ZyhIe7/68mnBDoc01efonHMzLtUr0qdkpJf6', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Aric', 'Quitzon', '585-965-6135', 9, NULL, NULL),
(50, 'bzemlak', 'einar21@wunsch.org', '$2y$10$1gsiYQO7IyYOG/Y9etedYOVnX1siiSQhrsGYhTx/UhOEGfwQXuoza', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Mackenzie', 'Frami', '675.330.1212 x58', 10, NULL, NULL),
(51, 'alycia.labadie', 'xzboncak@hotmail.com', '$2y$10$tnCbqSxYQmdJVq7ODDoAje56EVQdbHC3J9bqb//OR460Fov/f9Sqq', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Kevin', 'Ruecker', '(501) 893-8123 x', 1, NULL, NULL),
(52, 'valerie.schowalter', 'emmerich.clark@yahoo.com', '$2y$10$phPBmWjwPVzZl.tPUNN47uu6FeEv.J2IeJjPMiisy.5UZo7b05afe', NULL, '2017-05-07 06:34:32', '2017-05-16 07:50:19', 7, 'Deonte', 'Murazik', '891-641-1419', 2, 5, 1),
(53, 'robert.ebert', 'izabella15@bruen.biz', '$2y$10$80GIMeKbjuBi3BJfRpL33.YNvAE4IDGmQEDFKcziHT4aBzk1/lIwm', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Tobin', 'Harris', '1-397-676-1078', 3, NULL, NULL),
(54, 'paula.torp', 'tsteuber@gmail.com', '$2y$10$U9dsoHLCAxKq4euu/t/NCuhYSWEFmsHlPMi42wh8K33qMzz7urGWa', NULL, '2017-05-07 06:34:32', '2017-05-15 09:08:27', 7, 'Mohammad', 'Douglas', '+1-478-954-0403', 4, 3, 1),
(55, 'kailyn.kuhlman', 'okessler@yahoo.com', '$2y$10$q.OXdaIRYnaS5ViNLdCcLuhUVPkd1TLEPCxWaJa7Qu1al2BRI0NDW', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Jared', 'Ullrich', '520.360.5135 x66', 5, NULL, NULL),
(56, 'raphaelle.smitham', 'finn.fahey@bins.biz', '$2y$10$7ZBbDvTViePxn0r060K6NeslnD/F8aNL/baW1JjBbzRedfVR0DnAi', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Jalen', 'Metz', '739-726-2210 x42', 6, NULL, NULL),
(57, 'myriam31', 'helena.hintz@gmail.com', '$2y$10$1tRGPk1VS68Cino.dEPyieUJYUa/EnSdEAP3CO.OXF/3t41wqIRv6', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Marlin', 'Pacocha', '989.768.1926 x06', 7, NULL, NULL),
(58, 'addison35', 'schamberger.alvena@hotmail.com', '$2y$10$uxM0AlRQI.tx4Ai3lFZbp.s0btJhxVT/2fwSSKl0E0J7SzqJYA9h.', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Stanley', 'Klocko', '(385) 605-5423 x', 8, NULL, NULL),
(59, 'stracke.hyman', 'martina42@rice.com', '$2y$10$o6NoHKRutkiTRq4kk.0e0.lQnte2pqU27/gWOB9O2s2oRHmW32cW2', NULL, '2017-05-07 06:34:32', '2017-05-07 06:34:32', 1, 'Ellis', 'McLaughlin', '+17603624475', 9, NULL, NULL),
(60, 'denesik.catharine', 'patrick.veum@predovic.com', '$2y$10$V/b1oeLIy5xfQ86bwlZeC.ogHwUtEnOsZXeRbNV8KfAvjXGaVyhaq', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Damon', 'Thiel', '1-467-470-8877', 10, NULL, NULL),
(61, 'kareem40', 'ycrist@bednar.biz', '$2y$10$0hBDTlfvosgSK33FUUfE5uxPdKGxHk1ZtZnrFy5GxIn0rUj23WCVC', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Nikko', 'Kuhlman', '891.731.1501 x94', 1, NULL, NULL),
(62, 'reynold65', 'cpacocha@hotmail.com', '$2y$10$lBsC81ZhmPm9AZCNpeRnE.q4t8fb/rSNbqk0.9W5TWz.Kcc/b8luW', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Lee', 'Ullrich', '714.981.6967 x25', 2, NULL, NULL),
(63, 'mcrona', 'renee.dooley@sipes.com', '$2y$10$RYmrR/mnUAXAPfzUlKIwTeRPXw477L771wd9PZ5MWf2LZwERXZ24G', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Alex', 'Fritsch', '608.309.8001 x70', 3, NULL, NULL),
(64, 'shaylee.mertz', 'percival10@hotmail.com', '$2y$10$q3iRthT6HS4AuJfdwg7e2.kqcM/u0OccOEQqX1h3.Hq8WgReHnuFm', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Jarvis', 'Zulauf', '617.395.9096 x09', 4, NULL, NULL),
(65, 'carroll.morris', 'corrine97@hotmail.com', '$2y$10$yf/EDoqa2SCwFP.SR22cV.PhVKDdWcowGSs8KpSBmZVaJS4Xlh3ae', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Chaz', 'Towne', '+1.810.294.0682', 5, NULL, NULL),
(66, 'altenwerth.zion', 'hwatsica@gmail.com', '$2y$10$daYLGz8xL5t4EYYG.6THueOwuFAFgiHgNSG8b8QTVCw0kzPFc.UfW', NULL, '2017-05-07 06:34:33', '2017-05-15 09:08:52', 7, 'Merl', 'Gleason', '213-325-9613', 6, 4, 1),
(67, 'keyon.conroy', 'hnader@kling.com', '$2y$10$1d9OH2gd.8pXg/uFdk.u4eFPCt8wEJf9Cg77Q5qQ8EHQkHfpOLrxm', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Felipe', 'Stanton', '+1 (269) 993-951', 7, NULL, NULL),
(68, 'juliet09', 'ebatz@kessler.net', '$2y$10$wpGLvNm91zXSHkkn.wY.w.A2AuXvi29dZ0b5lQivggAqVojm15NSq', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Bryon', 'Kreiger', '1-929-515-9895 x', 8, NULL, NULL),
(69, 'tdouglas', 'magdalen31@gmail.com', '$2y$10$GUCJGxLigf6ixrVXJGL0x.KzlSCKN5N8XbLal.Uwy5lObY6380Pvu', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Anderson', 'Vandervort', '226.745.9842', 9, NULL, NULL),
(70, 'lemke.terrill', 'qabbott@dicki.com', '$2y$10$CaZiBSMjE8l8IMW7ArXfwu7byjiMtlt7IW8LHDn4z5Sxsr.xZ4Sv6', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Rhiannon', 'Murphy', '+16613593214', 10, NULL, NULL),
(71, 'sstark', 'jackeline.bashirian@yahoo.com', '$2y$10$HyTp8T1wrsRZT8gHj2N5Gu9PY/jTI0rPOdc22sXs35LbxpprAo1Ma', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Leone', 'Steuber', '(276) 245-0523 x', 1, NULL, NULL),
(72, 'price.leone', 'eglover@hotmail.com', '$2y$10$rDwXZKwYGbAb8rCzUv1qbecEWf.1rgimNeO4W5sJaZXvgkIAQ0MAe', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Green', 'Rau', '670.312.4131', 2, NULL, NULL),
(73, 'ahodkiewicz', 'sipes.amanda@fahey.com', '$2y$10$VIhbreZsXFL2QjgTA6sVBeqa8WZhKx2SpjehDsRQ8buxua82h6z7a', NULL, '2017-05-07 06:34:33', '2017-05-07 06:34:33', 1, 'Mallory', 'Ledner', '(762) 638-5467 x', 3, NULL, NULL),
(74, 'alexandra45', 'suzanne53@hammes.net', '$2y$10$3vffqNUbIqfmijd.Dq2P7eTmUpC.SbZC4HNi1Tz5Z7xzjWk2wxQ/m', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Darien', 'Kovacek', '853-819-6975', 4, NULL, NULL),
(75, 'bullrich', 'oscar27@christiansen.org', '$2y$10$W0U/0OOfSD2T4m5qGSZ8M.ML0S13bxEHcAso2qoVSrekI6ESpR96.', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Brain', 'McGlynn', '+17549870358', 5, NULL, NULL),
(76, 'janessa62', 'foster.corkery@mitchell.com', '$2y$10$o9Ke.Ltm8QdqzshL29Ig2eZQnLZZVplldYKYwbUZ.qjALWXztZo6O', NULL, '2017-05-07 06:34:34', '2017-05-15 09:08:52', 5, 'Wyatt', 'Anderson', '+1.517.709.4143', 6, 4, 0),
(77, 'rempel.rosalyn', 'mattie.friesen@yahoo.com', '$2y$10$c09ivGIXV6KOf7pAhsiHHeg6WjrjZjNcar8OnZSh6JSge0JEe3vGC', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Roscoe', 'Russel', '278-930-1903 x97', 7, NULL, NULL),
(78, 'kelly.buckridge', 'kframi@gmail.com', '$2y$10$KHBQxEkYZp7G9R1xNc08PuHTjKUSzlv051UsVKl1eCF9STP9a78bu', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Chase', 'Oberbrunner', '+1-958-225-3915', 8, NULL, NULL),
(79, 'noe.stokes', 'jefferey70@hotmail.com', '$2y$10$z6piaoaqUNvWWcbe8IZ2Z.ULaavLqCDjjFsJCf7eqhw/JwoIfw72C', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Jamil', 'Windler', '943-410-7229', 9, NULL, NULL),
(80, 'simeon.cruickshank', 'bode.aurelie@gmail.com', '$2y$10$qJN4FTe9JtvO7ojWiyt13unWnLPgx6ej4jMr1el3VlCU72IYeFwSq', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Eldon', 'Kunde', '646-710-2002', 10, NULL, NULL),
(81, 'fernando.gusikowski', 'reed.bechtelar@gmail.com', '$2y$10$QW.8Mz/yQHXCSP10B418P.Ywz8X6E38e44XVwdN8PXtCzmF6CqgbS', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Aric', 'Wilderman', '936-598-4489 x06', 1, NULL, NULL),
(82, 'may.kovacek', 'margarita.heaney@gmail.com', '$2y$10$iDFq8xzrNS/dFNK9v.hrNeInWymA9lwhFCsSp1qJedJkwh9WNgqI2', NULL, '2017-05-07 06:34:34', '2017-05-16 07:50:19', 7, 'Haley', 'Maggio', '+1.352.931.8793', 2, 5, 1),
(83, 'dolly.walter', 'ftreutel@hotmail.com', '$2y$10$a2LE2mnxEbh0DF6Z4t5VoeuG.z/WJH1JJUXbHRZIaYoyhkkmMkNfa', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Junior', 'Rosenbaum', '723-668-4417', 3, NULL, NULL),
(84, 'eliezer.lindgren', 'lharris@yahoo.com', '$2y$10$uGWW8yrKky2q772Dc2JduOMyhj3YI15t7sUbRZvrooT0YjIpSaINa', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Rusty', 'Raynor', '429-279-4432 x09', 4, NULL, NULL),
(85, 'effertz.leo', 'sam83@kuhlman.com', '$2y$10$d//NOY3P9ZPV6zDZeesKsOOW355xA450dUhU7AMd0kP4Yn3MB5SAK', NULL, '2017-05-07 06:34:34', '2017-05-07 06:34:34', 1, 'Carmelo', 'Klein', '(990) 315-8925 x', 5, NULL, NULL),
(86, 'marcella89', 'jason.mcglynn@hotmail.com', '$2y$10$jcT6G.fg/9De5Iofsfq92.VEszbhJcUq8wY4133sm.uidh9LaeLAe', NULL, '2017-05-07 06:34:34', '2017-05-16 07:50:51', 6, 'Clyde', 'Kertzmann', '390.542.8109', 6, 6, 1),
(87, 'eleanora28', 'hulda.lind@hotmail.com', '$2y$10$SAX7cUO.vPOyM9bikRJa.u6HMRJElF.q7AMU8s8d/fsm71VzH09k2', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Allen', 'Mayert', '+1-874-454-4050', 7, NULL, NULL),
(88, 'erica.carter', 'jessy.stroman@zboncak.biz', '$2y$10$q1N23iDoGymo0AaUv0JM8uJtF8exyt7hto/5OLPAr5Jd2CGrmVYw.', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Ernie', 'Luettgen', '272-442-6864 x97', 8, NULL, NULL),
(89, 'alvina.borer', 'rempel.krystal@hyatt.com', '$2y$10$164pBM600O1TS2X2zg./yOxWq2dy25H/FPAbTiOBZ8nxErqZYrBmu', NULL, '2017-05-07 06:34:35', '2017-05-16 07:51:41', 5, 'Matteo', 'Cassin', '(265) 976-8206 x', 9, 7, 0),
(90, 'crona.laurine', 'jhammes@ziemann.org', '$2y$10$JVJyMeo2atZf5JBVH9Oo8utzowWJdZ2BETPKPJI1PwY8.iTJ6hbWO', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Jedidiah', 'Cassin', '(445) 927-3314', 10, NULL, NULL),
(91, 'rebeca98', 'lottie76@ward.com', '$2y$10$SjUyxfYK10YQdiPhv51LHuuGyDcMYoIFRyu/f1ZCEjcfLbHcB8iWu', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Jovan', 'Terry', '837-369-9260 x98', 1, NULL, NULL),
(92, 'molly76', 'hhammes@yahoo.com', '$2y$10$7wI9IFbhUs7fJBubb17H1.9wkOHGQcLZQj4g5hzPUXoXz1k7FpkZK', NULL, '2017-05-07 06:34:35', '2017-05-16 07:50:19', 6, 'Aaron', 'Leffler', '632-808-2119 x01', 2, 5, 1),
(93, 'dillan45', 'pacocha.laron@swaniawski.com', '$2y$10$FrnE4FqZNgHYk0HY5xu3be4fYTF88UCQB5Mea4NyWfLmV9Xizza1O', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Buster', 'Hackett', '413-943-5345', 3, NULL, NULL),
(94, 'sigurd27', 'trantow.marie@king.com', '$2y$10$ccpN0DXVSfji9HhrQmdyi.ARza92brnaC5nWocz8VsnXr80yjk1Pa', NULL, '2017-05-07 06:34:35', '2017-05-15 09:08:27', 7, 'Maximilian', 'Frami', '+1.995.517.0026', 4, 3, 1),
(95, 'weldon01', 'mckenzie33@hotmail.com', '$2y$10$t/sQck5IlAk913F861IMleSUEup1VnsY8q0A06MF8AlSXO00n1F62', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Reece', 'Flatley', '385.367.5452 x39', 5, NULL, NULL),
(96, 'gerhard52', 'ole.botsford@gmail.com', '$2y$10$jZrC28NnyodKgOX9rdNEYeyBdqZfWAfgifyvU75hNSR/cwuH8wzG2', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Arno', 'Stamm', '341-502-7426', 6, NULL, NULL),
(97, 'kulas.bridget', 'hrunolfsson@gmail.com', '$2y$10$RSyKzIqVwI3nEvWhfg.ymevk.L1c84bP9917iVitb3ZKwbotzfG5O', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Henry', 'McCullough', '415.377.6280', 7, NULL, NULL),
(98, 'vkohler', 'itzel.ledner@gmail.com', '$2y$10$zudFOejDVGFd5CQGYrduiu3bjNHRykCBhr76GRsy9pEGXcv7Ecxfy', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Tyrique', 'Jacobi', '1-990-299-3390 x', 8, NULL, NULL),
(99, 'areinger', 'dorris.mann@gmail.com', '$2y$10$oZm2/LNmyy1vdBthZ6Rn4ePAHQkHOPBTltXVU2XF7i9gxMQ0BUw1.', NULL, '2017-05-07 06:34:35', '2017-05-16 07:51:41', 7, 'Markus', 'Hodkiewicz', '+1-210-446-3911', 9, 7, 1),
(100, 'bernita49', 'dpollich@yahoo.com', '$2y$10$awS3xgh41IbIoZLhfbDmf.E6N3JGu7KiawOVZgw/wVUr9wt4K5FSq', NULL, '2017-05-07 06:34:35', '2017-05-07 06:34:35', 1, 'Remington', 'Padberg', '780-768-9955 x55', 10, NULL, NULL),
(101, 'volkman.ralph', 'welch.cade@yahoo.com', '$2y$10$14C6KVMhFZgX/HnrNV7X0OYmUBXQWMlZmwPNxX3nhZLPi6cC2ZtQ2', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Wilber', 'Beer', '(923) 888-4473 x', 1, NULL, NULL),
(102, 'wanda65', 'heller.selena@hotmail.com', '$2y$10$hBwOLedXXUB4JW2JlOnPVOE8xm9Q2TrS9W2FgyRXx9suZ.u21R35.', NULL, '2017-05-07 06:34:36', '2017-05-15 09:08:01', 5, 'Hassan', 'Abbott', '+1-583-658-0635', 2, 2, 0),
(103, 'esteban.green', 'lakin.gust@yahoo.com', '$2y$10$xBv/nh9qTRkdpkBnHWKEG.6s5JWXsQK69N7EP.FnAUxD.OHqJP4cW', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Braxton', 'Metz', '640-428-8585 x84', 3, NULL, NULL),
(104, 'dashawn.wyman', 'simonis.jacinthe@roob.com', '$2y$10$hBPuJCMpdY9vByI0F.xvsuiOB1zwIfX0fw.xcAOjMuflGnk.82Qta', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Brayan', 'Roberts', '452-482-9450', 4, NULL, NULL),
(105, 'lesley96', 'colt12@gmail.com', '$2y$10$T8yYQrCXC1uUBwGGmRA5C.Nn3cKwrwuottG7X0JDUkE72R6Cn4/iC', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Dameon', 'Kuhlman', '354-986-8359 x22', 5, NULL, NULL),
(106, 'murray48', 'rebeka.turcotte@wyman.com', '$2y$10$IDDuFTiFZ57bjquPr3CCuunbkBf/H7uyJKHvIGywtj2jw.e2KFAke', NULL, '2017-05-07 06:34:36', '2017-05-15 09:08:52', 7, 'Gunner', 'Carter', '541.810.3646 x81', 6, 4, 1),
(107, 'fbartoletti', 'douglas.janice@marquardt.com', '$2y$10$.Fo1dT22chyTQUACLMTPXeFYiaiUJSDSkLy6BOQeZSDlNJe0PKyia', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Bernardo', 'Waters', '(434) 555-7594 x', 7, NULL, NULL),
(108, 'mike.lebsack', 'smitham.jennings@hotmail.com', '$2y$10$Jluq5pccBKCWfs5YsTqaJuo7iMCRjmT.tLy7t8Xb4F1uZfuOLUZnK', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Bryon', 'Gerhold', '+1-572-912-1789', 8, NULL, NULL),
(109, 'purdy.gwendolyn', 'collins.braeden@gaylord.org', '$2y$10$17yXhAGWlVlHNsggOniALOFURxrzsgE1gB5TrPNL.ktFzhmbFVM1S', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Fred', 'Murray', '(672) 248-9005 x', 9, NULL, NULL),
(110, 'raquel06', 'reinger.amy@stamm.net', '$2y$10$WD5ga/dAF2jufkP3IlMMPOJj4gRyPJF5UXj2DX.BFx1nYesfUOSJm', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Gus', 'Strosin', '1-526-475-0489 x', 10, NULL, NULL),
(111, 'zrowe', 'feest.nash@renner.com', '$2y$10$edKwzWdmCXTOEqcpGb3PSOYjjjf3ZfsgqYiZV4Lyjtdw/4GF2bBEq', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Westley', 'Reichel', '+1-409-495-1959', 1, NULL, NULL),
(112, 'nick41', 'mandy58@morar.biz', '$2y$10$.1O5P8ct.hHnJm1WYbgZeu.85.5pjhBYIwmWNlOvfBSPE2keWm5JK', NULL, '2017-05-07 06:34:36', '2017-05-15 09:08:01', 6, 'Rusty', 'Armstrong', '+1-505-839-3353', 2, 2, 1),
(113, 'okeefe.keon', 'simone.daugherty@grady.biz', '$2y$10$111.XWdTEpEDWB71E13FTeg31lhRXz.0Z8Us1DFqtywbqZk1Y.Z5u', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Ansley', 'Hand', '+13249941810', 3, NULL, NULL),
(114, 'mckenzie.block', 'kshlerin.marlene@hotmail.com', '$2y$10$drBgfvt7tgSjpdf16WU.leX8MkfrNO.wZFq03zuZ5NEIFA19Dk.xe', NULL, '2017-05-07 06:34:36', '2017-05-07 06:34:36', 1, 'Terence', 'Stoltenberg', '975-996-2030', 4, NULL, NULL),
(115, 'may.senger', 'tania.collins@hotmail.com', '$2y$10$3kFThGlvpMnTqOyRe3TKIuew77aE7Ojqw4rs0vNPP6KIZDgM9ihP6', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Brandt', 'Auer', '+1 (393) 256-538', 5, NULL, NULL),
(116, 'durgan.opal', 'elvera.swift@gmail.com', '$2y$10$eoswSWLsMAT50bzas5Ie1e8Ktw8tO8eJNUGIhwxqCagZT3fLv45q6', NULL, '2017-05-07 06:34:37', '2017-05-15 09:08:52', 7, 'Dorian', 'Feil', '870-713-5654 x68', 6, 4, 1),
(117, 'yframi', 'hudson.heidenreich@yahoo.com', '$2y$10$dJ1Q4M9SHodrAhZU8soR/.bL2AaC68xGXG953dTQEbyO19CYHDYBK', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Erick', 'Wilkinson', '485.788.7192 x16', 7, NULL, NULL),
(118, 'ahmad47', 'dooley.sophie@keebler.info', '$2y$10$sbmhrLlwEkzZ80LkjL8xP.SRzrPr8GTeox3ylazx5QWDRAdjWZ95K', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Levi', 'Raynor', '(941) 446-7119 x', 8, NULL, NULL),
(119, 'ella.grant', 'jefferey.dickinson@pfeffer.com', '$2y$10$HEYU60wABYHfg4Tcuq2LMeWwS.ubMOgX7FfdevL1UxydjA6jbtWu6', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Muhammad', 'Sawayn', '969.719.6076', 9, NULL, NULL),
(120, 'ismael.carter', 'zula.sauer@spencer.biz', '$2y$10$apzBoGmRi7pP7n6hVlbTheY/7rX5alF/Ot76XAN/J3U52K1ArOgGm', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Miller', 'Effertz', '335.818.4514', 10, NULL, NULL),
(121, 'torphy.kayley', 'einar47@hills.biz', '$2y$10$tn4S.bP6VlcSmmMfblg31.XF5FZA0dHjy5PIP85Epnq38EQX0p1h2', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Carmel', 'Kuvalis', '982.742.1403 x74', 1, NULL, NULL),
(122, 'tyree.wilderman', 'rshanahan@hotmail.com', '$2y$10$5hluoVOV75hb1SUkk/ijOun0F.2y/AyhaSJSqqnrJ1QpmdWuMe2Qq', NULL, '2017-05-07 06:34:37', '2017-05-15 09:08:01', 7, 'Ruben', 'Goldner', '1-632-523-3898 x', 2, 2, 1),
(123, 'pouros.deangelo', 'nhegmann@hotmail.com', '$2y$10$vchYS4Qi44Y/W77YezH3vumnemR2TOMu2zTpBMjPywVJvXWlP7s5G', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Hobart', 'Grimes', '767.331.0258', 3, NULL, NULL),
(124, 'kurt.bergnaum', 'casper.clinton@gleichner.org', '$2y$10$bpWanmE.RprRzLAnTLgQcemlCco4jQpJ0fDNmEw2LATxo5hbPz4By', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Arvel', 'Wolf', '732-806-4486 x65', 4, NULL, NULL),
(125, 'xswaniawski', 'mollie.steuber@okon.org', '$2y$10$IwCMKFNdPPz0Fq03s7eUqudi17aw61eZA5ODaxUM6kJuh.G5PeOxW', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Fritz', 'McClure', '(590) 587-7671 x', 5, NULL, NULL),
(126, 'angelo01', 'steuber.justus@yahoo.com', '$2y$10$FW3WGLWI3zlPvz71ZtWAFe9oH5SWFLBuIXdYMsHcF33yRt6B1Nu5C', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Geo', 'O''Kon', '635-756-5247', 6, NULL, NULL),
(127, 'kenna08', 'aniya.treutel@walter.biz', '$2y$10$NVaHKLw8/xXOl6kc5UCjAOMTQKkZFwoNlqENsZVraFLu8PqSohgr2', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Brice', 'Harvey', '1-883-423-6441', 7, NULL, NULL),
(128, 'briana76', 'nfay@reynolds.com', '$2y$10$TW/zeN8sVwQZ.NY6LLByhuBwzkcTsTpxG5XaTYNAgzWotn6s/zfAu', NULL, '2017-05-07 06:34:37', '2017-05-07 06:34:37', 1, 'Wayne', 'Lang', '608-913-0041 x27', 8, NULL, NULL),
(129, 'prosacco.allison', 'xlarkin@yahoo.com', '$2y$10$rcxvcTWJ.OJ2y.C85BwwiOtTNWOVKNEl8xpcV218nCgmBtDZfxVO2', NULL, '2017-05-07 06:34:38', '2017-05-16 07:51:41', 7, 'Layne', 'Larkin', '214-244-1116 x34', 9, 7, 1),
(130, 'blehner', 'jbartell@schroeder.net', '$2y$10$3Uf6rndZO2bFi188ESiv5eahNfe9roccjhW0wE3uYAmJyY/KQjkpi', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Nelson', 'Mohr', '+16106190067', 10, NULL, NULL),
(131, 'elsie.medhurst', 'bridget.parker@gmail.com', '$2y$10$1aFnvuzuoFeyJIydcobYx.AtrT8iJgO1PzQh3x8M6Wd0cWhe1Vl3y', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Marcel', 'Kuphal', '+1 (520) 324-648', 1, NULL, NULL),
(132, 'georgiana83', 'ncorkery@hotmail.com', '$2y$10$mr9g4NA/yH8Kv2SCzf1OVeuUL1TAjn9YlztdtviqnOBx5rhNSazaa', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Colten', 'Rippin', '1-754-928-9546 x', 2, NULL, NULL),
(133, 'mariano.langosh', 'aaliyah86@carroll.org', '$2y$10$djmmNObIvFzsc6bsYPVZwOrliyBzrB9xn5jAlRJfOoToMqYxLq6kK', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Toni', 'Mante', '1-926-399-5132', 3, NULL, NULL),
(134, 'caden.bartell', 'jimmie.hamill@hotmail.com', '$2y$10$KAvg5XH1dyC.W51C7XgrTehwPiotte7mZWEGE40JTnzn6f1nmKK/G', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Ola', 'Haag', '+1.257.647.1073', 4, NULL, NULL),
(135, 'amos.reilly', 'ibecker@bailey.net', '$2y$10$jgI8AM/QLQCL9p9FiWe2Tuf42ipHlh4ieY8UE9SvOgfJIXATcz83a', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Cole', 'Kunze', '(391) 344-7009', 5, NULL, NULL),
(136, 'maurice98', 'yledner@hotmail.com', '$2y$10$M.8xWxfDaGMeXWxEuBagyuTBD6FM2htDWg.VGORWO.e9w0jgGhbsq', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Jordan', 'Tillman', '1-781-587-1558', 6, NULL, NULL),
(137, 'obergnaum', 'baron.zieme@yahoo.com', '$2y$10$bUbiG4VBolx77WuBLtOsBe9R2Hi5zOT9IjthLdB7t3ZqX5ksuFnc2', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Curtis', 'Hilll', '(232) 923-1383', 7, NULL, NULL),
(138, 'sbotsford', 'kub.ferne@gmail.com', '$2y$10$XLXYETOGoyGgC6iBTnkPPejbbyGXOPsLV7lDOA8cVtFcciW/sL2K.', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Buck', 'Bayer', '569.741.0093 x92', 8, NULL, NULL),
(139, 'novella.hickle', 'boyer.lizzie@denesik.org', '$2y$10$uK2eceWvjmjOUNkTDAdl/ej8sn7zLJZAbs.0K8liQPwOHuFFDBJy.', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Ewald', 'Padberg', '+1 (661) 272-267', 9, NULL, NULL),
(140, 'modesto.howell', 'vhammes@hotmail.com', '$2y$10$sMrotCunJyJELR9VVPnYX.xx9svAjL49tsk.77NNTd6dcUw6U3ikS', NULL, '2017-05-07 06:34:38', '2017-05-07 06:34:38', 1, 'Benedict', 'Hegmann', '+1.590.460.7731', 10, NULL, NULL),
(142, 'p13man-5', 'mail@email.com', '$2y$10$GlpgXd459dop4yBYzsYy.OV9f.EaQ.spxd3ocWEzdG6YRVOaFkkTS', NULL, '2017-05-16 12:59:42', '2017-05-16 12:59:42', 1, 'Johnny', 'King', '', 8, NULL, NULL),
(143, 'p13man-6', 'jane@mail.com', '$2y$10$TM2zD1U8DJOiJSBghfdvAOdKpwh23TnWFZ0F2TVptVjNnJMVcPj.u', NULL, '2017-05-16 13:01:54', '2017-05-16 13:01:54', 1, 'David', 'Rebel', '', 7, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`permission_id`,`user_id`,`user_type`);

--
-- Indexes for table `project13s`
--
ALTER TABLE `project13s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_organization_id_foreign` (`organization_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `project13s`
--
ALTER TABLE `project13s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
