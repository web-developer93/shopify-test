-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 18 2018 г., 14:52
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
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_collections`
--

INSERT INTO `tbl_collections` (`id`, `title`, `type`) VALUES
(5, 'Аксесуари', 'accessories'),
(6, 'Мобільні телефони', 'phone'),
(7, 'Ноутбуки', 'laptop'),
(8, 'Планшети', 'tablet');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `title`, `image`, `description`, `type`, `price`) VALUES
(18, 'Acer - 15.6" Chromebook - Intel Core i3 - 4GB Memory - 32GB Solid State Drive - Black', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6497029cv11a.jpg?v=1523907932', 'Здійсніть розваги на ходу з цим Chromebook із Acer C9103916, який має Wi-Fi для доступу до фыльмів та шоу, а також 15,6-дюймовий дисплей високої чіткості з технологією ComfyView, що дає вам змогу насолоджуватися відео в більш чіткі якості.', 'laptop', 16399),
(19, 'Acer - 2-in-1 11.6" Touch-Screen Chromebook - Intel Celeron - 4GB Memory - 32GB Solid State Drive - Black', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/4929905_sd.jpg?v=1523905674', 'Chromebook Acer 2-in-1 Насолоджуйтесь потужністю, швидкістю та універсальністю цього Chromebook Acer. Відкрийте 11,6-дюймовий дисплей із сенсорним дисплеєм HD, щоб використовувати його як типовий ноутбук, або як планшет.', 'laptop', 10999),
(20, 'Amazon - Fire - 7" - Tablet - 8GB 7th Generation, 2017 Release - Black', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/5822948_sd.jpg?v=1523948532', '<span>Грайте в ігри, гортайте журнали або фотографуйте з цим планшетом, який пропонує яскравий 7-дюймовий сенсорний екран із поляризаційним фільтром для читання на відкритому повітрі. Вбудовані Wi-Fi та Amazon Underground забезпечують швидку та просту передачу даних та завантаження.</span>', 'tablet', 3199),
(21, 'Apple - iPad (Latest Model) with Wi-Fi - 128GB - Gold', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/5201600_sd.jpg?v=1523943585', 'Створюйте, навчайте, працюйте та грайте, як ніколи раніше. Завдяки захоплюючому 9,7-дюймовому дисплею Multi-Touch Retina, ¹ потужним чіпом A10 Fusion, а тепер підтримує Apple Pencil, ² немає нічого подібного до iPad.', 'tablet', 8399),
(22, 'Apple - Pre-Owned iPad mini - 16GB - Black & Slate', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/5848569_sd.jpg?v=1523948626', 'Перевірте електронну пошту, використовуйте FaceTime зі своїми друзями та стежте за своїми соціальними мережами на цьому iPad Mini з 16ГБ. Ультратонкий дизайн забезпечує зручність обробки, а технологія Apple Touch ID гарантує, що ніхто не буде доступ до вашого пристрою, крім вас. Під''єднайте цей iPad Mini через Wi-Fi, щоб залишатися на зв''язку, де б ви не були.', 'tablet', 5500),
(23, 'Bluetooth Headphones, Otium Best Wireless Sports Earphones w/ Mic IPX7 Waterproof HD Stereo Sweatproof In Ear Earbuds for Gym Running Workout 8 Hour Battery Noise Cancelling Headsets', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61RGgXxcOXL._SL1500.jpg?v=1523954182', '<ul class="a-unordered-list a-vertical a-spacing-none">\n<li><span></span></li>\n</ul>\nВідкрийте для себе заново відчуття свободи з навушниками Otium Best Wireless Sports Earphones . Забудьте про заплутані дроти й без жодних проблем насолоджуйтеся музикою або аудіокнигою, під''єднавши навушники за допомогою інтерфейсу Bluetooth до інших пристроїв, які підтримують цю технологію, на відстані до 10 метрів.<span id="copyinfo"><br></span>', 'accessories', 699),
(24, 'Cellay Bluetooth Headphones Noise Cancelling Earphones with Microphone In-Ear Headsets', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61INeGdfW6L._SL1200.jpg?v=1523954321', '<span><span>Бездротові стереонавушники з мікрофоном Cellay Bluetooth Headphones Noise Cancelling Earphones</span></span><span> призначені для роботи із сумісними з ними пристроями (ПК, ноутбуками, мобільними пристроями та т. ін.) З передаванням даних через протокол Bluetooth.</span><span id="copyinfo"><br></span><br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'accessories', 0),
(25, 'Honor 7X (Blue, 4GB RAM + 32GB memory)', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/91V89Qmb5YL._SL1500.jpg?v=1523949691', 'Збалансований по всіх фронтах апарат середнього класу, який отримав в своє розпорядження широкоформатний дисплей зі співвідношенням сторін 18: 9 і гідну апаратну «начинку». 8-ядерний чіп Kirin 659 з чотирма енергоефективними (1.7 ГГц) і чотирма високопродуктивними ядрами (2.36 ГГц) орудує все, що підвернеться йому під руку, нехай і далеко не завжди на максимальних налаштуваннях графіки.<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'phone', 5999),
(26, 'HP - 15.6" Touch-Screen Laptop - Intel Core i3 - 8GB Memory - 1TB Hard Drive - Jet black, woven texture pattern', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6090904_sd.jpg?v=1523949925', '8 Гб оперативної пам''яті обробляють вимоги інтенсивних програм і ігор, а функція CoolSense автоматично регулює свою температуру, щоб запобігти перегріванню. Вбудований в цей ноутбук HP 1 ТБ жорсткий диск має достатньо місця для зберігання великих файлів.', 'laptop', 399.99),
(27, 'HP - ENVY x360 2-in-1 15.6" Touch-Screen Laptop - Intel Core i7 - 16GB Memory - 1TB Hard Drive - Natural Silver', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6082000ld.jpg?v=1523962665', 'Спрощення завдань за допомогою цього 15,6-дюймового ноутбука трасформера HP ENVY. Його сенсорний екран Full HD дає змогу керувати інтуїтивно зрозумілим інтерфейсом Windows 10, а процесор Intel Core i7 і 16 Гб оперативної пам''яті забезпечують плавність роботи програм. Цей ноутбук HP ENVY має жорсткий диск 1TB для зберігання фотографій, відео та документів.', 'laptop', 32999),
(28, 'Lenovo - IdeaPad 11.6" Laptop - Intel Celeron - 2GB Memory - 32GB eMMC Flash Memory - Mineral Gray', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/6061800_rd.jpg?v=1523943407', 'Ноутбук Lenovo IdeaPad 120S-11IAP: доступ до важливих файлів під час подорожі з цим 11-дюймовим ноутбуком Lenovo IdeaPad. Процесор Intel Celeron і 2 ГБ оперативної пам''яті дозволяють вам працювати за допомогою ефективності списку завдань, а 32 Гб пам''яті eMMC забезпечує простір для архівів особистих файлів. Цей ноутбук Lenovo IdeaPad має восьмигодинну батарею, яка дозволяє вам пройти через робочий день.', 'laptop', 5199),
(29, 'Merdumia Wireless Bluetooth Headphones, Noise Cancelling Sport Headset with Mic and Secure Ear Hooks', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61yCEoMZIlL._SL1500.jpg?v=1523954406', '<ul class="a-unordered-list a-vertical a-spacing-none">\n<li><span></span></li>\n</ul>\nЯким би видом спорту ви не займалися, вас завжди будуть супроводжувати гнучкі та стійкі до вологи бездротові стереонавушники Merdumia Wireless Bluetooth Headphones Завдяки високій якості звучання ви чітко чуєте музику, а дизайн, розроблений з урахуванням вимог безпеки, дає змогу чути навколишні звуки й бути помітним у темряві. <span id="copyinfo"><br></span>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'accessories', 699),
(30, 'Moto G5S Plus (Lunar Grey, 64GB)', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/71N5hSP49AL._SL1374.jpg?v=1523949313', '<span>Новий смартфон Moto G5 захищений високотехнологічним алюмінієвим покриттям, яке пройшло алмазне гравіювання й дробоструминне оброблення для отримання ідеальної поверхні.</span><span id="copyinfo"><br></span>\n<p><b>Заряд на цілий день роботи.<span> </span></b><br>Завдяки акумулятору ємністю 2800 мА·год, якого досить на цілий день автономної роботи, ти можеш не турбуватися про заряджання з раннього ранку до пізнього вечора.*</p>\n<p><b>Швидкісне заряджання</b><br>Смартфон Moto G5 сумісний із зарядним пристроєм 10 Вт для швидкого заряджання, яке забезпечує годинник автономної роботи всього за кілька хвилин заряджання акумулятора.*<span><br></span></p>\n<p><b>Не проґав момент</b><br>Ти пишатимешся знятими світлинами. Фазовий автофокус забезпечує швидке фокусування для чіткіших зображень. Він вбудований до камери 13 МП смартфона Moto G5.</p>\n<p><b>Прекрасні селфі</b><br>Перемикнись на фронтальну камеру 5 МП із ширококутним об''єктивом, щоб на знімку помістилися всі твої друзі. Вдосконалюй свої селфі завдяки ручним і автоматичним налаштуванням режиму поліпшення якості світлин.</p>\n<p><b>Просто знімай</b><br>Для фотографів-аматорів та професіоналів камера смартфона Moto G5 має різні режими знімання (Best Shot, «професійний» тощо), що дають змогу із легкістю робити чудові знімки. Додай індивідуальні штрихи світлин з програмою Google Photos.**<span id="copyinfo"><br>Докладніше:<span> </span><a href="https://rozetka.com.ua/ua/motorola_pa610107ua/p16808462/">https://rozetka.com.ua/ua/motorola_pa610107ua/p16808462/</a></span></p>\n<p><span id="copyinfo"> </span></p>\n<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'phone', 129.99),
(31, 'OnePlus 5T (Midnight Black 6GB RAM + 64GB memory)', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/81qqBAKRhTL._SL1500.jpg?v=1523949365', 'Ключовою превагою  моделі слід назвати знакову співвідношення вартості та функціональності.Щвидкодія смартфона засновано на топвому Qualcomm Snapdragon 835 в складі 8-ядерного процесора, відеочіпа Adreno 540, 6 ГБ оперативної пам''яті та 64ГБ вбудованої.<br><br>Цей оснащення керується операційною системою Android 7.1.1 Nugat, додаткова користувачем інтерфейсом OxygenOS. Зовнішність смартфона обумовлена ​​ефектним металевим корпусом, що містить  літий-полімерний акумулятор ємністю 3300 мА * ч і 5,5-дюймовим AMOLED-дисплеєм з роздільною здатністю 1920х1080 точок.<br><br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'phone', 14599),
(32, 'OPPO F7 (Red, 64GB) with offers', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/61YvH1PEe_L._SL1360.jpg?v=1523949475', 'Oppo F7 оснащений 6,23-дюймовим дисплеєм з роздільною здатністю Full HD + (2280 x 1080 пікселів) з співвідношенням сторін 19: 9, основною камерою на 16 Мп, сканером відпечатків пальців на задній панелі.<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'phone', 10999),
(33, 'Redmi Y1 Lite (Grey, 16GB)', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/71dFiZPmXxL._SL1500.jpg?v=1523949624', 'Xiaomi Redmi Y1 отримав дисплей діагональю 5,5 дюйма з роздільною здатністю 1280 х 720 пікселів, закритий склом Gorilla Glass. Qualcomm Snapdragon 435 виступає в ролі однокристальної системи, також смартфон отримав 3 або 4 ГБ ОЗУ і 32 або 64 Гб флеш-пам''яті з можливістю встановлення карт пам''яті microSD.<br>\n<ul class="a-unordered-list a-vertical a-spacing-none"></ul>', 'phone', 3299),
(34, 'Samsung - Galaxy Tab A 7" 8GB - Black', 'https://cdn.shopify.com/s/files/1/0023/3530/9881/products/4943611_sd.jpg?v=1523948389', 'Samsung Galaxy Tab A: використовуйте планшет Samsung Galaxy Tab , щоб переглядати фільми, грати в ігри або отримувати роботу, коли ви знаходитесь в  дорозі. Його багатокористувацький режим зберігає вашу інформацію безпечно за допомогою окремих логінів, а режим енергозбереження забезпечує максимальний термін служби акумулятора. Планшет Samsung Galaxy Tab A оснащений фронтальною та задніми камерами, які дозволяють вам отримувати селфі або захоплювати відео.', 'tablet', 6299);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_collections`
--
ALTER TABLE `tbl_collections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_collections`
--
ALTER TABLE `tbl_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
