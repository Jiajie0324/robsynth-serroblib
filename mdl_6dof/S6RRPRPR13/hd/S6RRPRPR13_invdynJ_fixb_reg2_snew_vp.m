% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRPRPR13
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 16:42
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRPRPR13_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR13_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR13_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR13_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR13_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR13_invdynJ_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 16:38:46
% EndTime: 2019-05-06 16:39:36
% DurationCPUTime: 14.14s
% Computational Cost: add. (77923->579), mult. (177393->845), div. (0->0), fcn. (133147->12), ass. (0->356)
t337 = sin(qJ(4));
t333 = sin(pkin(6));
t342 = cos(qJ(2));
t338 = sin(qJ(2));
t434 = qJ(3) * t338;
t373 = -pkin(2) * t342 - t434;
t408 = t333 * t338;
t353 = t373 * t408;
t398 = qJDD(1) * t338;
t335 = cos(pkin(6));
t327 = qJD(1) * t335 + qJD(2);
t401 = qJD(2) - t327;
t440 = t342 * g(3);
t452 = pkin(3) * t398 + qJD(1) * (t401 * pkin(3) * t342 + qJD(1) * t353) + t440;
t345 = t452 * t333;
t404 = qJD(1) * t338;
t390 = t333 * t404;
t296 = pkin(3) * t390 - pkin(9) * t327;
t399 = qJDD(1) * t333;
t323 = t342 * t399;
t299 = -qJD(2) * t390 + t323;
t388 = qJD(3) * t404;
t317 = -0.2e1 * t333 * t388;
t330 = t333 ^ 2;
t344 = qJD(1) ^ 2;
t409 = t330 * t344;
t325 = t342 ^ 2 * t409;
t339 = sin(qJ(1));
t343 = cos(qJ(1));
t386 = t339 * g(1) - g(2) * t343;
t442 = pkin(8) * t333;
t294 = qJDD(1) * pkin(1) + t344 * t442 + t386;
t376 = qJD(1) * (-qJD(2) - t327);
t348 = -t294 + (t342 * t376 - t398) * qJ(3);
t441 = t335 * g(3);
t385 = t327 * pkin(2) * t390 - t441;
t446 = -pkin(2) - pkin(9);
t178 = -pkin(3) * t325 + t317 + t446 * t299 + (-t296 * t404 + t348) * t333 + t385;
t341 = cos(qJ(4));
t326 = qJDD(1) * t335 + qJDD(2);
t374 = g(1) * t343 + g(2) * t339;
t295 = -pkin(1) * t344 + pkin(8) * t399 - t374;
t414 = t294 * t335;
t379 = t338 * t295 - t342 * t414;
t448 = t327 ^ 2;
t354 = -t326 * pkin(2) - t448 * qJ(3) + qJDD(3) + t379;
t406 = t338 * t342;
t313 = t406 * t409;
t456 = -t326 - t313;
t453 = pkin(9) * t456 + t354;
t346 = t341 * t178 + t337 * t453;
t142 = t337 * t345 + t346;
t332 = sin(pkin(11));
t403 = qJD(1) * t342;
t389 = t333 * t403;
t289 = t327 * t341 - t337 * t389;
t316 = qJD(4) + t390;
t334 = cos(pkin(11));
t267 = t289 * t332 - t334 * t316;
t269 = t289 * t334 + t316 * t332;
t236 = t269 * t267;
t378 = t341 * t299 + t326 * t337;
t250 = qJD(4) * t289 + t378;
t459 = -t236 + t250;
t473 = t332 * t459;
t472 = t334 * t459;
t336 = sin(qJ(6));
t340 = cos(qJ(6));
t229 = t340 * t267 + t269 * t336;
t231 = -t267 * t336 + t269 * t340;
t176 = t231 * t229;
t249 = qJDD(6) + t250;
t461 = -t176 + t249;
t471 = t336 * t461;
t287 = t327 * t337 + t341 * t389;
t260 = t289 * t287;
t356 = qJD(2) * t403 + t398;
t351 = t356 * t333;
t349 = qJDD(4) + t351;
t457 = -t260 + t349;
t470 = t337 * t457;
t469 = t340 * t461;
t468 = t341 * t457;
t445 = pkin(3) + pkin(8);
t302 = -t325 - t448;
t466 = pkin(1) * (t302 * t338 - t342 * t456);
t447 = t338 ^ 2;
t324 = t447 * t409;
t281 = -t324 - t448;
t298 = -t313 + t326;
t465 = pkin(1) * (t281 * t342 - t298 * t338);
t413 = t456 * t338;
t464 = pkin(8) * (-t302 * t342 - t413);
t412 = t298 * t342;
t463 = pkin(8) * (t281 * t338 + t412);
t257 = pkin(4) * t287 - qJ(5) * t289;
t449 = t316 ^ 2;
t112 = -t287 * t257 - t449 * pkin(4) + qJDD(4) * qJ(5) + (qJ(5) * t356 + t337 * t452) * t333 + t346;
t256 = -g(3) * t408 + t295 * t342 + t338 * t414;
t210 = t342 * t373 * t409 - t448 * pkin(2) + t326 * qJ(3) + 0.2e1 * qJD(3) * t327 + t256;
t177 = t299 * pkin(3) - pkin(9) * t325 + t296 * t327 + t210;
t251 = -t287 * qJD(4) - t337 * t299 + t341 * t326;
t417 = t287 * t316;
t361 = t251 - t417;
t140 = -t361 * qJ(5) + (t289 * t316 + t250) * pkin(4) + t177;
t75 = 0.2e1 * qJD(5) * t269 + t112 * t332 - t334 * t140;
t76 = -0.2e1 * qJD(5) * t267 + t334 * t112 + t332 * t140;
t41 = t332 * t75 + t334 * t76;
t462 = t330 * t338;
t234 = t334 * t251 + t332 * t349;
t380 = t251 * t332 - t334 * t349;
t149 = -t229 * qJD(6) + t340 * t234 - t336 * t380;
t282 = qJD(6) + t287;
t208 = t282 * t229;
t460 = -t208 + t149;
t248 = t287 * t267;
t192 = -t248 - t234;
t458 = -t248 + t234;
t307 = t327 * t389;
t272 = t351 + t307;
t381 = t234 * t336 + t340 * t380;
t125 = t231 * (qJD(6) - t282) + t381;
t274 = -t390 * t401 + t323;
t455 = t333 * ((t325 - t448) * t338 + t412) + t274 * t335;
t273 = -t307 + t351;
t454 = t333 * ((-t324 + t448) * t342 - t413) + t273 * t335;
t227 = t229 ^ 2;
t228 = t231 ^ 2;
t451 = t267 ^ 2;
t266 = t269 ^ 2;
t280 = t282 ^ 2;
t450 = t287 ^ 2;
t286 = t289 ^ 2;
t443 = pkin(4) * t341;
t57 = pkin(5) * t459 + pkin(10) * t192 - t75;
t241 = pkin(5) * t287 - pkin(10) * t269;
t67 = -pkin(5) * t451 - pkin(10) * t380 - t287 * t241 + t76;
t31 = t336 * t67 - t340 * t57;
t32 = t336 * t57 + t340 * t67;
t20 = -t31 * t340 + t32 * t336;
t439 = t20 * t332;
t438 = t20 * t334;
t141 = t178 * t337 - t341 * (t345 + t453);
t109 = -t349 * pkin(4) - t449 * qJ(5) + t257 * t289 + qJDD(5) + t141;
t95 = pkin(5) * t380 - pkin(10) * t451 + t241 * t269 + t109;
t437 = t336 * t95;
t436 = t340 * t95;
t435 = -pkin(4) * t109 + qJ(5) * t41;
t158 = t176 + t249;
t433 = t158 * t336;
t432 = t158 * t340;
t224 = -t251 - t417;
t352 = (-qJD(4) + t316) * t289 - t378;
t172 = t224 * t341 + t337 * t352;
t431 = t172 * t338;
t430 = t177 * t337;
t429 = t177 * t341;
t195 = t236 + t250;
t428 = t195 * t332;
t427 = t195 * t334;
t243 = t260 + t349;
t426 = t243 * t337;
t425 = t243 * t341;
t424 = t250 * t337;
t423 = t250 * t341;
t422 = t269 * t287;
t419 = t282 * t336;
t418 = t282 * t340;
t416 = t287 * t332;
t415 = t287 * t334;
t411 = t316 * t337;
t410 = t316 * t341;
t105 = t332 * t109;
t407 = t333 * t342;
t106 = t334 * t109;
t304 = -t324 - t325;
t405 = pkin(1) * (-t304 * t333 + (-t273 * t342 + t274 * t338) * t335) + (t273 * t338 + t274 * t342) * t442;
t397 = t337 * t176;
t396 = t341 * t176;
t395 = t337 * t236;
t394 = t341 * t236;
t393 = t338 * t260;
t233 = -t266 - t450;
t162 = -t233 * t332 - t427;
t392 = -pkin(4) * t458 + qJ(5) * t162 + t105;
t214 = -t450 - t451;
t154 = t214 * t334 - t473;
t187 = t380 + t422;
t391 = -pkin(4) * t187 + qJ(5) * t154 - t106;
t387 = pkin(4) * t337 + qJ(3);
t21 = t31 * t336 + t340 * t32;
t151 = -t227 - t228;
t128 = t208 + t149;
t87 = -t125 * t340 + t128 * t336;
t15 = -pkin(5) * t151 + pkin(10) * t87 + t21;
t85 = -t125 * t336 - t128 * t340;
t17 = -pkin(10) * t85 - t20;
t46 = -t332 * t85 + t334 * t87;
t384 = -pkin(4) * t151 + qJ(5) * t46 + t334 * t15 + t332 * t17;
t124 = (qJD(6) + t282) * t231 + t381;
t170 = -t280 - t227;
t104 = t170 * t340 - t471;
t49 = -pkin(5) * t124 + pkin(10) * t104 - t436;
t103 = t170 * t336 + t469;
t59 = -pkin(10) * t103 + t437;
t72 = -t103 * t332 + t104 * t334;
t383 = -pkin(4) * t124 + qJ(5) * t72 + t332 * t59 + t334 * t49;
t197 = -t228 - t280;
t131 = -t197 * t336 - t432;
t51 = -pkin(5) * t460 + pkin(10) * t131 + t437;
t130 = t197 * t340 - t433;
t66 = -pkin(10) * t130 + t436;
t83 = -t130 * t332 + t131 * t334;
t382 = -pkin(4) * t460 + qJ(5) * t83 + t332 * t66 + t334 * t51;
t188 = t380 - t422;
t147 = -t188 * t334 - t192 * t332;
t203 = -t266 - t451;
t377 = -pkin(4) * t203 + qJ(5) * t147 + t41;
t40 = t332 * t76 - t334 * t75;
t96 = -t141 * t341 + t142 * t337;
t371 = t141 * t337 + t142 * t341;
t364 = qJD(1) * t327 - t335 * t344;
t363 = pkin(1) - t373;
t362 = t299 * pkin(2) - t385;
t13 = t21 * t334 - t439;
t19 = -pkin(5) * t95 + pkin(10) * t21;
t360 = -pkin(4) * t95 - pkin(10) * t439 + qJ(5) * t13 + t334 * t19;
t358 = t317 - t362;
t255 = g(3) * t407 + t379;
t357 = (t255 * t338 + t256 * t342) * t333;
t355 = t342 * t446 - pkin(1) - t434;
t347 = -t294 + (-t327 * t403 - t356) * qJ(3);
t216 = (t344 * t353 + t440) * t333 + t354;
t310 = t335 * t326;
t303 = t324 - t325;
t276 = t333 * t294 + t441;
t275 = t376 * t408 + t323;
t271 = -t286 + t449;
t270 = t450 - t449;
t261 = -t286 - t449;
t258 = t286 - t450;
t254 = -t450 - t449;
t253 = (t342 * t364 + t356) * t462;
t252 = (t299 * t333 - t364 * t462) * t342;
t246 = -t266 + t450;
t245 = -t450 + t451;
t240 = -t450 - t286;
t239 = -pkin(2) * t273 + qJ(3) * t274;
t238 = (-t287 * t341 + t289 * t337) * t316;
t235 = -t266 + t451;
t220 = (qJD(4) + t316) * t289 + t378;
t219 = t251 * t341 - t289 * t411;
t218 = t287 * t410 + t424;
t217 = t335 * t303 + (t272 * t342 + t338 * t275) * t333;
t213 = t270 * t341 - t426;
t212 = -t271 * t337 + t468;
t207 = -t228 + t280;
t206 = t227 - t280;
t205 = -t261 * t337 - t425;
t204 = t261 * t341 - t426;
t200 = t254 * t337 + t468;
t199 = (-t267 * t334 + t269 * t332) * t287;
t198 = (-t267 * t332 - t269 * t334) * t287;
t193 = pkin(2) * t456 - qJ(3) * t302 + t216;
t184 = -pkin(2) * t281 + qJ(3) * t298 + t210;
t183 = t234 * t334 - t269 * t416;
t182 = t234 * t332 + t269 * t415;
t181 = t267 * t415 + t332 * t380;
t180 = t267 * t416 - t334 * t380;
t175 = t228 - t227;
t173 = -t220 * t341 - t337 * t361;
t171 = t199 * t341 + t424;
t169 = t245 * t334 - t428;
t168 = -t246 * t332 + t472;
t167 = t245 * t332 + t427;
t166 = t246 * t334 + t473;
t165 = -pkin(2) * t216 + qJ(3) * t210;
t164 = (-t229 * t340 + t231 * t336) * t282;
t163 = (-t229 * t336 - t231 * t340) * t282;
t161 = t233 * t334 - t428;
t156 = t183 * t341 + t395;
t155 = t181 * t341 - t395;
t153 = t214 * t332 + t472;
t148 = -qJD(6) * t231 - t381;
t146 = -t187 * t334 - t332 * t458;
t145 = -t188 * t332 + t192 * t334;
t144 = -t187 * t332 + t334 * t458;
t137 = t206 * t340 - t433;
t136 = -t207 * t336 + t469;
t135 = t206 * t336 + t432;
t134 = t207 * t340 + t471;
t133 = t169 * t341 - t188 * t337;
t132 = t168 * t341 - t192 * t337;
t121 = t149 * t340 - t231 * t419;
t120 = t149 * t336 + t231 * t418;
t119 = -t148 * t336 + t229 * t418;
t118 = t148 * t340 + t229 * t419;
t116 = t162 * t337 - t341 * t458;
t115 = t146 * t341 - t235 * t337;
t113 = t154 * t337 - t187 * t341;
t110 = t147 * t337 - t203 * t341;
t102 = -t163 * t332 + t164 * t334;
t101 = t163 * t334 + t164 * t332;
t100 = qJ(3) * t361 + t204 * t446 + t429;
t99 = qJ(3) * t220 + t200 * t446 + t430;
t98 = t102 * t341 + t249 * t337;
t93 = -qJ(5) * t161 + t106;
t92 = -qJ(5) * t153 + t105;
t91 = -t135 * t332 + t137 * t334;
t90 = -t134 * t332 + t136 * t334;
t89 = t135 * t334 + t137 * t332;
t88 = t134 * t334 + t136 * t332;
t86 = -t124 * t340 - t336 * t460;
t84 = -t124 * t336 + t340 * t460;
t82 = t130 * t334 + t131 * t332;
t80 = -t120 * t332 + t121 * t334;
t79 = -t118 * t332 + t119 * t334;
t78 = t120 * t334 + t121 * t332;
t77 = t118 * t334 + t119 * t332;
t71 = t103 * t334 + t104 * t332;
t69 = t341 * t80 + t397;
t68 = t341 * t79 - t397;
t64 = -pkin(4) * t161 + t76;
t63 = -pkin(4) * t153 + t75;
t62 = -t125 * t337 + t341 * t91;
t61 = t128 * t337 + t341 * t90;
t60 = qJ(3) * t240 + t172 * t446 - t96;
t54 = t337 * t83 - t341 * t460;
t52 = -t124 * t341 + t337 * t72;
t48 = qJ(3) * t177 + t446 * t96;
t45 = -t332 * t84 + t334 * t86;
t44 = t332 * t87 + t334 * t85;
t43 = t332 * t86 + t334 * t84;
t38 = t175 * t337 + t341 * t45;
t36 = -t151 * t341 + t337 * t46;
t35 = -qJ(5) * t145 - t40;
t33 = -t109 * t341 + t337 * t41;
t29 = -pkin(4) * t44 - pkin(5) * t85;
t28 = qJ(3) * t161 + t116 * t446 - t337 * t64 + t341 * t93;
t27 = qJ(3) * t153 + t113 * t446 - t337 * t63 + t341 * t92;
t26 = -qJ(5) * t82 - t332 * t51 + t334 * t66;
t25 = -pkin(4) * t82 - pkin(5) * t130 + t32;
t24 = t110 * t446 + t145 * t387 + t341 * t35;
t23 = -pkin(4) * t71 - pkin(5) * t103 + t31;
t22 = -qJ(5) * t71 - t332 * t49 + t334 * t59;
t12 = t21 * t332 + t438;
t10 = t446 * t33 + (-qJ(5) * t341 + t387) * t40;
t8 = t13 * t337 - t341 * t95;
t7 = qJ(3) * t82 - t25 * t337 + t26 * t341 + t446 * t54;
t6 = qJ(3) * t71 + t22 * t341 - t23 * t337 + t446 * t52;
t5 = -qJ(5) * t44 - t15 * t332 + t17 * t334;
t4 = -pkin(4) * t12 - pkin(5) * t20;
t3 = -pkin(10) * t438 - qJ(5) * t12 - t19 * t332;
t2 = qJ(3) * t44 - t29 * t337 + t341 * t5 + t36 * t446;
t1 = qJ(3) * t12 + t3 * t341 - t337 * t4 + t446 * t8;
t9 = [0, 0, 0, 0, 0, qJDD(1), t386, t374, 0, 0, t253, t217, t454, t252, t455, t310, (-t255 + t466) * t335 + (pkin(1) * t275 + t342 * t276 - t464) * t333, (-t256 + t465) * t335 + (-pkin(1) * t272 - t338 * t276 - t463) * t333, t357 + t405, pkin(1) * (t276 * t333 + (-t255 * t342 + t256 * t338) * t335) + pkin(8) * t357, t310, -t454, -t455, t253, t217, t252, t335 * t239 + (t338 * (-qJ(3) * t304 + t354) + t342 * (-pkin(2) * t304 + t210) + (g(3) * t406 + t447 * qJD(1) * (-pkin(2) * t403 - qJ(3) * t404) * t333) * t333) * t333 + t405, (t193 - t466) * t335 + (-t275 * t363 + t342 * t358 + t347 * t407 + t464) * t333, (t184 - t465) * t335 + (t338 * t362 + t463 + (-t347 + 0.2e1 * t388) * t408 + t363 * t272) * t333, (t165 + pkin(1) * (t210 * t338 - t216 * t342)) * t335 + (pkin(8) * (t210 * t342 + t216 * t338) - t363 * (t333 * t348 + t358)) * t333, t335 * t219 + (t393 + t342 * (-t251 * t337 - t289 * t410)) * t333, t335 * t173 + (t338 * t258 + t342 * (t220 * t337 - t341 * t361)) * t333, t335 * t212 + (-t338 * t224 + t342 * (-t271 * t341 - t470)) * t333, t335 * t218 + (-t393 + t342 * (-t287 * t411 + t423)) * t333, t335 * t213 + (t338 * t352 + t342 * (-t270 * t337 - t425)) * t333, t349 * t408 + t335 * t238 + (t287 * t337 + t289 * t341) * t316 * t407, (t99 + pkin(1) * (-t200 * t342 + t220 * t338)) * t335 + (t338 * (pkin(3) * t200 - t141) + t342 * (pkin(3) * t220 + t429) + pkin(8) * (t200 * t338 + t220 * t342) + t355 * (t254 * t341 - t470)) * t333, (pkin(3) * t204 - qJ(3) * t205 - t142) * t408 + (pkin(3) * t361 + t205 * t446 - t430) * t407 + t335 * t100 + pkin(1) * (-t205 * t333 + (-t204 * t342 + t338 * t361) * t335) + (t204 * t338 + t342 * t361) * t442, (t60 + pkin(1) * (-t172 * t342 + t240 * t338)) * t335 + (pkin(3) * t431 + t342 * (pkin(3) * t240 - t371) + pkin(8) * (t240 * t342 + t431) + t355 * (-t224 * t337 + t341 * t352)) * t333, (t48 + pkin(1) * (t177 * t338 - t342 * t96)) * t335 + (t355 * t371 + t445 * (t342 * t177 + t338 * t96)) * t333, t335 * t156 + (t338 * t182 + t342 * (-t183 * t337 + t394)) * t333, t335 * t115 + (t338 * t144 + t342 * (-t146 * t337 - t235 * t341)) * t333, t335 * t132 + (t338 * t166 + t342 * (-t168 * t337 - t192 * t341)) * t333, t335 * t155 + (t338 * t180 + t342 * (-t181 * t337 - t394)) * t333, t335 * t133 + (t338 * t167 + t342 * (-t169 * t337 - t188 * t341)) * t333, t335 * t171 + (t338 * t198 + t342 * (-t199 * t337 + t423)) * t333, (t27 + pkin(1) * (-t113 * t342 + t153 * t338)) * t335 + (t338 * (pkin(3) * t113 + t391) + t342 * (pkin(3) * t153 - t337 * t92 - t341 * t63) + pkin(8) * (t113 * t338 + t153 * t342) + t355 * (t154 * t341 + t187 * t337)) * t333, (t28 + pkin(1) * (-t116 * t342 + t161 * t338)) * t335 + (t338 * (pkin(3) * t116 + t392) + t342 * (pkin(3) * t161 - t337 * t93 - t341 * t64) + pkin(8) * (t116 * t338 + t161 * t342) + t355 * (t162 * t341 + t337 * t458)) * t333, (t24 + pkin(1) * (-t110 * t342 + t145 * t338)) * t335 + (t338 * (pkin(3) * t110 + t377) + t342 * (-t337 * t35 + (pkin(3) + t443) * t145) + pkin(8) * (t110 * t338 + t145 * t342) + t355 * (t147 * t341 + t203 * t337)) * t333, (t10 + pkin(1) * (-t33 * t342 + t338 * t40)) * t335 + ((t33 * t445 + t435) * t338 + (qJ(5) * t337 + t443 + t445) * t342 * t40 + t355 * (t109 * t337 + t341 * t41)) * t333, t335 * t69 + (t338 * t78 + t342 * (-t337 * t80 + t396)) * t333, t335 * t38 + (t338 * t43 + t342 * (t175 * t341 - t337 * t45)) * t333, t335 * t61 + (t338 * t88 + t342 * (t128 * t341 - t337 * t90)) * t333, t335 * t68 + (t338 * t77 + t342 * (-t337 * t79 - t396)) * t333, t335 * t62 + (t338 * t89 + t342 * (-t125 * t341 - t337 * t91)) * t333, t335 * t98 + (t338 * t101 + t342 * (-t102 * t337 + t249 * t341)) * t333, (t6 + pkin(1) * (t338 * t71 - t342 * t52)) * t335 + (t338 * (pkin(3) * t52 + t383) + t342 * (pkin(3) * t71 - t22 * t337 - t23 * t341) + pkin(8) * (t338 * t52 + t342 * t71) + t355 * (t124 * t337 + t341 * t72)) * t333, (t7 + pkin(1) * (t338 * t82 - t342 * t54)) * t335 + (t338 * (pkin(3) * t54 + t382) + t342 * (pkin(3) * t82 - t25 * t341 - t26 * t337) + pkin(8) * (t338 * t54 + t342 * t82) + t355 * (t337 * t460 + t341 * t83)) * t333, (t2 + pkin(1) * (t338 * t44 - t342 * t36)) * t335 + (t338 * (pkin(3) * t36 + t384) + t342 * (pkin(3) * t44 - t29 * t341 - t337 * t5) + pkin(8) * (t338 * t36 + t342 * t44) + t355 * (t151 * t337 + t341 * t46)) * t333, (t1 + pkin(1) * (t12 * t338 - t342 * t8)) * t335 + (t338 * (pkin(3) * t8 + t360) + t342 * (pkin(3) * t12 - t3 * t337 - t341 * t4) + pkin(8) * (t12 * t342 + t338 * t8) + t355 * (t13 * t341 + t337 * t95)) * t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t313, t303, t273, t313, t274, t326, -t255, -t256, 0, 0, t326, -t273, -t274, -t313, t303, t313, t239, t193, t184, t165, t219, t173, t212, t218, t213, t238, t99, t100, t60, t48, t156, t115, t132, t155, t133, t171, t27, t28, t24, t10, t69, t38, t61, t68, t62, t98, t6, t7, t2, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t273, -t456, t281, t216, 0, 0, 0, 0, 0, 0, t200, t204, t172, t96, 0, 0, 0, 0, 0, 0, t113, t116, t110, t33, 0, 0, 0, 0, 0, 0, t52, t54, t36, t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260, t258, -t224, -t260, t352, t349, -t141, -t142, 0, 0, t182, t144, t166, t180, t167, t198, t391, t392, t377, t435, t78, t43, t88, t77, t89, t101, t383, t382, t384, t360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t187, t458, t203, t109, 0, 0, 0, 0, 0, 0, t124, t460, t151, t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t176, t175, t128, -t176, -t125, t249, -t31, -t32, 0, 0;];
tauJ_reg  = t9;
