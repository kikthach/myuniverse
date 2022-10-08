--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_type character varying(20),
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    diameter integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: persons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.persons (
    persons_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL
);


ALTER TABLE public.persons OWNER TO freecodecamp;

--
-- Name: persons_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.persons_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persons_person_id_seq OWNER TO freecodecamp;

--
-- Name: persons_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.persons_person_id_seq OWNED BY public.persons.persons_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    diameter_in_miles integer,
    orbits_days numeric(6,2),
    days_on_earth numeric(5,2),
    number_of_moon integer NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    has_life boolean,
    is_spherical boolean,
    name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    diameter integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: persons persons_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons ALTER COLUMN persons_id SET DEFAULT nextval('public.persons_person_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('ga_ty1', 'galaxy1', 1, 10, NULL);
INSERT INTO public.galaxy VALUES ('ga_t21', 'galaxy2', 2, 11, NULL);
INSERT INTO public.galaxy VALUES ('ga_ty3', 'galaxy3', 3, 12, 'almost died');
INSERT INTO public.galaxy VALUES ('ga_ty4', 'galaxy4', 43, 13, NULL);
INSERT INTO public.galaxy VALUES ('ga_ty5', 'galaxy5', 5, 13, 'new born');
INSERT INTO public.galaxy VALUES ('ga_ty6', 'galaxy6', 6, 15, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (60, 'moon1', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (61, 'moon2', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (62, 'moon3', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (63, 'moon4', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (64, 'moon5', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (65, 'moon6', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (66, 'moon7', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (67, 'moon8', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (87, 'moon9', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (88, 'moon10', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (89, 'moon11', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (90, 'moon12', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (91, 'moon13', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (92, 'moon14', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (93, 'moon15', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (94, 'moon16', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (95, 'moon17', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (96, 'moon18', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (69, 'moon19', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (70, 'moon20', NULL, NULL, NULL);


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.persons VALUES (1, NULL, 30);
INSERT INTO public.persons VALUES (100, NULL, 31);
INSERT INTO public.persons VALUES (101, NULL, 31);
INSERT INTO public.persons VALUES (102, NULL, 31);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 30, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 31, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 108, 32, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 33, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 34, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 35, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 36, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 37, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 38, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 39, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 40, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 41, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 42, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 44, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 45, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, 100, 46, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 10, 1, 50, 'woohoo');
INSERT INTO public.star VALUES ('star2', 11, 1, 500, 'yahoo');
INSERT INTO public.star VALUES ('star3', 12, 2, 67, NULL);
INSERT INTO public.star VALUES ('star4', 13, 3, 89, NULL);
INSERT INTO public.star VALUES ('star5', 14, 43, 98, NULL);
INSERT INTO public.star VALUES ('star6', 15, 5, 98, NULL);
INSERT INTO public.star VALUES ('star7', 16, 6, 100, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: persons_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.persons_person_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: persons persons_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_id PRIMARY KEY (persons_id);


--
-- Name: persons persons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_name_key UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

