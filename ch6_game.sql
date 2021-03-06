PGDMP     /    7                z            ch6_game    14.2    14.2     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32801    ch6_game    DATABASE     h   CREATE DATABASE ch6_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE ch6_game;
                postgres    false            ?            1259    32802    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            ?            1259    32817    users_game_biodata    TABLE     +  CREATE TABLE public.users_game_biodata (
    id integer NOT NULL,
    user_game_id integer,
    name character varying(255),
    address character varying(255),
    email character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public.users_game_biodata;
       public         heap    postgres    false            ?            1259    32816    users_game_biodata_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_game_biodata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.users_game_biodata_id_seq;
       public          postgres    false    213                       0    0    users_game_biodata_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.users_game_biodata_id_seq OWNED BY public.users_game_biodata.id;
          public          postgres    false    212            ?            1259    32826    users_game_histories    TABLE     ?   CREATE TABLE public.users_game_histories (
    id integer NOT NULL,
    user_game_id integer,
    playtime integer,
    score integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public.users_game_histories;
       public         heap    postgres    false            ?            1259    32825    users_game_histories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_game_histories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.users_game_histories_id_seq;
       public          postgres    false    215                       0    0    users_game_histories_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.users_game_histories_id_seq OWNED BY public.users_game_histories.id;
          public          postgres    false    214            ?            1259    32808    users_games    TABLE     ?   CREATE TABLE public.users_games (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users_games;
       public         heap    postgres    false            ?            1259    32807    users_games_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_games_id_seq;
       public          postgres    false    211                       0    0    users_games_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_games_id_seq OWNED BY public.users_games.id;
          public          postgres    false    210            k           2604    32820    users_game_biodata id    DEFAULT     ~   ALTER TABLE ONLY public.users_game_biodata ALTER COLUMN id SET DEFAULT nextval('public.users_game_biodata_id_seq'::regclass);
 D   ALTER TABLE public.users_game_biodata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            l           2604    32829    users_game_histories id    DEFAULT     ?   ALTER TABLE ONLY public.users_game_histories ALTER COLUMN id SET DEFAULT nextval('public.users_game_histories_id_seq'::regclass);
 F   ALTER TABLE public.users_game_histories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            j           2604    32811    users_games id    DEFAULT     p   ALTER TABLE ONLY public.users_games ALTER COLUMN id SET DEFAULT nextval('public.users_games_id_seq'::regclass);
 =   ALTER TABLE public.users_games ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       0    32802    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    209   '                  0    32817    users_game_biodata 
   TABLE DATA           n   COPY public.users_game_biodata (id, user_game_id, name, address, email, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    213   ?                  0    32826    users_game_histories 
   TABLE DATA           k   COPY public.users_game_histories (id, user_game_id, playtime, score, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ?                  0    32808    users_games 
   TABLE DATA           W   COPY public.users_games (id, username, password, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   9!                  0    0    users_game_biodata_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_game_biodata_id_seq', 1, true);
          public          postgres    false    212                       0    0    users_game_histories_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.users_game_histories_id_seq', 1, true);
          public          postgres    false    214                       0    0    users_games_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_games_id_seq', 5, true);
          public          postgres    false    210            n           2606    32806     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    209            r           2606    32824 *   users_game_biodata users_game_biodata_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_game_biodata
    ADD CONSTRAINT users_game_biodata_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.users_game_biodata DROP CONSTRAINT users_game_biodata_pkey;
       public            postgres    false    213            t           2606    32831 .   users_game_histories users_game_histories_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.users_game_histories
    ADD CONSTRAINT users_game_histories_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.users_game_histories DROP CONSTRAINT users_game_histories_pkey;
       public            postgres    false    215            p           2606    32815    users_games users_games_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_games
    ADD CONSTRAINT users_games_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_games DROP CONSTRAINT users_games_pkey;
       public            postgres    false    211                R   x?32022052503670?M.JM,I?--N-*?MO?M??*?2??1166?T??????X???????ڌ?????J??=... ??&?         \   x?3?4?t?K???NTp?,JI,-??J?I?Sp?N,?L?LL?I:$e?%?%&?e?p????*Z?Y?[h????????? ???         4   x?3?4?43??0?4202?50?52U02?26?2??315?60?#????? ??,         t   x?}?9?0 k??Q?=??طЬ??-P???@CA?4?h&:{?6???z?{[f$vD#?H2?('e??'??(?Ζ\??n??V[{?ұf녾N??(b ??Gy0?????/?)&      