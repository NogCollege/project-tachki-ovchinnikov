-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2024 г., 13:00
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

--
-- Сделал таблицу
--
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
  `id` int DEFAULT NULL,
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
-- Дамп данных таблицы `Catalog`
--

INSERT INTO `Catalog` (`id`, `arenda`, `nazvanie`, `gorod`, `categoria`, `fullname`, `Year of release`, `Engine Type`, `volume`, `Horsepower`, `Cost-max`, `Cost-average`, `Cost-min`, `opisanie`) VALUES
(6, 1, 'BMW , Kia , Lexus ,Jaguar , Toyota, Mazda ', '', '', 'BMW X2,Kia Sportage, 2022,Lexus IS, 2018,Jaguar XF, 2012,Toyota RAV4, 2017,2021 Mazda 6, 2021', 2021, '', 2.5, 150, 9300, 4650, 2325, 'BMW X2 Внедорожник Бензин 2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nKia Sportage, 2022 Внедорожник Бензин 2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nLexus IS, 2018 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nJaguar XF, 2012 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nToyota RAV4, 2017 Внедорожник ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\n2021 Mazda 6, 2021 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n\r\n\r\n\r\n \r\n'),
(6, 1, 'BMW , Kia , Lexus ,Jaguar , Toyota, Mazda ', '', '', 'BMW X2,Kia Sportage, 2022,Lexus IS, 2018 ,Jaguar XF, 2012,Toyota RAV4, 2017,2021 Mazda 6, 2021', 2018, '', 2.5, 150, 9300, 4650, 2325, 'BMW X2 Внедорожник Бензин 2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч \r\nKia Sportage, 2022 Внедорожник Бензин 2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nLexus IS, 2018 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч \r\nJaguar XF, 2012 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nToyota RAV4, 2017 Внедорожник ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\n2021 Mazda 6, 2021 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\\\r\n'),
(6, 1, 'BMW , Kia , Lexus ,Jaguar , Toyota, Mazda ', '', '', 'BMW X2,Kia Sportage, 2022,Lexus IS, 2018 ,Jaguar XF, 2012,Toyota RAV4, 2017,2021 Mazda 6, 2021', 2018, '', 2.5, 150, 9300, 4650, 2325, 'BMW X2 Внедорожник Бензин 2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч \r\nKia Sportage, 2022 Внедорожник Бензин 2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nLexus IS, 2018 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч \r\nJaguar XF, 2012 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\nToyota RAV4, 2017 Внедорожник ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\r\n2021 Mazda 6, 2021 Бизнес ,Бензин,2.5 объем 150 л.с. 9300/24ч, 4650/12ч,2325/6ч\\\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
