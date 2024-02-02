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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 74, 75, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (34, 76, 77, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (35, 75, 77, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (36, 74, 76, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (37, 75, 78, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (38, 77, 79, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (39, 76, 80, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 74, 81, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 77, 82, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 79, 83, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (43, 76, 84, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 80, 85, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 75, 86, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 78, 87, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 81, 88, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 74, 89, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 90, 89, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (50, 91, 80, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (51, 89, 91, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (52, 90, 80, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (53, 91, 92, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 89, 76, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (55, 80, 82, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (56, 90, 74, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (57, 80, 93, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 82, 81, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 74, 94, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 90, 95, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 91, 85, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 92, 96, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 89, 83, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 76, 97, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (74, 'France');
INSERT INTO public.teams VALUES (75, 'Croatia');
INSERT INTO public.teams VALUES (76, 'Belgium');
INSERT INTO public.teams VALUES (77, 'England');
INSERT INTO public.teams VALUES (78, 'Russia');
INSERT INTO public.teams VALUES (79, 'Sweden');
INSERT INTO public.teams VALUES (80, 'Brazil');
INSERT INTO public.teams VALUES (81, 'Uruguay');
INSERT INTO public.teams VALUES (82, 'Colombia');
INSERT INTO public.teams VALUES (83, 'Switzerland');
INSERT INTO public.teams VALUES (84, 'Japan');
INSERT INTO public.teams VALUES (85, 'Mexico');
INSERT INTO public.teams VALUES (86, 'Denmark');
INSERT INTO public.teams VALUES (87, 'Spain');
INSERT INTO public.teams VALUES (88, 'Portugal');
INSERT INTO public.teams VALUES (89, 'Argentina');
INSERT INTO public.teams VALUES (90, 'Germany');
INSERT INTO public.teams VALUES (91, 'Netherlands');
INSERT INTO public.teams VALUES (92, 'Costa Rica');
INSERT INTO public.teams VALUES (93, 'Chile');
INSERT INTO public.teams VALUES (94, 'Nigeria');
INSERT INTO public.teams VALUES (95, 'Algeria');
INSERT INTO public.teams VALUES (96, 'Greece');
INSERT INTO public.teams VALUES (97, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 97, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

