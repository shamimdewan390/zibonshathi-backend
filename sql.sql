-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 01, 2020 at 09:21 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `zibonshathiv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_03_114208_create_visitors_table', 1),
(5, '2020_05_03_200856_create_services_table', 1),
(6, '2020_05_04_092707_create_blogs_table', 1),
(7, '2020_05_07_104311_create_contacts_table', 1);

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fas fa-headset help\"></i>', '24/7 Customer service', 'We provide customer support from 10 a.m. to 6 p.m. Clients can contact with us via email, phone and Facebook messenger. We try to give simple and expeditious solutions to your problems.', 1, NULL, NULL),
(2, '<i class=\"fas fa-people-arrows\"></i>', 'Special consultancy', 'We advice on how to make your profile stand out. If you are a premium customer, we will aid you in search of suitable matches based on your preferences. We will aid you by providing some links of potential bride/groom based on your preference.', 1, NULL, NULL),
(3, '<i class=\"fab fa-facebook-f\"></i>', 'Facebook page for live interaction', 'We have a facebook page where our clients may initiate live interaction with us. We try to solve any type of problems and answer any kind of query of our clients. Besides we sometime post our registered clients words about themselves in our page.', 1, NULL, NULL),
(4, '<i class=\"fas fa-shield-alt\"></i>', 'Security and privacy ensured', 'Your photo, real name and complete profile will not be seen by any other user without your permission. For contact information user have to go through two step security process. We also verify mobile number and take necessary action against doubtful profile.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothertongue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maritalstatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `pending` tinyint(4) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smoke` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complexion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grewup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherstatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherstatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brothers` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sisters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workingwith` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userfacebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` text COLLATE utf8mb4_unicode_ci,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_exp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gimage1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gimage2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gimage3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gimage4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `provider`, `provider_id`, `gender`, `age`, `height`, `location`, `religion`, `mothertongue`, `occupation`, `maritalstatus`, `avatar`, `user_type`, `status`, `pending`, `priority`, `email_verified_at`, `password`, `details`, `weight`, `bodytype`, `blood`, `smoke`, `complexion`, `dob`, `country`, `grewup`, `fatherstatus`, `motherstatus`, `brothers`, `sisters`, `education`, `profession`, `university`, `income`, `workingwith`, `userphone`, `userfacebook`, `testimonial`, `payment_id`, `paying_amount`, `blnc_transection`, `payment_date`, `payment_exp`, `gimage1`, `gimage2`, `gimage3`, `gimage4`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Amir Hamza', 'ah.zahed00@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:20:00'),
(2, 'Anjushell', 'anjushell@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:20:00'),
(3, 'Mahmud Apu', 'apu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:20:00'),
(4, 'Abu Horaira', 'mobin@gmail.com', NULL, NULL, 'Male', '21', '5ft 3in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/abu.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(5, 'Marzia Rasid', 'marzia@gmail.com', NULL, NULL, 'Female', '22', '5ft 3in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/marzia.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(6, 'Amir Hamza', 'hamza@gmail.com', NULL, NULL, 'Male', '24', '5ft 8in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/amir.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pakistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(7, 'Nayan Biswas', 'nayan@gmail.com', NULL, NULL, 'Male', '24', '5ft 5in', 'Keranigonj', 'Hindu', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/nayan.jpeg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(8, 'Rani Baul', 'rain@gmail.com', NULL, NULL, 'Female', '26', '4ft 9in', 'Keranigonj', 'Hindu', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/rani.jpeg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(9, 'Sabrina Esha', 'sabrina@gmail.com', NULL, NULL, 'Female', '22', '4ft 8in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/sabrina.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(10, 'Mosarof Sabu', 'sabu@gmail.com', NULL, NULL, 'Male', '29', '5ft 1in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/sabu.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(11, 'Sadia Afrin', 'sadia@gmail.com', NULL, NULL, 'Female', '25', '5ft 2in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/sadia.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13'),
(12, 'Sajib Mahmud', 'sajib@gmail.com', NULL, NULL, 'Male', '26', '5ft 9in', 'Keranigonj', 'Islam', 'Bangla', 'Computers / IT', 'UnMarried', 'public/frontend/images/users/sajib.jpg', 0, 1, 1, 0, '2020-06-30 18:00:00', '$2y$10$g88tWRAoBtCsbVLb6C9adOMWTt6K24M5i4HWxJWP.zxkPWdP3YMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-01 02:20:00', '2020-07-01 02:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `created_at`, `updated_at`) VALUES
(1, '::1', '2020-07-01 02:25:50pm', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_userphone_unique` (`userphone`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
