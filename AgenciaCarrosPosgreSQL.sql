PGDMP                      |            AgenciaCarros    17.2    17.2 S    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            '           1262    16388    AgenciaCarros    DATABASE     �   CREATE DATABASE "AgenciaCarros" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "AgenciaCarros";
                     postgres    false            �            1259    16390    agencias    TABLE     -  CREATE TABLE public.agencias (
    id_agencia integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(15),
    email character varying(100),
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.agencias;
       public         heap r       postgres    false            �            1259    16389    agencias_id_agencia_seq    SEQUENCE     �   CREATE SEQUENCE public.agencias_id_agencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.agencias_id_agencia_seq;
       public               postgres    false    218            (           0    0    agencias_id_agencia_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.agencias_id_agencia_seq OWNED BY public.agencias.id_agencia;
          public               postgres    false    217            �            1259    16398    carros    TABLE     5  CREATE TABLE public.carros (
    id_carro integer NOT NULL,
    modelo character varying(100) NOT NULL,
    marca character varying(100) NOT NULL,
    anio integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    id_agencia integer,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.carros;
       public         heap r       postgres    false            �            1259    16397    carros_id_carro_seq    SEQUENCE     �   CREATE SEQUENCE public.carros_id_carro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.carros_id_carro_seq;
       public               postgres    false    220            )           0    0    carros_id_carro_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.carros_id_carro_seq OWNED BY public.carros.id_carro;
          public               postgres    false    219            �            1259    16411    clientes    TABLE     R  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    telefono character varying(15),
    email character varying(100),
    direccion character varying(255),
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.clientes;
       public         heap r       postgres    false            �            1259    16410    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public               postgres    false    222            *           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public               postgres    false    221            �            1259    16439 	   empleados    TABLE     K  CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    puesto character varying(100),
    salario numeric(10,2) NOT NULL,
    id_agencia integer,
    fecha_contratacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.empleados;
       public         heap r       postgres    false            �            1259    16438    empleados_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.empleados_id_empleado_seq;
       public               postgres    false    226            +           0    0    empleados_id_empleado_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;
          public               postgres    false    225            �            1259    16459    historial_servicios    TABLE     �   CREATE TABLE public.historial_servicios (
    id_historial integer NOT NULL,
    id_carro integer NOT NULL,
    id_servicio integer NOT NULL,
    fecha_servicio timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    costo numeric(10,2) NOT NULL
);
 '   DROP TABLE public.historial_servicios;
       public         heap r       postgres    false            �            1259    16458 $   historial_servicios_id_historial_seq    SEQUENCE     �   CREATE SEQUENCE public.historial_servicios_id_historial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.historial_servicios_id_historial_seq;
       public               postgres    false    230            ,           0    0 $   historial_servicios_id_historial_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.historial_servicios_id_historial_seq OWNED BY public.historial_servicios.id_historial;
          public               postgres    false    229            �            1259    16477    inventario_repuestos    TABLE       CREATE TABLE public.inventario_repuestos (
    id_inventario integer NOT NULL,
    id_agencia integer NOT NULL,
    nombre_repuesto character varying(100) NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2) NOT NULL,
    id_proveedor integer
);
 (   DROP TABLE public.inventario_repuestos;
       public         heap r       postgres    false            �            1259    16476 &   inventario_repuestos_id_inventario_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_repuestos_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.inventario_repuestos_id_inventario_seq;
       public               postgres    false    232            -           0    0 &   inventario_repuestos_id_inventario_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.inventario_repuestos_id_inventario_seq OWNED BY public.inventario_repuestos.id_inventario;
          public               postgres    false    231            �            1259    16489    pedidos_repuestos    TABLE     �   CREATE TABLE public.pedidos_repuestos (
    id_pedido integer NOT NULL,
    id_inventario integer NOT NULL,
    cantidad_pedida integer NOT NULL,
    fecha_pedido timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.pedidos_repuestos;
       public         heap r       postgres    false            �            1259    16488    pedidos_repuestos_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_repuestos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.pedidos_repuestos_id_pedido_seq;
       public               postgres    false    234            .           0    0    pedidos_repuestos_id_pedido_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.pedidos_repuestos_id_pedido_seq OWNED BY public.pedidos_repuestos.id_pedido;
          public               postgres    false    233            �            1259    16502    proveedores    TABLE     )  CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    telefono character varying(15),
    email character varying(100),
    direccion character varying(255),
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.proveedores;
       public         heap r       postgres    false            �            1259    16501    proveedores_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.proveedores_id_proveedor_seq;
       public               postgres    false    236            /           0    0    proveedores_id_proveedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;
          public               postgres    false    235            �            1259    16452 	   servicios    TABLE     �   CREATE TABLE public.servicios (
    id_servicio integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    costo numeric(10,2) NOT NULL
);
    DROP TABLE public.servicios;
       public         heap r       postgres    false            �            1259    16451    servicios_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.servicios_id_servicio_seq;
       public               postgres    false    228            0           0    0    servicios_id_servicio_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.servicios_id_servicio_seq OWNED BY public.servicios.id_servicio;
          public               postgres    false    227            �            1259    16421    ventas    TABLE     	  CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    id_cliente integer NOT NULL,
    id_carro integer NOT NULL,
    id_empleado integer NOT NULL,
    fecha_venta timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    total numeric(10,2) NOT NULL
);
    DROP TABLE public.ventas;
       public         heap r       postgres    false            �            1259    16420    ventas_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ventas_id_venta_seq;
       public               postgres    false    224            1           0    0    ventas_id_venta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ventas_id_venta_seq OWNED BY public.ventas.id_venta;
          public               postgres    false    223            N           2604    16393    agencias id_agencia    DEFAULT     z   ALTER TABLE ONLY public.agencias ALTER COLUMN id_agencia SET DEFAULT nextval('public.agencias_id_agencia_seq'::regclass);
 B   ALTER TABLE public.agencias ALTER COLUMN id_agencia DROP DEFAULT;
       public               postgres    false    217    218    218            P           2604    16401    carros id_carro    DEFAULT     r   ALTER TABLE ONLY public.carros ALTER COLUMN id_carro SET DEFAULT nextval('public.carros_id_carro_seq'::regclass);
 >   ALTER TABLE public.carros ALTER COLUMN id_carro DROP DEFAULT;
       public               postgres    false    219    220    220            R           2604    16414    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public               postgres    false    221    222    222            V           2604    16442    empleados id_empleado    DEFAULT     ~   ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);
 D   ALTER TABLE public.empleados ALTER COLUMN id_empleado DROP DEFAULT;
       public               postgres    false    225    226    226            Y           2604    16462     historial_servicios id_historial    DEFAULT     �   ALTER TABLE ONLY public.historial_servicios ALTER COLUMN id_historial SET DEFAULT nextval('public.historial_servicios_id_historial_seq'::regclass);
 O   ALTER TABLE public.historial_servicios ALTER COLUMN id_historial DROP DEFAULT;
       public               postgres    false    230    229    230            [           2604    16480 "   inventario_repuestos id_inventario    DEFAULT     �   ALTER TABLE ONLY public.inventario_repuestos ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_repuestos_id_inventario_seq'::regclass);
 Q   ALTER TABLE public.inventario_repuestos ALTER COLUMN id_inventario DROP DEFAULT;
       public               postgres    false    232    231    232            \           2604    16492    pedidos_repuestos id_pedido    DEFAULT     �   ALTER TABLE ONLY public.pedidos_repuestos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_repuestos_id_pedido_seq'::regclass);
 J   ALTER TABLE public.pedidos_repuestos ALTER COLUMN id_pedido DROP DEFAULT;
       public               postgres    false    234    233    234            ^           2604    16505    proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);
 G   ALTER TABLE public.proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public               postgres    false    235    236    236            X           2604    16455    servicios id_servicio    DEFAULT     ~   ALTER TABLE ONLY public.servicios ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicios_id_servicio_seq'::regclass);
 D   ALTER TABLE public.servicios ALTER COLUMN id_servicio DROP DEFAULT;
       public               postgres    false    227    228    228            T           2604    16424    ventas id_venta    DEFAULT     r   ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public.ventas_id_venta_seq'::regclass);
 >   ALTER TABLE public.ventas ALTER COLUMN id_venta DROP DEFAULT;
       public               postgres    false    224    223    224                      0    16390    agencias 
   TABLE DATA           b   COPY public.agencias (id_agencia, nombre, direccion, telefono, email, fecha_creacion) FROM stdin;
    public               postgres    false    218   �k                 0    16398    carros 
   TABLE DATA           c   COPY public.carros (id_carro, modelo, marca, anio, precio, id_agencia, fecha_creacion) FROM stdin;
    public               postgres    false    220   �k                 0    16411    clientes 
   TABLE DATA           l   COPY public.clientes (id_cliente, nombre, apellido, telefono, email, direccion, fecha_registro) FROM stdin;
    public               postgres    false    222   l                 0    16439 	   empleados 
   TABLE DATA           s   COPY public.empleados (id_empleado, nombre, apellido, puesto, salario, id_agencia, fecha_contratacion) FROM stdin;
    public               postgres    false    226   l                 0    16459    historial_servicios 
   TABLE DATA           i   COPY public.historial_servicios (id_historial, id_carro, id_servicio, fecha_servicio, costo) FROM stdin;
    public               postgres    false    230   <l                 0    16477    inventario_repuestos 
   TABLE DATA           �   COPY public.inventario_repuestos (id_inventario, id_agencia, nombre_repuesto, cantidad, precio_unitario, id_proveedor) FROM stdin;
    public               postgres    false    232   Yl                 0    16489    pedidos_repuestos 
   TABLE DATA           d   COPY public.pedidos_repuestos (id_pedido, id_inventario, cantidad_pedida, fecha_pedido) FROM stdin;
    public               postgres    false    234   vl       !          0    16502    proveedores 
   TABLE DATA           g   COPY public.proveedores (id_proveedor, nombre, telefono, email, direccion, fecha_registro) FROM stdin;
    public               postgres    false    236   �l                 0    16452 	   servicios 
   TABLE DATA           D   COPY public.servicios (id_servicio, descripcion, costo) FROM stdin;
    public               postgres    false    228   �l                 0    16421    ventas 
   TABLE DATA           a   COPY public.ventas (id_venta, id_cliente, id_carro, id_empleado, fecha_venta, total) FROM stdin;
    public               postgres    false    224   �l       2           0    0    agencias_id_agencia_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.agencias_id_agencia_seq', 1, false);
          public               postgres    false    217            3           0    0    carros_id_carro_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.carros_id_carro_seq', 1, false);
          public               postgres    false    219            4           0    0    clientes_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);
          public               postgres    false    221            5           0    0    empleados_id_empleado_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 1, false);
          public               postgres    false    225            6           0    0 $   historial_servicios_id_historial_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.historial_servicios_id_historial_seq', 1, false);
          public               postgres    false    229            7           0    0 &   inventario_repuestos_id_inventario_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.inventario_repuestos_id_inventario_seq', 1, false);
          public               postgres    false    231            8           0    0    pedidos_repuestos_id_pedido_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.pedidos_repuestos_id_pedido_seq', 1, false);
          public               postgres    false    233            9           0    0    proveedores_id_proveedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 1, false);
          public               postgres    false    235            :           0    0    servicios_id_servicio_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.servicios_id_servicio_seq', 1, false);
          public               postgres    false    227            ;           0    0    ventas_id_venta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ventas_id_venta_seq', 1, false);
          public               postgres    false    223            a           2606    16396    agencias agencias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.agencias
    ADD CONSTRAINT agencias_pkey PRIMARY KEY (id_agencia);
 @   ALTER TABLE ONLY public.agencias DROP CONSTRAINT agencias_pkey;
       public                 postgres    false    218            c           2606    16404    carros carros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id_carro);
 <   ALTER TABLE ONLY public.carros DROP CONSTRAINT carros_pkey;
       public                 postgres    false    220            e           2606    16419    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public                 postgres    false    222            i           2606    16445    empleados empleados_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public                 postgres    false    226            m           2606    16465 ,   historial_servicios historial_servicios_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.historial_servicios
    ADD CONSTRAINT historial_servicios_pkey PRIMARY KEY (id_historial);
 V   ALTER TABLE ONLY public.historial_servicios DROP CONSTRAINT historial_servicios_pkey;
       public                 postgres    false    230            o           2606    16482 .   inventario_repuestos inventario_repuestos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.inventario_repuestos
    ADD CONSTRAINT inventario_repuestos_pkey PRIMARY KEY (id_inventario);
 X   ALTER TABLE ONLY public.inventario_repuestos DROP CONSTRAINT inventario_repuestos_pkey;
       public                 postgres    false    232            q           2606    16495 (   pedidos_repuestos pedidos_repuestos_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.pedidos_repuestos
    ADD CONSTRAINT pedidos_repuestos_pkey PRIMARY KEY (id_pedido);
 R   ALTER TABLE ONLY public.pedidos_repuestos DROP CONSTRAINT pedidos_repuestos_pkey;
       public                 postgres    false    234            s           2606    16508    proveedores proveedores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public                 postgres    false    236            k           2606    16457    servicios servicios_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id_servicio);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public                 postgres    false    228            g           2606    16427    ventas ventas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_venta);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public                 postgres    false    224            t           2606    16405    carros fk_carros_agencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.carros
    ADD CONSTRAINT fk_carros_agencias FOREIGN KEY (id_agencia) REFERENCES public.agencias(id_agencia) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.carros DROP CONSTRAINT fk_carros_agencias;
       public               postgres    false    4705    218    220            w           2606    16446    empleados fk_empleados_agencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT fk_empleados_agencias FOREIGN KEY (id_agencia) REFERENCES public.agencias(id_agencia) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.empleados DROP CONSTRAINT fk_empleados_agencias;
       public               postgres    false    226    218    4705            x           2606    16466 '   historial_servicios fk_historial_carros    FK CONSTRAINT     �   ALTER TABLE ONLY public.historial_servicios
    ADD CONSTRAINT fk_historial_carros FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.historial_servicios DROP CONSTRAINT fk_historial_carros;
       public               postgres    false    230    220    4707            y           2606    16471 *   historial_servicios fk_historial_servicios    FK CONSTRAINT     �   ALTER TABLE ONLY public.historial_servicios
    ADD CONSTRAINT fk_historial_servicios FOREIGN KEY (id_servicio) REFERENCES public.servicios(id_servicio) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.historial_servicios DROP CONSTRAINT fk_historial_servicios;
       public               postgres    false    228    4715    230            z           2606    16483 +   inventario_repuestos fk_inventario_agencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario_repuestos
    ADD CONSTRAINT fk_inventario_agencias FOREIGN KEY (id_agencia) REFERENCES public.agencias(id_agencia) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.inventario_repuestos DROP CONSTRAINT fk_inventario_agencias;
       public               postgres    false    4705    232    218            {           2606    16509 .   inventario_repuestos fk_inventario_proveedores    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario_repuestos
    ADD CONSTRAINT fk_inventario_proveedores FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.inventario_repuestos DROP CONSTRAINT fk_inventario_proveedores;
       public               postgres    false    232    236    4723            |           2606    16496 '   pedidos_repuestos fk_pedidos_inventario    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_repuestos
    ADD CONSTRAINT fk_pedidos_inventario FOREIGN KEY (id_inventario) REFERENCES public.inventario_repuestos(id_inventario) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.pedidos_repuestos DROP CONSTRAINT fk_pedidos_inventario;
       public               postgres    false    234    4719    232            u           2606    16433    ventas fk_ventas_carros    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_carros FOREIGN KEY (id_carro) REFERENCES public.carros(id_carro) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_ventas_carros;
       public               postgres    false    224    4707    220            v           2606    16428    ventas fk_ventas_clientes    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_clientes FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_ventas_clientes;
       public               postgres    false    224    4709    222                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �            x������ � �            x������ � �     