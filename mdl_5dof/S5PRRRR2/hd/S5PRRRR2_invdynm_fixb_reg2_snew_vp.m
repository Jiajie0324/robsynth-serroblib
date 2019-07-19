% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRRR2
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
%   pkin=[a2,a3,a4,d3,d4,d5]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-07-18 13:30
% Revision: 08c8d617a845f5dd194efdf9aca2774760f7818f (2019-07-16)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRR2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRR2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRR2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S5PRRRR2_invdynm_fixb_reg2_snew_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-07-18 13:30:26
% EndTime: 2019-07-18 13:30:32
% DurationCPUTime: 6.26s
% Computational Cost: add. (19685->325), mult. (25724->407), div. (0->0), fcn. (15904->8), ass. (0->254)
t628 = qJD(2) + qJD(3);
t624 = qJD(4) + t628;
t622 = t624 ^ 2;
t627 = qJDD(2) + qJDD(3);
t623 = qJDD(4) + t627;
t633 = sin(qJ(4));
t637 = cos(qJ(4));
t585 = t622 * t637 + t623 * t633;
t588 = t622 * t633 - t623 * t637;
t634 = sin(qJ(3));
t638 = cos(qJ(3));
t521 = t585 * t638 - t588 * t634;
t526 = t585 * t634 + t588 * t638;
t635 = sin(qJ(2));
t639 = cos(qJ(2));
t475 = t521 * t639 - t526 * t635;
t631 = g(3) - qJDD(1);
t564 = pkin(5) * t585 - t631 * t637;
t719 = pkin(5) * t588 - t631 * t633;
t464 = pkin(4) * t521 + t564 * t638 - t634 * t719;
t726 = pkin(4) * t526 + t564 * t634 + t638 * t719;
t667 = t639 * t464 - t635 * t726;
t741 = qJ(1) * t475 + t667;
t727 = t521 * t635 + t526 * t639;
t736 = t635 * t464 + t639 * t726;
t740 = qJ(1) * t727 + t736;
t626 = t628 ^ 2;
t595 = t626 * t638 + t627 * t634;
t598 = t626 * t634 - t627 * t638;
t530 = t595 * t639 - t598 * t635;
t571 = pkin(4) * t595 - t631 * t638;
t720 = pkin(4) * t598 - t631 * t634;
t663 = t639 * t571 - t635 * t720;
t737 = qJ(1) * t530 + t663;
t717 = t595 * t635 + t598 * t639;
t728 = t635 * t571 + t639 * t720;
t733 = qJ(1) * t717 + t728;
t613 = g(1) * t635 - t639 * g(2);
t602 = qJDD(2) * pkin(2) + t613;
t614 = g(1) * t639 + g(2) * t635;
t641 = qJD(2) ^ 2;
t603 = -pkin(2) * t641 - t614;
t543 = t602 * t634 + t603 * t638;
t529 = -pkin(3) * t626 + t543;
t542 = -t638 * t602 + t603 * t634;
t646 = pkin(3) * t627 - t542;
t488 = t529 * t633 - t637 * t646;
t489 = t637 * t529 + t633 * t646;
t666 = t488 * t633 + t637 * t489;
t434 = t488 * t637 - t489 * t633;
t702 = t434 * t638;
t399 = -t634 * t666 + t702;
t703 = t434 * t634;
t721 = t638 * t666 + t703;
t381 = t399 * t635 + t639 * t721;
t383 = t399 * t639 - t635 * t721;
t665 = t542 * t634 + t638 * t543;
t495 = t542 * t638 - t543 * t634;
t700 = t495 * t639;
t438 = -t635 * t665 + t700;
t701 = t495 * t635;
t436 = t639 * t665 + t701;
t483 = t623 * pkin(6) + t489;
t632 = sin(qJ(5));
t636 = cos(qJ(5));
t471 = t483 * t632 + t636 * t631;
t472 = t483 * t636 - t631 * t632;
t428 = t632 * t471 + t636 * t472;
t610 = qJDD(2) * t639 - t635 * t641;
t617 = t635 * t631;
t710 = -qJ(1) * t610 - t617;
t609 = qJDD(2) * t635 + t639 * t641;
t690 = t639 * t631;
t709 = -qJ(1) * t609 + t690;
t708 = pkin(1) * t631;
t707 = pkin(2) * t631;
t427 = t471 * t636 - t472 * t632;
t706 = pkin(6) * t427;
t608 = t632 * t622 * t636;
t599 = qJDD(5) + t608;
t699 = t599 * t632;
t600 = qJDD(5) - t608;
t698 = t600 * t632;
t697 = t600 * t636;
t629 = t632 ^ 2;
t696 = t622 * t629;
t484 = -t622 * pkin(6) + t488;
t481 = t632 * t484;
t691 = t632 * t623;
t482 = t636 * t484;
t615 = t636 * t623;
t630 = t636 ^ 2;
t680 = t629 + t630;
t583 = t680 * t623;
t616 = t630 * t622;
t589 = t616 + t696;
t524 = t583 * t637 - t589 * t633;
t412 = pkin(5) * t524 + t427 * t633;
t520 = t583 * t633 + t589 * t637;
t413 = -pkin(5) * t520 + t427 * t637;
t478 = -t520 * t634 + t524 * t638;
t388 = pkin(4) * t478 + t412 * t638 + t413 * t634;
t474 = t520 * t638 + t524 * t634;
t389 = -pkin(4) * t474 - t412 * t634 + t413 * t638;
t689 = t639 * t388 + t635 * t389;
t431 = pkin(3) * t434;
t688 = -pkin(2) * t399 - t431;
t406 = t428 * t633 - t484 * t637;
t425 = pkin(6) * t428;
t687 = pkin(3) * t406 + t425;
t640 = qJD(5) ^ 2;
t605 = -t640 - t696;
t551 = -t605 * t632 - t697;
t684 = pkin(6) * t551 + t481;
t607 = -t616 - t640;
t549 = t607 * t636 - t699;
t683 = pkin(6) * t549 - t482;
t679 = qJD(5) * t624;
t407 = t428 * t637 + t484 * t633;
t390 = t406 * t638 + t407 * t634;
t678 = pkin(2) * t390 + t687;
t677 = pkin(6) * t583 + t428;
t612 = t636 * t679;
t579 = 0.2e1 * t612 + t691;
t504 = t551 * t633 - t579 * t637;
t676 = pkin(3) * t504 + t684;
t674 = t632 * t679;
t582 = t615 - 0.2e1 * t674;
t503 = t549 * t633 + t582 * t637;
t675 = pkin(3) * t503 + t683;
t375 = pkin(5) * t407 - (-pkin(6) * t633 - pkin(3)) * t427;
t391 = -t406 * t634 + t407 * t638;
t395 = -pkin(5) * t406 + t637 * t706;
t359 = pkin(2) * t427 + pkin(4) * t391 + t375 * t638 + t395 * t634;
t362 = -pkin(4) * t390 - t375 * t634 + t395 * t638;
t673 = -t359 * t635 + t639 * t362;
t591 = t636 * t599;
t545 = t607 * t632 + t591;
t443 = -pkin(6) * t545 + t481;
t505 = t549 * t637 - t582 * t633;
t401 = -pkin(3) * t545 + pkin(5) * t505 + t443 * t633 + t471 * t637;
t408 = -pkin(5) * t503 + t443 * t637 - t471 * t633;
t449 = -t503 * t634 + t505 * t638;
t367 = -pkin(2) * t545 + pkin(4) * t449 + t401 * t638 + t408 * t634;
t447 = t503 * t638 + t505 * t634;
t373 = -pkin(4) * t447 - t401 * t634 + t408 * t638;
t672 = -t367 * t635 + t639 * t373;
t547 = t605 * t636 - t698;
t444 = -pkin(6) * t547 + t482;
t506 = t551 * t637 + t579 * t633;
t402 = -pkin(3) * t547 + pkin(5) * t506 + t444 * t633 + t472 * t637;
t409 = -pkin(5) * t504 + t444 * t637 - t472 * t633;
t450 = -t504 * t634 + t506 * t638;
t368 = -pkin(2) * t547 + pkin(4) * t450 + t402 * t638 + t409 * t634;
t448 = t504 * t638 + t506 * t634;
t374 = -pkin(4) * t448 - t402 * t634 + t409 * t638;
t671 = -t368 * t635 + t639 * t374;
t430 = pkin(3) * t631 + pkin(5) * t666;
t377 = pkin(4) * t721 + pkin(5) * t703 + t430 * t638 + t707;
t380 = pkin(4) * t399 + pkin(5) * t702 - t430 * t634;
t670 = -t377 * t635 + t639 * t380;
t669 = -t388 * t635 + t639 * t389;
t565 = -t613 * t635 - t639 * t614;
t660 = t633 * t608;
t659 = t637 * t608;
t658 = pkin(2) * t447 + t675;
t657 = pkin(2) * t448 + t676;
t656 = pkin(3) * t520 + t677;
t655 = pkin(1) * t427 + t639 * t359 + t635 * t362;
t654 = -pkin(1) * t545 + t639 * t367 + t635 * t373;
t653 = -pkin(1) * t547 + t639 * t368 + t635 * t374;
t652 = t639 * t377 + t635 * t380 + t708;
t651 = -pkin(3) * t588 - t488;
t650 = -pkin(2) * t598 - t542;
t649 = pkin(2) * t474 + t656;
t566 = t613 * t639 - t614 * t635;
t648 = -pkin(2) * t526 + t651;
t491 = pkin(4) * t665 + t707;
t647 = pkin(4) * t700 - t491 * t635;
t645 = -pkin(2) * t595 - t543;
t644 = pkin(4) * t701 + t639 * t491 + t708;
t643 = -pkin(3) * t585 - t489;
t642 = -pkin(2) * t521 + t643;
t606 = t616 - t640;
t604 = t640 - t696;
t590 = -t616 + t696;
t581 = t615 - t674;
t580 = t612 + t691;
t575 = t680 * t679;
t573 = -pkin(1) * t609 + t614;
t572 = pkin(1) * t610 + t613;
t554 = pkin(1) * t566;
t553 = qJDD(5) * t633 + t575 * t637;
t552 = -qJDD(5) * t637 + t575 * t633;
t550 = -t604 * t632 + t591;
t548 = t606 * t636 - t698;
t546 = t604 * t636 + t699;
t544 = t606 * t632 + t697;
t541 = t580 * t636 - t629 * t679;
t540 = -t581 * t632 - t630 * t679;
t536 = (t580 + t612) * t632;
t535 = (t581 - t674) * t636;
t516 = -t579 * t632 + t582 * t636;
t515 = t579 * t636 + t582 * t632;
t514 = t550 * t637 + t633 * t691;
t513 = t548 * t637 + t615 * t633;
t512 = t550 * t633 - t637 * t691;
t511 = t548 * t633 - t615 * t637;
t510 = t541 * t637 - t660;
t509 = t540 * t637 + t660;
t508 = t541 * t633 + t659;
t507 = t540 * t633 - t659;
t500 = -t552 * t634 + t553 * t638;
t499 = t552 * t638 + t553 * t634;
t498 = t516 * t637 + t590 * t633;
t497 = t516 * t633 - t590 * t637;
t492 = pkin(2) * t495;
t486 = -pkin(1) * t717 + t650;
t485 = -pkin(1) * t530 + t645;
t470 = -t512 * t634 + t514 * t638;
t469 = -t511 * t634 + t513 * t638;
t468 = t512 * t638 + t514 * t634;
t467 = t511 * t638 + t513 * t634;
t454 = -t508 * t634 + t510 * t638;
t453 = -t507 * t634 + t509 * t638;
t452 = t508 * t638 + t510 * t634;
t451 = t507 * t638 + t509 * t634;
t442 = -t499 * t635 + t500 * t639;
t441 = t499 * t639 + t500 * t635;
t440 = -t497 * t634 + t498 * t638;
t439 = t497 * t638 + t498 * t634;
t429 = t474 * t639 + t478 * t635;
t424 = -t468 * t635 + t470 * t639;
t423 = -t467 * t635 + t469 * t639;
t422 = t468 * t639 + t470 * t635;
t421 = t467 * t639 + t469 * t635;
t420 = -t452 * t635 + t454 * t639;
t419 = -t451 * t635 + t453 * t639;
t418 = t452 * t639 + t454 * t635;
t417 = t451 * t639 + t453 * t635;
t416 = -pkin(1) * t438 - t492;
t415 = -pkin(1) * t727 + t648;
t414 = -pkin(1) * t475 + t642;
t411 = t448 * t639 + t450 * t635;
t410 = t447 * t639 + t449 * t635;
t404 = -t439 * t635 + t440 * t639;
t403 = t439 * t639 + t440 * t635;
t394 = pkin(1) * t429 + t649;
t393 = pkin(1) * t411 + t657;
t392 = pkin(1) * t410 + t658;
t364 = t390 * t639 + t391 * t635;
t363 = -pkin(1) * t383 + t688;
t357 = pkin(1) * t364 + t678;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, 0, -t631, g(2), qJ(1) * g(2), 0, 0, t610, 0, -t609, 0, t710, -t709, -t566, -qJ(1) * t566, 0, 0, -t717, 0, -t530, 0, t733, t737, t438, qJ(1) * t438 + t647, 0, 0, -t727, 0, -t475, 0, t740, t741, t383, qJ(1) * t383 + t670, t420, t404, t424, t419, t423, t442, -qJ(1) * t410 + t672, -qJ(1) * t411 + t671, -qJ(1) * t429 + t669, -qJ(1) * t364 + t673; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t631, 0, -g(1), -qJ(1) * g(1), 0, 0, t609, 0, t610, 0, t709, t710, t565, qJ(1) * t565 + t708, 0, 0, t530, 0, -t717, 0, -t737, t733, t436, qJ(1) * t436 + t644, 0, 0, t475, 0, -t727, 0, -t741, t740, t381, qJ(1) * t381 + t652, t418, t403, t422, t417, t421, t441, qJ(1) * (-t447 * t635 + t449 * t639) + t654, qJ(1) * (-t448 * t635 + t450 * t639) + t653, qJ(1) * (-t474 * t635 + t478 * t639) + t689, qJ(1) * (-t390 * t635 + t391 * t639) + t655; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(2), t572, t573, 0, t554, 0, 0, 0, 0, 0, t627, t486, t485, 0, t416, 0, 0, 0, 0, 0, t623, t415, t414, 0, t363, t536, t515, t546, t535, t544, 0, t392, t393, t394, t357; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t631, g(2), 0, 0, 0, t610, 0, -t609, 0, -t617, -t690, -t566, 0, 0, 0, -t717, 0, -t530, 0, t728, t663, t438, t647, 0, 0, -t727, 0, -t475, 0, t736, t667, t383, t670, t420, t404, t424, t419, t423, t442, t672, t671, t669, t673; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t631, 0, -g(1), 0, 0, 0, t609, 0, t610, 0, t690, -t617, t565, t708, 0, 0, t530, 0, -t717, 0, -t663, t728, t436, t644, 0, 0, t475, 0, -t727, 0, -t667, t736, t381, t652, t418, t403, t422, t417, t421, t441, t654, t653, t689, t655; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(2), t572, t573, 0, t554, 0, 0, 0, 0, 0, t627, t486, t485, 0, t416, 0, 0, 0, 0, 0, t623, t415, t414, 0, t363, t536, t515, t546, t535, t544, 0, t392, t393, t394, t357; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t641, 0, 0, -t631, -t613, 0, 0, 0, -t598, 0, -t595, 0, t720, t571, t495, pkin(4) * t495, 0, 0, -t526, 0, -t521, 0, t726, t464, t399, t380, t454, t440, t470, t453, t469, t500, t373, t374, t389, t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t641, 0, qJDD(2), 0, t631, 0, -t614, 0, 0, 0, t595, 0, -t598, 0, -t571, t720, t665, t491, 0, 0, t521, 0, -t526, 0, -t464, t726, t721, t377, t452, t439, t468, t451, t467, t499, t367, t368, t388, t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t613, t614, 0, 0, 0, 0, 0, 0, 0, t627, t650, t645, 0, -t492, 0, 0, 0, 0, 0, t623, t648, t642, 0, t688, t536, t515, t546, t535, t544, 0, t658, t657, t649, t678; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t627, 0, -t626, 0, 0, -t631, t542, 0, 0, 0, -t588, 0, -t585, 0, t719, t564, t434, pkin(5) * t434, t510, t498, t514, t509, t513, t553, t408, t409, t413, t395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t626, 0, t627, 0, t631, 0, t543, 0, 0, 0, t585, 0, -t588, 0, -t564, t719, t666, t430, t508, t497, t512, t507, t511, t552, t401, t402, t412, t375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t627, -t542, -t543, 0, 0, 0, 0, 0, 0, 0, t623, t651, t643, 0, -t431, t536, t515, t546, t535, t544, 0, t675, t676, t656, t687; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t623, 0, -t622, 0, 0, -t631, t488, 0, t541, t516, t550, t540, t548, t575, t443, t444, t427, t706; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t622, 0, t623, 0, t631, 0, t489, 0, t608, -t590, -t691, -t608, -t615, -qJDD(5), t471, t472, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t623, -t488, -t489, 0, 0, t536, t515, t546, t535, t544, 0, t683, t684, t677, t425; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t580, t582, t599, -t612, t606, t612, 0, t484, t471, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t674, t579, t604, t581, t600, -t674, -t484, 0, t472, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t608, t590, t691, t608, t615, qJDD(5), -t471, -t472, 0, 0;];
m_new_reg  = t1;