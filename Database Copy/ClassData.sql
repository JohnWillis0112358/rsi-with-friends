PGDMP     1    5    
            u           richwood-scentific    9.6.2    9.6.2     j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            l           1262    24585    richwood-scentific    DATABASE     �   CREATE DATABASE "richwood-scentific" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 $   DROP DATABASE "richwood-scentific";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            m           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            n           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24618    cart    TABLE     �   CREATE TABLE cart (
    id text NOT NULL,
    id_product text NOT NULL,
    quantity integer NOT NULL,
    date_created date NOT NULL
);
    DROP TABLE public.cart;
       public         postgres    false    3            �            1259    24586 	   customers    TABLE     A  CREATE TABLE customers (
    id text,
    first_name text,
    last_name text,
    email text,
    password text,
    shipping_address text,
    shipping_city text,
    shipping_state text,
    shipping_zipcode text,
    phone text,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.customers;
       public         postgres    false    3            �            1259    24592    product_types    TABLE     �   CREATE TABLE product_types (
    id text NOT NULL,
    label text,
    description text,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
 !   DROP TABLE public.product_types;
       public         postgres    false    3            �            1259    24598    products    TABLE     v  CREATE TABLE products (
    id text NOT NULL,
    id_type text,
    product_name text,
    qty_on_hand integer,
    size text,
    unit_price money,
    cost money,
    id_scent_type text,
    in_store boolean DEFAULT false,
    product_pic text,
    best_seller boolean DEFAULT false,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.products;
       public         postgres    false    3            �            1259    24606    scent_types    TABLE     �   CREATE TABLE scent_types (
    id text NOT NULL,
    label text,
    description text,
    ingredient_label text,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.scent_types;
       public         postgres    false    3            g          0    24618    cart 
   TABLE DATA               ?   COPY cart (id, id_product, quantity, date_created) FROM stdin;
    public       postgres    false    189   F       c          0    24586 	   customers 
   TABLE DATA               �   COPY customers (id, first_name, last_name, email, password, shipping_address, shipping_city, shipping_state, shipping_zipcode, phone, date_created, date_updated) FROM stdin;
    public       postgres    false    185   c       d          0    24592    product_types 
   TABLE DATA               T   COPY product_types (id, label, description, date_created, date_updated) FROM stdin;
    public       postgres    false    186   �       e          0    24598    products 
   TABLE DATA               �   COPY products (id, id_type, product_name, qty_on_hand, size, unit_price, cost, id_scent_type, in_store, product_pic, best_seller, date_created, date_updated) FROM stdin;
    public       postgres    false    187   ^       f          0    24606    scent_types 
   TABLE DATA               d   COPY scent_types (id, label, description, ingredient_label, date_created, date_updated) FROM stdin;
    public       postgres    false    188   �       �           2606    24625    cart cart_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public         postgres    false    189    189            �           2606    24613     product_types product_types_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_types DROP CONSTRAINT product_types_pkey;
       public         postgres    false    186    186            �           2606    24615    products products_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    187    187            �           2606    24617    scent_types scent_types_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY scent_types
    ADD CONSTRAINT scent_types_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.scent_types DROP CONSTRAINT scent_types_pkey;
       public         postgres    false    188    188            g      x������ � �      c      x������ � �      d   �   x�u�=n�0��Y>�.��")K3t���H"� u�@v�� ����x��*_E�(�D�J��p"�֒�[ϫ������"�u[�vΛ�]�>���>�2&BfE(y�P�p�c�h�s�y-^�u���c# u|��D�>�����+�vOv��[���]�
�D�4ALMAilX������p�WY.�����0�3 `�      e   H  x����j�@E�=_ыٖ�~�6���d�ն�� i���<���&I���ԽW��\*�t�`��PbpPj ���Z�1�f��Bk	�dχ���T�Q�N�|x��>ˇJǅ����+M�@/4�:���؆���NhcJ\2���&� ێ��&���X�a���.��'^}��t eA%��N��3Ct��61�rK�{ �Ag�+t���VBVT��725V��7X=֒�5����yY�7������1ߗq?N�����u��g��pQ<�"�.�:nJb�4+�"�y���_c<�m����W��EV87`xr&�ɲ���\�i��j�x̝\,:�����px���Ϋ=�3�1*g������m�[3(u!�/��h���4=��T�����UA�M7o=���i��	T�,�1u2�c�:8���������w�X*f��u��9N,�����Eԉ�l��{z�}���q��cC)�
�E�s����{���BpE��́�����A~s���}�~�	��ٙ�Wy��n�1X���_�;D�i�����Zc�<�?��;�sq�ا�ք?����4�      f   �   x�M��
1D��W��&�m�"�u/1mQY��{�a�aoL"�UA�7`M�AO��@jaZ���w�0�W�ұ�T�~U�6@���T�@$�0}^�}�����x�n�[6g/
2���L���o�o�|�1� ��2�     