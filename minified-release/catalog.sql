-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 01 2024 г., 10:22
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `catalog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Catalog`
--

CREATE TABLE `Catalog` (
  `id` int NOT NULL,
  `arenda` tinyint(1) NOT NULL,
  `nazvanie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gorod` set('Ногинск','Дубай') COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` set('Внедорожник','Бизнес','Премиум','Спорт','Комфорт') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `god` year NOT NULL,
  `dvigatel` set('Бензин','Электро','Дизель') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` double NOT NULL,
  `Horsepower` int NOT NULL,
  `max` int NOT NULL,
  `average` int NOT NULL,
  `min` int NOT NULL,
  `opisanie` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Catalog`
--

INSERT INTO `Catalog` (`id`, `arenda`, `nazvanie`, `gorod`, `categoria`, `fullname`, `god`, `dvigatel`, `volume`, `Horsepower`, `max`, `average`, `min`, `opisanie`) VALUES
(1, 1, 'BMW', 'Ногинск', 'Внедорожник', 'BMW X2', 2021, 'Бензин', 2.5, 150, 9300, 4650, 2325, 'Среднеразмерный кроссовер от немецкого автопроизводителя BMW. Автомобиль был представлен в 2016 году в Париже. Серийно автомобиль производится с октября 2017 года. \\n   На рынки автомобиль поставляется с марта 2018 года.'),
(2, 1, 'KIA', 'Ногинск', 'Спорт', 'Kia Sportage', 2018, 'Электро', 2.5, 150, 9300, 4650, 2325, 'Кроссовер от компании                                   Kia Motors. Производится с 1992 года. В настоящий момент выпускается пятое поколение Sportage'),
(3, 1, 'LEXUS', 'Ногинск', 'Премиум', 'Lexus IS', 2018, 'Дизель', 2.5, 150, 9300, 4650, 2325, 'Lexus IS — спортивный автомобиль среднего класса, продаваемый брендом Lexus'),
(4, 1, 'Jaguar', 'Ногинск', 'Бизнес', 'Jaguar XF', 2012, 'Бензин', 3, 150, 9300, 4650, 2325, 'Люксовый седан бизнес-класса/спортивный седан, выпускаемый британской автомобилестроительной компанией Jaguar с 2008 года.'),
(5, 1, 'Toyota', 'Ногинск', 'Комфорт', 'Toyota RAV4', 2017, 'Бензин', 2, 150, 9300, 4650, 2325, 'Компактный кроссовер, запущенный в производство в Японии в 1994 году. Первое поколение позиционировалось компанией Toyota как молодёжный автомобиль для активного отдыха, отсюда и происхождение названия, цифра «4» указывает на постоянный полный привод.'),
(7, 1, 'BMW4', 'Ногинск', 'Спорт', 'BMW M4 Competition Package', 2021, 'Бензин', 3, 510, 9300, 4650, 2325, 'Автомобили M BMW 4 серии Coupe впечатляющим образом сочетают в себе эстетическую привлекательность, харизму и фирменный спортивный стиль M. Возглавляет трио BMW M4 Competition Coupe с впечатляющими 510 л.с. мощности и 650 Нм крутящего момента.BMW M4 Competition Coupe  Мощность двигателя: 510 л.с. л.с  Расход топлива: 9.6 л/100 км  Разгон (0–100 км/ч): 3.9 с');

-- --------------------------------------------------------

--
-- Структура таблицы `delete`
--

CREATE TABLE `delete` (
  `id` int NOT NULL,
  `arenda` tinyint(1) NOT NULL,
  `nazvanie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gorod` set('Ногинск','Дубай') COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` set('Внедорожник','Бизнес','Премиум','Спорт') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year of release` year NOT NULL,
  `Engine Type` set('Бензин','Электро','Дизель') COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` double NOT NULL,
  `Horsepower` int NOT NULL,
  `Cost-max` int NOT NULL,
  `Cost-average` int NOT NULL,
  `Cost-min` int NOT NULL,
  `opisanie` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `delete`
--

INSERT INTO `delete` (`id`, `arenda`, `nazvanie`, `gorod`, `categoria`, `fullname`, `Year of release`, `Engine Type`, `volume`, `Horsepower`, `Cost-max`, `Cost-average`, `Cost-min`, `opisanie`) VALUES
(6, 1, ' Mazda ', '', '', '2021 Mazda 6', 2021, '', 3, 194, 9300, 4650, 2325, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Catalog`
--
ALTER TABLE `Catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `delete`
--
ALTER TABLE `delete`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Catalog`
--
ALTER TABLE `Catalog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `delete`
--
ALTER TABLE `delete`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
