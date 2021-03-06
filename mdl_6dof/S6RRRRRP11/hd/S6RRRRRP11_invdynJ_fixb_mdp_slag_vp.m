% Calculate vector of inverse dynamics joint torques for
% S6RRRRRP11
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5]';
% MDP [33x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRRP11_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 02:58
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRRRRP11_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1),zeros(33,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP11_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP11_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP11_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP11_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRP11_invdynJ_fixb_mdp_slag_vp: pkin has to be [12x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [33 1]), ...
  'S6RRRRRP11_invdynJ_fixb_mdp_slag_vp: MDP has to be [33x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 02:54:40
% EndTime: 2019-03-10 02:55:42
% DurationCPUTime: 47.16s
% Computational Cost: add. (27979->977), mult. (79732->1327), div. (0->0), fcn. (67254->14), ass. (0->387)
t1004 = sin(pkin(7));
t1245 = cos(qJ(3));
t1164 = t1245 * qJD(3);
t1128 = t1004 * t1164;
t1005 = sin(pkin(6));
t1010 = sin(qJ(2));
t1013 = cos(qJ(2));
t1009 = sin(qJ(3));
t1232 = cos(pkin(7));
t1150 = t1009 * t1232;
t1055 = -t1010 * t1150 + t1013 * t1245;
t930 = t1055 * t1005;
t916 = qJD(1) * t930;
t1289 = t1128 - t916;
t1124 = t1232 * t1245;
t1186 = t1004 * t1009;
t1085 = pkin(2) * t1124 - pkin(10) * t1186;
t1091 = t1005 * (-pkin(10) * t1232 - pkin(9));
t1067 = t1010 * t1091;
t1233 = cos(pkin(6));
t1169 = pkin(1) * t1233;
t995 = t1013 * t1169;
t986 = qJD(1) * t995;
t897 = qJD(1) * t1067 + t986;
t994 = t1010 * t1169;
t1034 = t1013 * t1091 - t994;
t898 = t1034 * qJD(1);
t1235 = pkin(10) * t1004;
t1093 = pkin(2) * t1010 - t1013 * t1235;
t1066 = t1093 * t1005;
t934 = qJD(1) * t1066;
t1288 = t1085 * qJD(3) - t898 * t1150 - t934 * t1186 - t1245 * t897;
t825 = -t1004 * t898 + t1232 * t934;
t1053 = t1009 * t1013 + t1010 * t1124;
t929 = t1053 * t1005;
t915 = qJD(1) * t929;
t1287 = pkin(3) * t915 - pkin(11) * t916 + t825 - (pkin(3) * t1009 - pkin(11) * t1245) * t1004 * qJD(3);
t1184 = t1005 * t1010;
t1156 = t1004 * t1184;
t1123 = qJD(1) * t1156;
t1286 = pkin(11) * t1123 - t1288;
t1044 = t1053 * qJD(2);
t1149 = t1013 * t1232;
t1054 = t1009 * t1149 + t1010 * t1245;
t1023 = qJD(3) * t1054 + t1044;
t1176 = qJDD(1) * t1010;
t1141 = t1009 * t1176;
t1020 = (qJD(1) * t1023 + t1141) * t1005;
t1147 = t1233 * qJD(1);
t1104 = t1147 + qJD(2);
t1073 = t1004 * t1104;
t1065 = t1009 * t1073;
t1139 = t1233 * qJDD(1);
t1100 = t1139 + qJDD(2);
t1068 = t1100 * t1004;
t1097 = t1013 * t1124;
t1086 = t1005 * t1097;
t1208 = -qJDD(1) * t1086 - t1245 * t1068;
t1038 = qJD(3) * t1065 + t1208;
t780 = t1020 + t1038;
t1285 = -qJDD(4) - t780;
t1012 = cos(qJ(4));
t1008 = sin(qJ(4));
t1120 = t1008 * t1156;
t946 = t1008 * t1186 - t1012 * t1232;
t1261 = -qJD(1) * t1120 - qJD(4) * t946 + t1012 * t1289;
t1117 = t1012 * t1156;
t1185 = t1004 * t1012;
t947 = t1008 * t1232 + t1009 * t1185;
t1214 = qJD(1) * t1117 + qJD(4) * t947 + t1008 * t1289;
t1166 = t1004 * t1245;
t1206 = pkin(2) * t1150 + pkin(10) * t1166;
t1284 = t1206 * qJD(3) - t1009 * t897 + t1124 * t898;
t1158 = qJD(3) * t1186;
t1259 = -t915 + t1158;
t1007 = sin(qJ(5));
t1011 = cos(qJ(5));
t1014 = cos(qJ(1));
t1148 = t1014 * t1233;
t1244 = sin(qJ(1));
t1090 = t1244 * t1010 - t1013 * t1148;
t1151 = t1005 * t1232;
t1248 = t1004 * t1090 - t1014 * t1151;
t1182 = t1005 * t1014;
t1278 = t1004 * t1182 + t1090 * t1232;
t948 = t1010 * t1148 + t1013 * t1244;
t841 = t1009 * t1278 - t1245 * t948;
t789 = -t1008 * t1248 + t841 * t1012;
t838 = t948 * t1009 + t1245 * t1278;
t1283 = t1007 * t789 + t1011 * t838;
t1201 = t1007 * t838;
t1282 = t1011 * t789 - t1201;
t1161 = qJD(1) * t1184;
t1262 = -(-pkin(3) * t1161 - t1245 * t934) * t1004 + t1284;
t1179 = t1009 * t1010;
t1152 = t1005 * t1179;
t1122 = qJD(1) * t1152;
t1207 = -qJD(1) * t1086 - t1245 * t1073;
t863 = t1122 + t1207;
t1062 = qJD(4) + t863;
t1192 = qJD(4) * t1012;
t1193 = qJD(4) * t1008;
t938 = pkin(11) * t1232 + t1206;
t939 = (-pkin(3) * t1245 - pkin(11) * t1009 - pkin(2)) * t1004;
t1281 = t1008 * t1287 + t1286 * t1012 - t939 * t1192 + t1193 * t938;
t1277 = -pkin(12) * t1259 + t1281;
t1280 = -t1214 * pkin(4) + pkin(12) * t1261 - t1262;
t788 = t1008 * t841 + t1012 * t1248;
t1183 = t1005 * t1013;
t1061 = pkin(9) * t1183 + t994;
t1109 = t1005 * t1149;
t859 = t1061 * qJD(1) + (qJD(1) * t1109 + t1073) * pkin(10);
t1040 = pkin(2) * t1233 + t1067;
t862 = qJD(2) * pkin(2) + qJD(1) * t1040 + t986;
t1092 = pkin(2) * t1013 + t1010 * t1235;
t1087 = -pkin(1) - t1092;
t923 = t1087 * t1005;
t911 = qJD(1) * t923;
t763 = t862 * t1150 + t911 * t1186 + t1245 * t859;
t1276 = t763 - t1062 * (pkin(4) * t1008 - pkin(12) * t1012);
t903 = t1007 * t947 + t1011 * t1166;
t1218 = qJD(5) * t903 - t1007 * t1259 - t1011 * t1261;
t1127 = t1007 * t1166;
t1190 = qJD(5) * t1011;
t1217 = -qJD(5) * t1127 + t1007 * t1261 - t1011 * t1259 + t1190 * t947;
t1033 = -qJDD(4) - t1038;
t1275 = t1020 - t1033;
t1001 = t1005 ^ 2;
t1273 = 0.2e1 * pkin(1) * t1001;
t1272 = t1280 * t1011;
t1099 = qJD(3) * t1124;
t1195 = qJD(3) * t1009;
t1196 = qJD(1) * qJD(2);
t1153 = t1005 * t1196;
t1119 = t1010 * t1153;
t1129 = pkin(1) * t1139;
t1174 = t1013 * qJDD(1);
t1142 = t1005 * t1174;
t978 = t986 * qJD(2);
t1170 = pkin(9) * t1142 + t1010 * t1129 + t978;
t1059 = -pkin(9) * t1119 + t1170;
t1140 = qJDD(1) * t1232;
t1107 = t1013 * t1140;
t1145 = t1232 * qJD(2);
t1114 = qJD(1) * t1145;
t804 = (t1068 + (-t1010 * t1114 + t1107) * t1005) * pkin(10) + t1059;
t1071 = -t1013 * t1196 - t1176;
t1063 = t1071 * pkin(9);
t1064 = t1013 * t1129 - t1196 * t994;
t810 = t1100 * pkin(2) + ((-t1010 * t1140 - t1013 * t1114) * pkin(10) + t1063) * t1005 + t1064;
t844 = (qJDD(1) * t1087 + t1093 * t1196) * t1005;
t1058 = -t862 * t1099 - t911 * t1128 - t810 * t1150 - t844 * t1186 + t1195 * t859 - t1245 * t804;
t871 = t1100 * t1232 + qJDD(3) + (t1119 - t1142) * t1004;
t689 = pkin(11) * t871 - t1058;
t752 = -t1004 * t810 + t1232 * t844;
t1143 = t1005 * t1176;
t1266 = t1013 * t1153 + t1143;
t779 = -t1145 * t1122 + t1266 * t1245 + (t1005 * t1107 + t1068) * t1009 - t863 * qJD(3);
t695 = pkin(3) * t780 - pkin(11) * t779 + t752;
t809 = -t1004 * t862 + t1232 * t911;
t1045 = t1054 * t1005;
t865 = qJD(1) * t1045 + t1065;
t739 = pkin(3) * t863 - pkin(11) * t865 + t809;
t1155 = t1004 * t1183;
t1043 = qJD(1) * t1155 - t1104 * t1232 - qJD(3);
t745 = -pkin(11) * t1043 + t763;
t1130 = t1008 * t689 - t1012 * t695 + t745 * t1192 + t739 * t1193;
t657 = -pkin(4) * t1275 + t1130;
t1101 = t1008 * t871 + t1012 * t779;
t813 = t1008 * t865 + t1012 * t1043;
t1021 = -qJD(4) * t813 + t1101;
t1049 = t1007 * t1062;
t815 = -t1008 * t1043 + t1012 * t865;
t684 = qJD(5) * t1049 + t1007 * t1021 + t1011 * t1285 + t1190 * t815;
t654 = t684 * pkin(5) + qJDD(6) + t657;
t1191 = qJD(5) * t1007;
t937 = -pkin(3) * t1232 - t1085;
t834 = t946 * pkin(4) - t947 * pkin(12) + t937;
t1213 = t1008 * t939 + t1012 * t938;
t837 = -pkin(12) * t1166 + t1213;
t1268 = t1280 * t1007 + t1011 * t1277 - t834 * t1190 + t1191 * t837;
t1267 = t1286 * t1008 - t1012 * t1287 - t938 * t1192 - t939 * t1193;
t1000 = pkin(5) * t1011 + pkin(4);
t1189 = t1000 * t1012;
t1265 = -pkin(3) - t1189;
t1236 = pkin(5) * t1007;
t1167 = pkin(11) + t1236;
t1215 = t1007 * t834 + t1011 * t837;
t904 = t1011 * t947 - t1127;
t1264 = t1214 * pkin(5) + t1218 * qJ(6) - qJD(5) * t1215 - qJD(6) * t904 + t1007 * t1277 - t1272;
t1263 = -qJ(6) * t1217 - qJD(6) * t903 - t1268;
t1220 = -pkin(4) * t1259 - t1267;
t1173 = pkin(11) * t1193;
t1260 = t1007 * t1173 - t1011 * t1276;
t1125 = t1233 * t1244;
t1056 = t1014 * t1010 + t1013 * t1125;
t1165 = t1005 * t1244;
t1256 = -t1004 * t1165 + t1056 * t1232;
t1255 = (qJDD(2) + 0.2e1 * t1139) * t1005;
t1197 = t1012 * t863;
t1254 = t1192 + t1197;
t1199 = t1008 * t863;
t1253 = t1193 + t1199;
t762 = -t1009 * t859 + t1124 * t862 + t1166 * t911;
t797 = pkin(3) * t865 + pkin(11) * t863;
t1223 = t1008 * t797 + t1012 * t762;
t714 = pkin(12) * t865 + t1223;
t977 = -pkin(4) * t1012 - pkin(12) * t1008 - pkin(3);
t1252 = t1007 * t1276 + t1011 * t714 - t977 * t1190;
t1162 = qJDD(4) + t1208;
t1250 = qJD(3) * t865 + t1005 * (qJD(1) * t1044 + t1141) + t1162;
t949 = -t1010 * t1125 + t1013 * t1014;
t842 = t1009 * t949 + t1245 * t1256;
t1146 = t1233 * t1004;
t1098 = t1245 * t1146;
t891 = -t1086 - t1098 + t1152;
t1081 = g(1) * t842 + g(2) * t838 + g(3) * t891;
t1027 = -t1004 * t1056 - t1151 * t1244;
t843 = -t1009 * t1256 + t949 * t1245;
t791 = -t1008 * t1027 + t843 * t1012;
t742 = -t1007 * t791 + t1011 * t842;
t1110 = t1009 * t1146;
t892 = t1110 + t1045;
t945 = -t1232 * t1233 + t1155;
t833 = -t1008 * t945 + t1012 * t892;
t784 = t1007 * t833 - t891 * t1011;
t1249 = -g(1) * t742 - g(2) * t1283 + g(3) * t784;
t1144 = t1232 * qJD(3);
t1113 = t1009 * t1144;
t1094 = t1009 * t804 + t862 * t1113 - t810 * t1124 + t911 * t1158 + t859 * t1164 - t844 * t1166;
t690 = -t871 * pkin(3) + t1094;
t1247 = -t690 + t1081;
t769 = t1011 * t815 + t1049;
t1246 = t769 ^ 2;
t1015 = qJD(1) ^ 2;
t1006 = -qJ(6) - pkin(12);
t1234 = pkin(11) * t1012;
t1231 = qJ(6) * t813;
t1048 = t1011 * t1062;
t767 = t1007 * t815 - t1048;
t812 = qJD(5) + t813;
t1230 = t767 * t812;
t1229 = t769 * t812;
t700 = t1008 * t739 + t1012 * t745;
t694 = pkin(12) * t1062 + t700;
t744 = pkin(3) * t1043 - t762;
t705 = t813 * pkin(4) - t815 * pkin(12) + t744;
t670 = -t1007 * t694 + t1011 * t705;
t664 = -qJ(6) * t769 + t670;
t660 = pkin(5) * t812 + t664;
t1228 = -t664 + t660;
t699 = -t1008 * t745 + t1012 * t739;
t749 = pkin(4) * t815 + pkin(12) * t813;
t1227 = t1007 * t749 + t1011 * t699;
t1116 = pkin(3) * t891 - pkin(11) * t892;
t896 = t995 + t1040;
t821 = -t1004 * t896 + t1232 * t923;
t758 = t1116 + t821;
t881 = (t1109 + t1146) * pkin(10) + t1061;
t1172 = t896 * t1150 + t923 * t1186 + t1245 * t881;
t765 = -pkin(11) * t945 + t1172;
t1222 = t1008 * t758 + t1012 * t765;
t708 = pkin(12) * t891 + t1222;
t1037 = -t1009 * t881 + t1124 * t896 + t1166 * t923;
t764 = t945 * pkin(3) - t1037;
t832 = t1008 * t892 + t945 * t1012;
t718 = t832 * pkin(4) - t833 * pkin(12) + t764;
t1226 = t1007 * t718 + t1011 * t708;
t1178 = t1011 * t1012;
t1180 = t1008 * t1011;
t793 = t1007 * t865 - t1178 * t863;
t996 = pkin(11) * t1178;
t1219 = pkin(5) * t1199 + qJ(6) * t793 + t1007 * t714 - qJD(6) * t1180 + (pkin(5) * t1008 - qJ(6) * t1178) * qJD(4) + (-t996 + (qJ(6) * t1008 - t977) * t1007) * qJD(5) + t1260;
t792 = -t1007 * t1197 - t1011 * t865;
t1216 = qJ(6) * t792 + (-pkin(11) * qJD(4) - qJ(6) * qJD(5)) * t1180 + (-qJD(6) * t1008 + (-pkin(11) * qJD(5) - qJ(6) * qJD(4)) * t1012) * t1007 - t1252;
t979 = t1006 * t1007;
t1212 = qJD(5) * t979 + qJD(6) * t1011 - t1007 * t1231 - t1227;
t748 = t1011 * t749;
t1211 = -pkin(5) * t815 + t1006 * t1190 - t1011 * t1231 - t748 + (-qJD(6) + t699) * t1007;
t1205 = t1007 * t977 + t996;
t1204 = qJD(5) * t812;
t683 = -qJD(5) * t1048 + t1007 * t1285 - t1011 * t1021 + t1191 * t815;
t1203 = t1007 * t683;
t1136 = t1008 * t779 - t1012 * t871;
t721 = t815 * qJD(4) + t1136;
t720 = qJDD(5) + t721;
t1202 = t1007 * t720;
t1200 = t1007 * t842;
t1198 = t1011 * t720;
t1131 = t1011 * t812;
t1194 = qJD(4) * t1007;
t1188 = t1001 * t1015;
t1187 = t1004 * t1008;
t1181 = t1007 * t1008;
t1002 = t1010 ^ 2;
t1177 = -t1013 ^ 2 + t1002;
t1168 = qJD(4) + t1207;
t1163 = qJD(4) * t1131;
t1160 = qJD(2) * t1184;
t1159 = t1010 * t1196;
t1157 = t1013 * t1188;
t900 = t1034 * qJD(2);
t935 = qJD(2) * t1066;
t826 = -t1004 * t900 + t1232 * t935;
t1138 = -t1007 * t708 + t1011 * t718;
t1137 = -t1007 * t837 + t1011 * t834;
t1135 = -t1008 * t762 + t1012 * t797;
t1134 = -t1008 * t765 + t1012 * t758;
t1132 = -t1008 * t938 + t1012 * t939;
t1121 = qJD(2) * t1156;
t790 = t1008 * t843 + t1012 * t1027;
t1115 = g(1) * t788 + g(2) * t790;
t1112 = t1005 * t1015 * t1233;
t836 = pkin(4) * t1166 - t1132;
t1103 = 0.2e1 * t1147 + qJD(2);
t671 = t1007 * t705 + t1011 * t694;
t785 = t1007 * t891 + t1011 * t833;
t987 = qJD(2) * t995;
t899 = qJD(2) * t1067 + t987;
t1057 = t896 * t1099 + t923 * t1128 + t900 * t1150 + t935 * t1186 - t1195 * t881 + t1245 * t899;
t724 = pkin(11) * t1121 + t1057;
t823 = qJD(3) * t1110 + t1005 * t1023;
t824 = qJD(3) * t1098 + ((t1097 - t1179) * qJD(3) + t1055 * qJD(2)) * t1005;
t733 = pkin(3) * t823 - pkin(11) * t824 + t826;
t1096 = -t1008 * t724 + t1012 * t733 - t765 * t1192 - t758 * t1193;
t713 = -pkin(4) * t865 - t1135;
t707 = -pkin(4) * t891 - t1134;
t693 = -pkin(4) * t1062 - t699;
t1089 = -pkin(12) * t720 + t693 * t812;
t1084 = g(1) * t790 - g(2) * t788 + g(3) * t832;
t1083 = -g(1) * t791 + g(2) * t789 - g(3) * t833;
t856 = -t1090 * t1245 - t1150 * t948;
t816 = t1008 * t856 - t1185 * t948;
t858 = -t1056 * t1245 - t1150 * t949;
t818 = t1008 * t858 - t1185 * t949;
t866 = t1008 * t930 - t1117;
t1082 = -g(1) * t818 - g(2) * t816 - g(3) * t866;
t1080 = g(1) * t843 - g(2) * t841 + g(3) * t892;
t1079 = -t1008 * t695 - t1012 * t689 - t739 * t1192 + t1193 * t745;
t1078 = t1008 * t733 + t1012 * t724 + t758 * t1192 - t1193 * t765;
t656 = pkin(12) * t1275 - t1079;
t663 = t721 * pkin(4) - pkin(12) * t1021 + t690;
t1076 = -t1007 * t663 - t1011 * t656 - t705 * t1190 + t1191 * t694;
t667 = pkin(12) * t823 + t1078;
t1047 = -t1009 * t899 - t896 * t1113 + t1124 * t900 - t923 * t1158 - t881 * t1164;
t725 = (-pkin(3) * t1160 - t1245 * t935) * t1004 - t1047;
t750 = -qJD(2) * t1117 + qJD(4) * t833 + t1008 * t824;
t751 = qJD(2) * t1120 - qJD(4) * t832 + t1012 * t824;
t681 = t750 * pkin(4) - t751 * pkin(12) + t725;
t1075 = t1007 * t681 + t1011 * t667 + t718 * t1190 - t1191 * t708;
t1072 = t1013 * (t1144 + qJD(2));
t1070 = t1100 * MDP(8);
t668 = -pkin(4) * t823 - t1096;
t1050 = qJD(4) * t1062;
t1046 = pkin(11) * t1204 - t1081;
t1042 = pkin(12) * t1204 - t1084 + t657;
t651 = -qJD(5) * t671 - t1007 * t656 + t1011 * t663;
t1041 = -qJD(5) * t1226 - t1007 * t667 + t1011 * t681;
t1039 = t1010 * (qJD(2) * t1124 + t1164);
t1035 = qJD(3) * t1043;
t1030 = t1104 * t1061;
t1029 = t1043 * t1156;
t1024 = t1062 * t863 + t1050;
t980 = t1006 * t1011;
t964 = t1011 * t977;
t906 = -qJ(6) * t1181 + t1205;
t890 = -qJ(6) * t1180 + t964 + (-pkin(11) * t1007 - pkin(5)) * t1012;
t867 = t1012 * t930 + t1120;
t857 = -t1009 * t1056 + t1124 * t949;
t855 = -t1009 * t1090 + t1124 * t948;
t819 = t1012 * t858 + t1187 * t949;
t817 = t1012 * t856 + t1187 * t948;
t766 = t767 ^ 2;
t746 = -qJ(6) * t903 + t1215;
t743 = t1011 * t791 + t1200;
t734 = pkin(5) * t946 - qJ(6) * t904 + t1137;
t702 = -qJD(5) * t784 + t1007 * t823 + t1011 * t751;
t701 = qJD(5) * t785 + t1007 * t751 - t823 * t1011;
t682 = t767 * pkin(5) + qJD(6) + t693;
t672 = -qJ(6) * t784 + t1226;
t669 = pkin(5) * t832 - qJ(6) * t785 + t1138;
t665 = -qJ(6) * t767 + t671;
t653 = -qJ(6) * t701 - qJD(6) * t784 + t1075;
t652 = pkin(5) * t750 - qJ(6) * t702 - qJD(6) * t785 + t1041;
t649 = -qJ(6) * t684 - qJD(6) * t767 - t1076;
t648 = pkin(5) * t720 + qJ(6) * t683 - qJD(6) * t769 + t651;
t1 = [(-qJD(2) * t1029 - t871 * t945) * MDP(15) + (0.2e1 * (t1010 * t1174 - t1177 * t1196) * MDP(5) + (qJDD(1) * t1002 + 0.2e1 * t1013 * t1159) * MDP(4)) * t1001 + (-g(1) * t838 + g(2) * t842 + t1043 * t1057 - t1058 * t945 - t1121 * t763 - t1172 * t871 + t752 * t892 + t821 * t779 + t809 * t824 + t826 * t865) * MDP(17) + (t649 * t672 + t665 * t653 + t648 * t669 + t660 * t652 + t654 * (pkin(5) * t784 + t707) + t682 * (pkin(5) * t701 + t668) - g(1) * (-pkin(1) * t1244 - t948 * pkin(2) + t841 * pkin(3) - pkin(5) * t1201 + pkin(9) * t1182 - pkin(11) * t838 + t789 * t1000 - t788 * t1006) - g(2) * (t1014 * pkin(1) + t949 * pkin(2) + t843 * pkin(3) + pkin(5) * t1200 + pkin(9) * t1165 + t842 * pkin(11) + t791 * t1000 - t790 * t1006) + (g(1) * t1248 + g(2) * t1027) * pkin(10)) * MDP(33) + (-(t1166 * t935 + t1047) * t1043 + t1037 * t871 + t1094 * t945 + t762 * t1121 + t826 * t863 + t821 * t780 + t752 * t891 + t809 * t823 - g(1) * t841 - g(2) * t843) * MDP(16) + (t1021 * t833 + t815 * t751) * MDP(18) + (-t1021 * t832 - t833 * t721 - t815 * t750 - t751 * t813) * MDP(19) + (qJD(2) * t1103 * t1183 + t1010 * t1255) * MDP(6) + (t1013 * t1255 - t1103 * t1160) * MDP(7) + (g(1) * t1244 - g(2) * t1014) * MDP(2) + (g(1) * t1014 + g(2) * t1244) * MDP(3) + (-g(1) * t1282 - g(2) * t743 + t1041 * t812 + t1138 * t720 + t651 * t832 + t657 * t784 + t668 * t767 + t670 * t750 + t707 * t684 + t693 * t701) * MDP(30) + (g(1) * t1283 - g(2) * t742 - t1075 * t812 + t1076 * t832 - t1226 * t720 + t657 * t785 + t668 * t769 - t671 * t750 - t707 * t683 + t693 * t702) * MDP(31) + (-t683 * t785 + t702 * t769) * MDP(25) + (t683 * t784 - t684 * t785 - t701 * t769 - t702 * t767) * MDP(26) + t1233 * t1070 + (-g(1) * t789 - g(2) * t791 + t1062 * t1096 - t1130 * t891 - t1134 * t1285 + t690 * t832 + t699 * t823 + t764 * t721 + t725 * t813 + t744 * t750) * MDP(23) + (t1021 * t764 - t1062 * t1078 + t1079 * t891 + t1222 * t1285 + t690 * t833 - t700 * t823 + t725 * t815 + t744 * t751 + t1115) * MDP(24) + qJDD(1) * MDP(1) + (-t750 * t1168 + t832 * t1033 - t721 * t891 - t813 * t823 + (-t832 * t1141 + (-t832 * t1039 + (-t750 * t1010 - t1072 * t832) * t1009) * qJD(1)) * t1005) * MDP(21) + (t751 * t1168 - t833 * t1033 + t1021 * t891 + t815 * t823 + (t833 * t1141 + (t833 * t1039 + (t751 * t1010 + t1072 * t833) * t1009) * qJD(1)) * t1005) * MDP(20) + (-t1033 * t891 + t1168 * t823 + (t891 * t1141 + (t891 * t1039 + (t1010 * t823 + t1072 * t891) * t1009) * qJD(1)) * t1005) * MDP(22) + (t779 * t892 + t824 * t865) * MDP(11) + (-t779 * t891 - t780 * t892 - t823 * t865 - t824 * t863) * MDP(12) + (t1043 * t823 - t1121 * t863 + t780 * t945 - t891 * t871) * MDP(14) + (-t1043 * t824 + t1121 * t865 - t779 * t945 + t892 * t871) * MDP(13) + (t720 * t832 + t750 * t812) * MDP(29) + (-t684 * t832 - t701 * t812 - t720 * t784 - t750 * t767) * MDP(28) + (-t683 * t832 + t702 * t812 + t720 * t785 + t750 * t769) * MDP(27) + (-qJD(2) * t1030 + (-pkin(9) * t1184 + t995) * t1100 + (t1005 * t1063 + t1064) * t1233 + g(1) * t948 - g(2) * t949 + (t1174 - t1159) * t1273) * MDP(9) + (-(-pkin(9) * t1160 + t987) * t1104 - t1061 * t1100 - t1059 * t1233 - g(1) * t1090 + g(2) * t1056 + t1071 * t1273) * MDP(10) + (-t648 * t785 - t649 * t784 - t652 * t769 - t653 * t767 - t660 * t702 - t665 * t701 + t669 * t683 - t672 * t684 - t1115) * MDP(32); (t1137 * t720 + t651 * t946 + t836 * t684 + t657 * t903 - g(1) * (t1007 * t857 + t1011 * t819) - g(2) * (t1007 * t855 + t1011 * t817) - g(3) * (t1007 * t929 + t1011 * t867) + (-t837 * t1190 + (-qJD(5) * t834 + t1277) * t1007 - t1272) * t812 + t1220 * t767 + t1217 * t693 + t1214 * t670) * MDP(30) + (qJD(1) * t1029 + t1232 * t871) * MDP(15) + (t779 * t1232 + t916 * t1043 + (t1009 * t871 - t1035 * t1245 - t1161 * t865) * t1004) * MDP(13) + (-t780 * t1232 - t915 * t1043 + (t1009 * t1035 + t1161 * t863 + t1245 * t871) * t1004) * MDP(14) + (-t1206 * t871 + t1058 * t1232 - t825 * t865 - t809 * t916 + g(1) * t857 + g(2) * t855 + g(3) * t929 + (-pkin(2) * t779 + t752 * t1009 + t1161 * t763 + t1164 * t809) * t1004 + t1288 * t1043) * MDP(17) + (-t946 * t1162 + t813 * t915 + (t721 * t1245 + (-t1104 * t946 - t813) * t1195) * t1004 + (-t946 * t1141 + (-t946 * t1039 + (-t1010 * t1214 - t1072 * t946) * t1009) * qJD(1)) * t1005 - t1214 * t1168) * MDP(21) + (t1021 * t947 + t1261 * t815) * MDP(18) + (-t1021 * t946 - t1214 * t815 - t1261 * t813 - t947 * t721) * MDP(19) + t1070 - t1010 * MDP(4) * t1157 + (pkin(1) * t1010 * t1188 - pkin(9) * t1266 + g(1) * t1056 + g(2) * t1090 - g(3) * t1183 + qJD(1) * t1030 + t1064) * MDP(9) + (-t1215 * t720 + t1076 * t946 - t836 * t683 + t657 * t904 - g(1) * (-t1007 * t819 + t1011 * t857) - g(2) * (-t1007 * t817 + t1011 * t855) - g(3) * (-t1007 * t867 + t1011 * t929) + t1268 * t812 + t1220 * t769 - t1218 * t693 - t1214 * t671) * MDP(31) + (t916 * t863 + t865 * t915 + (t1245 * t779 - t1009 * t780 + (-t1009 * t865 - t1245 * t863) * qJD(3)) * t1004) * MDP(12) + (t1085 * t871 - t1094 * t1232 - t1004 * pkin(2) * t780 - t752 * t1166 - t762 * t1123 - t825 * t863 - g(1) * t858 - g(2) * t856 - g(3) * t930 + t1259 * t809 + (t1166 * t934 + t1284) * t1043) * MDP(16) + (t649 * t746 + t648 * t734 + t654 * (pkin(5) * t903 + t836) - g(1) * (-pkin(2) * t1056 + t858 * pkin(3) + t819 * t1000 - t818 * t1006 + t1167 * t857 + t1235 * t949) - g(2) * (-pkin(2) * t1090 + t856 * pkin(3) + t817 * t1000 - t816 * t1006 + t1167 * t855 + t1235 * t948) - g(3) * (pkin(3) * t930 + t1000 * t867 + t1005 * t1092 - t1006 * t866 + t1167 * t929) + (pkin(5) * t1217 + t1220) * t682 + t1263 * t665 + t1264 * t660) * MDP(33) + (-t1217 * t665 + t1218 * t660 - t1263 * t767 - t1264 * t769 - t648 * t904 - t649 * t903 + t683 * t734 - t684 * t746 + t1082) * MDP(32) + (-t1021 * t1166 + t1062 * t1261 + t1259 * t815 - t1285 * t947) * MDP(20) + (t1062 * t1259 + t1166 * t1285) * MDP(22) + (-g(1) * t819 - g(2) * t817 - g(3) * t867 + t1062 * t1267 + t1166 * t1130 - t1132 * t1285 + t1214 * t744 + t1259 * t699 + t1262 * t813 + t690 * t946 + t937 * t721) * MDP(23) + (t1021 * t937 + t1062 * t1281 - t1166 * t1079 + t1213 * t1285 - t1259 * t700 + t1261 * t744 + t1262 * t815 + t690 * t947 - t1082) * MDP(24) + (t1214 * t769 - t1218 * t812 - t683 * t946 + t720 * t904) * MDP(27) + (-t1214 * t767 - t1217 * t812 - t684 * t946 - t720 * t903) * MDP(28) + (-t1217 * t769 + t1218 * t767 + t683 * t903 - t684 * t904) * MDP(26) + (-t1218 * t769 - t683 * t904) * MDP(25) + (t1214 * t812 + t720 * t946) * MDP(29) + (pkin(1) * t1157 + (-pkin(9) * t1161 + t986) * t1147 + g(1) * t949 + g(2) * t948 + g(3) * t1184 + t978 - t1170) * MDP(10) + (-t865 * t916 + (t1009 * t779 + t1164 * t865) * t1004) * MDP(11) + (t1010 * t1112 + t1142) * MDP(7) + (-t1013 * t1112 + t1143) * MDP(6) + t1177 * MDP(5) * t1188; t865 * t863 * MDP(11) + (-t863 ^ 2 + t865 ^ 2) * MDP(12) + (-t1043 * t863 + t779) * MDP(13) + (-t1043 * t865 - t780) * MDP(14) + t871 * MDP(15) + (-t1043 * t763 - t809 * t865 + t1081 - t1094) * MDP(16) + (-t1043 * t762 + t809 * t863 + t1058 + t1080) * MDP(17) + ((-qJD(4) * t865 + t871) * t1008 ^ 2 + ((-qJD(4) * t1043 + t779) * t1008 + t1062 * t815) * t1012) * MDP(18) + (-t1008 * t721 + t1012 * t1021 - t1253 * t815 - t1254 * t813) * MDP(19) + (t1008 * t1250 + t1012 * t1024 - t815 * t865) * MDP(20) + (-t1008 * t1024 + t1012 * t1250 + t813 * t865) * MDP(21) - t1062 * t865 * MDP(22) + (pkin(11) * t1008 * t1285 - pkin(3) * t721 + t1012 * t1247 - t1050 * t1234 - t1062 * t1135 + t1253 * t744 - t699 * t865 - t763 * t813) * MDP(23) + (-pkin(3) * t1021 + t1285 * t1234 + t700 * t865 - t763 * t815 + t1254 * t744 + (t1173 + t1223) * t1062 - t1247 * t1008) * MDP(24) + (-t683 * t1180 + (qJD(4) * t1178 - qJD(5) * t1181 - t793) * t769) * MDP(25) + (t767 * t793 + t769 * t792 + (-t1007 * t769 - t1011 * t767) * t1192 + (t1203 - t1011 * t684 + (t1007 * t767 - t1011 * t769) * qJD(5)) * t1008) * MDP(26) + (-t793 * t812 + (t683 + t1163) * t1012 + (t1062 * t769 - t1191 * t812 + t1198) * t1008) * MDP(27) + (t792 * t812 + (-t1194 * t812 + t684) * t1012 + (-t1062 * t767 - t1190 * t812 - t1202) * t1008) * MDP(28) + (t1008 * t1062 * t812 - t1012 * t720) * MDP(29) + (-t693 * t792 - t713 * t767 + t964 * t720 + t1260 * t812 + ((-qJD(5) * t977 + t714) * t812 - t1080) * t1007 + (t693 * t1194 - t651 + (qJD(4) * t767 - t1202) * pkin(11) - t1046 * t1011) * t1012 + (pkin(11) * t684 + t657 * t1007 + t1062 * t670 + t1190 * t693) * t1008) * MDP(30) + (-t1205 * t720 - t713 * t769 - t693 * t793 + t1252 * t812 - t1080 * t1011 + (-t1076 + (pkin(11) * t769 + t1011 * t693) * qJD(4) + t1046 * t1007) * t1012 + (-t693 * t1191 + t657 * t1011 - t1062 * t671 + (-t683 + t1163) * pkin(11)) * t1008) * MDP(31) + (t660 * t793 + t665 * t792 + t683 * t890 - t684 * t906 - t1219 * t769 - t1216 * t767 + (-t1007 * t665 - t1011 * t660) * t1192 + (-t1007 * t649 - t1011 * t648 + (t1007 * t660 - t1011 * t665) * qJD(5) + t1081) * t1008) * MDP(32) + (t649 * t906 + t648 * t890 - g(1) * (t1167 * t843 + t1265 * t842) - g(2) * (-t1167 * t841 + t1265 * t838) - g(3) * (-t1189 * t891 + t1236 * t892 - t1116) + t1216 * t665 + t1219 * t660 + (-t1006 * t1081 + t1167 * t654) * t1008 + (t1167 * t1192 - t713 + (t1008 * t1190 - t792) * pkin(5)) * t682) * MDP(33); -t813 ^ 2 * MDP(19) + (t863 * t813 + t1101) * MDP(20) - t1136 * MDP(21) - t1285 * MDP(22) + (t1062 * t700 + t1084 - t1130) * MDP(23) + (t1062 * t699 + t744 * t813 + t1079 - t1083) * MDP(24) + (t1131 * t769 - t1203) * MDP(25) + ((-t683 - t1230) * t1011 + (-t684 - t1229) * t1007) * MDP(26) + (t1131 * t812 + t1202) * MDP(27) + (-t1007 * t812 ^ 2 + t1198) * MDP(28) + (-pkin(4) * t684 - t700 * t767 - t748 * t812 + (t699 * t812 + t1089) * t1007 - t1042 * t1011) * MDP(30) + (pkin(4) * t683 + t1007 * t1042 + t1011 * t1089 + t1227 * t812 - t700 * t769) * MDP(31) + (t683 * t979 + t684 * t980 - t1211 * t769 - t1212 * t767 + (-t660 * t812 + t649) * t1011 + (-t665 * t812 - t648) * t1007 + t1083) * MDP(32) + (-t649 * t980 + t648 * t979 - t654 * t1000 - g(1) * (-t1000 * t790 - t1006 * t791) - g(2) * (t1000 * t788 + t1006 * t789) - g(3) * (-t1000 * t832 - t1006 * t833) + (t1236 * t812 - t700) * t682 + t1212 * t665 + t1211 * t660) * MDP(33) + (MDP(18) * t813 + t815 * MDP(19) + MDP(21) * t863 - t744 * MDP(23) - t769 * MDP(27) + t767 * MDP(28) - t812 * MDP(29) - t670 * MDP(30) + t671 * MDP(31)) * t815; t769 * t767 * MDP(25) + (-t766 + t1246) * MDP(26) + (-t683 + t1230) * MDP(27) + (-t684 + t1229) * MDP(28) + t720 * MDP(29) + (t671 * t812 - t693 * t769 + t1249 + t651) * MDP(30) + (g(1) * t743 - g(2) * t1282 + g(3) * t785 + t670 * t812 + t693 * t767 + t1076) * MDP(31) + (pkin(5) * t683 - t1228 * t767) * MDP(32) + (t1228 * t665 + (-t682 * t769 + t1249 + t648) * pkin(5)) * MDP(33); (-t766 - t1246) * MDP(32) + (t660 * t769 + t665 * t767 - t1084 + t654) * MDP(33);];
tau  = t1;
