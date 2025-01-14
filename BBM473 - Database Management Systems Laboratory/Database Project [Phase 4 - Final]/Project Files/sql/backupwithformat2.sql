PGDMP                         z            postgres    14.2    14.2 Y    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3472                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16406    admin    TABLE     =   CREATE TABLE public.admin (
    admin_id integer NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16456 	   cart_item    TABLE     �   CREATE TABLE public.cart_item (
    cart_item_id integer NOT NULL,
    session_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    created_at date,
    modified_at date
);
    DROP TABLE public.cart_item;
       public         heap    postgres    false            �            1259    16492    cash_payment    TABLE     _   CREATE TABLE public.cash_payment (
    payment_id integer NOT NULL,
    discount_id integer
);
     DROP TABLE public.cash_payment;
       public         heap    postgres    false            �            1259    16442    category    TABLE     �   CREATE TABLE public.category (
    category_id integer NOT NULL,
    name character varying(40),
    type character varying(40),
    img_url character varying(50)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16435    company    TABLE     �   CREATE TABLE public.company (
    company_id integer NOT NULL,
    name character varying(41),
    category_id integer,
    logo_url character varying(50)
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    16495    credit_card_payment    TABLE     �   CREATE TABLE public.credit_card_payment (
    payment_id integer NOT NULL,
    card_number bigint,
    installment_number integer
);
 '   DROP TABLE public.credit_card_payment;
       public         heap    postgres    false            �            1259    16411    customer    TABLE     r   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    credit_card_id bigint,
    birthdate date
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16485    delivery    TABLE     �   CREATE TABLE public.delivery (
    delivery_id integer NOT NULL,
    delivery_method character varying(15),
    delivered_at date
);
    DROP TABLE public.delivery;
       public         heap    postgres    false            �            1259    16500    delivery_status    TABLE     l   CREATE TABLE public.delivery_status (
    delivery_id integer NOT NULL,
    status character varying(10)
);
 #   DROP TABLE public.delivery_status;
       public         heap    postgres    false            �            1259    16507    discount    TABLE     d   CREATE TABLE public.discount (
    discount_id integer NOT NULL,
    percentage integer NOT NULL
);
    DROP TABLE public.discount;
       public         heap    postgres    false            �            1259    16815    history    TABLE     n   CREATE TABLE public.history (
    hist_id integer NOT NULL,
    hist_value character varying(250) NOT NULL
);
    DROP TABLE public.history;
       public         heap    postgres    false            �            1259    16473    order_status    TABLE     f   CREATE TABLE public.order_status (
    order_id integer NOT NULL,
    status character varying(10)
);
     DROP TABLE public.order_status;
       public         heap    postgres    false            �            1259    16468    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    session_id integer NOT NULL,
    created_at date,
    payment_id integer NOT NULL,
    delivery_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16478    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    customer_id integer NOT NULL,
    payment_method character varying(11),
    total_amount numeric,
    discount_id integer
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    16428    platin_customer    TABLE     �   CREATE TABLE public.platin_customer (
    customer_id integer NOT NULL,
    discount_id integer NOT NULL,
    max_delivery_date character varying NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL
);
 #   DROP TABLE public.platin_customer;
       public         heap    postgres    false            �            1259    16421    premium_customer    TABLE     �   CREATE TABLE public.premium_customer (
    customer_id integer NOT NULL,
    discount_id integer NOT NULL,
    max_delivery_day character varying NOT NULL,
    start_date date,
    end_date date NOT NULL
);
 $   DROP TABLE public.premium_customer;
       public         heap    postgres    false            �            1259    16449    product    TABLE     E  CREATE TABLE public.product (
    product_id integer NOT NULL,
    name character varying(40),
    description character varying(80),
    img_url character varying(50),
    category_id integer,
    price numeric,
    discount_perc integer,
    created_at date,
    modified_at date,
    deleted_at date,
    stock integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16461    shopping_session    TABLE     �   CREATE TABLE public.shopping_session (
    session_id integer NOT NULL,
    user_id integer NOT NULL,
    total numeric,
    created_at date,
    updated_at date
);
 $   DROP TABLE public.shopping_session;
       public         heap    postgres    false            �            1259    16416    standart_customer    TABLE     L   CREATE TABLE public.standart_customer (
    customer_id integer NOT NULL
);
 %   DROP TABLE public.standart_customer;
       public         heap    postgres    false            �            1259    16401    supplier    TABLE     [   CREATE TABLE public.supplier (
    supplier_id integer NOT NULL,
    company_id integer
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16394    users    TABLE     A  CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(20),
    surname character varying(25),
    address character varying(41),
    country character varying(20),
    city character varying(20),
    phone character varying(11),
    user_password character(50),
    created_at date
);
    DROP TABLE public.users;
       public         heap    postgres    false            x          0    16406    admin 
   TABLE DATA           )   COPY public.admin (admin_id) FROM stdin;
    public          postgres    false    212   �l       �          0    16456 	   cart_item 
   TABLE DATA           l   COPY public.cart_item (cart_item_id, session_id, product_id, quantity, created_at, modified_at) FROM stdin;
    public          postgres    false    220   �l       �          0    16492    cash_payment 
   TABLE DATA           ?   COPY public.cash_payment (payment_id, discount_id) FROM stdin;
    public          postgres    false    226   �m       ~          0    16442    category 
   TABLE DATA           D   COPY public.category (category_id, name, type, img_url) FROM stdin;
    public          postgres    false    218   �m       }          0    16435    company 
   TABLE DATA           J   COPY public.company (company_id, name, category_id, logo_url) FROM stdin;
    public          postgres    false    217   rn       �          0    16495    credit_card_payment 
   TABLE DATA           Z   COPY public.credit_card_payment (payment_id, card_number, installment_number) FROM stdin;
    public          postgres    false    227   o       y          0    16411    customer 
   TABLE DATA           J   COPY public.customer (customer_id, credit_card_id, birthdate) FROM stdin;
    public          postgres    false    213   Go       �          0    16485    delivery 
   TABLE DATA           N   COPY public.delivery (delivery_id, delivery_method, delivered_at) FROM stdin;
    public          postgres    false    225   p       �          0    16500    delivery_status 
   TABLE DATA           >   COPY public.delivery_status (delivery_id, status) FROM stdin;
    public          postgres    false    228   �p       �          0    16507    discount 
   TABLE DATA           ;   COPY public.discount (discount_id, percentage) FROM stdin;
    public          postgres    false    229   �p       �          0    16815    history 
   TABLE DATA           6   COPY public.history (hist_id, hist_value) FROM stdin;
    public          postgres    false    230   Eq       �          0    16473    order_status 
   TABLE DATA           8   COPY public.order_status (order_id, status) FROM stdin;
    public          postgres    false    223   �z       �          0    16468    orders 
   TABLE DATA           [   COPY public.orders (order_id, session_id, created_at, payment_id, delivery_id) FROM stdin;
    public          postgres    false    222   {       �          0    16478    payment 
   TABLE DATA           e   COPY public.payment (payment_id, customer_id, payment_method, total_amount, discount_id) FROM stdin;
    public          postgres    false    224   �{       |          0    16428    platin_customer 
   TABLE DATA           l   COPY public.platin_customer (customer_id, discount_id, max_delivery_date, start_date, end_date) FROM stdin;
    public          postgres    false    216   0|       {          0    16421    premium_customer 
   TABLE DATA           l   COPY public.premium_customer (customer_id, discount_id, max_delivery_day, start_date, end_date) FROM stdin;
    public          postgres    false    215   �|                 0    16449    product 
   TABLE DATA           �   COPY public.product (product_id, name, description, img_url, category_id, price, discount_perc, created_at, modified_at, deleted_at, stock) FROM stdin;
    public          postgres    false    219   �|       �          0    16461    shopping_session 
   TABLE DATA           ^   COPY public.shopping_session (session_id, user_id, total, created_at, updated_at) FROM stdin;
    public          postgres    false    221   c       z          0    16416    standart_customer 
   TABLE DATA           8   COPY public.standart_customer (customer_id) FROM stdin;
    public          postgres    false    214   �       w          0    16401    supplier 
   TABLE DATA           ;   COPY public.supplier (supplier_id, company_id) FROM stdin;
    public          postgres    false    211   &�       v          0    16394    users 
   TABLE DATA           v   COPY public.users (user_id, user_name, surname, address, country, city, phone, user_password, created_at) FROM stdin;
    public          postgres    false    210   e�       �           2606    16410    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    212            �           2606    16761    cart_item cart_item_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (cart_item_id);
 B   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_pkey;
       public            postgres    false    220            �           2606    16759    cash_payment cash_payment_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cash_payment
    ADD CONSTRAINT cash_payment_pkey PRIMARY KEY (payment_id);
 H   ALTER TABLE ONLY public.cash_payment DROP CONSTRAINT cash_payment_pkey;
       public            postgres    false    226            �           2606    16448    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    218            �           2606    16441    company company_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    217            �           2606    16786 7   credit_card_payment credit_card_payment_card_number_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.credit_card_payment
    ADD CONSTRAINT credit_card_payment_card_number_key UNIQUE (card_number);
 a   ALTER TABLE ONLY public.credit_card_payment DROP CONSTRAINT credit_card_payment_card_number_key;
       public            postgres    false    227            �           2606    16754 ,   credit_card_payment credit_card_payment_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.credit_card_payment
    ADD CONSTRAINT credit_card_payment_pkey PRIMARY KEY (payment_id);
 V   ALTER TABLE ONLY public.credit_card_payment DROP CONSTRAINT credit_card_payment_pkey;
       public            postgres    false    227            �           2606    16809 $   customer customer_credit_card_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_credit_card_id_key UNIQUE (credit_card_id);
 N   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_credit_card_id_key;
       public            postgres    false    213            �           2606    16415    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    213            �           2606    16491    delivery delivery_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT delivery_pkey PRIMARY KEY (delivery_id);
 @   ALTER TABLE ONLY public.delivery DROP CONSTRAINT delivery_pkey;
       public            postgres    false    225            �           2606    16511    discount discount_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (discount_id);
 @   ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_pkey;
       public            postgres    false    229            �           2606    16819    history history_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (hist_id);
 >   ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
       public            postgres    false    230            �           2606    16472    orders order_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id);
 ;   ALTER TABLE ONLY public.orders DROP CONSTRAINT order_pkey;
       public            postgres    false    222            �           2606    16779    orders orders_payment_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payment_id_key UNIQUE (payment_id);
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_payment_id_key;
       public            postgres    false    222            �           2606    16484    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    224            �           2606    16743 $   platin_customer platin_customer_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.platin_customer
    ADD CONSTRAINT platin_customer_pkey PRIMARY KEY (customer_id);
 N   ALTER TABLE ONLY public.platin_customer DROP CONSTRAINT platin_customer_pkey;
       public            postgres    false    216            �           2606    16427 &   premium_customer premium_customer_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.premium_customer
    ADD CONSTRAINT premium_customer_pkey PRIMARY KEY (customer_id);
 P   ALTER TABLE ONLY public.premium_customer DROP CONSTRAINT premium_customer_pkey;
       public            postgres    false    215            �           2606    16455    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    219            �           2606    16467 &   shopping_session shopping_session_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.shopping_session
    ADD CONSTRAINT shopping_session_pkey PRIMARY KEY (session_id);
 P   ALTER TABLE ONLY public.shopping_session DROP CONSTRAINT shopping_session_pkey;
       public            postgres    false    221            �           2606    16420 (   standart_customer standart_customer_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.standart_customer
    ADD CONSTRAINT standart_customer_pkey PRIMARY KEY (customer_id);
 R   ALTER TABLE ONLY public.standart_customer DROP CONSTRAINT standart_customer_pkey;
       public            postgres    false    214            �           2606    16770     supplier supplier_company_id_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_company_id_key UNIQUE (company_id);
 J   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_company_id_key;
       public            postgres    false    211            �           2606    16405    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supplier_id);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    211            �           2606    16400    users user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    210            �           2606    16614    admin admin_admin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.users(user_id) NOT VALID;
 C   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_admin_id_fkey;
       public          postgres    false    212    210    3245            �           2606    16680 #   cart_item cart_item_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id) NOT VALID;
 M   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_product_id_fkey;
       public          postgres    false    220    219    3267            �           2606    16690 #   cart_item cart_item_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.shopping_session(session_id) NOT VALID;
 M   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_session_id_fkey;
       public          postgres    false    220    221    3271            �           2606    16720 *   cash_payment cash_payment_discount_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cash_payment
    ADD CONSTRAINT cash_payment_discount_id_fkey FOREIGN KEY (discount_id) REFERENCES public.discount(discount_id) NOT VALID;
 T   ALTER TABLE ONLY public.cash_payment DROP CONSTRAINT cash_payment_discount_id_fkey;
       public          postgres    false    229    226    3287            �           2606    16725 )   cash_payment cash_payment_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cash_payment
    ADD CONSTRAINT cash_payment_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) NOT VALID;
 S   ALTER TABLE ONLY public.cash_payment DROP CONSTRAINT cash_payment_payment_id_fkey;
       public          postgres    false    224    3277    226            �           2606    16670     company company_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id) NOT VALID;
 J   ALTER TABLE ONLY public.company DROP CONSTRAINT company_category_id_fkey;
       public          postgres    false    3265    217    218            �           2606    16730 7   credit_card_payment credit_card_payment_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_card_payment
    ADD CONSTRAINT credit_card_payment_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) NOT VALID;
 a   ALTER TABLE ONLY public.credit_card_payment DROP CONSTRAINT credit_card_payment_payment_id_fkey;
       public          postgres    false    227    3277    224            �           2606    16715 0   delivery_status delivery_status_delivery_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery_status
    ADD CONSTRAINT delivery_status_delivery_id_fkey FOREIGN KEY (delivery_id) REFERENCES public.delivery(delivery_id) NOT VALID;
 Z   ALTER TABLE ONLY public.delivery_status DROP CONSTRAINT delivery_status_delivery_id_fkey;
       public          postgres    false    228    225    3279            �           2606    16710    orders order_delivery_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_delivery_id_fkey FOREIGN KEY (delivery_id) REFERENCES public.delivery(delivery_id) NOT VALID;
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT order_delivery_id_fkey;
       public          postgres    false    3279    225    222            �           2606    16695    orders order_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.shopping_session(session_id) NOT VALID;
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT order_session_id_fkey;
       public          postgres    false    3271    221    222            �           2606    16700 '   order_status order_status_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_status
    ADD CONSTRAINT order_status_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id) NOT VALID;
 Q   ALTER TABLE ONLY public.order_status DROP CONSTRAINT order_status_order_id_fkey;
       public          postgres    false    223    222    3273            �           2606    16654 0   platin_customer platin_customer_discount_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platin_customer
    ADD CONSTRAINT platin_customer_discount_id_fkey FOREIGN KEY (discount_id) REFERENCES public.discount(discount_id) NOT VALID;
 Z   ALTER TABLE ONLY public.platin_customer DROP CONSTRAINT platin_customer_discount_id_fkey;
       public          postgres    false    216    3287    229            �           2606    16649 2   premium_customer premium_customer_discount_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premium_customer
    ADD CONSTRAINT premium_customer_discount_id_fkey FOREIGN KEY (discount_id) REFERENCES public.discount(discount_id) NOT VALID;
 \   ALTER TABLE ONLY public.premium_customer DROP CONSTRAINT premium_customer_discount_id_fkey;
       public          postgres    false    215    3287    229            �           2606    16675     product product_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id) NOT VALID;
 J   ALTER TABLE ONLY public.product DROP CONSTRAINT product_category_id_fkey;
       public          postgres    false    3265    218    219            �           2606    16685 .   shopping_session shopping_session_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shopping_session
    ADD CONSTRAINT shopping_session_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 X   ALTER TABLE ONLY public.shopping_session DROP CONSTRAINT shopping_session_user_id_fkey;
       public          postgres    false    210    3245    221            �           2606    16792 !   supplier supplier_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 K   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_company_id_fkey;
       public          postgres    false    217    211    3263            �           2606    16619 "   supplier supplier_supplier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.users(user_id) NOT VALID;
 L   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_supplier_id_fkey;
       public          postgres    false    211    210    3245            x      x�3������ S �      �   �   x���]�0���.n��z�=��?�}�ך&��7Ci��`e21�$o�t|Y	+��Y�������=���=3%�B(�Z��Espd�TF씪�U�.j���f�ɛ�Z(Y�^�_�R����1q��=�\�����dxf�Z �3�8�lZ�,e��.O��������1�"�xz������K7����_�������?�r�      �   3   x�%��  ���0Dvq�9��h*Pj�Ű���d�C��]t�w���V      ~   �   x�]�A
�0EדS�	�zq�ܤ�O�ؤΤ��^�Շ�{E$��}�q��#�r�1Ag���3uo���[���>	x����_�.x�B��$3UZO6��Yֈ��u̞[��)�A�+���8瞌�D�      }   �   x�3��M-JNMI-�uJͫ�4�̅���
ҹ�9��s���e ,f�..OLO̓H@9`YS�]��̲TNCΊ�,n���E7��/�W���K�4B7ː317�L��F�I��@+�$����� �\<      �   5   x�3�4E&@�i�e�ijh��8͸,8M�,���8��,9�W� ��      y   �   x�e�kn� ���.�<�s���;$�l�E��'? Z�LÚ��S`-��?�J�����1n:M�+Bz��$(R��y)��l؊�Yyj���CFK�<Ê�g�[A�v��
*�ՙ�K��é�3G-;��y���9t�1�υ�s�Zj���[?y�C���=fo�3��|.�7�����ο?"�F�U(      �   m   x�3�LN,R ��|N###]].Cl\F؅��p�p�%f�Kr�b�0�2�.a�e�Y��YP������e�d�k�"ii�	��4���Bf��Q9^� �{F�      �   [   x�3�L��-�I-IM�2Db!����&HlS$�ۜ3?O�$#U�<����c�YP�Z�X����ei��A�s1��XD�	!�P������ �od�      �   >   x�˱� ����K zq�u�!�h�
J��bh��iJe^�iu����>�:���"��d\	�      �   y	  x����o7���_1{�=8�U$��s΋XL��=�,�Q����"mkԯX�� C���{��G��ӯ������������e���?n�qC?���aH�q�?�h^cXø��?��>��{:wϟ�O�;����çO����~�?���_��?߰k�z9a�Y�!��ݞ�p�b/')��R��
g\C7gBMk�{93r������WN�и�n(zY������5�0t�MG^Sw�х�'��fG�SBPv=���QE�M
(�ۯ4+�qM�¦EM+u+��8�Ƅ�4��-Hf�+ww?�V��~�*���x���[e(fV7h�ly~�*���g4�*��b�o�-�q��2l�M��,�n�V��+u�Z�*[@���:
[ehqlAQ6����A��3�����L�?�E�Կv��;GAQvy �^=*�� �dT��c:��� ����"(;/�ɱ��� �6t2��e�R�@���(;�&O���eq�r���V�<H����?m���������!o���̭ȹ�(�"O[�W�+�;���u��V�����J�>}�����0��h}s��L���ٚB��c�H[SdP�Gi~	��t:?|9<f��L�Q.X����5�;2k1�Fm��d#��A��c��{k��f���h�&�R>r��O��d��ѓ���O��'�Z%�6K�}f�4��>��.�ɚ��=�5�Y����{��e;]���s�R�}�?O������xz����Q��?ޝ2<�N\��~Ϛ���~��7��Q��[����}����Ƀ�h���t����m��32����6K񌰌�k��xF�ͮ����f�3*ސ�����7���Gg���W��7Kӽ��h���m��{Y�z��(�/�K�=��\,E�a�E�y����r����MI�����2�,��Ya��`�ؿ,
w1�C�6�0�0צ����l7��4�
,��r4fW�XT`�Y	7`	aR{��4�2���ڀ�2��PĀ�
�5�� Ȱ����,5��r )����$�R�t���PD��$�)��S�8 ���0�19GZR���� I�]�Ɋ��7l��x��Ui��[��_�y�����c�{��~������,l0D�Qܪ�C�KC��m�T�f�]��	}�"�]
���im���)U?<�V��������)�pMgA;�;QFB�wx�¬J�a�SYvq��R�"	���)a�((��03h6L�B|�d
�"]� ]0���3GP�/�������+�PT�/��hXT�/,�CFE��><c<���x�u�i�"~Y�֚QQ�N�GE�����R��:��?�|���9W�	�_`t����t����s�#�R���I�9}�+�Q�T�]��U��:�5�jl��;���VzG�f��}V�������Y��,^������:=}�zw�4�Kr���z���G�3�;̸�+�4*މ��V?Y1�����J�b���Xr%Y񘐭�J��0![J�����`��P���&ݧ�	<5��ݘ�-xj\S0�AYMxj,k�I�(�&3b�h��B���Y4�K��Ǉ,xd�\��S��(4+V�h���$�'���������o߽߰�g��\vSTl|#�1� �(�Y���x��X4pG����&S9���6)4~kw�_
�:�b5�2Ɋ'8�E��tY�u=�g6w�F#�/��)lg#�yG�E�K�(�h����ɓE��%��͛�ϯ��h��BK>w`�>KmӺ�`����l���mc�>ˉ{+��h`��\�tY�1Q�%���� )�y�Ӣ)^xQ}uٟ1]�_�N���BN/�m�`����s�1h����]�o���}\�0h�_V��`�32�qcS�B���-���#Ő�s�Fj��-�� \�:��B�^I֚�E��=��^8�H[�W��n3�r�n�\��4��פ!J�bo��Ϥ�6���-�V�B"�G����eI�{R4.Yg�� �����a���2�H����C���j��R1C�]I��	2o!��Z$E���o��h<�z@�-$�*P��h\��6)���n1C�]I��/(��Le*����֗�����D�B��]c��h<͞QRm����d�B���$�8I��ڟ�H��r=ͣ�x!�_�f��57O�@��X�@�-W�س���ZH�{��4�����S4�FǷ��g!M���g!�g�Z$E�i�� s�rl���	������<��.���/+��Xa?�����{:�<��;�;�� �B����P�PP~��pQ���O���V(hǲ��zשc��{C���?j@z��P�c���XH�wY�! ��h��Wf`���kul.·a�eK�ȷ\�+C,̯�*׻�?������       �   <   x�3�L��-�I-IM�2Db!����&HlS$���m�Ķ�,(J-H,��K����� @�(�      �   W   x�M��� D��n/f Q���_G��z_ 01k�M4!Th-K(v����A��k8ƽ����"1�Z+\X�RI,n�Z��|�[W�      �   �   x�u�;�0�zu��eK�u	N�&@A��A���i�V�����yA�W01xK���<�zHB
$��wq�7ԣ��>���҈5�Q=�mQ덶S�|�j�t�Occ�<������"0����x����J�\�/�2L&9=���������:�]�.]"��H{      |   W   x�M���0C��.T�Iv��s"U�����؞fj�$�B��T��Y"�[�l&�B�%�E�H�Xږ���B"�o�ڴ�| !�-      {   U   x�}��	�0��.)�S't��?Gp�
z>$��
�X3��J�²��WN!�Or7M�r��#�v%�b�=ԙ����} x �"<         W  x��T�n�0</�b�EQ~%N��E`��%F�%�i�t�}�m�@� �IΚ��'>Ǖ.|���č�l�z�²��6�����:Ԑ�d��],�&Ir�pZ��#,>b)�=e�~��~��
tg��(rM{.�gc(N���yUk�ѐ���d�����L� ���ZYk,>+��Zvƞ`i�J�����A��t�|6����f���f�bnt��Di�Nz/-
��w�o��ȍ2z�ǃ��<++[�>5��F�ZB)���s�X7 �1�?�bsȴW7E���R��~�Qu!QB{t�<Z�O�N�ˎ��_���0�-�^�ʋ��HO-�;�����U4���A����{�4Iӛ$���1gT.Y�C��Y���9�\�����RV�z6���o1��Q��� ��W����V�T�l#��a��),)���敮��Q\8w� �r)�A҄�<Jj�'QUĳm�.�y-���&�c��Ӓ�~�c �Ԭ�@S���|���x�JSHE�f��t	���f�7y鄍�Xm��7�:����H��=�'�?^6�9�ΰ�Te?t.���r�>�Ӽ�{�e��k#t      �   �   x�m�[� E�/{Il�+���H;���`��"�((�W(�nl�	b��g�-�
i��	g�� )�%���X����f<M�f�}���.;����sL%�^'��d[�����T��j�W`͋.���?|�Dt^A	      z      x�3������� 	sk      w   /   x��A  �wN�h��u���K�[�K�>����P���)      v   x  x��WMs�J]_~��)Qd1�:5�?k��:ҁ��&4��gf9�ٿ����ט��LJg���PX-�s�維��p���=~2q�&,Ɖ_����m��� #�q��^S��Y�Z����y�jyk�������7(߭��*R%F��N����L�fb���e��=�ۗ�=¦6�*�R���⤠�#��A5����	����&����X*
��ZU�%ڑ+�[$�	|9�B��Yހp2������F[�*M���`�8x�̺�����԰W�e4��G���\+���D@�����k���+�����G�_��N�p����c�#}���VL�T���g���o9����:�k�_D��8��,+�hc��ɂ��!�>��\��`1�+��!4��n���4/�c���F�]z�y��p<2��xň\�qhP�۾nyf�[��vx�wdMB2L��R;KE&����o2�)��K������0�Ӽn�84���҈D���p��m��1L=��J�e��2�b�	̈́d����@�\�qѽ�6sc3�>R�vJVʎN�	6I8�)�R��U�5��7��s� ��^�����f�7�|uJ�:�Ť����<�u�����zs� ê��7��Z7N4|�m4.�S8j┐
�D�m�s���2J"z�#,�$�/J�ȝ�J�W��u%����fA���I(�)������ŕm�N�������\8������(.�>�NBE>�t�/{��]}�\]$vzB��"N	5DS��n0�K��QzV�I*�����U$��{�4(yI���,��1�b�, k,�����	n�W�q�pӵ��r1>%I�cm��e㊵�����5�qBM[>�3%S�b�p{3��󵥟�Q���t�/*yZ�D\dW:��"����֪ft.1aZ��q��{GW�'w7%E�^��z�����驝~���%�C"��� ���<O�M��㕤(�/*������9�������!�?��Pء^����>�:�=���ǃf��2q����d��?=@�/V�G{�7oN{�0���_(ms�O�ωK�w O�~�����&y���u���"�.�rw���Կ���K�v��&~��5�Z�-�n+��L�� �$s~     