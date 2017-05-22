-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 11:19 AM
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
(1, 'shayna05', 'miles69@kuhn.biz', '$2y$10$ML8G6qRQt.QMTabl9Eyh5eMMkr.fFmiW.poSSRlR/vNdfqkHHfMDK', NULL, '2017-05-22 14:16:40', '2017-05-22 14:16:40', 0, 'Tomas', 'Turner', '+1.992.483.0436', 1, NULL, NULL),
(2, 'pagac.junius', 'fritz.fay@hansen.info', '$2y$10$yzzUHyF5Nh5WFH6a2Drf7.gU8VrBC7MEGJz9FNkRW8Vx01PaRCTXO', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Otto', 'Quitzon', '798.622.5345', 2, NULL, NULL),
(3, 'abosco', 'maeve60@terry.com', '$2y$10$SVkkPLj.mHhoDlSg0zBkVONWyDrc6d1gEangnNCFDhtJ6.kfpNVpm', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Jo', 'Botsford', '526-294-6543', 3, NULL, NULL),
(4, 'blick.brian', 'kassulke.isabelle@yahoo.com', '$2y$10$XsP0cmEJ4l/Z9en6svGTkentt05KQJsSxtLRF.yUonKZ1Sv.cbZ52', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Diamond', 'Haag', '(568) 463-9614', 4, NULL, NULL),
(5, 'burley.mckenzie', 'borer.millie@yahoo.com', '$2y$10$.Pw.1qLMMOpPLX.mHT.o2ejyjLZKBxvbXsS3AV3P6PMSBcXOaQsBa', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Myron', 'Wisozk', '886.256.0996', 5, NULL, NULL),
(6, 'bartell.santina', 'albin64@yahoo.com', '$2y$10$HR0CrcxX8JIkdhxsvzkZFurJHcxPbUYZA.5g9WeVUe93KLVG70sHO', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Walter', 'Runte', '1-313-681-7949', 6, NULL, NULL),
(7, 'cblock', 'riley13@keeling.biz', '$2y$10$lBgyrz05neZlz958U6C/oOWsAr55CV85DVwR5wPQWWu4c5VMTHc4S', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Broderick', 'Schneider', '(526) 633-8995 x', 7, NULL, NULL),
(8, 'hharber', 'arianna.hane@hoppe.info', '$2y$10$3zvukug1y3NTpsYYU16v.u2E07kBTAMKNLI027.yBBStAgmDw6o8.', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Cooper', 'Gibson', '(884) 368-1989 x', 8, NULL, NULL),
(9, 'wsatterfield', 'bahringer.kari@gmail.com', '$2y$10$SbaVNaC12Aj98ZkNMB.fDuR1NWPBntpFeX4XFTwCfE.XBgk1X8.uq', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Selmer', 'Kris', '315-599-2140 x94', 9, NULL, NULL),
(10, 'jonathan.stroman', 'alfonzo.gerlach@gmail.com', '$2y$10$qLSPlYFbO5WooIUQdyuqgO5DhfsjUVsB4Q2yixpQrjfKd3XANtNyi', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Kurtis', 'Stehr', '1-776-339-9590 x', 10, NULL, NULL),
(11, 'lou.smith', 'dcole@lockman.biz', '$2y$10$uFxFVxJloNAjblIvPX6vj.yzgTePmJ3kYAAhJE5ddL6Bxw5qd8S3m', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Mason', 'Considine', '1-928-318-6904 x', 1, NULL, NULL),
(12, 'jayson.mclaughlin', 'christelle53@yahoo.com', '$2y$10$p.10em7om9M1Mt6xsD2rNOxaTrinAj.rXtx53gfI8tMezlDcItUXG', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Johathan', 'Schinner', '(267) 925-0026 x', 2, NULL, NULL),
(13, 'marlen.altenwerth', 'tremayne.bauch@dicki.com', '$2y$10$RIuUNF9oVEd5kcLXU6LQ5umqOpTOq3p65JeUO7K.TmDBHU6qhhj/W', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Adonis', 'Klein', '257.636.2376 x00', 3, NULL, NULL),
(14, 'dkessler', 'sipes.meghan@hotmail.com', '$2y$10$s.tkjgx7tgpSD/iZGfw5..AP7x72BJarIItpN2vMGXK3x7mj9Tcsm', NULL, '2017-05-22 14:16:41', '2017-05-22 14:16:41', 0, 'Kiley', 'Adams', '427-628-5754', 4, NULL, NULL),
(15, 'ltromp', 'gbechtelar@yahoo.com', '$2y$10$gJVKLJ7UMwhQdA7s/RtMiuJDXAwMmoHAgr5o5aaQQ3.DUoiKPKl32', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Garth', 'Bergnaum', '742-555-7476 x41', 5, NULL, NULL),
(16, 'aron.rowe', 'rmraz@damore.com', '$2y$10$RR6AwOZQVcI33Hx6p2HUzOpGOFJE4Uor5BOPqVjPEYwgI9716bQN.', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Elroy', 'Daniel', '+1 (437) 846-638', 6, NULL, NULL),
(17, 'nelson.satterfield', 'ines62@gmail.com', '$2y$10$uKd7AJ8uHqCNRfVPB/DQlO1tLS9N/K4v2EQtdhQbuT7sQIM5kTkOO', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Uriah', 'Hane', '341-656-7545 x52', 7, NULL, NULL),
(18, 'giles34', 'jermaine89@klein.info', '$2y$10$bH480vf6wC2gGPBv2krDb.sMPRZ4kKF79YvJ4Knl4gXc5ZYtKOvB.', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Dalton', 'Balistreri', '549.854.3405 x33', 8, NULL, NULL),
(19, 'pwitting', 'monica.tillman@gmail.com', '$2y$10$.zNx4veYdwzcUDAQHmALMOPI0BRyzUpVZZLByLSv8eIxo22dK5s2u', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Chet', 'Roob', '+1.747.578.6388', 9, NULL, NULL),
(20, 'julien36', 'uziemann@murazik.com', '$2y$10$I.4Wv3GU/Q3xAIG4MXxnnuMiPmF5lerX1VrvjwZ9T7D1.abMJKIka', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Charlie', 'Shields', '391-824-9728 x00', 10, NULL, NULL),
(21, 'hilll.kendra', 'dsanford@wolff.com', '$2y$10$mrAxOgG/FsqSVIGsjqT0gupMDkB1K2kU5tx1RJJoMMud4tSTsbOmi', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Buford', 'Abshire', '+1-767-946-2203', 1, NULL, NULL),
(22, 'genoveva.satterfield', 'rodriguez.reinhold@herman.com', '$2y$10$JGohOo5rgEsEauv7HbeyzeHPa3bBfnNB5SxRs8alt5Nik758WAiH2', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Andres', 'Volkman', '(472) 578-6014 x', 2, NULL, NULL),
(23, 'koelpin.annabelle', 'senger.israel@kohler.com', '$2y$10$UGE29zRmGJeWjiA5S64n.eVvoHNFWAygJDovGvso7KI1vowgXpnf2', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Max', 'Ondricka', '745-969-3077 x75', 3, NULL, NULL),
(24, 'maia.aufderhar', 'macejkovic.emelie@lockman.com', '$2y$10$0ZMKqsUwwAush4t.RVzR4uxyIJeTjJcToQLLhr/t61z8GhhJgKFWS', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Collin', 'Nitzsche', '569.677.1218 x30', 4, NULL, NULL),
(25, 'olson.kay', 'ydickinson@gmail.com', '$2y$10$tWC6Dg1Rbzt0Z8hs3wSYTO1PwioIEWjQ55GgNj/iEyHtb6FaoddFW', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Jaleel', 'Spinka', '831-493-0541', 5, NULL, NULL),
(26, 'lindgren.annabel', 'madie11@yahoo.com', '$2y$10$du8kQ1xPOUBkYc4xhjCYhuYXILQ2e5aXaxAmY76bTC1FA.yOOL62m', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Hayden', 'Kub', '(363) 463-0821 x', 6, NULL, NULL),
(27, 'ludie86', 'kuhn.felipa@hotmail.com', '$2y$10$DmaNsVaY/32OLJ3bSCqq.efHxdQK2u3ycCP55w.nO0e.7A68veCfO', NULL, '2017-05-22 14:16:42', '2017-05-22 14:16:42', 0, 'Garett', 'Kerluke', '(975) 925-2056 x', 7, NULL, NULL),
(28, 'waylon.crooks', 'josh29@jones.com', '$2y$10$zwrgsrC8MYt4c7L3YMt.6ObC31DtsFGOCOy7yzeS9QdsPdI05IyWS', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Gaston', 'Johnson', '973-812-5015', 8, NULL, NULL),
(29, 'benton43', 'kmacejkovic@brakus.com', '$2y$10$jAaalwbaQuF.lKHor3cpy./pQLV9oMEnLUiqN3umnzKmb8pVAhdcW', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Monserrat', 'Moore', '+1.427.400.2092', 9, NULL, NULL),
(30, 'vrunolfsdottir', 'orn.douglas@hotmail.com', '$2y$10$XIsR5biw.eBt34zJgdmfXuMYYbSwPpBatnnrMy3XHLvyoBmHJoW16', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Roderick', 'Crona', '(993) 388-3577', 10, NULL, NULL),
(31, 'brisa10', 'pabbott@hilll.com', '$2y$10$Xsu93xJwLHImiePuH7pXhOLehvZYwQGqOelxxme.gmFkSqO3.FOeu', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Craig', 'Homenick', '+13206048378', 1, NULL, NULL),
(32, 'haley33', 'lynch.jordane@kuhic.org', '$2y$10$eL8fmxAFQS26f97OqDc5beYID9Hp1tebWJVsuyCw2psXdTZwgElMG', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Odell', 'Swaniawski', '1-316-304-6890 x', 2, NULL, NULL),
(33, 'clinton.romaguera', 'vincenzo.rippin@tremblay.info', '$2y$10$EEm7Z2P24x7feUsderdTfe2mXkEjS3Qyb0/mxb.tPO0ZgdWpuM31G', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Devin', 'Carroll', '312.441.6421', 3, NULL, NULL),
(34, 'purdy.ryan', 'linda.hessel@wiza.com', '$2y$10$LIaV7VEQfUuOy7nNhMCGnesHZ3V1LT6vsTJL9lG6QvPtRoJgfaIK6', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Isadore', 'Bergstrom', '883-579-8026 x21', 4, NULL, NULL),
(35, 'bankunding', 'evan84@hodkiewicz.com', '$2y$10$GImEp5easijXzmunAbm9XeYvSvgK7.8Ku1Lj4JFpqDXr9iG3c2Qq6', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Marcel', 'Metz', '717-749-8021', 5, NULL, NULL),
(36, 'cronin.sigurd', 'madison.dubuque@hotmail.com', '$2y$10$DFuuW9dTnLGHHzNIGAHrge4MpJEbfjyR0oXvwX8kSxPtQkaR6CH8O', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Allan', 'Klein', '1-335-642-7829', 6, NULL, NULL),
(37, 'morar.bryce', 'mills.ernestine@yahoo.com', '$2y$10$6rrV1Aqg4rAmyZs7c3.zpuARuPr4ukevAB/kGJGmqGqx6hRI8G/Jm', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Sanford', 'Ondricka', '970-900-2208', 7, NULL, NULL),
(38, 'hollie82', 'fwalter@gmail.com', '$2y$10$ONyvzEGUP/cK4g5oRfuiJuLBcirBblLMqPEPytYxSwdF.xPMs6HHe', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Lucius', 'Gusikowski', '+1-716-359-2446', 8, NULL, NULL),
(39, 'gschneider', 'larkin.lamont@hotmail.com', '$2y$10$zo962Nt3iy.NI1fTc7IRX.S1zfftxiidwPNoJF9vInWk/RZDGf5ci', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Toni', 'Heller', '(809) 957-5825 x', 9, NULL, NULL),
(40, 'fweissnat', 'albin78@yahoo.com', '$2y$10$2Hf9asnNNuOJel45lmq.buXvVOhpktU6m8w5GJXfqZHU1tTLBf9zG', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Felipe', 'Strosin', '(678) 645-8593 x', 10, NULL, NULL),
(41, 'thora.fisher', 'langworth.lelah@schumm.biz', '$2y$10$cvxXRotSP186/CkFlki4IOgKR23jhbdSDR/zGrctqQytVKOSTV.Uq', NULL, '2017-05-22 14:16:43', '2017-05-22 14:16:43', 0, 'Keagan', 'Bayer', '(357) 323-2591 x', 1, NULL, NULL),
(42, 'nader.hildegard', 'magali.west@marquardt.com', '$2y$10$EdPBYG6pp12311Z1GkRR4.lGUoyZAQBkHhnkYjs7mIqsoTEil69V6', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Tremaine', 'Schroeder', '1-445-948-6824', 2, NULL, NULL),
(43, 'hills.gudrun', 'rogahn.vallie@yahoo.com', '$2y$10$nDhFxsaWoCeFrCaa/.HG7.RK2SSl5Qr15SzEm4HmJv70HUveu.AwG', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Coty', 'Rau', '214-578-8030', 3, NULL, NULL),
(44, 'grimes.korbin', 'hector.rosenbaum@gmail.com', '$2y$10$LAiS.zr9mbx0A7Zy2SqaFenfm9o9xFmfVTbmALd28L7BjNFAw7qkO', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Marcelo', 'Ferry', '439-737-1647 x46', 4, NULL, NULL),
(45, 'bahringer.haley', 'brycen.johns@hotmail.com', '$2y$10$sfmMLtn9Q.IHRrWwD1UaQemUXV35crkAA.7uHlOogig/GU7Whwecq', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Austin', 'Sauer', '(895) 321-2213', 5, NULL, NULL),
(46, 'ernestine74', 'qschmidt@altenwerth.net', '$2y$10$GmpBRo9dF7DJbFXy1HvufuRNcWy1QPZh2OtgLlDvHFLXoToXOAsH6', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Julien', 'Botsford', '1-974-986-3152 x', 6, NULL, NULL),
(47, 'yoshiko.steuber', 'brenna.schaefer@parker.org', '$2y$10$WBFTmsvrnc0OaWPLCJmcnOb59h35mjKYeImYbAhA0iyjx.VC/pftG', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Abelardo', 'Sanford', '556-609-6509', 7, NULL, NULL),
(48, 'stevie88', 'claud52@walter.com', '$2y$10$8jgHBTlqsHYoqxHgOeksH.wVqF.CxcZUPLlUC5LvNRjxSubk7QO5S', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Joshuah', 'Blanda', '428-225-2679 x13', 8, NULL, NULL),
(49, 'sswift', 'ushanahan@nienow.com', '$2y$10$GwHzOi.CbK1oBl.U7j188ONCLILu5Kf9Il11Kdxwj1VZyI1EIlf5y', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Sean', 'Jerde', '1-923-670-8815 x', 9, NULL, NULL),
(50, 'giovani71', 'hills.diamond@okeefe.com', '$2y$10$Cvh7qKmM6n7Hn3nhdnNEAOCNOI.jfTC.7pMTznJBRS3u07kHah/Ri', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Isaiah', 'Veum', '+15953076380', 10, NULL, NULL),
(51, 'corrine91', 'uriah.rice@kilback.com', '$2y$10$3wbi77gXm59WAOnjtUaM7.GoGblOKyBwnpeXLL0iD7Lm/DvvSJNtm', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Alessandro', 'Krajcik', '575.818.3345 x17', 1, NULL, NULL),
(52, 'samir.wuckert', 'lindgren.cayla@satterfield.info', '$2y$10$DcWqOa1K6lxZ/Cv6GFjT9u/t5s.7pmRaAShID4QIVihNevShIa43G', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Tristian', 'Rogahn', '707-239-5085 x77', 2, NULL, NULL),
(53, 'gladyce03', 'hudson71@yahoo.com', '$2y$10$KtR95V7BWxzHfxWLLjTwjuciQhqH5DQZKnhY23sOjutQORUNw0JUe', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Kendrick', 'Mosciski', '1-994-857-0717', 3, NULL, NULL),
(54, 'marcelo.wolf', 'bayer.earlene@gmail.com', '$2y$10$fAxs5/qrEtXylfi9aELwDuDG7PA6Y0ORRPe41vIp.WE9rJrA38ctu', NULL, '2017-05-22 14:16:44', '2017-05-22 14:16:44', 0, 'Elliott', 'Goldner', '+1-659-276-5755', 4, NULL, NULL),
(55, 'leslie88', 'swaniawski.april@howe.com', '$2y$10$e20QZHdULnkqXfT56jcR9.iKynPHODRJmw8OAW/VtaZ6oCA5raBB6', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Karl', 'Hane', '(945) 714-5372 x', 5, NULL, NULL),
(56, 'stevie55', 'otto28@yahoo.com', '$2y$10$B9w6yIFgGvrxh47dvghnjucMrpBVk6G9JsKq/v6A86NtzS9fQ5HMS', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Wilson', 'Bogisich', '+1 (685) 712-540', 6, NULL, NULL),
(57, 'corkery.clarabelle', 'crona.hayden@kohler.com', '$2y$10$KHSmiccyDFnImo3/uBmzZ.TdqPBxV5Mrit/ElQsbxG.JoJeUpVa1K', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Eric', 'Kreiger', '+1-608-598-5939', 7, NULL, NULL),
(58, 'tyrese.graham', 'bcummerata@kilback.com', '$2y$10$pG7eGZjw0et/gWF6IQ2gAeLPzKKnN.apbyg7tUbCBuLnCGYdXdp3O', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Seth', 'Schmidt', '1-252-846-6249 x', 8, NULL, NULL),
(59, 'emilie98', 'shannon.sipes@dibbert.biz', '$2y$10$FMVtASYxvtFuo5WgrPOPnegNm62FdiHpUWEriH6vxpgYD4THwOy4a', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Ernest', 'Abshire', '+1.970.860.8894', 9, NULL, NULL),
(60, 'yfadel', 'moreilly@hotmail.com', '$2y$10$ntke9TYiOMy/zlGW0oPT4uBt7o7zSIPRM18v41hFhXqu1fpewwgFG', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Rick', 'Stanton', '270.512.8096 x68', 10, NULL, NULL),
(61, 'abagail.beer', 'cstokes@krajcik.com', '$2y$10$h71Eym6E.fNaPYvb/5KcEOgHq/ZKXapPaJDWEf8z7vAlAVJhX9ZwC', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Clement', 'Zboncak', '620.335.1375 x95', 1, NULL, NULL),
(62, 'schultz.orlo', 'caltenwerth@gleason.com', '$2y$10$X9gW6Odloe1PhxgmN9.cOu26oUgHrTYvzAplwnq59Ys4YUuEBwYnO', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Tyrese', 'Auer', '404.389.2628', 2, NULL, NULL),
(63, 'kunde.adonis', 'vlittel@hotmail.com', '$2y$10$axl01oODBIW/dQ5He3lJVO.giUkaPTolGxG2hqN.54TBuGokuUtfG', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Griffin', 'Erdman', '1-491-579-5140 x', 3, NULL, NULL),
(64, 'melody.davis', 'kling.kaylin@wilkinson.org', '$2y$10$oRXoSh8uzIGDRZ9wGircGucD/vRSBvCc9UmgALF7q4uFRlLKWhmwu', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Walter', 'Waelchi', '670.821.0770', 4, NULL, NULL),
(65, 'shanon.moore', 'pstark@gmail.com', '$2y$10$nur9cJ2vNbK6aIib74poAednKFlKVCj3qaRRaGJgqEOYGp.gGlgQG', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Noe', 'Hansen', '706-501-4449 x94', 5, NULL, NULL),
(66, 'jparisian', 'iprice@gmail.com', '$2y$10$RzZK05noYo4Jt1R1FkC/9eU2dWn7U9im7kM4hBWsF3/N7oK5i/X26', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Keaton', 'Schmeler', '(719) 787-8245', 6, NULL, NULL),
(67, 'darrion.schumm', 'graciela.marvin@hotmail.com', '$2y$10$YnkfZ1d0B9U3Osb7B3MRj.WrHJN1ILl5vplWWWG57kBoM5.xy1UO2', NULL, '2017-05-22 14:16:45', '2017-05-22 14:16:45', 0, 'Angelo', 'Hoeger', '687-724-3559 x54', 7, NULL, NULL),
(68, 'spinka.agustina', 'river.pfeffer@wehner.com', '$2y$10$EWqDVlvpxOg/5iiJ7Frj7Ouv4jsRIVGReP8dtzxhoPZg7CyrjU3oq', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Sonny', 'Smitham', '+1 (719) 413-862', 8, NULL, NULL),
(69, 'harris.beverly', 'slabadie@monahan.com', '$2y$10$v/luHwBSkqe1Kq4VyDcpd.nRr7IZf0YRM6Kex0t7o6hWJ7oW8YZX6', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Dee', 'Fadel', '467-837-2548', 9, NULL, NULL),
(70, 'blake20', 'bradtke.mitchel@yahoo.com', '$2y$10$tAMD5328HsxNv5GmslkqZ.Y0A5.WEOPGZHViGtgeB.rYlB2lyccZe', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Ricardo', 'Graham', '+1-680-825-0886', 10, NULL, NULL),
(71, 'mschowalter', 'marlin96@bode.com', '$2y$10$ZyrFNnIQf3jN.n0dz9XWnOOiqIxvkJ5Ol4.aKprItM9.NdzkU8xGa', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Ali', 'Bahringer', '+1.802.597.1303', 1, NULL, NULL),
(72, 'leslie.rosenbaum', 'kayleigh.davis@yahoo.com', '$2y$10$0R/ziEwmqnb7JIaUx6sO/.Ncb35OcCgatN4W9JGbEkn7SFvT50FbO', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Alessandro', 'Lynch', '(937) 762-5317 x', 2, NULL, NULL),
(73, 'stoltenberg.margaretta', 'blarson@grimes.com', '$2y$10$/gvl.lmK5dsDvhoOUvDGUOOvy21k2vHe8q6ryIfcVuYuKLH67fEdK', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Monty', 'McKenzie', '383-569-1246', 3, NULL, NULL),
(74, 'tiara.goyette', 'davon52@yahoo.com', '$2y$10$CKEWmS1yp8hqdQVxeS1TUeymuvdxC7QtDeqkSf1wKNuTDLswhK.Da', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Lourdes', 'Howe', '(276) 762-7748 x', 4, NULL, NULL),
(75, 'estevan.walter', 'annette.heidenreich@gmail.com', '$2y$10$sYcUQvvcvrYcPOci77sC1e1vnAjl7jdJGfLDN8N6Fm4PM35tCfW5.', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'London', 'Veum', '975.447.7242 x41', 5, NULL, NULL),
(76, 'beahan.margarette', 'marjolaine.russel@dicki.com', '$2y$10$V5GgLexZ8obxcUaYKmvIsO9DlKH2CH1RsBG2RgowGHRItZ3CFSJ1.', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Afton', 'Hyatt', '(660) 234-0035', 6, NULL, NULL),
(77, 'armstrong.luella', 'kade62@yahoo.com', '$2y$10$j7v7zb5FjUFB9R6hVflX3u4WQEItiAZMob4q6Cfn0sWTV1S9Q/Trm', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Jedediah', 'Bernier', '+13733260073', 7, NULL, NULL),
(78, 'jovanny.thiel', 'ryundt@yahoo.com', '$2y$10$Yg..36cNOOkw1qAOZv6IXO3FGa4TdLsaW4g/bheTlQMweKfdDEpgm', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Lucas', 'Willms', '372.326.2860 x27', 8, NULL, NULL),
(79, 'lavon.kutch', 'daniella65@gmail.com', '$2y$10$aOAT0s.s/DCMvN0ZnHYKD.KLR0oUDmS4zccB7Rp1drTM1xhcgW/k.', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Amani', 'Cummings', '(205) 400-6114 x', 9, NULL, NULL),
(80, 'xander.boyer', 'bradtke.callie@dicki.com', '$2y$10$L6jvAIyLXbGZYiEL12G.6.yRsK8ccY.lrHOjsq9DQznyYZ3LOcUnq', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Kristoffer', 'Monahan', '527-704-5822 x23', 10, NULL, NULL),
(81, 'sipes.sarah', 'goreilly@schneider.org', '$2y$10$hH2KbqEv8Wh.DhJ/8oZNZeqWwqI.bv8ikGxqRsaF1rl5pcHSYMBP6', NULL, '2017-05-22 14:16:46', '2017-05-22 14:16:46', 0, 'Conner', 'Hermiston', '1-970-453-6255 x', 1, NULL, NULL),
(82, 'boehm.dejah', 'micaela.sawayn@gmail.com', '$2y$10$kChrbGuLgPJEiLtS5RTs4.rj8bepi8.7OESbOzf1kFfxBwS907ibq', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Morris', 'Lindgren', '(270) 612-2826 x', 2, NULL, NULL),
(83, 'fferry', 'mkeeling@yahoo.com', '$2y$10$SgMmCL3r2oS/qCSu04B04.nPcfUnr4CIIaaFsNLtsR0I6z9xesvgK', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Eldon', 'Kilback', '279-290-2588 x21', 3, NULL, NULL),
(84, 'smaggio', 'jeanne.pouros@crona.com', '$2y$10$5Bumkge2IcmRDfl5ApdUIua9ZJQiQmYD6FwrHVX9PR06tWrhpy.hy', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Clinton', 'Durgan', '+13215377210', 4, NULL, NULL),
(85, 'tpollich', 'okoch@pouros.com', '$2y$10$r.t9BVc9IgmbE6hpPSxMCuvMLcvMnw/rJ.AkWUsxxCmJbIs0CJGsK', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Joany', 'Glover', '(594) 278-4761', 5, NULL, NULL),
(86, 'hazle35', 'schumm.jannie@gerlach.org', '$2y$10$8.ImbPxwQpHQfDx0.tjqV.SSTVM5Lxrg6xSnippLZi7suGnsIYbh2', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Juwan', 'Dickinson', '361-799-6226 x28', 6, NULL, NULL),
(87, 'phoebe09', 'roob.dwight@heathcote.com', '$2y$10$DwmvPSeEOuz.WqHxmXR3/OA2sa8eK/M/kKwPlgT6WsOMregNnjeZW', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Travon', 'Wilkinson', '1-436-451-4079 x', 7, NULL, NULL),
(88, 'xhills', 'nbaumbach@sanford.com', '$2y$10$ZXIc0.1Eu6ZpXiZDRgXRkOT2HFSB8ACX2uBxYHtLwiQWc6Qk2e1j2', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Anderson', 'Greenholt', '+1.613.601.8402', 8, NULL, NULL),
(89, 'ikiehn', 'adams.morton@gmail.com', '$2y$10$SHIwkY00setlRDJaV1.y.uZGWfRi20Dpm2OsHVqs.1mUzfJfwRuvy', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Delbert', 'Blanda', '1-487-972-1906', 9, NULL, NULL),
(90, 'steuber.reynold', 'roel.boyle@gmail.com', '$2y$10$gnbADBltAoUfwqEuQAsNxe08PeVC2azjFN.WzqFxKNc6A8Pxjb0NO', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Cordell', 'Marquardt', '896-884-3837', 10, NULL, NULL),
(91, 'hildegard.collier', 'cathrine.hilll@nitzsche.com', '$2y$10$S754dDj9tcqjuGqClaR4uuCbevgBiTNCfaFRYv8yBpQr.mR4em652', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Richard', 'Doyle', '695.615.2063 x49', 1, NULL, NULL),
(92, 'gmohr', 'uabernathy@gmail.com', '$2y$10$PqYJXKZyqXYzfRo9E1ap5ODJ.MDLCXWL1/pbU1nG//YlyuyvjRV8.', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Logan', 'Wilderman', '(480) 793-5787', 2, NULL, NULL),
(93, 'roosevelt.hills', 'carlo.kunde@brekke.com', '$2y$10$zJsX6z9iCXmkIxiE4NHEouegRLeMTxQXpJUUs911uDHnomRqMequW', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Price', 'Bechtelar', '784.869.2702', 3, NULL, NULL),
(94, 'daron.kirlin', 'seth96@schmeler.org', '$2y$10$PI/uJKqL8ZOpobgjIec0GekeBK5M5.upSFpr.jZjnV4LQ8X5odRPS', NULL, '2017-05-22 14:16:47', '2017-05-22 14:16:47', 0, 'Wilfredo', 'Hansen', '663-293-7705 x69', 4, NULL, NULL),
(95, 'perry.mueller', 'kale74@yahoo.com', '$2y$10$3JR4LZDWZ0gTcgb17ePVJeHmZ6MQLnk4bPd0V2wLQxcpEa9ibTFKS', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Ansel', 'Hermiston', '317.755.5164', 5, NULL, NULL),
(96, 'margaret.murray', 'ucollier@jacobs.biz', '$2y$10$ylS8dFFhgTxooOat9Y3Wmeg50c6rtX6DfKDbM4PavzZw3v9rm4reG', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Buddy', 'Herman', '779-665-3159 x67', 6, NULL, NULL),
(97, 'carlotta06', 'harvey.isabella@greenfelder.org', '$2y$10$3Yjuacpq8wMZOYmNI3S8kO07fT0AzQC50wsWKxYS5o7b7xOO4EYg6', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Brett', 'Fahey', '515-624-1406 x53', 7, NULL, NULL),
(98, 'nathanial.moore', 'xrice@gmail.com', '$2y$10$O3A6QeIyYEATLVsg9Bf1U.HMaSmh0GVNCzOWTBMgOq64I0PMUJBWi', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Gideon', 'Bosco', '(203) 340-4353', 8, NULL, NULL),
(99, 'laney.reichel', 'bonita89@corwin.com', '$2y$10$5DTzhoB9QVHBnPbvFFrmm.LeED35KDF8Iti3BavTAkAqVidy65nNy', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Carroll', 'Boyle', '(681) 536-6138', 9, NULL, NULL),
(100, 'towne.boris', 'rhianna.ortiz@hotmail.com', '$2y$10$iUTuBs1A7AIpxy.z.XbHd.OmdCyQQD/uOIjOZ1Wt89EF/DK6.1V9K', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Nathaniel', 'Effertz', '860-918-5118 x16', 10, NULL, NULL),
(101, 'stamm.nola', 'duane.lemke@hotmail.com', '$2y$10$Xn3hwgkGO03lcafQ7I6HVOxEvS.aMXFM2HggakH99U/ZUywG47s36', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Ulices', 'Connelly', '+1-446-482-1653', 1, NULL, NULL),
(102, 'durward.hackett', 'kshlerin.naomie@mraz.com', '$2y$10$v2FuFBgO1lYaWrNspDu5aONEc5DcSlS3aRIl5Dr6LvnOvRjyQaXY6', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Evan', 'Carroll', '(241) 776-2356', 2, NULL, NULL),
(103, 'zdouglas', 'abshire.eulalia@padberg.net', '$2y$10$BJlZXJ34PAuG7GrVA/oT4OG6ewLV0ccylffoUTFVXxruZJs.Wjbwe', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Ervin', 'Pagac', '+1-423-853-2943', 3, NULL, NULL),
(104, 'wilkinson.isom', 'diamond.wiegand@gmail.com', '$2y$10$RmVsb8LhzJ9ocwosUpZvnesMvj14Y0xFH6Y3NdUTIbOdm2eGJK98q', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Axel', 'Bailey', '1-216-623-8473', 4, NULL, NULL),
(105, 'mueller.viva', 'mireya71@hotmail.com', '$2y$10$MOYRIGBRPs7Kiv86RQ17F.1g8igOYrkTL5k0XrhCFyHlQ7n/MH.n2', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Ephraim', 'Rohan', '780-288-6058', 5, NULL, NULL),
(106, 'thiel.breanne', 'oreilly.maud@hotmail.com', '$2y$10$VmEG6IE6.X/pi/IcTQzRSuJMDqJnZ8UxY4MK2S0aSK4P83qgqEkNa', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Ernesto', 'Swaniawski', '917-730-7260 x25', 6, NULL, NULL),
(107, 'marjory.koelpin', 'eulalia.schaefer@zemlak.info', '$2y$10$EQ0Gz9esuLa1PINK0hv4ZuBLRjcKg5tEQ1QigbfOBo8D5kQNXFs/G', NULL, '2017-05-22 14:16:48', '2017-05-22 14:16:48', 0, 'Clinton', 'Mann', '+17153526222', 7, NULL, NULL),
(108, 'grady84', 'nelle35@koch.com', '$2y$10$6MfO6b6C.oyhk6N2OLlh7O2S1k6nEiJ3vElsv2ZuKQdkQvQHIhQ36', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Bernardo', 'Boyle', '707-894-9769', 8, NULL, NULL),
(109, 'oconner.bill', 'fryan@hotmail.com', '$2y$10$nELreYSUlHW78Av7jExnruTFYNlhQBQ9DWtkaDjhUxAhQFW9CEcnO', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Elbert', 'Jakubowski', '464-240-5833', 9, NULL, NULL),
(110, 'easter.mante', 'qhuel@heller.com', '$2y$10$oSqiDshDGoR/RAXHLQq5WOGrshVMJRljGITEjxXd87z/VkpghT23e', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Tobin', 'Mayer', '+1-923-988-0151', 10, NULL, NULL),
(111, 'verda.nader', 'allison.weimann@gmail.com', '$2y$10$ARGQoUa/JaVj/kV1NAFCnu2ywsZyzyoRe.X92BWwGhQ3UFUDrdqDG', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Mckenzie', 'Dibbert', '1-948-569-0141 x', 1, NULL, NULL),
(112, 'xkertzmann', 'pfeffer.reed@stamm.com', '$2y$10$w7DrKOA.UGEw.tC7SDu4QOx0NfugRoPi2eI9f00pUOhsEnwbDOXYK', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Geo', 'Blanda', '(478) 309-9092', 2, NULL, NULL),
(113, 'dooley.lourdes', 'cade66@hotmail.com', '$2y$10$Zmf9j1JG2e1hJ3Qyuhm/XOsOAWqS9fCqxWymARTf5JhBLgVb2jOku', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Stanton', 'Bruen', '(614) 788-9291', 3, NULL, NULL),
(114, 'hane.jacquelyn', 'douglas.niko@gusikowski.biz', '$2y$10$J3mryZ3m/h1q.9RI6w/5kOs41bnx/LqJW9q/fwRUcKELlvWFsGEcK', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Raven', 'Anderson', '(567) 633-3799 x', 4, NULL, NULL),
(115, 'west.savion', 'damore.sid@schmeler.com', '$2y$10$QK4Wdvcbfot6Oba6THmUtuLSUnMGzk3yoG/CuEoAxvZwzmOJ4jvGa', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Emil', 'Hamill', '+1-513-325-4070', 5, NULL, NULL),
(116, 'rolfson.gus', 'cristian58@volkman.net', '$2y$10$rpmATu9RN2L/GgfOt/aCqexo6QFKN8PexBH2CPyNSbptGl2VdCO8a', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Chandler', 'Welch', '+18919771853', 6, NULL, NULL),
(117, 'osvaldo41', 'darron70@fadel.biz', '$2y$10$iHwmS1h0TtWjteScFwbYdezoHxdqwG6m9cVEccYy9endAf8kcULsy', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Rowan', 'Daugherty', '313.799.0714', 7, NULL, NULL),
(118, 'qdicki', 'ostark@cruickshank.com', '$2y$10$I64NWHh3MP1etxa1MdoWoeQcMcLQGnTgoCdASrnZJXnVUwi02CVgm', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Godfrey', 'Schmitt', '260-340-5033', 8, NULL, NULL),
(119, 'betty.prohaska', 'creynolds@nikolaus.com', '$2y$10$CEeMRBL2lcLN4FxELVQ.oee3GAk1L2BXhAftbEs/l.Crq7SU2WikW', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Jerel', 'Rempel', '439.631.9702', 9, NULL, NULL),
(120, 'wgusikowski', 'tiffany.okeefe@hotmail.com', '$2y$10$zXHozQNvOAHJDRC/8ALKrOgkMus/3GE59cn3Gs4ewK.JSlfpc7OwG', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Toy', 'Parker', '1-268-565-6372', 10, NULL, NULL),
(121, 'malika92', 'blind@walter.com', '$2y$10$6kivBkfpx4iALKIZjmSCGey0s11RnxrfPA.hxNmEz3QPSbC7UhzdC', NULL, '2017-05-22 14:16:49', '2017-05-22 14:16:49', 0, 'Cristobal', 'Veum', '392-696-2181 x25', 1, NULL, NULL),
(122, 'baby.boehm', 'judy.jerde@grant.com', '$2y$10$ob35Mlu5hI8xRR4MkmDUhep7fnk7MDFqtEO6C8PeinKFG7IAC24tO', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Kaden', 'Lowe', '(925) 875-8070 x', 2, NULL, NULL),
(123, 'abigail93', 'yhalvorson@koch.org', '$2y$10$S.xoSnHR7/PZtIC7e7wn1.Zs3gOHyJ21g33inJR3mG3wmZyFAFSrG', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Seamus', 'Feest', '287.439.7888 x59', 3, NULL, NULL),
(124, 'bahringer.efrain', 'rocio.herzog@hotmail.com', '$2y$10$.JKr2SPA7ti0TYP4H.PmQ.Yc0GMhmID.uIxrPTvmO6GJm7uHTdJWm', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Murphy', 'Funk', '484.475.4680 x64', 4, NULL, NULL),
(125, 'yost.zackery', 'wolff.tia@upton.com', '$2y$10$Yre2NzaA/pCJopMs.quZK.ikiBev0fl9.1h5EFMjSTO8UiGuP7gwm', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Stephon', 'Dach', '201-959-0861', 5, NULL, NULL),
(126, 'jovani76', 'braxton.kihn@mraz.com', '$2y$10$ZBCgnV6FlPvOZe1ARhrOR.dRnhZFEVxoXgselsXzX7Vr1IWde7rNa', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Clark', 'Goyette', '(346) 641-9001 x', 6, NULL, NULL),
(127, 'tremblay.shanon', 'berenice.klocko@hotmail.com', '$2y$10$A8701tmgTOMil4N1nKW7Oe55HFTX0kxj6viHgjlALkpGtRuF0zjsG', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Rollin', 'King', '672-759-2960 x63', 7, NULL, NULL),
(128, 'allene.heidenreich', 'harvey.maia@dare.com', '$2y$10$yEWvSvHBccTQibsxya1GFO5iGEu5ZH1pIkUeZx/zL0BCVEd6vW/j6', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Otto', 'Kirlin', '774.903.4665', 8, NULL, NULL),
(129, 'mklein', 'wtremblay@nader.info', '$2y$10$yY2UrQppSPbCRy9wgfkfWerdaJT6rpa0iHBxQ9n8hYN9tUYiXGZU2', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Kyler', 'Schumm', '283-578-9589 x36', 9, NULL, NULL),
(130, 'lambert54', 'obaumbach@streich.com', '$2y$10$FGWgDnVOIDYl9x.4YpwbAeOrzJZDBynPqmNj4F7phkN1Bth.VstDW', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Malachi', 'Durgan', '1-514-253-1310 x', 10, NULL, NULL),
(131, 'logan.brown', 'mayra18@kessler.com', '$2y$10$.QNjocnMvmibSl.Ps3cpNOh6AdKHDNm96eXOCh6d9YGzsS1tfeIcS', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Terry', 'Donnelly', '+1-701-477-0086', 1, NULL, NULL),
(132, 'david46', 'evan.schmitt@kuhic.com', '$2y$10$G90Gwc.pIWMWMhahPqe76OAacPdxp37km1Qq4vekF4mQEufO3HeT.', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Nolan', 'Marvin', '1-225-805-1657 x', 2, NULL, NULL),
(133, 'wisozk.rahsaan', 'nolan.tara@hotmail.com', '$2y$10$glnEkpYf2oGeU1/ap4MtS.PZBZ.brBXrauPmsHZg1Ybzql3xjkeoe', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Ephraim', 'Hettinger', '+17275206614', 3, NULL, NULL),
(134, 'sylvester97', 'ahickle@yahoo.com', '$2y$10$KLoXWoaIn5JWxBt5q.FzWOOzDOMfs4qu20u3meG/TxE/wa/HDgtvK', NULL, '2017-05-22 14:16:50', '2017-05-22 14:16:50', 0, 'Karson', 'Schmeler', '+1-915-454-5343', 4, NULL, NULL),
(135, 'cole.eichmann', 'kole.parker@gmail.com', '$2y$10$VbgOwSlfzwr6rxpPjEiKxuVMEIhV13yupYXp/0456upUb7EdoDYd6', NULL, '2017-05-22 14:16:51', '2017-05-22 14:16:51', 0, 'Garry', 'Wintheiser', '1-271-348-8103', 5, NULL, NULL),
(136, 'britney.cronin', 'murazik.keenan@hotmail.com', '$2y$10$YW/JMNgBgtHWFql2xYqTBe9bOF0ITXmzhk9pwFgqStqBLnapsbZpy', NULL, '2017-05-22 14:16:51', '2017-05-22 14:16:51', 0, 'Devin', 'Cummerata', '450-591-7728', 6, NULL, NULL),
(137, 'omckenzie', 'reynolds.leann@gmail.com', '$2y$10$xSir1uY5/q2G8VYWnxd6GuwOtrEwi12iitM6wGYXDgSJwwXWk7VRm', NULL, '2017-05-22 14:16:51', '2017-05-22 14:16:51', 0, 'Percival', 'Shields', '729-837-3001 x16', 7, NULL, NULL),
(138, 'marcelo30', 'coralie50@yahoo.com', '$2y$10$7SGs5tjBlvyoXtetwb7ASegyRMfgpVEnfYTYTEBqR8YThLIHBzfsa', NULL, '2017-05-22 14:16:51', '2017-05-22 14:16:51', 0, 'Warren', 'Towne', '1-853-697-5527', 8, NULL, NULL),
(139, 'alivia17', 'reilly.toby@hotmail.com', '$2y$10$oRXe6uaGSHeFacJR1csUEuVKofkImjhYRECjNT1drLShVq.QSPLvS', NULL, '2017-05-22 14:16:51', '2017-05-22 14:16:51', 0, 'Peter', 'Sporer', '+1-278-608-5369', 9, NULL, NULL),
(140, 'vickie56', 'baumbach.justina@hotmail.com', '$2y$10$YOkWHW4fWr1EjNhHqXKRpuah7G7Ea6HHPi02VA6xAlc8y7zXKTFAy', NULL, '2017-05-22 14:16:51', '2017-05-22 14:16:51', 0, 'Westley', 'Kling', '1-713-996-7932', 10, NULL, NULL);

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
(1, 1, '2017-05-09 14:37:16', '2017-05-22 12:56:18', 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
