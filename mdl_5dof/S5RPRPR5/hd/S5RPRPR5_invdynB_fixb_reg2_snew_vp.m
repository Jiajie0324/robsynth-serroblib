% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPRPR5
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
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:58
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPRPR5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR5_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR5_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPR5_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR5_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:57:29
% EndTime: 2019-12-05 17:57:46
% DurationCPUTime: 16.19s
% Computational Cost: add. (66054->632), mult. (172332->978), div. (0->0), fcn. (121642->10), ass. (0->450)
t680 = sin(pkin(8));
t687 = cos(qJ(3));
t684 = sin(qJ(3));
t728 = qJD(1) * t680;
t711 = t684 * t728;
t633 = t687 * t680 * qJDD(1) - qJD(3) * t711;
t679 = sin(pkin(9));
t681 = cos(pkin(9));
t723 = qJDD(1) * t684;
t727 = qJD(1) * t687;
t697 = qJD(3) * t727 + t723;
t693 = t697 * t680;
t579 = t681 * t633 - t679 * t693;
t624 = (-t679 * t687 - t681 * t684) * t728;
t682 = cos(pkin(8));
t726 = t682 * qJD(1);
t668 = -qJD(3) + t726;
t759 = t624 * t668;
t543 = -t579 - t759;
t776 = t579 - t759;
t685 = sin(qJ(1));
t688 = cos(qJ(1));
t658 = t685 * g(2) - t688 * g(3);
t689 = qJD(1) ^ 2;
t641 = -t689 * pkin(1) + qJDD(1) * qJ(2) + t658;
t766 = 2 * qJD(2);
t775 = qJD(1) * t766 + t641;
t722 = t682 * qJDD(1);
t667 = -qJDD(3) + t722;
t710 = t680 * t727;
t626 = -t679 * t711 + t681 * t710;
t758 = t626 * t624;
t696 = -t667 + t758;
t774 = t679 * t696;
t773 = t681 * t696;
t683 = sin(qJ(5));
t657 = -qJDD(5) + t667;
t686 = cos(qJ(5));
t568 = -t686 * t624 + t683 * t626;
t570 = t683 * t624 + t686 * t626;
t760 = t570 * t568;
t694 = -t657 - t760;
t772 = t683 * t694;
t771 = t686 * t694;
t705 = t668 * t711;
t598 = t633 + t705;
t587 = t687 * t598;
t662 = -qJD(5) + t668;
t557 = t568 * t662;
t707 = t679 * t633 + t681 * t693;
t695 = t568 * qJD(5) - t686 * t579 + t683 * t707;
t770 = t557 - t695;
t708 = t683 * t579 + t686 * t707;
t457 = (qJD(5) + t662) * t570 + t708;
t565 = t568 ^ 2;
t566 = t570 ^ 2;
t769 = t624 ^ 2;
t621 = t626 ^ 2;
t656 = t662 ^ 2;
t768 = t668 ^ 2;
t767 = t684 ^ 2;
t765 = 2 * qJD(4);
t764 = pkin(2) * t680;
t763 = pkin(2) * t682;
t762 = t682 * g(1);
t761 = qJDD(1) * pkin(1);
t757 = t662 * t683;
t756 = t662 * t686;
t755 = t668 * t626;
t754 = t668 * t679;
t753 = t668 * t681;
t676 = t680 ^ 2;
t752 = t676 * t689;
t603 = -t680 * g(1) + t775 * t682;
t704 = -pkin(6) * t680 - t763;
t646 = t704 * qJD(1);
t572 = t646 * t726 + t603;
t659 = t688 * g(2) + t685 * g(3);
t692 = -t689 * qJ(2) + qJDD(2) - t659;
t701 = -pkin(1) + t704;
t607 = qJDD(1) * t701 + t692;
t594 = t687 * t607;
t712 = t668 * t728;
t730 = t687 * t689;
t495 = -t667 * pkin(3) - t633 * qJ(4) + t594 + (-pkin(3) * t676 * t730 + qJ(4) * t712 - t572) * t684;
t529 = t687 * t572 + t684 * t607;
t630 = -t668 * pkin(3) - qJ(4) * t710;
t666 = t767 * t752;
t498 = -pkin(3) * t666 - qJ(4) * t693 + t668 * t630 + t529;
t428 = -t681 * t495 + t679 * t498 + t626 * t765;
t394 = t696 * pkin(4) + t543 * pkin(7) - t428;
t429 = t679 * t495 + t681 * t498 + t624 * t765;
t592 = -t668 * pkin(4) - t626 * pkin(7);
t406 = -t769 * pkin(4) - pkin(7) * t707 + t668 * t592 + t429;
t354 = -t686 * t394 + t683 * t406;
t355 = t683 * t394 + t686 * t406;
t323 = -t686 * t354 + t683 * t355;
t751 = t679 * t323;
t725 = t766 + t646;
t512 = t762 + qJDD(4) + pkin(3) * t693 - qJ(4) * t666 + (t641 + (t630 * t687 + t725) * qJD(1)) * t680;
t750 = t679 * t512;
t562 = t667 + t758;
t749 = t679 * t562;
t748 = t680 * t667;
t747 = t680 * t682;
t746 = t681 * t323;
t745 = t681 * t512;
t744 = t681 * t562;
t445 = pkin(4) * t707 - t769 * pkin(7) + t626 * t592 + t512;
t743 = t683 * t445;
t508 = t657 - t760;
t742 = t683 * t508;
t376 = -t681 * t428 + t679 * t429;
t741 = t684 * t376;
t571 = t762 + (t725 * qJD(1) + t641) * t680;
t740 = t684 * t571;
t713 = t684 * t730;
t655 = t676 * t713;
t631 = -t655 + t667;
t739 = t684 * t631;
t632 = -t655 - t667;
t738 = t684 * t632;
t634 = -t692 + t761;
t737 = t685 * t634;
t736 = t686 * t445;
t735 = t686 * t508;
t734 = t687 * t376;
t733 = t687 * t571;
t732 = t687 * t631;
t731 = t687 * t632;
t729 = t688 * t634;
t721 = t685 * qJDD(1);
t720 = t688 * qJDD(1);
t678 = t687 ^ 2;
t718 = t678 * t752;
t717 = t680 * t760;
t716 = t680 * t758;
t715 = t682 * t760;
t714 = t682 * t758;
t709 = t634 + t761;
t324 = t683 * t354 + t686 * t355;
t377 = t679 * t428 + t681 * t429;
t528 = t684 * t572 - t594;
t602 = t775 * t680 + t762;
t551 = t680 * t602 + t682 * t603;
t675 = t680 * t676;
t706 = t675 * t713;
t653 = t688 * t689 + t721;
t703 = pkin(5) * t653 - t688 * g(1);
t702 = t682 * t655;
t474 = -t687 * t528 + t684 * t529;
t475 = t684 * t528 + t687 * t529;
t550 = t682 * t602 - t680 * t603;
t615 = t688 * t658 - t685 * t659;
t614 = -t685 * t658 - t688 * t659;
t700 = -t685 * t689 + t720;
t539 = t707 + t755;
t677 = t682 ^ 2;
t645 = (t676 + t677) * t682 * t689;
t699 = -t685 * t645 + t682 * t720;
t698 = t688 * t645 + t682 * t721;
t674 = t677 * t689;
t673 = t677 * qJDD(1);
t672 = t676 * qJDD(1);
t651 = t674 - t752;
t650 = t674 + t752;
t649 = t682 * t667;
t648 = t673 - t672;
t647 = t673 + t672;
t644 = (t677 * t680 + t675) * t689;
t643 = t668 * t710;
t640 = t666 - t718;
t639 = t666 + t718;
t638 = t768 - t718;
t637 = -t666 - t768;
t636 = t666 - t768;
t635 = pkin(5) * t700 + t685 * g(1);
t623 = t700 * t747;
t622 = t653 * t747;
t620 = -t768 - t718;
t612 = t688 * t644 + t680 * t721;
t610 = -t685 * t644 + t680 * t720;
t609 = t688 * t647 - t685 * t650;
t608 = -t685 * t647 - t688 * t650;
t604 = (-t678 - t767) * t712;
t601 = -t621 + t768;
t600 = -t768 + t769;
t597 = t643 - t693;
t596 = t643 + t693;
t595 = t705 - t633;
t590 = -t684 * t633 + t678 * t712;
t589 = (t767 * t668 * qJD(1) + t687 * t697) * t680;
t588 = -t621 - t768;
t586 = (t723 + (qJD(3) - t668) * t727) * t684 * t680;
t585 = t687 * t637 - t738;
t584 = t687 * t636 + t739;
t583 = -t684 * t638 + t731;
t582 = t684 * t637 + t731;
t581 = -t684 * t636 + t732;
t580 = -t687 * t638 - t738;
t576 = -t621 + t769;
t574 = -t684 * t620 + t732;
t573 = t687 * t620 + t739;
t561 = -t768 - t769;
t560 = t682 * t587 + t706;
t559 = t682 * t586 - t706;
t556 = -t566 + t656;
t555 = t565 - t656;
t554 = (-t624 * t681 - t626 * t679) * t668;
t553 = (-t624 * t679 + t626 * t681) * t668;
t552 = -t621 - t769;
t548 = -t566 - t656;
t547 = t687 * t597 - t684 * t598;
t546 = -t684 * t595 - t687 * t596;
t545 = -t684 * t597 - t587;
t544 = t687 * t595 - t684 * t596;
t538 = t707 - t755;
t537 = t681 * t579 + t626 * t754;
t536 = t679 * t579 - t626 * t753;
t535 = t624 * t753 + t679 * t707;
t534 = t624 * t754 - t681 * t707;
t533 = t682 * t585 - t680 * t597;
t532 = t682 * t584 - t680 * t596;
t531 = t682 * t583 - t680 * t595;
t530 = t680 * t585 + t682 * t597;
t527 = t682 * t574 + t598 * t680;
t526 = t680 * t574 - t598 * t682;
t525 = t681 * t600 + t749;
t524 = -t679 * t601 + t773;
t523 = t679 * t600 - t744;
t522 = t681 * t601 + t774;
t521 = t688 * t551 - t737;
t520 = -t685 * t551 - t729;
t519 = -pkin(6) * t582 + t740;
t518 = t682 * t547 - t680 * t640;
t517 = t682 * t546 - t680 * t639;
t516 = t680 * t546 + t682 * t639;
t515 = -t679 * t588 + t744;
t514 = t681 * t588 + t749;
t513 = -pkin(6) * t573 + t733;
t511 = -t566 + t565;
t507 = -t656 - t565;
t506 = t681 * t561 - t774;
t505 = t679 * t561 + t773;
t504 = (t568 * t686 - t570 * t683) * t662;
t503 = (t568 * t683 + t570 * t686) * t662;
t502 = -pkin(2) * t582 + t528;
t501 = t688 * t533 + t685 * t582;
t500 = -t685 * t533 + t688 * t582;
t499 = -pkin(2) * t573 + t529;
t497 = -t684 * t553 + t687 * t554;
t496 = -t687 * t553 - t684 * t554;
t491 = t688 * t527 + t685 * t573;
t490 = -t685 * t527 + t688 * t573;
t488 = -t570 * qJD(5) - t708;
t487 = -t539 * t681 - t679 * t543;
t486 = -t681 * t538 - t679 * t776;
t485 = -t539 * t679 + t681 * t543;
t484 = -t679 * t538 + t681 * t776;
t483 = t682 * t497 - t748;
t482 = -t565 - t566;
t481 = -t684 * t536 + t687 * t537;
t480 = -t684 * t534 + t687 * t535;
t479 = -t687 * t536 - t684 * t537;
t478 = -t687 * t534 - t684 * t535;
t477 = t688 * t517 + t685 * t544;
t476 = -t685 * t517 + t688 * t544;
t473 = t686 * t555 + t742;
t472 = -t683 * t556 + t771;
t471 = t683 * t555 - t735;
t470 = t686 * t556 + t772;
t469 = -t684 * t523 + t687 * t525;
t468 = -t684 * t522 + t687 * t524;
t467 = -t683 * t548 + t735;
t466 = -t687 * t523 - t684 * t525;
t465 = -t687 * t522 - t684 * t524;
t464 = t686 * t548 + t742;
t463 = -t684 * t514 + t687 * t515;
t462 = t687 * t514 + t684 * t515;
t461 = t557 + t695;
t456 = (qJD(5) - t662) * t570 + t708;
t455 = -qJ(4) * t514 + t745;
t454 = -pkin(1) * t530 - pkin(2) * t597 - pkin(6) * t585 + t733;
t453 = t570 * t757 - t686 * t695;
t452 = -t570 * t756 - t683 * t695;
t451 = -t683 * t488 - t568 * t756;
t450 = t686 * t488 - t568 * t757;
t449 = t682 * t481 - t716;
t448 = t682 * t480 + t716;
t447 = -qJ(4) * t505 + t750;
t446 = -pkin(1) * t526 + pkin(2) * t598 - pkin(6) * t574 - t740;
t444 = t686 * t507 - t772;
t443 = t683 * t507 + t771;
t442 = -t684 * t505 + t687 * t506;
t441 = t682 * t475 + t680 * t571;
t440 = t687 * t505 + t684 * t506;
t439 = t680 * t475 - t682 * t571;
t438 = -pkin(6) * t544 - t474;
t437 = -t679 * t503 + t681 * t504;
t436 = t681 * t503 + t679 * t504;
t435 = t682 * t469 - t680 * t539;
t434 = t682 * t468 - t680 * t543;
t433 = -pkin(3) * t776 + qJ(4) * t515 + t750;
t432 = t682 * t463 + t680 * t776;
t431 = t680 * t463 - t682 * t776;
t430 = -pkin(3) * t538 + qJ(4) * t506 - t745;
t427 = t682 * t442 + t680 * t538;
t426 = t680 * t442 - t682 * t538;
t425 = -qJ(2) * t530 - t680 * t502 + t682 * t519;
t424 = -t684 * t485 + t687 * t487;
t423 = -t684 * t484 + t687 * t486;
t422 = t687 * t485 + t684 * t487;
t421 = -t687 * t484 - t684 * t486;
t419 = -qJ(2) * t526 - t680 * t499 + t682 * t513;
t418 = -pkin(1) * t516 - pkin(2) * t639 - pkin(6) * t546 - t475;
t417 = t682 * t423 - t680 * t576;
t416 = -t679 * t471 + t681 * t473;
t415 = -t679 * t470 + t681 * t472;
t414 = t681 * t471 + t679 * t473;
t413 = t681 * t470 + t679 * t472;
t412 = -t679 * t464 + t681 * t467;
t411 = t681 * t464 + t679 * t467;
t410 = t682 * t424 + t680 * t552;
t409 = t680 * t424 - t682 * t552;
t408 = t688 * t441 + t685 * t474;
t407 = -t685 * t441 + t688 * t474;
t405 = -t457 * t686 - t683 * t461;
t404 = -t686 * t456 - t683 * t770;
t403 = -t457 * t683 + t686 * t461;
t402 = -t683 * t456 + t686 * t770;
t401 = -pkin(7) * t464 + t736;
t399 = -qJ(2) * t516 + t682 * t438 + t544 * t764;
t398 = -t679 * t452 + t681 * t453;
t397 = -t679 * t450 + t681 * t451;
t396 = t681 * t452 + t679 * t453;
t395 = t681 * t450 + t679 * t451;
t391 = -pkin(1) * t439 + pkin(2) * t571 - pkin(6) * t475;
t390 = -pkin(7) * t443 + t743;
t389 = -pkin(2) * t422 - pkin(3) * t485;
t388 = -t679 * t443 + t681 * t444;
t387 = t681 * t443 + t679 * t444;
t386 = t688 * t432 + t685 * t462;
t385 = -t685 * t432 + t688 * t462;
t384 = -t684 * t436 + t687 * t437;
t383 = -t687 * t436 - t684 * t437;
t382 = t682 * t384 - t680 * t657;
t381 = t688 * t427 + t685 * t440;
t380 = -t685 * t427 + t688 * t440;
t379 = -qJ(2) * t439 + (-pkin(6) * t682 + t764) * t474;
t378 = -pkin(2) * t462 - pkin(3) * t514 + t429;
t375 = -pkin(4) * t770 + pkin(7) * t467 + t743;
t374 = -pkin(2) * t440 - pkin(3) * t505 + t428;
t373 = -pkin(4) * t456 + pkin(7) * t444 - t736;
t372 = -pkin(6) * t462 - t684 * t433 + t687 * t455;
t371 = t688 * t410 + t685 * t422;
t370 = -t685 * t410 + t688 * t422;
t369 = -pkin(3) * t512 + qJ(4) * t377;
t368 = -t684 * t414 + t687 * t416;
t367 = -t684 * t413 + t687 * t415;
t366 = -t687 * t414 - t684 * t416;
t365 = -t687 * t413 - t684 * t415;
t364 = -pkin(6) * t440 - t684 * t430 + t687 * t447;
t363 = -t684 * t411 + t687 * t412;
t362 = t687 * t411 + t684 * t412;
t361 = -qJ(4) * t485 - t376;
t360 = -t679 * t403 + t681 * t405;
t359 = -t679 * t402 + t681 * t404;
t358 = t681 * t403 + t679 * t405;
t357 = t681 * t402 + t679 * t404;
t356 = -pkin(3) * t552 + qJ(4) * t487 + t377;
t352 = -t684 * t396 + t687 * t398;
t351 = -t684 * t395 + t687 * t397;
t350 = -t687 * t396 - t684 * t398;
t349 = -t687 * t395 - t684 * t397;
t348 = -t684 * t387 + t687 * t388;
t347 = t687 * t387 + t684 * t388;
t346 = t682 * t368 - t680 * t457;
t345 = t682 * t367 - t680 * t461;
t344 = t682 * t352 + t717;
t343 = t682 * t351 - t717;
t342 = t682 * t363 + t680 * t770;
t341 = t680 * t363 - t682 * t770;
t340 = -pkin(1) * t431 + pkin(2) * t776 - pkin(6) * t463 - t687 * t433 - t684 * t455;
t339 = -pkin(1) * t426 + pkin(2) * t538 - pkin(6) * t442 - t687 * t430 - t684 * t447;
t338 = t682 * t348 + t680 * t456;
t337 = t680 * t348 - t682 * t456;
t336 = t687 * t377 - t741;
t335 = t684 * t377 + t734;
t334 = t682 * t336 + t680 * t512;
t333 = t680 * t336 - t682 * t512;
t332 = -qJ(4) * t411 - t679 * t375 + t681 * t401;
t331 = -qJ(2) * t431 + t682 * t372 - t680 * t378;
t330 = -qJ(4) * t387 - t679 * t373 + t681 * t390;
t329 = -pkin(3) * t770 + qJ(4) * t412 + t681 * t375 + t679 * t401;
t328 = -t684 * t358 + t687 * t360;
t327 = -t684 * t357 + t687 * t359;
t326 = t687 * t358 + t684 * t360;
t325 = -t687 * t357 - t684 * t359;
t322 = -qJ(2) * t426 + t682 * t364 - t680 * t374;
t321 = t688 * t342 + t685 * t362;
t320 = -t685 * t342 + t688 * t362;
t319 = t682 * t327 - t680 * t511;
t318 = -pkin(3) * t456 + qJ(4) * t388 + t681 * t373 + t679 * t390;
t317 = t682 * t328 + t680 * t482;
t316 = t680 * t328 - t682 * t482;
t315 = -pkin(2) * t335 - pkin(3) * t376;
t314 = -pkin(6) * t422 - t684 * t356 + t687 * t361;
t313 = -pkin(4) * t445 + pkin(7) * t324;
t312 = t688 * t338 + t685 * t347;
t311 = -t685 * t338 + t688 * t347;
t310 = -pkin(7) * t403 - t323;
t309 = -pkin(2) * t362 - pkin(3) * t411 - pkin(4) * t464 + t355;
t308 = -pkin(4) * t482 + pkin(7) * t405 + t324;
t307 = -pkin(1) * t409 + pkin(2) * t552 - pkin(6) * t424 - t687 * t356 - t684 * t361;
t306 = -pkin(2) * t347 - pkin(3) * t387 - pkin(4) * t443 + t354;
t305 = -pkin(6) * t335 - qJ(4) * t734 - t684 * t369;
t304 = t688 * t334 + t685 * t335;
t303 = -t685 * t334 + t688 * t335;
t302 = -qJ(2) * t409 + t682 * t314 - t680 * t389;
t301 = -pkin(2) * t326 - pkin(3) * t358 - pkin(4) * t403;
t300 = t681 * t324 - t751;
t299 = t679 * t324 + t746;
t298 = t688 * t317 + t685 * t326;
t297 = -t685 * t317 + t688 * t326;
t296 = -pkin(6) * t362 - t684 * t329 + t687 * t332;
t295 = -pkin(1) * t333 + pkin(2) * t512 - pkin(6) * t336 + qJ(4) * t741 - t687 * t369;
t294 = -pkin(6) * t347 - t684 * t318 + t687 * t330;
t293 = -pkin(1) * t341 + pkin(2) * t770 - pkin(6) * t363 - t687 * t329 - t684 * t332;
t292 = -qJ(4) * t358 - t679 * t308 + t681 * t310;
t291 = -pkin(3) * t482 + qJ(4) * t360 + t681 * t308 + t679 * t310;
t290 = -pkin(1) * t337 + pkin(2) * t456 - pkin(6) * t348 - t687 * t318 - t684 * t330;
t289 = -qJ(2) * t333 + t682 * t305 - t680 * t315;
t288 = -t684 * t299 + t687 * t300;
t287 = t687 * t299 + t684 * t300;
t286 = -qJ(2) * t341 + t682 * t296 - t680 * t309;
t285 = -pkin(7) * t746 - qJ(4) * t299 - t679 * t313;
t284 = t682 * t288 + t680 * t445;
t283 = t680 * t288 - t682 * t445;
t282 = -pkin(3) * t445 - pkin(7) * t751 + qJ(4) * t300 + t681 * t313;
t281 = -qJ(2) * t337 + t682 * t294 - t680 * t306;
t280 = -pkin(2) * t287 - pkin(3) * t299 - pkin(4) * t323;
t279 = -pkin(6) * t326 - t684 * t291 + t687 * t292;
t278 = t688 * t284 + t685 * t287;
t277 = -t685 * t284 + t688 * t287;
t276 = -pkin(1) * t316 + pkin(2) * t482 - pkin(6) * t328 - t687 * t291 - t684 * t292;
t275 = -qJ(2) * t316 + t682 * t279 - t680 * t301;
t274 = -pkin(6) * t287 - t684 * t282 + t687 * t285;
t273 = -pkin(1) * t283 + pkin(2) * t445 - pkin(6) * t288 - t687 * t282 - t684 * t285;
t272 = -qJ(2) * t283 + t682 * t274 - t680 * t280;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t550, 0, 0, 0, 0, 0, 0, t530, t526, t516, t439, 0, 0, 0, 0, 0, 0, t426, t431, t409, t333, 0, 0, 0, 0, 0, 0, t337, t341, t316, t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, -t700, t653, 0, t614, 0, 0, 0, 0, 0, 0, -t699, t610, t608, t520, 0, 0, 0, 0, 0, 0, t500, t490, t476, t407, 0, 0, 0, 0, 0, 0, t380, t385, t370, t303, 0, 0, 0, 0, 0, 0, t311, t320, t297, t277; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t653, -t700, 0, t615, 0, 0, 0, 0, 0, 0, -t698, t612, t609, t521, 0, 0, 0, 0, 0, 0, t501, t491, t477, t408, 0, 0, 0, 0, 0, 0, t381, t386, t371, t304, 0, 0, 0, 0, 0, 0, t312, t321, t298, t278; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t659, -t658, 0, 0, t672, 0.2e1 * t680 * t722, 0, t673, 0, 0, -qJ(2) * t645 + t682 * t709, qJ(2) * t644 - t680 * t709, pkin(1) * t650 + qJ(2) * t647 + t551, pkin(1) * t634 + qJ(2) * t551, t680 * t587 - t702, t680 * t547 + t682 * t640, t680 * t583 + t682 * t595, t680 * t586 + t702, t680 * t584 + t682 * t596, t649, -pkin(1) * t582 + qJ(2) * t533 + t682 * t502 + t680 * t519, -pkin(1) * t573 + qJ(2) * t527 + t682 * t499 + t680 * t513, qJ(2) * t517 + t680 * t438 + (-pkin(1) - t763) * t544, qJ(2) * t441 + t474 * t701, t680 * t481 + t714, t680 * t423 + t682 * t576, t680 * t468 + t682 * t543, t680 * t480 - t714, t680 * t469 + t682 * t539, t680 * t497 + t649, -pkin(1) * t440 + qJ(2) * t427 + t680 * t364 + t682 * t374, -pkin(1) * t462 + qJ(2) * t432 + t680 * t372 + t682 * t378, -pkin(1) * t422 + qJ(2) * t410 + t680 * t314 + t682 * t389, -pkin(1) * t335 + qJ(2) * t334 + t680 * t305 + t682 * t315, t680 * t352 - t715, t680 * t327 + t682 * t511, t680 * t367 + t682 * t461, t680 * t351 + t715, t680 * t368 + t682 * t457, t680 * t384 + t682 * t657, -pkin(1) * t347 + qJ(2) * t338 + t680 * t294 + t682 * t306, -pkin(1) * t362 + qJ(2) * t342 + t680 * t296 + t682 * t309, -pkin(1) * t326 + qJ(2) * t317 + t680 * t279 + t682 * t301, -pkin(1) * t287 + qJ(2) * t284 + t680 * t274 + t682 * t280; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t653, 0, -t700, 0, t703, t635, -t615, -pkin(5) * t615, -t622, -t685 * t648 - t688 * t651, t610, t622, t699, 0, pkin(5) * t698 - t688 * t602 + t680 * t737, -pkin(5) * t612 - t688 * t603 + t682 * t737, -pkin(5) * t609 - t685 * t550, -pkin(5) * t521 - (pkin(1) * t688 + qJ(2) * t685) * t550, -t685 * t560 - t688 * t590, -t685 * t518 - t688 * t545, -t685 * t531 - t688 * t580, -t685 * t559 - t688 * t589, -t685 * t532 - t688 * t581, -t688 * t604 + t685 * t748, -pkin(5) * t501 - t685 * t425 - t688 * t454, -pkin(5) * t491 - t685 * t419 - t688 * t446, -pkin(5) * t477 - t685 * t399 - t688 * t418, -pkin(5) * t408 - t685 * t379 - t688 * t391, -t685 * t449 - t688 * t479, -t685 * t417 - t688 * t421, -t685 * t434 - t688 * t465, -t685 * t448 - t688 * t478, -t685 * t435 - t688 * t466, -t685 * t483 - t688 * t496, -pkin(5) * t381 - t685 * t322 - t688 * t339, -pkin(5) * t386 - t685 * t331 - t688 * t340, -pkin(5) * t371 - t685 * t302 - t688 * t307, -pkin(5) * t304 - t685 * t289 - t688 * t295, -t685 * t344 - t688 * t350, -t685 * t319 - t688 * t325, -t685 * t345 - t688 * t365, -t685 * t343 - t688 * t349, -t685 * t346 - t688 * t366, -t685 * t382 - t688 * t383, -pkin(5) * t312 - t685 * t281 - t688 * t290, -pkin(5) * t321 - t685 * t286 - t688 * t293, -pkin(5) * t298 - t685 * t275 - t688 * t276, -pkin(5) * t278 - t685 * t272 - t688 * t273; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, t700, 0, -t653, 0, -t635, t703, t614, pkin(5) * t614, t623, t688 * t648 - t685 * t651, t612, -t623, t698, 0, -pkin(5) * t699 - t685 * t602 - t680 * t729, pkin(5) * t610 - t685 * t603 - t682 * t729, pkin(5) * t608 + t688 * t550, pkin(5) * t520 - (pkin(1) * t685 - qJ(2) * t688) * t550, t688 * t560 - t685 * t590, t688 * t518 - t685 * t545, t688 * t531 - t685 * t580, t688 * t559 - t685 * t589, t688 * t532 - t685 * t581, -t685 * t604 - t688 * t748, pkin(5) * t500 + t688 * t425 - t685 * t454, pkin(5) * t490 + t688 * t419 - t685 * t446, pkin(5) * t476 + t688 * t399 - t685 * t418, pkin(5) * t407 + t688 * t379 - t685 * t391, t688 * t449 - t685 * t479, t688 * t417 - t685 * t421, t688 * t434 - t685 * t465, t688 * t448 - t685 * t478, t688 * t435 - t685 * t466, t688 * t483 - t685 * t496, pkin(5) * t380 + t688 * t322 - t685 * t339, pkin(5) * t385 + t688 * t331 - t685 * t340, pkin(5) * t370 + t688 * t302 - t685 * t307, pkin(5) * t303 + t688 * t289 - t685 * t295, t688 * t344 - t685 * t350, t688 * t319 - t685 * t325, t688 * t345 - t685 * t365, t688 * t343 - t685 * t349, t688 * t346 - t685 * t366, t688 * t382 - t685 * t383, pkin(5) * t311 + t688 * t281 - t685 * t290, pkin(5) * t320 + t688 * t286 - t685 * t293, pkin(5) * t297 + t688 * t275 - t685 * t276, pkin(5) * t277 + t688 * t272 - t685 * t273;];
tauB_reg = t1;