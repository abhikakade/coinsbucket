PGDMP         5                y            coinsbucket-dev    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16999    coinsbucket-dev    DATABASE     u   CREATE DATABASE "coinsbucket-dev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 !   DROP DATABASE "coinsbucket-dev";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    20640    coin    TABLE       CREATE TABLE public.coin (
    id bigint NOT NULL,
    at double precision NOT NULL,
    base_unit character varying(255),
    buy double precision NOT NULL,
    code character varying(255),
    high double precision NOT NULL,
    last double precision NOT NULL,
    low double precision NOT NULL,
    name character varying(255),
    open double precision NOT NULL,
    quote_unit character varying(255),
    sell double precision NOT NULL,
    type character varying(255),
    volume double precision NOT NULL
);
    DROP TABLE public.coin;
       public         heap    postgres    false    3            �            1259    27699    deposit    TABLE     �   CREATE TABLE public.deposit (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    last_update timestamp without time zone,
    user_id bigint
);
    DROP TABLE public.deposit;
       public         heap    postgres    false    3            �            1259    20638    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    3            �            1259    20648    transaction    TABLE     �   CREATE TABLE public.transaction (
    id bigint NOT NULL,
    last_update timestamp without time zone,
    quantity double precision,
    rate double precision,
    type character varying(255),
    coin_id bigint,
    user_id bigint
);
    DROP TABLE public.transaction;
       public         heap    postgres    false    3            �            1259    20653    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false    3            �          0    20640    coin 
   TABLE DATA           y   COPY public.coin (id, at, base_unit, buy, code, high, last, low, name, open, quote_unit, sell, type, volume) FROM stdin;
    public          postgres    false    201            �          0    27699    deposit 
   TABLE DATA           C   COPY public.deposit (id, amount, last_update, user_id) FROM stdin;
    public          postgres    false    204            �          0    20648    transaction 
   TABLE DATA           ^   COPY public.transaction (id, last_update, quantity, rate, type, coin_id, user_id) FROM stdin;
    public          postgres    false    202            �          0    20653    users 
   TABLE DATA           7   COPY public.users (id, password, username) FROM stdin;
    public          postgres    false    203            �           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 392, true);
          public          postgres    false    200            1           2606    20647    coin coin_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.coin DROP CONSTRAINT coin_pkey;
       public            postgres    false    201            7           2606    27703    deposit deposit_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.deposit
    ADD CONSTRAINT deposit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.deposit DROP CONSTRAINT deposit_pkey;
       public            postgres    false    204            3           2606    20652    transaction transaction_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
       public            postgres    false    202            5           2606    20660    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            9           2606    20666 '   transaction fkanjpo5tiapru7an6cw4cu37y4    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fkanjpo5tiapru7an6cw4cu37y4 FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.transaction DROP CONSTRAINT fkanjpo5tiapru7an6cw4cu37y4;
       public          postgres    false    203    2869    202            8           2606    20661 '   transaction fkat4g6dy8mpmokjxbacicuw9qs    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fkat4g6dy8mpmokjxbacicuw9qs FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 Q   ALTER TABLE ONLY public.transaction DROP CONSTRAINT fkat4g6dy8mpmokjxbacicuw9qs;
       public          postgres    false    202    2865    201            :           2606    27704 #   deposit fkp6wbohlcqmewmm4g57qkd8si3    FK CONSTRAINT     �   ALTER TABLE ONLY public.deposit
    ADD CONSTRAINT fkp6wbohlcqmewmm4g57qkd8si3 FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.deposit DROP CONSTRAINT fkp6wbohlcqmewmm4g57qkd8si3;
       public          postgres    false    2869    203    204            �      x�u}[w9��s�95���h�`3���^��7x�6c�����"2%�M/V�%׮��̌�L���L�k4�?�?��V~~�� ��������3�����1�f��&gL^�����M�X��n�&km�\<L{������	��K9�x�3�G��a6f{7}��v9�K�ވ��_B�G��tӳ�7�_p�~�+���Ӓ�l���/�&������,�9�9~[;=:;m]�{��������BX�l���/p��J�X��U���(L���vu�5���c}���/�w��p{�����<|�p�-��o�ry�;;~����G�!Y3��]�Q�V�3�0���9z"�j?�״�`|V\l�񞾆YLYM}t`
%ԋ�MZ�q�����^|���D��(KҐ�0=>~�\�M^|(2q���F�sv6i���.~L~	����p��������᣷�1~Y�����x9�����w������~�(̫��O�1������ϓ�y��C��
��>-+n�яӓ��S�#c~�yq]�����/���i[<�������|)���?��Y�N��_��U�p��fkv����#�︥IE���:�=��o'o��'⟓����R���ٝ	��!y5�̱��+.ߚ�w�g3�YeV��LI�O��l��P��~����^�+z\�M�b�fCò�����YWʹ�����:���]2����=� �L���s�H��,���iW���8k��s�48��C���QYV2�&Z⃧/�'�*�+�'��)��L�mؽ����1<���x�^8XmOY�}�i?={���N��tӋ�ki�S`�f�;�?����7��X�--��#3�=y%Ë\��1���5�`��މ���,>��p�r�W�v��ʣ[(:AOC�;[u*۸x;����	�����8PC�
��Ep���w�.5
/�F9X�M�B.��v0*w�w���9�ui��U;������~�����nu�ۼ�e�5�}���rM��\�]�`�'|����/~�u���۲�z炵��x�.r�v�"�T��#���_�?\�)��+�����x������#�,�FO3Ф�2�wP?;?L�K�����˒o�6a��=x)O��b�a|�-ͮh����zҘr�A�	�_�P`#(�X��ƫ�b�m�{�ʦ�	C�g��~� @���W���/��ӷ�t�ܒ��Ԭ�l,��������/+r�t��Xh�	����K3+�u�t���L����9PL��</����9���`0�b듻�3�����~ݽ�竛OT��D�,�Ô[�"L/���\*�z#;x���\]M6� �!j�1M f�} zaN�?9��к�nn�$6/T�\b�|���'*9���U�LD{�k�w��+�	q�g{�9�/9�hg?�����p�M9�\gK)�\hK`��>}�n�v(\Q3T�ftk���Mr^��DMI���&縤��U��I�Y�ק.>�H�:�A��#Nڸ�
���>�(���4���ܼ�q�H��V_��M���FÌYI�ڒ�4y|���iz��q���t`( �<�S�BtQ�'�%�s=9���#@l�:mZ$�	�0a��a����3O���f�����\J�Ph]#F�8�J &7�
~�l���&�F`�r�à~�W�7�qCn�Q�����E�����B\��Wj�����6�AϿ��� }SlNM[3-Ӵ�f�Y���֧��j6���a���o7@�Y}1�7���m��XN�UWî+��+��9�]�SS0�bu4�ET����]Ұ��91��ԉ!pn�	��阆HA�)�탣)������]\~f��WJr��*K��"0�����ŉt�i���^�t��/��;�]�W�1定ҘRR�N�է����]�6�T�ݟ�����W��4gZ������~�KUq+\>V�G�z#(�n����ˌ^�D����u�ۈ��f���v.�y����o?W�l�� �h��T�h��4��qp�1W�W��X��;=n�on� *	�A\��;�;:Vx��ί[����?pm:E5��1�s�����j.��> �ZM�P�إ�9��6��6"�0"W��x��=�q�RGz���^��8��$vC��כ�	0��CT�H,�F�,����ᬫ��s�����&�����i�@U�Nd��0#����*P�G-��0Z���F����:�a�Bo�gb/�_
��<���+�p��9�����G9�d�&= ��� wPk�E���X=7:������2�a^���0�*֨�Sm�,�8��5LmS���L�Ns��3#��vt<-z -��xk?2:����٠w�� A(	3��9�#&�<��0Z�zT���2D�:8ث!$��bM�9p�K3�Dژ�ip��~����(���;'��0�1t�����Ǻ��|!&�?�Ԉ���I�^��{��
i`ߟ�Ը��.�2���e.Z<�;}�#�`s�fTnx-yN��\�6�΀�!J���N�����!:(�va�7�A���!w&~�G긌��LVu�B���sy�ӹ�ÄEҜ������\�T�H:�jmh$��Ϟ��m̬)�lݸZ]�o�� �)���@I
K�%�+C؊9rP#B�g��Uq��� �X"�a���_��T�M�����֌>��ヷ-4HU� ��B�@�@O^|��An�q5���/�8�Y� ��a��}i��褬sr�e����=�+���d�"�b�G�,��)��y��O�����X4�o�5n������&��F��7�1j��y���.>ң�RT*6{��N����L�z�l�8k-�I�0�&� �7��sIF��p���p��;���/Fǭ��67�% ���y�$�x���8RB99�_����H������t"4��|��/a�C
����T�!�-	L*2Z<~��S8���
�0K��Ȃ������I��d�|�
,�(��&S�v�53�!�{���ew��ܼ�*~�������<n#��!� �Тs[��<�.�i�s3�w�%q~F���ڨ�q%U�iے+�v09eL,����X_�f9h��Q��?L�|������t�n�!W$�W*,C�wwM4�3�#d��0ՙ����R���ˎ�s������PA�1sb?�u��Py:���TNNmos�e��I
9)Lb{�@k%q*�a{�i�_{F�f��\��/>�{�^sa-��!a͸�d�:�m�5��5w�|���BX�8�REơ�8�ʊ��N@'����<9⢃���!��%�S�h�U����������ys�21{�p{G��g����&	�r�����V`�OZ����d3���2�$͛����	3r��f�k+���=cVr���-���\����0��_���Z��1���6g�L�:{�0�[r�-� ]�"�G��������}�4��C��~��%Ln���=z�ⴾPr~��F��B&�̤�fD!���8���-�8|3���čI�=wɔ�q�Ai�'�:��zs��2�3"�b��<7տ�t:|n0����Pm~n6�鋗�2	Ю�`��1̚CS ��['���5�@2�0�1V�a�CUV�~(3Y���5k
t�����k0�25!�=�Ϳ��&���dv�������p'�Y��څ�Y���\Mb��e[7Zk9�����r�A����ۢ� �"HE�?���s�����֛�yLX���G��8����9� b��D��;��̦�3��NVJ ��0�߮މ���A�FX	g�ᙙ�v@s��Z9Ӑ/��n?1��BO��u ��7 ��v�Oh�3ӓ�͑d�{�$.�Fn���S;�a��`cb*��r�$ ��T����ѳ�A�����4R�5
)�a�?.��Q�o�O#:x�'����v^��7��r}?�vyO�9N9h��#�0�h.���o{oZv�������_X�9�I��<&�����    _`�]�����j��T���L�9����[(H�.��{<{�D�!��@�׆F����+i(��C*Mf�/��2)���2�a,�^����l��6wK&ɋ�.�� =��'/J��#1"����1��?O1a"[�:�P��"n��Up�TK�ӽ���dƪ��|�� ַ�!�\�M���m�w1��JE2�����<�|b�G��O-��4VmP��yO8@g��P�+k"I$\����`�JI�un�M6����R�8�v�O���\�l~.jy8SWDl��4��t����^�UB�Z��RUJ|0L;�����S�,��(���6&<���<~;y��z<!��������\�X���@��
������k}NX��}�������z���@jA����s�г���č�7)�����hx��]_?�8İpbM�K��0��]��g/y��rx����9�D`��� C� �;�y
��G������&��r��8��
J��q����`_������sb�G�CB��--8&�:�Wm���I!�Q�(99e-k˴b6s�AU阅3�#��%�YC�w�,��~'�q���5���V2T��J���|*��pP{1!Ҕ2����EŐ�ϵ���zݕ��z���Vt��~���?��A�֣�~i+�?����w<�G���5{j �����Q��b���Y�yzrr|t�x��LC��>�������a��?{ނ�%��]5z��������x�P�Kkhw�����2eّ�E;2�4ƙ�Gn �Z��@YֵI�ȣ��w�Q� ��%�/m�c�`�G�N�6���Q橶���I�K��KK��^���~��%��*�-�HRWD ,���֟��Ć�X(֮�k��լ��;k����Vc�b��Hn6n�w�?ܲ�שX���"���ދ��&�H�)f�������6r��}Y�˖,�6���A�I�����O�bI��c�����2���Nq\�I��J\�Y���**@����A������3q�vR*�N��s��'������8mr�j���
  �b��ju���~:G�eez3����5�jM�4?	��B�g�(������ʑL�بy��l����
,>u����Q��1��jk�ذ�5�����q�j��D$D�x	t>K��l�ۗ�]u-�� ��i��'���� ��%��ye��Zz�F���-�ۘI�{2�	��X���ս�� �)_H�����I/�E������Xt�X�ru��ٜ8�ӹRlf�|�O�!9ׁ��+Wc�v��x�C��sg
������-7aLO��"r�X���}�I�$���6נl٧f��5l1��&����Ô���0�ook)�9z�g�d��
`Y��:#�\�_����͹��En��1�LKJs�6��;�x�����\Y���0i��0p� �RM�ˣ�I���C����
�[5�=n��H/T3�p�|�A��_�����Q��\���$b���Q�_v`���מKе�����w�w�'��X+Ǌ��
s�l�:�j���p���@�;F���E7Sn��{;��i��tS\�t]u���$FIqP����|���u����lŧ�^���m�f�cZ�w�J�� �d��s���v�vՖB�;��otH�$�c�$/I��CrYIzC~XЗ��á��U��w���j���}���Qijɴ�:!q�@b;��I+�"�H��\�[��hY�r�7#0xϛ�[f*��r}�H�`1C��>�x��d�&-�VX[�5b�/�
�UQ˵��N�\mΘ?���=2:%��[*�������#�#rg��h�]�h��t��P�q��^I j��f(�`��J�$\(},��v1�9:�ޚ��mTH�6dI������od�����$��`�ޟKb� rS-!=c�/.�x�׈�0��NM�����;�!��
�gR�ϫ�;�^k����F��~��&��ےڴ�FҘ�� ��P������.$a�v'�e��F̷��3�43*CR�H��G�g����`�0���p���
��+����`���JW��0i��i�$-Z��6	k�#�L
��N&%%��X�|{/q���~x�R��Q���q����Y���رc ( F�-��Gֶ�p��@��-�40��eu���k%�\;�˖̎/$���G^[�Fd)�
��I@�ʎ�����N������x
�C
0��Zִ��k��fLZj� ����XH���혊���g�K���{�{�lbO��7��ʊ�������Z~���%m��Y<;����t���Jɲs\�8�l��L����ۿI��A�c�L1����Z�,�]�V�$��,s��̲�������V�X�g�	b7�dTk[m�\�E^FfY6}��Z�+fI������Ĥ�R'�4q���Gm�5�:�	�i/\v���]|��6���Wd�ә��p���e�e4R�sږ �
L��v#�,�XUr��nB��MQy�� ��X�@���-(a�s�n��7?�$O��B��ß$S"���4`�`��D����	�ú��"0��lƂ�� �'b��lmħ���a��R
�%(4�:�%%E�7��(����S���̐���vi@�%�� i>?�N$�owb�g�����8L��,+tՙCMk��#Y��.��-��bl�`D��~���_��5MNd&<:� ��e��-k�����x-8�.��@]�be���z�L�~k���܋-Jv�2̌�X."�m@tH��$�� 2I����̙���R����WX�XDB.w"=ʃ!��pm]�ޑx�Z![h��jH��Lk�M"�G��� C_ ַOAڜЫ�k��
y@��{���Q���⍵"?�}P�x�ۇf�-�9@�o�<�vq�N%��IF��Ÿc����1"��q\�Eۭ�>Y�A2�1�)����f����r-k�t��ƌ ���N���$W9��M1/I&Yp0�u���LF�hx��*3W�m��Az8�.ɅIZ�Ruְ���������V�H�B9*Nq\�� <�*uX5���(k+QuB|���$�e����V��%�ă�00Jޱ�D���VJ&ZR';ց��N����S��YrU�4�?�Q�i��PX	���R�	�Ln�g��N�ٮ��Ԋ	"h_'G1�����Wi�W����Fx-�+\{��/_o�_����*��j��o�z}���/���a_�` @�,��-]�Z�N��%�<�&��ܛ�D�ѕ�]j4��&����,Ǝ,e3��b9���\�_�G_%�giĭߚ���_}�uK���Z�Ʋ<�������QŠ��X�*�|^ ��X�ф����i���P�-21Ze������-j� .�a$��8�F���݅�i�<[�ᄔe�:.�⤃ǀ��F/��\���6%���e
2�Șj�{��5�m���C��|�!$�~%k�` �{0�x�� P��������g��_�+G����k�2��)�%���$��׻�6�+	̾���Y]�@�8 �L6B/ӄ R�B�U
-{Ң+&��#ڸ�P`�qEH�ԋ ,z(p:z�E;Y+�:_��bO���z��;����ѯ���G>���9 �)V�i�l􃷕�1���o{�[l��nme� `\�n�3|x�ew�	�rs����T�<0����]�7�^����
�5�=�U�2\���%$�����'���0�X(9u��nk���+�W&����=�������G�@`fIғ�Z�+?d�FÑy���St��l%�S�M��˛)�E�����q��5��-�UY���@4�^����w߸L�{]�]�I��Vr���������6"ie���r��Ek�h1��\Cf^/�g�a�BL$
�P�� `0-�ذvG(,��
K 0֞���1�[�9@}�6Nߟ��,I����l�!���$�;ƹ� E	  ������~*��y/��Wy�ea�B�b���hX�o�Z\0u�j0�ȹ��R�	�Gη^Mh]��2@��Ք�pC�k鵴�� �m-(�a|�-Fo�znL��"u���L%��K���V��6f�k��`&Eb*�8�U�8_����K��w��H��Dں&�f���<�����`ܞ�L�&4�0*,�8�k�y��i��G�o������Y8�E�)Ղڒb+��j[.��Z��Z[q�8�S�~�K�V�3@Ҙ��$�R��\��/r]��pN��?�n@�m$�I+7�,U /��a\`_��8�p?8 \wt[_�bӒEj�X/M���s���lC�[�X�����V�VtI��b�	�y,|I��B6���-�^M��o��X�>�q��wZ��2CݮOG�H������I�xd�.�}�jH���[�yW������<�[;�G�;�1�|?ۛ^ϘS��QU��T��ͤC�7/k��osͳ�,Ԫ�^z ��.>�˺o@Y�첉)����8�q�-~ �i��M�w�+=�M'~�q�Oj%K�a���^<!�Ө吻u�V���
BW�k�f�Nȗ�{��,W<�q;�[��Ǎq�¹lJ�N�D�.���RK}œ��� ����1�e
GCRTm�D��L^	�4H6�nY�u���Y[��+x�kE�c���%���:T�V�vzxpa^J�-L1$O9^�����xR��eOx�V�`�雉�Ȁ
zƪu����@T<��QrqU��ViEP�p�{d��.lN��9:t܃%�+��",��|0����F�N6���!%]W7h9OH�g7��x��B1	�L2�X^ÊGo�{aɹT8�m *\�$��B�9bY�QM��z:t(�0����ݙ(��{��C��.5{�>\��VۚmnR+��+�#�bX��D�ж�Jܳ'��3��Upy,Eؒ,�O�ªJ-�Fu�nO�<m#j�Ν�g���K9�4���9`8���ӣ��J18�2QrŚ�-m�GΒ�(��>Ib(l���=?���k�y��U_��ى���"+Zj�g���^�n�7�B��ɳN���,�r��V�0>^�Kf��r�b��<��)np؜�S��J��}��r㆔ڵ�CE�Fg��g��էg%�Fy�W���Zrv I���%h�x.S�4<��'����{`��֙�c!�l���N��)+��
�5��B�l饋��m˖�����n,�W �L	h*�z]�bh���e�d��e�s����ݹ����myP	6�>|�8����]a���k�[�HL����"��y�e�7��@C��F����z-�@�Z��n����Ov�K�a�(3'���KG~�"��M;��V����Y�6R�\1S�V}+�V��H�B 7��%�u���L�'��E�-<�`���9������&�$[yT!�&j�����2Vq�1�n�>\1��m���^[�������M��_n	��MW:Q�`6eˍ _�#�q'���L����H��;o�\�Rvj�`-���n���n���0)� ����5�j)+�rK��7a-�/3�ƺo��g�r{�eXm�&xk�R��*�U춓����-�=|x'iG����KA9���B�QlSYϩh� ��7>f��T�4+��H1O,;C8��L��6���on���v\�$���c�Bl���J:�q�Ez�Z+�Z+rM��m�QO�h��z������,G�_(+N<��}�>�[�K}���Ax����C�e�$��3j�&K�L���`�q$j�G/�d,m��u����ݤ���V��g'�α��x�q�f8��j�I�52����{8�4���V<g�F��u1:���`m}�Ҫ����Z����jH�J�zK;���V�7�*)7� K	�;R"�}q|�륌�4��;D�aI�`v>]��G��+����_�r.Wvy�-���Z1	�(�+2��o�(�>�S(TZvQ;�3����5.�/���NL���/�Ь�G܌/7N��O8���;y�K�����[�*���������@3�;�t'o�7�9�揂h���>k��ۺa�с�BP���4��$���KX��=n;s~��Na��r�ܐ3�ͱ�}42���fv�f r_�C�x�1��M���R-����~�%�PٲN�����-.+S�������Ń����+9n�7����*_;���\�W��C�w�~I����e2�sg��||�7�e܌YB	~����į��-\���e��fŌ�v��)��ו�_��!�d����L��.�MC���o��ᶔ.�ضb��;�������gſ�|�#>K"[cp�d�����FR�]o`�7���<��*7?~      �   [   x�U˱!���<w�0�|�u��ﬧ7h�O��8���{F[����T�^Tݪ6����k���T.�т�ޢ��}>��^~03      �   �  x�m�K1DיS��l���@b��@����;��h^��*ۉ9	!���MyH��R��·_���J,�̀�L<4ENj4��_|��t�J�٠�{䇨n�mP(�F~���hIb~TO[�A�A4��Kf��N��=�N�H�'�
���ǳ�`Z���j��R3��I���₌F��_vR��dj�,Ջ훭oF�e$[Hg>x.@��<@��J�rSg�;{��ߌ�2����"MӹLR�jv2��!��e���;q&ud��G<x�i�G>�Y�w��O�n��?��F��R�Qۣ��h6Y��A���%����mO@rZ����{Fa��;-��:`!�h1H���+�yG&��2$�	ͷ-�O�L�LF��z5+�l>�4iі`H��fsur'Fb���ZB��|��3`�aLl�k&�}^�x��Dw\r��èG�+��6	����*�e���knC�sf��bd����a��r��	��詋+7���4�qVBZ�
k����)&�7E�Fe�2�2\���q5a����Bk�Ľ(�c���A�_��T.v�y#\�JT�����!�	6��]A_�q�6|�v�@�e��Y������)�&��Qvz�&�áͼ»��qE�Ó����M6y�=�~lPS��o��"_�W�O|�^g�J/      �      x�3�LL��\1z\\\ )�          �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16999    coinsbucket-dev    DATABASE     u   CREATE DATABASE "coinsbucket-dev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 !   DROP DATABASE "coinsbucket-dev";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    20640    coin    TABLE       CREATE TABLE public.coin (
    id bigint NOT NULL,
    at double precision NOT NULL,
    base_unit character varying(255),
    buy double precision NOT NULL,
    code character varying(255),
    high double precision NOT NULL,
    last double precision NOT NULL,
    low double precision NOT NULL,
    name character varying(255),
    open double precision NOT NULL,
    quote_unit character varying(255),
    sell double precision NOT NULL,
    type character varying(255),
    volume double precision NOT NULL
);
    DROP TABLE public.coin;
       public         heap    postgres    false    3            �            1259    27699    deposit    TABLE     �   CREATE TABLE public.deposit (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    last_update timestamp without time zone,
    user_id bigint
);
    DROP TABLE public.deposit;
       public         heap    postgres    false    3            �            1259    20638    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    3            �            1259    20648    transaction    TABLE     �   CREATE TABLE public.transaction (
    id bigint NOT NULL,
    last_update timestamp without time zone,
    quantity double precision,
    rate double precision,
    type character varying(255),
    coin_id bigint,
    user_id bigint
);
    DROP TABLE public.transaction;
       public         heap    postgres    false    3            �            1259    20653    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false    3            �          0    20640    coin 
   TABLE DATA           y   COPY public.coin (id, at, base_unit, buy, code, high, last, low, name, open, quote_unit, sell, type, volume) FROM stdin;
    public          postgres    false    201   ?
       �          0    27699    deposit 
   TABLE DATA           C   COPY public.deposit (id, amount, last_update, user_id) FROM stdin;
    public          postgres    false    204   Y	       �          0    20648    transaction 
   TABLE DATA           ^   COPY public.transaction (id, last_update, quantity, rate, type, coin_id, user_id) FROM stdin;
    public          postgres    false    202   e        �          0    20653    users 
   TABLE DATA           7   COPY public.users (id, password, username) FROM stdin;
    public          postgres    false    203   �       �           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 392, true);
          public          postgres    false    200            1           2606    20647    coin coin_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.coin DROP CONSTRAINT coin_pkey;
       public            postgres    false    201            7           2606    27703    deposit deposit_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.deposit
    ADD CONSTRAINT deposit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.deposit DROP CONSTRAINT deposit_pkey;
       public            postgres    false    204            3           2606    20652    transaction transaction_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
       public            postgres    false    202            5           2606    20660    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            9           2606    20666 '   transaction fkanjpo5tiapru7an6cw4cu37y4    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fkanjpo5tiapru7an6cw4cu37y4 FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.transaction DROP CONSTRAINT fkanjpo5tiapru7an6cw4cu37y4;
       public          postgres    false    203    2869    202            8           2606    20661 '   transaction fkat4g6dy8mpmokjxbacicuw9qs    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fkat4g6dy8mpmokjxbacicuw9qs FOREIGN KEY (coin_id) REFERENCES public.coin(id);
 Q   ALTER TABLE ONLY public.transaction DROP CONSTRAINT fkat4g6dy8mpmokjxbacicuw9qs;
       public          postgres    false    202    2865    201            :           2606    27704 #   deposit fkp6wbohlcqmewmm4g57qkd8si3    FK CONSTRAINT     �   ALTER TABLE ONLY public.deposit
    ADD CONSTRAINT fkp6wbohlcqmewmm4g57qkd8si3 FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.deposit DROP CONSTRAINT fkp6wbohlcqmewmm4g57qkd8si3;
       public          postgres    false    2869    203    204           