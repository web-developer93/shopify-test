-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 20 2018 г., 15:20
-- Версия сервера: 5.7.11
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopify`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_collections`
--

CREATE TABLE IF NOT EXISTS `tbl_collections` (
  `id` bigint(13) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `body_html` text,
  `published_at` timestamp NOT NULL,
  `sort_order` varchar(255) NOT NULL,
  `template_sufix` varchar(255) DEFAULT NULL,
  `disjunctive` varchar(100) NOT NULL,
  `rule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_collections`
--

INSERT INTO `tbl_collections` (`id`, `handle`, `title`, `updated_at`, `body_html`, `published_at`, `sort_order`, `template_sufix`, `disjunctive`, `rule`) VALUES
(35617472569, 'phone', 'Мобільні телефони', '2018-04-18 08:21:15', '', '2018-04-16 18:50:38', 'best-selling', NULL, '1', 'phone'),
(35617669177, 'laptop', 'Ноутбуки', '2018-04-19 17:22:23', '', '2018-04-16 18:54:37', 'best-selling', NULL, '1', 'laptop'),
(35617800249, 'tablet', 'Планшети', '2018-04-18 08:24:00', '', '2018-04-16 18:55:21', 'best-selling', NULL, '1', 'tablet'),
(35617996857, 'accessories', 'Аксесуари', '2018-04-18 08:10:01', '', '2018-04-16 18:56:52', 'best-selling', NULL, '1', 'accessories');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_collect_image`
--

CREATE TABLE IF NOT EXISTS `tbl_collect_image` (
  `id` bigint(13) NOT NULL,
  `created_at` timestamp NOT NULL,
  `alt` varchar(255) NOT NULL,
  `width` int(5) NOT NULL,
  `height` int(5) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_collect_image`
--

INSERT INTO `tbl_collect_image` (`id`, `created_at`, `alt`, `width`, `height`, `src`) VALUES
(35617472569, '2018-04-16 18:53:00', '', 708, 531, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/collections/lg_v30_5.jpg?v=1523904780'),
(35617669177, '2018-04-16 18:55:10', '', 1000, 887, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/collections/u_10164469.jpg?v=1523904910'),
(35617800249, '2018-04-16 18:56:41', '', 1240, 840, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/collections/xperia-z4-tablet-gallery-02-1240x840-72ede291ca9aeaf67d446ac3c4b76f67.jpg?v=1523905001'),
(35617996857, '2018-04-16 18:58:31', '', 500, 500, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/collections/mobile-headphone-500x500.jpg?v=1523905111');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` bigint(13) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body_html` text NOT NULL,
  `vendor` varchar(100) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `handle` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `published_at` timestamp NOT NULL,
  `template_suffix` varchar(255) DEFAULT NULL,
  `published_scope` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `variants` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=644059955258 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `title`, `body_html`, `vendor`, `product_type`, `created_at`, `handle`, `updated_at`, `published_at`, `template_suffix`, `published_scope`, `tags`, `images`, `variants`) VALUES
(640649134137, 'Acer - 2-in-1 11.6" Touch-Screen Chromebook - Intel Celeron - 4GB Memory - 32GB Solid State Drive - Black', 'Chromebook Acer 2-in-1 Насолоджуйтесь потужністю, швидкістю та універсальністю цього Chromebook Acer. Відкрийте 11,6-дюймовий дисплей із сенсорним дисплеєм HD, щоб використовувати його як типовий ноутбук, або як планшет.', 'Computer-shop-today', 'laptop', '2018-04-16 19:07:51', 'acer-2-in-1-11-6-touch-screen-chromebook-intel-celeron-4gb-memory-32gb-solid-state-drive-black', '2018-04-18 07:52:24', '2018-04-16 19:07:26', NULL, 'web', '', '[{"id":2467799564345,"product_id":640649134137,"position":1,"created_at":"2018-04-16T22:07:54+03:00","updated_at":"2018-04-16T22:07:54+03:00","alt":null,"width":550,"height":550,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/4929905_sd.jpg?v=1523905674","variant_ids":[]}]', '[{"id":7542907732025,"product_id":640649134137,"title":"Default Title","price":"10999.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-16T22:07:52+03:00","updated_at":"2018-04-18T10:52:24+03:00","taxable":true,"barcode":"","grams":1361,"image_id":null,"inventory_quantity":1,"weight":1.3608,"weight_unit":"kg","inventory_item_id":7538497060921,"old_inventory_quantity":1,"requires_shipping":true}]'),
(640809566265, 'Acer - 15.6" Chromebook - Intel Core i3 - 4GB Memory - 32GB Solid State Drive - Black', 'Здійсніть розваги на ходу з цим Chromebook із Acer C9103916, який має Wi-Fi для доступу до фыльмів та шоу, а також 15,6-дюймовий дисплей високої чіткості з технологією ComfyView, що дає вам змогу насолоджуватися відео в більш чіткі якості.', 'Computer-shop-today', 'laptop', '2018-04-16 19:45:29', 'acer-15-6-chromebook-intel-core-i3-4gb-memory-32gb-solid-state-drive-black', '2018-04-19 20:01:19', '2018-04-16 19:43:50', NULL, 'web', '', '[{"id":2549607301177,"product_id":640809566265,"position":1,"created_at":"2018-04-19T19:52:07+03:00","updated_at":"2018-04-19T23:01:19+03:00","alt":null,"width":700,"height":420,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/c700x420.jpg?v=1524168079","variant_ids":[]},{"id":2468578000953,"product_id":640809566265,"position":2,"created_at":"2018-04-16T22:45:32+03:00","updated_at":"2018-04-19T23:01:19+03:00","alt":null,"width":550,"height":428,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/6497029cv11a.jpg?v=1524168079","variant_ids":[]},{"id":2550287663161,"product_id":640809566265,"position":3,"created_at":"2018-04-19T20:29:41+03:00","updated_at":"2018-04-19T23:01:19+03:00","alt":null,"width":700,"height":420,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/c700x420_1.jpg?v=1524168079","variant_ids":[7543465508921]}]', '[{"id":7543465508921,"product_id":640809566265,"title":"17","price":"16399.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"17","option2":null,"option3":null,"created_at":"2018-04-16T22:45:30+03:00","updated_at":"2018-04-19T20:29:43+03:00","taxable":true,"barcode":"","grams":0,"image_id":2550287663161,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7539061096505,"old_inventory_quantity":1,"requires_shipping":true},{"id":7602593792057,"product_id":640809566265,"title":"13","price":"16399.00","sku":"","position":2,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"13","option2":null,"option3":null,"created_at":"2018-04-19T20:22:23+03:00","updated_at":"2018-04-19T20:22:23+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7598569095225,"old_inventory_quantity":1,"requires_shipping":true}]'),
(642796519481, 'Lenovo - IdeaPad 11.6" Laptop - Intel Celeron - 2GB Memory - 32GB eMMC Flash Memory - Mineral Gray', 'Ноутбук Lenovo IdeaPad 120S-11IAP: доступ до важливих файлів під час подорожі з цим 11-дюймовим ноутбуком Lenovo IdeaPad. Процесор Intel Celeron і 2 ГБ оперативної пам''яті дозволяють вам працювати за допомогою ефективності списку завдань, а 32 Гб пам''яті eMMC забезпечує простір для архівів особистих файлів. Цей ноутбук Lenovo IdeaPad має восьмигодинну батарею, яка дозволяє вам пройти через робочий день.', 'Computer-shop-today', 'laptop', '2018-04-17 05:36:44', 'lenovo-ideapad-11-6-laptop-intel-celeron-2gb-memory-32gb-emmc-flash-memory-mineral-gray', '2018-04-18 08:06:59', '2018-04-17 05:34:49', NULL, 'web', '', '[{"id":2478968569913,"product_id":642796519481,"position":1,"created_at":"2018-04-17T08:36:47+03:00","updated_at":"2018-04-17T08:36:47+03:00","alt":null,"width":550,"height":423,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/6061800_rd.jpg?v=1523943407","variant_ids":[]}]', '[{"id":7553659011129,"product_id":642796519481,"title":"Default Title","price":"5199.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T08:36:44+03:00","updated_at":"2018-04-18T11:06:59+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7549306372153,"old_inventory_quantity":1,"requires_shipping":true}]'),
(642805596217, 'Apple - iPad (Latest Model) with Wi-Fi - 128GB - Gold', 'Створюйте, навчайте, працюйте та грайте, як ніколи раніше. Завдяки захоплюючому 9,7-дюймовому дисплею Multi-Touch Retina, ¹ потужним чіпом A10 Fusion, а тепер підтримує Apple Pencil, ² немає нічого подібного до iPad.', 'Computer-shop-today', 'tablet', '2018-04-17 05:39:43', 'apple-ipad-latest-model-with-wi-fi-128gb-gold', '2018-04-20 08:12:56', '2018-04-17 05:38:17', NULL, 'web', '', '[{"id":2568069414969,"product_id":642805596217,"position":1,"created_at":"2018-04-20T11:12:56+03:00","updated_at":"2018-04-20T11:12:56+03:00","alt":null,"width":451,"height":640,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/5201600_sd.jpg?v=1524211976","variant_ids":[]}]', '[{"id":7553759739961,"product_id":642805596217,"title":"Default Title","price":"8399.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T08:39:43+03:00","updated_at":"2018-04-18T10:53:05+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7549407756345,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643124985913, 'Samsung - Galaxy Tab A 7" 8GB - Black', 'Samsung Galaxy Tab A: використовуйте планшет Samsung Galaxy Tab , щоб переглядати фільми, грати в ігри або отримувати роботу, коли ви знаходитесь в  дорозі. Його багатокористувацький режим зберігає вашу інформацію безпечно за допомогою окремих логінів, а режим енергозбереження забезпечує максимальний термін служби акумулятора. Планшет Samsung Galaxy Tab A оснащений фронтальною та задніми камерами, які дозволяють вам отримувати селфі або захоплювати відео.', 'Computer-shop-today', 'tablet', '2018-04-17 06:59:47', 'samsung-galaxy-tab-a-7-8gb-black', '2018-04-18 08:24:00', '2018-04-17 06:56:08', NULL, 'web', '', '[{"id":2480548970553,"product_id":643124985913,"position":1,"created_at":"2018-04-17T09:59:49+03:00","updated_at":"2018-04-17T09:59:49+03:00","alt":null,"width":373,"height":640,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/4943611_sd.jpg?v=1523948389","variant_ids":[]}]', '[{"id":7554644312121,"product_id":643124985913,"title":"Default Title","price":"6299.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T09:59:47+03:00","updated_at":"2018-04-18T11:24:00+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550296064057,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643134750777, 'Amazon - Fire - 7" - Tablet - 8GB 7th Generation, 2017 Release - Black', '<span>Грайте в ігри, гортайте журнали або фотографуйте з цим планшетом, який пропонує яскравий 7-дюймовий сенсорний екран із поляризаційним фільтром для читання на відкритому повітрі. Вбудовані Wi-Fi та Amazon Underground забезпечують швидку та просту передачу даних та завантаження.</span>', 'Computer-shop-today', 'tablet', '2018-04-17 07:02:09', 'amazon-fire-7-tablet-8gb-7th-generation-2017-release-black', '2018-04-18 07:52:45', '2018-04-17 07:01:04', NULL, 'web', '', '[{"id":2480604774457,"product_id":643134750777,"position":1,"created_at":"2018-04-17T10:02:12+03:00","updated_at":"2018-04-17T10:02:12+03:00","alt":null,"width":522,"height":640,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/5822948_sd.jpg?v=1523948532","variant_ids":[]}]', '[{"id":7554667282489,"product_id":643134750777,"title":"Default Title","price":"3199.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:02:09+03:00","updated_at":"2018-04-18T10:52:45+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550319165497,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643143335993, 'Apple - Pre-Owned iPad mini - 16GB - Black & Slate', 'Перевірте електронну пошту, використовуйте FaceTime зі своїми друзями та стежте за своїми соціальними мережами на цьому iPad Mini з 16ГБ. Ультратонкий дизайн забезпечує зручність обробки, а технологія Apple Touch ID гарантує, що ніхто не буде доступ до вашого пристрою, крім вас. Під''єднайте цей iPad Mini через Wi-Fi, щоб залишатися на зв''язку, де б ви не були.', 'Computer-shop-today', 'tablet', '2018-04-17 07:03:43', 'apple-pre-owned-ipad-mini-16gb-black-slate', '2018-04-18 07:51:32', '2018-04-17 07:02:39', NULL, 'web', '', '[{"id":2480649601081,"product_id":643143335993,"position":1,"created_at":"2018-04-17T10:03:46+03:00","updated_at":"2018-04-17T10:03:46+03:00","alt":null,"width":1000,"height":1000,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/5848569_sd.jpg?v=1523948626","variant_ids":[]}]', '[{"id":7554690351161,"product_id":643143335993,"title":"Default Title","price":"5500.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:03:44+03:00","updated_at":"2018-04-18T10:51:32+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550342299705,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643210674233, 'Moto G5S Plus (Lunar Grey, 64GB)', '<span>Новий смартфон Moto G5 захищений високотехнологічним алюмінієвим покриттям, яке пройшло алмазне гравіювання й дробоструминне оброблення для отримання ідеальної поверхні.</span><span id="copyinfo"><br></span>\n<p><b>Заряд на цілий день роботи.<span> </span></b><br>Завдяки акумулятору ємністю 2800 мА·год, якого досить на цілий день автономної роботи, ти можеш не турбуватися про заряджання з раннього ранку до пізнього вечора.*</p>\n<p><b>Швидкісне заряджання</b><br>Смартфон Moto G5 сумісний із зарядним пристроєм 10 Вт для швидкого заряджання, яке забезпечує годинник автономної роботи всього за кілька хвилин заряджання акумулятора.*<span><br></span></p>\n<p><b>Не проґав момент</b><br>Ти пишатимешся знятими світлинами. Фазовий автофокус забезпечує швидке фокусування для чіткіших зображень. Він вбудований до камери 13 МП смартфона Moto G5.</p>\n<p><b>Прекрасні селфі</b><br>Перемикнись на фронтальну камеру 5 МП із ширококутним об''єктивом, щоб на знімку помістилися всі твої друзі. Вдосконалюй свої селфі завдяки ручним і автоматичним налаштуванням режиму поліпшення якості світлин.</p>\n<p><b>Просто знімай</b><br>Для фотографів-аматорів та професіоналів камера смартфона Moto G5 має різні режими знімання (Best Shot, «професійний» тощо), що дають змогу із легкістю робити чудові знімки. Додай індивідуальні штрихи світлин з програмою Google Photos.**<span id="copyinfo"><br>Докладніше:<span> </span><a href="https://rozetka.com.ua/ua/motorola_pa610107ua/p16808462/">https://rozetka.com.ua/ua/motorola_pa610107ua/p16808462/</a></span></p>\n<p><span id="copyinfo"> </span></p>\n<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'phone', '2018-04-17 07:15:08', 'moto-g5s-plus-lunar-grey-64gb', '2018-04-18 08:12:00', '2018-04-17 07:13:05', NULL, 'web', '', '[{"id":2480958373945,"product_id":643210674233,"position":1,"created_at":"2018-04-17T10:15:13+03:00","updated_at":"2018-04-17T10:15:13+03:00","alt":null,"width":870,"height":1374,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/71N5hSP49AL._SL1374.jpg?v=1523949313","variant_ids":[]}]', '[{"id":7554855632953,"product_id":643210674233,"title":"Default Title","price":"129.99","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:15:08+03:00","updated_at":"2018-04-17T10:15:08+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550508171321,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643215163449, 'OnePlus 5T (Midnight Black 6GB RAM + 64GB memory)', 'Ключовою превагою  моделі слід назвати знакову співвідношення вартості та функціональності.Щвидкодія смартфона засновано на топвому Qualcomm Snapdragon 835 в складі 8-ядерного процесора, відеочіпа Adreno 540, 6 ГБ оперативної пам''яті та 64ГБ вбудованої.<br><br>Цей оснащення керується операційною системою Android 7.1.1 Nugat, додаткова користувачем інтерфейсом OxygenOS. Зовнішність смартфона обумовлена ​​ефектним металевим корпусом, що містить  літий-полімерний акумулятор ємністю 3300 мА * ч і 5,5-дюймовим AMOLED-дисплеєм з роздільною здатністю 1920х1080 точок.<br><br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'phone', '2018-04-17 07:16:03', 'oneplus-5t-midnight-black-6gb-ram-64gb-memory', '2018-04-18 08:18:32', '2018-04-17 07:15:22', NULL, 'web', '', '[{"id":2480978657337,"product_id":643215163449,"position":1,"created_at":"2018-04-17T10:16:05+03:00","updated_at":"2018-04-17T10:16:05+03:00","alt":null,"width":734,"height":1500,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/81qqBAKRhTL._SL1500.jpg?v=1523949365","variant_ids":[]}]', '[{"id":7554863628345,"product_id":643215163449,"title":"Default Title","price":"14599.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:16:03+03:00","updated_at":"2018-04-18T11:18:32+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550516232249,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643222863929, 'OPPO F7 (Red, 64GB) with offers', 'Oppo F7 оснащений 6,23-дюймовим дисплеєм з роздільною здатністю Full HD + (2280 x 1080 пікселів) з співвідношенням сторін 19: 9, основною камерою на 16 Мп, сканером відпечатків пальців на задній панелі.<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'phone', '2018-04-17 07:17:52', 'oppo-f7-red-64gb-with-offers', '2018-04-18 08:18:10', '2018-04-17 07:17:05', NULL, 'web', '', '[{"id":2481023516729,"product_id":643222863929,"position":1,"created_at":"2018-04-17T10:17:55+03:00","updated_at":"2018-04-17T10:17:55+03:00","alt":null,"width":672,"height":1360,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/61YvH1PEe_L._SL1360.jpg?v=1523949475","variant_ids":[]}]', '[{"id":7554881355833,"product_id":643222863929,"title":"Default Title","price":"10999.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:17:52+03:00","updated_at":"2018-04-18T11:18:10+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550534025273,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643234857017, 'Redmi Y1 Lite (Grey, 16GB)', 'Xiaomi Redmi Y1 отримав дисплей діагональю 5,5 дюйма з роздільною здатністю 1280 х 720 пікселів, закритий склом Gorilla Glass. Qualcomm Snapdragon 435 виступає в ролі однокристальної системи, також смартфон отримав 3 або 4 ГБ ОЗУ і 32 або 64 Гб флеш-пам''яті з можливістю встановлення карт пам''яті microSD.<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'phone', '2018-04-17 07:20:22', 'redmi-y1-lite-grey-16gb', '2018-04-18 08:21:14', '2018-04-17 07:19:36', NULL, 'web', '', '[{"id":2481087873081,"product_id":643234857017,"position":1,"created_at":"2018-04-17T10:20:24+03:00","updated_at":"2018-04-17T10:20:24+03:00","alt":null,"width":752,"height":1500,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/71dFiZPmXxL._SL1500.jpg?v=1523949624","variant_ids":[]}]', '[{"id":7554904883257,"product_id":643234857017,"title":"Default Title","price":"3299.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:20:22+03:00","updated_at":"2018-04-18T11:21:14+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550557683769,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643239968825, 'Honor 7X (Blue, 4GB RAM + 32GB memory)', 'Збалансований по всіх фронтах апарат середнього класу, який отримав в своє розпорядження широкоформатний дисплей зі співвідношенням сторін 18: 9 і гідну апаратну «начинку». 8-ядерний чіп Kirin 659 з чотирма енергоефективними (1.7 ГГц) і чотирма високопродуктивними ядрами (2.36 ГГц) орудує все, що підвернеться йому під руку, нехай і далеко не завжди на максимальних налаштуваннях графіки.<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'phone', '2018-04-17 07:21:29', 'honor-7x-blue-4gb-ram-32gb-memory', '2018-04-18 08:01:50', '2018-04-17 07:20:46', NULL, 'web', '', '[{"id":2481114710073,"product_id":643239968825,"position":1,"created_at":"2018-04-17T10:21:31+03:00","updated_at":"2018-04-17T10:21:31+03:00","alt":null,"width":1500,"height":1500,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/91V89Qmb5YL._SL1500.jpg?v=1523949691","variant_ids":[]}]', '[{"id":7554916417593,"product_id":643239968825,"title":"Default Title","price":"5999.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:21:29+03:00","updated_at":"2018-04-18T11:01:50+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550569218105,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643259072569, 'HP - 15.6" Touch-Screen Laptop - Intel Core i3 - 8GB Memory - 1TB Hard Drive - Jet black, woven texture pattern', '8 Гб оперативної пам''яті обробляють вимоги інтенсивних програм і ігор, а функція CoolSense автоматично регулює свою температуру, щоб запобігти перегріванню. Вбудований в цей ноутбук HP 1 ТБ жорсткий диск має достатньо місця для зберігання великих файлів.', 'Computer-shop-today', 'laptop', '2018-04-17 07:25:23', 'hp-15-6-touch-screen-laptop-intel-core-i3-8gb-memory-1tb-hard-drive-jet-black-woven-texture-pattern', '2018-04-18 08:03:16', '2018-04-17 07:24:03', NULL, 'web', '', '[{"id":2481210720313,"product_id":643259072569,"position":1,"created_at":"2018-04-17T10:25:25+03:00","updated_at":"2018-04-17T10:25:25+03:00","alt":null,"width":1000,"height":651,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/6090904_sd.jpg?v=1523949925","variant_ids":[]}]', '[{"id":7554963996729,"product_id":643259072569,"title":"Default Title","price":"399.99","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T10:25:24+03:00","updated_at":"2018-04-18T11:03:16+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7550617059385,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643531407417, 'Bluetooth Headphones, Otium Best Wireless Sports Earphones w/ Mic IPX7 Waterproof HD Stereo Sweatproof In Ear Earbuds for Gym Running Workout 8 Hour Battery Noise Cancelling Headsets', '<ul class="a-unordered-list a-vertical a-spacing-none">\n<li><span></span></li>\n</ul>\nВідкрийте для себе заново відчуття свободи з навушниками Otium Best Wireless Sports Earphones . Забудьте про заплутані дроти й без жодних проблем насолоджуйтеся музикою або аудіокнигою, під''єднавши навушники за допомогою інтерфейсу Bluetooth до інших пристроїв, які підтримують цю технологію, на відстані до 10 метрів.<span id="copyinfo"><br></span>', 'Computer-shop-today', 'accessories', '2018-04-17 08:36:19', 'bluetooth-headphones-otium-best-wireless-sports-earphones-w-mic-ipx7-waterproof-hd-stereo-sweatproof-in-ear-earbuds-for-gym-running-workout-8-hour-battery-noise-cancelling-headsets', '2018-04-18 07:57:02', '2018-04-17 08:35:09', NULL, 'web', '', '[{"id":2482648416313,"product_id":643531407417,"position":1,"created_at":"2018-04-17T11:36:22+03:00","updated_at":"2018-04-17T11:36:22+03:00","alt":null,"width":1500,"height":1500,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/61RGgXxcOXL._SL1500.jpg?v=1523954182","variant_ids":[]}]', '[{"id":7555740991545,"product_id":643531407417,"title":"Default Title","price":"699.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T11:36:19+03:00","updated_at":"2018-04-18T10:57:02+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7551404802105,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643533209657, 'Cellay Bluetooth Headphones Noise Cancelling Earphones with Microphone In-Ear Headsets', '<span><span>Бездротові стереонавушники з мікрофоном Cellay Bluetooth Headphones Noise Cancelling Earphones</span></span><span> призначені для роботи із сумісними з ними пристроями (ПК, ноутбуками, мобільними пристроями та т. ін.) З передаванням даних через протокол Bluetooth.</span><span id="copyinfo"><br></span><br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'accessories', '2018-04-17 08:38:39', 'cellay-bluetooth-headphones-noise-cancelling-earphones-with-microphone-in-ear-headsets', '2018-04-18 07:58:44', '2018-04-17 08:37:26', NULL, 'web', '', '[{"id":2482659524665,"product_id":643533209657,"position":1,"created_at":"2018-04-17T11:38:41+03:00","updated_at":"2018-04-17T11:38:41+03:00","alt":null,"width":1200,"height":1200,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/61INeGdfW6L._SL1200.jpg?v=1523954321","variant_ids":[]}]', '[{"id":7555756064825,"product_id":643533209657,"title":"Default Title","price":"0.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T11:38:39+03:00","updated_at":"2018-04-17T11:38:39+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7551420006457,"old_inventory_quantity":1,"requires_shipping":true}]'),
(643534127161, 'Merdumia Wireless Bluetooth Headphones, Noise Cancelling Sport Headset with Mic and Secure Ear Hooks', '<ul class="a-unordered-list a-vertical a-spacing-none">\n<li><span></span></li>\n</ul>\nЯким би видом спорту ви не займалися, вас завжди будуть супроводжувати гнучкі та стійкі до вологи бездротові стереонавушники Merdumia Wireless Bluetooth Headphones Завдяки високій якості звучання ви чітко чуєте музику, а дизайн, розроблений з урахуванням вимог безпеки, дає змогу чути навколишні звуки й бути помітним у темряві. <span id="copyinfo"><br></span>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'Computer-shop-today', 'accessories', '2018-04-17 08:40:04', 'merdumia-wireless-bluetooth-headphones-noise-cancelling-sport-headset-with-mic-and-secure-ear-hooks', '2018-04-18 08:10:01', '2018-04-17 08:38:49', NULL, 'web', '', '[{"id":2482666471481,"product_id":643534127161,"position":1,"created_at":"2018-04-17T11:40:06+03:00","updated_at":"2018-04-17T11:40:06+03:00","alt":null,"width":1500,"height":1500,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/61yCEoMZIlL._SL1500.jpg?v=1523954406","variant_ids":[]}]', '[{"id":7555763241017,"product_id":643534127161,"title":"Default Title","price":"699.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T11:40:04+03:00","updated_at":"2018-04-18T11:10:01+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7551427248185,"old_inventory_quantity":1,"requires_shipping":true}]'),
(644059955257, 'HP - ENVY x360 2-in-1 15.6" Touch-Screen Laptop - Intel Core i7 - 16GB Memory - 1TB Hard Drive - Natural Silver', 'Спрощення завдань за допомогою цього 15,6-дюймового ноутбука трасформера HP ENVY. Його сенсорний екран Full HD дає змогу керувати інтуїтивно зрозумілим інтерфейсом Windows 10, а процесор Intel Core i7 і 16 Гб оперативної пам''яті забезпечують плавність роботи програм. Цей ноутбук HP ENVY має жорсткий диск 1TB для зберігання фотографій, відео та документів.', 'Computer-shop-today', 'laptop', '2018-04-17 10:57:37', 'hp-envy-x360-2-in-1-15-6-touch-screen-laptop-intel-core-i7-16gb-memory-1tb-hard-drive-natural-silver', '2018-04-18 08:05:20', '2018-04-17 10:55:40', NULL, 'web', '', '[{"id":2485418491961,"product_id":644059955257,"position":1,"created_at":"2018-04-17T13:57:45+03:00","updated_at":"2018-04-17T13:57:45+03:00","alt":null,"width":1000,"height":624,"src":"https:\\/\\/cdn.shopify.com\\/s\\/files\\/1\\/0023\\/3530\\/9881\\/products\\/6082000ld.jpg?v=1523962665","variant_ids":[]}]', '[{"id":7558133055545,"product_id":644059955257,"title":"Default Title","price":"32999.00","sku":"","position":1,"inventory_policy":"deny","compare_at_price":null,"fulfillment_service":"manual","inventory_management":null,"option1":"Default Title","option2":null,"option3":null,"created_at":"2018-04-17T13:57:37+03:00","updated_at":"2018-04-18T11:05:20+03:00","taxable":true,"barcode":"","grams":0,"image_id":null,"inventory_quantity":1,"weight":0,"weight_unit":"kg","inventory_item_id":7553831370809,"old_inventory_quantity":1,"requires_shipping":true}]');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_product_images`
--

CREATE TABLE IF NOT EXISTS `tbl_product_images` (
  `id` bigint(13) NOT NULL,
  `product_id` bigint(13) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `width` int(5) NOT NULL,
  `height` int(5) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_product_images`
--

INSERT INTO `tbl_product_images` (`id`, `product_id`, `position`, `created_at`, `alt`, `width`, `height`, `src`) VALUES
(2467799564345, 640649134137, 1, '2018-04-16 19:07:54', NULL, 550, 550, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/4929905_sd.jpg?v=1523905674'),
(2478968569913, 642796519481, 1, '2018-04-17 05:36:47', NULL, 550, 423, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6061800_rd.jpg?v=1523943407'),
(2480548970553, 643124985913, 1, '2018-04-17 06:59:49', NULL, 373, 640, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/4943611_sd.jpg?v=1523948389'),
(2480604774457, 643134750777, 1, '2018-04-17 07:02:12', NULL, 522, 640, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/5822948_sd.jpg?v=1523948532'),
(2480649601081, 643143335993, 1, '2018-04-17 07:03:46', NULL, 1000, 1000, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/5848569_sd.jpg?v=1523948626'),
(2480958373945, 643210674233, 1, '2018-04-17 07:15:13', NULL, 870, 1374, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/71N5hSP49AL._SL1374.jpg?v=1523949313'),
(2480978657337, 643215163449, 1, '2018-04-17 07:16:05', NULL, 734, 1500, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/81qqBAKRhTL._SL1500.jpg?v=1523949365'),
(2481023516729, 643222863929, 1, '2018-04-17 07:17:55', NULL, 672, 1360, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61YvH1PEe_L._SL1360.jpg?v=1523949475'),
(2481087873081, 643234857017, 1, '2018-04-17 07:20:24', NULL, 752, 1500, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/71dFiZPmXxL._SL1500.jpg?v=1523949624'),
(2481114710073, 643239968825, 1, '2018-04-17 07:21:31', NULL, 1500, 1500, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/91V89Qmb5YL._SL1500.jpg?v=1523949691'),
(2481210720313, 643259072569, 1, '2018-04-17 07:25:25', NULL, 1000, 651, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6090904_sd.jpg?v=1523949925'),
(2482648416313, 643531407417, 1, '2018-04-17 08:36:22', NULL, 1500, 1500, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61RGgXxcOXL._SL1500.jpg?v=1523954182'),
(2482659524665, 643533209657, 1, '2018-04-17 08:38:41', NULL, 1200, 1200, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61INeGdfW6L._SL1200.jpg?v=1523954321'),
(2482666471481, 643534127161, 1, '2018-04-17 08:40:06', NULL, 1500, 1500, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61yCEoMZIlL._SL1500.jpg?v=1523954406'),
(2485418491961, 644059955257, 1, '2018-04-17 10:57:45', NULL, 1000, 624, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6082000ld.jpg?v=1523962665'),
(2549607301177, 640809566265, 1, '2018-04-19 16:52:07', NULL, 700, 420, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/c700x420.jpg?v=1524168079'),
(2568069414969, 642805596217, 1, '2018-04-20 08:12:56', NULL, 451, 640, 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/5201600_sd.jpg?v=1524211976');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_collections`
--
ALTER TABLE `tbl_collections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_collect_image`
--
ALTER TABLE `tbl_collect_image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` bigint(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=644059955258;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
