--
-- PostgreSQL database dump
--

-- Dumped from database version 13.20
-- Dumped by pg_dump version 13.20

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

DROP TABLE public.flags_countries;
DROP TABLE public.flags;
DROP TABLE public.countries;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    countryname text,
    area integer,
    continent integer
);


--
-- Name: flags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flags (
    id integer NOT NULL,
    countryname text,
    flagimage text,
    colours text,
    red integer,
    green integer,
    blue integer,
    gold integer,
    white integer,
    black integer,
    orange integer,
    mainhue text
);


--
-- Name: flags_countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flags_countries (
    country_id integer,
    flag_id integer
);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, countryname, area, continent) FROM stdin;
\.


--
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flags (id, countryname, flagimage, colours, red, green, blue, gold, white, black, orange, mainhue) FROM stdin;
\.


--
-- Data for Name: flags_countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flags_countries (country_id, flag_id) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

