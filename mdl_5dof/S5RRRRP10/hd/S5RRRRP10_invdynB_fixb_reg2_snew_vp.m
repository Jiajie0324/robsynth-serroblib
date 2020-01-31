% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRRRP10
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
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRRRP10_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP10_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP10_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRP10_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRP10_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRP10_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:12:39
% EndTime: 2019-12-31 22:13:01
% DurationCPUTime: 16.68s
% Computational Cost: add. (97164->670), mult. (210539->1031), div. (0->0), fcn. (165166->10), ass. (0->520)
t772 = sin(qJ(4));
t771 = cos(pkin(5));
t762 = qJD(1) * t771 + qJD(2);
t773 = sin(qJ(3));
t777 = cos(qJ(3));
t770 = sin(pkin(5));
t774 = sin(qJ(2));
t871 = qJD(1) * t774;
t855 = t770 * t871;
t729 = t762 * t773 + t777 * t855;
t776 = cos(qJ(4));
t778 = cos(qJ(2));
t870 = qJD(1) * t778;
t760 = t770 * t870;
t867 = t760 - qJD(3);
t702 = t729 * t772 + t776 * t867;
t704 = t776 * t729 - t772 * t867;
t668 = t704 * t702;
t865 = qJDD(1) * t774;
t736 = (qJD(2) * t870 + t865) * t770;
t761 = qJDD(1) * t771 + qJDD(2);
t847 = t773 * t736 - t777 * t761;
t683 = -t729 * qJD(3) - t847;
t682 = qJDD(4) - t683;
t850 = -t682 + t668;
t902 = t850 * t772;
t901 = t850 * t776;
t932 = t850 * pkin(4);
t727 = -t777 * t762 + t773 * t855;
t684 = -t727 * qJD(3) + t777 * t736 + t773 * t761;
t714 = t727 * t867;
t659 = t714 + t684;
t864 = t867 ^ 2;
t866 = qJDD(1) * t770;
t875 = -qJD(2) * t855 + t778 * t866;
t854 = -qJDD(3) + t875;
t894 = t727 * t729;
t804 = -t854 - t894;
t931 = t773 * t804;
t930 = t777 * t804;
t631 = -t702 * qJD(4) + t776 * t684 - t772 * t854;
t723 = qJD(4) + t727;
t680 = t723 * t702;
t929 = -t680 + t631;
t744 = t762 * t760;
t710 = t744 + t736;
t849 = t772 * t684 + t776 * t854;
t600 = (qJD(4) - t723) * t704 + t849;
t700 = t702 ^ 2;
t701 = t704 ^ 2;
t721 = t723 ^ 2;
t725 = t727 ^ 2;
t726 = t729 ^ 2;
t928 = t762 ^ 2;
t927 = pkin(2) * t774;
t926 = pkin(2) * t778;
t640 = -t721 - t700;
t570 = t640 * t772 - t901;
t925 = pkin(3) * t570;
t662 = -t701 - t721;
t619 = t668 + t682;
t904 = t619 * t772;
t575 = t662 * t776 - t904;
t924 = pkin(3) * t575;
t923 = pkin(3) * t773;
t922 = pkin(3) * t777;
t604 = -t680 - t631;
t536 = -t600 * t776 - t604 * t772;
t632 = -t700 - t701;
t511 = t536 * t773 - t632 * t777;
t512 = t536 * t777 + t632 * t773;
t534 = -t600 * t772 + t604 * t776;
t828 = t512 * t774 - t534 * t778;
t436 = -t770 * t511 + t771 * t828;
t471 = t512 * t778 + t534 * t774;
t775 = sin(qJ(1));
t779 = cos(qJ(1));
t402 = t436 * t779 + t471 * t775;
t921 = pkin(6) * t402;
t571 = t640 * t776 + t902;
t599 = (qJD(4) + t723) * t704 + t849;
t520 = t571 * t773 - t599 * t777;
t521 = t571 * t777 + t599 * t773;
t826 = t521 * t774 - t570 * t778;
t458 = -t770 * t520 + t771 * t826;
t487 = t521 * t778 + t570 * t774;
t415 = t458 * t779 + t487 * t775;
t920 = pkin(6) * t415;
t903 = t619 * t776;
t576 = -t662 * t772 - t903;
t524 = t576 * t773 - t777 * t929;
t525 = t576 * t777 + t773 * t929;
t825 = t525 * t774 - t575 * t778;
t461 = -t770 * t524 + t771 * t825;
t492 = t525 * t778 + t575 * t774;
t420 = t461 * t779 + t492 * t775;
t919 = pkin(6) * t420;
t918 = pkin(7) * t770;
t917 = pkin(7) * t771;
t916 = pkin(8) * t511;
t915 = pkin(8) * t520;
t914 = pkin(8) * t524;
t913 = pkin(9) * t534;
t912 = pkin(9) * t570;
t911 = pkin(9) * t575;
t910 = g(3) * t778;
t909 = t771 * g(3);
t755 = g(1) * t779 + g(2) * t775;
t780 = qJD(1) ^ 2;
t732 = -pkin(1) * t780 + pkin(7) * t866 - t755;
t845 = -pkin(8) * t774 - t926;
t872 = qJD(1) * t770;
t735 = t845 * t872;
t754 = t775 * g(1) - t779 * g(2);
t785 = qJDD(1) * pkin(1) + t780 * t918 + t754;
t784 = t771 * t785;
t783 = (-g(3) * t770 + t784) * t774;
t648 = t761 * pkin(8) - t928 * pkin(2) + (t735 * t872 + t732) * t778 + t783;
t844 = -pkin(8) * t778 + t927;
t873 = qJD(1) * t762;
t782 = -t909 - t736 * pkin(8) - t875 * pkin(2) + (t844 * t873 - t785) * t770;
t590 = t777 * t648 + t773 * t782;
t691 = pkin(3) * t727 - pkin(9) * t729;
t554 = -pkin(3) * t864 - pkin(9) * t854 - t727 * t691 + t590;
t848 = t774 * t732 - t778 * t784;
t647 = -t761 * pkin(2) - t928 * pkin(8) + (t735 * t871 + t910) * t770 + t848;
t846 = t867 * t729;
t558 = -t659 * pkin(9) + (-t683 - t846) * pkin(3) + t647;
t876 = -t772 * t554 + t776 * t558;
t857 = t631 * qJ(5) - t876;
t798 = -qJ(5) * t680 - t857;
t869 = qJD(5) * t704;
t466 = t798 - 0.2e1 * t869 - t932;
t908 = t466 * t772;
t907 = t466 * t776;
t589 = t648 * t773 - t777 * t782;
t553 = t854 * pkin(3) - t864 * pkin(9) + t691 * t729 + t589;
t906 = t553 * t772;
t905 = t553 * t776;
t900 = t647 * t773;
t899 = t647 * t777;
t677 = t854 - t894;
t898 = t677 * t773;
t897 = t677 * t777;
t896 = t723 * t772;
t895 = t723 * t776;
t883 = t778 * t780;
t767 = t770 ^ 2;
t888 = t767 * t774;
t753 = t883 * t888;
t733 = t753 + t761;
t893 = t733 * t774;
t892 = t733 * t778;
t734 = -t753 + t761;
t891 = t734 * t774;
t890 = t734 * t778;
t889 = t761 * t770;
t887 = t767 * t780;
t743 = t762 * t855;
t713 = -t743 + t875;
t886 = t771 * t713;
t716 = t770 * t785 + t909;
t885 = t774 * t716;
t884 = t778 * t716;
t882 = pkin(1) * t436 + t471 * t918;
t881 = pkin(1) * t458 + t487 * t918;
t880 = pkin(1) * t461 + t492 * t918;
t879 = -pkin(2) * t534 + pkin(8) * t512;
t878 = -pkin(2) * t570 + pkin(8) * t521;
t877 = -pkin(2) * t575 + pkin(8) * t525;
t497 = t776 * t554 + t772 * t558;
t768 = t774 ^ 2;
t769 = t778 ^ 2;
t874 = t768 + t769;
t863 = t773 * t668;
t862 = t777 * t668;
t861 = t774 * t894;
t860 = t778 * t894;
t859 = t768 * t887;
t858 = t769 * t887;
t856 = t762 * t872;
t435 = t771 * t511 + t770 * t828;
t853 = -pkin(1) * t435 + t471 * t917;
t457 = t771 * t520 + t770 * t826;
t852 = -pkin(1) * t457 + t487 * t917;
t460 = t771 * t524 + t770 * t825;
t851 = -pkin(1) * t460 + t492 * t917;
t527 = t589 * t773 + t777 * t590;
t718 = -t754 * t775 - t779 * t755;
t752 = qJDD(1) * t779 - t775 * t780;
t843 = -pkin(6) * t752 - g(3) * t775;
t842 = t773 * t714;
t841 = t773 * t846;
t840 = t777 * t714;
t839 = t777 * t846;
t722 = -t859 - t928;
t690 = -t722 * t774 - t890;
t838 = pkin(7) * t690 - t885;
t740 = -t858 - t928;
t696 = t740 * t778 - t893;
t837 = pkin(7) * t696 + t884;
t630 = -qJD(4) * t704 - t849;
t674 = pkin(4) * t723 - qJ(5) * t704;
t797 = t630 * qJ(5) - 0.2e1 * qJD(5) * t702 - t723 * t674 + t497;
t450 = -qJ(5) * t600 + (-t632 - t700) * pkin(4) + t797;
t698 = 0.2e1 * t869;
t455 = t698 + (-t604 + t680) * qJ(5) + t932 + t857;
t395 = -t450 * t772 + t455 * t776 - t913;
t501 = -pkin(3) * t534 - pkin(4) * t604;
t385 = t395 * t777 - t501 * t773 - t916;
t796 = -pkin(2) * t511 + pkin(3) * t632 - pkin(9) * t536;
t386 = -t450 * t776 - t455 * t772 + t796;
t836 = t385 * t774 + t386 * t778;
t438 = t698 - t798 - t925 + 0.2e1 * t932;
t500 = -t630 * pkin(4) - t700 * qJ(5) + t674 * t704 + qJDD(5) + t553;
t475 = -pkin(4) * t599 + qJ(5) * t640 - t500;
t442 = qJ(5) * t901 - t475 * t772 - t912;
t389 = -t438 * t773 + t442 * t777 - t915;
t795 = -pkin(2) * t520 + pkin(3) * t599 - pkin(9) * t571;
t410 = -qJ(5) * t902 - t475 * t776 + t795;
t835 = t389 * t774 + t410 * t778;
t491 = -qJ(5) * t662 + t500;
t543 = -pkin(4) * t929 - qJ(5) * t619;
t447 = t491 * t776 - t543 * t772 - t911;
t449 = -t924 + (-t662 - t700) * pkin(4) + t797;
t391 = t447 * t777 - t449 * t773 - t914;
t794 = -pkin(2) * t524 + pkin(3) * t929 - pkin(9) * t576;
t413 = -t491 * t772 - t543 * t776 + t794;
t834 = t391 * t774 + t413 * t778;
t451 = t497 * t772 + t776 * t876;
t427 = -t451 - t913;
t398 = t427 * t777 + t534 * t923 - t916;
t452 = t497 * t776 - t772 * t876;
t404 = -t452 + t796;
t833 = t398 * t774 + t404 * t778;
t472 = -pkin(4) * t700 + t797;
t412 = t472 * t776 - t908;
t400 = t412 * t777 + t500 * t773;
t411 = t472 * t772 + t907;
t832 = t400 * t774 - t411 * t778;
t477 = -t876 - t925;
t502 = t906 - t912;
t417 = -t477 * t773 + t502 * t777 - t915;
t453 = t795 + t905;
t831 = t417 * t774 + t453 * t778;
t478 = t497 - t924;
t507 = t905 - t911;
t418 = -t478 * t773 + t507 * t777 - t914;
t454 = t794 - t906;
t830 = t418 * t774 + t454 * t778;
t429 = t452 * t777 + t553 * t773;
t829 = t429 * t774 - t451 * t778;
t535 = -t599 * t776 - t772 * t929;
t667 = -t701 + t700;
t516 = t535 * t777 - t667 * t773;
t533 = t599 * t772 - t776 * t929;
t827 = t516 * t774 + t533 * t778;
t824 = t527 * t774 - t647 * t778;
t676 = -t701 + t721;
t586 = -t676 * t772 - t901;
t530 = t586 * t777 - t604 * t773;
t584 = -t676 * t776 + t902;
t823 = t530 * t774 + t584 * t778;
t675 = t700 - t721;
t587 = t675 * t776 - t904;
t531 = t587 * t777 - t600 * t773;
t585 = -t675 * t772 - t903;
t822 = t531 * t774 + t585 * t778;
t596 = -t630 * t772 + t702 * t895;
t561 = t596 * t777 - t863;
t595 = -t630 * t776 - t702 * t896;
t821 = t561 * t774 + t595 * t778;
t598 = t631 * t776 - t704 * t896;
t562 = t598 * t777 + t863;
t597 = -t631 * t772 - t704 * t895;
t820 = t562 * t774 + t597 * t778;
t526 = -t589 * t777 + t590 * t773;
t624 = (-t702 * t776 + t704 * t772) * t723;
t594 = t624 * t777 + t682 * t773;
t623 = (t702 * t772 + t704 * t776) * t723;
t819 = t594 * t774 + t623 * t778;
t657 = (-0.2e1 * qJD(3) + t760) * t729 - t847;
t607 = t657 * t777 - t659 * t773;
t692 = -t726 + t725;
t818 = t607 * t774 + t692 * t778;
t656 = t729 * t760 + t847;
t661 = -t684 + t714;
t608 = -t656 * t777 - t661 * t773;
t673 = t725 + t726;
t817 = t608 * t774 + t673 * t778;
t687 = -t864 - t725;
t628 = t687 * t777 - t931;
t816 = t628 * t774 + t657 * t778;
t693 = -t726 - t864;
t635 = -t693 * t773 + t897;
t815 = t635 * t774 - t659 * t778;
t708 = -t726 + t864;
t638 = -t708 * t773 + t930;
t814 = t638 * t774 + t661 * t778;
t707 = t725 - t864;
t639 = t707 * t777 + t898;
t813 = t639 * t774 + t656 * t778;
t688 = t770 * t910 + t848;
t689 = t778 * t732 + t783;
t812 = -t778 * t688 + t774 * t689;
t633 = t688 * t774 + t689 * t778;
t811 = t710 * t778 + t713 * t774;
t711 = -t744 + t736;
t712 = t743 + t875;
t810 = -t711 * t778 + t712 * t774;
t809 = t722 * t778 - t891;
t738 = -t859 + t928;
t808 = t738 * t778 + t893;
t807 = t740 * t774 + t892;
t739 = t858 - t928;
t806 = t739 * t774 + t890;
t717 = t754 * t779 - t755 * t775;
t805 = -t771 * t780 + t873;
t651 = -t773 * t683 - t840;
t803 = t651 * t774 + t860;
t653 = t777 * t684 + t841;
t802 = t653 * t774 - t860;
t801 = (-t435 * t770 - t436 * t771) * pkin(7);
t800 = (-t457 * t770 - t458 * t771) * pkin(7);
t799 = (-t460 * t770 - t461 * t771) * pkin(7);
t431 = -pkin(4) * t500 + qJ(5) * t472;
t380 = -pkin(9) * t411 - qJ(5) * t907 - t431 * t772;
t394 = -pkin(3) * t411 - pkin(4) * t466;
t399 = t412 * t773 - t500 * t777;
t365 = -pkin(8) * t399 + t380 * t777 - t394 * t773;
t367 = -pkin(2) * t399 + pkin(3) * t500 - pkin(9) * t412 + qJ(5) * t908 - t431 * t776;
t379 = t400 * t778 + t411 * t774;
t793 = pkin(7) * t379 + t365 * t774 + t367 * t778;
t428 = t452 * t773 - t553 * t777;
t384 = -pkin(8) * t428 + (-pkin(9) * t777 + t923) * t451;
t390 = -pkin(2) * t428 + pkin(3) * t553 - pkin(9) * t452;
t397 = t429 * t778 + t451 * t774;
t792 = pkin(7) * t397 + t384 * t774 + t390 * t778;
t627 = t687 * t773 + t930;
t542 = -pkin(2) * t627 + t589;
t577 = -pkin(8) * t627 + t900;
t580 = t628 * t778 - t657 * t774;
t791 = pkin(7) * t580 + t542 * t778 + t577 * t774;
t634 = t693 * t777 + t898;
t546 = -pkin(2) * t634 + t590;
t581 = -pkin(8) * t634 + t899;
t582 = t635 * t778 + t659 * t774;
t790 = pkin(7) * t582 + t546 * t778 + t581 * t774;
t669 = t711 * t774 + t712 * t778;
t789 = pkin(7) * t669 + t633;
t672 = t840 - t841;
t788 = t774 * t672 + t778 * t854;
t606 = -t656 * t773 + t661 * t777;
t495 = -pkin(8) * t606 - t526;
t566 = t608 * t778 - t673 * t774;
t787 = pkin(7) * t566 + t495 * t774 - t606 * t926;
t508 = t527 * t778 + t647 * t774;
t786 = pkin(7) * t508 + t526 * t845;
t766 = t770 * t767;
t751 = qJDD(1) * t775 + t779 * t780;
t742 = t874 * t887;
t741 = (t768 - t769) * t887;
t737 = -pkin(6) * t751 + g(3) * t779;
t715 = t874 * t856;
t709 = (t865 + (qJD(2) + t762) * t870) * t770;
t706 = t736 * t778 - t768 * t856;
t705 = -t769 * t856 - t774 * t875;
t695 = t739 * t778 - t891;
t694 = -t738 * t774 + t892;
t686 = (t710 * t771 + t766 * t883) * t774;
t685 = (-t766 * t780 * t774 + t886) * t778;
t671 = t842 + t839;
t670 = -t710 * t774 + t713 * t778;
t666 = t770 * t713 + t771 * t807;
t665 = -t770 * t712 + t771 * t806;
t664 = -t770 * t711 + t771 * t808;
t663 = t770 * t807 - t886;
t655 = -t770 * t709 + t771 * t809;
t654 = t771 * t709 + t770 * t809;
t652 = t773 * t684 - t839;
t650 = t777 * t683 - t842;
t649 = t778 * t672 - t774 * t854;
t646 = -t770 * t741 + t771 * t811;
t645 = t770 * t742 + t771 * t810;
t644 = -t771 * t742 + t770 * t810;
t637 = t707 * t773 - t897;
t636 = t708 * t777 + t931;
t622 = -t666 * t775 + t696 * t779;
t621 = t666 * t779 + t696 * t775;
t617 = t653 * t778 + t861;
t616 = t651 * t778 - t861;
t615 = -t655 * t775 + t690 * t779;
t614 = t655 * t779 + t690 * t775;
t613 = t770 * t716 + t771 * t812;
t612 = -t771 * t716 + t770 * t812;
t611 = -t770 * t671 + t771 * t788;
t610 = -t645 * t775 + t669 * t779;
t609 = t645 * t779 + t669 * t775;
t605 = t657 * t773 + t659 * t777;
t593 = t624 * t773 - t682 * t777;
t592 = t639 * t778 - t656 * t774;
t591 = t638 * t778 - t661 * t774;
t583 = -t885 + (-t663 * t770 - t666 * t771) * pkin(7);
t579 = -t884 + (-t654 * t770 - t655 * t771) * pkin(7);
t578 = -pkin(1) * t663 + t770 * t688 + t771 * t837;
t573 = t607 * t778 - t692 * t774;
t572 = -pkin(1) * t654 + t770 * t689 + t771 * t838;
t568 = -t770 * t652 + t771 * t802;
t567 = -t770 * t650 + t771 * t803;
t565 = -pkin(1) * t612 + t633 * t917;
t564 = -t613 * t775 + t633 * t779;
t563 = t613 * t779 + t633 * t775;
t560 = t598 * t773 - t862;
t559 = t596 * t773 + t862;
t555 = -pkin(1) * t644 + t771 * t789;
t552 = -pkin(2) * t659 + pkin(8) * t635 + t900;
t549 = -t770 * t637 + t771 * t813;
t548 = -t770 * t636 + t771 * t814;
t547 = (-t612 * t770 - t613 * t771) * pkin(7);
t545 = pkin(2) * t657 + pkin(8) * t628 - t899;
t544 = (-t644 * t770 - t645 * t771) * pkin(7) - t812;
t541 = -t770 * t634 + t771 * t815;
t540 = t771 * t634 + t770 * t815;
t539 = t594 * t778 - t623 * t774;
t538 = -t770 * t627 + t771 * t816;
t537 = t771 * t627 + t770 * t816;
t529 = t587 * t773 + t600 * t777;
t528 = t586 * t773 + t604 * t777;
t522 = -t770 * t605 + t771 * t818;
t518 = -t770 * t606 + t771 * t817;
t517 = t771 * t606 + t770 * t817;
t515 = t535 * t773 + t667 * t777;
t514 = t562 * t778 - t597 * t774;
t513 = t561 * t778 - t595 * t774;
t509 = -pkin(2) * t647 + pkin(8) * t527;
t506 = -t770 * t593 + t771 * t819;
t505 = t771 * t593 + t770 * t819;
t504 = -t541 * t775 + t582 * t779;
t503 = t541 * t779 + t582 * t775;
t499 = -t538 * t775 + t580 * t779;
t498 = t538 * t779 + t580 * t775;
t494 = t531 * t778 - t585 * t774;
t493 = t530 * t778 - t584 * t774;
t490 = pkin(2) * t673 + pkin(8) * t608 + t527;
t484 = -t518 * t775 + t566 * t779;
t483 = t518 * t779 + t566 * t775;
t482 = -t770 * t560 + t771 * t820;
t481 = -t770 * t559 + t771 * t821;
t480 = t771 * t560 + t770 * t820;
t479 = t771 * t559 + t770 * t821;
t476 = t516 * t778 - t533 * t774;
t474 = -t506 * t775 + t539 * t779;
t473 = t506 * t779 + t539 * t775;
t468 = -t770 * t526 + t771 * t824;
t467 = t771 * t526 + t770 * t824;
t465 = -t770 * t529 + t771 * t822;
t464 = -t770 * t528 + t771 * t823;
t463 = t771 * t529 + t770 * t822;
t462 = t771 * t528 + t770 * t823;
t448 = -t774 * t546 + t778 * t581 + (-t540 * t770 - t541 * t771) * pkin(7);
t446 = -t482 * t775 + t514 * t779;
t445 = -t481 * t775 + t513 * t779;
t444 = t482 * t779 + t514 * t775;
t443 = t481 * t779 + t513 * t775;
t441 = -t774 * t542 + t778 * t577 + (-t537 * t770 - t538 * t771) * pkin(7);
t440 = -t770 * t515 + t771 * t827;
t439 = t771 * t515 + t770 * t827;
t437 = -pkin(1) * t540 - t770 * t552 + t771 * t790;
t433 = -t468 * t775 + t508 * t779;
t432 = t468 * t779 + t508 * t775;
t430 = -pkin(1) * t537 - t770 * t545 + t771 * t791;
t426 = -t465 * t775 + t494 * t779;
t425 = -t464 * t775 + t493 * t779;
t424 = t465 * t779 + t494 * t775;
t423 = t464 * t779 + t493 * t775;
t422 = t606 * t927 + t778 * t495 + (-t517 * t770 - t518 * t771) * pkin(7);
t421 = -t461 * t775 + t492 * t779;
t419 = pkin(6) * t421;
t416 = -t458 * t775 + t487 * t779;
t414 = pkin(6) * t416;
t409 = t478 * t777 + t507 * t773 + t877;
t408 = t477 * t777 + t502 * t773 + t878;
t407 = -pkin(1) * t517 - t770 * t490 + t771 * t787;
t406 = -t440 * t775 + t476 * t779;
t405 = t440 * t779 + t476 * t775;
t403 = -t436 * t775 + t471 * t779;
t401 = pkin(6) * t403;
t396 = t844 * t526 + (-t467 * t770 - t468 * t771) * pkin(7);
t393 = -pkin(1) * t467 - t770 * t509 + t771 * t786;
t392 = t427 * t773 - t534 * t922 + t879;
t388 = t447 * t773 + t449 * t777 + t877;
t387 = t438 * t777 + t442 * t773 + t878;
t383 = t395 * t773 + t501 * t777 + t879;
t382 = -t770 * t428 + t771 * t829;
t381 = t771 * t428 + t770 * t829;
t378 = pkin(8) * t429 + (-pkin(9) * t773 - pkin(2) - t922) * t451;
t377 = t778 * t418 - t774 * t454 + t799;
t376 = t778 * t417 - t774 * t453 + t800;
t375 = -t770 * t399 + t771 * t832;
t374 = t771 * t399 + t770 * t832;
t373 = -t770 * t409 + t771 * t830 + t851;
t372 = -t382 * t775 + t397 * t779;
t371 = t382 * t779 + t397 * t775;
t370 = t778 * t391 - t774 * t413 + t799;
t369 = -t770 * t408 + t771 * t831 + t852;
t368 = t778 * t389 - t774 * t410 + t800;
t366 = t778 * t398 - t774 * t404 + t801;
t364 = -t770 * t388 + t771 * t834 + t851;
t363 = -t770 * t392 + t771 * t833 + t853;
t362 = t778 * t385 - t774 * t386 + t801;
t361 = -t770 * t387 + t771 * t835 + t852;
t360 = -t375 * t775 + t379 * t779;
t359 = t375 * t779 + t379 * t775;
t358 = -pkin(2) * t411 + pkin(8) * t400 + t380 * t773 + t394 * t777;
t357 = -t770 * t383 + t771 * t836 + t853;
t356 = t778 * t384 - t774 * t390 + (-t381 * t770 - t382 * t771) * pkin(7);
t355 = -pkin(1) * t381 - t770 * t378 + t771 * t792;
t354 = t778 * t365 - t774 * t367 + (-t374 * t770 - t375 * t771) * pkin(7);
t353 = -pkin(1) * t374 - t770 * t358 + t771 * t793;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t751, -t752, 0, t718, 0, 0, 0, 0, 0, 0, t622, t615, t610, t564, 0, 0, 0, 0, 0, 0, t499, t504, t484, t433, 0, 0, 0, 0, 0, 0, t416, t421, t403, t372, 0, 0, 0, 0, 0, 0, t416, t421, t403, t360; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t752, -t751, 0, t717, 0, 0, 0, 0, 0, 0, t621, t614, t609, t563, 0, 0, 0, 0, 0, 0, t498, t503, t483, t432, 0, 0, 0, 0, 0, 0, t415, t420, t402, t371, 0, 0, 0, 0, 0, 0, t415, t420, t402, t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t663, t654, t644, t612, 0, 0, 0, 0, 0, 0, t537, t540, t517, t467, 0, 0, 0, 0, 0, 0, t457, t460, t435, t381, 0, 0, 0, 0, 0, 0, t457, t460, t435, t374; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t752, 0, -t751, 0, t843, -t737, -t717, -pkin(6) * t717, -t686 * t775 + t706 * t779, -t646 * t775 + t670 * t779, -t664 * t775 + t694 * t779, -t685 * t775 + t705 * t779, -t665 * t775 + t695 * t779, t715 * t779 + t775 * t889, -pkin(6) * t621 - t578 * t775 + t583 * t779, -pkin(6) * t614 - t572 * t775 + t579 * t779, -pkin(6) * t609 + t544 * t779 - t555 * t775, -pkin(6) * t563 + t547 * t779 - t565 * t775, -t568 * t775 + t617 * t779, -t522 * t775 + t573 * t779, -t548 * t775 + t591 * t779, -t567 * t775 + t616 * t779, -t549 * t775 + t592 * t779, -t611 * t775 + t649 * t779, -pkin(6) * t498 - t430 * t775 + t441 * t779, -pkin(6) * t503 - t437 * t775 + t448 * t779, -pkin(6) * t483 - t407 * t775 + t422 * t779, -pkin(6) * t432 - t393 * t775 + t396 * t779, t446, t406, t425, t445, t426, t474, -t369 * t775 + t376 * t779 - t920, -t373 * t775 + t377 * t779 - t919, -t363 * t775 + t366 * t779 - t921, -pkin(6) * t371 - t355 * t775 + t356 * t779, t446, t406, t425, t445, t426, t474, -t361 * t775 + t368 * t779 - t920, -t364 * t775 + t370 * t779 - t919, -t357 * t775 + t362 * t779 - t921, -pkin(6) * t359 - t353 * t775 + t354 * t779; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t751, 0, t752, 0, t737, t843, t718, pkin(6) * t718, t686 * t779 + t706 * t775, t646 * t779 + t670 * t775, t664 * t779 + t694 * t775, t685 * t779 + t705 * t775, t665 * t779 + t695 * t775, t715 * t775 - t779 * t889, pkin(6) * t622 + t578 * t779 + t583 * t775, pkin(6) * t615 + t572 * t779 + t579 * t775, pkin(6) * t610 + t544 * t775 + t555 * t779, pkin(6) * t564 + t547 * t775 + t565 * t779, t568 * t779 + t617 * t775, t522 * t779 + t573 * t775, t548 * t779 + t591 * t775, t567 * t779 + t616 * t775, t549 * t779 + t592 * t775, t611 * t779 + t649 * t775, pkin(6) * t499 + t430 * t779 + t441 * t775, pkin(6) * t504 + t437 * t779 + t448 * t775, pkin(6) * t484 + t407 * t779 + t422 * t775, pkin(6) * t433 + t393 * t779 + t396 * t775, t444, t405, t423, t443, t424, t473, t369 * t779 + t376 * t775 + t414, t373 * t779 + t377 * t775 + t419, t363 * t779 + t366 * t775 + t401, pkin(6) * t372 + t355 * t779 + t356 * t775, t444, t405, t423, t443, t424, t473, t361 * t779 + t368 * t775 + t414, t364 * t779 + t370 * t775 + t419, t357 * t779 + t362 * t775 + t401, pkin(6) * t360 + t353 * t779 + t354 * t775; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t754, t755, 0, 0, (t767 * t778 * t805 + t736 * t770) * t774, t771 * t741 + t770 * t811, t771 * t711 + t770 * t808, (t770 * t875 - t805 * t888) * t778, t771 * t712 + t770 * t806, t771 * t761, pkin(1) * t666 - t771 * t688 + t770 * t837, pkin(1) * t655 - t771 * t689 + t770 * t838, pkin(1) * t645 + t770 * t789, pkin(1) * t613 + t633 * t918, t771 * t652 + t770 * t802, t771 * t605 + t770 * t818, t771 * t636 + t770 * t814, t771 * t650 + t770 * t803, t771 * t637 + t770 * t813, t771 * t671 + t770 * t788, pkin(1) * t538 + t771 * t545 + t770 * t791, pkin(1) * t541 + t771 * t552 + t770 * t790, pkin(1) * t518 + t771 * t490 + t770 * t787, pkin(1) * t468 + t771 * t509 + t770 * t786, t480, t439, t462, t479, t463, t505, t771 * t408 + t770 * t831 + t881, t771 * t409 + t770 * t830 + t880, t771 * t392 + t770 * t833 + t882, pkin(1) * t382 + t771 * t378 + t770 * t792, t480, t439, t462, t479, t463, t505, t771 * t387 + t770 * t835 + t881, t771 * t388 + t770 * t834 + t880, t771 * t383 + t770 * t836 + t882, pkin(1) * t375 + t771 * t358 + t770 * t793;];
tauB_reg = t1;