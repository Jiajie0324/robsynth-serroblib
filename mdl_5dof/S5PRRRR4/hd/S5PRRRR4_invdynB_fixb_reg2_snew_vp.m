% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRRRR4
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
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:08
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRRRR4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR4_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR4_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRR4_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRR4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR4_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:08:03
% EndTime: 2019-12-05 17:08:15
% DurationCPUTime: 9.87s
% Computational Cost: add. (39477->501), mult. (54632->756), div. (0->0), fcn. (38115->10), ass. (0->342)
t514 = qJD(2) + qJD(3);
t510 = t514 ^ 2;
t526 = cos(qJ(3));
t512 = qJDD(2) + qJDD(3);
t522 = sin(qJ(3));
t559 = t522 * t512;
t475 = t526 * t510 + t559;
t551 = t526 * t512;
t478 = t522 * t510 - t551;
t523 = sin(qJ(2));
t527 = cos(qJ(2));
t417 = t527 * t475 - t523 * t478;
t517 = g(3) - qJDD(1);
t455 = pkin(6) * t475 - t526 * t517;
t593 = pkin(6) * t478 - t522 * t517;
t347 = pkin(5) * t417 + t527 * t455 - t523 * t593;
t422 = t523 * t475 + t527 * t478;
t518 = sin(pkin(9));
t519 = cos(pkin(9));
t367 = t518 * t417 + t519 * t422;
t601 = pkin(5) * t422 + t523 * t455 + t527 * t593;
t608 = qJ(1) * t367 + t518 * t347 + t519 * t601;
t592 = t519 * t417 - t518 * t422;
t607 = qJ(1) * t592 + t519 * t347 - t518 * t601;
t491 = t518 * g(1) - t519 * g(2);
t492 = t519 * g(1) + t518 * g(2);
t548 = -t523 * t491 + t527 * t492;
t578 = qJD(2) ^ 2;
t428 = -pkin(2) * t578 - t548;
t531 = t527 * t491 + t523 * t492;
t530 = qJDD(2) * pkin(2) + t531;
t382 = t522 * t428 - t526 * t530;
t383 = t526 * t428 + t522 * t530;
t539 = t522 * t382 + t526 * t383;
t315 = t526 * t382 - t522 * t383;
t549 = t527 * t315;
t268 = -t523 * t539 + t549;
t557 = t523 * t315;
t598 = t527 * t539 + t557;
t229 = t518 * t268 + t519 * t598;
t604 = t519 * t268 - t518 * t598;
t538 = -t523 * t531 - t527 * t548;
t390 = t523 * t548 - t527 * t531;
t568 = t519 * t390;
t597 = -t518 * t538 + t568;
t572 = t518 * t390;
t320 = t519 * t538 + t572;
t489 = t523 * qJDD(2) + t527 * t578;
t490 = t527 * qJDD(2) - t523 * t578;
t430 = -t518 * t489 + t519 * t490;
t465 = pkin(5) * t489 - t527 * t517;
t532 = -pkin(5) * t490 - t523 * t517;
t596 = -qJ(1) * t430 + t518 * t465 + t519 * t532;
t520 = sin(qJ(5));
t524 = cos(qJ(5));
t525 = cos(qJ(4));
t521 = sin(qJ(4));
t574 = t514 * t521;
t458 = -t524 * t525 * t514 + t520 * t574;
t460 = (t520 * t525 + t521 * t524) * t514;
t414 = t460 * t458;
t544 = qJDD(4) + qJDD(5);
t582 = -t414 + t544;
t595 = t520 * t582;
t594 = t524 * t582;
t580 = t519 * t489 + t518 * t490;
t590 = qJ(1) * t580 + t519 * t465 - t518 * t532;
t513 = qJD(4) + qJD(5);
t451 = t513 * t458;
t546 = qJD(4) * t514;
t540 = t525 * t546;
t560 = t521 * t512;
t470 = t540 + t560;
t501 = t525 * t512;
t541 = t521 * t546;
t471 = t501 - t541;
t529 = t458 * qJD(5) - t524 * t470 - t520 * t471;
t581 = -t451 - t529;
t537 = t520 * t470 - t524 * t471;
t360 = (qJD(5) - t513) * t460 + t537;
t456 = t458 ^ 2;
t457 = t460 ^ 2;
t509 = t513 ^ 2;
t577 = pkin(1) * t517;
t576 = t513 * t520;
t575 = t513 * t524;
t515 = t521 ^ 2;
t573 = t515 * t510;
t516 = t525 ^ 2;
t502 = t516 * t510;
t569 = t518 * t517;
t567 = t519 * t517;
t374 = -t512 * pkin(3) - t510 * pkin(7) + t382;
t488 = qJD(4) * pkin(4) - pkin(8) * t574;
t328 = -t471 * pkin(4) - pkin(8) * t502 + t488 * t574 + t374;
t566 = t520 * t328;
t407 = t414 + t544;
t565 = t520 * t407;
t375 = -t510 * pkin(3) + t512 * pkin(7) + t383;
t357 = t521 * t375 + t525 * t517;
t497 = t521 * t510 * t525;
t486 = qJDD(4) + t497;
t324 = (-t470 + t540) * pkin(8) + t486 * pkin(4) - t357;
t358 = t525 * t375 - t521 * t517;
t325 = -pkin(4) * t502 + t471 * pkin(8) - qJD(4) * t488 + t358;
t273 = -t524 * t324 + t520 * t325;
t274 = t520 * t324 + t524 * t325;
t238 = -t524 * t273 + t520 * t274;
t564 = t521 * t238;
t563 = t521 * t374;
t562 = t521 * t486;
t487 = qJDD(4) - t497;
t561 = t521 * t487;
t556 = t524 * t328;
t555 = t524 * t407;
t554 = t525 * t238;
t553 = t525 * t374;
t552 = t525 * t487;
t547 = t515 + t516;
t543 = t522 * t414;
t542 = t526 * t414;
t239 = t520 * t273 + t524 * t274;
t301 = t521 * t357 + t525 * t358;
t443 = -t518 * t491 - t519 * t492;
t534 = t522 * t497;
t533 = t526 * t497;
t300 = t525 * t357 - t521 * t358;
t442 = t519 * t491 - t518 * t492;
t528 = qJD(4) ^ 2;
t496 = -t502 - t528;
t495 = t502 - t528;
t494 = -t528 - t573;
t493 = t528 - t573;
t480 = t502 - t573;
t479 = t502 + t573;
t474 = t525 * t486;
t473 = t547 * t512;
t472 = t501 - 0.2e1 * t541;
t469 = 0.2e1 * t540 + t560;
t468 = t547 * t546;
t449 = -t457 + t509;
t448 = t456 - t509;
t447 = t522 * qJDD(4) + t526 * t468;
t446 = -t526 * qJDD(4) + t522 * t468;
t441 = t525 * t470 - t515 * t546;
t440 = -t521 * t471 - t516 * t546;
t439 = -t457 - t509;
t438 = -t521 * t494 - t552;
t437 = -t521 * t493 + t474;
t436 = t525 * t496 - t562;
t435 = t525 * t495 - t561;
t432 = t525 * t494 - t561;
t431 = t521 * t496 + t474;
t420 = t526 * t473 - t522 * t479;
t416 = t522 * t473 + t526 * t479;
t415 = -t521 * t469 + t525 * t472;
t413 = -t457 + t456;
t412 = t526 * t437 + t521 * t559;
t411 = t526 * t435 + t501 * t522;
t410 = t522 * t437 - t521 * t551;
t409 = t522 * t435 - t525 * t551;
t405 = t526 * t441 - t534;
t404 = t526 * t440 + t534;
t403 = t522 * t441 + t533;
t402 = t522 * t440 - t533;
t401 = -t509 - t456;
t400 = t526 * t438 + t522 * t469;
t399 = t526 * t436 - t522 * t472;
t398 = t522 * t438 - t526 * t469;
t397 = t522 * t436 + t526 * t472;
t396 = (-t458 * t524 + t460 * t520) * t513;
t395 = (-t458 * t520 - t460 * t524) * t513;
t394 = -t523 * t446 + t527 * t447;
t393 = t527 * t446 + t523 * t447;
t392 = -t456 - t457;
t389 = t526 * t415 - t522 * t480;
t386 = t522 * t415 + t526 * t480;
t384 = -t460 * qJD(5) - t537;
t381 = pkin(5) * t538 + t577;
t379 = t524 * t448 - t565;
t378 = -t520 * t449 + t594;
t377 = t520 * t448 + t555;
t376 = t524 * t449 + t595;
t373 = -t520 * t439 - t555;
t372 = t524 * t439 - t565;
t371 = -t523 * t416 + t527 * t420;
t370 = t527 * t416 + t523 * t420;
t364 = -t451 + t529;
t359 = (qJD(5) + t513) * t460 + t537;
t355 = -t460 * t576 - t524 * t529;
t354 = t460 * t575 - t520 * t529;
t353 = -t520 * t384 + t458 * t575;
t352 = t524 * t384 + t458 * t576;
t351 = -t523 * t410 + t527 * t412;
t350 = -t523 * t409 + t527 * t411;
t349 = t527 * t410 + t523 * t412;
t348 = t527 * t409 + t523 * t411;
t343 = t524 * t401 - t595;
t342 = t520 * t401 + t594;
t341 = -t523 * t403 + t527 * t405;
t340 = -t523 * t402 + t527 * t404;
t339 = t527 * t403 + t523 * t405;
t338 = t527 * t402 + t523 * t404;
t337 = -t523 * t398 + t527 * t400;
t336 = -t523 * t397 + t527 * t399;
t335 = t527 * t398 + t523 * t400;
t334 = t527 * t397 + t523 * t399;
t333 = -pkin(7) * t432 + t553;
t332 = -pkin(7) * t431 + t563;
t331 = -t521 * t395 + t525 * t396;
t330 = -pkin(3) * t432 + t358;
t329 = -pkin(3) * t431 + t357;
t327 = t526 * t331 + t522 * t544;
t326 = t522 * t331 - t526 * t544;
t323 = -t523 * t386 + t527 * t389;
t322 = t527 * t386 + t523 * t389;
t312 = pkin(2) * t517 + pkin(6) * t539;
t311 = -t521 * t377 + t525 * t379;
t310 = -t521 * t376 + t525 * t378;
t309 = -t521 * t372 + t525 * t373;
t308 = t525 * t372 + t521 * t373;
t307 = -t518 * t370 + t519 * t371;
t306 = t519 * t370 + t518 * t371;
t305 = -t360 * t524 - t520 * t364;
t304 = -t524 * t359 - t520 * t581;
t303 = -t360 * t520 + t524 * t364;
t302 = -t520 * t359 + t524 * t581;
t298 = -t521 * t354 + t525 * t355;
t297 = -t521 * t352 + t525 * t353;
t296 = -t521 * t342 + t525 * t343;
t295 = t525 * t342 + t521 * t343;
t294 = -pkin(8) * t372 + t556;
t293 = -pkin(8) * t342 + t566;
t292 = -pkin(6) * t416 + t526 * t300;
t291 = pkin(6) * t420 + t522 * t300;
t290 = -t518 * t335 + t519 * t337;
t289 = -t518 * t334 + t519 * t336;
t288 = t519 * t335 + t518 * t337;
t287 = t519 * t334 + t518 * t336;
t286 = t526 * t298 + t543;
t285 = t526 * t297 - t543;
t284 = t522 * t298 - t542;
t283 = t522 * t297 + t542;
t282 = t526 * t311 - t522 * t360;
t281 = t526 * t310 - t522 * t364;
t280 = t522 * t311 + t526 * t360;
t279 = t522 * t310 + t526 * t364;
t278 = -t523 * t326 + t527 * t327;
t277 = t527 * t326 + t523 * t327;
t276 = t526 * t309 + t522 * t581;
t275 = t522 * t309 - t526 * t581;
t271 = t526 * t301 + t522 * t374;
t270 = t522 * t301 - t526 * t374;
t267 = t526 * t296 + t522 * t359;
t264 = t522 * t296 - t526 * t359;
t263 = -pkin(6) * t398 - t522 * t330 + t526 * t333;
t262 = -pkin(6) * t397 - t522 * t329 + t526 * t332;
t261 = -pkin(4) * t581 + pkin(8) * t373 + t566;
t260 = -pkin(4) * t359 + pkin(8) * t343 - t556;
t259 = -pkin(2) * t432 + pkin(6) * t400 + t526 * t330 + t522 * t333;
t258 = -pkin(2) * t431 + pkin(6) * t399 + t526 * t329 + t522 * t332;
t257 = -t521 * t303 + t525 * t305;
t256 = -t521 * t302 + t525 * t304;
t255 = t525 * t303 + t521 * t305;
t254 = t526 * t256 - t522 * t413;
t253 = t522 * t256 + t526 * t413;
t252 = t526 * t257 + t522 * t392;
t251 = t522 * t257 - t526 * t392;
t250 = -t523 * t284 + t527 * t286;
t249 = -t523 * t283 + t527 * t285;
t248 = t527 * t284 + t523 * t286;
t247 = t527 * t283 + t523 * t285;
t246 = -t523 * t280 + t527 * t282;
t245 = -t523 * t279 + t527 * t281;
t244 = t527 * t280 + t523 * t282;
t243 = t527 * t279 + t523 * t281;
t242 = -pkin(3) * t308 - pkin(4) * t372 + t274;
t241 = -t523 * t275 + t527 * t276;
t240 = t527 * t275 + t523 * t276;
t237 = -pkin(5) * t370 - t523 * t291 + t527 * t292;
t236 = pkin(5) * t371 + t527 * t291 + t523 * t292;
t235 = -pkin(3) * t255 - pkin(4) * t303;
t234 = -t523 * t270 + t527 * t271;
t233 = t527 * t270 + t523 * t271;
t232 = -pkin(3) * t295 - pkin(4) * t342 + t273;
t231 = -t523 * t264 + t527 * t267;
t230 = t527 * t264 + t523 * t267;
t227 = pkin(5) * t268 + pkin(6) * t549 - t523 * t312;
t226 = pkin(5) * t598 + pkin(6) * t557 + t527 * t312 + t577;
t225 = -pkin(6) * t270 - (pkin(3) * t522 - pkin(7) * t526) * t300;
t224 = -pkin(4) * t328 + pkin(8) * t239;
t223 = -pkin(7) * t308 - t521 * t261 + t525 * t294;
t222 = -pkin(8) * t303 - t238;
t221 = -pkin(5) * t335 - t523 * t259 + t527 * t263;
t220 = -pkin(5) * t334 - t523 * t258 + t527 * t262;
t219 = -pkin(7) * t295 - t521 * t260 + t525 * t293;
t218 = -pkin(1) * t432 + pkin(5) * t337 + t527 * t259 + t523 * t263;
t217 = -pkin(1) * t431 + pkin(5) * t336 + t527 * t258 + t523 * t262;
t216 = -pkin(4) * t392 + pkin(8) * t305 + t239;
t215 = -t523 * t253 + t527 * t254;
t214 = t527 * t253 + t523 * t254;
t213 = pkin(6) * t271 - (-pkin(3) * t526 - pkin(7) * t522 - pkin(2)) * t300;
t212 = -t523 * t251 + t527 * t252;
t211 = t527 * t251 + t523 * t252;
t210 = -t518 * t240 + t519 * t241;
t209 = t519 * t240 + t518 * t241;
t208 = t525 * t239 - t564;
t207 = t521 * t239 + t554;
t206 = -t518 * t233 + t519 * t234;
t205 = t519 * t233 + t518 * t234;
t204 = -t518 * t230 + t519 * t231;
t203 = t519 * t230 + t518 * t231;
t202 = t526 * t208 + t522 * t328;
t201 = t522 * t208 - t526 * t328;
t200 = -pkin(6) * t275 + t526 * t223 - t522 * t242;
t199 = -pkin(6) * t264 + t526 * t219 - t522 * t232;
t198 = -pkin(3) * t207 - pkin(4) * t238;
t197 = -pkin(2) * t308 + pkin(6) * t276 + t522 * t223 + t526 * t242;
t196 = -t518 * t211 + t519 * t212;
t195 = t519 * t211 + t518 * t212;
t194 = -pkin(2) * t295 + pkin(6) * t267 + t522 * t219 + t526 * t232;
t193 = -pkin(7) * t255 - t521 * t216 + t525 * t222;
t192 = -pkin(5) * t233 - t523 * t213 + t527 * t225;
t191 = pkin(1) * t300 + pkin(5) * t234 + t527 * t213 + t523 * t225;
t190 = -pkin(7) * t207 - pkin(8) * t554 - t521 * t224;
t189 = -t523 * t201 + t527 * t202;
t188 = t527 * t201 + t523 * t202;
t187 = -pkin(6) * t251 + t526 * t193 - t522 * t235;
t186 = -pkin(2) * t255 + pkin(6) * t252 + t522 * t193 + t526 * t235;
t185 = -pkin(5) * t240 - t523 * t197 + t527 * t200;
t184 = -pkin(1) * t308 + pkin(5) * t241 + t527 * t197 + t523 * t200;
t183 = -pkin(5) * t230 - t523 * t194 + t527 * t199;
t182 = -pkin(1) * t295 + pkin(5) * t231 + t527 * t194 + t523 * t199;
t181 = -t518 * t188 + t519 * t189;
t180 = t519 * t188 + t518 * t189;
t179 = -pkin(6) * t201 + t526 * t190 - t522 * t198;
t178 = -pkin(2) * t207 + pkin(6) * t202 + t522 * t190 + t526 * t198;
t177 = -pkin(5) * t211 - t523 * t186 + t527 * t187;
t176 = -pkin(1) * t255 + pkin(5) * t212 + t527 * t186 + t523 * t187;
t175 = -pkin(5) * t188 - t523 * t178 + t527 * t179;
t174 = -pkin(1) * t207 + pkin(5) * t189 + t527 * t178 + t523 * t179;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t443, 0, 0, 0, 0, 0, 0, -t580, -t430, 0, t320, 0, 0, 0, 0, 0, 0, -t592, t367, 0, t229, 0, 0, 0, 0, 0, 0, t289, t290, t307, t206, 0, 0, 0, 0, 0, 0, t204, t210, t196, t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t442, 0, 0, 0, 0, 0, 0, t430, -t580, 0, -t597, 0, 0, 0, 0, 0, 0, -t367, -t592, 0, -t604, 0, 0, 0, 0, 0, 0, t287, t288, t306, t205, 0, 0, 0, 0, 0, 0, t203, t209, t195, t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t517, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t517, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t517, 0, 0, 0, 0, 0, 0, t431, t432, 0, -t300, 0, 0, 0, 0, 0, 0, t295, t308, t255, t207; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t569, -t567, -t442, -qJ(1) * t442, 0, 0, t430, 0, -t580, 0, t596, t590, t597, pkin(5) * t568 + qJ(1) * t597 - t518 * t381, 0, 0, -t367, 0, -t592, 0, t608, t607, t604, qJ(1) * t604 - t518 * t226 + t519 * t227, -t518 * t339 + t519 * t341, -t518 * t322 + t519 * t323, -t518 * t349 + t519 * t351, -t518 * t338 + t519 * t340, -t518 * t348 + t519 * t350, -t518 * t393 + t519 * t394, -qJ(1) * t287 - t518 * t217 + t519 * t220, -qJ(1) * t288 - t518 * t218 + t519 * t221, -qJ(1) * t306 - t518 * t236 + t519 * t237, -qJ(1) * t205 - t518 * t191 + t519 * t192, -t518 * t248 + t519 * t250, -t518 * t214 + t519 * t215, -t518 * t243 + t519 * t245, -t518 * t247 + t519 * t249, -t518 * t244 + t519 * t246, -t518 * t277 + t519 * t278, -qJ(1) * t203 - t518 * t182 + t519 * t183, -qJ(1) * t209 - t518 * t184 + t519 * t185, -qJ(1) * t195 - t518 * t176 + t519 * t177, -qJ(1) * t180 - t518 * t174 + t519 * t175; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t567, -t569, t443, qJ(1) * t443, 0, 0, t580, 0, t430, 0, -t590, t596, t320, pkin(5) * t572 + qJ(1) * t320 + t519 * t381, 0, 0, t592, 0, -t367, 0, -t607, t608, t229, qJ(1) * t229 + t519 * t226 + t518 * t227, t519 * t339 + t518 * t341, t519 * t322 + t518 * t323, t519 * t349 + t518 * t351, t519 * t338 + t518 * t340, t519 * t348 + t518 * t350, t519 * t393 + t518 * t394, qJ(1) * t289 + t519 * t217 + t518 * t220, qJ(1) * t290 + t519 * t218 + t518 * t221, qJ(1) * t307 + t519 * t236 + t518 * t237, qJ(1) * t206 + t519 * t191 + t518 * t192, t519 * t248 + t518 * t250, t519 * t214 + t518 * t215, t519 * t243 + t518 * t245, t519 * t247 + t518 * t249, t519 * t244 + t518 * t246, t519 * t277 + t518 * t278, qJ(1) * t204 + t519 * t182 + t518 * t183, qJ(1) * t210 + t519 * t184 + t518 * t185, qJ(1) * t196 + t519 * t176 + t518 * t177, qJ(1) * t181 + t519 * t174 + t518 * t175; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t491, t492, 0, 0, 0, 0, 0, 0, 0, qJDD(2), pkin(1) * t490 + t531, -pkin(1) * t489 + t548, 0, -pkin(1) * t390, 0, 0, 0, 0, 0, t512, -pkin(1) * t422 - pkin(2) * t478 - t382, -pkin(1) * t417 - pkin(2) * t475 - t383, 0, -pkin(1) * t268 - pkin(2) * t315, (t470 + t540) * t521, t525 * t469 + t521 * t472, t525 * t493 + t562, (t471 - t541) * t525, t521 * t495 + t552, 0, pkin(1) * t334 + pkin(2) * t397 + pkin(3) * t472 + pkin(7) * t436 - t553, pkin(1) * t335 + pkin(2) * t398 - pkin(3) * t469 + pkin(7) * t438 + t563, pkin(1) * t370 + pkin(2) * t416 + pkin(3) * t479 + pkin(7) * t473 + t301, pkin(1) * t233 + pkin(2) * t270 - pkin(3) * t374 + pkin(7) * t301, t525 * t354 + t521 * t355, t525 * t302 + t521 * t304, t525 * t376 + t521 * t378, t525 * t352 + t521 * t353, t525 * t377 + t521 * t379, t525 * t395 + t521 * t396, pkin(1) * t230 + pkin(2) * t264 - pkin(3) * t359 + pkin(7) * t296 + t525 * t260 + t521 * t293, pkin(1) * t240 + pkin(2) * t275 - pkin(3) * t581 + pkin(7) * t309 + t525 * t261 + t521 * t294, pkin(1) * t211 + pkin(2) * t251 - pkin(3) * t392 + pkin(7) * t257 + t525 * t216 + t521 * t222, pkin(1) * t188 + pkin(2) * t201 - pkin(3) * t328 + pkin(7) * t208 - pkin(8) * t564 + t525 * t224;];
tauB_reg = t1;
