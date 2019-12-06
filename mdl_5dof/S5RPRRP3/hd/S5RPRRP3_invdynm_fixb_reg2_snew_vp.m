% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRP3
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:04
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP3_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP3_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP3_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:04:13
% EndTime: 2019-12-05 18:04:25
% DurationCPUTime: 12.32s
% Computational Cost: add. (40505->536), mult. (82998->682), div. (0->0), fcn. (53268->8), ass. (0->381)
t984 = cos(qJ(3));
t1036 = qJD(1) * t984;
t981 = sin(qJ(3));
t1037 = qJD(1) * t981;
t980 = sin(qJ(4));
t983 = cos(qJ(4));
t927 = -t983 * t1036 + t980 * t1037;
t929 = t980 * t1036 + t983 * t1037;
t882 = t929 * t927;
t972 = qJDD(3) + qJDD(4);
t1087 = t882 - t972;
t1091 = t1087 * pkin(4);
t982 = sin(qJ(1));
t985 = cos(qJ(1));
t952 = t982 * g(2) - t985 * g(3);
t987 = qJD(1) ^ 2;
t936 = -t987 * pkin(1) + t952;
t977 = sin(pkin(8));
t978 = cos(pkin(8));
t953 = t985 * g(2) + t982 * g(3);
t991 = qJDD(1) * pkin(1) + t953;
t879 = t977 * t936 - t978 * t991;
t880 = t978 * t936 + t977 * t991;
t1015 = t977 * t879 + t978 * t880;
t816 = t978 * t879 - t977 * t880;
t1042 = t985 * t816;
t1090 = -t1015 * t982 + t1042;
t1049 = t982 * t816;
t1089 = -t1015 * t985 - t1049;
t1045 = t983 * t1087;
t924 = t927 ^ 2;
t973 = qJD(3) + qJD(4);
t971 = t973 ^ 2;
t873 = -t971 - t924;
t804 = t980 * t873 - t1045;
t801 = pkin(3) * t804;
t1031 = t981 * qJDD(1);
t1032 = qJD(1) * qJD(3);
t965 = t984 * t1032;
t939 = t965 + t1031;
t1023 = t981 * t1032;
t1030 = t984 * qJDD(1);
t993 = -t1023 + t1030;
t848 = -t927 * qJD(4) + t983 * t939 + t980 * t993;
t863 = -t987 * pkin(2) + qJDD(1) * pkin(6) + t880;
t975 = g(1) - qJDD(2);
t846 = t984 * t863 - t981 * t975;
t951 = qJD(3) * pkin(3) - pkin(7) * t1037;
t1078 = t984 ^ 2;
t969 = t1078 * t987;
t803 = -pkin(3) * t969 + pkin(7) * t993 - qJD(3) * t951 + t846;
t844 = t981 * t863 + t984 * t975;
t961 = t984 * t987 * t981;
t949 = qJDD(3) + t961;
t988 = (-t939 + t965) * pkin(7) + t949 * pkin(3) - t844;
t755 = t980 * t803 - t983 * t988;
t917 = t973 * t927;
t990 = qJ(5) * t917 + 0.2e1 * qJD(5) * t929 + t1091 + t755;
t718 = t848 * qJ(5) + t990;
t989 = -t718 - t1091;
t1088 = t801 + t989;
t1053 = t980 * t1087;
t943 = t978 * qJDD(1) - t977 * t987;
t1000 = -qJ(2) * t943 - t977 * t975;
t942 = t977 * qJDD(1) + t978 * t987;
t885 = t982 * t942 - t985 * t943;
t915 = qJ(2) * t942 - t978 * t975;
t1086 = pkin(5) * t885 + t1000 * t985 + t982 * t915;
t999 = t985 * t942 + t982 * t943;
t1085 = pkin(5) * t999 - t1000 * t982 + t985 * t915;
t794 = t981 * t844 + t984 * t846;
t1083 = -t917 + t848;
t1014 = t980 * t939 - t983 * t993;
t827 = (qJD(4) - t973) * t929 + t1014;
t925 = t929 ^ 2;
t805 = t983 * t873 + t1053;
t758 = t984 * t804 + t981 * t805;
t1077 = pkin(2) * t758;
t876 = t882 + t972;
t1054 = t980 * t876;
t903 = -t925 - t971;
t832 = t983 * t903 - t1054;
t1046 = t983 * t876;
t833 = -t980 * t903 - t1046;
t778 = t984 * t832 + t981 * t833;
t1076 = pkin(2) * t778;
t756 = t983 * t803 + t980 * t988;
t711 = -t983 * t755 + t980 * t756;
t1075 = pkin(3) * t711;
t831 = t917 + t848;
t775 = -t827 * t980 - t983 * t831;
t777 = -t827 * t983 + t980 * t831;
t722 = -t981 * t775 + t984 * t777;
t849 = -t924 - t925;
t709 = t977 * t722 - t978 * t849;
t710 = t978 * t722 + t977 * t849;
t1074 = pkin(5) * (-t982 * t709 + t985 * t710);
t759 = -t981 * t804 + t984 * t805;
t826 = (qJD(4) + t973) * t929 + t1014;
t727 = t977 * t759 - t978 * t826;
t728 = t978 * t759 + t977 * t826;
t1073 = pkin(5) * (-t982 * t727 + t985 * t728);
t779 = -t981 * t832 + t984 * t833;
t737 = -t1083 * t978 + t977 * t779;
t738 = t1083 * t977 + t978 * t779;
t1072 = pkin(5) * (-t982 * t737 + t985 * t738);
t720 = t984 * t775 + t981 * t777;
t1070 = pkin(6) * t720;
t1069 = pkin(6) * t758;
t1068 = pkin(6) * t778;
t1067 = pkin(7) * t775;
t1066 = pkin(7) * t804;
t1065 = pkin(7) * t832;
t1064 = qJ(2) * t709;
t1063 = qJ(2) * t727;
t1062 = qJ(2) * t737;
t1060 = t973 * t929;
t1059 = t973 * t980;
t1058 = t973 * t983;
t974 = t981 ^ 2;
t1057 = t974 * t987;
t1056 = t980 * t718;
t862 = -qJDD(1) * pkin(2) - t987 * pkin(6) + t879;
t818 = -t993 * pkin(3) - pkin(7) * t969 + t951 * t1037 + t862;
t1055 = t980 * t818;
t1052 = t981 * t711;
t858 = t981 * t862;
t1051 = t981 * t949;
t950 = qJDD(3) - t961;
t1050 = t981 * t950;
t1048 = t983 * t718;
t1047 = t983 * t818;
t1044 = t984 * t711;
t859 = t984 * t862;
t940 = -0.2e1 * t1023 + t1030;
t893 = t984 * t940;
t1043 = t984 * t950;
t1041 = -pkin(2) * t849 + pkin(6) * t722;
t1040 = -pkin(2) * t826 + pkin(6) * t759;
t1039 = -pkin(2) * t1083 + pkin(6) * t779;
t1038 = -pkin(2) * t862 + pkin(6) * t794;
t1035 = qJD(5) * t927;
t1029 = t974 + t1078;
t1028 = t977 * t882;
t1027 = t978 * t882;
t823 = pkin(3) * t832;
t1026 = t823 - t756;
t986 = qJD(3) ^ 2;
t955 = -t986 - t1057;
t902 = -t981 * t955 - t1043;
t938 = 0.2e1 * t965 + t1031;
t1025 = -pkin(2) * t938 + pkin(6) * t902 + t858;
t957 = -t969 - t986;
t900 = t984 * t957 - t1051;
t1024 = pkin(2) * t940 + pkin(6) * t900 - t859;
t1022 = -pkin(1) * t720 + qJ(2) * t710;
t1021 = -pkin(1) * t758 + qJ(2) * t728;
t1020 = -pkin(1) * t778 + qJ(2) * t738;
t771 = pkin(3) * t775;
t687 = -pkin(2) * t720 - t771;
t847 = -t929 * qJD(4) - t1014;
t904 = t973 * pkin(4) - t929 * qJ(5);
t1001 = t924 * pkin(4) - t847 * qJ(5) + t973 * t904 - t756;
t918 = -0.2e1 * t1035;
t724 = t918 - t1001;
t666 = t980 * t724 - t1048;
t717 = pkin(4) * t718;
t1019 = pkin(3) * t666 - t717;
t1018 = -pkin(3) * t849 + pkin(7) * t777;
t1017 = -pkin(3) * t826 + pkin(7) * t805;
t1016 = -pkin(3) * t1083 + pkin(7) * t833;
t712 = t980 * t755 + t983 * t756;
t1013 = t977 * t961;
t1012 = t978 * t961;
t667 = t983 * t724 + t1056;
t753 = -t847 * pkin(4) - t924 * qJ(5) + t929 * t904 + qJDD(5) + t818;
t682 = -pkin(4) * t753 + qJ(5) * t724;
t632 = -pkin(3) * t753 + pkin(7) * t667 + qJ(5) * t1056 + t983 * t682;
t639 = -pkin(7) * t666 + qJ(5) * t1048 - t980 * t682;
t646 = -t981 * t666 + t984 * t667;
t1011 = -pkin(2) * t753 + pkin(6) * t646 + t984 * t632 + t981 * t639;
t697 = -pkin(4) * t849 - qJ(5) * t827 + t724;
t706 = (t831 + t848) * qJ(5) + t990;
t652 = t983 * t697 + t980 * t706 + t1018;
t654 = -t980 * t697 + t983 * t706 - t1067;
t1010 = t984 * t652 + t981 * t654 + t1041;
t671 = t1018 + t712;
t678 = -t711 - t1067;
t1009 = t984 * t671 + t981 * t678 + t1041;
t723 = -pkin(4) * t826 + qJ(5) * t873 - t753;
t681 = qJ(5) * t1053 + t983 * t723 + t1017;
t696 = qJ(5) * t1045 - t980 * t723 - t1066;
t1008 = t984 * t681 + t981 * t696 + t1040;
t745 = -qJ(5) * t903 + t753;
t790 = -pkin(4) * t1083 - qJ(5) * t876;
t684 = t980 * t745 + t983 * t790 + t1016;
t703 = t983 * t745 - t980 * t790 - t1065;
t1007 = t984 * t684 + t981 * t703 + t1039;
t732 = t1017 - t1047;
t766 = t1055 - t1066;
t1006 = t984 * t732 + t981 * t766 + t1040;
t740 = t1016 + t1055;
t772 = t1047 - t1065;
t1005 = t984 * t740 + t981 * t772 + t1039;
t944 = t1029 * qJDD(1);
t947 = t969 + t1057;
t1004 = pkin(2) * t947 + pkin(6) * t944 + t794;
t945 = t982 * qJDD(1) + t985 * t987;
t1003 = pkin(5) * t945 - t985 * g(1);
t1002 = t755 - t801;
t793 = t984 * t844 - t981 * t846;
t998 = t985 * t952 - t982 * t953;
t997 = -t982 * t952 - t985 * t953;
t996 = pkin(4) * t903 + t1001;
t663 = t984 * t712 - t1052;
t693 = -pkin(3) * t818 + pkin(7) * t712;
t995 = -pkin(2) * t818 + pkin(6) * t663 - pkin(7) * t1052 + t984 * t693;
t992 = t823 + t996;
t956 = t969 - t986;
t954 = t986 - t1057;
t948 = -t969 + t1057;
t946 = -t985 * qJDD(1) + t982 * t987;
t935 = t984 * t949;
t934 = t1029 * t1032;
t923 = -pkin(5) * t946 + t982 * g(1);
t919 = 0.2e1 * t1035;
t910 = -t925 + t971;
t909 = t924 - t971;
t908 = -t974 * t1032 + t984 * t939;
t907 = -t1078 * t1032 - t981 * t993;
t906 = t977 * qJDD(3) + t978 * t934;
t905 = -t978 * qJDD(3) + t977 * t934;
t901 = -t981 * t954 + t935;
t899 = t984 * t956 - t1050;
t898 = t984 * t955 - t1050;
t897 = t984 * t954 + t1051;
t896 = t981 * t957 + t935;
t895 = t981 * t956 + t1043;
t894 = (t939 + t965) * t981;
t888 = t978 * t944 - t977 * t947;
t887 = t977 * t944 + t978 * t947;
t884 = -t981 * t938 + t893;
t883 = t984 * t938 + t981 * t940;
t878 = t925 - t924;
t872 = t978 * t908 - t1013;
t871 = t978 * t907 + t1013;
t870 = t977 * t908 + t1012;
t869 = t977 * t907 - t1012;
t868 = t977 * t1031 + t978 * t901;
t867 = t977 * t1030 + t978 * t899;
t866 = -t978 * t1031 + t977 * t901;
t865 = -t978 * t1030 + t977 * t899;
t857 = t978 * t902 + t977 * t938;
t856 = t978 * t900 - t977 * t940;
t855 = t977 * t902 - t978 * t938;
t854 = t977 * t900 + t978 * t940;
t853 = -pkin(1) * t942 - t880;
t852 = pkin(1) * t943 - t879;
t851 = (-t927 * t983 + t929 * t980) * t973;
t850 = (-t927 * t980 - t929 * t983) * t973;
t845 = t978 * t884 + t977 * t948;
t843 = t977 * t884 - t978 * t948;
t837 = t983 * t909 - t1054;
t836 = -t980 * t910 - t1045;
t835 = t980 * t909 + t1046;
t834 = t983 * t910 - t1053;
t825 = -pkin(6) * t898 + t859;
t824 = -pkin(6) * t896 + t858;
t819 = pkin(4) * t831;
t812 = pkin(1) * t816;
t811 = -t929 * t1059 + t983 * t848;
t810 = t929 * t1058 + t980 * t848;
t809 = t927 * t1058 - t980 * t847;
t808 = t927 * t1059 + t983 * t847;
t807 = -pkin(2) * t898 + t846;
t806 = -pkin(2) * t896 + t844;
t802 = pkin(1) * t975 + qJ(2) * t1015;
t796 = -t981 * t850 + t984 * t851;
t795 = t984 * t850 + t981 * t851;
t789 = t978 * t796 + t977 * t972;
t788 = t977 * t796 - t978 * t972;
t787 = pkin(1) * t854 + t1024;
t786 = pkin(1) * t855 + t1025;
t785 = -t981 * t835 + t984 * t837;
t784 = -t981 * t834 + t984 * t836;
t783 = t984 * t835 + t981 * t837;
t782 = t984 * t834 + t981 * t836;
t781 = -qJ(2) * t887 + t978 * t793;
t780 = qJ(2) * t888 + t977 * t793;
t776 = -t1083 * t980 - t983 * t826;
t774 = t1083 * t983 - t980 * t826;
t768 = t978 * t794 + t977 * t862;
t767 = t977 * t794 - t978 * t862;
t765 = -t981 * t810 + t984 * t811;
t764 = -t981 * t808 + t984 * t809;
t763 = t984 * t810 + t981 * t811;
t762 = t984 * t808 + t981 * t809;
t760 = pkin(1) * t887 + t1004;
t751 = t978 * t765 + t1028;
t750 = t978 * t764 - t1028;
t749 = t977 * t765 - t1027;
t748 = t977 * t764 + t1027;
t747 = -qJ(2) * t855 - t977 * t807 + t978 * t825;
t746 = -qJ(2) * t854 - t977 * t806 + t978 * t824;
t744 = t978 * t785 - t977 * t827;
t743 = t978 * t784 + t977 * t831;
t742 = t977 * t785 + t978 * t827;
t741 = t977 * t784 - t978 * t831;
t736 = pkin(1) * t737;
t734 = -pkin(1) * t898 + qJ(2) * t857 + t978 * t807 + t977 * t825;
t733 = -pkin(1) * t896 + qJ(2) * t856 + t978 * t806 + t977 * t824;
t731 = -t982 * t788 + t985 * t789;
t730 = -t985 * t788 - t982 * t789;
t726 = pkin(1) * t727;
t721 = -t981 * t774 + t984 * t776;
t719 = t984 * t774 + t981 * t776;
t715 = pkin(1) * t767 + t1038;
t714 = t978 * t721 + t977 * t878;
t713 = t977 * t721 - t978 * t878;
t708 = pkin(1) * t709;
t705 = -qJ(2) * t767 - (pkin(2) * t977 - pkin(6) * t978) * t793;
t704 = -t1026 - t1076;
t701 = -t982 * t749 + t985 * t751;
t700 = -t982 * t748 + t985 * t750;
t699 = -t985 * t749 - t982 * t751;
t698 = -t985 * t748 - t982 * t750;
t694 = t1002 - t1077;
t691 = -t982 * t742 + t985 * t744;
t690 = -t982 * t741 + t985 * t743;
t689 = -t985 * t742 - t982 * t744;
t688 = -t985 * t741 - t982 * t743;
t685 = pkin(5) * (-t985 * t737 - t982 * t738);
t680 = qJ(2) * t768 - (-pkin(2) * t978 - pkin(6) * t977 - pkin(1)) * t793;
t675 = pkin(5) * (-t985 * t727 - t982 * t728);
t674 = -t981 * t740 + t984 * t772 - t1068;
t673 = t687 + t819;
t672 = t918 - t992 - t1076;
t669 = -t981 * t732 + t984 * t766 - t1069;
t668 = -t1077 - t1088;
t665 = -t982 * t713 + t985 * t714;
t664 = -t985 * t713 - t982 * t714;
t662 = t981 * t712 + t1044;
t659 = pkin(5) * (-t985 * t709 - t982 * t710);
t658 = t978 * t663 + t977 * t818;
t657 = t977 * t663 - t978 * t818;
t656 = t736 + t1005;
t655 = t726 + t1006;
t650 = -t981 * t684 + t984 * t703 - t1068;
t649 = -pkin(2) * t662 - t1075;
t648 = -t981 * t681 + t984 * t696 - t1069;
t647 = t978 * t674 - t977 * t704 - t1062;
t645 = t984 * t666 + t981 * t667;
t643 = t978 * t669 - t977 * t694 - t1063;
t642 = t977 * t674 + t978 * t704 + t1020;
t641 = t736 + t1007;
t640 = -t981 * t671 + t984 * t678 - t1070;
t637 = t978 * t646 + t977 * t753;
t636 = t977 * t646 - t978 * t753;
t635 = t726 + t1008;
t634 = t977 * t669 + t978 * t694 + t1021;
t633 = -pkin(6) * t662 - pkin(7) * t1044 - t981 * t693;
t630 = t708 + t1009;
t629 = t978 * t650 - t977 * t672 - t1062;
t628 = t977 * t650 + t978 * t672 + t1020;
t627 = t978 * t648 - t977 * t668 - t1063;
t626 = -pkin(2) * t645 - t1019;
t625 = t977 * t648 + t978 * t668 + t1021;
t624 = t978 * t640 - t977 * t687 - t1064;
t623 = -t981 * t652 + t984 * t654 - t1070;
t622 = pkin(1) * t657 + t995;
t621 = t977 * t640 + t978 * t687 + t1022;
t620 = t708 + t1010;
t619 = t978 * t623 - t977 * t673 - t1064;
t618 = -qJ(2) * t657 + t978 * t633 - t977 * t649;
t617 = t977 * t623 + t978 * t673 + t1022;
t616 = -pkin(1) * t662 + qJ(2) * t658 + t977 * t633 + t978 * t649;
t615 = -pkin(6) * t645 - t981 * t632 + t984 * t639;
t614 = pkin(1) * t636 + t1011;
t613 = -qJ(2) * t636 + t978 * t615 - t977 * t626;
t612 = -pkin(1) * t645 + qJ(2) * t637 + t977 * t615 + t978 * t626;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t953, -t952, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t852, t853, 0, -t812, t894, t883, t897, t893, t895, 0, t787, t786, t760, t715, t763, t719, t782, t762, t783, t795, t655, t656, t630, t622, t763, t719, t782, t762, t783, t795, t635, t641, t620, t614; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t945, 0, t946, 0, t1003, t923, -t998, -pkin(5) * t998, 0, 0, -t999, 0, t885, 0, t1085, -t1086, t1089, pkin(5) * t1089 - qJ(2) * t1049 - t985 * t802, -t985 * t870 - t982 * t872, -t985 * t843 - t982 * t845, -t985 * t866 - t982 * t868, -t985 * t869 - t982 * t871, -t985 * t865 - t982 * t867, -t985 * t905 - t982 * t906, -t982 * t746 - t985 * t733 - pkin(5) * (-t982 * t854 + t985 * t856), -t982 * t747 - t985 * t734 - pkin(5) * (-t982 * t855 + t985 * t857), -t982 * t781 - t985 * t780 - pkin(5) * (-t982 * t887 + t985 * t888), -t982 * t705 - t985 * t680 - pkin(5) * (-t982 * t767 + t985 * t768), t699, t664, t688, t698, t689, t730, -t985 * t634 - t982 * t643 - t1073, -t985 * t642 - t982 * t647 - t1072, -t985 * t621 - t982 * t624 - t1074, -t982 * t618 - t985 * t616 - pkin(5) * (-t982 * t657 + t985 * t658), t699, t664, t688, t698, t689, t730, -t985 * t625 - t982 * t627 - t1073, -t985 * t628 - t982 * t629 - t1072, -t985 * t617 - t982 * t619 - t1074, -t982 * t613 - t985 * t612 - pkin(5) * (-t982 * t636 + t985 * t637); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t946, 0, -t945, 0, -t923, t1003, t997, pkin(5) * t997, 0, 0, -t885, 0, -t999, 0, t1086, t1085, t1090, pkin(5) * t1090 + qJ(2) * t1042 - t982 * t802, -t982 * t870 + t985 * t872, -t982 * t843 + t985 * t845, -t982 * t866 + t985 * t868, -t982 * t869 + t985 * t871, -t982 * t865 + t985 * t867, -t982 * t905 + t985 * t906, t985 * t746 - t982 * t733 + pkin(5) * (-t985 * t854 - t982 * t856), t985 * t747 - t982 * t734 + pkin(5) * (-t985 * t855 - t982 * t857), t985 * t781 - t982 * t780 + pkin(5) * (-t985 * t887 - t982 * t888), t985 * t705 - t982 * t680 + pkin(5) * (-t985 * t767 - t982 * t768), t701, t665, t690, t700, t691, t731, -t982 * t634 + t985 * t643 + t675, -t982 * t642 + t985 * t647 + t685, -t982 * t621 + t985 * t624 + t659, t985 * t618 - t982 * t616 + pkin(5) * (-t985 * t657 - t982 * t658), t701, t665, t690, t700, t691, t731, -t982 * t625 + t985 * t627 + t675, -t982 * t628 + t985 * t629 + t685, -t982 * t617 + t985 * t619 + t659, t985 * t613 - t982 * t612 + pkin(5) * (-t985 * t636 - t982 * t637); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t987, 0, 0, -g(1), -t953, 0, 0, 0, t943, 0, -t942, 0, t1000, t915, t816, qJ(2) * t816, t872, t845, t868, t871, t867, t906, t746, t747, t781, t705, t751, t714, t743, t750, t744, t789, t643, t647, t624, t618, t751, t714, t743, t750, t744, t789, t627, t629, t619, t613; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t987, 0, qJDD(1), 0, g(1), 0, t952, 0, 0, 0, t942, 0, t943, 0, -t915, t1000, t1015, t802, t870, t843, t866, t869, t865, t905, t733, t734, t780, t680, t749, t713, t741, t748, t742, t788, t634, t642, t621, t616, t749, t713, t741, t748, t742, t788, t625, t628, t617, t612; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t953, -t952, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t852, t853, 0, -t812, t894, t883, t897, t893, t895, 0, t787, t786, t760, t715, t763, t719, t782, t762, t783, t795, t655, t656, t630, t622, t763, t719, t782, t762, t783, t795, t635, t641, t620, t614; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t987, 0, 0, -t975, t879, 0, t908, t884, t901, t907, t899, t934, t824, t825, t793, pkin(6) * t793, t765, t721, t784, t764, t785, t796, t669, t674, t640, t633, t765, t721, t784, t764, t785, t796, t648, t650, t623, t615; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t987, 0, qJDD(1), 0, t975, 0, t880, 0, t961, -t948, -t1031, -t961, -t1030, -qJDD(3), t806, t807, 0, pkin(2) * t793, -t882, -t878, -t831, t882, t827, -t972, t694, t704, t687, t649, -t882, -t878, -t831, t882, t827, -t972, t668, t672, t673, t626; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t879, -t880, 0, 0, t894, t883, t897, t893, t895, 0, t1024, t1025, t1004, t1038, t763, t719, t782, t762, t783, t795, t1006, t1005, t1009, t995, t763, t719, t782, t762, t783, t795, t1008, t1007, t1010, t1011; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t939, t940, t949, -t965, t956, t965, 0, t862, t844, 0, t811, t776, t836, t809, t837, t851, t766, t772, t678, -pkin(7) * t711, t811, t776, t836, t809, t837, t851, t696, t703, t654, t639; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1023, t938, t954, t993, t950, -t1023, -t862, 0, t846, 0, t810, t774, t834, t808, t835, t850, t732, t740, t671, t693, t810, t774, t834, t808, t835, t850, t681, t684, t652, t632; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t961, t948, t1031, t961, t1030, qJDD(3), -t844, -t846, 0, 0, t882, t878, t831, -t882, -t827, t972, -t1002, t1026, t771, t1075, t882, t878, t831, -t882, -t827, t972, t1088, t919 + t992, -t819 + t771, t1019; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t848, -t826, -t1087, t917, t909, -t917, 0, t818, t755, 0, t848, -t826, -t1087, t917, t909, -t917, qJ(5) * t1087, t745, t706, qJ(5) * t718; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1060, t1083, t910, t847, t876, -t1060, -t818, 0, t756, 0, t1060, t1083, t910, t847, t876, -t1060, t723, t790, t697, t682; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t882, t878, t831, -t882, -t827, t972, -t755, -t756, 0, 0, t882, t878, t831, -t882, -t827, t972, t989, t919 + t996, -t819, -t717; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t848, -t826, -t1087, t917, t909, -t917, 0, t753, t718, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1060, t1083, t910, t847, t876, -t1060, -t753, 0, t724, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t882, t878, t831, -t882, -t827, t972, -t718, -t724, 0, 0;];
m_new_reg = t1;
