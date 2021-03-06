% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPRRP6
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:43
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPRRP6_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP6_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP6_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP6_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP6_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP6_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:43:21
% EndTime: 2019-12-31 18:43:30
% DurationCPUTime: 6.91s
% Computational Cost: add. (21398->480), mult. (41786->677), div. (0->0), fcn. (26505->8), ass. (0->352)
t545 = sin(qJ(1));
t548 = cos(qJ(1));
t515 = t548 * g(1) + t545 * g(2);
t549 = qJD(1) ^ 2;
t499 = -t549 * pkin(1) - t515;
t539 = sin(pkin(8));
t540 = cos(pkin(8));
t514 = t545 * g(1) - t548 * g(2);
t558 = qJDD(1) * pkin(1) + t514;
t450 = t540 * t499 + t539 * t558;
t433 = -t549 * pkin(2) + qJDD(1) * pkin(6) + t450;
t544 = sin(qJ(3));
t547 = cos(qJ(3));
t624 = pkin(3) * t547;
t564 = -pkin(7) * t544 - t624;
t500 = t564 * qJD(1);
t536 = g(3) - qJDD(2);
t526 = t547 * t536;
t628 = qJD(3) ^ 2;
t394 = (qJD(1) * t500 + t433) * t544 - qJDD(3) * pkin(3) - t628 * pkin(7) + t526;
t449 = t539 * t499 - t540 * t558;
t571 = t539 * t449 + t540 * t450;
t392 = t540 * t449 - t539 * t450;
t591 = t548 * t392;
t639 = -t545 * t571 + t591;
t600 = t545 * t392;
t341 = t548 * t571 + t600;
t505 = t539 * qJDD(1) + t540 * t549;
t506 = t540 * qJDD(1) - t539 * t549;
t452 = -t545 * t505 + t548 * t506;
t478 = qJ(2) * t505 - t540 * t536;
t560 = -qJ(2) * t506 - t539 * t536;
t638 = -pkin(5) * t452 + t545 * t478 + t548 * t560;
t585 = qJD(1) * qJD(3);
t527 = t544 * t585;
t583 = t547 * qJDD(1);
t503 = -t527 + t583;
t492 = -qJDD(4) + t503;
t543 = sin(qJ(4));
t546 = cos(qJ(4));
t589 = qJD(1) * t544;
t495 = -t546 * qJD(3) + t543 * t589;
t497 = t543 * qJD(3) + t546 * t589;
t611 = t497 * t495;
t569 = t492 + t611;
t635 = t569 * pkin(4);
t575 = t547 * t585;
t584 = t544 * qJDD(1);
t502 = t575 + t584;
t568 = -t546 * qJDD(3) + t543 * t502;
t446 = -t497 * qJD(4) - t568;
t587 = t547 * qJD(1);
t522 = -qJD(4) + t587;
t468 = -t522 * pkin(4) - t497 * qJ(5);
t490 = t495 ^ 2;
t334 = -t446 * pkin(4) - t490 * qJ(5) + t497 * t468 + qJDD(5) + t394;
t630 = t548 * t505 + t545 * t506;
t636 = pkin(5) * t630 + t548 * t478 - t545 * t560;
t604 = t543 * t569;
t594 = t546 * t569;
t480 = t495 * t522;
t551 = t495 * qJD(4) - t543 * qJDD(3) - t546 * t502;
t631 = t480 - t551;
t411 = (qJD(4) + t522) * t497 + t568;
t491 = t497 ^ 2;
t520 = t522 ^ 2;
t448 = -t520 - t490;
t379 = t543 * t448 - t594;
t627 = pkin(3) * t379;
t458 = -t491 - t520;
t429 = t492 - t611;
t605 = t543 * t429;
t384 = t546 * t458 + t605;
t626 = pkin(3) * t384;
t625 = pkin(3) * t544;
t415 = t480 + t551;
t363 = -t411 * t546 - t543 * t415;
t428 = -t490 - t491;
t329 = t547 * t363 + t544 * t428;
t361 = -t411 * t543 + t546 * t415;
t298 = t539 * t329 - t540 * t361;
t299 = t540 * t329 + t539 * t361;
t254 = t548 * t298 + t545 * t299;
t623 = pkin(5) * t254;
t380 = t546 * t448 + t604;
t410 = (qJD(4) - t522) * t497 + t568;
t347 = t547 * t380 + t544 * t410;
t311 = t539 * t347 - t540 * t379;
t312 = t540 * t347 + t539 * t379;
t266 = t548 * t311 + t545 * t312;
t622 = pkin(5) * t266;
t595 = t546 * t429;
t385 = -t543 * t458 + t595;
t352 = t547 * t385 + t544 * t631;
t317 = t539 * t352 - t540 * t384;
t318 = t540 * t352 + t539 * t384;
t269 = t548 * t317 + t545 * t318;
t621 = pkin(5) * t269;
t328 = t544 * t363 - t547 * t428;
t620 = pkin(6) * t328;
t346 = t544 * t380 - t547 * t410;
t619 = pkin(6) * t346;
t351 = t544 * t385 - t547 * t631;
t618 = pkin(6) * t351;
t617 = pkin(7) * t361;
t616 = pkin(7) * t379;
t615 = pkin(7) * t384;
t614 = qJ(2) * t298;
t613 = qJ(2) * t311;
t612 = qJ(2) * t317;
t610 = t522 * t543;
t609 = t522 * t546;
t534 = t544 ^ 2;
t608 = t534 * t549;
t432 = -qJDD(1) * pkin(2) - t549 * pkin(6) + t449;
t561 = -t503 + t527;
t562 = t502 + t575;
t382 = pkin(3) * t561 - pkin(7) * t562 + t432;
t420 = t547 * t433 - t544 * t536;
t395 = -t628 * pkin(3) + qJDD(3) * pkin(7) + t500 * t587 + t420;
t336 = -t546 * t382 + t543 * t395;
t577 = -qJ(5) * t551 + t336;
t557 = qJ(5) * t480 - t577;
t588 = qJD(5) * t497;
t302 = t557 - 0.2e1 * t588 - t635;
t607 = t543 * t302;
t606 = t543 * t394;
t603 = t544 * t432;
t521 = t547 * t549 * t544;
t512 = qJDD(3) + t521;
t602 = t544 * t512;
t513 = qJDD(3) - t521;
t601 = t544 * t513;
t597 = t546 * t302;
t596 = t546 * t394;
t593 = t547 * t432;
t592 = t547 * t513;
t337 = t543 * t382 + t546 * t395;
t535 = t547 ^ 2;
t590 = t534 + t535;
t582 = t544 * t611;
t581 = t547 * t611;
t580 = pkin(1) * t298 - pkin(2) * t361 + pkin(6) * t329;
t579 = pkin(1) * t311 - pkin(2) * t379 + pkin(6) * t347;
t578 = pkin(1) * t317 - pkin(2) * t384 + pkin(6) * t352;
t574 = -pkin(1) * t328 + qJ(2) * t299;
t573 = -pkin(1) * t346 + qJ(2) * t312;
t572 = -pkin(1) * t351 + qJ(2) * t318;
t418 = t544 * t433 + t526;
t366 = t544 * t418 + t547 * t420;
t461 = -t545 * t514 - t548 * t515;
t566 = t539 * t521;
t565 = t540 * t521;
t509 = t548 * qJDD(1) - t545 * t549;
t563 = -pkin(5) * t509 - t545 * g(3);
t292 = -t546 * t336 + t543 * t337;
t293 = t543 * t336 + t546 * t337;
t365 = t547 * t418 - t544 * t420;
t460 = t548 * t514 - t545 * t515;
t556 = t446 * qJ(5) - 0.2e1 * qJD(5) * t495 + t522 * t468 + t337;
t555 = -pkin(2) * t328 + pkin(3) * t428 - pkin(7) * t363;
t554 = -pkin(2) * t346 + pkin(3) * t410 - pkin(7) * t380;
t553 = -pkin(2) * t351 + pkin(3) * t631 - pkin(7) * t385;
t532 = t535 * t549;
t519 = -t532 - t628;
t518 = t532 - t628;
t517 = -t608 - t628;
t516 = -t608 + t628;
t511 = t532 - t608;
t510 = t532 + t608;
t508 = t545 * qJDD(1) + t548 * t549;
t507 = t590 * qJDD(1);
t504 = -0.2e1 * t527 + t583;
t501 = 0.2e1 * t575 + t584;
t494 = t547 * t512;
t493 = t590 * t585;
t486 = 0.2e1 * t588;
t481 = -pkin(5) * t508 + t548 * g(3);
t474 = -t491 + t520;
t473 = t490 - t520;
t472 = t547 * t502 - t534 * t585;
t471 = -t544 * t503 - t535 * t585;
t470 = t539 * qJDD(3) + t540 * t493;
t469 = -t540 * qJDD(3) + t539 * t493;
t467 = -t544 * t517 - t592;
t466 = -t544 * t516 + t494;
t465 = t547 * t519 - t602;
t464 = t547 * t518 - t601;
t463 = t547 * t517 - t601;
t462 = t544 * t519 + t494;
t459 = -t491 + t490;
t457 = t540 * t507 - t539 * t510;
t456 = t539 * t507 + t540 * t510;
t451 = -t544 * t501 + t547 * t504;
t444 = t540 * t472 - t566;
t443 = t540 * t471 + t566;
t442 = t539 * t472 + t565;
t441 = t539 * t471 - t565;
t440 = t540 * t466 + t539 * t584;
t439 = t540 * t464 + t539 * t583;
t438 = t539 * t466 - t540 * t584;
t437 = t539 * t464 - t540 * t583;
t426 = t540 * t467 + t539 * t501;
t425 = t540 * t465 - t539 * t504;
t424 = t539 * t467 - t540 * t501;
t423 = t539 * t465 + t540 * t504;
t422 = (t495 * t546 - t497 * t543) * t522;
t421 = (-t495 * t543 - t497 * t546) * t522;
t419 = t540 * t451 - t539 * t511;
t417 = t539 * t451 + t540 * t511;
t409 = t497 * t610 - t546 * t551;
t408 = t497 * t609 + t543 * t551;
t407 = -t543 * t446 - t495 * t609;
t406 = -t546 * t446 + t495 * t610;
t405 = -t545 * t456 + t548 * t457;
t404 = t548 * t456 + t545 * t457;
t403 = t547 * t422 - t544 * t492;
t402 = t544 * t422 + t547 * t492;
t401 = -pkin(6) * t463 + t593;
t400 = t546 * t473 + t605;
t399 = -t543 * t474 - t594;
t398 = -pkin(6) * t462 + t603;
t397 = -t543 * t473 + t595;
t396 = -t546 * t474 + t604;
t387 = -pkin(2) * t463 + t420;
t386 = -pkin(2) * t462 + t418;
t381 = pkin(1) * t536 + qJ(2) * t571;
t375 = t547 * t409 + t582;
t374 = t547 * t407 - t582;
t373 = t544 * t409 - t581;
t372 = t544 * t407 + t581;
t371 = -t545 * t424 + t548 * t426;
t370 = -t545 * t423 + t548 * t425;
t369 = t548 * t424 + t545 * t426;
t368 = t548 * t423 + t545 * t425;
t367 = -pkin(4) * t631 + qJ(5) * t429;
t362 = -t546 * t410 - t543 * t631;
t360 = t543 * t410 - t546 * t631;
t358 = t540 * t403 - t539 * t421;
t357 = t539 * t403 + t540 * t421;
t356 = t547 * t400 - t544 * t411;
t355 = t547 * t399 - t544 * t415;
t354 = t544 * t400 + t547 * t411;
t353 = t544 * t399 + t547 * t415;
t349 = -qJ(2) * t456 + t540 * t365;
t348 = qJ(2) * t457 + t539 * t365;
t344 = t540 * t366 + t539 * t432;
t343 = t539 * t366 - t540 * t432;
t342 = t596 - t615;
t339 = t547 * t362 - t544 * t459;
t338 = t544 * t362 + t547 * t459;
t335 = t606 - t616;
t333 = t540 * t375 - t539 * t408;
t332 = t540 * t374 - t539 * t406;
t331 = t539 * t375 + t540 * t408;
t330 = t539 * t374 + t540 * t406;
t326 = -pkin(3) * t361 - pkin(4) * t415;
t325 = -qJ(5) * t458 + t334;
t324 = -qJ(2) * t424 - t539 * t387 + t540 * t401;
t323 = -qJ(2) * t423 - t539 * t386 + t540 * t398;
t322 = t540 * t356 - t539 * t397;
t321 = t540 * t355 - t539 * t396;
t320 = t539 * t356 + t540 * t397;
t319 = t539 * t355 + t540 * t396;
t314 = -pkin(1) * t463 + qJ(2) * t426 + t540 * t387 + t539 * t401;
t313 = -pkin(1) * t462 + qJ(2) * t425 + t540 * t386 + t539 * t398;
t310 = t337 - t626;
t307 = t336 - t627;
t306 = -t545 * t357 + t548 * t358;
t305 = t548 * t357 + t545 * t358;
t304 = -t490 * pkin(4) + t556;
t303 = -pkin(4) * t410 + qJ(5) * t448 - t334;
t301 = t540 * t339 - t539 * t360;
t300 = t539 * t339 + t540 * t360;
t295 = -t545 * t343 + t548 * t344;
t294 = t548 * t343 + t545 * t344;
t291 = t486 + (-t415 - t480) * qJ(5) + t635 + t577;
t290 = -t545 * t331 + t548 * t333;
t289 = -t545 * t330 + t548 * t332;
t288 = t548 * t331 + t545 * t333;
t287 = t548 * t330 + t545 * t332;
t286 = t553 - t606;
t285 = -qJ(5) * t411 + (-t428 - t490) * pkin(4) + t556;
t284 = t554 + t596;
t283 = -t626 + (-t458 - t490) * pkin(4) + t556;
t282 = -qJ(2) * t343 - (pkin(2) * t539 - pkin(6) * t540) * t365;
t281 = t546 * t325 - t543 * t367 - t615;
t280 = qJ(5) * t594 - t543 * t303 - t616;
t279 = t486 - t557 - t627 + 0.2e1 * t635;
t278 = t547 * t293 + t544 * t394;
t277 = t544 * t293 - t547 * t394;
t276 = -pkin(4) * t334 + qJ(5) * t304;
t275 = -t545 * t320 + t548 * t322;
t274 = -t545 * t319 + t548 * t321;
t273 = t548 * t320 + t545 * t322;
t272 = t548 * t319 + t545 * t321;
t271 = -t292 - t617;
t270 = -t545 * t317 + t548 * t318;
t268 = pkin(5) * t270;
t267 = -t545 * t311 + t548 * t312;
t265 = pkin(5) * t267;
t264 = qJ(2) * t344 - (-pkin(2) * t540 - pkin(6) * t539 - pkin(1)) * t365;
t263 = -t544 * t310 + t547 * t342 - t618;
t262 = t546 * t304 - t607;
t261 = t543 * t304 + t597;
t260 = -t544 * t307 + t547 * t335 - t619;
t259 = -t545 * t300 + t548 * t301;
t258 = t548 * t300 + t545 * t301;
t257 = -t543 * t325 - t546 * t367 + t553;
t256 = -qJ(5) * t604 - t546 * t303 + t554;
t255 = -t545 * t298 + t548 * t299;
t253 = pkin(5) * t255;
t252 = -t293 + t555;
t251 = t547 * t262 + t544 * t334;
t250 = t544 * t262 - t547 * t334;
t249 = t540 * t278 + t539 * t292;
t248 = t539 * t278 - t540 * t292;
t247 = t547 * t271 + t361 * t625 - t620;
t246 = -pkin(2) * t277 + pkin(3) * t394 - pkin(7) * t293;
t245 = -pkin(3) * t261 - pkin(4) * t302;
t244 = -t543 * t285 + t546 * t291 - t617;
t243 = t547 * t281 - t544 * t283 - t618;
t242 = -t544 * t279 + t547 * t280 - t619;
t241 = -t546 * t285 - t543 * t291 + t555;
t240 = -pkin(6) * t277 + (-pkin(7) * t547 + t625) * t292;
t239 = t540 * t263 - t539 * t286 - t612;
t238 = t540 * t260 - t539 * t284 - t613;
t237 = t547 * t244 - t544 * t326 - t620;
t236 = -pkin(7) * t261 - qJ(5) * t597 - t543 * t276;
t235 = t540 * t251 + t539 * t261;
t234 = t539 * t251 - t540 * t261;
t233 = t539 * t263 + t540 * t286 + t572;
t232 = t539 * t260 + t540 * t284 + t573;
t231 = -t545 * t248 + t548 * t249;
t230 = t548 * t248 + t545 * t249;
t229 = t540 * t243 - t539 * t257 - t612;
t228 = t540 * t247 - t539 * t252 - t614;
t227 = t540 * t242 - t539 * t256 - t613;
t226 = t539 * t243 + t540 * t257 + t572;
t225 = t539 * t247 + t540 * t252 + t574;
t224 = t539 * t242 + t540 * t256 + t573;
t223 = -pkin(2) * t250 + pkin(3) * t334 - pkin(7) * t262 + qJ(5) * t607 - t546 * t276;
t222 = t540 * t237 - t539 * t241 - t614;
t221 = -t545 * t234 + t548 * t235;
t220 = t548 * t234 + t545 * t235;
t219 = -qJ(2) * t248 + t540 * t240 - t539 * t246;
t218 = t539 * t237 + t540 * t241 + t574;
t217 = -pkin(6) * t250 + t547 * t236 - t544 * t245;
t216 = -pkin(1) * t277 + qJ(2) * t249 + t539 * t240 + t540 * t246;
t215 = -qJ(2) * t234 + t540 * t217 - t539 * t223;
t214 = -pkin(1) * t250 + qJ(2) * t235 + t539 * t217 + t540 * t223;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t508, -t509, 0, t461, 0, 0, 0, 0, 0, 0, -t630, -t452, 0, t341, 0, 0, 0, 0, 0, 0, t370, t371, t405, t295, 0, 0, 0, 0, 0, 0, t267, t270, t255, t231, 0, 0, 0, 0, 0, 0, t267, t270, t255, t221; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t509, -t508, 0, t460, 0, 0, 0, 0, 0, 0, t452, -t630, 0, -t639, 0, 0, 0, 0, 0, 0, t368, t369, t404, t294, 0, 0, 0, 0, 0, 0, t266, t269, t254, t230, 0, 0, 0, 0, 0, 0, t266, t269, t254, t220; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t536, 0, 0, 0, 0, 0, 0, t462, t463, 0, -t365, 0, 0, 0, 0, 0, 0, t346, t351, t328, t277, 0, 0, 0, 0, 0, 0, t346, t351, t328, t250; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t509, 0, -t508, 0, t563, -t481, -t460, -pkin(5) * t460, 0, 0, t452, 0, -t630, 0, t638, t636, t639, pkin(5) * t639 + qJ(2) * t591 - t545 * t381, -t545 * t442 + t548 * t444, -t545 * t417 + t548 * t419, -t545 * t438 + t548 * t440, -t545 * t441 + t548 * t443, -t545 * t437 + t548 * t439, -t545 * t469 + t548 * t470, -pkin(5) * t368 - t545 * t313 + t548 * t323, -pkin(5) * t369 - t545 * t314 + t548 * t324, -pkin(5) * t404 - t545 * t348 + t548 * t349, -pkin(5) * t294 - t545 * t264 + t548 * t282, t290, t259, t274, t289, t275, t306, -t545 * t232 + t548 * t238 - t622, -t545 * t233 + t548 * t239 - t621, -t545 * t225 + t548 * t228 - t623, -pkin(5) * t230 - t545 * t216 + t548 * t219, t290, t259, t274, t289, t275, t306, -t545 * t224 + t548 * t227 - t622, -t545 * t226 + t548 * t229 - t621, -t545 * t218 + t548 * t222 - t623, -pkin(5) * t220 - t545 * t214 + t548 * t215; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t508, 0, t509, 0, t481, t563, t461, pkin(5) * t461, 0, 0, t630, 0, t452, 0, -t636, t638, t341, pkin(5) * t341 + qJ(2) * t600 + t548 * t381, t548 * t442 + t545 * t444, t548 * t417 + t545 * t419, t548 * t438 + t545 * t440, t548 * t441 + t545 * t443, t548 * t437 + t545 * t439, t548 * t469 + t545 * t470, pkin(5) * t370 + t548 * t313 + t545 * t323, pkin(5) * t371 + t548 * t314 + t545 * t324, pkin(5) * t405 + t548 * t348 + t545 * t349, pkin(5) * t295 + t548 * t264 + t545 * t282, t288, t258, t272, t287, t273, t305, t548 * t232 + t545 * t238 + t265, t548 * t233 + t545 * t239 + t268, t548 * t225 + t545 * t228 + t253, pkin(5) * t231 + t548 * t216 + t545 * t219, t288, t258, t272, t287, t273, t305, t548 * t224 + t545 * t227 + t265, t548 * t226 + t545 * t229 + t268, t548 * t218 + t545 * t222 + t253, pkin(5) * t221 + t548 * t214 + t545 * t215; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t514, t515, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t506 - t449, -pkin(1) * t505 - t450, 0, -pkin(1) * t392, t562 * t544, t547 * t501 + t544 * t504, t547 * t516 + t602, -t561 * t547, t544 * t518 + t592, 0, pkin(1) * t423 + pkin(2) * t504 + pkin(6) * t465 - t593, pkin(1) * t424 - pkin(2) * t501 + pkin(6) * t467 + t603, pkin(1) * t456 + pkin(2) * t510 + pkin(6) * t507 + t366, pkin(1) * t343 - pkin(2) * t432 + pkin(6) * t366, t373, t338, t353, t372, t354, t402, t547 * t307 + t544 * t335 + t579, t547 * t310 + t544 * t342 + t578, t544 * t271 - t361 * t624 + t580, pkin(1) * t248 + pkin(6) * t278 + (-pkin(2) + t564) * t292, t373, t338, t353, t372, t354, t402, t547 * t279 + t544 * t280 + t579, t544 * t281 + t547 * t283 + t578, t544 * t244 + t547 * t326 + t580, pkin(1) * t234 - pkin(2) * t261 + pkin(6) * t251 + t544 * t236 + t547 * t245;];
tauB_reg = t1;
