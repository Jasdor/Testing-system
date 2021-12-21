-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 21 2021 г., 08:03
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `kursovaya`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id_answ` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_question` int(11) DEFAULT NULL,
  `right_answe` tinyint(4) DEFAULT NULL,
  `answ_text` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_answ`),
  UNIQUE KEY `id_answ_UNIQUE` (`id_answ`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=53 ;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id_answ`, `id_question`, `right_answe`, `answ_text`) VALUES
(1, 1, 0, 'Для разработки сайтов'),
(2, 1, 0, 'Для разработки приложений'),
(3, 1, 0, 'Для создания игр'),
(4, 1, 1, 'Для всего перечисленного'),
(5, 2, 0, 'Переменная, объявленная в теле метода'),
(6, 2, 1, 'Любая переменная, учавствующая в работе метод'),
(7, 2, 0, 'Значение, указываемое после ключевого слова "'),
(8, 2, 0, 'Значение или переменная, передаваемая в метод'),
(9, 3, 1, 'Язык программирования'),
(10, 3, 0, 'Марка машины'),
(11, 3, 0, 'Название реки'),
(12, 3, 0, 'Не знаю'),
(13, 4, 1, 'int'),
(14, 4, 0, 'char'),
(15, 4, 0, 'String'),
(16, 4, 0, 'float'),
(17, 5, 1, 'Джеймс Гослинг'),
(18, 5, 0, 'Денис Ритч'),
(19, 5, 0, 'Бил Гейтс'),
(20, 5, 0, 'Кен Томпсон'),
(21, 6, 0, 'Переменная для хранения данных'),
(22, 6, 1, 'Набор однотипных элементов, расположенных в п'),
(23, 6, 0, 'Переменная для хранения адреса'),
(24, 6, 0, 'Набор однотипных переменных'),
(25, 7, 0, 'Переменная для хранения данных'),
(26, 7, 0, 'Переменная с адресом некоторой переменной, хр'),
(27, 7, 1, 'Переменная, содержащая адрес некоторого элеме'),
(28, 7, 0, 'Участок памяти, выделенный динамически с помо'),
(29, 8, 0, 'Простой тип данных'),
(30, 8, 0, 'Сложный тип данных'),
(31, 8, 1, 'Набор типов данных и функций работы с этими д'),
(32, 8, 0, 'Набор функций для работы с разнотипными данны'),
(33, 9, 0, 'один'),
(34, 9, 0, 'два'),
(35, 9, 1, 'произвольное число'),
(36, 9, 0, 'До 256'),
(37, 10, 1, 'Один'),
(38, 10, 0, 'Два'),
(39, 10, 0, 'Произвольное количество'),
(40, 10, 0, 'До десяти'),
(41, 11, 1, 'Конструктор'),
(42, 11, 0, 'Деструктор'),
(43, 11, 0, 'Иницилизатор'),
(44, 11, 0, 'Сепаратор'),
(45, 12, 0, 'Java demo kit'),
(46, 12, 1, 'Java development kit'),
(47, 12, 0, 'Java deployment kit'),
(48, 12, 0, 'java distributed kit'),
(49, 13, 1, 'boolean'),
(50, 13, 0, 'String'),
(51, 13, 0, 'int'),
(52, 13, 0, 'char');

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id_city` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_city`),
  UNIQUE KEY `id_city_UNIQUE` (`id_city`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id_city`, `name`) VALUES
(3, 'Архангельск '),
(12, 'Воронеж'),
(15, 'Казань'),
(14, 'Кондопога'),
(18, 'Магадан'),
(19, 'Морда'),
(4, 'Москва '),
(5, 'Нижний Новгород '),
(13, 'Омск'),
(16, 'Рязань'),
(1, 'Санкт-Петербург '),
(2, 'Северодвинск'),
(6, 'Таганрог '),
(7, 'Уфа'),
(20, 'Ярославль');

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `id_gender` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_gender`),
  UNIQUE KEY `id_gender_UNIQUE` (`id_gender`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`id_gender`, `gender_name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_group`),
  UNIQUE KEY `id_group_UNIQUE` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `group_member`
--

CREATE TABLE IF NOT EXISTS `group_member` (
  `id_group_memd` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned DEFAULT NULL,
  `id_user` int(10) unsigned DEFAULT NULL,
  `id_type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_group_memd`),
  UNIQUE KEY `id_group_memd_UNIQUE` (`id_group_memd`),
  KEY `grp_idx` (`id_group`),
  KEY `usr_idx` (`id_user`),
  KEY `usr_type_idx` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `group_subj`
--

CREATE TABLE IF NOT EXISTS `group_subj` (
  `id_group_subj` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_grouup` int(10) unsigned DEFAULT NULL,
  `id_subj` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_group_subj`),
  UNIQUE KEY `id_group_subj_UNIQUE` (`id_group_subj`),
  KEY `gr_idx` (`id_grouup`),
  KEY `sbj_idx` (`id_subj`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `idlogin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idlogin`),
  UNIQUE KEY `idlogin_UNIQUE` (`idlogin`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 COMMENT='login_password' AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `login`
--

INSERT INTO `login` (`idlogin`, `login`, `password`) VALUES
(1, 'test', 'tester'),
(3, 'test1', 'tester'),
(8, 'tester3', 'test'),
(9, 'tester4', 'test'),
(10, 'tester5', 'test'),
(11, 'tester6', 'test'),
(14, 'tester7', 'test'),
(16, 'tester8', 'test'),
(18, 'tester9', 'test'),
(19, 'tester10', 'test'),
(20, 'check', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id_question` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quest_test_id` int(10) unsigned DEFAULT NULL,
  `quest_text` varchar(256) DEFAULT NULL,
  `question_number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_question`),
  UNIQUE KEY `id_question_UNIQUE` (`id_question`),
  KEY `test_idx` (`quest_test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id_question`, `quest_test_id`, `quest_text`, `question_number`) VALUES
(1, 1, 'Для чего можно использовать Java?', 1),
(2, 1, 'Что такое аргумент метода?', 2),
(3, 1, 'Что такое Java?', 3),
(4, 1, 'Как объявляется целочисленная переменная', 4),
(5, 1, 'Кто разработал язык программирования Java?', 5),
(6, 1, 'Массив-это', 6),
(7, 1, 'Указатель - это', 7),
(8, 1, 'Класс - это', 8),
(9, 1, 'Сколько классов может содержать программа?', 9),
(10, 1, 'Сколько классов можно наследовать?', 10),
(11, 1, 'При создании объекта автоматически вызывается', 11),
(12, 1, 'Что такое JDK?', 12),
(13, 1, 'Какой тип обозначает логические переменные?', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id_result` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int(11) unsigned DEFAULT NULL,
  `usr_id` int(11) unsigned DEFAULT NULL,
  `score` int(11) unsigned DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `mark` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_result`),
  KEY `test_idx` (`test_id`),
  KEY `usr_idx` (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id_result`, `test_id`, `usr_id`, `score`, `date`, `time`, `mark`) VALUES
(1, 1, 17, 1, '2021-12-21 02:58:59', '10', 2),
(2, 1, 17, 3, '2021-12-21 06:43:50', '15', 2),
(3, 1, 17, 1, '2021-12-21 06:44:09', '13', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id_subj` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_subj` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_subj`),
  UNIQUE KEY `id_subj_UNIQUE` (`id_subj`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id_subj`, `name_subj`) VALUES
(1, 'IT');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id_test` int(11) unsigned NOT NULL,
  `theme_id` int(11) unsigned DEFAULT NULL,
  `test_name` varchar(45) DEFAULT NULL,
  `quantity_of_quest` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_test`),
  UNIQUE KEY `id_test_UNIQUE` (`id_test`),
  KEY `them_idx` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id_test`, `theme_id`, `test_name`, `quantity_of_quest`) VALUES
(1, 1, 'Тест по Java', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `id_theme` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `subj_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_theme`),
  UNIQUE KEY `id_theme_UNIQUE` (`id_theme`),
  KEY `sub_idx` (`subj_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `theme`
--

INSERT INTO `theme` (`id_theme`, `name`, `subj_id`) VALUES
(1, 'Общая тема', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `university`
--

CREATE TABLE IF NOT EXISTS `university` (
  `id_university` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_city` int(11) unsigned DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_university`),
  UNIQUE KEY `id_university_UNIQUE` (`id_university`),
  KEY `cit_idx` (`id_city`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `university`
--

INSERT INTO `university` (`id_university`, `id_city`, `name`) VALUES
(1, 3, 'САФУ'),
(2, 1, 'СПГУ'),
(3, 1, 'ИТМО'),
(4, 1, 'Санкт-Петербургский горный университет'),
(12, 12, 'ВГУ'),
(13, 13, 'ОГУ'),
(14, 14, 'КГУ'),
(16, 16, 'РГУ'),
(20, 20, 'ЯГУ');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_id` int(10) unsigned NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `second_name` varchar(45) DEFAULT NULL,
  `third_name` varchar(45) DEFAULT NULL,
  `id_university` int(10) unsigned DEFAULT NULL,
  `gender_type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id_user_UNIQUE` (`id_user`),
  UNIQUE KEY `login_id_UNIQUE` (`login_id`),
  KEY `un_idx` (`id_university`),
  KEY `gen_idx` (`gender_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `login_id`, `first_name`, `second_name`, `third_name`, `id_university`, `gender_type`) VALUES
(11, 14, 'Иванов', 'Иван', 'Иванович', 16, 1),
(17, 20, 'Иванов', 'Иван', 'Иванович', 20, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `id_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_type`),
  UNIQUE KEY `id_type_UNIQUE` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `group_member`
--
ALTER TABLE `group_member`
  ADD CONSTRAINT `grp` FOREIGN KEY (`id_group`) REFERENCES `group` (`id_group`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usr_d` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usr_type` FOREIGN KEY (`id_type`) REFERENCES `user_type` (`id_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `group_subj`
--
ALTER TABLE `group_subj`
  ADD CONSTRAINT `gr` FOREIGN KEY (`id_grouup`) REFERENCES `group` (`id_group`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sbj` FOREIGN KEY (`id_subj`) REFERENCES `subjects` (`id_subj`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `test` FOREIGN KEY (`quest_test_id`) REFERENCES `tests` (`id_test`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `test1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id_test`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usr` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `them` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id_theme`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `theme`
--
ALTER TABLE `theme`
  ADD CONSTRAINT `sub` FOREIGN KEY (`subj_id`) REFERENCES `subjects` (`id_subj`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `cit` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `gen` FOREIGN KEY (`gender_type`) REFERENCES `gender` (`id_gender`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `login_id` FOREIGN KEY (`login_id`) REFERENCES `login` (`idlogin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `un` FOREIGN KEY (`id_university`) REFERENCES `university` (`id_university`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
