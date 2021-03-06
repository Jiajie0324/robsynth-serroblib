% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRPRR8
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
%   pkin=[a2,a3,a4,a5,alpha2,d2,d4,d5,theta1]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:05
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRPRR8_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR8_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR8_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRR8_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRR8_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR8_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:04:48
% EndTime: 2019-12-05 16:04:59
% DurationCPUTime: 11.89s
% Computational Cost: add. (34775->593), mult. (65759->821), div. (0->0), fcn. (45098->10), ass. (0->404)
t888 = sin(pkin(5));
t899 = cos(qJ(2));
t973 = t888 * qJDD(2);
t896 = sin(qJ(2));
t900 = qJD(2) ^ 2;
t983 = t896 * t900;
t835 = t888 * t983 - t899 * t973;
t890 = cos(pkin(5));
t875 = t890 * qJDD(2);
t837 = -t899 * t875 + t890 * t983;
t887 = sin(pkin(9));
t889 = cos(pkin(9));
t857 = g(1) * t887 - t889 * g(2);
t982 = g(3) - qJDD(1);
t831 = t857 * t888 + t890 * t982;
t996 = t831 * t896;
t753 = (t835 * t888 + t837 * t890) * pkin(6) - t996;
t854 = qJDD(2) * t896 + t899 * t900;
t802 = t837 * t887 - t854 * t889;
t1036 = -qJ(1) * t802 - t753 * t887;
t834 = t854 * t888;
t836 = t854 * t890;
t995 = t831 * t899;
t756 = (t834 * t888 + t836 * t890) * pkin(6) - t995;
t853 = qJDD(2) * t899 - t983;
t800 = t836 * t887 - t853 * t889;
t1035 = -qJ(1) * t800 - t756 * t887;
t797 = t837 * t889 + t854 * t887;
t1034 = -qJ(1) * t797 - t753 * t889;
t795 = t836 * t889 + t853 * t887;
t1033 = -qJ(1) * t795 - t756 * t889;
t1028 = -t890 * t857 + t888 * t982;
t894 = sin(qJ(5));
t897 = cos(qJ(5));
t898 = cos(qJ(4));
t976 = qJD(2) * t898;
t844 = -t897 * qJD(4) + t894 * t976;
t846 = qJD(4) * t894 + t897 * t976;
t813 = t846 * t844;
t975 = qJD(2) * qJD(4);
t963 = t898 * t975;
t895 = sin(qJ(4));
t972 = t895 * qJDD(2);
t849 = -t963 - t972;
t842 = qJDD(5) - t849;
t1022 = -t813 + t842;
t1027 = t1022 * t894;
t1026 = t1022 * t897;
t1025 = t887 * t982;
t1024 = t889 * t982;
t1016 = qJD(4) ^ 2;
t1003 = pkin(8) * t898;
t1006 = pkin(4) * t895;
t847 = (-t1003 + t1006) * qJD(2);
t977 = qJD(2) * t895;
t886 = qJDD(2) * pkin(2);
t858 = g(1) * t889 + g(2) * t887;
t787 = t1028 * t899 - t858 * t896;
t920 = qJDD(3) + t787;
t775 = -t900 * qJ(3) - t886 + t920;
t902 = -qJDD(2) * pkin(7) + t775;
t979 = t898 * t831 - t895 * t902;
t712 = -t1016 * pkin(4) + qJDD(4) * pkin(8) - t847 * t977 - t979;
t1015 = 2 * qJD(3);
t877 = t898 * qJDD(2);
t964 = t895 * t975;
t850 = t877 - t964;
t892 = t900 * pkin(7);
t788 = -t1028 * t896 - t899 * t858;
t974 = qJDD(2) * qJ(3);
t901 = -t900 * pkin(2) + t788 + t974;
t1005 = pkin(4) * t898;
t950 = pkin(8) * t895 + t1005;
t719 = -t849 * pkin(4) - t850 * pkin(8) - t892 + (t950 * qJD(4) + t1015) * qJD(2) + t901;
t653 = t712 * t894 - t897 * t719;
t654 = t712 * t897 + t719 * t894;
t616 = -t653 * t897 + t654 * t894;
t1023 = (pkin(3) + t950) * t616;
t617 = t894 * t653 + t897 * t654;
t958 = t831 * t895 + t898 * t902;
t959 = t895 * t979 - t898 * t958;
t871 = qJD(5) + t977;
t956 = t897 * qJDD(4) - t850 * t894;
t765 = (-qJD(5) + t871) * t846 + t956;
t922 = -qJDD(4) * t894 - t850 * t897;
t794 = -qJD(5) * t844 - t922;
t833 = t871 * t844;
t767 = t794 + t833;
t691 = t765 * t894 - t767 * t897;
t598 = -pkin(8) * t691 - t616;
t1021 = -(pkin(3) + t1005) * t691 + t598 * t895;
t946 = pkin(6) * t854 - t995;
t1020 = pkin(1) * t837 + t946 * t888;
t947 = pkin(6) * t853 + t996;
t1019 = pkin(1) * t836 + t947 * t888;
t1018 = -pkin(1) * t835 + t946 * t890;
t1017 = -pkin(1) * t834 + t947 * t890;
t840 = t844 ^ 2;
t841 = t846 ^ 2;
t869 = t871 ^ 2;
t1014 = -pkin(7) - pkin(2);
t1009 = pkin(3) * t959;
t971 = qJD(2) * t1015;
t773 = t901 + t971;
t772 = -t892 + t773;
t1008 = pkin(3) * t772;
t883 = t895 ^ 2;
t884 = t898 ^ 2;
t978 = t883 + t884;
t852 = t978 * qJDD(2);
t1007 = pkin(3) * t852;
t725 = t787 * t896 + t788 * t899;
t1004 = pkin(6) * t725;
t1000 = t772 * t895;
t785 = t813 + t842;
t999 = t785 * t894;
t998 = t785 * t897;
t997 = t831 * t888;
t994 = t852 * t896;
t993 = t852 * t899;
t870 = t898 * t900 * t895;
t859 = qJDD(4) + t870;
t992 = t859 * t895;
t991 = t859 * t898;
t860 = qJDD(4) - t870;
t990 = t860 * t895;
t989 = t860 * t898;
t988 = t871 * t894;
t987 = t871 * t897;
t986 = t883 * t900;
t985 = t884 * t900;
t711 = -qJDD(4) * pkin(4) - t1016 * pkin(8) + t847 * t976 - t958;
t702 = t894 * t711;
t703 = t897 * t711;
t769 = t898 * t772;
t981 = t691 * t1006 + t898 * t598;
t980 = -pkin(4) * t711 + pkin(8) * t617;
t970 = t895 * t813;
t969 = t898 * t813;
t808 = -t841 - t869;
t738 = -t808 * t894 - t998;
t768 = (qJD(5) + t871) * t844 + t922;
t968 = pkin(4) * t768 + pkin(8) * t738 + t702;
t803 = -t869 - t840;
t729 = t803 * t897 - t1027;
t832 = t846 * t871;
t919 = qJD(5) * t846 - t956;
t764 = -t832 - t919;
t967 = pkin(4) * t764 + pkin(8) * t729 - t703;
t965 = t889 * t973;
t728 = t803 * t894 + t1026;
t635 = -pkin(4) * t728 + t653;
t659 = -pkin(8) * t728 + t702;
t961 = -t635 * t895 + t898 * t659;
t737 = t808 * t897 - t999;
t637 = -pkin(4) * t737 + t654;
t661 = -pkin(8) * t737 + t703;
t960 = -t637 * t895 + t898 * t661;
t957 = -t857 * t887 - t889 * t858;
t955 = t896 * t870;
t954 = t899 * t870;
t693 = t765 * t897 + t767 * t894;
t783 = t840 + t841;
t953 = pkin(4) * t783 + pkin(8) * t693 + t617;
t600 = t617 * t895 - t711 * t898;
t952 = -pkin(3) * t600 - t980;
t868 = -t985 - t1016;
t819 = t868 * t898 - t992;
t951 = -pkin(3) * t819 - t979;
t848 = 0.2e1 * t963 + t972;
t949 = pkin(3) * t848 + t769;
t851 = t877 - 0.2e1 * t964;
t948 = pkin(3) * t851 - t1000;
t945 = -t600 * t899 + t616 * t896;
t663 = t693 * t895 + t783 * t898;
t944 = -t663 * t899 + t691 * t896;
t943 = t772 * t896 + t899 * t959;
t766 = t794 - t833;
t692 = t764 * t897 - t766 * t894;
t812 = t841 - t840;
t669 = t692 * t895 - t812 * t898;
t690 = t764 * t894 + t766 * t897;
t942 = -t669 * t899 + t690 * t896;
t671 = t729 * t895 + t764 * t898;
t941 = -t671 * t899 + t728 * t896;
t673 = t738 * t895 + t768 * t898;
t940 = -t673 * t899 + t737 * t896;
t830 = -t841 + t869;
t749 = -t830 * t894 + t1026;
t677 = t749 * t895 - t767 * t898;
t747 = t830 * t897 + t1027;
t939 = -t677 * t899 + t747 * t896;
t829 = t840 - t869;
t750 = t829 * t897 - t999;
t763 = -t832 + t919;
t678 = t750 * t895 + t763 * t898;
t748 = t829 * t894 + t998;
t938 = -t678 * t899 + t748 * t896;
t758 = t844 * t987 + t894 * t919;
t715 = t758 * t895 + t969;
t757 = -t844 * t988 + t897 * t919;
t937 = -t715 * t899 - t757 * t896;
t760 = t794 * t897 - t846 * t988;
t716 = t760 * t895 - t969;
t759 = t794 * t894 + t846 * t987;
t936 = -t716 * t899 + t759 * t896;
t666 = -t895 * t958 - t898 * t979;
t777 = (-t844 * t897 + t846 * t894) * t871;
t751 = t777 * t895 - t842 * t898;
t776 = (-t844 * t894 - t846 * t897) * t871;
t935 = -t751 * t899 + t776 * t896;
t705 = t773 * t899 + t775 * t896;
t934 = t773 * t896 - t775 * t899;
t724 = t787 * t899 - t788 * t896;
t806 = -t848 * t895 + t851 * t898;
t856 = (-t883 + t884) * t900;
t933 = -t806 * t899 + t856 * t896;
t866 = -t986 - t1016;
t817 = t866 * t895 + t989;
t932 = -t817 * t899 + t848 * t896;
t931 = -t819 * t899 + t851 * t896;
t855 = t978 * t900;
t928 = -t855 * t896 + t993;
t927 = t857 * t889 - t858 * t887;
t925 = -pkin(3) * t671 - t967;
t924 = -pkin(3) * t673 - t968;
t843 = t978 * t975;
t923 = qJDD(4) * t896 + t843 * t899;
t921 = -pkin(3) * t817 - t958;
t918 = -pkin(3) * t663 - t953;
t865 = t986 - t1016;
t816 = t865 * t895 + t991;
t917 = -t816 * t899 - t896 * t972;
t867 = -t985 + t1016;
t818 = t867 * t898 + t990;
t916 = -t818 * t899 + t896 * t877;
t826 = t849 * t898 + t883 * t975;
t915 = -t826 * t899 - t955;
t827 = t850 * t895 + t884 * t975;
t914 = -t827 * t899 + t955;
t913 = pkin(3) * t728 - t635 * t898 - t659 * t895;
t912 = pkin(3) * t737 - t637 * t898 - t661 * t895;
t601 = t617 * t898 + t711 * t895;
t579 = t1014 * t601 + t1023;
t584 = -qJ(3) * t601 - t952;
t590 = t600 * t896 + t616 * t899;
t911 = pkin(6) * t590 + t579 * t899 + t584 * t896;
t664 = t693 * t898 - t783 * t895;
t589 = t1014 * t664 - t1021;
t591 = -qJ(3) * t664 - t918;
t634 = t663 * t896 + t691 * t899;
t910 = pkin(6) * t634 + t589 * t899 + t591 * t896;
t672 = t729 * t898 - t764 * t895;
t593 = t1014 * t672 + t913;
t596 = -qJ(3) * t672 - t925;
t644 = t671 * t896 + t728 * t899;
t909 = pkin(6) * t644 + t593 * t899 + t596 * t896;
t674 = t738 * t898 - t768 * t895;
t595 = t1014 * t674 + t912;
t599 = -qJ(3) * t674 - t924;
t646 = t673 * t896 + t737 * t899;
t908 = pkin(6) * t646 + t595 * t899 + t599 * t896;
t623 = t1014 * t666 + t1008;
t632 = -qJ(3) * t666 - t1009;
t645 = t772 * t899 - t896 * t959;
t907 = pkin(6) * t645 + t623 * t899 + t632 * t896;
t821 = t866 * t898 - t990;
t681 = -qJ(3) * t821 - t921;
t687 = t1014 * t821 + t949;
t780 = t817 * t896 + t848 * t899;
t906 = pkin(6) * t780 + t681 * t896 + t687 * t899;
t824 = -t868 * t895 - t991;
t682 = -qJ(3) * t824 - t951;
t686 = t1014 * t824 + t948;
t781 = t819 * t896 + t851 * t899;
t905 = pkin(6) * t781 + t682 * t896 + t686 * t899;
t662 = pkin(3) * t855 + t666;
t809 = -t855 * t899 - t994;
t904 = -pkin(3) * t994 + pkin(6) * t809 - t662 * t899;
t903 = pkin(6) * t705 + (pkin(2) * t899 + qJ(3) * t896) * t831;
t862 = t887 * t973;
t828 = qJDD(4) * t899 - t843 * t896;
t823 = -t867 * t895 + t989;
t822 = (t850 - t964) * t898;
t820 = t865 * t898 - t992;
t815 = (-t849 + t963) * t895;
t814 = t890 * t831;
t811 = t923 * t890;
t810 = t923 * t888;
t807 = -t848 * t898 - t851 * t895;
t805 = t928 * t890;
t804 = t928 * t888;
t793 = t826 * t896 - t954;
t792 = t827 * t896 + t954;
t791 = t818 * t896 + t899 * t877;
t790 = t816 * t896 - t899 * t972;
t779 = -0.2e1 * t886 + t920;
t778 = t788 + t971 + 0.2e1 * t974;
t774 = t806 * t896 + t856 * t899;
t752 = t777 * t898 + t842 * t895;
t746 = -t815 * t888 + t890 * t915;
t745 = -t822 * t888 + t890 * t914;
t744 = t815 * t890 + t888 * t915;
t743 = t822 * t890 + t888 * t914;
t742 = -t823 * t888 + t890 * t916;
t741 = -t820 * t888 + t890 * t917;
t740 = t823 * t890 + t888 * t916;
t739 = t820 * t890 + t888 * t917;
t735 = -t824 * t888 + t890 * t931;
t734 = -t821 * t888 + t890 * t932;
t733 = t824 * t890 + t888 * t931;
t732 = t821 * t890 + t888 * t932;
t723 = -t807 * t888 + t890 * t933;
t722 = t807 * t890 + t888 * t933;
t721 = t725 * t890;
t720 = t725 * t888;
t718 = t760 * t898 + t970;
t717 = t758 * t898 - t970;
t713 = -pkin(2) * t775 + qJ(3) * t773;
t709 = t787 * t888 - t1018;
t708 = t788 * t888 - t1017;
t707 = -t787 * t890 - t1020;
t706 = -t788 * t890 - t1019;
t701 = -t779 * t888 + t1018;
t700 = t779 * t890 + t1020;
t699 = t705 * t890;
t698 = t705 * t888;
t697 = -t778 * t888 + t1017;
t696 = t778 * t890 + t1019;
t695 = -t724 * t890 + t997;
t694 = -t724 * t888 - t814;
t688 = t751 * t896 + t776 * t899;
t685 = qJ(3) * t851 + t1014 * t819 + t769;
t684 = qJ(3) * t848 + t1014 * t817 + t1000;
t680 = t750 * t898 - t763 * t895;
t679 = t749 * t898 + t767 * t895;
t676 = t890 * t934 + t997;
t675 = t888 * t934 - t814;
t670 = t692 * t898 + t812 * t895;
t668 = t716 * t896 + t759 * t899;
t667 = t715 * t896 - t757 * t899;
t657 = -t752 * t888 + t890 * t935;
t656 = t752 * t890 + t888 * t935;
t655 = -qJ(3) * t855 - t1014 * t852 + t959;
t650 = t678 * t896 + t748 * t899;
t649 = t677 * t896 + t747 * t899;
t648 = pkin(1) * t695 + t888 * t1004;
t647 = -pkin(1) * t694 + t890 * t1004;
t643 = (-t694 * t888 - t695 * t890) * pkin(6);
t642 = -t718 * t888 + t936 * t890;
t641 = -t717 * t888 + t937 * t890;
t640 = t718 * t890 + t936 * t888;
t639 = t717 * t890 + t937 * t888;
t638 = -pkin(3) * t993 + t662 * t896 + (-t804 * t888 - t805 * t890) * pkin(6);
t636 = t669 * t896 + t690 * t899;
t633 = (-pkin(2) * t896 + qJ(3) * t899) * t831 + (-t675 * t888 - t676 * t890) * pkin(6);
t631 = -t680 * t888 + t938 * t890;
t630 = -t679 * t888 + t939 * t890;
t629 = t680 * t890 + t938 * t888;
t628 = t679 * t890 + t939 * t888;
t627 = -t674 * t888 + t940 * t890;
t626 = t674 * t890 + t940 * t888;
t625 = -t672 * t888 + t941 * t890;
t624 = t672 * t890 + t941 * t888;
t622 = qJ(3) * t772 - t1014 * t959;
t621 = -t666 * t888 + t943 * t890;
t620 = t666 * t890 + t943 * t888;
t619 = -pkin(1) * t675 - t713 * t888 + t890 * t903;
t618 = pkin(1) * t676 + t713 * t890 + t888 * t903;
t614 = t616 * t1006;
t613 = t682 * t899 - t686 * t896 + (-t733 * t888 - t735 * t890) * pkin(6);
t612 = t681 * t899 - t687 * t896 + (-t732 * t888 - t734 * t890) * pkin(6);
t611 = -t670 * t888 + t942 * t890;
t610 = t670 * t890 + t942 * t888;
t609 = -t664 * t888 + t944 * t890;
t608 = t664 * t890 + t944 * t888;
t607 = -pkin(1) * t804 - t655 * t888 + t890 * t904;
t606 = pkin(1) * t805 + t655 * t890 + t888 * t904;
t605 = -pkin(1) * t733 - t685 * t888 + t890 * t905;
t604 = -pkin(1) * t732 - t684 * t888 + t890 * t906;
t603 = pkin(1) * t735 + t685 * t890 + t888 * t905;
t602 = pkin(1) * t734 + t684 * t890 + t888 * t906;
t594 = qJ(3) * t737 + t1014 * t673 + t960;
t592 = qJ(3) * t728 + t1014 * t671 + t961;
t588 = qJ(3) * t691 + t1014 * t663 + t981;
t587 = -t601 * t888 + t945 * t890;
t586 = t601 * t890 + t945 * t888;
t585 = -t623 * t896 + t632 * t899 + (-t620 * t888 - t621 * t890) * pkin(6);
t583 = -pkin(1) * t620 - t622 * t888 + t890 * t907;
t582 = pkin(1) * t621 + t622 * t890 + t888 * t907;
t581 = -t595 * t896 + t599 * t899 + (-t626 * t888 - t627 * t890) * pkin(6);
t580 = -t593 * t896 + t596 * t899 + (-t624 * t888 - t625 * t890) * pkin(6);
t578 = t614 + (qJ(3) - t1003) * t616 + t1014 * t600;
t577 = -pkin(1) * t626 - t594 * t888 + t890 * t908;
t576 = pkin(1) * t627 + t594 * t890 + t888 * t908;
t575 = -pkin(1) * t624 - t592 * t888 + t890 * t909;
t574 = pkin(1) * t625 + t592 * t890 + t888 * t909;
t573 = -t589 * t896 + t591 * t899 + (-t608 * t888 - t609 * t890) * pkin(6);
t572 = -pkin(1) * t608 - t588 * t888 + t890 * t910;
t571 = pkin(1) * t609 + t588 * t890 + t888 * t910;
t570 = -t579 * t896 + t584 * t899 + (-t586 * t888 - t587 * t890) * pkin(6);
t569 = -pkin(1) * t586 - t578 * t888 + t890 * t911;
t568 = pkin(1) * t587 + t578 * t890 + t888 * t911;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1025, -t1024, -t927, -qJ(1) * t927, 0, 0, -t800, 0, t802, t862, -t709 * t887 - t1034, -t708 * t887 - t1033, -t721 * t887 + t724 * t889, t889 * t643 - t887 * t647 - qJ(1) * (t695 * t889 + t725 * t887), t862, t800, -t802, 0, 0, 0, -t699 * t887 - t889 * t934, -t701 * t887 + t1034, -t697 * t887 + t1033, t889 * t633 - t887 * t619 - qJ(1) * (t676 * t889 + t705 * t887), -t745 * t887 + t792 * t889, -t723 * t887 + t774 * t889, -t742 * t887 + t791 * t889, -t746 * t887 + t793 * t889, -t741 * t887 + t790 * t889, -t811 * t887 + t828 * t889, t889 * t612 - t887 * t604 - qJ(1) * (t734 * t889 + t780 * t887), t889 * t613 - t887 * t605 - qJ(1) * (t735 * t889 + t781 * t887), t889 * t638 - t887 * t607 - qJ(1) * (t805 * t889 + t809 * t887), t889 * t585 - t887 * t583 - qJ(1) * (t621 * t889 + t645 * t887), -t642 * t887 + t668 * t889, -t611 * t887 + t636 * t889, -t630 * t887 + t649 * t889, -t641 * t887 + t667 * t889, -t631 * t887 + t650 * t889, -t657 * t887 + t688 * t889, t889 * t580 - t887 * t575 - qJ(1) * (t625 * t889 + t644 * t887), t889 * t581 - t887 * t577 - qJ(1) * (t627 * t889 + t646 * t887), t889 * t573 - t887 * t572 - qJ(1) * (t609 * t889 + t634 * t887), t889 * t570 - t887 * t569 - qJ(1) * (t587 * t889 + t590 * t887); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1024, -t1025, t957, qJ(1) * t957, 0, 0, t795, 0, -t797, -t965, t709 * t889 - t1036, t708 * t889 - t1035, t721 * t889 + t724 * t887, t887 * t643 + t889 * t647 + qJ(1) * (-t695 * t887 + t725 * t889), -t965, -t795, t797, 0, 0, 0, t699 * t889 - t887 * t934, t701 * t889 + t1036, t697 * t889 + t1035, t887 * t633 + t889 * t619 + qJ(1) * (-t676 * t887 + t705 * t889), t745 * t889 + t792 * t887, t723 * t889 + t774 * t887, t742 * t889 + t791 * t887, t746 * t889 + t793 * t887, t741 * t889 + t790 * t887, t811 * t889 + t828 * t887, t887 * t612 + t889 * t604 + qJ(1) * (-t734 * t887 + t780 * t889), t887 * t613 + t889 * t605 + qJ(1) * (-t735 * t887 + t781 * t889), t887 * t638 + t889 * t607 + qJ(1) * (-t805 * t887 + t809 * t889), t887 * t585 + t889 * t583 + qJ(1) * (-t621 * t887 + t645 * t889), t642 * t889 + t668 * t887, t611 * t889 + t636 * t887, t630 * t889 + t649 * t887, t641 * t889 + t667 * t887, t631 * t889 + t650 * t887, t657 * t889 + t688 * t887, t887 * t580 + t889 * t575 + qJ(1) * (-t625 * t887 + t644 * t889), t887 * t581 + t889 * t577 + qJ(1) * (-t627 * t887 + t646 * t889), t887 * t573 + t889 * t572 + qJ(1) * (-t609 * t887 + t634 * t889), t887 * t570 + t889 * t569 + qJ(1) * (-t587 * t887 + t889 * t590); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t857, t858, 0, 0, 0, 0, t834, 0, -t835, t875, t707, t706, t720, t648, t875, -t834, t835, 0, 0, 0, t698, t700, t696, t618, t743, t722, t740, t744, t739, t810, t602, t603, t606, t582, t640, t610, t628, t639, t629, t656, t574, t576, t571, t568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t982, -t857, 0, 0, 0, t853, 0, -t854, 0, t753, t756, t724, t643, 0, -t853, t854, 0, 0, 0, -t934, -t753, -t756, t633, t792, t774, t791, t793, t790, t828, t612, t613, t638, t585, t668, t636, t649, t667, t650, t688, t580, t581, t573, t570; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t982, 0, -t858, 0, 0, 0, t836, 0, -t837, -t973, t709, t708, t721, t647, -t973, -t836, t837, 0, 0, 0, t699, t701, t697, t619, t745, t723, t742, t746, t741, t811, t604, t605, t607, t583, t642, t611, t630, t641, t631, t657, t575, t577, t572, t569; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t857, t858, 0, 0, 0, 0, t834, 0, -t835, t875, t707, t706, t720, t648, t875, -t834, t835, 0, 0, 0, t698, t700, t696, t618, t743, t722, t740, t744, t739, t810, t602, t603, t606, t582, t640, t610, t628, t639, t629, t656, t574, t576, t571, t568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t900, 0, 0, -t831, t787, 0, 0, -qJDD(2), t900, 0, 0, 0, t775, 0, t831, qJ(3) * t831, t870, t856, t877, -t870, -t972, qJDD(4), t681, t682, -t1007, t632, t759, t690, t747, -t757, t748, t776, t596, t599, t591, t584; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t900, 0, qJDD(2), 0, t831, 0, t788, 0, 0, -t900, -qJDD(2), 0, 0, 0, t773, -t831, 0, pkin(2) * t831, -t827, -t806, -t818, -t826, -t816, t843, t687, t686, -t662, t623, -t716, -t669, -t677, -t715, -t678, -t751, t593, t595, t589, t579; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t787, -t788, 0, 0, qJDD(2), 0, 0, 0, 0, 0, 0, t779, t778, t713, t822, t807, t823, t815, t820, 0, t684, t685, t655, t622, t718, t670, t679, t717, t680, t752, t592, t594, t588, t578; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, 0, 0, 0, 0, 0, t775, t773, 0, t822, t807, t823, t815, t820, 0, -pkin(7) * t817 + t1000, -pkin(7) * t819 + t769, pkin(7) * t852 + t959, pkin(7) * t959, t718, t670, t679, t717, t680, t752, -pkin(7) * t671 + t961, -pkin(7) * t673 + t960, -pkin(7) * t663 + t981, -pkin(7) * t600 - t1003 * t616 + t614; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t900, 0, 0, 0, -t775, 0, -t831, 0, -t870, -t856, -t877, t870, t972, -qJDD(4), t921, t951, t1007, t1009, -t759, -t690, -t747, t757, -t748, -t776, t925, t924, t918, t952; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t900, qJDD(2), 0, 0, 0, -t773, t831, 0, 0, t827, t806, t818, t826, t816, -t843, pkin(7) * t821 - t949, pkin(7) * t824 - t948, t662, pkin(7) * t666 - t1008, t716, t669, t677, t715, t678, t751, pkin(7) * t672 - t913, pkin(7) * t674 - t912, pkin(7) * t664 + t1021, pkin(7) * t601 - t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t850, -t848, t860, t964, t865, -t964, 0, t772, -t958, 0, t760, t692, t749, t758, t750, t777, t659, t661, t598, -pkin(8) * t616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t963, t851, t867, t849, t859, -t963, -t772, 0, -t979, 0, -t813, -t812, -t767, t813, t763, -t842, t635, t637, -pkin(4) * t691, -pkin(4) * t616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t870, t856, t877, -t870, -t972, qJDD(4), t958, t979, 0, 0, t759, t690, t747, -t757, t748, t776, t967, t968, t953, t980; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t794, t764, t1022, t833, t829, -t833, 0, t711, t653, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t832, t766, t830, -t919, t785, -t832, -t711, 0, t654, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t813, t812, t767, -t813, -t763, t842, -t653, -t654, 0, 0;];
m_new_reg = t1;
