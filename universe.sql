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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(80) NOT NULL,
    descrp text,
    has_life boolean,
    age_my numeric(10,2),
    asteroid_type character varying(100) NOT NULL,
    earth_distance integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(80) NOT NULL,
    descrp text,
    has_life boolean,
    age_my numeric(10,2),
    galaxy_type character varying(100) NOT NULL,
    earth_distance integer NOT NULL
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
    name character varying(80) NOT NULL,
    descrp text,
    has_life boolean,
    age_my numeric(10,2),
    moon_type character varying(100) NOT NULL,
    earth_distance integer NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(80) NOT NULL,
    descrp text,
    has_life boolean,
    age_my numeric(10,2),
    planet_type character varying(100) NOT NULL,
    earth_distance integer NOT NULL,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying(80) NOT NULL,
    descrp text,
    has_life boolean,
    age_my numeric(10,2),
    star_type character varying(100) NOT NULL,
    earth_distance integer NOT NULL,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'ceres', 'biggest in asteroid belt', false, 4699.97, 'dwarf one', 414000000, 1);
INSERT INTO public.asteroid VALUES (2, 'vesta', '2nd biggest in asteroid belt', false, 3499.97, 'proto one', 237000000, 1);
INSERT INTO public.asteroid VALUES (3, 'eros', 'near earth asteroid belt', false, 4600.21, 'amor', 204000000, 2);
INSERT INTO public.asteroid VALUES (4, 'bennu', 'carbonaceous asteroid belt', false, 4200.21, 'apollo', 96, 3);
INSERT INTO public.asteroid VALUES (5, 'itokawa', 'near earth asteroid belt', false, 5000.87, 'apollo', 133, 4);
INSERT INTO public.asteroid VALUES (6, 'vesta21', 'another big one asteroid', false, 4700.87, 'tropo mass', 236884477, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'root galaxy', false, 13000.40, 'spiral', 111);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'nearest to milky way', false, 14000.70, 'spiral', 2400000);
INSERT INTO public.galaxy VALUES (3, 'messier', 'within virgo cluster', false, 67000.24, 'elliptical', 66000000);
INSERT INTO public.galaxy VALUES (4, 'sombrero', 'dumb of dust', false, 2800.84, 'spiral', 27000000);
INSERT INTO public.galaxy VALUES (5, 'centaurus', 'has active galactic nucleus', false, 12000.36, 'elliptical', 12000000);
INSERT INTO public.galaxy VALUES (6, 'whirlpool', 'has visible spiral patterns', false, 21000.61, 'spiral', 21000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'mysterious from centuries', false, 4700.21, 'terrestrial', 0, 1);
INSERT INTO public.moon VALUES (2, 'luna', 'earth natural sattelite', false, 4499.97, 'regular', 3844001, 1);
INSERT INTO public.moon VALUES (3, 'phobos', 'its mars moon', false, 3600.20, 'terrestrial', 6000, 2);
INSERT INTO public.moon VALUES (4, 'deimos', 'its mars moon', false, 3700.40, 'terrestrial', 14000, 2);
INSERT INTO public.moon VALUES (5, 'ganymede', 'biggest in solar system', false, 4600.20, 'galilean', 1070400, 3);
INSERT INTO public.moon VALUES (6, 'europa', 'its jupiter moon', false, 4600.20, 'regular', 1670900, 3);
INSERT INTO public.moon VALUES (7, 'callisto', 'its jupiter moon', false, 4600.20, 'regular', 1882400, 3);
INSERT INTO public.moon VALUES (8, 'titan', 'its saturn biggest moon', false, 4200.20, 'titan', 126000, 4);
INSERT INTO public.moon VALUES (9, 'enceladus', 'its saturn moon', false, 4200.70, 'regular', 237887, 4);
INSERT INTO public.moon VALUES (10, 'nereid', 'its neptune moon', false, 5000.70, 'irregular', 237887, 5);
INSERT INTO public.moon VALUES (11, 'ariel', 'its uranus moon', false, 4900.70, 'regular', 191020, 6);
INSERT INTO public.moon VALUES (12, 'umbriel', 'its uranus moon', false, 4900.70, 'regular', 266300, 6);
INSERT INTO public.moon VALUES (13, 'charon', 'its pluto biggest moon', false, 4300.87, 'regular', 19600, 7);
INSERT INTO public.moon VALUES (14, 'miranda', 'its uranus moon', false, 4900.87, 'regular', 130000, 6);
INSERT INTO public.moon VALUES (15, 'dione', 'its saturn moon', false, 4300.87, 'regular', 377400, 8);
INSERT INTO public.moon VALUES (16, 'rhea', 'its saturn moon', false, 4300.70, 'regular', 527040, 8);
INSERT INTO public.moon VALUES (17, 'laptus', 'its saturn moon', false, 4300.70, 'regular', 3561300, 8);
INSERT INTO public.moon VALUES (18, 'oberon', 'its uranus moon', false, 4100.57, 'regular', 583520, 6);
INSERT INTO public.moon VALUES (19, 'titania', 'its uranus moon', false, 4100.59, 'regular', 436000, 6);
INSERT INTO public.moon VALUES (20, 'triton', 'its neptune moon', false, 5000.59, 'regular', 354760, 5);
INSERT INTO public.moon VALUES (21, 'moon21', 'its pluto junk', false, 4000.11, 'regular', 11341, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'home planet', true, 4497.70, 'terrestrial', 0, 1);
INSERT INTO public.planet VALUES (2, 'jupiter', 'biggest in solar system', false, 4600.40, 'gas giant', 484, 2);
INSERT INTO public.planet VALUES (3, 'neptune', 'no 8th in solar system', false, 4997.87, 'icy giant', 2772, 3);
INSERT INTO public.planet VALUES (4, 'venus', 'no 2 in solar system', false, 4300.47, 'terrestrial', 400, 1);
INSERT INTO public.planet VALUES (5, 'mercury', 'very close to sun', false, 3800.41, 'terrestrial', 77, 1);
INSERT INTO public.planet VALUES (6, 'pluto', 'is dwarf in kuiper belt', false, 4200.41, 'dwarf marked', 3670000, 6);
INSERT INTO public.planet VALUES (7, 'saturn', 'ringed mass', false, 4200.71, 'just gasy', 890, 2);
INSERT INTO public.planet VALUES (8, 'uranus', 'no 7 in solar system', false, 4887.57, 'just icy', 2700, 3);
INSERT INTO public.planet VALUES (9, 'mars', 'just reddy', false, 3497.41, 'terrestrial', 224, 1);
INSERT INTO public.planet VALUES (10, 'planet10', 'just junky', false, 3100.41, 'terrian', 200, 2);
INSERT INTO public.planet VALUES (11, 'planet11', 'just simple', false, 7100.41, 'gasy and icy', 1400, 4);
INSERT INTO public.planet VALUES (12, 'planet12', 'just fancy', false, 8700.21, 'icy mass too far', 61400, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'hot star', false, 4600.80, 'main sequence', 1, 1);
INSERT INTO public.star VALUES (2, 'sirius', 'very bright in the night', false, 249.97, 'main sequence', 9, 1);
INSERT INTO public.star VALUES (3, 'proxima centauri', 'sun neighbour', false, 4400.97, 'red dwarf', 4, 1);
INSERT INTO public.star VALUES (4, 'betelgeuse', 'red BIG giant in orion', false, 8497.29, 'very giant', 641, 2);
INSERT INTO public.star VALUES (5, 'polaris', 'north star in Ursa Minor', false, 2200.47, 'main sequence', 433, 2);
INSERT INTO public.star VALUES (6, 'vega', 'bright star in lyra', false, 4497.70, 'main sequence', 241, 2);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: asteroid fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

