% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRPRPR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3,theta5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRPR1_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR1_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR1_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR1_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR1_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR1_invdynJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:10:04
% EndTime: 2019-03-09 10:10:27
% DurationCPUTime: 12.88s
% Computational Cost: add. (22694->673), mult. (54712->840), div. (0->0), fcn. (42967->18), ass. (0->343)
t325 = cos(qJ(2));
t323 = sin(qJ(2));
t462 = sin(pkin(10));
t463 = cos(pkin(10));
t345 = -t323 * t463 - t325 * t462;
t393 = qJD(1) * t462;
t374 = qJD(2) * t393;
t332 = -qJDD(1) * t345 - t323 * t374;
t394 = qJD(1) * t463;
t375 = qJD(2) * t394;
t191 = t325 * t375 + t332;
t322 = sin(qJ(4));
t396 = t463 * t325;
t395 = t462 * t323;
t409 = -qJDD(1) * t395 - t323 * t375 - t325 * t374;
t343 = -qJDD(1) * t396 - t409;
t378 = t325 * t394;
t236 = -t323 * t393 + t378;
t237 = t345 * qJD(1);
t487 = cos(qJ(4));
t356 = -t322 * t236 + t237 * t487;
t331 = qJD(4) * t356 - t322 * t191 - t487 * t343;
t102 = qJDD(6) - t331;
t182 = t487 * t236 + t237 * t322;
t176 = qJD(6) - t182;
t317 = sin(pkin(11));
t318 = cos(pkin(11));
t321 = sin(qJ(6));
t486 = cos(qJ(6));
t253 = t317 * t486 + t321 * t318;
t407 = t486 * t318;
t355 = -t321 * t317 + t407;
t417 = qJD(6) * t321;
t492 = qJD(6) * t407 - t317 * t417;
t427 = t355 * t182 - t492;
t543 = -t253 * t102 + t176 * t427;
t313 = qJD(2) + qJD(4);
t164 = t313 * t317 - t318 * t356;
t170 = t317 * t356;
t496 = t313 * t318 + t170;
t120 = t164 * t486 + t321 * t496;
t357 = t486 * t496;
t310 = qJDD(2) + qJDD(4);
t403 = qJD(4) * t487;
t418 = qJD(4) * t322;
t352 = t487 * t191 + t236 * t403 + t237 * t418 - t322 * t343;
t84 = -t310 * t318 + t317 * t352;
t85 = t310 * t317 + t318 * t352;
t34 = -qJD(6) * t357 + t164 * t417 + t321 * t84 - t486 * t85;
t240 = t253 * qJD(6);
t428 = t253 * t182 - t240;
t542 = t120 * t428 - t355 * t34;
t121 = -t164 * t321 + t357;
t541 = t121 ^ 2;
t539 = t121 * t176;
t537 = t120 ^ 2;
t399 = t321 * t85 + t486 * t84;
t35 = qJD(6) * t120 + t399;
t380 = -t121 * t427 - t253 * t35;
t536 = t380 + t542;
t514 = t182 * t317;
t535 = pkin(5) * t514;
t534 = pkin(9) * t514;
t533 = t182 * t496;
t452 = t356 * t313;
t532 = t331 - t452;
t446 = t182 * t313;
t531 = t352 - t446;
t379 = t102 * t355 + t176 * t428;
t459 = t121 * t356;
t530 = t379 + t459;
t453 = t356 ^ 2;
t519 = t182 ^ 2;
t529 = -t519 + t453;
t513 = t182 * t318;
t528 = -pkin(5) * t356 - pkin(9) * t513;
t78 = t85 * t317;
t527 = -t164 * t513 + t78;
t477 = qJ(3) + pkin(7);
t398 = qJD(2) * t477;
t233 = -t323 * qJD(3) - t325 * t398;
t277 = t477 * t323;
t188 = qJDD(2) * pkin(2) + qJD(1) * t233 - qJDD(1) * t277;
t232 = t325 * qJD(3) - t323 * t398;
t278 = t477 * t325;
t194 = qJD(1) * t232 + qJDD(1) * t278;
t142 = t463 * t188 - t194 * t462;
t107 = qJDD(2) * pkin(3) - t191 * pkin(8) + t142;
t143 = t462 * t188 + t463 * t194;
t112 = -pkin(8) * t343 + t143;
t263 = qJD(1) * t278;
t241 = t462 * t263;
t262 = qJD(1) * t277;
t470 = qJD(2) * pkin(2);
t246 = -t262 + t470;
t189 = t463 * t246 - t241;
t479 = t237 * pkin(8);
t157 = qJD(2) * pkin(3) + t189 + t479;
t397 = t463 * t263;
t190 = t462 * t246 + t397;
t480 = t236 * pkin(8);
t162 = t190 + t480;
t386 = -t487 * t107 + t322 * t112 + t157 * t418 + t162 * t403;
t39 = -pkin(4) * t310 + qJDD(5) + t386;
t488 = pkin(5) * t84;
t27 = t39 + t488;
t314 = qJ(2) + pkin(10);
t306 = qJ(4) + t314;
t296 = cos(t306);
t312 = pkin(11) + qJ(6);
t304 = cos(t312);
t308 = t325 * pkin(2);
t299 = t308 + pkin(1);
t266 = -qJD(1) * t299 + qJD(3);
t197 = -t236 * pkin(3) + t266;
t114 = -pkin(4) * t182 + qJ(5) * t356 + t197;
t109 = t322 * t157 + t162 * t487;
t93 = t313 * qJ(5) + t109;
t55 = t318 * t114 - t317 * t93;
t45 = -pkin(5) * t182 - pkin(9) * t164 + t55;
t56 = t317 * t114 + t318 * t93;
t48 = pkin(9) * t496 + t56;
t362 = t321 * t48 - t45 * t486;
t482 = g(3) * t304;
t295 = sin(t306);
t326 = cos(qJ(1));
t439 = t295 * t326;
t324 = sin(qJ(1));
t440 = t295 * t324;
t509 = g(1) * t439 + g(2) * t440;
t108 = t157 * t487 - t322 * t162;
t92 = -t313 * pkin(4) + qJD(5) - t108;
t72 = -pkin(5) * t496 + t92;
t526 = -t27 * t355 - t296 * t482 + t304 * t509 - t356 * t362 - t428 * t72;
t16 = t321 * t45 + t48 * t486;
t302 = sin(t312);
t377 = g(1) * t326 + g(2) * t324;
t361 = t295 * t377;
t483 = g(3) * t302;
t525 = -t16 * t356 + t27 * t253 + t296 * t483 - t302 * t361 - t427 * t72;
t524 = t121 * t428 - t35 * t355;
t523 = -t120 * t427 - t34 * t253;
t457 = t120 * t356;
t521 = t457 - t543;
t387 = -t322 * t107 - t487 * t112 - t157 * t403 + t162 * t418;
t37 = qJ(5) * t310 + qJD(5) * t313 - t387;
t415 = qJD(1) * qJD(2);
t402 = t323 * t415;
t413 = pkin(2) * t402 + qJDD(3);
t159 = -t409 * pkin(3) + (-pkin(1) + (-pkin(3) * t463 - pkin(2)) * t325) * qJDD(1) + t413;
t44 = -pkin(4) * t331 - qJ(5) * t352 + qJD(5) * t356 + t159;
t11 = -t317 * t37 + t318 * t44;
t8 = -pkin(5) * t331 - pkin(9) * t85 + t11;
t12 = t317 * t44 + t318 * t37;
t9 = -pkin(9) * t84 + t12;
t3 = -qJD(6) * t362 + t321 * t8 + t486 * t9;
t4 = -qJD(6) * t16 - t321 * t9 + t486 * t8;
t436 = t296 * t326;
t437 = t296 * t324;
t410 = g(1) * t436 + g(2) * t437 + g(3) * t295;
t520 = t16 * t428 - t4 * t253 + t3 * t355 - t362 * t427 - t410;
t517 = t55 * t182;
t455 = t164 * t356;
t515 = t176 * t356;
t512 = t182 * t356;
t497 = t356 * t496;
t508 = t182 * t56 - t11;
t76 = t84 * t318;
t506 = t317 * t533 - t76;
t438 = t296 * t317;
t505 = -t56 * t356 + g(3) * t438 + (-t361 + t39) * t317;
t504 = t509 * t318 + t55 * t356;
t503 = -t197 * t182 + t387 + t410;
t368 = t318 * t496;
t454 = t164 * t317;
t344 = t368 - t454;
t75 = t317 * t84;
t79 = t85 * t318;
t502 = -t182 * t344 - t75 + t79;
t289 = g(3) * t296;
t491 = t289 - t509;
t501 = t197 * t356 - t386 - t491;
t137 = -pkin(4) * t356 - qJ(5) * t182;
t95 = t317 * t331;
t498 = -t182 * t513 + t95;
t196 = -t463 * t262 - t241;
t166 = t196 + t479;
t298 = pkin(2) * t463 + pkin(3);
t406 = t462 * pkin(2);
t231 = t322 * t298 + t487 * t406;
t195 = t262 * t462 - t397;
t348 = t195 - t480;
t425 = t231 * qJD(4) - t166 * t322 + t487 * t348;
t478 = t318 * pkin(5);
t297 = pkin(4) + t478;
t320 = -pkin(9) - qJ(5);
t495 = -t295 * t320 + t296 * t297;
t494 = t296 * pkin(4) + t295 * qJ(5);
t493 = -g(1) * t324 + g(2) * t326;
t489 = t237 ^ 2;
t327 = qJD(2) ^ 2;
t305 = cos(t314);
t422 = pkin(3) * t305 + t308;
t261 = pkin(1) + t422;
t245 = t326 * t261;
t484 = g(2) * t245;
t481 = g(3) * t325;
t307 = t318 * pkin(9);
t172 = t463 * t232 + t462 * t233;
t336 = qJD(2) * t345;
t151 = pkin(8) * t336 + t172;
t202 = -t463 * t277 - t278 * t462;
t173 = pkin(8) * t345 + t202;
t203 = -t462 * t277 + t463 * t278;
t346 = t395 - t396;
t174 = -pkin(8) * t346 + t203;
t171 = -t232 * t462 + t463 * t233;
t337 = qJD(2) * t346;
t330 = pkin(8) * t337 + t171;
t61 = t151 * t487 + t173 * t403 - t174 * t418 + t322 * t330;
t333 = t487 * t346;
t144 = t313 * t333 - t322 * t336 - t345 * t418;
t339 = t322 * t346;
t145 = -qJD(4) * t339 - t322 * t337 - t336 * t487 - t345 * t403;
t193 = -t345 * t487 - t339;
t301 = t323 * t470;
t205 = -pkin(3) * t336 + t301;
t65 = t145 * pkin(4) + t144 * qJ(5) - t193 * qJD(5) + t205;
t29 = t317 * t65 + t318 * t61;
t226 = qJ(5) + t231;
t200 = (-pkin(9) - t226) * t317;
t201 = t226 * t318 + t307;
t147 = t200 * t486 - t321 * t201;
t290 = t322 * t406;
t217 = -qJD(4) * t290 + t298 * t403;
t211 = qJD(5) + t217;
t123 = t166 * t487 + t322 * t348;
t419 = qJD(1) * t323;
t204 = pkin(2) * t419 - pkin(3) * t237;
t124 = t137 + t204;
t59 = -t123 * t317 + t318 * t124;
t46 = t528 + t59;
t60 = t318 * t123 + t317 * t124;
t50 = t60 - t534;
t472 = qJD(6) * t147 + t211 * t355 - t321 * t46 - t486 * t50;
t148 = t321 * t200 + t201 * t486;
t471 = -qJD(6) * t148 - t211 * t253 + t321 * t50 - t46 * t486;
t10 = t12 * t318;
t96 = t318 * t331;
t469 = -t182 * t514 - t96;
t275 = t320 * t317;
t276 = qJ(5) * t318 + t307;
t198 = t275 * t486 - t321 * t276;
t66 = -t108 * t317 + t318 * t137;
t49 = t528 + t66;
t67 = t318 * t108 + t317 * t137;
t52 = t67 - t534;
t467 = qJD(5) * t355 + qJD(6) * t198 - t321 * t49 - t486 * t52;
t199 = t321 * t275 + t276 * t486;
t466 = -qJD(5) * t253 - qJD(6) * t199 + t321 * t52 - t486 * t49;
t465 = t425 - t535;
t461 = pkin(7) * qJDD(1);
t460 = t109 * t313;
t458 = t120 * t121;
t456 = t144 * t317;
t443 = t193 * t317;
t442 = t237 * t236;
t435 = t302 * t324;
t434 = t302 * t326;
t433 = t304 * t324;
t432 = t304 * t326;
t429 = -qJD(5) + t92;
t192 = -t322 * t345 + t333;
t213 = pkin(3) * t346 - t299;
t132 = t192 * pkin(4) - t193 * qJ(5) + t213;
t134 = t322 * t173 + t174 * t487;
t71 = t317 * t132 + t318 * t134;
t426 = t217 - t123;
t315 = t323 ^ 2;
t316 = t325 ^ 2;
t421 = t315 - t316;
t420 = t315 + t316;
t416 = t237 * qJD(2);
t414 = t325 * qJDD(1);
t328 = qJD(1) ^ 2;
t411 = t323 * t328 * t325;
t404 = -t39 - t289;
t311 = -pkin(8) - t477;
t401 = pkin(5) * t317 - t311;
t28 = -t317 * t61 + t318 * t65;
t392 = t425 * t313;
t70 = t318 * t132 - t134 * t317;
t133 = -t487 * t173 + t174 * t322;
t388 = t10 - t410;
t384 = t325 * t402;
t383 = -pkin(4) * t440 + qJ(5) * t437;
t382 = -pkin(4) * t439 + qJ(5) * t436;
t381 = -g(1) * t440 + g(2) * t439;
t230 = t298 * t487 - t290;
t372 = -t11 * t318 - t12 * t317;
t371 = -t11 * t317 + t10;
t370 = t317 * t55 - t318 * t56;
t367 = t144 * t182 - t193 * t331;
t366 = -t145 * t182 - t192 * t331;
t364 = t295 * t297 + t296 * t320;
t228 = -pkin(4) - t230;
t51 = pkin(5) * t192 - t193 * t307 + t70;
t57 = -pkin(9) * t443 + t71;
t25 = -t321 * t57 + t486 * t51;
t26 = t321 * t51 + t486 * t57;
t360 = t493 * t296;
t358 = -0.2e1 * pkin(1) * t415 - pkin(7) * qJDD(2);
t354 = t364 * t324;
t353 = t364 * t326;
t347 = t331 * t226 + (t211 - t92) * t182;
t227 = -qJDD(1) * t299 + t413;
t342 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t327 - t493;
t341 = pkin(1) * t328 + t377 - t461;
t340 = -t144 * t92 + t193 * t39 - t377;
t334 = t39 + t491;
t62 = qJD(4) * t134 + t322 * t151 - t487 * t330;
t303 = sin(t314);
t264 = -pkin(2) * t323 - pkin(3) * t303;
t250 = t326 * t264;
t249 = t324 * t264;
t234 = t236 ^ 2;
t210 = t228 - t478;
t209 = t296 * t432 + t435;
t208 = -t296 * t434 + t433;
t207 = -t296 * t433 + t434;
t206 = t296 * t435 + t432;
t141 = t355 * t193;
t140 = t253 * t193;
t86 = pkin(5) * t443 + t133;
t73 = t109 + t535;
t54 = -t144 * t253 + t193 * t492;
t53 = t144 * t355 + t193 * t240;
t47 = -pkin(5) * t456 + t62;
t22 = pkin(9) * t456 + t29;
t17 = pkin(5) * t145 + t144 * t307 + t28;
t6 = -qJD(6) * t26 + t17 * t486 - t321 * t22;
t5 = qJD(6) * t25 + t321 * t17 + t22 * t486;
t1 = [0, 0, 0, 0, 0, qJDD(1), -t493, t377, 0, 0, qJDD(1) * t315 + 0.2e1 * t384, 0.2e1 * t323 * t414 - 0.2e1 * t415 * t421, qJDD(2) * t323 + t325 * t327, qJDD(1) * t316 - 0.2e1 * t384, qJDD(2) * t325 - t323 * t327, 0, t323 * t358 + t325 * t342, -t323 * t342 + t325 * t358, 0.2e1 * t420 * t461 - t377, -g(1) * (-pkin(1) * t324 + pkin(7) * t326) - g(2) * (pkin(1) * t326 + pkin(7) * t324) + (pkin(7) ^ 2 * t420 + pkin(1) ^ 2) * qJDD(1), -t191 * t345 + t237 * t337, -t191 * t346 - t236 * t337 - t237 * t336 + t343 * t345, -qJDD(2) * t345 - t327 * t346, t236 * t336 + t343 * t346, -qJDD(2) * t346 + t327 * t345, 0, t202 * qJDD(2) + t227 * t346 - t236 * t301 - t299 * t343 - t493 * t305 + (-t266 * t345 + t171) * qJD(2), -t172 * qJD(2) - t203 * qJDD(2) - t299 * t191 - t227 * t345 - t237 * t301 - t266 * t337 + t303 * t493, t142 * t345 + t171 * t237 + t172 * t236 + t190 * t336 - t202 * t191 - t203 * t343 - t377 + (qJD(2) * t189 - t143) * t346, t143 * t203 + t190 * t172 + t142 * t202 + t189 * t171 - t227 * t299 + t266 * t301 - g(1) * (-t299 * t324 + t326 * t477) - g(2) * (t299 * t326 + t324 * t477) t144 * t356 + t193 * t352, t145 * t356 - t192 * t352 - t367, -t144 * t313 + t193 * t310, t366, -t145 * t313 - t192 * t310, 0, -t133 * t310 + t197 * t145 + t159 * t192 - t182 * t205 - t213 * t331 - t62 * t313 - t360, -t134 * t310 - t144 * t197 + t159 * t193 - t205 * t356 + t213 * t352 - t313 * t61 + t381, t108 * t144 - t109 * t145 + t133 * t352 + t134 * t331 + t182 * t61 + t192 * t387 + t193 * t386 - t356 * t62 - t377, -t387 * t134 + t109 * t61 + t386 * t133 - t108 * t62 + t159 * t213 + t197 * t205 - g(1) * (-t324 * t261 - t326 * t311) - g(2) * (-t324 * t311 + t245) (-t144 * t164 + t193 * t85) * t318 (-t78 - t76) * t193 - t344 * t144, t164 * t145 + t85 * t192 + t318 * t367 (t144 * t496 + t84 * t193) * t317, t145 * t496 - t84 * t192 - t317 * t367, t366, t11 * t192 + t133 * t84 + t55 * t145 - t182 * t28 + t317 * t340 - t318 * t360 - t331 * t70 - t496 * t62, -t12 * t192 + t133 * t85 - t56 * t145 + t62 * t164 + t182 * t29 + t318 * t340 + t331 * t71 + t438 * t493, t29 * t496 - t71 * t84 - t28 * t164 - t70 * t85 + t372 * t193 + (t317 * t56 + t318 * t55) * t144 - t381, -t484 + t11 * t70 + t12 * t71 + t39 * t133 + t55 * t28 + t56 * t29 + t92 * t62 + (g(1) * t311 - g(2) * t494) * t326 + (-g(1) * (-t261 - t494) + g(2) * t311) * t324, -t120 * t53 - t141 * t34, -t120 * t54 - t121 * t53 + t140 * t34 - t141 * t35, t102 * t141 + t120 * t145 - t176 * t53 - t192 * t34, -t121 * t54 + t140 * t35, -t102 * t140 + t121 * t145 - t176 * t54 - t192 * t35, t102 * t192 + t145 * t176, -g(1) * t207 - g(2) * t209 + t102 * t25 - t121 * t47 + t140 * t27 - t145 * t362 + t176 * t6 + t192 * t4 + t35 * t86 + t54 * t72, -g(1) * t206 - g(2) * t208 - t102 * t26 + t120 * t47 + t141 * t27 - t145 * t16 - t176 * t5 - t192 * t3 - t34 * t86 - t53 * t72, -t120 * t6 + t121 * t5 - t140 * t3 - t141 * t4 - t16 * t54 + t25 * t34 - t26 * t35 - t362 * t53 - t381, -t484 - t362 * t6 + t16 * t5 + t4 * t25 + t3 * t26 + t27 * t86 + t72 * t47 + (-g(1) * t401 - g(2) * t495) * t326 + (-g(1) * (-t261 - t495) - g(2) * t401) * t324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t411, t421 * t328, t323 * qJDD(1), t411, t414, qJDD(2), t323 * t341 - t481, g(3) * t323 + t325 * t341, 0, 0, t442, -t234 + t489 (t378 - t236) * qJD(2) + t332, -t442, -t343 - t416, qJDD(2), -g(3) * t305 - t195 * qJD(2) + t266 * t237 + t377 * t303 + (qJDD(2) * t463 + t236 * t419) * pkin(2) + t142, g(3) * t303 + t196 * qJD(2) - t266 * t236 + t377 * t305 + (-qJDD(2) * t462 + t237 * t419) * pkin(2) - t143 -(t190 + t195) * t237 + (-t196 + t189) * t236 + (-t191 * t463 - t343 * t462) * pkin(2), -t189 * t195 - t190 * t196 + (t462 * t143 + t463 * t142 - t481 + (-qJD(1) * t266 + t377) * t323) * pkin(2), t512, t529, t531, -t512, t532, t310, t182 * t204 + t230 * t310 - t392 + t501, t204 * t356 - t231 * t310 - t313 * t426 + t503, t231 * t331 - t230 * t352 + (-t109 - t425) * t356 + (t108 + t426) * t182, -g(3) * t422 - t108 * t425 + t109 * t426 - t197 * t204 - t230 * t386 - t231 * t387 - t264 * t377, t527, t502, t455 - t498, t506, t469 + t497, -t512, t59 * t182 + t228 * t84 - t425 * t170 + (-t392 + t404) * t318 + t347 * t317 + t504, t164 * t425 - t182 * t60 + t228 * t85 + t318 * t347 + t505, t59 * t164 - t60 * t170 + (t211 * t496 - t226 * t84 - t60 * t313 + t517) * t318 + (t164 * t211 + t226 * t85 + t508) * t317 + t388, t39 * t228 - t56 * t60 - t55 * t59 - g(1) * (t250 + t382) - g(2) * (t249 + t383) - g(3) * (t422 + t494) + t425 * t92 + t371 * t226 - t370 * t211, t523, t536, t521, t524, t530, t515, t147 * t102 - t121 * t465 + t176 * t471 + t210 * t35 + t526, -t148 * t102 + t120 * t465 - t176 * t472 - t210 * t34 + t525, -t120 * t471 + t121 * t472 + t147 * t34 - t148 * t35 + t520, t3 * t148 + t4 * t147 + t27 * t210 - g(1) * (t250 - t353) - g(2) * (t249 - t354) - g(3) * (t495 + t422) + t465 * t72 + t472 * t16 - t471 * t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t343 - t416 (t378 + t236) * qJD(2) + t332, -t234 - t489, -t189 * t237 - t190 * t236 + t227 + t493, 0, 0, 0, 0, 0, 0, -t331 - t452, t352 + t446, -t519 - t453, -t108 * t356 - t109 * t182 + t159 + t493, 0, 0, 0, 0, 0, 0, t469 - t497, t455 + t498, -t79 - t75 + (-t368 - t454) * t182, t182 * t370 + t356 * t92 - t372 + t493, 0, 0, 0, 0, 0, 0, t379 - t459, t457 + t543, t380 - t542, -t16 * t427 + t3 * t253 + t355 * t4 + t356 * t72 - t362 * t428 + t493; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t512, t529, t531, -t512, t532, t310, t460 + t501, t108 * t313 + t503, 0, 0, t527, t502, t318 * t519 + t455 - t95, t506, -t317 * t519 + t497 - t96, -t512, qJ(5) * t95 - pkin(4) * t84 + t109 * t170 + (t404 + t460) * t318 - (t317 * t429 - t66) * t182 + t504, qJ(5) * t96 - pkin(4) * t85 - t109 * t164 - (t318 * t429 + t67) * t182 + t505, t66 * t164 - t67 * t170 + (-qJ(5) * t84 + qJD(5) * t496 - t67 * t313 + t517) * t318 + (qJ(5) * t85 + qJD(5) * t164 + t508) * t317 + t388, -t39 * pkin(4) - g(1) * t382 - g(2) * t383 - g(3) * t494 + qJ(5) * t371 - qJD(5) * t370 - t92 * t109 - t55 * t66 - t56 * t67, t523, t536, t521, t524, t530, t515, t198 * t102 + t121 * t73 + t176 * t466 - t297 * t35 + t526, -t199 * t102 - t73 * t120 - t176 * t467 + t297 * t34 + t525, -t120 * t466 + t121 * t467 + t198 * t34 - t199 * t35 + t520, g(1) * t353 + g(2) * t354 - g(3) * t495 + t16 * t467 + t4 * t198 + t3 * t199 - t27 * t297 - t362 * t466 - t72 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t164 * t182 + t84, t85 - t533, -t164 ^ 2 - t496 ^ 2, t164 * t55 - t496 * t56 + t334, 0, 0, 0, 0, 0, 0, t120 * t176 + t35, -t34 + t539, -t537 - t541, -t120 * t362 - t121 * t16 + t334 + t488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t458, t537 - t541, -t34 - t539, t458, -t399 + (-qJD(6) + t176) * t120, t102, -g(1) * t208 + g(2) * t206 - t72 * t120 + t16 * t176 + t295 * t483 + t4, g(1) * t209 - g(2) * t207 - t121 * t72 - t176 * t362 + t295 * t482 - t3, 0, 0;];
tau_reg  = t1;
