% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RPRRRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RPRRRP5_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP5_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP5_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP5_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP5_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP5_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:12:33
% EndTime: 2019-03-09 06:12:51
% DurationCPUTime: 10.06s
% Computational Cost: add. (17389->651), mult. (42649->756), div. (0->0), fcn. (33732->14), ass. (0->317)
t249 = cos(qJ(5));
t364 = qJD(5) * t249;
t243 = sin(pkin(10));
t244 = cos(pkin(10));
t427 = sin(qJ(3));
t429 = cos(qJ(3));
t280 = -t243 * t429 - t244 * t427;
t177 = t280 * qJD(1);
t247 = sin(qJ(4));
t342 = t427 * t243;
t281 = -t244 * t429 + t342;
t176 = t281 * qJD(1);
t428 = cos(qJ(4));
t441 = t428 * t176;
t142 = t177 * t247 - t441;
t464 = t142 * t249;
t481 = t364 - t464;
t246 = sin(qJ(5));
t286 = t247 * t176 + t177 * t428;
t358 = qJD(3) + qJD(4);
t128 = t246 * t358 - t249 * t286;
t394 = t128 * t246;
t320 = t249 * t358;
t126 = -t246 * t286 - t320;
t398 = t126 * t249;
t296 = t394 + t398;
t334 = qJD(3) * t427;
t312 = qJD(1) * t334;
t331 = qJDD(1) * t429;
t335 = qJD(3) * t429;
t461 = qJD(1) * t335 + qJDD(1) * t427;
t346 = t243 * t331 + t461 * t244;
t145 = t243 * t312 - t346;
t347 = -t461 * t243 - t244 * t312;
t278 = -t244 * t331 - t347;
t367 = qJD(4) * t247;
t257 = t145 * t428 - t177 * t367 + t247 * t278;
t333 = qJD(4) * t428;
t256 = t176 * t333 + t257;
t357 = qJDD(3) + qJDD(4);
t64 = qJD(5) * t128 - t246 * t256 - t249 * t357;
t409 = -t126 * t364 - t246 * t64;
t365 = qJD(5) * t246;
t63 = -qJD(5) * t320 - t246 * t357 + t249 * t256 - t286 * t365;
t411 = t128 * t365 + t249 * t63;
t476 = t142 * t296 + t409 - t411;
t419 = pkin(7) + qJ(2);
t209 = t419 * t243;
t186 = qJD(1) * t209;
t210 = t419 * t244;
t187 = qJD(1) * t210;
t282 = t186 * t427 - t187 * t429;
t125 = -t176 * pkin(8) - t282;
t122 = t428 * t125;
t343 = t427 * t187;
t148 = -t429 * t186 - t343;
t124 = t177 * pkin(8) + t148;
t123 = qJD(3) * pkin(3) + t124;
t89 = t247 * t123 + t122;
t83 = pkin(9) * t358 + t89;
t228 = t244 * pkin(2) + pkin(1);
t194 = -qJD(1) * t228 + qJD(2);
t150 = pkin(3) * t176 + t194;
t90 = -pkin(4) * t142 + pkin(9) * t286 + t150;
t40 = t246 * t90 + t249 * t83;
t458 = qJD(5) - t142;
t414 = t458 * t40;
t360 = qJD(1) * qJD(2);
t436 = qJDD(1) * t419 + t360;
t159 = t436 * t243;
t160 = t436 * t244;
t308 = -t429 * t159 - t160 * t427;
t106 = qJD(3) * t282 + t308;
t77 = qJDD(3) * pkin(3) + t145 * pkin(8) + t106;
t351 = -t427 * t159 + t429 * t160 - t186 * t335;
t105 = -t187 * t334 + t351;
t80 = -pkin(8) * t278 + t105;
t21 = t123 * t333 - t125 * t367 + t247 * t77 + t428 * t80;
t19 = pkin(9) * t357 + t21;
t404 = qJDD(1) * pkin(1);
t234 = qJDD(2) - t404;
t359 = t244 * qJDD(1);
t327 = t247 * t145 - t428 * t278;
t459 = qJD(4) * t286;
t81 = -t327 - t459;
t29 = -pkin(2) * t359 + pkin(3) * t278 + t81 * pkin(4) + pkin(9) * t256 + t234;
t7 = -t246 * t19 + t249 * t29 - t83 * t364 - t90 * t365;
t480 = t7 + t414;
t32 = qJ(6) * t458 + t40;
t416 = t458 * t32;
t248 = sin(qJ(1));
t250 = cos(qJ(1));
t440 = -g(1) * t248 + g(2) * t250;
t289 = -t234 - t440;
t443 = t142 * t358;
t479 = -t256 - t443;
t79 = qJDD(5) + t81;
t70 = t246 * t79;
t292 = t458 * t481 + t70;
t395 = t128 * t286;
t478 = t292 + t395;
t71 = t249 * t79;
t405 = -t365 * t458 + t71;
t465 = t142 * t246;
t354 = -t458 * t465 - t405;
t401 = t126 * t286;
t291 = -t354 - t401;
t390 = t142 ^ 2;
t391 = t286 ^ 2;
t475 = -t390 + t391;
t39 = -t246 * t83 + t249 * t90;
t371 = qJD(6) - t39;
t31 = -pkin(5) * t458 + t371;
t242 = pkin(10) + qJ(3);
t237 = qJ(4) + t242;
t226 = sin(t237);
t221 = g(3) * t226;
t227 = cos(t237);
t378 = t227 * t250;
t379 = t227 * t248;
t348 = g(1) * t378 + g(2) * t379 + t221;
t417 = qJ(6) * t79;
t6 = t249 * t19 + t246 * t29 + t90 * t364 - t365 * t83;
t2 = qJD(6) * t458 + t417 + t6;
t431 = pkin(5) * t79;
t4 = qJDD(6) - t7 - t431;
t449 = t2 * t249 + t4 * t246;
t474 = t31 * t481 - t348 + t449;
t62 = t64 * t249;
t473 = -t62 + (t365 - t465) * t126;
t60 = t63 * t246;
t472 = t128 * t481 - t60;
t471 = pkin(5) * t286;
t470 = t142 * t39;
t121 = t247 * t125;
t88 = t123 * t428 - t121;
t82 = -pkin(4) * t358 - t88;
t47 = t126 * pkin(5) - t128 * qJ(6) + t82;
t469 = t142 * t47;
t468 = t142 * t82;
t467 = qJ(6) * t286;
t466 = t458 * t286;
t385 = t142 * t286;
t380 = t226 * t250;
t381 = t226 * t248;
t462 = g(1) * t380 + g(2) * t381;
t363 = t286 * qJD(3);
t460 = -t363 + t327;
t305 = t249 * pkin(5) + t246 * qJ(6);
t422 = g(3) * t246;
t349 = -t227 * t422 + t462 * t246;
t324 = t123 * t367 + t125 * t333 + t247 * t80 - t428 * t77;
t20 = -pkin(4) * t357 + t324;
t8 = t64 * pkin(5) + t63 * qJ(6) - t128 * qJD(6) + t20;
t420 = t8 * t246;
t457 = t32 * t286 + t349 - t420;
t448 = t20 * t246 + t82 * t364;
t456 = -t40 * t286 - t349 + t448;
t370 = t462 * t249;
t46 = t47 * t365;
t455 = -t31 * t286 + t370 + t46;
t72 = t82 * t365;
t454 = t39 * t286 + t370 + t72;
t453 = -t150 * t142 - t21 + t348;
t304 = pkin(5) * t246 - qJ(6) * t249;
t452 = pkin(5) * t365 - qJ(6) * t364 - qJD(6) * t246 - t142 * t304;
t266 = t428 * t281;
t269 = qJD(3) * t280;
t107 = -t247 * t269 + t266 * t358 - t280 * t367;
t273 = t247 * t281;
t147 = -t280 * t428 - t273;
t399 = t126 * t246;
t451 = t147 * (qJD(5) * (-t128 * t249 + t399) - t62 + t60) + t296 * t107;
t423 = g(3) * t227;
t450 = t150 * t286 - t324 - t423 + t462;
t104 = -pkin(4) * t286 - pkin(9) * t142;
t231 = pkin(3) * t247 + pkin(9);
t319 = pkin(3) * t333;
t298 = t249 * t319;
t447 = -t126 * t298 - t231 * t62;
t446 = -t128 * t458 + t64;
t91 = t124 * t247 + t122;
t315 = pkin(3) * t367 - t91;
t369 = t227 * pkin(4) + t226 * pkin(9);
t309 = g(1) * t250 + g(2) * t248;
t439 = qJ(2) * qJDD(1);
t270 = qJD(3) * t281;
t108 = -qJD(4) * t273 - t247 * t270 - t269 * t428 - t280 * t333;
t146 = -t247 * t280 + t266;
t403 = t107 * t246;
t285 = t147 * t364 - t403;
t384 = t147 * t246;
t438 = t108 * t126 + t146 * t64 + t285 * t458 + t384 * t79;
t151 = -t429 * t209 - t210 * t427;
t136 = pkin(8) * t280 + t151;
t152 = -t427 * t209 + t429 * t210;
t137 = -pkin(8) * t281 + t152;
t100 = t247 * t136 + t137 * t428;
t157 = pkin(3) * t281 - t228;
t101 = t146 * pkin(4) - t147 * pkin(9) + t157;
t418 = t249 * t100 + t246 * t101;
t336 = qJD(2) * t427;
t337 = qJD(2) * t429;
t131 = -t209 * t335 - t210 * t334 - t243 * t336 + t244 * t337;
t110 = pkin(8) * t269 + t131;
t253 = pkin(8) * t270 + t209 * t334 - t210 * t335 - t243 * t337 - t244 * t336;
t42 = t110 * t428 + t136 * t333 - t137 * t367 + t247 * t253;
t267 = pkin(3) * t269;
t66 = t108 * pkin(4) + t107 * pkin(9) - t267;
t13 = -qJD(5) * t418 - t246 * t42 + t249 * t66;
t435 = t128 ^ 2;
t434 = t458 ^ 2;
t433 = t177 ^ 2;
t432 = qJD(3) ^ 2;
t430 = pkin(9) * t79;
t5 = t6 * t249;
t92 = t124 * t428 - t121;
t95 = -pkin(3) * t177 + t104;
t49 = t246 * t95 + t249 * t92;
t415 = t458 * t39;
t413 = t231 * t79;
t407 = t315 + t452;
t406 = t452 - t89;
t51 = t246 * t104 + t249 * t88;
t402 = t107 * t249;
t400 = t126 * t231;
t397 = t128 * t126;
t383 = t147 * t249;
t382 = t177 * t176;
t239 = -pkin(8) - t419;
t377 = t239 * t250;
t375 = t246 * t248;
t374 = t248 * t249;
t373 = t249 * t250;
t372 = t250 * t246;
t240 = t243 ^ 2;
t241 = t244 ^ 2;
t368 = t240 + t241;
t362 = t177 * qJD(3);
t356 = t428 * pkin(3);
t236 = cos(t242);
t225 = pkin(3) * t236;
t192 = t225 + t228;
t179 = t250 * t192;
t350 = pkin(4) * t378 + pkin(9) * t380 + t179;
t345 = t246 * t428;
t344 = t249 * t428;
t341 = t231 * t364;
t340 = t231 * t365;
t338 = t126 ^ 2 - t435;
t328 = t368 * qJD(1) ^ 2;
t99 = -t428 * t136 + t137 * t247;
t325 = t458 * t246;
t321 = t5 - t348;
t318 = t227 * t305 + t369;
t317 = 0.2e1 * t368;
t316 = qJD(1) * t342;
t314 = g(1) * t381 - g(2) * t380;
t166 = t227 * t375 + t373;
t168 = t227 * t372 - t374;
t311 = g(1) * t166 - g(2) * t168;
t167 = t227 * t374 - t372;
t169 = t227 * t373 + t375;
t310 = g(1) * t167 - g(2) * t169;
t306 = (qJD(5) * t126 - t63) * pkin(9);
t303 = -t413 - t468;
t302 = t246 * t32 - t249 * t31;
t301 = t246 * t40 + t249 * t39;
t48 = -t246 * t92 + t249 * t95;
t50 = t104 * t249 - t246 * t88;
t54 = -t100 * t246 + t101 * t249;
t290 = pkin(4) + t305;
t288 = -pkin(9) * qJD(5) * t458 - t423;
t235 = sin(t242);
t287 = t309 * t235;
t284 = -t147 * t365 - t402;
t12 = -t100 * t365 + t101 * t364 + t246 * t66 + t249 * t42;
t193 = -qJDD(1) * t228 + qJDD(2);
t279 = t128 * t319 - t231 * t63;
t275 = t289 + t404;
t272 = -g(3) * t236 + t287;
t271 = g(1) * t168 + g(2) * t166 + t226 * t422 + t7;
t268 = -t246 * t319 - t341;
t265 = (-g(1) * (-t192 - t369) + g(2) * t239) * t248;
t264 = t317 * t360 - t309;
t263 = -qJD(5) * t302 + t449;
t262 = -qJD(5) * t301 - t7 * t246 + t5;
t261 = t126 * t285 + t384 * t64;
t43 = qJD(4) * t100 + t247 * t110 - t428 * t253;
t197 = pkin(9) * t379;
t200 = pkin(9) * t378;
t260 = -g(1) * (-pkin(4) * t380 + t200) - g(2) * (-pkin(4) * t381 + t197);
t259 = t128 * t47 + qJDD(6) - t271;
t258 = -g(1) * t169 - g(2) * t167 - t221 * t249 + t6;
t130 = qJDD(2) - t347 * pkin(3) + (-pkin(1) + (-pkin(3) * t429 - pkin(2)) * t244) * qJDD(1);
t254 = t226 * t290 * t309 - g(1) * t200 - g(2) * t197;
t232 = -t356 - pkin(4);
t181 = -t356 - t290;
t173 = t176 ^ 2;
t132 = qJD(2) * t280 - qJD(3) * t152;
t93 = pkin(5) * t128 + qJ(6) * t126;
t67 = t147 * t304 + t99;
t57 = pkin(9) * t62;
t45 = -pkin(5) * t146 - t54;
t44 = qJ(6) * t146 + t418;
t38 = -t50 + t471;
t37 = t51 - t467;
t36 = -t48 + t471;
t35 = t49 - t467;
t34 = t108 * t458 + t146 * t79;
t33 = t126 * t458 - t63;
t15 = t128 * t284 - t383 * t63;
t14 = -t304 * t107 + (qJD(5) * t305 - qJD(6) * t249) * t147 + t43;
t11 = -pkin(5) * t108 - t13;
t10 = t108 * t128 - t146 * t63 + t284 * t458 + t383 * t79;
t9 = qJ(6) * t108 + qJD(6) * t146 + t12;
t1 = [0, 0, 0, 0, 0, qJDD(1), -t440, t309, 0, 0, t240 * qJDD(1), 0.2e1 * t243 * t359, 0, t241 * qJDD(1), 0, 0, t275 * t244, -t275 * t243, t317 * t439 + t264, pkin(1) * t289 + (t368 * t439 + t264) * qJ(2), t145 * t280 + t177 * t270, t145 * t281 + t176 * t270 - t177 * t269 + t278 * t280, -qJDD(3) * t280 - t281 * t432, -t176 * t269 + t278 * t281, -qJDD(3) * t281 + t280 * t432, 0, t151 * qJDD(3) + t193 * t281 - t228 * t278 - t440 * t236 + (-t194 * t280 + t132) * qJD(3), -t131 * qJD(3) - t152 * qJDD(3) + t228 * t145 - t193 * t280 - t194 * t270 + t235 * t440, t106 * t280 - t131 * t176 + t132 * t177 + t151 * t145 - t282 * t269 - t152 * t278 - t309 + (qJD(3) * t148 - t105) * t281, t105 * t152 - t282 * t131 + t106 * t151 + t148 * t132 - t193 * t228 - g(1) * (-t228 * t248 + t250 * t419) - g(2) * (t228 * t250 + t248 * t419) t107 * t286 - t147 * t256, -t107 * t142 + t108 * t286 + t146 * t256 - t147 * t81, -t107 * t358 + t147 * t357, -t108 * t142 + t146 * t81, -t108 * t358 - t146 * t357, 0, g(1) * t379 - g(2) * t378 + t150 * t108 + t130 * t146 + t142 * t267 + t157 * t81 - t357 * t99 - t358 * t43, -t100 * t357 - t150 * t107 + t130 * t147 - t157 * t256 + t267 * t286 - t358 * t42 - t314, -t100 * t81 + t88 * t107 - t89 * t108 + t142 * t42 - t21 * t146 + t147 * t324 - t256 * t99 - t286 * t43 - t309, t21 * t100 + t89 * t42 + t324 * t99 - t88 * t43 + t130 * t157 - t150 * t267 - g(1) * (-t192 * t248 - t377) - g(2) * (-t239 * t248 + t179) t15, t451, t10, t261, -t438, t34, t108 * t39 + t126 * t43 + t13 * t458 + t146 * t7 + t147 * t448 - t82 * t403 + t54 * t79 + t64 * t99 + t310, -t82 * t402 - t108 * t40 - t12 * t458 + t128 * t43 - t146 * t6 - t418 * t79 - t63 * t99 + (t20 * t249 - t72) * t147 - t311, -t12 * t126 - t128 * t13 + t54 * t63 - t418 * t64 + t301 * t107 + (-t246 * t6 - t249 * t7 + (t246 * t39 - t249 * t40) * qJD(5)) * t147 + t314, g(1) * t377 - g(2) * t350 + t40 * t12 + t39 * t13 + t20 * t99 + t418 * t6 + t82 * t43 + t7 * t54 + t265, t15, t10, -t451, t34, t438, t261, -t47 * t403 - t108 * t31 - t11 * t458 + t126 * t14 - t146 * t4 - t45 * t79 + t64 * t67 + (t364 * t47 + t420) * t147 + t310, t11 * t128 - t126 * t9 - t44 * t64 - t45 * t63 + t302 * t107 + (-t2 * t246 + t249 * t4 + (-t246 * t31 - t249 * t32) * qJD(5)) * t147 + t314, t47 * t402 + t108 * t32 - t128 * t14 + t458 * t9 + t146 * t2 + t44 * t79 + t63 * t67 + (-t8 * t249 + t46) * t147 + t311, t2 * t44 + t32 * t9 + t8 * t67 + t47 * t14 + t4 * t45 + t31 * t11 - g(1) * (-pkin(5) * t167 - qJ(6) * t166 - t377) - g(2) * (pkin(5) * t169 + qJ(6) * t168 + t350) + t265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t359, t243 * qJDD(1), -t328, -qJ(2) * t328 - t289, 0, 0, 0, 0, 0, 0, t278 - t362 (-t316 - t176) * qJD(3) + t346, -t173 - t433, -t148 * t177 - t176 * t282 + t193 + t440, 0, 0, 0, 0, 0, 0, -t327 - t363 - 0.2e1 * t459, -t256 + t443, -t390 - t391, -t89 * t142 - t286 * t88 + t130 + t440, 0, 0, 0, 0, 0, 0, -t354 + t401, -t249 * t434 + t395 - t70 (t126 * t142 + t63) * t249 + t128 * t325 + t409, t286 * t82 + t480 * t249 + (t6 - t415) * t246 + t440, 0, 0, 0, 0, 0, 0, -t246 * t434 + t401 + t71 (-t394 + t398) * t142 + t409 + t411, t292 - t395, t286 * t47 + (-t4 + t416) * t249 + (t31 * t458 + t2) * t246 + t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t382, -t173 + t433 (-t316 + t176) * qJD(3) + t346, t382, -t278 - t362, qJDD(3), t194 * t177 + t272 + t308, g(3) * t235 + t194 * t176 + t309 * t236 + (t343 + t148) * qJD(3) - t351, 0, 0, t385, t475, t479, -t385, t460, t357, t91 * t358 + (-t142 * t177 + t357 * t428 - t358 * t367) * pkin(3) + t450, t92 * t358 + (-t177 * t286 - t247 * t357 - t333 * t358) * pkin(3) + t453, -t89 * t286 - t92 * t142 + t88 * t142 + t91 * t286 + (-t247 * t81 + t428 * t257 + (-t247 * t286 + (t142 + t441) * t428) * qJD(4)) * pkin(3), t88 * t91 - t89 * t92 + (-t428 * t324 + t150 * t177 + t21 * t247 + (-t247 * t88 + t428 * t89) * qJD(4) + t272) * pkin(3), t472, t476, t478, t126 * t325 - t62, t291, t466, t232 * t64 + (-t20 - t423) * t249 + t303 * t246 + t315 * t126 + (-t48 + t268) * t458 + t454, -t232 * t63 + t303 * t249 + t315 * t128 + (-t298 + t49 + t340) * t458 + t456, t49 * t126 + t48 * t128 + (t470 + (t128 * t231 - t39) * qJD(5)) * t249 + (t142 * t40 - t7 + (-t40 + t400) * qJD(5) + t279) * t246 + t321 + t447, t20 * t232 - t40 * t49 - t39 * t48 - t82 * t91 - g(3) * (t225 + t369) + (t287 + (t247 * t82 + t344 * t40 - t345 * t39) * qJD(4)) * pkin(3) + t262 * t231 + t260, t472, t478, -t476, t466, -t291, t473, t181 * t64 + (-t8 - t423) * t249 + (-t413 - t469) * t246 + t407 * t126 + (t36 + t268) * t458 + t455, t35 * t126 + (-t36 + t341) * t128 + (t142 * t32 + (-t32 + t400) * qJD(5) + t279) * t246 + t447 + t474, -t407 * t128 + t181 * t63 + t413 * t249 + (-t35 - t340 + (t319 - t47) * t249) * t458 + t457, t8 * t181 - t32 * t35 - t31 * t36 - g(3) * (t225 + t318) + t407 * t47 + (t287 + (t31 * t345 + t32 * t344) * qJD(4)) * pkin(3) + t263 * t231 + t254; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t385, t475, t479, -t385, t460, t357, t358 * t89 + t450, t358 * t88 + t453, 0, 0, t472, t476, t478, t399 * t458 - t62, t291, t466, -pkin(4) * t64 - t126 * t89 - t458 * t50 + (-t430 - t468) * t246 + (-t20 + t288) * t249 + t454, pkin(4) * t63 - pkin(9) * t405 - t128 * t89 + t458 * t51 - t464 * t82 + t456, t126 * t51 + t128 * t50 - t57 + (t470 + (pkin(9) * t128 - t39) * qJD(5)) * t249 + (t306 - t480) * t246 + t321, -t20 * pkin(4) + pkin(9) * t262 - g(3) * t369 - t39 * t50 - t40 * t51 - t82 * t89 + t260, t472, t478, -t476, t466, -t291, t473, t458 * t38 - t290 * t64 + (-t430 - t469) * t246 + t406 * t126 + (t288 - t8) * t249 + t455, t126 * t37 - t57 + (pkin(9) * t364 - t38) * t128 + (t306 - t416) * t246 + t474, -t290 * t63 + (-pkin(9) * t365 - t37) * t458 - t406 * t128 + (-t458 * t47 + t430) * t249 + t457, pkin(9) * t263 - g(3) * t318 - t290 * t8 - t31 * t38 - t32 * t37 + t406 * t47 + t254; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t397, -t338, t33, -t397, -t446, t79, -t128 * t82 + t271 + t414, t126 * t82 - t258 + t415, 0, 0, t397, t33, t338, t79, t446, -t397, -t126 * t93 - t259 + t414 + 0.2e1 * t431, pkin(5) * t63 - qJ(6) * t64 + (t32 - t40) * t128 + (t31 - t371) * t126, 0.2e1 * t417 - t126 * t47 + t128 * t93 + (0.2e1 * qJD(6) - t39) * t458 + t258, t2 * qJ(6) - t4 * pkin(5) - t47 * t93 - t31 * t40 - g(1) * (-pkin(5) * t168 + qJ(6) * t169) - g(2) * (-pkin(5) * t166 + qJ(6) * t167) + t371 * t32 + t304 * t221; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t397 - t79, t33, -t434 - t435, t259 - t416 - t431;];
tau_reg  = t1;