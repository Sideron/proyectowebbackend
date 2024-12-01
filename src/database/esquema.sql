--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2024-12-01 13:20:38

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
-- TOC entry 217 (class 1259 OID 24587)
-- Name: administradores; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.administradores (
    id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.administradores OWNER TO "Grupo2PW";

--
-- TOC entry 216 (class 1259 OID 24586)
-- Name: administradores_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.administradores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administradores_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 216
-- Name: administradores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.administradores_id_seq OWNED BY public.administradores.id;


--
-- TOC entry 225 (class 1259 OID 24636)
-- Name: bibliotecas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.bibliotecas (
    id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.bibliotecas OWNER TO "Grupo2PW";

--
-- TOC entry 224 (class 1259 OID 24635)
-- Name: bibliotecas_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.bibliotecas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bibliotecas_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 224
-- Name: bibliotecas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.bibliotecas_id_seq OWNED BY public.bibliotecas.id;


--
-- TOC entry 221 (class 1259 OID 24611)
-- Name: carritos_de_compras; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.carritos_de_compras (
    id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.carritos_de_compras OWNER TO "Grupo2PW";

--
-- TOC entry 220 (class 1259 OID 24610)
-- Name: carritos_de_compras_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.carritos_de_compras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carritos_de_compras_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 220
-- Name: carritos_de_compras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.carritos_de_compras_id_seq OWNED BY public.carritos_de_compras.id;


--
-- TOC entry 227 (class 1259 OID 24648)
-- Name: generos; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.generos (
    id integer NOT NULL,
    nombre character varying(32)
);


ALTER TABLE public.generos OWNER TO "Grupo2PW";

--
-- TOC entry 226 (class 1259 OID 24647)
-- Name: categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 226
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.generos.id;


--
-- TOC entry 219 (class 1259 OID 24599)
-- Name: clientes; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.clientes OWNER TO "Grupo2PW";

--
-- TOC entry 218 (class 1259 OID 24598)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 218
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 229 (class 1259 OID 24655)
-- Name: juegos; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos (
    id integer NOT NULL,
    nombre character varying(64),
    precio_actual numeric,
    imagen_url character varying(1024)
);


ALTER TABLE public.juegos OWNER TO "Grupo2PW";

--
-- TOC entry 235 (class 1259 OID 24705)
-- Name: juegos_bibliotecas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_bibliotecas (
    id integer NOT NULL,
    juego_id integer NOT NULL,
    biblioteca_id integer NOT NULL
);


ALTER TABLE public.juegos_bibliotecas OWNER TO "Grupo2PW";

--
-- TOC entry 234 (class 1259 OID 24704)
-- Name: juegos_bibliotecas_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.juegos_bibliotecas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juegos_bibliotecas_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 234
-- Name: juegos_bibliotecas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_bibliotecas_id_seq OWNED BY public.juegos_bibliotecas.id;


--
-- TOC entry 231 (class 1259 OID 24669)
-- Name: juegos_carritos_de_compras; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_carritos_de_compras (
    id integer NOT NULL,
    juego_id integer NOT NULL,
    carrito_de_compra_id integer NOT NULL
);


ALTER TABLE public.juegos_carritos_de_compras OWNER TO "Grupo2PW";

--
-- TOC entry 230 (class 1259 OID 24668)
-- Name: juegos_carritos_de_compras_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.juegos_carritos_de_compras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juegos_carritos_de_compras_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 230
-- Name: juegos_carritos_de_compras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_carritos_de_compras_id_seq OWNED BY public.juegos_carritos_de_compras.id;


--
-- TOC entry 239 (class 1259 OID 24746)
-- Name: juegos_generos; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_generos (
    id integer NOT NULL,
    juego_id integer NOT NULL,
    genero_id integer NOT NULL
);


ALTER TABLE public.juegos_generos OWNER TO "Grupo2PW";

--
-- TOC entry 238 (class 1259 OID 24745)
-- Name: juegos_generos_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.juegos_generos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juegos_generos_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 238
-- Name: juegos_generos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_generos_id_seq OWNED BY public.juegos_generos.id;


--
-- TOC entry 228 (class 1259 OID 24654)
-- Name: juegos_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.juegos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juegos_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 228
-- Name: juegos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_id_seq OWNED BY public.juegos.id;


--
-- TOC entry 233 (class 1259 OID 24686)
-- Name: juegos_ventas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_ventas (
    id integer NOT NULL,
    precio_vendido numeric,
    juego_id integer NOT NULL,
    venta_id integer NOT NULL
);


ALTER TABLE public.juegos_ventas OWNER TO "Grupo2PW";

--
-- TOC entry 232 (class 1259 OID 24685)
-- Name: juegos_ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.juegos_ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juegos_ventas_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 232
-- Name: juegos_ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_ventas_id_seq OWNED BY public.juegos_ventas.id;


--
-- TOC entry 237 (class 1259 OID 24722)
-- Name: resenias; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.resenias (
    id integer NOT NULL,
    puntuacion integer,
    comentario character varying(512),
    fecha date,
    juego_id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.resenias OWNER TO "Grupo2PW";

--
-- TOC entry 236 (class 1259 OID 24721)
-- Name: resenias_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.resenias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resenias_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 236
-- Name: resenias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.resenias_id_seq OWNED BY public.resenias.id;


--
-- TOC entry 215 (class 1259 OID 24580)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(16),
    contrasenia character varying(16)
);


ALTER TABLE public.usuarios OWNER TO "Grupo2PW";

--
-- TOC entry 214 (class 1259 OID 24579)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 223 (class 1259 OID 24623)
-- Name: ventas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    fecha date DEFAULT CURRENT_DATE,
    cliente_id integer NOT NULL
);


ALTER TABLE public.ventas OWNER TO "Grupo2PW";

--
-- TOC entry 222 (class 1259 OID 24622)
-- Name: ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: Grupo2PW
--

CREATE SEQUENCE public.ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventas_id_seq OWNER TO "Grupo2PW";

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 222
-- Name: ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;


--
-- TOC entry 3234 (class 2604 OID 24590)
-- Name: administradores id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.administradores ALTER COLUMN id SET DEFAULT nextval('public.administradores_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 24639)
-- Name: bibliotecas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.bibliotecas ALTER COLUMN id SET DEFAULT nextval('public.bibliotecas_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 24614)
-- Name: carritos_de_compras id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.carritos_de_compras ALTER COLUMN id SET DEFAULT nextval('public.carritos_de_compras_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 24602)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 24651)
-- Name: generos id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.generos ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 24658)
-- Name: juegos id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos ALTER COLUMN id SET DEFAULT nextval('public.juegos_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 24708)
-- Name: juegos_bibliotecas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas ALTER COLUMN id SET DEFAULT nextval('public.juegos_bibliotecas_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 24672)
-- Name: juegos_carritos_de_compras id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras ALTER COLUMN id SET DEFAULT nextval('public.juegos_carritos_de_compras_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 24749)
-- Name: juegos_generos id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos ALTER COLUMN id SET DEFAULT nextval('public.juegos_generos_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 24689)
-- Name: juegos_ventas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas ALTER COLUMN id SET DEFAULT nextval('public.juegos_ventas_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 24725)
-- Name: resenias id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias ALTER COLUMN id SET DEFAULT nextval('public.resenias_id_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 24583)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 24626)
-- Name: ventas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);


--
-- TOC entry 3250 (class 2606 OID 24592)
-- Name: administradores administradores_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administradores_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 24641)
-- Name: bibliotecas bibliotecas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.bibliotecas
    ADD CONSTRAINT bibliotecas_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 24616)
-- Name: carritos_de_compras carritos_de_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.carritos_de_compras
    ADD CONSTRAINT carritos_de_compras_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 24604)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 24653)
-- Name: generos generos_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 24710)
-- Name: juegos_bibliotecas juegos_bibliotecas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas
    ADD CONSTRAINT juegos_bibliotecas_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 24674)
-- Name: juegos_carritos_de_compras juegos_carritos_de_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras
    ADD CONSTRAINT juegos_carritos_de_compras_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 24751)
-- Name: juegos_generos juegos_generos_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos
    ADD CONSTRAINT juegos_generos_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 24662)
-- Name: juegos juegos_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos
    ADD CONSTRAINT juegos_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 24693)
-- Name: juegos_ventas juegos_ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas
    ADD CONSTRAINT juegos_ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 24729)
-- Name: resenias resenias_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 24585)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 24629)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 24593)
-- Name: administradores administradores_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administradores_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) NOT VALID;


--
-- TOC entry 3277 (class 2606 OID 24642)
-- Name: bibliotecas bibliotecas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.bibliotecas
    ADD CONSTRAINT bibliotecas_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3275 (class 2606 OID 24617)
-- Name: carritos_de_compras carritos_de_compras_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.carritos_de_compras
    ADD CONSTRAINT carritos_de_compras_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3274 (class 2606 OID 24605)
-- Name: clientes clientes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) NOT VALID;


--
-- TOC entry 3282 (class 2606 OID 24711)
-- Name: juegos_bibliotecas juegos_bibliotecas_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas
    ADD CONSTRAINT juegos_bibliotecas_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3283 (class 2606 OID 24716)
-- Name: juegos_bibliotecas juegos_bibliotecas_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas
    ADD CONSTRAINT juegos_bibliotecas_fkey2 FOREIGN KEY (biblioteca_id) REFERENCES public.bibliotecas(id) NOT VALID;


--
-- TOC entry 3278 (class 2606 OID 24675)
-- Name: juegos_carritos_de_compras juegos_carritos_de_compras_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras
    ADD CONSTRAINT juegos_carritos_de_compras_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3279 (class 2606 OID 24680)
-- Name: juegos_carritos_de_compras juegos_carritos_de_compras_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras
    ADD CONSTRAINT juegos_carritos_de_compras_fkey2 FOREIGN KEY (carrito_de_compra_id) REFERENCES public.carritos_de_compras(id) NOT VALID;


--
-- TOC entry 3286 (class 2606 OID 24752)
-- Name: juegos_generos juegos_generos_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos
    ADD CONSTRAINT juegos_generos_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3287 (class 2606 OID 24757)
-- Name: juegos_generos juegos_generos_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos
    ADD CONSTRAINT juegos_generos_fkey2 FOREIGN KEY (genero_id) REFERENCES public.generos(id) NOT VALID;


--
-- TOC entry 3280 (class 2606 OID 24694)
-- Name: juegos_ventas juegos_ventas_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas
    ADD CONSTRAINT juegos_ventas_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3281 (class 2606 OID 24699)
-- Name: juegos_ventas juegos_ventas_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas
    ADD CONSTRAINT juegos_ventas_fkey2 FOREIGN KEY (venta_id) REFERENCES public.ventas(id) NOT VALID;


--
-- TOC entry 3284 (class 2606 OID 24730)
-- Name: resenias resenias_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3285 (class 2606 OID 24735)
-- Name: resenias resenias_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_fkey2 FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3276 (class 2606 OID 24630)
-- Name: ventas ventas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


-- Completed on 2024-12-01 13:20:38

--
-- PostgreSQL database dump complete
--

