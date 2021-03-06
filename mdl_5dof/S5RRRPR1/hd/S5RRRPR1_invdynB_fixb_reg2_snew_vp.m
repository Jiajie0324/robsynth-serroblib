% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRRPR1
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:39
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRRPR1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR1_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR1_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR1_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR1_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:39:07
% EndTime: 2019-12-05 18:39:24
% DurationCPUTime: 16.57s
% Computational Cost: add. (134070->671), mult. (310225->1032), div. (0->0), fcn. (226450->10), ass. (0->467)
t773 = sin(pkin(9));
t776 = sin(qJ(3));
t780 = cos(qJ(3));
t781 = cos(qJ(2));
t777 = sin(qJ(2));
t812 = qJD(1) * t777;
t729 = -t780 * t781 * qJD(1) + t776 * t812;
t731 = (t776 * t781 + t777 * t780) * qJD(1);
t774 = cos(pkin(9));
t694 = t774 * t729 + t731 * t773;
t696 = -t729 * t773 + t731 * t774;
t641 = t696 * t694;
t769 = qJDD(2) + qJDD(3);
t851 = -t641 + t769;
t860 = t773 * t851;
t859 = t774 * t851;
t775 = sin(qJ(5));
t779 = cos(qJ(5));
t631 = t779 * t694 + t696 * t775;
t633 = -t694 * t775 + t696 * t779;
t581 = t633 * t631;
t794 = qJDD(5) + t769;
t854 = -t581 + t794;
t858 = t775 * t854;
t702 = t731 * t729;
t850 = -t702 + t769;
t857 = t776 * t850;
t856 = t779 * t854;
t855 = t780 * t850;
t770 = qJD(2) + qJD(3);
t723 = t770 * t729;
t809 = qJD(1) * qJD(2);
t798 = t781 * t809;
t808 = qJDD(1) * t777;
t740 = t798 + t808;
t764 = t781 * qJDD(1);
t799 = t777 * t809;
t741 = t764 - t799;
t786 = qJD(3) * t729 - t740 * t780 - t741 * t776;
t653 = -t723 + t786;
t795 = t776 * t740 - t780 * t741;
t671 = -qJD(3) * t731 - t795;
t619 = t671 * t773 - t774 * t786;
t687 = t770 * t694;
t596 = -t619 - t687;
t853 = t619 - t687;
t763 = qJD(5) + t770;
t626 = t763 * t631;
t796 = -t774 * t671 - t773 * t786;
t785 = qJD(5) * t631 - t619 * t779 + t775 * t796;
t852 = -t626 - t785;
t849 = -t723 - t786;
t797 = t775 * t619 + t779 * t796;
t510 = (qJD(5) - t763) * t633 + t797;
t649 = (qJD(3) - t770) * t731 + t795;
t629 = t631 ^ 2;
t630 = t633 ^ 2;
t691 = t694 ^ 2;
t692 = t696 ^ 2;
t727 = t729 ^ 2;
t728 = t731 ^ 2;
t761 = t763 ^ 2;
t848 = t770 ^ 2;
t784 = qJD(1) ^ 2;
t814 = t777 * t784;
t778 = sin(qJ(1));
t782 = cos(qJ(1));
t751 = g(1) * t782 + g(2) * t778;
t733 = -pkin(1) * t784 + qJDD(1) * pkin(6) - t751;
t815 = t777 * t733;
t663 = qJDD(2) * pkin(2) - t740 * pkin(7) - t815 + (pkin(2) * t814 + pkin(7) * t809 - g(3)) * t781;
t717 = -t777 * g(3) + t781 * t733;
t772 = t781 ^ 2;
t766 = t772 * t784;
t788 = qJD(2) * pkin(2) - pkin(7) * t812;
t667 = -pkin(2) * t766 + t741 * pkin(7) - qJD(2) * t788 + t717;
t615 = -t780 * t663 + t776 * t667;
t563 = t850 * pkin(3) + t653 * qJ(4) - t615;
t616 = t776 * t663 + t780 * t667;
t789 = pkin(3) * t770 - qJ(4) * t731;
t567 = -t727 * pkin(3) + t671 * qJ(4) - t770 * t789 + t616;
t499 = 0.2e1 * qJD(4) * t696 - t774 * t563 + t773 * t567;
t470 = t851 * pkin(4) + t596 * pkin(8) - t499;
t500 = -0.2e1 * qJD(4) * t694 + t773 * t563 + t774 * t567;
t791 = pkin(4) * t770 - pkin(8) * t696;
t474 = -t691 * pkin(4) - pkin(8) * t796 - t770 * t791 + t500;
t424 = -t779 * t470 + t474 * t775;
t425 = t775 * t470 + t779 * t474;
t395 = -t424 * t779 + t425 * t775;
t847 = t395 * t773;
t846 = t395 * t774;
t448 = -t499 * t774 + t500 * t773;
t845 = t448 * t776;
t844 = t448 * t780;
t750 = t778 * g(1) - t782 * g(2);
t787 = qJDD(1) * pkin(1) + t750;
t674 = t741 * pkin(2) - t788 * t812 + (pkin(7) * t772 + pkin(6)) * t784 + t787;
t586 = t671 * pkin(3) + t727 * qJ(4) - t731 * t789 - qJDD(4) + t674;
t516 = -pkin(4) * t796 + t691 * pkin(8) - t696 * t791 + t586;
t843 = t516 * t775;
t842 = t516 * t779;
t559 = -t615 * t780 + t616 * t776;
t841 = t559 * t777;
t840 = t559 * t781;
t576 = t581 + t794;
t839 = t576 * t775;
t838 = t576 * t779;
t837 = t586 * t773;
t836 = t586 * t774;
t636 = t641 + t769;
t835 = t636 * t773;
t834 = t636 * t774;
t833 = t674 * t776;
t832 = t674 * t780;
t831 = t696 * t770;
t699 = t702 + t769;
t830 = t699 * t776;
t829 = t699 * t780;
t732 = pkin(6) * t784 + t787;
t828 = t732 * t777;
t827 = t732 * t781;
t758 = t781 * t814;
t748 = qJDD(2) + t758;
t826 = t748 * t777;
t749 = qJDD(2) - t758;
t825 = t749 * t777;
t824 = t749 * t781;
t823 = t763 * t775;
t822 = t763 * t779;
t821 = t769 * t778;
t820 = t770 * t773;
t819 = t770 * t774;
t818 = t770 * t776;
t817 = t770 * t780;
t771 = t777 ^ 2;
t816 = t771 * t784;
t813 = t771 + t772;
t807 = qJDD(1) * t778;
t806 = qJDD(1) * t782;
t805 = t778 * t581;
t804 = t782 * t581;
t803 = t778 * t641;
t802 = t782 * t641;
t801 = t778 * t702;
t800 = t782 * t702;
t396 = t424 * t775 + t779 * t425;
t449 = t499 * t773 + t774 * t500;
t560 = t615 * t776 + t780 * t616;
t716 = t781 * g(3) + t815;
t666 = t716 * t777 + t781 * t717;
t708 = -t750 * t778 - t782 * t751;
t793 = t778 * t758;
t792 = t782 * t758;
t745 = -t778 * t784 + t806;
t790 = -pkin(5) * t745 - g(3) * t778;
t665 = t716 * t781 - t717 * t777;
t707 = t750 * t782 - t751 * t778;
t592 = t796 - t831;
t783 = qJD(2) ^ 2;
t759 = t782 * t769;
t756 = -t766 - t783;
t755 = t766 - t783;
t754 = -t783 - t816;
t753 = t783 - t816;
t747 = t766 - t816;
t746 = t766 + t816;
t744 = t782 * t784 + t807;
t743 = t813 * qJDD(1);
t742 = t764 - 0.2e1 * t799;
t739 = 0.2e1 * t798 + t808;
t737 = t781 * t748;
t736 = t813 * t809;
t726 = -pkin(5) * t744 + g(3) * t782;
t721 = -t728 + t848;
t720 = t727 - t848;
t719 = t740 * t781 - t771 * t809;
t718 = -t741 * t777 - t772 * t809;
t715 = -t728 - t848;
t714 = -t754 * t777 - t824;
t713 = -t753 * t777 + t737;
t712 = t756 * t781 - t826;
t711 = t755 * t781 - t825;
t710 = t754 * t781 - t825;
t709 = t756 * t777 + t737;
t705 = t743 * t782 - t746 * t778;
t704 = t743 * t778 + t746 * t782;
t703 = -t739 * t777 + t742 * t781;
t701 = -t728 + t727;
t697 = -t848 - t727;
t685 = t714 * t782 + t739 * t778;
t684 = t712 * t782 - t742 * t778;
t683 = t714 * t778 - t739 * t782;
t682 = t712 * t778 + t742 * t782;
t681 = -t692 + t848;
t680 = t691 - t848;
t679 = (-t729 * t780 + t731 * t776) * t770;
t678 = (-t729 * t776 - t731 * t780) * t770;
t677 = -pkin(6) * t710 - t827;
t676 = -pkin(6) * t709 - t828;
t675 = -t692 - t848;
t673 = -t727 - t728;
t670 = -pkin(1) * t710 + t717;
t669 = -pkin(1) * t709 + t716;
t659 = t720 * t780 - t830;
t658 = -t721 * t776 + t855;
t657 = t720 * t776 + t829;
t656 = t721 * t780 + t857;
t655 = -t715 * t776 - t829;
t654 = t715 * t780 - t830;
t648 = (qJD(3) + t770) * t731 + t795;
t647 = -t731 * t818 - t780 * t786;
t646 = t731 * t817 - t776 * t786;
t645 = -t671 * t776 + t729 * t817;
t644 = t671 * t780 + t729 * t818;
t643 = t666 * t782 - t732 * t778;
t642 = t666 * t778 + t732 * t782;
t640 = t697 * t780 - t857;
t639 = t697 * t776 + t855;
t638 = -t692 + t691;
t634 = -t848 - t691;
t625 = -t630 + t761;
t624 = t629 - t761;
t623 = (-t694 * t774 + t696 * t773) * t770;
t622 = (-t694 * t773 - t696 * t774) * t770;
t621 = -t630 - t761;
t620 = -t678 * t777 + t679 * t781;
t614 = -t691 - t692;
t612 = -pkin(7) * t654 - t832;
t611 = -pkin(7) * t639 - t833;
t610 = -t657 * t777 + t659 * t781;
t609 = -t656 * t777 + t658 * t781;
t608 = t680 * t774 - t835;
t607 = -t681 * t773 + t859;
t606 = t680 * t773 + t834;
t605 = t681 * t774 + t860;
t604 = -t675 * t773 - t834;
t603 = t675 * t774 - t835;
t602 = -t654 * t777 + t655 * t781;
t601 = t654 * t781 + t655 * t777;
t600 = -t649 * t780 - t653 * t776;
t599 = -t648 * t780 - t776 * t849;
t598 = -t649 * t776 + t653 * t780;
t597 = -t648 * t776 + t780 * t849;
t591 = t796 + t831;
t590 = t619 * t774 - t696 * t820;
t589 = t619 * t773 + t696 * t819;
t588 = t694 * t819 + t773 * t796;
t587 = t694 * t820 - t774 * t796;
t585 = -t646 * t777 + t647 * t781;
t584 = -t644 * t777 + t645 * t781;
t583 = -t639 * t777 + t640 * t781;
t582 = t639 * t781 + t640 * t777;
t580 = -t630 + t629;
t579 = t634 * t774 - t860;
t578 = t634 * t773 + t859;
t574 = -t761 - t629;
t573 = (-t631 * t779 + t633 * t775) * t763;
t572 = (-t631 * t775 - t633 * t779) * t763;
t571 = -pkin(2) * t849 + pkin(7) * t655 - t833;
t570 = -t622 * t776 + t623 * t780;
t569 = t622 * t780 + t623 * t776;
t568 = -pkin(2) * t648 + pkin(7) * t640 + t832;
t565 = t602 * t782 + t778 * t849;
t564 = t602 * t778 - t782 * t849;
t558 = t583 * t782 + t648 * t778;
t557 = t583 * t778 - t648 * t782;
t556 = -t629 - t630;
t555 = t624 * t779 - t839;
t554 = -t625 * t775 + t856;
t553 = t624 * t775 + t838;
t552 = t625 * t779 + t858;
t551 = -t606 * t776 + t608 * t780;
t550 = -t605 * t776 + t607 * t780;
t549 = t606 * t780 + t608 * t776;
t548 = t605 * t780 + t607 * t776;
t547 = -t621 * t775 - t838;
t546 = t621 * t779 - t839;
t545 = -t603 * t776 + t604 * t780;
t544 = t603 * t780 + t604 * t776;
t543 = pkin(2) * t674 + pkin(7) * t560;
t542 = -t598 * t777 + t600 * t781;
t541 = -t597 * t777 + t599 * t781;
t540 = t598 * t781 + t600 * t777;
t539 = -qJ(4) * t603 - t836;
t538 = -t592 * t774 - t596 * t773;
t537 = -t591 * t774 - t773 * t853;
t536 = -t592 * t773 + t596 * t774;
t535 = -t591 * t773 + t774 * t853;
t533 = -qJD(5) * t633 - t797;
t532 = -t589 * t776 + t590 * t780;
t531 = -t587 * t776 + t588 * t780;
t530 = t589 * t780 + t590 * t776;
t529 = t587 * t780 + t588 * t776;
t528 = -pkin(1) * t601 - pkin(2) * t654 + t616;
t527 = -qJ(4) * t578 - t837;
t526 = t542 * t782 + t673 * t778;
t525 = t542 * t778 - t673 * t782;
t524 = -t578 * t776 + t579 * t780;
t523 = t578 * t780 + t579 * t776;
t522 = t574 * t779 - t858;
t521 = t574 * t775 + t856;
t520 = -pkin(1) * t582 - pkin(2) * t639 + t615;
t519 = -t572 * t773 + t573 * t774;
t518 = t572 * t774 + t573 * t773;
t517 = -pkin(7) * t598 - t559;
t515 = -t569 * t777 + t570 * t781;
t514 = -t626 + t785;
t509 = (qJD(5) + t763) * t633 + t797;
t508 = -t633 * t823 - t779 * t785;
t507 = t633 * t822 - t775 * t785;
t506 = -t533 * t775 + t631 * t822;
t505 = t533 * t779 + t631 * t823;
t504 = -pkin(2) * t673 + pkin(7) * t600 + t560;
t503 = -pkin(1) * t540 - pkin(2) * t598;
t502 = -pkin(3) * t853 + qJ(4) * t604 - t837;
t501 = -pkin(6) * t601 - t571 * t777 + t612 * t781;
t498 = -pkin(3) * t591 + qJ(4) * t579 + t836;
t497 = t560 * t781 - t841;
t496 = t560 * t777 + t840;
t494 = -pkin(6) * t582 - t568 * t777 + t611 * t781;
t493 = t497 * t782 - t674 * t778;
t492 = t497 * t778 + t674 * t782;
t491 = -t553 * t773 + t555 * t774;
t490 = -t552 * t773 + t554 * t774;
t489 = t553 * t774 + t555 * t773;
t488 = t552 * t774 + t554 * t773;
t487 = -t549 * t777 + t551 * t781;
t486 = -t548 * t777 + t550 * t781;
t485 = -t546 * t773 + t547 * t774;
t484 = t546 * t774 + t547 * t773;
t483 = -t544 * t777 + t545 * t781;
t482 = t544 * t781 + t545 * t777;
t481 = -t536 * t776 + t538 * t780;
t480 = -t535 * t776 + t537 * t780;
t479 = t536 * t780 + t538 * t776;
t478 = t535 * t780 + t537 * t776;
t477 = -t530 * t777 + t532 * t781;
t476 = -t529 * t777 + t531 * t781;
t475 = -pkin(8) * t546 - t842;
t472 = -t523 * t777 + t524 * t781;
t471 = t523 * t781 + t524 * t777;
t467 = -t521 * t773 + t522 * t774;
t466 = t521 * t774 + t522 * t773;
t465 = t483 * t782 + t778 * t853;
t464 = t483 * t778 - t782 * t853;
t463 = -pkin(1) * t496 - pkin(2) * t559;
t462 = -pkin(8) * t521 - t843;
t461 = -t518 * t776 + t519 * t780;
t460 = t518 * t780 + t519 * t776;
t459 = -t510 * t779 - t514 * t775;
t458 = -t509 * t779 - t775 * t852;
t457 = -t510 * t775 + t514 * t779;
t456 = -t509 * t775 + t779 * t852;
t455 = -t507 * t773 + t508 * t774;
t454 = -t505 * t773 + t506 * t774;
t453 = t507 * t774 + t508 * t773;
t452 = t505 * t774 + t506 * t773;
t451 = t472 * t782 + t591 * t778;
t450 = t472 * t778 - t591 * t782;
t447 = -pkin(6) * t496 - pkin(7) * t840 - t543 * t777;
t446 = -pkin(7) * t544 - t502 * t776 + t539 * t780;
t445 = -pkin(4) * t852 + pkin(8) * t547 - t843;
t444 = -pkin(6) * t540 - t504 * t777 + t517 * t781;
t443 = -t489 * t776 + t491 * t780;
t442 = -t488 * t776 + t490 * t780;
t441 = t489 * t780 + t491 * t776;
t440 = t488 * t780 + t490 * t776;
t439 = pkin(3) * t586 + qJ(4) * t449;
t438 = -t484 * t776 + t485 * t780;
t437 = t484 * t780 + t485 * t776;
t436 = -pkin(4) * t509 + pkin(8) * t522 + t842;
t435 = -pkin(7) * t523 - t498 * t776 + t527 * t780;
t434 = -pkin(2) * t853 + pkin(7) * t545 + t502 * t780 + t539 * t776;
t433 = -t479 * t777 + t481 * t781;
t432 = -t478 * t777 + t480 * t781;
t431 = t479 * t781 + t481 * t777;
t430 = -qJ(4) * t536 - t448;
t429 = -pkin(2) * t591 + pkin(7) * t524 + t498 * t780 + t527 * t776;
t428 = t433 * t782 + t614 * t778;
t427 = t433 * t778 - t614 * t782;
t426 = -pkin(3) * t614 + qJ(4) * t538 + t449;
t422 = -t466 * t776 + t467 * t780;
t421 = t466 * t780 + t467 * t776;
t420 = -pkin(1) * t482 - pkin(2) * t544 - pkin(3) * t603 + t500;
t419 = -t460 * t777 + t461 * t781;
t418 = -t457 * t773 + t459 * t774;
t417 = -t456 * t773 + t458 * t774;
t416 = t457 * t774 + t459 * t773;
t415 = t456 * t774 + t458 * t773;
t414 = -t453 * t776 + t455 * t780;
t413 = -t452 * t776 + t454 * t780;
t412 = t453 * t780 + t455 * t776;
t411 = t452 * t780 + t454 * t776;
t410 = -pkin(1) * t471 - pkin(2) * t523 - pkin(3) * t578 + t499;
t409 = t449 * t780 - t845;
t408 = t449 * t776 + t844;
t407 = -pkin(1) * t431 - pkin(2) * t479 - pkin(3) * t536;
t406 = -t441 * t777 + t443 * t781;
t405 = -t440 * t777 + t442 * t781;
t404 = -t437 * t777 + t438 * t781;
t403 = t437 * t781 + t438 * t777;
t402 = -qJ(4) * t484 - t445 * t773 + t475 * t774;
t401 = -qJ(4) * t466 - t436 * t773 + t462 * t774;
t400 = t404 * t782 + t778 * t852;
t399 = t404 * t778 - t782 * t852;
t398 = -pkin(3) * t852 + qJ(4) * t485 + t445 * t774 + t475 * t773;
t397 = -pkin(6) * t482 - t434 * t777 + t446 * t781;
t394 = -t421 * t777 + t422 * t781;
t393 = t421 * t781 + t422 * t777;
t392 = -pkin(3) * t509 + qJ(4) * t467 + t436 * t774 + t462 * t773;
t391 = -t416 * t776 + t418 * t780;
t390 = -t415 * t776 + t417 * t780;
t389 = t416 * t780 + t418 * t776;
t388 = t415 * t780 + t417 * t776;
t387 = pkin(4) * t516 + pkin(8) * t396;
t386 = -pkin(6) * t471 - t429 * t777 + t435 * t781;
t385 = -t412 * t777 + t414 * t781;
t384 = -t411 * t777 + t413 * t781;
t383 = -pkin(7) * t479 - t426 * t776 + t430 * t780;
t382 = t394 * t782 + t509 * t778;
t381 = t394 * t778 - t509 * t782;
t380 = -pkin(2) * t614 + pkin(7) * t481 + t426 * t780 + t430 * t776;
t379 = -pkin(8) * t457 - t395;
t378 = -pkin(4) * t556 + pkin(8) * t459 + t396;
t377 = -t408 * t777 + t409 * t781;
t376 = t408 * t781 + t409 * t777;
t375 = -pkin(7) * t408 - qJ(4) * t844 - t439 * t776;
t374 = t377 * t782 - t586 * t778;
t373 = t377 * t778 + t586 * t782;
t372 = pkin(2) * t586 + pkin(7) * t409 - qJ(4) * t845 + t439 * t780;
t371 = t396 * t774 - t847;
t370 = t396 * t773 + t846;
t369 = -pkin(1) * t403 - pkin(2) * t437 - pkin(3) * t484 - pkin(4) * t546 + t425;
t368 = -pkin(7) * t437 - t398 * t776 + t402 * t780;
t367 = -t389 * t777 + t391 * t781;
t366 = -t388 * t777 + t390 * t781;
t365 = t389 * t781 + t391 * t777;
t364 = -pkin(2) * t852 + pkin(7) * t438 + t398 * t780 + t402 * t776;
t363 = t367 * t782 + t556 * t778;
t362 = t367 * t778 - t556 * t782;
t361 = -pkin(1) * t376 - pkin(2) * t408 - pkin(3) * t448;
t360 = -pkin(1) * t393 - pkin(2) * t421 - pkin(3) * t466 - pkin(4) * t521 + t424;
t359 = -pkin(7) * t421 - t392 * t776 + t401 * t780;
t358 = -pkin(2) * t509 + pkin(7) * t422 + t392 * t780 + t401 * t776;
t357 = -pkin(6) * t431 - t380 * t777 + t383 * t781;
t356 = -qJ(4) * t416 - t378 * t773 + t379 * t774;
t355 = -pkin(3) * t556 + qJ(4) * t418 + t378 * t774 + t379 * t773;
t354 = -t370 * t776 + t371 * t780;
t353 = t370 * t780 + t371 * t776;
t352 = -pkin(8) * t846 - qJ(4) * t370 - t387 * t773;
t351 = -pkin(1) * t365 - pkin(2) * t389 - pkin(3) * t416 - pkin(4) * t457;
t350 = pkin(3) * t516 - pkin(8) * t847 + qJ(4) * t371 + t387 * t774;
t349 = -pkin(6) * t376 - t372 * t777 + t375 * t781;
t348 = -pkin(6) * t403 - t364 * t777 + t368 * t781;
t347 = -pkin(6) * t393 - t358 * t777 + t359 * t781;
t346 = -pkin(7) * t389 - t355 * t776 + t356 * t780;
t345 = -pkin(2) * t556 + pkin(7) * t391 + t355 * t780 + t356 * t776;
t344 = -t353 * t777 + t354 * t781;
t343 = t353 * t781 + t354 * t777;
t342 = t344 * t782 - t516 * t778;
t341 = t344 * t778 + t516 * t782;
t340 = -pkin(7) * t353 - t350 * t776 + t352 * t780;
t339 = pkin(2) * t516 + pkin(7) * t354 + t350 * t780 + t352 * t776;
t338 = -pkin(1) * t343 - pkin(2) * t353 - pkin(3) * t370 - pkin(4) * t395;
t337 = -pkin(6) * t365 - t345 * t777 + t346 * t781;
t336 = -pkin(6) * t343 - t339 * t777 + t340 * t781;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t744, -t745, 0, t708, 0, 0, 0, 0, 0, 0, t684, t685, t705, t643, 0, 0, 0, 0, 0, 0, t558, t565, t526, t493, 0, 0, 0, 0, 0, 0, t451, t465, t428, t374, 0, 0, 0, 0, 0, 0, t382, t400, t363, t342; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t745, -t744, 0, t707, 0, 0, 0, 0, 0, 0, t682, t683, t704, t642, 0, 0, 0, 0, 0, 0, t557, t564, t525, t492, 0, 0, 0, 0, 0, 0, t450, t464, t427, t373, 0, 0, 0, 0, 0, 0, t381, t399, t362, t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t709, t710, 0, -t665, 0, 0, 0, 0, 0, 0, t582, t601, t540, t496, 0, 0, 0, 0, 0, 0, t471, t482, t431, t376, 0, 0, 0, 0, 0, 0, t393, t403, t365, t343; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t745, 0, -t744, 0, t790, -t726, -t707, -pkin(5) * t707, t719 * t782 - t793, t703 * t782 - t747 * t778, t713 * t782 + t777 * t807, t718 * t782 + t793, t711 * t782 + t778 * t764, qJDD(2) * t778 + t736 * t782, -pkin(5) * t682 - t669 * t778 + t676 * t782, -pkin(5) * t683 - t670 * t778 + t677 * t782, -pkin(5) * t704 + t665 * t782, -pkin(5) * t642 - (pkin(1) * t778 - pkin(6) * t782) * t665, t585 * t782 + t801, t541 * t782 - t701 * t778, t609 * t782 - t653 * t778, t584 * t782 - t801, t610 * t782 - t649 * t778, t620 * t782 + t821, -pkin(5) * t557 + t494 * t782 - t520 * t778, -pkin(5) * t564 + t501 * t782 - t528 * t778, -pkin(5) * t525 + t444 * t782 - t503 * t778, -pkin(5) * t492 + t447 * t782 - t463 * t778, t477 * t782 + t803, t432 * t782 - t638 * t778, t486 * t782 - t596 * t778, t476 * t782 - t803, t487 * t782 - t592 * t778, t515 * t782 + t821, -pkin(5) * t450 + t386 * t782 - t410 * t778, -pkin(5) * t464 + t397 * t782 - t420 * t778, -pkin(5) * t427 + t357 * t782 - t407 * t778, -pkin(5) * t373 + t349 * t782 - t361 * t778, t385 * t782 + t805, t366 * t782 - t580 * t778, t405 * t782 - t514 * t778, t384 * t782 - t805, t406 * t782 - t510 * t778, t419 * t782 + t778 * t794, -pkin(5) * t381 + t347 * t782 - t360 * t778, -pkin(5) * t399 + t348 * t782 - t369 * t778, -pkin(5) * t362 + t337 * t782 - t351 * t778, -pkin(5) * t341 + t336 * t782 - t338 * t778; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t744, 0, t745, 0, t726, t790, t708, pkin(5) * t708, t719 * t778 + t792, t703 * t778 + t747 * t782, t713 * t778 - t777 * t806, t718 * t778 - t792, t711 * t778 - t782 * t764, -qJDD(2) * t782 + t736 * t778, pkin(5) * t684 + t669 * t782 + t676 * t778, pkin(5) * t685 + t670 * t782 + t677 * t778, pkin(5) * t705 + t665 * t778, pkin(5) * t643 - (-pkin(1) * t782 - pkin(6) * t778) * t665, t585 * t778 - t800, t541 * t778 + t701 * t782, t609 * t778 + t653 * t782, t584 * t778 + t800, t610 * t778 + t649 * t782, t620 * t778 - t759, pkin(5) * t558 + t494 * t778 + t520 * t782, pkin(5) * t565 + t501 * t778 + t528 * t782, pkin(5) * t526 + t444 * t778 + t503 * t782, pkin(5) * t493 + t447 * t778 + t463 * t782, t477 * t778 - t802, t432 * t778 + t638 * t782, t486 * t778 + t596 * t782, t476 * t778 + t802, t487 * t778 + t592 * t782, t515 * t778 - t759, pkin(5) * t451 + t386 * t778 + t410 * t782, pkin(5) * t465 + t397 * t778 + t420 * t782, pkin(5) * t428 + t357 * t778 + t407 * t782, pkin(5) * t374 + t349 * t778 + t361 * t782, t385 * t778 - t804, t366 * t778 + t580 * t782, t405 * t778 + t514 * t782, t384 * t778 + t804, t406 * t778 + t510 * t782, t419 * t778 - t782 * t794, pkin(5) * t382 + t347 * t778 + t360 * t782, pkin(5) * t400 + t348 * t778 + t369 * t782, pkin(5) * t363 + t337 * t778 + t351 * t782, pkin(5) * t342 + t336 * t778 + t338 * t782; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t750, t751, 0, 0, (t740 + t798) * t777, t739 * t781 + t742 * t777, t753 * t781 + t826, (t741 - t799) * t781, t755 * t777 + t824, 0, pkin(1) * t742 + pkin(6) * t712 + t827, -pkin(1) * t739 + pkin(6) * t714 - t828, pkin(1) * t746 + pkin(6) * t743 + t666, pkin(1) * t732 + pkin(6) * t666, t646 * t781 + t647 * t777, t597 * t781 + t599 * t777, t656 * t781 + t658 * t777, t644 * t781 + t645 * t777, t657 * t781 + t659 * t777, t678 * t781 + t679 * t777, -pkin(1) * t648 + pkin(6) * t583 + t568 * t781 + t611 * t777, -pkin(1) * t849 + pkin(6) * t602 + t571 * t781 + t612 * t777, -pkin(1) * t673 + pkin(6) * t542 + t504 * t781 + t517 * t777, pkin(1) * t674 + pkin(6) * t497 - pkin(7) * t841 + t543 * t781, t530 * t781 + t532 * t777, t478 * t781 + t480 * t777, t548 * t781 + t550 * t777, t529 * t781 + t531 * t777, t549 * t781 + t551 * t777, t569 * t781 + t570 * t777, -pkin(1) * t591 + pkin(6) * t472 + t429 * t781 + t435 * t777, -pkin(1) * t853 + pkin(6) * t483 + t434 * t781 + t446 * t777, -pkin(1) * t614 + pkin(6) * t433 + t380 * t781 + t383 * t777, pkin(1) * t586 + pkin(6) * t377 + t372 * t781 + t375 * t777, t412 * t781 + t414 * t777, t388 * t781 + t390 * t777, t440 * t781 + t442 * t777, t411 * t781 + t413 * t777, t441 * t781 + t443 * t777, t460 * t781 + t461 * t777, -pkin(1) * t509 + pkin(6) * t394 + t358 * t781 + t359 * t777, -pkin(1) * t852 + pkin(6) * t404 + t364 * t781 + t368 * t777, -pkin(1) * t556 + pkin(6) * t367 + t345 * t781 + t346 * t777, pkin(1) * t516 + pkin(6) * t344 + t339 * t781 + t340 * t777;];
tauB_reg = t1;
