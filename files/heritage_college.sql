-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 06:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heritage_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Koushik Samanta', 'koushiksamanta034@gmail.com', NULL, '$2a$12$1a0EQRfpond6HuDB9CC1jeUtP74RL4bROWB0BXarIzTtHxJ/.zP9m', NULL, '2022-02-05 10:05:34', '2022-02-05 10:05:34'),
(2, 'HCE Admin', 'bagnanheritage@gmail.com', NULL, '$2a$12$cz.6lYpPJsfMMvYotRB2quKQWvDEYEMO8KUbxwIuLHSVSxLVTFnVG', NULL, '2022-06-03 03:02:05', '2022-06-03 03:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

CREATE TABLE `affiliations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliations`
--

INSERT INTO `affiliations` (`id`, `title`, `logo`, `link`, `created_at`, `updated_at`) VALUES
(1, 'NCTE', 'uploads/affiliations/HCE-AFFILIATION-1654191914.png', 'https://ncte.gov.in/', '2022-05-28 09:43:19', '2022-06-02 12:15:14'),
(2, 'WBUTTEPA', 'uploads/affiliations/HCE-AFFILIATION-1654191895.png', 'https://www.wbuttepa.ac.in/', '2022-06-02 12:14:56', '2022-06-02 12:14:56'),
(3, 'WBBPE', 'uploads/affiliations/HCE-AFFILIATION-1654192010.png', 'https://www.wbbpe.org/', '2022-06-02 12:16:50', '2022-06-02 12:16:50'),
(4, 'UGC', 'uploads/affiliations/HCE-AFFILIATION-1654192140.jpg', 'https://www.ugc.ac.in/', '2022-06-02 12:17:48', '2022-06-02 12:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `biometrics`
--

CREATE TABLE `biometrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `week1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biometrics`
--

INSERT INTO `biometrics` (`id`, `year`, `month`, `week1`, `week2`, `week3`, `week4`, `week5`, `created_at`, `updated_at`) VALUES
(1, '2021', 'February', 'uploads/biometric/1974/February/HCE-BIOMETRIC-WEEK-1.pdf', 'uploads/biometric/1974/February/HCE-BIOMETRIC-WEEK-2.pdf', NULL, NULL, NULL, '2022-05-30 09:51:23', '2022-06-02 09:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_type` enum('bed','dled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bed',
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intake_capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syllabus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_type`, `course_name`, `duration`, `exam_type`, `course`, `intake_capacity`, `board`, `session`, `syllabus`, `admission_link`, `created_at`, `updated_at`) VALUES
(1, 'dled', 'D. El. Ed.', '2 Years', 'Yearly', 'Bengali , English , Hindi', '100 Students', 'W.B.B.P.E', 'July', 'uploads/course/dled-syllabus.pdf', 'https://www.wbbpe.org/', '2022-05-25 10:11:58', '2022-05-30 20:07:55'),
(2, 'bed', 'B. Ed.', '2 Years', 'Semester', 'English, Bengali, Mathematics, Sanskrit, History, Geography, Life Science, Physical Science, Education.', '100 Students', 'W.B.U.T.T.E.P.A', 'July', 'uploads/course/bed-syllabus.pdf', 'https://www.wbbpe.org/', '2022-05-25 10:13:12', '2022-05-30 20:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_site_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `date`, `title`, `description`, `image`, `social_site_link`, `created_at`, `updated_at`) VALUES
(1, '2022-06-01', 'Voluptatum magnam pe', 'Commodo quidem rerum', 'uploads/event/HCE-NOTICE-1653620759.jpg', 'http://dsdfsdfs.com', '2022-05-26 21:35:59', '2022-06-07 10:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(2, 2, 'uploads/gallery/gallery-image-1653962675.jpg', '2022-05-30 20:34:35', '2022-05-30 20:34:35'),
(3, 3, 'uploads/gallery/gallery-image-1653962694.jpg', '2022-05-30 20:34:54', '2022-05-30 20:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Library', '2022-05-24 21:26:24', '2022-05-24 21:26:24'),
(3, 'Class Rooms', '2022-05-24 21:26:33', '2022-05-30 21:11:25'),
(4, 'Building', '2022-05-30 21:10:54', '2022-05-30 21:10:54'),
(5, 'Campus', '2022-05-30 21:11:03', '2022-05-30 21:11:03'),
(6, 'Smart Class', '2022-05-30 21:11:36', '2022-05-30 21:11:36'),
(7, 'Laboratories', '2022-05-30 21:11:46', '2022-05-30 21:11:46'),
(8, 'Music', '2022-05-30 21:11:54', '2022-05-30 21:11:54'),
(9, 'Canteen', '2022-05-30 21:12:01', '2022-05-30 21:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `welcome_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `welcome_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_trust_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_trust_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `president_desk_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `president_desk_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretary_desk_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretary_desk_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `welcome_title`, `welcome_content`, `about_us_title`, `about_us_content`, `about_trust_title`, `about_trust_content`, `president_desk_title`, `president_desk_content`, `secretary_desk_title`, `secretary_desk_content`, `created_at`, `updated_at`) VALUES
(2, 'Heritage College Of Education', '<p>Any progressive nation is always in demand of a high level of a knowledge-based society. To achieve it enhanced educated, trained, skilled and research prone professionals are constantly needed. Considering this some visionaries, enlightened persons of the educational arena engaged in various social development activities have taken the oath to set up and flourish a B.Ed. College in the remotest corner of rural Bengal(Howrah) to extend the scope of teacher\'s training to the unreached.</p>\r\n<p>B.Ed. Degree is the pillar and compulsory too, to impact quality education and innovative teaching techniques. It is such a venture with merit that can bring a radical change and outcome in the community, society, and nation as a whole. On the eve of a new century, only the educated younger generation can usher positive contribution towards sustainable development of individuals and nation as well.</p>\r\n<p>Heritage College of Education(B.Ed.) is Bound to tread towards this goal with its whole-hearted effort and collective cooperation of all associated with it.</p>', 'About Us', '<p>Heritage College Of Education one of the dreams of the trust, is coming up with in-a modern, spacious building that has been constructed in a sprawling the acres of land. Heritage College Of Education prepares Teachers to teach High Schools. The B.Ed program includes both theory and practice. The practice teaching forms the most important component of the training which is practical based. The students acquire and develop the curricular, co-curricular activities, skills, and techniques of teaching. The intake of this college is 100. It is centrally located, surrounded by a serene atmosphere, and is easily accessible by all kinds of transport.</p>', 'About Trust', '<p>BAGNAN EDUCATIONAL TRUST AND WELFARE TRUST was established in the year 2012 with the objective of imparting quality education to the youth residing in Bagnan and surrounding areas. As the first step in this direction, the Trust started the HERITAGE COLLEGE OF EDUCATION to impart education after the degree course, we are happy to say that due to the benevolent encouragement of local residents and the dedicated service by the teaching fraternity, the College has developed into a prime educational institution in the locality, with a future student strength of about 100 students. This is solely the beginning and we expect every flourishing in near future.</p>', 'President Desk', '<p>As we all know the \'Teachers are the makers\' expressing my absolute happiness and pride to be with the \'would be teachers\', the future of the nation. H.C.E. is all set to provide opportunities for imparting quality education,innovative teaching techniques,ethical and moral guidance for upliftment of the educational standard,particularly in the teaching learning part. Belive our collective sincerity,fortitude,dedication and co-operation enable us to achive our goal. Lot of blessings for students and immense gratitude to the parents,guardains and well-wishers showing interst for our institute.</p>', 'Secretary Desk', '<p>In the context of rapid global changes and challenges we strive to establish an educational institute to impart enhanced knowledge,education and training to teacher educator and pupil teacher group better equipped and skilled to meet the need to the day and future as well.We have been trying our level best to create a student friendly educational atmosphere and bound to render all sorts of standard services needful for our beloved students.Belief,it is not a one way traffic but the outcome of collective venture of all associated with the institute.Expect,its shining status for any time and every time.</p>', '2022-06-02 12:27:23', '2022-06-02 12:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_banners`
--

CREATE TABLE `home_page_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_banners`
--

INSERT INTO `home_page_banners` (`id`, `title`, `image_link`, `created_at`, `updated_at`) VALUES
(3, 'HERITAGE COLLEGE OF EDUCATION', 'uploads/banners/HCE-BANNER-1653924489.jpg', '2022-05-30 09:58:09', '2022-05-30 09:58:09'),
(4, 'HERITAGE COLLEGE OF EDUCATION', 'uploads/banners/HCE-BANNER-1654192961.jpg', '2022-06-02 12:32:41', '2022-06-02 12:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructures`
--

CREATE TABLE `infrastructures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `building` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_rooms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smart_class` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laboratories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `library` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canteen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infrastructures`
--

INSERT INTO `infrastructures` (`id`, `building`, `campus`, `class_rooms`, `smart_class`, `laboratories`, `music`, `library`, `canteen`, `created_at`, `updated_at`) VALUES
(1, '<p>BHC have&nbsp;all facilities as per as NCTE guidelines.</p>', '<p>Located amidst a lush green backdrop of rice fields, the serene, pollution free sprawling campus has a world class infrastructure and facilities.</p>', '<p>The classrooms are bright, airy, spacious and cheerful. The classrooms are equipped with age appropriate, comfortable, attractive, colourful, child friendly furniture.</p>', '<p>Classroom has digital board with multimedia projector to make the learning process interactive and conceptual.</p>', '<p>Science Lab equipped with state-of-the-art equipment fulfilling an inescapable requirement of the curriculum.</p>', '<p>The COLLEGE provides training in both vocal as well as instrumental music. Music enhances the aesthetic sense of the students.</p>', '<p>Library includes every types of educational Journal, Thesis, Books.</p>', '<p>Canteen are availavle in campus area.</p>', '2022-05-25 21:53:50', '2022-06-02 12:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `mandatory_disclosures`
--

CREATE TABLE `mandatory_disclosures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dled_md_format` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_md_format` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_sheet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_and_expenditure` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_payment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mandatory_disclosures`
--

INSERT INTO `mandatory_disclosures` (`id`, `description`, `dled_md_format`, `bed_md_format`, `balance_sheet`, `income_and_expenditure`, `receipt_payment`, `created_at`, `updated_at`) VALUES
(1, '<p>dbrterstvweawewaewt</p>\r\n<p>waerwaerwerwaerwarwr</p>', 'uploads/mandatory-disclosure/dled-md-format.pdf', 'uploads/mandatory-disclosure/bed-md-format.pdf', 'uploads/mandatory-disclosure/balance-sheet.pdf', NULL, NULL, '2022-05-28 04:55:25', '2022-05-28 04:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `mandatory_disclosure_documents`
--

CREATE TABLE `mandatory_disclosure_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mandatory_disclosure_documents`
--

INSERT INTO `mandatory_disclosure_documents` (`id`, `title`, `file_link`, `created_at`, `updated_at`) VALUES
(2, 'Natus quidem magni e', 'uploads/mandatory-disclosure/documents/HCE-DOCUMENT-1653749504.pdf', '2022-05-28 09:21:44', '2022-05-28 09:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_14_000000_create_admins_table', 2),
(6, '2022_05_24_151332_create_site_settings_table', 3),
(7, '2022_05_25_014800_create_galleries_table', 4),
(8, '2022_05_25_015138_create_gallery_categories_table', 5),
(9, '2022_05_25_145915_create_courses_table', 6),
(10, '2022_05_25_154909_create_resource_people_table', 7),
(11, '2022_05_26_023809_create_infrastructures_table', 8),
(12, '2022_05_27_020000_create_notices_table', 9),
(13, '2022_05_27_020025_create_events_table', 9),
(14, '2022_05_28_095545_create_mandatory_disclosures_table', 10),
(15, '2022_05_28_095845_create_mandatory_disclosure_documents_table', 10),
(16, '2022_05_28_112943_create_home_pages_table', 11),
(17, '2022_05_28_115908_create_home_page_banners_table', 12),
(18, '2022_05_28_145425_create_affiliations_table', 13),
(19, '2022_05_28_153113_create_students_table', 14),
(20, '2022_05_28_162615_create_biometrics_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `date`, `title`, `description`, `file`, `created_at`, `updated_at`) VALUES
(1, '2022-05-13', 'Dolor doloremque vol', 'Provident est ea mi', 'uploads/notice/HCE-NOTICE-1653619690.pdf', '2022-05-26 21:07:01', '2022-05-26 21:18:10'),
(3, '2022-05-28', 'Reprehenderit et ir', 'Sequi debitis conseq', NULL, '2022-05-26 21:09:26', '2022-05-26 21:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resource_people`
--

CREATE TABLE `resource_people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resource_person_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NA',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NA',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NA',
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NA',
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NA',
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NA',
  `course` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed` tinyint(1) NOT NULL DEFAULT 0,
  `dled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_people`
--

INSERT INTO `resource_people` (`id`, `resource_person_type`, `name`, `email`, `mobile`, `photo`, `experience`, `designation`, `qualification`, `salary`, `course`, `bed`, `dled`, `created_at`, `updated_at`) VALUES
(2, 'Teaching Staff', 'Elizabeth Oconnor', 'tinoceg@mailinator.com', '6767867867867867', 'uploads/resource-person/elizabeth-oconnor-image-1653498932.webp', 'NA', 'NA', 'NA', 'NA', '[\"bed\"]', 1, 0, '2022-05-25 11:36:07', '2022-06-07 10:01:10'),
(4, 'Teaching Staff', 'test-project', 'subham.ghorui@gmail.com', '7867867865645648', 'assets/img/blank-profile-picture.png', 'NA', 'NA', 'NA', 'NA', '[\"bed\",\"dled\"]', 1, 1, '2022-06-07 10:02:25', '2022-06-07 10:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_short_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `header_logo`, `footer_logo`, `footer_short_info`, `address`, `email`, `phone`, `facebook_url`, `twitter_url`, `instagram_url`, `created_at`, `updated_at`) VALUES
(1, 'uploads/header-logo.png', 'uploads/header-logo.png', 'Heritage College Of Education One Of The Dreams Of The Trust, Is Coming Up In-A Modern, Spacious Building That Has Been Constructed In A Sprawling The Acres Of Land. Heritage College Of Education Preparing Teachers To Teach High Schools.', 'Vill.+P.O.-Rabibhag, P.S.-Bagnan, District-Howrah, State-W.B., Pin-711312.', 'bagnanheritage@gmail.com', '9051729961 / 9775528799 / 8001454620', NULL, NULL, NULL, '2022-05-24 11:05:23', '2022-06-02 12:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `course_type`, `session_start`, `session_end`, `student_data`, `created_at`, `updated_at`) VALUES
(1, 'B.ED.', '2020', '2021', 'uploads/students/HCE-STUDENTS-BED-2020-2021.pdf', '2022-05-28 10:40:09', '2022-05-31 21:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `affiliations`
--
ALTER TABLE `affiliations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biometrics`
--
ALTER TABLE `biometrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_banners`
--
ALTER TABLE `home_page_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastructures`
--
ALTER TABLE `infrastructures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandatory_disclosures`
--
ALTER TABLE `mandatory_disclosures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mandatory_disclosure_documents`
--
ALTER TABLE `mandatory_disclosure_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `resource_people`
--
ALTER TABLE `resource_people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `affiliations`
--
ALTER TABLE `affiliations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biometrics`
--
ALTER TABLE `biometrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_page_banners`
--
ALTER TABLE `home_page_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `infrastructures`
--
ALTER TABLE `infrastructures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mandatory_disclosures`
--
ALTER TABLE `mandatory_disclosures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mandatory_disclosure_documents`
--
ALTER TABLE `mandatory_disclosure_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resource_people`
--
ALTER TABLE `resource_people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
