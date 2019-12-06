% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRRP3
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
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:44
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP3_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP3_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP3_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:44:27
% EndTime: 2019-12-05 16:44:36
% DurationCPUTime: 10.23s
% Computational Cost: add. (37542->525), mult. (78534->674), div. (0->0), fcn. (53252->8), ass. (0->377)
t975 = cos(qJ(3));
t1025 = qJD(2) * t975;
t972 = sin(qJ(3));
t1026 = qJD(2) * t972;
t971 = sin(qJ(4));
t974 = cos(qJ(4));
t918 = -t974 * t1025 + t971 * t1026;
t920 = t971 * t1025 + t974 * t1026;
t872 = t920 * t918;
t963 = qJDD(3) + qJDD(4);
t1085 = t872 - t963;
t1089 = t1085 * pkin(4);
t968 = sin(pkin(8));
t969 = cos(pkin(8));
t1003 = g(1) * t968 - t969 * g(2);
t941 = g(1) * t969 + g(2) * t968;
t973 = sin(qJ(2));
t976 = cos(qJ(2));
t1000 = t976 * t1003 + t941 * t973;
t981 = -t1003 * t973 + t976 * t941;
t1002 = -t1000 * t973 - t976 * t981;
t829 = -t1000 * t976 + t973 * t981;
t1047 = t829 * t968;
t1088 = t1002 * t969 + t1047;
t1046 = t829 * t969;
t1087 = -t1002 * t968 + t1046;
t1042 = t1085 * t974;
t916 = t918 ^ 2;
t964 = qJD(3) + qJD(4);
t962 = t964 ^ 2;
t852 = -t962 - t916;
t792 = t852 * t971 - t1042;
t791 = pkin(3) * t792;
t1019 = t972 * qJDD(2);
t1020 = qJD(2) * qJD(3);
t956 = t975 * t1020;
t933 = t956 + t1019;
t1011 = t972 * t1020;
t1018 = t975 * qJDD(2);
t983 = -t1011 + t1018;
t835 = -t918 * qJD(4) + t974 * t933 + t971 * t983;
t1071 = qJD(2) ^ 2;
t869 = -t1071 * pkin(2) + qJDD(2) * pkin(6) - t981;
t966 = g(3) - qJDD(1);
t846 = t975 * t869 - t972 * t966;
t944 = qJD(3) * pkin(3) - pkin(7) * t1026;
t1072 = t975 ^ 2;
t960 = t1072 * t1071;
t801 = -pkin(3) * t960 + pkin(7) * t983 - qJD(3) * t944 + t846;
t843 = t869 * t972 + t975 * t966;
t950 = t972 * t1071 * t975;
t942 = qJDD(3) + t950;
t978 = (-t933 + t956) * pkin(7) + t942 * pkin(3) - t843;
t751 = t801 * t971 - t974 * t978;
t906 = t964 * t918;
t980 = qJ(5) * t906 + 0.2e1 * qJD(5) * t920 + t1089 + t751;
t714 = qJ(5) * t835 + t980;
t979 = -t714 - t1089;
t1086 = t791 + t979;
t1043 = t1085 * t971;
t937 = qJDD(2) * t973 + t1071 * t976;
t938 = qJDD(2) * t976 - t973 * t1071;
t1076 = t969 * t937 + t938 * t968;
t910 = pkin(5) * t937 - t966 * t976;
t988 = -pkin(5) * t938 - t966 * t973;
t1084 = qJ(1) * t1076 + t969 * t910 - t968 * t988;
t876 = -t937 * t968 + t969 * t938;
t1083 = -qJ(1) * t876 + t968 * t910 + t969 * t988;
t789 = t972 * t843 + t975 * t846;
t1079 = -t906 + t835;
t1075 = -t1003 * t968 - t969 * t941;
t1001 = t933 * t971 - t974 * t983;
t811 = (qJD(4) - t964) * t920 + t1001;
t1073 = t1003 * t969 - t968 * t941;
t917 = t920 ^ 2;
t793 = t852 * t974 + t1043;
t748 = t792 * t975 + t793 * t972;
t1070 = pkin(2) * t748;
t865 = t872 + t963;
t1045 = t865 * t971;
t896 = -t917 - t962;
t817 = t896 * t974 - t1045;
t1044 = t865 * t974;
t818 = -t896 * t971 - t1044;
t768 = t817 * t975 + t818 * t972;
t1069 = pkin(2) * t768;
t754 = t974 * t801 + t971 * t978;
t706 = -t751 * t974 + t754 * t971;
t1068 = pkin(3) * t706;
t815 = t906 + t835;
t764 = -t811 * t971 - t815 * t974;
t766 = -t811 * t974 + t815 * t971;
t712 = -t764 * t972 + t766 * t975;
t838 = -t916 - t917;
t701 = t712 * t973 - t838 * t976;
t1067 = pkin(5) * t701;
t749 = -t792 * t972 + t793 * t975;
t810 = (qJD(4) + t964) * t920 + t1001;
t720 = t749 * t973 - t810 * t976;
t1066 = pkin(5) * t720;
t769 = -t817 * t972 + t818 * t975;
t728 = -t1079 * t976 + t769 * t973;
t1065 = pkin(5) * t728;
t710 = t764 * t975 + t766 * t972;
t1064 = pkin(6) * t710;
t1063 = pkin(6) * t748;
t1062 = pkin(6) * t768;
t1061 = pkin(7) * t764;
t1060 = pkin(7) * t792;
t1059 = pkin(7) * t817;
t702 = t712 * t976 + t838 * t973;
t1058 = qJ(1) * (t701 * t969 + t702 * t968);
t721 = t749 * t976 + t810 * t973;
t1057 = qJ(1) * (t720 * t969 + t721 * t968);
t729 = t1079 * t973 + t769 * t976;
t1056 = qJ(1) * (t728 * t969 + t729 * t968);
t1053 = t706 * t972;
t1052 = t706 * t975;
t1051 = t714 * t971;
t1050 = t714 * t974;
t868 = -qJDD(2) * pkin(2) - t1071 * pkin(6) - t1000;
t819 = -t983 * pkin(3) - pkin(7) * t960 + t944 * t1026 + t868;
t1049 = t819 * t971;
t1048 = t819 * t974;
t934 = -0.2e1 * t1011 + t1018;
t886 = t934 * t975;
t1039 = t942 * t972;
t943 = qJDD(3) - t950;
t1038 = t943 * t972;
t1037 = t943 * t975;
t1036 = t964 * t920;
t1035 = t964 * t971;
t1034 = t964 * t974;
t1032 = t968 * t966;
t1031 = t969 * t966;
t853 = t972 * t868;
t854 = t975 * t868;
t1030 = -pkin(2) * t838 + pkin(6) * t712;
t1029 = -pkin(2) * t810 + pkin(6) * t749;
t1028 = -pkin(2) * t1079 + pkin(6) * t769;
t1027 = -pkin(2) * t868 + pkin(6) * t789;
t965 = t972 ^ 2;
t1024 = t1071 * t965;
t1023 = qJD(5) * t918;
t1017 = t965 + t1072;
t1016 = t973 * t872;
t1015 = t976 * t872;
t808 = pkin(3) * t817;
t1014 = t808 - t754;
t977 = qJD(3) ^ 2;
t946 = -t977 - t1024;
t895 = -t946 * t972 - t1037;
t932 = 0.2e1 * t956 + t1019;
t1013 = -pkin(2) * t932 + pkin(6) * t895 + t853;
t948 = -t960 - t977;
t893 = t948 * t975 - t1039;
t1012 = pkin(2) * t934 + pkin(6) * t893 - t854;
t1010 = -pkin(1) * t710 + pkin(5) * t702;
t1009 = -pkin(1) * t748 + pkin(5) * t721;
t1008 = -pkin(1) * t768 + pkin(5) * t729;
t761 = pkin(3) * t764;
t679 = -pkin(2) * t710 - t761;
t911 = -0.2e1 * t1023;
t834 = -qJD(4) * t920 - t1001;
t897 = pkin(4) * t964 - qJ(5) * t920;
t987 = t916 * pkin(4) - t834 * qJ(5) + t964 * t897 - t754;
t716 = t911 - t987;
t660 = t716 * t971 - t1050;
t713 = pkin(4) * t714;
t1007 = pkin(3) * t660 - t713;
t1006 = -pkin(3) * t838 + pkin(7) * t766;
t1005 = -pkin(3) * t810 + pkin(7) * t793;
t1004 = -pkin(3) * t1079 + pkin(7) * t818;
t707 = t751 * t971 + t974 * t754;
t661 = t716 * t974 + t1051;
t746 = -t834 * pkin(4) - t916 * qJ(5) + t897 * t920 + qJDD(5) + t819;
t676 = -pkin(4) * t746 + qJ(5) * t716;
t625 = -pkin(3) * t746 + pkin(7) * t661 + qJ(5) * t1051 + t676 * t974;
t632 = -pkin(7) * t660 + qJ(5) * t1050 - t676 * t971;
t639 = -t660 * t972 + t661 * t975;
t999 = -pkin(2) * t746 + pkin(6) * t639 + t975 * t625 + t972 * t632;
t694 = -pkin(4) * t838 - qJ(5) * t811 + t716;
t698 = (t815 + t835) * qJ(5) + t980;
t645 = t694 * t974 + t698 * t971 + t1006;
t647 = -t694 * t971 + t698 * t974 - t1061;
t998 = t975 * t645 + t972 * t647 + t1030;
t664 = t1006 + t707;
t673 = -t706 - t1061;
t997 = t975 * t664 + t972 * t673 + t1030;
t715 = -pkin(4) * t810 + qJ(5) * t852 - t746;
t671 = qJ(5) * t1043 + t715 * t974 + t1005;
t686 = qJ(5) * t1042 - t715 * t971 - t1060;
t996 = t975 * t671 + t972 * t686 + t1029;
t738 = -qJ(5) * t896 + t746;
t783 = -pkin(4) * t1079 - qJ(5) * t865;
t675 = t738 * t971 + t783 * t974 + t1004;
t696 = t738 * t974 - t783 * t971 - t1059;
t995 = t975 * t675 + t972 * t696 + t1028;
t725 = t1005 - t1048;
t758 = t1049 - t1060;
t994 = t975 * t725 + t972 * t758 + t1029;
t737 = t1004 + t1049;
t770 = t1048 - t1059;
t993 = t975 * t737 + t972 * t770 + t1028;
t936 = t1017 * qJDD(2);
t939 = t960 + t1024;
t992 = pkin(2) * t939 + pkin(6) * t936 + t789;
t991 = t973 * t950;
t990 = t976 * t950;
t989 = t751 - t791;
t788 = t843 * t975 - t846 * t972;
t986 = pkin(4) * t896 + t987;
t658 = t707 * t975 - t1053;
t693 = -pkin(3) * t819 + pkin(7) * t707;
t985 = -pkin(2) * t819 + pkin(6) * t658 - pkin(7) * t1053 + t975 * t693;
t982 = t808 + t986;
t947 = t960 - t977;
t945 = t977 - t1024;
t940 = -t960 + t1024;
t930 = t975 * t942;
t929 = t1017 * t1020;
t912 = 0.2e1 * t1023;
t903 = -t917 + t962;
t902 = t916 - t962;
t901 = qJDD(3) * t973 + t929 * t976;
t900 = -t965 * t1020 + t933 * t975;
t899 = -qJDD(3) * t976 + t929 * t973;
t898 = -t1072 * t1020 - t972 * t983;
t894 = -t945 * t972 + t930;
t892 = t947 * t975 - t1038;
t891 = t946 * t975 - t1038;
t890 = t945 * t975 + t1039;
t889 = t948 * t972 + t930;
t888 = t947 * t972 + t1037;
t887 = (t933 + t956) * t972;
t879 = t936 * t976 - t939 * t973;
t878 = t936 * t973 + t939 * t976;
t874 = -t932 * t972 + t886;
t873 = t932 * t975 + t934 * t972;
t870 = t917 - t916;
t863 = t900 * t976 - t991;
t862 = t898 * t976 + t991;
t861 = t900 * t973 + t990;
t860 = t898 * t973 - t990;
t859 = t973 * t1019 + t894 * t976;
t858 = t973 * t1018 + t892 * t976;
t857 = -t976 * t1019 + t894 * t973;
t856 = -t976 * t1018 + t892 * t973;
t850 = -pkin(1) * t937 + t981;
t849 = pkin(1) * t938 + t1000;
t848 = t895 * t976 + t932 * t973;
t847 = t893 * t976 - t934 * t973;
t845 = t895 * t973 - t932 * t976;
t844 = t893 * t973 + t934 * t976;
t842 = (-t918 * t974 + t920 * t971) * t964;
t841 = (-t918 * t971 - t920 * t974) * t964;
t837 = t874 * t976 + t940 * t973;
t836 = t874 * t973 - t940 * t976;
t826 = pkin(1) * t829;
t825 = -pkin(6) * t891 + t854;
t824 = -pkin(6) * t889 + t853;
t823 = t902 * t974 - t1045;
t822 = -t903 * t971 - t1042;
t821 = t902 * t971 + t1044;
t820 = t903 * t974 - t1043;
t809 = pkin(1) * t966 + pkin(5) * t1002;
t804 = pkin(4) * t815;
t803 = -pkin(2) * t891 + t846;
t802 = -pkin(2) * t889 + t843;
t800 = -t920 * t1035 + t835 * t974;
t799 = t920 * t1034 + t835 * t971;
t798 = t918 * t1034 - t834 * t971;
t797 = t918 * t1035 + t834 * t974;
t785 = -t841 * t972 + t842 * t975;
t784 = t841 * t975 + t842 * t972;
t782 = t785 * t976 + t963 * t973;
t781 = t785 * t973 - t963 * t976;
t780 = pkin(1) * t845 + t1013;
t779 = pkin(1) * t844 + t1012;
t778 = -pkin(5) * t878 + t788 * t976;
t777 = pkin(5) * t879 + t788 * t973;
t776 = -t821 * t972 + t823 * t975;
t775 = -t820 * t972 + t822 * t975;
t774 = t821 * t975 + t823 * t972;
t773 = t820 * t975 + t822 * t972;
t772 = t789 * t976 + t868 * t973;
t771 = t789 * t973 - t868 * t976;
t765 = -t1079 * t971 - t810 * t974;
t763 = t1079 * t974 - t810 * t971;
t759 = pkin(1) * t878 + t992;
t756 = -t799 * t972 + t800 * t975;
t755 = -t797 * t972 + t798 * t975;
t753 = t799 * t975 + t800 * t972;
t752 = t797 * t975 + t798 * t972;
t744 = -pkin(5) * t845 - t803 * t973 + t825 * t976;
t743 = -pkin(5) * t844 - t802 * t973 + t824 * t976;
t742 = t756 * t976 + t1016;
t741 = t755 * t976 - t1016;
t740 = t756 * t973 - t1015;
t739 = t755 * t973 + t1015;
t736 = t776 * t976 - t811 * t973;
t735 = t775 * t976 + t815 * t973;
t734 = t776 * t973 + t811 * t976;
t733 = t775 * t973 - t815 * t976;
t732 = -pkin(1) * t891 + pkin(5) * t848 + t803 * t976 + t825 * t973;
t731 = -pkin(1) * t889 + pkin(5) * t847 + t802 * t976 + t824 * t973;
t727 = pkin(1) * t728;
t723 = -t781 * t968 + t782 * t969;
t722 = t781 * t969 + t782 * t968;
t719 = pkin(1) * t720;
t717 = pkin(1) * t771 + t1027;
t711 = -t763 * t972 + t765 * t975;
t709 = t763 * t975 + t765 * t972;
t705 = t711 * t976 + t870 * t973;
t704 = t711 * t973 - t870 * t976;
t703 = -pkin(5) * t771 - (pkin(2) * t973 - pkin(6) * t976) * t788;
t700 = pkin(1) * t701;
t697 = -t1014 - t1069;
t691 = -t740 * t968 + t742 * t969;
t690 = -t739 * t968 + t741 * t969;
t689 = t740 * t969 + t742 * t968;
t688 = t739 * t969 + t741 * t968;
t687 = t989 - t1070;
t684 = -t734 * t968 + t736 * t969;
t683 = -t733 * t968 + t735 * t969;
t682 = t734 * t969 + t736 * t968;
t681 = t733 * t969 + t735 * t968;
t680 = pkin(5) * t772 - (-pkin(2) * t976 - pkin(6) * t973 - pkin(1)) * t788;
t677 = qJ(1) * (-t728 * t968 + t729 * t969);
t668 = qJ(1) * (-t720 * t968 + t721 * t969);
t667 = -t737 * t972 + t770 * t975 - t1062;
t666 = t911 - t982 - t1069;
t665 = t679 + t804;
t662 = -t725 * t972 + t758 * t975 - t1063;
t659 = -t1070 - t1086;
t657 = t707 * t972 + t1052;
t655 = -t704 * t968 + t705 * t969;
t654 = t704 * t969 + t705 * t968;
t652 = qJ(1) * (-t701 * t968 + t702 * t969);
t651 = t658 * t976 + t819 * t973;
t650 = t658 * t973 - t819 * t976;
t649 = t727 + t993;
t648 = t719 + t994;
t643 = -pkin(2) * t657 - t1068;
t642 = -t675 * t972 + t696 * t975 - t1062;
t641 = -t671 * t972 + t686 * t975 - t1063;
t640 = t667 * t976 - t697 * t973 - t1065;
t638 = t660 * t975 + t661 * t972;
t636 = t662 * t976 - t687 * t973 - t1066;
t635 = t667 * t973 + t697 * t976 + t1008;
t634 = t727 + t995;
t633 = -t664 * t972 + t673 * t975 - t1064;
t630 = t639 * t976 + t746 * t973;
t629 = t639 * t973 - t746 * t976;
t628 = t662 * t973 + t687 * t976 + t1009;
t627 = -pkin(6) * t657 - pkin(7) * t1052 - t693 * t972;
t626 = t719 + t996;
t623 = t700 + t997;
t622 = t642 * t976 - t666 * t973 - t1065;
t621 = t642 * t973 + t666 * t976 + t1008;
t620 = t641 * t976 - t659 * t973 - t1066;
t619 = -pkin(2) * t638 - t1007;
t618 = t641 * t973 + t659 * t976 + t1009;
t617 = t633 * t976 - t679 * t973 - t1067;
t616 = -t645 * t972 + t647 * t975 - t1064;
t615 = pkin(1) * t650 + t985;
t614 = t633 * t973 + t679 * t976 + t1010;
t613 = t700 + t998;
t612 = t616 * t976 - t665 * t973 - t1067;
t611 = -pkin(5) * t650 + t627 * t976 - t643 * t973;
t610 = t616 * t973 + t665 * t976 + t1010;
t609 = -pkin(1) * t657 + pkin(5) * t651 + t627 * t973 + t643 * t976;
t608 = -pkin(6) * t638 - t625 * t972 + t632 * t975;
t607 = pkin(1) * t629 + t999;
t606 = -pkin(5) * t629 + t608 * t976 - t619 * t973;
t605 = -pkin(1) * t638 + pkin(5) * t630 + t608 * t973 + t619 * t976;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1032, -t1031, -t1073, -qJ(1) * t1073, 0, 0, t876, 0, -t1076, 0, t1083, t1084, t1087, pkin(5) * t1046 + qJ(1) * t1087 - t968 * t809, -t861 * t968 + t863 * t969, -t836 * t968 + t837 * t969, -t857 * t968 + t859 * t969, -t860 * t968 + t862 * t969, -t856 * t968 + t858 * t969, -t899 * t968 + t901 * t969, t969 * t743 - t968 * t731 - qJ(1) * (t844 * t969 + t847 * t968), t969 * t744 - t968 * t732 - qJ(1) * (t845 * t969 + t848 * t968), t969 * t778 - t968 * t777 - qJ(1) * (t878 * t969 + t879 * t968), t969 * t703 - t968 * t680 - qJ(1) * (t771 * t969 + t772 * t968), t691, t655, t683, t690, t684, t723, -t628 * t968 + t636 * t969 - t1057, -t635 * t968 + t640 * t969 - t1056, -t614 * t968 + t617 * t969 - t1058, t969 * t611 - t968 * t609 - qJ(1) * (t650 * t969 + t651 * t968), t691, t655, t683, t690, t684, t723, -t618 * t968 + t620 * t969 - t1057, -t621 * t968 + t622 * t969 - t1056, -t610 * t968 + t612 * t969 - t1058, t969 * t606 - t968 * t605 - qJ(1) * (t629 * t969 + t630 * t968); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1031, -t1032, t1075, qJ(1) * t1075, 0, 0, t1076, 0, t876, 0, -t1084, t1083, t1088, pkin(5) * t1047 + qJ(1) * t1088 + t969 * t809, t861 * t969 + t863 * t968, t836 * t969 + t837 * t968, t857 * t969 + t859 * t968, t860 * t969 + t862 * t968, t856 * t969 + t858 * t968, t899 * t969 + t901 * t968, t968 * t743 + t969 * t731 + qJ(1) * (-t844 * t968 + t847 * t969), t968 * t744 + t969 * t732 + qJ(1) * (-t845 * t968 + t848 * t969), t968 * t778 + t969 * t777 + qJ(1) * (-t878 * t968 + t879 * t969), t968 * t703 + t969 * t680 + qJ(1) * (-t771 * t968 + t772 * t969), t689, t654, t681, t688, t682, t722, t628 * t969 + t636 * t968 + t668, t635 * t969 + t640 * t968 + t677, t614 * t969 + t617 * t968 + t652, t968 * t611 + t969 * t609 + qJ(1) * (-t650 * t968 + t651 * t969), t689, t654, t681, t688, t682, t722, t618 * t969 + t620 * t968 + t668, t621 * t969 + t622 * t968 + t677, t610 * t969 + t612 * t968 + t652, t968 * t606 + t969 * t605 + qJ(1) * (-t629 * t968 + t630 * t969); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1003, t941, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t849, t850, 0, -t826, t887, t873, t890, t886, t888, 0, t779, t780, t759, t717, t753, t709, t773, t752, t774, t784, t648, t649, t623, t615, t753, t709, t773, t752, t774, t784, t626, t634, t613, t607; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t966, -t1003, 0, 0, 0, t938, 0, -t937, 0, t988, t910, t829, pkin(5) * t829, t863, t837, t859, t862, t858, t901, t743, t744, t778, t703, t742, t705, t735, t741, t736, t782, t636, t640, t617, t611, t742, t705, t735, t741, t736, t782, t620, t622, t612, t606; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t966, 0, -t941, 0, 0, 0, t937, 0, t938, 0, -t910, t988, t1002, t809, t861, t836, t857, t860, t856, t899, t731, t732, t777, t680, t740, t704, t733, t739, t734, t781, t628, t635, t614, t609, t740, t704, t733, t739, t734, t781, t618, t621, t610, t605; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1003, t941, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t849, t850, 0, -t826, t887, t873, t890, t886, t888, 0, t779, t780, t759, t717, t753, t709, t773, t752, t774, t784, t648, t649, t623, t615, t753, t709, t773, t752, t774, t784, t626, t634, t613, t607; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1071, 0, 0, -t966, -t1000, 0, t900, t874, t894, t898, t892, t929, t824, t825, t788, pkin(6) * t788, t756, t711, t775, t755, t776, t785, t662, t667, t633, t627, t756, t711, t775, t755, t776, t785, t641, t642, t616, t608; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1071, 0, qJDD(2), 0, t966, 0, -t981, 0, t950, -t940, -t1019, -t950, -t1018, -qJDD(3), t802, t803, 0, pkin(2) * t788, -t872, -t870, -t815, t872, t811, -t963, t687, t697, t679, t643, -t872, -t870, -t815, t872, t811, -t963, t659, t666, t665, t619; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t1000, t981, 0, 0, t887, t873, t890, t886, t888, 0, t1012, t1013, t992, t1027, t753, t709, t773, t752, t774, t784, t994, t993, t997, t985, t753, t709, t773, t752, t774, t784, t996, t995, t998, t999; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t933, t934, t942, -t956, t947, t956, 0, t868, t843, 0, t800, t765, t822, t798, t823, t842, t758, t770, t673, -pkin(7) * t706, t800, t765, t822, t798, t823, t842, t686, t696, t647, t632; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1011, t932, t945, t983, t943, -t1011, -t868, 0, t846, 0, t799, t763, t820, t797, t821, t841, t725, t737, t664, t693, t799, t763, t820, t797, t821, t841, t671, t675, t645, t625; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t950, t940, t1019, t950, t1018, qJDD(3), -t843, -t846, 0, 0, t872, t870, t815, -t872, -t811, t963, -t989, t1014, t761, t1068, t872, t870, t815, -t872, -t811, t963, t1086, t912 + t982, -t804 + t761, t1007; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t835, -t810, -t1085, t906, t902, -t906, 0, t819, t751, 0, t835, -t810, -t1085, t906, t902, -t906, qJ(5) * t1085, t738, t698, qJ(5) * t714; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1036, t1079, t903, t834, t865, -t1036, -t819, 0, t754, 0, t1036, t1079, t903, t834, t865, -t1036, t715, t783, t694, t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t872, t870, t815, -t872, -t811, t963, -t751, -t754, 0, 0, t872, t870, t815, -t872, -t811, t963, t979, t912 + t986, -t804, -t713; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t835, -t810, -t1085, t906, t902, -t906, 0, t746, t714, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1036, t1079, t903, t834, t865, -t1036, -t746, 0, t716, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t872, t870, t815, -t872, -t811, t963, -t714, -t716, 0, 0;];
m_new_reg = t1;