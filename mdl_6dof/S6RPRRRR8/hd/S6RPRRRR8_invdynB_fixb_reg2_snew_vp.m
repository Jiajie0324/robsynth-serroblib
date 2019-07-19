% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRRRR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 04:17
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRRRR8_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR8_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR8_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRR8_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRR8_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRR8_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 04:16:20
% EndTime: 2019-05-06 04:16:45
% DurationCPUTime: 22.32s
% Computational Cost: add. (124884->733), mult. (245879->1090), div. (0->0), fcn. (173812->10), ass. (0->487)
t832 = sin(qJ(4));
t874 = qJDD(3) + qJDD(4);
t833 = sin(qJ(3));
t837 = cos(qJ(4));
t838 = cos(qJ(3));
t792 = (t832 * t838 + t833 * t837) * qJD(1);
t884 = qJD(1) * t838;
t794 = -t832 * t833 * qJD(1) + t837 * t884;
t900 = t794 * t792;
t934 = t874 - t900;
t936 = t832 * t934;
t935 = t837 * t934;
t880 = qJD(1) * qJD(3);
t863 = t838 * t880;
t878 = qJDD(1) * t833;
t800 = -t863 - t878;
t864 = t833 * t880;
t876 = qJDD(1) * t838;
t801 = -t864 + t876;
t853 = t832 * t800 + t837 * t801;
t730 = -qJD(4) * t792 + t853;
t826 = qJD(3) + qJD(4);
t893 = t826 * t792;
t703 = t730 - t893;
t830 = sin(qJ(6));
t831 = sin(qJ(5));
t836 = cos(qJ(5));
t760 = t794 * t831 - t836 * t826;
t762 = t794 * t836 + t826 * t831;
t835 = cos(qJ(6));
t719 = t835 * t760 + t762 * t830;
t721 = -t760 * t830 + t762 * t835;
t668 = t721 * t719;
t860 = -t837 * t800 + t832 * t801;
t729 = -qJD(4) * t794 - t860;
t728 = qJDD(5) - t729;
t846 = qJDD(6) + t728;
t929 = -t668 + t846;
t933 = t830 * t929;
t725 = t762 * t760;
t927 = -t725 + t728;
t932 = t831 * t927;
t931 = t835 * t929;
t930 = t836 * t927;
t785 = qJD(5) + t792;
t782 = qJD(6) + t785;
t691 = t782 * t719;
t861 = t831 * t730 - t836 * t874;
t682 = -qJD(5) * t762 - t861;
t683 = -t760 * qJD(5) + t836 * t730 + t831 * t874;
t847 = qJD(6) * t719 - t682 * t830 - t683 * t835;
t928 = -t691 - t847;
t737 = t785 * t760;
t661 = -t737 - t683;
t660 = -t737 + t683;
t862 = -t835 * t682 + t830 * t683;
t571 = (qJD(6) - t782) * t721 + t862;
t657 = (qJD(5) - t785) * t762 + t861;
t828 = t833 ^ 2;
t841 = qJD(1) ^ 2;
t850 = qJD(3) * pkin(3) - pkin(8) * t884;
t834 = sin(qJ(1));
t839 = cos(qJ(1));
t811 = t839 * g(1) + t834 * g(2);
t827 = qJDD(1) * qJ(2);
t851 = t811 - t827;
t923 = pkin(7) + pkin(1);
t926 = -t800 * pkin(3) - (pkin(8) * t828 + t923) * t841 + t850 * t884 - t851;
t717 = t719 ^ 2;
t718 = t721 ^ 2;
t925 = t760 ^ 2;
t759 = t762 ^ 2;
t781 = t782 ^ 2;
t783 = t785 ^ 2;
t790 = t792 ^ 2;
t791 = t794 ^ 2;
t924 = t826 ^ 2;
t922 = pkin(4) * t832;
t921 = qJDD(1) * pkin(1);
t879 = qJD(2) * qJD(1);
t824 = 0.2e1 * t879;
t617 = t824 - t703 * pkin(9) + (t794 * t826 - t729) * pkin(4) + t926;
t810 = t834 * g(1) - t839 * g(2);
t854 = qJDD(2) - t810;
t849 = -t841 * qJ(2) + t854;
t844 = -qJDD(1) * t923 + t849;
t754 = -t838 * g(3) + t833 * t844;
t890 = t828 * t841;
t722 = -pkin(3) * t890 + t800 * pkin(8) - qJD(3) * t850 + t754;
t843 = t838 * t844;
t886 = t838 * t841;
t842 = t843 - t801 * pkin(8) + qJDD(3) * pkin(3) + (-pkin(3) * t886 - pkin(8) * t880 + g(3)) * t833;
t666 = t837 * t722 + t832 * t842;
t748 = pkin(4) * t792 - pkin(9) * t794;
t620 = -pkin(4) * t924 + pkin(9) * t874 - t792 * t748 + t666;
t553 = -t836 * t617 + t831 * t620;
t525 = pkin(5) * t927 + pkin(10) * t661 - t553;
t554 = t831 * t617 + t836 * t620;
t732 = pkin(5) * t785 - pkin(10) * t762;
t534 = -pkin(5) * t925 + pkin(10) * t682 - t732 * t785 + t554;
t475 = -t835 * t525 + t534 * t830;
t476 = t830 * t525 + t835 * t534;
t436 = -t475 * t835 + t476 * t830;
t920 = t436 * t831;
t919 = t436 * t836;
t665 = t722 * t832 - t837 * t842;
t619 = -t874 * pkin(4) - t924 * pkin(9) + t748 * t794 + t665;
t555 = -t682 * pkin(5) - pkin(10) * t925 + t732 * t762 + t619;
t918 = t555 * t830;
t917 = t555 * t835;
t597 = -t665 * t837 + t666 * t832;
t916 = t597 * t833;
t915 = t597 * t838;
t914 = t619 * t831;
t913 = t619 * t836;
t627 = t668 + t846;
t912 = t627 * t830;
t911 = t627 * t835;
t670 = t725 + t728;
t910 = t670 * t831;
t909 = t670 * t836;
t873 = -0.2e1 * t879;
t723 = t873 - t926;
t908 = t723 * t832;
t907 = t723 * t837;
t746 = t900 + t874;
t906 = t746 * t832;
t905 = t746 * t837;
t904 = t782 * t830;
t903 = t782 * t835;
t902 = t785 * t831;
t901 = t785 * t836;
t829 = t838 ^ 2;
t885 = t828 + t829;
t803 = t885 * qJDD(1);
t899 = t803 * t834;
t898 = t803 * t839;
t866 = t833 * t886;
t808 = qJDD(3) + t866;
t897 = t808 * t833;
t896 = t808 * t838;
t809 = qJDD(3) - t866;
t895 = t809 * t833;
t894 = t809 * t838;
t892 = t826 * t832;
t891 = t826 * t837;
t889 = t829 * t841;
t774 = t841 * t923 + t851 + t873;
t888 = t833 * t774;
t887 = t838 * t774;
t883 = qJD(4) + t826;
t877 = qJDD(1) * t834;
t875 = qJDD(1) * t839;
t872 = t832 * t668;
t871 = t837 * t668;
t870 = t832 * t725;
t869 = t837 * t725;
t868 = t834 * t900;
t867 = t839 * t900;
t865 = -pkin(4) * t837 - pkin(3);
t437 = t475 * t830 + t835 * t476;
t502 = t553 * t831 + t836 * t554;
t598 = t665 * t832 + t837 * t666;
t780 = -t841 * pkin(1) + t824 - t851;
t784 = -t849 + t921;
t741 = t839 * t780 - t784 * t834;
t764 = -t810 * t834 - t839 * t811;
t858 = t834 * t866;
t857 = t839 * t866;
t804 = -t834 * t841 + t875;
t856 = pkin(6) * t804 + g(3) * t834;
t805 = t839 * t841 + t877;
t855 = -pkin(6) * t805 + g(3) * t839;
t501 = -t553 * t836 + t554 * t831;
t753 = t833 * g(3) + t843;
t707 = t838 * t753 + t833 * t754;
t708 = -t753 * t833 + t754 * t838;
t738 = t780 * t834 + t784 * t839;
t763 = t810 * t839 - t811 * t834;
t848 = (-qJD(4) + t826) * t794 - t860;
t840 = qJD(3) ^ 2;
t815 = -t840 - t889;
t814 = t840 - t889;
t813 = -t840 - t890;
t812 = -t840 + t890;
t807 = (-t828 + t829) * t841;
t806 = t885 * t841;
t802 = -0.2e1 * t864 + t876;
t799 = 0.2e1 * t863 + t878;
t797 = t885 * t880;
t778 = -t791 + t924;
t777 = t790 - t924;
t776 = -t801 * t833 - t829 * t880;
t775 = -t800 * t838 - t828 * t880;
t771 = -t791 - t924;
t770 = -t815 * t833 - t896;
t769 = t813 * t838 - t895;
t768 = t815 * t838 - t897;
t767 = -t814 * t838 - t895;
t766 = t813 * t833 + t894;
t765 = -t812 * t833 - t896;
t757 = -t806 * t839 - t899;
t756 = -t806 * t834 + t898;
t751 = t799 * t833 - t802 * t838;
t749 = t791 - t790;
t744 = -t924 - t790;
t743 = t768 * t834 + t802 * t839;
t742 = t766 * t834 + t799 * t839;
t740 = -t768 * t839 + t802 * t834;
t739 = -t766 * t839 + t799 * t834;
t736 = -t759 + t783;
t735 = -t783 + t925;
t734 = (-t792 * t837 + t794 * t832) * t826;
t733 = (-t792 * t832 - t794 * t837) * t826;
t731 = -t790 - t791;
t724 = -t759 + t925;
t716 = -t759 - t783;
t712 = t777 * t837 - t906;
t711 = -t778 * t832 + t935;
t710 = t777 * t832 + t905;
t709 = t778 * t837 + t936;
t706 = -t771 * t832 - t905;
t705 = t771 * t837 - t906;
t704 = t730 + t893;
t702 = -t792 * t883 + t853;
t699 = t794 * t883 + t860;
t698 = -t783 - t925;
t697 = t730 * t837 - t794 * t892;
t696 = t730 * t832 + t794 * t891;
t695 = -t729 * t832 + t792 * t891;
t694 = t729 * t837 + t792 * t892;
t693 = -pkin(2) * t806 - t708;
t690 = t744 * t837 - t936;
t689 = t744 * t832 + t935;
t688 = -t718 + t781;
t687 = t717 - t781;
t686 = t759 + t925;
t685 = pkin(2) * t768 - qJ(2) * t770 - t754;
t684 = pkin(2) * t766 - qJ(2) * t769 + t753;
t679 = pkin(2) * t799 - t769 * t923 - t887;
t678 = pkin(2) * t802 - t770 * t923 + t888;
t677 = (-t760 * t836 + t762 * t831) * t785;
t676 = (-t760 * t831 - t762 * t836) * t785;
t675 = t707 * t834 - t774 * t839;
t674 = -t707 * t839 - t774 * t834;
t673 = -t733 * t838 - t734 * t833;
t672 = -t718 - t781;
t667 = -t718 + t717;
t664 = -pkin(8) * t705 - t907;
t658 = (-qJD(5) - t785) * t762 - t861;
t656 = pkin(2) * t707 - qJ(2) * t708;
t655 = -t710 * t838 - t712 * t833;
t654 = -t709 * t838 - t711 * t833;
t653 = t683 * t836 - t762 * t902;
t652 = t683 * t831 + t762 * t901;
t651 = -t682 * t831 + t760 * t901;
t650 = t682 * t836 + t760 * t902;
t649 = -pkin(8) * t689 - t908;
t648 = -t781 - t717;
t647 = -t705 * t833 + t706 * t838;
t646 = t705 * t838 + t706 * t833;
t645 = t704 * t832 + t837 * t848;
t644 = -t699 * t837 - t703 * t832;
t643 = -t704 * t837 + t832 * t848;
t642 = -t699 * t832 + t703 * t837;
t641 = t677 * t837 + t728 * t832;
t640 = t677 * t832 - t728 * t837;
t639 = t735 * t836 - t910;
t638 = -t736 * t831 + t930;
t637 = t735 * t831 + t909;
t636 = t736 * t836 + t932;
t635 = -pkin(2) * t774 - t708 * t923;
t634 = -t696 * t838 - t697 * t833;
t633 = -t694 * t838 - t695 * t833;
t632 = (-t719 * t835 + t721 * t830) * t782;
t631 = (-t719 * t830 - t721 * t835) * t782;
t630 = -t689 * t833 + t690 * t838;
t629 = t689 * t838 + t690 * t833;
t625 = -t716 * t831 - t909;
t624 = t716 * t836 - t910;
t623 = -t717 - t718;
t622 = t698 * t836 - t932;
t621 = t698 * t831 + t930;
t616 = -pkin(3) * t702 + pkin(8) * t706 - t908;
t615 = t653 * t837 + t870;
t614 = t651 * t837 - t870;
t613 = t653 * t832 - t869;
t612 = t651 * t832 + t869;
t609 = -pkin(3) * t699 + pkin(8) * t690 + t907;
t608 = t646 * t834 + t702 * t839;
t607 = -t646 * t839 + t702 * t834;
t606 = t629 * t834 + t699 * t839;
t605 = -t629 * t839 + t699 * t834;
t603 = -qJD(6) * t721 - t862;
t602 = t687 * t835 - t912;
t601 = -t688 * t830 + t931;
t600 = t687 * t830 + t911;
t599 = t688 * t835 + t933;
t596 = -t657 * t836 - t661 * t831;
t595 = t658 * t836 - t660 * t831;
t594 = -t657 * t831 + t661 * t836;
t593 = t658 * t831 + t660 * t836;
t592 = -t672 * t830 - t911;
t591 = t672 * t835 - t912;
t590 = -t643 * t833 + t645 * t838;
t589 = t643 * t838 + t645 * t833;
t588 = -t642 * t838 - t644 * t833;
t587 = t639 * t837 - t657 * t832;
t586 = t638 * t837 - t661 * t832;
t585 = t639 * t832 + t657 * t837;
t584 = t638 * t832 + t661 * t837;
t583 = -t640 * t838 - t641 * t833;
t582 = t625 * t837 + t660 * t832;
t581 = t625 * t832 - t660 * t837;
t580 = pkin(3) * t723 + pkin(8) * t598;
t579 = t648 * t835 - t933;
t578 = t648 * t830 + t931;
t577 = t622 * t837 - t658 * t832;
t576 = t622 * t832 + t658 * t837;
t575 = -t691 + t847;
t570 = (qJD(6) + t782) * t721 + t862;
t569 = -t721 * t904 - t835 * t847;
t568 = t721 * t903 - t830 * t847;
t567 = -t603 * t830 + t719 * t903;
t566 = t603 * t835 + t719 * t904;
t565 = t595 * t837 - t724 * t832;
t564 = t595 * t832 + t724 * t837;
t563 = -t631 * t831 + t632 * t836;
t562 = t631 * t836 + t632 * t831;
t561 = t589 * t834 + t731 * t839;
t560 = -t589 * t839 + t731 * t834;
t559 = t596 * t837 - t686 * t832;
t558 = t596 * t832 + t686 * t837;
t557 = -pkin(9) * t624 + t913;
t556 = -pkin(9) * t621 + t914;
t552 = t563 * t837 + t832 * t846;
t551 = t563 * t832 - t837 * t846;
t549 = -t613 * t838 - t615 * t833;
t548 = -t612 * t838 - t614 * t833;
t547 = -pkin(8) * t643 - t597;
t546 = -pkin(3) * t731 + pkin(8) * t645 + t598;
t545 = pkin(2) * t646 + pkin(3) * t705 - qJ(2) * t647 - t666;
t544 = -t600 * t831 + t602 * t836;
t543 = -t599 * t831 + t601 * t836;
t542 = t600 * t836 + t602 * t831;
t541 = t599 * t836 + t601 * t831;
t540 = t598 * t838 - t916;
t539 = t598 * t833 + t915;
t538 = pkin(2) * t629 + pkin(3) * t689 - qJ(2) * t630 - t665;
t537 = -t591 * t831 + t592 * t836;
t536 = t591 * t836 + t592 * t831;
t535 = -pkin(4) * t624 + t554;
t533 = -pkin(4) * t621 + t553;
t531 = t539 * t834 - t723 * t839;
t530 = -t539 * t839 - t723 * t834;
t529 = -t585 * t838 - t587 * t833;
t528 = -t584 * t838 - t586 * t833;
t527 = -t581 * t833 + t582 * t838;
t526 = t581 * t838 + t582 * t833;
t522 = -t578 * t831 + t579 * t836;
t521 = t578 * t836 + t579 * t831;
t520 = -t576 * t833 + t577 * t838;
t519 = t576 * t838 + t577 * t833;
t518 = -t571 * t835 - t575 * t830;
t517 = -t570 * t835 - t830 * t928;
t516 = -t571 * t830 + t575 * t835;
t515 = -t570 * t830 + t835 * t928;
t514 = -pkin(10) * t591 + t917;
t513 = -t568 * t831 + t569 * t836;
t512 = -t566 * t831 + t567 * t836;
t511 = t568 * t836 + t569 * t831;
t510 = t566 * t836 + t567 * t831;
t509 = -t564 * t838 - t565 * t833;
t508 = pkin(2) * t702 - t838 * t616 - t647 * t923 - t833 * t664;
t507 = -pkin(10) * t578 + t918;
t506 = -t558 * t833 + t559 * t838;
t505 = t558 * t838 + t559 * t833;
t504 = pkin(2) * t589 + pkin(3) * t643 - qJ(2) * t590;
t503 = pkin(2) * t699 - t838 * t609 - t630 * t923 - t833 * t649;
t500 = -t551 * t838 - t552 * t833;
t499 = t513 * t837 + t872;
t498 = t512 * t837 - t872;
t497 = t513 * t832 - t871;
t496 = t512 * t832 + t871;
t495 = t526 * t834 + t624 * t839;
t494 = -t526 * t839 + t624 * t834;
t493 = t519 * t834 + t621 * t839;
t492 = -t519 * t839 + t621 * t834;
t491 = t544 * t837 - t571 * t832;
t490 = t543 * t837 - t575 * t832;
t489 = t544 * t832 + t571 * t837;
t488 = t543 * t832 + t575 * t837;
t487 = t537 * t837 + t832 * t928;
t486 = t537 * t832 - t837 * t928;
t485 = t522 * t837 + t570 * t832;
t484 = t522 * t832 - t570 * t837;
t483 = t502 * t837 + t619 * t832;
t482 = t502 * t832 - t619 * t837;
t481 = -pkin(5) * t928 + pkin(10) * t592 + t918;
t480 = t505 * t834 + t594 * t839;
t479 = -t505 * t839 + t594 * t834;
t478 = -pkin(5) * t570 + pkin(10) * t579 - t917;
t477 = -pkin(9) * t594 - t501;
t473 = -pkin(8) * t581 - t535 * t832 + t557 * t837;
t472 = -pkin(8) * t576 - t533 * t832 + t556 * t837;
t471 = -t516 * t831 + t518 * t836;
t470 = -t515 * t831 + t517 * t836;
t469 = t516 * t836 + t518 * t831;
t468 = t515 * t836 + t517 * t831;
t467 = pkin(2) * t539 + pkin(3) * t597 - qJ(2) * t540;
t466 = -pkin(3) * t624 + pkin(8) * t582 + t535 * t837 + t557 * t832;
t465 = t470 * t837 - t667 * t832;
t464 = t470 * t832 + t667 * t837;
t463 = -pkin(3) * t621 + pkin(8) * t577 + t533 * t837 + t556 * t832;
t462 = t471 * t837 + t623 * t832;
t461 = t471 * t832 - t623 * t837;
t460 = pkin(2) * t731 - t838 * t546 - t833 * t547 - t590 * t923;
t459 = -t497 * t838 - t499 * t833;
t458 = -t496 * t838 - t498 * t833;
t457 = -pkin(8) * t558 + t477 * t837 + t594 * t922;
t456 = -pkin(2) * t723 + pkin(8) * t916 - t540 * t923 - t838 * t580;
t455 = -t489 * t838 - t491 * t833;
t454 = -t488 * t838 - t490 * t833;
t453 = -t486 * t833 + t487 * t838;
t452 = t486 * t838 + t487 * t833;
t451 = -t484 * t833 + t485 * t838;
t450 = t484 * t838 + t485 * t833;
t449 = pkin(8) * t559 + t832 * t477 + t594 * t865;
t448 = -t482 * t833 + t483 * t838;
t447 = t482 * t838 + t483 * t833;
t446 = -pkin(4) * t469 - pkin(5) * t516;
t445 = -pkin(4) * t536 - pkin(5) * t591 + t476;
t444 = pkin(2) * t526 + pkin(3) * t581 - pkin(4) * t660 + pkin(9) * t625 - qJ(2) * t527 + t914;
t443 = pkin(2) * t519 + pkin(3) * t576 + pkin(4) * t658 + pkin(9) * t622 - qJ(2) * t520 - t913;
t442 = -pkin(4) * t521 - pkin(5) * t578 + t475;
t441 = -pkin(9) * t536 - t481 * t831 + t514 * t836;
t440 = t452 * t834 + t536 * t839;
t439 = -t452 * t839 + t536 * t834;
t438 = -pkin(9) * t521 - t478 * t831 + t507 * t836;
t435 = -pkin(8) * t482 + (-pkin(9) * t837 + t922) * t501;
t434 = t450 * t834 + t521 * t839;
t433 = -t450 * t839 + t521 * t834;
t432 = t447 * t834 + t501 * t839;
t431 = -t447 * t839 + t501 * t834;
t430 = -pkin(5) * t555 + pkin(10) * t437;
t429 = -t464 * t838 - t465 * t833;
t428 = pkin(2) * t505 + pkin(3) * t558 + pkin(4) * t686 + pkin(9) * t596 - qJ(2) * t506 + t502;
t427 = -t461 * t833 + t462 * t838;
t426 = t461 * t838 + t462 * t833;
t425 = -pkin(10) * t516 - t436;
t424 = -pkin(5) * t623 + pkin(10) * t518 + t437;
t423 = pkin(8) * t483 + (-pkin(9) * t832 + t865) * t501;
t422 = pkin(2) * t624 - t838 * t466 - t833 * t473 - t527 * t923;
t421 = pkin(2) * t621 - t838 * t463 - t833 * t472 - t520 * t923;
t420 = t426 * t834 + t469 * t839;
t419 = -t426 * t839 + t469 * t834;
t418 = t437 * t836 - t920;
t417 = t437 * t831 + t919;
t416 = -pkin(8) * t486 + t441 * t837 - t445 * t832;
t415 = t418 * t837 + t555 * t832;
t414 = t418 * t832 - t555 * t837;
t413 = pkin(2) * t594 - t838 * t449 - t833 * t457 - t506 * t923;
t412 = -pkin(8) * t484 + t438 * t837 - t442 * t832;
t411 = -pkin(3) * t536 + pkin(8) * t487 + t441 * t832 + t445 * t837;
t410 = pkin(2) * t447 + pkin(3) * t482 - pkin(4) * t619 + pkin(9) * t502 - qJ(2) * t448;
t409 = -pkin(3) * t521 + pkin(8) * t485 + t438 * t832 + t442 * t837;
t408 = pkin(2) * t452 + pkin(3) * t486 - pkin(4) * t928 + pkin(9) * t537 - qJ(2) * t453 + t481 * t836 + t514 * t831;
t407 = -pkin(4) * t417 - pkin(5) * t436;
t406 = pkin(2) * t450 + pkin(3) * t484 - pkin(4) * t570 + pkin(9) * t522 - qJ(2) * t451 + t478 * t836 + t507 * t831;
t405 = -pkin(9) * t469 - t424 * t831 + t425 * t836;
t404 = -pkin(9) * t417 - pkin(10) * t919 - t430 * t831;
t403 = -t414 * t833 + t415 * t838;
t402 = t414 * t838 + t415 * t833;
t401 = pkin(2) * t501 - t838 * t423 - t833 * t435 - t448 * t923;
t400 = -pkin(8) * t461 + t405 * t837 - t446 * t832;
t399 = -pkin(3) * t469 + pkin(8) * t462 + t405 * t832 + t446 * t837;
t398 = pkin(2) * t536 - t838 * t411 - t833 * t416 - t453 * t923;
t397 = t402 * t834 + t417 * t839;
t396 = -t402 * t839 + t417 * t834;
t395 = pkin(2) * t426 + pkin(3) * t461 - pkin(4) * t623 + pkin(9) * t471 - qJ(2) * t427 + t424 * t836 + t425 * t831;
t394 = pkin(2) * t521 - t838 * t409 - t833 * t412 - t451 * t923;
t393 = -pkin(8) * t414 + t404 * t837 - t407 * t832;
t392 = -pkin(3) * t417 + pkin(8) * t415 + t404 * t832 + t407 * t837;
t391 = pkin(2) * t469 - t838 * t399 - t833 * t400 - t427 * t923;
t390 = pkin(2) * t402 + pkin(3) * t414 - pkin(4) * t555 + pkin(9) * t418 - pkin(10) * t920 - qJ(2) * t403 + t430 * t836;
t389 = pkin(2) * t417 - t838 * t392 - t833 * t393 - t403 * t923;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t805, -t804, 0, t764, 0, 0, 0, 0, 0, 0, 0, t805, t804, t741, 0, 0, 0, 0, 0, 0, t742, t743, t757, t675, 0, 0, 0, 0, 0, 0, t606, t608, t561, t531, 0, 0, 0, 0, 0, 0, t493, t495, t480, t432, 0, 0, 0, 0, 0, 0, t434, t440, t420, t397; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t804, -t805, 0, t763, 0, 0, 0, 0, 0, 0, 0, -t804, t805, t738, 0, 0, 0, 0, 0, 0, t739, t740, t756, t674, 0, 0, 0, 0, 0, 0, t605, t607, t560, t530, 0, 0, 0, 0, 0, 0, t492, t494, t479, t431, 0, 0, 0, 0, 0, 0, t433, t439, t419, t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t769, t770, 0, t708, 0, 0, 0, 0, 0, 0, t630, t647, t590, t540, 0, 0, 0, 0, 0, 0, t520, t527, t506, t448, 0, 0, 0, 0, 0, 0, t451, t453, t427, t403; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t804, 0, -t805, 0, -t856, -t855, -t763, -pkin(6) * t763, 0, -t804, t805, 0, 0, 0, -t738, t856, t855, -pkin(6) * t738 + (-pkin(1) * t834 + qJ(2) * t839) * g(3), -t776 * t834 + t857, -t751 * t834 + t807 * t839, -t767 * t834 + t838 * t875, -t775 * t834 - t857, -t765 * t834 - t833 * t875, qJDD(3) * t839 - t797 * t834, -pkin(6) * t739 - t679 * t834 + t684 * t839, -pkin(6) * t740 - t678 * t834 + t685 * t839, -pkin(2) * t898 - pkin(6) * t756 - t693 * t834, -pkin(6) * t674 - t635 * t834 + t656 * t839, -t634 * t834 + t867, -t588 * t834 + t749 * t839, -t654 * t834 + t704 * t839, -t633 * t834 - t867, -t655 * t834 + t839 * t848, -t834 * t673 + t839 * t874, -pkin(6) * t605 - t503 * t834 + t538 * t839, -pkin(6) * t607 - t508 * t834 + t545 * t839, -pkin(6) * t560 - t460 * t834 + t504 * t839, -pkin(6) * t530 - t456 * t834 + t467 * t839, -t549 * t834 + t652 * t839, -t509 * t834 + t593 * t839, -t528 * t834 + t636 * t839, -t548 * t834 + t650 * t839, -t529 * t834 + t637 * t839, -t583 * t834 + t676 * t839, -pkin(6) * t492 - t421 * t834 + t443 * t839, -pkin(6) * t494 - t422 * t834 + t444 * t839, -pkin(6) * t479 - t413 * t834 + t428 * t839, -pkin(6) * t431 - t401 * t834 + t410 * t839, -t459 * t834 + t511 * t839, -t429 * t834 + t468 * t839, -t454 * t834 + t541 * t839, -t458 * t834 + t510 * t839, -t455 * t834 + t542 * t839, -t500 * t834 + t562 * t839, -pkin(6) * t433 - t394 * t834 + t406 * t839, -pkin(6) * t439 - t398 * t834 + t408 * t839, -pkin(6) * t419 - t391 * t834 + t395 * t839, -pkin(6) * t396 - t389 * t834 + t390 * t839; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t805, 0, t804, 0, t855, -t856, t764, pkin(6) * t764, 0, -t805, -t804, 0, 0, 0, t741, -t855, t856, pkin(6) * t741 + (pkin(1) * t839 + qJ(2) * t834) * g(3), t776 * t839 + t858, t751 * t839 + t807 * t834, t767 * t839 + t834 * t876, t775 * t839 - t858, t765 * t839 - t833 * t877, qJDD(3) * t834 + t797 * t839, pkin(6) * t742 + t679 * t839 + t684 * t834, pkin(6) * t743 + t678 * t839 + t685 * t834, -pkin(2) * t899 + pkin(6) * t757 + t693 * t839, pkin(6) * t675 + t635 * t839 + t656 * t834, t634 * t839 + t868, t588 * t839 + t749 * t834, t654 * t839 + t704 * t834, t633 * t839 - t868, t655 * t839 + t834 * t848, t839 * t673 + t834 * t874, pkin(6) * t606 + t503 * t839 + t538 * t834, pkin(6) * t608 + t508 * t839 + t545 * t834, pkin(6) * t561 + t460 * t839 + t504 * t834, pkin(6) * t531 + t456 * t839 + t467 * t834, t549 * t839 + t652 * t834, t509 * t839 + t593 * t834, t528 * t839 + t636 * t834, t548 * t839 + t650 * t834, t529 * t839 + t637 * t834, t583 * t839 + t676 * t834, pkin(6) * t493 + t421 * t839 + t443 * t834, pkin(6) * t495 + t422 * t839 + t444 * t834, pkin(6) * t480 + t413 * t839 + t428 * t834, pkin(6) * t432 + t401 * t839 + t410 * t834, t459 * t839 + t511 * t834, t429 * t839 + t468 * t834, t454 * t839 + t541 * t834, t458 * t839 + t510 * t834, t455 * t839 + t542 * t834, t500 * t839 + t562 * t834, pkin(6) * t434 + t394 * t839 + t406 * t834, pkin(6) * t440 + t398 * t839 + t408 * t834, pkin(6) * t420 + t391 * t839 + t395 * t834, pkin(6) * t397 + t389 * t839 + t390 * t834; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t810, t811, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t854 - 0.2e1 * t921, -t811 + t824 + 0.2e1 * t827, pkin(1) * t784 + qJ(2) * t780, (t801 - t864) * t838, -t799 * t838 - t802 * t833, -t814 * t833 + t894, (-t800 + t863) * t833, t812 * t838 - t897, 0, qJ(2) * t799 - t766 * t923 - t888, qJ(2) * t802 - t768 * t923 - t887, -qJ(2) * t806 + t803 * t923 - t707, -qJ(2) * t774 - t707 * t923, -t696 * t833 + t697 * t838, -t642 * t833 + t644 * t838, -t709 * t833 + t711 * t838, -t694 * t833 + t695 * t838, -t710 * t833 + t712 * t838, -t733 * t833 + t734 * t838, qJ(2) * t699 - t833 * t609 - t629 * t923 + t838 * t649, qJ(2) * t702 - t833 * t616 - t646 * t923 + t838 * t664, qJ(2) * t731 - t833 * t546 + t838 * t547 - t589 * t923, -pkin(8) * t915 - qJ(2) * t723 - t539 * t923 - t833 * t580, -t613 * t833 + t615 * t838, -t564 * t833 + t565 * t838, -t584 * t833 + t586 * t838, -t612 * t833 + t614 * t838, -t585 * t833 + t587 * t838, -t640 * t833 + t641 * t838, qJ(2) * t621 - t833 * t463 + t838 * t472 - t519 * t923, qJ(2) * t624 - t833 * t466 + t838 * t473 - t526 * t923, qJ(2) * t594 - t833 * t449 + t838 * t457 - t505 * t923, qJ(2) * t501 - t833 * t423 + t838 * t435 - t447 * t923, -t497 * t833 + t499 * t838, -t464 * t833 + t465 * t838, -t488 * t833 + t490 * t838, -t496 * t833 + t498 * t838, -t489 * t833 + t491 * t838, -t551 * t833 + t552 * t838, qJ(2) * t521 - t833 * t409 + t838 * t412 - t450 * t923, qJ(2) * t536 - t833 * t411 + t838 * t416 - t452 * t923, qJ(2) * t469 - t833 * t399 + t838 * t400 - t426 * t923, qJ(2) * t417 - t833 * t392 + t838 * t393 - t402 * t923;];
tauB_reg  = t1;