% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PPRRR5
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
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:35
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PPRRR5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR5_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR5_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PPRRR5_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRRR5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PPRRR5_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:35:52
% EndTime: 2019-12-31 17:35:57
% DurationCPUTime: 5.22s
% Computational Cost: add. (14564->372), mult. (21078->432), div. (0->0), fcn. (14826->8), ass. (0->220)
t536 = qJD(3) + qJD(4);
t534 = t536 ^ 2;
t546 = cos(qJ(4));
t535 = qJDD(3) + qJDD(4);
t543 = sin(qJ(4));
t590 = t543 * t535;
t499 = t534 * t546 + t590;
t585 = t546 * t535;
t502 = t534 * t543 - t585;
t544 = sin(qJ(3));
t547 = cos(qJ(3));
t448 = t499 * t547 - t502 * t544;
t539 = g(3) - qJDD(1);
t482 = pkin(6) * t499 + t539 * t546;
t618 = pkin(6) * t502 + t539 * t543;
t402 = pkin(5) * t448 + t482 * t547 - t544 * t618;
t540 = sin(pkin(8));
t541 = cos(pkin(8));
t453 = t499 * t544 + t502 * t547;
t615 = t448 * t540 - t453 * t541;
t623 = pkin(5) * t453 + t482 * t544 + t547 * t618;
t633 = -qJ(1) * t615 + t540 * t402 - t541 * t623;
t624 = t448 * t541 + t453 * t540;
t632 = -qJ(1) * t624 + t541 * t402 + t540 * t623;
t516 = g(1) * t540 - g(2) * t541;
t513 = -qJDD(2) + t516;
t517 = g(1) * t541 + g(2) * t540;
t474 = -t513 * t544 - t517 * t547;
t549 = qJD(3) ^ 2;
t458 = -pkin(3) * t549 + t474;
t473 = t547 * t513 - t544 * t517;
t552 = qJDD(3) * pkin(3) - t473;
t421 = t543 * t458 - t546 * t552;
t422 = t458 * t546 + t543 * t552;
t575 = t421 * t543 + t422 * t546;
t381 = t421 * t546 - t422 * t543;
t583 = t547 * t381;
t361 = -t544 * t575 + t583;
t588 = t544 * t381;
t620 = t547 * t575 + t588;
t630 = t361 * t540 - t541 * t620;
t629 = t361 * t541 + t540 * t620;
t514 = qJDD(3) * t544 + t547 * t549;
t487 = pkin(5) * t514 + t539 * t547;
t515 = -qJDD(3) * t547 + t544 * t549;
t565 = pkin(5) * t515 + t539 * t544;
t605 = t514 * t541 + t515 * t540;
t619 = -qJ(1) * t605 + t541 * t487 + t540 * t565;
t427 = t473 * t547 - t474 * t544;
t564 = t473 * t544 + t474 * t547;
t617 = t427 * t540 - t541 * t564;
t616 = t427 * t541 + t540 * t564;
t463 = -t514 * t540 + t515 * t541;
t614 = qJ(1) * t463 + t540 * t487 - t541 * t565;
t415 = -pkin(4) * t534 + pkin(7) * t535 + t422;
t542 = sin(qJ(5));
t545 = cos(qJ(5));
t407 = t415 * t542 - t539 * t545;
t408 = t415 * t545 + t539 * t542;
t377 = t407 * t542 + t408 * t545;
t603 = pkin(1) + pkin(2);
t602 = pkin(1) * t539;
t601 = pkin(3) * t381;
t600 = pkin(5) * t427;
t598 = qJ(2) * t539;
t537 = t542 ^ 2;
t597 = t537 * t534;
t594 = t540 * t539;
t526 = t541 * t539;
t414 = -pkin(4) * t535 - pkin(7) * t534 + t421;
t409 = t542 * t414;
t522 = t542 * t534 * t545;
t511 = qJDD(5) + t522;
t593 = t542 * t511;
t512 = qJDD(5) - t522;
t592 = t542 * t512;
t591 = t542 * t535;
t410 = t545 * t414;
t587 = t545 * t511;
t586 = t545 * t512;
t525 = t545 * t535;
t582 = -pkin(4) * t414 + pkin(7) * t377;
t538 = t545 ^ 2;
t581 = t537 + t538;
t580 = qJD(5) * t536;
t548 = qJD(5) ^ 2;
t519 = -t548 - t597;
t472 = -t519 * t542 - t586;
t524 = t545 * t580;
t493 = 0.2e1 * t524 + t591;
t579 = -pkin(4) * t493 + pkin(7) * t472 + t409;
t527 = t538 * t534;
t521 = -t527 - t548;
t470 = t521 * t545 - t593;
t577 = t542 * t580;
t496 = t525 - 0.2e1 * t577;
t578 = pkin(4) * t496 + pkin(7) * t470 - t410;
t532 = pkin(2) * t539;
t576 = pkin(5) * t564 - t532;
t508 = t540 * t517;
t574 = t513 * t541 - t508;
t573 = t516 * t541 - t508;
t509 = t541 * t517;
t572 = -t513 * t540 - t509;
t571 = -t516 * t540 - t509;
t570 = t543 * t522;
t569 = t546 * t522;
t498 = t581 * t535;
t504 = t527 + t597;
t568 = pkin(4) * t504 + pkin(7) * t498 + t377;
t367 = t377 * t543 - t414 * t546;
t567 = pkin(3) * t367 + t582;
t566 = -pkin(3) * t499 - t422;
t376 = t407 * t545 - t408 * t542;
t434 = t472 * t543 - t493 * t546;
t562 = pkin(3) * t434 + t579;
t433 = t470 * t543 + t496 * t546;
t561 = pkin(3) * t433 + t578;
t560 = -pkin(3) * t502 - t421;
t368 = t377 * t546 + t414 * t543;
t341 = pkin(6) * t368 - (-pkin(4) * t546 - pkin(7) * t543 - pkin(3)) * t376;
t347 = -pkin(6) * t367 - (pkin(4) * t543 - pkin(7) * t546) * t376;
t350 = t367 * t547 + t368 * t544;
t559 = -pkin(5) * t350 - t341 * t544 + t347 * t547;
t465 = t521 * t542 + t587;
t385 = -pkin(4) * t465 + t407;
t387 = -pkin(7) * t465 + t409;
t435 = t470 * t546 - t496 * t543;
t357 = -pkin(3) * t465 + pkin(6) * t435 + t385 * t546 + t387 * t543;
t365 = -pkin(6) * t433 - t385 * t543 + t387 * t546;
t389 = t433 * t547 + t435 * t544;
t558 = -pkin(5) * t389 - t357 * t544 + t365 * t547;
t467 = t519 * t545 - t592;
t386 = -pkin(4) * t467 + t408;
t388 = -pkin(7) * t467 + t410;
t436 = t472 * t546 + t493 * t543;
t358 = -pkin(3) * t467 + pkin(6) * t436 + t386 * t546 + t388 * t543;
t366 = -pkin(6) * t434 - t386 * t543 + t388 * t546;
t390 = t434 * t547 + t436 * t544;
t557 = -pkin(5) * t390 - t358 * t544 + t366 * t547;
t447 = t498 * t543 + t504 * t546;
t556 = pkin(3) * t447 + t568;
t351 = -t367 * t544 + t368 * t547;
t555 = -pkin(5) * t351 - t547 * t341 - t544 * t347;
t391 = -t433 * t544 + t435 * t547;
t554 = -pkin(5) * t391 - t547 * t357 - t544 * t365;
t392 = -t434 * t544 + t436 * t547;
t553 = -pkin(5) * t392 - t547 * t358 - t544 * t366;
t378 = -pkin(3) * t539 + pkin(6) * t575;
t551 = pkin(5) * t361 + pkin(6) * t583 - t378 * t544;
t550 = pkin(5) * t620 + pkin(6) * t588 + t378 * t547 - t532;
t520 = t527 - t548;
t518 = t548 - t597;
t505 = -t527 + t597;
t495 = t525 - t577;
t494 = t524 + t591;
t491 = t581 * t580;
t479 = pkin(1) * t513 - qJ(2) * t517;
t478 = qJDD(5) * t543 + t491 * t546;
t477 = -qJDD(5) * t546 + t491 * t543;
t476 = t494 * t545 - t537 * t580;
t475 = -t495 * t542 - t538 * t580;
t471 = -t518 * t542 + t587;
t469 = t520 * t545 - t592;
t466 = t518 * t545 + t593;
t464 = t520 * t542 + t586;
t460 = (t494 + t524) * t542;
t459 = -t495 * t545 + t524 * t542;
t451 = t498 * t546 - t504 * t543;
t446 = -t493 * t542 + t496 * t545;
t445 = t493 * t545 + t496 * t542;
t444 = t471 * t546 + t542 * t590;
t443 = t469 * t546 + t525 * t543;
t442 = t471 * t543 - t542 * t585;
t441 = t469 * t543 - t545 * t585;
t440 = t476 * t546 - t570;
t439 = t475 * t546 + t570;
t438 = t476 * t543 + t569;
t437 = t475 * t543 - t569;
t432 = -t477 * t544 + t478 * t547;
t431 = t477 * t547 + t478 * t544;
t430 = t446 * t546 + t505 * t543;
t429 = t446 * t543 - t505 * t546;
t424 = -qJ(2) * t514 + t515 * t603 + t473;
t423 = qJ(2) * t515 + t514 * t603 + t474;
t420 = t598 + t600;
t418 = -t576 + t602;
t417 = -t447 * t544 + t451 * t547;
t416 = t447 * t547 + t451 * t544;
t406 = -t442 * t544 + t444 * t547;
t405 = -t441 * t544 + t443 * t547;
t404 = t442 * t547 + t444 * t544;
t403 = t441 * t547 + t443 * t544;
t396 = -t438 * t544 + t440 * t547;
t395 = -t437 * t544 + t439 * t547;
t394 = t438 * t547 + t440 * t544;
t393 = t437 * t547 + t439 * t544;
t384 = -t429 * t544 + t430 * t547;
t383 = t429 * t547 + t430 * t544;
t373 = qJ(2) * t564 + t427 * t603;
t372 = -qJ(2) * t448 + t453 * t603 - t560;
t371 = qJ(2) * t453 + t448 * t603 - t566;
t370 = -pkin(6) * t447 + t376 * t546;
t369 = pkin(6) * t451 + t376 * t543;
t356 = qJ(2) * t417 - t416 * t603 - t556;
t355 = qJ(2) * t392 - t390 * t603 - t562;
t354 = qJ(2) * t391 - t389 * t603 - t561;
t353 = -pkin(5) * t416 - t369 * t544 + t370 * t547;
t352 = pkin(5) * t417 + t369 * t547 + t370 * t544;
t349 = t551 + t598;
t348 = -t550 + t602;
t345 = qJ(2) * t467 + t557;
t344 = qJ(2) * t465 + t558;
t343 = t467 * t603 + t553;
t342 = t465 * t603 + t554;
t340 = qJ(2) * t620 + t361 * t603 + t601;
t339 = qJ(2) * t351 - t350 * t603 - t567;
t338 = -qJ(2) * t376 + t559;
t337 = -t376 * t603 + t555;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t594, -t526, -t573, -qJ(1) * t573, 0, 0, 0, 0, 0, 0, -t594, -t574, t526, -qJ(1) * t574 + (-pkin(1) * t540 + qJ(2) * t541) * t539, 0, 0, -t463, 0, -t605, 0, -t614, t619, t616, -qJ(1) * t616 - t540 * t418 + t541 * t420, 0, 0, t615, 0, -t624, 0, -t633, t632, t629, -qJ(1) * t629 - t540 * t348 + t541 * t349, t394 * t540 + t396 * t541, t383 * t540 + t384 * t541, t404 * t540 + t406 * t541, t393 * t540 + t395 * t541, t403 * t540 + t405 * t541, t431 * t540 + t432 * t541, t541 * t344 - t540 * t342 - qJ(1) * (-t389 * t541 + t391 * t540), t541 * t345 - t540 * t343 - qJ(1) * (-t390 * t541 + t392 * t540), t541 * t353 + t540 * t352 - qJ(1) * (-t416 * t541 + t417 * t540), t541 * t338 - t540 * t337 - qJ(1) * (-t350 * t541 + t351 * t540); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t526, -t594, t571, qJ(1) * t571, 0, 0, 0, 0, 0, 0, t526, t572, t594, qJ(1) * t572 + (pkin(1) * t541 + qJ(2) * t540) * t539, 0, 0, -t605, 0, t463, 0, t619, t614, t617, -qJ(1) * t617 + t541 * t418 + t540 * t420, 0, 0, -t624, 0, -t615, 0, t632, t633, t630, -qJ(1) * t630 + t541 * t348 + t540 * t349, -t394 * t541 + t396 * t540, -t383 * t541 + t384 * t540, -t404 * t541 + t406 * t540, -t393 * t541 + t395 * t540, -t403 * t541 + t405 * t540, -t431 * t541 + t432 * t540, t540 * t344 + t541 * t342 + qJ(1) * (t389 * t540 + t391 * t541), t540 * t345 + t541 * t343 + qJ(1) * (t390 * t540 + t392 * t541), t540 * t353 - t541 * t352 + qJ(1) * (t416 * t540 + t417 * t541), t540 * t338 + t541 * t337 + qJ(1) * (t350 * t540 + t351 * t541); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t516, t517, 0, 0, 0, 0, 0, 0, 0, 0, t513, 0, -t517, t479, 0, 0, 0, 0, 0, -qJDD(3), t424, t423, 0, t373, 0, 0, 0, 0, 0, -t535, t372, t371, 0, t340, -t460, -t445, -t466, t459, -t464, 0, t354, t355, t356, t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t539, -t516, 0, 0, 0, 0, 0, 0, 0, 0, -t513, t539, t598, 0, 0, -t515, 0, -t514, 0, t565, t487, t427, t420, 0, 0, -t453, 0, -t448, 0, t623, t402, t361, t349, t396, t384, t406, t395, t405, t432, t344, t345, t353, t338; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t539, 0, -t517, 0, 0, 0, 0, 0, 0, 0, t539, -t517, 0, t602, 0, 0, -t514, 0, t515, 0, t487, -t565, -t564, t418, 0, 0, -t448, 0, t453, 0, t402, -t623, -t620, t348, -t394, -t383, -t404, -t393, -t403, -t431, t342, t343, -t352, t337; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t516, t517, 0, 0, 0, 0, 0, 0, 0, 0, t513, 0, -t517, t479, 0, 0, 0, 0, 0, -qJDD(3), t424, t423, 0, t373, 0, 0, 0, 0, 0, -t535, t372, t371, 0, t340, -t460, -t445, -t466, t459, -t464, 0, t354, t355, t356, t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t513, t539, 0, 0, 0, -t515, 0, -t514, 0, t565, t487, t427, t600, 0, 0, -t453, 0, -t448, 0, t623, t402, t361, t551, t396, t384, t406, t395, t405, t432, t558, t557, t353, t559; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t513, 0, -t517, 0, 0, 0, 0, 0, 0, -qJDD(3), pkin(2) * t515 + t473, pkin(2) * t514 + t474, 0, pkin(2) * t427, 0, 0, 0, 0, 0, -t535, pkin(2) * t453 - t560, pkin(2) * t448 - t566, 0, pkin(2) * t361 + t601, -t460, -t445, -t466, t459, -t464, 0, -pkin(2) * t389 - t561, -pkin(2) * t390 - t562, -pkin(2) * t416 - t556, -pkin(2) * t350 - t567; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t539, t517, 0, 0, 0, 0, t514, 0, -t515, 0, -t487, t565, t564, t576, 0, 0, t448, 0, -t453, 0, -t402, t623, t620, t550, t394, t383, t404, t393, t403, t431, -pkin(2) * t465 - t554, -pkin(2) * t467 - t553, t352, pkin(2) * t376 - t555; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), 0, -t549, 0, 0, t539, t473, 0, 0, 0, -t502, 0, -t499, 0, t618, t482, t381, pkin(6) * t381, t440, t430, t444, t439, t443, t478, t365, t366, t370, t347; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t549, 0, qJDD(3), 0, -t539, 0, t474, 0, 0, 0, t499, 0, -t502, 0, -t482, t618, t575, t378, t438, t429, t442, t437, t441, t477, t357, t358, t369, t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t473, -t474, 0, 0, 0, 0, 0, 0, 0, t535, t560, t566, 0, -t601, t460, t445, t466, -t459, t464, 0, t561, t562, t556, t567; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t535, 0, -t534, 0, 0, t539, t421, 0, t476, t446, t471, t475, t469, t491, t387, t388, t376, pkin(7) * t376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t534, 0, t535, 0, -t539, 0, t422, 0, t522, -t505, -t591, -t522, -t525, -qJDD(5), t385, t386, 0, pkin(4) * t376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t535, -t421, -t422, 0, 0, t460, t445, t466, -t459, t464, 0, t578, t579, t568, t582; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t494, t496, t511, -t524, t520, t524, 0, t414, t407, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t577, t493, t518, t495, t512, -t577, -t414, 0, t408, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t522, t505, t591, t522, t525, qJDD(5), -t407, -t408, 0, 0;];
m_new_reg = t1;
