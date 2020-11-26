--
-- Скрипт сгенерирован Devart dbForge Studio 2019 for MySQL, Версия 8.1.22.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 26.11.2020 10:33:36
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
-- Создать таблицу `users`
--
CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(150) DEFAULT NULL,
  tel varchar(20) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  pass varchar(30) DEFAULT NULL,
  token varchar(140) DEFAULT NULL,
  dc timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  du datetime DEFAULT NULL,
  state int(1) DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `contacts`
--
CREATE TABLE contacts (
  id int(11) NOT NULL AUTO_INCREMENT,
  userid int(11) DEFAULT NULL,
  name varchar(150) DEFAULT NULL,
  tel varchar(20) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  dc timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  du datetime DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE contacts
ADD CONSTRAINT FK_contacts_users_id FOREIGN KEY (userid)
REFERENCES users (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;