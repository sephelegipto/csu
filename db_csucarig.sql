-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2017 at 08:01 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_csucarig`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `department_id`, `name`, `abbre`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bachelor of Science in Information Technology', 'BSIT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `curriculums`
--

CREATE TABLE `curriculums` (
  `curriculum_id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculums`
--

INSERT INTO `curriculums` (`curriculum_id`, `year`, `course_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2013', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `curriculumsubjects`
--

CREATE TABLE `curriculumsubjects` (
  `curriculumsubject_id` int(10) UNSIGNED NOT NULL,
  `curriculum_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `prerequisite` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lec_hours` int(10) DEFAULT NULL,
  `lab_hours` int(10) DEFAULT NULL,
  `contact_hours` int(10) DEFAULT NULL,
  `sem` int(10) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `identifier` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculumsubjects`
--

INSERT INTO `curriculumsubjects` (`curriculumsubject_id`, `curriculum_id`, `subject_id`, `prerequisite`, `lec_hours`, `lab_hours`, `contact_hours`, `sem`, `year`, `identifier`, `remember_token`, `created_at`, `updated_at`) VALUES
(18, 1, 10, 'Comp11,Comp12', 2, 3, 5, 2, 1, 0, NULL, NULL, NULL),
(19, 1, 11, 'Comp11, Comp12', 2, 3, 5, 2, 1, 0, NULL, NULL, NULL),
(20, 1, 12, 'Math13', 3, NULL, 3, 2, 1, 0, NULL, NULL, NULL),
(21, 1, 13, 'Eng11', 3, NULL, 3, 2, 1, 0, NULL, NULL, NULL),
(22, 1, 14, NULL, 3, NULL, 3, 2, 1, 0, NULL, NULL, NULL),
(23, 1, 15, 'Fil11', 3, NULL, 3, 2, 1, 0, NULL, NULL, NULL),
(24, 1, 16, 'P.E11', 2, NULL, 2, 2, 1, 0, NULL, NULL, NULL),
(25, 1, 17, 'NSTP11', 3, NULL, 3, 2, 1, 0, NULL, NULL, NULL),
(26, 1, 18, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(27, 1, 19, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(28, 1, 20, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(29, 1, 21, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(30, 1, 22, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(31, 1, 23, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(32, 1, 24, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(33, 1, 25, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(34, 1, 26, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, NULL),
(35, 1, 27, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(36, 1, 28, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(37, 1, 29, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(38, 1, 30, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(39, 1, 31, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(40, 1, 32, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(41, 1, 33, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(42, 1, 34, NULL, NULL, NULL, NULL, 2, 2, 0, NULL, NULL, NULL),
(43, 1, 35, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(44, 1, 36, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(45, 1, 37, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(46, 1, 38, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(47, 1, 39, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(48, 1, 40, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(49, 1, 41, NULL, NULL, NULL, NULL, 1, 3, 0, NULL, NULL, NULL),
(50, 1, 42, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(51, 1, 43, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(52, 1, 44, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(53, 1, 45, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(54, 1, 46, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(55, 1, 47, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(56, 1, 48, NULL, NULL, NULL, NULL, 2, 3, 0, NULL, NULL, NULL),
(57, 1, 49, NULL, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, NULL),
(58, 1, 50, NULL, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, NULL),
(59, 1, 51, NULL, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, NULL),
(60, 1, 52, NULL, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, NULL),
(61, 1, 53, NULL, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, NULL),
(64, 1, 54, NULL, NULL, NULL, NULL, 2, 4, 0, NULL, NULL, NULL),
(75, 1, 3, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL),
(76, 1, 4, NULL, 3, NULL, 3, 1, 1, 1, NULL, NULL, NULL),
(77, 1, 5, NULL, 3, NULL, 3, 1, 1, 1, NULL, NULL, NULL),
(78, 1, 6, NULL, 3, NULL, 3, 1, 1, 1, NULL, NULL, NULL),
(82, 4, 58, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL),
(87, 1, 8, NULL, 2, NULL, 2, 1, 1, 1, NULL, NULL, NULL),
(92, 1, 7, NULL, 3, NULL, 3, 1, 1, 1, NULL, NULL, NULL),
(97, 1, 55, '1', NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL),
(98, 1, 2, 'Co req', NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL),
(100, 1, 9, NULL, 3, NULL, 3, 1, 1, 1, NULL, NULL, NULL),
(101, 1, 57, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL),
(102, 1, 61, '5', 5, 5, 10, 1, 1, 1, NULL, NULL, NULL),
(103, 1, 62, '2', 2, 2, 4, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `track` varchar(191) DEFAULT NULL,
  `abbre` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `track`, `abbre`) VALUES
(1, 'College of Information and Computing Sciences', NULL, 'CICS');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_11_14_122914_create_departments_table', 1),
(3, '2017_11_14_122926_create_courses_table', 1),
(4, '2017_11_14_124944_create_roles_table', 1),
(5, '2017_11_14_125329_create_users_table', 1),
(6, '2017_11_18_160156_create_subject_table', 1),
(7, '2017_11_19_044551_create_curriculums_table', 1),
(8, '2017_11_19_134703_create_curriculumsubjects_table', 1),
(9, '2017_11_20_122245_create_studentchecklists_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'student', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentchecklists`
--

CREATE TABLE `studentchecklists` (
  `studentchecklist_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `curriculumsubject_id` int(10) UNSIGNED NOT NULL,
  `grade` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentchecklists`
--

INSERT INTO `studentchecklists` (`studentchecklist_id`, `user_id`, `curriculumsubject_id`, `grade`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 25, 100, NULL, NULL, NULL, NULL),
(2, 26, 18, NULL, NULL, NULL, NULL),
(3, 26, 19, NULL, NULL, NULL, NULL),
(4, 26, 20, NULL, NULL, NULL, NULL),
(5, 26, 21, NULL, NULL, NULL, NULL),
(6, 26, 22, NULL, NULL, NULL, NULL),
(7, 26, 23, NULL, NULL, NULL, NULL),
(8, 26, 24, NULL, NULL, NULL, NULL),
(9, 26, 25, NULL, NULL, NULL, NULL),
(10, 26, 26, NULL, NULL, NULL, NULL),
(11, 26, 27, NULL, NULL, NULL, NULL),
(12, 26, 28, NULL, NULL, NULL, NULL),
(13, 26, 29, NULL, NULL, NULL, NULL),
(14, 26, 30, NULL, NULL, NULL, NULL),
(15, 26, 31, NULL, NULL, NULL, NULL),
(16, 26, 32, NULL, NULL, NULL, NULL),
(17, 26, 33, NULL, NULL, NULL, NULL),
(18, 26, 34, NULL, NULL, NULL, NULL),
(19, 26, 35, NULL, NULL, NULL, NULL),
(20, 26, 36, NULL, NULL, NULL, NULL),
(21, 26, 37, NULL, NULL, NULL, NULL),
(22, 26, 38, NULL, NULL, NULL, NULL),
(23, 26, 39, NULL, NULL, NULL, NULL),
(24, 26, 40, NULL, NULL, NULL, NULL),
(25, 26, 41, NULL, NULL, NULL, NULL),
(26, 26, 42, NULL, NULL, NULL, NULL),
(27, 26, 43, NULL, NULL, NULL, NULL),
(28, 26, 44, NULL, NULL, NULL, NULL),
(29, 26, 45, NULL, NULL, NULL, NULL),
(30, 26, 46, NULL, NULL, NULL, NULL),
(31, 26, 47, NULL, NULL, NULL, NULL),
(32, 26, 48, NULL, NULL, NULL, NULL),
(33, 26, 49, NULL, NULL, NULL, NULL),
(34, 26, 50, NULL, NULL, NULL, NULL),
(35, 26, 51, NULL, NULL, NULL, NULL),
(36, 26, 52, NULL, NULL, NULL, NULL),
(37, 26, 53, NULL, NULL, NULL, NULL),
(38, 26, 54, NULL, NULL, NULL, NULL),
(39, 26, 55, NULL, NULL, NULL, NULL),
(40, 26, 56, NULL, NULL, NULL, NULL),
(41, 26, 57, NULL, NULL, NULL, NULL),
(42, 26, 58, NULL, NULL, NULL, NULL),
(43, 26, 59, NULL, NULL, NULL, NULL),
(44, 26, 60, NULL, NULL, NULL, NULL),
(45, 26, 61, NULL, NULL, NULL, NULL),
(46, 26, 64, NULL, NULL, NULL, NULL),
(47, 26, 75, NULL, NULL, NULL, NULL),
(48, 26, 76, NULL, NULL, NULL, NULL),
(49, 26, 77, NULL, NULL, NULL, NULL),
(50, 26, 78, NULL, NULL, NULL, NULL),
(51, 26, 87, NULL, NULL, NULL, NULL),
(52, 26, 92, NULL, NULL, NULL, NULL),
(53, 26, 97, NULL, NULL, NULL, NULL),
(54, 26, 98, NULL, NULL, NULL, NULL),
(55, 27, 18, NULL, NULL, NULL, NULL),
(56, 27, 19, NULL, NULL, NULL, NULL),
(57, 27, 20, NULL, NULL, NULL, NULL),
(58, 27, 21, NULL, NULL, NULL, NULL),
(59, 27, 22, NULL, NULL, NULL, NULL),
(60, 27, 23, NULL, NULL, NULL, NULL),
(61, 27, 24, NULL, NULL, NULL, NULL),
(62, 27, 25, NULL, NULL, NULL, NULL),
(63, 27, 26, NULL, NULL, NULL, NULL),
(64, 27, 27, NULL, NULL, NULL, NULL),
(65, 27, 28, NULL, NULL, NULL, NULL),
(66, 27, 29, NULL, NULL, NULL, NULL),
(67, 27, 30, NULL, NULL, NULL, NULL),
(68, 27, 31, NULL, NULL, NULL, NULL),
(69, 27, 32, NULL, NULL, NULL, NULL),
(70, 27, 33, NULL, NULL, NULL, NULL),
(71, 27, 34, NULL, NULL, NULL, NULL),
(72, 27, 35, NULL, NULL, NULL, NULL),
(73, 27, 36, NULL, NULL, NULL, NULL),
(74, 27, 37, NULL, NULL, NULL, NULL),
(75, 27, 38, NULL, NULL, NULL, NULL),
(76, 27, 39, NULL, NULL, NULL, NULL),
(77, 27, 40, NULL, NULL, NULL, NULL),
(78, 27, 41, NULL, NULL, NULL, NULL),
(79, 27, 42, NULL, NULL, NULL, NULL),
(80, 27, 43, NULL, NULL, NULL, NULL),
(81, 27, 44, NULL, NULL, NULL, NULL),
(82, 27, 45, NULL, NULL, NULL, NULL),
(83, 27, 46, NULL, NULL, NULL, NULL),
(84, 27, 47, NULL, NULL, NULL, NULL),
(85, 27, 48, NULL, NULL, NULL, NULL),
(86, 27, 49, NULL, NULL, NULL, NULL),
(87, 27, 50, NULL, NULL, NULL, NULL),
(88, 27, 51, NULL, NULL, NULL, NULL),
(89, 27, 52, NULL, NULL, NULL, NULL),
(90, 27, 53, NULL, NULL, NULL, NULL),
(91, 27, 54, NULL, NULL, NULL, NULL),
(92, 27, 55, NULL, NULL, NULL, NULL),
(93, 27, 56, NULL, NULL, NULL, NULL),
(94, 27, 57, NULL, NULL, NULL, NULL),
(95, 27, 58, NULL, NULL, NULL, NULL),
(96, 27, 59, NULL, NULL, NULL, NULL),
(97, 27, 60, NULL, NULL, NULL, NULL),
(98, 27, 61, NULL, NULL, NULL, NULL),
(99, 27, 64, NULL, NULL, NULL, NULL),
(100, 27, 75, NULL, NULL, NULL, NULL),
(101, 27, 76, NULL, NULL, NULL, NULL),
(102, 27, 77, NULL, NULL, NULL, NULL),
(103, 27, 78, NULL, NULL, NULL, NULL),
(104, 27, 87, NULL, NULL, NULL, NULL),
(105, 27, 92, NULL, NULL, NULL, NULL),
(106, 27, 97, NULL, NULL, NULL, NULL),
(107, 27, 98, NULL, NULL, NULL, NULL),
(108, 27, 101, NULL, NULL, NULL, NULL),
(109, 28, 18, NULL, NULL, NULL, NULL),
(110, 28, 19, NULL, NULL, NULL, NULL),
(111, 28, 20, NULL, NULL, NULL, NULL),
(112, 28, 21, NULL, NULL, NULL, NULL),
(113, 28, 22, NULL, NULL, NULL, NULL),
(114, 28, 23, NULL, NULL, NULL, NULL),
(115, 28, 24, NULL, NULL, NULL, NULL),
(116, 28, 25, NULL, NULL, NULL, NULL),
(117, 28, 26, NULL, NULL, NULL, NULL),
(118, 28, 27, NULL, NULL, NULL, NULL),
(119, 28, 28, NULL, NULL, NULL, NULL),
(120, 28, 29, NULL, NULL, NULL, NULL),
(121, 28, 30, NULL, NULL, NULL, NULL),
(122, 28, 31, NULL, NULL, NULL, NULL),
(123, 28, 32, NULL, NULL, NULL, NULL),
(124, 28, 33, NULL, NULL, NULL, NULL),
(125, 28, 34, NULL, NULL, NULL, NULL),
(126, 28, 35, NULL, NULL, NULL, NULL),
(127, 28, 36, NULL, NULL, NULL, NULL),
(128, 28, 37, NULL, NULL, NULL, NULL),
(129, 28, 38, NULL, NULL, NULL, NULL),
(130, 28, 39, NULL, NULL, NULL, NULL),
(131, 28, 40, NULL, NULL, NULL, NULL),
(132, 28, 41, NULL, NULL, NULL, NULL),
(133, 28, 42, NULL, NULL, NULL, NULL),
(134, 28, 43, NULL, NULL, NULL, NULL),
(135, 28, 44, NULL, NULL, NULL, NULL),
(136, 28, 45, NULL, NULL, NULL, NULL),
(137, 28, 46, NULL, NULL, NULL, NULL),
(138, 28, 47, NULL, NULL, NULL, NULL),
(139, 28, 48, NULL, NULL, NULL, NULL),
(140, 28, 49, NULL, NULL, NULL, NULL),
(141, 28, 50, NULL, NULL, NULL, NULL),
(142, 28, 51, NULL, NULL, NULL, NULL),
(143, 28, 52, NULL, NULL, NULL, NULL),
(144, 28, 53, NULL, NULL, NULL, NULL),
(145, 28, 54, NULL, NULL, NULL, NULL),
(146, 28, 55, NULL, NULL, NULL, NULL),
(147, 28, 56, NULL, NULL, NULL, NULL),
(148, 28, 57, NULL, NULL, NULL, NULL),
(149, 28, 58, NULL, NULL, NULL, NULL),
(150, 28, 59, NULL, NULL, NULL, NULL),
(151, 28, 60, NULL, NULL, NULL, NULL),
(152, 28, 61, NULL, NULL, NULL, NULL),
(153, 28, 64, NULL, NULL, NULL, NULL),
(154, 28, 75, 82, NULL, NULL, NULL),
(155, 28, 76, NULL, NULL, NULL, NULL),
(156, 28, 77, NULL, NULL, NULL, NULL),
(157, 28, 78, NULL, NULL, NULL, NULL),
(158, 28, 87, NULL, NULL, NULL, NULL),
(159, 28, 92, NULL, NULL, NULL, NULL),
(160, 28, 97, NULL, NULL, NULL, NULL),
(161, 28, 98, NULL, NULL, NULL, NULL),
(162, 28, 100, NULL, NULL, NULL, NULL),
(163, 28, 101, NULL, NULL, NULL, NULL),
(164, 28, 102, NULL, NULL, NULL, NULL),
(165, 28, 103, NULL, NULL, NULL, NULL),
(166, 29, 18, NULL, NULL, NULL, NULL),
(167, 29, 19, NULL, NULL, NULL, NULL),
(168, 29, 20, NULL, NULL, NULL, NULL),
(169, 29, 21, NULL, NULL, NULL, NULL),
(170, 29, 22, NULL, NULL, NULL, NULL),
(171, 29, 23, NULL, NULL, NULL, NULL),
(172, 29, 24, NULL, NULL, NULL, NULL),
(173, 29, 25, NULL, NULL, NULL, NULL),
(174, 29, 26, NULL, NULL, NULL, NULL),
(175, 29, 27, NULL, NULL, NULL, NULL),
(176, 29, 28, NULL, NULL, NULL, NULL),
(177, 29, 29, NULL, NULL, NULL, NULL),
(178, 29, 30, NULL, NULL, NULL, NULL),
(179, 29, 31, NULL, NULL, NULL, NULL),
(180, 29, 32, NULL, NULL, NULL, NULL),
(181, 29, 33, NULL, NULL, NULL, NULL),
(182, 29, 34, NULL, NULL, NULL, NULL),
(183, 29, 35, NULL, NULL, NULL, NULL),
(184, 29, 36, NULL, NULL, NULL, NULL),
(185, 29, 37, NULL, NULL, NULL, NULL),
(186, 29, 38, NULL, NULL, NULL, NULL),
(187, 29, 39, NULL, NULL, NULL, NULL),
(188, 29, 40, NULL, NULL, NULL, NULL),
(189, 29, 41, NULL, NULL, NULL, NULL),
(190, 29, 42, NULL, NULL, NULL, NULL),
(191, 29, 43, NULL, NULL, NULL, NULL),
(192, 29, 44, NULL, NULL, NULL, NULL),
(193, 29, 45, NULL, NULL, NULL, NULL),
(194, 29, 46, NULL, NULL, NULL, NULL),
(195, 29, 47, NULL, NULL, NULL, NULL),
(196, 29, 48, NULL, NULL, NULL, NULL),
(197, 29, 49, NULL, NULL, NULL, NULL),
(198, 29, 50, NULL, NULL, NULL, NULL),
(199, 29, 51, NULL, NULL, NULL, NULL),
(200, 29, 52, NULL, NULL, NULL, NULL),
(201, 29, 53, NULL, NULL, NULL, NULL),
(202, 29, 54, NULL, NULL, NULL, NULL),
(203, 29, 55, NULL, NULL, NULL, NULL),
(204, 29, 56, NULL, NULL, NULL, NULL),
(205, 29, 57, NULL, NULL, NULL, NULL),
(206, 29, 58, NULL, NULL, NULL, NULL),
(207, 29, 59, NULL, NULL, NULL, NULL),
(208, 29, 60, NULL, NULL, NULL, NULL),
(209, 29, 61, NULL, NULL, NULL, NULL),
(210, 29, 64, NULL, NULL, NULL, NULL),
(211, 29, 75, 87, NULL, NULL, NULL),
(212, 29, 76, NULL, NULL, NULL, NULL),
(213, 29, 77, NULL, NULL, NULL, NULL),
(214, 29, 78, NULL, NULL, NULL, NULL),
(215, 29, 87, NULL, NULL, NULL, NULL),
(216, 29, 92, NULL, NULL, NULL, NULL),
(217, 29, 97, NULL, NULL, NULL, NULL),
(218, 29, 98, NULL, NULL, NULL, NULL),
(219, 29, 100, NULL, NULL, NULL, NULL),
(220, 29, 101, NULL, NULL, NULL, NULL),
(221, 29, 102, NULL, NULL, NULL, NULL),
(222, 29, 103, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptive_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_code`, `descriptive_title`, `units`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Comp 11', 'Introduction to Computer Science 1', 3, NULL, NULL, NULL),
(3, 'Comp 12', 'Introduction to Computer Science 2', 0, NULL, NULL, NULL),
(4, 'Math 13', 'College Algebra', 0, NULL, NULL, NULL),
(5, 'Eng 11', 'Grammar and Composition 1', 0, NULL, NULL, NULL),
(6, 'Philo 11', 'Logic', 0, NULL, NULL, NULL),
(7, 'Fil 11', 'Komunikasyon sa Akademikong Pilipino', 0, NULL, NULL, NULL),
(8, 'PE 11', 'Physical Fitness', 0, NULL, NULL, NULL),
(9, 'NSTP 11', 'National Service Training Program 1', 0, NULL, NULL, NULL),
(10, 'IT 101', 'Database Management System 1', 0, NULL, NULL, NULL),
(11, 'IT 102', 'Programming 1', 0, NULL, NULL, NULL),
(12, 'Math 14', 'Plane Trigonometry', 0, NULL, NULL, NULL),
(13, 'Eng 12', 'Grammar & Composition 2', 0, NULL, NULL, NULL),
(14, 'Eng 14', 'Speech Communication', 0, NULL, NULL, NULL),
(15, 'Fil 12', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 0, NULL, NULL, NULL),
(16, 'PE 12', 'Rhythmic Activities', 0, NULL, NULL, NULL),
(17, 'NSTP 12', 'National Service Training Program 2', 0, NULL, NULL, NULL),
(18, 'IT 201', 'Accounting Principles', 0, NULL, NULL, NULL),
(19, 'IT 202', 'Discrete Structures', 0, NULL, NULL, NULL),
(20, 'Math 13', 'Network Management', 0, NULL, NULL, NULL),
(21, 'IT 204', 'Operating Systems Application Concepts', 0, NULL, NULL, NULL),
(22, 'IT 205', 'Programming 2', 0, NULL, NULL, NULL),
(23, 'Eng 18', 'Business Communication', 0, NULL, NULL, NULL),
(24, 'Lit 11', 'Literatures of the Philippines', 0, NULL, NULL, NULL),
(25, 'Phy 13', 'General Physics 1', 0, NULL, NULL, NULL),
(26, 'PE 13', 'Individual & Dual Sports Games', 0, NULL, NULL, NULL),
(27, 'IT 206', 'Multimedia Systems', 0, NULL, NULL, NULL),
(28, 'IT 207', 'Object-Oriented Programming', 0, NULL, NULL, NULL),
(29, 'IT 208', 'Web Development', 0, NULL, NULL, NULL),
(30, 'Lit 12', 'Literatures of the World', 0, NULL, NULL, NULL),
(31, 'Phy 15', 'General Physics 2', 0, NULL, NULL, NULL),
(32, 'Soc Sci 11', 'Philippine History', 0, NULL, NULL, NULL),
(33, 'Stat 12', 'Probability & Statistics', 0, NULL, NULL, NULL),
(34, 'PE 14', 'Dance & Recreational Activities', 0, NULL, NULL, NULL),
(35, 'IT 301', 'Database Management System 2', 0, NULL, NULL, NULL),
(36, 'IT 302', 'IT Elective 1', 0, NULL, NULL, NULL),
(37, 'IT 303', 'Software Engineering', 0, NULL, NULL, NULL),
(38, 'Res 11', 'Methods of Research', 0, NULL, NULL, NULL),
(39, 'Soc Sci 12', 'Politics and Governance w/ Phil. Const', 0, NULL, NULL, NULL),
(40, 'Soc Sci 13', 'Society and Culture w/ PopEd & HIV', 0, NULL, NULL, NULL),
(41, 'Psycho 11', 'General Psychology w/ DAP', 0, NULL, NULL, NULL),
(42, 'IT 304', 'Computer Organization', 0, NULL, NULL, NULL),
(43, 'IT 305', 'Free Elective 1*', 0, NULL, NULL, NULL),
(44, 'IT 306', 'Free Elective 2*', 0, NULL, NULL, NULL),
(45, 'IT 307', 'IT Elective 2**', 0, NULL, NULL, NULL),
(46, 'IT 308', 'Systems Analysis and Design', 0, NULL, NULL, NULL),
(47, 'Econ 11', 'Introduction to Economics w/ TAR', 0, NULL, NULL, NULL),
(48, 'Soc Sci 14', 'Rizal’s Life, Works and Writings', 0, NULL, NULL, NULL),
(49, 'IT 401', 'Capstone Project', 0, NULL, NULL, NULL),
(50, 'IT 402', 'Free Elective 3*', 0, NULL, NULL, NULL),
(51, 'IT 403', 'IT Elective 3**', 0, NULL, NULL, NULL),
(52, 'IT 404', 'IT Elective 4**', 0, NULL, NULL, NULL),
(53, 'IT 405', 'IT Professional Ethics', 0, NULL, NULL, NULL),
(54, 'IT 406', 'Internship/OJT/Practicum', 0, NULL, NULL, NULL),
(61, 'test34', 'test34', 0, NULL, NULL, NULL),
(64, 'zxc', 'zxc', 123, NULL, NULL, NULL),
(65, 'test', 'test', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curriculum_id` int(11) DEFAULT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `school_id`, `curriculum_id`, `l_name`, `f_name`, `m_name`, `email`, `password`, `course_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ZXCZXCZX', 0, 'Test', 'Test', 'Test', 'test', '$2y$10$KGIG5upJ.GlYqY.O/IOaKOJcz54uanpqb5kSeiUjjLxH77QpjmnZW', 1, 1, 'WlQr6gC7nyERWB6hTt6akOd4XqJ16NRJiyN4B6zskvvEmHjAoLQXHX9Z3rEk', NULL, '2017-11-20 02:33:13'),
(2, '', 1, 'admin', 'admin', 'admin', 'admin', '$2y$10$KGIG5upJ.GlYqY.O/IOaKOJcz54uanpqb5kSeiUjjLxH77QpjmnZW', 0, 1, 'gHjOlPRfKjsbdnrJAxvHGBuqM2WyN6Jsh6ZbprCxvQz9sfBGQ18SZZlbHC94', NULL, NULL),
(28, 'TEST', 1, 'Test', 'Test', 'Test', 'test', '$2y$10$fZkv5EV2CHFEkkhUAN26SuMDeUfOFC4Bn0MGqWXZr6h0QnGt3p2gG', 1, 2, NULL, NULL, NULL),
(29, 'TEST', 1, 'sephel', 'Test', 'Test', 'sephel', '$2y$10$KGIG5upJ.GlYqY.O/IOaKOJcz54uanpqb5kSeiUjjLxH77QpjmnZW', 1, 2, 'XKWdtIV44rSo45p8NHEX5WABVcPH1729oJPfmhYHCz0QOC1TXpHEh3nB2LOh', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `curriculums`
--
ALTER TABLE `curriculums`
  ADD PRIMARY KEY (`curriculum_id`);

--
-- Indexes for table `curriculumsubjects`
--
ALTER TABLE `curriculumsubjects`
  ADD PRIMARY KEY (`curriculumsubject_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `studentchecklists`
--
ALTER TABLE `studentchecklists`
  ADD PRIMARY KEY (`studentchecklist_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `curriculums`
--
ALTER TABLE `curriculums`
  MODIFY `curriculum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `curriculumsubjects`
--
ALTER TABLE `curriculumsubjects`
  MODIFY `curriculumsubject_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentchecklists`
--
ALTER TABLE `studentchecklists`
  MODIFY `studentchecklist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
