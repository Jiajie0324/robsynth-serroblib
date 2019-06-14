% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRPRPR9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 15:23
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRPRPR9_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR9_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR9_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR9_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR9_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR9_invdynJ_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 15:18:56
% EndTime: 2019-05-06 15:19:42
% DurationCPUTime: 25.46s
% Computational Cost: add. (231337->767), mult. (530697->1165), div. (0->0), fcn. (436420->14), ass. (0->480)
t410 = sin(pkin(12));
t411 = sin(pkin(11));
t414 = cos(pkin(11));
t415 = cos(pkin(6));
t462 = qJD(1) * t415 + qJD(2);
t418 = sin(qJ(2));
t412 = sin(pkin(6));
t485 = qJD(1) * t412;
t470 = t418 * t485;
t384 = -t411 * t470 + t414 * t462;
t385 = t411 * t462 + t414 * t470;
t417 = sin(qJ(4));
t420 = cos(qJ(4));
t361 = t384 * t417 + t385 * t420;
t421 = cos(qJ(2));
t484 = qJD(1) * t421;
t469 = t412 * t484;
t400 = -qJD(4) + t469;
t413 = cos(pkin(12));
t336 = t361 * t410 + t413 * t400;
t337 = t361 * t413 - t400 * t410;
t297 = t337 * t336;
t460 = qJDD(1) * t415 + qJDD(2);
t479 = qJD(1) * qJD(2);
t467 = t421 * t479;
t478 = qJDD(1) * t412;
t486 = t412 * t467 + t418 * t478;
t364 = t411 * t460 + t414 * t486;
t453 = -t411 * t486 + t414 * t460;
t463 = t364 * t417 - t420 * t453;
t305 = qJD(4) * t361 + t463;
t543 = -t297 + t305;
t554 = t410 * t543;
t553 = t413 * t543;
t416 = sin(qJ(6));
t419 = cos(qJ(6));
t293 = t419 * t336 + t337 * t416;
t295 = -t336 * t416 + t337 * t419;
t239 = t295 * t293;
t304 = qJDD(6) + t305;
t545 = -t239 + t304;
t552 = t416 * t545;
t551 = t419 * t545;
t444 = -qJDD(1) * t421 + t418 * t479;
t546 = t444 * t412;
t432 = qJDD(4) + t546;
t458 = t462 ^ 2;
t407 = t412 ^ 2;
t535 = qJD(1) ^ 2;
t482 = t407 * t535;
t497 = t384 * t385;
t429 = t546 + t497;
t550 = t411 * t429;
t549 = t414 * t429;
t359 = -t420 * t384 + t385 * t417;
t498 = t361 * t359;
t428 = t432 - t498;
t548 = t417 * t428;
t489 = t418 * t407;
t547 = t420 * t428;
t306 = -t359 * qJD(4) + t420 * t364 + t417 * t453;
t290 = t413 * t306 + t410 * t432;
t464 = t306 * t410 - t413 * t432;
t199 = -t293 * qJD(6) + t419 * t290 - t416 * t464;
t355 = qJD(6) + t359;
t269 = t355 * t293;
t544 = -t269 + t199;
t316 = t359 * t336;
t249 = -t316 - t290;
t542 = -t316 + t290;
t349 = t359 * t400;
t283 = t349 + t306;
t372 = t384 * t469;
t345 = -t372 - t364;
t541 = -t458 * pkin(2) + t460 * qJ(3);
t373 = t385 * t469;
t343 = t453 - t373;
t533 = sin(qJ(1));
t534 = cos(qJ(1));
t443 = g(1) * t534 + g(2) * t533;
t430 = pkin(8) * t478 - t443;
t526 = t535 * pkin(1);
t427 = t430 - t526;
t442 = g(1) * t533 - g(2) * t534;
t436 = qJDD(1) * pkin(1) + t442;
t528 = pkin(8) * t412;
t426 = t528 * t535 + t436;
t425 = t415 * t426;
t493 = t412 * t421;
t459 = g(3) * t493 - t421 * t425;
t351 = t418 * t427 + t459;
t494 = t412 * t418;
t406 = g(3) * t494;
t352 = t418 * t425 + t421 * t427 - t406;
t540 = t418 * t351 + t421 * t352;
t466 = t290 * t416 + t419 * t464;
t175 = (qJD(6) - t355) * t295 + t466;
t281 = (qJD(4) + t400) * t361 + t463;
t291 = t293 ^ 2;
t292 = t295 ^ 2;
t538 = t336 ^ 2;
t335 = t337 ^ 2;
t353 = t355 ^ 2;
t537 = t359 ^ 2;
t358 = t361 ^ 2;
t382 = t384 ^ 2;
t383 = t385 ^ 2;
t536 = t400 ^ 2;
t532 = pkin(2) * t418;
t531 = pkin(2) * t421;
t530 = pkin(4) * t417;
t529 = pkin(8) * t411;
t527 = t415 * g(3);
t456 = -qJ(3) * t418 - t531;
t448 = t421 * t456;
t423 = t448 * t482 + t352 + t541;
t523 = qJ(3) * t421;
t446 = (-t523 + 0.2e1 * t532) * qJD(2);
t447 = -qJ(3) * t486 - t527;
t455 = -t523 + t532;
t472 = -pkin(1) - t531;
t424 = (t472 * qJDD(1) + ((t415 * t455 - t528) * qJD(1) + t446) * qJD(1) - t442) * t412 + t447;
t262 = 0.2e1 * qJD(3) * t384 + t411 * t424 + t414 * t423;
t365 = -pkin(3) * t469 - t385 * pkin(9);
t236 = -t382 * pkin(3) + pkin(9) * t453 + t365 * t469 + t262;
t483 = qJD(3) * t385;
t422 = pkin(3) * t429 + pkin(9) * t345 - t411 * t423 + t414 * t424 - 0.2e1 * t483;
t162 = t420 * t236 + t417 * t422;
t318 = pkin(4) * t359 - qJ(5) * t361;
t141 = -pkin(4) * t536 + qJ(5) * t432 - t359 * t318 + t162;
t327 = t418 * t430 - t458 * qJ(3) - t460 * pkin(2) + qJDD(3) + (-t418 * pkin(1) + t456 * t489) * t535 + t459;
t263 = -t453 * pkin(3) - t382 * pkin(9) + t385 * t365 + t327;
t188 = -t283 * qJ(5) + (-t361 * t400 + t305) * pkin(4) + t263;
t107 = 0.2e1 * qJD(5) * t337 + t141 * t410 - t413 * t188;
t82 = pkin(5) * t543 + pkin(10) * t249 - t107;
t108 = -0.2e1 * qJD(5) * t336 + t413 * t141 + t410 * t188;
t307 = pkin(5) * t359 - pkin(10) * t337;
t89 = -pkin(5) * t538 - pkin(10) * t464 - t359 * t307 + t108;
t55 = t416 * t89 - t419 * t82;
t56 = t416 * t82 + t419 * t89;
t31 = t416 * t56 - t419 * t55;
t525 = t31 * t410;
t524 = t31 * t413;
t161 = t236 * t417 - t420 * t422;
t116 = -t161 * t420 + t162 * t417;
t522 = t116 * t411;
t521 = t116 * t414;
t140 = -t432 * pkin(4) - t536 * qJ(5) + t318 * t361 + qJDD(5) + t161;
t132 = pkin(5) * t464 - pkin(10) * t538 + t307 * t337 + t140;
t520 = t132 * t416;
t519 = t132 * t419;
t518 = t140 * t410;
t517 = t140 * t413;
t212 = t239 + t304;
t516 = t212 * t416;
t515 = t212 * t419;
t253 = t297 + t305;
t514 = t253 * t410;
t513 = t253 * t413;
t512 = t263 * t417;
t511 = t263 * t420;
t510 = t305 * t417;
t310 = -t498 - t432;
t509 = t310 * t417;
t508 = t310 * t420;
t507 = t327 * t411;
t506 = t327 * t414;
t505 = t337 * t359;
t346 = -t546 + t497;
t504 = t346 * t411;
t503 = t346 * t414;
t502 = t355 * t416;
t501 = t355 * t419;
t500 = t359 * t410;
t499 = t359 * t413;
t496 = t400 * t417;
t495 = t400 * t420;
t492 = t415 * t418;
t399 = t421 * t418 * t482;
t388 = t399 + t460;
t490 = t418 * t388;
t387 = -t399 + t460;
t487 = t421 * t387;
t477 = t417 * t239;
t476 = t420 * t239;
t475 = t417 * t297;
t474 = t420 * t297;
t473 = t421 * t498;
t471 = -pkin(4) * t420 - pkin(3);
t468 = t418 ^ 2 * t482;
t32 = t416 * t55 + t419 * t56;
t66 = t107 * t410 + t413 * t108;
t117 = t161 * t417 + t420 * t162;
t261 = t411 * (t421 * (-t443 - t526) + t436 * t492 - t406 + t541) - t414 * t447 + 0.2e1 * t483 + (t414 * t442 + (-t414 * t472 + t421 * t529) * qJDD(1) + (((t414 * pkin(8) + t411 * t448) * t412 + (-t414 * t455 + t418 * t529) * t415) * qJD(1) - t414 * t446) * qJD(1)) * t412;
t202 = t261 * t411 + t414 * t262;
t461 = t493 * t497;
t457 = -pkin(4) * t140 + qJ(5) * t66;
t65 = -t107 * t413 + t108 * t410;
t452 = t261 * t414 - t262 * t411;
t451 = t467 * t489;
t450 = -pkin(1) + t456;
t245 = t464 - t505;
t445 = t462 * t485;
t279 = -t537 - t538;
t197 = t279 * t413 - t554;
t244 = t464 + t505;
t441 = -pkin(4) * t244 + qJ(5) * t197 - t517;
t286 = -t335 - t537;
t204 = -t286 * t410 - t513;
t440 = -pkin(4) * t542 + qJ(5) * t204 + t518;
t193 = -t245 * t413 - t249 * t410;
t264 = -t335 - t538;
t437 = -pkin(4) * t264 + qJ(5) * t193 + t66;
t205 = -t291 - t292;
t178 = t269 + t199;
t131 = -t175 * t419 + t178 * t416;
t28 = -pkin(5) * t205 + pkin(10) * t131 + t32;
t129 = -t175 * t416 - t178 * t419;
t29 = -pkin(10) * t129 - t31;
t77 = -t129 * t410 + t131 * t413;
t435 = -pkin(4) * t205 + qJ(5) * t77 + t28 * t413 + t29 * t410;
t234 = -t353 - t291;
t152 = t234 * t416 + t551;
t153 = t234 * t419 - t552;
t110 = -t152 * t410 + t153 * t413;
t174 = (qJD(6) + t355) * t295 + t466;
t73 = -pkin(5) * t174 + pkin(10) * t153 - t519;
t83 = -pkin(10) * t152 + t520;
t434 = -pkin(4) * t174 + qJ(5) * t110 + t410 * t83 + t413 * t73;
t255 = -t292 - t353;
t163 = t255 * t419 - t516;
t164 = -t255 * t416 - t515;
t119 = -t163 * t410 + t164 * t413;
t78 = -pkin(5) * t544 + pkin(10) * t164 + t520;
t88 = -pkin(10) * t163 + t519;
t433 = -pkin(4) * t544 + qJ(5) * t119 + t410 * t88 + t413 * t78;
t19 = t32 * t413 - t525;
t30 = -pkin(5) * t132 + pkin(10) * t32;
t431 = -pkin(4) * t132 - pkin(10) * t525 + qJ(5) * t19 + t30 * t413;
t405 = t421 ^ 2 * t482;
t392 = t421 * t445;
t391 = t418 * t445;
t390 = -t405 + t468;
t389 = -t405 - t458;
t380 = -t468 - t458;
t378 = t407 * t421 * t444;
t374 = t412 * t426 + t527;
t371 = -t383 - t405;
t370 = -t383 + t405;
t369 = t382 - t405;
t368 = -t391 - t546;
t367 = t391 - t546;
t366 = -t392 + t486;
t354 = -t405 - t382;
t344 = -t372 + t364;
t342 = -t373 - t453;
t341 = -t358 + t536;
t340 = t537 - t536;
t339 = (-t384 * t411 + t385 * t414) * t469;
t338 = -t382 - t383;
t334 = t411 * t364 - t373 * t414;
t333 = t372 * t411 + t414 * t453;
t328 = -t358 - t536;
t324 = -t371 * t411 + t503;
t323 = t369 * t411 - t503;
t322 = t370 * t414 + t550;
t321 = t371 * t414 + t504;
t319 = t358 - t537;
t317 = -t537 - t536;
t314 = -t335 + t537;
t313 = -t537 + t538;
t309 = t354 * t414 - t550;
t308 = t354 * t411 + t549;
t303 = (t359 * t420 - t361 * t417) * t400;
t302 = (t359 * t417 + t361 * t420) * t400;
t301 = t420 * t305;
t300 = t343 * t414 - t345 * t411;
t298 = -t342 * t411 + t344 * t414;
t296 = -t335 + t538;
t288 = -t537 - t358;
t284 = -t349 + t306;
t280 = (qJD(4) - t400) * t361 + t463;
t278 = t340 * t420 + t509;
t277 = -t341 * t417 + t547;
t276 = t340 * t417 - t508;
t275 = t341 * t420 + t548;
t274 = t306 * t420 + t361 * t496;
t273 = t306 * t417 - t361 * t495;
t272 = -t359 * t495 + t510;
t271 = -t359 * t496 - t301;
t268 = -t292 + t353;
t267 = t291 - t353;
t266 = -t328 * t417 + t508;
t265 = t328 * t420 + t509;
t259 = t317 * t420 - t548;
t258 = t317 * t417 + t547;
t257 = (-t336 * t413 + t337 * t410) * t359;
t256 = (-t336 * t410 - t337 * t413) * t359;
t251 = t302 * t414 + t303 * t411;
t250 = -pkin(2) * t344 + qJ(3) * t324 + t507;
t243 = t290 * t413 - t337 * t500;
t242 = t290 * t410 + t337 * t499;
t241 = t336 * t499 + t410 * t464;
t240 = -t336 * t500 + t413 * t464;
t238 = -pkin(2) * t342 + qJ(3) * t309 - t506;
t237 = t292 - t291;
t231 = t257 * t420 + t510;
t230 = t257 * t417 - t301;
t229 = -t281 * t420 + t284 * t417;
t228 = -t280 * t420 - t283 * t417;
t227 = -t281 * t417 - t284 * t420;
t226 = -t280 * t417 + t283 * t420;
t225 = t276 * t414 + t278 * t411;
t224 = t275 * t414 + t277 * t411;
t223 = t313 * t413 - t514;
t222 = -t314 * t410 + t553;
t221 = t313 * t410 + t513;
t220 = t314 * t413 + t554;
t219 = t273 * t414 + t274 * t411;
t218 = t271 * t414 + t272 * t411;
t217 = (-t293 * t419 + t295 * t416) * t355;
t216 = (-t293 * t416 - t295 * t419) * t355;
t215 = -t265 * t411 + t266 * t414;
t214 = t265 * t414 + t266 * t411;
t210 = -pkin(9) * t265 + t511;
t209 = t243 * t420 + t475;
t208 = t241 * t420 - t475;
t207 = t243 * t417 - t474;
t206 = t241 * t417 + t474;
t203 = t286 * t413 - t514;
t200 = -pkin(9) * t258 + t512;
t198 = -qJD(6) * t295 - t466;
t196 = t279 * t410 + t553;
t195 = -t258 * t411 + t259 * t414;
t194 = t258 * t414 + t259 * t411;
t192 = -t244 * t413 - t410 * t542;
t191 = -t245 * t410 + t249 * t413;
t190 = -t244 * t410 + t413 * t542;
t189 = -pkin(2) * t327 + qJ(3) * t202;
t185 = -pkin(3) * t283 + pkin(9) * t266 + t512;
t184 = t267 * t419 - t516;
t183 = -t268 * t416 + t551;
t182 = t267 * t416 + t515;
t181 = t268 * t419 + t552;
t180 = -pkin(3) * t280 + pkin(9) * t259 - t511;
t173 = -pkin(2) * t338 + qJ(3) * t300 + t202;
t172 = t199 * t419 - t295 * t502;
t171 = t199 * t416 + t295 * t501;
t170 = -t198 * t416 + t293 * t501;
t169 = t198 * t419 + t293 * t502;
t168 = t223 * t420 - t245 * t417;
t167 = t222 * t420 - t249 * t417;
t166 = t223 * t417 + t245 * t420;
t165 = t222 * t417 + t249 * t420;
t159 = t192 * t420 - t296 * t417;
t158 = t192 * t417 + t296 * t420;
t157 = t204 * t420 + t417 * t542;
t156 = t204 * t417 - t420 * t542;
t155 = t197 * t420 + t244 * t417;
t154 = t197 * t417 - t244 * t420;
t151 = t230 * t414 + t231 * t411;
t150 = t193 * t420 + t264 * t417;
t149 = t193 * t417 - t264 * t420;
t148 = -t227 * t411 + t229 * t414;
t147 = t227 * t414 + t229 * t411;
t146 = t226 * t414 + t228 * t411;
t145 = -t216 * t410 + t217 * t413;
t144 = t216 * t413 + t217 * t410;
t143 = t207 * t414 + t209 * t411;
t142 = t206 * t414 + t208 * t411;
t138 = t145 * t420 + t304 * t417;
t137 = t145 * t417 - t304 * t420;
t136 = -t182 * t410 + t184 * t413;
t135 = -t181 * t410 + t183 * t413;
t134 = t182 * t413 + t184 * t410;
t133 = t181 * t413 + t183 * t410;
t130 = -t174 * t419 - t416 * t544;
t128 = -t174 * t416 + t419 * t544;
t127 = -qJ(5) * t203 + t517;
t126 = -t171 * t410 + t172 * t413;
t125 = -t169 * t410 + t170 * t413;
t124 = t171 * t413 + t172 * t410;
t123 = t169 * t413 + t170 * t410;
t122 = -qJ(5) * t196 + t518;
t121 = t166 * t414 + t168 * t411;
t120 = t165 * t414 + t167 * t411;
t118 = t163 * t413 + t164 * t410;
t115 = t158 * t414 + t159 * t411;
t114 = -t156 * t411 + t157 * t414;
t113 = t156 * t414 + t157 * t411;
t112 = -t154 * t411 + t155 * t414;
t111 = t154 * t414 + t155 * t411;
t109 = t152 * t413 + t153 * t410;
t106 = -t149 * t411 + t150 * t414;
t105 = t149 * t414 + t150 * t411;
t103 = -pkin(3) * t263 + pkin(9) * t117;
t102 = t126 * t420 + t477;
t101 = t125 * t420 - t477;
t100 = t126 * t417 - t476;
t99 = t125 * t417 + t476;
t98 = -pkin(2) * t283 + qJ(3) * t215 + t185 * t414 + t210 * t411;
t97 = -pkin(9) * t227 - t116;
t96 = -pkin(2) * t280 + qJ(3) * t195 + t180 * t414 + t200 * t411;
t95 = t137 * t414 + t138 * t411;
t94 = -pkin(3) * t288 + pkin(9) * t229 + t117;
t93 = t136 * t420 - t175 * t417;
t92 = t135 * t420 + t178 * t417;
t91 = t136 * t417 + t175 * t420;
t90 = t135 * t417 - t178 * t420;
t87 = -pkin(4) * t203 + t108;
t86 = -pkin(4) * t196 + t107;
t85 = t119 * t420 + t417 * t544;
t84 = t119 * t417 - t420 * t544;
t80 = t110 * t420 + t174 * t417;
t79 = t110 * t417 - t174 * t420;
t76 = -t128 * t410 + t130 * t413;
t75 = t129 * t413 + t131 * t410;
t74 = t128 * t413 + t130 * t410;
t72 = t117 * t414 - t522;
t71 = t117 * t411 + t521;
t70 = t237 * t417 + t420 * t76;
t69 = -t237 * t420 + t417 * t76;
t68 = t205 * t417 + t420 * t77;
t67 = -t205 * t420 + t417 * t77;
t64 = t100 * t414 + t102 * t411;
t63 = t101 * t411 + t414 * t99;
t62 = -qJ(5) * t191 - t65;
t61 = t411 * t93 + t414 * t91;
t60 = t411 * t92 + t414 * t90;
t59 = -pkin(4) * t75 - pkin(5) * t129;
t58 = t140 * t417 + t420 * t66;
t57 = -t140 * t420 + t417 * t66;
t53 = -pkin(9) * t156 + t127 * t420 - t417 * t87;
t52 = -t411 * t84 + t414 * t85;
t51 = t411 * t85 + t414 * t84;
t50 = -pkin(9) * t154 + t122 * t420 - t417 * t86;
t49 = -t411 * t79 + t414 * t80;
t48 = t411 * t80 + t414 * t79;
t47 = -pkin(3) * t203 + pkin(9) * t157 + t127 * t417 + t420 * t87;
t46 = -pkin(3) * t196 + pkin(9) * t155 + t122 * t417 + t420 * t86;
t45 = -pkin(2) * t288 + qJ(3) * t148 + t411 * t97 + t414 * t94;
t44 = -pkin(9) * t149 + t191 * t530 + t420 * t62;
t43 = pkin(9) * t150 + t191 * t471 + t417 * t62;
t42 = t411 * t70 + t414 * t69;
t41 = -pkin(2) * t263 - pkin(9) * t522 + qJ(3) * t72 + t103 * t414;
t40 = -qJ(5) * t118 - t410 * t78 + t413 * t88;
t39 = -pkin(4) * t118 - pkin(5) * t163 + t56;
t38 = -t411 * t67 + t414 * t68;
t37 = t411 * t68 + t414 * t67;
t36 = -qJ(5) * t109 - t410 * t73 + t413 * t83;
t35 = -pkin(4) * t109 - pkin(5) * t152 + t55;
t34 = -t411 * t57 + t414 * t58;
t33 = t411 * t58 + t414 * t57;
t27 = -pkin(9) * t57 + (-qJ(5) * t420 + t530) * t65;
t26 = -pkin(2) * t203 + qJ(3) * t114 + t411 * t53 + t414 * t47;
t25 = -pkin(2) * t196 + qJ(3) * t112 + t411 * t50 + t414 * t46;
t24 = -pkin(2) * t191 + qJ(3) * t106 + t411 * t44 + t414 * t43;
t23 = pkin(9) * t58 + (-qJ(5) * t417 + t471) * t65;
t22 = -pkin(9) * t84 - t39 * t417 + t40 * t420;
t21 = -pkin(9) * t79 - t35 * t417 + t36 * t420;
t20 = -pkin(3) * t118 + pkin(9) * t85 + t39 * t420 + t40 * t417;
t18 = t32 * t410 + t524;
t17 = -pkin(3) * t109 + pkin(9) * t80 + t35 * t420 + t36 * t417;
t16 = t132 * t417 + t19 * t420;
t15 = -t132 * t420 + t19 * t417;
t14 = -qJ(5) * t75 - t28 * t410 + t29 * t413;
t13 = -pkin(4) * t18 - pkin(5) * t31;
t12 = -pkin(9) * t67 + t14 * t420 - t417 * t59;
t11 = -pkin(3) * t75 + pkin(9) * t68 + t14 * t417 + t420 * t59;
t10 = -pkin(10) * t524 - qJ(5) * t18 - t30 * t410;
t9 = -pkin(2) * t65 + qJ(3) * t34 + t23 * t414 + t27 * t411;
t8 = -t15 * t411 + t16 * t414;
t7 = t15 * t414 + t16 * t411;
t6 = -pkin(2) * t118 + qJ(3) * t52 + t20 * t414 + t22 * t411;
t5 = -pkin(2) * t109 + qJ(3) * t49 + t17 * t414 + t21 * t411;
t4 = -pkin(2) * t75 + qJ(3) * t38 + t11 * t414 + t12 * t411;
t3 = -pkin(9) * t15 + t10 * t420 - t13 * t417;
t2 = -pkin(3) * t18 + pkin(9) * t16 + t10 * t417 + t13 * t420;
t1 = -pkin(2) * t18 + qJ(3) * t8 + t2 * t414 + t3 * t411;
t54 = [0, 0, 0, 0, 0, qJDD(1), t442, t443, 0, 0, t486 * t494 + t451, t415 * t390 + (t418 * t368 + t421 * (t392 + t486)) * t412, t415 * t366 + (t490 + t421 * (t458 - t468)) * t412, -t378 - t451, t415 * t367 + (t418 * (t405 - t458) + t487) * t412, t415 * t460, (-t351 + pkin(1) * (t388 * t421 + t389 * t418)) * t415 + (t421 * t374 + pkin(1) * t368 + pkin(8) * (t389 * t421 - t490)) * t412, -t374 * t494 - t415 * t352 + pkin(1) * (-t387 * t492 + t415 * t421 * t380 - t412 * (t462 * t469 + t486)) + (-t418 * t380 - t487) * t528, pkin(1) * (-t366 * t421 + t367 * t418) * t415 + (t418 * t366 + t367 * t421) * t528 + (pkin(1) * (t405 + t468) + t540) * t412, pkin(1) * (t412 * t374 + (-t351 * t421 + t352 * t418) * t415) + t540 * t528, (t414 * t364 + t373 * t411) * t494 + t461 + t415 * t334, t415 * t298 + (t418 * (-t342 * t414 - t344 * t411) + t421 * (-t383 + t382)) * t412, t415 * t322 + (t418 * (-t370 * t411 + t549) + t421 * t345) * t412, (t372 * t414 - t411 * t453) * t494 - t461 + t415 * t333, t415 * t323 + (t418 * (t369 * t414 + t504) - t421 * t343) * t412, t415 * t339 - t378 + (-t384 * t414 - t385 * t411) * t484 * t489, (-qJ(3) * t308 + t507) * t494 + (-pkin(2) * t308 + t261) * t493 + t415 * t238 + pkin(1) * (-t412 * t308 + (t309 * t418 - t342 * t421) * t415) + (t309 * t421 + t418 * t342) * t528, (t250 + pkin(1) * (t324 * t418 - t344 * t421)) * t415 + (t418 * (-qJ(3) * t321 + t506) + t421 * (-pkin(2) * t321 + t262) - pkin(1) * t321 + pkin(8) * (t324 * t421 + t418 * t344)) * t412, (t173 + pkin(1) * (t300 * t418 - t338 * t421)) * t415 + (t418 * t452 + pkin(8) * (t300 * t421 + t418 * t338) + t450 * (t343 * t411 + t345 * t414)) * t412, (t189 + pkin(1) * (t202 * t418 - t327 * t421)) * t415 + (pkin(8) * (t202 * t421 + t418 * t327) - t450 * t452) * t412, t415 * t219 + (t418 * (-t273 * t411 + t274 * t414) - t473) * t412, t415 * t146 + (t418 * (-t226 * t411 + t228 * t414) - t421 * t319) * t412, t415 * t224 + (t418 * (-t275 * t411 + t277 * t414) - t421 * t284) * t412, t415 * t218 + (t418 * (-t271 * t411 + t272 * t414) + t473) * t412, t415 * t225 + (t418 * (-t276 * t411 + t278 * t414) + t421 * t281) * t412, t415 * t251 + (t418 * (-t302 * t411 + t303 * t414) - t432 * t421) * t412, (t96 + pkin(1) * (t195 * t418 - t280 * t421)) * t415 + (t418 * (-qJ(3) * t194 - t180 * t411 + t200 * t414) + t421 * (-pkin(2) * t194 - pkin(3) * t258 + t161) - pkin(1) * t194 + pkin(8) * (t195 * t421 + t418 * t280)) * t412, (t98 + pkin(1) * (t215 * t418 - t283 * t421)) * t415 + (t418 * (-qJ(3) * t214 - t185 * t411 + t210 * t414) + t421 * (-pkin(2) * t214 - pkin(3) * t265 + t162) - pkin(1) * t214 + pkin(8) * (t215 * t421 + t283 * t418)) * t412, (t45 + pkin(1) * (t148 * t418 - t288 * t421)) * t415 + (t418 * (-qJ(3) * t147 - t411 * t94 + t414 * t97) + t421 * (-pkin(2) * t147 - pkin(3) * t227) - pkin(1) * t147 + pkin(8) * (t148 * t421 + t418 * t288)) * t412, (t41 + pkin(1) * (-t263 * t421 + t418 * t72)) * t415 + (t418 * (-pkin(9) * t521 - qJ(3) * t71 - t103 * t411) + t421 * (-pkin(2) * t71 - pkin(3) * t116) - pkin(1) * t71 + pkin(8) * (t418 * t263 + t421 * t72)) * t412, t415 * t143 + (t418 * (-t207 * t411 + t209 * t414) - t421 * t242) * t412, t415 * t115 + (t418 * (-t158 * t411 + t159 * t414) - t421 * t190) * t412, t415 * t120 + (t418 * (-t165 * t411 + t167 * t414) - t421 * t220) * t412, t415 * t142 + (t418 * (-t206 * t411 + t208 * t414) + t421 * t240) * t412, t415 * t121 + (t418 * (-t166 * t411 + t168 * t414) - t421 * t221) * t412, t415 * t151 + (t418 * (-t230 * t411 + t231 * t414) - t421 * t256) * t412, (t25 + pkin(1) * (t112 * t418 - t196 * t421)) * t415 + (t418 * (-qJ(3) * t111 - t411 * t46 + t414 * t50) + t421 * (-pkin(2) * t111 - pkin(3) * t154 - t441) - pkin(1) * t111 + pkin(8) * (t112 * t421 + t418 * t196)) * t412, (t26 + pkin(1) * (t114 * t418 - t203 * t421)) * t415 + (t418 * (-qJ(3) * t113 - t411 * t47 + t414 * t53) + t421 * (-pkin(2) * t113 - pkin(3) * t156 - t440) - pkin(1) * t113 + pkin(8) * (t114 * t421 + t418 * t203)) * t412, (t24 + pkin(1) * (t106 * t418 - t191 * t421)) * t415 + (t418 * (-qJ(3) * t105 - t411 * t43 + t414 * t44) + t421 * (-pkin(2) * t105 - pkin(3) * t149 - t437) - pkin(1) * t105 + pkin(8) * (t106 * t421 + t418 * t191)) * t412, (t9 + pkin(1) * (t34 * t418 - t421 * t65)) * t415 + (t418 * (-qJ(3) * t33 - t23 * t411 + t27 * t414) + t421 * (-pkin(2) * t33 - pkin(3) * t57 - t457) - pkin(1) * t33 + pkin(8) * (t34 * t421 + t418 * t65)) * t412, t415 * t64 + (t418 * (-t100 * t411 + t102 * t414) - t421 * t124) * t412, t415 * t42 + (t418 * (-t411 * t69 + t414 * t70) - t421 * t74) * t412, t415 * t60 + (t418 * (-t411 * t90 + t414 * t92) - t421 * t133) * t412, t415 * t63 + (t418 * (t101 * t414 - t411 * t99) - t421 * t123) * t412, t415 * t61 + (t418 * (-t411 * t91 + t414 * t93) - t421 * t134) * t412, t415 * t95 + (t418 * (-t137 * t411 + t138 * t414) - t421 * t144) * t412, (t5 + pkin(1) * (-t109 * t421 + t418 * t49)) * t415 + (t418 * (-qJ(3) * t48 - t17 * t411 + t21 * t414) + t421 * (-pkin(2) * t48 - pkin(3) * t79 - t434) - pkin(1) * t48 + pkin(8) * (t418 * t109 + t421 * t49)) * t412, (t6 + pkin(1) * (-t118 * t421 + t418 * t52)) * t415 + (t418 * (-qJ(3) * t51 - t20 * t411 + t22 * t414) + t421 * (-pkin(2) * t51 - pkin(3) * t84 - t433) - pkin(1) * t51 + pkin(8) * (t418 * t118 + t421 * t52)) * t412, (t4 + pkin(1) * (t38 * t418 - t421 * t75)) * t415 + (t418 * (-qJ(3) * t37 - t11 * t411 + t12 * t414) + t421 * (-pkin(2) * t37 - pkin(3) * t67 - t435) - pkin(1) * t37 + pkin(8) * (t38 * t421 + t418 * t75)) * t412, (t1 + pkin(1) * (-t18 * t421 + t418 * t8)) * t415 + (t418 * (-qJ(3) * t7 - t2 * t411 + t3 * t414) + t421 * (-pkin(2) * t7 - pkin(3) * t15 - t431) - pkin(1) * t7 + pkin(8) * (t418 * t18 + t421 * t8)) * t412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t399, t390, t366, t399, t367, t460, -t351, -t352, 0, 0, t334, t298, t322, t333, t323, t339, t238, t250, t173, t189, t219, t146, t224, t218, t225, t251, t96, t98, t45, t41, t143, t115, t120, t142, t121, t151, t25, t26, t24, t9, t64, t42, t60, t63, t61, t95, t5, t6, t4, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t342, t344, t338, t327, 0, 0, 0, 0, 0, 0, t280, t283, t288, t263, 0, 0, 0, 0, 0, 0, t196, t203, t191, t65, 0, 0, 0, 0, 0, 0, t109, t118, t75, t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t498, t319, t284, -t498, -t281, t432, -t161, -t162, 0, 0, t242, t190, t220, -t240, t221, t256, t441, t440, t437, t457, t124, t74, t133, t123, t134, t144, t434, t433, t435, t431; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t244, t542, t264, t140, 0, 0, 0, 0, 0, 0, t174, t544, t205, t132; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t239, t237, t178, -t239, -t175, t304, -t55, -t56, 0, 0;];
tauJ_reg  = t54;
