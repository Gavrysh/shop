-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: main
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `biography` mediumtext,
  `img` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Роберт','М. Зоннтаг','1978-12-07','В школьные годы Мартин Шойбле начал сотрудничать с прессой на бесплатной основе, после выпуска некоторое время работал новостным редактором немецких газет[2]. Окончил Институт политологии имени Отто Зура[de] при Свободном университете Берлина по специальности «политология». Во время учебы стажировался в Израиле и Палестине. Опубликовал два исследования о беженцах («Убежища, во имя Господне!») и неонацистских настроениях в Германии («Изненавидеть») самиздатом. В 2007 году в соавторстве с израильским экономистом и дипломатом, Президентом Всемирного объединения уцелевших в Освенциме Ноахом Флюгом[en] вышла его первая книга в крупном издательстве — «История израильтян и палестинцев», в которой описывается ближневосточный конфликт глазами очевидцев.\nВ 2011 году защитил кандидатскую диссертацию на тему о полевых исследованиях джихадизма. Собранные материалы легли в основу его второй документальной работы — «Джихад: террористами не рождаются», где Шойбле анализирует биографии двоих современных подростков, выбравших путь джихада (немца и палестинца). Диссертация также вышла отдельным изданием. Впоследствии Шойбле опубликовал еще две научно-популярных книги на тему Ближнего Востока: «Ничейная территория. Пешком по Израилю и Палестине» (2013) и путеводитель по зоне ближневосточного конфликта в известной серии издательства «Пипер» «Инструкция по применению» (2016), некоторые тома которой переведены в том числе и на русский язык.\nПод псевдонимом Роберт М. Зоннтаг опубликовал роман-антиутопию для подростков «Сканеры» (2013), в которой описывает цифровое общество 2030-х годов. В настоящее время по заказу издательства работает над продолжением романа (созданная в промежутке сайд-стори не была опубликована).\nПо приглашению издательства «КомпасГид» Мартин Шойбле дважды был гостем крупных московских книжных выставок-ярмарок в 2012 и 2013 годах. В начале 2015 года вновь прибыл в Россию по приглашению Немецкого культурного центра им. Гете в Москве и выступил с чтениями в российской столице, а также в Перми и Уфе.\nВ апреле 2016 года Институт им. Гете в рамках проекта «Литературные маяки» присудил автору творческую стипендию с пребыванием в резиденции в Москве продолжительностью один месяц.\nВ 2017 году опубликовал новый роман «Конченое государство», посвященный усилению националистических тенденций в немецкой политике. Часть действия происходит в африканских странах.\nВ 2018 году намерен посетить Украину в связи с выходом романа «Сканеры» в переводе на украинский','zontag.jpg',NULL,NULL),(2,'Сергій','Зінченко','1976-05-20','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga ipsum repellendus veniam! Corporis dolore doloremque eius id magnam quidem voluptatibus? Alias at atque autem dolor excepturi exercitationem incidunt ipsum magnam, maiores molestias nemo numquam porro provident quos repellendus saepe tenetur ut vel velit veritatis! Animi, ea earum eveniet expedita fugit illum minus nihil nostrum optio porro quae quia reiciendis tempore? Atque doloremque illum libero nam! Commodi earum eum ex laborum pariatur rem sapiente tempore ullam. Amet consequatur deleniti dicta, eius facilis nam saepe velit voluptatum. Accusamus aliquid at cupiditate dignissimos illum magnam obcaecati officia quaerat quidem sint sit, tempora voluptatem!','zinchenko.jpg',NULL,NULL),(3,'Полина','Кулакова','1976-05-20','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga ipsum repellendus veniam! Corporis dolore doloremque eius id magnam quidem voluptatibus? Alias at atque autem dolor excepturi exercitationem incidunt ipsum magnam, maiores molestias nemo numquam porro provident quos repellendus saepe tenetur ut vel velit veritatis! Animi, ea earum eveniet expedita fugit illum minus nihil nostrum optio porro quae quia reiciendis tempore? Atque doloremque illum libero nam! Commodi earum eum ex laborum pariatur rem sapiente tempore ullam. Amet consequatur deleniti dicta, eius facilis nam saepe velit voluptatum. Accusamus aliquid at cupiditate dignissimos illum magnam obcaecati officia quaerat quidem sint sit, tempora voluptatem!','kulakova.jpg',NULL,NULL),(4,'Ірина','Баковецька-Рачковська','1985-10-17','Закінчила Національний університет «Острозька академія» за спеціальністю «Філософія. Релігієзнавство», згодом здобула спеціальність «Хорове диригування» в Інституті мистецтв РДГУ та магістра журналістики в МЕГУ.\nОбіймає посаду голови Рівненської організації Національної спілки письменників України, директора \"Письменницької робітні \"Оповідач\", головного редактором телерадіокомпанії «Березне» (Рівненська область).\nАвтор поетичних збірок «Фундаменти святинь» (2008), «Римовані весни» (2012), «Перехрестя роси» (2013), «Із ребра хаосу» (2015), \"Write tomboy write! або Якби Бенксі жив у місті Ра\". У 2013 результатом 6-річної праці над архівними матеріалами, зацікавлених контактів із земляками вийшла 100-сторінкова книга, культурно-краєзнавче дослідження «Релігійне життя надслучанського краю».[1]\nЧлен Національної спілки журналістів України та Національної спілки письменників України, лауреат літературної премії імені Михайла Дубова (2012), та літературної премії імені Валер\"яна Поліщука (2014), учасниця військово-історичних реконструкцій.\nЗасновниця власного поетичного стилю етно-вірша. ','bakovecka.jpg',NULL,NULL),(5,'Софі','Перино','1976-05-20','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga ipsum repellendus veniam! Corporis dolore doloremque eius id magnam quidem voluptatibus? Alias at atque autem dolor excepturi exercitationem incidunt ipsum magnam, maiores molestias nemo numquam porro provident quos repellendus saepe tenetur ut vel velit veritatis! Animi, ea earum eveniet expedita fugit illum minus nihil nostrum optio porro quae quia reiciendis tempore? Atque doloremque illum libero nam! Commodi earum eum ex laborum pariatur rem sapiente tempore ullam. Amet consequatur deleniti dicta, eius facilis nam saepe velit voluptatum. Accusamus aliquid at cupiditate dignissimos illum magnam obcaecati officia quaerat quidem sint sit, tempora voluptatem!','perino.jpg',NULL,NULL),(6,'Шолом','Алейхем','1859-03-02','Народився в місті Переяславі на Полтавщині (тепер Переяслав-Хмельницький, Київська область) у родині дрібного крамаря. Дитячі роки минули в невеличкому містечку Воронькові Полтавської губернії (тепер село в Бориспільському районі Київської області). Навчався в Хедері — єврейській початковій релігійній школі. Згодом під впливом єврейської просвітницької літератури займався і загальною освітою, навчався у повітовій школі.\nЗ 1876 року працював домашнім вчителем у єврейського магната Елімелеха Лоєва. Протягом 1877—1880 років в селі Софійці працював вихователем дочки орендаря земель Лоєва Ольги[3].\nУ 1880—1882 роках Шолом-Алейхем працював громадським рабином у Лубнах. Після одруження з донькою Лоєва у 1883—1887 роках жив і працював у Білій Церкві.\nУ 1887—1890, 1893—1905 роках жив у Києві (він називав його у своїх творах Єгупцем), де займався торговельними справами. Після єврейських погромів у Києві в жовтні 1905 року переїхав до Львова, Австро-Угорщина.\nШолом-Алейхем багато подорожував, відвідав Женеву, Лондон, Варшаву, Вільно, Берлін та інші міста світу, де виступав перед своїми читачами. У 1907—1914 роках жив в Італії та Швейцарії.\nУ 1915 році переїхав до Нью-Йорка, де і помер.','sholom.jpg',NULL,NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `publication` varchar(8) DEFAULT NULL,
  `pages` smallint(6) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Сканери','Світ у 2035 році – це світ без друкованих книг, газет і журналів. Усе відскановано й оцифровано. Кожен має доступ до світової цифрової бібліотеки. У будь-який час! Безкоштовно! І це завдяки мобрілю – універсальному мережевому пристрою у вигляді окулярів. Роб працює сканером у величезному концерні Ultranetz, у відділі Scan AG. Зі своїм другом Джоджо він відшуковує, сканує й оцифровує останні примірники друкованих видань, аж поки одного дня не наштовхується на Книжкову гільдію, підпільну організацію, учасниками якої є колишні письменники, книгарі, перекладачі, видавці та бібліотекарі. Після великого е-вибуху на Ultranetz та подальших перипетій концерн визнає Роба ворогом номер один — супертерористом. На що ще здатен концерн у боротьбі за абсолютну владу, контроль і монополію…\nЦей роман також про дружбу в часи глобального впливу цифрових технологій. Він є промовистим коментарем до наших днів.','2018',192,93.00,'scan.jpg',NULL,NULL),(2,'Отаман Холодного Яру','Історична повість про одну зі сторінок повстання проти польського поневолення під назвою «Коліївщина». У книзі описані події визвольного руху на території Середнього Подніпров’я, яким керував один зі сподвижників Максима Залізняка – Семен Неживий.','2015',160,68.00,'otaman.jpg',NULL,NULL),(3,'Корсо','Для всіх Єва завжди була милою, доброзичливою дівчиною. Такою вона видавалася й собі. Аж поки одного дня в її життя не ввірвався таємничий пес-знайда — і все пішло шкереберть: кохання, робота, сім’я. У шаленому вирі подій несподівано зникає подруга героїні. Поліція і медіа говорять про серійного вбивцю. Розпочинається розслідування — і Єва опиняється в епіцентрі жаху. Чи вистачить їй мужності й доброти, щоб протистояти злу, яке невідворотно наближається?','2017',186,54.00,'korso.jpg',NULL,NULL),(4,'Пластилін','«Пластилін» — це кардинально нове слово в сучасній українській літературі. Головний герой роману — журналіст на прізвисько Кекс — береться за розслідування вбивства одинадцятьох своїх колег, заразом поринаючи в глибини власної душі й ув’язаючи в пластиліновій масі людської буденності. Що за істота наважилася скоїти це жахіття? Яким міг би бути мотив? Чи є це ритуальною витівкою релігійних фанатиків або кровожерною помстою зневіреної коханки? Чим далі заходить розслідування, тим краще для читача відкривається світ головного персонажа з його спостереженнями та внутрішніми переживаннями. Кексові доведеться пройти важкий шлях, щоб розплутати справу, бо, тільки знайшовши вбивцю, він зуміє пізнати себе.','2018',256,249.00,'plast.jpg',NULL,NULL),(5,'Дочка Медічі','\"Дочка Медічі\" Софі Перино — це по-справжньому потужна історична драма. Епічна оповідь, присвячена таємничому, сластолюбному та підступному дому Валуа, ведеться від імені принцеси Маргарити — розумної та неоднозначної особистості. Письменниця блискуче показує, як на тлі релігійних воєн і битв на любовному фронті ця непересічна жінка долає найжорстокіші випробування і знаходить у собі сили вирішити власну долю і здобути те, що належить їй за правом народження.','2018',544,193.00,'medichi.jpg',NULL,NULL),(6,'Пісня пісень','Роман Шолом-Алейхема (1859—1916) “Пісня пісень” — один із найпоетичніших в єврейській літературі. Твір написано прозою','2018',191,94.00,'song.jpg',NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_authors`
--

DROP TABLE IF EXISTS `books_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_id` int(11) DEFAULT NULL,
  `authors_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_authors`
--

LOCK TABLES `books_authors` WRITE;
/*!40000 ALTER TABLE `books_authors` DISABLE KEYS */;
INSERT INTO `books_authors` VALUES (1,1,1,NULL,NULL),(2,2,2,NULL,NULL),(3,3,3,NULL,NULL),(4,4,4,NULL,NULL),(5,5,5,NULL,NULL),(6,6,6,NULL,NULL);
/*!40000 ALTER TABLE `books_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'w@wegan.ua','w@wegan.ua','DIvPOXvPVU036',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-06 10:55:31
