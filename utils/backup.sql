PGDMP                          {            postgres    14.3 #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1) !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13769    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3358            �            1259    16384    prodtype    TABLE     k   CREATE TABLE public.prodtype (
    id integer NOT NULL,
    info character varying(100),
    taxes real
);
    DROP TABLE public.prodtype;
       public         heap    postgres    false            �            1259    16387    prodtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prodtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.prodtype_id_seq;
       public          postgres    false    209                        0    0    prodtype_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.prodtype_id_seq OWNED BY public.prodtype.id;
          public          postgres    false    210            �            1259    16388    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    prodname character varying(100),
    price double precision,
    typeid integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16391    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    211            !           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    212            �            1259    16392    sales    TABLE     X   CREATE TABLE public.sales (
    id integer NOT NULL,
    info character varying(255)
);
    DROP TABLE public.sales;
       public         heap    postgres    false            �            1259    16395    sales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sales_id_seq;
       public          postgres    false    213            "           0    0    sales_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;
          public          postgres    false    214            �            1259    16396 	   salesitem    TABLE     y   CREATE TABLE public.salesitem (
    id integer NOT NULL,
    prodid integer,
    quantity integer,
    saleid integer
);
    DROP TABLE public.salesitem;
       public         heap    postgres    false            �            1259    16399    salesitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salesitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.salesitem_id_seq;
       public          postgres    false    215            #           0    0    salesitem_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.salesitem_id_seq OWNED BY public.salesitem.id;
          public          postgres    false    216            z           2604    16400    prodtype id    DEFAULT     j   ALTER TABLE ONLY public.prodtype ALTER COLUMN id SET DEFAULT nextval('public.prodtype_id_seq'::regclass);
 :   ALTER TABLE public.prodtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            {           2604    16401    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            |           2604    16402    sales id    DEFAULT     d   ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);
 7   ALTER TABLE public.sales ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            }           2604    16403    salesitem id    DEFAULT     l   ALTER TABLE ONLY public.salesitem ALTER COLUMN id SET DEFAULT nextval('public.salesitem_id_seq'::regclass);
 ;   ALTER TABLE public.salesitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                      0    16384    prodtype 
   TABLE DATA           3   COPY public.prodtype (id, info, taxes) FROM stdin;
    public          postgres    false    209   �                  0    16388    products 
   TABLE DATA           ?   COPY public.products (id, prodname, price, typeid) FROM stdin;
    public          postgres    false    211   �                  0    16392    sales 
   TABLE DATA           )   COPY public.sales (id, info) FROM stdin;
    public          postgres    false    213   �!                 0    16396 	   salesitem 
   TABLE DATA           A   COPY public.salesitem (id, prodid, quantity, saleid) FROM stdin;
    public          postgres    false    215   �!       $           0    0    prodtype_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.prodtype_id_seq', 17, true);
          public          postgres    false    210            %           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 81, true);
          public          postgres    false    212            &           0    0    sales_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sales_id_seq', 95, true);
          public          postgres    false    214            '           0    0    salesitem_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.salesitem_id_seq', 182, true);
          public          postgres    false    216                       2606    16405    prodtype prodtype_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.prodtype
    ADD CONSTRAINT prodtype_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.prodtype DROP CONSTRAINT prodtype_pkey;
       public            postgres    false    209            �           2606    16407    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    211            �           2606    16409    sales sales_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    213            �           2606    16411    salesitem salesitem_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.salesitem
    ADD CONSTRAINT salesitem_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.salesitem DROP CONSTRAINT salesitem_pkey;
       public            postgres    false    215               E   x�34�t,-��=��,5���Ȁ�А�1'375�$���Ë�9-��8�R�KJ/,���4�3����� |��         �   x�-�1!�z�s,��&��fT�� lܵ�y/&K�~���p���T�RYP^J)�$���-�������i���%�6WhvpL��4���#x+���`���azD.38+�����43M5W��ߍ�w�D�ճ'@         #   x����K�KI40�4�2��,M�Lc�=... ��	         ?   x�5��	�0ѳTL���~zq�udc��10J����0���a�{V;`�u�������!���`     