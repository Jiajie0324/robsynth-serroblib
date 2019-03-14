% Calculate inertial parameters regressor of coriolis matrix for
% S6RPPRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3,theta5]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPPRPR4_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR4_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR4_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR4_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:47:16
% EndTime: 2019-03-09 01:47:25
% DurationCPUTime: 7.34s
% Computational Cost: add. (8345->400), mult. (14657->567), div. (0->0), fcn. (16020->8), ass. (0->327)
t335 = sin(pkin(10));
t341 = cos(qJ(4));
t336 = sin(pkin(9));
t337 = cos(pkin(9));
t546 = -pkin(1) - pkin(2);
t473 = t337 * qJ(2) + t336 * t546;
t310 = -pkin(7) + t473;
t552 = qJ(5) - t310;
t394 = t552 * t341;
t339 = sin(qJ(4));
t397 = t552 * t339;
t525 = cos(pkin(10));
t135 = t335 * t394 + t525 * t397;
t338 = sin(qJ(6));
t555 = t338 * t135;
t340 = cos(qJ(6));
t554 = t340 * t135;
t399 = t525 * t339;
t489 = t335 * t341;
t306 = t399 + t489;
t273 = t306 * t336;
t547 = t335 * t397 - t394 * t525;
t553 = t547 * t273;
t512 = t547 * t338;
t511 = t547 * t340;
t482 = t338 * t340;
t395 = 0.2e1 * t306 * t482;
t398 = t525 * t341;
t490 = t335 * t339;
t359 = t398 - t490;
t275 = t359 * t336;
t393 = -t340 * t275 + t338 * t337;
t551 = t393 / 0.2e1;
t382 = t393 * t340;
t484 = t338 * t275;
t243 = t340 * t337 + t484;
t486 = t338 * t243;
t550 = t359 * (-t382 / 0.2e1 + t486 / 0.2e1);
t204 = t359 * t338;
t184 = t204 * qJD(6);
t301 = t306 * qJD(4);
t292 = t340 * t301;
t549 = -t184 - t292;
t303 = t359 ^ 2;
t304 = t306 ^ 2;
t548 = -t304 - t303;
t427 = t304 - t303;
t545 = -t547 / 0.2e1;
t544 = -t135 / 0.2e1;
t543 = t135 / 0.2e1;
t542 = t243 / 0.2e1;
t541 = -t359 / 0.2e1;
t540 = -t306 / 0.2e1;
t539 = t306 / 0.2e1;
t333 = t340 ^ 2;
t538 = t333 / 0.2e1;
t537 = t336 / 0.2e1;
t536 = t340 / 0.2e1;
t535 = t339 * pkin(4);
t496 = t275 * t359;
t214 = -t496 / 0.2e1;
t331 = t338 ^ 2;
t401 = t538 + t331 / 0.2e1;
t388 = -0.1e1 / 0.2e1 + t401;
t497 = t273 * t306;
t24 = -t388 * t497 + t214 + t550;
t534 = t24 * qJD(4);
t533 = qJD(4) * pkin(4);
t205 = -pkin(5) * t306 + pkin(8) * t359 - t535;
t487 = t338 * t205;
t92 = t554 + t487;
t527 = t92 * t338;
t479 = t340 * t205;
t91 = t479 - t555;
t528 = t91 * t340;
t368 = -t336 * qJ(2) + t337 * t546;
t309 = pkin(3) - t368;
t293 = t341 * pkin(4) + t309;
t343 = pkin(5) * t359 + t306 * pkin(8) + t293;
t80 = -t340 * t343 + t512;
t81 = t338 * t343 + t511;
t8 = (-t527 - t528) * t306 - (t81 * t338 - t340 * t80) * t359;
t532 = t8 * qJD(1);
t531 = t80 * t338;
t530 = t81 * t340;
t529 = t91 * t338;
t526 = t92 * t340;
t211 = -t497 / 0.2e1;
t342 = t211 - t550;
t274 = t359 * t337;
t478 = t340 * t274;
t483 = t338 * t336;
t244 = t478 + t483;
t501 = t244 * t338;
t477 = t340 * t336;
t485 = t338 * t274;
t242 = t477 - t485;
t503 = t242 * t340;
t366 = -t503 / 0.2e1 - t501 / 0.2e1;
t33 = t342 + t366;
t524 = qJD(1) * t33;
t200 = t338 * t306;
t38 = -t135 * t200 + t359 * t80;
t523 = qJD(1) * t38;
t492 = t306 * t340;
t39 = t135 * t492 - t359 * t81;
t522 = qJD(1) * t39;
t367 = (t542 - t484 / 0.2e1) * t306;
t272 = t337 * t306;
t498 = t272 * t340;
t40 = t498 / 0.2e1 + t367;
t521 = qJD(1) * t40;
t406 = -t492 / 0.2e1;
t347 = t275 * t406 + t393 * t540;
t499 = t272 * t338;
t43 = -t499 / 0.2e1 + t347;
t520 = qJD(1) * t43;
t508 = t135 * t306;
t57 = -t359 * t547 + t508;
t519 = qJD(1) * t57;
t365 = t244 * t536 - t242 * t338 / 0.2e1;
t409 = t272 * t541;
t58 = t306 * t365 + t409;
t518 = qJD(1) * t58;
t408 = t497 / 0.2e1;
t385 = t537 + t408;
t404 = -t478 / 0.2e1;
t502 = t243 * t359;
t71 = t404 - t502 / 0.2e1 - t385 * t338;
t517 = qJD(1) * t71;
t90 = (-t501 - t503) * t306;
t515 = qJD(1) * t90;
t99 = -t200 * t272 + t242 * t359;
t514 = qJD(1) * t99;
t510 = t135 * t272;
t509 = t135 * t275;
t326 = -pkin(4) * t525 - pkin(5);
t493 = t306 * t326;
t407 = -t493 / 0.2e1;
t325 = pkin(4) * t335 + pkin(8);
t491 = t325 * t359;
t348 = -t401 * t491 + t407;
t369 = -t528 / 0.2e1 - t527 / 0.2e1;
t18 = t348 + t369;
t505 = t18 * qJD(1);
t500 = t272 * t273;
t157 = t273 * t338;
t158 = t273 * t340;
t495 = t359 * t335;
t494 = t306 * t359;
t481 = t339 * t337;
t346 = (t243 * t536 + t338 * t551) * t359;
t47 = -t346 - t365;
t476 = t47 * qJD(1);
t381 = t393 * t359;
t405 = -t485 / 0.2e1;
t70 = t405 - t381 / 0.2e1 + t385 * t340;
t475 = t70 * qJD(1);
t93 = t388 * t494;
t474 = t93 * qJD(1);
t472 = -t331 - t333;
t332 = t339 ^ 2;
t334 = t341 ^ 2;
t471 = t332 + t334;
t321 = t333 - t331;
t470 = qJ(2) * qJD(1);
t100 = -t244 * t359 - t272 * t492;
t469 = qJD(1) * t100;
t112 = t274 * t539 + t409;
t468 = qJD(1) * t112;
t115 = -t272 * t306 - t274 * t359;
t467 = qJD(1) * t115;
t138 = t293 * t306 + t359 * t535;
t466 = qJD(1) * t138;
t139 = t293 * t359 - t306 * t535;
t465 = qJD(1) * t139;
t152 = t427 * t338;
t464 = qJD(1) * t152;
t153 = t548 * t338;
t463 = qJD(1) * t153;
t154 = t427 * t340;
t462 = qJD(1) * t154;
t230 = t548 * t340;
t460 = qJD(1) * t230;
t459 = qJD(1) * t309;
t458 = qJD(1) * t341;
t457 = qJD(4) * t204;
t456 = qJD(4) * t338;
t455 = qJD(4) * t340;
t454 = qJD(5) * t340;
t203 = t359 * t340;
t453 = qJD(6) * t203;
t452 = qJD(6) * t338;
t451 = qJD(6) * t340;
t102 = t496 / 0.2e1 + t385;
t450 = t102 * qJD(1);
t308 = t471 * t337;
t132 = t308 * t310 + t309 * t336;
t449 = t132 * qJD(1);
t400 = t525 * t306;
t352 = -t495 / 0.2e1 + t400 / 0.2e1;
t166 = (t339 / 0.2e1 + t352) * pkin(4);
t448 = t166 * qJD(1);
t447 = t427 * qJD(1);
t302 = t399 / 0.2e1 + t489 / 0.2e1;
t175 = (t540 - t302) * t337;
t446 = t175 * qJD(1);
t351 = -t398 / 0.2e1 + t490 / 0.2e1;
t176 = (t541 + t351) * t337;
t445 = t176 * qJD(1);
t197 = (-t331 / 0.2e1 + t538) * t306;
t444 = t197 * qJD(6);
t443 = t200 * qJD(1);
t442 = t203 * qJD(1);
t185 = t204 * qJD(1);
t295 = t331 * t359;
t296 = t333 * t359;
t228 = t295 + t296;
t441 = t228 * qJD(1);
t231 = -t336 * t368 + t337 * t473;
t440 = t231 * qJD(1);
t439 = t548 * qJD(1);
t438 = t302 * qJD(1);
t437 = t359 * qJD(1);
t436 = t306 * qJD(1);
t435 = t308 * qJD(1);
t322 = t334 - t332;
t434 = t322 * qJD(1);
t433 = t336 * qJD(1);
t432 = t336 * qJD(2);
t431 = t337 * qJD(1);
t430 = t337 * qJD(2);
t429 = t339 * qJD(4);
t428 = t341 * qJD(4);
t425 = t359 * t433;
t424 = t306 * t433;
t423 = t338 * t301;
t422 = t338 * t455;
t421 = t306 * t452;
t420 = t306 * t451;
t419 = t359 * t436;
t418 = t359 * t301;
t417 = t341 * t431;
t416 = t338 * t451;
t415 = t339 * t428;
t414 = t339 * t433;
t413 = t339 * t431;
t412 = t340 * t436;
t411 = t341 * t433;
t410 = t553 / 0.2e1;
t403 = t543 + t544;
t402 = t547 / 0.2e1 + t545;
t396 = t472 * t325;
t392 = qJD(4) * t472;
t390 = -qJD(6) - t437;
t389 = t304 * t416;
t386 = qJD(4) * t395;
t356 = t530 / 0.2e1 + t531 / 0.2e1 + t545;
t4 = (t526 / 0.2e1 - t529 / 0.2e1 + t544) * t306 + t356 * t359;
t7 = -t135 * t547 - t80 * t91 + t81 * t92;
t384 = t7 * qJD(1) + t4 * qJD(3);
t383 = t526 - t529;
t19 = t306 * t403 + t359 * t402;
t52 = t211 + t408;
t380 = -t19 * qJD(1) - t52 * qJD(2);
t12 = (t81 - t511) * t306 - (t92 - t554) * t359;
t379 = t12 * qJD(1);
t353 = t274 * t335 / 0.2e1 - t272 * t525 / 0.2e1;
t13 = -t403 * t275 + t402 * t273 + (-t481 / 0.2e1 + t353) * pkin(4);
t378 = t13 * qJD(1) - t52 * qJD(3);
t15 = -t242 * t80 + t244 * t81 - t510;
t377 = t15 * qJD(1) + t58 * qJD(3);
t16 = t508 - (t530 + t531) * t359;
t376 = qJD(1) * t16 - qJD(3) * t93;
t27 = t293 * t535;
t375 = -t27 * qJD(1) + t19 * qJD(3);
t374 = t306 * t325 - t326 * t359;
t11 = (t80 - t512) * t306 - (-t91 - t555) * t359;
t373 = t11 * qJD(1);
t45 = t274 * t547 + t293 * t336 - t510;
t372 = t45 * qJD(1) + t112 * qJD(3);
t371 = t306 * t390;
t370 = -t430 + t459;
t364 = -t491 / 0.2e1 + t407;
t350 = -t205 / 0.2e1 + t364;
t36 = t338 * t403 + t340 * t350;
t363 = -qJD(1) * t36 - t326 * t456;
t34 = -t338 * t350 + t340 * t403;
t362 = -qJD(1) * t34 - t326 * t455;
t361 = t340 * t371;
t160 = -qJD(1) * t197 + t422;
t360 = -qJD(6) * t302 - t419;
t124 = qJD(1) * t304 * t482 + qJD(4) * t197;
t229 = t321 * t304;
t358 = -qJD(1) * t229 + t386;
t357 = qJD(1) * t395 + qJD(4) * t321;
t344 = t509 / 0.2e1 + t91 * t542 + t92 * t551;
t345 = t365 * t325 + t272 * t326 / 0.2e1;
t2 = t273 * t356 + t344 + t345;
t48 = (t275 + t382 - t486) * t273;
t355 = -t2 * qJD(1) + t48 * qJD(2) + t24 * qJD(3);
t95 = (0.1e1 + t472) * t494;
t354 = t4 * qJD(1) + t24 * qJD(2) - t95 * qJD(3);
t323 = t339 * t458;
t300 = t359 * qJD(4);
t294 = t302 * qJD(4);
t186 = t203 * qJD(4);
t178 = (-t302 + t539) * t337;
t177 = (t359 / 0.2e1 + t351) * t337;
t167 = -t535 / 0.2e1 + t352 * pkin(4);
t165 = -t185 - t452;
t103 = t214 + t211 + t537;
t73 = t381 / 0.2e1 + t273 * t406 + t405 + t477 / 0.2e1;
t72 = t502 / 0.2e1 + t338 * t408 + t404 - t483 / 0.2e1;
t50 = t52 * qJD(4);
t46 = -t346 + t365;
t42 = t499 / 0.2e1 + t347;
t41 = -t498 / 0.2e1 + t367;
t37 = -t555 + t479 / 0.2e1 + t364 * t340;
t35 = -t554 - t487 / 0.2e1 - t364 * t338;
t32 = t342 - t366;
t17 = t348 - t369;
t14 = t275 * t543 - t553 / 0.2e1 + t410 - t509 / 0.2e1 + (t481 / 0.2e1 + t353) * pkin(4);
t10 = qJD(2) * t112 + qJD(4) * t19;
t3 = -t81 * t158 / 0.2e1 - t80 * t157 / 0.2e1 + t410 - t344 + t345;
t1 = qJD(2) * t58 + qJD(4) * t4 - qJD(5) * t93;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), qJ(2) * qJD(2), 0, 0, 0, 0, 0, 0, t432, t430, 0, t231 * qJD(2), t415, t322 * qJD(4), 0, -t415, 0, 0, -t309 * t429 + t341 * t432, -t309 * t428 - t339 * t432, -t308 * qJD(2), t132 * qJD(2), t418, -t427 * qJD(4), 0, -t418, 0, 0, -qJD(4) * t138 + t359 * t432, -qJD(4) * t139 - t306 * t432, qJD(2) * t115 - qJD(5) * t548, qJD(2) * t45 - qJD(4) * t27 + qJD(5) * t57, t333 * t418 - t389, -qJD(6) * t229 - t359 * t386, qJD(4) * t154 + t359 * t421, t331 * t418 + t389, -qJD(4) * t152 + t359 * t420, -t418, qJD(2) * t99 + qJD(4) * t11 - qJD(5) * t153 + qJD(6) * t39, qJD(2) * t100 + qJD(4) * t12 - qJD(5) * t230 + qJD(6) * t38, -qJD(2) * t90 - qJD(4) * t8, qJD(2) * t15 + qJD(4) * t7 + qJD(5) * t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t470, 0, 0, 0, 0, 0, 0, t433, t431, 0, t440, 0, 0, 0, 0, 0, 0, t411, -t414, -t435, t449 + (-0.1e1 + t471) * t336 * t430, 0, 0, 0, 0, 0, 0, qJD(4) * t178 + t425, qJD(4) * t177 - t424, t467 (t274 * t275 - t336 * t337 + t500) * qJD(2) + t14 * qJD(4) + t103 * qJD(5) + t372, 0, 0, 0, 0, 0, 0, qJD(4) * t41 + qJD(6) * t73 + t514, qJD(4) * t42 + qJD(6) * t72 + t469, qJD(4) * t46 - t515 (-t242 * t243 - t244 * t393 + t500) * qJD(2) + t3 * qJD(4) + t32 * qJD(5) + t377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t323, t434, -t428, -t323, t429, 0, -t310 * t428 - t339 * t459, -t309 * t458 + t310 * t429, 0, 0, t419, -t447, -t300, -t419, t301, 0, qJD(2) * t178 - qJD(4) * t547 - t466, qJD(2) * t177 - qJD(4) * t135 - t465 (t306 * t335 + t359 * t525) * t533, t14 * qJD(2) + (t135 * t335 - t525 * t547) * t533 + t167 * qJD(5) + t375, -t444 - (-t333 * t436 + t422) * t359 (t295 - t296) * qJD(4) + (qJD(6) - t437) * t395, -t423 + t462, t444 - (-t331 * t436 - t422) * t359, -t292 - t464, t360, t41 * qJD(2) + (t338 * t374 - t511) * qJD(4) + t37 * qJD(6) + t373, t42 * qJD(2) + (t340 * t374 + t512) * qJD(4) + t35 * qJD(6) + t379, t46 * qJD(2) + qJD(4) * t383 - t532, t3 * qJD(2) + (t325 * t383 + t326 * t547) * qJD(4) + t17 * qJD(5) + t384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t439, qJD(2) * t103 + qJD(4) * t167 + t519, 0, 0, 0, 0, 0, 0, -t463, -t460, 0, qJD(2) * t32 + qJD(4) * t17 + t376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124, t358, -t338 * t371, t124, -t361, -t294, qJD(2) * t73 + qJD(4) * t37 - qJD(6) * t81 + t522, qJD(2) * t72 + qJD(4) * t35 + qJD(6) * t80 + t523, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t470, 0, 0, 0, 0, 0, 0, -t433, -t431, 0, -t440, 0, 0, 0, 0, 0, 0, t337 * t429 - t411, t337 * t428 + t414, t435, -t449, 0, 0, 0, 0, 0, 0, -qJD(4) * t175 - t425, -qJD(4) * t176 + t424, -t467, -qJD(4) * t13 - qJD(5) * t102 - t372, 0, 0, 0, 0, 0, 0, qJD(4) * t40 - qJD(6) * t70 - t514, qJD(4) * t43 - qJD(6) * t71 - t469, qJD(4) * t47 + t515, -qJD(4) * t2 + qJD(5) * t33 - t377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50 - t468, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t518 + t534; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t336 * t428 + t413, t336 * t429 + t417, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t275 - t446, qJD(4) * t273 - t445, 0 (-t273 * t335 - t275 * t525) * t533 - t378, 0, 0, 0, 0, 0, 0, qJD(6) * t157 - t275 * t455 + t521, qJD(6) * t158 + t275 * t456 + t520, t273 * t392 + t476 (t273 * t396 + t275 * t326) * qJD(4) + t355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t450, 0, 0, 0, 0, 0, 0, 0, 0, 0, t524; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t157 * qJD(4) + qJD(6) * t393 - t475, qJD(4) * t158 + qJD(6) * t243 - t517, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50 + t468, 0, 0, 0, 0, 0, 0, 0, 0, 0, t518 + t534; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t95 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t429, -t428, 0, 0, 0, 0, 0, 0, 0, 0, -t301, -t300, 0 (-t400 + t495) * t533 - t380, 0, 0, 0, 0, 0, 0, t549, t423 - t453, -t359 * t392 (-t359 * t396 + t493) * qJD(4) + t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t420 - t457, -t186 + t421, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t323, -t434, 0, t323, 0, 0, t370 * t339, t370 * t341, 0, 0, -t419, t447, 0, t419, 0, 0, qJD(2) * t175 + qJD(5) * t306 + t466, qJD(2) * t176 + qJD(5) * t359 + t465, 0, qJD(2) * t13 + qJD(5) * t166 - t375, -t333 * t419 - t444, -0.2e1 * t338 * t361, t453 - t462, -t331 * t419 + t444, -t184 + t464, -t360, -qJD(2) * t40 + qJD(6) * t36 + t306 * t454 - t373, -qJD(2) * t43 - qJD(5) * t200 + qJD(6) * t34 - t379, -qJD(2) * t47 - qJD(5) * t228 + t532, qJD(2) * t2 + qJD(5) * t18 - t384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t413, -t417, 0, 0, 0, 0, 0, 0, 0, 0, t446, t445, 0, t378, 0, 0, 0, 0, 0, 0, -t521, -t520, -t476, -t355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t380, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t416, t321 * qJD(6), 0, -t416, 0, 0, t326 * t452, t326 * t451, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, t437, 0, t448, 0, 0, 0, 0, 0, 0, t412, -t443, -t441, t505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t160, t357, t442 + t451, -t160, t165, t438, -t325 * t451 - t363, t325 * t452 - t362, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t301, -t300, t439, qJD(2) * t102 - qJD(4) * t166 - t519, 0, 0, 0, 0, 0, 0, t463 + t549, qJD(4) * t200 - t359 * t451 + t460, t228 * qJD(4), -qJD(2) * t33 - qJD(4) * t18 - t376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t450, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t524; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, -t437, 0, -t448, 0, 0, 0, 0, 0, 0, -t412, t443, t441, -t505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t165, t390 * t340, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124, -t358, -t338 * t419 - t186, -t124, -t359 * t412 + t457, -t294, qJD(2) * t70 - qJD(4) * t36 + qJD(5) * t204 - t522, qJD(2) * t71 - qJD(4) * t34 + t359 * t454 - t523, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t475, t517, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t160, -t357, -t442, t160, t185, -t438, t363, t362, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t185, t340 * t437, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t5;