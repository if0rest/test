-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 29 2021 г., 18:03
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `world`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `ID` tinyint(4) NOT NULL,
  `PRODUCT_ID` varchar(255) DEFAULT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_PRICE` float UNSIGNED DEFAULT NULL,
  `PRODUCT_ARTICLE` longtext,
  `PRODUCT_QUANTITY` smallint(6) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE` char(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`, `ACTIVE`) VALUES
(1, 'pants-striped-flight', 'Штаны Полосатый Рейс', 458, 'Брюки-клеш идеально сидят и подчеркивают стройность фигуры. Модель имеет застежку на молнию. Изделие будет прекрасно гармонировать с любыми предметами гардероба. Длина изделия ок. 100см. Длина по внутреннему шву ок. 83см. Ширина внизу ок. 87см.			', 1, '2021-03-31 15:58:43', 'Y'),
(2, 'pants-life-in-abstraction', 'Штаны Жизнь в Абстракции', 227, 'Свободные штаны с эффектом свободы, создают дополнительный разогревающий эффект во время ходьбы. Штаны &ndash; незаменимая вещь для репетиций и занятий танцами, прекрасно сочетаются с любым купальником или майкой. Вся одежда отечественной компании Grishko производится в России!				', 6, '2021-04-01 15:57:44', 'Y'),
(3, 'pants-flower-glade', 'Штаны Цветочная Поляна', 761, 'Великолепные брюки фасона широкий клеш помогут создать стильный костюм. Модель удобно застегиваются на молнию сбоку. Такие брюки позволят обратить на Вас внимание окружающих и придать Вашему виду экстравагантность.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Форма брючин:</b> Широкий клеш</li>\n\n							<li><b>Вид застежки:</b><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Молния</li>\n\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов:</b> Длина, 103.5 см</li>\n\n							<li><b>Брюки:</b> Ширина брючин, 48.0 см</li>\n\n							<li><b>Брюки:</b> Высота посадки, 24.0 см</li>\n\n							<li><b>Брюки:</b> Длина по внутреннему шву, 82.0 см</li>\n\n							<li><b>Сезон:</b> лето</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Стиль:</b> Деловой стиль</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 7, '2021-04-02 15:56:46', 'Y'),
(4, 'dress-fashionista-on-a-walk', 'Платье Модница на Прогулке', 126, 'Великолепное и стильное платье поможет создать незабываемый образ. Оригинальный покрой и длина выгодно подчеркнут все достоинства Вашей фигуры. Отличный вариант для любого случая.					', 7, '2021-04-03 15:55:47', 'Y'),
(5, 'dress-spring-ease', 'Платье Весенняя Легкость', 345, 'Трикотажное платье без рукавов и округлым вырезом горловины. Небольшие складки по линии талии и широкий втачной пояс формируют привлекательный силуэт. Отличный выбор для ярких будней.				', 6, '2021-04-04 15:54:49', 'Y'),
(6, 'dress-nightlife', 'Платье Ночная Жизнь', 350, 'Превосходное платье, выполненное из комфортного материала. Модель эффектно открывает плечи. Приталенный силуэт подчеркивает стройность фигуры. Отличный вариант для женского гардероба.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина изделия:</b> Мини, 85.0 см</li>\n\n							<li><b>Длина рукава: </b>Длинные, 56.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Женственный стиль</li>\n\n							<li><b>Страна бренда:</b> Турция</li>\n\n							<li><b>Страна производитель:</b> Турция</li>\n							</ul>\n							</div>\n							</div>\n						', 6, '2021-04-05 15:53:50', 'Y'),
(7, 'dress-red-fairy', 'Платье Красная Фея', 715, 'Превосходное платье, выполненное из комфортного материала. Модель эффектно открывает плечи. Приталенный силуэт подчеркивает стройность фигуры. Отличный вариант для женского гардероба.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина изделия:</b> Мини, 85.0 см</li>\n\n							<li><b>Длина рукава: </b>Длинные, 56.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль: </b>Женственный стиль</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель: </b>Турция</li>\n							</ul>\n							</div>\n							</div>\n						', 1, '2021-04-06 15:52:52', 'Y'),
(8, 'underwear-sea-wave', 'Нижнее белье Морская Волна', 527, 'Замечательные трусики-стринги. Цельновязанная поясная резинка нежно поддерживает живот до родов и мягко облегает его в течение восстановительного периода. Открытая модель идеально подходит тем, кто отдает предпочтение юбкам и брюкам с заниженной талией. Модели производятся на новейшем современном оборудовании. Для изготовления используются только самые лучшие экологически чистые полотна.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов:</b> Высота посадки, 21.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Страна бренда:</b> Турция</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 9, '2021-04-07 15:51:54', 'Y'),
(9, 'underwear-white-freedom', 'Нижнее белье Белая Свобода', 489, 'Привлекательные трусики-слипы из трикотажного эластичного полотна и кружева. Эта модель смотрится изумительно, подчеркивая Ваше изящество и пристрастие ко всему красивому. Ластовица выполнена из хлопка, благодаря чему не раздражает нежную и чувствительную кожу. В комплекте 2 штуки удобных трусиков.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Декоративные элементы: </b>Кружево</li>\n\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов:</b> Высота посадки, 11.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Россия<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span></li>\n							</ul>\n							</div>\n							</div>\n						', 1, '2021-04-08 15:50:56', 'Y'),
(10, 'lingerie-intimate-evening', 'Нижнее белье Интимный Вечер', 867, 'Великолепные трусики, оформленные полупрозрачными вставками, станут Вашими верными спутниками на каждый день. Ведь они такие удобные - будут сидеть как влитые, не доставляя ни капли дискомфорта.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов:</b> Высота посадки, 22.5 см</li>\n\n							<li><b>Сезон: </b>круглогодичный</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Страна бренда:</b> Франция</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 9, '2021-04-09 15:49:58', 'Y'),
(11, 'lingerie-night-frost-patterns', 'Нижнее белье Ночь Морозных Узоров', 866, 'Неглиже на широких бретельках украшено нежным кружевом. Эластичный материал не сковывает движения. Отличный вариант для женского гардероба. В комплекте трусики. Высота посадки трусов ок. 22 см.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина рукава: </b>Без рукавов</li>\n\n							<li><b>Габариты предметов:</b> Длина, 65.0 см</li>\n\n							<li><b>Сезон: </b>круглогодичный</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Страна бренда: </b>Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 8, '2021-04-10 15:48:59', 'Y'),
(12, 'underwear-lights-in-the-night', 'Нижнее белье Огонек в Ночи', 729, 'Милые и удобные трусики фирмы Vis-a-vis. Украшены очаровательным кружевом. Прекрасно сядут по фигуре и обеспечат максимальный комфорт. В комплекте двое трусиков.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Декоративные элементы:</b> Кружево</li>\n\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов: </b>Высота посадки, 23.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 4, '2021-04-11 15:48:01', 'Y'),
(13, 'underwear-rose-perplexity', 'Нижнее белье Розовое Смущенье', 48, 'Потрясающий бюстгальтер, выполненный из нежного полупрозрачного кружева. Модель на тонких съемных бретелях регулируемой длины. Чувственное глубокое декольте украшено изумительными сатиновыми лентами. Сзади &ndash; застежка на крючки. Чашечки изделия с косточками. Пушапа нет.\r\n							<div>\r\n							<br />\r\n							</div>\r\n\r\n							<div>\r\n							<div><b>Дополнительное описание:</b></div>\r\n\r\n							<div>\r\n							<ul>\r\n							<li><b>Фактура материала: </b>Кружевные</li>\r\n\r\n							<li><b>Декоративные элементы:</b> Банты</li>\r\n\r\n							<li><b>Вид бретелек: </b>Тонкие бретельки</li>\r\n\r\n							<li><b>Сезон:</b> круглогодичный</li>\r\n\r\n							<li><b>Пол: </b>Женский</li>\r\n\r\n							<li><b>Стиль: </b>Сексуальный стиль</li>\r\n\r\n							<li><b>Страна бренда:</b> Соединенные Штаты</li>\r\n							</ul>\r\n							</div>\r\n							</div>\r\n						', 4, '2021-04-12 15:47:03', 'Y'),
(14, 'lingerie-night', 'Нижнее белье Ночь наступает', 54, 'Милые и удобные трусики фирмы Vis-a-vis. Украшены очаровательным кружевом. Прекрасно сядут по фигуре и обеспечат максимальный комфорт. В комплекте двое трусиков.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Декоративные элементы:</b> Кружево</li>\n\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов: </b>Высота посадки, 23.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол: </b>Женский </li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 0, '2021-04-13 15:46:05', 'Y'),
(15, 't-shirt-mens-purity', 'Футболка Мужская Чистота', 125, 'Стильная футболка с V-образным вырезом горловины и короткими рукавами станет отличным дополнением к любому мужскому гардеробу. Модель выполнена из натурального хлопкового материала, приятного на ощупь.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина рукава: </b>Длинные, 19.0 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 68.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Мужской</li>\n\n							<li><b>Стиль:</b> Городской стиль</li>\n\n							<li><b>Страна бренда:</b> Бельгия</li>\n\n							<li><b>Страна производитель:</b> Бангладеш</li>\n							</ul>\n							</div>\n							</div>\n						', 9, '2021-04-14 15:45:06', 'Y'),
(16, 'women-s-t-shirt-purity', 'Футболка Женская Чистота', 465, 'Ультрамодная футболка, выполненная из комфортного материала. Модель с округлым вырезом горловины. Отличный вариант для повседневного использования.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина рукава:</b> Короткие, 13.0 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 66.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Casual</li>\n\n							<li><b>Страна бренда: </b>Польша</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 3, '2021-04-15 15:44:08', 'Y'),
(17, 'women-s-t-shirt-night', 'Футболка Женская Ночь', 951, 'Ультрамодная футболка, выполненная из комфортного материала. Модель с округлым вырезом горловины. Отличный вариант для повседневного использования.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина рукава:</b> Короткие, 13.0 см</li>\n\n							<li><b>Габариты предметов:</b><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span> Длина, 66.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Стиль: </b>Casual</li>\n\n							<li><b>Страна бренда: </b>Польша</li>\n\n							<li><b>Страна производитель:</b> Бангладеш</li>\n							</ul>\n							</div>\n							</div>\n						', 1, '2021-04-16 15:43:09', 'Y'),
(18, 't-shirt-men-s-fire', 'Футболка Мужской Огонь', 360, 'Приятная футболка с округлым вырезом горловины и короткими втачными рукавами. Спереди оформлена декоративными строчками.\n							<div>\n							<br />\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Вырез горловины:</b> Округлый вырез</li>\n\n							<li><b>Длина рукава: </b>Короткие, 21.00 см</li>\n\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Габариты предметов:</b> Длина, 68.00 см</li>\n\n							<li><b>Сезон:</b> лето</li>\n\n							<li><b>Пол:</b> Мужской</li>\n\n							<li><b>Стиль:</b> Casual</li>\n\n							<li><b>Страна бренда:</b> Израиль</li>\n\n							<li><b>Страна производитель: </b>Россия</li>\n							</ul>\n							</div>\n							</div>\n							</div>\n						', 4, '2021-04-17 15:42:10', 'Y'),
(19, 't-shirt-female-temptation', 'Футболка Женский Соблазн', 946, 'Отличная футболка, выполненная из натурального хлопкового материала. Модель с короткими рукавами и округлым вырезом горловины. Изделие украшает оригинальный принт.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина рукава:</b> Короткие, 6.0 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 58.0 см</li>\n\n							<li><b>Сезон:</b> лето</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Casual</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 6, '2021-04-18 15:41:12', 'Y'),
(20, 'sports-suit-gentle-warmth', 'Спортивный Костюм Нежная Теплота', 654, 'Замечательный спортивный костюм, состоящий из куртки и брюк. Манжеты, талия, низ изделия и капюшон регулируются в 2 направлениях одной рукой. Капюшон сворачивается и убирается в ворот под молнию. Изделия легко складываются в маленькую сумочку, которая идет в комплекте к костюму.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Вид застежки: </b>Липучка</li>\n\n							<li><b>Длина рукава: </b>Длинные, 79.0 см</li>\n\n							<li><b>Вид застежки: </b>Молния</li>\n\n							<li><b>Тип карманов:</b> Втачные</li>\n\n							<li><b>Габариты предметов: </b>Длина, 75.0 см</li>\n\n							<li><b>Брюки: </b>Ширина брючин, 34.0 см</li>\n\n							<li><b>Брюки: </b>Высота посадки, 28.0 см</li>\n\n							<li><b>Брюки: </b>Длина по внутреннему шву, 78.0 см</li>\n\n							<li><b>Сезон: </b>демисезон</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Стиль: </b>Спортивный стиль</li>\n\n							<li><b>Страна бренда: </b>Швеция</li>\n\n							<li><b>Страна производитель: </b>Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 10, '2021-04-19 15:40:13', 'Y'),
(21, 'sports-suit-fire-in-the-night', 'Спортивный Костюм Огонь в Ночи', 429, 'Превосходный спортивный костюм, состоящий из толстовки и брюк. Толстовка имеет застежку на молнию и воротник &quot;стойка&quot;. Низ изделия эластичный. Толстовка оформлена декоративными вставками яркого контрастного цвета. Спортивные брюки прямого покроя имеют удобный эластичный пояс и прорезные карманы.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Вид застежки:</b> Шнурки</li>\n\n							<li><b>Длина рукава:</b> Длинные, 62.0 см</li>\n\n							<li><b>Вид застежки:</b> Молния</li>\n\n							<li><b>Тип карманов:</b> Прорезные</li>\n\n							<li><b>Габариты предметов:</b> Длина, 55.0 см</li>\n\n							<li><b>Брюки:</b> Ширина брючин, 22.0 см</li>\n\n							<li><b>Брюки:</b> Высота посадки, 21.0 см</li>\n\n							<li><b>Брюки:</b> Длина по внутреннему шву, 83.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Спортивный стиль</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n\n							<div>\n							<br />\n							</div>\n							</div>\n							</div>\n						', 6, '2021-04-20 15:39:15', 'Y'),
(22, 'sports-suit-elegance-in-the-night', 'Спортивный Костюм Элегантность в Ночи', 184, 'Замечательный спортивный костюм, состоящий из толстовки и брюк. Толстовка с длинными рукавами застегивается на молнию и дополнена удобными карманами. Брюки на эластичном поясе. Длина брюк ок. 101 см.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина рукава:</b> Длинные, 74.0 см</li>\n\n							<li><b>Вид застежки:</b> Молния</li>\n\n							<li><b>Габариты предметов:</b> Длина, 65.0 см</li>\n\n							<li><b>Брюки:</b> Ширина брючин, 23.0 см</li>\n\n							<li><b>Брюки:</b> Высота посадки, 24.0 см</li>\n\n							<li><b>Брюки:</b> Длина по внутреннему шву, 80.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Страна бренда:</b> Германия</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 2, '2021-04-21 15:38:17', 'Y'),
(23, 'sports-suit-pink-vortex', 'Спортивный Костюм Розовый Вихрь', 632, 'Великолепный спортивный костюм состоящий из свитшота и брюк. Свитшот с длинными рукавами и капюшоном на спинке декорирован принтом с нанесением шелкографии. Брюки прямого кроя выполнены на поясе на эластичной резинке, низ оформлен трикотажными манжетами. Прекрасный вариант как для занятий спортом, так и для повседневной носки.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Вид застежки:</b> Завязки</li>\n\n							<li><b>Длина рукава:</b> Длинные, 63.0 см</li>\n\n							<li><b>Тип карманов:</b> Втачные</li>\n\n							<li><b>Габариты предметов:</b> Длина, 64.0 см</li>\n\n							<li><b>Брюки:</b> Высота посадки, 27.0 см</li>\n\n							<li><b>Брюки:</b> Длина по внутреннему шву, 80.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Спортивный стиль</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 7, '2021-04-22 15:37:18', 'Y'),
(24, 'sports-suit-breath-sports', 'Спортивный Костюм Дыхание Спорта', 611, 'Очаровательный комбинезон с тонкой бретель-американка. Облегающий силуэт. Эффектная модель, которая поможет подчеркнуть достоинства Вашей фигуры. Практичный вариант для занятий спортом.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Вырез горловины:</b> V-образный вырез</li>\n\n							<li><b>Длина изделия:</b> Мини, 90.0 см</li>\n\n							<li><b>По назначению:</b> Повседневные</li>\n\n							<li><b>Длина рукава:</b> Без рукавов</li>\n\n							<li><b>Вид бретелек:</b> Тонкие бретельки</li>\n\n							<li><b>Габариты предметов:</b><span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span> Длина, 94.0 см</li>\n\n							<li><b>Брюки:</b> Ширина брючин, 30.0 см</li>\n\n							<li><b>Брюки:</b> Длина по внутреннему шву, 13.0 см</li>\n\n							<li><b>Сезон</b>: лето</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Спортивный стиль</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 3, '2021-04-23 15:36:19', 'Y'),
(25, 'sports-suit-evening-activities', 'Спортивный Костюм Вечерний Спорт', 157, 'Платье из коллекции Марии Шараповой, российской теннисистки, 2-ой ракетки мира, заслуженного мастера спорта. Особенности включают в себя Dri-FIT - легкая и дышащая ткань, обеспечивающая спортсменам сухость и комфорт. Конструкция плоских швов сводит натирание к нулю, предотвращая появление раздражения. Сетчатые вставки на теплостойкой поверхности улучшают вентиляцию. Вшитое бра со вставками из сетчатой ткани обеспечивает эффективную поддержку и вентиляцию. Swoosh логотип дополняет.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Длина изделия: </b>Мини, 80.0 см</li>\n\n							<li><b>По назначению:</b> Спорт</li>\n\n							<li><b>Длина рукава:</b> Без рукавов</li>\n\n							<li><b>Вид бретелек:</b> Тонкие бретельки</li>\n\n							<li><b>Сезон:</b> лето</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Стиль:</b> Спортивный стиль</li>\n\n							<li><b>Страна бренда:</b> Соединенные Штаты</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 1, '2021-04-24 15:35:20', 'Y'),
(26, 'slippers-pink-paradise', 'Домашние Тапочки Розовый Рай', 954, '							<div>Симпатичные тапочки, украшенные вышивкой в виде мышки. Модель оформлена рисунком в полоску. Комфортная и уютная обувь для домашнего отдыха.</div>\n\n							<div>\n							<br />\n							</div>\n\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Высота каблука:</b> Без каблука</li>\n\n							<li><b>Высота платформы:</b> Низкая, 0.5 см</li>\n\n							<li><b>Материал верха:</b> Текстиль</li>\n\n							<li><b>Материал подошвы:</b> Резина</li>\n\n							<li><b>Материал подкладки:</b> Кожа</li>\n\n							<li><b>Сезон:</b> Круглогодичный</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Страна бренда: </b>Россия</li>\n\n							<li><b>Страна производитель: </b>Китай</li>\n							</ul>\n							</div>\n						', 5, '2021-04-25 15:34:22', 'Y'),
(27, 'slippers-favorite-sport', 'Домашние Тапочки Любимый Спорт', 298, 'Замечательные тапочки согреют и обеспечат комфорт при носке. Изделие с закругленным мыском декорировано отстрочкой и нашивкой с изображением фирменного логотипа. Практичный вариант на каждый день.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Высота каблука:</b> Без каблука</li>\n\n							<li><b>Высота платформы:</b> Низкая, 1.5 см</li>\n\n							<li><b>Материал верха:</b> Текстиль</li>\n\n							<li><b>Материал подкладки:</b> Текстиль</li>\n\n							<li><b>Материал подошвы:</b> Полимер</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол: </b>Мужской</li>\n\n							<li><b>Страна бренда: </b>Россия</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 5, '2021-04-26 15:33:24', 'Y'),
(28, 'shoes-summer-lightness', 'Туфли Летняя Легкость', 628, 'Туфли лаконичного исполнения, классической расцветки - идеальный вариант для современного мужчины. Мысок закругленной формы. Спереди - застежка. Материал подкладки - натуральная кожа.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Вид застежки:</b> Шнурки</li>\n\n							<li><b>Высота каблука:</b> Средний, 3.0 см</li>\n\n							<li><b>Высота платформы:</b> Низкая, 1.2 см</li>\n\n							<li><b>Материал верха:</b> Кожа</li>\n\n							<li><b>Материал подкладки:</b> Кожа</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Мужской</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель: </b>Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 1, '2021-04-27 15:32:25', 'Y'),
(29, 'shoes-evening-butterfly', 'Туфли Вечерняя Бабочка', 248, 'Эффектные туфли на высоком каблуке помогут Вам создать яркий запоминающийся образ. Подкладка изготовлена из натуральной кожи, подошва выполнена из тунита. Модель оформлена декоративными ремешками и прострочкой.', 7, '2021-04-28 15:31:26', 'Y'),
(30, 'pantolety-bones-on-the-beach', 'Пантолеты Кости на Пляже', 358, 'Эти оригинальные пантолеты - идеальный вариант для пляжного отдыха. Модель выполнена из высококачественного каучука. Модель на гибкой подошве оформлена фирменным логотипом.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Высота каблука</b>: Без каблука</li>\n\n							<li><b>Высота платформы: </b>Низкая, 1.5 см</li>\n\n							<li><b>Сезон: </b>лето</li>\n\n							<li><b>Пол: </b>Мужской</li>\n\n							<li><b>Страна бренда: </b>Франция</li>\n\n							<li><b>Страна производитель: </b>Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 3, '2021-04-29 15:30:27', 'Y'),
(31, 'shoes-flight-of-the-valkyries', 'Туфли Полет Валькирии', 46, 'Превосходные туфли с открытым мыском. Высокий каблук компенсирован широким передом. Модель выполнена из натуральной кожи с лаковым покрытием. Прекрасный вариант для создания женственного образа.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Высота каблука:</b> Высокий, 14.0 см</li>\n\n							<li><b>Высота платформы:</b> Низкая, 4.5 см</li>\n\n							<li><b>Материал верха:</b> Кожа</li>\n\n							<li><b>Материал подошвы:</b> Искусственный материал</li>\n\n							<li><b>Материал подкладки:</b> Кожа</li>\n\n							<li><b>Сезон:</b> лето</li>\n\n							<li><b>Пол: </b>Женский</li>\n\n							<li><b>Страна бренда: </b>Китай</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 3, '2021-04-30 15:29:28', 'Y'),
(32, 'shoes-ultra-line', 'Туфли Ультра Лайн', 155, 'Великолепные туфли сдержанного дизайна. Модель выполнена из натуральной кожи благородного оттенка. Отличный вариант на каждый день. Подкладка: натуральная кожа. Высота каблука ок. 9,5 см.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Высота каблука:</b> Средний, 9.5 см</li>\n\n							<li><b>Материал верха:</b> Кожа</li>\n\n							<li><b>Материал стельки:</b> Кожа</li>\n\n							<li><b>Материал подкладки:</b> Кожа</li>\n\n							<li><b>По назначению: </b>Повседневные</li>\n\n							<li><b>Сезон:</b> лето</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Страна бренда:</b> Россия</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 6, '2021-05-01 15:28:30', 'Y'),
(33, 'strap-rainbow', 'Ремень Радуга', 637, 'Стильный текстильный ремень, декорированный полоской и фирменным логотипом. Застежка на металлическую пряжку. Отличный вариант на каждый день.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Габариты предметов:</b> Ширина, 4.0 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 105.0 см</li>\n\n							<li><b>Размер пряжки:</b> Маленькая, 3.0 см</li>\n\n							<li><b>Сезон:</b> демисезон</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Страна бренда:</b> Соединенные Штаты</li>\n\n							<li><b>Страна производитель:</b> Румыния</li>\n							</ul>\n							</div>\n							</div>\n						', 3, '2021-05-02 15:27:30', 'Y'),
(34, 'strap-classics', 'Ремень Класика', 720, 'Стильный и качественный ремень станет прекрасным завершение Вашего образа. Ширина ремня ок. 3,5 см, длина регулируется на уменьшение. Уход за изделием: натереть пряжку войлоком, кожу влажной тряпочкой.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Габариты предметов:</b> Ширина, 3.5 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 105.0 см</li>\n\n							<li><b>Размер пряжки:</b> Крупная, 7.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Мужской</li>\n\n							<li><b>Страна бренда:</b> Италия</li>\n\n							<li><b>Страна производитель:</b> Италия</li>\n							</ul>\n							</div>\n							</div>\n						', 5, '2021-05-03 15:26:31', 'Y'),
(35, 'strap-elegance', 'Ремень Элегантность', 691, 'Оригинальный кожаный ремень с изящной пряжкой. Будет великолепно смотреться с Вашим модным нарядом, идеально дополнит повседневный образ. Ремень регулируется по длине.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Габариты предметов:</b> Ширина, 2.5 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 98.0 см</li>\n\n							<li><b>Размер пряжки:</b> Маленькая, 3.5 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Страна бренда:</b> Соединенные Штаты</li>\n\n							<li><b>Страна производитель:</b> Румыния</li>\n							</ul>\n							</div>\n							</div>\n						', 9, '2021-05-04 15:25:33', 'Y'),
(36, 'strap-line', 'Ремень Строчка', 293, 'Стильный кожаный ремень отлично дополнит Ваш образ. Характеристика: Ширина ремня 4 см, длина регулируется на уменьшение. Уход за изделием: натереть пряжку войлоком, кожу влажной тряпочкой.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Габариты предметов:</b> Ширина, 4.0 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 106.0 см</li>\n\n							<li><b>Размер пряжки:</b> Крупная, 7.6 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Мужской</li>\n\n							<li><b>Страна бренда:</b> Италия</li>\n\n							<li><b>Страна производитель:</b> Италия</li>\n							</ul>\n							</div>\n							</div>\n						', 1, '2021-05-05 15:24:34', 'Y'),
(37, 'strap-weaving', 'Ремень Плетение', 395, 'Стильный ремень станет прекрасным завершением Вашего образа. Плетеная фактура всегда актуальна.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Габариты предметов:</b> Ширина, 2.5 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 108.0 см</li>\n\n							<li><b>Размер пряжки:</b> Маленькая, 4.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Женский</li>\n\n							<li><b>Страна бренда:</b> Франция</li>\n\n							<li><b>Страна производитель:</b> Китай</li>\n							</ul>\n							</div>\n							</div>\n						', 8, '2021-05-06 15:23:35', 'Y'),
(38, 'strap-rough-skin', 'Ремень Грубая Кожа', 96, 'Стильный ремень с металлической пряжкой. Модель выполнена из качественного материала практичной расцветки. Отличный вариант на каждый день.\n							<div>\n							<br />\n							</div>\n\n							<div>\n							<div><b>Дополнительное описание:</b></div>\n\n							<div>\n							<ul>\n							<li><b>Габариты предметов:</b> Ширина, 3.0 см</li>\n\n							<li><b>Габариты предметов:</b> Длина, 118.0 см</li>\n\n							<li><b>Размер пряжки:</b> Средняя, 5.0 см</li>\n\n							<li><b>Сезон:</b> круглогодичный</li>\n\n							<li><b>Пол:</b> Мужской</li>\n\n							<li><b>Страна бренда:</b> Соединенные Штаты</li>\n\n							<li><b>Страна производитель:</b> Россия</li>\n							</ul>\n							</div>\n							</div>\n						', 9, '2021-05-07 15:22:36', 'Y');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
