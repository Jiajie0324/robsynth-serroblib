% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRRRPR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6]';
% 
% Output:
% tauc_reg [6x35]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 23:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRPR10_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR10_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR10_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR10_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 23:08:32
% EndTime: 2019-03-09 23:08:53
% DurationCPUTime: 8.18s
% Computational Cost: add. (11645->553), mult. (30242->739), div. (0->0), fcn. (23959->10), ass. (0->274)
t236 = cos(qJ(2));
t230 = sin(pkin(6));
t376 = sin(qJ(3));
t325 = t230 * t376;
t295 = qJD(1) * t325;
t274 = t236 * t295;
t315 = qJD(3) * t376;
t412 = t274 - t315;
t378 = cos(qJ(3));
t331 = t378 * pkin(9);
t209 = pkin(10) * t378 + t331;
t234 = sin(qJ(2));
t343 = qJD(1) * t230;
t321 = t234 * t343;
t231 = cos(pkin(6));
t342 = qJD(1) * t231;
t330 = pkin(1) * t342;
t180 = -pkin(8) * t321 + t236 * t330;
t265 = t230 * (pkin(2) * t234 - pkin(9) * t236);
t181 = qJD(1) * t265;
t281 = -t180 * t376 + t378 * t181;
t324 = t236 * t378;
t414 = (pkin(3) * t234 - pkin(10) * t324) * t343 + t281 + t209 * qJD(3);
t208 = (-pkin(10) - pkin(9)) * t376;
t345 = t378 * t180 + t376 * t181;
t413 = pkin(10) * t274 + t208 * qJD(3) - t345;
t233 = sin(qJ(4));
t317 = qJD(1) * t378;
t296 = t230 * t317;
t271 = t236 * t296;
t377 = cos(qJ(4));
t297 = t377 * t378;
t383 = qJD(3) + qJD(4);
t348 = t271 * t377 - t383 * t297 + (qJD(4) * t376 - t412) * t233;
t301 = qJD(2) + t342;
t164 = -t234 * t295 + t301 * t378;
t165 = t234 * t296 + t376 * t301;
t119 = -t377 * t164 + t165 * t233;
t232 = sin(qJ(6));
t262 = t233 * t164 + t165 * t377;
t384 = qJD(6) + t262;
t235 = cos(qJ(6));
t400 = t384 * t235;
t313 = t378 * qJD(2);
t294 = t230 * t313;
t270 = qJD(1) * t294;
t239 = qJD(3) * t164 + t236 * t270;
t314 = qJD(4) * t377;
t312 = t376 * qJD(2);
t353 = t230 * t236;
t273 = t312 * t353;
t326 = qJD(1) * t273 + qJD(3) * t165;
t337 = qJD(4) * t233;
t64 = -t164 * t314 + t165 * t337 + t233 * t326 - t377 * t239;
t252 = t232 * t64 - t384 * t400;
t341 = qJD(1) * t236;
t320 = t230 * t341;
t207 = -qJD(3) + t320;
t200 = -qJD(4) + t207;
t96 = -t235 * t119 - t200 * t232;
t411 = -t119 * t96 + t252;
t401 = t384 * t232;
t264 = -t235 * t64 - t384 * t401;
t98 = t119 * t232 - t200 * t235;
t410 = t119 * t98 + t264;
t338 = qJD(2) * t234;
t319 = t230 * t338;
t210 = qJD(1) * t319;
t335 = qJD(6) * t235;
t336 = qJD(6) * t232;
t65 = t164 * t337 + t165 * t314 + t233 * t239 + t377 * t326;
t29 = t119 * t335 + t200 * t336 + t235 * t210 + t232 * t65;
t26 = t29 * t235;
t409 = -t401 * t98 + t26;
t256 = t210 * t232 - t235 * t65;
t30 = qJD(6) * t98 + t256;
t403 = t384 * t96;
t408 = -t400 * t98 + (-t29 + t403) * t232 - t235 * t30;
t375 = pkin(5) * t119;
t147 = -pkin(2) * t301 - t180;
t124 = -t164 * pkin(3) + t147;
t243 = -qJ(5) * t262 + t124;
t51 = t119 * pkin(4) + t243;
t407 = t119 * t51;
t183 = pkin(8) * t320 + t234 * t330;
t148 = pkin(9) * t301 + t183;
t374 = pkin(9) * t234;
t178 = (-pkin(2) * t236 - pkin(1) - t374) * t230;
t160 = qJD(1) * t178;
t108 = -t148 * t376 + t378 * t160;
t90 = -t165 * pkin(10) + t108;
t82 = -t207 * pkin(3) + t90;
t253 = -t148 * t378 - t160 * t376;
t91 = t164 * pkin(10) - t253;
t89 = t377 * t91;
t37 = t233 * t82 + t89;
t34 = qJ(5) * t200 - t37;
t22 = -t34 - t375;
t404 = t22 * t384;
t360 = qJ(5) * t119;
t358 = t262 * t119;
t402 = t384 * t119;
t367 = t233 * t91;
t36 = -t377 * t82 + t367;
t351 = -qJD(5) - t36;
t399 = t208 * t314 - t209 * t337 - t233 * t414 + t413 * t377;
t193 = t233 * t378 + t376 * t377;
t142 = t383 * t193;
t149 = t193 * t320;
t347 = t142 - t149;
t269 = -pkin(3) * t412 - t183;
t381 = t262 ^ 2;
t398 = -t119 ^ 2 + t381;
t392 = pkin(5) * t262;
t350 = t392 - t351;
t380 = pkin(4) + pkin(11);
t20 = t200 * t380 + t350;
t31 = t119 * t380 + t243;
t14 = t20 * t232 + t235 * t31;
t202 = qJ(5) * t210;
t182 = qJD(2) * t265;
t172 = qJD(1) * t182;
t354 = t230 * t234;
t219 = pkin(8) * t354;
t352 = t231 * t236;
t184 = (pkin(1) * t352 - t219) * qJD(2);
t173 = qJD(1) * t184;
t284 = t378 * t172 - t173 * t376;
t316 = qJD(3) * t378;
t50 = pkin(3) * t210 - pkin(10) * t239 - t148 * t316 - t160 * t315 + t284;
t251 = -t148 * t315 + t160 * t316 + t376 * t172 + t378 * t173;
t56 = -pkin(10) * t326 + t251;
t310 = -t233 * t50 - t82 * t314 + t91 * t337 - t377 * t56;
t290 = -qJD(5) * t200 - t310;
t10 = -t202 - t290;
t5 = -pkin(5) * t65 - t10;
t397 = -t14 * t119 + t5 * t235;
t13 = t20 * t235 - t232 * t31;
t396 = t13 * t119 + t22 * t335 + t5 * t232;
t248 = -t119 * t200 - t64;
t395 = t119 * t124 + t310;
t393 = pkin(4) * t262;
t391 = t22 * t262;
t370 = t262 * t51;
t364 = qJ(5) * t321 - t399;
t44 = t377 * t90 - t367;
t362 = -pkin(3) * t314 - qJD(5) + t44;
t43 = t233 * t90 + t89;
t291 = pkin(3) * t337 - t43;
t390 = t124 * t262;
t389 = t262 * t380;
t153 = t233 * t208 + t209 * t377;
t388 = qJD(4) * t153 + t413 * t233 + t377 * t414;
t387 = -qJ(5) * t348 + qJD(5) * t193 - t269;
t386 = -t271 + t316;
t385 = -qJD(6) + t384;
t382 = -t200 * t262 - t65;
t298 = t234 * t325;
t249 = -t231 * t378 + t298;
t177 = pkin(8) * t353 + (pkin(1) * t234 + pkin(9)) * t231;
t346 = t378 * t177 + t376 * t178;
t103 = -pkin(10) * t249 + t346;
t242 = -qJD(3) * t249 + t236 * t294;
t283 = t378 * t182 - t184 * t376;
t66 = pkin(3) * t319 - pkin(10) * t242 - t177 * t316 - t178 * t315 + t283;
t186 = t231 * t376 + t354 * t378;
t241 = qJD(3) * t186 + t273;
t250 = -t177 * t315 + t178 * t316 + t376 * t182 + t378 * t184;
t70 = -pkin(10) * t241 + t250;
t282 = -t177 * t376 + t378 * t178;
t95 = -pkin(3) * t353 - t186 * pkin(10) + t282;
t260 = t103 * t337 - t233 * t66 - t95 * t314 - t377 * t70;
t15 = -t230 * (qJ(5) * t338 - qJD(5) * t236) + t260;
t238 = qJD(1) ^ 2;
t373 = t236 * pkin(1);
t372 = -pkin(5) * t347 - t364;
t371 = -pkin(4) * t347 + t387;
t224 = -pkin(3) * t377 - pkin(4);
t221 = -pkin(11) + t224;
t369 = t221 * t64;
t366 = t380 * t64;
t365 = t377 * t103 + t233 * t95;
t363 = pkin(4) * t321 + t388;
t361 = -t362 + t392;
t192 = t233 * t376 - t297;
t357 = t192 * t232;
t356 = t192 * t235;
t227 = t230 ^ 2;
t355 = t227 * t238;
t174 = t183 * qJD(2);
t318 = qJD(2) * t353;
t185 = t231 * pkin(1) * t338 + pkin(8) * t318;
t344 = t234 ^ 2 - t236 ^ 2;
t152 = -t208 * t377 + t233 * t209;
t340 = qJD(2) * t152;
t339 = qJD(2) * t153;
t332 = qJD(1) * qJD(2);
t328 = t234 * t355;
t327 = t235 * t353;
t323 = t236 * t376;
t322 = t227 * t341;
t311 = t227 * t332;
t309 = t233 * t56 + t91 * t314 + t82 * t337 - t377 * t50;
t279 = pkin(3) * t165 + t360;
t308 = -qJD(6) * t221 + t279 + t389;
t307 = qJD(6) * t380 + t360 + t389;
t302 = 0.2e1 * t311;
t300 = qJD(2) + 0.2e1 * t342;
t299 = t380 * t354;
t225 = -pkin(3) * t378 - pkin(2);
t293 = t207 * t315;
t292 = t291 + t375;
t257 = -t193 * qJ(5) + t225;
t125 = t192 * t380 + t257;
t289 = pkin(5) * t348 - qJD(1) * t299 + qJD(6) * t125 - t388;
t129 = t193 * pkin(5) + t152;
t288 = -qJD(6) * t129 - t347 * t380 + t387;
t287 = -0.2e1 * pkin(1) * t311;
t286 = -t233 * t103 + t377 * t95;
t107 = pkin(3) * t326 + t174;
t245 = t64 * qJ(5) - qJD(5) * t262 + t107;
t11 = t380 * t65 + t245;
t275 = qJD(2) * t299;
t7 = -pkin(5) * t64 - qJD(1) * t275 + t309;
t280 = t11 * t235 + t232 * t7;
t247 = t233 * t249;
t135 = t186 * t377 - t247;
t53 = pkin(4) * t353 - t286;
t32 = t135 * pkin(5) + pkin(11) * t353 + t53;
t246 = t377 * t249;
t134 = t186 * t233 + t246;
t136 = pkin(3) * t298 + t219 + (t225 - t373) * t231;
t240 = -t135 * qJ(5) + t136;
t46 = t134 * t380 + t240;
t278 = -t232 * t46 + t235 * t32;
t277 = t232 * t32 + t235 * t46;
t276 = pkin(4) * t210;
t52 = qJ(5) * t353 - t365;
t266 = -t200 * t37 - t309;
t263 = t103 * t314 + t233 * t70 + t95 * t337 - t377 * t66;
t115 = t134 * t235 + t232 * t353;
t127 = -t235 * t149 + t232 * t321;
t255 = -t235 * t142 + t192 * t336 - t127;
t128 = t149 * t232 + t235 * t321;
t254 = t232 * t142 + t192 * t335 - t128;
t12 = -t276 + t309;
t2 = -qJD(6) * t14 - t11 * t232 + t235 * t7;
t244 = qJD(3) * t253 + t284;
t126 = pkin(3) * t241 + t185;
t75 = qJD(4) * t246 + t186 * t337 + t233 * t241 - t242 * t377;
t76 = -qJD(4) * t247 + t186 * t314 + t233 * t242 + t241 * t377;
t19 = t76 * pkin(4) + t75 * qJ(5) - t135 * qJD(5) + t126;
t222 = pkin(3) * t233 + qJ(5);
t176 = t219 + (-pkin(2) - t373) * t231;
t137 = t192 * pkin(4) + t257;
t130 = -t192 * pkin(5) + t153;
t116 = t134 * t232 - t327;
t77 = t360 + t393;
t71 = t134 * pkin(4) + t240;
t67 = t279 + t393;
t57 = t64 * t193;
t41 = t64 * t135;
t40 = qJD(6) * t115 + t232 * t76 + t235 * t319;
t39 = -qJD(6) * t327 - t235 * t76 + (qJD(6) * t134 + t319) * t232;
t35 = -pkin(5) * t134 - t52;
t33 = pkin(4) * t200 - t351;
t24 = t37 - t375;
t18 = t65 * pkin(4) + t245;
t17 = -pkin(4) * t319 + t263;
t16 = t76 * pkin(11) + t19;
t9 = -pkin(5) * t76 - t15;
t8 = -t75 * pkin(5) + t263 - t275;
t1 = qJD(6) * t13 + t280;
t3 = [0, 0, 0, t234 * t236 * t302, -t344 * t302, t300 * t318, -t300 * t319, 0, -t174 * t231 - t185 * t301 + t234 * t287, -t173 * t231 - t184 * t301 + t236 * t287 (t165 * t378 + t186 * t317) * t318 + (t164 * t186 - t165 * t249) * qJD(3), t164 * t242 - t165 * t241 - t186 * t326 - t239 * t249, t165 * t319 + t186 * t210 - t207 * t242 - t239 * t353, t164 * t319 + t207 * t241 - t210 * t249 + t326 * t353 (-t207 * t230 - t322) * t338 -(-qJD(3) * t346 + t283) * t207 + t282 * t210 - t244 * t353 + t108 * t319 - t185 * t164 + t176 * t326 + t174 * t249 + t147 * t241, t147 * t242 + t185 * t165 + t174 * t186 + t176 * t239 + t207 * t250 - t210 * t346 + t251 * t353 + t253 * t319, -t262 * t75 - t41, t119 * t75 + t134 * t64 - t135 * t65 - t262 * t76, t200 * t75 + (t236 * t64 + (qJD(1) * t135 + t262) * t338) * t230, t200 * t76 + (t236 * t65 + (-qJD(1) * t134 - t119) * t338) * t230 (-t200 * t230 - t322) * t338, t263 * t200 + t126 * t119 + t136 * t65 + t107 * t134 + t124 * t76 + (t309 * t236 + (qJD(1) * t286 - t36) * t338) * t230, -t260 * t200 + t126 * t262 - t136 * t64 + t107 * t135 - t124 * t75 + (-t310 * t236 + (-qJD(1) * t365 - t37) * t338) * t230, t10 * t134 + t119 * t15 + t12 * t135 + t17 * t262 - t33 * t75 + t34 * t76 + t52 * t65 - t53 * t64, -t119 * t19 - t134 * t18 - t17 * t200 - t51 * t76 - t65 * t71 + (-t12 * t236 + (qJD(1) * t53 + t33) * t338) * t230, -t262 * t19 - t135 * t18 + t15 * t200 + t51 * t75 + t64 * t71 + (t10 * t236 + (-qJD(1) * t52 - t34) * t338) * t230, t10 * t52 + t12 * t53 + t15 * t34 + t17 * t33 + t18 * t71 + t19 * t51, t116 * t29 + t40 * t98, t115 * t29 - t116 * t30 - t39 * t98 - t40 * t96, -t116 * t64 + t135 * t29 + t384 * t40 - t75 * t98, -t115 * t64 - t135 * t30 - t384 * t39 + t75 * t96, -t384 * t75 - t41 (-qJD(6) * t277 - t16 * t232 + t235 * t8) * t384 - t278 * t64 + t2 * t135 - t13 * t75 + t9 * t96 + t35 * t30 - t5 * t115 + t22 * t39 -(qJD(6) * t278 + t16 * t235 + t232 * t8) * t384 + t277 * t64 - t1 * t135 + t14 * t75 + t9 * t98 + t35 * t29 + t5 * t116 + t22 * t40; 0, 0, 0, -t236 * t328, t344 * t355, -t230 * t238 * t352, t301 * t321 - t210, 0, pkin(1) * t328 + t183 * t301 - t174, pkin(8) * t210 + t180 * t301 + (-t231 * t332 + t355) * t373, t165 * t386 + t239 * t376, t386 * t164 + t165 * t412 + t239 * t378 - t376 * t326, -t207 * t316 + (t207 * t324 + (t312 - t165) * t234) * t343, t293 + (-t207 * t323 + (t313 - t164) * t234) * t343, t207 * t321, -pkin(2) * t326 - t174 * t378 + t281 * t207 + t183 * t164 + (t147 * t376 + t207 * t331) * qJD(3) + (-t147 * t323 + (-pkin(9) * t312 - t108) * t234) * t343, -pkin(2) * t239 - pkin(9) * t293 + t147 * t386 - t183 * t165 + t174 * t376 - t345 * t207 - t253 * t321 - t270 * t374, -t262 * t348 - t57, t119 * t348 + t192 * t64 - t193 * t65 - t262 * t347, t348 * t200 + (qJD(2) * t193 - t262) * t321, t347 * t200 + (-qJD(2) * t192 + t119) * t321, t200 * t321, t107 * t192 + t225 * t65 + t388 * t200 + t347 * t124 + t269 * t119 + (t36 - t340) * t321, t107 * t193 - t225 * t64 + t399 * t200 - t348 * t124 + t269 * t262 + (t37 - t339) * t321, t10 * t192 + t119 * t364 + t12 * t193 - t152 * t64 - t153 * t65 + t262 * t363 - t33 * t348 + t34 * t347, -t137 * t65 - t18 * t192 - t347 * t51 - t363 * t200 + t371 * t119 + (-t33 + t340) * t321, t137 * t64 - t18 * t193 + t348 * t51 + t364 * t200 + t371 * t262 + (t34 + t339) * t321, -t10 * t153 + t12 * t152 + t137 * t18 + t33 * t363 + t34 * t364 - t371 * t51, t254 * t98 + t29 * t357, t127 * t98 + t128 * t96 + (-t232 * t96 + t235 * t98) * t142 + (-t232 * t30 + t26 + (-t232 * t98 - t235 * t96) * qJD(6)) * t192, t193 * t29 + t254 * t384 - t348 * t98 - t357 * t64, -t193 * t30 - t255 * t384 + t348 * t96 - t356 * t64, -t348 * t384 - t57 -(-t125 * t232 + t129 * t235) * t64 + t2 * t193 + t130 * t30 - t5 * t356 + t372 * t96 - t348 * t13 + (t232 * t288 - t235 * t289) * t384 + t255 * t22 (t125 * t235 + t129 * t232) * t64 - t1 * t193 + t130 * t29 + t5 * t357 + t372 * t98 + t348 * t14 + (t232 * t289 + t235 * t288) * t384 + t254 * t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t165 * t164, -t164 ^ 2 + t165 ^ 2, t164 * t207 + t239, -t165 * t207 - t326, t210, -t147 * t165 + t207 * t253 + t244, -t108 * t207 - t147 * t164 - t251, t358, t398, t248, t382, t210, -t390 - t43 * t200 + (-t119 * t165 + t200 * t337 + t210 * t377) * pkin(3) - t309, -t44 * t200 + (-t165 * t262 + t200 * t314 - t210 * t233) * pkin(3) + t395, -t222 * t65 - t224 * t64 + (t291 - t34) * t262 + (t362 + t33) * t119, t370 + t119 * t67 - t291 * t200 + (-pkin(4) + t224) * t210 + t309, t200 * t362 + t210 * t222 + t262 * t67 - t10 - t407, -t10 * t222 + t12 * t224 + t291 * t33 + t34 * t362 - t51 * t67, t409, t408, t410, t411, t402, t222 * t30 + t361 * t96 + (-t369 + t391) * t235 + (t232 * t308 + t235 * t292) * t384 + t396, t222 * t29 + t361 * t98 + t308 * t400 + (-t292 * t384 + t369 - t404) * t232 + t397; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t358, t398, t248, t382, t210, t266 - t390, t200 * t36 + t395, pkin(4) * t64 - qJ(5) * t65 + (-t34 - t37) * t262 + (t33 + t351) * t119, t119 * t77 - t266 - 0.2e1 * t276 + t370, t200 * t351 + t262 * t77 + 0.2e1 * t202 + t290 - t407, -pkin(4) * t12 - qJ(5) * t10 - t33 * t37 + t34 * t351 - t51 * t77, t409, t408, t410, t411, t402, qJ(5) * t30 + t350 * t96 + (t366 + t391) * t235 + (t232 * t307 - t235 * t24) * t384 + t396, qJ(5) * t29 + t350 * t98 + t307 * t400 + (t24 * t384 - t366 - t404) * t232 + t397; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t248, t210 - t358, -t200 ^ 2 - t381, -t200 * t34 + t12 + t370, 0, 0, 0, 0, 0, t200 * t96 + t264, t200 * t98 + t252; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98 * t96, -t96 ^ 2 + t98 ^ 2, t29 + t403, t385 * t98 - t256, -t64, t14 * t384 - t22 * t98 + t2, t13 * t385 + t22 * t96 - t280;];
tauc_reg  = t3;