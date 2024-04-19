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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    player character varying(30) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 11, 583);
INSERT INTO public.games VALUES (2, 2, 498, 497);
INSERT INTO public.games VALUES (3, 2, 832, 831);
INSERT INTO public.games VALUES (4, 3, 615, 614);
INSERT INTO public.games VALUES (5, 3, 135, 134);
INSERT INTO public.games VALUES (6, 2, 912, 909);
INSERT INTO public.games VALUES (7, 2, 450, 448);
INSERT INTO public.games VALUES (8, 2, 715, 714);
INSERT INTO public.games VALUES (9, 4, 810, 809);
INSERT INTO public.games VALUES (10, 4, 267, 266);
INSERT INTO public.games VALUES (11, 5, 697, 696);
INSERT INTO public.games VALUES (12, 5, 572, 571);
INSERT INTO public.games VALUES (13, 4, 410, 407);
INSERT INTO public.games VALUES (14, 4, 210, 208);
INSERT INTO public.games VALUES (15, 4, 779, 778);
INSERT INTO public.games VALUES (16, 6, 491, 490);
INSERT INTO public.games VALUES (17, 6, 968, 967);
INSERT INTO public.games VALUES (18, 7, 814, 813);
INSERT INTO public.games VALUES (19, 7, 751, 750);
INSERT INTO public.games VALUES (20, 6, 263, 260);
INSERT INTO public.games VALUES (21, 6, 654, 652);
INSERT INTO public.games VALUES (22, 6, 880, 879);
INSERT INTO public.games VALUES (23, 8, 695, 694);
INSERT INTO public.games VALUES (24, 8, 316, 315);
INSERT INTO public.games VALUES (25, 9, 76, 75);
INSERT INTO public.games VALUES (26, 9, 874, 873);
INSERT INTO public.games VALUES (27, 8, 637, 634);
INSERT INTO public.games VALUES (28, 8, 344, 342);
INSERT INTO public.games VALUES (29, 8, 81, 80);
INSERT INTO public.games VALUES (30, 10, 66, 65);
INSERT INTO public.games VALUES (31, 10, 149, 148);
INSERT INTO public.games VALUES (32, 11, 959, 958);
INSERT INTO public.games VALUES (33, 11, 723, 722);
INSERT INTO public.games VALUES (34, 10, 113, 110);
INSERT INTO public.games VALUES (35, 10, 879, 877);
INSERT INTO public.games VALUES (36, 10, 901, 900);
INSERT INTO public.games VALUES (37, 12, 495, 494);
INSERT INTO public.games VALUES (38, 12, 96, 95);
INSERT INTO public.games VALUES (39, 13, 156, 155);
INSERT INTO public.games VALUES (40, 13, 255, 254);
INSERT INTO public.games VALUES (41, 12, 372, 369);
INSERT INTO public.games VALUES (42, 12, 139, 137);
INSERT INTO public.games VALUES (43, 12, 932, 931);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Yannick');
INSERT INTO public.players VALUES (2, 'user_1713563849565');
INSERT INTO public.players VALUES (3, 'user_1713563849564');
INSERT INTO public.players VALUES (4, 'user_1713564889053');
INSERT INTO public.players VALUES (5, 'user_1713564889052');
INSERT INTO public.players VALUES (6, 'user_1713564982462');
INSERT INTO public.players VALUES (7, 'user_1713564982461');
INSERT INTO public.players VALUES (8, 'user_1713565104055');
INSERT INTO public.players VALUES (9, 'user_1713565104054');
INSERT INTO public.players VALUES (10, 'user_1713565480073');
INSERT INTO public.players VALUES (11, 'user_1713565480072');
INSERT INTO public.players VALUES (12, 'user_1713565631103');
INSERT INTO public.players VALUES (13, 'user_1713565631102');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 13, true);


--
-- PostgreSQL database dump complete
--

