% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPPRP1
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
%   pkin=[a2,a3,a4,a5,d1,d4,theta2,theta3]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPPRP1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP1_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP1_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP1_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP1_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:36:30
% EndTime: 2019-12-05 17:36:40
% DurationCPUTime: 7.17s
% Computational Cost: add. (15160->437), mult. (33421->617), div. (0->0), fcn. (19855->8), ass. (0->330)
t558 = 2 * qJD(3);
t473 = sin(qJ(1));
t475 = cos(qJ(1));
t443 = t473 * g(2) - t475 * g(3);
t476 = qJD(1) ^ 2;
t428 = -t476 * pkin(1) + t443;
t469 = sin(pkin(7));
t471 = cos(pkin(7));
t444 = t475 * g(2) + t473 * g(3);
t481 = qJDD(1) * pkin(1) + t444;
t382 = t471 * t428 + t469 * t481;
t372 = -t476 * pkin(2) + qJDD(1) * qJ(3) + t382;
t567 = (qJD(1) * t558) + t372;
t381 = t469 * t428 - t471 * t481;
t499 = t469 * t381 + t471 * t382;
t333 = t471 * t381 - t469 * t382;
t526 = t475 * t333;
t277 = -t473 * t499 + t526;
t531 = t473 * t333;
t278 = t475 * t499 + t531;
t518 = t469 * qJDD(1);
t433 = t471 * t476 + t518;
t466 = g(1) - qJDD(2);
t406 = qJ(2) * t433 - t471 * t466;
t516 = t471 * qJDD(1);
t537 = t469 * t476;
t434 = t516 - t537;
t486 = t473 * t433 - t475 * t434;
t489 = -qJ(2) * t434 - t469 * t466;
t566 = pkin(5) * t486 + t473 * t406 + t475 * t489;
t468 = sin(pkin(8));
t461 = t468 ^ 2;
t470 = cos(pkin(8));
t462 = t470 ^ 2;
t426 = (t461 + t462) * t470 * t476;
t504 = t470 * t516;
t394 = -t469 * t426 + t504;
t517 = t470 * qJDD(1);
t396 = t471 * t426 + t469 * t517;
t565 = t475 * t394 - t473 * t396;
t564 = t473 * t394 + t475 * t396;
t389 = t475 * t433 + t473 * t434;
t563 = pkin(5) * t389 + t475 * t406 - t473 * t489;
t522 = t470 * qJD(1);
t450 = -qJD(4) + t522;
t447 = t450 ^ 2;
t474 = cos(qJ(4));
t465 = t474 ^ 2;
t540 = t461 * t476;
t514 = t465 * t540;
t400 = -t514 - t447;
t472 = sin(qJ(4));
t513 = t472 * t474 * t476;
t440 = t461 * t513;
t449 = -qJDD(4) + t517;
t411 = -t440 + t449;
t533 = t472 * t411;
t359 = t474 * t400 + t533;
t557 = pkin(3) * t359;
t464 = t472 ^ 2;
t448 = t464 * t540;
t417 = -t448 - t447;
t412 = -t440 - t449;
t527 = t474 * t412;
t365 = t472 * t417 + t527;
t556 = pkin(3) * t365;
t555 = pkin(3) * t468;
t554 = pkin(3) * t470;
t520 = qJDD(1) * t472;
t523 = qJD(1) * t474;
t377 = (t520 + (qJD(4) + t450) * t523) * t468;
t524 = qJD(1) * t472;
t507 = t468 * t524;
t445 = qJD(4) * t507;
t508 = t450 * t524;
t519 = qJDD(1) * t474;
t380 = t445 + (t508 - t519) * t468;
t337 = -t474 * t377 - t472 * t380;
t419 = t448 + t514;
t313 = t470 * t337 - t468 * t419;
t335 = -t472 * t377 + t474 * t380;
t268 = t469 * t313 - t471 * t335;
t270 = t471 * t313 + t469 * t335;
t229 = -t473 * t268 + t475 * t270;
t553 = pkin(5) * t229;
t528 = t474 * t411;
t360 = -t472 * t400 + t528;
t479 = -t445 + (t508 + t519) * t468;
t317 = t470 * t360 + t468 * t479;
t281 = t469 * t317 - t471 * t359;
t282 = t471 * t317 + t469 * t359;
t239 = -t473 * t281 + t475 * t282;
t552 = pkin(5) * t239;
t532 = t472 * t412;
t368 = t474 * t417 - t532;
t376 = (t520 + (qJD(4) - t450) * t523) * t468;
t324 = t470 * t368 + t468 * t376;
t293 = t469 * t324 - t471 * t365;
t296 = t471 * t324 + t469 * t365;
t249 = -t473 * t293 + t475 * t296;
t551 = pkin(5) * t249;
t550 = pkin(6) * t335;
t549 = pkin(6) * t359;
t548 = pkin(6) * t365;
t547 = qJ(2) * t268;
t546 = qJ(2) * t281;
t545 = qJ(2) * t293;
t311 = t468 * t337 + t470 * t419;
t544 = qJ(3) * t311;
t316 = t468 * t360 - t470 * t479;
t543 = qJ(3) * t316;
t321 = t468 * t368 - t470 * t376;
t542 = qJ(3) * t321;
t467 = qJDD(1) * pkin(2);
t541 = t449 * t468;
t539 = t468 * t470;
t369 = -t476 * qJ(3) + qJDD(3) + t381 - t467;
t538 = t469 * t369;
t536 = t471 * t369;
t349 = -t468 * t466 + t567 * t470;
t493 = -pkin(6) * t468 - t554;
t427 = t493 * qJD(1);
t329 = t427 * t522 + t349;
t355 = qJDD(1) * t493 + t369;
t287 = t472 * t329 - t474 * t355;
t414 = t468 * t519 - t445;
t496 = t450 * t507;
t490 = pkin(4) * t440 + t287 + (t414 - t496) * qJ(5);
t480 = -t449 * pkin(4) - t490;
t525 = qJD(1) * t468;
t505 = qJD(5) * t525;
t495 = t474 * t505;
t261 = t480 - 0.2e1 * t495;
t535 = t472 * t261;
t455 = t470 * t466;
t328 = t455 + (t372 + (t558 + t427) * qJD(1)) * t468;
t534 = t472 * t328;
t530 = t474 * t261;
t529 = t474 * t328;
t288 = t474 * t329 + t472 * t355;
t512 = pkin(1) * t268 - pkin(2) * t335 + qJ(3) * t313;
t511 = pkin(1) * t281 - pkin(2) * t359 + qJ(3) * t317;
t510 = pkin(1) * t293 - pkin(2) * t365 + qJ(3) * t324;
t509 = t450 * t525;
t506 = t468 * t523;
t503 = -pkin(1) * t311 + qJ(2) * t270;
t502 = -pkin(1) * t316 + qJ(2) * t282;
t501 = -pkin(1) * t321 + qJ(2) * t296;
t500 = -t369 + t467;
t348 = t567 * t468 + t455;
t302 = t468 * t348 + t470 * t349;
t410 = -t450 * pkin(4) - qJ(5) * t506;
t498 = -t410 * t474 - t427;
t460 = t468 * t461;
t497 = t460 * t513;
t413 = (-qJD(4) * t523 - t520) * t468;
t494 = -t413 * pkin(4) - qJ(5) * t448 + qJDD(5) + t455;
t438 = t473 * qJDD(1) + t475 * t476;
t492 = pkin(5) * t438 - t475 * g(1);
t491 = t470 * t440;
t240 = -t474 * t287 + t472 * t288;
t241 = t472 * t287 + t474 * t288;
t301 = t470 * t348 - t468 * t349;
t401 = t433 * t539;
t402 = t468 * t504 - t537 * t539;
t488 = t475 * t401 + t473 * t402;
t487 = t473 * t401 - t475 * t402;
t399 = t475 * t443 - t473 * t444;
t398 = -t473 * t443 - t475 * t444;
t485 = t413 * qJ(5) + t450 * t410 - 0.2e1 * t472 * t505 + t288;
t484 = -pkin(2) * t311 - pkin(3) * t419 - pkin(6) * t337;
t483 = -pkin(2) * t316 + pkin(3) * t479 - pkin(6) * t360;
t482 = -pkin(2) * t321 + pkin(3) * t376 - pkin(6) * t368;
t297 = (t372 + (t558 - t498) * qJD(1)) * t468 + t494;
t459 = t462 * t476;
t457 = t462 * qJDD(1);
t456 = t461 * qJDD(1);
t442 = 0.2e1 * t495;
t439 = -t475 * qJDD(1) + t473 * t476;
t437 = t459 - t540;
t436 = t459 + t540;
t432 = t470 * t449;
t430 = t457 - t456;
t429 = t457 + t456;
t425 = (t462 * t468 + t460) * t476;
t420 = t448 - t514;
t418 = t447 - t514;
t416 = t448 - t447;
t415 = -pkin(5) * t439 + t473 * g(1);
t395 = t471 * t425 + t468 * t518;
t392 = t469 * t425 - t468 * t516;
t387 = t471 * t430 - t469 * t437;
t386 = t471 * t429 - t469 * t436;
t385 = t469 * t430 + t471 * t437;
t384 = t469 * t429 + t471 * t436;
t383 = (-t464 - t465) * t509;
t374 = -t472 * t414 + t465 * t509;
t373 = -t474 * t413 + t464 * t509;
t371 = (t414 + t496) * t474;
t370 = (-t450 * t506 - t413) * t472;
t367 = t474 * t416 + t533;
t366 = -t472 * t418 + t527;
t364 = -t472 * t416 + t528;
t363 = -t474 * t418 - t532;
t358 = -t469 * t383 - t471 * t541;
t357 = t471 * t383 - t469 * t541;
t354 = t470 * t371 + t497;
t353 = t470 * t370 - t497;
t352 = -pkin(4) * t479 + qJ(5) * t411;
t347 = t468 * t371 - t491;
t346 = t468 * t370 + t491;
t343 = -t473 * t392 + t475 * t395;
t341 = -t475 * t392 - t473 * t395;
t340 = -t473 * t384 + t475 * t386;
t339 = -t475 * t384 - t473 * t386;
t338 = -t474 * t376 - t472 * t479;
t336 = t472 * t376 - t474 * t479;
t325 = pkin(1) * t466 + qJ(2) * t499;
t323 = t470 * t367 - t468 * t377;
t322 = t470 * t366 - t468 * t380;
t320 = t468 * t367 + t470 * t377;
t319 = t468 * t366 + t470 * t380;
t314 = t470 * t338 - t468 * t420;
t312 = t468 * t338 + t470 * t420;
t309 = t471 * t354 - t469 * t374;
t308 = t471 * t353 - t469 * t373;
t307 = t469 * t354 + t471 * t374;
t306 = t469 * t353 + t471 * t373;
t305 = -t473 * t357 + t475 * t358;
t304 = -t475 * t357 - t473 * t358;
t303 = -pkin(3) * t335 - pkin(4) * t380;
t299 = t534 - t548;
t298 = t529 - t549;
t295 = t471 * t323 - t469 * t364;
t294 = t471 * t322 - t469 * t363;
t292 = t469 * t323 + t471 * t364;
t291 = t469 * t322 + t471 * t363;
t286 = -qJ(2) * t392 - t469 * t349 + t470 * t536;
t285 = -qJ(2) * t394 - t469 * t348 + t468 * t536;
t284 = qJ(2) * t395 + t471 * t349 + t470 * t538;
t283 = -qJ(2) * t396 + t471 * t348 + t468 * t538;
t276 = -qJ(5) * t400 + t297;
t275 = -qJ(2) * t384 + t471 * t301;
t274 = qJ(2) * t386 + t469 * t301;
t273 = t471 * t302 + t538;
t272 = t469 * t302 - t536;
t271 = t471 * t314 - t469 * t336;
t269 = t469 * t314 + t471 * t336;
t267 = t287 - t556;
t264 = -pkin(4) * t376 + qJ(5) * t417 - t494 + (t498 * qJD(1) - t567) * t468;
t263 = t288 - t557;
t262 = -pkin(4) * t448 + t485;
t260 = -t473 * t307 + t475 * t309;
t259 = -t473 * t306 + t475 * t308;
t258 = -t475 * t307 - t473 * t309;
t257 = -t475 * t306 - t473 * t308;
t256 = -qJ(5) * t380 + t442 - t480;
t255 = t482 + t529;
t254 = -qJ(5) * t377 + (t419 - t448) * pkin(4) + t485;
t253 = -qJ(5) * t527 - t472 * t264 - t548;
t252 = t483 - t534;
t251 = -t556 + t442 + (-t412 + t449) * pkin(4) + t490;
t250 = t474 * t276 - t472 * t352 - t549;
t248 = -t473 * t292 + t475 * t295;
t247 = -t473 * t291 + t475 * t294;
t246 = -t475 * t293 - t473 * t296;
t245 = -t475 * t292 - t473 * t295;
t244 = -t475 * t291 - t473 * t294;
t243 = pkin(5) * t246;
t242 = -t557 + (-t400 - t448) * pkin(4) + t485;
t238 = -t475 * t281 - t473 * t282;
t237 = pkin(5) * t238;
t236 = -pkin(4) * t297 + qJ(5) * t262;
t235 = -t473 * t272 + t475 * t273;
t234 = -t475 * t272 - t473 * t273;
t233 = -t240 - t550;
t232 = t470 * t241 + t468 * t328;
t231 = t468 * t241 - t470 * t328;
t230 = -t473 * t269 + t475 * t271;
t228 = -t475 * t269 - t473 * t271;
t227 = -t475 * t268 - t473 * t270;
t226 = pkin(5) * t227;
t225 = qJ(5) * t532 - t474 * t264 + t482;
t224 = -t468 * t267 + t470 * t299 - t542;
t223 = -t472 * t276 - t474 * t352 + t483;
t222 = t474 * t262 - t535;
t221 = t472 * t262 + t530;
t220 = -t468 * t263 + t470 * t298 - t543;
t219 = -qJ(2) * t272 - (pkin(2) * t469 - qJ(3) * t471) * t301;
t218 = -t241 + t484;
t217 = t470 * t233 + t335 * t555 - t544;
t216 = t470 * t222 + t468 * t297;
t215 = t468 * t222 - t470 * t297;
t214 = qJ(2) * t273 - (-pkin(2) * t471 - qJ(3) * t469 - pkin(1)) * t301;
t213 = -t472 * t254 + t474 * t256 - t550;
t212 = -t468 * t251 + t470 * t253 - t542;
t211 = -pkin(3) * t221 - pkin(4) * t261;
t210 = -t468 * t242 + t470 * t250 - t543;
t209 = t471 * t232 + t469 * t240;
t208 = t469 * t232 - t471 * t240;
t207 = -t474 * t254 - t472 * t256 + t484;
t206 = -pkin(2) * t231 + pkin(3) * t328 - pkin(6) * t241;
t205 = t471 * t224 - t469 * t255 - t545;
t204 = t470 * t213 - t468 * t303 - t544;
t203 = t471 * t220 - t469 * t252 - t546;
t202 = t469 * t224 + t471 * t255 + t501;
t201 = t469 * t220 + t471 * t252 + t502;
t200 = -qJ(3) * t231 + (-pkin(6) * t470 + t555) * t240;
t199 = -pkin(6) * t221 - qJ(5) * t530 - t472 * t236;
t198 = t471 * t216 + t469 * t221;
t197 = t469 * t216 - t471 * t221;
t196 = t471 * t212 - t469 * t225 - t545;
t195 = t471 * t217 - t469 * t218 - t547;
t194 = t471 * t210 - t469 * t223 - t546;
t193 = t469 * t212 + t471 * t225 + t501;
t192 = t469 * t210 + t471 * t223 + t502;
t191 = t469 * t217 + t471 * t218 + t503;
t190 = -t473 * t208 + t475 * t209;
t189 = -t475 * t208 - t473 * t209;
t188 = -pkin(2) * t215 + pkin(3) * t297 - pkin(6) * t222 + qJ(5) * t535 - t474 * t236;
t187 = t471 * t204 - t469 * t207 - t547;
t186 = t469 * t204 + t471 * t207 + t503;
t185 = -t473 * t197 + t475 * t198;
t184 = -t475 * t197 - t473 * t198;
t183 = -qJ(3) * t215 + t470 * t199 - t468 * t211;
t182 = -qJ(2) * t208 + t471 * t200 - t469 * t206;
t181 = -pkin(1) * t231 + qJ(2) * t209 + t469 * t200 + t471 * t206;
t180 = -qJ(2) * t197 + t471 * t183 - t469 * t188;
t179 = -pkin(1) * t215 + qJ(2) * t198 + t469 * t183 + t471 * t188;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t466, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t301, 0, 0, 0, 0, 0, 0, t321, t316, t311, t231, 0, 0, 0, 0, 0, 0, t321, t316, t311, t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t439, t438, 0, t398, 0, 0, 0, 0, 0, 0, t486, t389, 0, t277, 0, 0, 0, 0, 0, 0, -t565, t341, t339, t234, 0, 0, 0, 0, 0, 0, t246, t238, t227, t189, 0, 0, 0, 0, 0, 0, t246, t238, t227, t184; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t438, t439, 0, t399, 0, 0, 0, 0, 0, 0, -t389, t486, 0, t278, 0, 0, 0, 0, 0, 0, -t564, t343, t340, t235, 0, 0, 0, 0, 0, 0, t249, t239, t229, t190, 0, 0, 0, 0, 0, 0, t249, t239, t229, t185; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t444, -t443, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t434 - t381, -pkin(1) * t433 - t382, 0, -pkin(1) * t333, t456, 0.2e1 * t468 * t517, 0, t457, 0, 0, pkin(1) * t394 - qJ(3) * t426 + t470 * t500, pkin(1) * t392 + qJ(3) * t425 - t468 * t500, pkin(1) * t384 + pkin(2) * t436 + qJ(3) * t429 + t302, pkin(1) * t272 - pkin(2) * t369 + qJ(3) * t302, t347, t312, t319, t346, t320, t432, t470 * t267 + t468 * t299 + t510, t470 * t263 + t468 * t298 + t511, t468 * t233 - t335 * t554 + t512, pkin(1) * t208 + qJ(3) * t232 + (-pkin(2) + t493) * t240, t347, t312, t319, t346, t320, t432, t470 * t251 + t468 * t253 + t510, t470 * t242 + t468 * t250 + t511, t468 * t213 + t470 * t303 + t512, pkin(1) * t197 - pkin(2) * t221 + qJ(3) * t216 + t468 * t199 + t470 * t211; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t438, 0, t439, 0, t492, t415, -t399, -pkin(5) * t399, 0, 0, -t389, 0, t486, 0, t563, -t566, -t278, -pkin(5) * t278 - qJ(2) * t531 - t475 * t325, -t488, -t475 * t385 - t473 * t387, t341, t488, t565, 0, pkin(5) * t564 - t475 * t283 - t473 * t285, -pkin(5) * t343 - t475 * t284 - t473 * t286, -pkin(5) * t340 - t475 * t274 - t473 * t275, -pkin(5) * t235 - t475 * t214 - t473 * t219, t258, t228, t244, t257, t245, t304, -t475 * t202 - t473 * t205 - t551, -t475 * t201 - t473 * t203 - t552, -t475 * t191 - t473 * t195 - t553, -pkin(5) * t190 - t475 * t181 - t473 * t182, t258, t228, t244, t257, t245, t304, -t475 * t193 - t473 * t196 - t551, -t475 * t192 - t473 * t194 - t552, -t475 * t186 - t473 * t187 - t553, -pkin(5) * t185 - t475 * t179 - t473 * t180; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t439, 0, -t438, 0, -t415, t492, t398, pkin(5) * t398, 0, 0, -t486, 0, -t389, 0, t566, t563, t277, pkin(5) * t277 + qJ(2) * t526 - t473 * t325, -t487, -t473 * t385 + t475 * t387, t343, t487, t564, 0, -pkin(5) * t565 - t473 * t283 + t475 * t285, pkin(5) * t341 - t473 * t284 + t475 * t286, pkin(5) * t339 - t473 * t274 + t475 * t275, pkin(5) * t234 - t473 * t214 + t475 * t219, t260, t230, t247, t259, t248, t305, -t473 * t202 + t475 * t205 + t243, -t473 * t201 + t475 * t203 + t237, -t473 * t191 + t475 * t195 + t226, pkin(5) * t189 - t473 * t181 + t475 * t182, t260, t230, t247, t259, t248, t305, -t473 * t193 + t475 * t196 + t243, -t473 * t192 + t475 * t194 + t237, -t473 * t186 + t475 * t187 + t226, pkin(5) * t184 - t473 * t179 + t475 * t180;];
tauB_reg = t1;