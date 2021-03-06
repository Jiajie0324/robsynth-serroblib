% Calculate vector of inverse dynamics joint torques for
% S6RRRRRR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
% MDP [38x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRRR7_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 04:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRRRRR7_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1),zeros(38,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR7_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR7_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR7_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR7_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR7_invdynJ_fixb_mdp_slag_vp: pkin has to be [12x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [38 1]), ...
  'S6RRRRRR7_invdynJ_fixb_mdp_slag_vp: MDP has to be [38x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 04:41:56
% EndTime: 2019-03-10 04:42:48
% DurationCPUTime: 35.64s
% Computational Cost: add. (24185->933), mult. (57414->1263), div. (0->0), fcn. (47615->18), ass. (0->364)
t999 = cos(qJ(2));
t1120 = qJD(1) * t999;
t988 = sin(pkin(6));
t1095 = t988 * t1120;
t951 = -qJD(3) + t1095;
t1186 = cos(pkin(6));
t1078 = t1186 * qJD(1);
t1038 = t1078 + qJD(2);
t1121 = qJD(1) * t988;
t993 = sin(qJ(2));
t1096 = t993 * t1121;
t992 = sin(qJ(3));
t998 = cos(qJ(3));
t888 = t1038 * t992 + t1096 * t998;
t991 = sin(qJ(4));
t997 = cos(qJ(4));
t831 = t888 * t991 + t997 * t951;
t833 = t888 * t997 - t951 * t991;
t990 = sin(qJ(5));
t996 = cos(qJ(5));
t1040 = t831 * t990 - t996 * t833;
t745 = t996 * t831 + t833 * t990;
t989 = sin(qJ(6));
t995 = cos(qJ(6));
t1041 = t1040 * t995 + t745 * t989;
t1183 = t1040 * t989;
t688 = -t995 * t745 + t1183;
t1019 = qJD(3) * t1038;
t1066 = t1186 * qJDD(1);
t1034 = t1066 + qJDD(2);
t1118 = qJD(2) * t999;
t1091 = t992 * t1118;
t1105 = qJDD(1) * t993;
t1115 = qJD(3) * t998;
t793 = t1019 * t992 - t998 * t1034 + (qJD(1) * (t1115 * t993 + t1091) + t992 * t1105) * t988;
t781 = qJDD(4) + t793;
t777 = qJDD(5) + t781;
t774 = qJDD(6) + t777;
t1240 = t774 * MDP(36) + (t1041 ^ 2 - t688 ^ 2) * MDP(33) + t688 * MDP(32) * t1041;
t1058 = pkin(1) * t1078;
t904 = pkin(8) * t1095 + t993 * t1058;
t1239 = t904 + t951 * (pkin(3) * t992 - pkin(10) * t998);
t876 = t1095 * t991 * t998 - t1096 * t997;
t1229 = -t991 * t1115 + t876;
t1162 = t988 * t999;
t1165 = t988 * t992;
t1193 = cos(qJ(1));
t1053 = t1186 * t1193;
t994 = sin(qJ(1));
t913 = t1053 * t993 + t994 * t999;
t859 = -t1193 * t1165 + t913 * t998;
t912 = -t1053 * t999 + t993 * t994;
t987 = qJ(4) + qJ(5);
t982 = qJ(6) + t987;
t975 = sin(t982);
t976 = cos(t982);
t1207 = t859 * t975 - t912 * t976;
t869 = pkin(9) * t1038 + t904;
t1036 = -pkin(2) * t999 - pkin(9) * t993 - pkin(1);
t899 = t1036 * t988;
t878 = qJD(1) * t899;
t786 = -t992 * t869 + t878 * t998;
t764 = pkin(3) * t951 - t786;
t729 = pkin(4) * t831 + t764;
t673 = pkin(5) * t745 + t729;
t1080 = t993 * t1186;
t915 = -t1080 * t994 + t1193 * t999;
t862 = t1165 * t994 + t915 * t998;
t1079 = t999 * t1186;
t914 = t1079 * t994 + t1193 * t993;
t790 = -t862 * t975 + t914 * t976;
t1163 = t988 * t998;
t910 = t1163 * t993 + t1186 * t992;
t1238 = -g(3) * (-t1162 * t976 - t910 * t975) + g(2) * t1207 - g(1) * t790 + t673 * t1041;
t1112 = qJD(4) * t997;
t1113 = qJD(4) * t991;
t1060 = t992 * t1096;
t1082 = t988 * t1105;
t1106 = qJD(1) * qJD(2);
t1083 = t999 * t1106;
t1215 = t988 * t1083 + t1082;
t792 = -qJD(3) * t1060 + t992 * t1034 + (t1019 + t1215) * t998;
t1084 = t993 * t1106;
t1057 = t988 * t1084;
t1104 = qJDD(1) * t999;
t966 = t988 * t1104;
t900 = qJDD(3) - t966 + t1057;
t722 = -t951 * t1112 - t1113 * t888 + t997 * t792 + t991 * t900;
t723 = qJD(4) * t833 + t792 * t991 - t997 * t900;
t1004 = qJD(5) * t1040 - t722 * t990 - t996 * t723;
t1110 = qJD(5) * t996;
t1111 = qJD(5) * t990;
t660 = -t831 * t1110 - t1111 * t833 + t996 * t722 - t990 * t723;
t1076 = -t1004 * t995 + t660 * t989;
t1005 = qJD(6) * t1041 - t1076;
t886 = -t998 * t1038 + t1060;
t879 = qJD(4) + t886;
t872 = qJD(5) + t879;
t870 = qJD(6) + t872;
t1217 = t1041 * t870;
t1221 = t688 * t870;
t1108 = qJD(6) * t995;
t1100 = t1004 * t989 - t745 * t1108 + t995 * t660;
t1109 = qJD(6) * t989;
t627 = t1040 * t1109 + t1100;
t1237 = t777 * MDP(29) + (t1040 ^ 2 - t745 ^ 2) * MDP(26) + (-t1040 * t872 + t1004) * MDP(28) + (t745 * t872 + t660) * MDP(27) - t745 * MDP(25) * t1040 + (t1005 - t1217) * MDP(35) + (t627 - t1221) * MDP(34) + t1240;
t1236 = t992 * t1112 - t1229;
t1117 = qJD(3) * t992;
t1035 = qJD(2) * t1058;
t1055 = pkin(1) * t1066;
t1099 = pkin(8) * t966 + t999 * t1035 + t993 * t1055;
t1013 = -pkin(8) * t1057 + t1099;
t817 = pkin(9) * t1034 + t1013;
t1051 = pkin(2) * t993 - pkin(9) * t999;
t1031 = t1051 * qJD(2);
t820 = (qJD(1) * t1031 + qJDD(1) * t1036) * t988;
t1027 = t878 * t1115 - t1117 * t869 + t998 * t817 + t992 * t820;
t681 = pkin(10) * t900 + t1027;
t1062 = pkin(8) * t1215 + t993 * t1035 - t999 * t1055;
t818 = -pkin(2) * t1034 + t1062;
t698 = t793 * pkin(3) - t792 * pkin(10) + t818;
t901 = -pkin(8) * t1096 + t1058 * t999;
t868 = -pkin(2) * t1038 - t901;
t760 = t886 * pkin(3) - t888 * pkin(10) + t868;
t787 = t998 * t869 + t992 * t878;
t765 = -pkin(10) * t951 + t787;
t706 = t760 * t991 + t765 * t997;
t639 = -qJD(4) * t706 - t991 * t681 + t997 * t698;
t631 = pkin(4) * t781 - pkin(11) * t722 + t639;
t1025 = -t760 * t1112 + t1113 * t765 - t997 * t681 - t991 * t698;
t634 = -pkin(11) * t723 - t1025;
t705 = t997 * t760 - t765 * t991;
t678 = -pkin(11) * t833 + t705;
t672 = pkin(4) * t879 + t678;
t679 = -pkin(11) * t831 + t706;
t677 = t996 * t679;
t649 = t672 * t990 + t677;
t622 = -qJD(5) * t649 + t996 * t631 - t990 * t634;
t619 = pkin(5) * t777 - pkin(12) * t660 + t622;
t1064 = -t672 * t1110 + t679 * t1111 - t990 * t631 - t996 * t634;
t620 = pkin(12) * t1004 - t1064;
t1077 = t995 * t619 - t989 * t620;
t1235 = t1077 + t1238;
t1152 = t998 * t999;
t877 = (t1152 * t997 + t991 * t993) * t1121;
t1048 = t997 * t1115 - t877;
t1234 = -t992 * t1113 + t1048;
t1206 = t859 * t976 + t912 * t975;
t1223 = pkin(12) * t745;
t642 = t649 - t1223;
t640 = t642 * t1109;
t791 = t862 * t976 + t914 * t975;
t1212 = -t673 * t688 + g(1) * t791 + g(2) * t1206 - g(3) * (t1162 * t975 - t910 * t976) + t640;
t1200 = qJD(4) + qJD(5);
t1231 = t1200 + t886;
t1191 = pkin(9) * t991;
t1230 = t1117 * t1191 - t1239 * t997;
t902 = t1051 * t1121;
t1130 = t998 * t901 + t992 * t902;
t808 = pkin(10) * t1096 + t1130;
t945 = -pkin(3) * t998 - pkin(10) * t992 - pkin(2);
t1228 = -t945 * t1112 + t1239 * t991 + t997 * t808;
t1194 = pkin(10) + pkin(11);
t1098 = qJD(4) * t1194;
t819 = pkin(3) * t888 + pkin(10) * t886;
t814 = t997 * t819;
t1227 = pkin(4) * t888 - t786 * t991 + t814 + (pkin(11) * t886 + t1098) * t997;
t1141 = t997 * t786 + t991 * t819;
t1178 = t886 * t991;
t1226 = pkin(11) * t1178 + t991 * t1098 + t1141;
t1094 = t992 * t1120;
t1059 = t988 * t1094;
t1153 = t997 * t998;
t972 = pkin(9) * t1153;
t1225 = pkin(4) * t1059 - pkin(11) * t877 - t808 * t991 - (pkin(4) * t992 - pkin(11) * t1153) * qJD(3) - (-t972 + (pkin(11) * t992 - t945) * t991) * qJD(4) - t1230;
t1116 = qJD(3) * t997;
t1224 = -(-t1113 * t998 - t1116 * t992) * pkin(9) + t1228 + t1236 * pkin(11);
t1222 = pkin(12) * t1040;
t928 = t990 * t997 + t991 * t996;
t907 = t928 * t992;
t927 = t990 * t991 - t996 * t997;
t1140 = -t927 * t1115 - t1200 * t907 + t876 * t990 - t877 * t996;
t1156 = t992 * t997;
t1157 = t991 * t992;
t1139 = -t1111 * t1157 + (t1156 * t1200 - t1229) * t996 + t1234 * t990;
t1134 = t1231 * t927;
t1133 = t1231 * t928;
t980 = sin(t987);
t981 = cos(t987);
t1208 = t859 * t981 + t912 * t980;
t802 = t862 * t981 + t914 * t980;
t1213 = t729 * t745 + g(1) * t802 + g(2) * t1208 - g(3) * (t1162 * t980 - t910 * t981) + t1064;
t1211 = t859 * t991 - t912 * t997;
t1210 = t859 * t997 + t912 * t991;
t1209 = t859 * t980 - t912 * t981;
t801 = -t862 * t980 + t914 * t981;
t1205 = t729 * t1040 - g(1) * t801 + g(2) * t1209 - g(3) * (-t1162 * t981 - t910 * t980) + t622;
t1164 = t988 * t993;
t1032 = pkin(1) * t1079 - pkin(8) * t1164;
t897 = -pkin(2) * t1186 - t1032;
t909 = t1164 * t992 - t1186 * t998;
t804 = t909 * pkin(3) - t910 * pkin(10) + t897;
t1126 = pkin(1) * t1080 + pkin(8) * t1162;
t898 = pkin(9) * t1186 + t1126;
t1132 = t998 * t898 + t992 * t899;
t806 = -pkin(10) * t1162 + t1132;
t1072 = t997 * t804 - t806 * t991;
t1101 = t991 * t1162;
t857 = t910 * t997 - t1101;
t701 = pkin(4) * t909 - pkin(11) * t857 + t1072;
t1138 = t991 * t804 + t997 * t806;
t856 = t1162 * t997 + t910 * t991;
t707 = -pkin(11) * t856 + t1138;
t1148 = t990 * t701 + t996 * t707;
t1202 = t1225 * t996;
t925 = t997 * t945;
t846 = -pkin(11) * t1156 + t925 + (-pkin(4) - t1191) * t998;
t1125 = t991 * t945 + t972;
t865 = -pkin(11) * t1157 + t1125;
t1135 = t990 * t846 + t996 * t865;
t889 = t992 * t901;
t807 = -pkin(3) * t1096 - t902 * t998 + t889;
t1131 = pkin(4) * t1236 + pkin(9) * t1115 - t807;
t1201 = t1227 * t996;
t952 = t1194 * t991;
t953 = t1194 * t997;
t1127 = -t990 * t952 + t996 * t953;
t1054 = -t787 + (t1113 + t1178) * pkin(4);
t1199 = t952 * t1110 + t1111 * t953 + t1226 * t996 + t1227 * t990;
t1198 = -t846 * t1110 + t1111 * t865 + t1224 * t996 + t1225 * t990;
t1197 = (qJDD(2) + 0.2e1 * t1066) * t988;
t1000 = qJD(1) ^ 2;
t1192 = pkin(4) * t990;
t1187 = pkin(9) * qJD(3);
t675 = t990 * t679;
t648 = t996 * t672 - t675;
t641 = t648 + t1222;
t637 = pkin(5) * t872 + t641;
t1185 = t637 * t995;
t1184 = t722 * t991;
t1182 = t781 * t997;
t1181 = t831 * t879;
t1180 = t833 * t879;
t1179 = t886 * t951;
t1177 = t888 * t951;
t1170 = t913 * t992;
t1029 = t951 * t992;
t1169 = t975 * t998;
t1168 = t976 * t998;
t1167 = t980 * t998;
t1166 = t981 * t998;
t1161 = t989 * t619;
t1160 = t989 * t774;
t1159 = t990 * t995;
t1158 = t991 * t781;
t1155 = t995 * t642;
t1154 = t995 * t774;
t1151 = t996 * t678 - t675;
t908 = t927 * t992;
t824 = t995 * t907 - t908 * t989;
t1150 = -qJD(6) * t824 - t1139 * t989 + t1140 * t995;
t825 = -t907 * t989 - t908 * t995;
t1149 = qJD(6) * t825 + t1139 * t995 + t1140 * t989;
t843 = t995 * t927 + t928 * t989;
t1145 = -qJD(6) * t843 - t1133 * t989 - t1134 * t995;
t844 = -t927 * t989 + t928 * t995;
t1144 = qJD(6) * t844 + t1133 * t995 - t1134 * t989;
t1143 = pkin(5) * t1139 + t1131;
t1136 = pkin(5) * t1133 + t1054;
t936 = pkin(4) * t1157 + t992 * pkin(9);
t985 = t993 ^ 2;
t1124 = -t999 ^ 2 + t985;
t1119 = qJD(2) * t993;
t1114 = qJD(4) * t879;
t984 = t988 ^ 2;
t1107 = t1000 * t984;
t978 = -pkin(4) * t997 - pkin(3);
t1097 = t998 * t1193;
t1093 = t988 * t1119;
t1092 = t988 * t1118;
t1086 = t999 * t1107;
t1085 = 0.2e1 * pkin(1) * t984;
t1075 = -t678 * t990 - t677;
t1074 = t996 * t701 - t707 * t990;
t1070 = t996 * t846 - t865 * t990;
t1069 = -t992 * t898 + t899 * t998;
t1068 = -t996 * t952 - t953 * t990;
t1067 = t879 * t997;
t1065 = qJD(6) * t637 + t620;
t1063 = t869 * t1115 + t878 * t1117 + t992 * t817 - t998 * t820;
t1052 = t988 * t1000 * t1186;
t1049 = g(1) * t915 + g(2) * t913;
t805 = pkin(3) * t1162 - t1069;
t830 = -pkin(12) * t927 + t1127;
t1047 = pkin(5) * t888 - pkin(12) * t1134 + qJD(5) * t1127 + qJD(6) * t830 - t1226 * t990 + t1201;
t829 = -pkin(12) * t928 + t1068;
t1046 = pkin(12) * t1133 - qJD(6) * t829 + t1199;
t742 = -pkin(12) * t907 + t1135;
t1045 = qJD(5) * t1135 + qJD(6) * t742 + t1202 - t1224 * t990 + t1140 * pkin(12) + (t1059 - t1117) * pkin(5);
t737 = -pkin(5) * t998 + pkin(12) * t908 + t1070;
t1044 = pkin(12) * t1139 - qJD(6) * t737 + t1198;
t626 = t989 * t637 + t1155;
t769 = -t856 * t990 + t857 * t996;
t650 = pkin(5) * t909 - pkin(12) * t769 + t1074;
t768 = t996 * t856 + t857 * t990;
t653 = -pkin(12) * t768 + t1148;
t1043 = t650 * t995 - t653 * t989;
t1042 = t650 * t989 + t653 * t995;
t713 = t995 * t768 + t769 * t989;
t714 = -t768 * t989 + t769 * t995;
t1037 = 0.2e1 * t1078 + qJD(2);
t903 = t988 * t1031;
t905 = t1032 * qJD(2);
t1033 = -t898 * t1115 - t899 * t1117 + t903 * t998 - t992 * t905;
t682 = -pkin(3) * t900 + t1063;
t1028 = -pkin(10) * t781 + t764 * t879;
t1026 = t899 * t1115 - t1117 * t898 + t992 * t903 + t998 * t905;
t733 = pkin(10) * t1093 + t1026;
t854 = qJD(3) * t910 + t1091 * t988;
t855 = -qJD(3) * t909 + t1092 * t998;
t906 = t1126 * qJD(2);
t753 = t854 * pkin(3) - t855 * pkin(10) + t906;
t1024 = t804 * t1112 - t1113 * t806 + t997 * t733 + t991 * t753;
t1006 = -qJD(4) * t1138 - t733 * t991 + t997 * t753;
t759 = -qJD(4) * t856 + t1093 * t991 + t855 * t997;
t647 = pkin(4) * t854 - pkin(11) * t759 + t1006;
t758 = -qJD(4) * t1101 - t1093 * t997 + t1112 * t910 + t855 * t991;
t655 = -pkin(11) * t758 + t1024;
t1023 = t701 * t1110 - t1111 * t707 + t990 * t647 + t996 * t655;
t861 = t1163 * t994 - t915 * t992;
t1020 = g(1) * t861 + g(2) * (-t1097 * t988 - t1170) - g(3) * t909;
t749 = pkin(4) * t856 + t805;
t1018 = t1034 * MDP(8);
t1016 = -g(1) * t914 - g(2) * t912 + g(3) * t1162;
t1015 = -g(3) * t1164 - t1049;
t664 = pkin(4) * t723 + t682;
t1012 = -t1016 - t818;
t1011 = -pkin(9) * t900 - t868 * t951;
t734 = -pkin(3) * t1093 - t1033;
t1007 = -qJD(5) * t1148 + t996 * t647 - t655 * t990;
t617 = -qJD(6) * t626 + t1077;
t1003 = pkin(9) * t1114 + t1016;
t1002 = pkin(10) * t1114 + t1020 + t682;
t690 = pkin(4) * t758 + t734;
t977 = pkin(4) * t996 + pkin(5);
t896 = pkin(5) * t927 + t978;
t848 = pkin(5) * t907 + t936;
t810 = t862 * t997 + t914 * t991;
t809 = -t862 * t991 + t914 * t997;
t721 = pkin(4) * t833 - pkin(5) * t1040;
t703 = pkin(5) * t768 + t749;
t669 = qJD(5) * t769 + t996 * t758 + t759 * t990;
t668 = -qJD(5) * t768 - t758 * t990 + t759 * t996;
t651 = pkin(5) * t669 + t690;
t644 = t1151 + t1222;
t643 = t1075 + t1223;
t636 = qJD(6) * t714 + t668 * t989 + t995 * t669;
t635 = -qJD(6) * t713 + t668 * t995 - t669 * t989;
t632 = -pkin(5) * t1004 + t664;
t625 = -t642 * t989 + t1185;
t624 = -pkin(12) * t669 + t1023;
t623 = pkin(5) * t854 - pkin(12) * t668 + t1007;
t616 = t1065 * t995 + t1161 - t640;
t1 = [((qJDD(1) * t985 + 0.2e1 * t1083 * t993) * MDP(4) + 0.2e1 * (t1104 * t993 - t1106 * t1124) * MDP(5)) * t984 + (-t1041 * t854 + t627 * t909 + t635 * t870 + t714 * t774) * MDP(34) + (-t1041 * t635 + t627 * t714) * MDP(32) + (-t1119 * t951 - t900 * t999) * t988 * MDP(15) + (t1004 * t769 + t1040 * t669 - t660 * t768 - t668 * t745) * MDP(26) + (t1004 * t909 - t669 * t872 - t745 * t854 - t768 * t777) * MDP(28) + (g(1) * t1208 - g(2) * t802 - t1004 * t749 + t1007 * t872 + t1074 * t777 + t622 * t909 + t648 * t854 + t664 * t768 + t729 * t669 + t690 * t745) * MDP(30) + (-t1040 * t854 + t660 * t909 + t668 * t872 + t769 * t777) * MDP(27) + (-t1040 * t668 + t660 * t769) * MDP(25) + (-t1033 * t951 + t1069 * t900 + t906 * t886 + t897 * t793 + t818 * t909 + t868 * t854 + g(1) * t859 - g(2) * t862 + (t1063 * t999 + t1119 * t786) * t988) * MDP(16) + (t1005 * t714 + t1041 * t636 - t627 * t713 + t635 * t688) * MDP(33) + (t1005 * t909 - t636 * t870 + t688 * t854 - t713 * t774) * MDP(35) + ((-qJD(6) * t1042 + t623 * t995 - t624 * t989) * t870 + t1043 * t774 + t617 * t909 + t625 * t854 - t651 * t688 - t703 * t1005 + t632 * t713 + t673 * t636 + g(1) * t1206 - g(2) * t791) * MDP(37) + (t1026 * t951 - t1132 * t900 + t906 * t888 + t897 * t792 + t818 * t910 + t868 * t855 - g(1) * t1170 - g(2) * t861 + (-g(1) * t1097 + t1027 * t999 - t1119 * t787) * t988) * MDP(17) + (g(1) * t994 - g(2) * t1193) * MDP(2) + (g(1) * t1193 + g(2) * t994) * MDP(3) + t1186 * t1018 + (-t906 * t1038 + t1032 * t1034 - t1062 * t1186 + g(1) * t913 - g(2) * t915 + (-t1084 + t1104) * t1085) * MDP(9) + (-t905 * t1038 - t1126 * t1034 - t1013 * t1186 - g(1) * t912 + g(2) * t914 + (-t1083 - t1105) * t1085) * MDP(10) + (-t792 * t909 - t793 * t910 - t854 * t888 - t855 * t886) * MDP(12) + (t792 * t910 + t855 * t888) * MDP(11) + qJDD(1) * MDP(1) + (-t723 * t909 - t758 * t879 - t781 * t856 - t831 * t854) * MDP(21) + (t722 * t909 + t759 * t879 + t781 * t857 + t833 * t854) * MDP(20) + (t781 * t909 + t854 * t879) * MDP(22) + (t777 * t909 + t854 * t872) * MDP(29) + (t774 * t909 + t854 * t870) * MDP(36) + (-t722 * t856 - t723 * t857 - t758 * t833 - t759 * t831) * MDP(19) + (t722 * t857 + t759 * t833) * MDP(18) + (-(qJD(6) * t1043 + t623 * t989 + t624 * t995) * t870 - t1042 * t774 - t616 * t909 - t626 * t854 - t651 * t1041 + t703 * t627 + t632 * t714 + t673 * t635 - g(1) * t1207 - g(2) * t790) * MDP(38) + (-g(1) * t1209 - g(2) * t801 - t1023 * t872 - t690 * t1040 + t1064 * t909 - t1148 * t777 - t649 * t854 + t749 * t660 + t664 * t769 + t729 * t668) * MDP(31) + (g(1) * t1210 - g(2) * t810 + t1006 * t879 + t1072 * t781 + t639 * t909 + t682 * t856 + t705 * t854 + t805 * t723 + t734 * t831 + t764 * t758) * MDP(23) + (-g(1) * t1211 - g(2) * t809 - t1024 * t879 + t1025 * t909 - t1138 * t781 + t682 * t857 - t706 * t854 + t805 * t722 + t734 * t833 + t764 * t759) * MDP(24) + (t1037 * t1092 + t1197 * t993) * MDP(6) + (-t1037 * t1093 + t1197 * t999) * MDP(7) + (t854 * t951 - t900 * t909 + (-t1119 * t886 + t793 * t999) * t988) * MDP(14) + (-t855 * t951 + t900 * t910 + (t1119 * t888 - t792 * t999) * t988) * MDP(13); -t993 * MDP(4) * t1086 + (-t1041 * t1150 + t627 * t825) * MDP(32) + (-(t737 * t989 + t742 * t995) * t774 + t616 * t998 - t626 * t1117 + t848 * t627 + t632 * t825 - g(1) * (t1169 * t914 + t915 * t976) - g(2) * (t1169 * t912 + t913 * t976) + (t1044 * t995 + t1045 * t989) * t870 - t1143 * t1041 + t1150 * t673 + (t626 * t1094 - g(3) * (-t1152 * t975 + t976 * t993)) * t988) * MDP(38) + t1124 * MDP(5) * t1107 + (-t1004 * t908 + t1040 * t1139 - t1140 * t745 - t660 * t907) * MDP(26) + (-t1004 * t998 + t1029 * t745 - t1139 * t872 - t777 * t907) * MDP(28) + (-t1040 * t1140 - t660 * t908) * MDP(25) + (-t1135 * t777 - t1064 * t998 - t649 * t1117 + t936 * t660 - t664 * t908 - g(1) * (t1167 * t914 + t915 * t981) - g(2) * (t1167 * t912 + t913 * t981) + t1198 * t872 - t1131 * t1040 + t1140 * t729 + (t649 * t1094 - g(3) * (-t1152 * t980 + t981 * t993)) * t988) * MDP(31) + (-t1029 * t872 - t777 * t998) * MDP(29) + (-t1029 * t870 - t774 * t998) * MDP(36) + (-t1029 * t879 - t781 * t998) * MDP(22) + (t1029 * t1041 + t1150 * t870 - t627 * t998 + t774 * t825) * MDP(34) + (t1029 * t1040 + t1140 * t872 - t660 * t998 - t777 * t908) * MDP(27) + (t1005 * t825 + t1041 * t1149 + t1150 * t688 - t627 * t824) * MDP(33) + (-t1005 * t998 - t1029 * t688 - t1149 * t870 - t774 * t824) * MDP(35) + ((t737 * t995 - t742 * t989) * t774 - t617 * t998 + t625 * t1117 - t848 * t1005 + t632 * t824 - g(1) * (-t1168 * t914 + t915 * t975) - g(2) * (-t1168 * t912 + t913 * t975) + (t1044 * t989 - t1045 * t995) * t870 - t1143 * t688 + t1149 * t673 + (-t625 * t1094 - g(3) * (t1152 * t976 + t975 * t993)) * t988) * MDP(37) + (t1070 * t777 - t622 * t998 + t648 * t1117 - t936 * t1004 + t664 * t907 - g(1) * (-t1166 * t914 + t915 * t980) - g(2) * (-t1166 * t912 + t913 * t980) + (-t865 * t1110 + (-qJD(5) * t846 + t1224) * t990 - t1202) * t872 + t1131 * t745 + t1139 * t729 + (-t648 * t1094 - g(3) * (t1152 * t981 + t980 * t993)) * t988) * MDP(30) + (t723 * t998 + t1229 * t879 + (-t1112 * t879 + t831 * t951 - t1158) * t992) * MDP(21) + (-t764 * t876 + t925 * t781 - t807 * t831 + t1230 * t879 + ((-qJD(4) * t945 + t808) * t879 + t1015) * t991 + (t764 * t991 * qJD(3) - t639 + (qJD(3) * t831 - t1158) * pkin(9) - t1003 * t997) * t998 + (pkin(9) * t723 + t1112 * t764 + t682 * t991 - t705 * t951) * t992) * MDP(23) + (t831 * t877 + t833 * t876 + (-t831 * t997 - t833 * t991) * t1115 + (-t1184 - t723 * t997 + (t831 * t991 - t833 * t997) * qJD(4)) * t992) * MDP(19) + (-t951 * t1115 + t900 * t992 + (t1152 * t951 - t888 * t993) * t1121) * MDP(13) + (t722 * t1156 + t1234 * t833) * MDP(18) + (-t722 * t998 + t1048 * t879 + (-t1113 * t879 - t833 * t951 + t1182) * t992) * MDP(20) + (-t1177 * t998 + t792 * t992) * MDP(11) + ((t792 + t1179) * t998 + (-t793 + t1177) * t992) * MDP(12) + (t951 * t1117 + t900 * t998 + (-t1029 * t999 + t886 * t993) * t1121) * MDP(14) + (pkin(1) * t1086 + t901 * t1038 + (pkin(8) * t1106 + g(3)) * t1164 + t1049 - t1099) * MDP(10) + (-t1125 * t781 - t807 * t833 - t764 * t877 + t1228 * t879 + t1015 * t997 + (-t1025 + (pkin(9) * t833 + t764 * t997) * qJD(3) + t1003 * t991) * t998 + (-t764 * t1113 + t682 * t997 + t951 * t706 + (t1116 * t879 + t722) * pkin(9)) * t992) * MDP(24) + t1018 + t951 * MDP(15) * t1096 + (-pkin(2) * t792 - t1130 * t951 + t787 * t1096 - t904 * t888 + t1011 * t998 + (-t1187 * t951 - t1012) * t992) * MDP(17) + (-t786 * t1096 - pkin(2) * t793 - t904 * t886 - t889 * t951 + t1011 * t992 + ((t902 + t1187) * t951 + t1012) * t998) * MDP(16) + (t1052 * t993 + t966) * MDP(7) + (-t1052 * t999 + t1082) * MDP(6) + (pkin(1) * t1107 * t993 + t1038 * t904 - t1016 - t1062) * MDP(9); (t1004 * t928 + t1040 * t1133 + t1134 * t745 - t660 * t927) * MDP(26) + (t1040 * t1134 + t660 * t928) * MDP(25) + (t1020 * t980 - t1040 * t1054 - t1127 * t777 - t1134 * t729 + t1199 * t872 + t978 * t660 + t664 * t928) * MDP(31) + (-t1134 * t872 + t777 * t928) * MDP(27) + (-pkin(3) * t722 + t1002 * t991 + t1028 * t997 + t1141 * t879 - t787 * t833) * MDP(24) + (-(t829 * t989 + t830 * t995) * t774 + t896 * t627 + t632 * t844 + (t1046 * t995 + t1047 * t989) * t870 - t1136 * t1041 + t1145 * t673 + t1020 * t975) * MDP(38) + (-t1041 * t1145 + t627 * t844) * MDP(32) - t886 ^ 2 * MDP(12) + (-pkin(3) * t723 - t787 * t831 - t814 * t879 + (t786 * t879 + t1028) * t991 - t1002 * t997) * MDP(23) + ((t829 * t995 - t830 * t989) * t774 - t896 * t1005 + t632 * t843 + (t1046 * t989 - t1047 * t995) * t870 - t1136 * t688 + t1144 * t673 - t1020 * t976) * MDP(37) + (t1005 * t844 + t1041 * t1144 + t1145 * t688 - t627 * t843) * MDP(33) + (t706 * MDP(24) - t625 * MDP(37) - t688 * MDP(35) + t1041 * MDP(34) + t626 * MDP(38) + t649 * MDP(31) + t831 * MDP(21) - t833 * MDP(20) - t868 * MDP(16) + t886 * MDP(11) - t879 * MDP(22) - t872 * MDP(29) - t870 * MDP(36) - t705 * MDP(23) - t648 * MDP(30) + t745 * MDP(28) + t1040 * MDP(27) + MDP(12) * t888) * t888 + (t1068 * t777 - t978 * t1004 + t664 * t927 + (-t953 * t1110 + (qJD(5) * t952 + t1226) * t990 - t1201) * t872 + t1054 * t745 + t1133 * t729 - t1020 * t981) * MDP(30) + (-t787 * t951 - t1020 - t1063) * MDP(16) + (t1067 * t833 + t1184) * MDP(18) + ((t722 - t1181) * t997 + (-t723 - t1180) * t991) * MDP(19) + (t792 - t1179) * MDP(13) + (t1067 * t879 + t1158) * MDP(20) + (-t879 ^ 2 * t991 + t1182) * MDP(21) + (-t1133 * t872 - t777 * t927) * MDP(28) + (g(1) * t862 + g(2) * t859 + g(3) * t910 - t786 * t951 + t868 * t886 - t1027) * MDP(17) + t900 * MDP(15) + (t1145 * t870 + t774 * t844) * MDP(34) + (-t1144 * t870 - t774 * t843) * MDP(35) + (-t1177 - t793) * MDP(14); (t721 * t1041 + (-t977 * t774 - t619 + (t643 - (-qJD(5) - qJD(6)) * t1192) * t870) * t989 + (-t774 * t1192 + (-pkin(4) * t1110 - qJD(6) * t977 + t644) * t870 - t1065) * t995 + t1212) * MDP(38) + (-t1075 * t872 + (-t1111 * t872 - t745 * t833 + t777 * t996) * pkin(4) + t1205) * MDP(30) + (t1151 * t872 + (t1040 * t833 - t1110 * t872 - t777 * t990) * pkin(4) + t1213) * MDP(31) + (t722 + t1181) * MDP(20) + (-g(1) * t809 + g(2) * t1211 + g(3) * t856 + t706 * t879 - t764 * t833 + t639) * MDP(23) + (g(1) * t810 + g(2) * t1210 + g(3) * t857 + t705 * t879 + t764 * t831 + t1025) * MDP(24) + (t977 * t1154 - (t643 * t995 - t644 * t989) * t870 + t721 * t688 + (-t990 * t1160 + (-t989 * t996 - t1159) * t870 * qJD(5)) * pkin(4) + ((-pkin(4) * t1159 - t977 * t989) * t870 - t626) * qJD(6) + t1235) * MDP(37) + t833 * t831 * MDP(18) + (-t831 ^ 2 + t833 ^ 2) * MDP(19) + t781 * MDP(22) + (t1180 - t723) * MDP(21) + t1237; (t649 * t872 + t1205) * MDP(30) + (t648 * t872 + t1213) * MDP(31) + (-(-t641 * t989 - t1155) * t870 + (-t1040 * t688 - t1109 * t870 + t1154) * pkin(5) + t617 + t1238) * MDP(37) + ((-t642 * t870 - t619) * t989 + (t641 * t870 - t1065) * t995 + (-t1040 * t1041 - t1108 * t870 - t1160) * pkin(5) + t1212) * MDP(38) + t1237; (t1100 - t1221) * MDP(34) + (-t1076 - t1217) * MDP(35) + (t626 * t870 + t1235) * MDP(37) + (-t995 * t620 + t625 * t870 - t1161 + t1212) * MDP(38) + (MDP(34) * t1183 + MDP(35) * t1041 - MDP(37) * t626 - MDP(38) * t1185) * qJD(6) + t1240;];
tau  = t1;
