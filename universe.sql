--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    star_count integer NOT NULL,
    is_spherical boolean,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: publc; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    galaxy_types character varying(50),
    is_spherical boolean,
    has_life boolean
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean,
    distance_from_earth numeric,
    description text
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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    planet_types character varying(50),
    distance_from_earth numeric,
    description text
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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 1, 7, false, 'One of the most recognizable constellations');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 1, 7, false, 'Contains the Big Dipper asterism');
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 1, 5, false, 'W-shaped constellation in the northern sky');
INSERT INTO public.constellation VALUES (4, 'Scorpius', 1, 18, false, 'Large constellation resembling a scorpion');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0, 'Spiral', false, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2537000, 'Spiral', false, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 3000000, 'Spiral', false, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 13000, 158200, 'Irregular', false, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic', 6500, 206000, 'Irregular', false, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 400, 31000000, 'Spiral', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, true, false, 0.00000122, 'Earth''s only natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, false, 0.0000234, 'Closest moon to Mars, slowly spiraling inward');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, false, 0.0000238, 'Outermost moon of Mars');
INSERT INTO public.moon VALUES (4, 'Io', 5, true, false, 0.000223, 'Most volcanically active body in the solar system');
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, false, 0.000224, 'Subsurface ocean may support life');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, false, 0.000225, 'Largest moon in the solar system');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, false, 0.000226, 'Heavily cratered ancient surface');
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, false, false, 0.000222, 'Small reddish inner moon of Jupiter');
INSERT INTO public.moon VALUES (9, 'Titan', 6, true, false, 0.000746, 'Has a thick atmosphere and liquid methane lakes');
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, true, false, 0.000747, 'Active cryovolcanism; possible subsurface ocean');
INSERT INTO public.moon VALUES (11, 'Mimas', 6, true, false, 0.000745, 'Has a large crater that resembles the Death Star');
INSERT INTO public.moon VALUES (12, 'Rhea', 6, true, false, 0.000748, 'Second largest moon of Saturn');
INSERT INTO public.moon VALUES (13, 'Dione', 6, true, false, 0.000749, 'Has bright cliffs of ice');
INSERT INTO public.moon VALUES (14, 'Tethys', 6, true, false, 0.000750, 'Large impact crater named Odysseus');
INSERT INTO public.moon VALUES (15, 'Miranda', 7, true, false, 0.0000270, 'Dramatic cliffs and varied terrain');
INSERT INTO public.moon VALUES (16, 'Ariel', 7, true, false, 0.0000271, 'Brightest of Uranus''s moons');
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, true, false, 0.0000272, 'Dark ancient surface');
INSERT INTO public.moon VALUES (18, 'Triton', 8, true, false, 0.000000486, 'Only large moon with retrograde orbit');
INSERT INTO public.moon VALUES (19, 'Nereid', 8, false, false, 0.000000487, 'Highly eccentric orbit');
INSERT INTO public.moon VALUES (20, 'Proteus', 8, false, false, 0.000000485, 'Dark and irregularly shaped');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 'Terrestrial', 0.00000488, 'Closest planet to the Sun');
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 'Terrestrial', 0.0000121, 'Hottest planet in the solar system');
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 'Terrestrial', 0, 'Only known planet with life');
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 'Terrestrial', 0.0000234, 'The Red Planet');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 'Gas Giant', 0.000223, 'Largest planet in the solar system');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 'Gas Giant', 0.000746, 'Famous for its ring system');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 'Ice Giant', 0.00000270, 'Rotates on its side');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 'Ice Giant', 0.000000486, 'Farthest planet from the Sun');
INSERT INTO public.planet VALUES (9, 'Proxima b', 7, false, 'Terrestrial', 4.24, 'Potentially habitable exoplanet');
INSERT INTO public.planet VALUES (10, 'Proxima c', 7, false, 'Super-Earth', 4.24, 'Larger companion to Proxima b');
INSERT INTO public.planet VALUES (11, 'Sirius b-1', 2, false, 'Gas Giant', 8.6, 'Hypothetical planet near Sirius');
INSERT INTO public.planet VALUES (12, 'Alpha Cen Bb', 3, false, 'Terrestrial', 4.37, 'Potential rocky exoplanet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, 0.000016, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 242, 8.6, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 5000, 4.37, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 8, 700, true);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 8, 860, true);
INSERT INTO public.star VALUES (6, 'Vega', 1, 455, 25.04, true);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 1, 4850, 4.24, true);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

