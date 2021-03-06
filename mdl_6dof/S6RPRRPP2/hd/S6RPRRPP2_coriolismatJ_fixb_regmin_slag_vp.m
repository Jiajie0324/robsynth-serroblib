% Calculate minimal parameter regressor of coriolis matrix for
% S6RPRRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRRPP2_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP2_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP2_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP2_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:33:24
% EndTime: 2019-03-09 04:33:39
% DurationCPUTime: 7.64s
% Computational Cost: add. (4853->568), mult. (9167->702), div. (0->0), fcn. (7785->6), ass. (0->398)
t293 = sin(qJ(4));
t281 = t293 * qJ(5);
t295 = cos(qJ(4));
t335 = t295 * pkin(4) + t281;
t399 = t295 * qJD(5);
t527 = -qJD(4) * t335 + t399;
t516 = pkin(4) + pkin(5);
t526 = -t295 * t516 - t281;
t489 = pkin(8) - qJ(6);
t270 = -cos(pkin(9)) * pkin(1) - pkin(2);
t294 = sin(qJ(3));
t496 = pkin(8) * t294;
t322 = t270 - t496;
t296 = cos(qJ(3));
t491 = t296 * pkin(3);
t304 = t322 - t491;
t176 = t295 * t304;
t284 = t296 * pkin(4);
t442 = t294 * t295;
t386 = qJ(6) * t442;
t269 = sin(pkin(9)) * pkin(1) + pkin(7);
t449 = t269 * t293;
t69 = -t386 - t176 + t284 + (pkin(5) + t449) * t296;
t433 = t296 * t269;
t387 = t293 * t433;
t125 = -t176 + t387;
t95 = -t125 + t386;
t525 = t69 + t95;
t439 = t295 * t269;
t349 = -qJ(5) + t439;
t495 = t293 * pkin(3);
t116 = t293 * t322 + (t349 - t495) * t296;
t385 = t295 * t433;
t126 = t293 * t304 + t385;
t524 = (t116 / 0.2e1 - t126 / 0.2e1) * t293;
t200 = pkin(3) - t526;
t445 = t294 * t200;
t366 = -t445 / 0.2e1;
t435 = t296 * qJ(6);
t523 = t366 + t435 / 0.2e1;
t398 = t296 * qJD(1);
t267 = -qJD(4) + t398;
t288 = t293 ^ 2;
t290 = t295 ^ 2;
t254 = t290 - t288;
t402 = t294 * qJD(1);
t382 = t295 * t402;
t343 = t293 * t382;
t520 = qJD(3) * t254 - 0.2e1 * t343;
t519 = pkin(4) / 0.2e1;
t518 = pkin(5) / 0.2e1;
t299 = (-t294 * t489 + t270 - t491) * t293;
t79 = t296 * t349 + t299;
t517 = -t79 / 0.2e1;
t441 = t295 * qJ(5);
t266 = t294 * t441;
t447 = t293 * t294;
t421 = -pkin(4) * t447 + t266;
t123 = (-t293 * pkin(5) - t269) * t294 + t421;
t515 = -t123 / 0.2e1;
t443 = t294 * t269;
t157 = -t421 + t443;
t514 = t157 / 0.2e1;
t163 = t526 * t294;
t513 = -t163 / 0.2e1;
t512 = t163 / 0.2e1;
t199 = t335 * t294;
t511 = -t199 / 0.2e1;
t223 = t293 * t443;
t510 = -t223 / 0.2e1;
t490 = t296 * pkin(8);
t494 = t294 * pkin(3);
t237 = -t490 + t494;
t508 = -t237 / 0.2e1;
t283 = t294 * pkin(4);
t507 = -t283 / 0.2e1;
t506 = t288 / 0.2e1;
t505 = -t290 / 0.2e1;
t504 = -t293 / 0.2e1;
t503 = t293 / 0.2e1;
t502 = -t294 / 0.2e1;
t501 = t294 / 0.2e1;
t500 = -t295 / 0.2e1;
t499 = t295 / 0.2e1;
t498 = t296 / 0.2e1;
t497 = t516 / 0.2e1;
t493 = t294 * pkin(5);
t488 = t69 * t295;
t208 = -t293 * t516 + t441;
t124 = (-t269 + t208) * t296;
t485 = t79 * t295;
t84 = -t493 - t223 - t283 + (-t237 - t435) * t295;
t221 = t293 * t237;
t282 = t294 * qJ(5);
t130 = -t294 * t439 + t221 + t282;
t98 = t293 * t435 + t130;
t7 = (t485 / 0.2e1 + t69 * t503 + t124 / 0.2e1) * t296 + (t499 * t98 + t503 * t84 + t515) * t294;
t487 = t7 * qJD(1);
t486 = t79 * t293;
t484 = t79 * t296;
t436 = t296 * qJ(5);
t360 = t436 / 0.2e1;
t241 = t293 * t360;
t96 = t299 + t385;
t389 = t79 / 0.2e1 - t96 / 0.2e1;
t341 = t389 * t293;
t355 = t296 * t497;
t388 = t95 / 0.2e1 + t69 / 0.2e1;
t9 = t241 - t341 + (t355 + t388) * t295;
t483 = t9 * qJD(1);
t117 = t125 + t284;
t353 = -t125 / 0.2e1 + t117 / 0.2e1;
t300 = t295 * t353 - t524;
t17 = t294 * t300 + t296 * t511;
t482 = qJD(1) * t17;
t39 = t123 * t447 - t163 * t442 + t296 * t95;
t481 = qJD(1) * t39;
t99 = t123 * t442;
t40 = -t163 * t447 + t296 * t96 - t99;
t480 = qJD(1) * t40;
t41 = (t486 - t488) * t294;
t479 = qJD(1) * t41;
t458 = t199 * t293;
t460 = t157 * t295;
t467 = t126 * t296;
t42 = t467 + (t458 + t460) * t294;
t478 = qJD(1) * t42;
t468 = t125 * t296;
t43 = -t157 * t447 + t199 * t442 - t468;
t477 = qJD(1) * t43;
t46 = -t99 + t484;
t476 = qJD(1) * t46;
t471 = t116 * t296;
t49 = t157 * t442 + t471;
t475 = qJD(1) * t49;
t289 = t294 ^ 2;
t66 = -t289 * t449 - t468;
t474 = qJD(1) * t66;
t438 = t295 * t289;
t67 = -t269 * t438 - t467;
t473 = qJD(1) * t67;
t472 = t116 * t295;
t12 = t163 * t498 + (t295 * t388 - t341) * t294;
t470 = t12 * qJD(1);
t469 = t123 * t293;
t235 = pkin(4) * t293 - t441;
t158 = (t235 + t269) * t296;
t440 = t295 * t237;
t348 = -t223 - t440;
t133 = -t283 + t348;
t464 = t133 * t293;
t465 = t130 * t295;
t13 = (t472 / 0.2e1 - t158 / 0.2e1 + t117 * t503) * t296 + (t465 / 0.2e1 + t514 + t464 / 0.2e1) * t294;
t466 = t13 * qJD(1);
t14 = (-t84 * t294 - t69 * t296) * t295 + (t98 * t294 + t484) * t293;
t463 = t14 * qJD(1);
t15 = ((t79 - t96) * t295 + t525 * t293) * t294;
t462 = t15 * qJD(1);
t461 = t157 * t293;
t19 = -t69 * t294 + t84 * t296 + (-t123 * t296 - t124 * t294) * t293;
t459 = t19 * qJD(1);
t457 = t200 * t295;
t456 = t208 * t293;
t361 = -t436 / 0.2e1;
t242 = t293 * t361;
t22 = t242 + t524 + (-t284 / 0.2e1 - t353) * t295;
t455 = t22 * qJD(1);
t226 = -pkin(3) - t335;
t454 = t226 * t293;
t234 = t489 * t293;
t453 = t234 * t296;
t236 = t489 * t295;
t452 = t236 * t294;
t451 = t236 * t296;
t437 = t295 * t296;
t26 = -t123 * t437 - t124 * t442 - t79 * t294 + t296 * t98;
t450 = t26 * qJD(1);
t27 = -t126 * t442 + (t472 + (t117 - t125) * t293) * t294;
t448 = t27 * qJD(1);
t446 = t293 * t296;
t444 = t294 * t226;
t434 = t296 * t235;
t432 = t516 * t294;
t30 = -t133 * t442 - t117 * t437 + (t130 * t294 + t471) * t293;
t430 = t30 * qJD(1);
t327 = t157 * t296 + t158 * t294;
t31 = -t116 * t294 + t130 * t296 + t295 * t327;
t429 = t31 * qJD(1);
t32 = -t117 * t294 + t133 * t296 + t293 * t327;
t428 = t32 * qJD(1);
t352 = t510 + t507;
t301 = -t469 / 0.2e1 + t451 / 0.2e1 + t352;
t359 = -t435 / 0.2e1;
t311 = t366 + t359;
t392 = -t493 / 0.2e1;
t37 = t392 + (t508 + t311) * t295 + t301;
t427 = t37 * qJD(1);
t47 = t125 * t294 + (-t348 - 0.2e1 * t223) * t296;
t426 = t47 * qJD(1);
t48 = t221 * t296 + (-t126 + t385) * t294;
t425 = t48 * qJD(1);
t253 = t290 + t288;
t159 = (-0.1e1 + t253) * t296 * t294;
t407 = t159 * qJD(2);
t411 = qJD(5) * t296;
t424 = t293 * t411 + t407;
t207 = t440 / 0.2e1;
t423 = t207 + t223 / 0.2e1;
t240 = t295 * t360;
t368 = -t446 / 0.2e1;
t422 = pkin(4) * t368 + t240;
t291 = t296 ^ 2;
t255 = t291 - t289;
t218 = t255 * t293;
t420 = qJD(1) * t218;
t220 = t291 * t295 - t438;
t419 = qJD(1) * t220;
t418 = qJD(3) * t293;
t417 = qJD(3) * t295;
t416 = qJD(4) * t125;
t415 = qJD(4) * t236;
t414 = qJD(4) * t293;
t279 = qJD(4) * t295;
t413 = qJD(4) * t296;
t412 = qJD(5) * t293;
t410 = qJD(6) * t293;
t409 = qJD(6) * t295;
t408 = qJD(6) * t296;
t216 = t253 * t289;
t406 = t216 * qJD(1);
t219 = t253 * t296;
t405 = t219 * qJD(3);
t404 = t253 * qJD(3);
t403 = t255 * qJD(1);
t401 = t294 * qJD(3);
t400 = t294 * qJD(4);
t397 = t296 * qJD(3);
t396 = t519 + t518;
t395 = pkin(8) * t414;
t394 = pkin(8) * t279;
t393 = t495 / 0.2e1;
t391 = t490 / 0.2e1;
t390 = t518 + t497;
t205 = t221 / 0.2e1;
t364 = -t442 / 0.2e1;
t384 = t269 * t364 + t205 + t282;
t383 = qJ(5) * t411;
t381 = t295 * t401;
t380 = t293 * t413;
t379 = t295 * t413;
t378 = t296 * t399;
t377 = t294 * t409;
t376 = t270 * t402;
t375 = t270 * t398;
t374 = t293 * t279;
t259 = t293 * t417;
t258 = t293 * t399;
t373 = t293 * t408;
t372 = t294 * t397;
t371 = t294 * t412;
t370 = t294 * t398;
t262 = t294 * t399;
t369 = t295 * t398;
t367 = t446 / 0.2e1;
t365 = t444 / 0.2e1;
t363 = t442 / 0.2e1;
t362 = -t437 / 0.2e1;
t357 = t293 * t497;
t356 = t432 / 0.2e1;
t351 = t506 + t505;
t179 = (-0.1e1 / 0.2e1 + t351) * t294;
t142 = qJD(1) * t179 - t259;
t204 = t351 * t294;
t347 = qJD(1) * t204 - t259;
t229 = t293 * qJD(1) * t438;
t346 = qJD(3) * t204 + t229;
t345 = t294 * t259;
t344 = t296 * t371;
t187 = t234 * t364;
t342 = t519 + t390;
t340 = t452 / 0.2e1 - t69 / 0.2e1;
t339 = -t491 - t496;
t338 = t508 + t359;
t337 = t208 * t502 + t515;
t336 = t235 * t501 + t514;
t334 = -t226 * t296 + t496;
t8 = t123 * t124 + t69 * t84 + t79 * t98;
t333 = t8 * qJD(1) + t7 * qJD(2);
t332 = t234 * t363 + t187;
t11 = t123 * t163 + t69 * t96 + t79 * t95;
t331 = t11 * qJD(1) + t12 * qJD(2);
t16 = t116 * t130 + t117 * t133 + t157 * t158;
t330 = t16 * qJD(1) + t13 * qJD(2);
t18 = -t116 * t125 + t117 * t126 + t157 * t199;
t329 = t18 * qJD(1) + t17 * qJD(2);
t328 = t464 + t465;
t149 = t234 * t293 + t236 * t295;
t111 = t456 + t457;
t28 = -t453 / 0.2e1 + t337 * t295 + (t513 - t311) * t293 + t384;
t326 = -qJD(1) * t28 + qJD(3) * t111;
t112 = -t200 * t293 + t208 * t295;
t20 = (t512 + t338) * t295 + (-t456 / 0.2e1 - t457 / 0.2e1 - t390) * t294 + t301;
t325 = qJD(1) * t20 + qJD(3) * t112;
t145 = t226 * t295 + t235 * t293;
t206 = -t221 / 0.2e1;
t245 = pkin(8) * t367;
t34 = t245 - t458 / 0.2e1 - t460 / 0.2e1 - t282 + t206 + (t454 / 0.2e1 + (-t235 / 0.2e1 + t269 / 0.2e1) * t295) * t294;
t324 = -qJD(1) * t34 + qJD(3) * t145;
t146 = t235 * t295 - t454;
t317 = t365 + t391;
t306 = t511 + t317;
t313 = t336 * t293;
t36 = -t283 + t510 + t313 + (t508 + t306) * t295;
t323 = -qJD(1) * t36 + qJD(3) * t146;
t321 = t267 * t294;
t122 = (t295 * t342 + t281) * t294;
t162 = -t293 * t342 + t441;
t320 = qJD(1) * t122 - qJD(3) * t162;
t319 = t391 - t494 / 0.2e1;
t318 = -t130 * qJ(5) / 0.2e1 + t133 * t519;
t316 = -t84 * t516 / 0.2e1 + t98 * qJ(5) / 0.2e1;
t246 = pkin(8) * t368;
t134 = t294 * t393 + t205 + t246;
t315 = pkin(3) * t417 - qJD(1) * t134;
t135 = (t508 + t319) * t295;
t314 = pkin(3) * t418 - qJD(1) * t135;
t312 = t200 * t513 + t208 * t515;
t44 = t461 / 0.2e1 + (t508 + t317) * t295 + t352;
t310 = qJD(1) * t44 + t226 * t418;
t174 = t295 * t321;
t214 = t382 + t418;
t217 = t254 * t289;
t309 = qJD(1) * t217 + 0.2e1 * t345;
t307 = t507 - t451 / 0.2e1 + t392;
t3 = t234 * t389 - t236 * t388 + t312 + t316;
t50 = t200 * t208;
t52 = (t208 / 0.2e1 - t441 / 0.2e1 + t357) * t296 + t332;
t305 = -t3 * qJD(1) + t52 * qJD(2) + t50 * qJD(3);
t257 = t290 * t501;
t180 = t257 + (-0.1e1 / 0.2e1 + t506) * t294;
t24 = t187 + t433 / 0.2e1 + (t517 + t361) * t295 + (t296 * t396 + t340) * t293;
t303 = qJD(1) * t24 - qJD(2) * t180 - qJD(3) * t149;
t131 = t434 / 0.2e1 + t422;
t298 = t300 * pkin(8) + t235 * t514 + t199 * t226 / 0.2e1;
t6 = t298 + t318;
t302 = t226 * t235 * qJD(3) + t6 * qJD(1) - t131 * qJD(2);
t228 = t289 * t290 + t291;
t140 = qJD(1) * t228 + t345 - t413;
t286 = qJ(5) * qJD(5);
t278 = t288 * qJD(5);
t272 = qJ(5) * t413;
t271 = t401 / 0.2e1;
t263 = t295 * t397;
t261 = t293 * t401;
t256 = t288 * t502;
t230 = t293 * t262;
t227 = t267 * qJ(5);
t224 = t228 * qJD(5);
t215 = -t279 + t369;
t213 = t293 * t402 - t417;
t210 = (t398 - qJD(4) / 0.2e1) * t294;
t197 = -t261 + t379;
t196 = t293 * t397 + t295 * t400;
t195 = -t380 - t381;
t194 = t293 * t400 - t263;
t193 = qJD(3) * t288 + t343;
t192 = t204 * qJD(4);
t183 = -t293 * t396 + t357;
t182 = t256 + (t505 - 0.1e1 / 0.2e1) * t294;
t181 = t256 + t257 + t502;
t175 = t214 * t296;
t173 = t293 * t321;
t172 = t293 * t370 - t263;
t170 = t181 * qJD(5);
t169 = t179 * qJD(5);
t156 = t295 * t356 + t364 * t516;
t153 = t159 * qJD(3);
t132 = -t434 / 0.2e1 + t422;
t128 = qJD(3) * t181 - t229;
t127 = qJD(3) * t179 + t229;
t120 = t126 * qJD(4);
t83 = t295 * t319 + t207 + t223;
t82 = t246 + t206 + (t393 + t439) * t294;
t51 = t208 * t498 - t367 * t516 + t240 + t332;
t45 = pkin(8) * t362 + t226 * t364 - t461 / 0.2e1 - t440 / 0.2e1 + t352;
t38 = t200 * t363 + t469 / 0.2e1 + t510 + t338 * t295 + t307;
t35 = t295 * t306 + t283 + t313 + t423;
t33 = t245 - t336 * t295 + (t365 + t511) * t293 + t384;
t29 = t453 / 0.2e1 + t208 * t363 + t163 * t503 + t123 * t499 + t384 + t523 * t293;
t25 = -t485 / 0.2e1 + t187 - t433 / 0.2e1 + pkin(5) * t368 + t340 * t293 + t422;
t23 = pkin(4) * t362 + t116 * t504 + t117 * t499 + t125 * t500 + t126 * t503 + t242;
t21 = t337 * t293 - t307 + t356 + t423 + (t512 + t523) * t295;
t10 = t95 * t500 + t486 / 0.2e1 + t96 * t504 - t488 / 0.2e1 + t241 + t295 * t355;
t5 = t298 - t318;
t4 = -t312 + t316 + t525 * t236 / 0.2e1 + (t517 + t96 / 0.2e1) * t234;
t2 = qJD(3) * t13 + qJD(4) * t17;
t1 = qJD(3) * t7 + qJD(4) * t12;
t53 = [0, 0, 0, 0, t372, t255 * qJD(3), 0, 0, 0, t270 * t401, t270 * t397, -t289 * t374 + t290 * t372, -qJD(4) * t217 - 0.2e1 * t296 * t345, -qJD(3) * t220 + t294 * t380, qJD(3) * t218 + t294 * t379, -t372, -qJD(3) * t47 - qJD(4) * t67, qJD(3) * t48 + qJD(4) * t66, qJD(3) * t32 + qJD(4) * t42 - t258 * t289, -qJD(3) * t30 - qJD(4) * t27 + t344, -qJD(3) * t31 - qJD(4) * t43 + t224, qJD(3) * t16 + qJD(4) * t18 - qJD(5) * t49, t19 * qJD(3) + t40 * qJD(4) + (-t289 * t412 - t294 * t408) * t295, -qJD(3) * t26 - qJD(4) * t39 - t294 * t373 + t224, qJD(3) * t14 + qJD(4) * t15 + qJD(6) * t216 - t344, qJD(3) * t8 + qJD(4) * t11 - qJD(5) * t46 + qJD(6) * t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2, 0, 0, 0, t1; 0, 0, 0, 0, t370, t403, t397, -t401, 0, -t269 * t397 + t376, t269 * t401 + t375, -t192 + (t290 * t402 + t259) * t296, -0.2e1 * t294 * t374 + t296 * t520, t261 - t419, t381 + t420, -t210, -t426 + (t293 * t339 - t385) * qJD(3) + t83 * qJD(4), t425 + (t295 * t339 + t387) * qJD(3) + t82 * qJD(4), t428 + (-t158 * t295 - t293 * t334) * qJD(3) + t35 * qJD(4) + t170, qJD(3) * t328 + t23 * qJD(4) - t430, -t429 + (-t158 * t293 + t295 * t334) * qJD(3) + t33 * qJD(4) + t230 (pkin(8) * t328 + t158 * t226) * qJD(3) + t5 * qJD(4) + t45 * qJD(5) + t330, t459 + (t124 * t295 - t200 * t446 - t234 * t294) * qJD(3) + t21 * qJD(4) + t170 - t373, -t450 + (t124 * t293 + t200 * t437 + t452) * qJD(3) + t29 * qJD(4) + t230 + t295 * t408, t463 + ((-t98 - t453) * t295 + (-t84 + t451) * t293) * qJD(3) + t10 * qJD(4) (t124 * t200 + t234 * t84 + t236 * t98) * qJD(3) + t4 * qJD(4) + t38 * qJD(5) + t25 * qJD(6) + t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t346, -t309, t173, t174, t271, qJD(3) * t83 - t120 - t473, qJD(3) * t82 + t416 + t474, qJD(3) * t35 - t120 + t478, t23 * qJD(3) - qJD(4) * t421 - t371 - t448, qJD(3) * t33 - t411 - t416 - t477, t5 * qJD(3) + (-pkin(4) * t126 - qJ(5) * t125) * qJD(4) + t116 * qJD(5) + t329, qJD(3) * t21 - qJD(4) * t96 + t480, qJD(3) * t29 + qJD(4) * t95 - t411 - t481, t462 + t10 * qJD(3) + (-t293 * t432 + t266) * qJD(4) + t371, t4 * qJD(3) + (t95 * qJ(5) - t516 * t96) * qJD(4) + t79 * qJD(5) + t156 * qJD(6) + t331; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t128, t173, t140, qJD(3) * t45 + qJD(4) * t116 - t475, t128, t140, -t173, qJD(3) * t38 + qJD(4) * t79 - t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t175, -t172, t406, qJD(3) * t25 + qJD(4) * t156 + t479; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t153, 0, 0, 0, t153; 0, 0, 0, 0, 0, 0, 0, 0, 0, -t401, -t397, 0, 0, 0, 0, 0, t195, -t197, t195, t405, t197, t466 + (pkin(8) * t219 + t444) * qJD(3) + t132 * qJD(4) + t424, t195, t197, -t405, t487 + (t149 * t296 - t445) * qJD(3) + t51 * qJD(4) + t182 * qJD(6) + t424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t196, t194, -t196, 0, -t194, qJD(3) * t132 - qJD(4) * t199 + t262 + t482, -t196, -t194, 0, t51 * qJD(3) + t400 * t526 + t262 + t470; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t196, 0, 0, 0, t196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t182 * qJD(3); 0, 0, 0, 0, -t370, -t403, 0, 0, 0, -t376, -t375, -t290 * t370 - t192, 0.2e1 * t293 * t174, -t379 + t419, t380 - t420, t210, qJD(4) * t135 + t426, qJD(4) * t134 - t425, qJD(4) * t36 - t169 - t428, -qJD(4) * t22 - t378 + t430, qJD(4) * t34 + t230 + t429, qJD(4) * t6 - qJD(5) * t44 - t330, qJD(4) * t20 - t169 - t459, -qJD(4) * t28 + t230 + t450, -qJD(4) * t9 + t378 - t463, -qJD(4) * t3 - qJD(5) * t37 + qJD(6) * t24 - t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t131 - t407 - t466, 0, 0, 0, qJD(4) * t52 - qJD(6) * t180 - t407 - t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t374, t254 * qJD(4), 0, 0, 0, -pkin(3) * t414, -pkin(3) * t279, -qJD(4) * t146 + t258, 0, -qJD(4) * t145 + t278 (qJD(4) * t235 - t412) * t226, qJD(4) * t112 + t258, qJD(4) * t111 + t278, t253 * qJD(6), qJD(4) * t50 - qJD(6) * t149 + t200 * t412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t347, t520, -t215, t267 * t293, -t402 / 0.2e1, -t314 - t394, -t315 + t395, -t323 - t394, -t455 + t527, -t324 - t395, pkin(8) * t527 + t302, t325 - t415, -qJD(4) * t234 + t326, -qJD(4) * t526 - t399 - t483 (-t234 * qJ(5) - t236 * t516) * qJD(4) + t236 * qJD(5) + t183 * qJD(6) + t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t142, -t215, t193, -t310 + t394, -t142, t193, t215, t200 * t418 + t415 - t427; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t404, qJD(4) * t183 + t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t346, t309, -t172, -t175, t271, -qJD(3) * t135 + t473, -qJD(3) * t134 - t474, -qJD(3) * t36 - t478, qJD(3) * t22 + t448, -qJD(3) * t34 - t411 + t477, -qJD(3) * t6 - t329 - t383, -qJD(3) * t20 + t377 - t480, qJD(3) * t28 + t294 * t410 - t411 + t481, qJD(3) * t9 - t462, qJD(3) * t3 + qJD(6) * t122 - t331 - t383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t131 - t482, 0, 0, 0, -qJD(3) * t52 - t470; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t347, -t520, t369, -t293 * t398, t402 / 0.2e1, t314, t315, t323, t455, t324, -t302, -t325 + t410, -t326 - t409, t483, -qJD(6) * t162 - t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), t286, 0, qJD(5), 0, t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t267, -t227, 0, -t267, 0, -t227; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t214, t213, 0, t320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t127, -t172, -t140, qJD(3) * t44 + t272 + t475, t127, -t140, t172, qJD(3) * t37 + t272 - t377 + t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t142, t369, -t193, t310, t142, -t193, -t369, t427 + (-qJD(3) * t200 - qJD(6)) * t293; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t267, t227, 0, t267, 0, t227; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t174, t173, -t406, -qJD(3) * t24 - qJD(4) * t122 + t262 - t479; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t414, t279, -t404, qJD(4) * t162 - t303 + t412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t214, -t213, 0, -t320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t53;
