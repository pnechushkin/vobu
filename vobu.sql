-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2018 г., 18:30
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
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
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
(1, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(2, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(3, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(4, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(5, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(6, 'category', 'test', 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(7, 'sdfd', 'test', 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(8, 'sdfd', 'test', 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(9, 'category', 'test', 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(10, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(11, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(12, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(13, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(14, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(15, 'sdfd', 'test', 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(16, 'sdfd', 'test', 'test@gmail.com', 'http://vobu/', 'sdfsv', '127.0.0.1', 'Chrome', '2018-05-18 17:12:51'),
(17, 'category', 'test', 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(18, 'category', 'test', 'test@gmail.com', 'http://vobu/', 'ыдвшпраывдрвиыдмр', '127.0.0.1', 'Chrome', '2018-05-18 15:53:59'),
(19, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(20, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:49:42'),
(21, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(22, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(23, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(24, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(25, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(26, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(27, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(28, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(29, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(30, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(31, 'from', 'test', 'test@gmail.com', 'http://vobu/', '!', '127.0.0.1', 'Chrome', '2018-05-18 15:47:43'),
(32, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(33, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(34, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(35, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(36, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(37, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(38, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(39, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(40, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(41, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(42, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(43, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(44, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(45, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(46, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(47, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(48, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(49, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(50, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'asd', '127.0.0.1', 'Chrome', '2018-05-18 15:18:09'),
(51, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(52, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(53, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(54, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(55, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(56, 'aszd', 'zxc', 'zxc', 'zxc', 'zxc', 'zzzzzz', 'zdczxc', '2018-05-18 14:29:54'),
(57, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(58, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(59, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(60, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(61, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ыывмывмывм', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02'),
(62, 'from', 'test', 'test@gmail.com', 'http://vobu/', 'ваваивыи', '127.0.0.1', 'Chrome', '2018-05-18 15:27:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
