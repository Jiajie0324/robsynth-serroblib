% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRPPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRPPR7_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR7_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR7_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPPR7_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPPR7_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR7_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:01:13
% EndTime: 2019-03-09 16:01:43
% DurationCPUTime: 16.68s
% Computational Cost: add. (13764->822), mult. (29809->1012), div. (0->0), fcn. (20841->12), ass. (0->361)
t344 = cos(qJ(3));
t453 = qJD(3) * t344;
t345 = cos(qJ(2));
t459 = qJD(1) * t345;
t583 = t344 * t459 - t453;
t341 = sin(qJ(3));
t438 = t341 * t459;
t455 = qJD(3) * t341;
t582 = t438 - t455;
t342 = sin(qJ(2));
t460 = qJD(1) * t342;
t439 = t341 * t460;
t449 = t344 * qJD(2);
t251 = t439 - t449;
t437 = t344 * t460;
t458 = qJD(2) * t341;
t253 = t437 + t458;
t336 = sin(pkin(10));
t337 = cos(pkin(10));
t156 = t251 * t336 + t253 * t337;
t340 = sin(qJ(6));
t417 = -t251 * t337 + t336 * t253;
t525 = cos(qJ(6));
t79 = -t156 * t525 + t340 * t417;
t581 = t79 ^ 2;
t550 = t156 * t340 + t417 * t525;
t580 = t550 ^ 2;
t288 = -qJD(3) + t459;
t279 = qJD(6) + t288;
t579 = t79 * t279;
t578 = t279 * t550;
t510 = pkin(8) - qJ(5);
t268 = t510 * t344;
t522 = pkin(7) * t341;
t441 = -pkin(3) - t522;
t416 = -pkin(4) + t441;
t480 = t344 * t345;
t407 = pkin(2) * t342 - pkin(8) * t345;
t257 = t407 * qJD(1);
t489 = t257 * t344;
t577 = t489 - (-qJ(5) * t480 + t342 * t416) * qJD(1) + qJD(3) * t268 - qJD(5) * t341;
t228 = t341 * t257;
t307 = qJ(4) * t460;
t451 = qJD(5) * t344;
t484 = t342 * t344;
t486 = t341 * t345;
t576 = t228 + t307 + (-pkin(7) * t484 + qJ(5) * t486) * qJD(1) + t455 * t510 + t451;
t512 = t79 * t550;
t473 = -t336 * t583 + t582 * t337;
t243 = t336 * t341 + t337 * t344;
t365 = t243 * t345;
t472 = -qJD(1) * t365 + t243 * qJD(3);
t575 = -t580 + t581;
t343 = sin(qJ(1));
t346 = cos(qJ(1));
t478 = t346 * t341;
t226 = -t343 * t344 + t345 * t478;
t479 = t345 * t346;
t227 = t341 * t343 + t344 * t479;
t332 = pkin(10) + qJ(6);
t315 = sin(t332);
t316 = cos(t332);
t122 = t226 * t316 - t227 * t315;
t323 = t342 * pkin(8);
t328 = t345 * pkin(2);
t442 = -pkin(1) - t328;
t380 = t442 - t323;
t232 = t380 * qJD(1);
t314 = pkin(7) * t459;
t272 = qJD(2) * pkin(8) + t314;
t162 = t344 * t232 - t341 * t272;
t112 = qJ(5) * t253 + t162;
t527 = pkin(3) + pkin(4);
t88 = t288 * t527 + qJD(4) - t112;
t163 = t232 * t341 + t272 * t344;
t113 = qJ(5) * t251 + t163;
t276 = t288 * qJ(4);
t96 = t113 - t276;
t42 = -t336 * t96 + t337 * t88;
t565 = pkin(9) * t156;
t33 = pkin(5) * t288 + t42 - t565;
t43 = t336 * t88 + t337 * t96;
t547 = pkin(9) * t417;
t36 = t43 - t547;
t13 = t340 * t33 + t36 * t525;
t319 = t345 * qJDD(1);
t447 = qJD(1) * qJD(2);
t542 = -t342 * t447 + t319;
t242 = qJDD(3) - t542;
t454 = qJD(3) * t342;
t551 = qJD(1) * t454 - qJDD(2);
t427 = t345 * t447;
t446 = t342 * qJDD(1);
t553 = -t427 - t446;
t145 = -qJD(3) * t449 + t341 * t551 + t344 * t553;
t258 = t407 * qJD(2);
t168 = qJD(1) * t258 + qJDD(1) * t380;
t216 = pkin(7) * t542 + qJDD(2) * pkin(8);
t413 = -t344 * t168 + t341 * t216 + t232 * t455 + t272 * t453;
t381 = qJDD(4) + t413;
t32 = qJ(5) * t145 - qJD(5) * t253 - t242 * t527 + t381;
t146 = t341 * (qJD(2) * (qJD(3) + t459) + t446) + t551 * t344;
t230 = t242 * qJ(4);
t274 = t288 * qJD(4);
t60 = t341 * t168 + t344 * t216 + t232 * t453 - t272 * t455;
t46 = t230 - t274 + t60;
t35 = qJ(5) * t146 + qJD(5) * t251 + t46;
t424 = -t337 * t32 + t336 * t35;
t72 = -t145 * t337 + t146 * t336;
t7 = -pkin(5) * t242 - pkin(9) * t72 - t424;
t11 = t336 * t32 + t337 * t35;
t71 = -t145 * t336 - t337 * t146;
t9 = -pkin(9) * t71 + t11;
t2 = -qJD(6) * t13 - t340 * t9 + t525 * t7;
t331 = g(3) * t342;
t384 = t315 * t344 - t316 * t341;
t481 = t343 * t345;
t224 = t341 * t481 + t344 * t346;
t225 = t343 * t480 - t478;
t540 = t224 * t316 - t225 * t315;
t271 = -qJD(2) * pkin(2) + pkin(7) * t460;
t140 = t251 * pkin(3) - t253 * qJ(4) + t271;
t98 = -pkin(4) * t251 + qJD(5) - t140;
t59 = pkin(5) * t417 + t98;
t574 = -g(1) * t122 - g(2) * t540 + t384 * t331 + t59 * t79 + t2;
t573 = t417 ^ 2;
t505 = t576 * t336 + t577 * t337;
t504 = t577 * t336 - t576 * t337;
t571 = t288 * t417;
t429 = qJD(6) * t525;
t450 = qJD(6) * t340;
t16 = t156 * t450 + t340 * t71 + t417 * t429 - t525 * t72;
t569 = -t16 + t578;
t123 = t226 * t315 + t227 * t316;
t372 = -t33 * t429 - t340 * t7 + t36 * t450 - t525 * t9;
t383 = t315 * t341 + t316 * t344;
t389 = t224 * t315 + t225 * t316;
t568 = g(1) * t123 + g(2) * t389 + t331 * t383 + t550 * t59 + t372;
t490 = t253 * t288;
t493 = t251 * t288;
t567 = (t146 - t490) * t341 + (t145 - t493) * t344;
t566 = t156 ^ 2;
t563 = pkin(5) * t460 - t472 * pkin(9) + t505;
t562 = t473 * pkin(9) - t504;
t561 = t156 * t288;
t559 = t156 * t417;
t555 = t146 + t490;
t483 = t342 * t346;
t485 = t342 * t343;
t554 = g(1) * t483 + g(2) * t485;
t552 = qJ(4) * t583 - t341 * qJD(4) - t314;
t513 = g(3) * t345;
t404 = g(1) * t346 + g(2) * t343;
t536 = t342 * t404;
t530 = t513 - t536;
t456 = qJD(2) * t345;
t497 = t146 * t344;
t498 = t145 * t341;
t549 = t342 * ((t251 * t341 - t253 * t344) * qJD(3) - t497 + t498) - (t251 * t344 + t253 * t341) * t456;
t548 = 0.2e1 * pkin(1);
t445 = t527 * t341;
t475 = -qJD(3) * t445 + t438 * t527 - t552;
t457 = qJD(2) * t342;
t543 = qJ(4) * t457 - qJD(4) * t345;
t362 = t341 * t456 + t342 * t453;
t433 = t341 * t454;
t434 = t345 * t449;
t541 = -t433 + t434;
t448 = qJD(4) - t162;
t322 = t341 * qJ(4);
t538 = t344 * pkin(3) + pkin(2) + t322;
t537 = -t513 + t554;
t521 = pkin(8) * t242;
t535 = t140 * t288 + t521;
t367 = t242 * t344 + t288 * t455;
t534 = qJD(1) * (-t251 * t342 + t288 * t486) - t367;
t368 = t242 * t341 - t288 * t453;
t529 = t342 * (-qJD(2) * t251 - t368) + t345 * (t288 * t458 + t146);
t528 = t253 ^ 2;
t283 = t288 ^ 2;
t526 = pkin(5) * t71;
t524 = pkin(3) * t242;
t523 = pkin(5) * t336;
t520 = pkin(8) * t253;
t517 = g(1) * t343;
t304 = pkin(5) * t337 + pkin(4);
t511 = -pkin(3) - t304;
t267 = t510 * t341;
t173 = t337 * t267 - t268 * t336;
t488 = t336 * t344;
t382 = -t337 * t341 + t488;
t129 = pkin(9) * t382 + t173;
t174 = t336 * t267 + t337 * t268;
t130 = -pkin(9) * t243 + t174;
t55 = t129 * t525 - t340 * t130;
t509 = qJD(6) * t55 + t563 * t340 - t562 * t525;
t56 = t340 * t129 + t130 * t525;
t508 = -qJD(6) * t56 + t562 * t340 + t563 * t525;
t464 = t328 + t323;
t266 = -pkin(1) - t464;
t292 = pkin(7) * t480;
t470 = qJD(3) * t292 + t266 * t455;
t69 = (-qJ(5) * t456 - t258) * t344 + (qJ(5) * t455 + qJD(2) * t416 - t451) * t342 + t470;
t471 = t341 * t258 + t266 * t453;
t70 = (-pkin(7) * qJD(2) + qJ(5) * qJD(3)) * t484 + (qJD(5) * t342 + (-pkin(7) * qJD(3) + qJ(5) * qJD(2)) * t345) * t341 + t471 + t543;
t31 = t336 * t69 + t337 * t70;
t259 = -qJ(4) * t336 - t337 * t527;
t255 = -pkin(5) + t259;
t260 = qJ(4) * t337 - t336 * t527;
t160 = t255 * t525 - t340 * t260;
t369 = t340 * t336 - t337 * t525;
t52 = -t112 * t336 + t337 * t113;
t40 = t52 - t547;
t53 = t337 * t112 + t336 * t113;
t41 = t53 + t565;
t507 = -qJD(4) * t369 + qJD(6) * t160 - t340 * t40 - t41 * t525;
t161 = t340 * t255 + t260 * t525;
t246 = t336 * t525 + t340 * t337;
t506 = -qJD(4) * t246 - qJD(6) * t161 + t340 * t41 - t40 * t525;
t503 = pkin(5) * t473 + t475;
t502 = -t243 * t429 - t340 * t473 + t382 * t450 + t472 * t525;
t150 = -t340 * t243 - t382 * t525;
t501 = qJD(6) * t150 + t340 * t472 + t473 * t525;
t500 = pkin(7) * qJDD(1);
t135 = t163 - t276;
t499 = t135 * t288;
t496 = t163 * t288;
t495 = t224 * t336;
t491 = t253 * t251;
t487 = t341 * t342;
t349 = qJD(1) ^ 2;
t482 = t342 * t349;
t290 = pkin(7) * t486;
t327 = t345 * pkin(3);
t147 = pkin(4) * t345 + t290 + t327 + (-qJ(5) * t342 - t266) * t344;
t190 = t341 * t266 + t292;
t176 = -qJ(4) * t345 + t190;
t159 = qJ(5) * t487 + t176;
t76 = t336 * t147 + t337 * t159;
t477 = t279 * t246;
t476 = t279 * t369;
t474 = -pkin(3) * t582 + t552;
t167 = t253 * pkin(3) + t251 * qJ(4);
t469 = t554 * t344;
t467 = qJ(4) * t434 + qJD(4) * t484;
t466 = g(1) * t485 - g(2) * t483;
t463 = t346 * pkin(1) + t343 * pkin(7);
t333 = t342 ^ 2;
t334 = t345 ^ 2;
t462 = t333 - t334;
t461 = t333 + t334;
t444 = t345 * t482;
t312 = pkin(7) * t446;
t217 = -qJDD(2) * pkin(2) + pkin(7) * t427 + t312;
t443 = g(1) * t479 + g(2) * t481 + t331;
t431 = t288 * t460;
t430 = t251 ^ 2 - t528;
t425 = qJ(4) + t523;
t30 = -t336 * t70 + t337 * t69;
t423 = t340 * t72 + t525 * t71;
t212 = t224 * pkin(3);
t422 = qJ(4) * t225 - t212;
t214 = t226 * pkin(3);
t421 = qJ(4) * t227 - t214;
t75 = t337 * t147 - t159 * t336;
t419 = -t224 * t337 + t225 * t336;
t418 = t226 * t336 + t227 * t337;
t189 = t266 * t344 - t290;
t238 = t344 * pkin(4) + t538;
t414 = -pkin(8) * t497 - t443;
t412 = pkin(3) * t480 + qJ(4) * t486 + t464;
t411 = pkin(2) * t479 + pkin(8) * t483 + t463;
t410 = t342 * t427;
t409 = -pkin(7) - t445;
t120 = -pkin(4) * t253 - t167;
t408 = t342 * t441;
t406 = -g(1) * t224 + g(2) * t226;
t405 = g(1) * t225 - g(2) * t227;
t403 = -g(2) * t346 + t517;
t329 = t346 * pkin(7);
t402 = -t225 * pkin(3) - qJ(4) * t224 + t329;
t401 = -t258 * t344 + t470;
t399 = pkin(7) * t251 + t271 * t341;
t398 = pkin(7) * t253 + t271 * t344;
t397 = -t336 * t42 + t337 * t43;
t396 = (qJD(3) * t251 - t145) * pkin(8);
t395 = t227 * pkin(3) + t411;
t394 = qJD(3) * t271 - t521;
t131 = pkin(3) * t288 + t448;
t393 = t131 * t344 - t135 * t341;
t391 = t156 * t336 - t337 * t417;
t390 = -t162 * t344 - t163 * t341;
t388 = t225 * t337 + t495;
t387 = t226 * t337 - t227 * t336;
t348 = qJD(2) ^ 2;
t377 = qJDD(2) * t345 - t342 * t348;
t180 = -pkin(7) * t437 + t228;
t375 = -g(1) * t226 - g(2) * t224 - g(3) * t487;
t374 = pkin(8) * qJD(3) * t288 - t513;
t206 = t243 * t342;
t51 = pkin(5) * t345 - pkin(9) * t206 + t75;
t205 = t336 * t484 - t337 * t487;
t54 = -pkin(9) * t205 + t76;
t25 = -t340 * t54 + t51 * t525;
t26 = t340 * t51 + t525 * t54;
t47 = t146 * pkin(3) + t145 * qJ(4) - t253 * qJD(4) + t217;
t371 = -t344 * t527 - t322;
t119 = -t340 * t205 + t206 * t525;
t170 = -t242 * t345 - t288 * t457;
t366 = t374 - t47;
t364 = -t217 + t374;
t285 = qJ(4) * t484;
t175 = t342 * t409 + t285;
t361 = t380 * t517;
t360 = qJ(4) * t226 + t395;
t357 = -t341 * t493 - t497;
t356 = -t375 - t413;
t37 = -pkin(4) * t146 + qJDD(5) - t47;
t110 = (-t342 * t449 - t345 * t455) * pkin(7) + t471;
t17 = -qJD(6) * t79 + t423;
t354 = t146 * t487 + t251 * t362;
t353 = t140 * t253 + qJDD(4) - t356;
t352 = t37 + t537;
t351 = g(1) * t227 + g(2) * t225 + g(3) * t484 - t162 * t288 - t60;
t89 = t371 * t454 + t409 * t456 + t467;
t339 = -pkin(9) - qJ(5);
t295 = pkin(8) * t479;
t291 = pkin(8) * t481;
t231 = -qJDD(6) + t242;
t202 = -t285 + (pkin(3) * t341 + pkin(7)) * t342;
t179 = pkin(7) * t439 + t489;
t177 = -t189 + t327;
t169 = pkin(5) * t243 + t238;
t166 = qJD(1) * t408 - t489;
t165 = t180 + t307;
t149 = t243 * t525 - t340 * t382;
t126 = qJD(2) * t365 + t382 * t454;
t125 = t336 * t541 - t337 * t362;
t118 = t205 * t525 + t206 * t340;
t114 = pkin(5) * t205 + t175;
t111 = t457 * t522 - t401;
t109 = pkin(3) * t362 + pkin(7) * t456 + qJ(4) * t433 - t467;
t99 = qJD(2) * t408 + t401;
t95 = -t145 - t493;
t94 = t110 + t543;
t90 = (-t253 * t342 + t288 * t480) * qJD(1) + t368;
t74 = -t344 * t490 - t498;
t73 = -pkin(5) * t156 + t120;
t68 = -t145 * t484 + t253 * t541;
t50 = t381 - t524;
t49 = (-t288 * t449 + t145) * t345 + (qJD(2) * t253 + t367) * t342;
t48 = pkin(5) * t125 + t89;
t39 = qJD(6) * t119 + t125 * t525 + t340 * t126;
t38 = t340 * t125 - t126 * t525 + t205 * t429 + t206 * t450;
t24 = -pkin(9) * t125 + t31;
t21 = -pkin(5) * t457 - pkin(9) * t126 + t30;
t20 = t37 + t526;
t12 = t33 * t525 - t340 * t36;
t4 = -qJD(6) * t26 + t21 * t525 - t340 * t24;
t3 = qJD(6) * t25 + t340 * t21 + t24 * t525;
t1 = [0, 0, 0, 0, 0, qJDD(1), t403, t404, 0, 0, qJDD(1) * t333 + 0.2e1 * t410, 0.2e1 * t319 * t342 - 0.2e1 * t447 * t462, qJDD(2) * t342 + t345 * t348, qJDD(1) * t334 - 0.2e1 * t410, t377, 0 (-0.2e1 * pkin(1) * t447 - pkin(7) * qJDD(2)) * t342 + (-pkin(7) * t348 + qJDD(1) * t548 + t403) * t345, -t377 * pkin(7) + t548 * t553 - t466, 0.2e1 * t461 * t500 - t404, -g(1) * (-pkin(1) * t343 + t329) - g(2) * t463 + (pkin(7) ^ 2 * t461 + pkin(1) ^ 2) * qJDD(1), t68, t549, t49, t354, t529, t170, -t111 * t288 + t189 * t242 + (qJD(2) * t399 + t413) * t345 + (pkin(7) * t146 + qJD(2) * t162 + t217 * t341 + t271 * t453) * t342 + t405, t110 * t288 - t190 * t242 + (qJD(2) * t398 + t60) * t345 + (-pkin(7) * t145 - qJD(2) * t163 + t217 * t344 - t271 * t455) * t342 + t406, -t110 * t251 - t111 * t253 + t145 * t189 - t146 * t190 + t390 * t456 + (-t341 * t60 + t344 * t413 + (t162 * t341 - t163 * t344) * qJD(3)) * t342 + t466, t60 * t190 + t163 * t110 - t413 * t189 + t162 * t111 - g(1) * t329 - g(2) * t411 - t361 + (t217 * t342 + t271 * t456) * pkin(7), t68, t49, -t549, t170, -t529, t354, t109 * t251 + t146 * t202 - t177 * t242 + t288 * t99 + (t140 * t458 + t50) * t345 + (-qJD(2) * t131 + t140 * t453 + t341 * t47) * t342 + t405, -t145 * t177 - t146 * t176 - t251 * t94 + t253 * t99 + t393 * t456 + (-t341 * t46 + t344 * t50 + (-t131 * t341 - t135 * t344) * qJD(3)) * t342 + t466, -t109 * t253 + t145 * t202 + t176 * t242 - t288 * t94 + (-t140 * t449 - t46) * t345 + (qJD(2) * t135 + t140 * t455 - t344 * t47) * t342 - t406, -g(1) * t402 - g(2) * t360 + t140 * t109 + t131 * t99 + t135 * t94 + t46 * t176 + t50 * t177 + t47 * t202 - t361, t126 * t156 + t206 * t72, -t125 * t156 - t126 * t417 - t205 * t72 - t206 * t71, t126 * t288 - t156 * t457 - t206 * t242 + t345 * t72, t125 * t417 + t205 * t71, -t125 * t288 + t205 * t242 - t345 * t71 + t417 * t457, t170, g(1) * t388 - g(2) * t418 + t98 * t125 + t175 * t71 + t37 * t205 - t75 * t242 + t30 * t288 - t345 * t424 + t417 * t89 - t42 * t457, -g(1) * t419 - g(2) * t387 - t11 * t345 + t98 * t126 + t89 * t156 + t175 * t72 + t37 * t206 + t76 * t242 - t31 * t288 + t43 * t457, -t11 * t205 - t125 * t43 - t126 * t42 - t156 * t30 + t206 * t424 - t31 * t417 - t71 * t76 - t72 * t75 - t466, t11 * t76 + t43 * t31 - t424 * t75 + t42 * t30 + t37 * t175 + t98 * t89 - g(1) * (-pkin(4) * t225 + t402) - g(2) * (pkin(4) * t227 - qJ(5) * t483 + t360) - (-t342 * t510 + t442) * t517, -t119 * t16 + t38 * t79, t118 * t16 - t119 * t17 + t38 * t550 + t39 * t79, -t119 * t231 - t16 * t345 - t279 * t38 + t457 * t79, t118 * t17 + t39 * t550, t118 * t231 - t17 * t345 - t279 * t39 + t457 * t550, -t231 * t345 - t279 * t457, g(1) * t389 - g(2) * t123 + t114 * t17 + t20 * t118 - t12 * t457 + t2 * t345 - t25 * t231 + t4 * t279 + t59 * t39 + t48 * t550, g(1) * t540 - g(2) * t122 - t114 * t16 + t20 * t119 + t13 * t457 + t26 * t231 - t3 * t279 + t345 * t372 - t59 * t38 - t48 * t79, t118 * t372 - t119 * t2 + t12 * t38 - t13 * t39 + t16 * t25 - t17 * t26 - t3 * t550 + t4 * t79 - t466, -t372 * t26 + t13 * t3 + t2 * t25 + t12 * t4 + t20 * t114 + t59 * t48 - g(1) * (-pkin(5) * t495 - t225 * t304 + t402) - g(2) * (t226 * t425 + t227 * t304 + t339 * t483 + t395) - ((-pkin(8) - t339) * t342 + t442) * t517; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t444, t462 * t349, t446, t444, t319, qJDD(2), pkin(1) * t482 - t312 + t537 (pkin(1) * t349 - t500) * t345 + t443, 0, 0, t74, -t567, t90, t357, -t534, t431, -pkin(2) * t146 + t179 * t288 + t394 * t341 + t364 * t344 + (-t162 * t342 - t345 * t399) * qJD(1) + t469, pkin(2) * t145 - t180 * t288 + t394 * t344 + (t163 * t342 - t345 * t398) * qJD(1) + (-t364 - t536) * t341, t179 * t253 + t180 * t251 + (t162 * t459 + t60 + (-t162 + t520) * qJD(3)) * t344 + (t396 + t413 + t496) * t341 + t414, -t217 * pkin(2) - t163 * t180 - t162 * t179 - t271 * t314 - g(1) * (-pkin(2) * t483 + t295) - g(2) * (-pkin(2) * t485 + t291) - g(3) * t464 + (qJD(3) * t390 + t341 * t413 + t60 * t344) * pkin(8), t74, t90, t567, t431, t534, t357, t131 * t460 - t146 * t538 - t166 * t288 + t474 * t251 - t341 * t535 + t366 * t344 + t469, t165 * t251 - t166 * t253 + (-t131 * t459 + t46 + (t131 + t520) * qJD(3)) * t344 + (t396 + t50 + t499) * t341 + t414, -t135 * t460 - t145 * t538 + t165 * t288 - t474 * t253 + t535 * t344 + (t366 + t536) * t341, -t135 * t165 - t131 * t166 - g(1) * t295 - g(2) * t291 - g(3) * t412 + t474 * t140 + (qJD(3) * t393 + t50 * t341 + t46 * t344) * pkin(8) + (-t47 + t536) * t538, t156 * t472 - t382 * t72, -t156 * t473 - t243 * t72 + t382 * t71 - t417 * t472, t156 * t460 + t242 * t382 + t288 * t472, t243 * t71 + t417 * t473, t242 * t243 - t288 * t473 - t417 * t460, t431, t42 * t460 - g(3) * t365 + t475 * t417 - t173 * t242 + t238 * t71 + t505 * t288 + t473 * t98 + (t37 + t536) * t243, t475 * t156 + t174 * t242 + t238 * t72 - t504 * t288 - t43 * t460 + t472 * t98 + (-t37 + t530) * t382, -t11 * t243 - t156 * t505 - t173 * t72 - t174 * t71 - t382 * t424 - t417 * t504 - t42 * t472 - t43 * t473 + t443, t11 * t174 - t424 * t173 + t37 * t238 - g(1) * (-qJ(5) * t479 + t295) - g(2) * (-qJ(5) * t481 + t291) - g(3) * (pkin(4) * t480 + t412) + t475 * t98 + t504 * t43 + t505 * t42 + (g(3) * qJ(5) + t404 * (pkin(2) - t371)) * t342, -t150 * t16 - t502 * t79, t149 * t16 - t150 * t17 + t501 * t79 - t502 * t550, -t150 * t231 + t279 * t502 - t460 * t79, t149 * t17 + t501 * t550, t149 * t231 - t279 * t501 - t460 * t550, t279 * t460, t12 * t460 + t20 * t149 + t169 * t17 - t55 * t231 + t508 * t279 - t383 * t530 + t501 * t59 + t503 * t550, -t13 * t460 + t20 * t150 - t169 * t16 + t56 * t231 - t509 * t279 + t384 * t530 + t502 * t59 - t503 * t79, -t12 * t502 - t13 * t501 + t149 * t372 - t150 * t2 + t16 * t55 - t17 * t56 + t508 * t79 - t509 * t550 + t443, -t372 * t56 + t2 * t55 + t20 * t169 - g(1) * (t339 * t479 + t295) - g(2) * (t339 * t481 + t291) - g(3) * (t304 * t480 + t486 * t523 + t412) + t503 * t59 + t509 * t13 + t508 * t12 + (-g(3) * t339 + t404 * (t341 * t425 - t344 * t511 + pkin(2))) * t342; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t491, -t430, t95, -t491, -t555, t242, -t253 * t271 + t356 - t496, t251 * t271 + t351, 0, 0, t491, t95, t430, t242, t555, -t491, -t167 * t251 - t353 - t496 + 0.2e1 * t524, pkin(3) * t145 - qJ(4) * t146 + (t135 - t163) * t253 + (t131 - t448) * t251, -t140 * t251 + t167 * t253 + 0.2e1 * t230 - 0.2e1 * t274 - t351, t46 * qJ(4) - t50 * pkin(3) - t140 * t167 - t131 * t163 - g(1) * t421 - g(2) * t422 - g(3) * (-pkin(3) * t487 + t285) + t448 * t135, -t559, -t566 + t573, -t72 - t571, t559, t71 - t561, t242, -t259 * t242 - t120 * t417 + t98 * t156 + g(1) * t387 - g(2) * t419 - g(3) * t205 + (-qJD(4) * t336 - t52) * t288 + t424, t260 * t242 - t120 * t156 - t98 * t417 - g(1) * t418 - g(2) * t388 - g(3) * t206 + (-qJD(4) * t337 + t53) * t288 + t11, qJD(4) * t391 - t259 * t72 - t260 * t71 + (t42 + t53) * t417 + (-t43 + t52) * t156, t11 * t260 - t424 * t259 - t43 * t53 - t42 * t52 - t98 * t120 - g(1) * (-pkin(4) * t226 + t421) - g(2) * (-pkin(4) * t224 + t422) - g(3) * (-t342 * t445 + t285) + t397 * qJD(4), t512, -t575, -t569, -t512, t17 + t579, t231, -t160 * t231 + t279 * t506 - t550 * t73 - t574, t161 * t231 - t279 * t507 + t73 * t79 - t568, t16 * t160 - t161 * t17 + (t12 - t507) * t550 + (t13 + t506) * t79, -t372 * t161 + t2 * t160 - t59 * t73 - g(1) * (-t226 * t304 + t227 * t425 - t214) - g(2) * (-t224 * t304 + t225 * t425 - t212) - g(3) * t285 - (pkin(5) * t488 + t341 * t511) * t331 + t507 * t13 + t506 * t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t242 + t491, t95, -t283 - t528, t353 + t499 - t524, 0, 0, 0, 0, 0, 0, -t242 * t337 - t253 * t417 - t283 * t336, -t156 * t253 + t242 * t336 - t283 * t337, t288 * t391 - t336 * t71 - t337 * t72, t11 * t336 - t253 * t98 + t288 * t397 - t337 * t424 + t375, 0, 0, 0, 0, 0, 0, t231 * t369 - t253 * t550 - t279 * t477, t231 * t246 + t253 * t79 + t279 * t476, -t16 * t369 - t17 * t246 + t476 * t550 - t477 * t79, -t12 * t477 - t13 * t476 - t2 * t369 - t246 * t372 - t253 * t59 + t375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71 + t561, t72 - t571, -t566 - t573, t156 * t42 + t417 * t43 + t352, 0, 0, 0, 0, 0, 0, t17 - t579, -t16 - t578, -t580 - t581, -t12 * t79 + t13 * t550 + t352 + t526; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t512, t575, t569, t512, -t423 - (-qJD(6) + t279) * t79, -t231, t13 * t279 + t574, t12 * t279 + t568, 0, 0;];
tau_reg  = t1;
