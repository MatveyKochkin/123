-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 15 2026 г., 23:09
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
-- База данных: `sub_Portal`
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

--
-- Дамп данных таблицы `Contract`
--

INSERT INTO `Contract` (`Contract_id`, `Employee_id`, `Date_contract`, `Guarante`) VALUES
(1001, 5, '2024-01-10', '12 месяцев'),
(1002, 5, '2024-01-15', '24 месяца'),
(1003, 5, '2024-01-20', '12 месяцев'),
(1004, 7, '2024-01-25', '36 месяцев'),
(1005, 5, '2024-01-30', '12 месяцев'),
(1006, 5, '2024-02-05', '24 месяца'),
(1007, 7, '2024-02-10', '12 месяцев'),
(1008, 5, '2024-02-15', '24 месяца'),
(1009, 5, '2024-02-20', '12 месяцев'),
(1010, 7, '2024-02-25', '36 месяцев'),
(1011, 5, '2024-03-01', '12 месяцев'),
(1012, 5, '2024-03-05', '24 месяца'),
(1013, 7, '2024-03-10', '12 месяцев'),
(1014, 5, '2024-03-15', '24 месяца'),
(1015, 7, '2024-03-20', '12 месяцев');

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

--
-- Дамп данных таблицы `Devices`
--

INSERT INTO `Devices` (`Devices_id`, `User_id`, `Device_type`, `Device_name`, `Mac_address`, `Serial_number`, `Is_active`, `Install_date`) VALUES
(1, 1, 'camera', 'Камера подъезда 1 этаж', 'AA:BB:CC:DD:EE:01', 'SN-CAM001', 1, '2024-01-15'),
(2, 1, 'tv_box', 'ТВ-приставка гостиная', 'AA:BB:CC:DD:EE:02', 'SN-TV001', 1, '2024-01-15'),
(3, 1, 'sensor', 'Датчик движения вход', 'AA:BB:CC:DD:EE:03', 'SN-SEN001', 1, '2024-02-20'),
(4, 2, 'camera', 'Камера уличная', 'AA:BB:CC:DD:EE:04', 'SN-CAM002', 1, '2024-01-20'),
(5, 2, 'router', 'Роутер Wi-Fi 6', 'AA:BB:CC:DD:EE:05', 'SN-RTR001', 1, '2024-01-20'),
(6, 3, 'camera', 'Камера детская', 'AA:BB:CC:DD:EE:06', 'SN-CAM003', 1, '2024-02-01'),
(7, 3, 'tv_box', 'ТВ-приставка спальня', 'AA:BB:CC:DD:EE:07', 'SN-TV002', 0, '2024-02-01'),
(8, 4, 'camera', 'Камера входная дверь', 'AA:BB:CC:DD:EE:08', 'SN-CAM004', 1, '2024-01-10'),
(9, 4, 'camera', 'Камера двор', 'AA:BB:CC:DD:EE:09', 'SN-CAM005', 1, '2024-01-10'),
(10, 4, 'tv_box', 'ТВ-приставка гостиная 4K', 'AA:BB:CC:DD:EE:10', 'SN-TV003', 1, '2024-01-10'),
(11, 4, 'sensor', 'Датчик открытия двери', 'AA:BB:CC:DD:EE:11', 'SN-SEN002', 1, '2024-02-15'),
(12, 5, 'camera', 'Камера гараж', 'AA:BB:CC:DD:EE:12', 'SN-CAM006', 1, '2024-01-25'),
(13, 5, 'router', 'Роутер с VPN', 'AA:BB:CC:DD:EE:13', 'SN-RTR002', 1, '2024-01-25'),
(14, 6, 'tv_box', 'ТВ-приставка Samsung', 'AA:BB:CC:DD:EE:14', 'SN-TV004', 1, '2024-02-10'),
(15, 7, 'camera', 'Камера видеодомофон', 'AA:BB:CC:DD:EE:15', 'SN-CAM007', 1, '2024-02-15');

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

--
-- Дамп данных таблицы `Employee`
--

INSERT INTO `Employee` (`Employee_id`, `Specialization_id`, `Surname`, `Name`, `Midle_name`) VALUES
(1, 1, 'Иванов', 'Сергей', 'Петрович'),
(2, 2, 'Петрова', 'Анна', 'Владимировна'),
(3, 3, 'Сидоров', 'Алексей', 'Николаевич'),
(4, 4, 'Козлова', 'Елена', 'Дмитриевна'),
(5, 5, 'Смирнов', 'Дмитрий', 'Александрович'),
(6, 6, 'Кузнецова', 'Ольга', 'Сергеевна'),
(7, 7, 'Волков', 'Андрей', 'Викторович'),
(8, 8, 'Морозова', 'Татьяна', 'Игоревна'),
(9, 9, 'Новиков', 'Павел', 'Михайлович'),
(10, 10, 'Соколов', 'Максим', 'Андреевич'),
(11, 11, 'Лебедева', 'Ирина', 'Алексеевна'),
(12, 12, 'Попов', 'Григорий', 'Васильевич'),
(13, 13, 'Павлова', 'Юлия', 'Евгеньевна'),
(14, 14, 'Орлов', 'Станислав', 'Романович'),
(15, 15, 'Тимофеев', 'Андрей', 'Сергеевич');

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

--
-- Дамп данных таблицы `Payments`
--

INSERT INTO `Payments` (`Payments_id`, `User_id`, `Amount`, `Paymante_date`, `Paymenth_metod`) VALUES
(1, 1, '1250.00', '2024-01-05', 'online'),
(2, 1, '1250.00', '2024-02-05', 'online'),
(3, 2, '850.00', '2024-01-10', 'card'),
(4, 2, '850.00', '2024-02-10', 'card'),
(5, 3, '550.00', '2024-01-08', 'terminal'),
(6, 3, '550.00', '2024-02-08', 'terminal'),
(7, 4, '1250.00', '2024-01-03', 'online'),
(8, 4, '1250.00', '2024-02-03', 'online'),
(9, 5, '850.00', '2024-01-12', 'card'),
(10, 5, '850.00', '2024-02-12', 'card'),
(11, 6, '550.00', '2024-01-15', 'cash'),
(12, 6, '550.00', '2024-02-15', 'cash'),
(13, 7, '1250.00', '2024-01-07', 'online');

-- --------------------------------------------------------

--
-- Структура таблицы `Specializations`
--

CREATE TABLE `Specializations` (
  `Specialization_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Specializations`
--

INSERT INTO `Specializations` (`Specialization_id`, `Name`) VALUES
(1, 'Монтажник слаботочных систем'),
(2, 'Инженер техподдержки (1 линия)'),
(3, 'Сетевой инженер'),
(4, 'Специалист по видеонаблюдению'),
(5, 'Менеджер по работе с клиентами'),
(6, 'Инженер по умному дому'),
(7, 'Руководитель отдела продаж'),
(8, 'Бухгалтер'),
(9, 'Системный администратор'),
(10, 'Специалист по кибербезопасности'),
(11, 'Монтажник ВОЛС'),
(12, 'Инженер ЦОД'),
(13, 'Техник ТВ-оборудования'),
(14, 'Аналитик данных'),
(15, 'Юрист');

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

--
-- Дамп данных таблицы `Support_tickets`
--

INSERT INTO `Support_tickets` (`Support_id`, `User_id`, `Problem`, `Description`, `Status`) VALUES
(1, 1, 'Не работает ТВ-приставка', 'Приставка не включается, экран черный', 'resolved'),
(2, 2, 'Проблема с камерой', 'Камера не видит движение', 'in_progress'),
(3, 3, 'Низкая скорость интернета', 'Скорость 10 Мбит вместо 100', 'resolved'),
(4, 4, 'Вопрос по тарифу', 'Хочу сменить тариф на Базовый', 'closed'),
(5, 5, 'Не приходит чек', 'Оплатил онлайн, письмо не пришло', 'resolved'),
(6, 6, 'Сбой в Wink', 'Фильм прерывается каждые 5 минут', 'in_progress'),
(7, 7, 'Помощь в настройке роутера', 'Не могу подключить Smart TV', 'open'),
(8, 1, 'Двойное списание', 'За январь списали дважды', 'resolved'),
(9, 8, 'Нет сигнала на ТВ', 'Все каналы показывают \"нет сигнала\"', 'open'),
(10, 9, 'Проблема с датчиком дыма', 'Ложное срабатывание ночью', 'in_progress'),
(11, 10, 'Как подключить видеонаблюдение', 'Нужна консультация по камерам', 'closed'),
(12, 4, 'Забыл пароль от личного кабинета', 'Не могу войти в приложение', 'resolved'),
(13, 5, 'Проблема с качеством видео', 'Видео с камеры размытое', 'open'),
(14, 2, 'Не работает голосовое управление', 'Умная колонка не реагирует', 'in_progress'),
(15, 11, 'Хочу продлить подписку Wink', 'Подскажите, как продлить фильм', 'resolved');

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
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`User_id`, `Contract_id`, `Full_name`, `Phone`, `Address`, `Tariff_plan`, `Created_at`) VALUES
(1, 1001, 'Иван Петров', '79501234567', 'ул. Ленина 15, кв. 45', 'Премиум', '2024-01-10'),
(2, 1002, 'Мария Сидорова', '79507654321', 'пр. Мира 78, кв. 12', 'Оптимальный', '2024-01-15'),
(3, 1003, 'Алексей Смирнов', '79509998877', 'ул. Гагарина 9, кв. 67', 'Базовый', '2024-01-20'),
(4, 1004, 'Елена Козлова', '79505556644', 'б-р Победы 23, кв. 8', 'Премиум', '2024-01-25'),
(5, 1005, 'Дмитрий Новиков', '79503332211', 'ул. Советская 45, кв. 91', 'Оптимальный', '2024-01-30'),
(6, 1006, 'Ольга Морозова', '79507778899', 'пр. Ленина 56, кв. 34', 'Базовый', '2024-02-05'),
(7, 1007, 'Сергей Волков', '79501112233', 'ул. Кирова 12, кв. 5', 'Премиум', '2024-02-10'),
(8, 1008, 'Татьяна Кузнецова', '79504445566', 'ул. Пушкина 8, кв. 23', 'Оптимальный', '2024-02-15'),
(9, 1009, 'Андрей Соколов', '79508889977', 'пр. Строителей 34, кв. 78', 'Базовый', '2024-02-20'),
(10, 1010, 'Наталья Лебедева', '79502223344', 'ул. Лермонтова 67, кв. 14', 'Премиум', '2024-02-25'),
(11, 1011, 'Михаил Васильев', '79506667788', 'ул. Чкалова 10, кв. 56', 'Оптимальный', '2024-03-01'),
(12, 1012, 'Екатерина Павлова', '79509994455', 'пр. Красный 101, кв. 7', 'Базовый', '2024-03-05'),
(13, 1013, 'Владимир Федоров', '79501118899', 'ул. Титова 3, кв. 22', 'Премиум', '2024-03-10'),
(14, 1014, 'Анна Григорьева', '79505557799', 'б-р Юности 45, кв. 8', 'Оптимальный', '2024-03-15'),
(15, 1015, 'Павел Михайлов', '79503339911', 'ул. Дзержинского 7, кв. 33', 'Базовый', '2024-03-20');

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
  MODIFY `Contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
--
-- AUTO_INCREMENT для таблицы `Devices`
--
ALTER TABLE `Devices`
  MODIFY `Devices_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `Employee`
--
ALTER TABLE `Employee`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `Payments`
--
ALTER TABLE `Payments`
  MODIFY `Payments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `Specializations`
--
ALTER TABLE `Specializations`
  MODIFY `Specialization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `Support_tickets`
--
ALTER TABLE `Support_tickets`
  MODIFY `Support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
