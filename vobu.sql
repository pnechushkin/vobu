-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 21 2018 г., 13:14
-- Версия сервера: 5.6.37-log
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vobu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name_category`) VALUES
(1, 'Вопрос'),
(2, 'Предложение'),
(3, 'Жалоба');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `category` int(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `ip_user` varchar(25) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `username`, `category`, `email`, `homepage`, `message`, `ip_user`, `user_agent`, `added`) VALUES
(1, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(2, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(3, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(4, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(5, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(6, 'category', 1, 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(7, 'sdfd', 2, 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(8, 'sdfd', 2, 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(9, 'category', 2, 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(10, 'from', 1, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(11, 'from', 3, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(12, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(13, 'from', 1, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(14, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(15, 'sdfd', 2, 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(16, 'sdfd', 2, 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(17, 'category', 2, 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(18, 'category', 2, 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(19, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(20, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(21, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(22, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(23, 'from', 3, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(24, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(25, 'from', 3, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(26, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(27, 'aszd', 3, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(28, 'aszd', 3, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(29, 'from', 2, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(30, 'from', 3, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(31, 'from', 1, 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(32, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(33, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(34, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(35, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(36, 'from', 3, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(37, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(38, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(39, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(40, 'from', 3, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(41, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(42, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(43, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(44, 'from', 1, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(45, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(46, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(47, 'from', 1, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(48, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(49, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(50, 'from', 2, 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(51, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(52, 'aszd', 3, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(53, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(54, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(55, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(56, 'aszd', 2, 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(57, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(58, 'from', 1, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(59, 'from', 3, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(60, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(61, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(62, 'from', 2, 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(63, 'test', 2, 'test@test.com.ua', 'http://vobu/', 'hhbnnbsdlcbdklsbvlhdsbljvhbdsjlbvljhdslkvbk jjbkjsjbdkjbds sdkksbkbksbjcs sbd is', '127.0.0.1', 'Chrome', '2018-05-19 15:55:04'),
(64, 'test9', 1, 'info@test.org.ua', 'http://vobu/', 'test test', '127.0.0.1', 'Chrome', '2018-05-21 08:51:15'),
(65, 'test10', 3, 'info@test.org.ua', 'http://vobu/', 'test test', '127.0.0.1', 'Chrome', '2018-05-21 08:51:57');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`category`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
