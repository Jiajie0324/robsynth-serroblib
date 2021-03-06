% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RRRRP2
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:12
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RRRRP2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRP2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRP2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP2_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:12:01
% EndTime: 2020-01-03 12:12:11
% DurationCPUTime: 10.80s
% Computational Cost: add. (64133->544), mult. (82998->687), div. (0->0), fcn. (53268->8), ass. (0->385)
t1034 = qJDD(3) + qJDD(4);
t1039 = sin(qJ(4));
t1043 = cos(qJ(4));
t1037 = qJD(1) + qJD(2);
t1044 = cos(qJ(3));
t1092 = t1037 * t1044;
t1040 = sin(qJ(3));
t1093 = t1037 * t1040;
t980 = t1039 * t1093 - t1043 * t1092;
t982 = t1039 * t1092 + t1043 * t1093;
t934 = t982 * t980;
t1147 = t934 - t1034;
t1156 = t1147 * pkin(4);
t1042 = sin(qJ(1));
t1046 = cos(qJ(1));
t1033 = t1037 ^ 2;
t1035 = qJDD(1) + qJDD(2);
t1041 = sin(qJ(2));
t1045 = cos(qJ(2));
t1001 = t1033 * t1041 - t1035 * t1045;
t1146 = pkin(6) * t1001 - g(1) * t1041;
t998 = t1033 * t1045 + t1035 * t1041;
t938 = -t1001 * t1046 - t1042 * t998;
t976 = pkin(6) * t998 - g(1) * t1045;
t1155 = -pkin(5) * t938 + t1042 * t976 + t1046 * t1146;
t1145 = t1001 * t1042 - t1046 * t998;
t1154 = pkin(5) * t1145 + t1042 * t1146 - t1046 * t976;
t1096 = t1033 * t1040;
t1101 = qJD(3) * t1037;
t1019 = g(2) * t1042 - t1046 * g(3);
t1048 = qJD(1) ^ 2;
t1005 = -pkin(1) * t1048 - t1019;
t1020 = g(2) * t1046 + g(3) * t1042;
t1052 = qJDD(1) * pkin(1) - t1020;
t943 = t1045 * t1005 + t1041 * t1052;
t931 = -t1033 * pkin(2) + t1035 * pkin(7) + t943;
t1109 = t1040 * t931;
t1022 = qJD(3) * t1092;
t1091 = t1040 * t1035;
t992 = t1022 + t1091;
t1049 = qJDD(3) * pkin(3) - pkin(8) * t992 - t1109 + (pkin(3) * t1096 + pkin(8) * t1101 - g(1)) * t1044;
t1008 = qJD(3) * pkin(3) - pkin(8) * t1093;
t1140 = t1044 ^ 2;
t1024 = t1140 * t1033;
t1075 = qJD(3) * t1093;
t1090 = t1044 * t1035;
t1055 = -t1075 + t1090;
t910 = -t1040 * g(1) + t1044 * t931;
t863 = -pkin(3) * t1024 + pkin(8) * t1055 - qJD(3) * t1008 + t910;
t819 = t1039 * t863 - t1043 * t1049;
t1036 = qJD(3) + qJD(4);
t968 = t1036 * t980;
t1051 = qJ(5) * t968 + 0.2e1 * qJD(5) * t982 + t1156 + t819;
t897 = -t980 * qJD(4) + t1039 * t1055 + t1043 * t992;
t777 = qJ(5) * t897 + t1051;
t1050 = -t777 - t1156;
t1104 = t1043 * t1147;
t1032 = t1036 ^ 2;
t978 = t980 ^ 2;
t917 = -t1032 - t978;
t854 = t1039 * t917 - t1104;
t853 = pkin(3) * t854;
t1153 = t1050 + t853;
t942 = t1005 * t1041 - t1045 * t1052;
t1072 = t1041 * t942 + t1045 * t943;
t890 = t1041 * t943 - t1045 * t942;
t1102 = t1046 * t890;
t1151 = t1042 * t1072 + t1102;
t1108 = t1042 * t890;
t1150 = t1046 * t1072 - t1108;
t1111 = t1039 * t1147;
t909 = g(1) * t1044 + t1109;
t851 = t1040 * t909 + t1044 * t910;
t1144 = -t968 + t897;
t1073 = t1039 * t992 - t1043 * t1055;
t870 = (qJD(4) - t1036) * t982 + t1073;
t979 = t982 ^ 2;
t855 = t1043 * t917 + t1111;
t810 = t1040 * t855 + t1044 * t854;
t1139 = pkin(2) * t810;
t923 = t934 + t1034;
t1112 = t1039 * t923;
t958 = -t979 - t1032;
t879 = t1043 * t958 - t1112;
t1105 = t1043 * t923;
t880 = -t1039 * t958 - t1105;
t831 = t1040 * t880 + t1044 * t879;
t1138 = pkin(2) * t831;
t820 = t1039 * t1049 + t1043 * t863;
t768 = t1039 * t820 - t1043 * t819;
t1137 = pkin(3) * t768;
t874 = t968 + t897;
t825 = -t1039 * t870 - t1043 * t874;
t827 = t1039 * t874 - t1043 * t870;
t774 = -t1040 * t825 + t1044 * t827;
t900 = -t978 - t979;
t762 = t1041 * t774 - t1045 * t900;
t763 = t1041 * t900 + t1045 * t774;
t1136 = pkin(5) * (t1042 * t762 - t1046 * t763);
t811 = -t1040 * t854 + t1044 * t855;
t869 = (qJD(4) + t1036) * t982 + t1073;
t782 = t1041 * t811 - t1045 * t869;
t783 = t1041 * t869 + t1045 * t811;
t1135 = pkin(5) * (t1042 * t782 - t1046 * t783);
t832 = -t1040 * t879 + t1044 * t880;
t789 = t1041 * t832 - t1045 * t1144;
t790 = t1041 * t1144 + t1045 * t832;
t1134 = pkin(5) * (t1042 * t789 - t1046 * t790);
t1133 = pkin(6) * t762;
t1132 = pkin(6) * t782;
t1131 = pkin(6) * t789;
t772 = t1040 * t827 + t1044 * t825;
t1130 = pkin(7) * t772;
t1129 = pkin(7) * t810;
t1128 = pkin(7) * t831;
t1127 = pkin(8) * t825;
t1126 = pkin(8) * t854;
t1125 = pkin(8) * t879;
t1121 = -pkin(2) * t900 + pkin(7) * t774;
t1120 = -pkin(2) * t869 + pkin(7) * t811;
t1119 = -pkin(2) * t1144 + pkin(7) * t832;
t930 = -t1035 * pkin(2) - t1033 * pkin(7) + t942;
t1118 = -pkin(2) * t930 + pkin(7) * t851;
t1117 = qJD(5) * t980;
t1115 = t1036 * t982;
t1114 = t1039 * t777;
t868 = -t1055 * pkin(3) - pkin(8) * t1024 + t1008 * t1093 + t930;
t1113 = t1039 * t868;
t1110 = t1040 * t768;
t913 = t1040 * t930;
t1107 = t1043 * t777;
t1106 = t1043 * t868;
t1103 = t1044 * t768;
t914 = t1044 * t930;
t993 = -0.2e1 * t1075 + t1090;
t945 = t1044 * t993;
t1018 = t1044 * t1096;
t1006 = qJDD(3) + t1018;
t1100 = t1006 * t1040;
t1007 = qJDD(3) - t1018;
t1099 = t1007 * t1040;
t1098 = t1007 * t1044;
t1038 = t1040 ^ 2;
t1097 = t1033 * t1038;
t1095 = t1036 * t1039;
t1094 = t1036 * t1043;
t1088 = t1038 + t1140;
t876 = pkin(3) * t879;
t1087 = t876 - t820;
t1047 = qJD(3) ^ 2;
t1012 = -t1047 - t1097;
t957 = -t1012 * t1040 - t1098;
t991 = 0.2e1 * t1022 + t1091;
t1086 = -pkin(2) * t991 + pkin(7) * t957 + t913;
t1014 = -t1024 - t1047;
t955 = t1014 * t1044 - t1100;
t1085 = pkin(2) * t993 + pkin(7) * t955 - t914;
t1084 = t1041 * t934;
t1083 = t1045 * t934;
t1082 = -pkin(1) * t772 + pkin(6) * t763;
t1081 = -pkin(1) * t810 + pkin(6) * t783;
t1080 = -pkin(1) * t831 + pkin(6) * t790;
t823 = pkin(3) * t825;
t739 = -pkin(2) * t772 - t823;
t896 = -qJD(4) * t982 - t1073;
t961 = pkin(4) * t1036 - qJ(5) * t982;
t1059 = t978 * pkin(4) - t896 * qJ(5) + t1036 * t961 - t820;
t969 = -0.2e1 * t1117;
t778 = t969 - t1059;
t722 = t1039 * t778 - t1107;
t776 = pkin(4) * t777;
t1079 = pkin(3) * t722 - t776;
t1078 = -pkin(3) * t900 + pkin(8) * t827;
t1077 = -pkin(3) * t869 + pkin(8) * t855;
t1076 = -pkin(3) * t1144 + pkin(8) * t880;
t1009 = -t1042 * qJDD(1) - t1046 * t1048;
t1074 = pkin(5) * t1009 + t1046 * g(1);
t769 = t1039 * t819 + t1043 * t820;
t723 = t1043 * t778 + t1114;
t806 = -t896 * pkin(4) - t978 * qJ(5) + t961 * t982 + qJDD(5) + t868;
t738 = -pkin(4) * t806 + qJ(5) * t778;
t687 = -pkin(3) * t806 + pkin(8) * t723 + qJ(5) * t1114 + t1043 * t738;
t694 = -pkin(8) * t722 + qJ(5) * t1107 - t1039 * t738;
t701 = -t1040 * t722 + t1044 * t723;
t1071 = -pkin(2) * t806 + pkin(7) * t701 + t1040 * t694 + t1044 * t687;
t756 = -pkin(4) * t900 - qJ(5) * t870 + t778;
t764 = (t874 + t897) * qJ(5) + t1051;
t707 = t1039 * t764 + t1043 * t756 + t1078;
t709 = -t1039 * t756 + t1043 * t764 - t1127;
t1070 = t1040 * t709 + t1044 * t707 + t1121;
t727 = t1078 + t769;
t736 = -t768 - t1127;
t1069 = t1040 * t736 + t1044 * t727 + t1121;
t775 = -pkin(4) * t869 + qJ(5) * t917 - t806;
t733 = qJ(5) * t1111 + t1043 * t775 + t1077;
t747 = qJ(5) * t1104 - t1039 * t775 - t1126;
t1068 = t1040 * t747 + t1044 * t733 + t1120;
t798 = -qJ(5) * t958 + t806;
t843 = -pkin(4) * t1144 - qJ(5) * t923;
t737 = t1039 * t798 + t1043 * t843 + t1076;
t757 = -t1039 * t843 + t1043 * t798 - t1125;
t1067 = t1040 * t757 + t1044 * t737 + t1119;
t785 = t1077 - t1106;
t818 = t1113 - t1126;
t1066 = t1040 * t818 + t1044 * t785 + t1120;
t793 = t1076 + t1113;
t829 = t1106 - t1125;
t1065 = t1040 * t829 + t1044 * t793 + t1119;
t1002 = t1024 + t1097;
t996 = t1088 * t1035;
t1064 = pkin(2) * t1002 + pkin(7) * t996 + t851;
t1063 = -t1042 * t1019 - t1020 * t1046;
t1062 = t1041 * t1018;
t1061 = t1045 * t1018;
t1060 = t819 - t853;
t849 = t1040 * t910 - t1044 * t909;
t1058 = t1019 * t1046 - t1020 * t1042;
t1057 = pkin(4) * t958 + t1059;
t720 = t1044 * t769 - t1110;
t758 = -pkin(3) * t868 + pkin(8) * t769;
t1056 = -pkin(2) * t868 + pkin(7) * t720 - pkin(8) * t1110 + t1044 * t758;
t1053 = t876 + t1057;
t1013 = t1024 - t1047;
t1011 = t1047 - t1097;
t1010 = qJDD(1) * t1046 - t1042 * t1048;
t1003 = -t1024 + t1097;
t997 = t1044 * t1006;
t989 = pkin(5) * t1010 + g(1) * t1042;
t988 = t1088 * t1101;
t970 = 0.2e1 * t1117;
t965 = -t979 + t1032;
t964 = t978 - t1032;
t963 = qJDD(3) * t1041 + t1045 * t988;
t962 = -qJDD(3) * t1045 + t1041 * t988;
t960 = -t1038 * t1101 + t1044 * t992;
t959 = -t1040 * t1055 - t1140 * t1101;
t956 = -t1011 * t1040 + t997;
t954 = t1013 * t1044 - t1099;
t953 = t1012 * t1044 - t1099;
t952 = t1011 * t1044 + t1100;
t951 = t1014 * t1040 + t997;
t950 = t1013 * t1040 + t1098;
t946 = (t992 + t1022) * t1040;
t939 = -t1002 * t1041 + t1045 * t996;
t937 = t1002 * t1045 + t1041 * t996;
t936 = -t1040 * t991 + t945;
t935 = t1040 * t993 + t1044 * t991;
t932 = t979 - t978;
t929 = t1041 * t1091 + t1045 * t956;
t928 = t1041 * t1090 + t1045 * t954;
t927 = t1041 * t956 - t1045 * t1091;
t926 = t1041 * t954 - t1045 * t1090;
t921 = t1045 * t960 - t1062;
t920 = t1045 * t959 + t1062;
t919 = t1041 * t960 + t1061;
t918 = t1041 * t959 - t1061;
t912 = -pkin(1) * t998 - t943;
t911 = -pkin(1) * t1001 - t942;
t908 = t1041 * t991 + t1045 * t957;
t907 = -t1041 * t993 + t1045 * t955;
t906 = t1041 * t957 - t1045 * t991;
t905 = t1041 * t955 + t1045 * t993;
t904 = (t1039 * t982 - t1043 * t980) * t1036;
t903 = (-t1039 * t980 - t1043 * t982) * t1036;
t899 = t1003 * t1041 + t1045 * t936;
t898 = -t1003 * t1045 + t1041 * t936;
t888 = pkin(1) * t890;
t887 = pkin(1) * g(1) + pkin(6) * t1072;
t886 = t1043 * t964 - t1112;
t885 = -t1039 * t965 - t1104;
t884 = t1039 * t964 + t1105;
t883 = t1043 * t965 - t1111;
t882 = -pkin(7) * t953 + t914;
t881 = -pkin(7) * t951 + t913;
t878 = -pkin(2) * t953 + t910;
t877 = -pkin(2) * t951 + t909;
t865 = pkin(4) * t874;
t862 = t1043 * t897 - t982 * t1095;
t861 = t1039 * t897 + t982 * t1094;
t860 = -t1039 * t896 + t980 * t1094;
t859 = t1043 * t896 + t980 * t1095;
t847 = -t1040 * t903 + t1044 * t904;
t846 = t1040 * t904 + t1044 * t903;
t845 = t1034 * t1041 + t1045 * t847;
t844 = -t1034 * t1045 + t1041 * t847;
t842 = pkin(1) * t905 + t1085;
t841 = pkin(1) * t906 + t1086;
t840 = -pkin(6) * t937 - t1045 * t849;
t839 = pkin(6) * t939 - t1041 * t849;
t838 = t1041 * t930 + t1045 * t851;
t837 = t1041 * t851 - t1045 * t930;
t836 = -t1040 * t884 + t1044 * t886;
t835 = -t1040 * t883 + t1044 * t885;
t834 = t1040 * t886 + t1044 * t884;
t833 = t1040 * t885 + t1044 * t883;
t826 = -t1039 * t1144 - t1043 * t869;
t824 = -t1039 * t869 + t1043 * t1144;
t821 = pkin(1) * t937 + t1064;
t815 = -t1040 * t861 + t1044 * t862;
t814 = -t1040 * t859 + t1044 * t860;
t813 = t1040 * t862 + t1044 * t861;
t812 = t1040 * t860 + t1044 * t859;
t808 = -pkin(6) * t906 - t1041 * t878 + t1045 * t882;
t807 = -pkin(6) * t905 - t1041 * t877 + t1045 * t881;
t804 = t1045 * t815 + t1084;
t803 = t1045 * t814 - t1084;
t802 = t1041 * t815 - t1083;
t801 = t1041 * t814 + t1083;
t800 = -pkin(1) * t953 + pkin(6) * t908 + t1041 * t882 + t1045 * t878;
t799 = -pkin(1) * t951 + pkin(6) * t907 + t1041 * t881 + t1045 * t877;
t797 = -t1041 * t870 + t1045 * t836;
t796 = t1041 * t874 + t1045 * t835;
t795 = t1041 * t836 + t1045 * t870;
t794 = t1041 * t835 - t1045 * t874;
t792 = t1042 * t844 - t1046 * t845;
t791 = t1042 * t845 + t1046 * t844;
t788 = pkin(1) * t789;
t781 = pkin(1) * t782;
t779 = pkin(1) * t837 + t1118;
t773 = -t1040 * t824 + t1044 * t826;
t771 = t1040 * t826 + t1044 * t824;
t767 = -pkin(6) * t837 + (pkin(2) * t1041 - pkin(7) * t1045) * t849;
t766 = t1041 * t932 + t1045 * t773;
t765 = t1041 * t773 - t1045 * t932;
t761 = pkin(1) * t762;
t759 = -t1087 - t1138;
t753 = t1042 * t802 - t1046 * t804;
t752 = t1042 * t801 - t1046 * t803;
t751 = t1042 * t804 + t1046 * t802;
t750 = t1042 * t803 + t1046 * t801;
t749 = t1060 - t1139;
t748 = pkin(6) * t838 + (-pkin(2) * t1045 - pkin(7) * t1041 - pkin(1)) * t849;
t745 = t1042 * t795 - t1046 * t797;
t744 = t1042 * t794 - t1046 * t796;
t743 = t1042 * t797 + t1046 * t795;
t742 = t1042 * t796 + t1046 * t794;
t740 = pkin(5) * (t1042 * t790 + t1046 * t789);
t731 = pkin(5) * (t1042 * t783 + t1046 * t782);
t729 = -t1040 * t793 + t1044 * t829 - t1128;
t728 = -t1053 + t969 - t1138;
t725 = t739 + t865;
t724 = -t1040 * t785 + t1044 * t818 - t1129;
t721 = -t1139 - t1153;
t719 = t1040 * t769 + t1103;
t717 = t1042 * t765 - t1046 * t766;
t716 = t1042 * t766 + t1046 * t765;
t715 = t1041 * t868 + t1045 * t720;
t714 = t1041 * t720 - t1045 * t868;
t712 = pkin(5) * (t1042 * t763 + t1046 * t762);
t711 = t788 + t1065;
t710 = t781 + t1066;
t705 = -pkin(2) * t719 - t1137;
t704 = -t1040 * t737 + t1044 * t757 - t1128;
t703 = -t1040 * t733 + t1044 * t747 - t1129;
t702 = -t1041 * t759 + t1045 * t729 - t1131;
t700 = t1040 * t723 + t1044 * t722;
t698 = -t1041 * t749 + t1045 * t724 - t1132;
t697 = t1041 * t729 + t1045 * t759 + t1080;
t696 = t788 + t1067;
t695 = -t1040 * t727 + t1044 * t736 - t1130;
t692 = t1041 * t806 + t1045 * t701;
t691 = t1041 * t701 - t1045 * t806;
t690 = -pkin(7) * t719 - pkin(8) * t1103 - t1040 * t758;
t689 = t1041 * t724 + t1045 * t749 + t1081;
t688 = t781 + t1068;
t685 = t761 + t1069;
t684 = -t1041 * t728 + t1045 * t704 - t1131;
t683 = t1041 * t704 + t1045 * t728 + t1080;
t682 = -t1041 * t721 + t1045 * t703 - t1132;
t681 = -pkin(2) * t700 - t1079;
t680 = t1041 * t703 + t1045 * t721 + t1081;
t679 = -t1041 * t739 + t1045 * t695 - t1133;
t678 = pkin(1) * t714 + t1056;
t677 = -t1040 * t707 + t1044 * t709 - t1130;
t676 = t1041 * t695 + t1045 * t739 + t1082;
t675 = t761 + t1070;
t674 = -pkin(6) * t714 - t1041 * t705 + t1045 * t690;
t673 = -t1041 * t725 + t1045 * t677 - t1133;
t672 = t1041 * t677 + t1045 * t725 + t1082;
t671 = -pkin(1) * t719 + pkin(6) * t715 + t1041 * t690 + t1045 * t705;
t670 = -pkin(7) * t700 - t1040 * t687 + t1044 * t694;
t669 = pkin(1) * t691 + t1071;
t668 = -pkin(6) * t691 - t1041 * t681 + t1045 * t670;
t667 = -pkin(1) * t700 + pkin(6) * t692 + t1041 * t670 + t1045 * t681;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), -t1020, t1019, 0, 0, 0, 0, 0, 0, 0, t1035, t911, t912, 0, t888, t946, t935, t952, t945, t950, 0, t842, t841, t821, t779, t813, t771, t833, t812, t834, t846, t710, t711, t685, t678, t813, t771, t833, t812, t834, t846, t688, t696, t675, t669; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t1009, 0, t1010, 0, t1074, -t989, -t1058, -pkin(5) * t1058, 0, 0, -t1145, 0, t938, 0, t1154, t1155, t1150, pkin(5) * t1150 - pkin(6) * t1108 + t1046 * t887, t1042 * t921 + t1046 * t919, t1042 * t899 + t1046 * t898, t1042 * t929 + t1046 * t927, t1042 * t920 + t1046 * t918, t1042 * t928 + t1046 * t926, t1042 * t963 + t1046 * t962, t1042 * t807 + t1046 * t799 - pkin(5) * (t1042 * t905 - t1046 * t907), t1042 * t808 + t1046 * t800 - pkin(5) * (t1042 * t906 - t1046 * t908), t1042 * t840 + t1046 * t839 - pkin(5) * (t1042 * t937 - t1046 * t939), t1042 * t767 + t1046 * t748 - pkin(5) * (t1042 * t837 - t1046 * t838), t751, t716, t742, t750, t743, t791, t1042 * t698 + t1046 * t689 - t1135, t1042 * t702 + t1046 * t697 - t1134, t1042 * t679 + t1046 * t676 - t1136, t1042 * t674 + t1046 * t671 - pkin(5) * (t1042 * t714 - t1046 * t715), t751, t716, t742, t750, t743, t791, t1042 * t682 + t1046 * t680 - t1135, t1042 * t684 + t1046 * t683 - t1134, t1042 * t673 + t1046 * t672 - t1136, t1042 * t668 + t1046 * t667 - pkin(5) * (t1042 * t691 - t1046 * t692); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t1010, 0, -t1009, 0, t989, t1074, t1063, pkin(5) * t1063, 0, 0, -t938, 0, -t1145, 0, -t1155, t1154, t1151, pkin(5) * t1151 + pkin(6) * t1102 + t1042 * t887, t1042 * t919 - t1046 * t921, t1042 * t898 - t1046 * t899, t1042 * t927 - t1046 * t929, t1042 * t918 - t1046 * t920, t1042 * t926 - t1046 * t928, t1042 * t962 - t1046 * t963, -t1046 * t807 + t1042 * t799 + pkin(5) * (t1042 * t907 + t1046 * t905), -t1046 * t808 + t1042 * t800 + pkin(5) * (t1042 * t908 + t1046 * t906), -t1046 * t840 + t1042 * t839 + pkin(5) * (t1042 * t939 + t1046 * t937), -t1046 * t767 + t1042 * t748 + pkin(5) * (t1042 * t838 + t1046 * t837), t753, t717, t744, t752, t745, t792, t1042 * t689 - t1046 * t698 + t731, t1042 * t697 - t1046 * t702 + t740, t1042 * t676 - t1046 * t679 + t712, -t1046 * t674 + t1042 * t671 + pkin(5) * (t1042 * t715 + t1046 * t714), t753, t717, t744, t752, t745, t792, t1042 * t680 - t1046 * t682 + t731, t1042 * t683 - t1046 * t684 + t740, t1042 * t672 - t1046 * t673 + t712, -t1046 * t668 + t1042 * t667 + pkin(5) * (t1042 * t692 + t1046 * t691); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1048, 0, 0, -g(1), t1020, 0, 0, 0, -t1001, 0, -t998, 0, t1146, t976, -t890, -pkin(6) * t890, t921, t899, t929, t920, t928, t963, t807, t808, t840, t767, t804, t766, t796, t803, t797, t845, t698, t702, t679, t674, t804, t766, t796, t803, t797, t845, t682, t684, t673, t668; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1048, 0, qJDD(1), 0, g(1), 0, -t1019, 0, 0, 0, t998, 0, -t1001, 0, -t976, t1146, t1072, t887, t919, t898, t927, t918, t926, t962, t799, t800, t839, t748, t802, t765, t794, t801, t795, t844, t689, t697, t676, t671, t802, t765, t794, t801, t795, t844, t680, t683, t672, t667; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1020, t1019, 0, 0, 0, 0, 0, 0, 0, t1035, t911, t912, 0, t888, t946, t935, t952, t945, t950, 0, t842, t841, t821, t779, t813, t771, t833, t812, t834, t846, t710, t711, t685, t678, t813, t771, t833, t812, t834, t846, t688, t696, t675, t669; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1035, 0, -t1033, 0, 0, -g(1), t942, 0, t960, t936, t956, t959, t954, t988, t881, t882, -t849, -pkin(7) * t849, t815, t773, t835, t814, t836, t847, t724, t729, t695, t690, t815, t773, t835, t814, t836, t847, t703, t704, t677, t670; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1033, 0, t1035, 0, g(1), 0, t943, 0, t1018, -t1003, -t1091, -t1018, -t1090, -qJDD(3), t877, t878, 0, -pkin(2) * t849, -t934, -t932, -t874, t934, t870, -t1034, t749, t759, t739, t705, -t934, -t932, -t874, t934, t870, -t1034, t721, t728, t725, t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1035, -t942, -t943, 0, 0, t946, t935, t952, t945, t950, 0, t1085, t1086, t1064, t1118, t813, t771, t833, t812, t834, t846, t1066, t1065, t1069, t1056, t813, t771, t833, t812, t834, t846, t1068, t1067, t1070, t1071; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t992, t993, t1006, -t1022, t1013, t1022, 0, t930, t909, 0, t862, t826, t885, t860, t886, t904, t818, t829, t736, -pkin(8) * t768, t862, t826, t885, t860, t886, t904, t747, t757, t709, t694; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1075, t991, t1011, t1055, t1007, -t1075, -t930, 0, t910, 0, t861, t824, t883, t859, t884, t903, t785, t793, t727, t758, t861, t824, t883, t859, t884, t903, t733, t737, t707, t687; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1018, t1003, t1091, t1018, t1090, qJDD(3), -t909, -t910, 0, 0, t934, t932, t874, -t934, -t870, t1034, -t1060, t1087, t823, t1137, t934, t932, t874, -t934, -t870, t1034, t1153, t970 + t1053, -t865 + t823, t1079; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t897, -t869, -t1147, t968, t964, -t968, 0, t868, t819, 0, t897, -t869, -t1147, t968, t964, -t968, qJ(5) * t1147, t798, t764, qJ(5) * t777; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1115, t1144, t965, t896, t923, -t1115, -t868, 0, t820, 0, t1115, t1144, t965, t896, t923, -t1115, t775, t843, t756, t738; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t934, t932, t874, -t934, -t870, t1034, -t819, -t820, 0, 0, t934, t932, t874, -t934, -t870, t1034, t1050, t970 + t1057, -t865, -t776; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t897, -t869, -t1147, t968, t964, -t968, 0, t806, t777, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1115, t1144, t965, t896, t923, -t1115, -t806, 0, t778, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t934, t932, t874, -t934, -t870, t1034, -t777, -t778, 0, 0;];
m_new_reg = t1;
