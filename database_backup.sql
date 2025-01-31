PGDMP                         y         
   repoprovas    14.0    14.0 =    >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    41595 
   repoprovas    DATABASE     _   CREATE DATABASE repoprovas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE repoprovas;
             
   pedrolpin4    false            �            1259    41622 
   categories    TABLE     T   CREATE TABLE public.categories (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.categories;
       public         heap 
   pedrolpin4    false            �            1259    41621    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public       
   pedrolpin4    false    214            B           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public       
   pedrolpin4    false    213            �            1259    41609    exams    TABLE     �   CREATE TABLE public.exams (
    id integer NOT NULL,
    name text NOT NULL,
    link text NOT NULL,
    professor_id integer NOT NULL,
    category_id integer NOT NULL,
    subject_id integer NOT NULL
);
    DROP TABLE public.exams;
       public         heap 
   pedrolpin4    false            �            1259    41608    exams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.exams_id_seq;
       public       
   pedrolpin4    false    212            C           0    0    exams_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.exams_id_seq OWNED BY public.exams.id;
          public       
   pedrolpin4    false    211            �            1259    41633    periods    TABLE     Q   CREATE TABLE public.periods (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.periods;
       public         heap 
   pedrolpin4    false            �            1259    41632    periods_id_seq    SEQUENCE     �   CREATE SEQUENCE public.periods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.periods_id_seq;
       public       
   pedrolpin4    false    216            D           0    0    periods_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.periods_id_seq OWNED BY public.periods.id;
          public       
   pedrolpin4    false    215            �            1259    41764    profesors_subjects    TABLE     �   CREATE TABLE public.profesors_subjects (
    id integer NOT NULL,
    profesor_id integer NOT NULL,
    subject_id integer NOT NULL
);
 &   DROP TABLE public.profesors_subjects;
       public         heap 
   pedrolpin4    false            �            1259    41762    profesors_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profesors_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.profesors_subjects_id_seq;
       public       
   pedrolpin4    false    221            E           0    0    profesors_subjects_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.profesors_subjects_id_seq OWNED BY public.profesors_subjects.id;
          public       
   pedrolpin4    false    219            �            1259    41763 "   profesors_subjects_profesor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profesors_subjects_profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.profesors_subjects_profesor_id_seq;
       public       
   pedrolpin4    false    221            F           0    0 "   profesors_subjects_profesor_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.profesors_subjects_profesor_id_seq OWNED BY public.profesors_subjects.profesor_id;
          public       
   pedrolpin4    false    220            �            1259    41598 
   professors    TABLE     T   CREATE TABLE public.professors (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.professors;
       public         heap 
   pedrolpin4    false            �            1259    41597    professors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.professors_id_seq;
       public       
   pedrolpin4    false    210            G           0    0    professors_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.professors_id_seq OWNED BY public.professors.id;
          public       
   pedrolpin4    false    209            �            1259    41644    subjects    TABLE     r   CREATE TABLE public.subjects (
    id integer NOT NULL,
    name text NOT NULL,
    period_id integer NOT NULL
);
    DROP TABLE public.subjects;
       public         heap 
   pedrolpin4    false            �            1259    41643    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public       
   pedrolpin4    false    218            H           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public       
   pedrolpin4    false    217            �           2604    41625    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    213    214    214            �           2604    41612    exams id    DEFAULT     d   ALTER TABLE ONLY public.exams ALTER COLUMN id SET DEFAULT nextval('public.exams_id_seq'::regclass);
 7   ALTER TABLE public.exams ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    211    212    212            �           2604    41636 
   periods id    DEFAULT     h   ALTER TABLE ONLY public.periods ALTER COLUMN id SET DEFAULT nextval('public.periods_id_seq'::regclass);
 9   ALTER TABLE public.periods ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    215    216    216            �           2604    41767    profesors_subjects id    DEFAULT     ~   ALTER TABLE ONLY public.profesors_subjects ALTER COLUMN id SET DEFAULT nextval('public.profesors_subjects_id_seq'::regclass);
 D   ALTER TABLE public.profesors_subjects ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    221    219    221            �           2604    41768    profesors_subjects profesor_id    DEFAULT     �   ALTER TABLE ONLY public.profesors_subjects ALTER COLUMN profesor_id SET DEFAULT nextval('public.profesors_subjects_profesor_id_seq'::regclass);
 M   ALTER TABLE public.profesors_subjects ALTER COLUMN profesor_id DROP DEFAULT;
       public       
   pedrolpin4    false    221    220    221            �           2604    41601    professors id    DEFAULT     n   ALTER TABLE ONLY public.professors ALTER COLUMN id SET DEFAULT nextval('public.professors_id_seq'::regclass);
 <   ALTER TABLE public.professors ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    209    210    210            �           2604    41647    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    218    217    218            4          0    41622 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public       
   pedrolpin4    false    214   �C       2          0    41609    exams 
   TABLE DATA           V   COPY public.exams (id, name, link, professor_id, category_id, subject_id) FROM stdin;
    public       
   pedrolpin4    false    212   �C       6          0    41633    periods 
   TABLE DATA           +   COPY public.periods (id, name) FROM stdin;
    public       
   pedrolpin4    false    216   -D       ;          0    41764    profesors_subjects 
   TABLE DATA           I   COPY public.profesors_subjects (id, profesor_id, subject_id) FROM stdin;
    public       
   pedrolpin4    false    221   {D       0          0    41598 
   professors 
   TABLE DATA           .   COPY public.professors (id, name) FROM stdin;
    public       
   pedrolpin4    false    210   �D       8          0    41644    subjects 
   TABLE DATA           7   COPY public.subjects (id, name, period_id) FROM stdin;
    public       
   pedrolpin4    false    218   %E       I           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 6, true);
          public       
   pedrolpin4    false    213            J           0    0    exams_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.exams_id_seq', 16, true);
          public       
   pedrolpin4    false    211            K           0    0    periods_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.periods_id_seq', 11, true);
          public       
   pedrolpin4    false    215            L           0    0    profesors_subjects_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.profesors_subjects_id_seq', 1, true);
          public       
   pedrolpin4    false    219            M           0    0 "   profesors_subjects_profesor_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.profesors_subjects_profesor_id_seq', 1, false);
          public       
   pedrolpin4    false    220            N           0    0    professors_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.professors_id_seq', 29, true);
          public       
   pedrolpin4    false    209            O           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 11, true);
          public       
   pedrolpin4    false    217            �           2606    41631    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key;
       public         
   pedrolpin4    false    214            �           2606    41629    categories categories_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pk;
       public         
   pedrolpin4    false    214            �           2606    41620    exams exams_link_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_link_key UNIQUE (link);
 >   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_link_key;
       public         
   pedrolpin4    false    212            �           2606    41616    exams exams_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_pk;
       public         
   pedrolpin4    false    212            �           2606    41642    periods periods_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.periods
    ADD CONSTRAINT periods_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.periods DROP CONSTRAINT periods_name_key;
       public         
   pedrolpin4    false    216            �           2606    41640    periods periods_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.periods
    ADD CONSTRAINT periods_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.periods DROP CONSTRAINT periods_pk;
       public         
   pedrolpin4    false    216            �           2606    41770 (   profesors_subjects profesors_subjects_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.profesors_subjects
    ADD CONSTRAINT profesors_subjects_pk PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.profesors_subjects DROP CONSTRAINT profesors_subjects_pk;
       public         
   pedrolpin4    false    221            �           2606    41607    professors professors_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_name_key;
       public         
   pedrolpin4    false    210            �           2606    41605    professors professors_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_pk;
       public         
   pedrolpin4    false    210            �           2606    41653    subjects subjects_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_name_key;
       public         
   pedrolpin4    false    218            �           2606    41651    subjects subjects_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pk;
       public         
   pedrolpin4    false    218            �           2606    41659    exams exams_fk0    FK CONSTRAINT     x   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_fk0 FOREIGN KEY (professor_id) REFERENCES public.professors(id);
 9   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_fk0;
       public       
   pedrolpin4    false    3467    212    210            �           2606    41664    exams exams_fk1    FK CONSTRAINT     w   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_fk1 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 9   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_fk1;
       public       
   pedrolpin4    false    214    212    3475            �           2606    41752    exams exams_fk2    FK CONSTRAINT     t   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_fk2 FOREIGN KEY (subject_id) REFERENCES public.subjects(id);
 9   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_fk2;
       public       
   pedrolpin4    false    218    3483    212            �           2606    41771 )   profesors_subjects profesors_subjects_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesors_subjects
    ADD CONSTRAINT profesors_subjects_fk0 FOREIGN KEY (profesor_id) REFERENCES public.professors(id);
 S   ALTER TABLE ONLY public.profesors_subjects DROP CONSTRAINT profesors_subjects_fk0;
       public       
   pedrolpin4    false    210    3467    221            �           2606    41776 )   profesors_subjects profesors_subjects_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesors_subjects
    ADD CONSTRAINT profesors_subjects_fk1 FOREIGN KEY (subject_id) REFERENCES public.subjects(id);
 S   ALTER TABLE ONLY public.profesors_subjects DROP CONSTRAINT profesors_subjects_fk1;
       public       
   pedrolpin4    false    221    218    3483            �           2606    41669    subjects subjects_fk0    FK CONSTRAINT     x   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_fk0 FOREIGN KEY (period_id) REFERENCES public.periods(id);
 ?   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_fk0;
       public       
   pedrolpin4    false    216    3479    218            4   0   x�3�0�2�0�2�0�2�0�2�4J��2��/�H-*����� �G�      2   D   x�34�,HM)����())(������K���42�4�4�24�.��TRbRb�CIi~H�PM� ��      6   >   x����0 �������āKd �g�2Q��DV��PUijtu�r��y�w��:���	�      ;      x�3�42�4����� 3�      0   v   x�=�;
�0 �Y:�N�A��m��@i�.]�cl��@q(�}3u}�x����lUܐ0��%*��ZC>B�-)7�/-"�`Qu��-�6<���\���.��4��,	�
KR�e+~v����&9      8   �   x�E��
�0E��=E�������c��qh"M*���q<�s�ס��F�Iyp�qbǘ�r�B��9�6��^�UF��FJ�!���T9�;mX+PPyԛ\]I��l��HZ�6|�*��Op/��`|����ݥ��<��p:�     