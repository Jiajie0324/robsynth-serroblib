% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRPPR1
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 04:11
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRPPR1_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR1_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR1_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPPR1_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPPR1_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR1_invdynJ_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 04:09:18
% EndTime: 2019-05-07 04:09:46
% DurationCPUTime: 16.28s
% Computational Cost: add. (132074->675), mult. (302750->995), div. (0->0), fcn. (229381->12), ass. (0->420)
t417 = cos(qJ(2));
t400 = t417 * qJDD(1);
t413 = sin(qJ(2));
t468 = qJD(1) * qJD(2);
t458 = t413 * t468;
t388 = t400 - t458;
t406 = t417 ^ 2;
t419 = qJD(1) ^ 2;
t414 = sin(qJ(1));
t512 = cos(qJ(1));
t456 = g(1) * t414 - t512 * g(2);
t431 = qJDD(1) * pkin(1) + t456;
t473 = qJD(1) * t413;
t432 = qJD(2) * pkin(2) - pkin(8) * t473;
t345 = pkin(2) * t388 - t432 * t473 + t431 + (pkin(8) * t406 + pkin(7)) * t419;
t529 = 2 * qJD(4);
t407 = sin(pkin(11));
t412 = sin(qJ(3));
t416 = cos(qJ(3));
t381 = (t412 * t417 + t413 * t416) * qJD(1);
t399 = t413 * qJDD(1);
t457 = t417 * t468;
t387 = t399 + t457;
t450 = t412 * t387 - t416 * t388;
t342 = -qJD(3) * t381 - t450;
t380 = qJD(1) * t416 * t417 - t412 * t473;
t435 = t416 * t387 + t412 * t388;
t343 = qJD(3) * t380 + t435;
t408 = sin(pkin(10));
t410 = cos(pkin(10));
t304 = -t410 * t342 + t343 * t408;
t361 = t408 * t380 + t410 * t381;
t404 = qJD(2) + qJD(3);
t409 = cos(pkin(11));
t339 = t361 * t407 - t409 * t404;
t341 = t361 * t409 + t404 * t407;
t307 = t341 * t339;
t518 = t304 - t307;
t528 = t407 * t518;
t359 = -t410 * t380 + t381 * t408;
t324 = t361 * t359;
t466 = qJDD(2) + qJDD(3);
t516 = -t324 + t466;
t527 = t408 * t516;
t526 = t409 * t518;
t525 = t410 * t516;
t411 = sin(qJ(6));
t415 = cos(qJ(6));
t300 = t415 * t339 + t341 * t411;
t302 = -t339 * t411 + t341 * t415;
t238 = t302 * t300;
t303 = qJDD(6) + t304;
t520 = -t238 + t303;
t524 = t411 * t520;
t367 = t380 * t381;
t515 = t367 + t466;
t523 = t412 * t515;
t522 = t415 * t520;
t521 = t416 * t515;
t378 = t380 ^ 2;
t441 = pkin(3) * t404 - qJ(4) * t381;
t262 = pkin(3) * t342 + qJ(4) * t378 - t381 * t441 - qJDD(4) + t345;
t433 = g(1) * t512 + t414 * g(2);
t507 = qJDD(1) * pkin(7);
t383 = -t419 * pkin(1) - t433 + t507;
t402 = t406 * t419;
t510 = t413 * g(3);
t423 = -pkin(2) * t402 + t388 * pkin(8) - qJD(2) * t432 - t510;
t476 = t413 * t419;
t427 = pkin(2) * t476 + pkin(8) * t468 - g(3);
t482 = t383 * t413;
t428 = qJDD(2) * pkin(2) - pkin(8) * t387 - t482;
t296 = t416 * t423 + t412 * t428 + (t416 * t383 + t412 * t427) * t417;
t244 = -t378 * pkin(3) + t342 * qJ(4) - t404 * t441 + t296;
t295 = t412 * t423 - t416 * t428 + (t412 * t383 - t416 * t427) * t417;
t374 = t404 * t380;
t330 = t343 - t374;
t420 = pkin(3) * t515 - qJ(4) * t330 - t295;
t182 = -0.2e1 * qJD(4) * t359 + t410 * t244 + t408 * t420;
t319 = pkin(4) * t359 - qJ(5) * t361;
t392 = t404 ^ 2;
t143 = -pkin(4) * t392 + qJ(5) * t466 - t359 * t319 + t182;
t485 = t361 * t404;
t273 = t304 + t485;
t305 = t342 * t408 + t343 * t410;
t349 = t404 * t359;
t277 = t305 - t349;
t189 = pkin(4) * t273 - qJ(5) * t277 - t262;
t110 = 0.2e1 * qJD(5) * t341 + t143 * t407 - t409 * t189;
t111 = -0.2e1 * qJD(5) * t339 + t409 * t143 + t407 * t189;
t61 = t407 * t110 + t409 * t111;
t294 = t409 * t305 + t407 * t466;
t452 = t305 * t407 - t409 * t466;
t202 = -t300 * qJD(6) + t415 * t294 - t411 * t452;
t354 = qJD(6) + t359;
t271 = t354 * t300;
t519 = -t271 + t202;
t314 = t359 * t339;
t252 = -t314 - t294;
t517 = -t314 + t294;
t418 = qJD(2) ^ 2;
t446 = t402 + t418;
t455 = t244 * t408 - t410 * t420;
t181 = t361 * t529 + t455;
t454 = t294 * t411 + t415 * t452;
t174 = (qJD(6) - t354) * t302 + t454;
t297 = t300 ^ 2;
t298 = t302 ^ 2;
t514 = t339 ^ 2;
t338 = t341 ^ 2;
t353 = t354 ^ 2;
t513 = t359 ^ 2;
t357 = t361 ^ 2;
t379 = t381 ^ 2;
t511 = pkin(4) * t408;
t82 = pkin(5) * t518 + pkin(9) * t252 - t110;
t308 = pkin(5) * t359 - pkin(9) * t341;
t93 = -pkin(5) * t514 - pkin(9) * t452 - t359 * t308 + t111;
t50 = t411 * t93 - t415 * t82;
t51 = t411 * t82 + t415 * t93;
t28 = t411 * t51 - t415 * t50;
t509 = t28 * t407;
t508 = t28 * t409;
t127 = -t181 * t410 + t182 * t408;
t506 = t127 * t412;
t505 = t127 * t416;
t142 = qJDD(5) - t466 * pkin(4) - t392 * qJ(5) + (t529 + t319) * t361 + t455;
t135 = pkin(5) * t452 - pkin(9) * t514 + t308 * t341 + t142;
t504 = t135 * t411;
t503 = t135 * t415;
t210 = t238 + t303;
t502 = t210 * t411;
t501 = t210 * t415;
t233 = -t295 * t416 + t296 * t412;
t500 = t233 * t413;
t254 = t304 + t307;
t499 = t254 * t407;
t498 = t254 * t409;
t497 = t262 * t408;
t496 = t262 * t410;
t495 = t304 * t408;
t317 = t324 + t466;
t494 = t317 * t408;
t493 = t317 * t410;
t492 = t341 * t359;
t491 = t345 * t412;
t490 = t345 * t416;
t489 = t354 * t411;
t488 = t354 * t415;
t487 = t359 * t407;
t486 = t359 * t409;
t364 = -t367 + t466;
t484 = t364 * t412;
t483 = t364 * t416;
t481 = t404 * t408;
t480 = t404 * t410;
t479 = t404 * t412;
t478 = t404 * t416;
t138 = t407 * t142;
t139 = t409 * t142;
t395 = t417 * t476;
t467 = qJDD(2) + t395;
t477 = t413 * t467;
t475 = t417 * (qJDD(2) - t395);
t470 = qJD(3) + t404;
t53 = -t142 * t410 + t408 * t61;
t465 = pkin(3) * t53 - pkin(4) * t142 + qJ(5) * t61;
t464 = t408 * t238;
t463 = t410 * t238;
t462 = t408 * t307;
t461 = t410 * t307;
t460 = -pkin(4) * t410 - pkin(3);
t29 = t411 * t50 + t415 * t51;
t128 = t181 * t408 + t410 * t182;
t234 = t295 * t412 + t416 * t296;
t370 = g(3) * t417 + t482;
t440 = -t417 * t383 + t510;
t451 = t413 * t370 - t417 * t440;
t289 = -t338 - t513;
t205 = -t289 * t407 - t498;
t157 = t205 * t408 - t410 * t517;
t449 = pkin(3) * t157 - pkin(4) * t517 + qJ(5) * t205 + t138;
t281 = -t513 - t514;
t198 = t281 * t409 - t528;
t247 = t452 + t492;
t154 = t198 * t408 - t247 * t410;
t448 = pkin(3) * t154 - pkin(4) * t247 + qJ(5) * t198 - t139;
t346 = -t357 - t392;
t283 = t346 * t410 - t494;
t447 = pkin(3) * t283 - t182;
t208 = -t297 - t298;
t177 = t271 + t202;
t124 = -t174 * t415 + t177 * t411;
t23 = -pkin(5) * t208 + pkin(9) * t124 + t29;
t122 = -t174 * t411 - t177 * t415;
t25 = -pkin(9) * t122 - t28;
t70 = -t122 * t407 + t124 * t409;
t57 = -t208 * t410 + t408 * t70;
t445 = pkin(3) * t57 - pkin(4) * t208 + qJ(5) * t70 + t409 * t23 + t407 * t25;
t232 = -t353 - t297;
t148 = t232 * t411 + t522;
t149 = t232 * t415 - t524;
t102 = -t148 * t407 + t149 * t409;
t173 = (qJD(6) + t354) * t302 + t454;
t65 = -pkin(5) * t173 + pkin(9) * t149 - t503;
t76 = t102 * t408 - t173 * t410;
t84 = -pkin(9) * t148 + t504;
t443 = pkin(3) * t76 - pkin(4) * t173 + qJ(5) * t102 + t407 * t84 + t409 * t65;
t256 = -t298 - t353;
t161 = t256 * t415 - t502;
t162 = -t256 * t411 - t501;
t116 = -t161 * t407 + t162 * t409;
t74 = -pkin(5) * t519 + pkin(9) * t162 + t504;
t79 = t116 * t408 - t410 * t519;
t92 = -pkin(9) * t161 + t503;
t442 = pkin(3) * t79 - pkin(4) * t519 + qJ(5) * t116 + t407 * t92 + t409 * t74;
t439 = -t387 + t457;
t438 = t388 + t458;
t248 = t452 - t492;
t195 = -t248 * t409 - t252 * t407;
t268 = -t338 - t514;
t151 = t195 * t408 - t268 * t410;
t436 = pkin(3) * t151 - pkin(4) * t268 + qJ(5) * t195 + t61;
t60 = -t110 * t409 + t111 * t407;
t315 = -t513 - t392;
t260 = t315 * t408 + t525;
t434 = pkin(3) * t260 - t181;
t430 = -t304 + t485;
t16 = t29 * t409 - t509;
t11 = -t135 * t410 + t16 * t408;
t27 = -pkin(5) * t135 + pkin(9) * t29;
t429 = pkin(3) * t11 - pkin(4) * t135 - pkin(9) * t509 + qJ(5) * t16 + t409 * t27;
t426 = (-qJD(3) + t404) * t381 - t450;
t405 = t413 ^ 2;
t401 = t405 * t419;
t389 = t400 - 0.2e1 * t458;
t386 = t399 + 0.2e1 * t457;
t382 = pkin(7) * t419 + t431;
t373 = -t379 + t392;
t372 = t378 - t392;
t369 = -t379 - t392;
t366 = t379 - t378;
t362 = -t392 - t378;
t348 = -t357 + t392;
t347 = t513 - t392;
t344 = -t378 - t379;
t332 = -t369 * t412 - t483;
t331 = t369 * t416 - t484;
t329 = t343 + t374;
t328 = t380 * t470 + t435;
t325 = t381 * t470 + t450;
t322 = t362 * t416 - t523;
t321 = t362 * t412 + t521;
t320 = t357 - t513;
t312 = -t338 + t513;
t311 = -t513 + t514;
t310 = (-t359 * t410 + t361 * t408) * t404;
t309 = (-t359 * t408 - t361 * t410) * t404;
t306 = -t338 + t514;
t299 = t410 * t304;
t292 = -t513 - t357;
t288 = t347 * t410 - t494;
t287 = -t348 * t408 + t525;
t286 = t347 * t408 + t493;
t285 = t348 * t410 + t527;
t284 = -t346 * t408 - t493;
t280 = t330 * t412 + t416 * t426;
t279 = -t330 * t416 + t412 * t426;
t278 = t305 + t349;
t270 = -t298 + t353;
t269 = t297 - t353;
t266 = t305 * t410 - t361 * t481;
t265 = t305 * t408 + t361 * t480;
t264 = t359 * t480 + t495;
t263 = t359 * t481 - t299;
t261 = t315 * t410 - t527;
t258 = (-t339 * t409 + t341 * t407) * t359;
t257 = (-t339 * t407 - t341 * t409) * t359;
t243 = t294 * t409 - t341 * t487;
t242 = t294 * t407 + t341 * t486;
t241 = t339 * t486 + t407 * t452;
t240 = t339 * t487 - t409 * t452;
t237 = t298 - t297;
t231 = -t283 * t412 + t284 * t416;
t230 = t283 * t416 + t284 * t412;
t229 = t258 * t410 + t495;
t228 = t258 * t408 - t299;
t227 = -qJ(4) * t283 - t496;
t226 = t278 * t408 + t410 * t430;
t225 = -t273 * t410 - t277 * t408;
t224 = -t278 * t410 + t408 * t430;
t223 = -t273 * t408 + t277 * t410;
t222 = (-t300 * t415 + t302 * t411) * t354;
t221 = (-t300 * t411 - t302 * t415) * t354;
t220 = pkin(3) * t224;
t219 = t311 * t409 - t499;
t218 = -t312 * t407 + t526;
t217 = t311 * t407 + t498;
t216 = t312 * t409 + t528;
t215 = t243 * t410 + t462;
t214 = t241 * t410 - t462;
t213 = t243 * t408 - t461;
t212 = t241 * t408 + t461;
t206 = -qJ(4) * t260 - t497;
t204 = t289 * t409 - t499;
t201 = -qJD(6) * t302 - t454;
t200 = -t260 * t412 + t261 * t416;
t199 = t260 * t416 + t261 * t412;
t197 = t281 * t407 + t526;
t194 = -t247 * t409 - t407 * t517;
t193 = -t248 * t407 + t252 * t409;
t192 = -t247 * t407 + t409 * t517;
t190 = -pkin(3) * t277 + qJ(4) * t284 - t497;
t186 = t269 * t415 - t502;
t185 = -t270 * t411 + t522;
t184 = t269 * t411 + t501;
t183 = t270 * t415 + t524;
t180 = -pkin(3) * t273 + qJ(4) * t261 + t496;
t170 = t202 * t415 - t302 * t489;
t169 = t202 * t411 + t302 * t488;
t168 = -t201 * t411 + t300 * t488;
t167 = t201 * t415 + t300 * t489;
t166 = t219 * t410 - t248 * t408;
t165 = t218 * t410 - t252 * t408;
t164 = t219 * t408 + t248 * t410;
t163 = t218 * t408 + t252 * t410;
t160 = t194 * t410 - t306 * t408;
t159 = t194 * t408 + t306 * t410;
t158 = t205 * t410 + t408 * t517;
t155 = t198 * t410 + t247 * t408;
t152 = t195 * t410 + t268 * t408;
t147 = -t224 * t412 + t226 * t416;
t146 = t224 * t416 + t226 * t412;
t145 = -t221 * t407 + t222 * t409;
t144 = t221 * t409 + t222 * t407;
t137 = t145 * t410 + t303 * t408;
t136 = t145 * t408 - t303 * t410;
t133 = -qJ(5) * t204 + t139;
t132 = -t184 * t407 + t186 * t409;
t131 = -t183 * t407 + t185 * t409;
t130 = t184 * t409 + t186 * t407;
t129 = t183 * t409 + t185 * t407;
t126 = pkin(3) * t127;
t125 = -qJ(5) * t197 + t138;
t123 = -t173 * t415 - t411 * t519;
t121 = -t173 * t411 + t415 * t519;
t120 = -t169 * t407 + t170 * t409;
t119 = -t167 * t407 + t168 * t409;
t118 = t169 * t409 + t170 * t407;
t117 = t167 * t409 + t168 * t407;
t115 = t161 * t409 + t162 * t407;
t113 = -t157 * t412 + t158 * t416;
t112 = t157 * t416 + t158 * t412;
t109 = pkin(3) * t262 + qJ(4) * t128;
t106 = -t154 * t412 + t155 * t416;
t105 = t154 * t416 + t155 * t412;
t104 = -t151 * t412 + t152 * t416;
t103 = t151 * t416 + t152 * t412;
t101 = t148 * t409 + t149 * t407;
t99 = t120 * t410 + t464;
t98 = t119 * t410 - t464;
t97 = t120 * t408 - t463;
t96 = t119 * t408 + t463;
t95 = -qJ(4) * t224 - t127;
t94 = -pkin(3) * t292 + qJ(4) * t226 + t128;
t90 = t132 * t410 - t174 * t408;
t89 = t131 * t410 + t177 * t408;
t88 = t132 * t408 + t174 * t410;
t87 = t131 * t408 - t177 * t410;
t86 = -pkin(4) * t204 + t111;
t85 = -pkin(4) * t197 + t110;
t80 = t116 * t410 + t408 * t519;
t77 = t102 * t410 + t173 * t408;
t73 = t128 * t416 - t506;
t72 = t128 * t412 + t505;
t69 = -t121 * t407 + t123 * t409;
t68 = t122 * t409 + t124 * t407;
t67 = t121 * t409 + t123 * t407;
t63 = t237 * t408 + t410 * t69;
t62 = -t237 * t410 + t408 * t69;
t58 = t208 * t408 + t410 * t70;
t55 = -qJ(5) * t193 - t60;
t54 = t142 * t408 + t410 * t61;
t48 = -qJ(4) * t157 + t133 * t410 - t408 * t86;
t47 = -pkin(4) * t68 - pkin(5) * t122;
t46 = -qJ(4) * t154 + t125 * t410 - t408 * t85;
t45 = -t412 * t79 + t416 * t80;
t44 = t412 * t80 + t416 * t79;
t43 = -pkin(3) * t204 + qJ(4) * t158 + t133 * t408 + t410 * t86;
t42 = -t412 * t76 + t416 * t77;
t41 = t412 * t77 + t416 * t76;
t40 = -pkin(3) * t197 + qJ(4) * t155 + t125 * t408 + t410 * t85;
t39 = -qJ(4) * t151 + t193 * t511 + t410 * t55;
t38 = qJ(4) * t152 + t193 * t460 + t408 * t55;
t37 = -qJ(5) * t115 - t407 * t74 + t409 * t92;
t36 = -pkin(4) * t115 - pkin(5) * t161 + t51;
t35 = -t412 * t57 + t416 * t58;
t34 = t412 * t58 + t416 * t57;
t33 = -qJ(5) * t101 - t407 * t65 + t409 * t84;
t32 = -pkin(4) * t101 - pkin(5) * t148 + t50;
t31 = -t412 * t53 + t416 * t54;
t30 = t412 * t54 + t416 * t53;
t21 = -qJ(4) * t53 + (-qJ(5) * t410 + t511) * t60;
t20 = qJ(4) * t54 + (-qJ(5) * t408 + t460) * t60;
t19 = -qJ(4) * t79 - t36 * t408 + t37 * t410;
t18 = -qJ(4) * t76 - t32 * t408 + t33 * t410;
t17 = -pkin(3) * t115 + qJ(4) * t80 + t36 * t410 + t37 * t408;
t15 = t29 * t407 + t508;
t13 = -pkin(3) * t101 + qJ(4) * t77 + t32 * t410 + t33 * t408;
t12 = t135 * t408 + t16 * t410;
t9 = -qJ(5) * t68 - t23 * t407 + t25 * t409;
t8 = -pkin(4) * t15 - pkin(5) * t28;
t7 = -qJ(4) * t57 - t408 * t47 + t410 * t9;
t6 = -pkin(3) * t68 + qJ(4) * t58 + t408 * t9 + t410 * t47;
t5 = -pkin(9) * t508 - qJ(5) * t15 - t27 * t407;
t4 = -t11 * t412 + t12 * t416;
t3 = t11 * t416 + t12 * t412;
t2 = -qJ(4) * t11 - t408 * t8 + t410 * t5;
t1 = -pkin(3) * t15 + qJ(4) * t12 + t408 * t5 + t410 * t8;
t10 = [0, 0, 0, 0, 0, qJDD(1), t456, t433, 0, 0, (t387 + t457) * t413, t386 * t417 + t389 * t413, t477 + t417 * (-t401 + t418), (t388 - t458) * t417, t413 * (t402 - t418) + t475, 0, t417 * t382 + pkin(1) * t389 + pkin(7) * (-t417 * t446 - t477), -t413 * t382 - pkin(1) * t386 + pkin(7) * (-t475 - t413 * (-t401 - t418)), pkin(1) * (t401 + t402) + (t405 + t406) * t507 + t451, pkin(1) * t382 + pkin(7) * t451, t413 * (t343 * t416 - t381 * t479) + t417 * (t343 * t412 + t381 * t478), t413 * (-t325 * t416 - t329 * t412) + t417 * (-t325 * t412 + t329 * t416), t413 * (-t373 * t412 + t521) + t417 * (t373 * t416 + t523), t413 * (-t342 * t412 - t380 * t478) + t417 * (t342 * t416 - t380 * t479), t413 * (t372 * t416 - t484) + t417 * (t372 * t412 + t483), (t413 * (t380 * t416 + t381 * t412) + t417 * (t380 * t412 - t381 * t416)) * t404, t413 * (-pkin(8) * t321 - t491) + t417 * (-pkin(2) * t325 + pkin(8) * t322 + t490) - pkin(1) * t325 + pkin(7) * (-t321 * t413 + t322 * t417), t413 * (-pkin(8) * t331 - t490) + t417 * (-pkin(2) * t328 + pkin(8) * t332 - t491) - pkin(1) * t328 + pkin(7) * (-t331 * t413 + t332 * t417), t413 * (-pkin(8) * t279 - t233) + t417 * (-pkin(2) * t344 + pkin(8) * t280 + t234) - pkin(1) * t344 + pkin(7) * (-t279 * t413 + t280 * t417), -pkin(8) * t500 + t417 * (pkin(2) * t345 + pkin(8) * t234) + pkin(1) * t345 + pkin(7) * (t234 * t417 - t500), t413 * (-t265 * t412 + t266 * t416) + t417 * (t265 * t416 + t266 * t412), t413 * (-t223 * t412 + t225 * t416) + t417 * (t223 * t416 + t225 * t412), t413 * (-t285 * t412 + t287 * t416) + t417 * (t285 * t416 + t287 * t412), t413 * (-t263 * t412 + t264 * t416) + t417 * (t263 * t416 + t264 * t412), t413 * (-t286 * t412 + t288 * t416) + t417 * (t286 * t416 + t288 * t412), t413 * (-t309 * t412 + t310 * t416) + t417 * (t309 * t416 + t310 * t412), t413 * (-pkin(8) * t199 - t180 * t412 + t206 * t416) + t417 * (-pkin(2) * t273 + pkin(8) * t200 + t180 * t416 + t206 * t412) - pkin(1) * t273 + pkin(7) * (-t199 * t413 + t200 * t417), t413 * (-pkin(8) * t230 - t190 * t412 + t227 * t416) + t417 * (-pkin(2) * t277 + pkin(8) * t231 + t190 * t416 + t227 * t412) - pkin(1) * t277 + pkin(7) * (-t230 * t413 + t231 * t417), t413 * (-pkin(8) * t146 - t412 * t94 + t416 * t95) + t417 * (-pkin(2) * t292 + pkin(8) * t147 + t412 * t95 + t416 * t94) - pkin(1) * t292 + pkin(7) * (-t146 * t413 + t147 * t417), t413 * (-pkin(8) * t72 - qJ(4) * t505 - t109 * t412) + t417 * (pkin(2) * t262 + pkin(8) * t73 - qJ(4) * t506 + t109 * t416) + pkin(1) * t262 + pkin(7) * (-t413 * t72 + t417 * t73), t413 * (-t213 * t412 + t215 * t416) + t417 * (t213 * t416 + t215 * t412), t413 * (-t159 * t412 + t160 * t416) + t417 * (t159 * t416 + t160 * t412), t413 * (-t163 * t412 + t165 * t416) + t417 * (t163 * t416 + t165 * t412), t413 * (-t212 * t412 + t214 * t416) + t417 * (t212 * t416 + t214 * t412), t413 * (-t164 * t412 + t166 * t416) + t417 * (t164 * t416 + t166 * t412), t413 * (-t228 * t412 + t229 * t416) + t417 * (t228 * t416 + t229 * t412), t413 * (-pkin(8) * t105 - t40 * t412 + t416 * t46) + t417 * (-pkin(2) * t197 + pkin(8) * t106 + t40 * t416 + t412 * t46) - pkin(1) * t197 + pkin(7) * (-t105 * t413 + t106 * t417), t413 * (-pkin(8) * t112 - t412 * t43 + t416 * t48) + t417 * (-pkin(2) * t204 + pkin(8) * t113 + t412 * t48 + t416 * t43) - pkin(1) * t204 + pkin(7) * (-t112 * t413 + t113 * t417), t413 * (-pkin(8) * t103 - t38 * t412 + t39 * t416) + t417 * (-pkin(2) * t193 + pkin(8) * t104 + t38 * t416 + t39 * t412) - pkin(1) * t193 + pkin(7) * (-t103 * t413 + t104 * t417), t413 * (-pkin(8) * t30 - t20 * t412 + t21 * t416) + t417 * (-pkin(2) * t60 + pkin(8) * t31 + t20 * t416 + t21 * t412) - pkin(1) * t60 + pkin(7) * (-t30 * t413 + t31 * t417), t413 * (-t412 * t97 + t416 * t99) + t417 * (t412 * t99 + t416 * t97), t413 * (-t412 * t62 + t416 * t63) + t417 * (t412 * t63 + t416 * t62), t413 * (-t412 * t87 + t416 * t89) + t417 * (t412 * t89 + t416 * t87), t413 * (-t412 * t96 + t416 * t98) + t417 * (t412 * t98 + t416 * t96), t413 * (-t412 * t88 + t416 * t90) + t417 * (t412 * t90 + t416 * t88), t413 * (-t136 * t412 + t137 * t416) + t417 * (t136 * t416 + t137 * t412), t413 * (-pkin(8) * t41 - t13 * t412 + t18 * t416) + t417 * (-pkin(2) * t101 + pkin(8) * t42 + t13 * t416 + t18 * t412) - pkin(1) * t101 + pkin(7) * (-t41 * t413 + t417 * t42), t413 * (-pkin(8) * t44 - t17 * t412 + t19 * t416) + t417 * (-pkin(2) * t115 + pkin(8) * t45 + t17 * t416 + t19 * t412) - pkin(1) * t115 + pkin(7) * (-t413 * t44 + t417 * t45), t413 * (-pkin(8) * t34 - t412 * t6 + t416 * t7) + t417 * (-pkin(2) * t68 + pkin(8) * t35 + t412 * t7 + t416 * t6) - pkin(1) * t68 + pkin(7) * (-t34 * t413 + t35 * t417), t413 * (-pkin(8) * t3 - t1 * t412 + t2 * t416) + t417 * (-pkin(2) * t15 + pkin(8) * t4 + t1 * t416 + t2 * t412) - pkin(1) * t15 + pkin(7) * (-t3 * t413 + t4 * t417); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t395, t401 - t402, t399, t395, t400, qJDD(2), -t370, t440, 0, 0, -t367, t366, t330, t367, t426, t466, t412 * t440 - t416 * t370 + (-t412 * t438 + t416 * t439) * pkin(8) + (t412 * t446 + t416 * t467 + t321) * pkin(2), t416 * t440 + t412 * t370 + (-t412 * t439 - t416 * t438) * pkin(8) + (-t412 * t467 + t416 * t446 + t331) * pkin(2), pkin(2) * t279, pkin(2) * t233, t324, t320, t278, -t324, t430, t466, pkin(2) * t199 + t434, pkin(2) * t230 + t447, pkin(2) * t146 + t220, pkin(2) * t72 + t126, t242, t192, t216, t240, t217, t257, pkin(2) * t105 + t448, pkin(2) * t112 + t449, pkin(2) * t103 + t436, pkin(2) * t30 + t465, t118, t67, t129, t117, t130, t144, pkin(2) * t41 + t443, pkin(2) * t44 + t442, pkin(2) * t34 + t445, pkin(2) * t3 + t429; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t367, t366, t330, t367, t426, t466, -t295, -t296, 0, 0, t324, t320, t278, -t324, t430, t466, t434, t447, t220, t126, t242, t192, t216, t240, t217, t257, t448, t449, t436, t465, t118, t67, t129, t117, t130, t144, t443, t442, t445, t429; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t273, t277, t292, -t262, 0, 0, 0, 0, 0, 0, t197, t204, t193, t60, 0, 0, 0, 0, 0, 0, t101, t115, t68, t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t247, t517, t268, t142, 0, 0, 0, 0, 0, 0, t173, t519, t208, t135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t238, t237, t177, -t238, -t174, t303, -t50, -t51, 0, 0;];
tauJ_reg  = t10;
