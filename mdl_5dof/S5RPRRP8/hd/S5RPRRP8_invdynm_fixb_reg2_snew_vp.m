% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRP8
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:47
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRP8_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP8_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP8_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP8_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP8_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRRP8_invdynm_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:47:39
% EndTime: 2019-12-31 18:47:44
% DurationCPUTime: 5.62s
% Computational Cost: add. (14720->430), mult. (21030->418), div. (0->0), fcn. (8825->6), ass. (0->268)
t664 = qJD(4) ^ 2;
t648 = -qJD(1) + qJD(3);
t646 = t648 ^ 2;
t657 = sin(qJ(4));
t652 = t657 ^ 2;
t740 = t652 * t646;
t623 = t664 + t740;
t660 = cos(qJ(4));
t628 = t660 * t646 * t657;
t619 = qJDD(4) - t628;
t725 = t660 * t619;
t574 = -t657 * t623 + t725;
t716 = qJD(4) * t648;
t635 = t660 * t716;
t647 = qJDD(1) - qJDD(3);
t733 = t657 * t647;
t606 = 0.2e1 * t635 - t733;
t658 = sin(qJ(3));
t661 = cos(qJ(3));
t532 = t658 * t574 + t661 * t606;
t535 = t661 * t574 - t658 * t606;
t659 = sin(qJ(1));
t662 = cos(qJ(1));
t806 = pkin(5) * (t659 * t532 + t662 * t535);
t805 = pkin(5) * (t662 * t532 - t659 * t535);
t804 = pkin(2) * t532;
t803 = pkin(6) * t532;
t802 = pkin(6) * t535;
t721 = t661 * t647;
t693 = t658 * t646 + t721;
t768 = pkin(6) * t693 + t658 * g(3);
t730 = t658 * t647;
t611 = t661 * t646 - t730;
t776 = t662 * t611 + t659 * t693;
t780 = pkin(6) * t611 + t661 * g(3);
t801 = -pkin(5) * t776 + t659 * t768 + t662 * t780;
t766 = pkin(1) + pkin(2);
t800 = qJ(2) * t535 - t766 * t532;
t634 = t657 * t716;
t724 = t660 * t647;
t607 = -0.2e1 * t634 - t724;
t727 = t660 * t607;
t737 = t657 * t606;
t553 = -t727 + t737;
t653 = t660 ^ 2;
t615 = (t652 - t653) * t646;
t521 = t658 * t553 + t661 * t615;
t523 = t661 * t553 - t658 * t615;
t799 = t662 * t521 - t659 * t523;
t798 = t659 * t521 + t662 * t523;
t739 = t653 * t646;
t625 = -t664 + t739;
t734 = t657 * t619;
t572 = -t660 * t625 + t734;
t544 = t658 * t572 - t660 * t721;
t547 = t661 * t572 + t658 * t724;
t795 = t662 * t544 - t659 * t547;
t794 = t659 * t544 + t662 * t547;
t695 = t659 * t611 - t662 * t693;
t792 = -pkin(5) * t695 + t659 * t780 - t662 * t768;
t568 = t660 * t623 + t734;
t791 = pkin(2) * t568;
t790 = pkin(3) * t568;
t788 = pkin(7) * t568;
t787 = qJ(2) * t568;
t784 = t766 * t568;
t643 = 2 * qJD(2) * qJD(1);
t630 = t662 * g(1) + t659 * g(2);
t650 = qJDD(1) * qJ(2);
t691 = t630 - t650;
t767 = qJD(1) ^ 2;
t585 = -t766 * t767 + t643 - t691;
t629 = t659 * g(1) - t662 * g(2);
t683 = -qJDD(2) + t629;
t670 = -t767 * qJ(2) - t683;
t665 = -t766 * qJDD(1) + t670;
t538 = t661 * t585 + t658 * t665;
t525 = -t646 * pkin(3) - t647 * pkin(7) + t538;
t645 = t660 * g(3);
t781 = -pkin(4) * t660 - qJ(5) * t657;
t742 = t781 * t646;
t499 = -qJDD(4) * pkin(4) - t664 * qJ(5) + (t525 + t742) * t657 + qJDD(5) - t645;
t618 = qJDD(4) + t628;
t626 = -t664 - t739;
t783 = pkin(4) * t618 + qJ(5) * t626 - t499;
t707 = t635 - t733;
t782 = t707 + t635;
t779 = pkin(3) * t606 + pkin(7) * t574;
t537 = t658 * t585 - t661 * t665;
t496 = t661 * t537 - t658 * t538;
t697 = t658 * t537 + t661 * t538;
t778 = t659 * t496 - t662 * t697;
t777 = t662 * t496 + t659 * t697;
t735 = t657 * t618;
t571 = t660 * t626 - t735;
t531 = t658 * t571 + t661 * t607;
t534 = t661 * t571 - t658 * t607;
t771 = -pkin(1) * t531 + qJ(2) * t534;
t717 = t652 + t653;
t609 = t717 * t647;
t614 = t717 * t646;
t556 = -t658 * t609 + t661 * t614;
t558 = -t661 * t609 - t658 * t614;
t770 = -pkin(1) * t556 + qJ(2) * t558;
t726 = t660 * t618;
t565 = t657 * t626 + t726;
t765 = pkin(1) * t565;
t764 = pkin(2) * t531;
t763 = pkin(2) * t556;
t517 = t657 * t525 - t645;
t518 = t657 * g(3) + t660 * t525;
t481 = t660 * t517 - t657 * t518;
t762 = pkin(3) * t481;
t761 = pkin(3) * t565;
t757 = pkin(5) * (-t662 * t531 + t659 * t534);
t756 = pkin(5) * (-t662 * t556 + t659 * t558);
t482 = t657 * t517 + t660 * t518;
t524 = t647 * pkin(3) - t646 * pkin(7) + t537;
t468 = t661 * t482 + t658 * t524;
t755 = pkin(6) * t468;
t754 = pkin(6) * t496;
t753 = pkin(6) * t531;
t752 = pkin(6) * t556;
t751 = pkin(6) * t558;
t750 = pkin(7) * t565;
t749 = pkin(7) * t661;
t746 = qJ(2) * t565;
t743 = qJDD(1) * pkin(1);
t741 = t648 * t657;
t738 = t657 * t524;
t736 = t657 * t607;
t729 = t660 * t524;
t728 = t660 * t606;
t720 = -pkin(2) * t565 + pkin(6) * t534;
t719 = pkin(3) * t607 + pkin(7) * t571;
t718 = pkin(3) * t614 - pkin(7) * t609;
t715 = (qJD(5) * qJD(4));
t467 = t658 * t482 - t661 * t524;
t712 = -pkin(6) * t467 - t658 * t762;
t593 = (pkin(1) * qJD(1) - (2 * qJD(2))) * qJD(1) + t691;
t598 = -t670 + t743;
t710 = -t662 * t593 - t659 * t598;
t709 = -t659 * t629 - t662 * t630;
t708 = t634 + t724;
t706 = t658 * t628;
t705 = t661 * t628;
t703 = -pkin(2) * g(3) + pkin(6) * t697;
t702 = pkin(3) * t524 - pkin(7) * t482;
t620 = t659 * qJDD(1) + t662 * t767;
t602 = -pkin(5) * t620 + t662 * g(3);
t621 = t662 * qJDD(1) - t659 * t767;
t601 = pkin(5) * t621 + t659 * g(3);
t701 = t719 - t729;
t641 = 2 * t715;
t698 = -t664 * pkin(4) + qJDD(4) * qJ(5) + t660 * t742 + t518;
t498 = t641 + t698;
t700 = -pkin(4) * t499 + qJ(5) * t498;
t699 = pkin(4) * t657 - qJ(5) * t660;
t696 = t659 * t593 - t662 * t598;
t550 = t728 + t736;
t564 = t657 * t625 + t725;
t694 = t662 * t629 - t659 * t630;
t692 = -pkin(3) * t661 - pkin(7) * t658 - pkin(2);
t669 = t708 * pkin(4) - t782 * qJ(5) + t524;
t667 = 0.2e1 * qJD(5) * t741 - t669;
t484 = (t607 - t634) * pkin(4) + t667;
t690 = qJ(5) * t736 + t660 * t484 + t719;
t689 = t482 + t718;
t469 = t657 * t498 - t660 * t499;
t487 = (pkin(4) * qJD(4) - 0.2e1 * qJD(5)) * t741 + t669;
t447 = -pkin(7) * t469 + t699 * t487;
t450 = -pkin(3) * t469 - t700;
t470 = t660 * t498 + t657 * t499;
t454 = t658 * t470 - t661 * t487;
t688 = -pkin(6) * t454 + t661 * t447 - t658 * t450;
t473 = qJ(5) * t727 - t657 * t484 - t750;
t478 = -t761 - t783;
t687 = t661 * t473 - t658 * t478 - t753;
t483 = -pkin(4) * t634 + qJ(5) * t606 + t667;
t474 = -pkin(4) * t737 + t660 * t483 - t788;
t666 = pkin(4) * t623 + qJ(5) * t619 + t698;
t477 = -t666 - (2 * t715) - t790;
t686 = t661 * t474 - t658 * t477 - t803;
t502 = t517 - t761;
t510 = t738 - t750;
t685 = -t658 * t502 + t661 * t510 - t753;
t503 = t518 + t790;
t511 = t729 + t788;
t684 = -t658 * t503 + t661 * t511 + t803;
t682 = -pkin(7) * t470 + (pkin(3) - t781) * t487;
t681 = -t701 - t764;
t680 = -t738 + t779;
t679 = t658 * t473 + t661 * t478 + t720;
t488 = pkin(4) * t614 + t498;
t489 = qJ(5) * t614 + t499;
t678 = t660 * t488 + t657 * t489 + t718;
t677 = t661 * t502 + t658 * t510 + t720;
t455 = t661 * t470 + t658 * t487;
t676 = -pkin(6) * t455 - t658 * t447 - t661 * t450;
t675 = -t658 * t474 - t661 * t477 - t802;
t674 = -t661 * t503 - t658 * t511 + t802;
t673 = -t690 - t764;
t672 = -t689 - t763;
t671 = pkin(4) * t728 + t657 * t483 + t779;
t668 = -t678 - t763;
t663 = pkin(1) * g(3);
t656 = qJ(2) * g(3);
t624 = -t664 + t740;
t616 = t683 + 0.2e1 * t743;
t605 = -t630 + t643 + 0.2e1 * t650;
t600 = t699 * t647;
t599 = t717 * t716;
t579 = t658 * qJDD(4) + t661 * t599;
t578 = -t661 * qJDD(4) + t658 * t599;
t577 = -t652 * t716 + t660 * t707;
t576 = -t653 * t716 + t657 * t708;
t573 = t657 * t624 + t726;
t567 = -t660 * t624 + t735;
t561 = t782 * t657;
t560 = t657 * t635 + t660 * t708;
t549 = pkin(1) * t598 - qJ(2) * t593;
t548 = t661 * t573 - t657 * t730;
t545 = t658 * t573 + t657 * t721;
t542 = t661 * t577 - t706;
t541 = t661 * t576 + t706;
t540 = t658 * t577 + t705;
t539 = t658 * t576 - t705;
t527 = t659 * t578 + t662 * t579;
t526 = -t662 * t578 + t659 * t579;
t514 = pkin(5) * (t659 * t556 + t662 * t558);
t513 = t659 * t545 + t662 * t548;
t512 = -t662 * t545 + t659 * t548;
t509 = t659 * t540 + t662 * t542;
t508 = t659 * t539 + t662 * t541;
t507 = -t662 * t540 + t659 * t542;
t506 = -t662 * t539 + t659 * t541;
t501 = -qJ(2) * t611 + t693 * t766 + t537;
t500 = qJ(2) * t693 + t611 * t766 + t538;
t492 = t656 + t754;
t491 = pkin(5) * (t659 * t531 + t662 * t534);
t490 = t663 - t703;
t476 = t661 * t481 - t752;
t475 = t658 * t481 + t751;
t466 = -t657 * t488 + t660 * t489;
t465 = t680 - t800;
t464 = t681 + t771;
t463 = t684 - t787;
t462 = t685 + t746;
t461 = t672 + t770;
t460 = t661 * t466 + t658 * t600 - t752;
t459 = t658 * t466 - t661 * t600 + t751;
t458 = t674 - t784;
t457 = -t677 + t765;
t456 = qJ(2) * t697 + t496 * t766;
t453 = -t671 + t800;
t452 = t673 + t771;
t451 = t668 + t770;
t449 = t687 + t746;
t448 = t686 + t787;
t445 = -t679 + t765;
t444 = t675 + t784;
t443 = -(qJ(2) - t749) * t481 + t712;
t442 = -t755 - (pkin(1) - t692) * t481;
t441 = qJ(2) * t468 - t766 * t467 + t702;
t440 = qJ(2) * t469 + t688;
t439 = qJ(2) * t455 - t766 * t454 + t682;
t438 = t766 * t469 + t676;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t621, 0, -t620, 0, -t601, -t602, -t694, -pkin(5) * t694, 0, t621, 0, 0, t620, 0, -t601, t696, t602, pkin(5) * t696 + (-t659 * pkin(1) + t662 * qJ(2)) * g(3), 0, 0, t695, 0, -t776, 0, -t792, t801, t777, -pkin(5) * t777 - t659 * t490 + t662 * t492, t509, -t798, t513, t508, -t794, t527, -t659 * t457 + t662 * t462 - t757, -t659 * t458 + t662 * t463 - t805, t659 * t475 + t662 * t476 - t756, t662 * t443 - t659 * t442 - pkin(5) * (-t662 * t467 + t659 * t468), t509, t513, t798, t527, t794, t508, -t659 * t445 + t662 * t449 - t757, t659 * t459 + t662 * t460 - t756, -t659 * t444 + t662 * t448 + t805, t662 * t440 - t659 * t438 - pkin(5) * (-t662 * t454 + t659 * t455); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t620, 0, t621, 0, t602, -t601, t709, pkin(5) * t709, 0, t620, 0, 0, -t621, 0, t602, t710, t601, pkin(5) * t710 + (t662 * pkin(1) + t659 * qJ(2)) * g(3), 0, 0, -t776, 0, -t695, 0, t801, t792, t778, -pkin(5) * t778 + t662 * t490 + t659 * t492, t507, t799, t512, t506, t795, t526, t662 * t457 + t659 * t462 + t491, t662 * t458 + t659 * t463 - t806, -t662 * t475 + t659 * t476 + t514, t659 * t443 + t662 * t442 + pkin(5) * (t659 * t467 + t662 * t468), t507, t512, -t799, t526, -t795, t506, t662 * t445 + t659 * t449 + t491, -t662 * t459 + t659 * t460 + t514, t662 * t444 + t659 * t448 + t806, t659 * t440 + t662 * t438 + pkin(5) * (t659 * t454 + t662 * t455); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t629, t630, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t616, 0, t605, t549, 0, 0, 0, 0, 0, t647, t501, t500, 0, t456, -t561, -t550, -t567, t560, -t564, 0, t464, t465, t461, t441, -t561, -t567, t550, 0, t564, t560, t452, t451, t453, t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t767, 0, 0, -g(3), -t629, 0, 0, qJDD(1), 0, 0, t767, 0, 0, -t598, g(3), t656, 0, 0, -t693, 0, -t611, 0, t768, t780, t496, t492, t542, -t523, t548, t541, -t547, t579, t462, t463, t476, t443, t542, t548, t523, t579, t547, t541, t449, t460, t448, t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t767, 0, qJDD(1), 0, g(3), 0, -t630, 0, 0, t767, 0, 0, -qJDD(1), 0, g(3), -t593, 0, t663, 0, 0, -t611, 0, t693, 0, t780, -t768, -t697, t490, -t540, t521, -t545, -t539, t544, -t578, t457, t458, -t475, t442, -t540, -t545, -t521, -t578, -t544, -t539, t445, -t459, t444, t438; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t629, t630, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t616, 0, t605, t549, 0, 0, 0, 0, 0, t647, t501, t500, 0, t456, -t561, -t550, -t567, t560, -t564, 0, t464, t465, t461, t441, -t561, -t567, t550, 0, t564, t560, t452, t451, t453, t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t767, 0, 0, -t598, g(3), 0, 0, 0, -t693, 0, -t611, 0, t768, t780, t496, t754, t542, -t523, t548, t541, -t547, t579, t685, t684, t476, t481 * t749 + t712, t542, t548, t523, t579, t547, t541, t687, t460, t686, t688; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t598, 0, -t593, 0, 0, 0, 0, 0, 0, t647, pkin(2) * t693 + t537, pkin(2) * t611 + t538, 0, pkin(2) * t496, -t561, -t550, -t567, t560, -t564, 0, t681, t680 + t804, t672, -pkin(2) * t467 + t702, -t561, -t567, t550, 0, t564, t560, t673, t668, -t671 - t804, -pkin(2) * t454 + t682; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t767, 0, 0, qJDD(1), 0, -g(3), t593, 0, 0, 0, 0, t611, 0, -t693, 0, -t780, t768, t697, t703, t540, -t521, t545, t539, -t544, t578, t677, -t674 + t791, t475, -t481 * t692 + t755, t540, t545, t521, t578, t544, t539, t679, t459, -t675 - t791, -pkin(2) * t469 - t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t647, 0, -t646, 0, 0, g(3), t537, 0, t577, -t553, t573, t576, -t572, t599, t510, t511, t481, pkin(7) * t481, t577, t573, t553, t599, t572, t576, t473, t466, t474, t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t646, 0, -t647, 0, -g(3), 0, t538, 0, t628, -t615, t733, -t628, t724, -qJDD(4), t502, t503, 0, t762, t628, t733, t615, -qJDD(4), -t724, -t628, t478, -t600, t477, t450; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t647, -t537, -t538, 0, 0, t561, t550, t567, -t560, t564, 0, t701, -t680, t689, -t702, t561, t567, -t550, 0, -t564, -t560, t690, t678, t671, -t682; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t707, t607, t618, -t635, t625, t635, 0, t524, t517, 0, t707, t618, -t607, t635, -t625, -t635, qJ(5) * t607, t489, t483, -qJ(5) * t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t634, t606, -t624, -t708, t619, -t634, -t524, 0, t518, 0, t634, -t624, -t606, -t634, -t619, -t708, t484, t488, pkin(4) * t606, -pkin(4) * t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t628, t615, -t733, t628, -t724, qJDD(4), -t517, -t518, 0, 0, -t628, -t733, -t615, qJDD(4), t724, t628, t783, t600, t641 + t666, t700; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t707, t618, -t607, t635, -t625, -t635, 0, t499, -t487, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t628, -t733, -t615, qJDD(4), t724, t628, -t499, 0, t498, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t634, t624, t606, t634, t619, t708, t487, -t498, 0, 0;];
m_new_reg = t1;
