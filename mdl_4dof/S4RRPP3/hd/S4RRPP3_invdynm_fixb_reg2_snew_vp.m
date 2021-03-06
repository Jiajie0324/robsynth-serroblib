% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S4RRPP3
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,theta3]';
%
% Output:
% m_new_reg [(3*5)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:58
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S4RRPP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPP3_invdynm_fixb_reg2_snew_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPP3_invdynm_fixb_reg2_snew_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRPP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRPP3_invdynm_fixb_reg2_snew_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:58:01
% EndTime: 2019-12-31 16:58:07
% DurationCPUTime: 7.12s
% Computational Cost: add. (12426->410), mult. (29576->476), div. (0->0), fcn. (18720->6), ass. (0->283)
t860 = sin(pkin(6));
t861 = cos(pkin(6));
t865 = cos(qJ(2));
t911 = qJD(1) * t865;
t863 = sin(qJ(2));
t912 = qJD(1) * t863;
t820 = t860 * t911 + t861 * t912;
t817 = t820 ^ 2;
t867 = qJD(2) ^ 2;
t766 = t867 + t817;
t818 = t860 * t912 - t861 * t911;
t940 = t820 * t818;
t952 = qJDD(2) + t940;
t934 = t860 * t952;
t703 = t861 * t766 + t934;
t929 = t861 * t952;
t719 = t860 * t766 - t929;
t680 = t863 * t703 + t865 * t719;
t864 = sin(qJ(1));
t866 = cos(qJ(1));
t905 = qJD(1) * qJD(2);
t849 = t865 * t905;
t903 = t863 * qJDD(1);
t829 = t849 + t903;
t895 = t863 * t905;
t901 = t865 * qJDD(1);
t876 = -t895 + t901;
t779 = t861 * t829 + t860 * t876;
t910 = qJD(2) * t818;
t958 = t779 - t910;
t1020 = pkin(4) * (t866 * t680 + t864 * t958);
t1019 = pkin(4) * (t864 * t680 - t866 * t958);
t662 = t865 * t703 - t863 * t719;
t1018 = pkin(1) * t662;
t1017 = pkin(5) * t662;
t1016 = pkin(1) * t958 - pkin(5) * t680;
t778 = t860 * t829 - t861 * t876;
t813 = qJD(2) * t820;
t745 = t778 + t813;
t692 = -t860 * t745 + t861 * t958;
t930 = t861 * t745;
t936 = t860 * t958;
t694 = t930 + t936;
t650 = t863 * t692 + t865 * t694;
t947 = t818 ^ 2;
t956 = t817 - t947;
t1015 = t864 * t650 + t866 * t956;
t1014 = t866 * t650 - t864 * t956;
t800 = t947 - t867;
t708 = t860 * t800 + t929;
t714 = t861 * t800 - t934;
t676 = t863 * t708 - t865 * t714;
t746 = t778 - t813;
t1013 = t864 * t676 - t866 * t746;
t1012 = t866 * t676 + t864 * t746;
t955 = t910 + t779;
t976 = -t861 * t746 + t860 * t955;
t977 = -t860 * t746 - t861 * t955;
t989 = t863 * t976 + t865 * t977;
t1009 = pkin(1) * t989;
t1008 = pkin(2) * t703;
t1007 = pkin(5) * t989;
t1006 = qJ(3) * t703;
t1005 = qJ(3) * t719;
t743 = -t947 - t817;
t990 = -t863 * t977 + t865 * t976;
t1004 = -pkin(1) * t743 + pkin(5) * t990;
t646 = -t865 * t692 + t863 * t694;
t801 = t817 - t867;
t953 = qJDD(2) - t940;
t933 = t860 * t953;
t978 = -t861 * t801 + t933;
t760 = t861 * t953;
t979 = t860 * t801 + t760;
t987 = -t863 * t978 + t865 * t979;
t1003 = t864 * t987 - t866 * t955;
t1002 = t864 * t955 + t866 * t987;
t1001 = pkin(4) * (-t866 * t743 + t864 * t990);
t1000 = pkin(4) * (t864 * t743 + t866 * t990);
t669 = t865 * t708 + t863 * t714;
t945 = pkin(2) * t977;
t954 = -t947 - t867;
t963 = t861 * t954 - t933;
t965 = t860 * t954 + t760;
t974 = t863 * t963 + t865 * t965;
t999 = pkin(5) * t974;
t998 = qJ(3) * t977;
t984 = pkin(2) * t965;
t995 = -pkin(1) * t974 - t984;
t975 = -t863 * t965 + t865 * t963;
t994 = -pkin(1) * t745 + pkin(5) * t975;
t993 = -pkin(2) * t743 + qJ(3) * t976;
t992 = pkin(4) * (-t866 * t745 + t864 * t975);
t991 = pkin(4) * (t864 * t745 + t866 * t975);
t988 = t863 * t979 + t865 * t978;
t983 = qJ(3) * t963;
t982 = qJ(3) * t965;
t966 = t958 * qJ(4);
t850 = t864 * qJDD(2);
t875 = (-t818 * t860 - t820 * t861) * qJD(2);
t909 = qJD(2) * t860;
t799 = t820 * t909;
t908 = qJD(2) * t861;
t896 = t818 * t908;
t881 = t799 - t896;
t950 = -t863 * t875 + t865 * t881;
t964 = t866 * t950 + t850;
t897 = t866 * t940;
t877 = t860 * t778 + t896;
t882 = -t861 * t778 + t818 * t909;
t949 = -t863 * t882 + t865 * t877;
t962 = t864 * t949 + t897;
t899 = t866 * qJDD(2);
t961 = t864 * t950 - t899;
t898 = t864 * t940;
t960 = t866 * t949 - t898;
t959 = -pkin(3) * t953 - qJ(4) * t954;
t907 = qJD(3) * t818;
t807 = -0.2e1 * t907;
t904 = qJD(4) * qJD(2);
t957 = t807 + 0.2e1 * t904;
t858 = t865 ^ 2;
t868 = qJD(1) ^ 2;
t851 = t858 * t868;
t846 = -t851 - t867;
t951 = t863 * t881 + t865 * t875;
t948 = t863 * t877 + t865 * t882;
t923 = t863 * t868;
t839 = t866 * g(1) + t864 * g(2);
t823 = -t868 * pkin(1) + qJDD(1) * pkin(5) - t839;
t926 = t863 * t823;
t731 = qJDD(2) * pkin(2) - t829 * qJ(3) - t926 + (pkin(2) * t923 + qJ(3) * t905 - g(3)) * t865;
t794 = -t863 * g(3) + t865 * t823;
t732 = t846 * pkin(2) + qJ(3) * t901 + t794;
t893 = -t861 * t731 + t860 * t732;
t906 = qJD(3) * t820;
t666 = t893 + 0.2e1 * t906;
t915 = t860 * t731 + t861 * t732;
t667 = t807 + t915;
t640 = -t861 * t666 + t860 * t667;
t946 = pkin(2) * t640;
t942 = pkin(3) * t861;
t941 = t778 * pkin(3);
t857 = t863 ^ 2;
t939 = t857 * t868;
t838 = t864 * g(1) - t866 * g(2);
t878 = qJDD(1) * pkin(1) + t838;
t742 = -(qJD(2) * pkin(2) - qJ(3) * t912) * t912 + t876 * pkin(2) - qJDD(3) + (t858 * qJ(3) + pkin(5)) * t868 + t878;
t938 = t860 * t742;
t931 = t861 * t742;
t928 = t863 * t640;
t822 = t868 * pkin(5) + t878;
t927 = t863 * t822;
t847 = t865 * t923;
t836 = qJDD(2) + t847;
t925 = t863 * t836;
t837 = qJDD(2) - t847;
t924 = t863 * t837;
t920 = t865 * t640;
t919 = t865 * t822;
t830 = -0.2e1 * t895 + t901;
t783 = t865 * t830;
t918 = t865 * t837;
t764 = t818 * pkin(3) - t820 * qJ(4);
t880 = -t867 * pkin(3) + qJDD(2) * qJ(4) - t818 * t764 + t915;
t655 = t880 + t957;
t874 = -qJDD(2) * pkin(3) - t867 * qJ(4) + qJDD(4) + t893;
t657 = (0.2e1 * qJD(3) + t764) * t820 + t874;
t916 = -pkin(3) * t657 + qJ(4) * t655;
t914 = -pkin(3) * t955 - qJ(4) * t746;
t913 = t857 + t858;
t902 = t864 * qJDD(1);
t900 = t866 * qJDD(1);
t894 = -qJ(4) * t860 - pkin(2);
t641 = t860 * t666 + t861 * t667;
t793 = t865 * g(3) + t926;
t735 = t863 * t793 + t865 * t794;
t892 = -t864 * t838 - t866 * t839;
t890 = t864 * t847;
t889 = t866 * t847;
t630 = t860 * t655 - t861 * t657;
t888 = pkin(2) * t630 + t916;
t887 = t914 + t945;
t886 = -t915 - t1008;
t833 = -t864 * t868 + t900;
t885 = -pkin(4) * t833 - t864 * g(3);
t729 = t860 * t779 + t820 * t908;
t730 = t861 * t779 - t799;
t688 = -t863 * t729 + t865 * t730;
t884 = t864 * t688 - t897;
t883 = t866 * t688 + t898;
t734 = t865 * t793 - t863 * t794;
t879 = t866 * t838 - t864 * t839;
t873 = pkin(3) * t766 + qJ(4) * t952 + t880;
t872 = t873 + t1008;
t809 = -0.2e1 * t906;
t871 = -t820 * t764 + t809 - t874 - t959;
t870 = -pkin(3) * t813 + 0.2e1 * qJD(4) * t820 + t742;
t869 = t870 + t966;
t845 = t851 - t867;
t844 = -t867 - t939;
t843 = t867 - t939;
t835 = -t851 + t939;
t834 = t851 + t939;
t832 = t866 * t868 + t902;
t831 = t913 * qJDD(1);
t828 = 0.2e1 * t849 + t903;
t826 = t865 * t836;
t825 = t913 * t905;
t814 = -pkin(4) * t832 + t866 * g(3);
t808 = 0.2e1 * t907;
t797 = t865 * t829 - t857 * t905;
t796 = -t858 * t905 - t863 * t876;
t792 = -t863 * t844 - t918;
t791 = -t863 * t843 + t826;
t790 = t865 * t846 - t925;
t789 = t865 * t845 - t924;
t788 = t865 * t844 - t924;
t787 = t865 * t843 + t925;
t786 = t863 * t846 + t826;
t785 = t863 * t845 + t918;
t784 = (t829 + t849) * t863;
t781 = -t863 * t828 + t783;
t780 = t865 * t828 + t863 * t830;
t755 = -pkin(5) * t788 - t919;
t754 = -pkin(5) * t786 - t927;
t753 = -pkin(1) * t788 + t794;
t752 = -pkin(1) * t786 + t793;
t723 = pkin(1) * t830 + pkin(5) * t790 + t919;
t722 = -pkin(1) * t828 + pkin(5) * t792 - t927;
t707 = pkin(1) * t822 + pkin(5) * t735;
t706 = pkin(1) * t834 + pkin(5) * t831 + t735;
t689 = -t931 + t1006;
t685 = t865 * t729 + t863 * t730;
t668 = -t938 - t982;
t660 = -pkin(2) * t958 + t1005 - t938;
t659 = t869 - t941;
t658 = -pkin(2) * t745 + t931 + t983;
t645 = (-t778 - t745) * pkin(3) + t869;
t644 = t870 - t941 + 0.2e1 * t966;
t643 = -qJ(4) * t743 + t657;
t642 = -pkin(3) * t743 + t655;
t639 = -t945 - t1009;
t638 = t807 - t886 + t1018;
t637 = pkin(2) * t742 + qJ(3) * t641;
t636 = -qJ(4) * t930 - t860 * t645 - t982;
t635 = -pkin(3) * t936 + t861 * t644 - t1006;
t634 = t666 + t995;
t633 = -t640 - t998;
t632 = t861 * t645 + t894 * t745 + t983;
t631 = t861 * t655 + t860 * t657;
t629 = -t1005 + t860 * t644 + (pkin(2) + t942) * t958;
t628 = -t863 * t660 + t865 * t689 + t1017;
t627 = -t887 - t1009;
t626 = t641 + t993;
t625 = t657 + t959 + t995;
t624 = t865 * t660 + t863 * t689 - t1016;
t623 = -t863 * t658 + t865 * t668 - t999;
t622 = t808 - t872 - 0.2e1 * t904 - t1018;
t621 = t865 * t658 + t863 * t668 + t994;
t620 = t865 * t641 - t928;
t619 = t863 * t641 + t920;
t618 = -t860 * t642 + t861 * t643 - t998;
t617 = t861 * t642 + t860 * t643 + t993;
t616 = -qJ(3) * t630 + (-pkin(3) * t860 + qJ(4) * t861) * t659;
t615 = -t863 * t630 + t865 * t631;
t614 = t865 * t630 + t863 * t631;
t613 = -pkin(1) * t619 - t946;
t612 = -t863 * t632 + t865 * t636 - t999;
t611 = qJ(3) * t631 + (-t894 + t942) * t659;
t610 = t865 * t632 + t863 * t636 + t994;
t609 = -t863 * t629 + t865 * t635 - t1017;
t608 = t865 * t629 + t863 * t635 + t1016;
t607 = -t863 * t626 + t865 * t633 - t1007;
t606 = t865 * t626 + t863 * t633 + t1004;
t605 = -pkin(5) * t619 - qJ(3) * t920 - t863 * t637;
t604 = pkin(1) * t742 + pkin(5) * t620 - qJ(3) * t928 + t865 * t637;
t603 = -t863 * t617 + t865 * t618 - t1007;
t602 = t865 * t617 + t863 * t618 + t1004;
t601 = -pkin(1) * t614 - t888;
t600 = -pkin(5) * t614 - t863 * t611 + t865 * t616;
t599 = pkin(1) * t659 + pkin(5) * t615 + t865 * t611 + t863 * t616;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t833, 0, -t832, 0, t885, -t814, -t879, -pkin(4) * t879, t866 * t797 - t890, t866 * t781 + t864 * t835, t866 * t791 + t863 * t902, t866 * t796 + t890, t866 * t789 + t864 * t901, t866 * t825 + t850, t866 * t754 - t864 * t752 - pkin(4) * (t864 * t790 + t866 * t830), t866 * t755 - t864 * t753 - pkin(4) * (t864 * t792 - t866 * t828), t866 * t734 - pkin(4) * (t864 * t831 + t866 * t834), -pkin(4) * (t864 * t735 + t866 * t822) - (t864 * pkin(1) - t866 * pkin(5)) * t734, t883, -t1014, t1002, t960, -t1012, t964, t866 * t623 - t864 * t634 - t992, t866 * t628 - t864 * t638 - t1019, t866 * t607 - t864 * t639 - t1001, t866 * t605 - t864 * t613 - pkin(4) * (t864 * t620 + t866 * t742), t883, t1002, t1014, t964, t1012, t960, t866 * t612 - t864 * t625 - t992, t866 * t603 - t864 * t627 - t1001, t866 * t609 - t864 * t622 + t1019, t866 * t600 - t864 * t601 - pkin(4) * (t864 * t615 + t866 * t659); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t832, 0, t833, 0, t814, t885, t892, pkin(4) * t892, t864 * t797 + t889, t864 * t781 - t866 * t835, t864 * t791 - t863 * t900, t864 * t796 - t889, t864 * t789 - t865 * t900, t864 * t825 - t899, t864 * t754 + t866 * t752 + pkin(4) * (t866 * t790 - t864 * t830), t864 * t755 + t866 * t753 + pkin(4) * (t866 * t792 + t864 * t828), t864 * t734 + pkin(4) * (t866 * t831 - t864 * t834), pkin(4) * (t866 * t735 - t864 * t822) - (-t866 * pkin(1) - t864 * pkin(5)) * t734, t884, -t1015, t1003, t962, -t1013, t961, t864 * t623 + t866 * t634 + t991, t864 * t628 + t866 * t638 + t1020, t864 * t607 + t866 * t639 + t1000, t864 * t605 + t866 * t613 + pkin(4) * (t866 * t620 - t864 * t742), t884, t1003, t1015, t961, t1013, t962, t864 * t612 + t866 * t625 + t991, t864 * t603 + t866 * t627 + t1000, t864 * t609 + t866 * t622 - t1020, t864 * t600 + t866 * t601 + pkin(4) * (t866 * t615 - t864 * t659); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t838, t839, 0, 0, t784, t780, t787, t783, t785, 0, t723, t722, t706, t707, t685, -t646, t988, t948, t669, t951, t621, t624, t606, t604, t685, t988, t646, t951, -t669, t948, t610, t602, t608, t599; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t868, 0, 0, -g(3), -t838, 0, t797, t781, t791, t796, t789, t825, t754, t755, t734, pkin(5) * t734, t688, -t650, t987, t949, -t676, t950, t623, t628, t607, t605, t688, t987, t650, t950, t676, t949, t612, t603, t609, t600; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t868, 0, qJDD(1), 0, g(3), 0, -t839, 0, t847, -t835, -t903, -t847, -t901, -qJDD(2), t752, t753, 0, pkin(1) * t734, -t940, -t956, -t955, t940, t746, -qJDD(2), t634, t638, t639, t613, -t940, -t955, t956, -qJDD(2), -t746, t940, t625, t627, t622, t601; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t838, t839, 0, 0, t784, t780, t787, t783, t785, 0, t723, t722, t706, t707, t685, -t646, t988, t948, t669, t951, t621, t624, t606, t604, t685, t988, t646, t951, -t669, t948, t610, t602, t608, t599; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t829, t830, t836, -t849, t845, t849, 0, -t822, t793, 0, t730, -t694, t979, t877, t714, t881, t668, t689, t633, -qJ(3) * t640, t730, t979, t694, t881, -t714, t877, t636, t618, t635, t616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t895, t828, t843, t876, t837, -t895, t822, 0, t794, 0, t729, t692, t978, t882, t708, t875, t658, t660, t626, t637, t729, t978, -t692, t875, -t708, t882, t632, t617, t629, t611; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t847, t835, t903, t847, t901, qJDD(2), -t793, -t794, 0, 0, t940, t956, t955, -t940, -t746, qJDD(2), t809 - t893 + t984, t808 + t886, t945, t946, t940, t955, -t956, qJDD(2), t746, -t940, t871 + t984, t887, t872 + t957, t888; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t779, -t745, t953, t910, t800, -t910, 0, -t742, t666, 0, t779, t953, t745, -t910, -t800, t910, -qJ(4) * t745, t643, t644, qJ(4) * t659; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t813, t958, -t801, -t778, t952, -t813, t742, 0, t667, 0, t813, -t801, -t958, -t813, -t952, -t778, t645, t642, pkin(3) * t958, pkin(3) * t659; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t940, t956, t955, -t940, -t746, qJDD(2), -t666, -t667, 0, 0, t940, t955, -t956, qJDD(2), t746, -t940, t871, t914, t873 + t957, t916; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t779, t953, t745, -t910, -t800, t910, 0, t657, t659, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t940, t955, -t956, qJDD(2), t746, -t940, -t657, 0, t655, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t813, t801, t958, t813, t952, t778, -t659, -t655, 0, 0;];
m_new_reg = t1;
