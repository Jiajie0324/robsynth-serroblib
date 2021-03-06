% Calculate minimal parameter regressor of coriolis matrix for
% S5RRRRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x31]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:45
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRRR11_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRRRR11_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:43:46
% EndTime: 2019-12-31 22:44:50
% DurationCPUTime: 39.23s
% Computational Cost: add. (15953->1018), mult. (41056->1428), div. (0->0), fcn. (45068->10), ass. (0->740)
t677 = sin(pkin(5));
t681 = sin(qJ(2));
t1034 = t677 * t681;
t1085 = cos(pkin(5));
t680 = sin(qJ(3));
t683 = cos(qJ(3));
t586 = t680 * t1034 - t1085 * t683;
t1124 = -t586 / 0.2e1;
t847 = t1085 * t680;
t588 = t683 * t1034 + t847;
t679 = sin(qJ(4));
t1042 = t588 * t679;
t682 = cos(qJ(4));
t684 = cos(qJ(2));
t1005 = t682 * t684;
t906 = t677 * t1005;
t473 = t906 + t1042;
t678 = sin(qJ(5));
t1025 = t678 * t473;
t1101 = cos(qJ(5));
t1041 = t588 * t682;
t1033 = t677 * t684;
t907 = t679 * t1033;
t475 = -t907 + t1041;
t453 = t1101 * t475;
t1141 = t453 - t1025;
t1133 = -t1141 / 0.2e1;
t1013 = t679 * t680;
t887 = t1101 * t682;
t575 = t1013 * t678 - t680 * t887;
t1187 = t575 * t1124 + t683 * t1133;
t1002 = t683 * t684;
t1010 = t681 * t679;
t539 = (t1002 * t682 + t1010) * t677;
t1021 = t678 * t539;
t638 = t682 * t1034;
t538 = t683 * t907 - t638;
t503 = t1101 * t538;
t798 = -t503 / 0.2e1 - t1021 / 0.2e1;
t1176 = t798 + t1187;
t919 = t683 * qJD(2);
t1196 = qJD(1) * t1176 + t575 * t919;
t1103 = -t683 / 0.2e1;
t1123 = t586 / 0.2e1;
t289 = t1101 * t473 + t678 * t475;
t1019 = t678 * t682;
t888 = t1101 * t679;
t745 = t888 + t1019;
t576 = t745 * t680;
t1188 = t289 * t1103 + t576 * t1123;
t1022 = t678 * t538;
t889 = t1101 * t539;
t731 = -t1022 / 0.2e1 + t889 / 0.2e1;
t1174 = t731 + t1188;
t1195 = qJD(1) * t1174 - t576 * t919;
t670 = -pkin(4) * t682 - pkin(3);
t1111 = -t670 / 0.2e1;
t1118 = t745 / 0.2e1;
t1136 = pkin(9) + pkin(10);
t634 = t1136 * t679;
t635 = t1136 * t682;
t499 = t1101 * t635 - t678 * t634;
t1099 = pkin(4) * t679;
t901 = pkin(8) + t1099;
t618 = t901 * t680;
t1160 = t1103 * t499 - t575 * t1111 - t618 * t1118;
t1012 = t679 * t683;
t1090 = t683 * pkin(9);
t1092 = t680 * pkin(3);
t636 = -t1090 + t1092;
t615 = t679 * t636;
t1011 = t680 * t682;
t915 = pkin(8) * t1011;
t807 = t615 - t915;
t482 = -pkin(10) * t1012 + t807;
t1023 = t678 * t482;
t1006 = t682 * t683;
t1091 = t680 * pkin(4);
t617 = t682 * t636;
t661 = pkin(8) * t1013;
t984 = t661 + t617;
t464 = -pkin(10) * t1006 + t1091 + t984;
t893 = t1101 * t464;
t987 = t893 / 0.2e1 - t1023 / 0.2e1;
t125 = t987 - t1160;
t122 = t987 + t1160;
t730 = t1019 / 0.2e1 + t888 / 0.2e1;
t714 = t1118 + t730;
t406 = t714 * t683;
t1194 = -t406 * qJD(3) + t1196;
t1020 = t678 * t679;
t744 = t887 - t1020;
t1120 = t744 / 0.2e1;
t729 = t887 / 0.2e1 - t1020 / 0.2e1;
t713 = t1120 + t729;
t407 = t713 * t683;
t1193 = t407 * qJD(3) + t1195;
t918 = qJD(4) + qJD(5);
t1182 = t918 * t575;
t409 = -t1103 * t745 - t730 * t683;
t1192 = t409 * qJD(3) + t1182 - t1196;
t1102 = t683 / 0.2e1;
t408 = -t1102 * t744 + t729 * t683;
t836 = t918 * t576;
t1191 = t408 * qJD(3) - t1195 - t836;
t1173 = t731 - t1188;
t254 = (t1120 - t729) * t586;
t1186 = qJD(2) * t1173 + t254 * qJD(3);
t1175 = t798 - t1187;
t1117 = -t745 / 0.2e1;
t255 = (t1117 + t730) * t586;
t1185 = qJD(2) * t1175 + t255 * qJD(3);
t252 = t714 * t586;
t973 = qJD(1) * t586;
t1184 = qJD(2) * t1176 + t252 * qJD(3) + t1141 * t973;
t253 = t713 * t586;
t1183 = qJD(2) * t1174 - t253 * qJD(3) + t289 * t973;
t1107 = -t680 / 0.2e1;
t866 = t586 * t1107;
t750 = t588 * t1102 + t866;
t972 = qJD(1) * t588;
t742 = -t750 * qJD(2) + t586 * t972;
t69 = -t1141 * t745 - t289 * t744;
t188 = t575 * t745 - t576 * t744;
t374 = t744 ^ 2 - t745 ^ 2;
t994 = t188 * qJD(2) + t374 * qJD(3);
t1181 = qJD(1) * t69 + t994;
t1134 = t289 / 0.2e1;
t854 = 0.2e1 * t1134;
t1135 = t1141 / 0.2e1;
t855 = 0.2e1 * t1135;
t54 = -t744 * t854 - t745 * t855;
t1180 = qJD(1) * t54 + t994;
t63 = t1141 * t575 + t576 * t289;
t321 = -t575 ^ 2 + t576 ^ 2;
t995 = t321 * qJD(2) + t188 * qJD(3);
t1179 = qJD(1) * t63 + t995;
t48 = t575 * t855 + t576 * t854;
t1178 = qJD(1) * t48 + t995;
t1158 = -t1141 ^ 2 + t289 ^ 2;
t1177 = qJD(1) * t1158;
t841 = t1101 * t634 + t678 * t635;
t1159 = t841 * t1103 + t576 * t1111 + t618 * t1120;
t900 = pkin(1) * t1085;
t591 = pkin(7) * t1033 + t681 * t900;
t564 = t1085 * pkin(8) + t591;
t803 = -pkin(2) * t684 - pkin(8) * t681;
t565 = (-pkin(1) + t803) * t677;
t343 = t564 * t680 - t683 * t565;
t324 = pkin(3) * t1033 + t343;
t217 = pkin(4) * t473 + t324;
t1172 = t217 * t289;
t975 = qJD(1) * t1141;
t1170 = t289 * t975;
t1119 = -t744 / 0.2e1;
t294 = -t576 * t1118 + t575 * t1119;
t970 = qJD(2) * t575;
t1169 = t294 * qJD(3) + t576 * t970;
t967 = qJD(3) * t745;
t1168 = t294 * qJD(2) + t744 * t967;
t654 = t680 * t919;
t1151 = -t750 * qJD(1) - t654;
t1167 = qJD(4) * t289;
t1166 = qJD(5) * t289;
t1165 = t1141 * t217;
t1163 = t289 * t1111;
t1115 = -t618 / 0.2e1;
t1162 = t289 * t1115;
t1161 = t499 * t1123;
t865 = t1034 / 0.2e1;
t580 = t683 * t865 + t847 / 0.2e1;
t1140 = t580 * qJD(4) + t742;
t1026 = t678 * t464;
t890 = t1101 * t482;
t809 = -t890 / 0.2e1;
t732 = -t1026 / 0.2e1 + t809;
t123 = t732 - t1159;
t1155 = t918 * t499;
t1153 = (t343 / 0.2e1 - t324 / 0.2e1) * t679;
t1150 = -qJD(5) * t1107 + t1151;
t1052 = t475 * t683;
t370 = t682 * t586;
t859 = -t370 / 0.2e1;
t1149 = t680 * t859 + t1052 / 0.2e1;
t1055 = t473 * t683;
t861 = -t1013 / 0.2e1;
t737 = t586 * t861 + t1055 / 0.2e1;
t1128 = -t575 / 0.2e1;
t1126 = -t576 / 0.2e1;
t873 = t1141 * t1126;
t96 = -t1128 * t289 + t873;
t1147 = qJD(1) * t96 + t1169;
t1127 = t575 / 0.2e1;
t95 = t289 * t1127 + t873;
t1146 = qJD(1) * t95 + t1169;
t872 = t1141 * t1120;
t103 = -t1118 * t289 + t872;
t1145 = qJD(1) * t103 + t1168;
t102 = t289 * t1117 + t872;
t1144 = qJD(1) * t102 + t1168;
t672 = t679 ^ 2;
t674 = t682 ^ 2;
t650 = t674 - t672;
t1143 = qJD(3) * t650;
t1142 = t750 * qJD(3);
t1096 = t475 * pkin(10);
t344 = t683 * t564 + t680 * t565;
t325 = -pkin(9) * t1033 + t344;
t1017 = t679 * t325;
t589 = pkin(7) * t1034 - t684 * t900;
t563 = -t1085 * pkin(2) + t589;
t802 = t586 * pkin(3) - t588 * pkin(9);
t690 = t563 + t802;
t314 = t682 * t690;
t154 = -t314 + t1017;
t128 = -t154 - t1096;
t155 = t682 * t325 + t679 * t690;
t129 = -t473 * pkin(10) + t155;
t898 = t1101 * t129;
t749 = -t678 * t128 - t898;
t1139 = -qJD(5) * t580 - t1140;
t366 = t679 * t586;
t331 = t682 * t343;
t420 = pkin(3) * t588 + pkin(9) * t586;
t379 = t679 * t420;
t990 = t331 - t379;
t164 = pkin(10) * t366 - t990;
t1028 = t678 * t164;
t1094 = t588 * pkin(4);
t1016 = t679 * t343;
t380 = t682 * t420;
t843 = t380 + t1016;
t142 = pkin(10) * t370 + t1094 + t843;
t897 = t1101 * t142;
t997 = t897 / 0.2e1 - t1028 / 0.2e1;
t1138 = t918 * t841;
t1137 = t586 ^ 2;
t1132 = t380 / 0.2e1;
t810 = -t453 / 0.2e1;
t1131 = t473 / 0.2e1;
t1130 = -t475 / 0.2e1;
t1129 = -t539 / 0.2e1;
t579 = t744 * t683;
t1125 = t579 / 0.2e1;
t1122 = -t588 / 0.2e1;
t1121 = t588 / 0.2e1;
t1116 = t615 / 0.2e1;
t1114 = t618 / 0.2e1;
t619 = t901 * t683;
t1113 = t619 / 0.2e1;
t1112 = t638 / 0.2e1;
t1110 = -t678 / 0.2e1;
t1109 = -t679 / 0.2e1;
t1108 = t679 / 0.2e1;
t1106 = t680 / 0.2e1;
t1105 = -t682 / 0.2e1;
t1104 = t682 / 0.2e1;
t1100 = pkin(4) * t475;
t1098 = pkin(8) * t473;
t1097 = pkin(8) * t679;
t1095 = t586 * pkin(4);
t1093 = t678 * pkin(4);
t1089 = t48 * qJD(4) + t63 * qJD(5);
t1088 = t54 * qJD(4) + t69 * qJD(5);
t1087 = t96 * qJD(4) + t95 * qJD(5);
t277 = -pkin(4) * t366 + t344;
t348 = t745 * t586;
t1031 = t678 * t129;
t721 = t128 + t1095;
t99 = t1101 * t721;
t55 = -t99 + t1031;
t66 = t897 - t1028;
t9 = -t217 * t348 + t277 * t289 - t55 * t588 + t586 * t66;
t1086 = t9 * qJD(1);
t31 = t55 * t586 - t1172;
t1084 = qJD(1) * t31;
t56 = t678 * t721 + t898;
t32 = -t56 * t586 + t1165;
t1083 = qJD(1) * t32;
t74 = t154 * t586 - t324 * t473;
t1078 = qJD(1) * t74;
t75 = -t155 * t586 + t324 * t475;
t1077 = qJD(1) * t75;
t349 = t744 * t586;
t1030 = t678 * t142;
t895 = t1101 * t164;
t67 = t895 + t1030;
t10 = t1141 * t277 - t217 * t349 - t56 * t588 - t586 * t67;
t1076 = t10 * qJD(1);
t590 = (pkin(2) * t681 - pkin(8) * t684) * t677;
t1003 = t683 * t590;
t572 = t680 * t589;
t842 = t572 + t1003;
t346 = -pkin(3) * t1034 - t842;
t274 = pkin(4) * t538 + t346;
t332 = t503 + t1021;
t573 = t680 * t590;
t574 = t683 * t589;
t985 = t573 - t574;
t347 = pkin(9) * t1034 + t985;
t342 = t682 * t347;
t424 = t636 * t1033 + t591;
t387 = t679 * t424;
t199 = t342 + t387;
t165 = -pkin(10) * t538 + t199;
t1027 = t678 * t165;
t1015 = t679 * t347;
t388 = t682 * t424;
t198 = t388 - t1015;
t908 = t680 * t1033;
t151 = pkin(4) * t908 - t539 * pkin(10) + t198;
t896 = t1101 * t151;
t70 = t896 - t1027;
t11 = t217 * t332 + t274 * t289 - t55 * t908 + t70 * t586;
t1075 = t11 * qJD(1);
t333 = t889 - t1022;
t1029 = t678 * t151;
t894 = t1101 * t165;
t71 = t894 + t1029;
t12 = t1141 * t274 + t217 * t333 - t56 * t908 - t71 * t586;
t1074 = t12 * qJD(1);
t1073 = t217 * t575;
t1072 = t217 * t576;
t1071 = t217 * t744;
t1070 = t217 * t745;
t25 = -t289 * t1100 - t586 * t749 - t1165;
t1069 = t25 * qJD(1);
t899 = t1101 * t128;
t746 = t899 - t1031;
t26 = -t1100 * t1141 + t586 * t746 + t1172;
t1068 = t26 * qJD(1);
t1063 = t324 * t682;
t1062 = t333 * t745;
t1061 = t346 * t679;
t1060 = t346 * t682;
t39 = -t154 * t588 + t344 * t473 + (t380 + (-t324 + t343) * t679) * t586;
t1059 = t39 * qJD(1);
t40 = -t155 * t588 + t344 * t475 + (t990 - t1063) * t586;
t1058 = t40 * qJD(1);
t41 = -t154 * t908 + t198 * t586 + t324 * t538 + t346 * t473;
t1057 = t41 * qJD(1);
t42 = -t155 * t908 - t199 * t586 + t324 * t539 + t346 * t475;
t1056 = t42 * qJD(1);
t1054 = t475 * t679;
t1053 = t475 * t682;
t1049 = t539 * t679;
t801 = -pkin(3) * t683 - pkin(9) * t680;
t629 = -pkin(2) + t801;
t914 = pkin(8) * t1006;
t543 = t629 * t679 + t914;
t1048 = t543 * t588;
t1047 = t563 * t683;
t1045 = t575 * t618;
t1043 = t576 * t618;
t671 = t677 ^ 2;
t676 = t684 ^ 2;
t1036 = t671 * t676;
t1035 = t671 * t681;
t478 = -pkin(10) * t1013 + t543;
t1024 = t678 * t478;
t1018 = t679 * t1141;
t1014 = t679 * t473;
t1009 = t682 * t473;
t1008 = t682 * t745;
t673 = t680 ^ 2;
t1007 = t682 * t673;
t1004 = t683 * t586;
t72 = -t1141 * t332 - t289 * t333;
t1001 = t72 * qJD(1);
t73 = t1141 * t348 + t289 * t349;
t1000 = t73 * qJD(1);
t754 = t1125 * t1141 - t349 * t1128;
t77 = -t1062 / 0.2e1 + t754;
t999 = t77 * qJD(1);
t998 = t103 * qJD(4) + t102 * qJD(5);
t996 = t918 * t188;
t991 = t918 * t294;
t675 = t683 ^ 2;
t651 = t675 - t673;
t195 = -t343 * t1033 - t563 * t586;
t979 = qJD(1) * t195;
t196 = -t344 * t1033 - t563 * t588;
t978 = qJD(1) * t196;
t224 = -t1137 * t679 + t473 * t588;
t977 = qJD(1) * t224;
t225 = -t1137 * t682 + t475 * t588;
t976 = qJD(1) * t225;
t974 = qJD(1) * t475;
t971 = qJD(1) * t684;
t969 = qJD(2) * t677;
t968 = qJD(2) * t684;
t966 = qJD(3) * t670;
t965 = qJD(3) * t679;
t964 = qJD(3) * t680;
t963 = qJD(3) * t682;
t962 = qJD(3) * t683;
t961 = qJD(4) * t586;
t960 = qJD(4) * t679;
t959 = qJD(4) * t682;
t958 = qJD(4) * t683;
t957 = qJD(5) * t670;
t104 = t842 * t1033 + t343 * t1034 - t563 * t908 - t591 * t586;
t956 = t104 * qJD(1);
t105 = t591 * t588 + (-t344 * t681 + (t985 + t1047) * t684) * t677;
t955 = t105 * qJD(1);
t502 = t370 * t1013;
t127 = t502 + (-t1055 / 0.2e1 + t1129) * t682 + (-t1052 / 0.2e1 + t538 / 0.2e1) * t679;
t954 = t127 * qJD(1);
t132 = -t289 * t588 + t348 * t586;
t953 = t132 * qJD(1);
t133 = t1141 * t588 - t349 * t586;
t952 = t133 * qJD(1);
t134 = -t289 * t908 - t332 * t586;
t951 = t134 * qJD(1);
t135 = t1141 * t908 + t333 * t586;
t950 = t135 * qJD(1);
t172 = -t473 * t539 - t475 * t538;
t949 = t172 * qJD(1);
t789 = t1009 + t1054;
t187 = t789 * t586;
t948 = t187 * qJD(1);
t857 = t1006 / 0.2e1;
t720 = t475 * t857 + t674 * t866;
t219 = -t1049 / 0.2e1 + t720;
t945 = t219 * qJD(1);
t864 = -t1033 / 0.2e1;
t817 = t679 * t864;
t860 = t1011 / 0.2e1;
t242 = t1112 + t586 * t860 + (t817 + t1130) * t683;
t944 = t242 * qJD(1);
t856 = t1005 / 0.2e1;
t715 = (t683 * t856 + t1010 / 0.2e1) * t677;
t243 = t715 - t737;
t943 = t243 * qJD(1);
t250 = -t473 * t908 - t538 * t586;
t942 = t250 * qJD(1);
t251 = t475 * t908 + t539 * t586;
t941 = t251 * qJD(1);
t280 = t810 + t453 / 0.2e1;
t940 = t280 * qJD(1);
t309 = -t588 * t680 - t1004;
t329 = t309 * t1033;
t936 = t329 * qJD(1);
t935 = t366 * qJD(1);
t934 = t370 * qJD(1);
t454 = -t586 * t1034 + t680 * t1036;
t930 = t454 * qJD(1);
t455 = -t588 * t1034 + t683 * t1036;
t929 = t455 * qJD(1);
t483 = pkin(1) * t1035 + t591 * t1085;
t928 = t483 * qJD(1);
t484 = t671 * pkin(1) * t684 - t589 * t1085;
t927 = t484 * qJD(1);
t925 = t586 * qJD(3);
t924 = t588 * qJD(3);
t603 = (-t681 ^ 2 + t676) * t671;
t923 = t603 * qJD(1);
t922 = t677 * qJD(3);
t921 = t680 * qJD(2);
t920 = t680 * qJD(4);
t917 = pkin(4) * t1011;
t916 = pkin(8) * t1012;
t913 = -t1101 / 0.2e1;
t912 = t1101 * pkin(4);
t911 = -t1100 / 0.2e1;
t910 = pkin(4) * t1128;
t909 = -t1091 / 0.2e1;
t905 = t679 * t1004;
t904 = t682 * t1004;
t885 = t677 * t971;
t821 = t680 * t885;
t487 = t586 * t821;
t819 = t680 * t864;
t903 = qJD(4) * t819 - t1142 - t487;
t863 = t1033 / 0.2e1;
t818 = t680 * t863;
t902 = qJD(4) * t818 - t1142 + t487;
t604 = t682 * t629;
t806 = -pkin(10) * t1011 + t604;
t477 = t806 - t916;
t892 = t1101 * t477;
t891 = t1101 * t478;
t886 = t475 * t973;
t884 = t677 * t968;
t883 = t682 * t921;
t882 = t684 * t922;
t881 = t679 * t963;
t880 = t680 * t963;
t879 = t679 * t958;
t878 = t682 * t958;
t877 = t671 * t971;
t876 = t681 * t969;
t875 = t679 * t959;
t874 = t680 * t962;
t871 = t324 * t1108;
t870 = t473 * t1107;
t868 = t475 * t1106;
t862 = t576 * t1109;
t858 = t744 * t1104;
t853 = t331 / 0.2e1 - t379 / 0.2e1;
t852 = -t342 / 0.2e1 - t387 / 0.2e1;
t850 = t573 / 0.2e1 - t574 / 0.2e1;
t849 = t1101 * qJD(4);
t848 = t1101 * qJD(5);
t846 = t1085 * qJD(1);
t835 = t918 * t745;
t834 = pkin(4) * t860;
t833 = pkin(8) * t863;
t832 = qJD(4) + t973;
t831 = -qJD(5) - t973;
t830 = -qJD(4) + t919;
t829 = t912 / 0.2e1;
t826 = t679 * t880;
t825 = t968 * t1035;
t824 = t681 * t877;
t823 = t683 * t884;
t822 = t683 * t885;
t820 = t679 * t883;
t816 = t679 * t863;
t815 = t677 * t856;
t812 = -t895 / 0.2e1;
t811 = -t894 / 0.2e1;
t805 = t677 * t846;
t804 = t1085 * t969;
t800 = 0.2e1 * t820;
t799 = t388 / 0.2e1 - t1015 / 0.2e1;
t797 = pkin(9) * t819;
t796 = -qJD(3) + t885;
t701 = (-pkin(4) - t1097) * t683 + t806;
t423 = t1101 * t701;
t275 = -t423 + t1024;
t287 = t893 - t1023;
t578 = t745 * t683;
t686 = t217 * t578 / 0.2e1 + t275 * t1122 + t277 * t576 / 0.2e1 + t287 * t1123 - t348 * t1114 + t289 * t1113 + t66 * t1103;
t756 = t332 * t1111 + t274 * t1120;
t2 = (-t55 / 0.2e1 + t841 * t863) * t680 + t686 + t756;
t86 = -t275 * t680 - t287 * t683 + t576 * t619 + t578 * t618;
t795 = t2 * qJD(1) + t86 * qJD(2);
t276 = t678 * t701 + t891;
t291 = t890 + t1026;
t685 = t67 * t1102 + t1113 * t1141 - t349 * t1114 + t276 * t1122 + t291 * t1124 + t217 * t1125 + t277 * t1128;
t755 = t333 * t1111 + t274 * t1117;
t4 = (-t56 / 0.2e1 + t499 * t863) * t680 + t685 + t755;
t87 = -t276 * t680 + t291 * t683 - t575 * t619 + t579 * t618;
t794 = t4 * qJD(1) + t87 * qJD(2);
t301 = -t678 * t477 - t891;
t145 = -t301 * t683 + t576 * t917 - t1045;
t688 = t749 * t1102 + t1115 * t1141 + t301 * t1124;
t733 = -t1027 / 0.2e1 + t896 / 0.2e1;
t696 = t1073 / 0.2e1 + t733;
t788 = t1101 * t863;
t6 = (t475 * t1126 + (t289 * t1105 + t788) * t680) * pkin(4) + t688 + t696;
t791 = qJD(1) * t6 - qJD(2) * t145;
t302 = t892 - t1024;
t146 = t302 * t683 - t575 * t917 - t1043;
t687 = t746 * t1103 + t302 * t1123 - t1162;
t734 = -t1029 / 0.2e1 + t811;
t695 = t1072 / 0.2e1 + t734;
t5 = (t475 * t1127 + (t1105 * t1141 + t678 * t864) * t680) * pkin(4) + t687 + t695;
t790 = qJD(1) * t5 - qJD(2) * t146;
t787 = t846 + qJD(2);
t705 = t56 * t1102 + t1114 * t1141 + t276 * t1124;
t13 = t696 - t705;
t174 = t276 * t683 - t1045;
t786 = qJD(1) * t13 - qJD(2) * t174;
t136 = (pkin(10) * t860 - t604 / 0.2e1 + t477 / 0.2e1 + (pkin(4) + t1097 / 0.2e1) * t683) * t678;
t17 = (-t1095 + t1096 / 0.2e1 + t1017 / 0.2e1 - t314 / 0.2e1 + t128 / 0.2e1) * t678;
t785 = t17 * qJD(1) + t136 * qJD(2);
t741 = -t423 / 0.2e1 + t683 * t829;
t138 = t892 / 0.2e1 + t741;
t743 = -t99 / 0.2e1 + t912 * t1124;
t19 = t899 / 0.2e1 + t743;
t784 = -t19 * qJD(1) - t138 * qJD(2);
t706 = t55 * t1103 + t275 * t1123 + t1162;
t14 = t695 - t706;
t173 = -t275 * t683 - t1043;
t783 = qJD(1) * t14 - qJD(2) * t173;
t257 = t575 * t578 - t576 * t579;
t691 = t578 * t1133 - t349 * t1126 - t348 * t1127 - t579 * t289 / 0.2e1;
t753 = t332 * t1118 + t333 * t1119;
t38 = t691 + t753;
t782 = t38 * qJD(1) + t257 * qJD(2);
t542 = -t604 + t916;
t726 = t542 * t1121 + t984 * t1124;
t764 = -pkin(3) * t538 / 0.2e1 - t1060 / 0.2e1;
t774 = pkin(9) * t864 - t344 / 0.2e1;
t27 = (t1132 - t1098 / 0.2e1 + t1153) * t683 + (t154 / 0.2e1 + (pkin(8) * t1123 + t774) * t679) * t680 + t726 + t764;
t317 = t542 * t680 + (-t661 + t617) * t683;
t781 = -t27 * qJD(1) - t317 * qJD(2);
t762 = pkin(8) * t1130 - t1063 / 0.2e1;
t763 = pkin(3) * t1129 + t1061 / 0.2e1;
t28 = t586 * t1116 + t1048 / 0.2e1 + (t762 + t853) * t683 + (t155 / 0.2e1 + t774 * t682) * t680 + t763;
t318 = t615 * t683 + (-t543 + t914) * t680;
t780 = -t28 * qJD(1) + t318 * qJD(2);
t356 = t576 * t680 - t578 * t683;
t703 = -t348 * t1103 - t576 * t1122 + t578 * t1123;
t78 = (-t744 * t864 + t1134) * t680 + t703;
t779 = t78 * qJD(1) + t356 * qJD(2);
t357 = t575 * t680 + t579 * t683;
t702 = -t349 * t1102 + t575 * t1121 + t579 * t1124;
t79 = (-t745 * t864 + t1133) * t680 + t702;
t778 = t79 * qJD(1) + t357 * qJD(2);
t757 = t155 * t1103 + t543 * t1123;
t44 = t680 * t762 + t757 + t799;
t459 = -pkin(8) * t1007 - t543 * t683;
t777 = qJD(1) * t44 + qJD(2) * t459;
t758 = t154 * t1102 + t542 * t1124;
t45 = (t1098 / 0.2e1 + t871) * t680 + t758 + t852;
t458 = -t673 * t1097 - t542 * t683;
t776 = qJD(1) * t45 - qJD(2) * t458;
t775 = t830 * t680;
t160 = -t904 + (t816 - t1041 / 0.2e1 + t1130) * t680;
t614 = t675 * t682 - t1007;
t773 = -qJD(1) * t160 - qJD(2) * t614;
t161 = t905 + (t815 + t1042 / 0.2e1 + t1131) * t680;
t613 = t651 * t679;
t772 = -qJD(1) * t161 + qJD(2) * t613;
t152 = t252 * qJD(1) - t406 * qJD(2);
t153 = -t253 * qJD(1) + t407 * qJD(2);
t330 = -t588 ^ 2 + t1137;
t771 = qJD(1) * t330 + qJD(2) * t309;
t770 = qJD(1) * t309 + qJD(2) * t651;
t769 = t921 + t972;
t768 = -t1166 - t1167;
t767 = t1090 / 0.2e1 - t1092 / 0.2e1;
t765 = pkin(2) * t1122 + t563 * t1106;
t500 = t580 * qJD(1) + t921 / 0.2e1;
t761 = t677 * t803;
t692 = pkin(2) * t1123 + t1047 / 0.2e1 + pkin(8) * t819;
t191 = t692 + t850;
t760 = pkin(2) * t919 - qJD(1) * t191;
t193 = -t572 / 0.2e1 + (t833 - t590 / 0.2e1) * t683 + t765;
t759 = pkin(2) * t921 - qJD(1) * t193;
t752 = t1123 * t841 + t1163;
t751 = t1111 * t1141 + t1161;
t748 = t289 * t1108 + t475 * t1119;
t747 = -t1009 / 0.2e1 - t1054 / 0.2e1;
t740 = pkin(3) * t1130 + pkin(9) * t859;
t739 = t767 * t679;
t738 = t767 * t682;
t177 = t1070 / 0.2e1;
t736 = t670 * t1135 - t1161 + t177;
t735 = -t1030 / 0.2e1 + t812;
t728 = qJD(2) * t48 + qJD(3) * t54 + t1177;
t727 = qJD(2) * t63 + qJD(3) * t69 + t1177;
t694 = -t1071 / 0.2e1 + t735;
t704 = t841 * t1124 - t1163;
t21 = (t588 * t1110 - t1018 / 0.2e1 + t475 * t1117) * pkin(4) + t694 + t704;
t395 = t1099 * t745 + t670 * t744;
t89 = (t575 * t1108 + (t1110 - t1008 / 0.2e1) * t680) * pkin(4) + t123;
t724 = t21 * qJD(1) + t89 * qJD(2) - t395 * qJD(3);
t23 = (t588 * t913 + t748) * pkin(4) + t736 - t997;
t394 = -t1099 * t744 + t670 * t745;
t91 = (-t862 + (-t858 + t913) * t680) * pkin(4) - t122;
t723 = -qJD(1) * t23 - qJD(2) * t91 - qJD(3) * t394;
t167 = (-t1014 + t1053) * t680;
t197 = t473 ^ 2 - t475 ^ 2;
t722 = qJD(1) * t197 - qJD(2) * t167 - qJD(3) * t789;
t719 = -t1073 / 0.2e1 + t733;
t471 = t1116 - t739;
t700 = pkin(3) * t1131 + t1063 / 0.2e1 + pkin(9) * t366 / 0.2e1;
t82 = t700 - t853;
t717 = pkin(3) * t963 - qJD(1) * t82 - qJD(2) * t471;
t472 = -t617 / 0.2e1 + t738;
t84 = -t380 / 0.2e1 - t1153 + t740;
t716 = pkin(3) * t965 - qJD(1) * t84 - qJD(2) * t472;
t712 = -qJD(2) * t95 - qJD(3) * t102 + t1170;
t711 = qJD(2) * t96 + qJD(3) * t103 - t1170;
t33 = -t1070 / 0.2e1 + t751 + t997;
t710 = qJD(1) * t33 + qJD(2) * t122 - t745 * t966;
t34 = t694 - t752;
t709 = qJD(1) * t34 + qJD(2) * t123 - t744 * t966;
t264 = t747 * t680;
t279 = -t1014 / 0.2e1 + t1053 / 0.2e1;
t708 = -qJD(2) * t264 - qJD(3) * t279 + t473 * t974;
t592 = (t672 / 0.2e1 - t674 / 0.2e1) * t680;
t707 = qJD(1) * t279 - qJD(2) * t592 + t881;
t612 = t650 * t673;
t699 = qJD(1) * t167 + qJD(2) * t612 + 0.2e1 * t826;
t698 = qJD(1) * t789 - t1143 + t800;
t697 = qJD(2) * t1007 * t679 - qJD(1) * t264 + qJD(3) * t592;
t665 = t964 / 0.2e1;
t664 = -t920 / 0.2e1;
t663 = t920 / 0.2e1;
t637 = qJD(2) * t865;
t624 = -0.2e1 * t680 * t875;
t585 = t592 * qJD(4);
t584 = qJD(1) * t819 + t665;
t583 = qJD(1) * t818 + t665;
t566 = (t877 - t922 / 0.2e1) * t681;
t463 = qJD(2) * t818 + t580 * qJD(3);
t419 = t661 + t617 / 0.2e1 + t738;
t418 = t915 - t615 / 0.2e1 - t739;
t308 = (t680 * t884 + t924) * t586;
t303 = t309 * qJD(3);
t273 = t279 * qJD(4);
t256 = t264 * qJD(4);
t245 = t683 * t817 + t1112 + t1149;
t244 = t715 + t737;
t218 = t1049 / 0.2e1 + t720;
t194 = t683 * t833 + t572 / 0.2e1 + t1003 / 0.2e1 + t765;
t192 = t692 - t850;
t179 = 0.2e1 * t810 + t1025;
t176 = t1071 / 0.2e1;
t175 = t789 * qJD(4);
t168 = -t1072 / 0.2e1;
t166 = t167 * qJD(4);
t163 = t588 * t860 + t680 * t816 + t868 + t904;
t162 = t588 * t861 + t680 * t815 + t870 - t905;
t139 = t1024 - t892 / 0.2e1 + t741;
t137 = t683 * t1093 + t301;
t131 = -t835 - t152;
t130 = t744 * t918 - t153;
t126 = t539 * t1104 + t538 * t1109 + t747 * t683 + t502;
t124 = t732 + t1159;
t92 = t679 * t910 - t909 * t1008 + t809 + (t909 - t464 / 0.2e1) * t678 + t1159;
t90 = t680 * t829 + (-t680 * t858 - t862) * pkin(4) + t125;
t85 = t871 + t1016 / 0.2e1 + t1132 + t740;
t83 = t700 + t853;
t81 = t1106 * t1141 - t745 * t819 - t702;
t80 = t289 * t1107 - t744 * t819 - t703;
t76 = t1062 / 0.2e1 + t754;
t47 = pkin(8) * t868 + t324 * t860 - t757 + t799;
t46 = pkin(8) * t870 + t324 * t861 - t758 + t852;
t37 = t691 - t753;
t36 = t177 - t751 + t997;
t35 = t176 + t735 + t752;
t30 = t807 * t1124 - t1048 / 0.2e1 + t990 * t1103 + t155 * t1107 + t344 * t860 + t324 * t857 + t682 * t797 + t763 + t1149 * pkin(8);
t29 = t843 * t1103 + t154 * t1107 + t344 * t1013 / 0.2e1 + t683 * t871 + t679 * t797 - t726 + t764 + t737 * pkin(8);
t24 = pkin(4) * t1018 / 0.2e1 - t745 * t911 + t176 + t812 + (-t1094 / 0.2e1 - t142 / 0.2e1) * t678 - t704;
t22 = pkin(4) * t748 + t588 * t829 + t736 + t997;
t20 = t1031 - t899 / 0.2e1 + t743;
t18 = -t586 * t1093 + t749;
t16 = t705 + t719;
t15 = t168 + t706 + t734;
t8 = t1141 * t834 + t475 * t910 + t168 + t811 + (pkin(4) * t819 - t151 / 0.2e1) * t678 - t687;
t7 = t788 * t1091 + t289 * t834 - t576 * t911 - t688 + t719;
t3 = t56 * t1107 + t499 * t819 + t685 - t755;
t1 = t55 * t1107 + t819 * t841 + t686 - t756;
t43 = [0, 0, 0, t825, t603 * qJD(2), t684 * t804, -t681 * t804, 0, -t483 * qJD(2), -t484 * qJD(2), (t823 - t925) * t588, qJD(2) * t329 + qJD(3) * t330, -t455 * qJD(2) + t586 * t882, t454 * qJD(2) + t588 * t882, -t825, -qJD(2) * t104 - qJD(3) * t196, qJD(2) * t105 + qJD(3) * t195, (qJD(2) * t539 - qJD(4) * t473 - t682 * t925) * t475, qJD(2) * t172 + qJD(3) * t187 + qJD(4) * t197, qJD(2) * t251 + qJD(3) * t225 - t473 * t961, qJD(2) * t250 - qJD(3) * t224 - t475 * t961, t308, qJD(2) * t41 + qJD(3) * t39 + qJD(4) * t75, qJD(2) * t42 + qJD(3) * t40 + qJD(4) * t74, (qJD(2) * t333 - qJD(3) * t349 + t768) * t1141, qJD(2) * t72 + qJD(3) * t73 + t1158 * t918, t135 * qJD(2) + t133 * qJD(3) + t586 * t768, -t1141 * t586 * t918 + t134 * qJD(2) + t132 * qJD(3), t308, qJD(2) * t11 + qJD(3) * t9 - qJD(4) * t25 + qJD(5) * t32, qJD(2) * t12 + qJD(3) * t10 - qJD(4) * t26 + qJD(5) * t31; 0, 0, 0, t824, t923, t787 * t1033, -t787 * t1034, 0, -qJD(2) * t591 - t928, qJD(2) * t589 - t927, t1002 * t677 * t769 + t1142, t651 * t884 + t303 + t936, t680 * t876 - t929, t683 * t876 + t930, -t566, -t956 + (-t591 * t683 + t680 * t761) * qJD(2) + t194 * qJD(3), t955 + (t591 * t680 + t683 * t761) * qJD(2) + t192 * qJD(3), t218 * qJD(3) + t256 + (t883 + t974) * t539, t949 + t126 * qJD(3) - t166 + (-t538 * t682 - t1049) * t921, t941 + (-t539 * t683 + t673 * t906) * qJD(2) + t163 * qJD(3) + t244 * qJD(4), t942 + (t538 * t683 - t673 * t907) * qJD(2) + t162 * qJD(3) + t245 * qJD(4), -t680 * t823 + t902, -t198 * t919 + t1057 + t29 * qJD(3) + t47 * qJD(4) + (pkin(8) * t538 - t1033 * t542 + t1061) * t921, t199 * t919 + t1056 + t30 * qJD(3) + t46 * qJD(4) + (pkin(8) * t539 - t1033 * t543 + t1060) * t921, t76 * qJD(3) + (-t970 + t975) * t333 + t1087, t1001 + (t332 * t575 - t333 * t576) * qJD(2) + t37 * qJD(3) + t1089, t950 + (-t333 * t683 - t575 * t908) * qJD(2) + t81 * qJD(3) + t918 * t1173, t951 + (t332 * t683 - t576 * t908) * qJD(2) + t80 * qJD(3) + t918 * t1175, (-t919 + qJD(5) / 0.2e1) * t908 + t902, t1075 + (t274 * t576 - t275 * t908 + t618 * t332 - t70 * t683) * qJD(2) + t1 * qJD(3) + t7 * qJD(4) + t16 * qJD(5), t1074 + (-t274 * t575 - t276 * t908 + t618 * t333 + t71 * t683) * qJD(2) + t3 * qJD(3) + t8 * qJD(4) + t15 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t742, t771, t796 * t586, t796 * t588, t637, qJD(2) * t194 - qJD(3) * t344 - t978, qJD(2) * t192 + qJD(3) * t343 + t979, t218 * qJD(2) + t273 + (-t965 - t974) * t370, t126 * qJD(2) - t650 * t925 - t175 + t948, qJD(2) * t163 + t679 * t924 + t976, qJD(2) * t162 + t682 * t924 - t977, t1140, t1059 + t29 * qJD(2) + (-t344 * t682 + t679 * t802) * qJD(3) + t85 * qJD(4), t1058 + t30 * qJD(2) + (t344 * t679 + t682 * t802) * qJD(3) + t83 * qJD(4), t76 * qJD(2) - (t967 + t975) * t349 + t998, t1000 + t37 * qJD(2) + (t348 * t745 - t349 * t744) * qJD(3) + t1088, t81 * qJD(2) + t254 * t918 + t745 * t924 + t952, t80 * qJD(2) + t255 * t918 + t744 * t924 + t953, -t1139, t1086 + t1 * qJD(2) + (-t277 * t744 - t348 * t670 - t588 * t841) * qJD(3) + t22 * qJD(4) + t36 * qJD(5), t1076 + t3 * qJD(2) + (t277 * t745 - t349 * t670 - t499 * t588) * qJD(3) + t24 * qJD(4) + t35 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t708, t722, t244 * qJD(2) - t473 * t832, t245 * qJD(2) - t475 * t832, t463, qJD(2) * t47 + qJD(3) * t85 - qJD(4) * t155 + t1077, qJD(2) * t46 + qJD(3) * t83 + qJD(4) * t154 + t1078, t711, t728, -t289 * t832 - t1166 + t1186, t179 * qJD(5) - t1141 * t832 + t1185, t463, t7 * qJD(2) + t22 * qJD(3) + qJD(4) * t749 + t18 * qJD(5) - t1069, t8 * qJD(2) + t24 * qJD(3) - qJD(4) * t746 + t20 * qJD(5) - t1068; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t712, t727, t289 * t831 - t1167 + t1186, t179 * qJD(4) + t1141 * t831 + t1185, t463, qJD(2) * t16 + qJD(3) * t36 + qJD(4) * t18 - qJD(5) * t56 + t1083, qJD(2) * t15 + qJD(3) * t35 + qJD(4) * t20 + qJD(5) * t55 + t1084; 0, 0, 0, -t824, -t923, -t684 * t805, t681 * t805, 0, t928, t927, -t588 * t822 + t1142, t303 - t936, -t683 * t882 + t929, t680 * t882 - t930, t566, qJD(3) * t193 + t956, qJD(3) * t191 - t955, qJD(3) * t219 - t539 * t974 + t256, qJD(3) * t127 - t166 - t949, -qJD(3) * t160 - qJD(4) * t243 - t941, -qJD(3) * t161 - qJD(4) * t242 - t942, t903, -qJD(3) * t27 - qJD(4) * t44 - t1057, -qJD(3) * t28 - qJD(4) * t45 - t1056, qJD(3) * t77 - t333 * t975 + t1087, qJD(3) * t38 - t1001 + t1089, -qJD(3) * t79 - t1174 * t918 - t950, -qJD(3) * t78 - t1176 * t918 - t951, qJD(5) * t819 + t903, qJD(3) * t2 - qJD(4) * t6 - qJD(5) * t13 - t1075, qJD(3) * t4 - qJD(4) * t5 - qJD(5) * t14 - t1074; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t874, t651 * qJD(3), 0, 0, 0, -pkin(2) * t964, -pkin(2) * t962, -t673 * t875 + t674 * t874, -qJD(4) * t612 - 0.2e1 * t683 * t826, -qJD(3) * t614 + t680 * t879, qJD(3) * t613 + t680 * t878, -t874, -qJD(3) * t317 - qJD(4) * t459, qJD(3) * t318 + qJD(4) * t458, (-qJD(3) * t579 + t836) * t575, t257 * qJD(3) + t321 * t918, -t357 * qJD(3) + t683 * t836, -t356 * qJD(3) - t683 * t1182, -t874, qJD(3) * t86 + qJD(4) * t145 + qJD(5) * t174, qJD(3) * t87 + qJD(4) * t146 + qJD(5) * t173; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1151, t770, -t796 * t683, t796 * t680, -qJD(1) * t1034 / 0.2e1, -pkin(8) * t962 - t759, pkin(8) * t964 - t760, t945 - t585 + (t674 * t921 + t881) * t683, t954 + t624 + (-0.2e1 * t820 + t1143) * t683, t679 * t964 + t773, t772 + t880, t663 + t1151, (t679 * t801 - t914) * qJD(3) + t419 * qJD(4) + t781, (t682 * t801 + t916) * qJD(3) + t418 * qJD(4) + t780, t999 + (t967 - t970) * t579 + t991, (-t578 * t745 + t579 * t744) * qJD(3) + t782 + t996, t408 * t918 + t745 * t964 - t778, t409 * t918 + t744 * t964 - t779, t663 + t1150, (t578 * t670 - t619 * t744 - t680 * t841) * qJD(3) + t90 * qJD(4) + t125 * qJD(5) + t795, (-t499 * t680 + t579 * t670 + t619 * t745) * qJD(3) + t92 * qJD(4) + t124 * qJD(5) + t794; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t697, -t699, t679 * t775 - t943, t682 * t775 - t944, t584, qJD(3) * t419 - qJD(4) * t543 - t777, qJD(3) * t418 + qJD(4) * t542 - t776, t1147, t1178, t1191, t1192, t584, qJD(3) * t90 + qJD(4) * t301 + qJD(5) * t137 - t791, qJD(3) * t92 - qJD(4) * t302 + qJD(5) * t139 - t790; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1146, t1179, t1191, t1192, t584, qJD(3) * t125 + qJD(4) * t137 - qJD(5) * t276 - t786, qJD(3) * t124 + qJD(4) * t139 + qJD(5) * t275 - t783; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t742, -t771, (t919 - t973) * t1033, -t769 * t1033, t637, -qJD(2) * t193 + t978, -qJD(2) * t191 - t979, -qJD(2) * t219 + t682 * t886 + t273, -qJD(2) * t127 - t175 - t948, qJD(2) * t160 + qJD(4) * t370 - t976, qJD(2) * t161 - qJD(4) * t366 + t977, -t1140, qJD(2) * t27 + qJD(4) * t84 - t1059, qJD(2) * t28 + qJD(4) * t82 - t1058, -qJD(2) * t77 + t349 * t975 + t998, -qJD(2) * t38 - t1000 + t1088, qJD(2) * t79 + t253 * t918 - t952, qJD(2) * t78 - t252 * t918 - t953, t1139, -qJD(2) * t2 + qJD(4) * t23 - qJD(5) * t33 - t1086, -qJD(2) * t4 - qJD(4) * t21 - qJD(5) * t34 - t1076; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1151, -t770, t822, -t821, qJD(1) * t865, t759, t760, -t654 * t674 - t585 - t945, t683 * t800 + t624 - t954, -t773 - t878, -t772 + t879, t664 - t1151, qJD(4) * t472 - t781, qJD(4) * t471 - t780, t579 * t970 + t991 - t999, -t782 + t996, -t407 * t918 + t778, t406 * t918 + t779, t664 - t1150, qJD(4) * t91 - qJD(5) * t122 - t795, -qJD(4) * t89 - qJD(5) * t123 - t794; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t875, t650 * qJD(4), 0, 0, 0, -pkin(3) * t960, -pkin(3) * t959, t744 * t835, t918 * t374, 0, 0, 0, qJD(4) * t394 + t745 * t957, qJD(4) * t395 + t744 * t957; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t707, -t698, -t682 * t830 + t934, t679 * t830 - t935, -t500, -pkin(9) * t959 - t716, pkin(9) * t960 - t717, t1145, t1180, t130, t131, -t500, -t1155 - t723, t1138 - t724; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1144, t1181, t130, t131, -t500, -t1155 - t710, t1138 - t709; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t708, -t722, qJD(2) * t243 - qJD(3) * t370 + t473 * t973, qJD(2) * t242 + qJD(3) * t366 + t886, t463, qJD(2) * t44 - qJD(3) * t84 - t1077, qJD(2) * t45 - qJD(3) * t82 - t1078, -t711, -t728, t1183, qJD(5) * t280 + t1184, t463, qJD(2) * t6 - qJD(3) * t23 + qJD(5) * t17 + t1069, qJD(2) * t5 + qJD(3) * t21 + qJD(5) * t19 + t1068; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t697, t699, t943 + (-t679 * t921 + t963) * t683, t944 + (-t883 - t965) * t683, t583, -qJD(3) * t472 + t777, -qJD(3) * t471 + t776, -t1147, -t1178, t1193, t1194, t583, -qJD(3) * t91 + qJD(5) * t136 + t791, qJD(3) * t89 + qJD(5) * t138 + t790; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t707, t698, t682 * t919 - t934, -t679 * t919 + t935, t500, t716, t717, -t1145, -t1180, t153, t152, t500, t723, t724; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t1093, -pkin(4) * t848; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t940, 0, -t1093 * t918 + t785, (-t849 - t848) * pkin(4) - t784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t712, -t727, t1183, -qJD(4) * t280 + t1184, t463, qJD(2) * t13 + qJD(3) * t33 - qJD(4) * t17 - t1083, qJD(2) * t14 + qJD(3) * t34 - qJD(4) * t19 - t1084; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1146, -t1179, t1193, t1194, t583, qJD(3) * t122 - qJD(4) * t136 + t786, qJD(3) * t123 - qJD(4) * t138 + t783; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1144, -t1181, t153, t152, t500, t710, t709; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t940, 0, qJD(4) * t1093 - t785, pkin(4) * t849 + t784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t43;
