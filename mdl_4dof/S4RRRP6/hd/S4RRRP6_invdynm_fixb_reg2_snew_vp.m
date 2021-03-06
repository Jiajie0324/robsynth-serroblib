% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S4RRRP6
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
% Datum: 2019-12-31 17:19
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S4RRRP6_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP6_invdynm_fixb_reg2_snew_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRP6_invdynm_fixb_reg2_snew_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRRP6_invdynm_fixb_reg2_snew_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRP6_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP6_invdynm_fixb_reg2_snew_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:19:18
% EndTime: 2019-12-31 17:19:23
% DurationCPUTime: 4.60s
% Computational Cost: add. (13280->396), mult. (27061->473), div. (0->0), fcn. (17118->6), ass. (0->274)
t722 = sin(qJ(3));
t725 = cos(qJ(3));
t723 = sin(qJ(2));
t764 = qJD(1) * t723;
t683 = -t725 * qJD(2) + t722 * t764;
t685 = t722 * qJD(2) + t725 * t764;
t647 = t685 * t683;
t760 = qJD(1) * qJD(2);
t710 = t723 * t760;
t726 = cos(qJ(2));
t713 = t726 * qJDD(1);
t766 = t713 - t710;
t680 = -qJDD(3) + t766;
t813 = t647 + t680;
t814 = t813 * pkin(3);
t724 = sin(qJ(1));
t727 = cos(qJ(1));
t699 = t727 * g(1) + t724 * g(2);
t728 = qJD(1) ^ 2;
t674 = -t728 * pkin(1) + qJDD(1) * pkin(5) - t699;
t802 = pkin(2) * t726;
t747 = -pkin(6) * t723 - t802;
t687 = t747 * qJD(1);
t790 = t726 * g(3);
t810 = qJD(2) ^ 2;
t625 = (qJD(1) * t687 + t674) * t723 - qJDD(2) * pkin(2) - t810 * pkin(6) + t790;
t782 = t722 * t813;
t775 = t725 * t813;
t690 = t713 - 0.2e1 * t710;
t648 = t726 * t690;
t711 = t726 * t760;
t759 = t723 * qJDD(1);
t689 = t711 + t759;
t753 = -t725 * qJDD(2) + t722 * t689;
t637 = -t685 * qJD(3) - t753;
t762 = t726 * qJD(1);
t707 = -qJD(3) + t762;
t658 = -t707 * pkin(3) - t685 * qJ(4);
t678 = t683 ^ 2;
t562 = -t637 * pkin(3) - t678 * qJ(4) + t685 * t658 + qJDD(4) + t625;
t638 = -t683 * qJD(3) + t722 * qJDD(2) + t725 * t689;
t667 = t683 * t707;
t812 = t638 + t667;
t612 = (qJD(3) + t707) * t685 + t753;
t679 = t685 ^ 2;
t704 = t707 ^ 2;
t616 = t638 - t667;
t576 = -t612 * t725 + t722 * t616;
t630 = -t678 - t679;
t548 = t723 * t576 - t726 * t630;
t809 = pkin(1) * t548;
t639 = -t704 - t678;
t588 = t725 * t639 + t782;
t611 = (qJD(3) - t707) * t685 + t753;
t557 = t723 * t588 - t726 * t611;
t808 = pkin(1) * t557;
t643 = -t679 - t704;
t631 = -t647 + t680;
t776 = t725 * t631;
t593 = -t722 * t643 + t776;
t560 = t723 * t593 - t726 * t812;
t807 = pkin(1) * t560;
t574 = -t612 * t722 - t725 * t616;
t806 = pkin(2) * t574;
t587 = t722 * t639 - t775;
t805 = pkin(2) * t587;
t783 = t722 * t631;
t592 = t725 * t643 + t783;
t804 = pkin(2) * t592;
t803 = pkin(2) * t723;
t660 = -t723 * g(3) + t726 * t674;
t626 = -t810 * pkin(2) + qJDD(2) * pkin(6) + t687 * t762 + t660;
t698 = t724 * g(1) - t727 * g(2);
t673 = qJDD(1) * pkin(1) + t728 * pkin(5) + t698;
t743 = t689 + t711;
t729 = -pkin(2) * t690 - pkin(6) * t743 - t673;
t578 = t722 * t626 - t725 * t729;
t733 = -qJ(4) * t667 + 0.2e1 * qJD(4) * t685 + t578 + t814;
t535 = t638 * qJ(4) + t733;
t801 = pkin(3) * t535;
t800 = pkin(3) * t616;
t549 = t726 * t576 + t723 * t630;
t799 = pkin(4) * (t724 * t549 - t727 * t574);
t558 = t726 * t588 + t723 * t611;
t798 = pkin(4) * (t724 * t558 - t727 * t587);
t561 = t726 * t593 + t723 * t812;
t797 = pkin(4) * (t724 * t561 - t727 * t592);
t796 = pkin(5) * t548;
t795 = pkin(5) * t557;
t794 = pkin(5) * t560;
t793 = pkin(6) * t574;
t792 = pkin(6) * t587;
t791 = pkin(6) * t592;
t789 = t707 * t685;
t788 = t707 * t722;
t787 = t707 * t725;
t718 = t723 ^ 2;
t786 = t718 * t728;
t785 = t722 * t535;
t784 = t722 * t625;
t781 = t723 * t673;
t706 = t726 * t728 * t723;
t696 = qJDD(2) + t706;
t780 = t723 * t696;
t697 = qJDD(2) - t706;
t779 = t723 * t697;
t778 = t725 * t535;
t777 = t725 * t625;
t774 = t726 * t673;
t773 = t726 * t697;
t772 = -pkin(1) * t574 + pkin(5) * t549;
t771 = -pkin(1) * t587 + pkin(5) * t558;
t770 = -pkin(1) * t592 + pkin(5) * t561;
t769 = -pkin(2) * t630 + pkin(6) * t576;
t768 = pkin(2) * t611 - pkin(6) * t588;
t767 = pkin(2) * t812 - pkin(6) * t593;
t579 = t725 * t626 + t722 * t729;
t719 = t726 ^ 2;
t765 = t718 + t719;
t763 = qJD(4) * t683;
t758 = t724 * qJDD(1);
t757 = t727 * qJDD(1);
t756 = t723 * t647;
t755 = t726 * t647;
t534 = t722 * t578 + t725 * t579;
t659 = t723 * t674 + t790;
t619 = t723 * t659 + t726 * t660;
t754 = -t724 * t698 - t727 * t699;
t751 = t724 * t706;
t750 = t727 * t706;
t748 = -pkin(2) * t625 + pkin(6) * t534;
t693 = -t724 * t728 + t757;
t746 = -pkin(4) * t693 - t724 * g(3);
t745 = -t768 - t777;
t744 = -t767 + t784;
t742 = t678 * pkin(3) - t637 * qJ(4) - t707 * t658 - t579;
t533 = -t725 * t578 + t722 * t579;
t618 = t726 * t659 - t723 * t660;
t741 = t727 * t698 - t724 * t699;
t739 = t534 + t769;
t670 = -0.2e1 * t763;
t542 = t670 - t742;
t522 = -pkin(3) * t630 - qJ(4) * t612 + t542;
t525 = (t616 + t638) * qJ(4) + t733;
t737 = t725 * t522 + t722 * t525 + t769;
t547 = -qJ(4) * t643 + t562;
t580 = -pkin(3) * t812 + qJ(4) * t631;
t736 = t722 * t547 + t725 * t580 - t767;
t735 = pkin(3) * t643 + t742;
t532 = -pkin(3) * t611 + qJ(4) * t639 - t562;
t734 = qJ(4) * t782 + t725 * t532 - t768;
t513 = t725 * t542 + t785;
t517 = -pkin(3) * t562 + qJ(4) * t542;
t731 = -pkin(2) * t562 + pkin(6) * t513 + qJ(4) * t785 + t725 * t517;
t730 = -t535 - t814;
t716 = t719 * t728;
t703 = -t716 - t810;
t702 = t716 - t810;
t701 = -t786 - t810;
t700 = -t786 + t810;
t695 = -t716 + t786;
t694 = t716 + t786;
t692 = t727 * t728 + t758;
t691 = t765 * qJDD(1);
t688 = 0.2e1 * t711 + t759;
t682 = t726 * t696;
t681 = t765 * t760;
t669 = -pkin(4) * t692 + t727 * g(3);
t664 = -t679 + t704;
t663 = t678 - t704;
t662 = t726 * t689 - t718 * t760;
t661 = -t719 * t760 - t723 * t766;
t657 = -t723 * t701 - t773;
t656 = -t723 * t700 + t682;
t655 = t726 * t703 - t780;
t654 = t726 * t702 - t779;
t653 = t726 * t701 - t779;
t652 = t726 * t700 + t780;
t651 = t723 * t703 + t682;
t650 = t723 * t702 + t773;
t649 = t743 * t723;
t644 = t679 - t678;
t642 = -t723 * t688 + t648;
t641 = t726 * t688 + t723 * t690;
t628 = -pkin(5) * t653 - t774;
t627 = -pkin(5) * t651 - t781;
t624 = (t683 * t725 - t685 * t722) * t707;
t623 = (t683 * t722 + t685 * t725) * t707;
t621 = -pkin(1) * t653 + t660;
t620 = -pkin(1) * t651 + t659;
t608 = pkin(1) * t690 + pkin(5) * t655 + t774;
t607 = -pkin(1) * t688 + pkin(5) * t657 - t781;
t604 = t725 * t638 + t685 * t788;
t603 = t722 * t638 - t685 * t787;
t602 = -t722 * t637 - t683 * t787;
t601 = -t725 * t637 + t683 * t788;
t600 = t726 * t624 - t723 * t680;
t599 = t723 * t624 + t726 * t680;
t598 = t725 * t663 + t783;
t597 = -t722 * t664 - t775;
t596 = t722 * t663 - t776;
t595 = t725 * t664 - t782;
t594 = pkin(1) * t673 + pkin(5) * t619;
t589 = pkin(1) * t694 + pkin(5) * t691 + t619;
t584 = t726 * t604 + t756;
t583 = t726 * t602 - t756;
t582 = t723 * t604 - t755;
t581 = t723 * t602 + t755;
t575 = -t725 * t611 - t722 * t812;
t573 = -t722 * t611 + t725 * t812;
t570 = t727 * t600 + t724 * t623;
t569 = t724 * t600 - t727 * t623;
t568 = t777 - t791;
t567 = t726 * t598 - t723 * t612;
t566 = t726 * t597 + t723 * t616;
t565 = t723 * t598 + t726 * t612;
t564 = t723 * t597 - t726 * t616;
t563 = t784 - t792;
t555 = t726 * t575 + t723 * t644;
t554 = t723 * t575 - t726 * t644;
t553 = t727 * t584 + t724 * t603;
t552 = t727 * t583 - t724 * t601;
t551 = t724 * t584 - t727 * t603;
t550 = t724 * t583 + t727 * t601;
t545 = t800 - t806;
t544 = t579 - t804;
t543 = t578 - t805;
t541 = t727 * t567 + t724 * t596;
t540 = t727 * t566 + t724 * t595;
t539 = t724 * t567 - t727 * t596;
t538 = t724 * t566 - t727 * t595;
t536 = pkin(4) * (t727 * t561 + t724 * t592);
t530 = pkin(4) * (t727 * t558 + t724 * t587);
t529 = t726 * t534 + t723 * t625;
t528 = t723 * t534 - t726 * t625;
t527 = t727 * t555 + t724 * t573;
t526 = t724 * t555 - t727 * t573;
t523 = pkin(4) * (t727 * t549 + t724 * t574);
t521 = t670 - t735 - t804;
t520 = -t744 - t807;
t519 = -t745 - t808;
t518 = -t533 - t793;
t516 = -t730 - t805;
t515 = t725 * t547 - t722 * t580 - t791;
t514 = qJ(4) * t775 - t722 * t532 - t792;
t512 = t722 * t542 - t778;
t511 = -t723 * t544 + t726 * t568 - t794;
t510 = -t723 * t543 + t726 * t563 - t795;
t509 = t726 * t544 + t723 * t568 + t770;
t508 = -t736 - t807;
t507 = -t739 - t809;
t506 = -pkin(1) * t528 - t748;
t505 = t726 * t543 + t723 * t563 + t771;
t504 = -t734 - t808;
t503 = t726 * t513 + t723 * t562;
t502 = t723 * t513 - t726 * t562;
t501 = t726 * t518 + t574 * t803 - t796;
t500 = -pkin(2) * t512 + t801;
t499 = -t722 * t522 + t725 * t525 - t793;
t498 = -pkin(5) * t528 + (-pkin(6) * t726 + t803) * t533;
t497 = t723 * t518 - t574 * t802 + t772;
t496 = t726 * t515 - t723 * t521 - t794;
t495 = t726 * t514 - t723 * t516 - t795;
t494 = t723 * t515 + t726 * t521 + t770;
t493 = -t737 - t809;
t492 = t723 * t514 + t726 * t516 + t771;
t491 = pkin(5) * t529 + (-pkin(1) + t747) * t533;
t490 = -pkin(6) * t512 + qJ(4) * t778 - t722 * t517;
t489 = t726 * t499 - t723 * t545 - t796;
t488 = t723 * t499 + t726 * t545 + t772;
t487 = -pkin(1) * t502 - t731;
t486 = -pkin(5) * t502 + t726 * t490 - t723 * t500;
t485 = -pkin(1) * t512 + pkin(5) * t503 + t723 * t490 + t726 * t500;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t693, 0, -t692, 0, t746, -t669, -t741, -pkin(4) * t741, t727 * t662 - t751, t727 * t642 + t724 * t695, t727 * t656 + t723 * t758, t727 * t661 + t751, t727 * t654 + t724 * t713, t724 * qJDD(2) + t727 * t681, t727 * t627 - t724 * t620 - pkin(4) * (t724 * t655 + t727 * t690), t727 * t628 - t724 * t621 - pkin(4) * (t724 * t657 - t727 * t688), t727 * t618 - pkin(4) * (t724 * t691 + t727 * t694), -pkin(4) * (t724 * t619 + t727 * t673) - (t724 * pkin(1) - t727 * pkin(5)) * t618, t553, t527, t540, t552, t541, t570, t727 * t510 - t724 * t519 - t798, t727 * t511 - t724 * t520 - t797, t727 * t501 - t724 * t507 - t799, t727 * t498 - t724 * t506 - pkin(4) * (t724 * t529 - t727 * t533), t553, t527, t540, t552, t541, t570, t727 * t495 - t724 * t504 - t798, t727 * t496 - t724 * t508 - t797, t727 * t489 - t724 * t493 - t799, t727 * t486 - t724 * t487 - pkin(4) * (t724 * t503 - t727 * t512); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t692, 0, t693, 0, t669, t746, t754, pkin(4) * t754, t724 * t662 + t750, t724 * t642 - t727 * t695, t724 * t656 - t723 * t757, t724 * t661 - t750, t724 * t654 - t726 * t757, -t727 * qJDD(2) + t724 * t681, t724 * t627 + t727 * t620 + pkin(4) * (t727 * t655 - t724 * t690), t724 * t628 + t727 * t621 + pkin(4) * (t727 * t657 + t724 * t688), t724 * t618 + pkin(4) * (t727 * t691 - t724 * t694), pkin(4) * (t727 * t619 - t724 * t673) - (-t727 * pkin(1) - t724 * pkin(5)) * t618, t551, t526, t538, t550, t539, t569, t724 * t510 + t727 * t519 + t530, t724 * t511 + t727 * t520 + t536, t724 * t501 + t727 * t507 + t523, t724 * t498 + t727 * t506 + pkin(4) * (t727 * t529 + t724 * t533), t551, t526, t538, t550, t539, t569, t724 * t495 + t727 * t504 + t530, t724 * t496 + t727 * t508 + t536, t724 * t489 + t727 * t493 + t523, t724 * t486 + t727 * t487 + pkin(4) * (t727 * t503 + t724 * t512); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t698, t699, 0, 0, t649, t641, t652, t648, t650, 0, t608, t607, t589, t594, t582, t554, t564, t581, t565, t599, t505, t509, t497, t491, t582, t554, t564, t581, t565, t599, t492, t494, t488, t485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t728, 0, 0, -g(3), -t698, 0, t662, t642, t656, t661, t654, t681, t627, t628, t618, pkin(5) * t618, t584, t555, t566, t583, t567, t600, t510, t511, t501, t498, t584, t555, t566, t583, t567, t600, t495, t496, t489, t486; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t728, 0, qJDD(1), 0, g(3), 0, -t699, 0, t706, -t695, -t759, -t706, -t713, -qJDD(2), t620, t621, 0, pkin(1) * t618, -t603, -t573, -t595, t601, -t596, -t623, t519, t520, t507, t506, -t603, -t573, -t595, t601, -t596, -t623, t504, t508, t493, t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t698, t699, 0, 0, t649, t641, t652, t648, t650, 0, t608, t607, t589, t594, t582, t554, t564, t581, t565, t599, t505, t509, t497, t491, t582, t554, t564, t581, t565, t599, t492, t494, t488, t485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t689, t690, t696, -t711, t702, t711, 0, -t673, t659, 0, t604, t575, t597, t602, t598, t624, t563, t568, t518, -pkin(6) * t533, t604, t575, t597, t602, t598, t624, t514, t515, t499, t490; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t710, t688, t700, t766, t697, -t710, t673, 0, t660, 0, -t647, -t644, -t616, t647, t612, t680, t543, t544, -t806, -pkin(2) * t533, -t647, -t644, -t616, t647, t612, t680, t516, t521, t545, t500; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t706, t695, t759, t706, t713, qJDD(2), -t659, -t660, 0, 0, t603, t573, t595, -t601, t596, t623, t745, t744, t739, t748, t603, t573, t595, -t601, t596, t623, t734, t736, t737, t731; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t638, -t611, -t813, -t667, t663, t667, 0, t625, t578, 0, t638, -t611, -t813, -t667, t663, t667, qJ(4) * t813, t547, t525, qJ(4) * t535; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t789, t812, t664, t637, -t631, t789, -t625, 0, t579, 0, -t789, t812, t664, t637, -t631, t789, t532, t580, t522, t517; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t647, t644, t616, -t647, -t612, -t680, -t578, -t579, 0, 0, t647, t644, t616, -t647, -t612, -t680, t730, t735 + 0.2e1 * t763, -t800, -t801; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t638, -t611, -t813, -t667, t663, t667, 0, t562, t535, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t789, t812, t664, t637, -t631, t789, -t562, 0, t542, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t647, t644, t616, -t647, -t612, -t680, -t535, -t542, 0, 0;];
m_new_reg = t1;
