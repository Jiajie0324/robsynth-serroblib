% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRRRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tauc_reg [6x33]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 22:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRPR4_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR4_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR4_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR4_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 22:09:25
% EndTime: 2019-03-09 22:09:41
% DurationCPUTime: 6.57s
% Computational Cost: add. (11815->456), mult. (28319->627), div. (0->0), fcn. (21487->10), ass. (0->270)
t299 = cos(qJ(2));
t412 = -pkin(8) - pkin(7);
t271 = t412 * t299;
t265 = qJD(1) * t271;
t295 = sin(qJ(3));
t245 = t295 * t265;
t296 = sin(qJ(2));
t270 = t412 * t296;
t263 = qJD(1) * t270;
t411 = cos(qJ(3));
t196 = t263 * t411 + t245;
t345 = qJD(3) * t411;
t440 = -pkin(2) * t345 + t196;
t346 = qJD(1) * t411;
t364 = qJD(1) * t296;
t426 = -t295 * t364 + t299 * t346;
t233 = qJD(4) - t426;
t378 = t295 * t299;
t242 = -qJD(1) * t378 - t296 * t346;
t288 = qJD(2) + qJD(3);
t294 = sin(qJ(4));
t298 = cos(qJ(4));
t205 = -t242 * t294 - t298 * t288;
t291 = sin(pkin(11));
t292 = cos(pkin(11));
t322 = t242 * t298 - t288 * t294;
t137 = t205 * t291 + t292 * t322;
t293 = sin(qJ(6));
t297 = cos(qJ(6));
t359 = qJD(6) * t293;
t323 = -t205 * t292 + t291 * t322;
t377 = t297 * t323;
t182 = t426 * t288;
t360 = qJD(4) * t298;
t361 = qJD(4) * t294;
t131 = t298 * t182 + t242 * t361 + t288 * t360;
t132 = -qJD(4) * t322 + t294 * t182;
t66 = -t131 * t291 - t132 * t292;
t67 = t131 * t292 - t132 * t291;
t16 = qJD(6) * t377 + t137 * t359 + t293 * t66 + t297 * t67;
t220 = qJD(6) + t233;
t78 = t137 * t293 + t377;
t402 = t220 * t78;
t441 = t16 - t402;
t422 = -t297 * t137 + t293 * t323;
t439 = t422 * t78;
t256 = t291 * t298 + t292 * t294;
t428 = t233 * t256;
t320 = t291 * t294 - t292 * t298;
t427 = t233 * t320;
t386 = t426 * t294;
t438 = -qJ(5) * t386 - t298 * qJD(5);
t184 = -pkin(3) * t242 - pkin(9) * t426;
t167 = pkin(2) * t364 + t184;
t437 = t294 * t167 + t440 * t298;
t436 = t422 ^ 2 - t78 ^ 2;
t420 = pkin(10) * t323;
t283 = -pkin(2) * t299 - pkin(1);
t269 = t283 * qJD(1);
t161 = -pkin(3) * t426 + t242 * pkin(9) + t269;
t246 = t411 * t265;
t403 = qJD(2) * pkin(2);
t247 = t263 + t403;
t189 = t295 * t247 - t246;
t169 = pkin(9) * t288 + t189;
t108 = t161 * t294 + t169 * t298;
t87 = -qJ(5) * t205 + t108;
t401 = t292 * t87;
t107 = t298 * t161 - t169 * t294;
t86 = qJ(5) * t322 + t107;
t73 = pkin(4) * t233 + t86;
t48 = t291 * t73 + t401;
t27 = t48 + t420;
t26 = t27 * t359;
t261 = t296 * t411 + t378;
t200 = t288 * t261;
t183 = t200 * qJD(1);
t358 = qJD(1) * qJD(2);
t344 = t296 * t358;
t118 = pkin(2) * t344 + pkin(3) * t183 - pkin(9) * t182;
t113 = t298 * t118;
t351 = qJD(2) * t412;
t334 = qJD(1) * t351;
t249 = t296 * t334;
t250 = t299 * t334;
t363 = qJD(3) * t295;
t123 = t247 * t345 + t249 * t411 + t295 * t250 + t265 * t363;
t303 = -qJD(4) * t108 - t294 * t123 + t113;
t22 = t183 * pkin(4) - t131 * qJ(5) + qJD(5) * t322 + t303;
t307 = t294 * t118 + t298 * t123 + t161 * t360 - t169 * t361;
t24 = -qJ(5) * t132 - qJD(5) * t205 + t307;
t8 = t292 * t22 - t24 * t291;
t3 = pkin(5) * t183 - pkin(10) * t67 + t8;
t188 = t247 * t411 + t245;
t168 = -t288 * pkin(3) - t188;
t128 = t205 * pkin(4) + qJD(5) + t168;
t74 = -pkin(5) * t323 + t128;
t435 = -t293 * t3 - t74 * t78 + t26;
t17 = qJD(6) * t422 + t293 * t67 - t297 * t66;
t399 = t422 * t220;
t433 = -t17 + t399;
t160 = t298 * t167;
t287 = t298 * qJ(5);
t332 = -t242 * pkin(4) - t287 * t426;
t281 = pkin(2) * t295 + pkin(9);
t372 = -qJ(5) - t281;
t337 = qJD(4) * t372;
t432 = t298 * t337 - t160 - t332 + (-qJD(5) + t440) * t294;
t338 = t298 * t184 - t188 * t294;
t404 = -qJ(5) - pkin(9);
t340 = qJD(4) * t404;
t431 = -t294 * qJD(5) + t298 * t340 - t332 - t338;
t430 = -t294 * t337 + t437 + t438;
t369 = t294 * t184 + t298 * t188;
t429 = -t294 * t340 + t369 + t438;
t9 = t291 * t22 + t292 * t24;
t4 = pkin(10) * t66 + t9;
t352 = -t293 * t4 + t297 * t3;
t425 = -t74 * t422 + t352;
t424 = pkin(10) * t137;
t191 = t256 * t297 - t293 * t320;
t371 = -qJD(6) * t191 + t293 * t427 - t297 * t428;
t321 = -t256 * t293 - t297 * t320;
t370 = -qJD(6) * t321 + t293 * t428 + t297 * t427;
t195 = t295 * t263 - t246;
t333 = pkin(2) * t363 - t195;
t313 = -t295 * t296 + t299 * t411;
t199 = t288 * t313;
t348 = t261 * t360;
t423 = t199 * t294 + t348;
t421 = -0.2e1 * t358;
t398 = t291 * t430 + t292 * t432;
t397 = t291 * t432 - t292 * t430;
t396 = t291 * t429 + t292 * t431;
t395 = t291 * t431 - t292 * t429;
t418 = t428 * pkin(10);
t284 = pkin(4) * t361;
t417 = pkin(5) * t428 + t284;
t217 = pkin(4) * t386;
t416 = -t217 + t333;
t415 = -t242 * pkin(5) - pkin(10) * t427;
t414 = t411 * t270 + t295 * t271;
t413 = qJD(1) * t261;
t410 = pkin(4) * t291;
t408 = pkin(10) * t256;
t406 = t320 * pkin(5);
t405 = t298 * pkin(4);
t357 = t296 * t403;
t127 = pkin(3) * t200 - pkin(9) * t199 + t357;
t126 = t298 * t127;
t264 = t296 * t351;
t266 = t299 * t351;
t143 = qJD(3) * t414 + t411 * t264 + t295 * t266;
t187 = -pkin(3) * t313 - pkin(9) * t261 + t283;
t209 = t295 * t270 - t271 * t411;
t202 = t298 * t209;
t319 = -qJ(5) * t199 - qJD(5) * t261;
t34 = t200 * pkin(4) - t294 * t143 + t126 + t319 * t298 + (-t202 + (qJ(5) * t261 - t187) * t294) * qJD(4);
t355 = t294 * t127 + t298 * t143 + t187 * t360;
t44 = -qJ(5) * t348 + (-qJD(4) * t209 + t319) * t294 + t355;
t15 = t291 * t34 + t292 * t44;
t80 = t291 * t87;
t51 = t292 * t86 - t80;
t47 = t292 * t73 - t80;
t25 = pkin(5) * t233 + t424 + t47;
t400 = t297 * t25;
t177 = t298 * t187;
t101 = -pkin(4) * t313 - t209 * t294 - t261 * t287 + t177;
t366 = t294 * t187 + t202;
t384 = t261 * t294;
t116 = -qJ(5) * t384 + t366;
t61 = t291 * t101 + t292 * t116;
t354 = t217 + t189;
t394 = -t354 + t417;
t393 = t131 * t294;
t392 = t168 * t426;
t390 = t205 * t233;
t389 = t322 * t233;
t388 = t220 * t242;
t387 = t233 * t242;
t385 = t242 * t426;
t383 = t261 * t298;
t379 = t294 * t183;
t376 = t298 * t183;
t301 = qJD(1) ^ 2;
t375 = t299 * t301;
t300 = qJD(2) ^ 2;
t374 = t300 * t296;
t373 = t300 * t299;
t367 = t416 + t417;
t251 = t372 * t294;
t252 = t281 * t298 + t287;
t180 = t291 * t251 + t292 * t252;
t267 = t404 * t294;
t268 = pkin(9) * t298 + t287;
t204 = t291 * t267 + t292 * t268;
t365 = t296 ^ 2 - t299 ^ 2;
t362 = qJD(4) * t261;
t353 = -pkin(3) - t405;
t158 = t168 * t360;
t342 = qJD(6) * t25 + t4;
t14 = -t291 * t44 + t292 * t34;
t50 = -t291 * t86 - t401;
t60 = t292 * t101 - t116 * t291;
t339 = pkin(1) * t421;
t179 = t292 * t251 - t252 * t291;
t203 = t292 * t267 - t268 * t291;
t336 = t233 * t298;
t124 = t247 * t363 + t295 * t249 - t411 * t250 - t265 * t345;
t282 = -pkin(2) * t411 - pkin(3);
t248 = t320 * pkin(10);
t148 = -t248 + t180;
t331 = qJD(6) * t148 - t398 + t415;
t147 = t179 - t408;
t330 = -qJD(6) * t147 - t397 + t418;
t165 = -t248 + t204;
t329 = qJD(6) * t165 - t396 + t415;
t164 = t203 - t408;
t328 = -qJD(6) * t164 - t395 + t418;
t327 = -t108 * t242 + t124 * t294 + t158;
t13 = t293 * t25 + t297 * t27;
t325 = -t183 * t281 - t392;
t172 = t256 * t261;
t173 = t320 * t261;
t324 = -t297 * t172 + t173 * t293;
t115 = -t172 * t293 - t173 * t297;
t317 = pkin(4) * t384 - t414;
t279 = pkin(4) * t292 + pkin(5);
t316 = t279 * t293 + t297 * t410;
t315 = t279 * t297 - t293 * t410;
t314 = t107 * t242 - t124 * t298 + t168 * t361;
t312 = t199 * t298 - t261 * t361;
t68 = pkin(4) * t132 + t124;
t311 = t282 - t405;
t12 = -t27 * t293 + t400;
t38 = -pkin(5) * t66 + t68;
t310 = t12 * t242 - t38 * t321 - t371 * t74;
t309 = -t13 * t242 + t38 * t191 - t370 * t74;
t308 = t269 * t242 - t124;
t144 = t295 * t264 - t266 * t411 + t270 * t363 - t271 * t345;
t306 = -t8 * t256 - t9 * t320 + t427 * t47 - t428 * t48;
t305 = pkin(4) * t423 + t144;
t302 = -t269 * t426 - t123;
t213 = t353 + t406;
t210 = t311 + t406;
t150 = t242 ^ 2 - t426 ^ 2;
t149 = t183 * t313;
t146 = (-t242 - t413) * t288;
t117 = t172 * pkin(5) + t317;
t106 = -pkin(4) * t322 - pkin(5) * t137;
t93 = t199 * t320 + t256 * t362;
t92 = -t199 * t256 + t320 * t362;
t72 = t233 * t336 - t242 * t322 + t379;
t71 = -t233 ^ 2 * t294 - t205 * t242 + t376;
t62 = -t322 * t336 + t393;
t53 = -t92 * pkin(5) + t305;
t52 = -pkin(10) * t172 + t61;
t49 = -pkin(5) * t313 + pkin(10) * t173 + t60;
t37 = (t131 - t390) * t298 + (-t132 + t389) * t294;
t36 = t51 + t424;
t35 = t50 - t420;
t31 = qJD(6) * t115 - t293 * t93 - t297 * t92;
t30 = qJD(6) * t324 + t293 * t92 - t297 * t93;
t19 = t183 * t321 + t220 * t371 + t242 * t78;
t18 = t191 * t183 - t220 * t370 + t242 * t422;
t11 = pkin(10) * t92 + t15;
t10 = pkin(5) * t200 + pkin(10) * t93 + t14;
t5 = t16 * t191 - t370 * t422;
t1 = t16 * t321 - t191 * t17 - t370 * t78 + t371 * t422;
t2 = [0, 0, 0, 0.2e1 * t299 * t344, t365 * t421, t373, -t374, 0, -pkin(7) * t373 + t296 * t339, pkin(7) * t374 + t299 * t339, t182 * t261 - t199 * t242, t182 * t313 - t183 * t261 + t199 * t426 + t200 * t242, t199 * t288, -t200 * t288, 0, -t144 * t288 + t283 * t183 + t269 * t200 + (-qJD(1) * t313 - t426) * t357, -t143 * t288 + t283 * t182 + t269 * t199 + (-t242 + t413) * t357, t131 * t383 - t312 * t322 (-t205 * t298 + t294 * t322) * t199 + (-t393 - t132 * t298 + (t205 * t294 + t298 * t322) * qJD(4)) * t261, -t131 * t313 - t200 * t322 + t233 * t312 + t261 * t376, t132 * t313 - t205 * t200 - t233 * t423 - t261 * t379, t200 * t233 - t149 (-t209 * t360 + t126) * t233 + t177 * t183 - (-t169 * t360 + t113) * t313 + t107 * t200 + t144 * t205 - t414 * t132 + t261 * t158 + ((-qJD(4) * t187 - t143) * t233 - t209 * t183 - (-qJD(4) * t161 - t123) * t313 + t124 * t261 + t168 * t199) * t294 -(-t209 * t361 + t355) * t233 - t366 * t183 + t307 * t313 - t108 * t200 - t144 * t322 - t414 * t131 + t124 * t383 + t312 * t168, t137 * t14 + t15 * t323 - t172 * t9 + t173 * t8 + t47 * t93 + t48 * t92 - t60 * t67 + t61 * t66, t128 * t305 + t47 * t14 + t48 * t15 + t317 * t68 + t8 * t60 + t9 * t61, t115 * t16 + t30 * t422, -t115 * t17 + t16 * t324 + t30 * t78 - t31 * t422, t115 * t183 - t16 * t313 + t200 * t422 + t220 * t30, t17 * t313 + t183 * t324 + t200 * t78 - t220 * t31, t200 * t220 - t149 (t297 * t10 - t293 * t11) * t220 + (-t293 * t52 + t297 * t49) * t183 - t352 * t313 + t12 * t200 - t53 * t78 + t117 * t17 - t38 * t324 + t74 * t31 + ((-t293 * t49 - t297 * t52) * t220 + t13 * t313) * qJD(6), t38 * t115 + t117 * t16 - t13 * t200 - t26 * t313 + t74 * t30 + t53 * t422 + (-(-qJD(6) * t52 + t10) * t220 - t49 * t183 + t3 * t313) * t293 + (-(qJD(6) * t49 + t11) * t220 - t52 * t183 + t342 * t313) * t297; 0, 0, 0, -t296 * t375, t365 * t301, 0, 0, 0, t301 * pkin(1) * t296, pkin(1) * t375, t385, t150, 0, t146, 0, t195 * t288 + (-t288 * t363 + t364 * t426) * pkin(2) + t308, t196 * t288 + (t242 * t364 - t288 * t345) * pkin(2) + t302, t62, t37, t72, t71, t387, t282 * t132 + t325 * t294 + t333 * t205 + (-t281 * t360 + t294 * t440 - t160) * t233 + t314, t282 * t131 + t325 * t298 - t333 * t322 + (t281 * t361 + t437) * t233 + t327, t137 * t398 - t179 * t67 + t180 * t66 + t323 * t397 + t306, t9 * t180 + t8 * t179 + t68 * t311 + t397 * t48 + t398 * t47 + (t284 + t416) * t128, t5, t1, t18, t19, t388 (t147 * t297 - t148 * t293) * t183 + t210 * t17 - t367 * t78 + (t293 * t330 - t297 * t331) * t220 + t310 -(t147 * t293 + t148 * t297) * t183 + t210 * t16 + t367 * t422 + (t293 * t331 + t297 * t330) * t220 + t309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t385, t150, 0, t146, 0, t189 * t288 + t308, t188 * t288 + t302, t62, t37, t72, t71, t387, -pkin(3) * t132 - t338 * t233 - t189 * t205 - t168 * t386 + (-t233 * t360 - t379) * pkin(9) + t314, -pkin(3) * t131 + t369 * t233 + t189 * t322 - t298 * t392 + (t233 * t361 - t376) * pkin(9) + t327, t137 * t396 - t203 * t67 + t204 * t66 + t323 * t395 + t306, t9 * t204 + t8 * t203 + t68 * t353 + t395 * t48 + t396 * t47 + (-t354 + t284) * t128, t5, t1, t18, t19, t388 (t164 * t297 - t165 * t293) * t183 + t213 * t17 - t394 * t78 + (t293 * t328 - t297 * t329) * t220 + t310 -(t164 * t293 + t165 * t297) * t183 + t213 * t16 + t394 * t422 + (t293 * t329 + t297 * t328) * t220 + t309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t322 * t205, -t205 ^ 2 + t322 ^ 2, t131 + t390, -t132 - t389, t183, t108 * t233 + t168 * t322 + t303, t107 * t233 + t168 * t205 - t307 (t291 * t66 - t292 * t67) * pkin(4) + (-t51 + t47) * t323 + (-t48 - t50) * t137, -t47 * t50 - t48 * t51 + (t128 * t322 + t291 * t9 + t292 * t8) * pkin(4), -t439, t436, t441, t433, t183, t315 * t183 - (-t293 * t36 + t297 * t35) * t220 + t106 * t78 + (-t220 * t316 - t13) * qJD(6) + t425, -t316 * t183 - t297 * t4 + (t293 * t35 + t297 * t36) * t220 - t106 * t422 + (-t220 * t315 - t400) * qJD(6) + t435; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t137 ^ 2 - t323 ^ 2, -t137 * t47 - t323 * t48 + t68, 0, 0, 0, 0, 0, t17 + t399, t16 + t402; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t439, t436, t441, t433, t183 (-qJD(6) + t220) * t13 + t425, t12 * t220 - t297 * t342 + t435;];
tauc_reg  = t2;
