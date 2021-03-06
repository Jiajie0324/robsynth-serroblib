% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRRRP6
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:55
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRRRP6_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP6_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP6_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRP6_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRP6_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP6_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:54:44
% EndTime: 2019-12-31 21:54:56
% DurationCPUTime: 9.83s
% Computational Cost: add. (43576->551), mult. (89221->786), div. (0->0), fcn. (62822->8), ass. (0->406)
t664 = sin(qJ(4));
t665 = sin(qJ(3));
t666 = sin(qJ(2));
t669 = cos(qJ(3));
t670 = cos(qJ(2));
t627 = (t665 * t670 + t666 * t669) * qJD(1);
t668 = cos(qJ(4));
t709 = qJD(2) + qJD(3);
t599 = t627 * t664 - t668 * t709;
t601 = t668 * t627 + t664 * t709;
t562 = t601 * t599;
t713 = qJD(1) * qJD(2);
t698 = t670 * t713;
t712 = qJDD(1) * t666;
t635 = t698 + t712;
t658 = t670 * qJDD(1);
t699 = t666 * t713;
t636 = t658 - t699;
t693 = t665 * t635 - t669 * t636;
t566 = -t627 * qJD(3) - t693;
t563 = qJDD(4) - t566;
t695 = -t563 + t562;
t735 = t695 * t664;
t734 = t695 * t668;
t761 = t695 * pkin(4);
t716 = qJD(1) * t666;
t625 = -t669 * t670 * qJD(1) + t665 * t716;
t589 = t627 * t625;
t708 = qJDD(2) + qJDD(3);
t759 = -t589 + t708;
t764 = t665 * t759;
t763 = t669 * t759;
t567 = -qJD(3) * t625 + t635 * t669 + t636 * t665;
t618 = t709 * t625;
t762 = t567 - t618;
t707 = t709 ^ 2;
t530 = -t599 * qJD(4) + t668 * t567 + t664 * t708;
t621 = qJD(4) + t625;
t577 = t621 * t599;
t760 = -t577 + t530;
t694 = t567 * t664 - t668 * t708;
t511 = (qJD(4) - t621) * t601 + t694;
t663 = t670 ^ 2;
t673 = qJD(1) ^ 2;
t667 = sin(qJ(1));
t671 = cos(qJ(1));
t645 = t667 * g(1) - t671 * g(2);
t683 = qJDD(1) * pkin(1) + t645;
t684 = qJD(2) * pkin(2) - pkin(7) * t716;
t569 = t636 * pkin(2) + (pkin(7) * t663 + pkin(6)) * t673 - t684 * t716 + t683;
t596 = t599 ^ 2;
t597 = t601 ^ 2;
t620 = t621 ^ 2;
t623 = t625 ^ 2;
t624 = t627 ^ 2;
t540 = -t620 - t596;
t478 = t540 * t664 - t734;
t758 = pkin(3) * t478;
t553 = -t597 - t620;
t521 = t562 + t563;
t737 = t521 * t664;
t485 = t553 * t668 - t737;
t757 = pkin(3) * t485;
t756 = pkin(3) * t665;
t515 = -t577 - t530;
t459 = -t511 * t668 - t515 * t664;
t531 = -t596 - t597;
t432 = t459 * t665 - t531 * t669;
t433 = t459 * t669 + t531 * t665;
t387 = -t432 * t666 + t433 * t670;
t457 = -t511 * t664 + t515 * t668;
t359 = t387 * t667 - t457 * t671;
t755 = pkin(5) * t359;
t479 = t540 * t668 + t735;
t510 = (qJD(4) + t621) * t601 + t694;
t441 = t479 * t665 - t510 * t669;
t442 = t479 * t669 + t510 * t665;
t392 = -t441 * t666 + t442 * t670;
t370 = t392 * t667 - t478 * t671;
t754 = pkin(5) * t370;
t736 = t521 * t668;
t486 = -t553 * t664 - t736;
t444 = t486 * t665 - t669 * t760;
t445 = t486 * t669 + t665 * t760;
t396 = -t444 * t666 + t445 * t670;
t374 = t396 * t667 - t485 * t671;
t753 = pkin(5) * t374;
t386 = t432 * t670 + t433 * t666;
t752 = pkin(6) * t386;
t391 = t441 * t670 + t442 * t666;
t751 = pkin(6) * t391;
t395 = t444 * t670 + t445 * t666;
t750 = pkin(6) * t395;
t749 = pkin(7) * t432;
t748 = pkin(7) * t441;
t747 = pkin(7) * t444;
t746 = pkin(8) * t457;
t745 = pkin(8) * t478;
t744 = pkin(8) * t485;
t692 = t709 * t627;
t476 = -t762 * pkin(8) + (-t566 + t692) * pkin(3) - t569;
t646 = g(1) * t671 + g(2) * t667;
t676 = -pkin(1) * t673 + qJDD(1) * pkin(6) - t646;
t612 = -t666 * g(3) + t670 * t676;
t660 = t663 * t673;
t561 = -pkin(2) * t660 + t636 * pkin(7) - qJD(2) * t684 + t612;
t675 = t666 * t676;
t721 = t666 * t673;
t674 = -t675 - t635 * pkin(7) + qJDD(2) * pkin(2) + (pkin(2) * t721 + pkin(7) * t713 - g(3)) * t670;
t519 = t669 * t561 + t665 * t674;
t587 = pkin(3) * t625 - pkin(8) * t627;
t483 = -t707 * pkin(3) + t708 * pkin(8) - t625 * t587 + t519;
t426 = -t668 * t476 + t664 * t483;
t702 = t530 * qJ(5) + t426;
t682 = -qJ(5) * t577 - t702;
t715 = qJD(5) * t601;
t393 = t682 - 0.2e1 * t715 - t761;
t743 = t393 * t664;
t742 = t393 * t668;
t518 = t561 * t665 - t669 * t674;
t463 = -t518 * t669 + t519 * t665;
t741 = t463 * t666;
t740 = t463 * t670;
t482 = -t708 * pkin(3) - t707 * pkin(8) + t587 * t627 + t518;
t739 = t482 * t664;
t738 = t482 * t668;
t733 = t569 * t665;
t732 = t569 * t669;
t585 = t589 + t708;
t731 = t585 * t665;
t730 = t585 * t669;
t729 = t621 * t664;
t728 = t621 * t668;
t628 = t673 * pkin(6) + t683;
t727 = t628 * t666;
t726 = t628 * t670;
t652 = t670 * t721;
t643 = qJDD(2) + t652;
t725 = t643 * t666;
t644 = qJDD(2) - t652;
t724 = t644 * t666;
t723 = t644 * t670;
t662 = t666 ^ 2;
t722 = t662 * t673;
t720 = -pkin(1) * t457 + pkin(6) * t387;
t719 = -pkin(1) * t478 + pkin(6) * t392;
t718 = -pkin(1) * t485 + pkin(6) * t396;
t427 = t664 * t476 + t668 * t483;
t717 = t662 + t663;
t711 = qJDD(1) * t667;
t710 = qJDD(1) * t671;
t706 = t665 * t562;
t705 = t669 * t562;
t704 = t667 * t589;
t703 = t671 * t589;
t701 = -pkin(3) * t669 - pkin(2);
t697 = -pkin(2) * t478 + pkin(7) * t442;
t696 = -pkin(2) * t485 + pkin(7) * t445;
t464 = t518 * t665 + t669 * t519;
t611 = t670 * g(3) + t675;
t560 = t611 * t666 + t670 * t612;
t603 = -t645 * t667 - t671 * t646;
t691 = t667 * t652;
t690 = t671 * t652;
t640 = -t667 * t673 + t710;
t689 = -pkin(5) * t640 - g(3) * t667;
t688 = t665 * t618;
t687 = t665 * t692;
t686 = t669 * t618;
t685 = t669 * t692;
t382 = -t426 * t668 + t427 * t664;
t383 = t426 * t664 + t427 * t668;
t559 = t611 * t670 - t612 * t666;
t602 = t645 * t671 - t646 * t667;
t543 = qJD(2) * t627 - t693;
t529 = -qJD(4) * t601 - t694;
t570 = pkin(4) * t621 - qJ(5) * t601;
t681 = t529 * qJ(5) - 0.2e1 * qJD(5) * t599 - t570 * t621 + t427;
t680 = -pkin(1) * t386 - pkin(2) * t432 + pkin(3) * t531 - pkin(8) * t459;
t679 = -pkin(1) * t391 - pkin(2) * t441 + pkin(3) * t510 - pkin(8) * t479;
t678 = -pkin(1) * t395 - pkin(2) * t444 + pkin(3) * t760 - pkin(8) * t486;
t428 = -t529 * pkin(4) - t596 * qJ(5) + t570 * t601 + qJDD(5) + t482;
t672 = qJD(2) ^ 2;
t650 = -t660 - t672;
t649 = t660 - t672;
t648 = -t672 - t722;
t647 = t672 - t722;
t642 = t660 - t722;
t641 = t660 + t722;
t639 = t671 * t673 + t711;
t638 = t717 * qJDD(1);
t637 = t658 - 0.2e1 * t699;
t634 = 0.2e1 * t698 + t712;
t632 = t670 * t643;
t631 = t717 * t713;
t622 = -pkin(5) * t639 + g(3) * t671;
t616 = -t624 + t707;
t615 = t623 - t707;
t614 = t635 * t670 - t662 * t713;
t613 = -t636 * t666 - t663 * t713;
t610 = -t624 - t707;
t609 = -t648 * t666 - t723;
t608 = -t647 * t666 + t632;
t607 = t650 * t670 - t725;
t606 = t649 * t670 - t724;
t605 = t648 * t670 - t724;
t604 = t650 * t666 + t632;
t595 = t638 * t671 - t641 * t667;
t594 = t638 * t667 + t641 * t671;
t592 = 0.2e1 * t715;
t590 = -t634 * t666 + t637 * t670;
t588 = -t624 + t623;
t583 = -t707 - t623;
t582 = t609 * t671 + t634 * t667;
t581 = t607 * t671 - t637 * t667;
t580 = t609 * t667 - t634 * t671;
t579 = t607 * t667 + t637 * t671;
t576 = -t597 + t620;
t575 = t596 - t620;
t574 = -t686 + t687;
t573 = -t688 - t685;
t572 = -pkin(6) * t605 - t726;
t571 = -pkin(6) * t604 - t727;
t568 = -t623 - t624;
t565 = -pkin(1) * t605 + t612;
t564 = -pkin(1) * t604 + t611;
t557 = -t597 + t596;
t552 = t615 * t669 - t731;
t551 = -t616 * t665 + t763;
t550 = t615 * t665 + t730;
t549 = t616 * t669 + t764;
t548 = -t610 * t665 - t730;
t547 = t610 * t669 - t731;
t546 = -t567 - t618;
t541 = (0.2e1 * qJD(3) + qJD(2)) * t627 + t693;
t539 = t669 * t567 - t687;
t538 = t665 * t567 + t685;
t537 = -t665 * t566 + t686;
t536 = t669 * t566 + t688;
t535 = t560 * t671 - t628 * t667;
t534 = t560 * t667 + t628 * t671;
t533 = t583 * t669 - t764;
t532 = t583 * t665 + t763;
t525 = (t599 * t664 + t601 * t668) * t621;
t524 = (-t599 * t668 + t601 * t664) * t621;
t523 = -t573 * t666 + t574 * t670;
t516 = -pkin(7) * t547 - t732;
t509 = -pkin(7) * t532 - t733;
t508 = -t550 * t666 + t552 * t670;
t507 = -t549 * t666 + t551 * t670;
t506 = t530 * t668 - t601 * t729;
t505 = -t529 * t668 - t599 * t729;
t504 = -t530 * t664 - t601 * t728;
t503 = -t529 * t664 + t599 * t728;
t502 = -t547 * t666 + t548 * t670;
t501 = t547 * t670 + t548 * t666;
t500 = t543 * t669 - t546 * t665;
t499 = -t541 * t669 - t665 * t762;
t498 = t543 * t665 + t546 * t669;
t497 = -t541 * t665 + t669 * t762;
t496 = t524 * t669 + t563 * t665;
t495 = t524 * t665 - t563 * t669;
t494 = -t576 * t668 + t735;
t493 = t575 * t668 - t737;
t492 = -t575 * t664 - t736;
t491 = -t576 * t664 - t734;
t490 = -t538 * t666 + t539 * t670;
t489 = -t536 * t666 + t537 * t670;
t488 = -t532 * t666 + t533 * t670;
t487 = t532 * t670 + t533 * t666;
t475 = -pkin(2) * t762 + pkin(7) * t548 - t733;
t472 = t506 * t669 + t706;
t471 = t503 * t669 - t706;
t470 = t506 * t665 - t705;
t469 = t503 * t665 + t705;
t468 = -pkin(2) * t541 + pkin(7) * t533 + t732;
t467 = t502 * t671 + t667 * t762;
t466 = t502 * t667 - t671 * t762;
t465 = -pkin(4) * t760 - qJ(5) * t521;
t462 = t488 * t671 + t541 * t667;
t461 = t488 * t667 - t541 * t671;
t460 = t510 * t664 - t668 * t760;
t458 = -t510 * t668 - t664 * t760;
t455 = pkin(2) * t569 + pkin(7) * t464;
t454 = -t498 * t666 + t500 * t670;
t453 = -t497 * t666 + t499 * t670;
t452 = t498 * t670 + t500 * t666;
t451 = t493 * t669 - t511 * t665;
t450 = t491 * t669 - t515 * t665;
t449 = t493 * t665 + t511 * t669;
t448 = t491 * t665 + t515 * t669;
t447 = -t495 * t666 + t496 * t670;
t446 = t495 * t670 + t496 * t666;
t439 = -pkin(1) * t501 - pkin(2) * t547 + t519;
t438 = t458 * t669 - t557 * t665;
t437 = t458 * t665 + t557 * t669;
t436 = t454 * t671 + t568 * t667;
t435 = t454 * t667 - t568 * t671;
t434 = t738 - t744;
t431 = pkin(7) * t433;
t430 = -pkin(1) * t487 - pkin(2) * t532 + t518;
t429 = t739 - t745;
t425 = -pkin(7) * t498 - t463;
t424 = -t470 * t666 + t472 * t670;
t423 = -t469 * t666 + t471 * t670;
t422 = t470 * t670 + t472 * t666;
t421 = t469 * t670 + t471 * t666;
t420 = -pkin(3) * t457 - pkin(4) * t515;
t419 = t447 * t671 - t525 * t667;
t418 = t447 * t667 + t525 * t671;
t417 = -pkin(2) * t568 + pkin(7) * t500 + t464;
t416 = -qJ(5) * t553 + t428;
t415 = -pkin(1) * t452 - pkin(2) * t498;
t414 = -pkin(6) * t501 - t475 * t666 + t516 * t670;
t413 = t464 * t670 - t741;
t412 = t464 * t666 + t740;
t411 = -pkin(6) * t487 - t468 * t666 + t509 * t670;
t410 = t413 * t671 - t569 * t667;
t409 = t413 * t667 + t569 * t671;
t408 = t427 - t757;
t407 = t424 * t671 - t504 * t667;
t406 = t423 * t671 - t505 * t667;
t405 = t424 * t667 + t504 * t671;
t404 = t423 * t667 + t505 * t671;
t403 = t426 - t758;
t402 = -pkin(4) * t510 + qJ(5) * t540 - t428;
t401 = -pkin(4) * t596 + t681;
t400 = -t449 * t666 + t451 * t670;
t399 = -t448 * t666 + t450 * t670;
t398 = t449 * t670 + t451 * t666;
t397 = t448 * t670 + t450 * t666;
t389 = -t437 * t666 + t438 * t670;
t388 = t437 * t670 + t438 * t666;
t384 = -pkin(1) * t412 - pkin(2) * t463;
t381 = t400 * t671 - t492 * t667;
t380 = t399 * t671 - t494 * t667;
t379 = t400 * t667 + t492 * t671;
t378 = t399 * t667 + t494 * t671;
t377 = t592 + (-t515 + t577) * qJ(5) + t761 + t702;
t376 = -qJ(5) * t511 + (-t531 - t596) * pkin(4) + t681;
t375 = t396 * t671 + t485 * t667;
t373 = pkin(5) * t375;
t372 = -t757 + (-t553 - t596) * pkin(4) + t681;
t371 = t392 * t671 + t478 * t667;
t369 = pkin(5) * t371;
t368 = t416 * t668 - t465 * t664 - t744;
t367 = qJ(5) * t734 - t402 * t664 - t745;
t366 = t592 - t682 - t758 + 0.2e1 * t761;
t365 = t383 * t669 + t482 * t665;
t364 = t383 * t665 - t482 * t669;
t363 = t389 * t671 - t460 * t667;
t362 = t389 * t667 + t460 * t671;
t361 = -pkin(4) * t428 + qJ(5) * t401;
t360 = t387 * t671 + t457 * t667;
t358 = pkin(5) * t360;
t357 = -t382 - t746;
t356 = -pkin(6) * t412 - pkin(7) * t740 - t455 * t666;
t355 = -pkin(6) * t452 - t417 * t666 + t425 * t670;
t354 = -t408 * t665 + t434 * t669 - t747;
t353 = t401 * t668 - t743;
t352 = t401 * t664 + t742;
t351 = -t403 * t665 + t429 * t669 - t748;
t350 = t408 * t669 + t434 * t665 + t696;
t349 = t678 - t739;
t348 = t403 * t669 + t429 * t665 + t697;
t347 = t679 + t738;
t346 = t353 * t669 + t428 * t665;
t345 = t353 * t665 - t428 * t669;
t344 = t357 * t669 + t457 * t756 - t749;
t343 = -t376 * t664 + t377 * t668 - t746;
t342 = -pkin(3) * t352 - pkin(4) * t393;
t341 = -t364 * t666 + t365 * t670;
t340 = t364 * t670 + t365 * t666;
t339 = -t416 * t664 - t465 * t668 + t678;
t338 = t357 * t665 + t457 * t701 + t431;
t337 = -qJ(5) * t735 - t402 * t668 + t679;
t336 = t368 * t669 - t372 * t665 - t747;
t335 = -t366 * t665 + t367 * t669 - t748;
t334 = t368 * t665 + t372 * t669 + t696;
t333 = -t383 + t680;
t332 = t366 * t669 + t367 * t665 + t697;
t331 = -pkin(7) * t364 + (-pkin(8) * t669 + t756) * t382;
t330 = t343 * t669 - t420 * t665 - t749;
t329 = t341 * t671 + t382 * t667;
t328 = t341 * t667 - t382 * t671;
t327 = -pkin(8) * t352 - qJ(5) * t742 - t361 * t664;
t326 = -pkin(2) * t457 + t343 * t665 + t420 * t669 + t431;
t325 = -t376 * t668 - t377 * t664 + t680;
t324 = pkin(7) * t365 + (-pkin(8) * t665 + t701) * t382;
t323 = -t345 * t666 + t346 * t670;
t322 = t345 * t670 + t346 * t666;
t321 = -t350 * t666 + t354 * t670 - t750;
t320 = -t348 * t666 + t351 * t670 - t751;
t319 = -pkin(1) * t340 - pkin(2) * t364 + pkin(3) * t482 - pkin(8) * t383;
t318 = -t338 * t666 + t344 * t670 - t752;
t317 = t323 * t671 + t352 * t667;
t316 = t323 * t667 - t352 * t671;
t315 = -t334 * t666 + t336 * t670 - t750;
t314 = -t332 * t666 + t335 * t670 - t751;
t313 = -t326 * t666 + t330 * t670 - t752;
t312 = -pkin(7) * t345 + t327 * t669 - t342 * t665;
t311 = -pkin(6) * t340 - t324 * t666 + t331 * t670;
t310 = -pkin(2) * t352 + pkin(7) * t346 + t327 * t665 + t342 * t669;
t309 = -pkin(1) * t322 - pkin(2) * t345 + pkin(3) * t428 - pkin(8) * t353 + qJ(5) * t743 - t361 * t668;
t308 = -pkin(6) * t322 - t310 * t666 + t312 * t670;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t639, -t640, 0, t603, 0, 0, 0, 0, 0, 0, t581, t582, t595, t535, 0, 0, 0, 0, 0, 0, t462, t467, t436, t410, 0, 0, 0, 0, 0, 0, t371, t375, t360, t329, 0, 0, 0, 0, 0, 0, t371, t375, t360, t317; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t640, -t639, 0, t602, 0, 0, 0, 0, 0, 0, t579, t580, t594, t534, 0, 0, 0, 0, 0, 0, t461, t466, t435, t409, 0, 0, 0, 0, 0, 0, t370, t374, t359, t328, 0, 0, 0, 0, 0, 0, t370, t374, t359, t316; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t604, t605, 0, -t559, 0, 0, 0, 0, 0, 0, t487, t501, t452, t412, 0, 0, 0, 0, 0, 0, t391, t395, t386, t340, 0, 0, 0, 0, 0, 0, t391, t395, t386, t322; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t640, 0, -t639, 0, t689, -t622, -t602, -pkin(5) * t602, t614 * t671 - t691, t590 * t671 - t642 * t667, t608 * t671 + t666 * t711, t613 * t671 + t691, t606 * t671 + t658 * t667, qJDD(2) * t667 + t631 * t671, -pkin(5) * t579 - t564 * t667 + t571 * t671, -pkin(5) * t580 - t565 * t667 + t572 * t671, -pkin(5) * t594 + t559 * t671, -pkin(5) * t534 - (pkin(1) * t667 - pkin(6) * t671) * t559, t490 * t671 + t704, t453 * t671 - t588 * t667, t507 * t671 - t546 * t667, t489 * t671 - t704, t508 * t671 + t543 * t667, t671 * t523 + t667 * t708, -pkin(5) * t461 + t411 * t671 - t430 * t667, -pkin(5) * t466 + t414 * t671 - t439 * t667, -pkin(5) * t435 + t355 * t671 - t415 * t667, -pkin(5) * t409 + t356 * t671 - t384 * t667, t407, t363, t380, t406, t381, t419, t320 * t671 - t347 * t667 - t754, t321 * t671 - t349 * t667 - t753, t318 * t671 - t333 * t667 - t755, -pkin(5) * t328 + t311 * t671 - t319 * t667, t407, t363, t380, t406, t381, t419, t314 * t671 - t337 * t667 - t754, t315 * t671 - t339 * t667 - t753, t313 * t671 - t325 * t667 - t755, -pkin(5) * t316 + t308 * t671 - t309 * t667; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t639, 0, t640, 0, t622, t689, t603, pkin(5) * t603, t614 * t667 + t690, t590 * t667 + t642 * t671, t608 * t667 - t666 * t710, t613 * t667 - t690, t606 * t667 - t658 * t671, -qJDD(2) * t671 + t631 * t667, pkin(5) * t581 + t564 * t671 + t571 * t667, pkin(5) * t582 + t565 * t671 + t572 * t667, pkin(5) * t595 + t559 * t667, pkin(5) * t535 - (-pkin(1) * t671 - pkin(6) * t667) * t559, t490 * t667 - t703, t453 * t667 + t588 * t671, t507 * t667 + t546 * t671, t489 * t667 + t703, t508 * t667 - t543 * t671, t667 * t523 - t671 * t708, pkin(5) * t462 + t411 * t667 + t430 * t671, pkin(5) * t467 + t414 * t667 + t439 * t671, pkin(5) * t436 + t355 * t667 + t415 * t671, pkin(5) * t410 + t356 * t667 + t384 * t671, t405, t362, t378, t404, t379, t418, t320 * t667 + t347 * t671 + t369, t321 * t667 + t349 * t671 + t373, t318 * t667 + t333 * t671 + t358, pkin(5) * t329 + t311 * t667 + t319 * t671, t405, t362, t378, t404, t379, t418, t314 * t667 + t337 * t671 + t369, t315 * t667 + t339 * t671 + t373, t313 * t667 + t325 * t671 + t358, pkin(5) * t317 + t308 * t667 + t309 * t671; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t645, t646, 0, 0, (t635 + t698) * t666, t634 * t670 + t637 * t666, t647 * t670 + t725, (t636 - t699) * t670, t649 * t666 + t723, 0, pkin(1) * t637 + pkin(6) * t607 + t726, -pkin(1) * t634 + pkin(6) * t609 - t727, pkin(1) * t641 + pkin(6) * t638 + t560, pkin(1) * t628 + pkin(6) * t560, t538 * t670 + t539 * t666, t497 * t670 + t499 * t666, t549 * t670 + t551 * t666, t536 * t670 + t537 * t666, t550 * t670 + t552 * t666, t573 * t670 + t574 * t666, -pkin(1) * t541 + pkin(6) * t488 + t468 * t670 + t509 * t666, -pkin(1) * t762 + pkin(6) * t502 + t475 * t670 + t516 * t666, -pkin(1) * t568 + pkin(6) * t454 + t417 * t670 + t425 * t666, pkin(1) * t569 + pkin(6) * t413 - pkin(7) * t741 + t455 * t670, t422, t388, t397, t421, t398, t446, t348 * t670 + t351 * t666 + t719, t350 * t670 + t354 * t666 + t718, t338 * t670 + t344 * t666 + t720, -pkin(1) * t382 + pkin(6) * t341 + t324 * t670 + t331 * t666, t422, t388, t397, t421, t398, t446, t332 * t670 + t335 * t666 + t719, t334 * t670 + t336 * t666 + t718, t326 * t670 + t330 * t666 + t720, -pkin(1) * t352 + pkin(6) * t323 + t310 * t670 + t312 * t666;];
tauB_reg = t1;
