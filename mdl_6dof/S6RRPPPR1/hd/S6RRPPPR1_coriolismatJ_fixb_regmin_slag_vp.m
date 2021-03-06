% Calculate minimal parameter regressor of coriolis matrix for
% S6RRPPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta3,theta4]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x27]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:08
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRPPPR1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPPR1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPPR1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:08:21
% EndTime: 2019-03-09 08:08:37
% DurationCPUTime: 7.43s
% Computational Cost: add. (5731->438), mult. (11765->595), div. (0->0), fcn. (13353->8), ass. (0->347)
t285 = sin(pkin(9));
t288 = sin(qJ(2));
t290 = cos(qJ(2));
t458 = cos(pkin(9));
t259 = t285 * t288 - t290 * t458;
t286 = cos(pkin(10));
t289 = cos(qJ(6));
t413 = t289 * t286;
t284 = sin(pkin(10));
t287 = sin(qJ(6));
t416 = t287 * t284;
t509 = (t416 / 0.2e1 + t413 / 0.2e1) * t259;
t339 = t458 * t288;
t419 = t285 * t290;
t263 = t339 + t419;
t258 = t263 ^ 2;
t243 = t258 * t284;
t494 = t259 ^ 2;
t170 = t284 * t494 + t243;
t508 = qJD(1) * t170;
t507 = t170 * qJD(3);
t181 = t494 + t258;
t504 = t181 * t286;
t506 = t504 * qJD(1);
t390 = qJD(4) * t259;
t360 = t263 * t390;
t505 = qJD(3) * t504 + t284 * t360;
t478 = -qJ(3) - pkin(7);
t271 = t478 * t288;
t272 = t478 * t290;
t193 = -t458 * t271 - t285 * t272;
t177 = t193 * t284;
t503 = t193 * t286;
t267 = t458 * t272;
t420 = t285 * t271;
t499 = -t267 + t420;
t178 = t284 * t499;
t434 = t499 * t286;
t414 = t289 * t284;
t415 = t287 * t286;
t265 = t414 - t415;
t370 = t265 * qJD(2);
t261 = t413 + t416;
t425 = t263 * t261;
t496 = t425 * qJD(1);
t317 = t370 + t496;
t367 = t284 * qJD(2);
t162 = t286 * t263;
t377 = t162 * qJD(1);
t500 = t377 + t367;
t396 = qJD(1) * t259;
t359 = t425 * t396;
t282 = t284 ^ 2;
t283 = t286 ^ 2;
t273 = t282 + t283;
t329 = -t267 / 0.2e1 + t420 / 0.2e1;
t418 = t286 * qJ(5);
t481 = t284 * pkin(4);
t291 = (t418 / 0.2e1 - t481 / 0.2e1) * t259 + t329;
t361 = -t290 * pkin(2) - pkin(1);
t164 = t259 * pkin(3) - t263 * qJ(4) + t361;
t87 = t286 * t164 - t178;
t69 = -t259 * pkin(4) - t87;
t465 = t69 * t284;
t88 = t284 * t164 + t434;
t68 = t259 * qJ(5) + t88;
t466 = t68 * t286;
t312 = -t466 / 0.2e1 - t465 / 0.2e1;
t20 = t291 + t312;
t277 = t285 * pkin(2) + qJ(4);
t204 = t273 * t277;
t373 = t204 * qJD(2);
t498 = -t20 * qJD(1) + t373;
t462 = t88 * t286;
t463 = t87 * t284;
t310 = t463 / 0.2e1 - t462 / 0.2e1;
t31 = t310 + t329;
t497 = -qJD(1) * t31 + t373;
t253 = t339 / 0.2e1 + t419 / 0.2e1;
t493 = pkin(4) + pkin(5);
t495 = t284 * t493 - t418;
t221 = t259 * t414;
t492 = -t221 / 0.2e1;
t491 = -t259 / 0.2e1;
t490 = -t261 / 0.2e1;
t489 = -t263 / 0.2e1;
t488 = t263 / 0.2e1;
t487 = -t265 / 0.2e1;
t486 = t265 / 0.2e1;
t485 = -t282 / 0.2e1;
t484 = t284 / 0.2e1;
t483 = t286 / 0.2e1;
t482 = t263 * pkin(4);
t480 = t288 * pkin(2);
t479 = -pkin(8) + t277;
t477 = qJD(2) * pkin(2);
t140 = -t259 * t415 + t221;
t222 = t263 * t414;
t141 = t263 * t415 - t222;
t292 = t178 + (-pkin(8) * t263 - t164) * t286 - t493 * t259;
t159 = t284 * t263;
t52 = pkin(8) * t159 + t68;
t22 = t287 * t52 - t289 * t292;
t167 = t263 * pkin(3) + t259 * qJ(4) + t480;
t43 = -t177 + (pkin(8) * t259 - t167) * t286 - t493 * t263;
t472 = t289 * t43;
t157 = t284 * t259;
t90 = t284 * t167 - t503;
t70 = t263 * qJ(5) + t90;
t53 = -pkin(8) * t157 + t70;
t473 = t287 * t53;
t77 = t259 * t495 - t499;
t78 = -t263 * t495 - t193;
t1 = -(t472 - t473) * t259 + t22 * t263 + t77 * t141 + t78 * t140;
t476 = t1 * qJD(1);
t23 = t287 * t292 + t289 * t52;
t428 = t261 * t259;
t471 = t289 * t53;
t474 = t287 * t43;
t2 = (t471 + t474) * t259 + t23 * t263 + t77 * t425 - t78 * t428;
t475 = t2 * qJD(1);
t328 = -t418 + t481;
t105 = -t259 * t328 + t499;
t106 = t263 * t328 + t193;
t417 = t286 * t167;
t89 = t177 + t417;
t71 = -t89 - t482;
t3 = t105 * t106 + t68 * t70 + t69 * t71;
t470 = t3 * qJD(1);
t247 = t479 * t284;
t248 = t479 * t286;
t149 = t287 * t247 + t289 * t248;
t280 = -pkin(2) * t458 - pkin(3);
t300 = -t284 * qJ(5) + t280;
t219 = t286 * t493 - t300;
t295 = t149 * t259 / 0.2e1 + t219 * t425 / 0.2e1 + t78 * t486;
t313 = -t473 / 0.2e1 + t472 / 0.2e1;
t4 = -t295 + t313;
t469 = t4 * qJD(1);
t148 = -t289 * t247 + t287 * t248;
t296 = t148 * t491 - t219 * t141 / 0.2e1 + t78 * t490;
t314 = -t474 / 0.2e1 - t471 / 0.2e1;
t5 = -t296 + t314;
t468 = t5 * qJD(1);
t467 = t68 * t259;
t161 = t286 * t259;
t8 = t69 * t161 - t71 * t162 + (t263 * t70 - t467) * t284;
t464 = t8 * qJD(1);
t461 = t89 * t286;
t9 = -t78 * t141 - t22 * t259;
t460 = t9 * qJD(1);
t459 = t90 * t284;
t10 = t23 * t259 + t425 * t78;
t457 = qJD(1) * t10;
t15 = t106 * t263 + (-t465 - t466) * t259;
t456 = qJD(1) * t15;
t432 = t193 * t263;
t26 = t432 + (-t462 + t463) * t259;
t455 = qJD(1) * t26;
t29 = (-t284 * t68 + t286 * t69) * t263;
t454 = qJD(1) * t29;
t30 = -t106 * t162 + t467;
t453 = qJD(1) * t30;
t326 = -t284 * t88 - t286 * t87;
t33 = t326 * t263;
t451 = qJD(1) * t33;
t427 = t263 * t141;
t440 = t140 * t259;
t47 = -t427 + t440;
t450 = qJD(1) * t47;
t438 = t425 * t263;
t439 = t428 * t259;
t48 = -t438 - t439;
t449 = qJD(1) * t48;
t66 = -t141 * t162 - t287 * t494;
t448 = qJD(1) * t66;
t72 = -t259 * t499 + t432;
t447 = qJD(1) * t72;
t446 = t105 * t284;
t445 = t106 * t284;
t11 = (-t105 * t286 + t68) * t263 + (t106 * t286 + t70) * t259;
t444 = t11 * qJD(1);
t12 = (-t69 + t446) * t263 + (-t71 - t445) * t259;
t443 = t12 * qJD(1);
t13 = (t459 + t461) * t263 + t326 * t259;
t442 = t13 * qJD(1);
t14 = t193 * t499 + t87 * t89 + t88 * t90;
t441 = t14 * qJD(1);
t340 = t485 - t283 / 0.2e1;
t422 = t277 * t259;
t316 = t340 * t422;
t246 = -t286 * pkin(4) + t300;
t426 = t263 * t246;
t294 = t316 + t426 / 0.2e1;
t311 = -t70 * t284 / 0.2e1 + t71 * t483;
t17 = t294 + t311;
t437 = t17 * qJD(1);
t18 = (t87 + t178) * t263 + (t89 - t177) * t259;
t436 = t18 * qJD(1);
t19 = (-t88 + t434) * t263 + (-t90 - t503) * t259;
t435 = t19 * qJD(1);
t293 = t280 * t488 + t316;
t309 = -t461 / 0.2e1 - t459 / 0.2e1;
t25 = t293 + t309;
t430 = t25 * qJD(1);
t429 = t259 * t263;
t424 = t263 * t277;
t423 = t265 * t259;
t113 = t265 * t263;
t308 = t422 / 0.2e1 - t426 / 0.2e1;
t332 = t177 / 0.2e1 + t482 / 0.2e1;
t352 = -t445 / 0.2e1;
t28 = t352 + (t167 / 0.2e1 + t308) * t286 + t332;
t421 = t28 * qJD(1);
t37 = -t140 * t425 + t141 * t428;
t411 = t37 * qJD(1);
t42 = t361 * t480;
t410 = t42 * qJD(1);
t46 = t427 + t440;
t409 = t46 * qJD(1);
t49 = -t438 + t439;
t408 = t49 * qJD(1);
t83 = t162 * t425 + t289 * t494;
t407 = t83 * qJD(1);
t343 = t415 / 0.2e1;
t91 = t492 + (t343 + t486) * t259;
t406 = t91 * qJD(1);
t92 = t492 + (t343 + t487) * t259;
t84 = t92 * qJD(1);
t351 = -t428 / 0.2e1;
t93 = t351 - t509;
t405 = t93 * qJD(1);
t324 = t351 + t509;
t404 = t324 * qJD(1);
t350 = t428 / 0.2e1;
t323 = t350 + t509;
t403 = t323 * qJD(1);
t395 = qJD(1) * t263;
t394 = qJD(1) * t286;
t393 = qJD(1) * t290;
t392 = qJD(2) * t286;
t391 = qJD(3) * t263;
t389 = qJD(6) * t259;
t109 = t273 * t258;
t388 = t109 * qJD(1);
t386 = t113 * qJD(1);
t331 = t340 * t263;
t130 = t331 - t253;
t385 = t130 * qJD(1);
t297 = t285 * t491 + t458 * t489;
t136 = (-t288 / 0.2e1 + t297) * pkin(2);
t382 = t136 * qJD(1);
t381 = t141 * qJD(6);
t380 = t157 * qJD(1);
t379 = t159 * qJD(1);
t378 = t161 * qJD(1);
t165 = t287 * t259;
t376 = t165 * qJD(1);
t168 = t273 * t259;
t375 = t168 * qJD(1);
t374 = t181 * qJD(1);
t372 = t253 * qJD(1);
t371 = t261 * qJD(2);
t249 = t261 * qJD(6);
t250 = t265 * qJD(6);
t369 = t273 * qJD(2);
t276 = -t288 ^ 2 + t290 ^ 2;
t368 = t276 * qJD(1);
t366 = t284 * qJD(5);
t365 = t288 * qJD(2);
t364 = t290 * qJD(2);
t363 = pkin(1) * t288 * qJD(1);
t362 = pkin(1) * t393;
t358 = t113 * t396;
t357 = t286 * t366;
t356 = t284 * t395;
t355 = t263 * t394;
t354 = t263 * t392;
t353 = t288 * t393;
t349 = t141 * t484;
t348 = t425 * t484;
t347 = t261 * t483;
t346 = t265 * t483;
t338 = -qJD(6) + t396;
t337 = qJD(2) * t219 - qJD(4);
t336 = t259 * t356;
t334 = t394 * t243;
t333 = t259 * t355;
t330 = (t485 + t283 / 0.2e1) * t263;
t327 = t71 * t284 + t70 * t286;
t325 = -t89 * t284 + t90 * t286;
t36 = t261 * t141 - t265 * t425;
t40 = t141 ^ 2 - t425 ^ 2;
t322 = qJD(1) * t40 + qJD(2) * t36;
t321 = t246 * t259 + t424;
t320 = -t259 * t280 - t424;
t137 = t261 ^ 2 - t265 ^ 2;
t319 = qJD(1) * t36 + qJD(2) * t137;
t74 = -t222 / 0.2e1 + (t415 - t414 / 0.2e1) * t263;
t318 = t74 * qJD(1) + t371;
t315 = t259 * t343 + t492;
t45 = t141 * t487 + t425 * t490;
t307 = -qJD(2) * t45 + t141 * t496;
t306 = -t45 * qJD(1) + t261 * t370;
t59 = t349 + (t347 + t289 / 0.2e1) * t263;
t305 = t59 * qJD(1) + t261 * t367;
t61 = t348 + (t346 - t287 / 0.2e1) * t263;
t304 = t61 * qJD(1) + t265 * t367;
t127 = t330 + t253;
t303 = t127 * qJD(1) + t286 * t367;
t302 = -t253 * qJD(6) + t259 * t395;
t299 = -t161 * qJD(2) + t336;
t173 = t283 * t258 + t494;
t298 = t173 * qJD(1) + t284 * t354;
t268 = t273 * qJD(4);
t244 = t253 * qJD(2);
t203 = t263 * t357;
t199 = t204 * qJD(4);
t191 = t282 * qJD(2) + t284 * t355;
t154 = t168 * qJD(3);
t152 = t168 * qJD(2);
t135 = t480 / 0.2e1 + t297 * pkin(2);
t129 = t331 + t253;
t128 = t330 - t253;
t125 = t130 * qJD(3);
t123 = t130 * qJD(4);
t122 = t129 * qJD(3);
t121 = t129 * qJD(4);
t103 = t109 * qJD(4);
t100 = t423 / 0.2e1 + t315;
t99 = -t423 / 0.2e1 + t315;
t98 = t350 - t509;
t86 = t100 * qJD(6);
t85 = t92 * qJD(6);
t67 = -t250 - t84;
t60 = t263 * t346 + t287 * t488 + t348;
t58 = t263 * t347 + t289 * t489 + t349;
t44 = t45 * qJD(6);
t34 = t36 * qJD(6);
t32 = -t310 + t329;
t27 = t352 - t417 / 0.2e1 + t308 * t286 - t332;
t24 = t293 - t309;
t21 = t291 - t312;
t16 = t294 - t311;
t7 = t295 + t313;
t6 = t296 + t314;
t35 = [0, 0, 0, t288 * t364, t276 * qJD(2), 0, 0, 0, -pkin(1) * t365, -pkin(1) * t364, qJD(3) * t181, qJD(2) * t42 + qJD(3) * t72, t18 * qJD(2) - t286 * t360 + t507, t19 * qJD(2) + t505, -qJD(2) * t13 + t103, qJD(2) * t14 + qJD(3) * t26 + qJD(4) * t33, t12 * qJD(2) + t507 + (-t258 * t366 - t360) * t286, -t8 * qJD(2) - t366 * t429 + t103, t11 * qJD(2) + t173 * qJD(5) - t505, qJD(2) * t3 + qJD(3) * t15 + qJD(4) * t29 + qJD(5) * t30 (-qJD(2) * t428 - t381) * t425, qJD(2) * t37 + qJD(6) * t40, t49 * qJD(2) + t259 * t381, t46 * qJD(2) + t389 * t425, qJD(2) * t429, t1 * qJD(2) + t47 * qJD(3) - t66 * qJD(5) + t10 * qJD(6) - t390 * t425, t2 * qJD(2) + t48 * qJD(3) + t83 * qJD(5) + t9 * qJD(6) - t113 * t390; 0, 0, 0, t353, t368, t364, -t365, 0, -pkin(7) * t364 - t363, pkin(7) * t365 - t362 (t259 * t458 - t263 * t285) * t477, t410 + (-t193 * t285 - t458 * t499) * t477 + t135 * qJD(3), t436 + (t284 * t320 - t434) * qJD(2) - t157 * qJD(4), t499 * t367 + t435 + (qJD(2) * t320 - t390) * t286, qJD(2) * t325 - t442, t441 + (t277 * t325 + t280 * t499) * qJD(2) + t24 * qJD(3) + t32 * qJD(4), -t105 * t392 + t443 + t128 * qJD(5) + (-qJD(2) * t321 - t390) * t284, qJD(2) * t327 - t464, t444 + (t286 * t321 - t446) * qJD(2) + t161 * qJD(4) + t203, t470 + (t105 * t246 + t277 * t327) * qJD(2) + t16 * qJD(3) + t21 * qJD(4) + t27 * qJD(5), -t317 * t428 + t44, t411 + (-t265 * t140 + t261 * t428) * qJD(2) + t34, t98 * qJD(6) - t263 * t370 + t408, t263 * t371 + t409 + t86, t302, t476 + (t219 * t140 + t148 * t263 + t77 * t261) * qJD(2) + t99 * qJD(4) + t58 * qJD(5) + t7 * qJD(6), t475 + (t149 * t263 - t219 * t428 + t77 * t265) * qJD(2) + t323 * qJD(4) + t60 * qJD(5) + t6 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t374, qJD(2) * t135 + t447, t508, t506, 0, qJD(2) * t24 + t121 + t455, t508, 0, -t506, qJD(2) * t16 + t121 + t456, 0, 0, 0, 0, 0, t86 + t450, qJD(6) * t324 + t449; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t157 * qJD(2) - t333 (t356 - t392) * t259, t388, qJD(2) * t32 + t122 + t451 (-t355 - t367) * t259, t388, -t299, qJD(2) * t21 + t122 + t454, 0, 0, 0, 0, 0, t99 * qJD(2) - t359, qJD(2) * t323 - t358; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t128 * qJD(2) - t334, -t336, t298, qJD(2) * t27 + t453, 0, 0, 0, 0, 0, qJD(2) * t58 - t448, qJD(2) * t60 + t407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t307, t322, t98 * qJD(2) + t141 * t338, t100 * qJD(2) + t338 * t425, -t244, qJD(2) * t7 + qJD(3) * t100 - qJD(6) * t23 + t457, qJD(2) * t6 + qJD(3) * t324 + qJD(6) * t22 + t460; 0, 0, 0, -t353, -t368, 0, 0, 0, t363, t362, 0, qJD(3) * t136 - t410, -t286 * t391 - t436, qJD(3) * t159 - t435, -t154 + t442, qJD(3) * t25 - qJD(4) * t31 - t441, -qJD(3) * t162 + qJD(5) * t127 - t443, qJD(5) * t161 - t154 + t464, -t284 * t391 + t203 - t444, qJD(3) * t17 - qJD(4) * t20 + qJD(5) * t28 - t470, t428 * t496 + t44, t34 - t411, -qJD(6) * t93 - t408, -t85 - t409, -t302, -qJD(3) * t425 - qJD(4) * t91 + qJD(5) * t59 - qJD(6) * t4 - t476, -qJD(3) * t113 - qJD(4) * t324 + qJD(5) * t61 - qJD(6) * t5 - t475; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t268, t199, t357, t268, t282 * qJD(5), -t246 * t366 + t199, -t261 * t250, t137 * qJD(6), 0, 0, 0, t219 * t250 + t261 * t366, -t219 * t249 + t265 * t366; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t382, -t355, t379, -t375, t430, -t377, -t375, -t356, t437, 0, 0, 0, 0, 0, -t496, -t386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t369, t497, 0, t369, 0, t498, 0, 0, 0, 0, 0, -t406, -t404; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t303, t378, t191, -t246 * t367 + t421, 0, 0, 0, 0, 0, t305, t304; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t306, t319, -t249 - t405, t67, t372, -t149 * qJD(6) + t219 * t370 - t469, t148 * qJD(6) - t219 * t371 - t468; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t374, -qJD(2) * t136 - t447, t354 - t508, -qJD(2) * t159 - t506, t152, -qJD(2) * t25 + t123 - t455, qJD(2) * t162 - t508, t152, t263 * t367 + t506, -qJD(2) * t17 + qJD(5) * t157 + t123 - t456, 0, 0, 0, 0, 0, qJD(2) * t425 - t450 - t85, qJD(2) * t113 - qJD(6) * t323 - t449; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t382, t355, -t379, t375, -t430, t377, t375, t356, -t437, 0, 0, 0, 0, 0, t496, t386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t385, 0, 0, 0, t385, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t380, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, t249 - t403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t333, -t336, -t388, qJD(2) * t31 - t125 - t451, t333, -t388, t336, qJD(2) * t20 - qJD(5) * t162 - t125 - t454, 0, 0, 0, 0, 0, t91 * qJD(2) - qJD(6) * t425 + t359, qJD(2) * t324 + t74 * qJD(6) + t358; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t369, -t497, 0, -t369, 0, -t366 - t498, 0, 0, 0, 0, 0, -t250 + t406, t249 + t404; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t385, 0, 0, 0, -t385, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t500, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t317, t318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t127 * qJD(2) + t334, t299, -t298, -qJD(2) * t28 - qJD(3) * t157 + qJD(4) * t162 - t453, 0, 0, 0, 0, 0, -qJD(2) * t59 + qJD(6) * t165 + t448, -t61 * qJD(2) + t289 * t389 - t407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t303, -t378, -t191, -t421 + (t246 * qJD(2) + qJD(4)) * t284, 0, 0, 0, 0, 0, -t305, -t304; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t380, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t500, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(6) * t287 + t376, t338 * t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t307, -t322, t93 * qJD(2) - t141 * t396, t92 * qJD(2) - t359, -t244, qJD(2) * t4 + qJD(3) * t92 + qJD(4) * t425 - qJD(5) * t165 - t457, -t289 * t259 * qJD(5) + t5 * qJD(2) + qJD(3) * t323 - t74 * qJD(4) - t460; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t306, -t319, t405, t84, -t372, -t265 * t337 + t469, t261 * t337 + t468; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, t403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t317, -t318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t376, -t289 * t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t35;
