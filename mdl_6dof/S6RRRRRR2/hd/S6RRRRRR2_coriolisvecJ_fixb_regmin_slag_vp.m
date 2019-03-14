% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% tauc_reg [6x38]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 03:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRRR2_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 03:35:48
% EndTime: 2019-03-10 03:36:08
% DurationCPUTime: 8.29s
% Computational Cost: add. (13266->479), mult. (33022->643), div. (0->0), fcn. (26050->10), ass. (0->276)
t267 = sin(qJ(3));
t268 = sin(qJ(2));
t354 = qJD(1) * t268;
t333 = t267 * t354;
t272 = cos(qJ(3));
t273 = cos(qJ(2));
t353 = qJD(1) * t273;
t336 = t272 * t353;
t209 = -t333 + t336;
t210 = -t267 * t353 - t272 * t354;
t266 = sin(qJ(4));
t271 = cos(qJ(4));
t178 = t271 * t209 + t210 * t266;
t415 = qJD(5) + qJD(6);
t444 = -t178 + t415;
t264 = sin(qJ(6));
t265 = sin(qJ(5));
t269 = cos(qJ(6));
t270 = cos(qJ(5));
t223 = t264 * t265 - t269 * t270;
t443 = t444 * t223;
t368 = t264 * t270;
t225 = t265 * t269 + t368;
t442 = t444 * t225;
t348 = qJD(5) * t270;
t435 = t178 * t270;
t441 = t348 - t435;
t436 = t178 * t265;
t343 = pkin(11) * t436;
t206 = t210 * pkin(9);
t408 = pkin(7) + pkin(8);
t240 = t408 * t273;
t229 = qJD(1) * t240;
t211 = t267 * t229;
t238 = t408 * t268;
t227 = qJD(1) * t238;
t396 = qJD(2) * pkin(2);
t217 = -t227 + t396;
t319 = t272 * t217 - t211;
t152 = t206 + t319;
t261 = qJD(2) + qJD(3);
t140 = pkin(3) * t261 + t152;
t215 = t272 * t229;
t296 = -t217 * t267 - t215;
t403 = pkin(9) * t209;
t153 = -t296 + t403;
t351 = qJD(4) * t266;
t344 = qJD(1) * qJD(2);
t332 = t273 * t344;
t183 = qJD(3) * t336 - t261 * t333 + t272 * t332;
t338 = qJD(2) * t408;
t310 = qJD(1) * t338;
t218 = t268 * t310;
t219 = t273 * t310;
t318 = t267 * t218 - t272 * t219;
t278 = qJD(3) * t296 + t318;
t95 = -pkin(9) * t183 + t278;
t323 = -t153 * t351 + t266 * t95;
t226 = t267 * t273 + t268 * t272;
t416 = qJD(1) * t226;
t276 = t261 * t416;
t352 = qJD(3) * t267;
t317 = -t267 * t219 - t229 * t352;
t420 = t272 * (qJD(3) * t217 - t218);
t94 = -pkin(9) * t276 + t317 + t420;
t26 = (qJD(4) * t140 + t94) * t271 + t323;
t255 = -pkin(2) * t273 - pkin(1);
t236 = t255 * qJD(1);
t191 = -pkin(3) * t209 + t236;
t377 = t178 * t191;
t440 = -t26 - t377;
t350 = qJD(4) * t271;
t148 = t266 * t153;
t97 = t152 * t271 - t148;
t437 = -pkin(3) * t350 + t97;
t316 = t227 * t267 - t215;
t158 = t316 - t403;
t356 = -t272 * t227 - t211;
t159 = t206 + t356;
t253 = pkin(2) * t272 + pkin(3);
t366 = t266 * t267;
t359 = t158 * t266 + t159 * t271 - t253 * t350 - (-t267 * t351 + (t271 * t272 - t366) * qJD(3)) * pkin(2);
t297 = t209 * t266 - t271 * t210;
t131 = pkin(4) * t297 - pkin(10) * t178;
t406 = pkin(3) * t210;
t115 = t131 - t406;
t256 = pkin(2) * t354;
t110 = t115 + t256;
t439 = -t270 * t110 + t265 * t359;
t349 = qJD(5) * t265;
t419 = (t349 - t436) * pkin(5);
t307 = pkin(5) * t297 - pkin(11) * t435;
t345 = -qJD(5) + t178;
t259 = qJD(4) + t261;
t156 = t259 * t265 + t270 * t297;
t107 = -pkin(4) * t178 - pkin(10) * t297 + t191;
t149 = t271 * t153;
t89 = t266 * t140 + t149;
t84 = pkin(10) * t259 + t89;
t51 = t270 * t107 - t265 * t84;
t38 = -pkin(11) * t156 + t51;
t30 = -pkin(5) * t345 + t38;
t154 = -t270 * t259 + t265 * t297;
t52 = t107 * t265 + t270 * t84;
t39 = -pkin(11) * t154 + t52;
t393 = t269 * t39;
t10 = t264 * t30 + t393;
t27 = t140 * t351 + t153 * t350 + t266 * t94 - t271 * t95;
t85 = t271 * t183 + t209 * t350 + t210 * t351 - t266 * t276;
t394 = t265 * t85;
t63 = qJD(5) * t156 + t394;
t13 = pkin(5) * t63 + t27;
t88 = t140 * t271 - t148;
t83 = -pkin(4) * t259 - t88;
t64 = pkin(5) * t154 + t83;
t286 = t10 * t297 + t13 * t225 - t443 * t64;
t9 = -t264 * t39 + t269 * t30;
t287 = t13 * t223 - t9 * t297 + t442 * t64;
t438 = -t270 * t115 + t265 * t437;
t62 = t259 * t348 + t270 * t85 - t297 * t349;
t60 = t62 * t265;
t31 = t156 * t441 + t60;
t165 = qJD(6) - t345;
t298 = t154 * t264 - t269 * t156;
t86 = qJD(4) * t297 + t183 * t266 + t271 * t276;
t14 = -t165 * t443 + t225 * t86 + t297 * t298;
t100 = t269 * t154 + t156 * t264;
t15 = t100 * t297 - t165 * t442 - t223 * t86;
t346 = qJD(6) * t269;
t347 = qJD(6) * t264;
t19 = -t154 * t346 - t156 * t347 - t264 * t63 + t269 * t62;
t7 = t19 * t225 + t298 * t443;
t388 = t265 * t86 - t345 * t348;
t29 = -t156 * t297 + t345 * t435 + t388;
t430 = t345 * t265;
t82 = t270 * t86;
t28 = t154 * t297 - t345 * t430 + t82;
t280 = qJD(6) * t298 - t264 * t62 - t269 * t63;
t1 = t100 * t443 - t19 * t223 + t225 * t280 + t442 * t298;
t8 = -t154 * t441 + t156 * t430 - t265 * t63 + t62 * t270;
t374 = t297 * t178;
t431 = t298 * t100;
t68 = -t178 ^ 2 + t297 ^ 2;
t429 = -t100 ^ 2 + t298 ^ 2;
t34 = t39 * t347;
t428 = t100 * t64 + t34;
t427 = t100 * t165 + t19;
t65 = -t178 * t259 + t85;
t160 = pkin(3) * t276 + qJD(2) * t256;
t37 = t86 * pkin(4) - t85 * pkin(10) + t160;
t36 = t270 * t37;
t281 = -qJD(5) * t52 - t26 * t265 + t36;
t3 = pkin(5) * t86 - pkin(11) * t62 + t281;
t292 = t107 * t348 + t270 * t26 + t265 * t37 - t349 * t84;
t4 = -pkin(11) * t63 + t292;
t339 = -t264 * t4 + t269 * t3;
t426 = -qJD(6) * t10 + t64 * t298 + t339;
t425 = -t165 * t298 + t280;
t423 = -0.2e1 * t344;
t328 = -t27 * t270 + t83 * t349;
t96 = t152 * t266 + t149;
t309 = pkin(3) * t351 - t96;
t382 = t165 * t297;
t380 = t345 * t297;
t224 = t267 * t268 - t272 * t273;
t186 = -t224 * t266 + t226 * t271;
t132 = t225 * t186;
t369 = t238 * t272;
t168 = -pkin(9) * t226 - t240 * t267 - t369;
t295 = t238 * t267 - t240 * t272;
t169 = -pkin(9) * t224 - t295;
t127 = -t168 * t271 + t266 * t169;
t365 = t267 * t271;
t357 = t158 * t271 - t159 * t266 + t253 * t351 + (t267 * t350 + (t266 * t272 + t365) * qJD(3)) * pkin(2);
t418 = t265 * t110 + t270 * t359;
t417 = t265 * t115 + t270 * t437;
t289 = -t191 * t297 - t27;
t294 = -t51 * t297 + t328;
t311 = t27 * t265 + t52 * t297 + t83 * t348;
t66 = t259 * t297 - t86;
t407 = -pkin(10) - pkin(11);
t405 = pkin(3) * t271;
t404 = pkin(5) * t270;
t205 = pkin(2) * t365 + t253 * t266 + pkin(10);
t402 = -pkin(11) - t205;
t251 = pkin(3) * t266 + pkin(10);
t401 = -pkin(11) - t251;
t395 = t178 * t83;
t387 = t419 + t357;
t386 = t419 + t309;
t385 = t265 * t131 + t270 * t88;
t185 = t271 * t224 + t226 * t266;
t189 = t261 * t224;
t284 = t226 * qJD(3);
t190 = qJD(2) * t226 + t284;
t111 = -qJD(4) * t185 - t189 * t271 - t190 * t266;
t383 = t111 * t270;
t373 = t186 * t265;
t372 = t186 * t270;
t371 = t210 * t209;
t370 = t236 * t210;
t367 = t265 * t111;
t128 = t168 * t266 + t169 * t271;
t121 = t270 * t128;
t275 = qJD(1) ^ 2;
t363 = t273 * t275;
t274 = qJD(2) ^ 2;
t362 = t274 * t268;
t361 = t274 * t273;
t199 = pkin(3) * t224 + t255;
t126 = pkin(4) * t185 - pkin(10) * t186 + t199;
t358 = t265 * t126 + t121;
t355 = t268 ^ 2 - t273 ^ 2;
t258 = t268 * t396;
t254 = -pkin(4) - t404;
t337 = qJD(5) * t407;
t335 = t186 * t349;
t334 = t186 * t348;
t331 = -pkin(2) * t261 - t217;
t180 = pkin(3) * t190 + t258;
t330 = qJD(6) * t30 + t4;
t327 = qJD(5) * t402;
t326 = qJD(5) * t401;
t324 = t270 * t131 - t265 * t88;
t322 = pkin(1) * t423;
t308 = t419 - t89;
t204 = pkin(2) * t366 - t253 * t271 - pkin(4);
t192 = t402 * t265;
t306 = -qJD(6) * t192 - t265 * t327 - t343 + t418;
t260 = t270 * pkin(11);
t193 = t205 * t270 + t260;
t305 = qJD(6) * t193 - t270 * t327 + t307 - t439;
t220 = t401 * t265;
t304 = -qJD(6) * t220 - t265 * t326 - t343 + t417;
t221 = t251 * t270 + t260;
t303 = qJD(6) * t221 - t270 * t326 + t307 - t438;
t237 = t407 * t265;
t302 = -qJD(6) * t237 - t265 * t337 - t343 + t385;
t239 = pkin(10) * t270 + t260;
t301 = qJD(6) * t239 - t270 * t337 + t307 + t324;
t300 = -t205 * t86 - t395;
t299 = -t251 * t86 - t395;
t293 = -t236 * t209 - t317;
t291 = t334 + t367;
t290 = -t335 + t383;
t228 = t268 * t338;
t230 = t273 * t338;
t285 = -qJD(3) * t369 - t272 * t228 - t267 * t230 - t240 * t352;
t119 = -pkin(9) * t190 + t285;
t277 = qJD(3) * t295 + t228 * t267 - t272 * t230;
t120 = pkin(9) * t189 + t277;
t42 = -qJD(4) * t127 + t119 * t271 + t120 * t266;
t112 = qJD(4) * t186 - t189 * t266 + t271 * t190;
t49 = pkin(4) * t112 - pkin(10) * t111 + t180;
t288 = t126 * t348 - t128 * t349 + t265 * t49 + t270 * t42;
t43 = qJD(4) * t128 + t119 * t266 - t120 * t271;
t252 = -pkin(4) - t405;
t234 = t254 - t405;
t197 = t204 - t404;
t196 = t256 - t406;
t157 = -t209 ^ 2 + t210 ^ 2;
t144 = -t210 * t261 - t276;
t143 = -t209 * t261 + t183;
t133 = t223 * t186;
t118 = t270 * t126;
t79 = pkin(5) * t373 + t127;
t69 = t86 * t185;
t53 = -pkin(11) * t373 + t358;
t48 = t270 * t49;
t46 = pkin(5) * t185 - pkin(11) * t372 - t128 * t265 + t118;
t23 = t111 * t368 - t264 * t335 - t347 * t373 + (t372 * t415 + t367) * t269;
t22 = -t223 * t111 - t132 * t415;
t21 = pkin(5) * t291 + t43;
t6 = -pkin(11) * t291 + t288;
t5 = -pkin(11) * t383 + pkin(5) * t112 - t265 * t42 + t48 + (-t121 + (pkin(11) * t186 - t126) * t265) * qJD(5);
t2 = [0, 0, 0, 0.2e1 * t268 * t332, t355 * t423, t361, -t362, 0, -pkin(7) * t361 + t268 * t322, pkin(7) * t362 + t273 * t322, t183 * t226 + t189 * t210, -t183 * t224 - t189 * t209 + t210 * t190 - t226 * t276, -t189 * t261, -t190 * t261, 0, -t209 * t258 + t236 * t190 + t277 * t261 + (t255 * t284 + (t268 * pkin(2) * t224 + t226 * t255) * qJD(2)) * qJD(1), t255 * t183 - t236 * t189 - t285 * t261 + (-t210 + t416) * t258, t111 * t297 + t186 * t85, t111 * t178 - t112 * t297 - t185 * t85 - t186 * t86, t111 * t259, -t112 * t259, 0, t112 * t191 + t160 * t185 - t178 * t180 + t199 * t86 - t259 * t43, t111 * t191 + t160 * t186 + t180 * t297 + t199 * t85 - t259 * t42, t156 * t290 + t372 * t62 (-t154 * t270 - t156 * t265) * t111 + (-t60 - t270 * t63 + (t154 * t265 - t156 * t270) * qJD(5)) * t186, t112 * t156 + t185 * t62 - t290 * t345 + t372 * t86, -t112 * t154 - t185 * t63 + t291 * t345 - t373 * t86, -t112 * t345 + t69 -(-t128 * t348 + t48) * t345 + t118 * t86 + (-t348 * t84 + t36) * t185 + t51 * t112 + t43 * t154 + t127 * t63 + t83 * t334 + (-(-qJD(5) * t126 - t42) * t345 - t128 * t86 + (-qJD(5) * t107 - t26) * t185 + t27 * t186 + t83 * t111) * t265, -t52 * t112 + t127 * t62 + t43 * t156 - t292 * t185 - t186 * t328 + t288 * t345 - t358 * t86 + t83 * t383, -t133 * t19 - t22 * t298, -t100 * t22 - t132 * t19 - t133 * t280 + t23 * t298, -t112 * t298 - t133 * t86 + t165 * t22 + t185 * t19, -t100 * t112 - t132 * t86 - t165 * t23 + t185 * t280, t112 * t165 + t69 (-t264 * t6 + t269 * t5) * t165 + (-t264 * t53 + t269 * t46) * t86 + t339 * t185 + t9 * t112 + t21 * t100 - t79 * t280 + t13 * t132 + t64 * t23 + ((-t264 * t46 - t269 * t53) * t165 - t10 * t185) * qJD(6), -t10 * t112 - t21 * t298 - t13 * t133 + t34 * t185 + t79 * t19 + t64 * t22 + (-(-qJD(6) * t53 + t5) * t165 - t46 * t86 - t3 * t185) * t264 + (-(qJD(6) * t46 + t6) * t165 - t53 * t86 - t330 * t185) * t269; 0, 0, 0, -t268 * t363, t355 * t275, 0, 0, 0, t275 * pkin(1) * t268, pkin(1) * t363, t371, t157, t143, t144, 0, t209 * t256 + t370 - t316 * t261 + (t267 * t331 - t215) * qJD(3) + t318, t210 * t256 + t356 * t261 + (qJD(3) * t331 + t218) * t272 + t293, -t374, t68, t65, t66, 0, t178 * t196 - t259 * t357 + t289, -t196 * t297 + t259 * t359 + t440, t31, t8, t29, t28, t380, t204 * t63 + t300 * t265 + t357 * t154 - (-t205 * t348 + t439) * t345 + t294, t204 * t62 + t300 * t270 + t357 * t156 - (t205 * t349 + t418) * t345 + t311, t7, t1, t14, t15, -t382 (t192 * t269 - t193 * t264) * t86 - t197 * t280 + (t264 * t306 - t269 * t305) * t165 + t387 * t100 + t287 -(t192 * t264 + t193 * t269) * t86 + t197 * t19 + (t264 * t305 + t269 * t306) * t165 - t387 * t298 + t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t371, t157, t143, t144, 0, -t261 * t296 + t278 + t370, t261 * t319 + t293 - t420, -t374, t68, t65, t66, 0, t259 * t96 + (-t178 * t210 - t259 * t351) * pkin(3) + t289, t297 * t406 - t377 + t259 * t97 + (-t94 + (-pkin(3) * t259 - t140) * qJD(4)) * t271 - t323, t31, t8, t29, t28, t380, t252 * t63 + t299 * t265 + t309 * t154 - (-t251 * t348 + t438) * t345 + t294, t252 * t62 + t299 * t270 + t309 * t156 - (t251 * t349 + t417) * t345 + t311, t7, t1, t14, t15, -t382 (t220 * t269 - t221 * t264) * t86 - t234 * t280 + (t264 * t304 - t269 * t303) * t165 + t386 * t100 + t287 -(t220 * t264 + t221 * t269) * t86 + t234 * t19 + (t264 * t303 + t269 * t304) * t165 - t386 * t298 + t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t374, t68, t65, t66, 0, t259 * t89 + t289, t259 * t88 + t440, t31, t8, t29, t28, t380, -pkin(4) * t63 - pkin(10) * t388 - t89 * t154 + t324 * t345 - t436 * t83 + t294, -pkin(4) * t62 - t385 * t345 - t89 * t156 - t83 * t435 + (-t345 * t349 - t82) * pkin(10) + t311, t7, t1, t14, t15, -t382 (t237 * t269 - t239 * t264) * t86 - t254 * t280 + (t264 * t302 - t269 * t301) * t165 + t308 * t100 + t287 -(t237 * t264 + t239 * t269) * t86 + t254 * t19 + (t264 * t301 + t269 * t302) * t165 - t308 * t298 + t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156 * t154, -t154 ^ 2 + t156 ^ 2, -t154 * t345 + t62, -t394 + (-qJD(5) - t345) * t156, t86, -t156 * t83 - t345 * t52 + t281, t154 * t83 - t345 * t51 - t292, -t431, t429, t427, t425, t86 -(-t264 * t38 - t393) * t165 + (-t100 * t156 - t165 * t347 + t269 * t86) * pkin(5) + t426 (-t165 * t39 - t3) * t264 + (t165 * t38 - t330) * t269 + (t156 * t298 - t165 * t346 - t264 * t86) * pkin(5) + t428; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t431, t429, t427, t425, t86, t10 * t165 + t426, t165 * t9 - t264 * t3 - t269 * t330 + t428;];
tauc_reg  = t2;