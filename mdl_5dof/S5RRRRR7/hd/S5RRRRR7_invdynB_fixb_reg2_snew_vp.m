% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRRRR7
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:23
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRRRR7_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR7_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR7_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRR7_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR7_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR7_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:22:43
% EndTime: 2019-12-31 22:23:03
% DurationCPUTime: 16.81s
% Computational Cost: add. (103546->681), mult. (226275->1040), div. (0->0), fcn. (167668->10), ass. (0->466)
t778 = cos(qJ(2));
t762 = t778 * qJDD(1);
t773 = sin(qJ(2));
t814 = qJD(1) * qJD(2);
t801 = t773 * t814;
t737 = t762 - t801;
t769 = t778 ^ 2;
t781 = qJD(1) ^ 2;
t774 = sin(qJ(1));
t779 = cos(qJ(1));
t746 = g(1) * t774 - t779 * g(2);
t790 = qJDD(1) * pkin(1) + t746;
t818 = qJD(1) * t773;
t791 = qJD(2) * pkin(2) - pkin(7) * t818;
t673 = pkin(2) * t737 - t791 * t818 + t790 + (pkin(7) * t769 + pkin(6)) * t781;
t770 = sin(qJ(5));
t772 = sin(qJ(3));
t777 = cos(qJ(3));
t726 = t777 * t778 * qJD(1) - t772 * t818;
t727 = (t772 * t778 + t773 * t777) * qJD(1);
t771 = sin(qJ(4));
t776 = cos(qJ(4));
t693 = t771 * t726 + t727 * t776;
t767 = qJD(2) + qJD(3);
t761 = qJD(4) + t767;
t775 = cos(qJ(5));
t664 = t693 * t770 - t775 * t761;
t666 = t693 * t775 + t761 * t770;
t621 = t666 * t664;
t800 = t778 * t814;
t813 = t773 * qJDD(1);
t736 = t800 + t813;
t797 = t736 * t772 - t777 * t737;
t670 = -qJD(3) * t727 - t797;
t671 = t726 * qJD(3) + t777 * t736 + t772 * t737;
t798 = -t776 * t670 + t671 * t771;
t596 = -qJD(4) * t693 - t798;
t788 = qJDD(5) - t596;
t857 = -t621 + t788;
t864 = t770 * t857;
t691 = -t776 * t726 + t727 * t771;
t636 = t693 * t691;
t810 = qJDD(2) + qJDD(3);
t760 = qJDD(4) + t810;
t856 = -t636 + t760;
t863 = t771 * t856;
t699 = t726 * t727;
t853 = t699 + t810;
t862 = t772 * t853;
t861 = t775 * t857;
t860 = t776 * t856;
t859 = t777 * t853;
t680 = t761 * t691;
t787 = t691 * qJD(4) - t771 * t670 - t671 * t776;
t858 = t787 + t680;
t724 = t726 ^ 2;
t793 = pkin(3) * t767 - t727 * pkin(8);
t592 = pkin(3) * t670 + pkin(8) * t724 - t727 * t793 + t673;
t569 = -t664 * qJD(5) + t770 * t760 - t775 * t787;
t687 = qJD(5) + t691;
t627 = t687 * t664;
t541 = -t627 + t569;
t720 = t767 * t726;
t648 = -t671 + t720;
t855 = t671 + t720;
t764 = t769 * t781;
t780 = qJD(2) ^ 2;
t754 = -t764 - t780;
t827 = t773 * t781;
t747 = t779 * g(1) + t774 * g(2);
t729 = -t781 * pkin(1) + qJDD(1) * pkin(6) - t747;
t830 = t773 * t729;
t852 = (pkin(2) * t827 + pkin(7) * t814 - g(3)) * t778 + qJDD(2) * pkin(2) - t736 * pkin(7) - t830;
t799 = -t775 * t760 - t770 * t787;
t538 = (qJD(5) - t687) * t666 + t799;
t579 = (qJD(4) - t761) * t693 + t798;
t644 = (qJD(3) - t767) * t727 + t797;
t662 = t664 ^ 2;
t663 = t666 ^ 2;
t686 = t687 ^ 2;
t689 = t691 ^ 2;
t690 = t693 ^ 2;
t725 = t727 ^ 2;
t851 = t761 ^ 2;
t766 = t767 ^ 2;
t850 = pkin(4) * t771;
t714 = -t773 * g(3) + t778 * t729;
t783 = -pkin(2) * t764 + t737 * pkin(7) - qJD(2) * t791 + t714;
t619 = t772 * t852 + t777 * t783;
t567 = -t724 * pkin(3) + t670 * pkin(8) - t767 * t793 + t619;
t618 = t772 * t783 - t777 * t852;
t782 = pkin(3) * t853 + pkin(8) * t648 - t618;
t499 = t567 * t771 - t776 * t782;
t632 = pkin(4) * t691 - pkin(9) * t693;
t483 = -t760 * pkin(4) - t851 * pkin(9) + t632 * t693 + t499;
t849 = t483 * t770;
t848 = t483 * t775;
t556 = t621 + t788;
t847 = t556 * t770;
t846 = t556 * t775;
t845 = t592 * t771;
t844 = t592 * t776;
t630 = t636 + t760;
t843 = t630 * t776;
t842 = t673 * t772;
t841 = t687 * t770;
t840 = t687 * t775;
t728 = t781 * pkin(6) + t790;
t839 = t728 * t773;
t838 = t761 * t771;
t837 = t761 * t776;
t836 = t767 * t772;
t835 = t767 * t777;
t834 = t771 * t630;
t500 = t776 * t567 + t771 * t782;
t445 = -t499 * t776 + t771 * t500;
t833 = t772 * t445;
t696 = -t699 + t810;
t832 = t772 * t696;
t560 = -t777 * t618 + t772 * t619;
t831 = t773 * t560;
t756 = t778 * t827;
t744 = qJDD(2) + t756;
t829 = t773 * t744;
t745 = qJDD(2) - t756;
t828 = t773 * t745;
t826 = t777 * t445;
t825 = t777 * t673;
t824 = t777 * t696;
t823 = t778 * t560;
t822 = t778 * t728;
t821 = t778 * t745;
t768 = t773 ^ 2;
t820 = t781 * t768;
t484 = -pkin(4) * t851 + pkin(9) * t760 - t632 * t691 + t500;
t491 = t858 * pkin(9) + (t693 * t761 - t596) * pkin(4) - t592;
t437 = t775 * t484 + t770 * t491;
t819 = t768 + t769;
t812 = t774 * qJDD(1);
t811 = t779 * qJDD(1);
t809 = t776 * t621;
t808 = t771 * t621;
t807 = t774 * t636;
t806 = t774 * t699;
t805 = t779 * t636;
t804 = t779 * t699;
t803 = -pkin(4) * t776 - pkin(3);
t436 = t484 * t770 - t775 * t491;
t446 = t499 * t771 + t776 * t500;
t561 = t618 * t772 + t777 * t619;
t713 = t778 * g(3) + t830;
t659 = t713 * t773 + t778 * t714;
t705 = -t746 * t774 - t779 * t747;
t796 = t774 * t756;
t795 = t779 * t756;
t741 = -t774 * t781 + t811;
t792 = -pkin(5) * t741 - g(3) * t774;
t402 = -t436 * t775 + t437 * t770;
t403 = t436 * t770 + t437 * t775;
t658 = t778 * t713 - t773 * t714;
t704 = t779 * t746 - t774 * t747;
t753 = t764 - t780;
t752 = -t780 - t820;
t751 = t780 - t820;
t743 = t764 - t820;
t742 = t764 + t820;
t740 = t779 * t781 + t812;
t739 = t819 * qJDD(1);
t738 = t762 - 0.2e1 * t801;
t735 = 0.2e1 * t800 + t813;
t733 = t778 * t744;
t732 = t819 * t814;
t723 = -pkin(5) * t740 + t779 * g(3);
t718 = -t725 + t766;
t717 = t724 - t766;
t716 = t778 * t736 - t768 * t814;
t715 = -t737 * t773 - t769 * t814;
t712 = -t725 - t766;
t711 = -t773 * t752 - t821;
t710 = -t751 * t773 + t733;
t709 = t778 * t754 - t829;
t708 = t778 * t753 - t828;
t707 = t778 * t752 - t828;
t706 = t754 * t773 + t733;
t702 = t779 * t739 - t774 * t742;
t701 = t774 * t739 + t779 * t742;
t700 = -t773 * t735 + t778 * t738;
t698 = -t725 + t724;
t694 = -t766 - t724;
t685 = t779 * t711 + t774 * t735;
t684 = t779 * t709 - t774 * t738;
t683 = t774 * t711 - t779 * t735;
t682 = t774 * t709 + t779 * t738;
t679 = -t690 + t851;
t678 = t689 - t851;
t677 = (t726 * t777 + t727 * t772) * t767;
t676 = (t726 * t772 - t727 * t777) * t767;
t675 = -pkin(6) * t707 - t822;
t674 = -pkin(6) * t706 - t839;
t672 = -t724 - t725;
t669 = -pkin(1) * t707 + t714;
t668 = -pkin(1) * t706 + t713;
t667 = -t690 - t851;
t654 = t777 * t717 - t832;
t653 = -t772 * t718 + t859;
t652 = t772 * t717 + t824;
t651 = t777 * t718 + t862;
t650 = -t772 * t712 - t824;
t649 = t777 * t712 - t832;
t643 = (qJD(3) + t767) * t727 + t797;
t642 = t777 * t671 - t727 * t836;
t641 = t772 * t671 + t727 * t835;
t640 = -t772 * t670 - t726 * t835;
t639 = t777 * t670 - t726 * t836;
t638 = t779 * t659 - t774 * t728;
t637 = t774 * t659 + t779 * t728;
t635 = -t690 + t689;
t634 = t777 * t694 - t862;
t633 = t772 * t694 + t859;
t628 = -t851 - t689;
t626 = -t663 + t686;
t625 = t662 - t686;
t624 = (-t691 * t776 + t693 * t771) * t761;
t623 = (-t691 * t771 - t693 * t776) * t761;
t622 = -t773 * t676 + t778 * t677;
t620 = -t663 + t662;
t617 = -t689 - t690;
t615 = -pkin(7) * t649 - t825;
t614 = -t663 - t686;
t613 = -pkin(7) * t633 - t842;
t612 = -t773 * t652 + t778 * t654;
t611 = -t773 * t651 + t778 * t653;
t610 = t678 * t776 - t834;
t609 = -t771 * t679 + t860;
t608 = t771 * t678 + t843;
t607 = t679 * t776 + t863;
t606 = -t771 * t667 - t843;
t605 = t667 * t776 - t834;
t604 = -t773 * t649 + t778 * t650;
t603 = t778 * t649 + t773 * t650;
t602 = -t686 - t662;
t601 = -t644 * t777 - t772 * t648;
t600 = -t777 * t643 - t772 * t855;
t599 = -t644 * t772 + t777 * t648;
t598 = -t772 * t643 + t777 * t855;
t593 = t662 + t663;
t591 = -t773 * t641 + t778 * t642;
t590 = -t773 * t639 + t778 * t640;
t589 = -t773 * t633 + t778 * t634;
t588 = t778 * t633 + t773 * t634;
t587 = t628 * t776 - t863;
t586 = t771 * t628 + t860;
t585 = (-t664 * t775 + t666 * t770) * t687;
t584 = (t664 * t770 + t666 * t775) * t687;
t583 = -t680 + t787;
t578 = (qJD(4) + t761) * t693 + t798;
t577 = -pkin(2) * t855 + pkin(7) * t650 - t842;
t576 = -t772 * t623 + t777 * t624;
t575 = t777 * t623 + t772 * t624;
t574 = -t693 * t838 - t776 * t787;
t573 = t693 * t837 - t771 * t787;
t572 = -t771 * t596 + t691 * t837;
t571 = t596 * t776 + t691 * t838;
t570 = -pkin(2) * t643 + pkin(7) * t634 + t825;
t568 = -qJD(5) * t666 - t799;
t565 = t779 * t604 + t774 * t855;
t564 = t774 * t604 - t779 * t855;
t559 = t779 * t589 + t774 * t643;
t558 = t774 * t589 - t779 * t643;
t554 = -t772 * t608 + t777 * t610;
t553 = -t772 * t607 + t777 * t609;
t552 = t777 * t608 + t772 * t610;
t551 = t777 * t607 + t772 * t609;
t550 = -t772 * t605 + t777 * t606;
t549 = t777 * t605 + t772 * t606;
t548 = pkin(2) * t673 + pkin(7) * t561;
t547 = -t773 * t599 + t778 * t601;
t546 = -t773 * t598 + t778 * t600;
t545 = t778 * t599 + t773 * t601;
t544 = -pkin(8) * t605 - t844;
t542 = -t627 - t569;
t539 = (-qJD(5) - t687) * t666 - t799;
t537 = t569 * t775 - t666 * t841;
t536 = -t569 * t770 - t666 * t840;
t535 = -t568 * t770 + t664 * t840;
t534 = -t568 * t775 - t664 * t841;
t533 = -pkin(1) * t603 - pkin(2) * t649 + t619;
t532 = -pkin(8) * t586 - t845;
t531 = t585 * t776 + t771 * t788;
t530 = t771 * t585 - t776 * t788;
t529 = t625 * t775 - t847;
t528 = -t626 * t770 + t861;
t527 = -t625 * t770 - t846;
t526 = -t626 * t775 - t864;
t525 = t779 * t547 + t774 * t672;
t524 = t774 * t547 - t779 * t672;
t523 = -t772 * t586 + t777 * t587;
t522 = t777 * t586 + t772 * t587;
t521 = -pkin(1) * t588 + t772 * t714 + t777 * t713 + (t772 * (t737 + t801) - t777 * (-t736 + t800)) * pkin(7) + (-t777 * t744 + t754 * t772 - t633) * pkin(2);
t520 = -t579 * t776 - t771 * t583;
t519 = -t578 * t776 + t771 * t858;
t518 = -t579 * t771 + t583 * t776;
t517 = -t771 * t578 - t776 * t858;
t516 = -pkin(7) * t599 - t560;
t515 = -t614 * t770 - t846;
t514 = t614 * t775 - t847;
t513 = -t773 * t575 + t778 * t576;
t512 = -t772 * t573 + t777 * t574;
t511 = -t772 * t571 + t777 * t572;
t510 = t777 * t573 + t772 * t574;
t509 = t777 * t571 + t772 * t572;
t508 = t602 * t775 - t864;
t507 = t602 * t770 + t861;
t506 = t537 * t776 + t808;
t505 = t535 * t776 - t808;
t504 = t771 * t537 - t809;
t503 = t771 * t535 + t809;
t502 = -pkin(2) * t672 + pkin(7) * t601 + t561;
t501 = -pkin(1) * t545 - pkin(2) * t599;
t497 = -pkin(6) * t603 - t773 * t577 + t778 * t615;
t496 = t778 * t561 - t831;
t495 = t773 * t561 + t823;
t494 = pkin(3) * t858 + pkin(8) * t606 - t845;
t493 = -pkin(6) * t588 - t773 * t570 + t778 * t613;
t492 = -pkin(3) * t578 + pkin(8) * t587 + t844;
t488 = t779 * t496 - t774 * t673;
t487 = t774 * t496 + t779 * t673;
t486 = -t773 * t552 + t778 * t554;
t485 = -t773 * t551 + t778 * t553;
t481 = -t773 * t549 + t778 * t550;
t480 = t778 * t549 + t773 * t550;
t479 = -t538 * t775 - t542 * t770;
t478 = t539 * t775 - t541 * t770;
t477 = -t538 * t770 + t542 * t775;
t476 = -t539 * t770 - t541 * t775;
t475 = t529 * t776 - t771 * t538;
t474 = t528 * t776 - t771 * t542;
t473 = t771 * t529 + t538 * t776;
t472 = t771 * t528 + t542 * t776;
t471 = -t772 * t530 + t777 * t531;
t470 = t777 * t530 + t772 * t531;
t469 = t515 * t776 + t541 * t771;
t468 = t771 * t515 - t541 * t776;
t467 = t508 * t776 - t771 * t539;
t466 = t771 * t508 + t539 * t776;
t465 = -t773 * t522 + t778 * t523;
t464 = t778 * t522 + t773 * t523;
t463 = t478 * t776 - t771 * t620;
t462 = t771 * t478 + t620 * t776;
t461 = -pkin(1) * t495 - pkin(2) * t560;
t460 = t479 * t776 - t771 * t593;
t459 = t771 * t479 + t593 * t776;
t458 = -t772 * t518 + t777 * t520;
t457 = -t772 * t517 + t777 * t519;
t456 = t777 * t518 + t772 * t520;
t455 = t777 * t517 + t772 * t519;
t454 = t779 * t481 - t774 * t858;
t453 = t774 * t481 + t779 * t858;
t452 = -t773 * t510 + t778 * t512;
t451 = -t773 * t509 + t778 * t511;
t450 = -t772 * t504 + t777 * t506;
t449 = -t772 * t503 + t777 * t505;
t448 = t777 * t504 + t772 * t506;
t447 = t777 * t503 + t772 * t505;
t444 = t779 * t465 + t774 * t578;
t443 = t774 * t465 - t779 * t578;
t442 = -pkin(9) * t514 + t848;
t441 = -pkin(9) * t507 + t849;
t440 = -pkin(6) * t495 - pkin(7) * t823 - t773 * t548;
t439 = pkin(3) * t592 + pkin(8) * t446;
t438 = -pkin(7) * t549 - t772 * t494 + t777 * t544;
t435 = -pkin(6) * t545 - t773 * t502 + t778 * t516;
t434 = -pkin(7) * t522 - t772 * t492 + t777 * t532;
t433 = pkin(2) * t858 + pkin(7) * t550 + t777 * t494 + t772 * t544;
t432 = -pkin(8) * t518 - t445;
t431 = -t772 * t473 + t777 * t475;
t430 = -t772 * t472 + t777 * t474;
t429 = t777 * t473 + t772 * t475;
t428 = t777 * t472 + t772 * t474;
t427 = -t773 * t470 + t778 * t471;
t426 = -pkin(3) * t617 + pkin(8) * t520 + t446;
t425 = -t772 * t468 + t777 * t469;
t424 = t777 * t468 + t772 * t469;
t423 = -pkin(2) * t578 + pkin(7) * t523 + t777 * t492 + t772 * t532;
t422 = -t772 * t466 + t777 * t467;
t421 = t777 * t466 + t772 * t467;
t420 = -t772 * t462 + t777 * t463;
t419 = t777 * t462 + t772 * t463;
t418 = -pkin(1) * t480 - pkin(2) * t549 - pkin(3) * t605 + t500;
t417 = -pkin(4) * t514 + t437;
t416 = -pkin(4) * t507 + t436;
t415 = -t772 * t459 + t777 * t460;
t414 = t777 * t459 + t772 * t460;
t413 = -t773 * t456 + t778 * t458;
t412 = -t773 * t455 + t778 * t457;
t411 = t778 * t456 + t773 * t458;
t410 = t779 * t413 + t774 * t617;
t409 = t774 * t413 - t779 * t617;
t408 = -t773 * t448 + t778 * t450;
t407 = -t773 * t447 + t778 * t449;
t406 = -pkin(1) * t464 - pkin(2) * t522 - pkin(3) * t586 + t499;
t405 = t777 * t446 - t833;
t404 = t772 * t446 + t826;
t401 = -t773 * t429 + t778 * t431;
t400 = -t773 * t428 + t778 * t430;
t399 = -pkin(1) * t411 - pkin(2) * t456 - pkin(3) * t518;
t398 = -t773 * t424 + t778 * t425;
t397 = t778 * t424 + t773 * t425;
t396 = t403 * t776 + t771 * t483;
t395 = t771 * t403 - t483 * t776;
t394 = -t773 * t421 + t778 * t422;
t393 = t778 * t421 + t773 * t422;
t392 = -pkin(9) * t477 - t402;
t391 = -t773 * t419 + t778 * t420;
t390 = -pkin(6) * t480 - t773 * t433 + t778 * t438;
t389 = -t773 * t414 + t778 * t415;
t388 = t778 * t414 + t773 * t415;
t387 = -pkin(8) * t468 - t771 * t417 + t442 * t776;
t386 = t779 * t398 + t774 * t514;
t385 = t774 * t398 - t779 * t514;
t384 = -pkin(8) * t466 - t771 * t416 + t441 * t776;
t383 = t779 * t394 + t774 * t507;
t382 = t774 * t394 - t779 * t507;
t381 = -pkin(6) * t464 - t773 * t423 + t778 * t434;
t380 = -pkin(7) * t456 - t772 * t426 + t777 * t432;
t379 = -pkin(3) * t514 + pkin(8) * t469 + t417 * t776 + t771 * t442;
t378 = -pkin(2) * t617 + pkin(7) * t458 + t777 * t426 + t772 * t432;
t377 = -t773 * t404 + t778 * t405;
t376 = t778 * t404 + t773 * t405;
t375 = -pkin(3) * t507 + pkin(8) * t467 + t416 * t776 + t771 * t441;
t374 = t779 * t389 + t774 * t477;
t373 = t774 * t389 - t779 * t477;
t372 = -pkin(7) * t404 - pkin(8) * t826 - t772 * t439;
t371 = t779 * t377 - t774 * t592;
t370 = t774 * t377 + t779 * t592;
t369 = pkin(2) * t592 + pkin(7) * t405 - pkin(8) * t833 + t777 * t439;
t368 = -pkin(8) * t459 + t392 * t776 + t477 * t850;
t367 = pkin(8) * t460 + t771 * t392 + t477 * t803;
t366 = -t772 * t395 + t777 * t396;
t365 = t777 * t395 + t772 * t396;
t364 = -pkin(1) * t397 - pkin(2) * t424 - pkin(3) * t468 + pkin(4) * t541 - pkin(9) * t515 - t849;
t363 = -pkin(1) * t393 - pkin(2) * t421 - pkin(3) * t466 - pkin(4) * t539 - pkin(9) * t508 + t848;
t362 = -pkin(1) * t376 - pkin(2) * t404 - pkin(3) * t445;
t361 = -pkin(8) * t395 + (-pkin(9) * t776 + t850) * t402;
t360 = -pkin(7) * t424 - t772 * t379 + t777 * t387;
t359 = -pkin(7) * t421 - t772 * t375 + t777 * t384;
t358 = -pkin(1) * t388 - pkin(2) * t414 - pkin(3) * t459 - pkin(4) * t593 - pkin(9) * t479 - t403;
t357 = -pkin(2) * t514 + pkin(7) * t425 + t777 * t379 + t772 * t387;
t356 = -pkin(6) * t411 - t773 * t378 + t778 * t380;
t355 = -pkin(2) * t507 + pkin(7) * t422 + t777 * t375 + t772 * t384;
t354 = pkin(8) * t396 + (-pkin(9) * t771 + t803) * t402;
t353 = -pkin(7) * t414 - t772 * t367 + t777 * t368;
t352 = -pkin(6) * t376 - t773 * t369 + t778 * t372;
t351 = -pkin(2) * t477 + pkin(7) * t415 + t777 * t367 + t772 * t368;
t350 = -t773 * t365 + t778 * t366;
t349 = t778 * t365 + t773 * t366;
t348 = t779 * t350 + t774 * t402;
t347 = t774 * t350 - t779 * t402;
t346 = -pkin(6) * t397 - t773 * t357 + t778 * t360;
t345 = -pkin(6) * t393 - t773 * t355 + t778 * t359;
t344 = -pkin(7) * t365 - t772 * t354 + t777 * t361;
t343 = -pkin(1) * t349 - pkin(2) * t365 - pkin(3) * t395 + pkin(4) * t483 - pkin(9) * t403;
t342 = -pkin(2) * t402 + pkin(7) * t366 + t777 * t354 + t772 * t361;
t341 = -pkin(6) * t388 - t773 * t351 + t778 * t353;
t340 = -pkin(6) * t349 - t773 * t342 + t778 * t344;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t740, -t741, 0, t705, 0, 0, 0, 0, 0, 0, t684, t685, t702, t638, 0, 0, 0, 0, 0, 0, t559, t565, t525, t488, 0, 0, 0, 0, 0, 0, t444, t454, t410, t371, 0, 0, 0, 0, 0, 0, t383, t386, t374, t348; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t741, -t740, 0, t704, 0, 0, 0, 0, 0, 0, t682, t683, t701, t637, 0, 0, 0, 0, 0, 0, t558, t564, t524, t487, 0, 0, 0, 0, 0, 0, t443, t453, t409, t370, 0, 0, 0, 0, 0, 0, t382, t385, t373, t347; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t706, t707, 0, -t658, 0, 0, 0, 0, 0, 0, t588, t603, t545, t495, 0, 0, 0, 0, 0, 0, t464, t480, t411, t376, 0, 0, 0, 0, 0, 0, t393, t397, t388, t349; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t741, 0, -t740, 0, t792, -t723, -t704, -pkin(5) * t704, t779 * t716 - t796, t779 * t700 - t774 * t743, t779 * t710 + t773 * t812, t779 * t715 + t796, t779 * t708 + t762 * t774, t774 * qJDD(2) + t779 * t732, -pkin(5) * t682 - t774 * t668 + t779 * t674, -pkin(5) * t683 - t774 * t669 + t779 * t675, -pkin(5) * t701 + t779 * t658, -pkin(5) * t637 - (pkin(1) * t774 - pkin(6) * t779) * t658, t779 * t591 - t806, t779 * t546 - t774 * t698, t779 * t611 - t774 * t648, t779 * t590 + t806, t779 * t612 - t774 * t644, t779 * t622 + t774 * t810, -pkin(5) * t558 + t779 * t493 - t774 * t521, -pkin(5) * t564 + t779 * t497 - t774 * t533, -pkin(5) * t524 + t779 * t435 - t774 * t501, -pkin(5) * t487 + t779 * t440 - t774 * t461, t779 * t452 + t807, t779 * t412 - t774 * t635, t779 * t485 - t774 * t583, t779 * t451 - t807, t779 * t486 - t774 * t579, t779 * t513 + t774 * t760, -pkin(5) * t443 + t779 * t381 - t774 * t406, -pkin(5) * t453 + t779 * t390 - t774 * t418, -pkin(5) * t409 + t779 * t356 - t774 * t399, -pkin(5) * t370 + t779 * t352 - t774 * t362, t779 * t408 - t774 * t536, t779 * t391 - t774 * t476, t779 * t400 - t774 * t526, t779 * t407 - t774 * t534, t779 * t401 - t774 * t527, t779 * t427 - t774 * t584, -pkin(5) * t382 + t779 * t345 - t774 * t363, -pkin(5) * t385 + t779 * t346 - t774 * t364, -pkin(5) * t373 + t779 * t341 - t774 * t358, -pkin(5) * t347 + t779 * t340 - t774 * t343; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t740, 0, t741, 0, t723, t792, t705, pkin(5) * t705, t774 * t716 + t795, t774 * t700 + t779 * t743, t774 * t710 - t773 * t811, t774 * t715 - t795, t774 * t708 - t778 * t811, -t779 * qJDD(2) + t774 * t732, pkin(5) * t684 + t779 * t668 + t774 * t674, pkin(5) * t685 + t779 * t669 + t774 * t675, pkin(5) * t702 + t658 * t774, pkin(5) * t638 - (-pkin(1) * t779 - pkin(6) * t774) * t658, t774 * t591 + t804, t774 * t546 + t779 * t698, t774 * t611 + t779 * t648, t774 * t590 - t804, t774 * t612 + t779 * t644, t774 * t622 - t779 * t810, pkin(5) * t559 + t774 * t493 + t779 * t521, pkin(5) * t565 + t774 * t497 + t779 * t533, pkin(5) * t525 + t774 * t435 + t779 * t501, pkin(5) * t488 + t774 * t440 + t779 * t461, t774 * t452 - t805, t774 * t412 + t779 * t635, t774 * t485 + t779 * t583, t774 * t451 + t805, t774 * t486 + t779 * t579, t774 * t513 - t779 * t760, pkin(5) * t444 + t774 * t381 + t779 * t406, pkin(5) * t454 + t774 * t390 + t779 * t418, pkin(5) * t410 + t774 * t356 + t779 * t399, pkin(5) * t371 + t774 * t352 + t779 * t362, t774 * t408 + t779 * t536, t774 * t391 + t779 * t476, t774 * t400 + t779 * t526, t774 * t407 + t779 * t534, t774 * t401 + t779 * t527, t774 * t427 + t779 * t584, pkin(5) * t383 + t774 * t345 + t779 * t363, pkin(5) * t386 + t774 * t346 + t779 * t364, pkin(5) * t374 + t774 * t341 + t779 * t358, pkin(5) * t348 + t774 * t340 + t779 * t343; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t746, t747, 0, 0, (t736 + t800) * t773, t778 * t735 + t773 * t738, t778 * t751 + t829, (t737 - t801) * t778, t773 * t753 + t821, 0, pkin(1) * t738 + pkin(6) * t709 + t822, -pkin(1) * t735 + pkin(6) * t711 - t839, pkin(1) * t742 + pkin(6) * t739 + t659, pkin(1) * t728 + pkin(6) * t659, t778 * t641 + t773 * t642, t778 * t598 + t773 * t600, t778 * t651 + t773 * t653, t778 * t639 + t773 * t640, t778 * t652 + t773 * t654, t778 * t676 + t773 * t677, -pkin(1) * t643 + pkin(6) * t589 + t778 * t570 + t773 * t613, -pkin(1) * t855 + pkin(6) * t604 + t778 * t577 + t773 * t615, -pkin(1) * t672 + pkin(6) * t547 + t778 * t502 + t773 * t516, pkin(1) * t673 + pkin(6) * t496 - pkin(7) * t831 + t778 * t548, t778 * t510 + t773 * t512, t778 * t455 + t773 * t457, t778 * t551 + t773 * t553, t778 * t509 + t773 * t511, t778 * t552 + t773 * t554, t778 * t575 + t773 * t576, -pkin(1) * t578 + pkin(6) * t465 + t778 * t423 + t773 * t434, pkin(1) * t858 + pkin(6) * t481 + t778 * t433 + t773 * t438, -pkin(1) * t617 + pkin(6) * t413 + t778 * t378 + t773 * t380, pkin(1) * t592 + pkin(6) * t377 + t778 * t369 + t773 * t372, t778 * t448 + t773 * t450, t778 * t419 + t773 * t420, t778 * t428 + t773 * t430, t778 * t447 + t773 * t449, t778 * t429 + t773 * t431, t778 * t470 + t773 * t471, -pkin(1) * t507 + pkin(6) * t394 + t778 * t355 + t773 * t359, -pkin(1) * t514 + pkin(6) * t398 + t778 * t357 + t773 * t360, -pkin(1) * t477 + pkin(6) * t389 + t778 * t351 + t773 * t353, -pkin(1) * t402 + pkin(6) * t350 + t778 * t342 + t773 * t344;];
tauB_reg = t1;
