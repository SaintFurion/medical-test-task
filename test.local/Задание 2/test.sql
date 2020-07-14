-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 14 2020 г., 16:09
-- Версия сервера: 10.2.22-MariaDB
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hosp`
--

CREATE TABLE `hosp` (
  `kod` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hosp`
--

INSERT INTO `hosp` (`kod`, `name`) VALUES
(1, 'Hosp of Oren'),
(2, 'Hosp of Moskow'),
(3, 'Hosp Petersburg'),
(4, 'Hosp Rostov');

-- --------------------------------------------------------

--
-- Структура таблицы `patient`
--

CREATE TABLE `patient` (
  `kod` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `patient`
--

INSERT INTO `patient` (`kod`, `name`) VALUES
(1, 'Ivanov'),
(2, 'Sergeev'),
(3, 'Petrov'),
(4, 'Markov'),
(5, 'Koplanov'),
(6, 'Berin'),
(7, 'Kurlov'),
(8, 'Pavlov'),
(9, 'Lenin'),
(10, 'Ridus'),
(11, 'dadly');

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `kod` int(11) NOT NULL,
  `kod_patient` int(11) NOT NULL,
  `kod_hosp` int(11) NOT NULL,
  `date_service` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`kod`, `kod_patient`, `kod_hosp`, `date_service`) VALUES
(1, 1, 2, '2020-07-01'),
(2, 1, 1, '2020-06-02'),
(3, 1, 3, '2020-02-11'),
(4, 2, 1, '2020-07-09'),
(5, 3, 1, '2020-07-09'),
(6, 4, 1, '2020-07-19'),
(7, 5, 1, '2020-07-11'),
(8, 6, 1, '2020-07-18'),
(13, 7, 1, '2020-07-20'),
(14, 8, 1, '2020-05-26'),
(15, 9, 1, '2020-07-25'),
(16, 10, 1, '2020-05-06'),
(21, 3, 2, '2020-07-05'),
(22, 4, 2, '2020-06-02'),
(23, 5, 2, '2020-07-14'),
(24, 6, 2, '2020-07-05'),
(25, 8, 4, '2020-07-05'),
(26, 9, 2, '2020-07-09'),
(27, 8, 3, '2020-07-25'),
(28, 9, 3, '2020-07-15'),
(29, 5, 3, '2020-07-05'),
(30, 5, 3, '2020-07-06'),
(31, 8, 3, '2020-07-15'),
(32, 8, 3, '2020-07-30'),
(33, 2, 3, '2019-12-04'),
(34, 2, 3, '2020-07-06'),
(35, 3, 3, '2020-05-07'),
(36, 11, 1, '2020-07-07'),
(37, 2, 3, '2020-07-14'),
(38, 2, 3, '2020-07-13'),
(39, 2, 3, '2020-07-16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `hosp`
--
ALTER TABLE `hosp`
  ADD PRIMARY KEY (`kod`);

--
-- Индексы таблицы `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`kod`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`kod`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `hosp`
--
ALTER TABLE `hosp`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `patient`
--
ALTER TABLE `patient`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
