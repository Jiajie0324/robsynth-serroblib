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
% Datum: 2020-01-03 11:37
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
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
% StartTime: 2020-01-03 11:36:29
% EndTime: 2020-01-03 11:36:44
% DurationCPUTime: 8.85s
% Computational Cost: add. (31729->445), mult. (47250->667), div. (0->0), fcn. (28279->10), ass. (0->309)
t477 = (qJD(1) + qJD(3));
t472 = t477 ^ 2;
t489 = cos(qJ(3));
t473 = qJDD(1) + qJDD(3);
t486 = sin(qJ(3));
t524 = t486 * t473;
t434 = t489 * t472 + t524;
t517 = t489 * t473;
t525 = t486 * t472;
t437 = -t517 + t525;
t482 = sin(pkin(8));
t484 = cos(pkin(8));
t380 = t484 * t434 - t482 * t437;
t480 = g(1) - qJDD(2);
t408 = pkin(6) * t434 - t489 * t480;
t558 = pkin(6) * t437 - t486 * t480;
t317 = qJ(2) * t380 + t484 * t408 - t482 * t558;
t384 = t482 * t434 + t484 * t437;
t487 = sin(qJ(1));
t490 = cos(qJ(1));
t332 = t490 * t380 - t487 * t384;
t565 = qJ(2) * t384 + t482 * t408 + t484 * t558;
t572 = -pkin(5) * t332 - t490 * t317 + t487 * t565;
t557 = t487 * t380 + t490 * t384;
t571 = pkin(5) * t557 + t487 * t317 + t490 * t565;
t459 = t490 * g(2) + t487 * g(3);
t443 = qJDD(1) * pkin(1) - t459;
t458 = t487 * g(2) - t490 * g(3);
t542 = qJD(1) ^ 2;
t444 = -t542 * pkin(1) - t458;
t389 = t482 * t443 + t484 * t444;
t387 = -t542 * pkin(2) + t389;
t495 = t484 * t443 - t482 * t444;
t493 = qJDD(1) * pkin(2) + t495;
t335 = t486 * t387 - t489 * t493;
t336 = t489 * t387 + t486 * t493;
t504 = t486 * t335 + t489 * t336;
t276 = t489 * t335 - t486 * t336;
t530 = t484 * t276;
t235 = -t482 * t504 + t530;
t533 = t482 * t276;
t561 = t484 * t504 + t533;
t568 = t487 * t235 + t490 * t561;
t207 = -t490 * t235 + t487 * t561;
t481 = sin(pkin(9));
t475 = t481 ^ 2;
t483 = cos(pkin(9));
t476 = t483 ^ 2;
t425 = (t475 + t476) * t483 * t472;
t507 = t483 * t517;
t392 = -t486 * t425 + t507;
t394 = t489 * t425 + t483 * t524;
t343 = t484 * t392 - t482 * t394;
t345 = t482 * t392 + t484 * t394;
t287 = t490 * t343 - t487 * t345;
t289 = t487 * t343 + t490 * t345;
t503 = t484 * t389 - t482 * t495;
t339 = -t482 * t389 - t484 * t495;
t515 = t490 * t339;
t284 = t487 * t503 - t515;
t522 = t487 * t339;
t562 = t490 * t503 + t522;
t446 = t482 * qJDD(1) + t484 * t542;
t447 = t484 * qJDD(1) - t482 * t542;
t398 = -t490 * t446 - t487 * t447;
t419 = qJ(2) * t446 - t484 * t480;
t496 = -qJ(2) * t447 - t482 * t480;
t560 = pkin(5) * t398 - t490 * t419 + t487 * t496;
t324 = -t472 * pkin(3) + t473 * qJ(4) + t336;
t541 = 2 * qJD(4);
t559 = (t477 * t541) + t324;
t544 = t487 * t446 - t490 * t447;
t556 = pkin(5) * t544 + t487 * t419 + t490 * t496;
t534 = t481 * t483;
t401 = t434 * t534;
t402 = t481 * t507 - t525 * t534;
t349 = t484 * t401 + t482 * t402;
t352 = t482 * t401 - t484 * t402;
t554 = t490 * t349 - t487 * t352;
t553 = t487 * t349 + t490 * t352;
t485 = sin(qJ(5));
t488 = cos(qJ(5));
t411 = (qJD(5) * t477 * t488 + t473 * t485) * t481;
t531 = t483 * t477;
t454 = -qJD(5) + t531;
t535 = t477 * t481;
t511 = t454 * t535;
t422 = t488 * t511;
t368 = t422 - t411;
t550 = t485 * t368;
t509 = t485 * t535;
t412 = t488 * t481 * t473 - qJD(5) * t509;
t499 = t454 * t509;
t369 = t412 + t499;
t364 = t488 * t369;
t451 = t454 ^ 2;
t540 = pkin(1) * t480;
t539 = pkin(4) * t481;
t538 = pkin(4) * t483;
t465 = t473 * pkin(3);
t532 = t483 * t473;
t452 = -qJDD(5) + t532;
t537 = t452 * t481;
t536 = t475 * t472;
t498 = -pkin(7) * t481 - t538;
t426 = t498 * t477;
t464 = t483 * t480;
t291 = t464 + (t324 + (t541 + t426) * t477) * t481;
t529 = t485 * t291;
t510 = t472 * t485 * t488;
t441 = t475 * t510;
t409 = -t441 + t452;
t528 = t485 * t409;
t410 = -t441 - t452;
t527 = t485 * t410;
t319 = -t472 * qJ(4) + qJDD(4) + t335 - t465;
t526 = t486 * t319;
t521 = t488 * t291;
t520 = t488 * t409;
t519 = t488 * t410;
t518 = t489 * t319;
t306 = -t481 * t480 + t559 * t483;
t292 = t426 * t531 + t306;
t309 = t473 * t498 + t319;
t251 = t488 * t292 + t485 * t309;
t479 = t488 ^ 2;
t508 = t479 * t536;
t506 = -t319 + t465;
t448 = -t487 * qJDD(1) - t490 * t542;
t505 = pkin(5) * t448 + t490 * g(1);
t250 = t485 * t292 - t488 * t309;
t305 = t559 * t481 + t464;
t262 = t481 * t305 + t483 * t306;
t403 = -t487 * t458 - t490 * t459;
t474 = t481 * t475;
t500 = t474 * t510;
t497 = t483 * t441;
t224 = -t488 * t250 + t485 * t251;
t225 = t485 * t250 + t488 * t251;
t261 = t483 * t305 - t481 * t306;
t404 = t490 * t458 - t487 * t459;
t478 = t485 ^ 2;
t462 = t476 * t472;
t461 = t476 * t473;
t460 = t475 * t473;
t453 = t478 * t536;
t449 = t490 * qJDD(1) - t487 * t542;
t433 = t462 - t536;
t432 = t462 + t536;
t430 = t461 - t460;
t429 = t461 + t460;
t427 = pkin(5) * t449 + t487 * g(1);
t424 = (t476 * t481 + t474) * t472;
t421 = t453 - t508;
t420 = t453 + t508;
t415 = t451 - t508;
t414 = -t453 - t451;
t413 = t453 - t451;
t396 = -t508 - t451;
t393 = t489 * t424 + t481 * t524;
t390 = t486 * t424 - t481 * t517;
t379 = t489 * t430 - t486 * t433;
t378 = t489 * t429 - t486 * t432;
t377 = t486 * t430 + t489 * t433;
t376 = t486 * t429 + t489 * t432;
t372 = (-t478 - t479) * t511;
t371 = t499 - t412;
t367 = t422 + t411;
t366 = -t485 * t412 + t479 * t511;
t365 = t488 * t411 + t478 * t511;
t362 = t488 * t414 - t527;
t361 = t488 * t413 + t528;
t360 = -t485 * t415 + t519;
t359 = t485 * t414 + t519;
t358 = -t485 * t413 + t520;
t357 = -t488 * t415 - t527;
t356 = -t486 * t372 - t489 * t537;
t355 = t489 * t372 - t486 * t537;
t354 = -t485 * t396 + t520;
t353 = t488 * t396 + t528;
t348 = t483 * t364 + t500;
t347 = -t483 * t550 - t500;
t344 = -t482 * t390 + t484 * t393;
t341 = t484 * t390 + t482 * t393;
t334 = qJ(2) * t503 + t540;
t328 = -t482 * t377 + t484 * t379;
t327 = -t482 * t376 + t484 * t378;
t326 = t484 * t377 + t482 * t379;
t325 = t484 * t376 + t482 * t378;
t323 = t488 * t368 - t485 * t369;
t322 = -t488 * t367 - t485 * t371;
t321 = -t364 - t550;
t320 = -t485 * t367 + t488 * t371;
t313 = t483 * t362 - t481 * t368;
t312 = t483 * t361 - t481 * t367;
t311 = t483 * t360 - t481 * t371;
t310 = t481 * t362 + t483 * t368;
t308 = t483 * t354 + t369 * t481;
t307 = t481 * t354 - t369 * t483;
t301 = t489 * t348 - t486 * t366;
t300 = t489 * t347 - t486 * t365;
t299 = t486 * t348 + t489 * t366;
t298 = t486 * t347 + t489 * t365;
t297 = t483 * t323 - t481 * t421;
t296 = t483 * t322 - t481 * t420;
t295 = t481 * t322 + t483 * t420;
t294 = -t482 * t355 + t484 * t356;
t293 = t484 * t355 + t482 * t356;
t288 = t487 * t341 - t490 * t344;
t286 = t490 * t341 + t487 * t344;
t283 = t489 * t313 + t486 * t359;
t282 = t489 * t312 - t486 * t358;
t281 = t489 * t311 - t486 * t357;
t280 = t486 * t313 - t489 * t359;
t279 = t486 * t312 + t489 * t358;
t278 = t486 * t311 + t489 * t357;
t273 = pkin(2) * t480 + pkin(6) * t504;
t272 = t489 * t308 + t486 * t353;
t271 = t486 * t308 - t489 * t353;
t270 = t487 * t325 - t490 * t327;
t269 = t490 * t325 + t487 * t327;
t268 = -pkin(7) * t359 + t529;
t267 = -pkin(7) * t353 + t521;
t266 = t489 * t297 - t486 * t321;
t265 = t489 * t296 + t486 * t320;
t264 = t486 * t297 + t489 * t321;
t263 = t486 * t296 - t489 * t320;
t259 = -t482 * t299 + t484 * t301;
t258 = -t482 * t298 + t484 * t300;
t257 = t484 * t299 + t482 * t301;
t256 = t484 * t298 + t482 * t300;
t255 = -pkin(6) * t390 - t486 * t306 + t483 * t518;
t254 = -pkin(6) * t392 - t486 * t305 + t481 * t518;
t253 = pkin(6) * t393 + t489 * t306 + t483 * t526;
t252 = -pkin(6) * t394 + t489 * t305 + t481 * t526;
t249 = -pkin(6) * t376 + t489 * t261;
t248 = pkin(6) * t378 + t486 * t261;
t247 = -pkin(4) * t359 + t250;
t246 = -pkin(4) * t353 + t251;
t245 = -t482 * t280 + t484 * t283;
t244 = -t482 * t279 + t484 * t282;
t243 = -t482 * t278 + t484 * t281;
t242 = t484 * t280 + t482 * t283;
t241 = t484 * t279 + t482 * t282;
t240 = t484 * t278 + t482 * t281;
t239 = t489 * t262 + t526;
t238 = t486 * t262 - t518;
t237 = -pkin(3) * t310 - pkin(4) * t368 - pkin(7) * t362 + t521;
t232 = -pkin(3) * t307 + pkin(4) * t369 - pkin(7) * t354 - t529;
t231 = -t482 * t271 + t484 * t272;
t230 = t484 * t271 + t482 * t272;
t229 = -t482 * t264 + t484 * t266;
t228 = -t482 * t263 + t484 * t265;
t227 = t484 * t264 + t482 * t266;
t226 = t484 * t263 + t482 * t265;
t223 = -qJ(2) * t341 - t482 * t253 + t484 * t255;
t222 = -qJ(2) * t343 - t482 * t252 + t484 * t254;
t221 = qJ(2) * t344 + t484 * t253 + t482 * t255;
t220 = -qJ(2) * t345 + t484 * t252 + t482 * t254;
t219 = -pkin(7) * t320 - t224;
t218 = -qJ(4) * t310 - t481 * t247 + t483 * t268;
t217 = -qJ(4) * t307 - t481 * t246 + t483 * t267;
t216 = -qJ(2) * t325 - t482 * t248 + t484 * t249;
t215 = qJ(2) * t327 + t484 * t248 + t482 * t249;
t214 = t483 * t225 + t481 * t291;
t213 = t481 * t225 - t483 * t291;
t212 = t487 * t242 - t490 * t245;
t211 = t490 * t242 + t487 * t245;
t210 = -t482 * t238 + t484 * t239;
t209 = t484 * t238 + t482 * t239;
t206 = pkin(6) * t530 + qJ(2) * t235 - t482 * t273;
t205 = pkin(6) * t533 + qJ(2) * t561 + t484 * t273 + t540;
t204 = t487 * t230 - t490 * t231;
t203 = t490 * t230 + t487 * t231;
t202 = -pkin(3) * t295 - pkin(4) * t420 - pkin(7) * t322 - t225;
t201 = -pkin(6) * t238 - (pkin(3) * t486 - qJ(4) * t489) * t261;
t200 = -qJ(4) * t295 + t483 * t219 + t320 * t539;
t199 = t487 * t226 - t490 * t228;
t198 = t490 * t226 + t487 * t228;
t197 = pkin(6) * t239 - (-pkin(3) * t489 - qJ(4) * t486 - pkin(2)) * t261;
t196 = -pkin(6) * t280 + t489 * t218 - t486 * t237;
t195 = t489 * t214 + t486 * t224;
t194 = t486 * t214 - t489 * t224;
t193 = -pkin(6) * t271 + t489 * t217 - t486 * t232;
t192 = -pkin(2) * t310 + pkin(6) * t283 + t486 * t218 + t489 * t237;
t191 = -pkin(2) * t307 + pkin(6) * t272 + t486 * t217 + t489 * t232;
t190 = -pkin(3) * t213 + pkin(4) * t291 - pkin(7) * t225;
t189 = t487 * t209 - t490 * t210;
t188 = t490 * t209 + t487 * t210;
t187 = -qJ(4) * t213 + (-pkin(7) * t483 + t539) * t224;
t186 = -pkin(6) * t263 + t489 * t200 - t486 * t202;
t185 = -pkin(2) * t295 + pkin(6) * t265 + t486 * t200 + t489 * t202;
t184 = -t482 * t194 + t484 * t195;
t183 = t484 * t194 + t482 * t195;
t182 = -qJ(2) * t209 - t482 * t197 + t484 * t201;
t181 = -qJ(2) * t242 - t482 * t192 + t484 * t196;
t180 = pkin(1) * t261 + qJ(2) * t210 + t484 * t197 + t482 * t201;
t179 = -pkin(1) * t310 + qJ(2) * t245 + t484 * t192 + t482 * t196;
t178 = -qJ(2) * t230 - t482 * t191 + t484 * t193;
t177 = -pkin(1) * t307 + qJ(2) * t231 + t484 * t191 + t482 * t193;
t176 = -pkin(6) * t194 + t489 * t187 - t486 * t190;
t175 = -qJ(2) * t226 - t482 * t185 + t484 * t186;
t174 = -pkin(1) * t295 + qJ(2) * t228 + t484 * t185 + t482 * t186;
t173 = t487 * t183 - t490 * t184;
t172 = t490 * t183 + t487 * t184;
t171 = -pkin(2) * t213 + pkin(6) * t195 + t486 * t187 + t489 * t190;
t170 = -qJ(2) * t183 - t482 * t171 + t484 * t176;
t169 = -pkin(1) * t213 + qJ(2) * t184 + t484 * t171 + t482 * t176;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t480, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t480, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t261, 0, 0, 0, 0, 0, 0, t310, t307, t295, t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t449, t448, 0, t403, 0, 0, 0, 0, 0, 0, -t544, t398, 0, t284, 0, 0, 0, 0, 0, 0, -t557, -t332, 0, t207, 0, 0, 0, 0, 0, 0, t287, t286, t269, t188, 0, 0, 0, 0, 0, 0, t211, t203, t198, t172; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t448, t449, 0, t404, 0, 0, 0, 0, 0, 0, -t398, -t544, 0, -t562, 0, 0, 0, 0, 0, 0, t332, -t557, 0, -t568, 0, 0, 0, 0, 0, 0, t289, t288, t270, t189, 0, 0, 0, 0, 0, 0, t212, t204, t199, t173; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), -t459, t458, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t447 + t495, -pkin(1) * t446 - t389, 0, -pkin(1) * t339, 0, 0, 0, 0, 0, t473, -pkin(1) * t384 - pkin(2) * t437 - t335, -pkin(1) * t380 - pkin(2) * t434 - t336, 0, -pkin(1) * t235 - pkin(2) * t276, t460, 0.2e1 * t481 * t532, 0, t461, 0, 0, pkin(1) * t343 + pkin(2) * t392 - qJ(4) * t425 + t506 * t483, pkin(1) * t341 + pkin(2) * t390 + qJ(4) * t424 - t506 * t481, pkin(1) * t325 + pkin(2) * t376 + pkin(3) * t432 + qJ(4) * t429 + t262, pkin(1) * t209 + pkin(2) * t238 - pkin(3) * t319 + qJ(4) * t262, t481 * t364 - t497, t481 * t323 + t483 * t421, t481 * t360 + t483 * t371, -t481 * t550 + t497, t481 * t361 + t483 * t367, t483 * t452, pkin(1) * t242 + pkin(2) * t280 - pkin(3) * t359 + qJ(4) * t313 + t483 * t247 + t481 * t268, pkin(1) * t230 + pkin(2) * t271 - pkin(3) * t353 + qJ(4) * t308 + t483 * t246 + t481 * t267, pkin(1) * t226 + pkin(2) * t263 + qJ(4) * t296 + t481 * t219 + (-pkin(3) - t538) * t320, pkin(1) * t183 + pkin(2) * t194 + qJ(4) * t214 + (-pkin(3) + t498) * t224; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t448, 0, t449, 0, t505, -t427, -t404, -pkin(5) * t404, 0, 0, -t398, 0, -t544, 0, t560, t556, t562, pkin(5) * t562 + qJ(2) * t522 + t490 * t334, 0, 0, t332, 0, -t557, 0, t572, t571, t568, pkin(5) * t568 + t490 * t205 + t487 * t206, t554, t490 * t326 + t487 * t328, t286, -t554, -t287, 0, -pkin(5) * t289 + t490 * t220 + t487 * t222, -pkin(5) * t288 + t490 * t221 + t487 * t223, -pkin(5) * t270 + t490 * t215 + t487 * t216, -pkin(5) * t189 + t490 * t180 + t487 * t182, t490 * t257 + t487 * t259, t490 * t227 + t487 * t229, t490 * t240 + t487 * t243, t490 * t256 + t487 * t258, t490 * t241 + t487 * t244, t490 * t293 + t487 * t294, -pkin(5) * t212 + t490 * t179 + t487 * t181, -pkin(5) * t204 + t490 * t177 + t487 * t178, -pkin(5) * t199 + t490 * t174 + t487 * t175, -pkin(5) * t173 + t490 * t169 + t487 * t170; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t449, 0, -t448, 0, t427, t505, t403, pkin(5) * t403, 0, 0, t544, 0, -t398, 0, -t556, t560, t284, pkin(5) * t284 - qJ(2) * t515 + t487 * t334, 0, 0, t557, 0, t332, 0, -t571, t572, t207, pkin(5) * t207 + t487 * t205 - t490 * t206, t553, t487 * t326 - t490 * t328, t288, -t553, -t289, 0, pkin(5) * t287 + t487 * t220 - t490 * t222, pkin(5) * t286 + t487 * t221 - t490 * t223, pkin(5) * t269 + t487 * t215 - t490 * t216, pkin(5) * t188 + t487 * t180 - t490 * t182, t487 * t257 - t490 * t259, t487 * t227 - t490 * t229, t487 * t240 - t490 * t243, t487 * t256 - t490 * t258, t487 * t241 - t490 * t244, t487 * t293 - t490 * t294, pkin(5) * t211 + t487 * t179 - t490 * t181, pkin(5) * t203 + t487 * t177 - t490 * t178, pkin(5) * t198 + t487 * t174 - t490 * t175, pkin(5) * t172 + t487 * t169 - t490 * t170;];
tauB_reg = t1;
