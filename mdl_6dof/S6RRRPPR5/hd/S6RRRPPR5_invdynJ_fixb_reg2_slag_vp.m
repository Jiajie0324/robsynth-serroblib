% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRPPR5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4,theta5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRPPR5_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR5_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR5_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPPR5_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPPR5_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPPR5_invdynJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:44:23
% EndTime: 2019-03-09 15:45:13
% DurationCPUTime: 31.46s
% Computational Cost: add. (33072->928), mult. (81898->1228), div. (0->0), fcn. (66860->18), ass. (0->393)
t374 = sin(pkin(6));
t384 = cos(qJ(2));
t497 = qJD(1) * t384;
t468 = t374 * t497;
t613 = qJD(3) - t468;
t381 = sin(qJ(2));
t499 = qJD(1) * t374;
t469 = t381 * t499;
t376 = cos(pkin(6));
t498 = qJD(1) * t376;
t483 = pkin(1) * t498;
t288 = -pkin(8) * t469 + t384 * t483;
t434 = pkin(2) * t381 - pkin(9) * t384;
t289 = t434 * t499;
t380 = sin(qJ(3));
t383 = cos(qJ(3));
t216 = -t288 * t380 + t383 * t289;
t377 = -qJ(4) - pkin(9);
t456 = qJD(3) * t377;
t515 = t383 * t384;
t612 = -(pkin(3) * t381 - qJ(4) * t515) * t499 - t216 - qJD(4) * t380 + t383 * t456;
t217 = t383 * t288 + t380 * t289;
t445 = t380 * t468;
t611 = -qJ(4) * t445 - qJD(4) * t383 - t380 * t456 + t217;
t373 = sin(pkin(11));
t525 = t373 * t380;
t560 = cos(pkin(11));
t406 = t383 * t560 - t525;
t249 = t406 * t468;
t296 = t406 * qJD(3);
t506 = t249 - t296;
t454 = t560 * t380;
t311 = t373 * t383 + t454;
t503 = t613 * t311;
t372 = sin(pkin(12));
t375 = cos(pkin(12));
t346 = qJD(2) + t498;
t443 = t380 * t469;
t267 = t346 * t383 - t443;
t268 = t346 * t380 + t383 * t469;
t407 = t373 * t267 + t268 * t560;
t168 = t372 * t613 + t375 * t407;
t379 = sin(qJ(6));
t193 = t372 * t407;
t452 = -t375 * t613 + t193;
t583 = cos(qJ(6));
t410 = t583 * t452;
t101 = t168 * t379 + t410;
t610 = t101 ^ 2;
t200 = -t560 * t267 + t268 * t373;
t197 = qJD(6) + t200;
t609 = t101 * t197;
t507 = t373 * t612 - t611 * t560;
t521 = t374 * t384;
t582 = pkin(1) * t381;
t502 = pkin(8) * t521 + t376 * t582;
t291 = t502 * qJD(1);
t494 = qJD(3) * t380;
t435 = -t291 + (-t445 + t494) * pkin(3);
t100 = -t168 * t583 + t379 * t452;
t608 = t100 ^ 2;
t607 = qJ(5) * t469 - t507;
t606 = t503 * pkin(4) + qJ(5) * t506 - qJD(5) * t311 + t435;
t218 = t249 * t372 - t375 * t469;
t451 = -t296 * t372 + t218;
t219 = t249 * t375 + t372 * t469;
t605 = -t296 * t375 + t219;
t489 = qJD(1) * qJD(2);
t461 = t384 * t489;
t487 = qJDD(1) * t381;
t604 = t461 + t487;
t564 = t372 * t607 + t375 * t606;
t563 = t372 * t606 - t375 * t607;
t524 = t374 * t381;
t299 = -t376 * t383 + t380 * t524;
t603 = pkin(3) * t299;
t602 = pkin(5) * t503 + pkin(10) * t605 + t564;
t601 = pkin(10) * t451 + t563;
t549 = t200 * t407;
t312 = t372 * t583 + t379 * t375;
t298 = t312 * qJD(6);
t513 = -t312 * t200 - t298;
t409 = -t379 * t372 + t583 * t375;
t464 = qJD(6) * t583;
t491 = qJD(6) * t379;
t589 = -t372 * t491 + t375 * t464;
t512 = -t409 * t200 - t589;
t509 = t611 * t373 + t560 * t612;
t598 = t604 * t374;
t584 = cos(qJ(1));
t472 = t584 * t384;
t382 = sin(qJ(1));
t517 = t381 * t382;
t304 = -t376 * t517 + t472;
t522 = t374 * t383;
t245 = -t304 * t380 + t382 * t522;
t254 = pkin(9) * t346 + t291;
t417 = -pkin(2) * t384 - pkin(9) * t381 - pkin(1);
t281 = t417 * t374;
t258 = qJD(1) * t281;
t185 = -t254 * t380 + t383 * t258;
t462 = t381 * t489;
t440 = t374 * t462;
t486 = qJDD(1) * t384;
t344 = t374 * t486;
t448 = qJD(2) * t483;
t488 = qJDD(1) * t376;
t481 = pkin(1) * t488;
t476 = pkin(8) * t344 + t381 * t481 + t384 * t448;
t228 = -pkin(8) * t440 + t476;
t442 = qJDD(2) + t488;
t207 = pkin(9) * t442 + t228;
t411 = t434 * qJD(2);
t214 = (qJD(1) * t411 + qJDD(1) * t417) * t374;
t493 = qJD(3) * t383;
t403 = -t383 * t207 - t380 * t214 + t254 * t494 - t258 * t493;
t597 = -t185 * t613 - t403;
t347 = pkin(8) * t524;
t581 = pkin(1) * t384;
t307 = t376 * t581 - t347;
t292 = qJD(2) * t307;
t473 = t584 * t381;
t516 = t382 * t384;
t302 = t376 * t473 + t516;
t369 = qJ(3) + pkin(11);
t363 = sin(t369);
t365 = cos(t369);
t475 = t374 * t584;
t235 = t302 * t365 - t363 * t475;
t301 = -t376 * t472 + t517;
t368 = pkin(12) + qJ(6);
t362 = sin(t368);
t364 = cos(t368);
t596 = t235 * t362 - t301 * t364;
t595 = t235 * t364 + t301 * t362;
t495 = qJD(2) * t384;
t466 = t380 * t495;
t188 = t346 * t494 + t374 * (qJD(1) * (t381 * t493 + t466) + t380 * t487) - t383 * t442;
t367 = t374 ^ 2;
t594 = 0.2e1 * t367;
t579 = pkin(3) * t373;
t355 = qJ(5) + t579;
t574 = pkin(10) + t355;
t305 = t574 * t372;
t306 = t574 * t375;
t230 = -t305 * t583 - t379 * t306;
t580 = pkin(3) * t268;
t116 = pkin(4) * t407 + qJ(5) * t200 + t580;
t186 = t254 * t383 + t258 * t380;
t156 = qJ(4) * t267 + t186;
t149 = t373 * t156;
t155 = -qJ(4) * t268 + t185;
t82 = t155 * t560 - t149;
t47 = t375 * t116 - t372 * t82;
t545 = t200 * t375;
t35 = pkin(5) * t407 + pkin(10) * t545 + t47;
t48 = t372 * t116 + t375 * t82;
t546 = t200 * t372;
t41 = pkin(10) * t546 + t48;
t593 = qJD(5) * t409 + qJD(6) * t230 - t379 * t35 - t41 * t583;
t231 = -t379 * t305 + t306 * t583;
t561 = -qJD(5) * t312 - qJD(6) * t231 - t35 * t583 + t379 * t41;
t283 = qJDD(3) - t344 + t440;
t187 = qJD(3) * t443 - t346 * t493 - t380 * t442 - t383 * t598;
t87 = -qJD(3) * t186 - t380 * t207 + t383 * t214;
t61 = pkin(3) * t283 + qJ(4) * t187 - qJD(4) * t268 + t87;
t64 = -qJ(4) * t188 + qJD(4) * t267 - t403;
t571 = t373 * t64 - t560 * t61;
t25 = -t283 * pkin(4) + qJDD(5) + t571;
t234 = t302 * t363 + t365 * t475;
t523 = t374 * t382;
t238 = t304 * t363 - t365 * t523;
t277 = t363 * t524 - t376 * t365;
t402 = g(1) * t238 + g(2) * t234 + g(3) * t277;
t387 = t25 - t402;
t592 = -t186 * t613 - t87;
t303 = t376 * t516 + t473;
t432 = g(1) * t303 + g(2) * t301;
t590 = g(3) * t521 - t432;
t390 = t590 * t363;
t591 = t407 * t452;
t508 = pkin(4) * t469 - t509;
t280 = pkin(9) * t376 + t502;
t210 = t383 * t280 + t380 * t281;
t138 = pkin(3) * t613 + t155;
t455 = t560 * t156;
t78 = t373 * t138 + t455;
t76 = qJ(5) * t613 + t78;
t253 = -pkin(2) * t346 - t288;
t198 = -pkin(3) * t267 + qJD(4) + t253;
t88 = pkin(4) * t200 - qJ(5) * t407 + t198;
t42 = -t372 * t76 + t375 * t88;
t43 = t372 * t88 + t375 * t76;
t588 = -t372 * t42 + t375 * t43;
t293 = t502 * qJD(2);
t126 = -t187 * t560 - t373 * t188;
t118 = t372 * t126;
t453 = t283 * t375 - t118;
t97 = t126 * t375 + t283 * t372;
t32 = qJD(6) * t410 + t168 * t491 - t379 * t453 - t583 * t97;
t587 = t100 * t513 + t32 * t409;
t125 = -t187 * t373 + t560 * t188;
t122 = qJDD(6) + t125;
t586 = t122 * t312 - t197 * t512;
t30 = pkin(5) * t200 - pkin(10) * t168 + t42;
t34 = -pkin(10) * t452 + t43;
t413 = -t30 * t583 + t379 * t34;
t27 = t373 * t61 + t560 * t64;
t492 = qJD(5) * t613;
t24 = qJ(5) * t283 + t27 + t492;
t446 = pkin(8) * t598 + t381 * t448 - t384 * t481;
t208 = -pkin(2) * t442 + t446;
t132 = t188 * pkin(3) + qJDD(4) + t208;
t38 = t125 * pkin(4) - t126 * qJ(5) - qJD(5) * t407 + t132;
t8 = -t24 * t372 + t375 * t38;
t6 = pkin(5) * t125 - pkin(10) * t97 + t8;
t9 = t375 * t24 + t372 * t38;
t7 = pkin(10) * t453 + t9;
t1 = -t413 * qJD(6) + t379 * t6 + t583 * t7;
t578 = pkin(5) * t372;
t361 = pkin(3) * t383 + pkin(2);
t314 = t361 * t521;
t577 = g(3) * t314;
t576 = g(3) * t374;
t575 = t375 * pkin(5);
t233 = -pkin(4) * t406 - qJ(5) * t311 - t361;
t334 = t377 * t383;
t252 = -t334 * t560 + t377 * t525;
t163 = t375 * t233 - t252 * t372;
t532 = t311 * t375;
t136 = -pkin(5) * t406 - pkin(10) * t532 + t163;
t164 = t372 * t233 + t375 * t252;
t533 = t311 * t372;
t145 = -pkin(10) * t533 + t164;
t72 = t136 * t583 - t379 * t145;
t573 = qJD(6) * t72 + t379 * t602 + t583 * t601;
t73 = t379 * t136 + t145 * t583;
t572 = -qJD(6) * t73 - t379 * t601 + t583 * t602;
t496 = qJD(2) * t381;
t290 = t374 * t411;
t141 = -t280 * t494 + t281 * t493 + t380 * t290 + t383 * t292;
t300 = t376 * t380 + t381 * t522;
t242 = qJD(3) * t300 + t374 * t466;
t109 = -qJ(4) * t242 - qJD(4) * t299 + t141;
t142 = -qJD(3) * t210 + t383 * t290 - t292 * t380;
t243 = -qJD(3) * t299 + t495 * t522;
t467 = t374 * t496;
t98 = pkin(3) * t467 - qJ(4) * t243 - qJD(4) * t300 + t142;
t52 = t560 * t109 + t373 * t98;
t46 = (qJ(5) * t496 - qJD(5) * t384) * t374 + t52;
t172 = t242 * t560 + t243 * t373;
t173 = -t373 * t242 + t243 * t560;
t204 = pkin(3) * t242 + t293;
t225 = -t373 * t299 + t300 * t560;
t69 = pkin(4) * t172 - qJ(5) * t173 - qJD(5) * t225 + t204;
t22 = t372 * t69 + t375 * t46;
t567 = t97 * t372;
t566 = t97 * t375;
t562 = -pkin(5) * t451 + t508;
t224 = t299 * t560 + t300 * t373;
t279 = t347 + (-pkin(2) - t581) * t376;
t232 = t279 + t603;
t127 = pkin(4) * t224 - qJ(5) * t225 + t232;
t209 = -t280 * t380 + t383 * t281;
t162 = -pkin(3) * t521 - qJ(4) * t300 + t209;
t174 = -qJ(4) * t299 + t210;
t108 = t373 * t162 + t560 * t174;
t95 = -qJ(5) * t521 + t108;
t56 = t372 * t127 + t375 * t95;
t559 = t101 * t407;
t558 = t100 * t101;
t557 = t100 * t407;
t555 = t168 * t407;
t554 = t168 * t372;
t551 = t407 ^ 2;
t550 = t407 * t613;
t548 = t200 ^ 2;
t547 = t200 * t613;
t544 = t267 * t613;
t543 = t268 * t267;
t542 = t268 * t613;
t537 = t301 * t372;
t536 = t302 * t380;
t535 = t303 * t372;
t530 = t613 * t380;
t529 = t362 * t365;
t528 = t364 * t365;
t527 = t365 * t384;
t526 = t367 * qJD(1) ^ 2;
t119 = t375 * t125;
t519 = t377 * t381;
t514 = -t200 * t546 + t119;
t511 = t379 * t218 - t583 * t219 + t296 * t409 - t298 * t311;
t510 = -t583 * t218 - t219 * t379 + t296 * t312 + t311 * t589;
t505 = -t301 * t361 - t302 * t377;
t504 = -t303 * t361 - t304 * t377;
t501 = pkin(1) * t584 + pkin(8) * t523;
t370 = t381 ^ 2;
t371 = t384 ^ 2;
t500 = t370 - t371;
t490 = qJD(2) - t346;
t484 = g(3) * t524;
t480 = t384 * t526;
t478 = t380 * t523;
t474 = t383 * t584;
t470 = t560 * pkin(3);
t463 = pkin(1) * t594;
t458 = -pkin(1) * t382 + pkin(8) * t475;
t21 = -t372 * t46 + t375 * t69;
t457 = t379 * t97 - t583 * t453;
t55 = t375 * t127 - t372 * t95;
t81 = t155 * t373 + t455;
t336 = t380 * t475;
t449 = t302 * t383 - t336;
t251 = -t334 * t373 - t377 * t454;
t447 = t381 * t480;
t444 = t613 * t469;
t438 = t381 * t461;
t437 = t245 * pkin(3);
t33 = -qJD(6) * t100 + t457;
t436 = t101 * t512 - t312 * t33;
t360 = -t470 - pkin(4);
t433 = -g(1) * t234 + g(2) * t238;
t431 = g(1) * t301 - g(2) * t303;
t430 = g(1) * t304 + g(2) * t302;
t429 = -t9 * t372 - t8 * t375;
t428 = t409 * t122 + t197 * t513;
t426 = t453 * pkin(5);
t51 = -t373 * t109 + t560 * t98;
t425 = pkin(4) * t365 + qJ(5) * t363;
t77 = t138 * t560 - t149;
t107 = t162 * t560 - t373 * t174;
t424 = pkin(3) * t478 - t303 * t377 + t304 * t361 + t501;
t423 = t375 * t452;
t422 = t453 * t375;
t421 = t452 * t296;
t420 = t125 * t224 + t172 * t200;
t359 = pkin(4) + t575;
t378 = -pkin(10) - qJ(5);
t419 = t359 * t365 - t363 * t378;
t415 = g(1) * t584 + g(2) * t382;
t196 = t225 * t375 - t372 * t521;
t40 = pkin(5) * t224 - pkin(10) * t196 + t55;
t195 = t225 * t372 + t375 * t521;
t44 = -pkin(10) * t195 + t56;
t14 = -t379 * t44 + t40 * t583;
t11 = t379 * t30 + t34 * t583;
t15 = t379 * t40 + t44 * t583;
t96 = pkin(4) * t521 - t107;
t412 = t125 * t372 + t200 * t545;
t131 = -t379 * t195 + t196 * t583;
t408 = pkin(3) * t336 + t301 * t377 - t302 * t361 + t458;
t404 = -t125 * t406 + t200 * t503;
t239 = t304 * t365 + t363 * t523;
t278 = t363 * t376 + t365 * t524;
t401 = g(1) * t239 + g(2) * t235 + g(3) * t278;
t400 = -t374 * t474 - t536;
t75 = -pkin(4) * t613 + qJD(5) - t77;
t397 = -t125 * t355 + (-qJD(5) + t75) * t200;
t395 = -t430 - t484;
t394 = t400 * pkin(3);
t393 = -t208 - t590;
t392 = -pkin(9) * t283 + t253 * t613;
t49 = -pkin(4) * t467 - t51;
t391 = t613 * t81 + t402;
t389 = t590 * t365;
t388 = t25 * t311 + t296 * t75 - t430;
t2 = -qJD(6) * t11 - t379 * t7 + t583 * t6;
t386 = -pkin(9) * qJD(3) * t613 + t393;
t322 = t360 - t575;
t246 = t304 * t383 + t478;
t223 = t409 * t311;
t222 = t312 * t311;
t215 = (-t283 * t384 + t496 * t613) * t374;
t213 = pkin(5) * t533 + t251;
t181 = t239 * t364 + t303 * t362;
t180 = -t239 * t362 + t303 * t364;
t158 = t173 * t375 + t372 * t467;
t157 = t173 * t372 - t375 * t467;
t130 = t195 * t583 + t196 * t379;
t90 = t372 * t453;
t71 = t195 * pkin(5) + t96;
t70 = -pkin(5) * t546 + t81;
t60 = pkin(5) * t452 + t75;
t54 = qJD(6) * t131 + t157 * t583 + t379 * t158;
t53 = t379 * t157 - t158 * t583 + t195 * t464 + t196 * t491;
t39 = t157 * pkin(5) + t49;
t18 = -pkin(10) * t157 + t22;
t17 = -t426 + t25;
t16 = pkin(5) * t172 - pkin(10) * t158 + t21;
t4 = -qJD(6) * t15 + t16 * t583 - t379 * t18;
t3 = qJD(6) * t14 + t379 * t16 + t18 * t583;
t5 = [0, 0, 0, 0, 0, qJDD(1), g(1) * t382 - g(2) * t584, t415, 0, 0 (qJDD(1) * t370 + 0.2e1 * t438) * t367 (t381 * t486 - t489 * t500) * t594 (t346 * t495 + t381 * qJDD(2) + (t461 + 0.2e1 * t487) * t376) * t374 (qJDD(1) * t371 - 0.2e1 * t438) * t367 (-t346 * t496 + t384 * qJDD(2) + (-t462 + 0.2e1 * t486) * t376) * t374, t442 * t376, -t293 * t346 + t307 * t442 - t446 * t376 + g(1) * t302 - g(2) * t304 + (-t462 + t486) * t463, -t228 * t376 - t292 * t346 - t502 * t442 - t463 * t604 - t431 ((-qJD(2) * t288 + t502 * qJDD(1) + t228) * t384 + (-qJD(2) * t291 - t307 * qJDD(1) + t446) * t381 - t415) * t374, t367 * qJDD(1) * pkin(1) ^ 2 - g(1) * t458 - g(2) * t501 + t228 * t502 - t288 * t293 + t291 * t292 - t307 * t446, -t187 * t300 + t243 * t268, t187 * t299 - t188 * t300 - t242 * t268 + t243 * t267, t243 * t613 + t283 * t300 + (t187 * t384 + t268 * t496) * t374, t188 * t299 - t242 * t267, -t242 * t613 - t283 * t299 + (t188 * t384 + t267 * t496) * t374, t215, t142 * t613 + t209 * t283 - t293 * t267 + t279 * t188 + t208 * t299 + t253 * t242 + g(1) * t449 - g(2) * t246 + (t185 * t496 - t384 * t87) * t374, -g(1) * t536 - g(2) * t245 - t141 * t613 - t279 * t187 + t208 * t300 - t210 * t283 + t253 * t243 + t293 * t268 + (-g(1) * t474 - t186 * t496 - t384 * t403) * t374, t141 * t267 - t142 * t268 - t185 * t243 - t186 * t242 + t187 * t209 - t188 * t210 + t299 * t403 - t300 * t87 + t431, -t403 * t210 + t186 * t141 + t87 * t209 + t185 * t142 + t208 * t279 + t253 * t293 - g(1) * (-pkin(2) * t302 - pkin(9) * t301 + t458) - g(2) * (pkin(2) * t304 + pkin(9) * t303 + t501) t126 * t225 + t173 * t407, -t125 * t225 - t126 * t224 - t172 * t407 - t173 * t200, t173 * t613 + t225 * t283 + (-t126 * t384 + t407 * t496) * t374, t420, -t172 * t613 - t224 * t283 + (t125 * t384 - t200 * t496) * t374, t215, g(1) * t235 - g(2) * t239 + t107 * t283 + t125 * t232 + t132 * t224 + t172 * t198 + t200 * t204 + t613 * t51 + (t384 * t571 + t496 * t77) * t374, -t108 * t283 + t126 * t232 + t132 * t225 + t173 * t198 + t407 * t204 - t613 * t52 + (t27 * t384 - t496 * t78) * t374 + t433, -t107 * t126 - t108 * t125 - t172 * t78 - t173 * t77 - t200 * t52 - t224 * t27 + t225 * t571 - t407 * t51 + t431, -g(1) * t408 - g(2) * t424 - t107 * t571 + t27 * t108 + t132 * t232 + t198 * t204 + t77 * t51 + t78 * t52, t158 * t168 + t196 * t97, -t168 * t157 - t158 * t452 - t97 * t195 + t196 * t453, t125 * t196 + t158 * t200 + t168 * t172 + t224 * t97, t157 * t452 - t195 * t453, -t195 * t125 - t157 * t200 - t172 * t452 + t224 * t453, t420, t21 * t200 + t55 * t125 + t8 * t224 + t42 * t172 + t49 * t452 - t96 * t453 + t25 * t195 + t75 * t157 - g(1) * (-t235 * t375 - t537) - g(2) * (t239 * t375 + t535) -t22 * t200 - t56 * t125 - t9 * t224 - t43 * t172 + t49 * t168 + t96 * t97 + t25 * t196 + t75 * t158 - g(1) * (t235 * t372 - t301 * t375) - g(2) * (-t239 * t372 + t303 * t375) -t43 * t157 - t42 * t158 - t21 * t168 - t9 * t195 - t8 * t196 - t22 * t452 + t453 * t56 - t55 * t97 - t433, t9 * t56 + t43 * t22 + t8 * t55 + t42 * t21 + t25 * t96 + t75 * t49 - g(1) * (-pkin(4) * t235 - qJ(5) * t234 + t408) - g(2) * (pkin(4) * t239 + qJ(5) * t238 + t424) t100 * t53 - t131 * t32, t100 * t54 + t101 * t53 + t130 * t32 - t131 * t33, -t100 * t172 + t122 * t131 - t197 * t53 - t224 * t32, t101 * t54 + t130 * t33, -t101 * t172 - t122 * t130 - t197 * t54 - t224 * t33, t122 * t224 + t172 * t197, g(1) * t595 - g(2) * t181 + t39 * t101 + t14 * t122 + t17 * t130 - t413 * t172 + t4 * t197 + t2 * t224 + t71 * t33 + t60 * t54, -g(1) * t596 - g(2) * t180 - t1 * t224 - t100 * t39 - t11 * t172 - t15 * t122 + t17 * t131 - t3 * t197 - t71 * t32 - t60 * t53, -t1 * t130 + t100 * t4 - t101 * t3 - t11 * t54 - t131 * t2 + t14 * t32 - t15 * t33 - t413 * t53 - t433, t1 * t15 + t11 * t3 + t2 * t14 - t413 * t4 + t17 * t71 + t60 * t39 - g(1) * (-pkin(5) * t537 + t234 * t378 - t235 * t359 + t408) - g(2) * (pkin(5) * t535 - t238 * t378 + t239 * t359 + t424); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t447, t500 * t526 (t490 * t497 + t487) * t374, t447, -t469 * t490 + t344, t442, t291 * t346 + t526 * t582 - t446 - t590, pkin(1) * t480 + t288 * t346 + (pkin(8) * t489 + g(3)) * t524 + t430 - t476, 0, 0, -t187 * t380 + t383 * t542 (-t187 + t544) * t383 + (-t188 - t542) * t380, t613 * t493 + t283 * t380 + (-t268 * t381 - t515 * t613) * t499, -t188 * t383 - t267 * t530, -t613 * t494 + t283 * t383 + (-t267 * t381 + t384 * t530) * t499, -t444, -pkin(2) * t188 - t185 * t469 - t216 * t613 + t267 * t291 + t380 * t392 + t383 * t386, pkin(2) * t187 + t186 * t469 + t217 * t613 - t268 * t291 - t380 * t386 + t383 * t392, t216 * t268 - t217 * t267 + ((qJD(3) * t268 - t188) * pkin(9) + t597) * t383 + ((-qJD(3) * t267 - t187) * pkin(9) + t592) * t380 + t395, -t185 * t216 - t186 * t217 - t253 * t291 + t393 * pkin(2) + (-t87 * t380 - t403 * t383 + (-t185 * t383 - t186 * t380) * qJD(3) + t395) * pkin(9), t126 * t311 - t407 * t506, -t125 * t311 + t126 * t406 + t200 * t506 - t407 * t503, t283 * t311 - t407 * t469 - t506 * t613, t404, t200 * t469 + t283 * t406 - t503 * t613, -t444, -t125 * t361 - t132 * t406 + t198 * t503 + t200 * t435 - t251 * t283 - t469 * t77 + t509 * t613 - t389, -t126 * t361 + t132 * t311 - t198 * t506 - t252 * t283 + t407 * t435 + t469 * t78 - t507 * t613 + t390, -t125 * t252 + t126 * t251 - t200 * t507 + t27 * t406 + t311 * t571 - t407 * t509 - t503 * t78 + t506 * t77 + t395, t27 * t252 + t571 * t251 - t132 * t361 - g(1) * t504 - g(2) * t505 - g(3) * (-t374 * t519 + t314) + t507 * t78 + t509 * t77 + t435 * t198, -t168 * t605 + t532 * t97, -t375 * t421 + t219 * t452 + (t422 - t567) * t311 + t451 * t168, t119 * t311 + t168 * t503 - t200 * t605 - t406 * t97, -t452 * t218 + (-t311 * t453 + t421) * t372, -t125 * t533 + t200 * t451 - t406 * t453 - t452 * t503, t404, t163 * t125 - t8 * t406 - t251 * t453 - t75 * t218 + t503 * t42 - t375 * t389 + (t388 - t484) * t372 + t564 * t200 + t508 * t452, -t164 * t125 - t75 * t219 + t251 * t97 + t9 * t406 - t503 * t43 - t432 * t372 * t365 + t388 * t375 - (-t372 * t527 + t375 * t381) * t576 - t563 * t200 + t508 * t168, t164 * t453 - t163 * t97 + t43 * t218 + t42 * t219 + t429 * t311 + (-t372 * t43 - t375 * t42) * t296 - t564 * t168 - t390 - t563 * t452, t9 * t164 + t8 * t163 + t25 * t251 - g(1) * (-t303 * t425 + t504) - g(2) * (-t301 * t425 + t505) - t577 + t508 * t75 + t563 * t43 + t564 * t42 - (t384 * t425 - t519) * t576, -t100 * t511 - t223 * t32, t100 * t510 - t101 * t511 + t222 * t32 - t223 * t33, -t100 * t503 + t122 * t223 + t197 * t511 + t32 * t406, t101 * t510 + t222 * t33, -t101 * t503 - t122 * t222 - t197 * t510 + t33 * t406, -t122 * t406 + t197 * t503, t72 * t122 - t2 * t406 + t213 * t33 + t17 * t222 - g(1) * (-t303 * t528 + t304 * t362) - g(2) * (-t301 * t528 + t302 * t362) + t510 * t60 - (t362 * t381 + t364 * t527) * t576 + t572 * t197 + t562 * t101 - t503 * t413, -t73 * t122 + t1 * t406 - t213 * t32 + t17 * t223 - g(1) * (t303 * t529 + t304 * t364) - g(2) * (t301 * t529 + t302 * t364) + t511 * t60 - (-t362 * t527 + t364 * t381) * t576 - t573 * t197 - t503 * t11 - t562 * t100, -t1 * t222 + t100 * t572 - t101 * t573 - t11 * t510 - t2 * t223 + t32 * t72 - t33 * t73 + t413 * t511 - t390, t1 * t73 + t2 * t72 + t17 * t213 - g(1) * (-t303 * t419 + t304 * t578 + t504) - g(2) * (-t301 * t419 + t302 * t578 + t505) - t577 + t562 * t60 + t573 * t11 - t572 * t413 - (t419 * t384 + (-t377 + t578) * t381) * t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t543, -t267 ^ 2 + t268 ^ 2, -t187 - t544, t543, -t188 + t542, t283, -g(1) * t245 - g(2) * t400 + g(3) * t299 - t253 * t268 - t592, g(1) * t246 + g(2) * t449 + g(3) * t300 - t253 * t267 - t597, 0, 0, t549, -t548 + t551, t126 + t547, -t549, -t125 + t550, t283, -t198 * t407 + (-t200 * t268 + t283 * t560) * pkin(3) + t391 - t571, t198 * t200 + t613 * t82 + (-t268 * t407 - t283 * t373) * pkin(3) + t401 - t27 (-t125 * t373 - t126 * t560) * pkin(3) + (t78 - t81) * t407 + (t82 - t77) * t200, -g(1) * t437 - g(2) * t394 + g(3) * t603 - t198 * t580 + t27 * t579 - t470 * t571 + t77 * t81 - t78 * t82, t168 * t545 + t567, t566 + t90 - (t423 + t554) * t200, t412 - t555, t452 * t546 + t422, t514 + t591, -t549, t360 * t118 - t81 * t193 - t42 * t407 - t47 * t200 + t397 * t372 + (-t283 * t360 - t25 + t391) * t375, -t168 * t81 + t200 * t48 + t360 * t97 + t372 * t387 + t397 * t375 + t407 * t43, t47 * t168 + t48 * t193 + (-qJD(5) * t193 - t355 * t118 - t42 * t200 - t48 * t613 + t9 + (t283 * t355 + t492) * t375) * t375 + (qJD(5) * t168 - t200 * t43 + t355 * t97 - t8) * t372 - t401, t25 * t360 - t43 * t48 - t42 * t47 - t75 * t81 - g(1) * (-pkin(4) * t238 + qJ(5) * t239 + t437) - g(2) * (-t234 * pkin(4) + t235 * qJ(5) + t394) - g(3) * (-pkin(4) * t277 + qJ(5) * t278 - t603) + (-t8 * t372 + t9 * t375) * t355 + t588 * qJD(5), t100 * t512 - t312 * t32, t436 - t587, t557 + t586, -t101 * t513 - t33 * t409, t428 + t559, -t197 * t407, -t101 * t70 + t122 * t230 - t17 * t409 + t197 * t561 + t322 * t33 + t364 * t402 + t407 * t413 - t513 * t60, t100 * t70 + t11 * t407 - t122 * t231 + t17 * t312 - t197 * t593 - t32 * t322 - t362 * t402 - t512 * t60, t1 * t409 + t100 * t561 - t101 * t593 + t11 * t513 - t2 * t312 + t230 * t32 - t231 * t33 - t413 * t512 - t401, t1 * t231 + t2 * t230 + t17 * t322 - t60 * t70 - g(1) * (-t238 * t359 - t239 * t378 + t437) - g(2) * (-t234 * t359 - t235 * t378 + t394) - g(3) * (-t277 * t359 - t278 * t378 - t603) + t593 * t11 - t561 * t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125 + t550, t126 - t547, -t548 - t551, t200 * t78 + t407 * t77 + t132 + t590, 0, 0, 0, 0, 0, 0, t514 - t591, -t412 - t555, -t566 + t90 - (t423 - t554) * t200, t200 * t588 - t407 * t75 - t429 + t590, 0, 0, 0, 0, 0, 0, t428 - t559, t557 - t586, t436 + t587, t1 * t312 - t11 * t512 + t2 * t409 - t407 * t60 - t413 * t513 + t590; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t168 * t200 - t453, -t200 * t452 + t97, -t168 ^ 2 - t452 ^ 2, t168 * t42 + t43 * t452 + t387, 0, 0, 0, 0, 0, 0, -t100 * t197 + t33, -t32 - t609, -t608 - t610, t100 * t413 + t101 * t11 + t387 - t426; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t558, t608 - t610, -t32 + t609, t558, -t457 - (-qJD(6) + t197) * t100, t122, t11 * t197 + t60 * t100 - g(1) * t180 + g(2) * t596 - g(3) * (-t278 * t362 - t364 * t521) + t2, -t413 * t197 + t60 * t101 + g(1) * t181 + g(2) * t595 - g(3) * (-t278 * t364 + t362 * t521) - t1, 0, 0;];
tau_reg  = t5;