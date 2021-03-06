% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPPRRP5
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPPRRP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRRP5_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:58:41
% EndTime: 2019-05-05 14:58:50
% DurationCPUTime: 9.65s
% Computational Cost: add. (32280->619), mult. (61618->594), div. (0->0), fcn. (34910->6), ass. (0->402)
t902 = cos(qJ(4));
t1006 = qJD(1) * t902;
t898 = sin(qJ(5));
t901 = cos(qJ(5));
t851 = qJD(4) * t901 - t1006 * t898;
t852 = t898 * qJD(4) + t1006 * t901;
t804 = t851 * t852;
t1003 = qJD(1) * qJD(4);
t988 = t902 * t1003;
t899 = sin(qJ(4));
t999 = t899 * qJDD(1);
t931 = -t988 - t999;
t919 = qJDD(5) - t931;
t1073 = t804 + t919;
t1087 = pkin(5) * t1073;
t1029 = t1073 * t898;
t1028 = t1073 * t901;
t846 = t851 ^ 2;
t878 = t899 * qJD(1) + qJD(5);
t874 = t878 ^ 2;
t786 = -t874 - t846;
t729 = t786 * t898 + t1028;
t1044 = pkin(8) * t729;
t989 = t899 * t1003;
t998 = t902 * qJDD(1);
t856 = -t989 + t998;
t979 = -t901 * qJDD(4) + t898 * t856;
t761 = (qJD(5) + t878) * t852 + t979;
t782 = -qJD(5) * t852 - t979;
t1040 = pkin(1) + qJ(3);
t906 = qJD(1) ^ 2;
t1072 = t1040 * t906;
t892 = qJDD(1) * qJ(2);
t900 = sin(qJ(1));
t903 = cos(qJ(1));
t868 = t903 * g(1) + t900 * g(2);
t944 = 0.2e1 * qJD(2) * qJD(1) - t868;
t928 = qJDD(3) + t944;
t920 = t892 + t928;
t801 = -qJDD(1) * pkin(7) - t1072 + t920;
t784 = t899 * g(3) + t902 * t801;
t905 = qJD(4) ^ 2;
t1041 = pkin(8) * t902;
t1058 = pkin(4) * t899;
t934 = t906 * (-t1041 + t1058);
t757 = qJDD(4) * pkin(4) + t905 * pkin(8) - t902 * t934 + t784;
t820 = pkin(5) * t878 - qJ(6) * t852;
t910 = -t852 * t820 - qJDD(6) + t757;
t637 = (t786 + t846) * qJ(6) + (-t761 + t782) * pkin(5) + t910;
t610 = -qJ(6) * t1028 - t637 * t898 - t1044;
t1060 = pkin(4) * t729;
t783 = qJD(5) * t851 + qJDD(4) * t898 + t856 * t901;
t785 = t902 * g(3) - t899 * t801;
t758 = -t905 * pkin(4) + qJDD(4) * pkin(8) - t899 * t934 - t785;
t1042 = pkin(8) * t899;
t1057 = pkin(4) * t902;
t1065 = 2 * qJD(3);
t896 = t906 * pkin(7);
t1017 = t906 * qJ(2);
t867 = t900 * g(1) - t903 * g(2);
t959 = -qJDD(2) + t867;
t927 = t959 + t1017;
t907 = -t856 * pkin(8) - t896 + (t1040 + t1058) * qJDD(1) + (t1065 + (t1042 + 0.2e1 * t1057) * qJD(4)) * qJD(1) + t927;
t696 = t898 * t758 - t901 * t907;
t830 = t878 * t851;
t912 = -qJ(6) * t830 + 0.2e1 * qJD(6) * t852 - t1087 + t696;
t635 = qJ(6) * t783 + t912;
t909 = -t635 + t1087;
t611 = -t909 - t1060;
t1086 = t899 * t610 + t902 * t611;
t774 = -t804 + t919;
t1031 = t774 * t898;
t847 = t852 ^ 2;
t797 = -t847 - t874;
t739 = t797 * t901 - t1031;
t1043 = pkin(8) * t739;
t908 = -t782 * pkin(5) - t910;
t655 = (-t797 - t846) * qJ(6) + t908;
t1074 = t783 + t830;
t720 = -pkin(5) * t1074 - qJ(6) * t774;
t614 = t655 * t901 - t720 * t898 - t1043;
t1059 = pkin(4) * t739;
t1005 = qJD(6) * t851;
t840 = 0.2e1 * t1005;
t697 = t901 * t758 + t898 * t907;
t951 = t846 * pkin(5) - t782 * qJ(6) + t878 * t820 - t697;
t922 = pkin(5) * t797 + t951;
t619 = t840 - t922 - t1059;
t1085 = t899 * t614 + t902 * t619;
t640 = t840 - t951;
t762 = (qJD(5) - t878) * t852 + t979;
t771 = -t846 - t847;
t621 = -pkin(5) * t771 - qJ(6) * t762 + t640;
t766 = t783 - t830;
t624 = (t766 + t783) * qJ(6) + t912;
t1084 = t901 * t621 + t898 * t624;
t1083 = -qJ(6) * t1029 + t901 * t637;
t646 = t696 - t1060;
t753 = t898 * t757;
t679 = -t753 - t1044;
t1082 = t902 * t646 + t899 * t679;
t648 = t697 - t1059;
t754 = t901 * t757;
t691 = -t754 - t1043;
t1081 = t902 * t648 + t899 * t691;
t1080 = t898 * t655 + t901 * t720;
t713 = -t762 * t901 + t766 * t898;
t662 = t713 * t899 - t771 * t902;
t663 = t713 * t902 + t771 * t899;
t1079 = -pkin(2) * t662 + qJ(3) * t663;
t711 = -t762 * t898 - t766 * t901;
t1078 = pkin(1) * t711 + qJ(2) * t662;
t730 = t786 * t901 - t1029;
t680 = t730 * t899 - t761 * t902;
t681 = t730 * t902 + t761 * t899;
t1077 = -pkin(2) * t680 + qJ(3) * t681;
t1076 = pkin(1) * t729 + qJ(2) * t680;
t1030 = t774 * t901;
t740 = -t797 * t898 - t1030;
t692 = -t1074 * t902 + t740 * t899;
t1075 = pkin(1) * t739 + qJ(2) * t692;
t633 = t898 * t696 + t901 * t697;
t734 = -t899 * t784 - t902 * t785;
t1064 = pkin(2) + pkin(3);
t733 = t902 * t784 - t899 * t785;
t1071 = t1064 * t733;
t618 = t633 * t902 - t757 * t899;
t632 = -t696 * t901 + t697 * t898;
t1016 = pkin(3) * t632 - pkin(7) * t618;
t962 = -t1042 - t1057;
t1070 = t632 * (pkin(2) - t962) + t1016;
t1033 = t635 * t898;
t601 = t640 * t901 + t1033;
t671 = t846 * qJ(6) - t908;
t596 = t601 * t899 + t671 * t902;
t606 = pkin(5) * t671 + qJ(6) * t640;
t971 = pkin(4) * t671 + pkin(8) * t601 + qJ(6) * t1033 + t901 * t606;
t1069 = -t1064 * t596 - t971;
t876 = t899 * t906 * t902;
t866 = qJDD(4) - t876;
t1024 = t866 * t902;
t893 = t899 ^ 2;
t1020 = t893 * t906;
t871 = -t905 - t1020;
t810 = t871 * t899 + t1024;
t1068 = -t1064 * t810 - t784;
t865 = qJDD(4) + t876;
t1027 = t865 * t899;
t894 = t902 ^ 2;
t885 = t894 * t906;
t873 = -t885 - t905;
t815 = t873 * t902 - t1027;
t1067 = -t1064 * t815 - t785;
t1010 = pkin(4) * t757 + pkin(8) * t633;
t617 = t633 * t899 + t757 * t902;
t1066 = -t1064 * t617 - t1010;
t1063 = pkin(1) * t906;
t921 = qJD(1) * t1065 + t959;
t911 = t921 + t1017;
t818 = qJDD(1) * t1040 + t911;
t1062 = pkin(2) * t818;
t1061 = pkin(4) * t711;
t1056 = pkin(5) * t635;
t1055 = pkin(5) * t766;
t1054 = pkin(6) * (t662 * t900 + t711 * t903);
t1053 = pkin(6) * (t680 * t900 + t729 * t903);
t1052 = pkin(6) * (t692 * t900 + t739 * t903);
t1000 = qJDD(1) * t903;
t861 = -t900 * t906 + t1000;
t1051 = pkin(6) * t861;
t1001 = qJDD(1) * t900;
t862 = t903 * t906 + t1001;
t1050 = pkin(6) * t862;
t1049 = pkin(7) * t662;
t1048 = pkin(7) * t680;
t1047 = pkin(7) * t692;
t1046 = pkin(7) * t733;
t1045 = pkin(8) * t711;
t1039 = qJ(2) - pkin(7);
t1038 = qJ(2) * t663;
t1037 = qJ(3) * t711;
t1036 = qJ(3) * t729;
t1035 = qJ(3) * t739;
t1034 = qJDD(1) * pkin(1);
t1032 = t635 * t901;
t855 = 0.2e1 * t988 + t999;
t811 = t855 * t899;
t1026 = t865 * t902;
t1025 = t866 * t899;
t1023 = t878 * t852;
t1022 = t878 * t898;
t1021 = t878 * t901;
t800 = -t896 + t818;
t791 = t899 * t800;
t1018 = t902 * t800;
t1015 = -pkin(3) * t729 + pkin(7) * t681;
t693 = t1074 * t899 + t740 * t902;
t1014 = -pkin(3) * t739 + pkin(7) * t693;
t1013 = -pkin(4) * t771 + pkin(8) * t713;
t1012 = pkin(3) * t711 - pkin(7) * t663;
t1011 = -pkin(4) * t1074 + pkin(8) * t740;
t1009 = pkin(4) * t761 - pkin(8) * t730;
t1008 = -pkin(3) * t800 + pkin(7) * t734;
t1007 = t893 + t894;
t997 = t899 * t804;
t996 = t902 * t804;
t995 = t851 * t1022;
t677 = pkin(3) * t680;
t994 = -t677 + t1009;
t687 = pkin(3) * t692;
t993 = -t687 - t1011;
t864 = t885 + t1020;
t992 = pkin(3) * t864 + t734;
t817 = -t873 * t899 - t1026;
t857 = -0.2e1 * t989 + t998;
t991 = -pkin(3) * t857 + pkin(7) * t817 + t791;
t816 = t871 * t902 - t1025;
t990 = -pkin(3) * t855 + pkin(7) * t816 - t1018;
t629 = t632 * t1058;
t987 = -pkin(7) * t617 + t629;
t986 = -pkin(7) * t815 + t1018;
t985 = qJ(3) - t1041;
t600 = t640 * t898 - t1032;
t578 = -pkin(8) * t600 + qJ(6) * t1032 - t606 * t898;
t594 = -pkin(4) * t600 + t1056;
t984 = t902 * t578 - t899 * t594;
t913 = -t892 - t944;
t819 = -qJDD(3) + t913 + t1072;
t982 = -t818 * t900 - t903 * t819;
t831 = t913 + t1063;
t833 = t927 + t1034;
t981 = -t903 * t831 - t833 * t900;
t980 = -t867 * t900 - t903 * t868;
t978 = t900 * t876;
t977 = t903 * t876;
t597 = t601 * t902 - t671 * t899;
t976 = -pkin(3) * t600 + pkin(7) * t597 + t899 * t578 + t902 * t594;
t591 = -t621 * t898 + t624 * t901 - t1045;
t656 = t1055 - t1061;
t975 = t899 * t591 + t902 * t656 - t1012;
t974 = t1015 + t1086;
t973 = t1014 + t1085;
t972 = t1013 + t1084;
t970 = t1011 + t1080;
t969 = t1015 + t1082;
t968 = t1014 + t1081;
t967 = t1013 + t633;
t966 = -t1009 + t1083;
t965 = pkin(2) * t800 - t1008;
t604 = -t632 - t1045;
t964 = t711 * t1058 + t902 * t604 - t1049;
t963 = pkin(2) * t819 - qJ(3) * g(3);
t961 = g(3) * t900 + t1051;
t960 = g(3) * t903 - t1050;
t958 = -pkin(7) * t810 + t791;
t708 = pkin(2) * t711;
t957 = t708 - t975;
t660 = pkin(3) * t662;
t956 = -t660 - t1013 + t1079;
t955 = t994 + t1077;
t954 = -pkin(2) * t692 + qJ(3) * t693 + t993;
t953 = -t660 - t967;
t952 = -t677 - t966;
t950 = t818 * t903 - t819 * t900;
t949 = t831 * t900 - t833 * t903;
t948 = t867 * t903 - t868 * t900;
t946 = pkin(2) * t857 - t991;
t945 = pkin(2) * t855 - t990;
t727 = pkin(2) * t729;
t943 = -qJ(2) * t681 + t1015 - t727;
t737 = pkin(2) * t739;
t942 = -qJ(2) * t693 + t1014 - t737;
t941 = -pkin(7) * t596 + t984;
t940 = t902 * t591 - t656 * t899 - t1049;
t939 = t902 * t610 - t611 * t899 - t1048;
t938 = t902 * t614 - t619 * t899 - t1047;
t937 = -t646 * t899 + t902 * t679 - t1048;
t936 = -t648 * t899 + t902 * t691 - t1047;
t860 = t1007 * qJDD(1);
t935 = pkin(7) * t860 - t733;
t933 = -t1057 * t711 + t899 * t604 - t1012;
t932 = pkin(2) * t600 - t976;
t886 = pkin(2) * t906 - g(3);
t930 = -pkin(2) * t1001 - t903 * t886 - t1050;
t929 = t964 + t1037;
t926 = t708 - t933;
t925 = -pkin(1) * t663 - t956;
t924 = -pkin(1) * t681 - t955;
t923 = -pkin(1) * t693 - t954;
t918 = t940 + t1037;
t917 = t939 + t1036;
t916 = t938 + t1035;
t915 = t937 + t1036;
t914 = t936 + t1035;
t904 = pkin(1) * g(3);
t897 = qJ(2) * g(3);
t895 = pkin(2) * qJDD(1);
t888 = 0.2e1 * t892;
t887 = 0.2e1 * qJDD(1) * qJ(3);
t872 = -t885 + t905;
t870 = -t905 + t1020;
t863 = -t885 + t1020;
t854 = pkin(3) * t860;
t850 = t1007 * t1003;
t845 = -t959 - 0.2e1 * t1034;
t839 = t888 + t944;
t832 = t888 + t928;
t828 = t887 + t921 + 0.2e1 * t1034;
t826 = -t847 + t874;
t825 = t846 - t874;
t824 = t1003 * t894 + t856 * t899;
t823 = t1003 * t893 + t902 * t931;
t821 = t852 * t1021;
t814 = t872 * t902 + t1025;
t813 = t870 * t902 - t1027;
t812 = -t872 * t899 + t1024;
t809 = t870 * t899 + t1026;
t808 = (t856 - t989) * t902;
t807 = pkin(2) * t860 + t854;
t803 = -pkin(2) * t1000 + t886 * t900 - t1051;
t798 = t847 - t846;
t795 = t897 - t1062;
t790 = -t855 * t902 - t857 * t899;
t789 = t857 * t902 - t811;
t787 = t904 - t963;
t772 = pkin(1) * t833 - qJ(2) * t831;
t768 = (t851 * t901 + t852 * t898) * t878;
t767 = -t821 + t995;
t752 = -t1022 * t852 + t783 * t901;
t751 = -t898 * t783 - t821;
t750 = -t1021 * t851 - t782 * t898;
t749 = t782 * t901 - t995;
t748 = t899 * t768 - t902 * t919;
t747 = t902 * t768 + t899 * t919;
t746 = t825 * t901 - t1031;
t745 = -t826 * t898 + t1028;
t744 = t825 * t898 + t1030;
t743 = t826 * t901 + t1029;
t732 = -qJ(2) * t819 + t1040 * t818;
t724 = t752 * t899 + t996;
t723 = t750 * t899 - t996;
t722 = t752 * t902 - t997;
t721 = t750 * t902 + t997;
t719 = -pkin(2) * t864 - t992;
t717 = -qJ(2) * t817 - t946;
t716 = -qJ(2) * t816 - t945;
t715 = t1039 * t815 + t1040 * t857 + t1018;
t714 = t1039 * t810 + t1040 * t855 + t791;
t712 = -t1074 * t898 - t761 * t901;
t710 = t1074 * t901 - t761 * t898;
t705 = t748 * t903 - t767 * t900;
t704 = t748 * t900 + t767 * t903;
t702 = -t1039 * t860 - t1040 * t864 - t733;
t701 = t746 * t899 + t762 * t902;
t700 = t745 * t899 - t766 * t902;
t699 = t745 * t902 + t766 * t899;
t698 = t746 * t902 - t762 * t899;
t690 = -t1040 * t817 - t1067;
t689 = -t1040 * t816 - t1068;
t669 = t712 * t902 + t798 * t899;
t668 = t712 * t899 - t798 * t902;
t667 = t724 * t903 + t751 * t900;
t666 = t723 * t903 - t749 * t900;
t665 = t724 * t900 - t751 * t903;
t664 = t723 * t900 + t749 * t903;
t652 = t701 * t903 - t744 * t900;
t651 = t700 * t903 - t743 * t900;
t650 = t701 * t900 + t744 * t903;
t649 = t700 * t900 + t743 * t903;
t645 = -qJ(2) * t734 - t965;
t644 = t1039 * t733 + t1040 * t800;
t641 = pkin(6) * (t692 * t903 - t739 * t900);
t638 = pkin(6) * (t680 * t903 - t729 * t900);
t628 = t668 * t903 - t710 * t900;
t627 = t668 * t900 + t710 * t903;
t625 = pkin(6) * (t662 * t903 - t711 * t900);
t622 = -t1040 * t734 + t1071;
t592 = -t753 + t923;
t588 = t754 + t924;
t587 = t942 + t1081;
t586 = t914 + t1075;
t585 = t943 + t1082;
t584 = t915 + t1076;
t583 = t923 + t1080;
t582 = t924 + t1083;
t581 = -t926 - t1038;
t580 = t929 + t1078;
t579 = t925 + t633;
t575 = t942 + t1085;
t574 = t916 + t1075;
t573 = t943 + t1086;
t572 = t917 + t1076;
t571 = t925 + t1084;
t570 = -t957 - t1038;
t569 = t918 + t1078;
t568 = -t1040 * t618 - t1066;
t567 = -qJ(2) * t618 - t1070;
t566 = t629 + t1039 * t617 + (pkin(1) + t985) * t632;
t565 = -t1040 * t597 - t1069;
t564 = -qJ(2) * t597 - t932;
t563 = t1039 * t596 + t1040 * t600 + t984;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t861, 0, -t862, 0, -t961, -t960, -t948, -pkin(6) * t948, 0, -t861, t862, 0, 0, 0, t949, t961, t960, pkin(6) * t949 + (-pkin(1) * t900 + qJ(2) * t903) * g(3), 0, t862, t861, 0, 0, 0, -t950, t930, t803, -pkin(6) * t950 - t900 * t787 + t903 * t795, t824 * t903 - t978, t789 * t903 + t863 * t900, t814 * t903 - t900 * t998, t823 * t903 + t978, t809 * t903 + t900 * t999, -qJDD(4) * t900 - t850 * t903, t903 * t716 - t900 * t689 - pkin(6) * (t810 * t900 + t855 * t903), t903 * t717 - t900 * t690 - pkin(6) * (t815 * t900 + t857 * t903), -t903 * t719 + t900 * t807 - pkin(6) * (-t860 * t900 - t864 * t903), t903 * t645 - t900 * t622 - pkin(6) * (t733 * t900 + t800 * t903), t667, t628, t651, t666, t652, t705, t585 * t903 - t588 * t900 - t1053, t587 * t903 - t592 * t900 - t1052, -t579 * t900 + t581 * t903 - t1054, t903 * t567 - t900 * t568 - pkin(6) * (t617 * t900 + t632 * t903), t667, t628, t651, t666, t652, t705, t573 * t903 - t582 * t900 - t1053, t575 * t903 - t583 * t900 - t1052, t570 * t903 - t571 * t900 - t1054, t903 * t564 - t900 * t565 - pkin(6) * (t596 * t900 + t600 * t903); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t862, 0, t861, 0, t960, -t961, t980, pkin(6) * t980, 0, -t862, -t861, 0, 0, 0, t981, -t960, t961, pkin(6) * t981 + (pkin(1) * t903 + qJ(2) * t900) * g(3), 0, -t861, t862, 0, 0, 0, t982, -t803, t930, pkin(6) * t982 + t903 * t787 + t900 * t795, t824 * t900 + t977, t789 * t900 - t863 * t903, t814 * t900 + t903 * t998, t823 * t900 - t977, t809 * t900 - t903 * t999, qJDD(4) * t903 - t850 * t900, t900 * t716 + t903 * t689 + pkin(6) * (t810 * t903 - t855 * t900), t900 * t717 + t903 * t690 + pkin(6) * (t815 * t903 - t857 * t900), -t900 * t719 - t903 * t807 + pkin(6) * (-t860 * t903 + t864 * t900), t900 * t645 + t903 * t622 + pkin(6) * (t733 * t903 - t800 * t900), t665, t627, t649, t664, t650, t704, t585 * t900 + t588 * t903 + t638, t587 * t900 + t592 * t903 + t641, t579 * t903 + t581 * t900 + t625, t900 * t567 + t903 * t568 + pkin(6) * (t617 * t903 - t632 * t900), t665, t627, t649, t664, t650, t704, t573 * t900 + t582 * t903 + t638, t575 * t900 + t583 * t903 + t641, t570 * t900 + t571 * t903 + t625, t900 * t564 + t903 * t565 + pkin(6) * (t596 * t903 - t600 * t900); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t867, t868, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t845, t839, t772, qJDD(1), 0, 0, 0, 0, 0, 0, t832, t828, t732, t808, t790, t812, t811, t813, 0, t714, t715, t702, t644, t722, t669, t699, t721, t698, t747, t584, t586, t580, t566, t722, t669, t699, t721, t698, t747, t572, t574, t569, t563; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t906, 0, 0, -g(3), -t867, 0, 0, -qJDD(1), t906, 0, 0, 0, -t833, 0, g(3), t897, 0, t906, qJDD(1), 0, 0, 0, -t818, -t886, -t895, t795, t824, t789, t814, t823, t809, -t850, t716, t717, -t719, t645, t724, t668, t700, t723, t701, t748, t585, t587, t581, t567, t724, t668, t700, t723, t701, t748, t573, t575, t570, t564; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t906, 0, qJDD(1), 0, g(3), 0, -t868, 0, 0, -t906, -qJDD(1), 0, 0, 0, -t831, -g(3), 0, t904, 0, -qJDD(1), t906, 0, 0, 0, -t819, t895, -t886, t787, t876, -t863, t998, -t876, -t999, qJDD(4), t689, t690, -t807, t622, -t751, t710, t743, t749, t744, t767, t588, t592, t579, t568, -t751, t710, t743, t749, t744, t767, t582, t583, t571, t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t867, t868, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t845, t839, t772, qJDD(1), 0, 0, 0, 0, 0, 0, t832, t828, t732, t808, t790, t812, t811, t813, 0, t714, t715, t702, t644, t722, t669, t699, t721, t698, t747, t584, t586, t580, t566, t722, t669, t699, t721, t698, t747, t572, t574, t569, t563; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t833, -t831, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t920 - t1063, t887 + t911 + t1034, qJ(3) * t818, t808, t790, t812, t811, t813, 0, qJ(3) * t855 + t958, qJ(3) * t857 + t986, -qJ(3) * t864 + t935, qJ(3) * t800 - t1046, t722, t669, t699, t721, t698, t747, t915, t914, t929, t632 * t985 + t987, t722, t669, t699, t721, t698, t747, t917, t916, t918, qJ(3) * t600 + t941; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t906, 0, 0, 0, t833, 0, -g(3), 0, 0, -t906, -qJDD(1), 0, 0, 0, t818, t886, t895, t1062, -t824, -t789, -t814, -t823, -t809, t850, t945, t946, t719, t965, -t724, -t668, -t700, -t723, -t701, -t748, t727 - t969, t737 - t968, t926, t1070, -t724, -t668, -t700, -t723, -t701, -t748, t727 - t974, t737 - t973, t957, t932; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t906, qJDD(1), 0, 0, 0, t831, g(3), 0, 0, 0, qJDD(1), -t906, 0, 0, 0, t819, -t895, t886, t963, -t876, t863, -t998, t876, t999, -qJDD(4), qJ(3) * t816 + t1068, qJ(3) * t817 + t1067, t807, qJ(3) * t734 - t1071, t751, -t710, -t743, -t749, -t744, -t767, -t754 + t955, t753 + t954, t953 + t1079, qJ(3) * t618 + t1066, t751, -t710, -t743, -t749, -t744, -t767, t952 + t1077, t954 - t1080, t956 - t1084, qJ(3) * t597 + t1069; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t819, t818, 0, t808, t790, t812, t811, t813, 0, t958, t986, t935, -t1046, t722, t669, t699, t721, t698, t747, t937, t936, t964, -t1041 * t632 + t987, t722, t669, t699, t721, t698, t747, t939, t938, t940, t941; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t906, 0, 0, 0, t819, 0, -g(3), 0, -t876, t863, -t998, t876, t999, -qJDD(4), -pkin(3) * t810 - t784, -pkin(3) * t815 - t785, t854, -pkin(3) * t733, t751, -t710, -t743, -t749, -t744, -t767, -t754 + t994, t753 + t993, t953, -pkin(3) * t617 - t1010, t751, -t710, -t743, -t749, -t744, -t767, t952, -t687 - t970, -t660 - t972, -pkin(3) * t596 - t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t906, qJDD(1), 0, 0, 0, -t818, g(3), 0, 0, t824, t789, t814, t823, t809, -t850, t990, t991, t992, t1008, t724, t668, t700, t723, t701, t748, t969, t968, t933, t632 * t962 - t1016, t724, t668, t700, t723, t701, t748, t974, t973, t975, t976; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t856, -t855, t866, t989, t870, -t989, 0, t800, -t784, 0, t752, t712, t745, t750, t746, t768, t679, t691, t604, -pkin(8) * t632, t752, t712, t745, t750, t746, t768, t610, t614, t591, t578; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t988, t857, t872, t931, t865, -t988, -t800, 0, -t785, 0, t804, -t798, -t766, -t804, t762, -t919, t646, t648, -t1061, -pkin(4) * t632, t804, -t798, -t766, -t804, t762, -t919, t611, t619, t656, t594; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t876, -t863, t998, -t876, -t999, qJDD(4), t784, t785, 0, 0, -t751, t710, t743, t749, t744, t767, t754 - t1009, -t753 + t1011, t967, t1010, -t751, t710, t743, t749, t744, t767, t966, t970, t972, t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t783, -t761, t1073, -t830, t825, t830, 0, -t757, t696, 0, t783, -t761, t1073, -t830, t825, t830, -qJ(6) * t1073, t655, t624, qJ(6) * t635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1023, t1074, t826, t782, t774, -t1023, t757, 0, t697, 0, t1023, t1074, t826, t782, t774, -t1023, t637, t720, t621, t606; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t804, t798, t766, t804, -t762, t919, -t696, -t697, 0, 0, -t804, t798, t766, t804, -t762, t919, t909, t922 - 0.2e1 * t1005, -t1055, -t1056; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t783, -t761, t1073, -t830, t825, t830, 0, -t671, t635, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1023, t1074, t826, t782, t774, -t1023, t671, 0, t640, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t804, t798, t766, t804, -t762, t919, -t635, -t640, 0, 0;];
m_new_reg  = t1;
