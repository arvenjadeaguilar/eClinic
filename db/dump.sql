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
-- Name: clinicdb; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE clinicdb (
    id bigint NOT NULL,
    version bigint NOT NULL,
    age character varying(255) NOT NULL,
    birthday character varying(255) NOT NULL,
    blood_type character varying(255) NOT NULL,
    bname character varying(255) NOT NULL,
    c_address character varying(255) NOT NULL,
    college character varying(255) NOT NULL,
    course character varying(255) NOT NULL,
    fage character varying(255) NOT NULL,
    firt_name character varying(255) NOT NULL,
    fname character varying(255) NOT NULL,
    foccupation character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    height character varying(255) NOT NULL,
    id_no character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    mage character varying(255) NOT NULL,
    middle_name character varying(255) NOT NULL,
    mname character varying(255) NOT NULL,
    moccupation character varying(255) NOT NULL,
    postal_code character varying(255) NOT NULL,
    province character varying(255) NOT NULL,
    sname character varying(255) NOT NULL,
    weight character varying(255) NOT NULL
);


ALTER TABLE public.clinicdb OWNER TO postgres;

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

SELECT pg_catalog.setval('hibernate_sequence', 1, false);


--
-- Name: medical_history; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medical_history (
    id bigint NOT NULL,
    version bigint NOT NULL,
    diagnosis character varying(255) NOT NULL,
    id_no character varying(255) NOT NULL
);


ALTER TABLE public.medical_history OWNER TO postgres;

--
-- Data for Name: clinicdb; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: medical_history; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: clinicdb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY clinicdb
    ADD CONSTRAINT clinicdb_pkey PRIMARY KEY (id);


--
-- Name: medical_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY medical_history
    ADD CONSTRAINT medical_history_pkey PRIMARY KEY (id);


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

