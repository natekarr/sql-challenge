PGDMP                         {           SQL_Challenge    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16665    SQL_Challenge    DATABASE     �   CREATE DATABASE "SQL_Challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "SQL_Challenge";
                postgres    false            �            1259    17515    departments    TABLE     ~   CREATE TABLE public.departments (
    dept_no character varying(30) NOT NULL,
    dept_name character varying(30) NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false                      0    17515    departments 
   TABLE DATA           9   COPY public.departments (dept_no, dept_name) FROM stdin;
    public          postgres    false    214   �       s           2606    17519    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    214               �   x�5��
1 ��W�$��V��@��fI�3\��Mr��{A,g�g�:����A9cVp�l���5"��T�Rnr7I���7�&
��K;�W�|t����z���$��W�#�j.)��d����PJ}l1W     