-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 26 2020 г., 20:13
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `t66966h0_exam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--
-- Создание: Июл 08 2020 г., 18:27
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'FEATURED NEWS', NULL, NULL),
(2, 'UPCOMING EVENTS', NULL, NULL),
(3, 'UPCOMING GAME', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--
-- Создание: Июл 06 2020 г., 15:09
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `adress`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'example@sport-club.com', 'Brooklyn, NY 10036, United States', '1-800-123-1234; 1-800-123-5679', NULL, '2019-11-01 11:11:51');

-- --------------------------------------------------------

--
-- Структура таблицы `fotos`
--
-- Создание: Июл 06 2020 г., 15:02
--

DROP TABLE IF EXISTS `fotos`;
CREATE TABLE `fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fotos`
--

INSERT INTO `fotos` (`id`, `img`, `created_at`, `updated_at`) VALUES
(2, 'images/slideshow-image2.jpg', NULL, NULL),
(3, 'images/slideshow-image1.jpg', NULL, NULL),
(5, 'images/slideshow-image3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--
-- Создание: Июл 06 2020 г., 14:48
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_24_075154_create_fotos_table', 1),
(4, '2019_10_24_094012_create_treams_table', 2),
(5, '2019_10_24_094039_create_contacts_table', 2),
(6, '2019_10_24_094721_create_categories_table', 2),
(7, '2019_10_27_074434_create_roles_table', 3),
(8, '2019_10_27_074655_create_players_table', 3),
(9, '2019_10_30_155519_create_posts_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--
-- Создание: Июл 08 2020 г., 19:05
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `article`, `img`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Texas Rangers Finish In Second Place 2019', '<p>Posted on June 22, 2010 in: Featured News Black alloys, Sat Nav, Bluetooth, 4 seats, Ceramic Brakes, Power boot, Soft closing doors, Alcantara roof lining, Double glazing, Keyless entry, Keyless start, Carbon fibre dash and door inserts, IPod connection. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...</p>', 'images/5.jpg', 1, NULL, '2019-11-01 10:41:53'),
(2, 'The Most Epic Match Of The Season', 'Posted on June 22, 2010 in: Featured News\r\n\r\nDon\'t walk through life just playing football. Don\'t walk through life just being an athlete. Athletics will fade. Character and integrity are the...', '', 2, NULL, NULL),
(3, 'The Most Epic Match Of The Season', 'Posted on June 22, 2010 in: Featured News\r\n\r\nDon\'t walk through life just playing football. Don\'t walk through life just being an athlete. Athletics will fade. Character and integrity are the...', '', 2, NULL, NULL),
(4, 'Nominated Club Of The Year', 'Posted on June 22, 2010 in: Featured News\r\n\r\nDon\'t walk through life just playing football. Don\'t walk through life just being an athlete. Athletics will fade. Character and integrity are the...', '', 2, NULL, NULL),
(5, 'AMERICAN EAGLES VS. THE WASHINGTON REDSKINS', 'Texas Rangers Finish In Second Place\r\nDon\'t walk through life just playing football. Don\'t walk through life just being an athlete. Athletics will fade. Character and integrity are the ultimate vision, the', 'images/4.jpg', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--
-- Создание: Июл 06 2020 г., 14:43
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--
-- Создание: Ноя 02 2019 г., 19:35
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `players`
--

INSERT INTO `players` (`id`, `name`, `role_id`, `img`, `created_at`, `updated_at`) VALUES
(1, 'LAMBORGHINI GALLARDO', 1, 'images/user1.jpg', NULL, NULL),
(2, 'LAMBORGHINI GALLARDO', 3, 'images/user2.jpg', NULL, '2019-11-01 08:33:57'),
(3, 'LAMBORGHINI GALLARDO', 2, 'images/user3.jpg', NULL, NULL),
(4, 'LAMBORGHINI GALLARDO', 2, 'images/user4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--
-- Создание: Июл 06 2020 г., 15:18
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `massege` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `name`, `email`, `massege`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'наталія артемівна', 'fff@gmail.com', 'zdfnglkzfsdbmg', NULL, '2019-10-30 14:06:40', '2019-10-30 14:06:40'),
(12, 'наталія артемівна', 'vrach.echo@gmail.com', 'Yes', NULL, '2019-10-30 15:05:55', '2019-10-30 15:05:55'),
(14, 'наталія артемівна', 'gggg@gmail.com', 'hh', NULL, '2019-10-30 15:09:31', '2019-10-30 15:09:31'),
(17, 'Мария', 'cfsdfds@gmail.com', 'fbf', NULL, '2019-10-30 15:10:50', '2019-10-30 15:10:50'),
(20, 'наталія артемівна', 'dsjvnhkj\\vhnkd\\@gmail.com', 'vds', NULL, '2019-10-30 15:12:33', '2019-10-30 15:12:33'),
(22, 'наталія артемівна', 'vbsdjhbvho@gmail.com', 'hello dolly', NULL, '2019-10-31 05:31:43', '2019-10-31 05:31:43'),
(23, 'наталья', 'jbvhb\\zho@gmail.com', 'hello', NULL, '2019-10-31 05:32:19', '2019-10-31 05:32:19'),
(25, 'наталія артемівна', 'yatsenko.zp.network@gmail.com', 'hello', NULL, '2019-10-31 05:34:43', '2019-10-31 05:34:43'),
(27, 'Maria', 'gggg.network@gmail.com', 'fun', NULL, '2019-10-31 12:52:58', '2019-10-31 12:52:58'),
(29, 'Maria', 'jjjjo.zp.network@gmail.com', 'hey', NULL, '2019-10-31 12:56:40', '2019-10-31 12:56:40'),
(31, 'Maria', 'ghgfhgf.zp.network@gmail.com', 'fffff', NULL, '2019-10-31 12:59:15', '2019-10-31 12:59:15'),
(32, 'Maria', 'gkjadlkajl.zp.network@gmail.com', 'hello', NULL, '2019-10-31 13:01:53', '2019-10-31 13:01:53');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--
-- Создание: Июл 06 2020 г., 13:41
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Defender', NULL, NULL),
(2, 'Midfielder', NULL, NULL),
(3, 'Goalkeeper', NULL, NULL),
(4, 'Sweeper', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--
-- Создание: Июл 08 2020 г., 20:01
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` bigint(50) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `treams`
--
-- Создание: Июл 06 2020 г., 14:00
--

DROP TABLE IF EXISTS `treams`;
CREATE TABLE `treams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `treams`
--

INSERT INTO `treams` (`id`, `name`, `img`, `role`, `created_at`, `updated_at`) VALUES
(1, 'LAMBORGHINI GALLARDO', 'images/user1.jpg', 'Defender', NULL, NULL),
(2, 'LAMBORGHINI GALLARDO', 'images/user2.jpg', 'Midfielder', NULL, NULL),
(3, 'LAMBORGHINI GALLARDO', 'images/user3.jpg', 'Goalkeeper', NULL, NULL),
(4, 'LAMBORGHINI GALLARDO', 'images/user4.jpg', 'Sweeper', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Июл 06 2020 г., 14:00
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(50) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maria', 'aaa@gmail.com', NULL, '12345678', NULL, NULL, NULL, NULL),
(2, 'Maria', 'yatsenko.zp.network@gmail.com', NULL, '$2y$10$kg/QzsnUYNLiFtfHR1DjgeJcnw1/.eefU/YUjZW5hXlL0aZag/4q.', NULL, NULL, '2019-10-31 12:47:34', '2019-10-31 12:47:34');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_email_unique` (`email`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_role_unique` (`role`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `treams`
--
ALTER TABLE `treams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `treams`
--
ALTER TABLE `treams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
