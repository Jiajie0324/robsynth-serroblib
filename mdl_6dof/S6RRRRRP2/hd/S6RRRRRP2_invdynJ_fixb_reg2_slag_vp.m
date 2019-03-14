% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRRRP2
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
% Datum: 2019-03-10 01:04
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRP2_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP2_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP2_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP2_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP2_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP2_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:03:19
% EndTime: 2019-03-10 01:03:45
% DurationCPUTime: 13.57s
% Computational Cost: add. (25234->788), mult. (59336->915), div. (0->0), fcn. (44364->14), ass. (0->372)
t313 = cos(qJ(5));
t459 = qJD(5) * t313;
t311 = sin(qJ(2));
t314 = cos(qJ(2));
t534 = sin(qJ(3));
t536 = cos(qJ(3));
t362 = t534 * t311 - t536 * t314;
t221 = t362 * qJD(1);
t235 = t311 * t536 + t314 * t534;
t222 = t235 * qJD(1);
t310 = sin(qJ(4));
t535 = cos(qJ(4));
t174 = t535 * t221 + t222 * t310;
t569 = t174 * t313;
t575 = t459 + t569;
t432 = t536 * qJD(3);
t361 = t536 * qJD(2) + t432;
t172 = qJD(5) + t174;
t309 = sin(qJ(5));
t372 = -t310 * t221 + t222 * t535;
t304 = qJD(2) + qJD(3);
t425 = qJD(4) + t304;
t159 = t309 * t372 - t313 * t425;
t498 = t159 * t309;
t303 = qJDD(2) + qJDD(3);
t417 = qJDD(4) + t303;
t353 = t362 * qJDD(1);
t430 = t534 * qJD(3);
t360 = t534 * qJD(2) + t430;
t427 = t536 * qJDD(1);
t462 = qJD(1) * t311;
t426 = t534 * qJDD(1);
t563 = -qJD(1) * t361 - t426;
t158 = -t311 * t427 + t314 * t563 + t360 * t462;
t566 = t304 * t235;
t327 = t566 * qJD(1);
t434 = qJD(4) * t535;
t461 = qJD(4) * t310;
t547 = -t158 * t535 - t221 * t434 - t222 * t461 - t310 * t327;
t321 = -t310 * t353 + t547;
t564 = qJD(5) * t425 + t321;
t71 = t309 * t564 - t313 * t417 + t372 * t459;
t67 = t71 * t313;
t35 = t172 * t498 - t67;
t323 = -t353 - t327;
t161 = t309 * t425 + t313 * t372;
t381 = t159 * t313 + t161 * t309;
t460 = qJD(5) * t309;
t70 = -t309 * t417 - t313 * t564 + t372 * t460;
t12 = t159 * t459 + t161 * t460 + t174 * t381 + t309 * t71 + t70 * t313;
t316 = -pkin(8) - pkin(7);
t266 = t316 * t314;
t246 = qJD(1) * t266;
t223 = t534 * t246;
t265 = t316 * t311;
t244 = qJD(1) * t265;
t520 = qJD(2) * pkin(2);
t230 = t244 + t520;
t181 = t536 * t230 + t223;
t215 = t222 * pkin(9);
t156 = -t215 + t181;
t143 = t304 * pkin(3) + t156;
t227 = t536 * t246;
t182 = t230 * t534 - t227;
t524 = t221 * pkin(9);
t157 = t182 - t524;
t152 = t535 * t157;
t105 = t310 * t143 + t152;
t102 = pkin(10) * t425 + t105;
t302 = t314 * pkin(2);
t295 = t302 + pkin(1);
t264 = t295 * qJD(1);
t196 = pkin(3) * t221 - t264;
t113 = pkin(4) * t174 - pkin(10) * t372 + t196;
t57 = -t102 * t309 + t113 * t313;
t469 = qJD(6) - t57;
t43 = -pkin(5) * t172 + t469;
t308 = qJ(2) + qJ(3);
t301 = qJ(4) + t308;
t290 = sin(t301);
t282 = g(3) * t290;
t291 = cos(t301);
t315 = cos(qJ(1));
t480 = t291 * t315;
t312 = sin(qJ(1));
t481 = t291 * t312;
t448 = g(1) * t480 + g(2) * t481 + t282;
t423 = t310 * t158 + t535 * t323;
t97 = qJD(4) * t372 - t423;
t96 = qJDD(5) + t97;
t521 = qJ(6) * t96;
t458 = qJD(1) * qJD(2);
t428 = t314 * t458;
t457 = t311 * qJDD(1);
t193 = qJDD(2) * pkin(2) - t316 * (-t428 - t457);
t429 = t311 * t458;
t456 = t314 * qJDD(1);
t195 = t316 * (-t429 + t456);
t122 = -qJD(3) * t182 + t536 * t193 + t195 * t534;
t88 = t303 * pkin(3) + t158 * pkin(9) + t122;
t121 = t534 * t193 - t536 * t195 + t230 * t432 + t246 * t430;
t95 = pkin(9) * t323 + t121;
t23 = t143 * t434 - t157 * t461 + t310 * t88 + t535 * t95;
t21 = pkin(10) * t417 + t23;
t283 = pkin(2) * t429;
t504 = qJDD(1) * pkin(1);
t27 = -pkin(2) * t456 - pkin(3) * t323 + t97 * pkin(4) - pkin(10) * t321 + t283 - t504;
t6 = -t102 * t460 + t113 * t459 + t313 * t21 + t309 * t27;
t2 = qJD(6) * t172 + t521 + t6;
t422 = t102 * t459 + t113 * t460 + t309 * t21 - t313 * t27;
t538 = pkin(5) * t96;
t4 = qJDD(6) + t422 - t538;
t560 = t2 * t313 + t4 * t309;
t574 = t43 * t575 - t448 + t560;
t570 = t174 * t309;
t34 = -t67 + (t460 + t570) * t159;
t65 = t70 * t309;
t573 = t161 * t575 - t65;
t572 = -t161 * t372 + t172 * t575 + t309 * t96;
t507 = -t172 * t460 + t313 * t96;
t358 = -t159 * t372 + t172 * t570 - t507;
t151 = t310 * t157;
t104 = t143 * t535 - t151;
t101 = -pkin(4) * t425 - t104;
t60 = t159 * pkin(5) - t161 * qJ(6) + t101;
t517 = t174 * t60;
t503 = t101 * t174;
t568 = t174 * t372;
t482 = t290 * t315;
t483 = t290 * t312;
t565 = g(1) * t482 + g(2) * t483;
t397 = t313 * pkin(5) + t309 * qJ(6);
t91 = -t174 ^ 2 + t372 ^ 2;
t134 = pkin(4) * t372 + pkin(10) * t174;
t349 = t196 * t174 - t23 + t448;
t80 = t174 * t425 + t321;
t328 = t304 * t362;
t342 = t535 * t362;
t118 = qJD(4) * t342 + t235 * t461 + t310 * t566 + t328 * t535;
t354 = t310 * t362;
t189 = t235 * t535 - t354;
t562 = t189 * (qJD(5) * (-t161 * t313 + t498) - t67 + t65) + t381 * t118;
t531 = pkin(5) * t372;
t294 = pkin(2) * t536 + pkin(3);
t413 = t534 * t535;
t218 = pkin(2) * t413 + t310 * t294;
t212 = pkin(10) + t218;
t440 = t534 * t310;
t179 = t294 * t434 + (-qJD(4) * t440 + (t535 * t536 - t440) * qJD(3)) * pkin(2);
t487 = t179 * t313;
t558 = -t159 * t487 - t212 * t67;
t532 = pkin(3) * t310;
t292 = pkin(10) + t532;
t416 = pkin(3) * t434;
t389 = t313 * t416;
t557 = -t159 * t389 - t292 * t67;
t556 = t172 * t372;
t552 = t181 * t304;
t169 = t372 * qJ(6);
t109 = t156 * t310 + t152;
t406 = pkin(3) * t461 - t109;
t188 = t235 * t310 + t342;
t202 = pkin(3) * t362 - t295;
t130 = t188 * pkin(4) - t189 * pkin(10) + t202;
t197 = t536 * t265 + t266 * t534;
t170 = -t235 * pkin(9) + t197;
t198 = t534 * t265 - t536 * t266;
t171 = -pkin(9) * t362 + t198;
t132 = t310 * t170 + t171 * t535;
t550 = t309 * t130 + t313 * t132;
t191 = t536 * t244 + t223;
t164 = -t215 + t191;
t190 = -t244 * t534 + t227;
t364 = t190 + t524;
t116 = t164 * t535 + t310 * t364;
t549 = t179 - t116;
t468 = -t164 * t310 + t535 * t364 + t294 * t461 + (qJD(4) * t413 + (t310 * t536 + t413) * qJD(3)) * pkin(2);
t214 = pkin(5) * t460 - qJ(6) * t459 - t309 * qJD(6);
t548 = pkin(5) * t570 - qJ(6) * t569 + t214;
t466 = t291 * pkin(4) + t290 * pkin(10);
t403 = g(1) * t315 + g(2) * t312;
t58 = t102 * t313 + t113 * t309;
t44 = qJ(6) * t172 + t58;
t526 = g(3) * t309;
t449 = -t291 * t526 + t309 * t565;
t421 = t143 * t461 + t157 * t434 + t310 * t95 - t535 * t88;
t22 = -pkin(4) * t417 + t421;
t8 = t71 * pkin(5) + t70 * qJ(6) - t161 * qJD(6) + t22;
t522 = t8 * t309;
t546 = -t372 * t44 + t449 - t522;
t363 = t101 * t459 + t22 * t309 + t372 * t58 - t449;
t467 = t565 * t313;
t59 = t60 * t460;
t545 = t43 * t372 + t467 + t59;
t544 = t101 * t460 - t57 * t372 + t467;
t119 = -qJD(4) * t354 + t235 * t434 - t310 * t328 + t535 * t566;
t502 = t118 * t309;
t371 = t189 * t459 - t502;
t486 = t189 * t309;
t541 = t119 * t159 + t172 * t371 + t188 * t71 + t486 * t96;
t528 = g(3) * t291;
t339 = -t196 * t372 - t421 - t528 + t565;
t81 = t304 * t372 + t423;
t445 = qJD(2) * t316;
t245 = t311 * t445;
t247 = t314 * t445;
t140 = t536 * t245 + t534 * t247 + t265 * t432 + t266 * t430;
t127 = -pkin(9) * t566 + t140;
t400 = -t245 * t534 + t536 * t247;
t322 = pkin(9) * t328 - t265 * t430 + t266 * t432 + t400;
t41 = t127 * t535 + t170 * t434 - t171 * t461 + t310 * t322;
t298 = t311 * t520;
t178 = pkin(3) * t566 + t298;
t53 = t119 * pkin(4) + t118 * pkin(10) + t178;
t15 = -qJD(5) * t550 - t309 * t41 + t313 * t53;
t539 = t161 ^ 2;
t537 = pkin(10) * t96;
t533 = pkin(3) * t222;
t300 = cos(t308);
t527 = g(3) * t300;
t525 = g(3) * t314;
t5 = t6 * t313;
t519 = t172 * t44;
t518 = t172 * t58;
t516 = t212 * t96;
t515 = t292 * t96;
t511 = t548 + t468;
t509 = t548 + t406;
t396 = pkin(5) * t309 - qJ(6) * t313;
t508 = t174 * t396 - t105 + t214;
t506 = pkin(7) * qJDD(1);
t505 = qJD(5) * t60;
t501 = t118 * t313;
t500 = t159 * t212;
t499 = t159 * t292;
t497 = t161 * t159;
t485 = t189 * t313;
t484 = t222 * t221;
t299 = sin(t308);
t479 = t299 * t312;
t478 = t299 * t315;
t477 = t300 * t312;
t476 = t300 * t315;
t305 = -pkin(9) + t316;
t475 = t305 * t315;
t473 = t309 * t312;
t472 = t312 * t313;
t471 = t313 * t315;
t470 = t315 * t309;
t77 = t313 * t104 + t309 * t134;
t110 = t156 * t535 - t151;
t123 = t134 + t533;
t73 = t313 * t110 + t309 * t123;
t296 = pkin(2) * t462;
t117 = t123 + t296;
t75 = t313 * t116 + t309 * t117;
t287 = pkin(3) * t300;
t465 = t287 + t302;
t306 = t311 ^ 2;
t307 = t314 ^ 2;
t464 = t306 - t307;
t463 = t306 + t307;
t455 = t535 * pkin(3);
t318 = qJD(1) ^ 2;
t451 = t311 * t318 * t314;
t243 = pkin(1) + t465;
t229 = t315 * t243;
t450 = pkin(4) * t480 + pkin(10) * t482 + t229;
t447 = t287 + t466;
t444 = t158 * t536;
t443 = t309 * t535;
t442 = t313 * t535;
t438 = t212 * t459;
t437 = t292 * t459;
t435 = t159 ^ 2 - t539;
t131 = -t535 * t170 + t171 * t310;
t418 = t5 - t448;
t415 = t291 * t397 + t466;
t412 = t311 * t428;
t251 = pkin(10) * t481;
t411 = -pkin(4) * t483 + t251;
t254 = pkin(10) * t480;
t410 = -pkin(4) * t482 + t254;
t409 = -g(1) * t483 + g(2) * t482;
t206 = t291 * t473 + t471;
t208 = t291 * t470 - t472;
t405 = g(1) * t206 - g(2) * t208;
t207 = t291 * t472 - t470;
t209 = t291 * t471 + t473;
t404 = g(1) * t207 - g(2) * t209;
t402 = g(1) * t312 - g(2) * t315;
t217 = -pkin(2) * t440 + t294 * t535;
t398 = (qJD(5) * t159 - t70) * pkin(10);
t394 = t309 * t44 - t313 * t43;
t393 = t309 * t43 + t313 * t44;
t392 = t309 * t58 + t313 * t57;
t391 = t309 * t57 - t313 * t58;
t388 = t287 + t415;
t387 = t503 - t516;
t386 = t503 - t515;
t385 = t161 * t179 - t212 * t70;
t383 = -t104 * t174 + t105 * t372;
t76 = -t104 * t309 + t134 * t313;
t72 = -t110 * t309 + t123 * t313;
t74 = -t116 * t309 + t117 * t313;
t83 = t130 * t313 - t132 * t309;
t377 = -t569 * t57 - t570 * t58 + t418;
t376 = pkin(4) + t397;
t375 = -pkin(10) * qJD(5) * t172 - t528;
t374 = t403 * t299;
t373 = -0.2e1 * pkin(1) * t458 - pkin(7) * qJDD(2);
t370 = -t189 * t460 - t501;
t369 = -t179 * t309 - t438;
t368 = -t212 * t460 + t487;
t14 = t130 * t459 - t132 * t460 + t309 * t53 + t313 * t41;
t359 = t161 * t416 - t292 * t70;
t355 = -t569 * t60 + t546;
t352 = -t309 * t416 - t437;
t351 = t292 * t460 - t389;
t350 = g(1) * t208 + g(2) * t206 + t290 * t526 - t422;
t317 = qJD(2) ^ 2;
t348 = -pkin(7) * t317 + t402 + 0.2e1 * t504;
t347 = pkin(1) * t318 + t403 - t506;
t345 = g(1) * t476 + g(2) * t477 + g(3) * t299 - t264 * t221 - t121;
t344 = -t44 * t570 + t574;
t341 = (-t8 - t528) * t313 + t545;
t340 = (-t22 - t528) * t313 + t544;
t338 = (-g(1) * (-t243 - t466) + g(2) * t305) * t312;
t337 = -qJD(5) * t394 + t560;
t336 = -qJD(5) * t392 + t309 * t422 + t5;
t335 = t159 * t371 + t486 * t71;
t42 = qJD(4) * t132 + t310 * t127 - t535 * t322;
t334 = -g(1) * t410 - g(2) * t411;
t333 = t161 * t60 + qJDD(6) - t350;
t332 = -g(1) * t209 - g(2) * t207 - t282 * t313 + t6;
t331 = t403 * t376 * t290;
t326 = g(1) * t478 + g(2) * t479 + t264 * t222 + t122 - t527;
t324 = -g(1) * t254 - g(2) * t251 + t331;
t320 = -t161 * t172 + t71;
t293 = -t455 - pkin(4);
t248 = -pkin(2) * t311 - pkin(3) * t299;
t233 = t315 * t248;
t232 = t312 * t248;
t231 = -t455 - t376;
t216 = -qJDD(1) * t295 + t283;
t211 = -pkin(4) - t217;
t199 = t296 + t533;
t194 = -t376 - t217;
t163 = -t221 ^ 2 + t222 ^ 2;
t141 = -qJD(3) * t198 + t400;
t137 = pkin(3) * t327 + qJDD(1) * t202 + t283;
t136 = t222 * t304 + t323;
t135 = t221 * t304 - t158;
t114 = pkin(5) * t161 + qJ(6) * t159;
t85 = t189 * t396 + t131;
t69 = -pkin(5) * t188 - t83;
t68 = qJ(6) * t188 + t550;
t62 = pkin(10) * t67;
t55 = -t76 - t531;
t54 = t77 + t169;
t51 = -t74 - t531;
t50 = t169 + t75;
t49 = -t72 - t531;
t48 = t169 + t73;
t38 = t159 * t172 - t70;
t36 = t119 * t172 + t188 * t96;
t17 = t161 * t370 - t485 * t70;
t16 = -t396 * t118 + (qJD(5) * t397 - qJD(6) * t313) * t189 + t42;
t11 = t119 * t161 + t172 * t370 - t188 * t70 + t485 * t96;
t10 = -pkin(5) * t119 - t15;
t9 = qJ(6) * t119 + qJD(6) * t188 + t14;
t1 = [0, 0, 0, 0, 0, qJDD(1), t402, t403, 0, 0, qJDD(1) * t306 + 0.2e1 * t412, 0.2e1 * t311 * t456 - 0.2e1 * t458 * t464, qJDD(2) * t311 + t314 * t317, qJDD(1) * t307 - 0.2e1 * t412, qJDD(2) * t314 - t311 * t317, 0, t311 * t373 + t314 * t348, -t311 * t348 + t314 * t373, 0.2e1 * t463 * t506 - t403, -g(1) * (-pkin(1) * t312 + pkin(7) * t315) - g(2) * (pkin(1) * t315 + pkin(7) * t312) + (pkin(7) ^ 2 * t463 + pkin(1) ^ 2) * qJDD(1), -t158 * t235 - t222 * t328 (-t361 * t221 + t235 * (-qJD(1) * t360 + t427) - t444 - t222 * t360) * t314 + (t158 * t534 + t221 * t360 - t222 * t361 + t235 * t563) * t311, t235 * t303 - t304 * t328, t221 * t566 - t323 * t362, -t303 * t362 - t304 * t566, 0, g(1) * t477 - g(2) * t476 + t141 * t304 + t197 * t303 + t216 * t362 + t221 * t298 - t264 * t566 + t295 * t323, -g(1) * t479 + g(2) * t478 - t140 * t304 + t295 * t158 - t198 * t303 + t216 * t235 + t222 * t298 + t264 * t328, -t122 * t235 - t140 * t221 - t141 * t222 + t197 * t158 - t182 * t566 + t198 * t323 - t403 + (-t121 + t552) * t362, t121 * t198 + t182 * t140 + t122 * t197 + t181 * t141 - t216 * t295 - t264 * t298 - g(1) * (-t295 * t312 - t315 * t316) - g(2) * (t295 * t315 - t312 * t316) -t372 * t118 + (t310 * (-t311 * t426 + t314 * t427) + t547) * t189, t118 * t174 - t119 * t372 - t188 * t321 - t189 * t97, -t118 * t425 + t189 * t417, t119 * t174 + t188 * t97, -t119 * t425 - t188 * t417, 0, t196 * t119 - t131 * t417 + t137 * t188 + t178 * t174 + t202 * t97 + t291 * t402 - t42 * t425, -t196 * t118 - t132 * t417 + t137 * t189 + t178 * t372 + t202 * t321 - t41 * t425 + t409, t104 * t118 - t105 * t119 + t131 * t321 - t132 * t97 - t41 * t174 - t23 * t188 + t189 * t421 + t372 * t42 - t403, t23 * t132 + t105 * t41 + t421 * t131 - t104 * t42 + t137 * t202 + t196 * t178 - g(1) * (-t243 * t312 - t475) - g(2) * (-t305 * t312 + t229) t17, t562, t11, t335, -t541, t36, t101 * t371 + t119 * t57 + t131 * t71 + t15 * t172 + t159 * t42 - t188 * t422 + t22 * t486 + t83 * t96 + t404, t101 * t370 - t119 * t58 - t131 * t70 - t14 * t172 + t161 * t42 - t188 * t6 + t22 * t485 - t550 * t96 - t405, -t14 * t159 - t15 * t161 + t70 * t83 - t71 * t550 + t392 * t118 + (qJD(5) * t391 - t309 * t6 + t313 * t422) * t189 - t409, g(1) * t475 - g(2) * t450 + t101 * t42 + t22 * t131 + t58 * t14 + t57 * t15 - t422 * t83 + t550 * t6 + t338, t17, t11, -t562, t36, t541, t335, -t60 * t502 - t10 * t172 - t119 * t43 + t159 * t16 - t188 * t4 - t69 * t96 + t71 * t85 + (t459 * t60 + t522) * t189 + t404, t10 * t161 - t159 * t9 - t68 * t71 - t69 * t70 + t394 * t118 + (-qJD(5) * t393 - t2 * t309 + t313 * t4) * t189 - t409, t60 * t501 + t119 * t44 - t16 * t161 + t172 * t9 + t188 * t2 + t68 * t96 + t70 * t85 + (-t8 * t313 + t59) * t189 + t405, t2 * t68 + t44 * t9 + t8 * t85 + t60 * t16 + t4 * t69 + t43 * t10 - g(1) * (-pkin(5) * t207 - qJ(6) * t206 - t475) - g(2) * (pkin(5) * t209 + qJ(6) * t208 + t450) + t338; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t451, t464 * t318, t457, t451, t456, qJDD(2), t311 * t347 - t525, g(3) * t311 + t314 * t347, 0, 0, t484, t163, t135, -t484, t136, t303, -t190 * t304 + (-t221 * t462 + t303 * t536 - t304 * t430) * pkin(2) + t326, t191 * t304 + (-t222 * t462 - t303 * t534 - t304 * t432) * pkin(2) + t345 (t182 + t190) * t222 - (t181 - t191) * t221 + (-t221 * t432 + t222 * t430 + t323 * t534 + t444) * pkin(2), -t181 * t190 - t182 * t191 + (t536 * t122 + t121 * t534 - t525 + (-t181 * t534 + t182 * t536) * qJD(3) + (qJD(1) * t264 + t403) * t311) * pkin(2), t568, t91, t80, -t568, t81, t417, -t199 * t174 + t217 * t417 - t425 * t468 + t339, -t199 * t372 - t218 * t417 - t425 * t549 + t349, -t174 * t549 - t217 * t321 - t218 * t97 + t372 * t468 + t383, -g(3) * t465 - t468 * t104 + t105 * t549 - t196 * t199 - t217 * t421 + t23 * t218 - t403 * t248, t573, -t12, t572, t35, -t358, -t556, t211 * t71 + t387 * t309 + t468 * t159 + (t369 - t74) * t172 + t340, -t211 * t70 + t387 * t313 + t468 * t161 + (-t368 + t75) * t172 + t363, t159 * t75 + t161 * t74 + (t161 * t212 - t57) * t459 + (t422 + (-t58 + t500) * qJD(5) + t385) * t309 + t377 + t558, t22 * t211 - t58 * t75 - t57 * t74 - g(1) * (t233 + t410) - g(2) * (t232 + t411) - g(3) * (t302 + t447) - t391 * t179 + t468 * t101 + t336 * t212, t573, t572, t12, -t556, t358, t34, t194 * t71 + (-t516 + t517) * t309 + t511 * t159 + (t369 + t51) * t172 + t341, t159 * t50 + (-t51 + t438) * t161 + ((-t44 + t500) * qJD(5) + t385) * t309 + t344 + t558, t194 * t70 + (-t505 + t516) * t313 - t511 * t161 + (t368 - t50) * t172 + t355, t8 * t194 - t44 * t50 - t43 * t51 - g(1) * (t233 + t254) - g(2) * (t232 + t251) - g(3) * (t302 + t388) + t511 * t60 + t393 * t179 + t331 + t337 * t212; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t484, t163, t135, -t484, t136, t303, t182 * t304 + t326, t345 + t552, 0, 0, t568, t91, t80, -t568, t81, t417, t109 * t425 + (-t222 * t174 + t417 * t535 - t425 * t461) * pkin(3) + t339, t110 * t425 + (-t222 * t372 - t310 * t417 - t425 * t434) * pkin(3) + t349, -t321 * t455 - t97 * t532 + t383 + t406 * t372 + (t110 - t416) * t174, t104 * t109 - t105 * t110 + (-t535 * t421 - t527 - t196 * t222 + t23 * t310 + t374 + (-t104 * t310 + t105 * t535) * qJD(4)) * pkin(3), t573, -t12, t572, t35, -t358, -t556, t293 * t71 + t386 * t309 + t406 * t159 + (-t72 + t352) * t172 + t340, -t293 * t70 + t386 * t313 + t406 * t161 + (t73 + t351) * t172 + t363, t73 * t159 + t72 * t161 + (t161 * t292 - t57) * t459 + (t422 + (-t58 + t499) * qJD(5) + t359) * t309 + t377 + t557, t22 * t293 - t58 * t73 - t57 * t72 - t101 * t109 - g(3) * t447 + (t374 + (t101 * t310 + t442 * t58 - t443 * t57) * qJD(4)) * pkin(3) + t336 * t292 + t334, t573, t572, t12, -t556, t358, t34, t231 * t71 + (-t515 + t517) * t309 + t509 * t159 + (t49 + t352) * t172 + t341, t48 * t159 + (-t49 + t437) * t161 + ((-t44 + t499) * qJD(5) + t359) * t309 + t344 + t557, t231 * t70 + (-t505 + t515) * t313 - t509 * t161 + (-t48 - t351) * t172 + t355, t8 * t231 - t44 * t48 - t43 * t49 - g(3) * t388 + t509 * t60 + (t374 + (t43 * t443 + t44 * t442) * qJD(4)) * pkin(3) + t337 * t292 + t324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t568, t91, t80, -t568, t81, t417, t105 * t425 + t339, t104 * t425 + t349, 0, 0, t573, -t12, t572, t35, -t358, -t556, -pkin(4) * t71 - t105 * t159 - t172 * t76 + (-t537 + t503) * t309 + (-t22 + t375) * t313 + t544, pkin(4) * t70 - pkin(10) * t507 + t101 * t569 - t105 * t161 + t172 * t77 + t363, t159 * t77 + t161 * t76 - t62 + (-t174 * t57 + (pkin(10) * t161 - t57) * qJD(5)) * t313 + (t398 + t422 - t518) * t309 + t418, -t22 * pkin(4) + pkin(10) * t336 - g(3) * t466 - t101 * t105 - t57 * t76 - t58 * t77 + t334, t573, t572, t12, -t556, t358, t34, t172 * t55 - t376 * t71 + (-t537 + t517) * t309 + t508 * t159 + (t375 - t8) * t313 + t545, t159 * t54 - t62 + (pkin(10) * t459 - t55) * t161 + (t398 - t519) * t309 + t574, -t376 * t70 + (-pkin(10) * t460 - t54) * t172 - t508 * t161 + (-t172 * t60 + t537) * t313 + t546, pkin(10) * t337 - g(3) * t415 - t376 * t8 - t43 * t55 - t44 * t54 + t508 * t60 + t324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t497, -t435, t38, -t497, -t320, t96, -t101 * t161 + t350 + t518, t101 * t159 + t172 * t57 - t332, 0, 0, t497, t38, t435, t96, t320, -t497, -t114 * t159 - t333 + t518 + 0.2e1 * t538, pkin(5) * t70 - qJ(6) * t71 + (t44 - t58) * t161 + (t43 - t469) * t159, 0.2e1 * t521 + t114 * t161 - t159 * t60 + (0.2e1 * qJD(6) - t57) * t172 + t332, t2 * qJ(6) - t4 * pkin(5) - t60 * t114 - t43 * t58 - g(1) * (-pkin(5) * t208 + qJ(6) * t209) - g(2) * (-pkin(5) * t206 + qJ(6) * t207) + t469 * t44 + t396 * t282; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t497 - t96, t38, -t172 ^ 2 - t539, t333 - t519 - t538;];
tau_reg  = t1;