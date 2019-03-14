% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRPRRP14
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 13:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRRP14_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP14_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP14_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP14_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP14_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP14_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 13:09:59
% EndTime: 2019-03-09 13:10:25
% DurationCPUTime: 14.37s
% Computational Cost: add. (15033->859), mult. (36175->1061), div. (0->0), fcn. (27275->10), ass. (0->392)
t305 = cos(pkin(6));
t312 = cos(qJ(2));
t538 = pkin(1) * t312;
t463 = t305 * t538;
t279 = qJD(1) * t463;
t553 = qJD(3) - t279;
t307 = sin(qJ(4));
t311 = cos(qJ(4));
t415 = pkin(4) * t311 + pkin(10) * t307;
t308 = sin(qJ(2));
t304 = sin(pkin(6));
t483 = qJD(1) * t304;
t451 = t308 * t483;
t542 = pkin(3) + pkin(8);
t574 = -(-t415 - t542) * t451 + qJD(4) * t415 + t553;
t467 = qJD(1) * qJD(2);
t441 = t308 * t467;
t418 = t304 * t441;
t464 = qJDD(1) * t312;
t439 = t304 * t464;
t569 = t418 - t439;
t466 = qJDD(1) * t305;
t283 = qJDD(2) + t466;
t482 = qJD(1) * t305;
t285 = qJD(2) + t482;
t473 = qJD(4) * t312;
t447 = t304 * t473;
t416 = qJD(1) * t447;
t96 = (t283 - t416) * t307 + (qJD(4) * t285 - t569) * t311;
t94 = qJDD(5) + t96;
t481 = qJD(1) * t312;
t450 = t304 * t481;
t191 = t285 * t307 + t311 * t450;
t185 = qJD(5) + t191;
t193 = t285 * t311 - t307 * t450;
t306 = sin(qJ(5));
t310 = cos(qJ(5));
t398 = qJD(4) + t451;
t127 = t310 * t193 + t306 * t398;
t366 = t398 * t127;
t472 = qJD(5) * t306;
t519 = t310 * t94;
t376 = -t185 * t472 + t519;
t476 = qJD(4) * t307;
t454 = -t285 * t476 - t307 * t439 - t311 * t416;
t379 = t311 * t283 + t454;
t330 = t307 * t418 + t379;
t440 = t312 * t467;
t465 = qJDD(1) * t308;
t358 = t440 + t465;
t347 = t358 * t304;
t336 = qJDD(4) + t347;
t369 = t310 * t398;
t54 = -qJD(5) * t369 + t193 * t472 - t306 * t336 - t310 * t330;
t518 = t311 * t54;
t420 = t311 * t451;
t181 = t285 * t306 - t310 * t420;
t474 = qJD(4) * t311;
t572 = t310 * t474 - t181;
t573 = t185 * t572 + t307 * (t376 - t366) - t518;
t314 = -pkin(2) - pkin(9);
t119 = t314 * t285 + t542 * t451 + t553;
t512 = qJ(3) * t308;
t438 = -pkin(1) - t512;
t556 = t312 * t314;
t357 = t438 + t556;
t140 = t357 * t483;
t501 = t304 * t308;
t287 = pkin(8) * t501;
t461 = pkin(1) * qJD(2) * t305;
t424 = qJD(1) * t461;
t460 = pkin(1) * t466;
t422 = t304 * pkin(8) * t440 + qJDD(1) * t287 + t308 * t424 - t312 * t460;
t385 = qJDD(3) + t422;
t72 = pkin(3) * t347 + t314 * t283 + t385;
t256 = pkin(2) * t418;
t511 = qJ(3) * t312;
t399 = pkin(9) * t308 - t511;
t477 = qJD(3) * t308;
t338 = qJD(2) * t399 - t477;
t81 = t256 + (qJD(1) * t338 + qJDD(1) * t357) * t304;
t363 = -t119 * t474 + t140 * t476 - t307 * t72 - t311 * t81;
t66 = t311 * t119 - t307 * t140;
t571 = -t66 * t398 - t363;
t428 = t119 * t476 + t140 * t474 + t307 * t81 - t311 * t72;
t67 = t307 * t119 + t311 * t140;
t568 = t67 * t398 - t428;
t247 = pkin(4) * t307 - pkin(10) * t311 + qJ(3);
t309 = sin(qJ(1));
t490 = t309 * t312;
t313 = cos(qJ(1));
t491 = t308 * t313;
t231 = t305 * t491 + t490;
t489 = t312 * t313;
t493 = t308 * t309;
t233 = -t305 * t493 + t489;
t567 = g(1) * t233 + g(2) * t231;
t554 = qJD(4) * t398;
t264 = t283 * qJ(3);
t265 = t285 * qJD(3);
t423 = pkin(8) * t569 - t308 * t460 - t312 * t424;
t97 = -t264 - t265 + t423;
t76 = -pkin(3) * t569 - t97;
t566 = -t314 * t554 + t76;
t125 = t193 * t306 - t369;
t421 = t307 * t451;
t182 = t306 * t421 - t310 * t450;
t492 = t308 * t310;
t195 = (t306 * t312 + t307 * t492) * t304;
t183 = qJD(1) * t195;
t55 = qJD(5) * t127 + t306 * t330 - t310 * t336;
t520 = t310 * t55;
t523 = t306 * t54;
t565 = t311 * ((t125 * t306 - t127 * t310) * qJD(5) - t520 + t523) + (t125 * t310 + t127 * t306) * t476 + t125 * t183 + t127 * t182;
t405 = t306 * t476 + t182;
t471 = qJD(5) * t310;
t522 = t306 * t94;
t564 = -t405 * t185 + t307 * t55 + t311 * (t125 * t398 + t185 * t471 + t522);
t429 = t127 * t185;
t430 = t125 * t185;
t563 = t306 * (t55 + t429) + t310 * (t54 + t430);
t301 = t304 ^ 2;
t562 = 0.2e1 * t301;
t445 = t314 * t474;
t281 = pkin(2) * t451;
t174 = t399 * t483 + t281;
t539 = pkin(1) * t308;
t296 = t305 * t539;
t498 = t304 * t312;
t486 = pkin(8) * t498 + t296;
t217 = t486 * qJD(1);
t176 = pkin(3) * t450 + t217;
t93 = t311 * t174 + t307 * t176;
t84 = pkin(10) * t450 + t93;
t561 = t247 * t471 + (t445 - t84) * t310 + t574 * t306;
t559 = t55 - t429;
t557 = t191 * t398;
t367 = t193 * t398;
t494 = t307 * t314;
t555 = t306 * t247 + t310 * t494;
t401 = pkin(5) * t310 + qJ(6) * t306;
t219 = t486 * qJD(2);
t382 = -pkin(2) * t312 + t438;
t179 = t382 * t483;
t552 = t179 * t451 + qJDD(3);
t59 = -pkin(4) * t398 - t66;
t31 = t125 * pkin(5) - t127 * qJ(6) + t59;
t540 = pkin(10) * t94;
t551 = t185 * t31 - t540;
t230 = -t305 * t489 + t493;
t497 = t304 * t313;
t375 = -t230 * t307 + t311 * t497;
t106 = t231 * t310 + t306 * t375;
t431 = t185 ^ 2;
t547 = -t125 * t193 + t306 * t431 - t519;
t107 = -t231 * t306 + t310 * t375;
t478 = qJD(2) * t312;
t448 = t304 * t478;
t449 = qJD(2) * t501;
t278 = pkin(2) * t449;
t139 = t304 * t338 + t278;
t452 = -pkin(2) - t538;
t147 = pkin(3) * t501 + t287 + (-pkin(9) + t452) * t305;
t487 = pkin(2) * t498 + qJ(3) * t501;
t201 = -pkin(1) * t304 - t487;
t290 = pkin(9) * t498;
t171 = t201 - t290;
t177 = (t542 * t498 + t296) * qJD(2);
t46 = t311 * t139 + t147 * t474 - t171 * t476 + t307 * t177;
t37 = pkin(10) * t448 + t46;
t87 = t307 * t147 + t311 * t171;
t80 = pkin(10) * t501 + t87;
t200 = -t305 * qJ(3) - t486;
t170 = pkin(3) * t498 - t200;
t228 = t305 * t307 + t311 * t498;
t220 = t228 * pkin(4);
t229 = t305 * t311 - t307 * t498;
t90 = -pkin(10) * t229 + t170 + t220;
t529 = t306 * t90 + t310 * t80;
t280 = t312 * t461;
t298 = t305 * qJD(3);
t425 = t542 * t501;
t146 = -qJD(2) * t425 + t280 + t298;
t419 = t307 * t449;
t158 = qJD(4) * t228 - t419;
t159 = t305 * t474 - t307 * t447 - t311 * t449;
t62 = pkin(4) * t159 + pkin(10) * t158 + t146;
t11 = -qJD(5) * t529 - t306 * t37 + t310 * t62;
t544 = -qJD(5) * t555 + t306 * t84 + t574 * t310;
t543 = t127 ^ 2;
t541 = pkin(5) * t94;
t537 = pkin(2) * t283;
t534 = pkin(9) * t230;
t232 = t305 * t490 + t491;
t533 = pkin(9) * t232;
t532 = pkin(10) * t127;
t444 = t314 * t472;
t528 = (qJD(6) - t444) * t307 + t561 + (t420 + t474) * qJ(6);
t436 = t306 * t314 - pkin(5);
t527 = -pkin(5) * t420 + t436 * t474 - t544;
t526 = qJ(6) * t94;
t60 = pkin(10) * t398 + t67;
t266 = t285 * qJ(3);
t137 = t266 + t176;
t68 = pkin(4) * t191 - pkin(10) * t193 + t137;
t30 = t306 * t68 + t310 * t60;
t23 = qJ(6) * t185 + t30;
t525 = t185 * t23;
t524 = t185 * t30;
t517 = t311 * t55;
t516 = -t307 * t444 + t561;
t515 = -t306 * t445 + t544;
t400 = pkin(5) * t306 - qJ(6) * t310;
t378 = -t314 + t400;
t92 = -t307 * t174 + t176 * t311;
t83 = -pkin(4) * t450 - t92;
t514 = -pkin(5) * t182 + qJ(6) * t183 + (qJD(5) * t401 - qJD(6) * t310) * t311 - t378 * t476 - t83;
t513 = -qJD(6) * t306 + t185 * t400 - t67;
t117 = pkin(4) * t193 + pkin(10) * t191;
t42 = t306 * t117 + t310 * t66;
t509 = t127 * t125;
t508 = t185 * t193;
t507 = t193 * t191;
t503 = t247 * t310;
t502 = t301 * qJD(1) ^ 2;
t500 = t304 * t309;
t499 = t304 * t311;
t496 = t306 * t307;
t495 = t307 * t310;
t29 = -t306 * t60 + t310 * t68;
t488 = qJD(6) - t29;
t485 = t313 * pkin(1) + pkin(8) * t500;
t302 = t308 ^ 2;
t303 = t312 ^ 2;
t484 = t302 - t303;
t480 = qJD(2) * t307;
t479 = qJD(2) * t311;
t475 = qJD(4) * t310;
t470 = qJD(5) * t311;
t469 = qJD(1) * t425 + t553;
t216 = pkin(8) * t451 - t279;
t468 = qJD(3) + t216;
t462 = g(3) * t501;
t459 = t312 * t502;
t458 = t307 * t501;
t457 = t308 * t499;
t456 = g(3) * t457 + t311 * t567;
t453 = t290 + t487;
t443 = t125 ^ 2 - t543;
t442 = pkin(1) * t562;
t437 = -pkin(1) * t309 + pkin(8) * t497;
t17 = pkin(10) * t336 - t363;
t27 = t96 * pkin(4) - pkin(10) * t330 + t76;
t434 = t306 * t17 - t310 * t27 + t60 * t471 + t68 * t472;
t221 = t230 * pkin(2);
t433 = qJ(3) * t231 - t221;
t223 = t232 * pkin(2);
t432 = qJ(3) * t233 - t223;
t86 = t147 * t311 - t307 * t171;
t427 = qJD(1) * (qJD(2) - t285);
t426 = t283 + t466;
t417 = t308 * t440;
t163 = t232 * t307 + t309 * t499;
t104 = t163 * t306 - t233 * t310;
t414 = -g(1) * t106 - g(2) * t104;
t105 = t163 * t310 + t233 * t306;
t413 = -g(1) * t107 - g(2) * t105;
t162 = -t232 * t311 + t307 * t500;
t374 = t230 * t311 + t307 * t497;
t412 = g(1) * t374 + g(2) * t162;
t411 = -g(1) * t230 + g(2) * t232;
t409 = g(1) * t231 - g(2) * t233;
t408 = g(1) * t313 + g(2) * t309;
t404 = -t307 * t475 - t183;
t403 = (qJD(5) * t125 - t54) * pkin(10);
t160 = t229 * t306 - t304 * t492;
t161 = t229 * t310 + t306 * t501;
t402 = -pkin(5) * t160 + qJ(6) * t161;
t77 = qJD(5) * t161 - t158 * t306 - t310 * t448;
t397 = t125 * t77 + t160 * t55;
t22 = -pkin(5) * t185 + t488;
t396 = t22 * t310 - t23 * t306;
t395 = t22 * t306 + t23 * t310;
t394 = t29 * t310 + t30 * t306;
t393 = t29 * t306 - t30 * t310;
t39 = -t306 * t80 + t310 * t90;
t41 = t117 * t310 - t306 * t66;
t384 = qJD(2) * (-qJD(1) * t201 - t179);
t383 = qJD(2) * (t285 + t482);
t218 = -pkin(8) * t449 + t280;
t381 = g(1) * t232 + g(2) * t230 - g(3) * t498;
t380 = t233 * pkin(2) + qJ(3) * t232 + t485;
t47 = -t307 * t139 - t147 * t476 - t171 * t474 + t177 * t311;
t3 = t310 * t17 + t306 * t27 + t68 * t471 - t472 * t60;
t10 = t306 * t62 + t310 * t37 + t90 * t471 - t472 * t80;
t370 = t185 * t59 - t540;
t368 = t311 * t398;
t365 = -qJ(3) * t478 - t477;
t178 = t304 * t365 + t278;
t98 = t256 + (qJD(1) * t365 + qJDD(1) * t382) * t304;
t364 = qJD(1) * t178 + qJDD(1) * t201 + t98;
t79 = -pkin(4) * t501 - t86;
t121 = t230 * t310 + t231 * t496;
t123 = t232 * t310 + t233 * t496;
t194 = t306 * t458 - t310 * t498;
t356 = g(1) * t123 + g(2) * t121 + g(3) * t194;
t122 = -t230 * t306 + t231 * t495;
t124 = -t232 * t306 + t233 * t495;
t355 = -g(1) * t124 - g(2) * t122 - g(3) * t195;
t354 = g(1) * t162 - g(2) * t374 + g(3) * t228;
t353 = -g(1) * t163 + g(2) * t375 - g(3) * t229;
t352 = -t231 * pkin(2) - qJ(3) * t230 + t437;
t351 = t219 * t285 - t409;
t350 = t398 * t483;
t349 = t306 * t430 - t520;
t348 = -pkin(10) * t520 + t353;
t346 = pkin(4) * t458 - pkin(10) * t457 + t453;
t180 = t285 * t310 + t306 * t420;
t345 = t306 * t474 + t307 * t471 + t180;
t344 = -t567 - t423;
t343 = pkin(3) * t500 + pkin(9) * t233 + t380;
t342 = t381 - t422;
t341 = t231 * t247 - t221 - t534;
t340 = t233 * t247 - t223 - t533;
t78 = -t158 * t310 - t229 * t472 + (t306 * t478 + t308 * t471) * t304;
t339 = t125 * t78 + t127 * t77 - t160 * t54 + t161 * t55;
t142 = (t312 * t427 + t465) * t304;
t337 = t125 * t159 + t160 * t94 + t185 * t77 + t228 * t55;
t38 = -pkin(4) * t448 - t47;
t335 = pkin(3) * t497 - pkin(9) * t231 + t352;
t334 = pkin(10) * qJD(5) * t185 - t354;
t333 = g(1) * t104 - g(2) * t106 + g(3) * t160 - t434;
t18 = -pkin(4) * t336 + t428;
t5 = t55 * pkin(5) + t54 * qJ(6) - t127 * qJD(6) + t18;
t332 = -t334 - t5;
t331 = t18 + t334;
t1 = qJD(6) * t185 + t3 + t526;
t2 = qJDD(6) + t434 - t541;
t329 = qJD(5) * t396 + t1 * t310 + t2 * t306;
t328 = -qJD(5) * t394 + t3 * t310 + t306 * t434;
t327 = t163 * pkin(4) + pkin(10) * t162 + t343;
t326 = t217 * t285 + t342;
t325 = -g(1) * t105 + g(2) * t107 - g(3) * t161 + t3;
t323 = pkin(4) * t375 + pkin(10) * t374 + t335;
t322 = t306 * t517 + (t310 * t470 - t405) * t125;
t321 = t127 * t31 + qJDD(6) - t333;
t319 = -t308 * t350 - t554;
t318 = -t185 * t345 - t496 * t94 - t517 + (t421 + t476) * t125;
t317 = t307 * t319 + t311 * t336;
t316 = t345 * t127 - t55 * t495 - t54 * t496 + (t307 * t472 - t572) * t125;
t250 = t308 * t459;
t248 = -pkin(4) - t401;
t245 = t283 * t305;
t234 = -t287 + t463;
t227 = t484 * t502;
t215 = -qJ(3) * t450 + t281;
t206 = t305 * t452 + t287;
t199 = (qJDD(1) * t303 - 0.2e1 * t417) * t301;
t198 = (qJDD(1) * t302 + 0.2e1 * t417) * t301;
t197 = t378 * t311;
t186 = -t306 * t494 + t503;
t184 = -t218 - t298;
t173 = t307 * t436 - t503;
t172 = -t266 - t217;
t169 = qJ(6) * t307 + t555;
t168 = -pkin(2) * t285 + t468;
t154 = t374 * pkin(4);
t152 = t162 * pkin(4);
t143 = (t308 * t464 - t467 * t484) * t562;
t141 = (t308 * t427 - t464) * t304;
t114 = t385 - t537;
t100 = (t308 * t426 + t312 * t383) * t304;
t99 = (t308 * t383 - t312 * t426) * t304;
t69 = pkin(5) * t127 + qJ(6) * t125;
t56 = t185 * t368 + t307 * t94;
t50 = t159 * t185 + t228 * t94;
t48 = -t402 + t79;
t35 = -pkin(5) * t228 - t39;
t34 = qJ(6) * t228 + t529;
t33 = -pkin(5) * t193 - t41;
t32 = qJ(6) * t193 + t42;
t28 = -t54 + t430;
t24 = -t127 * t193 + t310 * t431 + t522;
t21 = t310 * t429 - t523;
t14 = t127 * t78 - t161 * t54;
t13 = -t310 * t518 + (-t306 * t470 + t404) * t127;
t12 = pkin(5) * t77 - qJ(6) * t78 - qJD(6) * t161 + t38;
t9 = -t307 * t54 + t404 * t185 + (t366 + t376) * t311;
t8 = t127 * t159 + t161 * t94 + t185 * t78 - t228 * t54;
t7 = -pkin(5) * t159 - t11;
t6 = qJ(6) * t159 + qJD(6) * t228 + t10;
t4 = [0, 0, 0, 0, 0, qJDD(1), g(1) * t309 - g(2) * t313, t408, 0, 0, t198, t143, t100, t199, -t99, t245, -t422 * t305 + t234 * t283 + (-t441 + t464) * t442 - t351, -t218 * t285 - t283 * t486 + t305 * t423 - t358 * t442 + t411 ((qJD(2) * t216 + qJDD(1) * t486 - t423 + (-qJD(2) * t234 + t218) * qJD(1)) * t312 + (-qJD(2) * t217 - qJDD(1) * t234 + t422) * t308 - t408) * t304, t301 * qJDD(1) * pkin(1) ^ 2 - g(1) * t437 - g(2) * t485 + t216 * t219 + t217 * t218 - t234 * t422 - t423 * t486, t245, -t100, t99, t198, t143, t199 ((qJD(2) * t168 - qJDD(1) * t200 - t97 + (qJD(2) * t206 - t184) * qJD(1)) * t312 + (qJD(2) * t172 + qJDD(1) * t206 + t114 + (qJD(2) * t200 + t219) * qJD(1)) * t308 - t408) * t304, t114 * t305 + t206 * t283 + (t308 * t384 + t312 * t364) * t304 + t351, -t184 * t285 - t200 * t283 - t305 * t97 + (-t308 * t364 + t312 * t384) * t304 - t411, -g(1) * t352 - g(2) * t380 + t114 * t206 + t168 * t219 + t172 * t184 + t179 * t178 + t97 * t200 + t98 * t201, -t193 * t158 + t229 * t330, t158 * t191 - t193 * t159 - t228 * t330 - t229 * t96, -t158 * qJD(4) + t229 * qJDD(4) + ((qJD(1) * t229 + t193) * t478 + (t229 * qJDD(1) + (-t158 + t419) * qJD(1) + t379) * t308) * t304, t159 * t191 + t228 * t96, -t159 * qJD(4) - t228 * qJDD(4) + ((-qJD(1) * t228 - t191) * t478 + (-qJD(1) * t159 - qJDD(1) * t228 - t96) * t308) * t304 (qJD(2) * t473 + (qJDD(4) + (0.2e1 * t440 + t465) * t304) * t308) * t304, -g(1) * t375 - g(2) * t163 + t47 * qJD(4) + t86 * qJDD(4) + t137 * t159 + t146 * t191 + t170 * t96 + t76 * t228 + ((qJD(1) * t86 + t66) * t478 + (qJD(1) * t47 + qJDD(1) * t86 - t428) * t308) * t304, t146 * t193 + t170 * t379 + t76 * t229 - t137 * t158 - t46 * qJD(4) - t87 * qJDD(4) + ((-qJD(1) * t87 - t67) * t478 + (-t87 * qJDD(1) + t363 + (t170 * t480 - t46) * qJD(1)) * t308) * t304 + t412, t66 * t158 - t67 * t159 - t46 * t191 - t47 * t193 + t228 * t363 + t229 * t428 - t330 * t86 - t87 * t96 + t409, -g(1) * t335 - g(2) * t343 + t137 * t146 + t76 * t170 - t363 * t87 - t428 * t86 + t67 * t46 + t66 * t47, t14, -t339, t8, t397, -t337, t50, t11 * t185 + t125 * t38 + t159 * t29 + t160 * t18 - t228 * t434 + t39 * t94 + t55 * t79 + t59 * t77 + t413, -t10 * t185 + t127 * t38 - t159 * t30 + t161 * t18 - t228 * t3 - t529 * t94 - t54 * t79 + t59 * t78 - t414, -t10 * t125 - t11 * t127 - t160 * t3 + t161 * t434 - t29 * t78 - t30 * t77 + t39 * t54 - t529 * t55 - t412, -g(1) * t323 - g(2) * t327 + t30 * t10 + t29 * t11 + t18 * t79 + t3 * t529 + t59 * t38 - t39 * t434, t14, t8, t339, t50, t337, t397, t12 * t125 - t159 * t22 + t160 * t5 - t185 * t7 - t2 * t228 + t31 * t77 - t35 * t94 + t48 * t55 + t413, -t1 * t160 - t125 * t6 + t127 * t7 + t161 * t2 + t22 * t78 - t23 * t77 - t34 * t55 - t35 * t54 - t412, t1 * t228 - t12 * t127 + t159 * t23 - t161 * t5 + t185 * t6 - t31 * t78 + t34 * t94 + t48 * t54 + t414, t1 * t34 + t23 * t6 + t5 * t48 + t31 * t12 + t2 * t35 + t22 * t7 - g(1) * (pkin(5) * t107 + qJ(6) * t106 + t323) - g(2) * (pkin(5) * t105 + qJ(6) * t104 + t327); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t250, t227, t142, t250, -t141, t283, t502 * t539 + t326, pkin(1) * t459 - t216 * t285 - t344 + t462, 0, 0, t283, -t142, t141, -t250, t227, t250 ((-pkin(2) * t308 + t511) * qJDD(1) + ((-qJ(3) * qJD(2) - t172 - t217) * t308 + (-pkin(2) * qJD(2) - t168 + t468) * t312) * qJD(1)) * t304, -t215 * t450 - t326 - 0.2e1 * t537 + t552, 0.2e1 * t264 + t265 + t468 * t285 + (-g(3) * t308 + (t179 * t312 + t215 * t308) * qJD(1)) * t304 + t344, -t114 * pkin(2) - g(1) * t432 - g(2) * t433 - g(3) * t487 - t97 * qJ(3) - t168 * t217 - t172 * t468 - t179 * t215, -t307 * t367 + t311 * t330 (-t96 - t367) * t311 + (t191 * qJD(4) + (t191 - t480) * t451 - t379) * t307, -t193 * t450 + t317, t191 * t368 + t96 * t307, -t307 * qJDD(4) + (t191 * t481 - t307 * t358) * t304 + t319 * t311, -t312 * t350, qJ(3) * t96 - t92 * t398 - t66 * t450 + t469 * t191 + (t137 * t398 + t314 * t336) * t311 + (-t567 - t462 + t566) * t307, qJ(3) * t454 + t93 * t398 + t67 * t450 + (t264 + t566) * t311 + t469 * t193 + (-t137 * qJD(4) - t314 * qJDD(4) + (-t314 * t465 + (-t137 * t308 + (t512 - t556) * qJD(2)) * qJD(1)) * t304) * t307 - t456, t93 * t191 + t92 * t193 + (-t314 * t379 - t451 * t67 + t428) * t311 + (-t314 * t96 + t363 + (-t314 * t479 + t66) * t451) * t307 + ((-t191 * t314 - t67) * t311 + (t193 * t314 + t66) * t307) * qJD(4) + t381, t76 * qJ(3) - t67 * t93 - t66 * t92 - g(1) * (t432 - t533) - g(2) * (t433 - t534) - g(3) * t453 + t469 * t137 + (-t363 * t307 - t428 * t311 + (-t307 * t66 + t311 * t67) * qJD(4)) * t314, t13, t565, t9, t322, -t564, t56, -t125 * t83 - t182 * t59 + t186 * t94 + t515 * t185 + (-t434 + (t125 * t314 - t306 * t59) * qJD(4)) * t307 + (t18 * t306 + t29 * t398 - t314 * t55 + t471 * t59) * t311 + t355, -t127 * t83 - t183 * t59 - t555 * t94 - t516 * t185 + (-t3 + (t127 * t314 - t310 * t59) * qJD(4)) * t307 + (t18 * t310 - t30 * t398 + t314 * t54 - t472 * t59) * t311 + t356, t182 * t30 + t183 * t29 + t186 * t54 - t555 * t55 - t515 * t127 - t516 * t125 + t394 * t476 + (qJD(5) * t393 - t3 * t306 + t310 * t434) * t311 + t456, t3 * t555 - t434 * t186 - t59 * t83 - g(1) * t340 - g(2) * t341 - g(3) * t346 + (-t18 * t311 + t476 * t59) * t314 + t516 * t30 + t515 * t29, t13, t9, -t565, t56, t564, t322, -t173 * t94 - t182 * t31 + t197 * t55 + (-qJD(4) * t306 * t31 - t2) * t307 - t527 * t185 + t514 * t125 + (-t22 * t398 + t306 * t5 + t31 * t471) * t311 + t355, -t169 * t55 - t173 * t54 + t182 * t23 - t183 * t22 + t527 * t127 - t528 * t125 - t396 * t476 + (-qJD(5) * t395 - t1 * t306 + t2 * t310) * t311 + t456, t169 * t94 + t183 * t31 + t197 * t54 + (t31 * t475 + t1) * t307 + t528 * t185 - t514 * t127 + (t23 * t398 + t31 * t472 - t310 * t5) * t311 - t356, t1 * t169 + t5 * t197 + t2 * t173 - g(1) * (pkin(5) * t124 + qJ(6) * t123 + t340) - g(2) * (pkin(5) * t122 + qJ(6) * t121 + t341) - g(3) * (pkin(5) * t195 + qJ(6) * t194 + t346) + t514 * t31 + t528 * t23 + t527 * t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t142, t250 + t283, -t285 ^ 2 - t302 * t502, t172 * t285 - t342 - t537 + t552, 0, 0, 0, 0, 0, 0, -t285 * t191 + t317, -t307 * t336 - t285 * t193 + (-t398 * t451 - t554) * t311 (-t379 - t557) * t311 + (t193 * qJD(4) - t96 + (t193 - t479) * t451) * t307, -t137 * t285 + t307 * t571 + t311 * t568 - t381, 0, 0, 0, 0, 0, 0, t318, -t573, t316, -t180 * t29 - t181 * t30 + (-qJD(4) * t393 - t18) * t311 + (t398 * t59 + t328) * t307 - t381, 0, 0, 0, 0, 0, 0, t318, t316, t573, t180 * t22 - t181 * t23 + (qJD(4) * t395 - t5) * t311 + (t31 * t398 + t329) * t307 - t381; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t507, -t191 ^ 2 + t193 ^ 2, t330 + t557, -t507, -t96 + t367, t336, -t137 * t193 + t354 + t568, t137 * t191 - t353 - t571, 0, 0, t21, -t563, t24, t349, -t547, -t508, -pkin(4) * t55 - t125 * t67 - t185 * t41 - t193 * t29 + t306 * t370 - t310 * t331, pkin(4) * t54 - t127 * t67 + t185 * t42 + t193 * t30 + t306 * t331 + t310 * t370, t125 * t42 + t127 * t41 + (-t191 * t29 + t3 + (-t29 + t532) * qJD(5)) * t310 + (t434 + t403 - t524) * t306 + t348, -t18 * pkin(4) + g(1) * t152 - g(2) * t154 + g(3) * t220 - t29 * t41 - t30 * t42 - t59 * t67 + (t328 + t353) * pkin(10), t21, t24, t563, -t508, t547, t349, t513 * t125 + t185 * t33 + t193 * t22 + t248 * t55 + t306 * t551 + t332 * t310, t125 * t32 - t127 * t33 + (t191 * t22 + t1 + (t22 + t532) * qJD(5)) * t310 + (t2 + t403 - t525) * t306 + t348, -t513 * t127 - t185 * t32 - t193 * t23 + t248 * t54 + t332 * t306 - t310 * t551, t5 * t248 - t23 * t32 - t22 * t33 - g(1) * (-t162 * t401 - t152) - g(2) * (t374 * t401 + t154) - g(3) * (-t228 * t401 - t220) + t513 * t31 + (t329 + t353) * pkin(10); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t509, -t443, t28, -t509, -t559, t94, -t127 * t59 + t333 + t524, t125 * t59 + t185 * t29 - t325, 0, 0, t509, t28, t443, t94, t559, -t509, -t125 * t69 - t321 + t524 + 0.2e1 * t541, pkin(5) * t54 - qJ(6) * t55 + (t23 - t30) * t127 + (t22 - t488) * t125, 0.2e1 * t526 - t125 * t31 + t127 * t69 + (0.2e1 * qJD(6) - t29) * t185 + t325, t1 * qJ(6) - t2 * pkin(5) - t31 * t69 - t22 * t30 - g(1) * (-pkin(5) * t104 + qJ(6) * t105) - g(2) * (pkin(5) * t106 - qJ(6) * t107) - g(3) * t402 + t488 * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t509 - t94, t28, -t431 - t543, t321 - t525 - t541;];
tau_reg  = t4;