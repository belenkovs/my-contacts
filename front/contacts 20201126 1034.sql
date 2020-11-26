--
-- Скрипт сгенерирован Devart dbForge Studio 2019 for MySQL, Версия 8.1.22.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 26.11.2020 10:34:05
-- Версия сервера: 5.5.25
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Вывод данных для таблицы users
--
INSERT INTO users VALUES
(1, 'test', NULL, NULL, 'test', NULL, '2020-11-26 00:00:00', NULL, 0),
(2, 'test1', NULL, NULL, 'test1', NULL, '2020-11-26 00:00:00', NULL, 0),
(3, 'test3', NULL, NULL, 'test3', NULL, '2020-11-26 10:32:01', NULL, 0);

-- 
-- Вывод данных для таблицы contacts
--
INSERT INTO contacts VALUES
(1, 1, 'test1', NULL, NULL, '0000-00-00 00:00:00', NULL),
(2, 1, 'test2', NULL, NULL, '0000-00-00 00:00:00', NULL),
(3, 2, 'test21', NULL, NULL, '0000-00-00 00:00:00', NULL),
(4, 2, 'test22', NULL, NULL, '0000-00-00 00:00:00', NULL);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;