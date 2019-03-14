% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRPRRP10
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:44
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRRP10_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP10_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP10_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP10_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP10_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP10_invdynJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:42:39
% EndTime: 2019-03-09 12:43:10
% DurationCPUTime: 17.15s
% Computational Cost: add. (25628->857), mult. (63671->1102), div. (0->0), fcn. (52160->14), ass. (0->381)
t346 = sin(pkin(6));
t355 = cos(qJ(2));
t471 = qJD(1) * qJD(2);
t448 = t355 * t471;
t352 = sin(qJ(2));
t469 = qJDD(1) * t352;
t389 = t448 + t469;
t571 = t389 * t346;
t483 = qJD(1) * t355;
t324 = t346 * t483;
t345 = sin(pkin(11));
t347 = cos(pkin(11));
t351 = sin(qJ(4));
t545 = cos(qJ(4));
t394 = -t351 * t345 + t347 * t545;
t221 = t394 * t324;
t451 = qJD(4) * t545;
t478 = qJD(4) * t351;
t276 = t345 * t478 - t347 * t451;
t491 = t276 + t221;
t287 = t345 * t545 + t351 * t347;
t499 = t346 * t355;
t372 = t287 * t499;
t490 = -qJD(1) * t372 + t287 * qJD(4);
t449 = t352 * t471;
t427 = t346 * t449;
t468 = qJDD(1) * t355;
t323 = t346 * t468;
t467 = qJDD(4) - t323;
t382 = t427 + t467;
t348 = cos(pkin(6));
t544 = pkin(1) * t352;
t488 = pkin(8) * t499 + t348 * t544;
t270 = t488 * qJD(1);
t485 = qJD(1) * t348;
t327 = qJD(2) + t485;
t222 = qJ(3) * t327 + t270;
t401 = -pkin(2) * t355 - qJ(3) * t352 - pkin(1);
t256 = t401 * t346;
t228 = qJD(1) * t256;
t144 = -t222 * t345 + t347 * t228;
t484 = qJD(1) * t352;
t455 = t346 * t484;
t242 = t327 * t345 + t347 * t455;
t107 = -pkin(3) * t324 - pkin(9) * t242 + t144;
t145 = t347 * t222 + t345 * t228;
t241 = t327 * t347 - t345 * t455;
t115 = pkin(9) * t241 + t145;
t464 = pkin(1) * qJD(2) * t348;
t434 = qJD(1) * t464;
t470 = qJDD(1) * t348;
t463 = pkin(1) * t470;
t459 = -pkin(8) * t323 - t352 * t463 - t355 * t434;
t190 = -pkin(8) * t427 - t459;
t326 = qJDD(2) + t470;
t151 = qJ(3) * t326 + qJD(3) * t327 + t190;
t414 = pkin(2) * t352 - qJ(3) * t355;
t367 = qJD(2) * t414 - qJD(3) * t352;
t161 = (qJD(1) * t367 + qJDD(1) * t401) * t346;
t101 = -t151 * t345 + t347 * t161;
t505 = t326 * t345;
t196 = t347 * t571 + t505;
t388 = t449 - t468;
t69 = pkin(3) * t346 * t388 - pkin(9) * t196 + t101;
t102 = t347 * t151 + t345 * t161;
t489 = t571 * t345;
t416 = t326 * t347 - t489;
t79 = pkin(9) * t416 + t102;
t392 = -t107 * t451 + t115 * t478 - t351 * t69 - t545 * t79;
t15 = pkin(10) * t382 - t392;
t191 = -pkin(8) * t571 - t352 * t434 + t355 * t463;
t538 = t326 * pkin(2);
t555 = qJDD(3) - t538;
t172 = -t191 + t555;
t114 = -pkin(3) * t416 + t172;
t358 = -t196 * t545 - t241 * t451 + t242 * t478 - t351 * t416;
t441 = t351 * t196 - t545 * t416;
t395 = t351 * t241 + t242 * t545;
t556 = qJD(4) * t395;
t95 = t441 + t556;
t31 = t95 * pkin(4) + pkin(10) * t358 + t114;
t350 = sin(qJ(5));
t354 = cos(qJ(5));
t476 = qJD(5) * t354;
t477 = qJD(5) * t350;
t473 = t324 - qJD(4);
t64 = t351 * t107 + t115 * t545;
t61 = -pkin(10) * t473 + t64;
t543 = pkin(1) * t355;
t466 = t348 * t543;
t269 = -pkin(8) * t455 + qJD(1) * t466;
t215 = -pkin(2) * t327 + qJD(3) - t269;
t165 = -pkin(3) * t241 + t215;
t167 = -t545 * t241 + t242 * t351;
t77 = pkin(4) * t167 - pkin(10) * t395 + t165;
t4 = -t350 * t15 + t354 * t31 - t61 * t476 - t77 * t477;
t94 = qJDD(5) + t95;
t548 = pkin(5) * t94;
t2 = qJDD(6) - t4 - t548;
t26 = t350 * t77 + t354 * t61;
t569 = qJD(5) + t167;
t24 = qJ(6) * t569 + t26;
t529 = t569 * t24;
t580 = -t2 + t529;
t528 = t569 * t26;
t579 = t4 + t528;
t268 = t414 * t346 * qJD(1);
t177 = t347 * t268 - t269 * t345;
t383 = (-pkin(9) * t347 * t355 + pkin(3) * t352) * t346;
t141 = qJD(1) * t383 + t177;
t178 = t345 * t268 + t347 * t269;
t430 = t345 * t324;
t160 = -pkin(9) * t430 + t178;
t537 = pkin(9) + qJ(3);
t306 = t537 * t345;
t307 = t537 * t347;
t558 = -t545 * t306 - t351 * t307;
t523 = t394 * qJD(3) + qJD(4) * t558 - t351 * t141 - t545 * t160;
t577 = t569 ^ 2;
t578 = t350 * t577;
t25 = -t350 * t61 + t354 * t77;
t576 = t25 * t569;
t575 = -pkin(10) * t455 + t523;
t213 = pkin(3) * t430 + t270;
t574 = pkin(4) * t490 + pkin(10) * t491 - t213;
t573 = t167 ^ 2;
t219 = -t351 * t306 + t307 * t545;
t521 = qJD(3) * t287 + qJD(4) * t219 + t141 * t545 - t351 * t160;
t572 = t167 * t473;
t342 = pkin(11) + qJ(4);
t338 = sin(t342);
t339 = cos(t342);
t570 = -pkin(4) * t339 - pkin(10) * t338;
t511 = t569 * t354;
t91 = t350 * t94;
t568 = t167 * t511 + t476 * t569 + t91;
t546 = cos(qJ(1));
t457 = t546 * t352;
t353 = sin(qJ(1));
t496 = t353 * t355;
t279 = t348 * t457 + t496;
t458 = t346 * t546;
t204 = t279 * t339 - t338 * t458;
t456 = t546 * t355;
t497 = t352 * t353;
t278 = -t348 * t456 + t497;
t154 = t204 * t350 - t278 * t354;
t155 = t204 * t354 + t278 * t350;
t438 = t354 * t473;
t134 = t350 * t395 + t438;
t136 = -t350 * t473 + t354 * t395;
t184 = t221 * t354 + t350 * t455;
t442 = t276 * t354 + t184;
t183 = t221 * t350 - t354 * t455;
t443 = t276 * t350 + t183;
t56 = qJD(5) * t136 - t350 * t358 - t354 * t382;
t526 = t354 * t56;
t55 = qJD(5) * t438 - t350 * t382 + t354 * t358 + t395 * t477;
t527 = t350 * t55;
t567 = t442 * t134 + t443 * t136 + t287 * ((t134 * t350 - t136 * t354) * qJD(5) - t526 + t527);
t566 = t395 ^ 2;
t341 = t346 ^ 2;
t565 = 0.2e1 * t341;
t564 = pkin(3) * t345;
t337 = pkin(3) * t347 + pkin(2);
t195 = -pkin(4) * t394 - pkin(10) * t287 - t337;
t534 = t195 * t476 - t219 * t477 + t350 * t574 + t354 * t575;
t522 = pkin(4) * t455 + t521;
t563 = -t136 * t569 + t56;
t561 = t134 * t395;
t92 = t354 * t94;
t562 = -t561 + t92 - t578;
t514 = t136 * t395;
t560 = t324 * t395;
t280 = t348 * t496 + t457;
t421 = g(1) * t280 + g(2) * t278;
t557 = g(3) * t499 - t421;
t371 = t557 * t338;
t559 = t350 * t195 + t354 * t219;
t413 = pkin(5) * t354 + qJ(6) * t350;
t272 = t488 * qJD(2);
t63 = t107 * t545 - t351 * t115;
t60 = pkin(4) * t473 - t63;
t33 = t134 * pkin(5) - t136 * qJ(6) + t60;
t547 = pkin(10) * t94;
t554 = t33 * t569 - t547;
t225 = t367 * t346;
t480 = qJD(2) * t352;
t454 = t346 * t480;
t271 = -pkin(8) * t454 + t355 * t464;
t234 = qJD(3) * t348 + t271;
t152 = t347 * t225 - t234 * t345;
t119 = qJD(2) * t383 + t152;
t255 = qJ(3) * t348 + t488;
t173 = -t255 * t345 + t347 * t256;
t501 = t346 * t352;
t275 = t345 * t348 + t347 * t501;
t123 = -pkin(3) * t499 - pkin(9) * t275 + t173;
t153 = t345 * t225 + t347 * t234;
t479 = qJD(2) * t355;
t453 = t346 * t479;
t429 = t345 * t453;
t138 = -pkin(9) * t429 + t153;
t174 = t347 * t255 + t345 * t256;
t274 = t345 * t501 - t348 * t347;
t140 = -pkin(9) * t274 + t174;
t39 = t351 * t119 + t123 * t451 + t545 * t138 - t140 * t478;
t37 = pkin(10) * t454 + t39;
t185 = t274 * t545 + t351 * t275;
t186 = -t351 * t274 + t275 * t545;
t328 = pkin(8) * t501;
t258 = t328 + (-pkin(2) - t543) * t348;
t193 = pkin(3) * t274 + t258;
t100 = pkin(4) * t185 - pkin(10) * t186 + t193;
t465 = pkin(10) * t499;
t83 = t351 * t123 + t545 * t140;
t81 = -t465 + t83;
t532 = t350 * t100 + t354 * t81;
t130 = qJD(4) * t185 - t394 * t453;
t131 = qJD(2) * t372 + qJD(4) * t186;
t214 = pkin(3) * t429 + t272;
t70 = pkin(4) * t131 + pkin(10) * t130 + t214;
t11 = -qJD(5) * t532 - t350 * t37 + t354 * t70;
t533 = -qJD(5) * t559 - t350 * t575 + t354 * t574;
t381 = t287 * t476 - t443;
t507 = t287 * t350;
t551 = t134 * t490 + t381 * t569 - t394 * t56 + t507 * t94;
t550 = t136 ^ 2;
t540 = pkin(10) * t136;
t536 = qJ(6) * t490 - qJD(6) * t394 + t534;
t535 = -pkin(5) * t490 - t533;
t412 = pkin(5) * t350 - qJ(6) * t354;
t531 = -t183 * pkin(5) + t184 * qJ(6) - t412 * t276 + (qJD(5) * t413 - qJD(6) * t354) * t287 + t522;
t530 = qJ(6) * t94;
t525 = -t134 * t476 - t350 * t56;
t520 = -qJD(6) * t350 + t412 * t569 - t64;
t104 = pkin(4) * t395 + pkin(10) * t167;
t44 = t350 * t104 + t354 * t63;
t518 = t134 * t569;
t517 = t134 * t354;
t516 = t136 * t134;
t513 = t136 * t350;
t512 = t569 * t395;
t510 = t395 * t167;
t506 = t287 * t354;
t504 = t339 * t350;
t503 = t339 * t354;
t502 = t341 * qJD(1) ^ 2;
t500 = t346 * t353;
t495 = t354 * t355;
t494 = qJD(6) - t25;
t493 = -t278 * t337 + t279 * t537;
t281 = -t348 * t497 + t456;
t492 = -t280 * t337 + t281 * t537;
t487 = t546 * pkin(1) + pkin(8) * t500;
t343 = t352 ^ 2;
t344 = t355 ^ 2;
t486 = t343 - t344;
t482 = qJD(2) * t345;
t481 = qJD(2) * t347;
t475 = qJD(2) - t327;
t472 = qJ(3) * qJDD(1);
t330 = pkin(4) * t499;
t462 = t344 * t502;
t461 = t355 * t502;
t460 = t346 * t495;
t315 = t350 * t499;
t452 = t134 ^ 2 - t550;
t450 = pkin(1) * t565;
t446 = -pkin(1) * t353 + pkin(8) * t458;
t121 = t136 * t477;
t445 = -t354 * t55 - t121;
t444 = -t92 - t561;
t440 = -t279 * t338 - t339 * t458;
t437 = t569 * t350;
t19 = -t107 * t478 - t115 * t451 - t351 * t79 + t545 * t69;
t436 = t327 + t485;
t435 = t326 + t470;
t433 = t278 * t570 + t493;
t432 = t280 * t570 + t492;
t431 = t242 * t324;
t428 = t341 * t344 * t471;
t425 = t352 * t448;
t208 = t281 * t339 + t338 * t500;
t158 = t208 * t350 - t280 * t354;
t424 = g(1) * t154 - g(2) * t158;
t159 = t208 * t354 + t280 * t350;
t423 = g(1) * t155 - g(2) * t159;
t207 = t281 * t338 - t339 * t500;
t422 = g(1) * t440 + g(2) * t207;
t420 = g(1) * t278 - g(2) * t280;
t419 = g(1) * t281 + g(2) * t279;
t418 = g(1) * t279 - g(2) * t281;
t417 = t337 * t499 + t501 * t537;
t82 = t123 * t545 - t351 * t140;
t415 = (qJD(5) * t134 - t55) * pkin(10);
t162 = t186 * t350 + t460;
t87 = -qJD(5) * t315 - t130 * t350 + t186 * t476 - t354 * t454;
t411 = t134 * t87 + t162 * t56;
t408 = t280 * t537 + t281 * t337 + t500 * t564 + t487;
t46 = t100 * t354 - t350 * t81;
t43 = t104 * t354 - t350 * t63;
t127 = t195 * t354 - t219 * t350;
t403 = t241 * t347 - t242 * t345;
t402 = qJD(1) * (-t241 + t481);
t400 = -t172 + t421;
t398 = g(1) * t546 + g(2) * t353;
t80 = t330 - t82;
t3 = t354 * t15 + t350 * t31 + t77 * t476 - t477 * t61;
t10 = t100 * t476 + t350 * t70 + t354 * t37 - t477 * t81;
t396 = t569 * t60 - t547;
t393 = -t278 * t537 - t279 * t337 + t458 * t564 + t446;
t390 = t339 * t330 + t338 * t465 + t417;
t40 = t119 * t545 - t123 * t478 - t351 * t138 - t140 * t451;
t179 = -t278 * t504 - t279 * t354;
t181 = -t280 * t504 - t281 * t354;
t232 = t315 * t339 - t354 * t501;
t387 = g(1) * t181 + g(2) * t179 + g(3) * t232;
t180 = -t278 * t503 + t279 * t350;
t182 = -t280 * t503 + t281 * t350;
t233 = (t339 * t495 + t350 * t352) * t346;
t386 = -g(1) * t182 - g(2) * t180 - g(3) * t233;
t252 = -t338 * t501 + t339 * t348;
t385 = g(1) * t207 - g(2) * t440 - g(3) * t252;
t253 = t338 * t348 + t339 * t501;
t384 = -g(1) * t208 - g(2) * t204 - g(3) * t253;
t380 = t287 * t477 + t442;
t379 = t134 * t437 - t526;
t378 = -pkin(10) * t526 + t384;
t375 = -g(3) * t501 - t419;
t374 = -qJ(3) * t480 + (qJD(3) - t215) * t355;
t373 = t208 * pkin(4) + pkin(10) * t207 + t408;
t370 = -pkin(4) * t204 + pkin(10) * t440 + t393;
t369 = -t557 + t191;
t163 = t186 * t354 - t315;
t86 = qJD(5) * t162 + t354 * t130 - t350 * t454;
t368 = t134 * t86 - t136 * t87 + t162 * t55 - t163 * t56;
t366 = t131 * t134 + t162 * t94 + t185 * t56 + t569 * t87;
t365 = pkin(10) * qJD(5) * t569 - t385;
t201 = t253 * t350 + t460;
t364 = g(1) * t158 + g(2) * t154 + g(3) * t201 + t4;
t16 = -pkin(4) * t382 - t19;
t5 = t56 * pkin(5) + t55 * qJ(6) - t136 * qJD(6) + t16;
t363 = -t365 - t5;
t38 = -pkin(4) * t454 - t40;
t362 = t16 + t365;
t361 = t134 * t381 + t507 * t56;
t202 = t253 * t354 - t315;
t360 = -g(1) * t159 - g(2) * t155 - g(3) * t202 + t3;
t359 = t136 * t33 + qJDD(6) - t364;
t301 = t352 * t461;
t300 = -pkin(4) - t413;
t282 = -t328 + t466;
t254 = (qJDD(1) * t344 - 0.2e1 * t425) * t341;
t248 = t252 * pkin(4);
t199 = t207 * pkin(4);
t197 = t440 * pkin(4);
t142 = t287 * t412 - t558;
t113 = pkin(5) * t394 - t127;
t112 = -qJ(6) * t394 + t559;
t85 = pkin(5) * t136 + qJ(6) * t134;
t48 = t162 * pkin(5) - t163 * qJ(6) + t80;
t42 = t131 * t569 + t185 * t94;
t41 = -t394 * t94 + t490 * t569;
t35 = -pkin(5) * t185 - t46;
t34 = qJ(6) * t185 + t532;
t32 = -pkin(5) * t395 - t43;
t30 = qJ(6) * t395 + t44;
t29 = -t55 + t518;
t23 = -pkin(5) * t569 + t494;
t22 = -t514 + t568;
t21 = t136 * t511 - t527;
t20 = -t136 * t86 - t163 * t55;
t17 = -t136 * t380 - t506 * t55;
t12 = t87 * pkin(5) + t86 * qJ(6) - t163 * qJD(6) + t38;
t9 = t131 * t136 + t163 * t94 - t185 * t55 - t569 * t86;
t8 = t136 * t490 - t380 * t569 + t394 * t55 + t506 * t94;
t7 = -pkin(5) * t131 - t11;
t6 = qJ(6) * t131 + qJD(6) * t185 + t10;
t1 = qJD(6) * t569 + t3 + t530;
t13 = [0, 0, 0, 0, 0, qJDD(1), g(1) * t353 - g(2) * t546, t398, 0, 0 (qJDD(1) * t343 + 0.2e1 * t425) * t341 (t352 * t468 - t471 * t486) * t565 (t352 * t435 + t436 * t479) * t346, t254 (t355 * t435 - t436 * t480) * t346, t326 * t348, t191 * t348 - t272 * t327 + t282 * t326 - t388 * t450 + t418, -t190 * t348 - t271 * t327 - t326 * t488 - t389 * t450 - t420 ((-qJD(2) * t269 + qJDD(1) * t488 + t190 + (-qJD(2) * t282 + t271) * qJD(1)) * t355 + (-qJD(2) * t270 - qJDD(1) * t282 - t191) * t352 - t398) * t346, t341 * qJDD(1) * pkin(1) ^ 2 - g(1) * t446 - g(2) * t487 + t190 * t488 + t191 * t282 - t269 * t272 + t270 * t271, t242 * t347 * t453 + t196 * t275, -t196 * t274 + t275 * t416 + t403 * t453, -t347 * t428 + ((-qJDD(1) * t275 - t196) * t355 + (qJD(1) * t275 + t242) * t480) * t346, -t241 * t429 - t274 * t416, t345 * t428 + ((qJDD(1) * t274 - t416) * t355 + (-qJD(1) * t274 + t241) * t480) * t346, t254, -t272 * t241 + t258 * t489 + t172 * t274 + (-t258 * t326 + t418) * t347 + (-t398 * t345 + (qJD(1) * t173 + t144) * t480 + (-qJD(1) * t152 - qJDD(1) * t173 + t215 * t482 - t101) * t355) * t346, t172 * t275 + t258 * t196 + t272 * t242 - t418 * t345 + (-t398 * t347 + (-qJD(1) * t174 - t145) * t480 + (qJD(1) * t153 + qJDD(1) * t174 + t215 * t481 + t102) * t355) * t346, t153 * t241 + t174 * t416 - t102 * t274 - t152 * t242 - t173 * t196 - t101 * t275 + (-t144 * t347 - t145 * t345) * t453 + t420, t102 * t174 + t145 * t153 + t101 * t173 + t144 * t152 + t172 * t258 + t215 * t272 - g(1) * (-pkin(2) * t279 - qJ(3) * t278 + t446) - g(2) * (pkin(2) * t281 + qJ(3) * t280 + t487) -t130 * t395 - t186 * t358, t130 * t167 - t131 * t395 + t185 * t358 - t186 * t95, t130 * t473 + t186 * t467 + (t358 * t355 + (qJD(1) * t186 + t395) * t480) * t346, t131 * t167 + t185 * t95, t131 * t473 - t185 * t467 + (t95 * t355 + (-qJD(1) * t185 - t167) * t480) * t346 (-t467 * t355 + (-0.2e1 * t324 + qJD(4)) * t480) * t346, -t40 * t473 + t82 * t467 + t214 * t167 + t193 * t95 + t114 * t185 + t165 * t131 + g(1) * t204 - g(2) * t208 + (-t19 * t355 + (qJD(1) * t82 + t63) * t480) * t346, t39 * t473 - t83 * t467 + t214 * t395 - t193 * t358 + t114 * t186 - t165 * t130 + (-t392 * t355 + (-qJD(1) * t83 - t64) * t480) * t346 + t422, t63 * t130 - t64 * t131 - t39 * t167 + t185 * t392 - t19 * t186 + t358 * t82 - t395 * t40 - t83 * t95 + t420, -g(1) * t393 - g(2) * t408 + t114 * t193 + t165 * t214 + t19 * t82 + t64 * t39 - t392 * t83 + t63 * t40, t20, t368, t9, t411, -t366, t42, t11 * t569 + t131 * t25 + t134 * t38 + t16 * t162 + t185 * t4 + t46 * t94 + t56 * t80 + t60 * t87 + t423, -t10 * t569 - t131 * t26 + t136 * t38 + t16 * t163 - t185 * t3 - t532 * t94 - t55 * t80 - t60 * t86 - t424, -t10 * t134 - t11 * t136 - t162 * t3 - t163 * t4 + t25 * t86 - t26 * t87 + t46 * t55 - t532 * t56 - t422, -g(1) * t370 - g(2) * t373 + t26 * t10 + t25 * t11 + t16 * t80 + t3 * t532 + t60 * t38 + t4 * t46, t20, t9, -t368, t42, t366, t411, t12 * t134 - t131 * t23 + t162 * t5 - t185 * t2 + t33 * t87 - t35 * t94 + t48 * t56 - t569 * t7 + t423, -t1 * t162 - t134 * t6 + t136 * t7 + t163 * t2 - t23 * t86 - t24 * t87 - t34 * t56 - t35 * t55 - t422, t1 * t185 - t12 * t136 + t131 * t24 - t163 * t5 + t33 * t86 + t34 * t94 + t48 * t55 + t569 * t6 + t424, t1 * t34 + t24 * t6 + t5 * t48 + t33 * t12 + t2 * t35 + t23 * t7 - g(1) * (-pkin(5) * t155 - qJ(6) * t154 + t370) - g(2) * (pkin(5) * t159 + qJ(6) * t158 + t373); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t301, t486 * t502 (t475 * t483 + t469) * t346, t301, -t455 * t475 + t323, t326, t270 * t327 + t502 * t544 + t369, pkin(1) * t461 + t269 * t327 + (pkin(8) * t471 + g(3)) * t501 + t419 + t459, 0, 0, t196 * t345 - t347 * t431, t196 * t347 - t324 * t403 + t345 * t416, t347 * t462 + (-t345 * t468 + (-t242 + t482) * t484) * t346, t241 * t430 + t347 * t416, -t345 * t462 + (-t347 * t468 + t352 * t402) * t346, t301, -pkin(2) * t489 + t270 * t241 + (t400 + t538) * t347 + ((-g(3) * t347 + t345 * t472) * t355 + (-t144 * t352 + t177 * t355 + t345 * t374) * qJD(1)) * t346, -pkin(2) * t196 - t242 * t270 - t400 * t345 + ((g(3) * t345 + t347 * t472) * t355 + (t145 * t352 - t178 * t355 + t347 * t374) * qJD(1)) * t346, t177 * t242 - t178 * t241 + (qJ(3) * t416 + qJD(3) * t241 + t144 * t324 + t102) * t347 + (qJ(3) * t196 + qJD(3) * t242 + t145 * t324 - t101) * t345 + t375, -t144 * t177 - t145 * t178 - t215 * t270 + (-t144 * t345 + t145 * t347) * qJD(3) + (-t172 - t557) * pkin(2) + (-t101 * t345 + t102 * t347 + t375) * qJ(3), -t287 * t358 - t395 * t491, t167 * t491 - t287 * t95 - t358 * t394 - t395 * t490, t287 * t382 - t395 * t455 + t473 * t491, t167 * t490 - t394 * t95, t167 * t455 + t382 * t394 + t473 * t490, t473 * t455, -t114 * t394 + t165 * t490 - t213 * t167 - t337 * t95 - t339 * t557 + t382 * t558 - t455 * t63 + t473 * t521, t114 * t287 - t165 * t491 - t213 * t395 - t219 * t382 + t337 * t358 + t455 * t64 + t473 * t523 + t371, -t167 * t523 - t19 * t287 - t219 * t95 + t358 * t558 - t392 * t394 + t395 * t521 - t490 * t64 + t491 * t63 + t375, -g(1) * t492 - g(2) * t493 - g(3) * t417 - t114 * t337 - t165 * t213 + t19 * t558 - t219 * t392 - t521 * t63 + t523 * t64, t17, t567, t8, t361, -t551, t41, t127 * t94 + t134 * t522 + t16 * t507 + t25 * t490 + t381 * t60 - t394 * t4 + t533 * t569 - t558 * t56 + t386, t136 * t522 + t16 * t506 - t26 * t490 + t3 * t394 - t380 * t60 - t534 * t569 + t55 * t558 - t559 * t94 + t387, t127 * t55 - t559 * t56 + t443 * t26 + t442 * t25 - t533 * t136 - t534 * t134 - t371 + (-t3 * t350 - t354 * t4 + (t25 * t350 - t26 * t354) * qJD(5)) * t287, -g(1) * t432 - g(2) * t433 - g(3) * t390 + t4 * t127 - t16 * t558 + t25 * t533 + t26 * t534 + t3 * t559 + t522 * t60, t17, t8, -t567, t41, t551, t361, -t113 * t94 + t134 * t531 + t142 * t56 + t2 * t394 - t23 * t490 + t33 * t381 + t5 * t507 - t535 * t569 + t386, -t112 * t56 - t113 * t55 + t443 * t24 - t442 * t23 + t535 * t136 - t536 * t134 - t371 + (-t1 * t350 + t2 * t354 + (-t23 * t350 - t24 * t354) * qJD(5)) * t287, -t1 * t394 + t112 * t94 - t136 * t531 + t142 * t55 + t24 * t490 + t33 * t380 - t5 * t506 + t536 * t569 - t387, t1 * t112 + t5 * t142 + t2 * t113 - g(1) * (pkin(5) * t182 + qJ(6) * t181 + t432) - g(2) * (pkin(5) * t180 + qJ(6) * t179 + t433) - g(3) * (pkin(5) * t233 + qJ(6) * t232 + t390) + t531 * t33 + t536 * t24 + t535 * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t416 - t431, t505 + (t347 * t469 + t355 * t402) * t346, -t241 ^ 2 - t242 ^ 2, t144 * t242 - t145 * t241 - t369 + t555, 0, 0, 0, 0, 0, 0, t441 + 0.2e1 * t556 - t560, -t358 + t572, -t566 - t573, t167 * t64 + t395 * t63 + t114 + t557, 0, 0, 0, 0, 0, 0, t562, -t354 * t577 - t514 - t91 (-t134 * t167 + t55) * t354 + t569 * t513 + t525, -t395 * t60 + t579 * t354 + (t3 - t576) * t350 + t557, 0, 0, 0, 0, 0, 0, t562 -(-t513 + t517) * t167 - t445 + t525, t514 + t568, -t395 * t33 + t580 * t354 + (t23 * t569 + t1) * t350 + t557; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t510, t566 - t573, -t358 - t572, -t510, -t441 - t560, t382, -t165 * t395 - t473 * t64 + t19 + t385, t165 * t167 - t473 * t63 - t384 + t392, 0, 0, t21 (-t513 - t517) * t167 + t445 + t525, t22, t379, -t444 - t578, -t512, -pkin(4) * t56 - t134 * t64 - t25 * t395 + t350 * t396 - t354 * t362 - t43 * t569, pkin(4) * t55 - t136 * t64 + t26 * t395 + t350 * t362 + t354 * t396 + t44 * t569, t134 * t44 + t136 * t43 + (-t167 * t25 + t3 + (-t25 + t540) * qJD(5)) * t354 + (t415 - t579) * t350 + t378, -t16 * pkin(4) + g(1) * t199 - g(2) * t197 - g(3) * t248 - t25 * t43 - t26 * t44 - t60 * t64 + (t3 * t354 - t4 * t350 + (-t25 * t354 - t26 * t350) * qJD(5) + t384) * pkin(10), t21, t22, t121 + (t136 * t167 + t56) * t350 + (t55 + t518) * t354, -t512, t437 * t569 + t444, t379, t520 * t134 + t395 * t23 + t300 * t56 + t32 * t569 + t350 * t554 + t363 * t354, t134 * t30 - t136 * t32 + (t167 * t23 + t1 + (t23 + t540) * qJD(5)) * t354 + (t415 - t580) * t350 + t378, -t520 * t136 - t395 * t24 - t30 * t569 + t300 * t55 + t363 * t350 - t354 * t554, t5 * t300 - t24 * t30 - t23 * t32 - g(1) * (-t207 * t413 - t199) - g(2) * (t413 * t440 + t197) - g(3) * (t252 * t413 + t248) + t520 * t33 + (t1 * t354 + t2 * t350 + (t23 * t354 - t24 * t350) * qJD(5) + t384) * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t516, -t452, t29, -t516, -t563, t94, -t136 * t60 + t364 + t528, t134 * t60 - t360 + t576, 0, 0, t516, t29, t452, t94, t563, -t516, -t134 * t85 - t359 + t528 + 0.2e1 * t548, pkin(5) * t55 - qJ(6) * t56 + (t24 - t26) * t136 + (t23 - t494) * t134, 0.2e1 * t530 - t134 * t33 + t136 * t85 + (0.2e1 * qJD(6) - t25) * t569 + t360, t1 * qJ(6) - t2 * pkin(5) - t33 * t85 - t23 * t26 - g(1) * (-pkin(5) * t158 + qJ(6) * t159) - g(2) * (-pkin(5) * t154 + qJ(6) * t155) - g(3) * (-pkin(5) * t201 + qJ(6) * t202) + t494 * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t516 - t94, t29, -t577 - t550, t359 - t529 - t548;];
tau_reg  = t13;