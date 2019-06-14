% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRPRRP13
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 19:15
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRPRRP13_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP13_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP13_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP13_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP13_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP13_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 19:13:57
% EndTime: 2019-05-06 19:14:18
% DurationCPUTime: 6.83s
% Computational Cost: add. (36359->503), mult. (81679->664), div. (0->0), fcn. (60466->10), ass. (0->321)
t401 = -pkin(2) - pkin(9);
t272 = cos(pkin(6));
t266 = qJD(1) * t272 + qJD(2);
t274 = sin(qJ(4));
t278 = cos(qJ(4));
t271 = sin(pkin(6));
t279 = cos(qJ(2));
t348 = qJD(1) * t279;
t331 = t271 * t348;
t227 = t266 * t278 - t274 * t331;
t275 = sin(qJ(2));
t349 = qJD(1) * t275;
t332 = t271 * t349;
t254 = qJD(4) + t332;
t273 = sin(qJ(5));
t277 = cos(qJ(5));
t206 = t227 * t273 - t277 * t254;
t208 = t227 * t277 + t254 * t273;
t173 = t208 * t206;
t257 = qJD(2) * t332;
t343 = qJDD(1) * t279;
t238 = t271 * t343 - t257;
t265 = qJDD(1) * t272 + qJDD(2);
t327 = t278 * t238 + t274 * t265;
t189 = -qJD(4) * t227 - t327;
t188 = qJDD(5) - t189;
t411 = -t173 + t188;
t426 = pkin(5) * t411;
t225 = t266 * t274 + t278 * t331;
t309 = -t274 * t238 + t278 * t265;
t190 = -qJD(4) * t225 + t309;
t293 = qJD(2) * t348 + qJDD(1) * t275;
t237 = t293 * t271;
t284 = qJDD(4) + t237;
t149 = -t206 * qJD(5) + t277 * t190 + t273 * t284;
t221 = qJD(5) + t225;
t185 = t221 * t206;
t128 = t185 + t149;
t425 = qJ(6) * t128;
t198 = t227 * t225;
t409 = -t198 + t284;
t424 = t274 * t409;
t423 = t278 * t409;
t376 = t411 * t273;
t375 = t411 * t277;
t205 = t208 ^ 2;
t219 = t221 ^ 2;
t170 = -t205 - t219;
t204 = t206 ^ 2;
t328 = t273 * t190 - t277 * t284;
t148 = -qJD(5) * t208 - t328;
t178 = pkin(5) * t221 - qJ(6) * t208;
t196 = pkin(4) * t225 - pkin(10) * t227;
t269 = t271 ^ 2;
t281 = qJD(1) ^ 2;
t364 = t269 * t281;
t338 = t279 * t364;
t251 = t275 * t338;
t276 = sin(qJ(1));
t280 = cos(qJ(1));
t329 = t276 * g(1) - g(2) * t280;
t394 = pkin(8) * t271;
t231 = qJDD(1) * pkin(1) + t281 * t394 + t329;
t370 = t231 * t272;
t218 = t279 * t370;
t262 = t266 ^ 2;
t405 = -t265 * pkin(2) - t262 * qJ(3) + qJDD(3);
t322 = -t218 + t405;
t320 = g(1) * t280 + g(2) * t276;
t232 = -pkin(1) * t281 + qJDD(1) * t394 - t320;
t357 = t275 * t232;
t291 = t322 + t357;
t286 = t237 * pkin(3) + t291;
t234 = pkin(3) * t332 - pkin(9) * t266;
t330 = qJD(3) * t349;
t255 = -0.2e1 * t271 * t330;
t264 = t279 ^ 2 * t364;
t244 = t266 * pkin(2) * t332;
t388 = t272 * g(3);
t299 = -t237 * qJ(3) + t244 - t388;
t365 = t266 * t279;
t134 = -pkin(3) * t264 + t255 + t401 * t238 + (-t231 + (-qJ(3) * t365 - t234 * t275) * qJD(1)) * t271 + t299;
t355 = t278 * t134;
t389 = t265 * pkin(9);
t282 = t355 + t274 * (-pkin(9) * t251 + t286 - t389);
t358 = t275 * qJ(3);
t318 = -pkin(2) * t279 - t358;
t350 = qJD(1) * t271;
t233 = t318 * t350;
t391 = g(3) * t279;
t298 = t233 * t349 + t391;
t333 = t266 * t348;
t402 = t254 ^ 2;
t84 = qJDD(4) * pkin(10) - t225 * t196 - t402 * pkin(4) + (t274 * (-pkin(3) * t333 + t298) + t293 * pkin(10)) * t271 + t282;
t363 = t271 * t275;
t326 = -g(3) * t363 + t279 * t232;
t289 = -t262 * pkin(2) + t265 * qJ(3) + 0.2e1 * qJD(3) * t266 + t233 * t331 + t326;
t337 = t275 * t370;
t154 = t289 + t337;
t133 = t238 * pkin(3) - pkin(9) * t264 + t266 * t234 + t154;
t215 = t254 * t225;
t167 = t190 - t215;
t97 = -t167 * pkin(10) + (t227 * t254 - t189) * pkin(4) + t133;
t53 = t273 * t97 + t277 * t84;
t296 = t148 * qJ(6) - 0.2e1 * qJD(6) * t206 - t221 * t178 + t53;
t422 = -t296 + (t170 + t204) * pkin(5);
t421 = pkin(3) + pkin(8);
t241 = -t264 - t262;
t406 = -t265 - t251;
t420 = pkin(1) * (t241 * t275 - t279 * t406);
t263 = t275 ^ 2 * t364;
t220 = -t263 - t262;
t236 = -t251 + t265;
t419 = pkin(1) * (t220 * t279 - t236 * t275);
t369 = t406 * t275;
t417 = pkin(8) * (-t241 * t279 - t369);
t368 = t236 * t279;
t416 = pkin(8) * (t220 * t275 + t368);
t125 = (qJD(5) - t221) * t208 + t328;
t151 = -t204 - t205;
t31 = -qJ(6) * t125 + (-t151 - t204) * pkin(5) + t296;
t346 = qJD(6) * t208;
t202 = 0.2e1 * t346;
t52 = t273 * t84 - t277 * t97;
t290 = -t425 - t52 + t426;
t34 = t202 - t290 + t425;
t415 = t273 * t34 + t277 * t31;
t283 = (t391 + (-pkin(3) * t365 + t233 * t275) * qJD(1)) * t271;
t100 = t134 * t274 - t278 * (pkin(9) * t406 + t283 + t286);
t83 = -t284 * pkin(4) - t402 * pkin(10) + t196 * t227 + t100;
t57 = -t148 * pkin(5) - t204 * qJ(6) + t178 * t208 + qJDD(6) + t83;
t49 = -qJ(6) * t170 + t57;
t139 = t173 + t188;
t410 = -t185 + t149;
t99 = -pkin(5) * t410 - qJ(6) * t139;
t414 = t273 * t49 + t277 * t99;
t24 = t273 * t52 + t277 * t53;
t158 = -t219 - t204;
t107 = t158 * t277 - t376;
t124 = (qJD(5) + t221) * t208 + t328;
t75 = t107 * t274 - t124 * t278;
t76 = t107 * t278 + t124 * t274;
t413 = pkin(3) * t75 - qJ(3) * t76;
t412 = t269 * (qJD(1) * t266 - t272 * t281);
t246 = t266 * t331;
t408 = t237 + t246;
t407 = t246 - t237;
t334 = t266 * t349;
t213 = -t257 + (t334 + t343) * t271;
t404 = t271 * ((t264 - t262) * t275 + t368) + t272 * t213;
t403 = t271 * ((-t263 + t262) * t279 - t369) - t272 * t407;
t223 = t225 ^ 2;
t224 = t227 ^ 2;
t201 = -0.2e1 * t346;
t36 = t201 + t290;
t400 = pkin(5) * t36;
t91 = -t125 * t273 - t128 * t277;
t399 = pkin(10) * t91;
t106 = t158 * t273 + t375;
t398 = pkin(4) * t106;
t378 = t139 * t273;
t110 = t170 * t277 - t378;
t397 = pkin(4) * t110;
t396 = pkin(4) * t274;
t395 = pkin(5) * t128;
t393 = pkin(10) * t106;
t392 = pkin(10) * t110;
t390 = t238 * pkin(2);
t93 = -t125 * t277 + t128 * t273;
t69 = -t151 * t278 + t274 * t93;
t70 = t151 * t274 + t278 * t93;
t387 = pkin(1) * (-t271 * t70 + (t275 * t91 - t279 * t69) * t272) + (t275 * t69 + t279 * t91) * t394;
t386 = pkin(1) * (-t271 * t76 + (t106 * t275 - t279 * t75) * t272) + (t106 * t279 + t275 * t75) * t394;
t377 = t139 * t277;
t111 = -t170 * t273 - t377;
t85 = t111 * t274 - t278 * t410;
t86 = t111 * t278 + t274 * t410;
t385 = pkin(1) * (-t271 * t86 + (t110 * t275 - t279 * t85) * t272) + (t110 * t279 + t275 * t85) * t394;
t384 = -pkin(4) * t83 + pkin(10) * t24;
t382 = t273 * t36;
t77 = t273 * t83;
t381 = t277 * t36;
t78 = t277 * t83;
t380 = -pkin(4) * t151 + pkin(10) * t93;
t168 = t190 + t215;
t288 = (-qJD(4) + t254) * t227 - t327;
t130 = -t168 * t278 + t274 * t288;
t379 = t130 * t275;
t183 = t198 + t284;
t374 = t183 * t274;
t373 = t183 * t278;
t372 = t221 * t273;
t371 = t221 * t277;
t367 = t254 * t274;
t366 = t254 * t278;
t362 = t271 * t279;
t359 = t274 * t133;
t356 = t278 * t133;
t354 = -pkin(4) * t124 + pkin(10) * t107;
t353 = -pkin(4) * t410 + pkin(10) * t111;
t243 = -t263 - t264;
t352 = pkin(1) * (-t271 * t243 + (t213 * t275 + t279 * t407) * t272) + (t213 * t279 - t275 * t407) * t394;
t345 = qJD(4) + t254;
t342 = t401 * t70;
t341 = -t78 + t354;
t340 = t274 * t173;
t339 = t278 * t173;
t336 = t275 * t198;
t335 = pkin(4) * t278 + pkin(3);
t325 = qJ(3) * t91 + t401 * t69;
t324 = qJ(3) * t106 + t401 * t75;
t323 = qJ(3) * t110 + t401 * t85;
t321 = g(3) * t362 - t218;
t319 = t233 * t350 + t232;
t216 = t271 * t231 + t388;
t23 = t273 * t53 - t277 * t52;
t101 = t274 * t283 + t282;
t62 = -t278 * t100 + t274 * t101;
t316 = t274 * t100 + t278 * t101;
t308 = pkin(3) * t69 - qJ(3) * t70 + t380;
t306 = pkin(3) * t85 - qJ(3) * t86 + t353;
t304 = pkin(1) - t318;
t303 = pkin(3) * t106 + t401 * t76;
t302 = pkin(3) * t110 + t401 * t86;
t301 = -qJ(3) * t333 - t231;
t40 = -pkin(5) * t204 + t296;
t16 = t277 * t40 - t382;
t21 = -pkin(5) * t57 + qJ(6) * t40;
t297 = -pkin(4) * t57 + pkin(10) * t16 - qJ(6) * t382 + t277 * t21;
t46 = -pkin(5) * t124 + qJ(6) * t158 - t57;
t295 = -qJ(6) * t376 + t277 * t46 + t354;
t194 = t321 + t357;
t195 = t326 + t337;
t294 = (t194 * t275 + t195 * t279) * t271;
t292 = t279 * t401 - pkin(1) - t358;
t287 = -t299 + t390;
t285 = t290 + t426;
t160 = t271 * t298 + t291;
t249 = t272 * t265;
t242 = t263 - t264;
t214 = -t257 + (-t334 + t343) * t271;
t210 = -t224 + t402;
t209 = t223 - t402;
t199 = -t224 - t402;
t197 = t224 - t223;
t193 = -t402 - t223;
t192 = (t237 * t271 + t279 * t412) * t275;
t191 = (t238 * t271 - t275 * t412) * t279;
t180 = -t205 + t219;
t179 = t204 - t219;
t177 = -t223 - t224;
t176 = pkin(2) * t407 + qJ(3) * t213;
t175 = (-t225 * t278 + t227 * t274) * t254;
t171 = t205 - t204;
t169 = -t225 * t345 + t309;
t164 = t227 * t345 + t327;
t163 = t190 * t278 - t227 * t367;
t162 = -t189 * t274 + t225 * t366;
t161 = t272 * t242 + (t275 * t214 + t279 * t408) * t271;
t157 = t209 * t278 - t374;
t156 = -t210 * t274 + t423;
t153 = -t199 * t274 - t373;
t152 = t199 * t278 - t374;
t145 = t193 * t274 + t423;
t142 = (-t206 * t273 - t208 * t277) * t221;
t141 = (-t206 * t277 + t208 * t273) * t221;
t137 = pkin(2) * t406 - qJ(3) * t241 + t160;
t136 = -pkin(2) * t220 + qJ(3) * t236 + t154;
t131 = -t164 * t278 - t167 * t274;
t121 = t149 * t277 - t208 * t372;
t120 = t148 * t277 + t206 * t372;
t119 = t149 * t273 + t208 * t371;
t118 = -t148 * t273 + t206 * t371;
t117 = t141 * t278 + t188 * t274;
t116 = t180 * t277 + t376;
t115 = t179 * t277 - t378;
t114 = t179 * t273 + t377;
t113 = -t180 * t273 + t375;
t112 = -pkin(2) * t160 + qJ(3) * t154;
t103 = t121 * t278 + t340;
t102 = t118 * t278 - t340;
t94 = -t124 * t273 + t277 * t410;
t92 = -t124 * t277 - t273 * t410;
t88 = t115 * t278 - t125 * t274;
t87 = t113 * t278 + t128 * t274;
t72 = t171 * t274 + t278 * t92;
t71 = qJ(3) * t169 + t152 * t401 + t356;
t66 = qJ(3) * t164 + t145 * t401 + t359;
t65 = t272 * t117 + (t275 * t142 + t279 * (-t141 * t274 + t188 * t278)) * t271;
t64 = -pkin(4) * t91 + t395;
t61 = t78 - t392;
t59 = t77 - t393;
t55 = t272 * t102 + (t275 * t120 + t279 * (-t118 * t274 - t339)) * t271;
t54 = t272 * t103 + (t275 * t119 + t279 * (-t121 * t274 + t339)) * t271;
t44 = t53 - t397;
t43 = t52 - t398;
t42 = t272 * t87 + (t275 * t116 + t279 * (-t113 * t274 + t128 * t278)) * t271;
t41 = t272 * t88 + (t275 * t114 + t279 * (-t115 * t274 - t125 * t278)) * t271;
t39 = qJ(3) * t177 + t130 * t401 - t62;
t35 = t272 * t72 + (t275 * t94 + t279 * (t171 * t278 - t274 * t92)) * t271;
t32 = -t273 * t99 + t277 * t49 - t392;
t30 = -qJ(6) * t375 - t273 * t46 - t393;
t28 = -t397 - t422;
t26 = qJ(3) * t133 + t401 * t62;
t25 = t202 - t285 - t398;
t19 = -t23 - t399;
t17 = t24 * t274 - t278 * t83;
t15 = t273 * t40 + t381;
t13 = -t274 * t44 + t278 * t61 + t323;
t12 = -t274 * t43 + t278 * t59 + t324;
t10 = t16 * t274 - t278 * t57;
t9 = -t273 * t31 + t277 * t34 - t399;
t8 = -pkin(4) * t15 - t400;
t7 = t19 * t278 + t396 * t91 + t325;
t6 = -t274 * t28 + t278 * t32 + t323;
t5 = -t25 * t274 + t278 * t30 + t324;
t4 = -t274 * t64 + t278 * t9 + t325;
t3 = -pkin(10) * t15 - qJ(6) * t381 - t21 * t273;
t2 = t401 * t17 + (-pkin(10) * t278 + qJ(3) + t396) * t23;
t1 = qJ(3) * t15 + t10 * t401 - t274 * t8 + t278 * t3;
t11 = [0, 0, 0, 0, 0, qJDD(1), t329, t320, 0, 0, t192, t161, t403, t191, t404, t249, (-t194 + t420) * t272 + (pkin(1) * t214 + t279 * t216 - t417) * t271, (-t195 + t419) * t272 + (-pkin(1) * t408 - t275 * t216 - t416) * t271, t294 + t352, pkin(1) * (t271 * t216 + (-t194 * t279 + t195 * t275) * t272) + pkin(8) * t294, t249, -t403, -t404, t192, t161, t191, t272 * t176 + (t279 * (-pkin(2) * t243 + t289) + (-qJ(3) * t243 + t319 * t275 + (g(3) * t271 + t370) * t279 + t322) * t275) * t271 + t352, (t137 - t420) * t272 + (t279 * (t255 - t287) + t417 + t301 * t362 - t304 * t214) * t271, (t136 - t419) * t272 + (t275 * t287 + t416 + (-t301 + 0.2e1 * t330) * t363 + t304 * t408) * t271, (t112 + pkin(1) * (t154 * t275 - t160 * t279)) * t272 + (pkin(8) * (t154 * t279 + t160 * t275) - t304 * (-qJ(3) * t408 - t216 + t244 + t255 - t390)) * t271, t272 * t163 + (t336 + t279 * (-t190 * t274 - t227 * t366)) * t271, t272 * t131 + (t275 * t197 + t279 * (t164 * t274 - t167 * t278)) * t271, t272 * t156 + (t275 * t168 + t279 * (-t210 * t278 - t424)) * t271, t272 * t162 + (-t336 + t279 * (-t189 * t278 - t225 * t367)) * t271, t272 * t157 + (t275 * t288 + t279 * (-t209 * t274 - t373)) * t271, t284 * t363 + t272 * t175 + (t225 * t274 + t227 * t278) * t254 * t362, (t66 + pkin(1) * (-t145 * t279 + t164 * t275)) * t272 + (t275 * (pkin(3) * t145 - t100) + t279 * (pkin(3) * t164 + t356) + pkin(8) * (t145 * t275 + t164 * t279) + t292 * (t193 * t278 - t424)) * t271, (pkin(3) * t152 - qJ(3) * t153 - t355 + (-t321 + t389 - (-pkin(9) * t338 + t319) * t275 + t407 * pkin(3) - t405) * t274) * t363 + (pkin(3) * t169 + t153 * t401 - t359) * t362 + t272 * t71 + pkin(1) * (-t271 * t153 + (-t152 * t279 + t169 * t275) * t272) + (t152 * t275 + t279 * t169) * t394, (t39 + pkin(1) * (-t130 * t279 + t177 * t275)) * t272 + (pkin(3) * t379 + t279 * (pkin(3) * t177 - t316) + pkin(8) * (t177 * t279 + t379) + t292 * (t168 * t274 + t278 * t288)) * t271, (t26 + pkin(1) * (t133 * t275 - t279 * t62)) * t272 + (t292 * t316 + t421 * (t279 * t133 + t275 * t62)) * t271, t54, t35, t42, t55, t41, t65, t272 * t12 + (t275 * (t341 + t413) + t279 * (-t274 * t59 - t278 * t43 + t303)) * t271 + t386, t272 * t13 + (t275 * (t306 + t77) + t279 * (-t274 * t61 - t278 * t44 + t302)) * t271 + t385, t272 * t7 + (t275 * (t308 + t24) + t279 * (-t274 * t19 + t335 * t91 + t342)) * t271 + t387, (t2 + pkin(1) * (-t17 * t279 + t23 * t275)) * t272 + ((t17 * t421 + t384) * t275 + (pkin(10) * t274 + pkin(8) + t335) * t279 * t23 + t292 * (t24 * t278 + t274 * t83)) * t271, t54, t35, t42, t55, t41, t65, t272 * t5 + (t275 * (t295 + t413) + t279 * (-t278 * t25 - t274 * t30 + t303)) * t271 + t386, t272 * t6 + (t275 * (t306 + t414) + t279 * (-t274 * t32 - t278 * t28 + t302)) * t271 + t385, t272 * t4 + (t275 * (t308 + t415) + t279 * (pkin(3) * t91 - t274 * t9 - t278 * t64 + t342)) * t271 + t387, (t1 + pkin(1) * (-t10 * t279 + t15 * t275)) * t272 + (t275 * (pkin(3) * t10 + t297) + t279 * (pkin(3) * t15 - t274 * t3 - t278 * t8) + pkin(8) * (t10 * t275 + t15 * t279) + t292 * (t16 * t278 + t274 * t57)) * t271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t251, t242, -t407, t251, t213, t265, -t194, -t195, 0, 0, t265, t407, -t213, -t251, t242, t251, t176, t137, t136, t112, t163, t131, t156, t162, t157, t175, t66, t71, t39, t26, t103, t72, t87, t102, t88, t117, t12, t13, t7, t2, t103, t72, t87, t102, t88, t117, t5, t6, t4, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t407, -t406, t220, t160, 0, 0, 0, 0, 0, 0, t145, t152, t130, t62, 0, 0, 0, 0, 0, 0, t75, t85, t69, t17, 0, 0, 0, 0, 0, 0, t75, t85, t69, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t198, t197, t168, -t198, t288, t284, -t100, -t101, 0, 0, t119, t94, t116, t120, t114, t142, t341, t77 + t353, t380 + t24, t384, t119, t94, t116, t120, t114, t142, t295, t353 + t414, t380 + t415, t297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, t171, t128, -t173, -t125, t188, -t52, -t53, 0, 0, t173, t171, t128, -t173, -t125, t188, t201 + t285, t422, -t395, t400; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124, t410, t151, t57;];
tauJ_reg  = t11;
