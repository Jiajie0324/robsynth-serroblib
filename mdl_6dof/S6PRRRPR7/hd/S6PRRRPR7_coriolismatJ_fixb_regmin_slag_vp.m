% Calculate minimal parameter regressor of coriolis matrix for
% S6PRRRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1,theta5]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x29]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRRRPR7_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR7_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR7_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRPR7_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:44:41
% EndTime: 2019-03-08 23:46:01
% DurationCPUTime: 57.30s
% Computational Cost: add. (20137->1164), mult. (55511->1714), div. (0->0), fcn. (63928->14), ass. (0->769)
t758 = sin(pkin(7));
t762 = sin(qJ(3));
t1109 = t758 * t762;
t1159 = cos(pkin(7));
t761 = sin(qJ(4));
t765 = cos(qJ(4));
t687 = t1109 * t761 - t1159 * t765;
t1187 = t687 / 0.2e1;
t1169 = -t765 / 0.2e1;
t1168 = t765 / 0.2e1;
t978 = t761 * t1159;
t689 = t1109 * t765 + t978;
t757 = sin(pkin(13));
t672 = t757 * t689;
t759 = cos(pkin(13));
t766 = cos(qJ(3));
t1105 = t759 * t766;
t731 = t758 * t1105;
t1064 = t672 + t731;
t764 = cos(qJ(6));
t1232 = t764 * t1064;
t1108 = t758 * t766;
t595 = -t757 * t1108 + t689 * t759;
t760 = sin(qJ(6));
t399 = t760 * t595 + t1232;
t1072 = t764 * t757;
t1088 = t760 * t759;
t703 = t1072 + t1088;
t676 = t703 * t761;
t1244 = t399 * t1169 + t1187 * t676;
t1068 = t765 * t766;
t1111 = t757 * t762;
t644 = (t1068 * t759 + t1111) * t758;
t1073 = t764 * t644;
t1018 = t758 * t1068;
t730 = t759 * t1109;
t643 = t1018 * t757 - t730;
t1091 = t760 * t643;
t855 = -t1091 / 0.2e1 + t1073 / 0.2e1;
t1239 = t855 - t1244;
t1245 = qJD(3) * t1239;
t1028 = t687 * qJD(2);
t1014 = t1028 * t399;
t1240 = t855 + t1244;
t1243 = qJD(3) * t1240 + t1014;
t402 = -t760 * t1064 + t764 * t595;
t1242 = t402 * t1168;
t1015 = t1028 * t402;
t1181 = t703 / 0.2e1;
t854 = t1088 / 0.2e1 + t1072 / 0.2e1;
t831 = t1181 + t854;
t341 = t831 * t687;
t1241 = qJD(4) * t341 + t1015;
t1090 = t760 * t644;
t621 = t764 * t643;
t1067 = t1090 / 0.2e1 + t621 / 0.2e1;
t1238 = -t1067 + t1242;
t1237 = t1067 + t1242;
t763 = sin(qJ(2));
t1158 = sin(pkin(6));
t947 = t1159 * t1158;
t895 = t763 * t947;
t848 = t762 * t895;
t1167 = cos(qJ(2));
t952 = t1158 * t1167;
t650 = t766 * t952 - t848;
t1125 = t650 * t761;
t977 = t763 * t1158;
t954 = t765 * t977;
t521 = -t758 * t954 + t1125;
t1208 = -t521 / 0.2e1;
t1207 = -t1232 / 0.2e1;
t1234 = t1064 / 0.2e1;
t1172 = t759 / 0.2e1;
t1175 = -t757 / 0.2e1;
t1231 = t1064 * t1172 + t1175 * t595;
t1124 = t650 * t765;
t956 = t761 * t977;
t917 = t758 * t956;
t522 = t917 + t1124;
t847 = t766 * t895;
t649 = t762 * t952 + t847;
t396 = -t522 * t757 + t649 * t759;
t397 = t522 * t759 + t649 * t757;
t1218 = t1172 * t397 + t1175 * t396;
t1230 = pkin(4) * t1208 + t1218 * qJ(5);
t1229 = -t595 / 0.2e1;
t1202 = t595 / 0.2e1;
t1071 = t764 * t759;
t1089 = t760 * t757;
t1219 = t1071 - t1089;
t1225 = t1219 * t765;
t1189 = t1225 / 0.2e1;
t1029 = t676 * qJD(6);
t1183 = -t1219 / 0.2e1;
t852 = t1071 / 0.2e1 - t1089 / 0.2e1;
t830 = t1183 + t852;
t526 = t830 * t765;
t1224 = t526 * qJD(4) - t1029;
t1160 = cos(pkin(6));
t787 = t1159 * t1160 - t758 * t952;
t782 = t787 * t758;
t896 = -t952 / 0.2e1;
t1223 = t782 / 0.2e1 + t896;
t1222 = t1160 * t758 + t1167 * t947;
t1171 = -t761 / 0.2e1;
t996 = t687 * t1171;
t866 = t1168 * t689 + t996;
t1221 = t866 * qJD(4);
t1016 = pkin(2) * t1159;
t965 = t762 * t1016;
t693 = pkin(9) * t1108 + t965;
t670 = pkin(10) * t1159 + t693;
t949 = -pkin(3) * t766 - pkin(10) * t762;
t671 = (-pkin(2) + t949) * t758;
t478 = t761 * t670 - t765 * t671;
t452 = pkin(4) * t1108 + t478;
t1141 = t452 * t765;
t1003 = t1141 / 0.2e1;
t991 = -t1108 / 0.2e1;
t958 = qJ(5) * t991;
t1220 = t761 * t958 + t1003;
t692 = (pkin(3) * t762 - pkin(10) * t766) * t758;
t1069 = t765 * t692;
t691 = pkin(9) * t1109 - t766 * t1016;
t681 = t761 * t691;
t1065 = t681 / 0.2e1 + t1069 / 0.2e1;
t1023 = t765 * qJD(3);
t739 = t761 * t1023;
t969 = qJD(2) * t866 + t739;
t851 = -qJD(3) * t866 + t689 * t1028;
t1217 = -pkin(4) / 0.2e1;
t955 = t762 * t977;
t591 = -t1222 * t766 + t955;
t1133 = t591 * t757;
t953 = t766 * t977;
t592 = t1222 * t762 + t953;
t1130 = t592 * t765;
t781 = t787 * t761;
t448 = t781 + t1130;
t1142 = t448 * t759;
t276 = t1133 + t1142;
t1216 = t276 / 0.2e1;
t543 = pkin(4) * t689 + qJ(5) * t687;
t285 = t478 * t757 + t759 * t543;
t1215 = t285 / 0.2e1;
t682 = t761 * t692;
t683 = t765 * t691;
t1063 = t682 - t683;
t486 = qJ(5) * t1109 + t1063;
t728 = pkin(4) * t761 - qJ(5) * t765;
t556 = t965 + (pkin(9) + t728) * t1108;
t295 = t759 * t486 + t757 * t556;
t1214 = t295 / 0.2e1;
t1110 = t757 * t765;
t368 = t1110 * t591 + t592 * t759;
t1213 = t368 / 0.2e1;
t1106 = t759 * t765;
t369 = -t1106 * t591 + t592 * t757;
t1212 = t369 / 0.2e1;
t447 = t592 * t761 - t765 * t787;
t1211 = -t447 / 0.2e1;
t1210 = t447 / 0.2e1;
t1209 = t448 / 0.2e1;
t1206 = -t591 / 0.2e1;
t1204 = -t1064 / 0.2e1;
t1201 = -t643 / 0.2e1;
t1200 = t643 / 0.2e1;
t1199 = t644 / 0.2e1;
t945 = -pkin(4) * t765 - qJ(5) * t761;
t721 = -pkin(3) + t945;
t697 = t759 * t721;
t645 = -pkin(10) * t1110 + t697;
t1198 = -t645 / 0.2e1;
t742 = pkin(10) * t1106;
t646 = t757 * t721 + t742;
t1197 = -t646 / 0.2e1;
t1112 = t757 * t761;
t740 = pkin(10) * t1112;
t652 = t759 * t728 + t740;
t1196 = -t652 / 0.2e1;
t1107 = t759 * t761;
t653 = -pkin(10) * t1107 + t757 * t728;
t1195 = -t653 / 0.2e1;
t1194 = -t676 / 0.2e1;
t678 = t703 * t765;
t1193 = -t678 / 0.2e1;
t679 = t1219 * t761;
t1192 = -t679 / 0.2e1;
t1191 = t679 / 0.2e1;
t1190 = -t1225 / 0.2e1;
t1188 = -t687 / 0.2e1;
t1186 = -t689 / 0.2e1;
t1185 = t689 / 0.2e1;
t1184 = t1219 / 0.2e1;
t1182 = -t703 / 0.2e1;
t1017 = pkin(5) * t757 + pkin(10);
t712 = t1017 * t761;
t1180 = -t712 / 0.2e1;
t1179 = t712 / 0.2e1;
t713 = t1017 * t765;
t1178 = -t713 / 0.2e1;
t1177 = -t730 / 0.2e1;
t748 = -pkin(5) * t759 - pkin(4);
t1176 = t748 / 0.2e1;
t1174 = t757 / 0.2e1;
t1173 = -t759 / 0.2e1;
t1170 = t761 / 0.2e1;
t1166 = pkin(10) * t687;
t1165 = pkin(10) * t761;
t1163 = t765 * pkin(10);
t1162 = -qJD(6) / 0.2e1;
t1161 = pkin(11) + qJ(5);
t669 = -pkin(3) * t1159 + t691;
t946 = t687 * pkin(4) - t689 * qJ(5);
t446 = t669 + t946;
t1070 = t765 * t670;
t1087 = t761 * t671;
t479 = t1070 + t1087;
t451 = -qJ(5) * t1108 + t479;
t219 = t446 * t759 - t451 * t757;
t1157 = t219 * t759;
t220 = t757 * t446 + t759 * t451;
t1156 = t220 * t757;
t1132 = t591 * t759;
t1143 = t448 * t757;
t275 = t1132 - t1143;
t1155 = t275 * t757;
t1154 = t276 * t759;
t1152 = t396 * t765;
t1150 = t397 * t765;
t1145 = t448 * t676;
t1144 = t448 * t679;
t462 = t1073 - t1091;
t1140 = t462 * t703;
t972 = t681 + t1069;
t487 = -pkin(4) * t1109 - t972;
t1139 = t487 * t757;
t1138 = t487 * t759;
t1137 = t521 * t1219;
t1136 = t521 * t703;
t1135 = t521 * t757;
t1134 = t521 * t759;
t1131 = t591 * t761;
t1129 = t645 * t757;
t1128 = t646 * t759;
t1127 = t649 * t761;
t1126 = t649 * t765;
t1123 = t669 * t765;
t67 = -t1131 * t447 + t275 * t368 + t276 * t369;
t1122 = t67 * qJD(1);
t1120 = t676 * t761;
t1119 = t679 * t687;
t1118 = t679 * t761;
t68 = t275 * t396 + t276 * t397 + t447 * t521;
t1117 = t68 * qJD(1);
t1116 = t687 * t759;
t69 = (-t1154 + t448 + t1155) * t447;
t1115 = t69 * qJD(1);
t483 = t1219 * t687;
t752 = t758 ^ 2;
t756 = t766 ^ 2;
t1114 = t752 * t756;
t1113 = t752 * t762;
t498 = t757 * t687;
t196 = pkin(5) * t689 + pkin(11) * t1116 + t285;
t1104 = t760 * t196;
t1019 = t761 * t1108;
t294 = -t757 * t486 + t759 * t556;
t215 = pkin(5) * t1019 - t644 * pkin(11) + t294;
t1103 = t760 * t215;
t234 = -pkin(11) * t643 + t295;
t1102 = t760 * t234;
t286 = -t759 * t478 + t757 * t543;
t235 = pkin(11) * t498 + t286;
t1101 = t760 * t235;
t1100 = t760 * t368;
t1099 = t760 * t369;
t1098 = t760 * t396;
t1097 = t760 * t397;
t578 = pkin(5) * t761 - pkin(11) * t1106 + t652;
t1096 = t760 * t578;
t598 = -pkin(11) * t1110 + t653;
t1092 = t760 * t598;
t1086 = t764 * t196;
t1085 = t764 * t215;
t1084 = t764 * t234;
t1083 = t764 * t235;
t1082 = t764 * t368;
t1081 = t764 * t369;
t1080 = t764 * t396;
t1079 = t764 * t397;
t1078 = t764 * t578;
t1074 = t764 * t598;
t736 = t757 ^ 2 + t759 ^ 2;
t754 = t761 ^ 2;
t738 = t765 ^ 2 - t754;
t997 = t1119 / 0.2e1;
t155 = t997 - t1238;
t1062 = qJD(2) * t155;
t156 = t997 - t1237;
t1061 = qJD(2) * t156;
t482 = t703 * t687;
t180 = -t399 * t689 + t482 * t687;
t1060 = qJD(2) * t180;
t181 = t402 * t689 - t483 * t687;
t1059 = qJD(2) * t181;
t1058 = qJD(2) * t402;
t1057 = qJD(2) * t766;
t1056 = qJD(3) * t679;
t1055 = qJD(3) * t758;
t1054 = qJD(3) * t766;
t1052 = qJD(4) * t1219;
t1051 = qJD(4) * t703;
t1050 = qJD(4) * t748;
t1049 = qJD(4) * t757;
t1048 = qJD(4) * t759;
t1047 = qJD(4) * t761;
t1046 = qJD(4) * t765;
t1045 = qJD(5) * t687;
t1044 = qJD(5) * t765;
t1043 = qJD(6) * t679;
t1042 = qJD(6) * t687;
t1041 = qJD(6) * t703;
t461 = t621 + t1090;
t107 = -t399 * t462 - t402 * t461;
t1040 = t107 * qJD(2);
t110 = t399 * t483 + t402 * t482;
t1039 = t110 * qJD(2);
t870 = t1189 * t402 - t1191 * t483;
t112 = -t1140 / 0.2e1 + t870;
t1038 = t112 * qJD(2);
t182 = -t1019 * t399 - t461 * t687;
t1037 = t182 * qJD(2);
t183 = t1019 * t402 + t462 * t687;
t1036 = t183 * qJD(2);
t990 = t1108 / 0.2e1;
t961 = t757 * t990;
t988 = t1107 / 0.2e1;
t330 = t1177 + t687 * t988 + (t961 + t1229) * t765;
t1035 = t330 * qJD(2);
t987 = t1105 / 0.2e1;
t992 = t1109 / 0.2e1;
t331 = (t758 * t987 + t1234) * t765 + (t992 + t996) * t757;
t1034 = t331 * qJD(2);
t832 = t1182 + t854;
t340 = t832 * t687;
t1033 = t340 * qJD(4);
t432 = -t687 * t765 - t689 * t761;
t463 = t432 * t1108;
t1032 = t463 * qJD(2);
t581 = -t1109 * t687 + t1114 * t761;
t1031 = t581 * qJD(2);
t582 = -t1109 * t689 + t1114 * t765;
t1030 = t582 * qJD(2);
t1027 = t689 * qJD(4);
t690 = t1219 * qJD(6);
t702 = (-t762 ^ 2 + t756) * t752;
t1026 = t702 * qJD(2);
t1025 = t758 * qJD(4);
t1024 = t761 * qJD(3);
t1022 = pkin(10) * t1046;
t1021 = t1165 / 0.2e1;
t1020 = t1163 / 0.2e1;
t1013 = t595 * t1028;
t1011 = t758 * t1057;
t1010 = t758 * t1054;
t1009 = t766 * t1025;
t1008 = t761 * t1044;
t1007 = t752 * t1057;
t1006 = t762 * t1055;
t1005 = t761 * t1046;
t1004 = -t1141 / 0.2e1;
t1002 = -t1135 / 0.2e1;
t1001 = -t1134 / 0.2e1;
t1000 = t591 * t1188;
t999 = t591 * t1185;
t550 = -t1131 / 0.2e1;
t551 = t1131 / 0.2e1;
t998 = t1125 / 0.2e1;
t995 = -t1112 / 0.2e1;
t994 = t1112 / 0.2e1;
t993 = -t1109 / 0.2e1;
t989 = -t1107 / 0.2e1;
t984 = 0.2e1 * t1202;
t983 = -t682 / 0.2e1 + t683 / 0.2e1;
t982 = pkin(10) * t1064;
t981 = t1161 * t757;
t980 = t591 * t1159;
t979 = t592 * t1159;
t974 = t736 * t447;
t973 = t1159 * qJD(2);
t639 = t676 * t1023;
t971 = qJD(2) * t1240 - t639;
t970 = -qJD(2) * t1239 - t639;
t524 = t831 * t765;
t640 = t679 * t1023;
t968 = qJD(4) * t524 + t640;
t967 = -qJD(6) - t1028;
t966 = qJD(5) + t1050;
t964 = t1054 * t1113;
t963 = t762 * t1007;
t962 = t765 * t1011;
t960 = t761 * t991;
t959 = t761 * t990;
t957 = t687 * t989;
t951 = t758 * t973;
t950 = t1159 * t1055;
t948 = -t672 / 0.2e1 - t731 / 0.2e1 + t1204;
t944 = -qJD(4) + t1011;
t43 = t219 * t285 + t220 * t286 + t452 * t479;
t884 = t1173 * t220 + t1174 * t219;
t770 = (t479 / 0.2e1 + t884) * t447 + t275 * t1215 + t286 * t1216 + t452 * t1209;
t8 = t770 - t1230;
t943 = t8 * qJD(1) + t43 * qJD(2);
t46 = t219 * t294 + t220 * t295 + t452 * t487;
t774 = t275 * t294 / 0.2e1 + t276 * t1214 + t219 * t1213 + t220 * t1212 + t487 * t1210;
t872 = t1197 * t397 + t1198 * t396;
t6 = (pkin(10) * t1208 + t1206 * t452) * t761 + t774 + t872;
t942 = t6 * qJD(1) + t46 * qJD(2);
t313 = pkin(5) * t1064 + t452;
t395 = -pkin(5) * t498 + t479;
t176 = -pkin(11) * t1064 + t220;
t795 = pkin(5) * t687 - pkin(11) * t595 + t219;
t92 = t176 * t760 - t764 * t795;
t927 = t1086 - t1101;
t11 = -t313 * t482 + t395 * t399 + t687 * t927 - t92 * t689;
t134 = -t764 * t275 + t276 * t760;
t772 = (t687 * t1181 - t482 / 0.2e1) * t447 + t134 * t1186 + t399 * t1209;
t28 = t1137 / 0.2e1 + t772;
t940 = t28 * qJD(1) + t11 * qJD(2);
t926 = t1083 + t1104;
t93 = t764 * t176 + t760 * t795;
t12 = -t313 * t483 + t395 * t402 - t687 * t926 - t93 * t689;
t135 = t275 * t760 + t276 * t764;
t771 = t1186 * t135 + t1209 * t402;
t30 = -t1136 / 0.2e1 + t771;
t939 = t30 * qJD(1) + t12 * qJD(2);
t105 = t1085 - t1102;
t393 = pkin(5) * t643 + t487;
t13 = -t1019 * t92 + t105 * t687 + t313 * t461 + t393 * t399;
t169 = t1082 - t1099;
t776 = (t1206 * t399 + t134 * t991) * t761 + t169 * t1187 + t461 * t1210;
t924 = t1080 - t1097;
t790 = t1169 * t924 - t1208 * t676;
t21 = t776 - t790;
t938 = t21 * qJD(1) + t13 * qJD(2);
t106 = t1084 + t1103;
t14 = -t1019 * t93 - t106 * t687 + t313 * t462 + t393 * t402;
t170 = t1081 + t1100;
t775 = (t1206 * t402 + t135 * t991) * t761 + t170 * t1188 + t462 * t1210;
t923 = t1079 + t1098;
t789 = t1169 * t923 + t1192 * t521;
t24 = t775 + t789;
t937 = t24 * qJD(1) + t14 * qJD(2);
t779 = t1064 * t1212 + t1199 * t275 + t1200 * t276 + t1202 * t368;
t836 = (t1173 * t396 + t1175 * t397) * t761;
t31 = t836 + t779;
t44 = -t1064 * t295 - t219 * t644 - t220 * t643 - t294 * t595;
t936 = -t31 * qJD(1) + t44 * qJD(2);
t38 = (t1064 * t1210 + t275 * t1187 - t397 / 0.2e1) * t759 + (t276 * t1187 + t447 * t1229 + t396 / 0.2e1) * t757;
t45 = -t286 * t1064 - t285 * t595 + (t1156 + t1157) * t687;
t935 = t38 * qJD(1) + t45 * qJD(2);
t47 = -t313 * t399 + t687 * t92;
t859 = -t1098 / 0.2e1 - t1079 / 0.2e1;
t888 = t1187 * t134 + t1211 * t399;
t50 = t859 - t888;
t934 = qJD(1) * t50 - qJD(2) * t47;
t48 = t313 * t402 - t687 * t93;
t858 = -t1097 / 0.2e1 + t1080 / 0.2e1;
t886 = t1188 * t135 + t1210 * t402;
t49 = t858 - t886;
t933 = qJD(1) * t49 - qJD(2) * t48;
t813 = t1064 * t1206 + t275 * t990;
t877 = t1187 * t368 + t1200 * t447;
t57 = t1152 / 0.2e1 + (t1002 + t813) * t761 + t877;
t78 = t1019 * t219 + t1064 * t487 + t294 * t687 + t452 * t643;
t932 = t57 * qJD(1) + t78 * qJD(2);
t842 = t1229 * t591 + t276 * t991;
t876 = t1188 * t369 + t1199 * t447;
t60 = -t1150 / 0.2e1 + (t1001 + t842) * t761 + t876;
t79 = -t1019 * t220 - t295 * t687 + t452 * t644 + t487 * t595;
t931 = t60 * qJD(1) + t79 * qJD(2);
t72 = t219 * t689 + t479 * t1064 + (-t452 * t757 + t285) * t687;
t834 = t1064 * t1209 + t1185 * t275;
t74 = t1134 / 0.2e1 + t834;
t930 = t74 * qJD(1) + t72 * qJD(2);
t73 = -t220 * t689 + t479 * t595 + (-t452 * t759 - t286) * t687;
t880 = t1186 * t276 + t1202 * t448;
t77 = t1002 + t880;
t929 = t77 * qJD(1) + t73 * qJD(2);
t94 = -t1064 * t220 - t219 * t595;
t897 = -t954 / 0.2e1;
t796 = t758 * t897 + t998;
t883 = t1204 * t276 + t1229 * t275;
t95 = t796 - t883;
t928 = qJD(1) * t95 - qJD(2) * t94;
t925 = -t285 * t757 + t286 * t759;
t922 = t1078 - t1092;
t921 = t1074 + t1096;
t920 = -t652 * t757 + t653 * t759;
t919 = t973 + qJD(3);
t350 = -t1225 * t676 - t678 * t679;
t783 = t1190 * t399 - t1192 * t482 + t1193 * t402 - t1194 * t483;
t869 = t1182 * t461 + t1184 * t462;
t62 = t783 - t869;
t918 = t62 * qJD(2) + t350 * qJD(3);
t844 = t1187 * t592 + t447 * t993;
t113 = t1126 / 0.2e1 + t844;
t163 = -t1019 * t669 + t1108 * t972 + t1109 * t478 - t693 * t687;
t916 = t113 * qJD(1) - t163 * qJD(2);
t843 = t1185 * t592 + t448 * t993;
t116 = -t1127 / 0.2e1 + t843;
t164 = t693 * t689 + (-t479 * t762 + (t1063 + t1123) * t766) * t758;
t915 = t116 * qJD(1) + t164 * qJD(2);
t172 = t999 + t998 + (t1209 * t766 + t897) * t758;
t289 = -t1108 * t479 - t669 * t689;
t914 = -qJD(1) * t172 + qJD(2) * t289;
t174 = t1000 + t1124 / 0.2e1 + (t766 * t1211 + t956 / 0.2e1) * t758;
t290 = -t1108 * t478 - t669 * t687;
t913 = -qJD(1) * t174 - qJD(2) * t290;
t769 = t896 - t782 / 0.2e1;
t823 = -t847 / 0.2e1;
t320 = t823 + t979 / 0.2e1 + t769 * t762;
t610 = -pkin(2) * t1113 - t1159 * t693;
t912 = qJD(1) * t320 - qJD(2) * t610;
t824 = t848 / 0.2e1;
t321 = t824 - t980 / 0.2e1 + t769 * t766;
t609 = t752 * pkin(2) * t766 - t1159 * t691;
t911 = qJD(1) * t321 + qJD(2) * t609;
t803 = -t1169 * t482 - t1186 * t676 + t1187 * t678;
t117 = (-t1219 * t991 + t399 / 0.2e1) * t761 + t803;
t488 = -t678 * t765 + t1120;
t910 = qJD(2) * t117 + qJD(3) * t488;
t802 = -t1168 * t483 + t1186 * t679 + t1188 * t1225;
t118 = (t703 * t990 - t402 / 0.2e1) * t761 + t802;
t489 = t1225 * t765 - t1118;
t909 = qJD(2) * t118 + qJD(3) * t489;
t177 = (t757 * t948 - t759 * t984) * t761;
t699 = t736 * t754;
t908 = qJD(2) * t177 - qJD(3) * t699;
t523 = t832 * t765;
t907 = qJD(2) * t340 - qJD(3) * t523;
t906 = qJD(2) * t341 - qJD(3) * t524;
t342 = (t1183 - t852) * t687;
t525 = -t1169 * t1219 + t765 * t852;
t905 = qJD(2) * t342 + qJD(3) * t525;
t343 = t830 * t687;
t904 = qJD(2) * t343 - qJD(3) * t526;
t465 = t687 ^ 2 - t689 ^ 2;
t903 = qJD(2) * t465 + qJD(3) * t432;
t902 = qJD(2) * t432 + qJD(3) * t738;
t901 = t1023 - t1028;
t900 = qJD(2) * t689 + t1024;
t189 = t757 * t984 + t759 * t948;
t899 = qJD(2) * t189 + qJD(4) * t736;
t898 = t1051 + t1056;
t894 = pkin(4) * t993 - t1065;
t893 = pkin(4) * t1201 - t1138 / 0.2e1;
t892 = t644 * t1217 + t1139 / 0.2e1;
t686 = t765 * t992 + t978 / 0.2e1;
t891 = t686 * qJD(2) + t1024 / 0.2e1;
t890 = t758 * t949;
t792 = pkin(3) * t1188 - t1123 / 0.2e1 + pkin(10) * t959;
t280 = t792 + t983;
t889 = pkin(3) * t1023 + qJD(2) * t280;
t887 = t1169 * t134 + t1194 * t447;
t885 = t1168 * t135 + t1191 * t447;
t882 = t1195 * t276 + t1196 * t275;
t881 = -t1155 / 0.2e1 + t1154 / 0.2e1;
t879 = t1172 * t275 + t1174 * t276;
t878 = t1172 * t295 + t1175 * t294;
t875 = t1172 * t369 + t1175 * t368;
t874 = t1176 * t461 + t1183 * t393;
t873 = t1176 * t462 + t1181 * t393;
t868 = -t1064 * t1197 - t1198 * t595;
t867 = -t1129 / 0.2e1 + t1128 / 0.2e1;
t865 = -t1104 / 0.2e1 - t1083 / 0.2e1;
t864 = -t1103 / 0.2e1 - t1084 / 0.2e1;
t863 = -t1102 / 0.2e1 + t1085 / 0.2e1;
t862 = -t1101 / 0.2e1 + t1086 / 0.2e1;
t861 = -t1100 / 0.2e1 - t1081 / 0.2e1;
t860 = -t1099 / 0.2e1 + t1082 / 0.2e1;
t857 = -t1096 / 0.2e1 - t1074 / 0.2e1;
t856 = -t1092 / 0.2e1 + t1078 / 0.2e1;
t853 = -t1087 / 0.2e1 - t1070 / 0.2e1;
t850 = qJD(4) * t523 + t1043 - t640;
t845 = t1162 * t761 + t969;
t727 = t1161 * t759;
t601 = t727 * t760 + t764 * t981;
t596 = -pkin(11) * t1112 + t646;
t797 = -pkin(11) * t1107 + t697 + (-pkin(10) * t757 - pkin(5)) * t765;
t390 = t596 * t760 - t764 * t797;
t768 = t1168 * t927 + t1178 * t399 - t1180 * t482 + t1185 * t390 + t1188 * t922 + t1193 * t313 + t1194 * t395;
t1 = (t601 * t991 + t92 / 0.2e1) * t761 + t768 + t874;
t125 = t390 * t761 - t713 * t676 - t712 * t678 + t765 * t922;
t39 = -t1145 / 0.2e1 + (t591 * t1184 + t134 / 0.2e1) * t761;
t841 = -t39 * qJD(1) - t1 * qJD(2) - t125 * qJD(3);
t391 = t764 * t596 + t760 * t797;
t126 = t1225 * t712 - t391 * t761 + t713 * t679 + t765 * t921;
t602 = t764 * t727 - t760 * t981;
t767 = t1169 * t926 + t1178 * t402 - t1180 * t483 + t1185 * t391 + t1187 * t921 + t1190 * t313 + t1192 * t395;
t2 = (t602 * t991 + t93 / 0.2e1) * t761 + t767 + t873;
t40 = -t1144 / 0.2e1 + (t591 * t1182 + t135 / 0.2e1) * t761 + (t1189 + t1190) * t447;
t840 = -t40 * qJD(1) - t2 * qJD(2) + t126 * qJD(3);
t231 = (t645 * t765 + t652 * t761) * t759 + (t646 * t765 + t653 * t761) * t757;
t83 = (t275 * t1169 - t369 / 0.2e1) * t759 + (t1169 * t276 + t1213) * t757;
t833 = t652 * t1202 + t1234 * t653;
t9 = (qJ(5) * t1201 + t1168 * t219 + t1170 * t285 + t1188 * t645 + t1214) * t759 + (qJ(5) * t1199 - t294 / 0.2e1 + t646 * t1188 + t286 * t1170 + t220 * t1168) * t757 + t833;
t839 = t83 * qJD(1) - t9 * qJD(2) - t231 * qJD(3);
t838 = t879 * t761;
t837 = t875 * qJ(5);
t835 = t852 * t687;
t784 = t1195 * t220 + t1196 * t219 + t1197 * t286 + t1198 * t285;
t788 = t878 * qJ(5) + t1217 * t487;
t15 = (t1171 * t479 + t1004) * pkin(10) + t784 + t788;
t439 = t1020 - t867;
t25 = (t591 * pkin(4) / 0.2e1 - t448 * pkin(10) / 0.2e1) * t761 + t837 - t439 * t447 + t882;
t272 = pkin(10) ^ 2 * t761 * t765 + t645 * t652 + t646 * t653;
t829 = -t25 * qJD(1) - t15 * qJD(2) + t272 * qJD(3);
t785 = t1168 * t93 + t1179 * t402 + t1188 * t391 + t1191 * t313;
t17 = -t785 + t863;
t244 = -t391 * t765 - t712 * t679;
t63 = t860 - t885;
t828 = qJD(1) * t63 + qJD(2) * t17 + qJD(3) * t244;
t786 = t1169 * t92 + t1180 * t399 + t1187 * t390 + t1194 * t313;
t18 = -t786 + t864;
t243 = -t390 * t765 - t676 * t712;
t64 = t861 - t887;
t827 = qJD(1) * t64 + qJD(2) * t18 - qJD(3) * t243;
t780 = t1004 + (t958 + t1166 / 0.2e1 - t479 / 0.2e1) * t761;
t807 = t1171 * t219 + t1186 * t645 + t1188 * t652;
t33 = (t1215 - t982 / 0.2e1) * t765 + t780 * t757 + t807 + t893;
t430 = -t645 * t761 + (t652 - 0.2e1 * t740) * t765;
t89 = (t1132 / 0.2e1 - t275 / 0.2e1 - t1143 / 0.2e1) * t761;
t826 = t89 * qJD(1) + t33 * qJD(2) + t430 * qJD(3);
t806 = t1170 * t220 + t1185 * t646 + t1187 * t653;
t34 = (-t286 / 0.2e1 + pkin(10) * t1229) * t765 + t780 * t759 + t806 + t892;
t431 = t653 * t765 + (-t646 + 0.2e1 * t742) * t761;
t88 = (-t1133 / 0.2e1 + t1216 - t1142 / 0.2e1) * t761;
t825 = t88 * qJD(1) + t34 * qJD(2) - t431 * qJD(3);
t109 = t551 - t838;
t445 = (t645 * t759 + t646 * t757) * t761;
t70 = (t1156 / 0.2e1 + t1157 / 0.2e1) * t761 + t868 + t894;
t822 = -qJD(1) * t109 + qJD(2) * t70 + qJD(3) * t445;
t136 = t832 * t447;
t800 = t1168 * t602 + t1176 * t679 + t1179 * t703;
t165 = -t800 + t856;
t804 = t1176 * t402 + t1181 * t313 + t1188 * t602;
t53 = -t804 + t862;
t821 = t136 * qJD(1) + t53 * qJD(2) + t165 * qJD(3);
t137 = t830 * t447;
t801 = t1169 * t601 - t1176 * t676 - t1180 * t1219;
t166 = -t801 + t857;
t805 = t313 * t1184 + t601 * t1187 - t748 * t399 / 0.2e1;
t54 = -t805 + t865;
t820 = t137 * qJD(1) + t54 * qJD(2) + t166 * qJD(3);
t104 = -t1219 * t399 - t703 * t402;
t129 = t399 ^ 2 - t402 ^ 2;
t98 = t399 * t676 - t679 * t402;
t819 = qJD(2) * t129 + qJD(3) * t98 + qJD(4) * t104;
t262 = -t1219 * t676 - t703 * t679;
t443 = t676 ^ 2 - t679 ^ 2;
t818 = qJD(2) * t98 + qJD(3) * t443 + qJD(4) * t262;
t497 = t1219 ^ 2 - t703 ^ 2;
t817 = qJD(2) * t104 + qJD(3) * t262 + qJD(4) * t497;
t216 = t1064 ^ 2 + t595 ^ 2;
t816 = qJD(2) * t216 - qJD(3) * t177 + qJD(4) * t189;
t190 = -t760 * t948 - t764 * t984;
t815 = qJD(2) * t190 - t898;
t191 = -t984 * t760 + 0.2e1 * t1207;
t814 = qJD(2) * t191 - qJD(3) * t676 + t1052;
t791 = pkin(3) * t1185 + t1163 * t991 + t1171 * t669;
t279 = t791 + t1065;
t384 = t551 + t550;
t812 = pkin(3) * t1024 - qJD(1) * t384 + qJD(2) * t279;
t149 = t1192 * t399 + t1194 * t402;
t154 = t1182 * t399 + t1184 * t402;
t811 = -qJD(3) * t149 - qJD(4) * t154 + t1058 * t399;
t394 = -t1181 * t676 + t1184 * t679;
t810 = qJD(2) * t149 + qJD(4) * t394 - t1056 * t676;
t809 = -qJD(2) * t154 - qJD(3) * t394 - t1051 * t1219;
t808 = qJD(6) * t686 + t851;
t794 = qJD(4) * t945 + t1044;
t719 = t736 * qJ(5);
t777 = -qJ(5) * t1231 - t884;
t81 = t777 + t853;
t773 = t1130 / 0.2e1 + t781 / 0.2e1;
t99 = t773 - t881;
t793 = qJD(1) * t99 - qJD(2) * t81 + qJD(3) * t439 - qJD(4) * t719;
t749 = t1047 / 0.2e1;
t733 = qJD(3) * t992;
t673 = (t1007 - t1025 / 0.2e1) * t762;
t590 = qJD(3) * t959 + t686 * qJD(4);
t538 = -t1119 / 0.2e1;
t511 = t525 * qJD(4);
t440 = t1020 + t867;
t425 = t432 * qJD(4);
t392 = t394 * qJD(6);
t387 = t591 * t765;
t385 = 0.2e1 * t551;
t345 = -t483 / 0.2e1 - t835;
t344 = t483 / 0.2e1 - t835;
t333 = -t1169 * t595 + t765 * t961 + t1177 + t957;
t332 = t687 * t994 - t1064 * t1168 + (t765 * t987 + t1111 / 0.2e1) * t758;
t323 = -t979 / 0.2e1 + t823 + t1223 * t762;
t322 = t980 / 0.2e1 + t824 + t1223 * t766;
t282 = -t791 + t1065;
t281 = -t792 + t983;
t254 = t262 * qJD(6);
t192 = t1207 + t1232 / 0.2e1;
t188 = t189 * qJD(5);
t175 = t1000 + t447 * t991 - t1124 / 0.2e1 - t917 / 0.2e1;
t173 = t448 * t990 - t796 + t999;
t171 = t177 * qJD(5);
t168 = t800 + t856;
t167 = t801 + t857;
t162 = t538 + t1238;
t161 = t538 + t1237;
t153 = t154 * qJD(6);
t148 = t149 * qJD(6);
t139 = t831 * t447;
t138 = (t1184 + t852) * t447;
t120 = t1170 * t402 + t703 * t959 - t802;
t119 = t1171 * t399 - t1219 * t960 - t803;
t115 = t1127 / 0.2e1 + t843;
t114 = -t1126 / 0.2e1 + t844;
t111 = t1140 / 0.2e1 + t870;
t108 = t550 - t838;
t103 = t104 * qJD(6);
t100 = t773 + t881;
t97 = t98 * qJD(6);
t96 = t796 + t883;
t91 = t1171 * t276 + t448 * t988 + t591 * t995;
t90 = t1170 * t275 + t448 * t994 + t591 * t988;
t82 = -t765 * t879 + t875;
t80 = t777 - t853;
t76 = t1135 / 0.2e1 + t880;
t75 = t1001 + t834;
t71 = t219 * t989 + t220 * t995 - t868 + t894;
t66 = t860 + t885;
t65 = t861 + t887;
t61 = t783 + t869;
t59 = t1150 / 0.2e1 + t521 * t988 + t842 * t761 + t876;
t58 = -t1152 / 0.2e1 + t521 * t994 + t813 * t761 + t877;
t56 = t804 + t862;
t55 = t805 + t865;
t52 = t858 + t886;
t51 = t859 + t888;
t42 = -t1225 * t1210 + t135 * t1171 + t1144 / 0.2e1 + t447 * t1189 + t703 * t550;
t41 = t134 * t1171 + t1145 / 0.2e1 - t1219 * t550;
t37 = t1231 * t447 + t879 * t687 + t1218;
t36 = pkin(10) * t957 + t595 * t1020 + t286 * t1168 + t1220 * t759 + t479 * t988 - t806 + t892;
t35 = t995 * t1166 + t982 * t1168 + t285 * t1169 + t1220 * t757 + t479 * t994 - t807 + t893;
t32 = t836 - t779;
t29 = t1136 / 0.2e1 + t771;
t27 = -t1137 / 0.2e1 + t772;
t26 = pkin(4) * t551 + t1020 * t447 + t1021 * t448 + t1128 * t1211 + t1129 * t1210 + t837 - t882;
t23 = t775 - t789;
t22 = t776 + t790;
t20 = t785 + t863;
t19 = t786 + t864;
t16 = pkin(10) * t1003 + t1021 * t479 - t784 + t788;
t10 = t646 * t498 / 0.2e1 + t286 * t995 - t220 * t1110 / 0.2e1 + t645 * t1116 / 0.2e1 + t285 * t989 - t219 * t1106 / 0.2e1 + (t1173 * t643 + t1174 * t644) * qJ(5) - t833 + t878;
t7 = t770 + t1230;
t5 = t1021 * t521 + t452 * t550 + t774 - t872;
t4 = t1171 * t93 + t602 * t960 - t767 + t873;
t3 = t1171 * t92 + t601 * t960 - t768 + t874;
t84 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t68 + qJD(3) * t67 + qJD(4) * t69, 0, 0, 0, 0, 0, 0, 0; 0, 0, -qJD(2) * t977, -qJD(2) * t952, 0, 0, 0, 0, 0 (-t1159 * t649 - t752 * t953) * qJD(2) + t323 * qJD(3) (-t1159 * t650 + t752 * t955) * qJD(2) + t322 * qJD(3), 0, 0, 0, 0, 0 (t1108 * t521 + t649 * t687) * qJD(2) + t114 * qJD(3) + t173 * qJD(4) (t1108 * t522 + t649 * t689) * qJD(2) + t115 * qJD(3) + t175 * qJD(4) (t1064 * t521 + t396 * t687) * qJD(2) + t58 * qJD(3) + t75 * qJD(4) (-t397 * t687 + t521 * t595) * qJD(2) + t59 * qJD(3) + t76 * qJD(4) (-t1064 * t397 - t396 * t595) * qJD(2) + t32 * qJD(3) + t37 * qJD(4), t1117 + (t219 * t396 + t220 * t397 + t452 * t521) * qJD(2) + t5 * qJD(3) + t7 * qJD(4) + t96 * qJD(5), 0, 0, 0, 0, 0 (t521 * t399 + t687 * t924) * qJD(2) + t22 * qJD(3) + t27 * qJD(4) + t52 * qJD(6) (t521 * t402 - t687 * t923) * qJD(2) + t23 * qJD(3) + t29 * qJD(4) + t51 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t323 - qJD(3) * t592, qJD(2) * t322 + qJD(3) * t591, 0, 0, 0, 0, 0, qJD(2) * t114 + qJD(4) * t385 - t1023 * t592, qJD(2) * t115 + qJD(4) * t387 + t1024 * t592, t58 * qJD(2) + (-t1133 * t754 - t368 * t765) * qJD(3) + t90 * qJD(4), t59 * qJD(2) + (-t1132 * t754 + t369 * t765) * qJD(3) + t91 * qJD(4), t32 * qJD(2) + t82 * qJD(4) + (-t368 * t759 - t369 * t757) * t1024, t1122 + t5 * qJD(2) + (-pkin(10) * t591 * t754 + t368 * t645 + t369 * t646) * qJD(3) + t26 * qJD(4) + t108 * qJD(5), 0, 0, 0, 0, 0, t22 * qJD(2) + (-t1120 * t591 - t169 * t765) * qJD(3) + t41 * qJD(4) + t66 * qJD(6), t23 * qJD(2) + (-t1118 * t591 + t170 * t765) * qJD(3) + t42 * qJD(4) + t65 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t173 + qJD(3) * t385 - qJD(4) * t448, qJD(2) * t175 + qJD(3) * t387 + qJD(4) * t447, qJD(2) * t75 + qJD(3) * t90 - t1048 * t448, qJD(2) * t76 + qJD(3) * t91 + t1049 * t448, t37 * qJD(2) + t82 * qJD(3) - qJD(4) * t974, t1115 + t7 * qJD(2) + t26 * qJD(3) + (-t448 * pkin(4) - qJ(5) * t974) * qJD(4) + t100 * qJD(5), 0, 0, 0, 0, 0, qJD(2) * t27 + qJD(3) * t41 + qJD(6) * t139 - t1052 * t448, qJD(2) * t29 + qJD(3) * t42 + qJD(6) * t138 + t1051 * t448; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t96 + qJD(3) * t108 + qJD(4) * t100, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t52 + qJD(3) * t66 + qJD(4) * t139 - qJD(6) * t135, qJD(2) * t51 + qJD(3) * t65 + qJD(4) * t138 + qJD(6) * t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, -t320 * qJD(3), -t321 * qJD(3), 0, 0, 0, 0, 0, qJD(3) * t113 + qJD(4) * t172, qJD(3) * t116 + qJD(4) * t174, qJD(3) * t57 + qJD(4) * t74, qJD(3) * t60 + qJD(4) * t77, -qJD(3) * t31 + qJD(4) * t38, qJD(3) * t6 + qJD(4) * t8 - qJD(5) * t95 - t1117, 0, 0, 0, 0, 0, qJD(3) * t21 + qJD(4) * t28 - qJD(6) * t49, qJD(3) * t24 + qJD(4) * t30 - qJD(6) * t50; 0, 0, 0, 0, t964, t702 * qJD(3), t766 * t950, -t762 * t950, 0, t610 * qJD(3), -t609 * qJD(3) (-t687 * qJD(4) + t1010 * t765) * t689, qJD(3) * t463 + qJD(4) * t465, -t582 * qJD(3) + t1009 * t687, t581 * qJD(3) + t1009 * t689, -t964, -qJD(3) * t163 - qJD(4) * t289, qJD(3) * t164 + qJD(4) * t290, qJD(3) * t78 + qJD(4) * t72 - t1045 * t595, qJD(3) * t79 + qJD(4) * t73 + t1045 * t1064, qJD(3) * t44 + qJD(4) * t45 + qJD(5) * t216, qJD(3) * t46 + qJD(4) * t43 + qJD(5) * t94 (qJD(3) * t462 - qJD(4) * t483 - qJD(6) * t399) * t402, qJD(3) * t107 + qJD(4) * t110 + qJD(6) * t129, qJD(3) * t183 + qJD(4) * t181 - t1042 * t399, qJD(3) * t182 + qJD(4) * t180 - t1042 * t402 (t1010 * t761 + t1027) * t687, qJD(3) * t13 + qJD(4) * t11 + qJD(6) * t48 - t1045 * t402, qJD(3) * t14 + qJD(4) * t12 + qJD(6) * t47 + t1045 * t399; 0, 0, 0, 0, t963, t1026, t919 * t1108, -t919 * t1109, 0, -qJD(3) * t693 - t912, qJD(3) * t691 - t911, t1018 * t900 + t1221, t1010 * t738 + t1032 + t425, t1006 * t761 - t1030, t1006 * t765 + t1031, -t673 (-t693 * t765 + t761 * t890) * qJD(3) + t282 * qJD(4) + t916 (t693 * t761 + t765 * t890) * qJD(3) + t281 * qJD(4) + t915, -t294 * t1023 + t35 * qJD(4) + t333 * qJD(5) + (pkin(10) * t643 + t1108 * t645 + t1139) * t1024 + t932, t295 * t1023 + t36 * qJD(4) + t332 * qJD(5) + (pkin(10) * t644 - t1108 * t646 + t1138) * t1024 + t931 (-t646 * t643 - t645 * t644 + (-t294 * t759 - t295 * t757) * t761) * qJD(3) + t10 * qJD(4) - t171 + t936 (t1165 * t487 + t294 * t645 + t295 * t646) * qJD(3) + t16 * qJD(4) + t71 * qJD(5) + t942, t111 * qJD(4) + t148 + (t1056 + t1058) * t462, t1040 + (-t461 * t679 - t462 * t676) * qJD(3) + t61 * qJD(4) + t97, t1036 + (t1019 * t679 - t462 * t765) * qJD(3) + t120 * qJD(4) + t1239 * qJD(6), t1037 + (-t1019 * t676 + t461 * t765) * qJD(3) + t119 * qJD(4) + t162 * qJD(6), -t1221 + (qJD(6) / 0.2e1 - t901) * t1019 (-t1019 * t390 - t105 * t765 + t393 * t676 + t712 * t461) * qJD(3) + t3 * qJD(4) + t161 * qJD(5) + t20 * qJD(6) + t938 (-t1019 * t391 + t106 * t765 + t393 * t679 + t712 * t462) * qJD(3) + t4 * qJD(4) + t1240 * qJD(5) + t19 * qJD(6) + t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t851, t903, t944 * t687, t944 * t689, t733, qJD(3) * t282 - qJD(4) * t479 - t914, qJD(3) * t281 + qJD(4) * t478 - t913, t35 * qJD(3) + (-t479 * t759 + t757 * t946) * qJD(4) - t498 * qJD(5) + t930, t479 * t1049 + t36 * qJD(3) + (qJD(4) * t946 - t1045) * t759 + t929, t10 * qJD(3) + qJD(4) * t925 + t188 + t935, t16 * qJD(3) + (-t479 * pkin(4) + qJ(5) * t925) * qJD(4) + t80 * qJD(5) + t943, t111 * qJD(3) + t153 - (t1051 + t1058) * t483, t1039 + t61 * qJD(3) + (-t1219 * t483 + t482 * t703) * qJD(4) + t103, qJD(3) * t120 + qJD(6) * t344 + t1027 * t703 + t1059, qJD(3) * t119 + qJD(6) * t340 + t1027 * t1219 + t1060, t808, t3 * qJD(3) + (-t1219 * t395 - t482 * t748 - t601 * t689) * qJD(4) - t341 * qJD(5) + t56 * qJD(6) + t940, t4 * qJD(3) + (t395 * t703 - t483 * t748 - t602 * t689) * qJD(4) + t345 * qJD(5) + t55 * qJD(6) + t939; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t333 - qJD(4) * t498 - t1013, t332 * qJD(3) + (qJD(2) * t1064 - t1048) * t687, t816, qJD(3) * t71 + qJD(4) * t80 - t928, 0, 0, 0, 0, 0, qJD(3) * t161 - t1241, qJD(4) * t345 + qJD(6) * t192 + t1243; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t811, t819, t344 * qJD(4) + t399 * t967 + t1245, t162 * qJD(3) + t402 * t967 + t1033, t590, qJD(3) * t20 + qJD(4) * t56 - qJD(6) * t93 - t933, qJD(3) * t19 + qJD(4) * t55 + qJD(5) * t192 + qJD(6) * t92 - t934; 0, 0, 0, 0, 0, 0, 0, 0, 0, t320 * qJD(2), t321 * qJD(2), 0, 0, 0, 0, 0, -qJD(2) * t113 + qJD(4) * t384, -qJD(2) * t116, -qJD(2) * t57 - qJD(4) * t89, -qJD(2) * t60 - qJD(4) * t88, qJD(2) * t31 + qJD(4) * t83, -qJD(2) * t6 - qJD(4) * t25 + qJD(5) * t109 - t1122, 0, 0, 0, 0, 0, -qJD(2) * t21 - qJD(4) * t39 - qJD(6) * t63, -qJD(2) * t24 - qJD(4) * t40 - qJD(6) * t64; 0, 0, 0, 0, -t963, -t1026, -t766 * t951, t762 * t951, 0, t912, t911, -t689 * t962 + t1221, t425 - t1032, -t1009 * t765 + t1030, t1009 * t761 - t1031, t673, -qJD(4) * t279 - t916, -qJD(4) * t280 - t915, -qJD(4) * t33 - qJD(5) * t330 - t932, -qJD(4) * t34 - qJD(5) * t331 - t931, -qJD(4) * t9 - t171 - t936, -qJD(4) * t15 - qJD(5) * t70 - t942, qJD(4) * t112 - t1058 * t462 + t148, qJD(4) * t62 - t1040 + t97, -qJD(4) * t118 - qJD(6) * t1240 - t1036, -qJD(4) * t117 - qJD(6) * t156 - t1037, -t1221 + (-t1028 + t1162) * t1019, -qJD(4) * t1 - qJD(5) * t155 - qJD(6) * t17 - t938, -qJD(4) * t2 - qJD(5) * t1239 - qJD(6) * t18 - t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1005, t738 * qJD(4), 0, 0, 0, -pkin(3) * t1047, -pkin(3) * t1046, -qJD(4) * t430 + t1008 * t759, qJD(4) * t431 - t1008 * t757, -qJD(4) * t231 + qJD(5) * t699, qJD(4) * t272 - qJD(5) * t445 (qJD(4) * t1225 - t1029) * t679, qJD(4) * t350 + qJD(6) * t443, -qJD(4) * t489 + t1029 * t765, -qJD(4) * t488 + t1043 * t765, -t1005, -qJD(4) * t125 - qJD(6) * t244 + t1044 * t679, qJD(4) * t126 + qJD(6) * t243 - t1044 * t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t969, t902, -t944 * t765, t944 * t761, qJD(2) * t993, -t812 - t1022, pkin(10) * t1047 - t889, -t742 * qJD(4) + t757 * t794 - t826, t1022 * t757 + t759 * t794 - t825, qJD(4) * t920 + t839 (-pkin(4) * t1163 + qJ(5) * t920) * qJD(4) + t440 * qJD(5) + t829, t1225 * t898 + t1038 + t392 (t1219 * t1225 - t678 * t703) * qJD(4) + t254 + t918, qJD(6) * t526 + t1047 * t703 - t909, -qJD(6) * t523 + t1047 * t1219 - t910, -t845 (-t1219 * t713 - t601 * t761 + t678 * t748) * qJD(4) + t524 * qJD(5) + t168 * qJD(6) + t841 (t1225 * t748 - t602 * t761 + t703 * t713) * qJD(4) + t525 * qJD(5) + t167 * qJD(6) + t840; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1035 + (t1024 * t759 + t1049) * t765, -t1034 + (-t1024 * t757 + t1048) * t765, -t908, qJD(4) * t440 - t822, 0, 0, 0, 0, 0, t968 - t1062, t511 + t970; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t810, t818, -t971 + t1224, -t850 - t1061, qJD(2) * t960 + t749, qJD(4) * t168 - qJD(6) * t391 - t828, qJD(4) * t167 + qJD(6) * t390 - t827; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t172 - qJD(3) * t384, -qJD(2) * t174, -qJD(2) * t74 + qJD(3) * t89, -qJD(2) * t77 + qJD(3) * t88, -qJD(2) * t38 - qJD(3) * t83, -qJD(2) * t8 + qJD(3) * t25 - qJD(5) * t99 - t1115, 0, 0, 0, 0, 0, -qJD(2) * t28 + qJD(3) * t39 - qJD(6) * t136, -qJD(2) * t30 + qJD(3) * t40 - qJD(6) * t137; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t851, -t903, t901 * t1108, -t900 * t1108, t733, qJD(3) * t279 + t914, qJD(3) * t280 + t913, qJD(3) * t33 - t930, qJD(3) * t34 - t929, qJD(3) * t9 + t188 - t935, qJD(3) * t15 + qJD(5) * t81 - t943, -qJD(3) * t112 + t1058 * t483 + t153, -qJD(3) * t62 + t103 - t1039, qJD(3) * t118 - qJD(6) * t342 - t1059, qJD(3) * t117 - qJD(6) * t341 - t1060, -t808, qJD(3) * t1 + qJD(5) * t340 - qJD(6) * t53 - t940, qJD(3) * t2 + qJD(5) * t343 - qJD(6) * t54 - t939; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t969, -t902, t962, -t761 * t1011, qJD(2) * t992, t812, t889, t826, t825, -t839, -qJD(5) * t439 - t829, -t1056 * t1225 - t1038 + t392, t254 - t918, -qJD(6) * t525 + t909, qJD(6) * t524 + t910, t845, -qJD(5) * t523 - qJD(6) * t165 - t841, -qJD(5) * t526 - qJD(6) * t166 - t840; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t736 * qJD(5), t719 * qJD(5), t703 * t690, t497 * qJD(6), 0, 0, 0, t748 * t1041, t748 * t690; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, -t793, 0, 0, 0, 0, 0, t907, t904; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t809, t817, t690 - t905, -t906 - t1041, -t891, -qJD(6) * t602 + t1050 * t703 - t821, qJD(6) * t601 + t1050 * t1219 - t820; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t95 - qJD(3) * t109 + qJD(4) * t99, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t330 + t1013, qJD(3) * t331 - t1028 * t1064, -t816, qJD(3) * t70 - qJD(4) * t81 + t928, 0, 0, 0, 0, 0, qJD(3) * t155 - qJD(6) * t190 + t1015 - t1033, -qJD(4) * t343 + qJD(6) * t191 - t1014 + t1245; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t739 * t759 + t1035, t739 * t757 + t1034, t908, qJD(4) * t439 + t822, 0, 0, 0, 0, 0, t850 + t1062, -t970 + t1224; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t899, t793, 0, 0, 0, 0, 0, -t907 + t1041, t690 - t904; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t815, t814; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t49 + qJD(3) * t63 + qJD(4) * t136, qJD(2) * t50 + qJD(3) * t64 + qJD(4) * t137; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t811, -t819, qJD(4) * t342 + t1243, qJD(3) * t156 + t1241, t590, qJD(3) * t17 + qJD(4) * t53 + qJD(5) * t190 + t933, qJD(3) * t18 + qJD(4) * t54 - qJD(5) * t191 + t934; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t810, -t818, t511 + t971, -t968 + t1061, qJD(2) * t959 + t749, qJD(4) * t165 - qJD(5) * t679 + t828, qJD(4) * t166 + qJD(5) * t676 + t827; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t809, -t817, t905, t906, t891, -t703 * t966 + t821, -t1219 * t966 + t820; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t815, -t814; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t84;
