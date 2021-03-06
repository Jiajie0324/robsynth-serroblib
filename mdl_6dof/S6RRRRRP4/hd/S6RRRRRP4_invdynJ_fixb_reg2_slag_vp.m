% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRRRP4
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRP4_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP4_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP4_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP4_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP4_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP4_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:15:48
% EndTime: 2019-03-10 01:16:12
% DurationCPUTime: 12.59s
% Computational Cost: add. (24211->806), mult. (53366->951), div. (0->0), fcn. (39245->14), ass. (0->393)
t352 = cos(qJ(2));
t572 = cos(qJ(3));
t463 = t572 * t352;
t314 = qJD(1) * t463;
t348 = sin(qJ(3));
t349 = sin(qJ(2));
t483 = qJD(1) * t349;
t459 = t348 * t483;
t254 = -t314 + t459;
t249 = qJD(4) + t254;
t240 = qJD(5) + t249;
t272 = t348 * t352 + t349 * t572;
t256 = t272 * qJD(1);
t341 = qJD(2) + qJD(3);
t347 = sin(qJ(4));
t351 = cos(qJ(4));
t218 = t256 * t351 + t341 * t347;
t346 = sin(qJ(5));
t415 = t347 * t256 - t341 * t351;
t571 = cos(qJ(5));
t401 = t218 * t571 - t346 * t415;
t340 = qJDD(2) + qJDD(3);
t454 = t572 * qJD(3);
t391 = t572 * qJD(2) + t454;
t447 = qJDD(1) * t572;
t478 = qJD(1) * qJD(2);
t451 = t349 * t478;
t486 = qJD(3) * t459 + t348 * t451;
t361 = t349 * t447 + (qJD(1) * t391 + qJDD(1) * t348) * t352 - t486;
t130 = qJD(4) * t415 - t347 * t340 - t351 * t361;
t480 = qJD(4) * t351;
t481 = qJD(4) * t347;
t468 = t256 * t480 + t341 * t481 + t347 * t361;
t410 = t351 * t340 - t468;
t54 = qJD(5) * t401 - t346 * t130 - t571 * t410;
t601 = -t401 * t240 + t54;
t461 = t571 * t347;
t501 = t346 * t351;
t271 = t461 + t501;
t580 = qJD(4) + qJD(5);
t206 = t580 * t271;
t597 = t271 * t254 + t206;
t453 = t571 * qJD(4);
t437 = t351 * t453;
t452 = t571 * qJD(5);
t502 = t346 * t347;
t460 = t571 * t351;
t582 = t460 - t502;
t596 = t582 * t254 + t351 * t452 - t502 * t580 + t437;
t150 = t218 * t346 + t415 * t571;
t355 = -pkin(8) - pkin(7);
t296 = t355 * t352;
t277 = qJD(1) * t296;
t257 = t348 * t277;
t294 = t355 * t349;
t275 = qJD(1) * t294;
t557 = qJD(2) * pkin(2);
t261 = t275 + t557;
t198 = t261 * t572 + t257;
t179 = -t341 * pkin(3) - t198;
t145 = pkin(4) * t415 + t179;
t74 = t150 * pkin(5) - qJ(6) * t401 + t145;
t602 = t150 * t74;
t600 = t145 * t150;
t599 = t150 * t401;
t450 = t352 * t478;
t476 = t349 * qJDD(1);
t213 = qJDD(2) * pkin(2) - t355 * (-t450 - t476);
t475 = t352 * qJDD(1);
t216 = t355 * (-t451 + t475);
t482 = qJD(3) * t348;
t117 = t572 * t213 + t348 * t216 - t261 * t482 + t277 * t454;
t561 = t340 * pkin(3);
t112 = -t117 - t561;
t345 = qJ(2) + qJ(3);
t338 = cos(t345);
t565 = g(3) * t338;
t598 = t112 + t565;
t259 = t572 * t277;
t202 = t275 * t348 - t259;
t432 = pkin(2) * t482 - t202;
t560 = t351 * pkin(4);
t330 = pkin(3) + t560;
t285 = t338 * t330;
t336 = sin(t345);
t354 = -pkin(10) - pkin(9);
t508 = t336 * t354;
t443 = t285 - t508;
t353 = cos(qJ(1));
t509 = t336 * t353;
t350 = sin(qJ(1));
t510 = t336 * t350;
t595 = g(1) * t509 + g(2) * t510;
t496 = t348 * t349;
t207 = t341 * t496 - t352 * t391;
t399 = -t207 * t347 + t272 * t480;
t573 = t401 ^ 2;
t456 = t150 ^ 2 - t573;
t479 = qJD(5) * t346;
t53 = t571 * t130 + t218 * t479 - t346 * t410 + t415 * t452;
t593 = t150 * t240 - t53;
t92 = pkin(5) * t401 + qJ(6) * t150;
t193 = pkin(3) * t256 + pkin(9) * t254;
t178 = pkin(2) * t483 + t193;
t203 = t275 * t572 + t257;
t136 = t351 * t178 - t203 * t347;
t517 = t254 * t351;
t434 = t256 * pkin(4) + pkin(10) * t517;
t104 = t136 + t434;
t137 = t347 * t178 + t351 * t203;
t518 = t254 * t347;
t474 = pkin(10) * t518;
t119 = t474 + t137;
t570 = pkin(2) * t348;
t328 = pkin(9) + t570;
t558 = -pkin(10) - t328;
t262 = t558 * t347;
t339 = t351 * pkin(10);
t263 = t328 * t351 + t339;
t192 = t346 * t262 + t263 * t571;
t439 = pkin(2) * t454;
t420 = t351 * t439;
t448 = qJD(4) * t558;
t223 = t347 * t448 + t420;
t421 = t347 * t439;
t378 = t351 * t448 - t421;
t550 = qJD(5) * t192 + (t104 - t378) * t571 + (-t119 + t223) * t346;
t138 = t351 * t193 - t198 * t347;
t105 = t138 + t434;
t139 = t347 * t193 + t351 * t198;
t123 = t474 + t139;
t293 = t354 * t347;
t295 = pkin(9) * t351 + t339;
t221 = t346 * t293 + t295 * t571;
t464 = qJD(4) * t354;
t279 = t347 * t464;
t544 = qJD(5) * t221 + t105 * t571 - t354 * t437 + (-t123 + t279) * t346;
t590 = t256 * t341;
t270 = -t463 + t496;
t559 = t352 * pkin(2);
t332 = pkin(1) + t559;
t584 = -pkin(9) * t272 - t332;
t197 = pkin(3) * t270 + t584;
t222 = t348 * t294 - t296 * t572;
t146 = t351 * t197 - t222 * t347;
t514 = t272 * t351;
t120 = pkin(4) * t270 - pkin(10) * t514 + t146;
t214 = t351 * t222;
t147 = t347 * t197 + t214;
t515 = t272 * t347;
t135 = -pkin(10) * t515 + t147;
t588 = t346 * t120 + t571 * t135;
t208 = t341 * t272;
t424 = t348 * t476 - t352 * t447;
t165 = qJD(1) * t208 + t424;
t164 = qJDD(4) + t165;
t162 = qJDD(5) + t164;
t159 = t162 * qJ(6);
t231 = t240 * qJD(6);
t587 = t159 + t231;
t586 = t572 * t294 + t348 * t296;
t344 = qJ(4) + qJ(5);
t337 = cos(t344);
t507 = t337 * t338;
t335 = sin(t344);
t512 = t335 * t338;
t585 = pkin(5) * t507 + qJ(6) * t512;
t430 = t338 * pkin(3) + t336 * pkin(9);
t235 = pkin(4) * t518;
t583 = t235 + t432;
t292 = t332 * qJD(1);
t176 = pkin(3) * t254 - pkin(9) * t256 - t292;
t199 = t348 * t261 - t259;
t180 = t341 * pkin(9) + t199;
t131 = t351 * t176 - t180 * t347;
t132 = t176 * t347 + t180 * t351;
t581 = -t131 * t347 + t132 * t351;
t427 = g(1) * t353 + g(2) * t350;
t160 = t162 * pkin(5);
t579 = t160 - qJDD(6);
t124 = t223 * t571 + t262 * t452 - t263 * t479 + t346 * t378;
t191 = -t262 * t571 + t263 * t346;
t578 = -t124 * t150 - t191 * t53 - t192 * t54;
t400 = t293 * t571 - t346 * t295;
t155 = qJD(5) * t400 + t279 * t571 + t464 * t501;
t577 = -t155 * t150 - t221 * t54 + t400 * t53;
t333 = pkin(4) * t481;
t576 = pkin(5) * t597 - qJ(6) * t596 - qJD(6) * t271 + t333;
t506 = t338 * t350;
t227 = t335 * t506 + t337 * t353;
t492 = t353 * t335;
t495 = t350 * t337;
t229 = t338 * t492 - t495;
t513 = t335 * t336;
t101 = -pkin(10) * t415 + t132;
t438 = -t348 * t213 + t572 * t216 - t261 * t454 - t277 * t482;
t111 = pkin(9) * t340 - t438;
t318 = pkin(2) * t451;
t96 = t318 - (t314 * t341 - t486) * pkin(9) + t165 * pkin(3) + t584 * qJDD(1);
t91 = t351 * t96;
t35 = -t132 * qJD(4) - t111 * t347 + t91;
t22 = pkin(4) * t164 + pkin(10) * t130 + t35;
t34 = t351 * t111 + t176 * t480 - t180 * t481 + t347 * t96;
t29 = pkin(10) * t410 + t34;
t100 = -pkin(10) * t218 + t131;
t89 = pkin(4) * t249 + t100;
t8 = -t101 * t452 + t571 * t22 - t346 * t29 - t89 * t479;
t389 = g(1) * t229 + g(2) * t227 + g(3) * t513 + t8;
t366 = t401 * t74 - t389 - t579;
t575 = -t145 * t401 + t389;
t52 = t150 * t256 + t162 * t582 - t240 * t597;
t472 = t349 * t557;
t144 = pkin(3) * t208 + pkin(9) * t207 + t472;
t465 = qJD(2) * t355;
t276 = t349 * t465;
t278 = t352 * t465;
t157 = qJD(3) * t586 + t572 * t276 + t348 * t278;
t444 = t351 * t144 - t157 * t347;
t526 = t207 * t351;
t41 = pkin(10) * t526 + pkin(4) * t208 + (-t214 + (pkin(10) * t272 - t197) * t347) * qJD(4) + t444;
t69 = t347 * t144 + t351 * t157 + t197 * t480 - t222 * t481;
t49 = -pkin(10) * t399 + t69;
t17 = -qJD(5) * t588 - t346 * t49 + t41 * t571;
t9 = -t150 * t596 - t271 * t54 - t401 * t597 - t53 * t582;
t569 = pkin(2) * t349;
t325 = g(3) * t336;
t564 = g(3) * t352;
t562 = t256 * pkin(5);
t462 = t571 * t101;
t47 = t346 * t89 + t462;
t554 = t240 * t47;
t33 = t34 * t351;
t62 = t346 * t104 + t571 * t119;
t243 = t256 * qJ(6);
t57 = t243 + t62;
t553 = t124 - t57;
t552 = t124 - t62;
t551 = t562 + t550;
t549 = t576 + t583;
t163 = -t235 + t199;
t548 = -t163 + t576;
t66 = t346 * t105 + t571 * t123;
t59 = t243 + t66;
t547 = t155 - t59;
t546 = t155 - t66;
t545 = t562 + t544;
t503 = t346 * t101;
t56 = t100 * t571 - t503;
t543 = pkin(4) * t452 + qJD(6) - t56;
t542 = pkin(7) * qJDD(1);
t541 = t130 * t347;
t533 = t162 * t191;
t532 = t162 * t192;
t531 = t162 * t400;
t530 = t162 * t221;
t528 = t179 * t254;
t525 = t415 * t249;
t524 = t415 * t347;
t523 = t218 * t415;
t522 = t218 * t249;
t521 = t218 * t351;
t520 = t240 * t256;
t519 = t249 * t256;
t516 = t256 * t254;
t511 = t336 * t337;
t505 = t338 * t353;
t504 = t338 * t354;
t500 = t347 * t164;
t499 = t347 * t350;
t498 = t347 * t353;
t494 = t350 * t351;
t493 = t351 * t353;
t491 = t353 * t355;
t46 = t571 * t89 - t503;
t490 = qJD(6) - t46;
t487 = t333 + t583;
t342 = t349 ^ 2;
t343 = t352 ^ 2;
t485 = t342 - t343;
t484 = t342 + t343;
t473 = t572 * pkin(2);
t471 = qJD(4) * pkin(9) * t249;
t470 = t272 * t502;
t357 = qJD(1) ^ 2;
t469 = t349 * t357 * t352;
t467 = g(3) * t512 - t335 * t595;
t466 = g(1) * t505 + g(2) * t506 + t325;
t458 = t272 * t481;
t7 = -t101 * t479 + t346 * t22 + t571 * t29 + t89 * t452;
t230 = t335 * t350 + t337 * t505;
t446 = -t229 * pkin(5) + qJ(6) * t230;
t297 = t353 * t332;
t442 = -t350 * t355 + t297;
t441 = t249 * t347;
t440 = t249 * t351;
t331 = -t473 - pkin(3);
t436 = t349 * t450;
t55 = t100 * t346 + t462;
t435 = pkin(4) * t479 - t55;
t433 = -g(1) * t510 + g(2) * t509;
t431 = -t163 + t333;
t429 = -g(1) * t227 + g(2) * t229;
t228 = t338 * t495 - t492;
t428 = g(1) * t228 - g(2) * t230;
t426 = g(1) * t350 - g(2) * t353;
t177 = pkin(4) * t515 - t586;
t425 = -pkin(9) * t164 + t528;
t185 = t271 * t272;
t83 = -t207 * t461 - t346 * t458 - qJD(5) * t470 + (-t207 * t346 + (t453 + t452) * t272) * t351;
t423 = t150 * t83 + t185 * t54;
t419 = t131 * t351 + t132 * t347;
t416 = -t164 * t328 + t528;
t414 = t330 * t336 + t504;
t413 = -g(3) * t507 + t337 * t595;
t412 = t132 * t256 + t179 * t480 + t347 * t598;
t411 = -t131 * t256 + t179 * t481 + t351 * t595;
t409 = -t131 * t517 - t132 * t518 + t33 - t466;
t408 = t443 + t559;
t407 = pkin(5) * t337 + qJ(6) * t335 + t330;
t405 = t427 * t336;
t404 = t427 * t338;
t403 = -0.2e1 * pkin(1) * t478 - pkin(7) * qJDD(2);
t75 = t120 * t571 - t346 * t135;
t398 = -t458 - t526;
t16 = t120 * t452 - t135 * t479 + t346 * t41 + t571 * t49;
t397 = t150 * t597 - t54 * t582;
t393 = t410 * t351;
t194 = -pkin(5) * t582 - t271 * qJ(6) - t330;
t390 = g(1) * t230 + g(2) * t228 + g(3) * t511 - t7;
t388 = pkin(4) * t499 + t330 * t505 - t353 * t508 + t442;
t356 = qJD(2) ^ 2;
t387 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t356 + t426;
t386 = pkin(1) * t357 + t427 - t542;
t73 = -pkin(4) * t410 + t112;
t15 = t54 * pkin(5) + t53 * qJ(6) - qJD(6) * t401 + t73;
t44 = t240 * qJ(6) + t47;
t385 = -t15 * t271 - t256 * t44 - t596 * t74 - t467;
t384 = -t292 * t254 + t438 + t466;
t186 = t272 * t460 - t470;
t82 = t206 * t272 + t207 * t582;
t383 = t150 * t82 + t185 * t53 - t186 * t54 - t401 * t83;
t382 = -qJD(4) * t419 - t35 * t347;
t381 = t145 * t596 + t256 * t47 + t73 * t271 + t467;
t380 = t150 * t208 + t162 * t185 + t240 * t83 + t270 * t54;
t379 = pkin(4) * t498 - t491 + (-t332 - t443) * t350;
t377 = t292 * t256 + t117 - t565 + t595;
t2 = t7 + t587;
t4 = -t8 - t579;
t43 = -t240 * pkin(5) + t490;
t376 = t2 * t582 + t4 * t271 + t43 * t596 - t44 * t597 - t466;
t375 = -t8 * t271 - t46 * t596 - t47 * t597 + t582 * t7 - t466;
t373 = t240 * t46 + t390;
t372 = -g(2) * (-t227 * pkin(5) + qJ(6) * t228) - g(3) * (-pkin(5) * t513 + qJ(6) * t511);
t371 = -t15 * t582 + t256 * t43 + t597 * t74 + t413;
t158 = qJD(3) * t222 + t348 * t276 - t572 * t278;
t369 = t145 * t597 - t256 * t46 - t582 * t73 + t413;
t368 = t382 + t33;
t106 = pkin(4) * t399 + t158;
t364 = (t404 + t325) * t347 + g(2) * t493;
t363 = -g(1) * (-pkin(3) * t509 + pkin(9) * t505) - g(2) * (-pkin(3) * t510 + pkin(9) * t506) - g(3) * t430;
t360 = -t424 - t590;
t329 = -pkin(4) * t571 - pkin(5);
t322 = pkin(4) * t346 + qJ(6);
t320 = pkin(4) * t494;
t291 = t331 - t560;
t251 = -qJDD(1) * t332 + t318;
t247 = t338 * t493 + t499;
t246 = -t338 * t498 + t494;
t245 = -t338 * t494 + t498;
t244 = t338 * t499 + t493;
t182 = -t473 + t194;
t167 = -t254 ^ 2 + t256 ^ 2;
t143 = t360 + t590;
t142 = t254 * t341 + t361;
t102 = t162 * t270 + t208 * t240;
t95 = pkin(5) * t185 - qJ(6) * t186 + t177;
t84 = pkin(4) * t218 + t92;
t80 = -t218 * t256 + t249 * t440 + t500;
t79 = t164 * t351 - t249 * t441 + t256 * t415;
t78 = t415 * t441 + t393;
t77 = t218 * t440 - t541;
t72 = -t270 * pkin(5) - t75;
t71 = qJ(6) * t270 + t588;
t70 = -qJD(4) * t147 + t444;
t50 = t162 * t271 + t240 * t596 - t256 * t401;
t30 = (-t130 - t525) * t351 + (t410 - t522) * t347;
t24 = -t271 * t53 + t401 * t596;
t23 = t83 * pkin(5) + t82 * qJ(6) - t186 * qJD(6) + t106;
t19 = -t186 * t53 - t401 * t82;
t18 = t162 * t186 + t208 * t401 - t240 * t82 - t270 * t53;
t12 = -t208 * pkin(5) - t17;
t11 = qJ(6) * t208 + qJD(6) * t270 + t16;
t1 = [0, 0, 0, 0, 0, qJDD(1), t426, t427, 0, 0, qJDD(1) * t342 + 0.2e1 * t436, 0.2e1 * t349 * t475 - 0.2e1 * t478 * t485, qJDD(2) * t349 + t352 * t356, qJDD(1) * t343 - 0.2e1 * t436, qJDD(2) * t352 - t349 * t356, 0, t349 * t403 + t352 * t387, -t349 * t387 + t352 * t403, 0.2e1 * t484 * t542 - t427, -g(1) * (-pkin(1) * t350 + pkin(7) * t353) - g(2) * (pkin(1) * t353 + pkin(7) * t350) + (pkin(7) ^ 2 * t484 + pkin(1) ^ 2) * qJDD(1), -t256 * t207 + t272 * t361, -t272 * t165 + t207 * t254 - t256 * t208 - t270 * t361, -t207 * t341 + t272 * t340, t165 * t270 + t208 * t254, -t208 * t341 - t270 * t340, 0, -t158 * t341 - t165 * t332 - t208 * t292 + t251 * t270 + t254 * t472 + t338 * t426 + t340 * t586, -t157 * t341 + t292 * t207 - t222 * t340 + t251 * t272 + t256 * t472 - t332 * t361 + t433, -t117 * t272 - t157 * t254 + t158 * t256 - t222 * t165 + t198 * t207 - t199 * t208 + t270 * t438 - t361 * t586 - t427, -t438 * t222 + t199 * t157 + t117 * t586 - t198 * t158 - t251 * t332 - t292 * t472 - g(1) * (-t332 * t350 - t491) - g(2) * t442, -t130 * t514 + t218 * t398 (t218 * t347 + t351 * t415) * t207 + (t393 + t541 + (-t521 + t524) * qJD(4)) * t272, -t130 * t270 + t164 * t514 + t208 * t218 + t249 * t398, t399 * t415 - t410 * t515, -t208 * t415 - t249 * t399 + t270 * t410 - t272 * t500, t164 * t270 + t208 * t249, -g(1) * t245 - g(2) * t247 + t112 * t515 + t131 * t208 + t146 * t164 + t158 * t415 + t179 * t399 + t70 * t249 + t35 * t270 + t410 * t586, -g(1) * t244 - g(2) * t246 + t112 * t514 + t130 * t586 - t132 * t208 - t147 * t164 + t158 * t218 + t179 * t398 - t249 * t69 - t270 * t34, -t69 * t415 + t147 * t410 - t70 * t218 + t146 * t130 + t419 * t207 + (-qJD(4) * t581 - t34 * t347 - t35 * t351) * t272 - t433, -g(2) * t297 - t112 * t586 + t131 * t70 + t132 * t69 + t35 * t146 + t34 * t147 + t179 * t158 + (g(1) * t355 - g(2) * t430) * t353 + (-g(1) * (-t332 - t430) + g(2) * t355) * t350, t19, t383, t18, t423, -t380, t102, t106 * t150 + t145 * t83 + t162 * t75 + t17 * t240 + t177 * t54 + t185 * t73 + t208 * t46 + t270 * t8 + t428, t106 * t401 - t145 * t82 - t16 * t240 - t162 * t588 - t177 * t53 + t186 * t73 - t208 * t47 - t270 * t7 + t429, -t150 * t16 - t17 * t401 - t185 * t7 - t186 * t8 + t46 * t82 - t47 * t83 + t53 * t75 - t54 * t588 - t433, -g(1) * t379 - g(2) * t388 + t145 * t106 + t47 * t16 + t46 * t17 + t73 * t177 + t588 * t7 + t8 * t75, t19, t18, -t383, t102, t380, t423, -t12 * t240 + t15 * t185 + t150 * t23 - t162 * t72 - t208 * t43 - t270 * t4 + t54 * t95 + t74 * t83 + t428, -t11 * t150 + t12 * t401 - t185 * t2 + t186 * t4 - t43 * t82 - t44 * t83 - t53 * t72 - t54 * t71 - t433, t11 * t240 - t15 * t186 + t162 * t71 + t2 * t270 + t208 * t44 - t23 * t401 + t53 * t95 + t74 * t82 - t429, t2 * t71 + t44 * t11 + t15 * t95 + t74 * t23 + t4 * t72 + t43 * t12 - g(1) * (-pkin(5) * t228 - qJ(6) * t227 + t379) - g(2) * (pkin(5) * t230 + qJ(6) * t229 + t388); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t469, t485 * t357, t476, t469, t475, qJDD(2), t349 * t386 - t564, g(3) * t349 + t352 * t386, 0, 0, t516, t167, t142, -t516, t143, t340, t202 * t341 + (-t254 * t483 + t340 * t572 - t341 * t482) * pkin(2) + t377, t203 * t341 + (-t256 * t483 - t340 * t348 - t341 * t454) * pkin(2) + t384, -t165 * t570 - t361 * t473 + (t199 + t432) * t256 + (-t198 + t203 - t439) * t254, t198 * t202 - t199 * t203 + (t572 * t117 - t564 - t438 * t348 + (-t198 * t348 + t199 * t572) * qJD(3) + (qJD(1) * t292 + t427) * t349) * pkin(2), t77, t30, t80, t78, t79, -t519, t331 * t468 + (-t331 * t340 - t598) * t351 + t416 * t347 + t432 * t415 + (-t328 * t480 - t136 - t421) * t249 + t411, -t331 * t130 + t416 * t351 - t347 * t405 + t432 * t218 + (t328 * t481 + t137 - t420) * t249 + t412, t136 * t218 + t137 * t415 + (-t415 * t439 - t131 * qJD(4) + (qJD(4) * t218 + t410) * t328) * t351 + (t218 * t439 - t328 * t130 - t35 + (t328 * t415 - t132) * qJD(4)) * t347 + t409, t112 * t331 - t132 * t137 - t131 * t136 - t179 * t202 + (-t564 + t427 * t349 + (t179 * t348 + t572 * t581) * qJD(3)) * pkin(2) + t368 * t328 + t363, t24, t9, t50, t397, t52, -t520, t150 * t487 - t240 * t550 + t291 * t54 + t369 - t533, -t240 * t552 - t291 * t53 + t401 * t487 + t381 - t532, t150 * t62 + t401 * t550 + t375 + t578, -g(3) * t408 + t145 * t487 - t8 * t191 + t7 * t192 + t73 * t291 - t46 * t550 + t47 * t552 + t427 * (t414 + t569) t24, t50, -t9, -t520, -t52, t397, t150 * t549 + t182 * t54 - t240 * t551 + t371 - t533, t150 * t57 + t401 * t551 + t376 + t578, t182 * t53 + t240 * t553 - t401 * t549 + t385 + t532, t2 * t192 + t15 * t182 + t4 * t191 - g(3) * (t408 + t585) + t549 * t74 + t553 * t44 + t551 * t43 + t427 * (t336 * t407 + t504 + t569); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t516, t167, t142, -t516, t143, t340, t199 * t341 + t377, t198 * t341 + t384, 0, 0, t77, t30, t80, t78, t79, -t519, -pkin(3) * t468 - t138 * t249 - t199 * t415 + t425 * t347 + (-t598 - t471 + t561) * t351 + t411, pkin(3) * t130 + t139 * t249 - t199 * t218 + t425 * t351 + (-t405 + t471) * t347 + t412, t138 * t218 + t139 * t415 + (t393 - t541 + (t521 + t524) * qJD(4)) * pkin(9) + t382 + t409, -t112 * pkin(3) + pkin(9) * t368 - t131 * t138 - t132 * t139 - t179 * t199 + t363, t24, t9, t50, t397, t52, -t520, t150 * t431 - t240 * t544 - t330 * t54 + t369 + t531, -t240 * t546 + t330 * t53 + t401 * t431 + t381 - t530, t150 * t66 + t401 * t544 + t375 + t577, -g(3) * t443 + t145 * t431 + t7 * t221 - t73 * t330 + t400 * t8 + t414 * t427 - t46 * t544 + t47 * t546, t24, t50, -t9, -t520, -t52, t397, t150 * t548 + t194 * t54 - t240 * t545 + t371 + t531, t150 * t59 + t401 * t545 + t376 + t577, t194 * t53 + t240 * t547 - t401 * t548 + t385 + t530, t2 * t221 + t15 * t194 - t4 * t400 - g(3) * (t285 + t585) + t548 * t74 + t547 * t44 + t545 * t43 + t354 * t404 + (g(3) * t354 + t407 * t427) * t336; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t523, t218 ^ 2 - t415 ^ 2, -t130 + t525, -t523, t410 + t522, t164, -t180 * t480 - g(1) * t246 + g(2) * t244 + t132 * t249 - t179 * t218 + t91 + (-qJD(4) * t176 - t111 + t325) * t347, g(1) * t247 - g(2) * t245 + t131 * t249 + t179 * t415 + t325 * t351 - t34, 0, 0, t599, -t456, t593, -t599, -t601, t162, t55 * t240 + (-t150 * t218 + t162 * t571 - t240 * t479) * pkin(4) + t575, t600 + t56 * t240 + (-t162 * t346 - t218 * t401 - t240 * t452) * pkin(4) + t390, t47 * t401 + t56 * t150 - t150 * t46 - t55 * t401 + (t571 * t53 - t346 * t54 + (-t150 * t571 + t346 * t401) * qJD(5)) * pkin(4), -g(1) * t320 + t46 * t55 - t47 * t56 + (t8 * t571 - t145 * t218 + t7 * t346 + (-t46 * t346 + t47 * t571) * qJD(5) + t364) * pkin(4), t599, t593, t456, t162, t601, -t599, -t150 * t84 - t162 * t329 - t240 * t435 - t366, -t322 * t54 - t329 * t53 + (t435 + t44) * t401 + (-t543 + t43) * t150, t162 * t322 + t240 * t543 + t401 * t84 - t390 + t587 - t602, t2 * t322 + t4 * t329 - t74 * t84 - t43 * t55 - g(1) * (t320 + t446) + t543 * t44 + (t43 * t479 + t364) * pkin(4) + t372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t599, -t456, t593, -t599, -t601, t162, t554 + t575, t373 + t600, 0, 0, t599, t593, t456, t162, t601, -t599, -t150 * t92 + t160 - t366 + t554, pkin(5) * t53 - qJ(6) * t54 + (t44 - t47) * t401 + (t43 - t490) * t150, t401 * t92 + 0.2e1 * t159 + 0.2e1 * t231 - t373 - t602, -t4 * pkin(5) - g(1) * t446 + t2 * qJ(6) - t43 * t47 + t44 * t490 - t74 * t92 + t372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(4) - qJDD(5) + t360 + t599, t593, -t240 ^ 2 - t573, -t240 * t44 + t366;];
tau_reg  = t1;
