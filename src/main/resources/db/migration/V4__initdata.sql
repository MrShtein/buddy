SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.SET_CONFIG('search_path', '', FALSE);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: animal_type; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.animal_type
VALUES (1, 'Собака', 'Собаки');
INSERT INTO public.animal_type
VALUES (2, 'Кошка', 'Кошки');


--
-- Data for Name: breed; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.breed
VALUES (1, 'Австралийская короткохвостая пастушья собака', 1);
INSERT INTO public.breed
VALUES (2, 'Австралийская овчарка', 1);
INSERT INTO public.breed
VALUES (3, 'Австралийская пастушья собака', 1);
INSERT INTO public.breed
VALUES (4, 'Австралийский келпи', 1);
INSERT INTO public.breed
VALUES (5, 'Австралийский терьер', 1);
INSERT INTO public.breed
VALUES (6, 'Австралийский шелковистый терьер', 1);
INSERT INTO public.breed
VALUES (7, 'Австрийская гончая', 1);
INSERT INTO public.breed
VALUES (8, 'Австрийский брудастый бракк', 1);
INSERT INTO public.breed
VALUES (9, 'Австрийский пинчер', 1);
INSERT INTO public.breed
VALUES (10, 'Азавак', 1);
INSERT INTO public.breed
VALUES (11, 'Азорская пастушья собака', 1);
INSERT INTO public.breed
VALUES (12, 'Аиди', 1);
INSERT INTO public.breed
VALUES (13, 'Акита-ину', 1);
INSERT INTO public.breed
VALUES (14, 'Алан', 1);
INSERT INTO public.breed
VALUES (15, 'Алано', 1);
INSERT INTO public.breed
VALUES (16, 'Альпийская таксообразная гончая', 1);
INSERT INTO public.breed
VALUES (17, 'Аляскинский кли-кай', 1);
INSERT INTO public.breed
VALUES (18, 'Аляскинский маламут', 1);
INSERT INTO public.breed
VALUES (19, 'Американская акита', 1);
INSERT INTO public.breed
VALUES (20, 'Американская эскимосская собака', 1);
INSERT INTO public.breed
VALUES (21, 'Американский бандог', 1);
INSERT INTO public.breed
VALUES (22, 'Американский бульдог', 1);
INSERT INTO public.breed
VALUES (23, 'Американский водяной спаниель', 1);
INSERT INTO public.breed
VALUES (24, 'Американский голый терьер', 1);
INSERT INTO public.breed
VALUES (25, 'Американский кокер-спаниель', 1);
INSERT INTO public.breed
VALUES (26, 'Американский мастиф', 1);
INSERT INTO public.breed
VALUES (27, 'Американский питбультерьер', 1);
INSERT INTO public.breed
VALUES (28, 'Американский стаффордширский терьер', 1);
INSERT INTO public.breed
VALUES (29, 'Американский фоксхаунд', 1);
INSERT INTO public.breed
VALUES (30, 'Анатолийская овчарка', 1);
INSERT INTO public.breed
VALUES (31, 'Английская енотовая гончая', 1);
INSERT INTO public.breed
VALUES (32, 'Английская овчарка', 1);
INSERT INTO public.breed
VALUES (33, 'Английский бульдог', 1);
INSERT INTO public.breed
VALUES (34, 'Английский водяной спаниель', 1);
INSERT INTO public.breed
VALUES (35, 'Английский кокер-спаниель', 1);
INSERT INTO public.breed
VALUES (36, 'Английский мастиф', 1);
INSERT INTO public.breed
VALUES (37, 'Английский сеттер', 1);
INSERT INTO public.breed
VALUES (38, 'Английский спрингер-спаниель', 1);
INSERT INTO public.breed
VALUES (39, 'Английский той-терьер', 1);
INSERT INTO public.breed
VALUES (40, 'Английский фоксхаунд', 1);
INSERT INTO public.breed
VALUES (41, 'Англо-французская малая гончая', 1);
INSERT INTO public.breed
VALUES (42, 'Аппенцеллер зенненхунд', 1);
INSERT INTO public.breed
VALUES (43, 'Аргентинский дог', 1);
INSERT INTO public.breed
VALUES (44, 'Арденнский бувье', 1);
INSERT INTO public.breed
VALUES (45, 'Артуазская гончая', 1);
INSERT INTO public.breed
VALUES (46, 'Афганская борзая', 1);
INSERT INTO public.breed
VALUES (47, 'Аффенпинчер', 1);
INSERT INTO public.breed
VALUES (48, 'Баварская горная гончая', 1);
INSERT INTO public.breed
VALUES (49, 'Бакхмуль', 1);
INSERT INTO public.breed
VALUES (50, 'Барбет', 1);
INSERT INTO public.breed
VALUES (51, 'Басенджи', 1);
INSERT INTO public.breed
VALUES (52, 'Баскская овчарка', 1);
INSERT INTO public.breed
VALUES (53, 'Бассет-хаунд', 1);
INSERT INTO public.breed
VALUES (54, 'Бедлингтон-терьер', 1);
INSERT INTO public.breed
VALUES (55, 'Белая швейцарская овчарка', 1);
INSERT INTO public.breed
VALUES (56, 'Бельгийская овчарка', 1);
INSERT INTO public.breed
VALUES (57, 'Бергамская овчарка', 1);
INSERT INTO public.breed
VALUES (58, 'Бернский зенненхунд', 1);
INSERT INTO public.breed
VALUES (59, 'Бивер-йоркширский терьер', 1);
INSERT INTO public.breed
VALUES (60, 'Бигль', 1);
INSERT INTO public.breed
VALUES (61, 'Бишон фризе', 1);
INSERT INTO public.breed
VALUES (62, 'Бладхаунд', 1);
INSERT INTO public.breed
VALUES (63, 'Блю-лейси', 1);
INSERT INTO public.breed
VALUES (64, 'Бобтейл', 1);
INSERT INTO public.breed
VALUES (65, 'Болгарский барак', 1);
INSERT INTO public.breed
VALUES (66, 'Болоньез', 1);
INSERT INTO public.breed
VALUES (67, 'Большой вандейский гриффон', 1);
INSERT INTO public.breed
VALUES (68, 'Большой швейцарский зенненхунд', 1);
INSERT INTO public.breed
VALUES (69, 'Бордер-колли', 1);
INSERT INTO public.breed
VALUES (70, 'Бордер-терьер', 1);
INSERT INTO public.breed
VALUES (71, 'Бордоский дог', 1);
INSERT INTO public.breed
VALUES (72, 'Бородатый колли', 1);
INSERT INTO public.breed
VALUES (73, 'Босерон', 1);
INSERT INTO public.breed
VALUES (74, 'Бостон-терьер', 1);
INSERT INTO public.breed
VALUES (75, 'Бразильский терьер', 1);
INSERT INTO public.breed
VALUES (76, 'Бразильский фила', 1);
INSERT INTO public.breed
VALUES (77, 'Бриар', 1);
INSERT INTO public.breed
VALUES (78, 'Брогольмер', 1);
INSERT INTO public.breed
VALUES (79, 'Брюссельский (бельгийский) гриффон', 1);
INSERT INTO public.breed
VALUES (80, 'Буковинская овчарка', 1);
INSERT INTO public.breed
VALUES (81, 'Бульдог кампейро', 1);
INSERT INTO public.breed
VALUES (82, 'Бульдог Катахулы', 1);
INSERT INTO public.breed
VALUES (83, 'Бульмастиф', 1);
INSERT INTO public.breed
VALUES (84, 'Бультерьер', 1);
INSERT INTO public.breed
VALUES (85, 'Бурбуль', 1);
INSERT INTO public.breed
VALUES (86, 'Бурят-монгольский волкодав', 1);
INSERT INTO public.breed
VALUES (87, 'Вандейский бассет-гриффон', 1);
INSERT INTO public.breed
VALUES (88, 'Веймаранер', 1);
INSERT INTO public.breed
VALUES (89, 'Вельш-корги', 1);
INSERT INTO public.breed
VALUES (90, 'Вельш-спрингер-спаниель', 1);
INSERT INTO public.breed
VALUES (91, 'Вельштерьер', 1);
INSERT INTO public.breed
VALUES (92, 'Венгерская выжла', 1);
INSERT INTO public.breed
VALUES (93, 'Вест-хайленд-уайт-терьер', 1);
INSERT INTO public.breed
VALUES (94, 'Веттерхун', 1);
INSERT INTO public.breed
VALUES (95, 'Волчья собака Сарлоса', 1);
INSERT INTO public.breed
VALUES (96, 'Вольпино итальяно', 1);
INSERT INTO public.breed
VALUES (97, 'Восточноевропейская овчарка', 1);
INSERT INTO public.breed
VALUES (98, 'Восточносибирская лайка', 1);
INSERT INTO public.breed
VALUES (99, 'Гаванский бишон', 1);
INSERT INTO public.breed
VALUES (100, 'Гампр', 1);
INSERT INTO public.breed
VALUES (101, 'Гладкошёрстный фокстерьер', 1);
INSERT INTO public.breed
VALUES (102, 'Глен оф Имаал терьер', 1);
INSERT INTO public.breed
VALUES (103, 'Голландская овчарка', 1);
INSERT INTO public.breed
VALUES (104, 'Голландский смоусхонд', 1);
INSERT INTO public.breed
VALUES (105, 'Голубой гасконский бассет', 1);
INSERT INTO public.breed
VALUES (106, 'Гончая Гамильтона', 1);
INSERT INTO public.breed
VALUES (107, 'Грейхаунд', 1);
INSERT INTO public.breed
VALUES (108, 'Гренландская собака', 1);
INSERT INTO public.breed
VALUES (109, 'Греческая овчарка', 1);
INSERT INTO public.breed
VALUES (110, 'Грюнендаль', 1);
INSERT INTO public.breed
VALUES (111, 'Далматин', 1);
INSERT INTO public.breed
VALUES (112, 'Датско-шведская фермерская собака', 1);
INSERT INTO public.breed
VALUES (113, 'Денди-динмонт-терьер', 1);
INSERT INTO public.breed
VALUES (114, 'Джек-рассел-терьер', 1);
INSERT INTO public.breed
VALUES (115, 'Дирхаунд', 1);
INSERT INTO public.breed
VALUES (116, 'Длинношёрстный колли', 1);
INSERT INTO public.breed
VALUES (117, 'Доберман', 1);
INSERT INTO public.breed
VALUES (118, 'Дратхаар', 1);
INSERT INTO public.breed
VALUES (119, 'Древер', 1);
INSERT INTO public.breed
VALUES (120, 'Евразиер', 1);
INSERT INTO public.breed
VALUES (121, 'Жесткошёрстный фокстерьер', 1);
INSERT INTO public.breed
VALUES (122, 'Западносибирская лайка', 1);
INSERT INTO public.breed
VALUES (123, 'Золотистый ретривер', 1);
INSERT INTO public.breed
VALUES (124, 'Ирландский водяной спаниель', 1);
INSERT INTO public.breed
VALUES (125, 'Ирландский волкодав', 1);
INSERT INTO public.breed
VALUES (126, 'Ирландский красный сеттер', 1);
INSERT INTO public.breed
VALUES (127, 'Ирландский мягкошёрстный пшеничный терьер', 1);
INSERT INTO public.breed
VALUES (128, 'Ирландский терьер', 1);
INSERT INTO public.breed
VALUES (129, 'Исландская собака', 1);
INSERT INTO public.breed
VALUES (130, 'Испанская водяная собака', 1);
INSERT INTO public.breed
VALUES (131, 'Испанский гальго', 1);
INSERT INTO public.breed
VALUES (132, 'Испанский мастиф', 1);
INSERT INTO public.breed
VALUES (133, 'Итальянский бракк', 1);
INSERT INTO public.breed
VALUES (134, 'Итальянский спиноне', 1);
INSERT INTO public.breed
VALUES (135, 'Йоркширский терьер', 1);
INSERT INTO public.breed
VALUES (136, 'Ка де Бо', 1);
INSERT INTO public.breed
VALUES (137, 'Кавалер кинг чарльз спаниель', 1);
INSERT INTO public.breed
VALUES (138, 'Кавказская овчарка', 1);
INSERT INTO public.breed
VALUES (139, 'Каи', 1);
INSERT INTO public.breed
VALUES (140, 'Кай-кен', 1);
INSERT INTO public.breed
VALUES (141, 'Канарский дог', 1);
INSERT INTO public.breed
VALUES (142, 'Кане-корсо', 1);
INSERT INTO public.breed
VALUES (143, 'Као де кастро-лаборейро', 1);
INSERT INTO public.breed
VALUES (144, 'Каракачанская собака', 1);
INSERT INTO public.breed
VALUES (145, 'Карело-финская лайка', 1);
INSERT INTO public.breed
VALUES (146, 'Карельская лайка', 1);
INSERT INTO public.breed
VALUES (147, 'Карельская медвежья собака', 1);
INSERT INTO public.breed
VALUES (148, 'Карликовый пинчер', 1);
INSERT INTO public.breed
VALUES (149, 'Каталонская овчарка', 1);
INSERT INTO public.breed
VALUES (150, 'Керн-терьер', 1);
INSERT INTO public.breed
VALUES (151, 'Керри-блю-терьер', 1);
INSERT INTO public.breed
VALUES (152, 'Кинг чарльз спаниель', 1);
INSERT INTO public.breed
VALUES (153, 'Китайская хохлатая собака', 1);
INSERT INTO public.breed
VALUES (154, 'Кламбер-спаниель', 1);
INSERT INTO public.breed
VALUES (155, 'Коикерхондье', 1);
INSERT INTO public.breed
VALUES (156, 'Комондор', 1);
INSERT INTO public.breed
VALUES (157, 'Континентальный бульдог', 1);
INSERT INTO public.breed
VALUES (158, 'Континентальный той-спаниель', 1);
INSERT INTO public.breed
VALUES (159, 'Корейский чиндо', 1);
INSERT INTO public.breed
VALUES (160, 'Короткошёрстный колли', 1);
INSERT INTO public.breed
VALUES (161, 'Котон де Тулеар', 1);
INSERT INTO public.breed
VALUES (162, 'Крашская овчарка', 1);
INSERT INTO public.breed
VALUES (163, 'Кромфорлендер', 1);
INSERT INTO public.breed
VALUES (164, 'Ксолоитцкуинтли', 1);
INSERT INTO public.breed
VALUES (165, 'Кубинский дог', 1);
INSERT INTO public.breed
VALUES (166, 'Кувас', 1);
INSERT INTO public.breed
VALUES (167, 'Кури', 1);
INSERT INTO public.breed
VALUES (168, 'Курцхаар', 1);
INSERT INTO public.breed
VALUES (169, 'Курчавошёрстный ретривер', 1);
INSERT INTO public.breed
VALUES (170, 'Лабрадор-ретривер', 1);
INSERT INTO public.breed
VALUES (171, 'Лабрадудль', 1);
INSERT INTO public.breed
VALUES (172, 'Лаготто-романьоло', 1);
INSERT INTO public.breed
VALUES (173, 'Лангхаар', 1);
INSERT INTO public.breed
VALUES (174, 'Ландсир', 1);
INSERT INTO public.breed
VALUES (175, 'Ланкаширский хилер', 1);
INSERT INTO public.breed
VALUES (176, 'Левретка', 1);
INSERT INTO public.breed
VALUES (177, 'Лейкленд-терьер', 1);
INSERT INTO public.breed
VALUES (178, 'Леонбергер', 1);
INSERT INTO public.breed
VALUES (179, 'Леопардовая собака Катахулы', 1);
INSERT INTO public.breed
VALUES (180, 'Лопарская оленегонная собака', 1);
INSERT INTO public.breed
VALUES (181, 'Лхаса апсо', 1);
INSERT INTO public.breed
VALUES (182, 'Майоркская овчарка', 1);
INSERT INTO public.breed
VALUES (183, 'Малая львиная собака', 1);
INSERT INTO public.breed
VALUES (184, 'Мальтийская болонка', 1);
INSERT INTO public.breed
VALUES (185, 'Манчестер-терьер', 1);
INSERT INTO public.breed
VALUES (186, 'Мареммо-абруццкая овчарка', 1);
INSERT INTO public.breed
VALUES (187, 'Меделянка', 1);
INSERT INTO public.breed
VALUES (188, 'Миттельшнауцер', 1);
INSERT INTO public.breed
VALUES (189, 'Мопс', 1);
INSERT INTO public.breed
VALUES (190, 'Московская сторожевая', 1);
INSERT INTO public.breed
VALUES (191, 'Московский водолаз', 1);
INSERT INTO public.breed
VALUES (192, 'Муди', 1);
INSERT INTO public.breed
VALUES (193, 'Неаполитанский мастиф', 1);
INSERT INTO public.breed
VALUES (194, 'Немецкая овчарка', 1);
INSERT INTO public.breed
VALUES (195, 'Немецкий боксёр', 1);
INSERT INTO public.breed
VALUES (196, 'Немецкий вахтельхунд', 1);
INSERT INTO public.breed
VALUES (197, 'Немецкий дог', 1);
INSERT INTO public.breed
VALUES (198, 'Немецкий пинчер', 1);
INSERT INTO public.breed
VALUES (199, 'Немецкий шпиц', 1);
INSERT INTO public.breed
VALUES (200, 'Немецкий ягдтерьер', 1);
INSERT INTO public.breed
VALUES (201, 'Ненецкая лайка', 1);
INSERT INTO public.breed
VALUES (202, 'Новошотландский ретривер', 1);
INSERT INTO public.breed
VALUES (203, 'Норвежский лундехунд', 1);
INSERT INTO public.breed
VALUES (204, 'Норвежский элкхаунд', 1);
INSERT INTO public.breed
VALUES (205, 'Норвич-терьер', 1);
INSERT INTO public.breed
VALUES (206, 'Норфолк-терьер', 1);
INSERT INTO public.breed
VALUES (207, 'Ньюфаундленд', 1);
INSERT INTO public.breed
VALUES (208, 'Одис', 1);
INSERT INTO public.breed
VALUES (209, 'Оттерхаунд', 1);
INSERT INTO public.breed
VALUES (210, 'Пагль', 1);
INSERT INTO public.breed
VALUES (211, 'Парсон Рассел терьер', 1);
INSERT INTO public.breed
VALUES (212, 'Пекинес', 1);
INSERT INTO public.breed
VALUES (213, 'Пикардийская овчарка', 1);
INSERT INTO public.breed
VALUES (214, 'Пиренейская горная собака', 1);
INSERT INTO public.breed
VALUES (215, 'Пиренейская овчарка', 1);
INSERT INTO public.breed
VALUES (216, 'Пиренейский мастиф', 1);
INSERT INTO public.breed
VALUES (217, 'Поденко ибиценко', 1);
INSERT INTO public.breed
VALUES (218, 'Пойнтер', 1);
INSERT INTO public.breed
VALUES (219, 'Польская гончая', 1);
INSERT INTO public.breed
VALUES (220, 'Польская низинная овчарка', 1);
INSERT INTO public.breed
VALUES (221, 'Польская подгалянская овчарка', 1);
INSERT INTO public.breed
VALUES (222, 'Польский огар', 1);
INSERT INTO public.breed
VALUES (223, 'Померанский шпиц', 1);
INSERT INTO public.breed
VALUES (224, 'Португальская водяная собака', 1);
INSERT INTO public.breed
VALUES (225, 'Португальская овчарка', 1);
INSERT INTO public.breed
VALUES (226, 'Пражский крысарик', 1);
INSERT INTO public.breed
VALUES (227, 'Прямошёрстный ретривер', 1);
INSERT INTO public.breed
VALUES (228, 'Пти-брабансон', 1);
INSERT INTO public.breed
VALUES (229, 'Пудель', 1);
INSERT INTO public.breed
VALUES (230, 'Пули', 1);
INSERT INTO public.breed
VALUES (231, 'Пуми', 1);
INSERT INTO public.breed
VALUES (232, 'Пхунсан', 1);
INSERT INTO public.breed
VALUES (233, 'Ризеншнауцер', 1);
INSERT INTO public.breed
VALUES (234, 'Родезийский риджбек', 1);
INSERT INTO public.breed
VALUES (235, 'Ротвейлер', 1);
INSERT INTO public.breed
VALUES (236, 'Румынская карпатская овчарка', 1);
INSERT INTO public.breed
VALUES (237, 'Румынская миоритская овчарка', 1);
INSERT INTO public.breed
VALUES (238, 'Русская псовая борзая', 1);
INSERT INTO public.breed
VALUES (239, 'Русская цветная болонка', 1);
INSERT INTO public.breed
VALUES (240, 'Русский охотничий спаниель', 1);
INSERT INTO public.breed
VALUES (241, 'Русский той-терьер', 1);
INSERT INTO public.breed
VALUES (242, 'Русско-европейская лайка', 1);
INSERT INTO public.breed
VALUES (243, 'Салюки', 1);
INSERT INTO public.breed
VALUES (244, 'Самоедская собака', 1);
INSERT INTO public.breed
VALUES (245, 'Сахалинский хаски', 1);
INSERT INTO public.breed
VALUES (246, 'Северная Инуитская собака', 1);
INSERT INTO public.breed
VALUES (247, 'Сенбернар', 1);
INSERT INTO public.breed
VALUES (248, 'Сиба-ину', 1);
INSERT INTO public.breed
VALUES (249, 'Сибирский хаски', 1);
INSERT INTO public.breed
VALUES (250, 'Силихем-терьер', 1);
INSERT INTO public.breed
VALUES (251, 'Скайтерьер', 1);
INSERT INTO public.breed
VALUES (252, 'Словацкий копов', 1);
INSERT INTO public.breed
VALUES (253, 'Словацкий чувач', 1);
INSERT INTO public.breed
VALUES (254, 'Слюги', 1);
INSERT INTO public.breed
VALUES (255, 'Среднеазиатская овчарка', 1);
INSERT INTO public.breed
VALUES (256, 'Староанглийский бульдог', 1);
INSERT INTO public.breed
VALUES (257, 'Староанглийский бульдог', 1);
INSERT INTO public.breed
VALUES (258, 'Стаффордширский бультерьер', 1);
INSERT INTO public.breed
VALUES (259, 'Суссекс-спаниель', 1);
INSERT INTO public.breed
VALUES (260, 'Тазы', 1);
INSERT INTO public.breed
VALUES (261, 'Тайский риджбек', 1);
INSERT INTO public.breed
VALUES (262, 'Такса', 1);
INSERT INTO public.breed
VALUES (263, 'Течичи', 1);
INSERT INTO public.breed
VALUES (264, 'Тибетский мастиф', 1);
INSERT INTO public.breed
VALUES (265, 'Тибетский спаниель', 1);
INSERT INTO public.breed
VALUES (266, 'Тибетский терьер', 1);
INSERT INTO public.breed
VALUES (267, 'Торньяк', 1);
INSERT INTO public.breed
VALUES (268, 'Тоса-ину', 1);
INSERT INTO public.breed
VALUES (269, 'Уиппет', 1);
INSERT INTO public.breed
VALUES (270, 'Фараонова собака', 1);
INSERT INTO public.breed
VALUES (271, 'Фарфоровая гончая', 1);
INSERT INTO public.breed
VALUES (272, 'Финская гончая', 1);
INSERT INTO public.breed
VALUES (273, 'Финский лаппхунд', 1);
INSERT INTO public.breed
VALUES (274, 'Финский шпиц', 1);
INSERT INTO public.breed
VALUES (275, 'Фландрский бувье', 1);
INSERT INTO public.breed
VALUES (276, 'Фокстерьер', 1);
INSERT INTO public.breed
VALUES (277, 'Французский бульдог', 1);
INSERT INTO public.breed
VALUES (278, 'Ханаанская собака', 1);
INSERT INTO public.breed
VALUES (279, 'Харьер', 1);
INSERT INTO public.breed
VALUES (280, 'Ховаварт', 1);
INSERT INTO public.breed
VALUES (281, 'Хоккайдо', 1);
INSERT INTO public.breed
VALUES (282, 'Хорватская овчарка', 1);
INSERT INTO public.breed
VALUES (283, 'Цвергшнауцер', 1);
INSERT INTO public.breed
VALUES (284, 'Чау-чау', 1);
INSERT INTO public.breed
VALUES (285, 'Чёрный терьер', 1);
INSERT INTO public.breed
VALUES (286, 'Чесапик бэй ретривер', 1);
INSERT INTO public.breed
VALUES (287, 'Чехословацкая волчья собака', 1);
INSERT INTO public.breed
VALUES (288, 'Чешская пастушья собака', 1);
INSERT INTO public.breed
VALUES (289, 'Чешский терьер', 1);
INSERT INTO public.breed
VALUES (290, 'Чинук', 1);
INSERT INTO public.breed
VALUES (291, 'Чирнеко дель Этна', 1);
INSERT INTO public.breed
VALUES (292, 'Чихуахуа', 1);
INSERT INTO public.breed
VALUES (293, 'Шапендуа', 1);
INSERT INTO public.breed
VALUES (294, 'Шарпей', 1);
INSERT INTO public.breed
VALUES (295, 'Шарпланинская овчарка', 1);
INSERT INTO public.breed
VALUES (296, 'Шведский лаппхунд', 1);
INSERT INTO public.breed
VALUES (297, 'Шелковистый виндхаунд', 1);
INSERT INTO public.breed
VALUES (298, 'Шелти', 1);
INSERT INTO public.breed
VALUES (299, 'Ши-тцу', 1);
INSERT INTO public.breed
VALUES (300, 'Шипперке', 1);
INSERT INTO public.breed
VALUES (301, 'Шотландский сеттер', 1);
INSERT INTO public.breed
VALUES (302, 'Шотландский терьер', 1);
INSERT INTO public.breed
VALUES (303, 'Энтлебухер зенненхунд', 1);
INSERT INTO public.breed
VALUES (304, 'Эпаньол бретон', 1);
INSERT INTO public.breed
VALUES (305, 'Эрдельтерьер', 1);
INSERT INTO public.breed
VALUES (306, 'Эстонская гончая', 1);
INSERT INTO public.breed
VALUES (307, 'Эштрельская овчарка', 1);
INSERT INTO public.breed
VALUES (308, 'Южнорусская овчарка', 1);
INSERT INTO public.breed
VALUES (309, 'Якутская лайка', 1);
INSERT INTO public.breed
VALUES (310, 'Японский хин', 1);
INSERT INTO public.breed
VALUES (311, 'Японский шпиц', 1);
INSERT INTO public.breed
VALUES (312, 'Абиссинская', 2);
INSERT INTO public.breed
VALUES (313, 'Австралийский мист', 2);
INSERT INTO public.breed
VALUES (314, 'Азиатская (Табби)', 2);
INSERT INTO public.breed
VALUES (315, 'Акринская', 2);
INSERT INTO public.breed
VALUES (316, 'Американская жесткошёрстная', 2);
INSERT INTO public.breed
VALUES (317, 'Американская короткошёрстная', 2);
INSERT INTO public.breed
VALUES (318, 'Американский бобтейл длинношёрстный', 2);
INSERT INTO public.breed
VALUES (319, 'Американский бобтейл короткошёрстный', 2);
INSERT INTO public.breed
VALUES (320, 'Американский кёрл длинношёрстный', 2);
INSERT INTO public.breed
VALUES (321, 'Американский кёрл короткошёрстный', 2);
INSERT INTO public.breed
VALUES (322, 'Анатолийская', 2);
INSERT INTO public.breed
VALUES (323, 'Аравийский мау', 2);
INSERT INTO public.breed
VALUES (324, 'Балинезийская (Балийская)', 2);
INSERT INTO public.breed
VALUES (325, 'Бенгальская', 2);
INSERT INTO public.breed
VALUES (326, 'Бомбейская', 2);
INSERT INTO public.breed
VALUES (327, 'Бразильская короткошёрстная', 2);
INSERT INTO public.breed
VALUES (328, 'Британская длинношёрстная', 2);
INSERT INTO public.breed
VALUES (329, 'Британская короткошёрстная', 2);
INSERT INTO public.breed
VALUES (330, 'Бурма (Бурманская)', 2);
INSERT INTO public.breed
VALUES (331, 'Бурмилла длинношёрстный', 2);
INSERT INTO public.breed
VALUES (332, 'Бурмилла короткошёрстный', 2);
INSERT INTO public.breed
VALUES (333, 'Гавана', 2);
INSERT INTO public.breed
VALUES (334, 'Гималайская кошка', 2);
INSERT INTO public.breed
VALUES (335, 'Девон рекс', 2);
INSERT INTO public.breed
VALUES (336, 'Домашняя', 2);
INSERT INTO public.breed
VALUES (337, 'Донской сфинкс', 2);
INSERT INTO public.breed
VALUES (338, 'Египетская мау', 2);
INSERT INTO public.breed
VALUES (339, 'Калифорнийская сияющая', 2);
INSERT INTO public.breed
VALUES (340, 'Канаани', 2);
INSERT INTO public.breed
VALUES (341, 'Карельский бобтейл длинношёрстный', 2);
INSERT INTO public.breed
VALUES (342, 'Карельский бобтейл короткошёрстный', 2);
INSERT INTO public.breed
VALUES (343, 'Кельтская (Европейская короткошёрстная)', 2);
INSERT INTO public.breed
VALUES (344, 'Кимрик', 2);
INSERT INTO public.breed
VALUES (345, 'Колорпойнт', 2);
INSERT INTO public.breed
VALUES (346, 'Корат', 2);
INSERT INTO public.breed
VALUES (347, 'Корниш рекс', 2);
INSERT INTO public.breed
VALUES (348, 'Курильский бобтейл длинношёрстный', 2);
INSERT INTO public.breed
VALUES (349, 'Курильский бобтейл короткошёрстный', 2);
INSERT INTO public.breed
VALUES (350, 'Лаперм длинношёрстный', 2);
INSERT INTO public.breed
VALUES (351, 'Лаперм короткошёрстный', 2);
INSERT INTO public.breed
VALUES (352, 'Манчкин длинношёрстная', 2);
INSERT INTO public.breed
VALUES (353, 'Манчкин короткошёрстная', 2);
INSERT INTO public.breed
VALUES (354, 'Мейн-кун', 2);
INSERT INTO public.breed
VALUES (355, 'Меконгский бобтейл', 2);
INSERT INTO public.breed
VALUES (356, 'Минскин', 2);
INSERT INTO public.breed
VALUES (357, 'Мэнкс (Мэнская кошка)', 2);
INSERT INTO public.breed
VALUES (358, 'Наполеон', 2);
INSERT INTO public.breed
VALUES (359, 'Невская маскарадная', 2);
INSERT INTO public.breed
VALUES (360, 'Немецкий рекс', 2);
INSERT INTO public.breed
VALUES (361, 'Нибелунг', 2);
INSERT INTO public.breed
VALUES (362, 'Норвежская лесная', 2);
INSERT INTO public.breed
VALUES (363, 'Орегон-рекс', 2);
INSERT INTO public.breed
VALUES (364, 'Ориентальная длинношёрстная', 2);
INSERT INTO public.breed
VALUES (365, 'Ориентальная короткошёрстная', 2);
INSERT INTO public.breed
VALUES (366, 'Охос азулес', 2);
INSERT INTO public.breed
VALUES (367, 'Охос азулес длинношёрстный', 2);
INSERT INTO public.breed
VALUES (368, 'Оцикет', 2);
INSERT INTO public.breed
VALUES (369, 'Персидская (Колорпойнт)', 2);
INSERT INTO public.breed
VALUES (370, 'Петерболд', 2);
INSERT INTO public.breed
VALUES (371, 'Пиксибоб длинношёрстный', 2);
INSERT INTO public.breed
VALUES (372, 'Пиксибоб короткошёрстный', 2);
INSERT INTO public.breed
VALUES (373, 'Рагамаффин', 2);
INSERT INTO public.breed
VALUES (374, 'Русская голубая', 2);
INSERT INTO public.breed
VALUES (375, 'Рэгдолл', 2);
INSERT INTO public.breed
VALUES (376, 'Саванна', 2);
INSERT INTO public.breed
VALUES (377, 'Священная бирманская', 2);
INSERT INTO public.breed
VALUES (378, 'Сейшельская длинношёрстная', 2);
INSERT INTO public.breed
VALUES (379, 'Сейшельская короткошёрстная', 2);
INSERT INTO public.breed
VALUES (380, 'Селкирк рекс длинношёрстный', 2);
INSERT INTO public.breed
VALUES (381, 'Селкирк рекс короткошёрстный', 2);
INSERT INTO public.breed
VALUES (382, 'Серенгети', 2);
INSERT INTO public.breed
VALUES (383, 'Сиамская', 2);
INSERT INTO public.breed
VALUES (384, 'Сибирская', 2);
INSERT INTO public.breed
VALUES (385, 'Сингапурская', 2);
INSERT INTO public.breed
VALUES (386, 'Скоттиш страйт', 2);
INSERT INTO public.breed
VALUES (387, 'Скоттиш фолд', 2);
INSERT INTO public.breed
VALUES (388, 'Сноу-Шу', 2);
INSERT INTO public.breed
VALUES (389, 'Сококе', 2);
INSERT INTO public.breed
VALUES (390, 'Сомали', 2);
INSERT INTO public.breed
VALUES (391, 'Сфинкс (Канадский)', 2);
INSERT INTO public.breed
VALUES (392, 'Тайская', 2);
INSERT INTO public.breed
VALUES (393, 'Тойгер', 2);
INSERT INTO public.breed
VALUES (394, 'Тонкинская', 2);
INSERT INTO public.breed
VALUES (395, 'Турецкая ангора', 2);
INSERT INTO public.breed
VALUES (396, 'Турецкий ван', 2);
INSERT INTO public.breed
VALUES (397, 'Украинский левкой', 2);
INSERT INTO public.breed
VALUES (398, 'Уральский рекс длинношёрстный', 2);
INSERT INTO public.breed
VALUES (399, 'Уральский рекс короткошёрстный', 2);
INSERT INTO public.breed
VALUES (400, 'Форин Вайт', 2);
INSERT INTO public.breed
VALUES (401, 'Хайленд фолд', 2);
INSERT INTO public.breed
VALUES (402, 'Цейлонская', 2);
INSERT INTO public.breed
VALUES (403, 'Чаузи', 2);
INSERT INTO public.breed
VALUES (404, 'Шантильи Тиффаны', 2);
INSERT INTO public.breed
VALUES (405, 'Шартрез', 2);
INSERT INTO public.breed
VALUES (406, 'Эгейская', 2);
INSERT INTO public.breed
VALUES (407, 'Экзотическая', 2);
INSERT INTO public.breed
VALUES (408, 'Экспериментальная порода', 2);
INSERT INTO public.breed
VALUES (409, 'Яванез (Яванская)', 2);
INSERT INTO public.breed
VALUES (410, 'Японский бобтейл длинношёрстный', 2);
INSERT INTO public.breed
VALUES (411, 'Японский бобтейл короткошёрстный', 2);
INSERT INTO public.breed
VALUES (412, 'Беспородная', 1);
INSERT INTO public.breed
VALUES (413, 'Беспородная', 2);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.city
VALUES (1, 'Абаза', 'Республика Хакасия', '52.6516666666667', '90.0886111111111');
INSERT INTO public.city
VALUES (2, 'Абакан', 'Республика Хакасия', '53.7211111111111', '91.4425');
INSERT INTO public.city
VALUES (3, 'Абдулино', 'Оренбургская область', '53.6777777777778', '53.6472222222222');
INSERT INTO public.city
VALUES (4, 'Абинск', 'Краснодарский край', '44.8680555555556', '38.1616666666667');
INSERT INTO public.city
VALUES (5, 'Автуры', 'Чеченская республика', '43.165', '46.0019444444444');
INSERT INTO public.city
VALUES (6, 'Агидель', 'Республика Башкортостан', '55.8997222222222', '53.9219444444444');
INSERT INTO public.city
VALUES (7, 'Агинское', 'Забайкальский край', '51.1030555555556', '114.533055555556');
INSERT INTO public.city
VALUES (8, 'Агрыз', 'Республика Татарстан', '56.5263888888889', '52.9952777777778');
INSERT INTO public.city
VALUES (9, 'Адыгейск', 'Республика Адыгея', '44.8783333333333', '39.1902777777778');
INSERT INTO public.city
VALUES (10, 'Азнакаево', 'Республика Татарстан', '54.8597222222222', '53.0744444444444');
INSERT INTO public.city
VALUES (11, 'Азов', 'Ростовская область', '47.1122222222222', '39.4233333333333');
INSERT INTO public.city
VALUES (12, 'Айхал', 'Республика Саха (Якутия)', '65.9427777777778', '111.495277777778');
INSERT INTO public.city
VALUES (13, 'Акбулак', 'Оренбургская область', '51.0013888888889', '55.6161111111111');
INSERT INTO public.city
VALUES (14, 'Ак-Довурак', 'Республика Тыва', '51.1786111111111', '90.5986111111111');
INSERT INTO public.city
VALUES (15, 'Аксай', 'Республика Дагестан', '43.3702777777778', '46.4452777777778');
INSERT INTO public.city
VALUES (16, 'Аксай', 'Ростовская область', '47.2697222222222', '39.8625');
INSERT INTO public.city
VALUES (17, 'Алагир', 'Республика Северная Осетия - Алания', '43.0416666666667', '44.22');
INSERT INTO public.city
VALUES (18, 'Алапаевск', 'Свердловская область', '57.8475', '61.6694444444444');
INSERT INTO public.city
VALUES (19, 'Алатырь', 'Чувашская республика', '54.8419444444444', '46.5877777777778');
INSERT INTO public.city
VALUES (20, 'Алдан', 'Республика Саха (Якутия)', '58.6030555555556', '125.384444444444');
INSERT INTO public.city
VALUES (21, 'Алейск', 'Алтайский край', '52.4922222222222', '82.7794444444445');
INSERT INTO public.city
VALUES (22, 'Александрийская', 'Ставропольский край', '44.2213888888889', '43.3513888888889');
INSERT INTO public.city
VALUES (23, 'Александров', 'Владимирская область', '56.3977777777778', '38.7275');
INSERT INTO public.city
VALUES (24, 'Александровск', 'Пермский край', '59.1630555555556', '57.5847222222222');
INSERT INTO public.city
VALUES (25, 'Александровское', 'Ставропольский край', '44.7125', '42.9963888888889');
INSERT INTO public.city
VALUES (26, 'Алексеевка', 'Самарская область', '53.2508333333333', '50.4905555555556');
INSERT INTO public.city
VALUES (27, 'Алексеевка', 'Белгородская область', '50.63', '38.6880555555556');
INSERT INTO public.city
VALUES (28, 'Алексеевское', 'Республика Татарстан', '55.3052777777778', '50.1141666666667');
INSERT INTO public.city
VALUES (29, 'Алексин', 'Тульская область', '54.5027777777778', '37.0666666666667');
INSERT INTO public.city
VALUES (30, 'Аллерой', 'Чеченская республика', '43.2152777777778', '46.2836111111111');
INSERT INTO public.city
VALUES (31, 'Алтайское', 'Алтайский край', '51.9522222222222', '85.3380555555556');
INSERT INTO public.city
VALUES (32, 'Алушта', 'Республика Крым', '44.6763888888889', '34.41');
INSERT INTO public.city
VALUES (33, 'Алхан-Кала', 'Чеченская республика', '43.2602777777778', '45.5411111111111');
INSERT INTO public.city
VALUES (34, 'Алхан-Юрт', 'Чеченская республика', '43.2208333333333', '45.5680555555556');
INSERT INTO public.city
VALUES (35, 'Альбурикент', 'Республика Дагестан', '42.9730555555556', '47.4691666666667');
INSERT INTO public.city
VALUES (36, 'Альметьевск', 'Республика Татарстан', '54.9013888888889', '52.2972222222222');
INSERT INTO public.city
VALUES (37, 'Амурск', 'Хабаровский край', '50.2344444444444', '136.879166666667');
INSERT INTO public.city
VALUES (38, 'Анадырь', 'Чукотский автономный округ', '64.7347222222222', '177.514722222222');
INSERT INTO public.city
VALUES (39, 'Анапа', 'Краснодарский край', '44.895', '37.3163888888889');
INSERT INTO public.city
VALUES (40, 'Анапская', 'Краснодарский край', '44.8980555555556', '37.3875');
INSERT INTO public.city
VALUES (41, 'Анастасиевская', 'Краснодарский край', '45.2158333333333', '37.8905555555556');
INSERT INTO public.city
VALUES (42, 'Ангарск', 'Иркутская область', '52.5441666666667', '103.888055555556');
INSERT INTO public.city
VALUES (43, 'Андреевка', 'Московская область', '55.9811111111111', '37.1311111111111');
INSERT INTO public.city
VALUES (44, 'Анжеро-Судженск', 'Кемеровская область', '56.0830555555556', '86.0183333333333');
INSERT INTO public.city
VALUES (45, 'Анна', 'Воронежская область', '51.4894444444444', '40.4241666666667');
INSERT INTO public.city
VALUES (46, 'Апатиты', 'Мурманская область', '67.5677777777778', '33.4066666666667');
INSERT INTO public.city
VALUES (47, 'Апрелевка', 'Московская область', '55.5452777777778', '37.0733333333333');
INSERT INTO public.city
VALUES (48, 'Апшеронск', 'Краснодарский край', '44.4583333333333', '39.73');
INSERT INTO public.city
VALUES (49, 'Арамиль', 'Свердловская область', '56.6944444444444', '60.8344444444444');
INSERT INTO public.city
VALUES (50, 'Аргаяш', 'Челябинская область', '55.4891666666667', '60.8755555555556');
INSERT INTO public.city
VALUES (51, 'Аргун', 'Чеченская республика', '43.2805555555556', '45.8791666666667');
INSERT INTO public.city
VALUES (52, 'Ардон', 'Республика Северная Осетия - Алания', '43.1755555555556', '44.2955555555556');
INSERT INTO public.city
VALUES (53, 'Арзамас', 'Нижегородская область', '55.3877777777778', '43.8155555555556');
INSERT INTO public.city
VALUES (54, 'Арзгир', 'Ставропольский край', '45.3697222222222', '44.2211111111111');
INSERT INTO public.city
VALUES (55, 'Аркадак', 'Саратовская область', '51.9388888888889', '43.4997222222222');
INSERT INTO public.city
VALUES (56, 'Армавир', 'Краснодарский край', '45.0011111111111', '41.1325');
INSERT INTO public.city
VALUES (57, 'Армянск', 'Республика Крым', '46.1058333333333', '33.6911111111111');
INSERT INTO public.city
VALUES (58, 'Арсеньев', 'Приморский край', '44.1622222222222', '133.269722222222');
INSERT INTO public.city
VALUES (59, 'Арск', 'Республика Татарстан', '56.0913888888889', '49.8769444444444');
INSERT INTO public.city
VALUES (60, 'Артем', 'Приморский край', '43.3622222222222', '132.181388888889');
INSERT INTO public.city
VALUES (61, 'Артемовский', 'Свердловская область', '57.3383333333333', '61.8947222222222');
INSERT INTO public.city
VALUES (62, 'Арти', 'Свердловская область', '56.4216666666667', '58.5127777777778');
INSERT INTO public.city
VALUES (63, 'Архангельск', 'Архангельская область', '64.5430555555556', '40.5372222222222');
INSERT INTO public.city
VALUES (64, 'Асбест', 'Свердловская область', '57.0269444444444', '61.4594444444444');
INSERT INTO public.city
VALUES (65, 'Асино', 'Томская область', '56.9908333333333', '86.1763888888889');
INSERT INTO public.city
VALUES (66, 'Ассиновская', 'Чеченская республика', '43.2386111111111', '45.1713888888889');
INSERT INTO public.city
VALUES (67, 'Атамановка', 'Забайкальский край', '51.9294444444444', '113.637222222222');
INSERT INTO public.city
VALUES (68, 'Аткарск', 'Саратовская область', '51.8736111111111', '45.0002777777778');
INSERT INTO public.city
VALUES (69, 'Афипский', 'Краснодарский край', '44.9033333333333', '38.8411111111111');
INSERT INTO public.city
VALUES (70, 'Ахтубинск', 'Астраханская область', '48.2922222222222', '46.1769444444444');
INSERT INTO public.city
VALUES (71, 'Ахты', 'Республика Дагестан', '41.4591666666667', '47.7494444444444');
INSERT INTO public.city
VALUES (72, 'Ахтырский', 'Краснодарский край', '44.8502777777778', '38.2997222222222');
INSERT INTO public.city
VALUES (73, 'Ачинск', 'Красноярский край', '56.2694444444444', '90.4952777777778');
INSERT INTO public.city
VALUES (74, 'Ачхой-Мартан', 'Чеченская республика', '43.1872222222222', '45.2863888888889');
INSERT INTO public.city
VALUES (75, 'Аша', 'Челябинская область', '54.9905555555556', '57.2783333333333');
INSERT INTO public.city
VALUES (76, 'Бабаево', 'Вологодская область', '59.3891666666667', '35.9377777777778');
INSERT INTO public.city
VALUES (77, 'Бабаюрт', 'Республика Дагестан', '43.6011111111111', '46.7791666666667');
INSERT INTO public.city
VALUES (78, 'Бавлы', 'Республика Татарстан', '54.4063888888889', '53.2458333333333');
INSERT INTO public.city
VALUES (79, 'Багаевская', 'Ростовская область', '47.3119444444444', '40.3836111111111');
INSERT INTO public.city
VALUES (80, 'Байкальск', 'Иркутская область', '51.5230555555556', '104.148611111111');
INSERT INTO public.city
VALUES (81, 'Баймак', 'Республика Башкортостан', '52.5913888888889', '58.3111111111111');
INSERT INTO public.city
VALUES (82, 'Бакал', 'Челябинская область', '54.9380555555556', '58.8091666666667');
INSERT INTO public.city
VALUES (83, 'Бакалы', 'Республика Башкортостан', '55.1797222222222', '53.7955555555556');
INSERT INTO public.city
VALUES (84, 'Баксан', 'Кабардино-Балкарская республика', '43.6819444444444', '43.5344444444444');
INSERT INTO public.city
VALUES (85, 'Балабаново', 'Калужская область', '55.1775', '36.6566666666667');
INSERT INTO public.city
VALUES (86, 'Балаклава', 'Севастополь', '44.505', '33.5983333333333');
INSERT INTO public.city
VALUES (87, 'Балаково', 'Саратовская область', '52.0222222222222', '47.7827777777778');
INSERT INTO public.city
VALUES (88, 'Балахна', 'Нижегородская область', '56.5044444444444', '43.6019444444444');
INSERT INTO public.city
VALUES (89, 'Балашиха', 'Московская область', '55.7963888888889', '37.9383333333333');
INSERT INTO public.city
VALUES (90, 'Балашов', 'Саратовская область', '51.5547222222222', '43.1463888888889');
INSERT INTO public.city
VALUES (91, 'Балезино', 'Удмуртская республика', '57.9763888888889', '53.0075');
INSERT INTO public.city
VALUES (92, 'Балей', 'Забайкальский край', '51.5822222222222', '116.638055555556');
INSERT INTO public.city
VALUES (93, 'Балтийск', 'Калининградская область', '54.6441666666667', '19.8922222222222');
INSERT INTO public.city
VALUES (94, 'Барабинск', 'Новосибирская область', '55.3502777777778', '78.3419444444445');
INSERT INTO public.city
VALUES (95, 'Барнаул', 'Алтайский край', '53.3480555555556', '83.78');
INSERT INTO public.city
VALUES (96, 'Барсуки', 'Республика Ингушетия', '43.2588888888889', '44.8094444444444');
INSERT INTO public.city
VALUES (97, 'Барыш', 'Ульяновская область', '53.6533333333333', '47.1180555555556');
INSERT INTO public.city
VALUES (98, 'Батайск', 'Ростовская область', '47.1383333333333', '39.7508333333333');
INSERT INTO public.city
VALUES (99, 'Бахчисарай', 'Республика Крым', '44.7513888888889', '33.875');
INSERT INTO public.city
VALUES (100, 'Бачатский', 'Кемеровская область', '54.2844444444444', '86.1036111111111');
INSERT INTO public.city
VALUES (101, 'Бачи-Юрт', 'Чеченская республика', '43.2211111111111', '46.195');
INSERT INTO public.city
VALUES (102, 'Бежецк', 'Тверская область', '57.7855555555556', '36.6938888888889');
INSERT INTO public.city
VALUES (103, 'Безенчук', 'Самарская область', '52.9819444444444', '49.4272222222222');
INSERT INTO public.city
VALUES (104, 'Белая Глина', 'Краснодарский край', '46.0736111111111', '40.8713888888889');
INSERT INTO public.city
VALUES (105, 'Белая Калитва', 'Ростовская область', '48.1769444444444', '40.8033333333333');
INSERT INTO public.city
VALUES (106, 'Белая Холуница', 'Кировская область', '58.8436111111111', '50.8527777777778');
INSERT INTO public.city
VALUES (107, 'Белгород', 'Белгородская область', '50.5975', '36.5888888888889');
INSERT INTO public.city
VALUES (108, 'Белебей', 'Республика Башкортостан', '54.1033333333333', '54.1111111111111');
INSERT INTO public.city
VALUES (109, 'Белев', 'Тульская область', '53.8113888888889', '36.13');
INSERT INTO public.city
VALUES (110, 'Белиджи', 'Республика Дагестан', '41.875', '48.3905555555556');
INSERT INTO public.city
VALUES (111, 'Белово', 'Кемеровская область', '54.4222222222222', '86.3036111111111');
INSERT INTO public.city
VALUES (112, 'Белогорск', 'Республика Крым', '45.0572222222222', '34.6');
INSERT INTO public.city
VALUES (113, 'Белогорск', 'Амурская область', '50.9213888888889', '128.473888888889');
INSERT INTO public.city
VALUES (114, 'Белокуриха', 'Алтайский край', '51.9961111111111', '84.9838888888889');
INSERT INTO public.city
VALUES (115, 'Беломорск', 'Республика Карелия', '64.5230555555556', '34.7666666666667');
INSERT INTO public.city
VALUES (116, 'Белоозерский', 'Московская область', '55.4638888888889', '38.4463888888889');
INSERT INTO public.city
VALUES (117, 'Белорецк', 'Республика Башкортостан', '53.9675', '58.41');
INSERT INTO public.city
VALUES (118, 'Белореченск', 'Краснодарский край', '44.7611111111111', '39.8711111111111');
INSERT INTO public.city
VALUES (119, 'Белоярский', 'Свердловская область', '56.7572222222222', '61.4186111111111');
INSERT INTO public.city
VALUES (120, 'Белоярский', 'Ханты-Мансийский автономный округ - Югра', '63.7163888888889', '66.6669444444444');
INSERT INTO public.city
VALUES (121, 'Белый Яр', 'Республика Хакасия', '53.5969444444444', '91.3830555555556');
INSERT INTO public.city
VALUES (122, 'Белый Яр', 'Ханты-Мансийский автономный округ - Югра', '61.2658333333333', '73.2516666666667');
INSERT INTO public.city
VALUES (123, 'Бердск', 'Новосибирская область', '54.7583333333333', '83.1072222222222');
INSERT INTO public.city
VALUES (124, 'Березники', 'Пермский край', '59.4080555555556', '56.8038888888889');
INSERT INTO public.city
VALUES (125, 'Березовка', 'Красноярский край', '56.0355555555556', '93.1205555555556');
INSERT INTO public.city
VALUES (126, 'Березовский', 'Кемеровская область', '55.6666666666667', '86.25');
INSERT INTO public.city
VALUES (127, 'Березовский', 'Свердловская область', '56.9097222222222', '60.8180555555556');
INSERT INTO public.city
VALUES (128, 'Беслан', 'Республика Северная Осетия - Алания', '43.1938888888889', '44.5338888888889');
INSERT INTO public.city
VALUES (129, 'Бессоновка', 'Пензенская область', '53.3102777777778', '45.0394444444444');
INSERT INTO public.city
VALUES (130, 'Бийск', 'Алтайский край', '52.5391666666667', '85.2138888888889');
INSERT INTO public.city
VALUES (131, 'Бикин', 'Хабаровский край', '46.8186111111111', '134.255');
INSERT INTO public.city
VALUES (132, 'Биробиджан', 'Еврейская автономная область', '48.7947222222222', '132.921666666667');
INSERT INTO public.city
VALUES (133, 'Бирск', 'Республика Башкортостан', '55.4125', '55.5405555555556');
INSERT INTO public.city
VALUES (134, 'Благовещенка', 'Алтайский край', '52.8338888888889', '79.8686111111111');
INSERT INTO public.city
VALUES (135, 'Благовещенск', 'Республика Башкортостан', '55.0463888888889', '55.9483333333333');
INSERT INTO public.city
VALUES (136, 'Благовещенск', 'Амурская область', '50.2905555555556', '127.527222222222');
INSERT INTO public.city
VALUES (137, 'Благодарный', 'Ставропольский край', '45.0991666666667', '43.4305555555556');
INSERT INTO public.city
VALUES (138, 'Бобров', 'Воронежская область', '51.0902777777778', '40.0319444444444');
INSERT INTO public.city
VALUES (139, 'Богандинский', 'Тюменская область', '56.8927777777778', '65.8913888888889');
INSERT INTO public.city
VALUES (140, 'Богданович', 'Свердловская область', '56.7763888888889', '62.0463888888889');
INSERT INTO public.city
VALUES (141, 'Богородицк', 'Тульская область', '53.77', '38.1225');
INSERT INTO public.city
VALUES (142, 'Богородск', 'Нижегородская область', '56.1019444444444', '43.5136111111111');
INSERT INTO public.city
VALUES (143, 'Боготол', 'Красноярский край', '56.21', '89.53');
INSERT INTO public.city
VALUES (144, 'Богучаны', 'Красноярский край', '58.38', '97.4452777777778');
INSERT INTO public.city
VALUES (145, 'Богучар', 'Воронежская область', '49.9352777777778', '40.5591666666667');
INSERT INTO public.city
VALUES (146, 'Бодайбо', 'Иркутская область', '57.8519444444444', '114.198888888889');
INSERT INTO public.city
VALUES (147, 'Бокситогорск', 'Ленинградская область', '59.4736111111111', '33.8477777777778');
INSERT INTO public.city
VALUES (148, 'Бологое', 'Тверская область', '57.8855555555556', '34.0538888888889');
INSERT INTO public.city
VALUES (149, 'Болотное', 'Новосибирская область', '55.6694444444444', '84.3908333333333');
INSERT INTO public.city
VALUES (150, 'Болхов', 'Орловская область', '53.4488888888889', '36.0022222222222');
INSERT INTO public.city
VALUES (151, 'Большеречье', 'Омская область', '56.0983333333333', '74.6227777777778');
INSERT INTO public.city
VALUES (152, 'Большие Вяземы', 'Московская область', '55.6261111111111', '36.9972222222222');
INSERT INTO public.city
VALUES (153, 'Большой Камень', 'Приморский край', '43.1111111111111', '132.348055555556');
INSERT INTO public.city
VALUES (154, 'Бор', 'Нижегородская область', '56.3563888888889', '44.0644444444444');
INSERT INTO public.city
VALUES (155, 'Борзя', 'Забайкальский край', '50.3875', '116.523611111111');
INSERT INTO public.city
VALUES (156, 'Борисовка', 'Белгородская область', '50.5969444444444', '36.0122222222222');
INSERT INTO public.city
VALUES (157, 'Борисоглебск', 'Воронежская область', '51.3677777777778', '42.075');
INSERT INTO public.city
VALUES (158, 'Боровичи', 'Новгородская область', '58.3883333333333', '33.9138888888889');
INSERT INTO public.city
VALUES (159, 'Боровск', 'Калужская область', '55.2075', '36.4836111111111');
INSERT INTO public.city
VALUES (160, 'Боровский', 'Тюменская область', '57.0438888888889', '65.7219444444444');
INSERT INTO public.city
VALUES (161, 'Бородино', 'Красноярский край', '55.9055555555556', '94.9022222222222');
INSERT INTO public.city
VALUES (162, 'Ботлих', 'Республика Дагестан', '42.6663888888889', '46.2197222222222');
INSERT INTO public.city
VALUES (163, 'Братск', 'Иркутская область', '56.1513888888889', '101.634166666667');
INSERT INTO public.city
VALUES (164, 'Бронницы', 'Московская область', '55.4255555555556', '38.2641666666667');
INSERT INTO public.city
VALUES (165, 'Брюховецкая', 'Краснодарский край', '45.8019444444444', '38.9972222222222');
INSERT INTO public.city
VALUES (166, 'Брянск', 'Брянская область', '53.2427777777778', '34.3666666666667');
INSERT INTO public.city
VALUES (167, 'Бугры', 'Ленинградская область', '60.0686111111111', '30.3972222222222');
INSERT INTO public.city
VALUES (168, 'Бугульма', 'Республика Татарстан', '54.5363888888889', '52.7894444444444');
INSERT INTO public.city
VALUES (169, 'Бугуруслан', 'Оренбургская область', '53.6522222222222', '52.4325');
INSERT INTO public.city
VALUES (170, 'Буденновск', 'Ставропольский край', '44.7816666666667', '44.165');
INSERT INTO public.city
VALUES (171, 'Буздяк', 'Республика Башкортостан', '54.5705555555556', '54.5338888888889');
INSERT INTO public.city
VALUES (172, 'Бузулук', 'Оренбургская область', '52.7880555555556', '52.2625');
INSERT INTO public.city
VALUES (173, 'Буинск', 'Республика Татарстан', '54.9641666666667', '48.2902777777778');
INSERT INTO public.city
VALUES (174, 'Буй', 'Костромская область', '58.4816666666667', '41.5330555555556');
INSERT INTO public.city
VALUES (175, 'Буйнакск', 'Республика Дагестан', '42.8213888888889', '47.1163888888889');
INSERT INTO public.city
VALUES (176, 'Буланаш', 'Свердловская область', '57.2769444444444', '61.9933333333333');
INSERT INTO public.city
VALUES (177, 'Бутурлиновка', 'Воронежская область', '50.8352777777778', '40.5847222222222');
INSERT INTO public.city
VALUES (178, 'Быково', 'Московская область', '55.6316666666667', '38.0905555555556');
INSERT INTO public.city
VALUES (179, 'Валдай', 'Новгородская область', '57.9802777777778', '33.2466666666667');
INSERT INTO public.city
VALUES (180, 'Валуйки', 'Белгородская область', '50.2111111111111', '38.1');
INSERT INTO public.city
VALUES (181, 'Ванино', 'Хабаровский край', '49.0897222222222', '140.255277777778');
INSERT INTO public.city
VALUES (182, 'Варениковская', 'Краснодарский край', '45.12', '37.6383333333333');
INSERT INTO public.city
VALUES (183, 'Васильево', 'Республика Татарстан', '55.8366666666667', '48.7055555555556');
INSERT INTO public.city
VALUES (184, 'Васюринская', 'Краснодарский край', '45.1180555555556', '39.4216666666667');
INSERT INTO public.city
VALUES (185, 'Великие Луки', 'Псковская область', '56.3427777777778', '30.5233333333333');
INSERT INTO public.city
VALUES (186, 'Великий Новгород', 'Новгородская область', '58.5213888888889', '31.2755555555556');
INSERT INTO public.city
VALUES (187, 'Великий Устюг', 'Вологодская область', '60.7602777777778', '46.3055555555556');
INSERT INTO public.city
VALUES (188, 'Вельск', 'Архангельская область', '61.0658333333333', '42.1033333333333');
INSERT INTO public.city
VALUES (189, 'Венев', 'Тульская область', '54.3541666666667', '38.2644444444444');
INSERT INTO public.city
VALUES (190, 'Верещагино', 'Пермский край', '58.0797222222222', '54.6580555555556');
INSERT INTO public.city
VALUES (191, 'Верхнеднепровский', 'Смоленская область', '54.9813888888889', '33.345');
INSERT INTO public.city
VALUES (192, 'Верхний Тагил', 'Свердловская область', '57.3763888888889', '59.9516666666667');
INSERT INTO public.city
VALUES (193, 'Верхний Уфалей', 'Челябинская область', '56.0486111111111', '60.2319444444444');
INSERT INTO public.city
VALUES (194, 'Верхняя Пышма', 'Свердловская область', '56.9758333333333', '60.565');
INSERT INTO public.city
VALUES (195, 'Верхняя Салда', 'Свердловская область', '58.0466666666667', '60.5561111111111');
INSERT INTO public.city
VALUES (196, 'Видное', 'Московская область', '55.5572222222222', '37.7086111111111');
INSERT INTO public.city
VALUES (197, 'Вилюйск', 'Республика Саха (Якутия)', '63.75', '121.616666666667');
INSERT INTO public.city
VALUES (198, 'Вилючинск', 'Камчатский край', '52.9069444444444', '158.418333333333');
INSERT INTO public.city
VALUES (199, 'Винзили', 'Тюменская область', '56.9508333333333', '65.7652777777778');
INSERT INTO public.city
VALUES (200, 'Витязево', 'Краснодарский край', '45.0025', '37.2838888888889');
INSERT INTO public.city
VALUES (201, 'Вихоревка', 'Иркутская область', '56.1208333333333', '101.170277777778');
INSERT INTO public.city
VALUES (202, 'Вичуга', 'Ивановская область', '57.2138888888889', '41.9177777777778');
INSERT INTO public.city
VALUES (203, 'Владивосток', 'Приморский край', '43.1152777777778', '131.885277777778');
INSERT INTO public.city
VALUES (204, 'Владикавказ', 'Республика Северная Осетия - Алания', '43.0205555555556', '44.6819444444444');
INSERT INTO public.city
VALUES (205, 'Владимир', 'Владимирская область', '56.1333333333333', '40.4166666666667');
INSERT INTO public.city
VALUES (206, 'Власиха', 'Алтайский край', '53.2975', '83.5847222222222');
INSERT INTO public.city
VALUES (207, 'Власиха', 'Московская область', '55.6863888888889', '37.1916666666667');
INSERT INTO public.city
VALUES (208, 'Волгоград', 'Волгоградская область', '48.7105555555556', '44.5166666666667');
INSERT INTO public.city
VALUES (209, 'Волгодонск', 'Ростовская область', '47.5166666666667', '42.1983333333333');
INSERT INTO public.city
VALUES (210, 'Волгореченск', 'Костромская область', '57.4394444444444', '41.1575');
INSERT INTO public.city
VALUES (211, 'Волжск', 'Республика Марий Эл', '55.8622222222222', '48.3713888888889');
INSERT INTO public.city
VALUES (212, 'Волжский', 'Волгоградская область', '48.7977777777778', '44.7461111111111');
INSERT INTO public.city
VALUES (213, 'Вологда', 'Вологодская область', '59.2188888888889', '39.8933333333333');
INSERT INTO public.city
VALUES (214, 'Володарск', 'Нижегородская область', '56.2169444444444', '43.1597222222222');
INSERT INTO public.city
VALUES (215, 'Володарский', 'Астраханская область', '46.4044444444444', '48.5430555555556');
INSERT INTO public.city
VALUES (216, 'Волоколамск', 'Московская область', '56.0358333333333', '35.9586111111111');
INSERT INTO public.city
VALUES (217, 'Волоконовка', 'Белгородская область', '50.4841666666667', '37.8519444444444');
INSERT INTO public.city
VALUES (218, 'Волосово', 'Ленинградская область', '59.4472222222222', '29.4847222222222');
INSERT INTO public.city
VALUES (219, 'Волхов', 'Ленинградская область', '59.8183333333333', '32.3675');
INSERT INTO public.city
VALUES (220, 'Волчиха', 'Алтайский край', '52.0197222222222', '80.365');
INSERT INTO public.city
VALUES (221, 'Вольск', 'Саратовская область', '52.0458333333333', '47.3872222222222');
INSERT INTO public.city
VALUES (222, 'Воргашор', 'Республика Коми', '67.5877777777778', '63.7969444444444');
INSERT INTO public.city
VALUES (223, 'Воркута', 'Республика Коми', '67.4975', '64.0608333333333');
INSERT INTO public.city
VALUES (224, 'Воронеж', 'Воронежская область', '51.6616666666667', '39.2002777777778');
INSERT INTO public.city
VALUES (225, 'Воротынск', 'Калужская область', '54.4716666666667', '36.0466666666667');
INSERT INTO public.city
VALUES (226, 'Ворсма', 'Нижегородская область', '55.99', '43.2719444444444');
INSERT INTO public.city
VALUES (227, 'Воскресенск', 'Московская область', '55.3230555555556', '38.6733333333333');
INSERT INTO public.city
VALUES (228, 'Воткинск', 'Удмуртская республика', '57.0525', '53.9905555555556');
INSERT INTO public.city
VALUES (229, 'Всеволожск', 'Ленинградская область', '60.0191666666667', '30.6455555555556');
INSERT INTO public.city
VALUES (230, 'Выборг', 'Ленинградская область', '60.7144444444444', '28.7572222222222');
INSERT INTO public.city
VALUES (231, 'Выкса', 'Нижегородская область', '55.3205555555556', '42.1680555555556');
INSERT INTO public.city
VALUES (232, 'Выльгорт', 'Республика Коми', '61.6222222222222', '50.7527777777778');
INSERT INTO public.city
VALUES (233, 'Вырица', 'Ленинградская область', '59.4155555555556', '30.3330555555556');
INSERT INTO public.city
VALUES (234, 'Выселки', 'Краснодарский край', '45.5780555555556', '39.6569444444444');
INSERT INTO public.city
VALUES (235, 'Высокая Гора', 'Республика Татарстан', '55.9122222222222', '49.3127777777778');
INSERT INTO public.city
VALUES (236, 'Высоковск', 'Московская область', '56.3202777777778', '36.5511111111111');
INSERT INTO public.city
VALUES (237, 'Вытегра', 'Вологодская область', '61.0063888888889', '36.4494444444444');
INSERT INTO public.city
VALUES (238, 'Вычегодский', 'Архангельская область', '61.2486111111111', '46.8838888888889');
INSERT INTO public.city
VALUES (239, 'Вышний Волочек', 'Тверская область', '57.5683333333333', '34.5402777777778');
INSERT INTO public.city
VALUES (240, 'Вяземский', 'Хабаровский край', '47.5352777777778', '134.755277777778');
INSERT INTO public.city
VALUES (241, 'Вязники', 'Владимирская область', '56.2469444444444', '42.1588888888889');
INSERT INTO public.city
VALUES (242, 'Вязьма', 'Смоленская область', '55.2058333333333', '34.2980555555556');
INSERT INTO public.city
VALUES (243, 'Вятские Поляны', 'Кировская область', '56.2286111111111', '51.0613888888889');
INSERT INTO public.city
VALUES (244, 'Гаврилов-Ям', 'Ярославская область', '57.3033333333333', '39.8491666666667');
INSERT INTO public.city
VALUES (245, 'Гагарин', 'Смоленская область', '55.5533333333333', '34.9969444444444');
INSERT INTO public.city
VALUES (246, 'Гай', 'Оренбургская область', '51.465', '58.4436111111111');
INSERT INTO public.city
VALUES (247, 'Гайдук', 'Краснодарский край', '44.7836111111111', '37.6991666666667');
INSERT INTO public.city
VALUES (248, 'Галич', 'Костромская область', '58.3811111111111', '42.3472222222222');
INSERT INTO public.city
VALUES (249, 'Гамурзиевский округ', 'Республика Ингушетия', '43.2333333333333', '44.8002777777778');
INSERT INTO public.city
VALUES (250, 'Гаспра', 'Республика Крым', '44.4305555555556', '34.1091666666667');
INSERT INTO public.city
VALUES (251, 'Гатчина', 'Ленинградская область', '59.5652777777778', '30.1280555555556');
INSERT INTO public.city
VALUES (252, 'Гвардейск', 'Калининградская область', '54.6544444444444', '21.0702777777778');
INSERT INTO public.city
VALUES (253, 'Гвардейское', 'Республика Крым', '45.1158333333333', '34.0141666666667');
INSERT INTO public.city
VALUES (254, 'Гелдаган', 'Чеченская республика', '43.2141666666667', '46.0394444444444');
INSERT INTO public.city
VALUES (255, 'Геленджик', 'Краснодарский край', '44.5630555555556', '38.0791666666667');
INSERT INTO public.city
VALUES (256, 'Георгиевск', 'Ставропольский край', '44.1486111111111', '43.4738888888889');
INSERT INTO public.city
VALUES (257, 'Герменчук', 'Чеченская республика', '43.19', '45.92');
INSERT INTO public.city
VALUES (258, 'Гехи', 'Чеченская республика', '43.1713888888889', '45.4611111111111');
INSERT INTO public.city
VALUES (259, 'Гиагинская', 'Республика Адыгея', '44.8761111111111', '40.0594444444444');
INSERT INTO public.city
VALUES (260, 'Гиагинское', 'Республика Адыгея', '44.8761111111111', '40.0519444444444');
INSERT INTO public.city
VALUES (261, 'Гигант', 'Ростовская область', '46.5061111111111', '41.3386111111111');
INSERT INTO public.city
VALUES (262, 'Гикало', 'Чеченская республика', '43.2244444444444', '45.7319444444444');
INSERT INTO public.city
VALUES (263, 'Глазов', 'Удмуртская республика', '58.14', '52.6463888888889');
INSERT INTO public.city
VALUES (264, 'Гойты', 'Чеченская республика', '43.1633333333333', '45.6311111111111');
INSERT INTO public.city
VALUES (265, 'Голицыно', 'Московская область', '55.6144444444444', '36.9833333333333');
INSERT INTO public.city
VALUES (266, 'Голышманово', 'Тюменская область', '56.3958333333333', '68.3752777777778');
INSERT INTO public.city
VALUES (267, 'Горно-Алтайск', 'Республика Алтай', '51.9580555555556', '85.9602777777778');
INSERT INTO public.city
VALUES (268, 'Горнозаводск', 'Пермский край', '58.3747222222222', '58.3308333333333');
INSERT INTO public.city
VALUES (269, 'Горный', 'Забайкальский край', '51.5797222222222', '113.045833333333');
INSERT INTO public.city
VALUES (270, 'Горняк', 'Алтайский край', '50.9977777777778', '81.4641666666667');
INSERT INTO public.city
VALUES (271, 'Городец', 'Нижегородская область', '56.6447222222222', '43.4722222222222');
INSERT INTO public.city
VALUES (272, 'Городище', 'Волгоградская область', '48.8097222222222', '44.4761111111111');
INSERT INTO public.city
VALUES (273, 'Гороховец', 'Владимирская область', '56.2016666666667', '42.6911111111111');
INSERT INTO public.city
VALUES (274, 'Горячеводский', 'Ставропольский край', '44.0236111111111', '43.0972222222222');
INSERT INTO public.city
VALUES (275, 'Горячий Ключ', 'Краснодарский край', '44.6344444444444', '39.1355555555556');
INSERT INTO public.city
VALUES (276, 'Гостагаевская', 'Краснодарский край', '45.0225', '37.5041666666667');
INSERT INTO public.city
VALUES (277, 'Грамотеино', 'Кемеровская область', '54.5163888888889', '86.3733333333333');
INSERT INTO public.city
VALUES (278, 'Грибановский', 'Воронежская область', '51.4513888888889', '41.9619444444444');
INSERT INTO public.city
VALUES (279, 'Грозный', 'Чеченская республика', '43.3177777777778', '45.695');
INSERT INTO public.city
VALUES (280, 'Грязи', 'Липецкая область', '52.4836111111111', '39.9577777777778');
INSERT INTO public.city
VALUES (281, 'Грязовец', 'Вологодская область', '58.8758333333333', '40.2486111111111');
INSERT INTO public.city
VALUES (282, 'Губаха', 'Пермский край', '58.8369444444444', '57.5544444444444');
INSERT INTO public.city
VALUES (283, 'Губкин', 'Белгородская область', '51.2836111111111', '37.5347222222222');
INSERT INTO public.city
VALUES (284, 'Губкинский', 'Ямало-Ненецкий автономный округ', '64.4325', '76.5005555555556');
INSERT INTO public.city
VALUES (285, 'Гудермес', 'Чеченская республика', '43.3519444444444', '46.1036111111111');
INSERT INTO public.city
VALUES (286, 'Гуково', 'Ростовская область', '48.0583333333333', '39.9402777777778');
INSERT INTO public.city
VALUES (287, 'Гулькевичи', 'Краснодарский край', '45.3583333333333', '40.6963888888889');
INSERT INTO public.city
VALUES (288, 'Гурьевск', 'Калининградская область', '54.7705555555556', '20.6038888888889');
INSERT INTO public.city
VALUES (289, 'Гурьевск', 'Кемеровская область', '54.2858333333333', '85.9475');
INSERT INTO public.city
VALUES (290, 'Гусев', 'Калининградская область', '54.5919444444444', '22.2011111111111');
INSERT INTO public.city
VALUES (291, 'Гусиноозерск', 'Республика Бурятия', '51.2866666666667', '106.523055555556');
INSERT INTO public.city
VALUES (292, 'Гусь-Хрустальный', 'Владимирская область', '55.6197222222222', '40.6577777777778');
INSERT INTO public.city
VALUES (293, 'Давлеканово', 'Республика Башкортостан', '54.2227777777778', '55.0313888888889');
INSERT INTO public.city
VALUES (294, 'Давыдово', 'Московская область', '55.6075', '38.8580555555556');
INSERT INTO public.city
VALUES (295, 'Дагестанские Огни', 'Республика Дагестан', '42.1152777777778', '48.1938888888889');
INSERT INTO public.city
VALUES (296, 'Дагомыс', 'Краснодарский край', '43.6602777777778', '39.6575');
INSERT INTO public.city
VALUES (297, 'Далматово', 'Курганская область', '56.2619444444444', '62.9388888888889');
INSERT INTO public.city
VALUES (298, 'Дальнегорск', 'Приморский край', '44.5538888888889', '135.566111111111');
INSERT INTO public.city
VALUES (299, 'Дальнереченск', 'Приморский край', '45.9308333333333', '133.731666666667');
INSERT INTO public.city
VALUES (300, 'Данилов', 'Ярославская область', '58.1877777777778', '40.1747222222222');
INSERT INTO public.city
VALUES (301, 'Данков', 'Липецкая область', '53.2444444444444', '39.1416666666667');
INSERT INTO public.city
VALUES (302, 'Дегтярск', 'Свердловская область', '56.6983333333333', '60.0866666666667');
INSERT INTO public.city
VALUES (303, 'Дедовск', 'Московская область', '55.86', '37.1205555555556');
INSERT INTO public.city
VALUES (304, 'Демский', 'Республика Башкортостан', '54.6988888888889', '55.9169444444444');
INSERT INTO public.city
VALUES (305, 'Дербент', 'Республика Дагестан', '42.0577777777778', '48.2888888888889');
INSERT INTO public.city
VALUES (306, 'Десногорск', 'Смоленская область', '54.1463888888889', '33.2833333333333');
INSERT INTO public.city
VALUES (307, 'Джалиль', 'Республика Татарстан', '55.0219444444444', '52.7388888888889');
INSERT INTO public.city
VALUES (308, 'Джанкой', 'Республика Крым', '45.7091666666667', '34.3883333333333');
INSERT INTO public.city
VALUES (309, 'Дзержинск', 'Нижегородская область', '56.2383333333333', '43.4616666666667');
INSERT INTO public.city
VALUES (310, 'Дзержинский', 'Московская область', '55.6308333333333', '37.8497222222222');
INSERT INTO public.city
VALUES (311, 'Дивногорск', 'Красноярский край', '55.9577777777778', '92.38');
INSERT INTO public.city
VALUES (312, 'Дивное', 'Ставропольский край', '45.9069444444444', '43.3483333333333');
INSERT INTO public.city
VALUES (313, 'Дигора', 'Республика Северная Осетия - Алания', '43.1566666666667', '44.155');
INSERT INTO public.city
VALUES (314, 'Димитровград', 'Ульяновская область', '54.2188888888889', '49.6038888888889');
INSERT INTO public.city
VALUES (315, 'Динская', 'Краснодарский край', '45.2133333333333', '39.2291666666667');
INSERT INTO public.city
VALUES (316, 'Дмитров', 'Московская область', '56.345', '37.5183333333333');
INSERT INTO public.city
VALUES (317, 'Добрянка', 'Пермский край', '58.4697222222222', '56.4130555555556');
INSERT INTO public.city
VALUES (318, 'Долгопрудный', 'Московская область', '55.9336111111111', '37.5144444444444');
INSERT INTO public.city
VALUES (319, 'Долинск', 'Сахалинская область', '47.3261111111111', '142.793333333333');
INSERT INTO public.city
VALUES (320, 'Домодедово', 'Московская область', '55.4369444444444', '37.7675');
INSERT INTO public.city
VALUES (321, 'Донецк', 'Ростовская область', '48.335', '39.9461111111111');
INSERT INTO public.city
VALUES (322, 'Донское', 'Ставропольский край', '45.4547222222222', '41.9755555555556');
INSERT INTO public.city
VALUES (323, 'Донской', 'Тульская область', '53.9677777777778', '38.3372222222222');
INSERT INTO public.city
VALUES (324, 'Дорогобуж', 'Смоленская область', '54.9138888888889', '33.3025');
INSERT INTO public.city
VALUES (325, 'Дрезна', 'Московская область', '55.7413888888889', '38.8425');
INSERT INTO public.city
VALUES (326, 'Дубна', 'Московская область', '56.7438888888889', '37.1730555555556');
INSERT INTO public.city
VALUES (327, 'Дубовка', 'Волгоградская область', '49.0555555555556', '44.8269444444444');
INSERT INTO public.city
VALUES (328, 'Дубовое', 'Белгородская область', '50.5372222222222', '36.5658333333333');
INSERT INTO public.city
VALUES (329, 'Дудинка', 'Красноярский край', '69.4055555555556', '86.1777777777778');
INSERT INTO public.city
VALUES (330, 'Дыгулыбгей', 'Кабардино-Балкарская республика', '43.6605555555556', '43.54');
INSERT INTO public.city
VALUES (331, 'Дюртюли', 'Республика Башкортостан', '55.4852777777778', '54.8733333333333');
INSERT INTO public.city
VALUES (332, 'Дятьково', 'Брянская область', '53.5972222222222', '34.3397222222222');
INSERT INTO public.city
VALUES (333, 'Евпатория', 'Республика Крым', '45.1905555555556', '33.3669444444444');
INSERT INTO public.city
VALUES (334, 'Егорлыкская', 'Ростовская область', '46.5652777777778', '40.6608333333333');
INSERT INTO public.city
VALUES (335, 'Егорьевск', 'Московская область', '55.3830555555556', '39.0358333333333');
INSERT INTO public.city
VALUES (336, 'Ейск', 'Краснодарский край', '46.7105555555556', '38.2777777777778');
INSERT INTO public.city
VALUES (337, 'Екатеринбург', 'Свердловская область', '56.8386111111111', '60.6055555555556');
INSERT INTO public.city
VALUES (338, 'Елабуга', 'Республика Татарстан', '55.7566666666667', '52.0544444444444');
INSERT INTO public.city
VALUES (339, 'Еланский', 'Свердловская область', '56.8452777777778', '62.4933333333333');
INSERT INTO public.city
VALUES (340, 'Елань', 'Волгоградская область', '50.95', '43.7347222222222');
INSERT INTO public.city
VALUES (341, 'Елец', 'Липецкая область', '52.6191666666667', '38.5');
INSERT INTO public.city
VALUES (342, 'Елизаветинская', 'Краснодарский край', '45.0483333333333', '38.8');
INSERT INTO public.city
VALUES (343, 'Елизово', 'Камчатский край', '53.1830555555556', '158.388333333333');
INSERT INTO public.city
VALUES (344, 'Ельня', 'Смоленская область', '54.5761111111111', '33.1794444444444');
INSERT INTO public.city
VALUES (345, 'Еманжелинск', 'Челябинская область', '54.7522222222222', '61.3172222222222');
INSERT INTO public.city
VALUES (346, 'Емва', 'Республика Коми', '62.5983333333333', '50.8863888888889');
INSERT INTO public.city
VALUES (347, 'Емельяново', 'Красноярский край', '56.1672222222222', '92.6883333333333');
INSERT INTO public.city
VALUES (348, 'Енисейск', 'Красноярский край', '58.4486111111111', '92.1652777777778');
INSERT INTO public.city
VALUES (349, 'Ермолино', 'Калужская область', '55.1972222222222', '36.5952777777778');
INSERT INTO public.city
VALUES (350, 'Ершов', 'Саратовская область', '51.3511111111111', '48.2736111111111');
INSERT INTO public.city
VALUES (351, 'Ессентуки', 'Ставропольский край', '44.0444444444444', '42.8588888888889');
INSERT INTO public.city
VALUES (352, 'Ессентукская', 'Ставропольский край', '44.0266666666667', '42.8763888888889');
INSERT INTO public.city
VALUES (353, 'Ефремов', 'Тульская область', '53.1419444444444', '38.1166666666667');
INSERT INTO public.city
VALUES (354, 'Жатай', 'Республика Саха (Якутия)', '62.1658333333333', '129.8375');
INSERT INTO public.city
VALUES (355, 'Железноводск', 'Ставропольский край', '44.1319444444444', '43.0305555555556');
INSERT INTO public.city
VALUES (356, 'Железногорск', 'Курская область', '52.3380555555556', '35.3516666666667');
INSERT INTO public.city
VALUES (357, 'Железногорск-Илимский', 'Иркутская область', '56.5847222222222', '104.114166666667');
INSERT INTO public.city
VALUES (358, 'Жердевка', 'Тамбовская область', '51.8422222222222', '41.4616666666667');
INSERT INTO public.city
VALUES (359, 'Жигулевск', 'Самарская область', '53.4011111111111', '49.4944444444444');
INSERT INTO public.city
VALUES (360, 'Жирновск', 'Волгоградская область', '50.9786111111111', '44.7788888888889');
INSERT INTO public.city
VALUES (361, 'Жуков', 'Калужская область', '55.0316666666667', '36.7463888888889');
INSERT INTO public.city
VALUES (362, 'Жуковка', 'Брянская область', '53.5352777777778', '33.7277777777778');
INSERT INTO public.city
VALUES (363, 'Жуковский', 'Московская область', '55.5977777777778', '38.1194444444444');
INSERT INTO public.city
VALUES (364, 'З.Я.Б.', 'Республика Татарстан', '55.7436111111111', '52.3958333333333');
INSERT INTO public.city
VALUES (365, 'Забайкальск', 'Забайкальский край', '49.6505555555556', '117.329166666667');
INSERT INTO public.city
VALUES (366, 'Завитинск', 'Амурская область', '50.1063888888889', '129.439444444444');
INSERT INTO public.city
VALUES (367, 'Заводоуковск', 'Тюменская область', '56.5008333333333', '66.5483333333333');
INSERT INTO public.city
VALUES (368, 'Заводской', 'Республика Северная Осетия - Алания', '43.0988888888889', '44.6508333333333');
INSERT INTO public.city
VALUES (369, 'Заволжск', 'Ивановская область', '57.4916666666667', '42.1375');
INSERT INTO public.city
VALUES (370, 'Заволжье', 'Нижегородская область', '56.6405555555556', '43.3872222222222');
INSERT INTO public.city
VALUES (371, 'Завьялово', 'Удмуртская республика', '56.7863888888889', '53.3741666666667');
INSERT INTO public.city
VALUES (372, 'Заинск', 'Республика Татарстан', '55.2988888888889', '52.0063888888889');
INSERT INTO public.city
VALUES (373, 'Закаменск', 'Республика Бурятия', '50.3727777777778', '103.286666666667');
INSERT INTO public.city
VALUES (374, 'Залесный', 'Республика Татарстан', '55.8480555555556', '48.8969444444444');
INSERT INTO public.city
VALUES (375, 'Заозерный', 'Красноярский край', '55.9602777777778', '94.7094444444444');
INSERT INTO public.city
VALUES (376, 'Заозерный', 'Курганская область', '55.4416666666667', '65.3444444444444');
INSERT INTO public.city
VALUES (377, 'Заозерск', 'Мурманская область', '69.4002777777778', '32.45');
INSERT INTO public.city
VALUES (378, 'Заполярный', 'Мурманская область', '69.4261111111111', '30.8202777777778');
INSERT INTO public.city
VALUES (379, 'Запрудня', 'Московская область', '56.5608333333333', '37.4336111111111');
INSERT INTO public.city
VALUES (380, 'Зарайск', 'Московская область', '54.7569444444444', '38.8747222222222');
INSERT INTO public.city
VALUES (381, 'Заречный', 'Свердловская область', '56.8102777777778', '61.3380555555556');
INSERT INTO public.city
VALUES (382, 'Заречный', 'Пензенская область', '53.1961111111111', '45.1691666666667');
INSERT INTO public.city
VALUES (383, 'Заринск', 'Алтайский край', '53.7063888888889', '84.9316666666667');
INSERT INTO public.city
VALUES (384, 'Засечное', 'Пензенская область', '53.1002777777778', '45.0888888888889');
INSERT INTO public.city
VALUES (385, 'ЗАТО Сибирский', 'Алтайский край', '53.5572222222222', '83.8391666666667');
INSERT INTO public.city
VALUES (386, 'Заюково', 'Кабардино-Балкарская республика', '43.6194444444444', '43.3477777777778');
INSERT INTO public.city
VALUES (387, 'Звенигово', 'Республика Марий Эл', '55.9738888888889', '48.0169444444444');
INSERT INTO public.city
VALUES (388, 'Звенигород', 'Московская область', '55.7297222222222', '36.8541666666667');
INSERT INTO public.city
VALUES (389, 'Зверево', 'Ростовская область', '48.0436111111111', '40.1263888888889');
INSERT INTO public.city
VALUES (390, 'Зеленоградск', 'Калининградская область', '54.96', '20.4752777777778');
INSERT INTO public.city
VALUES (391, 'Зеленодольск', 'Республика Татарстан', '55.8466666666667', '48.5011111111111');
INSERT INTO public.city
VALUES (392, 'Зеленокумск', 'Ставропольский край', '44.4033333333333', '43.8841666666667');
INSERT INTO public.city
VALUES (393, 'Зеленчукская', 'Карачаево-Черкесская республика', '43.8588888888889', '41.5902777777778');
INSERT INTO public.city
VALUES (394, 'Зерноград', 'Ростовская область', '46.8494444444444', '40.3127777777778');
INSERT INTO public.city
VALUES (395, 'Зея', 'Амурская область', '53.7341666666667', '127.265833333333');
INSERT INTO public.city
VALUES (396, 'Зима', 'Иркутская область', '53.9102777777778', '102.043333333333');
INSERT INTO public.city
VALUES (397, 'Зимовники', 'Ростовская область', '47.1452777777778', '42.4677777777778');
INSERT INTO public.city
VALUES (398, 'Златоуст', 'Челябинская область', '55.1713888888889', '59.6727777777778');
INSERT INTO public.city
VALUES (399, 'Змеиногорск', 'Алтайский край', '51.1580555555556', '82.1872222222222');
INSERT INTO public.city
VALUES (400, 'Знаменка', 'Орловская область', '52.8938888888889', '35.9797222222222');
INSERT INTO public.city
VALUES (401, 'Знаменск', 'Астраханская область', '48.5866666666667', '45.7369444444444');
INSERT INTO public.city
VALUES (402, 'Знаменское', 'Чеченская республика', '43.6777777777778', '45.125');
INSERT INTO public.city
VALUES (403, 'Зональная Станция', 'Томская область', '56.4269444444444', '85.0227777777778');
INSERT INTO public.city
VALUES (404, 'Зуевка', 'Кировская область', '58.4033333333333', '51.1333333333333');
INSERT INTO public.city
VALUES (405, 'Ивангород', 'Ленинградская область', '59.3766666666667', '28.2230555555556');
INSERT INTO public.city
VALUES (406, 'Иваново', 'Ивановская область', '57.0002777777778', '40.9738888888889');
INSERT INTO public.city
VALUES (407, 'Ивантеевка', 'Московская область', '55.97', '37.9175');
INSERT INTO public.city
VALUES (408, 'Ивдель', 'Свердловская область', '60.6944444444444', '60.4244444444444');
INSERT INTO public.city
VALUES (409, 'Иглино', 'Республика Башкортостан', '54.8413888888889', '56.4411111111111');
INSERT INTO public.city
VALUES (410, 'Игра', 'Удмуртская республика', '57.5466666666667', '53.0991666666667');
INSERT INTO public.city
VALUES (411, 'Ижевск', 'Удмуртская республика', '56.8497222222222', '53.2072222222222');
INSERT INTO public.city
VALUES (412, 'Избербаш', 'Республика Дагестан', '42.5652777777778', '47.8711111111111');
INSERT INTO public.city
VALUES (413, 'Излучинск', 'Ханты-Мансийский автономный округ - Югра', '60.9505555555556', '76.8772222222222');
INSERT INTO public.city
VALUES (414, 'Изобильный', 'Ставропольский край', '45.3686111111111', '41.7086111111111');
INSERT INTO public.city
VALUES (415, 'Иланский', 'Красноярский край', '56.2375', '96.0672222222222');
INSERT INTO public.city
VALUES (416, 'Илек', 'Оренбургская область', '51.5272222222222', '53.3894444444444');
INSERT INTO public.city
VALUES (417, 'Иловля', 'Волгоградская область', '49.3013888888889', '43.9827777777778');
INSERT INTO public.city
VALUES (418, 'Ильинский', 'Московская область', '55.6202777777778', '38.1055555555556');
INSERT INTO public.city
VALUES (419, 'Ильский', 'Краснодарский край', '44.8433333333333', '38.5686111111111');
INSERT INTO public.city
VALUES (420, 'Им Морозова', 'Ленинградская область', '59.9744444444444', '31.035');
INSERT INTO public.city
VALUES (421, 'Им Свердлова', 'Ленинградская область', '59.8097222222222', '30.6133333333333');
INSERT INTO public.city
VALUES (422, 'Инза', 'Ульяновская область', '53.8580555555556', '46.3572222222222');
INSERT INTO public.city
VALUES (423, 'Инкерман', 'Севастополь', '44.6144444444444', '33.6088888888889');
INSERT INTO public.city
VALUES (424, 'Иноземцево', 'Ставропольский край', '44.0972222222222', '43.0894444444444');
INSERT INTO public.city
VALUES (425, 'Инской', 'Кемеровская область', '54.4333333333333', '86.4283333333333');
INSERT INTO public.city
VALUES (426, 'Инта', 'Республика Коми', '66.0366666666667', '60.1152777777778');
INSERT INTO public.city
VALUES (427, 'Ипатово', 'Ставропольский край', '45.7183333333333', '42.8969444444444');
INSERT INTO public.city
VALUES (428, 'Ирбит', 'Свердловская область', '57.6838888888889', '63.0577777777778');
INSERT INTO public.city
VALUES (429, 'Иркутск', 'Иркутская область', '52.2863888888889', '104.280555555556');
INSERT INTO public.city
VALUES (430, 'Исилькуль', 'Омская область', '54.9091666666667', '71.2672222222222');
INSERT INTO public.city
VALUES (431, 'Искитим', 'Новосибирская область', '54.6425', '83.3063888888889');
INSERT INTO public.city
VALUES (432, 'Исламей', 'Кабардино-Балкарская республика', '43.6719444444444', '43.455');
INSERT INTO public.city
VALUES (433, 'Истра', 'Московская область', '55.9141666666667', '36.8605555555556');
INSERT INTO public.city
VALUES (434, 'Ишеевка', 'Ульяновская область', '54.43', '48.2569444444444');
INSERT INTO public.city
VALUES (435, 'Ишим', 'Тюменская область', '56.1108333333333', '69.4733333333333');
INSERT INTO public.city
VALUES (436, 'Ишимбай', 'Республика Башкортостан', '53.4180555555556', '56.04');
INSERT INTO public.city
VALUES (437, 'Йошкар-Ола', 'Республика Марий Эл', '56.6344444444444', '47.9');
INSERT INTO public.city
VALUES (438, 'Каа-Хем', 'Республика Тыва', '51.6972222222222', '94.5594444444444');
INSERT INTO public.city
VALUES (439, 'Кавалерово', 'Приморский край', '44.2688888888889', '135.053333333333');
INSERT INTO public.city
VALUES (440, 'Кавказская', 'Краснодарский край', '45.4436111111111', '40.6725');
INSERT INTO public.city
VALUES (441, 'Кадуй', 'Вологодская область', '59.1983333333333', '37.1502777777778');
INSERT INTO public.city
VALUES (442, 'Казанская', 'Краснодарский край', '45.4108333333333', '40.4352777777778');
INSERT INTO public.city
VALUES (443, 'Казань', 'Республика Татарстан', '55.7986111111111', '49.1063888888889');
INSERT INTO public.city
VALUES (444, 'Кайеркан', 'Красноярский край', '69.3522222222222', '87.7533333333333');
INSERT INTO public.city
VALUES (445, 'Калач', 'Воронежская область', '50.4241666666667', '41.0161111111111');
INSERT INTO public.city
VALUES (446, 'Калачинск', 'Омская область', '55.0516666666667', '74.5783333333333');
INSERT INTO public.city
VALUES (447, 'Калач-на-Дону', 'Волгоградская область', '48.6927777777778', '43.5241666666667');
INSERT INTO public.city
VALUES (448, 'Калининград', 'Калининградская область', '54.7', '20.45');
INSERT INTO public.city
VALUES (449, 'Калининец', 'Московская область', '55.56', '36.9819444444444');
INSERT INTO public.city
VALUES (450, 'Калинино', 'Краснодарский край', '45.0902777777778', '39.0172222222222');
INSERT INTO public.city
VALUES (451, 'Калининск', 'Саратовская область', '51.4994444444444', '44.4711111111111');
INSERT INTO public.city
VALUES (452, 'Калининская', 'Краснодарский край', '45.4855555555556', '38.6597222222222');
INSERT INTO public.city
VALUES (453, 'Калининский', 'Республика Башкортостан', '54.7641666666667', '56.1608333333333');
INSERT INTO public.city
VALUES (454, 'Калтан', 'Кемеровская область', '53.5211111111111', '87.2772222222222');
INSERT INTO public.city
VALUES (455, 'Калуга', 'Калужская область', '54.5358333333333', '36.2483333333333');
INSERT INTO public.city
VALUES (456, 'Калязин', 'Тверская область', '57.2402777777778', '37.855');
INSERT INTO public.city
VALUES (457, 'Камбарка', 'Удмуртская республика', '56.2652777777778', '54.1944444444444');
INSERT INTO public.city
VALUES (458, 'Каменка', 'Пензенская область', '53.1855555555556', '43.9947222222222');
INSERT INTO public.city
VALUES (459, 'Каменоломни', 'Ростовская область', '47.6661111111111', '40.2016666666667');
INSERT INTO public.city
VALUES (460, 'Каменск-Уральский', 'Свердловская область', '56.4138888888889', '61.9188888888889');
INSERT INTO public.city
VALUES (461, 'Каменск-Шахтинский', 'Ростовская область', '48.3205555555556', '40.2688888888889');
INSERT INTO public.city
VALUES (462, 'Камень-на-Оби', 'Алтайский край', '53.7913888888889', '81.3544444444444');
INSERT INTO public.city
VALUES (463, 'Камень-Рыболов', 'Приморский край', '44.7258333333333', '132.028888888889');
INSERT INTO public.city
VALUES (464, 'Камешково', 'Владимирская область', '56.3488888888889', '40.9955555555556');
INSERT INTO public.city
VALUES (465, 'Камские Поляны', 'Республика Татарстан', '55.4286111111111', '51.4136111111111');
INSERT INTO public.city
VALUES (466, 'Камызяк', 'Астраханская область', '46.1105555555556', '48.0733333333333');
INSERT INTO public.city
VALUES (467, 'Камышин', 'Волгоградская область', '50.0836111111111', '45.4072222222222');
INSERT INTO public.city
VALUES (468, 'Камышлов', 'Свердловская область', '56.8466666666667', '62.7119444444444');
INSERT INTO public.city
VALUES (469, 'Канаш', 'Чувашская республика', '55.5069444444444', '47.4916666666667');
INSERT INTO public.city
VALUES (470, 'Кандалакша', 'Мурманская область', '67.1566666666667', '32.4141666666667');
INSERT INTO public.city
VALUES (471, 'Кандры', 'Республика Башкортостан', '54.5527777777778', '54.1080555555556');
INSERT INTO public.city
VALUES (472, 'Каневская', 'Краснодарский край', '46.0791666666667', '38.9630555555556');
INSERT INTO public.city
VALUES (473, 'Канск', 'Красноярский край', '56.205', '95.705');
INSERT INTO public.city
VALUES (474, 'Кантемировка', 'Воронежская область', '49.7019444444444', '39.8541666666667');
INSERT INTO public.city
VALUES (475, 'Кантышево', 'Республика Ингушетия', '43.2277777777778', '44.65');
INSERT INTO public.city
VALUES (476, 'Карабаново', 'Владимирская область', '56.3133333333333', '38.7033333333333');
INSERT INTO public.city
VALUES (477, 'Карабаш', 'Челябинская область', '55.4852777777778', '60.2361111111111');
INSERT INTO public.city
VALUES (478, 'Карабудахкент', 'Республика Дагестан', '42.71', '47.5652777777778');
INSERT INTO public.city
VALUES (479, 'Карабулак', 'Республика Ингушетия', '43.3102777777778', '44.9047222222222');
INSERT INTO public.city
VALUES (480, 'Карасук', 'Новосибирская область', '53.7341666666667', '78.0425');
INSERT INTO public.city
VALUES (481, 'Карачаевск', 'Карачаево-Черкесская республика', '43.7730555555556', '41.9144444444444');
INSERT INTO public.city
VALUES (482, 'Карачев', 'Брянская область', '53.1216666666667', '34.9827777777778');
INSERT INTO public.city
VALUES (483, 'Каргополь', 'Архангельская область', '61.5052777777778', '38.9472222222222');
INSERT INTO public.city
VALUES (484, 'Карпинск', 'Свердловская область', '59.7666666666667', '60.0011111111111');
INSERT INTO public.city
VALUES (485, 'Карталы', 'Челябинская область', '53.0536111111111', '60.6477777777778');
INSERT INTO public.city
VALUES (486, 'Карымское', 'Забайкальский край', '51.6255555555556', '114.338888888889');
INSERT INTO public.city
VALUES (487, 'Касимов', 'Рязанская область', '54.9372222222222', '41.3913888888889');
INSERT INTO public.city
VALUES (488, 'Касли', 'Челябинская область', '55.8869444444444', '60.7422222222222');
INSERT INTO public.city
VALUES (489, 'Каспийск', 'Республика Дагестан', '42.8916666666667', '47.6366666666667');
INSERT INTO public.city
VALUES (490, 'Касумкент', 'Республика Дагестан', '41.6772222222222', '48.1525');
INSERT INTO public.city
VALUES (491, 'Катав-Ивановск', 'Челябинская область', '54.7522222222222', '58.1983333333333');
INSERT INTO public.city
VALUES (492, 'Катайск', 'Курганская область', '56.2908333333333', '62.58');
INSERT INTO public.city
VALUES (493, 'Катар-Юрт', 'Чеченская республика', '43.1716666666667', '45.3691666666667');
INSERT INTO public.city
VALUES (494, 'Качканар', 'Свердловская область', '58.705', '59.4838888888889');
INSERT INTO public.city
VALUES (495, 'Кашин', 'Тверская область', '57.3583333333333', '37.6133333333333');
INSERT INTO public.city
VALUES (496, 'Кашира', 'Московская область', '54.8344444444444', '38.1511111111111');
INSERT INTO public.city
VALUES (497, 'Каякент', 'Республика Дагестан', '42.3861111111111', '47.9052777777778');
INSERT INTO public.city
VALUES (498, 'Кез', 'Удмуртская республика', '57.8963888888889', '53.7138888888889');
INSERT INTO public.city
VALUES (499, 'Кемерово', 'Кемеровская область', '55.3541666666667', '86.0897222222222');
INSERT INTO public.city
VALUES (500, 'Кемь', 'Республика Карелия', '64.9544444444444', '34.595');
INSERT INTO public.city
VALUES (501, 'Керчь', 'Республика Крым', '45.3561111111111', '36.4672222222222');
INSERT INTO public.city
VALUES (502, 'Кизел', 'Пермский край', '59.0494444444444', '57.6538888888889');
INSERT INTO public.city
VALUES (503, 'Кизилюрт', 'Республика Дагестан', '43.2047222222222', '46.8669444444444');
INSERT INTO public.city
VALUES (504, 'Кизляр', 'Республика Северная Осетия - Алания', '43.7022222222222', '44.5955555555556');
INSERT INTO public.city
VALUES (505, 'Кизляр', 'Республика Дагестан', '43.8475', '46.7116666666667');
INSERT INTO public.city
VALUES (506, 'Кимовск', 'Тульская область', '53.9697222222222', '38.5380555555556');
INSERT INTO public.city
VALUES (507, 'Кимры', 'Тверская область', '56.8733333333333', '37.3555555555556');
INSERT INTO public.city
VALUES (508, 'Кингисепп', 'Ленинградская область', '59.3741666666667', '28.6113888888889');
INSERT INTO public.city
VALUES (509, 'Кинель', 'Самарская область', '53.2211111111111', '50.6344444444444');
INSERT INTO public.city
VALUES (510, 'Кинель-Черкассы', 'Самарская область', '53.4677777777778', '51.5030555555556');
INSERT INTO public.city
VALUES (511, 'Кинешма', 'Ивановская область', '57.4425', '42.1688888888889');
INSERT INTO public.city
VALUES (512, 'Киреевск', 'Тульская область', '53.9319444444444', '37.9222222222222');
INSERT INTO public.city
VALUES (513, 'Киренск', 'Иркутская область', '57.7758333333333', '108.110833333333');
INSERT INTO public.city
VALUES (514, 'Киржач', 'Владимирская область', '56.1616666666667', '38.8719444444444');
INSERT INTO public.city
VALUES (515, 'Кириши', 'Ленинградская область', '59.4505555555556', '32.0152777777778');
INSERT INTO public.city
VALUES (516, 'Киров', 'Калужская область', '54.0791666666667', '34.3077777777778');
INSERT INTO public.city
VALUES (517, 'Киров', 'Кировская область', '58.6036111111111', '49.6638888888889');
INSERT INTO public.city
VALUES (518, 'Кировград', 'Свердловская область', '57.4325', '60.0627777777778');
INSERT INTO public.city
VALUES (519, 'Кирово-Чепецк', 'Кировская область', '58.5561111111111', '50.0316666666667');
INSERT INTO public.city
VALUES (520, 'Кировск', 'Ленинградская область', '59.8752777777778', '30.9813888888889');
INSERT INTO public.city
VALUES (521, 'Кировск', 'Мурманская область', '67.615', '33.6636111111111');
INSERT INTO public.city
VALUES (522, 'Кировский', 'Астраханская область', '46.3494444444444', '48.0638888888889');
INSERT INTO public.city
VALUES (523, 'Кировский', 'Республика Башкортостан', '54.6866666666667', '55.9808333333333');
INSERT INTO public.city
VALUES (524, 'Кировское', 'Республика Крым', '45.2233333333333', '35.2052777777778');
INSERT INTO public.city
VALUES (525, 'Кирс', 'Кировская область', '59.34', '52.2413888888889');
INSERT INTO public.city
VALUES (526, 'Кирсанов', 'Тамбовская область', '52.6505555555556', '42.7286111111111');
INSERT INTO public.city
VALUES (527, 'Киселевск', 'Кемеровская область', '54.0061111111111', '86.6366666666667');
INSERT INTO public.city
VALUES (528, 'Кисловодск', 'Ставропольский край', '43.9052777777778', '42.7166666666667');
INSERT INTO public.city
VALUES (529, 'Клетня', 'Брянская область', '53.3888888888889', '33.2166666666667');
INSERT INTO public.city
VALUES (530, 'Климово', 'Брянская область', '52.3794444444444', '32.1972222222222');
INSERT INTO public.city
VALUES (531, 'Климовск', 'Московская область', '55.375', '37.5388888888889');
INSERT INTO public.city
VALUES (532, 'Клин', 'Московская область', '56.3316666666667', '36.7286111111111');
INSERT INTO public.city
VALUES (533, 'Клинцы', 'Брянская область', '52.7527777777778', '32.2338888888889');
INSERT INTO public.city
VALUES (534, 'Ковдор', 'Мурманская область', '67.5627777777778', '30.4738888888889');
INSERT INTO public.city
VALUES (535, 'Ковров', 'Владимирская область', '56.3636111111111', '41.3111111111111');
INSERT INTO public.city
VALUES (536, 'Ковылкино', 'Республика Мордовия', '54.0391666666667', '43.9191666666667');
INSERT INTO public.city
VALUES (537, 'Когалым', 'Ханты-Мансийский автономный округ - Югра', '62.2638888888889', '74.4827777777778');
INSERT INTO public.city
VALUES (538, 'Кодинск', 'Красноярский край', '58.6033333333333', '99.1797222222222');
INSERT INTO public.city
VALUES (539, 'Козельск', 'Калужская область', '54.0347222222222', '35.7822222222222');
INSERT INTO public.city
VALUES (540, 'Козьмодемьянск', 'Республика Марий Эл', '56.3333333333333', '46.5466666666667');
INSERT INTO public.city
VALUES (541, 'Кола', 'Мурманская область', '68.8786111111111', '33.0261111111111');
INSERT INTO public.city
VALUES (542, 'Коломна', 'Московская область', '55.1030555555556', '38.7530555555556');
INSERT INTO public.city
VALUES (543, 'Колпашево', 'Томская область', '58.3113888888889', '82.9027777777778');
INSERT INTO public.city
VALUES (544, 'Колывань', 'Новосибирская область', '55.3088888888889', '82.7386111111111');
INSERT INTO public.city
VALUES (545, 'Кольцово', 'Свердловская область', '56.7622222222222', '60.8163888888889');
INSERT INTO public.city
VALUES (546, 'Кольцово', 'Новосибирская область', '54.9294444444444', '83.1677777777778');
INSERT INTO public.city
VALUES (547, 'Кольчугино', 'Владимирская область', '56.2938888888889', '39.3761111111111');
INSERT INTO public.city
VALUES (548, 'Коммунар', 'Ленинградская область', '59.6216666666667', '30.3936111111111');
INSERT INTO public.city
VALUES (549, 'Комсомольский', 'Республика Мордовия', '54.4405555555556', '45.8280555555556');
INSERT INTO public.city
VALUES (550, 'Комсомольск-на-Амуре', 'Хабаровский край', '50.55', '137.008055555556');
INSERT INTO public.city
VALUES (551, 'Конаково', 'Тверская область', '56.7133333333333', '36.7794444444444');
INSERT INTO public.city
VALUES (552, 'Кондопога', 'Республика Карелия', '62.2055555555556', '34.2461111111111');
INSERT INTO public.city
VALUES (553, 'Кондратово', 'Пермский край', '57.9838888888889', '56.1072222222222');
INSERT INTO public.city
VALUES (554, 'Кондрово', 'Калужская область', '54.8075', '35.9266666666667');
INSERT INTO public.city
VALUES (555, 'Коноша', 'Архангельская область', '60.9736111111111', '40.2566666666667');
INSERT INTO public.city
VALUES (556, 'Константиновск', 'Ростовская область', '47.5772222222222', '41.0966666666667');
INSERT INTO public.city
VALUES (557, 'Копейск', 'Челябинская область', '55.1166666666667', '61.6180555555556');
INSERT INTO public.city
VALUES (558, 'Кораблино', 'Рязанская область', '53.9247222222222', '40.0227777777778');
INSERT INTO public.city
VALUES (559, 'Кореновск', 'Краснодарский край', '45.4641666666667', '39.4588888888889');
INSERT INTO public.city
VALUES (560, 'Коркино', 'Челябинская область', '54.8925', '61.3930555555556');
INSERT INTO public.city
VALUES (561, 'Королев', 'Московская область', '55.9222222222222', '37.8544444444444');
INSERT INTO public.city
VALUES (562, 'Корсаков', 'Сахалинская область', '46.6338888888889', '142.780277777778');
INSERT INTO public.city
VALUES (563, 'Коряжма', 'Архангельская область', '61.3152777777778', '47.1597222222222');
INSERT INTO public.city
VALUES (564, 'Костомукша', 'Республика Карелия', '64.5891666666667', '30.6016666666667');
INSERT INTO public.city
VALUES (565, 'Кострома', 'Костромская область', '57.7677777777778', '40.9263888888889');
INSERT INTO public.city
VALUES (566, 'Котельники', 'Московская область', '55.6597222222222', '37.8633333333333');
INSERT INTO public.city
VALUES (567, 'Котельниково', 'Волгоградская область', '47.6316666666667', '43.1425');
INSERT INTO public.city
VALUES (568, 'Котельнич', 'Кировская область', '58.3033333333333', '48.3475');
INSERT INTO public.city
VALUES (569, 'Котлас', 'Архангельская область', '61.2522222222222', '46.6475');
INSERT INTO public.city
VALUES (570, 'Котово', 'Волгоградская область', '50.3219444444444', '44.8013888888889');
INSERT INTO public.city
VALUES (571, 'Котовск', 'Тамбовская область', '52.5930555555556', '41.5058333333333');
INSERT INTO public.city
VALUES (572, 'Кохма', 'Ивановская область', '56.9325', '41.0933333333333');
INSERT INTO public.city
VALUES (573, 'Коченево', 'Новосибирская область', '55.0188888888889', '82.2061111111111');
INSERT INTO public.city
VALUES (574, 'Кочубеевское', 'Ставропольский край', '44.6908333333333', '41.8241666666667');
INSERT INTO public.city
VALUES (575, 'Красково', 'Московская область', '55.6588888888889', '37.9883333333333');
INSERT INTO public.city
VALUES (576, 'Красноармейск', 'Саратовская область', '51.0236111111111', '45.695');
INSERT INTO public.city
VALUES (577, 'Красноармейск', 'Московская область', '56.1208333333333', '38.1405555555556');
INSERT INTO public.city
VALUES (578, 'Красновишерск', 'Пермский край', '60.4127777777778', '57.0833333333333');
INSERT INTO public.city
VALUES (579, 'Красногвардейское', 'Республика Адыгея', '45.1441666666667', '39.59');
INSERT INTO public.city
VALUES (580, 'Красногвардейское', 'Республика Крым', '45.4947222222222', '34.2944444444444');
INSERT INTO public.city
VALUES (581, 'Красногвардейское', 'Ставропольский край', '45.845', '41.5144444444444');
INSERT INTO public.city
VALUES (582, 'Красногорск', 'Московская область', '55.8319444444444', '37.3294444444444');
INSERT INTO public.city
VALUES (583, 'Красногорский', 'Челябинская область', '54.6055555555556', '61.2294444444444');
INSERT INTO public.city
VALUES (584, 'Краснодар', 'Краснодарский край', '45.0402777777778', '38.9761111111111');
INSERT INTO public.city
VALUES (585, 'Краснозаводск', 'Московская область', '56.4408333333333', '38.2319444444444');
INSERT INTO public.city
VALUES (586, 'Краснознаменск', 'Московская область', '55.5977777777778', '37.0394444444444');
INSERT INTO public.city
VALUES (587, 'Краснокаменск', 'Забайкальский край', '50.0930555555556', '118.0325');
INSERT INTO public.city
VALUES (588, 'Краснокамск', 'Пермский край', '58.0783333333333', '55.7363888888889');
INSERT INTO public.city
VALUES (589, 'Краснокумское', 'Ставропольский край', '44.1747222222222', '43.4966666666667');
INSERT INTO public.city
VALUES (590, 'Краснообск', 'Новосибирская область', '54.92', '82.9911111111111');
INSERT INTO public.city
VALUES (591, 'Краснооктябрьское', 'Республика Адыгея', '44.5763888888889', '40.0805555555556');
INSERT INTO public.city
VALUES (592, 'Красноперекопск', 'Республика Крым', '45.9536111111111', '33.7922222222222');
INSERT INTO public.city
VALUES (593, 'Краснослободск', 'Волгоградская область', '48.7066666666667', '44.5630555555556');
INSERT INTO public.city
VALUES (594, 'Краснотурьинск', 'Свердловская область', '59.7558333333333', '60.2061111111111');
INSERT INTO public.city
VALUES (595, 'Красноуральск', 'Свердловская область', '58.3486111111111', '60.0408333333333');
INSERT INTO public.city
VALUES (596, 'Красноуфимск', 'Свердловская область', '56.6177777777778', '57.7705555555556');
INSERT INTO public.city
VALUES (597, 'Красноярск', 'Красноярский край', '56.0105555555556', '92.8525');
INSERT INTO public.city
VALUES (598, 'Красный Кут', 'Саратовская область', '50.9513888888889', '46.9680555555556');
INSERT INTO public.city
VALUES (599, 'Красный Сулин', 'Ростовская область', '47.8947222222222', '40.0580555555556');
INSERT INTO public.city
VALUES (600, 'Красный Яр', 'Астраханская область', '46.5341666666667', '48.3491666666667');
INSERT INTO public.city
VALUES (601, 'Криводановка', 'Новосибирская область', '55.0816666666667', '82.6619444444444');
INSERT INTO public.city
VALUES (602, 'Кривянская', 'Ростовская область', '47.3952777777778', '40.1675');
INSERT INTO public.city
VALUES (603, 'Кропоткин', 'Краснодарский край', '45.4347222222222', '40.5761111111111');
INSERT INTO public.city
VALUES (604, 'Крыловская', 'Краснодарский край', '46.3208333333333', '39.955');
INSERT INTO public.city
VALUES (605, 'Крымск', 'Краснодарский край', '44.9344444444444', '37.9855555555556');
INSERT INTO public.city
VALUES (606, 'Кстово', 'Нижегородская область', '56.1505555555556', '44.2066666666667');
INSERT INTO public.city
VALUES (607, 'Кубинка', 'Московская область', '55.5619444444444', '36.7038888888889');
INSERT INTO public.city
VALUES (608, 'Кувандык', 'Оренбургская область', '51.4786111111111', '57.3611111111111');
INSERT INTO public.city
VALUES (609, 'Кугеси', 'Чувашская республика', '56.0313888888889', '47.2986111111111');
INSERT INTO public.city
VALUES (610, 'Кудрово', 'Ленинградская область', '59.9075', '30.5119444444444');
INSERT INTO public.city
VALUES (611, 'Кудымкар', 'Пермский край', '59.0144444444444', '54.6641666666667');
INSERT INTO public.city
VALUES (612, 'Кузнецк', 'Пензенская область', '53.1125', '46.6008333333333');
INSERT INTO public.city
VALUES (613, 'Кузьмоловский', 'Ленинградская область', '60.1086111111111', '30.4908333333333');
INSERT INTO public.city
VALUES (614, 'Куйбышев', 'Новосибирская область', '55.45', '78.3083333333333');
INSERT INTO public.city
VALUES (615, 'Кукмор', 'Республика Татарстан', '56.1861111111111', '50.8969444444444');
INSERT INTO public.city
VALUES (616, 'Кулебаки', 'Нижегородская область', '55.4297222222222', '42.5125');
INSERT INTO public.city
VALUES (617, 'Кулешовка', 'Ростовская область', '47.0772222222222', '39.5586111111111');
INSERT INTO public.city
VALUES (618, 'Кулунда', 'Алтайский край', '52.5661111111111', '78.9369444444444');
INSERT INTO public.city
VALUES (619, 'Кумертау', 'Республика Башкортостан', '52.7566666666667', '55.7969444444444');
INSERT INTO public.city
VALUES (620, 'Кунгур', 'Пермский край', '57.4283333333333', '56.9438888888889');
INSERT INTO public.city
VALUES (621, 'Купино', 'Новосибирская область', '54.3661111111111', '77.2972222222222');
INSERT INTO public.city
VALUES (622, 'Курагино', 'Красноярский край', '53.8886111111111', '92.6677777777778');
INSERT INTO public.city
VALUES (623, 'Курган', 'Курганская область', '55.4544444444444', '65.3219444444444');
INSERT INTO public.city
VALUES (624, 'Курганинск', 'Краснодарский край', '44.8877777777778', '40.5913888888889');
INSERT INTO public.city
VALUES (625, 'Куровское', 'Московская область', '55.5791666666667', '38.9208333333333');
INSERT INTO public.city
VALUES (626, 'Курсавка', 'Ставропольский край', '44.4533333333333', '42.4930555555556');
INSERT INTO public.city
VALUES (627, 'Курск', 'Курская область', '51.7302777777778', '36.1927777777778');
INSERT INTO public.city
VALUES (628, 'Курская', 'Ставропольский край', '44.0425', '44.4625');
INSERT INTO public.city
VALUES (629, 'Куртамыш', 'Курганская область', '54.9125', '64.4336111111111');
INSERT INTO public.city
VALUES (630, 'Курчалой', 'Чеченская республика', '43.2019444444444', '46.0877777777778');
INSERT INTO public.city
VALUES (631, 'Курчатов', 'Курская область', '51.6605555555556', '35.6572222222222');
INSERT INTO public.city
VALUES (632, 'Куса', 'Челябинская область', '55.3386111111111', '59.4386111111111');
INSERT INTO public.city
VALUES (633, 'Кушва', 'Свердловская область', '58.2825', '59.7647222222222');
INSERT INTO public.city
VALUES (634, 'Кушнаренково', 'Республика Башкортостан', '55.1069444444444', '55.3419444444444');
INSERT INTO public.city
VALUES (635, 'Кущевская', 'Краснодарский край', '46.5569444444444', '39.6222222222222');
INSERT INTO public.city
VALUES (636, 'Кызыл', 'Республика Тыва', '51.7191666666667', '94.4377777777778');
INSERT INTO public.city
VALUES (637, 'Кыштым', 'Челябинская область', '55.7061111111111', '60.5563888888889');
INSERT INTO public.city
VALUES (638, 'Кяхта', 'Республика Бурятия', '50.3466666666667', '106.453333333333');
INSERT INTO public.city
VALUES (639, 'Лабинск', 'Краснодарский край', '44.6352777777778', '40.7244444444444');
INSERT INTO public.city
VALUES (640, 'Лабытнанги', 'Ямало-Ненецкий автономный округ', '66.6594444444444', '66.3883333333333');
INSERT INTO public.city
VALUES (641, 'Лагань', 'Республика Калмыкия', '45.3930555555556', '47.3433333333333');
INSERT INTO public.city
VALUES (642, 'Ладожская', 'Краснодарский край', '45.3077777777778', '39.9322222222222');
INSERT INTO public.city
VALUES (643, 'Лазаревское', 'Краснодарский край', '43.9141666666667', '39.3352777777778');
INSERT INTO public.city
VALUES (644, 'Лаишево', 'Республика Татарстан', '55.4044444444444', '49.55');
INSERT INTO public.city
VALUES (645, 'Лакинск', 'Владимирская область', '56.0180555555556', '39.9563888888889');
INSERT INTO public.city
VALUES (646, 'Лангепас', 'Ханты-Мансийский автономный округ - Югра', '61.2536111111111', '75.1808333333333');
INSERT INTO public.city
VALUES (647, 'Лебедянь', 'Липецкая область', '53.0205555555556', '39.1313888888889');
INSERT INTO public.city
VALUES (648, 'Лебяжье', 'Курганская область', '55.2719444444444', '66.495');
INSERT INTO public.city
VALUES (649, 'Леваши', 'Республика Дагестан', '42.4316666666667', '47.3230555555556');
INSERT INTO public.city
VALUES (650, 'Левокумское', 'Ставропольский край', '44.8227777777778', '44.66');
INSERT INTO public.city
VALUES (651, 'Ленина', 'Краснодарский край', '45.0175', '39.2105555555556');
INSERT INTO public.city
VALUES (652, 'Ленинаул', 'Республика Дагестан', '43.095', '46.5736111111111');
INSERT INTO public.city
VALUES (653, 'Ленинградская', 'Краснодарский край', '46.3194444444444', '39.3877777777778');
INSERT INTO public.city
VALUES (654, 'Ленинкент', 'Республика Дагестан', '42.9702777777778', '47.3536111111111');
INSERT INTO public.city
VALUES (655, 'Лениногорск', 'Республика Татарстан', '54.5966666666667', '52.4433333333333');
INSERT INTO public.city
VALUES (656, 'Ленинск', 'Волгоградская область', '48.6936111111111', '45.1991666666667');
INSERT INTO public.city
VALUES (657, 'Ленинский', 'Республика Башкортостан', '54.7641666666667', '55.8930555555556');
INSERT INTO public.city
VALUES (658, 'Ленинский', 'Астраханская область', '46.3944444444444', '48.1066666666667');
INSERT INTO public.city
VALUES (659, 'Ленинск-Кузнецкий', 'Кемеровская область', '54.6636111111111', '86.1622222222222');
INSERT INTO public.city
VALUES (660, 'Ленск', 'Республика Саха (Якутия)', '60.7244444444444', '114.928333333333');
INSERT INTO public.city
VALUES (661, 'Лермонтов', 'Ставропольский край', '44.1052777777778', '42.9730555555556');
INSERT INTO public.city
VALUES (662, 'Лесной', 'Свердловская область', '58.6355555555556', '59.7986111111111');
INSERT INTO public.city
VALUES (663, 'Лесозаводск', 'Приморский край', '45.4780555555556', '133.418611111111');
INSERT INTO public.city
VALUES (664, 'Лесосибирск', 'Красноярский край', '58.2216666666667', '92.5036111111111');
INSERT INTO public.city
VALUES (665, 'Ливны', 'Орловская область', '52.4266666666667', '37.6080555555556');
INSERT INTO public.city
VALUES (666, 'Ликино-Дулево', 'Московская область', '55.7077777777778', '38.9577777777778');
INSERT INTO public.city
VALUES (667, 'Линево', 'Новосибирская область', '54.4569444444444', '83.3816666666667');
INSERT INTO public.city
VALUES (668, 'Липецк', 'Липецкая область', '52.6041666666667', '39.5936111111111');
INSERT INTO public.city
VALUES (669, 'Лиски', 'Воронежская область', '50.9869444444444', '39.4977777777778');
INSERT INTO public.city
VALUES (670, 'Лихославль', 'Тверская область', '57.1222222222222', '35.4669444444444');
INSERT INTO public.city
VALUES (671, 'Лобня', 'Московская область', '56.0119444444444', '37.475');
INSERT INTO public.city
VALUES (672, 'Лодейное Поле', 'Ленинградская область', '60.7322222222222', '33.5522222222222');
INSERT INTO public.city
VALUES (673, 'Лосино-Петровский', 'Московская область', '55.8713888888889', '38.2005555555556');
INSERT INTO public.city
VALUES (674, 'Луга', 'Ленинградская область', '58.7325', '29.8491666666667');
INSERT INTO public.city
VALUES (675, 'Луза', 'Кировская область', '60.6291666666667', '47.2611111111111');
INSERT INTO public.city
VALUES (676, 'Лукоянов', 'Нижегородская область', '55.0327777777778', '44.4933333333333');
INSERT INTO public.city
VALUES (677, 'Луховицы', 'Московская область', '54.9652777777778', '39.0252777777778');
INSERT INTO public.city
VALUES (678, 'Лучегорск', 'Приморский край', '46.445', '134.296666666667');
INSERT INTO public.city
VALUES (679, 'Лысково', 'Нижегородская область', '56.0263888888889', '45.0358333333333');
INSERT INTO public.city
VALUES (680, 'Лысогорская', 'Ставропольский край', '44.105', '43.2747222222222');
INSERT INTO public.city
VALUES (681, 'Лысьва', 'Пермский край', '58.1002777777778', '57.8091666666667');
INSERT INTO public.city
VALUES (682, 'Лыткарино', 'Московская область', '55.5777777777778', '37.9033333333333');
INSERT INTO public.city
VALUES (683, 'Львовский', 'Московская область', '55.3130555555556', '37.5227777777778');
INSERT INTO public.city
VALUES (684, 'Льгов', 'Курская область', '51.6869444444444', '35.28');
INSERT INTO public.city
VALUES (685, 'Люберцы', 'Московская область', '55.6763888888889', '37.8980555555556');
INSERT INTO public.city
VALUES (686, 'Любинский', 'Омская область', '55.1541666666667', '72.6969444444444');
INSERT INTO public.city
VALUES (687, 'Людиново', 'Калужская область', '53.87', '34.4386111111111');
INSERT INTO public.city
VALUES (688, 'Лянтор', 'Ханты-Мансийский автономный округ - Югра', '61.6391666666667', '72.1794444444444');
INSERT INTO public.city
VALUES (689, 'Магадан', 'Магаданская область', '59.5605555555556', '150.798888888889');
INSERT INTO public.city
VALUES (690, 'Магас', 'Республика Ингушетия', '43.1675', '44.8091666666667');
INSERT INTO public.city
VALUES (691, 'Магнитогорск', 'Челябинская область', '53.4072222222222', '58.9791666666667');
INSERT INTO public.city
VALUES (692, 'Майкоп', 'Республика Адыгея', '44.6097222222222', '40.1005555555556');
INSERT INTO public.city
VALUES (693, 'Майма', 'Республика Алтай', '52.0036111111111', '85.8961111111111');
INSERT INTO public.city
VALUES (694, 'Майртуп', 'Чеченская республика', '43.2038888888889', '46.1311111111111');
INSERT INTO public.city
VALUES (695, 'Майский', 'Кабардино-Балкарская республика', '43.6283333333333', '44.0516666666667');
INSERT INTO public.city
VALUES (696, 'Малаховка', 'Московская область', '55.6425', '38.0094444444444');
INSERT INTO public.city
VALUES (697, 'Малая Вишера', 'Новгородская область', '58.8458333333333', '32.2177777777778');
INSERT INTO public.city
VALUES (698, 'Малгобек', 'Республика Ингушетия', '43.5058333333333', '44.5833333333333');
INSERT INTO public.city
VALUES (699, 'Малоярославец', 'Калужская область', '55.0119444444444', '36.4625');
INSERT INTO public.city
VALUES (700, 'Малые Дербышки', 'Республика Татарстан', '55.8619444444444', '49.1991666666667');
INSERT INTO public.city
VALUES (701, 'Мамадыш', 'Республика Татарстан', '55.715', '51.4127777777778');
INSERT INTO public.city
VALUES (702, 'Мамедкала', 'Республика Дагестан', '42.1708333333333', '48.1244444444444');
INSERT INTO public.city
VALUES (703, 'Мантурово', 'Костромская область', '58.3286111111111', '44.7572222222222');
INSERT INTO public.city
VALUES (704, 'Мариинск', 'Кемеровская область', '56.2091666666667', '87.735');
INSERT INTO public.city
VALUES (705, 'Маркова', 'Иркутская область', '52.2111111111111', '104.207777777778');
INSERT INTO public.city
VALUES (706, 'Маркс', 'Саратовская область', '51.7133333333333', '46.74');
INSERT INTO public.city
VALUES (707, 'Марьянская', 'Краснодарский край', '45.1044444444444', '38.6394444444444');
INSERT INTO public.city
VALUES (708, 'Маслянино', 'Новосибирская область', '54.3463888888889', '84.1822222222222');
INSERT INTO public.city
VALUES (709, 'Матвеев Курган', 'Ростовская область', '47.5683333333333', '38.8669444444444');
INSERT INTO public.city
VALUES (710, 'Махачкала', 'Республика Дагестан', '42.9830555555556', '47.5047222222222');
INSERT INTO public.city
VALUES (711, 'Мга', 'Ленинградская область', '59.7525', '31.0558333333333');
INSERT INTO public.city
VALUES (712, 'Мегион', 'Ханты-Мансийский автономный округ - Югра', '61.0319444444444', '76.1025');
INSERT INTO public.city
VALUES (713, 'Медведево', 'Республика Марий Эл', '56.6333333333333', '47.8033333333333');
INSERT INTO public.city
VALUES (714, 'Медведовская', 'Краснодарский край', '45.4525', '39.0166666666667');
INSERT INTO public.city
VALUES (715, 'Медвежьегорск', 'Республика Карелия', '62.915', '34.4730555555556');
INSERT INTO public.city
VALUES (716, 'Медногорск', 'Оренбургская область', '51.4038888888889', '57.5833333333333');
INSERT INTO public.city
VALUES (717, 'Межгорье', 'Республика Башкортостан', '54.0580555555556', '57.8311111111111');
INSERT INTO public.city
VALUES (718, 'Междуреченск', 'Кемеровская область', '53.6866666666667', '88.0702777777778');
INSERT INTO public.city
VALUES (719, 'Междуреченский', 'Ханты-Мансийский автономный округ - Югра', '59.5902777777778', '65.9091666666667');
INSERT INTO public.city
VALUES (720, 'Меленки', 'Владимирская область', '55.3386111111111', '41.6341666666667');
INSERT INTO public.city
VALUES (721, 'Мелеуз', 'Республика Башкортостан', '52.9588888888889', '55.9283333333333');
INSERT INTO public.city
VALUES (722, 'Менделеевск', 'Республика Татарстан', '55.8952777777778', '52.3144444444444');
INSERT INTO public.city
VALUES (723, 'Мензелинск', 'Республика Татарстан', '55.72', '53.1013888888889');
INSERT INTO public.city
VALUES (724, 'Мескер-Юрт', 'Чеченская республика', '43.2483333333333', '45.9127777777778');
INSERT INTO public.city
VALUES (725, 'Месягутово', 'Республика Башкортостан', '55.5172222222222', '58.2444444444444');
INSERT INTO public.city
VALUES (726, 'Миасс', 'Челябинская область', '55.0455555555556', '60.1077777777778');
INSERT INTO public.city
VALUES (727, 'Миллерово', 'Ростовская область', '48.9216666666667', '40.3966666666667');
INSERT INTO public.city
VALUES (728, 'Минеральные Воды', 'Ставропольский край', '44.2088888888889', '43.1383333333333');
INSERT INTO public.city
VALUES (729, 'Минусинск', 'Красноярский край', '53.7105555555556', '91.6872222222222');
INSERT INTO public.city
VALUES (730, 'Мирный', 'Архангельская область', '62.7644444444444', '40.3361111111111');
INSERT INTO public.city
VALUES (731, 'Мирный', 'Республика Саха (Якутия)', '62.5425', '113.984166666667');
INSERT INTO public.city
VALUES (732, 'Михайлов', 'Рязанская область', '54.2325', '39.0236111111111');
INSERT INTO public.city
VALUES (733, 'Михайловка', 'Волгоградская область', '50.0708333333333', '43.24');
INSERT INTO public.city
VALUES (734, 'Михайловск', 'Ставропольский край', '45.1297222222222', '42.0288888888889');
INSERT INTO public.city
VALUES (735, 'Михайловское', 'Алтайский край', '51.8188888888889', '79.7108333333333');
INSERT INTO public.city
VALUES (736, 'Михнево', 'Московская область', '55.1211111111111', '37.9588888888889');
INSERT INTO public.city
VALUES (737, 'Мичуринск', 'Тамбовская область', '52.8938888888889', '40.4980555555556');
INSERT INTO public.city
VALUES (738, 'Могойтуй', 'Забайкальский край', '51.2816666666667', '114.929722222222');
INSERT INTO public.city
VALUES (739, 'Могоча', 'Забайкальский край', '53.7361111111111', '119.766111111111');
INSERT INTO public.city
VALUES (740, 'Можайск', 'Московская область', '55.5066666666667', '36.0172222222222');
INSERT INTO public.city
VALUES (741, 'Можга', 'Удмуртская республика', '56.4427777777778', '52.2138888888889');
INSERT INTO public.city
VALUES (742, 'Моздок', 'Республика Северная Осетия - Алания', '43.7472222222222', '44.6569444444444');
INSERT INTO public.city
VALUES (743, 'Мокшан', 'Пензенская область', '53.4391666666667', '44.6052777777778');
INSERT INTO public.city
VALUES (744, 'Монино', 'Московская область', '55.8391666666667', '38.1944444444444');
INSERT INTO public.city
VALUES (745, 'Мончегорск', 'Мурманская область', '67.9383333333333', '32.9358333333333');
INSERT INTO public.city
VALUES (746, 'Морозовск', 'Ростовская область', '48.3511111111111', '41.8308333333333');
INSERT INTO public.city
VALUES (747, 'Моршанск', 'Тамбовская область', '53.4436111111111', '41.8116666666667');
INSERT INTO public.city
VALUES (748, 'Москаленки', 'Омская область', '54.9386111111111', '71.9275');
INSERT INTO public.city
VALUES (749, 'Москва', 'Московская область', '55.7538888888889', '37.6202777777778');
INSERT INTO public.city
VALUES (750, 'Мостовской', 'Краснодарский край', '44.4080555555556', '40.7938888888889');
INSERT INTO public.city
VALUES (751, 'Муравленко', 'Ямало-Ненецкий автономный округ', '63.7952777777778', '74.4944444444444');
INSERT INTO public.city
VALUES (752, 'Мурино', 'Ленинградская область', '60.0452777777778', '30.45');
INSERT INTO public.city
VALUES (753, 'Мурманск', 'Мурманская область', '68.9694444444444', '33.0744444444444');
INSERT INTO public.city
VALUES (754, 'Мурмаши', 'Мурманская область', '68.815', '32.8122222222222');
INSERT INTO public.city
VALUES (755, 'Муром', 'Владимирская область', '55.5791666666667', '42.0525');
INSERT INTO public.city
VALUES (756, 'Мценск', 'Орловская область', '53.2788888888889', '36.575');
INSERT INTO public.city
VALUES (757, 'Мыски', 'Кемеровская область', '53.7125', '87.8055555555556');
INSERT INTO public.city
VALUES (758, 'Мытищи', 'Московская область', '55.9094444444444', '37.7338888888889');
INSERT INTO public.city
VALUES (759, 'Набережные Челны', 'Республика Татарстан', '55.7436111111111', '52.3958333333333');
INSERT INTO public.city
VALUES (760, 'Навашино', 'Нижегородская область', '55.5438888888889', '42.1886111111111');
INSERT INTO public.city
VALUES (761, 'Навля', 'Брянская область', '52.83', '34.5066666666667');
INSERT INTO public.city
VALUES (762, 'Надежда', 'Ставропольский край', '45.0516666666667', '42.1063888888889');
INSERT INTO public.city
VALUES (763, 'Надым', 'Ямало-Ненецкий автономный округ', '65.5358333333333', '72.5313888888889');
INSERT INTO public.city
VALUES (764, 'Назарово', 'Красноярский край', '56.0125', '90.4177777777778');
INSERT INTO public.city
VALUES (765, 'Назрань', 'Республика Ингушетия', '43.2255555555556', '44.7711111111111');
INSERT INTO public.city
VALUES (766, 'Называевск', 'Омская область', '55.5688888888889', '71.3502777777778');
INSERT INTO public.city
VALUES (767, 'Нальчик', 'Кабардино-Балкарская республика', '43.4852777777778', '43.6069444444444');
INSERT INTO public.city
VALUES (768, 'Намцы', 'Республика Саха (Якутия)', '62.7186111111111', '129.665');
INSERT INTO public.city
VALUES (769, 'Нариманов', 'Астраханская область', '46.6902777777778', '47.8536111111111');
INSERT INTO public.city
VALUES (770, 'Наро-Фоминск', 'Московская область', '55.3861111111111', '36.7344444444444');
INSERT INTO public.city
VALUES (771, 'Нартан', 'Кабардино-Балкарская республика', '43.5055555555556', '43.7016666666667');
INSERT INTO public.city
VALUES (772, 'Нарткала', 'Кабардино-Балкарская республика', '43.5566666666667', '43.8619444444444');
INSERT INTO public.city
VALUES (773, 'Нарышкино', 'Орловская область', '52.9658333333333', '35.7255555555556');
INSERT INTO public.city
VALUES (774, 'Нарьян-Мар', 'Ненецкий автономный округ', '67.6380555555556', '53.0069444444444');
INSERT INTO public.city
VALUES (775, 'Насыр-Кортский округ', 'Республика Ингушетия', '43.2083333333333', '44.76');
INSERT INTO public.city
VALUES (776, 'Нахабино', 'Московская область', '55.8483333333333', '37.1872222222222');
INSERT INTO public.city
VALUES (777, 'Находка', 'Приморский край', '42.8241666666667', '132.892777777778');
INSERT INTO public.city
VALUES (778, 'Невель', 'Псковская область', '56.0202777777778', '29.9238888888889');
INSERT INTO public.city
VALUES (779, 'Невинномысск', 'Ставропольский край', '44.6383333333333', '41.9361111111111');
INSERT INTO public.city
VALUES (780, 'Невьянск', 'Свердловская область', '57.4911111111111', '60.2183333333333');
INSERT INTO public.city
VALUES (781, 'Незлобная', 'Ставропольский край', '44.1169444444444', '43.4086111111111');
INSERT INTO public.city
VALUES (782, 'Некрасовский', 'Московская область', '56.0866666666667', '37.4975');
INSERT INTO public.city
VALUES (783, 'Нелидово', 'Тверская область', '56.2233333333333', '32.7766666666667');
INSERT INTO public.city
VALUES (784, 'Неман', 'Калининградская область', '55.0316666666667', '22.0325');
INSERT INTO public.city
VALUES (785, 'Нерастанное', 'Московская область', '55.0708333333333', '37.6716666666667');
INSERT INTO public.city
VALUES (786, 'Нерехта', 'Костромская область', '57.4544444444444', '40.5725');
INSERT INTO public.city
VALUES (787, 'Нерюнгри', 'Республика Саха (Якутия)', '56.6611111111111', '124.718888888889');
INSERT INTO public.city
VALUES (788, 'Нестеровское', 'Республика Ингушетия', '43.2383333333333', '45.0480555555556');
INSERT INTO public.city
VALUES (789, 'Нефтегорск', 'Самарская область', '52.7972222222222', '51.1638888888889');
INSERT INTO public.city
VALUES (790, 'Нефтекамск', 'Республика Башкортостан', '56.0883333333333', '54.2480555555556');
INSERT INTO public.city
VALUES (791, 'Нефтекумск', 'Ставропольский край', '44.7544444444444', '44.9866666666667');
INSERT INTO public.city
VALUES (792, 'Нефтеюганск', 'Ханты-Мансийский автономный округ - Югра', '61.0997222222222', '72.6033333333333');
INSERT INTO public.city
VALUES (793, 'Нижневартовск', 'Ханты-Мансийский автономный округ - Югра', '60.9397222222222', '76.5697222222222');
INSERT INTO public.city
VALUES (794, 'Нижнее Казанище', 'Республика Дагестан', '42.7611111111111', '47.1616666666667');
INSERT INTO public.city
VALUES (795, 'Нижнекамск', 'Республика Татарстан', '55.6338888888889', '51.8091666666667');
INSERT INTO public.city
VALUES (796, 'Нижнесортымский', 'Ханты-Мансийский автономный округ - Югра', '62.4427777777778', '71.7652777777778');
INSERT INTO public.city
VALUES (797, 'Нижнеудинск', 'Иркутская область', '54.9011111111111', '99.0263888888889');
INSERT INTO public.city
VALUES (798, 'Нижний Ломов', 'Пензенская область', '53.53', '43.6736111111111');
INSERT INTO public.city
VALUES (799, 'Нижний Новгород', 'Нижегородская область', '56.3269444444444', '44.0061111111111');
INSERT INTO public.city
VALUES (800, 'Нижний Тагил', 'Свердловская область', '57.9075', '59.9722222222222');
INSERT INTO public.city
VALUES (801, 'Нижняя Салда', 'Свердловская область', '58.0747222222222', '60.7025');
INSERT INTO public.city
VALUES (802, 'Нижняя Тура', 'Свердловская область', '58.6311111111111', '59.8522222222222');
INSERT INTO public.city
VALUES (803, 'Никель', 'Мурманская область', '69.4105555555556', '30.2111111111111');
INSERT INTO public.city
VALUES (804, 'Николаевск', 'Волгоградская область', '50.0258333333333', '45.4591666666667');
INSERT INTO public.city
VALUES (805, 'Николаевск-на-Амуре', 'Хабаровский край', '53.1461111111111', '140.711111111111');
INSERT INTO public.city
VALUES (806, 'Никольск', 'Пензенская область', '53.7130555555556', '46.0827777777778');
INSERT INTO public.city
VALUES (807, 'Никольское', 'Ленинградская область', '59.7044444444444', '30.7875');
INSERT INTO public.city
VALUES (808, 'Новая Ляля', 'Свердловская область', '59.0538888888889', '60.5944444444444');
INSERT INTO public.city
VALUES (809, 'Новая Усмань', 'Воронежская область', '51.6438888888889', '39.4127777777778');
INSERT INTO public.city
VALUES (810, 'Новоалександровск', 'Ставропольский край', '45.4933333333333', '41.2152777777778');
INSERT INTO public.city
VALUES (811, 'Новоалтайск', 'Алтайский край', '53.4119444444444', '83.9311111111111');
INSERT INTO public.city
VALUES (812, 'Новоаннинский', 'Волгоградская область', '50.5297222222222', '42.6666666666667');
INSERT INTO public.city
VALUES (813, 'Нововеличковская', 'Краснодарский край', '45.2769444444444', '38.835');
INSERT INTO public.city
VALUES (814, 'Нововоронеж', 'Воронежская область', '51.3091666666667', '39.2163888888889');
INSERT INTO public.city
VALUES (815, 'Новодвинск', 'Архангельская область', '64.4136111111111', '40.8208333333333');
INSERT INTO public.city
VALUES (816, 'Новое Девяткино', 'Ленинградская область', '60.0997222222222', '30.8030555555556');
INSERT INTO public.city
VALUES (817, 'Новозыбков', 'Брянская область', '52.5366666666667', '31.9333333333333');
INSERT INTO public.city
VALUES (818, 'Новокубанск', 'Краснодарский край', '45.1038888888889', '41.0475');
INSERT INTO public.city
VALUES (819, 'Новокузнецк', 'Кемеровская область', '53.7575', '87.1361111111111');
INSERT INTO public.city
VALUES (820, 'Новокуйбышевск', 'Самарская область', '53.0994444444444', '49.9477777777778');
INSERT INTO public.city
VALUES (821, 'Новоминская', 'Краснодарский край', '46.3194444444444', '38.9580555555556');
INSERT INTO public.city
VALUES (822, 'Новомихайловский', 'Краснодарский край', '44.2533333333333', '38.8447222222222');
INSERT INTO public.city
VALUES (823, 'Новомичуринск', 'Рязанская область', '54.0377777777778', '39.7466666666667');
INSERT INTO public.city
VALUES (824, 'Новомосковск', 'Тульская область', '54.0111111111111', '38.2908333333333');
INSERT INTO public.city
VALUES (825, 'Новомышастовская', 'Краснодарский край', '45.1941666666667', '38.5866666666667');
INSERT INTO public.city
VALUES (826, 'Новоорск', 'Оренбургская область', '51.3816666666667', '58.9861111111111');
INSERT INTO public.city
VALUES (827, 'Новопавловск', 'Ставропольский край', '43.9575', '43.6319444444444');
INSERT INTO public.city
VALUES (828, 'Новопокровская', 'Краснодарский край', '45.9538888888889', '40.7069444444444');
INSERT INTO public.city
VALUES (829, 'Новороссийск', 'Краснодарский край', '44.7236111111111', '37.7686111111111');
INSERT INTO public.city
VALUES (830, 'Новосемейкино', 'Самарская область', '53.3766666666667', '50.3461111111111');
INSERT INTO public.city
VALUES (831, 'Новосергиевка', 'Оренбургская область', '52.0725', '53.6447222222222');
INSERT INTO public.city
VALUES (832, 'Новосибирск', 'Новосибирская область', '55.0283333333333', '82.9233333333333');
INSERT INTO public.city
VALUES (833, 'Новоспасское', 'Ульяновская область', '53.1480555555556', '47.7513888888889');
INSERT INTO public.city
VALUES (834, 'Новотитаровская', 'Краснодарский край', '45.2425', '38.9791666666667');
INSERT INTO public.city
VALUES (835, 'Новотроицк', 'Оренбургская область', '51.1963888888889', '58.3016666666667');
INSERT INTO public.city
VALUES (836, 'Новоузенск', 'Саратовская область', '50.4663888888889', '48.1322222222222');
INSERT INTO public.city
VALUES (837, 'Новоульяновск', 'Ульяновская область', '54.1447222222222', '48.3911111111111');
INSERT INTO public.city
VALUES (838, 'Новоуральск', 'Свердловская область', '57.2472222222222', '60.0955555555556');
INSERT INTO public.city
VALUES (839, 'Новочебоксарск', 'Чувашская республика', '56.1138888888889', '47.4869444444444');
INSERT INTO public.city
VALUES (840, 'Новочеркасск', 'Ростовская область', '47.4119444444444', '40.1041666666667');
INSERT INTO public.city
VALUES (841, 'Новошахтинск', 'Ростовская область', '47.7577777777778', '39.9363888888889');
INSERT INTO public.city
VALUES (842, 'Новый Городок', 'Кемеровская область', '54.3036111111111', '86.2936111111111');
INSERT INTO public.city
VALUES (843, 'Новый Кяхулай', 'Республика Дагестан', '42.9363888888889', '47.5194444444444');
INSERT INTO public.city
VALUES (844, 'Новый Оскол', 'Белгородская область', '50.7605555555556', '37.8647222222222');
INSERT INTO public.city
VALUES (845, 'Новый Уренгой', 'Ямало-Ненецкий автономный округ', '66.0838888888889', '76.6811111111111');
INSERT INTO public.city
VALUES (846, 'Новый Хушет', 'Республика Дагестан', '42.8994444444444', '47.5613888888889');
INSERT INTO public.city
VALUES (847, 'Ногинск', 'Московская область', '55.855', '38.4427777777778');
INSERT INTO public.city
VALUES (848, 'Ногинск-9', 'Московская область', '56.0741666666667', '38.5066666666667');
INSERT INTO public.city
VALUES (849, 'Ногир', 'Республика Северная Осетия - Алания', '43.0811111111111', '44.6361111111111');
INSERT INTO public.city
VALUES (850, 'Ноглики', 'Сахалинская область', '51.7902777777778', '143.129444444444');
INSERT INTO public.city
VALUES (851, 'Норильск', 'Красноярский край', '69.3491666666667', '88.2011111111111');
INSERT INTO public.city
VALUES (852, 'Ноябрьск', 'Ямало-Ненецкий автономный округ', '63.2016666666667', '75.4508333333333');
INSERT INTO public.city
VALUES (853, 'Нурлат', 'Республика Татарстан', '54.4280555555556', '50.805');
INSERT INTO public.city
VALUES (854, 'Нытва', 'Пермский край', '57.9391666666667', '55.3286111111111');
INSERT INTO public.city
VALUES (855, 'Нягань', 'Ханты-Мансийский автономный округ - Югра', '62.1455555555556', '65.3944444444444');
INSERT INTO public.city
VALUES (856, 'Нязепетровск', 'Челябинская область', '56.0536111111111', '59.6097222222222');
INSERT INTO public.city
VALUES (857, 'Няндома', 'Архангельская область', '61.6697222222222', '40.2044444444444');
INSERT INTO public.city
VALUES (858, 'Обнинск', 'Калужская область', '55.1119444444444', '36.5866666666667');
INSERT INTO public.city
VALUES (859, 'Обоянь', 'Курская область', '51.21', '36.2675');
INSERT INTO public.city
VALUES (860, 'Обь', 'Новосибирская область', '54.9947222222222', '82.6938888888889');
INSERT INTO public.city
VALUES (861, 'Одинцово', 'Московская область', '55.6788888888889', '37.2638888888889');
INSERT INTO public.city
VALUES (862, 'Ожерелье', 'Московская область', '54.7925', '38.2658333333333');
INSERT INTO public.city
VALUES (863, 'Озерный', 'Тверская область', '57.8694444444444', '33.6927777777778');
INSERT INTO public.city
VALUES (864, 'Озерск', 'Челябинская область', '55.7630555555556', '60.7075');
INSERT INTO public.city
VALUES (865, 'Озеры', 'Московская область', '54.8538888888889', '38.5597222222222');
INSERT INTO public.city
VALUES (866, 'Ойсхара', 'Чеченская республика', '43.2669444444444', '46.2533333333333');
INSERT INTO public.city
VALUES (867, 'Октябрьск', 'Самарская область', '53.1641666666667', '48.6705555555556');
INSERT INTO public.city
VALUES (868, 'Октябрьская', 'Краснодарский край', '46.2813888888889', '39.7941666666667');
INSERT INTO public.city
VALUES (869, 'Октябрьский', 'Московская область', '55.6111111111111', '37.9736111111111');
INSERT INTO public.city
VALUES (870, 'Октябрьский', 'Республика Башкортостан', '54.4813888888889', '53.4655555555556');
INSERT INTO public.city
VALUES (871, 'Октябрьское', 'Республика Северная Осетия - Алания', '43.0566666666667', '44.7480555555556');
INSERT INTO public.city
VALUES (872, 'Октябрьское', 'Республика Крым', '45.2922222222222', '34.1319444444444');
INSERT INTO public.city
VALUES (873, 'Окуловка', 'Новгородская область', '58.3908333333333', '33.2902777777778');
INSERT INTO public.city
VALUES (874, 'Оленегорск', 'Мурманская область', '68.1419444444444', '33.2669444444444');
INSERT INTO public.city
VALUES (875, 'Омск', 'Омская область', '54.9922222222222', '73.3683333333333');
INSERT INTO public.city
VALUES (876, 'Омутнинск', 'Кировская область', '58.6697222222222', '52.1894444444444');
INSERT INTO public.city
VALUES (877, 'Онега', 'Архангельская область', '63.9069444444444', '38.1002777777778');
INSERT INTO public.city
VALUES (878, 'Опочка', 'Псковская область', '56.7141666666667', '28.66');
INSERT INTO public.city
VALUES (879, 'Орджоникидзевская', 'Республика Ингушетия', '43.3197222222222', '45.0497222222222');
INSERT INTO public.city
VALUES (880, 'Орджоникидзевский', 'Республика Башкортостан', '54.8805555555556', '56.1113888888889');
INSERT INTO public.city
VALUES (881, 'Орёл', 'Орловская область', '52.9672222222222', '36.0697222222222');
INSERT INTO public.city
VALUES (882, 'Оренбург', 'Оренбургская область', '51.7683333333333', '55.0969444444444');
INSERT INTO public.city
VALUES (883, 'Орехово-Зуево', 'Московская область', '55.8091666666667', '38.9783333333333');
INSERT INTO public.city
VALUES (884, 'Орловский', 'Ростовская область', '46.8730555555556', '42.0555555555556');
INSERT INTO public.city
VALUES (885, 'Орск', 'Оренбургская область', '51.2294444444444', '58.4752777777778');
INSERT INTO public.city
VALUES (886, 'Оса', 'Пермский край', '57.2888888888889', '55.4691666666667');
INSERT INTO public.city
VALUES (887, 'Осинники', 'Кемеровская область', '53.5986111111111', '87.3369444444444');
INSERT INTO public.city
VALUES (888, 'Осташков', 'Тверская область', '57.1458333333333', '33.1116666666667');
INSERT INTO public.city
VALUES (889, 'Остров', 'Псковская область', '57.3452777777778', '28.3438888888889');
INSERT INTO public.city
VALUES (890, 'Острогожск', 'Воронежская область', '50.8602777777778', '39.0822222222222');
INSERT INTO public.city
VALUES (891, 'Отрадная', 'Краснодарский край', '44.3933333333333', '41.5155555555556');
INSERT INTO public.city
VALUES (892, 'Отрадное', 'Ленинградская область', '59.7725', '30.7988888888889');
INSERT INTO public.city
VALUES (893, 'Отрадный', 'Самарская область', '53.3761111111111', '51.3488888888889');
INSERT INTO public.city
VALUES (894, 'Оха', 'Сахалинская область', '53.5844444444444', '142.947222222222');
INSERT INTO public.city
VALUES (895, 'Очер', 'Пермский край', '57.8852777777778', '54.7161111111111');
INSERT INTO public.city
VALUES (896, 'Павлово', 'Нижегородская область', '55.9647222222222', '43.0644444444444');
INSERT INTO public.city
VALUES (897, 'Павловск', 'Алтайский край', '53.3283333333333', '82.9708333333333');
INSERT INTO public.city
VALUES (898, 'Павловск', 'Воронежская область', '50.4533333333333', '40.1369444444444');
INSERT INTO public.city
VALUES (899, 'Павловская', 'Краснодарский край', '46.1305555555556', '39.7908333333333');
INSERT INTO public.city
VALUES (900, 'Павловский Посад', 'Московская область', '55.7794444444444', '38.6513888888889');
INSERT INTO public.city
VALUES (901, 'Палласовка', 'Волгоградская область', '50.0502777777778', '46.8802777777778');
INSERT INTO public.city
VALUES (902, 'Пангоды', 'Ямало-Ненецкий автономный округ', '65.8580555555556', '74.4905555555556');
INSERT INTO public.city
VALUES (903, 'Партизанск', 'Приморский край', '43.1280555555556', '133.126388888889');
INSERT INTO public.city
VALUES (904, 'Пенза', 'Пензенская область', '53.2', '45');
INSERT INTO public.city
VALUES (905, 'Первомайск', 'Нижегородская область', '54.8675', '43.8013888888889');
INSERT INTO public.city
VALUES (906, 'Первомайский', 'Челябинская область', '54.8663888888889', '61.1702777777778');
INSERT INTO public.city
VALUES (907, 'Первомайский', 'Тамбовская область', '53.2497222222222', '40.2855555555556');
INSERT INTO public.city
VALUES (908, 'Первомайский', 'Забайкальский край', '51.6691666666667', '115.638333333333');
INSERT INTO public.city
VALUES (909, 'Первоуральск', 'Свердловская область', '56.9052777777778', '59.9433333333333');
INSERT INTO public.city
VALUES (910, 'Переволоцкий', 'Оренбургская область', '51.8755555555556', '54.1905555555556');
INSERT INTO public.city
VALUES (911, 'Пересвет', 'Московская область', '56.4161111111111', '38.1722222222222');
INSERT INTO public.city
VALUES (912, 'Переславль-Залесский', 'Ярославская область', '56.7361111111111', '38.8544444444444');
INSERT INTO public.city
VALUES (913, 'Пермь', 'Пермский край', '58.0102777777778', '56.2341666666667');
INSERT INTO public.city
VALUES (914, 'Першино', 'Челябинская область', '55.2344444444444', '61.3977777777778');
INSERT INTO public.city
VALUES (915, 'Пестово', 'Новгородская область', '58.5952777777778', '35.8005555555556');
INSERT INTO public.city
VALUES (916, 'Песчанокопское', 'Ростовская область', '46.1813888888889', '41.0772222222222');
INSERT INTO public.city
VALUES (917, 'Петров Вал', 'Волгоградская область', '50.1380555555556', '45.2091666666667');
INSERT INTO public.city
VALUES (918, 'Петровск', 'Саратовская область', '52.3138888888889', '45.39');
INSERT INTO public.city
VALUES (919, 'Петровская', 'Краснодарский край', '45.4302777777778', '37.9608333333333');
INSERT INTO public.city
VALUES (920, 'Петровск-Забайкальский', 'Забайкальский край', '51.275', '108.846666666667');
INSERT INTO public.city
VALUES (921, 'Петрозаводск', 'Республика Карелия', '61.7891666666667', '34.3597222222222');
INSERT INTO public.city
VALUES (922, 'Петропавловск-Камчатский', 'Камчатский край', '53.0369444444444', '158.655833333333');
INSERT INTO public.city
VALUES (923, 'Петухово', 'Курганская область', '55.065', '67.8875');
INSERT INTO public.city
VALUES (924, 'Петушки', 'Владимирская область', '55.9308333333333', '39.46');
INSERT INTO public.city
VALUES (925, 'Печора', 'Республика Коми', '65.1483333333333', '57.2238888888889');
INSERT INTO public.city
VALUES (926, 'Печоры', 'Псковская область', '57.8138888888889', '27.6091666666667');
INSERT INTO public.city
VALUES (927, 'Пикалево', 'Ленинградская область', '59.5130555555556', '34.1772222222222');
INSERT INTO public.city
VALUES (928, 'Пионерский', 'Калининградская область', '54.9516666666667', '20.2277777777778');
INSERT INTO public.city
VALUES (929, 'Пионерское', 'Республика Крым', '44.8758333333333', '34.2088888888889');
INSERT INTO public.city
VALUES (930, 'Питкяранта', 'Республика Карелия', '61.5730555555556', '31.4713888888889');
INSERT INTO public.city
VALUES (931, 'Плавск', 'Тульская область', '53.7097222222222', '37.2863888888889');
INSERT INTO public.city
VALUES (932, 'Пласт', 'Челябинская область', '54.3633333333333', '60.8083333333333');
INSERT INTO public.city
VALUES (933, 'Пластуновская', 'Краснодарский край', '45.2947222222222', '39.2655555555556');
INSERT INTO public.city
VALUES (934, 'Платнировская', 'Краснодарский край', '45.3913888888889', '39.3916666666667');
INSERT INTO public.city
VALUES (935, 'Плесецк', 'Архангельская область', '62.7105555555556', '40.2905555555556');
INSERT INTO public.city
VALUES (936, 'Плиево', 'Республика Ингушетия', '43.2852777777778', '44.8352777777778');
INSERT INTO public.city
VALUES (937, 'Поворино', 'Воронежская область', '51.1952777777778', '42.2472222222222');
INSERT INTO public.city
VALUES (938, 'Пограничный', 'Приморский край', '44.4080555555556', '131.379166666667');
INSERT INTO public.city
VALUES (939, 'Подольск', 'Московская область', '55.4311111111111', '37.5447222222222');
INSERT INTO public.city
VALUES (940, 'Подпорожье', 'Ленинградская область', '60.9127777777778', '34.1569444444444');
INSERT INTO public.city
VALUES (941, 'Подстепки', 'Самарская область', '53.5138888888889', '49.1338888888889');
INSERT INTO public.city
VALUES (942, 'Пойковский', 'Ханты-Мансийский автономный округ - Югра', '60.9983333333333', '71.9008333333333');
INSERT INTO public.city
VALUES (943, 'Покачи', 'Ханты-Мансийский автономный округ - Югра', '61.7422222222222', '75.5941666666667');
INSERT INTO public.city
VALUES (944, 'Покров', 'Владимирская область', '55.9166666666667', '39.1733333333333');
INSERT INTO public.city
VALUES (945, 'Покровка', 'Приморский край', '43.9508333333333', '131.635555555556');
INSERT INTO public.city
VALUES (946, 'Покровское', 'Ростовская область', '47.4025', '38.9094444444444');
INSERT INTO public.city
VALUES (947, 'Полазна', 'Пермский край', '58.2908333333333', '56.4130555555556');
INSERT INTO public.city
VALUES (948, 'Полевской', 'Свердловская область', '56.4958333333333', '60.2366666666667');
INSERT INTO public.city
VALUES (949, 'Полтавская', 'Краснодарский край', '45.3652777777778', '38.2108333333333');
INSERT INTO public.city
VALUES (950, 'Полысаево', 'Кемеровская область', '54.6055555555556', '86.2808333333333');
INSERT INTO public.city
VALUES (951, 'Полярные Зори', 'Мурманская область', '67.3727777777778', '32.4975');
INSERT INTO public.city
VALUES (952, 'Полярный', 'Мурманская область', '69.1988888888889', '33.4508333333333');
INSERT INTO public.city
VALUES (953, 'Поронайск', 'Сахалинская область', '49.2202777777778', '143.089444444444');
INSERT INTO public.city
VALUES (954, 'Поселье', 'Республика Бурятия', '51.8102777777778', '107.539722222222');
INSERT INTO public.city
VALUES (955, 'Поспелиха', 'Алтайский край', '51.9875', '81.8294444444444');
INSERT INTO public.city
VALUES (956, 'Похвистнево', 'Самарская область', '53.6497222222222', '52.1236111111111');
INSERT INTO public.city
VALUES (957, 'Почеп', 'Брянская область', '52.9291666666667', '33.4541666666667');
INSERT INTO public.city
VALUES (958, 'Починки', 'Нижегородская область', '54.6977777777778', '44.8619444444444');
INSERT INTO public.city
VALUES (959, 'Правдинский', 'Московская область', '56.0644444444444', '37.8622222222222');
INSERT INTO public.city
VALUES (960, 'Прасковея', 'Ставропольский край', '44.7447222222222', '44.2025');
INSERT INTO public.city
VALUES (961, 'Приволжск', 'Ивановская область', '57.3805555555556', '41.2808333333333');
INSERT INTO public.city
VALUES (962, 'Приволжский', 'Саратовская область', '51.4069444444444', '46.0466666666667');
INSERT INTO public.city
VALUES (963, 'Придорожный', 'Самарская область', '53.0858333333333', '50.1586111111111');
INSERT INTO public.city
VALUES (964, 'Приморский', 'Республика Крым', '45.1119444444444', '35.4783333333333');
INSERT INTO public.city
VALUES (965, 'Приморско-Ахтарск', 'Краснодарский край', '46.0516666666667', '38.1705555555556');
INSERT INTO public.city
VALUES (966, 'Приозерск', 'Ленинградская область', '61.0366666666667', '30.1197222222222');
INSERT INTO public.city
VALUES (967, 'Приютово', 'Республика Башкортостан', '53.8952777777778', '53.9369444444444');
INSERT INTO public.city
VALUES (968, 'Прокопьевск', 'Кемеровская область', '53.8844444444444', '86.75');
INSERT INTO public.city
VALUES (969, 'Пролетарск', 'Ростовская область', '46.7038888888889', '41.7275');
INSERT INTO public.city
VALUES (970, 'Промышленная', 'Кемеровская область', '54.9163888888889', '85.6377777777778');
INSERT INTO public.city
VALUES (971, 'Протвино', 'Московская область', '54.8705555555556', '37.2183333333333');
INSERT INTO public.city
VALUES (972, 'Прохладный', 'Кабардино-Балкарская республика', '43.7588888888889', '44.0102777777778');
INSERT INTO public.city
VALUES (973, 'Псебай', 'Краснодарский край', '44.1161111111111', '40.7986111111111');
INSERT INTO public.city
VALUES (974, 'Псков', 'Псковская область', '57.8175', '28.3344444444444');
INSERT INTO public.city
VALUES (975, 'Пугачев', 'Саратовская область', '52.0158333333333', '48.7972222222222');
INSERT INTO public.city
VALUES (976, 'Пушкино', 'Московская область', '56.0091666666667', '37.8527777777778');
INSERT INTO public.city
VALUES (977, 'Пущино', 'Московская область', '54.8325', '37.6211111111111');
INSERT INTO public.city
VALUES (978, 'Пыть-Ях', 'Ханты-Мансийский автономный округ - Югра', '60.7586111111111', '72.8363888888889');
INSERT INTO public.city
VALUES (979, 'Пятигорск', 'Ставропольский край', '44.0397222222222', '43.0708333333333');
INSERT INTO public.city
VALUES (980, 'Радужный', 'Владимирская область', '55.9961111111111', '40.3322222222222');
INSERT INTO public.city
VALUES (981, 'Радужный', 'Ханты-Мансийский автономный округ - Югра', '62.1341666666667', '77.4583333333333');
INSERT INTO public.city
VALUES (982, 'Раевская', 'Краснодарский край', '44.8363888888889', '37.5497222222222');
INSERT INTO public.city
VALUES (983, 'Раевский', 'Республика Башкортостан', '54.065', '54.9327777777778');
INSERT INTO public.city
VALUES (984, 'Разумное', 'Белгородская область', '50.5336111111111', '36.6894444444444');
INSERT INTO public.city
VALUES (985, 'Райчихинск', 'Амурская область', '49.7941666666667', '129.411388888889');
INSERT INTO public.city
VALUES (986, 'Ракитное', 'Белгородская область', '50.8341666666667', '35.8327777777778');
INSERT INTO public.city
VALUES (987, 'Раменское', 'Московская область', '55.5672222222222', '38.2258333333333');
INSERT INTO public.city
VALUES (988, 'Рассказово', 'Тамбовская область', '52.6538888888889', '41.8741666666667');
INSERT INTO public.city
VALUES (989, 'Ревда', 'Свердловская область', '56.8', '59.9086111111111');
INSERT INTO public.city
VALUES (990, 'Редкино', 'Тверская область', '56.6616666666667', '36.2963888888889');
INSERT INTO public.city
VALUES (991, 'Реж', 'Свердловская область', '57.3716666666667', '61.3833333333333');
INSERT INTO public.city
VALUES (992, 'Реутов', 'Московская область', '55.7605555555556', '37.8552777777778');
INSERT INTO public.city
VALUES (993, 'Рефтинский', 'Свердловская область', '57.0913888888889', '61.6744444444444');
INSERT INTO public.city
VALUES (994, 'Ржев', 'Тверская область', '56.2627777777778', '34.3291666666667');
INSERT INTO public.city
VALUES (995, 'Ровеньки', 'Белгородская область', '49.9291666666667', '38.8661111111111');
INSERT INTO public.city
VALUES (996, 'Родники', 'Ивановская область', '57.1072222222222', '41.7333333333333');
INSERT INTO public.city
VALUES (997, 'Роза', 'Челябинская область', '54.9155555555556', '61.4575');
INSERT INTO public.city
VALUES (998, 'Рославль', 'Смоленская область', '53.9472222222222', '32.8566666666667');
INSERT INTO public.city
VALUES (999, 'Российский', 'Краснодарский край', '45.1141666666667', '39.0294444444444');
INSERT INTO public.city
VALUES (1000, 'Россошь', 'Воронежская область', '50.1927777777778', '39.5763888888889');
INSERT INTO public.city
VALUES (1001, 'Ростов', 'Ярославская область', '57.1858333333333', '39.4144444444444');
INSERT INTO public.city
VALUES (1002, 'Ростов-на-Дону', 'Ростовская область', '47.2225', '39.7186111111111');
INSERT INTO public.city
VALUES (1003, 'Рошаль', 'Московская область', '55.6633333333333', '39.8655555555556');
INSERT INTO public.city
VALUES (1004, 'Рощино', 'Ленинградская область', '60.2575', '29.5952777777778');
INSERT INTO public.city
VALUES (1005, 'Рощинский', 'Самарская область', '53.0511111111111', '50.495');
INSERT INTO public.city
VALUES (1006, 'Ртищево', 'Саратовская область', '52.2586111111111', '43.7880555555556');
INSERT INTO public.city
VALUES (1007, 'Рубцовск', 'Алтайский край', '51.5011111111111', '81.2077777777778');
INSERT INTO public.city
VALUES (1008, 'Руза', 'Московская область', '55.7013888888889', '36.1961111111111');
INSERT INTO public.city
VALUES (1009, 'Рузаевка', 'Республика Мордовия', '54.0583333333333', '44.9544444444444');
INSERT INTO public.city
VALUES (1010, 'Рыбинск', 'Ярославская область', '58.0483333333333', '38.8583333333333');
INSERT INTO public.city
VALUES (1011, 'Рыбное', 'Рязанская область', '54.7291666666667', '39.4936111111111');
INSERT INTO public.city
VALUES (1012, 'Рыльск', 'Курская область', '51.5680555555556', '34.6802777777778');
INSERT INTO public.city
VALUES (1013, 'Ряжск', 'Рязанская область', '53.7088888888889', '40.0627777777778');
INSERT INTO public.city
VALUES (1014, 'Рязань', 'Рязанская область', '54.6294444444444', '39.7425');
INSERT INTO public.city
VALUES (1015, 'Сагопши', 'Республика Ингушетия', '43.4822222222222', '44.5897222222222');
INSERT INTO public.city
VALUES (1016, 'Саки', 'Республика Крым', '45.1255555555556', '33.5944444444444');
INSERT INTO public.city
VALUES (1017, 'Салават', 'Республика Башкортостан', '53.3616666666667', '55.9244444444444');
INSERT INTO public.city
VALUES (1018, 'Салехард', 'Ямало-Ненецкий автономный округ', '66.5308333333333', '66.6138888888889');
INSERT INTO public.city
VALUES (1019, 'Сальск', 'Ростовская область', '46.4752777777778', '41.5411111111111');
INSERT INTO public.city
VALUES (1020, 'Самара', 'Самарская область', '53.1955555555556', '50.1016666666667');
INSERT INTO public.city
VALUES (1021, 'Самарское', 'Ростовская область', '46.9377777777778', '39.6875');
INSERT INTO public.city
VALUES (1022, 'Самашки', 'Чеченская республика', '43.2911111111111', '45.3013888888889');
INSERT INTO public.city
VALUES (1023, 'Санкт-Петербург', 'Ленинградская область', '59.9391666666667', '30.3158333333333');
INSERT INTO public.city
VALUES (1024, 'Саракташ', 'Оренбургская область', '51.7830555555556', '56.3652777777778');
INSERT INTO public.city
VALUES (1025, 'Саранск', 'Республика Мордовия', '54.1872222222222', '45.1836111111111');
INSERT INTO public.city
VALUES (1026, 'Сарапул', 'Удмуртская республика', '56.4772222222222', '53.8191666666667');
INSERT INTO public.city
VALUES (1027, 'Саратов', 'Саратовская область', '51.5330555555556', '46.0341666666667');
INSERT INTO public.city
VALUES (1028, 'Саров', 'Нижегородская область', '54.9227777777778', '43.3447222222222');
INSERT INTO public.city
VALUES (1029, 'Сасово', 'Рязанская область', '54.3438888888889', '41.9208333333333');
INSERT INTO public.city
VALUES (1030, 'Сатка', 'Челябинская область', '55.0405555555556', '59.0288888888889');
INSERT INTO public.city
VALUES (1031, 'Сафоново', 'Смоленская область', '55.1069444444444', '33.24');
INSERT INTO public.city
VALUES (1032, 'Саяногорск', 'Республика Хакасия', '53.1008333333333', '91.4122222222222');
INSERT INTO public.city
VALUES (1033, 'Саянск', 'Иркутская область', '54.1108333333333', '102.180277777778');
INSERT INTO public.city
VALUES (1034, 'Светлогорск', 'Калининградская область', '54.9438888888889', '20.1513888888889');
INSERT INTO public.city
VALUES (1035, 'Светлоград', 'Ставропольский край', '45.3286111111111', '42.8566666666667');
INSERT INTO public.city
VALUES (1036, 'Светлый', 'Саратовская область', '51.675', '45.6252777777778');
INSERT INTO public.city
VALUES (1037, 'Светлый', 'Калининградская область', '54.6775', '20.1358333333333');
INSERT INTO public.city
VALUES (1038, 'Светлый Яр', 'Волгоградская область', '48.4702777777778', '44.785');
INSERT INTO public.city
VALUES (1039, 'Светогорск', 'Ленинградская область', '61.1111111111111', '28.8727777777778');
INSERT INTO public.city
VALUES (1040, 'Свирск', 'Иркутская область', '53.0841666666667', '103.336388888889');
INSERT INTO public.city
VALUES (1041, 'Свободный', 'Амурская область', '51.3758333333333', '128.134166666667');
INSERT INTO public.city
VALUES (1042, 'Свободы', 'Ставропольский край', '44.0247222222222', '43.0513888888889');
INSERT INTO public.city
VALUES (1043, 'Севастополь', 'Севастополь', '44.6166666666667', '33.5255555555556');
INSERT INTO public.city
VALUES (1044, 'Северный', 'Белгородская область', '50.6547222222222', '36.5525');
INSERT INTO public.city
VALUES (1045, 'Северобайкальск', 'Республика Бурятия', '55.6361111111111', '109.335555555556');
INSERT INTO public.city
VALUES (1046, 'Северодвинск', 'Архангельская область', '64.5625', '39.8180555555556');
INSERT INTO public.city
VALUES (1047, 'Североморск', 'Мурманская область', '69.0763888888889', '33.4177777777778');
INSERT INTO public.city
VALUES (1048, 'Североуральск', 'Свердловская область', '60.1533333333333', '59.9525');
INSERT INTO public.city
VALUES (1049, 'Северск', 'Томская область', '56.6033333333333', '84.8808333333333');
INSERT INTO public.city
VALUES (1050, 'Северская', 'Краснодарский край', '44.8538888888889', '38.6819444444444');
INSERT INTO public.city
VALUES (1051, 'Сегежа', 'Республика Карелия', '63.7436111111111', '34.3125');
INSERT INTO public.city
VALUES (1052, 'Селенгинск', 'Республика Бурятия', '52.0047222222222', '106.8625');
INSERT INTO public.city
VALUES (1053, 'Сельцо', 'Брянская область', '53.3738888888889', '34.1058333333333');
INSERT INTO public.city
VALUES (1054, 'Селятино', 'Московская область', '55.5169444444444', '36.9691666666667');
INSERT INTO public.city
VALUES (1055, 'Семендер', 'Республика Дагестан', '42.9911111111111', '47.4022222222222');
INSERT INTO public.city
VALUES (1056, 'Семенов', 'Нижегородская область', '56.7913888888889', '44.4838888888889');
INSERT INTO public.city
VALUES (1057, 'Семикаракорск', 'Ростовская область', '47.5177777777778', '40.8113888888889');
INSERT INTO public.city
VALUES (1058, 'Семилуки', 'Воронежская область', '51.6872222222222', '39.0272222222222');
INSERT INTO public.city
VALUES (1059, 'Сергач', 'Нижегородская область', '55.52', '45.4813888888889');
INSERT INTO public.city
VALUES (1060, 'Сергиев Посад', 'Московская область', '56.3161111111111', '38.1344444444444');
INSERT INTO public.city
VALUES (1061, 'Сердобск', 'Пензенская область', '52.4558333333333', '44.2027777777778');
INSERT INTO public.city
VALUES (1062, 'Серноводское', 'Чеченская республика', '43.3094444444444', '45.1625');
INSERT INTO public.city
VALUES (1063, 'Сернур', 'Республика Марий Эл', '56.9338888888889', '49.1486111111111');
INSERT INTO public.city
VALUES (1064, 'Серов', 'Свердловская область', '59.6052777777778', '60.5736111111111');
INSERT INTO public.city
VALUES (1065, 'Серпухов', 'Московская область', '54.9136111111111', '37.4166666666667');
INSERT INTO public.city
VALUES (1066, 'Сертолово', 'Ленинградская область', '60.1447222222222', '30.2094444444444');
INSERT INTO public.city
VALUES (1067, 'Сибай', 'Республика Башкортостан', '52.7205555555556', '58.6663888888889');
INSERT INTO public.city
VALUES (1068, 'Сиверский', 'Ленинградская область', '59.3522222222222', '30.0713888888889');
INSERT INTO public.city
VALUES (1069, 'Сим', 'Челябинская область', '54.9908333333333', '57.69');
INSERT INTO public.city
VALUES (1070, 'Симферополь', 'Республика Крым', '44.9483333333333', '34.1002777777778');
INSERT INTO public.city
VALUES (1071, 'Симферопольский', 'Республика Крым', '44.9841666666667', '34.0366666666667');
INSERT INTO public.city
VALUES (1072, 'Скопин', 'Рязанская область', '53.8236111111111', '39.5494444444444');
INSERT INTO public.city
VALUES (1073, 'Славгород', 'Алтайский край', '52.9994444444444', '78.6458333333333');
INSERT INTO public.city
VALUES (1074, 'Славянка', 'Приморский край', '42.865', '131.385555555556');
INSERT INTO public.city
VALUES (1075, 'Славянск-на-Кубани', 'Краснодарский край', '45.2605555555556', '38.1261111111111');
INSERT INTO public.city
VALUES (1076, 'Сланцы', 'Ленинградская область', '59.1177777777778', '28.0880555555556');
INSERT INTO public.city
VALUES (1077, 'Слободской', 'Кировская область', '58.7319444444444', '50.1836111111111');
INSERT INTO public.city
VALUES (1078, 'Слюдянка', 'Иркутская область', '51.6563888888889', '103.718611111111');
INSERT INTO public.city
VALUES (1079, 'Смоленск', 'Смоленская область', '54.7941666666667', '32.055');
INSERT INTO public.city
VALUES (1080, 'Смышляевка', 'Самарская область', '53.2486111111111', '50.4036111111111');
INSERT INTO public.city
VALUES (1081, 'Снежинск', 'Челябинская область', '56.0852777777778', '60.7325');
INSERT INTO public.city
VALUES (1082, 'Снежногорск', 'Мурманская область', '69.1919444444444', '33.2380555555556');
INSERT INTO public.city
VALUES (1083, 'Собинка', 'Владимирская область', '55.9938888888889', '40.0180555555556');
INSERT INTO public.city
VALUES (1084, 'Советск', 'Кировская область', '57.5875', '48.9594444444444');
INSERT INTO public.city
VALUES (1085, 'Советск', 'Калининградская область', '55.0811111111111', '21.8886111111111');
INSERT INTO public.city
VALUES (1086, 'Советская Гавань', 'Хабаровский край', '48.9663888888889', '140.285');
INSERT INTO public.city
VALUES (1087, 'Советский', 'Республика Крым', '45.3402777777778', '34.9288888888889');
INSERT INTO public.city
VALUES (1088, 'Советский', 'Республика Марий Эл', '56.7591666666667', '48.4727777777778');
INSERT INTO public.city
VALUES (1089, 'Советский', 'Ханты-Мансийский автономный округ - Югра', '61.3697222222222', '63.5605555555556');
INSERT INTO public.city
VALUES (1090, 'Советский', 'Астраханская область', '46.3083333333333', '48.0172222222222');
INSERT INTO public.city
VALUES (1091, 'Советский', 'Республика Башкортостан', '54.7369444444444', '55.9861111111111');
INSERT INTO public.city
VALUES (1092, 'Сокол', 'Вологодская область', '59.4608333333333', '40.1');
INSERT INTO public.city
VALUES (1093, 'Сокольники', 'Тульская область', '54.0688888888889', '38.4786111111111');
INSERT INTO public.city
VALUES (1094, 'Соликамск', 'Пермский край', '59.6483333333333', '56.7711111111111');
INSERT INTO public.city
VALUES (1095, 'Солнечногорск', 'Московская область', '56.1852777777778', '36.9786111111111');
INSERT INTO public.city
VALUES (1096, 'Солнечнодольск', 'Ставропольский край', '45.2977777777778', '41.4919444444444');
INSERT INTO public.city
VALUES (1097, 'Солнечный', 'Хабаровский край', '50.7233333333333', '136.641944444444');
INSERT INTO public.city
VALUES (1098, 'Солнечный', 'Ханты-Мансийский автономный округ - Югра', '61.2777777777778', '73.1866666666667');
INSERT INTO public.city
VALUES (1099, 'Соль-Илецк', 'Оренбургская область', '51.1619444444444', '54.9802777777778');
INSERT INTO public.city
VALUES (1100, 'Сорочинск', 'Оренбургская область', '52.4291666666667', '53.1511111111111');
INSERT INTO public.city
VALUES (1101, 'Сорск', 'Республика Хакасия', '54.0002777777778', '90.2594444444444');
INSERT INTO public.city
VALUES (1102, 'Сортавала', 'Республика Карелия', '61.7033333333333', '30.6916666666667');
INSERT INTO public.city
VALUES (1103, 'Сосенский', 'Калужская область', '54.0566666666667', '35.9622222222222');
INSERT INTO public.city
VALUES (1104, 'Сосновка', 'Кировская область', '56.2533333333333', '51.2833333333333');
INSERT INTO public.city
VALUES (1105, 'Сосновоборск', 'Красноярский край', '56.1202777777778', '93.3355555555556');
INSERT INTO public.city
VALUES (1106, 'Сосногорск', 'Республика Коми', '63.5988888888889', '53.8763888888889');
INSERT INTO public.city
VALUES (1107, 'Софрино', 'Московская область', '56.1394444444444', '37.9280555555556');
INSERT INTO public.city
VALUES (1108, 'Сочи', 'Краснодарский край', '43.5855555555556', '39.7230555555556');
INSERT INTO public.city
VALUES (1109, 'Спасск-Дальний', 'Приморский край', '44.5977777777778', '132.8175');
INSERT INTO public.city
VALUES (1110, 'Среднеуральск', 'Свердловская область', '56.9919444444444', '60.4772222222222');
INSERT INTO public.city
VALUES (1111, 'Средняя Ахтуба', 'Волгоградская область', '48.7108333333333', '44.8716666666667');
INSERT INTO public.city
VALUES (1112, 'Ставрополь', 'Ставропольский край', '45.0444444444444', '41.9691666666667');
INSERT INTO public.city
VALUES (1113, 'Старая', 'Ленинградская область', '59.9294444444444', '30.6322222222222');
INSERT INTO public.city
VALUES (1114, 'Старая Купавна', 'Московская область', '55.8108333333333', '38.1736111111111');
INSERT INTO public.city
VALUES (1115, 'Старая Русса', 'Новгородская область', '57.9908333333333', '31.3555555555556');
INSERT INTO public.city
VALUES (1116, 'Старовеличковская', 'Краснодарский край', '45.4294444444444', '38.7308333333333');
INSERT INTO public.city
VALUES (1117, 'Стародеревянковская', 'Краснодарский край', '46.1272222222222', '38.9677777777778');
INSERT INTO public.city
VALUES (1118, 'Стародуб', 'Брянская область', '52.5852777777778', '32.7602777777778');
INSERT INTO public.city
VALUES (1119, 'Старокорсунская', 'Краснодарский край', '45.0530555555556', '39.3038888888889');
INSERT INTO public.city
VALUES (1120, 'Староминская', 'Краснодарский край', '46.5330555555556', '39.0536111111111');
INSERT INTO public.city
VALUES (1121, 'Старомышастовская', 'Краснодарский край', '45.3402777777778', '39.0769444444444');
INSERT INTO public.city
VALUES (1122, 'Старонижестеблиевская', 'Краснодарский край', '45.3794444444444', '38.4394444444444');
INSERT INTO public.city
VALUES (1123, 'Старотитаровская', 'Краснодарский край', '45.2158333333333', '37.1441666666667');
INSERT INTO public.city
VALUES (1124, 'Старощербиновская', 'Краснодарский край', '46.6297222222222', '38.6672222222222');
INSERT INTO public.city
VALUES (1125, 'Старые-Атаги', 'Чеченская республика', '43.1227777777778', '45.7433333333333');
INSERT INTO public.city
VALUES (1126, 'Старый Оскол', 'Белгородская область', '51.2980555555556', '37.8333333333333');
INSERT INTO public.city
VALUES (1127, 'Степное', 'Саратовская область', '51.3777777777778', '46.8441666666667');
INSERT INTO public.city
VALUES (1128, 'Стерлитамак', 'Республика Башкортостан', '53.6302777777778', '55.9316666666667');
INSERT INTO public.city
VALUES (1129, 'Стрежевой', 'Томская область', '60.7327777777778', '77.6038888888889');
INSERT INTO public.city
VALUES (1130, 'Строитель', 'Тамбовская область', '52.6511111111111', '41.4311111111111');
INSERT INTO public.city
VALUES (1131, 'Строитель', 'Белгородская область', '50.7844444444444', '36.4886111111111');
INSERT INTO public.city
VALUES (1132, 'Стройкерамика', 'Самарская область', '53.2711111111111', '50.4005555555556');
INSERT INTO public.city
VALUES (1133, 'Струнино', 'Владимирская область', '56.375', '38.5841666666667');
INSERT INTO public.city
VALUES (1134, 'Ступино', 'Московская область', '54.8869444444444', '38.0772222222222');
INSERT INTO public.city
VALUES (1135, 'Суворов', 'Тульская область', '54.1227777777778', '36.5');
INSERT INTO public.city
VALUES (1136, 'Суворовская', 'Ставропольский край', '44.1975', '42.65');
INSERT INTO public.city
VALUES (1137, 'Судак', 'Республика Крым', '44.8505555555556', '34.9761111111111');
INSERT INTO public.city
VALUES (1138, 'Судогда', 'Владимирская область', '55.95', '40.8563888888889');
INSERT INTO public.city
VALUES (1139, 'Сузун', 'Новосибирская область', '53.7891666666667', '82.3161111111111');
INSERT INTO public.city
VALUES (1140, 'Сунжа', 'Республика Северная Осетия - Алания', '43.06', '44.8161111111111');
INSERT INTO public.city
VALUES (1141, 'Супсех', 'Краснодарский край', '44.8588888888889', '37.3586111111111');
INSERT INTO public.city
VALUES (1142, 'Сураж', 'Брянская область', '53.0141666666667', '32.3941666666667');
INSERT INTO public.city
VALUES (1143, 'Сургут', 'Ханты-Мансийский автономный округ - Югра', '61.2541666666667', '73.3961111111111');
INSERT INTO public.city
VALUES (1144, 'Суровикино', 'Волгоградская область', '48.6072222222222', '42.8502777777778');
INSERT INTO public.city
VALUES (1145, 'Сурхахи', 'Республика Ингушетия', '43.1905555555556', '44.8988888888889');
INSERT INTO public.city
VALUES (1146, 'Сухиничи', 'Калужская область', '54.1016666666667', '35.3394444444444');
INSERT INTO public.city
VALUES (1147, 'Суходол', 'Самарская область', '53.8991666666667', '51.2152777777778');
INSERT INTO public.city
VALUES (1148, 'Сухой Лог', 'Свердловская область', '56.9047222222222', '62.035');
INSERT INTO public.city
VALUES (1149, 'Сызрань', 'Самарская область', '53.1558333333333', '48.4744444444444');
INSERT INTO public.city
VALUES (1150, 'Сыктывкар', 'Республика Коми', '61.6686111111111', '50.8344444444444');
INSERT INTO public.city
VALUES (1151, 'Сысерть', 'Свердловская область', '56.5005555555556', '60.8188888888889');
INSERT INTO public.city
VALUES (1152, 'Сясьстрой', 'Ленинградская область', '60.1419444444444', '32.5566666666667');
INSERT INTO public.city
VALUES (1153, 'Тавда', 'Свердловская область', '58.0433333333333', '65.2741666666667');
INSERT INTO public.city
VALUES (1154, 'Таврическое', 'Омская область', '54.5844444444444', '73.6380555555556');
INSERT INTO public.city
VALUES (1155, 'Таганрог', 'Ростовская область', '47.2094444444444', '38.9352777777778');
INSERT INTO public.city
VALUES (1156, 'Тайга', 'Кемеровская область', '56.065', '85.6311111111111');
INSERT INTO public.city
VALUES (1157, 'Тайшет', 'Иркутская область', '55.9405555555556', '98.0030555555556');
INSERT INTO public.city
VALUES (1158, 'Талдом', 'Московская область', '56.7308333333333', '37.5275');
INSERT INTO public.city
VALUES (1159, 'Талица', 'Свердловская область', '57.0122222222222', '63.7322222222222');
INSERT INTO public.city
VALUES (1160, 'Талнах', 'Красноярский край', '69.4891666666667', '88.4066666666667');
INSERT INTO public.city
VALUES (1161, 'Таловая', 'Воронежская область', '51.1194444444444', '40.7252777777778');
INSERT INTO public.city
VALUES (1162, 'Тальменка', 'Алтайский край', '53.8172222222222', '83.5691666666667');
INSERT INTO public.city
VALUES (1163, 'Тамбов', 'Тамбовская область', '52.7297222222222', '41.4486111111111');
INSERT INTO public.city
VALUES (1164, 'Тара', 'Омская область', '56.9019444444444', '74.3719444444444');
INSERT INTO public.city
VALUES (1165, 'Тарки', 'Республика Дагестан', '42.9444444444444', '47.4958333333333');
INSERT INTO public.city
VALUES (1166, 'Тарко-Сале', 'Ямало-Ненецкий автономный округ', '64.9119444444444', '77.7611111111111');
INSERT INTO public.city
VALUES (1167, 'Татарск', 'Новосибирская область', '55.2144444444444', '75.9741666666667');
INSERT INTO public.city
VALUES (1168, 'Таштагол', 'Кемеровская область', '52.7594444444444', '87.8477777777778');
INSERT INTO public.city
VALUES (1169, 'Тбилисская', 'Краснодарский край', '45.3644444444444', '40.2016666666667');
INSERT INTO public.city
VALUES (1170, 'Тверь', 'Тверская область', '56.8586111111111', '35.9208333333333');
INSERT INTO public.city
VALUES (1171, 'Тейково', 'Ивановская область', '56.85', '40.5330555555556');
INSERT INTO public.city
VALUES (1172, 'Текстильщиков', 'Забайкальский край', '52.0725', '113.384444444444');
INSERT INTO public.city
VALUES (1173, 'Тельмана', 'Ленинградская область', '59.7255555555556', '30.6122222222222');
INSERT INTO public.city
VALUES (1174, 'Темрюк', 'Краснодарский край', '45.27', '37.3852777777778');
INSERT INTO public.city
VALUES (1175, 'Терек', 'Кабардино-Балкарская республика', '43.4838888888889', '44.1402777777778');
INSERT INTO public.city
VALUES (1176, 'Тетюши', 'Республика Татарстан', '54.9366666666667', '48.8313888888889');
INSERT INTO public.city
VALUES (1177, 'Тимашевск', 'Краснодарский край', '45.6186111111111', '38.9455555555556');
INSERT INTO public.city
VALUES (1178, 'Тихвин', 'Ленинградская область', '59.6441666666667', '33.5422222222222');
INSERT INTO public.city
VALUES (1179, 'Тихорецк', 'Краснодарский край', '45.8547222222222', '40.1258333333333');
INSERT INTO public.city
VALUES (1180, 'Тобольск', 'Тюменская область', '58.2016666666667', '68.2538888888889');
INSERT INTO public.city
VALUES (1181, 'Товарково', 'Калужская область', '54.6775', '35.9330555555556');
INSERT INTO public.city
VALUES (1182, 'Тогучин', 'Новосибирская область', '55.2380555555556', '84.4027777777778');
INSERT INTO public.city
VALUES (1183, 'Тольятти', 'Самарская область', '53.5088888888889', '49.4191666666667');
INSERT INTO public.city
VALUES (1184, 'Томилино', 'Московская область', '55.6630555555556', '37.95');
INSERT INTO public.city
VALUES (1185, 'Томск', 'Томская область', '56.4886111111111', '84.9522222222222');
INSERT INTO public.city
VALUES (1186, 'Топки', 'Кемеровская область', '55.2763888888889', '85.6152777777778');
INSERT INTO public.city
VALUES (1187, 'Торжок', 'Тверская область', '57.0413888888889', '34.9602777777778');
INSERT INTO public.city
VALUES (1188, 'Торопец', 'Тверская область', '56.5011111111111', '31.6355555555556');
INSERT INTO public.city
VALUES (1189, 'Тосно', 'Ленинградская область', '59.5341666666667', '30.8580555555556');
INSERT INTO public.city
VALUES (1190, 'Тоцкое Второе', 'Оренбургская область', '52.5444444444444', '52.8252777777778');
INSERT INTO public.city
VALUES (1191, 'Трехгорный', 'Челябинская область', '54.8177777777778', '58.4463888888889');
INSERT INTO public.city
VALUES (1192, 'Троицк', 'Челябинская область', '54.0833333333333', '61.5597222222222');
INSERT INTO public.city
VALUES (1193, 'Троицкий', 'Свердловская область', '57.0602777777778', '63.7419444444444');
INSERT INTO public.city
VALUES (1194, 'Троицкое', 'Республика Калмыкия', '46.4158333333333', '44.2611111111111');
INSERT INTO public.city
VALUES (1195, 'Троицкое', 'Республика Ингушетия', '43.3066666666667', '44.9891666666667');
INSERT INTO public.city
VALUES (1196, 'Трубчевск', 'Брянская область', '52.5791666666667', '33.7661111111111');
INSERT INTO public.city
VALUES (1197, 'Трудовое', 'Приморский край', '43.305', '132.075833333333');
INSERT INTO public.city
VALUES (1198, 'Трусовский', 'Астраханская область', '46.3516666666667', '47.9955555555556');
INSERT INTO public.city
VALUES (1199, 'Туапсе', 'Краснодарский край', '44.0986111111111', '39.0719444444444');
INSERT INTO public.city
VALUES (1200, 'Туймазы', 'Республика Башкортостан', '54.6', '53.695');
INSERT INTO public.city
VALUES (1201, 'Тула', 'Тульская область', '54.1938888888889', '37.6158333333333');
INSERT INTO public.city
VALUES (1202, 'Тулун', 'Иркутская область', '54.5572222222222', '100.578055555556');
INSERT INTO public.city
VALUES (1203, 'Тульский', 'Республика Адыгея', '44.5158333333333', '40.1761111111111');
INSERT INTO public.city
VALUES (1204, 'Туринск', 'Свердловская область', '58.0394444444444', '63.6980555555556');
INSERT INTO public.city
VALUES (1205, 'Тутаев', 'Ярославская область', '57.8688888888889', '39.5308333333333');
INSERT INTO public.city
VALUES (1206, 'Тучково', 'Московская область', '55.6008333333333', '36.4716666666667');
INSERT INTO public.city
VALUES (1207, 'Тында', 'Амурская область', '55.1547222222222', '124.729166666667');
INSERT INTO public.city
VALUES (1208, 'Тырныауз', 'Кабардино-Балкарская республика', '43.3980555555556', '42.9213888888889');
INSERT INTO public.city
VALUES (1209, 'Тюкалинск', 'Омская область', '55.8705555555556', '72.1955555555556');
INSERT INTO public.city
VALUES (1210, 'Тюмень', 'Тюменская область', '57.1536111111111', '65.5422222222222');
INSERT INTO public.city
VALUES (1211, 'Ува', 'Удмуртская республика', '56.9827777777778', '52.1883333333333');
INSERT INTO public.city
VALUES (1212, 'Уварово', 'Тамбовская область', '51.9769444444444', '42.2530555555556');
INSERT INTO public.city
VALUES (1213, 'Увельский', 'Челябинская область', '54.4411111111111', '61.3605555555556');
INSERT INTO public.city
VALUES (1214, 'Углич', 'Ярославская область', '57.5266666666667', '38.3263888888889');
INSERT INTO public.city
VALUES (1215, 'Удачный', 'Республика Саха (Якутия)', '66.4086111111111', '112.298888888889');
INSERT INTO public.city
VALUES (1216, 'Удельная', 'Московская область', '55.6361111111111', '38.0447222222222');
INSERT INTO public.city
VALUES (1217, 'Удомля', 'Тверская область', '57.8766666666667', '35.005');
INSERT INTO public.city
VALUES (1218, 'Ужур', 'Красноярский край', '55.3141666666667', '89.8333333333333');
INSERT INTO public.city
VALUES (1219, 'Узловая', 'Тульская область', '53.9786111111111', '38.1608333333333');
INSERT INTO public.city
VALUES (1220, 'Улан-Удэ', 'Республика Бурятия', '51.8344444444444', '107.584444444444');
INSERT INTO public.city
VALUES (1221, 'Ульяновка', 'Ленинградская область', '59.6411111111111', '30.7766666666667');
INSERT INTO public.city
VALUES (1222, 'Ульяновск', 'Ульяновская область', '54.3125', '48.3955555555556');
INSERT INTO public.city
VALUES (1223, 'Унеча', 'Брянская область', '52.8430555555556', '32.6780555555556');
INSERT INTO public.city
VALUES (1224, 'Урай', 'Ханты-Мансийский автономный округ - Югра', '60.1297222222222', '64.8038888888889');
INSERT INTO public.city
VALUES (1225, 'Уренгой', 'Ямало-Ненецкий автономный округ', '65.9619444444444', '78.3727777777778');
INSERT INTO public.city
VALUES (1226, 'Урень', 'Нижегородская область', '57.4611111111111', '45.7833333333333');
INSERT INTO public.city
VALUES (1227, 'Уржум', 'Кировская область', '57.1097222222222', '50.0058333333333');
INSERT INTO public.city
VALUES (1228, 'Урус-Мартан', 'Чеченская республика', '43.1275', '45.5405555555556');
INSERT INTO public.city
VALUES (1229, 'Уруссу', 'Республика Татарстан', '54.6027777777778', '53.4608333333333');
INSERT INTO public.city
VALUES (1230, 'Урюпинск', 'Волгоградская область', '50.7944444444444', '41.9958333333333');
INSERT INTO public.city
VALUES (1231, 'Усинск', 'Республика Коми', '65.9938888888889', '57.5569444444444');
INSERT INTO public.city
VALUES (1232, 'Усмань', 'Липецкая область', '52.0433333333333', '39.7361111111111');
INSERT INTO public.city
VALUES (1233, 'Усолье-Сибирское', 'Иркутская область', '52.7566666666667', '103.638888888889');
INSERT INTO public.city
VALUES (1234, 'Успенское', 'Краснодарский край', '44.8308333333333', '41.3925');
INSERT INTO public.city
VALUES (1235, 'Уссурийск', 'Приморский край', '43.7972222222222', '131.951666666667');
INSERT INTO public.city
VALUES (1236, 'Усть-Абакан', 'Республика Хакасия', '53.8411111111111', '91.3719444444444');
INSERT INTO public.city
VALUES (1237, 'Усть-Джегута', 'Карачаево-Черкесская республика', '44.0838888888889', '41.9711111111111');
INSERT INTO public.city
VALUES (1238, 'Усть-Донецкий', 'Ростовская область', '47.6430555555556', '40.8719444444444');
INSERT INTO public.city
VALUES (1239, 'Усть-Илимск', 'Иркутская область', '57.9430555555556', '102.741388888889');
INSERT INTO public.city
VALUES (1240, 'Усть-Катав', 'Челябинская область', '54.9302777777778', '58.1747222222222');
INSERT INTO public.city
VALUES (1241, 'Усть-Кинельский', 'Самарская область', '53.2702777777778', '50.5683333333333');
INSERT INTO public.city
VALUES (1242, 'Усть-Кут', 'Иркутская область', '56.7927777777778', '105.775555555556');
INSERT INTO public.city
VALUES (1243, 'Усть-Лабинск', 'Краснодарский край', '45.2166666666667', '39.6944444444444');
INSERT INTO public.city
VALUES (1244, 'Усть-Ордынский', 'Иркутская область', '52.805', '104.753611111111');
INSERT INTO public.city
VALUES (1245, 'Ухта', 'Республика Коми', '63.5625', '53.6838888888889');
INSERT INTO public.city
VALUES (1246, 'Учалы', 'Республика Башкортостан', '54.3191666666667', '59.3786111111111');
INSERT INTO public.city
VALUES (1247, 'Учкекен', 'Карачаево-Черкесская республика', '43.9388888888889', '42.5155555555556');
INSERT INTO public.city
VALUES (1248, 'Уяр', 'Красноярский край', '55.8130555555556', '94.3283333333333');
INSERT INTO public.city
VALUES (1249, 'Федоровский', 'Ханты-Мансийский автономный округ - Югра', '61.6097222222222', '73.7197222222222');
INSERT INTO public.city
VALUES (1250, 'Феодосия', 'Республика Крым', '45.0319444444444', '35.3825');
INSERT INTO public.city
VALUES (1251, 'Фокино', 'Брянская область', '53.4555555555556', '34.4158333333333');
INSERT INTO public.city
VALUES (1252, 'Фокино', 'Приморский край', '42.9708333333333', '132.411111111111');
INSERT INTO public.city
VALUES (1253, 'Фролово', 'Волгоградская область', '49.7688888888889', '43.6483333333333');
INSERT INTO public.city
VALUES (1254, 'Фрязино', 'Московская область', '55.9580555555556', '38.0522222222222');
INSERT INTO public.city
VALUES (1255, 'Фряново', 'Московская область', '56.1291666666667', '38.4330555555556');
INSERT INTO public.city
VALUES (1256, 'Фурманов', 'Ивановская область', '57.2525', '41.1061111111111');
INSERT INTO public.city
VALUES (1257, 'Хабаровск', 'Хабаровский край', '48.4725', '135.057777777778');
INSERT INTO public.city
VALUES (1258, 'Хадыженск', 'Краснодарский край', '44.4122222222222', '39.5319444444444');
INSERT INTO public.city
VALUES (1259, 'Ханская', 'Республика Адыгея', '44.6747222222222', '39.9611111111111');
INSERT INTO public.city
VALUES (1260, 'Ханты-Мансийск', 'Ханты-Мансийский автономный округ - Югра', '61.0025', '69.0183333333333');
INSERT INTO public.city
VALUES (1261, 'Харабали', 'Астраханская область', '47.4094444444444', '47.2519444444444');
INSERT INTO public.city
VALUES (1262, 'Хасавюрт', 'Республика Дагестан', '43.2463888888889', '46.59');
INSERT INTO public.city
VALUES (1263, 'Хасанья', 'Кабардино-Балкарская республика', '43.4333333333333', '43.5761111111111');
INSERT INTO public.city
VALUES (1264, 'Хвалынск', 'Саратовская область', '52.495', '48.1047222222222');
INSERT INTO public.city
VALUES (1265, 'Химки', 'Московская область', '55.8888888888889', '37.4302777777778');
INSERT INTO public.city
VALUES (1266, 'Холмск', 'Сахалинская область', '47.0408333333333', '142.041666666667');
INSERT INTO public.city
VALUES (1267, 'Холмская', 'Краснодарский край', '44.8480555555556', '38.3891666666667');
INSERT INTO public.city
VALUES (1268, 'Хомутово', 'Иркутская область', '52.4630555555556', '104.371666666667');
INSERT INTO public.city
VALUES (1269, 'Хотьково', 'Московская область', '56.2522222222222', '37.9786111111111');
INSERT INTO public.city
VALUES (1270, 'Целина', 'Ростовская область', '46.5336111111111', '41.0322222222222');
INSERT INTO public.city
VALUES (1271, 'Цемдолина', 'Краснодарский край', '44.7511111111111', '37.7141666666667');
INSERT INTO public.city
VALUES (1272, 'Цивильск', 'Чувашская республика', '55.825', '47.39');
INSERT INTO public.city
VALUES (1273, 'Цимлянск', 'Ростовская область', '47.6477777777778', '42.0930555555556');
INSERT INTO public.city
VALUES (1274, 'Цоци-Юрт', 'Чеченская республика', '43.2383333333333', '45.9986111111111');
INSERT INTO public.city
VALUES (1275, 'Чайковский', 'Пермский край', '56.7780555555556', '54.1477777777778');
INSERT INTO public.city
VALUES (1276, 'Чалтырь', 'Ростовская область', '47.2827777777778', '39.4991666666667');
INSERT INTO public.city
VALUES (1277, 'Чапаевск', 'Самарская область', '52.9788888888889', '49.7136111111111');
INSERT INTO public.city
VALUES (1278, 'Чаплыгин', 'Липецкая область', '53.2405555555556', '39.9669444444444');
INSERT INTO public.city
VALUES (1279, 'Чебаркуль', 'Челябинская область', '54.9777777777778', '60.37');
INSERT INTO public.city
VALUES (1280, 'Чебоксары', 'Чувашская республика', '56.1386111111111', '47.24');
INSERT INTO public.city
VALUES (1281, 'Чегдомын', 'Хабаровский край', '51.1372222222222', '133.033611111111');
INSERT INTO public.city
VALUES (1282, 'Чегем', 'Кабардино-Балкарская республика', '43.5672222222222', '43.5866666666667');
INSERT INTO public.city
VALUES (1283, 'Чегем-Второй', 'Кабардино-Балкарская республика', '43.5925', '43.5966666666667');
INSERT INTO public.city
VALUES (1284, 'Чекмагуш', 'Республика Башкортостан', '55.1397222222222', '54.6516666666667');
INSERT INTO public.city
VALUES (1285, 'Челябинск', 'Челябинская область', '55.1597222222222', '61.4025');
INSERT INTO public.city
VALUES (1286, 'Червленная', 'Чеченская республика', '43.5027777777778', '45.8855555555556');
INSERT INTO public.city
VALUES (1287, 'Чердаклы', 'Ульяновская область', '54.36', '48.8488888888889');
INSERT INTO public.city
VALUES (1288, 'Черемхово', 'Иркутская область', '53.1369444444444', '103.09');
INSERT INTO public.city
VALUES (1289, 'Черепаново', 'Новосибирская область', '54.2205555555556', '83.3725');
INSERT INTO public.city
VALUES (1290, 'Череповец', 'Вологодская область', '59.1275', '37.9069444444444');
INSERT INTO public.city
VALUES (1291, 'Черкесск', 'Карачаево-Черкесская республика', '44.2266666666667', '42.0466666666667');
INSERT INTO public.city
VALUES (1292, 'Черлак', 'Омская область', '54.1538888888889', '74.8055555555556');
INSERT INTO public.city
VALUES (1293, 'Черниговка', 'Приморский край', '44.3355555555556', '132.585');
INSERT INTO public.city
VALUES (1294, 'Черноголовка', 'Московская область', '56.01', '38.3791666666667');
INSERT INTO public.city
VALUES (1295, 'Черногорск', 'Республика Хакасия', '53.8269444444444', '91.3061111111111');
INSERT INTO public.city
VALUES (1296, 'Черноморское', 'Республика Крым', '45.5019444444444', '32.7027777777778');
INSERT INTO public.city
VALUES (1297, 'Чернушка', 'Пермский край', '56.5161111111111', '56.0763888888889');
INSERT INTO public.city
VALUES (1298, 'Чернышевск', 'Забайкальский край', '52.5247222222222', '117.017222222222');
INSERT INTO public.city
VALUES (1299, 'Чернянка', 'Белгородская область', '50.9391666666667', '37.8063888888889');
INSERT INTO public.city
VALUES (1300, 'Черняховск', 'Калининградская область', '54.6308333333333', '21.8194444444444');
INSERT INTO public.city
VALUES (1301, 'Чертково', 'Ростовская область', '49.3819444444444', '40.1538888888889');
INSERT INTO public.city
VALUES (1302, 'Чехов', 'Московская область', '55.1497222222222', '37.4669444444444');
INSERT INTO public.city
VALUES (1303, 'Чигири', 'Амурская область', '50.3391666666667', '127.507777777778');
INSERT INTO public.city
VALUES (1304, 'Чистополь', 'Республика Татарстан', '55.3722222222222', '50.6436111111111');
INSERT INTO public.city
VALUES (1305, 'Чита', 'Забайкальский край', '52.0338888888889', '113.499444444444');
INSERT INTO public.city
VALUES (1306, 'Чишмы', 'Республика Башкортостан', '54.5894444444444', '55.3802777777778');
INSERT INTO public.city
VALUES (1307, 'Чкаловск', 'Нижегородская область', '56.6794444444444', '43.0680555555556');
INSERT INTO public.city
VALUES (1308, 'Чугуевка', 'Приморский край', '44.1647222222222', '133.865555555556');
INSERT INTO public.city
VALUES (1309, 'Чудово', 'Новгородская область', '59.1211111111111', '31.6702777777778');
INSERT INTO public.city
VALUES (1310, 'Чулым', 'Новосибирская область', '55.0913888888889', '80.9633333333333');
INSERT INTO public.city
VALUES (1311, 'Чунский', 'Иркутская область', '56.0913888888889', '99.6502777777778');
INSERT INTO public.city
VALUES (1312, 'Чурапча', 'Республика Саха (Якутия)', '61.9983333333333', '132.4275');
INSERT INTO public.city
VALUES (1313, 'Чурилово', 'Челябинская область', '55.2025', '61.5655555555556');
INSERT INTO public.city
VALUES (1314, 'Чусовой', 'Пермский край', '58.2975', '57.8194444444444');
INSERT INTO public.city
VALUES (1315, 'Шагонар', 'Республика Тыва', '51.5347222222222', '92.92');
INSERT INTO public.city
VALUES (1316, 'Шадринск', 'Курганская область', '56.0869444444444', '63.6297222222222');
INSERT INTO public.city
VALUES (1317, 'Шали', 'Чеченская республика', '43.1488888888889', '45.9011111111111');
INSERT INTO public.city
VALUES (1318, 'Шалушка', 'Кабардино-Балкарская республика', '43.53', '43.5625');
INSERT INTO public.city
VALUES (1319, 'Шамхал', 'Республика Дагестан', '43.0580555555556', '47.3405555555556');
INSERT INTO public.city
VALUES (1320, 'Шарыпово', 'Красноярский край', '55.5391666666667', '89.1802777777778');
INSERT INTO public.city
VALUES (1321, 'Шарья', 'Костромская область', '58.3697222222222', '45.5180555555556');
INSERT INTO public.city
VALUES (1322, 'Шатура', 'Московская область', '55.5777777777778', '39.5444444444444');
INSERT INTO public.city
VALUES (1323, 'Шаховская', 'Московская область', '56.0313888888889', '35.5102777777778');
INSERT INTO public.city
VALUES (1324, 'Шахты', 'Ростовская область', '47.7086111111111', '40.2158333333333');
INSERT INTO public.city
VALUES (1325, 'Шахунья', 'Нижегородская область', '57.6763888888889', '46.6127777777778');
INSERT INTO public.city
VALUES (1326, 'Шебекино', 'Белгородская область', '50.4005555555556', '36.8877777777778');
INSERT INTO public.city
VALUES (1327, 'Шексна', 'Вологодская область', '59.2066666666667', '38.5013888888889');
INSERT INTO public.city
VALUES (1328, 'Шелехов', 'Иркутская область', '52.2102777777778', '104.0975');
INSERT INTO public.city
VALUES (1329, 'Шелковская', 'Чеченская республика', '43.5083333333333', '46.3413888888889');
INSERT INTO public.city
VALUES (1330, 'Шерловая Гора', 'Забайкальский край', '50.5241666666667', '116.318888888889');
INSERT INTO public.city
VALUES (1331, 'Шилка', 'Забайкальский край', '51.8494444444444', '116.033611111111');
INSERT INTO public.city
VALUES (1332, 'Шилово', 'Рязанская область', '54.3227777777778', '40.8777777777778');
INSERT INTO public.city
VALUES (1333, 'Шимановск', 'Амурская область', '51.9994444444444', '127.676111111111');
INSERT INTO public.city
VALUES (1334, 'Шипуново', 'Алтайский край', '52.22', '82.2583333333333');
INSERT INTO public.city
VALUES (1335, 'Шлиссельбург', 'Ленинградская область', '59.9444444444444', '31.0333333333333');
INSERT INTO public.city
VALUES (1336, 'Шумерля', 'Чувашская республика', '55.5002777777778', '46.4247222222222');
INSERT INTO public.city
VALUES (1337, 'Шумиха', 'Курганская область', '55.2280555555556', '63.2902777777778');
INSERT INTO public.city
VALUES (1338, 'Шушенское', 'Красноярский край', '53.3291666666667', '91.9505555555556');
INSERT INTO public.city
VALUES (1339, 'Шуя', 'Ивановская область', '56.8519444444444', '41.3855555555556');
INSERT INTO public.city
VALUES (1340, 'Щекино', 'Тульская область', '54.0022222222222', '37.5175');
INSERT INTO public.city
VALUES (1341, 'Щелкино', 'Республика Крым', '45.4236111111111', '35.8186111111111');
INSERT INTO public.city
VALUES (1342, 'Щелково', 'Московская область', '55.9197222222222', '37.9883333333333');
INSERT INTO public.city
VALUES (1343, 'Щигры', 'Курская область', '51.8761111111111', '36.9119444444444');
INSERT INTO public.city
VALUES (1344, 'Экажево', 'Республика Ингушетия', '43.1908333333333', '44.8272222222222');
INSERT INTO public.city
VALUES (1345, 'Электрогорск', 'Московская область', '55.8830555555556', '38.7858333333333');
INSERT INTO public.city
VALUES (1346, 'Электросталь', 'Московская область', '55.7844444444444', '38.4447222222222');
INSERT INTO public.city
VALUES (1347, 'Электроугли', 'Московская область', '55.7163888888889', '38.2208333333333');
INSERT INTO public.city
VALUES (1348, 'Элиста', 'Республика Калмыкия', '46.3083333333333', '44.2702777777778');
INSERT INTO public.city
VALUES (1349, 'Эльбан', 'Хабаровский край', '50.0972222222222', '136.498888888889');
INSERT INTO public.city
VALUES (1350, 'Эльхотово', 'Республика Северная Осетия - Алания', '43.3413888888889', '44.2052777777778');
INSERT INTO public.city
VALUES (1351, 'Энгельс', 'Саратовская область', '51.4855555555556', '46.1266666666667');
INSERT INTO public.city
VALUES (1352, 'Энем', 'Республика Адыгея', '44.9263888888889', '38.9108333333333');
INSERT INTO public.city
VALUES (1353, 'Энергетиков', 'Забайкальский край', '52.0672222222222', '113.355833333333');
INSERT INTO public.city
VALUES (1354, 'Эртиль', 'Воронежская область', '51.8358333333333', '40.7991666666667');
INSERT INTO public.city
VALUES (1355, 'Эсто-Садок', 'Краснодарский край', '43.6844444444444', '40.2619444444444');
INSERT INTO public.city
VALUES (1356, 'Югорск', 'Ханты-Мансийский автономный округ - Югра', '61.315', '63.3319444444444');
INSERT INTO public.city
VALUES (1357, 'Юдино', 'Республика Татарстан', '55.8211111111111', '48.8975');
INSERT INTO public.city
VALUES (1358, 'Южа', 'Ивановская область', '56.5836111111111', '42.0119444444444');
INSERT INTO public.city
VALUES (1359, 'Южно-Сахалинск', 'Сахалинская область', '46.9591666666667', '142.738055555556');
INSERT INTO public.city
VALUES (1360, 'Южно-Сухокумск', 'Республика Дагестан', '44.6602777777778', '45.65');
INSERT INTO public.city
VALUES (1361, 'Южноуральск', 'Челябинская область', '54.4422222222222', '61.2713888888889');
INSERT INTO public.city
VALUES (1362, 'Южный', 'Алтайский край', '53.2513888888889', '83.6947222222222');
INSERT INTO public.city
VALUES (1363, 'Юрга', 'Кемеровская область', '55.7136111111111', '84.9338888888889');
INSERT INTO public.city
VALUES (1364, 'Юрьев-Польский', 'Владимирская область', '56.4991666666667', '39.6808333333333');
INSERT INTO public.city
VALUES (1365, 'Юрюзань', 'Челябинская область', '54.8547222222222', '58.4227777777778');
INSERT INTO public.city
VALUES (1366, 'Яблоновский', 'Республика Адыгея', '44.9891666666667', '38.9425');
INSERT INTO public.city
VALUES (1367, 'Якутск', 'Республика Саха (Якутия)', '62.0391666666667', '129.735833333333');
INSERT INTO public.city
VALUES (1368, 'Ялта', 'Республика Крым', '44.4952777777778', '34.1663888888889');
INSERT INTO public.city
VALUES (1369, 'Ялуторовск', 'Тюменская область', '56.655', '66.3127777777778');
INSERT INTO public.city
VALUES (1370, 'Янаул', 'Республика Башкортостан', '56.265', '54.9297222222222');
INSERT INTO public.city
VALUES (1371, 'Яранск', 'Кировская область', '57.3041666666667', '47.8480555555556');
INSERT INTO public.city
VALUES (1372, 'Яровое', 'Алтайский край', '52.9252777777778', '78.5727777777778');
INSERT INTO public.city
VALUES (1373, 'Ярославль', 'Ярославская область', '57.6263888888889', '39.8933333333333');
INSERT INTO public.city
VALUES (1374, 'Ярцево', 'Смоленская область', '55.0686111111111', '32.6897222222222');
INSERT INTO public.city
VALUES (1375, 'Ясногорск', 'Забайкальский край', '50.8738888888889', '115.691944444444');
INSERT INTO public.city
VALUES (1376, 'Ясногорск', 'Тульская область', '54.4794444444444', '37.6897222222222');
INSERT INTO public.city
VALUES (1377, 'Ясный', 'Оренбургская область', '51.0369444444444', '59.8744444444444');
INSERT INTO public.city
VALUES (1378, 'Яхрома', 'Московская область', '56.29', '37.4844444444444');
INSERT INTO public.city
VALUES (1379, 'Яшкино', 'Кемеровская область', '55.8738888888889', '85.4347222222222');
INSERT INTO public.city
VALUES (1380, 'Яя', 'Кемеровская область', '56.2058333333333', '86.4513888888889');
INSERT INTO public.city
VALUES (1381, 'Уфа', 'Республика Башкортостан', '54.8805555555556', '56.1113888888889');


--
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.gender
VALUES (1, 'Мальчик');
INSERT INTO public.gender
VALUES (2, 'Девочка');


--
-- Data for Name: kennel; Type: TABLE DATA; Schema: public; Owner: mrshtein
--


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.role
VALUES (1, 'ROLE_ADMIN');
INSERT INTO public.role
VALUES (2, 'ROLE_USER');
INSERT INTO public.role
VALUES (3, 'ROLE_VOLUNTEER');


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: mrshtein
--


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: mrshtein
--


--
-- Data for Name: characteristic_type; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.characteristic_type
VALUES (1, 'color');


--
-- Data for Name: characteristic; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

INSERT INTO public.characteristic
VALUES (1, 1, 'Черный');
INSERT INTO public.characteristic
VALUES (2, 1, 'Голубой');
INSERT INTO public.characteristic
VALUES (3, 1, 'Шоколадный');
INSERT INTO public.characteristic
VALUES (4, 1, 'Черепаховый');
INSERT INTO public.characteristic
VALUES (5, 1, 'Рыжий');
INSERT INTO public.characteristic
VALUES (6, 1, 'Кремовый');
INSERT INTO public.characteristic
VALUES (7, 1, 'Дымчатый');
INSERT INTO public.characteristic
VALUES (8, 1, 'Коричневый');
INSERT INTO public.characteristic
VALUES (9, 1, 'Лиловый');
INSERT INTO public.characteristic
VALUES (10, 1, 'Белый');
INSERT INTO public.characteristic
VALUES (11, 1, 'Желтый');


--
-- Data for Name: animal_characteristic; Type: TABLE DATA; Schema: public; Owner: mrshtein
--


--
-- Data for Name: animal_photo; Type: TABLE DATA; Schema: public; Owner: mrshtein
--

--
-- Data for Name: volunteer; Type: TABLE DATA; Schema: public; Owner: mrshtein
--


--
-- Name: animal_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.animal_animal_id_seq', 1, FALSE);


--
-- Name: animal_photo_animal_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.animal_photo_animal_photo_id_seq', 1, FALSE);


--
-- Name: animal_type_animal_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.animal_type_animal_type_id_seq', 2, TRUE);


--
-- Name: breed_breed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.breed_breed_id_seq', 413, TRUE);


--
-- Name: characteristic_characteristic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.characteristic_characteristic_id_seq', 11, TRUE);


--
-- Name: characteristic_type_characteristic_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.characteristic_type_characteristic_type_id_seq', 1, TRUE);


--
-- Name: gender_gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.gender_gender_id_seq', 2, TRUE);


--
-- Name: kennel_kennel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.kennel_kennel_id_seq', 1, FALSE);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.person_person_id_seq', 1, FALSE);


--
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrshtein
--

SELECT pg_catalog.SETVAL('public.role_role_id_seq', 3, TRUE);


--
-- PostgreSQL database dump complete
--

