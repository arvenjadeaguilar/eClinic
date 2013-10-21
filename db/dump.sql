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

SELECT pg_catalog.setval('hibernate_sequence', 513, true);


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
    weight integer NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO admin VALUES (102, 0, false, false, true, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', false, 'username');
INSERT INTO admin VALUES (103, 0, false, false, true, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', false, 'carlo');
INSERT INTO admin VALUES (104, 0, false, false, true, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', false, 'ken');
INSERT INTO admin VALUES (105, 0, false, false, true, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', false, 'arven');
INSERT INTO admin VALUES (106, 0, false, false, true, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', false, 'jemuel');
INSERT INTO admin VALUES (107, 0, false, false, true, '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', false, 'jervey');


--
-- Data for Name: admin_authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO admin_authority VALUES (101, 102);
INSERT INTO admin_authority VALUES (101, 103);
INSERT INTO admin_authority VALUES (101, 104);
INSERT INTO admin_authority VALUES (101, 105);
INSERT INTO admin_authority VALUES (101, 106);
INSERT INTO admin_authority VALUES (101, 107);


--
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO authority VALUES (101, 0, 'ROLE_USER');


--
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO diagnosis VALUES (108, 0, '2013-10-18 00:06:21.306', 'fever', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (109, 0, '2013-10-18 00:06:21.357', 'colds', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (110, 0, '2013-10-18 00:06:21.365', 'dengue', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (111, 0, '2013-10-18 00:06:21.373', 'chicken pox', 'Paracetamol', 1);
INSERT INTO diagnosis VALUES (112, 0, '2013-10-18 00:06:21.381', 'fever', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (113, 0, '2013-10-18 00:06:21.39', 'colds', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (114, 0, '2013-10-18 00:06:21.482', 'dengue', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (115, 0, '2013-10-18 00:06:21.572', 'chicken pox', 'Paracetamol', 2);
INSERT INTO diagnosis VALUES (116, 0, '2013-10-18 00:06:21.651', 'fever', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (117, 0, '2013-10-18 00:06:21.739', 'colds', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (118, 0, '2013-10-18 00:06:21.828', 'dengue', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (119, 0, '2013-10-18 00:06:21.918', 'chicken pox', 'Paracetamol', 3);
INSERT INTO diagnosis VALUES (120, 0, '2013-10-18 00:06:22.006', 'fever', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (121, 0, '2013-10-18 00:06:22.095', 'colds', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (122, 0, '2013-10-18 00:06:22.185', 'dengue', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (123, 0, '2013-10-18 00:06:22.273', 'chicken pox', 'Paracetamol', 4);
INSERT INTO diagnosis VALUES (124, 0, '2013-10-18 00:06:22.377', 'fever', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (125, 0, '2013-10-18 00:06:22.404', 'colds', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (126, 0, '2013-10-18 00:06:22.411', 'dengue', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (127, 0, '2013-10-18 00:06:22.417', 'chicken pox', 'Paracetamol', 5);
INSERT INTO diagnosis VALUES (128, 0, '2013-10-18 00:06:22.428', 'fever', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (129, 0, '2013-10-18 00:06:22.435', 'colds', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (130, 0, '2013-10-18 00:06:22.442', 'dengue', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (131, 0, '2013-10-18 00:06:22.448', 'chicken pox', 'Paracetamol', 6);
INSERT INTO diagnosis VALUES (132, 0, '2013-10-18 00:06:22.455', 'fever', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (133, 0, '2013-10-18 00:06:22.462', 'colds', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (134, 0, '2013-10-18 00:06:22.468', 'dengue', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (135, 0, '2013-10-18 00:06:22.475', 'chicken pox', 'Paracetamol', 7);
INSERT INTO diagnosis VALUES (136, 0, '2013-10-18 00:06:22.484', 'fever', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (137, 0, '2013-10-18 00:06:22.492', 'colds', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (138, 0, '2013-10-18 00:06:22.499', 'dengue', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (139, 0, '2013-10-18 00:06:22.511', 'chicken pox', 'Paracetamol', 8);
INSERT INTO diagnosis VALUES (140, 0, '2013-10-18 00:06:22.52', 'fever', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (141, 0, '2013-10-18 00:06:22.529', 'colds', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (142, 0, '2013-10-18 00:06:22.542', 'dengue', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (143, 0, '2013-10-18 00:06:22.553', 'chicken pox', 'Paracetamol', 9);
INSERT INTO diagnosis VALUES (144, 0, '2013-10-18 00:06:22.564', 'fever', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (145, 0, '2013-10-18 00:06:22.576', 'colds', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (146, 0, '2013-10-18 00:06:22.586', 'dengue', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (147, 0, '2013-10-18 00:06:22.624', 'chicken pox', 'Paracetamol', 10);
INSERT INTO diagnosis VALUES (148, 0, '2013-10-18 00:06:22.631', 'fever', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (149, 0, '2013-10-18 00:06:22.637', 'colds', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (150, 0, '2013-10-18 00:06:22.645', 'dengue', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (151, 0, '2013-10-18 00:06:22.652', 'chicken pox', 'Paracetamol', 11);
INSERT INTO diagnosis VALUES (152, 0, '2013-10-18 00:06:22.66', 'fever', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (153, 0, '2013-10-18 00:06:22.666', 'colds', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (154, 0, '2013-10-18 00:06:22.673', 'dengue', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (155, 0, '2013-10-18 00:06:22.68', 'chicken pox', 'Paracetamol', 12);
INSERT INTO diagnosis VALUES (156, 0, '2013-10-18 00:06:22.686', 'fever', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (157, 0, '2013-10-18 00:06:22.691', 'colds', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (158, 0, '2013-10-18 00:06:22.696', 'dengue', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (159, 0, '2013-10-18 00:06:22.7', 'chicken pox', 'Paracetamol', 13);
INSERT INTO diagnosis VALUES (160, 0, '2013-10-18 00:06:22.704', 'fever', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (161, 0, '2013-10-18 00:06:22.709', 'colds', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (162, 0, '2013-10-18 00:06:22.713', 'dengue', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (163, 0, '2013-10-18 00:06:22.718', 'chicken pox', 'Paracetamol', 14);
INSERT INTO diagnosis VALUES (164, 0, '2013-10-18 00:06:22.744', 'fever', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (165, 0, '2013-10-18 00:06:22.768', 'colds', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (166, 0, '2013-10-18 00:06:22.832', 'dengue', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (167, 0, '2013-10-18 00:06:22.868', 'chicken pox', 'Paracetamol', 15);
INSERT INTO diagnosis VALUES (168, 0, '2013-10-18 00:06:22.903', 'fever', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (169, 0, '2013-10-18 00:06:22.993', 'colds', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (170, 0, '2013-10-18 00:06:23.082', 'dengue', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (171, 0, '2013-10-18 00:06:23.105', 'chicken pox', 'Paracetamol', 16);
INSERT INTO diagnosis VALUES (172, 0, '2013-10-18 00:06:23.221', 'fever', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (173, 0, '2013-10-18 00:06:23.313', 'colds', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (174, 0, '2013-10-18 00:06:23.404', 'dengue', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (175, 0, '2013-10-18 00:06:23.428', 'chicken pox', 'Paracetamol', 17);
INSERT INTO diagnosis VALUES (176, 0, '2013-10-18 00:06:23.439', 'fever', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (177, 0, '2013-10-18 00:06:23.45', 'colds', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (178, 0, '2013-10-18 00:06:23.461', 'dengue', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (179, 0, '2013-10-18 00:06:23.468', 'chicken pox', 'Paracetamol', 18);
INSERT INTO diagnosis VALUES (180, 0, '2013-10-18 00:06:23.473', 'fever', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (181, 0, '2013-10-18 00:06:23.478', 'colds', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (182, 0, '2013-10-18 00:06:23.483', 'dengue', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (183, 0, '2013-10-18 00:06:23.489', 'chicken pox', 'Paracetamol', 19);
INSERT INTO diagnosis VALUES (184, 0, '2013-10-18 00:06:23.494', 'fever', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (185, 0, '2013-10-18 00:06:23.498', 'colds', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (186, 0, '2013-10-18 00:06:23.503', 'dengue', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (187, 0, '2013-10-18 00:06:23.508', 'chicken pox', 'Paracetamol', 20);
INSERT INTO diagnosis VALUES (188, 0, '2013-10-18 00:06:23.512', 'fever', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (189, 0, '2013-10-18 00:06:23.516', 'colds', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (190, 0, '2013-10-18 00:06:23.521', 'dengue', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (191, 0, '2013-10-18 00:06:23.525', 'chicken pox', 'Paracetamol', 21);
INSERT INTO diagnosis VALUES (192, 0, '2013-10-18 00:06:23.53', 'fever', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (193, 0, '2013-10-18 00:06:23.534', 'colds', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (194, 0, '2013-10-18 00:06:23.541', 'dengue', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (195, 0, '2013-10-18 00:06:23.546', 'chicken pox', 'Paracetamol', 22);
INSERT INTO diagnosis VALUES (196, 0, '2013-10-18 00:06:23.552', 'fever', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (197, 0, '2013-10-18 00:06:23.557', 'colds', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (198, 0, '2013-10-18 00:06:23.561', 'dengue', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (199, 0, '2013-10-18 00:06:23.566', 'chicken pox', 'Paracetamol', 23);
INSERT INTO diagnosis VALUES (200, 0, '2013-10-18 00:06:23.571', 'fever', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (201, 0, '2013-10-18 00:06:23.575', 'colds', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (202, 0, '2013-10-18 00:06:23.58', 'dengue', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (203, 0, '2013-10-18 00:06:23.584', 'chicken pox', 'Paracetamol', 24);
INSERT INTO diagnosis VALUES (204, 0, '2013-10-18 00:06:23.589', 'fever', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (205, 0, '2013-10-18 00:06:23.593', 'colds', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (206, 0, '2013-10-18 00:06:23.604', 'dengue', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (207, 0, '2013-10-18 00:06:23.609', 'chicken pox', 'Paracetamol', 25);
INSERT INTO diagnosis VALUES (208, 0, '2013-10-18 00:06:23.616', 'fever', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (209, 0, '2013-10-18 00:06:23.622', 'colds', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (210, 0, '2013-10-18 00:06:23.63', 'dengue', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (211, 0, '2013-10-18 00:06:23.636', 'chicken pox', 'Paracetamol', 26);
INSERT INTO diagnosis VALUES (212, 0, '2013-10-18 00:06:23.642', 'fever', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (213, 0, '2013-10-18 00:06:23.648', 'colds', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (214, 0, '2013-10-18 00:06:23.74', 'dengue', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (215, 0, '2013-10-18 00:06:23.828', 'chicken pox', 'Paracetamol', 27);
INSERT INTO diagnosis VALUES (216, 0, '2013-10-18 00:06:23.916', 'fever', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (217, 0, '2013-10-18 00:06:24.005', 'colds', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (218, 0, '2013-10-18 00:06:24.094', 'dengue', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (219, 0, '2013-10-18 00:06:24.183', 'chicken pox', 'Paracetamol', 28);
INSERT INTO diagnosis VALUES (220, 0, '2013-10-18 00:06:24.276', 'fever', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (221, 0, '2013-10-18 00:06:24.36', 'colds', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (222, 0, '2013-10-18 00:06:24.455', 'dengue', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (223, 0, '2013-10-18 00:06:24.548', 'chicken pox', 'Paracetamol', 29);
INSERT INTO diagnosis VALUES (224, 0, '2013-10-18 00:06:24.634', 'fever', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (225, 0, '2013-10-18 00:06:24.673', 'colds', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (226, 0, '2013-10-18 00:06:24.706', 'dengue', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (227, 0, '2013-10-18 00:06:24.718', 'chicken pox', 'Paracetamol', 30);
INSERT INTO diagnosis VALUES (228, 0, '2013-10-18 00:06:24.727', 'fever', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (229, 0, '2013-10-18 00:06:24.733', 'colds', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (230, 0, '2013-10-18 00:06:24.742', 'dengue', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (231, 0, '2013-10-18 00:06:24.748', 'chicken pox', 'Paracetamol', 31);
INSERT INTO diagnosis VALUES (232, 0, '2013-10-18 00:06:24.754', 'fever', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (233, 0, '2013-10-18 00:06:24.76', 'colds', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (234, 0, '2013-10-18 00:06:24.766', 'dengue', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (235, 0, '2013-10-18 00:06:24.775', 'chicken pox', 'Paracetamol', 32);
INSERT INTO diagnosis VALUES (236, 0, '2013-10-18 00:06:24.782', 'fever', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (237, 0, '2013-10-18 00:06:24.784', 'colds', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (238, 0, '2013-10-18 00:06:24.794', 'dengue', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (239, 0, '2013-10-18 00:06:24.794', 'chicken pox', 'Paracetamol', 33);
INSERT INTO diagnosis VALUES (240, 0, '2013-10-18 00:06:24.804', 'fever', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (241, 0, '2013-10-18 00:06:24.804', 'colds', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (242, 0, '2013-10-18 00:06:24.814', 'dengue', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (243, 0, '2013-10-18 00:06:24.814', 'chicken pox', 'Paracetamol', 34);
INSERT INTO diagnosis VALUES (244, 0, '2013-10-18 00:06:24.824', 'fever', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (245, 0, '2013-10-18 00:06:24.835', 'colds', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (246, 0, '2013-10-18 00:06:24.841', 'dengue', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (247, 0, '2013-10-18 00:06:24.849', 'chicken pox', 'Paracetamol', 35);
INSERT INTO diagnosis VALUES (248, 0, '2013-10-18 00:06:24.858', 'fever', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (249, 0, '2013-10-18 00:06:24.866', 'colds', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (250, 0, '2013-10-18 00:06:24.871', 'dengue', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (251, 0, '2013-10-18 00:06:24.876', 'chicken pox', 'Paracetamol', 36);
INSERT INTO diagnosis VALUES (252, 0, '2013-10-18 00:06:24.882', 'fever', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (253, 0, '2013-10-18 00:06:24.888', 'colds', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (254, 0, '2013-10-18 00:06:24.893', 'dengue', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (255, 0, '2013-10-18 00:06:24.897', 'chicken pox', 'Paracetamol', 37);
INSERT INTO diagnosis VALUES (256, 0, '2013-10-18 00:06:24.903', 'fever', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (257, 0, '2013-10-18 00:06:24.908', 'colds', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (258, 0, '2013-10-18 00:06:24.912', 'dengue', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (259, 0, '2013-10-18 00:06:24.917', 'chicken pox', 'Paracetamol', 38);
INSERT INTO diagnosis VALUES (260, 0, '2013-10-18 00:06:24.921', 'fever', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (261, 0, '2013-10-18 00:06:24.925', 'colds', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (262, 0, '2013-10-18 00:06:24.929', 'dengue', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (263, 0, '2013-10-18 00:06:24.933', 'chicken pox', 'Paracetamol', 39);
INSERT INTO diagnosis VALUES (264, 0, '2013-10-18 00:06:24.978', 'fever', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (265, 0, '2013-10-18 00:06:25.158', 'colds', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (266, 0, '2013-10-18 00:06:25.249', 'dengue', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (267, 0, '2013-10-18 00:06:25.313', 'chicken pox', 'Paracetamol', 40);
INSERT INTO diagnosis VALUES (268, 0, '2013-10-18 00:06:25.402', 'fever', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (269, 0, '2013-10-18 00:06:25.495', 'colds', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (270, 0, '2013-10-18 00:06:25.582', 'dengue', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (271, 0, '2013-10-18 00:06:25.677', 'chicken pox', 'Paracetamol', 41);
INSERT INTO diagnosis VALUES (272, 0, '2013-10-18 00:06:25.766', 'fever', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (273, 0, '2013-10-18 00:06:25.854', 'colds', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (274, 0, '2013-10-18 00:06:25.939', 'dengue', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (275, 0, '2013-10-18 00:06:25.967', 'chicken pox', 'Paracetamol', 42);
INSERT INTO diagnosis VALUES (276, 0, '2013-10-18 00:06:25.973', 'fever', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (277, 0, '2013-10-18 00:06:25.978', 'colds', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (278, 0, '2013-10-18 00:06:25.985', 'dengue', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (279, 0, '2013-10-18 00:06:25.99', 'chicken pox', 'Paracetamol', 43);
INSERT INTO diagnosis VALUES (280, 0, '2013-10-18 00:06:25.995', 'fever', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (281, 0, '2013-10-18 00:06:26', 'colds', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (282, 0, '2013-10-18 00:06:26.006', 'dengue', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (283, 0, '2013-10-18 00:06:26.011', 'chicken pox', 'Paracetamol', 44);
INSERT INTO diagnosis VALUES (284, 0, '2013-10-18 00:06:26.015', 'fever', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (285, 0, '2013-10-18 00:06:26.02', 'colds', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (286, 0, '2013-10-18 00:06:26.025', 'dengue', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (287, 0, '2013-10-18 00:06:26.03', 'chicken pox', 'Paracetamol', 45);
INSERT INTO diagnosis VALUES (288, 0, '2013-10-18 00:06:26.035', 'fever', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (289, 0, '2013-10-18 00:06:26.04', 'colds', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (290, 0, '2013-10-18 00:06:26.045', 'dengue', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (291, 0, '2013-10-18 00:06:26.05', 'chicken pox', 'Paracetamol', 46);
INSERT INTO diagnosis VALUES (292, 0, '2013-10-18 00:06:26.058', 'fever', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (293, 0, '2013-10-18 00:06:26.065', 'colds', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (294, 0, '2013-10-18 00:06:26.073', 'dengue', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (295, 0, '2013-10-18 00:06:26.08', 'chicken pox', 'Paracetamol', 47);
INSERT INTO diagnosis VALUES (296, 0, '2013-10-18 00:06:26.085', 'fever', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (297, 0, '2013-10-18 00:06:26.09', 'colds', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (298, 0, '2013-10-18 00:06:26.096', 'dengue', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (299, 0, '2013-10-18 00:06:26.102', 'chicken pox', 'Paracetamol', 48);
INSERT INTO diagnosis VALUES (300, 0, '2013-10-18 00:06:26.11', 'fever', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (301, 0, '2013-10-18 00:06:26.117', 'colds', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (302, 0, '2013-10-18 00:06:26.124', 'dengue', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (303, 0, '2013-10-18 00:06:26.129', 'chicken pox', 'Paracetamol', 49);
INSERT INTO diagnosis VALUES (304, 0, '2013-10-18 00:06:26.136', 'fever', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (305, 0, '2013-10-18 00:06:26.142', 'colds', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (306, 0, '2013-10-18 00:06:26.148', 'dengue', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (307, 0, '2013-10-18 00:06:26.153', 'chicken pox', 'Paracetamol', 50);
INSERT INTO diagnosis VALUES (308, 0, '2013-10-18 00:06:26.159', 'fever', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (309, 0, '2013-10-18 00:06:26.164', 'colds', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (310, 0, '2013-10-18 00:06:26.169', 'dengue', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (311, 0, '2013-10-18 00:06:26.177', 'chicken pox', 'Paracetamol', 51);
INSERT INTO diagnosis VALUES (312, 0, '2013-10-18 00:06:26.184', 'fever', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (313, 0, '2013-10-18 00:06:26.191', 'colds', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (314, 0, '2013-10-18 00:06:26.283', 'dengue', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (315, 0, '2013-10-18 00:06:26.374', 'chicken pox', 'Paracetamol', 52);
INSERT INTO diagnosis VALUES (316, 0, '2013-10-18 00:06:26.465', 'fever', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (317, 0, '2013-10-18 00:06:26.549', 'colds', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (318, 0, '2013-10-18 00:06:26.579', 'dengue', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (319, 0, '2013-10-18 00:06:26.611', 'chicken pox', 'Paracetamol', 53);
INSERT INTO diagnosis VALUES (320, 0, '2013-10-18 00:06:26.647', 'fever', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (321, 0, '2013-10-18 00:06:26.753', 'colds', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (322, 0, '2013-10-18 00:06:26.839', 'dengue', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (323, 0, '2013-10-18 00:06:26.933', 'chicken pox', 'Paracetamol', 54);
INSERT INTO diagnosis VALUES (324, 0, '2013-10-18 00:06:27.019', 'fever', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (325, 0, '2013-10-18 00:06:27.11', 'colds', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (326, 0, '2013-10-18 00:06:27.13', 'dengue', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (327, 0, '2013-10-18 00:06:27.135', 'chicken pox', 'Paracetamol', 55);
INSERT INTO diagnosis VALUES (328, 0, '2013-10-18 00:06:27.14', 'fever', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (329, 0, '2013-10-18 00:06:27.157', 'colds', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (330, 0, '2013-10-18 00:06:27.166', 'dengue', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (331, 0, '2013-10-18 00:06:27.174', 'chicken pox', 'Paracetamol', 56);
INSERT INTO diagnosis VALUES (332, 0, '2013-10-18 00:06:27.183', 'fever', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (333, 0, '2013-10-18 00:06:27.19', 'colds', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (334, 0, '2013-10-18 00:06:27.199', 'dengue', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (335, 0, '2013-10-18 00:06:27.207', 'chicken pox', 'Paracetamol', 57);
INSERT INTO diagnosis VALUES (336, 0, '2013-10-18 00:06:27.214', 'fever', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (337, 0, '2013-10-18 00:06:27.223', 'colds', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (338, 0, '2013-10-18 00:06:27.23', 'dengue', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (339, 0, '2013-10-18 00:06:27.238', 'chicken pox', 'Paracetamol', 58);
INSERT INTO diagnosis VALUES (340, 0, '2013-10-18 00:06:27.246', 'fever', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (341, 0, '2013-10-18 00:06:27.253', 'colds', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (342, 0, '2013-10-18 00:06:27.259', 'dengue', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (343, 0, '2013-10-18 00:06:27.267', 'chicken pox', 'Paracetamol', 59);
INSERT INTO diagnosis VALUES (344, 0, '2013-10-18 00:06:27.273', 'fever', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (345, 0, '2013-10-18 00:06:27.279', 'colds', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (346, 0, '2013-10-18 00:06:27.286', 'dengue', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (347, 0, '2013-10-18 00:06:27.291', 'chicken pox', 'Paracetamol', 60);
INSERT INTO diagnosis VALUES (348, 0, '2013-10-18 00:06:27.295', 'fever', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (349, 0, '2013-10-18 00:06:27.301', 'colds', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (350, 0, '2013-10-18 00:06:27.305', 'dengue', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (351, 0, '2013-10-18 00:06:27.31', 'chicken pox', 'Paracetamol', 61);
INSERT INTO diagnosis VALUES (352, 0, '2013-10-18 00:06:27.315', 'fever', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (353, 0, '2013-10-18 00:06:27.32', 'colds', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (354, 0, '2013-10-18 00:06:27.324', 'dengue', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (355, 0, '2013-10-18 00:06:27.328', 'chicken pox', 'Paracetamol', 62);
INSERT INTO diagnosis VALUES (356, 0, '2013-10-18 00:06:27.333', 'fever', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (357, 0, '2013-10-18 00:06:27.337', 'colds', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (358, 0, '2013-10-18 00:06:27.341', 'dengue', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (359, 0, '2013-10-18 00:06:27.348', 'chicken pox', 'Paracetamol', 63);
INSERT INTO diagnosis VALUES (360, 0, '2013-10-18 00:06:27.355', 'fever', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (361, 0, '2013-10-18 00:06:27.362', 'colds', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (362, 0, '2013-10-18 00:06:27.369', 'dengue', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (363, 0, '2013-10-18 00:06:27.377', 'chicken pox', 'Paracetamol', 64);
INSERT INTO diagnosis VALUES (364, 0, '2013-10-18 00:06:27.481', 'fever', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (365, 0, '2013-10-18 00:06:27.572', 'colds', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (366, 0, '2013-10-18 00:06:27.664', 'dengue', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (367, 0, '2013-10-18 00:06:27.688', 'chicken pox', 'Paracetamol', 65);
INSERT INTO diagnosis VALUES (368, 0, '2013-10-18 00:06:27.794', 'fever', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (369, 0, '2013-10-18 00:06:27.885', 'colds', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (370, 0, '2013-10-18 00:06:27.973', 'dengue', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (371, 0, '2013-10-18 00:06:28.067', 'chicken pox', 'Paracetamol', 66);
INSERT INTO diagnosis VALUES (372, 0, '2013-10-18 00:06:28.161', 'fever', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (373, 0, '2013-10-18 00:06:28.256', 'colds', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (374, 0, '2013-10-18 00:06:28.345', 'dengue', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (375, 0, '2013-10-18 00:06:28.433', 'chicken pox', 'Paracetamol', 67);
INSERT INTO diagnosis VALUES (376, 0, '2013-10-18 00:06:28.462', 'fever', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (377, 0, '2013-10-18 00:06:28.474', 'colds', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (378, 0, '2013-10-18 00:06:28.481', 'dengue', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (379, 0, '2013-10-18 00:06:28.487', 'chicken pox', 'Paracetamol', 68);
INSERT INTO diagnosis VALUES (380, 0, '2013-10-18 00:06:28.494', 'fever', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (381, 0, '2013-10-18 00:06:28.501', 'colds', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (382, 0, '2013-10-18 00:06:28.507', 'dengue', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (383, 0, '2013-10-18 00:06:28.512', 'chicken pox', 'Paracetamol', 69);
INSERT INTO diagnosis VALUES (384, 0, '2013-10-18 00:06:28.517', 'fever', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (385, 0, '2013-10-18 00:06:28.522', 'colds', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (386, 0, '2013-10-18 00:06:28.527', 'dengue', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (387, 0, '2013-10-18 00:06:28.531', 'chicken pox', 'Paracetamol', 70);
INSERT INTO diagnosis VALUES (388, 0, '2013-10-18 00:06:28.536', 'fever', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (389, 0, '2013-10-18 00:06:28.54', 'colds', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (390, 0, '2013-10-18 00:06:28.544', 'dengue', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (391, 0, '2013-10-18 00:06:28.55', 'chicken pox', 'Paracetamol', 71);
INSERT INTO diagnosis VALUES (392, 0, '2013-10-18 00:06:28.554', 'fever', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (393, 0, '2013-10-18 00:06:28.559', 'colds', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (394, 0, '2013-10-18 00:06:28.563', 'dengue', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (395, 0, '2013-10-18 00:06:28.567', 'chicken pox', 'Paracetamol', 72);
INSERT INTO diagnosis VALUES (396, 0, '2013-10-18 00:06:28.572', 'fever', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (397, 0, '2013-10-18 00:06:28.577', 'colds', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (398, 0, '2013-10-18 00:06:28.582', 'dengue', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (399, 0, '2013-10-18 00:06:28.587', 'chicken pox', 'Paracetamol', 73);
INSERT INTO diagnosis VALUES (400, 0, '2013-10-18 00:06:28.591', 'fever', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (401, 0, '2013-10-18 00:06:28.596', 'colds', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (402, 0, '2013-10-18 00:06:28.601', 'dengue', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (403, 0, '2013-10-18 00:06:28.605', 'chicken pox', 'Paracetamol', 74);
INSERT INTO diagnosis VALUES (404, 0, '2013-10-18 00:06:28.61', 'fever', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (405, 0, '2013-10-18 00:06:28.616', 'colds', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (406, 0, '2013-10-18 00:06:28.621', 'dengue', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (407, 0, '2013-10-18 00:06:28.626', 'chicken pox', 'Paracetamol', 75);
INSERT INTO diagnosis VALUES (408, 0, '2013-10-18 00:06:28.631', 'fever', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (409, 0, '2013-10-18 00:06:28.635', 'colds', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (410, 0, '2013-10-18 00:06:28.64', 'dengue', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (411, 0, '2013-10-18 00:06:28.644', 'chicken pox', 'Paracetamol', 76);
INSERT INTO diagnosis VALUES (412, 0, '2013-10-18 00:06:28.648', 'fever', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (413, 0, '2013-10-18 00:06:28.653', 'colds', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (414, 0, '2013-10-18 00:06:28.657', 'dengue', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (415, 0, '2013-10-18 00:06:28.756', 'chicken pox', 'Paracetamol', 77);
INSERT INTO diagnosis VALUES (416, 0, '2013-10-18 00:06:28.83', 'fever', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (417, 0, '2013-10-18 00:06:28.89', 'colds', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (418, 0, '2013-10-18 00:06:28.987', 'dengue', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (419, 0, '2013-10-18 00:06:29.074', 'chicken pox', 'Paracetamol', 78);
INSERT INTO diagnosis VALUES (420, 0, '2013-10-18 00:06:29.167', 'fever', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (421, 0, '2013-10-18 00:06:29.251', 'colds', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (422, 0, '2013-10-18 00:06:29.341', 'dengue', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (423, 0, '2013-10-18 00:06:29.43', 'chicken pox', 'Paracetamol', 79);
INSERT INTO diagnosis VALUES (424, 0, '2013-10-18 00:06:29.527', 'fever', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (425, 0, '2013-10-18 00:06:29.607', 'colds', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (426, 0, '2013-10-18 00:06:29.636', 'dengue', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (427, 0, '2013-10-18 00:06:29.641', 'chicken pox', 'Paracetamol', 80);
INSERT INTO diagnosis VALUES (428, 0, '2013-10-18 00:06:29.647', 'fever', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (429, 0, '2013-10-18 00:06:29.652', 'colds', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (430, 0, '2013-10-18 00:06:29.658', 'dengue', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (431, 0, '2013-10-18 00:06:29.663', 'chicken pox', 'Paracetamol', 81);
INSERT INTO diagnosis VALUES (432, 0, '2013-10-18 00:06:29.668', 'fever', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (433, 0, '2013-10-18 00:06:29.674', 'colds', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (434, 0, '2013-10-18 00:06:29.678', 'dengue', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (435, 0, '2013-10-18 00:06:29.683', 'chicken pox', 'Paracetamol', 82);
INSERT INTO diagnosis VALUES (436, 0, '2013-10-18 00:06:29.687', 'fever', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (437, 0, '2013-10-18 00:06:29.691', 'colds', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (438, 0, '2013-10-18 00:06:29.696', 'dengue', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (439, 0, '2013-10-18 00:06:29.7', 'chicken pox', 'Paracetamol', 83);
INSERT INTO diagnosis VALUES (440, 0, '2013-10-18 00:06:29.705', 'fever', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (441, 0, '2013-10-18 00:06:29.709', 'colds', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (442, 0, '2013-10-18 00:06:29.714', 'dengue', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (443, 0, '2013-10-18 00:06:29.719', 'chicken pox', 'Paracetamol', 84);
INSERT INTO diagnosis VALUES (444, 0, '2013-10-18 00:06:29.724', 'fever', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (445, 0, '2013-10-18 00:06:29.73', 'colds', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (446, 0, '2013-10-18 00:06:29.734', 'dengue', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (447, 0, '2013-10-18 00:06:29.738', 'chicken pox', 'Paracetamol', 85);
INSERT INTO diagnosis VALUES (448, 0, '2013-10-18 00:06:29.743', 'fever', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (449, 0, '2013-10-18 00:06:29.747', 'colds', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (450, 0, '2013-10-18 00:06:29.752', 'dengue', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (451, 0, '2013-10-18 00:06:29.757', 'chicken pox', 'Paracetamol', 86);
INSERT INTO diagnosis VALUES (452, 0, '2013-10-18 00:06:29.761', 'fever', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (453, 0, '2013-10-18 00:06:29.766', 'colds', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (454, 0, '2013-10-18 00:06:29.77', 'dengue', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (455, 0, '2013-10-18 00:06:29.775', 'chicken pox', 'Paracetamol', 87);
INSERT INTO diagnosis VALUES (456, 0, '2013-10-18 00:06:29.78', 'fever', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (457, 0, '2013-10-18 00:06:29.785', 'colds', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (458, 0, '2013-10-18 00:06:29.79', 'dengue', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (459, 0, '2013-10-18 00:06:29.795', 'chicken pox', 'Paracetamol', 88);
INSERT INTO diagnosis VALUES (460, 0, '2013-10-18 00:06:29.8', 'fever', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (461, 0, '2013-10-18 00:06:29.805', 'colds', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (462, 0, '2013-10-18 00:06:29.81', 'dengue', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (463, 0, '2013-10-18 00:06:29.815', 'chicken pox', 'Paracetamol', 89);
INSERT INTO diagnosis VALUES (464, 0, '2013-10-18 00:06:29.919', 'fever', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (465, 0, '2013-10-18 00:06:30.009', 'colds', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (466, 0, '2013-10-18 00:06:30.101', 'dengue', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (467, 0, '2013-10-18 00:06:30.184', 'chicken pox', 'Paracetamol', 90);
INSERT INTO diagnosis VALUES (468, 0, '2013-10-18 00:06:30.274', 'fever', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (469, 0, '2013-10-18 00:06:30.362', 'colds', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (470, 0, '2013-10-18 00:06:30.451', 'dengue', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (471, 0, '2013-10-18 00:06:30.541', 'chicken pox', 'Paracetamol', 91);
INSERT INTO diagnosis VALUES (472, 0, '2013-10-18 00:06:30.636', 'fever', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (473, 0, '2013-10-18 00:06:30.683', 'colds', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (474, 0, '2013-10-18 00:06:30.731', 'dengue', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (475, 0, '2013-10-18 00:06:30.831', 'chicken pox', 'Paracetamol', 92);
INSERT INTO diagnosis VALUES (476, 0, '2013-10-18 00:06:30.859', 'fever', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (477, 0, '2013-10-18 00:06:30.863', 'colds', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (478, 0, '2013-10-18 00:06:30.867', 'dengue', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (479, 0, '2013-10-18 00:06:30.872', 'chicken pox', 'Paracetamol', 93);
INSERT INTO diagnosis VALUES (480, 0, '2013-10-18 00:06:30.877', 'fever', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (481, 0, '2013-10-18 00:06:30.882', 'colds', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (482, 0, '2013-10-18 00:06:30.887', 'dengue', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (483, 0, '2013-10-18 00:06:30.891', 'chicken pox', 'Paracetamol', 94);
INSERT INTO diagnosis VALUES (484, 0, '2013-10-18 00:06:30.896', 'fever', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (485, 0, '2013-10-18 00:06:30.901', 'colds', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (486, 0, '2013-10-18 00:06:30.906', 'dengue', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (487, 0, '2013-10-18 00:06:30.911', 'chicken pox', 'Paracetamol', 95);
INSERT INTO diagnosis VALUES (488, 0, '2013-10-18 00:06:30.915', 'fever', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (489, 0, '2013-10-18 00:06:30.921', 'colds', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (490, 0, '2013-10-18 00:06:30.926', 'dengue', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (491, 0, '2013-10-18 00:06:30.931', 'chicken pox', 'Paracetamol', 96);
INSERT INTO diagnosis VALUES (492, 0, '2013-10-18 00:06:30.935', 'fever', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (493, 0, '2013-10-18 00:06:30.94', 'colds', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (494, 0, '2013-10-18 00:06:30.945', 'dengue', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (495, 0, '2013-10-18 00:06:30.951', 'chicken pox', 'Paracetamol', 97);
INSERT INTO diagnosis VALUES (496, 0, '2013-10-18 00:06:30.962', 'fever', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (497, 0, '2013-10-18 00:06:30.97', 'colds', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (498, 0, '2013-10-18 00:06:30.979', 'dengue', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (499, 0, '2013-10-18 00:06:30.984', 'chicken pox', 'Paracetamol', 98);
INSERT INTO diagnosis VALUES (508, 0, '2013-01-01 09:48:42.358', 'chicken pox', 'paracetamol', 1);
INSERT INTO diagnosis VALUES (509, 0, '2013-01-01 09:52:49.868', 'chicken pox', 'paracetamol', 2);
INSERT INTO diagnosis VALUES (510, 0, '2013-02-01 09:53:55.15', 'fever', 'paracetamol', 2);
INSERT INTO diagnosis VALUES (511, 0, '2013-02-01 09:54:18.752', 'fever', 'paracetamol', 1);
INSERT INTO diagnosis VALUES (512, 0, '2012-12-01 09:59:30.155', 'fever', 'paracetamol', 2);
INSERT INTO diagnosis VALUES (513, 0, '2012-12-01 10:00:45.892', 'fever', 'paracetamol', 3);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO student VALUES (2, 0, 'Iligan City', '2013-10-18 00:06:17.879', 'O', 'SCS', true, 'Student1', 'MALE', '5ft 4in', '2010-0101', 'Student1', 'BSCS', 'Student1', 50);
INSERT INTO student VALUES (3, 0, 'Iligan City', '2013-10-18 00:06:17.888', 'O', 'SCS', true, 'Student2', 'MALE', '5ft 4in', '2010-0102', 'Student2', 'BSCS', 'Student2', 50);
INSERT INTO student VALUES (4, 0, 'Iligan City', '2013-10-18 00:06:17.903', 'O', 'SCS', true, 'Student3', 'MALE', '5ft 4in', '2010-0103', 'Student3', 'BSCS', 'Student3', 50);
INSERT INTO student VALUES (5, 0, 'Iligan City', '2013-10-18 00:06:17.914', 'O', 'SCS', true, 'Student4', 'MALE', '5ft 4in', '2010-0104', 'Student4', 'BSCS', 'Student4', 50);
INSERT INTO student VALUES (6, 0, 'Iligan City', '2013-10-18 00:06:17.929', 'O', 'SCS', true, 'Student5', 'MALE', '5ft 4in', '2010-0105', 'Student5', 'BSCS', 'Student5', 50);
INSERT INTO student VALUES (7, 0, 'Iligan City', '2013-10-18 00:06:17.94', 'O', 'SCS', true, 'Student6', 'MALE', '5ft 4in', '2010-0106', 'Student6', 'BSCS', 'Student6', 50);
INSERT INTO student VALUES (8, 0, 'Iligan City', '2013-10-18 00:06:17.953', 'O', 'SCS', true, 'Student7', 'MALE', '5ft 4in', '2010-0107', 'Student7', 'BSCS', 'Student7', 50);
INSERT INTO student VALUES (9, 0, 'Iligan City', '2013-10-18 00:06:17.973', 'O', 'SCS', true, 'Student8', 'MALE', '5ft 4in', '2010-0108', 'Student8', 'BSCS', 'Student8', 50);
INSERT INTO student VALUES (10, 0, 'Iligan City', '2013-10-18 00:06:17.981', 'O', 'SCS', true, 'Student9', 'MALE', '5ft 4in', '2010-0109', 'Student9', 'BSCS', 'Student9', 50);
INSERT INTO student VALUES (11, 0, 'Iligan City', '2013-10-18 00:06:17.989', 'O', 'SCS', true, 'Student10', 'MALE', '5ft 4in', '2010-0110', 'Student10', 'BSCS', 'Student10', 50);
INSERT INTO student VALUES (12, 0, 'Iligan City', '2013-10-18 00:06:17.999', 'O', 'SCS', true, 'Student11', 'MALE', '5ft 4in', '2010-0111', 'Student11', 'BSCS', 'Student11', 50);
INSERT INTO student VALUES (13, 0, 'Iligan City', '2013-10-18 00:06:18.007', 'O', 'SCS', true, 'Student12', 'MALE', '5ft 4in', '2010-0112', 'Student12', 'BSCS', 'Student12', 50);
INSERT INTO student VALUES (14, 0, 'Iligan City', '2013-10-18 00:06:18.017', 'O', 'SCS', true, 'Student13', 'MALE', '5ft 4in', '2010-0113', 'Student13', 'BSCS', 'Student13', 50);
INSERT INTO student VALUES (15, 0, 'Iligan City', '2013-10-18 00:06:18.028', 'O', 'SCS', true, 'Student14', 'MALE', '5ft 4in', '2010-0114', 'Student14', 'BSCS', 'Student14', 50);
INSERT INTO student VALUES (16, 0, 'Iligan City', '2013-10-18 00:06:18.04', 'O', 'SCS', true, 'Student15', 'MALE', '5ft 4in', '2010-0115', 'Student15', 'BSCS', 'Student15', 50);
INSERT INTO student VALUES (17, 0, 'Iligan City', '2013-10-18 00:06:18.052', 'O', 'SCS', true, 'Student16', 'MALE', '5ft 4in', '2010-0116', 'Student16', 'BSCS', 'Student16', 50);
INSERT INTO student VALUES (18, 0, 'Iligan City', '2013-10-18 00:06:18.063', 'O', 'SCS', true, 'Student17', 'MALE', '5ft 4in', '2010-0117', 'Student17', 'BSCS', 'Student17', 50);
INSERT INTO student VALUES (19, 0, 'Iligan City', '2013-10-18 00:06:18.144', 'O', 'SCS', true, 'Student18', 'MALE', '5ft 4in', '2010-0118', 'Student18', 'BSCS', 'Student18', 50);
INSERT INTO student VALUES (20, 0, 'Iligan City', '2013-10-18 00:06:18.233', 'O', 'SCS', true, 'Student19', 'MALE', '5ft 4in', '2010-0119', 'Student19', 'BSCS', 'Student19', 50);
INSERT INTO student VALUES (21, 0, 'Iligan City', '2013-10-18 00:06:18.322', 'O', 'SCS', true, 'Student20', 'MALE', '5ft 4in', '2010-0120', 'Student20', 'BSCS', 'Student20', 50);
INSERT INTO student VALUES (22, 0, 'Iligan City', '2013-10-18 00:06:18.411', 'O', 'SCS', true, 'Student21', 'MALE', '5ft 4in', '2010-0121', 'Student21', 'BSCS', 'Student21', 50);
INSERT INTO student VALUES (23, 0, 'Iligan City', '2013-10-18 00:06:18.501', 'O', 'SCS', true, 'Student22', 'MALE', '5ft 4in', '2010-0122', 'Student22', 'BSCS', 'Student22', 50);
INSERT INTO student VALUES (24, 0, 'Iligan City', '2013-10-18 00:06:18.601', 'O', 'SCS', true, 'Student23', 'MALE', '5ft 4in', '2010-0123', 'Student23', 'BSCS', 'Student23', 50);
INSERT INTO student VALUES (25, 0, 'Iligan City', '2013-10-18 00:06:18.652', 'O', 'SCS', true, 'Student24', 'MALE', '5ft 4in', '2010-0124', 'Student24', 'BSCS', 'Student24', 50);
INSERT INTO student VALUES (26, 0, 'Iligan City', '2013-10-18 00:06:18.756', 'O', 'SCS', true, 'Student25', 'MALE', '5ft 4in', '2010-0125', 'Student25', 'BSCS', 'Student25', 50);
INSERT INTO student VALUES (27, 0, 'Iligan City', '2013-10-18 00:06:18.845', 'O', 'SCS', true, 'Student26', 'MALE', '5ft 4in', '2010-0126', 'Student26', 'BSCS', 'Student26', 50);
INSERT INTO student VALUES (28, 0, 'Iligan City', '2013-10-18 00:06:18.945', 'O', 'SCS', true, 'Student27', 'MALE', '5ft 4in', '2010-0127', 'Student27', 'BSCS', 'Student27', 50);
INSERT INTO student VALUES (29, 0, 'Iligan City', '2013-10-18 00:06:19.034', 'O', 'SCS', true, 'Student28', 'MALE', '5ft 4in', '2010-0128', 'Student28', 'BSCS', 'Student28', 50);
INSERT INTO student VALUES (30, 0, 'Iligan City', '2013-10-18 00:06:19.156', 'O', 'SCS', true, 'Student29', 'MALE', '5ft 4in', '2010-0129', 'Student29', 'BSCS', 'Student29', 50);
INSERT INTO student VALUES (31, 0, 'Iligan City', '2013-10-18 00:06:19.246', 'O', 'SCS', true, 'Student30', 'MALE', '5ft 4in', '2010-0130', 'Student30', 'BSCS', 'Student30', 50);
INSERT INTO student VALUES (32, 0, 'Iligan City', '2013-10-18 00:06:19.285', 'O', 'SCS', true, 'Student31', 'MALE', '5ft 4in', '2010-0131', 'Student31', 'BSCS', 'Student31', 50);
INSERT INTO student VALUES (33, 0, 'Iligan City', '2013-10-18 00:06:19.303', 'O', 'SCS', true, 'Student32', 'MALE', '5ft 4in', '2010-0132', 'Student32', 'BSCS', 'Student32', 50);
INSERT INTO student VALUES (34, 0, 'Iligan City', '2013-10-18 00:06:19.331', 'O', 'SCS', true, 'Student33', 'MALE', '5ft 4in', '2010-0133', 'Student33', 'BSCS', 'Student33', 50);
INSERT INTO student VALUES (35, 0, 'Iligan City', '2013-10-18 00:06:19.342', 'O', 'SCS', true, 'Student34', 'MALE', '5ft 4in', '2010-0134', 'Student34', 'BSCS', 'Student34', 50);
INSERT INTO student VALUES (36, 0, 'Iligan City', '2013-10-18 00:06:19.364', 'O', 'SCS', true, 'Student35', 'MALE', '5ft 4in', '2010-0135', 'Student35', 'BSCS', 'Student35', 50);
INSERT INTO student VALUES (37, 0, 'Iligan City', '2013-10-18 00:06:19.375', 'O', 'SCS', true, 'Student36', 'MALE', '5ft 4in', '2010-0136', 'Student36', 'BSCS', 'Student36', 50);
INSERT INTO student VALUES (38, 0, 'Iligan City', '2013-10-18 00:06:19.385', 'O', 'SCS', true, 'Student37', 'MALE', '5ft 4in', '2010-0137', 'Student37', 'BSCS', 'Student37', 50);
INSERT INTO student VALUES (39, 0, 'Iligan City', '2013-10-18 00:06:19.396', 'O', 'SCS', true, 'Student38', 'MALE', '5ft 4in', '2010-0138', 'Student38', 'BSCS', 'Student38', 50);
INSERT INTO student VALUES (40, 0, 'Iligan City', '2013-10-18 00:06:19.406', 'O', 'SCS', true, 'Student39', 'MALE', '5ft 4in', '2010-0139', 'Student39', 'BSCS', 'Student39', 50);
INSERT INTO student VALUES (41, 0, 'Iligan City', '2013-10-18 00:06:19.413', 'O', 'SCS', true, 'Student40', 'MALE', '5ft 4in', '2010-0140', 'Student40', 'BSCS', 'Student40', 50);
INSERT INTO student VALUES (42, 0, 'Iligan City', '2013-10-18 00:06:19.422', 'O', 'SCS', true, 'Student41', 'MALE', '5ft 4in', '2010-0141', 'Student41', 'BSCS', 'Student41', 50);
INSERT INTO student VALUES (43, 0, 'Iligan City', '2013-10-18 00:06:19.43', 'O', 'SCS', true, 'Student42', 'MALE', '5ft 4in', '2010-0142', 'Student42', 'BSCS', 'Student42', 50);
INSERT INTO student VALUES (44, 0, 'Iligan City', '2013-10-18 00:06:19.437', 'O', 'SCS', true, 'Student43', 'MALE', '5ft 4in', '2010-0143', 'Student43', 'BSCS', 'Student43', 50);
INSERT INTO student VALUES (45, 0, 'Iligan City', '2013-10-18 00:06:19.446', 'O', 'SCS', true, 'Student44', 'MALE', '5ft 4in', '2010-0144', 'Student44', 'BSCS', 'Student44', 50);
INSERT INTO student VALUES (46, 0, 'Iligan City', '2013-10-18 00:06:19.455', 'O', 'SCS', true, 'Student45', 'MALE', '5ft 4in', '2010-0145', 'Student45', 'BSCS', 'Student45', 50);
INSERT INTO student VALUES (47, 0, 'Iligan City', '2013-10-18 00:06:19.463', 'O', 'SCS', true, 'Student46', 'MALE', '5ft 4in', '2010-0146', 'Student46', 'BSCS', 'Student46', 50);
INSERT INTO student VALUES (48, 0, 'Iligan City', '2013-10-18 00:06:19.47', 'O', 'SCS', true, 'Student47', 'MALE', '5ft 4in', '2010-0147', 'Student47', 'BSCS', 'Student47', 50);
INSERT INTO student VALUES (49, 0, 'Iligan City', '2013-10-18 00:06:19.478', 'O', 'SCS', true, 'Student48', 'MALE', '5ft 4in', '2010-0148', 'Student48', 'BSCS', 'Student48', 50);
INSERT INTO student VALUES (50, 0, 'Iligan City', '2013-10-18 00:06:19.486', 'O', 'SCS', true, 'Student49', 'MALE', '5ft 4in', '2010-0149', 'Student49', 'BSCS', 'Student49', 50);
INSERT INTO student VALUES (51, 0, 'Iligan City', '2013-10-18 00:06:19.493', 'O', 'SCS', true, 'Student50', 'MALE', '5ft 4in', '2010-0150', 'Student50', 'BSCS', 'Student50', 50);
INSERT INTO student VALUES (52, 0, 'Iligan City', '2013-10-18 00:06:19.501', 'O', 'SCS', true, 'Student51', 'MALE', '5ft 4in', '2010-0151', 'Student51', 'BSCS', 'Student51', 50);
INSERT INTO student VALUES (53, 0, 'Iligan City', '2013-10-18 00:06:19.51', 'O', 'SCS', true, 'Student52', 'MALE', '5ft 4in', '2010-0152', 'Student52', 'BSCS', 'Student52', 50);
INSERT INTO student VALUES (54, 0, 'Iligan City', '2013-10-18 00:06:19.517', 'O', 'SCS', true, 'Student53', 'MALE', '5ft 4in', '2010-0153', 'Student53', 'BSCS', 'Student53', 50);
INSERT INTO student VALUES (55, 0, 'Iligan City', '2013-10-18 00:06:19.524', 'O', 'SCS', true, 'Student54', 'MALE', '5ft 4in', '2010-0154', 'Student54', 'BSCS', 'Student54', 50);
INSERT INTO student VALUES (56, 0, 'Iligan City', '2013-10-18 00:06:19.532', 'O', 'SCS', true, 'Student55', 'MALE', '5ft 4in', '2010-0155', 'Student55', 'BSCS', 'Student55', 50);
INSERT INTO student VALUES (57, 0, 'Iligan City', '2013-10-18 00:06:19.54', 'O', 'SCS', true, 'Student56', 'MALE', '5ft 4in', '2010-0156', 'Student56', 'BSCS', 'Student56', 50);
INSERT INTO student VALUES (58, 0, 'Iligan City', '2013-10-18 00:06:19.547', 'O', 'SCS', true, 'Student57', 'MALE', '5ft 4in', '2010-0157', 'Student57', 'BSCS', 'Student57', 50);
INSERT INTO student VALUES (59, 0, 'Iligan City', '2013-10-18 00:06:19.555', 'O', 'SCS', true, 'Student58', 'MALE', '5ft 4in', '2010-0158', 'Student58', 'BSCS', 'Student58', 50);
INSERT INTO student VALUES (60, 0, 'Iligan City', '2013-10-18 00:06:19.563', 'O', 'SCS', true, 'Student59', 'MALE', '5ft 4in', '2010-0159', 'Student59', 'BSCS', 'Student59', 50);
INSERT INTO student VALUES (61, 0, 'Iligan City', '2013-10-18 00:06:19.571', 'O', 'SCS', true, 'Student60', 'MALE', '5ft 4in', '2010-0160', 'Student60', 'BSCS', 'Student60', 50);
INSERT INTO student VALUES (62, 0, 'Iligan City', '2013-10-18 00:06:19.579', 'O', 'SCS', true, 'Student61', 'MALE', '5ft 4in', '2010-0161', 'Student61', 'BSCS', 'Student61', 50);
INSERT INTO student VALUES (63, 0, 'Iligan City', '2013-10-18 00:06:19.587', 'O', 'SCS', true, 'Student62', 'MALE', '5ft 4in', '2010-0162', 'Student62', 'BSCS', 'Student62', 50);
INSERT INTO student VALUES (64, 0, 'Iligan City', '2013-10-18 00:06:19.595', 'O', 'SCS', true, 'Student63', 'MALE', '5ft 4in', '2010-0163', 'Student63', 'BSCS', 'Student63', 50);
INSERT INTO student VALUES (65, 0, 'Iligan City', '2013-10-18 00:06:19.605', 'O', 'SCS', true, 'Student64', 'MALE', '5ft 4in', '2010-0164', 'Student64', 'BSCS', 'Student64', 50);
INSERT INTO student VALUES (66, 0, 'Iligan City', '2013-10-18 00:06:19.613', 'O', 'SCS', true, 'Student65', 'MALE', '5ft 4in', '2010-0165', 'Student65', 'BSCS', 'Student65', 50);
INSERT INTO student VALUES (67, 0, 'Iligan City', '2013-10-18 00:06:19.622', 'O', 'SCS', true, 'Student66', 'MALE', '5ft 4in', '2010-0166', 'Student66', 'BSCS', 'Student66', 50);
INSERT INTO student VALUES (68, 0, 'Iligan City', '2013-10-18 00:06:19.69', 'O', 'SCS', true, 'Student67', 'MALE', '5ft 4in', '2010-0167', 'Student67', 'BSCS', 'Student67', 50);
INSERT INTO student VALUES (69, 0, 'Iligan City', '2013-10-18 00:06:19.697', 'O', 'SCS', true, 'Student68', 'MALE', '5ft 4in', '2010-0168', 'Student68', 'BSCS', 'Student68', 50);
INSERT INTO student VALUES (70, 0, 'Iligan City', '2013-10-18 00:06:19.709', 'O', 'SCS', true, 'Student69', 'MALE', '5ft 4in', '2010-0169', 'Student69', 'BSCS', 'Student69', 50);
INSERT INTO student VALUES (71, 0, 'Iligan City', '2013-10-18 00:06:19.8', 'O', 'SCS', true, 'Student70', 'MALE', '5ft 4in', '2010-0170', 'Student70', 'BSCS', 'Student70', 50);
INSERT INTO student VALUES (72, 0, 'Iligan City', '2013-10-18 00:06:19.889', 'O', 'SCS', true, 'Student71', 'MALE', '5ft 4in', '2010-0171', 'Student71', 'BSCS', 'Student71', 50);
INSERT INTO student VALUES (73, 0, 'Iligan City', '2013-10-18 00:06:19.978', 'O', 'SCS', true, 'Student72', 'MALE', '5ft 4in', '2010-0172', 'Student72', 'BSCS', 'Student72', 50);
INSERT INTO student VALUES (74, 0, 'Iligan City', '2013-10-18 00:06:20.068', 'O', 'SCS', true, 'Student73', 'MALE', '5ft 4in', '2010-0173', 'Student73', 'BSCS', 'Student73', 50);
INSERT INTO student VALUES (75, 0, 'Iligan City', '2013-10-18 00:06:20.223', 'O', 'SCS', true, 'Student74', 'MALE', '5ft 4in', '2010-0174', 'Student74', 'BSCS', 'Student74', 50);
INSERT INTO student VALUES (76, 0, 'Iligan City', '2013-10-18 00:06:20.312', 'O', 'SCS', true, 'Student75', 'MALE', '5ft 4in', '2010-0175', 'Student75', 'BSCS', 'Student75', 50);
INSERT INTO student VALUES (77, 0, 'Iligan City', '2013-10-18 00:06:20.4', 'O', 'SCS', true, 'Student76', 'MALE', '5ft 4in', '2010-0176', 'Student76', 'BSCS', 'Student76', 50);
INSERT INTO student VALUES (78, 0, 'Iligan City', '2013-10-18 00:06:20.49', 'O', 'SCS', true, 'Student77', 'MALE', '5ft 4in', '2010-0177', 'Student77', 'BSCS', 'Student77', 50);
INSERT INTO student VALUES (79, 0, 'Iligan City', '2013-10-18 00:06:20.59', 'O', 'SCS', true, 'Student78', 'MALE', '5ft 4in', '2010-0178', 'Student78', 'BSCS', 'Student78', 50);
INSERT INTO student VALUES (80, 0, 'Iligan City', '2013-10-18 00:06:20.701', 'O', 'SCS', true, 'Student79', 'MALE', '5ft 4in', '2010-0179', 'Student79', 'BSCS', 'Student79', 50);
INSERT INTO student VALUES (81, 0, 'Iligan City', '2013-10-18 00:06:20.789', 'O', 'SCS', true, 'Student80', 'MALE', '5ft 4in', '2010-0180', 'Student80', 'BSCS', 'Student80', 50);
INSERT INTO student VALUES (82, 0, 'Iligan City', '2013-10-18 00:06:20.878', 'O', 'SCS', true, 'Student81', 'MALE', '5ft 4in', '2010-0181', 'Student81', 'BSCS', 'Student81', 50);
INSERT INTO student VALUES (83, 0, 'Iligan City', '2013-10-18 00:06:20.907', 'O', 'SCS', true, 'Student82', 'MALE', '5ft 4in', '2010-0182', 'Student82', 'BSCS', 'Student82', 50);
INSERT INTO student VALUES (84, 0, 'Iligan City', '2013-10-18 00:06:20.914', 'O', 'SCS', true, 'Student83', 'MALE', '5ft 4in', '2010-0183', 'Student83', 'BSCS', 'Student83', 50);
INSERT INTO student VALUES (85, 0, 'Iligan City', '2013-10-18 00:06:20.923', 'O', 'SCS', true, 'Student84', 'MALE', '5ft 4in', '2010-0184', 'Student84', 'BSCS', 'Student84', 50);
INSERT INTO student VALUES (86, 0, 'Iligan City', '2013-10-18 00:06:20.931', 'O', 'SCS', true, 'Student85', 'MALE', '5ft 4in', '2010-0185', 'Student85', 'BSCS', 'Student85', 50);
INSERT INTO student VALUES (87, 0, 'Iligan City', '2013-10-18 00:06:20.94', 'O', 'SCS', true, 'Student86', 'MALE', '5ft 4in', '2010-0186', 'Student86', 'BSCS', 'Student86', 50);
INSERT INTO student VALUES (88, 0, 'Iligan City', '2013-10-18 00:06:20.949', 'O', 'SCS', true, 'Student87', 'MALE', '5ft 4in', '2010-0187', 'Student87', 'BSCS', 'Student87', 50);
INSERT INTO student VALUES (89, 0, 'Iligan City', '2013-10-18 00:06:20.957', 'O', 'SCS', true, 'Student88', 'MALE', '5ft 4in', '2010-0188', 'Student88', 'BSCS', 'Student88', 50);
INSERT INTO student VALUES (90, 0, 'Iligan City', '2013-10-18 00:06:20.965', 'O', 'SCS', true, 'Student89', 'MALE', '5ft 4in', '2010-0189', 'Student89', 'BSCS', 'Student89', 50);
INSERT INTO student VALUES (91, 0, 'Iligan City', '2013-10-18 00:06:20.973', 'O', 'SCS', true, 'Student90', 'MALE', '5ft 4in', '2010-0190', 'Student90', 'BSCS', 'Student90', 50);
INSERT INTO student VALUES (92, 0, 'Iligan City', '2013-10-18 00:06:20.981', 'O', 'SCS', true, 'Student91', 'MALE', '5ft 4in', '2010-0191', 'Student91', 'BSCS', 'Student91', 50);
INSERT INTO student VALUES (93, 0, 'Iligan City', '2013-10-18 00:06:20.989', 'O', 'SCS', true, 'Student92', 'MALE', '5ft 4in', '2010-0192', 'Student92', 'BSCS', 'Student92', 50);
INSERT INTO student VALUES (94, 0, 'Iligan City', '2013-10-18 00:06:20.997', 'O', 'SCS', true, 'Student93', 'MALE', '5ft 4in', '2010-0193', 'Student93', 'BSCS', 'Student93', 50);
INSERT INTO student VALUES (95, 0, 'Iligan City', '2013-10-18 00:06:21.006', 'O', 'SCS', true, 'Student94', 'MALE', '5ft 4in', '2010-0194', 'Student94', 'BSCS', 'Student94', 50);
INSERT INTO student VALUES (96, 0, 'Iligan City', '2013-10-18 00:06:21.015', 'O', 'SCS', true, 'Student95', 'MALE', '5ft 4in', '2010-0195', 'Student95', 'BSCS', 'Student95', 50);
INSERT INTO student VALUES (97, 0, 'Iligan City', '2013-10-18 00:06:21.025', 'O', 'SCS', true, 'Student96', 'MALE', '5ft 4in', '2010-0196', 'Student96', 'BSCS', 'Student96', 50);
INSERT INTO student VALUES (98, 0, 'Iligan City', '2013-10-18 00:06:21.035', 'O', 'SCS', true, 'Student97', 'MALE', '5ft 4in', '2010-0197', 'Student97', 'BSCS', 'Student97', 50);
INSERT INTO student VALUES (99, 0, 'Iligan City', '2013-10-18 00:06:21.046', 'O', 'SCS', true, 'Student98', 'MALE', '5ft 4in', '2010-0198', 'Student98', 'BSCS', 'Student98', 50);
INSERT INTO student VALUES (100, 0, 'Iligan City', '2013-10-18 00:06:21.055', 'O', 'SCS', true, 'Student99', 'MALE', '5ft 4in', '2010-0199', 'Student99', 'BSCS', 'Student99', 50);
INSERT INTO student VALUES (1, 0, 'Iligan City', '2013-10-18 00:06:17.721', 'O', 'SCS', true, 'Student0', 'MALE', '6ft 11in', '2010-0100', 'Student0', 'BSCS', 'Student0', 55);


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

