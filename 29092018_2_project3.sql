-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 25 2019 г., 20:10
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `29092018_2_project3`
--
CREATE DATABASE IF NOT EXISTS `29092018_2_project3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `29092018_2_project3`;

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` varchar(20) NOT NULL,
  `size` varchar(10) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `article` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `price`, `photo`, `description`, `article`) VALUES
(1, 'Куртка синяя', '5400', '/images/catalog/1.jpg', 'Тут должно быть описание товара', '0001'),
(2, 'Кожаная куртка', '22500', '/images/catalog/2.jpg', 'Тут должно быть описание товара', '0002'),
(3, 'Куртка с карманами', '9200', '/images/catalog/3.jpg', 'Тут должно быть описание товара', '0003'),
(4, 'Куртка с капюшоном', '6100', '/images/catalog/4.jpg', 'Тут должно быть описание товара', '0004'),
(5, 'Куртка Casual', '8800', '/images/catalog/5.jpg', 'Тут должно быть описание товара', '0005'),
(6, 'Стильная кожаная куртка', '12800', '/images/catalog/6.jpg', 'Тут должно быть описание товара', '0006'),
(7, 'Кеды серые', '2900', '/images/catalog/7.jpg', 'Тут должно быть описание товара', '0007'),
(8, 'Кеды чёрные', '4500', '/images/catalog/8.jpg', 'Тут должно быть описание товара', '0008'),
(9, 'Кеды Casual', '5900', '/images/catalog/9.jpg', 'Тут должно быть описание товара', '0009'),
(10, 'Кеды всепогодные', '9200', '/images/catalog/10.jpg', 'Тут должно быть описание товара', '0010'),
(11, 'Джинсы', '4800', '/images/catalog/11.jpg', 'Тут должно быть описание товара', '0011'),
(12, 'Джинсы голубые', '4200', '/images/catalog/12.jpg', 'Тут должно быть описание товара', '0012');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_type`
--

CREATE TABLE IF NOT EXISTS `catalog_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_type`
--

INSERT INTO `catalog_type` (`id`, `article`, `type`, `gender`) VALUES
(1, '0001', 'jacket', 'man'),
(2, '0002', 'jacket', 'woman'),
(3, '0003', 'jacket', 'man'),
(4, '0004', 'jacket', 'children'),
(5, '0005', 'jacket', 'woman'),
(6, '0006', 'jacket', 'man'),
(7, '0007', 'boots', 'woman'),
(8, '0008', 'boots', 'children'),
(9, '0009', 'boots', 'man'),
(10, '0010', 'boots', 'children'),
(11, '0011', 'jeans', 'man'),
(12, '0012', 'jeans', 'woman');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery` varchar(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `full_price` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product_size`
--

CREATE TABLE IF NOT EXISTS `product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` varchar(20) NOT NULL,
  `size` varchar(10) NOT NULL,
  `count` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_size`
--

INSERT INTO `product_size` (`id`, `article`, `size`, `count`) VALUES
(1, '0001', 's', '10'),
(2, '0001', 'm', '5'),
(3, '0001', 'l', '0'),
(4, '0002', 's', '4'),
(5, '0002', 'm', '0'),
(6, '0002', 'l', '60'),
(7, '0003', 's', '0'),
(8, '0003', 'm', '1'),
(9, '0003', 'l', '20'),
(10, '0004', 's', '33'),
(11, '0004', 'm', '45'),
(12, '0004', 'l', '16'),
(13, '0005', 's', '72'),
(14, '0005', 'm', '18'),
(15, '0005', 'l', '0'),
(16, '0006', 's', '46'),
(17, '0006', 'm', '78'),
(18, '0006', 'l', '11'),
(19, '0007', 's', '5'),
(20, '0007', 'm', '6'),
(21, '0007', 'l', '4'),
(22, '0008', 's', '8'),
(23, '0008', 'm', '2'),
(24, '0008', 'l', '6'),
(25, '0009', 's', '77'),
(26, '0009', 'm', '0'),
(27, '0009', 'l', '0'),
(28, '0010', 's', '15'),
(29, '0010', 'm', '21'),
(30, '0010', 'l', '1'),
(31, '0011', 's', '0'),
(32, '0011', 'm', '0'),
(33, '0011', 'l', '1000'),
(34, '0012', 's', '45'),
(35, '0012', 'm', '12'),
(36, '0012', 'l', '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
