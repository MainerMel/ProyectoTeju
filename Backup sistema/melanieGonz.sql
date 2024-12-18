PGDMP         4            
    |            Pteju    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24597    Pteju    DATABASE     }   CREATE DATABASE "Pteju" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Paraguay.1252';
    DROP DATABASE "Pteju";
                postgres    false            �            1259    73759    alumnos    TABLE       CREATE TABLE public.alumnos (
    idalumnos integer NOT NULL,
    alu_nombre character varying NOT NULL,
    alu_apellido character varying NOT NULL,
    alu_ci character varying NOT NULL,
    alu_correo character varying NOT NULL,
    alu_telefono character varying NOT NULL
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false            �            1259    73758    alumnos_idalumnos_seq    SEQUENCE     �   CREATE SEQUENCE public.alumnos_idalumnos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.alumnos_idalumnos_seq;
       public          postgres    false    231            �           0    0    alumnos_idalumnos_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.alumnos_idalumnos_seq OWNED BY public.alumnos.idalumnos;
          public          postgres    false    230            �            1259    65769 
   asistencia    TABLE     �   CREATE TABLE public.asistencia (
    idasistencia integer NOT NULL,
    asi_detalle character varying(45),
    idinscripciones integer NOT NULL,
    ddocentes integer NOT NULL,
    trial716 character(1)
);
    DROP TABLE public.asistencia;
       public         heap    postgres    false            �            1259    65776    asistencia_has_alumnos    TABLE     �   CREATE TABLE public.asistencia_has_alumnos (
    idasistencia integer NOT NULL,
    idalumnos integer NOT NULL,
    trial716 character(1)
);
 *   DROP TABLE public.asistencia_has_alumnos;
       public         heap    postgres    false            �            1259    98362    calificaciones    TABLE       CREATE TABLE public.calificaciones (
    id integer NOT NULL,
    idalumnos integer NOT NULL,
    fecha date NOT NULL,
    iduser integer NOT NULL,
    usuario character varying(50) NOT NULL,
    estado character varying(20) DEFAULT 'Pendiente'::character varying NOT NULL
);
 "   DROP TABLE public.calificaciones;
       public         heap    postgres    false            �            1259    98361    calificaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.calificaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.calificaciones_id_seq;
       public          postgres    false    247            �           0    0    calificaciones_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.calificaciones_id_seq OWNED BY public.calificaciones.id;
          public          postgres    false    246            �            1259    82026    compras    TABLE     ,  CREATE TABLE public.compras (
    id integer NOT NULL,
    idproveedor integer NOT NULL,
    fecha date NOT NULL,
    iduser integer NOT NULL,
    usuario character varying(50) NOT NULL,
    estado character varying(20) DEFAULT 'Pendiente'::character varying NOT NULL,
    total character varying
);
    DROP TABLE public.compras;
       public         heap    postgres    false            �            1259    82025    compras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.compras_id_seq;
       public          postgres    false    235            �           0    0    compras_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.compras_id_seq OWNED BY public.compras.id;
          public          postgres    false    234            �            1259    49183    cursos    TABLE     �   CREATE TABLE public.cursos (
    idcursos integer NOT NULL,
    cur_nombre character varying NOT NULL,
    cur_descripcion character varying NOT NULL
);
    DROP TABLE public.cursos;
       public         heap    postgres    false            �            1259    49182    cursos_idcursos_seq    SEQUENCE     �   CREATE SEQUENCE public.cursos_idcursos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cursos_idcursos_seq;
       public          postgres    false    221            �           0    0    cursos_idcursos_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cursos_idcursos_seq OWNED BY public.cursos.idcursos;
          public          postgres    false    220            �            1259    98401    detallecalificaciones    TABLE     �   CREATE TABLE public.detallecalificaciones (
    id integer NOT NULL,
    idcalificaciones integer NOT NULL,
    idmateria integer NOT NULL,
    cantidad integer NOT NULL
);
 )   DROP TABLE public.detallecalificaciones;
       public         heap    postgres    false            �            1259    98400    detallecalificaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detallecalificaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.detallecalificaciones_id_seq;
       public          postgres    false    249            �           0    0    detallecalificaciones_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.detallecalificaciones_id_seq OWNED BY public.detallecalificaciones.id;
          public          postgres    false    248            �            1259    82044    detallecompras    TABLE     �   CREATE TABLE public.detallecompras (
    id integer NOT NULL,
    idcompra integer NOT NULL,
    idproducto integer NOT NULL,
    cantidad integer NOT NULL,
    precio numeric(10,2) NOT NULL
);
 "   DROP TABLE public.detallecompras;
       public         heap    postgres    false            �            1259    82043    detallecompras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detallecompras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.detallecompras_id_seq;
       public          postgres    false    237            �           0    0    detallecompras_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.detallecompras_id_seq OWNED BY public.detallecompras.id;
          public          postgres    false    236            �            1259    90207    detalleinscripcion    TABLE     �   CREATE TABLE public.detalleinscripcion (
    id integer NOT NULL,
    idinscripcion integer NOT NULL,
    idcursos integer NOT NULL,
    cantidad integer NOT NULL
);
 &   DROP TABLE public.detalleinscripcion;
       public         heap    postgres    false            �            1259    90206    detalleinscripcion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalleinscripcion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.detalleinscripcion_id_seq;
       public          postgres    false    245            �           0    0    detalleinscripcion_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.detalleinscripcion_id_seq OWNED BY public.detalleinscripcion.id;
          public          postgres    false    244            �            1259    40991    docentes    TABLE       CREATE TABLE public.docentes (
    id_docentes integer NOT NULL,
    doc_nombre character varying NOT NULL,
    doc_apellido character varying NOT NULL,
    doc_ci character varying NOT NULL,
    doc_correo character varying NOT NULL,
    doc_telefono character varying NOT NULL
);
    DROP TABLE public.docentes;
       public         heap    postgres    false            �            1259    65803    docentes_has_inscripciones    TABLE     �   CREATE TABLE public.docentes_has_inscripciones (
    iddocentes integer NOT NULL,
    idinscripciones integer NOT NULL,
    trial720 character(1)
);
 .   DROP TABLE public.docentes_has_inscripciones;
       public         heap    postgres    false            �            1259    40990    docentes_id_docentes_seq    SEQUENCE     �   CREATE SEQUENCE public.docentes_id_docentes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.docentes_id_docentes_seq;
       public          postgres    false    217            �           0    0    docentes_id_docentes_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.docentes_id_docentes_seq OWNED BY public.docentes.id_docentes;
          public          postgres    false    216            �            1259    90141    horarios    TABLE     �   CREATE TABLE public.horarios (
    idhorarios integer NOT NULL,
    hor_inicio time with time zone NOT NULL,
    hor_fin time with time zone NOT NULL
);
    DROP TABLE public.horarios;
       public         heap    postgres    false            �            1259    90140    horarios_idhorarios_seq    SEQUENCE     �   CREATE SEQUENCE public.horarios_idhorarios_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.horarios_idhorarios_seq;
       public          postgres    false    239            �           0    0    horarios_idhorarios_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.horarios_idhorarios_seq OWNED BY public.horarios.idhorarios;
          public          postgres    false    238            �            1259    65810    horariosdeexamen    TABLE     �   CREATE TABLE public.horariosdeexamen (
    idhorariosdeexamen integer NOT NULL,
    exa_descripcion character varying(45),
    iddocentes integer NOT NULL,
    idmaterias integer NOT NULL,
    trial720 character(1)
);
 $   DROP TABLE public.horariosdeexamen;
       public         heap    postgres    false            �            1259    90172    inscripcion    TABLE     .  CREATE TABLE public.inscripcion (
    id integer NOT NULL,
    idalumnos integer NOT NULL,
    fecha date NOT NULL,
    iduser integer NOT NULL,
    usuario character varying(50) NOT NULL,
    estado character varying(20) DEFAULT 'Pendiente'::character varying NOT NULL,
    turno character varying
);
    DROP TABLE public.inscripcion;
       public         heap    postgres    false            �            1259    90171    inscripcion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inscripcion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.inscripcion_id_seq;
       public          postgres    false    243            �           0    0    inscripcion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.inscripcion_id_seq OWNED BY public.inscripcion.id;
          public          postgres    false    242            �            1259    65761    inscripciones    TABLE     -  CREATE TABLE public.inscripciones (
    idinscripciones integer NOT NULL,
    ins_fechainscripcion character varying(45) NOT NULL,
    idusuarios integer NOT NULL,
    idcursos integer NOT NULL,
    idhorario integer NOT NULL,
    estado character varying(45) NOT NULL,
    total character varying
);
 !   DROP TABLE public.inscripciones;
       public         heap    postgres    false            �            1259    65817    inscripciones_has_materias    TABLE     �   CREATE TABLE public.inscripciones_has_materias (
    idinscripciones integer NOT NULL,
    idmaterias integer NOT NULL,
    trial720 character(1)
);
 .   DROP TABLE public.inscripciones_has_materias;
       public         heap    postgres    false            �            1259    90148    materias    TABLE     �   CREATE TABLE public.materias (
    idmaterias integer NOT NULL,
    mat_nombre character varying NOT NULL,
    mat_descripcion character varying NOT NULL,
    idcursos integer,
    id_docentes integer,
    semestre character varying
);
    DROP TABLE public.materias;
       public         heap    postgres    false            �            1259    90147    materias_idmaterias_seq    SEQUENCE     �   CREATE SEQUENCE public.materias_idmaterias_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.materias_idmaterias_seq;
       public          postgres    false    241            �           0    0    materias_idmaterias_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.materias_idmaterias_seq OWNED BY public.materias.idmaterias;
          public          postgres    false    240            �            1259    49174 
   personales    TABLE       CREATE TABLE public.personales (
    idpersonales integer NOT NULL,
    per_nombre character varying NOT NULL,
    per_apellido character varying NOT NULL,
    per_ci character varying NOT NULL,
    per_correo character varying NOT NULL,
    per_telefono character varying NOT NULL
);
    DROP TABLE public.personales;
       public         heap    postgres    false            �            1259    49173    personales_idpersonales_seq    SEQUENCE     �   CREATE SEQUENCE public.personales_idpersonales_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.personales_idpersonales_seq;
       public          postgres    false    219            �           0    0    personales_idpersonales_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.personales_idpersonales_seq OWNED BY public.personales.idpersonales;
          public          postgres    false    218            �            1259    73750 
   productos1    TABLE     B  CREATE TABLE public.productos1 (
    id_producto integer NOT NULL,
    nombre_producto character varying(255) NOT NULL,
    descripcion_producto text,
    categoria_producto character varying(255) NOT NULL,
    fecha_elaboracion date NOT NULL,
    fecha_caducidad date NOT NULL,
    precio_venta numeric(10,2) NOT NULL
);
    DROP TABLE public.productos1;
       public         heap    postgres    false            �            1259    73749    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    229            �           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos1.id_producto;
          public          postgres    false    228            �            1259    32791    proveedores    TABLE     �   CREATE TABLE public.proveedores (
    idproveedor integer NOT NULL,
    nombre character varying NOT NULL,
    rsocial character varying NOT NULL
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    32790    proveedores_idproveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_idproveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.proveedores_idproveedor_seq;
       public          postgres    false    215            �           0    0    proveedores_idproveedor_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.proveedores_idproveedor_seq OWNED BY public.proveedores.idproveedor;
          public          postgres    false    214            �            1259    122922    semestre    TABLE     b   CREATE TABLE public.semestre (
    idsemestre integer NOT NULL,
    senombre character varying
);
    DROP TABLE public.semestre;
       public         heap    postgres    false            �            1259    122921    semestre_idsemestre_seq    SEQUENCE     �   CREATE SEQUENCE public.semestre_idsemestre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.semestre_idsemestre_seq;
       public          postgres    false    251            �           0    0    semestre_idsemestre_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.semestre_idsemestre_seq OWNED BY public.semestre.idsemestre;
          public          postgres    false    250            �            1259    73768    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuarios integer NOT NULL,
    usu_nombre character varying NOT NULL,
    usu_clave character varying NOT NULL,
    usu_tipo character varying DEFAULT 'user'::character varying
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    73767    usuarios_idusuarios_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuarios_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_idusuarios_seq;
       public          postgres    false    233            �           0    0    usuarios_idusuarios_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_idusuarios_seq OWNED BY public.usuarios.idusuarios;
          public          postgres    false    232            �           2604    73762    alumnos idalumnos    DEFAULT     v   ALTER TABLE ONLY public.alumnos ALTER COLUMN idalumnos SET DEFAULT nextval('public.alumnos_idalumnos_seq'::regclass);
 @   ALTER TABLE public.alumnos ALTER COLUMN idalumnos DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    98365    calificaciones id    DEFAULT     v   ALTER TABLE ONLY public.calificaciones ALTER COLUMN id SET DEFAULT nextval('public.calificaciones_id_seq'::regclass);
 @   ALTER TABLE public.calificaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    82029 
   compras id    DEFAULT     h   ALTER TABLE ONLY public.compras ALTER COLUMN id SET DEFAULT nextval('public.compras_id_seq'::regclass);
 9   ALTER TABLE public.compras ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    49186    cursos idcursos    DEFAULT     r   ALTER TABLE ONLY public.cursos ALTER COLUMN idcursos SET DEFAULT nextval('public.cursos_idcursos_seq'::regclass);
 >   ALTER TABLE public.cursos ALTER COLUMN idcursos DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    98404    detallecalificaciones id    DEFAULT     �   ALTER TABLE ONLY public.detallecalificaciones ALTER COLUMN id SET DEFAULT nextval('public.detallecalificaciones_id_seq'::regclass);
 G   ALTER TABLE public.detallecalificaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    82047    detallecompras id    DEFAULT     v   ALTER TABLE ONLY public.detallecompras ALTER COLUMN id SET DEFAULT nextval('public.detallecompras_id_seq'::regclass);
 @   ALTER TABLE public.detallecompras ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    90210    detalleinscripcion id    DEFAULT     ~   ALTER TABLE ONLY public.detalleinscripcion ALTER COLUMN id SET DEFAULT nextval('public.detalleinscripcion_id_seq'::regclass);
 D   ALTER TABLE public.detalleinscripcion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    40994    docentes id_docentes    DEFAULT     |   ALTER TABLE ONLY public.docentes ALTER COLUMN id_docentes SET DEFAULT nextval('public.docentes_id_docentes_seq'::regclass);
 C   ALTER TABLE public.docentes ALTER COLUMN id_docentes DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    90144    horarios idhorarios    DEFAULT     z   ALTER TABLE ONLY public.horarios ALTER COLUMN idhorarios SET DEFAULT nextval('public.horarios_idhorarios_seq'::regclass);
 B   ALTER TABLE public.horarios ALTER COLUMN idhorarios DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    90175    inscripcion id    DEFAULT     p   ALTER TABLE ONLY public.inscripcion ALTER COLUMN id SET DEFAULT nextval('public.inscripcion_id_seq'::regclass);
 =   ALTER TABLE public.inscripcion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    90151    materias idmaterias    DEFAULT     z   ALTER TABLE ONLY public.materias ALTER COLUMN idmaterias SET DEFAULT nextval('public.materias_idmaterias_seq'::regclass);
 B   ALTER TABLE public.materias ALTER COLUMN idmaterias DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    49177    personales idpersonales    DEFAULT     �   ALTER TABLE ONLY public.personales ALTER COLUMN idpersonales SET DEFAULT nextval('public.personales_idpersonales_seq'::regclass);
 F   ALTER TABLE public.personales ALTER COLUMN idpersonales DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    73753    productos1 id_producto    DEFAULT        ALTER TABLE ONLY public.productos1 ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 E   ALTER TABLE public.productos1 ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    32794    proveedores idproveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN idproveedor SET DEFAULT nextval('public.proveedores_idproveedor_seq'::regclass);
 F   ALTER TABLE public.proveedores ALTER COLUMN idproveedor DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    122925    semestre idsemestre    DEFAULT     z   ALTER TABLE ONLY public.semestre ALTER COLUMN idsemestre SET DEFAULT nextval('public.semestre_idsemestre_seq'::regclass);
 B   ALTER TABLE public.semestre ALTER COLUMN idsemestre DROP DEFAULT;
       public          postgres    false    250    251    251            �           2604    73771    usuarios idusuarios    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuarios SET DEFAULT nextval('public.usuarios_idusuarios_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN idusuarios DROP DEFAULT;
       public          postgres    false    232    233    233            �          0    73759    alumnos 
   TABLE DATA           h   COPY public.alumnos (idalumnos, alu_nombre, alu_apellido, alu_ci, alu_correo, alu_telefono) FROM stdin;
    public          postgres    false    231   ��       �          0    65769 
   asistencia 
   TABLE DATA           e   COPY public.asistencia (idasistencia, asi_detalle, idinscripciones, ddocentes, trial716) FROM stdin;
    public          postgres    false    223   ��       �          0    65776    asistencia_has_alumnos 
   TABLE DATA           S   COPY public.asistencia_has_alumnos (idasistencia, idalumnos, trial716) FROM stdin;
    public          postgres    false    224   ��       �          0    98362    calificaciones 
   TABLE DATA           W   COPY public.calificaciones (id, idalumnos, fecha, iduser, usuario, estado) FROM stdin;
    public          postgres    false    247   ��       �          0    82026    compras 
   TABLE DATA           Y   COPY public.compras (id, idproveedor, fecha, iduser, usuario, estado, total) FROM stdin;
    public          postgres    false    235   �       �          0    49183    cursos 
   TABLE DATA           G   COPY public.cursos (idcursos, cur_nombre, cur_descripcion) FROM stdin;
    public          postgres    false    221   ��       �          0    98401    detallecalificaciones 
   TABLE DATA           Z   COPY public.detallecalificaciones (id, idcalificaciones, idmateria, cantidad) FROM stdin;
    public          postgres    false    249   l�       �          0    82044    detallecompras 
   TABLE DATA           T   COPY public.detallecompras (id, idcompra, idproducto, cantidad, precio) FROM stdin;
    public          postgres    false    237   ��       �          0    90207    detalleinscripcion 
   TABLE DATA           S   COPY public.detalleinscripcion (id, idinscripcion, idcursos, cantidad) FROM stdin;
    public          postgres    false    245    �       �          0    40991    docentes 
   TABLE DATA           k   COPY public.docentes (id_docentes, doc_nombre, doc_apellido, doc_ci, doc_correo, doc_telefono) FROM stdin;
    public          postgres    false    217   }�       �          0    65803    docentes_has_inscripciones 
   TABLE DATA           [   COPY public.docentes_has_inscripciones (iddocentes, idinscripciones, trial720) FROM stdin;
    public          postgres    false    225   p�       �          0    90141    horarios 
   TABLE DATA           C   COPY public.horarios (idhorarios, hor_inicio, hor_fin) FROM stdin;
    public          postgres    false    239   ��       �          0    65810    horariosdeexamen 
   TABLE DATA           q   COPY public.horariosdeexamen (idhorariosdeexamen, exa_descripcion, iddocentes, idmaterias, trial720) FROM stdin;
    public          postgres    false    226   ��       �          0    90172    inscripcion 
   TABLE DATA           [   COPY public.inscripcion (id, idalumnos, fecha, iduser, usuario, estado, turno) FROM stdin;
    public          postgres    false    243   ��       �          0    65761    inscripciones 
   TABLE DATA           ~   COPY public.inscripciones (idinscripciones, ins_fechainscripcion, idusuarios, idcursos, idhorario, estado, total) FROM stdin;
    public          postgres    false    222   �       �          0    65817    inscripciones_has_materias 
   TABLE DATA           [   COPY public.inscripciones_has_materias (idinscripciones, idmaterias, trial720) FROM stdin;
    public          postgres    false    227   3�       �          0    90148    materias 
   TABLE DATA           l   COPY public.materias (idmaterias, mat_nombre, mat_descripcion, idcursos, id_docentes, semestre) FROM stdin;
    public          postgres    false    241   P�       �          0    49174 
   personales 
   TABLE DATA           n   COPY public.personales (idpersonales, per_nombre, per_apellido, per_ci, per_correo, per_telefono) FROM stdin;
    public          postgres    false    219   U�       �          0    73750 
   productos1 
   TABLE DATA           �   COPY public.productos1 (id_producto, nombre_producto, descripcion_producto, categoria_producto, fecha_elaboracion, fecha_caducidad, precio_venta) FROM stdin;
    public          postgres    false    229   �       �          0    32791    proveedores 
   TABLE DATA           C   COPY public.proveedores (idproveedor, nombre, rsocial) FROM stdin;
    public          postgres    false    215   T�       �          0    122922    semestre 
   TABLE DATA           8   COPY public.semestre (idsemestre, senombre) FROM stdin;
    public          postgres    false    251   �       �          0    73768    usuarios 
   TABLE DATA           O   COPY public.usuarios (idusuarios, usu_nombre, usu_clave, usu_tipo) FROM stdin;
    public          postgres    false    233   �       �           0    0    alumnos_idalumnos_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alumnos_idalumnos_seq', 8, true);
          public          postgres    false    230            �           0    0    calificaciones_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.calificaciones_id_seq', 2, true);
          public          postgres    false    246            �           0    0    compras_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.compras_id_seq', 43, true);
          public          postgres    false    234            �           0    0    cursos_idcursos_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cursos_idcursos_seq', 13, true);
          public          postgres    false    220            �           0    0    detallecalificaciones_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.detallecalificaciones_id_seq', 1, true);
          public          postgres    false    248            �           0    0    detallecompras_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.detallecompras_id_seq', 46, true);
          public          postgres    false    236            �           0    0    detalleinscripcion_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.detalleinscripcion_id_seq', 134, true);
          public          postgres    false    244            �           0    0    docentes_id_docentes_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.docentes_id_docentes_seq', 11, true);
          public          postgres    false    216            �           0    0    horarios_idhorarios_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.horarios_idhorarios_seq', 3, true);
          public          postgres    false    238            �           0    0    inscripcion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.inscripcion_id_seq', 71, true);
          public          postgres    false    242            �           0    0    materias_idmaterias_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.materias_idmaterias_seq', 43, true);
          public          postgres    false    240            �           0    0    personales_idpersonales_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.personales_idpersonales_seq', 4, true);
          public          postgres    false    218            �           0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 1, false);
          public          postgres    false    228            �           0    0    proveedores_idproveedor_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.proveedores_idproveedor_seq', 50, true);
          public          postgres    false    214            �           0    0    semestre_idsemestre_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.semestre_idsemestre_seq', 1, false);
          public          postgres    false    250            �           0    0    usuarios_idusuarios_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_idusuarios_seq', 7, true);
          public          postgres    false    232                        2606    73766    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (idalumnos);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    231                       2606    98368 "   calificaciones calificaciones_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.calificaciones DROP CONSTRAINT calificaciones_pkey;
       public            postgres    false    247                       2606    82032    compras compras_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_pkey;
       public            postgres    false    235            �           2606    49190    cursos cursos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (idcursos);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public            postgres    false    221                       2606    98406 0   detallecalificaciones detallecalificaciones_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.detallecalificaciones
    ADD CONSTRAINT detallecalificaciones_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.detallecalificaciones DROP CONSTRAINT detallecalificaciones_pkey;
       public            postgres    false    249                       2606    82049 "   detallecompras detallecompras_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.detallecompras
    ADD CONSTRAINT detallecompras_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.detallecompras DROP CONSTRAINT detallecompras_pkey;
       public            postgres    false    237                       2606    90212 *   detalleinscripcion detalleinscripcion_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.detalleinscripcion
    ADD CONSTRAINT detalleinscripcion_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.detalleinscripcion DROP CONSTRAINT detalleinscripcion_pkey;
       public            postgres    false    245            �           2606    40998    docentes docentes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (id_docentes);
 @   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_pkey;
       public            postgres    false    217                       2606    90146    horarios horarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_pkey PRIMARY KEY (idhorarios);
 @   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_pkey;
       public            postgres    false    239                       2606    90178    inscripcion inscripcion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inscripcion
    ADD CONSTRAINT inscripcion_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.inscripcion DROP CONSTRAINT inscripcion_pkey;
       public            postgres    false    243            
           2606    90155    materias materias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (idmaterias);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    241            �           2606    49181    personales personales_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.personales
    ADD CONSTRAINT personales_pkey PRIMARY KEY (idpersonales);
 D   ALTER TABLE ONLY public.personales DROP CONSTRAINT personales_pkey;
       public            postgres    false    219            �           2606    65773    asistencia pk_asistencia 
   CONSTRAINT     `   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT pk_asistencia PRIMARY KEY (idasistencia);
 B   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT pk_asistencia;
       public            postgres    false    223            �           2606    65780 0   asistencia_has_alumnos pk_asistencia_has_alumnos 
   CONSTRAINT     �   ALTER TABLE ONLY public.asistencia_has_alumnos
    ADD CONSTRAINT pk_asistencia_has_alumnos PRIMARY KEY (idasistencia, idalumnos);
 Z   ALTER TABLE ONLY public.asistencia_has_alumnos DROP CONSTRAINT pk_asistencia_has_alumnos;
       public            postgres    false    224    224            �           2606    65807 8   docentes_has_inscripciones pk_docentes_has_inscripciones 
   CONSTRAINT     �   ALTER TABLE ONLY public.docentes_has_inscripciones
    ADD CONSTRAINT pk_docentes_has_inscripciones PRIMARY KEY (iddocentes, idinscripciones);
 b   ALTER TABLE ONLY public.docentes_has_inscripciones DROP CONSTRAINT pk_docentes_has_inscripciones;
       public            postgres    false    225    225            �           2606    65814 $   horariosdeexamen pk_horariosdeexamen 
   CONSTRAINT     r   ALTER TABLE ONLY public.horariosdeexamen
    ADD CONSTRAINT pk_horariosdeexamen PRIMARY KEY (idhorariosdeexamen);
 N   ALTER TABLE ONLY public.horariosdeexamen DROP CONSTRAINT pk_horariosdeexamen;
       public            postgres    false    226            �           2606    65765    inscripciones pk_inscripciones 
   CONSTRAINT     i   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT pk_inscripciones PRIMARY KEY (idinscripciones);
 H   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT pk_inscripciones;
       public            postgres    false    222            �           2606    65821 8   inscripciones_has_materias pk_inscripciones_has_materias 
   CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones_has_materias
    ADD CONSTRAINT pk_inscripciones_has_materias PRIMARY KEY (idinscripciones, idmaterias);
 b   ALTER TABLE ONLY public.inscripciones_has_materias DROP CONSTRAINT pk_inscripciones_has_materias;
       public            postgres    false    227    227            �           2606    73757    productos1 productos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.productos1
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 C   ALTER TABLE ONLY public.productos1 DROP CONSTRAINT productos_pkey;
       public            postgres    false    229            �           2606    32798    proveedores proveedores_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (idproveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public            postgres    false    215                       2606    73775    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuarios);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    233            �           1259    65775    fk_asistencia_docentes1_idx    INDEX     W   CREATE INDEX fk_asistencia_docentes1_idx ON public.asistencia USING btree (ddocentes);
 /   DROP INDEX public.fk_asistencia_docentes1_idx;
       public            postgres    false    223            �           1259    65781 &   fk_asistencia_has_alumnos_alumnos1_idx    INDEX     n   CREATE INDEX fk_asistencia_has_alumnos_alumnos1_idx ON public.asistencia_has_alumnos USING btree (idalumnos);
 :   DROP INDEX public.fk_asistencia_has_alumnos_alumnos1_idx;
       public            postgres    false    224            �           1259    65782 )   fk_asistencia_has_alumnos_asistencia1_idx    INDEX     t   CREATE INDEX fk_asistencia_has_alumnos_asistencia1_idx ON public.asistencia_has_alumnos USING btree (idasistencia);
 =   DROP INDEX public.fk_asistencia_has_alumnos_asistencia1_idx;
       public            postgres    false    224            �           1259    65774     fk_asistencia_inscripciones1_idx    INDEX     b   CREATE INDEX fk_asistencia_inscripciones1_idx ON public.asistencia USING btree (idinscripciones);
 4   DROP INDEX public.fk_asistencia_inscripciones1_idx;
       public            postgres    false    223            �           1259    65809 +   fk_docentes_has_inscripciones_docentes1_idx    INDEX     x   CREATE INDEX fk_docentes_has_inscripciones_docentes1_idx ON public.docentes_has_inscripciones USING btree (iddocentes);
 ?   DROP INDEX public.fk_docentes_has_inscripciones_docentes1_idx;
       public            postgres    false    225            �           1259    65808 0   fk_docentes_has_inscripciones_inscripciones1_idx    INDEX     �   CREATE INDEX fk_docentes_has_inscripciones_inscripciones1_idx ON public.docentes_has_inscripciones USING btree (idinscripciones);
 D   DROP INDEX public.fk_docentes_has_inscripciones_inscripciones1_idx;
       public            postgres    false    225            �           1259    65815 !   fk_horariosdeexamen_docentes1_idx    INDEX     d   CREATE INDEX fk_horariosdeexamen_docentes1_idx ON public.horariosdeexamen USING btree (iddocentes);
 5   DROP INDEX public.fk_horariosdeexamen_docentes1_idx;
       public            postgres    false    226            �           1259    65816 !   fk_horariosdeexamen_materias1_idx    INDEX     d   CREATE INDEX fk_horariosdeexamen_materias1_idx ON public.horariosdeexamen USING btree (idmaterias);
 5   DROP INDEX public.fk_horariosdeexamen_materias1_idx;
       public            postgres    false    226            �           1259    65767    fk_inscripciones_cursos1_idx    INDEX     Z   CREATE INDEX fk_inscripciones_cursos1_idx ON public.inscripciones USING btree (idcursos);
 0   DROP INDEX public.fk_inscripciones_cursos1_idx;
       public            postgres    false    222            �           1259    65823 0   fk_inscripciones_has_materias_inscripciones1_idx    INDEX     �   CREATE INDEX fk_inscripciones_has_materias_inscripciones1_idx ON public.inscripciones_has_materias USING btree (idinscripciones);
 D   DROP INDEX public.fk_inscripciones_has_materias_inscripciones1_idx;
       public            postgres    false    227            �           1259    65822 +   fk_inscripciones_has_materias_materias1_idx    INDEX     x   CREATE INDEX fk_inscripciones_has_materias_materias1_idx ON public.inscripciones_has_materias USING btree (idmaterias);
 ?   DROP INDEX public.fk_inscripciones_has_materias_materias1_idx;
       public            postgres    false    227            �           1259    65768    fk_inscripciones_horario1_idx    INDEX     \   CREATE INDEX fk_inscripciones_horario1_idx ON public.inscripciones USING btree (idhorario);
 1   DROP INDEX public.fk_inscripciones_horario1_idx;
       public            postgres    false    222            �           1259    65766    fk_inscripciones_usuarios1_idx    INDEX     ^   CREATE INDEX fk_inscripciones_usuarios1_idx ON public.inscripciones USING btree (idusuarios);
 2   DROP INDEX public.fk_inscripciones_usuarios1_idx;
       public            postgres    false    222            "           2606    98369 ,   calificaciones calificaciones_idalumnos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_idalumnos_fkey FOREIGN KEY (idalumnos) REFERENCES public.alumnos(idalumnos);
 V   ALTER TABLE ONLY public.calificaciones DROP CONSTRAINT calificaciones_idalumnos_fkey;
       public          postgres    false    231    247    3328            #           2606    98374 )   calificaciones calificaciones_iduser_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.usuarios(idusuarios);
 S   ALTER TABLE ONLY public.calificaciones DROP CONSTRAINT calificaciones_iduser_fkey;
       public          postgres    false    247    233    3330                       2606    82033     compras compras_idproveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_idproveedor_fkey FOREIGN KEY (idproveedor) REFERENCES public.proveedores(idproveedor);
 J   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_idproveedor_fkey;
       public          postgres    false    3293    235    215                       2606    82038    compras compras_iduser_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.usuarios(idusuarios);
 E   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_iduser_fkey;
       public          postgres    false    3330    233    235            $           2606    98407 A   detallecalificaciones detallecalificaciones_idcalificaciones_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallecalificaciones
    ADD CONSTRAINT detallecalificaciones_idcalificaciones_fkey FOREIGN KEY (idcalificaciones) REFERENCES public.calificaciones(id);
 k   ALTER TABLE ONLY public.detallecalificaciones DROP CONSTRAINT detallecalificaciones_idcalificaciones_fkey;
       public          postgres    false    247    249    3344            %           2606    98412 :   detallecalificaciones detallecalificaciones_idmateria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallecalificaciones
    ADD CONSTRAINT detallecalificaciones_idmateria_fkey FOREIGN KEY (idmateria) REFERENCES public.materias(idmaterias);
 d   ALTER TABLE ONLY public.detallecalificaciones DROP CONSTRAINT detallecalificaciones_idmateria_fkey;
       public          postgres    false    3338    249    241                       2606    82050 +   detallecompras detallecompras_idcompra_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallecompras
    ADD CONSTRAINT detallecompras_idcompra_fkey FOREIGN KEY (idcompra) REFERENCES public.compras(id);
 U   ALTER TABLE ONLY public.detallecompras DROP CONSTRAINT detallecompras_idcompra_fkey;
       public          postgres    false    237    235    3332                       2606    82055 -   detallecompras detallecompras_idproducto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallecompras
    ADD CONSTRAINT detallecompras_idproducto_fkey FOREIGN KEY (idproducto) REFERENCES public.productos1(id_producto);
 W   ALTER TABLE ONLY public.detallecompras DROP CONSTRAINT detallecompras_idproducto_fkey;
       public          postgres    false    3326    229    237                        2606    122908 3   detalleinscripcion detalleinscripcion_idcursos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleinscripcion
    ADD CONSTRAINT detalleinscripcion_idcursos_fkey FOREIGN KEY (idcursos) REFERENCES public.cursos(idcursos) NOT VALID;
 ]   ALTER TABLE ONLY public.detalleinscripcion DROP CONSTRAINT detalleinscripcion_idcursos_fkey;
       public          postgres    false    245    3299    221            !           2606    90213 8   detalleinscripcion detalleinscripcion_idinscripcion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleinscripcion
    ADD CONSTRAINT detalleinscripcion_idinscripcion_fkey FOREIGN KEY (idinscripcion) REFERENCES public.inscripcion(id);
 b   ALTER TABLE ONLY public.detalleinscripcion DROP CONSTRAINT detalleinscripcion_idinscripcion_fkey;
       public          postgres    false    245    3340    243                       2606    65849 <   asistencia_has_alumnos fk_asistencia_has_alumnos_asistencia1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asistencia_has_alumnos
    ADD CONSTRAINT fk_asistencia_has_alumnos_asistencia1 FOREIGN KEY (idasistencia) REFERENCES public.asistencia(idasistencia);
 f   ALTER TABLE ONLY public.asistencia_has_alumnos DROP CONSTRAINT fk_asistencia_has_alumnos_asistencia1;
       public          postgres    false    224    3308    223                       2606    65839 '   asistencia fk_asistencia_inscripciones1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT fk_asistencia_inscripciones1 FOREIGN KEY (idinscripciones) REFERENCES public.inscripciones(idinscripciones);
 Q   ALTER TABLE ONLY public.asistencia DROP CONSTRAINT fk_asistencia_inscripciones1;
       public          postgres    false    223    3304    222                       2606    65879 G   docentes_has_inscripciones fk_docentes_has_inscripciones_inscripciones1    FK CONSTRAINT     �   ALTER TABLE ONLY public.docentes_has_inscripciones
    ADD CONSTRAINT fk_docentes_has_inscripciones_inscripciones1 FOREIGN KEY (idinscripciones) REFERENCES public.inscripciones(idinscripciones);
 q   ALTER TABLE ONLY public.docentes_has_inscripciones DROP CONSTRAINT fk_docentes_has_inscripciones_inscripciones1;
       public          postgres    false    225    3304    222                       2606    65824 &   inscripciones fk_inscripciones_cursos1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT fk_inscripciones_cursos1 FOREIGN KEY (idcursos) REFERENCES public.cursos(idcursos);
 P   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT fk_inscripciones_cursos1;
       public          postgres    false    222    3299    221                       2606    65889 G   inscripciones_has_materias fk_inscripciones_has_materias_inscripciones1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones_has_materias
    ADD CONSTRAINT fk_inscripciones_has_materias_inscripciones1 FOREIGN KEY (idinscripciones) REFERENCES public.inscripciones(idinscripciones);
 q   ALTER TABLE ONLY public.inscripciones_has_materias DROP CONSTRAINT fk_inscripciones_has_materias_inscripciones1;
       public          postgres    false    227    3304    222                       2606    90179 &   inscripcion inscripcion_idalumnos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripcion
    ADD CONSTRAINT inscripcion_idalumnos_fkey FOREIGN KEY (idalumnos) REFERENCES public.alumnos(idalumnos);
 P   ALTER TABLE ONLY public.inscripcion DROP CONSTRAINT inscripcion_idalumnos_fkey;
       public          postgres    false    243    3328    231                       2606    90184 #   inscripcion inscripcion_iduser_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripcion
    ADD CONSTRAINT inscripcion_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.usuarios(idusuarios);
 M   ALTER TABLE ONLY public.inscripcion DROP CONSTRAINT inscripcion_iduser_fkey;
       public          postgres    false    3330    233    243                       2606    122915 "   materias materias_id_docentes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_id_docentes_fkey FOREIGN KEY (id_docentes) REFERENCES public.docentes(id_docentes) NOT VALID;
 L   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_id_docentes_fkey;
       public          postgres    false    217    3295    241                       2606    122903    materias materias_idcursos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_idcursos_fkey FOREIGN KEY (idcursos) REFERENCES public.cursos(idcursos) NOT VALID;
 I   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_idcursos_fkey;
       public          postgres    false    241    221    3299            �   �   x�u�MN�0FןO�T��q��'�VB��,d)��8b��� �"�iW0��=}3C��1�՘�_m�k^o��>o�-6�p.�d��:߇:cvФ�.��3�Я��������.����ө�Gh!���b��ّ�L��7��\�8���쫒_!��0���++\�a~,�hvg�~�i�e��!m�1L�%��4o�i��d�Fc̱�}
.�F(�HN�f�� �m3      �      x������ � �      �      x������ � �      �   8   x�3�4�4202�50�52rrSs8R�R2S�JR��8��Җ�FP� �t� ��      �   �   x���K
�0@�3wI�_Z���'�&�.
����ӛ���.��{3� �����IzB�����������>������gHI����uN��G�PwySK6ޱ��U`%�!N]��80/���mS�lOh�Ai�K?�Y#M�1&'�c"_�f�fkW���
�a�G�p      �   �   x�=�1�0C��O�O�HY��+C�.�i�~��(I�8g�b���%[������y������� c�V2]1ڌ,�EM��g*�)�/�ݑ���#�M�┰j����c�b��ٹ6'�̃�*c��]���b�J�eK��D��$��(a@����?J�@�      �      x�3�4�4�4����� ��      �   _   x�]��	 1D�c1�Fͧ����5,�(��=�������qAo.,�<���:�}�3	3���}d��-�zD�I�PX�eV��R�E�}-,�      �   m  x�M�K�%!Dǰ�Q�����ut
jݑ'(*SR��:	�s�s�s�9�~�nøc��OPq?���
OIr���Qz��(ͫ=�>�TP�J݃��v�T�����������g�׽�1ۀ֕��WU6�����C�$��f)���g*-B\�g�
�~^��	���A/i��R�J��KrB~IA ���2K�<��#��m�Aً��#iA�.���h�O��i]pM� 馬٦jt�Y��TŕO��Hki�a�p\i��S�mc5��(���P���V����В�}ɓ�B`P��ވ��w"���BҾw2�u�T��!㷬���~����Ë,�����p����y9��������      �   �   x�eϱN�0���S�	*��{#�R�L���ز,�6����#3���L��d�����$v��JS��毌A�P1T��6mL��rč�RQ�#��6�P�+�:&�A��ʁ�2���#��ao�x:Yܕ���=)͟H���z�,nE�1r���9悥lE�K�KR���M�bL�[W=ನ��Nv�zM���>��[�ܗ��9�Jm�՝}��'��o%�B� �Ml�      �      x������ � �      �   1   x�3�40�26�20�50�41 l.#NCc8���!c�*c������� o��      �      x������ � �      �     x���KN� ��an ���g�	i4��\u�\��-A��A��|�9��	E����)��3�,)��{�78��j%{J���P�d9*|O9��)���)��/�u�be�l\����j�0aT�1�Qa�F#�A�0a��W�h��Ł�����K�m��)��!�q��-����l���D�A/%�`��_!ۨ��s$��E��'��Ӹ������m�V�P��i�K4.��-�;��zَ�ݨh� ����p�1�KL��ğ�	!_ꖤ�      �      x������ � �      �      x������ � �      �   �   x�M�AN�@E��)� j�R��.�ZR$6ݸS����x"�cq.F
E^X����r9��9$� ^�e�Ѹ��Fr�ɐ�Mp4��w�{�&%,X1F�^��lN���Ay듾{أrok1�����%�#��̀\��ubk&LQ�p�˳�梩�hZ�N��SL-�Sg�����"[V 	ܺW��*X,���j������!�Tȡ[�a֓�R�G�::*x������U�e���b�      �   �   x�]�;�0D��)r�(v֟t �"
8�	Vd�ɡ�mRr�\�T�}�of9�mJ��Sq]�TF���t���r��3\
�;�\��*�}\��͠$j�<��GGloJT�a-\m���i^�@2�J.$�_2R`����!�����%f��QH�K���@��F�{�� �I�      �   /   x�3�L�L,�Lb##C]]CS�X���440�37����� �N�      �   �   x�M��
�@ �ݏ��>LR�Y��@
�)��~�,�9�+v��"�K��r{��(ץ��ʪ��ǫ���RFpB��'������c���(5J�R��(uJ�R��)uJ�;p8�΂`A� X�dJF�F'��pO�^�Y&��|~�睪~�ݒo      �      x������ � �      �   N   x�3�LN-N,�442���2��,N�qL9}]}�<]af���9�y��0s����bNS�$�KL�������� ��J     