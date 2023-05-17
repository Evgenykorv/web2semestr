-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 17 2023 г., 17:58
-- Версия сервера: 8.0.31
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dynamic-site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `page` int NOT NULL,
  `email` varchar(110) NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `status`, `page`, `email`, `comment`, `created_date`) VALUES
(2, 1, 27, 'ahdepc88@gmail.com', '<p>. At erat pellentesque adipiscing commodo elit at. Consectetur a erat nam at lectus urna duis convallis. Rhoncus est pellentesque elit ullamcorper dignissim. Non nisi est sit amet facilisis. Tellus orci ac auctor augue mauris augue neque gravida. Ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Mattis enim ut tellus elementum sagittis vitae et. Nec tincidunt praes</p>', '2023-04-20 21:17:42'),
(3, 1, 26, 'ah@gmail.com', 'Уже сейчас разработчики ExRay видят несколько сценариев использования аппарата в замкнутых затопленных пространствах:', '2023-04-20 21:17:42'),
(6, 1, 24, 'test22@gmail.com', '<p>В сети много руководств по PostgreSQL, которые описывают основные команды. Но при погружении глубже в работу возникают такие практические вопросы, для которых требуются продвинутые ко</p>', '2023-04-20 21:17:42'),
(7, 1, 24, 'test22@gmail.com', 'В сети много руководств по PostgreSQL, которые описывают основные команды. Но при погружении глубже в работу возникают такие практические вопросы, для которых требуются продвинутые ко', '2023-04-20 21:17:42'),
(8, 1, 20, 'test22@gmail.com', '<p>Мой блог</p><p>22222222</p>', '2023-04-20 21:17:42'),
(10, 1, 22, 'ahdepc88@gmail.com', '<p>Мой блог</p><p>22222222</p>', '2023-04-20 21:17:42'),
(11, 1, 20, 'test11@gmail.com', '<p>Мой блог</p><p>22222222</p>', '2023-04-20 21:17:42'),
(12, 0, 20, 'test11@gmail.com', '<p>Мой блог</p><p>22222222</p>', '2023-04-20 21:17:42'),
(13, 0, 20, 'test11@gmail.com', '<p>Мой блог</p><p>22222222</p>', '2023-04-20 21:17:42'),
(14, 0, 20, 'test11@gmail.com', '<p>Мой блог</p><p>22222222</p>', '2023-04-20 21:17:42'),
(21, 1, 21, 'ivan@gmail.com', '|| логин: ivan@gmail.com ||\r\n|| пароль: 1234 ||', '2023-04-25 21:06:08');

-- --------------------------------------------------------

--
-- Структура таблицы `doc`
--

CREATE TABLE `doc` (
  `id` int NOT NULL,
  `title` varchar(125) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `doc`
--

INSERT INTO `doc` (`id`, `title`, `content`, `created`) VALUES
(1, 'Диванный эксперт', '<p>фцв цв цв</p><h1>ЦВ ФЦв Ф Цв</h1><p>&nbsp;</p><p>Цв Цв ФЦв&nbsp;</p><ul><li>фцвфцв</li><li>фцвфцв</li><li>фцвфцв</li></ul><p>фцвфцвфцвфв</p><ol><li>фцвф</li><li>фцвфцв<ol><li>вцв</li><li>фвфыв</li></ol></li><li>фывфыв</li><li>&nbsp;</li></ol>', '2023-04-20 21:17:42'),
(2, 'фыйцйцвйвйв', '<p>фыыйыс</p>', '2023-04-20 21:17:42'),
(3, 'Третья документация', '<h2>Основы третеье йдокументации</h2><p>Это обычный параграфф</p><ul><li>Это просто список</li><li>второй пункт списка<ul><li>подсписок</li><li>подсписок-2</li></ul></li></ul>', '2023-04-20 21:17:42'),
(4, 'AndreiTest', '<p>аукп ука ука укп</p>', '2023-04-20 21:17:42');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint NOT NULL,
  `id_topic` int DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `title`, `img`, `content`, `status`, `id_topic`, `created_date`) VALUES
(21, 50, 'Как вам дается ООП в PHP?', '1620237940_test1.jpg', '<p>ytftyf</p>', 1, 15, '2023-04-20 21:17:42'),
(22, 50, '10 советов для новичков в IT', '1620377595_test1.jpg', '<p>третья статья</p>', 1, 18, '2023-04-20 21:17:42'),
(23, 50, 'При решении сложных задач трудно поместить решение в один запрос (хотя, многие стараются так сделать). В таких случаях удобно помещать какие-либо промежуточные данные во временную таблицу, для использования их в дальнейшем.', '1620239962_second.png', '<p>При решении сложных задач трудно поместить решение в один запрос (хотя, многие стараются так сделать). В таких случаях удобно помещать какие-либо промежуточные данные во вр<i>е</i>менную таблицу, для использования их в дальнейшем.</p><p>&nbsp;</p><p>При решении сложных задач трудно поместить решение в один запрос (хотя, многие стараются так сделать). В таких случаях удобно помещать какие-либо промежуточные данные во вр<i>е</i>менную таблицу, для использования их в дальнейшем.</p>', 1, 15, '2023-04-20 21:17:42'),
(24, 50, '15 полезных команд PostgreSQL', '1620374705_PostgreSQL.png', '<p>В сети много руководств по PostgreSQL, которые описывают основные команды. Но при погружении глубже в работу возникают такие практические вопросы, для которых требуются продвинутые команды.</p><p>Такие команды, или <a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BD%D0%B8%D0%BF%D0%BF%D0%B5%D1%82\">сниппеты</a>, редко описаны в документации. Рассмотрим несколько на примерах, полезных как для разработчиков, так и для администраторов баз данных.</p>', 1, 18, '2023-04-20 21:17:42'),
(26, 51, 'Запись от TEST пользователя', '1621268311_test1.jpg', '<p>По словам разработчиков, синий цвет выбран вполне осознанно. Он способен проникать дальше, чем световое излучение с другой длиной волны.<br><br>Модем бесперебойно передает сигналы на расстояние 50 — 100 м на глубине до 6 тыс. метров. Именно этот прибор от Hydromea лег в основу нового подводного дрона.<br><br>&nbsp;</p><h2>Зачем дрону такая связь</h2><p><br>Разработка подводного дрона — более сложная задача, чем создание наземных или воздушных автономных систем.<br><br>Какие есть варианты обеспечения связью под водой?<br><br>&nbsp;</p><ul><li>Радиоволны, но их дальность не очень велика.</li><li>Звуковые волны слишком медленные, нельзя быть уверенным в их надежности.</li><li>Проводное соединение. На сегодня это самый распространенный вариант. Но и у него есть минусы, включая лимит на радиус перемещения.</li></ul><p><br>Есть несколько сфер, в которых просто необходимо применение подводных беспроводных роботов для получения важных сведений:<br><br>&nbsp;</p><ul><li>подводные исследования;</li><li>морской энергетический сектор;</li><li>строительство и ремонт водных объектов.</li></ul><p><br>Уже сейчас разработчики ExRay видят несколько сценариев использования аппарата в замкнутых затопленных пространствах:<br><br>&nbsp;</p><ul><li>в плотинах гидроэлектростанций;</li><li>закрытых водных путях;</li><li>балластных цистерн на судах.</li><li>&nbsp;</li></ul>', 1, 17, '2023-04-20 21:17:42'),
(27, 50, 'Новая статья', '1621881949_second.png', '<p>пагинация, постраничная навигация, pagination, pagination php,<br>easy pagination, пагинация на php</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare massa eget egestas purus. Nunc consequat interdum varius sit amet mattis vulputate enim. Nunc mi ipsum faucibus vitae aliquet nec. Arcu odio ut sem nulla pharetra diam sit. Ultricies lacus sed turpis tincidunt id aliquet risus. Sit amet est placerat in egestas. Erat pellentesque adipiscing commodo elit at. Quis commodo odio aenean sed. Proin libero nunc consequat interdum varius.</p><p>At volutpat diam ut venenatis tellus. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit. Nisi est sit amet facilisis magna etiam tempor. Interdum velit euismod in pellentesque massa placerat. Ut morbi tincidunt augue interdum velit euismod. Sed elementum tempus egestas sed. Scelerisque in dictum non consectetur a erat. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Habitant morbi tristique senectus et. At consectetur lorem donec massa sapien faucibus et. Praesent tristique magna sit amet. Enim ut tellus elementum sagittis vitae et leo. Elit pellentesque habitant morbi tristique senectus. Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi.</p><p>Mi bibendum neque egestas congue quisque egestas diam. Vitae tortor condimentum lacinia quis vel eros donec ac. At erat pellentesque adipiscing commodo elit at. Consectetur a erat nam at lectus urna duis convallis. Rhoncus est pellentesque elit ullamcorper dignissim. Non nisi est sit amet facilisis. Tellus orci ac auctor augue mauris augue neque gravida. Ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Mattis enim ut tellus elementum sagittis vitae et. Nec tincidunt praesent semper feugiat. Lacus vel facilisis volutpat est. Fringilla ut morbi tincidunt augue. Condimentum mattis pellentesque id nibh tortor id aliquet lectus proin. Suspendisse interdum consectetur libero id faucibus. Ut diam quam nulla porttitor massa. Sit amet facilisis magna etiam tempor orci. Aenean et tortor at risus. At consectetur lorem donec massa sapien faucibus. Risus feugiat in ante metus dictum at. Ultrices neque ornare aenean euismod.</p>', 1, 17, '2023-04-20 21:17:42'),
(28, 53, 'В чем смысл жизни', '1682415869_spaecemoney.png', '<p>Быть или не быть, вот в чем вопрос.<br>Этим вопросом задаются многие ученые на протежении многий лет.</p>', 1, 16, '2023-04-25 12:44:29');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int NOT NULL,
  `name` varchar(121) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(15, 'php', 'Some about php'),
(16, 'uncategory', '...'),
(17, 'О жизни IT', 'Как протекает ручей спокойствия и безмятежен в IT'),
(18, 'Top topics', 'Категория для вывода статей в горизонтальное слайдшоу на главной странице.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created`) VALUES
(50, 1, 'Evgeny', 'ahdepc88@gmail.com', '$2y$10$mkpLBHXIXJbVcy3N/NJdieHK.JWezPbul4VeMh/malzOO/Ug9IKf2', '2023-04-20 18:17:42'),
(51, 1, 'test', 'ah@gmail.com', '$2y$10$bsx9bl2pS0sNvBDXLI5ksOyHd8CiXU54FhSNyrevwHksMPB.aistG', '2023-04-20 18:17:42'),
(52, 0, 'Test22', 'test22@gmail.com', '$2y$10$QnMnaL.Uzbi77Y3XaFA1MeofmCh8M31fMCvahekLt0dPBP7twpeq2', '2023-04-20 18:17:42'),
(53, 1, 'ivan', 'ivan@mail.ru', '$2y$10$q1FnZBC3/jEDRKSViHZEhO794xMA76ShSoDNi8iEs2Ihk9AC57UqG', '2023-04-20 18:17:42'),
(54, 0, 'ltb', 'ltb@mail.ru', '$2y$10$x9ipRYm0cpuuHpWr9HE9B.tBJAemvKyLzfjVETJtrQICGloEUZNYG', '2023-04-25 14:05:40');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
