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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 13);
INSERT INTO public.games VALUES (2, 1, 11);
INSERT INTO public.games VALUES (3, 4, 376);
INSERT INTO public.games VALUES (4, 4, 567);
INSERT INTO public.games VALUES (5, 5, 644);
INSERT INTO public.games VALUES (6, 5, 37);
INSERT INTO public.games VALUES (7, 4, 229);
INSERT INTO public.games VALUES (8, 4, 506);
INSERT INTO public.games VALUES (9, 4, 758);
INSERT INTO public.games VALUES (10, 1, 9);
INSERT INTO public.games VALUES (11, 6, 984);
INSERT INTO public.games VALUES (12, 6, 281);
INSERT INTO public.games VALUES (13, 7, 64);
INSERT INTO public.games VALUES (14, 7, 222);
INSERT INTO public.games VALUES (15, 6, 293);
INSERT INTO public.games VALUES (16, 6, 93);
INSERT INTO public.games VALUES (17, 6, 271);
INSERT INTO public.games VALUES (18, 8, 409);
INSERT INTO public.games VALUES (19, 8, 32);
INSERT INTO public.games VALUES (20, 9, 818);
INSERT INTO public.games VALUES (21, 9, 108);
INSERT INTO public.games VALUES (22, 8, 919);
INSERT INTO public.games VALUES (23, 8, 342);
INSERT INTO public.games VALUES (24, 8, 981);
INSERT INTO public.games VALUES (25, 10, 133);
INSERT INTO public.games VALUES (26, 10, 739);
INSERT INTO public.games VALUES (27, 11, 970);
INSERT INTO public.games VALUES (28, 11, 947);
INSERT INTO public.games VALUES (29, 10, 625);
INSERT INTO public.games VALUES (30, 10, 72);
INSERT INTO public.games VALUES (31, 10, 82);
INSERT INTO public.games VALUES (32, 12, 7);
INSERT INTO public.games VALUES (33, 14, 121);
INSERT INTO public.games VALUES (34, 14, 715);
INSERT INTO public.games VALUES (35, 15, 49);
INSERT INTO public.games VALUES (36, 15, 781);
INSERT INTO public.games VALUES (37, 14, 756);
INSERT INTO public.games VALUES (38, 14, 889);
INSERT INTO public.games VALUES (39, 14, 226);
INSERT INTO public.games VALUES (40, 16, 303);
INSERT INTO public.games VALUES (41, 16, 980);
INSERT INTO public.games VALUES (42, 17, 311);
INSERT INTO public.games VALUES (43, 17, 603);
INSERT INTO public.games VALUES (44, 16, 383);
INSERT INTO public.games VALUES (45, 16, 306);
INSERT INTO public.games VALUES (46, 16, 824);
INSERT INTO public.games VALUES (47, 18, 781);
INSERT INTO public.games VALUES (48, 18, 14);
INSERT INTO public.games VALUES (49, 19, 662);
INSERT INTO public.games VALUES (50, 19, 773);
INSERT INTO public.games VALUES (51, 18, 290);
INSERT INTO public.games VALUES (52, 18, 521);
INSERT INTO public.games VALUES (53, 18, 730);
INSERT INTO public.games VALUES (54, 1, 10);
INSERT INTO public.games VALUES (55, 20, 194);
INSERT INTO public.games VALUES (56, 20, 887);
INSERT INTO public.games VALUES (57, 21, 18);
INSERT INTO public.games VALUES (58, 21, 430);
INSERT INTO public.games VALUES (59, 20, 257);
INSERT INTO public.games VALUES (60, 20, 820);
INSERT INTO public.games VALUES (61, 20, 165);
INSERT INTO public.games VALUES (62, 22, 9);
INSERT INTO public.games VALUES (63, 24, 207);
INSERT INTO public.games VALUES (64, 24, 482);
INSERT INTO public.games VALUES (65, 25, 393);
INSERT INTO public.games VALUES (66, 25, 895);
INSERT INTO public.games VALUES (67, 24, 806);
INSERT INTO public.games VALUES (68, 24, 700);
INSERT INTO public.games VALUES (69, 24, 569);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'John');
INSERT INTO public.users VALUES (2, 'MATT');
INSERT INTO public.users VALUES (3, 'Tea');
INSERT INTO public.users VALUES (4, 'user_1795381481450');
INSERT INTO public.users VALUES (5, 'user_1795381481449');
INSERT INTO public.users VALUES (6, 'user_1795381707821');
INSERT INTO public.users VALUES (7, 'user_1795381707820');
INSERT INTO public.users VALUES (8, 'user_1795382059097');
INSERT INTO public.users VALUES (9, 'user_1795382059096');
INSERT INTO public.users VALUES (10, 'user_1795382293846');
INSERT INTO public.users VALUES (11, 'user_1795382293845');
INSERT INTO public.users VALUES (12, '');
INSERT INTO public.users VALUES (14, 'user_1795382481096');
INSERT INTO public.users VALUES (15, 'user_1795382481095');
INSERT INTO public.users VALUES (16, 'user_1795382499445');
INSERT INTO public.users VALUES (17, 'user_1795382499444');
INSERT INTO public.users VALUES (18, 'user_1795382560698');
INSERT INTO public.users VALUES (19, 'user_1795382560697');
INSERT INTO public.users VALUES (20, 'user_1795383136925');
INSERT INTO public.users VALUES (21, 'user_1795383136924');
INSERT INTO public.users VALUES (22, 'Sam');
INSERT INTO public.users VALUES (23, 'Jake');
INSERT INTO public.users VALUES (24, 'user_1795384894141');
INSERT INTO public.users VALUES (25, 'user_1795384894140');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 69, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

