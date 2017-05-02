-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 06:29 AM
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
('2017_05_01_091958_add_next_project13_id_to_settings', 1);

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
(1, 'Feil and Sons', '1498 Braulio Extensions Suite 088', '', 'West Trevahaven', 'TX', '14110-8450', '720-936-9233 x67568', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(2, 'Denesik, Murphy and O''Connell', '54133 Rowe Bypass Suite 264', '', 'Lillaborough', 'TX', '82197-1481', '(415) 894-9967 x77010', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(3, 'Barton Inc', '59619 Kautzer Flat Apt. 191', '', 'Port Bruce', 'TX', '59520-1577', '+1 (214) 492-1761', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(4, 'Haley-Rolfson', '4865 Jackie Canyon', '', 'Velmaport', 'TX', '32920-8060', '591-215-4062 x062', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(5, 'Wiegand, Jones and Lind', '224 Rubye Shores', '', 'McKenzieland', 'TX', '75771-1214', '864-204-0342 x9018', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(6, 'Blick LLC', '72268 Kshlerin Mews Suite 052', '', 'Kuhnside', 'TX', '89352', '947.822.1157', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(7, 'Kuhic, Wolff and Gutkowski', '46616 Mertie Highway', '', 'Bartonborough', 'TX', '08152-8640', '275-581-5458 x8500', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(8, 'Muller and Sons', '65766 Greyson Mount', '', 'Port Kacey', 'TX', '90152', '505-539-8754', '', '2017-05-01 14:47:34', '2017-05-01 14:47:34', NULL),
(9, 'Stark, Lesch and Tillman', '633 Elvis Forges', '', 'Corwinshire', 'TX', '98822', '+1 (526) 455-9037', '', '2017-05-01 14:47:35', '2017-05-01 14:47:35', NULL),
(10, 'Eichmann-Morar', '64806 Smith Court Apt. 433', '', 'Hacketttown', 'TX', '48893', '987.357.2168 x02109', '', '2017-05-01 14:47:35', '2017-05-01 14:47:35', NULL);

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
(1, 6, 1, '2017-05-02 06:39:53', '2017-05-02 06:39:53'),
(2, 3, 1, '2017-05-02 06:42:27', '2017-05-02 06:42:27'),
(3, 2, 2, '2017-05-02 06:43:08', '2017-05-02 06:43:08'),
(4, 5, 3, '2017-05-02 07:29:29', '2017-05-02 07:29:29'),
(5, 8, 4, '2017-05-02 07:29:51', '2017-05-02 07:29:51'),
(6, 5, 5, '2017-05-02 08:38:13', '2017-05-02 08:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(0, '[None]', NULL, NULL),
(1, 'District Administrator', NULL, NULL),
(2, 'Organization Administrator', NULL, NULL),
(3, 'Black Hat', NULL, NULL),
(4, 'White Hat', NULL, NULL),
(5, 'Blue Hat', NULL, NULL),
(6, 'Yellow Hat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `next_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `next_project13_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `next_user_id`, `created_at`, `updated_at`, `next_project13_id`) VALUES
(1, 5, '2017-05-02 06:39:53', '2017-05-02 08:38:13', 6);

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
(12, 'dawn.hessel', 'yzulauf@kemmer.net', ':ML)|GRNWw=lN}Ik(', NULL, '2017-05-01 14:50:34', '2017-05-01 14:50:34', 0, 'Jaquan', 'Romaguera', '226-383-2350 x38', 1, NULL, NULL),
(13, 'ludwig.schultz', 'marley.schoen@gmail.com', '%ig.bj,Ma4T:q91"', NULL, '2017-05-01 14:50:34', '2017-05-01 14:50:34', 0, 'Stephen', 'Witting', '(938) 703-2234 x', 2, NULL, NULL),
(14, 'darren06', 'kohler.marcellus@gmail.com', 'fN#E|Ok/@l$65Qq;&k', NULL, '2017-05-01 14:50:34', '2017-05-02 06:42:27', 6, 'Nasir', 'Hayes', '493.854.1866', 3, 2, 1),
(15, 'dorris06', 'antonetta.renner@schmeler.com', 'K+u.+in}Qv`P=_1=w.', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Elroy', 'Friesen', '934.875.5572', 4, NULL, NULL),
(16, 'brekke.amari', 'cordell05@hotmail.com', 'EF=:i^l+N', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 6, 'Weldon', 'Schmidt', '(483) 419-0255', 5, 6, 1),
(17, 'pgreen', 'turcotte.prudence@hickle.com', 'o[P4<i]Gf&F([0N', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Fletcher', 'Littel', '1-280-865-2578 x', 6, NULL, NULL),
(18, 'uhackett', 'lisa68@yahoo.com', 'az`Hzjp&]V%C$O&:', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Furman', 'Berge', '337-955-7077 x67', 7, NULL, NULL),
(19, 'bernier.isadore', 'kozey.maribel@gmail.com', '9K|o4TwHOptc;bSz', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kory', 'McKenzie', '689.974.8622 x27', 8, NULL, NULL),
(20, 'kling.whitney', 'daren.lockman@stroman.net', 'fC*/j!xR5L)Sxic$%', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Myron', 'Schamberger', '(465) 514-7872 x', 9, NULL, NULL),
(21, 'christ19', 'jenifer.greenholt@gmail.com', '$L2O)f9bAL#pDI''u', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Weston', 'Lesch', '579-560-8648 x44', 10, NULL, NULL),
(22, 'mariana.harris', 'stiedemann.rollin@gerlach.biz', '!/-_Cm', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Elvis', 'Koch', '507.687.1175', 1, NULL, NULL),
(23, 'arlie.roob', 'bart.harber@eichmann.net', 'g9j{Q<c-7.sQ>OjJDV', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Claude', 'Williamson', '725.245.1875', 2, NULL, NULL),
(24, 'terrance.feeney', 'zieme.kailyn@thompson.biz', 'Fxw=m`OUO|G9EF"Q5S)', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Gage', 'Williamson', '+1-746-829-9542', 3, NULL, NULL),
(25, 'hyatt.kirstin', 'jennie57@stehr.info', ';rCb2T26', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Miller', 'Muller', '+1.517.687.6206', 4, NULL, NULL),
(26, 'kayden.pagac', 'jennings.pagac@wiegand.net', 'TqU;4B.', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 5, 'Omer', 'McGlynn', '267-453-5861 x92', 5, 6, 1),
(27, 'garland35', 'flossie77@lind.info', 'ZEtoFP|;(;q^I:F', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Fernando', 'Kunde', '1-323-514-2945 x', 6, NULL, NULL),
(28, 'sonia.hessel', 'sprosacco@hotmail.com', '\\Mr)Ryz8=I}owQz''}Sss', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Josh', 'Marquardt', '(623) 270-8032 x', 7, NULL, NULL),
(29, 'vladimir.ritchie', 'norma58@yahoo.com', 'q>8Sss9sF', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Alexandro', 'Pollich', '(336) 251-8086 x', 8, NULL, NULL),
(30, 'sarah05', 'paxton.jacobi@hotmail.com', 'rL+XO*HUE2I8', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Ezekiel', 'Murray', '+16673581967', 9, NULL, NULL),
(31, 'hansen.carmela', 'oceane.heathcote@yost.com', 'FC;QC+}', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Vincent', 'Schmidt', '(315) 205-6109 x', 10, NULL, NULL),
(32, 'austen65', 'madge19@rohan.com', '<E|w;YfLR;s#h)m+}T', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Lesley', 'Lehner', '+1 (486) 364-750', 1, NULL, NULL),
(33, 'jkuhn', 'gus.hauck@monahan.com', 'AP=Qv.~4%C!ok', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Vidal', 'Rutherford', '(524) 773-5743 x', 2, NULL, NULL),
(34, 'barry.willms', 'fahey.lincoln@daugherty.com', 'd?sXs3nW(E\\S"', NULL, '2017-05-01 14:50:35', '2017-05-02 06:42:27', 6, 'Torey', 'DuBuque', '481.403.6725 x71', 3, 2, 1),
(35, 'kacie.rogahn', 'cecelia93@gmail.com', '-<Sv?''f(}Oq', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Irving', 'Nader', '1-263-459-5885 x', 4, NULL, NULL),
(36, 'ekulas', 'zaufderhar@ledner.com', 'lmaYQ84}W^+:-O', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:29', 5, 'Ewald', 'Cummerata', '1-832-624-3770 x', 5, 4, 1),
(37, 'marks.tristian', 'laurianne72@herman.biz', '&Y-#:Yc;.ACr#L', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Brooks', 'Grimes', '1-507-460-8782', 6, NULL, NULL),
(38, 'arlene62', 'purdy.hans@hotmail.com', '7E0guW\\/1=''>D5t', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Dewayne', 'VonRueden', '+1 (884) 830-094', 7, NULL, NULL),
(39, 'kenneth.paucek', 'ziemann.thora@blick.net', 'MU:t[pO%?', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:51', 6, 'Jarred', 'Kozey', '979-552-8676', 8, 5, 1),
(40, 'cummings.lempi', 'augustine71@mcglynn.com', 'g71-6PLR', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Owen', 'Herzog', '594.379.9987', 9, NULL, NULL),
(41, 'rebeka.jacobson', 'levi97@rempel.com', '<{ft8o!', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Mack', 'Daniel', '419-526-0112 x63', 10, NULL, NULL),
(42, 'mueller.samson', 'stephan23@lemke.com', 'QJD?Q7"+Pbf5w}8X-g', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Elmo', 'Weimann', '392.589.9570', 1, NULL, NULL),
(43, 'mstracke', 'armand.swift@schoen.info', 'V}-!hp:a,Wc^E,zL@b', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Deshaun', 'Medhurst', '(726) 534-4713 x', 2, NULL, NULL),
(44, 'zane25', 'elisha15@hotmail.com', 'U)-EGRJ', NULL, '2017-05-01 14:50:35', '2017-05-02 06:42:27', 5, 'Zachery', 'Cruickshank', '(251) 769-9579', 3, 2, 1),
(45, 'gottlieb.bryon', 'julio.bednar@huel.com', 'lj}[p_n9W', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Terrence', 'Runte', '921-363-8634', 4, NULL, NULL),
(46, 'nikolas38', 'jerrod.auer@gusikowski.org', 'h6.A+p;|''AM}V7C7Ew2y', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 4, 'Lisandro', 'Koch', '639.432.4066', 5, 6, 0),
(47, 'deondre42', 'jharvey@harber.net', 'FeeWyA&Ow?-', NULL, '2017-05-01 14:50:35', '2017-05-02 06:39:53', 6, 'Alfonso', 'Fahey', '+13839240264', 6, 1, 1),
(48, 'bkiehn', 'rau.katelyn@gmail.com', 'Wy}(.\\k-OlXQ', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Jadon', 'Dare', '(228) 855-4679 x', 7, NULL, NULL),
(49, 'ymitchell', 'chelsey.lynch@gmail.com', 'HYd}~F''XEW<D!A^Jb1', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Mario', 'Powlowski', '342-774-1569', 8, NULL, NULL),
(50, 'jenkins.rylee', 'ystreich@yahoo.com', '^7yjuKAx', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Aurelio', 'Wunsch', '(726) 615-1246 x', 9, NULL, NULL),
(51, 'barton.konopelski', 'lang.lillian@wintheiser.com', '-yA//JV', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kale', 'Reichert', '1-363-848-2831 x', 10, NULL, NULL),
(52, 'donny26', 'moshe04@hagenes.com', '%II)7wT*8GIRIj,+2', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kolby', 'Aufderhar', '790-860-3003 x12', 1, NULL, NULL),
(53, 'ujenkins', 'rkuvalis@hirthe.com', 'F<,9}W-', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Darion', 'Pfeffer', '1-203-762-7768', 2, NULL, NULL),
(54, 'elliott.okon', 'anabelle.white@welch.net', '}gK={P-?', NULL, '2017-05-01 14:50:35', '2017-05-02 06:42:27', 6, 'Woodrow', 'Franecki', '(647) 697-9474', 3, 2, 1),
(55, 'oreilly.russel', 'eduardo85@gmail.com', 'tHur@}h>S6$e739o>nO', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Davonte', 'Bogan', '1-398-956-6038', 4, NULL, NULL),
(56, 'elna.streich', 'bode.maybell@goodwin.org', 'u+O{_qkh;fkFWeackY', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:29', 6, 'Friedrich', 'Effertz', '+1-914-927-0641', 5, 4, 1),
(57, 'cturcotte', 'macejkovic.leo@funk.com', ')wWRf8%', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Garfield', 'Schulist', '525-348-9385', 6, NULL, NULL),
(58, 'leonora50', 'renner.sheridan@hackett.com', 'kha''z3WW', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Simeon', 'Kautzer', '1-649-701-5347', 7, NULL, NULL),
(59, 'kole.pfannerstill', 'waufderhar@little.net', '7\\)%Icu''+QE&xv=Cvd`T', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Delmer', 'Ziemann', '(471) 379-2602 x', 8, NULL, NULL),
(60, 'fay.josefa', 'magdalena35@gorczany.biz', '\\PSpkiEq8)^y//P5|g', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Roberto', 'Emmerich', '365-397-2180', 9, NULL, NULL),
(61, 'vdamore', 'quigley.marilie@yahoo.com', 'zUp-Kb.yeH', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Maxwell', 'Koch', '(847) 254-6452', 10, NULL, NULL),
(62, 'branson88', 'carmelo.bayer@hotmail.com', 'J@9z<r59Xo~")', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Alford', 'Morar', '+1-427-628-2824', 1, NULL, NULL),
(63, 'whickle', 'elian37@yahoo.com', '%l7:d@3{R{|~WD\\`o_(?', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kiley', 'Kuphal', '+18844405448', 2, NULL, NULL),
(64, 'schultz.kristy', 'zmclaughlin@yahoo.com', 'aT_{.W>]kJ}Uz)g(MX1?', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Rico', 'Legros', '(302) 337-1972 x', 3, NULL, NULL),
(65, 'justina.cummerata', 'adelia85@yahoo.com', 'SPK{kEPz/H(Pn{A-1', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Orville', 'Schmidt', '(615) 610-8542 x', 4, NULL, NULL),
(66, 'jaeden77', 'wgrant@gmail.com', 'tt|pMh'']Nj"', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 5, 'Isaias', 'Shields', '+17132711431', 5, 6, 2),
(67, 'xrippin', 'dibbert.lynn@hotmail.com', '[/S9~S(st=', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Emory', 'Hudson', '(368) 942-7288 x', 6, NULL, NULL),
(68, 'jasen.hane', 'mpacocha@cartwright.com', 'lUE~:Y}h_fUU*cm', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Karl', 'Crona', '1-882-414-5360 x', 7, NULL, NULL),
(69, 'kaela66', 'elnora24@hotmail.com', ':{8gyMk?3', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Hipolito', 'Runolfsson', '+14483510577', 8, NULL, NULL),
(70, 'ykoelpin', 'shields.arch@yahoo.com', 'j{I>nqtJbT_?3', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Alphonso', 'Rohan', '253-868-1494 x56', 9, NULL, NULL),
(71, 'keegan.thompson', 'shoeger@yahoo.com', '13vC4MYqe|hV7<E>q', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Ray', 'Friesen', '1-843-553-6530 x', 10, NULL, NULL),
(72, 'verner.goodwin', 'lindgren.stephan@hotmail.com', 'FWAeOjn(vxFbQ`y', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Chelsey', 'Marks', '325-750-9540 x62', 1, NULL, NULL),
(73, 'hagenes.jada', 'maye.schuppe@hand.com', 'lVvx^5M"k^YP\\Vi', NULL, '2017-05-01 14:50:35', '2017-05-02 06:43:08', 4, 'Giovanny', 'Block', '542-578-8977 x36', 2, 3, 0),
(74, 'turner.levi', 'conner.herman@waelchi.com', 'C4;;bY;7V<uDGMD0~', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Clark', 'Ondricka', '1-815-389-6121', 3, NULL, NULL),
(75, 'santos.hermann', 'mshanahan@shields.com', '6PKx$2<~P', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Orrin', 'Spinka', '+1 (849) 572-855', 4, NULL, NULL),
(76, 'elliot.hayes', 'king.maureen@conn.info', 'hK9;_BEwcV[4.|xZiA7y', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 6, 'Abner', 'Swaniawski', '(950) 998-5365', 5, 6, 2),
(77, 'calista.sipes', 'milton.keebler@hotmail.com', 'Qyl2[Z7^U1L<\\', NULL, '2017-05-01 14:50:35', '2017-05-02 06:39:53', 4, 'Lonnie', 'Abshire', '(851) 817-7194', 6, 1, 0),
(78, 'lynch.casandra', 'leanna.bartoletti@corwin.com', 'v]Zql~VBPUHtd', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Travon', 'Cummerata', '212-797-3991', 7, NULL, NULL),
(79, 'laverna76', 'fsipes@hotmail.com', 'y;-^RPW>Hb_', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:51', 6, 'Beau', 'Kovacek', '(548) 290-2433 x', 8, 5, 1),
(80, 'krajcik.quinn', 'imuller@dibbert.com', 'WG}:Y7_?khqQF8xcu.?', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Randal', 'Paucek', '(370) 965-6443 x', 9, NULL, NULL),
(81, 'fredrick29', 'roxanne.lynch@baumbach.net', '$y?CpaK-5', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Norbert', 'Quitzon', '1-358-936-2853 x', 10, NULL, NULL),
(82, 'russel.elenora', 'angeline.wehner@hudson.net', 'ohxba`', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Scottie', 'Hammes', '1-472-466-4056 x', 1, NULL, NULL),
(83, 'lilliana.lueilwitz', 'roxane55@yahoo.com', 'S#6cs'':suYrpr~+9''d$', NULL, '2017-05-01 14:50:35', '2017-05-02 06:43:08', 6, 'Charles', 'Goyette', '+1-240-209-6962', 2, 3, 1),
(84, 'glenda.sauer', 'emely30@gmail.com', 'y)QnEP', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Harvey', 'Ledner', '1-458-717-3513 x', 3, NULL, NULL),
(85, 'von.marlee', 'kirlin.royce@shanahan.net', '{$i-.tT,85(', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Niko', 'McKenzie', '667.374.8045 x24', 4, NULL, NULL),
(86, 'hudson.ewell', 'roberts.virgil@willms.com', 'v;Wn1=@g}[_uuQIsj', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 6, 'Judson', 'Pfannerstill', '1-502-481-6900 x', 5, 6, 1),
(87, 'nikolaus.anibal', 'kunde.maynard@yahoo.com', 'a{`bfqB+k*LG', NULL, '2017-05-01 14:50:35', '2017-05-02 06:39:53', 6, 'Alexandro', 'Collier', '1-757-442-6249', 6, 1, 1),
(88, 'jhoppe', 'hosea.toy@gleason.com', '8gm5"Js|OC*%YXCj', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Lamont', 'Hickle', '(750) 250-3408', 7, NULL, NULL),
(89, 'bmoore', 'amari.murray@yahoo.com', '*4\\V^v|q8i}fUx', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Lucius', 'Okuneva', '283-429-5571', 8, NULL, NULL),
(90, 'xorn', 'lubowitz.rachel@hotmail.com', '|aBl*r"', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Angus', 'Luettgen', '(282) 989-3719 x', 9, NULL, NULL),
(91, 'clint79', 'rigoberto.wisozk@hotmail.com', '5t08"J~M/H>', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Elroy', 'Franecki', '(239) 567-2439 x', 10, NULL, NULL),
(92, 'alexander12', 'ansel77@gmail.com', 'tm!pr=T~t^(lzCk!x3vD', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Damien', 'Bashirian', '496.587.8896 x47', 1, NULL, NULL),
(93, 'reed.veum', 'schultz.lindsey@hotmail.com', 'o+|Z8yE:;TZ\\', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Johnson', 'Langosh', '702.860.4714 x22', 2, NULL, NULL),
(94, 'mkilback', 'bailey.daisha@wisozk.com', 'faGJ-cx+eWEw', NULL, '2017-05-01 14:50:35', '2017-05-02 06:42:27', 4, 'Vidal', 'Blick', '1-924-431-5666 x', 3, 2, 0),
(95, 'rashawn54', 'laury.howell@hotmail.com', '!$(A}+16x$S-,mY7w.es', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Giovanni', 'Parisian', '(513) 593-3914', 4, NULL, NULL),
(96, 'iwehner', 'zakary30@mann.com', 'HO2Ye"8ovBIjf', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 6, 'Jordy', 'Pollich', '(736) 758-2327 x', 5, 6, 1),
(97, 'ebogan', 'gordon98@hotmail.com', 'tAHK%Ea^,Br~Gt.\\', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Ross', 'Murray', '880-595-5850 x40', 6, NULL, NULL),
(98, 'lolita47', 'estell.conn@bergnaum.com', '''+zjdSpuoVX,vYGw<_u', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Cesar', 'Welch', '1-396-929-1726 x', 7, NULL, NULL),
(99, 'fhegmann', 'feil.luisa@hotmail.com', 'f4pmY{TlUwvC', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Leonard', 'Satterfield', '203-520-5213 x12', 8, NULL, NULL),
(100, 'zkuvalis', 'martine.wunsch@gerlach.com', '`@dG59+m;2a|;VM`1CU', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Davin', 'Breitenberg', '379.534.5722 x35', 9, NULL, NULL),
(101, 'jeremie95', 'bernier.elmira@hotmail.com', '+5rEEv})Y6', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Drake', 'Heidenreich', '1-969-535-2624', 10, NULL, NULL),
(102, 'sabina50', 'dixie.herman@wolff.com', '&\\q/ux-Kn$', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Lindsey', 'Abbott', '906.373.7015 x53', 1, NULL, NULL),
(103, 'osinski.nestor', 'irowe@mayer.info', 'Zz7Ma%<C\\8', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Watson', 'Zemlak', '881-428-7369', 2, NULL, NULL),
(104, 'ebeier', 'lulu.kemmer@simonis.net', '^rvIv@/]tL8jZ,3)?%Q', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Izaiah', 'Jakubowski', '395.708.4756', 3, NULL, NULL),
(105, 'emard.myrtie', 'sdonnelly@mayer.info', 'oqA!O&U', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Trever', 'Dicki', '349-227-0939 x28', 4, NULL, NULL),
(106, 'blaise.klein', 'bartholome.botsford@gmail.com', 'b3BZ_]o&2QF', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:29', 4, 'Art', 'Bergstrom', '324-594-0059', 5, 4, 0),
(107, 'vsporer', 'jany91@wuckert.org', '!R\\,zRTt', NULL, '2017-05-01 14:50:35', '2017-05-02 06:39:53', 5, 'Skye', 'Bogan', '1-905-702-7008', 6, 1, 1),
(108, 'hahn.holly', 'keebler.waylon@yahoo.com', '$C+[A8r["!', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Jesse', 'Crooks', '1-794-259-9492 x', 7, NULL, NULL),
(109, 'alexa12', 'ltreutel@hotmail.com', ']\\EZ;&D\\7*QAcbA!', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:51', 6, 'Amparo', 'Lueilwitz', '726-398-4699 x78', 8, 5, 1),
(110, 'alvera57', 'uzboncak@gmail.com', '8N5=`$]9td|,', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Keyon', 'Nitzsche', '(470) 696-4159', 9, NULL, NULL),
(111, 'larson.quincy', 'elyssa04@carter.org', 'e28F+l;A7t4', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Stanley', 'Yundt', '1-235-627-9251 x', 10, NULL, NULL),
(112, 'trodriguez', 'lmohr@sauer.com', 'P>N*+2Jb\\?>3G3^', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Alejandrin', 'Hoeger', '380.690.0598', 1, NULL, NULL),
(113, 'axel25', 'maribel93@dickens.com', 's\\hXR}>7/{', NULL, '2017-05-01 14:50:35', '2017-05-02 06:43:08', 5, 'Roderick', 'Feil', '293.586.3125 x67', 2, 3, 1),
(114, 'heather.barrows', 'jerrell.greenfelder@paucek.com', '''UOm!G5TvK_''M-', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Lamont', 'Nienow', '+1-681-884-4834', 3, NULL, NULL),
(115, 'kameron72', 'katlyn.crooks@bergstrom.com', '[|$~Km`R;c\\qvk', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Toy', 'Morar', '(778) 912-6991', 4, NULL, NULL),
(116, 'erippin', 'cayla35@hotmail.com', '.7QGMa/I[m]Gx})', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 6, 'Bennett', 'Wiza', '464.297.4659', 5, 6, 2),
(117, 'shields.vicky', 'jensen.schoen@kutch.com', 'B)c&Fb0r/IEu''N', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kurtis', 'Ritchie', '305.287.8979 x60', 6, NULL, NULL),
(118, 'zion.bogisich', 'margarete.stracke@cremin.org', 'TaS8y6>!|)14}#', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Barrett', 'Schumm', '1-302-407-2360', 7, NULL, NULL),
(119, 'stone02', 'baumbach.rogers@schaefer.biz', '\\l{SAC^_@p', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Greg', 'Pollich', '1-235-331-6810 x', 8, NULL, NULL),
(120, 'effertz.jettie', 'darrion.kshlerin@hotmail.com', '~K+z>("{I/E%', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Nils', 'Corwin', '+1-487-898-1488', 9, NULL, NULL),
(121, 'audie90', 'chet.hodkiewicz@gmail.com', 'dvU*X#,va=xPpr', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Jerod', 'Lowe', '849-638-2040 x92', 10, NULL, NULL),
(122, 'rosenbaum.lelah', 'reilly.hunter@yahoo.com', 'Mk65%ip5E[#Q3<lrn', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Sim', 'Strosin', '381.336.9480 x82', 1, NULL, NULL),
(123, 'kirstin80', 'adolphus.gleason@ankunding.com', ')Ic%NIYJ0K', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Braeden', 'Leannon', '+1 (335) 334-715', 2, NULL, NULL),
(124, 'hintz.hadley', 'thansen@yahoo.com', 'y~\\C0uM:qG2[}~F54', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Willy', 'Pacocha', '+1 (782) 881-580', 3, NULL, NULL),
(125, 'brad.rau', 'reilly.cordia@metz.biz', '}JH9<QB#zK}-:&XQPz', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Sherman', 'Carter', '325.642.6582', 4, NULL, NULL),
(126, 'annamarie.bailey', 'shettinger@gmail.com', '[X&l@K\\8f]u', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:29', 6, 'Brent', 'Grant', '613.677.8242', 5, 4, 1),
(127, 'gardner.grant', 'soledad.mohr@yahoo.com', ';x!/lgs^lE', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Alexzander', 'Sporer', '739.897.2406', 6, NULL, NULL),
(128, 'spencer.bernard', 'alyson68@gmail.com', 'W8zkVAkaX&9qGz%,', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kennith', 'Kreiger', '792.381.1208 x93', 7, NULL, NULL),
(129, 'neoma50', 'kayley35@daniel.biz', '?VNKA_$_8?qWXjg<9', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Kelley', 'Reynolds', '705.356.1177', 8, NULL, NULL),
(130, 'kstiedemann', 'ole43@gmail.com', 'i5KB@e_Iy7#Mz', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Gregorio', 'Schowalter', '(660) 941-2201', 9, NULL, NULL),
(131, 'pschultz', 'beau.carroll@yahoo.com', 'iG>sY5>.qD^', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Ellsworth', 'Lemke', '(625) 220-3776 x', 10, NULL, NULL),
(132, 'nleannon', 'rodger71@hotmail.com', 'xLJa5I<t28S''nwtI', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Arthur', 'Barrows', '1-341-621-0213 x', 1, NULL, NULL),
(133, 'abbie.jast', 'kshlerin.augusta@gmail.com', '$JpAMXj}@', NULL, '2017-05-01 14:50:35', '2017-05-02 06:43:08', 6, 'Leland', 'Hilpert', '+1-369-268-5545', 2, 3, 1),
(134, 'ike.walsh', 'becker.frank@hotmail.com', 'Ax,1@ho`X', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Junior', 'Jaskolski', '1-998-710-9108', 3, NULL, NULL),
(135, 'tyreek10', 'ohansen@yahoo.com', 'o3<c.Xk0`m3nR\\L', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Keeley', 'Morar', '+1-725-406-9629', 4, NULL, NULL),
(136, 'gkassulke', 'nathanael10@hotmail.com', '5aD+9d<*|v?-IC', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:29', 6, 'Frederic', 'Klein', '1-921-613-2098 x', 5, 4, 1),
(137, 'barton.buford', 'reta.kertzmann@white.com', 'A0gc)nDo''u*-gnID', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Mohammad', 'Zemlak', '832-568-6999', 6, NULL, NULL),
(138, 'tatum24', 'weston12@hotmail.com', 'Jkd(AHn$&}>PKA', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Brennon', 'Bins', '(758) 422-9790', 7, NULL, NULL),
(139, 'torp.richmond', 'rice.garry@gmail.com', 'H{1-CF:N?:~', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:51', 5, 'Dion', 'Kiehn', '1-254-981-5899', 8, 5, 1),
(140, 'hansen.rod', 'kschuster@kuhic.com', 'Z*5?hu!sB7050l9l<y', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Dax', 'Simonis', '1-768-551-9568', 9, NULL, NULL),
(141, 'mvolkman', 'christop82@yahoo.com', 'm4jg5@;rS&', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Laverna', 'Brown', '231-429-0163 x82', 10, NULL, NULL),
(142, 'isaac.ziemann', 'reilly.karson@baumbach.com', 'Ns4-YNX?6u785', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Nicholaus', 'Cummings', '951-925-4682 x64', 1, NULL, NULL),
(143, 'janis.hahn', 'udubuque@gmail.com', '$/y<EEk8+>yk[S', NULL, '2017-05-01 14:50:35', '2017-05-02 06:43:08', 6, 'Floy', 'Hudson', '(916) 459-5607 x', 2, 3, 1),
(144, 'janiya48', 'howe.chelsie@gmail.com', 'Y+CiMn', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Keven', 'Padberg', '201.619.0211 x38', 3, NULL, NULL),
(145, 'huels.lavinia', 'jwisoky@williamson.com', 'Etv/Bvu3H1D$>', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Jensen', 'Conn', '(317) 771-1340 x', 4, NULL, NULL),
(146, 'kitty.okuneva', 'shyanne78@rath.com', '~]R8,F;^"qh_Mf', NULL, '2017-05-01 14:50:35', '2017-05-02 08:38:13', 6, 'Titus', 'Upton', '1-290-436-9092 x', 5, 6, 2),
(147, 'misty.jacobson', 'russel.demetrius@yahoo.com', 'X`;58&#m[aU]oM.N6"-', NULL, '2017-05-01 14:50:35', '2017-05-02 06:39:53', 6, 'Lucious', 'Bruen', '1-764-239-5522 x', 6, 1, 1),
(148, 'murray.greyson', 'angel07@hotmail.com', 'A/HIw?BX', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Graham', 'Dibbert', '217-315-0384', 7, NULL, NULL),
(149, 'felix.dickinson', 'gisselle94@harvey.com', '+9S\\xnOq@Wh', NULL, '2017-05-01 14:50:35', '2017-05-02 07:29:51', 4, 'Paris', 'Gutmann', '1-612-742-9865 x', 8, 5, 0),
(150, 'zachery54', 'lester96@gmail.com', 'P''+mHrz88', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Archibald', 'Gaylord', '+1-662-928-5395', 9, NULL, NULL),
(151, 'halvorson.susana', 'christopher.thiel@murazik.info', 'P|".$mlo', NULL, '2017-05-01 14:50:35', '2017-05-01 14:50:35', 0, 'Hadley', 'Stracke', '818.926.5523 x48', 10, NULL, NULL),
(152, 'p13man-3', 'mail@email.com', 'password', NULL, '2017-05-02 07:05:47', '2017-05-02 07:05:47', 0, 'Johnny', 'Aadam', '', 7, NULL, NULL);

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
-- Indexes for table `project13s`
--
ALTER TABLE `project13s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `project13s`
--
ALTER TABLE `project13s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
