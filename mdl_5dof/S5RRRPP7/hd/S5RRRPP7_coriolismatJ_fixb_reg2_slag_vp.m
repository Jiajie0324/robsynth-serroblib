% Calculate inertial parameters regressor of coriolis matrix for
% S5RRRPP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:06
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRPP7_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP7_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP7_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRRPP7_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:05:59
% EndTime: 2019-12-31 21:06:13
% DurationCPUTime: 7.37s
% Computational Cost: add. (3556->557), mult. (7792->638), div. (0->0), fcn. (6384->4), ass. (0->377)
t289 = sin(qJ(3));
t278 = t289 * qJ(4);
t291 = cos(qJ(3));
t323 = t291 * pkin(3) + t278;
t387 = t291 * qJD(4);
t505 = -qJD(3) * t323 + t387;
t493 = pkin(3) + pkin(4);
t504 = t493 * t291 + t278;
t503 = 0.2e1 * t289;
t467 = pkin(7) - qJ(5);
t292 = cos(qJ(2));
t281 = t292 * pkin(3);
t470 = t292 * pkin(2);
t290 = sin(qJ(2));
t476 = pkin(7) * t290;
t329 = -t470 - t476;
t311 = -pkin(1) + t329;
t203 = t291 * t311;
t423 = t290 * t291;
t328 = -qJ(5) * t423 - t203;
t67 = t281 + (pkin(6) * t289 + pkin(4)) * t292 + t328;
t425 = t289 * t292;
t383 = pkin(6) * t425;
t99 = -t328 - t383;
t502 = t67 + t99;
t193 = pkin(2) + t504;
t481 = -t290 / 0.2e1;
t356 = t193 * t481;
t417 = t292 * qJ(5);
t501 = t356 + t417 / 0.2e1;
t402 = qJD(3) * t292;
t365 = t291 * t402;
t288 = t292 ^ 2;
t286 = t290 ^ 2;
t420 = t291 * t286;
t212 = t288 * t291 - t420;
t392 = t212 * qJD(1);
t148 = t392 - t365;
t388 = t290 * qJD(2);
t500 = -t289 * t388 + t392;
t366 = t289 * t402;
t427 = t289 * t286;
t211 = t288 * t289 - t427;
t393 = t211 * qJD(1);
t499 = t393 - t366;
t146 = t291 * t388 + t393;
t385 = t292 * qJD(2);
t386 = t292 * qJD(1);
t258 = -qJD(3) + t386;
t285 = t289 ^ 2;
t287 = t291 ^ 2;
t246 = t287 - t285;
t62 = (qJD(3) + t386) * t423 * t503 - t246 * t385;
t173 = t258 * t423;
t123 = t173 * t503;
t497 = pkin(3) / 0.2e1;
t496 = pkin(4) / 0.2e1;
t495 = -t67 / 0.2e1;
t296 = (-t467 * t290 - pkin(1) - t470) * t289;
t471 = t291 * pkin(6);
t340 = -qJ(4) + t471;
t77 = t340 * t292 + t296;
t494 = -t77 / 0.2e1;
t422 = t291 * qJ(4);
t257 = t290 * t422;
t426 = t289 * t290;
t408 = -pkin(3) * t426 + t257;
t124 = (-t289 * pkin(4) - pkin(6)) * t290 + t408;
t492 = -t124 / 0.2e1;
t153 = t504 * t290;
t491 = t153 / 0.2e1;
t490 = -t153 / 0.2e1;
t168 = t290 * pkin(6) - t408;
t489 = t168 / 0.2e1;
t188 = t323 * t290;
t488 = -t188 / 0.2e1;
t468 = t292 * pkin(7);
t474 = t290 * pkin(2);
t227 = -t468 + t474;
t486 = -t227 / 0.2e1;
t261 = pkin(6) * t426;
t485 = -t261 / 0.2e1;
t280 = t290 * pkin(3);
t484 = -t280 / 0.2e1;
t483 = -t289 / 0.2e1;
t482 = t289 / 0.2e1;
t480 = t290 / 0.2e1;
t479 = -t291 / 0.2e1;
t478 = t291 / 0.2e1;
t477 = t493 / 0.2e1;
t475 = t289 * pkin(2);
t473 = t290 * pkin(4);
t469 = t292 * pkin(6);
t466 = t292 * t77;
t418 = t292 * qJ(4);
t349 = t418 / 0.2e1;
t231 = t289 * t349;
t345 = t292 * t477;
t419 = t291 * t292;
t382 = pkin(6) * t419;
t100 = t296 + t382;
t372 = t77 / 0.2e1 - t100 / 0.2e1;
t373 = -t99 / 0.2e1 + t495;
t5 = t231 - t372 * t289 + (t345 - t373) * t291;
t465 = t5 * qJD(1);
t464 = t67 * t291;
t200 = -t493 * t289 + t422;
t125 = (-pkin(6) + t200) * t292;
t71 = -t473 - t261 - t280 + (-t227 - t417) * t291;
t213 = t289 * t227;
t163 = -pkin(6) * t423 + t213;
t279 = t290 * qJ(4);
t137 = t163 + t279;
t79 = t289 * t417 + t137;
t7 = t124 * t125 + t67 * t71 + t77 * t79;
t463 = t7 * qJD(1);
t462 = t77 * t289;
t8 = t100 * t67 - t124 * t153 + t77 * t99;
t461 = t8 * qJD(1);
t9 = (-t290 * t71 - t292 * t67) * t291 + (t290 * t79 + t466) * t289;
t460 = t9 * qJD(1);
t34 = t124 * t426 + t153 * t423 + t292 * t99;
t459 = qJD(1) * t34;
t82 = t124 * t423;
t35 = t100 * t292 + t153 * t426 - t82;
t458 = qJD(1) * t35;
t38 = (t462 - t464) * t290;
t457 = qJD(1) * t38;
t441 = t188 * t289;
t442 = t168 * t291;
t157 = t289 * t311 + t382;
t445 = t157 * t292;
t41 = t445 + (t441 + t442) * t290;
t456 = qJD(1) * t41;
t156 = -t203 + t383;
t446 = t156 * t292;
t42 = -t168 * t426 + t188 * t423 - t446;
t455 = qJD(1) * t42;
t44 = -t82 + t466;
t454 = qJD(1) * t44;
t129 = t289 * (-pkin(1) - t476) + (t340 - t475) * t292;
t448 = t129 * t292;
t48 = t168 * t423 + t448;
t453 = qJD(1) * t48;
t80 = -pkin(6) * t427 - t446;
t452 = qJD(1) * t80;
t81 = -pkin(6) * t420 - t445;
t451 = qJD(1) * t81;
t12 = ((-t100 + t77) * t291 + t502 * t289) * t290;
t450 = t12 * qJD(1);
t449 = t124 * t289;
t15 = -t67 * t290 + t71 * t292 + (-t124 * t292 - t125 * t290) * t289;
t447 = t15 * qJD(1);
t134 = t156 + t281;
t421 = t291 * t227;
t162 = t261 + t421;
t138 = -t162 - t280;
t224 = pkin(3) * t289 - t422;
t169 = (pkin(6) + t224) * t292;
t16 = t129 * t137 + t134 * t138 + t168 * t169;
t444 = t16 * qJD(1);
t443 = t168 * t289;
t19 = -t124 * t419 - t125 * t423 - t77 * t290 + t292 * t79;
t440 = t19 * qJD(1);
t439 = t193 * t291;
t20 = -t129 * t156 + t134 * t157 + t168 * t188;
t438 = t20 * qJD(1);
t437 = t200 * t289;
t350 = -t418 / 0.2e1;
t232 = t289 * t350;
t301 = t129 * t482 + t157 * t483;
t344 = -t156 / 0.2e1 + t134 / 0.2e1;
t21 = t232 + (-t281 / 0.2e1 - t344) * t291 + t301;
t436 = t21 * qJD(1);
t215 = -pkin(2) - t323;
t435 = t215 * t289;
t223 = t467 * t289;
t434 = t223 * t290;
t433 = t223 * t292;
t225 = t467 * t291;
t432 = t225 * t290;
t431 = t225 * t292;
t23 = -t134 * t419 - t138 * t423 + (t137 * t290 + t448) * t289;
t430 = t23 * qJD(1);
t24 = ((t129 - t157) * t291 + (t134 - t156) * t289) * t290;
t429 = t24 * qJD(1);
t428 = t285 * t286;
t316 = t168 * t292 + t169 * t290;
t29 = -t129 * t290 + t137 * t292 + t291 * t316;
t424 = t29 * qJD(1);
t416 = t493 * t290;
t30 = -t134 * t290 + t138 * t292 + t289 * t316;
t415 = t30 * qJD(1);
t31 = (t162 * t290 - t446) * t291 + (t163 * t290 + t445) * t289;
t414 = t31 * qJD(1);
t343 = t485 + t484;
t295 = -t449 / 0.2e1 + t431 / 0.2e1 + t343;
t348 = -t417 / 0.2e1;
t300 = t356 + t348;
t376 = -t473 / 0.2e1;
t32 = t376 + (t486 + t300) * t291 + t295;
t413 = t32 * qJD(1);
t36 = pkin(6) ^ 2 * t290 * t292 - t156 * t162 + t157 * t163;
t412 = t36 * qJD(1);
t45 = t156 * t290 + (t162 - 0.2e1 * t261) * t292;
t411 = t45 * qJD(1);
t46 = t163 * t292 + (-t157 + 0.2e1 * t382) * t290;
t410 = t46 * qJD(1);
t199 = t421 / 0.2e1;
t409 = t199 + t261 / 0.2e1;
t407 = qJD(2) * t289;
t406 = qJD(2) * t291;
t405 = qJD(3) * t156;
t404 = qJD(3) * t225;
t403 = qJD(3) * t289;
t276 = qJD(3) * t291;
t401 = qJD(4) * t289;
t400 = qJD(4) * t292;
t399 = qJD(5) * t289;
t398 = qJD(5) * t291;
t397 = qJD(5) * t292;
t342 = t285 / 0.2e1 - t287 / 0.2e1;
t196 = t342 * t290;
t396 = t196 * qJD(3);
t268 = t287 * t286;
t208 = t268 + t428;
t395 = t208 * qJD(1);
t245 = t287 + t285;
t391 = t245 * qJD(2);
t226 = t246 * qJD(3);
t247 = t288 - t286;
t390 = t247 * qJD(1);
t389 = t290 * qJD(1);
t384 = t497 + t496;
t381 = pkin(1) * t389;
t380 = pkin(1) * t386;
t379 = pkin(7) * t403;
t378 = pkin(7) * t276;
t377 = t475 / 0.2e1;
t375 = t468 / 0.2e1;
t374 = t496 + t477;
t197 = t213 / 0.2e1;
t353 = -t423 / 0.2e1;
t371 = pkin(6) * t353 + t197 + t279;
t370 = qJ(4) * t400;
t369 = t291 * t389;
t364 = t292 * t387;
t363 = t290 * t398;
t252 = t289 * t276;
t251 = t289 * t406;
t250 = t289 * t387;
t362 = t289 * t386;
t361 = t289 * t397;
t360 = t290 * t385;
t359 = t290 * t401;
t358 = t290 * t386;
t357 = t291 * t386;
t355 = t215 * t480;
t354 = -t425 / 0.2e1;
t352 = t423 / 0.2e1;
t351 = -t419 / 0.2e1;
t346 = t416 / 0.2e1;
t176 = (-0.1e1 / 0.2e1 + t342) * t290;
t105 = qJD(1) * t176 - t251;
t139 = qJD(1) * t196 - t251;
t219 = t289 * qJD(1) * t420;
t114 = qJD(2) * t196 + t219;
t338 = t289 * t369;
t337 = t289 * t358;
t336 = t290 * t251;
t335 = t286 * t252;
t334 = t292 * t359;
t333 = t497 + t374;
t331 = t494 - t434 / 0.2e1;
t330 = t432 / 0.2e1 + t495;
t327 = 0.2e1 * t336;
t326 = t486 + t348;
t325 = t200 * t481 + t492;
t324 = t224 * t480 + t489;
t322 = -t215 * t292 + t476;
t302 = t193 * t491 + t200 * t492;
t307 = -t71 * t493 / 0.2e1 + t79 * qJ(4) / 0.2e1;
t1 = t372 * t223 + t373 * t225 + t302 + t307;
t43 = t193 * t200;
t321 = -t1 * qJD(1) + t43 * qJD(2);
t10 = (t490 + t326) * t291 + (-t437 / 0.2e1 - t439 / 0.2e1 - t374) * t290 + t295;
t73 = -t193 * t289 + t200 * t291;
t320 = qJD(1) * t10 + qJD(2) * t73;
t13 = -t433 / 0.2e1 + t325 * t291 + (t491 - t300) * t289 + t371;
t72 = t437 + t439;
t319 = -qJD(1) * t13 + qJD(2) * t72;
t318 = t137 * t291 + t138 * t289;
t317 = -t162 * t289 + t163 * t291;
t108 = t215 * t291 + t224 * t289;
t198 = -t213 / 0.2e1;
t235 = t289 * t375;
t26 = t235 - t441 / 0.2e1 - t442 / 0.2e1 - t279 + t198 + (t435 / 0.2e1 + (-t224 / 0.2e1 + pkin(6) / 0.2e1) * t291) * t290;
t315 = -qJD(1) * t26 + qJD(2) * t108;
t109 = t224 * t291 - t435;
t308 = t355 + t375;
t297 = t488 + t308;
t303 = t324 * t289;
t28 = -t280 + t485 + t303 + (t486 + t297) * t291;
t314 = -qJD(1) * t28 + qJD(2) * t109;
t120 = t223 * t289 + t225 * t291;
t17 = t469 / 0.2e1 + (t350 + t331) * t291 + (t384 * t292 + t330) * t289;
t313 = qJD(1) * t17 - qJD(2) * t120;
t152 = -t333 * t289 + t422;
t78 = (t333 * t291 + t278) * t290;
t312 = qJD(1) * t78 - qJD(2) * t152;
t310 = t375 - t474 / 0.2e1;
t309 = -t137 * qJ(4) / 0.2e1 + t138 * t497;
t97 = (t486 + t310) * t291;
t306 = pkin(2) * t407 - qJD(1) * t97;
t236 = pkin(7) * t354;
t96 = t290 * t377 + t197 + t236;
t305 = pkin(2) * t406 - qJD(1) * t96;
t294 = (t344 * t291 + (-t129 / 0.2e1 + t157 / 0.2e1) * t289) * pkin(7) + t224 * t489 + t188 * t215 / 0.2e1;
t4 = t294 + t309;
t304 = -t215 * t224 * qJD(2) - t4 * qJD(1);
t39 = t443 / 0.2e1 + (t486 + t308) * t291 + t343;
t299 = qJD(1) * t39 + t215 * t407;
t206 = t369 + t407;
t209 = -t268 + t428;
t131 = -qJD(1) * t209 + t327;
t160 = -qJD(2) * t246 + 0.2e1 * t338;
t132 = qJD(2) * t211 + t290 * t365;
t133 = -qJD(2) * t212 + t290 * t366;
t298 = t484 - t431 / 0.2e1 + t376;
t101 = -qJD(3) * t209 + t292 * t327;
t218 = t288 + t268;
t103 = qJD(1) * t218 + t336 - t402;
t283 = qJ(4) * qJD(4);
t275 = t285 * qJD(4);
t266 = qJ(4) * t402;
t265 = -t389 / 0.2e1;
t264 = t389 / 0.2e1;
t263 = t388 / 0.2e1;
t220 = t291 * t359;
t217 = t258 * qJ(4);
t214 = t218 * qJD(4);
t207 = -t276 + t357;
t205 = t258 * t289;
t204 = t289 * t389 - t406;
t202 = (t386 - qJD(3) / 0.2e1) * t290;
t187 = qJD(2) * t285 + t338;
t178 = (-t384 + t477) * t289;
t177 = t285 * t481 + t287 * t480 + t481;
t172 = t206 * t292;
t171 = -t290 * t403 + t337;
t170 = -t291 * t385 + t337;
t167 = t177 * qJD(4);
t166 = t176 * qJD(4);
t159 = t287 * t360 - t335;
t158 = t285 * t360 + t335;
t145 = t157 * qJD(3);
t135 = t291 * t346 + t493 * t353;
t113 = -t287 * t358 - t396;
t112 = -t285 * t358 + t396;
t92 = qJD(2) * t177 - t219;
t91 = qJD(2) * t176 + t219;
t70 = t291 * t310 + t199 + t261;
t69 = t236 + t198 + (t377 + t471) * t290;
t66 = -t396 + (t287 * t389 + t251) * t292;
t65 = t396 + (t285 * t389 - t251) * t292;
t40 = pkin(7) * t351 + t215 * t353 - t443 / 0.2e1 - t421 / 0.2e1 + t343;
t33 = t193 * t352 + t449 / 0.2e1 + t485 + t326 * t291 + t298;
t27 = t291 * t297 + t280 + t303 + t409;
t25 = t235 - t324 * t291 + (t355 + t488) * t289 + t371;
t22 = pkin(3) * t351 + t134 * t478 + t156 * t479 + t232 - t301;
t18 = -t469 / 0.2e1 + t330 * t289 + t493 * t354 + (t349 + t331) * t291;
t14 = t433 / 0.2e1 + t200 * t352 - t153 * t482 + t124 * t478 + t371 + t501 * t289;
t11 = t325 * t289 - t298 + t346 + t409 + (t490 + t501) * t291;
t6 = t99 * t479 + t462 / 0.2e1 + t100 * t483 - t464 / 0.2e1 + t231 + t291 * t345;
t3 = t294 - t309;
t2 = -t302 + t307 + t502 * t225 / 0.2e1 + (t494 + t100 / 0.2e1) * t223;
t37 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t360, t247 * qJD(2), 0, -t360, 0, 0, -pkin(1) * t388, -pkin(1) * t385, 0, 0, t159, -t101, t133, t158, t132, -t360, -qJD(2) * t45 - qJD(3) * t81, qJD(2) * t46 + qJD(3) * t80, -t31 * qJD(2), t36 * qJD(2), t159, t133, t101, -t360, -t132, t158, qJD(2) * t30 + qJD(3) * t41 - t250 * t286, -qJD(2) * t23 - qJD(3) * t24 + t334, -qJD(2) * t29 - qJD(3) * t42 + t214, qJD(2) * t16 + qJD(3) * t20 - qJD(4) * t48, t159, t101, -t133, t158, t132, -t360, t15 * qJD(2) + t35 * qJD(3) + (-t286 * t401 - t290 * t397) * t291, -qJD(2) * t19 - qJD(3) * t34 - t290 * t361 + t214, qJD(2) * t9 + qJD(3) * t12 + qJD(5) * t208 - t334, qJD(2) * t7 + qJD(3) * t8 - qJD(4) * t44 + qJD(5) * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t358, t390, t385, -t358, -t388, 0, -pkin(6) * t385 - t381, pkin(6) * t388 - t380, 0, 0, t66, -t62, -t500, t65, t146, -t202, -t411 + (t289 * t329 - t382) * qJD(2) + t70 * qJD(3), t410 + (t291 * t329 + t383) * qJD(2) + t69 * qJD(3), qJD(2) * t317 - t414, t412 + (-pkin(2) * t469 + pkin(7) * t317) * qJD(2), t66, -t500, t62, -t202, -t146, t65, t415 + (-t169 * t291 - t289 * t322) * qJD(2) + t27 * qJD(3) + t167, qJD(2) * t318 + t22 * qJD(3) - t430, -t424 + (-t169 * t289 + t291 * t322) * qJD(2) + t25 * qJD(3) + t220, t444 + (pkin(7) * t318 + t169 * t215) * qJD(2) + t3 * qJD(3) + t40 * qJD(4), t66, t62, t500, t65, t146, -t202, t447 + (t125 * t291 - t193 * t425 - t434) * qJD(2) + t11 * qJD(3) + t167 - t361, -t440 + (t125 * t289 + t193 * t419 + t432) * qJD(2) + t14 * qJD(3) + t220 + t291 * t397, t460 + ((-t79 - t433) * t291 + (-t71 + t431) * t289) * qJD(2) + t6 * qJD(3), t463 + (t125 * t193 + t223 * t71 + t225 * t79) * qJD(2) + t2 * qJD(3) + t33 * qJD(4) + t18 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t114, -t131, t171, t114, t173, t263, qJD(2) * t70 - t145 - t451, qJD(2) * t69 + t405 + t452, 0, 0, -t114, t171, t131, t263, -t173, t114, qJD(2) * t27 - t145 + t456, t22 * qJD(2) - qJD(3) * t408 - t359 - t429, qJD(2) * t25 - t400 - t405 - t455, t438 + t3 * qJD(2) + (-pkin(3) * t157 - qJ(4) * t156) * qJD(3) + t129 * qJD(4), -t114, t131, -t171, t114, t173, t263, qJD(2) * t11 - qJD(3) * t100 + t458, qJD(2) * t14 + qJD(3) * t99 - t400 - t459, t450 + t6 * qJD(2) + (-t289 * t416 + t257) * qJD(3) + t359, t461 + t2 * qJD(2) + (t99 * qJ(4) - t100 * t493) * qJD(3) + t77 * qJD(4) + t135 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, t171, t103, qJD(2) * t40 + qJD(3) * t129 - t453, 0, 0, 0, 0, 0, 0, t92, t103, -t171, qJD(2) * t33 + qJD(3) * t77 - t454; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t172, -t170, t395, qJD(2) * t18 + qJD(3) * t135 + t457; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t358, -t390, 0, t358, 0, 0, t381, t380, 0, 0, t113, t123, t148, t112, -t499, t202, qJD(3) * t97 + t411, qJD(3) * t96 - t410, t414, -t412, t113, t148, -t123, t202, t499, t112, qJD(3) * t28 - t166 - t415, -qJD(3) * t21 - t364 + t430, qJD(3) * t26 + t220 + t424, qJD(3) * t4 - qJD(4) * t39 - t444, t113, -t123, -t148, t112, -t499, t202, qJD(3) * t10 - t166 - t447, -qJD(3) * t13 + t220 + t440, -qJD(3) * t5 + t364 - t460, -qJD(3) * t1 - qJD(4) * t32 + qJD(5) * t17 - t463; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t252, t226, 0, -t252, 0, 0, -pkin(2) * t403, -pkin(2) * t276, 0, 0, t252, 0, -t226, 0, 0, -t252, -qJD(3) * t109 + t250, 0, -qJD(3) * t108 + t275, (qJD(3) * t224 - t401) * t215, t252, -t226, 0, -t252, 0, 0, qJD(3) * t73 + t250, qJD(3) * t72 + t275, t245 * qJD(5), qJD(3) * t43 - qJD(5) * t120 + t193 * t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t139, -t160, -t207, t139, t205, t265, -t306 - t378, -t305 + t379, 0, 0, -t139, -t207, t160, t265, -t205, t139, -t314 - t378, -t436 + t505, -t315 - t379, t505 * pkin(7) - t304, -t139, t160, t207, t139, t205, t265, t320 - t404, -qJD(3) * t223 + t319, t504 * qJD(3) - t387 - t465, (-t223 * qJ(4) - t225 * t493) * qJD(3) + t225 * qJD(4) + t178 * qJD(5) + t321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t105, -t207, t187, -t299 + t378, 0, 0, 0, 0, 0, 0, -t105, t187, t207, t193 * t407 + t404 - t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t391, qJD(3) * t178 + t313; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114, t131, -t170, -t114, -t172, t263, -qJD(2) * t97 + t451, -qJD(2) * t96 - t452, 0, 0, t114, -t170, -t131, t263, t172, -t114, -qJD(2) * t28 - t456, qJD(2) * t21 + t429, -qJD(2) * t26 - t400 + t455, -qJD(2) * t4 - t370 - t438, t114, -t131, t170, -t114, -t172, t263, -qJD(2) * t10 + t363 - t458, qJD(2) * t13 + t290 * t399 - t400 + t459, qJD(2) * t5 - t450, qJD(2) * t1 + qJD(5) * t78 - t370 - t461; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, t160, t357, -t139, -t362, t264, t306, t305, 0, 0, t139, t357, -t160, t264, t362, -t139, t314, t436, t315, t304, t139, -t160, -t357, -t139, -t362, t264, -t320 + t399, -t319 - t398, t465, -qJD(5) * t152 - t321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t283, 0, 0, 0, 0, 0, 0, 0, qJD(4), 0, t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t258, -t217, 0, 0, 0, 0, 0, 0, 0, -t258, 0, -t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206, t204, 0, t312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91, -t170, -t103, qJD(2) * t39 + t266 + t453, 0, 0, 0, 0, 0, 0, t91, -t103, t170, qJD(2) * t32 + t266 - t363 + t454; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105, t357, -t187, t299, 0, 0, 0, 0, 0, 0, t105, -t187, -t357, t413 + (-qJD(2) * t193 - qJD(5)) * t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t258, t217, 0, 0, 0, 0, 0, 0, 0, t258, 0, t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t206; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, t171, -t395, -qJD(2) * t17 - qJD(3) * t78 + t290 * t387 - t457; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t403, t276, -t391, qJD(3) * t152 - t313 + t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t206, -t204, 0, -t312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t37;
