% Calculate inertial parameters regressor of coriolis matrix for
% S5RRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:15
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRPR5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:14:23
% EndTime: 2019-12-31 21:14:37
% DurationCPUTime: 9.81s
% Computational Cost: add. (13677->427), mult. (26456->592), div. (0->0), fcn. (30649->8), ass. (0->361)
t443 = qJD(2) + qJD(3);
t353 = cos(qJ(2));
t579 = -pkin(7) - pkin(6);
t333 = t579 * t353;
t350 = sin(qJ(3));
t351 = sin(qJ(2));
t487 = t350 * t351;
t560 = cos(qJ(3));
t297 = -t333 * t560 + t487 * t579;
t325 = -t353 * t560 + t487;
t244 = -t325 * qJ(4) + t297;
t348 = sin(pkin(9));
t538 = cos(pkin(9));
t435 = t560 * t351;
t327 = t350 * t353 + t435;
t412 = -t333 * t350 - t435 * t579;
t582 = -qJ(4) * t327 - t412;
t593 = -t348 * t244 + t538 * t582;
t621 = t443 * t593;
t349 = sin(qJ(5));
t620 = t349 * t593;
t352 = cos(qJ(5));
t619 = t352 * t593;
t238 = t538 * t244;
t586 = t348 * t582;
t600 = t238 + t586;
t604 = t600 * t593;
t316 = t538 * t327;
t493 = t348 * t325;
t583 = t316 - t493;
t283 = t325 * t538 + t327 * t348;
t613 = t283 * t593 + t583 * t600;
t343 = -pkin(2) * t353 - pkin(1);
t300 = pkin(3) * t325 + t343;
t360 = pkin(4) * t283 - pkin(8) * t583 + t300;
t603 = t600 * t349;
t80 = -t352 * t360 + t603;
t617 = t349 * t613 - t583 * t80;
t602 = t600 * t352;
t81 = t349 * t360 + t602;
t616 = t352 * t613 - t583 * t81;
t592 = t583 * qJD(1);
t607 = t283 * t592;
t340 = -pkin(3) * t538 - pkin(4);
t520 = t600 * t340;
t447 = qJD(1) * t283;
t599 = -qJD(5) - t447;
t596 = t583 ^ 2;
t588 = 0.2e1 * t583;
t577 = -t238 / 0.2e1;
t576 = t283 / 0.2e1;
t595 = t583 / 0.2e1;
t590 = t443 * t412;
t589 = t443 * t297;
t488 = t349 * t352;
t587 = t488 * t588;
t585 = t443 * t583;
t347 = t352 ^ 2;
t346 = t349 ^ 2;
t565 = t346 / 0.2e1;
t169 = (t565 - t347 / 0.2e1) * t583;
t431 = qJD(1) * t488;
t66 = t169 * t443 + t431 * t596;
t334 = t347 - t346;
t190 = t334 * t443 - 0.2e1 * t431 * t583;
t558 = t327 * pkin(3);
t153 = pkin(4) * t583 + pkin(8) * t283 + t558;
t345 = t351 * pkin(2);
t146 = t153 + t345;
t492 = t349 * t146;
t87 = t619 + t492;
t580 = -t87 / 0.2e1;
t559 = pkin(2) * t350;
t338 = t348 * t559;
t441 = t560 * pkin(2);
t342 = t441 + pkin(3);
t311 = t342 * t538 - t338;
t305 = -pkin(4) - t311;
t575 = -t305 / 0.2e1;
t574 = t305 / 0.2e1;
t413 = t538 * t350;
t312 = pkin(2) * t413 + t342 * t348;
t306 = pkin(8) + t312;
t573 = -t306 / 0.2e1;
t572 = t306 / 0.2e1;
t571 = t311 / 0.2e1;
t570 = -t312 / 0.2e1;
t319 = t441 * t538 - t338;
t569 = -t319 / 0.2e1;
t568 = t319 / 0.2e1;
t339 = t348 * pkin(3) + pkin(8);
t567 = t339 / 0.2e1;
t566 = -t340 / 0.2e1;
t564 = t348 / 0.2e1;
t563 = -t349 / 0.2e1;
t562 = -t352 / 0.2e1;
t561 = t352 / 0.2e1;
t557 = pkin(3) * qJD(3);
t556 = qJD(2) * pkin(2);
t486 = t352 * t146;
t86 = t486 - t620;
t3 = -t80 * t86 + t81 * t87 - t604;
t553 = t3 * qJD(1);
t483 = t352 * t153;
t88 = t483 - t620;
t489 = t349 * t153;
t89 = t619 + t489;
t4 = -t80 * t88 + t81 * t89 - t604;
t552 = t4 * qJD(1);
t372 = (t349 * t81 - t352 * t80) * t283;
t545 = t87 * t349;
t546 = t86 * t352;
t5 = (t545 + t546) * t583 - t372;
t551 = t5 * qJD(1);
t541 = t89 * t349;
t542 = t88 * t352;
t6 = (t541 + t542) * t583 - t372;
t550 = t6 * qJD(1);
t549 = t80 * t349;
t548 = t81 * t352;
t547 = t86 * t349;
t544 = t87 * t352;
t543 = t88 * t349;
t540 = t89 * t352;
t271 = t346 * t283;
t272 = t347 * t283;
t180 = t271 + t272;
t539 = t180 * qJD(4);
t517 = t593 * t583;
t16 = -t517 - (t548 + t549) * t283;
t537 = qJD(1) * t16;
t318 = (t348 * t560 + t413) * pkin(2);
t377 = t283 * t569 + t318 * t595;
t355 = -(t574 + t566) * t283 + (t573 + t567) * t583 + t377;
t23 = t355 * t349;
t536 = qJD(1) * t23;
t48 = t283 * t80 + t583 * t620;
t535 = qJD(1) * t48;
t49 = -t283 * t81 - t583 * t619;
t534 = qJD(1) * t49;
t55 = -t283 * t600 - t517;
t533 = qJD(1) * t55;
t504 = t283 ^ 2;
t391 = -t504 + t596;
t98 = t391 * t349;
t532 = qJD(1) * t98;
t104 = t504 + t596;
t99 = t104 * t349;
t531 = qJD(1) * t99;
t10 = t283 * t86 + t617;
t530 = t10 * qJD(1);
t11 = -t283 * t87 + t616;
t529 = t11 * qJD(1);
t12 = t283 * t88 + t617;
t528 = t12 * qJD(1);
t13 = -t283 * t89 + t616;
t527 = t13 * qJD(1);
t515 = t593 * t318;
t404 = t283 * (t347 / 0.2e1 + t565);
t362 = -t306 * t404 + t574 * t583;
t384 = -t546 / 0.2e1 - t545 / 0.2e1;
t18 = t362 + t384;
t512 = t18 * qJD(1);
t361 = -t339 * t404 + t340 * t595;
t383 = -t542 / 0.2e1 - t541 / 0.2e1;
t20 = t361 + t383;
t511 = t20 * qJD(1);
t507 = t583 * t306;
t506 = t583 * t339;
t505 = t583 * t348;
t503 = t283 * t305;
t304 = t345 + t558;
t30 = t300 * t304;
t502 = t30 * qJD(1);
t501 = t311 * t283;
t500 = t312 * t583;
t499 = t325 * t327;
t33 = t300 * t558;
t498 = t33 * qJD(1);
t497 = t340 * t349;
t482 = t352 * t283;
t357 = t501 / 0.2e1 - t500 / 0.2e1 + t377;
t414 = t538 * t283;
t365 = (-t505 / 0.2e1 + t414 / 0.2e1) * pkin(3);
t52 = t365 - t357;
t481 = t52 * qJD(1);
t464 = qJD(3) * t352;
t466 = qJD(2) * t352;
t479 = (t464 + t466) * t583;
t100 = t391 * t352;
t478 = qJD(1) * t100;
t101 = t104 * t352;
t477 = qJD(1) * t101;
t201 = t300 * t583;
t112 = t283 * t304 + t201;
t476 = qJD(1) * t112;
t202 = t300 * t283;
t113 = t304 * t583 - t202;
t475 = qJD(1) * t113;
t122 = -t283 * t558 - t201;
t474 = qJD(1) * t122;
t123 = -t558 * t583 + t202;
t473 = qJD(1) * t123;
t269 = t325 * t345 + t327 * t343;
t472 = qJD(1) * t269;
t270 = -t325 * t343 + t327 * t345;
t471 = qJD(1) * t270;
t469 = qJD(1) * t343;
t468 = qJD(1) * t353;
t467 = qJD(2) * t349;
t465 = qJD(3) * t343;
t463 = qJD(5) * t349;
t462 = qJD(5) * t352;
t461 = t104 * qJD(1);
t460 = t391 * qJD(1);
t379 = -t283 * t570 + t571 * t583;
t317 = t558 / 0.2e1;
t442 = t317 + t345 / 0.2e1;
t106 = t379 + t442;
t459 = t106 * qJD(1);
t109 = t343 * t345;
t458 = t109 * qJD(1);
t436 = -t538 / 0.2e1;
t370 = -t283 * t564 + t436 * t583;
t142 = (-t327 / 0.2e1 + t370) * pkin(3);
t457 = t142 * qJD(1);
t456 = t169 * qJD(1);
t455 = t169 * qJD(5);
t171 = t349 * t583;
t454 = t171 * qJD(1);
t419 = 0.2e1 * t576;
t172 = t419 * t349;
t164 = t172 * qJD(1);
t175 = t419 * t352;
t165 = t175 * qJD(1);
t261 = t283 * t561;
t176 = -t482 / 0.2e1 - t261;
t453 = t176 * qJD(1);
t452 = t180 * qJD(1);
t181 = t334 * t596;
t451 = t181 * qJD(1);
t245 = t325 ^ 2 - t327 ^ 2;
t450 = t245 * qJD(1);
t280 = -t493 / 0.2e1 + t316 / 0.2e1;
t449 = t280 * qJD(1);
t275 = t583 * qJD(4);
t313 = t318 * qJD(3);
t335 = -t351 ^ 2 + t353 ^ 2;
t446 = t335 * qJD(1);
t445 = t351 * qJD(2);
t444 = t353 * qJD(2);
t440 = pkin(1) * t351 * qJD(1);
t439 = pkin(1) * t468;
t437 = t544 / 0.2e1;
t433 = t325 * t469;
t432 = t327 * t469;
t430 = t352 * t275;
t429 = qJD(5) * t283 * t583;
t185 = t583 * t447;
t428 = qJD(1) * t499;
t336 = t349 * t462;
t427 = t351 * t444;
t424 = t497 / 0.2e1;
t423 = t339 * t563;
t418 = t560 * qJD(2);
t417 = t560 * qJD(3);
t266 = (t346 + t347) * t319;
t289 = t443 * t327;
t411 = t443 * t352;
t183 = t443 * t283;
t409 = t443 * t349;
t408 = t596 * t336;
t403 = t569 + t566 + t575;
t402 = t349 * t411;
t401 = t283 * t585;
t400 = t583 * t183;
t399 = t352 * t409;
t398 = t544 - t547;
t397 = t540 - t543;
t111 = t266 * t306 + t305 * t318;
t380 = t600 * t574 - t515 / 0.2e1;
t2 = -t520 / 0.2e1 + (t339 * t580 + t568 * t81 + t572 * t89) * t352 + (t567 * t86 + t568 * t80 + t573 * t88) * t349 + t380;
t396 = -t2 * qJD(1) - t111 * qJD(2);
t8 = (t89 / 0.2e1 + t580) * t352 + (-t88 / 0.2e1 + t86 / 0.2e1) * t349;
t395 = -qJD(1) * t8 - qJD(2) * t266;
t390 = -t503 - t507;
t389 = -t283 * t340 - t506;
t358 = t515 / 0.2e1 + t593 * t570 + (t571 + t569) * t600;
t366 = (t436 * t600 + t564 * t593) * pkin(3);
t14 = t366 + t358;
t186 = -t311 * t318 + t312 * t319;
t388 = t14 * qJD(1) - t186 * qJD(2);
t90 = t577 + t238 / 0.2e1;
t387 = -qJD(1) * t90 + qJD(2) * t318;
t386 = qJD(2) * t319;
t385 = t583 * t599;
t382 = t540 / 0.2e1 - t543 / 0.2e1;
t378 = t283 * t572 + t575 * t583;
t376 = t283 * t567 + t566 * t583;
t26 = t355 * t352;
t375 = -qJD(1) * t26 - t318 * t467;
t368 = t146 / 0.2e1 + t378;
t34 = t368 * t349;
t374 = -qJD(1) * t34 - t305 * t466;
t36 = t368 * t352;
t373 = qJD(1) * t36 - t305 * t467;
t116 = qJD(5) * t280 + t607;
t371 = t402 * t588;
t367 = t153 / 0.2e1 + t376;
t212 = t403 * t349;
t46 = t367 * t352;
t364 = qJD(1) * t46 + qJD(2) * t212 - qJD(3) * t497;
t213 = t403 * t352;
t44 = t367 * t349;
t363 = -qJD(1) * t44 + qJD(2) * t213 - t340 * t464;
t356 = -t507 / 0.2e1 - t503 / 0.2e1 + t377;
t337 = t351 * t468;
t332 = t334 * qJD(5);
t314 = t319 * qJD(3);
t303 = t349 * t313;
t288 = t443 * t325;
t278 = t283 * qJD(4);
t264 = t352 * t592;
t246 = t266 * qJD(3);
t215 = t319 * t562 + (t305 + t340) * t561;
t214 = t319 * t563 + t349 * t574 + t424;
t178 = t443 * t280;
t177 = (-t283 / 0.2e1 + t576) * t352;
t174 = t482 / 0.2e1 - t261;
t162 = t172 * qJD(5);
t159 = t171 * qJD(4);
t155 = t165 + t462;
t154 = -t164 - t463;
t143 = pkin(3) * t370 + t317;
t141 = t399 - t456;
t140 = -t402 + t456;
t108 = t599 * t587;
t107 = -t379 + t442;
t97 = t185 * t347 - t455;
t96 = t185 * t346 + t455;
t91 = -t586 + 0.2e1 * t577;
t59 = qJD(5) * t175 - t478;
t58 = -t162 + t532;
t57 = -t455 - (t347 * t592 + t399) * t283;
t56 = t455 - (t346 * t592 - t402) * t283;
t54 = (-qJD(5) + t447) * t587 + t443 * (t271 - t272);
t53 = t365 + t357;
t51 = qJD(5) * t174 + t409 * t583 + t478;
t50 = t479 - t532;
t47 = t483 / 0.2e1 - t376 * t352 - t620;
t45 = -t489 / 0.2e1 + t376 * t349 - t619;
t37 = t486 / 0.2e1 - t378 * t352 - t620;
t35 = -t492 / 0.2e1 + t378 * t349 - t619;
t25 = -t261 * t340 + t352 * t356 + t506 * t562 + t603;
t24 = -t283 * t424 + t349 * t356 + t423 * t583 - t602;
t19 = t361 - t383;
t17 = t362 - t384;
t15 = t366 - t358;
t7 = t437 - t547 / 0.2e1 + t382;
t1 = t339 * t437 + t86 * t423 + t520 / 0.2e1 + (t548 / 0.2e1 + t549 / 0.2e1) * t319 + t382 * t306 + t380;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t427, t335 * qJD(2), 0, -t427, 0, 0, -pkin(1) * t445, -pkin(1) * t444, 0, 0, -t325 * t289, t443 * t245, 0, t443 * t499, 0, 0, qJD(2) * t269 + t327 * t465, qJD(2) * t270 - t325 * t465, 0, qJD(2) * t109, -t400, -t443 * t391, 0, t401, 0, 0, qJD(2) * t112 - qJD(3) * t122, qJD(2) * t113 - qJD(3) * t123, qJD(4) * t104, qJD(2) * t30 + qJD(3) * t33 + qJD(4) * t55, -t347 * t400 - t408, -qJD(5) * t181 + t283 * t371, t100 * t443 - t349 * t429, -t346 * t400 + t408, -t352 * t429 - t443 * t98, t401, qJD(2) * t10 + qJD(3) * t12 + qJD(4) * t99 + qJD(5) * t49, qJD(2) * t11 + qJD(3) * t13 + qJD(4) * t101 + qJD(5) * t48, -qJD(2) * t5 - qJD(3) * t6, qJD(2) * t3 + qJD(3) * t4 + qJD(4) * t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t337, t446, t444, -t337, -t445, 0, -pkin(6) * t444 - t440, pkin(6) * t445 - t439, 0, 0, -t428, t450, -t288, t428, -t289, 0, t472 - t589, t471 + t590, (t325 * t560 - t327 * t350) * t556, t458 + (-t297 * t560 - t350 * t412) * t556, -t185, -t460, -t183, t607, -t585, 0, -qJD(2) * t600 + qJD(3) * t91 + t476, t475 - t621, (-t500 + t501) * qJD(2) + t53 * qJD(3), t502 + (-t311 * t600 + t312 * t593) * qJD(2) + t15 * qJD(3) + t107 * qJD(4), t57, t54, t51, t56, t50, t116, t530 + (t349 * t390 - t602) * qJD(2) + t24 * qJD(3) + t37 * qJD(5), t529 + (t352 * t390 + t603) * qJD(2) + t25 * qJD(3) + t35 * qJD(5), qJD(2) * t398 + qJD(3) * t7 - t551, t553 + (t305 * t600 + t306 * t398) * qJD(2) + t1 * qJD(3) + t17 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t428, t450, -t288, t428, -t289, 0, t432 - t589, -t433 + t590, 0, 0, -t185, -t460, -t183, t607, -t585, 0, qJD(2) * t91 - qJD(3) * t600 - t474, -t473 - t621, t53 * qJD(2) + (t414 - t505) * t557, t498 + t15 * qJD(2) + (t348 * t593 - t538 * t600) * t557 + t143 * qJD(4), t57, t54, t51, t56, t50, t116, t528 + t24 * qJD(2) + (t349 * t389 - t602) * qJD(3) + t47 * qJD(5), t527 + t25 * qJD(2) + (t352 * t389 + t603) * qJD(3) + t45 * qJD(5), qJD(2) * t7 + qJD(3) * t397 - t550, t552 + t1 * qJD(2) + (t339 * t397 + t520) * qJD(3) + t19 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t461, qJD(2) * t107 + qJD(3) * t143 + t533, 0, 0, 0, 0, 0, 0, t531, qJD(5) * t177 + t477, 0, qJD(2) * t17 + qJD(3) * t19 + t537; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, -t371 - t451, t174 * t443 + t349 * t385, t66, t352 * t385, t178, qJD(2) * t37 + qJD(3) * t47 - qJD(5) * t81 + t534, qJD(2) * t35 + qJD(3) * t45 + qJD(4) * t177 + qJD(5) * t80 + t535, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t337, -t446, 0, t337, 0, 0, t440, t439, 0, 0, t428, -t450, 0, -t428, 0, 0, -t472, -t471, 0, -t458, t185, t460, 0, -t607, 0, 0, qJD(3) * t90 - t275 - t476, t278 - t475, -qJD(3) * t52, -qJD(3) * t14 - qJD(4) * t106 - t502, t97, t108, t59, t96, t58, -t116, qJD(3) * t23 - qJD(5) * t36 - t430 - t530, qJD(3) * t26 + qJD(5) * t34 + t159 - t529, qJD(3) * t8 - t539 + t551, qJD(3) * t2 + qJD(4) * t18 - t553; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t559, -pkin(2) * t417, 0, 0, 0, 0, 0, 0, 0, 0, -t313, -t314, 0, t186 * qJD(3), t336, t332, 0, -t336, 0, 0, t305 * t463 - t313 * t352, t305 * t462 + t303, t246, t111 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t443 * t559, (-t418 - t417) * pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t313 - t387, -t314 - t386, -t481, (-t318 * t538 + t319 * t348) * t557 - t388, t336, t332, 0, -t336, 0, 0, qJD(5) * t214 - t318 * t411 + t536, qJD(5) * t215 + t303 - t375, t246 - t395, (t266 * t339 + t318 * t340) * qJD(3) - t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t592, t447, 0, -t459, 0, 0, 0, 0, 0, 0, -t264, t454, -t452, t512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t141, t190, t155, t140, t154, -t449, qJD(3) * t214 - t306 * t462 - t373, qJD(3) * t215 + t306 * t463 - t374, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t428, -t450, 0, -t428, 0, 0, -t432, t433, 0, 0, t185, t460, 0, -t607, 0, 0, -qJD(2) * t90 - t275 + t474, t278 + t473, qJD(2) * t52, qJD(2) * t14 + qJD(4) * t142 - t498, t97, t108, t59, t96, t58, -t116, -qJD(2) * t23 - qJD(5) * t46 - t430 - t528, -qJD(2) * t26 + qJD(5) * t44 + t159 - t527, -qJD(2) * t8 - t539 + t550, -qJD(2) * t2 + qJD(4) * t20 - t552; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t350 * t556, pkin(2) * t418, 0, 0, 0, 0, 0, 0, 0, 0, t387, t386, t481, t388, t336, t332, 0, -t336, 0, 0, -qJD(5) * t212 + t318 * t466 - t536, -qJD(5) * t213 + t375, t395, t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t336, t332, 0, -t336, 0, 0, t340 * t463, t340 * t462, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t592, t447, 0, t457, 0, 0, 0, 0, 0, 0, -t264, t454, -t452, t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t141, t190, t155, t140, t154, -t449, -t339 * t462 - t364, t339 * t463 - t363, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t585, -t183, -t461, qJD(2) * t106 - qJD(3) * t142 - t533, 0, 0, 0, 0, 0, 0, -t162 + t479 - t531, qJD(5) * t176 - t171 * t443 - t477, t443 * t180, -qJD(2) * t18 - qJD(3) * t20 - t537; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t592, -t447, 0, t459, 0, 0, 0, 0, 0, 0, t264, -t454, t452, -t512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t592, -t447, 0, -t457, 0, 0, 0, 0, 0, 0, t264, -t454, t452, -t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t154, t453 - t462, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, t399 * t588 + t451, -t175 * t443 + t349 * t607, -t66, t172 * t443 + t352 * t607, t178, qJD(2) * t36 + qJD(3) * t46 + qJD(4) * t172 - t534, -qJD(2) * t34 - qJD(3) * t44 - qJD(4) * t176 - t535, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140, -t190, -t165, t141, t164, t449, qJD(3) * t212 + t373, qJD(3) * t213 + t374, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140, -t190, -t165, t141, t164, t449, t364, t363, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t164, -t453, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t9;