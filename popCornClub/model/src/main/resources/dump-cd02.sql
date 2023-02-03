--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-02-03 10:14:22

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

DROP DATABASE cd02;
--
-- TOC entry 3102 (class 1262 OID 16387)
-- Name: cd02; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cd02 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect cd02

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 197 (class 1259 OID 70402)
-- Name: casting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.casting (
    id_casting integer NOT NULL,
    casting_name character varying(45) NOT NULL,
    casting_role character varying(45)
);


--
-- TOC entry 198 (class 1259 OID 70406)
-- Name: casting_has_movie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.casting_has_movie (
    id_casting integer NOT NULL,
    id_movie integer NOT NULL,
    id_casting_has_movie integer NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 95887)
-- Name: casting_has_movie_id_casting_has_movie_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.casting_has_movie_id_casting_has_movie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 220
-- Name: casting_has_movie_id_casting_has_movie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.casting_has_movie_id_casting_has_movie_seq OWNED BY public.casting_has_movie.id_casting_has_movie;


--
-- TOC entry 196 (class 1259 OID 70400)
-- Name: casting_id_casting_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.casting_id_casting_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 196
-- Name: casting_id_casting_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.casting_id_casting_seq OWNED BY public.casting.id_casting;


--
-- TOC entry 200 (class 1259 OID 70411)
-- Name: category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.category (
    id_category integer NOT NULL,
    category_name character varying(45) NOT NULL
);


--
-- TOC entry 201 (class 1259 OID 70415)
-- Name: category_has_movie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.category_has_movie (
    id_category integer NOT NULL,
    id_movie integer NOT NULL,
    id_category_has_movie integer NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 95895)
-- Name: category_has_movie_id_category_has_movie_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.category_has_movie_id_category_has_movie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 221
-- Name: category_has_movie_id_category_has_movie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.category_has_movie_id_category_has_movie_seq OWNED BY public.category_has_movie.id_category_has_movie;


--
-- TOC entry 199 (class 1259 OID 70409)
-- Name: category_id_category_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.category_id_category_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 199
-- Name: category_id_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.category_id_category_seq OWNED BY public.category.id_category;


--
-- TOC entry 202 (class 1259 OID 70418)
-- Name: favorite_casting_has_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favorite_casting_has_user (
    id_casting integer NOT NULL,
    id_user integer,
    id_favorite_casting_has_user integer NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 95903)
-- Name: favorite_casting_has_user_id_favorite_casting_has_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.favorite_casting_has_user_id_favorite_casting_has_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 222
-- Name: favorite_casting_has_user_id_favorite_casting_has_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.favorite_casting_has_user_id_favorite_casting_has_user_seq OWNED BY public.favorite_casting_has_user.id_favorite_casting_has_user;


--
-- TOC entry 203 (class 1259 OID 70421)
-- Name: favorite_genre_has_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favorite_genre_has_user (
    id_genre integer NOT NULL,
    id_user integer,
    id_favorite_genre_has_user integer NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 95911)
-- Name: favorite_genre_has_user_id_favorite_genre_has_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.favorite_genre_has_user_id_favorite_genre_has_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 223
-- Name: favorite_genre_has_user_id_favorite_genre_has_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.favorite_genre_has_user_id_favorite_genre_has_user_seq OWNED BY public.favorite_genre_has_user.id_favorite_genre_has_user;


--
-- TOC entry 204 (class 1259 OID 70424)
-- Name: favorite_movie_has_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favorite_movie_has_user (
    id_movie integer NOT NULL,
    id_user integer,
    id_favorite_movie_has_user integer NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 95919)
-- Name: favorite_movie_has_user_id_favorite_movie_has_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.favorite_movie_has_user_id_favorite_movie_has_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 224
-- Name: favorite_movie_has_user_id_favorite_movie_has_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.favorite_movie_has_user_id_favorite_movie_has_user_seq OWNED BY public.favorite_movie_has_user.id_favorite_movie_has_user;


--
-- TOC entry 206 (class 1259 OID 70429)
-- Name: genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genre (
    id_genre integer NOT NULL,
    genre_value character varying(45) NOT NULL
);


--
-- TOC entry 207 (class 1259 OID 70433)
-- Name: genre_has_movie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genre_has_movie (
    id_genre integer NOT NULL,
    id_movie integer NOT NULL,
    id_genre_has_movie integer NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 95928)
-- Name: genre_has_movie_id_genre_has_movie_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genre_has_movie_id_genre_has_movie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 225
-- Name: genre_has_movie_id_genre_has_movie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genre_has_movie_id_genre_has_movie_seq OWNED BY public.genre_has_movie.id_genre_has_movie;


--
-- TOC entry 205 (class 1259 OID 70427)
-- Name: genre_id_genre_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genre_id_genre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 205
-- Name: genre_id_genre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genre_id_genre_seq OWNED BY public.genre.id_genre;


--
-- TOC entry 209 (class 1259 OID 70438)
-- Name: movie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.movie (
    id_movie integer NOT NULL,
    movie_name character varying(80) NOT NULL,
    duration integer NOT NULL,
    critic character varying(500),
    description character varying(1000) NOT NULL,
    poster character varying(90),
    premiere date,
    trailer character varying(45),
    movie_year integer NOT NULL,
    media_rating double precision
);


--
-- TOC entry 208 (class 1259 OID 70436)
-- Name: movie_id_movie_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.movie_id_movie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 208
-- Name: movie_id_movie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.movie_id_movie_seq OWNED BY public.movie.id_movie;


--
-- TOC entry 213 (class 1259 OID 70535)
-- Name: nationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nationality (
    id_nationality integer NOT NULL,
    nationality_name character varying(45) NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 70562)
-- Name: nationality_has_movie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nationality_has_movie (
    id_nationality integer NOT NULL,
    id_movie integer NOT NULL,
    id_nationality_has_movie integer NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 95936)
-- Name: nationality_has_movie_id_nationality_has_movie_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nationality_has_movie_id_nationality_has_movie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 226
-- Name: nationality_has_movie_id_nationality_has_movie_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nationality_has_movie_id_nationality_has_movie_seq OWNED BY public.nationality_has_movie.id_nationality_has_movie;


--
-- TOC entry 212 (class 1259 OID 70533)
-- Name: nationality_id_nationality_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nationality_id_nationality_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 212
-- Name: nationality_id_nationality_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nationality_id_nationality_seq OWNED BY public.nationality.id_nationality;


--
-- TOC entry 210 (class 1259 OID 70451)
-- Name: rating; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rating (
    id_movie integer NOT NULL,
    rating_value real,
    id_user integer,
    id_rating integer NOT NULL
);


--
-- TOC entry 228 (class 1259 OID 95954)
-- Name: rating_id_rating_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rating_id_rating_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 228
-- Name: rating_id_rating_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rating_id_rating_seq OWNED BY public.rating.id_rating;


--
-- TOC entry 218 (class 1259 OID 70714)
-- Name: trole; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole (
    id_rolename integer NOT NULL,
    rolename character varying(255),
    xmlclientpermission character varying(10485760)
);


--
-- TOC entry 215 (class 1259 OID 70695)
-- Name: tuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser (
    user_ character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    email character varying(50),
    nif character varying(50),
    userblocked timestamp(6) without time zone,
    lastpasswordupdate timestamp(6) without time zone,
    firstlogin boolean,
    id_user integer NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 70773)
-- Name: tuser_id_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tuser_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 219
-- Name: tuser_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tuser_id_user_seq OWNED BY public.tuser.id_user;


--
-- TOC entry 216 (class 1259 OID 70705)
-- Name: tuser_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(10485760)
);


--
-- TOC entry 217 (class 1259 OID 70711)
-- Name: tuser_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_role (
    id_user_role integer NOT NULL,
    id_rolename integer NOT NULL,
    user_ character varying(50)
);


--
-- TOC entry 211 (class 1259 OID 70454)
-- Name: wishlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wishlist (
    id_movie integer NOT NULL,
    id_user integer,
    id_wishlist integer NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 95944)
-- Name: wishlist_id_wishlist_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wishlist_id_wishlist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 227
-- Name: wishlist_id_wishlist_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wishlist_id_wishlist_seq OWNED BY public.wishlist.id_wishlist;


--
-- TOC entry 2874 (class 2604 OID 70405)
-- Name: casting id_casting; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.casting ALTER COLUMN id_casting SET DEFAULT nextval('public.casting_id_casting_seq'::regclass);


--
-- TOC entry 2875 (class 2604 OID 95889)
-- Name: casting_has_movie id_casting_has_movie; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.casting_has_movie ALTER COLUMN id_casting_has_movie SET DEFAULT nextval('public.casting_has_movie_id_casting_has_movie_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 70414)
-- Name: category id_category; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category ALTER COLUMN id_category SET DEFAULT nextval('public.category_id_category_seq'::regclass);


--
-- TOC entry 2877 (class 2604 OID 95897)
-- Name: category_has_movie id_category_has_movie; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category_has_movie ALTER COLUMN id_category_has_movie SET DEFAULT nextval('public.category_has_movie_id_category_has_movie_seq'::regclass);


--
-- TOC entry 2878 (class 2604 OID 95905)
-- Name: favorite_casting_has_user id_favorite_casting_has_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_casting_has_user ALTER COLUMN id_favorite_casting_has_user SET DEFAULT nextval('public.favorite_casting_has_user_id_favorite_casting_has_user_seq'::regclass);


--
-- TOC entry 2879 (class 2604 OID 95913)
-- Name: favorite_genre_has_user id_favorite_genre_has_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_genre_has_user ALTER COLUMN id_favorite_genre_has_user SET DEFAULT nextval('public.favorite_genre_has_user_id_favorite_genre_has_user_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 95921)
-- Name: favorite_movie_has_user id_favorite_movie_has_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_movie_has_user ALTER COLUMN id_favorite_movie_has_user SET DEFAULT nextval('public.favorite_movie_has_user_id_favorite_movie_has_user_seq'::regclass);


--
-- TOC entry 2881 (class 2604 OID 70432)
-- Name: genre id_genre; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre ALTER COLUMN id_genre SET DEFAULT nextval('public.genre_id_genre_seq'::regclass);


--
-- TOC entry 2882 (class 2604 OID 95930)
-- Name: genre_has_movie id_genre_has_movie; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre_has_movie ALTER COLUMN id_genre_has_movie SET DEFAULT nextval('public.genre_has_movie_id_genre_has_movie_seq'::regclass);


--
-- TOC entry 2883 (class 2604 OID 70441)
-- Name: movie id_movie; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.movie ALTER COLUMN id_movie SET DEFAULT nextval('public.movie_id_movie_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 70538)
-- Name: nationality id_nationality; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nationality ALTER COLUMN id_nationality SET DEFAULT nextval('public.nationality_id_nationality_seq'::regclass);


--
-- TOC entry 2887 (class 2604 OID 95938)
-- Name: nationality_has_movie id_nationality_has_movie; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nationality_has_movie ALTER COLUMN id_nationality_has_movie SET DEFAULT nextval('public.nationality_has_movie_id_nationality_has_movie_seq'::regclass);


--
-- TOC entry 2884 (class 2604 OID 95956)
-- Name: rating id_rating; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rating ALTER COLUMN id_rating SET DEFAULT nextval('public.rating_id_rating_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 70775)
-- Name: tuser id_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser ALTER COLUMN id_user SET DEFAULT nextval('public.tuser_id_user_seq'::regclass);


--
-- TOC entry 2885 (class 2604 OID 95946)
-- Name: wishlist id_wishlist; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wishlist ALTER COLUMN id_wishlist SET DEFAULT nextval('public.wishlist_id_wishlist_seq'::regclass);


--
-- TOC entry 3065 (class 0 OID 70402)
-- Dependencies: 197
-- Data for Name: casting; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.casting VALUES (1, 'Brad Pitt', 'Actor');
INSERT INTO public.casting VALUES (2, 'Leonardo DiCaprio', 'Actor');
INSERT INTO public.casting VALUES (3, 'Mel Gibson', 'Actor');
INSERT INTO public.casting VALUES (4, 'Helena Bonham Carter', 'Actor');
INSERT INTO public.casting VALUES (5, 'Meat Loaf', 'Actor');
INSERT INTO public.casting VALUES (6, 'Jared Leto', 'Actor');
INSERT INTO public.casting VALUES (7, 'Tim Roth', 'Actor');
INSERT INTO public.casting VALUES (8, 'Harvey Keitel', 'Actor');
INSERT INTO public.casting VALUES (9, 'Chris Penn', 'Actor');
INSERT INTO public.casting VALUES (10, 'Steve Buscemi', 'Actor');
INSERT INTO public.casting VALUES (11, 'Thora Birch', 'Actor');
INSERT INTO public.casting VALUES (12, 'Scarlett Johansson', 'Actor');
INSERT INTO public.casting VALUES (13, 'Brad Renfro', 'Actor');
INSERT INTO public.casting VALUES (14, 'Edward Norton', 'Actor');
INSERT INTO public.casting VALUES (15, 'Terry Zwigoff', 'Director');
INSERT INTO public.casting VALUES (16, 'Quentin Tarantino', 'Director');
INSERT INTO public.casting VALUES (17, 'Mel Gibson', 'Director');
INSERT INTO public.casting VALUES (18, 'Martin Scorsesse', 'Director');
INSERT INTO public.casting VALUES (19, 'David Fincher', 'Director');
INSERT INTO public.casting VALUES (20, 'Marlon Brando', 'Actor');
INSERT INTO public.casting VALUES (21, 'Al Pacino', 'Actor');
INSERT INTO public.casting VALUES (22, 'Robert Duvall', 'Actor');
INSERT INTO public.casting VALUES (23, 'Jennifer Connelly', 'Actor');
INSERT INTO public.casting VALUES (24, 'Darren Aronofsky', 'Director');
INSERT INTO public.casting VALUES (25, 'Ladj Ly', 'Director');
INSERT INTO public.casting VALUES (26, 'Damien Bonnard', 'Actor');
INSERT INTO public.casting VALUES (27, 'Hugh Jackman', 'Actor');
INSERT INTO public.casting VALUES (28, 'Morgan Freeman', 'Actor');
INSERT INTO public.casting VALUES (29, 'Kevin Spacey', 'Actor');
INSERT INTO public.casting VALUES (30, 'Randall Wallace', 'Director');
INSERT INTO public.casting VALUES (31, 'Gérard Depardieu', 'Actor');
INSERT INTO public.casting VALUES (32, 'Jeremy Irons', 'Actor');
INSERT INTO public.casting VALUES (33, 'John Malkovich', 'Actor');
INSERT INTO public.casting VALUES (34, 'Hayao Miyazaki', 'Director');
INSERT INTO public.casting VALUES (35, 'Francis Ford Coppola', 'Director');
INSERT INTO public.casting VALUES (36, 'Russel Crowe', 'Actor');
INSERT INTO public.casting VALUES (37, 'Tom Hooper', 'Director');
INSERT INTO public.casting VALUES (38, 'Adam Elliot', 'Director');
INSERT INTO public.casting VALUES (39, 'Michael Ballhaus', 'Director');
INSERT INTO public.casting VALUES (40, 'Ray Liotta', 'Actor');
INSERT INTO public.casting VALUES (41, 'Robert De Niro', 'Actor');
INSERT INTO public.casting VALUES (42, 'Joe Pesci', 'Actor');
INSERT INTO public.casting VALUES (43, 'Lorraine Bracco', 'Actor');
INSERT INTO public.casting VALUES (44, 'Akira Kurosawa', 'Director');
INSERT INTO public.casting VALUES (45, 'Toshirô Mifune', 'Actor');
INSERT INTO public.casting VALUES (46, 'Takashi Shimura', 'Actor');
INSERT INTO public.casting VALUES (47, 'John Travolta', 'Actor');
INSERT INTO public.casting VALUES (48, 'Samuel L. Jackson', 'Actor');
INSERT INTO public.casting VALUES (49, 'Uma Thurman', 'Actor');
INSERT INTO public.casting VALUES (50, 'Rodney Rothman', 'Director');
INSERT INTO public.casting VALUES (51, 'Peter Ramsey', 'Director');
INSERT INTO public.casting VALUES (52, 'Bob Persichetti', 'Director');
INSERT INTO public.casting VALUES (53, 'John Lee Hancock', 'Director');
INSERT INTO public.casting VALUES (54, 'Kevin Costner', 'Actor');
INSERT INTO public.casting VALUES (55, ' Woody Harrelson', 'Actor');


--
-- TOC entry 3066 (class 0 OID 70406)
-- Dependencies: 198
-- Data for Name: casting_has_movie; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.casting_has_movie VALUES (14, 1, 1);
INSERT INTO public.casting_has_movie VALUES (1, 1, 2);
INSERT INTO public.casting_has_movie VALUES (4, 1, 3);
INSERT INTO public.casting_has_movie VALUES (5, 1, 4);
INSERT INTO public.casting_has_movie VALUES (6, 1, 5);
INSERT INTO public.casting_has_movie VALUES (11, 2, 6);
INSERT INTO public.casting_has_movie VALUES (12, 2, 7);
INSERT INTO public.casting_has_movie VALUES (10, 2, 8);
INSERT INTO public.casting_has_movie VALUES (13, 2, 9);
INSERT INTO public.casting_has_movie VALUES (7, 3, 10);
INSERT INTO public.casting_has_movie VALUES (8, 3, 11);
INSERT INTO public.casting_has_movie VALUES (9, 3, 12);
INSERT INTO public.casting_has_movie VALUES (10, 3, 13);
INSERT INTO public.casting_has_movie VALUES (19, 2, 14);
INSERT INTO public.casting_has_movie VALUES (18, 3, 15);
INSERT INTO public.casting_has_movie VALUES (15, 1, 16);
INSERT INTO public.casting_has_movie VALUES (20, 4, 17);
INSERT INTO public.casting_has_movie VALUES (21, 4, 18);
INSERT INTO public.casting_has_movie VALUES (22, 4, 19);
INSERT INTO public.casting_has_movie VALUES (36, 4, 20);
INSERT INTO public.casting_has_movie VALUES (6, 5, 21);
INSERT INTO public.casting_has_movie VALUES (23, 5, 22);
INSERT INTO public.casting_has_movie VALUES (24, 5, 23);
INSERT INTO public.casting_has_movie VALUES (25, 6, 24);
INSERT INTO public.casting_has_movie VALUES (26, 6, 25);
INSERT INTO public.casting_has_movie VALUES (30, 7, 26);
INSERT INTO public.casting_has_movie VALUES (1, 7, 27);
INSERT INTO public.casting_has_movie VALUES (15, 7, 28);
INSERT INTO public.casting_has_movie VALUES (32, 8, 29);
INSERT INTO public.casting_has_movie VALUES (33, 8, 30);
INSERT INTO public.casting_has_movie VALUES (35, 8, 31);
INSERT INTO public.casting_has_movie VALUES (2, 8, 33);
INSERT INTO public.casting_has_movie VALUES (34, 9, 34);
INSERT INTO public.casting_has_movie VALUES (34, 10, 35);
INSERT INTO public.casting_has_movie VALUES (34, 11, 36);
INSERT INTO public.casting_has_movie VALUES (30, 8, 32);
INSERT INTO public.casting_has_movie VALUES (39, 12, 37);
INSERT INTO public.casting_has_movie VALUES (40, 12, 38);
INSERT INTO public.casting_has_movie VALUES (41, 12, 39);
INSERT INTO public.casting_has_movie VALUES (42, 12, 40);
INSERT INTO public.casting_has_movie VALUES (43, 12, 41);
INSERT INTO public.casting_has_movie VALUES (44, 13, 42);
INSERT INTO public.casting_has_movie VALUES (45, 13, 43);
INSERT INTO public.casting_has_movie VALUES (46, 13, 44);
INSERT INTO public.casting_has_movie VALUES (16, 14, 45);
INSERT INTO public.casting_has_movie VALUES (47, 14, 46);
INSERT INTO public.casting_has_movie VALUES (48, 14, 47);
INSERT INTO public.casting_has_movie VALUES (49, 14, 48);
INSERT INTO public.casting_has_movie VALUES (50, 15, 49);
INSERT INTO public.casting_has_movie VALUES (51, 15, 50);
INSERT INTO public.casting_has_movie VALUES (52, 15, 51);
INSERT INTO public.casting_has_movie VALUES (53, 16, 52);
INSERT INTO public.casting_has_movie VALUES (54, 16, 53);
INSERT INTO public.casting_has_movie VALUES (55, 16, 54);


--
-- TOC entry 3068 (class 0 OID 70411)
-- Dependencies: 200
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.category VALUES (1, 'Novedades');
INSERT INTO public.category VALUES (2, 'Lo más visto');
INSERT INTO public.category VALUES (3, 'Cartelera');
INSERT INTO public.category VALUES (4, 'Películas para ver en familia');
INSERT INTO public.category VALUES (5, 'Basadas en hechos reales');
INSERT INTO public.category VALUES (6, 'Aclamadas por la crítica');
INSERT INTO public.category VALUES (7, 'Otra');
INSERT INTO public.category VALUES (8, 'Cine de culto');
INSERT INTO public.category VALUES (9, 'Cine independiente');


--
-- TOC entry 3069 (class 0 OID 70415)
-- Dependencies: 201
-- Data for Name: category_has_movie; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.category_has_movie VALUES (8, 1, 1);
INSERT INTO public.category_has_movie VALUES (9, 2, 2);
INSERT INTO public.category_has_movie VALUES (2, 4, 3);
INSERT INTO public.category_has_movie VALUES (8, 5, 5);
INSERT INTO public.category_has_movie VALUES (8, 7, 6);
INSERT INTO public.category_has_movie VALUES (7, 8, 7);
INSERT INTO public.category_has_movie VALUES (8, 9, 8);
INSERT INTO public.category_has_movie VALUES (7, 10, 9);
INSERT INTO public.category_has_movie VALUES (6, 3, 4);
INSERT INTO public.category_has_movie VALUES (7, 6, 10);


--
-- TOC entry 3070 (class 0 OID 70418)
-- Dependencies: 202
-- Data for Name: favorite_casting_has_user; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3071 (class 0 OID 70421)
-- Dependencies: 203
-- Data for Name: favorite_genre_has_user; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3072 (class 0 OID 70424)
-- Dependencies: 204
-- Data for Name: favorite_movie_has_user; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3074 (class 0 OID 70429)
-- Dependencies: 206
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genre VALUES (1, 'Terror');
INSERT INTO public.genre VALUES (2, 'Romance');
INSERT INTO public.genre VALUES (3, 'Comedia');
INSERT INTO public.genre VALUES (5, 'Infantil');
INSERT INTO public.genre VALUES (6, 'Animación');
INSERT INTO public.genre VALUES (7, 'Película de culto');
INSERT INTO public.genre VALUES (8, 'Drama');
INSERT INTO public.genre VALUES (9, 'Thriller');
INSERT INTO public.genre VALUES (10, 'Comedia negra');
INSERT INTO public.genre VALUES (11, 'Cine independiente');
INSERT INTO public.genre VALUES (12, 'Adolescente');
INSERT INTO public.genre VALUES (13, 'Crimen');
INSERT INTO public.genre VALUES (4, 'Fantasía');
INSERT INTO public.genre VALUES (14, 'Acción');
INSERT INTO public.genre VALUES (15, 'Aventuras');
INSERT INTO public.genre VALUES (16, 'Mafia');


--
-- TOC entry 3075 (class 0 OID 70433)
-- Dependencies: 207
-- Data for Name: genre_has_movie; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genre_has_movie VALUES (7, 1, 1);
INSERT INTO public.genre_has_movie VALUES (8, 1, 2);
INSERT INTO public.genre_has_movie VALUES (9, 1, 3);
INSERT INTO public.genre_has_movie VALUES (3, 2, 4);
INSERT INTO public.genre_has_movie VALUES (11, 2, 5);
INSERT INTO public.genre_has_movie VALUES (12, 2, 6);
INSERT INTO public.genre_has_movie VALUES (9, 3, 7);
INSERT INTO public.genre_has_movie VALUES (13, 3, 8);
INSERT INTO public.genre_has_movie VALUES (13, 4, 10);
INSERT INTO public.genre_has_movie VALUES (8, 4, 11);
INSERT INTO public.genre_has_movie VALUES (8, 5, 12);
INSERT INTO public.genre_has_movie VALUES (7, 5, 13);
INSERT INTO public.genre_has_movie VALUES (8, 6, 14);
INSERT INTO public.genre_has_movie VALUES (9, 6, 15);
INSERT INTO public.genre_has_movie VALUES (7, 7, 16);
INSERT INTO public.genre_has_movie VALUES (9, 7, 17);
INSERT INTO public.genre_has_movie VALUES (8, 8, 18);
INSERT INTO public.genre_has_movie VALUES (6, 9, 19);
INSERT INTO public.genre_has_movie VALUES (6, 10, 20);
INSERT INTO public.genre_has_movie VALUES (4, 10, 21);
INSERT INTO public.genre_has_movie VALUES (4, 9, 22);
INSERT INTO public.genre_has_movie VALUES (6, 11, 23);
INSERT INTO public.genre_has_movie VALUES (4, 11, 24);
INSERT INTO public.genre_has_movie VALUES (14, 3, 9);
INSERT INTO public.genre_has_movie VALUES (14, 8, 25);
INSERT INTO public.genre_has_movie VALUES (15, 8, 26);
INSERT INTO public.genre_has_movie VALUES (16, 12, 27);
INSERT INTO public.genre_has_movie VALUES (8, 12, 28);
INSERT INTO public.genre_has_movie VALUES (13, 12, 29);
INSERT INTO public.genre_has_movie VALUES (16, 4, 30);
INSERT INTO public.genre_has_movie VALUES (7, 13, 31);
INSERT INTO public.genre_has_movie VALUES (8, 13, 32);
INSERT INTO public.genre_has_movie VALUES (15, 13, 33);
INSERT INTO public.genre_has_movie VALUES (9, 14, 34);
INSERT INTO public.genre_has_movie VALUES (13, 14, 35);
INSERT INTO public.genre_has_movie VALUES (3, 15, 36);
INSERT INTO public.genre_has_movie VALUES (12, 15, 37);
INSERT INTO public.genre_has_movie VALUES (6, 15, 38);
INSERT INTO public.genre_has_movie VALUES (14, 15, 39);
INSERT INTO public.genre_has_movie VALUES (4, 15, 40);
INSERT INTO public.genre_has_movie VALUES (9, 16, 41);
INSERT INTO public.genre_has_movie VALUES (13, 16, 42);


--
-- TOC entry 3077 (class 0 OID 70438)
-- Dependencies: 209
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.movie VALUES (5, 'Réquiem por un sueño', 102, NULL, 'Harry (Jared Leto) y su madre (Ellen Burstyn) tienen sueños muy distintos: ella está permanentemente a dieta esperando el día en que pueda participar en su concurso televisivo preferido; la ambición de Harry y su novia Marion (Jennifer Connelly) es hacerse ricos vendiendo droga y utilizar las ganancias para abrir un negocio propio, pero nunca tienen el dinero suficiente para ello. A pesar de todo, Harry y Marion no se resignan y harán lo inimaginable para conseguir la vida que anhelan.', 'https://images-na.ssl-images-amazon.com/images/I/71IXw%2BNCiXL._AC_SY679_.jpg', '2000-03-23', NULL, 2000, 7.29999999999999982);
INSERT INTO public.movie VALUES (2, 'Ghost World', 111, NULL, 'Enid y Rebecca, dos rebeldes adolescentes amigas desde hace años, no saben cómo pasar el rato ahora que ya han acabado los estudios de secundaria. Pese a sus tímidos esfuerzos por encontrar trabajo, a menudo acaban deambulando por las calles, escrutando el comportamiento de la gente que les rodea. Atraídas por los personajes excéntricos, suelen mirar los anuncios personales del periódico local. Enid llama al autor del anuncio más lamentable, un hombre solitario de cuarenta años, coleccionista de discos, y le invita a una cita a ciegas.', 'https://live.staticflickr.com/131/349104146_bb4eb07616_z.jpg', '2001-07-20', NULL, 2001, 6);
INSERT INTO public.movie VALUES (7, 'Seven', 127, NULL, 'El veterano teniente Somerset (Morgan Freeman), del departamento de homicidios, está a punto de jubilarse y ser reemplazado por el ambicioso e impulsivo detective David Mills (Brad Pitt). Ambos tendrán que colaborar en la resolución de una serie de asesinatos cometidos por un psicópata que toma como base la relación de los siete pecados capitales: gula, pereza, soberbia, avaricia, envidia, lujuria e ira. Los cuerpos de las víctimas, sobre los que el asesino se ensaña de manera impúdica, se convertirán para los policías en un enigma que les obligará a viajar al horror y la barbarie más absoluta.', 'https://images-na.ssl-images-amazon.com/images/I/61wp69HpViL._AC_.jpg', '1995-01-10', NULL, 1995, 7);
INSERT INTO public.movie VALUES (4, 'El Padrino', 175, NULL, 'América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York. Tiene cuatro hijos: Connie (Talia Shire), el impulsivo Sonny (James Caan), el pusilánime Fredo (John Cazale) y Michael (Al Pacino), que no quiere saber nada de los negocios de su padre. Cuando Corleone, en contra de los consejos de Il consigliere Tom Hagen (Robert Duvall), se niega a participar en el negocio de las drogas, el jefe de otra banda ordena su asesinato. Empieza entonces una violenta y cruenta guerra entre las familias mafiosas', 'https://images-na.ssl-images-amazon.com/images/I/413gj5Kf0cL._AC_.jpg', '1972-03-05', NULL, 1972, 8.80000000000000071);
INSERT INTO public.movie VALUES (6, 'Los Miserables', 152, NULL, 'El expresidiario Jean Valjean (Hugh Jackman) es perseguido durante décadas por el despiadado policía Javert (Russell Crowe). Cuando Valjean decide hacerse cargo de Cosette, la pequeña hija de Fantine (Anne Hathaway), sus vidas cambiarán para siempre. Adaptación cinematográfica del famoso musical Les miserables de Claude-Michel Schönberg y Alain Boublil, basado a su vez en la novela homónima de Victor Hugo.', 'https://images-na.ssl-images-amazon.com/images/I/51uB4hR8B0L._AC_.jpg', '2012-12-25', NULL, 2012, 7.09999999999999964);
INSERT INTO public.movie VALUES (8, 'El hombre de la máscara de hierro', 132, NULL, 'Mientras Francia se muere de hambre, el Rey Luis XIV (Leonardo DiCaprio) mantiene un régimen de terror. Sólo "los tres mosqueteros" (Jeremy lrons, John Malkovich y Gérard Depardieu) podrán enfrentarse a esta situación. Su misión consiste en liberar a un misterioso prisionero que está encerrado en La Bastilla y que es el único que puede salvar a Francia.', 'https://i.pinimg.com/originals/38/5e/b8/385eb822ee28827c07b694ba1d0a00c7.jpg', '1998-04-10', NULL, 1998, 6.5);
INSERT INTO public.movie VALUES (9, 'El viaje de Chihiro', 124, NULL, 'Chihiro es una niña de diez años que viaja en coche con sus padres. Después de atravesar un túnel, llegan a un mundo fantástico, en el que no hay lugar para los seres humanos, sólo para los dioses de primera y segunda clase. Cuando descubre que sus padres han sido convertidos en cerdos, Chihiro se siente muy sola y asustada.', 'https://images-na.ssl-images-amazon.com/images/I/51gP3Oeb0gL._AC_.jpg', '2001-10-25', NULL, 2001, 7.29999999999999982);
INSERT INTO public.movie VALUES (10, 'El castillo ambulante', 119, NULL, 'Narra la historia de Sophie, una joven sobre la que pesa una horrible maldición que le confiere el aspecto de una anciana. Sophie decide pedir ayuda al mago Howl, que vive en un castillo ambulante, pero tal vez sea Howl quien necesite la ayuda de Sophie.', 'https://images-na.ssl-images-amazon.com/images/I/91bzNykBdKL._AC_SY879_.jpg', '2004-09-05', NULL, 2004, 6.90000000000000036);
INSERT INTO public.movie VALUES (3, 'Reservoir Dogs', 99, NULL, 'Una banda organizada es contratada para atracar una empresa y llevarse unos diamantes. Sin embargo, antes de que suene la alarma, la policía ya está allí. Algunos miembros de la banda mueren en el enfrentamiento con las fuerzas del orden, y los demás se reúnen en el lugar convenido.', 'https://live.staticflickr.com/3544/5778838966_87dbd770ff_b.jpg', '1992-10-14', NULL, 1992, 8.09999999999999964);
INSERT INTO public.movie VALUES (1, 'El club de la lucha (Fight Club)', 139, NULL, 'Un joven hastiado de su gris y monótona vida lucha contra el insomnio. En un viaje en avión conoce a un carismático vendedor de jabón que sostiene una teoría muy particular: el perfeccionismo es cosa de gentes débiles; sólo la autodestrucción hace que la vida merezca la pena. Ambos deciden entonces fundar un club secreto de lucha, donde poder descargar sus frustaciones y su ira, que tendrá un éxito arrollador.', 'https://i.pinimg.com/originals/83/89/7e/83897e857be104531da8a2e20e85c5cd.jpg', '1999-11-05', NULL, 1999, 8);
INSERT INTO public.movie VALUES (11, 'La princesa Mononoke', 133, '', 'Con el fin de curar la herida que le ha causado un jabalí enloquecido, el joven Ashitaka sale en busca del dios Ciervo, pues sólo él puede liberarlo del sortilegio. A lo largo de su periplo descubre cómo los animales del bosque luchan contra hombres que están dispuestos a destruir la Naturaleza. ', 'https://image.posterlounge.es/images/big/1878303.jpg', '2000-04-07', '', 1997, 8);
INSERT INTO public.movie VALUES (13, 'Los siete samuráis', 205, '', 'Japón, Siglo XVI. Una aldea de campesinos indefensos es repetidamente atacada y saqueada por una banda de forajidos. Aconsejados por el anciano de la aldea, unos aldeanos acuden a la ciudad con el objetivo de contratar a un grupo de samuráis para protegerlos. A pesar de que el único salario es comida y techo, varios samuráis se van incorporando uno a uno al singular grupo que finalmente se dirige a la aldea. (FILMAFFINITY)', 'https://static.posters.cz/image/750/poster/los-siete-samurais-teaser-i29198.jpg', '1967-04-20', '', 1954, 8.30000000000000071);
INSERT INTO public.movie VALUES (14, 'Pulp Fiction', 153, '', 'Jules y Vincent, dos asesinos a sueldo con no demasiadas luces, trabajan para el gángster Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su atractiva mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe. Cuando llega la hora de trabajar, ambos deben ponerse "manos a la obra". Su misión: recuperar un misterioso maletín. ', 'https://es.web.img3.acsta.net/r_1280_720/medias/nmedia/18/67/90/28/20142426.jpg', '1995-01-13', '', 1994, 7);
INSERT INTO public.movie VALUES (15, 'Spider-Man: Un nuevo universo ', 117, '', 'En un universo paralelo donde Peter Parker ha muerto, un joven de secundaria llamado Miles Morales es el nuevo Spider-Man. Sin embargo, cuando el líder mafioso Wilson Fisk (a.k.a Kingpin) construye el "Super Colisionador" trae a una versión alternativa de Peter Parker que tratará de enseñarle a Miles como ser un mejor Spider-Man. Pero no será el único Spider Man en entrar a este universo, 4 versiones alternas de Spidey aparecerán y buscarán regresar a su universo antes de que toda la realidad colapse.', 'https://i.imgur.com/GgQPhet.jpg', '2018-12-01', '', 2018, 6.40000000000000036);
INSERT INTO public.movie VALUES (16, 'Emboscada final ', 132, '', 'Año 1934. Frank Hamer (Kevin Costner) y su sufrido compañero Manny Gault (Harrelson) son dos Ranger de Texas que sufrieron el reinado de robos de Bonnie & Clyde. Ambos fueron asignados como investigadores especiales de un caso que trajo de cabeza a banqueros y policías por igual, y que se llevó por delante la vida hasta de trece agentes de la ley ante la incredulidad del pueblo.', 'https://es.web.img2.acsta.net/pictures/19/02/20/16/24/0199378.jpg', '2019-03-10', '', 2019, 7);
INSERT INTO public.movie VALUES (12, 'Uno de los nuestros (Godfellas)', 148, '', 'Henry Hill, hijo de padre irlandés y madre siciliana, vive en Brooklyn y se siente fascinado por la vida que llevan los gángsters de su barrio, donde la mayoría de los vecinos son inmigrantes. Paul Cicero, el patriarca de la familia Pauline, es el protector del barrio. A los trece años, Henry decide abandonar la escuela y entrar a formar parte de la organización mafiosa como chico de los recados; muy pronto se gana la confianza de sus jefes, gracias a lo cual irá subiendo de categoría. (FILMAFFINITY)', 'https://images-na.ssl-images-amazon.com/images/I/51vLLaqn8dL._SY445_.jpg', '1990-10-19', '', 1990, 8);


--
-- TOC entry 3081 (class 0 OID 70535)
-- Dependencies: 213
-- Data for Name: nationality; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nationality VALUES (1, 'Estados Unidos');
INSERT INTO public.nationality VALUES (2, 'Mexico');
INSERT INTO public.nationality VALUES (3, 'Reino Unido');
INSERT INTO public.nationality VALUES (4, 'Japón');
INSERT INTO public.nationality VALUES (5, 'Alemania');
INSERT INTO public.nationality VALUES (6, 'Francia');
INSERT INTO public.nationality VALUES (7, 'Italia');
INSERT INTO public.nationality VALUES (8, 'China');
INSERT INTO public.nationality VALUES (9, 'Argentina');
INSERT INTO public.nationality VALUES (10, 'Canadá');
INSERT INTO public.nationality VALUES (12, 'Guatemala');
INSERT INTO public.nationality VALUES (13, 'Paraguay');
INSERT INTO public.nationality VALUES (11, 'Best Korea');
INSERT INTO public.nationality VALUES (15, 'Cuba');


--
-- TOC entry 3082 (class 0 OID 70562)
-- Dependencies: 214
-- Data for Name: nationality_has_movie; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nationality_has_movie VALUES (1, 1, 1);
INSERT INTO public.nationality_has_movie VALUES (1, 2, 2);
INSERT INTO public.nationality_has_movie VALUES (1, 3, 3);
INSERT INTO public.nationality_has_movie VALUES (1, 4, 4);
INSERT INTO public.nationality_has_movie VALUES (1, 5, 5);
INSERT INTO public.nationality_has_movie VALUES (3, 6, 6);
INSERT INTO public.nationality_has_movie VALUES (1, 7, 7);
INSERT INTO public.nationality_has_movie VALUES (1, 8, 8);
INSERT INTO public.nationality_has_movie VALUES (4, 9, 9);
INSERT INTO public.nationality_has_movie VALUES (4, 10, 10);
INSERT INTO public.nationality_has_movie VALUES (4, 11, 11);
INSERT INTO public.nationality_has_movie VALUES (1, 12, 12);
INSERT INTO public.nationality_has_movie VALUES (4, 13, 13);
INSERT INTO public.nationality_has_movie VALUES (1, 14, 14);
INSERT INTO public.nationality_has_movie VALUES (1, 15, 15);
INSERT INTO public.nationality_has_movie VALUES (1, 16, 16);


--
-- TOC entry 3078 (class 0 OID 70451)
-- Dependencies: 210
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.rating VALUES (10, 9, 1, 11);
INSERT INTO public.rating VALUES (11, 7, 4, 10);
INSERT INTO public.rating VALUES (1, 5, 1, 14);
INSERT INTO public.rating VALUES (12, 8, 1, 17);
INSERT INTO public.rating VALUES (4, 9, 1, 18);
INSERT INTO public.rating VALUES (14, 7, 1, 21);
INSERT INTO public.rating VALUES (16, 7, 4, 22);


--
-- TOC entry 3086 (class 0 OID 70714)
-- Dependencies: 218
-- Data for Name: trole; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3083 (class 0 OID 70695)
-- Dependencies: 215
-- Data for Name: tuser; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser VALUES ('demo', 'demouser', 'demo', 'demo', 'mail@mail.com', '44460713B', NULL, NULL, NULL, 1);
INSERT INTO public.tuser VALUES ('user1', 'passuser1', 'prueba', 'prueba', 'prueba@mail.com', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.tuser VALUES ('try', 'abc123.', 'Sergio', 'Vecino', 'sergio@mail.es', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.tuser VALUES ('loqueseaseguramente', 'abc123.', 'Sergio', 'Vecino', 'sergio@mail.es', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.tuser VALUES ('ese', '1234', 'usuario', 'mismos', 'ese@gmail.com', NULL, NULL, NULL, NULL, 23);
INSERT INTO public.tuser VALUES ('usuario', '1234', 'usuario', 'perez', 'usuario@gmail.com', NULL, NULL, NULL, NULL, 50);


--
-- TOC entry 3084 (class 0 OID 70705)
-- Dependencies: 216
-- Data for Name: tuser_preference; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3085 (class 0 OID 70711)
-- Dependencies: 217
-- Data for Name: tuser_role; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3079 (class 0 OID 70454)
-- Dependencies: 211
-- Data for Name: wishlist; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.wishlist VALUES (1, 4, 55);
INSERT INTO public.wishlist VALUES (4, 1, 56);
INSERT INTO public.wishlist VALUES (6, 4, 105);
INSERT INTO public.wishlist VALUES (7, 1, 2);
INSERT INTO public.wishlist VALUES (3, 1, 3);
INSERT INTO public.wishlist VALUES (14, 1, 5);
INSERT INTO public.wishlist VALUES (16, 4, 6);


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 220
-- Name: casting_has_movie_id_casting_has_movie_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.casting_has_movie_id_casting_has_movie_seq', 54, true);


--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 196
-- Name: casting_id_casting_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.casting_id_casting_seq', 38, true);


--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 221
-- Name: category_has_movie_id_category_has_movie_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.category_has_movie_id_category_has_movie_seq', 10, true);


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 199
-- Name: category_id_category_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.category_id_category_seq', 22, true);


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 222
-- Name: favorite_casting_has_user_id_favorite_casting_has_user_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.favorite_casting_has_user_id_favorite_casting_has_user_seq', 1, false);


--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 223
-- Name: favorite_genre_has_user_id_favorite_genre_has_user_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.favorite_genre_has_user_id_favorite_genre_has_user_seq', 1, false);


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 224
-- Name: favorite_movie_has_user_id_favorite_movie_has_user_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.favorite_movie_has_user_id_favorite_movie_has_user_seq', 1, false);


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 225
-- Name: genre_has_movie_id_genre_has_movie_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genre_has_movie_id_genre_has_movie_seq', 42, true);


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 205
-- Name: genre_id_genre_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genre_id_genre_seq', 17, true);


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 208
-- Name: movie_id_movie_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.movie_id_movie_seq', 11, true);


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 226
-- Name: nationality_has_movie_id_nationality_has_movie_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nationality_has_movie_id_nationality_has_movie_seq', 10, true);


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 212
-- Name: nationality_id_nationality_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nationality_id_nationality_seq', 15, true);


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 228
-- Name: rating_id_rating_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.rating_id_rating_seq', 22, true);


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 219
-- Name: tuser_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuser_id_user_seq', 56, true);


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 227
-- Name: wishlist_id_wishlist_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wishlist_id_wishlist_seq', 6, true);


--
-- TOC entry 2890 (class 2606 OID 70463)
-- Name: casting actor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.casting
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_casting);


--
-- TOC entry 2892 (class 2606 OID 95894)
-- Name: casting_has_movie casting_has_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.casting_has_movie
    ADD CONSTRAINT casting_has_movie_pkey PRIMARY KEY (id_casting_has_movie);


--
-- TOC entry 2896 (class 2606 OID 95902)
-- Name: category_has_movie category_has_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category_has_movie
    ADD CONSTRAINT category_has_movie_pkey PRIMARY KEY (id_category_has_movie);


--
-- TOC entry 2894 (class 2606 OID 70465)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_category);


--
-- TOC entry 2898 (class 2606 OID 95910)
-- Name: favorite_casting_has_user favorite_casting_has_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_casting_has_user
    ADD CONSTRAINT favorite_casting_has_user_pkey PRIMARY KEY (id_favorite_casting_has_user);


--
-- TOC entry 2900 (class 2606 OID 95918)
-- Name: favorite_genre_has_user favorite_genre_has_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_genre_has_user
    ADD CONSTRAINT favorite_genre_has_user_pkey PRIMARY KEY (id_favorite_genre_has_user);


--
-- TOC entry 2902 (class 2606 OID 95926)
-- Name: favorite_movie_has_user favorite_movie_has_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_movie_has_user
    ADD CONSTRAINT favorite_movie_has_user_pkey PRIMARY KEY (id_favorite_movie_has_user);


--
-- TOC entry 2906 (class 2606 OID 95935)
-- Name: genre_has_movie genre_has_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre_has_movie
    ADD CONSTRAINT genre_has_movie_pkey PRIMARY KEY (id_genre_has_movie);


--
-- TOC entry 2904 (class 2606 OID 70467)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id_genre);


--
-- TOC entry 2908 (class 2606 OID 70469)
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id_movie);


--
-- TOC entry 2916 (class 2606 OID 95943)
-- Name: nationality_has_movie nationality_has_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nationality_has_movie
    ADD CONSTRAINT nationality_has_movie_pkey PRIMARY KEY (id_nationality_has_movie);


--
-- TOC entry 2914 (class 2606 OID 70571)
-- Name: nationality nationality_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nationality
    ADD CONSTRAINT nationality_pkey PRIMARY KEY (id_nationality);


--
-- TOC entry 2910 (class 2606 OID 95961)
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id_rating);


--
-- TOC entry 2918 (class 2606 OID 70777)
-- Name: tuser tuser_id_user_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_id_user_key UNIQUE (id_user);


--
-- TOC entry 2920 (class 2606 OID 70699)
-- Name: tuser tuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_pkey PRIMARY KEY (user_);


--
-- TOC entry 2922 (class 2606 OID 70746)
-- Name: tuser_role tuser_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_pkey PRIMARY KEY (id_rolename);


--
-- TOC entry 2912 (class 2606 OID 95951)
-- Name: wishlist wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (id_wishlist);


--
-- TOC entry 2923 (class 2606 OID 70474)
-- Name: casting_has_movie actor_has_movie_id_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.casting_has_movie
    ADD CONSTRAINT actor_has_movie_id_actor_fkey FOREIGN KEY (id_casting) REFERENCES public.casting(id_casting);


--
-- TOC entry 2924 (class 2606 OID 70479)
-- Name: casting_has_movie actor_has_movie_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.casting_has_movie
    ADD CONSTRAINT actor_has_movie_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2925 (class 2606 OID 70484)
-- Name: category_has_movie category_has_movie_id_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category_has_movie
    ADD CONSTRAINT category_has_movie_id_category_fkey FOREIGN KEY (id_category) REFERENCES public.category(id_category);


--
-- TOC entry 2926 (class 2606 OID 70489)
-- Name: category_has_movie category_has_movie_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.category_has_movie
    ADD CONSTRAINT category_has_movie_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2928 (class 2606 OID 70494)
-- Name: favorite_casting_has_user favorite_actor_has_user_id_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_casting_has_user
    ADD CONSTRAINT favorite_actor_has_user_id_actor_fkey FOREIGN KEY (id_casting) REFERENCES public.casting(id_casting);


--
-- TOC entry 2927 (class 2606 OID 70837)
-- Name: favorite_casting_has_user favorite_casting_has_user_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_casting_has_user
    ADD CONSTRAINT favorite_casting_has_user_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.tuser(id_user);


--
-- TOC entry 2930 (class 2606 OID 70499)
-- Name: favorite_genre_has_user favorite_genre_has_user_id_genre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_genre_has_user
    ADD CONSTRAINT favorite_genre_has_user_id_genre_fkey FOREIGN KEY (id_genre) REFERENCES public.genre(id_genre);


--
-- TOC entry 2929 (class 2606 OID 70842)
-- Name: favorite_genre_has_user favorite_genre_has_user_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_genre_has_user
    ADD CONSTRAINT favorite_genre_has_user_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.tuser(id_user);


--
-- TOC entry 2932 (class 2606 OID 70504)
-- Name: favorite_movie_has_user favorite_movie_has_user_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_movie_has_user
    ADD CONSTRAINT favorite_movie_has_user_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2931 (class 2606 OID 70832)
-- Name: favorite_movie_has_user favorite_movie_has_user_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favorite_movie_has_user
    ADD CONSTRAINT favorite_movie_has_user_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.tuser(id_user);


--
-- TOC entry 2933 (class 2606 OID 70509)
-- Name: genre_has_movie genre_has_movie_id_genre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre_has_movie
    ADD CONSTRAINT genre_has_movie_id_genre_fkey FOREIGN KEY (id_genre) REFERENCES public.genre(id_genre);


--
-- TOC entry 2934 (class 2606 OID 70514)
-- Name: genre_has_movie genre_has_movie_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre_has_movie
    ADD CONSTRAINT genre_has_movie_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2939 (class 2606 OID 70565)
-- Name: nationality_has_movie nationality_has_movie_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nationality_has_movie
    ADD CONSTRAINT nationality_has_movie_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2940 (class 2606 OID 70572)
-- Name: nationality_has_movie nationality_has_movie_id_nationality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nationality_has_movie
    ADD CONSTRAINT nationality_has_movie_id_nationality_fkey FOREIGN KEY (id_nationality) REFERENCES public.nationality(id_nationality);


--
-- TOC entry 2936 (class 2606 OID 70611)
-- Name: rating rating_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2935 (class 2606 OID 70847)
-- Name: rating rating_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.tuser(id_user);


--
-- TOC entry 2942 (class 2606 OID 70747)
-- Name: trole trole_id_rolename_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole
    ADD CONSTRAINT trole_id_rolename_fkey FOREIGN KEY (id_rolename) REFERENCES public.tuser_role(id_rolename);


--
-- TOC entry 2941 (class 2606 OID 70740)
-- Name: tuser_role tuser_role_user__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_user__fkey FOREIGN KEY (user_) REFERENCES public.tuser(user_);


--
-- TOC entry 2938 (class 2606 OID 70616)
-- Name: wishlist wishlist_id_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_id_movie_fkey FOREIGN KEY (id_movie) REFERENCES public.movie(id_movie);


--
-- TOC entry 2937 (class 2606 OID 70852)
-- Name: wishlist wishlist_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.tuser(id_user);


-- Completed on 2023-02-03 10:14:27

--
-- PostgreSQL database dump complete
--

