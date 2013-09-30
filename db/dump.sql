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

SELECT pg_catalog.setval('hibernate_sequence', 5, true);


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



--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO student VALUES (1, 0, 'Iligan City', '2013-09-30 15:21:58.186', 'O', 'SCS', true, 'Carlo', 'MALE', '5ft 0in', '2009-0001', 'Apas', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (3, 0, 'Iligan City', '2013-09-30 15:21:58.416', 'O', 'SCS', true, 'Arven', 'MALE', '5ft 0in', '2009-0002', 'Aguilar', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (4, 0, 'Iligan City', '2013-09-30 15:21:58.43', 'O', 'SCS', true, 'Jemuel', 'MALE', '5ft 0in', '2009-0003', 'Racsa', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (5, 0, 'Iligan City', '2013-09-30 15:21:58.441', 'O', 'SCS', true, 'Jervey', 'MALE', '5ft 0in', '2009-0004', 'Benitez', 'BSCS', 'Rubin', '50kgs');
INSERT INTO student VALUES (2, 0, 'Iligan City', '2013-09-30 15:21:58.404', 'O', 'SCS', true, 'Ken', 'MALE', '5ft 0in', '2009-7603', 'Vilar', 'BSCS', 'Rubin', '52kgs');


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

