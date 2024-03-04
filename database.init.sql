--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: autority
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO autority;

--
-- Name: todo; Type: TABLE; Schema: public; Owner: autority
--

CREATE TABLE public.todo (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    author character varying(255) NOT NULL,
    "isComplete" boolean NOT NULL,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.todo OWNER TO autority;

--
-- Name: todo_id_seq; Type: SEQUENCE; Schema: public; Owner: autority
--

CREATE SEQUENCE public.todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.todo_id_seq OWNER TO autority;

--
-- Name: todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: autority
--

ALTER SEQUENCE public.todo_id_seq OWNED BY public.todo.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: autority
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(30) NOT NULL,
    "lastName" character varying(30) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.users OWNER TO autority;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: autority
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO autority;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: autority
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: todo id; Type: DEFAULT; Schema: public; Owner: autority
--

ALTER TABLE ONLY public.todo ALTER COLUMN id SET DEFAULT nextval('public.todo_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: autority
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: autority
--

INSERT INTO public."SequelizeMeta" VALUES ('20221001094700-create-user-table-reference.js');
INSERT INTO public."SequelizeMeta" VALUES ('create-todo-table.js');


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: autority
--

INSERT INTO public.todo VALUES (1, 'El código secreto 🕵️‍♂️', 'Descifra un código encriptado con razones para contratarte 😉', 'Yeifer Muñoz', true, '2024-03-07 13:22:35.274+00', '2024-03-07 13:22:35.274+00', NULL);
INSERT INTO public.todo VALUES (2, 'Proyecto TARDIS ⏳', 'Desarrolla una función para corregir errores antes de que sucedan 🚀', 'Guillermo Conesa', false, '2024-03-07 13:22:35.274+00', '2024-03-07 13:22:35.274+00', NULL);
INSERT INTO public.todo VALUES (3, 'Escapar del Bucle 🌀', 'Supera el temido bucle infinito con ingenio y habilidades de programación 💪', 'Yeifer Muñoz', false, '2024-03-07 13:22:35.274+00', '2024-03-07 13:22:35.274+00', NULL);
INSERT INTO public.todo VALUES (4, 'Adopta a un Dev 🐱‍💻', 'Yeifer esta contando chistes malisimos. Contratalo para que programe como un tipo serio. 🤣🤦‍♂️', 'Guillermo Conesa', true, '2024-03-07 13:22:35.275+00', '2024-03-07 13:22:35.275+00', NULL);
INSERT INTO public.todo VALUES (5, 'Safari de Bugs 🐾', 'Embárcate en un safari de bugs salvajes con Yeifer, el domador de bugs 🦁🔍', 'Rory Zambrano', false, '2024-03-07 13:22:35.275+00', '2024-03-07 13:22:35.275+00', NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: autority
--



--
-- Name: todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: autority
--

SELECT pg_catalog.setval('public.todo_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: autority
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: autority
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: autority
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: autority
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: autority
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

