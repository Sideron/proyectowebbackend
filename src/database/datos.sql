--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2024-12-01 13:21:49

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
-- TOC entry 3417 (class 0 OID 24580)
-- Dependencies: 215
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3419 (class 0 OID 24587)
-- Dependencies: 217
-- Data for Name: administradores; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3421 (class 0 OID 24599)
-- Dependencies: 219
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3427 (class 0 OID 24636)
-- Dependencies: 225
-- Data for Name: bibliotecas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3423 (class 0 OID 24611)
-- Dependencies: 221
-- Data for Name: carritos_de_compras; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3429 (class 0 OID 24648)
-- Dependencies: 227
-- Data for Name: generos; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--

INSERT INTO public.generos VALUES (1, 'Acción');
INSERT INTO public.generos VALUES (2, 'Aventura');
INSERT INTO public.generos VALUES (3, 'Casual');
INSERT INTO public.generos VALUES (4, 'Estrategia');
INSERT INTO public.generos VALUES (5, 'Rol');
INSERT INTO public.generos VALUES (6, 'Simuladores');
INSERT INTO public.generos VALUES (7, 'Free to Play');
INSERT INTO public.generos VALUES (8, 'Indie');


--
-- TOC entry 3431 (class 0 OID 24655)
-- Dependencies: 229
-- Data for Name: juegos; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--

INSERT INTO public.juegos VALUES (1, 'Among Us', 11.99, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/945360/header.jpg');
INSERT INTO public.juegos VALUES (2, 'Call of Duty®: Black Ops III', 217.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/311210/header.jpg');
INSERT INTO public.juegos VALUES (3, 'Cyberpunk 2077', 199.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1091500/header.jpg');
INSERT INTO public.juegos VALUES (4, 'DRAGON BALL: Sparking! ZERO', 207.50, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1790600/header.jpg');
INSERT INTO public.juegos VALUES (5, 'ELDEN RING', 172.50, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1245620/header.jpg');
INSERT INTO public.juegos VALUES (6, 'Goat Simulator', 23.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/265930/header.jpg');
INSERT INTO public.juegos VALUES (7, 'God of War', 159.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1593500/header.jpg');
INSERT INTO public.juegos VALUES (8, 'Hades', 53.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1145360/header.jpg');
INSERT INTO public.juegos VALUES (9, 'Metro Exodus', 75.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/412020/header.jpg');
INSERT INTO public.juegos VALUES (10, 'Yu-Gi-Oh! Master Duel', 0.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1449850/header.jpg');
INSERT INTO public.juegos VALUES (11, 'Overwatch® 2', 0.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2357570/header.jpg');
INSERT INTO public.juegos VALUES (12, 'Counter-Strike 2', 0.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/730/header.jpg');


--
-- TOC entry 3437 (class 0 OID 24705)
-- Dependencies: 235
-- Data for Name: juegos_bibliotecas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3433 (class 0 OID 24669)
-- Dependencies: 231
-- Data for Name: juegos_carritos_de_compras; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3441 (class 0 OID 24746)
-- Dependencies: 239
-- Data for Name: juegos_generos; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--

INSERT INTO public.juegos_generos VALUES (1, 1, 3);
INSERT INTO public.juegos_generos VALUES (2, 2, 1);
INSERT INTO public.juegos_generos VALUES (3, 2, 2);
INSERT INTO public.juegos_generos VALUES (4, 3, 5);
INSERT INTO public.juegos_generos VALUES (5, 4, 1);
INSERT INTO public.juegos_generos VALUES (6, 5, 1);
INSERT INTO public.juegos_generos VALUES (7, 5, 5);
INSERT INTO public.juegos_generos VALUES (8, 6, 3);
INSERT INTO public.juegos_generos VALUES (9, 6, 6);
INSERT INTO public.juegos_generos VALUES (10, 6, 8);
INSERT INTO public.juegos_generos VALUES (11, 7, 1);
INSERT INTO public.juegos_generos VALUES (12, 7, 2);
INSERT INTO public.juegos_generos VALUES (13, 7, 5);
INSERT INTO public.juegos_generos VALUES (14, 8, 1);
INSERT INTO public.juegos_generos VALUES (15, 8, 5);
INSERT INTO public.juegos_generos VALUES (16, 8, 8);
INSERT INTO public.juegos_generos VALUES (17, 9, 1);
INSERT INTO public.juegos_generos VALUES (18, 10, 4);
INSERT INTO public.juegos_generos VALUES (19, 10, 6);
INSERT INTO public.juegos_generos VALUES (20, 10, 7);
INSERT INTO public.juegos_generos VALUES (21, 11, 1);
INSERT INTO public.juegos_generos VALUES (22, 11, 7);
INSERT INTO public.juegos_generos VALUES (23, 12, 1);
INSERT INTO public.juegos_generos VALUES (24, 12, 7);


--
-- TOC entry 3425 (class 0 OID 24623)
-- Dependencies: 223
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3435 (class 0 OID 24686)
-- Dependencies: 233
-- Data for Name: juegos_ventas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3439 (class 0 OID 24722)
-- Dependencies: 237
-- Data for Name: resenias; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 216
-- Name: administradores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.administradores_id_seq', 1, false);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 224
-- Name: bibliotecas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.bibliotecas_id_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 220
-- Name: carritos_de_compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.carritos_de_compras_id_seq', 1, false);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 226
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.categorias_id_seq', 8, true);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 218
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 234
-- Name: juegos_bibliotecas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_bibliotecas_id_seq', 1, false);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 230
-- Name: juegos_carritos_de_compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_carritos_de_compras_id_seq', 1, false);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 238
-- Name: juegos_generos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_generos_id_seq', 24, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 228
-- Name: juegos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_id_seq', 12, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 232
-- Name: juegos_ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_ventas_id_seq', 1, false);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 236
-- Name: resenias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.resenias_id_seq', 1, false);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 222
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.ventas_id_seq', 1, false);


-- Completed on 2024-12-01 13:21:49

--
-- PostgreSQL database dump complete
--

