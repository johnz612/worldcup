--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (97, 2018, 'Final', 4, 2, 163, 164);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 2, 0, 165, 166);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 2, 1, 164, 166);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 1, 0, 163, 165);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 3, 2, 164, 167);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 2, 0, 166, 168);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 2, 1, 165, 169);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 2, 0, 163, 170);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 2, 1, 166, 171);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 1, 0, 168, 172);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 3, 2, 165, 173);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 2, 0, 169, 174);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 2, 1, 164, 175);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 2, 1, 167, 176);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 2, 1, 170, 177);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 4, 3, 163, 178);
INSERT INTO public.games VALUES (113, 2014, 'Final', 1, 0, 179, 178);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 3, 0, 180, 169);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 1, 0, 178, 180);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 7, 1, 179, 169);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 1, 0, 180, 181);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 1, 0, 178, 165);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 2, 1, 169, 171);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 1, 0, 179, 163);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 2, 1, 169, 182);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 2, 0, 171, 170);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 2, 0, 163, 183);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 2, 1, 179, 184);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 2, 1, 180, 174);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 2, 1, 181, 185);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 1, 0, 178, 172);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 2, 1, 165, 186);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (163, 'France');
INSERT INTO public.teams VALUES (164, 'Croatia');
INSERT INTO public.teams VALUES (165, 'Belgium');
INSERT INTO public.teams VALUES (166, 'England');
INSERT INTO public.teams VALUES (167, 'Russia');
INSERT INTO public.teams VALUES (168, 'Sweden');
INSERT INTO public.teams VALUES (169, 'Brazil');
INSERT INTO public.teams VALUES (170, 'Uruguay');
INSERT INTO public.teams VALUES (171, 'Colombia');
INSERT INTO public.teams VALUES (172, 'Switzerland');
INSERT INTO public.teams VALUES (173, 'Japan');
INSERT INTO public.teams VALUES (174, 'Mexico');
INSERT INTO public.teams VALUES (175, 'Denmark');
INSERT INTO public.teams VALUES (176, 'Spain');
INSERT INTO public.teams VALUES (177, 'Portugal');
INSERT INTO public.teams VALUES (178, 'Argentina');
INSERT INTO public.teams VALUES (179, 'Germany');
INSERT INTO public.teams VALUES (180, 'Netherlands');
INSERT INTO public.teams VALUES (181, 'Costa Rica');
INSERT INTO public.teams VALUES (182, 'Chile');
INSERT INTO public.teams VALUES (183, 'Nigeria');
INSERT INTO public.teams VALUES (184, 'Algeria');
INSERT INTO public.teams VALUES (185, 'Greece');
INSERT INTO public.teams VALUES (186, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 186, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

