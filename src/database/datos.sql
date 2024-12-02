--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2024-12-02 14:16:11

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
-- TOC entry 3438 (class 0 OID 32823)
-- Dependencies: 236
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3416 (class 0 OID 32773)
-- Dependencies: 214
-- Data for Name: administradores; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3424 (class 0 OID 32789)
-- Dependencies: 222
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3418 (class 0 OID 32777)
-- Dependencies: 216
-- Data for Name: bibliotecas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3420 (class 0 OID 32781)
-- Dependencies: 218
-- Data for Name: carritos_de_compras; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3422 (class 0 OID 32785)
-- Dependencies: 220
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
-- TOC entry 3426 (class 0 OID 32793)
-- Dependencies: 224
-- Data for Name: juegos; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--

INSERT INTO public.juegos VALUES (1, 'Among Us', 11.99, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/945360/header.jpg', '¡Un juego en línea y local para 4 a 15 personas que incluye trabajo en equipo y traición en el espacio!', 'Innersloth');
INSERT INTO public.juegos VALUES (2, 'Call of Duty®: Black Ops III', 217.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/311210/header.jpg', 'Call of Duty®: Black Ops III Zombies Chronicles Edition includes the full base game plus the Zombies Chronicles content expansion.', 'Treyarch');
INSERT INTO public.juegos VALUES (3, 'Cyberpunk 2077', 199.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1091500/header.jpg', 'Cyberpunk 2077 es un RPG de aventura y acción de mundo abierto ambientado en el futuro sombrío de Night City, una peligrosa megalópolis obsesionada con el poder, el glamur y las incesantes modificaciones corporales.', 'CD PROJEKT RED');
INSERT INTO public.juegos VALUES (4, 'DRAGON BALL: Sparking! ZERO', 207.50, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1790600/header.jpg', 'DRAGON BALL: Sparking! ZERO toma el legendario estilo de juego de la saga Budokai Tenkaichi y lo lleva a niveles totalmente nuevos. ¡Domina el poder destructor de los guerreros más fuertes que han aparecido en Dragon Ball!', 'Spike Chunsoft Co., Ltd.');
INSERT INTO public.juegos VALUES (5, 'ELDEN RING', 172.50, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1245620/header.jpg', 'EL NUEVO RPG DE ACCIÓN DE FANTASÍA. Levántate, tiznado, y déjate guiar por la gracia para esgrimir el poder del Anillo de Elden y convertirte en un Señor de Elden en las Tierras Intermedias.', 'FromSoftware, Inc.');
INSERT INTO public.juegos VALUES (6, 'Goat Simulator', 23.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/265930/header.jpg', 'Goat Simulator is the latest in high-tech Goat Simulation technology.', 'Coffee Stain Studios');
INSERT INTO public.juegos VALUES (7, 'God of War', 159.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1593500/header.jpg', 'Habiendo consumado su venganza contra los dioses el Olimpo años atrás, Kratos ahora vive como un hombre en el reino de los dioses y los monstruos nórdicos. En este hostil e inhóspito mundo, debe pelear por sobrevivir... y enseñarle a su hijo a hacer lo mismo.', 'Santa Monica Studio');
INSERT INTO public.juegos VALUES (8, 'Hades', 53.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1145360/header.jpg', 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.', 'Supergiant Games');
INSERT INTO public.juegos VALUES (9, 'Metro Exodus', 75.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/412020/header.jpg', 'Flee the shattered ruins of the Moscow Metro and embark on an epic, continent-spanning journey across the post-apocalyptic Russian wilderness. Explore vast, non-linear levels, lose yourself in an immersive, sandbox survival experience, and follow a thrilling story-line that spans an entire year in the greatest Metro adventure yet.', '4A Games');
INSERT INTO public.juegos VALUES (10, 'Yu-Gi-Oh! Master Duel', 0.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1449850/header.jpg', 'La edición digital definitiva del juego de cartas competitivo que ha estado evolucionando por más de 20 años! Reta Duelistas de alrededor del mundo, al máximo nivel.', 'KONAMI');
INSERT INTO public.juegos VALUES (11, 'Overwatch® 2', 0.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2357570/header.jpg', 'Overwatch® 2 es un juego de disparos por equipos, reconocido ampliamente por la crítica, que se desarrolla en un futuro optimista con una creciente alineación de héroes. Forma equipo con amigos y adéntrate hoy.', 'Blizzard Entertainment, Inc.');
INSERT INTO public.juegos VALUES (12, 'Counter-Strike 2', 0.00, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/730/header.jpg', 'Durante más de dos décadas, Counter-Strike ha brindado una experiencia competitiva de élite, una experiencia moldeada por millones de jugadores en todo el mundo. Ahora es el momento de comenzar el siguiente capítulo en la historia de CS. Esto es Counter-Strike 2.', 'Valve');


--
-- TOC entry 3427 (class 0 OID 32798)
-- Dependencies: 225
-- Data for Name: juegos_bibliotecas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3429 (class 0 OID 32802)
-- Dependencies: 227
-- Data for Name: juegos_carritos_de_compras; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3431 (class 0 OID 32806)
-- Dependencies: 229
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
-- TOC entry 3440 (class 0 OID 32827)
-- Dependencies: 238
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3434 (class 0 OID 32811)
-- Dependencies: 232
-- Data for Name: juegos_ventas; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3436 (class 0 OID 32817)
-- Dependencies: 234
-- Data for Name: resenias; Type: TABLE DATA; Schema: public; Owner: Grupo2PW
--



--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 215
-- Name: administradores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.administradores_id_seq', 1, false);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 217
-- Name: bibliotecas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.bibliotecas_id_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 219
-- Name: carritos_de_compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.carritos_de_compras_id_seq', 1, false);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 221
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.categorias_id_seq', 8, true);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 223
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 226
-- Name: juegos_bibliotecas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_bibliotecas_id_seq', 1, false);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 228
-- Name: juegos_carritos_de_compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_carritos_de_compras_id_seq', 1, false);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 230
-- Name: juegos_generos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_generos_id_seq', 24, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 231
-- Name: juegos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_id_seq', 12, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 233
-- Name: juegos_ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.juegos_ventas_id_seq', 1, false);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 235
-- Name: resenias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.resenias_id_seq', 1, false);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 237
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 239
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Grupo2PW
--

SELECT pg_catalog.setval('public.ventas_id_seq', 1, false);


-- Completed on 2024-12-02 14:16:11

--
-- PostgreSQL database dump complete
--

