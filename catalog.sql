-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 29 2024 г., 12:50
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
  `nazvanie` varchar(50) NOT NULL,
  `gorod` set('Ногинск','Дубай') NOT NULL,
  `categoria` set('Внедорожник','Бизнес','Премиум','Спорт','Комфорт') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `god` year NOT NULL,
  `dvigatel` set('Бензин','Электро','Дизель') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `volume` double NOT NULL,
  `Horsepower` int NOT NULL,
  `max` int NOT NULL,
  `average` int NOT NULL,
  `min` int NOT NULL,
  `opisanie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Catalog`
--

INSERT INTO `Catalog` (`id`, `arenda`, `nazvanie`, `gorod`, `categoria`, `fullname`, `god`, `dvigatel`, `volume`, `Horsepower`, `max`, `average`, `min`, `opisanie`) VALUES
(1, 1, 'BMW', 'Ногинск', 'Внедорожник', 'BMW X2', 2021, 'Бензин', 2.5, 150, 9300, 4650, 2325, 'Среднеразмерный кроссовер от немецкого автопроизводителя BMW. Автомобиль был представлен в 2016 году в Париже. Серийно автомобиль производится с октября 2017 года. \n   На рынки автомобиль поставляется с марта 2018 года.'),
(2, 1, 'KIA', 'Ногинск', 'Премиум', 'Kia Sportage', 2018, 'Электро', 2.5, 150, 9300, 4650, 2325, 'Кроссовер от компании                                   Kia Motors. Производится с 1992 года. В настоящий момент выпускается пятое поколение Sportage'),
(3, 1, 'LEXUS', 'Ногинск', 'Спорт', 'Lexus IS', 2018, 'Дизель', 2.5, 150, 9300, 4650, 2325, 'Lexus IS — спортивный автомобиль среднего класса, продаваемый брендом Lexus'),
(5, 1, 'Toyota', 'Ногинск', 'Комфорт', 'Toyota RAV4', 2017, 'Бензин', 2, 150, 9300, 4650, 2325, 'Компактный кроссовер, запущенный в производство в Японии в 1994 году. Первое поколение позиционировалось компанией Toyota как молодёжный автомобиль для активного отдыха, отсюда и происхождение названия, цифра «4» указывает на постоянный полный привод.'),
(6, 1, ' Mazda', 'Ногинск', 'Бизнес', '2021 Mazda 6', 2021, 'Дизель', 3, 194, 9300, 4650, 2325, 'Mazda 6 — это среднеразмерный автомобиль японской компании Mazda. Является первым в мире легковым автомобилем, созданным в XXI веке. Предшественником модели считается Mazda 626 (также известная как Mazda Capella). ');

-- --------------------------------------------------------

--
-- Структура таблицы `delete`
--

CREATE TABLE `delete` (
  `id` int NOT NULL,
  `arenda` tinyint(1) NOT NULL,
  `nazvanie` varchar(50) NOT NULL,
  `gorod` set('Ногинск','Дубай') NOT NULL,
  `categoria` set('Внедорожник','Бизнес','Премиум','Спорт') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `Year of release` year NOT NULL,
  `Engine Type` set('Бензин','Электро','Дизель') NOT NULL,
  `volume` double NOT NULL,
  `Horsepower` int NOT NULL,
  `Cost-max` int NOT NULL,
  `Cost-average` int NOT NULL,
  `Cost-min` int NOT NULL,
  `opisanie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `delete`
--

INSERT INTO `delete` (`id`, `arenda`, `nazvanie`, `gorod`, `categoria`, `fullname`, `Year of release`, `Engine Type`, `volume`, `Horsepower`, `Cost-max`, `Cost-average`, `Cost-min`, `opisanie`) VALUES
(4, 1, 'Jaguar', 'Ногинск', 'Спорт', 'Jaguar XF', 2012, 'Бензин', 3, 150, 9300, 4650, 2325, '1');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `delete`
--
ALTER TABLE `delete`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
