-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 11:15 AM
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
-- Table structure for table `members`
--

CREATE TABLE `members` (
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
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `first_name`, `last_name`, `phone`, `organization_id`, `project13_id`, `blue_hat_id`) VALUES
(1, 'antoinette24', 'bdaniel@wolf.info', '$2y$10$HIsRe7pjJVfX41jVaXOHHO55peboNJyBTNHitwM0HNUcIEp5Vn8mu', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Kamryn', 'Yost', '1-676-584-7440 x', 1, NULL, NULL),
(2, 'sipes.raven', 'kilback.viviane@hotmail.com', '$2y$10$BYowhdKykdciTTuhtyqo2Oe8S0U6.dRYTg2frfKKR7Yda6inCablO', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Erich', 'Abernathy', '(920) 562-5937 x', 2, NULL, NULL),
(3, 'ashlee.aufderhar', 'steuber.birdie@jacobi.com', '$2y$10$/LToBM9fTE1UgUsJW9l68OxWhsAS3rY8UgqZglbRDczBFLmvCKfxK', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Ahmad', 'Moore', '(596) 504-9305', 3, NULL, NULL),
(4, 'otilia.miller', 'chaya39@gmail.com', '$2y$10$RlebbA10nweCptbzHgnFlOH6.nydXP7qKARvwDKDVnro/E0UUmtyK', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Geo', 'Wisoky', '1-845-826-3357 x', 4, NULL, NULL),
(5, 'fkohler', 'haag.jacinthe@schowalter.com', '$2y$10$/oEU9hwFF.DpbQfrKApXeu8U4mOoiVB4LsuR7WFWT90.ZDjSQeG8C', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Woodrow', 'Kessler', '+1-732-417-7646', 5, NULL, NULL),
(6, 'hayes.baylee', 'daniel.macey@rutherford.com', '$2y$10$K9TKFCNOkdGaaa8FgDiXEerEzuIgVj9qmr4o6pDr5h1M4BPe6.BHu', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Alf', 'Borer', '721.812.1641', 6, NULL, NULL),
(7, 'dooley.bart', 'jerrold.legros@casper.net', '$2y$10$5SDkPToh7eNbw6V46h3wgeEWkrb85uwLvNQrj7HZhTLrBlz4lEy0.', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Darwin', 'Hermann', '934.915.5634', 7, NULL, NULL),
(8, 'hoppe.dock', 'ilind@hotmail.com', '$2y$10$KeMyVp6gd5U9ALuiUypq6ej.w.En/Aj6a.LmjcK/6/9RQqzrSsVym', NULL, '2017-05-22 14:10:44', '2017-05-22 14:12:01', 6, 'Hazel', 'Steuber', '515.843.5975', 8, 1, 1),
(9, 'watsica.brooks', 'lillian.wintheiser@gmail.com', '$2y$10$JdMvDcnEcl1T7o9TTVW5iu6qcVa3NdH7pbLQZYZdLlptmuTRfWmLq', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Rudolph', 'Boyer', '1-438-200-1731 x', 9, NULL, NULL),
(10, 'hoeger.osvaldo', 'bradly.mcdermott@orn.info', '$2y$10$eMN697.eFZpGW/5hUvxpHeEBaA4Vranv9RJT1Ssq9n8Rbpq.iJuH2', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Jason', 'D''Amore', '265.464.1445', 10, NULL, NULL),
(11, 'iromaguera', 'jamil26@gmail.com', '$2y$10$FmPc9ZnFpyf3UQbNpZFZ2.GSqZw5bKPu5R6WpKO2y6derbaqoNsQ2', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Angel', 'Mills', '284-322-3341', 1, NULL, NULL),
(12, 'ydare', 'christine.kuphal@schaefer.biz', '$2y$10$ZqC23f9fI49XgO6knc2IdOSAWRylUvW5QSHrO3hrRh2EQH5lOnROe', NULL, '2017-05-22 14:10:44', '2017-05-22 14:10:44', 0, 'Giovanny', 'Kuhic', '246-471-1037', 2, NULL, NULL),
(13, 'zoe60', 'maud32@hotmail.com', '$2y$10$XeV7NUYn4LVp9e4rSH.cGO4FRElJpIjsTNaSKWR0vX7RGaCmJvqmS', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Bennie', 'Torphy', '823-220-1821', 3, NULL, NULL),
(14, 'kling.mckenzie', 'kip46@yahoo.com', '$2y$10$TMLVZzcBZElyO99qJxN9EO5eCMuf5iJkWZCfj4wrbIJriwRiQ9pxG', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Antonio', 'Orn', '503-776-7576 x06', 4, NULL, NULL),
(15, 'felipa.kozey', 'trudie82@hotmail.com', '$2y$10$DxsnChnBw0WGxVBatlDm.ezYLdZd/S0STngEm07jhQd5FxCyvwjSC', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Kale', 'Boehm', '689.263.2229 x12', 5, NULL, NULL),
(16, 'dominique.pagac', 'wiza.dustin@gmail.com', '$2y$10$aQZRCGQoLpgxdtLYQp6ihuZoYLZA7fOjhIw6e54oa69ndmwKtSg72', NULL, '2017-05-22 14:10:45', '2017-05-22 14:12:50', 5, 'Dock', 'Runolfsson', '(856) 971-9781 x', 6, 2, 2),
(17, 'swehner', 'domenico.grant@gmail.com', '$2y$10$lshwUqGjnBPYxMOSvi.yDey6UGD/ReRieWtOI5ifWTWTbN4tlZDZG', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Maverick', 'Schmitt', '275.767.6487', 7, NULL, NULL),
(18, 'fschmidt', 'anabelle.paucek@gmail.com', '$2y$10$cQpFInDdBd3ovF0kFKIgpuMHR3NgVR.hMPYDCuu8RnGhSOGn4nq6K', NULL, '2017-05-22 14:10:45', '2017-05-22 14:12:01', 5, 'Chet', 'Huels', '+1-938-642-6268', 8, 1, 1),
(19, 'sbreitenberg', 'valentin.hirthe@hotmail.com', '$2y$10$IDtR0vXR5uTB8CFH4cWEseaX/BYc2at0kABP7NBwFpzvcNaaL8.Bq', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Santiago', 'Langosh', '418.364.0035 x18', 9, NULL, NULL),
(20, 'camryn.mann', 'lebsack.cheyenne@weber.biz', '$2y$10$LYd8OxPLFJ/orMrJ1i3a/uuXfyJvGD8cNTAOELWXBUzYDmhUuK5GG', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Vaughn', 'Leuschke', '658.409.0826 x97', 10, NULL, NULL),
(21, 'henriette.mcglynn', 'allison90@yahoo.com', '$2y$10$G/CI.iOUv6gkvBMKTabfbeFObuIoseTE2GSqfoQh6T5V2gAfC0nl6', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Freddy', 'Schultz', '+15072299172', 1, NULL, NULL),
(22, 'blanda.jakob', 'ajacobs@gmail.com', '$2y$10$y5vwRa.udQ.fIfxULvuvzOZnU5AUvmt4iyZoOVoTO3krY4mf0OYxa', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Tyrel', 'Boyle', '+1-768-804-6960', 2, NULL, NULL),
(23, 'heathcote.emmet', 'florine.nikolaus@schneider.com', '$2y$10$WfgCYTPweevDx5GKPjCo9uP7harnY57nfjPvQv.O0.uMgXMIELel2', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Immanuel', 'Streich', '(328) 832-8855 x', 3, NULL, NULL),
(24, 'bernice.olson', 'athena.shanahan@christiansen.com', '$2y$10$AeJ.2SYhtUOl5hG2Z6nu6./nx9JFOzZBiqJazmOKEHC7HzTYxFQRG', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Kolby', 'Stroman', '470-749-0897', 4, NULL, NULL),
(25, 'kay83', 'vallie81@yahoo.com', '$2y$10$fKm0j5f/Qv6sdl0k2WGAM.oIsTWJ2RcIDww7dW8X9HWWpMZkUVW3G', NULL, '2017-05-22 14:10:45', '2017-05-22 14:10:45', 0, 'Stone', 'Terry', '(274) 265-5772 x', 5, NULL, NULL),
(26, 'braun.johnson', 'pouros.buford@hotmail.com', '$2y$10$pqmrWoLA3SYnN2rvja4/FeDRY/hh5WHvHR0NGzKLs/XBW5wwfhZpy', NULL, '2017-05-22 14:10:46', '2017-05-22 14:12:50', 6, 'Easter', 'Effertz', '(904) 245-8950', 6, 2, 2),
(27, 'stephania.gusikowski', 'lhackett@hilll.biz', '$2y$10$Ub.2UB4Qv7qTNszomJIqn.6CsVkY2rFVq744IepdzEdIVBuejFC8i', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Casimir', 'Hills', '1-760-339-0232', 7, NULL, NULL),
(28, 'wroberts', 'sbeier@gottlieb.com', '$2y$10$9EzOACNA1VLMJWrQr7kL2eirKyM8TtgH0KmXFN51Zdn9LCNMfnmKy', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Oliver', 'Reilly', '(723) 354-2032', 8, NULL, NULL),
(29, 'paolo87', 'uwalter@paucek.com', '$2y$10$QQ.bQ490UE8sJqheB56yIOVArgeLQdb80FneWP9GWeLthUh.iue/W', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Gus', 'O''Conner', '1-707-423-6539 x', 9, NULL, NULL),
(30, 'bkeebler', 'rudolph.mcglynn@spencer.biz', '$2y$10$LDsurpAFjVv.DbX5Y53neOlBnej5Aqi6ujgQAL7inNqt.UoOeM6m.', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Jed', 'Gusikowski', '563-286-8517 x97', 10, NULL, NULL),
(31, 'alexys10', 'daugherty.christ@turcotte.biz', '$2y$10$jcFL2B7WpTqLoofIPl.kJ.NFaBaMbmES98nxMDXJZ0MAIojwcJBHW', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Coby', 'Howe', '368-297-7272 x26', 1, NULL, NULL),
(32, 'leatha.gerhold', 'jace41@daniel.com', '$2y$10$05ntvtcjnQK5Eu.nC1MC6Oyherhxvr4DqCaOrce.lZq24W5we9B96', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Davin', 'Spencer', '1-717-503-1597', 2, NULL, NULL),
(33, 'adrianna.huels', 'greenholt.kaylie@lakin.com', '$2y$10$Gni2XZewkpGKlDTMkeL8g.tYoz6zDilhr.0OaYfkK5jJwmdnGBYkO', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Enrique', 'Leuschke', '1-275-659-6475 x', 3, NULL, NULL),
(34, 'bonnie76', 'michaela88@becker.com', '$2y$10$uGmuY7D7Vg7Tm9ggu4qadOcdlnFXIePYtVDthzHkTxRgm6mmGw9La', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Luciano', 'Bogisich', '792-374-5066', 4, NULL, NULL),
(35, 'terry.lola', 'wlegros@hotmail.com', '$2y$10$xJU/z5PIiBPt/7fiNOmZVeF.WsVn45Hu6KhwyUZA1frD7CesJQ68m', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Brook', 'Ankunding', '(828) 978-7720 x', 5, NULL, NULL),
(36, 'orau', 'berge.beryl@hotmail.com', '$2y$10$c3C0H.J5PRmddoxj/LpgV.pBQ0ja7tOUgnc95GR1WtI8wyNl/VHmW', NULL, '2017-05-22 14:10:46', '2017-05-22 14:12:50', 4, 'Glen', 'White', '+1-973-478-5932', 6, 2, 0),
(37, 'flatley.cale', 'ursula.block@feeney.com', '$2y$10$GcVoH.Ac/Wfgn1i4m/Qnv.VpPrqRyjEPFBuy0zRuGczpR28SywM.m', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Jamel', 'Kling', '(742) 281-8080', 7, NULL, NULL),
(38, 'dolores28', 'maria.bradtke@beatty.com', '$2y$10$nj1GI8RtimWFZQDYqogG8.qfn2zNpf7fAi7tcNNZFIFWRxt9CoDUi', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Augustus', 'Macejkovic', '516.910.3884 x43', 8, NULL, NULL),
(39, 'boyle.britney', 'swift.cornelius@yahoo.com', '$2y$10$oM9SRZvEsUlads2ZGIYHIe5HRkTAstYGNfygRYlpv3RMZghoLK/uC', NULL, '2017-05-22 14:10:46', '2017-05-22 14:10:46', 0, 'Ryder', 'Dicki', '479.642.2594 x54', 9, NULL, NULL),
(40, 'magdalena43', 'jacklyn.schulist@funk.org', '$2y$10$fPJIPchaF3U1fMaZau4VX.wjueE2dq04vyUQWOol9fOkDNoZnDVIW', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Ricky', 'Lindgren', '1-643-352-4653 x', 10, NULL, NULL),
(41, 'treutel.athena', 'qruecker@hotmail.com', '$2y$10$NhUaN20oLuGmqF/koCB2y.Y1YnDcW4TgZQ4H6DmT/Xzp4M8D94xMW', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Erling', 'Lubowitz', '726-227-4961', 1, NULL, NULL),
(42, 'thompson.mohamed', 'mschmitt@waelchi.com', '$2y$10$d1Itt/AigkZtUgUTsjk5/ucKg6Wc1oeOSUf1OFutKdJzeDautN6FS', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Eino', 'Ondricka', '+15276675963', 2, NULL, NULL),
(43, 'alek.rempel', 'ethel.reynolds@gmail.com', '$2y$10$IXBr3z56FBDsroDYBlQeA.7Bt5OKKX.DywUIHAnxyTMvCgCaS4ICS', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Dayton', 'Schimmel', '1-316-289-7561 x', 3, NULL, NULL),
(44, 'samir.altenwerth', 'nickolas97@goodwin.com', '$2y$10$YltBNV7omlcJfHf60ec1oOz3NfJOlzn9L7NJLcx5//Fr6BxaKwf52', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Darian', 'Lowe', '+1.242.501.8263', 4, NULL, NULL),
(45, 'agrant', 'greenholt.evangeline@gmail.com', '$2y$10$jqRuEEpZ/XoussKgvYcFU.3.t4o2MW2LUu..Rt15U4h.PQlv8tnz.', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Emanuel', 'Rempel', '675-865-8851', 5, NULL, NULL),
(46, 'leif40', 'lina.yost@marvin.info', '$2y$10$quIceGJdqyqfBl1t8Z3L3OAtHkNdQpM7T0LzC4VE5YFB3bZ1CGt9W', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Oscar', 'Pfannerstill', '634-245-0203', 6, NULL, NULL),
(47, 'wisoky.lorena', 'qcremin@gmail.com', '$2y$10$V1t/63H80L.0LcR5c0ONSerpHa.qzWH1n6m/57NwLClzAQidcx17S', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Bret', 'Schaefer', '1-259-991-4894 x', 7, NULL, NULL),
(48, 'purdy.imogene', 'wilhelmine.haag@kovacek.net', '$2y$10$ldfhGrokjknaQa/Eoxfka.3YMILJrgNJxMT9gyz3CfmMaVVHdy3re', NULL, '2017-05-22 14:10:47', '2017-05-22 14:12:01', 5, 'Milford', 'Greenfelder', '(406) 720-6878 x', 8, 1, 2),
(49, 'mhermann', 'jean36@morar.com', '$2y$10$9ZBfiykDmPbN4rPjPWsnd.m0oaWL4YUvxJ33FcEv9ADUNFSSa5UaK', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Eddie', 'Hilpert', '(645) 488-6082 x', 9, NULL, NULL),
(50, 'cristina.okon', 'hahn.graham@corkery.org', '$2y$10$p58/vVukAbOq71FnQmI.rueMWBzO9k0Tz7zKa25LjElHG.HNdeN/6', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Winfield', 'Kautzer', '(874) 317-6818', 10, NULL, NULL),
(51, 'towne.watson', 'shaylee.dickens@jenkins.com', '$2y$10$/F.IyDuKtv9.ElAYb2hAvuV.5Zk4Y0twb0gnhuEZnU5dgAj3QFE9C', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Brock', 'Green', '219-228-6190 x92', 1, NULL, NULL),
(52, 'golden.bode', 'keebler.josiane@yahoo.com', '$2y$10$3n8PeYHZfTZxHR6x8JBDB.SoleND3bnw24Slo1uJlcX22eds/Ul.a', NULL, '2017-05-22 14:10:47', '2017-05-22 14:10:47', 0, 'Jovani', 'Powlowski', '213-861-0201 x61', 2, NULL, NULL),
(53, 'karolann.stehr', 'angelita22@yahoo.com', '$2y$10$txhZkz3jQY3eR2MA16l38.pOAA0n0w9/sEzc02BUd4hh089yc6oka', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Stephan', 'Krajcik', '(789) 530-4954', 3, NULL, NULL),
(54, 'nstark', 'nolan.ashlynn@gmail.com', '$2y$10$smIoQsgAAcReKBTD0dOGYe/HrPPU9ksJsHdLTzoD4TelU3rUdecJG', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Jalen', 'Gulgowski', '(226) 833-0129', 4, NULL, NULL),
(55, 'cole.armando', 'cmosciski@kutch.com', '$2y$10$Nv/pZKP5b7nZGudONJ1EueK3AfzTuh42DVGBaURLZFnHT/tlXU9PG', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Zane', 'McKenzie', '720.904.4260', 5, NULL, NULL),
(56, 'ransom.baumbach', 'amparo19@yahoo.com', '$2y$10$F.ELRHZwcKn3YbSeTl6y2OE1qnMYxUcji.t266IT5awVEGdTV4BRe', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Adonis', 'Tromp', '639.724.3616', 6, NULL, NULL),
(57, 'giles21', 'ulakin@hotmail.com', '$2y$10$rfZXKFcV1olvhi3BE07vf.VYEfnpMYS8VxRjIlJvUyBRos5OY.LkK', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Bertrand', 'Lakin', '+1-743-315-0784', 7, NULL, NULL),
(58, 'emie57', 'leonora.rice@sanford.info', '$2y$10$./EWJ0Whjtja5OzSHjUVI.PhFMfRZEdeHMhyJHZFaF6o8DwuLLFeS', NULL, '2017-05-22 14:10:48', '2017-05-22 14:12:01', 6, 'Logan', 'Grant', '434.918.7717 x39', 8, 1, 2),
(59, 'winifred.luettgen', 'deanna06@yahoo.com', '$2y$10$0sFTO1hVXhEsHduPFoCSMeNz0tLR643AoJPCdRHbttu4wR77rCwUO', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Bernard', 'Bernier', '+14417438422', 9, NULL, NULL),
(60, 'will.calista', 'purdy.duane@rodriguez.org', '$2y$10$.g0sc7YFrRb/mu9e7/woweRpV6TlcvSDPX0oOBu1YAKB6d.SRunZO', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Brent', 'Bergstrom', '+1-771-869-8939', 10, NULL, NULL),
(61, 'dayana01', 'ashley.pagac@ondricka.com', '$2y$10$p0NeJDkb165kZeHZ4rtAPuHnOb.aJtWETT8l2ARQ5bnmZrQEd/hBC', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Jan', 'Hilpert', '1-978-310-6836', 1, NULL, NULL),
(62, 'vrowe', 'edyth.stoltenberg@gmail.com', '$2y$10$55brDuoG1hp2XnRFzIwxtOpN8pFeH.hzWqm9i2XQDrPO0Y7L54EAa', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Major', 'Hartmann', '498-965-6062', 2, NULL, NULL),
(63, 'ozella.kessler', 'vickie88@hotmail.com', '$2y$10$fRvPL0HmuokChGTBs1ZBuu39RALtIa65Cg24Ifjfu/2bUYS7xVyGi', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Hillard', 'Williamson', '667-624-8952', 3, NULL, NULL),
(64, 'fahey.monique', 'wilkinson.noelia@swaniawski.com', '$2y$10$d30HT/cftZuWFNTdE09teuFY4Yw0T9a5JYjt1K8CSJF9o/Sfs.40G', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Horacio', 'Yost', '1-735-373-3464', 4, NULL, NULL),
(65, 'jmiller', 'fcorwin@block.net', '$2y$10$iR6WS3ZiPIAGZjdYnUCUX.WQc56RDv4mNZp39B8bo.OcerJqmeljS', NULL, '2017-05-22 14:10:48', '2017-05-22 14:10:48', 0, 'Tyson', 'Bins', '(557) 560-2488 x', 5, NULL, NULL),
(66, 'laverne95', 'zachary.anderson@langworth.org', '$2y$10$whM/vkrPeZSgZ9DIXQ/vyO0SOECcLkFGp/GGISXrbB70EjZWTAZIu', NULL, '2017-05-22 14:10:48', '2017-05-22 14:12:50', 5, 'Reymundo', 'Maggio', '(891) 831-5440 x', 6, 2, 1),
(67, 'carey.ritchie', 'broob@yahoo.com', '$2y$10$vaWo4gBWqJmZaidjyq4nm.3ShrER8Ir4VGXCkfSXv81/EhzR7jHzK', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Myron', 'Huels', '446.386.8042 x35', 7, NULL, NULL),
(68, 'ahalvorson', 'odie95@yahoo.com', '$2y$10$UJDwzKoyC05Jo9vorldutO5P0OOEsjJ8xE5dqETiGguh/.tKk3G2m', NULL, '2017-05-22 14:10:49', '2017-05-22 14:12:01', 6, 'Brian', 'Jones', '643.867.5466 x20', 8, 1, 2),
(69, 'clifford.auer', 'koch.verner@reichel.org', '$2y$10$GPgu0TIaelf71HLuVzUoFuoM.tMW5lO8ifs63w/VCImeoKHwB25.u', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Manuela', 'Lockman', '(683) 698-3534 x', 9, NULL, NULL),
(70, 'delores32', 'dicki.juana@bartell.info', '$2y$10$C0aPkv2V5F6FPlzBoQuw5ua.0dC1SVygeB6g1XHrxKd8eJ7GCbflS', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Ubaldo', 'Wintheiser', '474-964-8693 x84', 10, NULL, NULL),
(71, 'eichmann.dora', 'obie56@hotmail.com', '$2y$10$ydE0hwMzEfq/3iQJ2jhBKOpzqNzJlbpDxFdJjkkqrl3ksIX88uCbK', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Moriah', 'Murazik', '+18796232016', 1, NULL, NULL),
(72, 'remington27', 'sbechtelar@senger.net', '$2y$10$Je7hXaIIhtOiVSR5zJyhheL9qTFsCBUHNNR/xd5I663kEAeA7ZGTi', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Stanford', 'Hilll', '(504) 908-5801', 2, NULL, NULL),
(73, 'boris97', 'wendell.carroll@morissette.info', '$2y$10$BdK/hO.MTBnmEUVePQYJ9.izYHlvP5tpfIDsb8YrdcZNGRoyTVvaW', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Saige', 'Schroeder', '206-817-1625 x99', 3, NULL, NULL),
(74, 'njacobs', 'tkihn@boyer.com', '$2y$10$rm/5FzgJ0Qt3p0RfsKsi3ODh932wdeO2Sde/UTWQkgYa5KJ93/JR2', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Grant', 'Yundt', '(861) 343-3803 x', 4, NULL, NULL),
(75, 'schowalter.rebecca', 'stark.webster@hotmail.com', '$2y$10$T5OfHX4XUvjYDvpr.V2WouMxVP64qs0U/rgL17jdouB/QFO1oY7E.', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Braeden', 'Emmerich', '(803) 857-5364', 5, NULL, NULL),
(76, 'jocelyn.flatley', 'pstiedemann@gmail.com', '$2y$10$Qhot27.I5ZWH0lydkKTuDelaUEots9QjW.JRZNp4PZERIhufFlaOi', NULL, '2017-05-22 14:10:49', '2017-05-22 14:12:50', 6, 'Max', 'Gerhold', '381.713.5783', 6, 2, 1),
(77, 'zulauf.ivah', 'jasen.ferry@howe.com', '$2y$10$L2fduJpQhMsbx/aBplA0ue5TZePxpCTRdjT0BHdDHGzoE0hl3/5H2', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Reilly', 'Konopelski', '+1-409-532-7818', 7, NULL, NULL),
(78, 'georgette01', 'kuphal.georgianna@robel.net', '$2y$10$zFx7sbVtBbAiRzEWF/GizuYrJ/Tk2Cb5D9ga4q27h24ldYKpJINlq', NULL, '2017-05-22 14:10:49', '2017-05-22 14:12:01', 4, 'Zakary', 'Dare', '1-909-617-0377', 8, 1, 0),
(79, 'gerson75', 'hal76@hotmail.com', '$2y$10$cECn9tGAxwaVJD39vxgDiOfH8543qMARWCgbKDqYL/kHf5jC8fxGu', NULL, '2017-05-22 14:10:49', '2017-05-22 14:10:49', 0, 'Ed', 'Leuschke', '+1-840-406-5005', 9, NULL, NULL),
(80, 'diego.dicki', 'deja.gibson@pagac.com', '$2y$10$CrJCTKT/d1C77s5dBdx5OeqarxPI5lDqDO.FQcNkCc79BRf/LHI/q', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Andrew', 'Olson', '+1-598-217-4409', 10, NULL, NULL),
(81, 'dlynch', 'hansen.allison@hamill.com', '$2y$10$NQwObhcYd9Tv/14zx0XqY.dMiBA6Y2aaqkLfHhVweM8iKzXgm9YtC', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Presley', 'Weissnat', '1-748-406-7449 x', 1, NULL, NULL),
(82, 'garrison.schowalter', 'shaina.collins@hotmail.com', '$2y$10$DEf/kZ0O0vRcm2lW0fRepO9QscXzJbIorV4OZNtPI7TLzvEhYtePm', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Ignacio', 'Johnston', '(774) 413-3694 x', 2, NULL, NULL),
(83, 'bframi', 'okuhn@legros.com', '$2y$10$bWjxpkpVHB4z2eHZ5fi4ieQxEDBBG0l.KRF7yHiopcenPI39/Whs2', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Damion', 'Shields', '434.248.7464 x71', 3, NULL, NULL),
(84, 'jack36', 'aileen.fisher@gmail.com', '$2y$10$B/Eovx8ApRde1L6o78jIU.Piip1RKf7cc8.TNGcIaDvGiXzPolmxy', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Gaetano', 'Russel', '(802) 687-7758', 4, NULL, NULL),
(85, 'alverta.greenholt', 'elna.lockman@dach.biz', '$2y$10$afoL7FIKUGGc3BX7aR1LEefdXw23W.Z9e5v3pSP1ae63vUEliSUu2', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Sebastian', 'Collins', '(808) 633-2619 x', 5, NULL, NULL),
(86, 'ottilie.hintz', 'lyric89@gmail.com', '$2y$10$o21nIc0LzscoWGOqBhbc.OVKphUESgJF3Jwa0YoJ21T.mOl6ZocJW', NULL, '2017-05-22 14:10:50', '2017-05-22 14:12:50', 6, 'Sanford', 'Morissette', '1-730-730-9722', 6, 2, 2),
(87, 'ayana.daugherty', 'holly71@hotmail.com', '$2y$10$AIozhjwU1F3o3wALidYauOWSyCb4tZp.7d3wBRrk/BFfBeRLn6Yv2', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Chadrick', 'Fay', '(973) 395-8939', 7, NULL, NULL),
(88, 'marilie.rath', 'ygulgowski@gmail.com', '$2y$10$2TutkIHNfs2RE8knMRzpI.XPSBL5rvRmgcf0XaBsKmxZkYftqyLdW', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Granville', 'Hilpert', '+1-458-978-4198', 8, NULL, NULL),
(89, 'charles31', 'wfeeney@jacobs.biz', '$2y$10$TvJPTrrlZTq1WtcheqYtNeAXucQnJXYJ6ZNOWCTyPc70..D.aCx3W', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Reyes', 'Erdman', '(698) 725-6841 x', 9, NULL, NULL),
(90, 'zmohr', 'ayla11@ortiz.com', '$2y$10$iIMmmFTOUOn9NTHBttjKKuvsvoFCwNXeUv6kBnL6cJ2Lq3HpIvp0i', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Randal', 'Bahringer', '1-536-782-1001', 10, NULL, NULL),
(91, 'ivory.corwin', 'cali95@douglas.com', '$2y$10$tbUdD7AY.qGKA5Qn6Ye1Aeipo6KCQOpfAPNUkRYTC5wYHIQo7St9q', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Arden', 'Schmeler', '1-862-434-0242', 1, NULL, NULL),
(92, 'april.williamson', 'cydney.harvey@kuhlman.org', '$2y$10$fnBOew8/PsSPYbvUKfBw4eFPHc06pmq4wrHihgJMzreTVSd2PYtyW', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Marlin', 'Hessel', '252.892.7396 x92', 2, NULL, NULL),
(93, 'ganderson', 'kailyn06@hotmail.com', '$2y$10$k7Gi9wyosy0Ea4O31Bosmebe4IS3l4hKKl92XxjpsPPADG4OMkJ.i', NULL, '2017-05-22 14:10:50', '2017-05-22 14:10:50', 0, 'Haley', 'Nitzsche', '889.525.9438 x92', 3, NULL, NULL),
(94, 'chelsie.will', 'kulas.alysa@gmail.com', '$2y$10$47H5GVdzQLpiDX6dMnr4eu2oKC8d/KV7ELd3HkbM95m2HigZZXCDK', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Malachi', 'Davis', '+1-718-327-2662', 4, NULL, NULL),
(95, 'jaqueline82', 'arvilla23@gmail.com', '$2y$10$6S00xn3ghQHqcIEXKc8n/eQKeu.m7aoHYpfo4ASRkBTop5rM2q4RG', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Kory', 'Purdy', '247-505-9793', 5, NULL, NULL),
(96, 'mreynolds', 'felipe.goodwin@gmail.com', '$2y$10$Q0dF2fiZ0Q6WWN0vTyfDref44wljyLWLcXd/GFqDeCqDDQDIYk/su', NULL, '2017-05-22 14:10:51', '2017-05-22 14:12:50', 6, 'Fidel', 'Beahan', '+1-753-375-8651', 6, 2, 1),
(97, 'araceli18', 'tito.greenfelder@gmail.com', '$2y$10$QoNFsZ0CfmNuy3a.OfDiz.zd7JG54nvDFNSZoLNjoMxf3Ns6ymJPS', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Reuben', 'Collins', '+1.734.957.6671', 7, NULL, NULL),
(98, 'moshe05', 'rau.matt@carter.com', '$2y$10$bydxerje5opKb//iaK9L8e2KSuax3LalRKzdjZ2jo5T.gPnisiId2', NULL, '2017-05-22 14:10:51', '2017-05-22 14:12:01', 6, 'Charley', 'Graham', '(954) 556-7657 x', 8, 1, 1),
(99, 'trenton40', 'zakary.wolf@yahoo.com', '$2y$10$h9NtNjiEPP5wTOx0yu7OX.telVu5/f2FW6eRHdIhy4ccktER24Ao6', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Greg', 'Gutkowski', '463.747.8499', 9, NULL, NULL),
(100, 'sienna.marks', 'furman29@yahoo.com', '$2y$10$.hcIWWq1zSslz8JEWN9rEutPgueuZXVHRx.Qi/Xcvvey0PNe3Y8KG', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Oswald', 'Wolff', '248.786.7377', 10, NULL, NULL),
(101, 'tpouros', 'xreichert@yahoo.com', '$2y$10$qaTRRQUDyosnPmI1fHgcTuPPJYVqeKpS/RavKqBjXP0hiBbwdnSPq', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Joan', 'Kohler', '234.661.9226 x36', 1, NULL, NULL),
(102, 'renner.abigale', 'bdurgan@barton.org', '$2y$10$Ew69Pz4hloPm8G.pT3wO2uitZYkpOOpIZC6q/k2OUG/TlI48EPxqW', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Scottie', 'Schowalter', '+1.526.989.2999', 2, NULL, NULL),
(103, 'zackery94', 'vhilll@schmitt.com', '$2y$10$iV4LzAfx6URz6TglH0ZQWe8WmUPjO3iCveJ4nn.KfV/t9ClYBtJGy', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Fabian', 'Price', '360.443.6734', 3, NULL, NULL),
(104, 'nia62', 'jailyn05@gibson.com', '$2y$10$qwDY5NWIJaYlUdQ017odjOfnsdNXL.K0eVkroF3l1ysW.5eQkCQMC', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Elmer', 'Flatley', '+16297717822', 4, NULL, NULL),
(105, 'legros.serenity', 'kyra.erdman@ohara.com', '$2y$10$XhqcLT7uaFlrF.0CbBvkDOHH232Gaf/2AQtXnaC04CUEG8pxtqkSK', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Chadrick', 'Price', '(458) 614-1265 x', 5, NULL, NULL),
(106, 'wturcotte', 'yveum@gmail.com', '$2y$10$sqTTOWTTCMsk/tUt6644fO9RaFlYgdJJAZup.rr6J9Bvx4Snf5Q8a', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Jeffery', 'Gibson', '569.804.2537 x20', 6, NULL, NULL),
(107, 'theodore69', 'strosin.felipa@gutmann.info', '$2y$10$8FfCyRgqfZOvEs6rhhkyu.VAUREPZcfiSaSamv3QUzDKrpl9ycMi.', NULL, '2017-05-22 14:10:51', '2017-05-22 14:10:51', 0, 'Corbin', 'Schmeler', '973-312-8059', 7, NULL, NULL),
(108, 'gerlach.elta', 'gaston.kulas@yahoo.com', '$2y$10$NtIOx9g63lIjMj1lT.GU4.gFt9Ziht6dXi2pnLOYiBuxyp1qi4NZi', NULL, '2017-05-22 14:10:52', '2017-05-22 14:12:01', 6, 'Francis', 'Bashirian', '1-991-709-2521', 8, 1, 2),
(109, 'sean.carroll', 'craig24@gmail.com', '$2y$10$la.DDFW2P.HsYK88mxKoXe78Rc0gqdrzQtGnDInq6eBsAJBchNv1u', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Lewis', 'Graham', '(220) 534-0910', 9, NULL, NULL),
(110, 'nikolaus.willow', 'karianne.kutch@gutkowski.com', '$2y$10$cm6Bd.w29FQT13/s81jIg.KBLW.VxcLUm6HownOr5Iphf7JQ9TKfa', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Lorenza', 'Bernhard', '1-971-407-8822', 10, NULL, NULL),
(111, 'justen02', 'carolanne.jones@fadel.com', '$2y$10$049WlDNl5GwBnKkHT/RfgOIHN9i/eyvWq.QPCwmq98QFG5f86r3Gy', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Eldred', 'Cole', '529-497-2549 x97', 1, NULL, NULL),
(112, 'pollich.angelina', 'lennie.armstrong@reichert.com', '$2y$10$QGv59qhnN4SzwcoROb03VOJiRKdwjm5sZxqgiC/3/Lys/XZLsNNGu', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Jordan', 'Maggio', '(665) 724-5329 x', 2, NULL, NULL),
(113, 'agrant', 'moore.krista@yahoo.com', '$2y$10$jqAy5y9d32jyKkEGPw9IU.97Rgv9gjMU2JSSpYZSTGBa4jRxtCkPy', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Fausto', 'Stanton', '(572) 594-6061', 3, NULL, NULL),
(114, 'constance19', 'jessyca.emmerich@kunze.com', '$2y$10$sURoNUFgxYfjOnKzOi6imeRVvoeJdV8xOIzpTcPdzSKC8KJCUqjDW', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Coleman', 'Lang', '807-801-9586', 4, NULL, NULL),
(115, 'gennaro.brown', 'weissnat.ellie@barton.net', '$2y$10$nSszcObMBSwORv6CIwSiAu4kE.YtkF/gVHG.KuthCdX1XUc/1E.j6', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Alden', 'Von', '(685) 319-1749 x', 5, NULL, NULL),
(116, 'joany.stehr', 'emmalee51@hilll.org', '$2y$10$wAtcUZ.zu7Zj4HtzJ6yzkeZGC/mkAZHzMt6.Vy.EiS/AJjRRnlgjS', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Sigrid', 'Paucek', '+15375059069', 6, NULL, NULL),
(117, 'eldora.bartell', 'reichmann@gmail.com', '$2y$10$FRtBRFPqcOfyZ9FodWiU8.ZtlK.LGpfG3XPogTs1jbWgmMnQhZMwu', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Roel', 'Wisoky', '+16583993041', 7, NULL, NULL),
(118, 'hagenes.hulda', 'maryse65@hotmail.com', '$2y$10$8Fm/GY.oMnHGbQIjgmTqruuyGTceZgZ4NXE1mFl7drB9twh/U/maG', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Diamond', 'O''Kon', '+1-294-919-1550', 8, NULL, NULL),
(119, 'xhaley', 'mshields@sporer.info', '$2y$10$yO2910.dFOU3Y99UrJSyiuedbA8RTd2blGw2QDMUTpngk5.hWAmI6', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Juvenal', 'Turner', '590.493.6627 x95', 9, NULL, NULL),
(120, 'ecasper', 'rdubuque@gmail.com', '$2y$10$zHoBx7XHK.MRRCbTg8ksUO/Aj29BuDUvasvibN8DbU5Bt23.aPmHC', NULL, '2017-05-22 14:10:52', '2017-05-22 14:10:52', 0, 'Werner', 'Stehr', '960.324.6504 x37', 10, NULL, NULL),
(121, 'nathanial.ondricka', 'katrine64@kessler.com', '$2y$10$7JDBu76BR2SlAwhqdB9R9eBLZ/KF1PO82wHjyAabCu2f5Xxk/j.V.', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Toby', 'Schumm', '487-724-1280 x44', 1, NULL, NULL),
(122, 'mozell.friesen', 'sabryna.klein@yahoo.com', '$2y$10$8wzERDNP3eQbWkxhLCojrOj1d3KURoy.5I46RXvleNsq.LKyPl2Fi', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Gust', 'Ankunding', '(610) 249-7961', 2, NULL, NULL),
(123, 'roob.wade', 'rhammes@kuhic.info', '$2y$10$KH8L9wGj4UCBiXWx2Wc6J.gwNLq4wQKAPImX8PBnjhTYeQckRivkK', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Ted', 'Hyatt', '(368) 365-3326 x', 3, NULL, NULL),
(124, 'rosalyn.mann', 'carroll.timmy@breitenberg.com', '$2y$10$wpNtZpwvgD2YEMk.4Q8rr.wFugqwOXWcDfSx/vAvjDP0Yn1qdfyky', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Roderick', 'Batz', '716.432.1167 x89', 4, NULL, NULL),
(125, 'lind.carolanne', 'upton.delbert@yahoo.com', '$2y$10$GW9LM.AZAq2mmNNtdmEKGOlMtpAOEPZ3SKa2vG0Sb/71NM7abD8H2', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Jairo', 'Bartell', '+1-470-935-2151', 5, NULL, NULL),
(126, 'serena.hartmann', 'keyshawn97@jerde.biz', '$2y$10$M9gCN8CTCZ0upW27iut5He8AwBFdzurEvt5q2MIb7wV0ujs.UNO.C', NULL, '2017-05-22 14:10:53', '2017-05-22 14:12:50', 6, 'Elwin', 'Lynch', '517-214-7317 x13', 6, 2, 1),
(127, 'josefina.hudson', 'tressie.hirthe@stracke.com', '$2y$10$z1MwBh3FnM8At5.3xYU9JObewvxmgYtDOPSMuu7KofVVNRmdTKOcS', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Toney', 'Bahringer', '1-297-739-2895 x', 7, NULL, NULL),
(128, 'ivonrueden', 'dmertz@yahoo.com', '$2y$10$bNinw50/0ZCkf3i5QxA1cOEposa39UI9BZ7mphMNuCneSeSUDJzaO', NULL, '2017-05-22 14:10:53', '2017-05-22 14:12:01', 6, 'Robbie', 'Bartoletti', '1-539-740-9225', 8, 1, 1),
(129, 'rosie30', 'ykuphal@feil.net', '$2y$10$GJFuJ0OeIUSmTyAkJo3hSux656N6Ys1tO04T0wXALztDzRdWWLfcO', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Nils', 'Schaden', '1-930-246-5564 x', 9, NULL, NULL),
(130, 'durward36', 'kadin.homenick@yahoo.com', '$2y$10$zz3P.LA3TY1ogf31UtEQh.IAxgrJUvkIBm8VPMYUiiBmb.rRf8lWq', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Edward', 'Kassulke', '+1 (567) 845-791', 10, NULL, NULL),
(131, 'marlen.hoppe', 'junius47@lowe.biz', '$2y$10$I0S9t5Jsef82q.zT63vO4.O5/ql9A4nS3k6AimODpqSDyf3aF6Mt6', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Rolando', 'Gutkowski', '338.960.6837', 1, NULL, NULL),
(132, 'schulist.amara', 'tkuhic@hirthe.net', '$2y$10$7GgYKkyUPXd6pW9tfNhoo..e7haNleBMiMz0jvdS5ZDfg64ZSlC.W', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'George', 'Gibson', '379-560-3820', 2, NULL, NULL),
(133, 'ograham', 'deja90@ondricka.com', '$2y$10$CbN/5Fll.v9Rexf5Tb09O.Gneau7b0x6FxPzgWXf7Kw2wtaK5vQhq', NULL, '2017-05-22 14:10:53', '2017-05-22 14:10:53', 0, 'Taurean', 'Kshlerin', '689-492-7103 x52', 3, NULL, NULL),
(134, 'andrew81', 'dlang@shanahan.com', '$2y$10$8R8Go0IF9Bh6F9uaMfB8fen6Sd8FyDxB5pUgiDrjFKIYycMpWykLW', NULL, '2017-05-22 14:10:54', '2017-05-22 14:10:54', 0, 'Mike', 'Waters', '(258) 569-2049', 4, NULL, NULL),
(135, 'kbraun', 'devin56@gmail.com', '$2y$10$Gz0nSrfvItBRnI42yAZw2O6tCImLNNrPlf/iZ3espyKil16NCfpSq', NULL, '2017-05-22 14:10:54', '2017-05-22 14:10:54', 0, 'Lane', 'Dibbert', '409.288.8504 x77', 5, NULL, NULL),
(136, 'schmeler.makenna', 'ethompson@murray.net', '$2y$10$lpfIEoqnE7Ck1E4VFRvDr.5UkySRJMBpvKjOTbrpIIgyFZpeO0QQS', NULL, '2017-05-22 14:10:54', '2017-05-22 14:12:50', 6, 'Brendan', 'O''Reilly', '1-458-523-7667', 6, 2, 2),
(137, 'freddie01', 'brandon91@mraz.com', '$2y$10$Nf7S7FJKod0vmEPxU438t.iHK8YAX4K6oOLRnIQr5zG6xSyFt0z1C', NULL, '2017-05-22 14:10:54', '2017-05-22 14:10:54', 0, 'Terrence', 'Bogan', '892-997-1737 x63', 7, NULL, NULL),
(138, 'lucile.dietrich', 'jeromy02@yahoo.com', '$2y$10$Jm7t1QeFw2MQPMwyM2P79uJVh8v4fUhYjPWFTSgz7hbS3UNzdmVZO', NULL, '2017-05-22 14:10:54', '2017-05-22 14:10:54', 0, 'Emmett', 'Lynch', '+1-547-705-7180', 8, NULL, NULL),
(139, 'warren79', 'lexus.ferry@reynolds.com', '$2y$10$t8rfItygfNR3ZaCHBQoRWuDcJj.lBe.LKIw37hTP8UN82fqDEocuq', NULL, '2017-05-22 14:10:54', '2017-05-22 14:10:54', 0, 'Dorcas', 'Runolfsdottir', '1-895-549-8352', 9, NULL, NULL),
(140, 'stiedemann.kadin', 'kaden.auer@hotmail.com', '$2y$10$w1bqygClCa7vODr7W8aktuSuOt8urPZFCxQlhCwu1aSWX1ZEypD.G', NULL, '2017-05-22 14:10:54', '2017-05-22 14:10:54', 0, 'Jovany', 'Gutkowski', '571.268.7692 x29', 10, NULL, NULL);

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
('2017_05_15_053302_laratrust_setup_tables', 2),
('2017_05_17_032114_rename_users_to_members', 3);

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
(1, 'Schiller, Jast and Glover', '74325 Rogelio Spurs Suite 506', '', 'West Shaneshire', 'TX', '22533-1241', '(779) 905-3027', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(2, 'Douglas Group', '4225 Roxanne Wells', '', 'Harveyside', 'TX', '76115', '601.439.8142', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(3, 'Rosenbaum, Kilback and Schneider', '571 Melvin Grove', '', 'New Albafurt', 'TX', '79800-6461', '930-951-7593 x7623', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(4, 'Schneider-Skiles', '6824 Bogisich Meadow Apt. 470', '', 'Waltonton', 'TX', '29664-6137', '840-663-3537 x9817', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(5, 'Wiza-Bartoletti', '40917 Maxime Port Suite 798', '', 'Runolfsdottirhaven', 'TX', '03872', '1-930-719-8268 x20673', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(6, 'Johns PLC', '8811 Kemmer Pines Suite 220', '', 'South Katrinashire', 'TX', '57839', '1-332-662-5059 x717', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(7, 'Tillman, Hickle and Hegmann', '2876 Ollie Extension Apt. 113', '', 'New Nicholaus', 'TX', '86561-5950', '(563) 481-2847 x58684', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(8, 'Beahan Inc', '19978 Willie Circles', '', 'Terrellburgh', 'TX', '14347', '678.605.3641 x91995', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(9, 'Funk-Rutherford', '82023 Schmitt Knoll', '', 'North Donnytown', 'TX', '45880-2076', '875-643-9843 x2449', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL),
(10, 'Russel Group', '700 Pink Stravenue Suite 935', '', 'North Faye', 'TX', '05287-1882', '(374) 785-8420 x33199', '', '2017-05-22 13:59:52', '2017-05-22 13:59:52', NULL);

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
(1, 8, 1, '2017-05-22 14:12:01', '2017-05-22 14:12:01'),
(2, 6, 1, '2017-05-22 14:12:50', '2017-05-22 14:12:50');

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
(0, 'none', '[None]', NULL, NULL, NULL),
(1, 'district_admin', 'District Administrator', NULL, NULL, NULL),
(2, 'org_admin', 'Organization Administrator', NULL, NULL, NULL),
(3, 'black_hat', 'Black Hat', NULL, NULL, NULL),
(4, 'white_hat', 'White Hat', NULL, NULL, NULL),
(5, 'blue_hat', 'Blue Hat', NULL, NULL, NULL),
(6, 'yellow_hat', 'Yellow Hat', NULL, NULL, NULL);

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
(1, 1, '2017-05-09 14:37:16', '2017-05-22 14:12:50', 2);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_organization_id_foreign` (`organization_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project13s`
--
ALTER TABLE `project13s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `users_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
