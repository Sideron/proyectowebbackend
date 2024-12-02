--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2024-12-02 13:40:06

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
-- TOC entry 214 (class 1259 OID 32773)
-- Name: administradores; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.administradores (
    id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.administradores OWNER TO "Grupo2PW";

--
-- TOC entry 215 (class 1259 OID 32776)
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
-- Dependencies: 215
-- Name: administradores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.administradores_id_seq OWNED BY public.administradores.id;


--
-- TOC entry 216 (class 1259 OID 32777)
-- Name: bibliotecas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.bibliotecas (
    id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.bibliotecas OWNER TO "Grupo2PW";

--
-- TOC entry 217 (class 1259 OID 32780)
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
-- Dependencies: 217
-- Name: bibliotecas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.bibliotecas_id_seq OWNED BY public.bibliotecas.id;


--
-- TOC entry 218 (class 1259 OID 32781)
-- Name: carritos_de_compras; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.carritos_de_compras (
    id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.carritos_de_compras OWNER TO "Grupo2PW";

--
-- TOC entry 219 (class 1259 OID 32784)
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
-- Dependencies: 219
-- Name: carritos_de_compras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.carritos_de_compras_id_seq OWNED BY public.carritos_de_compras.id;


--
-- TOC entry 220 (class 1259 OID 32785)
-- Name: generos; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.generos (
    id integer NOT NULL,
    nombre character varying(32)
);


ALTER TABLE public.generos OWNER TO "Grupo2PW";

--
-- TOC entry 221 (class 1259 OID 32788)
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
-- Dependencies: 221
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.generos.id;


--
-- TOC entry 222 (class 1259 OID 32789)
-- Name: clientes; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.clientes OWNER TO "Grupo2PW";

--
-- TOC entry 223 (class 1259 OID 32792)
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
-- Dependencies: 223
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 224 (class 1259 OID 32793)
-- Name: juegos; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos (
    id integer NOT NULL,
    nombre character varying(64),
    precio_actual numeric,
    imagen_url character varying(1024),
    descripcion character varying(1024),
    desarrollador character varying(32)
);


ALTER TABLE public.juegos OWNER TO "Grupo2PW";

--
-- TOC entry 225 (class 1259 OID 32798)
-- Name: juegos_bibliotecas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_bibliotecas (
    id integer NOT NULL,
    juego_id integer NOT NULL,
    biblioteca_id integer NOT NULL
);


ALTER TABLE public.juegos_bibliotecas OWNER TO "Grupo2PW";

--
-- TOC entry 226 (class 1259 OID 32801)
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
-- Dependencies: 226
-- Name: juegos_bibliotecas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_bibliotecas_id_seq OWNED BY public.juegos_bibliotecas.id;


--
-- TOC entry 227 (class 1259 OID 32802)
-- Name: juegos_carritos_de_compras; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_carritos_de_compras (
    id integer NOT NULL,
    juego_id integer NOT NULL,
    carrito_de_compra_id integer NOT NULL
);


ALTER TABLE public.juegos_carritos_de_compras OWNER TO "Grupo2PW";

--
-- TOC entry 228 (class 1259 OID 32805)
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
-- Dependencies: 228
-- Name: juegos_carritos_de_compras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_carritos_de_compras_id_seq OWNED BY public.juegos_carritos_de_compras.id;


--
-- TOC entry 229 (class 1259 OID 32806)
-- Name: juegos_generos; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.juegos_generos (
    id integer NOT NULL,
    juego_id integer NOT NULL,
    genero_id integer NOT NULL
);


ALTER TABLE public.juegos_generos OWNER TO "Grupo2PW";

--
-- TOC entry 230 (class 1259 OID 32809)
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
-- Dependencies: 230
-- Name: juegos_generos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_generos_id_seq OWNED BY public.juegos_generos.id;


--
-- TOC entry 231 (class 1259 OID 32810)
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
-- Dependencies: 231
-- Name: juegos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_id_seq OWNED BY public.juegos.id;


--
-- TOC entry 232 (class 1259 OID 32811)
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
-- TOC entry 233 (class 1259 OID 32816)
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
-- Dependencies: 233
-- Name: juegos_ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.juegos_ventas_id_seq OWNED BY public.juegos_ventas.id;


--
-- TOC entry 234 (class 1259 OID 32817)
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
-- TOC entry 235 (class 1259 OID 32822)
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
-- Dependencies: 235
-- Name: resenias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.resenias_id_seq OWNED BY public.resenias.id;


--
-- TOC entry 236 (class 1259 OID 32823)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(16),
    contrasenia character varying(16)
);


ALTER TABLE public.usuarios OWNER TO "Grupo2PW";

--
-- TOC entry 237 (class 1259 OID 32826)
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
-- Dependencies: 237
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 238 (class 1259 OID 32827)
-- Name: ventas; Type: TABLE; Schema: public; Owner: Grupo2PW
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    fecha date DEFAULT CURRENT_DATE,
    cliente_id integer NOT NULL
);


ALTER TABLE public.ventas OWNER TO "Grupo2PW";

--
-- TOC entry 239 (class 1259 OID 32831)
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
-- Dependencies: 239
-- Name: ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Grupo2PW
--

ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;


--
-- TOC entry 3233 (class 2604 OID 32832)
-- Name: administradores id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.administradores ALTER COLUMN id SET DEFAULT nextval('public.administradores_id_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 32833)
-- Name: bibliotecas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.bibliotecas ALTER COLUMN id SET DEFAULT nextval('public.bibliotecas_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 32834)
-- Name: carritos_de_compras id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.carritos_de_compras ALTER COLUMN id SET DEFAULT nextval('public.carritos_de_compras_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 32835)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 32836)
-- Name: generos id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.generos ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 32837)
-- Name: juegos id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos ALTER COLUMN id SET DEFAULT nextval('public.juegos_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 32838)
-- Name: juegos_bibliotecas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas ALTER COLUMN id SET DEFAULT nextval('public.juegos_bibliotecas_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 32839)
-- Name: juegos_carritos_de_compras id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras ALTER COLUMN id SET DEFAULT nextval('public.juegos_carritos_de_compras_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 32840)
-- Name: juegos_generos id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos ALTER COLUMN id SET DEFAULT nextval('public.juegos_generos_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 32841)
-- Name: juegos_ventas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas ALTER COLUMN id SET DEFAULT nextval('public.juegos_ventas_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 32842)
-- Name: resenias id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias ALTER COLUMN id SET DEFAULT nextval('public.resenias_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 32843)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 32844)
-- Name: ventas id; Type: DEFAULT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);


--
-- TOC entry 3248 (class 2606 OID 32846)
-- Name: administradores administradores_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administradores_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 32848)
-- Name: bibliotecas bibliotecas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.bibliotecas
    ADD CONSTRAINT bibliotecas_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 32850)
-- Name: carritos_de_compras carritos_de_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.carritos_de_compras
    ADD CONSTRAINT carritos_de_compras_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 32852)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 32854)
-- Name: generos generos_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 32856)
-- Name: juegos_bibliotecas juegos_bibliotecas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas
    ADD CONSTRAINT juegos_bibliotecas_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 32858)
-- Name: juegos_carritos_de_compras juegos_carritos_de_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras
    ADD CONSTRAINT juegos_carritos_de_compras_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 32860)
-- Name: juegos_generos juegos_generos_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos
    ADD CONSTRAINT juegos_generos_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 32862)
-- Name: juegos juegos_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos
    ADD CONSTRAINT juegos_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 32864)
-- Name: juegos_ventas juegos_ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas
    ADD CONSTRAINT juegos_ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 32866)
-- Name: resenias resenias_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 32868)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 32870)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 32871)
-- Name: administradores administradores_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administradores_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) NOT VALID;


--
-- TOC entry 3274 (class 2606 OID 32876)
-- Name: bibliotecas bibliotecas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.bibliotecas
    ADD CONSTRAINT bibliotecas_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3275 (class 2606 OID 32881)
-- Name: carritos_de_compras carritos_de_compras_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.carritos_de_compras
    ADD CONSTRAINT carritos_de_compras_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3276 (class 2606 OID 32886)
-- Name: clientes clientes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) NOT VALID;


--
-- TOC entry 3277 (class 2606 OID 32891)
-- Name: juegos_bibliotecas juegos_bibliotecas_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas
    ADD CONSTRAINT juegos_bibliotecas_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3278 (class 2606 OID 32896)
-- Name: juegos_bibliotecas juegos_bibliotecas_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_bibliotecas
    ADD CONSTRAINT juegos_bibliotecas_fkey2 FOREIGN KEY (biblioteca_id) REFERENCES public.bibliotecas(id) NOT VALID;


--
-- TOC entry 3279 (class 2606 OID 32901)
-- Name: juegos_carritos_de_compras juegos_carritos_de_compras_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras
    ADD CONSTRAINT juegos_carritos_de_compras_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3280 (class 2606 OID 32906)
-- Name: juegos_carritos_de_compras juegos_carritos_de_compras_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_carritos_de_compras
    ADD CONSTRAINT juegos_carritos_de_compras_fkey2 FOREIGN KEY (carrito_de_compra_id) REFERENCES public.carritos_de_compras(id) NOT VALID;


--
-- TOC entry 3281 (class 2606 OID 32911)
-- Name: juegos_generos juegos_generos_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos
    ADD CONSTRAINT juegos_generos_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3282 (class 2606 OID 32916)
-- Name: juegos_generos juegos_generos_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_generos
    ADD CONSTRAINT juegos_generos_fkey2 FOREIGN KEY (genero_id) REFERENCES public.generos(id) NOT VALID;


--
-- TOC entry 3283 (class 2606 OID 32921)
-- Name: juegos_ventas juegos_ventas_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas
    ADD CONSTRAINT juegos_ventas_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3284 (class 2606 OID 32926)
-- Name: juegos_ventas juegos_ventas_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.juegos_ventas
    ADD CONSTRAINT juegos_ventas_fkey2 FOREIGN KEY (venta_id) REFERENCES public.ventas(id) NOT VALID;


--
-- TOC entry 3285 (class 2606 OID 32931)
-- Name: resenias resenias_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_fkey1 FOREIGN KEY (juego_id) REFERENCES public.juegos(id) NOT VALID;


--
-- TOC entry 3286 (class 2606 OID 32936)
-- Name: resenias resenias_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_fkey2 FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3287 (class 2606 OID 32941)
-- Name: ventas ventas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Grupo2PW
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


-- Completed on 2024-12-02 13:40:06

--
-- PostgreSQL database dump complete
--

