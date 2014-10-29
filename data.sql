--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.1
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-10-29 01:43:15 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 174 (class 3079 OID 11756)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1962 (class 0 OID 0)
-- Dependencies: 174
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 19374)
-- Name: entradas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE entradas (
    id_entrada integer NOT NULL,
    fk_medio integer,
    titulo character varying(300),
    link character varying(300),
    contenido text,
    fecha_publicado timestamp without time zone,
    creado_en timestamp without time zone DEFAULT now()
);


ALTER TABLE public.entradas OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 19372)
-- Name: entradas_id_entrada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE entradas_id_entrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entradas_id_entrada_seq OWNER TO postgres;

--
-- TOC entry 1963 (class 0 OID 0)
-- Dependencies: 172
-- Name: entradas_id_entrada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE entradas_id_entrada_seq OWNED BY entradas.id_entrada;


--
-- TOC entry 171 (class 1259 OID 19363)
-- Name: medio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medio (
    id_medio integer NOT NULL,
    nombre character varying(150),
    descripcion text,
    url character(150),
    rss character varying(200),
    creado_en timestamp without time zone DEFAULT now()
);


ALTER TABLE public.medio OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 19361)
-- Name: medio_id_medio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE medio_id_medio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medio_id_medio_seq OWNER TO postgres;

--
-- TOC entry 1964 (class 0 OID 0)
-- Dependencies: 170
-- Name: medio_id_medio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE medio_id_medio_seq OWNED BY medio.id_medio;


--
-- TOC entry 1837 (class 2604 OID 19377)
-- Name: id_entrada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entradas ALTER COLUMN id_entrada SET DEFAULT nextval('entradas_id_entrada_seq'::regclass);


--
-- TOC entry 1835 (class 2604 OID 19366)
-- Name: id_medio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medio ALTER COLUMN id_medio SET DEFAULT nextval('medio_id_medio_seq'::regclass);


--
-- TOC entry 1954 (class 0 OID 19374)
-- Dependencies: 173
-- Data for Name: entradas; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO entradas VALUES (89, 1, 'Publicar entradas de Drupal a Twitter en 7 sencillos pasos', 'http://leninmhs.wordpress.com/2014/10/25/drupal-post-to-twitter/', 'Siguiendo esta entrada lograremos que nuestra pagina web en Drupal al publicar contenidos (Noticias, artículos, paginas, entradas, posts, etc…) envíe un tweet con el titulo y enlace del mismo de manera automatizada y desatendida. Para ello deberemos seguir los siguientes 7 pasos. - Descargar los módulos de Twitter Y OAuth Se descargaran https://www.drupal.org/project/twitter  y https://www.drupal.org/project/oauth […]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=leninmhs.wordpress.com&blog=17078552&post=5146&subd=leninmhs&ref=&feed=1" width="1" height="1" />', NULL, '2014-10-29 01:15:42.309542');
INSERT INTO entradas VALUES (90, 1, 'Qué tipo de gráfico elegir', 'http://leninmhs.wordpress.com/2014/10/19/que-tipo-de-grafico-elegir/', '  Referencias recomendadas: http://www.danielpradilla.info/blog/recomendaciones-graficos/ http://www.danielpradilla.info/blog/como-hacer-mejores-graficos/<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=leninmhs.wordpress.com&blog=17078552&post=5131&subd=leninmhs&ref=&feed=1" width="1" height="1" />', NULL, '2014-10-29 01:15:42.330077');
INSERT INTO entradas VALUES (91, 1, 'Instalación de OTRS en Debian Wheezy + PostgreSQL + Apache', 'http://leninmhs.wordpress.com/2014/10/11/otrs-debian-postgres-apache/', 'OTRS (Open-source Ticket Request System) es un software Help Desk de Código Abierto y de Gestión de Servicios de TI escrito en Perl y licenciado bajo AGPL. -Instalar paquetes necesarios: root@k8:/home/leninmhs#aptitude install libapache2-mod-perl2 libdbd-pg-perl libtimedate-perl libnet-dns-perl libnet-ldap-perl libio-socket-ssl-perl libpdf-api2-perl libsoap-lite-perl libgd-text-perl libtext-csv-xs-perl libjson-xs-perl libgd-graph-perl libapache-dbi-perl libyaml-libyaml-perl postgres apache2 Descargar OTRS: http://www.otrs.com/try/ OTRS Help Desk 3.3.9.tar.gz   […]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=leninmhs.wordpress.com&blog=17078552&post=5094&subd=leninmhs&ref=&feed=1" width="1" height="1" />', NULL, '2014-10-29 01:15:42.338305');
INSERT INTO entradas VALUES (96, 1, 'El software libre y la educación', 'http://leninmhs.wordpress.com/2014/03/25/software-libre-y-educacion/', 'El Software Libre y la Educación por Richard Stallman (Subtitulos Español) (ver transcripción)   Por qué las escuelas deben usar exclusivamente software libre por Richard Stallman Por qué las instituciones educativas deben utilizar y enseñar software libre por FSF<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=leninmhs.wordpress.com&blog=17078552&post=1227&subd=leninmhs&ref=&feed=1" width="1" height="1" />', NULL, '2014-10-29 01:15:42.379889');
INSERT INTO entradas VALUES (97, 1, 'Generar codigo QR desde postgreSQL con Perl', 'http://leninmhs.wordpress.com/2014/03/25/qr-postgres-perl/', 'Como practica para probar y conocer como generar códigos QR en Perl, realizaremos el siguiente ejercicio: conectarnos a una base de datos, consultar el identificador único de cada producto en una tabla de nuestra base de datos postgres, generar el código QR de cada uno de los productos. Cada QR direccionara a un url compuesto […]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=leninmhs.wordpress.com&blog=17078552&post=4784&subd=leninmhs&ref=&feed=1" width="1" height="1" />', NULL, '2014-10-29 01:15:42.388231');
INSERT INTO entradas VALUES (98, 1, 'Personalizar Gnome Shell en Debian Wheezy', 'http://leninmhs.wordpress.com/2014/02/23/gnome-shell-debian-wheezy/', 'Gnome Tweak Tool El primer elemento a conocer en GNOME SHELL para personalizar y ajustar tu escritorio a tus preferencias y necesidades es la herramienta Gnome Tweak Tool, la cual si no estuviera disponible por defecto en su instalación, la puede instalar con: #aptitude install gnome-tweak-tool Con esta herramienta podemos: Colocar los botones de las […]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=leninmhs.wordpress.com&blog=17078552&post=4209&subd=leninmhs&ref=&feed=1" width="1" height="1" />', NULL, '2014-10-29 01:15:42.396555');


--
-- TOC entry 1965 (class 0 OID 0)
-- Dependencies: 172
-- Name: entradas_id_entrada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('entradas_id_entrada_seq', 108, true);


--
-- TOC entry 1952 (class 0 OID 19363)
-- Dependencies: 171
-- Data for Name: medio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO medio VALUES (1, 'Leninmhs Blog', 'Blog personal de leninmhs', 'leninmhs.wordpress.com', 'http://leninmhs.wordpress.com/feed/'', NULL);


--
-- TOC entry 1966 (class 0 OID 0)
-- Dependencies: 170
-- Name: medio_id_medio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('medio_id_medio_seq', 1, true);


--
-- TOC entry 1842 (class 2606 OID 19382)
-- Name: pk_id_entradas; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY entradas
    ADD CONSTRAINT pk_id_entradas PRIMARY KEY (id_entrada);


--
-- TOC entry 1840 (class 2606 OID 19371)
-- Name: pk_id_medio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY medio
    ADD CONSTRAINT pk_id_medio PRIMARY KEY (id_medio);


--
-- TOC entry 1843 (class 2606 OID 19383)
-- Name: fk_medio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entradas
    ADD CONSTRAINT fk_medio FOREIGN KEY (fk_medio) REFERENCES medio(id_medio);


--
-- TOC entry 1961 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-10-29 01:43:15 VET

--
-- PostgreSQL database dump complete
--
