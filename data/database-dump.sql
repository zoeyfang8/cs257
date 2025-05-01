--
-- PostgreSQL database dump
--

-- Dumped from database version 13.20
-- Dumped by pg_dump version 13.20

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
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    surname text,
    given_name text,
    birth_year integer,
    death_year integer
);


--
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title text,
    publication_year integer
);


--
-- Name: books_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books_authors (
    book_id integer,
    author_id integer
);


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    countryname text,
    area integer,
    continent integer
);


--
-- Name: flags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flags (
    id integer NOT NULL,
    countryname text,
    flagimage text,
    colours text,
    red integer,
    green integer,
    blue integer,
    gold integer,
    white integer,
    black integer,
    orange integer,
    mainhue text
);


--
-- Name: flags_countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.flags_countries (
    country_id integer,
    flag_id integer
);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.authors (id, surname, given_name, birth_year, death_year) FROM stdin;
0	Willis	Connie	1945	\N
1	Christie	Agatha	1890	1976
2	Morrison	Toni	1931	\N
3	Conger	Kate	1989	\N
4	Mac	Ryan	\N	\N
5	Lewis	Sinclair	1885	1951
6	Austen	Jane	1775	1817
7	Brontë	Charlotte	1816	1855
8	Wodehouse	P.G.	1881	1975
9	Márquez	Gabriel García	1927	2014
10	Kritzer	Naomi	1973	\N
11	Bujold	Lois McMaster	1949	\N
12	Melville	Herman	1819	1891
13	Sterne	Laurence	1713	1768
14	Osman	Richard	1970	\N
15	Brontë	Ann	1820	1849
16	Brontë	Emily	1818	1848
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books (id, title, publication_year) FROM stdin;
0	All Clear	2010
1	And Then There Were None	1939
2	Beloved	1987
3	Blackout	2010
4	Character Limit	2024
5	Elmer Gantry	1927
6	Emma	1815
7	Jane Eyre	1847
8	Leave it to Psmith	1923
9	Love in the Time of Cholera	1985
10	Catfishing on Catnet	2019
11	Main Street	1920
12	Mirror Dance	1994
13	Moby Dick	1851
14	Murder on the Orient Express	1934
15	Omoo	1847
16	One Hundred Years of Solitude	1967
17	Pride and Prejudice	1813
18	Right Ho, Jeeves	1934
19	Liberty's Daughter	2023
20	Sense and Sensibility	1813
21	Shards of Honor	1986
22	Sula	1973
23	The Code of the Woosters	1938
24	The Life and Opinions of Tristram Shandy, Gentleman	1759
25	The Thursday Murder Club	2020
26	The Tenant of Wildfell Hall	1848
27	To Say Nothing of the Dog	1997
28	Villette	1853
29	The Man Who Died Twice	2021
30	Wuthering Heights	1847
\.


--
-- Data for Name: books_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books_authors (book_id, author_id) FROM stdin;
0	0
1	1
2	2
0	3
3	4
4	4
5	5
6	6
7	7
8	8
9	9
10	10
5	11
11	12
12	13
1	14
12	15
9	16
6	17
8	18
10	19
6	20
11	21
2	22
8	23
13	24
14	25
15	26
0	27
7	28
14	29
16	30
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, countryname, area, continent) FROM stdin;
1	Afghanistan	648	5
2	Albania	29	3
3	Algeria	2388	4
4	American-Samoa	0	6
5	Andorra	3	3
6	Angola	1247	4
7	Anguilla	0	1
8	Antigua-Barbuda	0	1
9	Argentina	2777	2
10	Australia	7690	6
11	Austria	84	3
12	Bahamas	19	1
13	Bahrain	1	5
14	Bangladesh	143	5
15	Barbados	0	1
16	Belgium	31	3
17	Belize	23	1
18	Benin	113	4
19	Bermuda	0	1
20	Bhutan	47	5
21	Bolivia	1099	2
22	Botswana	600	4
23	Brazil	8512	2
24	British-Virgin-Isles	0	1
25	Brunei	6	5
26	Bulgaria	111	3
27	Burkina	274	4
28	Burma	678	5
29	Burundi	28	4
30	Cameroon	474	4
31	Canada	9976	1
32	Cape-Verde-Islands	4	4
33	Cayman-Islands	0	1
34	Central-African-Republic	623	4
35	Chad	1284	4
36	Chile	757	2
37	China	9561	5
38	Colombia	1139	2
39	Comorro-Islands	2	4
40	Congo	342	4
41	Cook-Islands	0	6
42	Costa-Rica	51	1
43	Cuba	115	1
44	Cyprus	9	3
45	Czechoslovakia	128	3
46	Denmark	43	3
47	Djibouti	22	4
48	Dominica	0	1
49	Dominican-Republic	49	1
50	Ecuador	284	2
51	Egypt	1001	4
52	El-Salvador	21	1
53	Equatorial-Guinea	28	4
54	Ethiopia	1222	4
55	Faeroes	1	3
56	Falklands-Malvinas	12	2
57	Fiji	18	6
58	Finland	337	3
59	France	547	3
60	French-Guiana	91	2
61	French-Polynesia	4	6
62	Gabon	268	4
63	Gambia	10	4
64	Germany-DDR	108	3
65	Germany-FRG	249	3
66	Ghana	239	4
67	Gibraltar	0	3
68	Greece	132	3
69	Greenland	2176	1
70	Grenada	0	1
71	Guam	0	6
72	Guatemala	109	1
73	Guinea	246	4
74	Guinea-Bissau	36	4
75	Guyana	215	2
76	Haiti	28	1
77	Honduras	112	1
78	Hong-Kong	1	5
79	Hungary	93	3
80	Iceland	103	3
81	India	3268	5
82	Indonesia	1904	6
83	Iran	1648	5
84	Iraq	435	5
85	Ireland	70	3
86	Israel	21	5
87	Italy	301	3
88	Ivory-Coast	323	4
89	Jamaica	11	1
90	Japan	372	5
91	Jordan	98	5
92	Kampuchea	181	5
93	Kenya	583	4
94	Kiribati	0	6
95	Kuwait	18	5
96	Laos	236	5
97	Lebanon	10	5
98	Lesotho	30	4
99	Liberia	111	4
100	Libya	1760	4
101	Liechtenstein	0	3
102	Luxembourg	3	3
103	Malagasy	587	4
104	Malawi	118	4
105	Malaysia	333	5
106	Maldive-Islands	0	5
107	Mali	1240	4
108	Malta	0	3
109	Marianas	0	6
110	Mauritania	1031	4
111	Mauritius	2	4
112	Mexico	1973	1
113	Micronesia	1	6
114	Monaco	0	3
115	Mongolia	1566	5
116	Montserrat	0	1
117	Morocco	447	4
118	Mozambique	783	4
119	Nauru	0	6
120	Nepal	140	5
121	Netherlands	41	3
122	Netherlands-Antilles	0	1
123	New-Zealand	268	6
124	Nicaragua	128	1
125	Niger	1267	4
126	Nigeria	925	4
127	Niue	0	6
128	North-Korea	121	5
129	North-Yemen	195	5
130	Norway	324	3
131	Oman	212	5
132	Pakistan	804	5
133	Panama	76	2
134	Papua-New-Guinea	463	6
135	Parguay	407	2
136	Peru	1285	2
137	Philippines	300	6
138	Poland	313	3
139	Portugal	92	3
140	Puerto-Rico	9	1
141	Qatar	11	5
142	Romania	237	3
143	Rwanda	26	4
144	San-Marino	0	3
145	Sao-Tome	0	4
146	Saudi-Arabia	2150	5
147	Senegal	196	4
148	Seychelles	0	4
149	Sierra-Leone	72	4
150	Singapore	1	5
151	Soloman-Islands	30	6
152	Somalia	637	4
153	South-Africa	1221	4
154	South-Korea	99	5
155	South-Yemen	288	5
156	Spain	505	3
157	Sri-Lanka	66	5
158	St-Helena	0	4
159	St-Kitts-Nevis	0	1
160	St-Lucia	0	1
161	St-Vincent	0	1
162	Sudan	2506	4
163	Surinam	63	2
164	Swaziland	17	4
165	Sweden	450	3
166	Switzerland	41	3
167	Syria	185	5
168	Taiwan	36	5
169	Tanzania	945	4
170	Thailand	514	5
171	Togo	57	4
172	Tonga	1	6
173	Trinidad-Tobago	5	2
174	Tunisia	164	4
175	Turkey	781	5
176	Turks-Cocos-Islands	0	1
177	Tuvalu	0	6
178	UAE	84	5
179	Uganda	236	4
180	UK	245	3
181	Uruguay	178	2
182	US-Virgin-Isles	0	1
183	USA	9363	1
184	USSR	22402	5
185	Vanuatu	15	6
186	Vatican-City	0	3
187	Venezuela	912	2
188	Vietnam	333	5
189	Western-Samoa	3	6
190	Yugoslavia	256	3
191	Zaire	905	4
192	Zambia	753	4
193	Zimbabwe	391	4
\.


--
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flags (id, countryname, flagimage, colours, red, green, blue, gold, white, black, orange, mainhue) FROM stdin;
1	Afghanistan	https://upload.wikimedia.org/wikipedia/commons/c/cd/Flag_of_Afghanistan_%282013%E2%80%932021%29.svg	5	1	1	0	1	1	1	0	green
2	Albania	https://upload.wikimedia.org/wikipedia/commons/3/36/Flag_of_Albania.svg	3	1	0	0	1	0	1	0	red
3	Algeria	https://upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Algeria.svg	3	1	1	0	0	1	0	0	green
4	American-Samoa	https://upload.wikimedia.org/wikipedia/commons/8/87/Flag_of_American_Samoa.svg	5	1	0	1	1	1	0	1	blue
5	Andorra	https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Andorra.svg	3	3	3	3	3	3	3	0	gold
6	Angola	https://upload.wikimedia.org/wikipedia/commons/9/9d/Flag_of_Angola.svg	3	1	0	0	1	0	1	0	red
7	Anguilla	https://upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Anguilla.svg	3	0	0	1	0	1	0	1	white
8	Antigua-Barbuda	https://upload.wikimedia.org/wikipedia/commons/8/89/Flag_of_Antigua_and_Barbuda.svg	5	1	0	1	1	1	1	0	red
9	Argentina	https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg	2	0	0	1	0	1	0	0	blue
10	Australia	https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg	3	1	0	1	0	1	0	0	blue
11	Austria	https://upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_Austria.svg	2	1	0	0	0	1	0	0	red
12	Bahamas	https://upload.wikimedia.org/wikipedia/commons/9/93/Flag_of_the_Bahamas.svg	3	0	0	1	1	0	1	0	blue
13	Bahrain	https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Bahrain.svg	2	1	0	0	0	1	0	0	red
14	Bangladesh	https://upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bangladesh.svg	2	1	1	0	0	0	0	0	green
15	Barbados	https://upload.wikimedia.org/wikipedia/commons/e/ef/Flag_of_Barbados.svg	3	0	0	1	1	0	1	0	blue
16	Belgium	https://upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg	3	1	0	0	1	0	1	0	gold
17	Belize	https://upload.wikimedia.org/wikipedia/commons/e/e7/Flag_of_Belize.svg	8	1	1	1	1	1	1	1	blue
18	Benin	https://upload.wikimedia.org/wikipedia/commons/0/0a/Flag_of_Benin.svg	2	1	1	0	0	0	0	0	green
19	Bermuda	https://upload.wikimedia.org/wikipedia/commons/b/bf/Flag_of_Bermuda.svg	6	1	1	1	1	1	1	0	red
20	Bhutan	https://upload.wikimedia.org/wikipedia/commons/9/91/Flag_of_Bhutan.svg	4	1	0	0	0	1	1	1	orange
21	Bolivia	https://upload.wikimedia.org/wikipedia/commons/d/de/Flag_of_Bolivia_%28state%29.svg	3	1	1	0	1	0	0	0	red
22	Botswana	https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_Botswana.svg	3	0	0	1	0	1	1	0	blue
23	Brazil	https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg	4	0	1	1	1	1	0	0	green
24	British-Virgin-Isles	https://upload.wikimedia.org/wikipedia/commons/4/42/Flag_of_the_British_Virgin_Islands.svg	6	1	1	1	1	1	0	1	blue
25	Brunei	https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Brunei.svg	4	1	0	0	1	1	1	0	gold
26	Bulgaria	https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Bulgaria.svg	5	1	1	1	1	1	0	0	red
27	Burkina	https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Burkina_Faso.svg	3	1	1	0	1	0	0	0	red
28	Burma	https://upload.wikimedia.org/wikipedia/commons/8/8c/Flag_of_Myanmar.svg	3	1	0	1	0	1	0	0	red
29	Burundi	https://upload.wikimedia.org/wikipedia/commons/5/50/Flag_of_Burundi.svg	3	1	1	0	0	1	0	0	red
30	Cameroon	https://upload.wikimedia.org/wikipedia/commons/4/4f/Flag_of_Cameroon.svg	3	1	1	0	1	0	0	0	gold
31	Canada	https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Canada_%28Pantone%29.svg	2	1	0	0	0	1	0	0	red
32	Cape-Verde-Islands	https://upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Cape_Verde.svg	5	1	1	0	1	0	1	1	gold
33	Cayman-Islands	https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_the_Cayman_Islands.svg	6	1	1	1	1	1	0	1	blue
34	Central-African-Republic	https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Central_African_Republic.svg	5	1	1	1	1	1	0	0	gold
35	Chad	https://upload.wikimedia.org/wikipedia/commons/4/4b/Flag_of_Chad.svg	3	1	0	1	1	0	0	0	gold
36	Chile	https://upload.wikimedia.org/wikipedia/commons/7/78/Flag_of_Chile.svg	3	1	0	1	0	1	0	0	red
37	China	https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg	2	1	0	0	1	0	0	0	red
38	Colombia	https://upload.wikimedia.org/wikipedia/commons/2/21/Flag_of_Colombia.svg	3	1	0	1	1	0	0	0	gold
39	Comorro-Islands	https://upload.wikimedia.org/wikipedia/commons/9/94/Flag_of_the_Comoros.svg	2	0	1	0	0	1	0	0	green
40	Congo	https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg	3	1	1	0	1	0	0	0	red
41	Cook-Islands	https://upload.wikimedia.org/wikipedia/commons/3/35/Flag_of_the_Cook_Islands.svg	4	1	0	1	0	1	0	0	blue
42	Costa-Rica	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Costa_Rica_%28state%29.svg	3	1	0	1	0	1	0	0	blue
43	Cuba	https://upload.wikimedia.org/wikipedia/commons/b/bd/Flag_of_Cuba.svg	3	1	0	1	0	1	0	0	blue
44	Cyprus	https://upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Cyprus.svg	3	0	1	0	1	1	0	0	white
45	Czechoslovakia	https://upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_Czech_Republic.svg	3	1	0	1	0	1	0	0	white
46	Denmark	https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Denmark.svg	2	1	0	0	0	1	0	0	red
47	Djibouti	https://upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_Djibouti.svg	4	1	1	1	0	1	0	0	blue
48	Dominica	https://upload.wikimedia.org/wikipedia/commons/c/c4/Flag_of_Dominica.svg	6	1	1	1	1	1	1	0	green
49	Dominican-Republic	https://upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_the_Dominican_Republic.svg	3	1	0	1	0	1	0	0	blue
50	Ecuador	https://upload.wikimedia.org/wikipedia/commons/e/e8/Flag_of_Ecuador.svg	3	1	0	1	1	0	0	0	gold
51	Egypt	https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg	4	1	0	0	1	1	1	0	black
52	El-Salvador	https://upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_El_Salvador.svg	2	0	0	1	0	1	0	0	blue
53	Equatorial-Guinea	https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Equatorial_Guinea.svg	4	1	1	1	0	1	0	0	green
54	Ethiopia	https://upload.wikimedia.org/wikipedia/commons/7/71/Flag_of_Ethiopia.svg	3	1	1	0	1	0	0	0	green
55	Faeroes	https://upload.wikimedia.org/wikipedia/commons/3/3c/Flag_of_the_Faroe_Islands.svg	3	1	0	1	0	1	0	0	white
56	Falklands-Malvinas	https://upload.wikimedia.org/wikipedia/commons/8/83/Flag_of_the_Falkland_Islands.svg	6	1	1	1	1	1	0	0	blue
57	Fiji	https://upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Fiji.svg	7	1	1	1	1	1	0	1	blue
58	Finland	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg	2	0	0	1	0	1	0	0	white
59	France	https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg	3	1	0	1	0	1	0	0	white
60	French-Guiana	https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg	3	1	0	1	0	1	0	0	white
61	French-Polynesia	https://upload.wikimedia.org/wikipedia/commons/d/db/Flag_of_French_Polynesia.svg	5	1	0	1	1	1	1	0	red
62	Gabon	https://upload.wikimedia.org/wikipedia/commons/0/04/Flag_of_Gabon.svg	3	0	1	1	1	0	0	0	green
63	Gambia	https://en.wikipedia.org/wiki/File:Flag_of_The_Gambia.svg	4	1	1	1	0	1	0	0	red
64	Germany-DDR	https://upload.wikimedia.org/wikipedia/commons/a/a1/Flag_of_East_Germany.svg	3	1	0	0	1	0	1	0	gold
65	Germany-FRG	https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg	3	1	0	0	1	0	1	0	black
66	Ghana	https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Ghana.svg	4	1	1	0	1	0	1	0	red
67	Gibraltar	https://upload.wikimedia.org/wikipedia/commons/0/02/Flag_of_Gibraltar.svg	3	1	0	0	1	1	0	0	white
68	Greece	https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg	2	0	0	1	0	1	0	0	blue
69	Greenland	https://upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_Greenland.svg	2	1	0	0	0	1	0	0	white
70	Grenada	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Grenada.svg	3	1	1	0	1	0	0	0	gold
71	Guam	https://upload.wikimedia.org/wikipedia/commons/0/07/Flag_of_Guam.svg	7	1	1	1	1	1	0	1	blue
72	Guatemala	https://upload.wikimedia.org/wikipedia/commons/e/ec/Flag_of_Guatemala.svg	2	0	0	1	0	1	0	0	blue
73	Guinea	https://upload.wikimedia.org/wikipedia/commons/e/ed/Flag_of_Guinea.svg	3	1	1	0	1	0	0	0	gold
74	Guinea-Bissau	https://upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_Guinea-Bissau.svg	4	1	1	0	1	0	1	0	gold
75	Guyana	https://upload.wikimedia.org/wikipedia/commons/9/99/Flag_of_Guyana.svg	5	1	1	0	1	1	1	0	green
76	Haiti	\N	2	1	0	0	0	0	1	0	black
77	Honduras	\N	2	0	0	1	0	1	0	0	blue
78	Hong-Kong	\N	6	1	1	1	1	1	0	1	blue
79	Hungary	\N	3	1	1	0	0	1	0	0	red
80	Iceland	\N	3	1	0	1	0	1	0	0	blue
81	India	\N	4	0	1	1	0	1	0	1	orange
82	Indonesia	\N	2	1	0	0	0	1	0	0	red
83	Iran	\N	3	1	1	0	0	1	0	0	red
84	Iraq	\N	4	1	1	0	0	1	1	0	red
85	Ireland	\N	3	0	1	0	0	1	0	1	white
86	Israel	\N	2	0	0	1	0	1	0	0	white
87	Italy	\N	3	1	1	0	0	1	0	0	white
88	Ivory-Coast	\N	3	1	1	0	0	1	0	0	white
89	Jamaica	\N	3	0	1	0	1	0	1	0	green
90	Japan	\N	2	1	0	0	0	1	0	0	white
91	Jordan	\N	4	1	1	0	0	1	1	0	black
92	Kampuchea	\N	2	1	0	0	1	0	0	0	red
93	Kenya	\N	4	1	1	0	0	1	1	0	red
94	Kiribati	\N	4	1	0	1	1	1	0	0	red
95	Kuwait	\N	4	1	1	0	0	1	1	0	green
96	Laos	\N	3	1	0	1	0	1	0	0	red
97	Lebanon	\N	4	1	1	0	0	1	0	1	red
98	Lesotho	\N	4	1	1	1	0	1	0	0	blue
99	Liberia	\N	3	1	0	1	0	1	0	0	red
100	Libya	\N	1	0	1	0	0	0	0	0	green
101	Liechtenstein	\N	3	1	0	1	1	0	0	0	red
102	Luxembourg	\N	3	1	0	1	0	1	0	0	red
103	Malagasy	\N	3	1	1	0	0	1	0	0	red
104	Malawi	\N	3	1	1	0	0	0	1	0	red
105	Malaysia	\N	4	1	0	1	1	1	0	0	red
106	Maldive-Islands	\N	3	1	1	0	0	1	0	0	red
107	Mali	\N	3	1	1	0	1	0	0	0	gold
108	Malta	\N	3	1	0	0	0	1	1	0	red
109	Marianas	\N	3	0	0	1	0	1	0	0	blue
110	Mauritania	\N	2	0	1	0	1	0	0	0	green
111	Mauritius	\N	4	1	1	1	1	0	0	0	red
112	Mexico	\N	4	1	1	0	0	1	0	1	green
113	Micronesia	\N	2	0	0	1	0	1	0	0	blue
114	Monaco	\N	2	1	0	0	0	1	0	0	red
115	Mongolia	\N	3	1	0	1	1	0	0	0	red
116	Montserrat	\N	7	1	1	1	1	1	1	0	blue
117	Morocco	\N	2	1	1	0	0	0	0	0	red
118	Mozambique	\N	5	1	1	0	1	1	1	0	gold
119	Nauru	\N	3	0	0	1	1	1	0	0	blue
120	Nepal	\N	3	0	0	1	0	1	0	1	brown
121	Netherlands	\N	3	1	0	1	0	1	0	0	red
122	Netherlands-Antilles	\N	3	1	0	1	0	1	0	0	white
123	New-Zealand	\N	3	1	0	1	0	1	0	0	blue
124	Nicaragua	\N	2	0	0	1	0	1	0	0	blue
125	Niger	\N	3	0	1	0	0	1	0	1	orange
126	Nigeria	\N	2	0	1	0	0	1	0	0	green
127	Niue	\N	4	1	0	1	1	1	0	0	gold
128	North-Korea	\N	3	1	0	1	0	1	0	0	blue
129	North-Yemen	\N	4	1	1	0	0	1	1	0	red
130	Norway	\N	3	1	0	1	0	1	0	0	red
131	Oman	\N	3	1	1	0	0	1	0	0	red
132	Pakistan	\N	2	0	1	0	0	1	0	0	green
133	Panama	\N	3	1	0	1	0	1	0	0	red
134	Papua-New-Guinea	\N	4	1	0	0	1	1	1	0	black
135	Parguay	\N	6	1	1	1	1	1	1	0	red
136	Peru	\N	2	1	0	0	0	1	0	0	red
137	Philippines	\N	4	1	0	1	1	1	0	0	blue
138	Poland	\N	2	1	0	0	0	1	0	0	white
139	Portugal	\N	5	1	1	1	1	1	0	0	red
140	Puerto-Rico	\N	3	1	0	1	0	1	0	0	red
141	Qatar	\N	2	0	0	0	0	1	0	1	brown
142	Romania	\N	7	1	1	1	1	1	0	1	red
143	Rwanda	\N	4	1	1	0	1	0	1	0	red
144	San-Marino	\N	2	0	0	1	0	1	0	0	white
145	Sao-Tome	\N	4	1	1	0	1	0	1	0	green
146	Saudi-Arabia	\N	2	0	1	0	0	1	0	0	green
147	Senegal	\N	3	1	1	0	1	0	0	0	green
148	Seychelles	\N	3	1	1	0	0	1	0	0	red
149	Sierra-Leone	\N	3	0	1	1	0	1	0	0	green
150	Singapore	\N	2	1	0	0	0	1	0	0	white
151	Soloman-Islands	\N	4	0	1	1	1	1	0	0	green
152	Somalia	\N	2	0	0	1	0	1	0	0	blue
153	South-Africa	\N	5	1	1	1	0	1	0	1	orange
154	South-Korea	\N	4	1	0	1	0	1	1	0	white
155	South-Yemen	\N	4	1	0	1	0	1	1	0	red
156	Spain	\N	2	1	0	0	1	0	0	0	red
157	Sri-Lanka	\N	4	0	1	0	1	0	0	1	gold
158	St-Helena	\N	7	1	1	1	1	1	0	1	blue
159	St-Kitts-Nevis	\N	5	1	1	0	1	1	1	0	green
160	St-Lucia	\N	4	0	0	1	1	1	1	0	blue
161	St-Vincent	\N	4	0	1	1	1	1	0	0	green
162	Sudan	\N	4	1	1	0	0	1	1	0	red
163	Surinam	\N	4	1	1	0	1	1	0	0	red
164	Swaziland	\N	7	1	0	1	1	1	1	1	blue
165	Sweden	\N	2	0	0	1	1	0	0	0	blue
166	Switzerland	\N	2	1	0	0	0	1	0	0	red
167	Syria	\N	4	1	1	0	0	1	1	0	red
168	Taiwan	\N	3	1	0	1	0	1	0	0	red
169	Tanzania	\N	4	0	1	1	1	0	1	0	green
170	Thailand	\N	3	1	0	1	0	1	0	0	red
171	Togo	\N	4	1	1	0	1	1	0	0	green
172	Tonga	\N	2	1	0	0	0	1	0	0	red
173	Trinidad-Tobago	\N	3	1	0	0	0	1	1	0	red
174	Tunisia	\N	2	1	0	0	0	1	0	0	red
175	Turkey	\N	2	1	0	0	0	1	0	0	red
176	Turks-Cocos-Islands	\N	6	1	1	1	1	1	0	1	blue
177	Tuvalu	\N	5	1	0	1	1	1	0	0	blue
178	UAE	\N	4	1	1	0	0	1	1	0	green
179	Uganda	\N	5	1	0	0	1	1	1	0	gold
180	UK	\N	3	1	0	1	0	1	0	0	red
181	Uruguay	\N	3	0	0	1	1	1	0	0	white
182	US-Virgin-Isles	\N	6	1	1	1	1	1	0	0	white
183	USA	\N	3	1	0	1	0	1	0	0	white
184	USSR	\N	2	1	0	0	1	0	0	0	red
185	Vanuatu	\N	4	1	1	0	1	0	1	0	red
186	Vatican-City	\N	4	1	0	0	1	1	1	0	gold
187	Venezuela	\N	7	1	1	1	1	1	1	1	red
188	Vietnam	\N	2	1	0	0	1	0	0	0	red
189	Western-Samoa	\N	3	1	0	1	0	1	0	0	red
190	Yugoslavia	\N	4	1	0	1	1	1	0	0	red
191	Zaire	\N	4	1	1	0	1	0	0	1	green
192	Zambia	\N	4	1	1	0	0	0	1	1	green
193	Zimbabwe	\N	5	1	1	0	1	1	1	0	green
\.


--
-- Data for Name: flags_countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flags_countries (country_id, flag_id) FROM stdin;
0	0
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
33	33
34	34
35	35
36	36
37	37
38	38
39	39
40	40
41	41
42	42
43	43
44	44
45	45
46	46
47	47
48	48
49	49
50	50
51	51
52	52
53	53
54	54
55	55
56	56
57	57
58	58
59	59
60	60
61	61
62	62
63	63
64	64
65	65
66	66
67	67
68	68
69	69
70	70
71	71
72	72
73	73
74	74
75	75
76	76
77	77
78	78
79	79
80	80
81	81
82	82
83	83
84	84
85	85
86	86
87	87
88	88
89	89
90	90
91	91
92	92
93	93
94	94
95	95
96	96
97	97
98	98
99	99
100	100
101	101
102	102
103	103
104	104
105	105
106	106
107	107
108	108
109	109
110	110
111	111
112	112
113	113
114	114
115	115
116	116
117	117
118	118
119	119
120	120
121	121
122	122
123	123
124	124
125	125
126	126
127	127
128	128
129	129
130	130
131	131
132	132
133	133
134	134
135	135
136	136
137	137
138	138
139	139
140	140
141	141
142	142
143	143
144	144
145	145
146	146
147	147
148	148
149	149
150	150
151	151
152	152
153	153
154	154
155	155
156	156
157	157
158	158
159	159
160	160
161	161
162	162
163	163
164	164
165	165
166	166
167	167
168	168
169	169
170	170
171	171
172	172
173	173
174	174
175	175
176	176
177	177
178	178
179	179
180	180
181	181
182	182
183	183
184	184
185	185
186	186
187	187
188	188
189	189
190	190
191	191
192	192
193	193
\.


--
-- PostgreSQL database dump complete
--

