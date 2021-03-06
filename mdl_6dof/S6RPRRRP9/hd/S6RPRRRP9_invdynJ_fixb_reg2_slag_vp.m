% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RPRRRP9
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:29
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RPRRRP9_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP9_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP9_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP9_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP9_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRRP9_invdynJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:28:39
% EndTime: 2019-03-09 06:28:52
% DurationCPUTime: 7.17s
% Computational Cost: add. (9944->643), mult. (19850->774), div. (0->0), fcn. (13106->10), ass. (0->316)
t248 = sin(qJ(3));
t251 = cos(qJ(3));
t292 = pkin(3) * t251 + pkin(8) * t248;
t185 = t292 * qJD(1);
t254 = -pkin(1) - pkin(7);
t212 = qJD(1) * t254 + qJD(2);
t247 = sin(qJ(4));
t250 = cos(qJ(4));
t370 = t250 * t251;
t121 = t247 * t185 + t212 * t370;
t354 = qJD(1) * t248;
t321 = t247 * t354;
t253 = -pkin(9) - pkin(8);
t323 = qJD(4) * t253;
t454 = -pkin(9) * t321 + t247 * t323 - t121;
t378 = t247 * t251;
t120 = t250 * t185 - t212 * t378;
t375 = t248 * t250;
t335 = pkin(9) * t375;
t453 = t250 * t323 - (pkin(4) * t251 + t335) * qJD(1) - t120;
t353 = qJD(1) * t251;
t314 = t247 * t353;
t349 = qJD(3) * t250;
t176 = -t314 + t349;
t351 = qJD(3) * t247;
t177 = t250 * t353 + t351;
t246 = sin(qJ(5));
t423 = cos(qJ(5));
t109 = -t423 * t176 + t177 * t246;
t106 = t109 ^ 2;
t276 = t246 * t176 + t177 * t423;
t425 = t276 ^ 2;
t452 = -t106 + t425;
t344 = qJD(5) * t246;
t451 = pkin(4) * t344;
t450 = pkin(4) * t423;
t219 = qJD(4) + t354;
t210 = qJD(5) + t219;
t391 = t109 * t210;
t345 = qJD(4) * t251;
t270 = t247 * t345 + t248 * t349;
t336 = t251 * qJDD(1);
t442 = qJD(3) * qJD(4) + t336;
t102 = qJD(1) * t270 - t247 * qJDD(3) - t442 * t250;
t317 = t250 * t345;
t326 = qJD(1) * t317 + t442 * t247;
t277 = t250 * qJDD(3) - t326;
t340 = qJD(1) * qJD(3);
t310 = t248 * t340;
t264 = t247 * t310 + t277;
t311 = t423 * qJD(5);
t42 = t423 * t102 - t176 * t311 + t177 * t344 - t246 * t264;
t449 = -t42 + t391;
t448 = t109 * qJ(6);
t447 = t109 * t276;
t322 = t423 * t250;
t380 = t246 * t247;
t433 = qJD(4) + qJD(5);
t435 = t423 * qJD(4) + t311;
t364 = t246 * t321 - t250 * t435 - t322 * t354 + t380 * t433;
t180 = t246 * t250 + t247 * t423;
t119 = t433 * t180;
t153 = t180 * qJD(1);
t363 = t248 * t153 + t119;
t388 = t276 * t210;
t43 = qJD(5) * t276 - t246 * t102 - t423 * t264;
t446 = -t43 + t388;
t350 = qJD(3) * t248;
t394 = qJDD(3) * pkin(3);
t301 = t212 * t350 - t394;
t207 = qJDD(1) * t254 + qJDD(2);
t368 = t251 * t207;
t124 = t301 - t368;
t413 = g(3) * t248;
t252 = cos(qJ(1));
t239 = g(2) * t252;
t249 = sin(qJ(1));
t240 = g(1) * t249;
t436 = t240 - t239;
t266 = -t436 * t251 - t124 + t413;
t445 = qJD(4) * pkin(8) * t219 - t266;
t320 = t247 * t350;
t444 = t317 - t320;
t367 = t251 * t252;
t443 = g(2) * t367 + t413;
t403 = qJD(3) * pkin(3);
t165 = -t212 * t251 - t403;
t123 = -pkin(4) * t176 + t165;
t245 = qJ(4) + qJ(5);
t233 = sin(t245);
t234 = cos(t245);
t376 = t248 * t249;
t137 = t233 * t252 + t234 * t376;
t374 = t248 * t252;
t139 = -t233 * t249 + t234 * t374;
t412 = g(3) * t251;
t309 = t251 * t340;
t337 = t248 * qJDD(1);
t173 = qJDD(4) + t309 + t337;
t174 = qJD(3) * t292 + qJD(2);
t291 = pkin(3) * t248 - pkin(8) * t251;
t193 = qJ(2) + t291;
t107 = qJD(1) * t174 + qJDD(1) * t193;
t104 = t250 * t107;
t348 = qJD(3) * t251;
t125 = qJDD(3) * pkin(8) + t207 * t248 + t212 * t348;
t154 = t193 * qJD(1);
t190 = t248 * t212;
t164 = qJD(3) * pkin(8) + t190;
t99 = t154 * t247 + t164 * t250;
t48 = -qJD(4) * t99 - t125 * t247 + t104;
t24 = pkin(4) * t173 + pkin(9) * t102 + t48;
t346 = qJD(4) * t250;
t347 = qJD(4) * t247;
t47 = t247 * t107 + t250 * t125 + t154 * t346 - t164 * t347;
t32 = pkin(9) * t264 + t47;
t98 = t250 * t154 - t164 * t247;
t81 = -pkin(9) * t177 + t98;
t72 = pkin(4) * t219 + t81;
t82 = pkin(9) * t176 + t99;
t6 = t246 * t24 + t72 * t311 + t423 * t32 - t82 * t344;
t267 = g(1) * t137 - g(2) * t139 + t234 * t412 - t6;
t441 = t109 * t123 + t267;
t201 = t253 * t247;
t202 = t253 * t250;
t407 = t201 * t311 + t202 * t344 + t453 * t246 + t423 * t454;
t127 = t246 * t201 - t423 * t202;
t406 = -qJD(5) * t127 - t246 * t454 + t453 * t423;
t440 = -t219 * t98 + t47;
t439 = qJ(6) * t276;
t243 = t248 ^ 2;
t244 = t251 ^ 2;
t356 = t243 + t244;
t302 = t356 * t207;
t172 = t250 * t193;
t308 = -t247 * t254 + pkin(4);
t105 = -pkin(9) * t370 + t248 * t308 + t172;
t373 = t248 * t254;
t209 = t250 * t373;
t130 = t247 * t193 + t209;
t122 = -pkin(9) * t378 + t130;
t62 = t246 * t105 + t423 * t122;
t293 = -t190 + (t321 + t347) * pkin(4);
t167 = qJDD(5) + t173;
t297 = pkin(4) * t311;
t421 = pkin(4) * t246;
t437 = -t167 * t421 - t210 * t297;
t369 = t250 * t252;
t155 = -t247 * t376 + t369;
t372 = t249 * t250;
t157 = t247 * t374 + t372;
t434 = -g(1) * t155 - g(2) * t157;
t149 = t167 * pkin(5);
t399 = t42 * qJ(6);
t432 = -t276 * qJD(6) + t149 + t399;
t136 = -t233 * t376 + t234 * t252;
t381 = t234 * t249;
t138 = t233 * t374 + t381;
t431 = -g(1) * t136 - g(2) * t138 + t233 * t412;
t305 = t423 * t24 - t246 * t32;
t78 = t423 * t82;
t40 = t246 * t72 + t78;
t7 = -qJD(5) * t40 + t305;
t258 = t7 + t431;
t430 = -t123 * t276 + t258;
t298 = qJD(4) * t248 + qJD(1);
t319 = t250 * t348;
t429 = t247 * t298 - t319;
t315 = t247 * t348;
t428 = t250 * t298 + t315;
t427 = t248 * t433;
t304 = -pkin(5) * t109 - qJD(6);
t65 = t123 - t304;
t426 = -t65 * t276 + t431;
t424 = 0.2e1 * qJ(2);
t422 = pkin(4) * t177;
t420 = pkin(4) * t247;
t419 = pkin(4) * t250;
t418 = pkin(8) * t173;
t76 = t246 * t82;
t39 = t423 * t72 - t76;
t29 = t39 - t439;
t23 = pkin(5) * t210 + t29;
t411 = -t29 + t23;
t410 = -t109 * t297 - t43 * t421;
t275 = t322 - t380;
t409 = -t363 * qJ(6) + qJD(6) * t275 + t407;
t408 = -pkin(5) * t353 + t364 * qJ(6) - t180 * qJD(6) + t406;
t46 = t423 * t81 - t76;
t405 = t363 * pkin(5) + t293;
t404 = qJ(6) * t43;
t401 = t219 * t99;
t400 = t250 * t98;
t398 = t180 * t348 + (qJD(1) + t427) * t275;
t397 = t180 * t427 - t275 * t348 + t153;
t396 = pkin(1) * qJDD(1);
t256 = qJD(1) ^ 2;
t395 = qJ(2) * t256;
t393 = t102 * t247;
t387 = t173 * t250;
t386 = t176 * t219;
t385 = t176 * t247;
t384 = t177 * t176;
t383 = t177 * t250;
t382 = t219 * t247;
t379 = t247 * t173;
t377 = t247 * t252;
t371 = t249 * t251;
t366 = t251 * t253;
t255 = qJD(3) ^ 2;
t365 = t254 * t255;
t362 = t443 * t234;
t361 = g(1) * t367 + g(2) * t371;
t330 = 0.2e1 * qJD(1) * qJD(2);
t360 = (qJDD(1) * qJ(2) + t330) * qJ(2);
t359 = t252 * pkin(1) + t249 * qJ(2);
t357 = t243 - t244;
t355 = -t255 - t256;
t352 = qJD(3) * t177;
t343 = qJD(6) * t109;
t341 = t165 * qJD(4);
t338 = qJDD(3) * t248;
t334 = g(1) * t381;
t329 = t246 * t378;
t328 = t247 * t373;
t327 = t251 * t256 * t248;
t324 = t252 * pkin(7) + t359;
t229 = pkin(3) + t419;
t316 = t210 * t353;
t192 = pkin(5) * t234 + t419;
t306 = -g(2) * t374 + t412;
t45 = -t246 * t81 - t78;
t61 = t423 * t105 - t122 * t246;
t126 = t423 * t201 + t202 * t246;
t175 = pkin(4) * t378 - t251 * t254;
t300 = t356 * qJDD(1);
t299 = qJDD(2) - t396;
t296 = g(2) * t324;
t295 = t423 * t350;
t294 = t248 * t309;
t290 = g(1) * t138 - g(2) * t136;
t289 = -g(1) * t139 - g(2) * t137;
t288 = g(1) * t252 + g(2) * t249;
t286 = -t436 - t395;
t285 = -t247 * t99 - t400;
t284 = t247 * t98 - t250 * t99;
t184 = pkin(3) + t192;
t241 = -qJ(6) + t253;
t282 = t184 * t248 + t241 * t251;
t280 = t229 * t248 + t366;
t279 = qJDD(1) * t424 + t330;
t278 = -t207 + t395 + t240;
t274 = t219 * t346 + t379;
t273 = -t219 * t347 + t387;
t148 = t250 * t174;
t59 = t148 + (-t209 + (pkin(9) * t251 - t193) * t247) * qJD(4) + (t251 * t308 + t335) * qJD(3);
t79 = -qJD(4) * t328 + t247 * t174 + t193 * t346 + t254 * t319;
t63 = -pkin(9) * t444 + t79;
t18 = t105 * t311 - t122 * t344 + t246 * t59 + t423 * t63;
t128 = t444 * pkin(4) + t254 * t350;
t272 = -g(1) * t376 - t306;
t271 = qJDD(3) * t254 + t340 * t424;
t268 = (g(1) * t371 - t443) * t233;
t265 = t279 - t288;
t263 = t267 + t404;
t19 = -qJD(5) * t62 - t246 * t63 + t423 * t59;
t261 = qJD(4) * t285 - t48 * t247 + t47 * t250;
t260 = t264 * t250;
t259 = -pkin(4) * t264 + t301;
t257 = t43 * pkin(5) + qJDD(6) + t259;
t236 = t252 * qJ(2);
t232 = qJDD(3) * t251;
t228 = pkin(5) + t450;
t191 = pkin(5) * t233 + t420;
t158 = -t247 * t249 + t248 * t369;
t156 = t248 * t372 + t377;
t145 = t251 * t322 - t329;
t144 = t275 * t248;
t143 = t180 * t251;
t142 = t180 * t248;
t134 = -pkin(5) * t275 - t229;
t129 = t172 - t328;
t116 = t167 * t248 + t210 * t348;
t115 = pkin(5) * t143 + t175;
t90 = qJ(6) * t275 + t127;
t89 = -qJ(6) * t180 + t126;
t83 = pkin(5) * t276 + t422;
t80 = -qJD(4) * t130 - t254 * t315 + t148;
t71 = -qJD(5) * t329 - t270 * t246 - t247 * t295 + t370 * t435;
t69 = t119 * t251 - t246 * t320 + t250 * t295;
t64 = t259 - t368;
t56 = pkin(5) * t71 + t128;
t53 = -qJ(6) * t143 + t62;
t52 = pkin(5) * t248 - qJ(6) * t145 + t61;
t36 = t109 * t353 + t167 * t275 - t210 * t363;
t35 = t167 * t180 - t210 * t364 - t276 * t353;
t34 = t46 - t439;
t33 = t45 + t448;
t30 = t40 - t448;
t20 = t257 - t368;
t17 = t109 * t71 + t143 * t43;
t16 = -t145 * t42 - t276 * t69;
t15 = t109 * t363 - t275 * t43;
t14 = -t180 * t42 - t276 * t364;
t13 = -t109 * t348 - t143 * t167 - t210 * t71 - t248 * t43;
t12 = t145 * t167 - t210 * t69 - t248 * t42 + t276 * t348;
t11 = t109 * t350 - t142 * t167 - t210 * t398 - t251 * t43;
t10 = -t144 * t167 + t210 * t397 + t251 * t42 + t276 * t350;
t9 = -qJ(6) * t71 - qJD(6) * t143 + t18;
t8 = pkin(5) * t348 + t69 * qJ(6) - t145 * qJD(6) + t19;
t5 = t109 * t69 + t143 * t42 - t145 * t43 - t276 * t71;
t4 = t109 * t364 - t180 * t43 - t275 * t42 - t276 * t363;
t3 = t109 * t397 - t142 * t42 - t144 * t43 + t276 * t398;
t2 = -t343 + t6 - t404;
t1 = t7 + t432;
t21 = [0, 0, 0, 0, 0, qJDD(1), t436, t288, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, qJDD(2) - t436 - 0.2e1 * t396, t265, -t299 * pkin(1) - g(1) * (-pkin(1) * t249 + t236) - g(2) * t359 + t360, qJDD(1) * t244 - 0.2e1 * t294, -0.2e1 * t248 * t336 + 0.2e1 * t340 * t357, -t248 * t255 + t232, qJDD(1) * t243 + 0.2e1 * t294, -t251 * t255 - t338, 0, t271 * t251 + (t265 - t365) * t248, -t271 * t248 + (t279 - t365) * t251 - t361, -t254 * t300 - t302 + t436, -g(1) * (t249 * t254 + t236) - t296 + t254 * t302 + t360, -t102 * t370 - t177 * t270 (-t176 * t250 + t177 * t247) * t350 + (t260 + t393 + (-t383 - t385) * qJD(4)) * t251 (-t219 * t349 - t102) * t248 + (t273 + t352) * t251, -t176 * t444 - t264 * t378 ((t219 + t354) * t351 + t277) * t248 + (qJD(3) * t176 - t274) * t251, t173 * t248 + t219 * t348, -g(1) * t158 - g(2) * t156 + t129 * t173 + t80 * t219 + (t48 + (-t165 * t247 - t176 * t254) * qJD(3)) * t248 + (t98 * qJD(3) + t124 * t247 + t250 * t341 + t254 * t264) * t251, g(1) * t157 - g(2) * t155 - t130 * t173 - t219 * t79 + (-t47 + (-t165 * t250 + t177 * t254) * qJD(3)) * t248 + (-qJD(3) * t99 + t102 * t254 + t124 * t250 - t247 * t341) * t251, t79 * t176 + t130 * t277 - t80 * t177 + t129 * t102 + (t400 + (qJD(1) * t130 + t99) * t247) * t350 + (qJD(4) * t284 - t47 * t247 - t48 * t250) * t251 + t361, t47 * t130 + t99 * t79 + t48 * t129 + t98 * t80 - g(1) * (pkin(3) * t374 - pkin(8) * t367 + t236) - t296 + (-t124 * t251 + t165 * t350) * t254 + (-g(1) * t254 - g(2) * t291) * t249, t16, t5, t12, t17, t13, t116, t109 * t128 + t123 * t71 + t143 * t64 + t167 * t61 + t175 * t43 + t19 * t210 + t248 * t7 + t348 * t39 + t289, -t123 * t69 + t128 * t276 + t145 * t64 - t167 * t62 - t175 * t42 - t18 * t210 - t248 * t6 - t348 * t40 + t290, -t109 * t18 - t143 * t6 - t145 * t7 - t19 * t276 + t39 * t69 - t40 * t71 + t42 * t61 - t43 * t62 + t361, t6 * t62 + t40 * t18 + t7 * t61 + t39 * t19 + t64 * t175 + t123 * t128 - g(1) * (t229 * t374 + t252 * t366 + t236) - g(2) * (pkin(4) * t377 + t324) + (-g(1) * (-t420 + t254) - g(2) * t280) * t249, t16, t5, t12, t17, t13, t116, t1 * t248 + t109 * t56 + t115 * t43 + t143 * t20 + t167 * t52 + t210 * t8 + t23 * t348 + t65 * t71 + t289, -t115 * t42 + t145 * t20 - t167 * t53 - t2 * t248 - t210 * t9 + t276 * t56 - t30 * t348 - t65 * t69 + t290, -t1 * t145 - t109 * t9 - t143 * t2 + t23 * t69 - t276 * t8 - t30 * t71 + t42 * t52 - t43 * t53 + t361, t2 * t53 + t30 * t9 + t1 * t52 + t23 * t8 + t20 * t115 + t65 * t56 - g(1) * (t184 * t374 + t241 * t367 + t236) - g(2) * (t191 * t252 + t324) + (-g(1) * (-t191 + t254) - g(2) * t282) * t249; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t256, t286 + t299, 0, 0, 0, 0, 0, 0, t248 * t355 + t232, t251 * t355 - t338, -t300, t302 + t286, 0, 0, 0, 0, 0, 0, t251 * t277 + (-t379 + (-t176 + t314) * qJD(3)) * t248 - t428 * t219, t102 * t251 + (t352 - t387) * t248 + t429 * t219 (t277 * t250 + (t250 * t310 - t102) * t247) * t248 + t428 * t177 - t429 * t176, t285 * qJD(1) + (-qJD(3) * t284 - t124) * t251 + (qJD(3) * t165 + t261) * t248 - t436, 0, 0, 0, 0, 0, 0, t11, t10, t3, t123 * t350 - t142 * t7 + t144 * t6 - t251 * t64 - t39 * t398 - t397 * t40 - t436, 0, 0, 0, 0, 0, 0, t11, t10, t3, -t1 * t142 + t144 * t2 - t20 * t251 - t23 * t398 - t30 * t397 + t350 * t65 - t436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t327, -t357 * t256, t336, -t327, -t337, qJDD(3), t413 + (-t278 + t239) * t251, t248 * t278 + t306, 0, 0, t219 * t383 - t393 (-t102 + t386) * t250 + (-t177 * qJD(4) + (-t177 + t351) * t354 + t277) * t247 (-t177 * t251 + t219 * t375) * qJD(1) + t274, -t176 * t382 + t260 (-t176 * t251 - t248 * t382) * qJD(1) + t273, -t219 * t353, -pkin(3) * t326 - t120 * t219 - t98 * t353 + t176 * t190 + (-t418 + t341 + (t165 + t403) * t354) * t247 + (t394 - t445) * t250, t99 * t353 - t177 * t190 + pkin(3) * t102 + t121 * t219 + (t165 * t219 - t418) * t250 + t445 * t247, t120 * t177 - t121 * t176 + t440 * t250 + (-t48 - t401) * t247 + (-t393 + t260 + (t383 - t385) * qJD(4)) * pkin(8) + t272, -t165 * t190 - t98 * t120 - t99 * t121 + t266 * pkin(3) + (-t248 * t436 + t261 - t412) * pkin(8), t14, t4, t35, t15, t36, -t316, t126 * t167 - t275 * t64 - t229 * t43 + (-qJD(1) * t39 - t334) * t251 + t406 * t210 + t363 * t123 + t293 * t109 + t362, -t123 * t364 - t127 * t167 + t180 * t64 - t210 * t407 + t229 * t42 + t276 * t293 + t353 * t40 + t268, -t109 * t407 + t126 * t42 - t127 * t43 - t180 * t7 + t275 * t6 - t276 * t406 - t363 * t40 + t364 * t39 + t272, g(3) * t280 + t293 * t123 + t7 * t126 + t6 * t127 - t64 * t229 + t406 * t39 + t407 * t40 - t436 * (t229 * t251 - t248 * t253) t14, t4, t35, t15, t36, -t316, t134 * t43 + t167 * t89 - t275 * t20 + t363 * t65 + (-qJD(1) * t23 - t334) * t251 + t408 * t210 + t405 * t109 + t362, -t134 * t42 - t167 * t90 + t180 * t20 - t210 * t409 + t276 * t405 + t30 * t353 - t364 * t65 + t268, -t1 * t180 - t109 * t409 + t2 * t275 + t23 * t364 - t276 * t408 - t30 * t363 + t42 * t89 - t43 * t90 + t272, g(3) * t282 + t1 * t89 + t20 * t134 + t2 * t90 + t408 * t23 + t409 * t30 + t405 * t65 - t436 * (t184 * t251 - t241 * t248); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t384, -t176 ^ 2 + t177 ^ 2, -t102 - t386, t384, t177 * t219 + t264, t173, -t164 * t346 - t165 * t177 + t401 + t104 + (-qJD(4) * t154 - t125 + t412) * t247 + t434, g(1) * t156 - g(2) * t158 + g(3) * t370 - t165 * t176 - t440, 0, 0, t447, t452, t449, -t447, t446, t167, -t45 * t210 + (-t109 * t177 + t167 * t423 - t210 * t344) * pkin(4) + t430, t210 * t46 - t276 * t422 + t437 + t441, t42 * t450 + t410 + (t40 + t45 + t451) * t276 + (t46 - t39) * t109, -t39 * t45 - t40 * t46 + (t6 * t246 + t7 * t423 - t123 * t177 + g(3) * t378 + (-t39 * t246 + t40 * t423) * qJD(5) + t434) * pkin(4), t447, t452, t449, -t447, t446, t167, -t83 * t109 + t228 * t167 - t33 * t210 + (-t78 + (-pkin(4) * t210 - t72) * t246) * qJD(5) + t305 + t426 + t432, t109 * t65 + t210 * t34 - t276 * t83 + t263 + t343 + t437, t228 * t42 + t410 + (t30 + t33 + t451) * t276 + (t34 - t23) * t109, t1 * t228 - t30 * t34 - t23 * t33 - t65 * t83 - g(1) * (-t191 * t376 + t192 * t252) - g(2) * (t191 * t374 + t192 * t249) + t191 * t412 + (t2 * t246 + (-t23 * t246 + t30 * t423) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t447, t452, t449, -t447, t446, t167, t40 * t210 + t430, t210 * t39 + t441, 0, 0, t447, t452, t449, -t447, t446, t167, t399 + t30 * t210 + 0.2e1 * t149 + (t304 - t65) * t276 + t258, -pkin(5) * t425 + t210 * t29 + (qJD(6) + t65) * t109 + t263, pkin(5) * t42 - t109 * t411, t411 * t30 + (t1 + t426) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43 + t388, -t42 - t391, -t106 - t425, t30 * t109 + t23 * t276 - t413 + (-t207 + t436) * t251 + t257;];
tau_reg  = t21;
