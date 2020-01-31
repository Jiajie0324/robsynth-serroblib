% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S4RPRP3
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
%   pkin=[a2,a3,a4,d1,d3,theta2]';
%
% Output:
% m_new_reg [(3*5)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 16:42
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S4RPRP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(6,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RPRP3_invdynm_fixb_reg2_snew_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RPRP3_invdynm_fixb_reg2_snew_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RPRP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RPRP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RPRP3_invdynm_fixb_reg2_snew_vp: pkin has to be [6x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 16:42:52
% EndTime: 2019-12-31 16:42:54
% DurationCPUTime: 2.77s
% Computational Cost: add. (5870->296), mult. (12297->365), div. (0->0), fcn. (6466->6), ass. (0->221)
t567 = sin(qJ(1));
t569 = cos(qJ(1));
t535 = t569 * g(1) + t567 * g(2);
t571 = qJD(1) ^ 2;
t516 = -t571 * pkin(1) - t535;
t563 = sin(pkin(6));
t564 = cos(pkin(6));
t534 = t567 * g(1) - t569 * g(2);
t576 = qJDD(1) * pkin(1) + t534;
t473 = t563 * t516 - t564 * t576;
t474 = t564 * t516 + t563 * t576;
t588 = t563 * t473 + t564 * t474;
t434 = t564 * t473 - t563 * t474;
t605 = t569 * t434;
t638 = -t567 * t588 + t605;
t610 = t567 * t434;
t637 = t569 * t588 + t610;
t566 = sin(qJ(3));
t568 = cos(qJ(3));
t542 = t568 * t571 * t566;
t532 = qJDD(3) + t542;
t625 = pkin(3) * t532;
t524 = t563 * qJDD(1) + t564 * t571;
t560 = g(3) - qJDD(2);
t504 = qJ(2) * t524 - t564 * t560;
t525 = t564 * qJDD(1) - t563 * t571;
t578 = -qJ(2) * t525 - t563 * t560;
t630 = t569 * t524 + t567 * t525;
t636 = pkin(4) * t630 + t569 * t504 - t567 * t578;
t479 = -t567 * t524 + t569 * t525;
t635 = -pkin(4) * t479 + t567 * t504 + t569 * t578;
t548 = t568 * t560;
t463 = -t571 * pkin(2) + qJDD(1) * pkin(5) + t474;
t613 = t566 * t463;
t445 = t548 + t613;
t447 = t568 * t463 - t566 * t560;
t403 = t566 * t445 + t568 * t447;
t514 = t568 * t532;
t559 = t568 ^ 2;
t556 = t559 * t571;
t570 = qJD(3) ^ 2;
t540 = -t556 - t570;
t490 = t566 * t540 + t514;
t628 = pkin(2) * t490;
t558 = t566 ^ 2;
t615 = t558 * t571;
t538 = -t570 - t615;
t533 = qJDD(3) - t542;
t611 = t566 * t533;
t492 = t568 * t538 - t611;
t627 = pkin(2) * t492;
t598 = qJD(1) * qJD(3);
t550 = t568 * t598;
t554 = t566 * qJDD(1);
t519 = t554 + t550;
t573 = t548 + (t519 - t550) * qJ(4) - t625;
t597 = (qJD(1) * qJD(4));
t586 = t463 + (2 * t597);
t414 = t586 * t566 + t573;
t626 = pkin(3) * t414;
t612 = t566 * t532;
t494 = t568 * t540 - t612;
t549 = t566 * t598;
t555 = t568 * qJDD(1);
t521 = t555 - 0.2e1 * t549;
t454 = t563 * t494 + t564 * t521;
t456 = t564 * t494 - t563 * t521;
t624 = pkin(4) * (t569 * t454 + t567 * t456);
t606 = t568 * t533;
t496 = -t566 * t538 - t606;
t518 = t554 + 0.2e1 * t550;
t455 = t563 * t496 - t564 * t518;
t457 = t564 * t496 + t563 * t518;
t623 = pkin(4) * (t569 * t455 + t567 * t457);
t600 = t558 + t559;
t526 = t600 * qJDD(1);
t529 = t556 + t615;
t482 = t563 * t526 + t564 * t529;
t483 = t564 * t526 - t563 * t529;
t622 = pkin(4) * (t569 * t482 + t567 * t483);
t620 = pkin(5) * t490;
t619 = pkin(5) * t492;
t618 = qJ(2) * t454;
t617 = qJ(2) * t455;
t616 = qJ(2) * t482;
t614 = t566 * t414;
t462 = -qJDD(1) * pkin(2) - t571 * pkin(5) + t473;
t458 = t566 * t462;
t607 = t568 * t414;
t459 = t568 * t462;
t604 = -pkin(2) * t462 + pkin(5) * t403;
t603 = pkin(2) * t521 + pkin(5) * t494;
t602 = -pkin(2) * t518 + pkin(5) * t496;
t601 = pkin(2) * t529 + pkin(5) * t526;
t599 = qJD(1) * t566;
t596 = pkin(3) * t554;
t595 = t458 + t602;
t594 = -t459 + t603;
t593 = t568 * t597;
t592 = t563 * t554;
t591 = t564 * t554;
t590 = -pkin(1) * t490 + qJ(2) * t456;
t589 = -pkin(1) * t492 + qJ(2) * t457;
t587 = -t567 * t534 - t569 * t535;
t585 = t563 * t542;
t584 = t564 * t542;
t545 = 0.2e1 * t593;
t520 = t555 - t549;
t531 = qJD(3) * pkin(3) - qJ(4) * t599;
t579 = pkin(3) * t556 - t520 * qJ(4) + qJD(3) * t531 - t447;
t416 = t545 - t579;
t405 = pkin(3) * t529 + qJ(4) * t555 + t416;
t413 = (qJ(4) * qJDD(1) + t586) * t566 + t573;
t583 = t568 * t405 + t566 * t413 + t601;
t431 = -t520 * pkin(3) - qJ(4) * t556 + t531 * t599 + qJDD(4) + t462;
t417 = -qJ(4) * t538 + t431;
t486 = -pkin(3) * t518 - qJ(4) * t533;
t582 = t566 * t417 + t568 * t486 + t602;
t581 = t601 + t403;
t528 = t569 * qJDD(1) - t567 * t571;
t580 = -pkin(4) * t528 - t567 * g(3);
t402 = t568 * t445 - t566 * t447;
t577 = t569 * t534 - t567 * t535;
t384 = t568 * t416 + t614;
t386 = -pkin(3) * t431 + qJ(4) * t416;
t575 = -pkin(2) * t431 + pkin(5) * t384 + qJ(4) * t614 + t568 * t386;
t410 = pkin(3) * t521 + qJ(4) * t540 - t431;
t574 = -qJ(4) * t612 + t568 * t410 + t603;
t572 = pkin(3) * t538 + t579;
t539 = t556 - t570;
t537 = t570 - t615;
t530 = -t556 + t615;
t527 = t567 * qJDD(1) + t569 * t571;
t513 = t600 * t598;
t505 = -pkin(4) * t527 + t569 * g(3);
t500 = t568 * t519 - t558 * t598;
t499 = -t566 * t520 - t559 * t598;
t498 = t563 * qJDD(3) + t564 * t513;
t497 = -t564 * qJDD(3) + t563 * t513;
t495 = -t566 * t537 + t514;
t493 = t568 * t539 - t611;
t491 = t568 * t537 + t612;
t489 = t566 * t539 + t606;
t488 = (t519 + t550) * t566;
t487 = (t520 - t549) * t568;
t478 = pkin(1) * t482;
t477 = qJ(2) * t483;
t476 = -t566 * t518 + t568 * t521;
t475 = t568 * t518 + t566 * t521;
t471 = t564 * t500 - t585;
t470 = t564 * t499 + t585;
t469 = t563 * t500 + t584;
t468 = t563 * t499 - t584;
t467 = t564 * t495 + t592;
t466 = t564 * t493 + t563 * t555;
t465 = t563 * t495 - t591;
t464 = t563 * t493 - t564 * t555;
t453 = -pkin(1) * t524 - t474;
t452 = pkin(1) * t525 - t473;
t451 = pkin(1) * t455;
t450 = pkin(1) * t454;
t446 = t564 * t476 + t563 * t530;
t444 = t563 * t476 - t564 * t530;
t441 = -t567 * t497 + t569 * t498;
t440 = t569 * t497 + t567 * t498;
t438 = pkin(4) * (-t567 * t482 + t569 * t483);
t437 = t459 - t619;
t436 = t458 - t620;
t430 = pkin(1) * t434;
t429 = t447 - t627;
t428 = t445 - t628;
t426 = pkin(1) * t560 + qJ(2) * t588;
t425 = -t567 * t469 + t569 * t471;
t424 = -t567 * t468 + t569 * t470;
t423 = t569 * t469 + t567 * t471;
t422 = t569 * t468 + t567 * t470;
t421 = -t567 * t465 + t569 * t467;
t420 = -t567 * t464 + t569 * t466;
t419 = t569 * t465 + t567 * t467;
t418 = t569 * t464 + t567 * t466;
t408 = pkin(4) * (-t567 * t455 + t569 * t457);
t407 = pkin(4) * (-t567 * t454 + t569 * t456);
t404 = -t567 * t444 + t569 * t446;
t401 = t569 * t444 + t567 * t446;
t397 = t545 - t572 - t627;
t396 = t414 - t625 - t628;
t395 = t450 + t594;
t394 = t451 + t595;
t393 = t564 * t402 - t616;
t392 = t563 * t402 + t477;
t391 = -qJ(4) * t514 - t566 * t410 - t620;
t390 = t568 * t417 - t566 * t486 - t619;
t389 = t564 * t403 + t563 * t462;
t388 = t563 * t403 - t564 * t462;
t387 = t478 + t581;
t383 = t566 * t416 - t607;
t381 = -t563 * t429 + t564 * t437 - t617;
t380 = -t563 * t428 + t564 * t436 - t618;
t379 = t450 + t574;
t378 = t451 + t582;
t377 = -t566 * t405 + t568 * t413;
t376 = t564 * t429 + t563 * t437 + t589;
t375 = t564 * t428 + t563 * t436 + t590;
t374 = -pkin(3) * t592 + t564 * t377 - t616;
t373 = pkin(3) * t591 + t563 * t377 + t477;
t372 = t478 + t583;
t371 = t564 * t384 + t563 * t431;
t370 = t563 * t384 - t564 * t431;
t369 = -pkin(2) * t383 + t626;
t368 = pkin(1) * t388 + t604;
t367 = t564 * t390 - t563 * t397 - t617;
t366 = t564 * t391 - t563 * t396 - t618;
t365 = t563 * t390 + t564 * t397 + t589;
t364 = t563 * t391 + t564 * t396 + t590;
t363 = -qJ(2) * t388 - (pkin(2) * t563 - pkin(5) * t564) * t402;
t362 = -pkin(5) * t383 + qJ(4) * t607 - t566 * t386;
t361 = qJ(2) * t389 - (-pkin(2) * t564 - pkin(5) * t563 - pkin(1)) * t402;
t360 = pkin(1) * t370 + t575;
t359 = -qJ(2) * t370 + t564 * t362 - t563 * t369;
t358 = -pkin(1) * t383 + qJ(2) * t371 + t563 * t362 + t564 * t369;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t528, 0, -t527, 0, t580, -t505, -t577, -pkin(4) * t577, 0, 0, t479, 0, -t630, 0, t635, t636, t638, pkin(4) * t638 + qJ(2) * t605 - t567 * t426, t425, t404, t421, t424, t420, t441, -t567 * t375 + t569 * t380 - t624, -t567 * t376 + t569 * t381 - t623, -t567 * t392 + t569 * t393 - t622, t569 * t363 - t567 * t361 - pkin(4) * (t569 * t388 + t567 * t389), t425, t404, t421, t424, t420, t441, -t567 * t364 + t569 * t366 - t624, -t567 * t365 + t569 * t367 - t623, -t567 * t373 + t569 * t374 - t622, t569 * t359 - t567 * t358 - pkin(4) * (t569 * t370 + t567 * t371); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t527, 0, t528, 0, t505, t580, t587, pkin(4) * t587, 0, 0, t630, 0, t479, 0, -t636, t635, t637, pkin(4) * t637 + qJ(2) * t610 + t569 * t426, t423, t401, t419, t422, t418, t440, t569 * t375 + t567 * t380 + t407, t569 * t376 + t567 * t381 + t408, t569 * t392 + t567 * t393 + t438, t567 * t363 + t569 * t361 + pkin(4) * (-t567 * t388 + t569 * t389), t423, t401, t419, t422, t418, t440, t569 * t364 + t567 * t366 + t407, t569 * t365 + t567 * t367 + t408, t569 * t373 + t567 * t374 + t438, t567 * t359 + t569 * t358 + pkin(4) * (-t567 * t370 + t569 * t371); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t534, t535, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t452, t453, 0, -t430, t488, t475, t491, t487, t489, 0, t395, t394, t387, t368, t488, t475, t491, t487, t489, 0, t379, t378, t372, t360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t571, 0, 0, -g(3), -t534, 0, 0, 0, t525, 0, -t524, 0, t578, t504, t434, qJ(2) * t434, t471, t446, t467, t470, t466, t498, t380, t381, t393, t363, t471, t446, t467, t470, t466, t498, t366, t367, t374, t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t571, 0, qJDD(1), 0, g(3), 0, -t535, 0, 0, 0, t524, 0, t525, 0, -t504, t578, t588, t426, t469, t444, t465, t468, t464, t497, t375, t376, t392, t361, t469, t444, t465, t468, t464, t497, t364, t365, t373, t358; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t534, t535, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t452, t453, 0, -t430, t488, t475, t491, t487, t489, 0, t395, t394, t387, t368, t488, t475, t491, t487, t489, 0, t379, t378, t372, t360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t571, 0, 0, -t560, t473, 0, t500, t476, t495, t499, t493, t513, t436, t437, t402, pkin(5) * t402, t500, t476, t495, t499, t493, t513, t391, t390, t377, t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t571, 0, qJDD(1), 0, t560, 0, t474, 0, t542, -t530, -t554, -t542, -t555, -qJDD(3), t428, t429, 0, pkin(2) * t402, t542, -t530, -t554, -t542, -t555, -qJDD(3), t396, t397, t596, t369; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t473, -t474, 0, 0, t488, t475, t491, t487, t489, 0, t594, t595, t581, t604, t488, t475, t491, t487, t489, 0, t574, t582, t583, t575; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t519, t521, t532, -t550, t539, t550, 0, t462, t445, 0, t519, t521, t532, -t550, t539, t550, -qJ(4) * t532, t417, t413, qJ(4) * t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t549, t518, t537, t520, t533, -t549, -t462, 0, t447, 0, t549, t518, t537, t520, t533, -t549, t410, t486, t405, t386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t542, t530, t554, t542, t555, qJDD(3), -t445, -t447, 0, 0, -t542, t530, t554, t542, t555, qJDD(3), -0.2e1 * t566 * t597 - t573 - t613 + t625, t572 - 0.2e1 * t593, -t596, -t626; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t519, t521, t532, -t550, t539, t550, 0, t431, t414, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t549, t518, t537, t520, t533, -t549, -t431, 0, t416, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t542, t530, t554, t542, t555, qJDD(3), -t414, -t416, 0, 0;];
m_new_reg = t1;