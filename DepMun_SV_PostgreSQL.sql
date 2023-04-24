--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.7 (Debian 14.7-1.pgdg110+1)

-- Started on 2023-04-24 01:34:21 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS el_salvador;
--
-- TOC entry 4344 (class 1262 OID 33002750)
-- Name: da87s377gkqpv7; Type: DATABASE; Schema: -; Owner: qllgvlhmvkcwsw
--

CREATE DATABASE el_salvador WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4346 (class 0 OID 0)
-- Name: da87s377gkqpv7; Type: DATABASE PROPERTIES; Schema: -; Owner: qllgvlhmvkcwsw
--

ALTER DATABASE el_salvador SET search_path TO '$user', 'public', 'heroku_ext';


\connect da87s377gkqpv7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: qllgvlhmvkcwsw
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: qllgvlhmvkcwsw
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 33002804)
-- Name: depsv; Type: TABLE; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE TABLE public.depsv (
    id integer NOT NULL,
    depname character varying(30) NOT NULL,
    isocode character(5) NOT NULL,
    zonesv_id integer NOT NULL
);


ALTER TABLE public.depsv OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE depsv; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON TABLE public.depsv IS 'TRIAL';


--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN depsv.id; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.depsv.id IS 'TRIAL';


--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN depsv.depname; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.depsv.depname IS 'TRIAL';


--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN depsv.isocode; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.depsv.isocode IS 'TRIAL';


--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN depsv.zonesv_id; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.depsv.zonesv_id IS 'TRIAL';


--
-- TOC entry 215 (class 1259 OID 33002807)
-- Name: depsv_id_seq; Type: SEQUENCE; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE SEQUENCE public.depsv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.depsv_id_seq OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 215
-- Name: depsv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER SEQUENCE public.depsv_id_seq OWNED BY public.depsv.id;


--
-- TOC entry 216 (class 1259 OID 33002808)
-- Name: munsv; Type: TABLE; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE TABLE public.munsv (
    id integer NOT NULL,
    munname character varying(100) NOT NULL,
    depsv_id integer NOT NULL
);


ALTER TABLE public.munsv OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE munsv; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON TABLE public.munsv IS 'TRIAL';


--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN munsv.id; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.munsv.id IS 'TRIAL';


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN munsv.munname; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.munsv.munname IS 'TRIAL';


--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN munsv.depsv_id; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.munsv.depsv_id IS 'TRIAL';


--
-- TOC entry 217 (class 1259 OID 33002811)
-- Name: munsv_id_seq; Type: SEQUENCE; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE SEQUENCE public.munsv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.munsv_id_seq OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 217
-- Name: munsv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER SEQUENCE public.munsv_id_seq OWNED BY public.munsv.id;


--
-- TOC entry 218 (class 1259 OID 33002812)
-- Name: zonesv; Type: TABLE; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE TABLE public.zonesv (
    id integer NOT NULL,
    zonename character varying(15) NOT NULL
);


ALTER TABLE public.zonesv OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE zonesv; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON TABLE public.zonesv IS 'TRIAL';


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN zonesv.id; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.zonesv.id IS 'TRIAL';


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN zonesv.zonename; Type: COMMENT; Schema: public; Owner: qllgvlhmvkcwsw
--

COMMENT ON COLUMN public.zonesv.zonename IS 'TRIAL';


--
-- TOC entry 219 (class 1259 OID 33002815)
-- Name: zonesv_id_seq; Type: SEQUENCE; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE SEQUENCE public.zonesv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zonesv_id_seq OWNER TO qllgvlhmvkcwsw;

--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 219
-- Name: zonesv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER SEQUENCE public.zonesv_id_seq OWNED BY public.zonesv.id;


--
-- TOC entry 4179 (class 2604 OID 33002816)
-- Name: depsv id; Type: DEFAULT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.depsv ALTER COLUMN id SET DEFAULT nextval('public.depsv_id_seq'::regclass);


--
-- TOC entry 4180 (class 2604 OID 33002817)
-- Name: munsv id; Type: DEFAULT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.munsv ALTER COLUMN id SET DEFAULT nextval('public.munsv_id_seq'::regclass);


--
-- TOC entry 4181 (class 2604 OID 33002818)
-- Name: zonesv id; Type: DEFAULT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.zonesv ALTER COLUMN id SET DEFAULT nextval('public.zonesv_id_seq'::regclass);


--
-- TOC entry 4333 (class 0 OID 33002804)
-- Dependencies: 214
-- Data for Name: depsv; Type: TABLE DATA; Schema: public; Owner: qllgvlhmvkcwsw
--

INSERT INTO public.depsv VALUES (1, 'Ahuachapán', 'SV-AH', 1);
INSERT INTO public.depsv VALUES (2, 'Santa Ana', 'SV-SA', 1);
INSERT INTO public.depsv VALUES (3, 'Sonsonate', 'SV-SO', 1);
INSERT INTO public.depsv VALUES (4, 'La Libertad', 'SV-LI', 2);
INSERT INTO public.depsv VALUES (5, 'Chalatenango', 'SV-CH', 2);
INSERT INTO public.depsv VALUES (6, 'San Salvador', 'SV-SS', 2);
INSERT INTO public.depsv VALUES (7, 'Cuscatlán', 'SV-CU', 3);
INSERT INTO public.depsv VALUES (8, 'La Paz', 'SV-PA', 3);
INSERT INTO public.depsv VALUES (9, 'Cabañas', 'SV-CA', 3);
INSERT INTO public.depsv VALUES (10, 'San Vicente', 'SV-SV', 3);
INSERT INTO public.depsv VALUES (11, 'Usulután', 'SV-US', 4);
INSERT INTO public.depsv VALUES (12, 'Morazán', 'SV-MO', 4);
INSERT INTO public.depsv VALUES (13, 'San Miguel', 'SV-SM', 4);
INSERT INTO public.depsv VALUES (14, 'La Unión', 'SV-UN', 4);


--
-- TOC entry 4335 (class 0 OID 33002808)
-- Dependencies: 216
-- Data for Name: munsv; Type: TABLE DATA; Schema: public; Owner: qllgvlhmvkcwsw
--

INSERT INTO public.munsv VALUES (1, 'Ahuachapán', 1);
INSERT INTO public.munsv VALUES (2, 'Jujutla', 1);
INSERT INTO public.munsv VALUES (3, 'Atiquizaya', 1);
INSERT INTO public.munsv VALUES (4, 'Concepción de Ataco', 1);
INSERT INTO public.munsv VALUES (5, 'El Refugio', 1);
INSERT INTO public.munsv VALUES (6, 'Guaymango', 1);
INSERT INTO public.munsv VALUES (7, 'Apaneca', 1);
INSERT INTO public.munsv VALUES (8, 'San Francisco Menéndez', 1);
INSERT INTO public.munsv VALUES (9, 'San Lorenzo', 1);
INSERT INTO public.munsv VALUES (10, 'San Pedro Puxtla', 1);
INSERT INTO public.munsv VALUES (11, 'Tacuba', 1);
INSERT INTO public.munsv VALUES (12, 'Turín', 1);
INSERT INTO public.munsv VALUES (13, 'Candelaria de la Frontera', 2);
INSERT INTO public.munsv VALUES (14, 'Chalchuapa', 2);
INSERT INTO public.munsv VALUES (15, 'Coatepeque', 2);
INSERT INTO public.munsv VALUES (16, 'El Congo', 2);
INSERT INTO public.munsv VALUES (17, 'El Porvenir', 2);
INSERT INTO public.munsv VALUES (18, 'Masahuat', 2);
INSERT INTO public.munsv VALUES (19, 'Metapán', 2);
INSERT INTO public.munsv VALUES (20, 'San Antonio Pajonal', 2);
INSERT INTO public.munsv VALUES (21, 'San Sebastián Salitrillo', 2);
INSERT INTO public.munsv VALUES (22, 'Santa Ana', 2);
INSERT INTO public.munsv VALUES (23, 'Santa Rosa Guachipilín', 2);
INSERT INTO public.munsv VALUES (24, 'Santiago de la Frontera', 2);
INSERT INTO public.munsv VALUES (25, 'Texistepeque', 2);
INSERT INTO public.munsv VALUES (26, 'Acajutla', 3);
INSERT INTO public.munsv VALUES (27, 'Armenia', 3);
INSERT INTO public.munsv VALUES (28, 'Caluco', 3);
INSERT INTO public.munsv VALUES (29, 'Cuisnahuat', 3);
INSERT INTO public.munsv VALUES (30, 'Izalco', 3);
INSERT INTO public.munsv VALUES (31, 'Juayúa', 3);
INSERT INTO public.munsv VALUES (32, 'Nahuizalco', 3);
INSERT INTO public.munsv VALUES (33, 'Nahulingo', 3);
INSERT INTO public.munsv VALUES (34, 'Salcoatitán', 3);
INSERT INTO public.munsv VALUES (35, 'San Antonio del Monte', 3);
INSERT INTO public.munsv VALUES (36, 'San Julián', 3);
INSERT INTO public.munsv VALUES (37, 'Santa Catarina Masahuat', 3);
INSERT INTO public.munsv VALUES (38, 'Santa Isabel Ishuatán', 3);
INSERT INTO public.munsv VALUES (39, 'Santo Domingo de Guzmán', 3);
INSERT INTO public.munsv VALUES (40, 'Sonsonate', 3);
INSERT INTO public.munsv VALUES (41, 'Sonzacate', 3);
INSERT INTO public.munsv VALUES (42, 'Alegría', 11);
INSERT INTO public.munsv VALUES (43, 'Berlín', 11);
INSERT INTO public.munsv VALUES (44, 'California', 11);
INSERT INTO public.munsv VALUES (45, 'Concepción Batres', 11);
INSERT INTO public.munsv VALUES (46, 'El Triunfo', 11);
INSERT INTO public.munsv VALUES (47, 'Ereguayquín', 11);
INSERT INTO public.munsv VALUES (48, 'Estanzuelas', 11);
INSERT INTO public.munsv VALUES (49, 'Jiquilisco', 11);
INSERT INTO public.munsv VALUES (50, 'Jucuapa', 11);
INSERT INTO public.munsv VALUES (51, 'Jucuarán', 11);
INSERT INTO public.munsv VALUES (52, 'Mercedes Umaña', 11);
INSERT INTO public.munsv VALUES (53, 'Nueva Granada', 11);
INSERT INTO public.munsv VALUES (54, 'Ozatlán', 11);
INSERT INTO public.munsv VALUES (55, 'Puerto El Triunfo', 11);
INSERT INTO public.munsv VALUES (56, 'San Agustín', 11);
INSERT INTO public.munsv VALUES (57, 'San Buenaventura', 11);
INSERT INTO public.munsv VALUES (58, 'San Dionisio', 11);
INSERT INTO public.munsv VALUES (59, 'San Francisco Javier', 11);
INSERT INTO public.munsv VALUES (60, 'Santa Elena', 11);
INSERT INTO public.munsv VALUES (61, 'Santa María', 11);
INSERT INTO public.munsv VALUES (62, 'Santiago de María', 11);
INSERT INTO public.munsv VALUES (63, 'Tecapán', 11);
INSERT INTO public.munsv VALUES (64, 'Usulután', 11);
INSERT INTO public.munsv VALUES (65, 'Carolina', 13);
INSERT INTO public.munsv VALUES (66, 'Chapeltique', 13);
INSERT INTO public.munsv VALUES (67, 'Chinameca', 13);
INSERT INTO public.munsv VALUES (68, 'Chirilagua', 13);
INSERT INTO public.munsv VALUES (69, 'Ciudad Barrios', 13);
INSERT INTO public.munsv VALUES (70, 'Comacarán', 13);
INSERT INTO public.munsv VALUES (71, 'El Tránsito', 13);
INSERT INTO public.munsv VALUES (72, 'Lolotique', 13);
INSERT INTO public.munsv VALUES (73, 'Moncagua', 13);
INSERT INTO public.munsv VALUES (74, 'Nueva Guadalupe', 13);
INSERT INTO public.munsv VALUES (75, 'Nuevo Edén de San Juan', 13);
INSERT INTO public.munsv VALUES (76, 'Quelepa', 13);
INSERT INTO public.munsv VALUES (77, 'San Antonio del Mosco', 13);
INSERT INTO public.munsv VALUES (78, 'San Gerardo', 13);
INSERT INTO public.munsv VALUES (79, 'San Jorge', 13);
INSERT INTO public.munsv VALUES (80, 'San Luis de la Reina', 13);
INSERT INTO public.munsv VALUES (81, 'San Miguel', 13);
INSERT INTO public.munsv VALUES (82, 'San Rafael Oriente', 13);
INSERT INTO public.munsv VALUES (83, 'Sesori', 13);
INSERT INTO public.munsv VALUES (84, 'Uluazapa', 13);
INSERT INTO public.munsv VALUES (85, 'Arambala', 12);
INSERT INTO public.munsv VALUES (86, 'Cacaopera', 12);
INSERT INTO public.munsv VALUES (87, 'Chilanga', 12);
INSERT INTO public.munsv VALUES (88, 'Corinto', 12);
INSERT INTO public.munsv VALUES (89, 'Delicias de Concepción', 12);
INSERT INTO public.munsv VALUES (90, 'El Divisadero', 12);
INSERT INTO public.munsv VALUES (91, 'El Rosario (Morazán)', 12);
INSERT INTO public.munsv VALUES (92, 'Gualococti', 12);
INSERT INTO public.munsv VALUES (93, 'Guatajiagua', 12);
INSERT INTO public.munsv VALUES (94, 'Joateca', 12);
INSERT INTO public.munsv VALUES (95, 'Jocoaitique', 12);
INSERT INTO public.munsv VALUES (96, 'Jocoro', 12);
INSERT INTO public.munsv VALUES (97, 'Lolotiquillo', 12);
INSERT INTO public.munsv VALUES (98, 'Meanguera', 12);
INSERT INTO public.munsv VALUES (99, 'Osicala', 12);
INSERT INTO public.munsv VALUES (100, 'Perquín', 12);
INSERT INTO public.munsv VALUES (101, 'San Carlos', 12);
INSERT INTO public.munsv VALUES (102, 'San Fernando (Morazán)', 12);
INSERT INTO public.munsv VALUES (103, 'San Francisco Gotera', 12);
INSERT INTO public.munsv VALUES (104, 'San Isidro (Morazán)', 12);
INSERT INTO public.munsv VALUES (105, 'San Simón', 12);
INSERT INTO public.munsv VALUES (106, 'Sensembra', 12);
INSERT INTO public.munsv VALUES (107, 'Sociedad', 12);
INSERT INTO public.munsv VALUES (108, 'Torola', 12);
INSERT INTO public.munsv VALUES (109, 'Yamabal', 12);
INSERT INTO public.munsv VALUES (110, 'Yoloaiquín', 12);
INSERT INTO public.munsv VALUES (111, 'La Unión', 14);
INSERT INTO public.munsv VALUES (112, 'San Alejo', 14);
INSERT INTO public.munsv VALUES (113, 'Yucuaiquín', 14);
INSERT INTO public.munsv VALUES (114, 'Conchagua', 14);
INSERT INTO public.munsv VALUES (115, 'Intipucá', 14);
INSERT INTO public.munsv VALUES (116, 'San José', 14);
INSERT INTO public.munsv VALUES (117, 'El Carmen (La Unión)', 14);
INSERT INTO public.munsv VALUES (118, 'Yayantique', 14);
INSERT INTO public.munsv VALUES (119, 'Bolívar', 14);
INSERT INTO public.munsv VALUES (120, 'Meanguera del Golfo', 14);
INSERT INTO public.munsv VALUES (121, 'Santa Rosa de Lima', 14);
INSERT INTO public.munsv VALUES (122, 'Pasaquina', 14);
INSERT INTO public.munsv VALUES (123, 'Anamoros', 14);
INSERT INTO public.munsv VALUES (124, 'Nueva Esparta', 14);
INSERT INTO public.munsv VALUES (125, 'El Sauce', 14);
INSERT INTO public.munsv VALUES (126, 'Concepción de Oriente', 14);
INSERT INTO public.munsv VALUES (127, 'Polorós', 14);
INSERT INTO public.munsv VALUES (128, 'Lislique', 14);
INSERT INTO public.munsv VALUES (129, 'Antiguo Cuscatlán', 4);
INSERT INTO public.munsv VALUES (130, 'Chiltiupán', 4);
INSERT INTO public.munsv VALUES (131, 'Ciudad Arce', 4);
INSERT INTO public.munsv VALUES (132, 'Colón', 4);
INSERT INTO public.munsv VALUES (133, 'Comasagua', 4);
INSERT INTO public.munsv VALUES (134, 'Huizúcar', 4);
INSERT INTO public.munsv VALUES (135, 'Jayaque', 4);
INSERT INTO public.munsv VALUES (136, 'Jicalapa', 4);
INSERT INTO public.munsv VALUES (137, 'La Libertad', 4);
INSERT INTO public.munsv VALUES (138, 'Santa Tecla', 4);
INSERT INTO public.munsv VALUES (139, 'Nuevo Cuscatlán', 4);
INSERT INTO public.munsv VALUES (140, 'San Juan Opico', 4);
INSERT INTO public.munsv VALUES (141, 'Quezaltepeque', 4);
INSERT INTO public.munsv VALUES (142, 'Sacacoyo', 4);
INSERT INTO public.munsv VALUES (143, 'San José Villanueva', 4);
INSERT INTO public.munsv VALUES (144, 'San Matías', 4);
INSERT INTO public.munsv VALUES (145, 'San Pablo Tacachico', 4);
INSERT INTO public.munsv VALUES (146, 'Talnique', 4);
INSERT INTO public.munsv VALUES (147, 'Tamanique', 4);
INSERT INTO public.munsv VALUES (148, 'Teotepeque', 4);
INSERT INTO public.munsv VALUES (149, 'Tepecoyo', 4);
INSERT INTO public.munsv VALUES (150, 'Zaragoza', 4);
INSERT INTO public.munsv VALUES (151, 'Agua Caliente', 5);
INSERT INTO public.munsv VALUES (152, 'Arcatao', 5);
INSERT INTO public.munsv VALUES (153, 'Azacualpa', 5);
INSERT INTO public.munsv VALUES (154, 'Cancasque', 5);
INSERT INTO public.munsv VALUES (155, 'Chalatenango', 5);
INSERT INTO public.munsv VALUES (156, 'Citalá', 5);
INSERT INTO public.munsv VALUES (157, 'Comapala', 5);
INSERT INTO public.munsv VALUES (158, 'Concepción Quezaltepeque', 5);
INSERT INTO public.munsv VALUES (159, 'Dulce Nombre de María', 5);
INSERT INTO public.munsv VALUES (160, 'El Carrizal', 5);
INSERT INTO public.munsv VALUES (161, 'El Paraíso', 5);
INSERT INTO public.munsv VALUES (162, 'La Laguna', 5);
INSERT INTO public.munsv VALUES (163, 'La Palma', 5);
INSERT INTO public.munsv VALUES (164, 'La Reina', 5);
INSERT INTO public.munsv VALUES (165, 'Las Vueltas', 5);
INSERT INTO public.munsv VALUES (166, 'Nueva Concepción', 5);
INSERT INTO public.munsv VALUES (167, 'Nueva Trinidad', 5);
INSERT INTO public.munsv VALUES (168, 'Nombre de Jesús', 5);
INSERT INTO public.munsv VALUES (169, 'Ojos de Agua', 5);
INSERT INTO public.munsv VALUES (170, 'Potonico', 5);
INSERT INTO public.munsv VALUES (171, 'San Antonio de la Cruz', 5);
INSERT INTO public.munsv VALUES (172, 'San Antonio Los Ranchos', 5);
INSERT INTO public.munsv VALUES (173, 'San Fernando (Chalatenango)', 5);
INSERT INTO public.munsv VALUES (174, 'San Francisco Lempa', 5);
INSERT INTO public.munsv VALUES (175, 'San Francisco Morazán', 5);
INSERT INTO public.munsv VALUES (176, 'San Ignacio', 5);
INSERT INTO public.munsv VALUES (177, 'San Isidro Labrador', 5);
INSERT INTO public.munsv VALUES (178, 'Las Flores', 5);
INSERT INTO public.munsv VALUES (179, 'San Luis del Carmen', 5);
INSERT INTO public.munsv VALUES (180, 'San Miguel de Mercedes', 5);
INSERT INTO public.munsv VALUES (181, 'San Rafael', 5);
INSERT INTO public.munsv VALUES (182, 'Santa Rita', 5);
INSERT INTO public.munsv VALUES (183, 'Tejutla', 5);
INSERT INTO public.munsv VALUES (184, 'Cojutepeque', 7);
INSERT INTO public.munsv VALUES (185, 'Candelaria', 7);
INSERT INTO public.munsv VALUES (186, 'El Carmen (Cuscatlán)', 7);
INSERT INTO public.munsv VALUES (187, 'El Rosario (Cuscatlán)', 7);
INSERT INTO public.munsv VALUES (188, 'Monte San Juan', 7);
INSERT INTO public.munsv VALUES (189, 'Oratorio de Concepción', 7);
INSERT INTO public.munsv VALUES (190, 'San Bartolomé Perulapía', 7);
INSERT INTO public.munsv VALUES (191, 'San Cristóbal', 7);
INSERT INTO public.munsv VALUES (192, 'San José Guayabal', 7);
INSERT INTO public.munsv VALUES (193, 'San Pedro Perulapán', 7);
INSERT INTO public.munsv VALUES (194, 'San Rafael Cedros', 7);
INSERT INTO public.munsv VALUES (195, 'San Ramón', 7);
INSERT INTO public.munsv VALUES (196, 'Santa Cruz Analquito', 7);
INSERT INTO public.munsv VALUES (197, 'Santa Cruz Michapa', 7);
INSERT INTO public.munsv VALUES (198, 'Suchitoto', 7);
INSERT INTO public.munsv VALUES (199, 'Tenancingo', 7);
INSERT INTO public.munsv VALUES (200, 'Aguilares', 6);
INSERT INTO public.munsv VALUES (201, 'Apopa', 6);
INSERT INTO public.munsv VALUES (202, 'Ayutuxtepeque', 6);
INSERT INTO public.munsv VALUES (203, 'Cuscatancingo', 6);
INSERT INTO public.munsv VALUES (204, 'Ciudad Delgado', 6);
INSERT INTO public.munsv VALUES (205, 'El Paisnal', 6);
INSERT INTO public.munsv VALUES (206, 'Guazapa', 6);
INSERT INTO public.munsv VALUES (207, 'Ilopango', 6);
INSERT INTO public.munsv VALUES (208, 'Mejicanos', 6);
INSERT INTO public.munsv VALUES (209, 'Nejapa', 6);
INSERT INTO public.munsv VALUES (210, 'Panchimalco', 6);
INSERT INTO public.munsv VALUES (211, 'Rosario de Mora', 6);
INSERT INTO public.munsv VALUES (212, 'San Marcos', 6);
INSERT INTO public.munsv VALUES (213, 'San Martín', 6);
INSERT INTO public.munsv VALUES (214, 'San Salvador', 6);
INSERT INTO public.munsv VALUES (215, 'Santiago Texacuangos', 6);
INSERT INTO public.munsv VALUES (216, 'Santo Tomás', 6);
INSERT INTO public.munsv VALUES (217, 'Soyapango', 6);
INSERT INTO public.munsv VALUES (218, 'Tonacatepeque', 6);
INSERT INTO public.munsv VALUES (219, 'Zacatecoluca', 8);
INSERT INTO public.munsv VALUES (220, 'Cuyultitán', 8);
INSERT INTO public.munsv VALUES (221, 'El Rosario (La Paz)', 8);
INSERT INTO public.munsv VALUES (222, 'Jerusalén', 8);
INSERT INTO public.munsv VALUES (223, 'Mercedes La Ceiba', 8);
INSERT INTO public.munsv VALUES (224, 'Olocuilta', 8);
INSERT INTO public.munsv VALUES (225, 'Paraíso de Osorio', 8);
INSERT INTO public.munsv VALUES (226, 'San Antonio Masahuat', 8);
INSERT INTO public.munsv VALUES (227, 'San Emigdio', 8);
INSERT INTO public.munsv VALUES (228, 'San Francisco Chinameca', 8);
INSERT INTO public.munsv VALUES (229, 'San Pedro Masahuat', 8);
INSERT INTO public.munsv VALUES (230, 'San Juan Nonualco', 8);
INSERT INTO public.munsv VALUES (231, 'San Juan Talpa', 8);
INSERT INTO public.munsv VALUES (232, 'San Juan Tepezontes', 8);
INSERT INTO public.munsv VALUES (233, 'San Luis La Herradura', 8);
INSERT INTO public.munsv VALUES (234, 'San Luis Talpa', 8);
INSERT INTO public.munsv VALUES (235, 'San Miguel Tepezontes', 8);
INSERT INTO public.munsv VALUES (236, 'San Pedro Nonualco', 8);
INSERT INTO public.munsv VALUES (237, 'San Rafael Obrajuelo', 8);
INSERT INTO public.munsv VALUES (238, 'Santa María Ostuma', 8);
INSERT INTO public.munsv VALUES (239, 'Santiago Nonualco', 8);
INSERT INTO public.munsv VALUES (240, 'Tapalhuaca', 8);
INSERT INTO public.munsv VALUES (241, 'Cinquera', 9);
INSERT INTO public.munsv VALUES (242, 'Dolores', 9);
INSERT INTO public.munsv VALUES (243, 'Guacotecti', 9);
INSERT INTO public.munsv VALUES (244, 'Ilobasco', 9);
INSERT INTO public.munsv VALUES (245, 'Jutiapa', 9);
INSERT INTO public.munsv VALUES (246, 'San Isidro (Cabañas)', 9);
INSERT INTO public.munsv VALUES (247, 'Sensuntepeque', 9);
INSERT INTO public.munsv VALUES (248, 'Tejutepeque', 9);
INSERT INTO public.munsv VALUES (249, 'Victoria', 9);
INSERT INTO public.munsv VALUES (250, 'Apastepeque', 10);
INSERT INTO public.munsv VALUES (251, 'Guadalupe', 10);
INSERT INTO public.munsv VALUES (252, 'San Cayetano Istepeque', 10);
INSERT INTO public.munsv VALUES (253, 'San Esteban Catarina', 10);
INSERT INTO public.munsv VALUES (254, 'San Ildefonso', 10);
INSERT INTO public.munsv VALUES (255, 'San Lorenzo', 10);
INSERT INTO public.munsv VALUES (256, 'San Sebastián', 10);
INSERT INTO public.munsv VALUES (257, 'San Vicente', 10);
INSERT INTO public.munsv VALUES (258, 'Santa Clara', 10);
INSERT INTO public.munsv VALUES (259, 'Santo Domingo', 10);
INSERT INTO public.munsv VALUES (260, 'Tecoluca', 10);
INSERT INTO public.munsv VALUES (261, 'Tepetitán', 10);
INSERT INTO public.munsv VALUES (262, 'Verapaz', 10);


--
-- TOC entry 4337 (class 0 OID 33002812)
-- Dependencies: 218
-- Data for Name: zonesv; Type: TABLE DATA; Schema: public; Owner: qllgvlhmvkcwsw
--

INSERT INTO public.zonesv VALUES (1, 'Occidental');
INSERT INTO public.zonesv VALUES (2, 'Central');
INSERT INTO public.zonesv VALUES (3, 'Paracentral');
INSERT INTO public.zonesv VALUES (4, 'Oriental');


--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 215
-- Name: depsv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qllgvlhmvkcwsw
--

SELECT pg_catalog.setval('public.depsv_id_seq', 14, true);


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 217
-- Name: munsv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qllgvlhmvkcwsw
--

SELECT pg_catalog.setval('public.munsv_id_seq', 262, true);


--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 219
-- Name: zonesv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qllgvlhmvkcwsw
--

SELECT pg_catalog.setval('public.zonesv_id_seq', 4, true);


--
-- TOC entry 4184 (class 2606 OID 33002820)
-- Name: depsv pk_depsv; Type: CONSTRAINT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.depsv
    ADD CONSTRAINT pk_depsv PRIMARY KEY (id);


--
-- TOC entry 4187 (class 2606 OID 33002822)
-- Name: munsv pk_munsv; Type: CONSTRAINT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.munsv
    ADD CONSTRAINT pk_munsv PRIMARY KEY (id, depsv_id);


--
-- TOC entry 4189 (class 2606 OID 33002824)
-- Name: zonesv pk_zonesv; Type: CONSTRAINT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.zonesv
    ADD CONSTRAINT pk_zonesv PRIMARY KEY (id);


--
-- TOC entry 4185 (class 1259 OID 33002825)
-- Name: idx_depsv_id; Type: INDEX; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE INDEX idx_depsv_id ON public.munsv USING btree (depsv_id);


--
-- TOC entry 4182 (class 1259 OID 33002826)
-- Name: idx_zonesv_id; Type: INDEX; Schema: public; Owner: qllgvlhmvkcwsw
--

CREATE INDEX idx_zonesv_id ON public.depsv USING btree (zonesv_id);


--
-- TOC entry 4190 (class 2606 OID 33002827)
-- Name: depsv depsv_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.depsv
    ADD CONSTRAINT depsv_ibfk_1 FOREIGN KEY (zonesv_id) REFERENCES public.zonesv(id);


--
-- TOC entry 4191 (class 2606 OID 33002832)
-- Name: munsv munsv_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: qllgvlhmvkcwsw
--

ALTER TABLE ONLY public.munsv
    ADD CONSTRAINT munsv_ibfk_1 FOREIGN KEY (depsv_id) REFERENCES public.depsv(id);


--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 4344
-- Name: DATABASE da87s377gkqpv7; Type: ACL; Schema: -; Owner: qllgvlhmvkcwsw
--

REVOKE CONNECT,TEMPORARY ON DATABASE el_salvador FROM PUBLIC;


--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: qllgvlhmvkcwsw
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO qllgvlhmvkcwsw;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 852
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO qllgvlhmvkcwsw;


-- Completed on 2023-04-24 01:34:32 UTC

--
-- PostgreSQL database dump complete
--