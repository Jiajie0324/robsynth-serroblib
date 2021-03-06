% Calculate inertial parameters regressor of coriolis matrix for
% S5RRPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:29
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPRR2_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR2_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR2_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR2_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:28:33
% EndTime: 2019-12-05 18:28:46
% DurationCPUTime: 8.72s
% Computational Cost: add. (14140->299), mult. (26823->391), div. (0->0), fcn. (31647->8), ass. (0->257)
t268 = sin(pkin(9));
t271 = sin(qJ(2));
t272 = cos(qJ(2));
t433 = cos(pkin(9));
t253 = t268 * t272 + t433 * t271;
t444 = -qJ(3) - pkin(6);
t256 = t444 * t271;
t257 = t444 * t272;
t294 = t433 * t256 + t268 * t257;
t193 = -t253 * pkin(7) + t294;
t270 = sin(qJ(4));
t224 = t268 * t256 - t433 * t257;
t251 = t268 * t271 - t433 * t272;
t283 = -t251 * pkin(7) + t224;
t452 = cos(qJ(4));
t140 = t270 * t193 + t452 * t283;
t470 = -t452 * t251 - t270 * t253;
t110 = pkin(8) * t470 + t140;
t451 = cos(qJ(5));
t527 = t451 * t110;
t102 = -t527 / 0.2e1;
t269 = sin(qJ(5));
t247 = t452 * t253;
t415 = t270 * t251;
t469 = t247 - t415;
t521 = -t452 * t193 + t270 * t283;
t522 = -pkin(8) * t469 - t521;
t525 = t269 * t522;
t323 = -t525 / 0.2e1;
t533 = t323 + t102;
t534 = 0.2e1 * t533;
t526 = qJD(2) + qJD(4);
t524 = t451 * t522;
t100 = -t524 / 0.2e1;
t528 = t269 * t110;
t472 = t100 + t528 / 0.2e1;
t532 = 0.2e1 * t472;
t531 = t527 / 0.2e1;
t530 = t524 - t528;
t62 = t527 + t525;
t529 = t526 * t140;
t523 = t526 * t521;
t517 = -t269 * t469 + t451 * t470;
t373 = t517 * qJD(2);
t376 = t517 * qJD(5);
t497 = qJD(4) * t517 + t373 + t376;
t464 = qJD(3) * t517;
t520 = t517 * qJD(1);
t487 = t451 * t469;
t488 = t269 * t470;
t499 = t487 + t488;
t429 = t499 ^ 2;
t430 = t517 ^ 2;
t518 = -t429 + t430;
t519 = t518 * qJD(1);
t262 = -t272 * pkin(2) - pkin(1);
t234 = t251 * pkin(3) + t262;
t159 = -pkin(4) * t470 + t234;
t515 = t159 * t517;
t204 = -t487 / 0.2e1;
t317 = t487 / 0.2e1;
t509 = t204 + t317;
t512 = t509 * qJD(1);
t474 = qJD(4) + qJD(5);
t378 = t499 * qJD(1);
t511 = t517 * t378;
t510 = t159 * t499;
t315 = t433 * pkin(2) + pkin(3);
t258 = t452 * t315;
t450 = pkin(2) * t268;
t349 = t270 * t450;
t244 = -t258 + t349;
t310 = pkin(4) - t244;
t233 = t451 * t310;
t245 = t270 * t315 + t452 * t450;
t417 = t269 * t245;
t185 = -t233 + t417;
t339 = t451 * t244;
t190 = -t339 - t417;
t508 = -t190 / 0.2e1 - t185 / 0.2e1;
t235 = t451 * t245;
t418 = t269 * t244;
t189 = t235 - t418;
t295 = t269 * t310;
t186 = t235 + t295;
t455 = -t186 / 0.2e1;
t507 = t455 + t189 / 0.2e1;
t427 = t469 ^ 2;
t428 = t470 ^ 2;
t501 = -t427 + t428;
t506 = t501 * qJD(1);
t505 = qJD(2) * t534 + qJD(3) * t509;
t491 = t469 * pkin(4);
t504 = t491 / 0.2e1;
t475 = t470 * qJD(1);
t503 = t469 * t475;
t496 = qJD(2) * t532;
t494 = -t469 / 0.2e1;
t360 = t470 * qJD(4);
t141 = t470 * qJD(2) + t360;
t482 = qJD(2) * t509;
t468 = 0.2e1 * t317 + t488;
t481 = qJD(2) * t468;
t479 = qJD(3) * t468;
t478 = qJD(3) * t470;
t476 = t468 * qJD(1);
t459 = t253 ^ 2;
t458 = -t499 / 0.2e1;
t319 = t247 / 0.2e1;
t453 = t269 / 0.2e1;
t446 = t253 * pkin(3);
t445 = t269 * pkin(4);
t267 = t271 * pkin(2);
t442 = pkin(4) * qJD(4);
t441 = qJD(2) * pkin(2);
t236 = t267 + t446;
t160 = t236 + t491;
t8 = t159 * t160;
t438 = t8 * qJD(1);
t9 = t159 * t491;
t437 = t9 * qJD(1);
t11 = -t499 * t530 + t517 * t62;
t432 = t11 * qJD(1);
t277 = t507 * t499 - t508 * t517;
t348 = -t451 / 0.2e1;
t284 = (t269 * t458 + t348 * t517) * pkin(4);
t12 = t284 - t277;
t431 = t12 * qJD(1);
t34 = t234 * t236;
t413 = t34 * qJD(1);
t47 = t429 + t430;
t411 = t47 * qJD(1);
t264 = t267 / 0.2e1;
t320 = t264 + t446 / 0.2e1;
t293 = t504 + t320;
t297 = t185 * t458 + t455 * t517;
t49 = t293 + t297;
t409 = t49 * qJD(1);
t55 = -t160 * t517 + t510;
t408 = t55 * qJD(1);
t56 = t160 * t499 + t515;
t407 = t56 * qJD(1);
t63 = t140 * t470 + t469 * t521;
t406 = t63 * qJD(1);
t64 = t491 * t517 - t510;
t405 = t64 * qJD(1);
t65 = -t491 * t499 - t515;
t404 = t65 * qJD(1);
t289 = t348 * t499 + t453 * t517;
t69 = (t494 + t289) * pkin(4);
t402 = t69 * qJD(1);
t88 = t427 + t428;
t392 = t88 * qJD(1);
t389 = qJD(1) * t159;
t388 = qJD(1) * t234;
t387 = qJD(1) * t272;
t296 = t244 * t494 - t470 * t245 / 0.2e1;
t105 = t296 + t320;
t386 = t105 * qJD(1);
t119 = t262 * t267;
t385 = t119 * qJD(1);
t124 = t234 * t469 - t236 * t470;
t384 = t124 * qJD(1);
t125 = t234 * t470 + t236 * t469;
t383 = t125 * qJD(1);
t142 = -t224 * t251 - t253 * t294;
t381 = t142 * qJD(1);
t379 = t499 * qJD(4);
t377 = t499 * qJD(2);
t372 = t499 * qJD(5);
t168 = 0.2e1 * t319 - t415;
t370 = t168 * qJD(1);
t282 = (-t268 * t251 / 0.2e1 - t433 * t253 / 0.2e1) * pkin(2);
t188 = -t267 / 0.2e1 + t282;
t369 = t188 * qJD(1);
t250 = t251 ^ 2;
t191 = t250 - t459;
t368 = t191 * qJD(1);
t206 = t251 * t267 + t262 * t253;
t367 = t206 * qJD(1);
t207 = -t262 * t251 + t253 * t267;
t366 = t207 * qJD(1);
t215 = t319 - t247 / 0.2e1;
t364 = t215 * qJD(1);
t363 = t215 * qJD(4);
t362 = t469 * qJD(1);
t361 = t469 * qJD(2);
t357 = t469 * qJD(4);
t220 = t250 + t459;
t356 = t220 * qJD(1);
t355 = t251 * qJD(1);
t354 = t253 * qJD(1);
t353 = t253 * qJD(2);
t259 = -t271 ^ 2 + t272 ^ 2;
t352 = t259 * qJD(1);
t351 = t271 * qJD(2);
t350 = t272 * qJD(2);
t347 = t451 / 0.2e1;
t346 = pkin(1) * t271 * qJD(1);
t345 = pkin(1) * t387;
t334 = t499 * t520;
t333 = t517 * t389;
t332 = t499 * t389;
t331 = t470 * t362;
t328 = t470 * t388;
t327 = t469 * t388;
t326 = t251 * t354;
t325 = t251 * t353;
t324 = t271 * t350;
t322 = t451 * qJD(4);
t321 = t451 * qJD(5);
t318 = t524 / 0.2e1;
t316 = t339 / 0.2e1;
t278 = t507 * t530 + t508 * t62;
t285 = (-t347 * t62 + t453 * t530) * pkin(4);
t1 = t285 + t278;
t76 = t185 * t189 + t186 * t190;
t311 = -t1 * qJD(1) + t76 * qJD(2);
t308 = t474 * t509;
t133 = (t244 / 0.2e1 + pkin(4) - t349 / 0.2e1 + t258 / 0.2e1) * t269;
t274 = t525 / 0.2e1;
t18 = t323 + t274;
t307 = -t18 * qJD(1) - t133 * qJD(2);
t298 = t233 / 0.2e1 + pkin(4) * t347;
t135 = t316 + t298;
t306 = t135 * qJD(2);
t16 = t102 + t531;
t305 = -t16 * qJD(1) + t189 * qJD(2);
t22 = t100 + t318;
t304 = -t22 * qJD(1) - t185 * qJD(2);
t19 = t531 + t274 + t533;
t303 = t19 * qJD(1) + t186 * qJD(2);
t24 = t318 - t528 / 0.2e1 + t472;
t302 = -t24 * qJD(1) + t190 * qJD(2);
t301 = t244 * qJD(2);
t300 = t245 * qJD(2);
t299 = t168 * qJD(4) + t361;
t286 = t474 * t468 + t377;
t260 = t271 * t387;
t249 = t251 * qJD(2);
t238 = t245 * qJD(4);
t237 = t244 * qJD(4);
t187 = t264 + t282;
t184 = t190 * qJD(4);
t183 = t189 * qJD(4);
t182 = t186 * qJD(5);
t181 = t185 * qJD(5);
t136 = -t298 + t316 + t417;
t134 = -t445 / 0.2e1 - t235 - t295 / 0.2e1 + t418 / 0.2e1;
t123 = -t488 + 0.2e1 * t204;
t106 = -t296 + t320;
t70 = t289 * pkin(4) + t504;
t50 = t293 - t297;
t35 = t474 * t517 + t373;
t13 = t284 + t277;
t2 = t285 - t278;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t324, t259 * qJD(2), 0, -t324, 0, 0, -pkin(1) * t351, -pkin(1) * t350, 0, 0, -t325, t191 * qJD(2), 0, t325, 0, 0, t206 * qJD(2), t207 * qJD(2), t220 * qJD(3), t119 * qJD(2) + t142 * qJD(3), t141 * t469, t526 * t501, 0, (-t357 - t361) * t470, 0, 0, t124 * qJD(2) + t234 * t357, t125 * qJD(2) + t234 * t360, t88 * qJD(3), t34 * qJD(2) + t63 * qJD(3), t497 * t499, (qJD(2) + t474) * t518, 0, -(t372 + t377 + t379) * t517, 0, 0, t55 * qJD(2) - t64 * qJD(4) + t159 * t372, t56 * qJD(2) - t65 * qJD(4) + t159 * t376, t47 * qJD(3), t8 * qJD(2) + t11 * qJD(3) + t9 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260, t352, t350, -t260, -t351, 0, -pkin(6) * t350 - t346, pkin(6) * t351 - t345, 0, 0, -t326, t368, -t249, t326, -t353, 0, -qJD(2) * t224 + t367, -qJD(2) * t294 + t366, (t433 * t251 - t253 * t268) * t441, t385 + (-t224 * t433 + t268 * t294) * t441 + t187 * qJD(3), t503, t506, t141, -t331, -t299, 0, t384 - t529, t383 + t523, (t244 * t470 - t245 * t469) * qJD(2), t413 + (t140 * t244 - t245 * t521) * qJD(2) + t106 * qJD(3), t334, t519, t35, -t511, -t286, 0, -qJD(2) * t62 + t474 * t534 + t408, -qJD(2) * t530 + t474 * t532 + t407, (t185 * t517 - t186 * t499) * qJD(2) + t13 * qJD(4), t438 + (t185 * t62 + t186 * t530) * qJD(2) + t50 * qJD(3) + t2 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, t187 * qJD(2) + t381, 0, 0, 0, 0, 0, 0, t363, 0, t392, t106 * qJD(2) + t406, 0, 0, 0, 0, 0, 0, t308, 0, t411, t50 * qJD(2) + t70 * qJD(4) + t432; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t503, t506, t141, -t503, -t168 * qJD(2) - t357, 0, t215 * qJD(3) + t327 - t529, t328 + t523, 0, 0, t511, t519, t497, -t511, t123 * qJD(5) - t379 - t481, 0, -qJD(4) * t62 + qJD(5) * t534 - t405 + t505, -qJD(4) * t530 + qJD(5) * t532 - t404 + t496, t13 * qJD(2) + (-t269 * t499 - t451 * t517) * t442, t437 + t2 * qJD(2) + t70 * qJD(3) + (t269 * t530 - t451 * t62) * t442; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t511, t519, t497, -t511, t123 * qJD(4) - t372 - t481, 0, qJD(4) * t534 - t62 * qJD(5) + t332 + t505, qJD(4) * t532 - qJD(5) * t530 + t333 + t496, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t260, -t352, 0, t260, 0, 0, t346, t345, 0, 0, t326, -t368, 0, -t326, 0, 0, -t253 * qJD(3) - t367, t251 * qJD(3) - t366, 0, t188 * qJD(3) - t385, -t503, -t506, 0, t331, -t363, 0, -qJD(3) * t469 - t384, -t383 - t478, 0, -t105 * qJD(3) - t413, -t334, -t519, 0, t511, -t308, 0, -qJD(3) * t499 + t16 * qJD(4) - t19 * qJD(5) - t408, t24 * qJD(4) + t22 * qJD(5) - t407 - t464, -t12 * qJD(4), -t49 * qJD(3) - t1 * qJD(4) - t438; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t238, t237, 0, 0, 0, 0, 0, 0, 0, 0, -t183 - t182, -t184 + t181, 0, t76 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t354, t355, 0, t369, 0, 0, 0, 0, 0, 0, -t362, -t475, 0, -t386, 0, 0, 0, 0, 0, 0, -t378, -t520, 0, -t409; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t364, 0, -t238 - t300, t237 + t301, 0, 0, 0, 0, 0, 0, -t512, 0, t134 * qJD(5) - t183 - t305, t136 * qJD(5) - t184 - t302, -t431, (-t189 * t451 + t190 * t269) * t442 + t311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t512, 0, t134 * qJD(4) - t182 - t303, t136 * qJD(4) + t181 - t304, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t353, -t249, -t356, -t188 * qJD(2) - t381, 0, 0, 0, 0, 0, 0, t299, t141, -t392, t105 * qJD(2) - t406, 0, 0, 0, 0, 0, 0, t286, t35, -t411, t49 * qJD(2) - t69 * qJD(4) - t432; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t354, -t355, 0, -t369, 0, 0, 0, 0, 0, 0, t362, t475, 0, t386, 0, 0, 0, 0, 0, 0, t378, t520, 0, t409; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t370, t475, 0, 0, 0, 0, 0, 0, 0, 0, t476, t520, 0, -t402; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t476, t520, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t503, -t506, 0, t503, t215 * qJD(2), 0, -t168 * qJD(3) - t327, -t328 - t478, 0, 0, -t511, -t519, 0, t511, qJD(5) * t509 + t482, 0, -t16 * qJD(2) - t18 * qJD(5) + t405 - t479, -t24 * qJD(2) + t404 - t464, t12 * qJD(2), t1 * qJD(2) + t69 * qJD(3) - t437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t364, 0, t300, -t301, 0, 0, 0, 0, 0, 0, t512, 0, -t133 * qJD(5) + t305, -t135 * qJD(5) + t302, t431, -t311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t370, -t475, 0, 0, 0, 0, 0, 0, 0, 0, -t476, -t520, 0, t402; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t445, -pkin(4) * t321, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t512, 0, -t445 * t474 + t307, (-t322 - t321) * pkin(4) - t306, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t511, -t519, 0, t511, -qJD(4) * t509 + t482, 0, t19 * qJD(2) + t18 * qJD(4) - t332 - t479, -t22 * qJD(2) - t333 - t464, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t512, 0, t133 * qJD(4) + t303, t135 * qJD(4) + t304, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t476, -t520, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t512, 0, t269 * t442 - t307, pkin(4) * t322 + t306, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t3;
