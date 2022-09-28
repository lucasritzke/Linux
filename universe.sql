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
    name character varying(30) NOT NULL,
    type character varying(30),
    radius integer,
    asteroid_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    facts text,
    distance_from_sun integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30),
    constellation character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age integer,
    distance_from_planet integer NOT NULL,
    radius numeric,
    facts text,
    orbits_the_sun boolean DEFAULT false,
    star_of_orbit character varying(30),
    name character varying(30),
    bigger_than_earth boolean DEFAULT false,
    planet_of_orbit character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    star_of_orbit character varying(30),
    distance_from_sun_km integer NOT NULL,
    radius numeric,
    facts text,
    planet_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    facts text,
    distance_from_sun integer,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('Ryugu', 'Cg', NULL, 1);
INSERT INTO public.asteroid VALUES ('Bennu', 'B', NULL, 3);
INSERT INTO public.asteroid VALUES ('Nereus', 'Xe', NULL, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 3, 1, 'Andromeda', 'Andromeda');
INSERT INTO public.galaxy VALUES (NULL, 430, 2, 'Antennae', 'Corvus');
INSERT INTO public.galaxy VALUES (NULL, 17, 4, 'Back Eye', 'Coma Berenices');
INSERT INTO public.galaxy VALUES (NULL, 200, 3, 'Backward', 'Centaurus');
INSERT INTO public.galaxy VALUES (NULL, 24, 5, 'Bode', 'Ursa Major');
INSERT INTO public.galaxy VALUES (NULL, 201, 6, 'Butterfly', 'Virgo');
INSERT INTO public.galaxy VALUES (NULL, 665, 7, 'Condor', 'Pavo');
INSERT INTO public.galaxy VALUES (NULL, 52, 8, 'Eye of Sauron', 'Canes Venatici');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, NULL, 9380, NULL, NULL, false, 'Sun', 'Phobos', false, 'Mars');
INSERT INTO public.moon VALUES (3, NULL, 23460, NULL, NULL, false, 'Sun', 'Deimos', false, 'Mars');
INSERT INTO public.moon VALUES (4, NULL, 0, NULL, NULL, false, 'Sun', 'Dysnomia', false, 'Eris');
INSERT INTO public.moon VALUES (5, NULL, 0, NULL, NULL, false, 'Sun', 'Hi_iaka', false, 'Haumea');
INSERT INTO public.moon VALUES (1, 5, 384, 6.378, NULL, false, 'Sun', 'Luna', false, 'Earth');
INSERT INTO public.moon VALUES (6, NULL, 0, NULL, NULL, false, NULL, 'Lysithea', false, 'Jupter');
INSERT INTO public.moon VALUES (7, NULL, 421600, NULL, NULL, false, NULL, 'Io', false, 'Jupter');
INSERT INTO public.moon VALUES (8, NULL, 670900, NULL, NULL, false, NULL, 'Europa', false, 'Jupter');
INSERT INTO public.moon VALUES (9, NULL, 4154354, NULL, NULL, false, NULL, 'Ganymede', false, 'Jupter');
INSERT INTO public.moon VALUES (10, NULL, 545465465, NULL, NULL, false, NULL, 'Pasiphae', false, 'Jupiter');
INSERT INTO public.moon VALUES (11, NULL, 11094000, NULL, NULL, false, NULL, 'Leda', false, 'Jupter');
INSERT INTO public.moon VALUES (12, NULL, 52500, NULL, NULL, false, NULL, 'Despina', false, 'Neptune');
INSERT INTO public.moon VALUES (13, NULL, 62500, NULL, NULL, false, NULL, 'Galatea', false, 'Neptune');
INSERT INTO public.moon VALUES (14, NULL, 94000, NULL, NULL, false, NULL, 'Halimede', false, 'Neptune');
INSERT INTO public.moon VALUES (15, NULL, 105283, NULL, NULL, false, NULL, 'Hippocamp', false, 'Neptune');
INSERT INTO public.moon VALUES (16, NULL, 0, NULL, NULL, false, NULL, 'Laomedeia', false, 'Neptune');
INSERT INTO public.moon VALUES (17, NULL, 73600, NULL, NULL, false, NULL, 'Larissa', false, 'Neptune');
INSERT INTO public.moon VALUES (18, NULL, 48000, NULL, NULL, false, NULL, 'Naiad', false, 'Neptune');
INSERT INTO public.moon VALUES (19, NULL, 5513400, NULL, NULL, false, NULL, 'Nereid', false, 'Neptune');
INSERT INTO public.moon VALUES (20, NULL, 9740, NULL, NULL, false, NULL, 'Neso', false, 'Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, 108110000, NULL, NULL, 2, 'Venus');
INSERT INTO public.planet VALUES (NULL, 149570000, NULL, NULL, 3, 'Earth');
INSERT INTO public.planet VALUES (NULL, 227840000, NULL, NULL, 4, 'Mars');
INSERT INTO public.planet VALUES (NULL, 778140000, NULL, NULL, 5, 'Jupter');
INSERT INTO public.planet VALUES (NULL, 142700000, NULL, NULL, 6, 'Saturn');
INSERT INTO public.planet VALUES ('Sun', 57950000, NULL, NULL, 1, 'Mercury');
INSERT INTO public.planet VALUES (NULL, 287030000, NULL, NULL, 7, 'Uranus');
INSERT INTO public.planet VALUES (NULL, 44999000, NULL, NULL, 8, 'Neptune');
INSERT INTO public.planet VALUES (NULL, 7500000, NULL, NULL, 9, 'B');
INSERT INTO public.planet VALUES ('Proxima Centauri', 8, NULL, NULL, 10, 'C');
INSERT INTO public.planet VALUES ('Lalande', 8, NULL, NULL, 11, 'Planet b');
INSERT INTO public.planet VALUES (NULL, 8, NULL, NULL, 12, 'Planet c');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, 1, 'Sun', 'N/A');
INSERT INTO public.star VALUES (NULL, NULL, 2, 'Proxima Centauri', 'Cen');
INSERT INTO public.star VALUES (NULL, NULL, 4, 'Toliman', 'Cen');
INSERT INTO public.star VALUES (NULL, NULL, 3, 'Rigil Kentaurus', 'Cen');
INSERT INTO public.star VALUES (NULL, NULL, 5, 'Wolf', 'Leo');
INSERT INTO public.star VALUES (NULL, NULL, 6, 'Alpha Canis Majoris', 'CMa');
INSERT INTO public.star VALUES (NULL, NULL, 7, 'Ross', 'And');


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_distance_from_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_sun_key UNIQUE (distance_from_sun);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_star_of_orbit_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_of_orbit_key UNIQUE (star_of_orbit);


--
-- Name: star star_distance_from_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_sun_key UNIQUE (distance_from_sun);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_star_of_orbit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_of_orbit_fkey FOREIGN KEY (star_of_orbit) REFERENCES public.planet(star_of_orbit);


--
-- Name: star star_distance_from_sun_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_sun_fkey FOREIGN KEY (distance_from_sun) REFERENCES public.galaxy(distance_from_sun);


--
-- PostgreSQL database dump complete
--