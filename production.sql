PGDMP         6                q            d70cjlnrvq5jjs    9.1.9    9.1.9 -    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            �           1262    666975    d70cjlnrvq5jjs    DATABASE     �   CREATE DATABASE d70cjlnrvq5jjs WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d70cjlnrvq5jjs;
             fbvbopzqcugalt    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             fbvbopzqcugalt    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  fbvbopzqcugalt    false    6            �            3079    12027    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    172            �            1259    667555    announcements    TABLE       CREATE TABLE announcements (
    id integer NOT NULL,
    content_hr character varying(255),
    content_en character varying(255),
    expires_on date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.announcements;
       public         fbvbopzqcugalt    false    6            �            1259    667553    announcements_id_seq    SEQUENCE     v   CREATE SEQUENCE announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.announcements_id_seq;
       public       fbvbopzqcugalt    false    171    6            �           0    0    announcements_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE announcements_id_seq OWNED BY announcements.id;
            public       fbvbopzqcugalt    false    170            �            1259    667533 
   categories    TABLE     }   CREATE TABLE categories (
    id integer NOT NULL,
    name_hr character varying(255),
    name_en character varying(255)
);
    DROP TABLE public.categories;
       public         fbvbopzqcugalt    false    6            �            1259    667531    categories_id_seq    SEQUENCE     s   CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public       fbvbopzqcugalt    false    167    6            �           0    0    categories_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE categories_id_seq OWNED BY categories.id;
            public       fbvbopzqcugalt    false    166            �            1259    667544    posts    TABLE       CREATE TABLE posts (
    id integer NOT NULL,
    title_hr character varying(255),
    title_en character varying(255),
    body_hr text,
    body_en text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.posts;
       public         fbvbopzqcugalt    false    6            �            1259    667542    posts_id_seq    SEQUENCE     n   CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public       fbvbopzqcugalt    false    6    169            �           0    0    posts_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE posts_id_seq OWNED BY posts.id;
            public       fbvbopzqcugalt    false    168            �            1259    667511    projects    TABLE       CREATE TABLE projects (
    id integer NOT NULL,
    description_hr text,
    description_en text,
    summary_hr text,
    summary_en text,
    participating_countries text,
    country character varying(255),
    city_hr character varying(255),
    city_en character varying(255),
    begins_on date,
    ends_on date,
    infoletter_file_name character varying(255),
    infoletter_content_type character varying(255),
    infoletter_file_size integer,
    infoletter_updated_at timestamp without time zone,
    application_form_file_name character varying(255),
    application_form_content_type character varying(255),
    application_form_file_size integer,
    application_form_updated_at timestamp without time zone,
    maximum_age integer,
    minimum_age integer,
    deadline date,
    available_space integer,
    category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name_en character varying(255),
    name_hr character varying(255)
);
    DROP TABLE public.projects;
       public         fbvbopzqcugalt    false    6            �            1259    667509    projects_id_seq    SEQUENCE     q   CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projects_id_seq;
       public       fbvbopzqcugalt    false    6    163             	           0    0    projects_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE projects_id_seq OWNED BY projects.id;
            public       fbvbopzqcugalt    false    162            �            1259    667028    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         fbvbopzqcugalt    false    6            �            1259    667522    testimonials    TABLE       CREATE TABLE testimonials (
    id integer NOT NULL,
    content_hr text,
    content_en text,
    author character varying(255),
    project_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.testimonials;
       public         fbvbopzqcugalt    false    6            �            1259    667520    testimonials_id_seq    SEQUENCE     u   CREATE SEQUENCE testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.testimonials_id_seq;
       public       fbvbopzqcugalt    false    6    165            	           0    0    testimonials_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE testimonials_id_seq OWNED BY testimonials.id;
            public       fbvbopzqcugalt    false    164            �           2604    667558    id    DEFAULT     f   ALTER TABLE ONLY announcements ALTER COLUMN id SET DEFAULT nextval('announcements_id_seq'::regclass);
 ?   ALTER TABLE public.announcements ALTER COLUMN id DROP DEFAULT;
       public       fbvbopzqcugalt    false    170    171    171            �           2604    667536    id    DEFAULT     `   ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public       fbvbopzqcugalt    false    167    166    167            �           2604    667547    id    DEFAULT     V   ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public       fbvbopzqcugalt    false    169    168    169            �           2604    667514    id    DEFAULT     \   ALTER TABLE ONLY projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);
 :   ALTER TABLE public.projects ALTER COLUMN id DROP DEFAULT;
       public       fbvbopzqcugalt    false    163    162    163            �           2604    667525    id    DEFAULT     d   ALTER TABLE ONLY testimonials ALTER COLUMN id SET DEFAULT nextval('testimonials_id_seq'::regclass);
 >   ALTER TABLE public.testimonials ALTER COLUMN id DROP DEFAULT;
       public       fbvbopzqcugalt    false    164    165    165            �          0    667555    announcements 
   TABLE DATA               `   COPY announcements (id, content_hr, content_en, expires_on, created_at, updated_at) FROM stdin;
    public       fbvbopzqcugalt    false    171    2294            	           0    0    announcements_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('announcements_id_seq', 3, true);
            public       fbvbopzqcugalt    false    170            �          0    667533 
   categories 
   TABLE DATA               3   COPY categories (id, name_hr, name_en) FROM stdin;
    public       fbvbopzqcugalt    false    167    2294            	           0    0    categories_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('categories_id_seq', 24, true);
            public       fbvbopzqcugalt    false    166            �          0    667544    posts 
   TABLE DATA               Z   COPY posts (id, title_hr, title_en, body_hr, body_en, created_at, updated_at) FROM stdin;
    public       fbvbopzqcugalt    false    169    2294            	           0    0    posts_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('posts_id_seq', 8, true);
            public       fbvbopzqcugalt    false    168            �          0    667511    projects 
   TABLE DATA               �  COPY projects (id, description_hr, description_en, summary_hr, summary_en, participating_countries, country, city_hr, city_en, begins_on, ends_on, infoletter_file_name, infoletter_content_type, infoletter_file_size, infoletter_updated_at, application_form_file_name, application_form_content_type, application_form_file_size, application_form_updated_at, maximum_age, minimum_age, deadline, available_space, category_id, created_at, updated_at, name_en, name_hr) FROM stdin;
    public       fbvbopzqcugalt    false    163    2294            	           0    0    projects_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('projects_id_seq', 61, true);
            public       fbvbopzqcugalt    false    162            �          0    667028    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       fbvbopzqcugalt    false    161    2294            �          0    667522    testimonials 
   TABLE DATA               g   COPY testimonials (id, content_hr, content_en, author, project_id, created_at, updated_at) FROM stdin;
    public       fbvbopzqcugalt    false    165    2294            	           0    0    testimonials_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('testimonials_id_seq', 8, true);
            public       fbvbopzqcugalt    false    164            �           2606    667563    announcements_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
       public         fbvbopzqcugalt    false    171    171    2295            �           2606    667541    categories_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public         fbvbopzqcugalt    false    167    167    2295            �           2606    667552 
   posts_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public         fbvbopzqcugalt    false    169    169    2295            �           2606    667519    projects_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public         fbvbopzqcugalt    false    163    163    2295            �           2606    667530    testimonials_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.testimonials DROP CONSTRAINT testimonials_pkey;
       public         fbvbopzqcugalt    false    165    165    2295            �           1259    667031    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         fbvbopzqcugalt    false    161    2295            �   )  x���=N�@Fk��4T�vvm�vM��.!Ѭ��^��F�]�s��E�Ƚ�E$P�@���|�'��`c��M�s|gMC0XrZ��<�i}'U�[�y���xW/�Í|�vhM����tƴJW�3\m��7��o��d��:�q� =ok�+�ɟ���J�qp�<bE��� �2%�Ȳ�b� ��j�i�H���[�I���YĿ�\ ��d"�qZ$�H~�B�JgI�V�k?��VOd���ktV���oEĦg�S��DV&<f��Wٹ��=%b�	�y>�a~ �լ:      �   �   x�m�M
�0�דS�b���U�pQ*Z�͐�4��@���Sf��*���{0���(2Iȋ���T.��M�HJ2o	QI�&�Ow�Vݹ��4)�`��W�������r�1v4?yp�p�(�]�[�"�?������B�6�5IwV(��tONZB�a>�a����J��}����� 8����9�¶��Z�c�	c�	Z�pp      �   w  x��Y�r�6>KO��Ԏ�3���\��f����-���CB3� TfN���kO��n�/�9�/�'ٯ �Q�ԦR%K3$�����?�`���O|��x��_���(�X���VKQ���WeVJha�JvRȲ՝���b#ţ�j�8�����Ov���B�1��<�����k��8����Vz�¼0t���i�Wb^iȟH�_�a��	nBk;iV�@-�����b�B��nlUc;[�:ڦƶ�uF�Э�K�dW����m3�����W����5N8ݨb�d)f�2Q���B�N�X��
�0 ����vg �{ӿf�'Ν*|+;�����E�*]�9���~�t�0��+Y(QZr_-�5�S���c@p��+m����H�!xAo謅��_\�V�Z�څ�*K�64��5� H�̎���O'��RK��%3,8����Z��5��
�l�� 
IO ��r0b.;C���/�o;��N��@�~fs�N`�Q������58��/�����otK�TA}Gx��* @���֓�*����;w���!��;���J������o��6&WP��H�2L`����c"ӕ�Y��ز
��+����Ux���">���/��'zc7���湆G�s�v;Z������&��OO�gGb:=�zv�?���N�����h���ޝ�eZ��i� .���a������D<��na�\�&�2T� t��s���	�X��B�KE���%)ߩ�� �(Bh�B�)Z�M��_�9�A�B�mh�#I:a�ේ�"�h�K&�v!X�� #�����dV�a��%��lB$mRl#C��X�CJ��I�el�'��`��mx�0��G^�d�S�P#]��}	B������I3qf"�tׯ����	���@�ɶ�4��:"۳@P����z6��V����)��KmQid�Hz9N���^*����c�����yȅ,U���;d&��� y� �yz璢�T�؅h*�9M �R�'��@HzQj����(Ho���<B��s+�%qR���``�%+j���*{�u���4�Wa����-�BV�������	j�=1��	S�.	%�7.��V(AKݻ_��v���y��v�i".��2�r�M�q4Q�E:CA�O����©y�$�Aw'�ԝ	B/4��!o�a/{��t��~;���3�p��/���[Og��T��ϝ�%���?�OĕF���I	�p(�_�����O~�
��S (��s ���}la�QA�P�um��Xͥ^,ŏ���I$���Z�S��`��Wi艪*JO�i�k�#�di�?/#DP$=�?�a�D
�l���h�R�$�9'A�Ϣ�1<��+��6�sj�(�\� �I�	Wy��O��G�N;k�������i:<�ݹ�)Nr��FӰ���C�|o�(�
~��IE��Ԛ��ӆ���i�v�2�V�5-�DC��*E�/&Q�_�� �W$�QY�u�����?G�������WgG����tzt�{w��Ou1���#k�Sz���{;�� uF��V<u��/:M�C�EXXg�0�TB�E��Jވ��/A�0�傃{a��$�>?E�����twHphR�"�&�e$9���*fljh&b%�Q������1�����&z���^��ZT�%�ЉBNZ��Do��m!�b�������Ftm��$�#4@�ٜ��j�칊�$�)>��(__RS����n̡	�	;)J$DCMp�#&G�"Y��h^��@vБ�s�͸���`x*���Ä�/��������`v6;9;>���=������Qvr��l�������_�A	����}���Gt :�� �{n��C�x��I_�����U�s�|G��� �i&�>fӻYl��Am�QՉ&��W��Zn�v����h!'G8e�X���]��j5�-��/.�d�W���G#c��A3Ш:�>�ğt�M���x?�	���'�&tW�k@�Gu�W�J�"���k;)Z[���"u�C��H���T����Oq���`l�pR )偮V�ܕ��tr��/�|7l���g�3G���Ղ��$�U�y����A�J:�ժ%lSi~-�ݐ�����\R���B.�7�<�9M�V�h\��&�@���[�g�c:|��c������'�!�sh}o��Բq7�Mt��� �d�{���{ B�i).?��ZF4�Vp�i�钚�}��Q�يT��N,`�8�s8��j��,�
���K��,C��i4Vh_��5F�Jn4O*n2#/��4��LU���V���E��Ԯ�3�I���u��q�R������ː��=h�9�V߰;�&E��&�
�XT�Q;ɒ�\�@1I�9�y�����f��ɜF�^���9�^ͱQ�����9N� ���>+��/��5Qئ�:�u���+���t�aD�?$A}d�9Ab��@䠨KQ��C ԹGĘl ��Q����b�B�s�8x�)J	"E���U#�R'H���<�� >�U�b�j���rd�XG�Ӥ�&���$�#��/�(V߶< N�yݐel�E��UX)����۶hm������솘�F��Z/��V�i4��zx���a@��.2K�-�	h;�&S��v�ԠkL��%�<�j�dyĕ�b�P�����}ѿ����8j�+�N�5庑�_h�5�iT�P�s⦾Uhy��<T("�I	%d$O}����ɉ�L�d��+sE��v=���������ARw �%M/u�� �wΨ"������K�rQd�r�ԏ��7�8*Io��,�mk�3L�����O����H��^)��f��M��|��������_�瓥�y�����i��l�&z���9�G#��f٘�T ޿�7+�t��ڂ����L��A��2^>Nri.^"�ҔN;'(ib�i����O�,BJ O�TQK�x(�Ʒ���C���ש&~FES��b@����a�������
���y���O3>�~q��������g��2a�!%��ӈ1�b g˴	��B�52/3q>��oȲ�;yI��Z�b�
��z�lAP��!�� Ã�H�v�r
#݊�e�� k��ȣ-�1����I,��V���*�͒�#�ҽF�[�j�v(��v08C��Z"�k�Q��
[��h�J����f���d58��c�* �N��UF�h�("r�8��1���41����K�<s��&��/��S��{���m��Vt�Pro�=���U�@�c�_K�8�H�QΣ��b�Uf.��]��7LKi��PQ����	.�7���t����Uu��rk|X0#p�� ��T�d�}O�C����A<9<=9��W�/��������l      �      x��}K�G���+¾�3�Aҙ�w��-�z�eIPI�膁B3�L2�����V�lz3^4f3��f�f7��͕V�/�K�;'"��G�l˾�n7�.����|�����O��oԪ���/�/�g����4Jf⮖�9}X(��*��WR�D��^D��X�
�d����H��b-W�mn���4�G"��Y"�|md�(D��h��(��B�+DV�At�oH��L�5��F�A4�Ϣ.���F.��p�;a�6x�v����,�����!Pt�fE(1�u��P�m��J�%^�PY���4�r�U��&�U�L��U���X����TdRlb��h%�'֫�x�Po��#\Ƙ�na��|�^S�e��D�-�,�(���B$�/p�JyNr�R��T�Y$d�/d:��U,Wh�g����00�!V�'ѕ�R���	��®��?*�7�Bbx:�����x~���OW+���KMϬ���y�r�ar�'��A���B?p/�\�˔�|�g��?&�f�M��s_�HjX1�,�j�rZ⡸�������;�iB�$�c��\.�(��<�яWj:�MW��:ʤʛQ1-֚��Do�So���t� 
��%�:]I~?��Sŕ�3D4�(��U���-� a
P?�� \�}�P+Ŵ��cv�u�]����LS����T��s��h	��������0J�.�a�x{����l]$��Ta�X��~�Ģ�Fb�S�ō
�N�-�#~�t`��ۯ�'�vE�h�+����I믃-PO;��@��<n1-��}w�A��}�����G�RvC=m��:�krp��WمNÖ��ᘞ�u<��OD���qo��y�~��ܩ<%":���?��p�����������	?��.qcG������?��HP?�3��[�И��F�b�1��N��n�|��hO����Gn��_���`x<wG����2���P��	|�U���h�':Ć�M��Ň��Du�I���
���^�u
�8"�U�[��B/�%@�tc�����e:���S�j�z���J�� ��6����}�g��H���D�����m�p��H��ᇮxcCh�]��B-sI[��E��xX�30�+bX�Ȕ�-k�bŚް�1�/OH��k���1X�McKќ{�@��^�C��c�TaTf�FJ5�J��{b�Ą�2���+����������͌�+���L���ȶ%.B
�Z�ވDQ�+r�1�PmT.nMn�L&��1�,}�r�l�u܃^�XPYэ�����RJW�(�:@��\pA2���l�k3��mI��UI�I#&6C�N(	C����\]ܲO�w��M�9#�E%SH�� �-�a��ۍ5��S�m���d��ݸ8�V^)O�6
���NK�F�``eL��n|���Cן�/>�ˏ#@��xZ�2� ��"��4��?-��s'��B��s5]v%t��Ns���?�Txa
P�<�/�9��j��9��NK2�������琫�Δ�%M�,��z�B��M5��HT�	1��Hu�U�����]�s%����h�4�O:]���[q���L�z�pJ���o ^bEڴ��z|f�e۬6�����ud)�4����� �OMS�	����s�|]\DxU�.���-�86��:n�2�2��!���0(_�5Q&Ί(�'����)ܽVz1K�:����c�f��S)}�\ >�?�4.!x��<��$�+�Q�
���k��"g�sjxo �c})�"n��B�I�	� �X ʆ���p��aT P�����}4�3%�<:/b1���+�^D� X��+i	�l?�l���H��?�'\�/E|)�爰 ��rCy�V��C�Բ����5�:FD��F��.�]�fV���ݠΰkjCeF?�i�v�0��K�<2�震_jx͏�=�hm:6l�>��M��,��5�G���Wi8vl�{h�=�?�B�Mx��Y.5����>>d^E�H���M�aF�iZK�f�p����p�nn�m��|iW��
�-I�N�2z��y	�E�;�wp�J���Pb���w�M|�!�Mʄ"�����":6�"z��TiR6���tܹ�e
�\�ꪈs�a��F���$i�,��j��c�#;�+���h�,a�ya�3@�ԪP �4��R�*2p�Pb�Y\bR�E�� �$�L|���ʀәR���E���kt��8�)�'+��,��.:�N��~�?�~��b�Ż�؟�MS�%چ����%�3�v�,Sp����-{��k ��4���U����UM{�X�5d�������Ѩ7��F=_��q����ޠe��靻/��&}����hA�7	�4�w����X/q�ǐ��n��>=���{��?��m���ak�u-�e�h�C�㝊ʑ�o=�b�k�X,v�	?���s%�wRhH�'񅁀��k`�y���9��<̜��!B���N���f��!Ǘ����P�I�b�2
s/p\V>'")Q��G,�(��n�L;���2�q �̘Ƙ/�l��"A�f(�#/�l�
1�h���<�D�7���5_˰M0=X�s�Oٮ��+h#���1��3�`D��* e�K��� F��|�'��zAv�W�"/���Yҹ��:�@�4p��mz�'g�
�%X���b���<������4b[�d����0�`��<�J��8�c�|���Cүʧ��
��M��?�ɭ��;���F�f���_�Zk6�-��d�ɍ>S�D�������x��s!C`@p���aB��^�z�u���Z"y���^�r�/=�����K5�z�]*���6�{�=� ��V_M�2�ar��C� �i�d��JYh`fThp6 T�61�f���ZƦK6Q����f��,X�r�}�-t&%!1٧k������r�5k5aaT6	4f��a�3�/$[aX䔆��>B����mw+���fͨ�F�`ݣ�C��o`�\���W�+�`�t;�p��daت�v��-SL���u"��;d�2^�$��U��"�����������Øм8ʱ�Ry�A
�,��Ե"����r��=$��х��ef���36*.ﱽじq��%��?Z�j�}b
�Fdf�EIF[SqK�s�ؑ���B};WFWtے�ښ���6́��r!��yI����+j���:H��-m	+���6�����kV�7�s
��X�/��J����x؛?�?���6�>`��8��R�2C<�;N-<�q�z�M������`ҝ����,~G�Ѓ1�nn�΍A�x�ЏoÖ?����&����q�z�~�?l׀�����t���+hI��x5���ґ�8Gf`ϒ����c����� y�A�zU�aګ�Ǘ�d�ϐ9+����� 
CFKh�`�1�����z@;M�'H܋ �؟M>\�cHi�����iAt^Իe�n/J�'��\m��B�o&���������0[�V�%�����(��-�p���=ʾxc�X��K�� �R6�}V��7��� ����q��X�窽��s+�*�q�5bOq����A\�8Ȳ��vL�G]#�?����F�uo�VM�<�q(P�-�˰.^>��D�~�M��kn����%.�G��y��p���^�5��7��Z�߰��:=�կl5[��x������^Л�-K���#���=����/��?�j����~���\_�I���\�eۑ>����5*oz�kb��]v�����6%-7���@��F��S*���N���E�+�4@H�<�ȦtƗHw$7�����T�]�
&ve]�kMa��s�`Y�b*�|/�u:o�P�%mw�
v���f|R9��]_J+�lƖRۥ5�����]�j��|�T{͡`%{ǣmc�8{U((Kr�'|c�i������?\D9�����];�C�Ի����r�|WJ��i��
�+��U�`�d�&���(,=�U(�auŝ20^�����ˀ���@׮�F�#:��1=�R�54�8�Q]�D��쏮�d����D2��m	�f��	 3[]�\/i    ��{�c1������^F�a�M}�kdR��_���P��á|����G�Z'�\����rL�}!RAw0���7rS�5���}�[h�π��Eo���f��?0��59��ݑ���U��[�Vs��^���>y��c�AJ�wI�e�� ����	�ؕq�A;>6��f� G�j���.��I�����>E��-����&@W99��*ej#�(V����CM`&6(�X���|%*$�6�+vt�>rՌ"��k���IQ��{�s{P�	$"�g#ƥ�'���|���sq�4�-�H;�¿�I���a�l�0EDV���";Q.R��1�b�2�.�,���ʞz���]o�~�A�0�o��n6�/@Q�˰����q��{'w�v6�~�i�g�!�=~�B�wE�?�ޏ���U�>�T�ƻ�NX��;�����5�J1��ߓ����&D,��o���f�*S���H$�d�-|Xn���&2&FGK��FW�p�7�]R(��\��lPl�i:.����ĭ��mn����E��\g������IO���O��
x��.�����
qc�¡Nh}H�Ap`��K�e��9܋����	��E�";)�1�k�;Z�xblX������"���q����H�t���v�R���NG�T�Jl�}d�tc�&:�~'TXX�Ό�w�'��p@L�C\�im���W�lO�6p���2��X��d3|���q(B��t�	��]�U9��qQ�V��B`�D�N���d�߭���?���w�����>�^�|�V��Xm����{
4��AÝ|�c�'�I�u��)w{�Z�U��Mv�Z%_�bO�u��y4U��7D��C��kwݕV?�o�U�~��`0ڲ�a�M;Z�Z۵�AO���x�^��F�&74���e�Ϸ_{F���c	TQ2.�Ŗ�J��~i_fXx���?g�
�f�2.��E�.t�TU`d���ŜM�k��zqH�q�F�zʇINr�8��̱|E��:y��7f�"g�m Z�GB6ʼ0&�"�=�H j�Iw���l↚��	�pf�����!4_6�	^r�����~��f�;Gp��Ÿ�,B�&���!e�.@�[���z%��� ��$VsÝ6V�`L&@�>Y�~���pU���e�� �����]UB��&v\������m����6��W�@K�߃�:Sh~�o���ٝ{��M<H�=�Aw0�z������o0<��`2�z�����׈|�?0����ĝ
=�{���g�Z��{��Ykk��UΎ(L������s��MP����8��u�f�OA+&�xGC��t��2��f4�,<f�ۙo�%��rzsн%)���@�s����W�]6��=E&�2����r�z�\]�rj�q�gՁh��x�Q��6���f6�F���/3�%����ǥW;þ��U.C�-� R7����+�]�4Ygi�]�V���A�ɊK֥��'�2��;�V�Z>e-3s!�U$>S2!����e
@L�e�8�{	xq��_#yo�Y�[3���k�� 4�]�A�����Nc�U~��l{N��L�	���@+B�����ب>�GK�Nfs9�T��Ng�[�X2�;Qv�B])�d�a��Y|�4��h:V��Xd&�����]��U�8:�_�j'���C.E
�A"�׳��r�a������׌]f�Qo@�aŤ�	�����
�D	
�ʢ�&�rĳ4��r7�r\{]=撔m���l�x���Ix(,��HLձ�b*�Rw7V�9n�痵��$UZ*�x�xK������n�`+\�mQn̓����~Nƹ��E��v�A��Q��Oh?�+6�Tl��<�j-D{S�ׄ{�8�ۄK�lqh�
�����7vųz�z��6��yo=�����Fk�wY��Qω��%����ʧ�}F����i�]���z晦�B Y�����!�f=+ı��r ���<�ׁ}>�+b�%,��Um���2?��*7i=5o?}q���ZN�{a9��7V����FǁO��� k-��W�7N����v{�xXU,� �k��[�q�\B��� :���\΃����{'l0�^#?ޚTʕ� ��0�A�W֑@�O�����Y��:�>Q�q��L�A�F����hm��xN����E�	�����	�Ca�C�S�Yu%��cUW�n��Nϻm����$5W���A��:e�a�M�b�����Iq.)����1j�R��+�`�������΢'_X��uP��[��E�?4�F�����՛�ս��\Հ#��:ج�����GwE��() z��Ű���2|�0�&���
�S\�J6=@kMe�*�ޫm�JY&��Q5�(�Śg;_W���6�E�m�jr��'�2B�1V��y�]\$gS�~TR'�y������/..�$F
�R���O�l�Ӧ��;�q�ꡮ�pkf16:?e�c$�
墥�Olo�jڽ���M��;{7����V��qcmc���bO%B��tCd���e�m׌ )��	����� ft�0'�mzF>�K���$���(S��`Աvf�"M^�sC"�$�@ $��cL}%W�x��j���V\
��Z��_T~����h�΢4�d �HH"����?t�l[.��;S��V;(k{LYG�!L�B�[	�o;�h���in?��k�}Գ-(��;I5a�-d��9�y�]��T@E�IS������v3EaJ����nl�<ԁĨ;ې�"�F��؅E�xb��8!��u�ZU~0������5��4+��z�waH�֒����p�r�,��7;(N��:��^��h�.8�Wc�B��(�%5( *��w X.�4�*�M���.6`r�K��0���la�f��o���Q�J�cG�5�oL,�)V��'AU!e��z&�����{����� ����Lz��]b��p�ˠ��	��o+c����*�#���l�w]?BW�ڹсmC��N�j:7\Jo|gE=5\���Ǌ���L��_�e�	���/�hp�t|AN8�>k�,[&�6�P,F�U���kP�朗}�J2Y���ݬ� 2�8��WW2VU���ņ��Qe[Ό��u��4 yea5u������?��_(�N&�hd�X��@���Vh��P.e�z���I�����G^d��l��+�&"�cu�si�I"�~�t�h�iB�?�A4�,�����4p�e������)3����U񘱩X�D�|Q�덮�uz���|���QQ��>*%�&��1�&&����le��E�:�j�F��6i�Y��
S��;��HK�Ц4M��2u�Ю��*��af�vv��oҮr���|�ޱ*�5�#�#�F��n�Mj�l�����U��^���J���xj�m�r�D?�U*�3��q��3����X({��X8���{�U�]�sU��Y��Y��1!�&đ*JP|��8��*XDh7S�G��Z�S�F�a�:V�b�8�WGkt *�̈́K����R�L�"4:��s����f���vչ=c!]�f�K'�e&�tk���K[~���LT�$��/6�����\�rk�XC5%E��rE��>פV����Qp8Ә�	j�\n�]mN��"�pFzX�˥�m)��ܰ����qz�X}$<����rQ�1X=���1�ݾ19S��``_���m��z��@w�ˤ����ݕ�Q�e� �Yr�K�ևpF��޼����\I�v?;N}F����p��o��Q�<�ca�
���d	 j��n	?ո��	^�k�xe��3ζ��xl�����:��K�9�~���z��]�mgߍ}\�i���f���)��߽kH�c`d��!���kнqVx���JhSVh����bG�������� ��!��b� Z����P��ᛷ�'�[�p��e7��,��k��1ԭ��k�<Lh{3�NU�w�z�a]���L��~ן�F�d��Z�� ���(�ۡ��|��JEU��z�x����d���G�q�ƶM;?�}=�^���J%U���ۚ�e�*�X�Dג �	  ,y:M�/I�3ad��oY̬
��y;��%&���/�EH!��rE�����:��\K�1�5�q�F�2��"xGu� uŐ�l�!sy�MtUP�k�B���ح�Pݠ-���^5�'$z�ru�~�矉�[�2��Ğq���ɽ{��߻���ѓ�O�{������K^�G=�r:�w�y�!��p���ʝZ��.�Q0��:�)֣�k��ڝ�>��aP�!S+
�t'�3j='��Du��G�a� ���Z�5�s�"�����;╾���G�K˭�"J�;��������	���}"����9��!�TUγy�!P� ㄐ&�ޥB΄)���l{�O4�	<[�!�s�o�m�4�x�j4���ƥeP��Z��K���v��������j��%C6��'&��dhzx�ۄ�ǧ;�3�%gx�j$e�'9�8��>]Eb5�Ŝ��v�ʬ�v8]Z#.�Ո�`7h&J�&�[&��l"[���*mU}.
�V�
ӓ׫�o`z:����1� .���= f��p�J�g]O�����״�qU�s4�~N��΀���J�i�ԨQ�ʪPƤ�S%-�s\d���O[y��.]�y�z����CV�[Y����c�uKe��A6#h�
�o�#kb�e���i�#O5�yj�7�/p^J��oG[u���r}�P'n�ˏ � R5�:p�p��4C��p�%�ed�S�~OlA����q�@ٲ,T��ὗ�M�msh���H:�0[M�Q~���D�*hJ��>K;�9��A���!�mx����	(R�W���x�.B:eJV�p���h�6り��~.F1�2R΢��%JԼ(��V+y��2=���z�����l"K�sDw�V���	 nګ�%`R~�y�G&9��w̌������S���)�3ދ@{�^��������~0)Aܩ}�:��y��c�	CGd�h��6)~r�{��2���S�b\	]�A�?,_��t��LS�$��+I�)�žW߻����KW�� D��H�a �����-
��J�
lf���Ḧ��T���N� �:���%��AtE�$>�P<g�ij{L���xO���a\�=j��t�_ j�5`�K��N�+�J��N\Q�\��=p�]�t��;�3r�#��Y��z�8�V֓X3aW�~�p�-�Da.3b9��n�*�#2���m�F���C^kwvVȱ�D��\�tS���Ոʉȍ5�{>4���|B���g�:�iP���{z������qD(u��Q�	��=�=��no����`���[�����0��R�N��5��&�}�Fl�HF>	�&��ݴ�*�Q�Ӏ��U��Z��J��M2Q�՝eSlKU-7�����`��3>�uOڼ�5-s��NK��L�������u�]�N�ì��=�43�2�V�j��s��zߗr�6�|���������H�M7�lUm��k�-����tg:Fn�u����tg�YѰ0�O�.`�҉y�%�z(Ž5��I�dkֹ�-?*�wH��c��QO�Ub	�`m
�A�t&_ڌkp��)}7b�t�}S�½��l��>+7��T��>�^l���C)&?K�t��Av���	O�۬[��Pֿ��q9��N_`*�&5���uNF�7�G�������ވ��I0�t�4ٍ��'�NO��i���8��A�z��sy���1�H����~�����)���p2
�m��yGC�uW�	
��m��^����J�eZԒ�)[�	�Q�%����o`t�D�Mq퐢Ȥr��v\;�g�c�5W�y���RLy{Ƚr�o9S؝d�CjU`��3�����]���ˤ0I����d���mH��/��XT%@�q��bM�+䶜H��ʭT��	e	������˷m���^к��Z9���點��E+��%�Dme��t.vm�\��X���X�1j�lك@1#[��w����W�\N����h���నtY����7�-�Y��N���M�uD��ur0�U���S�>(���[�%��L<�s�Tf���Q$����w��x�|��y�_X���L�t�!�Y��q0��������?z3���Ikb��ɤ4N��Ԥ����z��/�)�E:�� E��v��\��3�]FWi�B���܊��/H�=p�gd���tlf���b�@.����؏�~R�(��eӺ5���*:q�Òs�5{��-#�[������s��L̻�TK�� ���YW�����σA��^����<�]��L�w��߀�W����=�Z��;K?���W2z�w����i�f���#ڄNm�׈v�-Bb�e7_TEߐ�?_�i�沏첀ru���m������{����k{�!����wz�A�8w}�?������{ZN�)M�)O���:#�_<�s����� ��ױ�U�dB���ہ'|�=�-I���~w<{��>���������΄�      �   C   x�E���0���A{�	��뀀P�#�@����-������T��6�d�6��Bx��'_GD�}�E      �      x�}[�r7�]S_z1�#��(�,m�Ė��vx��DU!@:�(���j�/:f5=���E{E���dι@f;�K�/ �u��ý�^����<��ۛ�g�>~�c�����������3��Z]v�Y�T����O����7��)~��TiB�6Z5�m譋��k�U��O��?�~�t�UЍ
�.�IS�¨����n�s��2�N��Ew�?��e��!6ѕ�������*_Z"�W���_��ָ���o��z������8Q��M�	����s���ӳ.�W�Q��ٵ�2T��������и.��a��l�ԣ�!g�������Q�7���R�x��bKk��
�� F��:����2�c�^�q䳀E��u�u%&�G�ֺ�<������V�T*jM����J��6�4�����L��v�����~�;k8]`8�R��WSٵv;�]�����tU��u��S(�4���U�;]i�Y�h�]���p�y�܎�m��&h����
��
g>�iE=���`�]C�5�h��.V}�
=U���6Y�I��%|�z��4`'8Tǵ��Ǚ�N��:P�����7��b���ͮL���B�pJ��/#u�������61�M����5����IJ�9�o}�T��%����Ѝ�ib4�;���9��!Mjı����5�.M�����Jԁ�'W���~���@�y������v�������OvF���B�F�ĳ�(�3��b�F-|�0��3�٫+�
�-b��}İ��-�_t���3_������'�^��5�������j�]AĨ̵�ZY|կ:[צ`D^ٞ7�픞C���&*X,��=D����'j�c��Fƫ��$d��k�Bk�4$�:�t&����J�}0�B�t�he]��z�c��k��0�����4�C�u�y�<��h�Wa��*V�Wfm�k���*L�{��/"�9������8�ʨ�vjS�i]���᮰�Xk�8�S���(��Cg��{��<�҆�9ei��DΘ�?�H�Ԏ`�7��E�k��2�����8��,:f�������]3&�\`����M��|0���������n+|Ss �H��)�O*��H���:$���"P�je��\�zf�-L�aiY����y [P�Ut�H�����xV�������щ�?,���"9w�e���fuWz:?)��q�K�[1�v�}ﵩ��.��ԛ�{��=Q�>}x4�����O���x������L?z||������Oin>'��L e���mGX�G�Pv�0�g2�o?/�S}�W#�@�*JSc鯙�z&6��{=����L�rTC��y�2Q���oL�mn;k��[��QE�6xd�ݬ8�����>�(�#dX�Lc��Ʊf֫�#�䤌gsJR�v�@!7C��/2�/���zca�%�ȷ�m��8ތӆI��8�� �j�*"5�J�Q]w?2m��B�`^�)C�N�b�j��l��c�����zo��P$LQX�]��ך�0��<HV��*@��#+
ǼnG�I� @Q	��d4?�nHy0j�:*�$�L��Ґ�	��2��Cn၆y�7wc������LKx=qXD�Y1 m(	���2;Z;����&)b$L�����M�>.}�gI<�l��LQ�N�B��H��O��Ƞ�y:[x���,8 �;R2����rV�����{��\�LX�U���A��v�|���06:Q+�0�L�k{�����0�F8b���D�¯}]:�a ё��M��55�!�R����6� �O����6:��ul ��V��(/ȗʁ��6�f�0g3��>��Y��D��!U/��9�\qI�L��Q��ƒ�8�?כ*�.��n�����!����iX(�<�+P.���ʱB���DF\��,ylgEMx�O���kb5� �u"l�9��Ɖ��8���"�� GZ���"T�nk�U� ��ϠԆ��|�@J�O�������(�Ļ�l�~�7a����Z$�Yd �kQ�cQ����@��ui�;�4��TM@4��+�%��dxO1H(�&���!�^��,gp��/���]���Y�z8&� ��x���;�:0��������I������]��lh�m�H�0�}��\��둘
K<���8speL64況=:�F8��r}�iB�j���MjB3�!�cja�䱾����~����ٙ0v�^����n�(D�.W��=���If�V��d��@�jN�� �=Q�Z�ZF1"[M�%"���X�5B&+◉��^˧�	��+���F��%+���c s��n3�w	���H���飄�TJ�(h�������&�� G�����EW��"#�gft������ ��'�(;�K&�,j^x?���.��~���L�B��%(
�Y�e��k����r�_!Y��,�8�?@�6�����Fsf#�Y��~�~���w�wj�9A��Lt�j%��,f�c)p�sPh��'E�S��^Xk��C���p�~�V
��,�.1�Bp�+3��G䬚�P��%) q��@��e��Q�J�{G�
�lXֻs���.�J*E���"��Pcl�����)��"��ηƱ��5鼎��a�.�ν8��:Q����u!�u���yE�@�m�B���k �<��6ELA�.Sz�ZVC�����*0$:&Ռ �yL;�>�&�P���!B�,�N�',,���0-���?�!�&�	a�O�������{��X��+S���&	��}/��{�-����L��}��
&<=>�>|��ѷ��=ڻ��U�^}�JY�ĸ��V��R�k���c����J���r$K�%4���z�|S��y�دY�s̲bC0�������#��݀5��CO���)��] d��QY�9�e��M�@FJ����4Ь&7L���:��c���|���M�X"$���ZX����s��8�$�x��4Ŏ**�T����K$(]�RxȐ<��Fϥ�)̣��(�e�l_�{�d����hC�' ��vM_��,2O�~w�3L�s��6uu ���s���6r8�֙�1V�5?�� �*�x�Ku����Ia�@P	�������a˼;�`�0�+i�Ԧ��0���ʧfٲ#o	n׌"��xBC���	��I�� g�܁�&'���o ��n���/�3>��I�k`�j���qZ�sR�p}�y�hhn<D����O<|������������?%�B�/��~�J���������8�������������ɛ˴Æ,�䵍="�f��䅣K԰�q6?�ŀ�GM�����'a-|��po�ew�+���|աp�m�#f���7��,o��vA�2鼳�1�S`��*��K֠��!xc|𜊽g^}�ċʇEg����l{��aU�i7$P�,���x���;W��% Jc�w��;����{))��@� u4RnCr@P��Z�@'��,Z)���V���g��G���0ai�}��4l���NT����4K�K+`˒��?��.��̥�����_UҁoQ�A����O��Z��P8G�B�Q9�s��6b+��}�ley�w���$����̕Sv��,�;nl�q�7)T�� ��BZYk�O�� ��u�P������DMW�����Aؙnn����9����/�Z���)�t�{���.'���y�!;=l���&v5�"E�&_����e9k&(���v�Fx�)�T���J}�k褔�]#�!^@n�SW��)ġ�tI�0yk0nkS�� u�w-��9/�<��9
���.�x/��M*��n��]�M�E����Z,�	�%,���F����'˄��:?���(O�@.�K��m�&݄�Ұ̈́/���/���`�.N>�p2Q���.�^�.O�	t��Y�"�ô��)�7��:w}�S{�]F���y�d��fݍ{>7M�oTpz	}I��l��>�,` D	  	��{��!R��EX�5Db{���}͍N!V��Fv.�eg�ʓ��O�-�Ν|}z�'�ٙ���m���yx��@��i$�w�i�J����U��F'�2t#�� ��$#�Kp��W	>�`�`Ti�Ӊ�-�ɫe 8i�q)�Tx���̊,H#�
���󾂃}6�Qms�`4֏�;3�$�p�v��ōb� ,+.Qb�/��fX�\iZ���������f_ns<UN^�O��Og�.��\n/J�&C�$���ߢ��6ٲ�v=m��s����T�ϛs`˸�f��l6Y��#f2�Z��e�Ć0�8Ru~���I2�^Ҟr�J�����l��H��k�|7U'+-��cr�KH-2?z�|eQ�d�#ȯ�s�[�h��"�T���+38"1q��'Y~О� �8p��q-���ѩ�Y&+4^�PG�d���w�i$d��,�C�1�sۆ�S��T�;�xr�w ��˓��O.�%oO_�_;%����Zȼ��Je�RS��l�m?�çq�Q*��:��瑷b�>��S�?�ùv�-CHz�z_�0�ey�����$��>�� ��f"yҊk�����z�*��Y�% k�1%�Eu�^��$w���]����[x��dEF�L�SB�B�#&���ΘGޓ�g�l	V�Ru�x�_f \����kB�7��M�6t��rB��g<�HŇ�l��8OLtQN��Z�;�,���ɵ�|���B�s"�h��b&�`�[��u`�xŒ�/%����,�p�!b�:r���i�[_�.�K$C~�u��!�4�M�F����<ʙ�����S�͆����3C������tP��o�m0��w}�c�#��L3$���8D�����T�����=��.=�̔�[�pт-|���}�R��$nH�o�2 ���/�F6�� �ҦGU��*�rH��A��xY�]��=��(�� i�߿9��:�D��n�yQ0A����R7r"LNt�2�U����N8�k�^��	�I�`)��!�i`�L�qXeëM����摛;3�\`Sqó\��w)��d�"3���T�H��ё{7Y�7��S1�����S;쭷�~�3!y���_p�3� ng?�wo�~��I�U\1�F�3Ԡ�P��^1�0�+�Vʁ:�P�^3���̽��%+�(� �\�x���G�6�u/�LS�iE�f�O�:�	�g�`c�F�����{���FR�$>Ki� ( [-��tUzqY�$��H֯�Or�m(˖����7�eh, �+���r-�e����U+I��"�Vy�a��[�Hh����I��RHȎt��[�)�Iޘ���o��0#)꟡,U=�WJ'jaL�ٲ���(��uWx����(���mr~Q��A�L�U<�2�%�"՘P��B��22D�C�ےΠ@Cg��oON�������X�����H�u�V}��yK8�S�q�CH���,+n��7�*�zwc�Q��?_�~8{q��D
`vC*���ϻ1�m��!Q���k�W�2�m������"�"K���ʶ��:fHÒ���I6`�l��[c(G�f2�:��u�8�����7�1�m��0�x�MNY�R�DCv΋.<{���J��nL#CFM݌tb�-�Yj��D�nx�D<W4�Đ3��N�v�޲��U'M��B��f� �:�i��5c>u2��R�Aז'lC_�
l����xN$Y.�3����NXgH��i2�A�����u����B�cL�6��<��T:b%K�̻��ڧ�� ��D1�k-�5�(:����;������a>�%h��r }T�˓�����#9L�-���G"zw���R+�h�lI:d,^ȑ�*���ȏ �x�p������:��+��X�of�9AR���~�U6��Tٓ��k��H��2�;�YXK>�_V��l!���_�Z:ṿk0����a	�ffjSO��;�ָ��F:R,�����;���<c�d�7����ϢI@�'� t�/t��7LB�lt�����p2��P�ѡT����3�p��2�
b<�K�m+q;Ӓ��t]P#�c��j\�����ށ��FL����s�������GG�?zxtt��_<����[�R��ilwcK���4|jb��!\�6��%{�s������\�g��A��k��ʞ�A|l�UG��}�����𬉜���οL��8���^��gwK葉�uo}�A7�g�z|��/����m'��Fzy�t$�?��񵩠V!���B�gў�~�1�aO2�|��ŗ���>�z͎�4*�\=��:y8Z��u���X��������ޏ�{���?U\�u     