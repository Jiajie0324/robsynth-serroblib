% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRPPRR10
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 11:51
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRPPRR10_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR10_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR10_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPPRR10_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPPRR10_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR10_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 11:50:04
% EndTime: 2019-05-06 11:50:39
% DurationCPUTime: 27.26s
% Computational Cost: add. (148361->777), mult. (328624->1126), div. (0->0), fcn. (215054->10), ass. (0->534)
t891 = sin(qJ(2));
t883 = t891 ^ 2;
t898 = qJD(1) ^ 2;
t876 = t883 * t898;
t897 = qJD(2) ^ 2;
t863 = -t876 - t897;
t895 = cos(qJ(2));
t933 = t891 * t895 * t898;
t855 = -qJDD(2) + t933;
t954 = t895 * t855;
t796 = -t863 * t891 + t954;
t944 = qJD(1) * qJD(2);
t872 = t895 * t944;
t942 = qJDD(1) * t891;
t844 = 0.2e1 * t872 + t942;
t892 = sin(qJ(1));
t896 = cos(qJ(1));
t741 = t796 * t892 - t844 * t896;
t1027 = pkin(6) * t741;
t745 = t796 * t896 + t844 * t892;
t1026 = pkin(6) * t745;
t884 = t895 ^ 2;
t961 = t884 * t898;
t864 = t897 + t961;
t854 = qJDD(2) + t933;
t971 = t854 * t891;
t798 = t864 * t895 + t971;
t875 = t895 * qJDD(1);
t923 = t891 * t944;
t847 = t875 - 0.2e1 * t923;
t742 = t798 * t892 - t847 * t896;
t1025 = pkin(6) * t742;
t746 = t798 * t896 + t847 * t892;
t1024 = pkin(6) * t746;
t955 = t895 * t854;
t793 = -t864 * t891 + t955;
t1023 = pkin(1) * t793;
t1022 = pkin(7) * t793;
t1021 = pkin(7) * t796;
t862 = -t876 + t897;
t795 = -t862 * t891 + t955;
t940 = qJDD(1) * t896;
t1020 = t795 * t892 - t891 * t940;
t941 = qJDD(1) * t892;
t1019 = t795 * t896 + t891 * t941;
t1018 = 2 * qJD(3);
t1017 = -2 * qJD(4);
t970 = t855 * t891;
t790 = t863 * t895 + t970;
t1016 = pkin(1) * t790;
t1015 = pkin(7) * t790;
t1014 = pkin(7) * t798;
t886 = sin(pkin(10));
t887 = cos(pkin(10));
t947 = qJD(1) * t895;
t830 = qJD(2) * t886 + t887 * t947;
t832 = qJD(2) * t887 - t886 * t947;
t782 = t832 * t830;
t845 = t872 + t942;
t1002 = -t782 + t845;
t1013 = t1002 * t886;
t1012 = t1002 * t887;
t890 = sin(qJ(5));
t894 = cos(qJ(5));
t772 = t894 * t830 + t832 * t890;
t774 = -t830 * t890 + t832 * t894;
t713 = t774 * t772;
t833 = qJDD(5) + t845;
t1003 = -t713 + t833;
t1011 = t1003 * t890;
t1010 = t1003 * t894;
t889 = sin(qJ(6));
t893 = cos(qJ(6));
t709 = t893 * t772 + t774 * t889;
t711 = -t772 * t889 + t774 * t893;
t638 = t711 * t709;
t828 = qJDD(6) + t833;
t1004 = -t638 + t828;
t1009 = t1004 * t889;
t1008 = t1004 * t893;
t865 = -t897 + t961;
t799 = t865 * t895 + t970;
t1007 = t799 * t892 - t896 * t875;
t1006 = t799 * t896 + t892 * t875;
t911 = t845 + t872;
t1005 = qJ(3) * t911;
t846 = t875 - t923;
t811 = t887 * qJDD(2) - t886 * t846;
t918 = -qJDD(2) * t886 - t887 * t846;
t687 = -t772 * qJD(5) + t894 * t811 + t890 * t918;
t948 = qJD(1) * t891;
t868 = qJD(5) + t948;
t980 = t772 * t868;
t657 = -t687 - t980;
t1001 = -pkin(2) * t923 + t1018 * t948;
t932 = t830 * t948;
t756 = t932 + t811;
t856 = pkin(3) * t948 - qJD(2) * qJ(4);
t857 = t892 * g(1) - t896 * g(2);
t907 = -qJDD(1) * pkin(1) - t857;
t900 = -t1001 + t907 - t1005;
t994 = pkin(2) + qJ(4);
t673 = -t856 * t948 + (-pkin(3) * t884 - pkin(7)) * t898 - t994 * t846 + t900;
t858 = g(1) * t896 + g(2) * t892;
t824 = -pkin(1) * t898 + qJDD(1) * pkin(7) - t858;
t803 = t895 * g(3) + t891 * t824;
t993 = qJ(3) * t891;
t997 = pkin(2) * t895;
t913 = -t993 - t997;
t842 = t913 * qJD(1);
t906 = -qJDD(2) * pkin(2) - t897 * qJ(3) + t842 * t948 + qJDD(3) + t803;
t698 = -t854 * qJ(4) + (t845 - t872) * pkin(3) + t906;
t914 = t1017 * t832 - t886 * t673 + t887 * t698;
t619 = t1017 * t830 + t887 * t673 + t886 * t698;
t1000 = -t865 * t891 + t954;
t879 = t891 * g(3);
t999 = -(qJD(1) * t842 + t824) * t895 + t897 * pkin(2) + t879;
t705 = t709 ^ 2;
t706 = t711 ^ 2;
t770 = t772 ^ 2;
t771 = t774 ^ 2;
t998 = t830 ^ 2;
t829 = t832 ^ 2;
t860 = qJD(6) + t868;
t859 = t860 ^ 2;
t866 = t868 ^ 2;
t949 = t883 + t884;
t849 = t949 * qJDD(1);
t852 = t876 + t961;
t780 = t849 * t892 + t852 * t896;
t996 = pkin(6) * t780;
t995 = t898 * pkin(7);
t584 = pkin(4) * t1002 - pkin(8) * t756 + t914;
t812 = pkin(4) * t948 - pkin(8) * t832;
t598 = -pkin(4) * t998 + pkin(8) * t918 - t812 * t948 + t619;
t529 = -t894 * t584 + t890 * t598;
t502 = pkin(5) * t1003 + pkin(9) * t657 - t529;
t530 = t890 * t584 + t894 * t598;
t920 = t890 * t811 - t894 * t918;
t686 = -qJD(5) * t774 - t920;
t740 = pkin(5) * t868 - pkin(9) * t774;
t505 = -pkin(5) * t770 + pkin(9) * t686 - t740 * t868 + t530;
t455 = -t893 * t502 + t505 * t889;
t456 = t502 * t889 + t505 * t893;
t429 = -t455 * t893 + t456 * t889;
t992 = t429 * t890;
t991 = t429 * t894;
t483 = -t529 * t894 + t530 * t890;
t990 = t483 * t887;
t901 = qJDD(2) * qJ(3) - t999;
t692 = qJDD(4) + t846 * pkin(3) - qJ(4) * t961 + (t1018 + t856) * qJD(2) + t901;
t636 = -t918 * pkin(4) - t998 * pkin(8) + t832 * t812 + t692;
t557 = -t686 * pkin(5) - t770 * pkin(9) + t774 * t740 + t636;
t989 = t557 * t889;
t988 = t557 * t893;
t631 = t638 + t828;
t987 = t631 * t889;
t986 = t631 * t893;
t985 = t636 * t890;
t984 = t636 * t894;
t694 = t713 + t833;
t983 = t694 * t890;
t982 = t694 * t894;
t981 = t709 * t860;
t823 = -t907 + t995;
t979 = t823 * t891;
t978 = t823 * t895;
t977 = t844 * t891;
t973 = t847 * t895;
t969 = t860 * t889;
t968 = t860 * t893;
t963 = t868 * t890;
t962 = t868 * t894;
t960 = t886 * t483;
t959 = t886 * t692;
t762 = t782 + t845;
t958 = t886 * t762;
t957 = t887 * t692;
t956 = t887 * t762;
t952 = -t829 - t876;
t951 = pkin(1) * t852 + pkin(7) * t849;
t943 = qJD(3) * qJD(2);
t939 = t891 * t638;
t938 = t895 * t638;
t937 = t891 * t713;
t936 = t895 * t713;
t935 = t891 * t782;
t934 = t895 * t782;
t608 = -t709 * qJD(6) + t889 * t686 + t893 * t687;
t931 = t832 * t948;
t930 = t886 * t948;
t929 = t887 * t948;
t430 = t455 * t889 + t893 * t456;
t484 = t529 * t890 + t894 * t530;
t921 = -t893 * t686 + t889 * t687;
t804 = t895 * t824 - t879;
t726 = t803 * t891 + t895 * t804;
t785 = -t857 * t892 - t896 * t858;
t917 = t892 * t933;
t916 = t896 * t933;
t851 = -t892 * t898 + t940;
t915 = -pkin(6) * t851 - g(3) * t892;
t912 = pkin(2) * t891 - qJ(3) * t895;
t553 = t886 * t619 + t887 * t914;
t554 = t887 * t619 - t886 * t914;
t725 = t803 * t895 - t804 * t891;
t910 = t862 * t895 + t971;
t784 = t857 * t896 - t858 * t892;
t909 = t608 - t981;
t908 = t687 - t980;
t904 = t918 + t931;
t903 = (-qJD(6) + t860) * t711 - t921;
t902 = (-qJD(5) + t868) * t774 - t920;
t727 = t901 + 0.2e1 * t943;
t899 = t846 * pkin(2) + t1001 + t823;
t853 = -t876 + t961;
t850 = t896 * t898 + t941;
t840 = t912 * qJDD(1);
t835 = t949 * t944;
t826 = t895 * t845;
t825 = t891 * t845;
t817 = -pkin(6) * t850 + g(3) * t896;
t814 = -t829 + t876;
t813 = -t876 + t998;
t810 = qJDD(2) * t892 + t835 * t896;
t809 = -t883 * t944 + t826;
t808 = -qJDD(2) * t896 + t835 * t892;
t807 = -t846 * t891 - t884 * t944;
t791 = t872 * t891 + t825;
t789 = (t846 - t923) * t895;
t781 = t849 * t896 - t852 * t892;
t779 = t829 - t998;
t778 = pkin(6) * t781;
t777 = t973 - t977;
t776 = t844 * t895 + t847 * t891;
t775 = -t876 - t998;
t768 = t809 * t896 - t917;
t767 = t807 * t896 + t917;
t766 = t809 * t892 + t916;
t765 = t807 * t892 - t916;
t760 = -t932 + t811;
t757 = -t918 + t931;
t755 = -t829 - t998;
t753 = (t830 * t887 - t832 * t886) * t948;
t752 = (t830 * t886 + t832 * t887) * t948;
t750 = -t771 + t866;
t749 = t770 - t866;
t739 = -t978 - t1015;
t738 = -t979 - t1022;
t737 = -t811 * t887 + t832 * t930;
t736 = -t811 * t886 - t832 * t929;
t735 = -t830 * t929 + t886 * t918;
t734 = -t830 * t930 - t887 * t918;
t733 = t777 * t896 - t853 * t892;
t732 = t777 * t892 + t853 * t896;
t730 = t803 - t1023;
t729 = t804 - t1016;
t728 = -t771 - t866;
t723 = qJ(3) * t852 + t906;
t722 = -t752 * t891 + t826;
t721 = pkin(2) * t852 + t727;
t720 = t899 + t1005;
t719 = -t813 * t887 + t958;
t718 = -t886 * t952 - t956;
t717 = t814 * t886 - t1012;
t716 = -t813 * t886 - t956;
t715 = t887 * t952 - t958;
t714 = -t814 * t887 - t1013;
t712 = t771 - t770;
t708 = -t995 + (-t846 - t847) * pkin(2) + t900;
t707 = (t844 + t911) * qJ(3) + t899;
t704 = t726 * t896 - t823 * t892;
t703 = t726 * t892 + t823 * t896;
t702 = -t866 - t770;
t700 = t887 * t775 - t1013;
t699 = t886 * t775 + t1012;
t697 = -t736 * t891 + t934;
t696 = -t734 * t891 - t934;
t689 = -t706 + t859;
t688 = t705 - t859;
t685 = t886 * t756 + t887 * t904;
t684 = t757 * t887 + t760 * t886;
t683 = -t756 * t887 + t886 * t904;
t682 = t757 * t886 - t760 * t887;
t680 = (-t772 * t894 + t774 * t890) * t868;
t679 = (-t772 * t890 - t774 * t894) * t868;
t675 = -t706 - t859;
t674 = pkin(2) * t854 - qJ(3) * t864 + t1023 - t906;
t672 = t1016 + pkin(2) * t863 - 0.2e1 * t943 + (-qJDD(2) + t855) * qJ(3) + t999;
t670 = -t770 - t771;
t669 = t727 * t895 + t891 * t906;
t668 = t727 * t891 - t895 * t906;
t667 = t715 * t891 + t760 * t895;
t666 = -t716 * t891 + t895 * t904;
t665 = -t714 * t891 + t756 * t895;
t664 = -t715 * t895 + t760 * t891;
t663 = -pkin(2) * t977 + t707 * t895 + t1015;
t662 = -qJ(3) * t973 - t708 * t891 + t1022;
t661 = -t682 * t891 + t779 * t895;
t660 = t699 * t891 + t757 * t895;
t659 = -t699 * t895 + t757 * t891;
t653 = (qJD(5) + t868) * t774 + t920;
t652 = -t721 * t891 + t723 * t895;
t651 = t749 * t894 - t983;
t650 = -t750 * t890 + t1010;
t649 = t749 * t890 + t982;
t648 = t750 * t894 + t1011;
t647 = t687 * t894 - t774 * t963;
t646 = t687 * t890 + t774 * t962;
t645 = -t686 * t890 + t772 * t962;
t644 = t686 * t894 + t772 * t963;
t643 = t683 * t891 + t755 * t895;
t642 = -t683 * t895 + t755 * t891;
t641 = -t728 * t890 - t982;
t640 = t728 * t894 - t983;
t637 = t706 - t705;
t635 = -t859 - t705;
t634 = t702 * t894 - t1011;
t633 = t702 * t890 + t1010;
t628 = (-t709 * t893 + t711 * t889) * t860;
t627 = (-t709 * t889 - t711 * t893) * t860;
t626 = t669 * t896 - t720 * t892;
t625 = t669 * t892 + t720 * t896;
t624 = pkin(3) * t683 - qJ(3) * t685;
t623 = t679 * t886 - t680 * t887;
t622 = -t679 * t887 - t680 * t886;
t621 = t667 * t896 + t718 * t892;
t620 = t667 * t892 - t718 * t896;
t616 = -t622 * t891 + t833 * t895;
t615 = -pkin(1) * t668 + pkin(2) * t906 - qJ(3) * t727;
t614 = t660 * t896 + t700 * t892;
t613 = t660 * t892 - t700 * t896;
t612 = -t705 - t706;
t611 = t643 * t896 + t685 * t892;
t610 = t643 * t892 - t685 * t896;
t609 = -pkin(7) * t668 - t720 * t912;
t607 = -qJD(6) * t711 - t921;
t606 = t688 * t893 - t987;
t605 = -t689 * t889 + t1008;
t604 = t688 * t889 + t986;
t603 = t689 * t893 + t1009;
t602 = -t657 * t890 + t894 * t902;
t601 = -t653 * t894 - t890 * t908;
t600 = t657 * t894 + t890 * t902;
t599 = -t653 * t890 + t894 * t908;
t597 = pkin(3) * t760 - t718 * t994 - t959;
t594 = -t675 * t889 - t986;
t593 = t675 * t893 - t987;
t592 = t649 * t886 - t651 * t887;
t591 = t648 * t886 - t650 * t887;
t590 = -t649 * t887 - t651 * t886;
t589 = -t648 * t887 - t650 * t886;
t588 = t646 * t886 - t647 * t887;
t587 = t644 * t886 - t645 * t887;
t586 = -t646 * t887 - t647 * t886;
t585 = -t644 * t887 - t645 * t886;
t581 = -t886 * t640 + t641 * t887;
t580 = t640 * t887 + t641 * t886;
t579 = pkin(3) * t757 - t700 * t994 + t957;
t578 = -pkin(8) * t640 + t984;
t577 = -pkin(8) * t633 + t985;
t576 = t635 * t893 - t1009;
t575 = t635 * t889 + t1008;
t574 = pkin(3) * t715 - qJ(3) * t718 - t619;
t573 = -t886 * t633 + t634 * t887;
t572 = t633 * t887 + t634 * t886;
t570 = -t608 - t981;
t566 = (qJD(6) + t860) * t711 + t921;
t565 = t608 * t893 - t711 * t969;
t564 = t608 * t889 + t711 * t968;
t563 = -t607 * t889 + t709 * t968;
t562 = t607 * t893 + t709 * t969;
t561 = -t586 * t891 + t936;
t560 = -t585 * t891 - t936;
t559 = -t627 * t890 + t628 * t894;
t558 = t627 * t894 + t628 * t890;
t556 = pkin(3) * t699 - qJ(3) * t700 + t914;
t555 = -pkin(1) * t664 - qJ(3) * t760 + t715 * t994 - t957;
t552 = -t590 * t891 + t895 * t902;
t551 = -t589 * t891 - t657 * t895;
t550 = -pkin(1) * t659 - qJ(3) * t757 + t699 * t994 - t959;
t549 = t580 * t891 + t895 * t908;
t548 = -t580 * t895 + t891 * t908;
t547 = -pkin(4) * t908 + pkin(8) * t641 + t985;
t546 = -pkin(4) * t653 + pkin(8) * t634 - t984;
t545 = t572 * t891 + t653 * t895;
t544 = -t572 * t895 + t653 * t891;
t543 = t553 * t891 + t692 * t895;
t542 = -t553 * t895 + t692 * t891;
t541 = -t604 * t890 + t606 * t894;
t540 = -t603 * t890 + t605 * t894;
t539 = t604 * t894 + t606 * t890;
t538 = t603 * t894 + t605 * t890;
t537 = -t886 * t600 + t602 * t887;
t536 = t599 * t886 - t601 * t887;
t535 = t600 * t887 + t602 * t886;
t534 = -t599 * t887 - t601 * t886;
t533 = -t593 * t890 + t594 * t894;
t532 = t593 * t894 + t594 * t890;
t527 = -t534 * t891 + t712 * t895;
t526 = pkin(3) * t755 - t685 * t994 - t554;
t525 = -pkin(9) * t593 + t988;
t524 = t535 * t891 + t670 * t895;
t523 = -t535 * t895 + t670 * t891;
t522 = -t575 * t890 + t576 * t894;
t521 = t575 * t894 + t576 * t890;
t519 = -t570 * t889 + t893 * t903;
t518 = -t566 * t893 - t889 * t909;
t517 = t570 * t893 + t889 * t903;
t516 = -t566 * t889 + t893 * t909;
t515 = -pkin(9) * t575 + t989;
t514 = -t564 * t890 + t565 * t894;
t513 = -t562 * t890 + t563 * t894;
t512 = t564 * t894 + t565 * t890;
t511 = t562 * t894 + t563 * t890;
t510 = t549 * t896 + t581 * t892;
t509 = t549 * t892 - t581 * t896;
t508 = t558 * t886 - t559 * t887;
t507 = -t558 * t887 - t559 * t886;
t506 = -pkin(7) * t664 + t574 * t895 - t597 * t891;
t504 = -t507 * t891 + t828 * t895;
t503 = -pkin(1) * t642 - qJ(3) * t755 + t683 * t994 + t553;
t500 = -pkin(7) * t659 + t556 * t895 - t579 * t891;
t499 = pkin(3) * t553 - qJ(3) * t554;
t498 = t545 * t896 + t573 * t892;
t497 = t545 * t892 - t573 * t896;
t496 = pkin(3) * t692 - t554 * t994;
t495 = t543 * t896 + t554 * t892;
t494 = t543 * t892 - t554 * t896;
t493 = -pkin(7) * t642 - t526 * t891 + t624 * t895;
t492 = -pkin(5) * t909 + pkin(9) * t594 + t989;
t491 = -pkin(5) * t566 + pkin(9) * t576 - t988;
t490 = t539 * t886 - t541 * t887;
t489 = t538 * t886 - t540 * t887;
t488 = -t539 * t887 - t541 * t886;
t487 = -t538 * t887 - t540 * t886;
t486 = -t886 * t532 + t533 * t887;
t485 = t532 * t887 + t533 * t886;
t481 = t524 * t896 + t537 * t892;
t480 = t524 * t892 - t537 * t896;
t479 = pkin(3) * t580 + pkin(4) * t640 - qJ(3) * t581 - t530;
t478 = -pkin(4) * t636 + pkin(8) * t484;
t477 = pkin(3) * t535 + pkin(4) * t600 - qJ(3) * t537;
t476 = -t886 * t521 + t522 * t887;
t475 = t521 * t887 + t522 * t886;
t474 = -pkin(8) * t600 - t483;
t473 = -t517 * t890 + t519 * t894;
t472 = -t516 * t890 + t518 * t894;
t471 = t517 * t894 + t519 * t890;
t470 = t516 * t894 + t518 * t890;
t468 = -pkin(1) * t542 - qJ(3) * t692 + t553 * t994;
t467 = pkin(3) * t572 + pkin(4) * t633 - qJ(3) * t573 - t529;
t466 = -t488 * t891 + t895 * t903;
t465 = -t487 * t891 - t570 * t895;
t464 = t512 * t886 - t514 * t887;
t463 = t511 * t886 - t513 * t887;
t462 = -t512 * t887 - t514 * t886;
t461 = -t511 * t887 - t513 * t886;
t460 = t485 * t891 + t895 * t909;
t459 = -t485 * t895 + t891 * t909;
t458 = pkin(3) * t908 - t887 * t547 - t886 * t578 - t581 * t994;
t457 = -pkin(4) * t670 + pkin(8) * t602 + t484;
t453 = -t462 * t891 + t938;
t452 = -t461 * t891 - t938;
t451 = pkin(3) * t653 - t887 * t546 - t573 * t994 - t886 * t577;
t450 = t475 * t891 + t566 * t895;
t449 = -t475 * t895 + t566 * t891;
t448 = -pkin(1) * t548 - qJ(3) * t908 + t886 * t547 - t887 * t578 + t580 * t994;
t447 = -pkin(1) * t544 - qJ(3) * t653 + t886 * t546 + t572 * t994 - t887 * t577;
t446 = -pkin(8) * t532 - t492 * t890 + t525 * t894;
t445 = -pkin(7) * t542 - t496 * t891 + t499 * t895;
t444 = t484 * t887 - t960;
t443 = t484 * t886 + t990;
t442 = t443 * t891 + t636 * t895;
t441 = -t443 * t895 + t636 * t891;
t440 = -pkin(8) * t521 - t491 * t890 + t515 * t894;
t439 = -pkin(4) * t909 + pkin(8) * t533 + t492 * t894 + t525 * t890;
t438 = t460 * t896 + t486 * t892;
t437 = t460 * t892 - t486 * t896;
t436 = -pkin(4) * t566 + pkin(8) * t522 + t491 * t894 + t515 * t890;
t435 = -t886 * t471 + t473 * t887;
t434 = t470 * t886 - t472 * t887;
t433 = t471 * t887 + t473 * t886;
t432 = -t470 * t887 - t472 * t886;
t431 = -t432 * t891 + t637 * t895;
t428 = t433 * t891 + t612 * t895;
t427 = -t433 * t895 + t612 * t891;
t426 = t450 * t896 + t476 * t892;
t425 = t450 * t892 - t476 * t896;
t424 = -pkin(7) * t548 - t458 * t891 + t479 * t895;
t423 = -pkin(5) * t557 + pkin(9) * t430;
t422 = -pkin(7) * t544 - t451 * t891 + t467 * t895;
t421 = -pkin(9) * t517 - t429;
t420 = -pkin(5) * t612 + pkin(9) * t519 + t430;
t419 = pkin(3) * t670 - t887 * t457 - t886 * t474 - t537 * t994;
t418 = pkin(3) * t485 + pkin(4) * t532 + pkin(5) * t593 - qJ(3) * t486 - t456;
t417 = t442 * t896 + t444 * t892;
t416 = t442 * t892 - t444 * t896;
t415 = -pkin(1) * t523 - qJ(3) * t670 + t886 * t457 - t887 * t474 + t535 * t994;
t414 = pkin(3) * t475 + pkin(4) * t521 + pkin(5) * t575 - qJ(3) * t476 - t455;
t413 = pkin(3) * t443 + pkin(4) * t483 - qJ(3) * t444;
t412 = t428 * t896 + t435 * t892;
t411 = t428 * t892 - t435 * t896;
t410 = -pkin(7) * t523 - t419 * t891 + t477 * t895;
t409 = t430 * t894 - t992;
t408 = t430 * t890 + t991;
t406 = pkin(3) * t636 + pkin(8) * t960 - t444 * t994 - t887 * t478;
t405 = pkin(3) * t909 - t887 * t439 - t886 * t446 - t486 * t994;
t404 = pkin(3) * t433 + pkin(4) * t471 + pkin(5) * t517 - qJ(3) * t435;
t403 = pkin(3) * t566 - t887 * t436 - t886 * t440 - t476 * t994;
t402 = -pkin(1) * t459 - qJ(3) * t909 + t886 * t439 - t887 * t446 + t485 * t994;
t401 = -pkin(8) * t471 - t420 * t890 + t421 * t894;
t400 = -pkin(4) * t612 + pkin(8) * t473 + t420 * t894 + t421 * t890;
t399 = -pkin(1) * t441 + pkin(8) * t990 - qJ(3) * t636 + t443 * t994 + t886 * t478;
t398 = -pkin(1) * t449 - qJ(3) * t566 + t886 * t436 - t887 * t440 + t475 * t994;
t397 = -t886 * t408 + t409 * t887;
t396 = t408 * t887 + t409 * t886;
t395 = -pkin(8) * t408 - pkin(9) * t991 - t423 * t890;
t394 = t396 * t891 + t557 * t895;
t393 = -t396 * t895 + t557 * t891;
t392 = -pkin(4) * t557 + pkin(8) * t409 - pkin(9) * t992 + t423 * t894;
t391 = -pkin(7) * t459 - t405 * t891 + t418 * t895;
t390 = -pkin(7) * t441 - t406 * t891 + t413 * t895;
t389 = -pkin(7) * t449 - t403 * t891 + t414 * t895;
t388 = pkin(3) * t612 - t887 * t400 - t886 * t401 - t435 * t994;
t387 = t394 * t896 + t397 * t892;
t386 = t394 * t892 - t397 * t896;
t385 = -pkin(1) * t427 - qJ(3) * t612 + t886 * t400 - t887 * t401 + t433 * t994;
t384 = pkin(3) * t396 + pkin(4) * t408 + pkin(5) * t429 - qJ(3) * t397;
t383 = -pkin(7) * t427 - t388 * t891 + t404 * t895;
t382 = pkin(3) * t557 - t887 * t392 - t886 * t395 - t397 * t994;
t381 = -pkin(1) * t393 - qJ(3) * t557 + t886 * t392 - t887 * t395 + t396 * t994;
t380 = -pkin(7) * t393 - t382 * t891 + t384 * t895;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t850, -t851, 0, t785, 0, 0, 0, 0, 0, 0, -t746, t745, t781, t704, 0, 0, 0, 0, 0, 0, t781, t746, -t745, t626, 0, 0, 0, 0, 0, 0, t614, t621, t611, t495, 0, 0, 0, 0, 0, 0, t498, t510, t481, t417, 0, 0, 0, 0, 0, 0, t426, t438, t412, t387; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t851, -t850, 0, t784, 0, 0, 0, 0, 0, 0, -t742, t741, t780, t703, 0, 0, 0, 0, 0, 0, t780, t742, -t741, t625, 0, 0, 0, 0, 0, 0, t613, t620, t610, t494, 0, 0, 0, 0, 0, 0, t497, t509, t480, t416, 0, 0, 0, 0, 0, 0, t425, t437, t411, t386; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t793, t790, 0, -t725, 0, 0, 0, 0, 0, 0, 0, -t793, -t790, t668, 0, 0, 0, 0, 0, 0, t659, t664, t642, t542, 0, 0, 0, 0, 0, 0, t544, t548, t523, t441, 0, 0, 0, 0, 0, 0, t449, t459, t427, t393; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t851, 0, -t850, 0, t915, -t817, -t784, -pkin(6) * t784, t768, t733, t1019, t767, t1006, t810, -t730 * t892 + t738 * t896 + t1025, -t729 * t892 + t739 * t896 - t1027, t725 * t896 - t996, -pkin(6) * t703 - (pkin(1) * t892 - pkin(7) * t896) * t725, t810, -t1019, -t1006, t768, t733, t767, t652 * t896 - t840 * t892 - t996, t662 * t896 - t674 * t892 - t1025, t663 * t896 - t672 * t892 + t1027, -pkin(6) * t625 + t609 * t896 - t615 * t892, t697 * t896 - t737 * t892, t661 * t896 - t684 * t892, t665 * t896 - t717 * t892, t696 * t896 - t735 * t892, t666 * t896 - t719 * t892, t722 * t896 - t753 * t892, -pkin(6) * t613 + t500 * t896 - t550 * t892, -pkin(6) * t620 + t506 * t896 - t555 * t892, -pkin(6) * t610 + t493 * t896 - t503 * t892, -pkin(6) * t494 + t445 * t896 - t468 * t892, t561 * t896 - t588 * t892, t527 * t896 - t536 * t892, t551 * t896 - t591 * t892, t560 * t896 - t587 * t892, t552 * t896 - t592 * t892, t616 * t896 - t623 * t892, -pkin(6) * t497 + t422 * t896 - t447 * t892, -pkin(6) * t509 + t424 * t896 - t448 * t892, -pkin(6) * t480 + t410 * t896 - t415 * t892, -pkin(6) * t416 + t390 * t896 - t399 * t892, t453 * t896 - t464 * t892, t431 * t896 - t434 * t892, t465 * t896 - t489 * t892, t452 * t896 - t463 * t892, t466 * t896 - t490 * t892, t504 * t896 - t508 * t892, -pkin(6) * t425 + t389 * t896 - t398 * t892, -pkin(6) * t437 + t391 * t896 - t402 * t892, -pkin(6) * t411 + t383 * t896 - t385 * t892, -pkin(6) * t386 + t380 * t896 - t381 * t892; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t850, 0, t851, 0, t817, t915, t785, pkin(6) * t785, t766, t732, t1020, t765, t1007, t808, t730 * t896 + t738 * t892 - t1024, t729 * t896 + t739 * t892 + t1026, t725 * t892 + t778, pkin(6) * t704 - (-pkin(1) * t896 - pkin(7) * t892) * t725, t808, -t1020, -t1007, t766, t732, t765, t652 * t892 + t840 * t896 + t778, t662 * t892 + t674 * t896 + t1024, t663 * t892 + t672 * t896 - t1026, pkin(6) * t626 + t609 * t892 + t615 * t896, t697 * t892 + t737 * t896, t661 * t892 + t684 * t896, t665 * t892 + t717 * t896, t696 * t892 + t735 * t896, t666 * t892 + t719 * t896, t722 * t892 + t753 * t896, pkin(6) * t614 + t500 * t892 + t550 * t896, pkin(6) * t621 + t506 * t892 + t555 * t896, pkin(6) * t611 + t493 * t892 + t503 * t896, pkin(6) * t495 + t445 * t892 + t468 * t896, t561 * t892 + t588 * t896, t527 * t892 + t536 * t896, t551 * t892 + t591 * t896, t560 * t892 + t587 * t896, t552 * t892 + t592 * t896, t616 * t892 + t623 * t896, pkin(6) * t498 + t422 * t892 + t447 * t896, pkin(6) * t510 + t424 * t892 + t448 * t896, pkin(6) * t481 + t410 * t892 + t415 * t896, pkin(6) * t417 + t390 * t892 + t399 * t896, t453 * t892 + t464 * t896, t431 * t892 + t434 * t896, t465 * t892 + t489 * t896, t452 * t892 + t463 * t896, t466 * t892 + t490 * t896, t504 * t892 + t508 * t896, pkin(6) * t426 + t389 * t892 + t398 * t896, pkin(6) * t438 + t391 * t892 + t402 * t896, pkin(6) * t412 + t383 * t892 + t385 * t896, pkin(6) * t387 + t380 * t892 + t381 * t896; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t857, t858, 0, 0, t791, t776, t910, t789, -t1000, 0, pkin(1) * t847 - t1014 + t978, -pkin(1) * t844 + t1021 - t979, t726 + t951, pkin(1) * t823 + pkin(7) * t726, 0, -t910, t1000, t791, t776, t789, t721 * t895 + t723 * t891 + t951, t1014 + t895 * t708 + (-pkin(1) - t993) * t847, -t1021 + t891 * t707 + (pkin(1) + t997) * t844, pkin(7) * t669 + (pkin(1) - t913) * t720, t736 * t895 + t935, t682 * t895 + t779 * t891, t714 * t895 + t756 * t891, t734 * t895 - t935, t716 * t895 + t891 * t904, t752 * t895 + t825, -pkin(1) * t700 + pkin(7) * t660 + t556 * t891 + t579 * t895, -pkin(1) * t718 + pkin(7) * t667 + t574 * t891 + t597 * t895, -pkin(1) * t685 + pkin(7) * t643 + t526 * t895 + t624 * t891, -pkin(1) * t554 + pkin(7) * t543 + t496 * t895 + t499 * t891, t586 * t895 + t937, t534 * t895 + t712 * t891, t589 * t895 - t657 * t891, t585 * t895 - t937, t590 * t895 + t891 * t902, t622 * t895 + t833 * t891, -pkin(1) * t573 + pkin(7) * t545 + t451 * t895 + t467 * t891, -pkin(1) * t581 + pkin(7) * t549 + t458 * t895 + t479 * t891, -pkin(1) * t537 + pkin(7) * t524 + t419 * t895 + t477 * t891, -pkin(1) * t444 + pkin(7) * t442 + t406 * t895 + t413 * t891, t462 * t895 + t939, t432 * t895 + t637 * t891, t487 * t895 - t570 * t891, t461 * t895 - t939, t488 * t895 + t891 * t903, t507 * t895 + t828 * t891, -pkin(1) * t476 + pkin(7) * t450 + t403 * t895 + t414 * t891, -pkin(1) * t486 + pkin(7) * t460 + t405 * t895 + t418 * t891, -pkin(1) * t435 + pkin(7) * t428 + t388 * t895 + t404 * t891, -pkin(1) * t397 + pkin(7) * t394 + t382 * t895 + t384 * t891;];
tauB_reg  = t1;
