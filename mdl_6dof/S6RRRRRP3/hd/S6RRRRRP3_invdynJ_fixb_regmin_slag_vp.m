% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRRP3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% tau_reg [6x33]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRP3_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP3_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP3_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP3_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP3_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP3_invdynJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:09:35
% EndTime: 2019-03-10 01:09:54
% DurationCPUTime: 8.31s
% Computational Cost: add. (12345->547), mult. (27109->698), div. (0->0), fcn. (20230->14), ass. (0->307)
t300 = cos(qJ(2));
t455 = pkin(8) + pkin(7);
t253 = t455 * t300;
t236 = qJD(1) * t253;
t295 = sin(qJ(3));
t211 = t295 * t236;
t296 = sin(qJ(2));
t251 = t455 * t296;
t234 = qJD(1) * t251;
t453 = cos(qJ(3));
t154 = -t234 * t453 - t211;
t368 = qJD(3) * t453;
t487 = -pkin(2) * t368 + t154;
t369 = qJD(1) * t453;
t392 = qJD(1) * t296;
t205 = t295 * t392 - t300 * t369;
t408 = t295 * t300;
t207 = -qJD(1) * t408 - t296 * t369;
t145 = -pkin(3) * t207 + pkin(9) * t205;
t131 = pkin(2) * t392 + t145;
t294 = sin(qJ(4));
t299 = cos(qJ(4));
t486 = -t299 * t131 + t294 * t487;
t485 = t294 * t131 + t299 * t487;
t273 = pkin(2) * t295 + pkin(9);
t442 = -pkin(10) - t273;
t360 = qJD(4) * t442;
t423 = t205 * t294;
t382 = pkin(10) * t423;
t481 = -t294 * t360 + t382 + t485;
t284 = t299 * pkin(10);
t351 = -t207 * pkin(4) + t205 * t284;
t484 = t299 * t360 - t351 + t486;
t454 = -pkin(9) - pkin(10);
t376 = qJD(4) * t454;
t432 = qJD(2) * pkin(2);
t215 = -t234 + t432;
t149 = t215 * t453 - t211;
t401 = t294 * t145 + t299 * t149;
t480 = -t294 * t376 + t382 + t401;
t138 = t299 * t145;
t483 = t149 * t294 + t299 * t376 - t138 - t351;
t288 = qJD(2) + qJD(3);
t169 = t294 * t207 + t288 * t299;
t170 = -t207 * t299 + t288 * t294;
t293 = sin(qJ(5));
t298 = cos(qJ(5));
t103 = -t298 * t169 + t170 * t293;
t101 = t103 ^ 2;
t340 = t169 * t293 + t298 * t170;
t456 = t340 ^ 2;
t482 = -t101 + t456;
t413 = t293 * t299;
t227 = t294 * t298 + t413;
t383 = qJD(4) + qJD(5);
t157 = t383 * t227;
t476 = t227 * t205 + t157;
t406 = t298 * t299;
t414 = t293 * t294;
t225 = -t406 + t414;
t387 = qJD(5) * t298;
t389 = qJD(4) * t299;
t402 = t225 * t205 - t298 * t389 - t299 * t387 + t383 * t414;
t292 = qJ(2) + qJ(3);
t283 = cos(t292);
t447 = g(3) * t283;
t386 = qJD(1) * qJD(2);
t366 = t300 * t386;
t385 = t296 * qJDD(1);
t163 = qJDD(2) * pkin(2) + t455 * (-t366 - t385);
t367 = t296 * t386;
t384 = t300 * qJDD(1);
t168 = t455 * (-t367 + t384);
t391 = qJD(3) * t295;
t352 = -t453 * t163 + t295 * t168 + t215 * t391 + t236 * t368;
t286 = qJDD(2) + qJDD(3);
t445 = t286 * pkin(3);
t75 = t352 - t445;
t479 = t75 + t447;
t478 = qJ(6) * t103;
t477 = t340 * t103;
t281 = sin(t292);
t301 = cos(qJ(1));
t417 = t281 * t301;
t297 = sin(qJ(1));
t418 = t281 * t297;
t475 = g(1) * t417 + g(2) * t418;
t228 = t296 * t453 + t408;
t374 = t453 * t300;
t329 = -t295 * t296 + t374;
t158 = t288 * t329;
t411 = t294 * t158;
t474 = t228 * t389 + t411;
t459 = -t447 + t475;
t200 = qJD(4) + t205;
t187 = qJD(5) + t200;
t306 = t158 * qJD(1);
t305 = t228 * qJDD(1) + t306;
t390 = qJD(4) * t294;
t379 = -t207 * t389 + t288 * t390 + t294 * t305;
t335 = t299 * t286 - t379;
t388 = qJD(5) * t293;
t89 = t207 * t390 + t294 * t286 + t288 * t389 + t299 * t305;
t36 = -t169 * t387 + t170 * t388 - t293 * t335 - t298 * t89;
t473 = t103 * t187 - t36;
t291 = qJ(4) + qJ(5);
t280 = sin(t291);
t282 = cos(t291);
t416 = t283 * t297;
t177 = t280 * t301 - t282 * t416;
t415 = t283 * t301;
t179 = t280 * t297 + t282 * t415;
t269 = g(3) * t281;
t159 = t288 * t228;
t344 = -qJDD(1) * t374 + t295 * t385;
t115 = qJD(1) * t159 + t344;
t114 = qJDD(4) + t115;
t268 = pkin(2) * t367;
t444 = t300 * pkin(2);
t276 = pkin(1) + t444;
t465 = -pkin(9) * t228 - t276;
t57 = t115 * pkin(3) - pkin(9) * t306 + qJDD(1) * t465 + t268;
t55 = t299 * t57;
t310 = t295 * t163 + t168 * t453 + t215 * t368 - t236 * t391;
t74 = t286 * pkin(9) + t310;
t249 = t276 * qJD(1);
t129 = t205 * pkin(3) + t207 * pkin(9) - t249;
t214 = t453 * t236;
t150 = t295 * t215 + t214;
t135 = pkin(9) * t288 + t150;
t91 = t129 * t294 + t135 * t299;
t10 = t114 * pkin(4) - t89 * pkin(10) - qJD(4) * t91 - t294 * t74 + t55;
t326 = t129 * t389 - t135 * t390 + t294 * t57 + t299 * t74;
t14 = pkin(10) * t335 + t326;
t90 = t299 * t129 - t135 * t294;
t63 = -pkin(10) * t170 + t90;
t52 = pkin(4) * t200 + t63;
t64 = pkin(10) * t169 + t91;
t365 = -t293 * t10 - t298 * t14 - t52 * t387 + t64 * t388;
t134 = -t288 * pkin(3) - t149;
t99 = -t169 * pkin(4) + t134;
t472 = g(1) * t179 - g(2) * t177 + t103 * t99 + t282 * t269 + t365;
t53 = t103 * pkin(5) + qJD(6) + t99;
t471 = t340 * t53;
t470 = t484 * t298;
t469 = t483 * t298;
t468 = qJ(6) * t340;
t467 = -qJ(6) * t476 - t225 * qJD(6);
t153 = -t295 * t234 + t214;
t350 = pkin(2) * t391 - t153;
t466 = (t390 + t423) * pkin(4);
t218 = t442 * t294;
t219 = t273 * t299 + t284;
t397 = t293 * t218 + t298 * t219;
t285 = t299 * pkin(4);
t244 = pkin(5) * t282 + t285;
t233 = pkin(3) + t244;
t287 = -qJ(6) + t454;
t356 = t283 * t233 - t281 * t287;
t250 = t454 * t294;
t252 = pkin(9) * t299 + t284;
t396 = t293 * t250 + t298 * t252;
t464 = -t250 * t387 + t252 * t388 - t293 * t483 + t480 * t298;
t463 = -t218 * t387 + t219 * t388 - t484 * t293 + t481 * t298;
t462 = t207 * pkin(5) + qJ(6) * t402 - t227 * qJD(6);
t461 = -t453 * t251 - t295 * t253;
t348 = g(1) * t301 + g(2) * t297;
t176 = t280 * t416 + t282 * t301;
t178 = -t280 * t415 + t282 * t297;
t460 = -g(1) * t178 + g(2) * t176 + t280 * t269;
t60 = t298 * t64;
t31 = t293 * t52 + t60;
t370 = t298 * t10 - t293 * t14;
t315 = -qJD(5) * t31 + t370;
t458 = -t99 * t340 + t315 + t460;
t37 = qJD(5) * t340 + t293 * t89 - t298 * t335;
t457 = t187 * t340 - t37;
t446 = t225 * pkin(5);
t443 = pkin(3) + t285;
t58 = t293 * t64;
t30 = t298 * t52 - t58;
t19 = t30 - t468;
t17 = pkin(5) * t187 + t19;
t441 = -t19 + t17;
t440 = -t463 + t467;
t439 = -t397 * qJD(5) + t293 * t481 + t462 + t470;
t438 = t298 * t63 - t58;
t437 = -t464 + t467;
t436 = -qJD(5) * t396 + t293 * t480 + t462 + t469;
t148 = -pkin(3) * t329 + t465;
t142 = t299 * t148;
t172 = -t295 * t251 + t253 * t453;
t420 = t228 * t299;
t82 = -pkin(4) * t329 - pkin(10) * t420 - t172 * t294 + t142;
t164 = t299 * t172;
t398 = t294 * t148 + t164;
t421 = t228 * t294;
t93 = -pkin(10) * t421 + t398;
t433 = t293 * t82 + t298 * t93;
t431 = t89 * t294;
t430 = qJ(6) * t227;
t429 = t134 * t205;
t428 = t158 * t299;
t427 = t169 * t200;
t426 = t170 * t200;
t425 = t187 * t207;
t424 = t200 * t207;
t422 = t207 * t205;
t412 = t294 * t114;
t410 = t294 * t297;
t409 = t294 * t301;
t407 = t297 * t299;
t405 = t299 * t114;
t404 = t299 * t301;
t395 = t466 + t350;
t243 = pkin(4) * t294 + pkin(5) * t280;
t394 = t243 + t455;
t289 = t296 ^ 2;
t393 = -t300 ^ 2 + t289;
t381 = t296 * t432;
t380 = qJD(4) * pkin(9) * t200;
t378 = g(1) * t415 + g(2) * t416 + t269;
t377 = qJD(2) * t455;
t373 = t228 * t390;
t124 = t134 * t389;
t235 = t296 * t377;
t237 = t300 * t377;
t108 = qJD(3) * t461 - t453 * t235 - t295 * t237;
t98 = pkin(3) * t159 - pkin(9) * t158 + t381;
t95 = t299 * t98;
t25 = -pkin(10) * t428 + t159 * pkin(4) - t294 * t108 + t95 + (-t164 + (pkin(10) * t228 - t148) * t294) * qJD(4);
t325 = t299 * t108 + t148 * t389 - t172 * t390 + t294 * t98;
t33 = -pkin(10) * t474 + t325;
t364 = t298 * t25 - t293 * t33;
t363 = -t293 * t63 - t60;
t362 = -t293 * t93 + t298 * t82;
t358 = -qJD(4) * t129 - t74;
t357 = t298 * t218 - t219 * t293;
t355 = t298 * t250 - t252 * t293;
t354 = t200 * t299;
t275 = -pkin(2) * t453 - pkin(3);
t349 = -t150 + t466;
t347 = g(1) * t297 - g(2) * t301;
t346 = -t135 * t389 + t55;
t345 = -pkin(9) * t114 + t429;
t248 = -t285 + t275;
t341 = -t114 * t273 + t429;
t339 = t233 * t281 + t283 * t287;
t337 = -t91 * t207 + t294 * t479 + t124;
t336 = t134 * t390 + t90 * t207 + t299 * t475;
t130 = pkin(4) * t421 - t461;
t334 = pkin(5) * t476 + t466;
t333 = t348 * t281;
t332 = -0.2e1 * pkin(1) * t386 - pkin(7) * qJDD(2);
t331 = t276 + t356;
t330 = t293 * t25 + t298 * t33 + t82 * t387 - t388 * t93;
t327 = -t373 + t428;
t109 = -t295 * t235 + t237 * t453 - t251 * t391 + t253 * t368;
t69 = pkin(4) * t474 + t109;
t303 = qJD(2) ^ 2;
t317 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t303 + t347;
t304 = qJD(1) ^ 2;
t316 = pkin(1) * t304 - pkin(7) * qJDD(1) + t348;
t313 = -t249 * t207 - t352 + t459;
t112 = qJDD(5) + t114;
t2 = t112 * pkin(5) + t36 * qJ(6) - qJD(6) * t340 + t315;
t20 = t31 - t478;
t4 = -qJ(6) * t37 - qJD(6) * t103 - t365;
t312 = t17 * t402 - t2 * t227 - t20 * t476 - t4 * t225 - t378;
t42 = -pkin(4) * t335 + t75;
t311 = t30 * t207 + t42 * t225 + t282 * t459 + t476 * t99;
t309 = -t31 * t207 + t42 * t227 - t402 * t99 + (-t333 + t447) * t280;
t12 = t37 * pkin(5) + qJDD(6) + t42;
t307 = -t249 * t205 - t310 + t378;
t274 = pkin(4) * t298 + pkin(5);
t217 = t225 * qJ(6);
t202 = -qJDD(1) * t276 + t268;
t196 = t283 * t404 + t410;
t195 = -t283 * t409 + t407;
t194 = -t283 * t407 + t409;
t193 = t283 * t410 + t404;
t140 = t225 * t228;
t139 = t227 * t228;
t133 = -t217 + t396;
t132 = t355 - t430;
t119 = -t205 ^ 2 + t207 ^ 2;
t118 = -t217 + t397;
t117 = t357 - t430;
t97 = -t344 + (-qJD(1) * t228 - t207) * t288;
t96 = t205 * t288 + t305;
t47 = t158 * t413 - t293 * t373 - t388 * t421 + (t383 * t420 + t411) * t298;
t46 = t157 * t228 - t158 * t406 + t293 * t411;
t45 = t170 * t207 + t200 * t354 + t412;
t44 = -t200 ^ 2 * t294 + t169 * t207 + t405;
t43 = t170 * t354 + t431;
t39 = -qJ(6) * t139 + t433;
t38 = -pkin(5) * t329 + qJ(6) * t140 + t362;
t35 = -t103 * t207 - t225 * t112 - t187 * t476;
t34 = t227 * t112 - t187 * t402 + t207 * t340;
t22 = t438 - t468;
t21 = t363 + t478;
t18 = (t89 + t427) * t299 + (t335 - t426) * t294;
t11 = -t36 * t227 - t340 * t402;
t7 = t103 * t402 + t36 * t225 - t227 * t37 - t340 * t476;
t6 = -qJ(6) * t47 - qJD(6) * t139 + t330;
t5 = t159 * pkin(5) + t46 * qJ(6) - qJD(5) * t433 + t140 * qJD(6) + t364;
t1 = [qJDD(1), t347, t348, qJDD(1) * t289 + 0.2e1 * t296 * t366, 0.2e1 * t296 * t384 - 0.2e1 * t386 * t393, qJDD(2) * t296 + t300 * t303, qJDD(2) * t300 - t296 * t303, 0, t296 * t332 + t300 * t317, -t296 * t317 + t300 * t332, -t207 * t158 + t228 * t305, -t228 * t115 - t158 * t205 + t207 * t159 + t305 * t329, t158 * t288 + t228 * t286, -t159 * t288 + t286 * t329, 0, -t109 * t288 - t276 * t115 - t249 * t159 - t202 * t329 + t205 * t381 + t283 * t347 + t286 * t461, -g(1) * t418 + g(2) * t417 - t108 * t288 - t249 * t158 - t172 * t286 + t202 * t228 - t207 * t381 - t276 * t305, t170 * t327 + t420 * t89 (t169 * t299 - t170 * t294) * t158 + (t299 * t335 - t431 + (-t169 * t294 - t170 * t299) * qJD(4)) * t228, t170 * t159 + t200 * t327 + t228 * t405 - t329 * t89, t169 * t159 - t200 * t474 - t228 * t412 - t329 * t335, -t114 * t329 + t159 * t200 (-t172 * t389 + t95) * t200 + t142 * t114 - t346 * t329 + t90 * t159 - t109 * t169 + t461 * t335 + t228 * t124 - g(1) * t194 - g(2) * t196 + ((-qJD(4) * t148 - t108) * t200 - t172 * t114 - t358 * t329 + t75 * t228 + t134 * t158) * t294, -g(1) * t193 - g(2) * t195 + t109 * t170 - t114 * t398 + t134 * t327 - t91 * t159 - t200 * t325 + t326 * t329 + t420 * t75 - t461 * t89, t140 * t36 - t340 * t46, t103 * t46 + t139 * t36 + t140 * t37 - t340 * t47, -t112 * t140 + t159 * t340 - t187 * t46 + t329 * t36, -t103 * t159 - t112 * t139 - t187 * t47 + t329 * t37, -t112 * t329 + t159 * t187, t364 * t187 + t362 * t112 - t370 * t329 + t30 * t159 + t69 * t103 + t130 * t37 + t42 * t139 + t99 * t47 - g(1) * t177 - g(2) * t179 + (-t187 * t433 + t31 * t329) * qJD(5), -g(1) * t176 - g(2) * t178 - t112 * t433 - t130 * t36 - t42 * t140 - t31 * t159 - t187 * t330 - t329 * t365 + t340 * t69 - t99 * t46, -t6 * t103 - t4 * t139 + t2 * t140 + t17 * t46 - t20 * t47 + t281 * t347 - t340 * t5 + t38 * t36 - t39 * t37, t4 * t39 + t20 * t6 + t2 * t38 + t17 * t5 + t12 * (t139 * pkin(5) + t130) + t53 * (t47 * pkin(5) + t69) + (-g(1) * t394 - g(2) * t331) * t301 + (g(1) * t331 - g(2) * t394) * t297; 0, 0, 0, -t296 * t304 * t300, t393 * t304, t385, t384, qJDD(2), -g(3) * t300 + t296 * t316, g(3) * t296 + t300 * t316, -t422, t119, t96, t97, t286, t153 * t288 + (-t205 * t392 + t286 * t453 - t288 * t391) * pkin(2) + t313, t154 * t288 + (t207 * t392 - t286 * t295 - t288 * t368) * pkin(2) + t307, t43, t18, t45, t44, t424, t275 * t379 + (-t275 * t286 - t479) * t299 + t341 * t294 - t350 * t169 + (-t273 * t389 + t486) * t200 + t336, t275 * t89 + t341 * t299 - t294 * t333 + t350 * t170 + (t273 * t390 + t485) * t200 + t337, t11, t7, t34, t35, t425, t357 * t112 + t248 * t37 + (-t219 * t387 + (-qJD(5) * t218 + t481) * t293 + t470) * t187 + t395 * t103 + t311, -t397 * t112 + t187 * t463 - t248 * t36 + t395 * t340 + t309, -t103 * t440 + t117 * t36 - t118 * t37 - t340 * t439 + t312, t4 * t118 + t2 * t117 + t12 * (t248 + t446) - g(3) * (t356 + t444) + (t334 + t350) * t53 + t440 * t20 + t439 * t17 + t348 * (pkin(2) * t296 + t339); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t422, t119, t96, t97, t286, t150 * t288 + t313, t149 * t288 + t307, t43, t18, t45, t44, t424, -pkin(3) * t379 - t138 * t200 + t150 * t169 + (t149 * t200 + t345) * t294 + (-t479 - t380 + t445) * t299 + t336, -pkin(3) * t89 + t401 * t200 - t150 * t170 + t345 * t299 + (-t333 + t380) * t294 + t337, t11, t7, t34, t35, t425, t355 * t112 - t443 * t37 + (-t252 * t387 + (-qJD(5) * t250 + t480) * t293 + t469) * t187 + t349 * t103 + t311, -t396 * t112 + t187 * t464 + t349 * t340 + t36 * t443 + t309, -t103 * t437 + t132 * t36 - t133 * t37 - t340 * t436 + t312, t4 * t133 + t2 * t132 + t12 * (-t443 + t446) - g(3) * t356 + (t334 - t150) * t53 + t437 * t20 + t436 * t17 + t348 * t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t170 * t169, -t169 ^ 2 + t170 ^ 2, t89 - t427, t335 + t426, t114, -g(1) * t195 + g(2) * t193 - t134 * t170 + t91 * t200 + (t358 + t269) * t294 + t346, g(1) * t196 - g(2) * t194 - t134 * t169 + t200 * t90 + t269 * t299 - t326, t477, t482, t473, t457, t112, -t363 * t187 + (-t103 * t170 + t112 * t298 - t187 * t388) * pkin(4) + t458, t438 * t187 + (-t112 * t293 - t170 * t340 - t187 * t387) * pkin(4) + t472, t20 * t340 + t22 * t103 - t17 * t103 + t21 * t340 + t274 * t36 + (-t293 * t37 + (-t103 * t298 + t293 * t340) * qJD(5)) * pkin(4), t2 * t274 - t20 * t22 - t17 * t21 - pkin(5) * t471 - g(1) * (-t243 * t415 + t244 * t297) - g(2) * (-t243 * t416 - t244 * t301) + t243 * t269 + (-t53 * t170 + t4 * t293 + (-t17 * t293 + t20 * t298) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t477, t482, t473, t457, t112, t31 * t187 + t458, t187 * t30 + t472, pkin(5) * t36 - t103 * t441, t441 * t20 + (t2 + t460 - t471) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t101 - t456, t20 * t103 + t17 * t340 + t12 - t459;];
tau_reg  = t1;