--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin (
    id bigint NOT NULL,
    version bigint NOT NULL,
    account_expired boolean NOT NULL,
    account_locked boolean NOT NULL,
    enabled boolean NOT NULL,
    password character varying(255) NOT NULL,
    password_expired boolean NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: admin_authority; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_authority (
    authority_id bigint NOT NULL,
    admin_id bigint NOT NULL
);


ALTER TABLE public.admin_authority OWNER TO postgres;

--
-- Name: authority; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE authority (
    id bigint NOT NULL,
    version bigint NOT NULL,
    authority character varying(255) NOT NULL
);


ALTER TABLE public.authority OWNER TO postgres;

--
-- Name: diagnosis; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE diagnosis (
    id bigint NOT NULL,
    version bigint NOT NULL,
    date_created timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    prescription character varying(255) NOT NULL,
    student_id bigint NOT NULL
);


ALTER TABLE public.diagnosis OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 525, true);


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE student (
    id bigint NOT NULL,
    version bigint NOT NULL,
    address character varying(255) NOT NULL,
    birthday timestamp without time zone NOT NULL,
    blood_type character varying(255) NOT NULL,
    college character varying(255) NOT NULL,
    enrolled boolean NOT NULL,
    first_name character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    height character varying(255) NOT NULL,
    id_number character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    major character varying(255) NOT NULL,
    middle_name character varying(255) NOT NULL,
    weight character varying(255) NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: admin_authority; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO diagnosis VALUES (106, 0, '2013-09-30 20:13:52.054', 'fever', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (107, 0, '2013-09-30 20:13:52.132', 'colds', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (108, 0, '2013-09-30 20:13:52.132', 'dengue', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (109, 0, '2013-09-30 20:13:52.132', 'chicken pox', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (110, 0, '2013-09-30 20:13:52.148', 'fever', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (111, 0, '2013-09-30 20:13:52.148', 'colds', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (112, 0, '2013-09-30 20:13:52.163', 'dengue', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (113, 0, '2013-09-30 20:13:52.163', 'chicken pox', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (114, 0, '2013-09-30 20:13:52.179', 'fever', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (115, 0, '2013-09-30 20:13:52.179', 'colds', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (116, 0, '2013-09-30 20:13:52.195', 'dengue', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (117, 0, '2013-09-30 20:13:52.195', 'chicken pox', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (118, 0, '2013-09-30 20:13:52.195', 'fever', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (119, 0, '2013-09-30 20:13:52.21', 'colds', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (120, 0, '2013-09-30 20:13:52.21', 'dengue', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (121, 0, '2013-09-30 20:13:52.226', 'chicken pox', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (122, 0, '2013-09-30 20:13:52.226', 'fever', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (123, 0, '2013-09-30 20:13:52.241', 'colds', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (124, 0, '2013-09-30 20:13:52.241', 'dengue', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (125, 0, '2013-09-30 20:13:52.241', 'chicken pox', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (126, 0, '2013-09-30 20:13:52.257', 'fever', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (127, 0, '2013-09-30 20:13:52.257', 'colds', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (128, 0, '2013-09-30 20:13:52.273', 'dengue', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (129, 0, '2013-09-30 20:13:52.273', 'chicken pox', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (130, 0, '2013-09-30 20:13:52.288', 'fever', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (131, 0, '2013-09-30 20:13:52.288', 'colds', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (132, 0, '2013-09-30 20:13:52.304', 'dengue', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (133, 0, '2013-09-30 20:13:52.304', 'chicken pox', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (134, 0, '2013-09-30 20:13:52.319', 'fever', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (135, 0, '2013-09-30 20:13:52.319', 'colds', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (136, 0, '2013-09-30 20:13:52.335', 'dengue', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (137, 0, '2013-09-30 20:13:52.335', 'chicken pox', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (138, 0, '2013-09-30 20:13:52.335', 'fever', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (139, 0, '2013-09-30 20:13:52.351', 'colds', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (140, 0, '2013-09-30 20:13:52.351', 'dengue', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (141, 0, '2013-09-30 20:13:52.366', 'chicken pox', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (142, 0, '2013-09-30 20:13:52.397', 'fever', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (143, 0, '2013-09-30 20:13:52.413', 'colds', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (144, 0, '2013-09-30 20:13:52.413', 'dengue', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (145, 0, '2013-09-30 20:13:52.429', 'chicken pox', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (146, 0, '2013-09-30 20:13:52.429', 'fever', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (147, 0, '2013-09-30 20:13:52.444', 'colds', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (148, 0, '2013-09-30 20:13:52.444', 'dengue', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (149, 0, '2013-09-30 20:13:52.46', 'chicken pox', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (150, 0, '2013-09-30 20:13:52.46', 'fever', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (151, 0, '2013-09-30 20:13:52.475', 'colds', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (152, 0, '2013-09-30 20:13:52.475', 'dengue', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (153, 0, '2013-09-30 20:13:52.491', 'chicken pox', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (154, 0, '2013-09-30 20:13:52.491', 'fever', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (155, 0, '2013-09-30 20:13:52.491', 'colds', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (156, 0, '2013-09-30 20:13:52.507', 'dengue', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (157, 0, '2013-09-30 20:13:52.507', 'chicken pox', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (158, 0, '2013-09-30 20:13:52.507', 'fever', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (159, 0, '2013-09-30 20:13:52.507', 'colds', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (160, 0, '2013-09-30 20:13:52.522', 'dengue', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (161, 0, '2013-09-30 20:13:52.522', 'chicken pox', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (162, 0, '2013-09-30 20:13:52.522', 'fever', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (163, 0, '2013-09-30 20:13:52.538', 'colds', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (164, 0, '2013-09-30 20:13:52.538', 'dengue', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (165, 0, '2013-09-30 20:13:52.538', 'chicken pox', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (166, 0, '2013-09-30 20:13:52.538', 'fever', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (167, 0, '2013-09-30 20:13:52.553', 'colds', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (168, 0, '2013-09-30 20:13:52.553', 'dengue', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (169, 0, '2013-09-30 20:13:52.553', 'chicken pox', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (170, 0, '2013-09-30 20:13:52.553', 'fever', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (171, 0, '2013-09-30 20:13:52.569', 'colds', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (172, 0, '2013-09-30 20:13:52.569', 'dengue', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (173, 0, '2013-09-30 20:13:52.569', 'chicken pox', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (174, 0, '2013-09-30 20:13:52.585', 'fever', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (175, 0, '2013-09-30 20:13:52.585', 'colds', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (176, 0, '2013-09-30 20:13:52.585', 'dengue', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (177, 0, '2013-09-30 20:13:52.585', 'chicken pox', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (178, 0, '2013-09-30 20:13:52.6', 'fever', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (179, 0, '2013-09-30 20:13:52.6', 'colds', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (180, 0, '2013-09-30 20:13:52.6', 'dengue', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (181, 0, '2013-09-30 20:13:52.616', 'chicken pox', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (182, 0, '2013-09-30 20:13:52.616', 'fever', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (183, 0, '2013-09-30 20:13:52.616', 'colds', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (184, 0, '2013-09-30 20:13:52.616', 'dengue', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (185, 0, '2013-09-30 20:13:52.631', 'chicken pox', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (186, 0, '2013-09-30 20:13:52.631', 'fever', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (187, 0, '2013-09-30 20:13:52.631', 'colds', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (188, 0, '2013-09-30 20:13:52.647', 'dengue', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (189, 0, '2013-09-30 20:13:52.647', 'chicken pox', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (190, 0, '2013-09-30 20:13:52.647', 'fever', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (191, 0, '2013-09-30 20:13:52.647', 'colds', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (192, 0, '2013-09-30 20:13:52.663', 'dengue', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (193, 0, '2013-09-30 20:13:52.663', 'chicken pox', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (194, 0, '2013-09-30 20:13:52.663', 'fever', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (195, 0, '2013-09-30 20:13:52.678', 'colds', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (196, 0, '2013-09-30 20:13:52.678', 'dengue', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (197, 0, '2013-09-30 20:13:52.678', 'chicken pox', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (198, 0, '2013-09-30 20:13:52.694', 'fever', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (199, 0, '2013-09-30 20:13:52.694', 'colds', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (200, 0, '2013-09-30 20:13:52.694', 'dengue', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (201, 0, '2013-09-30 20:13:52.694', 'chicken pox', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (202, 0, '2013-09-30 20:13:52.709', 'fever', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (203, 0, '2013-09-30 20:13:52.709', 'colds', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (204, 0, '2013-09-30 20:13:52.709', 'dengue', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (205, 0, '2013-09-30 20:13:52.725', 'chicken pox', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (206, 0, '2013-09-30 20:13:52.725', 'fever', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (207, 0, '2013-09-30 20:13:52.725', 'colds', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (208, 0, '2013-09-30 20:13:52.741', 'dengue', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (209, 0, '2013-09-30 20:13:52.741', 'chicken pox', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (210, 0, '2013-09-30 20:13:52.756', 'fever', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (211, 0, '2013-09-30 20:13:52.756', 'colds', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (212, 0, '2013-09-30 20:13:52.772', 'dengue', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (213, 0, '2013-09-30 20:13:52.772', 'chicken pox', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (214, 0, '2013-09-30 20:13:52.787', 'fever', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (215, 0, '2013-09-30 20:13:52.787', 'colds', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (216, 0, '2013-09-30 20:13:52.787', 'dengue', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (217, 0, '2013-09-30 20:13:52.803', 'chicken pox', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (218, 0, '2013-09-30 20:13:52.803', 'fever', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (219, 0, '2013-09-30 20:13:52.803', 'colds', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (220, 0, '2013-09-30 20:13:52.819', 'dengue', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (221, 0, '2013-09-30 20:13:52.819', 'chicken pox', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (222, 0, '2013-09-30 20:13:52.819', 'fever', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (223, 0, '2013-09-30 20:13:52.834', 'colds', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (224, 0, '2013-09-30 20:13:52.834', 'dengue', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (225, 0, '2013-09-30 20:13:52.834', 'chicken pox', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (226, 0, '2013-09-30 20:13:52.85', 'fever', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (227, 0, '2013-09-30 20:13:52.85', 'colds', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (228, 0, '2013-09-30 20:13:52.85', 'dengue', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (229, 0, '2013-09-30 20:13:52.865', 'chicken pox', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (230, 0, '2013-09-30 20:13:52.865', 'fever', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (231, 0, '2013-09-30 20:13:52.865', 'colds', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (232, 0, '2013-09-30 20:13:52.881', 'dengue', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (233, 0, '2013-09-30 20:13:52.881', 'chicken pox', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (234, 0, '2013-09-30 20:13:52.881', 'fever', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (235, 0, '2013-09-30 20:13:52.897', 'colds', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (236, 0, '2013-09-30 20:13:52.897', 'dengue', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (237, 0, '2013-09-30 20:13:52.897', 'chicken pox', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (238, 0, '2013-09-30 20:13:52.912', 'fever', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (239, 0, '2013-09-30 20:13:52.912', 'colds', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (240, 0, '2013-09-30 20:13:52.912', 'dengue', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (241, 0, '2013-09-30 20:13:52.928', 'chicken pox', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (242, 0, '2013-09-30 20:13:52.928', 'fever', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (243, 0, '2013-09-30 20:13:52.928', 'colds', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (244, 0, '2013-09-30 20:13:52.943', 'dengue', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (245, 0, '2013-09-30 20:13:52.943', 'chicken pox', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (246, 0, '2013-09-30 20:13:52.943', 'fever', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (247, 0, '2013-09-30 20:13:52.959', 'colds', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (248, 0, '2013-09-30 20:13:52.959', 'dengue', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (249, 0, '2013-09-30 20:13:52.959', 'chicken pox', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (250, 0, '2013-09-30 20:13:52.975', 'fever', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (251, 0, '2013-09-30 20:13:52.975', 'colds', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (252, 0, '2013-09-30 20:13:52.975', 'dengue', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (253, 0, '2013-09-30 20:13:52.99', 'chicken pox', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (254, 0, '2013-09-30 20:13:52.99', 'fever', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (255, 0, '2013-09-30 20:13:52.99', 'colds', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (256, 0, '2013-09-30 20:13:52.99', 'dengue', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (257, 0, '2013-09-30 20:13:53.006', 'chicken pox', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (258, 0, '2013-09-30 20:13:53.006', 'fever', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (259, 0, '2013-09-30 20:13:53.006', 'colds', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (260, 0, '2013-09-30 20:13:53.006', 'dengue', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (261, 0, '2013-09-30 20:13:53.021', 'chicken pox', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (262, 0, '2013-09-30 20:13:53.021', 'fever', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (263, 0, '2013-09-30 20:13:53.021', 'colds', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (264, 0, '2013-09-30 20:13:53.037', 'dengue', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (265, 0, '2013-09-30 20:13:53.037', 'chicken pox', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (266, 0, '2013-09-30 20:13:53.037', 'fever', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (267, 0, '2013-09-30 20:13:53.037', 'colds', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (268, 0, '2013-09-30 20:13:53.053', 'dengue', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (269, 0, '2013-09-30 20:13:53.053', 'chicken pox', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (270, 0, '2013-09-30 20:13:53.053', 'fever', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (271, 0, '2013-09-30 20:13:53.053', 'colds', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (272, 0, '2013-09-30 20:13:53.068', 'dengue', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (273, 0, '2013-09-30 20:13:53.084', 'chicken pox', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (274, 0, '2013-09-30 20:13:53.084', 'fever', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (275, 0, '2013-09-30 20:13:53.084', 'colds', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (276, 0, '2013-09-30 20:13:53.099', 'dengue', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (277, 0, '2013-09-30 20:13:53.099', 'chicken pox', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (278, 0, '2013-09-30 20:13:53.099', 'fever', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (279, 0, '2013-09-30 20:13:53.099', 'colds', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (280, 0, '2013-09-30 20:13:53.115', 'dengue', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (281, 0, '2013-09-30 20:13:53.115', 'chicken pox', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (282, 0, '2013-09-30 20:13:53.115', 'fever', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (283, 0, '2013-09-30 20:13:53.115', 'colds', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (284, 0, '2013-09-30 20:13:53.131', 'dengue', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (285, 0, '2013-09-30 20:13:53.131', 'chicken pox', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (286, 0, '2013-09-30 20:13:53.131', 'fever', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (287, 0, '2013-09-30 20:13:53.146', 'colds', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (288, 0, '2013-09-30 20:13:53.146', 'dengue', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (289, 0, '2013-09-30 20:13:53.146', 'chicken pox', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (290, 0, '2013-09-30 20:13:53.146', 'fever', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (291, 0, '2013-09-30 20:13:53.162', 'colds', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (292, 0, '2013-09-30 20:13:53.162', 'dengue', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (293, 0, '2013-09-30 20:13:53.162', 'chicken pox', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (294, 0, '2013-09-30 20:13:53.162', 'fever', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (295, 0, '2013-09-30 20:13:53.177', 'colds', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (296, 0, '2013-09-30 20:13:53.177', 'dengue', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (297, 0, '2013-09-30 20:13:53.193', 'chicken pox', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (298, 0, '2013-09-30 20:13:53.193', 'fever', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (299, 0, '2013-09-30 20:13:53.193', 'colds', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (300, 0, '2013-09-30 20:13:53.209', 'dengue', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (301, 0, '2013-09-30 20:13:53.209', 'chicken pox', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (302, 0, '2013-09-30 20:13:53.209', 'fever', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (303, 0, '2013-09-30 20:13:53.209', 'colds', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (304, 0, '2013-09-30 20:13:53.224', 'dengue', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (305, 0, '2013-09-30 20:13:53.224', 'chicken pox', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (306, 0, '2013-09-30 20:13:53.224', 'fever', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (307, 0, '2013-09-30 20:13:53.224', 'colds', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (308, 0, '2013-09-30 20:13:53.24', 'dengue', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (309, 0, '2013-09-30 20:13:53.24', 'chicken pox', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (310, 0, '2013-09-30 20:13:53.24', 'fever', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (311, 0, '2013-09-30 20:13:53.255', 'colds', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (312, 0, '2013-09-30 20:13:53.255', 'dengue', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (313, 0, '2013-09-30 20:13:53.255', 'chicken pox', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (314, 0, '2013-09-30 20:13:53.255', 'fever', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (315, 0, '2013-09-30 20:13:53.271', 'colds', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (316, 0, '2013-09-30 20:13:53.271', 'dengue', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (317, 0, '2013-09-30 20:13:53.271', 'chicken pox', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (318, 0, '2013-09-30 20:13:53.287', 'fever', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (319, 0, '2013-09-30 20:13:53.287', 'colds', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (320, 0, '2013-09-30 20:13:53.287', 'dengue', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (321, 0, '2013-09-30 20:13:53.287', 'chicken pox', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (322, 0, '2013-09-30 20:13:53.302', 'fever', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (323, 0, '2013-09-30 20:13:53.302', 'colds', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (324, 0, '2013-09-30 20:13:53.302', 'dengue', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (325, 0, '2013-09-30 20:13:53.318', 'chicken pox', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (326, 0, '2013-09-30 20:13:53.318', 'fever', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (327, 0, '2013-09-30 20:13:53.318', 'colds', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (328, 0, '2013-09-30 20:13:53.333', 'dengue', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (329, 0, '2013-09-30 20:13:53.333', 'chicken pox', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (330, 0, '2013-09-30 20:13:53.333', 'fever', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (331, 0, '2013-09-30 20:13:53.349', 'colds', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (332, 0, '2013-09-30 20:13:53.349', 'dengue', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (333, 0, '2013-09-30 20:13:53.349', 'chicken pox', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (334, 0, '2013-09-30 20:13:53.365', 'fever', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (335, 0, '2013-09-30 20:13:53.365', 'colds', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (336, 0, '2013-09-30 20:13:53.365', 'dengue', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (337, 0, '2013-09-30 20:13:53.38', 'chicken pox', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (338, 0, '2013-09-30 20:13:53.38', 'fever', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (339, 0, '2013-09-30 20:13:53.38', 'colds', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (340, 0, '2013-09-30 20:13:53.38', 'dengue', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (341, 0, '2013-09-30 20:13:53.396', 'chicken pox', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (342, 0, '2013-09-30 20:13:53.396', 'fever', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (343, 0, '2013-09-30 20:13:53.396', 'colds', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (344, 0, '2013-09-30 20:13:53.411', 'dengue', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (345, 0, '2013-09-30 20:13:53.411', 'chicken pox', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (346, 0, '2013-09-30 20:13:53.411', 'fever', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (347, 0, '2013-09-30 20:13:53.411', 'colds', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (348, 0, '2013-09-30 20:13:53.427', 'dengue', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (349, 0, '2013-09-30 20:13:53.427', 'chicken pox', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (350, 0, '2013-09-30 20:13:53.427', 'fever', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (351, 0, '2013-09-30 20:13:53.427', 'colds', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (352, 0, '2013-09-30 20:13:53.443', 'dengue', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (353, 0, '2013-09-30 20:13:53.443', 'chicken pox', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (354, 0, '2013-09-30 20:13:53.443', 'fever', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (355, 0, '2013-09-30 20:13:53.458', 'colds', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (356, 0, '2013-09-30 20:13:53.458', 'dengue', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (357, 0, '2013-09-30 20:13:53.458', 'chicken pox', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (358, 0, '2013-09-30 20:13:53.474', 'fever', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (359, 0, '2013-09-30 20:13:53.474', 'colds', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (360, 0, '2013-09-30 20:13:53.489', 'dengue', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (361, 0, '2013-09-30 20:13:53.489', 'chicken pox', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (362, 0, '2013-09-30 20:13:53.489', 'fever', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (363, 0, '2013-09-30 20:13:53.489', 'colds', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (364, 0, '2013-09-30 20:13:53.505', 'dengue', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (365, 0, '2013-09-30 20:13:53.505', 'chicken pox', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (366, 0, '2013-09-30 20:13:53.521', 'fever', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (367, 0, '2013-09-30 20:13:53.521', 'colds', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (368, 0, '2013-09-30 20:13:53.536', 'dengue', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (369, 0, '2013-09-30 20:13:53.536', 'chicken pox', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (370, 0, '2013-09-30 20:13:53.536', 'fever', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (371, 0, '2013-09-30 20:13:53.552', 'colds', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (372, 0, '2013-09-30 20:13:53.552', 'dengue', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (373, 0, '2013-09-30 20:13:53.552', 'chicken pox', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (374, 0, '2013-09-30 20:13:53.567', 'fever', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (375, 0, '2013-09-30 20:13:53.567', 'colds', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (376, 0, '2013-09-30 20:13:53.567', 'dengue', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (377, 0, '2013-09-30 20:13:53.583', 'chicken pox', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (378, 0, '2013-09-30 20:13:53.583', 'fever', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (379, 0, '2013-09-30 20:13:53.583', 'colds', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (380, 0, '2013-09-30 20:13:53.599', 'dengue', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (381, 0, '2013-09-30 20:13:53.599', 'chicken pox', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (382, 0, '2013-09-30 20:13:53.599', 'fever', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (383, 0, '2013-09-30 20:13:53.599', 'colds', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (384, 0, '2013-09-30 20:13:53.614', 'dengue', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (385, 0, '2013-09-30 20:13:53.614', 'chicken pox', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (386, 0, '2013-09-30 20:13:53.63', 'fever', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (387, 0, '2013-09-30 20:13:53.63', 'colds', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (388, 0, '2013-09-30 20:13:53.63', 'dengue', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (389, 0, '2013-09-30 20:13:53.645', 'chicken pox', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (390, 0, '2013-09-30 20:13:53.645', 'fever', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (391, 0, '2013-09-30 20:13:53.645', 'colds', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (392, 0, '2013-09-30 20:13:53.661', 'dengue', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (393, 0, '2013-09-30 20:13:53.661', 'chicken pox', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (394, 0, '2013-09-30 20:13:53.661', 'fever', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (395, 0, '2013-09-30 20:13:53.677', 'colds', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (396, 0, '2013-09-30 20:13:53.677', 'dengue', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (397, 0, '2013-09-30 20:13:53.677', 'chicken pox', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (398, 0, '2013-09-30 20:13:53.692', 'fever', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (399, 0, '2013-09-30 20:13:53.692', 'colds', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (400, 0, '2013-09-30 20:13:53.692', 'dengue', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (401, 0, '2013-09-30 20:13:53.708', 'chicken pox', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (402, 0, '2013-09-30 20:13:53.708', 'fever', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (403, 0, '2013-09-30 20:13:53.708', 'colds', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (404, 0, '2013-09-30 20:13:53.723', 'dengue', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (405, 0, '2013-09-30 20:13:53.723', 'chicken pox', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (406, 0, '2013-09-30 20:13:53.739', 'fever', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (407, 0, '2013-09-30 20:13:53.739', 'colds', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (408, 0, '2013-09-30 20:13:53.739', 'dengue', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (409, 0, '2013-09-30 20:13:53.755', 'chicken pox', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (410, 0, '2013-09-30 20:13:53.755', 'fever', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (411, 0, '2013-09-30 20:13:53.77', 'colds', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (412, 0, '2013-09-30 20:13:53.77', 'dengue', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (413, 0, '2013-09-30 20:13:53.77', 'chicken pox', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (414, 0, '2013-09-30 20:13:53.786', 'fever', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (415, 0, '2013-09-30 20:13:53.786', 'colds', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (416, 0, '2013-09-30 20:13:53.786', 'dengue', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (417, 0, '2013-09-30 20:13:53.786', 'chicken pox', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (418, 0, '2013-09-30 20:13:53.801', 'fever', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (419, 0, '2013-09-30 20:13:53.801', 'colds', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (420, 0, '2013-09-30 20:13:53.801', 'dengue', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (421, 0, '2013-09-30 20:13:53.817', 'chicken pox', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (422, 0, '2013-09-30 20:13:53.817', 'fever', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (423, 0, '2013-09-30 20:13:53.817', 'colds', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (424, 0, '2013-09-30 20:13:53.833', 'dengue', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (425, 0, '2013-09-30 20:13:53.833', 'chicken pox', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (426, 0, '2013-09-30 20:13:53.833', 'fever', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (427, 0, '2013-09-30 20:13:53.833', 'colds', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (428, 0, '2013-09-30 20:13:53.848', 'dengue', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (429, 0, '2013-09-30 20:13:53.848', 'chicken pox', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (430, 0, '2013-09-30 20:13:53.848', 'fever', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (431, 0, '2013-09-30 20:13:53.864', 'colds', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (432, 0, '2013-09-30 20:13:53.864', 'dengue', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (433, 0, '2013-09-30 20:13:53.864', 'chicken pox', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (434, 0, '2013-09-30 20:13:53.864', 'fever', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (435, 0, '2013-09-30 20:13:53.879', 'colds', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (436, 0, '2013-09-30 20:13:53.879', 'dengue', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (437, 0, '2013-09-30 20:13:53.879', 'chicken pox', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (438, 0, '2013-09-30 20:13:53.895', 'fever', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (439, 0, '2013-09-30 20:13:53.895', 'colds', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (440, 0, '2013-09-30 20:13:53.895', 'dengue', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (441, 0, '2013-09-30 20:13:53.911', 'chicken pox', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (442, 0, '2013-09-30 20:13:53.911', 'fever', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (443, 0, '2013-09-30 20:13:53.911', 'colds', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (444, 0, '2013-09-30 20:13:53.926', 'dengue', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (445, 0, '2013-09-30 20:13:53.926', 'chicken pox', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (446, 0, '2013-09-30 20:13:53.926', 'fever', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (447, 0, '2013-09-30 20:13:53.942', 'colds', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (448, 0, '2013-09-30 20:13:53.942', 'dengue', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (449, 0, '2013-09-30 20:13:53.942', 'chicken pox', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (450, 0, '2013-09-30 20:13:53.957', 'fever', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (451, 0, '2013-09-30 20:13:53.957', 'colds', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (452, 0, '2013-09-30 20:13:53.957', 'dengue', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (453, 0, '2013-09-30 20:13:53.957', 'chicken pox', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (454, 0, '2013-09-30 20:13:53.973', 'fever', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (455, 0, '2013-09-30 20:13:53.989', 'colds', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (456, 0, '2013-09-30 20:13:53.989', 'dengue', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (457, 0, '2013-09-30 20:13:53.989', 'chicken pox', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (458, 0, '2013-09-30 20:13:54.004', 'fever', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (459, 0, '2013-09-30 20:13:54.004', 'colds', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (460, 0, '2013-09-30 20:13:54.004', 'dengue', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (461, 0, '2013-09-30 20:13:54.004', 'chicken pox', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (462, 0, '2013-09-30 20:13:54.02', 'fever', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (463, 0, '2013-09-30 20:13:54.02', 'colds', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (464, 0, '2013-09-30 20:13:54.02', 'dengue', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (465, 0, '2013-09-30 20:13:54.02', 'chicken pox', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (466, 0, '2013-09-30 20:13:54.035', 'fever', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (467, 0, '2013-09-30 20:13:54.035', 'colds', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (468, 0, '2013-09-30 20:13:54.035', 'dengue', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (469, 0, '2013-09-30 20:13:54.051', 'chicken pox', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (470, 0, '2013-09-30 20:13:54.051', 'fever', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (471, 0, '2013-09-30 20:13:54.067', 'colds', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (472, 0, '2013-09-30 20:13:54.067', 'dengue', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (473, 0, '2013-09-30 20:13:54.067', 'chicken pox', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (474, 0, '2013-09-30 20:13:54.082', 'fever', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (475, 0, '2013-09-30 20:13:54.082', 'colds', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (476, 0, '2013-09-30 20:13:54.082', 'dengue', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (477, 0, '2013-09-30 20:13:54.098', 'chicken pox', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (478, 0, '2013-09-30 20:13:54.098', 'fever', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (479, 0, '2013-09-30 20:13:54.098', 'colds', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (480, 0, '2013-09-30 20:13:54.113', 'dengue', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (481, 0, '2013-09-30 20:13:54.113', 'chicken pox', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (482, 0, '2013-09-30 20:13:54.113', 'fever', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (483, 0, '2013-09-30 20:13:54.113', 'colds', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (484, 0, '2013-09-30 20:13:54.129', 'dengue', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (485, 0, '2013-09-30 20:13:54.129', 'chicken pox', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (486, 0, '2013-09-30 20:13:54.129', 'fever', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (487, 0, '2013-09-30 20:13:54.145', 'colds', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (488, 0, '2013-09-30 20:13:54.145', 'dengue', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (489, 0, '2013-09-30 20:13:54.145', 'chicken pox', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (490, 0, '2013-09-30 20:13:54.145', 'fever', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (491, 0, '2013-09-30 20:13:54.16', 'colds', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (492, 0, '2013-09-30 20:13:54.16', 'dengue', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (493, 0, '2013-09-30 20:13:54.16', 'chicken pox', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (494, 0, '2013-09-30 20:13:54.176', 'fever', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (495, 0, '2013-09-30 20:13:54.176', 'colds', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (496, 0, '2013-09-30 20:13:54.176', 'dengue', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (497, 0, '2013-09-30 20:13:54.191', 'chicken pox', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (498, 0, '2013-09-30 20:13:54.191', 'fever', 'Paracetamol', 99);
INSERT INTO diagnosis VALUES (499, 0, '2013-09-30 20:13:54.191', 'colds', 'Paracetamol', 99);
INSERT INTO diagnosis VALUES (500, 0, '2013-09-30 20:13:54.191', 'dengue', 'Paracetamol', 99);
INSERT INTO diagnosis VALUES (501, 0, '2013-09-30 20:13:54.207', 'chicken pox', 'Paracetamol', 99);
INSERT INTO diagnosis VALUES (502, 0, '2013-09-30 20:13:54.207', 'fever', 'Paracetamol', 100);
INSERT INTO diagnosis VALUES (503, 0, '2013-09-30 20:13:54.207', 'colds', 'Paracetamol', 100);
INSERT INTO diagnosis VALUES (504, 0, '2013-09-30 20:13:54.223', 'dengue', 'Paracetamol', 100);
INSERT INTO diagnosis VALUES (505, 0, '2013-09-30 20:13:54.223', 'chicken pox', 'Paracetamol', 100);
INSERT INTO diagnosis VALUES (506, 0, '2013-09-30 20:13:54.223', 'fever', 'Paracetamol', 101);
INSERT INTO diagnosis VALUES (507, 0, '2013-09-30 20:13:54.223', 'colds', 'Paracetamol', 101);
INSERT INTO diagnosis VALUES (508, 0, '2013-09-30 20:13:54.238', 'dengue', 'Paracetamol', 101);
INSERT INTO diagnosis VALUES (509, 0, '2013-09-30 20:13:54.238', 'chicken pox', 'Paracetamol', 101);
INSERT INTO diagnosis VALUES (510, 0, '2013-09-30 20:13:54.238', 'fever', 'Paracetamol', 102);
INSERT INTO diagnosis VALUES (511, 0, '2013-09-30 20:13:54.254', 'colds', 'Paracetamol', 102);
INSERT INTO diagnosis VALUES (512, 0, '2013-09-30 20:13:54.254', 'dengue', 'Paracetamol', 102);
INSERT INTO diagnosis VALUES (513, 0, '2013-09-30 20:13:54.254', 'chicken pox', 'Paracetamol', 102);
INSERT INTO diagnosis VALUES (514, 0, '2013-09-30 20:13:54.269', 'fever', 'Paracetamol', 103);
INSERT INTO diagnosis VALUES (515, 0, '2013-09-30 20:13:54.269', 'colds', 'Paracetamol', 103);
INSERT INTO diagnosis VALUES (516, 0, '2013-09-30 20:13:54.269', 'dengue', 'Paracetamol', 103);
INSERT INTO diagnosis VALUES (517, 0, '2013-09-30 20:13:54.285', 'chicken pox', 'Paracetamol', 103);
INSERT INTO diagnosis VALUES (518, 0, '2013-09-30 20:13:54.285', 'fever', 'Paracetamol', 104);
INSERT INTO diagnosis VALUES (519, 0, '2013-09-30 20:13:54.301', 'colds', 'Paracetamol', 104);
INSERT INTO diagnosis VALUES (520, 0, '2013-09-30 20:13:54.301', 'dengue', 'Paracetamol', 104);
INSERT INTO diagnosis VALUES (521, 0, '2013-09-30 20:13:54.301', 'chicken pox', 'Paracetamol', 104);
INSERT INTO diagnosis VALUES (522, 0, '2013-09-30 20:13:54.301', 'fever', 'Paracetamol', 105);
INSERT INTO diagnosis VALUES (523, 0, '2013-09-30 20:13:54.316', 'colds', 'Paracetamol', 105);
INSERT INTO diagnosis VALUES (524, 0, '2013-09-30 20:13:54.316', 'dengue', 'Paracetamol', 105);
INSERT INTO diagnosis VALUES (525, 0, '2013-09-30 20:13:54.316', 'chicken pox', 'Paracetamol', 105);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO student VALUES (1, 0, 'Iligan City', '2013-09-30 20:13:50.869', 'O', 'SCS', false, 'Carlo', 'MALE', '5.0', '2010-0001', 'Apas', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (2, 0, 'Iligan City', '2013-09-30 20:13:51.087', 'O', 'SCS', false, 'Ken', 'MALE', '5.0', '2010-0001', 'Vilar', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (3, 0, 'Iligan City', '2013-09-30 20:13:51.103', 'O', 'SCS', false, 'Arven', 'MALE', '5.0', '2010-0001', 'Aguilar', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (4, 0, 'Iligan City', '2013-09-30 20:13:51.134', 'O', 'SCS', false, 'Jemuel', 'MALE', '5.0', '2010-0001', 'Racsa', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (5, 0, 'Iligan City', '2013-09-30 20:13:51.149', 'O', 'SCS', false, 'Jervey', 'MALE', '5.0', '2010-0001', 'Benitez', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (6, 0, 'Iligan City', '2013-09-30 20:13:51.165', 'O', 'SCS', false, 'Student0', 'MALE', '5.0', '2010-0100', 'Student0', 'BSCS', 'Student0', '50kgs');
INSERT INTO student VALUES (7, 0, 'Iligan City', '2013-09-30 20:13:51.181', 'O', 'SCS', false, 'Student1', 'MALE', '5.0', '2010-0101', 'Student1', 'BSCS', 'Student1', '50kgs');
INSERT INTO student VALUES (8, 0, 'Iligan City', '2013-09-30 20:13:51.196', 'O', 'SCS', false, 'Student2', 'MALE', '5.0', '2010-0102', 'Student2', 'BSCS', 'Student2', '50kgs');
INSERT INTO student VALUES (9, 0, 'Iligan City', '2013-09-30 20:13:51.212', 'O', 'SCS', false, 'Student3', 'MALE', '5.0', '2010-0103', 'Student3', 'BSCS', 'Student3', '50kgs');
INSERT INTO student VALUES (10, 0, 'Iligan City', '2013-09-30 20:13:51.212', 'O', 'SCS', false, 'Student4', 'MALE', '5.0', '2010-0104', 'Student4', 'BSCS', 'Student4', '50kgs');
INSERT INTO student VALUES (11, 0, 'Iligan City', '2013-09-30 20:13:51.212', 'O', 'SCS', false, 'Student5', 'MALE', '5.0', '2010-0105', 'Student5', 'BSCS', 'Student5', '50kgs');
INSERT INTO student VALUES (12, 0, 'Iligan City', '2013-09-30 20:13:51.227', 'O', 'SCS', false, 'Student6', 'MALE', '5.0', '2010-0106', 'Student6', 'BSCS', 'Student6', '50kgs');
INSERT INTO student VALUES (13, 0, 'Iligan City', '2013-09-30 20:13:51.227', 'O', 'SCS', false, 'Student7', 'MALE', '5.0', '2010-0107', 'Student7', 'BSCS', 'Student7', '50kgs');
INSERT INTO student VALUES (14, 0, 'Iligan City', '2013-09-30 20:13:51.243', 'O', 'SCS', false, 'Student8', 'MALE', '5.0', '2010-0108', 'Student8', 'BSCS', 'Student8', '50kgs');
INSERT INTO student VALUES (15, 0, 'Iligan City', '2013-09-30 20:13:51.243', 'O', 'SCS', false, 'Student9', 'MALE', '5.0', '2010-0109', 'Student9', 'BSCS', 'Student9', '50kgs');
INSERT INTO student VALUES (16, 0, 'Iligan City', '2013-09-30 20:13:51.259', 'O', 'SCS', false, 'Student10', 'MALE', '5.0', '2010-0110', 'Student10', 'BSCS', 'Student10', '50kgs');
INSERT INTO student VALUES (17, 0, 'Iligan City', '2013-09-30 20:13:51.259', 'O', 'SCS', false, 'Student11', 'MALE', '5.0', '2010-0111', 'Student11', 'BSCS', 'Student11', '50kgs');
INSERT INTO student VALUES (18, 0, 'Iligan City', '2013-09-30 20:13:51.274', 'O', 'SCS', false, 'Student12', 'MALE', '5.0', '2010-0112', 'Student12', 'BSCS', 'Student12', '50kgs');
INSERT INTO student VALUES (19, 0, 'Iligan City', '2013-09-30 20:13:51.274', 'O', 'SCS', false, 'Student13', 'MALE', '5.0', '2010-0113', 'Student13', 'BSCS', 'Student13', '50kgs');
INSERT INTO student VALUES (20, 0, 'Iligan City', '2013-09-30 20:13:51.29', 'O', 'SCS', false, 'Student14', 'MALE', '5.0', '2010-0114', 'Student14', 'BSCS', 'Student14', '50kgs');
INSERT INTO student VALUES (21, 0, 'Iligan City', '2013-09-30 20:13:51.29', 'O', 'SCS', false, 'Student15', 'MALE', '5.0', '2010-0115', 'Student15', 'BSCS', 'Student15', '50kgs');
INSERT INTO student VALUES (22, 0, 'Iligan City', '2013-09-30 20:13:51.305', 'O', 'SCS', false, 'Student16', 'MALE', '5.0', '2010-0116', 'Student16', 'BSCS', 'Student16', '50kgs');
INSERT INTO student VALUES (23, 0, 'Iligan City', '2013-09-30 20:13:51.305', 'O', 'SCS', false, 'Student17', 'MALE', '5.0', '2010-0117', 'Student17', 'BSCS', 'Student17', '50kgs');
INSERT INTO student VALUES (24, 0, 'Iligan City', '2013-09-30 20:13:51.305', 'O', 'SCS', false, 'Student18', 'MALE', '5.0', '2010-0118', 'Student18', 'BSCS', 'Student18', '50kgs');
INSERT INTO student VALUES (25, 0, 'Iligan City', '2013-09-30 20:13:51.321', 'O', 'SCS', false, 'Student19', 'MALE', '5.0', '2010-0119', 'Student19', 'BSCS', 'Student19', '50kgs');
INSERT INTO student VALUES (26, 0, 'Iligan City', '2013-09-30 20:13:51.321', 'O', 'SCS', false, 'Student20', 'MALE', '5.0', '2010-0120', 'Student20', 'BSCS', 'Student20', '50kgs');
INSERT INTO student VALUES (27, 0, 'Iligan City', '2013-09-30 20:13:51.337', 'O', 'SCS', false, 'Student21', 'MALE', '5.0', '2010-0121', 'Student21', 'BSCS', 'Student21', '50kgs');
INSERT INTO student VALUES (28, 0, 'Iligan City', '2013-09-30 20:13:51.337', 'O', 'SCS', false, 'Student22', 'MALE', '5.0', '2010-0122', 'Student22', 'BSCS', 'Student22', '50kgs');
INSERT INTO student VALUES (29, 0, 'Iligan City', '2013-09-30 20:13:51.352', 'O', 'SCS', false, 'Student23', 'MALE', '5.0', '2010-0123', 'Student23', 'BSCS', 'Student23', '50kgs');
INSERT INTO student VALUES (30, 0, 'Iligan City', '2013-09-30 20:13:51.352', 'O', 'SCS', false, 'Student24', 'MALE', '5.0', '2010-0124', 'Student24', 'BSCS', 'Student24', '50kgs');
INSERT INTO student VALUES (31, 0, 'Iligan City', '2013-09-30 20:13:51.368', 'O', 'SCS', false, 'Student25', 'MALE', '5.0', '2010-0125', 'Student25', 'BSCS', 'Student25', '50kgs');
INSERT INTO student VALUES (32, 0, 'Iligan City', '2013-09-30 20:13:51.368', 'O', 'SCS', false, 'Student26', 'MALE', '5.0', '2010-0126', 'Student26', 'BSCS', 'Student26', '50kgs');
INSERT INTO student VALUES (33, 0, 'Iligan City', '2013-09-30 20:13:51.383', 'O', 'SCS', false, 'Student27', 'MALE', '5.0', '2010-0127', 'Student27', 'BSCS', 'Student27', '50kgs');
INSERT INTO student VALUES (34, 0, 'Iligan City', '2013-09-30 20:13:51.383', 'O', 'SCS', false, 'Student28', 'MALE', '5.0', '2010-0128', 'Student28', 'BSCS', 'Student28', '50kgs');
INSERT INTO student VALUES (35, 0, 'Iligan City', '2013-09-30 20:13:51.399', 'O', 'SCS', false, 'Student29', 'MALE', '5.0', '2010-0129', 'Student29', 'BSCS', 'Student29', '50kgs');
INSERT INTO student VALUES (36, 0, 'Iligan City', '2013-09-30 20:13:51.399', 'O', 'SCS', false, 'Student30', 'MALE', '5.0', '2010-0130', 'Student30', 'BSCS', 'Student30', '50kgs');
INSERT INTO student VALUES (37, 0, 'Iligan City', '2013-09-30 20:13:51.415', 'O', 'SCS', false, 'Student31', 'MALE', '5.0', '2010-0131', 'Student31', 'BSCS', 'Student31', '50kgs');
INSERT INTO student VALUES (38, 0, 'Iligan City', '2013-09-30 20:13:51.43', 'O', 'SCS', false, 'Student32', 'MALE', '5.0', '2010-0132', 'Student32', 'BSCS', 'Student32', '50kgs');
INSERT INTO student VALUES (39, 0, 'Iligan City', '2013-09-30 20:13:51.43', 'O', 'SCS', false, 'Student33', 'MALE', '5.0', '2010-0133', 'Student33', 'BSCS', 'Student33', '50kgs');
INSERT INTO student VALUES (40, 0, 'Iligan City', '2013-09-30 20:13:51.446', 'O', 'SCS', false, 'Student34', 'MALE', '5.0', '2010-0134', 'Student34', 'BSCS', 'Student34', '50kgs');
INSERT INTO student VALUES (41, 0, 'Iligan City', '2013-09-30 20:13:51.446', 'O', 'SCS', false, 'Student35', 'MALE', '5.0', '2010-0135', 'Student35', 'BSCS', 'Student35', '50kgs');
INSERT INTO student VALUES (42, 0, 'Iligan City', '2013-09-30 20:13:51.446', 'O', 'SCS', false, 'Student36', 'MALE', '5.0', '2010-0136', 'Student36', 'BSCS', 'Student36', '50kgs');
INSERT INTO student VALUES (43, 0, 'Iligan City', '2013-09-30 20:13:51.461', 'O', 'SCS', false, 'Student37', 'MALE', '5.0', '2010-0137', 'Student37', 'BSCS', 'Student37', '50kgs');
INSERT INTO student VALUES (44, 0, 'Iligan City', '2013-09-30 20:13:51.461', 'O', 'SCS', false, 'Student38', 'MALE', '5.0', '2010-0138', 'Student38', 'BSCS', 'Student38', '50kgs');
INSERT INTO student VALUES (45, 0, 'Iligan City', '2013-09-30 20:13:51.477', 'O', 'SCS', false, 'Student39', 'MALE', '5.0', '2010-0139', 'Student39', 'BSCS', 'Student39', '50kgs');
INSERT INTO student VALUES (46, 0, 'Iligan City', '2013-09-30 20:13:51.477', 'O', 'SCS', false, 'Student40', 'MALE', '5.0', '2010-0140', 'Student40', 'BSCS', 'Student40', '50kgs');
INSERT INTO student VALUES (47, 0, 'Iligan City', '2013-09-30 20:13:51.493', 'O', 'SCS', false, 'Student41', 'MALE', '5.0', '2010-0141', 'Student41', 'BSCS', 'Student41', '50kgs');
INSERT INTO student VALUES (48, 0, 'Iligan City', '2013-09-30 20:13:51.493', 'O', 'SCS', false, 'Student42', 'MALE', '5.0', '2010-0142', 'Student42', 'BSCS', 'Student42', '50kgs');
INSERT INTO student VALUES (49, 0, 'Iligan City', '2013-09-30 20:13:51.493', 'O', 'SCS', false, 'Student43', 'MALE', '5.0', '2010-0143', 'Student43', 'BSCS', 'Student43', '50kgs');
INSERT INTO student VALUES (50, 0, 'Iligan City', '2013-09-30 20:13:51.508', 'O', 'SCS', false, 'Student44', 'MALE', '5.0', '2010-0144', 'Student44', 'BSCS', 'Student44', '50kgs');
INSERT INTO student VALUES (51, 0, 'Iligan City', '2013-09-30 20:13:51.508', 'O', 'SCS', false, 'Student45', 'MALE', '5.0', '2010-0145', 'Student45', 'BSCS', 'Student45', '50kgs');
INSERT INTO student VALUES (52, 0, 'Iligan City', '2013-09-30 20:13:51.524', 'O', 'SCS', false, 'Student46', 'MALE', '5.0', '2010-0146', 'Student46', 'BSCS', 'Student46', '50kgs');
INSERT INTO student VALUES (53, 0, 'Iligan City', '2013-09-30 20:13:51.524', 'O', 'SCS', false, 'Student47', 'MALE', '5.0', '2010-0147', 'Student47', 'BSCS', 'Student47', '50kgs');
INSERT INTO student VALUES (54, 0, 'Iligan City', '2013-09-30 20:13:51.539', 'O', 'SCS', false, 'Student48', 'MALE', '5.0', '2010-0148', 'Student48', 'BSCS', 'Student48', '50kgs');
INSERT INTO student VALUES (55, 0, 'Iligan City', '2013-09-30 20:13:51.539', 'O', 'SCS', false, 'Student49', 'MALE', '5.0', '2010-0149', 'Student49', 'BSCS', 'Student49', '50kgs');
INSERT INTO student VALUES (56, 0, 'Iligan City', '2013-09-30 20:13:51.555', 'O', 'SCS', false, 'Student50', 'MALE', '5.0', '2010-0150', 'Student50', 'BSCS', 'Student50', '50kgs');
INSERT INTO student VALUES (57, 0, 'Iligan City', '2013-09-30 20:13:51.555', 'O', 'SCS', false, 'Student51', 'MALE', '5.0', '2010-0151', 'Student51', 'BSCS', 'Student51', '50kgs');
INSERT INTO student VALUES (58, 0, 'Iligan City', '2013-09-30 20:13:51.555', 'O', 'SCS', false, 'Student52', 'MALE', '5.0', '2010-0152', 'Student52', 'BSCS', 'Student52', '50kgs');
INSERT INTO student VALUES (59, 0, 'Iligan City', '2013-09-30 20:13:51.571', 'O', 'SCS', false, 'Student53', 'MALE', '5.0', '2010-0153', 'Student53', 'BSCS', 'Student53', '50kgs');
INSERT INTO student VALUES (60, 0, 'Iligan City', '2013-09-30 20:13:51.571', 'O', 'SCS', false, 'Student54', 'MALE', '5.0', '2010-0154', 'Student54', 'BSCS', 'Student54', '50kgs');
INSERT INTO student VALUES (61, 0, 'Iligan City', '2013-09-30 20:13:51.586', 'O', 'SCS', false, 'Student55', 'MALE', '5.0', '2010-0155', 'Student55', 'BSCS', 'Student55', '50kgs');
INSERT INTO student VALUES (62, 0, 'Iligan City', '2013-09-30 20:13:51.602', 'O', 'SCS', false, 'Student56', 'MALE', '5.0', '2010-0156', 'Student56', 'BSCS', 'Student56', '50kgs');
INSERT INTO student VALUES (63, 0, 'Iligan City', '2013-09-30 20:13:51.602', 'O', 'SCS', false, 'Student57', 'MALE', '5.0', '2010-0157', 'Student57', 'BSCS', 'Student57', '50kgs');
INSERT INTO student VALUES (64, 0, 'Iligan City', '2013-09-30 20:13:51.602', 'O', 'SCS', false, 'Student58', 'MALE', '5.0', '2010-0158', 'Student58', 'BSCS', 'Student58', '50kgs');
INSERT INTO student VALUES (65, 0, 'Iligan City', '2013-09-30 20:13:51.617', 'O', 'SCS', false, 'Student59', 'MALE', '5.0', '2010-0159', 'Student59', 'BSCS', 'Student59', '50kgs');
INSERT INTO student VALUES (66, 0, 'Iligan City', '2013-09-30 20:13:51.617', 'O', 'SCS', false, 'Student60', 'MALE', '5.0', '2010-0160', 'Student60', 'BSCS', 'Student60', '50kgs');
INSERT INTO student VALUES (67, 0, 'Iligan City', '2013-09-30 20:13:51.633', 'O', 'SCS', false, 'Student61', 'MALE', '5.0', '2010-0161', 'Student61', 'BSCS', 'Student61', '50kgs');
INSERT INTO student VALUES (68, 0, 'Iligan City', '2013-09-30 20:13:51.633', 'O', 'SCS', false, 'Student62', 'MALE', '5.0', '2010-0162', 'Student62', 'BSCS', 'Student62', '50kgs');
INSERT INTO student VALUES (69, 0, 'Iligan City', '2013-09-30 20:13:51.649', 'O', 'SCS', false, 'Student63', 'MALE', '5.0', '2010-0163', 'Student63', 'BSCS', 'Student63', '50kgs');
INSERT INTO student VALUES (70, 0, 'Iligan City', '2013-09-30 20:13:51.649', 'O', 'SCS', false, 'Student64', 'MALE', '5.0', '2010-0164', 'Student64', 'BSCS', 'Student64', '50kgs');
INSERT INTO student VALUES (71, 0, 'Iligan City', '2013-09-30 20:13:51.664', 'O', 'SCS', false, 'Student65', 'MALE', '5.0', '2010-0165', 'Student65', 'BSCS', 'Student65', '50kgs');
INSERT INTO student VALUES (72, 0, 'Iligan City', '2013-09-30 20:13:51.664', 'O', 'SCS', false, 'Student66', 'MALE', '5.0', '2010-0166', 'Student66', 'BSCS', 'Student66', '50kgs');
INSERT INTO student VALUES (73, 0, 'Iligan City', '2013-09-30 20:13:51.68', 'O', 'SCS', false, 'Student67', 'MALE', '5.0', '2010-0167', 'Student67', 'BSCS', 'Student67', '50kgs');
INSERT INTO student VALUES (74, 0, 'Iligan City', '2013-09-30 20:13:51.68', 'O', 'SCS', false, 'Student68', 'MALE', '5.0', '2010-0168', 'Student68', 'BSCS', 'Student68', '50kgs');
INSERT INTO student VALUES (75, 0, 'Iligan City', '2013-09-30 20:13:51.695', 'O', 'SCS', false, 'Student69', 'MALE', '5.0', '2010-0169', 'Student69', 'BSCS', 'Student69', '50kgs');
INSERT INTO student VALUES (76, 0, 'Iligan City', '2013-09-30 20:13:51.695', 'O', 'SCS', false, 'Student70', 'MALE', '5.0', '2010-0170', 'Student70', 'BSCS', 'Student70', '50kgs');
INSERT INTO student VALUES (77, 0, 'Iligan City', '2013-09-30 20:13:51.711', 'O', 'SCS', false, 'Student71', 'MALE', '5.0', '2010-0171', 'Student71', 'BSCS', 'Student71', '50kgs');
INSERT INTO student VALUES (78, 0, 'Iligan City', '2013-09-30 20:13:51.711', 'O', 'SCS', false, 'Student72', 'MALE', '5.0', '2010-0172', 'Student72', 'BSCS', 'Student72', '50kgs');
INSERT INTO student VALUES (79, 0, 'Iligan City', '2013-09-30 20:13:51.727', 'O', 'SCS', false, 'Student73', 'MALE', '5.0', '2010-0173', 'Student73', 'BSCS', 'Student73', '50kgs');
INSERT INTO student VALUES (80, 0, 'Iligan City', '2013-09-30 20:13:51.727', 'O', 'SCS', false, 'Student74', 'MALE', '5.0', '2010-0174', 'Student74', 'BSCS', 'Student74', '50kgs');
INSERT INTO student VALUES (81, 0, 'Iligan City', '2013-09-30 20:13:51.742', 'O', 'SCS', false, 'Student75', 'MALE', '5.0', '2010-0175', 'Student75', 'BSCS', 'Student75', '50kgs');
INSERT INTO student VALUES (82, 0, 'Iligan City', '2013-09-30 20:13:51.742', 'O', 'SCS', false, 'Student76', 'MALE', '5.0', '2010-0176', 'Student76', 'BSCS', 'Student76', '50kgs');
INSERT INTO student VALUES (83, 0, 'Iligan City', '2013-09-30 20:13:51.758', 'O', 'SCS', false, 'Student77', 'MALE', '5.0', '2010-0177', 'Student77', 'BSCS', 'Student77', '50kgs');
INSERT INTO student VALUES (84, 0, 'Iligan City', '2013-09-30 20:13:51.758', 'O', 'SCS', false, 'Student78', 'MALE', '5.0', '2010-0178', 'Student78', 'BSCS', 'Student78', '50kgs');
INSERT INTO student VALUES (85, 0, 'Iligan City', '2013-09-30 20:13:51.773', 'O', 'SCS', false, 'Student79', 'MALE', '5.0', '2010-0179', 'Student79', 'BSCS', 'Student79', '50kgs');
INSERT INTO student VALUES (86, 0, 'Iligan City', '2013-09-30 20:13:51.773', 'O', 'SCS', false, 'Student80', 'MALE', '5.0', '2010-0180', 'Student80', 'BSCS', 'Student80', '50kgs');
INSERT INTO student VALUES (87, 0, 'Iligan City', '2013-09-30 20:13:51.789', 'O', 'SCS', false, 'Student81', 'MALE', '5.0', '2010-0181', 'Student81', 'BSCS', 'Student81', '50kgs');
INSERT INTO student VALUES (88, 0, 'Iligan City', '2013-09-30 20:13:51.789', 'O', 'SCS', false, 'Student82', 'MALE', '5.0', '2010-0182', 'Student82', 'BSCS', 'Student82', '50kgs');
INSERT INTO student VALUES (89, 0, 'Iligan City', '2013-09-30 20:13:51.805', 'O', 'SCS', false, 'Student83', 'MALE', '5.0', '2010-0183', 'Student83', 'BSCS', 'Student83', '50kgs');
INSERT INTO student VALUES (90, 0, 'Iligan City', '2013-09-30 20:13:51.805', 'O', 'SCS', false, 'Student84', 'MALE', '5.0', '2010-0184', 'Student84', 'BSCS', 'Student84', '50kgs');
INSERT INTO student VALUES (91, 0, 'Iligan City', '2013-09-30 20:13:51.82', 'O', 'SCS', false, 'Student85', 'MALE', '5.0', '2010-0185', 'Student85', 'BSCS', 'Student85', '50kgs');
INSERT INTO student VALUES (92, 0, 'Iligan City', '2013-09-30 20:13:51.82', 'O', 'SCS', false, 'Student86', 'MALE', '5.0', '2010-0186', 'Student86', 'BSCS', 'Student86', '50kgs');
INSERT INTO student VALUES (93, 0, 'Iligan City', '2013-09-30 20:13:51.836', 'O', 'SCS', false, 'Student87', 'MALE', '5.0', '2010-0187', 'Student87', 'BSCS', 'Student87', '50kgs');
INSERT INTO student VALUES (94, 0, 'Iligan City', '2013-09-30 20:13:51.836', 'O', 'SCS', false, 'Student88', 'MALE', '5.0', '2010-0188', 'Student88', 'BSCS', 'Student88', '50kgs');
INSERT INTO student VALUES (95, 0, 'Iligan City', '2013-09-30 20:13:51.851', 'O', 'SCS', false, 'Student89', 'MALE', '5.0', '2010-0189', 'Student89', 'BSCS', 'Student89', '50kgs');
INSERT INTO student VALUES (96, 0, 'Iligan City', '2013-09-30 20:13:51.851', 'O', 'SCS', false, 'Student90', 'MALE', '5.0', '2010-0190', 'Student90', 'BSCS', 'Student90', '50kgs');
INSERT INTO student VALUES (99, 0, 'Iligan City', '2013-09-30 20:13:51.883', 'O', 'SCS', false, 'Student93', 'MALE', '5.0', '2010-0193', 'Student93', 'BSCS', 'Student93', '50kgs');
INSERT INTO student VALUES (100, 0, 'Iligan City', '2013-09-30 20:13:51.883', 'O', 'SCS', false, 'Student94', 'MALE', '5.0', '2010-0194', 'Student94', 'BSCS', 'Student94', '50kgs');
INSERT INTO student VALUES (101, 0, 'Iligan City', '2013-09-30 20:13:51.898', 'O', 'SCS', false, 'Student95', 'MALE', '5.0', '2010-0195', 'Student95', 'BSCS', 'Student95', '50kgs');
INSERT INTO student VALUES (102, 0, 'Iligan City', '2013-09-30 20:13:51.914', 'O', 'SCS', false, 'Student96', 'MALE', '5.0', '2010-0196', 'Student96', 'BSCS', 'Student96', '50kgs');
INSERT INTO student VALUES (103, 0, 'Iligan City', '2013-09-30 20:13:51.929', 'O', 'SCS', false, 'Student97', 'MALE', '5.0', '2010-0197', 'Student97', 'BSCS', 'Student97', '50kgs');
INSERT INTO student VALUES (104, 0, 'Iligan City', '2013-09-30 20:13:51.929', 'O', 'SCS', false, 'Student98', 'MALE', '5.0', '2010-0198', 'Student98', 'BSCS', 'Student98', '50kgs');
INSERT INTO student VALUES (105, 0, 'Iligan City', '2013-09-30 20:13:51.945', 'O', 'SCS', false, 'Student99', 'MALE', '5.0', '2010-0199', 'Student99', 'BSCS', 'Student99', '50kgs');
INSERT INTO student VALUES (97, 0, 'Iligan City', '2013-09-30 20:13:51.867', 'O', 'SCS', false, 'Student91', 'MALE', '5ft 2in', '2010-0191', 'Student91', 'BSCS', 'Student91', '50kgs');
INSERT INTO student VALUES (98, 0, 'Iligan City', '2013-09-30 20:13:51.867', 'O', 'SCS', false, 'Student92', 'MALE', '5ft 2in', '2010-0192', 'Student92', 'BSCS', 'Student92', '55kgs');


--
-- Name: admin_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_authority
    ADD CONSTRAINT admin_authority_pkey PRIMARY KEY (authority_id, admin_id);


--
-- Name: admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: admin_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT admin_username_key UNIQUE (username);


--
-- Name: authority_authority_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY authority
    ADD CONSTRAINT authority_authority_key UNIQUE (authority);


--
-- Name: authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY authority
    ADD CONSTRAINT authority_pkey PRIMARY KEY (id);


--
-- Name: diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (id);


--
-- Name: student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: fk4758aaf176784459; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY diagnosis
    ADD CONSTRAINT fk4758aaf176784459 FOREIGN KEY (student_id) REFERENCES student(id);


--
-- Name: fkf5e66e53bf03a399; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_authority
    ADD CONSTRAINT fkf5e66e53bf03a399 FOREIGN KEY (authority_id) REFERENCES authority(id);


--
-- Name: fkf5e66e53f449cf99; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_authority
    ADD CONSTRAINT fkf5e66e53f449cf99 FOREIGN KEY (admin_id) REFERENCES admin(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

