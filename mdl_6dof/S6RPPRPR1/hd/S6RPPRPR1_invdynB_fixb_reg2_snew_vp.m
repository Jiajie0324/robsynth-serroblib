% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPPRPR1
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta3,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 13:57
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPPRPR1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRPR1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRPR1_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 13:55:44
% EndTime: 2019-05-05 13:56:11
% DurationCPUTime: 27.88s
% Computational Cost: add. (167515->835), mult. (391684->1293), div. (0->0), fcn. (286543->12), ass. (0->564)
t889 = cos(qJ(1));
t886 = sin(qJ(1));
t854 = g(1) * t889 + t886 * g(2);
t959 = qJD(1) ^ 2;
t843 = -pkin(1) * t959 - t854;
t880 = sin(pkin(9));
t883 = cos(pkin(9));
t853 = g(1) * t886 - t889 * g(2);
t897 = qJDD(1) * pkin(1) + t853;
t789 = t880 * t843 - t883 * t897;
t927 = t883 * t843;
t790 = t880 * t897 + t927;
t904 = t789 * t880 + t883 * t790;
t726 = t789 * t883 - t790 * t880;
t926 = t886 * t726;
t659 = t889 * t904 + t926;
t943 = t726 * t889;
t983 = -t886 * t904 + t943;
t917 = qJDD(1) * t880;
t846 = t883 * t959 + t917;
t915 = qJDD(1) * t883;
t919 = t880 * t959;
t847 = t915 - t919;
t795 = -t886 * t846 + t889 * t847;
t875 = g(3) - qJDD(2);
t820 = qJ(2) * t846 - t875 * t883;
t901 = -qJ(2) * t847 - t875 * t880;
t982 = -pkin(6) * t795 + t886 * t820 + t889 * t901;
t878 = sin(pkin(11));
t879 = sin(pkin(10));
t882 = cos(pkin(10));
t885 = sin(qJ(4));
t888 = cos(qJ(4));
t898 = t879 * t888 + t882 * t885;
t836 = t898 * qJD(1);
t881 = cos(pkin(11));
t810 = -t881 * qJD(4) + t836 * t878;
t813 = qJD(4) * t878 + t836 * t881;
t759 = t813 * t810;
t916 = qJDD(1) * t882;
t929 = t879 * t885;
t832 = qJDD(1) * t929 - t888 * t916;
t920 = t836 * qJD(4);
t783 = t832 + t920;
t967 = -t759 + t783;
t981 = t878 * t967;
t980 = t881 * t967;
t884 = sin(qJ(6));
t887 = cos(qJ(6));
t752 = t887 * t810 + t813 * t884;
t754 = -t810 * t884 + t813 * t887;
t690 = t754 * t752;
t894 = qJDD(6) + t783;
t969 = -t690 + t894;
t979 = t884 * t969;
t923 = qJD(1) * t882;
t834 = qJD(1) * t929 - t888 * t923;
t788 = t836 * t834;
t964 = qJDD(4) - t788;
t978 = t885 * t964;
t977 = t887 * t969;
t976 = t888 * t964;
t872 = t882 ^ 2;
t868 = t872 * t959;
t871 = t879 ^ 2;
t922 = t959 * t871;
t849 = t868 + t922;
t966 = t889 * t846 + t886 * t847;
t974 = pkin(6) * t966 + t820 * t889 - t886 * t901;
t963 = t959 * (t871 + t872);
t841 = t882 * t963;
t805 = -t841 * t880 + t882 * t915;
t807 = t841 * t883 + t880 * t916;
t740 = t805 * t889 - t886 * t807;
t973 = t886 * t805 + t807 * t889;
t827 = qJD(6) + t834;
t720 = t827 * t752;
t921 = t834 * qJD(4);
t965 = t898 * qJDD(1);
t785 = t965 - t921;
t764 = t881 * qJDD(4) - t785 * t878;
t765 = t878 * qJDD(4) + t881 * t785;
t895 = qJD(6) * t752 - t764 * t884 - t765 * t887;
t968 = -t720 - t895;
t771 = t834 * t810;
t705 = -t771 - t765;
t704 = -t771 + t765;
t905 = -t887 * t764 + t884 * t765;
t600 = (qJD(6) - t827) * t754 + t905;
t749 = t752 ^ 2;
t750 = t754 ^ 2;
t961 = t810 ^ 2;
t809 = t813 ^ 2;
t826 = t827 ^ 2;
t960 = t834 ^ 2;
t831 = t836 ^ 2;
t958 = qJD(4) ^ 2;
t957 = 2 * qJD(3);
t956 = pkin(4) * t885;
t877 = qJDD(1) * pkin(2);
t893 = qJDD(1) * qJ(3) + t790;
t756 = t882 * (-pkin(2) * t959 + t893) - t879 * t875 + t923 * t957;
t730 = -pkin(3) * t868 + pkin(7) * t916 + t756;
t928 = t882 * t875;
t892 = -t928 + (-t927 - t880 * t853 + (-pkin(1) * t880 - pkin(7) - qJ(3)) * qJDD(1) + (-(2 * qJD(3)) + (pkin(3) * t882 + pkin(2)) * qJD(1)) * qJD(1)) * t879;
t666 = t888 * t730 + t885 * t892;
t775 = pkin(4) * t834 - qJ(5) * t836;
t613 = -pkin(4) * t958 + qJDD(4) * qJ(5) - t775 * t834 + t666;
t772 = -t959 * qJ(3) + qJDD(3) + t789 - t877;
t751 = -pkin(3) * t916 - pkin(7) * t849 + t772;
t628 = (-t785 + t921) * qJ(5) + (t783 + t920) * pkin(4) + t751;
t554 = 0.2e1 * qJD(5) * t813 + t878 * t613 - t881 * t628;
t513 = pkin(5) * t967 + pkin(8) * t705 - t554;
t555 = -0.2e1 * qJD(5) * t810 + t881 * t613 + t878 * t628;
t763 = pkin(5) * t834 - pkin(8) * t813;
t517 = -pkin(5) * t961 + pkin(8) * t764 - t763 * t834 + t555;
t454 = -t887 * t513 + t517 * t884;
t455 = t884 * t513 + t887 * t517;
t402 = -t454 * t887 + t455 * t884;
t955 = t402 * t878;
t954 = t402 * t881;
t665 = t730 * t885 - t888 * t892;
t612 = -qJDD(4) * pkin(4) - t958 * qJ(5) + t775 * t836 + qJDD(5) + t665;
t567 = -t764 * pkin(5) - pkin(8) * t961 + t763 * t813 + t612;
t953 = t567 * t884;
t952 = t567 * t887;
t575 = -t665 * t888 + t666 * t885;
t951 = t575 * t879;
t950 = t575 * t882;
t949 = t612 * t878;
t948 = t612 * t881;
t656 = t690 + t894;
t947 = t656 * t884;
t946 = t656 * t887;
t708 = t759 + t783;
t945 = t708 * t878;
t944 = t708 * t881;
t942 = t751 * t885;
t941 = t751 * t888;
t940 = t772 * t880;
t939 = t772 * t883;
t780 = qJDD(4) + t788;
t938 = t780 * t885;
t937 = t780 * t888;
t936 = t783 * t885;
t935 = t813 * t834;
t934 = t827 * t884;
t933 = t827 * t887;
t932 = t834 * t878;
t931 = t834 * t881;
t930 = t879 * t882;
t914 = t885 * t690;
t913 = t888 * t690;
t912 = t885 * t759;
t911 = t888 * t759;
t910 = t880 * t788;
t909 = t883 * t788;
t908 = -pkin(4) * t888 - pkin(3);
t907 = t879 * t916;
t906 = -t772 + t877;
t403 = t454 * t884 + t887 * t455;
t576 = t665 * t885 + t888 * t666;
t755 = t928 + ((-pkin(2) * qJD(1) + t957) * qJD(1) + t893) * t879;
t688 = t755 * t879 + t882 * t756;
t814 = -t853 * t886 - t889 * t854;
t852 = qJDD(1) * t889 - t886 * t959;
t902 = -pkin(6) * t852 - g(3) * t886;
t478 = -t554 * t881 + t555 * t878;
t479 = t554 * t878 + t555 * t881;
t687 = t755 * t882 - t756 * t879;
t815 = t846 * t930;
t816 = t883 * t907 - t919 * t930;
t900 = t815 * t889 + t886 * t816;
t899 = t886 * t815 - t816 * t889;
t812 = t853 * t889 - t886 * t854;
t701 = -t764 - t935;
t865 = t872 * qJDD(1);
t863 = t871 * qJDD(1);
t851 = t886 * qJDD(1) + t889 * t959;
t850 = t868 - t922;
t845 = t865 - t863;
t844 = t865 + t863;
t840 = t879 * t963;
t828 = -pkin(6) * t851 + g(3) * t889;
t823 = -t831 - t958;
t822 = -t831 + t958;
t821 = t960 - t958;
t806 = t840 * t883 + t879 * t917;
t803 = t840 * t880 - t879 * t915;
t794 = t845 * t883 - t850 * t880;
t793 = t844 * t883 - t849 * t880;
t792 = t845 * t880 + t850 * t883;
t791 = t844 * t880 + t849 * t883;
t786 = -t831 + t960;
t784 = t965 - 0.2e1 * t921;
t782 = t832 + 0.2e1 * t920;
t778 = -t960 - t958;
t774 = t888 * t783;
t770 = (-t834 * t888 + t836 * t885) * qJD(4);
t769 = (-t834 * t885 - t836 * t888) * qJD(4);
t767 = -t809 + t960;
t766 = -t960 + t961;
t760 = -t960 - t831;
t757 = -t809 + t961;
t748 = t785 * t888 - t885 * t920;
t747 = t785 * t885 + t888 * t920;
t746 = t888 * t921 + t936;
t745 = t885 * t921 - t774;
t744 = -t809 - t960;
t741 = -t886 * t803 + t806 * t889;
t739 = t803 * t889 + t886 * t806;
t738 = -t823 * t885 - t937;
t737 = -t822 * t885 + t976;
t736 = t821 * t888 - t938;
t735 = t823 * t888 - t938;
t734 = t822 * t888 + t978;
t733 = t821 * t885 + t937;
t732 = -t886 * t791 + t793 * t889;
t731 = t791 * t889 + t886 * t793;
t729 = -t960 - t961;
t719 = -t782 * t888 - t784 * t885;
t718 = -t832 * t888 + t885 * t965;
t717 = -t782 * t885 + t784 * t888;
t716 = -t832 * t885 - t888 * t965;
t715 = -t750 + t826;
t714 = t749 - t826;
t713 = t778 * t888 - t978;
t712 = t778 * t885 + t976;
t711 = t809 + t961;
t710 = pkin(1) * t875 + qJ(2) * t904;
t702 = t764 - t935;
t700 = (-t810 * t881 + t813 * t878) * t834;
t699 = (t810 * t878 + t813 * t881) * t834;
t698 = -t769 * t879 + t770 * t882;
t697 = t765 * t881 - t813 * t932;
t696 = -t765 * t878 - t813 * t931;
t695 = -t764 * t878 + t810 * t931;
t694 = -t764 * t881 - t810 * t932;
t693 = -t750 - t826;
t692 = qJDD(4) * t880 + t698 * t883;
t691 = -qJDD(4) * t883 + t698 * t880;
t689 = -t750 + t749;
t685 = -pkin(7) * t735 + t941;
t684 = -t747 * t879 + t748 * t882;
t683 = -t745 * t879 + t746 * t882;
t682 = -t735 * t879 + t738 * t882;
t681 = -t734 * t879 + t737 * t882;
t680 = -t733 * t879 + t736 * t882;
t679 = t735 * t882 + t738 * t879;
t678 = t700 * t888 + t936;
t677 = t700 * t885 - t774;
t676 = -qJ(2) * t803 - t756 * t880 + t882 * t939;
t675 = -qJ(2) * t805 - t755 * t880 + t879 * t939;
t674 = qJ(2) * t806 + t756 * t883 + t882 * t940;
t673 = -qJ(2) * t807 + t755 * t883 + t879 * t940;
t672 = -t826 - t749;
t671 = t766 * t881 - t945;
t670 = -t767 * t878 + t980;
t669 = -t766 * t878 - t944;
t668 = -t767 * t881 - t981;
t667 = -pkin(7) * t712 + t942;
t663 = t697 * t888 + t912;
t662 = t695 * t888 - t912;
t661 = t697 * t885 - t911;
t660 = t695 * t885 + t911;
t654 = -t744 * t878 - t944;
t653 = t744 * t881 - t945;
t651 = -qJD(6) * t754 - t905;
t650 = t681 * t883 + t880 * t965;
t649 = t680 * t883 - t832 * t880;
t648 = t681 * t880 - t883 * t965;
t647 = t680 * t880 + t832 * t883;
t646 = -qJ(2) * t791 + t687 * t883;
t645 = qJ(2) * t793 + t687 * t880;
t644 = (-t752 * t887 + t754 * t884) * t827;
t643 = (-t752 * t884 - t754 * t887) * t827;
t642 = -t717 * t879 + t719 * t882;
t641 = -t716 * t879 + t718 * t882;
t640 = t716 * t882 + t718 * t879;
t639 = -pkin(3) * t784 + pkin(7) * t738 + t942;
t638 = t729 * t881 - t981;
t637 = t729 * t878 + t980;
t636 = -t712 * t879 + t713 * t882;
t635 = t712 * t882 + t713 * t879;
t634 = t684 * t883 + t910;
t633 = t683 * t883 - t910;
t632 = t684 * t880 - t909;
t631 = t683 * t880 + t909;
t630 = t688 * t883 + t940;
t629 = t688 * t880 - t939;
t625 = t682 * t883 + t784 * t880;
t624 = t682 * t880 - t784 * t883;
t623 = -t749 - t750;
t622 = -pkin(3) * t782 + pkin(7) * t713 - t941;
t621 = -t701 * t881 - t705 * t878;
t620 = t702 * t881 - t704 * t878;
t619 = -t701 * t878 + t705 * t881;
t618 = -t702 * t878 - t704 * t881;
t617 = t642 * t883 - t786 * t880;
t616 = t642 * t880 + t786 * t883;
t615 = t636 * t883 + t782 * t880;
t614 = t636 * t880 - t782 * t883;
t610 = t641 * t883 + t760 * t880;
t609 = t641 * t880 - t760 * t883;
t608 = t671 * t888 - t701 * t885;
t607 = t670 * t888 - t705 * t885;
t606 = t671 * t885 + t701 * t888;
t605 = t670 * t885 + t705 * t888;
t604 = -t720 + t895;
t599 = (qJD(6) + t827) * t754 + t905;
t598 = t714 * t887 - t947;
t597 = -t715 * t884 + t977;
t596 = t714 * t884 + t946;
t595 = t715 * t887 + t979;
t594 = -t754 * t934 - t887 * t895;
t593 = t754 * t933 - t884 * t895;
t592 = -t651 * t884 + t752 * t933;
t591 = t651 * t887 + t752 * t934;
t590 = -pkin(2) * t640 - pkin(3) * t716;
t589 = t620 * t888 - t757 * t885;
t588 = t620 * t885 + t757 * t888;
t587 = t654 * t888 + t704 * t885;
t586 = t654 * t885 - t704 * t888;
t585 = -t693 * t884 - t946;
t584 = t693 * t887 - t947;
t583 = t638 * t888 - t702 * t885;
t582 = t638 * t885 + t702 * t888;
t581 = t621 * t888 - t711 * t885;
t580 = t621 * t885 + t711 * t888;
t579 = -t677 * t879 + t678 * t882;
t578 = t672 * t887 - t979;
t577 = t672 * t884 + t977;
t574 = -t661 * t879 + t663 * t882;
t573 = -t660 * t879 + t662 * t882;
t572 = -t643 * t878 + t644 * t881;
t571 = -t643 * t881 - t644 * t878;
t570 = -pkin(2) * t679 - pkin(3) * t735 + t666;
t569 = -t886 * t629 + t630 * t889;
t568 = t629 * t889 + t886 * t630;
t566 = -t886 * t624 + t625 * t889;
t565 = t624 * t889 + t886 * t625;
t564 = -pkin(3) * t751 + pkin(7) * t576;
t563 = -qJ(5) * t653 + t948;
t562 = t572 * t888 + t885 * t894;
t561 = t572 * t885 - t888 * t894;
t560 = t579 * t883 - t699 * t880;
t559 = t579 * t880 + t699 * t883;
t558 = -qJ(5) * t637 + t949;
t557 = -pkin(7) * t716 - t575;
t556 = -pkin(2) * t635 - pkin(3) * t712 + t665;
t553 = t574 * t883 - t696 * t880;
t552 = t573 * t883 - t694 * t880;
t551 = t574 * t880 + t696 * t883;
t550 = t573 * t880 + t694 * t883;
t549 = -t886 * t614 + t615 * t889;
t548 = t614 * t889 + t886 * t615;
t547 = -qJ(2) * t629 - (pkin(2) * t880 - qJ(3) * t883) * t687;
t546 = -qJ(3) * t679 - t639 * t879 + t685 * t882;
t545 = -pkin(3) * t760 + pkin(7) * t718 + t576;
t544 = -t886 * t609 + t610 * t889;
t543 = t609 * t889 + t886 * t610;
t542 = -t606 * t879 + t608 * t882;
t541 = -t605 * t879 + t607 * t882;
t540 = -t600 * t887 - t604 * t884;
t539 = -t599 * t887 - t884 * t968;
t538 = -t600 * t884 + t604 * t887;
t537 = -t599 * t884 + t887 * t968;
t536 = -t596 * t878 + t598 * t881;
t535 = -t595 * t878 + t597 * t881;
t534 = -t596 * t881 - t598 * t878;
t533 = -t595 * t881 - t597 * t878;
t532 = -t593 * t878 + t594 * t881;
t531 = -t591 * t878 + t592 * t881;
t530 = -t593 * t881 - t594 * t878;
t529 = -t591 * t881 - t592 * t878;
t528 = -t588 * t879 + t589 * t882;
t527 = -qJ(3) * t635 - t622 * t879 + t667 * t882;
t526 = -t586 * t879 + t587 * t882;
t525 = t586 * t882 + t587 * t879;
t524 = -t584 * t878 + t585 * t881;
t523 = t584 * t881 + t585 * t878;
t522 = -t582 * t879 + t583 * t882;
t521 = t582 * t882 + t583 * t879;
t520 = -t580 * t879 + t581 * t882;
t519 = t580 * t882 + t581 * t879;
t518 = qJ(2) * t630 - (-pkin(2) * t883 - qJ(3) * t880 - pkin(1)) * t687;
t515 = -pkin(4) * t653 + t555;
t514 = -pkin(4) * t637 + t554;
t510 = -t577 * t878 + t578 * t881;
t509 = t577 * t881 + t578 * t878;
t508 = t532 * t888 + t914;
t507 = t531 * t888 - t914;
t506 = t532 * t885 - t913;
t505 = t531 * t885 + t913;
t504 = t576 * t882 - t951;
t503 = t576 * t879 + t950;
t502 = -pkin(8) * t584 + t952;
t501 = t542 * t883 - t669 * t880;
t500 = t541 * t883 - t668 * t880;
t499 = t542 * t880 + t669 * t883;
t498 = t541 * t880 + t668 * t883;
t497 = -pkin(8) * t577 + t953;
t496 = t526 * t883 + t653 * t880;
t495 = t526 * t880 - t653 * t883;
t494 = t504 * t883 + t751 * t880;
t493 = t504 * t880 - t751 * t883;
t492 = t528 * t883 - t618 * t880;
t491 = t528 * t880 + t618 * t883;
t490 = t522 * t883 + t637 * t880;
t489 = t522 * t880 - t637 * t883;
t488 = t536 * t888 - t600 * t885;
t487 = t535 * t888 - t604 * t885;
t486 = t536 * t885 + t600 * t888;
t485 = t535 * t885 + t604 * t888;
t484 = t520 * t883 + t619 * t880;
t483 = t520 * t880 - t619 * t883;
t482 = -t561 * t879 + t562 * t882;
t481 = t524 * t888 + t885 * t968;
t480 = t524 * t885 - t888 * t968;
t477 = t510 * t888 + t599 * t885;
t476 = t510 * t885 - t599 * t888;
t475 = -pkin(5) * t968 + pkin(8) * t585 + t953;
t474 = -pkin(5) * t599 + pkin(8) * t578 - t952;
t473 = -pkin(2) * t503 - pkin(3) * t575;
t472 = -t538 * t878 + t540 * t881;
t471 = -t537 * t878 + t539 * t881;
t470 = t538 * t881 + t540 * t878;
t469 = -t537 * t881 - t539 * t878;
t468 = -qJ(2) * t624 + t546 * t883 - t570 * t880;
t467 = -qJ(3) * t640 - t545 * t879 + t557 * t882;
t466 = -qJ(5) * t619 - t478;
t465 = t479 * t888 + t612 * t885;
t464 = t479 * t885 - t612 * t888;
t463 = t471 * t888 - t689 * t885;
t462 = t471 * t885 + t689 * t888;
t461 = t482 * t883 - t571 * t880;
t460 = t482 * t880 + t571 * t883;
t459 = -pkin(1) * t679 + qJ(2) * t625 + t546 * t880 + t570 * t883;
t458 = -qJ(2) * t614 + t527 * t883 - t556 * t880;
t457 = t472 * t888 + t623 * t885;
t456 = t472 * t885 - t623 * t888;
t452 = -pkin(7) * t586 - t515 * t885 + t563 * t888;
t451 = -pkin(2) * t525 - pkin(3) * t586 + pkin(4) * t704 - qJ(5) * t654 - t949;
t450 = -pkin(7) * t582 - t514 * t885 + t558 * t888;
t449 = -t506 * t879 + t508 * t882;
t448 = -t505 * t879 + t507 * t882;
t447 = -pkin(2) * t521 - pkin(3) * t582 - pkin(4) * t702 - qJ(5) * t638 + t948;
t446 = -pkin(1) * t635 + qJ(2) * t615 + t527 * t880 + t556 * t883;
t445 = -pkin(7) * t950 - qJ(3) * t503 - t564 * t879;
t444 = -t886 * t495 + t496 * t889;
t443 = t495 * t889 + t886 * t496;
t442 = -pkin(3) * t653 + pkin(7) * t587 + t515 * t888 + t563 * t885;
t441 = -t886 * t493 + t494 * t889;
t440 = t493 * t889 + t886 * t494;
t439 = -pkin(3) * t637 + pkin(7) * t583 + t514 * t888 + t558 * t885;
t438 = -t886 * t489 + t490 * t889;
t437 = t489 * t889 + t886 * t490;
t436 = -pkin(4) * t470 - pkin(5) * t538;
t435 = -qJ(2) * t609 + t467 * t883 - t590 * t880;
t434 = -t486 * t879 + t488 * t882;
t433 = -t485 * t879 + t487 * t882;
t432 = -t886 * t483 + t484 * t889;
t431 = t483 * t889 + t886 * t484;
t430 = -pkin(7) * t580 + t466 * t888 + t619 * t956;
t429 = -t480 * t879 + t481 * t882;
t428 = t480 * t882 + t481 * t879;
t427 = -pkin(1) * t640 + qJ(2) * t610 + t467 * t880 + t590 * t883;
t426 = pkin(7) * t581 + t885 * t466 + t619 * t908;
t425 = -t476 * t879 + t477 * t882;
t424 = t476 * t882 + t477 * t879;
t423 = t449 * t883 - t530 * t880;
t422 = t448 * t883 - t529 * t880;
t421 = t449 * t880 + t530 * t883;
t420 = t448 * t880 + t529 * t883;
t419 = -pkin(2) * t519 - pkin(3) * t580 - pkin(4) * t711 - qJ(5) * t621 - t479;
t418 = -pkin(4) * t523 - pkin(5) * t584 + t455;
t417 = t434 * t883 - t534 * t880;
t416 = t433 * t883 - t533 * t880;
t415 = t434 * t880 + t534 * t883;
t414 = t433 * t880 + t533 * t883;
t413 = -qJ(5) * t523 - t475 * t878 + t502 * t881;
t412 = -pkin(4) * t509 - pkin(5) * t577 + t454;
t411 = t429 * t883 + t523 * t880;
t410 = t429 * t880 - t523 * t883;
t409 = -t464 * t879 + t465 * t882;
t408 = t464 * t882 + t465 * t879;
t407 = -qJ(5) * t509 - t474 * t878 + t497 * t881;
t406 = -t462 * t879 + t463 * t882;
t405 = -t456 * t879 + t457 * t882;
t404 = t456 * t882 + t457 * t879;
t401 = t425 * t883 + t509 * t880;
t400 = t425 * t880 - t509 * t883;
t399 = -pkin(5) * t567 + pkin(8) * t403;
t398 = -pkin(7) * t464 + (-qJ(5) * t888 + t956) * t478;
t397 = -pkin(8) * t538 - t402;
t396 = -qJ(2) * t493 + t445 * t883 - t473 * t880;
t395 = t409 * t883 + t478 * t880;
t394 = t409 * t880 - t478 * t883;
t393 = -pkin(5) * t623 + pkin(8) * t540 + t403;
t392 = -qJ(3) * t525 - t442 * t879 + t452 * t882;
t391 = t406 * t883 - t469 * t880;
t390 = t406 * t880 + t469 * t883;
t389 = -qJ(3) * t521 - t439 * t879 + t450 * t882;
t388 = t405 * t883 + t470 * t880;
t387 = t405 * t880 - t470 * t883;
t386 = -pkin(1) * t503 + qJ(2) * t494 + t445 * t880 + t473 * t883;
t385 = pkin(7) * t465 + (-qJ(5) * t885 + t908) * t478;
t384 = -qJ(3) * t519 - t426 * t879 + t430 * t882;
t383 = -t886 * t410 + t411 * t889;
t382 = t410 * t889 + t886 * t411;
t381 = -pkin(2) * t408 - pkin(3) * t464 + pkin(4) * t612 - qJ(5) * t479;
t380 = -pkin(2) * t428 - pkin(3) * t480 + pkin(4) * t968 - qJ(5) * t524 - t475 * t881 - t502 * t878;
t379 = t403 * t881 - t955;
t378 = t403 * t878 + t954;
t377 = -t886 * t400 + t401 * t889;
t376 = t400 * t889 + t886 * t401;
t375 = -pkin(7) * t480 + t413 * t888 - t418 * t885;
t374 = -pkin(2) * t424 - pkin(3) * t476 + pkin(4) * t599 - qJ(5) * t510 - t474 * t881 - t497 * t878;
t373 = -qJ(2) * t495 + t392 * t883 - t451 * t880;
t372 = t379 * t888 + t567 * t885;
t371 = t379 * t885 - t567 * t888;
t370 = -pkin(7) * t476 + t407 * t888 - t412 * t885;
t369 = -qJ(2) * t489 + t389 * t883 - t447 * t880;
t368 = -pkin(3) * t523 + pkin(7) * t481 + t413 * t885 + t418 * t888;
t367 = -pkin(1) * t525 + qJ(2) * t496 + t392 * t880 + t451 * t883;
t366 = -pkin(1) * t521 + qJ(2) * t490 + t389 * t880 + t447 * t883;
t365 = -pkin(3) * t509 + pkin(7) * t477 + t407 * t885 + t412 * t888;
t364 = -t886 * t394 + t395 * t889;
t363 = t394 * t889 + t886 * t395;
t362 = -qJ(2) * t483 + t384 * t883 - t419 * t880;
t361 = -t886 * t387 + t388 * t889;
t360 = t387 * t889 + t886 * t388;
t359 = -qJ(5) * t470 - t393 * t878 + t397 * t881;
t358 = -pkin(1) * t519 + qJ(2) * t484 + t384 * t880 + t419 * t883;
t357 = -pkin(4) * t378 - pkin(5) * t402;
t356 = -qJ(3) * t408 - t385 * t879 + t398 * t882;
t355 = -pkin(7) * t456 + t359 * t888 - t436 * t885;
t354 = -pkin(8) * t954 - qJ(5) * t378 - t399 * t878;
t353 = -t371 * t879 + t372 * t882;
t352 = t371 * t882 + t372 * t879;
t351 = -pkin(3) * t470 + pkin(7) * t457 + t359 * t885 + t436 * t888;
t350 = -pkin(2) * t404 - pkin(3) * t456 + pkin(4) * t623 - qJ(5) * t472 - t393 * t881 - t397 * t878;
t349 = -qJ(3) * t428 - t368 * t879 + t375 * t882;
t348 = -qJ(3) * t424 - t365 * t879 + t370 * t882;
t347 = t353 * t883 + t378 * t880;
t346 = t353 * t880 - t378 * t883;
t345 = -qJ(2) * t394 + t356 * t883 - t381 * t880;
t344 = -pkin(1) * t408 + qJ(2) * t395 + t356 * t880 + t381 * t883;
t343 = -qJ(2) * t410 + t349 * t883 - t380 * t880;
t342 = -pkin(1) * t428 + qJ(2) * t411 + t349 * t880 + t380 * t883;
t341 = -qJ(2) * t400 + t348 * t883 - t374 * t880;
t340 = -pkin(1) * t424 + qJ(2) * t401 + t348 * t880 + t374 * t883;
t339 = -pkin(7) * t371 + t354 * t888 - t357 * t885;
t338 = -qJ(3) * t404 - t351 * t879 + t355 * t882;
t337 = -pkin(2) * t352 - pkin(3) * t371 + pkin(4) * t567 + pkin(8) * t955 - qJ(5) * t379 - t399 * t881;
t336 = -pkin(3) * t378 + pkin(7) * t372 + t354 * t885 + t357 * t888;
t335 = -t886 * t346 + t347 * t889;
t334 = t346 * t889 + t886 * t347;
t333 = -qJ(2) * t387 + t338 * t883 - t350 * t880;
t332 = -pkin(1) * t404 + qJ(2) * t388 + t338 * t880 + t350 * t883;
t331 = -qJ(3) * t352 - t336 * t879 + t339 * t882;
t330 = -qJ(2) * t346 + t331 * t883 - t337 * t880;
t329 = -pkin(1) * t352 + qJ(2) * t347 + t331 * t880 + t337 * t883;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t851, -t852, 0, t814, 0, 0, 0, 0, 0, 0, -t966, -t795, 0, t659, 0, 0, 0, 0, 0, 0, -t973, t741, t732, t569, 0, 0, 0, 0, 0, 0, t549, t566, t544, t441, 0, 0, 0, 0, 0, 0, t438, t444, t432, t364, 0, 0, 0, 0, 0, 0, t377, t383, t361, t335; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t852, -t851, 0, t812, 0, 0, 0, 0, 0, 0, t795, -t966, 0, -t983, 0, 0, 0, 0, 0, 0, t740, t739, t731, t568, 0, 0, 0, 0, 0, 0, t548, t565, t543, t440, 0, 0, 0, 0, 0, 0, t437, t443, t431, t363, 0, 0, 0, 0, 0, 0, t376, t382, t360, t334; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t875, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t687, 0, 0, 0, 0, 0, 0, t635, t679, t640, t503, 0, 0, 0, 0, 0, 0, t521, t525, t519, t408, 0, 0, 0, 0, 0, 0, t424, t428, t404, t352; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t852, 0, -t851, 0, t902, -t828, -t812, -pkin(6) * t812, 0, 0, t795, 0, -t966, 0, t982, t974, t983, pkin(6) * t983 + qJ(2) * t943 - t886 * t710, -t899, -t886 * t792 + t794 * t889, t741, t899, t973, 0, -pkin(6) * t740 - t886 * t673 + t675 * t889, -pkin(6) * t739 - t886 * t674 + t676 * t889, -pkin(6) * t731 - t886 * t645 + t646 * t889, -pkin(6) * t568 - t886 * t518 + t547 * t889, -t886 * t632 + t634 * t889, -t886 * t616 + t617 * t889, -t886 * t648 + t650 * t889, -t886 * t631 + t633 * t889, -t886 * t647 + t649 * t889, -t886 * t691 + t692 * t889, -pkin(6) * t548 - t886 * t446 + t458 * t889, -pkin(6) * t565 - t886 * t459 + t468 * t889, -pkin(6) * t543 - t886 * t427 + t435 * t889, -pkin(6) * t440 - t886 * t386 + t396 * t889, -t886 * t551 + t553 * t889, -t886 * t491 + t492 * t889, -t886 * t498 + t500 * t889, -t886 * t550 + t552 * t889, -t886 * t499 + t501 * t889, -t886 * t559 + t560 * t889, -pkin(6) * t437 - t886 * t366 + t369 * t889, -pkin(6) * t443 - t886 * t367 + t373 * t889, -pkin(6) * t431 - t886 * t358 + t362 * t889, -pkin(6) * t363 - t886 * t344 + t345 * t889, -t886 * t421 + t423 * t889, -t886 * t390 + t391 * t889, -t886 * t414 + t416 * t889, -t886 * t420 + t422 * t889, -t886 * t415 + t417 * t889, -t886 * t460 + t461 * t889, -pkin(6) * t376 - t886 * t340 + t341 * t889, -pkin(6) * t382 - t886 * t342 + t343 * t889, -pkin(6) * t360 - t886 * t332 + t333 * t889, -pkin(6) * t334 - t886 * t329 + t330 * t889; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t851, 0, t852, 0, t828, t902, t814, pkin(6) * t814, 0, 0, t966, 0, t795, 0, -t974, t982, t659, pkin(6) * t659 + qJ(2) * t926 + t710 * t889, t900, t792 * t889 + t886 * t794, t739, -t900, -t740, 0, -pkin(6) * t973 + t673 * t889 + t886 * t675, pkin(6) * t741 + t674 * t889 + t886 * t676, pkin(6) * t732 + t645 * t889 + t886 * t646, pkin(6) * t569 + t518 * t889 + t886 * t547, t632 * t889 + t886 * t634, t616 * t889 + t886 * t617, t648 * t889 + t886 * t650, t631 * t889 + t886 * t633, t647 * t889 + t886 * t649, t691 * t889 + t886 * t692, pkin(6) * t549 + t446 * t889 + t886 * t458, pkin(6) * t566 + t459 * t889 + t886 * t468, pkin(6) * t544 + t427 * t889 + t886 * t435, pkin(6) * t441 + t386 * t889 + t886 * t396, t551 * t889 + t886 * t553, t491 * t889 + t886 * t492, t498 * t889 + t886 * t500, t550 * t889 + t886 * t552, t499 * t889 + t886 * t501, t559 * t889 + t886 * t560, pkin(6) * t438 + t366 * t889 + t886 * t369, pkin(6) * t444 + t367 * t889 + t886 * t373, pkin(6) * t432 + t358 * t889 + t886 * t362, pkin(6) * t364 + t344 * t889 + t886 * t345, t421 * t889 + t886 * t423, t390 * t889 + t886 * t391, t414 * t889 + t886 * t416, t420 * t889 + t886 * t422, t415 * t889 + t886 * t417, t460 * t889 + t886 * t461, pkin(6) * t377 + t340 * t889 + t886 * t341, pkin(6) * t383 + t342 * t889 + t886 * t343, pkin(6) * t361 + t332 * t889 + t886 * t333, pkin(6) * t335 + t329 * t889 + t886 * t330; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t853, t854, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t847 - t789, -pkin(1) * t846 - t790, 0, -pkin(1) * t726, t863, 0.2e1 * t907, 0, t865, 0, 0, pkin(1) * t805 - qJ(3) * t841 + t882 * t906, pkin(1) * t803 + qJ(3) * t840 - t879 * t906, pkin(1) * t791 + pkin(2) * t849 + qJ(3) * t844 + t688, pkin(1) * t629 - pkin(2) * t772 + qJ(3) * t688, t747 * t882 + t748 * t879, t717 * t882 + t719 * t879, t734 * t882 + t737 * t879, t745 * t882 + t746 * t879, t733 * t882 + t736 * t879, t769 * t882 + t770 * t879, pkin(1) * t614 - pkin(2) * t782 + qJ(3) * t636 + t622 * t882 + t667 * t879, pkin(1) * t624 - pkin(2) * t784 + qJ(3) * t682 + t639 * t882 + t685 * t879, pkin(1) * t609 - pkin(2) * t760 + qJ(3) * t641 + t545 * t882 + t557 * t879, pkin(1) * t493 - pkin(2) * t751 - pkin(7) * t951 + qJ(3) * t504 + t564 * t882, t661 * t882 + t663 * t879, t588 * t882 + t589 * t879, t605 * t882 + t607 * t879, t660 * t882 + t662 * t879, t606 * t882 + t608 * t879, t677 * t882 + t678 * t879, pkin(1) * t489 - pkin(2) * t637 + qJ(3) * t522 + t439 * t882 + t450 * t879, pkin(1) * t495 - pkin(2) * t653 + qJ(3) * t526 + t442 * t882 + t452 * t879, pkin(1) * t483 - pkin(2) * t619 + qJ(3) * t520 + t426 * t882 + t430 * t879, pkin(1) * t394 - pkin(2) * t478 + qJ(3) * t409 + t385 * t882 + t398 * t879, t506 * t882 + t508 * t879, t462 * t882 + t463 * t879, t485 * t882 + t487 * t879, t505 * t882 + t507 * t879, t486 * t882 + t488 * t879, t561 * t882 + t562 * t879, pkin(1) * t400 - pkin(2) * t509 + qJ(3) * t425 + t365 * t882 + t370 * t879, pkin(1) * t410 - pkin(2) * t523 + qJ(3) * t429 + t368 * t882 + t375 * t879, pkin(1) * t387 - pkin(2) * t470 + qJ(3) * t405 + t351 * t882 + t355 * t879, pkin(1) * t346 - pkin(2) * t378 + qJ(3) * t353 + t336 * t882 + t339 * t879;];
tauB_reg  = t1;
