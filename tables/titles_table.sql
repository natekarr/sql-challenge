PGDMP                         {           SQL_Challenge    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16665    SQL_Challenge    DATABASE     �   CREATE DATABASE "SQL_Challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "SQL_Challenge";
                postgres    false            �            1259    17520    titles    TABLE     v   CREATE TABLE public.titles (
    title_id character varying(30) NOT NULL,
    title character varying(30) NOT NULL
);
    DROP TABLE public.titles;
       public         heap    postgres    false                      0    17520    titles 
   TABLE DATA           1   COPY public.titles (title_id, title) FROM stdin;
    public          postgres    false    215   Y       s           2606    17524    titles titles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public            postgres    false    215               b   x�+6000�.ILK�*��8�S�2� B�`i�����ļ׼�̼��"��'
��EԄ3$59#/��4U�'51(�6�71/1ȋ���� �(�     