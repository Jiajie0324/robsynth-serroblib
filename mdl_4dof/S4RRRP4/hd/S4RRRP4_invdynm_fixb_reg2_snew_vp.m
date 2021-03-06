% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S4RRRP4
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3]';
%
% Output:
% m_new_reg [(3*5)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:15
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S4RRRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:15:48
% EndTime: 2019-12-31 17:15:53
% DurationCPUTime: 4.77s
% Computational Cost: add. (15012->394), mult. (32763->478), div. (0->0), fcn. (21234->6), ass. (0->275)
t716 = sin(qJ(3));
t719 = cos(qJ(3));
t720 = cos(qJ(2));
t758 = qJD(1) * t720;
t717 = sin(qJ(2));
t759 = qJD(1) * t717;
t674 = t716 * t759 - t719 * t758;
t676 = t716 * t758 + t719 * t759;
t639 = t676 * t674;
t712 = qJDD(2) + qJDD(3);
t802 = t639 - t712;
t804 = t802 * pkin(3);
t777 = t716 * t802;
t767 = t719 * t802;
t672 = t674 ^ 2;
t713 = qJD(2) + qJD(3);
t711 = t713 ^ 2;
t633 = -t711 - t672;
t585 = t716 * t633 - t767;
t584 = pkin(2) * t585;
t754 = qJD(1) * qJD(2);
t706 = t720 * t754;
t753 = t717 * qJDD(1);
t685 = t706 + t753;
t708 = t720 * qJDD(1);
t746 = t717 * t754;
t686 = t708 - t746;
t624 = -t674 * qJD(3) + t719 * t685 + t716 * t686;
t718 = sin(qJ(1));
t721 = cos(qJ(1));
t696 = t721 * g(1) + t718 * g(2);
t723 = qJD(1) ^ 2;
t678 = -t723 * pkin(1) + qJDD(1) * pkin(5) - t696;
t657 = -t717 * g(3) + t720 * t678;
t715 = t720 ^ 2;
t709 = t715 * t723;
t733 = qJD(2) * pkin(2) - pkin(6) * t759;
t618 = -pkin(2) * t709 + t686 * pkin(6) - qJD(2) * t733 + t657;
t771 = t717 * t723;
t774 = t717 * t678;
t724 = qJDD(2) * pkin(2) - t685 * pkin(6) - t774 + (pkin(2) * t771 + pkin(6) * t754 - g(3)) * t720;
t576 = t716 * t618 - t719 * t724;
t665 = t713 * t674;
t727 = qJ(4) * t665 + 0.2e1 * qJD(4) * t676 + t576 + t804;
t533 = t624 * qJ(4) + t727;
t726 = -t533 - t804;
t803 = t584 + t726;
t741 = t716 * t685 - t719 * t686;
t623 = -t676 * qJD(3) - t741;
t695 = t718 * g(1) - t721 * g(2);
t732 = qJDD(1) * pkin(1) + t695;
t626 = t686 * pkin(2) + (pkin(6) * t715 + pkin(5)) * t723 - t733 * t759 + t732;
t658 = t713 * pkin(3) - t676 * qJ(4);
t725 = -t676 * t658 - qJDD(4) + t626;
t801 = -t623 * pkin(3) - t725;
t800 = t624 - t665;
t599 = (qJD(3) - t713) * t676 + t741;
t673 = t676 ^ 2;
t586 = t719 * t633 + t777;
t553 = t720 * t585 + t717 * t586;
t798 = pkin(1) * t553;
t655 = -t673 - t711;
t635 = t639 + t712;
t778 = t716 * t635;
t604 = t719 * t655 - t778;
t768 = t719 * t635;
t605 = -t716 * t655 - t768;
t567 = t720 * t604 + t717 * t605;
t797 = pkin(1) * t567;
t577 = t719 * t618 + t716 * t724;
t536 = -t719 * t576 + t716 * t577;
t796 = pkin(2) * t536;
t603 = t624 + t665;
t564 = -t599 * t716 - t719 * t603;
t566 = -t599 * t719 + t716 * t603;
t529 = -t717 * t564 + t720 * t566;
t625 = -t672 - t673;
t795 = pkin(4) * (t718 * t529 - t721 * t625);
t554 = -t717 * t585 + t720 * t586;
t598 = (qJD(3) + t713) * t676 + t741;
t794 = pkin(4) * (t718 * t554 - t721 * t598);
t568 = -t717 * t604 + t720 * t605;
t793 = pkin(4) * (t718 * t568 - t721 * t800);
t527 = t720 * t564 + t717 * t566;
t792 = pkin(5) * t527;
t791 = pkin(5) * t553;
t790 = pkin(5) * t567;
t789 = pkin(6) * t564;
t788 = pkin(6) * t585;
t787 = pkin(6) * t604;
t784 = t713 * t676;
t783 = t713 * t716;
t782 = t713 * t719;
t714 = t717 ^ 2;
t781 = t714 * t723;
t780 = t716 * t533;
t779 = t716 * t626;
t776 = t717 * t536;
t677 = t723 * pkin(5) + t732;
t775 = t717 * t677;
t704 = t720 * t771;
t693 = qJDD(2) + t704;
t773 = t717 * t693;
t694 = qJDD(2) - t704;
t772 = t717 * t694;
t770 = t719 * t533;
t769 = t719 * t626;
t766 = t720 * t536;
t765 = t720 * t677;
t764 = t720 * t694;
t763 = -pkin(1) * t625 + pkin(5) * t529;
t762 = -pkin(1) * t598 + pkin(5) * t554;
t761 = -pkin(1) * t800 + pkin(5) * t568;
t760 = t714 + t715;
t757 = qJD(4) * t674;
t752 = t718 * qJDD(1);
t751 = t721 * qJDD(1);
t750 = t718 * t639;
t749 = t721 * t639;
t597 = pkin(2) * t604;
t748 = t597 - t577;
t561 = pkin(2) * t564;
t510 = -pkin(1) * t527 - t561;
t667 = -0.2e1 * t757;
t735 = t672 * pkin(3) - t623 * qJ(4) + t713 * t658 - t577;
t538 = t667 - t735;
t505 = t716 * t538 - t770;
t532 = pkin(3) * t533;
t745 = pkin(2) * t505 - t532;
t744 = -pkin(2) * t625 + pkin(6) * t566;
t743 = -pkin(2) * t598 + pkin(6) * t586;
t742 = -pkin(2) * t800 + pkin(6) * t605;
t537 = t716 * t576 + t719 * t577;
t656 = t720 * g(3) + t774;
t617 = t717 * t656 + t720 * t657;
t740 = -t718 * t695 - t721 * t696;
t739 = t718 * t704;
t738 = t721 * t704;
t690 = -t718 * t723 + t751;
t737 = -pkin(4) * t690 - t718 * g(3);
t736 = t576 - t584;
t616 = t720 * t656 - t717 * t657;
t734 = t721 * t695 - t718 * t696;
t731 = pkin(3) * t655 + t735;
t729 = 0.2e1 * t757 + t731;
t722 = qJD(2) ^ 2;
t700 = -t709 - t722;
t699 = t709 - t722;
t698 = -t722 - t781;
t697 = t722 - t781;
t692 = -t709 + t781;
t691 = t709 + t781;
t689 = t721 * t723 + t752;
t688 = t760 * qJDD(1);
t687 = t708 - 0.2e1 * t746;
t684 = 0.2e1 * t706 + t753;
t682 = t720 * t693;
t681 = t760 * t754;
t671 = -pkin(4) * t689 + t721 * g(3);
t662 = -t673 + t711;
t661 = t672 - t711;
t660 = t720 * t685 - t714 * t754;
t659 = -t717 * t686 - t715 * t754;
t654 = -t717 * t698 - t764;
t653 = -t717 * t697 + t682;
t652 = t720 * t700 - t773;
t651 = t720 * t699 - t772;
t650 = t720 * t698 - t772;
t649 = t720 * t697 + t773;
t648 = t717 * t700 + t682;
t647 = t717 * t699 + t764;
t646 = (t685 + t706) * t717;
t645 = (t686 - t746) * t720;
t641 = -t717 * t684 + t720 * t687;
t640 = t720 * t684 + t717 * t687;
t637 = t672 - t673;
t630 = (-t674 * t719 + t676 * t716) * t713;
t629 = (-t674 * t716 - t676 * t719) * t713;
t628 = -pkin(5) * t650 - t765;
t627 = -pkin(5) * t648 - t775;
t622 = -pkin(1) * t650 + t657;
t621 = -pkin(1) * t648 + t656;
t611 = pkin(1) * t687 + pkin(5) * t652 + t765;
t610 = -pkin(1) * t684 + pkin(5) * t654 - t775;
t609 = t719 * t661 - t778;
t608 = -t716 * t662 - t767;
t607 = t716 * t661 + t768;
t606 = t719 * t662 - t777;
t593 = pkin(3) * t603;
t592 = pkin(1) * t677 + pkin(5) * t617;
t591 = t719 * t624 - t676 * t783;
t590 = t716 * t624 + t676 * t782;
t589 = -t716 * t623 + t674 * t782;
t588 = t719 * t623 + t674 * t783;
t587 = pkin(1) * t691 + pkin(5) * t688 + t617;
t582 = -t717 * t629 + t720 * t630;
t581 = t720 * t629 + t717 * t630;
t580 = -pkin(3) * t800 - qJ(4) * t635;
t579 = t721 * t582 + t718 * t712;
t578 = t718 * t582 - t721 * t712;
t574 = -t769 - t787;
t573 = -t779 - t788;
t572 = -t717 * t607 + t720 * t609;
t571 = -t717 * t606 + t720 * t608;
t570 = t720 * t607 + t717 * t609;
t569 = t720 * t606 + t717 * t608;
t565 = -t719 * t598 - t716 * t800;
t563 = -t716 * t598 + t719 * t800;
t559 = t672 * qJ(4) - t801;
t558 = -t717 * t590 + t720 * t591;
t557 = -t717 * t588 + t720 * t589;
t556 = t720 * t590 + t717 * t591;
t555 = t720 * t588 + t717 * t589;
t551 = (-t655 - t672) * qJ(4) + t801;
t550 = t742 - t779;
t549 = t721 * t558 + t750;
t548 = t721 * t557 - t750;
t547 = t718 * t558 - t749;
t546 = t718 * t557 + t749;
t545 = t743 + t769;
t544 = t721 * t572 - t718 * t599;
t543 = t721 * t571 + t718 * t603;
t542 = t718 * t572 + t721 * t599;
t541 = t718 * t571 - t721 * t603;
t539 = pkin(4) * (t721 * t568 + t718 * t800);
t534 = pkin(4) * (t721 * t554 + t718 * t598);
t531 = (t633 + t672) * qJ(4) + (-t598 + t623) * pkin(3) + t725;
t530 = pkin(2) * t626 + pkin(6) * t537;
t528 = -t717 * t563 + t720 * t565;
t526 = t720 * t563 + t717 * t565;
t524 = (t603 + t624) * qJ(4) + t727;
t523 = -t748 - t797;
t522 = t721 * t528 - t718 * t637;
t521 = t718 * t528 + t721 * t637;
t520 = -pkin(3) * t625 - qJ(4) * t599 + t538;
t518 = pkin(4) * (t721 * t529 + t718 * t625);
t517 = t736 - t798;
t516 = t719 * t551 - t716 * t580 - t787;
t515 = -t536 - t789;
t514 = pkin(3) * t559 + qJ(4) * t538;
t513 = qJ(4) * t767 - t716 * t531 - t788;
t512 = t537 + t744;
t511 = t716 * t551 + t719 * t580 + t742;
t509 = qJ(4) * t777 + t719 * t531 + t743;
t508 = -t717 * t550 + t720 * t574 - t790;
t507 = -t597 + t667 - t731 - t797;
t506 = t719 * t538 + t780;
t504 = t720 * t537 - t776;
t503 = t717 * t537 + t766;
t502 = -t717 * t545 + t720 * t573 - t791;
t501 = t510 + t593;
t500 = -t798 - t803;
t499 = t720 * t550 + t717 * t574 + t761;
t498 = t720 * t545 + t717 * t573 + t762;
t497 = -pkin(1) * t503 - t796;
t496 = -t716 * t520 + t719 * t524 - t789;
t495 = t719 * t520 + t716 * t524 + t744;
t494 = -t717 * t511 + t720 * t516 - t790;
t493 = -t717 * t505 + t720 * t506;
t492 = t720 * t505 + t717 * t506;
t491 = -t717 * t509 + t720 * t513 - t791;
t490 = t720 * t511 + t717 * t516 + t761;
t489 = -pkin(5) * t503 - pkin(6) * t766 - t717 * t530;
t488 = pkin(1) * t626 + pkin(5) * t504 - pkin(6) * t776 + t720 * t530;
t487 = t720 * t509 + t717 * t513 + t762;
t486 = -pkin(6) * t505 + qJ(4) * t770 - t716 * t514;
t485 = -t717 * t512 + t720 * t515 - t792;
t484 = t720 * t512 + t717 * t515 + t763;
t483 = pkin(2) * t559 + pkin(6) * t506 + qJ(4) * t780 + t719 * t514;
t482 = -pkin(1) * t492 - t745;
t481 = -t717 * t495 + t720 * t496 - t792;
t480 = t720 * t495 + t717 * t496 + t763;
t479 = -pkin(5) * t492 - t717 * t483 + t720 * t486;
t478 = pkin(1) * t559 + pkin(5) * t493 + t720 * t483 + t717 * t486;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t690, 0, -t689, 0, t737, -t671, -t734, -pkin(4) * t734, t721 * t660 - t739, t721 * t641 + t718 * t692, t721 * t653 + t717 * t752, t721 * t659 + t739, t721 * t651 + t718 * t708, t718 * qJDD(2) + t721 * t681, t721 * t627 - t718 * t621 - pkin(4) * (t718 * t652 + t721 * t687), t721 * t628 - t718 * t622 - pkin(4) * (t718 * t654 - t721 * t684), t721 * t616 - pkin(4) * (t718 * t688 + t721 * t691), -pkin(4) * (t718 * t617 + t721 * t677) - (t718 * pkin(1) - t721 * pkin(5)) * t616, t549, t522, t543, t548, t544, t579, t721 * t502 - t718 * t517 - t794, t721 * t508 - t718 * t523 - t793, t721 * t485 - t718 * t510 - t795, t721 * t489 - t718 * t497 - pkin(4) * (t718 * t504 + t721 * t626), t549, t522, t543, t548, t544, t579, t721 * t491 - t718 * t500 - t794, t721 * t494 - t718 * t507 - t793, t721 * t481 - t718 * t501 - t795, t721 * t479 - t718 * t482 - pkin(4) * (t718 * t493 + t721 * t559); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t689, 0, t690, 0, t671, t737, t740, pkin(4) * t740, t718 * t660 + t738, t718 * t641 - t721 * t692, t718 * t653 - t717 * t751, t718 * t659 - t738, t718 * t651 - t720 * t751, -t721 * qJDD(2) + t718 * t681, t718 * t627 + t721 * t621 + pkin(4) * (t721 * t652 - t718 * t687), t718 * t628 + t721 * t622 + pkin(4) * (t721 * t654 + t718 * t684), t718 * t616 + pkin(4) * (t721 * t688 - t718 * t691), pkin(4) * (t721 * t617 - t718 * t677) - (-t721 * pkin(1) - t718 * pkin(5)) * t616, t547, t521, t541, t546, t542, t578, t718 * t502 + t721 * t517 + t534, t718 * t508 + t721 * t523 + t539, t718 * t485 + t721 * t510 + t518, t718 * t489 + t721 * t497 + pkin(4) * (t721 * t504 - t718 * t626), t547, t521, t541, t546, t542, t578, t718 * t491 + t721 * t500 + t534, t718 * t494 + t721 * t507 + t539, t718 * t481 + t721 * t501 + t518, t718 * t479 + t721 * t482 + pkin(4) * (t721 * t493 - t718 * t559); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t695, t696, 0, 0, t646, t640, t649, t645, t647, 0, t611, t610, t587, t592, t556, t526, t569, t555, t570, t581, t498, t499, t484, t488, t556, t526, t569, t555, t570, t581, t487, t490, t480, t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t723, 0, 0, -g(3), -t695, 0, t660, t641, t653, t659, t651, t681, t627, t628, t616, pkin(5) * t616, t558, t528, t571, t557, t572, t582, t502, t508, t485, t489, t558, t528, t571, t557, t572, t582, t491, t494, t481, t479; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t723, 0, qJDD(1), 0, g(3), 0, -t696, 0, t704, -t692, -t753, -t704, -t708, -qJDD(2), t621, t622, 0, pkin(1) * t616, -t639, t637, -t603, t639, t599, -t712, t517, t523, t510, t497, -t639, t637, -t603, t639, t599, -t712, t500, t507, t501, t482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t695, t696, 0, 0, t646, t640, t649, t645, t647, 0, t611, t610, t587, t592, t556, t526, t569, t555, t570, t581, t498, t499, t484, t488, t556, t526, t569, t555, t570, t581, t487, t490, t480, t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t685, t687, t693, -t706, t699, t706, 0, -t677, t656, 0, t591, t565, t608, t589, t609, t630, t573, t574, t515, -pkin(6) * t536, t591, t565, t608, t589, t609, t630, t513, t516, t496, t486; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t746, t684, t697, t686, t694, -t746, t677, 0, t657, 0, t590, t563, t606, t588, t607, t629, t545, t550, t512, t530, t590, t563, t606, t588, t607, t629, t509, t511, t495, t483; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t704, t692, t753, t704, t708, qJDD(2), -t656, -t657, 0, 0, t639, -t637, t603, -t639, -t599, t712, -t736, t748, t561, t796, t639, -t637, t603, -t639, -t599, t712, t803, t597 + t729, -t593 + t561, t745; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t624, -t598, -t802, t665, t661, -t665, 0, -t626, t576, 0, t624, -t598, -t802, t665, t661, -t665, qJ(4) * t802, t551, t524, qJ(4) * t533; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t784, t800, t662, t623, t635, -t784, t626, 0, t577, 0, t784, t800, t662, t623, t635, -t784, t531, t580, t520, t514; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t639, -t637, t603, -t639, -t599, t712, -t576, -t577, 0, 0, t639, -t637, t603, -t639, -t599, t712, t726, t729, -t593, -t532; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t624, -t598, -t802, t665, t661, -t665, 0, -t559, t533, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t784, t800, t662, t623, t635, -t784, t559, 0, t538, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t639, -t637, t603, -t639, -t599, t712, -t533, -t538, 0, 0;];
m_new_reg = t1;
