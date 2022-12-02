-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 02 2022 г., 19:14
-- Версия сервера: 5.7.39
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `online_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img_url`, `type`) VALUES
(1, 'LACOSTE L.12.12 Blanc Eau Fraîche', 5699, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/LAC998789_mainEX.jpg', 'Perfumery'),
(2, 'DOLCE & GABBANA Dolce Lily', 4761, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/ESH818293EX.jpg', 'Perfumery'),
(3, 'VERSACE Crystal Noir Eau de Parfum', 5482, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/EVER07016EX.jpg', 'Perfumery'),
(4, 'CAROLINA HERRERA CH Men', 5811, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/CRH026267EX.jpg', 'Perfumery'),
(5, 'GIORGIO ARMANI Acqua di Gioia', 7086, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/EC1155700EX.jpg', 'Perfumery'),
(6, 'CAROLINA HERRERA Good Girl Legere', 5511, 'https://www.letu.ru/common/img/products/8411061907610_1.jpg', 'Perfumery'),
(7, 'YSL Y Eau de Parfum', 9749, 'https://www.letu.ru/common/img/products/3614272050341_500.jpg', 'Perfumery'),
(8, 'GUERLAIN Mon Guerlain Sparkling Bouquet', 5538, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/GUE991127GT.jpg', 'Perfumery'),
(9, 'DOLCE&GABBANA Light Blue Forever Eau De Parfum', 6224, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/DGB020999GT.jpg', 'Perfumery'),
(10, 'DOLCE&GABBANA The One For Men Gold Intense', 7724, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/DGB686270GT.jpg', 'Perfumery'),
(11, 'LUXVISAGE Гель для бровей суперсильной фиксации', 149, 'https://www.letu.ru/common/img/marketplace/28a9d356-2a07-4331-9cd3-e743f4dcb4ce.jpg', 'Makeup'),
(12, 'REVOLUTION MAKEUP Палетка теней для век RE-LOADED PALETTE', 729, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/RVM000071_mainGT.jpg', 'Makeup'),
(13, 'REVOLUTION PRO Бронзер и хайлайтер SCULPT AND GLOW', 746, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/RPR000089_mainGT.jpg', 'Makeup'),
(14, 'ESTEE LAUDER Бальзам для губ ухаживающий Pure Color Envy Replenish Lip Balm', 2474, 'https://www.letu.ru/common/img/products/887167443471_500.jpg', 'Makeup'),
(15, 'BUXOM Ультрасияющий блеск для губ Full-On™ с эффектом объема Коллекция BEST FRIENDS', 1049, 'https://www.letu.ru/common/img/uploaded/productImageFolder/BXM676117_2.jpg', 'Makeup'),
(16, 'CLINIQUE Жидкая подводка для век Pretty Easy Liquid Eyelining Pen', 1386, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/CLQZGC002GT.jpg', 'Makeup'),
(17, 'BUXOM Тушь для экстремально объемных и длинных ресниц XTROVERT', 1536, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/BXM4425BX_mainGT.jpg', 'Makeup'),
(18, 'DIOR Жидкое тональное средство FOREVER NATURAL NUDE', 4950, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/F00936023GT.jpg', 'Makeup'),
(19, 'GUERLAIN Основа для макияжа с натуральным золотом', 4902, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/GUE042047GT.jpg', 'Makeup'),
(20, 'POETEQ Тени для век и бровей Поэтэ', 449, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/PTQ000066GT.jpg', 'Makeup'),
(21, 'DOLCE&GABBANA L\'Imperatrice Limited Edition', 5449, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/DGB341101GT.jpg', 'Perfumery'),
(22, 'ANTONIO BANDERAS The Icon The Perfume', 1874, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/8411061999264_1GT.jpg', 'Perfumery'),
(23, 'LANVIN Sunny Magnolia', 2474, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/LNV999019GT.jpg', 'Perfumery'),
(24, 'KATE SPADE Kate Spade', 3149, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/KAS001A03GT.jpg', 'Perfumery'),
(25, 'GIVENCHY Irresistible Eau De Parfum', 8024, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/GIV400726_mainGT.jpg', 'Perfumery'),
(26, 'DOLCE MILK Бальзам для губ \"Мята Шоко-латте\"', 159, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/CLOR51872_mainGT.jpg', 'Makeup'),
(27, 'DIOR Ухаживающий корректор-крем Dior Forever Skin Correct', 3450, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/F12300100_mainGT.jpg', 'Makeup'),
(28, 'MAYBELLINE NEW YORK Блеск для губ \"Lifter Gloss\"', 719, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/MAY609689_mainGT.jpg', 'Makeup'),
(29, 'YSL Стойкая матовая помада для губ с насыщенным цветом Rouge Pur Couture The Slim', 2469, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/YSL453400GT.jpg', 'Makeup'),
(30, 'TF Палетка теней ДЛЯ ГЛАЗ BASIC PALETTE', 532, 'https://www.letu.ru/common/img/marketplace/a1ba379e-6496-4941-97c0-cea350fe7174.jpg', 'Makeup'),
(31, 'FOCALLURE Лимитированная палетка теней 15 цветов (с зеркалом) eyeshadow palette', 1299, 'https://www.letu.ru/common/img/marketplace/d3c9c0f8-7903-41f6-8a97-b31d0c151d41.jpg', 'Makeup'),
(32, 'TRUSSARDI Donna Pink Marina', 3209, 'https://www.letu.ru/common/img/uploaded/skuImageFolder/ETR80G000GT.jpg', 'Perfumery');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'Test', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
