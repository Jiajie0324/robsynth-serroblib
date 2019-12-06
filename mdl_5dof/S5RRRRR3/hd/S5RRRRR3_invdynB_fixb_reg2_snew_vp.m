% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRRRR3
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
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,a5,d1,d4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:57
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRRRR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(5,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR3_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR3_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S5RRRRR3_invdynB_fixb_reg2_snew_vp: pkin has to be [5x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:56:41
% EndTime: 2019-12-05 18:56:59
% DurationCPUTime: 12.70s
% Computational Cost: add. (52102->559), mult. (106678->904), div. (0->0), fcn. (82814->10), ass. (0->436)
t701 = sin(qJ(5));
t704 = sin(qJ(2));
t708 = cos(qJ(3));
t703 = sin(qJ(3));
t709 = cos(qJ(2));
t757 = t703 * t709;
t662 = (t704 * t708 + t757) * qJD(1);
t698 = qJD(2) + qJD(3);
t702 = sin(qJ(4));
t707 = cos(qJ(4));
t633 = t702 * t662 - t707 * t698;
t635 = t707 * t662 + t702 * t698;
t706 = cos(qJ(5));
t591 = t706 * t633 + t701 * t635;
t593 = -t701 * t633 + t706 * t635;
t548 = t593 * t591;
t738 = qJD(1) * qJD(2);
t725 = t709 * t738;
t737 = t704 * qJDD(1);
t670 = t725 + t737;
t694 = t709 * qJDD(1);
t726 = t704 * t738;
t671 = t694 - t726;
t722 = t703 * t670 - t708 * t671;
t601 = -t662 * qJD(3) - t722;
t600 = qJDD(4) - t601;
t714 = qJDD(5) + t600;
t779 = -t548 + t714;
t791 = t701 * t779;
t705 = sin(qJ(1));
t710 = cos(qJ(1));
t680 = t705 * g(1) - t710 * g(2);
t781 = t671 - t726;
t626 = t781 * pkin(1) + t680;
t746 = t708 * t709;
t758 = t703 * t704;
t660 = (-t746 + t758) * qJD(1);
t650 = t698 * t660;
t715 = t660 * qJD(3) - t708 * t670 - t703 * t671;
t780 = t715 + t650;
t507 = t780 * pkin(5) + (t698 * t662 - t601) * pkin(2) - t626;
t718 = t710 * g(1) + t705 * g(2);
t655 = -t704 * g(3) - t709 * t718;
t700 = t709 ^ 2;
t712 = qJD(1) ^ 2;
t696 = t700 * t712;
t711 = qJD(2) ^ 2;
t684 = -t696 - t711;
t636 = pkin(1) * t684 + t655;
t654 = t709 * g(3) - t704 * t718;
t686 = t709 * t712 * t704;
t678 = qJDD(2) + t686;
t713 = t678 * pkin(1) - t654;
t587 = t708 * t636 + t703 * t713;
t619 = t660 * pkin(2) - t662 * pkin(5);
t734 = qJDD(2) + qJDD(3);
t773 = t698 ^ 2;
t546 = -t773 * pkin(2) + t734 * pkin(5) - t660 * t619 + t587;
t466 = -t707 * t507 + t702 * t546;
t597 = t635 * t633;
t777 = -t597 + t600;
t429 = pkin(3) * t777 - t466;
t467 = t702 * t507 + t707 * t546;
t631 = t633 ^ 2;
t656 = qJD(4) + t660;
t653 = t656 ^ 2;
t572 = -t631 - t653;
t439 = t572 * pkin(3) + t467;
t394 = -t706 * t429 + t701 * t439;
t395 = t701 * t429 + t706 * t439;
t350 = t706 * t394 - t701 * t395;
t790 = t702 * t350;
t789 = t702 * t777;
t623 = t662 * t660;
t776 = -t623 + t734;
t788 = t703 * t776;
t586 = t703 * t636 - t708 * t713;
t541 = t708 * t586 - t703 * t587;
t787 = t704 * t541;
t786 = t706 * t779;
t785 = t707 * t350;
t784 = t707 * t777;
t783 = t708 * t776;
t782 = t709 * t541;
t560 = -t633 * qJD(4) + t702 * t734 - t707 * t715;
t723 = -t702 * t715 - t707 * t734;
t716 = t635 * qJD(4) + t723;
t487 = -t591 * qJD(5) + t706 * t560 - t701 * t716;
t652 = qJD(5) + t656;
t566 = t652 * t591;
t778 = -t566 + t487;
t608 = t656 * t633;
t537 = -t608 + t560;
t667 = t710 * t680;
t774 = t705 * t718 - t667;
t724 = t701 * t560 + t706 * t716;
t449 = (qJD(5) - t652) * t593 + t724;
t534 = (qJD(4) - t656) * t635 + t723;
t574 = (qJD(3) - t698) * t662 + t722;
t589 = t591 ^ 2;
t590 = t593 ^ 2;
t632 = t635 ^ 2;
t651 = t652 ^ 2;
t658 = t660 ^ 2;
t659 = t662 ^ 2;
t578 = -t650 + t715;
t520 = -t574 * t703 + t708 * t578;
t772 = pkin(1) * t520;
t771 = pkin(2) * t703;
t770 = t652 * t701;
t769 = t652 * t706;
t768 = t656 * t702;
t767 = t656 * t707;
t766 = t698 * t703;
t765 = t698 * t708;
t699 = t704 ^ 2;
t764 = t699 * t712;
t545 = -t734 * pkin(2) - t773 * pkin(5) + t662 * t619 + t586;
t485 = t545 + (t656 * t635 + t716) * pkin(3);
t763 = t701 * t485;
t505 = t548 + t714;
t762 = t701 * t505;
t761 = t702 * t545;
t550 = t597 + t600;
t760 = t702 * t550;
t617 = t623 + t734;
t759 = t703 * t617;
t756 = t704 * t678;
t679 = qJDD(2) - t686;
t755 = t704 * t679;
t754 = t705 * t626;
t753 = t705 * t680;
t752 = t706 * t485;
t751 = t706 * t505;
t750 = t707 * t545;
t749 = t707 * t550;
t748 = t708 * t617;
t747 = t708 * t626;
t745 = t709 * t679;
t744 = t709 * t680;
t743 = t710 * t626;
t742 = t699 + t700;
t736 = t705 * qJDD(1);
t735 = t710 * qJDD(1);
t733 = t703 * t548;
t732 = t703 * t597;
t731 = t705 * t623;
t730 = t708 * t548;
t729 = t708 * t597;
t728 = t710 * t623;
t727 = -pkin(2) * t708 - pkin(1);
t351 = t701 * t394 + t706 * t395;
t542 = t703 * t586 + t708 * t587;
t614 = t704 * t654 + t709 * t655;
t638 = -t710 * t718 - t753;
t721 = t705 * t686;
t720 = t710 * t686;
t675 = -t705 * t712 + t735;
t719 = -pkin(4) * t675 - t705 * g(3);
t413 = -t707 * t466 + t702 * t467;
t414 = t702 * t466 + t707 * t467;
t613 = t709 * t654 - t704 * t655;
t683 = t696 - t711;
t682 = -t711 - t764;
t681 = t711 - t764;
t677 = t696 - t764;
t676 = t696 + t764;
t674 = t710 * t712 + t736;
t673 = t742 * qJDD(1);
t672 = t694 - 0.2e1 * t726;
t669 = 0.2e1 * t725 + t737;
t665 = t709 * t678;
t664 = t742 * t738;
t657 = -pkin(4) * t674 + t710 * g(3);
t647 = -t659 + t773;
t646 = t658 - t773;
t645 = t709 * t670 - t699 * t738;
t644 = -t704 * t671 - t700 * t738;
t643 = -t659 - t773;
t642 = -t704 * t682 - t745;
t641 = -t704 * t681 + t665;
t640 = t709 * t684 - t756;
t639 = t709 * t683 - t755;
t630 = t710 * t673 - t705 * t676;
t629 = t705 * t673 + t710 * t676;
t624 = -t704 * t669 + t709 * t672;
t620 = -t659 + t658;
t615 = -t773 - t658;
t612 = t710 * t642 + t705 * t669;
t611 = t710 * t640 - t705 * t672;
t610 = t705 * t642 - t710 * t669;
t609 = t705 * t640 + t710 * t672;
t607 = -t632 + t653;
t606 = t631 - t653;
t605 = (-t660 * t708 + t662 * t703) * t698;
t604 = (-t660 * t703 - t662 * t708) * t698;
t603 = -t658 - t659;
t596 = -t632 + t631;
t595 = t710 * t614 - t753;
t594 = t705 * t614 + t667;
t588 = -t632 - t653;
t585 = t708 * t646 - t759;
t584 = -t703 * t647 + t783;
t583 = t703 * t646 + t748;
t582 = t708 * t647 + t788;
t580 = -t703 * t643 - t748;
t579 = t708 * t643 - t759;
t573 = (qJD(3) + t698) * t662 + t722;
t571 = -t662 * t766 - t708 * t715;
t570 = t662 * t765 - t703 * t715;
t569 = -t703 * t601 + t660 * t765;
t568 = t708 * t601 + t660 * t766;
t565 = t708 * t615 - t788;
t564 = t703 * t615 + t783;
t563 = -t590 + t651;
t562 = t589 - t651;
t561 = t631 + t632;
t557 = (-t633 * t707 + t635 * t702) * t656;
t556 = (t633 * t702 + t635 * t707) * t656;
t555 = -t704 * t604 + t709 * t605;
t554 = -t590 - t651;
t553 = -pkin(1) * t573 + t747;
t552 = pkin(1) * t780 - t703 * t626;
t547 = -t590 + t589;
t543 = -pkin(1) * t579 + t587;
t538 = -t608 - t560;
t535 = (-qJD(4) - t656) * t635 - t723;
t533 = -t704 * t583 + t709 * t585;
t532 = -t704 * t582 + t709 * t584;
t531 = t707 * t560 - t635 * t768;
t530 = -t702 * t560 - t635 * t767;
t529 = t633 * t767 + t702 * t716;
t528 = -t633 * t768 + t707 * t716;
t527 = -t651 - t589;
t526 = -t704 * t579 + t709 * t580;
t525 = -t704 * t552 - t626 * t746;
t524 = -t704 * t553 - t626 * t757;
t523 = -pkin(1) * t564 + t586;
t522 = -t574 * t708 - t703 * t578;
t521 = -t708 * t573 + t703 * t780;
t519 = -t703 * t573 - t708 * t780;
t518 = t708 * t557 + t703 * t600;
t517 = t703 * t557 - t708 * t600;
t516 = t707 * t606 - t760;
t515 = -t702 * t607 + t784;
t514 = -t702 * t606 - t749;
t513 = -t707 * t607 - t789;
t512 = -t704 * t570 + t709 * t571;
t511 = -t704 * t568 + t709 * t569;
t510 = (-t591 * t706 + t593 * t701) * t652;
t509 = (-t591 * t701 - t593 * t706) * t652;
t508 = -t704 * t564 + t709 * t565;
t503 = -t702 * t588 - t749;
t502 = t707 * t588 - t760;
t499 = -pkin(1) * t603 + t542;
t498 = -t589 - t590;
t497 = t707 * t572 - t789;
t496 = t702 * t572 + t784;
t495 = t708 * t531 + t732;
t494 = t708 * t529 - t732;
t493 = t703 * t531 - t729;
t492 = t703 * t529 + t729;
t491 = t710 * t526 - t705 * t780;
t490 = t705 * t526 + t710 * t780;
t489 = t710 * t508 + t705 * t573;
t488 = t705 * t508 - t710 * t573;
t486 = -t593 * qJD(5) - t724;
t484 = t706 * t562 - t762;
t483 = -t701 * t563 + t786;
t482 = t701 * t562 + t751;
t481 = t706 * t563 + t791;
t480 = t709 * t542 + t787;
t479 = -t534 * t707 - t702 * t538;
t478 = t707 * t535 - t702 * t537;
t477 = -t534 * t702 + t707 * t538;
t476 = -t702 * t535 - t707 * t537;
t475 = -t701 * t554 - t751;
t474 = t706 * t554 - t762;
t473 = -t704 * t520 + t709 * t522;
t472 = -t704 * t519 + t709 * t521;
t471 = t708 * t516 - t703 * t534;
t470 = t708 * t515 - t703 * t538;
t469 = t703 * t516 + t708 * t534;
t468 = t703 * t515 + t708 * t538;
t465 = -pkin(5) * t502 + t750;
t464 = t710 * t480 - t754;
t463 = t705 * t480 + t743;
t462 = -t704 * t517 + t709 * t518;
t461 = -pkin(5) * t496 + t761;
t460 = t708 * t503 + t537 * t703;
t459 = t703 * t503 - t537 * t708;
t458 = t706 * t527 - t791;
t457 = t701 * t527 + t786;
t456 = -t704 * t499 + t782;
t455 = t708 * t497 - t703 * t535;
t454 = t703 * t497 + t708 * t535;
t453 = -t566 - t487;
t448 = (qJD(5) + t652) * t593 + t724;
t447 = t706 * t487 - t593 * t770;
t446 = t701 * t487 + t593 * t769;
t445 = -t701 * t486 + t591 * t769;
t444 = t706 * t486 + t591 * t770;
t443 = t708 * t478 - t703 * t596;
t442 = t703 * t478 + t708 * t596;
t441 = -t702 * t509 + t707 * t510;
t440 = -t707 * t509 - t702 * t510;
t438 = t710 * t473 + t705 * t603;
t437 = t705 * t473 - t710 * t603;
t435 = t708 * t479 - t703 * t561;
t434 = t703 * t479 + t708 * t561;
t433 = t708 * t441 + t703 * t714;
t432 = t703 * t441 - t708 * t714;
t431 = -t704 * t493 + t709 * t495;
t430 = -t704 * t492 + t709 * t494;
t426 = -pkin(2) * t502 + t467;
t425 = -pkin(2) * t496 + t466;
t424 = -t702 * t482 + t707 * t484;
t423 = -t702 * t481 + t707 * t483;
t422 = -t707 * t482 - t702 * t484;
t421 = -t707 * t481 - t702 * t483;
t420 = -t702 * t474 + t707 * t475;
t419 = t707 * t474 + t702 * t475;
t418 = -pkin(3) * t448 - t752;
t417 = -pkin(3) * t778 + t763;
t416 = -t704 * t469 + t709 * t471;
t415 = -t704 * t468 + t709 * t470;
t412 = -t704 * t459 + t709 * t460;
t411 = -t702 * t457 + t707 * t458;
t410 = t707 * t457 + t702 * t458;
t409 = -t704 * t454 + t709 * t455;
t408 = -t449 * t706 - t701 * t453;
t407 = -t706 * t448 - t701 * t778;
t406 = -t449 * t701 + t706 * t453;
t405 = -t701 * t448 + t706 * t778;
t404 = -t702 * t446 + t707 * t447;
t403 = -t702 * t444 + t707 * t445;
t402 = -t707 * t446 - t702 * t447;
t401 = -t707 * t444 - t702 * t445;
t400 = -t704 * t442 + t709 * t443;
t399 = -t704 * t434 + t709 * t435;
t398 = t708 * t414 + t703 * t545;
t397 = t703 * t414 - t708 * t545;
t396 = -pkin(1) * t459 + pkin(2) * t537 - pkin(5) * t503 - t761;
t392 = -pkin(1) * t454 - pkin(2) * t535 - pkin(5) * t497 + t750;
t391 = -t703 * t426 + t708 * t465;
t390 = -t704 * t432 + t709 * t433;
t389 = t708 * t404 + t733;
t388 = t708 * t403 - t733;
t387 = t703 * t404 - t730;
t386 = t703 * t403 + t730;
t385 = -t703 * t425 + t708 * t461;
t384 = t710 * t412 + t705 * t502;
t383 = t705 * t412 - t710 * t502;
t382 = t710 * t409 + t705 * t496;
t381 = t705 * t409 - t710 * t496;
t380 = t708 * t424 - t703 * t449;
t379 = t708 * t423 - t703 * t453;
t378 = t703 * t424 + t708 * t449;
t377 = t703 * t423 + t708 * t453;
t376 = -pkin(5) * t477 - t413;
t375 = t708 * t420 + t703 * t778;
t374 = t703 * t420 - t708 * t778;
t373 = -pkin(1) * t502 + t708 * t426 + t703 * t465;
t372 = t708 * t411 + t703 * t448;
t371 = t703 * t411 - t708 * t448;
t370 = -pkin(1) * t496 + t708 * t425 + t703 * t461;
t369 = t710 * t399 + t705 * t477;
t368 = t705 * t399 - t710 * t477;
t367 = t708 * t376 + t477 * t771;
t366 = (-pkin(5) * t708 + t771) * t413;
t365 = -t702 * t406 + t707 * t408;
t364 = -t702 * t405 + t707 * t407;
t363 = t707 * t406 + t702 * t408;
t362 = -t707 * t405 - t702 * t407;
t361 = -pkin(1) * t434 - pkin(2) * t561 - pkin(5) * t479 - t414;
t360 = -pkin(5) * t419 - t702 * t417 + t707 * t752;
t359 = t703 * t376 + t727 * t477;
t358 = t708 * t364 - t703 * t547;
t357 = t703 * t364 + t708 * t547;
t356 = -pkin(1) * t397 + pkin(2) * t545 - pkin(5) * t414;
t355 = -t704 * t397 + t709 * t398;
t354 = -pkin(5) * t410 - t702 * t418 + t707 * t763;
t353 = t708 * t365 + t703 * t498;
t352 = t703 * t365 - t708 * t498;
t348 = -t704 * t387 + t709 * t389;
t347 = -t704 * t386 + t709 * t388;
t346 = -pkin(2) * t419 - pkin(3) * t474 + t395;
t345 = -pkin(3) * t498 + t351;
t344 = -t704 * t378 + t709 * t380;
t343 = -t704 * t377 + t709 * t379;
t342 = -pkin(2) * t410 - pkin(3) * t457 + t394;
t341 = -t704 * t373 + t709 * t391;
t340 = -t704 * t374 + t709 * t375;
t339 = -t704 * t370 + t709 * t385;
t338 = (-pkin(5) * t703 + t727) * t413;
t337 = -t704 * t371 + t709 * t372;
t336 = -pkin(2) * t363 - pkin(3) * t406;
t335 = t710 * t355 + t705 * t413;
t334 = t705 * t355 - t710 * t413;
t333 = t710 * t340 + t705 * t419;
t332 = t705 * t340 - t710 * t419;
t331 = -t704 * t359 + t709 * t367;
t330 = t710 * t337 + t705 * t410;
t329 = t705 * t337 - t710 * t410;
t328 = -pkin(1) * t374 + pkin(2) * t778 - pkin(5) * t420 - t707 * t417 - t702 * t752;
t327 = -pkin(1) * t371 + pkin(2) * t448 - pkin(5) * t411 - t707 * t418 - t702 * t763;
t326 = -t704 * t357 + t709 * t358;
t325 = -t704 * t352 + t709 * t353;
t324 = -t703 * t346 + t708 * t360;
t323 = t707 * t351 + t790;
t322 = t702 * t351 - t785;
t321 = -t704 * t338 + t709 * t366;
t320 = -t703 * t342 + t708 * t354;
t319 = t702 * pkin(3) * t485 - pkin(5) * t322;
t318 = t708 * t323 + t703 * t485;
t317 = t703 * t323 - t708 * t485;
t316 = -pkin(1) * t419 + t708 * t346 + t703 * t360;
t315 = -pkin(1) * t410 + t708 * t342 + t703 * t354;
t314 = t710 * t325 + t705 * t363;
t313 = t705 * t325 - t710 * t363;
t312 = -pkin(5) * t363 - t702 * t345 + t785;
t311 = -pkin(2) * t322 + pkin(3) * t350;
t310 = -pkin(1) * t352 + pkin(2) * t498 - pkin(5) * t365 - t707 * t345 - t790;
t309 = t708 * t312 - t703 * t336;
t308 = -t704 * t316 + t709 * t324;
t307 = -t704 * t317 + t709 * t318;
t306 = -pkin(1) * t317 - pkin(5) * t323 + (pkin(3) * t707 + pkin(2)) * t485;
t305 = -t704 * t315 + t709 * t320;
t304 = -pkin(1) * t363 + t703 * t312 + t708 * t336;
t303 = -t703 * t311 + t708 * t319;
t302 = t710 * t307 + t705 * t322;
t301 = t705 * t307 - t710 * t322;
t300 = -pkin(1) * t322 + t708 * t311 + t703 * t319;
t299 = -t704 * t304 + t709 * t309;
t298 = -t704 * t300 + t709 * t303;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t674, -t675, 0, t638, 0, 0, 0, 0, 0, 0, t611, t612, t630, t595, 0, 0, 0, 0, 0, 0, t489, t491, t438, t464, 0, 0, 0, 0, 0, 0, t382, t384, t369, t335, 0, 0, 0, 0, 0, 0, t330, t333, t314, t302; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t675, -t674, 0, -t774, 0, 0, 0, 0, 0, 0, t609, t610, t629, t594, 0, 0, 0, 0, 0, 0, t488, t490, t437, t463, 0, 0, 0, 0, 0, 0, t381, t383, t368, t334, 0, 0, 0, 0, 0, 0, t329, t332, t313, t301; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t704 * t684 + t665, t709 * t682 - t755, 0, -t613, 0, 0, 0, 0, 0, 0, t709 * t564 + t704 * t565, t709 * t579 + t704 * t580, t709 * t520 + t704 * t522, t704 * t542 - t782, 0, 0, 0, 0, 0, 0, t709 * t454 + t704 * t455, t709 * t459 + t704 * t460, t709 * t434 + t704 * t435, t709 * t397 + t704 * t398, 0, 0, 0, 0, 0, 0, t709 * t371 + t704 * t372, t709 * t374 + t704 * t375, t709 * t352 + t704 * t353, t709 * t317 + t704 * t318; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t675, 0, -t674, 0, t719, -t657, t774, pkin(4) * t774, t710 * t645 - t721, t710 * t624 - t705 * t677, t710 * t641 + t704 * t736, t710 * t644 + t721, t710 * t639 + t705 * t694, t705 * qJDD(2) + t710 * t664, -pkin(4) * t609 - t705 * t654 - t704 * t667, -pkin(4) * t610 - t705 * t655 - t709 * t667, -pkin(4) * t629 + t710 * t613, -pkin(4) * t594, t710 * t512 + t731, t710 * t472 - t705 * t620, t710 * t532 - t705 * t578, t710 * t511 - t731, t710 * t533 - t705 * t574, t710 * t555 + t705 * t734, -pkin(4) * t488 - t705 * t523 + t710 * t524, -pkin(4) * t490 + t710 * t525 - t705 * t543, -pkin(4) * t437 + t710 * t456 + t705 * t772, -pkin(4) * t463 + (-t541 * t705 - t704 * t743) * pkin(1), t710 * t431 - t705 * t530, t710 * t400 - t705 * t476, t710 * t415 - t705 * t513, t710 * t430 - t705 * t528, t710 * t416 - t705 * t514, t710 * t462 - t705 * t556, -pkin(4) * t381 + t710 * t339 - t705 * t392, -pkin(4) * t383 + t710 * t341 - t705 * t396, -pkin(4) * t368 + t710 * t331 - t705 * t361, -pkin(4) * t334 + t710 * t321 - t705 * t356, t710 * t348 - t705 * t402, t710 * t326 - t705 * t362, t710 * t343 - t705 * t421, t710 * t347 - t705 * t401, t710 * t344 - t705 * t422, t710 * t390 - t705 * t440, -pkin(4) * t329 + t710 * t305 - t705 * t327, -pkin(4) * t332 + t710 * t308 - t705 * t328, -pkin(4) * t313 + t710 * t299 - t705 * t310, -pkin(4) * t301 + t710 * t298 - t705 * t306; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t674, 0, t675, 0, t657, t719, t638, pkin(4) * t638, t705 * t645 + t720, t705 * t624 + t710 * t677, t705 * t641 - t704 * t735, t705 * t644 - t720, t705 * t639 - t709 * t735, -t710 * qJDD(2) + t705 * t664, pkin(4) * t611 + t710 * t654 - t704 * t753, pkin(4) * t612 + t710 * t655 - t705 * t744, pkin(4) * t630 + t705 * t613, pkin(4) * t595, t705 * t512 - t728, t705 * t472 + t710 * t620, t705 * t532 + t710 * t578, t705 * t511 + t728, t705 * t533 + t710 * t574, t705 * t555 - t710 * t734, pkin(4) * t489 + t710 * t523 + t705 * t524, pkin(4) * t491 + t705 * t525 + t710 * t543, pkin(4) * t438 + t705 * t456 - t710 * t772, pkin(4) * t464 + (t541 * t710 - t704 * t754) * pkin(1), t705 * t431 + t710 * t530, t705 * t400 + t710 * t476, t705 * t415 + t710 * t513, t705 * t430 + t710 * t528, t705 * t416 + t710 * t514, t705 * t462 + t710 * t556, pkin(4) * t382 + t705 * t339 + t710 * t392, pkin(4) * t384 + t705 * t341 + t710 * t396, pkin(4) * t369 + t705 * t331 + t710 * t361, pkin(4) * t335 + t705 * t321 + t710 * t356, t705 * t348 + t710 * t402, t705 * t326 + t710 * t362, t705 * t343 + t710 * t421, t705 * t347 + t710 * t401, t705 * t344 + t710 * t422, t705 * t390 + t710 * t440, pkin(4) * t330 + t705 * t305 + t710 * t327, pkin(4) * t333 + t705 * t308 + t710 * t328, pkin(4) * t314 + t705 * t299 + t710 * t310, pkin(4) * t302 + t705 * t298 + t710 * t306; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t680, t718, 0, 0, (t670 + t725) * t704, t709 * t669 + t704 * t672, t709 * t681 + t756, t781 * t709, t704 * t683 + t745, 0, t744, -t704 * t680, t614, 0, t709 * t570 + t704 * t571, t709 * t519 + t704 * t521, t709 * t582 + t704 * t584, t709 * t568 + t704 * t569, t709 * t583 + t704 * t585, t709 * t604 + t704 * t605, t709 * t553 - t626 * t758, t709 * t552 - t704 * t747, t709 * t499 + t787, t709 * pkin(1) * t626, t709 * t493 + t704 * t495, t709 * t442 + t704 * t443, t709 * t468 + t704 * t470, t709 * t492 + t704 * t494, t709 * t469 + t704 * t471, t709 * t517 + t704 * t518, t709 * t370 + t704 * t385, t709 * t373 + t704 * t391, t709 * t359 + t704 * t367, t709 * t338 + t704 * t366, t709 * t387 + t704 * t389, t709 * t357 + t704 * t358, t709 * t377 + t704 * t379, t709 * t386 + t704 * t388, t709 * t378 + t704 * t380, t709 * t432 + t704 * t433, t709 * t315 + t704 * t320, t709 * t316 + t704 * t324, t709 * t304 + t704 * t309, t709 * t300 + t704 * t303;];
tauB_reg = t1;
