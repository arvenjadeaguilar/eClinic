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
-- Name: diag; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE diag (
    id bigint NOT NULL,
    version bigint NOT NULL,
    date timestamp without time zone NOT NULL,
    diagnosis_id character varying(255) NOT NULL,
    id_number character varying(255) NOT NULL
);


ALTER TABLE public.diag OWNER TO postgres;

--
-- Name: diag_diagnosis; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE diag_diagnosis (
    diag_diagnosis_id bigint,
    diagnosis_id bigint
);


ALTER TABLE public.diag_diagnosis OWNER TO postgres;

--
-- Name: diagnosis; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE diagnosis (
    id bigint NOT NULL,
    version bigint NOT NULL,
    diag_num character varying(255) NOT NULL,
    diagnosis character varying(255) NOT NULL
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
-- Name: medical_history; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medical_history (
    id bigint NOT NULL,
    version bigint NOT NULL,
    diagnosis character varying(255) NOT NULL,
    id_no character varying(255) NOT NULL,
    student_id bigint NOT NULL
);


ALTER TABLE public.medical_history OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE student (
    id bigint NOT NULL,
    version bigint NOT NULL,
    address character varying(255) NOT NULL,
    birthday character varying(255) NOT NULL,
    blood_type character varying(255) NOT NULL,
    college character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    height character varying(255) NOT NULL,
    id_number character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    major character varying(255) NOT NULL,
    middle_name character varying(255) NOT NULL,
    weight character varying(255) NOT NULL,
    enrolled boolean NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: diag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: diag_diagnosis; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: medical_history; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO student VALUES (3, 0, 'Iligan City', 'October 2, 1992', 'O', 'SCS', 'Arven', 'MALE', '5.0', '2013-0001', 'Aguilar', 'BSCS', 'Rubin', '50kgs', true);
INSERT INTO student VALUES (4, 0, 'Iligan City', 'October 3, 1992', 'O', 'SCS', 'Jemuel', 'MALE', '5.0', '2013-0002', 'Racsa', 'BSCS', 'Rubin', '50kgs', true);
INSERT INTO student VALUES (5, 0, 'Iligan City', 'October 4, 1992', 'O', 'SCS', 'Jervey', 'MALE', '5.0', '2013-0003', 'Benitez', 'BSCS', 'Rubin', '50kgs', true);
INSERT INTO student VALUES (2, 0, 'Iligan City', 'April 11, 1992', 'O', 'SCS', 'Ken', 'MALE', '5.0', '2009-7603', 'Vilar', 'BSCS', 'Rubin', '50kgs', true);
INSERT INTO student VALUES (1, 0, 'Iligan City', 'October 1, 1992', 'O', 'SCS', 'Carlo', 'MALE', '5.0', '2010-0001', 'Apas', 'BSCS', 'Rubin', '50kgs', true);


--
-- Name: diag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY diag
    ADD CONSTRAINT diag_pkey PRIMARY KEY (id);


--
-- Name: diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (id);


--
-- Name: medical_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY medical_history
    ADD CONSTRAINT medical_history_pkey PRIMARY KEY (id);


--
-- Name: student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: fk26eb84e676784459; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medical_history
    ADD CONSTRAINT fk26eb84e676784459 FOREIGN KEY (student_id) REFERENCES student(id);


--
-- Name: fkcf4da71d1eebdcd9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY diag_diagnosis
    ADD CONSTRAINT fkcf4da71d1eebdcd9 FOREIGN KEY (diagnosis_id) REFERENCES diagnosis(id);


--
-- Name: fkcf4da71d9ae84cc9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY diag_diagnosis
    ADD CONSTRAINT fkcf4da71d9ae84cc9 FOREIGN KEY (diag_diagnosis_id) REFERENCES diag(id);


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

