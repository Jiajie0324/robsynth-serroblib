% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRPRP10
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 18:12
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRPRP10_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP10_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP10_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP10_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP10_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPRP10_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 18:11:29
% EndTime: 2019-05-05 18:11:45
% DurationCPUTime: 11.67s
% Computational Cost: add. (16152->530), mult. (32514->635), div. (0->0), fcn. (17824->6), ass. (0->381)
t607 = cos(qJ(3));
t672 = qJD(1) * t607;
t589 = qJD(5) + t672;
t722 = t589 ^ 2;
t603 = sin(qJ(5));
t606 = cos(qJ(5));
t604 = sin(qJ(3));
t673 = qJD(1) * t604;
t558 = qJD(3) * t603 - t606 * t673;
t723 = t558 ^ 2;
t533 = t723 - t722;
t560 = qJD(3) * t606 + t603 * t673;
t506 = t560 * t558;
t669 = qJD(1) * qJD(3);
t593 = t604 * t669;
t664 = qJDD(1) * t607;
t567 = -t593 + t664;
t556 = qJDD(5) + t567;
t732 = t506 + t556;
t701 = t732 * t606;
t429 = t533 * t603 + t701;
t539 = t589 * t560;
t653 = t607 * t669;
t666 = qJDD(1) * t604;
t566 = t653 + t666;
t648 = t603 * qJDD(3) - t606 * t566;
t627 = qJD(5) * t560 + t648;
t451 = -t539 + t627;
t383 = t429 * t607 + t451 * t604;
t702 = t732 * t603;
t432 = t533 * t606 - t702;
t605 = sin(qJ(1));
t608 = cos(qJ(1));
t805 = t383 * t605 - t432 * t608;
t804 = t383 * t608 + t432 * t605;
t450 = t539 + t627;
t634 = t606 * qJDD(3) + t603 * t566;
t490 = -qJD(5) * t558 + t634;
t696 = t558 * t589;
t735 = t490 - t696;
t388 = -t450 * t603 + t606 * t735;
t555 = t560 ^ 2;
t503 = t555 - t723;
t370 = t388 * t607 - t503 * t604;
t392 = t450 * t606 + t603 * t735;
t803 = t370 * t605 + t392 * t608;
t802 = t370 * t608 - t392 * t605;
t492 = t722 + t555;
t423 = t492 * t603 - t701;
t801 = pkin(2) * t423;
t800 = qJ(2) * t423;
t414 = t492 * t606 + t702;
t799 = t414 * t604;
t798 = t414 * t607;
t797 = t423 * t605;
t796 = t423 * t608;
t719 = pkin(3) + pkin(8);
t793 = t719 * t414;
t792 = t719 * t423;
t791 = t429 * t604 - t451 * t607;
t534 = -t555 + t722;
t733 = -t506 + t556;
t700 = t733 * t606;
t761 = -t534 * t603 + t700;
t734 = t490 + t696;
t477 = t603 * t733;
t762 = -t534 * t606 - t477;
t777 = -t604 * t734 - t607 * t762;
t790 = -t605 * t777 + t608 * t761;
t789 = t605 * t761 + t608 * t777;
t788 = pkin(4) * t414 + qJ(4) * t423;
t609 = qJD(3) ^ 2;
t601 = t604 ^ 2;
t610 = qJD(1) ^ 2;
t682 = t601 * t610;
t582 = -t609 - t682;
t677 = t607 * t610;
t658 = t604 * t677;
t575 = -qJDD(3) + t658;
t687 = t575 * t607;
t516 = -t582 * t604 + t687;
t565 = 0.2e1 * t653 + t666;
t467 = t516 * t608 + t565 * t605;
t787 = pkin(6) * t467;
t602 = t607 ^ 2;
t595 = t602 * t610;
t584 = -t595 - t609;
t576 = qJDD(3) + t658;
t686 = t576 * t604;
t517 = -t584 * t607 + t686;
t568 = -0.2e1 * t593 + t664;
t469 = t517 * t608 + t568 * t605;
t786 = pkin(6) * t469;
t473 = t516 * t605 - t565 * t608;
t785 = pkin(6) * t473;
t475 = t517 * t605 - t568 * t608;
t784 = pkin(6) * t475;
t779 = t388 * t604 + t503 * t607;
t778 = -t604 * t762 + t607 * t734;
t730 = -t722 - t723;
t752 = t606 * t730 - t477;
t776 = pkin(2) * t752;
t478 = -t723 - t555;
t775 = pkin(4) * t478;
t774 = qJ(2) * t752;
t773 = qJ(4) * t478;
t772 = t478 * t604;
t771 = t478 * t607;
t747 = t603 * t730 + t700;
t768 = t604 * t747;
t767 = t605 * t752;
t766 = t607 * t747;
t765 = t608 * t752;
t764 = t719 * t747;
t763 = t719 * t752;
t760 = pkin(4) * t747 - qJ(4) * t752;
t720 = pkin(1) + pkin(7);
t757 = t720 * t516;
t756 = t720 * t517;
t688 = t575 * t604;
t519 = t582 * t607 + t688;
t755 = t720 * t519;
t685 = t576 * t607;
t522 = t584 * t604 + t685;
t754 = t720 * t522;
t753 = t735 * qJ(6);
t583 = -t595 + t609;
t512 = -t583 * t607 + t688;
t663 = qJDD(1) * t608;
t751 = t512 * t605 - t607 * t663;
t750 = t512 * t608 + t605 * t664;
t581 = -t609 + t682;
t514 = t581 * t604 + t685;
t749 = t514 * t605 - t604 * t663;
t665 = qJDD(1) * t605;
t748 = t514 * t608 + t604 * t665;
t684 = t589 * t603;
t525 = t560 * t684;
t683 = t589 * t606;
t659 = t558 * t683;
t642 = t525 - t659;
t526 = t560 * t683;
t660 = t558 * t684;
t641 = t526 + t660;
t724 = -t556 * t604 - t607 * t641;
t746 = -t605 * t724 + t608 * t642;
t629 = t603 * t627 + t659;
t628 = t606 * t627 - t660;
t662 = t604 * t506;
t725 = -t607 * t628 + t662;
t745 = -t605 * t725 + t608 * t629;
t744 = t605 * t642 + t608 * t724;
t743 = t605 * t629 + t608 * t725;
t742 = pkin(2) * t516 + qJ(2) * t519;
t741 = pkin(2) * t517 - qJ(2) * t522;
t736 = t720 * t610;
t731 = -pkin(3) * t653 - qJ(4) * t593;
t447 = t490 * t606 - t525;
t446 = -t490 * t603 - t526;
t630 = -t446 * t607 - t662;
t729 = t605 * t447 + t608 * t630;
t728 = t608 * t447 - t605 * t630;
t727 = t607 * t556 - t604 * t641;
t661 = t607 * t506;
t726 = -t604 * t628 - t661;
t721 = 2 * qJD(6);
t573 = t595 + t682;
t718 = pkin(2) * t573;
t717 = pkin(3) * t604;
t716 = pkin(3) * t607;
t715 = pkin(5) * t603;
t714 = pkin(5) * t606;
t674 = t601 + t602;
t570 = t674 * qJDD(1);
t689 = t570 * t608;
t501 = -t573 * t605 + t689;
t713 = pkin(6) * t501;
t712 = t627 * pkin(5);
t711 = t604 * g(3);
t710 = qJ(4) * t604;
t709 = qJ(4) * t607;
t708 = qJDD(1) * pkin(1);
t703 = t734 * t606;
t693 = t567 * qJ(4);
t690 = t570 * t605;
t638 = -t709 + t717;
t562 = t638 * qJD(1);
t578 = t605 * g(1) - t608 * g(2);
t640 = qJDD(2) - t578;
t625 = -t610 * qJ(2) + t640;
t619 = -t720 * qJDD(1) + t625;
t651 = t607 * g(3) - t604 * t619;
t624 = qJDD(3) * qJ(4) - t562 * t673 - t651;
t620 = t609 * pkin(3) - t624;
t632 = pkin(4) * t672 - qJD(3) * pkin(8);
t667 = qJD(4) * qJD(3);
t410 = t566 * pkin(4) + pkin(8) * t682 - qJD(3) * t632 + t620 - 0.2e1 * t667;
t681 = t603 * t410;
t579 = t608 * g(1) + t605 * g(2);
t600 = qJDD(1) * qJ(2);
t633 = t579 - t600;
t622 = t633 + t736;
t668 = qJD(2) * qJD(1);
t528 = t622 - 0.2e1 * t668;
t680 = t604 * t528;
t679 = t606 * t410;
t678 = t607 * t528;
t676 = t609 * qJ(4);
t597 = 0.2e1 * t668;
t626 = t597 - t633;
t671 = qJD(4) * t607;
t618 = -0.2e1 * qJD(1) * t671 + t626 - t693 - t731;
t399 = -t632 * t672 + t719 * t566 + (-pkin(4) * t601 - t720) * t610 + t618;
t617 = t607 * t619;
t616 = t562 * t672 + qJDD(4) - t617;
t411 = -t676 + t567 * pkin(4) - t719 * qJDD(3) + (pkin(4) * t669 + pkin(8) * t677 - g(3)) * t604 + t616;
t360 = t606 * t399 + t603 * t411;
t675 = t573 - t609;
t670 = qJD(5) + t589;
t652 = qJ(6) * t603 + pkin(4);
t650 = -qJ(6) * t606 + qJ(4);
t359 = t399 * t603 - t606 * t411;
t540 = -t610 * pkin(1) + t626;
t541 = -t625 + t708;
t471 = t608 * t540 - t541 * t605;
t508 = -t578 * t605 - t608 * t579;
t647 = t605 * t658;
t646 = t608 * t658;
t645 = -qJ(2) * t573 + t570 * t720;
t571 = -t605 * t610 + t663;
t644 = pkin(6) * t571 + g(3) * t605;
t572 = t608 * t610 + t665;
t643 = -pkin(6) * t572 + g(3) * t608;
t639 = -t710 - t716;
t495 = pkin(5) * t558 - qJ(6) * t560;
t637 = t556 * qJ(6) - t558 * t495 + t589 * t721 + t360;
t331 = -t606 * t359 + t603 * t360;
t332 = t603 * t359 + t606 * t360;
t497 = t617 + t711;
t440 = t497 * t607 - t604 * t651;
t441 = -t497 * t604 - t607 * t651;
t466 = t540 * t605 + t541 * t608;
t636 = t583 * t604 + t687;
t635 = -t581 * t607 + t686;
t507 = t578 * t608 - t579 * t605;
t631 = -t446 * t604 + t661;
t596 = 0.2e1 * t667;
t623 = t596 + t624;
t621 = -t556 * pkin(5) - qJ(6) * t722 + t495 * t560 + qJDD(6) + t359;
t615 = -t616 + t711;
t614 = -qJDD(3) * pkin(3) - t615;
t613 = 0.2e1 * (-qJD(2) + t671) * qJD(1) - t566 * pkin(3) + t622 + t731;
t612 = -pkin(5) * t539 + t560 * t721 + t410;
t611 = t612 + t753;
t574 = t595 - t682;
t557 = t674 * t669;
t532 = qJDD(3) * t608 - t557 * t605;
t531 = qJDD(3) * t605 + t557 * t608;
t530 = -t567 * t604 - t602 * t669;
t529 = t566 * t607 - t601 * t669;
t520 = (t567 - t593) * t607;
t510 = (t566 + t653) * t604;
t509 = -pkin(2) * t570 + qJDD(1) * t639;
t502 = -t573 * t608 - t690;
t496 = pkin(6) * t502;
t494 = -t565 * t607 - t568 * t604;
t493 = t565 * t604 - t568 * t607;
t488 = -t529 * t605 - t646;
t487 = -t530 * t605 + t646;
t486 = t529 * t608 - t647;
t485 = t530 * t608 + t647;
t461 = -t493 * t605 + t574 * t608;
t460 = t493 * t608 + t574 * t605;
t459 = -t614 + t676;
t458 = t596 - t620;
t455 = -t558 * t670 + t634;
t452 = (-qJD(5) + t589) * t560 - t648;
t449 = t560 * t670 + t648;
t448 = t603 * t734;
t439 = qJ(4) * t675 + t614;
t434 = pkin(3) * t675 + t623;
t425 = t613 + t693;
t420 = -t441 - t718;
t419 = t651 - t741;
t418 = t497 - t742;
t413 = -t736 + (t565 + t566) * pkin(3) + t618;
t412 = (t567 + t568) * qJ(4) + t613;
t407 = pkin(2) * t565 - t678 - t755;
t406 = pkin(2) * t568 + t680 + t754;
t405 = t440 * t605 - t528 * t608;
t404 = -t440 * t608 - t528 * t605;
t397 = t458 * t607 - t459 * t604;
t396 = t458 * t604 + t459 * t607;
t395 = t452 * t606 + t448;
t393 = -t451 * t606 + t448;
t391 = t452 * t603 - t703;
t389 = -t451 * t603 - t703;
t387 = (-t582 - t609) * qJ(4) + (t575 - qJDD(3)) * pkin(3) - t615 + t742;
t386 = qJ(4) * t576 + (-t584 - t609) * pkin(3) + t623 + t741;
t381 = pkin(2) * t440 - qJ(2) * t441;
t380 = t455 * t607 - t799;
t379 = t449 * t607 + t768;
t378 = t455 * t604 + t798;
t377 = t449 * t604 - t766;
t376 = -t607 * t735 + t799;
t375 = t450 * t607 + t768;
t374 = -t604 * t735 - t798;
t373 = t450 * t604 - t766;
t372 = -t434 * t607 - t439 * t604 - t718;
t369 = -pkin(2) * t528 - t720 * t441;
t368 = t389 * t604 + t771;
t367 = t391 * t604 + t771;
t366 = -t389 * t607 + t772;
t365 = -t391 * t607 + t772;
t364 = -t604 * t412 + (-pkin(2) - t716) * t568 - t754;
t363 = -t607 * t413 + (-pkin(2) - t710) * t565 + t755;
t362 = t396 * t605 - t425 * t608;
t361 = -t396 * t608 - t425 * t605;
t358 = t611 - t712;
t357 = t377 * t605 + t765;
t356 = t378 * t605 + t796;
t355 = -t377 * t608 + t767;
t354 = -t378 * t608 + t797;
t353 = t373 * t605 + t765;
t352 = t374 * t605 - t796;
t351 = -t373 * t608 + t767;
t350 = -t374 * t608 - t797;
t349 = pkin(4) * t391 - qJ(4) * t395;
t347 = -pkin(5) * t722 + t637;
t346 = t611 + (-t449 - t627) * pkin(5);
t345 = t612 - t712 + 0.2e1 * t753;
t344 = t365 * t605 + t395 * t608;
t343 = t366 * t605 + t393 * t608;
t342 = -t365 * t608 + t395 * t605;
t341 = -t366 * t608 + t393 * t605;
t340 = pkin(4) * t455 + t681 - t792;
t339 = -qJ(6) * t478 + t621;
t338 = (-t478 - t722) * pkin(5) + t637;
t337 = pkin(4) * t450 - t679 - t763;
t336 = -t360 - t788;
t335 = pkin(2) * t396 + pkin(3) * t459 - qJ(2) * t397 + qJ(4) * t458;
t334 = pkin(4) * t389 - pkin(5) * t734 - qJ(4) * t393 - qJ(6) * t451;
t333 = -t359 + t760;
t330 = -t720 * t397 + (-pkin(2) + t639) * t425;
t329 = pkin(5) * t733 + qJ(6) * t730 - t621 + t760;
t328 = t331 * t604 - t410 * t607;
t327 = -t331 * t607 - t410 * t604;
t326 = qJ(6) * t732 + (t492 - t722) * pkin(5) + t637 + t788;
t325 = t347 * t606 + t603 * t621;
t324 = t347 * t603 - t606 * t621;
t323 = -t606 * t346 + t652 * t449 - t763;
t322 = -t603 * t345 + (-pkin(4) - t714) * t735 + t792;
t321 = pkin(2) * t378 - qJ(2) * t380 + qJ(4) * t455 - t679 + t793;
t320 = pkin(2) * t373 - qJ(2) * t375 + qJ(4) * t450 - t681 - t764;
t319 = -t719 * t395 - t332 + t775;
t318 = t324 * t604 - t358 * t607;
t317 = -t324 * t607 - t358 * t604;
t316 = pkin(4) * t331 - qJ(4) * t332;
t315 = pkin(2) * t377 - qJ(2) * t379 - t603 * t346 + t650 * t449 - t764;
t314 = pkin(2) * t374 - qJ(2) * t376 + t606 * t345 + (-qJ(4) - t715) * t735 - t793;
t313 = -pkin(4) * t410 - t719 * t332;
t312 = t327 * t605 + t332 * t608;
t311 = -t327 * t608 + t332 * t605;
t310 = -t606 * t338 - t603 * t339 - t719 * t393 + t775;
t309 = -t604 * t336 - t607 * t340 - t720 * t380 + t801;
t308 = pkin(2) * t365 - qJ(2) * t367 - t719 * t391 - t331 + t773;
t307 = -t604 * t333 - t607 * t337 - t720 * t375 + t776;
t306 = pkin(2) * t366 - qJ(2) * t368 - t603 * t338 + t606 * t339 - t719 * t389 + t773;
t305 = t317 * t605 + t325 * t608;
t304 = -t317 * t608 + t325 * t605;
t303 = pkin(2) * t395 - t607 * t319 - t604 * t349 - t720 * t367;
t302 = -t607 * t323 - t604 * t329 - t720 * t379 + t776;
t301 = -t607 * t322 - t604 * t326 - t720 * t376 - t801;
t300 = pkin(4) * t324 - pkin(5) * t621 - qJ(4) * t325 + qJ(6) * t347;
t299 = pkin(2) * t393 - t607 * t310 - t604 * t334 - t720 * t368;
t298 = -t719 * t325 + (-t652 - t714) * t358;
t297 = pkin(2) * t327 - qJ(2) * t328 - qJ(4) * t410 - t719 * t331;
t296 = pkin(2) * t332 - t607 * t313 - t604 * t316 - t720 * t328;
t295 = pkin(2) * t317 - qJ(2) * t318 - t719 * t324 + (-t650 - t715) * t358;
t294 = pkin(2) * t325 - t607 * t298 - t604 * t300 - t720 * t318;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t572, -t571, 0, t508, 0, 0, 0, 0, 0, 0, 0, t572, t571, t471, 0, 0, 0, 0, 0, 0, -t473, -t475, t502, t405, 0, 0, 0, 0, 0, 0, t502, t473, t475, t362, 0, 0, 0, 0, 0, 0, t353, t356, t344, t312, 0, 0, 0, 0, 0, 0, t357, t343, t352, t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t571, -t572, 0, t507, 0, 0, 0, 0, 0, 0, 0, -t571, t572, t466, 0, 0, 0, 0, 0, 0, t467, t469, t501, t404, 0, 0, 0, 0, 0, 0, t501, -t467, -t469, t361, 0, 0, 0, 0, 0, 0, t351, t354, t342, t311, 0, 0, 0, 0, 0, 0, t355, t341, t350, t304; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t519, -t522, 0, t441, 0, 0, 0, 0, 0, 0, 0, -t519, t522, t397, 0, 0, 0, 0, 0, 0, t375, t380, t367, t328, 0, 0, 0, 0, 0, 0, t379, t368, t376, t318; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t571, 0, -t572, 0, -t644, -t643, -t507, -pkin(6) * t507, 0, -t571, t572, 0, 0, 0, -t466, t644, t643, -pkin(6) * t466 + (-pkin(1) * t605 + qJ(2) * t608) * g(3), t487, t461, -t751, t488, t749, t532, -t407 * t605 + t418 * t608 - t787, -t406 * t605 + t419 * t608 - t786, -pkin(2) * t689 - t420 * t605 - t713, -pkin(6) * t404 - t369 * t605 + t381 * t608, t532, t751, -t749, t487, t461, t488, -t372 * t605 + t509 * t608 - t713, -t363 * t605 + t387 * t608 + t787, -t364 * t605 + t386 * t608 + t786, -pkin(6) * t361 - t330 * t605 + t335 * t608, t728, -t803, t790, t745, -t805, t746, -pkin(6) * t351 - t307 * t605 + t320 * t608, -pkin(6) * t354 - t309 * t605 + t321 * t608, -pkin(6) * t342 - t303 * t605 + t308 * t608, -pkin(6) * t311 - t296 * t605 + t297 * t608, t728, t790, t803, t746, t805, t745, -pkin(6) * t355 - t302 * t605 + t315 * t608, -pkin(6) * t341 - t299 * t605 + t306 * t608, -pkin(6) * t350 - t301 * t605 + t314 * t608, -pkin(6) * t304 - t294 * t605 + t295 * t608; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t572, 0, t571, 0, t643, -t644, t508, pkin(6) * t508, 0, -t572, -t571, 0, 0, 0, t471, -t643, t644, pkin(6) * t471 + (pkin(1) * t608 + qJ(2) * t605) * g(3), t485, t460, t750, t486, -t748, t531, t407 * t608 + t418 * t605 - t785, t406 * t608 + t419 * t605 - t784, -pkin(2) * t690 + t420 * t608 + t496, pkin(6) * t405 + t369 * t608 + t381 * t605, t531, -t750, t748, t485, t460, t486, t372 * t608 + t509 * t605 + t496, t363 * t608 + t387 * t605 + t785, t364 * t608 + t386 * t605 + t784, pkin(6) * t362 + t330 * t608 + t335 * t605, t729, t802, t789, t743, t804, t744, pkin(6) * t353 + t307 * t608 + t320 * t605, pkin(6) * t356 + t309 * t608 + t321 * t605, pkin(6) * t344 + t303 * t608 + t308 * t605, pkin(6) * t312 + t296 * t608 + t297 * t605, t729, t789, -t802, t744, -t804, t743, pkin(6) * t357 + t302 * t608 + t315 * t605, pkin(6) * t343 + t299 * t608 + t306 * t605, pkin(6) * t352 + t301 * t608 + t314 * t605, pkin(6) * t305 + t294 * t608 + t295 * t605; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t578, t579, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t640 - 0.2e1 * t708, -t579 + t597 + 0.2e1 * t600, pkin(1) * t541 + qJ(2) * t540, t520, t494, -t636, t510, -t635, 0, qJ(2) * t565 - t680 + t757, qJ(2) * t568 - t678 + t756, -t440 + t645, -qJ(2) * t528 - t440 * t720, 0, t636, t635, t520, t494, t510, -t434 * t604 + t439 * t607 + t645, -t604 * t413 + (-qJ(2) + t709) * t565 - t757, t607 * t412 + (-qJ(2) - t717) * t568 - t756, -t720 * t396 + (-qJ(2) - t638) * t425, t631, t779, t778, t726, t791, t727, t607 * t333 - t604 * t337 - t373 * t720 + t774, t607 * t336 - t604 * t340 - t378 * t720 + t800, qJ(2) * t395 - t604 * t319 + t607 * t349 - t365 * t720, qJ(2) * t332 - t604 * t313 + t607 * t316 - t327 * t720, t631, t778, -t779, t727, -t791, t726, -t604 * t323 + t607 * t329 - t377 * t720 + t774, qJ(2) * t393 - t604 * t310 + t607 * t334 - t366 * t720, -t604 * t322 + t607 * t326 - t374 * t720 - t800, qJ(2) * t325 - t604 * t298 + t607 * t300 - t720 * t317;];
tauB_reg  = t1;
