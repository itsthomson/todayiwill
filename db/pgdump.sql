--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: bojnfnlxob; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    name character varying(255),
    message text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.posts OWNER TO bojnfnlxob;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: bojnfnlxob
--

CREATE SEQUENCE posts_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO bojnfnlxob;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bojnfnlxob
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bojnfnlxob
--

SELECT pg_catalog.setval('posts_id_seq', 34, true);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: bojnfnlxob; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO bojnfnlxob;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bojnfnlxob
--

ALTER TABLE posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: bojnfnlxob
--

COPY posts (id, name, message, created_at, updated_at) FROM stdin;
3	Optimus Prime	defeat the Decepticons.	2010-04-05 03:01:03.894707	2010-04-05 03:01:03.894707
5	Linh	unpack my suitcase.	2010-04-05 03:04:44.995828	2010-04-05 03:07:36.371038
6	Jesus	come back from the dead.	2010-04-05 03:14:49.584969	2010-04-05 03:14:49.584969
7	Frank	nap.	2010-04-05 03:26:16.337558	2010-04-05 03:26:16.337558
1	Thomson	get my act together.	2010-04-05 02:33:35.556191	2010-04-05 03:39:53.56132
8	Nang	solve the rubik's cube.	2010-04-05 03:44:08.44919	2010-04-05 03:44:49.117232
9	Gordon Brown	prepare to lose the general elections with grace.	2010-04-05 04:23:52.809506	2010-04-05 04:23:52.809506
11	Zombie Jesus	eatttttt brainsssssssssssss	2010-04-05 04:34:40.068056	2010-04-05 04:34:40.068056
12	Gordon	die.  (of laughter).	2010-04-05 05:50:48.874851	2010-04-05 05:50:48.874851
16	Angel	sleeeeeeeep. Nightie night!	2010-04-05 08:02:15.926125	2010-04-05 08:02:15.926125
18	Claire	never forget to appreciate people I care about!	2010-04-05 22:03:23.522912	2010-04-05 22:03:23.522912
19	Jaimee	pay attention in class.	2010-04-05 22:21:51.35063	2010-04-05 22:21:51.35063
20	Frank	nom nom nom.	2010-04-05 22:25:13.310502	2010-04-05 22:25:13.310502
17	Ed	update my twitter.	2010-04-05 22:01:37.29086	2010-04-06 08:49:43.301094
13	Clark Kent	for the 3201th time, muster up courage to spill my feelings to Lois.	2010-04-05 05:57:30.154929	2010-04-06 08:50:02.15277
21	Vinh	do my homework.	2010-04-06 09:47:49.462242	2010-04-06 09:47:49.462242
22	Tin	schedule a doctor's appointment (finally!)	2010-04-06 10:04:42.367607	2010-04-06 10:04:42.367607
23	T-Wut	make sure someone other than me has a good day.	2010-04-06 10:19:42.746343	2010-04-06 10:19:42.746343
24	Julie	tell my boyfriend I love him. +D	2010-04-06 10:22:15.552336	2010-04-06 10:22:15.552336
26	The Creepy Guy Across the Street on Meganslaw.ca.gov	touch you innappropriately	2010-04-06 10:27:28.886341	2010-04-06 10:27:28.886341
27	Dolph Lundgren	break you	2010-04-06 10:27:50.02082	2010-04-06 10:27:50.02082
28	T-Wut	let music elevate my mood	2010-04-06 10:28:18.433008	2010-04-06 10:28:18.433008
29	Vin Diesel	live my life one quarter mile at a time	2010-04-06 10:29:06.157453	2010-04-06 10:29:06.157453
30	Tyrannosaurus Rex	be extinct	2010-04-06 10:29:55.849115	2010-04-06 10:29:55.849115
31	Thai Red Shirts	dissolve parliament, or party in the streets of Bangkok	2010-04-06 10:31:41.945151	2010-04-06 10:31:41.945151
32	Coke Zero	give you cancer	2010-04-06 10:34:06.522775	2010-04-06 10:34:06.522775
33	Mr T	pity the fool	2010-04-06 10:34:25.240962	2010-04-06 10:34:25.240962
34	The Man	oppress the common man	2010-04-06 10:36:08.587694	2010-04-06 10:36:08.587694
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: bojnfnlxob
--

COPY schema_migrations (version) FROM stdin;
20100405020356
\.


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: bojnfnlxob; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: bojnfnlxob; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

