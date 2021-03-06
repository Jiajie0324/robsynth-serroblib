% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6PRRRPR7
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1,theta5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6PRRRPR7_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR7_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR7_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR7_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR7_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRPR7_invdynJ_fixb_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:44:45
% EndTime: 2019-03-08 23:45:29
% DurationCPUTime: 25.38s
% Computational Cost: add. (20519->891), mult. (52174->1249), div. (0->0), fcn. (44650->18), ass. (0->367)
t335 = sin(pkin(7));
t342 = sin(qJ(3));
t345 = cos(qJ(3));
t387 = (pkin(3) * t342 - pkin(10) * t345) * t335;
t336 = sin(pkin(6));
t343 = sin(qJ(2));
t494 = t336 * t343;
t456 = qJD(1) * t494;
t565 = qJD(3) * t387 - t335 * t456;
t346 = cos(qJ(2));
t514 = cos(pkin(7));
t437 = t342 * t514;
t370 = -t343 * t437 + t345 * t346;
t241 = t370 * t336;
t435 = t345 * t514;
t497 = t335 * t342;
t273 = pkin(2) * t435 - pkin(9) * t497;
t261 = qJD(3) * t273;
t479 = -qJD(1) * t241 + t261;
t341 = sin(qJ(4));
t344 = cos(qJ(4));
t427 = t514 * qJD(2);
t397 = t427 + qJD(3);
t473 = qJD(2) * t335;
t455 = t342 * t473;
t239 = t341 * t397 + t344 * t455;
t472 = qJD(2) * t345;
t454 = t335 * t472;
t308 = -qJD(4) + t454;
t334 = sin(pkin(13));
t337 = cos(pkin(13));
t188 = t239 * t337 - t308 * t334;
t340 = sin(qJ(6));
t216 = t334 * t239;
t425 = t308 * t337 + t216;
t536 = cos(qJ(6));
t386 = t536 * t425;
t99 = t188 * t340 + t386;
t564 = t99 ^ 2;
t237 = t341 * t455 - t344 * t397;
t227 = qJD(6) + t237;
t563 = t227 * t99;
t495 = t335 * t345;
t274 = pkin(2) * t437 + pkin(9) * t495;
t251 = pkin(10) * t514 + t274;
t407 = -pkin(3) * t345 - pkin(10) * t342;
t252 = (-pkin(2) + t407) * t335;
t468 = qJD(4) * t344;
t469 = qJD(4) * t341;
t516 = -t251 * t469 + t252 * t468 + t341 * t565 + t479 * t344;
t368 = t342 * t346 + t343 * t435;
t240 = t368 * t336;
t262 = qJD(3) * t274;
t478 = -qJD(1) * t240 + t262;
t101 = -t188 * t536 + t340 * t425;
t562 = t101 ^ 2;
t471 = qJD(3) * t342;
t561 = -(qJ(5) * t471 - qJD(5) * t345) * t335 - t516;
t436 = t344 * t514;
t470 = qJD(3) * t345;
t451 = t335 * t470;
t460 = t341 * t497;
t550 = qJD(4) * t460 - t344 * t451;
t206 = -qJD(4) * t436 + t550;
t496 = t335 * t344;
t272 = t341 * t514 + t342 * t496;
t450 = t341 * t470;
t207 = qJD(4) * t272 + t335 * t450;
t560 = t207 * pkin(4) + t206 * qJ(5) - t272 * qJD(5) + t478;
t403 = pkin(4) * t341 - qJ(5) * t344;
t474 = qJD(1) * t346;
t292 = qJD(2) * pkin(2) + t336 * t474;
t433 = t514 * t292;
t338 = cos(pkin(6));
t475 = qJD(1) * t338;
t276 = pkin(9) * t473 + t456;
t486 = t345 * t276;
t559 = -t342 * t433 - t486 - (t342 * t475 + t403 * t472) * t335 + qJD(4) * t403 - qJD(5) * t341;
t365 = t335 * t475 + t433;
t163 = -t342 * t276 + t345 * t365;
t259 = qJD(2) * t387;
t116 = t344 * t163 + t341 * t259;
t107 = qJ(5) * t455 + t116;
t462 = pkin(10) * t469;
t523 = t559 * t337 + (t107 + t462) * t334;
t558 = -t337 * t107 + t334 * t559;
t520 = t334 * t561 + t337 * t560;
t519 = t334 * t560 - t337 * t561;
t452 = t335 * t471;
t175 = -t206 * t337 + t334 * t452;
t557 = pkin(5) * t207 - pkin(11) * t175 + t520;
t174 = -t206 * t334 - t337 * t452;
t556 = pkin(11) * t174 - t519;
t487 = t344 * t345;
t218 = (t334 * t342 + t337 * t487) * t473;
t490 = t337 * t344;
t534 = pkin(5) * t341;
t555 = pkin(11) * t218 - t454 * t534 + (-pkin(11) * t490 + t534) * qJD(4) + t523;
t499 = t334 * t344;
t217 = -t337 * t455 + t454 * t499;
t491 = t337 * t341;
t554 = pkin(11) * t217 + (-pkin(10) * t491 - pkin(11) * t499) * qJD(4) + t558;
t515 = -t251 * t468 - t252 * t469 - t479 * t341 + t344 * t565;
t551 = -t334 * t468 + t217;
t405 = t337 * t468 - t218;
t533 = pkin(9) * t335;
t549 = qJDD(2) * t533 + (qJD(2) * t474 + qJDD(1) * t343) * t336 + t365 * qJD(3);
t374 = qJD(4) * t397;
t424 = t514 * qJDD(2);
t391 = t424 + qJDD(3);
t465 = qJDD(2) * t342;
t137 = t335 * (qJD(2) * (t342 * t468 + t450) + t341 * t465) + t341 * t374 - t344 * t391;
t522 = -t337 * t462 + t558;
t493 = t336 * t346;
t315 = qJDD(1) * t493;
t453 = qJD(2) * t494;
t415 = qJD(1) * t453;
t246 = qJDD(2) * pkin(2) + t315 - t415;
t438 = t338 * t514;
t312 = qJDD(1) * t438;
t466 = qJD(2) * qJD(3);
t445 = t342 * t466;
t464 = qJDD(2) * t345;
t379 = t445 - t464;
t444 = t345 * t466;
t380 = -t444 - t465;
t117 = t312 + (pkin(3) * t379 + pkin(10) * t380 - t246) * t335;
t164 = t342 * t365 + t486;
t145 = pkin(10) * t397 + t164;
t313 = qJD(1) * t438;
t186 = t313 + (qJD(2) * t407 - t292) * t335;
t443 = qJDD(1) * t335 * t338;
t363 = -t246 * t437 + t276 * t471 - t342 * t443 - t345 * t549;
t66 = pkin(10) * t391 - t363;
t24 = t341 * t117 - t145 * t469 + t186 * t468 + t344 * t66;
t81 = -t341 * t145 + t344 * t186;
t548 = t308 * t81 + t24;
t517 = -pkin(4) * t452 - t515;
t512 = sin(pkin(12));
t430 = t512 * t343;
t513 = cos(pkin(12));
t431 = t513 * t346;
t361 = -t338 * t431 + t430;
t440 = t336 * t513;
t547 = t335 * t440 + t361 * t514;
t429 = t512 * t346;
t432 = t513 * t343;
t362 = t338 * t429 + t432;
t439 = t336 * t512;
t546 = -t335 * t439 + t362 * t514;
t545 = (qJDD(3) + 0.2e1 * t424) * t335;
t434 = t346 * t514;
t544 = -t342 * t343 + t345 * t434;
t446 = qJD(6) * t536;
t467 = qJD(6) * t340;
t543 = -t334 * t467 + t337 * t446;
t542 = -pkin(4) * t344 - qJ(5) * t341;
t314 = t335 * t464;
t253 = t335 * t445 + qJDD(4) - t314;
t532 = t253 * pkin(4);
t541 = qJDD(5) - t532;
t82 = t145 * t344 + t186 * t341;
t74 = -qJ(5) * t308 + t82;
t144 = -pkin(3) * t397 - t163;
t83 = t237 * pkin(4) - t239 * qJ(5) + t144;
t35 = -t334 * t74 + t337 * t83;
t27 = pkin(5) * t237 - pkin(11) * t188 + t35;
t36 = t334 * t83 + t337 * t74;
t31 = -pkin(11) * t425 + t36;
t389 = -t27 * t536 + t340 * t31;
t442 = t335 * t465;
t136 = -t341 * t391 + (-t374 - t442) * t344 + t550 * qJD(2);
t105 = -t136 * t337 + t253 * t334;
t395 = qJ(5) * t253 - qJD(5) * t308;
t20 = t24 + t395;
t388 = -t246 * t435 + t276 * t470 + t342 * t549 - t345 * t443;
t67 = -pkin(3) * t391 + t388;
t30 = t137 * pkin(4) + t136 * qJ(5) - t239 * qJD(5) + t67;
t8 = -t20 * t334 + t337 * t30;
t6 = pkin(5) * t137 - pkin(11) * t105 + t8;
t127 = t334 * t136;
t426 = t253 * t337 + t127;
t9 = t337 * t20 + t334 * t30;
t7 = pkin(11) * t426 + t9;
t1 = -t389 * qJD(6) + t340 * t6 + t536 * t7;
t539 = t237 ^ 2;
t347 = qJD(2) ^ 2;
t205 = t272 * t337 - t334 * t495;
t271 = -t436 + t460;
t250 = -pkin(3) * t514 - t273;
t150 = t271 * pkin(4) - t272 * qJ(5) + t250;
t166 = t344 * t251 + t341 * t252;
t153 = -qJ(5) * t495 + t166;
t69 = t337 * t150 - t153 * t334;
t47 = pkin(5) * t271 - pkin(11) * t205 + t69;
t204 = t272 * t334 + t337 * t495;
t70 = t334 * t150 + t337 * t153;
t59 = -pkin(11) * t204 + t70;
t22 = -t340 * t59 + t47 * t536;
t538 = qJD(6) * t22 + t340 * t557 - t556 * t536;
t23 = t340 * t47 + t536 * t59;
t537 = -qJD(6) * t23 + t556 * t340 + t536 * t557;
t531 = pkin(11) + qJ(5);
t301 = -pkin(3) + t542;
t278 = t337 * t301;
t197 = -pkin(11) * t491 + t278 + (-pkin(10) * t334 - pkin(5)) * t344;
t236 = pkin(10) * t490 + t334 * t301;
t208 = -pkin(11) * t334 * t341 + t236;
t118 = t197 * t536 - t340 * t208;
t530 = qJD(6) * t118 + t340 * t555 + t536 * t554;
t119 = t340 * t197 + t208 * t536;
t529 = -qJD(6) * t119 - t340 * t554 + t536 * t555;
t528 = t101 * t99;
t526 = t308 * t82;
t305 = t531 * t334;
t306 = t531 * t337;
t210 = -t305 * t536 - t340 * t306;
t385 = -t340 * t334 + t337 * t536;
t506 = t237 * t337;
t162 = pkin(4) * t239 + qJ(5) * t237;
t52 = t337 * t162 - t334 * t81;
t39 = pkin(5) * t239 + pkin(11) * t506 + t52;
t507 = t237 * t334;
t53 = t334 * t162 + t337 * t81;
t45 = pkin(11) * t507 + t53;
t525 = qJD(5) * t385 + qJD(6) * t210 - t340 * t39 - t45 * t536;
t211 = -t340 * t305 + t306 * t536;
t280 = t334 * t536 + t340 * t337;
t524 = -qJD(5) * t280 - qJD(6) * t211 + t340 * t45 - t39 * t536;
t115 = -t341 * t163 + t259 * t344;
t108 = -pkin(4) * t455 - t115;
t458 = pkin(5) * t334 + pkin(10);
t521 = -pkin(5) * t217 + t458 * t468 - t108;
t518 = pkin(5) * t174 + t517;
t510 = t105 * t334;
t509 = t237 * t239;
t508 = t237 * t308;
t505 = t239 * t308;
t383 = t308 * t341;
t331 = pkin(13) + qJ(6);
t327 = sin(t331);
t503 = t327 * t344;
t328 = cos(t331);
t502 = t328 * t344;
t329 = t335 ^ 2;
t501 = t329 * t347;
t500 = t334 * t137;
t498 = t335 * t341;
t492 = t337 * t137;
t488 = t343 * t347;
t71 = t308 * pkin(4) + qJD(5) - t81;
t485 = -qJD(5) + t71;
t484 = qJDD(1) - g(3);
t270 = t280 * qJD(6);
t483 = -t280 * t237 - t270;
t482 = -t385 * t237 - t543;
t481 = -t270 * t341 + t340 * t551 + t405 * t536;
t480 = -t536 * t217 - t218 * t340 + t280 * t468 + t341 * t543;
t461 = t335 * t494;
t477 = pkin(2) * t493 + pkin(9) * t461;
t332 = t342 ^ 2;
t333 = t345 ^ 2;
t476 = t332 - t333;
t459 = t241 * pkin(3) + t477;
t428 = t340 * t105 - t536 * t426;
t165 = -t341 * t251 + t252 * t344;
t423 = -t344 * t117 + t145 * t468 + t186 * t469 + t341 * t66;
t422 = t342 * t345 * t501;
t419 = t335 * t453;
t413 = t342 * t444;
t408 = t335 * t347 * t514;
t267 = t338 * t432 + t429;
t268 = -t338 * t430 + t431;
t406 = g(1) * t268 + g(2) * t267;
t154 = pkin(4) * t495 - t165;
t404 = t426 * pkin(5);
t402 = t426 * t337;
t401 = t137 * t271 + t207 * t237;
t326 = pkin(5) * t337 + pkin(4);
t400 = -t326 * t344 - t341 * t531;
t399 = t425 * qJD(4);
t396 = 0.2e1 * t427 + qJD(3);
t178 = -t267 * t437 - t345 * t361;
t263 = t361 * pkin(2);
t394 = t178 * pkin(3) + t267 * t533 - t263;
t180 = -t268 * t437 - t345 * t362;
t264 = t362 * pkin(2);
t393 = t180 * pkin(3) + t268 * t533 - t264;
t392 = pkin(10) * t240 + t459;
t369 = t342 * t434 + t343 * t345;
t201 = t336 * t369 + t338 * t497;
t371 = t335 * t493 - t438;
t152 = t201 * t344 - t341 * t371;
t200 = -t336 * t544 - t338 * t495;
t88 = -t152 * t334 + t200 * t337;
t89 = t152 * t337 + t200 * t334;
t43 = -t340 * t89 + t536 * t88;
t13 = t340 * t27 + t31 * t536;
t44 = t340 * t88 + t536 * t89;
t126 = -t340 * t204 + t205 * t536;
t32 = qJD(6) * t386 - t536 * t105 + t188 * t467 - t340 * t426;
t151 = t201 * t341 + t344 * t371;
t147 = t267 * t345 - t342 * t547;
t348 = t335 * t361 - t440 * t514;
t90 = t147 * t341 - t344 * t348;
t149 = t268 * t345 - t342 * t546;
t349 = t335 * t362 + t439 * t514;
t92 = t149 * t341 - t344 * t349;
t382 = g(1) * t92 + g(2) * t90 + g(3) * t151;
t91 = t147 * t344 + t341 * t348;
t93 = t149 * t344 + t341 * t349;
t381 = -g(1) * t93 - g(2) * t91 - g(3) * t152;
t121 = t178 * t341 - t267 * t496;
t123 = t180 * t341 - t268 * t496;
t191 = t241 * t341 - t344 * t461;
t378 = g(1) * t123 + g(2) * t121 + g(3) * t191;
t146 = t267 * t342 + t345 * t547;
t148 = t268 * t342 + t345 * t546;
t377 = g(1) * t148 + g(2) * t146 + g(3) * t200;
t376 = g(1) * t149 + g(2) * t147 + g(3) * t201;
t177 = t267 * t435 - t342 * t361;
t179 = t268 * t435 - t342 * t362;
t375 = g(1) * t179 + g(2) * t177 + g(3) * t240;
t21 = t423 + t541;
t372 = -t21 + t382;
t367 = pkin(10) * t177 + t394;
t366 = pkin(10) * t179 + t393;
t364 = -t188 * t334 - t337 * t425;
t360 = t335 * t371;
t359 = -pkin(10) * t253 - t144 * t308;
t357 = t382 - t423;
t356 = -t137 * t344 - t237 * t383;
t355 = pkin(10) * qJD(4) * t308 + t377 - t67;
t2 = -qJD(6) * t13 - t340 * t7 + t536 * t6;
t354 = t360 * t466;
t351 = -t357 + t541;
t33 = -qJD(6) * t101 + t428;
t350 = t329 * t336 * t488 - qJDD(2) * t360;
t285 = t458 * t341;
t258 = t385 * t341;
t257 = t280 * t341;
t235 = -pkin(10) * t499 + t278;
t225 = -t292 * t335 + t313;
t199 = t200 * pkin(3);
t196 = -t246 * t335 + t312;
t192 = t241 * t344 + t341 * t461;
t141 = t148 * pkin(3);
t140 = t146 * pkin(3);
t132 = t338 * t451 + (t370 * qJD(2) + qJD(3) * t544) * t336;
t131 = t338 * t452 + (qJD(2) * t368 + qJD(3) * t369) * t336;
t129 = qJDD(6) + t137;
t125 = t204 * t536 + t205 * t340;
t124 = t180 * t344 + t268 * t498;
t122 = t178 * t344 + t267 * t498;
t104 = pkin(5) * t204 + t154;
t63 = -pkin(5) * t507 + t82;
t62 = -qJD(4) * t151 + t132 * t344 + t341 * t419;
t61 = qJD(4) * t152 + t132 * t341 - t344 * t419;
t56 = pkin(5) * t425 + t71;
t49 = qJD(6) * t126 + t174 * t536 + t340 * t175;
t48 = t340 * t174 - t175 * t536 + t204 * t446 + t205 * t467;
t41 = t131 * t334 + t337 * t62;
t40 = t131 * t337 - t334 * t62;
t14 = -t404 + t21;
t11 = -qJD(6) * t44 - t340 * t41 + t40 * t536;
t10 = qJD(6) * t43 + t340 * t40 + t41 * t536;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, t484, 0, 0, 0, 0, 0, 0 (qJDD(2) * t346 - t488) * t336 (-qJDD(2) * t343 - t346 * t347) * t336, 0, -g(3) + (t338 ^ 2 + (t343 ^ 2 + t346 ^ 2) * t336 ^ 2) * qJDD(1), 0, 0, 0, 0, 0, 0, -t131 * t397 - t200 * t391 - t342 * t354 - t345 * t350, -t132 * t397 - t201 * t391 + t342 * t350 - t345 * t354 ((t200 * t342 + t201 * t345) * qJDD(2) + (t131 * t342 + t132 * t345 + (t200 * t345 - t201 * t342) * qJD(3)) * qJD(2)) * t335, -t163 * t131 + t164 * t132 - t196 * t371 + t200 * t388 - t201 * t363 + t225 * t419 - g(3), 0, 0, 0, 0, 0, 0, t131 * t237 + t137 * t200 - t151 * t253 + t308 * t61, t131 * t239 - t136 * t200 - t152 * t253 + t308 * t62, -t136 * t151 - t137 * t152 - t237 * t62 + t239 * t61, t131 * t144 + t151 * t423 + t152 * t24 + t200 * t67 - t61 * t81 + t62 * t82 - g(3), 0, 0, 0, 0, 0, 0, t88 * t137 - t151 * t426 + t40 * t237 + t425 * t61, t105 * t151 - t137 * t89 + t188 * t61 - t237 * t41, -t88 * t105 - t40 * t188 - t41 * t425 + t426 * t89, t151 * t21 + t35 * t40 + t36 * t41 + t61 * t71 + t8 * t88 + t89 * t9 - g(3), 0, 0, 0, 0, 0, 0, t11 * t227 + t129 * t43 + t151 * t33 + t61 * t99, -t10 * t227 - t101 * t61 - t129 * t44 - t151 * t32, -t10 * t99 + t101 * t11 + t32 * t43 - t33 * t44, t1 * t44 + t10 * t13 - t11 * t389 + t14 * t151 + t2 * t43 + t56 * t61 - g(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), g(1) * t362 + g(2) * t361 - g(3) * t493 + t315, -t484 * t494 + t406, 0, 0 (qJDD(2) * t332 + 0.2e1 * t413) * t329, 0.2e1 * (t342 * t464 - t466 * t476) * t329, t342 * t545 + t396 * t451 (qJDD(2) * t333 - 0.2e1 * t413) * t329, t345 * t545 - t396 * t452, t391 * t514, t273 * t391 - t388 * t514 - g(1) * t180 - g(2) * t178 - g(3) * t241 + (-t196 * t345 + t225 * t471) * t335 + (-pkin(2) * t379 + t345 * t415) * t329 - t478 * t397, -t274 * t391 + t363 * t514 + (t196 * t342 + t225 * t470) * t335 + (pkin(2) * t380 - t342 * t415) * t329 + t375 - t479 * t397 (-g(3) * t494 + (-qJD(3) * t163 + qJDD(2) * t274 - t363) * t345 + (-qJD(3) * t164 - qJDD(2) * t273 + t388) * t342 + ((t479 - t261) * t345 + (t478 - t262) * t342) * qJD(2) - t406) * t335, -t363 * t274 - t388 * t273 + g(1) * t264 + g(2) * t263 - g(3) * t477 + (-t196 * pkin(2) - pkin(9) * t406 - t225 * t456) * t335 + t479 * t164 - t478 * t163, -t136 * t272 - t206 * t239, t136 * t271 - t137 * t272 + t206 * t237 - t207 * t239, t206 * t308 + t253 * t272 + (t136 * t345 + t239 * t471) * t335, t401, t207 * t308 - t253 * t271 + (t137 * t345 - t237 * t471) * t335 (-t253 * t345 - t308 * t471) * t335, -g(1) * t124 - g(2) * t122 - g(3) * t192 + t137 * t250 + t144 * t207 + t165 * t253 + t271 * t67 + (t345 * t423 + t471 * t81) * t335 - t515 * t308 + t478 * t237, -t136 * t250 - t144 * t206 - t166 * t253 + t272 * t67 + (t24 * t345 - t471 * t82) * t335 + t516 * t308 + t478 * t239 + t378, t136 * t165 - t137 * t166 + t206 * t81 - t207 * t82 - t237 * t516 - t239 * t515 - t24 * t271 + t272 * t423 - t375, -g(1) * t366 - g(2) * t367 - g(3) * t392 + t144 * t478 - t165 * t423 + t24 * t166 + t67 * t250 + t515 * t81 + t516 * t82, t105 * t205 + t175 * t188, -t105 * t204 - t188 * t174 - t175 * t425 + t205 * t426, t105 * t271 + t137 * t205 + t175 * t237 + t188 * t207, t174 * t425 - t204 * t426, -t204 * t137 - t174 * t237 - t207 * t425 + t271 * t426, t401, t69 * t137 + t8 * t271 + t35 * t207 - t154 * t426 + t21 * t204 + t71 * t174 - g(1) * (t124 * t337 + t179 * t334) - g(2) * (t122 * t337 + t177 * t334) - g(3) * (t192 * t337 + t240 * t334) + t520 * t237 + t517 * t425, -t70 * t137 - t9 * t271 - t36 * t207 + t154 * t105 + t21 * t205 + t71 * t175 - g(1) * (-t124 * t334 + t179 * t337) - g(2) * (-t122 * t334 + t177 * t337) - g(3) * (-t192 * t334 + t240 * t337) - t519 * t237 + t517 * t188, -t69 * t105 - t36 * t174 - t35 * t175 - t188 * t520 - t9 * t204 - t8 * t205 - t425 * t519 + t426 * t70 - t378, t9 * t70 + t8 * t69 + t21 * t154 - g(1) * (pkin(4) * t124 + qJ(5) * t123 + t366) - g(2) * (pkin(4) * t122 + qJ(5) * t121 + t367) - g(3) * (pkin(4) * t192 + qJ(5) * t191 + t392) + t517 * t71 + t519 * t36 + t520 * t35, t101 * t48 - t126 * t32, t101 * t49 + t125 * t32 - t126 * t33 + t48 * t99, -t101 * t207 + t126 * t129 - t227 * t48 - t271 * t32, t125 * t33 + t49 * t99, -t125 * t129 - t207 * t99 - t227 * t49 - t271 * t33, t129 * t271 + t207 * t227, t22 * t129 + t2 * t271 - t389 * t207 + t104 * t33 + t14 * t125 + t56 * t49 - g(1) * (t124 * t328 + t179 * t327) - g(2) * (t122 * t328 + t177 * t327) - g(3) * (t192 * t328 + t240 * t327) + t518 * t99 + t537 * t227, -t23 * t129 - t1 * t271 - t13 * t207 - t104 * t32 + t14 * t126 - t56 * t48 - g(1) * (-t124 * t327 + t179 * t328) - g(2) * (-t122 * t327 + t177 * t328) - g(3) * (-t192 * t327 + t240 * t328) - t538 * t227 - t518 * t101, -t1 * t125 + t101 * t537 - t126 * t2 - t13 * t49 + t22 * t32 - t23 * t33 - t389 * t48 - t538 * t99 - t378, t1 * t23 + t2 * t22 + t14 * t104 - g(1) * (t123 * t531 + t124 * t326 + t179 * t458 + t393) - g(2) * (t121 * t531 + t122 * t326 + t177 * t458 + t394) - g(3) * (t191 * t531 + t192 * t326 + t240 * t458 + t459) + t518 * t56 + t538 * t13 - t537 * t389; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t422, t476 * t501, -t345 * t408 + t442, t422, t342 * t408 + t314, t391, t164 * t397 - t225 * t455 + t377 - t388, t163 * t397 - t225 * t454 + t363 + t376, 0, 0, -t136 * t341 - t344 * t505 (-t136 + t508) * t344 + (-t137 + t505) * t341, -t308 * t468 + t253 * t341 + (-t239 * t342 + t308 * t487) * t473, t356, t308 * t469 + t253 * t344 + (t237 * t342 - t345 * t383) * t473, t308 * t455, -pkin(3) * t137 + t115 * t308 - t164 * t237 + t341 * t359 + t344 * t355 - t455 * t81, pkin(3) * t136 - t116 * t308 - t164 * t239 - t341 * t355 + t344 * t359 + t455 * t82, t115 * t239 + t116 * t237 + ((qJD(4) * t239 - t137) * pkin(10) + t548) * t344 + (t423 + t526 + (qJD(4) * t237 - t136) * pkin(10)) * t341 - t376, -t67 * pkin(3) + g(1) * t141 + g(2) * t140 + g(3) * t199 - t81 * t115 - t82 * t116 - t144 * t164 + (t24 * t344 + t423 * t341 + (-t341 * t82 - t344 * t81) * qJD(4) - t376) * pkin(10), t105 * t491 + t188 * t405, t218 * t425 + t188 * t217 + (t402 - t510) * t341 + t364 * t468, -t105 * t344 + t405 * t237 + (-t188 * t308 + t492) * t341, -t425 * t217 + (-t341 * t426 + t344 * t399) * t334, -t426 * t344 + t551 * t237 + (t425 * t454 - t399 - t500) * t341, t356, t235 * t137 - t108 * t425 - t71 * t217 + t523 * t237 - t376 * t334 + (-t8 + t377 * t337 + (pkin(10) * t425 + t71 * t334) * qJD(4)) * t344 + (-pkin(10) * t426 + t21 * t334 - t308 * t35) * t341, -t108 * t188 - t236 * t137 - t71 * t218 - t522 * t237 - t376 * t337 + (t9 + (pkin(10) * t188 + t337 * t71) * qJD(4) - t377 * t334) * t344 + (pkin(10) * t105 + t21 * t337 + t308 * t36) * t341, t236 * t426 - t235 * t105 + t36 * t217 + t35 * t218 - t523 * t188 + (-t334 * t36 - t337 * t35) * t468 + (-t334 * t9 - t337 * t8 + t377) * t341 - t522 * t425, t9 * t236 + t8 * t235 - t71 * t108 - g(1) * (t148 * t542 - t141) - g(2) * (t146 * t542 - t140) - g(3) * (t200 * t542 - t199) + t522 * t36 + t523 * t35 + (t21 * t341 + t468 * t71 - t376) * pkin(10), -t101 * t481 - t258 * t32, t101 * t480 + t257 * t32 - t258 * t33 - t481 * t99, t101 * t383 + t129 * t258 + t227 * t481 + t32 * t344, t257 * t33 + t480 * t99, -t129 * t257 - t227 * t480 + t33 * t344 + t383 * t99, -t129 * t344 - t227 * t383, t118 * t129 - t2 * t344 + t285 * t33 + t14 * t257 - g(1) * (-t148 * t502 + t149 * t327) - g(2) * (-t146 * t502 + t147 * t327) - g(3) * (-t200 * t502 + t201 * t327) + t521 * t99 + t480 * t56 + t529 * t227 + t389 * t383, -t119 * t129 + t1 * t344 - t285 * t32 + t14 * t258 - g(1) * (t148 * t503 + t149 * t328) - g(2) * (t146 * t503 + t147 * t328) - g(3) * (t200 * t503 + t201 * t328) + t481 * t56 - t530 * t227 + t13 * t383 - t521 * t101, -t1 * t257 + t101 * t529 + t118 * t32 - t119 * t33 - t13 * t480 - t2 * t258 + t341 * t377 + t389 * t481 - t530 * t99, t1 * t119 + t2 * t118 + t14 * t285 - g(1) * (t148 * t400 + t149 * t458 - t141) - g(2) * (t146 * t400 + t147 * t458 - t140) - g(3) * (t200 * t400 + t201 * t458 - t199) + t521 * t56 + t530 * t13 - t529 * t389; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t509, t239 ^ 2 - t539, -t136 - t508, -t509, -t137 - t505, t253, -t144 * t239 + t357 - t526, t144 * t237 - t381 - t548, 0, 0, t188 * t506 + t510, t105 * t337 + t237 * t364 + t334 * t426, -t188 * t239 + t337 * t539 + t500, t425 * t507 + t402, t239 * t425 - t334 * t539 + t492, -t509, -qJ(5) * t500 + pkin(4) * t127 - t82 * t216 - t35 * t239 + (t334 * t485 - t52) * t237 + (t372 - t526 + t532) * t337, -qJ(5) * t492 - pkin(4) * t105 - t188 * t82 + t239 * t36 + (t337 * t485 + t53) * t237 - t372 * t334, t52 * t188 + t53 * t216 + (qJ(5) * t127 - qJD(5) * t216 - t35 * t237 + t53 * t308 + t337 * t395 + t9) * t337 + (qJ(5) * t105 + qJD(5) * t188 - t237 * t36 - t8) * t334 + t381, -t35 * t52 - t36 * t53 - t71 * t82 + (-t334 * t35 + t337 * t36) * qJD(5) + t372 * pkin(4) + (-t8 * t334 + t9 * t337 + t381) * qJ(5), t101 * t482 - t280 * t32, -t101 * t483 - t280 * t33 - t32 * t385 + t482 * t99, t101 * t239 + t129 * t280 - t227 * t482, -t33 * t385 - t483 * t99, t129 * t385 + t227 * t483 + t239 * t99, -t227 * t239, t129 * t210 - t14 * t385 + t227 * t524 + t239 * t389 - t326 * t33 + t328 * t382 - t483 * t56 - t63 * t99, t101 * t63 - t129 * t211 + t13 * t239 + t14 * t280 - t227 * t525 + t32 * t326 - t327 * t382 - t482 * t56, t1 * t385 + t101 * t524 + t13 * t483 - t2 * t280 + t210 * t32 - t211 * t33 - t389 * t482 - t525 * t99 + t381, t1 * t211 + t2 * t210 - t14 * t326 - t56 * t63 - g(1) * (-t326 * t92 + t531 * t93) - g(2) * (-t326 * t90 + t531 * t91) - g(3) * (-t151 * t326 + t152 * t531) + t525 * t13 - t524 * t389; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t188 * t237 - t426, -t237 * t425 + t105, -t188 ^ 2 - t425 ^ 2, t188 * t35 + t36 * t425 + t351, 0, 0, 0, 0, 0, 0, -t101 * t227 + t33, -t32 - t563, -t562 - t564, t101 * t389 + t13 * t99 + t351 - t404; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t528, t562 - t564, -t32 + t563, t528, -t428 - (-qJD(6) + t227) * t101, t129, t13 * t227 + t56 * t101 - g(1) * (t148 * t328 - t327 * t93) - g(2) * (t146 * t328 - t327 * t91) - g(3) * (-t152 * t327 + t200 * t328) + t2, -t389 * t227 + t56 * t99 - g(1) * (-t148 * t327 - t328 * t93) - g(2) * (-t146 * t327 - t328 * t91) - g(3) * (-t152 * t328 - t200 * t327) - t1, 0, 0;];
tau_reg  = t3;
