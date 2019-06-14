% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRRRP3
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 01:22
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRRRP3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP3_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 01:20:29
% EndTime: 2019-05-06 01:21:13
% DurationCPUTime: 41.70s
% Computational Cost: add. (108035->756), mult. (210492->1080), div. (0->0), fcn. (144028->10), ass. (0->536)
t969 = sin(qJ(3));
t1020 = qJD(1) * t969;
t968 = sin(qJ(4));
t972 = cos(qJ(4));
t917 = -t972 * qJD(3) + t1020 * t968;
t918 = qJD(3) * t968 + t1020 * t972;
t967 = sin(qJ(5));
t971 = cos(qJ(5));
t865 = t971 * t917 + t918 * t967;
t973 = cos(qJ(3));
t1019 = qJD(1) * t973;
t947 = -qJD(4) + t1019;
t939 = -qJD(5) + t947;
t1038 = t865 * t939;
t1015 = qJD(1) * qJD(3);
t1005 = t973 * t1015;
t1014 = qJDD(1) * t969;
t923 = t1005 + t1014;
t1007 = t917 * qJD(4) - t968 * qJDD(3) - t972 * t923;
t986 = t972 * qJDD(3) - t968 * t923;
t980 = qJD(4) * t918 - t986;
t977 = -t865 * qJD(5) - t1007 * t971 - t967 * t980;
t1083 = t977 + t1038;
t867 = -t917 * t967 + t918 * t971;
t1039 = t865 * t867;
t1013 = qJDD(1) * t973;
t952 = t969 * t1015;
t924 = -t952 + t1013;
t914 = -qJDD(4) + t924;
t908 = -qJDD(5) + t914;
t978 = t908 - t1039;
t1050 = t978 * t971;
t1070 = t939 ^ 2;
t864 = t867 ^ 2;
t820 = -t864 - t1070;
t695 = t820 * t967 - t1050;
t1051 = t978 * t967;
t727 = t820 * t971 + t1051;
t620 = t695 * t972 + t727 * t968;
t587 = -t1083 * t969 + t620 * t973;
t618 = t695 * t968 - t727 * t972;
t963 = sin(pkin(10));
t964 = cos(pkin(10));
t528 = t587 * t963 - t618 * t964;
t530 = t587 * t964 + t618 * t963;
t970 = sin(qJ(1));
t974 = cos(qJ(1));
t485 = t528 * t974 + t530 * t970;
t1211 = pkin(6) * t485;
t492 = t528 * t970 - t530 * t974;
t1210 = pkin(6) * t492;
t1209 = qJ(2) * t528;
t1208 = pkin(1) * t528 - pkin(2) * t618 + pkin(7) * t587;
t585 = t1083 * t973 + t620 * t969;
t1207 = -pkin(1) * t585 + qJ(2) * t530;
t1003 = -t1007 * t967 + t971 * t980;
t708 = (qJD(5) - t939) * t867 + t1003;
t636 = t1083 * t971 - t708 * t967;
t1053 = t1083 * t967;
t640 = -t708 * t971 - t1053;
t574 = -t636 * t968 + t640 * t972;
t1072 = t865 ^ 2;
t802 = t864 - t1072;
t555 = t574 * t973 + t802 * t969;
t568 = t636 * t972 + t640 * t968;
t502 = t555 * t963 - t568 * t964;
t504 = t555 * t964 + t568 * t963;
t1206 = t502 * t974 + t504 * t970;
t1205 = t502 * t970 - t504 * t974;
t834 = t1072 - t1070;
t736 = t834 * t967 - t1050;
t740 = t834 * t971 + t1051;
t659 = t736 * t968 - t740 * t972;
t709 = (qJD(5) + t939) * t867 + t1003;
t603 = t659 * t973 + t709 * t969;
t655 = t736 * t972 + t740 * t968;
t558 = t603 * t963 + t655 * t964;
t562 = t603 * t964 - t655 * t963;
t1204 = t558 * t974 + t562 * t970;
t1203 = t558 * t970 - t562 * t974;
t1201 = pkin(7) * t585;
t1200 = -pkin(2) * t585 - pkin(3) * t1083 - pkin(8) * t620;
t1085 = t1038 - t977;
t1123 = -t1085 * t967 - t709 * t971;
t1124 = t971 * t1085 - t709 * t967;
t1137 = t1123 * t968 + t1124 * t972;
t1138 = t1123 * t972 - t1124 * t968;
t759 = t864 + t1072;
t1162 = t1138 * t973 - t759 * t969;
t1174 = t1137 * t963 + t1162 * t964;
t1175 = -t1137 * t964 + t1162 * t963;
t1180 = t1174 * t970 + t1175 * t974;
t1198 = pkin(6) * t1180;
t1181 = t1174 * t974 - t1175 * t970;
t1197 = pkin(6) * t1181;
t1195 = pkin(8) * t618;
t1188 = qJ(2) * t1175;
t1187 = -pkin(3) * t618 + pkin(4) * t727;
t1185 = pkin(1) * t1175 - pkin(2) * t1137 + pkin(7) * t1162;
t1184 = t659 * t969 - t709 * t973;
t1183 = t574 * t969 - t802 * t973;
t1163 = t1138 * t969 + t759 * t973;
t1182 = -pkin(1) * t1163 + qJ(2) * t1174;
t1178 = pkin(7) * t1163;
t1177 = -pkin(2) * t1163 - pkin(3) * t759 - pkin(8) * t1138;
t979 = -t908 - t1039;
t1049 = t979 * t967;
t835 = -t864 + t1070;
t1100 = t971 * t835 + t1049;
t770 = t971 * t979;
t1101 = -t835 * t967 + t770;
t1115 = -t1100 * t972 - t1101 * t968;
t1114 = -t1100 * t968 + t1101 * t972;
t1143 = -t1085 * t969 + t1114 * t973;
t1160 = -t1115 * t963 + t1143 * t964;
t1161 = t1115 * t964 + t1143 * t963;
t1173 = t1160 * t974 - t1161 * t970;
t1172 = t1160 * t970 + t1161 * t974;
t1170 = pkin(9) * t695;
t1169 = pkin(9) * t727;
t1167 = pkin(8) * t1137;
t526 = -pkin(3) * t1137 - pkin(4) * t1124;
t1082 = -t1070 - t1072;
t1094 = t1082 * t971 - t1049;
t1098 = t1082 * t967 + t770;
t1116 = t1094 * t968 + t1098 * t972;
t1159 = pkin(2) * t1116;
t1157 = pkin(8) * t1116;
t1117 = t1094 * t972 - t1098 * t968;
t1156 = pkin(8) * t1117;
t1155 = pkin(9) * t1124;
t1150 = t1116 * t963;
t1149 = t1116 * t964;
t1148 = t1117 * t969;
t1147 = t1117 * t973;
t1146 = -pkin(3) * t1116 - pkin(4) * t1098;
t1145 = pkin(4) * t759 + pkin(9) * t1123;
t1144 = t1085 * t973 + t1114 * t969;
t1027 = t939 * t971;
t1010 = t865 * t1027;
t752 = -qJD(5) * t867 - t1003;
t984 = -t752 * t967 - t1010;
t1028 = t939 * t967;
t991 = -t1028 * t865 + t971 * t752;
t1073 = -t968 * t984 - t972 * t991;
t1012 = t969 * t1039;
t1074 = -t968 * t991 + t972 * t984;
t1096 = t1074 * t973 - t1012;
t1118 = -t1073 * t963 + t1096 * t964;
t1119 = t1073 * t964 + t1096 * t963;
t1142 = t1118 * t974 - t1119 * t970;
t1141 = t1118 * t970 + t1119 * t974;
t982 = (t865 * t967 + t867 * t971) * t939;
t828 = t867 * t1028;
t990 = -t828 + t1010;
t1076 = -t968 * t990 - t972 * t982;
t1075 = -t968 * t982 + t972 * t990;
t1095 = t1075 * t973 - t908 * t969;
t1120 = -t1076 * t963 + t1095 * t964;
t1121 = t1076 * t964 + t1095 * t963;
t1140 = t1120 * t974 - t1121 * t970;
t1139 = t1120 * t970 + t1121 * t974;
t1133 = pkin(9) * t1094;
t1132 = pkin(9) * t1098;
t1127 = qJ(6) * t1083;
t1071 = t917 ^ 2;
t1069 = qJD(3) ^ 2;
t937 = g(1) * t974 + g(2) * t970;
t975 = qJD(1) ^ 2;
t920 = -pkin(1) * t975 - t937;
t936 = g(1) * t970 - t974 * g(2);
t985 = qJDD(1) * pkin(1) + t936;
t869 = t964 * t920 + t963 * t985;
t848 = -pkin(2) * t975 + qJDD(1) * pkin(7) + t869;
t1067 = pkin(3) * t973;
t995 = -pkin(8) * t969 - t1067;
t921 = t995 * qJD(1);
t1023 = g(3) - qJDD(2);
t951 = t973 * t1023;
t793 = (qJD(1) * t921 + t848) * t969 - qJDD(3) * pkin(3) - t1069 * pkin(8) + t951;
t887 = -pkin(4) * t947 - pkin(9) * t918;
t703 = t980 * pkin(4) - t1071 * pkin(9) + t918 * t887 + t793;
t1126 = -t752 * pkin(5) - t1127 + t703;
t868 = t963 * t920 - t964 * t985;
t1002 = t868 * t963 + t964 * t869;
t791 = t868 * t964 - t869 * t963;
t1048 = t791 * t970;
t719 = t1002 * t974 + t1048;
t1047 = t791 * t974;
t1125 = -t1002 * t970 + t1047;
t927 = qJDD(1) * t964 - t963 * t975;
t1077 = -qJ(2) * t927 - t1023 * t963;
t926 = qJDD(1) * t963 + t964 * t975;
t1084 = t974 * t926 + t927 * t970;
t896 = -qJ(2) * t926 + t1023 * t964;
t1122 = -pkin(6) * t1084 + t1077 * t970 + t896 * t974;
t871 = -t926 * t970 + t974 * t927;
t1113 = -pkin(6) * t871 + t1077 * t974 - t896 * t970;
t1112 = -2 * qJD(6);
t898 = t917 * t947;
t817 = t898 + t1007;
t1099 = t1075 * t969 + t973 * t908;
t1011 = t973 * t1039;
t1097 = t1074 * t969 + t1011;
t701 = -t1027 * t867 + t967 * t977;
t702 = t971 * t977 + t828;
t627 = -t701 * t972 - t702 * t968;
t630 = -t701 * t968 + t702 * t972;
t992 = t973 * t630 + t1012;
t1078 = -t627 * t963 + t964 * t992;
t1079 = t964 * t627 + t963 * t992;
t1092 = t1078 * t974 - t1079 * t970;
t1091 = t1078 * t970 + t1079 * t974;
t1035 = t917 * t918;
t981 = -t914 - t1035;
t1089 = t968 * t981;
t1088 = t972 * t981;
t847 = -qJDD(1) * pkin(2) - t975 * pkin(7) + t868;
t988 = -t924 + t952;
t989 = t923 + t1005;
t781 = pkin(3) * t988 - pkin(8) * t989 + t847;
t824 = -t969 * t1023 + t973 * t848;
t794 = -pkin(3) * t1069 + qJDD(3) * pkin(8) + t1019 * t921 + t824;
t706 = -t972 * t781 + t968 * t794;
t663 = t981 * pkin(4) + pkin(9) * t817 - t706;
t707 = t968 * t781 + t972 * t794;
t667 = -pkin(4) * t1071 - pkin(9) * t980 + t947 * t887 + t707;
t584 = t967 * t663 + t971 * t667;
t795 = pkin(5) * t865 - qJ(6) * t867;
t987 = -t908 * qJ(6) + t1112 * t939 - t865 * t795 + t584;
t815 = t898 - t1007;
t812 = (qJD(4) + t947) * t918 - t986;
t913 = t918 ^ 2;
t945 = t947 ^ 2;
t1068 = pkin(3) * t969;
t1066 = pkin(5) * t971;
t1063 = qJ(6) * t971;
t583 = -t971 * t663 + t967 * t667;
t521 = -t583 * t971 + t584 * t967;
t1062 = t521 * t968;
t1061 = t521 * t972;
t1059 = t703 * t967;
t1058 = t703 * t971;
t1046 = t793 * t968;
t1045 = t793 * t972;
t843 = t914 - t1035;
t1043 = t843 * t968;
t1042 = t843 * t972;
t1041 = t847 * t969;
t1040 = t847 * t973;
t1037 = t867 * t939;
t946 = t973 * t975 * t969;
t934 = -t946 + qJDD(3);
t1031 = t934 * t969;
t1030 = t934 * t973;
t935 = qJDD(3) + t946;
t1029 = t935 * t969;
t1026 = t947 * t968;
t1025 = t947 * t972;
t959 = t969 ^ 2;
t1024 = t959 * t975;
t1022 = t759 - t1070;
t960 = t973 ^ 2;
t1021 = t959 + t960;
t1009 = t969 * t1035;
t1008 = t973 * t1035;
t1004 = -qJ(6) * t967 - pkin(4);
t522 = t583 * t967 + t971 * t584;
t822 = t969 * t848 + t951;
t755 = t822 * t969 + t973 * t824;
t880 = -t936 * t970 - t974 * t937;
t999 = t963 * t946;
t998 = t964 * t946;
t996 = t867 * t795 + qJDD(6) + t583;
t931 = qJDD(1) * t974 - t970 * t975;
t994 = -pkin(6) * t931 - g(3) * t970;
t993 = t969 * t630 - t1011;
t632 = -t706 * t972 + t707 * t968;
t633 = t706 * t968 + t707 * t972;
t754 = t822 * t973 - t824 * t969;
t879 = t936 * t974 - t937 * t970;
t983 = t908 * pkin(5) + t996;
t976 = 0.2e1 * qJD(6) * t867 - t1126;
t957 = t960 * t975;
t944 = -t957 - t1069;
t943 = t957 - t1069;
t942 = -t1024 - t1069;
t941 = -t1024 + t1069;
t933 = t957 - t1024;
t932 = t957 + t1024;
t930 = qJDD(1) * t970 + t974 * t975;
t929 = t1021 * qJDD(1);
t925 = -0.2e1 * t952 + t1013;
t922 = 0.2e1 * t1005 + t1014;
t916 = t973 * t935;
t915 = t1021 * t1015;
t901 = -pkin(6) * t930 + g(3) * t974;
t893 = -t913 + t945;
t892 = -t945 + t1071;
t891 = -t1015 * t959 + t923 * t973;
t890 = -t1015 * t960 - t924 * t969;
t889 = qJDD(3) * t963 + t915 * t964;
t888 = -qJDD(3) * t964 + t915 * t963;
t886 = -t942 * t969 - t1030;
t885 = -t941 * t969 + t916;
t884 = t944 * t973 - t1029;
t883 = t943 * t973 - t1031;
t882 = t942 * t973 - t1031;
t881 = t944 * t969 + t916;
t878 = -t913 + t1071;
t877 = -t913 - t945;
t876 = t929 * t964 - t932 * t963;
t875 = t929 * t963 + t932 * t964;
t870 = -t922 * t969 + t925 * t973;
t861 = -t945 - t1071;
t857 = t891 * t964 - t999;
t856 = t890 * t964 + t999;
t855 = t891 * t963 + t998;
t854 = t890 * t963 - t998;
t853 = t1014 * t963 + t885 * t964;
t852 = t1013 * t963 + t883 * t964;
t851 = -t1014 * t964 + t885 * t963;
t850 = -t1013 * t964 + t883 * t963;
t842 = t913 + t1071;
t832 = t886 * t964 + t922 * t963;
t831 = t884 * t964 - t925 * t963;
t830 = t886 * t963 - t922 * t964;
t829 = t884 * t963 + t925 * t964;
t826 = (t917 * t972 - t918 * t968) * t947;
t825 = (-t917 * t968 - t918 * t972) * t947;
t823 = t870 * t964 - t933 * t963;
t821 = t870 * t963 + t933 * t964;
t813 = (-qJD(4) + t947) * t918 + t986;
t811 = -t1007 * t972 + t1026 * t918;
t810 = t1007 * t968 + t1025 * t918;
t809 = -t1025 * t917 + t968 * t980;
t808 = t1026 * t917 + t972 * t980;
t807 = -t875 * t970 + t876 * t974;
t806 = t875 * t974 + t876 * t970;
t804 = t826 * t973 - t914 * t969;
t801 = -pkin(7) * t882 + t1040;
t800 = t892 * t972 + t1043;
t799 = -t893 * t968 + t1088;
t798 = -pkin(7) * t881 + t1041;
t797 = -t892 * t968 + t1042;
t796 = -t893 * t972 - t1089;
t787 = -pkin(2) * t882 + t824;
t786 = -pkin(2) * t881 + t822;
t785 = -t877 * t968 + t1042;
t784 = t877 * t972 + t1043;
t780 = pkin(1) * t1023 + qJ(2) * t1002;
t779 = t861 * t972 - t1089;
t778 = t861 * t968 + t1088;
t765 = t811 * t973 + t1009;
t764 = t809 * t973 - t1009;
t763 = -t830 * t970 + t832 * t974;
t762 = -t829 * t970 + t831 * t974;
t761 = t830 * t974 + t832 * t970;
t760 = t829 * t974 + t831 * t970;
t748 = -t812 * t972 - t817 * t968;
t747 = t813 * t972 - t815 * t968;
t746 = -t812 * t968 + t817 * t972;
t745 = -t813 * t968 - t815 * t972;
t744 = t804 * t964 - t825 * t963;
t743 = t804 * t963 + t825 * t964;
t742 = t800 * t973 - t812 * t969;
t741 = t799 * t973 - t817 * t969;
t732 = t785 * t973 + t815 * t969;
t731 = t785 * t969 - t815 * t973;
t726 = -qJ(2) * t875 + t754 * t964;
t725 = qJ(2) * t876 + t754 * t963;
t724 = t779 * t973 - t813 * t969;
t723 = t779 * t969 + t813 * t973;
t722 = t755 * t964 + t847 * t963;
t721 = t755 * t963 - t847 * t964;
t720 = -pkin(8) * t784 + t1045;
t717 = t747 * t973 - t878 * t969;
t710 = -t752 - t1037;
t704 = -pkin(8) * t778 + t1046;
t692 = t765 * t964 - t810 * t963;
t691 = t764 * t964 - t808 * t963;
t690 = t765 * t963 + t810 * t964;
t689 = t764 * t963 + t808 * t964;
t688 = t748 * t973 - t842 * t969;
t687 = t748 * t969 + t842 * t973;
t682 = -qJ(2) * t830 - t787 * t963 + t801 * t964;
t681 = -qJ(2) * t829 - t786 * t963 + t798 * t964;
t680 = t742 * t964 - t797 * t963;
t679 = t741 * t964 - t796 * t963;
t678 = t742 * t963 + t797 * t964;
t677 = t741 * t963 + t796 * t964;
t674 = t732 * t964 + t784 * t963;
t673 = t732 * t963 - t784 * t964;
t672 = -pkin(1) * t882 + qJ(2) * t832 + t787 * t964 + t801 * t963;
t671 = -pkin(1) * t881 + qJ(2) * t831 + t786 * t964 + t798 * t963;
t670 = t724 * t964 + t778 * t963;
t669 = t724 * t963 - t778 * t964;
t668 = -pkin(3) * t784 + t707;
t666 = -pkin(3) * t778 + t706;
t652 = t717 * t964 - t745 * t963;
t651 = t717 * t963 + t745 * t964;
t646 = t688 * t964 + t746 * t963;
t645 = t688 * t963 - t746 * t964;
t644 = t1058 - t1169;
t643 = -t721 * t970 + t722 * t974;
t642 = t721 * t974 + t722 * t970;
t631 = t1059 - t1132;
t617 = -pkin(2) * t731 + pkin(3) * t815 - pkin(8) * t785 - t1046;
t616 = -pkin(2) * t723 - pkin(3) * t813 - pkin(8) * t779 + t1045;
t615 = -qJ(2) * t721 - (pkin(2) * t963 - pkin(7) * t964) * t754;
t614 = t633 * t973 + t793 * t969;
t613 = t633 * t969 - t793 * t973;
t600 = -pkin(8) * t746 - t632;
t599 = t710 * t969 + t1147;
t597 = -t710 * t973 + t1148;
t595 = -t673 * t970 + t674 * t974;
t594 = t673 * t974 + t674 * t970;
t593 = -pkin(4) * t1083 + t1059 - t1170;
t592 = -t669 * t970 + t670 * t974;
t591 = t669 * t974 + t670 * t970;
t590 = qJ(2) * t722 - (-pkin(2) * t964 - pkin(7) * t963 - pkin(1)) * t754;
t589 = -pkin(4) * t708 - t1058 + t1133;
t588 = t708 * t969 + t1147;
t586 = -t708 * t973 + t1148;
t581 = (-pkin(5) * t939 + t1112) * t867 + t1126;
t580 = -pkin(7) * t731 - t668 * t969 + t720 * t973;
t579 = -pkin(7) * t723 - t666 * t969 + t704 * t973;
t578 = -t645 * t970 + t646 * t974;
t577 = t645 * t974 + t646 * t970;
t576 = qJ(6) * t1070 - t983;
t567 = -pkin(5) * t1070 + t987;
t566 = -pkin(2) * t687 - pkin(3) * t842 - pkin(8) * t748 - t633;
t565 = (-t710 + t1037) * pkin(5) + t976;
t564 = pkin(5) * t1037 + t1127 + t976;
t553 = t614 * t964 + t632 * t963;
t552 = t614 * t963 - t632 * t964;
t551 = -pkin(7) * t687 + t1068 * t746 + t600 * t973;
t550 = qJ(6) * t1022 + t983;
t541 = t599 * t964 + t1150;
t539 = t599 * t963 - t1149;
t537 = pkin(5) * t1022 + t987;
t532 = -pkin(2) * t613 + pkin(3) * t793 - pkin(8) * t633;
t531 = t588 * t964 + t1150;
t529 = t588 * t963 - t1149;
t527 = -t1187 + t584;
t525 = -t1063 * t710 - t565 * t967 - t1132;
t524 = -pkin(5) * t1053 + t564 * t971 + t1169;
t523 = t1146 + t583;
t520 = -pkin(7) * t613 + (-pkin(8) * t973 + t1068) * t632;
t519 = -t593 * t968 + t644 * t972 + t1195;
t518 = -qJ(2) * t673 + t580 * t964 - t617 * t963;
t517 = t1004 * t710 + t971 * t565 + t1133;
t516 = t1170 + t967 * t564 + (pkin(4) + t1066) * t1083;
t515 = -qJ(2) * t669 + t579 * t964 - t616 * t963;
t514 = -t589 * t968 + t631 * t972 - t1157;
t513 = -pkin(4) * t703 + pkin(9) * t522;
t512 = (-t1082 - t1070) * qJ(6) + (-t979 + t908) * pkin(5) + t996 + t1146;
t511 = -pkin(1) * t731 + qJ(2) * t674 + t580 * t963 + t617 * t964;
t510 = -pkin(5) * t1085 + qJ(6) * t709 + t526;
t509 = t567 * t971 - t576 * t967;
t508 = t567 * t967 + t576 * t971;
t507 = -pkin(1) * t723 + qJ(2) * t670 + t579 * t963 + t616 * t964;
t506 = qJ(6) * t978 + (t820 + t1070) * pkin(5) - t987 + t1187;
t505 = -t521 - t1155;
t496 = t1145 + t522;
t495 = -t552 * t970 + t553 * t974;
t494 = t552 * t974 + t553 * t970;
t493 = -t539 * t970 + t541 * t974;
t491 = t539 * t974 + t541 * t970;
t489 = -t593 * t972 - t644 * t968 - t1200;
t488 = -t529 * t970 + t531 * t974;
t486 = t529 * t974 + t531 * t970;
t484 = -qJ(2) * t645 + t551 * t964 - t566 * t963;
t483 = -t537 * t967 + t550 * t971 - t1155;
t482 = -pkin(2) * t586 + pkin(3) * t708 - t589 * t972 - t631 * t968 - t1156;
t481 = -pkin(1) * t687 + qJ(2) * t646 + t551 * t963 + t566 * t964;
t480 = t537 * t971 + t550 * t967 + t1145;
t479 = t522 * t972 - t1062;
t478 = t522 * t968 + t1061;
t477 = t479 * t973 + t703 * t969;
t476 = t479 * t969 - t703 * t973;
t475 = -pkin(9) * t508 + (pkin(5) * t967 - t1063) * t581;
t474 = -t517 * t968 + t525 * t972 - t1157;
t473 = t519 * t973 - t527 * t969 + t1201;
t472 = -t516 * t968 + t524 * t972 - t1195;
t471 = -t508 * t968 + t509 * t972;
t470 = t508 * t972 + t509 * t968;
t469 = -qJ(2) * t552 + t520 * t964 - t532 * t963;
t468 = -pkin(7) * t586 + t514 * t973 - t523 * t969;
t463 = pkin(9) * t509 + (t1004 - t1066) * t581;
t462 = -pkin(2) * t597 + pkin(3) * t710 - t517 * t972 - t525 * t968 - t1156;
t461 = -pkin(1) * t613 + qJ(2) * t553 + t520 * t963 + t532 * t964;
t460 = -pkin(3) * t478 - pkin(4) * t521;
t459 = t471 * t973 + t581 * t969;
t458 = t471 * t969 - t581 * t973;
t457 = -t516 * t972 - t524 * t968 + t1200;
t456 = -t496 * t968 + t505 * t972 - t1167;
t455 = -pkin(7) * t597 + t474 * t973 - t512 * t969;
t454 = -pkin(8) * t478 - pkin(9) * t1061 - t513 * t968;
t453 = t477 * t964 + t478 * t963;
t452 = t477 * t963 - t478 * t964;
t451 = -t496 * t972 - t505 * t968 + t1177;
t450 = t472 * t973 - t506 * t969 - t1201;
t449 = -t480 * t968 + t483 * t972 - t1167;
t448 = t473 * t964 - t489 * t963 + t1209;
t447 = t456 * t973 - t526 * t969 - t1178;
t446 = -pkin(3) * t470 - pkin(4) * t508 - pkin(5) * t576 - qJ(6) * t567;
t445 = -t480 * t972 - t483 * t968 + t1177;
t444 = t473 * t963 + t489 * t964 - t1207;
t443 = -qJ(2) * t529 + t468 * t964 - t482 * t963;
t442 = t459 * t964 + t470 * t963;
t441 = t459 * t963 - t470 * t964;
t440 = -pkin(1) * t586 + qJ(2) * t531 + t468 * t963 + t482 * t964;
t439 = t449 * t973 - t510 * t969 - t1178;
t438 = -pkin(2) * t476 + pkin(3) * t703 - pkin(8) * t479 + pkin(9) * t1062 - t513 * t972;
t437 = -pkin(8) * t470 - t463 * t968 + t475 * t972;
t436 = -qJ(2) * t539 + t455 * t964 - t462 * t963;
t435 = -pkin(1) * t597 + qJ(2) * t541 + t455 * t963 + t462 * t964;
t434 = t450 * t964 - t457 * t963 - t1209;
t433 = -t452 * t970 + t453 * t974;
t432 = t452 * t974 + t453 * t970;
t431 = t450 * t963 + t457 * t964 + t1207;
t430 = -pkin(7) * t476 + t454 * t973 - t460 * t969;
t429 = t447 * t964 - t451 * t963 - t1188;
t428 = -pkin(2) * t458 + pkin(3) * t581 - pkin(8) * t471 - t463 * t972 - t475 * t968;
t427 = -t441 * t970 + t442 * t974;
t426 = t441 * t974 + t442 * t970;
t425 = t447 * t963 + t451 * t964 + t1182;
t424 = t439 * t964 - t445 * t963 - t1188;
t423 = t439 * t963 + t445 * t964 + t1182;
t422 = -pkin(7) * t458 + t437 * t973 - t446 * t969;
t421 = -qJ(2) * t452 + t430 * t964 - t438 * t963;
t420 = -pkin(1) * t476 + qJ(2) * t453 + t430 * t963 + t438 * t964;
t419 = -qJ(2) * t441 + t422 * t964 - t428 * t963;
t418 = -pkin(1) * t458 + qJ(2) * t442 + t422 * t963 + t428 * t964;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t930, -t931, 0, t880, 0, 0, 0, 0, 0, 0, -t1084, -t871, 0, t719, 0, 0, 0, 0, 0, 0, t762, t763, t807, t643, 0, 0, 0, 0, 0, 0, t592, t595, t578, t495, 0, 0, 0, 0, 0, 0, t488, t492, t1181, t433, 0, 0, 0, 0, 0, 0, t493, t1181, -t492, t427; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t931, -t930, 0, t879, 0, 0, 0, 0, 0, 0, t871, -t1084, 0, -t1125, 0, 0, 0, 0, 0, 0, t760, t761, t806, t642, 0, 0, 0, 0, 0, 0, t591, t594, t577, t494, 0, 0, 0, 0, 0, 0, t486, -t485, t1180, t432, 0, 0, 0, 0, 0, 0, t491, t1180, t485, t426; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1023, 0, 0, 0, 0, 0, 0, t881, t882, 0, -t754, 0, 0, 0, 0, 0, 0, t723, t731, t687, t613, 0, 0, 0, 0, 0, 0, t586, -t585, t1163, t476, 0, 0, 0, 0, 0, 0, t597, t1163, t585, t458; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t931, 0, -t930, 0, t994, -t901, -t879, -pkin(6) * t879, 0, 0, t871, 0, -t1084, 0, t1113, -t1122, t1125, pkin(6) * t1125 + qJ(2) * t1047 - t780 * t970, -t855 * t970 + t857 * t974, -t821 * t970 + t823 * t974, -t851 * t970 + t853 * t974, -t854 * t970 + t856 * t974, -t850 * t970 + t852 * t974, -t888 * t970 + t889 * t974, -pkin(6) * t760 - t671 * t970 + t681 * t974, -pkin(6) * t761 - t672 * t970 + t682 * t974, -pkin(6) * t806 - t725 * t970 + t726 * t974, -pkin(6) * t642 - t590 * t970 + t615 * t974, -t690 * t970 + t692 * t974, -t651 * t970 + t652 * t974, -t677 * t970 + t679 * t974, -t689 * t970 + t691 * t974, -t678 * t970 + t680 * t974, -t743 * t970 + t744 * t974, -pkin(6) * t591 - t507 * t970 + t515 * t974, -pkin(6) * t594 - t511 * t970 + t518 * t974, -pkin(6) * t577 - t481 * t970 + t484 * t974, -pkin(6) * t494 - t461 * t970 + t469 * t974, t1092, -t1205, t1173, t1142, t1203, t1140, -pkin(6) * t486 - t440 * t970 + t443 * t974, -t444 * t970 + t448 * t974 + t1211, -t425 * t970 + t429 * t974 - t1198, -pkin(6) * t432 - t420 * t970 + t421 * t974, t1092, t1173, t1205, t1140, -t1203, t1142, -pkin(6) * t491 - t435 * t970 + t436 * t974, -t423 * t970 + t424 * t974 - t1198, -t431 * t970 + t434 * t974 - t1211, -pkin(6) * t426 - t418 * t970 + t419 * t974; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t930, 0, t931, 0, t901, t994, t880, pkin(6) * t880, 0, 0, t1084, 0, t871, 0, t1122, t1113, t719, pkin(6) * t719 + qJ(2) * t1048 + t780 * t974, t855 * t974 + t857 * t970, t821 * t974 + t823 * t970, t851 * t974 + t853 * t970, t854 * t974 + t856 * t970, t850 * t974 + t852 * t970, t888 * t974 + t889 * t970, pkin(6) * t762 + t671 * t974 + t681 * t970, pkin(6) * t763 + t672 * t974 + t682 * t970, pkin(6) * t807 + t725 * t974 + t726 * t970, pkin(6) * t643 + t590 * t974 + t615 * t970, t690 * t974 + t692 * t970, t651 * t974 + t652 * t970, t677 * t974 + t679 * t970, t689 * t974 + t691 * t970, t678 * t974 + t680 * t970, t743 * t974 + t744 * t970, pkin(6) * t592 + t507 * t974 + t515 * t970, pkin(6) * t595 + t511 * t974 + t518 * t970, pkin(6) * t578 + t481 * t974 + t484 * t970, pkin(6) * t495 + t461 * t974 + t469 * t970, t1091, t1206, t1172, t1141, -t1204, t1139, pkin(6) * t488 + t440 * t974 + t443 * t970, t444 * t974 + t448 * t970 + t1210, t425 * t974 + t429 * t970 + t1197, pkin(6) * t433 + t420 * t974 + t421 * t970, t1091, t1172, -t1206, t1139, t1204, t1141, pkin(6) * t493 + t435 * t974 + t436 * t970, t423 * t974 + t424 * t970 + t1197, t431 * t974 + t434 * t970 - t1210, pkin(6) * t427 + t418 * t974 + t419 * t970; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t936, t937, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t927 - t868, -pkin(1) * t926 - t869, 0, -pkin(1) * t791, t989 * t969, t922 * t973 + t925 * t969, t941 * t973 + t1029, -t988 * t973, t943 * t969 + t1030, 0, pkin(1) * t829 + pkin(2) * t925 + pkin(7) * t884 - t1040, pkin(1) * t830 - pkin(2) * t922 + pkin(7) * t886 + t1041, pkin(1) * t875 + pkin(2) * t932 + pkin(7) * t929 + t755, pkin(1) * t721 - pkin(2) * t847 + pkin(7) * t755, t811 * t969 - t1008, t747 * t969 + t878 * t973, t799 * t969 + t817 * t973, t809 * t969 + t1008, t800 * t969 + t812 * t973, t826 * t969 + t914 * t973, pkin(1) * t669 - pkin(2) * t778 + pkin(7) * t724 + t666 * t973 + t704 * t969, pkin(1) * t673 - pkin(2) * t784 + pkin(7) * t732 + t668 * t973 + t720 * t969, pkin(1) * t645 + pkin(7) * t688 + t969 * t600 + (-pkin(2) - t1067) * t746, pkin(1) * t552 + pkin(7) * t614 + (-pkin(2) + t995) * t632, t993, t1183, t1144, t1097, -t1184, t1099, pkin(1) * t529 + pkin(7) * t588 + t514 * t969 + t523 * t973 - t1159, t519 * t969 + t527 * t973 - t1208, t456 * t969 + t526 * t973 + t1185, pkin(1) * t452 - pkin(2) * t478 + pkin(7) * t477 + t454 * t969 + t460 * t973, t993, t1144, -t1183, t1099, t1184, t1097, pkin(1) * t539 + pkin(7) * t599 + t474 * t969 + t512 * t973 - t1159, t449 * t969 + t510 * t973 + t1185, t472 * t969 + t506 * t973 + t1208, pkin(1) * t441 - pkin(2) * t470 + pkin(7) * t459 + t437 * t969 + t446 * t973;];
tauB_reg  = t1;
