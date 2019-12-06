% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRPRR5
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
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:34
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRPRR5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR5_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR5_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRR5_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR5_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:34:13
% EndTime: 2019-12-05 18:34:28
% DurationCPUTime: 14.49s
% Computational Cost: add. (78125->556), mult. (109665->855), div. (0->0), fcn. (77666->10), ass. (0->380)
t645 = cos(qJ(2));
t676 = (qJD(1) + qJD(2));
t674 = t676 ^ 2;
t635 = qJDD(1) + qJDD(2);
t641 = sin(qJ(2));
t689 = t641 * t635;
t612 = t645 * t674 + t689;
t595 = pkin(6) * t612 - t645 * g(1);
t642 = sin(qJ(1));
t646 = cos(qJ(1));
t664 = t641 * t674;
t681 = t645 * t635;
t615 = t664 - t681;
t712 = t642 * t612 + t646 * t615;
t715 = pkin(6) * t615 - t641 * g(1);
t724 = pkin(5) * t712 + t642 * t595 + t646 * t715;
t567 = t646 * t612 - t642 * t615;
t723 = pkin(5) * t567 + t646 * t595 - t642 * t715;
t623 = t642 * g(2) - t646 * g(3);
t648 = qJD(1) ^ 2;
t617 = -t648 * pkin(1) + t623;
t624 = t646 * g(2) + t642 * g(3);
t654 = qJDD(1) * pkin(1) + t624;
t579 = t645 * t617 + t641 * t654;
t716 = -pkin(2) * t674 + t635 * qJ(3) + (2 * qJD(3) * t676) + t579;
t578 = t641 * t617 - t645 * t654;
t666 = t641 * t578 + t645 * t579;
t528 = t645 * t578 - t641 * t579;
t680 = t646 * t528;
t475 = -t642 * t666 + t680;
t688 = t642 * t528;
t476 = t646 * t666 + t688;
t639 = sin(qJ(5));
t637 = sin(pkin(9));
t638 = cos(pkin(9));
t644 = cos(qJ(4));
t663 = t644 * t676;
t640 = sin(qJ(4));
t665 = t640 * t676;
t599 = t637 * t665 - t638 * t663;
t601 = t637 * t663 + t638 * t665;
t643 = cos(qJ(5));
t545 = t643 * t599 + t639 * t601;
t547 = -t639 * t599 + t643 * t601;
t497 = t547 * t545;
t675 = qJDD(4) + qJDD(5);
t708 = -t497 + t675;
t720 = t639 * t708;
t562 = t601 * t599;
t706 = qJDD(4) - t562;
t719 = t640 * t706;
t718 = t643 * t708;
t717 = t644 * t706;
t651 = t638 ^ 2;
t630 = t651 * t674;
t649 = t637 ^ 2;
t662 = t649 * t674;
t610 = t662 + t630;
t603 = t610 * t638;
t669 = t638 * t681;
t574 = -t641 * t603 + t669;
t576 = t645 * t603 + t638 * t689;
t714 = t646 * t574 - t642 * t576;
t713 = t642 * t574 + t646 * t576;
t709 = (t644 * t637 + t640 * t638) * t635;
t636 = qJD(4) + qJD(5);
t540 = t636 * t545;
t701 = t635 * t638;
t596 = t640 * t637 * t635 - t644 * t701;
t678 = t601 * qJD(4);
t557 = -t596 - t678;
t679 = t599 * qJD(4);
t559 = t709 - t679;
t653 = t545 * qJD(5) - t639 * t557 - t643 * t559;
t707 = -t540 - t653;
t667 = -t643 * t557 + t639 * t559;
t440 = (qJD(5) - t636) * t547 + t667;
t543 = t545 ^ 2;
t544 = t547 ^ 2;
t705 = t599 ^ 2;
t598 = t601 ^ 2;
t633 = t636 ^ 2;
t631 = t635 * pkin(2);
t704 = t638 * g(1);
t700 = t636 * t639;
t699 = t636 * t643;
t509 = -t704 + (pkin(3) * t638 * t674 - t635 * pkin(7) - t716) * t637;
t535 = -t637 * g(1) + t716 * t638;
t510 = -pkin(3) * t630 + pkin(7) * t701 + t535;
t462 = -t644 * t509 + t640 * t510;
t463 = t640 * t509 + t644 * t510;
t404 = -t644 * t462 + t640 * t463;
t698 = t637 * t404;
t697 = t637 * t638;
t696 = t638 * t404;
t551 = -t674 * qJ(3) + qJDD(3) + t578 - t631;
t530 = -pkin(3) * t701 - t610 * pkin(7) + t551;
t584 = qJD(4) * pkin(4) - t601 * pkin(8);
t453 = -t557 * pkin(4) - t705 * pkin(8) + t601 * t584 + t530;
t695 = t639 * t453;
t494 = t497 + t675;
t694 = t639 * t494;
t413 = (-t559 - t679) * pkin(8) + t706 * pkin(4) - t462;
t417 = -t705 * pkin(4) + t557 * pkin(8) - qJD(4) * t584 + t463;
t370 = -t643 * t413 + t639 * t417;
t371 = t639 * t413 + t643 * t417;
t334 = -t643 * t370 + t639 * t371;
t693 = t640 * t334;
t692 = t640 * t530;
t554 = qJDD(4) + t562;
t691 = t640 * t554;
t690 = t641 * t551;
t687 = t643 * t453;
t686 = t643 * t494;
t685 = t644 * t334;
t684 = t644 * t530;
t683 = t644 * t554;
t682 = t645 * t551;
t673 = t641 * t497;
t672 = t641 * t562;
t671 = t645 * t497;
t670 = t645 * t562;
t668 = -t551 + t631;
t335 = t639 * t370 + t643 * t371;
t405 = t640 * t462 + t644 * t463;
t534 = t716 * t637 + t704;
t486 = t637 * t534 + t638 * t535;
t618 = t642 * qJDD(1) + t646 * t648;
t659 = pkin(5) * t618 - t646 * g(1);
t485 = t638 * t534 - t637 * t535;
t580 = t612 * t697;
t581 = t637 * t669 - t664 * t697;
t658 = t646 * t580 + t642 * t581;
t657 = t642 * t580 - t646 * t581;
t583 = t646 * t623 - t642 * t624;
t582 = -t642 * t623 - t646 * t624;
t647 = qJD(4) ^ 2;
t629 = t651 * t635;
t628 = t649 * t635;
t619 = -t646 * qJDD(1) + t642 * t648;
t611 = -t662 + t630;
t606 = t629 - t628;
t605 = t629 + t628;
t604 = -pkin(5) * t619 + t642 * g(1);
t602 = t610 * t637;
t587 = -t598 - t647;
t586 = -t598 + t647;
t585 = -t647 + t705;
t575 = t645 * t602 + t637 * t689;
t572 = t641 * t602 - t637 * t681;
t566 = t645 * t606 - t641 * t611;
t565 = t645 * t605 - t641 * t610;
t564 = t641 * t606 + t645 * t611;
t563 = t641 * t605 + t645 * t610;
t560 = -t598 + t705;
t558 = t709 - 0.2e1 * t679;
t556 = t596 + 0.2e1 * t678;
t552 = -t647 - t705;
t542 = (-t599 * t644 + t601 * t640) * qJD(4);
t541 = (-t599 * t640 - t601 * t644) * qJD(4);
t538 = -t544 + t633;
t537 = t543 - t633;
t536 = -t544 - t633;
t533 = -t598 - t705;
t524 = -t642 * t572 + t646 * t575;
t522 = -t646 * t572 - t642 * t575;
t521 = t644 * t559 - t640 * t678;
t520 = t640 * t559 + t644 * t678;
t519 = -t640 * t557 + t644 * t679;
t518 = t644 * t557 + t640 * t679;
t517 = -t640 * t587 - t683;
t516 = -t640 * t586 + t717;
t515 = t644 * t585 - t691;
t514 = t644 * t587 - t691;
t513 = t644 * t586 + t719;
t512 = t640 * t585 + t683;
t511 = pkin(1) * g(1) + pkin(6) * t666;
t505 = -t642 * t563 + t646 * t565;
t504 = -t646 * t563 - t642 * t565;
t503 = -t644 * t556 - t640 * t558;
t502 = -t596 * t644 + t640 * t709;
t501 = -t640 * t556 + t644 * t558;
t500 = -t596 * t640 - t644 * t709;
t499 = t644 * t552 - t719;
t498 = t640 * t552 + t717;
t496 = -t544 + t543;
t492 = -t633 - t543;
t491 = -t637 * t541 + t638 * t542;
t490 = (-t545 * t643 + t547 * t639) * t636;
t489 = (-t545 * t639 - t547 * t643) * t636;
t488 = t641 * qJDD(4) + t645 * t491;
t487 = -t645 * qJDD(4) + t641 * t491;
t482 = -t547 * qJD(5) - t667;
t481 = -t543 - t544;
t480 = -pkin(6) * t572 - t641 * t535 + t638 * t682;
t479 = -pkin(6) * t574 - t641 * t534 + t637 * t682;
t478 = pkin(6) * t575 + t645 * t535 + t638 * t690;
t477 = -pkin(6) * t576 + t645 * t534 + t637 * t690;
t474 = -pkin(7) * t514 + t684;
t473 = -t637 * t520 + t638 * t521;
t472 = -t637 * t518 + t638 * t519;
t471 = -t637 * t514 + t638 * t517;
t470 = -t637 * t513 + t638 * t516;
t469 = -t637 * t512 + t638 * t515;
t468 = t638 * t514 + t637 * t517;
t467 = t643 * t537 - t694;
t466 = -t639 * t538 + t718;
t465 = t639 * t537 + t686;
t464 = t643 * t538 + t720;
t461 = -t639 * t536 - t686;
t460 = t643 * t536 - t694;
t458 = -pkin(7) * t498 + t692;
t457 = -pkin(6) * t563 + t645 * t485;
t456 = pkin(6) * t565 + t641 * t485;
t455 = t645 * t486 + t690;
t454 = t641 * t486 - t682;
t452 = t645 * t470 + t641 * t709;
t451 = t645 * t469 - t641 * t596;
t450 = t641 * t470 - t645 * t709;
t449 = t641 * t469 + t645 * t596;
t448 = -pkin(3) * t558 + pkin(7) * t517 + t692;
t447 = -t637 * t501 + t638 * t503;
t446 = -t637 * t500 + t638 * t502;
t445 = t638 * t500 + t637 * t502;
t444 = -t540 + t653;
t439 = (qJD(5) + t636) * t547 + t667;
t438 = -t637 * t498 + t638 * t499;
t437 = t638 * t498 + t637 * t499;
t436 = t645 * t473 + t672;
t435 = t645 * t472 - t672;
t434 = t641 * t473 - t670;
t433 = t641 * t472 + t670;
t432 = -t547 * t700 - t643 * t653;
t431 = t547 * t699 - t639 * t653;
t430 = -t639 * t482 + t545 * t699;
t429 = t643 * t482 + t545 * t700;
t428 = t645 * t471 + t641 * t558;
t427 = t641 * t471 - t645 * t558;
t426 = t643 * t492 - t720;
t425 = t639 * t492 + t718;
t424 = -pkin(3) * t556 + pkin(7) * t499 - t684;
t423 = -t640 * t489 + t644 * t490;
t422 = t644 * t489 + t640 * t490;
t421 = t645 * t447 - t641 * t560;
t420 = t641 * t447 + t645 * t560;
t419 = t645 * t438 + t641 * t556;
t418 = t641 * t438 - t645 * t556;
t415 = t645 * t446 + t641 * t533;
t414 = t641 * t446 - t645 * t533;
t410 = -pkin(2) * t445 - pkin(3) * t500;
t409 = -t640 * t465 + t644 * t467;
t408 = -t640 * t464 + t644 * t466;
t407 = t644 * t465 + t640 * t467;
t406 = t644 * t464 + t640 * t466;
t403 = -t640 * t460 + t644 * t461;
t402 = t644 * t460 + t640 * t461;
t401 = -pkin(8) * t460 + t687;
t400 = -t642 * t454 + t646 * t455;
t399 = -t646 * t454 - t642 * t455;
t398 = -pkin(8) * t425 + t695;
t397 = -pkin(2) * t468 - pkin(3) * t514 + t463;
t396 = -t440 * t643 - t639 * t444;
t395 = -t643 * t439 - t639 * t707;
t394 = -t440 * t639 + t643 * t444;
t393 = -t639 * t439 + t643 * t707;
t392 = -pkin(3) * t530 + pkin(7) * t405;
t391 = -t640 * t431 + t644 * t432;
t390 = -t640 * t429 + t644 * t430;
t389 = t644 * t431 + t640 * t432;
t388 = t644 * t429 + t640 * t430;
t387 = -t642 * t427 + t646 * t428;
t386 = -t646 * t427 - t642 * t428;
t385 = -t640 * t425 + t644 * t426;
t384 = t644 * t425 + t640 * t426;
t383 = -pkin(7) * t500 - t404;
t382 = -pkin(6) * t454 - (pkin(2) * t641 - qJ(3) * t645) * t485;
t381 = -pkin(2) * t437 - pkin(3) * t498 + t462;
t380 = -t637 * t422 + t638 * t423;
t379 = t645 * t380 + t641 * t675;
t378 = t641 * t380 - t645 * t675;
t377 = -pkin(3) * t533 + pkin(7) * t502 + t405;
t376 = -t642 * t418 + t646 * t419;
t375 = -t646 * t418 - t642 * t419;
t374 = -qJ(3) * t468 - t637 * t448 + t638 * t474;
t373 = -t642 * t414 + t646 * t415;
t372 = -t646 * t414 - t642 * t415;
t368 = -pkin(4) * t707 + pkin(8) * t461 + t695;
t367 = pkin(6) * t455 - (-pkin(2) * t645 - qJ(3) * t641 - pkin(1)) * t485;
t366 = -qJ(3) * t437 - t637 * t424 + t638 * t458;
t365 = -pkin(4) * t439 + pkin(8) * t426 - t687;
t364 = -t637 * t407 + t638 * t409;
t363 = -t637 * t406 + t638 * t408;
t362 = t638 * t405 - t698;
t361 = t637 * t405 + t696;
t360 = -t637 * t402 + t638 * t403;
t359 = t638 * t402 + t637 * t403;
t358 = t645 * t362 + t641 * t530;
t357 = t641 * t362 - t645 * t530;
t356 = -t640 * t394 + t644 * t396;
t355 = -t640 * t393 + t644 * t395;
t354 = t644 * t394 + t640 * t396;
t353 = t644 * t393 + t640 * t395;
t352 = -t637 * t389 + t638 * t391;
t351 = -t637 * t388 + t638 * t390;
t350 = -t637 * t384 + t638 * t385;
t349 = t638 * t384 + t637 * t385;
t348 = t645 * t364 - t641 * t440;
t347 = t645 * t363 - t641 * t444;
t346 = t641 * t364 + t645 * t440;
t345 = t641 * t363 + t645 * t444;
t344 = t645 * t360 + t641 * t707;
t343 = t641 * t360 - t645 * t707;
t342 = t645 * t352 + t673;
t341 = t645 * t351 - t673;
t340 = t641 * t352 - t671;
t339 = t641 * t351 + t671;
t338 = -pkin(2) * t361 - pkin(3) * t404;
t337 = t645 * t350 + t641 * t439;
t336 = t641 * t350 - t645 * t439;
t333 = -pkin(6) * t427 + t645 * t374 - t641 * t397;
t332 = -qJ(3) * t445 - t637 * t377 + t638 * t383;
t331 = -pkin(7) * t402 - t640 * t368 + t644 * t401;
t330 = -pkin(4) * t453 + pkin(8) * t335;
t329 = -pkin(1) * t468 + pkin(6) * t428 + t641 * t374 + t645 * t397;
t328 = -pkin(6) * t418 + t645 * t366 - t641 * t381;
t327 = -pkin(7) * t384 - t640 * t365 + t644 * t398;
t326 = -pkin(7) * t696 - qJ(3) * t361 - t637 * t392;
t325 = -pkin(3) * t707 + pkin(7) * t403 + t644 * t368 + t640 * t401;
t324 = -pkin(8) * t394 - t334;
t323 = -pkin(1) * t437 + pkin(6) * t419 + t641 * t366 + t645 * t381;
t322 = -t642 * t357 + t646 * t358;
t321 = -t646 * t357 - t642 * t358;
t320 = -t637 * t354 + t638 * t356;
t319 = -t637 * t353 + t638 * t355;
t318 = t638 * t354 + t637 * t356;
t317 = -pkin(3) * t439 + pkin(7) * t385 + t644 * t365 + t640 * t398;
t316 = -pkin(4) * t481 + pkin(8) * t396 + t335;
t315 = -pkin(6) * t414 + t645 * t332 - t641 * t410;
t314 = t645 * t319 - t641 * t496;
t313 = t641 * t319 + t645 * t496;
t312 = -pkin(2) * t359 - pkin(3) * t402 - pkin(4) * t460 + t371;
t311 = t645 * t320 + t641 * t481;
t310 = t641 * t320 - t645 * t481;
t309 = -t642 * t343 + t646 * t344;
t308 = -t646 * t343 - t642 * t344;
t307 = -pkin(1) * t445 + pkin(6) * t415 + t641 * t332 + t645 * t410;
t306 = -pkin(2) * t349 - pkin(3) * t384 - pkin(4) * t425 + t370;
t305 = -t642 * t336 + t646 * t337;
t304 = -t646 * t336 - t642 * t337;
t303 = t644 * t335 - t693;
t302 = t640 * t335 + t685;
t301 = -pkin(2) * t318 - pkin(3) * t354 - pkin(4) * t394;
t300 = -pkin(6) * t357 + t645 * t326 - t641 * t338;
t299 = -qJ(3) * t359 - t637 * t325 + t638 * t331;
t298 = -t642 * t310 + t646 * t311;
t297 = -t646 * t310 - t642 * t311;
t296 = -pkin(1) * t361 + pkin(6) * t358 + t641 * t326 + t645 * t338;
t295 = -qJ(3) * t349 - t637 * t317 + t638 * t327;
t294 = -pkin(7) * t354 - t640 * t316 + t644 * t324;
t293 = -pkin(3) * t481 + pkin(7) * t356 + t644 * t316 + t640 * t324;
t292 = -t637 * t302 + t638 * t303;
t291 = t638 * t302 + t637 * t303;
t290 = -pkin(7) * t302 - pkin(8) * t685 - t640 * t330;
t289 = t645 * t292 + t641 * t453;
t288 = t641 * t292 - t645 * t453;
t287 = -pkin(3) * t453 + pkin(7) * t303 - pkin(8) * t693 + t644 * t330;
t286 = -pkin(6) * t343 + t645 * t299 - t641 * t312;
t285 = -pkin(1) * t359 + pkin(6) * t344 + t641 * t299 + t645 * t312;
t284 = -pkin(6) * t336 + t645 * t295 - t641 * t306;
t283 = -pkin(2) * t291 - pkin(3) * t302 - pkin(4) * t334;
t282 = -pkin(1) * t349 + pkin(6) * t337 + t641 * t295 + t645 * t306;
t281 = -t642 * t288 + t646 * t289;
t280 = -t646 * t288 - t642 * t289;
t279 = -qJ(3) * t318 - t637 * t293 + t638 * t294;
t278 = -qJ(3) * t291 - t637 * t287 + t638 * t290;
t277 = -pkin(6) * t310 + t645 * t279 - t641 * t301;
t276 = -pkin(1) * t318 + pkin(6) * t311 + t641 * t279 + t645 * t301;
t275 = -pkin(6) * t288 + t645 * t278 - t641 * t283;
t274 = -pkin(1) * t291 + pkin(6) * t289 + t641 * t278 + t645 * t283;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t485, 0, 0, 0, 0, 0, 0, t437, t468, t445, t361, 0, 0, 0, 0, 0, 0, t349, t359, t318, t291; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t619, t618, 0, t582, 0, 0, 0, 0, 0, 0, t712, t567, 0, t475, 0, 0, 0, 0, 0, 0, -t714, t522, t504, t399, 0, 0, 0, 0, 0, 0, t375, t386, t372, t321, 0, 0, 0, 0, 0, 0, t304, t308, t297, t280; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t618, t619, 0, t583, 0, 0, 0, 0, 0, 0, -t567, t712, 0, t476, 0, 0, 0, 0, 0, 0, -t713, t524, t505, t400, 0, 0, 0, 0, 0, 0, t376, t387, t373, t322, 0, 0, 0, 0, 0, 0, t305, t309, t298, t281; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t624, -t623, 0, 0, 0, 0, 0, 0, 0, t635, -pkin(1) * t615 - t578, -pkin(1) * t612 - t579, 0, -pkin(1) * t528, t628, 0.2e1 * t635 * t697, 0, t629, 0, 0, pkin(1) * t574 - qJ(3) * t603 + t638 * t668, pkin(1) * t572 + qJ(3) * t602 - t637 * t668, pkin(1) * t563 + pkin(2) * t610 + qJ(3) * t605 + t486, pkin(1) * t454 - pkin(2) * t551 + qJ(3) * t486, t638 * t520 + t637 * t521, t638 * t501 + t637 * t503, t638 * t513 + t637 * t516, t638 * t518 + t637 * t519, t638 * t512 + t637 * t515, t638 * t541 + t637 * t542, pkin(1) * t418 - pkin(2) * t556 + qJ(3) * t438 + t638 * t424 + t637 * t458, pkin(1) * t427 - pkin(2) * t558 + qJ(3) * t471 + t638 * t448 + t637 * t474, pkin(1) * t414 - pkin(2) * t533 + qJ(3) * t446 + t638 * t377 + t637 * t383, pkin(1) * t357 - pkin(2) * t530 - pkin(7) * t698 + qJ(3) * t362 + t638 * t392, t638 * t389 + t637 * t391, t638 * t353 + t637 * t355, t638 * t406 + t637 * t408, t638 * t388 + t637 * t390, t638 * t407 + t637 * t409, t638 * t422 + t637 * t423, pkin(1) * t336 - pkin(2) * t439 + qJ(3) * t350 + t638 * t317 + t637 * t327, pkin(1) * t343 - pkin(2) * t707 + qJ(3) * t360 + t638 * t325 + t637 * t331, pkin(1) * t310 - pkin(2) * t481 + qJ(3) * t320 + t638 * t293 + t637 * t294, pkin(1) * t288 - pkin(2) * t453 + qJ(3) * t292 + t638 * t287 + t637 * t290; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t618, 0, t619, 0, t659, t604, -t583, -pkin(5) * t583, 0, 0, -t567, 0, t712, 0, t723, -t724, -t476, -pkin(5) * t476 - pkin(6) * t688 - t646 * t511, -t658, -t646 * t564 - t642 * t566, t522, t658, t714, 0, pkin(5) * t713 - t646 * t477 - t642 * t479, -pkin(5) * t524 - t646 * t478 - t642 * t480, -pkin(5) * t505 - t646 * t456 - t642 * t457, -pkin(5) * t400 - t646 * t367 - t642 * t382, -t646 * t434 - t642 * t436, -t646 * t420 - t642 * t421, -t646 * t450 - t642 * t452, -t646 * t433 - t642 * t435, -t646 * t449 - t642 * t451, -t646 * t487 - t642 * t488, -pkin(5) * t376 - t646 * t323 - t642 * t328, -pkin(5) * t387 - t646 * t329 - t642 * t333, -pkin(5) * t373 - t646 * t307 - t642 * t315, -pkin(5) * t322 - t646 * t296 - t642 * t300, -t646 * t340 - t642 * t342, -t646 * t313 - t642 * t314, -t646 * t345 - t642 * t347, -t646 * t339 - t642 * t341, -t646 * t346 - t642 * t348, -t646 * t378 - t642 * t379, -pkin(5) * t305 - t646 * t282 - t642 * t284, -pkin(5) * t309 - t646 * t285 - t642 * t286, -pkin(5) * t298 - t646 * t276 - t642 * t277, -pkin(5) * t281 - t646 * t274 - t642 * t275; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t619, 0, -t618, 0, -t604, t659, t582, pkin(5) * t582, 0, 0, -t712, 0, -t567, 0, t724, t723, t475, pkin(5) * t475 + pkin(6) * t680 - t642 * t511, -t657, -t642 * t564 + t646 * t566, t524, t657, t713, 0, -pkin(5) * t714 - t642 * t477 + t646 * t479, pkin(5) * t522 - t642 * t478 + t646 * t480, pkin(5) * t504 - t642 * t456 + t646 * t457, pkin(5) * t399 - t642 * t367 + t646 * t382, -t642 * t434 + t646 * t436, -t642 * t420 + t646 * t421, -t642 * t450 + t646 * t452, -t642 * t433 + t646 * t435, -t642 * t449 + t646 * t451, -t642 * t487 + t646 * t488, pkin(5) * t375 - t642 * t323 + t646 * t328, pkin(5) * t386 - t642 * t329 + t646 * t333, pkin(5) * t372 - t642 * t307 + t646 * t315, pkin(5) * t321 - t642 * t296 + t646 * t300, -t642 * t340 + t646 * t342, -t642 * t313 + t646 * t314, -t642 * t345 + t646 * t347, -t642 * t339 + t646 * t341, -t642 * t346 + t646 * t348, -t642 * t378 + t646 * t379, pkin(5) * t304 - t642 * t282 + t646 * t284, pkin(5) * t308 - t642 * t285 + t646 * t286, pkin(5) * t297 - t642 * t276 + t646 * t277, pkin(5) * t280 - t642 * t274 + t646 * t275;];
tauB_reg = t1;