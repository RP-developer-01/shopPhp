-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 28 2023 г., 23:02
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ecommerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anons` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `category` varchar(30) CHARACTER SET ucs2 COLLATE ucs2_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `anons`, `text`, `img`, `price`, `category`) VALUES
(1, 'Крутые часы', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat.', 'watch.jpg', 200, 'watches'),
(2, 'Крутые мужские часы 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. 2', 'watch.jpg', 200, 'watches'),
(3, 'Куртка Staff soft shell plaz black', 'Изделие, скомбинированное из почти невесомых материалов, сделает твой день более комфортным, удобная посадка не будет сковывать движения.', 'Изделие, скомбинированное из почти невесомых материалов, сделает твой день комфортнее, удобная посадка не будет сковывать движений, а в карманах на молнии всегда найдётся достаточно места для личных вещей.\r\n\r\nМатериал:\r\n- верх 100% полиэстер с ветро- и влагозащитной мембраной;\r\n- на спине внутри тёплый микрофлис;\r\n- внутри спереди высококачественный утеплитель Hollowsoft.\r\n\r\nДетали и крой:\r\n- классический крой;\r\n- высокая горловина;\r\n- капюшон регулируется шнуром с пластиковыми фиксаторами;\r\n- качественный тракторный замок-молния внутри дополнен ветрозащитной планкой;\r\n- четыре кармана на молнии: два внизу, два нагрудных;\r\n- снизу внутри эластичная стяжка с пластиковыми фиксаторами по бокам для регулировки ширины;\r\n- бирка с фирменным логотипом Staff вшита в боковой шов.', 'short-north.jpg', 5200, 'Jackets'),
(4, 'Кепка Myrtle Beach светло-серая кэжуал полиэстер', 'Кепка Тракер. Размер универсальный. Размер регулируется пластиковой застёжкой. Лобная часть мягкая, но прочная, подшита поролоном. Задняя часть состоит из 4 панелей, изготовлены из сеточки.', 'Кепка Тракер. Размер универсальный. Размер регулируется пластиковой застёжкой. Лобная часть мягкая, но прочная, подшита поролоном. Задняя часть состоит из 4 панелей, изготовлены из сеточки. Панели вверху закреплены заглушкой на металлическом креплении. Козырёк прочный, классической длины, не деформируется. Все швы изнутри подшиты прочной лентой, а по обхвату кепка подшита пластикой лентой, благодаря чему все швы качественные, а кепка прекрасно держит форму. Унисекс. Состав: 100% полиэстер.', 'hat-2.jpg', 550, 'hats'),
(5, 'Кепка Shield SGS Sport Line бейсболка логотип чёрная спортивная полиэстер', 'Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.', 'Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.', 'hat-1.jpg', 450, 'hats'),
(8, 'Лонгслив с принтом', 'круглая горловина, застежка на пуговицы, длинные рукава, декоративный принт', 'круглая горловина, застежка на пуговицы, длинные рукава, декоративный принткруглая горловина, застежка на пуговицы, длинные рукава, декоративный принткруглая горловина, застежка на пуговицы, длинные рукава, декоративный принткруглая горловина, застежка на пуговицы, длинные рукава, декоративный принт', 'short-north-2.jpg', 250, 'tshirt'),
(10, 'Крутые мужские часы 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. 2', 'watch.jpg', 200, 'watches'),
(7, 'Кроссовки с застежками на липучках', 'Тримайте руку на пульсі моди в наших кросівках для спортсменів 90-х. Цей стиль – саме те, що актуально нині.', 'Тримайте руку на пульсі моди в наших кросівках для спортсменів 90-х. Цей стиль – саме те, що актуально нині. Товста підошва – данина моді, а проміжна підошва IMEVA забезпечує комфорт, який ви очікуєте від PUMA, для пригод, які сподобаються всім, кому присвячено цей стиль. Пасує чоловікам і жінкам.Тримайте руку на пульсі моди в наших кросівках для спортсменів 90-х. Цей стиль – саме те, що актуально нині. Товста підошва – данина моді, а проміжна підошва IMEVA забезпечує комфорт, який ви очікуєте від PUMA, для пригод, які сподобаються всім, кому присвячено цей стиль. Пасує чоловікам і жінкам.', 'shoes-mexx.jpg', 4500, 'shoes'),
(9, 'Крутые часы', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cumque ex necessitatibus totam voluptatem. Accusantium explicabo fuga nobis provident quaerat.', 'watch.jpg', 200, 'watches'),
(11, 'Куртка Staff soft shell plaz black', 'Изделие, скомбинированное из почти невесомых материалов, сделает твой день более комфортным, удобная посадка не будет сковывать движения.', 'Изделие, скомбинированное из почти невесомых материалов, сделает твой день комфортнее, удобная посадка не будет сковывать движений, а в карманах на молнии всегда найдётся достаточно места для личных вещей.\r\n\r\nМатериал:\r\n- верх 100% полиэстер с ветро- и влагозащитной мембраной;\r\n- на спине внутри тёплый микрофлис;\r\n- внутри спереди высококачественный утеплитель Hollowsoft.\r\n\r\nДетали и крой:\r\n- классический крой;\r\n- высокая горловина;\r\n- капюшон регулируется шнуром с пластиковыми фиксаторами;\r\n- качественный тракторный замок-молния внутри дополнен ветрозащитной планкой;\r\n- четыре кармана на молнии: два внизу, два нагрудных;\r\n- снизу внутри эластичная стяжка с пластиковыми фиксаторами по бокам для регулировки ширины;\r\n- бирка с фирменным логотипом Staff вшита в боковой шов.', 'short-north.jpg', 5200, 'Jackets'),
(12, 'Кепка Myrtle Beach светло-серая кэжуал полиэстер', 'Кепка Тракер. Размер универсальный. Размер регулируется пластиковой застёжкой. Лобная часть мягкая, но прочная, подшита поролоном. Задняя часть состоит из 4 панелей, изготовлены из сеточки.', 'Кепка Тракер. Размер универсальный. Размер регулируется пластиковой застёжкой. Лобная часть мягкая, но прочная, подшита поролоном. Задняя часть состоит из 4 панелей, изготовлены из сеточки. Панели вверху закреплены заглушкой на металлическом креплении. Козырёк прочный, классической длины, не деформируется. Все швы изнутри подшиты прочной лентой, а по обхвату кепка подшита пластикой лентой, благодаря чему все швы качественные, а кепка прекрасно держит форму. Унисекс. Состав: 100% полиэстер.', 'hat-2.jpg', 550, 'hats'),
(13, 'Кепка Shield SGS Sport Line бейсболка логотип чёрная спортивная полиэстер', 'Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.', 'Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.Стильная кепка: Регулировка размера: Да. Логотип: S.H.I.E.L.D.', 'hat-1.jpg', 450, 'hats'),
(14, 'Лонгслив с принтом', 'круглая горловина, застежка на пуговицы, длинные рукава, декоративный принт', 'круглая горловина, застежка на пуговицы, длинные рукава, декоративный принткруглая горловина, застежка на пуговицы, длинные рукава, декоративный принткруглая горловина, застежка на пуговицы, длинные рукава, декоративный принткруглая горловина, застежка на пуговицы, длинные рукава, декоративный принт', 'short-north-2.jpg', 250, 'tshirt'),
(15, 'Кроссовки с застежками на липучках', 'Тримайте руку на пульсі моди в наших кросівках для спортсменів 90-х. Цей стиль – саме те, що актуально нині.', 'Тримайте руку на пульсі моди в наших кросівках для спортсменів 90-х. Цей стиль – саме те, що актуально нині. Товста підошва – данина моді, а проміжна підошва IMEVA забезпечує комфорт, який ви очікуєте від PUMA, для пригод, які сподобаються всім, кому присвячено цей стиль. Пасує чоловікам і жінкам.Тримайте руку на пульсі моди в наших кросівках для спортсменів 90-х. Цей стиль – саме те, що актуально нині. Товста підошва – данина моді, а проміжна підошва IMEVA забезпечує комфорт, який ви очікуєте від PUMA, для пригод, які сподобаються всім, кому присвячено цей стиль. Пасує чоловікам і жінкам.', 'shoes-mexx.jpg', 4500, 'shoes');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `image`) VALUES
(1, 'Roman', 'rokimaun1@gmail.com', '$2y$10$uWHfWxjAiNDg0wHgZ9svH.09cGyM.kvHsLQ8g7gEnQJcMPsrMPoJq', '1662644854.png'),
(2, 'Roman', 'rokimaun1@gmail.com', '$2y$10$mIJXNeNz14sPXFaBexhqG.k6H70qGnD4RnZdqJ3KANzbLz7tPGYcu', '1662644854.png'),
(3, 'last', 'iorktop1gg@gmail.com', '$2y$10$oj3WnT4MPtBI.3bkqOR44eTbN.ozW.hRkEnzKLeWk4k43emOFsVHa', ''),
(4, 'test', 'test@gmail.com', '$2y$10$mSYE9bStcGPODswhfiM7te8d7OeVdKohaEW78wp/EkgbAmjdkQuDW', '1674302818.png'),
(5, 'Надія', 'romanpodinskij@gmail.com', '$2y$10$Ov8tdBgK5z3jnQM/9/nVIOE4qd22ZpyYffwLT1WxCL7bSGQI8QaRK', '1674926240.jpg');

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
