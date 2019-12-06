% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPRPR3
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
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:52
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPRPR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR3_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR3_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR3_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:51:38
% EndTime: 2019-12-05 17:51:51
% DurationCPUTime: 10.18s
% Computational Cost: add. (31729->443), mult. (47250->667), div. (0->0), fcn. (28279->10), ass. (0->309)
t472 = (qJD(1) + qJD(3));
t467 = t472 ^ 2;
t484 = cos(qJ(3));
t468 = qJDD(1) + qJDD(3);
t481 = sin(qJ(3));
t518 = t481 * t468;
t436 = t484 * t467 + t518;
t511 = t484 * t468;
t519 = t481 * t467;
t439 = -t511 + t519;
t477 = sin(pkin(8));
t479 = cos(pkin(8));
t382 = t479 * t436 - t477 * t439;
t475 = g(1) - qJDD(2);
t410 = pkin(6) * t436 - t484 * t475;
t549 = pkin(6) * t439 - t481 * t475;
t319 = qJ(2) * t382 + t479 * t410 - t477 * t549;
t482 = sin(qJ(1));
t485 = cos(qJ(1));
t386 = t477 * t436 + t479 * t439;
t555 = qJ(2) * t386 + t477 * t410 + t479 * t549;
t556 = t482 * t382 + t485 * t386;
t564 = pkin(5) * t556 + t482 * t319 + t485 * t555;
t331 = t485 * t382 - t482 * t386;
t563 = pkin(5) * t331 + t485 * t319 - t482 * t555;
t458 = t485 * g(2) + t482 * g(3);
t442 = qJDD(1) * pkin(1) + t458;
t457 = t482 * g(2) - t485 * g(3);
t486 = qJD(1) ^ 2;
t443 = -t486 * pkin(1) + t457;
t391 = t477 * t442 + t479 * t443;
t389 = -t486 * pkin(2) + t391;
t492 = t479 * t442 - t477 * t443;
t489 = qJDD(1) * pkin(2) + t492;
t337 = t481 * t389 - t484 * t489;
t338 = t484 * t389 + t481 * t489;
t501 = t481 * t337 + t484 * t338;
t278 = t484 * t337 - t481 * t338;
t524 = t479 * t278;
t237 = -t477 * t501 + t524;
t527 = t477 * t278;
t552 = t479 * t501 + t527;
t210 = t482 * t237 + t485 * t552;
t209 = t485 * t237 - t482 * t552;
t476 = sin(pkin(9));
t470 = t476 ^ 2;
t478 = cos(pkin(9));
t471 = t478 ^ 2;
t427 = (t470 + t471) * t478 * t467;
t503 = t478 * t511;
t394 = -t481 * t427 + t503;
t396 = t484 * t427 + t478 * t518;
t345 = t479 * t394 - t477 * t396;
t347 = t477 * t394 + t479 * t396;
t558 = t485 * t345 - t482 * t347;
t557 = t482 * t345 + t485 * t347;
t500 = t479 * t391 - t477 * t492;
t341 = -t477 * t391 - t479 * t492;
t509 = t485 * t341;
t286 = -t482 * t500 + t509;
t516 = t482 * t341;
t551 = -t485 * t500 - t516;
t326 = -t467 * pkin(3) + t468 * qJ(4) + t338;
t535 = 2 * qJD(4);
t550 = (t472 * t535) + t326;
t445 = t477 * qJDD(1) + t479 * t486;
t421 = qJ(2) * t445 - t479 * t475;
t446 = t479 * qJDD(1) - t477 * t486;
t491 = t482 * t445 - t485 * t446;
t493 = -qJ(2) * t446 - t477 * t475;
t548 = pkin(5) * t491 + t482 * t421 + t485 * t493;
t528 = t476 * t478;
t403 = t436 * t528;
t404 = t476 * t503 - t519 * t528;
t351 = t479 * t403 + t477 * t404;
t354 = t477 * t403 - t479 * t404;
t547 = t485 * t351 - t482 * t354;
t546 = t482 * t351 + t485 * t354;
t400 = t485 * t445 + t482 * t446;
t545 = pkin(5) * t400 + t485 * t421 - t482 * t493;
t480 = sin(qJ(5));
t483 = cos(qJ(5));
t413 = (qJD(5) * t472 * t483 + t468 * t480) * t476;
t525 = t478 * t472;
t453 = -qJD(5) + t525;
t529 = t472 * t476;
t507 = t453 * t529;
t424 = t483 * t507;
t370 = t424 - t413;
t542 = t480 * t370;
t505 = t480 * t529;
t414 = t483 * t476 * t468 - qJD(5) * t505;
t497 = t453 * t505;
t371 = t414 + t497;
t366 = t483 * t371;
t450 = t453 ^ 2;
t534 = pkin(1) * t475;
t533 = pkin(4) * t476;
t532 = pkin(4) * t478;
t464 = t468 * pkin(3);
t526 = t478 * t468;
t451 = -qJDD(5) + t526;
t531 = t451 * t476;
t530 = t470 * t467;
t496 = -pkin(7) * t476 - t532;
t428 = t496 * t472;
t463 = t478 * t475;
t293 = t463 + (t326 + (t535 + t428) * t472) * t476;
t523 = t480 * t293;
t506 = t467 * t480 * t483;
t441 = t470 * t506;
t411 = -t441 + t451;
t522 = t480 * t411;
t412 = -t441 - t451;
t521 = t480 * t412;
t321 = -t467 * qJ(4) + qJDD(4) + t337 - t464;
t520 = t481 * t321;
t515 = t483 * t293;
t514 = t483 * t411;
t513 = t483 * t412;
t512 = t484 * t321;
t308 = -t476 * t475 + t550 * t478;
t294 = t428 * t525 + t308;
t311 = t496 * t468 + t321;
t253 = t483 * t294 + t480 * t311;
t474 = t483 ^ 2;
t504 = t474 * t530;
t502 = -t321 + t464;
t252 = t480 * t294 - t483 * t311;
t307 = t550 * t476 + t463;
t264 = t476 * t307 + t478 * t308;
t469 = t476 * t470;
t498 = t469 * t506;
t447 = t482 * qJDD(1) + t485 * t486;
t495 = pkin(5) * t447 - t485 * g(1);
t494 = t478 * t441;
t226 = -t483 * t252 + t480 * t253;
t227 = t480 * t252 + t483 * t253;
t263 = t478 * t307 - t476 * t308;
t406 = t485 * t457 - t482 * t458;
t405 = -t482 * t457 - t485 * t458;
t473 = t480 ^ 2;
t461 = t471 * t467;
t460 = t471 * t468;
t459 = t470 * t468;
t452 = t473 * t530;
t448 = -t485 * qJDD(1) + t482 * t486;
t435 = t461 - t530;
t434 = t461 + t530;
t432 = t460 - t459;
t431 = t460 + t459;
t429 = -pkin(5) * t448 + t482 * g(1);
t426 = (t471 * t476 + t469) * t467;
t423 = t452 - t504;
t422 = t452 + t504;
t417 = t450 - t504;
t416 = -t452 - t450;
t415 = t452 - t450;
t398 = -t504 - t450;
t395 = t484 * t426 + t476 * t518;
t392 = t481 * t426 - t476 * t511;
t381 = t484 * t432 - t481 * t435;
t380 = t484 * t431 - t481 * t434;
t379 = t481 * t432 + t484 * t435;
t378 = t481 * t431 + t484 * t434;
t374 = (-t473 - t474) * t507;
t373 = t497 - t414;
t369 = t424 + t413;
t368 = -t480 * t414 + t474 * t507;
t367 = t483 * t413 + t473 * t507;
t364 = t483 * t416 - t521;
t363 = t483 * t415 + t522;
t362 = -t480 * t417 + t513;
t361 = t480 * t416 + t513;
t360 = -t480 * t415 + t514;
t359 = -t483 * t417 - t521;
t358 = -t481 * t374 - t484 * t531;
t357 = t484 * t374 - t481 * t531;
t356 = -t480 * t398 + t514;
t355 = t483 * t398 + t522;
t350 = t478 * t366 + t498;
t349 = -t478 * t542 - t498;
t346 = -t477 * t392 + t479 * t395;
t343 = t479 * t392 + t477 * t395;
t336 = qJ(2) * t500 + t534;
t330 = -t477 * t379 + t479 * t381;
t329 = -t477 * t378 + t479 * t380;
t328 = t479 * t379 + t477 * t381;
t327 = t479 * t378 + t477 * t380;
t325 = t483 * t370 - t480 * t371;
t324 = -t483 * t369 - t480 * t373;
t323 = -t366 - t542;
t322 = -t480 * t369 + t483 * t373;
t315 = t478 * t364 - t476 * t370;
t314 = t478 * t363 - t476 * t369;
t313 = t478 * t362 - t476 * t373;
t312 = t476 * t364 + t478 * t370;
t310 = t478 * t356 + t371 * t476;
t309 = t476 * t356 - t371 * t478;
t303 = t484 * t350 - t481 * t368;
t302 = t484 * t349 - t481 * t367;
t301 = t481 * t350 + t484 * t368;
t300 = t481 * t349 + t484 * t367;
t299 = t478 * t325 - t476 * t423;
t298 = t478 * t324 - t476 * t422;
t297 = t476 * t324 + t478 * t422;
t296 = -t477 * t357 + t479 * t358;
t295 = t479 * t357 + t477 * t358;
t290 = -t482 * t343 + t485 * t346;
t288 = -t485 * t343 - t482 * t346;
t285 = t484 * t315 + t481 * t361;
t284 = t484 * t314 - t481 * t360;
t283 = t484 * t313 - t481 * t359;
t282 = t481 * t315 - t484 * t361;
t281 = t481 * t314 + t484 * t360;
t280 = t481 * t313 + t484 * t359;
t275 = pkin(2) * t475 + pkin(6) * t501;
t274 = t484 * t310 + t481 * t355;
t273 = t481 * t310 - t484 * t355;
t272 = -t482 * t327 + t485 * t329;
t271 = -t485 * t327 - t482 * t329;
t270 = -pkin(7) * t361 + t523;
t269 = -pkin(7) * t355 + t515;
t268 = t484 * t299 - t481 * t323;
t267 = t484 * t298 + t481 * t322;
t266 = t481 * t299 + t484 * t323;
t265 = t481 * t298 - t484 * t322;
t261 = -t477 * t301 + t479 * t303;
t260 = -t477 * t300 + t479 * t302;
t259 = t479 * t301 + t477 * t303;
t258 = t479 * t300 + t477 * t302;
t257 = -pkin(6) * t392 - t481 * t308 + t478 * t512;
t256 = -pkin(6) * t394 - t481 * t307 + t476 * t512;
t255 = pkin(6) * t395 + t484 * t308 + t478 * t520;
t254 = -pkin(6) * t396 + t484 * t307 + t476 * t520;
t251 = -pkin(6) * t378 + t484 * t263;
t250 = pkin(6) * t380 + t481 * t263;
t249 = -pkin(4) * t361 + t252;
t248 = -pkin(4) * t355 + t253;
t247 = -t477 * t282 + t479 * t285;
t246 = -t477 * t281 + t479 * t284;
t245 = -t477 * t280 + t479 * t283;
t244 = t479 * t282 + t477 * t285;
t243 = t479 * t281 + t477 * t284;
t242 = t479 * t280 + t477 * t283;
t241 = t484 * t264 + t520;
t240 = t481 * t264 - t512;
t239 = -pkin(3) * t312 - pkin(4) * t370 - pkin(7) * t364 + t515;
t234 = -pkin(3) * t309 + pkin(4) * t371 - pkin(7) * t356 - t523;
t233 = -t477 * t273 + t479 * t274;
t232 = t479 * t273 + t477 * t274;
t231 = -t477 * t266 + t479 * t268;
t230 = -t477 * t265 + t479 * t267;
t229 = t479 * t266 + t477 * t268;
t228 = t479 * t265 + t477 * t267;
t225 = -qJ(2) * t343 - t477 * t255 + t479 * t257;
t224 = -qJ(2) * t345 - t477 * t254 + t479 * t256;
t223 = qJ(2) * t346 + t479 * t255 + t477 * t257;
t222 = -qJ(2) * t347 + t479 * t254 + t477 * t256;
t221 = -pkin(7) * t322 - t226;
t220 = -qJ(4) * t312 - t476 * t249 + t478 * t270;
t219 = -qJ(4) * t309 - t476 * t248 + t478 * t269;
t218 = -qJ(2) * t327 - t477 * t250 + t479 * t251;
t217 = qJ(2) * t329 + t479 * t250 + t477 * t251;
t216 = t478 * t227 + t476 * t293;
t215 = t476 * t227 - t478 * t293;
t214 = -t482 * t244 + t485 * t247;
t213 = -t485 * t244 - t482 * t247;
t212 = -t477 * t240 + t479 * t241;
t211 = t479 * t240 + t477 * t241;
t208 = pkin(6) * t524 + qJ(2) * t237 - t477 * t275;
t207 = pkin(6) * t527 + qJ(2) * t552 + t479 * t275 + t534;
t206 = -t482 * t232 + t485 * t233;
t205 = -t485 * t232 - t482 * t233;
t204 = -pkin(3) * t297 - pkin(4) * t422 - pkin(7) * t324 - t227;
t203 = -pkin(6) * t240 - (pkin(3) * t481 - qJ(4) * t484) * t263;
t202 = -qJ(4) * t297 + t478 * t221 + t322 * t533;
t201 = -t482 * t228 + t485 * t230;
t200 = -t485 * t228 - t482 * t230;
t199 = pkin(6) * t241 - (-pkin(3) * t484 - qJ(4) * t481 - pkin(2)) * t263;
t198 = -pkin(6) * t282 + t484 * t220 - t481 * t239;
t197 = t484 * t216 + t481 * t226;
t196 = t481 * t216 - t484 * t226;
t195 = -pkin(6) * t273 + t484 * t219 - t481 * t234;
t194 = -pkin(2) * t312 + pkin(6) * t285 + t481 * t220 + t484 * t239;
t193 = -pkin(2) * t309 + pkin(6) * t274 + t481 * t219 + t484 * t234;
t192 = -pkin(3) * t215 + pkin(4) * t293 - pkin(7) * t227;
t191 = -t482 * t211 + t485 * t212;
t190 = -t485 * t211 - t482 * t212;
t189 = -qJ(4) * t215 + (-pkin(7) * t478 + t533) * t226;
t188 = -pkin(6) * t265 + t484 * t202 - t481 * t204;
t187 = -pkin(2) * t297 + pkin(6) * t267 + t481 * t202 + t484 * t204;
t186 = -t477 * t196 + t479 * t197;
t185 = t479 * t196 + t477 * t197;
t184 = -qJ(2) * t211 - t477 * t199 + t479 * t203;
t183 = -qJ(2) * t244 - t477 * t194 + t479 * t198;
t182 = pkin(1) * t263 + qJ(2) * t212 + t479 * t199 + t477 * t203;
t181 = -pkin(1) * t312 + qJ(2) * t247 + t479 * t194 + t477 * t198;
t180 = -qJ(2) * t232 - t477 * t193 + t479 * t195;
t179 = -pkin(1) * t309 + qJ(2) * t233 + t479 * t193 + t477 * t195;
t178 = -pkin(6) * t196 + t484 * t189 - t481 * t192;
t177 = -qJ(2) * t228 - t477 * t187 + t479 * t188;
t176 = -pkin(1) * t297 + qJ(2) * t230 + t479 * t187 + t477 * t188;
t175 = -t482 * t185 + t485 * t186;
t174 = -t485 * t185 - t482 * t186;
t173 = -pkin(2) * t215 + pkin(6) * t197 + t481 * t189 + t484 * t192;
t172 = -qJ(2) * t185 - t477 * t173 + t479 * t178;
t171 = -pkin(1) * t215 + qJ(2) * t186 + t479 * t173 + t477 * t178;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t475, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t475, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t263, 0, 0, 0, 0, 0, 0, t312, t309, t297, t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t448, t447, 0, t405, 0, 0, 0, 0, 0, 0, t491, t400, 0, t286, 0, 0, 0, 0, 0, 0, t556, t331, 0, t209, 0, 0, 0, 0, 0, 0, -t558, t288, t271, t190, 0, 0, 0, 0, 0, 0, t213, t205, t200, t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t447, t448, 0, t406, 0, 0, 0, 0, 0, 0, -t400, t491, 0, -t551, 0, 0, 0, 0, 0, 0, -t331, t556, 0, t210, 0, 0, 0, 0, 0, 0, -t557, t290, t272, t191, 0, 0, 0, 0, 0, 0, t214, t206, t201, t175; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t458, -t457, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t446 + t492, -pkin(1) * t445 - t391, 0, -pkin(1) * t341, 0, 0, 0, 0, 0, t468, -pkin(1) * t386 - pkin(2) * t439 - t337, -pkin(1) * t382 - pkin(2) * t436 - t338, 0, -pkin(1) * t237 - pkin(2) * t278, t459, 0.2e1 * t476 * t526, 0, t460, 0, 0, pkin(1) * t345 + pkin(2) * t394 - qJ(4) * t427 + t478 * t502, pkin(1) * t343 + pkin(2) * t392 + qJ(4) * t426 - t476 * t502, pkin(1) * t327 + pkin(2) * t378 + pkin(3) * t434 + qJ(4) * t431 + t264, pkin(1) * t211 + pkin(2) * t240 - pkin(3) * t321 + qJ(4) * t264, t476 * t366 - t494, t476 * t325 + t478 * t423, t476 * t362 + t478 * t373, -t476 * t542 + t494, t476 * t363 + t478 * t369, t478 * t451, pkin(1) * t244 + pkin(2) * t282 - pkin(3) * t361 + qJ(4) * t315 + t478 * t249 + t476 * t270, pkin(1) * t232 + pkin(2) * t273 - pkin(3) * t355 + qJ(4) * t310 + t478 * t248 + t476 * t269, pkin(1) * t228 + pkin(2) * t265 + qJ(4) * t298 + t476 * t221 + (-pkin(3) - t532) * t322, pkin(1) * t185 + pkin(2) * t196 + qJ(4) * t216 + (-pkin(3) + t496) * t226; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t447, 0, t448, 0, t495, t429, -t406, -pkin(5) * t406, 0, 0, -t400, 0, t491, 0, t545, -t548, t551, pkin(5) * t551 - qJ(2) * t516 - t485 * t336, 0, 0, -t331, 0, t556, 0, t563, -t564, -t210, -pkin(5) * t210 - t485 * t207 - t482 * t208, -t547, -t485 * t328 - t482 * t330, t288, t547, t558, 0, pkin(5) * t557 - t485 * t222 - t482 * t224, -pkin(5) * t290 - t485 * t223 - t482 * t225, -pkin(5) * t272 - t485 * t217 - t482 * t218, -pkin(5) * t191 - t485 * t182 - t482 * t184, -t485 * t259 - t482 * t261, -t485 * t229 - t482 * t231, -t485 * t242 - t482 * t245, -t485 * t258 - t482 * t260, -t485 * t243 - t482 * t246, -t485 * t295 - t482 * t296, -pkin(5) * t214 - t485 * t181 - t482 * t183, -pkin(5) * t206 - t485 * t179 - t482 * t180, -pkin(5) * t201 - t485 * t176 - t482 * t177, -pkin(5) * t175 - t485 * t171 - t482 * t172; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t448, 0, -t447, 0, -t429, t495, t405, pkin(5) * t405, 0, 0, -t491, 0, -t400, 0, t548, t545, t286, pkin(5) * t286 + qJ(2) * t509 - t482 * t336, 0, 0, -t556, 0, -t331, 0, t564, t563, t209, pkin(5) * t209 - t482 * t207 + t485 * t208, -t546, -t482 * t328 + t485 * t330, t290, t546, t557, 0, -pkin(5) * t558 - t482 * t222 + t485 * t224, pkin(5) * t288 - t482 * t223 + t485 * t225, pkin(5) * t271 - t482 * t217 + t485 * t218, pkin(5) * t190 - t482 * t182 + t485 * t184, -t482 * t259 + t485 * t261, -t482 * t229 + t485 * t231, -t482 * t242 + t485 * t245, -t482 * t258 + t485 * t260, -t482 * t243 + t485 * t246, -t482 * t295 + t485 * t296, pkin(5) * t213 - t482 * t181 + t485 * t183, pkin(5) * t205 - t482 * t179 + t485 * t180, pkin(5) * t200 - t482 * t176 + t485 * t177, pkin(5) * t174 - t482 * t171 + t485 * t172;];
tauB_reg = t1;