% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRPP5
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
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:16
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRPP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPP5_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPP5_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S5RPRPP5_invdynm_fixb_reg2_snew_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:16:49
% EndTime: 2019-12-31 18:16:54
% DurationCPUTime: 4.86s
% Computational Cost: add. (6739->472), mult. (14297->373), div. (0->0), fcn. (6018->4), ass. (0->283)
t609 = qJD(3) ^ 2;
t607 = cos(qJ(3));
t604 = t607 ^ 2;
t610 = qJD(1) ^ 2;
t700 = t604 * t610;
t581 = t609 + t700;
t605 = sin(qJ(3));
t584 = t605 * t610 * t607;
t572 = qJDD(3) + t584;
t705 = t572 * t605;
t518 = t581 * t607 + t705;
t688 = qJD(1) * qJD(3);
t591 = t605 * t688;
t684 = t607 * qJDD(1);
t562 = -0.2e1 * t591 + t684;
t606 = sin(qJ(1));
t608 = cos(qJ(1));
t737 = pkin(5) * (t518 * t608 + t562 * t606);
t481 = pkin(5) * (t518 * t606 - t562 * t608);
t508 = pkin(2) * t518;
t734 = pkin(6) * t518;
t704 = t572 * t607;
t526 = -t581 * t605 + t704;
t777 = pkin(6) * t526;
t776 = qJ(2) * t526;
t673 = t607 * t688;
t685 = t605 * qJDD(1);
t560 = t673 + t685;
t576 = t608 * g(1) + t606 * g(2);
t602 = qJDD(1) * qJ(2);
t646 = t576 - t602;
t748 = -pkin(6) - pkin(1);
t630 = -t748 * t610 + t646;
t626 = -pkin(3) * t673 - qJ(4) * t591 + t630;
t603 = t605 ^ 2;
t701 = t603 * t610;
t775 = -t560 * pkin(4) - qJ(5) * t701 + qJDD(5) + t626;
t711 = t562 * t607;
t559 = 0.2e1 * t673 + t685;
t716 = t559 * t605;
t495 = -t711 + t716;
t570 = (-t603 + t604) * t610;
t479 = t495 * t606 - t570 * t608;
t774 = t495 * t608 + t570 * t606;
t579 = -t609 + t701;
t515 = t579 * t605 + t704;
t488 = t515 * t606 - t608 * t685;
t773 = t515 * t608 + t606 * t685;
t582 = -t609 + t700;
t573 = qJDD(3) - t584;
t703 = t573 * t605;
t519 = -t582 * t607 + t703;
t489 = t519 * t606 + t608 * t684;
t770 = t519 * t608 - t606 * t684;
t769 = 2 * qJD(1);
t692 = t603 + t604;
t569 = t692 * t610;
t566 = t692 * qJDD(1);
t709 = t566 * t606;
t500 = pkin(5) * (t569 * t608 + t709);
t768 = (-t581 + t701) * pkin(4);
t767 = (-t569 + t701) * pkin(4);
t766 = (qJDD(3) + t573) * pkin(4);
t694 = t569 - t609;
t765 = t694 * pkin(3);
t619 = (qJD(4) * t607 - qJD(2)) * t769 + t626;
t561 = -t591 + t684;
t714 = t561 * qJ(4);
t617 = t619 + t714;
t732 = t560 * pkin(3);
t468 = t617 - t732;
t764 = (pkin(3) * t607 + qJ(4) * t605 + pkin(2)) * t468;
t763 = t694 * qJ(4);
t575 = t606 * g(1) - t608 * g(2);
t656 = qJDD(2) - t575;
t638 = -t610 * qJ(2) + t656;
t537 = t748 * qJDD(1) + t638;
t731 = t605 * g(3);
t502 = t607 * t537 + t731;
t503 = t607 * g(3) - t605 * t537;
t472 = t607 * t502 - t503 * t605;
t762 = t508 - t776;
t550 = qJ(2) * t562;
t761 = -pkin(1) * t518 - t550;
t690 = qJD(1) * t607;
t571 = -qJD(3) * pkin(4) - qJ(5) * t690;
t760 = -t560 * qJ(5) - qJD(3) * t571;
t580 = -t609 - t701;
t702 = t573 * t607;
t516 = t580 * t605 + t702;
t759 = -pkin(1) * t516 + qJ(2) * t559;
t557 = qJ(2) * t569;
t758 = pkin(1) * t566 - t557;
t757 = pkin(3) * t581 + qJ(4) * t572;
t756 = pkin(3) * t573 + qJ(4) * t580;
t755 = (t561 + t562) * qJ(4) - t732;
t754 = -pkin(4) * t559 - qJ(5) * t580;
t726 = qJ(4) * t607;
t741 = pkin(3) * t605;
t556 = (-t726 + t741) * qJD(1);
t753 = t556 * t690 + qJDD(4);
t752 = -t508 - t757;
t750 = -pkin(4) * t584 + (t561 + t591) * qJ(5);
t749 = pkin(3) + pkin(4);
t523 = t580 * t607 - t703;
t747 = pkin(1) * t523;
t746 = pkin(1) * t526;
t745 = pkin(2) * t472;
t687 = qJD(2) * qJD(1);
t680 = -0.2e1 * t687;
t532 = t630 + t680;
t744 = pkin(2) * t532;
t553 = pkin(2) * t562;
t743 = pkin(2) * t566;
t742 = pkin(2) * t569;
t681 = qJD(5) * t769;
t620 = t731 + (t537 + t681) * t607 + t750 - t753;
t614 = t749 * qJDD(3) + t620;
t698 = t609 * qJ(4);
t456 = t614 + t698;
t740 = pkin(4) * t456;
t738 = pkin(5) * (-t516 * t608 + t559 * t606);
t708 = t566 * t608;
t736 = pkin(5) * (-t569 * t606 + t708);
t735 = pkin(6) * t516;
t733 = pkin(6) * t566;
t730 = t609 * pkin(3);
t729 = qJ(2) * t523;
t727 = qJ(4) * t559;
t659 = -qJDD(3) * qJ(4) + t503;
t640 = t659 + t760;
t686 = qJD(4) * qJD(3);
t679 = -0.2e1 * t686;
t629 = t640 + t679;
t665 = (-(2 * qJD(5)) + t556) * qJD(1);
t621 = t605 * t665 + t629 + t730;
t455 = pkin(4) * t701 + t621;
t725 = qJ(5) * t455;
t724 = qJ(5) * t456;
t723 = qJ(5) * t572;
t722 = qJ(5) * t573;
t720 = qJ(5) * t581;
t719 = qJDD(1) * pkin(1);
t718 = qJDD(3) * pkin(3);
t715 = t559 * t607;
t713 = t562 * t605;
t699 = t605 * t532;
t512 = t607 * t532;
t691 = qJD(1) * t556;
t633 = -t605 * t691 - t659;
t627 = -t633 + t730;
t475 = t627 + t679;
t628 = -t502 - t718 + t753;
t477 = -t628 + t698;
t697 = pkin(3) * t477 - qJ(4) * t475;
t696 = t553 + t777;
t695 = pkin(2) * t559 - pkin(6) * t523;
t693 = -pkin(3) * t684 - qJ(4) * t685;
t689 = qJ(5) * qJDD(1);
t682 = -0.2e1 * t690;
t678 = (-t559 - t560) * pkin(3);
t615 = (-0.2e1 * qJD(2) + (0.2e1 * qJD(4) + t571) * t607) * qJD(1) + t775;
t613 = t615 + t714;
t451 = t613 - t732;
t419 = t749 * t451 + t725;
t427 = qJ(4) * t451 + t724;
t671 = -t605 * t419 + t607 * t427;
t446 = t767 - t765 + (t665 - t689) * t605 + t629;
t592 = qJ(5) * t684;
t450 = t592 + t614 - t763;
t670 = -t605 * t446 + t607 * t450;
t538 = t610 * pkin(1) + t646 + t680;
t539 = -t638 + t719;
t669 = -t608 * t538 - t539 * t606;
t668 = -t575 * t606 - t608 * t576;
t664 = t606 * t584;
t663 = t608 * t584;
t447 = -t475 * t605 + t477 * t607;
t662 = -pkin(2) * t447 - t697;
t513 = t693 - t743;
t661 = pkin(3) * t456 - qJ(4) * t455 + t740;
t462 = t619 + t755;
t660 = -pkin(3) * t713 + t607 * t462 - t734;
t567 = qJDD(1) * t608 - t606 * t610;
t658 = pkin(5) * t567 + g(3) * t606;
t568 = qJDD(1) * t606 + t608 * t610;
t657 = -pkin(5) * t568 + g(3) * t608;
t655 = -t695 + t512;
t654 = t699 + t553;
t653 = -t699 - t735;
t473 = -t502 * t605 - t503 * t607;
t651 = t538 * t606 - t539 * t608;
t497 = t713 + t715;
t525 = -t579 * t607 + t705;
t527 = t582 * t605 + t702;
t649 = t575 * t608 - t576 * t606;
t647 = -t503 + t508;
t440 = t613 + t678 + t754;
t511 = t722 - t727;
t645 = -t440 * t605 + t607 * t511 - t735;
t444 = t615 + t720 + t755;
t485 = t749 * t562 - t723;
t644 = t607 * t444 - t485 * t605 - t734;
t598 = 0.2e1 * t686;
t470 = t598 + t633 + t765;
t471 = t628 + t763;
t643 = -t470 * t605 + t607 * t471 + t733;
t642 = t733 - t472;
t507 = pkin(2) * t516;
t641 = t502 + t507;
t428 = -t455 * t605 + t456 * t607;
t639 = -pkin(2) * t428 - t661;
t637 = t440 * t607 + t511 * t605 - t695;
t636 = t444 * t605 + t485 * t607 + t696;
t635 = -pkin(2) * t451 - t607 * t419 - t605 * t427;
t634 = pkin(3) * t711 + t462 * t605 + t696;
t463 = t678 + t617;
t632 = -qJ(4) * t716 + t463 * t607 - t695;
t631 = -qJ(4) * t715 - t463 * t605 - t735;
t625 = t598 - t627;
t624 = t625 + t757;
t623 = t477 + t756;
t622 = -t507 - t623;
t588 = t605 * t681;
t618 = t588 + t625 - t760 - t768;
t616 = t618 + t757;
t612 = t620 + t698 + t718 + t766;
t611 = t612 + t756;
t599 = 0.2e1 * t687;
t595 = pkin(4) * t684;
t554 = t692 * t688;
t547 = t656 - 0.2e1 * t719;
t545 = -t576 + t599 + 0.2e1 * t602;
t536 = qJDD(3) * t608 - t554 * t606;
t535 = qJDD(3) * t606 + t554 * t608;
t534 = t561 * t605 + t604 * t688;
t533 = -t560 * t607 + t603 * t688;
t524 = (t561 - t591) * t607;
t514 = (t560 + t673) * t605;
t499 = -t513 + t595;
t493 = t533 * t606 - t663;
t492 = t534 * t606 + t663;
t491 = -t533 * t608 - t664;
t490 = -t534 * t608 + t664;
t484 = pkin(1) * t539 - qJ(2) * t538;
t480 = pkin(5) * (t516 * t606 + t559 * t608);
t467 = t468 * t741;
t466 = t473 + t742;
t465 = -t647 + t776;
t464 = t641 - t729;
t460 = -t655 - t747;
t459 = -t526 * t748 + t654;
t458 = -t518 * t748 - t512 + t550;
t457 = t653 + t759;
t452 = t642 + t758;
t448 = -t475 * t607 - t477 * t605;
t445 = -t622 - t729;
t443 = t624 + t762;
t441 = -qJ(2) * t473 + t745;
t439 = t470 * t607 + t471 * t605 + t742;
t438 = t748 * t473 - t744;
t437 = -qJ(2) * t532 + t748 * t472;
t436 = -t634 - t746;
t435 = -t632 - t747;
t434 = t660 + t761;
t433 = t631 + t759;
t432 = t616 + t762;
t431 = t643 + t758;
t430 = t507 + t611 - t729;
t429 = -t455 * t607 - t456 * t605;
t425 = -t637 - t747;
t424 = -t636 - t746;
t423 = t645 + t759;
t422 = t644 + t761;
t421 = t446 * t607 + t450 * t605 - t742;
t420 = t748 * t566 + t557 + t670;
t418 = -qJ(2) * t448 - t662;
t417 = t748 * t448 - t764;
t416 = -t467 + (-qJ(2) + t726) * t468 + t748 * t447;
t415 = -qJ(2) * t429 - t639;
t414 = t748 * t429 + t635;
t413 = -qJ(2) * t451 + t748 * t428 + t671;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t567, 0, -t568, 0, -t658, -t657, -t649, -pkin(5) * t649, 0, -t567, t568, 0, 0, 0, t651, t658, t657, pkin(5) * t651 + (-pkin(1) * t606 + qJ(2) * t608) * g(3), t492, -t479, t489, t493, t488, t536, -t460 * t606 + t464 * t608 - t738, -t606 * t459 + t608 * t465 - t737, -pkin(2) * t708 + t466 * t606 - t736, t608 * t441 - t606 * t438 - pkin(5) * (-t472 * t608 - t532 * t606), t492, t489, t479, t536, -t488, t493, -t435 * t606 + t445 * t608 - t738, t439 * t606 + t513 * t608 - t736, -t436 * t606 + t443 * t608 + t737, t608 * t418 - t606 * t417 - pkin(5) * (-t447 * t608 - t468 * t606), t492, t479, -t489, t493, t488, t536, -t425 * t606 + t430 * t608 - t738, -t424 * t606 + t432 * t608 + t737, t606 * t421 + t608 * t499 + t736, t608 * t415 - t606 * t414 - pkin(5) * (-t428 * t608 - t451 * t606); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t568, 0, t567, 0, t657, -t658, t668, pkin(5) * t668, 0, -t568, -t567, 0, 0, 0, t669, -t657, t658, pkin(5) * t669 + (pkin(1) * t608 + qJ(2) * t606) * g(3), t490, t774, -t770, t491, -t773, t535, t460 * t608 + t464 * t606 + t480, t608 * t459 + t606 * t465 - t481, -pkin(2) * t709 - t466 * t608 - t500, t606 * t441 + t608 * t438 + pkin(5) * (t472 * t606 - t532 * t608), t490, -t770, -t774, t535, t773, t491, t435 * t608 + t445 * t606 + t480, -t439 * t608 + t513 * t606 - t500, t436 * t608 + t443 * t606 + t481, t606 * t418 + t608 * t417 + pkin(5) * (t447 * t606 - t468 * t608), t490, -t774, t770, t491, -t773, t535, t425 * t608 + t430 * t606 + t480, t424 * t608 + t432 * t606 + t481, -t608 * t421 + t606 * t499 + t500, t606 * t415 + t608 * t414 + pkin(5) * (t428 * t606 - t451 * t608); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t575, t576, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t547, t545, t484, t524, -t497, t527, t514, -t525, 0, t457, t458, t452, t437, t524, t527, t497, 0, t525, t514, t433, t431, t434, t416, t524, t497, -t527, t514, -t525, 0, t423, t422, t420, t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t610, 0, 0, -g(3), -t575, 0, 0, -qJDD(1), t610, 0, 0, 0, -t539, 0, g(3), qJ(2) * g(3), t584, t570, t684, -t584, -t685, qJDD(3), t464, t465, -t743, t441, t584, t684, -t570, qJDD(3), t685, -t584, t445, t513, t443, t418, t584, -t570, -t684, -t584, -t685, qJDD(3), t430, t432, t499, t415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t610, 0, qJDD(1), 0, g(3), 0, -t576, 0, 0, -t610, -qJDD(1), 0, 0, 0, -t538, -g(3), 0, pkin(1) * g(3), -t534, t495, -t519, -t533, -t515, t554, t460, t459, -t466, t438, -t534, -t519, -t495, t554, t515, -t533, t435, -t439, t436, t417, -t534, -t495, t519, -t533, -t515, t554, t425, t424, -t421, t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t575, t576, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t547, t545, t484, t524, -t497, t527, t514, -t525, 0, t457, t458, t452, t437, t524, t527, t497, 0, t525, t514, t433, t431, t434, t416, t524, t497, -t527, t514, -t525, 0, t423, t422, t420, t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t539, -t538, 0, t524, -t497, t527, t514, -t525, 0, t653, -t512 + t734, t642, -pkin(6) * t472, t524, t527, t497, 0, t525, t514, t631, t643, t660, -pkin(6) * t447 + t468 * t726 - t467, t524, t497, -t527, t514, -t525, 0, t645, t644, t670 - t733, -pkin(6) * t428 + t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t610, 0, 0, 0, t539, 0, -g(3), 0, -t584, -t570, -t684, t584, t685, -qJDD(3), -t641, t647, t743, -t745, -t584, -t684, t570, -qJDD(3), -t685, t584, t622, -t513, t475 + t752, t662, -t584, t570, t684, t584, t685, -qJDD(3), qJD(5) * t682 + t622 - t750 - t766, t621 + t752 + t768, -t499, t639; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t610, qJDD(1), 0, 0, 0, t538, g(3), 0, 0, t534, -t495, t519, t533, t515, -t554, t655, -t654 - t777, t466, pkin(6) * t473 + t744, t534, t519, t495, -t554, -t515, t533, t632, t439, t634, pkin(6) * t448 + t764, t534, t495, -t519, t533, t515, -t554, t637, t636, t421, pkin(6) * t429 - t635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t561, -t559, t573, t591, t579, -t591, 0, -t532, -t502, 0, t561, t573, t559, -t591, -t579, t591, -t727, t471, t462, qJ(4) * t468, t561, t559, -t573, t591, t579, -t591, t511, t444, t450, t427; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t673, t562, -t582, -t560, t572, -t673, t532, 0, -t503, 0, t673, -t582, -t562, -t673, -t572, -t560, t463, t470, pkin(3) * t562, pkin(3) * t468, t673, -t562, t582, -t560, t572, -t673, t440, t485, t446, t419; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t584, t570, t684, -t584, -t685, qJDD(3), t502, t503, 0, 0, t584, t684, -t570, qJDD(3), t685, -t584, t623, t693, t624, t697, t584, -t570, -t684, -t584, -t685, qJDD(3), t611, t616, t595 - t693, t661; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t561, t573, t559, -t591, -t579, t591, 0, -t477, t468, 0, t561, t559, -t573, t591, t579, -t591, t722, t451 + t720, t592 + t456, t724; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t584, t684, -t570, qJDD(3), t685, -t584, t477, 0, -t475, 0, t584, -t570, -t684, -t584, -t685, qJDD(3), t612, t618, t595, t740; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t673, t582, t562, t673, t572, t560, -t468, t475, 0, 0, -t673, t562, -t582, t560, -t572, t673, qJD(4) * t682 - t571 * t690 + t599 - t714 + t732 - t754 - t775, -pkin(4) * t562 + t723, -t730 + t588 + t598 + (t689 - t691) * t605 - t767 - t640, -pkin(4) * t451 - t725; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t561, t559, -t573, t591, t579, -t591, 0, t451, t456, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t673, t562, -t582, t560, -t572, t673, -t451, 0, -t455, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t584, t570, t684, t584, t685, -qJDD(3), -t456, t455, 0, 0;];
m_new_reg = t1;