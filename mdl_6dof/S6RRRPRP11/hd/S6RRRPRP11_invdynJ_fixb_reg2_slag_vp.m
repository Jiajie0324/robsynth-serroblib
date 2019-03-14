% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRPRP11
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 17:50
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRPRP11_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP11_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP11_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP11_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP11_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP11_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 17:49:11
% EndTime: 2019-03-09 17:49:40
% DurationCPUTime: 16.32s
% Computational Cost: add. (15800->845), mult. (38306->1042), div. (0->0), fcn. (29970->10), ass. (0->395)
t309 = sin(qJ(3));
t313 = cos(qJ(3));
t509 = cos(pkin(6));
t417 = t509 * qJD(1);
t372 = t417 + qJD(2);
t310 = sin(qJ(2));
t306 = sin(pkin(6));
t466 = qJD(1) * t306;
t437 = t310 * t466;
t200 = t309 * t372 + t313 * t437;
t314 = cos(qJ(2));
t436 = t314 * t466;
t271 = -qJD(3) + t436;
t408 = t509 * qJDD(1);
t366 = t408 + qJDD(2);
t261 = t313 * t366;
t345 = qJD(3) * t372;
t336 = t309 * t345 - t261;
t451 = qJDD(1) * t310;
t423 = t309 * t451;
t460 = qJD(3) * t313;
t432 = t310 * t460;
t464 = qJD(2) * t314;
t317 = (qJD(1) * (t309 * t464 + t432) + t423) * t306 + t336;
t580 = t200 * t271 + t317;
t484 = t306 * t313;
t237 = t309 * t509 + t310 * t484;
t429 = t306 * t464;
t167 = qJD(3) * t237 + t309 * t429;
t198 = t309 * t437 - t313 * t372;
t486 = t306 * t310;
t446 = t309 * t486;
t236 = -t313 * t509 + t446;
t579 = t198 * t167 + t236 * t317;
t397 = qJD(3) * t446;
t424 = t306 * t451;
t452 = qJD(1) * qJD(2);
t425 = t314 * t452;
t570 = t306 * t425 + t424;
t117 = qJD(1) * t397 - t309 * t366 + (-t345 - t570) * t313;
t168 = -t397 + (qJD(3) * t509 + t429) * t313;
t578 = t117 * t236 - t200 * t167 - t168 * t198 - t237 * t317;
t300 = t313 * pkin(9);
t311 = sin(qJ(1));
t540 = cos(qJ(1));
t389 = t509 * t540;
t239 = t310 * t389 + t311 * t314;
t420 = t310 * t509;
t241 = -t311 * t420 + t314 * t540;
t381 = g(1) * t241 + g(2) * t239;
t454 = t200 * qJD(3);
t455 = t198 * qJD(3);
t481 = t309 * t117;
t577 = -g(3) * t486 - t381 + (t309 * t455 - t481) * pkin(9) + (-t317 + t454) * t300;
t399 = t313 * t436;
t400 = t309 * t436;
t576 = t198 * t399 + t200 * t400 + (-t117 - t455) * t313 + (-t317 - t454) * t309;
t396 = pkin(1) * t417;
t222 = -pkin(8) * t437 + t314 * t396;
t387 = pkin(2) * t310 - pkin(9) * t314;
t223 = t387 * t466;
t142 = -t309 * t222 + t223 * t313;
t475 = t313 * t314;
t541 = pkin(4) + pkin(9);
t542 = pkin(3) + pkin(10);
t575 = -(pkin(4) * t475 - t310 * t542) * t466 + t142 + t541 * t460;
t308 = sin(qJ(5));
t312 = cos(qJ(5));
t189 = t308 * t437 - t312 * t400;
t461 = qJD(3) * t312;
t574 = t309 * t461 + t189;
t153 = t198 * t308 - t271 * t312;
t192 = qJD(5) + t200;
t498 = t153 * t192;
t450 = qJDD(1) * t314;
t286 = t306 * t450;
t426 = t310 * t452;
t393 = t306 * t426;
t218 = qJDD(3) - t286 + t393;
t68 = qJD(5) * t153 + t218 * t308 - t312 * t317;
t573 = t68 + t498;
t457 = qJD(5) * t313;
t430 = t308 * t457;
t572 = t430 + t574;
t458 = qJD(5) * t312;
t459 = qJD(5) * t308;
t351 = t198 * t458 + t312 * t218 + t271 * t459 + t308 * t317;
t151 = -t312 * t198 - t271 * t308;
t501 = t151 * t192;
t571 = t351 - t501;
t45 = t351 + t501;
t558 = -t399 + t460;
t419 = t314 * t509;
t244 = pkin(1) * t419 - pkin(8) * t486;
t226 = qJD(2) * t244;
t295 = pkin(1) * t420;
t483 = t306 * t314;
t469 = pkin(8) * t483 + t295;
t216 = t509 * pkin(9) + t469;
t182 = qJD(2) * pkin(9) + qJD(1) * t216;
t369 = -pkin(2) * t314 - pkin(9) * t310 - pkin(1);
t191 = t369 * t466;
t115 = t182 * t309 - t313 * t191;
t453 = -qJD(4) - t115;
t439 = t306 * t540;
t171 = t239 * t309 + t313 * t439;
t238 = t310 * t311 - t314 * t389;
t569 = t171 * t308 + t238 * t312;
t568 = t171 * t312 - t238 * t308;
t394 = qJD(1) * t432;
t465 = qJD(2) * t310;
t567 = t271 * t167 - t218 * t236 + t306 * (t314 * t336 + (t309 * t425 + t394 + t423) * t483 - t198 * t465);
t367 = qJD(2) * t396;
t390 = pkin(1) * t408;
t440 = pkin(8) * t286 + t310 * t390 + t314 * t367;
t155 = -pkin(8) * t393 + t440;
t135 = pkin(9) * t366 + t155;
t360 = qJD(2) * t387;
t140 = (qJD(1) * t360 + qJDD(1) * t369) * t306;
t462 = qJD(3) * t309;
t51 = -t309 * t135 + t313 * t140 - t182 * t460 - t191 * t462;
t370 = qJDD(4) - t51;
t25 = -pkin(4) * t117 - t218 * t542 + t370;
t403 = t570 * pkin(8) + t310 * t367 - t314 * t390;
t136 = -pkin(2) * t366 + t403;
t41 = pkin(3) * t317 + t117 * qJ(4) - t200 * qJD(4) + t136;
t30 = pkin(10) * t317 + t41;
t473 = pkin(4) * t200 - t453;
t76 = t271 * t542 + t473;
t181 = -pkin(2) * t372 - t222;
t323 = -t200 * qJ(4) + t181;
t82 = t198 * t542 + t323;
t35 = t308 * t76 + t312 * t82;
t4 = -qJD(5) * t35 + t312 * t25 - t30 * t308;
t524 = qJ(6) * t351;
t114 = -qJDD(5) + t117;
t538 = pkin(5) * t114;
t1 = -qJD(6) * t153 + t4 - t524 - t538;
t3 = t308 * t25 + t312 * t30 + t76 * t458 - t82 * t459;
t523 = qJ(6) * t68;
t2 = -qJD(6) * t151 + t3 - t523;
t34 = -t308 * t82 + t312 * t76;
t28 = -qJ(6) * t153 + t34;
t20 = pkin(5) * t192 + t28;
t175 = t241 * t309 - t311 * t484;
t347 = g(1) * t175 + g(2) * t171 + g(3) * t236;
t29 = -qJ(6) * t151 + t35;
t522 = t192 * t29;
t566 = -t308 * (t192 * t20 - t2) + t312 * (t1 + t522) - t347;
t352 = t425 + t451;
t493 = t198 * t271;
t565 = -(t306 * t394 - t261) * t313 + (-(t306 * t352 + t345) * t313 - t493) * t309;
t303 = t306 ^ 2;
t564 = 0.2e1 * t303;
t563 = g(3) * t306;
t257 = pkin(3) * t400;
t506 = qJ(4) * t313;
t379 = pkin(10) * t309 - t506;
t123 = t257 + (t295 + (pkin(8) + t379) * t483) * qJD(1);
t407 = pkin(3) * t462 - qJD(4) * t309;
t196 = qJD(3) * t379 + t407;
t507 = qJ(4) * t309;
t421 = -pkin(2) - t507;
t246 = -t313 * t542 + t421;
t273 = t541 * t309;
t526 = -t246 * t459 + t273 * t458 + (-t123 + t196) * t312 + t575 * t308;
t561 = t123 * t308 + t312 * t575;
t46 = -t68 + t498;
t162 = t312 * t246 + t308 * t273;
t472 = -qJ(4) * t460 + t407 - t257 - (t295 + (pkin(8) - t506) * t483) * qJD(1);
t559 = (qJDD(2) + 0.2e1 * t408) * t306;
t557 = t400 - t462;
t556 = -t309 * t218 + t271 * t460;
t405 = -t313 * t135 - t309 * t140 + t182 * t462 - t191 * t460;
t555 = -t51 * t309 - t313 * t405;
t210 = t218 * qJ(4);
t254 = qJD(4) * t271;
t40 = -t210 + t254 + t405;
t539 = pkin(3) * t218;
t48 = t370 - t539;
t554 = t48 * t309 - t40 * t313;
t227 = t469 * qJD(2);
t240 = t310 * t540 + t311 * t419;
t129 = t175 * t312 - t240 * t308;
t169 = t236 * t312 + t308 * t483;
t553 = -g(1) * t129 - g(2) * t568 - g(3) * t169;
t256 = t271 * qJ(4);
t116 = t182 * t313 + t191 * t309;
t93 = -pkin(4) * t198 + t116;
t83 = -t256 + t93;
t551 = t114 * t542 + t192 * t83;
t549 = t306 * (t117 * t314 + t200 * t465) - t168 * t271 + t218 * t237;
t478 = t309 * t314;
t548 = -t218 * t313 - t271 * t462 + (-t198 * t310 + t271 * t478) * t466;
t547 = (-t200 * t310 + t271 * t475) * t466 - t556;
t544 = t153 ^ 2;
t543 = t200 ^ 2;
t316 = qJD(1) ^ 2;
t537 = pkin(9) * t218;
t536 = pkin(9) * t238;
t535 = pkin(9) * t240;
t531 = t236 * pkin(10);
t298 = pkin(5) * t312 + pkin(4);
t530 = pkin(9) + t298;
t529 = -t28 + t20;
t203 = (t308 * t478 + t310 * t312) * t306;
t190 = qJD(1) * t203;
t413 = qJ(6) * t313 - t246;
t456 = qJD(6) * t313;
t528 = qJ(6) * t190 + t413 * t458 + (-qJ(6) * t462 - qJD(5) * t273 - t196 + t456) * t308 + t561 + t558 * pkin(5);
t527 = t572 * qJ(6) - t312 * t456 + t526;
t215 = -pkin(2) * t509 - t244;
t229 = t236 * pkin(3);
t414 = t237 * qJ(4) - t229;
t119 = t215 - t414;
t104 = t119 + t531;
t470 = pkin(2) * t483 + pkin(9) * t486;
t217 = -pkin(1) * t306 - t470;
t138 = -t309 * t216 + t217 * t313;
t121 = pkin(3) * t483 - t138;
t94 = pkin(4) * t237 + pkin(10) * t483 + t121;
t55 = t312 * t104 + t308 * t94;
t525 = -qJD(5) * t162 - t196 * t308 + t561;
t521 = t192 * t34;
t520 = t192 * t35;
t519 = t308 * t68;
t518 = t312 * t351;
t508 = qJ(4) * t198;
t108 = t200 * t542 + t508;
t53 = t312 * t108 + t308 * t93;
t143 = t313 * t222 + t309 * t223;
t122 = -qJ(4) * t437 - t143;
t110 = -pkin(4) * t400 - t122;
t513 = -t462 * t530 - t110 + (-t189 - t430) * pkin(5);
t474 = qJ(6) + t542;
t505 = qJ(6) * t200;
t88 = t312 * t93;
t512 = -qJD(6) * t312 + t459 * t474 + pkin(5) * t198 - t88 - (-t108 - t505) * t308;
t259 = t474 * t312;
t511 = -qJD(5) * t259 - qJD(6) * t308 - t312 * t505 - t53;
t510 = pkin(5) * t458 + t200 * t298 - t453;
t504 = t114 * t308;
t502 = t116 * t271;
t500 = t151 * t271;
t499 = t153 * t151;
t497 = t153 * t271;
t496 = t192 * t198;
t494 = t198 * t200;
t489 = t238 * t313;
t488 = t240 * t313;
t487 = t303 * t316;
t485 = t306 * t311;
t482 = t308 * t309;
t479 = t309 * t312;
t111 = t312 * t114;
t477 = t312 * t313;
t476 = t312 * t314;
t139 = t313 * t216 + t309 * t217;
t471 = -t541 * t462 - t110;
t274 = t313 * pkin(4) + t300;
t468 = t540 * pkin(1) + pkin(8) * t485;
t304 = t310 ^ 2;
t305 = t314 ^ 2;
t467 = t304 - t305;
t463 = qJD(3) * t308;
t448 = qJ(4) * t483;
t447 = t314 * t487;
t445 = t306 * t476;
t444 = t306 * t475;
t230 = t238 * pkin(2);
t443 = -pkin(3) * t489 - t238 * t507 - t230;
t232 = t240 * pkin(2);
t442 = -pkin(3) * t488 - t240 * t507 - t232;
t441 = t241 * pkin(2) + t468;
t435 = t306 * t465;
t428 = -t198 ^ 2 + t543;
t427 = pkin(1) * t564;
t422 = -pkin(1) * t311 + pkin(8) * t439;
t297 = pkin(5) * t308 + qJ(4);
t418 = -pkin(5) * t151 - qJD(6);
t54 = -t104 * t308 + t312 * t94;
t163 = t171 * pkin(3);
t172 = t239 * t313 - t309 * t439;
t416 = qJ(4) * t172 - t163;
t165 = t175 * pkin(3);
t176 = t241 * t313 + t309 * t485;
t415 = qJ(4) * t176 - t165;
t411 = t192 * t308;
t409 = t192 * t312;
t406 = t310 * t447;
t404 = t176 * pkin(3) + t441;
t402 = pkin(3) * t444 + t309 * t448 + t470;
t398 = t271 * t437;
t395 = t310 * t425;
t391 = -t239 * pkin(2) + t422;
t388 = t306 * t316 * t509;
t386 = g(1) * t568 - g(2) * t129;
t130 = t175 * t308 + t240 * t312;
t385 = g(1) * t569 - g(2) * t130;
t384 = g(1) * t171 - g(2) * t175;
t383 = -g(1) * t172 + g(2) * t176;
t382 = g(1) * t238 - g(2) * t240;
t380 = t308 * t462 - t190;
t378 = -t308 * t34 + t312 * t35;
t377 = -t117 * t237 + t168 * t200;
t374 = g(3) * t402;
t371 = 0.2e1 * t417 + qJD(2);
t368 = -pkin(3) * t172 + t391;
t120 = t448 - t139;
t224 = t306 * t360;
t85 = -t216 * t460 - t217 * t462 + t224 * t313 - t309 * t226;
t365 = g(1) * t540 + g(2) * t311;
t307 = -qJ(6) - pkin(10);
t364 = pkin(5) * t482 - t307 * t313;
t359 = -t192 * t411 - t111;
t59 = pkin(4) * t168 - t435 * t542 - t85;
t324 = -t168 * qJ(4) - t237 * qJD(4) + t227;
t66 = t167 * t542 + t324;
t11 = -t104 * t459 + t308 * t59 + t312 * t66 + t94 * t458;
t355 = t271 * t313;
t353 = qJ(4) * t175 + t404;
t84 = -t216 * t462 + t217 * t460 + t309 * t224 + t313 * t226;
t349 = -g(1) * (-t240 * t479 - t241 * t308) - g(2) * (-t238 * t479 - t239 * t308) - (-t308 * t310 + t309 * t476) * t563;
t348 = -g(1) * (-t240 * t482 + t241 * t312) - g(2) * (-t238 * t482 + t239 * t312) - g(3) * t203;
t346 = -g(1) * t176 - g(2) * t172 - g(3) * t237;
t27 = -pkin(4) * t317 - t40;
t17 = t68 * pkin(5) + qJDD(6) + t27;
t341 = t17 + t346;
t340 = -t192 ^ 2 * t312 + t504;
t339 = g(1) * t240 + g(2) * t238 - g(3) * t483;
t105 = -pkin(4) * t236 - t120;
t338 = -qJ(4) * t171 + t368;
t170 = -t236 * t308 + t445;
t335 = g(1) * t130 + g(2) * t569 - g(3) * t170 - t3;
t334 = -t200 * t355 - t481;
t12 = -qJD(5) * t55 - t308 * t66 + t312 * t59;
t333 = t347 + t51;
t332 = t346 - t405;
t331 = -pkin(9) * qJD(3) * t271 - t339;
t330 = qJD(5) * t192 * t542 + t27 + t346;
t72 = -qJ(4) * t435 + qJD(4) * t483 - t84;
t329 = t117 + t493;
t60 = -pkin(4) * t167 - t72;
t103 = t198 * pkin(3) + t323;
t327 = t103 * t200 + qJDD(4) - t333;
t322 = t4 + t553;
t321 = pkin(9) * t556 + g(1) * t488 + g(2) * t489 - g(3) * t444;
t264 = -pkin(3) * t313 + t421;
t258 = t474 * t308;
t250 = t312 * t273;
t235 = pkin(5) * t477 + t274;
t225 = t469 * qJD(1);
t161 = -t246 * t308 + t250;
t157 = -qJ(6) * t477 + t162;
t150 = t151 ^ 2;
t144 = pkin(5) * t309 + t308 * t413 + t250;
t141 = (-t218 * t314 - t271 * t465) * t306;
t137 = pkin(3) * t200 + t508;
t124 = -pkin(3) * t437 - t142;
t109 = -t116 + t256;
t107 = pkin(3) * t271 - t453;
t101 = qJD(5) * t169 + t167 * t308 + t312 * t435;
t100 = -t167 * t312 - qJD(5) * t445 + (qJD(5) * t236 + t435) * t308;
t81 = t167 * pkin(3) + t324;
t79 = -pkin(3) * t435 - t85;
t77 = -pkin(5) * t169 + t105;
t70 = -t150 + t544;
t69 = -t114 * t309 - t192 * t355;
t65 = -t114 * t237 + t168 * t192;
t61 = -t418 + t83;
t52 = -t108 * t308 + t88;
t44 = t340 + t497;
t43 = t359 + t500;
t42 = qJ(6) * t169 + t55;
t39 = -t151 * t198 + t340;
t38 = t153 * t198 + t359;
t37 = pkin(5) * t237 + qJ(6) * t170 + t54;
t33 = pkin(5) * t100 + t60;
t32 = t151 * t409 + t519;
t31 = -t308 * t498 + t518;
t22 = t100 * t151 - t169 * t68;
t21 = t101 * t153 - t170 * t351;
t19 = -t572 * t151 + t68 * t477;
t18 = -t308 * t313 * t351 + (-t312 * t457 + t380) * t153;
t16 = t309 * t351 + t380 * t192 + (-t192 * t458 - t497 + t504) * t313;
t15 = -t309 * t68 + t574 * t192 + (t192 * t459 + t111 + t500) * t313;
t14 = t101 * t192 + t114 * t170 + t153 * t168 + t237 * t351;
t13 = -t100 * t192 - t114 * t169 - t151 * t168 - t237 * t68;
t10 = t46 * t308 - t45 * t312;
t9 = -t571 * t308 - t573 * t312;
t8 = -t100 * t153 - t101 * t151 + t169 * t351 + t170 * t68;
t7 = -qJ(6) * t100 + qJD(6) * t169 + t11;
t6 = t151 * t190 + t153 * t189 + (-t151 * t308 + t153 * t312) * t462 + (t519 - t518 + (t151 * t312 + t153 * t308) * qJD(5)) * t313;
t5 = pkin(5) * t168 - qJ(6) * t101 + qJD(6) * t170 + t12;
t23 = [0, 0, 0, 0, 0, qJDD(1), g(1) * t311 - g(2) * t540, t365, 0, 0 (qJDD(1) * t304 + 0.2e1 * t395) * t303 (t310 * t450 - t452 * t467) * t564, t310 * t559 + t371 * t429 (qJDD(1) * t305 - 0.2e1 * t395) * t303, t314 * t559 - t371 * t435, t366 * t509, -t227 * t372 + t244 * t366 - t403 * t509 + g(1) * t239 - g(2) * t241 + (-t426 + t450) * t427, -t155 * t509 - t226 * t372 - t352 * t427 - t366 * t469 - t382 ((-t222 * qJD(2) + qJDD(1) * t469 + t155) * t314 + (-qJD(2) * t225 - qJDD(1) * t244 + t403) * t310 - t365) * t306, t303 * qJDD(1) * pkin(1) ^ 2 - g(1) * t422 - g(2) * t468 + t155 * t469 - t222 * t227 + t225 * t226 - t244 * t403, t377, t578, t549, t579, t567, t141, -t115 * t435 + t136 * t236 + t138 * t218 + t181 * t167 + t227 * t198 + t215 * t317 - t85 * t271 - t483 * t51 - t383, -t117 * t215 + t136 * t237 - t139 * t218 + t168 * t181 + t200 * t227 + t271 * t84 + (-t116 * t465 - t314 * t405) * t306 - t384, t115 * t168 - t116 * t167 + t138 * t117 - t139 * t317 - t84 * t198 - t85 * t200 + t236 * t405 - t51 * t237 + t382, -t405 * t139 + t116 * t84 + t51 * t138 - t115 * t85 + t136 * t215 + t181 * t227 - g(1) * (t391 - t536) - g(2) * (t441 + t535) t141, -t549, -t567, t377, t578, t579, t107 * t168 + t109 * t167 - t121 * t117 + t120 * t317 + t72 * t198 + t79 * t200 + t40 * t236 + t48 * t237 + t382, -t103 * t167 + t107 * t435 - t119 * t317 + t121 * t218 - t81 * t198 - t41 * t236 - t79 * t271 - t48 * t483 + t383, -t103 * t168 + t117 * t119 - t120 * t218 - t200 * t81 - t237 * t41 + t271 * t72 + (-t109 * t465 + t314 * t40) * t306 + t384, t41 * t119 + t103 * t81 + t40 * t120 + t109 * t72 + t48 * t121 + t107 * t79 - g(1) * (t338 - t536) - g(2) * (t353 + t535) t21, t8, t14, t22, t13, t65, t100 * t83 + t105 * t68 - t114 * t54 + t12 * t192 + t151 * t60 + t168 * t34 - t169 * t27 + t237 * t4 + t385, t101 * t83 + t105 * t351 - t11 * t192 + t114 * t55 + t153 * t60 - t168 * t35 - t170 * t27 - t237 * t3 + t386, -t100 * t35 - t101 * t34 - t11 * t151 - t12 * t153 + t169 * t3 + t170 * t4 - t351 * t54 - t55 * t68 - t383, t3 * t55 + t35 * t11 + t4 * t54 + t34 * t12 + t27 * t105 + t83 * t60 - g(1) * (-pkin(10) * t172 - t238 * t541 + t338) - g(2) * (pkin(10) * t176 + t240 * t541 + t353) t21, t8, t14, t22, t13, t65, t1 * t237 + t100 * t61 - t114 * t37 + t151 * t33 + t168 * t20 - t169 * t17 + t192 * t5 + t68 * t77 + t385, t101 * t61 + t114 * t42 + t153 * t33 - t168 * t29 - t17 * t170 - t192 * t7 - t2 * t237 + t351 * t77 + t386, t1 * t170 - t100 * t29 - t101 * t20 - t151 * t7 - t153 * t5 + t169 * t2 - t351 * t37 - t42 * t68 - t383, t2 * t42 + t29 * t7 + t1 * t37 + t20 * t5 + t17 * t77 + t61 * t33 - g(1) * (-t171 * t297 + t172 * t307 - t238 * t530 + t368) - g(2) * (t175 * t297 - t176 * t307 + t240 * t530 + t404); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t406, t467 * t487, -t314 * t388 + t424, t406, t310 * t388 + t286, t366, pkin(1) * t310 * t487 + t225 * t372 + t339 - t403, pkin(1) * t447 + t222 * t372 + (pkin(8) * t452 + g(3)) * t486 + t381 - t440, 0, 0, t334, t576, t547, t565, -t548, t398, -pkin(2) * t317 + t115 * t437 - t136 * t313 + t142 * t271 - t181 * t557 - t225 * t198 + t321, t116 * t437 + pkin(2) * t117 - t143 * t271 - t200 * t225 + (-t181 * t271 - t537) * t313 + (t136 + t331) * t309, t115 * t558 + t116 * t557 + t142 * t200 + t143 * t198 + t555 + t577, -t136 * pkin(2) - t116 * t143 + t115 * t142 - t181 * t225 + g(1) * t232 + g(2) * t230 - g(3) * t470 + ((t115 * t313 - t116 * t309) * qJD(3) - t381 + t555) * pkin(9), t398, -t547, t548, t334, t576, t565, t107 * t558 - t109 * t557 - t122 * t198 - t124 * t200 + t554 + t577, t103 * t557 - t107 * t437 + t124 * t271 - t198 * t472 - t264 * t317 + t41 * t313 - t321, t109 * t437 + t117 * t264 - t122 * t271 - t472 * t200 + (t103 * t271 + t537) * t313 + (-t331 - t41) * t309, t41 * t264 - t109 * t122 - t107 * t124 - g(1) * t442 - g(2) * t443 - t374 + t472 * t103 + ((t107 * t313 + t109 * t309) * qJD(3) - t381 + t554) * pkin(9), t18, t6, t16, t19, t15, t69, -t114 * t161 - t189 * t83 + t274 * t68 + (-t461 * t83 + t4) * t309 + t525 * t192 + t471 * t151 + (t27 * t312 - t271 * t34 - t459 * t83) * t313 + t348, t114 * t162 - t190 * t83 + t274 * t351 + (t463 * t83 - t3) * t309 - t526 * t192 + t471 * t153 + (-t27 * t308 + t271 * t35 - t458 * t83) * t313 + t349, -t161 * t351 - t162 * t68 + t189 * t35 + t190 * t34 - t525 * t153 - t526 * t151 + t378 * t462 + (-t3 * t312 + t308 * t4 + (t308 * t35 + t312 * t34) * qJD(5) + t339) * t313, t3 * t162 + t4 * t161 + t27 * t274 - g(1) * (-pkin(10) * t488 + t241 * t541 + t442) - g(2) * (-pkin(10) * t489 + t239 * t541 + t443) - g(3) * ((pkin(4) * t310 + pkin(10) * t475) * t306 + t402) + t471 * t83 + t526 * t35 + t525 * t34, t18, t6, t16, t19, t15, t69, -t114 * t144 - t189 * t61 + t235 * t68 + (-t461 * t61 + t1) * t309 + t528 * t192 + t513 * t151 + (t17 * t312 - t20 * t271 - t459 * t61) * t313 + t348, t114 * t157 - t190 * t61 + t235 * t351 + (t463 * t61 - t2) * t309 - t527 * t192 + t513 * t153 + (-t17 * t308 + t271 * t29 - t458 * t61) * t313 + t349, -t144 * t351 - t157 * t68 + t189 * t29 + t190 * t20 - t528 * t153 - t527 * t151 + (-t20 * t308 + t29 * t312) * t462 + (t1 * t308 - t2 * t312 + (t20 * t312 + t29 * t308) * qJD(5) + t339) * t313, t2 * t157 + t1 * t144 + t17 * t235 - g(1) * (-t240 * t364 + t241 * t530 + t442) - g(2) * (-t238 * t364 + t239 * t530 + t443) - t374 + t513 * t61 - (t298 * t310 + t314 * t364) * t563 + t527 * t29 + t528 * t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t494, t428, -t329, -t494, -t580, t218, -t181 * t200 + t333 - t502, t115 * t271 + t181 * t198 - t332, 0, 0, t218, t329, t580, t494, t428, -t494, pkin(3) * t117 - qJ(4) * t317 + (-t109 - t116) * t200 + (t107 + t453) * t198, t137 * t198 + t327 + t502 - 0.2e1 * t539, -t103 * t198 + t137 * t200 + t271 * t453 + 0.2e1 * t210 - t254 + t332, -t48 * pkin(3) - g(1) * t415 - g(2) * t416 - g(3) * t414 - t40 * qJ(4) - t103 * t137 - t107 * t116 + t109 * t453, t31, t9, t38, t32, t39, t496, qJ(4) * t68 + t473 * t151 - t192 * t52 + t198 * t34 + t330 * t308 + t312 * t551, qJ(4) * t351 + t473 * t153 + t192 * t53 - t198 * t35 - t308 * t551 + t330 * t312, t151 * t53 + t153 * t52 + (-t200 * t35 + t542 * t351 - t4 + (t151 * t542 - t35) * qJD(5)) * t312 + (t200 * t34 + t542 * t68 - t3 + (-t153 * t542 + t34) * qJD(5)) * t308 + t347, t27 * qJ(4) - t35 * t53 - t34 * t52 - g(1) * (-pkin(10) * t175 + t415) - g(2) * (-pkin(10) * t171 + t416) - g(3) * (t414 - t531) + t473 * t83 - (qJD(5) * t378 + t3 * t308 + t4 * t312) * t542, t31, t9, t38, t32, t39, t496, t114 * t259 + t151 * t510 + t192 * t512 + t198 * t20 + t297 * t68 + t308 * t341 + t409 * t61, -t114 * t258 + t153 * t510 - t192 * t511 - t198 * t29 + t297 * t351 + t312 * t341 - t411 * t61, -t511 * t151 - t512 * t153 + t258 * t68 + t259 * t351 - t566, -t2 * t258 - t1 * t259 + t17 * t297 - g(1) * (t175 * t307 + t176 * t297 - t165) - g(2) * (t171 * t307 + t172 * t297 - t163) - g(3) * (t236 * t307 + t237 * t297 - t229) + t510 * t61 + t511 * t29 + t512 * t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t329, t218 - t494, -t271 ^ 2 - t543, -t109 * t271 + t327 - t539, 0, 0, 0, 0, 0, 0, t43, t44, t10, t271 * t83 + (t4 + t520) * t312 + (t3 - t521) * t308 - t347, 0, 0, 0, 0, 0, 0, t43, t44, t10, t271 * t61 + t566; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t499, t70, t45, -t499, t46, -t114, -t153 * t83 + t322 + t520, t151 * t83 + t335 + t521, 0, 0, t499, t70, t45, -t499, t46, -t114, -0.2e1 * t538 - t524 + t522 + (t418 - t61) * t153 + t322, -pkin(5) * t544 + t523 + t192 * t28 + (qJD(6) + t61) * t151 + t335, -pkin(5) * t351 - t151 * t529, t529 * t29 + (-t61 * t153 + t1 + t553) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t573, t571, -t150 - t544, t29 * t151 + t20 * t153 + t341;];
tau_reg  = t23;