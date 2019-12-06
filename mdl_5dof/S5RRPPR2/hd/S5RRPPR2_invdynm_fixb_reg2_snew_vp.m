% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RRPPR2
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta3,theta4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RRPPR2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPPR2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPPR2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPPR2_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:20:41
% EndTime: 2019-12-05 18:20:54
% DurationCPUTime: 13.71s
% Computational Cost: add. (54668->502), mult. (76171->683), div. (0->0), fcn. (45228->10), ass. (0->345)
t902 = qJD(1) + qJD(2);
t898 = t902 ^ 2;
t907 = sin(pkin(8));
t899 = qJDD(1) + qJDD(2);
t909 = cos(pkin(8));
t976 = t909 * t899;
t864 = t907 * t898 - t976;
t905 = g(1) - qJDD(3);
t1003 = qJ(3) * t864 - t907 * t905;
t980 = t907 * t899;
t861 = t909 * t898 + t980;
t911 = sin(qJ(2));
t914 = cos(qJ(2));
t811 = t911 * t861 + t914 * t864;
t833 = qJ(3) * t861 - t909 * t905;
t1014 = pkin(6) * t811 + t1003 * t914 + t911 * t833;
t807 = t914 * t861 - t911 * t864;
t739 = pkin(6) * t807 - t1003 * t911 + t914 * t833;
t912 = sin(qJ(1));
t915 = cos(qJ(1));
t753 = t912 * t807 + t915 * t811;
t1027 = pkin(5) * t753 + t1014 * t915 + t912 * t739;
t1015 = t915 * t807 - t912 * t811;
t1026 = pkin(5) * t1015 - t1014 * t912 + t915 * t739;
t888 = t915 * g(2) + t912 * g(3);
t874 = qJDD(1) * pkin(1) + t888;
t887 = t912 * g(2) - t915 * g(3);
t916 = qJD(1) ^ 2;
t875 = -t916 * pkin(1) + t887;
t826 = t911 * t874 + t914 * t875;
t813 = -t898 * pkin(2) + t826;
t936 = t914 * t874 - t911 * t875;
t924 = t899 * pkin(2) + t936;
t755 = t907 * t813 - t909 * t924;
t756 = t909 * t813 + t907 * t924;
t954 = t907 * t755 + t909 * t756;
t692 = t909 * t755 - t907 * t756;
t971 = t911 * t692;
t1010 = t914 * t954 + t971;
t966 = t914 * t692;
t641 = -t911 * t954 + t966;
t1024 = t1010 * t915 + t912 * t641;
t1023 = -t1010 * t912 + t915 * t641;
t870 = t911 * t898 - t914 * t899;
t1004 = pkin(6) * t870 - t911 * g(1);
t867 = t914 * t898 + t911 * t899;
t814 = t912 * t867 + t915 * t870;
t841 = pkin(6) * t867 - t914 * g(1);
t1018 = pkin(5) * t814 + t1004 * t915 + t912 * t841;
t906 = sin(pkin(9));
t901 = t906 ^ 2;
t908 = cos(pkin(9));
t918 = t908 ^ 2;
t852 = (t901 + t918) * t908 * t898;
t957 = t908 * t976;
t821 = -t907 * t852 + t957;
t978 = t908 * t899;
t823 = t909 * t852 + t907 * t978;
t760 = t914 * t821 - t911 * t823;
t762 = t911 * t821 + t914 * t823;
t1017 = t915 * t760 - t912 * t762;
t1016 = t912 * t760 + t915 * t762;
t1000 = t915 * t867 - t912 * t870;
t1013 = pkin(5) * t1000 - t1004 * t912 + t915 * t841;
t953 = t914 * t826 - t911 * t936;
t767 = -t911 * t826 - t914 * t936;
t965 = t915 * t767;
t1012 = -t912 * t953 + t965;
t970 = t912 * t767;
t1011 = t915 * t953 + t970;
t982 = t906 * t908;
t828 = t861 * t982;
t880 = t898 * t982;
t829 = -t907 * t880 + t906 * t957;
t773 = t914 * t828 + t911 * t829;
t776 = t911 * t828 - t914 * t829;
t1002 = t915 * t773 - t912 * t776;
t1001 = t912 * t773 + t915 * t776;
t910 = sin(qJ(5));
t913 = cos(qJ(5));
t836 = (qJD(5) * t902 * t913 + t899 * t910) * t906;
t884 = t908 * t902 - qJD(5);
t963 = t884 * t902 * t906;
t849 = t913 * t963;
t796 = t849 - t836;
t999 = t910 * t796;
t894 = t908 * t905;
t742 = -t898 * pkin(3) + t899 * qJ(4) + t756;
t992 = 2 * qJD(4);
t951 = t902 * t992 + t742;
t721 = t951 * t906 + t894;
t983 = t906 * t905;
t722 = t951 * t908 - t983;
t675 = t906 * t721 + t908 * t722;
t985 = t902 * t910;
t960 = t906 * t985;
t877 = qJD(5) * t960;
t962 = t884 * t985;
t987 = t899 * t913;
t798 = (t962 + t987) * t906 - t877;
t881 = t884 ^ 2;
t991 = pkin(4) * t906;
t990 = pkin(4) * t908;
t986 = t901 * t898;
t741 = -t899 * pkin(3) - t898 * qJ(4) + qJDD(4) + t755;
t734 = t906 * t741;
t882 = -qJDD(5) + t978;
t984 = t906 * t882;
t891 = t906 * t899;
t981 = t907 * t741;
t735 = t908 * t741;
t977 = t909 * t741;
t943 = -pkin(7) * t906 - t990;
t933 = t742 + (t943 * t902 + t992) * t902;
t705 = t933 * t906 + t894;
t974 = t910 * t705;
t961 = t898 * t910 * t913;
t873 = t901 * t961;
t834 = -t873 + t882;
t973 = t910 * t834;
t835 = -t873 - t882;
t972 = t910 * t835;
t969 = t913 * t705;
t968 = t913 * t834;
t967 = t913 * t835;
t964 = -pkin(3) * t741 + qJ(4) * t675;
t904 = t913 ^ 2;
t959 = t904 * t986;
t958 = t906 * t978;
t956 = pkin(3) * t978 - qJ(4) * t852 - t735;
t645 = t907 * t675 - t977;
t955 = pkin(2) * t645 + t964;
t706 = t933 * t908 - t983;
t723 = t943 * t899 + t741;
t660 = t910 * t706 - t913 * t723;
t661 = t913 * t706 + t910 * t723;
t630 = t910 * t660 + t913 * t661;
t900 = t906 * t901;
t950 = t900 * t961;
t949 = t884 * t960;
t827 = -t959 - t881;
t780 = t913 * t827 + t973;
t654 = -pkin(4) * t780 + t661;
t682 = -pkin(7) * t780 + t969;
t781 = -t910 * t827 + t968;
t726 = t908 * t781 + t798 * t906;
t948 = -pkin(3) * t780 + qJ(4) * t726 + t908 * t654 + t906 * t682;
t903 = t910 ^ 2;
t883 = t903 * t986;
t843 = -t883 - t881;
t785 = t910 * t843 + t967;
t656 = -pkin(4) * t785 + t660;
t684 = -pkin(7) * t785 + t974;
t788 = t913 * t843 - t972;
t733 = t908 * t788 - t906 * t796;
t947 = -pkin(3) * t785 + qJ(4) * t733 + t908 * t656 + t906 * t684;
t890 = t901 * t899;
t892 = t918 * t899;
t859 = t892 + t890;
t893 = t918 * t898;
t865 = t893 + t986;
t946 = pkin(3) * t865 + qJ(4) * t859 + t675;
t945 = pkin(2) * t821 + t956;
t944 = -pkin(4) * t705 + pkin(7) * t630;
t878 = t912 * qJDD(1) + t915 * t916;
t942 = pkin(5) * t878 - t915 * g(1);
t941 = -pkin(2) * t864 - t755;
t940 = t908 * t873;
t687 = t907 * t726 - t909 * t780;
t939 = pkin(2) * t687 + t948;
t697 = t907 * t733 - t909 * t785;
t938 = pkin(2) * t697 + t947;
t803 = t907 * t859 + t909 * t865;
t937 = pkin(2) * t803 + t946;
t629 = -t913 * t660 + t910 * t661;
t674 = t908 * t721 - t906 * t722;
t935 = t915 * t887 - t912 * t888;
t934 = -t912 * t887 - t915 * t888;
t851 = (t906 * t918 + t900) * t898;
t932 = -pkin(3) * t891 + qJ(4) * t851 + t734;
t819 = t907 * t851 - t906 * t976;
t929 = pkin(2) * t819 + t932;
t795 = t849 + t836;
t797 = -t877 + (-t962 + t987) * t906;
t744 = -t910 * t795 - t913 * t797;
t621 = -pkin(7) * t744 - t629;
t746 = -t913 * t795 + t910 * t797;
t845 = t883 + t959;
t712 = t908 * t746 - t906 * t845;
t928 = qJ(4) * t712 + t906 * t621 + (-pkin(3) - t990) * t744;
t927 = -pkin(4) * t798 + pkin(7) * t781 + t974;
t926 = pkin(4) * t796 + pkin(7) * t788 - t969;
t677 = t907 * t712 - t909 * t744;
t925 = pkin(2) * t677 + t928;
t923 = pkin(4) * t845 + pkin(7) * t746 + t630;
t616 = t908 * t630 + t906 * t705;
t922 = qJ(4) * t616 + (-pkin(3) + t943) * t629;
t601 = t907 * t616 - t909 * t629;
t921 = pkin(2) * t601 + t922;
t920 = -pkin(2) * t861 - t756;
t879 = -t915 * qJDD(1) + t912 * t916;
t876 = 0.2e1 * t958;
t871 = t908 * t882;
t866 = -t893 + t986;
t860 = t892 - t890;
t857 = -pkin(5) * t879 + t912 * g(1);
t846 = -t883 + t959;
t844 = t881 - t959;
t842 = t883 - t881;
t837 = t913 * t891 - t877;
t822 = t909 * t851 + t906 * t980;
t806 = t909 * t860 + t907 * t866;
t805 = t909 * t859 - t907 * t865;
t804 = t907 * t860 - t909 * t866;
t802 = (-t903 - t904) * t963;
t794 = t910 * t837 - t904 * t963;
t793 = -t913 * t836 - t903 * t963;
t792 = (t837 + t949) * t913;
t790 = -pkin(1) * t870 + t936;
t789 = -pkin(1) * t867 - t826;
t787 = t913 * t842 + t973;
t786 = -t910 * t844 + t967;
t784 = t910 * t842 - t968;
t783 = t913 * t844 + t972;
t779 = -t907 * t802 - t909 * t984;
t778 = t909 * t802 - t907 * t984;
t772 = t908 * t792 + t950;
t771 = -t908 * t999 - t950;
t770 = t906 * t792 - t940;
t769 = -t906 * t999 + t940;
t764 = pkin(1) * t767;
t761 = -t911 * t819 + t914 * t822;
t758 = t914 * t819 + t911 * t822;
t757 = pkin(1) * g(1) + pkin(6) * t953;
t752 = -t911 * t804 + t914 * t806;
t751 = -t911 * t803 + t914 * t805;
t750 = t914 * t804 + t911 * t806;
t749 = t914 * t803 + t911 * t805;
t747 = t913 * t796 - t910 * t798;
t745 = t913 * t798 + t999;
t732 = t908 * t787 - t906 * t795;
t731 = t908 * t786 + t906 * t797;
t730 = t906 * t788 + t908 * t796;
t729 = t906 * t787 + t908 * t795;
t728 = t906 * t786 - t908 * t797;
t725 = t906 * t781 - t798 * t908;
t717 = t909 * t772 + t907 * t794;
t716 = t909 * t771 + t907 * t793;
t715 = t907 * t772 - t909 * t794;
t714 = t907 * t771 - t909 * t793;
t713 = t908 * t747 + t906 * t846;
t711 = t906 * t747 - t908 * t846;
t710 = t906 * t746 + t908 * t845;
t708 = -t911 * t778 + t914 * t779;
t707 = t914 * t778 + t911 * t779;
t704 = -pkin(1) * t811 + t941;
t703 = -pkin(1) * t807 + t920;
t702 = -t912 * t758 + t915 * t761;
t701 = -t915 * t758 - t912 * t761;
t700 = t909 * t733 + t907 * t785;
t699 = t909 * t732 + t907 * t784;
t698 = t909 * t731 + t907 * t783;
t696 = t907 * t732 - t909 * t784;
t695 = t907 * t731 - t909 * t783;
t689 = pkin(2) * t692;
t688 = t909 * t726 + t907 * t780;
t685 = pkin(2) * t905 + qJ(3) * t954;
t680 = t909 * t713 + t907 * t745;
t679 = t909 * t712 + t907 * t744;
t678 = t907 * t713 - t909 * t745;
t671 = pkin(1) * t760 + t945;
t670 = pkin(1) * t758 + t929;
t669 = -t911 * t715 + t914 * t717;
t668 = -t911 * t714 + t914 * t716;
t667 = t914 * t715 + t911 * t717;
t666 = t914 * t714 + t911 * t716;
t665 = -qJ(3) * t819 - t907 * t722 + t908 * t977;
t664 = -qJ(3) * t821 - t907 * t721 + t906 * t977;
t663 = qJ(3) * t822 + t909 * t722 + t907 * t735;
t662 = -qJ(3) * t823 + t909 * t721 + t906 * t981;
t658 = -qJ(3) * t803 + t909 * t674;
t657 = qJ(3) * t805 + t907 * t674;
t652 = -t911 * t697 + t914 * t700;
t651 = -t911 * t696 + t914 * t699;
t650 = -t911 * t695 + t914 * t698;
t649 = t914 * t697 + t911 * t700;
t648 = t914 * t696 + t911 * t699;
t647 = t914 * t695 + t911 * t698;
t646 = t909 * t675 + t981;
t644 = -pkin(3) * t730 - t926;
t638 = -pkin(3) * t725 - t927;
t637 = -t911 * t687 + t914 * t688;
t636 = t914 * t687 + t911 * t688;
t635 = pkin(1) * t749 + t937;
t634 = -t911 * t678 + t914 * t680;
t633 = -t911 * t677 + t914 * t679;
t632 = t914 * t678 + t911 * t680;
t631 = t914 * t677 + t911 * t679;
t627 = -pkin(1) * t641 - t689;
t626 = -pkin(6) * t758 - t911 * t663 + t914 * t665;
t625 = -pkin(6) * t760 - t911 * t662 + t914 * t664;
t624 = pkin(6) * t761 + t914 * t663 + t911 * t665;
t623 = -pkin(6) * t762 + t914 * t662 + t911 * t664;
t622 = -qJ(4) * t730 - t906 * t656 + t908 * t684;
t619 = -qJ(4) * t725 - t906 * t654 + t908 * t682;
t618 = -pkin(6) * t749 - t911 * t657 + t914 * t658;
t617 = pkin(6) * t751 + t914 * t657 + t911 * t658;
t615 = t906 * t630 - t908 * t705;
t613 = -t911 * t645 + t914 * t646;
t612 = t914 * t645 + t911 * t646;
t611 = pkin(6) * t641 + qJ(3) * t966 - t911 * t685;
t610 = pkin(1) * t905 + pkin(6) * t1010 + qJ(3) * t971 + t914 * t685;
t609 = -pkin(3) * t710 - t923;
t608 = -qJ(3) * t645 - (pkin(3) * t907 - qJ(4) * t909) * t674;
t607 = -qJ(4) * t710 + t908 * t621 + t744 * t991;
t606 = qJ(3) * t646 - (-pkin(3) * t909 - qJ(4) * t907 - pkin(2)) * t674;
t605 = -qJ(3) * t697 + t909 * t622 - t907 * t644;
t604 = pkin(1) * t649 + t938;
t603 = -qJ(3) * t687 + t909 * t619 - t907 * t638;
t602 = t909 * t616 + t907 * t629;
t599 = -pkin(2) * t730 + qJ(3) * t700 + t907 * t622 + t909 * t644;
t598 = pkin(1) * t636 + t939;
t597 = -pkin(2) * t725 + qJ(3) * t688 + t907 * t619 + t909 * t638;
t596 = -pkin(3) * t615 - t944;
t595 = pkin(1) * t612 + t955;
t594 = pkin(1) * t631 + t925;
t593 = -qJ(4) * t615 + (-pkin(7) * t908 + t991) * t629;
t592 = -qJ(3) * t677 + t909 * t607 - t907 * t609;
t591 = -pkin(2) * t710 + qJ(3) * t679 + t907 * t607 + t909 * t609;
t590 = -t911 * t601 + t914 * t602;
t589 = t914 * t601 + t911 * t602;
t588 = -pkin(6) * t612 - t911 * t606 + t914 * t608;
t587 = -pkin(6) * t649 - t911 * t599 + t914 * t605;
t586 = -pkin(1) * t730 + pkin(6) * t652 + t914 * t599 + t911 * t605;
t585 = pkin(1) * t674 + pkin(6) * t613 + t914 * t606 + t911 * t608;
t584 = -pkin(6) * t636 - t911 * t597 + t914 * t603;
t583 = -pkin(1) * t725 + pkin(6) * t637 + t914 * t597 + t911 * t603;
t582 = -pkin(6) * t631 - t911 * t591 + t914 * t592;
t581 = -qJ(3) * t601 + t909 * t593 - t907 * t596;
t580 = -pkin(1) * t710 + pkin(6) * t633 + t914 * t591 + t911 * t592;
t579 = -pkin(2) * t615 + qJ(3) * t602 + t907 * t593 + t909 * t596;
t578 = pkin(1) * t589 + t921;
t577 = -pkin(6) * t589 - t911 * t579 + t914 * t581;
t576 = -pkin(1) * t615 + pkin(6) * t590 + t914 * t579 + t911 * t581;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t888, -t887, 0, 0, 0, 0, 0, 0, 0, t899, t790, t789, 0, -t764, 0, 0, 0, 0, 0, t899, t704, t703, 0, t627, t890, t876, 0, t892, 0, 0, t671, t670, t635, t595, t770, t711, t728, t769, t729, t871, t604, t598, t594, t578; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t878, 0, t879, 0, t942, t857, -t935, -pkin(5) * t935, 0, 0, -t1000, 0, t814, 0, t1013, -t1018, -t1011, -pkin(5) * t1011 - pkin(6) * t970 - t915 * t757, 0, 0, -t1015, 0, t753, 0, t1026, -t1027, -t1024, -pkin(5) * t1024 - t915 * t610 - t912 * t611, -t1002, -t915 * t750 - t912 * t752, t701, t1002, t1017, 0, pkin(5) * t1016 - t915 * t623 - t912 * t625, -pkin(5) * t702 - t915 * t624 - t912 * t626, -t912 * t618 - t915 * t617 - pkin(5) * (-t912 * t749 + t915 * t751), -t912 * t588 - t915 * t585 - pkin(5) * (-t912 * t612 + t915 * t613), -t915 * t667 - t912 * t669, -t915 * t632 - t912 * t634, -t915 * t647 - t912 * t650, -t915 * t666 - t912 * t668, -t915 * t648 - t912 * t651, -t915 * t707 - t912 * t708, -t912 * t587 - t915 * t586 - pkin(5) * (-t912 * t649 + t915 * t652), -t912 * t584 - t915 * t583 - pkin(5) * (-t912 * t636 + t915 * t637), -t912 * t582 - t915 * t580 - pkin(5) * (-t912 * t631 + t915 * t633), -t912 * t577 - t915 * t576 - pkin(5) * (-t912 * t589 + t915 * t590); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t879, 0, -t878, 0, -t857, t942, t934, pkin(5) * t934, 0, 0, -t814, 0, -t1000, 0, t1018, t1013, t1012, pkin(5) * t1012 + pkin(6) * t965 - t912 * t757, 0, 0, -t753, 0, -t1015, 0, t1027, t1026, t1023, pkin(5) * t1023 - t912 * t610 + t915 * t611, -t1001, -t912 * t750 + t915 * t752, t702, t1001, t1016, 0, -pkin(5) * t1017 - t912 * t623 + t915 * t625, pkin(5) * t701 - t912 * t624 + t915 * t626, t915 * t618 - t912 * t617 + pkin(5) * (-t915 * t749 - t912 * t751), t915 * t588 - t912 * t585 + pkin(5) * (-t915 * t612 - t912 * t613), -t912 * t667 + t915 * t669, -t912 * t632 + t915 * t634, -t912 * t647 + t915 * t650, -t912 * t666 + t915 * t668, -t912 * t648 + t915 * t651, -t912 * t707 + t915 * t708, t915 * t587 - t912 * t586 + pkin(5) * (-t915 * t649 - t912 * t652), t915 * t584 - t912 * t583 + pkin(5) * (-t915 * t636 - t912 * t637), t915 * t582 - t912 * t580 + pkin(5) * (-t915 * t631 - t912 * t633), t915 * t577 - t912 * t576 + pkin(5) * (-t915 * t589 - t912 * t590); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t916, 0, 0, -g(1), -t888, 0, 0, 0, -t870, 0, -t867, 0, t1004, t841, t767, pkin(6) * t767, 0, 0, -t811, 0, -t807, 0, t1014, t739, t641, t611, -t776, t752, t761, t776, t762, 0, t625, t626, t618, t588, t669, t634, t650, t668, t651, t708, t587, t584, t582, t577; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t916, 0, qJDD(1), 0, g(1), 0, t887, 0, 0, 0, t867, 0, -t870, 0, -t841, t1004, t953, t757, 0, 0, t807, 0, -t811, 0, -t739, t1014, t1010, t610, t773, t750, t758, -t773, -t760, 0, t623, t624, t617, t585, t667, t632, t647, t666, t648, t707, t586, t583, t580, t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t888, -t887, 0, 0, 0, 0, 0, 0, 0, t899, t790, t789, 0, -t764, 0, 0, 0, 0, 0, t899, t704, t703, 0, t627, t890, t876, 0, t892, 0, 0, t671, t670, t635, t595, t770, t711, t728, t769, t729, t871, t604, t598, t594, t578; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, 0, -t898, 0, 0, -g(1), -t936, 0, 0, 0, -t864, 0, -t861, 0, t1003, t833, t692, qJ(3) * t692, t829, t806, t822, -t829, t823, 0, t664, t665, t658, t608, t717, t680, t698, t716, t699, t779, t605, t603, t592, t581; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t898, 0, t899, 0, g(1), 0, t826, 0, 0, 0, t861, 0, -t864, 0, -t833, t1003, t954, t685, t828, t804, t819, -t828, -t821, 0, t662, t663, t657, t606, t715, t678, t695, t714, t696, t778, t599, t597, t591, t579; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, t936, -t826, 0, 0, 0, 0, 0, 0, 0, t899, t941, t920, 0, -t689, t890, t876, 0, t892, 0, 0, t945, t929, t937, t955, t770, t711, t728, t769, t729, t871, t938, t939, t925, t921; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, 0, -t898, 0, 0, -t905, t755, 0, t958, t860, t851, -t958, t852, 0, t734, t735, t674, qJ(4) * t674, t772, t713, t731, t771, t732, -t984, t622, t619, t607, t593; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t898, 0, t899, 0, t905, 0, t756, 0, t880, -t866, -t891, -t880, -t978, 0, t721, t722, 0, pkin(3) * t674, -t794, -t745, -t783, -t793, -t784, t802, t644, t638, t609, t596; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, -t755, -t756, 0, 0, t890, t876, 0, t892, 0, 0, t956, t932, t946, t964, t770, t711, t728, t769, t729, t871, t947, t948, t928, t922; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t891, t978, t880, 0, t893, 0, 0, t741, t721, 0, t792, t747, t786, -t999, t787, 0, t684, t682, t621, -pkin(7) * t629; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t891, -t986, t978, -t880, 0, -t741, 0, t722, 0, -t873, -t846, -t797, t873, t795, t882, t656, t654, -pkin(4) * t744, -pkin(4) * t629; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t880, t866, t891, t880, t978, 0, -t721, -t722, 0, 0, t794, t745, t783, t793, t784, -t802, t926, t927, t923, t944; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t837, t796, t835, -t949, t842, t949, 0, t705, t660, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t849, t798, t844, -t836, -t834, t849, -t705, 0, t661, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t873, t846, t797, -t873, -t795, -t882, -t660, -t661, 0, 0;];
m_new_reg = t1;