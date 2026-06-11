-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 11 2026 г., 14:21
-- Версия сервера: 5.6.37-log
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Sub_Portal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Contract`
--

CREATE TABLE `Contract` (
  `Contract_id` int(11) NOT NULL,
  `Employee_id` int(11) DEFAULT NULL,
  `Date_contract` date DEFAULT NULL,
  `Guarante` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Devices`
--

CREATE TABLE `Devices` (
  `Devices_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Device_type` varchar(20) NOT NULL,
  `Device_name` varchar(100) NOT NULL,
  `Mac_address` varchar(17) DEFAULT NULL,
  `Serial_number` varchar(50) DEFAULT NULL,
  `Is_active` tinyint(1) DEFAULT '1',
  `Install_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Employee`
--

CREATE TABLE `Employee` (
  `Employee_id` int(11) NOT NULL,
  `Specialization_id` int(11) DEFAULT NULL,
  `Surname` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Midle_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Payments`
--

CREATE TABLE `Payments` (
  `Payments_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Paymante_date` date NOT NULL,
  `Paymenth_metod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Specializations`
--

CREATE TABLE `Specializations` (
  `Specialization_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Support_tickets`
--

CREATE TABLE `Support_tickets` (
  `Support_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Problem` varchar(200) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `User_id` int(11) NOT NULL,
  `Contract_id` int(11) DEFAULT NULL,
  `Full_name` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Tariff_plan` varchar(50) DEFAULT NULL,
  `Created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Contract`
--
ALTER TABLE `Contract`
  ADD PRIMARY KEY (`Contract_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Индексы таблицы `Devices`
--
ALTER TABLE `Devices`
  ADD PRIMARY KEY (`Devices_id`),
  ADD UNIQUE KEY `Mac_address` (`Mac_address`),
  ADD UNIQUE KEY `Serial_number` (`Serial_number`),
  ADD KEY `User_id` (`User_id`);

--
-- Индексы таблицы `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`Employee_id`),
  ADD KEY `Specialization_id` (`Specialization_id`);

--
-- Индексы таблицы `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`Payments_id`),
  ADD UNIQUE KEY `Paymenth_metod` (`Paymenth_metod`),
  ADD KEY `User_id` (`User_id`);

--
-- Индексы таблицы `Specializations`
--
ALTER TABLE `Specializations`
  ADD PRIMARY KEY (`Specialization_id`);

--
-- Индексы таблицы `Support_tickets`
--
ALTER TABLE `Support_tickets`
  ADD PRIMARY KEY (`Support_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`User_id`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD KEY `Contract_id` (`Contract_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Contract`
--
ALTER TABLE `Contract`
  MODIFY `Contract_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Devices`
--
ALTER TABLE `Devices`
  MODIFY `Devices_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Employee`
--
ALTER TABLE `Employee`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Payments`
--
ALTER TABLE `Payments`
  MODIFY `Payments_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Specializations`
--
ALTER TABLE `Specializations`
  MODIFY `Specialization_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Support_tickets`
--
ALTER TABLE `Support_tickets`
  MODIFY `Support_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Contract`
--
ALTER TABLE `Contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `Employee` (`Employee_id`);

--
-- Ограничения внешнего ключа таблицы `Devices`
--
ALTER TABLE `Devices`
  ADD CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `Users` (`User_id`);

--
-- Ограничения внешнего ключа таблицы `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Specialization_id`) REFERENCES `Specializations` (`Specialization_id`);

--
-- Ограничения внешнего ключа таблицы `Payments`
--
ALTER TABLE `Payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `Users` (`User_id`);

--
-- Ограничения внешнего ключа таблицы `Support_tickets`
--
ALTER TABLE `Support_tickets`
  ADD CONSTRAINT `support_tickets_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `Users` (`User_id`);

--
-- Ограничения внешнего ключа таблицы `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Contract_id`) REFERENCES `Contract` (`Contract_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
