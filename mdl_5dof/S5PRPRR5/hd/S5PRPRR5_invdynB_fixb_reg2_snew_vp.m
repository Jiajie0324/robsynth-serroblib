% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRPRR5
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
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1,theta3]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:55
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRPRR5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR5_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR5_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRR5_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRR5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR5_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:54:50
% EndTime: 2019-12-05 15:55:04
% DurationCPUTime: 11.10s
% Computational Cost: add. (41640->540), mult. (96429->845), div. (0->0), fcn. (72073->10), ass. (0->374)
t561 = sin(qJ(4));
t558 = cos(pkin(9));
t564 = cos(qJ(4));
t556 = sin(pkin(9));
t619 = t556 * t561;
t518 = (t558 * t564 - t619) * qJD(2);
t573 = t556 * t564 + t558 * t561;
t520 = t573 * qJD(2);
t624 = t520 * t518;
t633 = qJDD(4) + t624;
t640 = t561 * t633;
t639 = t564 * t633;
t557 = sin(pkin(8));
t559 = cos(pkin(8));
t538 = t559 * g(1) + t557 * g(2);
t562 = sin(qJ(2));
t565 = cos(qJ(2));
t599 = g(3) - qJDD(1);
t507 = -t565 * t538 - t562 * t599;
t625 = qJD(2) ^ 2;
t634 = -pkin(2) * t625 + qJDD(2) * qJ(3) + 0.2e1 * qJD(2) * qJD(3) + t507;
t567 = t556 ^ 2;
t569 = t558 ^ 2;
t627 = t625 * (t567 + t569);
t524 = t558 * t627;
t591 = t562 * qJDD(2);
t500 = t565 * t524 + t558 * t591;
t638 = t557 * t500;
t637 = t559 * t500;
t560 = sin(qJ(5));
t563 = cos(qJ(5));
t468 = -t563 * t518 + t560 * t520;
t470 = t560 * t518 + t563 * t520;
t427 = t470 * t468;
t588 = qJDD(4) + qJDD(5);
t630 = -t427 + t588;
t636 = t560 * t630;
t635 = t563 * t630;
t548 = t569 * t625;
t595 = t567 * t625;
t532 = t548 + t595;
t632 = t557 * t599;
t631 = t559 * t599;
t553 = qJD(4) + qJD(5);
t463 = t553 * t468;
t592 = qJDD(2) * t558;
t516 = qJDD(2) * t619 - t564 * t592;
t597 = t520 * qJD(4);
t478 = -t516 - t597;
t598 = t518 * qJD(4);
t628 = t573 * qJDD(2);
t480 = t628 + t598;
t571 = t468 * qJD(5) - t560 * t478 - t563 * t480;
t629 = -t463 - t571;
t537 = t557 * g(1) - t559 * g(2);
t527 = t559 * t537;
t492 = -t557 * t538 + t527;
t574 = -t563 * t478 + t560 * t480;
t370 = (qJD(5) - t553) * t470 + t574;
t466 = t468 ^ 2;
t467 = t470 ^ 2;
t626 = t518 ^ 2;
t515 = t520 ^ 2;
t551 = t553 ^ 2;
t555 = qJDD(2) * pkin(2);
t623 = t553 * t560;
t622 = t553 * t563;
t526 = t558 * t537;
t437 = -t526 + (pkin(3) * t558 * t625 - pkin(6) * qJDD(2) - t634) * t556;
t453 = -t556 * t537 + t634 * t558;
t440 = -pkin(3) * t548 + pkin(6) * t592 + t453;
t389 = -t564 * t437 + t561 * t440;
t390 = t561 * t437 + t564 * t440;
t334 = -t564 * t389 + t561 * t390;
t621 = t556 * t334;
t620 = t556 * t558;
t590 = t565 * qJDD(2);
t581 = t558 * t590;
t596 = t562 * t625;
t504 = t556 * t581 - t596 * t620;
t618 = t557 * t504;
t536 = t590 - t596;
t617 = t557 * t536;
t616 = t557 * t537;
t614 = t558 * t334;
t613 = t559 * t504;
t612 = t559 * t536;
t506 = -t562 * t538 + t565 * t599;
t491 = -t625 * qJ(3) + qJDD(3) + t506 - t555;
t459 = -pkin(3) * t592 - t532 * pkin(6) + t491;
t505 = qJD(4) * pkin(4) - t520 * pkin(7);
t388 = -t478 * pkin(4) - pkin(7) * t626 + t520 * t505 + t459;
t611 = t560 * t388;
t422 = t427 + t588;
t610 = t560 * t422;
t345 = (-t480 + t598) * pkin(7) + t633 * pkin(4) - t389;
t349 = -pkin(4) * t626 + t478 * pkin(7) - qJD(4) * t505 + t390;
t300 = -t563 * t345 + t560 * t349;
t301 = t560 * t345 + t563 * t349;
t264 = -t563 * t300 + t560 * t301;
t609 = t561 * t264;
t608 = t561 * t459;
t475 = qJDD(4) - t624;
t607 = t561 * t475;
t606 = t562 * t491;
t605 = t563 * t388;
t604 = t563 * t422;
t603 = t564 * t264;
t602 = t564 * t459;
t601 = t564 * t475;
t600 = t565 * t491;
t589 = t567 * qJDD(2);
t547 = t569 * qJDD(2);
t586 = t562 * t427;
t585 = t562 * t624;
t584 = t565 * t427;
t583 = t565 * t624;
t582 = t556 * t592;
t580 = -t491 + t555;
t452 = t634 * t556 + t526;
t414 = t556 * t452 + t558 * t453;
t530 = t547 + t589;
t486 = t562 * t530 + t565 * t532;
t487 = t565 * t530 - t562 * t532;
t579 = -pkin(1) * t486 - pkin(2) * t532 + qJ(1) * t487 - qJ(3) * t530 - t414;
t523 = t556 * t627;
t495 = t562 * t523 - t556 * t590;
t498 = t565 * t523 + t556 * t591;
t578 = -pkin(1) * t495 + qJ(1) * t498 - qJ(3) * t523 + t556 * t580;
t497 = -t562 * t524 + t581;
t577 = -pkin(1) * t497 - qJ(1) * t500 + qJ(3) * t524 - t558 * t580;
t535 = t565 * t625 + t591;
t576 = pkin(1) * t536 + qJ(1) * t535 - t506;
t575 = -pkin(1) * t535 + qJ(1) * t536 - t507;
t265 = t560 * t300 + t563 * t301;
t335 = t561 * t389 + t564 * t390;
t458 = t562 * t506 + t565 * t507;
t493 = -t559 * t538 - t616;
t499 = pkin(5) * t535 - t565 * t537;
t496 = -pkin(5) * t536 - t562 * t537;
t413 = t558 * t452 - t556 * t453;
t457 = t565 * t506 - t562 * t507;
t566 = qJD(4) ^ 2;
t533 = t548 - t595;
t531 = t547 - t589;
t522 = t559 * t535;
t521 = t557 * t535;
t510 = -t515 - t566;
t509 = -t515 + t566;
t508 = -t566 + t626;
t503 = t535 * t620;
t490 = t559 * t498;
t489 = t557 * t498;
t488 = t565 * t531 - t562 * t533;
t481 = -t515 + t626;
t479 = t628 + 0.2e1 * t598;
t477 = t516 + 0.2e1 * t597;
t473 = -t566 - t626;
t465 = (t518 * t564 + t520 * t561) * qJD(4);
t464 = (t518 * t561 - t520 * t564) * qJD(4);
t461 = -t467 + t551;
t460 = t466 - t551;
t455 = -t467 - t551;
t454 = -t515 - t626;
t450 = t564 * t480 - t561 * t597;
t449 = t561 * t480 + t564 * t597;
t448 = -t561 * t478 - t564 * t598;
t447 = t564 * t478 - t561 * t598;
t446 = -t561 * t510 - t601;
t445 = -t561 * t509 + t639;
t444 = t564 * t508 - t607;
t443 = t564 * t510 - t607;
t442 = t564 * t509 + t640;
t441 = t561 * t508 + t601;
t439 = t559 * t458 - t616;
t438 = t557 * t458 + t527;
t433 = -t564 * t477 - t561 * t479;
t432 = -t516 * t564 + t561 * t628;
t431 = -t561 * t477 + t564 * t479;
t430 = -t516 * t561 - t564 * t628;
t429 = t564 * t473 - t640;
t428 = t561 * t473 + t639;
t426 = -t467 + t466;
t420 = -t551 - t466;
t419 = -t556 * t464 + t558 * t465;
t418 = -t558 * t464 - t556 * t465;
t417 = (-t468 * t563 + t470 * t560) * t553;
t416 = (-t468 * t560 - t470 * t563) * t553;
t415 = t562 * qJDD(4) + t565 * t419;
t411 = -pkin(6) * t443 + t602;
t410 = -pkin(5) * t495 - t562 * t453 + t558 * t600;
t409 = -pkin(5) * t497 - t562 * t452 + t556 * t600;
t407 = -t470 * qJD(5) - t574;
t406 = -t466 - t467;
t405 = -t556 * t449 + t558 * t450;
t404 = -t556 * t447 + t558 * t448;
t403 = -t558 * t449 - t556 * t450;
t402 = -t558 * t447 - t556 * t448;
t401 = -pkin(6) * t428 + t608;
t400 = -t556 * t443 + t558 * t446;
t399 = -t556 * t442 + t558 * t445;
t398 = -t556 * t441 + t558 * t444;
t397 = t558 * t443 + t556 * t446;
t396 = -t558 * t442 - t556 * t445;
t395 = -t558 * t441 - t556 * t444;
t394 = t563 * t460 - t610;
t393 = -t560 * t461 + t635;
t392 = t560 * t460 + t604;
t391 = t563 * t461 + t636;
t387 = -t560 * t455 - t604;
t386 = t563 * t455 - t610;
t384 = -pkin(5) * t486 + t565 * t413;
t383 = t565 * t414 + t606;
t382 = t562 * t414 - t600;
t381 = -pkin(3) * t479 + pkin(6) * t446 + t608;
t380 = t565 * t399 + t562 * t628;
t379 = t565 * t398 - t562 * t516;
t378 = -t556 * t431 + t558 * t433;
t377 = -t556 * t430 + t558 * t432;
t376 = -t558 * t431 - t556 * t433;
t375 = t558 * t430 + t556 * t432;
t374 = -t463 + t571;
t369 = (qJD(5) + t553) * t470 + t574;
t368 = -t556 * t428 + t558 * t429;
t367 = t558 * t428 + t556 * t429;
t366 = -pkin(3) * t477 + pkin(6) * t429 - t602;
t365 = t565 * t405 - t585;
t364 = t565 * t404 + t585;
t362 = -t470 * t623 - t563 * t571;
t361 = t470 * t622 - t560 * t571;
t360 = -t560 * t407 + t468 * t622;
t359 = t563 * t407 + t468 * t623;
t358 = t565 * t400 + t562 * t479;
t357 = t562 * t400 - t565 * t479;
t356 = t563 * t420 - t636;
t355 = t560 * t420 + t635;
t354 = -t561 * t416 + t564 * t417;
t353 = t564 * t416 + t561 * t417;
t352 = t565 * t378 - t562 * t481;
t351 = t565 * t368 + t562 * t477;
t350 = t562 * t368 - t565 * t477;
t347 = t565 * t377 + t562 * t454;
t346 = t562 * t377 - t565 * t454;
t342 = -pkin(2) * t375 - pkin(3) * t430;
t341 = t559 * t383 - t413 * t557;
t340 = t557 * t383 + t413 * t559;
t339 = -t561 * t392 + t564 * t394;
t338 = -t561 * t391 + t564 * t393;
t337 = t564 * t392 + t561 * t394;
t336 = t564 * t391 + t561 * t393;
t333 = -pkin(7) * t386 + t605;
t332 = -t561 * t386 + t564 * t387;
t331 = t564 * t386 + t561 * t387;
t330 = -pkin(1) * t382 + pkin(2) * t491 - qJ(3) * t414;
t329 = t559 * t358 + t557 * t397;
t328 = t557 * t358 - t559 * t397;
t327 = -pkin(7) * t355 + t611;
t326 = -pkin(3) * t459 + pkin(6) * t335;
t325 = -t370 * t563 - t560 * t374;
t324 = -t563 * t369 - t560 * t629;
t323 = -t370 * t560 + t563 * t374;
t322 = -t560 * t369 + t563 * t629;
t321 = -pkin(2) * t397 - pkin(3) * t443 + t390;
t320 = -t561 * t361 + t564 * t362;
t319 = -t561 * t359 + t564 * t360;
t318 = t564 * t361 + t561 * t362;
t317 = t564 * t359 + t561 * t360;
t316 = -t561 * t355 + t564 * t356;
t315 = t564 * t355 + t561 * t356;
t314 = -pkin(6) * t430 - t334;
t313 = -pkin(5) * t382 - (pkin(2) * t562 - qJ(3) * t565) * t413;
t312 = t559 * t351 + t557 * t367;
t311 = t557 * t351 - t559 * t367;
t310 = -pkin(2) * t367 - pkin(3) * t428 + t389;
t309 = t559 * t347 + t557 * t375;
t308 = t557 * t347 - t559 * t375;
t307 = -t556 * t353 + t558 * t354;
t306 = -t558 * t353 - t556 * t354;
t305 = -qJ(3) * t397 - t556 * t381 + t558 * t411;
t304 = t565 * t307 + t562 * t588;
t303 = -pkin(3) * t454 + pkin(6) * t432 + t335;
t302 = -pkin(4) * t629 + pkin(7) * t387 + t611;
t298 = -qJ(3) * t367 - t556 * t366 + t558 * t401;
t297 = -pkin(4) * t369 + pkin(7) * t356 - t605;
t296 = -t556 * t337 + t558 * t339;
t295 = -t556 * t336 + t558 * t338;
t294 = -t558 * t337 - t556 * t339;
t293 = -t558 * t336 - t556 * t338;
t292 = t558 * t335 - t621;
t291 = t556 * t335 + t614;
t290 = -t556 * t331 + t558 * t332;
t289 = t558 * t331 + t556 * t332;
t288 = -pkin(1) * t357 + pkin(2) * t479 - qJ(3) * t400 - t558 * t381 - t556 * t411;
t287 = t565 * t292 + t562 * t459;
t286 = t562 * t292 - t565 * t459;
t285 = -t561 * t323 + t564 * t325;
t284 = -t561 * t322 + t564 * t324;
t283 = t564 * t323 + t561 * t325;
t282 = t564 * t322 + t561 * t324;
t281 = -t556 * t318 + t558 * t320;
t280 = -t556 * t317 + t558 * t319;
t279 = -t558 * t318 - t556 * t320;
t278 = -t558 * t317 - t556 * t319;
t277 = -pkin(1) * t350 + pkin(2) * t477 - qJ(3) * t368 - t558 * t366 - t556 * t401;
t276 = -t556 * t315 + t558 * t316;
t275 = t558 * t315 + t556 * t316;
t274 = t565 * t296 - t562 * t370;
t273 = t565 * t295 - t562 * t374;
t272 = t565 * t290 + t562 * t629;
t271 = t562 * t290 - t565 * t629;
t270 = t565 * t281 + t586;
t269 = t565 * t280 - t586;
t268 = -pkin(2) * t291 - pkin(3) * t334;
t267 = t565 * t276 + t562 * t369;
t266 = t562 * t276 - t565 * t369;
t263 = -pkin(5) * t357 + t565 * t305 - t562 * t321;
t262 = -qJ(3) * t375 - t556 * t303 + t558 * t314;
t261 = -pkin(6) * t331 - t561 * t302 + t564 * t333;
t260 = -pkin(4) * t388 + pkin(7) * t265;
t259 = -pkin(5) * t350 + t565 * t298 - t562 * t310;
t258 = -pkin(6) * t315 - t561 * t297 + t564 * t327;
t257 = -pkin(3) * t629 + pkin(6) * t332 + t564 * t302 + t561 * t333;
t256 = -pkin(6) * t614 - qJ(3) * t291 - t556 * t326;
t255 = t559 * t287 + t557 * t291;
t254 = t557 * t287 - t559 * t291;
t253 = -pkin(1) * t346 + pkin(2) * t454 - qJ(3) * t377 - t558 * t303 - t556 * t314;
t252 = -pkin(7) * t323 - t264;
t251 = -pkin(3) * t369 + pkin(6) * t316 + t564 * t297 + t561 * t327;
t250 = t559 * t272 + t557 * t289;
t249 = t557 * t272 - t559 * t289;
t248 = -t556 * t283 + t558 * t285;
t247 = -t556 * t282 + t558 * t284;
t246 = t558 * t283 + t556 * t285;
t245 = -t558 * t282 - t556 * t284;
t244 = -pkin(4) * t406 + pkin(7) * t325 + t265;
t243 = -pkin(5) * t346 + t565 * t262 - t562 * t342;
t242 = t565 * t247 - t562 * t426;
t241 = -pkin(2) * t289 - pkin(3) * t331 - pkin(4) * t386 + t301;
t240 = t565 * t248 + t562 * t406;
t239 = t562 * t248 - t565 * t406;
t238 = t559 * t267 + t557 * t275;
t237 = t557 * t267 - t559 * t275;
t236 = -pkin(2) * t275 - pkin(3) * t315 - pkin(4) * t355 + t300;
t235 = t564 * t265 - t609;
t234 = t561 * t265 + t603;
t233 = -pkin(1) * t286 + pkin(2) * t459 + pkin(6) * t621 - qJ(3) * t292 - t558 * t326;
t232 = -pkin(2) * t246 - pkin(3) * t283 - pkin(4) * t323;
t231 = -pkin(5) * t286 + t565 * t256 - t562 * t268;
t230 = -qJ(3) * t289 - t556 * t257 + t558 * t261;
t229 = t559 * t240 + t557 * t246;
t228 = t557 * t240 - t559 * t246;
t227 = -qJ(3) * t275 - t556 * t251 + t558 * t258;
t226 = -pkin(6) * t283 - t561 * t244 + t564 * t252;
t225 = -pkin(3) * t406 + pkin(6) * t285 + t564 * t244 + t561 * t252;
t224 = -t556 * t234 + t558 * t235;
t223 = t558 * t234 + t556 * t235;
t222 = -pkin(1) * t271 + pkin(2) * t629 - qJ(3) * t290 - t558 * t257 - t556 * t261;
t221 = -pkin(6) * t234 - pkin(7) * t603 - t561 * t260;
t220 = t565 * t224 + t562 * t388;
t219 = t562 * t224 - t565 * t388;
t218 = -pkin(3) * t388 + pkin(6) * t235 - pkin(7) * t609 + t564 * t260;
t217 = -pkin(1) * t266 + pkin(2) * t369 - qJ(3) * t276 - t558 * t251 - t556 * t258;
t216 = -pkin(5) * t271 + t565 * t230 - t562 * t241;
t215 = -pkin(5) * t266 + t565 * t227 - t562 * t236;
t214 = -pkin(2) * t223 - pkin(3) * t234 - pkin(4) * t264;
t213 = t559 * t220 + t557 * t223;
t212 = t557 * t220 - t559 * t223;
t211 = -qJ(3) * t246 - t556 * t225 + t558 * t226;
t210 = -pkin(1) * t239 + pkin(2) * t406 - qJ(3) * t248 - t558 * t225 - t556 * t226;
t209 = -qJ(3) * t223 - t556 * t218 + t558 * t221;
t208 = -pkin(5) * t239 + t565 * t211 - t562 * t232;
t207 = -pkin(1) * t219 + pkin(2) * t388 - qJ(3) * t224 - t558 * t218 - t556 * t221;
t206 = -pkin(5) * t219 + t565 * t209 - t562 * t214;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t493, 0, 0, 0, 0, 0, 0, -t522, -t612, 0, t439, 0, 0, 0, 0, 0, 0, -t637, t490, t559 * t487, t341, 0, 0, 0, 0, 0, 0, t312, t329, t309, t255, 0, 0, 0, 0, 0, 0, t238, t250, t229, t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t492, 0, 0, 0, 0, 0, 0, -t521, -t617, 0, t438, 0, 0, 0, 0, 0, 0, -t638, t489, t557 * t487, t340, 0, 0, 0, 0, 0, 0, t311, t328, t308, t254, 0, 0, 0, 0, 0, 0, t237, t249, t228, t212; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t599, 0, 0, 0, 0, 0, 0, t536, -t535, 0, -t457, 0, 0, 0, 0, 0, 0, t497, t495, t486, t382, 0, 0, 0, 0, 0, 0, t350, t357, t346, t286, 0, 0, 0, 0, 0, 0, t266, t271, t239, t219; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t632, -t631, -t492, -qJ(1) * t492, 0, 0, t612, 0, -t522, t557 * qJDD(2), t559 * t496 + t557 * t576, t559 * t499 + t557 * t575, t559 * t457, -qJ(1) * t438 - (pkin(1) * t557 - pkin(5) * t559) * t457, t557 * t589 + t613, t559 * t488 + 0.2e1 * t557 * t582, t490, t547 * t557 - t613, t637, 0, t559 * t409 - t557 * t577, t559 * t410 - t557 * t578, t559 * t384 - t557 * t579, -qJ(1) * t340 + t559 * t313 - t557 * t330, t559 * t365 - t557 * t403, t559 * t352 - t557 * t376, t559 * t380 - t557 * t396, t559 * t364 - t557 * t402, t559 * t379 - t557 * t395, t559 * t415 - t557 * t418, -qJ(1) * t311 + t559 * t259 - t557 * t277, -qJ(1) * t328 + t559 * t263 - t557 * t288, -qJ(1) * t308 + t559 * t243 - t557 * t253, -qJ(1) * t254 + t559 * t231 - t557 * t233, t559 * t270 - t557 * t279, t559 * t242 - t557 * t245, t559 * t273 - t557 * t293, t559 * t269 - t557 * t278, t559 * t274 - t557 * t294, t559 * t304 - t557 * t306, -qJ(1) * t237 + t559 * t215 - t557 * t217, -qJ(1) * t249 + t559 * t216 - t557 * t222, -qJ(1) * t228 + t559 * t208 - t557 * t210, -qJ(1) * t212 + t559 * t206 - t557 * t207; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t631, -t632, t493, qJ(1) * t493, 0, 0, t617, 0, -t521, -t559 * qJDD(2), t557 * t496 - t559 * t576, t557 * t499 - t559 * t575, t557 * t457, qJ(1) * t439 - (-pkin(1) * t559 - pkin(5) * t557) * t457, -t559 * t589 + t618, t557 * t488 - 0.2e1 * t559 * t582, t489, -t547 * t559 - t618, t638, 0, t557 * t409 + t559 * t577, t557 * t410 + t559 * t578, t557 * t384 + t559 * t579, qJ(1) * t341 + t557 * t313 + t559 * t330, t557 * t365 + t559 * t403, t557 * t352 + t559 * t376, t557 * t380 + t559 * t396, t557 * t364 + t559 * t402, t557 * t379 + t559 * t395, t557 * t415 + t559 * t418, qJ(1) * t312 + t557 * t259 + t559 * t277, qJ(1) * t329 + t557 * t263 + t559 * t288, qJ(1) * t309 + t557 * t243 + t559 * t253, qJ(1) * t255 + t557 * t231 + t559 * t233, t557 * t270 + t559 * t279, t557 * t242 + t559 * t245, t557 * t273 + t559 * t293, t557 * t269 + t559 * t278, t557 * t274 + t559 * t294, t557 * t304 + t559 * t306, qJ(1) * t238 + t557 * t215 + t559 * t217, qJ(1) * t250 + t557 * t216 + t559 * t222, qJ(1) * t229 + t557 * t208 + t559 * t210, qJ(1) * t213 + t557 * t206 + t559 * t207; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t537, t538, 0, 0, 0, 0, t535, 0, t536, 0, -t499, t496, t458, pkin(1) * t537 + pkin(5) * t458, t503, t562 * t531 + t565 * t533, t495, -t503, -t497, 0, -pkin(5) * t500 + t565 * t452 + t556 * t606, pkin(5) * t498 + t565 * t453 + t558 * t606, pkin(5) * t487 + t562 * t413, pkin(5) * t383 - (-pkin(2) * t565 - qJ(3) * t562 - pkin(1)) * t413, t562 * t405 + t583, t562 * t378 + t565 * t481, t562 * t399 - t565 * t628, t562 * t404 - t583, t562 * t398 + t565 * t516, -t565 * qJDD(4) + t562 * t419, -pkin(1) * t367 + pkin(5) * t351 + t562 * t298 + t565 * t310, -pkin(1) * t397 + pkin(5) * t358 + t562 * t305 + t565 * t321, -pkin(1) * t375 + pkin(5) * t347 + t562 * t262 + t565 * t342, -pkin(1) * t291 + pkin(5) * t287 + t562 * t256 + t565 * t268, t562 * t281 - t584, t562 * t247 + t565 * t426, t562 * t295 + t565 * t374, t562 * t280 + t584, t562 * t296 + t565 * t370, t562 * t307 - t565 * t588, -pkin(1) * t275 + pkin(5) * t267 + t562 * t227 + t565 * t236, -pkin(1) * t289 + pkin(5) * t272 + t562 * t230 + t565 * t241, -pkin(1) * t246 + pkin(5) * t240 + t562 * t211 + t565 * t232, -pkin(1) * t223 + pkin(5) * t220 + t562 * t209 + t565 * t214;];
tauB_reg = t1;
