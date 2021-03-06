% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRRPR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:56
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRPR1_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR1_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR1_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR1_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR1_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR1_invdynJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 21:55:03
% EndTime: 2019-03-09 21:55:31
% DurationCPUTime: 16.28s
% Computational Cost: add. (33174->757), mult. (81589->939), div. (0->0), fcn. (62626->18), ass. (0->369)
t333 = cos(qJ(6));
t427 = qJD(6) * t333;
t330 = sin(qJ(3));
t331 = sin(qJ(2));
t434 = qJD(1) * t331;
t411 = t330 * t434;
t335 = cos(qJ(3));
t336 = cos(qJ(2));
t441 = t335 * t336;
t237 = -qJD(1) * t441 + t411;
t252 = t330 * t336 + t331 * t335;
t239 = t252 * qJD(1);
t329 = sin(qJ(4));
t334 = cos(qJ(4));
t180 = t237 * t334 + t329 * t239;
t327 = sin(pkin(11));
t379 = t237 * t329 - t334 * t239;
t475 = cos(pkin(11));
t132 = t475 * t180 - t327 * t379;
t531 = t132 * t333;
t535 = t427 + t531;
t322 = qJD(2) + qJD(3);
t314 = qJD(4) + t322;
t328 = sin(qJ(6));
t509 = -t327 * t180 - t379 * t475;
t121 = t314 * t328 + t333 * t509;
t527 = qJD(6) + t132;
t533 = t328 * t527;
t534 = t121 * t533;
t463 = t132 ^ 2;
t466 = t509 ^ 2;
t50 = -t463 + t466;
t119 = -t333 * t314 + t328 * t509;
t321 = qJDD(2) + qJDD(3);
t313 = qJDD(4) + t321;
t428 = qJD(6) * t328;
t445 = t330 * t331;
t251 = -t441 + t445;
t366 = t251 * qJDD(1);
t507 = t239 * t322;
t343 = -t507 - t366;
t422 = t336 * qJDD(1);
t423 = t331 * qJDD(1);
t424 = qJD(1) * qJD(2);
t409 = t331 * t424;
t438 = qJD(3) * t411 + t330 * t409;
t506 = t336 * t322;
t349 = (qJD(1) * t506 + t423) * t335 + t330 * t422 - t438;
t342 = qJD(4) * t379 - t329 * t349 + t334 * t343;
t429 = qJD(4) * t334;
t430 = qJD(4) * t329;
t99 = t237 * t429 + t239 * t430 - t329 * t343 - t334 * t349;
t66 = t327 * t342 - t475 * t99;
t45 = -t328 * t313 - t314 * t427 - t333 * t66 + t428 * t509;
t402 = -t333 * t313 + t328 * t66;
t46 = qJD(6) * t121 + t402;
t481 = -t119 * t427 - t328 * t46;
t532 = -t119 * t531 - t333 * t45 + t481;
t41 = t45 * t328;
t18 = t121 * t535 - t41;
t469 = t121 * t509;
t404 = t327 * t99 + t342 * t475;
t62 = qJDD(6) - t404;
t59 = t328 * t62;
t17 = t527 * t535 - t469 + t59;
t338 = -pkin(8) - pkin(7);
t277 = t338 * t336;
t259 = qJD(1) * t277;
t240 = t330 * t259;
t276 = t338 * t331;
t257 = qJD(1) * t276;
t488 = qJD(2) * pkin(2);
t246 = t257 + t488;
t188 = t335 * t246 + t240;
t231 = t239 * pkin(9);
t160 = t188 - t231;
t150 = pkin(3) * t322 + t160;
t244 = t335 * t259;
t189 = t246 * t330 - t244;
t497 = pkin(9) * t237;
t161 = t189 - t497;
t456 = t161 * t334;
t107 = t150 * t329 + t456;
t473 = qJ(5) * t180;
t93 = t107 - t473;
t485 = t327 * t93;
t152 = t329 * t161;
t106 = t334 * t150 - t152;
t175 = t379 * qJ(5);
t92 = t106 + t175;
t85 = pkin(4) * t314 + t92;
t55 = t475 * t85 - t485;
t53 = -t314 * pkin(5) - t55;
t487 = t132 * t53;
t462 = t132 * t314;
t49 = t66 + t462;
t530 = t132 * t509;
t326 = qJ(2) + qJ(3);
t318 = qJ(4) + t326;
t304 = pkin(11) + t318;
t291 = sin(t304);
t332 = sin(qJ(1));
t337 = cos(qJ(1));
t390 = g(1) * t337 + g(2) * t332;
t529 = t390 * t291;
t465 = t509 * t314;
t48 = t404 + t465;
t526 = pkin(5) * t509 + pkin(10) * t132;
t408 = t336 * t424;
t368 = -t408 - t423;
t202 = qJDD(2) * pkin(2) - t338 * t368;
t194 = t335 * t202;
t203 = t338 * (-t409 + t422);
t431 = qJD(3) * t336;
t353 = qJD(1) * t431 - t368;
t90 = t194 + t438 * pkin(9) + t321 * pkin(3) + (-pkin(9) * t422 - qJD(3) * t246 + t203) * t330 + (-pkin(9) * t353 + qJD(3) * t259) * t335;
t432 = qJD(3) * t335;
t433 = qJD(3) * t330;
t117 = t330 * t202 - t335 * t203 + t246 * t432 + t259 * t433;
t97 = pkin(9) * t343 + t117;
t39 = -qJD(4) * t107 - t329 * t97 + t334 * t90;
t24 = pkin(4) * t313 + qJ(5) * t99 + qJD(5) * t379 + t39;
t398 = -t150 * t429 + t161 * t430 - t329 * t90 - t334 * t97;
t26 = qJ(5) * t342 - qJD(5) * t180 - t398;
t11 = t327 * t24 + t475 * t26;
t319 = t336 * pkin(2);
t310 = t319 + pkin(1);
t275 = qJD(1) * t310;
t204 = pkin(3) * t237 - t275;
t143 = pkin(4) * t180 + qJD(5) + t204;
t281 = g(3) * t291;
t292 = cos(t304);
t450 = t292 * t337;
t451 = t292 * t332;
t417 = g(1) * t450 + g(2) * t451 + t281;
t365 = t132 * t143 - t11 + t417;
t88 = t475 * t93;
t56 = t327 * t85 + t88;
t54 = pkin(10) * t314 + t56;
t73 = pkin(5) * t132 - pkin(10) * t509 + t143;
t28 = t328 * t73 + t333 * t54;
t524 = t28 * t527;
t27 = -t328 * t54 + t333 * t73;
t523 = t527 * t27;
t472 = t119 * t509;
t467 = t527 * t509;
t212 = pkin(3) * t251 - t310;
t315 = sin(t326);
t316 = cos(t326);
t521 = -g(3) * t316 + t390 * t315;
t306 = sin(t318);
t307 = cos(t318);
t520 = -g(3) * t307 + t306 * t390;
t519 = qJDD(1) * t310;
t51 = t53 * t428;
t518 = -t509 * t27 + t333 * t529 + t51;
t493 = g(3) * t292;
t10 = t475 * t24 - t327 * t26;
t8 = -pkin(5) * t313 - t10;
t508 = t8 * t328 + t53 * t427;
t517 = t509 * t28 + t328 * t493 + t508;
t355 = -t143 * t509 + t10 - t493 + t529;
t516 = pkin(4) * t379;
t514 = t180 * t379;
t94 = -t180 ^ 2 + t379 ^ 2;
t81 = t180 * t314 - t99;
t360 = g(3) * t306 + t180 * t204 + t307 * t390 + t398;
t347 = t204 * t379 + t39 + t520;
t82 = -t314 * t379 + t342;
t504 = g(1) * t332 - g(2) * t337;
t505 = t504 * t291;
t205 = t335 * t276 + t277 * t330;
t176 = -pkin(9) * t252 + t205;
t206 = t330 * t276 - t335 * t277;
t177 = -pkin(9) * t251 + t206;
t128 = t329 * t176 + t334 * t177;
t391 = t292 * pkin(5) + t291 * pkin(10);
t503 = pkin(2) * t331;
t502 = pkin(3) * t239;
t500 = pkin(3) * t315;
t499 = pkin(4) * t306;
t498 = pkin(5) * t291;
t490 = g(3) * t336;
t299 = pkin(2) * t409;
t142 = pkin(3) * t507 + qJDD(1) * t212 + t299;
t76 = -pkin(4) * t342 + qJDD(5) + t142;
t15 = -pkin(5) * t404 - t66 * pkin(10) + t76;
t9 = pkin(10) * t313 + t11;
t2 = qJD(6) * t27 + t15 * t328 + t333 * t9;
t1 = t2 * t333;
t489 = pkin(3) * qJD(4);
t486 = t28 * t328;
t199 = -qJD(2) * t441 + t322 * t445 - t335 * t431;
t200 = t322 * t252;
t113 = t334 * t199 + t329 * t200 + t251 * t429 + t252 * t430;
t196 = -t251 * t329 + t252 * t334;
t114 = qJD(4) * t196 - t199 * t329 + t334 * t200;
t78 = -t113 * t475 - t327 * t114;
t484 = t328 * t78;
t483 = t333 * t78;
t43 = t46 * t333;
t197 = -t257 * t330 + t244;
t163 = t197 + t497;
t198 = t335 * t257 + t240;
t164 = -t231 + t198;
t112 = t329 * t163 + t334 * t164;
t102 = t175 + t112;
t309 = pkin(2) * t335 + pkin(3);
t446 = t329 * t330;
t186 = t309 * t429 + (-t330 * t430 + (t334 * t335 - t446) * qJD(3)) * pkin(2);
t444 = t330 * t334;
t187 = -t309 * t430 + (-t330 * t429 + (-t329 * t335 - t444) * qJD(3)) * pkin(2);
t111 = t163 * t334 - t164 * t329;
t362 = t111 + t473;
t479 = (-t187 + t362) * t475 + (-t102 + t186) * t327;
t137 = t186 * t475 + t327 * t187;
t68 = t102 * t475 + t327 * t362;
t478 = t137 - t68;
t108 = -t160 * t329 - t456;
t363 = t108 + t473;
t403 = t475 * t329;
t109 = t334 * t160 - t152;
t98 = t175 + t109;
t477 = -t327 * t98 + t363 * t475 + (t327 * t334 + t403) * t489;
t449 = t327 * t329;
t226 = (t334 * t475 - t449) * t489;
t64 = t327 * t363 + t475 * t98;
t476 = t226 - t64;
t474 = pkin(7) * qJDD(1);
t471 = t119 * t328;
t470 = t121 * t119;
t468 = t121 * t328;
t195 = t334 * t251 + t252 * t329;
t139 = -t327 * t195 + t196 * t475;
t458 = t139 * t328;
t457 = t139 * t333;
t452 = t239 * t237;
t448 = t328 * t332;
t447 = t328 * t337;
t443 = t332 * t333;
t442 = t333 * t337;
t440 = t186 - t112;
t439 = t187 - t111;
t233 = -pkin(2) * t446 + t334 * t309;
t227 = pkin(4) + t233;
t234 = pkin(2) * t444 + t309 * t329;
t171 = t327 * t227 + t475 * t234;
t308 = pkin(3) * t334 + pkin(4);
t229 = pkin(3) * t403 + t327 * t308;
t303 = pkin(3) * t316;
t437 = t303 + t319;
t324 = t331 ^ 2;
t325 = t336 ^ 2;
t436 = t324 - t325;
t435 = t324 + t325;
t323 = -pkin(9) + t338;
t312 = t331 * t488;
t340 = qJD(1) ^ 2;
t418 = t331 * t340 * t336;
t297 = pkin(4) * t307;
t416 = t297 + t391;
t415 = t297 + t437;
t413 = -t8 - t493;
t412 = qJD(2) * t338;
t300 = pkin(4) * t327 + pkin(10);
t410 = qJD(6) * t527 * t300;
t184 = pkin(3) * t200 + t312;
t247 = -t499 - t500;
t221 = t247 - t503;
t407 = t221 - t498;
t406 = t247 - t498;
t399 = t1 - t417;
t397 = t331 * t322;
t394 = t303 + t416;
t393 = t331 * t408;
t149 = t502 - t516;
t392 = -t498 - t499;
t387 = t330 * t506;
t386 = -t55 * t132 + t509 * t56;
t385 = -t300 * t62 + t487;
t167 = pkin(10) + t171;
t384 = -t167 * t62 + t487;
t223 = pkin(10) + t229;
t383 = -t223 * t62 + t487;
t382 = -t27 * t333 - t486;
t381 = t27 * t328 - t28 * t333;
t105 = -qJ(5) * t195 + t128;
t127 = t176 * t334 - t177 * t329;
t361 = -qJ(5) * t196 + t127;
t72 = t105 * t475 + t327 * t361;
t138 = t195 * t475 + t196 * t327;
t154 = pkin(4) * t195 + t212;
t80 = pkin(5) * t138 - pkin(10) * t139 + t154;
t37 = t328 * t80 + t333 * t72;
t36 = -t328 * t72 + t333 * t80;
t380 = -t106 * t180 - t107 * t379;
t378 = -t132 * t486 - t27 * t531 + t399;
t60 = t333 * t62;
t377 = t60 + (-t132 * t328 - t428) * t527;
t103 = pkin(4) * t114 + t184;
t376 = -qJD(6) * t73 + t281 - t9;
t373 = -0.2e1 * pkin(1) * t424 - pkin(7) * qJDD(2);
t372 = t139 * t427 + t484;
t371 = -t139 * t428 + t483;
t170 = t227 * t475 - t327 * t234;
t258 = t331 * t412;
t260 = t336 * t412;
t147 = t335 * t258 + t330 * t260 + t276 * t432 + t277 * t433;
t124 = -pkin(9) * t200 + t147;
t148 = -qJD(3) * t206 - t258 * t330 + t335 * t260;
t125 = pkin(9) * t199 + t148;
t69 = t334 * t124 + t329 * t125 + t176 * t429 - t177 * t430;
t228 = -pkin(3) * t449 + t308 * t475;
t75 = t149 + t526;
t339 = qJD(2) ^ 2;
t359 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t339 + t504;
t358 = pkin(1) * t340 + t390 - t474;
t357 = g(3) * t315 - t237 * t275 + t316 * t390 - t117;
t354 = t333 * t413 + t518;
t118 = -qJD(3) * t189 + t330 * t203 + t194;
t12 = t333 * t15;
t3 = -qJD(6) * t28 - t328 * t9 + t12;
t352 = qJD(6) * t382 - t3 * t328 + t1;
t70 = -qJD(4) * t128 - t124 * t329 + t125 * t334;
t351 = -t328 * t529 + t517;
t346 = qJ(5) * t113 - qJD(5) * t196 + t70;
t345 = t239 * t275 + t118 + t521;
t317 = -qJ(5) + t323;
t311 = pkin(2) * t434;
t301 = -pkin(4) * t475 - pkin(5);
t262 = pkin(10) * t450;
t261 = pkin(10) * t451;
t256 = pkin(1) + t437;
t232 = t299 - t519;
t222 = -pkin(5) - t228;
t218 = pkin(1) + t415;
t216 = t292 * t442 + t448;
t215 = -t292 * t447 + t443;
t214 = -t292 * t443 + t447;
t213 = t292 * t448 + t442;
t208 = t337 * t218;
t207 = t311 + t502;
t166 = -pkin(5) - t170;
t162 = -t237 ^ 2 + t239 ^ 2;
t144 = t149 + t311;
t141 = t343 + t507;
t140 = t237 * t322 + t349;
t79 = -t516 + t526;
t77 = -t113 * t327 + t114 * t475;
t74 = t311 + t75;
t71 = t105 * t327 - t361 * t475;
t58 = t475 * t92 - t485;
t57 = t327 * t92 + t88;
t47 = -qJ(5) * t114 - qJD(5) * t195 + t69;
t35 = t328 * t79 + t333 * t58;
t34 = -t328 * t58 + t333 * t79;
t33 = t328 * t74 + t333 * t68;
t32 = -t328 * t68 + t333 * t74;
t31 = t328 * t75 + t333 * t64;
t30 = -t328 * t64 + t333 * t75;
t29 = pkin(5) * t77 - pkin(10) * t78 + t103;
t19 = t471 * t527 - t43;
t16 = -t527 * t533 + t472 + t60;
t14 = t327 * t346 + t47 * t475;
t13 = t327 * t47 - t346 * t475;
t6 = t532 - t534;
t5 = -qJD(6) * t37 - t14 * t328 + t29 * t333;
t4 = qJD(6) * t36 + t14 * t333 + t29 * t328;
t7 = [0, 0, 0, 0, 0, qJDD(1), t504, t390, 0, 0, qJDD(1) * t324 + 0.2e1 * t393, 0.2e1 * t331 * t422 - 0.2e1 * t424 * t436, qJDD(2) * t331 + t336 * t339, qJDD(1) * t325 - 0.2e1 * t393, qJDD(2) * t336 - t331 * t339, 0, t331 * t373 + t336 * t359, -t331 * t359 + t336 * t373, 0.2e1 * t435 * t474 - t390, -g(1) * (-pkin(1) * t332 + pkin(7) * t337) - g(2) * (pkin(1) * t337 + pkin(7) * t332) + (pkin(7) ^ 2 * t435 + pkin(1) ^ 2) * qJDD(1), -t239 * t199 + t252 * t349, t199 * t237 + t438 * t251 - t239 * t200 - 0.2e1 * t252 * t366 + (-t252 * t387 + (-t251 * t506 - t252 * t397) * t335) * qJD(1), -t199 * t322 + t252 * t321, t237 * t200 - t251 * t343, -t200 * t322 - t251 * t321, 0, t148 * t322 + t205 * t321 + t237 * t312 + t316 * t504 + (t232 - t519) * t251 - 0.2e1 * t275 * t200, -t147 * t322 + t275 * t199 - t206 * t321 + t232 * t252 + t239 * t312 - t310 * t349 - t315 * t504, -t147 * t237 - t117 * t251 - t189 * t200 - t148 * t239 + t205 * t438 - t118 * t252 + t188 * t199 + (-t205 * t252 - t206 * t251) * qJDD(1) + (-t206 * t387 + (-t205 * t506 - t206 * t397) * t335) * qJD(1) - t390, t117 * t206 + t189 * t147 + t118 * t205 + t188 * t148 - t232 * t310 - t275 * t312 - g(1) * (-t310 * t332 - t337 * t338) - g(2) * (t310 * t337 - t332 * t338) t113 * t379 - t196 * t99, t113 * t180 + t114 * t379 + t195 * t99 + t196 * t342, -t113 * t314 + t196 * t313, t114 * t180 - t195 * t342, -t114 * t314 - t195 * t313, 0, t114 * t204 + t127 * t313 + t142 * t195 + t180 * t184 - t212 * t342 + t307 * t504 + t314 * t70, -t113 * t204 - t128 * t313 + t142 * t196 - t184 * t379 - t212 * t99 - t306 * t504 - t314 * t69, t106 * t113 - t107 * t114 + t127 * t99 + t128 * t342 - t180 * t69 + t195 * t398 - t196 * t39 + t379 * t70 - t390, -t398 * t128 + t107 * t69 + t39 * t127 + t106 * t70 + t142 * t212 + t204 * t184 - g(1) * (-t256 * t332 - t323 * t337) - g(2) * (t256 * t337 - t323 * t332) t139 * t66 + t509 * t78, -t132 * t78 - t138 * t66 + t139 * t404 - t509 * t77, t139 * t313 + t314 * t78, t132 * t77 - t138 * t404, -t138 * t313 - t314 * t77, 0, t103 * t132 - t13 * t314 + t138 * t76 + t143 * t77 - t154 * t404 + t292 * t504 - t313 * t71, t103 * t509 + t139 * t76 - t14 * t314 + t143 * t78 + t154 * t66 - t313 * t72 - t505, -t10 * t139 - t11 * t138 + t13 * t509 - t132 * t14 + t404 * t72 - t55 * t78 - t56 * t77 + t66 * t71 - t390, t11 * t72 + t56 * t14 - t10 * t71 - t55 * t13 + t76 * t154 + t143 * t103 - g(1) * (-t218 * t332 - t317 * t337) - g(2) * (-t317 * t332 + t208) t121 * t371 - t45 * t457 (-t119 * t333 - t468) * t78 + (t41 - t43 + (-t121 * t333 + t471) * qJD(6)) * t139, t121 * t77 - t138 * t45 + t371 * t527 + t457 * t62, t119 * t372 + t458 * t46, -t119 * t77 - t138 * t46 - t372 * t527 - t458 * t62, t138 * t62 + t527 * t77, -g(1) * t214 - g(2) * t216 + t119 * t13 + t138 * t3 + t139 * t508 + t27 * t77 + t36 * t62 + t46 * t71 + t53 * t484 + t5 * t527, t53 * t483 - g(1) * t213 - g(2) * t215 + t121 * t13 - t527 * t4 - t138 * t2 - t28 * t77 - t37 * t62 - t45 * t71 + (t333 * t8 - t51) * t139, -t119 * t4 - t121 * t5 + t36 * t45 - t37 * t46 + t382 * t78 + t505 + (qJD(6) * t381 - t2 * t328 - t3 * t333) * t139, -g(2) * t208 + t53 * t13 + t2 * t37 + t27 * t5 + t28 * t4 + t3 * t36 + t8 * t71 + (g(1) * t317 - g(2) * t391) * t337 + (-g(1) * (-t218 - t391) + g(2) * t317) * t332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t418, t436 * t340, t423, t418, t422, qJDD(2), t331 * t358 - t490, g(3) * t331 + t336 * t358, 0, 0, t452, t162, t140, -t452, t141, t321, -t197 * t322 + (-t237 * t434 + t321 * t335 - t322 * t433) * pkin(2) + t345, t198 * t322 + (-t239 * t434 - t321 * t330 - t322 * t432) * pkin(2) + t357 (t189 + t197) * t239 + (-t188 + t198) * t237 + ((-qJD(3) * t237 - t335 * t353 + t438) * t335 + (-t330 * t423 + qJD(3) * t239 + (-t335 * t397 - t387) * qJD(1)) * t330) * pkin(2), -t188 * t197 - t189 * t198 + (-t490 + t117 * t330 + t118 * t335 + (-t188 * t330 + t189 * t335) * qJD(3) + (qJD(1) * t275 + t390) * t331) * pkin(2), -t514, t94, t81, t514, t82, t313, -t180 * t207 + t233 * t313 + t314 * t439 + t347, t207 * t379 - t234 * t313 - t314 * t440 + t360, -t180 * t440 + t233 * t99 + t234 * t342 + t379 * t439 + t380, -t398 * t234 + t39 * t233 - t204 * t207 - g(3) * t437 - t390 * (-t500 - t503) + t440 * t107 + t439 * t106, t530, t50, t49, -t530, t48, t313, -t132 * t144 + t170 * t313 - t314 * t479 + t355, -t144 * t509 - t171 * t313 - t314 * t478 + t365, -t132 * t478 - t170 * t66 + t171 * t404 + t479 * t509 + t386, -g(3) * t415 + t10 * t170 + t11 * t171 - t143 * t144 - t221 * t390 + t478 * t56 - t479 * t55, t18, t6, t17, t19, t16, -t467, t166 * t46 + t384 * t328 + t479 * t119 + (-t137 * t328 - t167 * t427 - t32) * t527 + t354, -t166 * t45 + t384 * t333 + t479 * t121 + (-t137 * t333 + t167 * t428 + t33) * t527 + t351, t119 * t33 + t121 * t32 + (-t119 * t137 - t167 * t46 + (t121 * t167 - t27) * qJD(6)) * t333 + (t121 * t137 - t167 * t45 - t3 + (t119 * t167 - t28) * qJD(6)) * t328 + t378, t8 * t166 - t28 * t33 - t27 * t32 - g(1) * (t337 * t407 + t262) - g(2) * (t332 * t407 + t261) - g(3) * (t319 + t394) + t479 * t53 - t381 * t137 + t352 * t167; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t452, t162, t140, -t452, t141, t321, t189 * t322 + t345, t188 * t322 + t357, 0, 0, -t514, t94, t81, t514, t82, t313, -t108 * t314 + (-t180 * t239 + t313 * t334 - t314 * t430) * pkin(3) + t347, t109 * t314 + (t239 * t379 - t313 * t329 - t314 * t429) * pkin(3) + t360, -t108 * t379 + t109 * t180 + (t342 * t329 + t334 * t99 + (-t180 * t334 - t329 * t379) * qJD(4)) * pkin(3) + t380, -t106 * t108 - t107 * t109 + (-t204 * t239 - t329 * t398 + t334 * t39 + (-t106 * t329 + t107 * t334) * qJD(4) + t521) * pkin(3), t530, t50, t49, -t530, t48, t313, -t132 * t149 + t228 * t313 - t314 * t477 + t355, -t149 * t509 - t229 * t313 - t314 * t476 + t365, -t132 * t476 - t228 * t66 + t229 * t404 + t477 * t509 + t386, t11 * t229 + t10 * t228 - t143 * t149 - g(3) * (t297 + t303) + t476 * t56 - t477 * t55 - t390 * t247, t18, t6, t17, t19, t16, -t467, t222 * t46 + t383 * t328 + t477 * t119 + (-t223 * t427 - t226 * t328 - t30) * t527 + t354, -t222 * t45 + t383 * t333 + t477 * t121 + (t223 * t428 - t226 * t333 + t31) * t527 + t351, t119 * t31 + t121 * t30 + (-t119 * t226 - t223 * t46 + (t121 * t223 - t27) * qJD(6)) * t333 + (t121 * t226 - t223 * t45 - t3 + (t119 * t223 - t28) * qJD(6)) * t328 + t378, t8 * t222 - t28 * t31 - t27 * t30 - g(1) * (t337 * t406 + t262) - g(2) * (t332 * t406 + t261) - g(3) * t394 + t477 * t53 - t381 * t226 + t352 * t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t514, t94, t81, t514, t82, t313, t107 * t314 + t347, t106 * t314 + t360, 0, 0, t530, t50, t49, -t530, t48, t313, t57 * t314 + (t132 * t379 + t313 * t475) * pkin(4) + t355, t314 * t58 + (-t313 * t327 + t379 * t509) * pkin(4) + t365 (t327 * t404 - t475 * t66) * pkin(4) + (t56 - t57) * t509 + (t58 - t55) * t132, t55 * t57 - t56 * t58 + (t10 * t475 + t11 * t327 + t143 * t379 + t520) * pkin(4), t18, -t468 * t527 + t532, t17, t119 * t533 - t43, t377 + t472, -t467, -t119 * t57 - t527 * t34 + t301 * t46 + t385 * t328 + (-t410 + t413) * t333 + t518, -t121 * t57 + t527 * t35 - t301 * t45 + t385 * t333 + (-t529 + t410) * t328 + t517, t119 * t35 + t121 * t34 + (-t132 * t27 - t300 * t46 + (t121 * t300 - t27) * qJD(6)) * t333 + (-t132 * t28 - t300 * t45 - t3 + (t119 * t300 - t28) * qJD(6)) * t328 + t399, t8 * t301 - t28 * t35 - t27 * t34 - t53 * t57 - g(1) * (t337 * t392 + t262) - g(2) * (t332 * t392 + t261) - g(3) * t416 + t352 * t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t404 + t465, t66 - t462, -t463 - t466, t132 * t56 + t509 * t55 - t504 + t76, 0, 0, 0, 0, 0, 0, t377 - t472, -t333 * t527 ^ 2 - t469 - t59 (-t119 * t132 + t45) * t333 + t534 + t481, -t53 * t509 + (t3 + t524) * t333 + (t2 - t523) * t328 - t504; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t470, -t119 ^ 2 + t121 ^ 2, t119 * t527 - t45, -t470, -t402 + (-qJD(6) + t527) * t121, t62, -g(1) * t215 + g(2) * t213 - t121 * t53 + t328 * t376 - t427 * t54 + t12 + t524, g(1) * t216 - g(2) * t214 + t119 * t53 + t523 + (qJD(6) * t54 - t15) * t328 + t376 * t333, 0, 0;];
tau_reg  = t7;
