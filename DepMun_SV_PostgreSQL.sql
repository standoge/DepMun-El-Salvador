-- Ejecutar primero la creación de la base de datos de manera individual

-- -----------------------------------------------------
-- Database el_salvador
-- -----------------------------------------------------
DROP DATABASE IF EXISTS el_salvador;

CREATE DATABASE el_salvador with TEMPLATE 'template0' ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';

-- A partir de aca, se puede ejecutar el script completo

-- -----------------------------------------------------
-- Table el_salvador.public.depsv
-- -----------------------------------------------------
DROP TABLE IF EXISTS public.depsv;

CREATE TABLE public.depsv
(
    id        integer               NOT NULL,
    depname   character varying(30) NOT NULL,
    isocode   character(5)          NOT NULL,
    zonesv_id integer               NOT NULL
);


CREATE SEQUENCE public.depsv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.depsv_id_seq OWNED BY public.depsv.id;

-- -----------------------------------------------------
-- Table el_salvador.public.munsv
-- -----------------------------------------------------
DROP TABLE IF EXISTS public.munsv;

CREATE TABLE public.munsv
(
    id       integer                NOT NULL,
    munname  character varying(100) NOT NULL,
    depsv_id integer                NOT NULL
);


CREATE SEQUENCE public.munsv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.munsv_id_seq OWNED BY public.munsv.id;

-- -----------------------------------------------------
-- Table el_salvador.public.zonesv
-- -----------------------------------------------------
DROP TABLE IF EXISTS public.zonesv;

CREATE TABLE public.zonesv
(
    id       integer               NOT NULL,
    zonename character varying(15) NOT NULL
);

CREATE SEQUENCE public.zonesv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.zonesv_id_seq OWNED BY public.zonesv.id;

ALTER TABLE ONLY public.depsv
    ALTER COLUMN id SET DEFAULT nextval('public.depsv_id_seq'::regclass);

ALTER TABLE ONLY public.munsv
    ALTER COLUMN id SET DEFAULT nextval('public.munsv_id_seq'::regclass);

ALTER TABLE ONLY public.zonesv
    ALTER COLUMN id SET DEFAULT nextval('public.zonesv_id_seq'::regclass);

-- Volcando datos para la tabla el_salvador.depsv: ~14 rows (aproximadamente)
INSERT INTO public.depsv
VALUES (1, 'Ahuachapán', 'SV-AH', 1),
       (2, 'Santa Ana', 'SV-SA', 1),
       (3, 'Sonsonate', 'SV-SO', 1),
       (4, 'La Libertad', 'SV-LI', 2),
       (5, 'Chalatenango', 'SV-CH', 2),
       (6, 'San Salvador', 'SV-SS', 2),
       (7, 'Cuscatlán', 'SV-CU', 3),
       (8, 'La Paz', 'SV-PA', 3),
       (9, 'Cabañas', 'SV-CA', 3),
       (10, 'San Vicente', 'SV-SV', 3),
       (11, 'Usulután', 'SV-US', 4),
       (12, 'Morazán', 'SV-MO', 4),
       (13, 'San Miguel', 'SV-SM', 4),
       (14, 'La Unión', 'SV-UN', 4);

-- Volcando datos para la tabla el_salvador.munsv: ~262 rows (aproximadamente)
INSERT INTO public.munsv
VALUES (1, 'Ahuachapán', 1),
       (2, 'Jujutla', 1),
       (3, 'Atiquizaya', 1),
       (4, 'Concepción de Ataco', 1),
       (5, 'El Refugio', 1),
       (6, 'Guaymango', 1),
       (7, 'Apaneca', 1),
       (8, 'San Francisco Menéndez', 1),
       (9, 'San Lorenzo', 1),
       (10, 'San Pedro Puxtla', 1),
       (11, 'Tacuba', 1),
       (12, 'Turín', 1),
       (13, 'Candelaria de la Frontera', 2),
       (14, 'Chalchuapa', 2),
       (15, 'Coatepeque', 2),
       (16, 'El Congo', 2),
       (17, 'El Porvenir', 2),
       (18, 'Masahuat', 2),
       (19, 'Metapán', 2),
       (20, 'San Antonio Pajonal', 2),
       (21, 'San Sebastián Salitrillo', 2),
       (22, 'Santa Ana', 2),
       (23, 'Santa Rosa Guachipilín', 2),
       (24, 'Santiago de la Frontera', 2),
       (25, 'Texistepeque', 2),
       (26, 'Acajutla', 3),
       (27, 'Armenia', 3),
       (28, 'Caluco', 3),
       (29, 'Cuisnahuat', 3),
       (30, 'Izalco', 3),
       (31, 'Juayúa', 3),
       (32, 'Nahuizalco', 3),
       (33, 'Nahulingo', 3),
       (34, 'Salcoatitán', 3),
       (35, 'San Antonio del Monte', 3),
       (36, 'San Julián', 3),
       (37, 'Santa Catarina Masahuat', 3),
       (38, 'Santa Isabel Ishuatán', 3),
       (39, 'Santo Domingo de Guzmán', 3),
       (40, 'Sonsonate', 3),
       (41, 'Sonzacate', 3),
       (42, 'Alegría', 11),
       (43, 'Berlín', 11),
       (44, 'California', 11),
       (45, 'Concepción Batres', 11),
       (46, 'El Triunfo', 11),
       (47, 'Ereguayquín', 11),
       (48, 'Estanzuelas', 11),
       (49, 'Jiquilisco', 11),
       (50, 'Jucuapa', 11),
       (51, 'Jucuarán', 11),
       (52, 'Mercedes Umaña', 11),
       (53, 'Nueva Granada', 11),
       (54, 'Ozatlán', 11),
       (55, 'Puerto El Triunfo', 11),
       (56, 'San Agustín', 11),
       (57, 'San Buenaventura', 11),
       (58, 'San Dionisio', 11),
       (59, 'San Francisco Javier', 11),
       (60, 'Santa Elena', 11),
       (61, 'Santa María', 11),
       (62, 'Santiago de María', 11),
       (63, 'Tecapán', 11),
       (64, 'Usulután', 11),
       (65, 'Carolina', 13),
       (66, 'Chapeltique', 13),
       (67, 'Chinameca', 13),
       (68, 'Chirilagua', 13),
       (69, 'Ciudad Barrios', 13),
       (70, 'Comacarán', 13),
       (71, 'El Tránsito', 13),
       (72, 'Lolotique', 13),
       (73, 'Moncagua', 13),
       (74, 'Nueva Guadalupe', 13),
       (75, 'Nuevo Edén de San Juan', 13),
       (76, 'Quelepa', 13),
       (77, 'San Antonio del Mosco', 13),
       (78, 'San Gerardo', 13),
       (79, 'San Jorge', 13),
       (80, 'San Luis de la Reina', 13),
       (81, 'San Miguel', 13),
       (82, 'San Rafael Oriente', 13),
       (83, 'Sesori', 13),
       (84, 'Uluazapa', 13),
       (85, 'Arambala', 12),
       (86, 'Cacaopera', 12),
       (87, 'Chilanga', 12),
       (88, 'Corinto', 12),
       (89, 'Delicias de Concepción', 12),
       (90, 'El Divisadero', 12),
       (91, 'El Rosario (Morazán)', 12),
       (92, 'Gualococti', 12),
       (93, 'Guatajiagua', 12),
       (94, 'Joateca', 12),
       (95, 'Jocoaitique', 12),
       (96, 'Jocoro', 12),
       (97, 'Lolotiquillo', 12),
       (98, 'Meanguera', 12),
       (99, 'Osicala', 12),
       (100, 'Perquín', 12),
       (101, 'San Carlos', 12),
       (102, 'San Fernando (Morazán)', 12),
       (103, 'San Francisco Gotera', 12),
       (104, 'San Isidro (Morazán)', 12),
       (105, 'San Simón', 12),
       (106, 'Sensembra', 12),
       (107, 'Sociedad', 12),
       (108, 'Torola', 12),
       (109, 'Yamabal', 12),
       (110, 'Yoloaiquín', 12),
       (111, 'La Unión', 14),
       (112, 'San Alejo', 14),
       (113, 'Yucuaiquín', 14),
       (114, 'Conchagua', 14),
       (115, 'Intipucá', 14),
       (116, 'San José', 14),
       (117, 'El Carmen (La Unión)', 14),
       (118, 'Yayantique', 14),
       (119, 'Bolívar', 14),
       (120, 'Meanguera del Golfo', 14),
       (121, 'Santa Rosa de Lima', 14),
       (122, 'Pasaquina', 14),
       (123, 'Anamoros', 14),
       (124, 'Nueva Esparta', 14),
       (125, 'El Sauce', 14),
       (126, 'Concepción de Oriente', 14),
       (127, 'Polorós', 14),
       (128, 'Lislique', 14),
       (129, 'Antiguo Cuscatlán', 4),
       (130, 'Chiltiupán', 4),
       (131, 'Ciudad Arce', 4),
       (132, 'Colón', 4),
       (133, 'Comasagua', 4),
       (134, 'Huizúcar', 4),
       (135, 'Jayaque', 4),
       (136, 'Jicalapa', 4),
       (137, 'La Libertad', 4),
       (138, 'Santa Tecla', 4),
       (139, 'Nuevo Cuscatlán', 4),
       (140, 'San Juan Opico', 4),
       (141, 'Quezaltepeque', 4),
       (142, 'Sacacoyo', 4),
       (143, 'San José Villanueva', 4),
       (144, 'San Matías', 4),
       (145, 'San Pablo Tacachico', 4),
       (146, 'Talnique', 4),
       (147, 'Tamanique', 4),
       (148, 'Teotepeque', 4),
       (149, 'Tepecoyo', 4),
       (150, 'Zaragoza', 4),
       (151, 'Agua Caliente', 5),
       (152, 'Arcatao', 5),
       (153, 'Azacualpa', 5),
       (154, 'Cancasque', 5),
       (155, 'Chalatenango', 5),
       (156, 'Citalá', 5),
       (157, 'Comapala', 5),
       (158, 'Concepción Quezaltepeque', 5),
       (159, 'Dulce Nombre de María', 5),
       (160, 'El Carrizal', 5),
       (161, 'El Paraíso', 5),
       (162, 'La Laguna', 5),
       (163, 'La Palma', 5),
       (164, 'La Reina', 5),
       (165, 'Las Vueltas', 5),
       (166, 'Nueva Concepción', 5),
       (167, 'Nueva Trinidad', 5),
       (168, 'Nombre de Jesús', 5),
       (169, 'Ojos de Agua', 5),
       (170, 'Potonico', 5),
       (171, 'San Antonio de la Cruz', 5),
       (172, 'San Antonio Los Ranchos', 5),
       (173, 'San Fernando (Chalatenango)', 5),
       (174, 'San Francisco Lempa', 5),
       (175, 'San Francisco Morazán', 5),
       (176, 'San Ignacio', 5),
       (177, 'San Isidro Labrador', 5),
       (178, 'Las Flores', 5),
       (179, 'San Luis del Carmen', 5),
       (180, 'San Miguel de Mercedes', 5),
       (181, 'San Rafael', 5),
       (182, 'Santa Rita', 5),
       (183, 'Tejutla', 5),
       (184, 'Cojutepeque', 7),
       (185, 'Candelaria', 7),
       (186, 'El Carmen (Cuscatlán)', 7),
       (187, 'El Rosario (Cuscatlán)', 7),
       (188, 'Monte San Juan', 7),
       (189, 'Oratorio de Concepción', 7),
       (190, 'San Bartolomé Perulapía', 7),
       (191, 'San Cristóbal', 7),
       (192, 'San José Guayabal', 7),
       (193, 'San Pedro Perulapán', 7),
       (194, 'San Rafael Cedros', 7),
       (195, 'San Ramón', 7),
       (196, 'Santa Cruz Analquito', 7),
       (197, 'Santa Cruz Michapa', 7),
       (198, 'Suchitoto', 7),
       (199, 'Tenancingo', 7),
       (200, 'Aguilares', 6),
       (201, 'Apopa', 6),
       (202, 'Ayutuxtepeque', 6),
       (203, 'Cuscatancingo', 6),
       (204, 'Ciudad Delgado', 6),
       (205, 'El Paisnal', 6),
       (206, 'Guazapa', 6),
       (207, 'Ilopango', 6),
       (208, 'Mejicanos', 6),
       (209, 'Nejapa', 6),
       (210, 'Panchimalco', 6),
       (211, 'Rosario de Mora', 6),
       (212, 'San Marcos', 6),
       (213, 'San Martín', 6),
       (214, 'San Salvador', 6),
       (215, 'Santiago Texacuangos', 6),
       (216, 'Santo Tomás', 6),
       (217, 'Soyapango', 6),
       (218, 'Tonacatepeque', 6),
       (219, 'Zacatecoluca', 8),
       (220, 'Cuyultitán', 8),
       (221, 'El Rosario (La Paz)', 8),
       (222, 'Jerusalén', 8),
       (223, 'Mercedes La Ceiba', 8),
       (224, 'Olocuilta', 8),
       (225, 'Paraíso de Osorio', 8),
       (226, 'San Antonio Masahuat', 8),
       (227, 'San Emigdio', 8),
       (228, 'San Francisco Chinameca', 8),
       (229, 'San Pedro Masahuat', 8),
       (230, 'San Juan Nonualco', 8),
       (231, 'San Juan Talpa', 8),
       (232, 'San Juan Tepezontes', 8),
       (233, 'San Luis La Herradura', 8),
       (234, 'San Luis Talpa', 8),
       (235, 'San Miguel Tepezontes', 8),
       (236, 'San Pedro Nonualco', 8),
       (237, 'San Rafael Obrajuelo', 8),
       (238, 'Santa María Ostuma', 8),
       (239, 'Santiago Nonualco', 8),
       (240, 'Tapalhuaca', 8),
       (241, 'Cinquera', 9),
       (242, 'Dolores', 9),
       (243, 'Guacotecti', 9),
       (244, 'Ilobasco', 9),
       (245, 'Jutiapa', 9),
       (246, 'San Isidro (Cabañas)', 9),
       (247, 'Sensuntepeque', 9),
       (248, 'Tejutepeque', 9),
       (249, 'Victoria', 9),
       (250, 'Apastepeque', 10),
       (251, 'Guadalupe', 10),
       (252, 'San Cayetano Istepeque', 10),
       (253, 'San Esteban Catarina', 10),
       (254, 'San Ildefonso', 10),
       (255, 'San Lorenzo', 10),
       (256, 'San Sebastián', 10),
       (257, 'San Vicente', 10),
       (258, 'Santa Clara', 10),
       (259, 'Santo Domingo', 10),
       (260, 'Tecoluca', 10),
       (261, 'Tepetitán', 10),
       (262, 'Verapaz', 10);

-- Volcando datos para la tabla el_salvador.zonesv: ~4 rows (aproximadamente)
INSERT INTO public.zonesv
VALUES (1, 'Occidental'),
       (2, 'Central'),
       (3, 'Paracentral'),
       (4, 'Oriental');

SELECT pg_catalog.setval('public.depsv_id_seq', 14, true);

SELECT pg_catalog.setval('public.munsv_id_seq', 262, true);

SELECT pg_catalog.setval('public.zonesv_id_seq', 4, true);

ALTER TABLE ONLY public.depsv
    ADD CONSTRAINT pk_depsv PRIMARY KEY (id);

ALTER TABLE ONLY public.munsv
    ADD CONSTRAINT pk_munsv PRIMARY KEY (id, depsv_id);

ALTER TABLE ONLY public.zonesv
    ADD CONSTRAINT pk_zonesv PRIMARY KEY (id);

CREATE INDEX idx_depsv_id ON public.munsv USING btree (depsv_id);

CREATE INDEX idx_zonesv_id ON public.depsv USING btree (zonesv_id);

ALTER TABLE ONLY public.depsv
    ADD CONSTRAINT depsv_ibfk_1 FOREIGN KEY (zonesv_id) REFERENCES public.zonesv (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ONLY public.munsv
    ADD CONSTRAINT munsv_ibfk_1 FOREIGN KEY (depsv_id) REFERENCES public.depsv (id) ON DELETE CASCADE ON UPDATE CASCADE;

-- PostgreSQL database dump complete