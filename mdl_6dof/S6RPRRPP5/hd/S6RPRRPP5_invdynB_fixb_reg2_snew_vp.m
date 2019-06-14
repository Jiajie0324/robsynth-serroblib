% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRRPP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 21:40
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRRPP5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP5_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP5_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPP5_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPP5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP5_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 21:38:49
% EndTime: 2019-05-05 21:39:22
% DurationCPUTime: 32.11s
% Computational Cost: add. (57866->695), mult. (137634->934), div. (0->0), fcn. (102484->8), ass. (0->495)
t972 = sin(pkin(9));
t973 = cos(pkin(9));
t976 = sin(qJ(3));
t979 = cos(qJ(3));
t1003 = t972 * t979 + t973 * t976;
t947 = t1003 * qJD(1);
t975 = sin(qJ(4));
t978 = cos(qJ(4));
t920 = -t978 * qJD(3) + t947 * t975;
t1085 = t920 ^ 2;
t922 = qJD(3) * t975 + t947 * t978;
t919 = t922 ^ 2;
t1104 = t919 + t1085;
t1034 = t972 * t976;
t945 = (-t973 * t979 + t1034) * qJD(1);
t937 = qJD(4) + t945;
t1041 = t920 * t937;
t1027 = t945 * qJD(3);
t1099 = t1003 * qJDD(1);
t899 = t1099 - t1027;
t1002 = -t975 * qJDD(3) - t978 * t899;
t995 = qJD(4) * t920 + t1002;
t797 = t1041 - t995;
t1009 = -t978 * qJDD(3) + t899 * t975;
t996 = (qJD(4) - t937) * t922 + t1009;
t699 = -t797 * t975 + t978 * t996;
t646 = -t1104 * t979 + t699 * t976;
t649 = t1104 * t976 + t699 * t979;
t1214 = t646 * t972 - t649 * t973;
t693 = t797 * t978 + t975 * t996;
t977 = sin(qJ(1));
t980 = cos(qJ(1));
t1224 = t1214 * t980 - t693 * t977;
t1238 = pkin(6) * t1224;
t1225 = t1214 * t977 + t693 * t980;
t1237 = pkin(6) * t1225;
t588 = t646 * t973 + t649 * t972;
t1236 = qJ(2) * t588;
t1235 = pkin(1) * t588 + pkin(2) * t646 - pkin(3) * t1104 + pkin(8) * t699;
t1084 = t937 ^ 2;
t1101 = t1085 - t1084;
t1042 = t920 * t922;
t1026 = t947 * qJD(3);
t1022 = qJDD(1) * t973;
t943 = qJDD(1) * t1034 - t979 * t1022;
t897 = -t943 - t1026;
t888 = qJDD(4) - t897;
t986 = t888 + t1042;
t1113 = t986 * t978;
t753 = t1101 * t975 + t1113;
t1152 = t753 * t980;
t1114 = t986 * t975;
t1125 = t1101 * t978 - t1114;
t1155 = t1125 * t976;
t683 = t996 * t979 + t1155;
t1154 = t1125 * t979;
t687 = t996 * t976 - t1154;
t620 = t683 * t972 + t687 * t973;
t1234 = t620 * t977 + t1152;
t1153 = t753 * t977;
t1233 = t620 * t980 - t1153;
t800 = t1041 + t995;
t1064 = t800 * t975;
t1024 = qJD(4) + t937;
t790 = t1024 * t922 + t1009;
t702 = -t790 * t978 + t1064;
t860 = t919 - t1085;
t855 = t979 * t860;
t658 = t702 * t976 - t855;
t1050 = t860 * t976;
t661 = t702 * t979 + t1050;
t597 = t658 * t972 - t661 * t973;
t1161 = t800 * t978;
t696 = t790 * t975 + t1161;
t1232 = t597 * t977 - t696 * t980;
t1231 = t597 * t980 + t696 * t977;
t1226 = pkin(1) * t693 + qJ(2) * t1214;
t1105 = t919 + t1084;
t1148 = t1105 * t978 + t1114;
t1178 = t1148 * t977;
t741 = t1105 * t975 - t1113;
t1179 = t741 * t979;
t1198 = t800 * t976 - t1179;
t1180 = t741 * t976;
t1199 = -t979 * t800 - t1180;
t1208 = t1198 * t973 - t1199 * t972;
t1215 = t1208 * t980 + t1178;
t1230 = pkin(6) * t1215;
t1177 = t1148 * t980;
t1216 = t1208 * t977 - t1177;
t1229 = pkin(6) * t1216;
t987 = t888 - t1042;
t1112 = t987 * t975;
t873 = t919 - t1084;
t1130 = t873 * t978 - t1112;
t1111 = t987 * t978;
t1129 = t873 * t975 + t1111;
t1139 = t1129 * t976 - t797 * t979;
t1140 = t1129 * t979 + t797 * t976;
t619 = t1139 * t972 - t1140 * t973;
t1228 = -t1130 * t980 + t619 * t977;
t1227 = t1130 * t977 + t619 * t980;
t1223 = pkin(7) * t646;
t1222 = pkin(7) * t649;
t1207 = t1198 * t972 + t1199 * t973;
t1221 = qJ(2) * t1207;
t1219 = -pkin(2) * t693 + t1222;
t1186 = pkin(8) * t741;
t1218 = -pkin(1) * t1207 - pkin(2) * t1199 + t1186;
t1185 = pkin(1) * t1148;
t1217 = qJ(2) * t1208 - t1185;
t1213 = t658 * t973 + t661 * t972;
t1212 = t683 * t973 - t687 * t972;
t1211 = pkin(7) * t1199;
t1184 = pkin(2) * t1148;
t1209 = pkin(7) * t1198 - t1184;
t1173 = t1139 * t973 + t1140 * t972;
t1204 = pkin(8) * t693;
t1102 = -t1084 - t1085;
t1124 = t1102 * t975 + t1111;
t1157 = t1124 * t977;
t1123 = t1102 * t978 - t1112;
t1158 = t1123 * t979;
t836 = qJD(4) * t922 + t1009;
t881 = t937 * t922;
t794 = t836 + t881;
t1145 = t794 * t976 + t1158;
t1159 = t1123 * t976;
t1146 = -t979 * t794 + t1159;
t1171 = t1145 * t973 - t1146 * t972;
t1187 = t1171 * t980 + t1157;
t1203 = pkin(6) * t1187;
t1156 = t1124 * t980;
t1188 = t1171 * t977 - t1156;
t1202 = pkin(6) * t1188;
t1197 = pkin(3) * t693 + qJ(5) * t996;
t1170 = t1145 * t972 + t1146 * t973;
t1193 = qJ(2) * t1170;
t1166 = pkin(8) * t1123;
t1192 = -pkin(1) * t1170 - pkin(2) * t1146 - t1166;
t1169 = pkin(1) * t1124;
t1191 = qJ(2) * t1171 - t1169;
t1183 = pkin(3) * t1148;
t1182 = pkin(7) * t1146;
t1181 = pkin(8) * t1148;
t1029 = qJD(5) * t937;
t926 = -0.2e1 * t1029;
t1175 = -qJ(5) * t986 - t1183 + t926;
t1168 = pkin(2) * t1124;
t1174 = pkin(7) * t1145 - t1168;
t1167 = pkin(3) * t1124;
t1165 = pkin(8) * t1124;
t1164 = qJ(5) * t800;
t1160 = qJ(5) * t1104;
t958 = t980 * g(1) + t977 * g(2);
t1149 = -0.2e1 * qJD(2) * qJD(1) + t958;
t1147 = -qJ(5) * t1102 - t1167;
t1039 = t937 * t978;
t869 = t922 * t1039;
t1110 = t975 * t995 - t869;
t1040 = t937 * t975;
t868 = t922 * t1040;
t1031 = -t978 * t995 - t868;
t858 = t979 * t1042;
t1090 = t1031 * t976 - t858;
t857 = t976 * t1042;
t1091 = t1031 * t979 + t857;
t1120 = -t1090 * t972 + t1091 * t973;
t1128 = t980 * t1110 + t1120 * t977;
t1127 = -t1110 * t977 + t1120 * t980;
t1018 = t920 * t1040;
t1006 = t869 + t1018;
t1017 = t920 * t1039;
t1007 = t868 - t1017;
t1047 = t888 * t976;
t1089 = t1007 * t979 + t1047;
t884 = t979 * t888;
t1092 = t1007 * t976 - t884;
t1122 = t1089 * t973 - t1092 * t972;
t1144 = t1006 * t980 + t1122 * t977;
t1143 = -t1006 * t977 + t1122 * t980;
t1000 = t836 * t978 - t1018;
t1001 = t836 * t975 + t1017;
t1093 = t1001 * t976 + t858;
t1094 = t1001 * t979 - t857;
t1118 = -t1093 * t972 + t1094 * t973;
t1142 = t1000 * t980 + t1118 * t977;
t1141 = -t1000 * t977 + t1118 * t980;
t1137 = qJ(6) * t797;
t902 = t947 * t945;
t1100 = -t902 + qJDD(3);
t1135 = t1100 * t976;
t1134 = t1100 * t979;
t981 = qJD(1) ^ 2;
t1131 = -t981 * pkin(1) + qJDD(1) * qJ(2) - t1149;
t957 = g(1) * t977 - t980 * g(2);
t1005 = -qJDD(2) + t957;
t1014 = pkin(2) * t973 + pkin(1);
t969 = t972 ^ 2;
t970 = t973 ^ 2;
t1030 = t969 + t970;
t892 = t1014 * qJDD(1) + (pkin(7) * t1030 + qJ(2)) * t981 + t1005;
t1121 = t1089 * t972 + t1092 * t973;
t1086 = t1090 * t973 + t1091 * t972;
t1119 = t1093 * t973 + t1094 * t972;
t866 = -pkin(5) * t937 - qJ(6) * t922;
t1103 = t922 * t866 + qJDD(6);
t1098 = -pkin(5) * t836 + t1103;
t1096 = t981 * t1030;
t941 = t945 ^ 2;
t942 = t947 ^ 2;
t1083 = 0.2e1 * t922;
t1082 = qJD(3) ^ 2;
t1081 = pkin(4) + pkin(5);
t1080 = pkin(3) * t976;
t1079 = pkin(4) * t978;
t1077 = t973 * g(3);
t1076 = qJDD(1) * pkin(1);
t904 = -g(3) * t972 + t1131 * t973;
t964 = t970 * t981;
t877 = -pkin(2) * t964 + pkin(7) * t1022 + t904;
t984 = -t1077 + (t1014 * t981 + (-pkin(7) - qJ(2)) * qJDD(1) + t1149) * t972;
t805 = t877 * t976 - t979 * t984;
t806 = t979 * t877 + t976 * t984;
t709 = -t805 * t979 + t806 * t976;
t1075 = t709 * t972;
t1074 = t709 * t973;
t889 = pkin(3) * t945 - pkin(8) * t947;
t743 = -qJDD(3) * pkin(3) - t1082 * pkin(8) + t889 * t947 + t805;
t1073 = t743 * t975;
t1072 = t743 * t978;
t1065 = t794 * t978;
t1046 = t892 * t976;
t1045 = t892 * t979;
t893 = qJDD(3) + t902;
t1044 = t893 * t976;
t1043 = t893 * t979;
t939 = qJ(2) * t981 + t1005 + t1076;
t1038 = t939 * t977;
t1037 = t939 * t980;
t1036 = t969 * t981;
t1035 = t972 * t973;
t744 = -pkin(3) * t1082 + qJDD(3) * pkin(8) - t889 * t945 + t806;
t748 = (-t899 + t1027) * pkin(8) + (-t897 + t1026) * pkin(3) - t892;
t654 = t978 * t744 + t975 * t748;
t1028 = qJD(6) * t920;
t1021 = qJDD(1) * t977;
t1020 = qJDD(1) * t980;
t1016 = t977 * t902;
t1015 = t980 * t902;
t1013 = -pkin(3) * t979 - pkin(2);
t1012 = qJ(5) * t975 + pkin(3);
t856 = pkin(4) * t920 - qJ(5) * t922;
t1011 = -pkin(5) * t920 - t856;
t1010 = t939 + t1076;
t653 = t744 * t975 - t978 * t748;
t710 = t805 * t976 + t979 * t806;
t903 = t1131 * t972 + t1077;
t839 = t903 * t972 + t973 * t904;
t916 = -t957 * t977 - t980 * t958;
t956 = -t977 * t981 + t1020;
t1008 = -pkin(6) * t956 - g(3) * t977;
t1004 = pkin(4) * t1084 - t888 * qJ(5) + t920 * t856 - t654;
t594 = -t653 * t978 + t654 * t975;
t595 = t653 * t975 + t654 * t978;
t838 = t903 * t973 - t904 * t972;
t915 = t957 * t980 - t958 * t977;
t955 = t980 * t981 + t1021;
t925 = 0.2e1 * t1029;
t627 = t925 - t1004;
t949 = t973 * t1096;
t912 = t1020 * t973 - t949 * t977;
t999 = t1021 * t973 + t949 * t980;
t998 = -t888 * pkin(4) - qJ(5) * t1084 + qJDD(5) + t653;
t994 = pkin(5) * t1085 - t866 * t937 + t1004;
t993 = t856 * t922 + t998;
t990 = -t888 * pkin(5) - t1137 + t998;
t989 = -qJ(6) * t836 + t994;
t988 = t836 * pkin(4) + t1164 + t743;
t985 = qJD(5) * t1083 - t988;
t586 = (-0.2e1 * qJD(6) - t1011) * t922 + t990;
t632 = (pkin(4) * t937 - 0.2e1 * qJD(5)) * t922 + t988;
t616 = (-t794 - t881) * pkin(4) + t985;
t615 = -pkin(4) * t881 - t1164 + t985;
t963 = t970 * qJDD(1);
t962 = t969 * qJDD(1);
t954 = t964 - t1036;
t953 = t964 + t1036;
t952 = t963 - t962;
t951 = t963 + t962;
t948 = t972 * t1096;
t940 = -pkin(6) * t955 + g(3) * t980;
t929 = -t942 - t1082;
t928 = -t942 + t1082;
t927 = t941 - t1082;
t924 = t956 * t1035;
t923 = t955 * t1035;
t913 = t1021 * t972 + t948 * t980;
t911 = -t1020 * t972 + t948 * t977;
t907 = -0.2e1 * t1028;
t906 = t951 * t980 - t953 * t977;
t905 = t951 * t977 + t953 * t980;
t901 = -t942 + t941;
t898 = t1099 - 0.2e1 * t1027;
t896 = t943 + 0.2e1 * t1026;
t890 = -t1082 - t941;
t883 = (-t945 * t979 + t947 * t976) * qJD(3);
t882 = (-t945 * t976 - t947 * t979) * qJD(3);
t862 = -t941 - t942;
t854 = -t1026 * t976 + t899 * t979;
t853 = t1026 * t979 + t899 * t976;
t852 = t1027 * t979 - t897 * t976;
t851 = t1027 * t976 + t897 * t979;
t848 = -t929 * t976 - t1043;
t847 = -t928 * t976 + t1134;
t846 = t927 * t979 - t1044;
t845 = t929 * t979 - t1044;
t844 = t928 * t979 + t1135;
t843 = t927 * t976 + t1043;
t827 = -t896 * t979 - t898 * t976;
t826 = t1099 * t976 - t943 * t979;
t825 = -t896 * t976 + t898 * t979;
t824 = -t1099 * t979 - t943 * t976;
t823 = t890 * t979 - t1135;
t822 = t890 * t976 + t1134;
t814 = (-t920 * t978 + t922 * t975) * t937;
t811 = (t920 * t975 + t922 * t978) * t937;
t809 = -t882 * t972 + t883 * t973;
t808 = t839 * t980 - t1038;
t807 = t839 * t977 + t1037;
t803 = -pkin(7) * t845 - t1045;
t802 = t1024 * t920 + t1002;
t793 = t836 - t881;
t787 = -pkin(7) * t822 - t1046;
t773 = -t853 * t972 + t854 * t973;
t772 = -t851 * t972 + t852 * t973;
t771 = -t845 * t972 + t848 * t973;
t770 = -t844 * t972 + t847 * t973;
t769 = -t843 * t972 + t846 * t973;
t768 = t845 * t973 + t848 * t972;
t766 = t814 * t979 + t1047;
t763 = t814 * t976 - t884;
t749 = -pkin(2) * t898 + pkin(7) * t848 - t1046;
t745 = -pkin(2) * t896 + pkin(7) * t823 + t1045;
t735 = -t825 * t972 + t827 * t973;
t734 = -t824 * t972 + t826 * t973;
t733 = t824 * t973 + t826 * t972;
t726 = -t822 * t972 + t823 * t973;
t725 = t822 * t973 + t823 * t972;
t724 = t771 * t980 + t898 * t977;
t723 = t771 * t977 - t898 * t980;
t708 = -qJ(5) * t794 + qJ(6) * t987;
t707 = t726 * t980 + t896 * t977;
t706 = t726 * t977 - t896 * t980;
t705 = t734 * t980 + t862 * t977;
t704 = t734 * t977 - t862 * t980;
t700 = t1065 - t1064;
t694 = -t794 * t975 - t1161;
t691 = pkin(2) * t892 + pkin(7) * t710;
t690 = -pkin(1) * t733 - pkin(2) * t824;
t688 = -t793 * t976 + t1154;
t682 = t793 * t979 + t1155;
t676 = -t802 * t976 + t1179;
t673 = t802 * t979 + t1180;
t671 = -pkin(7) * t824 - t709;
t669 = -t763 * t972 + t766 * t973;
t666 = t790 * t976 + t1158;
t663 = -t790 * t979 + t1159;
t660 = t700 * t979 - t1050;
t657 = t700 * t976 + t855;
t655 = -pkin(1) * t768 - pkin(2) * t845 + t806;
t652 = t1072 + t1181;
t645 = -qJ(6) * t986 - t1081 * t800;
t644 = t1073 - t1165;
t643 = -pkin(2) * t862 + pkin(7) * t826 + t710;
t642 = -pkin(1) * t725 - pkin(2) * t822 + t805;
t635 = -qJ(2) * t768 - t749 * t972 + t803 * t973;
t634 = t710 * t973 - t1075;
t633 = t710 * t972 + t1074;
t630 = -qJ(2) * t725 - t745 * t972 + t787 * t973;
t629 = t634 * t980 - t892 * t977;
t628 = t634 * t977 + t892 * t980;
t626 = t654 + t1183;
t625 = pkin(4) * t797 + t1197;
t624 = t653 - t1167;
t623 = t993 + t1160;
t621 = -t682 * t972 + t688 * t973;
t614 = pkin(4) * t1104 + t627;
t612 = -t673 * t972 + t676 * t973;
t609 = t673 * t973 + t676 * t972;
t606 = -t663 * t972 + t666 * t973;
t603 = t663 * t973 + t666 * t972;
t601 = -t1081 * t797 - t1197;
t600 = qJ(6) * t1085 - t1098 + t632;
t598 = -t657 * t972 + t660 * t973;
t596 = -pkin(1) * t633 - pkin(2) * t709;
t587 = t925 - t989 + 0.2e1 * t1028;
t584 = t612 * t980 - t1178;
t581 = t612 * t977 + t1177;
t578 = t606 * t980 + t1157;
t575 = t606 * t977 - t1156;
t573 = -pkin(4) * t987 + t1147 + t993;
t572 = t615 + (t1105 - t1085) * qJ(6) + t1098;
t571 = -qJ(2) * t733 - t643 * t972 + t671 * t973;
t570 = t595 * t979 + t743 * t976;
t569 = t595 * t976 - t743 * t979;
t568 = -pkin(4) * t1105 + t1004 + t1175;
t567 = -qJ(5) * t1065 - t616 * t975 - t1165;
t566 = pkin(4) * t1064 + t615 * t978 - t1181;
t565 = -pkin(7) * t1074 - qJ(2) * t633 - t691 * t972;
t564 = -t594 + t1204;
t563 = qJD(6) * t1083 + t1011 * t922 + t1137 - t1160 - t990;
t556 = t616 + (-t1102 - t1085) * qJ(6) + (-t794 - t836) * pkin(5) + t1103;
t555 = t627 * t978 + t975 * t993;
t554 = t627 * t975 - t978 * t993;
t553 = t907 + t926 - t1081 * t1104 + (-t996 - t836) * qJ(6) + t994;
t552 = -t1081 * t1105 + t1175 + t907 + t989;
t551 = -pkin(7) * t673 - t626 * t976 + t652 * t979;
t550 = -pkin(7) * t663 - t624 * t976 + t644 * t979;
t549 = -t1081 * t987 + t1147 + t586;
t548 = pkin(7) * t676 + t626 * t979 + t652 * t976 + t1184;
t547 = t572 * t978 - t645 * t975 - t1181;
t546 = pkin(7) * t666 + t624 * t979 + t644 * t976 - t1168;
t545 = -t556 * t975 + t708 * t978 - t1165;
t544 = -qJ(5) * t600 - qJ(6) * t586;
t543 = -pkin(1) * t609 - pkin(2) * t673 - pkin(3) * t802 - t1073 - t1186;
t542 = -pkin(1) * t603 - pkin(2) * t663 + pkin(3) * t790 + t1072 - t1166;
t541 = -t614 * t975 + t623 * t978 + t1204;
t540 = t555 * t979 + t632 * t976;
t539 = t555 * t976 - t632 * t979;
t538 = t586 * t975 + t587 * t978;
t537 = -t586 * t978 + t587 * t975;
t536 = -t1080 * t693 + t564 * t979 + t1223;
t535 = -t569 * t972 + t570 * t973;
t534 = t569 * t973 + t570 * t972;
t533 = -t1013 * t693 + t564 * t976 - t1222;
t532 = -pkin(8) * t554 + (pkin(4) * t975 - qJ(5) * t978) * t632;
t531 = t1012 * t794 - t616 * t978 + t1192;
t530 = -t615 * t975 - (-pkin(3) - t1079) * t800 + t1218;
t529 = -pkin(3) * t554 + pkin(4) * t993 - qJ(5) * t627;
t528 = -qJ(6) * t587 - t1081 * t600;
t527 = t567 * t979 - t573 * t976 - t1182;
t526 = t566 * t979 - t568 * t976 - t1211;
t525 = t1235 - t595;
t524 = t538 * t979 + t600 * t976;
t523 = t538 * t976 - t600 * t979;
t522 = t567 * t976 + t573 * t979 + t1174;
t521 = -t553 * t975 + t563 * t978 - t1204;
t520 = -pkin(7) * t569 + (-pkin(8) * t979 + t1080) * t594;
t519 = t566 * t976 + t568 * t979 + t1209;
t518 = t541 * t979 - t625 * t976 + t1223;
t517 = pkin(3) * t800 - t572 * t975 - t645 * t978 + t1218;
t516 = t535 * t980 + t594 * t977;
t515 = t535 * t977 - t594 * t980;
t514 = pkin(3) * t794 - t556 * t978 - t708 * t975 + t1192;
t513 = t541 * t976 + t625 * t979 - t1219;
t512 = -t614 * t978 - t623 * t975 + t1235;
t511 = t547 * t979 - t552 * t976 - t1211;
t510 = t545 * t979 - t549 * t976 - t1182;
t509 = pkin(7) * t570 + (-pkin(8) * t976 + t1013) * t594;
t508 = -t539 * t972 + t540 * t973;
t507 = t539 * t973 + t540 * t972;
t506 = t547 * t976 + t552 * t979 + t1209;
t505 = t545 * t976 + t549 * t979 + t1174;
t504 = -qJ(2) * t609 - t548 * t972 + t551 * t973;
t503 = -qJ(2) * t603 - t546 * t972 + t550 * t973;
t502 = t521 * t979 - t601 * t976 - t1223;
t501 = -t553 * t978 - t563 * t975 - t1235;
t500 = -pkin(1) * t534 - pkin(2) * t569 + pkin(3) * t743 - pkin(8) * t595;
t499 = t521 * t976 + t601 * t979 + t1219;
t498 = -pkin(3) * t537 - qJ(5) * t587 + t1081 * t586;
t497 = t508 * t980 + t554 * t977;
t496 = t508 * t977 - t554 * t980;
t495 = -t533 * t972 + t536 * t973 + t1236;
t494 = -t523 * t972 + t524 * t973;
t493 = t523 * t973 + t524 * t972;
t492 = -t522 * t972 + t527 * t973 - t1193;
t491 = -pkin(8) * t537 - t528 * t975 + t544 * t978;
t490 = -t519 * t972 + t526 * t973 - t1221;
t489 = -pkin(7) * t539 - t529 * t976 + t532 * t979;
t488 = -t513 * t972 + t518 * t973 + t1236;
t487 = t494 * t980 + t537 * t977;
t486 = t494 * t977 - t537 * t980;
t485 = -t506 * t972 + t511 * t973 - t1221;
t484 = -pkin(2) * t554 + pkin(7) * t540 + t529 * t979 + t532 * t976;
t483 = -t505 * t972 + t510 * t973 - t1193;
t482 = -pkin(1) * t507 - pkin(2) * t539 - pkin(8) * t555 + (t1012 + t1079) * t632;
t481 = -qJ(2) * t534 - t509 * t972 + t520 * t973;
t480 = -t499 * t972 + t502 * t973 - t1236;
t479 = -pkin(7) * t523 + t491 * t979 - t498 * t976;
t478 = -pkin(1) * t493 - pkin(2) * t523 + pkin(3) * t600 - pkin(8) * t538 - t528 * t978 - t544 * t975;
t477 = -pkin(2) * t537 + pkin(7) * t524 + t491 * t976 + t498 * t979;
t476 = -qJ(2) * t507 - t484 * t972 + t489 * t973;
t475 = -qJ(2) * t493 - t477 * t972 + t479 * t973;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t955, -t956, 0, t916, 0, 0, 0, 0, 0, 0, -t999, t913, t906, t808, 0, 0, 0, 0, 0, 0, t707, t724, t705, t629, 0, 0, 0, 0, 0, 0, t578, t584, t1224, t516, 0, 0, 0, 0, 0, 0, t1187, t1224, t1215, t497, 0, 0, 0, 0, 0, 0, t1187, t1215, -t1224, t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t956, -t955, 0, t915, 0, 0, 0, 0, 0, 0, t912, t911, t905, t807, 0, 0, 0, 0, 0, 0, t706, t723, t704, t628, 0, 0, 0, 0, 0, 0, t575, t581, t1225, t515, 0, 0, 0, 0, 0, 0, t1188, t1225, t1216, t496, 0, 0, 0, 0, 0, 0, t1188, t1216, -t1225, t486; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t838, 0, 0, 0, 0, 0, 0, t725, t768, t733, t633, 0, 0, 0, 0, 0, 0, t603, t609, -t588, t534, 0, 0, 0, 0, 0, 0, t1170, -t588, t1207, t507, 0, 0, 0, 0, 0, 0, t1170, t1207, t588, t493; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t956, 0, -t955, 0, t1008, -t940, -t915, -pkin(6) * t915, t924, t952 * t980 - t954 * t977, t913, -t924, t999, 0, -pkin(6) * t912 - t1037 * t972 - t903 * t977, -pkin(6) * t911 - t1037 * t973 - t904 * t977, -pkin(6) * t905 + t838 * t980, -pkin(6) * t807 - (pkin(1) * t977 - qJ(2) * t980) * t838, t773 * t980 + t1016, t735 * t980 - t901 * t977, t1099 * t977 + t770 * t980, t772 * t980 - t1016, t769 * t980 - t943 * t977, qJDD(3) * t977 + t809 * t980, -pkin(6) * t706 + t630 * t980 - t642 * t977, -pkin(6) * t723 + t635 * t980 - t655 * t977, -pkin(6) * t704 + t571 * t980 - t690 * t977, -pkin(6) * t628 + t565 * t980 - t596 * t977, t1127, -t1231, -t1227, t1141, -t1233, t1143, -pkin(6) * t575 + t503 * t980 - t542 * t977, -pkin(6) * t581 + t504 * t980 - t543 * t977, t495 * t980 - t525 * t977 - t1237, -pkin(6) * t515 + t481 * t980 - t500 * t977, t1127, -t1227, t1231, t1143, t1233, t1141, t492 * t980 - t531 * t977 - t1202, t488 * t980 - t512 * t977 - t1237, t490 * t980 - t530 * t977 - t1229, -pkin(6) * t496 + t476 * t980 - t482 * t977, t1127, t598 * t980 - t694 * t977, t1227, t1141, t621 * t980 + t1153, t669 * t980 - t811 * t977, t483 * t980 - t514 * t977 - t1202, t485 * t980 - t517 * t977 - t1229, t480 * t980 - t501 * t977 + t1237, -pkin(6) * t486 + t475 * t980 - t478 * t977; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t955, 0, t956, 0, t940, t1008, t916, pkin(6) * t916, t923, t952 * t977 + t954 * t980, t911, -t923, -t912, 0, -pkin(6) * t999 - t1038 * t972 + t903 * t980, pkin(6) * t913 - t1038 * t973 + t904 * t980, pkin(6) * t906 + t838 * t977, pkin(6) * t808 - (-pkin(1) * t980 - qJ(2) * t977) * t838, t773 * t977 - t1015, t735 * t977 + t901 * t980, -t1099 * t980 + t770 * t977, t772 * t977 + t1015, t769 * t977 + t943 * t980, -qJDD(3) * t980 + t809 * t977, pkin(6) * t707 + t630 * t977 + t642 * t980, pkin(6) * t724 + t635 * t977 + t655 * t980, pkin(6) * t705 + t571 * t977 + t690 * t980, pkin(6) * t629 + t565 * t977 + t596 * t980, t1128, -t1232, -t1228, t1142, -t1234, t1144, pkin(6) * t578 + t503 * t977 + t542 * t980, pkin(6) * t584 + t504 * t977 + t543 * t980, t495 * t977 + t525 * t980 + t1238, pkin(6) * t516 + t481 * t977 + t500 * t980, t1128, -t1228, t1232, t1144, t1234, t1142, t492 * t977 + t531 * t980 + t1203, t488 * t977 + t512 * t980 + t1238, t490 * t977 + t530 * t980 + t1230, pkin(6) * t497 + t476 * t977 + t482 * t980, t1128, t598 * t977 + t694 * t980, t1228, t1142, t621 * t977 - t1152, t669 * t977 + t811 * t980, t483 * t977 + t514 * t980 + t1203, t485 * t977 + t517 * t980 + t1230, t480 * t977 + t501 * t980 - t1238, pkin(6) * t487 + t475 * t977 + t478 * t980; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t957, t958, 0, 0, t962, 0.2e1 * t972 * t1022, 0, t963, 0, 0, -qJ(2) * t949 + t1010 * t973, qJ(2) * t948 - t1010 * t972, pkin(1) * t953 + qJ(2) * t951 + t839, pkin(1) * t939 + qJ(2) * t839, t853 * t973 + t854 * t972, t825 * t973 + t827 * t972, t844 * t973 + t847 * t972, t851 * t973 + t852 * t972, t843 * t973 + t846 * t972, t882 * t973 + t883 * t972, -pkin(1) * t896 + qJ(2) * t726 + t745 * t973 + t787 * t972, -pkin(1) * t898 + qJ(2) * t771 + t749 * t973 + t803 * t972, -pkin(1) * t862 + qJ(2) * t734 + t643 * t973 + t671 * t972, pkin(1) * t892 - pkin(7) * t1075 + qJ(2) * t634 + t691 * t973, t1086, t1213, t1173, t1119, t1212, t1121, qJ(2) * t606 + t546 * t973 + t550 * t972 - t1169, qJ(2) * t612 + t548 * t973 + t551 * t972 + t1185, t533 * t973 + t536 * t972 + t1226, -pkin(1) * t594 + qJ(2) * t535 + t509 * t973 + t520 * t972, t1086, t1173, -t1213, t1121, -t1212, t1119, t522 * t973 + t527 * t972 + t1191, t513 * t973 + t518 * t972 + t1226, t519 * t973 + t526 * t972 + t1217, -pkin(1) * t554 + qJ(2) * t508 + t484 * t973 + t489 * t972, t1086, t657 * t973 + t660 * t972, -t1173, t1119, t682 * t973 + t688 * t972, t763 * t973 + t766 * t972, t505 * t973 + t510 * t972 + t1191, t506 * t973 + t511 * t972 + t1217, t499 * t973 + t502 * t972 - t1226, -pkin(1) * t537 + qJ(2) * t494 + t477 * t973 + t479 * t972;];
tauB_reg  = t1;
