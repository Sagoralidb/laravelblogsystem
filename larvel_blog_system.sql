-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larvel_blog_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Science', '2024-03-18 05:43:15', '2024-03-18 05:43:15'),
(2, 'Sports', '2024-03-18 05:43:15', '2024-03-18 05:43:15'),
(3, 'Entertainment', '2024-03-18 05:43:16', '2024-03-18 05:43:16'),
(4, 'জাতীয়', '2024-03-18 05:43:16', '2024-03-18 05:43:16'),
(5, 'আর্ন্তজাতিক', '2024-03-18 05:43:16', '2024-03-18 05:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` tinytext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'safdasfsfeasfsa', '2024-03-21 00:58:33', '2024-03-21 00:58:33'),
(2, 6, 1, 'ffafeafafagafdg', '2024-03-21 22:53:25', '2024-03-21 22:53:25'),
(3, 6, 1, 'sdfaefafas', '2024-03-21 22:55:32', '2024-03-21 22:55:32'),
(4, 6, 1, 'Hi, I like this post.', '2024-03-21 23:01:58', '2024-03-21 23:01:58'),
(5, 6, 1, 'This is new comment', '2024-03-21 23:56:59', '2024-03-21 23:56:59'),
(6, 6, 1, 'Hello editor', '2024-03-22 00:10:13', '2024-03-22 00:10:13'),
(7, 6, 1, 'Hello editor', '2024-03-22 00:10:24', '2024-03-22 00:10:24'),
(8, 6, 1, 'Hello editor', '2024-03-22 00:14:24', '2024-03-22 00:14:24'),
(9, 6, 1, 'Hello bro', '2024-03-22 00:15:04', '2024-03-22 00:15:04'),
(10, 5, 1, 'আইনি ব্যবস্থা গ্রহণ করা হোক।', '2024-03-22 01:46:44', '2024-03-22 01:46:44'),
(11, 5, 1, 'প্রতিবাদ জানাচ্ছি', '2024-03-22 01:51:13', '2024-03-22 01:51:13'),
(12, 9, 3, 'wow', '2024-03-23 23:46:08', '2024-03-23 23:46:08'),
(13, 9, 3, 'fesafasfsa', '2024-03-23 23:47:32', '2024-03-23 23:47:32'),
(14, 9, 2, 'Hello', '2024-03-25 04:03:41', '2024-03-25 04:03:41'),
(15, 9, 2, 'sdfsfdsd fsdfa sdf sdfa sdaf sdf sadfs fasdf sdf safds afsf', '2024-03-25 04:10:30', '2024-03-25 04:10:30'),
(16, 8, 2, 'দারুন ব্যপার', '2024-03-25 05:35:41', '2024-03-25 05:35:41'),
(17, 7, 2, 'Very Good', '2024-03-25 22:19:49', '2024-03-25 22:19:49'),
(18, 10, 2, 'Thank you for the post', '2024-03-26 02:01:11', '2024-03-26 02:01:11'),
(19, 10, 2, 'ok', '2024-03-26 02:21:35', '2024-03-26 02:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `comment__replies`
--

CREATE TABLE `comment__replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` tinytext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment__replies`
--

INSERT INTO `comment__replies` (`id`, `comment_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 'আপনাকে অনেক ধন্যবাদ', '2024-03-25 01:30:10', '2024-03-25 01:30:10'),
(7, 12, 2, 'Another Reply', '2024-03-25 05:32:04', '2024-03-25 05:32:04'),
(8, 13, 2, 'Thank you', '2024-03-25 05:32:14', '2024-03-25 05:32:14'),
(9, 14, 2, 'Hi', '2024-03-25 05:32:23', '2024-03-25 05:32:23'),
(10, 17, 2, 'Thank you', '2024-03-25 22:21:03', '2024-03-25 22:21:03'),
(11, 18, 2, 'Thankx', '2024-03-26 02:21:23', '2024-03-26 02:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, '53471710762244Screenshot 2024-03-18 173724.png', 1, '2024-03-18 05:44:04', '2024-03-18 05:44:04'),
(2, '37391710775172Screenshot 2024-03-18 211916.png', 1, '2024-03-18 09:19:32', '2024-03-18 09:19:32'),
(3, '97831710821542430129275_1844810139382184_3438940750571534743_n.jpg', 1, '2024-03-18 22:12:22', '2024-03-18 22:12:22'),
(4, '71111711263823465464.JPG', 1, '2024-03-18 22:15:04', '2024-03-24 01:03:43'),
(5, '14521710824286Screenshot 2024-03-19 105755.png', 1, '2024-03-18 22:58:06', '2024-03-18 22:58:06'),
(6, '16031710825672Screenshot 2024-03-19 111846.png', 1, '2024-03-18 23:21:12', '2024-03-18 23:21:12'),
(7, '3341710827951Screenshot 2024-03-19 115428.png', 1, '2024-03-18 23:59:11', '2024-03-18 23:59:11'),
(8, '62891710866349Screenshot 2024-03-19 223837.png', 1, '2024-03-19 10:39:09', '2024-03-19 10:39:09'),
(9, '79511710944855Screenshot 2024-03-20 202653.png', 1, '2024-03-20 08:27:35', '2024-03-20 08:27:35'),
(10, '11181711262493Screenshot 2024-03-24 124108.png', 1, '2024-03-24 00:41:33', '2024-03-24 00:41:33'),
(11, '9371171143032126 march.png', 1, '2024-03-25 23:18:41', '2024-03-25 23:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_29_140533_create_categories_table', 1),
(7, '2024_02_29_140533_create_galleries_table', 1),
(8, '2024_02_29_140534_create_posts_table', 1),
(9, '2024_02_29_140822_create_comments_table', 1),
(10, '2024_02_29_142148_create_comment__replies_table', 1),
(11, '2024_02_29_162546_create_tags_table', 1),
(12, '2024_02_29_162547_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `gallery_id`, `user_id`, `category_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 2, 'saf', 'sfa', 0, '2024-03-18 22:12:22', '2024-03-18 22:12:22'),
(4, 4, 1, 1, 'আবহাওয়া অফিসের নতুন বার্তা', 'পদ্মাটাইমস ডেস্ক: গত কয়েকদিন ধরে গরমের প্রভাব বেড়েছে। রাঙ্গামাটি, নীলফামারী ও চট্টগ্রামের সীতাকুণ্ডের ওপর দিয়ে মৃদু তাপপ্রবাহ বয়ে যাচ্ছে এবং তা অব্যাহত থাকতে পারে বলে জানিয়েছে আবহাওয়া অফিস। তবে বসন্তের হিমেল বাতাসে রাতে কিছুটা ঠান্ডা অনুভূত হচ্ছে।\r\n\r\nসোমবার (১৮ মার্চ) দেশের সর্বনিম্ন তাপমাত্রা রেকর্ড হয়েছে পঞ্চগড়ের তেঁতুলিয়ায় ১৩ দশমিক ৫ ডিগ্রি সেলসিয়াস। আর সর্বোচ্চ তাপমাত্রা রেকর্ড হয়েছে নীলফামারীর সৈয়দপুর, চট্টগ্রামের সীতাকুণ্ড ও রাঙ্গামাটিতে ৩৬ ডিগ্রি সেলসিয়াস। এ সময় ঢাকার সর্বনিম্ন ও সর্বোচ্চ তাপমাত্রা রেকর্ড হয়েছে যথাক্রমে ২৪ ডিগ্রি ও ৩৩ দশমিক ৩ ডিগ্রি সেলসিয়াস।\r\n\r\n\r\nএ দিন সন্ধ্যা ৬টা থেকে পরবর্তী ৭২ ঘণ্টার আবহাওয়ার পূর্বাভাসে বলা হয়েছে, পশ্চিমা লঘুচাপের বর্ধিতাংশ পশ্চিমবঙ্গ ও তৎসংলগ্ন এলাকায় অবস্থান করছে। মৌসুমের স্বাভাবিক লঘুচাপ দক্ষিণ বঙ্গোপসাগরে অবস্থান করছে।\r\n\r\n\r\nপ্রথম দিনে রাজশাহী, খুলনা ও বরিশাল বিভাগের দু-এক জায়গায় অস্থায়ী দমকা হাওয়াসহ বৃষ্টি বা বজ্রসহ বৃষ্টি হতে পারে। এছাড়া দেশের অন্য জায়গায় অস্থায়ীভাবে আংশিক মেঘলা আকাশসহ আবহাওয়া প্রধানত শুষ্ক থাকতে পারে। সারাদেশে দিন এবং রাতের তাপমাত্রা প্রায় অপরিবর্তিত থাকতে পারে।\r\n\r\nদ্বিতীয় দিনের পূর্বাভাসে বলা হয়েছে- রাজশাহী, ঢাকা, খুলনা, বরিশাল, চট্টগ্রাম ও সিলেট বিভাগের কিছু কিছু জায়গায় এবং রংপুর ও ময়মনসিংহ বিভাগের দু-এক জায়গায় অস্থায়ী দমকা হাওয়াসহ বৃষ্টি বা বজ্রসহ বৃষ্টি হতে পারে। সারাদেশে দিনের তাপমাত্রা (১-৩) ডিগ্রি সেলসিয়াস হ্রাস পেতে পারে এবং রাতের তাপমাত্রা সামান্য হ্রাস পেতে পারে।\r\n\r\nতৃতীয় দিনে রংপুর, রাজশাহী, ঢাকা, ময়মনসিংহ, খুলনা, বরিশাল, চট্টগ্রাম ও সিলেট বিভাগের কিছু কিছু জায়গায় অস্থায়ী দমকা হাওয়াসহ বৃষ্টি বা বজ্রবৃষ্টি হতে পারে। সারাদেশে দিনের তাপমাত্রা প্রায় অপরিবর্তিত থাকতে পারে এবং রাতের তাপমাত্রা সামান্য হ্রাস পেতে পারে।\r\n\r\nতবে বর্ধিত পাঁচ দিনের বৃষ্টিপাতের প্রবণতা হ্রাস পেতে পারে এবং তাপমাত্রা বাড়তে পারে বলে জানিয়েছে আবহাওয়া অফিস।', 1, '2024-03-18 22:15:05', '2024-03-18 22:15:05'),
(5, 5, 1, 4, 'রাজশাহী শহরকে নোংরা করে গেল বহিরাগতরা!', 'রোববার একটি রাজনৈতিক দলের রাজশাহী জেলা শাখার ব্যানারে রাজশাহী মহানগরীর অলকার মোড়ে এক ইফতার মাহফিলের আয়োজন করা হয়।\r\n\r\nইফতার মাহফিলে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন এক প্রতিমন্ত্রী। ইফতার শেষে খাবারের প্যাকেট ছড়িয়ে ছিটিয়ে পুরো অলকার মোড় ও আশপাশের এলাকা নোংরা করা হয়েছে, এতে দুর্গন্ধ ছড়াচ্ছে ওই এলাকাজুড়ে। এই কাণ্ডজ্ঞানহীন কর্মকাণ্ডে ক্ষুব্ধ নগরবাসী।\r\n\r\n\r\nরাজশাহীর সচেতন মহল বলছেন, পরিস্কার-পরিচ্ছন্ন ও পরিপাটি রাজশাহী নগরী। পরিচ্ছন্নতায় রাজশাহী নগরীর সুনাম দেশের সীমানা পেরিয়ে বিদেশেও ছড়িয়ে পড়েছে। শহর পরিচ্ছন্ন রাখতে রাজশাহী মহানগরবাসীও এখন অনেক সচেতন। নগরবাসী কেউ যত্রতত্র ময়লা-আবর্জনা ও কোন খাবারের প্যাকেট ফেলেন না।\r\n\r\n\r\nকিন্তু আজ নগরীর বাইরে থেকে এসে ইফতার মাহফিল আয়োজন করে শহর নোংরা করে গেল। ইফতারের প্যাকেট ও উচ্ছিষ্ট এভাবে ছড়িয়ে ছিটিয়ে ফেলে যাওয়া কোন সভ্য মানুষের কাজ হতে পারে না। এটি বহিরাগতদের পক্ষেই সম্ভব হয়েছে। তারা ইচ্ছেকৃতভাবে এই ঘটনা ঘটিয়েছে, কারণ এই শহরের প্রতি তাদের কোন ভালোবাসা ও দায়িত্ব নেই।\r\n\r\nনগরবাসীর অনেকে বলছেন, ইফতার আয়োজন যারা করেছেন, তাদের উচিত ছিল এলাকাটি পরিস্কার করা। কিন্তু তারা তা না করে পুরো এলাকাটি নোংরা করে গেছেন। যিনি প্রধান অতিথি ছিলেন, তিনিও কিছু বলেননি। এখন ওই এলাকা দিয়ে চলাফেরা করায় কষ্ট হচ্ছে।\r\n\r\nরাজশাহী সিটি কর্পোরেশনের পরিচ্ছন্ন কর্মীরা দিনরাত পরিশ্রম করেন শহরকে পরিচ্ছন্ন ও সুন্দর রাখতে। সেখানে একটি রাজনৈতিক দলের নেতাকর্মীরা শহরে এভাবে অপরিচ্ছন্ন ও নোংরা করে যাবে, এটি কাম্য হতে পারে না। শহর নোংরা করে তারা নিজেদের রুচি ও মানসিকতার পরিচয় দিয়েছেন।', 1, '2024-03-18 22:58:06', '2024-03-18 22:58:06'),
(6, 6, 1, 4, 'রাজশাহীতে পোস্ট অফিসের কোটি টাকা গায়েব', 'বাংলাদেশ ডাক বিভাগের রাজশাহীর তানোর ডিজিটাল পোস্ট অফিস থেকে গ্রাহকের প্রায় কোটি টাকা গায়েব ঘটনায় তদন্তে নেমেছে রাজশাহীর ডাক বিভাগের কর্মকর্তারা। টাকা গায়েবের ঘটনার বিষয়ে সত্যতা পাওয়ায় তানোর ডিজিটাল পোস্ট অফিস পোস্ট মাস্টার মকছেদ আলীকে সাময়িক বরখাস্ত করেছে কর্তৃপক্ষ।\r\n\r\nএ বিষয়ে রাজশাহীর ডাক বিভাগের পরিদর্শক মজিবুর রহমান বাদি হয়ে তানোর পোস্ট মাস্টার মকছেদ আলীকে অভিযুক্ত করে তানোর থানায় জিডি করেন। সোমবার সকালে রাজশাহী ডাক বিভাগের ডেপুটি পোস্ট মাস্টার জেনারেল মনিরু জামানের নেতৃত্বে একটি তদন্ত টিম তানোর পোস্ট উপস্থিত হয়ে গ্রাহকদের কাগজপত্র দেখা শুরু করেন।\r\n\r\n\r\nএসময় একের পর এক গ্রাহকরা পোস্ট অফিসে উপস্থিত হন। এসময় গ্রাহকরা অফিসের মধ্যে হৈচৈ শুরু করেন। ডেপুটি জেনারেল কর্মকর্তা গ্রাহকদের শান্ত করে তাদের কথা শুনেন এবং আশ^স্ত করেন তাদের কষ্টের অজিত টাকা ফিরিয়ে দেবার জোর চেষ্টা করবেন তিনি।\r\n\r\n\r\nএসময় তানোর উপজেলার কামারগাঁ বারঘরিয়া গ্রামের ভুক্তভুগি গ্রাহক জয়নাল আবেদীন বলেন আমি ২০২১ সালে বাংলাদেশ পোষ্ট অফিস সঞ্চয় ব্যাংক তানোর পোস্ট অফিসে মেয়াদী আমানত হিসাবে এফডিএ করি ৬ লাখ টাকা। পরে ২০২২ সালে আবারও ৪ লাখ টাকা এফডিএ করি। প্রথম বারের ৬ লাখ টাকার সরকারী খাতাসহ পাশ বহিতে আছে। কিন্তু পরে ৪ লাখ টাকা আমার পাশ বহিতে হাতে লেখে তুলে দিয়েছে কিন্তু সরকারী রেজিস্ট্রি খাতায় কোন লেখা নেই। ৪ লাখের কোন হদিস পাওয়া যাচ্ছে না।\r\n\r\n\r\nঅপরদিকে একই ঘটনা ঘটে অরুপ কুমার নামে আরেক গ্রাহকের ৫ লাখ ৩৮ হাজার টাকা, পুস্প রানী ৫ লাখ টাকা, সাবিয়া খাতুনের ৪ লাখ টাকা, কৃষ্ণ রানীর ৫ লাখ টাকা, রাশেদুল ৩ লাখ টাকা, পার্থ দাসের ১ লাখ টাকা, আঙ্গুরা খাতুনের ৫ লাখ টাকা, রেজিয়া খাতুনের ৫ লাখ টাকাসহ আরো অনেক গ্রাহকের প্রায় কোটি হাতিয়ে নিয়েছে তানোর পোস্ট অফিসের মাষ্টার মকছেদ আলী।\r\n\r\nগতকাল তদন্তে কমিটি গ্রাহকদের পাশ বহি সংগ্রহ করে রিছিব দেন। টাকা লোপাটের প্রমান পেয়েছে কর্মকর্তা। তদন্তের সার্থে অনেক কিছু গোপন রাখছে কর্তৃপক্ষ। গতকাল পর্যন্ত গ্রাহকদের দেয়া তথ্য মতে সব মিলিয়ে ৫০ লাখ টাকার বেশি টাকা লোপাটের প্রমান পেয়েছেন।\r\n\r\nতানোর উপজেলার বিভিন্ন এলাকায় মাইকিং করা হয়েছে গ্রাহকরা তাদের নিজ নিজ পাশবই এনে পোস্ট অফিসে মিলিয়ে নিবেন। তবে টাকা অংক আরো বাড়বে বলে ধারণা করছে তদন্ত কমিটি।\r\n\r\nএ বিষয়ে রাজশাহী ডাক বিভাগের ডেপুটি পোস্ট মাস্টার জেনারেল মনিরু জামান বলেন, তানোর ডিজিটাল পোস্ট অফিসের পোস্ট মাস্টার মকছেদ আলীকে সাময়িক ভাবে চাকুরী থেকে বরখাস্ত করা হয়েছে।\r\n\r\nতাকে অফিসে উপস্থিত থাকতে বলা হয়েছিল। কিন্তু তিনি অফিসের উপস্থিত ছিলেন না। তার ফোন বন্ধ। আমরা গ্রাহকদের সঙ্গে কথা বলে প্রমান পেয়িছি গ্রাহকদের লাখ লাখ টাকা নেবার ঘটনা সত্যতা পেয়েছি। এ যাবত ৫০ লাখ টাকা লোপাটের প্রমান মিলেছে।\r\n\r\nতানোর পোস্ট অফিসে প্রায় ২২০ জন গ্রাহক আছেন। অনেক গ্রাহক বিষয়টি জানেন না। সেজন্য এলাকায় মাইকিং করা হয়েছে। অন্য গ্রাহকরা এলে আরো বেশি টাকার অংক বাড়বে বলে আমরা ধারনা করছি। এবিষয়ে তানোর থানায় জিডি করা হয়েছে। কর্তৃপক্ষ আইনগত ব্যবস্থা নিবে।', 1, '2024-03-18 23:21:12', '2024-03-18 23:21:12'),
(7, 7, 1, 4, 'পাঁচ দিনে অর্ধেকে নামলো পেঁয়াজের দাম!', 'রমজানকে ঘিরে পাবনার সুজানগর ও সাঁথিয়ার পাইকারি বাজারে পাঁচ দিনের ব্যবধানে পেঁয়াজের দাম কমেছে প্রায় অর্ধেক। গত বুধবার (১৩ মার্চ) তিন হাজার থেকে তিন হাজার ২০০ টাকা মণের পেঁয়াজ বিক্রি হয়েছে; তবে সোমবার (১৮ মার্চ ) এক হাজার ৬০০ থেকে এক হাজার ৮০০ টাকায় পেঁয়াজ বিক্রি করতে দেখা যায়।\r\n\r\nস্থানীয় কৃষক ও পাইকারি ব্যবসায়ীরা জানান, কিছু অসাধু ব্যবসায়ী রমজান মাসে বেশি দামে বিক্রির আশায় পেঁয়াজ মজুত করেছিলেন। সেই পেঁয়াজ এখন বাজারে এসেছে। আবার কৃষকরাও নতুন পেঁয়াজ বাজারে বিক্রির জন্য তুলতে শুরু করেছেন। তাতে বাজারে সরবরাহ বেড়ে যাওয়ায় এই দরপতন ঘটেছে।\r\n\r\n\r\nজানা যায়, সুজানগর উপজেলায় প্রতি রোববার ও বুধবার পাইকারি পেঁয়াজের হাট বসে। গত বুধবার (১৩ মার্চ) এই হাটে প্রতি মণ পেঁয়াজ ৩ হাজার থেকে ৩ হাজার ২০০ টাকায় বিক্রি হয়। এরপর থেকেই পেঁয়াজের দাম কমতে শুরু করে। রোববার এই হাটে প্রতি মণ পেঁয়াজ এক হাজার ৬০০ থেকে এক হাজার ৮০০ টাকায় বিক্রি হয়। দাম কমে যাওয়ায় বহু কৃষক পেঁয়াজ বিক্রি না করে বাড়িতে ফিরে গেছেন।', 1, '2024-03-18 23:59:11', '2024-03-18 23:59:11'),
(8, 8, 1, 4, 'দুধ দিয়ে গোসল করে দ্বিতীয় বিয়ে করলেন মামুন', 'পরকীয়া প্রেমিকের সঙ্গে স্ত্রী পালিয়ে যাওয়ায় মায়ের ইচ্ছা পূরণ করতে দুধ দিয়ে গোসল করে দ্বিতীয় বিয়ে করতে গেলেন ব্যবসায়ী মো. মামুন মোল্লা (৩০)। #স্ত্রী\r\n#বিয়ে', 1, '2024-03-19 10:39:09', '2024-03-25 23:29:02'),
(9, 9, 1, 4, 'ফেব্রুয়ারি মাসে সড়ক দুর্ঘটনায় ৫৫৫ জন নিহত : যাত্রী কল্যাণ সমিতি', 'গত ফেব্রুয়ারি মাসে সারাদেশে ৫০৩টি সড়ক দুর্ঘটনায় ৫৫৫ জন নিহত এবং ১০৩১ জন আহত হয়েছেন। একইমাসে রেলপথে ৩৮টি দুর্ঘটনায় ৩৭ জন নিহত ও ৬৪ জন আহত হয়েছেন।\r\n\r\nনৌ-পথে ৫টি দুর্ঘটনায় ৭ জন নিহত, ৪ জন আহত এবং ১ জন নিখোঁজ রয়েছেন। সড়ক, রেল ও নৌ-পথে সর্বমোট ৫৪৬টি দুর্ঘটনায় ৫৯৯ জন নিহত এবং ১০৯৯ জন আহত হয়েছেন।\r\n\r\n\r\nএই সময়ে ১৭৩টি মোটরসাইকেল দুর্ঘটনায় ২১০ জন নিহত, ১২৯ জন আহত হয়েছেন। যা মোট দুর্ঘটনার ৩৪.৩৯ শতাংশ, নিহতের ৩৭.৮৩ শতাংশ ও আহতের ১২.৫১ শতাংশ।\r\n\r\nবুধবার (২০ মার্চ) দুপুরে সংবাদ মাধ্যমে বাংলাদেশ যাত্রী কল্যাণ সমিতির মহাসচিব মোজাম্মেল হক চৌধুরীর পাঠানো প্রতিবেদনে এ তথ্য পাওয়া যায়।\r\n\r\n\r\nসংগঠনটি দেশের জাতীয়, আঞ্চলিক ও অনলাইন সংবাদপত্রে প্রকাশিত সড়ক, রেল ও নৌ-পথের দুর্ঘটনা সংবাদ মনিটরিং করে এই প্রতিবেদন তৈরি করেছে বলে জানিয়েছে।\r\n\r\nপ্রতিবেদনে বলা হয়, ফেব্রুয়ারি মাসে সবচেয়ে বেশি সড়ক দুর্ঘটনা সংগঠিত হয়েছে ঢাকা বিভাগে। সেখানে ১১৫টি সড়ক দুর্ঘটনায় ১৩৫ জন নিহত ও ৩১৭ জন আহত হয়েছেন।\r\n\r\nঅন্যদিকে সবচেয়ে কম সড়ক দুর্ঘটনা সংগঠিত হয়েছে সিলেট বিভাগে। সেখানে ২১টি সড়ক দুর্ঘটনায় ২২ জন নিহত ও ৫০ জন আহত হয়েছেন।\r\n\r\nবাংলাদেশ যাত্রী কল্যাণ সমিতি দুর্ঘটনার কারণ হিসেবে উল্লেখ করেছে- ট্রাফিক আইনের অপপ্রয়োগ, দুর্বল প্রয়োগ, নিয়ন্ত্রক সংস্থার অনিয়ম দুর্নীতি ব্যাপক বৃদ্ধি; মোটরসাইকেল, ব্যাটারিচালিত রিকশা ও তিন চাকার যানের ব্যাপক বৃদ্ধি ও এসব যানবাহন সড়ক মহাসড়কে অবাধে চলাচল; সড়ক-মহাসড়কে রোড সাইন বা রোড মার্কিং, সড়কে বাতি না থাকা, রাতের বেলায় ফগ লাইটের অবাধ ব্যবহার; সড়ক-মহাসড়কে নির্মাণ ক্রটি, ফিটনেস যানবাহন ও অদক্ষ চালকের হার ব্যাপক বৃদ্ধি; ফুটপাত বেদখল, যানবাহনের ত্রুটি, ট্রাফিক আইন অমান্য করার প্রবণতা; উল্টোপথে যানবাহন চালানো, সড়কে চাঁদাবাজি এবং অদক্ষ চালক, ফিটনেসবিহীন যানবাহন, বেপরোয়াভাবে যানবাহন চালানোকে।\r\n\r\nদুর্ঘটনা প্রতিরোধে সংগঠনটির সুপারিশগুলো হচ্ছে- রাষ্ট্রীয় উদ্যোগে প্রাথমিক উৎস থেকে সড়ক দুর্ঘটনার পূর্ণাঙ্গ ডাটা ব্যাংক চালু করা; স্মার্ট গণপরিবহন ব্যবস্থা গড়ে তোলা, মোটরসাইকেল ও ইজিবাইকের মতো ছোট ছোট যানবাহন আমদানি ও নিবন্ধন বন্ধ করা; দক্ষ চালক তৈরির উদ্যোগ গ্রহণ, ডিজিটাল পদ্ধতিতে যানবাহনের ফিটনেস প্রদান; রাতের বেলায় বাইসাইকেল ও মোটরসাইকেল চালকদের রিফ্লেক্টিং ভেস্ট পোশাক পরিধান বাধ্যতামূলক করা; সড়কে চাঁদাবাজি বন্ধ করা, চালকদের বেতন ও কর্মঘণ্টা সুনিশ্চিত করা; রাতের বেলায় চলাচলের জন্য জাতীয় ও আঞ্চলিক মহাসড়কে পর্যাপ্ত আলোক সজ্জার ব্যবস্থা করা; ব্লাক স্পট নিরসন করা, সড়ক নিরাপত্তা অডিট করা, স্টার মানের সড়ক করিডোর গড়ে তোলা এবং দেশে সড়কে হাজার হাজার মানুষের মৃত্যু ঠেকাতে নিয়ন্ত্রক সংস্থা বিআরটিএ’র চলমান গতানুগতিক কার্যক্রম অডিট করে প্রাতিষ্ঠানিক দুর্বলতা চিহ্নিত করা, প্রাতিষ্ঠানিক অকার্যকারিতা সংস্কার করা।', 1, '2024-03-20 08:27:35', '2024-03-20 08:27:35'),
(10, 10, 1, 4, 'হাদিসে বর্ণিত ৪টি দোয়া', 'হাদিসে চমৎকার অর্থবোধক অনেক দোয়া বর্ণিত হয়েছে। যে দোয়াগুলো আল্লাহর রাসুল (সা.) নিজে করেছেন এবং তার সাহাবিদেরও শিখিয়েছেন। অনেক দোয়া সাহাবিরা করেছেন এবং রাসুল (সা.) তা কবুল হওয়ার জন্য দোয়া করেছেন। এই সুন্দর দোয়াগুলোর মাধ্যমে আমরাও আল্লাহর কাছে প্রার্থনা করতে পারি।\r\n\r\nহাদিসে বর্ণিত ৪টি দোয়া\r\n১. নিজের সার্বিক প্রয়োজন পূরণের জন্য আল্লাহর রাসুল (সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম) এভাবে দোয়া করতেন,\r\n\r\nاللَّهُمَّ اغْفِرْلِي وَارْحَمْنِي وَاجْبُرْنِي وَارْفَعْنِي وَاهْدِنِي وَعَافِني وَارْزُقْنِي\r\nউচ্চারণ: আল্লাহুম্মাগফিরলী ওয়ারহামনী ওয়াজবুরনী ওয়ারফা’নী ওয়াহদিনী ওয়াআফিনী ওয়ারযুকনী\r\n\r\nঅর্থ: হে আল্লাহ! আমাকে ক্ষমা করুন, দয়া করুন, আমার প্রয়োজন পূরণ করুন, আমাকে উন্নত করুন, পথ দেখান, নিরাপত্তা দিন এবং জীবিকা দান করুন। (সুনানে ইবনে মাজাহ: ৮৯৮)\r\n\r\n২. হেদায়াত, তাকওয়া, সচ্চরিত্র ও সচ্ছলতা চেয়ে আল্লাহর রাসুল (সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম) দোয়া করতেন,\r\n\r\nاَللّٰهُمَّ إنِّي أَسألُكَ الهُدَى وَالتُّقَى وَالعَفَافَ وَالغِنَى\r\n\r\nউচ্চারণ: আল্লাহুম্মা ইন্নী আসআলুকাল-হুদা ওয়াত্তুক্বা, ওয়ালআফাফা ওয়ালগিনা\r\n\r\nঅর্থ: হে আল্লাহ! আমি আপনার কাছে নিকটে সঠিক পথের দিশা, আল্লাহরভীতি, চারিত্রিক পবিত্রতা ও সচ্ছলতা প্রার্থনা করছি। (সহিহ মুসলিম: ৭০৭৯)\r\n\r\n৩. দুনিয়া ও আখেরাতের বিপদমুক্তি চেয়ে আল্লাহর রাসুল (সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম) দোয়া করতেন,\r\n\r\nاللَّهُمَّ أَحْسِنْ عَاقِبَتِنَا فِي الْأُمُورِ كُلِّهَا، وَأَجِرْنَا مِنْ خِزْيِ الدُّنْيَا وَعَذَابِ الْآخِرَةِ\r\n\r\nউচ্চারণ: আল্লাহুম্মা আহসিন আকিবাতানা ফিল উমুরি কুল্লিহা ওয়া আজিরনা মিন খিজয়িদ-দুনিয়া ওয়া আজাবিল-আখিরাতি\r\nঅর্থ: হে আল্লাহ সব বিষয়ে আমাদের শেষ পরিণতি ভালো করুন। দুনিয়ার লাঞ্চনা ও আখেরাতের শাস্তি থেকে আমাদের রক্ষা করুন। (সহিহ ইবনে হিব্বান: ৯৪৯)\r\n\r\n৪. উন্নত ইমান এবং জান্নাতে নবিজির (সা.) সান্নিধ্য চেয়ে সাহাবি আব্দুল্লাহ ইবনে মাসউদ (রহ.) দোয়া করতেন,\r\n\r\nاللَّهمَّ إنِّي أسأَلُكَ إيمانًا لا يَرتَدُّ، ونَعيمًا لا يَنفَدُ، ومُرافقةَ محمَّدٍ في أعْلى جَنَّةِ الخُلدِ\r\n\r\nউচ্চারণ: আল্লাহুম্মা ইন্নি আসআলুকা ইমানান লা য়ারতাদ্দু ওয়া নাইমান লা য়ানফাযু ওয়া মুরাফাকাতা নাবিয়্যিকা মুহাম্মাদিন সাল্লাল্লাহু আলাইহি ওয়সাল্লামা ফি আ’লা-লজান্নাতিল খুলদি।\r\nঅর্থ: হে আল্লাহ আমি আপনার কাছে এমন ইমান প্রার্থনা করি যা পরিবর্তন হবে না, এমন নেয়ামত প্রার্থনা করি যা কখনও শেষ হবে না আর প্রার্থনা করি চিরস্থায়ী জান্নাতের সর্বোচ্চ স্থানে আপনার নবি মুহাম্মাদের (সাল্লাল্লাহু আলাইহি ওয়সাল্লাম) সান্নিধ্য। (মুসনাদে আহমদ: ৪৩৪০)', 1, '2024-03-24 00:41:33', '2024-03-24 00:41:33'),
(11, 11, 1, 4, 'জাতীয় ‘গণহত্যা দিবস’ আজ', 'আজ ২৫ শে মার্চ, জাতীয় গণহত্যা দিবস। মানবসভ্যতার ইতিহাসে এটি কলঙ্কিত হত্যাযজ্ঞের দিন। নিরীহ-নিরস্ত্র বাঙালির ওপর ঝাঁপিয়ে পড়ে বর্বরোচিত গণহত্যা চালানোর এক ভয়াল স্মৃতির কালরাত এ ২৫ শে মার্চ। ১৯৭১ সালের এই রাতে পাকিস্তান সেনাবাহিনীর হাতে রচিত হয়েছিল বিশ্বের নৃশংসতম গণহত্যার এক কালো অধ্যায়।\r\nকুখ্যাত ‘অপারেশন সার্চলাইটে’র নামে মুক্তিকামী বাঙালির কণ্ঠ চিরতরে স্তব্ধ করে দেওয়ার ঘৃণ্য ষড়যন্ত্র বাস্তবায়ন শুরু হয় এই রাতে। বাংলাদেশের স্বাধীনতা ঘোষণার প্রাক্কালের এই গণহত্যার দিনটিকে ‘জাতীয় গণহত্যা দিবস’ হিসেবে স্মরণ করে আসছে জাতি।\r\nজাতির পিতার নেতৃত্বে আওয়ামী লীগ ’৭০-এর নির্বাচনে জাতীয় পরিষদে একক সংখ্যাগরিষ্ঠতা অর্জন করলেও পাক-সামরিক জান্তা ক্ষমতা হস্তান্তরে নানা টালবাহানা শুরু করে। লোক দেখানো বৈঠকের মাধ্যমে সময় ক্ষেপণ করে নিরস্ত্র বাঙালি নিধনের গোপন ষড়যন্ত্রে লিপ্ত হয়।', 1, '2024-03-25 23:18:41', '2024-03-26 03:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(3, 2),
(3, 3),
(4, 2),
(5, 3),
(5, 5),
(6, 3),
(6, 5),
(7, 2),
(7, 5),
(8, 1),
(8, 3),
(8, 3),
(8, 4),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 1),
(10, 4),
(4, 2),
(4, 3),
(4, 4),
(11, 3),
(11, 5),
(11, 3),
(11, 5),
(8, 1),
(8, 3),
(8, 3),
(8, 3),
(8, 4),
(8, 4),
(8, 1),
(8, 1),
(8, 3),
(8, 3),
(8, 3),
(8, 3),
(8, 3),
(8, 3),
(8, 4),
(8, 4),
(8, 4),
(8, 4),
(11, 3),
(11, 3),
(11, 5),
(11, 5),
(11, 3),
(11, 3),
(11, 3),
(11, 3),
(11, 5),
(11, 5),
(11, 5),
(11, 5),
(11, 3),
(11, 3),
(11, 3),
(11, 3),
(11, 5),
(11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'php', '2024-03-18 05:43:16', '2024-03-18 05:43:16'),
(2, 'laravel', '2024-03-18 05:43:16', '2024-03-18 05:43:16'),
(3, 'backend development', '2024-03-18 05:43:16', '2024-03-18 05:43:16'),
(4, 'fontend development', '2024-03-18 05:43:16', '2024-03-18 05:43:16'),
(5, 'js', '2024-03-18 05:43:16', '2024-03-18 05:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sagor Ali BD', 'mdsagorali033@gmail.com', 1, NULL, '$2y$12$eiRmYKiKEb6DwTwNXnrZI.GgxQZCiFqiml9MeuQZpD4j9c0dUn9Gi', NULL, '2024-03-18 05:43:15', '2024-03-26 05:59:53'),
(2, 'Sanzida Hahar', 'sanzidanaharbd@gmail.com', 0, NULL, '$2y$12$6JPBgZZUjZ4jl.haNaZsie1.zx2RYXBZla0Tu38w8t2/woKoOxTgi', NULL, '2024-03-23 23:38:12', '2024-03-23 23:38:12'),
(3, 'Sanzida Nahar', 'sanzidakanna@gmail.com', 0, NULL, '$2y$12$lvrok5dhbWN3P8jXQZvV9uuVc/r1MscW5IdgIzvWd5zCFNw8gi9n6', NULL, '2024-03-23 23:44:34', '2024-03-23 23:44:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `comment__replies`
--
ALTER TABLE `comment__replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment__replies_comment_id_foreign` (`comment_id`),
  ADD KEY `comment__replies_user_id_foreign` (`user_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_gallery_id_foreign` (`gallery_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comment__replies`
--
ALTER TABLE `comment__replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comment__replies`
--
ALTER TABLE `comment__replies`
  ADD CONSTRAINT `comment__replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comment__replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`),
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
