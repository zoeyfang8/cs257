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

DROP TABLE public.flags_countries;
DROP TABLE public.flags;
DROP TABLE public.countries;
SET default_tablespace = '';

SET default_table_access_method = heap;

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
22	Bosnia-Herzegovina	51	3
23	Botswana	600	4
24	Brazil	8512	2
25	British-Virgin-Isles	0	1
26	Brunei	6	5
27	Bulgaria	111	3
28	Burkina	274	4
29	Burma	678	5
30	Burundi	28	4
31	Cambodia	181	5
32	Cameroon	474	4
33	Canada	9976	1
34	Cape-Verde-Islands	4	4
35	Cayman-Islands	0	1
36	Central-African-Republic	623	4
37	Chad	1284	4
38	Chile	757	2
39	China	9561	5
40	Colombia	1139	2
41	Comorro-Islands	2	4
42	Congo	342	4
43	Cook-Islands	0	6
44	Costa-Rica	51	1
45	Croatia 	56	3
46	Cuba	115	1
47	Cyprus	9	3
48	Czechoslovakia	128	3
49	Denmark	43	3
50	Djibouti	22	4
51	Dominica	0	1
52	Dominican-Republic	49	1
53	Ecuador	284	2
54	Egypt	1001	4
55	El-Salvador	21	1
56	Equatorial-Guinea	28	4
57	Eswatini	17	4
58	Ethiopia	1222	4
59	Faeroes	1	3
60	Falklands-Malvinas	12	2
61	Fiji	18	6
62	Finland	337	3
63	France	547	3
64	French-Guiana	91	2
65	French-Polynesia	4	6
66	Gabon	268	4
67	Gambia	10	4
68	Germany-DDR	108	3
69	Germany-FRG	249	3
70	Ghana	239	4
71	Gibraltar	0	3
72	Greece	132	3
73	Greenland	2176	1
74	Grenada	0	1
75	Guam	0	6
76	Guatemala	109	1
77	Guinea	246	4
78	Guinea-Bissau	36	4
79	Guyana	215	2
80	Haiti	28	1
81	Honduras	112	1
82	Hong-Kong	1	5
83	Hungary	93	3
84	Iceland	103	3
85	India	3268	5
86	Indonesia	1904	6
87	Iran	1648	5
88	Iraq	435	5
89	Ireland	70	3
90	Israel	21	5
91	Italy	301	3
92	Ivory-Coast	323	4
93	Jamaica	11	1
94	Japan	372	5
95	Jordan	98	5
96	Kenya	583	4
97	Kiribati	0	6
98	Kuwait	18	5
99	Laos	236	5
100	Lebanon	10	5
101	Lesotho	30	4
102	Liberia	111	4
103	Libya	1760	4
104	Liechtenstein	0	3
105	Luxembourg	3	3
106	Madagascar	587	4
107	Malawi	118	4
108	Malaysia	333	5
109	Maldive-Islands	0	5
110	Mali	1240	4
111	Malta	0	3
112	Mauritania	1031	4
113	Mauritius	2	4
114	Mexico	1973	1
115	Micronesia	1	6
116	Monaco	0	3
117	Mongolia	1566	5
118	Montenegro 	13	3
119	Montserrat	0	1
120	Morocco	447	4
121	Mozambique	783	4
122	Myanmar	261	5
123	Nauru	0	6
124	Nepal	140	5
125	Netherlands	41	3
126	New-Zealand	268	6
127	Nicaragua	128	1
128	Niger	1267	4
129	Nigeria	925	4
130	North Macedonia	25	3
131	North-Korea	121	5
132	Norway	324	3
133	Oman	212	5
134	Pakistan	804	5
135	Palestine 	6	5
136	Panama	76	2
137	Papua-New-Guinea	463	6
138	Parguay	407	2
139	Peru	1285	2
140	Philippines	300	6
141	Poland	313	3
142	Portugal	92	3
143	Puerto-Rico	9	1
144	Qatar	11	5
145	Romania	237	3
146	Russia 	17098	5
147	Rwanda	26	4
148	San-Marino	0	3
149	Sao-Tome	0	4
150	Saudi-Arabia	2150	5
151	Senegal	196	4
152	Serbia 	88	3
153	Seychelles	0	4
154	Sierra-Leone	72	4
155	Singapore	1	5
156	Slovenia 	20	3
157	Soloman-Islands	30	6
158	Somalia	637	4
159	South-Africa	1221	4
160	South-Korea	99	5
161	Spain	505	3
162	Sri-Lanka	66	5
163	St-Helena	0	4
164	St-Kitts-Nevis	0	1
165	St-Lucia	0	1
166	St-Vincent	0	1
167	Sudan	2506	4
168	Surinam	63	2
169	Sweden	450	3
170	Switzerland	41	3
171	Syria	185	5
172	Taiwan	36	5
173	Tajikistan	143	5
174	Tanzania	945	4
175	Thailand	514	5
176	Timor-Leste	5	5
177	Togo	57	4
178	Tonga	1	6
179	Trinidad-Tobago	5	2
180	Tunisia	164	4
181	Turkey	781	5
182	Turkmenistan 	189	5
183	Turks-Cocos-Islands	0	1
184	Tuvalu	0	6
185	UAE	84	5
186	Uganda	236	4
187	UK	245	3
188	Ukraine 	603	3
189	Uruguay	178	2
190	USA	9363	1
191	US-Virgin-Isles	0	1
192	Vanuatu	15	6
193	Venezuela	912	2
194	Vietnam	333	5
195	Western-Samoa	3	6
196	Yemen	455	5
197	Zambia	753	4
198	Zimbabwe	391	4
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
22	Bosnia-Herzegovina	https://www.worldometers.info//img/flags/small/tn_bk-flag.gif	3	0	0	1	1	1	0	0	blue
23	Botswana	https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_Botswana.svg	3	0	0	1	0	1	1	0	blue
24	Brazil	https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg	4	0	1	1	1	1	0	0	green
25	British-Virgin-Isles	https://upload.wikimedia.org/wikipedia/commons/4/42/Flag_of_the_British_Virgin_Islands.svg	6	1	1	1	1	1	0	1	blue
26	Brunei	https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Brunei.svg	4	1	0	0	1	1	1	0	gold
27	Bulgaria	https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Bulgaria.svg	5	1	1	1	1	1	0	0	red
28	Burkina	https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Burkina_Faso.svg	3	1	1	0	1	0	0	0	red
29	Burma	https://upload.wikimedia.org/wikipedia/commons/8/8c/Flag_of_Myanmar.svg	3	1	0	1	0	1	0	0	red
30	Burundi	https://upload.wikimedia.org/wikipedia/commons/5/50/Flag_of_Burundi.svg	3	1	1	0	0	1	0	0	red
31	Cambodia	https://www.worldometers.info//img/flags/small/tn_cb-flag.gif	4	1	0	1	0	1	1	0	blue
32	Cameroon	https://upload.wikimedia.org/wikipedia/commons/4/4f/Flag_of_Cameroon.svg	3	1	1	0	1	0	0	0	gold
33	Canada	https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Canada_%28Pantone%29.svg	2	1	0	0	0	1	0	0	red
34	Cape-Verde-Islands	https://upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Cape_Verde.svg	5	1	1	0	1	0	1	1	gold
35	Cayman-Islands	https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_the_Cayman_Islands.svg	6	1	1	1	1	1	0	1	blue
36	Central-African-Republic	https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Central_African_Republic.svg	5	1	1	1	1	1	0	0	gold
37	Chad	https://upload.wikimedia.org/wikipedia/commons/4/4b/Flag_of_Chad.svg	3	1	0	1	1	0	0	0	gold
38	Chile	https://upload.wikimedia.org/wikipedia/commons/7/78/Flag_of_Chile.svg	3	1	0	1	0	1	0	0	red
39	China	https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg	2	1	0	0	1	0	0	0	red
40	Colombia	https://upload.wikimedia.org/wikipedia/commons/2/21/Flag_of_Colombia.svg	3	1	0	1	1	0	0	0	gold
41	Comorro-Islands	https://upload.wikimedia.org/wikipedia/commons/9/94/Flag_of_the_Comoros.svg	2	0	1	0	0	1	0	0	green
42	Congo	https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg	3	1	1	0	1	0	0	0	red
43	Cook-Islands	https://upload.wikimedia.org/wikipedia/commons/3/35/Flag_of_the_Cook_Islands.svg	4	1	0	1	0	1	0	0	blue
44	Costa-Rica	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Costa_Rica_%28state%29.svg	3	1	0	1	0	1	0	0	blue
45	Croatia 	https://www.worldometers.info//img/flags/small/tn_hr-flag.gif	5	1	0	1	1	1	1	0	red
46	Cuba	https://upload.wikimedia.org/wikipedia/commons/b/bd/Flag_of_Cuba.svg	3	1	0	1	0	1	0	0	blue
47	Cyprus	https://upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Cyprus.svg	3	0	1	0	1	1	0	0	white
48	Czechoslovakia	https://upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_Czech_Republic.svg	3	1	0	1	0	1	0	0	white
49	Denmark	https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Denmark.svg	2	1	0	0	0	1	0	0	red
50	Djibouti	https://upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_Djibouti.svg	4	1	1	1	0	1	0	0	blue
51	Dominica	https://upload.wikimedia.org/wikipedia/commons/c/c4/Flag_of_Dominica.svg	6	1	1	1	1	1	1	0	green
52	Dominican-Republic	https://upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_the_Dominican_Republic.svg	3	1	0	1	0	1	0	0	blue
53	Ecuador	https://upload.wikimedia.org/wikipedia/commons/e/e8/Flag_of_Ecuador.svg	3	1	0	1	1	0	0	0	gold
54	Egypt	https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg	4	1	0	0	1	1	1	0	black
55	El-Salvador	https://upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_El_Salvador.svg	2	0	0	1	0	1	0	0	blue
56	Equatorial-Guinea	https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Equatorial_Guinea.svg	4	1	1	1	0	1	0	0	green
57	Eswatini	https://www.worldometers.info//img/flags/small/tn_wz-flag.gif	5	1	0	1	1	1	1	0	blue
58	Ethiopia	https://upload.wikimedia.org/wikipedia/commons/7/71/Flag_of_Ethiopia.svg	3	1	1	0	1	0	0	0	green
59	Faeroes	https://upload.wikimedia.org/wikipedia/commons/3/3c/Flag_of_the_Faroe_Islands.svg	3	1	0	1	0	1	0	0	white
60	Falklands-Malvinas	https://upload.wikimedia.org/wikipedia/commons/8/83/Flag_of_the_Falkland_Islands.svg	6	1	1	1	1	1	0	0	blue
61	Fiji	https://upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Fiji.svg	7	1	1	1	1	1	0	1	blue
62	Finland	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg	2	0	0	1	0	1	0	0	white
63	France	https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg	3	1	0	1	0	1	0	0	white
64	French-Guiana	https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg	3	1	0	1	0	1	0	0	white
65	French-Polynesia	https://upload.wikimedia.org/wikipedia/commons/d/db/Flag_of_French_Polynesia.svg	5	1	0	1	1	1	1	0	red
66	Gabon	https://upload.wikimedia.org/wikipedia/commons/0/04/Flag_of_Gabon.svg	3	0	1	1	1	0	0	0	green
67	Gambia	https://en.wikipedia.org/wiki/File:Flag_of_The_Gambia.svg	4	1	1	1	0	1	0	0	red
68	Germany-DDR	https://upload.wikimedia.org/wikipedia/commons/a/a1/Flag_of_East_Germany.svg	3	1	0	0	1	0	1	0	gold
69	Germany-FRG	https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg	3	1	0	0	1	0	1	0	black
70	Ghana	https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Ghana.svg	4	1	1	0	1	0	1	0	red
71	Gibraltar	https://upload.wikimedia.org/wikipedia/commons/0/02/Flag_of_Gibraltar.svg	3	1	0	0	1	1	0	0	white
72	Greece	https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg	2	0	0	1	0	1	0	0	blue
73	Greenland	https://upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_Greenland.svg	2	1	0	0	0	1	0	0	white
74	Grenada	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Grenada.svg	3	1	1	0	1	0	0	0	gold
75	Guam	https://upload.wikimedia.org/wikipedia/commons/0/07/Flag_of_Guam.svg	7	1	1	1	1	1	0	1	blue
76	Guatemala	https://upload.wikimedia.org/wikipedia/commons/e/ec/Flag_of_Guatemala.svg	2	0	0	1	0	1	0	0	blue
77	Guinea	https://upload.wikimedia.org/wikipedia/commons/e/ed/Flag_of_Guinea.svg	3	1	1	0	1	0	0	0	gold
78	Guinea-Bissau	https://upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_Guinea-Bissau.svg	4	1	1	0	1	0	1	0	gold
79	Guyana	https://upload.wikimedia.org/wikipedia/commons/9/99/Flag_of_Guyana.svg	5	1	1	0	1	1	1	0	green
80	Haiti	https://www.worldometers.info//img/flags/small/tn_ha-flag.gif	2	1	0	0	0	0	1	0	black
81	Honduras	https://www.worldometers.info//img/flags/small/tn_vt-flag.gif	2	0	0	1	0	1	0	0	blue
82	Hong-Kong	https://www.worldometers.info/img/flags/small/tn_hk-flag.gif	6	1	1	1	1	1	0	1	blue
83	Hungary	https://www.worldometers.info//img/flags/small/tn_hu-flag.gif	3	1	1	0	0	1	0	0	red
84	Iceland	https://www.worldometers.info//img/flags/small/tn_ic-flag.gif	3	1	0	1	0	1	0	0	blue
85	India	https://www.worldometers.info//img/flags/small/tn_in-flag.gif	4	0	1	1	0	1	0	1	orange
86	Indonesia	https://www.worldometers.info//img/flags/small/tn_id-flag.gif	2	1	0	0	0	1	0	0	red
87	Iran	https://www.worldometers.info//img/flags/small/tn_ir-flag.gif	3	1	1	0	0	1	0	0	red
88	Iraq	https://www.worldometers.info//img/flags/small/tn_iz-flag.gif	4	1	1	0	0	1	1	0	red
89	Ireland	https://www.worldometers.info//img/flags/small/tn_ei-flag.gif	3	0	1	0	0	1	0	1	white
90	Israel	https://www.worldometers.info//img/flags/small/tn_is-flag.gif	2	0	0	1	0	1	0	0	white
91	Italy	https://www.worldometers.info//img/flags/small/tn_it-flag.gif	3	1	1	0	0	1	0	0	white
92	Ivory-Coast	https://www.worldometers.info/img/flags/iv-flag.gif	3	1	1	0	0	1	0	0	white
93	Jamaica	https://www.worldometers.info//img/flags/small/tn_jm-flag.gif	3	0	1	0	1	0	1	0	green
94	Japan	https://www.worldometers.info//img/flags/small/tn_ja-flag.gif	2	1	0	0	0	1	0	0	white
95	Jordan	https://www.worldometers.info//img/flags/small/tn_jo-flag.gif	4	1	1	0	0	1	1	0	black
96	Kenya	https://www.worldometers.info//img/flags/small/tn_ke-flag.gif	4	1	1	0	0	1	1	0	red
97	Kiribati	https://www.worldometers.info//img/flags/small/tn_kr-flag.gif	4	1	0	1	1	1	0	0	red
98	Kuwait	https://www.worldometers.info//img/flags/small/tn_ku-flag.gif	4	1	1	0	0	1	1	0	green
99	Laos	https://www.worldometers.info//img/flags/small/tn_la-flag.gif	3	1	0	1	0	1	0	0	red
100	Lebanon	https://www.worldometers.info//img/flags/small/tn_le-flag.gif	4	1	1	0	0	1	0	1	red
101	Lesotho	https://www.worldometers.info//img/flags/small/tn_lt-flag.gif	4	1	1	1	0	1	0	0	blue
102	Liberia	https://www.worldometers.info//img/flags/small/tn_li-flag.gif	3	1	0	1	0	1	0	0	red
103	Libya	https://www.worldometers.info//img/flags/small/tn_ly-flag.gif	1	0	1	0	0	0	0	0	green
104	Liechtenstein	https://www.worldometers.info//img/flags/small/tn_ls-flag.gif	3	1	0	1	1	0	0	0	red
105	Luxembourg	https://www.worldometers.info//img/flags/small/tn_lu-flag.gif	3	1	0	1	0	1	0	0	red
106	Madagascar	https://www.worldometers.info//img/flags/small/tn_ma-flag.gif	3	1	1	0	0	1	0	0	red
107	Malawi	https://www.worldometers.info//img/flags/small/tn_mi-flag.gif	3	1	1	0	0	0	1	0	red
108	Malaysia	https://www.worldometers.info//img/flags/small/tn_my-flag.gif	4	1	0	1	1	1	0	0	red
109	Maldive-Islands	https://www.worldometers.info//img/flags/small/tn_mv-flag.gif	3	1	1	0	0	1	0	0	red
110	Mali	https://www.worldometers.info//img/flags/small/tn_ml-flag.gif	3	1	1	0	1	0	0	0	gold
111	Malta	https://www.worldometers.info//img/flags/small/tn_mt-flag.gif	3	1	0	0	0	1	1	0	red
112	Mauritania	https://www.worldometers.info//img/flags/small/tn_mr-flag.gif	2	0	1	0	1	0	0	0	green
113	Mauritius	https://www.worldometers.info//img/flags/small/tn_mp-flag.gif	4	1	1	1	1	0	0	0	red
114	Mexico	https://www.worldometers.info//img/flags/small/tn_mx-flag.gif	4	1	1	0	0	1	0	1	green
115	Micronesia	https://www.worldometers.info//img/flags/small/tn_fm-flag.gif	2	0	0	1	0	1	0	0	blue
116	Monaco	https://www.worldometers.info//img/flags/small/tn_mn-flag.gif	2	1	0	0	0	1	0	0	red
117	Mongolia	https://www.worldometers.info//img/flags/small/tn_mg-flag.gif	3	1	0	1	1	0	0	0	red
118	Montenegro 	https://www.worldometers.info//img/flags/small/tn_mj-flag.gif	5	1	1	1	1	0	0	1	red
119	Montserrat	https://www.worldometers.info/img/flags/small/tn_mh-flag.gif	7	1	1	1	1	1	1	0	blue
120	Morocco	https://www.worldometers.info//img/flags/small/tn_mo-flag.gif	2	1	1	0	0	0	0	0	red
121	Mozambique	https://www.worldometers.info//img/flags/small/tn_mz-flag.gif	5	1	1	0	1	1	1	0	gold
122	Myanmar	https://www.worldometers.info//img/flags/small/tn_bm-flag.gif	0	1	1	0	1	1	0	0	gold
123	Nauru	https://www.worldometers.info//img/flags/small/tn_nr-flag.gif	3	0	0	1	1	1	0	0	blue
124	Nepal	https://www.worldometers.info//img/flags/small/tn_np-flag.gif	3	0	0	1	0	1	0	1	brown
125	Netherlands	https://www.worldometers.info//img/flags/small/tn_nl-flag.gif	3	1	0	1	0	1	0	0	red
126	New-Zealand	https://www.worldometers.info//img/flags/small/tn_nz-flag.gif	3	1	0	1	0	1	0	0	blue
127	Nicaragua	https://www.worldometers.info//img/flags/small/tn_nu-flag.gif	2	0	0	1	0	1	0	0	blue
128	Niger	https://www.worldometers.info//img/flags/small/tn_ng-flag.gif	3	0	1	0	0	1	0	1	orange
129	Nigeria	https://www.worldometers.info//img/flags/small/tn_ni-flag.gif	2	0	1	0	0	1	0	0	green
130	North Macedonia	https://www.worldometers.info//img/flags/small/tn_mk-flag.gif	2	1	0	0	1	0	0	0	red
131	North-Korea	https://www.worldometers.info//img/flags/small/tn_kn-flag.gif	3	1	0	1	0	1	0	0	blue
132	Norway	https://www.worldometers.info//img/flags/small/tn_no-flag.gif	3	1	0	1	0	1	0	0	red
133	Oman	https://www.worldometers.info//img/flags/small/tn_mu-flag.gif	3	1	1	0	0	1	0	0	red
134	Pakistan	https://www.worldometers.info//img/flags/small/tn_pk-flag.gif	2	0	1	0	0	1	0	0	green
135	Palestine 	https://www.worldometers.info//img/flags/small/tn_palestine-flag.gif	4	1	1	0	0	1	1	0	black
136	Panama	https://www.worldometers.info//img/flags/small/tn_pm-flag.gif	3	1	0	1	0	1	0	0	red
137	Papua-New-Guinea	https://www.worldometers.info//img/flags/small/tn_pp-flag.gif	4	1	0	0	1	1	1	0	black
138	Parguay	https://www.worldometers.info//img/flags/small/tn_pa-flag.gif	6	1	1	1	1	1	1	0	red
139	Peru	https://www.worldometers.info//img/flags/small/tn_pe-flag.gif	2	1	0	0	0	1	0	0	red
140	Philippines	https://www.worldometers.info//img/flags/small/tn_rp-flag.gif	4	1	0	1	1	1	0	0	blue
141	Poland	https://www.worldometers.info//img/flags/small/tn_pl-flag.gif	2	1	0	0	0	1	0	0	white
142	Portugal	https://www.worldometers.info//img/flags/small/tn_po-flag.gif	5	1	1	1	1	1	0	0	red
143	Puerto-Rico	https://www.worldometers.info/img/flags/small/tn_rq-flag.gif	3	1	0	1	0	1	0	0	red
144	Qatar	https://www.worldometers.info//img/flags/small/tn_qa-flag.gif	2	0	0	0	0	1	0	1	brown
145	Romania	https://www.worldometers.info//img/flags/small/tn_ro-flag.gif	7	1	1	1	1	1	0	1	red
146	Russia 	https://www.worldometers.info//img/flags/small/tn_rs-flag.gif	3	1	0	1	0	1	0	0	white 
147	Rwanda	https://www.worldometers.info//img/flags/small/tn_rw-flag.gif	4	1	1	0	1	0	1	0	red
148	San-Marino	https://www.worldometers.info//img/flags/small/tn_sm-flag.gif	2	0	0	1	0	1	0	0	white
149	Sao-Tome	https://www.worldometers.info//img/flags/small/tn_tp-flag.gif	4	1	1	0	1	0	1	0	green
150	Saudi-Arabia	https://www.worldometers.info//img/flags/small/tn_sa-flag.gif	2	0	1	0	0	1	0	0	green
151	Senegal	https://www.worldometers.info//img/flags/small/tn_sg-flag.gif	3	1	1	0	1	0	0	0	green
152	Serbia 	https://www.worldometers.info//img/flags/small/tn_ri-flag.gif	4	1	0	1	1	1	0	0	white
153	Seychelles	https://www.worldometers.info//img/flags/small/tn_se-flag.gif	3	1	1	0	0	1	0	0	red
154	Sierra-Leone	https://www.worldometers.info//img/flags/small/tn_sl-flag.gif	3	0	1	1	0	1	0	0	green
155	Singapore	https://www.worldometers.info//img/flags/small/tn_sn-flag.gif	2	1	0	0	0	1	0	0	white
156	Slovenia 	https://www.worldometers.info//img/flags/small/tn_si-flag.gif	4	1	0	1	1	1	0	0	blue
157	Soloman-Islands	https://www.worldometers.info//img/flags/small/tn_bp-flag.gif	4	0	1	1	1	1	0	0	green
158	Somalia	https://www.worldometers.info//img/flags/small/tn_so-flag.gif	2	0	0	1	0	1	0	0	blue
159	South-Africa	https://www.worldometers.info//img/flags/small/tn_sf-flag.gif	5	1	1	1	0	1	0	1	orange
160	South-Korea	https://www.worldometers.info//img/flags/small/tn_ks-flag.gif	4	1	0	1	0	1	1	0	white
161	Spain	https://www.worldometers.info//img/flags/small/tn_sp-flag.gif	2	1	0	0	1	0	0	0	red
162	Sri-Lanka	https://www.worldometers.info//img/flags/small/tn_ce-flag.gif	4	0	1	0	1	0	0	1	gold
163	St-Helena	https://www.worldometers.info/img/flags/small/tn_sh-flag.gif	7	1	1	1	1	1	0	1	blue
164	St-Kitts-Nevis	https://www.worldometers.info//img/flags/small/tn_sc-flag.gif	5	1	1	0	1	1	1	0	green
165	St-Lucia	https://www.worldometers.info//img/flags/small/tn_st-flag.gif	4	0	0	1	1	1	1	0	blue
166	St-Vincent	https://www.worldometers.info//img/flags/small/tn_vc-flag.gif	4	0	1	1	1	1	0	0	green
167	Sudan	https://www.worldometers.info//img/flags/small/tn_su-flag.gif	4	1	1	0	0	1	1	0	red
168	Surinam	https://www.worldometers.info//img/flags/small/tn_ns-flag.gif	4	1	1	0	1	1	0	0	red
169	Sweden	https://www.worldometers.info//img/flags/small/tn_sw-flag.gif	2	0	0	1	1	0	0	0	blue
170	Switzerland	https://www.worldometers.info//img/flags/small/tn_sz-flag.gif	2	1	0	0	0	1	0	0	red
171	Syria	https://www.worldometers.info//img/flags/small/tn_sy-flag.gif	4	1	1	0	0	1	1	0	red
172	Taiwan	https://www.worldometers.info/img/flags/tw-flag.gif	3	1	0	1	0	1	0	0	red
173	Tajikistan	https://www.worldometers.info//img/flags/small/tn_ti-flag.gif	4	1	1	0	1	1	0	0	red
174	Tanzania	https://www.worldometers.info//img/flags/small/tn_tz-flag.gif	4	0	1	1	1	0	1	0	green
175	Thailand	https://www.worldometers.info//img/flags/small/tn_th-flag.gif	3	1	0	1	0	1	0	0	red
176	Timor-Leste	https://www.worldometers.info//img/flags/small/tn_tt-flag.gif	4	1	0	0	1	1	1	0	red
177	Togo	https://www.worldometers.info//img/flags/small/tn_to-flag.gif	4	1	1	0	1	1	0	0	green
178	Tonga	https://www.worldometers.info//img/flags/small/tn_tn-flag.gif	2	1	0	0	0	1	0	0	red
179	Trinidad-Tobago	https://www.worldometers.info//img/flags/small/tn_td-flag.gif	3	1	0	0	0	1	1	0	red
180	Tunisia	https://www.worldometers.info//img/flags/small/tn_ts-flag.gif	2	1	0	0	0	1	0	0	red
181	Turkey	https://www.worldometers.info//img/flags/small/tn_tu-flag.gif	2	1	0	0	0	1	0	0	red
182	Turkmenistan 	https://www.worldometers.info//img/flags/small/tn_tx-flag.gif	4	1	1	0	1	1	0	0	green 
183	Turks-Cocos-Islands	https://www.worldometers.info/img/flags/tk-flag.gif	6	1	1	1	1	1	0	1	blue
184	Tuvalu	https://www.worldometers.info//img/flags/small/tn_tv-flag.gif	5	1	0	1	1	1	0	0	blue
185	UAE	https://www.worldometers.info//img/flags/small/tn_ae-flag.gif	4	1	1	0	0	1	1	0	green
186	Uganda	https://www.worldometers.info//img/flags/small/tn_ug-flag.gif	5	1	0	0	1	1	1	0	gold
187	UK	https://www.worldometers.info//img/flags/small/tn_uk-flag.gif	3	1	0	1	0	1	0	0	red
188	Ukraine 	https://www.worldometers.info//img/flags/small/tn_up-flag.gif	2	0	0	1	1	0	0	0	blue
189	Uruguay	https://www.worldometers.info//img/flags/small/tn_uy-flag.gif	3	0	0	1	1	1	0	0	white
190	USA	https://www.worldometers.info//img/flags/small/tn_us-flag.gif	3	1	0	1	0	1	0	0	white
191	US-Virgin-Isles	https://www.worldometers.info/img/flags/vq-flag.gif	6	1	1	1	1	1	0	0	white
192	Vanuatu	https://www.worldometers.info//img/flags/small/tn_nh-flag.gif	4	1	1	0	1	0	1	0	red
193	Venezuela	https://www.worldometers.info//img/flags/small/tn_ve-flag.gif	7	1	1	1	1	1	1	1	red
194	Vietnam	https://www.worldometers.info//img/flags/small/tn_vm-flag.gif	2	1	0	0	1	0	0	0	red
195	Western-Samoa	https://www.worldometers.info//img/flags/small/tn_ws-flag.gif	3	1	0	1	0	1	0	0	red
196	Yemen	https://www.worldometers.info//img/flags/small/tn_ym-flag.gif	3	1	0	0	0	1	1	0	red
197	Zambia	https://www.worldometers.info//img/flags/small/tn_za-flag.gif	4	1	1	0	0	0	1	1	green
198	Zimbabwe	https://www.worldometers.info//img/flags/small/tn_zi-flag.gif	5	1	1	0	1	1	1	0	green
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
194	194
195	195
196	196
197	197
198	198
\.


--
-- PostgreSQL database dump complete
--

