-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 06:36 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
  `sem` int(10) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculumsubjects`
--

INSERT INTO `curriculumsubjects` (`curriculumsubject_id`, `curriculum_id`, `subject_id`, `sem`, `year`, `remember_token`, `created_at`, `updated_at`) VALUES
(18, 1, 10, 2, 1, NULL, NULL, NULL),
(19, 1, 11, 2, 1, NULL, NULL, NULL),
(20, 1, 12, 2, 1, NULL, NULL, NULL),
(21, 1, 13, 2, 1, NULL, NULL, NULL),
(22, 1, 14, 2, 1, NULL, NULL, NULL),
(23, 1, 15, 2, 1, NULL, NULL, NULL),
(24, 1, 16, 2, 1, NULL, NULL, NULL),
(25, 1, 17, 2, 1, NULL, NULL, NULL),
(26, 1, 18, 1, 2, NULL, NULL, NULL),
(27, 1, 19, 1, 2, NULL, NULL, NULL),
(28, 1, 20, 1, 2, NULL, NULL, NULL),
(29, 1, 21, 1, 2, NULL, NULL, NULL),
(30, 1, 22, 1, 2, NULL, NULL, NULL),
(31, 1, 23, 1, 2, NULL, NULL, NULL),
(32, 1, 24, 1, 2, NULL, NULL, NULL),
(33, 1, 25, 1, 2, NULL, NULL, NULL),
(34, 1, 26, 1, 2, NULL, NULL, NULL),
(35, 1, 27, 2, 2, NULL, NULL, NULL),
(36, 1, 28, 2, 2, NULL, NULL, NULL),
(37, 1, 29, 2, 2, NULL, NULL, NULL),
(38, 1, 30, 2, 2, NULL, NULL, NULL),
(39, 1, 31, 2, 2, NULL, NULL, NULL),
(40, 1, 32, 2, 2, NULL, NULL, NULL),
(41, 1, 33, 2, 2, NULL, NULL, NULL),
(42, 1, 34, 2, 2, NULL, NULL, NULL),
(43, 1, 35, 1, 3, NULL, NULL, NULL),
(44, 1, 36, 1, 3, NULL, NULL, NULL),
(45, 1, 37, 1, 3, NULL, NULL, NULL),
(46, 1, 38, 1, 3, NULL, NULL, NULL),
(47, 1, 39, 1, 3, NULL, NULL, NULL),
(48, 1, 40, 1, 3, NULL, NULL, NULL),
(49, 1, 41, 1, 3, NULL, NULL, NULL),
(50, 1, 42, 2, 3, NULL, NULL, NULL),
(51, 1, 43, 2, 3, NULL, NULL, NULL),
(52, 1, 44, 2, 3, NULL, NULL, NULL),
(53, 1, 45, 2, 3, NULL, NULL, NULL),
(54, 1, 46, 2, 3, NULL, NULL, NULL),
(55, 1, 47, 2, 3, NULL, NULL, NULL),
(56, 1, 48, 2, 3, NULL, NULL, NULL),
(57, 1, 49, 1, 4, NULL, NULL, NULL),
(58, 1, 50, 1, 4, NULL, NULL, NULL),
(59, 1, 51, 1, 4, NULL, NULL, NULL),
(60, 1, 52, 1, 4, NULL, NULL, NULL),
(61, 1, 53, 1, 4, NULL, NULL, NULL),
(64, 1, 54, 2, 4, NULL, NULL, NULL),
(74, 1, 2, 1, 1, NULL, NULL, NULL),
(75, 1, 3, 1, 1, NULL, NULL, NULL),
(76, 1, 4, 1, 1, NULL, NULL, NULL),
(77, 1, 5, 1, 1, NULL, NULL, NULL),
(78, 1, 6, 1, 1, NULL, NULL, NULL),
(82, 4, 58, 1, 1, NULL, NULL, NULL),
(87, 1, 8, 1, 1, NULL, NULL, NULL),
(92, 1, 7, 1, 1, NULL, NULL, NULL),
(94, 1, 9, 1, 1, NULL, NULL, NULL);

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
(1, 22, 18, 99, NULL, NULL, NULL),
(2, 22, 19, 99, NULL, NULL, NULL),
(3, 22, 20, 99, NULL, NULL, NULL),
(4, 22, 21, 99, NULL, NULL, NULL),
(5, 22, 22, 99, NULL, NULL, NULL),
(6, 22, 23, 99, NULL, NULL, NULL),
(7, 22, 24, 98, NULL, NULL, NULL),
(8, 22, 25, NULL, NULL, NULL, NULL),
(9, 22, 26, NULL, NULL, NULL, NULL),
(10, 22, 27, NULL, NULL, NULL, NULL),
(11, 22, 28, NULL, NULL, NULL, NULL),
(12, 22, 29, NULL, NULL, NULL, NULL),
(13, 22, 30, NULL, NULL, NULL, NULL),
(14, 22, 31, NULL, NULL, NULL, NULL),
(15, 22, 32, NULL, NULL, NULL, NULL),
(16, 22, 33, NULL, NULL, NULL, NULL),
(17, 22, 34, NULL, NULL, NULL, NULL),
(18, 22, 35, NULL, NULL, NULL, NULL),
(19, 22, 36, NULL, NULL, NULL, NULL),
(20, 22, 37, NULL, NULL, NULL, NULL),
(21, 22, 38, NULL, NULL, NULL, NULL),
(22, 22, 39, NULL, NULL, NULL, NULL),
(23, 22, 40, NULL, NULL, NULL, NULL),
(24, 22, 41, NULL, NULL, NULL, NULL),
(25, 22, 42, NULL, NULL, NULL, NULL),
(26, 22, 43, NULL, NULL, NULL, NULL),
(27, 22, 44, NULL, NULL, NULL, NULL),
(28, 22, 45, NULL, NULL, NULL, NULL),
(29, 22, 46, NULL, NULL, NULL, NULL),
(30, 22, 47, NULL, NULL, NULL, NULL),
(31, 22, 48, NULL, NULL, NULL, NULL),
(32, 22, 49, NULL, NULL, NULL, NULL),
(33, 22, 50, NULL, NULL, NULL, NULL),
(34, 22, 51, NULL, NULL, NULL, NULL),
(35, 22, 52, NULL, NULL, NULL, NULL),
(36, 22, 53, NULL, NULL, NULL, NULL),
(37, 22, 54, NULL, NULL, NULL, NULL),
(38, 22, 55, NULL, NULL, NULL, NULL),
(39, 22, 56, NULL, NULL, NULL, NULL),
(40, 22, 57, NULL, NULL, NULL, NULL),
(41, 22, 58, NULL, NULL, NULL, NULL),
(42, 22, 59, NULL, NULL, NULL, NULL),
(43, 22, 60, NULL, NULL, NULL, NULL),
(44, 22, 61, NULL, NULL, NULL, NULL),
(45, 22, 64, NULL, NULL, NULL, NULL),
(46, 22, 74, 90, NULL, NULL, NULL),
(47, 22, 75, 90, NULL, NULL, NULL),
(48, 22, 76, 88, NULL, NULL, NULL),
(49, 22, 77, 90, NULL, NULL, NULL),
(50, 22, 78, 88, NULL, NULL, NULL),
(51, 22, 79, NULL, NULL, NULL, NULL),
(52, 22, 80, NULL, NULL, NULL, NULL),
(53, 23, 18, NULL, NULL, NULL, NULL),
(54, 23, 19, NULL, NULL, NULL, NULL),
(55, 23, 20, NULL, NULL, NULL, NULL),
(56, 23, 21, NULL, NULL, NULL, NULL),
(57, 23, 22, NULL, NULL, NULL, NULL),
(58, 23, 23, NULL, NULL, NULL, NULL),
(59, 23, 24, NULL, NULL, NULL, NULL),
(60, 23, 25, NULL, NULL, NULL, NULL),
(61, 23, 26, NULL, NULL, NULL, NULL),
(62, 23, 27, NULL, NULL, NULL, NULL),
(63, 23, 28, NULL, NULL, NULL, NULL),
(64, 23, 29, NULL, NULL, NULL, NULL),
(65, 23, 30, NULL, NULL, NULL, NULL),
(66, 23, 31, NULL, NULL, NULL, NULL),
(67, 23, 32, NULL, NULL, NULL, NULL),
(68, 23, 33, NULL, NULL, NULL, NULL),
(69, 23, 34, NULL, NULL, NULL, NULL),
(70, 23, 35, NULL, NULL, NULL, NULL),
(71, 23, 36, NULL, NULL, NULL, NULL),
(72, 23, 37, NULL, NULL, NULL, NULL),
(73, 23, 38, NULL, NULL, NULL, NULL),
(74, 23, 39, NULL, NULL, NULL, NULL),
(75, 23, 40, NULL, NULL, NULL, NULL),
(76, 23, 41, NULL, NULL, NULL, NULL),
(77, 23, 42, NULL, NULL, NULL, NULL),
(78, 23, 43, NULL, NULL, NULL, NULL),
(79, 23, 44, NULL, NULL, NULL, NULL),
(80, 23, 45, NULL, NULL, NULL, NULL),
(81, 23, 46, NULL, NULL, NULL, NULL),
(82, 23, 47, NULL, NULL, NULL, NULL),
(83, 23, 48, NULL, NULL, NULL, NULL),
(84, 23, 49, NULL, NULL, NULL, NULL),
(85, 23, 50, NULL, NULL, NULL, NULL),
(86, 23, 51, NULL, NULL, NULL, NULL),
(87, 23, 52, NULL, NULL, NULL, NULL),
(88, 23, 53, NULL, NULL, NULL, NULL),
(89, 23, 54, NULL, NULL, NULL, NULL),
(90, 23, 55, NULL, NULL, NULL, NULL),
(91, 23, 56, NULL, NULL, NULL, NULL),
(92, 23, 57, NULL, NULL, NULL, NULL),
(93, 23, 58, NULL, NULL, NULL, NULL),
(94, 23, 59, NULL, NULL, NULL, NULL),
(95, 23, 60, NULL, NULL, NULL, NULL),
(96, 23, 61, NULL, NULL, NULL, NULL),
(97, 23, 64, NULL, NULL, NULL, NULL),
(98, 23, 74, NULL, NULL, NULL, NULL),
(99, 23, 75, NULL, NULL, NULL, NULL),
(100, 23, 76, NULL, NULL, NULL, NULL),
(101, 23, 77, NULL, NULL, NULL, NULL),
(102, 23, 78, NULL, NULL, NULL, NULL),
(103, 23, 79, NULL, NULL, NULL, NULL),
(104, 23, 80, NULL, NULL, NULL, NULL),
(105, 22, 95, 88, NULL, NULL, NULL),
(106, 22, 94, 87, NULL, NULL, NULL),
(107, 22, 92, 85, NULL, NULL, NULL),
(108, 22, 87, 84, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptive_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prerequisite` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lec_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_code`, `descriptive_title`, `prerequisite`, `units`, `lec_hours`, `lab_hours`, `contact_hours`, `course_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Comp 11', 'Introduction to Computer Science 1', 'Co-Req', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(3, 'Comp 12', 'Introduction to Computer Science 2', 'Co-Req', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(4, 'Math 13', 'College Algebra', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(5, 'Eng 11', 'Grammar and Composition 1', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(6, 'Philo 11', 'Logic', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(7, 'Fil 11', 'Komunikasyon sa Akademikong Pilipino', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(8, 'PE 11', 'Physical Fitness', NULL, '2', '2', NULL, '2', 1, NULL, NULL, NULL),
(9, 'NSTP 11', 'National Service Training Program 1', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(10, 'IT 101', 'Database Management System 1', 'Comp 11, Comp 12', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(11, 'IT 102', 'Programming 1', 'Comp 11, Comp 12', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(12, 'Math 14', 'Plane Trigonometry', 'Math 13', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(13, 'Eng 12', 'Grammar & Composition 2', 'Eng 11', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(14, 'Eng 14', 'Speech Communication', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(15, 'Fil 12', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'Fil 11', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(16, 'PE 12', 'Rhythmic Activities', 'PE 11', '2', '2', NULL, '2', 1, NULL, NULL, NULL),
(17, 'NSTP 12', 'National Service Training Program 2', 'NSTP 11', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(18, 'IT 201', 'Accounting Principles', 'Math 13', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(19, 'IT 202', 'Discrete Structures', 'Math 13', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(20, 'Math 13', 'Network Management', 'IT 101', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(21, 'IT 204', 'Operating Systems Application Concepts', 'IT 101', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(22, 'IT 205', 'Programming 2', 'IT 102', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(23, 'Eng 18', 'Business Communication', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(24, 'Lit 11', 'Literatures of the Philippines', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(25, 'Phy 13', 'General Physics 1', NULL, '4', '3', '3', '6', 1, NULL, NULL, NULL),
(26, 'PE 13', 'Individual & Dual Sports Games', 'PE 12', '2', '2', NULL, '2', 1, NULL, NULL, NULL),
(27, 'IT 206', 'Multimedia Systems', 'IT 101', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(28, 'IT 207', 'Object-Oriented Programming', 'IT 101', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(29, 'IT 208', 'Web Development', 'IT 203', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(30, 'Lit 12', 'Literatures of the World', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(31, 'Phy 15', 'General Physics 2', 'Phy 13', '4', '3', '3', '6', 1, NULL, NULL, NULL),
(32, 'Soc Sci 11', 'Philippine History', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(33, 'Stat 12', 'Probability & Statistics', 'Math 13', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(34, 'PE 14', 'Dance & Recreational Activities', 'PE 13', '2', '2', NULL, '2', 1, NULL, NULL, NULL),
(35, 'IT 301', 'Database Management System 2', 'IT 207', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(36, 'IT 302', 'IT Elective 1', 'Junior Standing', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(37, 'IT 303', 'Software Engineering', 'Junior Standing', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(38, 'Res 11', 'Methods of Research', 'Stat 12', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(39, 'Soc Sci 12', 'Politics and Governance w/ Phil. Const', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(40, 'Soc Sci 13', 'Society and Culture w/ PopEd & HIV', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(41, 'Psycho 11', 'General Psychology w/ DAP', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(42, 'IT 304', 'Computer Organization', 'IT 205', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(43, 'IT 305', 'Free Elective 1*', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(44, 'IT 306', 'Free Elective 2*', NULL, '3', '2', '3', '5', 1, NULL, NULL, NULL),
(45, 'IT 307', 'IT Elective 2**', 'Junior Standing', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(46, 'IT 308', 'Systems Analysis and Design', 'Junior Standing', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(47, 'Econ 11', 'Introduction to Economics w/ TAR', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(48, 'Soc Sci 14', 'Rizal’s Life, Works and Writings', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(49, 'IT 401', 'Capstone Project', 'Senior Standing', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(50, 'IT 402', 'Free Elective 3*', NULL, '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(51, 'IT 403', 'IT Elective 3**', 'Senior Standing', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(52, 'IT 404', 'IT Elective 4**', 'Senior Standing', '3', '2', '3', '5', 1, NULL, NULL, NULL),
(53, 'IT 405', 'IT Professional Ethics', 'Senior Standing', '3', '3', NULL, '3', 1, NULL, NULL, NULL),
(54, 'IT 406', 'Internship/OJT/Practicum', '\"Senior Standing& Zero Deficiency\"', '9', NULL, '486', NULL, 1, NULL, NULL, NULL),
(68, 'test', 'test', 'test', '1', '1', '1', '1', 1, NULL, NULL, NULL);

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
(1, 'ZXCZXCZX', 0, 'Test', 'Test', 'Test', 'test', '$2y$10$KGIG5upJ.GlYqY.O/IOaKOJcz54uanpqb5kSeiUjjLxH77QpjmnZW', 1, 1, 'YF1exF9sNdlGgYTVov9EXjoYMljobXeXa6HGdlXa0GT22V8RHHzdyvXW4kP8', NULL, '2017-11-20 02:33:13'),
(2, '', 0, 'admin', 'admin', 'admin', 'admin', '$2y$10$KGIG5upJ.GlYqY.O/IOaKOJcz54uanpqb5kSeiUjjLxH77QpjmnZW', 0, 1, 'c5Eaol6QGQ0OSAIOgpmgVJGLDa2SoAnnxzD5zsuappzLisiMkeuCQO6bLflt', NULL, NULL),
(22, '1', 1, '1', '1', '1', '1', '$2y$10$Fnta.9K5fixVwOQ8569fROnwf4GyZFw2U0l3USqXZcGdba/kfWyrq', 1, 2, NULL, NULL, NULL),
(23, '2', 1, '2', '2', '2', '2', '$2y$10$wUuk.hsQSdwozpEY.2HOlupVApq7TivfqNLZ1RS8Sut0w9CyVR0Lm', 1, 2, NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subjects_course_id_foreign` (`course_id`);

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
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `curriculums`
--
ALTER TABLE `curriculums`
  MODIFY `curriculum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `curriculumsubjects`
--
ALTER TABLE `curriculumsubjects`
  MODIFY `curriculumsubject_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `studentchecklist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
