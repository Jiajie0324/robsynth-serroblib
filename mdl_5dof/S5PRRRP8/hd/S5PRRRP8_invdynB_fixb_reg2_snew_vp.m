% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRRRP8
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
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d4,theta1]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:01
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRRRP8_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP8_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP8_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP8_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP8_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRP8_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:00:45
% EndTime: 2019-12-05 17:01:14
% DurationCPUTime: 24.10s
% Computational Cost: add. (35012->601), mult. (68384->911), div. (0->0), fcn. (48480->10), ass. (0->460)
t666 = sin(qJ(4));
t669 = cos(qJ(4));
t667 = sin(qJ(3));
t759 = qJD(2) * t667;
t625 = t666 * qJD(3) + t669 * t759;
t670 = cos(qJ(3));
t754 = qJD(2) * qJD(3);
t743 = t670 * t754;
t752 = t667 * qJDD(2);
t628 = t743 + t752;
t739 = -t669 * qJDD(3) + t666 * t628;
t757 = t670 * qJD(2);
t647 = -qJD(4) + t757;
t756 = qJD(4) - t647;
t526 = t756 * t625 + t739;
t623 = -t669 * qJD(3) + t666 * t759;
t695 = -t666 * qJDD(3) - t669 * t628;
t675 = qJD(4) * t623 + t695;
t775 = t623 * t647;
t815 = t775 - t675;
t788 = t815 * t666;
t447 = t526 * t669 + t788;
t619 = t625 ^ 2;
t804 = t623 ^ 2;
t579 = t619 - t804;
t417 = t447 * t667 + t579 * t670;
t661 = sin(pkin(5));
t663 = cos(pkin(5));
t419 = t447 * t670 - t579 * t667;
t443 = -t526 * t666 + t669 * t815;
t668 = sin(qJ(2));
t671 = cos(qJ(2));
t716 = t419 * t668 + t443 * t671;
t337 = -t661 * t417 + t716 * t663;
t372 = t419 * t671 - t443 * t668;
t660 = sin(pkin(9));
t662 = cos(pkin(9));
t936 = t337 * t660 - t372 * t662;
t935 = t337 * t662 + t372 * t660;
t803 = t647 ^ 2;
t599 = t804 - t803;
t650 = t667 * t754;
t750 = t670 * qJDD(2);
t629 = -t650 + t750;
t620 = -qJDD(4) + t629;
t776 = t623 * t625;
t676 = t620 - t776;
t783 = t676 * t666;
t509 = t599 * t669 + t783;
t527 = (qJD(4) + t647) * t625 + t739;
t431 = t509 * t667 + t527 * t670;
t435 = t509 * t670 - t527 * t667;
t782 = t676 * t669;
t506 = t599 * t666 - t782;
t708 = t435 * t668 - t506 * t671;
t362 = -t661 * t431 + t708 * t663;
t396 = t435 * t671 + t506 * t668;
t934 = t362 * t660 - t396 * t662;
t933 = t362 * t662 + t396 * t660;
t928 = t663 * t431 + t661 * t708;
t927 = t663 * t417 + t661 * t716;
t814 = t775 + t675;
t853 = -t527 * t666 + t814 * t669;
t816 = t619 + t804;
t852 = -t527 * t669 - t814 * t666;
t873 = -t667 * t816 + t670 * t852;
t888 = t668 * t853 + t671 * t873;
t875 = t667 * t852 + t670 * t816;
t889 = t668 * t873 - t671 * t853;
t909 = -t661 * t875 + t663 * t889;
t917 = t660 * t888 + t662 * t909;
t926 = qJ(1) * t917;
t918 = -t660 * t909 + t662 * t888;
t925 = qJ(1) * t918;
t924 = pkin(1) * t909;
t911 = t661 * t889 + t663 * t875;
t923 = pkin(1) * t911;
t916 = (-t661 * t911 - t663 * t909) * pkin(6);
t915 = pkin(6) * t888;
t600 = -t619 + t803;
t677 = -t620 - t776;
t781 = t677 * t666;
t832 = -t600 * t669 - t781;
t780 = t677 * t669;
t831 = -t600 * t666 + t780;
t846 = -t667 * t814 + t670 * t831;
t872 = -t668 * t832 + t671 * t846;
t847 = t667 * t831 + t670 * t814;
t874 = t668 * t846 + t671 * t832;
t890 = -t661 * t847 + t663 * t874;
t912 = -t660 * t890 + t662 * t872;
t910 = t660 * t872 + t662 * t890;
t567 = t803 + t619;
t478 = t567 * t669 - t783;
t908 = pkin(2) * t478;
t907 = pkin(3) * t478;
t906 = pkin(7) * t873;
t905 = pkin(7) * t875;
t904 = pkin(8) * t478;
t491 = t567 * t666 + t782;
t903 = pkin(8) * t491;
t902 = t478 * t668;
t901 = t478 * t671;
t900 = t491 * t667;
t899 = t491 * t670;
t892 = -pkin(2) * t875 - pkin(3) * t816 - pkin(8) * t852;
t891 = t661 * t874 + t663 * t847;
t887 = pkin(8) * t853;
t769 = t647 * t669;
t595 = t625 * t769;
t770 = t647 * t666;
t746 = t623 * t770;
t729 = -t595 - t746;
t594 = t625 * t770;
t745 = t623 * t769;
t730 = -t594 + t745;
t808 = -t620 * t667 + t670 * t730;
t826 = -t668 * t729 + t671 * t808;
t811 = t670 * t620 + t667 * t730;
t829 = t668 * t808 + t671 * t729;
t848 = -t661 * t811 + t663 * t829;
t879 = -t660 * t848 + t662 * t826;
t561 = -qJD(4) * t625 - t739;
t693 = -t561 * t669 + t746;
t694 = -t561 * t666 - t745;
t748 = t667 * t776;
t809 = t670 * t694 - t748;
t825 = -t668 * t693 + t671 * t809;
t747 = t670 * t776;
t810 = t667 * t694 + t747;
t828 = t668 * t809 + t671 * t693;
t849 = -t661 * t810 + t663 * t828;
t878 = -t660 * t849 + t662 * t825;
t877 = t660 * t826 + t662 * t848;
t876 = t660 * t825 + t662 * t849;
t813 = -t803 - t804;
t830 = t666 * t813 + t780;
t871 = pkin(2) * t830;
t870 = pkin(3) * t830;
t827 = t669 * t813 - t781;
t869 = pkin(8) * t827;
t868 = pkin(8) * t830;
t867 = qJ(5) * t815;
t860 = t667 * t827;
t859 = t668 * t830;
t857 = t670 * t827;
t856 = t671 * t830;
t523 = t666 * t675 + t595;
t524 = -t669 * t675 + t594;
t731 = t670 * t524 + t748;
t854 = t523 * t671 + t668 * t731;
t851 = t661 * t828 + t663 * t810;
t850 = t661 * t829 + t663 * t811;
t845 = -2 * qJD(5);
t636 = t662 * g(1) + t660 * g(2);
t741 = t660 * g(1) - t662 * g(2);
t762 = g(3) - qJDD(1);
t833 = -t661 * t762 + t663 * t741;
t554 = -t671 * t636 + t833 * t668;
t672 = qJD(2) ^ 2;
t541 = -t672 * pkin(2) + qJDD(2) * pkin(7) + t554;
t603 = t661 * t741 + t663 * t762;
t593 = t670 * t603;
t800 = pkin(3) * t670;
t733 = -pkin(8) * t667 - t800;
t626 = t733 * qJD(2);
t802 = qJD(3) ^ 2;
t459 = (qJD(2) * t626 + t541) * t667 - qJDD(3) * pkin(3) - t802 * pkin(8) + t593;
t834 = -t561 * pkin(4) + t459 - t867;
t732 = t667 * t524 - t747;
t805 = -t661 * t732 + t663 * t854;
t807 = -t523 * t668 + t671 * t731;
t824 = t660 * t807 + t662 * t805;
t823 = -t660 * t805 + t662 * t807;
t822 = t660 * t762;
t821 = t662 * t762;
t494 = t670 * t541 - t667 * t603;
t460 = -t802 * pkin(3) + qJDD(3) * pkin(8) + t626 * t757 + t494;
t553 = -t668 * t636 - t833 * t671;
t540 = -qJDD(2) * pkin(2) - t672 * pkin(7) + t553;
t723 = -t629 + t650;
t724 = t628 + t743;
t475 = t723 * pkin(3) - t724 * pkin(8) + t540;
t402 = t669 * t460 + t666 * t475;
t572 = pkin(4) * t623 - qJ(5) * t625;
t722 = -t620 * qJ(5) - t623 * t572 + t647 * t845 + t402;
t578 = -t662 * t636 - t660 * t741;
t577 = -t660 * t636 + t662 * t741;
t806 = t661 * t854 + t663 * t732;
t801 = pkin(3) * t667;
t799 = pkin(4) * t669;
t477 = t553 * t668 + t554 * t671;
t798 = pkin(6) * t477;
t797 = qJ(5) * t669;
t796 = t459 * t666;
t795 = t459 * t669;
t785 = t540 * t667;
t784 = t540 * t670;
t774 = t625 * t647;
t646 = t667 * t672 * t670;
t637 = qJDD(3) + t646;
t773 = t637 * t667;
t638 = qJDD(3) - t646;
t772 = t638 * t667;
t771 = t638 * t670;
t656 = t667 ^ 2;
t768 = t656 * t672;
t764 = t668 * t603;
t763 = t671 * t603;
t401 = t666 * t460 - t669 * t475;
t761 = t816 - t803;
t657 = t670 ^ 2;
t760 = t656 + t657;
t753 = qJDD(2) * t661;
t751 = t668 * qJDD(2);
t749 = t671 * qJDD(2);
t742 = qJ(5) * t666 + pkin(3);
t493 = t667 * t541 + t593;
t416 = t493 * t667 + t670 * t494;
t737 = t668 * t646;
t736 = t671 * t646;
t734 = t625 * t572 + qJDD(5) + t401;
t415 = t493 * t670 - t494 * t667;
t631 = t760 * qJDD(2);
t654 = t657 * t672;
t634 = t654 + t768;
t575 = t631 * t671 - t634 * t668;
t727 = pkin(6) * t575 + t415 * t668;
t632 = -t668 * t672 + t749;
t726 = -pkin(6) * t632 - t764;
t697 = t671 * t672 + t751;
t725 = -pkin(6) * t697 + t763;
t380 = -pkin(4) * t803 + t722;
t690 = t620 * pkin(4) + t734;
t381 = qJ(5) * t803 - t690;
t329 = t380 * t669 - t381 * t666;
t387 = (-pkin(4) * t647 + t845) * t625 + t834;
t309 = t329 * t670 + t387 * t667;
t328 = t380 * t666 + t381 * t669;
t721 = t309 * t668 - t328 * t671;
t351 = t401 * t666 + t402 * t669;
t332 = t351 * t670 + t459 * t667;
t350 = -t401 * t669 + t402 * t666;
t720 = t332 * t668 - t350 * t671;
t717 = t416 * t668 - t540 * t671;
t423 = -t667 * t815 - t899;
t714 = t423 * t668 - t901;
t424 = t526 * t667 + t857;
t713 = t424 * t668 - t856;
t532 = t756 * t623 + t695;
t427 = -t532 * t667 + t899;
t712 = t427 * t668 + t901;
t525 = -t561 - t774;
t428 = t525 * t667 + t857;
t711 = t428 * t668 - t856;
t476 = t553 * t671 - t554 * t668;
t627 = 0.2e1 * t743 + t752;
t630 = -0.2e1 * t650 + t750;
t571 = -t627 * t667 + t630 * t670;
t635 = t654 - t768;
t702 = t571 * t668 + t635 * t671;
t644 = -t654 - t802;
t589 = t644 * t670 - t773;
t701 = t589 * t668 + t630 * t671;
t642 = -t768 - t802;
t591 = -t642 * t667 - t771;
t700 = t591 * t668 - t627 * t671;
t610 = t697 * t663;
t699 = t610 * t662 + t632 * t660;
t564 = t610 * t660 - t632 * t662;
t698 = t631 * t668 + t634 * t671;
t621 = t760 * t754;
t696 = -qJDD(3) * t671 + t621 * t668;
t643 = t654 - t802;
t588 = t643 * t670 - t772;
t692 = t588 * t668 - t670 * t749;
t622 = t670 * t637;
t641 = -t768 + t802;
t590 = -t641 * t667 + t622;
t691 = t590 * t668 - t667 * t749;
t596 = -t629 * t667 - t657 * t754;
t689 = t596 * t668 - t736;
t597 = t628 * t670 - t656 * t754;
t688 = t597 * t668 + t736;
t294 = -pkin(3) * t328 - pkin(4) * t381 - qJ(5) * t380;
t297 = -pkin(8) * t328 + (pkin(4) * t666 - t797) * t387;
t308 = t329 * t667 - t387 * t670;
t271 = -pkin(7) * t308 - t294 * t667 + t297 * t670;
t281 = -pkin(2) * t308 - pkin(8) * t329 + (t742 + t799) * t387;
t287 = t309 * t671 + t328 * t668;
t687 = pkin(6) * t287 + t271 * t668 + t281 * t671;
t331 = t351 * t667 - t459 * t670;
t288 = -pkin(7) * t331 + (-pkin(8) * t670 + t801) * t350;
t299 = -pkin(2) * t331 + pkin(3) * t459 - pkin(8) * t351;
t302 = t332 * t671 + t350 * t668;
t686 = pkin(6) * t302 + t288 * t668 + t299 * t671;
t366 = t761 * pkin(4) + t722;
t367 = t761 * qJ(5) + t690;
t310 = -t366 * t666 + t367 * t669 - t887;
t383 = -pkin(3) * t853 - pkin(4) * t814 + qJ(5) * t527;
t290 = t310 * t670 - t383 * t667 - t905;
t300 = -t366 * t669 - t367 * t666 + t892;
t685 = t290 * t668 + t300 * t671 + t915;
t673 = 0.2e1 * qJD(5) * t625 - t834;
t370 = pkin(4) * t774 + t673 + t867;
t339 = -pkin(4) * t788 + t370 * t669 - t904;
t341 = -t907 + qJ(5) * t676 + (-t567 + t803) * pkin(4) - t722;
t421 = t670 * t815 - t900;
t296 = -pkin(7) * t421 + t339 * t670 - t341 * t667;
t314 = -pkin(2) * t421 + t903 - t666 * t370 + (-pkin(3) - t799) * t815;
t385 = t423 * t671 + t902;
t684 = pkin(6) * t385 + t296 * t668 + t314 * t671;
t371 = (-t525 + t774) * pkin(4) + t673;
t340 = -t371 * t666 - t525 * t797 - t868;
t345 = -t870 + (-t813 - t803) * qJ(5) + (-t677 + t620) * pkin(4) + t734;
t426 = -t525 * t670 + t860;
t298 = -pkin(7) * t426 + t340 * t670 - t345 * t667;
t319 = -pkin(2) * t426 - t669 * t371 + t742 * t525 - t869;
t389 = t428 * t671 + t859;
t683 = pkin(6) * t389 + t298 * t668 + t319 * t671;
t330 = -t350 - t887;
t303 = t330 * t670 + t801 * t853 - t905;
t311 = -t351 + t892;
t682 = t303 * t668 + t311 * t671 + t915;
t374 = t401 - t870;
t403 = t796 - t868;
t422 = -t526 * t670 + t860;
t320 = -pkin(7) * t422 - t374 * t667 + t403 * t670;
t352 = -pkin(2) * t422 + pkin(3) * t526 + t795 - t869;
t386 = t424 * t671 + t859;
t681 = pkin(6) * t386 + t320 * t668 + t352 * t671;
t379 = t402 + t907;
t405 = t795 + t904;
t425 = t532 * t670 + t900;
t325 = -pkin(7) * t425 - t379 * t667 + t405 * t670;
t353 = -pkin(2) * t425 - pkin(3) * t532 - t796 - t903;
t388 = t427 * t671 - t902;
t680 = pkin(6) * t388 + t325 * t668 + t353 * t671;
t585 = t644 * t667 + t622;
t455 = -pkin(2) * t585 + t493;
t487 = -pkin(7) * t585 + t785;
t542 = t589 * t671 - t630 * t668;
t679 = pkin(6) * t542 + t455 * t671 + t487 * t668;
t587 = t642 * t670 - t772;
t456 = -pkin(2) * t587 + t494;
t488 = -pkin(7) * t587 + t784;
t543 = t591 * t671 + t627 * t668;
t678 = pkin(6) * t543 + t456 * t671 + t488 * t668;
t393 = t416 * t671 + t540 * t668;
t674 = pkin(6) * t393 - (-pkin(2) * t671 - pkin(7) * t668) * t415;
t611 = t632 * t663;
t609 = t632 * t661;
t608 = t697 * t661;
t598 = qJDD(3) * t668 + t621 * t671;
t586 = t641 * t670 + t773;
t584 = t643 * t667 + t771;
t583 = t724 * t667;
t582 = t723 * t670;
t576 = t696 * t663;
t570 = t627 * t670 + t630 * t667;
t569 = t698 * t663;
t568 = t698 * t661;
t565 = -t611 * t660 - t662 * t697;
t563 = t611 * t662 - t660 * t697;
t560 = t597 * t671 - t737;
t559 = t596 * t671 + t737;
t558 = t590 * t671 + t667 * t751;
t557 = t588 * t671 + t668 * t750;
t535 = t571 * t671 - t635 * t668;
t516 = -t763 + (t608 * t661 + t610 * t663) * pkin(6);
t515 = -t764 + (-t609 * t661 - t611 * t663) * pkin(6);
t500 = -t569 * t660 + t575 * t662;
t499 = t569 * t662 + t575 * t660;
t498 = -t661 * t583 + t663 * t688;
t497 = t661 * t582 + t663 * t689;
t496 = -t661 * t586 + t663 * t691;
t495 = -t661 * t584 + t663 * t692;
t485 = -t661 * t587 + t663 * t700;
t484 = -t661 * t585 + t663 * t701;
t483 = t663 * t587 + t661 * t700;
t482 = t663 * t585 + t661 * t701;
t474 = -t661 * t570 + t663 * t702;
t473 = pkin(2) * t630 + pkin(7) * t589 - t784;
t472 = -pkin(2) * t627 + pkin(7) * t591 + t785;
t469 = t477 * t663;
t454 = -pkin(1) * t609 + t661 * t553 + t725 * t663;
t453 = pkin(1) * t608 + t661 * t554 + t726 * t663;
t452 = -t476 * t663 + t661 * t603;
t451 = -t476 * t661 - t663 * t603;
t440 = -t485 * t660 + t543 * t662;
t439 = -t484 * t660 + t542 * t662;
t438 = t485 * t662 + t543 * t660;
t437 = t484 * t662 + t542 * t660;
t404 = pkin(2) * t634 + pkin(7) * t631 + t416;
t398 = -pkin(2) * t540 + pkin(7) * t416;
t392 = -pkin(1) * t451 + t663 * t798;
t391 = -t452 * t660 + t477 * t662;
t390 = t452 * t662 + t477 * t660;
t384 = t671 * t415 + (-t568 * t661 - t569 * t663) * pkin(6);
t382 = (-t451 * t661 - t452 * t663) * pkin(6);
t365 = -t668 * t456 + t671 * t488 + (-t483 * t661 - t485 * t663) * pkin(6);
t364 = -t668 * t455 + t671 * t487 + (-t482 * t661 - t484 * t663) * pkin(6);
t359 = -t661 * t426 + t711 * t663;
t358 = -t661 * t425 + t712 * t663;
t357 = t663 * t426 + t711 * t661;
t356 = t663 * t425 + t712 * t661;
t355 = t415 * t661 + t717 * t663;
t354 = -t415 * t663 + t717 * t661;
t349 = -t661 * t422 + t713 * t663;
t348 = -t661 * t421 + t714 * t663;
t347 = t663 * t422 + t713 * t661;
t346 = t663 * t421 + t714 * t661;
t344 = -pkin(1) * t483 - t661 * t472 + t663 * t678;
t343 = -pkin(1) * t482 - t661 * t473 + t663 * t679;
t342 = -pkin(1) * t568 - t661 * t404 + t727 * t663;
t327 = -t355 * t660 + t393 * t662;
t326 = t355 * t662 + t393 * t660;
t324 = -t359 * t660 + t389 * t662;
t323 = -t358 * t660 + t388 * t662;
t322 = t359 * t662 + t389 * t660;
t321 = t358 * t662 + t388 * t660;
t318 = -t349 * t660 + t386 * t662;
t317 = -t348 * t660 + t385 * t662;
t316 = t349 * t662 + t386 * t660;
t315 = t348 * t662 + t385 * t660;
t313 = pkin(7) * t427 + t379 * t670 + t405 * t667 + t908;
t312 = pkin(7) * t424 + t374 * t670 + t403 * t667 - t871;
t301 = t906 + t667 * t330 + (-pkin(2) - t800) * t853;
t295 = pkin(7) * t428 + t340 * t667 + t345 * t670 - t871;
t293 = -(pkin(2) * t668 - pkin(7) * t671) * t415 + (-t354 * t661 - t355 * t663) * pkin(6);
t292 = pkin(7) * t423 + t339 * t667 + t341 * t670 - t908;
t291 = -pkin(1) * t354 - t661 * t398 + t663 * t674;
t289 = -pkin(2) * t853 + t310 * t667 + t383 * t670 + t906;
t286 = -t661 * t331 + t720 * t663;
t285 = t663 * t331 + t720 * t661;
t284 = pkin(7) * t332 + (-pkin(2) + t733) * t350;
t283 = t671 * t325 - t668 * t353 + (-t356 * t661 - t358 * t663) * pkin(6);
t282 = t671 * t320 - t668 * t352 + (-t347 * t661 - t349 * t663) * pkin(6);
t280 = -t661 * t308 + t721 * t663;
t279 = t663 * t308 + t721 * t661;
t278 = -pkin(1) * t356 - t661 * t313 + t663 * t680;
t277 = -t286 * t660 + t302 * t662;
t276 = t286 * t662 + t302 * t660;
t275 = -pkin(1) * t347 - t661 * t312 + t663 * t681;
t274 = t671 * t298 - t668 * t319 + (-t357 * t661 - t359 * t663) * pkin(6);
t273 = t671 * t296 - t668 * t314 + (-t346 * t661 - t348 * t663) * pkin(6);
t272 = t671 * t303 - t668 * t311 + t916;
t270 = t671 * t290 - t668 * t300 + t916;
t269 = -t661 * t301 + t663 * t682 - t923;
t268 = -pkin(1) * t357 - t661 * t295 + t663 * t683;
t267 = -pkin(2) * t328 + pkin(7) * t309 + t294 * t670 + t297 * t667;
t266 = -pkin(1) * t346 - t661 * t292 + t663 * t684;
t265 = -t280 * t660 + t287 * t662;
t264 = t280 * t662 + t287 * t660;
t263 = -t661 * t289 + t663 * t685 - t923;
t262 = t671 * t288 - t668 * t299 + (-t285 * t661 - t286 * t663) * pkin(6);
t261 = -pkin(1) * t285 - t661 * t284 + t663 * t686;
t260 = t671 * t271 - t668 * t281 + (-t279 * t661 - t280 * t663) * pkin(6);
t259 = -pkin(1) * t279 - t661 * t267 + t663 * t687;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t578, 0, 0, 0, 0, 0, 0, t565, t564, 0, t391, 0, 0, 0, 0, 0, 0, t439, t440, t500, t327, 0, 0, 0, 0, 0, 0, t318, t323, t918, t277, 0, 0, 0, 0, 0, 0, t324, t918, t317, t265; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t577, 0, 0, 0, 0, 0, 0, t563, -t699, 0, t390, 0, 0, 0, 0, 0, 0, t437, t438, t499, t326, 0, 0, 0, 0, 0, 0, t316, t321, t917, t276, 0, 0, 0, 0, 0, 0, t322, t917, t315, t264; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t762, 0, 0, 0, 0, 0, 0, t609, -t608, 0, t451, 0, 0, 0, 0, 0, 0, t482, t483, t568, t354, 0, 0, 0, 0, 0, 0, t347, t356, t911, t285, 0, 0, 0, 0, 0, 0, t357, t911, t346, t279; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t822, -t821, -t577, -qJ(1) * t577, 0, 0, -t564, 0, t565, t660 * t753, -qJ(1) * t563 - t454 * t660 + t515 * t662, qJ(1) * t699 - t453 * t660 + t516 * t662, -t469 * t660 + t476 * t662, -qJ(1) * t390 + t382 * t662 - t392 * t660, -t498 * t660 + t560 * t662, -t474 * t660 + t535 * t662, -t496 * t660 + t558 * t662, -t497 * t660 + t559 * t662, -t495 * t660 + t557 * t662, -t576 * t660 + t598 * t662, -qJ(1) * t437 - t343 * t660 + t364 * t662, -qJ(1) * t438 - t344 * t660 + t365 * t662, -qJ(1) * t499 - t342 * t660 + t384 * t662, -qJ(1) * t326 - t291 * t660 + t293 * t662, t823, t936, t912, t878, -t934, t879, -qJ(1) * t316 - t275 * t660 + t282 * t662, -qJ(1) * t321 - t278 * t660 + t283 * t662, -t269 * t660 + t272 * t662 - t926, -qJ(1) * t276 - t261 * t660 + t262 * t662, t823, t912, -t936, t879, t934, t878, -qJ(1) * t322 - t268 * t660 + t274 * t662, -t263 * t660 + t270 * t662 - t926, -qJ(1) * t315 - t266 * t660 + t273 * t662, -qJ(1) * t264 - t259 * t660 + t260 * t662; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t821, -t822, t578, qJ(1) * t578, 0, 0, t699, 0, t563, -t662 * t753, qJ(1) * t565 + t454 * t662 + t515 * t660, qJ(1) * t564 + t453 * t662 + t516 * t660, t469 * t662 + t476 * t660, qJ(1) * t391 + t382 * t660 + t392 * t662, t498 * t662 + t560 * t660, t474 * t662 + t535 * t660, t496 * t662 + t558 * t660, t497 * t662 + t559 * t660, t495 * t662 + t557 * t660, t576 * t662 + t598 * t660, qJ(1) * t439 + t343 * t662 + t364 * t660, qJ(1) * t440 + t344 * t662 + t365 * t660, qJ(1) * t500 + t342 * t662 + t384 * t660, qJ(1) * t327 + t291 * t662 + t293 * t660, t824, -t935, t910, t876, t933, t877, qJ(1) * t318 + t275 * t662 + t282 * t660, qJ(1) * t323 + t278 * t662 + t283 * t660, t269 * t662 + t272 * t660 + t925, qJ(1) * t277 + t261 * t662 + t262 * t660, t824, t910, t935, t877, -t933, t876, qJ(1) * t324 + t268 * t662 + t274 * t660, t263 * t662 + t270 * t660 + t925, qJ(1) * t317 + t266 * t662 + t273 * t660, qJ(1) * t265 + t259 * t662 + t260 * t660; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t741, t636, 0, 0, 0, 0, t608, 0, t609, t663 * qJDD(2), pkin(1) * t611 - t663 * t553 + t661 * t725, -pkin(1) * t610 - t663 * t554 + t661 * t726, t477 * t661, pkin(1) * t452 + t661 * t798, t663 * t583 + t661 * t688, t663 * t570 + t661 * t702, t663 * t586 + t661 * t691, -t663 * t582 + t661 * t689, t663 * t584 + t661 * t692, t696 * t661, pkin(1) * t484 + t663 * t473 + t661 * t679, pkin(1) * t485 + t663 * t472 + t661 * t678, pkin(1) * t569 + t663 * t404 + t661 * t727, pkin(1) * t355 + t663 * t398 + t661 * t674, t806, -t927, t891, t851, t928, t850, pkin(1) * t349 + t663 * t312 + t661 * t681, pkin(1) * t358 + t663 * t313 + t661 * t680, t663 * t301 + t661 * t682 + t924, pkin(1) * t286 + t663 * t284 + t661 * t686, t806, t891, t927, t850, -t928, t851, pkin(1) * t359 + t663 * t295 + t661 * t683, t663 * t289 + t661 * t685 + t924, pkin(1) * t348 + t663 * t292 + t661 * t684, pkin(1) * t280 + t663 * t267 + t661 * t687;];
tauB_reg = t1;
