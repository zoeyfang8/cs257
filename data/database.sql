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
5	Angola	1247	4
6	Anguilla	0	1
7	Antigua-Barbuda	0	1
8	Argentina	2777	2
9	Australia	7690	6
10	Austria	84	3
11	Bahamas	19	1
12	Bahrain	1	5
13	Bangladesh	143	5
14	Barbados	0	1
15	Belgium	31	3
16	Belize	23	1
17	Benin	113	4
18	Bermuda	0	1
19	Bhutan	47	5
20	Bolivia	1099	2
21	Bosnia-Herzegovina	51	3
22	Botswana	600	4
23	Brazil	8512	2
24	British-Virgin-Isles	0	1
25	Brunei	6	5
26	Bulgaria	111	3
27	Burkina	274	4
28	Burma	678	5
29	Burundi	28	4
30	Cambodia	181	5
31	Cameroon	474	4
32	Canada	9976	1
33	Cape-Verde-Islands	4	4
34	Cayman-Islands	0	1
35	Central-African-Republic	623	4
36	Chad	1284	4
37	Chile	757	2
38	China	9561	5
39	Colombia	1139	2
40	Comorro-Islands	2	4
41	Congo	342	4
42	Cook-Islands	0	6
43	Costa-Rica	51	1
44	Croatia 	56	3
45	Cuba	115	1
46	Cyprus	9	3
47	Czechoslovakia	128	3
48	Denmark	43	3
49	Djibouti	22	4
50	Dominica	0	1
51	Dominican-Republic	49	1
52	Ecuador	284	2
53	Egypt	1001	4
54	El-Salvador	21	1
55	Equatorial-Guinea	28	4
56	Eswatini	17	4
57	Ethiopia	1222	4
58	Faeroes	1	3
59	Falklands-Malvinas	12	2
60	Fiji	18	6
61	Finland	337	3
62	France	547	3
63	French-Guiana	91	2
64	French-Polynesia	4	6
65	Gabon	268	4
66	Gambia	10	4
67	Germany-DDR	108	3
68	Germany-FRG	249	3
69	Ghana	239	4
70	Gibraltar	0	3
71	Greece	132	3
72	Greenland	2176	1
73	Grenada	0	1
74	Guam	0	6
75	Guatemala	109	1
76	Guinea	246	4
77	Guinea-Bissau	36	4
78	Guyana	215	2
79	Haiti	28	1
80	Honduras	112	1
81	Hong-Kong	1	5
82	Hungary	93	3
83	Iceland	103	3
84	India	3268	5
85	Indonesia	1904	6
86	Iran	1648	5
87	Iraq	435	5
88	Ireland	70	3
89	Israel	21	5
90	Italy	301	3
91	Ivory-Coast	323	4
92	Jamaica	11	1
93	Japan	372	5
94	Jordan	98	5
95	Kenya	583	4
96	Kiribati	0	6
97	Kuwait	18	5
98	Laos	236	5
99	Lebanon	10	5
100	Lesotho	30	4
101	Liberia	111	4
102	Libya	1760	4
103	Liechtenstein	0	3
104	Luxembourg	3	3
105	Madagascar	587	4
106	Malawi	118	4
107	Malaysia	333	5
108	Maldive-Islands	0	5
109	Mali	1240	4
110	Malta	0	3
111	Mauritania	1031	4
112	Mauritius	2	4
113	Mexico	1973	1
114	Micronesia	1	6
115	Monaco	0	3
116	Mongolia	1566	5
117	Montenegro 	13	3
118	Montserrat	0	1
119	Morocco	447	4
120	Mozambique	783	4
121	Myanmar	261	5
122	Nauru	0	6
123	Nepal	140	5
124	Netherlands	41	3
125	New-Zealand	268	6
126	Nicaragua	128	1
127	Niger	1267	4
128	Nigeria	925	4
129	North Macedonia	25	3
130	North-Korea	121	5
131	Norway	324	3
132	Oman	212	5
133	Pakistan	804	5
134	Palestine 	6	5
135	Panama	76	2
136	Papua-New-Guinea	463	6
137	Parguay	407	2
138	Peru	1285	2
139	Philippines	300	6
140	Poland	313	3
141	Portugal	92	3
142	Puerto-Rico	9	1
143	Qatar	11	5
144	Romania	237	3
145	Russia 	17098	5
146	Rwanda	26	4
147	San-Marino	0	3
148	Sao-Tome	0	4
149	Saudi-Arabia	2150	5
150	Senegal	196	4
151	Serbia 	88	3
152	Seychelles	0	4
153	Sierra-Leone	72	4
154	Singapore	1	5
155	Slovenia 	20	3
156	Soloman-Islands	30	6
157	Somalia	637	4
158	South-Africa	1221	4
159	South-Korea	99	5
160	Spain	505	3
161	Sri-Lanka	66	5
162	St-Helena	0	4
163	St-Kitts-Nevis	0	1
164	St-Lucia	0	1
165	St-Vincent	0	1
166	Sudan	2506	4
167	Surinam	63	2
168	Sweden	450	3
169	Switzerland	41	3
170	Syria	185	5
171	Taiwan	36	5
172	Tajikistan	143	5
173	Tanzania	945	4
174	Thailand	514	5
175	Timor-Leste	5	5
176	Togo	57	4
177	Tonga	1	6
178	Trinidad-Tobago	5	2
179	Tunisia	164	4
180	Turkey	781	5
181	Turkmenistan 	189	5
182	Turks-Cocos-Islands	0	1
183	Tuvalu	0	6
184	UAE	84	5
185	Uganda	236	4
186	UK	245	3
187	Ukraine 	603	3
188	Uruguay	178	2
189	USA	9363	1
190	US-Virgin-Isles	0	1
191	Vanuatu	15	6
192	Venezuela	912	2
193	Vietnam	333	5
194	Western-Samoa	3	6
195	Yemen	455	5
196	Zambia	753	4
197	Zimbabwe	391	4
\.


--
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.flags (id, countryname, flagimage, colours, red, green, blue, gold, white, black, orange, mainhue) FROM stdin;
1	Afghanistan	https://upload.wikimedia.org/wikipedia/commons/c/cd/Flag_of_Afghanistan_%282013%E2%80%932021%29.svg	5	1	1	0	1	1	1	0	green
2	Albania	https://upload.wikimedia.org/wikipedia/commons/3/36/Flag_of_Albania.svg	3	1	0	0	1	0	1	0	red
3	Algeria	https://upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Algeria.svg	3	1	1	0	0	1	0	0	green
4	American-Samoa	https://upload.wikimedia.org/wikipedia/commons/8/87/Flag_of_American_Samoa.svg	5	1	0	1	1	1	0	1	blue
5	Angola	https://upload.wikimedia.org/wikipedia/commons/9/9d/Flag_of_Angola.svg	3	1	0	0	1	0	1	0	red
6	Anguilla	https://upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Anguilla.svg	3	0	0	1	0	1	0	1	white
7	Antigua-Barbuda	https://upload.wikimedia.org/wikipedia/commons/8/89/Flag_of_Antigua_and_Barbuda.svg	5	1	0	1	1	1	1	0	red
8	Argentina	https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg	2	0	0	1	0	1	0	0	blue
9	Australia	https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg	3	1	0	1	0	1	0	0	blue
10	Austria	https://upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_Austria.svg	2	1	0	0	0	1	0	0	red
11	Bahamas	https://upload.wikimedia.org/wikipedia/commons/9/93/Flag_of_the_Bahamas.svg	3	0	0	1	1	0	1	0	blue
12	Bahrain	https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Bahrain.svg	2	1	0	0	0	1	0	0	red
13	Bangladesh	https://upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bangladesh.svg	2	1	1	0	0	0	0	0	green
14	Barbados	https://upload.wikimedia.org/wikipedia/commons/e/ef/Flag_of_Barbados.svg	3	0	0	1	1	0	1	0	blue
15	Belgium	https://upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg	3	1	0	0	1	0	1	0	gold
16	Belize	https://upload.wikimedia.org/wikipedia/commons/e/e7/Flag_of_Belize.svg	8	1	1	1	1	1	1	1	blue
17	Benin	https://upload.wikimedia.org/wikipedia/commons/0/0a/Flag_of_Benin.svg	2	1	1	0	0	0	0	0	green
18	Bermuda	https://upload.wikimedia.org/wikipedia/commons/b/bf/Flag_of_Bermuda.svg	6	1	1	1	1	1	1	0	red
19	Bhutan	https://upload.wikimedia.org/wikipedia/commons/9/91/Flag_of_Bhutan.svg	4	1	0	0	0	1	1	1	orange
20	Bolivia	https://upload.wikimedia.org/wikipedia/commons/d/de/Flag_of_Bolivia_%28state%29.svg	3	1	1	0	1	0	0	0	red
21	Bosnia-Herzegovina	https://www.worldometers.info//img/flags/small/tn_bk-flag.gif	3	0	0	1	1	1	0	0	blue
22	Botswana	https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_Botswana.svg	3	0	0	1	0	1	1	0	blue
23	Brazil	https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg	4	0	1	1	1	1	0	0	green
24	British-Virgin-Isles	https://upload.wikimedia.org/wikipedia/commons/4/42/Flag_of_the_British_Virgin_Islands.svg	6	1	1	1	1	1	0	1	blue
25	Brunei	https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Brunei.svg	4	1	0	0	1	1	1	0	gold
26	Bulgaria	https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Bulgaria.svg	5	1	1	1	1	1	0	0	red
27	Burkina	https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Burkina_Faso.svg	3	1	1	0	1	0	0	0	red
28	Burma	https://upload.wikimedia.org/wikipedia/commons/8/8c/Flag_of_Myanmar.svg	3	1	0	1	0	1	0	0	red
29	Burundi	https://upload.wikimedia.org/wikipedia/commons/5/50/Flag_of_Burundi.svg	3	1	1	0	0	1	0	0	red
30	Cambodia	https://www.worldometers.info//img/flags/small/tn_cb-flag.gif	4	1	0	1	0	1	1	0	blue
31	Cameroon	https://upload.wikimedia.org/wikipedia/commons/4/4f/Flag_of_Cameroon.svg	3	1	1	0	1	0	0	0	gold
32	Canada	https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Canada_%28Pantone%29.svg	2	1	0	0	0	1	0	0	red
33	Cape-Verde-Islands	https://upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Cape_Verde.svg	5	1	1	0	1	0	1	1	gold
34	Cayman-Islands	https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_the_Cayman_Islands.svg	6	1	1	1	1	1	0	1	blue
35	Central-African-Republic	https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Central_African_Republic.svg	5	1	1	1	1	1	0	0	gold
36	Chad	https://upload.wikimedia.org/wikipedia/commons/4/4b/Flag_of_Chad.svg	3	1	0	1	1	0	0	0	gold
37	Chile	https://upload.wikimedia.org/wikipedia/commons/7/78/Flag_of_Chile.svg	3	1	0	1	0	1	0	0	red
38	China	https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg	2	1	0	0	1	0	0	0	red
39	Colombia	https://upload.wikimedia.org/wikipedia/commons/2/21/Flag_of_Colombia.svg	3	1	0	1	1	0	0	0	gold
40	Comorro-Islands	https://upload.wikimedia.org/wikipedia/commons/9/94/Flag_of_the_Comoros.svg	2	0	1	0	0	1	0	0	green
41	Congo	https://upload.wikimedia.org/wikipedia/commons/6/6f/Flag_of_the_Democratic_Republic_of_the_Congo.svg	3	1	1	0	1	0	0	0	red
42	Cook-Islands	https://upload.wikimedia.org/wikipedia/commons/3/35/Flag_of_the_Cook_Islands.svg	4	1	0	1	0	1	0	0	blue
43	Costa-Rica	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Costa_Rica_%28state%29.svg	3	1	0	1	0	1	0	0	blue
44	Croatia 	https://www.worldometers.info//img/flags/small/tn_hr-flag.gif	5	1	0	1	1	1	1	0	red
45	Cuba	https://upload.wikimedia.org/wikipedia/commons/b/bd/Flag_of_Cuba.svg	3	1	0	1	0	1	0	0	blue
46	Cyprus	https://upload.wikimedia.org/wikipedia/commons/d/d4/Flag_of_Cyprus.svg	3	0	1	0	1	1	0	0	white
47	Czechoslovakia	https://upload.wikimedia.org/wikipedia/commons/c/cb/Flag_of_the_Czech_Republic.svg	3	1	0	1	0	1	0	0	white
48	Denmark	https://upload.wikimedia.org/wikipedia/commons/9/9c/Flag_of_Denmark.svg	2	1	0	0	0	1	0	0	red
49	Djibouti	https://upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_Djibouti.svg	4	1	1	1	0	1	0	0	blue
50	Dominica	https://upload.wikimedia.org/wikipedia/commons/c/c4/Flag_of_Dominica.svg	6	1	1	1	1	1	1	0	green
51	Dominican-Republic	https://upload.wikimedia.org/wikipedia/commons/9/9f/Flag_of_the_Dominican_Republic.svg	3	1	0	1	0	1	0	0	blue
52	Ecuador	https://upload.wikimedia.org/wikipedia/commons/e/e8/Flag_of_Ecuador.svg	3	1	0	1	1	0	0	0	gold
53	Egypt	https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg	4	1	0	0	1	1	1	0	black
54	El-Salvador	https://upload.wikimedia.org/wikipedia/commons/3/34/Flag_of_El_Salvador.svg	2	0	0	1	0	1	0	0	blue
55	Equatorial-Guinea	https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Equatorial_Guinea.svg	4	1	1	1	0	1	0	0	green
56	Eswatini	https://www.worldometers.info//img/flags/small/tn_wz-flag.gif	5	1	0	1	1	1	1	0	blue
57	Ethiopia	https://upload.wikimedia.org/wikipedia/commons/7/71/Flag_of_Ethiopia.svg	3	1	1	0	1	0	0	0	green
58	Faeroes	https://upload.wikimedia.org/wikipedia/commons/3/3c/Flag_of_the_Faroe_Islands.svg	3	1	0	1	0	1	0	0	white
59	Falklands-Malvinas	https://upload.wikimedia.org/wikipedia/commons/8/83/Flag_of_the_Falkland_Islands.svg	6	1	1	1	1	1	0	0	blue
60	Fiji	https://upload.wikimedia.org/wikipedia/commons/b/ba/Flag_of_Fiji.svg	7	1	1	1	1	1	0	1	blue
61	Finland	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Finland.svg	2	0	0	1	0	1	0	0	white
62	France	https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg	3	1	0	1	0	1	0	0	white
63	French-Guiana	https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg	3	1	0	1	0	1	0	0	white
64	French-Polynesia	https://upload.wikimedia.org/wikipedia/commons/d/db/Flag_of_French_Polynesia.svg	5	1	0	1	1	1	1	0	red
65	Gabon	https://upload.wikimedia.org/wikipedia/commons/0/04/Flag_of_Gabon.svg	3	0	1	1	1	0	0	0	green
66	Gambia	https://en.wikipedia.org/wiki/File:Flag_of_The_Gambia.svg	4	1	1	1	0	1	0	0	red
67	Germany-DDR	https://upload.wikimedia.org/wikipedia/commons/a/a1/Flag_of_East_Germany.svg	3	1	0	0	1	0	1	0	gold
68	Germany-FRG	https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg	3	1	0	0	1	0	1	0	black
69	Ghana	https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Ghana.svg	4	1	1	0	1	0	1	0	red
70	Gibraltar	https://upload.wikimedia.org/wikipedia/commons/0/02/Flag_of_Gibraltar.svg	3	1	0	0	1	1	0	0	white
71	Greece	https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg	2	0	0	1	0	1	0	0	blue
72	Greenland	https://upload.wikimedia.org/wikipedia/commons/0/09/Flag_of_Greenland.svg	2	1	0	0	0	1	0	0	white
73	Grenada	https://upload.wikimedia.org/wikipedia/commons/b/bc/Flag_of_Grenada.svg	3	1	1	0	1	0	0	0	gold
74	Guam	https://upload.wikimedia.org/wikipedia/commons/0/07/Flag_of_Guam.svg	7	1	1	1	1	1	0	1	blue
75	Guatemala	https://upload.wikimedia.org/wikipedia/commons/e/ec/Flag_of_Guatemala.svg	2	0	0	1	0	1	0	0	blue
76	Guinea	https://upload.wikimedia.org/wikipedia/commons/e/ed/Flag_of_Guinea.svg	3	1	1	0	1	0	0	0	gold
77	Guinea-Bissau	https://upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_Guinea-Bissau.svg	4	1	1	0	1	0	1	0	gold
78	Guyana	https://upload.wikimedia.org/wikipedia/commons/9/99/Flag_of_Guyana.svg	5	1	1	0	1	1	1	0	green
79	Haiti	https://www.worldometers.info//img/flags/small/tn_ha-flag.gif	2	1	0	0	0	0	1	0	black
80	Honduras	https://www.worldometers.info//img/flags/small/tn_vt-flag.gif	2	0	0	1	0	1	0	0	blue
81	Hong-Kong	https://www.worldometers.info/img/flags/small/tn_hk-flag.gif	6	1	1	1	1	1	0	1	blue
82	Hungary	https://www.worldometers.info//img/flags/small/tn_hu-flag.gif	3	1	1	0	0	1	0	0	red
83	Iceland	https://www.worldometers.info//img/flags/small/tn_ic-flag.gif	3	1	0	1	0	1	0	0	blue
84	India	https://www.worldometers.info//img/flags/small/tn_in-flag.gif	4	0	1	1	0	1	0	1	orange
85	Indonesia	https://www.worldometers.info//img/flags/small/tn_id-flag.gif	2	1	0	0	0	1	0	0	red
86	Iran	https://www.worldometers.info//img/flags/small/tn_ir-flag.gif	3	1	1	0	0	1	0	0	red
87	Iraq	https://www.worldometers.info//img/flags/small/tn_iz-flag.gif	4	1	1	0	0	1	1	0	red
88	Ireland	https://www.worldometers.info//img/flags/small/tn_ei-flag.gif	3	0	1	0	0	1	0	1	white
89	Israel	https://www.worldometers.info//img/flags/small/tn_is-flag.gif	2	0	0	1	0	1	0	0	white
90	Italy	https://www.worldometers.info//img/flags/small/tn_it-flag.gif	3	1	1	0	0	1	0	0	white
91	Ivory-Coast	https://www.worldometers.info/img/flags/iv-flag.gif	3	1	1	0	0	1	0	0	white
92	Jamaica	https://www.worldometers.info//img/flags/small/tn_jm-flag.gif	3	0	1	0	1	0	1	0	green
93	Japan	https://www.worldometers.info//img/flags/small/tn_ja-flag.gif	2	1	0	0	0	1	0	0	white
94	Jordan	https://www.worldometers.info//img/flags/small/tn_jo-flag.gif	4	1	1	0	0	1	1	0	black
95	Kenya	https://www.worldometers.info//img/flags/small/tn_ke-flag.gif	4	1	1	0	0	1	1	0	red
96	Kiribati	https://www.worldometers.info//img/flags/small/tn_kr-flag.gif	4	1	0	1	1	1	0	0	red
97	Kuwait	https://www.worldometers.info//img/flags/small/tn_ku-flag.gif	4	1	1	0	0	1	1	0	green
98	Laos	https://www.worldometers.info//img/flags/small/tn_la-flag.gif	3	1	0	1	0	1	0	0	red
99	Lebanon	https://www.worldometers.info//img/flags/small/tn_le-flag.gif	4	1	1	0	0	1	0	1	red
100	Lesotho	https://www.worldometers.info//img/flags/small/tn_lt-flag.gif	4	1	1	1	0	1	0	0	blue
101	Liberia	https://www.worldometers.info//img/flags/small/tn_li-flag.gif	3	1	0	1	0	1	0	0	red
102	Libya	https://www.worldometers.info//img/flags/small/tn_ly-flag.gif	1	0	1	0	0	0	0	0	green
103	Liechtenstein	https://www.worldometers.info//img/flags/small/tn_ls-flag.gif	3	1	0	1	1	0	0	0	red
104	Luxembourg	https://www.worldometers.info//img/flags/small/tn_lu-flag.gif	3	1	0	1	0	1	0	0	red
105	Madagascar	https://www.worldometers.info//img/flags/small/tn_ma-flag.gif	3	1	1	0	0	1	0	0	red
106	Malawi	https://www.worldometers.info//img/flags/small/tn_mi-flag.gif	3	1	1	0	0	0	1	0	red
107	Malaysia	https://www.worldometers.info//img/flags/small/tn_my-flag.gif	4	1	0	1	1	1	0	0	red
108	Maldive-Islands	https://www.worldometers.info//img/flags/small/tn_mv-flag.gif	3	1	1	0	0	1	0	0	red
109	Mali	https://www.worldometers.info//img/flags/small/tn_ml-flag.gif	3	1	1	0	1	0	0	0	gold
110	Malta	https://www.worldometers.info//img/flags/small/tn_mt-flag.gif	3	1	0	0	0	1	1	0	red
111	Mauritania	https://www.worldometers.info//img/flags/small/tn_mr-flag.gif	2	0	1	0	1	0	0	0	green
112	Mauritius	https://www.worldometers.info//img/flags/small/tn_mp-flag.gif	4	1	1	1	1	0	0	0	red
113	Mexico	https://www.worldometers.info//img/flags/small/tn_mx-flag.gif	4	1	1	0	0	1	0	1	green
114	Micronesia	https://www.worldometers.info//img/flags/small/tn_fm-flag.gif	2	0	0	1	0	1	0	0	blue
115	Monaco	https://www.worldometers.info//img/flags/small/tn_mn-flag.gif	2	1	0	0	0	1	0	0	red
116	Mongolia	https://www.worldometers.info//img/flags/small/tn_mg-flag.gif	3	1	0	1	1	0	0	0	red
117	Montenegro 	https://www.worldometers.info//img/flags/small/tn_mj-flag.gif	5	1	1	1	1	0	0	1	red
118	Montserrat	https://www.worldometers.info/img/flags/small/tn_mh-flag.gif	7	1	1	1	1	1	1	0	blue
119	Morocco	https://www.worldometers.info//img/flags/small/tn_mo-flag.gif	2	1	1	0	0	0	0	0	red
120	Mozambique	https://www.worldometers.info//img/flags/small/tn_mz-flag.gif	5	1	1	0	1	1	1	0	gold
121	Myanmar	https://www.worldometers.info//img/flags/small/tn_bm-flag.gif	0	1	1	0	1	1	0	0	gold
122	Nauru	https://www.worldometers.info//img/flags/small/tn_nr-flag.gif	3	0	0	1	1	1	0	0	blue
123	Nepal	https://www.worldometers.info//img/flags/small/tn_np-flag.gif	3	0	0	1	0	1	0	1	brown
124	Netherlands	https://www.worldometers.info//img/flags/small/tn_nl-flag.gif	3	1	0	1	0	1	0	0	red
125	New-Zealand	https://www.worldometers.info//img/flags/small/tn_nz-flag.gif	3	1	0	1	0	1	0	0	blue
126	Nicaragua	https://www.worldometers.info//img/flags/small/tn_nu-flag.gif	2	0	0	1	0	1	0	0	blue
127	Niger	https://www.worldometers.info//img/flags/small/tn_ng-flag.gif	3	0	1	0	0	1	0	1	orange
128	Nigeria	https://www.worldometers.info//img/flags/small/tn_ni-flag.gif	2	0	1	0	0	1	0	0	green
129	North Macedonia	https://www.worldometers.info//img/flags/small/tn_mk-flag.gif	2	1	0	0	1	0	0	0	red
130	North-Korea	https://www.worldometers.info//img/flags/small/tn_kn-flag.gif	3	1	0	1	0	1	0	0	blue
131	Norway	https://www.worldometers.info//img/flags/small/tn_no-flag.gif	3	1	0	1	0	1	0	0	red
132	Oman	https://www.worldometers.info//img/flags/small/tn_mu-flag.gif	3	1	1	0	0	1	0	0	red
133	Pakistan	https://www.worldometers.info//img/flags/small/tn_pk-flag.gif	2	0	1	0	0	1	0	0	green
134	Palestine 	https://www.worldometers.info//img/flags/small/tn_palestine-flag.gif	4	1	1	0	0	1	1	0	black
135	Panama	https://www.worldometers.info//img/flags/small/tn_pm-flag.gif	3	1	0	1	0	1	0	0	red
136	Papua-New-Guinea	https://www.worldometers.info//img/flags/small/tn_pp-flag.gif	4	1	0	0	1	1	1	0	black
137	Parguay	https://www.worldometers.info//img/flags/small/tn_pa-flag.gif	6	1	1	1	1	1	1	0	red
138	Peru	https://www.worldometers.info//img/flags/small/tn_pe-flag.gif	2	1	0	0	0	1	0	0	red
139	Philippines	https://www.worldometers.info//img/flags/small/tn_rp-flag.gif	4	1	0	1	1	1	0	0	blue
140	Poland	https://www.worldometers.info//img/flags/small/tn_pl-flag.gif	2	1	0	0	0	1	0	0	white
141	Portugal	https://www.worldometers.info//img/flags/small/tn_po-flag.gif	5	1	1	1	1	1	0	0	red
142	Puerto-Rico	https://www.worldometers.info/img/flags/small/tn_rq-flag.gif	3	1	0	1	0	1	0	0	red
143	Qatar	https://www.worldometers.info//img/flags/small/tn_qa-flag.gif	2	0	0	0	0	1	0	1	brown
144	Romania	https://www.worldometers.info//img/flags/small/tn_ro-flag.gif	7	1	1	1	1	1	0	1	red
145	Russia 	https://www.worldometers.info//img/flags/small/tn_rs-flag.gif	3	1	0	1	0	1	0	0	white 
146	Rwanda	https://www.worldometers.info//img/flags/small/tn_rw-flag.gif	4	1	1	0	1	0	1	0	red
147	San-Marino	https://www.worldometers.info//img/flags/small/tn_sm-flag.gif	2	0	0	1	0	1	0	0	white
148	Sao-Tome	https://www.worldometers.info//img/flags/small/tn_tp-flag.gif	4	1	1	0	1	0	1	0	green
149	Saudi-Arabia	https://www.worldometers.info//img/flags/small/tn_sa-flag.gif	2	0	1	0	0	1	0	0	green
150	Senegal	https://www.worldometers.info//img/flags/small/tn_sg-flag.gif	3	1	1	0	1	0	0	0	green
151	Serbia 	https://www.worldometers.info//img/flags/small/tn_ri-flag.gif	4	1	0	1	1	1	0	0	white
152	Seychelles	https://www.worldometers.info//img/flags/small/tn_se-flag.gif	3	1	1	0	0	1	0	0	red
153	Sierra-Leone	https://www.worldometers.info//img/flags/small/tn_sl-flag.gif	3	0	1	1	0	1	0	0	green
154	Singapore	https://www.worldometers.info//img/flags/small/tn_sn-flag.gif	2	1	0	0	0	1	0	0	white
155	Slovenia 	https://www.worldometers.info//img/flags/small/tn_si-flag.gif	4	1	0	1	1	1	0	0	blue
156	Soloman-Islands	https://www.worldometers.info//img/flags/small/tn_bp-flag.gif	4	0	1	1	1	1	0	0	green
157	Somalia	https://www.worldometers.info//img/flags/small/tn_so-flag.gif	2	0	0	1	0	1	0	0	blue
158	South-Africa	https://www.worldometers.info//img/flags/small/tn_sf-flag.gif	5	1	1	1	0	1	0	1	orange
159	South-Korea	https://www.worldometers.info//img/flags/small/tn_ks-flag.gif	4	1	0	1	0	1	1	0	white
160	Spain	https://www.worldometers.info//img/flags/small/tn_sp-flag.gif	2	1	0	0	1	0	0	0	red
161	Sri-Lanka	https://www.worldometers.info//img/flags/small/tn_ce-flag.gif	4	0	1	0	1	0	0	1	gold
162	St-Helena	https://www.worldometers.info/img/flags/small/tn_sh-flag.gif	7	1	1	1	1	1	0	1	blue
163	St-Kitts-Nevis	https://www.worldometers.info//img/flags/small/tn_sc-flag.gif	5	1	1	0	1	1	1	0	green
164	St-Lucia	https://www.worldometers.info//img/flags/small/tn_st-flag.gif	4	0	0	1	1	1	1	0	blue
165	St-Vincent	https://www.worldometers.info//img/flags/small/tn_vc-flag.gif	4	0	1	1	1	1	0	0	green
166	Sudan	https://www.worldometers.info//img/flags/small/tn_su-flag.gif	4	1	1	0	0	1	1	0	red
167	Surinam	https://www.worldometers.info//img/flags/small/tn_ns-flag.gif	4	1	1	0	1	1	0	0	red
168	Sweden	https://www.worldometers.info//img/flags/small/tn_sw-flag.gif	2	0	0	1	1	0	0	0	blue
169	Switzerland	https://www.worldometers.info//img/flags/small/tn_sz-flag.gif	2	1	0	0	0	1	0	0	red
170	Syria	https://www.worldometers.info//img/flags/small/tn_sy-flag.gif	4	1	1	0	0	1	1	0	red
171	Taiwan	https://www.worldometers.info/img/flags/tw-flag.gif	3	1	0	1	0	1	0	0	red
172	Tajikistan	https://www.worldometers.info//img/flags/small/tn_ti-flag.gif	4	1	1	0	1	1	0	0	red
173	Tanzania	https://www.worldometers.info//img/flags/small/tn_tz-flag.gif	4	0	1	1	1	0	1	0	green
174	Thailand	https://www.worldometers.info//img/flags/small/tn_th-flag.gif	3	1	0	1	0	1	0	0	red
175	Timor-Leste	https://www.worldometers.info//img/flags/small/tn_tt-flag.gif	4	1	0	0	1	1	1	0	red
176	Togo	https://www.worldometers.info//img/flags/small/tn_to-flag.gif	4	1	1	0	1	1	0	0	green
177	Tonga	https://www.worldometers.info//img/flags/small/tn_tn-flag.gif	2	1	0	0	0	1	0	0	red
178	Trinidad-Tobago	https://www.worldometers.info//img/flags/small/tn_td-flag.gif	3	1	0	0	0	1	1	0	red
179	Tunisia	https://www.worldometers.info//img/flags/small/tn_ts-flag.gif	2	1	0	0	0	1	0	0	red
180	Turkey	https://www.worldometers.info//img/flags/small/tn_tu-flag.gif	2	1	0	0	0	1	0	0	red
181	Turkmenistan 	https://www.worldometers.info//img/flags/small/tn_tx-flag.gif	4	1	1	0	1	1	0	0	green 
182	Turks-Cocos-Islands	https://www.worldometers.info/img/flags/tk-flag.gif	6	1	1	1	1	1	0	1	blue
183	Tuvalu	https://www.worldometers.info//img/flags/small/tn_tv-flag.gif	5	1	0	1	1	1	0	0	blue
184	UAE	https://www.worldometers.info//img/flags/small/tn_ae-flag.gif	4	1	1	0	0	1	1	0	green
185	Uganda	https://www.worldometers.info//img/flags/small/tn_ug-flag.gif	5	1	0	0	1	1	1	0	gold
186	UK	https://www.worldometers.info//img/flags/small/tn_uk-flag.gif	3	1	0	1	0	1	0	0	red
187	Ukraine 	https://www.worldometers.info//img/flags/small/tn_up-flag.gif	2	0	0	1	1	0	0	0	blue
188	Uruguay	https://www.worldometers.info//img/flags/small/tn_uy-flag.gif	3	0	0	1	1	1	0	0	white
189	USA	https://www.worldometers.info//img/flags/small/tn_us-flag.gif	3	1	0	1	0	1	0	0	white
190	US-Virgin-Isles	https://www.worldometers.info/img/flags/vq-flag.gif	6	1	1	1	1	1	0	0	white
191	Vanuatu	https://www.worldometers.info//img/flags/small/tn_nh-flag.gif	4	1	1	0	1	0	1	0	red
192	Venezuela	https://www.worldometers.info//img/flags/small/tn_ve-flag.gif	7	1	1	1	1	1	1	1	red
193	Vietnam	https://www.worldometers.info//img/flags/small/tn_vm-flag.gif	2	1	0	0	1	0	0	0	red
194	Western-Samoa	https://www.worldometers.info//img/flags/small/tn_ws-flag.gif	3	1	0	1	0	1	0	0	red
195	Yemen	https://www.worldometers.info//img/flags/small/tn_ym-flag.gif	3	1	0	0	0	1	1	0	red
196	Zambia	https://www.worldometers.info//img/flags/small/tn_za-flag.gif	4	1	1	0	0	0	1	1	green
197	Zimbabwe	https://www.worldometers.info//img/flags/small/tn_zi-flag.gif	5	1	1	0	1	1	1	0	green
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
\.


--
-- PostgreSQL database dump complete
--

