% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRRR7
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 12:42
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRRR7_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR7_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR7_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR7_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR7_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR7_invdynJ_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 12:34:16
% EndTime: 2019-05-08 12:35:34
% DurationCPUTime: 30.31s
% Computational Cost: add. (336405->774), mult. (717446->1149), div. (0->0), fcn. (589757->14), ass. (0->501)
t421 = sin(qJ(6));
t420 = cos(pkin(6));
t504 = qJD(1) * t420;
t414 = qJD(2) + t504;
t424 = sin(qJ(3));
t429 = cos(qJ(3));
t419 = sin(pkin(6));
t425 = sin(qJ(2));
t503 = qJD(1) * t425;
t479 = t419 * t503;
t391 = t414 * t424 + t429 * t479;
t423 = sin(qJ(4));
t428 = cos(qJ(4));
t430 = cos(qJ(2));
t502 = qJD(1) * t430;
t412 = t419 * t502;
t494 = t412 - qJD(3);
t370 = t391 * t423 + t428 * t494;
t371 = t428 * t391 - t423 * t494;
t422 = sin(qJ(5));
t427 = cos(qJ(5));
t343 = t427 * t370 + t371 * t422;
t344 = -t370 * t422 + t371 * t427;
t426 = cos(qJ(6));
t299 = t426 * t343 + t344 * t421;
t301 = -t343 * t421 + t344 * t426;
t242 = t301 * t299;
t493 = qJDD(1) * t419;
t397 = qJD(2) * t412 + t425 * t493;
t413 = qJDD(1) * t420 + qJDD(2);
t473 = t424 * t397 - t429 * t413;
t359 = -t391 * qJD(3) - t473;
t358 = qJDD(4) - t359;
t357 = qJDD(5) + t358;
t356 = qJDD(6) + t357;
t556 = -t242 + t356;
t564 = t421 * t556;
t303 = t344 * t343;
t554 = -t303 + t357;
t563 = t422 * t554;
t346 = t371 * t370;
t552 = -t346 + t358;
t562 = t423 * t552;
t561 = t426 * t556;
t560 = t427 * t554;
t559 = t428 * t552;
t492 = qJDD(1) * t430;
t448 = (qJD(2) * t503 - t492) * t419;
t439 = qJDD(3) + t448;
t491 = t494 ^ 2;
t389 = -t429 * t414 + t424 * t479;
t511 = t391 * t389;
t438 = t439 - t511;
t558 = t424 * t438;
t557 = t429 * t438;
t461 = -t429 * t397 - t424 * t413;
t360 = -t389 * qJD(3) - t461;
t435 = -t428 * t360 - t423 * t439;
t314 = -t370 * qJD(4) - t435;
t434 = -t423 * t360 + t428 * t439;
t432 = t371 * qJD(4) - t434;
t249 = -t343 * qJD(5) + t427 * t314 - t422 * t432;
t475 = t314 * t422 + t427 * t432;
t457 = qJD(5) * t344 + t475;
t171 = -t299 * qJD(6) + t426 * t249 - t421 * t457;
t386 = qJD(4) + t389;
t383 = qJD(5) + t386;
t380 = qJD(6) + t383;
t278 = t380 * t299;
t555 = -t278 + t171;
t321 = t383 * t343;
t553 = -t321 + t249;
t217 = t321 + t249;
t355 = t386 * t370;
t292 = t355 + t314;
t377 = t494 * t389;
t336 = t360 + t377;
t544 = sin(qJ(1));
t545 = cos(qJ(1));
t454 = g(1) * t545 + g(2) * t544;
t547 = qJD(1) ^ 2;
t393 = -pkin(1) * t547 + pkin(8) * t493 - t454;
t453 = g(1) * t544 - g(2) * t545;
t500 = t419 * t547;
t437 = qJDD(1) * pkin(1) + pkin(8) * t500 + t453;
t436 = t420 * t437;
t474 = t425 * t393 - t430 * t436;
t539 = g(3) * t430;
t362 = t419 * t539 + t474;
t510 = t419 * t425;
t433 = -g(3) * t510 + t425 * t436;
t363 = t430 * t393 + t433;
t551 = t425 * t362 + t430 * t363;
t476 = t249 * t421 + t426 * t457;
t150 = (qJD(6) - t380) * t301 + t476;
t214 = (qJD(5) - t383) * t344 + t475;
t288 = t371 * (qJD(4) - t386) - t434;
t297 = t299 ^ 2;
t298 = t301 ^ 2;
t549 = t343 ^ 2;
t342 = t344 ^ 2;
t548 = t370 ^ 2;
t369 = t371 ^ 2;
t379 = t380 ^ 2;
t381 = t383 ^ 2;
t384 = t386 ^ 2;
t387 = t389 ^ 2;
t388 = t391 ^ 2;
t411 = t414 ^ 2;
t416 = t419 ^ 2;
t543 = pkin(2) * t430;
t468 = -pkin(9) * t425 - t543;
t505 = qJD(1) * t419;
t396 = t468 * t505;
t330 = t413 * pkin(9) - t411 * pkin(2) + (t396 * t505 + t393) * t430 + t433;
t538 = t420 * g(3);
t431 = -t397 * pkin(9) - t538 + ((-pkin(1) - t543) * qJDD(1) + (-pkin(8) * t505 - t430 * t414 * pkin(9) + (qJD(2) + t414) * t425 * pkin(2)) * qJD(1) - t453) * t419;
t281 = t429 * t330 + t424 * t431;
t364 = pkin(3) * t389 - pkin(10) * t391;
t254 = -pkin(3) * t491 + pkin(10) * t439 - t389 * t364 + t281;
t329 = -t413 * pkin(2) - t411 * pkin(9) + (t396 * t503 + t539) * t419 + t474;
t472 = t494 * t391;
t257 = -t336 * pkin(10) + (-t359 - t472) * pkin(3) + t329;
t196 = t254 * t423 - t428 * t257;
t163 = pkin(4) * t552 - pkin(11) * t292 - t196;
t197 = t428 * t254 + t423 * t257;
t349 = pkin(4) * t386 - pkin(11) * t371;
t173 = -pkin(4) * t548 - pkin(11) * t432 - t386 * t349 + t197;
t116 = -t427 * t163 + t173 * t422;
t117 = t422 * t163 + t427 * t173;
t74 = -t116 * t427 + t117 * t422;
t546 = pkin(4) * t74;
t542 = pkin(3) * t424;
t165 = -t214 * t422 - t217 * t427;
t541 = pkin(4) * t165;
t540 = pkin(8) * t419;
t93 = pkin(5) * t554 - pkin(12) * t217 - t116;
t318 = pkin(5) * t383 - pkin(12) * t344;
t94 = -pkin(5) * t549 - pkin(12) * t457 - t383 * t318 + t117;
t53 = t421 * t94 - t426 * t93;
t54 = t421 * t93 + t426 * t94;
t31 = t421 * t54 - t426 * t53;
t537 = t31 * t422;
t536 = t31 * t427;
t535 = t423 * t74;
t534 = t428 * t74;
t280 = t330 * t424 - t429 * t431;
t253 = -t439 * pkin(3) - t491 * pkin(10) + t364 * t391 + t280;
t198 = t432 * pkin(4) - t548 * pkin(11) + t349 * t371 + t253;
t138 = pkin(5) * t457 - pkin(12) * t549 + t318 * t344 + t198;
t533 = t138 * t421;
t532 = t138 * t426;
t531 = t198 * t422;
t530 = t198 * t427;
t226 = t242 + t356;
t529 = t226 * t421;
t528 = t226 * t426;
t527 = t253 * t423;
t526 = t253 * t428;
t267 = t303 + t357;
t525 = t267 * t422;
t524 = t267 * t427;
t305 = t346 + t358;
t523 = t305 * t423;
t522 = t305 * t428;
t521 = t329 * t424;
t520 = t329 * t429;
t352 = -t511 - t439;
t519 = t352 * t424;
t518 = t352 * t429;
t517 = t380 * t421;
t516 = t380 * t426;
t515 = t383 * t422;
t514 = t383 * t427;
t513 = t386 * t423;
t512 = t386 * t428;
t501 = t416 * t547;
t406 = t430 * t425 * t501;
t394 = t406 + t413;
t508 = t425 * t394;
t395 = -t406 + t413;
t506 = t430 * t395;
t499 = 0.2e1 * qJD(3) - t412;
t497 = qJD(4) + t386;
t490 = t424 * t242;
t489 = t429 * t242;
t488 = t424 * t303;
t487 = t429 * t303;
t486 = t424 * t346;
t485 = t429 * t346;
t484 = t430 * t511;
t401 = t414 * t412;
t483 = t401 + t397;
t482 = -pkin(3) * t429 - pkin(2);
t32 = t421 * t53 + t426 * t54;
t17 = t32 * t422 + t536;
t30 = pkin(5) * t31;
t481 = pkin(4) * t17 + t30;
t153 = t278 + t171;
t101 = -t150 * t421 - t153 * t426;
t103 = -t150 * t426 + t153 * t421;
t66 = t101 * t427 + t103 * t422;
t99 = pkin(5) * t101;
t480 = pkin(4) * t66 + t99;
t417 = t425 ^ 2;
t478 = t417 * t501;
t418 = t430 ^ 2;
t477 = t418 * t501;
t75 = t116 * t422 + t427 * t117;
t140 = t196 * t423 + t428 * t197;
t231 = t280 * t424 + t429 * t281;
t471 = -t414 + t504;
t307 = -t342 - t381;
t239 = t307 * t427 - t525;
t470 = pkin(4) * t239 - t117;
t234 = -t379 - t297;
t179 = t234 * t421 + t561;
t469 = pkin(5) * t179 - t53;
t467 = -pkin(3) * t253 + pkin(10) * t140;
t466 = t424 * t377;
t465 = t424 * t472;
t464 = t429 * t377;
t463 = t429 * t472;
t139 = -t196 * t428 + t197 * t423;
t462 = t280 * t429 - t281 * t424;
t460 = -pkin(1) + t468;
t282 = -t381 - t549;
t221 = t282 * t422 + t560;
t459 = pkin(4) * t221 - t116;
t263 = -t298 - t379;
t189 = t263 * t426 - t529;
t458 = pkin(5) * t189 - t54;
t333 = t391 * t412 + t473;
t180 = t234 * t426 - t564;
t121 = t179 * t427 + t180 * t422;
t456 = pkin(4) * t121 + t469;
t325 = -t384 - t548;
t262 = t325 * t428 - t562;
t289 = -t371 * t497 + t434;
t452 = pkin(3) * t289 + pkin(10) * t262 - t526;
t340 = -t369 - t384;
t265 = -t340 * t423 - t522;
t293 = t370 * t497 + t435;
t451 = pkin(3) * t293 + pkin(10) * t265 + t527;
t238 = -t288 * t428 + t292 * t423;
t315 = t369 + t548;
t450 = pkin(3) * t315 + pkin(10) * t238 + t140;
t190 = -t263 * t421 - t528;
t130 = t189 * t427 + t190 * t422;
t449 = pkin(4) * t130 + t458;
t27 = -pkin(5) * t138 + pkin(12) * t32;
t10 = -pkin(11) * t17 - pkin(12) * t536 - t27 * t422;
t18 = t32 * t427 - t537;
t12 = -t17 * t423 + t18 * t428;
t6 = -pkin(4) * t138 + pkin(11) * t18 - pkin(12) * t537 + t27 * t427;
t447 = -pkin(3) * t138 + pkin(10) * t12 + t10 * t423 + t428 * t6;
t149 = (qJD(6) + t380) * t301 + t476;
t108 = -pkin(12) * t179 + t533;
t122 = -t179 * t422 + t180 * t427;
t80 = -pkin(5) * t149 + pkin(12) * t180 - t532;
t43 = -pkin(4) * t149 + pkin(11) * t122 + t108 * t422 + t427 * t80;
t49 = -pkin(11) * t121 + t108 * t427 - t422 * t80;
t78 = -t121 * t423 + t122 * t428;
t446 = -pkin(3) * t149 + pkin(10) * t78 + t423 * t49 + t428 * t43;
t201 = -t297 - t298;
t24 = -pkin(5) * t201 + pkin(12) * t103 + t32;
t25 = -pkin(12) * t101 - t31;
t68 = -t101 * t422 + t103 * t427;
t15 = -pkin(4) * t201 + pkin(11) * t68 + t24 * t427 + t25 * t422;
t16 = -pkin(11) * t66 - t24 * t422 + t25 * t427;
t41 = -t423 * t66 + t428 * t68;
t445 = -pkin(3) * t201 + pkin(10) * t41 + t15 * t428 + t16 * t423;
t110 = -pkin(12) * t189 + t532;
t131 = -t189 * t422 + t190 * t427;
t82 = -pkin(5) * t555 + pkin(12) * t190 + t533;
t46 = -pkin(4) * t555 + pkin(11) * t131 + t110 * t422 + t427 * t82;
t50 = -pkin(11) * t130 + t110 * t427 - t422 * t82;
t87 = -t130 * t423 + t131 * t428;
t444 = -pkin(3) * t555 + pkin(10) * t87 + t423 * t50 + t428 * t46;
t167 = -t214 * t427 + t217 * t422;
t114 = -t165 * t423 + t167 * t428;
t260 = -t342 - t549;
t55 = -pkin(4) * t260 + pkin(11) * t167 + t75;
t58 = -pkin(11) * t165 - t74;
t443 = -pkin(3) * t260 + pkin(10) * t114 + t423 * t58 + t428 * t55;
t213 = (qJD(5) + t383) * t344 + t475;
t222 = t282 * t427 - t563;
t126 = -pkin(4) * t213 + pkin(11) * t222 - t530;
t155 = -pkin(11) * t221 + t531;
t169 = -t221 * t423 + t222 * t428;
t442 = -pkin(3) * t213 + pkin(10) * t169 + t126 * t428 + t155 * t423;
t240 = -t307 * t422 - t524;
t127 = -pkin(4) * t553 + pkin(11) * t240 + t531;
t156 = -pkin(11) * t239 + t530;
t182 = -t239 * t423 + t240 * t428;
t441 = -pkin(3) * t553 + pkin(10) * t182 + t127 * t428 + t156 * t423;
t48 = t428 * t75 - t535;
t69 = -pkin(4) * t198 + pkin(11) * t75;
t440 = -pkin(3) * t198 + pkin(10) * t48 - pkin(11) * t535 + t428 * t69;
t400 = t414 * t479;
t399 = (t417 - t418) * t501;
t398 = -t411 - t477;
t385 = -t478 - t411;
t378 = t419 * t437 + t538;
t376 = -t400 - t448;
t375 = t400 - t448;
t374 = -t401 + t397;
t373 = t491 - t388;
t372 = t387 - t491;
t366 = -t388 - t491;
t365 = t388 - t387;
t361 = -t491 - t387;
t351 = -t369 + t384;
t350 = -t384 + t548;
t348 = t387 + t388;
t347 = t466 + t463;
t345 = t369 - t548;
t338 = t389 * t499 + t461;
t337 = t360 - t377;
t334 = -t391 * t499 - t473;
t332 = t424 * t360 - t463;
t331 = t429 * t359 - t466;
t324 = t372 * t424 - t518;
t323 = t373 * t429 + t558;
t320 = -t342 + t381;
t319 = -t381 + t549;
t317 = -t366 * t424 + t518;
t316 = t366 * t429 + t519;
t312 = t361 * t429 - t558;
t311 = t361 * t424 + t557;
t309 = (-t370 * t428 + t371 * t423) * t386;
t308 = (-t370 * t423 - t371 * t428) * t386;
t302 = t342 - t549;
t296 = -t333 * t429 + t337 * t424;
t294 = t334 * t424 + t336 * t429;
t291 = -t355 + t314;
t287 = t314 * t428 - t371 * t513;
t286 = t314 * t423 + t371 * t512;
t285 = t370 * t512 + t423 * t432;
t284 = -t370 * t513 + t428 * t432;
t283 = t309 * t424 - t358 * t429;
t277 = -t298 + t379;
t276 = t297 - t379;
t274 = t350 * t428 - t523;
t273 = -t351 * t423 + t559;
t272 = t350 * t423 + t522;
t271 = t351 * t428 + t562;
t270 = (-t343 * t427 + t344 * t422) * t383;
t269 = (-t343 * t422 - t344 * t427) * t383;
t264 = t340 * t428 - t523;
t261 = t325 * t423 + t559;
t259 = t287 * t424 - t485;
t258 = t285 * t424 + t485;
t252 = pkin(2) * t338 + pkin(9) * t317 + t521;
t250 = pkin(2) * t334 + pkin(9) * t312 - t520;
t246 = t319 * t427 - t525;
t245 = -t320 * t422 + t560;
t244 = t319 * t422 + t524;
t243 = t320 * t427 + t563;
t241 = t298 - t297;
t237 = t289 * t428 - t291 * t423;
t236 = -t288 * t423 - t292 * t428;
t235 = t289 * t423 + t291 * t428;
t233 = t274 * t424 + t288 * t429;
t232 = t273 * t424 - t292 * t429;
t229 = (-t299 * t426 + t301 * t421) * t380;
t228 = (-t299 * t421 - t301 * t426) * t380;
t224 = t265 * t429 - t293 * t424;
t223 = t265 * t424 + t293 * t429;
t220 = t262 * t429 - t289 * t424;
t219 = t262 * t424 + t289 * t429;
t212 = t249 * t427 - t344 * t515;
t211 = t249 * t422 + t344 * t514;
t210 = t343 * t514 + t422 * t457;
t209 = t343 * t515 - t427 * t457;
t208 = -t269 * t423 + t270 * t428;
t207 = t269 * t428 + t270 * t423;
t206 = t237 * t424 - t345 * t429;
t205 = t238 * t429 - t315 * t424;
t204 = t238 * t424 + t315 * t429;
t203 = -pkin(2) * t329 + pkin(9) * t231;
t202 = t208 * t424 - t357 * t429;
t200 = -pkin(10) * t264 + t526;
t199 = -pkin(10) * t261 + t527;
t194 = t276 * t426 - t529;
t193 = -t277 * t421 + t561;
t192 = t276 * t421 + t528;
t191 = t277 * t426 + t564;
t187 = pkin(2) * t348 + pkin(9) * t296 + t231;
t186 = -t244 * t423 + t246 * t428;
t185 = -t243 * t423 + t245 * t428;
t184 = t244 * t428 + t246 * t423;
t183 = t243 * t428 + t245 * t423;
t181 = t239 * t428 + t240 * t423;
t177 = -pkin(3) * t264 + t197;
t176 = -t228 * t422 + t229 * t427;
t175 = t228 * t427 + t229 * t422;
t174 = -pkin(3) * t261 + t196;
t170 = -qJD(6) * t301 - t476;
t168 = t221 * t428 + t222 * t423;
t166 = -t213 * t427 - t422 * t553;
t164 = -t213 * t422 + t427 * t553;
t160 = -t211 * t423 + t212 * t428;
t159 = -t209 * t423 + t210 * t428;
t158 = t211 * t428 + t212 * t423;
t157 = t209 * t428 + t210 * t423;
t148 = t171 * t426 - t301 * t517;
t147 = t171 * t421 + t301 * t516;
t146 = -t170 * t421 + t299 * t516;
t145 = t170 * t426 + t299 * t517;
t144 = t160 * t424 - t487;
t143 = t159 * t424 + t487;
t142 = t186 * t424 + t214 * t429;
t141 = t185 * t424 - t217 * t429;
t137 = t182 * t429 + t424 * t553;
t136 = t182 * t424 - t429 * t553;
t135 = -t192 * t422 + t194 * t427;
t134 = -t191 * t422 + t193 * t427;
t133 = t192 * t427 + t194 * t422;
t132 = t191 * t427 + t193 * t422;
t129 = t169 * t429 + t213 * t424;
t128 = t169 * t424 - t213 * t429;
t125 = t140 * t429 + t253 * t424;
t124 = t140 * t424 - t253 * t429;
t123 = -pkin(10) * t236 - t139;
t120 = -t175 * t423 + t176 * t428;
t119 = t175 * t428 + t176 * t423;
t118 = t120 * t424 - t356 * t429;
t113 = -t164 * t423 + t166 * t428;
t112 = t165 * t428 + t167 * t423;
t111 = t164 * t428 + t166 * t423;
t109 = t113 * t424 - t302 * t429;
t107 = -pkin(2) * t264 + pkin(9) * t224 + t177 * t429 + t200 * t424;
t106 = -pkin(2) * t261 + pkin(9) * t220 + t174 * t429 + t199 * t424;
t105 = t114 * t429 + t260 * t424;
t104 = t114 * t424 - t260 * t429;
t102 = -t149 * t426 - t421 * t555;
t100 = -t149 * t421 + t426 * t555;
t98 = -t147 * t422 + t148 * t427;
t97 = -t145 * t422 + t146 * t427;
t96 = t147 * t427 + t148 * t422;
t95 = t145 * t427 + t146 * t422;
t91 = -t133 * t423 + t135 * t428;
t90 = -t132 * t423 + t134 * t428;
t89 = t133 * t428 + t135 * t423;
t88 = t132 * t428 + t134 * t423;
t86 = t130 * t428 + t131 * t423;
t85 = -pkin(3) * t112 - t541;
t84 = pkin(9) * t205 + t123 * t424 + t236 * t482;
t83 = -pkin(3) * t181 - t470;
t81 = -pkin(3) * t168 - t459;
t79 = -pkin(10) * t181 - t127 * t423 + t156 * t428;
t77 = t121 * t428 + t122 * t423;
t76 = -pkin(10) * t168 - t126 * t423 + t155 * t428;
t73 = t150 * t429 + t424 * t91;
t72 = -t153 * t429 + t424 * t90;
t71 = t424 * t555 + t429 * t87;
t70 = t424 * t87 - t429 * t555;
t67 = -t100 * t422 + t102 * t427;
t65 = t100 * t427 + t102 * t422;
t64 = t149 * t424 + t429 * t78;
t63 = -t149 * t429 + t424 * t78;
t62 = -t423 * t96 + t428 * t98;
t61 = -t423 * t95 + t428 * t97;
t60 = t423 * t98 + t428 * t96;
t59 = t423 * t97 + t428 * t95;
t57 = t424 * t62 - t489;
t56 = t424 * t61 + t489;
t51 = pkin(9) * t125 + (-pkin(10) * t424 + t482) * t139;
t47 = t423 * t75 + t534;
t45 = t198 * t424 + t429 * t48;
t44 = -t198 * t429 + t424 * t48;
t42 = -pkin(2) * t181 + pkin(9) * t137 + t424 * t79 + t429 * t83;
t40 = -t423 * t65 + t428 * t67;
t39 = t423 * t68 + t428 * t66;
t38 = t423 * t67 + t428 * t65;
t37 = -pkin(2) * t168 + pkin(9) * t129 + t424 * t76 + t429 * t81;
t36 = -t241 * t429 + t40 * t424;
t35 = t201 * t424 + t41 * t429;
t34 = -t201 * t429 + t41 * t424;
t33 = -pkin(3) * t86 - t449;
t29 = -pkin(3) * t77 - t456;
t28 = -pkin(3) * t47 - t546;
t26 = -pkin(10) * t112 - t423 * t55 + t428 * t58;
t23 = -pkin(10) * t47 - pkin(11) * t534 - t423 * t69;
t22 = -pkin(3) * t39 - t480;
t21 = -pkin(10) * t86 - t423 * t46 + t428 * t50;
t20 = -pkin(2) * t112 + pkin(9) * t105 + t26 * t424 + t429 * t85;
t19 = -pkin(10) * t77 - t423 * t43 + t428 * t49;
t14 = -pkin(2) * t86 + pkin(9) * t71 + t21 * t424 + t33 * t429;
t13 = -pkin(2) * t77 + pkin(9) * t64 + t19 * t424 + t29 * t429;
t11 = t17 * t428 + t18 * t423;
t9 = t12 * t429 + t138 * t424;
t8 = t12 * t424 - t138 * t429;
t7 = -pkin(2) * t47 + pkin(9) * t45 + t23 * t424 + t28 * t429;
t5 = -pkin(10) * t39 - t15 * t423 + t16 * t428;
t4 = -pkin(3) * t11 - t481;
t3 = -pkin(2) * t39 + pkin(9) * t35 + t22 * t429 + t424 * t5;
t2 = -pkin(10) * t11 + t10 * t428 - t423 * t6;
t1 = -pkin(2) * t11 + pkin(9) * t9 + t2 * t424 + t4 * t429;
t52 = [0, 0, 0, 0, 0, qJDD(1), t453, t454, 0, 0, (-t416 * t471 * t502 + t397 * t419) * t425, t420 * t399 + (t425 * t376 + t430 * t483) * t419, t420 * t374 + (t508 + t430 * (t411 - t478)) * t419, (t492 + (-qJD(2) + t471) * t503) * t416 * t430, t420 * t375 + (t425 * (-t411 + t477) + t506) * t419, t420 * t413, (-t362 + pkin(1) * (t394 * t430 + t398 * t425)) * t420 + (t430 * t378 + pkin(1) * t376 + pkin(8) * (t398 * t430 - t508)) * t419, -t378 * t510 - t420 * t363 + pkin(1) * (-t419 * t483 + (t385 * t430 - t395 * t425) * t420) + (-t425 * t385 - t506) * t540, pkin(1) * ((-t374 * t430 + t375 * t425) * t420 - (-t417 - t418) * t416 * t500) + (t425 * t374 + t375 * t430) * t540 + t551 * t419, pkin(1) * (t419 * t378 + (-t362 * t430 + t363 * t425) * t420) + t551 * t540, t420 * t332 + (t425 * (t429 * t360 + t465) - t484) * t419, t420 * t294 + (t425 * (t334 * t429 - t336 * t424) - t430 * t365) * t419, t420 * t323 + (t425 * (-t373 * t424 + t557) - t430 * t337) * t419, t420 * t331 + (t425 * (-t424 * t359 - t464) + t484) * t419, t420 * t324 + (t425 * (t372 * t429 + t519) + t430 * t333) * t419, t420 * t347 + (t425 * (t464 - t465) - t439 * t430) * t419, (t250 + pkin(1) * (t312 * t425 + t334 * t430)) * t420 + (t425 * (-pkin(9) * t311 + t521) + t430 * (-pkin(2) * t311 + t280) - pkin(1) * t311 + pkin(8) * (t312 * t430 - t425 * t334)) * t419, (t252 + pkin(1) * (t317 * t425 + t338 * t430)) * t420 + (t425 * (-pkin(9) * t316 + t520) + t430 * (-pkin(2) * t316 + t281) - pkin(1) * t316 + pkin(8) * (t317 * t430 - t425 * t338)) * t419, (t187 + pkin(1) * (t296 * t425 + t348 * t430)) * t420 + (t425 * t462 + pkin(8) * (t296 * t430 - t425 * t348) + t460 * (-t333 * t424 - t337 * t429)) * t419, (t203 + pkin(1) * (t231 * t425 - t329 * t430)) * t420 + (pkin(8) * (t231 * t430 + t425 * t329) - t460 * t462) * t419, t420 * t259 + (t425 * (t287 * t429 + t486) - t430 * t286) * t419, t420 * t206 + (t425 * (t237 * t429 + t345 * t424) - t430 * t235) * t419, t420 * t232 + (t425 * (t273 * t429 + t292 * t424) - t430 * t271) * t419, t420 * t258 + (t425 * (t285 * t429 - t486) + t430 * t284) * t419, t420 * t233 + (t425 * (t274 * t429 - t288 * t424) - t430 * t272) * t419, t420 * t283 + (t425 * (t309 * t429 + t358 * t424) - t430 * t308) * t419, (t106 + pkin(1) * (t220 * t425 - t261 * t430)) * t420 + (t425 * (-pkin(9) * t219 - t174 * t424 + t199 * t429) + t430 * (-pkin(2) * t219 - t452) - pkin(1) * t219 + pkin(8) * (t220 * t430 + t425 * t261)) * t419, (t107 + pkin(1) * (t224 * t425 - t264 * t430)) * t420 + (t425 * (-pkin(9) * t223 - t177 * t424 + t200 * t429) + t430 * (-pkin(2) * t223 - t451) - pkin(1) * t223 + pkin(8) * (t224 * t430 + t425 * t264)) * t419, (t84 + pkin(1) * (t205 * t425 - t236 * t430)) * t420 + (t425 * (-pkin(9) * t204 + t123 * t429 + t236 * t542) + t430 * (-pkin(2) * t204 - t450) - pkin(1) * t204 + pkin(8) * (t205 * t430 + t425 * t236)) * t419, (t51 + pkin(1) * (t125 * t425 - t139 * t430)) * t420 + (t425 * (-pkin(9) * t124 + (-pkin(10) * t429 + t542) * t139) + t430 * (-pkin(2) * t124 - t467) - pkin(1) * t124 + pkin(8) * (t125 * t430 + t425 * t139)) * t419, t420 * t144 + (t425 * (t160 * t429 + t488) - t430 * t158) * t419, t420 * t109 + (t425 * (t113 * t429 + t302 * t424) - t430 * t111) * t419, t420 * t141 + (t425 * (t185 * t429 + t217 * t424) - t430 * t183) * t419, t420 * t143 + (t425 * (t159 * t429 - t488) - t430 * t157) * t419, t420 * t142 + (t425 * (t186 * t429 - t214 * t424) - t430 * t184) * t419, t420 * t202 + (t425 * (t208 * t429 + t357 * t424) - t430 * t207) * t419, (t37 + pkin(1) * (t129 * t425 - t168 * t430)) * t420 + (t425 * (-pkin(9) * t128 - t424 * t81 + t429 * t76) + t430 * (-pkin(2) * t128 - t442) - pkin(1) * t128 + pkin(8) * (t129 * t430 + t425 * t168)) * t419, (t42 + pkin(1) * (t137 * t425 - t181 * t430)) * t420 + (t425 * (-pkin(9) * t136 - t424 * t83 + t429 * t79) + t430 * (-pkin(2) * t136 - t441) - pkin(1) * t136 + pkin(8) * (t137 * t430 + t425 * t181)) * t419, (t20 + pkin(1) * (t105 * t425 - t112 * t430)) * t420 + (t425 * (-pkin(9) * t104 + t26 * t429 - t424 * t85) + t430 * (-pkin(2) * t104 - t443) - pkin(1) * t104 + pkin(8) * (t105 * t430 + t425 * t112)) * t419, (t7 + pkin(1) * (t425 * t45 - t430 * t47)) * t420 + (t425 * (-pkin(9) * t44 + t23 * t429 - t28 * t424) + t430 * (-pkin(2) * t44 - t440) - pkin(1) * t44 + pkin(8) * (t425 * t47 + t430 * t45)) * t419, t420 * t57 + (t425 * (t429 * t62 + t490) - t430 * t60) * t419, t420 * t36 + (t425 * (t241 * t424 + t40 * t429) - t430 * t38) * t419, t420 * t72 + (t425 * (t153 * t424 + t429 * t90) - t430 * t88) * t419, t420 * t56 + (t425 * (t429 * t61 - t490) - t430 * t59) * t419, t420 * t73 + (t425 * (-t150 * t424 + t429 * t91) - t430 * t89) * t419, t420 * t118 + (t425 * (t120 * t429 + t356 * t424) - t430 * t119) * t419, (t13 + pkin(1) * (t425 * t64 - t430 * t77)) * t420 + (t425 * (-pkin(9) * t63 + t19 * t429 - t29 * t424) + t430 * (-pkin(2) * t63 - t446) - pkin(1) * t63 + pkin(8) * (t425 * t77 + t430 * t64)) * t419, (t14 + pkin(1) * (t425 * t71 - t430 * t86)) * t420 + (t425 * (-pkin(9) * t70 + t21 * t429 - t33 * t424) + t430 * (-pkin(2) * t70 - t444) - pkin(1) * t70 + pkin(8) * (t425 * t86 + t430 * t71)) * t419, (t3 + pkin(1) * (t35 * t425 - t39 * t430)) * t420 + (t425 * (-pkin(9) * t34 - t22 * t424 + t429 * t5) + t430 * (-pkin(2) * t34 - t445) - pkin(1) * t34 + pkin(8) * (t35 * t430 + t425 * t39)) * t419, (t1 + pkin(1) * (-t11 * t430 + t425 * t9)) * t420 + (t425 * (-pkin(9) * t8 + t2 * t429 - t4 * t424) + t430 * (-pkin(2) * t8 - t447) - pkin(1) * t8 + pkin(8) * (t425 * t11 + t430 * t9)) * t419; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t406, t399, t374, t406, t375, t413, -t362, -t363, 0, 0, t332, t294, t323, t331, t324, t347, t250, t252, t187, t203, t259, t206, t232, t258, t233, t283, t106, t107, t84, t51, t144, t109, t141, t143, t142, t202, t37, t42, t20, t7, t57, t36, t72, t56, t73, t118, t13, t14, t3, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t511, t365, t337, -t511, -t333, t439, -t280, -t281, 0, 0, t286, t235, t271, -t284, t272, t308, t452, t451, t450, t467, t158, t111, t183, t157, t184, t207, t442, t441, t443, t440, t60, t38, t88, t59, t89, t119, t446, t444, t445, t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t346, t345, t292, -t346, -t288, t358, -t196, -t197, 0, 0, t303, t302, t217, -t303, -t214, t357, t459, t470, t541, t546, t242, t241, t153, -t242, -t150, t356, t456, t449, t480, t481; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t303, t302, t217, -t303, -t214, t357, -t116, -t117, 0, 0, t242, t241, t153, -t242, -t150, t356, t469, t458, t99, t30; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t242, t241, t153, -t242, -t150, t356, -t53, -t54, 0, 0;];
tauJ_reg  = t52;
