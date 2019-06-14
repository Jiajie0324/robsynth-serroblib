% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPPRPR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:27
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPPRPR6_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR6_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR6_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRPR6_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR6_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRPR6_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:27:27
% EndTime: 2019-05-05 14:27:38
% DurationCPUTime: 5.50s
% Computational Cost: add. (9831->428), mult. (19437->529), div. (0->0), fcn. (9622->6), ass. (0->288)
t436 = qJD(4) ^ 2;
t431 = sin(qJ(4));
t427 = t431 ^ 2;
t437 = qJD(1) ^ 2;
t500 = t427 * t437;
t405 = -t436 - t500;
t434 = cos(qJ(4));
t491 = t434 * t437;
t409 = t431 * t491;
t400 = qJDD(4) - t409;
t505 = t400 * t434;
t339 = t405 * t431 + t505;
t482 = qJD(1) * qJD(4);
t467 = t434 * t482;
t479 = qJDD(1) * t431;
t386 = 0.2e1 * t467 + t479;
t432 = sin(qJ(1));
t435 = cos(qJ(1));
t296 = t339 * t432 + t386 * t435;
t546 = pkin(6) * t296;
t428 = t434 ^ 2;
t418 = t428 * t437;
t407 = -t418 - t436;
t399 = qJDD(4) + t409;
t507 = t399 * t431;
t341 = -t407 * t434 + t507;
t415 = t431 * t482;
t477 = qJDD(1) * t434;
t389 = -0.2e1 * t415 + t477;
t298 = t341 * t432 - t389 * t435;
t545 = pkin(6) * t298;
t301 = t339 * t435 - t386 * t432;
t544 = pkin(6) * t301;
t303 = t341 * t435 + t389 * t432;
t543 = pkin(6) * t303;
t492 = t434 * t399;
t349 = t407 * t431 + t492;
t516 = qJ(2) - pkin(7);
t542 = t516 * t349;
t404 = -t436 + t500;
t348 = t404 * t431 + t492;
t476 = qJDD(1) * t435;
t541 = t348 * t432 - t431 * t476;
t478 = qJDD(1) * t432;
t540 = t348 * t435 + t431 * t478;
t517 = pkin(1) + qJ(3);
t525 = pkin(2) + pkin(3);
t539 = t525 * t341 - t517 * t349;
t538 = t339 * t516;
t430 = sin(qJ(6));
t433 = cos(qJ(6));
t485 = qJD(1) * t431;
t379 = qJD(4) * t430 - t433 * t485;
t381 = qJD(4) * t433 + t430 * t485;
t334 = t381 * t379;
t388 = -t415 + t477;
t374 = qJDD(6) + t388;
t529 = -t334 + t374;
t537 = t430 * t529;
t536 = t433 * t529;
t535 = t516 * t341;
t506 = t400 * t431;
t346 = -t405 * t434 + t506;
t534 = t516 * t346;
t406 = -t418 + t436;
t344 = t406 * t434 + t506;
t532 = t344 * t432 + t434 * t476;
t531 = t344 * t435 - t432 * t477;
t530 = -t339 * t525 - t517 * t346;
t401 = t432 * g(1) - t435 * g(2);
t459 = -qJDD(2) + t401;
t526 = 2 * qJD(3);
t446 = qJD(1) * t526 + t459;
t465 = t517 * qJDD(1);
t489 = t437 * qJ(2);
t352 = t465 + t446 + t489;
t387 = t467 + t479;
t429 = t437 * pkin(7);
t528 = t387 * pkin(4) - t388 * qJ(5) - t429;
t402 = t435 * g(1) + t432 * g(2);
t426 = qJDD(1) * qJ(2);
t453 = t402 - t426;
t527 = t437 * t517 - qJDD(3) + t453;
t372 = t379 ^ 2;
t373 = t381 ^ 2;
t484 = qJD(1) * t434;
t411 = qJD(6) + t484;
t408 = t411 ^ 2;
t524 = pkin(4) + pkin(8);
t523 = pkin(4) * t431;
t522 = pkin(4) * t434;
t486 = t427 + t428;
t394 = t486 * qJDD(1);
t397 = t418 + t500;
t327 = -t394 * t432 - t397 * t435;
t521 = pkin(6) * t327;
t395 = -t432 * t437 + t476;
t520 = pkin(6) * t395;
t396 = t435 * t437 + t478;
t519 = pkin(6) * t396;
t518 = t431 * g(3);
t515 = qJ(5) * t431;
t514 = qJ(5) * t434;
t513 = qJDD(1) * pkin(1);
t512 = t379 * t411;
t502 = t411 * t430;
t501 = t411 * t433;
t457 = -t514 + t523;
t384 = t457 * qJD(1);
t481 = qJD(2) * qJD(1);
t423 = 0.2e1 * t481;
t332 = -qJDD(1) * pkin(7) + t423 - t527;
t466 = t434 * g(3) - t431 * t332;
t444 = -qJDD(4) * qJ(5) + t384 * t485 + t466;
t439 = t436 * pkin(4) + t444;
t474 = pkin(5) * t484;
t480 = qJD(5) * qJD(4);
t258 = pkin(8) * t500 + t387 * pkin(5) - 0.2e1 * t480 - qJD(4) * (-qJD(4) * pkin(8) + t474) + t439;
t499 = t430 * t258;
t308 = t334 + t374;
t498 = t430 * t308;
t331 = -t429 + t352;
t497 = t431 * t331;
t496 = t433 * t258;
t495 = t433 * t308;
t494 = t434 * t331;
t493 = t434 * t332;
t490 = t436 * qJ(5);
t488 = t525 * t397;
t487 = t397 - t436;
t483 = qJD(5) * t434;
t475 = -t373 - t408;
t473 = t431 * t334;
t472 = t434 * t334;
t316 = -t379 * qJD(6) + t433 * qJDD(4) + t430 * t387;
t337 = t525 * t394;
t317 = t493 + t518;
t265 = -t317 * t431 - t434 * t466;
t353 = -0.2e1 * t481 + t527;
t290 = -t352 * t432 - t435 * t353;
t361 = -pkin(1) * t437 + t423 - t453;
t362 = t459 + t489 + t513;
t300 = t435 * t361 - t362 * t432;
t336 = -t401 * t432 - t435 * t402;
t464 = t430 * qJDD(4) - t433 * t387;
t463 = t432 * t409;
t462 = t435 * t409;
t461 = g(3) * t432 + t520;
t460 = g(3) * t435 - t519;
t458 = t515 + t522;
t456 = t384 * t484 + qJDD(5) - t493;
t438 = t465 + t459 + t528;
t254 = t387 * pkin(8) + (-pkin(5) * t427 + qJ(2)) * t437 + (qJD(4) * t515 + t526 + (qJD(4) * t524 - 0.2e1 * qJD(5) - t474) * t434) * qJD(1) + t438;
t259 = t388 * pkin(5) - t490 - t524 * qJDD(4) + (pkin(5) * t482 + pkin(8) * t491 - g(3)) * t431 + t456;
t226 = t254 * t430 - t259 * t433;
t227 = t254 * t433 + t259 * t430;
t208 = -t433 * t226 + t430 * t227;
t209 = t430 * t226 + t433 * t227;
t264 = t317 * t434 - t431 * t466;
t289 = t352 * t435 - t353 * t432;
t295 = t361 * t432 + t362 * t435;
t455 = -t404 * t434 + t507;
t454 = -t406 * t431 + t505;
t335 = t401 * t435 - t402 * t432;
t452 = t316 - t512;
t451 = -t402 + 0.2e1 * t426 + t423;
t419 = -pkin(2) * t437 + g(3);
t450 = -pkin(2) * t478 + t435 * t419 - t519;
t449 = -t394 * t516 - t397 * t517;
t447 = t456 - t518;
t443 = (-qJD(6) + t411) * t381 - t464;
t421 = 0.2e1 * t480;
t442 = t421 - t444;
t441 = -qJDD(4) * pkin(4) + t447;
t268 = t489 + (qJD(4) * t458 - 0.2e1 * t483 + t526) * qJD(1) + t438;
t398 = t418 - t500;
t376 = t486 * t482;
t360 = -t373 + t408;
t359 = t372 - t408;
t358 = -qJDD(4) * t432 - t376 * t435;
t357 = -t387 * t434 + t427 * t482;
t356 = qJDD(4) * t435 - t376 * t432;
t355 = t388 * t431 + t428 * t482;
t345 = (t388 - t415) * t434;
t338 = (t387 + t467) * t431;
t333 = -pkin(2) * t476 - t419 * t432 - t520;
t329 = t373 - t372;
t328 = -t394 * t435 + t397 * t432;
t326 = -pkin(2) * t352 + qJ(2) * g(3);
t325 = pkin(6) * t328;
t323 = -t386 * t431 + t389 * t434;
t322 = -t386 * t434 - t389 * t431;
t321 = -pkin(2) * t353 + g(3) * t517;
t319 = -t408 - t372;
t315 = -qJD(6) * t381 - t464;
t314 = t357 * t435 + t463;
t313 = t355 * t435 - t463;
t312 = t357 * t432 - t462;
t311 = t355 * t432 + t462;
t310 = -qJDD(1) * t458 - t337;
t306 = -t372 - t373;
t294 = (-t379 * t433 + t381 * t430) * t411;
t293 = (t379 * t430 + t381 * t433) * t411;
t292 = t323 * t435 - t398 * t432;
t291 = t323 * t432 + t398 * t435;
t288 = t316 + t512;
t283 = (qJD(6) + t411) * t381 + t464;
t281 = -t441 + t490;
t280 = t421 - t439;
t279 = t316 * t433 - t381 * t502;
t278 = -t316 * t430 - t381 * t501;
t277 = -t315 * t430 + t379 * t501;
t276 = -t315 * t433 - t379 * t502;
t275 = t293 * t434 + t374 * t431;
t274 = t359 * t433 - t498;
t273 = -t360 * t430 + t536;
t272 = -t359 * t430 - t495;
t271 = -t360 * t433 - t537;
t270 = qJ(5) * t487 + t441;
t269 = pkin(4) * t487 + t442;
t267 = -t430 * t475 - t495;
t266 = t433 * t475 - t498;
t263 = t433 * t319 - t537;
t262 = t430 * t319 + t536;
t261 = pkin(4) * t386 + t268;
t260 = -pkin(4) * t467 + 0.2e1 * qJD(1) * t483 + (t389 - t415) * qJ(5) - t528 - t352;
t257 = t278 * t434 + t473;
t256 = t276 * t434 - t473;
t255 = t265 + t488;
t253 = -t389 * t525 + t497 + t542;
t252 = -t386 * t525 - t494 + t534;
t251 = t264 * t435 - t331 * t432;
t250 = t264 * t432 + t331 * t435;
t249 = t430 * t288 + t433 * t443;
t248 = -t283 * t433 - t430 * t452;
t247 = -t288 * t433 + t430 * t443;
t246 = t283 * t430 - t433 * t452;
t245 = t280 * t434 - t281 * t431;
t244 = t280 * t431 + t281 * t434;
t243 = t272 * t434 + t431 * t443;
t242 = t271 * t434 + t288 * t431;
t241 = t266 * t431 + t434 * t452;
t240 = -t266 * t434 + t431 * t452;
t239 = t466 - t539;
t238 = t317 - t530;
t237 = t262 * t431 + t283 * t434;
t236 = -t262 * t434 + t283 * t431;
t235 = t246 * t434 + t329 * t431;
t234 = t247 * t431 + t306 * t434;
t233 = -t247 * t434 + t306 * t431;
t232 = t269 * t434 + t270 * t431 + t488;
t231 = (-t405 - t436) * qJ(5) + (-qJDD(4) - t400) * pkin(4) + t447 + t530;
t230 = t431 * t260 - t542 + (t522 + t525) * t389;
t229 = t434 * t261 - t534 + (t515 + t525) * t386;
t228 = qJ(5) * t399 + (-t407 - t436) * pkin(4) + t442 + t539;
t224 = t244 * t435 - t268 * t432;
t223 = t244 * t432 + t268 * t435;
t222 = -t265 * t516 - t331 * t525;
t221 = t240 * t435 - t267 * t432;
t220 = t240 * t432 + t267 * t435;
t219 = t236 * t435 - t263 * t432;
t218 = t236 * t432 + t263 * t435;
t217 = pkin(5) * t247 - qJ(5) * t249;
t216 = t233 * t435 - t249 * t432;
t215 = t233 * t432 + t249 * t435;
t214 = pkin(5) * t452 - t267 * t524 + t499;
t213 = t264 * t525 - t265 * t517;
t212 = pkin(5) * t283 - t263 * t524 - t496;
t211 = pkin(5) * t266 - qJ(5) * t267 - t227;
t210 = pkin(5) * t262 - qJ(5) * t263 - t226;
t207 = t208 * t431 - t258 * t434;
t206 = -t208 * t434 - t258 * t431;
t205 = -t516 * t245 + (-t458 - t525) * t268;
t204 = pkin(4) * t281 + qJ(5) * t280 + t244 * t525 - t245 * t517;
t203 = pkin(5) * t306 - t249 * t524 - t209;
t202 = pkin(5) * t208 - qJ(5) * t209;
t201 = qJ(5) * t452 + t240 * t525 - t241 * t517 - t266 * t524 - t496;
t200 = qJ(5) * t283 + t236 * t525 - t237 * t517 - t262 * t524 - t499;
t199 = -pkin(5) * t258 - t209 * t524;
t198 = t206 * t435 - t209 * t432;
t197 = t206 * t432 + t209 * t435;
t196 = t431 * t211 + t434 * t214 - t241 * t516 - t267 * t525;
t195 = t431 * t210 + t434 * t212 - t237 * t516 - t263 * t525;
t194 = qJ(5) * t306 + t233 * t525 - t234 * t517 - t247 * t524 - t208;
t193 = t434 * t203 + t431 * t217 - t234 * t516 - t249 * t525;
t192 = -qJ(5) * t258 + t206 * t525 - t207 * t517 - t208 * t524;
t191 = t434 * t199 + t431 * t202 - t207 * t516 - t209 * t525;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t396, -t395, 0, t336, 0, 0, 0, 0, 0, 0, 0, t396, t395, t300, 0, 0, 0, 0, 0, 0, 0, t395, -t396, t290, 0, 0, 0, 0, 0, 0, t301, -t303, t328, t251, 0, 0, 0, 0, 0, 0, t328, -t301, t303, t224, 0, 0, 0, 0, 0, 0, t219, t221, t216, t198; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t395, -t396, 0, t335, 0, 0, 0, 0, 0, 0, 0, -t395, t396, t295, 0, 0, 0, 0, 0, 0, 0, t396, t395, t289, 0, 0, 0, 0, 0, 0, t296, -t298, t327, t250, 0, 0, 0, 0, 0, 0, t327, -t296, t298, t223, 0, 0, 0, 0, 0, 0, t218, t220, t215, t197; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t346, -t349, 0, t265, 0, 0, 0, 0, 0, 0, 0, t346, t349, t245, 0, 0, 0, 0, 0, 0, t237, t241, t234, t207; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t395, 0, -t396, 0, -t461, -t460, -t335, -pkin(6) * t335, 0, -t395, t396, 0, 0, 0, -t295, t461, t460, -pkin(6) * t295 + (-pkin(1) * t432 + qJ(2) * t435) * g(3), 0, t396, t395, 0, 0, 0, -t289, t450, t333, -pkin(6) * t289 - t321 * t432 + t326 * t435, t313, t292, t531, t314, t540, t358, -t238 * t432 + t252 * t435 - t546, -t239 * t432 + t253 * t435 + t545, t255 * t435 + t337 * t432 - t521, -pkin(6) * t250 - t213 * t432 + t222 * t435, t358, -t531, -t540, t313, t292, t314, t232 * t435 - t310 * t432 - t521, t229 * t435 - t231 * t432 + t546, -t228 * t432 + t230 * t435 - t545, -pkin(6) * t223 - t204 * t432 + t205 * t435, t257 * t435 - t279 * t432, t235 * t435 - t248 * t432, t242 * t435 - t273 * t432, t256 * t435 - t277 * t432, t243 * t435 - t274 * t432, t275 * t435 - t294 * t432, -pkin(6) * t218 + t195 * t435 - t200 * t432, -pkin(6) * t220 + t196 * t435 - t201 * t432, -pkin(6) * t215 + t193 * t435 - t194 * t432, -pkin(6) * t197 + t191 * t435 - t192 * t432; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t396, 0, t395, 0, t460, -t461, t336, pkin(6) * t336, 0, -t396, -t395, 0, 0, 0, t300, -t460, t461, pkin(6) * t300 + (pkin(1) * t435 + qJ(2) * t432) * g(3), 0, -t395, t396, 0, 0, 0, t290, -t333, t450, pkin(6) * t290 + t321 * t435 + t326 * t432, t311, t291, t532, t312, t541, t356, t238 * t435 + t252 * t432 + t544, t239 * t435 + t253 * t432 - t543, t255 * t432 - t337 * t435 + t325, pkin(6) * t251 + t213 * t435 + t222 * t432, t356, -t532, -t541, t311, t291, t312, t232 * t432 + t310 * t435 + t325, t229 * t432 + t231 * t435 - t544, t228 * t435 + t230 * t432 + t543, pkin(6) * t224 + t204 * t435 + t205 * t432, t257 * t432 + t279 * t435, t235 * t432 + t248 * t435, t242 * t432 + t273 * t435, t256 * t432 + t277 * t435, t243 * t432 + t274 * t435, t275 * t432 + t294 * t435, pkin(6) * t219 + t195 * t432 + t200 * t435, pkin(6) * t221 + t196 * t432 + t201 * t435, pkin(6) * t216 + t193 * t432 + t194 * t435, pkin(6) * t198 + t191 * t432 + t192 * t435; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t401, t402, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t459 - 0.2e1 * t513, t451, pkin(1) * t362 + qJ(2) * t361, qJDD(1), 0, 0, 0, 0, 0, 0, qJDD(3) + t451, t446 + 0.2e1 * t465, -qJ(2) * t353 + t352 * t517, t345, t322, t454, t338, -t455, 0, t386 * t517 + t497 + t538, t389 * t517 + t494 - t535, -t264 + t449, t264 * t516 + t331 * t517, 0, -t454, t455, t345, t322, t338, -t269 * t431 + t270 * t434 + t449, -t431 * t261 - t538 + (t514 - t517) * t386, t434 * t260 + t535 + (-t517 - t523) * t389, t516 * t244 + (t457 + t517) * t268, -t278 * t431 + t472, -t246 * t431 + t329 * t434, -t271 * t431 + t288 * t434, -t276 * t431 - t472, -t272 * t431 + t434 * t443, -t293 * t431 + t374 * t434, t434 * t210 - t431 * t212 + t236 * t516 + t263 * t517, t434 * t211 - t431 * t214 + t240 * t516 + t267 * t517, -t431 * t203 + t434 * t217 + t233 * t516 + t249 * t517, -t431 * t199 + t434 * t202 + t206 * t516 + t209 * t517;];
tauB_reg  = t1;
