PGDMP     :                    {           SQL_Challenge    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16665    SQL_Challenge    DATABASE     �   CREATE DATABASE "SQL_Challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "SQL_Challenge";
                postgres    false            �            1259    17530    dept_manager    TABLE     n   CREATE TABLE public.dept_manager (
    dept_no character varying(30) NOT NULL,
    emp_no integer NOT NULL
);
     DROP TABLE public.dept_manager;
       public         heap    postgres    false                      0    17530    dept_manager 
   TABLE DATA           7   COPY public.dept_manager (dept_no, emp_no) FROM stdin;
    public          postgres    false    217   �       s           2606    17534    dept_manager dept_manager_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (dept_no, emp_no);
 H   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_pkey;
       public            postgres    false    217    217               o   x�E��C1�s\L�jp/9��k��(p{B���Hd=끥��f6X˩m��Vұ�8wۄ`��y��p���8��^�q}x��nH�~��k����#g��s��y���B6,     