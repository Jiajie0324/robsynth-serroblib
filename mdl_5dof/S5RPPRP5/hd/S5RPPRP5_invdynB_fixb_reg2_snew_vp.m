% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPPRP5
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,theta2]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:54
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPPRP5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP5_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP5_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP5_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPPRP5_invdynB_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:53:49
% EndTime: 2019-12-31 17:53:56
% DurationCPUTime: 7.28s
% Computational Cost: add. (8586->397), mult. (21235->514), div. (0->0), fcn. (13441->6), ass. (0->289)
t483 = sin(qJ(4));
t485 = cos(qJ(4));
t482 = cos(pkin(7));
t533 = qJD(1) * t482;
t481 = sin(pkin(7));
t534 = qJD(1) * t481;
t442 = -t483 * t533 + t485 * t534;
t437 = t442 ^ 2;
t487 = qJD(4) ^ 2;
t387 = t487 + t437;
t501 = t481 * t483 + t482 * t485;
t440 = t501 * qJD(1);
t545 = t442 * t440;
t390 = qJDD(4) + t545;
t628 = t390 * t483;
t324 = t387 * t485 + t628;
t627 = t390 * t485;
t326 = -t387 * t483 + t627;
t287 = t324 * t481 + t326 * t482;
t647 = qJ(2) * t287;
t300 = t324 * t482 - t326 * t481;
t646 = qJ(2) * t300;
t484 = sin(qJ(1));
t645 = t287 * t484;
t486 = cos(qJ(1));
t644 = t287 * t486;
t569 = pkin(2) + pkin(3);
t643 = pkin(1) * t300 - qJ(3) * t326 + t569 * t324;
t571 = t440 ^ 2;
t419 = t571 - t487;
t342 = t419 * t483 + t627;
t348 = -t419 * t485 + t628;
t301 = t342 * t481 - t348 * t482;
t578 = t501 * qJDD(1);
t642 = t301 * t484 - t578 * t486;
t641 = t301 * t486 + t578 * t484;
t640 = pkin(6) * t324;
t639 = pkin(6) * t326;
t637 = t342 * t482 + t348 * t481;
t420 = -t437 + t487;
t602 = qJDD(4) - t545;
t557 = t602 * t485;
t625 = -t420 * t483 + t557;
t558 = t602 * t483;
t626 = -t420 * t485 - t558;
t634 = -t481 * t626 + t482 * t625;
t636 = t484 * t634;
t635 = t486 * t634;
t633 = t481 * t625 + t482 * t626;
t367 = -t571 - t437;
t528 = qJDD(1) * t482;
t529 = qJDD(1) * t481;
t439 = -t483 * t528 + t485 * t529;
t585 = t439 * t483 - t485 * t578;
t588 = -t439 * t485 - t483 * t578;
t595 = t481 * t588 + t482 * t585;
t616 = -t367 * t484 + t486 * t595;
t632 = pkin(5) * t616;
t531 = t442 * qJD(4);
t393 = t578 + 0.2e1 * t531;
t579 = -t571 - t487;
t584 = t485 * t579 - t558;
t587 = t483 * t579 + t557;
t597 = t481 * t587 + t482 * t584;
t617 = -t393 * t484 + t486 * t597;
t631 = pkin(5) * t617;
t618 = t367 * t486 + t484 * t595;
t630 = pkin(5) * t618;
t619 = t486 * t393 + t484 * t597;
t629 = pkin(5) * t619;
t594 = t481 * t585 - t482 * t588;
t624 = qJ(2) * t594;
t596 = t481 * t584 - t482 * t587;
t623 = qJ(2) * t596;
t254 = -pkin(1) * t594 - qJ(3) * t585 + t569 * t588;
t622 = -pkin(1) * t596 - qJ(3) * t584 + t569 * t587;
t621 = pkin(1) * t393 + qJ(2) * t597;
t620 = pkin(1) * t367 + qJ(2) * t595;
t614 = pkin(6) * t584;
t613 = pkin(6) * t587;
t532 = qJD(4) * t440;
t494 = t439 - t532;
t365 = -t532 + t494;
t612 = qJ(5) * t365;
t397 = t437 - t571;
t607 = t397 * t484;
t606 = t397 * t486;
t459 = t484 * g(1) - t486 * g(2);
t488 = qJD(1) ^ 2;
t495 = t488 * qJ(2) - qJDD(2) + t459;
t493 = 0.2e1 * qJD(3) * t534 + t495;
t562 = qJ(3) * t481;
t515 = pkin(1) + t562;
t489 = t481 ^ 2;
t538 = t488 * t489;
t477 = t482 ^ 2;
t544 = t477 * t488;
t361 = (t569 * t482 + t515) * qJDD(1) + t493 + (-t538 - t544) * pkin(6);
t394 = -t578 - t531;
t603 = -t394 * pkin(4) + t361 - t612;
t601 = -pkin(6) * t588 + qJ(3) * t367;
t600 = -pkin(6) * t585 + t569 * t367;
t454 = (t477 + t489) * t488;
t445 = t481 * t454;
t525 = t486 * qJDD(1);
t408 = -t445 * t484 + t481 * t525;
t593 = pkin(5) * t408;
t526 = t484 * qJDD(1);
t410 = t445 * t486 + t481 * t526;
t592 = pkin(5) * t410;
t418 = t485 * t531;
t521 = t483 * t532;
t507 = t418 + t521;
t417 = t483 * t531;
t520 = t485 * t532;
t508 = t417 - t520;
t572 = -t481 * t507 + t482 * t508;
t589 = t486 * qJDD(4) + t484 * t572;
t523 = t486 * t545;
t497 = -t394 * t485 - t521;
t498 = -t394 * t483 + t520;
t574 = -t481 * t497 + t482 * t498;
t586 = t484 * t574 - t523;
t524 = t484 * t545;
t583 = t486 * t574 + t524;
t582 = -qJDD(4) * t484 + t486 * t572;
t460 = t486 * g(1) + t484 * g(2);
t444 = -t488 * pkin(1) + qJDD(1) * qJ(2) - t460;
t530 = qJD(1) * qJD(2);
t581 = (-t444 - 0.2e1 * t530) * t482;
t575 = t481 * t498 + t482 * t497;
t573 = t481 * t508 + t482 * t507;
t570 = 2 * qJD(5);
t568 = pkin(2) * t482;
t567 = pkin(4) * t483;
t566 = pkin(4) * t485;
t470 = t489 * qJDD(1);
t471 = t477 * qJDD(1);
t452 = t471 + t470;
t404 = t452 * t484 + t454 * t486;
t565 = pkin(5) * t404;
t446 = t482 * t454;
t409 = -t446 * t484 + t482 * t525;
t564 = pkin(5) * t409;
t563 = qJ(2) * t445;
t561 = qJDD(1) * pkin(1);
t556 = t393 * t483;
t554 = t393 * t485;
t433 = t495 + t561;
t551 = t433 * t484;
t550 = t433 * t486;
t543 = t481 * t482;
t542 = t482 * t488;
t541 = t483 * t361;
t540 = t484 * t488;
t539 = t485 * t361;
t519 = t481 * t530;
t464 = 0.2e1 * t519;
t506 = -t562 - t568;
t449 = t506 * qJD(1);
t537 = t482 * g(3) + t481 * t444;
t512 = t449 * t534 + qJDD(3) + t537;
t500 = t464 + t512;
t337 = (-pkin(3) * t542 - pkin(6) * qJDD(1)) * t481 + t500;
t402 = -t481 * g(3) - t581;
t432 = t449 * t533;
t369 = t402 + t432;
t354 = -pkin(3) * t544 - pkin(6) * t528 + t369;
t297 = t483 * t337 + t485 * t354;
t536 = pkin(1) * t454 + qJ(2) * t452;
t535 = pkin(1) * t528 - qJ(2) * t446;
t522 = pkin(1) + t568;
t516 = t481 * t528;
t514 = -qJ(5) * t485 + qJ(3);
t296 = -t485 * t337 + t483 * t354;
t401 = t464 + t537;
t333 = t401 * t481 + t482 * t402;
t414 = -t459 * t484 - t486 * t460;
t513 = qJ(5) * t483 + t569;
t458 = t525 - t540;
t511 = -pkin(5) * t458 - g(3) * t484;
t359 = -t483 * t494 - t418;
t360 = t485 * t494 - t417;
t312 = -t359 * t481 + t360 * t482;
t510 = t484 * t312 + t523;
t509 = t486 * t312 - t524;
t505 = pkin(2) * t481 - qJ(3) * t482;
t380 = pkin(4) * t440 - qJ(5) * t442;
t504 = qJDD(4) * qJ(5) + qJD(4) * t570 - t440 * t380 + t297;
t258 = -t296 * t485 + t297 * t483;
t259 = t483 * t296 + t485 * t297;
t332 = t401 * t482 - t402 * t481;
t453 = t471 - t470;
t455 = (-t477 + t489) * t488;
t503 = t453 * t486 + t455 * t484;
t502 = t453 * t484 - t455 * t486;
t413 = t459 * t486 - t460 * t484;
t457 = t486 * t488 + t526;
t499 = pkin(1) - t506;
t496 = t446 * t486 + t482 * t526;
t275 = qJDD(4) * pkin(4) + t487 * qJ(5) - t442 * t380 - qJDD(5) - t296;
t492 = t442 * t570 - t603;
t447 = t505 * qJDD(1);
t434 = -pkin(5) * t457 + t486 * g(3);
t416 = t486 * t516 - t540 * t543;
t415 = t457 * t543;
t406 = pkin(5) * t496;
t405 = t452 * t486 - t454 * t484;
t403 = pkin(5) * t405;
t395 = t439 - 0.2e1 * t532;
t383 = qJDD(1) * t499 + t493;
t382 = (t515 + 0.2e1 * t568) * qJDD(1) + t493;
t381 = (t522 + 0.2e1 * t562) * qJDD(1) + t493;
t371 = -pkin(2) * t470 + t381 * t482;
t370 = qJ(3) * t471 - t382 * t481;
t366 = -t512 - 0.2e1 * t519;
t364 = t532 + t494;
t353 = pkin(2) * t454 + t369;
t340 = qJ(3) * t454 + t500;
t339 = -pkin(2) * t538 - t432 + (qJ(3) * t542 + g(3)) * t481 + t581;
t336 = (-pkin(2) * t543 + qJ(3) * t477) * t488 + t500;
t330 = -t395 * t483 - t554;
t328 = -t395 * t485 + t556;
t318 = t333 * t486 - t551;
t317 = t333 * t484 + t550;
t316 = t365 * t483 + t554;
t315 = t365 * t485 - t556;
t314 = -t366 * t481 + t369 * t482;
t313 = t366 * t482 + t369 * t481;
t309 = t359 * t482 + t360 * t481;
t298 = t340 * t482 - t353 * t481;
t293 = t314 * t486 - t383 * t484;
t292 = t314 * t484 + t383 * t486;
t291 = qJ(3) * t395 + t539 + t640;
t290 = -t328 * t481 + t330 * t482;
t283 = -t395 * t484 - t644;
t281 = t395 * t486 - t645;
t279 = qJ(3) * t393 + t541 - t613;
t278 = (pkin(4) * qJD(4) - (2 * qJD(5))) * t442 + t603;
t277 = -qJ(2) * t313 - t383 * t505;
t276 = t569 * t395 - t541 + t639;
t274 = -t487 * pkin(4) + t504;
t273 = -t315 * t481 + t316 * t482;
t270 = t569 * t393 + t539 - t614;
t269 = -pkin(1) * t313 - pkin(2) * t366 - qJ(3) * t369;
t266 = (-t393 - t531) * pkin(4) + t492;
t265 = t365 * t484 + t644;
t264 = -t365 * t486 + t645;
t263 = -pkin(4) * t531 + t492 + t612;
t262 = -qJ(5) * t367 - t275;
t261 = (-t367 - t487) * pkin(4) + t504;
t260 = -pkin(4) * t439 - qJ(5) * t578 + t254;
t257 = -pkin(6) * t258 + qJ(3) * t361;
t256 = -t483 * t266 + t393 * t514 - t613;
t255 = -pkin(6) * t259 + t569 * t361;
t253 = -t485 * t266 + t393 * t513 - t614;
t252 = t274 * t485 - t275 * t483;
t251 = t274 * t483 + t275 * t485;
t250 = -t258 + t601;
t249 = -t640 + t485 * t263 + (-qJ(3) - t567) * t365;
t248 = -t259 + t600;
t247 = -t297 - t643;
t246 = -t639 - t483 * t263 + (-t566 - t569) * t365;
t245 = -t276 * t481 + t291 * t482 - t646;
t244 = -t296 + t622;
t243 = t258 * t481 + t259 * t482;
t242 = -t258 * t482 + t259 * t481;
t241 = -t270 * t481 + t279 * t482 - t623;
t240 = pkin(4) * t602 + qJ(5) * t579 + t275 + t622;
t239 = -t261 * t483 + t262 * t485 + t601;
t238 = t243 * t486 - t361 * t484;
t237 = t243 * t484 + t361 * t486;
t236 = -t485 * t261 - t483 * t262 + t600;
t235 = qJ(5) * t390 + (t387 - t487) * pkin(4) + t504 + t643;
t234 = t251 * t481 + t252 * t482;
t233 = -t251 * t482 + t252 * t481;
t232 = -t253 * t481 + t256 * t482 - t623;
t231 = -pkin(6) * t251 + (t514 + t567) * t278;
t230 = t234 * t486 - t278 * t484;
t229 = t234 * t484 + t278 * t486;
t228 = -t248 * t481 + t250 * t482 - t624;
t227 = -t246 * t481 + t249 * t482 + t646;
t226 = -pkin(6) * t252 + (t513 + t566) * t278;
t225 = -qJ(2) * t242 - t255 * t481 + t257 * t482;
t224 = -t236 * t481 + t239 * t482 - t624;
t223 = -pkin(1) * t242 - qJ(3) * t259 + t569 * t258;
t222 = -pkin(1) * t233 + pkin(4) * t275 - qJ(3) * t252 + qJ(5) * t274 + t569 * t251;
t221 = -qJ(2) * t233 - t226 * t481 + t231 * t482;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t457, -t458, 0, t414, 0, 0, 0, 0, 0, 0, -t496, t410, t405, t318, 0, 0, 0, 0, 0, 0, -t496, t405, -t410, t293, 0, 0, 0, 0, 0, 0, t617, t283, t616, t238, 0, 0, 0, 0, 0, 0, t617, t616, t265, t230; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t458, -t457, 0, t413, 0, 0, 0, 0, 0, 0, t409, -t408, t404, t317, 0, 0, 0, 0, 0, 0, t409, t404, t408, t292, 0, 0, 0, 0, 0, 0, t619, t281, t618, t237, 0, 0, 0, 0, 0, 0, t619, t618, t264, t229; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t332, 0, 0, 0, 0, 0, 0, 0, 0, 0, t313, 0, 0, 0, 0, 0, 0, t596, t300, t594, t242, 0, 0, 0, 0, 0, 0, t596, t594, -t300, t233; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t458, 0, -t457, 0, t511, -t434, -t413, -pkin(5) * t413, t416, t503, t410, -t416, t496, 0, -t401 * t484 - t481 * t550 - t564, -t402 * t484 - t482 * t550 + t593, t332 * t486 - t565, -pkin(5) * t317 - (pkin(1) * t484 - qJ(2) * t486) * t332, t416, t410, -t503, 0, -t496, -t416, -t336 * t484 + t370 * t486 - t564, t298 * t486 - t447 * t484 - t565, -t339 * t484 + t371 * t486 - t593, -pkin(5) * t292 - t269 * t484 + t277 * t486, t509, t290 * t486 - t607, -t439 * t484 + t635, t583, t641, t582, t241 * t486 - t244 * t484 - t629, -pkin(5) * t281 + t245 * t486 - t247 * t484, t228 * t486 - t254 * t484 - t630, -pkin(5) * t237 - t223 * t484 + t225 * t486, t509, -t364 * t484 + t635, t273 * t486 + t607, t582, -t641, t583, t232 * t486 - t240 * t484 - t629, t224 * t486 - t260 * t484 - t630, -pkin(5) * t264 + t227 * t486 - t235 * t484, -pkin(5) * t229 + t221 * t486 - t222 * t484; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t457, 0, t458, 0, t434, t511, t414, pkin(5) * t414, t415, t502, -t408, -t415, -t409, 0, t401 * t486 - t481 * t551 - t406, t402 * t486 - t482 * t551 + t592, t332 * t484 + t403, pkin(5) * t318 - (-pkin(1) * t486 - qJ(2) * t484) * t332, t415, -t408, -t502, 0, t409, -t415, t336 * t486 + t370 * t484 - t406, t298 * t484 + t447 * t486 + t403, t339 * t486 + t371 * t484 - t592, pkin(5) * t293 + t269 * t486 + t277 * t484, t510, t290 * t484 + t606, t439 * t486 + t636, t586, t642, t589, t241 * t484 + t244 * t486 + t631, pkin(5) * t283 + t245 * t484 + t247 * t486, t228 * t484 + t254 * t486 + t632, pkin(5) * t238 + t223 * t486 + t225 * t484, t510, t364 * t486 + t636, t273 * t484 - t606, t589, -t642, t586, t232 * t484 + t240 * t486 + t631, t224 * t484 + t260 * t486 + t632, pkin(5) * t265 + t227 * t484 + t235 * t486, pkin(5) * t230 + t221 * t484 + t222 * t486; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t459, t460, 0, 0, t470, 0.2e1 * t516, 0, t471, 0, 0, t433 * t482 + t535, t563 + (-t433 - t561) * t481, t333 + t536, pkin(1) * t433 + qJ(2) * t333, t470, 0, -0.2e1 * t516, 0, 0, t471, (qJ(3) * t529 + t382) * t482 + t535, t340 * t481 + t353 * t482 + t536, -t563 + (qJDD(1) * t522 + t381) * t481, qJ(2) * t314 + t383 * t499, t309, t328 * t482 + t330 * t481, t633, t575, -t637, t573, t270 * t482 + t279 * t481 + t621, pkin(1) * t395 + t276 * t482 + t291 * t481 - t647, t248 * t482 + t250 * t481 + t620, pkin(1) * t361 + qJ(2) * t243 + t255 * t482 + t257 * t481, t309, t633, t315 * t482 + t316 * t481, t573, t637, t575, t253 * t482 + t256 * t481 + t621, t236 * t482 + t239 * t481 + t620, -pkin(1) * t365 + t246 * t482 + t249 * t481 + t647, pkin(1) * t278 + qJ(2) * t234 + t226 * t482 + t231 * t481;];
tauB_reg = t1;