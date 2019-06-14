% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPPRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPPRRP5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP5_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP5_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP5_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRRP5_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:58:32
% EndTime: 2019-05-05 14:58:41
% DurationCPUTime: 4.88s
% Computational Cost: add. (13938->415), mult. (26615->538), div. (0->0), fcn. (15203->6), ass. (0->297)
t467 = sin(qJ(5));
t470 = cos(qJ(5));
t471 = cos(qJ(4));
t521 = qJD(1) * t471;
t428 = -t470 * qJD(4) + t467 * t521;
t430 = qJD(4) * t467 + t470 * t521;
t395 = t430 * t428;
t518 = qJD(1) * qJD(4);
t506 = t471 * t518;
t468 = sin(qJ(4));
t516 = qJDD(1) * t468;
t434 = -t506 - t516;
t426 = qJDD(5) - t434;
t503 = -t426 + t395;
t538 = t503 * t467;
t537 = t503 * t470;
t558 = pkin(2) + pkin(3);
t562 = t503 * pkin(5);
t545 = pkin(1) + qJ(3);
t544 = qJ(2) - pkin(7);
t522 = qJD(1) * t468;
t452 = qJD(5) + t522;
t414 = t452 * t428;
t507 = t468 * t518;
t514 = qJDD(1) * t471;
t435 = -t507 + t514;
t481 = qJD(5) * t428 - qJDD(4) * t467 - t435 * t470;
t561 = -t414 - t481;
t502 = -t470 * qJDD(4) + t467 * t435;
t354 = (qJD(5) - t452) * t430 + t502;
t474 = qJD(1) ^ 2;
t469 = sin(qJ(1));
t472 = cos(qJ(1));
t445 = t472 * g(1) + t469 * g(2);
t463 = qJDD(1) * qJ(2);
t493 = t445 - t463;
t560 = t474 * t545 - qJDD(3) + t493;
t424 = t428 ^ 2;
t425 = t430 ^ 2;
t451 = t452 ^ 2;
t559 = 2 * qJD(3);
t382 = -t451 - t424;
t324 = t382 * t467 - t537;
t557 = pkin(4) * t324;
t387 = -t425 - t451;
t372 = t395 + t426;
t540 = t372 * t467;
t332 = t387 * t470 - t540;
t556 = pkin(4) * t332;
t555 = pkin(4) * t468;
t554 = pkin(4) * t471;
t358 = -t414 + t481;
t309 = -t354 * t470 - t358 * t467;
t370 = -t424 - t425;
t270 = t309 * t468 - t370 * t471;
t307 = -t354 * t467 + t358 * t470;
t243 = t270 * t469 + t307 * t472;
t553 = pkin(6) * t243;
t325 = t382 * t470 + t538;
t353 = (qJD(5) + t452) * t430 + t502;
t283 = t325 * t468 - t353 * t471;
t252 = t283 * t469 + t324 * t472;
t552 = pkin(6) * t252;
t539 = t372 * t470;
t333 = -t387 * t467 - t539;
t291 = t333 * t468 - t471 * t561;
t256 = t291 * t469 + t332 * t472;
t551 = pkin(6) * t256;
t513 = qJDD(1) * t472;
t438 = -t469 * t474 + t513;
t550 = pkin(6) * t438;
t515 = qJDD(1) * t469;
t439 = t472 * t474 + t515;
t549 = pkin(6) * t439;
t548 = pkin(8) * t307;
t547 = pkin(8) * t324;
t546 = pkin(8) * t332;
t543 = qJDD(1) * pkin(1);
t466 = t474 * pkin(7);
t444 = t469 * g(1) - t472 * g(2);
t494 = -qJDD(2) + t444;
t482 = t474 * qJ(2) + t494;
t504 = t545 * qJDD(1);
t477 = t504 + t482;
t498 = pkin(8) * t468 + t554;
t340 = -pkin(4) * t434 - pkin(8) * t435 - t466 + (qJD(4) * t498 + t559) * qJD(1) + t477;
t497 = -pkin(8) * t471 + t555;
t432 = t497 * qJD(1);
t473 = qJD(4) ^ 2;
t517 = qJD(2) * qJD(1);
t461 = 0.2e1 * t517;
t393 = -qJDD(1) * pkin(7) + t461 - t560;
t505 = t471 * g(3) - t468 * t393;
t350 = -pkin(4) * t473 + qJDD(4) * pkin(8) - t432 * t522 - t505;
t294 = -t470 * t340 + t467 * t350;
t508 = -qJ(6) * t481 + t294;
t488 = -qJ(6) * t414 - t508;
t520 = qJD(6) * t430;
t249 = t488 - 0.2e1 * t520 - t562;
t542 = t249 * t467;
t541 = t249 * t470;
t509 = t468 * t471 * t474;
t442 = qJDD(4) + t509;
t536 = t442 * t468;
t535 = t442 * t471;
t443 = qJDD(4) - t509;
t534 = t443 * t468;
t533 = t443 * t471;
t532 = t452 * t467;
t531 = t452 * t470;
t464 = t468 ^ 2;
t530 = t464 * t474;
t465 = t471 ^ 2;
t529 = t465 * t474;
t380 = t468 * g(3) + t471 * t393;
t349 = qJDD(4) * pkin(4) + pkin(8) * t473 - t432 * t521 + t380;
t528 = t467 * t349;
t512 = qJD(1) * t559;
t405 = t477 + t512;
t392 = -t466 + t405;
t527 = t468 * t392;
t526 = t470 * t349;
t525 = t471 * t392;
t295 = t467 * t340 + t470 * t350;
t524 = -t387 - t424;
t523 = t464 + t465;
t511 = t468 * t395;
t510 = t471 * t395;
t248 = t467 * t294 + t470 * t295;
t327 = -t468 * t380 - t471 * t505;
t406 = -0.2e1 * t517 + t560;
t360 = -t405 * t469 - t472 * t406;
t415 = -pkin(1) * t474 + t461 - t493;
t416 = t482 + t543;
t366 = t472 * t415 - t416 * t469;
t397 = -t444 * t469 - t472 * t445;
t501 = t469 * t509;
t500 = t472 * t509;
t499 = pkin(1) * t307 + t270 * t544;
t496 = g(3) * t469 + t550;
t495 = g(3) * t472 - t549;
t247 = -t294 * t470 + t295 * t467;
t326 = t471 * t380 - t468 * t505;
t359 = t405 * t472 - t406 * t469;
t363 = t415 * t469 + t416 * t472;
t396 = t444 * t472 - t445 * t469;
t271 = t309 * t471 + t370 * t468;
t492 = -t544 * t271 - t307 * t558;
t284 = t325 * t471 + t353 * t468;
t491 = -t544 * t284 - t324 * t558;
t292 = t333 * t471 + t468 * t561;
t490 = -t544 * t292 - t332 * t558;
t489 = -t445 + 0.2e1 * t463 + t461;
t378 = -qJD(5) * t430 - t502;
t407 = pkin(5) * t452 - qJ(6) * t430;
t487 = t378 * qJ(6) - 0.2e1 * qJD(6) * t428 - t452 * t407 + t295;
t458 = -pkin(2) * t474 + g(3);
t486 = -pkin(2) * t515 + t472 * t458 - t549;
t485 = t283 * t544 + t324 * t545;
t484 = t291 * t544 + t332 * t545;
t480 = -pkin(4) * t370 + pkin(8) * t309 + t270 * t558 - t271 * t545;
t479 = -pkin(4) * t353 + pkin(8) * t325 + t283 * t558 - t284 * t545;
t478 = -pkin(4) * t561 + pkin(8) * t333 + t291 * t558 - t292 * t545;
t476 = -t430 * t407 - qJDD(6) + t349;
t475 = -pkin(5) * t378 - t476;
t450 = -t473 - t529;
t449 = t473 - t529;
t448 = -t473 - t530;
t447 = -t473 + t530;
t441 = (-t464 + t465) * t474;
t440 = t523 * t474;
t437 = t523 * qJDD(1);
t436 = -0.2e1 * t507 + t514;
t433 = 0.2e1 * t506 + t516;
t427 = t523 * t518;
t423 = 0.2e1 * t520;
t412 = -t425 + t451;
t411 = t424 - t451;
t410 = t435 * t468 + t465 * t518;
t409 = t434 * t471 + t464 * t518;
t404 = -t450 * t468 - t535;
t403 = t448 * t471 - t534;
t402 = t450 * t471 - t536;
t401 = t449 * t471 + t534;
t400 = t448 * t468 + t533;
t399 = t447 * t468 + t535;
t398 = t558 * t437;
t394 = -pkin(2) * t513 - t458 * t469 - t550;
t390 = -t425 + t424;
t389 = -t437 * t472 + t440 * t469;
t388 = -t437 * t469 - t440 * t472;
t386 = -pkin(2) * t405 + qJ(2) * g(3);
t384 = -t433 * t468 + t436 * t471;
t383 = -pkin(2) * t406 + g(3) * t545;
t368 = t402 * t472 - t436 * t469;
t367 = t400 * t472 - t433 * t469;
t365 = t402 * t469 + t436 * t472;
t364 = t400 * t469 + t433 * t472;
t362 = (-t428 * t470 + t430 * t467) * t452;
t361 = (-t428 * t467 - t430 * t470) * t452;
t346 = -t430 * t532 - t470 * t481;
t345 = t430 * t531 - t467 * t481;
t344 = -t378 * t467 + t428 * t531;
t343 = t378 * t470 + t428 * t532;
t342 = t362 * t468 - t426 * t471;
t341 = t362 * t471 + t426 * t468;
t339 = t411 * t470 - t540;
t338 = -t412 * t467 - t537;
t337 = t411 * t467 + t539;
t336 = t412 * t470 - t538;
t319 = t346 * t468 - t510;
t318 = t344 * t468 + t510;
t317 = t346 * t471 + t511;
t316 = t344 * t471 - t511;
t315 = -pkin(5) * t561 - qJ(6) * t372;
t314 = t440 * t558 + t327;
t313 = -t404 * t544 - t436 * t558 + t527;
t312 = -t403 * t544 - t433 * t558 - t525;
t311 = t326 * t472 - t392 * t469;
t310 = t326 * t469 + t392 * t472;
t308 = -t353 * t470 - t467 * t561;
t306 = -t353 * t467 + t470 * t561;
t301 = t342 * t472 - t361 * t469;
t300 = t342 * t469 + t361 * t472;
t299 = t339 * t468 + t354 * t471;
t298 = t338 * t468 + t358 * t471;
t297 = t338 * t471 - t358 * t468;
t296 = t339 * t471 - t354 * t468;
t290 = -t526 - t546;
t289 = t402 * t558 - t404 * t545 + t505;
t288 = t400 * t558 - t403 * t545 + t380;
t282 = -t528 - t547;
t278 = qJ(6) * t424 - t475;
t277 = t308 * t471 - t390 * t468;
t276 = t308 * t468 + t390 * t471;
t275 = t319 * t472 - t345 * t469;
t274 = t318 * t472 - t343 * t469;
t273 = t319 * t469 + t345 * t472;
t272 = t318 * t469 + t343 * t472;
t266 = -pkin(4) * t307 - pkin(5) * t358;
t265 = qJ(6) * t524 + t475;
t264 = t299 * t472 - t337 * t469;
t263 = t298 * t472 - t336 * t469;
t262 = t299 * t469 + t337 * t472;
t261 = t298 * t469 + t336 * t472;
t260 = t295 - t556;
t259 = t294 - t557;
t258 = -t327 * t544 - t392 * t558;
t257 = t291 * t472 - t332 * t469;
t255 = pkin(6) * t257;
t254 = -pkin(5) * t424 + t487;
t253 = t283 * t472 - t324 * t469;
t251 = pkin(6) * t253;
t250 = (t382 + t424) * qJ(6) + (-t353 + t378) * pkin(5) + t476;
t246 = t276 * t472 - t306 * t469;
t245 = t276 * t469 + t306 * t472;
t244 = t270 * t472 - t307 * t469;
t242 = pkin(6) * t244;
t241 = t423 + (-t358 + t414) * qJ(6) + t562 + t508;
t240 = t326 * t558 - t327 * t545;
t239 = -qJ(6) * t354 + (-t370 - t424) * pkin(5) + t487;
t238 = pkin(5) * t524 + t487 - t556;
t237 = t248 * t471 - t349 * t468;
t236 = t248 * t468 + t349 * t471;
t235 = t265 * t470 - t315 * t467 - t546;
t234 = t423 - t488 - t557 + 0.2e1 * t562;
t233 = qJ(6) * t537 - t250 * t467 - t547;
t232 = pkin(5) * t278 + qJ(6) * t254;
t231 = -t247 - t548;
t230 = t254 * t470 - t542;
t229 = t254 * t467 + t541;
t228 = t236 * t472 - t247 * t469;
t227 = t236 * t469 + t247 * t472;
t226 = t230 * t471 - t278 * t468;
t225 = t230 * t468 + t278 * t471;
t224 = -pkin(4) * t229 - pkin(5) * t249;
t223 = t478 - t528;
t222 = -t239 * t467 + t241 * t470 - t548;
t221 = t479 + t526;
t220 = t260 * t471 + t290 * t468 + t490;
t219 = t259 * t471 + t282 * t468 + t491;
t218 = t265 * t467 + t315 * t470 + t478;
t217 = qJ(6) * t538 + t250 * t470 + t479;
t216 = t231 * t468 - t307 * t554 + t492;
t215 = t248 + t480;
t214 = -pkin(8) * t229 - qJ(6) * t541 - t232 * t467;
t213 = t225 * t472 - t229 * t469;
t212 = t225 * t469 + t229 * t472;
t211 = t235 * t468 + t238 * t471 + t490;
t210 = t233 * t468 + t234 * t471 + t491;
t209 = t470 * t239 + t467 * t241 + t480;
t208 = t222 * t468 + t266 * t471 + t492;
t207 = pkin(4) * t349 + pkin(8) * t248 + t236 * t558 - t237 * t545;
t206 = -t544 * t237 + (-t498 - t558) * t247;
t205 = pkin(4) * t278 + pkin(8) * t230 - qJ(6) * t542 + t225 * t558 - t226 * t545 + t232 * t470;
t204 = t468 * t214 + t471 * t224 - t226 * t544 - t229 * t558;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t439, -t438, 0, t397, 0, 0, 0, 0, 0, 0, 0, t439, t438, t366, 0, 0, 0, 0, 0, 0, 0, t438, -t439, t360, 0, 0, 0, 0, 0, 0, t367, t368, t389, t311, 0, 0, 0, 0, 0, 0, t253, t257, t244, t228, 0, 0, 0, 0, 0, 0, t253, t257, t244, t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t438, -t439, 0, t396, 0, 0, 0, 0, 0, 0, 0, -t438, t439, t363, 0, 0, 0, 0, 0, 0, 0, t439, t438, t359, 0, 0, 0, 0, 0, 0, t364, t365, t388, t310, 0, 0, 0, 0, 0, 0, t252, t256, t243, t227, 0, 0, 0, 0, 0, 0, t252, t256, t243, t212; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t403, t404, 0, t327, 0, 0, 0, 0, 0, 0, t284, t292, t271, t237, 0, 0, 0, 0, 0, 0, t284, t292, t271, t226; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t438, 0, -t439, 0, -t496, -t495, -t396, -pkin(6) * t396, 0, -t438, t439, 0, 0, 0, -t363, t496, t495, -pkin(6) * t363 + (-pkin(1) * t469 + qJ(2) * t472) * g(3), 0, t439, t438, 0, 0, 0, -t359, t486, t394, -pkin(6) * t359 - t383 * t469 + t386 * t472, t410 * t472 - t501, t384 * t472 - t441 * t469, t401 * t472 - t469 * t514, t409 * t472 + t501, t399 * t472 + t468 * t515, -qJDD(4) * t469 - t427 * t472, -pkin(6) * t364 - t288 * t469 + t312 * t472, -pkin(6) * t365 - t289 * t469 + t313 * t472, -pkin(6) * t388 + t314 * t472 + t398 * t469, -pkin(6) * t310 - t240 * t469 + t258 * t472, t275, t246, t263, t274, t264, t301, t219 * t472 - t221 * t469 - t552, t220 * t472 - t223 * t469 - t551, -t215 * t469 + t216 * t472 - t553, -pkin(6) * t227 + t206 * t472 - t207 * t469, t275, t246, t263, t274, t264, t301, t210 * t472 - t217 * t469 - t552, t211 * t472 - t218 * t469 - t551, t208 * t472 - t209 * t469 - t553, -pkin(6) * t212 + t204 * t472 - t205 * t469; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t439, 0, t438, 0, t495, -t496, t397, pkin(6) * t397, 0, -t439, -t438, 0, 0, 0, t366, -t495, t496, pkin(6) * t366 + (pkin(1) * t472 + qJ(2) * t469) * g(3), 0, -t438, t439, 0, 0, 0, t360, -t394, t486, pkin(6) * t360 + t383 * t472 + t386 * t469, t410 * t469 + t500, t384 * t469 + t441 * t472, t401 * t469 + t471 * t513, t409 * t469 - t500, t399 * t469 - t468 * t513, qJDD(4) * t472 - t427 * t469, pkin(6) * t367 + t288 * t472 + t312 * t469, pkin(6) * t368 + t289 * t472 + t313 * t469, pkin(6) * t389 + t314 * t469 - t398 * t472, pkin(6) * t311 + t240 * t472 + t258 * t469, t273, t245, t261, t272, t262, t300, t219 * t469 + t221 * t472 + t251, t220 * t469 + t223 * t472 + t255, t215 * t472 + t216 * t469 + t242, pkin(6) * t228 + t206 * t469 + t207 * t472, t273, t245, t261, t272, t262, t300, t210 * t469 + t217 * t472 + t251, t211 * t469 + t218 * t472 + t255, t208 * t469 + t209 * t472 + t242, pkin(6) * t213 + t204 * t469 + t205 * t472; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t444, t445, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t494 - 0.2e1 * t543, t489, pkin(1) * t416 + qJ(2) * t415, qJDD(1), 0, 0, 0, 0, 0, 0, qJDD(3) + t489, t494 + 0.2e1 * t504 + t512, -qJ(2) * t406 + t405 * t545, (t435 - t507) * t471, -t433 * t471 - t436 * t468, -t449 * t468 + t533, (-t434 + t506) * t468, t447 * t471 - t536, 0, t400 * t544 + t433 * t545 + t527, t402 * t544 + t436 * t545 + t525, -t437 * t544 - t440 * t545 - t326, t326 * t544 + t392 * t545, t317, t277, t297, t316, t296, t341, -t259 * t468 + t282 * t471 + t485, -t260 * t468 + t290 * t471 + t484, t471 * t231 + (qJ(3) + t555) * t307 + t499, t544 * t236 + (t497 + t545) * t247, t317, t277, t297, t316, t296, t341, t233 * t471 - t234 * t468 + t485, t235 * t471 - t238 * t468 + t484, qJ(3) * t307 + t222 * t471 - t266 * t468 + t499, t471 * t214 - t468 * t224 + t225 * t544 + t229 * t545;];
tauB_reg  = t1;
