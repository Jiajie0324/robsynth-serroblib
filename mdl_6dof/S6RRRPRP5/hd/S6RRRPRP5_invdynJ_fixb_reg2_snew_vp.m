% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 07:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRPRP5_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP5_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP5_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP5_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP5_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP5_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 07:55:26
% EndTime: 2019-05-07 07:56:05
% DurationCPUTime: 18.95s
% Computational Cost: add. (76193->576), mult. (160513->748), div. (0->0), fcn. (117825->10), ass. (0->374)
t360 = sin(qJ(2));
t364 = cos(qJ(2));
t359 = sin(qJ(3));
t363 = cos(qJ(3));
t422 = qJD(1) * t360;
t327 = -t363 * qJD(2) + t359 * t422;
t346 = t360 * qJDD(1);
t416 = qJD(1) * qJD(2);
t410 = t364 * t416;
t331 = t346 + t410;
t385 = -t359 * qJDD(2) - t363 * t331;
t298 = -qJD(3) * t327 - t385;
t355 = sin(pkin(10));
t356 = cos(pkin(10));
t328 = qJD(2) * t359 + t363 * t422;
t403 = -t363 * qJDD(2) + t359 * t331;
t381 = -qJD(3) * t328 - t403;
t258 = t356 * t298 + t355 * t381;
t302 = t356 * t327 + t328 * t355;
t304 = -t327 * t355 + t328 * t356;
t358 = sin(qJ(5));
t362 = cos(qJ(5));
t267 = t362 * t302 + t304 * t358;
t405 = t298 * t355 - t356 * t381;
t180 = -t267 * qJD(5) + t362 * t258 - t358 * t405;
t343 = qJD(1) * t364 - qJD(3);
t339 = -qJD(5) + t343;
t443 = t267 * t339;
t384 = t180 + t443;
t269 = -t302 * t358 + t304 * t362;
t212 = t269 * t267;
t345 = t360 * t416;
t415 = t364 * qJDD(1);
t332 = -t345 + t415;
t326 = -qJDD(3) + t332;
t322 = -qJDD(5) + t326;
t489 = -t212 + t322;
t451 = t489 * t358;
t266 = t269 ^ 2;
t473 = t339 ^ 2;
t488 = -t266 - t473;
t160 = t362 * t488 + t451;
t450 = t489 * t362;
t162 = -t358 * t488 + t450;
t108 = t160 * t356 + t162 * t355;
t91 = t160 * t355 - t162 * t356;
t58 = t108 * t359 + t363 * t91;
t73 = t108 * t363 - t359 * t91;
t566 = pkin(7) * (-t360 * t384 + t364 * t58) + pkin(1) * t73;
t564 = pkin(2) * t73;
t563 = pkin(8) * t73;
t562 = pkin(2) * t384 + pkin(8) * t58;
t476 = t267 ^ 2;
t244 = t476 - t473;
t167 = t244 * t358 - t450;
t171 = t244 * t362 + t451;
t115 = t167 * t356 + t171 * t355;
t118 = t167 * t355 - t171 * t356;
t406 = t358 * t258 + t362 * t405;
t374 = (-qJD(5) - t339) * t269 - t406;
t560 = t360 * (t115 * t359 + t118 * t363) + t364 * t374;
t487 = t266 - t476;
t147 = (qJD(5) - t339) * t269 + t406;
t95 = -t147 * t358 + t362 * t384;
t453 = t358 * t384;
t99 = -t147 * t362 - t453;
t61 = t355 * t99 + t356 * t95;
t65 = -t355 * t95 + t356 * t99;
t559 = t360 * (t359 * t61 - t363 * t65) + t364 * t487;
t558 = qJ(4) * t108;
t557 = -pkin(3) * t108 - pkin(4) * t160;
t556 = -pkin(3) * t384 - qJ(4) * t91;
t555 = t359 * t65 + t363 * t61;
t553 = t115 * t363 - t118 * t359;
t245 = -t266 + t473;
t201 = t322 + t212;
t449 = t201 * t358;
t532 = t362 * t245 - t449;
t195 = t362 * t201;
t533 = -t245 * t358 - t195;
t540 = -t355 * t532 + t356 * t533;
t541 = t355 * t533 + t356 * t532;
t551 = t359 * t540 + t363 * t541;
t153 = -t180 + t443;
t550 = t360 * (-t359 * t541 + t363 * t540) + t364 * t153;
t485 = -t473 - t476;
t500 = t362 * t485 + t449;
t501 = t358 * t485 - t195;
t514 = t355 * t500 + t356 * t501;
t515 = -t355 * t501 + t356 * t500;
t529 = t359 * t515 + t363 * t514;
t549 = pkin(1) * t529;
t548 = pkin(2) * t529;
t528 = -t359 * t514 + t363 * t515;
t546 = pkin(8) * t528;
t545 = pkin(8) * t529;
t544 = pkin(9) * t160;
t543 = pkin(9) * t162;
t542 = t364 * t528;
t481 = -t153 * t358 + t362 * t374;
t482 = t362 * t153 + t358 * t374;
t498 = t355 * t481 + t356 * t482;
t499 = -t355 * t482 + t356 * t481;
t513 = t359 * t499 + t363 * t498;
t539 = pkin(2) * t513;
t538 = pkin(8) * t513;
t535 = qJ(4) * t514;
t534 = qJ(4) * t515;
t531 = pkin(3) * t514 + pkin(4) * t501;
t184 = -t476 - t266;
t512 = -t359 * t498 + t363 * t499;
t530 = -pkin(2) * t184 + pkin(8) * t512;
t527 = pkin(7) * (t184 * t360 + t364 * t512) - pkin(1) * t513;
t524 = pkin(9) * t500;
t523 = pkin(9) * t501;
t522 = qJ(4) * t498;
t521 = qJ(6) * t384;
t366 = qJD(1) ^ 2;
t361 = sin(qJ(1));
t365 = cos(qJ(1));
t394 = g(1) * t365 + g(2) * t361;
t458 = qJDD(1) * pkin(7);
t321 = -pkin(1) * t366 - t394 + t458;
t395 = -pkin(2) * t364 - pkin(8) * t360;
t402 = t366 * t395 + t321;
t465 = t364 * g(3);
t471 = qJD(2) ^ 2;
t282 = -qJDD(2) * pkin(2) - t471 * pkin(8) + t402 * t360 + t465;
t308 = -pkin(3) * t343 - qJ(4) * t328;
t474 = t327 ^ 2;
t215 = -t381 * pkin(3) - t474 * qJ(4) + t328 * t308 + qJDD(4) + t282;
t284 = -pkin(4) * t343 - pkin(9) * t304;
t475 = t302 ^ 2;
t143 = t405 * pkin(4) - t475 * pkin(9) + t304 * t284 + t215;
t179 = -qJD(5) * t269 - t406;
t519 = -t179 * pkin(5) + t143 - t521;
t472 = t343 ^ 2;
t261 = -t472 - t475;
t436 = t304 * t302;
t376 = -t326 - t436;
t492 = t356 * t376;
t198 = t261 * t355 + t492;
t408 = t361 * g(1) - t365 * g(2);
t320 = qJDD(1) * pkin(1) + t366 * pkin(7) + t408;
t389 = -t332 + t345;
t390 = t331 + t410;
t273 = pkin(2) * t389 - pkin(8) * t390 - t320;
t466 = t360 * g(3);
t283 = -pkin(2) * t471 + qJDD(2) * pkin(8) + t364 * t402 - t466;
t233 = -t363 * t273 + t359 * t283;
t313 = t327 * t343;
t278 = t298 - t313;
t434 = t328 * t327;
t375 = -t326 - t434;
t188 = t375 * pkin(3) - qJ(4) * t278 - t233;
t234 = t359 * t273 + t363 * t283;
t190 = -pkin(3) * t474 + qJ(4) * t381 + t343 * t308 + t234;
t391 = -0.2e1 * qJD(4) * t304 + t356 * t188 - t355 * t190;
t518 = pkin(3) * t198 + t391;
t399 = pkin(3) * t498 + pkin(4) * t482;
t517 = -pkin(4) * t184 + pkin(9) * t481;
t516 = -pkin(3) * t184 + qJ(4) * t499;
t507 = pkin(9) * t482;
t432 = t339 * t362;
t414 = t267 * t432;
t382 = -t179 * t358 - t414;
t433 = t339 * t358;
t393 = t362 * t179 - t267 * t433;
t477 = t355 * t382 + t356 * t393;
t478 = -t355 * t393 + t356 * t382;
t497 = t359 * t478 + t363 * t477;
t377 = (t267 * t358 + t269 * t362) * t339;
t242 = t269 * t433;
t392 = -t242 + t414;
t479 = -t355 * t377 + t356 * t392;
t480 = t355 * t392 + t356 * t377;
t496 = t359 * t479 + t363 * t480;
t413 = t364 * t212;
t495 = t360 * (-t359 * t477 + t363 * t478) + t413;
t494 = t360 * (-t359 * t480 + t363 * t479) + t364 * t322;
t493 = t355 * t376;
t491 = t359 * t375;
t490 = t363 * t375;
t288 = t302 * t343;
t229 = -t288 + t258;
t486 = t288 + t258;
t274 = (qJD(3) + t343) * t328 + t403;
t301 = t304 ^ 2;
t325 = t328 ^ 2;
t421 = qJD(4) * t302;
t296 = -0.2e1 * t421;
t423 = t355 * t188 + t356 * t190;
t124 = t296 + t423;
t81 = t124 * t355 + t356 * t391;
t470 = pkin(3) * t81;
t435 = t304 * t343;
t225 = t405 + t435;
t173 = -t225 * t355 - t229 * t356;
t469 = pkin(3) * t173;
t467 = pkin(5) * t362;
t419 = qJD(6) * t339;
t334 = -0.2e1 * t419;
t208 = pkin(5) * t267 - qJ(6) * t269;
t104 = t376 * pkin(4) - pkin(9) * t229 + t391;
t106 = -pkin(4) * t475 - pkin(9) * t405 + t343 * t284 + t124;
t70 = t358 * t104 + t362 * t106;
t401 = -t322 * qJ(6) - t267 * t208 + t70;
t379 = -pkin(5) * t473 + t401;
t49 = t334 + t379;
t69 = -t362 * t104 + t106 * t358;
t51 = t322 * pkin(5) - qJ(6) * t473 + t208 * t269 + qJDD(6) + t69;
t464 = -pkin(5) * t51 + qJ(6) * t49;
t35 = t358 * t70 - t362 * t69;
t463 = t35 * t355;
t462 = t35 * t356;
t461 = t359 * t81;
t460 = t363 * t81;
t459 = qJ(6) * t362;
t457 = t143 * t358;
t456 = t143 * t362;
t448 = t215 * t355;
t447 = t215 * t356;
t254 = t326 - t436;
t445 = t254 * t355;
t444 = t254 * t356;
t442 = t269 * t339;
t441 = t282 * t359;
t440 = t282 * t363;
t290 = t326 - t434;
t439 = t290 * t359;
t438 = t290 * t363;
t431 = t343 * t355;
t430 = t343 * t356;
t429 = t343 * t359;
t428 = t343 * t363;
t342 = t364 * t366 * t360;
t427 = t360 * (qJDD(2) + t342);
t425 = t364 * (-t342 + qJDD(2));
t424 = pkin(5) * t153 + qJ(6) * t374;
t418 = qJD(3) - t343;
t412 = t364 * t436;
t411 = t364 * t434;
t409 = -qJ(6) * t358 - pkin(4);
t36 = t358 * t69 + t362 * t70;
t82 = t356 * t124 - t355 * t391;
t183 = t233 * t359 + t363 * t234;
t309 = t360 * t321 + t465;
t310 = t321 * t364 - t466;
t404 = t360 * t309 + t364 * t310;
t20 = t355 * t36 + t462;
t400 = pkin(3) * t20 + pkin(4) * t35;
t281 = -t301 - t472;
t213 = t281 * t356 + t445;
t398 = pkin(3) * t213 - t423;
t137 = t180 * t358 - t269 * t432;
t138 = t180 * t362 + t242;
t85 = t137 * t356 + t138 * t355;
t88 = -t137 * t355 + t138 * t356;
t396 = t360 * (-t359 * t85 + t363 * t88) - t413;
t388 = t233 * t363 - t234 * t359;
t386 = -pkin(1) + t395;
t27 = t358 * t49 - t362 * t51;
t28 = t358 * t51 + t362 * t49;
t14 = t27 * t356 + t28 * t355;
t383 = pkin(3) * t14 + pkin(4) * t27 + t464;
t380 = t399 + t424;
t378 = -t557 - t70;
t373 = t531 - t69;
t372 = -pkin(5) * t488 - qJ(6) * t489 + t379;
t370 = -pkin(5) * t201 + qJ(6) * t485 - t51;
t369 = t372 + t557;
t368 = t370 + t531;
t367 = 0.2e1 * qJD(6) * t269 - t519;
t353 = t364 ^ 2;
t352 = t360 ^ 2;
t350 = t353 * t366;
t348 = t352 * t366;
t333 = -0.2e1 * t345 + t415;
t330 = t346 + 0.2e1 * t410;
t317 = t364 * t326;
t312 = -t325 + t472;
t311 = -t472 + t474;
t306 = t325 - t474;
t305 = -t325 - t472;
t300 = -t472 - t474;
t289 = t325 + t474;
t286 = -t301 + t472;
t285 = -t472 + t475;
t279 = t327 * t418 + t385;
t277 = t298 + t313;
t275 = -t328 * t418 - t403;
t270 = t301 - t475;
t263 = -t305 * t359 + t438;
t262 = t305 * t363 + t439;
t253 = t300 * t363 - t491;
t252 = t300 * t359 + t490;
t240 = (t302 * t356 - t304 * t355) * t343;
t239 = (t302 * t355 + t304 * t356) * t343;
t235 = -t301 - t475;
t231 = -t274 * t363 + t278 * t359;
t224 = t405 - t435;
t223 = t258 * t356 + t304 * t431;
t222 = t258 * t355 - t304 * t430;
t221 = -t302 * t430 + t355 * t405;
t220 = -t302 * t431 - t356 * t405;
t219 = t285 * t356 + t445;
t218 = -t286 * t355 + t492;
t217 = t285 * t355 - t444;
t216 = t286 * t356 + t493;
t214 = -t281 * t355 + t444;
t199 = t261 * t356 - t493;
t175 = -t225 * t356 + t229 * t355;
t174 = -t224 * t356 - t355 * t486;
t172 = -t224 * t355 + t356 * t486;
t159 = -qJ(4) * t213 + t447;
t158 = -t213 * t359 + t214 * t363;
t157 = t213 * t363 + t214 * t359;
t156 = -qJ(4) * t198 + t448;
t148 = -t179 - t442;
t132 = -t198 * t359 + t199 * t363;
t131 = t198 * t363 + t199 * t359;
t126 = -pkin(3) * t486 + qJ(4) * t214 + t448;
t125 = -pkin(3) * t224 + qJ(4) * t199 - t447;
t121 = -t173 * t359 + t175 * t363;
t120 = t173 * t363 + t175 * t359;
t107 = t456 - t544;
t93 = t457 - t523;
t80 = -pkin(4) * t384 + t457 + t543;
t79 = -pkin(4) * t147 - t456 + t524;
t78 = -pkin(3) * t215 + qJ(4) * t82;
t77 = (-pkin(5) * t339 - 0.2e1 * qJD(6)) * t269 + t519;
t72 = -qJ(4) * t173 - t81;
t71 = -pkin(3) * t235 + qJ(4) * t175 + t82;
t55 = t359 * t88 + t363 * t85;
t53 = t367 + (-t148 + t442) * pkin(5);
t52 = pkin(5) * t442 + t367 + t521;
t47 = -qJ(6) * t184 + t51;
t46 = t334 + (-t184 - t473) * pkin(5) + t401;
t45 = t363 * t82 - t461;
t44 = t359 * t82 + t460;
t43 = -t148 * t459 - t358 * t53 - t523;
t42 = -pkin(5) * t453 + t362 * t52 + t544;
t41 = t107 * t356 - t355 * t80 - t558;
t40 = t148 * t409 + t362 * t53 + t524;
t39 = -t355 * t79 + t356 * t93 - t535;
t38 = -t543 + t358 * t52 - (-pkin(4) - t467) * t384;
t37 = t107 * t355 + t356 * t80 + t556;
t30 = -pkin(3) * t147 + t355 * t93 + t356 * t79 + t534;
t29 = -pkin(4) * t143 + pkin(9) * t36;
t26 = -t35 - t507;
t25 = t36 + t517;
t24 = -t358 * t46 + t362 * t47 - t507;
t23 = t358 * t47 + t362 * t46 + t517;
t22 = -t355 * t40 + t356 * t43 - t535;
t21 = t356 * t36 - t463;
t19 = -t355 * t38 + t356 * t42 + t558;
t18 = -pkin(3) * t148 + t355 * t43 + t356 * t40 + t534;
t17 = -pkin(9) * t27 + (pkin(5) * t358 - t459) * t77;
t16 = t355 * t42 + t356 * t38 - t556;
t15 = -t27 * t355 + t28 * t356;
t13 = pkin(9) * t28 + (t409 - t467) * t77;
t12 = -t25 * t355 + t26 * t356 - t522;
t11 = t25 * t356 + t26 * t355 + t516;
t10 = -t23 * t355 + t24 * t356 - t522;
t9 = t23 * t356 + t24 * t355 + t516;
t8 = -t20 * t359 + t21 * t363;
t7 = t20 * t363 + t21 * t359;
t6 = -pkin(9) * t462 - qJ(4) * t20 - t29 * t355;
t5 = -pkin(3) * t143 - pkin(9) * t463 + qJ(4) * t21 + t29 * t356;
t4 = -t14 * t359 + t15 * t363;
t3 = t14 * t363 + t15 * t359;
t2 = -qJ(4) * t14 - t13 * t355 + t17 * t356;
t1 = -pkin(3) * t77 + qJ(4) * t15 + t13 * t356 + t17 * t355;
t31 = [0, 0, 0, 0, 0, qJDD(1), t408, t394, 0, 0, t390 * t360, t330 * t364 + t333 * t360, t427 + t364 * (-t348 + t471), -t389 * t364, t360 * (t350 - t471) + t425, 0, t364 * t320 + pkin(1) * t333 + pkin(7) * (t364 * (-t350 - t471) - t427), -t360 * t320 - pkin(1) * t330 + pkin(7) * (-t425 - t360 * (-t348 - t471)), pkin(1) * (t348 + t350) + (t352 + t353) * t458 + t404, pkin(1) * t320 + pkin(7) * t404, t360 * (t298 * t363 + t328 * t429) - t411, t360 * (t275 * t363 - t277 * t359) - t364 * t306, t360 * (-t312 * t359 + t490) - t364 * t278, t360 * (-t327 * t428 - t359 * t381) + t411, t360 * (t311 * t363 + t439) + t364 * t274, t317 + t360 * (t327 * t363 - t328 * t359) * t343, t360 * (-pkin(8) * t252 + t441) + t364 * (-pkin(2) * t252 + t233) - pkin(1) * t252 + pkin(7) * (t253 * t364 - t275 * t360), t360 * (-pkin(8) * t262 + t440) + t364 * (-pkin(2) * t262 + t234) - pkin(1) * t262 + pkin(7) * (t263 * t364 - t279 * t360), t360 * t388 + pkin(7) * (t231 * t364 - t289 * t360) + t386 * (-t274 * t359 - t278 * t363), pkin(7) * (t183 * t364 + t282 * t360) - t386 * t388, t360 * (-t222 * t359 + t223 * t363) - t412, t360 * (-t172 * t359 + t174 * t363) - t364 * t270, t360 * (-t216 * t359 + t218 * t363) - t364 * t229, t360 * (-t220 * t359 + t221 * t363) + t412, t360 * (-t217 * t359 + t219 * t363) + t364 * t225, t360 * (-t239 * t359 + t240 * t363) + t317, t360 * (-pkin(8) * t131 - t125 * t359 + t156 * t363) + t364 * (-pkin(2) * t131 - t518) - pkin(1) * t131 + pkin(7) * (t132 * t364 + t224 * t360), t360 * (-pkin(8) * t157 - t126 * t359 + t159 * t363) + t364 * (-pkin(2) * t157 + t296 - t398) - pkin(1) * t157 + pkin(7) * (t158 * t364 + t360 * t486), t360 * (-pkin(8) * t120 - t359 * t71 + t363 * t72) + t364 * (-pkin(2) * t120 - t469) - pkin(1) * t120 + pkin(7) * (t121 * t364 + t235 * t360), t360 * (-pkin(8) * t44 - qJ(4) * t460 - t359 * t78) + t364 * (-pkin(2) * t44 - t470) - pkin(1) * t44 + pkin(7) * (t215 * t360 + t364 * t45), t396, -t559, t550, t495, -t560, t494, t360 * (-t30 * t359 + t363 * t39 - t545) + t364 * (-t373 - t548) - t549 + pkin(7) * (t147 * t360 + t542), t360 * (-t359 * t37 + t363 * t41 - t563) + t364 * (-t378 - t564) - t566, t360 * (-t11 * t359 + t12 * t363 - t538) + t364 * (-t399 - t539) + t527, t360 * (-pkin(8) * t7 - t359 * t5 + t363 * t6) + t364 * (-pkin(2) * t7 - t400) - pkin(1) * t7 + pkin(7) * (t143 * t360 + t364 * t8), t396, t550, t559, t494, t560, t495, t360 * (-t18 * t359 + t22 * t363 - t545) + t364 * (-t368 - t548) - t549 + pkin(7) * (t148 * t360 + t542), t360 * (t10 * t363 - t359 * t9 - t538) + t364 * (-t380 - t539) + t527, t360 * (-t16 * t359 + t19 * t363 + t563) + t364 * (-t369 + 0.2e1 * t419 + t564) + t566, t360 * (-pkin(8) * t3 - t1 * t359 + t2 * t363) + t364 * (-pkin(2) * t3 - t383) - pkin(1) * t3 + pkin(7) * (t360 * t77 + t364 * t4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t342, t348 - t350, t346, t342, t415, qJDD(2), -t309, -t310, 0, 0, t298 * t359 - t328 * t428, t275 * t359 + t277 * t363, t312 * t363 + t491, -t327 * t429 + t363 * t381, t311 * t359 - t438, (t327 * t359 + t328 * t363) * t343, pkin(2) * t275 + pkin(8) * t253 - t440, pkin(2) * t279 + pkin(8) * t263 + t441, pkin(2) * t289 + pkin(8) * t231 + t183, -pkin(2) * t282 + pkin(8) * t183, t222 * t363 + t223 * t359, t172 * t363 + t174 * t359, t216 * t363 + t218 * t359, t220 * t363 + t221 * t359, t217 * t363 + t219 * t359, t239 * t363 + t240 * t359, -pkin(2) * t224 + pkin(8) * t132 + t125 * t363 + t156 * t359, -pkin(2) * t486 + pkin(8) * t158 + t126 * t363 + t159 * t359, -pkin(2) * t235 + pkin(8) * t121 + t359 * t72 + t363 * t71, -pkin(2) * t215 + pkin(8) * t45 - qJ(4) * t461 + t363 * t78, t55, t555, t551, t497, t553, t496, -pkin(2) * t147 + t30 * t363 + t359 * t39 + t546, t359 * t41 + t363 * t37 - t562, t11 * t363 + t12 * t359 + t530, -pkin(2) * t143 + pkin(8) * t8 + t359 * t6 + t363 * t5, t55, t551, -t555, t496, -t553, t497, -pkin(2) * t148 + t18 * t363 + t22 * t359 + t546, t10 * t359 + t363 * t9 + t530, t16 * t363 + t19 * t359 + t562, -pkin(2) * t77 + pkin(8) * t4 + t1 * t363 + t2 * t359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t434, t306, t278, -t434, -t274, -t326, -t233, -t234, 0, 0, t436, t270, t229, -t436, -t225, -t326, t518, t398 + 0.2e1 * t421, t469, t470, t212, t487, -t153, -t212, t374, -t322, t373, t378, t399, t400, t212, -t153, -t487, -t322, -t374, -t212, t368, t380, t334 + t369, t383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t224, t486, t235, t215, 0, 0, 0, 0, 0, 0, t147, t384, t184, t143, 0, 0, 0, 0, 0, 0, t148, t184, -t384, t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t212, t487, -t153, -t212, t374, -t322, -t69, -t70, 0, 0, t212, -t153, -t487, -t322, -t374, -t212, t370, t424, t334 + t372, t464; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t201, -t153, t488, t51;];
tauJ_reg  = t31;
