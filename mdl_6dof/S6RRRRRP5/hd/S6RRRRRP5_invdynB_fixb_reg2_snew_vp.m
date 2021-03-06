% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRRRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 05:06
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRRRP5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP5_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP5_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP5_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP5_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 05:04:00
% EndTime: 2019-05-08 05:05:05
% DurationCPUTime: 33.87s
% Computational Cost: add. (261169->798), mult. (537641->1172), div. (0->0), fcn. (400685->10), ass. (0->580)
t1000 = sin(qJ(4));
t1005 = cos(qJ(4));
t1001 = sin(qJ(3));
t1006 = cos(qJ(3));
t1002 = sin(qJ(2));
t1057 = qJD(1) * t1002;
t957 = -t1006 * qJD(2) + t1001 * t1057;
t958 = qJD(2) * t1001 + t1006 * t1057;
t1033 = t1000 * t958 + t1005 * t957;
t920 = -t1000 * t957 + t1005 * t958;
t1024 = t920 * t1033;
t1007 = cos(qJ(2));
t1052 = t1007 * qJDD(1);
t989 = qJD(2) * t1057;
t963 = -t989 + t1052;
t954 = -qJDD(3) + t963;
t950 = -qJDD(4) + t954;
t1134 = -t950 - t1024;
t1137 = t1000 * t1134;
t1136 = t1005 * t1134;
t1004 = cos(qJ(5));
t999 = sin(qJ(5));
t865 = t1004 * t1033 + t920 * t999;
t867 = t1004 * t920 - t1033 * t999;
t1100 = t865 * t867;
t945 = -qJDD(5) + t950;
t1036 = t945 + t1100;
t1135 = t1036 * pkin(5);
t1056 = qJD(1) * t1007;
t1038 = qJD(2) * t1056;
t1055 = qJDD(1) * t1002;
t962 = t1038 + t1055;
t1020 = t1006 * qJDD(2) - t1001 * t962;
t1011 = qJD(3) * t958 - t1020;
t1049 = t957 * qJD(3) - t1001 * qJDD(2) - t1006 * t962;
t1034 = -t1000 * t1049 + t1005 * t1011;
t1017 = qJD(4) * t920 + t1034;
t1032 = t1033 ^ 2;
t1124 = t957 ^ 2;
t1105 = t1007 * g(3);
t1123 = qJD(2) ^ 2;
t1009 = qJD(1) ^ 2;
t1003 = sin(qJ(1));
t1008 = cos(qJ(1));
t976 = g(1) * t1008 + g(2) * t1003;
t948 = -pkin(1) * t1009 + qJDD(1) * pkin(7) - t976;
t1106 = pkin(2) * t1007;
t1027 = -pkin(8) * t1002 - t1106;
t960 = t1027 * qJD(1);
t896 = -qJDD(2) * pkin(2) - t1123 * pkin(8) + (qJD(1) * t960 + t948) * t1002 + t1105;
t986 = -qJD(3) + t1056;
t937 = -pkin(3) * t986 - pkin(9) * t958;
t821 = t1011 * pkin(3) - t1124 * pkin(9) + t958 * t937 + t896;
t978 = -qJD(4) + t986;
t900 = -pkin(4) * t978 - pkin(10) * t920;
t733 = t1017 * pkin(4) - t1032 * pkin(10) + t920 * t900 + t821;
t836 = -qJD(4) * t1033 - t1000 * t1011 - t1005 * t1049;
t1037 = t1004 * t1017 + t999 * t836;
t755 = -qJD(5) * t867 - t1037;
t971 = -qJD(5) + t978;
t845 = -pkin(5) * t971 - qJ(6) * t867;
t863 = t865 ^ 2;
t655 = -t755 * pkin(5) - t863 * qJ(6) + t867 * t845 + qJDD(6) + t733;
t942 = t957 * t986;
t886 = t942 + t1049;
t756 = -t865 * qJD(5) + t1004 * t836 - t1017 * t999;
t848 = t865 * t971;
t1133 = t848 + t756;
t907 = t1033 * t978;
t812 = t907 - t836;
t1132 = t907 + t836;
t1101 = t1036 * t999;
t884 = t942 - t1049;
t1097 = t957 * t958;
t1012 = -t954 - t1097;
t1131 = t1001 * t1012;
t1074 = t1004 * t1036;
t1130 = t1006 * t1012;
t1129 = t755 * qJ(6) - 0.2e1 * qJD(6) * t865 + t971 * t845;
t1025 = t962 + t1038;
t1026 = -t963 + t989;
t975 = t1003 * g(1) - t1008 * g(2);
t947 = qJDD(1) * pkin(1) + t1009 * pkin(7) + t975;
t880 = pkin(2) * t1026 - pkin(8) * t1025 - t947;
t936 = -g(3) * t1002 + t1007 * t948;
t897 = -pkin(2) * t1123 + qJDD(2) * pkin(8) + t1056 * t960 + t936;
t837 = t1001 * t897 - t1006 * t880;
t785 = t1012 * pkin(3) + pkin(9) * t886 - t837;
t838 = t1001 * t880 + t1006 * t897;
t789 = -pkin(3) * t1124 - pkin(9) * t1011 + t986 * t937 + t838;
t719 = t1000 * t789 - t1005 * t785;
t686 = pkin(4) * t1134 + pkin(10) * t812 - t719;
t720 = t1000 * t785 + t1005 * t789;
t695 = -pkin(4) * t1032 - pkin(10) * t1017 + t978 * t900 + t720;
t636 = -t1004 * t686 + t999 * t695;
t753 = t756 * qJ(6);
t1126 = t636 + t753 + t1135;
t881 = (qJD(3) + t986) * t958 - t1020;
t808 = (qJD(4) + t978) * t920 + t1034;
t728 = (qJD(5) + t971) * t867 + t1037;
t864 = t867 ^ 2;
t919 = t920 ^ 2;
t953 = t958 ^ 2;
t968 = t971 ^ 2;
t977 = t978 ^ 2;
t984 = t986 ^ 2;
t732 = t848 - t756;
t667 = t1004 * t732 - t728 * t999;
t669 = -t1004 * t728 - t732 * t999;
t617 = t1000 * t669 + t1005 * t667;
t619 = -t1000 * t667 + t1005 * t669;
t566 = -t1001 * t617 + t1006 * t619;
t780 = -t863 - t864;
t554 = t1002 * t780 + t1007 * t566;
t564 = t1001 * t619 + t1006 * t617;
t525 = t1003 * t554 - t1008 * t564;
t1122 = pkin(6) * t525;
t806 = -t968 - t863;
t745 = t806 * t999 - t1074;
t746 = t1004 * t806 + t1101;
t682 = t1000 * t746 + t1005 * t745;
t683 = -t1000 * t745 + t1005 * t746;
t634 = -t1001 * t682 + t1006 * t683;
t727 = (qJD(5) - t971) * t867 + t1037;
t607 = t1002 * t727 + t1007 * t634;
t633 = t1001 * t683 + t1006 * t682;
t569 = t1003 * t607 - t1008 * t633;
t1121 = pkin(6) * t569;
t799 = t945 - t1100;
t1102 = t799 * t999;
t842 = -t864 - t968;
t770 = t1004 * t842 + t1102;
t1075 = t1004 * t799;
t771 = -t842 * t999 + t1075;
t700 = t1000 * t771 + t1005 * t770;
t701 = -t1000 * t770 + t1005 * t771;
t644 = -t1001 * t700 + t1006 * t701;
t622 = t1002 * t1133 + t1007 * t644;
t643 = t1001 * t701 + t1006 * t700;
t577 = t1003 * t622 - t1008 * t643;
t1120 = pkin(6) * t577;
t553 = t1002 * t566 - t1007 * t780;
t1119 = pkin(7) * t553;
t606 = t1002 * t634 - t1007 * t727;
t1118 = pkin(7) * t606;
t621 = t1002 * t644 - t1007 * t1133;
t1117 = pkin(7) * t621;
t1116 = pkin(8) * t564;
t1115 = pkin(8) * t633;
t1114 = pkin(8) * t643;
t1113 = pkin(9) * t617;
t1112 = pkin(9) * t682;
t1111 = pkin(9) * t700;
t1110 = pkin(10) * t667;
t1109 = pkin(10) * t745;
t1108 = pkin(10) * t770;
t1107 = pkin(2) * t1002;
t1051 = qJ(6) * t848;
t1089 = qJD(6) * t867;
t595 = t1051 - 0.2e1 * t1089 - t1126;
t1104 = t595 * t999;
t1103 = t733 * t999;
t1094 = t971 * t999;
t1093 = -pkin(1) * t564 + pkin(7) * t554;
t1092 = -pkin(1) * t633 + pkin(7) * t607;
t1091 = -pkin(1) * t643 + pkin(7) * t622;
t637 = t1004 * t695 + t999 * t686;
t995 = t1002 ^ 2;
t996 = t1007 ^ 2;
t1090 = t995 + t996;
t579 = -t1004 * t636 + t637 * t999;
t1088 = t1000 * t579;
t1087 = t1000 * t821;
t850 = -t1024 + t950;
t1086 = t1000 * t850;
t1085 = t1000 * t920;
t659 = t1000 * t720 - t1005 * t719;
t1084 = t1001 * t659;
t1083 = t1001 * t896;
t910 = t954 - t1097;
t1082 = t1001 * t910;
t1081 = t1001 * t986;
t1080 = t1002 * t947;
t985 = t1007 * t1009 * t1002;
t973 = -t985 + qJDD(2);
t1079 = t1002 * t973;
t974 = qJDD(2) + t985;
t1078 = t1002 * t974;
t1077 = t1004 * t595;
t1076 = t1004 * t733;
t1073 = t1004 * t971;
t1072 = t1005 * t579;
t1071 = t1005 * t821;
t1070 = t1005 * t850;
t1069 = t1005 * t920;
t1068 = t1006 * t659;
t1067 = t1006 * t896;
t1066 = t1006 * t910;
t1065 = t1006 * t986;
t1064 = t1007 * t947;
t1063 = t1007 * t973;
t1062 = t1009 * t995;
t1058 = qJD(1) * qJD(2);
t1054 = qJDD(1) * t1003;
t1053 = qJDD(1) * t1008;
t1048 = t1002 * t1100;
t1047 = t1002 * t1097;
t1046 = t1007 * t1100;
t1045 = t1007 * t1097;
t1044 = -pkin(3) * t780 + pkin(9) * t619;
t1043 = -pkin(3) * t727 + pkin(9) * t683;
t1042 = -pkin(3) * t1133 + pkin(9) * t701;
t1041 = -pkin(4) * t780 + pkin(10) * t669;
t1040 = -pkin(4) * t727 + pkin(10) * t746;
t1039 = -pkin(4) * t1133 + pkin(10) * t771;
t580 = t1004 * t637 + t636 * t999;
t660 = t1000 * t719 + t1005 * t720;
t935 = t1002 * t948 + t1105;
t889 = t1002 * t935 + t1007 * t936;
t928 = -t1003 * t975 - t1008 * t976;
t1030 = t1003 * t985;
t1029 = t1008 * t985;
t967 = -t1003 * t1009 + t1053;
t1028 = -pkin(6) * t967 - g(3) * t1003;
t1023 = t1000 * t1033;
t1022 = t1005 * t1033;
t778 = t1001 * t838 - t1006 * t837;
t779 = t1001 * t837 + t1006 * t838;
t887 = t1002 * t936 - t1007 * t935;
t1021 = t1003 * t976 - t1008 * t975;
t1019 = t1002 * t1024;
t1018 = t1007 * t1024;
t1016 = t637 + t1129;
t1015 = -pkin(1) * t553 + pkin(2) * t780 - pkin(8) * t566;
t1014 = -pkin(1) * t606 + pkin(2) * t727 - pkin(8) * t634;
t1013 = -pkin(1) * t621 + pkin(2) * t1133 - pkin(8) * t644;
t532 = -pkin(2) * t564 - pkin(3) * t617 - pkin(4) * t667;
t547 = -pkin(2) * t633 - pkin(3) * t682 - pkin(4) * t745 + t636;
t567 = -pkin(2) * t643 - pkin(3) * t700 - pkin(4) * t770 + t637;
t993 = t996 * t1009;
t983 = -t993 - t1123;
t982 = t993 - t1123;
t981 = -t1062 - t1123;
t980 = -t1062 + t1123;
t970 = t993 - t1062;
t969 = t993 + t1062;
t966 = t1008 * t1009 + t1054;
t965 = t1090 * qJDD(1);
t964 = -0.2e1 * t989 + t1052;
t961 = 0.2e1 * t1038 + t1055;
t956 = t1007 * t974;
t955 = t1090 * t1058;
t944 = -pkin(6) * t966 + g(3) * t1008;
t941 = -t953 + t984;
t940 = -t984 + t1124;
t939 = t1007 * t962 - t1058 * t995;
t938 = -t1002 * t963 - t1058 * t996;
t934 = -t1002 * t981 - t1063;
t933 = -t1002 * t980 + t956;
t932 = t1007 * t983 - t1078;
t931 = t1007 * t982 - t1079;
t930 = t1007 * t981 - t1079;
t929 = t1002 * t983 + t956;
t925 = -t953 + t1124;
t924 = -t1003 * t969 + t1008 * t965;
t923 = t1003 * t965 + t1008 * t969;
t922 = -t953 - t984;
t921 = -t1002 * t961 + t1007 * t964;
t917 = -t984 - t1124;
t909 = t953 + t1124;
t906 = -t919 + t977;
t905 = t1032 - t977;
t904 = t1003 * t961 + t1008 * t934;
t903 = -t1003 * t964 + t1008 * t932;
t902 = t1003 * t934 - t1008 * t961;
t901 = t1003 * t932 + t1008 * t964;
t899 = -pkin(7) * t930 - t1064;
t898 = -pkin(7) * t929 - t1080;
t895 = (-t1001 * t958 + t1006 * t957) * t986;
t894 = (-t1001 * t957 - t1006 * t958) * t986;
t892 = -pkin(1) * t930 + t936;
t891 = -pkin(1) * t929 + t935;
t890 = -t919 - t977;
t882 = (-qJD(3) + t986) * t958 + t1020;
t877 = -t1006 * t1049 + t1081 * t958;
t876 = t1001 * t1049 + t1065 * t958;
t875 = t1001 * t1011 - t1065 * t957;
t874 = t1006 * t1011 + t1081 * t957;
t873 = -t1002 * t954 + t1007 * t895;
t872 = -t919 + t1032;
t871 = t1006 * t940 + t1082;
t870 = -t1001 * t941 + t1130;
t869 = -t1001 * t940 + t1066;
t868 = -t1006 * t941 - t1131;
t861 = -t1001 * t922 + t1066;
t860 = t1006 * t922 + t1082;
t859 = 0.2e1 * t1089;
t857 = -t977 - t1032;
t856 = -t1003 * t947 + t1008 * t889;
t855 = t1003 * t889 + t1008 * t947;
t854 = t1006 * t917 - t1131;
t853 = t1001 * t917 + t1130;
t847 = -t864 + t968;
t846 = t863 - t968;
t844 = (t1022 - t1085) * t978;
t843 = (t1023 + t1069) * t978;
t841 = t1007 * t877 + t1047;
t840 = t1007 * t875 - t1047;
t839 = -t1032 - t919;
t833 = -t1001 * t886 - t1006 * t881;
t832 = -t1001 * t884 + t1006 * t882;
t831 = -t1001 * t881 + t1006 * t886;
t830 = -t1001 * t882 - t1006 * t884;
t829 = -pkin(8) * t860 + t1067;
t828 = -t1002 * t881 + t1007 * t871;
t827 = -t1002 * t886 + t1007 * t870;
t826 = t1005 * t905 + t1086;
t825 = -t1000 * t906 + t1136;
t824 = t1000 * t905 - t1070;
t823 = t1005 * t906 + t1137;
t822 = -pkin(8) * t853 + t1083;
t820 = t1002 * t884 + t1007 * t861;
t819 = t1002 * t861 - t1007 * t884;
t818 = -t1000 * t890 + t1070;
t817 = t1005 * t890 + t1086;
t816 = -t1002 * t882 + t1007 * t854;
t815 = t1002 * t854 + t1007 * t882;
t814 = -t864 + t863;
t813 = -t1002 * t925 + t1007 * t832;
t807 = (qJD(4) - t978) * t920 + t1034;
t805 = t1005 * t836 + t1085 * t978;
t804 = t1000 * t836 - t1069 * t978;
t803 = t1000 * t1017 - t1022 * t978;
t802 = -t1005 * t1017 - t1023 * t978;
t798 = t1005 * t857 - t1137;
t797 = t1000 * t857 + t1136;
t796 = -t1002 * t909 + t1007 * t833;
t795 = t1002 * t833 + t1007 * t909;
t794 = (t1004 * t865 - t867 * t999) * t971;
t793 = (t1004 * t867 + t865 * t999) * t971;
t792 = -pkin(2) * t860 + t838;
t791 = -t1001 * t843 + t1006 * t844;
t790 = -t1001 * t844 - t1006 * t843;
t788 = -pkin(2) * t853 + t837;
t786 = -t1002 * t950 + t1007 * t791;
t782 = t1003 * t860 + t1008 * t820;
t781 = t1003 * t820 - t1008 * t860;
t777 = t1003 * t853 + t1008 * t816;
t776 = t1003 * t816 - t1008 * t853;
t775 = t1004 * t846 + t1102;
t774 = -t847 * t999 - t1074;
t773 = t846 * t999 - t1075;
t772 = t1004 * t847 - t1101;
t768 = -t1001 * t824 + t1006 * t826;
t767 = -t1001 * t823 + t1006 * t825;
t766 = -t1001 * t826 - t1006 * t824;
t765 = -t1001 * t825 - t1006 * t823;
t764 = t1002 * t896 + t1007 * t779;
t763 = t1002 * t779 - t1007 * t896;
t762 = -pkin(9) * t817 + t1071;
t761 = -t1001 * t817 + t1006 * t818;
t760 = t1001 * t818 + t1006 * t817;
t759 = t1003 * t831 + t1008 * t796;
t758 = t1003 * t796 - t1008 * t831;
t757 = -pkin(9) * t797 + t1087;
t751 = -t1000 * t812 - t1005 * t808;
t750 = -t1000 * t1132 - t1005 * t807;
t749 = -t1000 * t808 + t1005 * t812;
t748 = -t1000 * t807 + t1005 * t1132;
t747 = -pkin(1) * t819 + pkin(2) * t884 - pkin(8) * t861 - t1083;
t743 = -t1001 * t804 + t1006 * t805;
t742 = -t1001 * t802 + t1006 * t803;
t741 = -t1001 * t805 - t1006 * t804;
t740 = -t1001 * t803 - t1006 * t802;
t739 = -pkin(1) * t815 - pkin(2) * t882 - pkin(8) * t854 + t1067;
t738 = -t1001 * t797 + t1006 * t798;
t737 = t1001 * t798 + t1006 * t797;
t736 = -pkin(8) * t831 - t778;
t735 = -t1000 * t793 + t1005 * t794;
t734 = t1000 * t794 + t1005 * t793;
t726 = t1004 * t756 + t1094 * t867;
t725 = -t1073 * t867 + t756 * t999;
t724 = -t1073 * t865 - t755 * t999;
t723 = t1004 * t755 - t1094 * t865;
t722 = t1007 * t743 + t1019;
t721 = t1007 * t742 - t1019;
t717 = -t1002 * t808 + t1007 * t768;
t716 = -t1002 * t812 + t1007 * t767;
t715 = -pkin(3) * t1132 + pkin(9) * t818 + t1087;
t714 = t1002 * t1132 + t1007 * t761;
t713 = t1002 * t761 - t1007 * t1132;
t712 = -pkin(7) * t819 - t1002 * t792 + t1007 * t829;
t711 = -pkin(3) * t807 + pkin(9) * t798 - t1071;
t710 = -pkin(7) * t815 - t1002 * t788 + t1007 * t822;
t709 = t1002 * t807 + t1007 * t738;
t708 = t1002 * t738 - t1007 * t807;
t707 = t1003 * t778 + t1008 * t764;
t706 = t1003 * t764 - t1008 * t778;
t705 = -t1000 * t773 + t1005 * t775;
t704 = -t1000 * t772 + t1005 * t774;
t703 = t1000 * t775 + t1005 * t773;
t702 = t1000 * t774 + t1005 * t772;
t698 = -pkin(1) * t795 - pkin(2) * t909 - pkin(8) * t833 - t779;
t697 = -pkin(1) * t763 + pkin(2) * t896 - pkin(8) * t779;
t696 = -pkin(5) * t1133 + qJ(6) * t799;
t692 = t1076 - t1108;
t691 = -pkin(7) * t795 + t1007 * t736 + t1107 * t831;
t690 = -t1001 * t749 + t1006 * t751;
t689 = -t1001 * t748 + t1006 * t750;
t688 = t1001 * t751 + t1006 * t749;
t687 = -t1001 * t750 - t1006 * t748;
t680 = t1103 - t1109;
t679 = -t1001 * t734 + t1006 * t735;
t678 = -t1001 * t735 - t1006 * t734;
t677 = -t1002 * t872 + t1007 * t689;
t676 = -t1002 * t945 + t1007 * t679;
t675 = t1002 * t679 + t1007 * t945;
t674 = -pkin(7) * t763 + (-pkin(8) * t1007 + t1107) * t778;
t673 = t1003 * t760 + t1008 * t714;
t672 = t1003 * t714 - t1008 * t760;
t671 = t1002 * t839 + t1007 * t690;
t670 = t1002 * t690 - t1007 * t839;
t668 = -t1004 * t727 - t1133 * t999;
t666 = t1004 * t1133 - t727 * t999;
t664 = -t1000 * t725 + t1005 * t726;
t663 = -t1000 * t723 + t1005 * t724;
t662 = t1000 * t726 + t1005 * t725;
t661 = t1000 * t724 + t1005 * t723;
t658 = -pkin(2) * t760 - pkin(3) * t817 + t720;
t657 = t1003 * t737 + t1008 * t709;
t656 = t1003 * t709 - t1008 * t737;
t654 = -pkin(2) * t737 - pkin(3) * t797 + t719;
t653 = -pkin(3) * t821 + pkin(9) * t660;
t652 = -pkin(2) * t688 - pkin(3) * t749;
t651 = -qJ(6) * t842 + t655;
t650 = -pkin(8) * t760 - t1001 * t715 + t1006 * t762;
t649 = t1039 + t1103;
t648 = -t1001 * t703 + t1006 * t705;
t647 = -t1001 * t702 + t1006 * t704;
t646 = -t1001 * t705 - t1006 * t703;
t645 = -t1001 * t704 - t1006 * t702;
t641 = t1040 - t1076;
t640 = -pkin(8) * t737 - t1001 * t711 + t1006 * t757;
t639 = -pkin(9) * t749 - t659;
t638 = -pkin(3) * t839 + pkin(9) * t751 + t660;
t631 = t1003 * t688 + t1008 * t671;
t630 = t1003 * t671 - t1008 * t688;
t629 = -t1002 * t728 + t1007 * t648;
t628 = -t1002 * t732 + t1007 * t647;
t627 = t1002 * t648 + t1007 * t728;
t626 = t1002 * t647 + t1007 * t732;
t625 = -t1003 * t678 + t1008 * t676;
t624 = t1003 * t676 + t1008 * t678;
t623 = -pkin(5) * t727 + qJ(6) * t806 - t655;
t618 = -t1000 * t666 + t1005 * t668;
t616 = t1000 * t668 + t1005 * t666;
t614 = -t1001 * t662 + t1006 * t664;
t613 = -t1001 * t661 + t1006 * t663;
t612 = -t1001 * t664 - t1006 * t662;
t611 = -t1001 * t663 - t1006 * t661;
t610 = -pkin(1) * t713 + pkin(2) * t1132 - pkin(8) * t761 - t1001 * t762 - t1006 * t715;
t609 = t1006 * t660 - t1084;
t608 = t1001 * t660 + t1068;
t604 = -pkin(1) * t708 + pkin(2) * t807 - pkin(8) * t738 - t1001 * t757 - t1006 * t711;
t603 = t1007 * t614 + t1048;
t602 = t1007 * t613 - t1048;
t601 = t1002 * t614 - t1046;
t600 = t1002 * t613 + t1046;
t599 = t1002 * t821 + t1007 * t609;
t598 = t1002 * t609 - t1007 * t821;
t597 = -pkin(5) * t863 + t1016;
t596 = t1004 * t651 - t696 * t999 - t1108;
t594 = qJ(6) * t1074 - t623 * t999 - t1109;
t593 = -t1000 * t649 + t1005 * t692 - t1111;
t592 = t1004 * t696 + t651 * t999 + t1039;
t591 = t859 + (-t732 - t848) * qJ(6) + t1126;
t590 = -pkin(7) * t713 - t1002 * t658 + t1007 * t650;
t589 = qJ(6) * t1101 + t1004 * t623 + t1040;
t588 = -qJ(6) * t728 + (-t780 - t863) * pkin(5) + t1016;
t587 = -t1000 * t641 + t1005 * t680 - t1112;
t586 = -pkin(2) * t608 - pkin(3) * t659;
t585 = -t1003 * t646 + t1008 * t629;
t584 = -t1003 * t645 + t1008 * t628;
t583 = t1003 * t629 + t1008 * t646;
t582 = t1003 * t628 + t1008 * t645;
t581 = -pkin(7) * t708 - t1002 * t654 + t1007 * t640;
t578 = t1003 * t643 + t1008 * t622;
t576 = pkin(6) * t578;
t575 = t1000 * t692 + t1005 * t649 + t1042;
t574 = -pkin(5) * t655 + qJ(6) * t597;
t573 = t1000 * t680 + t1005 * t641 + t1043;
t572 = -pkin(4) * t733 + pkin(10) * t580;
t571 = -pkin(8) * t688 - t1001 * t638 + t1006 * t639;
t570 = t1003 * t633 + t1008 * t607;
t568 = pkin(6) * t570;
t565 = -t1001 * t616 + t1006 * t618;
t563 = -t1001 * t618 - t1006 * t616;
t561 = -t579 - t1110;
t560 = -t1002 * t814 + t1007 * t565;
t559 = t1002 * t565 + t1007 * t814;
t558 = -t1003 * t612 + t1008 * t603;
t557 = -t1003 * t611 + t1008 * t602;
t556 = t1003 * t603 + t1008 * t612;
t555 = t1003 * t602 + t1008 * t611;
t551 = -pkin(8) * t608 - pkin(9) * t1068 - t1001 * t653;
t550 = t1003 * t608 + t1008 * t599;
t549 = t1003 * t599 - t1008 * t608;
t548 = t1041 + t580;
t546 = t1004 * t597 - t1104;
t545 = t597 * t999 + t1077;
t544 = (-t842 - t863) * pkin(5) + t567 + t1129;
t543 = -pkin(1) * t670 + pkin(2) * t839 - pkin(8) * t690 - t1001 * t639 - t1006 * t638;
t542 = -t1051 + t547 + t753 + t859 + 0.2e1 * t1135;
t541 = -t1000 * t592 + t1005 * t596 - t1111;
t540 = -pkin(7) * t670 - t1002 * t652 + t1007 * t571;
t539 = -t1000 * t589 + t1005 * t594 - t1112;
t538 = t1000 * t596 + t1005 * t592 + t1042;
t537 = t1005 * t580 - t1088;
t536 = t1000 * t580 + t1072;
t535 = -pkin(1) * t598 + pkin(2) * t821 - pkin(8) * t609 + pkin(9) * t1084 - t1006 * t653;
t534 = t1000 * t594 + t1005 * t589 + t1043;
t533 = t1004 * t591 - t588 * t999 - t1110;
t531 = t1004 * t588 + t591 * t999 + t1041;
t530 = -t1001 * t575 + t1006 * t593 - t1114;
t529 = -pkin(5) * t732 + t532;
t528 = -t1003 * t563 + t1008 * t560;
t527 = t1003 * t560 + t1008 * t563;
t526 = t1003 * t564 + t1008 * t554;
t524 = pkin(6) * t526;
t523 = -t1001 * t573 + t1006 * t587 - t1115;
t522 = -t1000 * t545 + t1005 * t546;
t521 = t1000 * t546 + t1005 * t545;
t520 = -pkin(7) * t598 - t1002 * t586 + t1007 * t551;
t519 = -t1001 * t593 - t1006 * t575 + t1013;
t518 = -pkin(10) * t545 - qJ(6) * t1077 - t574 * t999;
t517 = -t1000 * t548 + t1005 * t561 - t1113;
t516 = t1000 * t561 + t1005 * t548 + t1044;
t515 = -t1001 * t587 - t1006 * t573 + t1014;
t514 = -pkin(4) * t655 + pkin(10) * t546 - qJ(6) * t1104 + t1004 * t574;
t513 = -t1001 * t536 + t1006 * t537;
t512 = t1001 * t537 + t1006 * t536;
t511 = -t1002 * t567 + t1007 * t530 - t1117;
t510 = -pkin(9) * t536 - pkin(10) * t1072 - t1000 * t572;
t509 = t1002 * t733 + t1007 * t513;
t508 = t1002 * t513 - t1007 * t733;
t507 = -t1001 * t538 + t1006 * t541 - t1114;
t506 = -pkin(3) * t733 + pkin(9) * t537 - pkin(10) * t1088 + t1005 * t572;
t505 = -t1001 * t534 + t1006 * t539 - t1115;
t504 = -t1002 * t547 + t1007 * t523 - t1118;
t503 = -t1001 * t541 - t1006 * t538 + t1013;
t502 = -t1000 * t531 + t1005 * t533 - t1113;
t501 = t1000 * t533 + t1005 * t531 + t1044;
t500 = -t1001 * t539 - t1006 * t534 + t1014;
t499 = -t1001 * t521 + t1006 * t522;
t498 = t1001 * t522 + t1006 * t521;
t497 = t1002 * t655 + t1007 * t499;
t496 = t1002 * t499 - t1007 * t655;
t495 = -t1002 * t544 + t1007 * t507 - t1117;
t494 = -pkin(2) * t512 - pkin(3) * t536 - pkin(4) * t579;
t493 = -t1002 * t542 + t1007 * t505 - t1118;
t492 = -t1001 * t516 + t1006 * t517 - t1116;
t491 = t1003 * t512 + t1008 * t509;
t490 = t1003 * t509 - t1008 * t512;
t489 = -t1001 * t517 - t1006 * t516 + t1015;
t488 = -pkin(9) * t521 - t1000 * t514 + t1005 * t518;
t487 = -pkin(3) * t655 + pkin(9) * t522 + t1000 * t518 + t1005 * t514;
t486 = -pkin(2) * t498 - pkin(3) * t521 - pkin(4) * t545 - pkin(5) * t595;
t485 = -t1001 * t501 + t1006 * t502 - t1116;
t484 = -t1002 * t532 + t1007 * t492 - t1119;
t483 = t1003 * t498 + t1008 * t497;
t482 = t1003 * t497 - t1008 * t498;
t481 = -pkin(8) * t512 - t1001 * t506 + t1006 * t510;
t480 = -t1001 * t502 - t1006 * t501 + t1015;
t479 = -t1002 * t529 + t1007 * t485 - t1119;
t478 = -pkin(1) * t508 + pkin(2) * t733 - pkin(8) * t513 - t1001 * t510 - t1006 * t506;
t477 = -pkin(7) * t508 - t1002 * t494 + t1007 * t481;
t476 = -pkin(8) * t498 - t1001 * t487 + t1006 * t488;
t475 = -pkin(1) * t496 + pkin(2) * t655 - pkin(8) * t499 - t1001 * t488 - t1006 * t487;
t474 = -pkin(7) * t496 - t1002 * t486 + t1007 * t476;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t966, -t967, 0, t928, 0, 0, 0, 0, 0, 0, t903, t904, t924, t856, 0, 0, 0, 0, 0, 0, t777, t782, t759, t707, 0, 0, 0, 0, 0, 0, t657, t673, t631, t550, 0, 0, 0, 0, 0, 0, t570, t578, t526, t491, 0, 0, 0, 0, 0, 0, t570, t578, t526, t483; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t967, -t966, 0, -t1021, 0, 0, 0, 0, 0, 0, t901, t902, t923, t855, 0, 0, 0, 0, 0, 0, t776, t781, t758, t706, 0, 0, 0, 0, 0, 0, t656, t672, t630, t549, 0, 0, 0, 0, 0, 0, t569, t577, t525, t490, 0, 0, 0, 0, 0, 0, t569, t577, t525, t482; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t929, t930, 0, t887, 0, 0, 0, 0, 0, 0, t815, t819, t795, t763, 0, 0, 0, 0, 0, 0, t708, t713, t670, t598, 0, 0, 0, 0, 0, 0, t606, t621, t553, t508, 0, 0, 0, 0, 0, 0, t606, t621, t553, t496; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t967, 0, -t966, 0, t1028, -t944, t1021, pkin(6) * t1021, t1008 * t939 - t1030, -t1003 * t970 + t1008 * t921, t1002 * t1054 + t1008 * t933, t1008 * t938 + t1030, t1003 * t1052 + t1008 * t931, qJDD(2) * t1003 + t1008 * t955, -pkin(6) * t901 - t1003 * t891 + t1008 * t898, -pkin(6) * t902 - t1003 * t892 + t1008 * t899, -pkin(6) * t923 - t1008 * t887, -pkin(6) * t855 + (pkin(1) * t1003 - pkin(7) * t1008) * t887, -t1003 * t876 + t1008 * t841, -t1003 * t830 + t1008 * t813, -t1003 * t868 + t1008 * t827, -t1003 * t874 + t1008 * t840, -t1003 * t869 + t1008 * t828, -t1003 * t894 + t1008 * t873, -pkin(6) * t776 - t1003 * t739 + t1008 * t710, -pkin(6) * t781 - t1003 * t747 + t1008 * t712, -pkin(6) * t758 - t1003 * t698 + t1008 * t691, -pkin(6) * t706 - t1003 * t697 + t1008 * t674, -t1003 * t741 + t1008 * t722, -t1003 * t687 + t1008 * t677, -t1003 * t765 + t1008 * t716, -t1003 * t740 + t1008 * t721, -t1003 * t766 + t1008 * t717, -t1003 * t790 + t1008 * t786, -pkin(6) * t656 - t1003 * t604 + t1008 * t581, -pkin(6) * t672 - t1003 * t610 + t1008 * t590, -pkin(6) * t630 - t1003 * t543 + t1008 * t540, -pkin(6) * t549 - t1003 * t535 + t1008 * t520, t558, t528, t584, t557, t585, t625, -t1003 * t515 + t1008 * t504 - t1121, -t1003 * t519 + t1008 * t511 - t1120, -t1003 * t489 + t1008 * t484 - t1122, -pkin(6) * t490 - t1003 * t478 + t1008 * t477, t558, t528, t584, t557, t585, t625, -t1003 * t500 + t1008 * t493 - t1121, -t1003 * t503 + t1008 * t495 - t1120, -t1003 * t480 + t1008 * t479 - t1122, -pkin(6) * t482 - t1003 * t475 + t1008 * t474; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t966, 0, t967, 0, t944, t1028, t928, pkin(6) * t928, t1003 * t939 + t1029, t1003 * t921 + t1008 * t970, -t1002 * t1053 + t1003 * t933, t1003 * t938 - t1029, t1003 * t931 - t1008 * t1052, -qJDD(2) * t1008 + t1003 * t955, pkin(6) * t903 + t1003 * t898 + t1008 * t891, pkin(6) * t904 + t1003 * t899 + t1008 * t892, pkin(6) * t924 - t1003 * t887, pkin(6) * t856 + (-pkin(1) * t1008 - pkin(7) * t1003) * t887, t1003 * t841 + t1008 * t876, t1003 * t813 + t1008 * t830, t1003 * t827 + t1008 * t868, t1003 * t840 + t1008 * t874, t1003 * t828 + t1008 * t869, t1003 * t873 + t1008 * t894, pkin(6) * t777 + t1003 * t710 + t1008 * t739, pkin(6) * t782 + t1003 * t712 + t1008 * t747, pkin(6) * t759 + t1003 * t691 + t1008 * t698, pkin(6) * t707 + t1003 * t674 + t1008 * t697, t1003 * t722 + t1008 * t741, t1003 * t677 + t1008 * t687, t1003 * t716 + t1008 * t765, t1003 * t721 + t1008 * t740, t1003 * t717 + t1008 * t766, t1003 * t786 + t1008 * t790, pkin(6) * t657 + t1003 * t581 + t1008 * t604, pkin(6) * t673 + t1003 * t590 + t1008 * t610, pkin(6) * t631 + t1003 * t540 + t1008 * t543, pkin(6) * t550 + t1003 * t520 + t1008 * t535, t556, t527, t582, t555, t583, t624, t1003 * t504 + t1008 * t515 + t568, t1003 * t511 + t1008 * t519 + t576, t1003 * t484 + t1008 * t489 + t524, pkin(6) * t491 + t1003 * t477 + t1008 * t478, t556, t527, t582, t555, t583, t624, t1003 * t493 + t1008 * t500 + t568, t1003 * t495 + t1008 * t503 + t576, t1003 * t479 + t1008 * t480 + t524, pkin(6) * t483 + t1003 * t474 + t1008 * t475; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t975, t976, 0, 0, t1025 * t1002, t1002 * t964 + t1007 * t961, t1007 * t980 + t1078, -t1026 * t1007, t1002 * t982 + t1063, 0, pkin(1) * t964 + pkin(7) * t932 + t1064, -pkin(1) * t961 + pkin(7) * t934 - t1080, pkin(1) * t969 + pkin(7) * t965 + t889, pkin(1) * t947 + pkin(7) * t889, t1002 * t877 - t1045, t1002 * t832 + t1007 * t925, t1002 * t870 + t1007 * t886, t1002 * t875 + t1045, t1002 * t871 + t1007 * t881, t1002 * t895 + t1007 * t954, -pkin(1) * t853 + pkin(7) * t816 + t1002 * t822 + t1007 * t788, -pkin(1) * t860 + pkin(7) * t820 + t1002 * t829 + t1007 * t792, pkin(7) * t796 + t1002 * t736 + (-pkin(1) - t1106) * t831, pkin(7) * t764 + (-pkin(1) + t1027) * t778, t1002 * t743 - t1018, t1002 * t689 + t1007 * t872, t1002 * t767 + t1007 * t812, t1002 * t742 + t1018, t1002 * t768 + t1007 * t808, t1002 * t791 + t1007 * t950, -pkin(1) * t737 + pkin(7) * t709 + t1002 * t640 + t1007 * t654, -pkin(1) * t760 + pkin(7) * t714 + t1002 * t650 + t1007 * t658, -pkin(1) * t688 + pkin(7) * t671 + t1002 * t571 + t1007 * t652, -pkin(1) * t608 + pkin(7) * t599 + t1002 * t551 + t1007 * t586, t601, t559, t626, t600, t627, t675, t1002 * t523 + t1007 * t547 + t1092, t1002 * t530 + t1007 * t567 + t1091, t1002 * t492 + t1007 * t532 + t1093, -pkin(1) * t512 + pkin(7) * t509 + t1002 * t481 + t1007 * t494, t601, t559, t626, t600, t627, t675, t1002 * t505 + t1007 * t542 + t1092, t1002 * t507 + t1007 * t544 + t1091, t1002 * t485 + t1007 * t529 + t1093, -pkin(1) * t498 + pkin(7) * t497 + t1002 * t476 + t1007 * t486;];
tauB_reg  = t1;
