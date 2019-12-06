% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PPPRR2
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
%   pkin=[a2,a3,a4,a5,d4,d5,theta1,theta2,theta3]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 14:59
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PPPRR2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPPRR2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPPRR2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PPPRR2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPPRR2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPPRR2_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 14:59:45
% EndTime: 2019-12-05 14:59:51
% DurationCPUTime: 5.41s
% Computational Cost: add. (17892->409), mult. (28880->586), div. (0->0), fcn. (23388->10), ass. (0->275)
t561 = cos(qJ(4));
t563 = qJD(4) ^ 2;
t559 = sin(qJ(4));
t595 = t559 * qJDD(4);
t524 = t561 * t563 + t595;
t552 = sin(pkin(8));
t554 = cos(pkin(9));
t594 = t561 * qJDD(4);
t525 = t559 * t563 - t594;
t555 = cos(pkin(8));
t613 = t555 * t525;
t486 = -t552 * t524 + t554 * t613;
t553 = sin(pkin(7));
t551 = sin(pkin(9));
t556 = cos(pkin(7));
t627 = t551 * t556;
t646 = t553 * t486 - t525 * t627;
t628 = t551 * t553;
t645 = t556 * t486 + t525 * t628;
t601 = g(3) - qJDD(1);
t644 = t553 * t601;
t643 = t556 * t601;
t529 = t556 * g(1) + t553 * g(2);
t512 = -t555 * t529 - t552 * t601;
t528 = t553 * g(1) - t556 * g(2);
t522 = -qJDD(2) + t528;
t474 = t554 * t512 - t551 * t522;
t511 = -t552 * t529 + t555 * t601;
t506 = qJDD(3) + t511;
t443 = t561 * t474 + t559 * t506;
t431 = -t563 * pkin(4) + qJDD(4) * pkin(6) + t443;
t473 = t551 * t512 + t554 * t522;
t558 = sin(qJ(5));
t560 = cos(qJ(5));
t407 = t558 * t431 - t560 * t473;
t408 = t560 * t431 + t558 * t473;
t384 = t558 * t407 + t560 * t408;
t442 = t559 * t474 - t561 * t506;
t430 = -qJDD(4) * pkin(4) - t563 * pkin(6) + t442;
t369 = t561 * t384 + t559 * t430;
t383 = t560 * t407 - t558 * t408;
t642 = (pkin(4) * t561 + pkin(6) * t559 + pkin(3)) * t383 + pkin(5) * t369;
t576 = t559 * t442 + t561 * t443;
t633 = t551 * t473;
t389 = t554 * t576 + t633;
t398 = t561 * t442 - t559 * t443;
t641 = (pkin(3) * t554 + pkin(5) * t551 + pkin(2)) * t398 + qJ(3) * t389;
t602 = t561 * t473;
t456 = pkin(5) * t524 + t602;
t429 = pkin(3) * t524 + t443;
t587 = qJ(3) * t525 + t429;
t640 = pkin(2) * t524 + t551 * t456 + t587 * t554;
t606 = t559 * t473;
t455 = pkin(5) * t525 + t606;
t428 = pkin(3) * t525 + t442;
t588 = qJ(3) * t524 - t428;
t639 = pkin(2) * t525 + t551 * t455 - t588 * t554;
t548 = t558 ^ 2;
t549 = t560 ^ 2;
t600 = t548 + t549;
t523 = t600 * qJDD(4);
t546 = t549 * t563;
t635 = t548 * t563;
t526 = t546 + t635;
t491 = t559 * t523 + t561 * t526;
t379 = -pkin(5) * t491 + t561 * t383;
t569 = pkin(4) * t526 + pkin(6) * t523 + t384;
t374 = -pkin(3) * t491 - t569;
t492 = t561 * t523 - t559 * t526;
t589 = qJ(3) * t492 + t374;
t638 = -pkin(2) * t491 + t551 * t379 + t589 * t554;
t634 = t551 * t398;
t632 = t551 * t506;
t599 = qJD(4) * qJD(5);
t517 = t600 * t599;
t510 = t559 * qJDD(5) + t561 * t517;
t631 = t551 * t510;
t630 = t551 * t524;
t629 = t551 * t525;
t626 = t552 * t506;
t513 = t552 * t522;
t625 = t553 * t522;
t624 = t554 * t398;
t623 = t554 * t473;
t622 = t554 * t506;
t621 = t554 * t510;
t620 = t554 * t524;
t619 = t554 * t525;
t618 = t554 * t555;
t617 = t554 * t556;
t424 = -t551 * t474 + t623;
t616 = t555 * t424;
t615 = t555 * t506;
t515 = t555 * t522;
t614 = t555 * t524;
t612 = t555 * t556;
t611 = t556 * t522;
t610 = t558 * t430;
t539 = t558 * t563 * t560;
t530 = qJDD(5) + t539;
t609 = t558 * t530;
t531 = qJDD(5) - t539;
t608 = t558 * t531;
t607 = t559 * t383;
t605 = t560 * t430;
t604 = t560 * t530;
t603 = t560 * t531;
t598 = t551 * qJDD(4);
t597 = t554 * qJDD(4);
t596 = t558 * qJDD(4);
t543 = t560 * qJDD(4);
t591 = pkin(2) * t551 + pkin(5);
t590 = t558 * t599;
t542 = t560 * t599;
t586 = t552 * t511 + t555 * t512;
t585 = -t553 * t528 - t556 * t529;
t584 = t559 * t539;
t583 = t561 * t539;
t582 = -pkin(3) * t473 + pkin(5) * t576;
t581 = -pkin(4) * t430 + pkin(6) * t384;
t575 = t554 * t474 + t633;
t580 = -pkin(2) * t506 + qJ(3) * t575;
t463 = t555 * t511 - t552 * t512;
t574 = t556 * t528 - t553 * t529;
t483 = t552 * t619 + t614;
t562 = qJD(5) ^ 2;
t536 = -t546 - t562;
t503 = t560 * t536 - t609;
t521 = t543 - 0.2e1 * t590;
t571 = pkin(4) * t521 + pkin(6) * t503 - t605;
t534 = -t562 - t635;
t505 = -t558 * t534 - t603;
t518 = 0.2e1 * t542 + t596;
t570 = -pkin(4) * t518 + pkin(6) * t505 + t610;
t499 = t558 * t536 + t604;
t394 = -pkin(4) * t499 + t407;
t419 = -pkin(6) * t499 + t610;
t471 = t561 * t503 - t559 * t521;
t568 = -pkin(3) * t499 + pkin(5) * t471 + t561 * t394 + t559 * t419;
t501 = t560 * t534 - t608;
t395 = -pkin(4) * t501 + t408;
t420 = -pkin(6) * t501 + t605;
t472 = t561 * t505 + t559 * t518;
t567 = -pkin(3) * t501 + pkin(5) * t472 + t561 * t395 + t559 * t420;
t368 = t559 * t384 - t561 * t430;
t351 = -pkin(5) * t368 - (pkin(4) * t559 - pkin(6) * t561) * t383;
t355 = -pkin(3) * t368 - t581;
t358 = t554 * t369 - t383 * t551;
t566 = -pkin(2) * t368 + qJ(3) * t358 + t551 * t351 + t554 * t355;
t469 = t559 * t503 + t561 * t521;
t372 = -pkin(5) * t469 - t559 * t394 + t561 * t419;
t391 = -pkin(3) * t469 - t571;
t434 = t554 * t471 + t551 * t499;
t565 = -pkin(2) * t469 + qJ(3) * t434 + t551 * t372 + t554 * t391;
t470 = t559 * t505 - t561 * t518;
t373 = -pkin(5) * t470 - t559 * t395 + t561 * t420;
t390 = -pkin(3) * t470 - t570;
t435 = t554 * t472 + t551 * t501;
t564 = -pkin(2) * t470 + qJ(3) * t435 + t551 * t373 + t554 * t390;
t535 = t546 - t562;
t533 = t562 - t635;
t532 = t552 * t598;
t527 = -t546 + t635;
t520 = t543 - t590;
t519 = t542 + t596;
t509 = t560 * t519 - t548 * t599;
t508 = -t561 * qJDD(5) + t559 * t517;
t507 = -t558 * t520 - t549 * t599;
t504 = -t558 * t533 + t604;
t502 = t560 * t535 - t608;
t500 = t560 * t533 + t609;
t498 = t558 * t535 + t603;
t497 = (t519 + t542) * t558;
t496 = (-t520 + t590) * t560;
t490 = -t558 * t518 + t560 * t521;
t489 = t560 * t518 + t558 * t521;
t488 = -t552 * t525 - t554 * t614;
t485 = -t552 * t620 + t613;
t482 = t561 * t509 - t584;
t481 = t561 * t507 + t584;
t480 = t559 * t509 + t583;
t479 = t559 * t507 - t583;
t478 = t561 * t504 + t558 * t595;
t477 = t561 * t502 + t559 * t543;
t476 = t559 * t504 - t558 * t594;
t475 = t559 * t502 - t560 * t594;
t466 = t561 * t490 + t559 * t527;
t465 = t559 * t490 - t561 * t527;
t460 = t556 * t488 - t524 * t628;
t459 = t553 * t488 + t524 * t627;
t458 = t552 * t508 + t510 * t618;
t457 = -t555 * t508 + t552 * t621;
t454 = pkin(1) * t522 + qJ(2) * t586;
t453 = t552 * t491 + t492 * t618;
t452 = t552 * t554 * t492 - t555 * t491;
t451 = t554 * t482 + t551 * t497;
t450 = t554 * t481 - t551 * t496;
t449 = t551 * t482 - t554 * t497;
t448 = t551 * t481 + t554 * t496;
t447 = t554 * t478 + t551 * t500;
t446 = t554 * t477 + t551 * t498;
t445 = t551 * t478 - t554 * t500;
t444 = t551 * t477 - t554 * t498;
t441 = t591 * t524 + t602;
t440 = -t591 * t525 - t606;
t439 = -t552 * t474 + t554 * t615;
t438 = -t552 * t473 + t551 * t615;
t437 = t555 * t474 + t552 * t622;
t436 = t555 * t473 + t551 * t626;
t433 = t551 * t472 - t554 * t501;
t432 = t551 * t471 - t554 * t499;
t427 = t554 * t466 + t551 * t489;
t426 = t551 * t466 - t554 * t489;
t421 = t552 * t424;
t418 = t555 * t451 + t552 * t480;
t417 = t555 * t450 + t552 * t479;
t416 = t552 * t451 - t555 * t480;
t415 = t552 * t450 - t555 * t479;
t414 = t555 * t447 + t552 * t476;
t413 = t555 * t446 + t552 * t475;
t412 = t552 * t447 - t555 * t476;
t411 = t552 * t446 - t555 * t475;
t410 = t555 * t575 + t626;
t409 = t552 * t575 - t615;
t405 = t555 * t435 + t552 * t470;
t404 = t555 * t434 + t552 * t469;
t403 = t552 * t435 - t555 * t470;
t402 = t552 * t434 - t555 * t469;
t401 = t555 * t427 + t552 * t465;
t400 = t552 * t427 - t555 * t465;
t393 = t554 * t456 - t587 * t551;
t392 = t554 * t455 + t588 * t551;
t388 = t551 * t576 - t623;
t387 = -pkin(1) * t483 - t640;
t386 = -pkin(1) * t485 - t639;
t385 = -pkin(1) * t409 - t580;
t381 = -qJ(2) * t483 + t555 * t393 - t552 * t440;
t380 = -qJ(2) * t485 + t555 * t392 - t552 * t441;
t378 = -pkin(1) * t629 + qJ(2) * t486 + t552 * t393 + t555 * t440;
t377 = pkin(1) * t630 + qJ(2) * t488 + t552 * t392 + t555 * t441;
t376 = t398 * t618 + t552 * t576;
t375 = t552 * t624 - t555 * t576;
t371 = -qJ(2) * t409 - (pkin(2) * t552 - qJ(3) * t555) * t424;
t370 = -t591 * t492 - t607;
t367 = t555 * t389 - t398 * t552;
t366 = t552 * t389 + t398 * t555;
t365 = -pkin(2) * t388 - t582;
t364 = qJ(2) * t410 - (-pkin(2) * t555 - qJ(3) * t552 - pkin(1)) * t424;
t363 = -pkin(2) * t433 - t567;
t362 = -pkin(2) * t432 - t568;
t361 = -qJ(3) * t388 - (pkin(3) * t551 - pkin(5) * t554) * t398;
t360 = -qJ(3) * t433 + t554 * t373 - t551 * t390;
t359 = -qJ(3) * t432 + t554 * t372 - t551 * t391;
t357 = t551 * t369 + t383 * t554;
t356 = t554 * t379 - t589 * t551;
t354 = -pkin(1) * t403 - t564;
t353 = -pkin(1) * t402 - t565;
t352 = -pkin(1) * t452 - t638;
t350 = t555 * t358 + t552 * t368;
t349 = t552 * t358 - t555 * t368;
t348 = -pkin(1) * t366 - t641;
t347 = -qJ(2) * t452 + t555 * t356 - t552 * t370;
t346 = -pkin(1) * t551 * t492 + qJ(2) * t453 + t552 * t356 + t555 * t370;
t345 = -qJ(2) * t403 + t555 * t360 - t552 * t363;
t344 = -qJ(2) * t402 + t555 * t359 - t552 * t362;
t343 = -pkin(1) * t433 + qJ(2) * t405 + t552 * t360 + t555 * t363;
t342 = -pkin(1) * t432 + qJ(2) * t404 + t552 * t359 + t555 * t362;
t341 = -qJ(2) * t366 + t555 * t361 - t552 * t365;
t340 = -pkin(1) * t388 + qJ(2) * t367 + t552 * t361 + t555 * t365;
t339 = -pkin(2) * t357 - t642;
t338 = -qJ(3) * t357 + t554 * t351 - t551 * t355;
t337 = -pkin(1) * t349 - t566;
t336 = -qJ(2) * t349 + t555 * t338 - t552 * t339;
t335 = -pkin(1) * t357 + qJ(2) * t350 + t552 * t338 + t555 * t339;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t644, -t643, -t574, -qJ(1) * t574, 0, 0, 0, 0, 0, 0, -t553 * t511 - t552 * t611, -t553 * t512 - t555 * t611, t556 * t463, -qJ(1) * (t553 * t586 + t611) - (t553 * pkin(1) - t556 * qJ(2)) * t463, 0, 0, 0, 0, 0, 0, t556 * t438 - t553 * t622, t556 * t439 + t506 * t628, t424 * t612 + t553 * t575, t556 * t371 - t553 * t385 - qJ(1) * (t553 * t410 + t424 * t556), 0, 0, -t645, 0, t460, (t551 * t612 - t553 * t554) * qJDD(4), -qJ(1) * t459 + t556 * t380 - t553 * t386, -qJ(1) * t646 + t556 * t381 - t553 * t387, t556 * t376 + t398 * t628, t556 * t341 - t553 * t348 - qJ(1) * (t553 * t367 - t556 * t388), t556 * t418 + t553 * t449, t556 * t401 + t553 * t426, t556 * t414 + t553 * t445, t556 * t417 + t553 * t448, t556 * t413 + t553 * t444, t556 * t458 + t510 * t628, t556 * t344 - t553 * t353 - qJ(1) * (t553 * t404 - t556 * t432), t556 * t345 - t553 * t354 - qJ(1) * (t553 * t405 - t556 * t433), t556 * t347 - t553 * t352 - qJ(1) * (t553 * t453 - t492 * t627), t556 * t336 - t553 * t337 - qJ(1) * (t553 * t350 - t556 * t357); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t643, -t644, t585, qJ(1) * t585, 0, 0, 0, 0, 0, 0, t556 * t511 - t552 * t625, t556 * t512 - t515 * t553, t553 * t463, qJ(1) * (t556 * t586 - t625) - (-t556 * pkin(1) - t553 * qJ(2)) * t463, 0, 0, 0, 0, 0, 0, t553 * t438 + t506 * t617, t553 * t439 - t506 * t627, t553 * t616 - t556 * t575, t553 * t371 + t556 * t385 + qJ(1) * (t556 * t410 - t424 * t553), 0, 0, -t646, 0, t459, (t555 * t628 + t617) * qJDD(4), qJ(1) * t460 + t553 * t380 + t556 * t386, qJ(1) * t645 + t553 * t381 + t556 * t387, t553 * t376 - t398 * t627, t553 * t341 + t556 * t348 + qJ(1) * (t556 * t367 + t553 * t388), t553 * t418 - t556 * t449, t553 * t401 - t556 * t426, t553 * t414 - t556 * t445, t553 * t417 - t556 * t448, t553 * t413 - t556 * t444, t553 * t458 - t510 * t627, t553 * t344 + t556 * t353 + qJ(1) * (t556 * t404 + t553 * t432), t553 * t345 + t556 * t354 + qJ(1) * (t556 * t405 + t553 * t433), t553 * t347 + t556 * t352 + qJ(1) * (t556 * t453 + t492 * t628), t553 * t336 + t556 * t337 + qJ(1) * (t556 * t350 + t553 * t357); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t528, t529, 0, 0, 0, 0, 0, 0, 0, 0, t515, -t513, t586, t454, 0, 0, 0, 0, 0, 0, t436, t437, t421, t364, 0, 0, -t483, 0, t485, t532, t377, t378, t375, t340, t416, t400, t412, t415, t411, t457, t342, t343, t346, t335; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t601, -t528, 0, 0, 0, 0, 0, 0, 0, -t513, -t515, t463, qJ(2) * t463, 0, 0, 0, 0, 0, 0, t438, t439, t616, t371, 0, 0, -t486, 0, t488, t555 * t598, t380, t381, t376, t341, t418, t401, t414, t417, t413, t458, t344, t345, t347, t336; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t601, 0, -t529, 0, 0, 0, 0, 0, 0, 0, t511, t512, 0, pkin(1) * t463, 0, 0, 0, 0, 0, 0, t622, -t632, -t575, t385, 0, 0, t629, 0, t630, t597, t386, t387, -t634, t348, -t449, -t426, -t445, -t448, -t444, -t631, t353, t354, t352, t337; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t528, t529, 0, 0, 0, 0, 0, 0, 0, 0, t515, -t513, t586, t454, 0, 0, 0, 0, 0, 0, t436, t437, t421, t364, 0, 0, -t483, 0, t485, t532, t377, t378, t375, t340, t416, t400, t412, t415, t411, t457, t342, t343, t346, t335; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t522, t511, 0, 0, 0, 0, 0, 0, 0, t632, t622, t424, qJ(3) * t424, 0, 0, -t619, 0, -t620, t598, t392, t393, t624, t361, t451, t427, t447, t450, t446, t621, t359, t360, t356, t338; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t522, 0, t512, 0, 0, 0, 0, 0, 0, 0, t473, t474, 0, pkin(2) * t424, 0, 0, -t524, 0, t525, 0, t441, t440, -t576, t365, -t480, -t465, -t476, -t479, -t475, -t508, t362, t363, t370, t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t511, -t512, 0, 0, 0, 0, 0, 0, 0, 0, -t622, t632, t575, t580, 0, 0, -t629, 0, -t630, -t597, t639, t640, t634, t641, t449, t426, t445, t448, t444, t631, t565, t564, t638, t566; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t506, t473, 0, 0, 0, -t525, 0, -t524, 0, t455, t456, t398, pkin(5) * t398, t482, t466, t478, t481, t477, t510, t372, t373, t379, t351; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t506, 0, t474, 0, 0, 0, 0, 0, 0, -qJDD(4), t428, t429, 0, pkin(3) * t398, -t497, -t489, -t500, t496, -t498, 0, t391, t390, t374, t355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t473, -t474, 0, 0, 0, 0, t524, 0, -t525, 0, -t456, t455, t576, t582, t480, t465, t476, t479, t475, t508, t568, t567, pkin(5) * t492 + t607, t642; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(4), 0, -t563, 0, 0, t473, t442, 0, t509, t490, t504, t507, t502, t517, t419, t420, t383, pkin(6) * t383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t563, 0, qJDD(4), 0, -t473, 0, t443, 0, t539, -t527, -t596, -t539, -t543, -qJDD(5), t394, t395, 0, pkin(4) * t383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(4), -t442, -t443, 0, 0, t497, t489, t500, -t496, t498, 0, t571, t570, t569, t581; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t519, t521, t530, -t542, t535, t542, 0, t430, t407, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t590, t518, t533, t520, t531, -t590, -t430, 0, t408, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t539, t527, t596, t539, t543, qJDD(5), -t407, -t408, 0, 0;];
m_new_reg = t1;