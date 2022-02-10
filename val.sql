--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-02-10 10:33:38 WAT

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
-- TOC entry 207 (class 1259 OID 16534)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id_client integer NOT NULL,
    nom_prenom character varying(100) NOT NULL,
    adresse character varying(100) NOT NULL,
    num_client double precision NOT NULL,
    id_prod integer NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16532)
-- Name: client_id_client_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_client_seq OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 206
-- Name: client_id_client_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;


--
-- TOC entry 203 (class 1259 OID 16478)
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fournisseur (
    id_four integer NOT NULL,
    nom_prenom character varying(100),
    adresse text,
    num_four double precision NOT NULL
);


ALTER TABLE public.fournisseur OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16476)
-- Name: fournisseur_id_four_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fournisseur_id_four_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fournisseur_id_four_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 202
-- Name: fournisseur_id_four_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fournisseur_id_four_seq OWNED BY public.fournisseur.id_four;


--
-- TOC entry 205 (class 1259 OID 16497)
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit (
    id_prod integer NOT NULL,
    nom character varying(100) NOT NULL,
    description character varying(100) NOT NULL,
    prix double precision NOT NULL,
    id_four integer NOT NULL
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16495)
-- Name: produit_id_prod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produit_id_prod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_id_prod_seq OWNER TO postgres;

--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 204
-- Name: produit_id_prod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produit_id_prod_seq OWNED BY public.produit.id_prod;


--
-- TOC entry 2855 (class 2604 OID 16537)
-- Name: client id_client; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);


--
-- TOC entry 2853 (class 2604 OID 16481)
-- Name: fournisseur id_four; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur ALTER COLUMN id_four SET DEFAULT nextval('public.fournisseur_id_four_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 16500)
-- Name: produit id_prod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit ALTER COLUMN id_prod SET DEFAULT nextval('public.produit_id_prod_seq'::regclass);


--
-- TOC entry 2995 (class 0 OID 16534)
-- Dependencies: 207
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id_client, nom_prenom, adresse, num_client, id_prod) FROM stdin;
1	Rennie Waples	885 Logan Parkway	8107605	1
2	Merrielle Alfonsetti	65 Moose Terrace	8849361	2
3	Lucho Larimer	079 Raven Avenue	8264485	3
4	Wildon Toffolini	75 Sloan Point	2193337	4
5	Harlene Turpie	6392 Fair Oaks Drive	4783189	5
6	Orlando Manass	624 Norway Maple Court	4014476	6
7	Christalle Dudley	1 Service Street	2069862	7
8	Sianna Dyzart	8465 Warrior Lane	7237812	8
9	Spencer Screeton	94 Lighthouse Bay Center	8701471	9
\.


--
-- TOC entry 2991 (class 0 OID 16478)
-- Dependencies: 203
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fournisseur (id_four, nom_prenom, adresse, num_four) FROM stdin;
1	Horton O'Dunneen	486 Kenwood Way	8053168
2	Kacey Pilipyak	92 Claremont Alley	4215645
3	Hobey Behr	74 Ronald Regan Point	1746237
4	Thibaut Berlin	74 Shelley Lane	3514726
5	Artemis Mingotti	95 Pepper Wood Avenue	7092972
6	Corrie Kaplin	8 Truax Drive	6295637
7	Abran Rubinsaft	01 Scofield Street	3555409
8	Eziechiele Royl	62280 Fisk Lane	9567429
9	Jozef Headan	07 Pawling Court	3712959
10	Emera Charnley	61537 Chinook Center	5515176
\.


--
-- TOC entry 2993 (class 0 OID 16497)
-- Dependencies: 205
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produit (id_prod, nom, description, prix, id_four) FROM stdin;
1	Nitrogen		77	1
2	Onopordon Aurum		71	2
3	KETOROLAC TROMETHAMINE		92	3
4	amoxicillin		36	4
5	ethyl alcohol		2	5
6	Benzocaine		89	6
7	hydroxyzine pamoate		81	7
8	tretinoin		87	8
9	warfarin sodium		25	9
10	INTERLEUKIN-5		90	10
\.


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 206
-- Name: client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_client_seq', 1, false);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 202
-- Name: fournisseur_id_four_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fournisseur_id_four_seq', 1, false);


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 204
-- Name: produit_id_prod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produit_id_prod_seq', 1, false);


--
-- TOC entry 2861 (class 2606 OID 16539)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);


--
-- TOC entry 2857 (class 2606 OID 16486)
-- Name: fournisseur fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pkey PRIMARY KEY (id_four);


--
-- TOC entry 2859 (class 2606 OID 16502)
-- Name: produit produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id_prod);


--
-- TOC entry 2863 (class 2606 OID 16540)
-- Name: client client_id_prod_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_id_prod_fkey FOREIGN KEY (id_prod) REFERENCES public.produit(id_prod);


--
-- TOC entry 2862 (class 2606 OID 16503)
-- Name: produit produit_id_four_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_id_four_fkey FOREIGN KEY (id_four) REFERENCES public.fournisseur(id_four);


-- Completed on 2022-02-10 10:33:38 WAT

--
-- PostgreSQL database dump complete
--

