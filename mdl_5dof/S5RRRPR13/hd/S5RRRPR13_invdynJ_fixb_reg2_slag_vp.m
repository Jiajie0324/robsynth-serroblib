% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S5RRRPR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d5]';
% 
% Output:
% tau_reg [5x(5*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S5RRRPR13_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR13_invdynJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR13_invdynJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR13_invdynJ_fixb_reg2_slag_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR13_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR13_invdynJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:46:39
% EndTime: 2019-12-31 21:46:59
% DurationCPUTime: 9.12s
% Computational Cost: add. (8385->629), mult. (20949->824), div. (0->0), fcn. (16140->10), ass. (0->295)
t211 = sin(qJ(3));
t216 = cos(qJ(2));
t209 = sin(pkin(5));
t350 = qJD(1) * t209;
t326 = t216 * t350;
t298 = t211 * t326;
t347 = qJD(3) * t211;
t422 = -qJD(4) * t211 + (-t298 + t347) * pkin(3);
t212 = sin(qJ(2));
t375 = cos(pkin(5));
t314 = t212 * t375;
t202 = pkin(1) * t314;
t215 = cos(qJ(3));
t372 = qJ(4) * t215;
t274 = pkin(9) * t211 - t372;
t360 = t209 * t216;
t421 = qJD(3) * t274 - (t202 + (pkin(7) + t274) * t360) * qJD(1) + t422;
t400 = pkin(4) + pkin(8);
t184 = t400 * t215;
t357 = t215 * t216;
t401 = pkin(3) + pkin(9);
t309 = t375 * qJD(1);
t295 = pkin(1) * t309;
t327 = t212 * t350;
t142 = -pkin(7) * t327 + t216 * t295;
t287 = pkin(2) * t212 - pkin(8) * t216;
t143 = t287 * t350;
t77 = -t211 * t142 + t143 * t215;
t420 = qJD(3) * t184 - (pkin(4) * t357 - t401 * t212) * t350 + t77;
t265 = -pkin(2) * t216 - pkin(8) * t212 - pkin(1);
t239 = t265 * t350;
t304 = t375 * qJDD(1);
t263 = t304 + qJDD(2);
t341 = qJD(1) * qJD(2);
t320 = t209 * t341;
t293 = t212 * t320;
t340 = qJDD(1) * t216;
t194 = t209 * t340;
t264 = qJD(2) * t295;
t290 = pkin(1) * t304;
t330 = pkin(7) * t194 + t212 * t290 + t216 * t264;
t83 = -pkin(7) * t293 + t330;
t419 = pkin(8) * t263 + qJD(3) * t239 + t83;
t267 = t309 + qJD(2);
t124 = t211 * t267 + t215 * t327;
t181 = -qJD(3) + t326;
t369 = t124 * t181;
t246 = qJD(3) * t267;
t338 = t212 * qJDD(1);
t345 = qJD(3) * t215;
t348 = qJD(2) * t216;
t57 = (qJD(1) * (t211 * t348 + t212 * t345) + t211 * t338) * t209 + t211 * t246 - t215 * t263;
t418 = t57 + t369;
t353 = pkin(7) * t360 + t202;
t138 = t375 * pkin(8) + t353;
t108 = qJD(2) * pkin(8) + t138 * qJD(1);
t54 = t108 * t211 - t215 * t239;
t356 = -qJD(4) - t54;
t319 = t209 * t338;
t417 = t216 * t320 + t319;
t313 = t216 * t375;
t363 = t209 * t212;
t160 = pkin(1) * t313 - pkin(7) * t363;
t146 = qJD(2) * t160;
t213 = sin(qJ(1));
t399 = cos(qJ(1));
t289 = t375 * t399;
t156 = t212 * t213 - t216 * t289;
t210 = sin(qJ(5));
t214 = cos(qJ(5));
t157 = t212 * t289 + t213 * t216;
t329 = t209 * t399;
t98 = t157 * t211 + t215 * t329;
t416 = t156 * t214 + t210 * t98;
t415 = -t156 * t210 + t214 * t98;
t206 = t209 ^ 2;
t414 = 0.2e1 * t206;
t355 = pkin(4) * t124 - t356;
t28 = t401 * t181 + t355;
t122 = t211 * t327 - t215 * t267;
t107 = -pkin(2) * t267 - t142;
t221 = -t124 * qJ(4) + t107;
t31 = t401 * t122 + t221;
t271 = t210 * t31 - t214 * t28;
t140 = qJDD(3) - t194 + t293;
t255 = t287 * qJD(2);
t75 = (qJD(1) * t255 + qJDD(1) * t265) * t209;
t307 = t108 * t345 + t419 * t211 - t215 * t75;
t275 = qJDD(4) + t307;
t335 = t211 * t363;
t296 = qJD(3) * t335;
t56 = qJD(1) * t296 - t211 * t263 + (-t246 - t417) * t215;
t6 = -pkin(4) * t56 - t401 * t140 + t275;
t301 = t417 * pkin(7) + t212 * t264 - t216 * t290;
t71 = -pkin(2) * t263 + t301;
t220 = t56 * qJ(4) - t124 * qJD(4) + t71;
t8 = t401 * t57 + t220;
t1 = -t271 * qJD(5) + t210 * t6 + t214 * t8;
t116 = qJD(5) + t124;
t413 = t116 * t271 + t1;
t10 = t210 * t28 + t214 * t31;
t2 = -qJD(5) * t10 - t210 * t8 + t214 * t6;
t412 = t10 * t116 + t2;
t343 = qJD(5) * t214;
t344 = qJD(5) * t210;
t25 = -t122 * t343 - t214 * t140 - t181 * t344 - t210 * t57;
t80 = -t214 * t122 - t181 * t210;
t310 = t116 * t80;
t411 = t25 - t310;
t82 = t122 * t210 - t181 * t214;
t26 = qJD(5) * t82 + t140 * t210 - t214 * t57;
t387 = t116 * t82;
t410 = -t26 + t387;
t409 = (qJDD(2) + 0.2e1 * t304) * t209;
t147 = t353 * qJD(2);
t394 = t122 * pkin(4);
t55 = t215 * t108 + t211 * t239;
t48 = t181 * qJ(4) - t55;
t32 = -t48 - t394;
t53 = -qJDD(5) + t56;
t408 = t116 * t32 + t401 * t53;
t354 = pkin(2) * t360 + pkin(8) * t363;
t139 = -pkin(1) * t209 - t354;
t144 = t209 * t255;
t247 = t138 * t347 - t139 * t345 - t211 * t144 - t215 * t146;
t349 = qJD(2) * t212;
t27 = -t209 * (qJ(4) * t349 - qJD(4) * t216) + t247;
t361 = t209 * t215;
t155 = t375 * t211 + t212 * t361;
t324 = t209 * t348;
t95 = -t296 + (t375 * qJD(3) + t324) * t215;
t407 = t209 * (t124 * t349 + t216 * t56) + t140 * t155 - t181 * t95;
t154 = -t375 * t215 + t335;
t94 = qJD(3) * t155 + t211 * t324;
t406 = t209 * (t122 * t349 - t216 * t57) + t140 * t154 - t181 * t94;
t359 = t211 * t216;
t405 = -t140 * t215 - t181 * t347 + (-t122 * t212 + t181 * t359) * t350;
t404 = t140 * t211 - t181 * t345 + (-t124 * t212 + t181 * t357) * t350;
t402 = t124 ^ 2;
t218 = qJD(1) ^ 2;
t398 = pkin(3) * t140;
t397 = pkin(8) * t140;
t396 = pkin(8) * t156;
t158 = t399 * t212 + t213 * t313;
t395 = pkin(8) * t158;
t393 = t154 * pkin(9);
t392 = t82 * t80;
t373 = qJ(4) * t211;
t316 = -pkin(2) - t373;
t162 = -t401 * t215 + t316;
t183 = t400 * t211;
t88 = -t162 * t210 + t183 * t214;
t390 = qJD(5) * t88 + t420 * t210 + t421 * t214;
t89 = t162 * t214 + t183 * t210;
t389 = -qJD(5) * t89 - t421 * t210 + t420 * t214;
t386 = t181 * t48;
t385 = t181 * t54;
t384 = t181 * t55;
t383 = t181 * t80;
t382 = t181 * t82;
t381 = t210 * t26;
t380 = t210 * t53;
t379 = t214 * t25;
t50 = t214 * t53;
t377 = -qJ(4) * t345 - (t202 + (pkin(7) - t372) * t360) * qJD(1) + t422;
t78 = t215 * t142 + t211 * t143;
t376 = -t400 * t347 - (-pkin(4) * t359 + qJ(4) * t212) * t350 - t78;
t374 = qJ(4) * t122;
t371 = t122 * t124;
t370 = t122 * t181;
t132 = t140 * qJ(4);
t366 = t156 * t215;
t365 = t158 * t215;
t364 = t206 * t218;
t362 = t209 * t213;
t358 = t214 * t216;
t74 = t215 * t138 + t211 * t139;
t352 = t399 * pkin(1) + pkin(7) * t362;
t207 = t212 ^ 2;
t208 = t216 ^ 2;
t351 = t207 - t208;
t346 = qJD(3) * t214;
t342 = qJD(5) * t215;
t198 = pkin(3) * t360;
t337 = qJ(4) * t360;
t336 = t216 * t364;
t334 = t209 * t358;
t149 = t156 * pkin(2);
t333 = -pkin(3) * t366 - t156 * t373 - t149;
t151 = t158 * pkin(2);
t332 = -pkin(3) * t365 - t158 * t373 - t151;
t159 = -t213 * t314 + t399 * t216;
t331 = t159 * pkin(2) + t352;
t325 = t209 * t349;
t323 = -t122 ^ 2 + t402;
t322 = pkin(1) * t414;
t321 = t216 * t341;
t317 = -pkin(1) * t213 + pkin(7) * t329;
t99 = t157 * t215 - t211 * t329;
t315 = -t98 * pkin(3) + qJ(4) * t99;
t102 = t159 * t211 - t213 * t361;
t103 = t159 * t215 + t211 * t362;
t312 = -t102 * pkin(3) + qJ(4) * t103;
t308 = t108 * t347 - t211 * t75 - t419 * t215;
t306 = -t154 * pkin(3) + t155 * qJ(4);
t73 = -t211 * t138 + t139 * t215;
t305 = t116 * t210;
t302 = t212 * t336;
t300 = t215 * t198 + t211 * t337 + t354;
t297 = t181 * t327;
t294 = t212 * t321;
t291 = -t157 * pkin(2) + t317;
t288 = t209 * t218 * t375;
t286 = g(1) * t98 - g(2) * t102;
t285 = -g(1) * t99 + g(2) * t103;
t284 = g(1) * t158 + g(2) * t156;
t283 = g(1) * t156 - g(2) * t158;
t282 = g(1) * t159 + g(2) * t157;
t60 = t198 - t73;
t114 = t210 * t327 - t214 * t298;
t280 = t211 * t346 + t114;
t244 = (t210 * t359 + t212 * t214) * t209;
t115 = qJD(1) * t244;
t279 = t210 * t347 - t115;
t278 = t10 * t214 + t210 * t271;
t277 = (qJD(3) * t122 - t56) * pkin(8);
t276 = (qJD(3) * t124 - t57) * pkin(8);
t273 = t122 * t94 + t154 * t57;
t272 = t124 * t95 - t155 * t56;
t37 = pkin(4) * t155 + pkin(9) * t360 + t60;
t137 = -t375 * pkin(2) - t160;
t58 = t137 - t306;
t43 = t58 + t393;
t18 = -t210 * t43 + t214 * t37;
t19 = t210 * t37 + t214 * t43;
t266 = 0.2e1 * t309 + qJD(2);
t167 = qJD(4) * t181;
t11 = -t132 + t167 + t308;
t59 = t337 - t74;
t34 = -t138 * t345 - t139 * t347 + t144 * t215 - t211 * t146;
t262 = g(1) * t399 + g(2) * t213;
t260 = -t116 * t305 - t50;
t96 = t154 * t214 + t210 * t360;
t252 = t181 * t215;
t250 = t103 * pkin(3) + qJ(4) * t102 + t331;
t249 = g(1) * t102 + g(2) * t98 + g(3) * t154;
t248 = -g(1) * t103 - g(2) * t99 - g(3) * t155;
t243 = -t116 ^ 2 * t214 + t380;
t242 = -pkin(3) * t99 - qJ(4) * t98 + t291;
t241 = -g(3) * t360 + t284;
t240 = -g(3) * t363 - t282;
t42 = t122 * pkin(3) + t221;
t236 = t181 * t42 + t397;
t235 = -t107 * t181 - t397;
t233 = -t122 * t95 - t124 * t94 + t154 * t56 - t155 * t57;
t232 = t249 - t307;
t231 = t248 - t308;
t230 = -t124 * t252 - t211 * t56;
t229 = -t211 * t370 - t215 * t57;
t7 = -pkin(4) * t57 - t11;
t228 = qJD(5) * t116 * t401 + t248 + t7;
t227 = pkin(8) * qJD(3) * t181 + t241;
t12 = t57 * pkin(3) + t220;
t226 = -t12 + t227;
t225 = t227 - t71;
t224 = t56 + t370;
t223 = t124 * t42 + qJDD(4) - t232;
t222 = -t95 * qJ(4) - t155 * qJD(4) + t147;
t219 = (-t56 + t370) * t215 + (-t57 + t369) * t211;
t174 = -pkin(3) * t215 + t316;
t145 = t353 * qJD(1);
t97 = -t154 * t210 + t334;
t76 = (-t140 * t216 - t181 * t349) * t209;
t72 = pkin(3) * t124 + t374;
t65 = t102 * t210 + t158 * t214;
t64 = t102 * t214 - t158 * t210;
t63 = -pkin(3) * t327 - t77;
t61 = -qJ(4) * t327 - t78;
t47 = t401 * t124 + t374;
t46 = pkin(3) * t181 - t356;
t44 = -pkin(4) * t154 - t59;
t41 = qJD(5) * t96 + t210 * t94 + t214 * t325;
t40 = -qJD(5) * t334 - t94 * t214 + (qJD(5) * t154 + t325) * t210;
t36 = t55 - t394;
t30 = t94 * pkin(3) + t222;
t29 = -pkin(3) * t325 - t34;
t24 = t401 * t94 + t222;
t21 = -pkin(4) * t94 - t27;
t20 = pkin(4) * t95 - t401 * t325 - t34;
t17 = t210 * t36 + t214 * t47;
t16 = -t210 * t47 + t214 * t36;
t13 = t275 - t398;
t4 = -qJD(5) * t19 + t20 * t214 - t210 * t24;
t3 = qJD(5) * t18 + t20 * t210 + t214 * t24;
t5 = [0, 0, 0, 0, 0, qJDD(1), g(1) * t213 - g(2) * t399, t262, 0, 0, (qJDD(1) * t207 + 0.2e1 * t294) * t206, (t216 * t338 - t341 * t351) * t414, t409 * t212 + t266 * t324, (qJDD(1) * t208 - 0.2e1 * t294) * t206, t409 * t216 - t266 * t325, t263 * t375, -t147 * t267 + t160 * t263 - t301 * t375 + g(1) * t157 - g(2) * t159 + (-t212 * t341 + t340) * t322, -t146 * t267 - t353 * t263 - t83 * t375 + (-t321 - t338) * t322 - t283, ((-t142 * qJD(2) + qJDD(1) * t353 + t83) * t216 + (-qJD(2) * t145 - qJDD(1) * t160 + t301) * t212 - t262) * t209, t206 * qJDD(1) * pkin(1) ^ 2 - g(1) * t317 - g(2) * t352 - t142 * t147 + t145 * t146 - t160 * t301 + t353 * t83, t272, t233, t407, t273, -t406, t76, t107 * t94 + t122 * t147 + t137 * t57 + t140 * t73 + t154 * t71 - t181 * t34 + (t216 * t307 - t349 * t54) * t209 - t285, t107 * t95 + t124 * t147 - t137 * t56 - t140 * t74 + t155 * t71 - t181 * t247 + (-t216 * t308 - t349 * t55) * t209 - t286, t122 * t247 - t124 * t34 + t154 * t308 + t155 * t307 + t54 * t95 - t55 * t94 + t56 * t73 - t57 * t74 + t283, -t308 * t74 - t55 * t247 - t307 * t73 - t54 * t34 + t71 * t137 + t107 * t147 - g(1) * (t291 - t396) - g(2) * (t331 + t395), t76, -t407, t406, t272, t233, t273, t11 * t154 + t122 * t27 + t124 * t29 + t13 * t155 + t46 * t95 + t48 * t94 - t56 * t60 + t57 * t59 + t283, -t12 * t154 - t122 * t30 + t140 * t60 - t181 * t29 - t42 * t94 - t57 * t58 + (-t13 * t216 + t349 * t46) * t209 + t285, -t12 * t155 - t124 * t30 - t140 * t59 + t181 * t27 - t42 * t95 + t56 * t58 + (t11 * t216 - t349 * t48) * t209 + t286, t12 * t58 + t42 * t30 + t11 * t59 + t48 * t27 + t13 * t60 + t46 * t29 - g(1) * (t242 - t396) - g(2) * (t250 + t395), t25 * t97 + t41 * t82, -t25 * t96 + t26 * t97 - t40 * t82 - t41 * t80, t116 * t41 - t155 * t25 + t53 * t97 + t82 * t95, -t26 * t96 + t40 * t80, -t116 * t40 - t155 * t26 - t53 * t96 - t80 * t95, t116 * t95 - t155 * t53, g(1) * t416 - g(2) * t65 + t4 * t116 + t2 * t155 - t18 * t53 + t21 * t80 + t44 * t26 - t271 * t95 + t32 * t40 - t7 * t96, g(1) * t415 - g(2) * t64 - t1 * t155 - t10 * t95 - t3 * t116 + t19 * t53 + t21 * t82 - t44 * t25 + t32 * t41 - t7 * t97, t1 * t96 - t10 * t40 + t18 * t25 - t19 * t26 + t2 * t97 + t271 * t41 - t3 * t80 - t4 * t82 - t285, t1 * t19 + t10 * t3 + t2 * t18 - t271 * t4 + t7 * t44 + t32 * t21 - g(1) * (-pkin(9) * t99 - t400 * t156 + t242) - g(2) * (pkin(9) * t103 + t400 * t158 + t250); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t302, t351 * t364, -t216 * t288 + t319, t302, t212 * t288 + t194, t263, pkin(1) * t212 * t364 + t145 * t267 + t241 - t301, pkin(1) * t336 + t142 * t267 + (pkin(7) * t341 + g(3)) * t363 + t282 - t330, 0, 0, t230, t219, t404, t229, -t405, t297, -pkin(2) * t57 - t122 * t145 + t181 * t77 + t211 * t235 + t215 * t225 + t327 * t54, pkin(2) * t56 - t124 * t145 - t181 * t78 - t211 * t225 + t215 * t235 + t327 * t55, t122 * t78 + t124 * t77 + (-t308 + t276 - t385) * t215 + (t307 + t277 + t384) * t211 + t240, -t71 * pkin(2) - t55 * t78 + t54 * t77 - t107 * t145 + g(1) * t151 + g(2) * t149 - g(3) * t354 + (-t308 * t215 + t307 * t211 + (-t211 * t55 + t215 * t54) * qJD(3) - t282) * pkin(8), t297, -t404, t405, t230, t219, t229, -t122 * t61 - t124 * t63 + (-t181 * t46 - t11 + t276) * t215 + (t13 + t277 - t386) * t211 + t240, -t122 * t377 - t174 * t57 + t181 * t63 + t211 * t236 - t215 * t226 - t327 * t46, -t124 * t377 + t174 * t56 - t181 * t61 + t211 * t226 + t215 * t236 + t327 * t48, t12 * t174 - t48 * t61 - t46 * t63 - g(1) * t332 - g(2) * t333 - g(3) * t300 + t377 * t42 + (-t11 * t215 + t13 * t211 + (t211 * t48 + t215 * t46) * qJD(3) - t282) * pkin(8), t210 * t215 * t25 + (-t214 * t342 + t279) * t82, t114 * t82 + t115 * t80 + (-t210 * t80 + t214 * t82) * t347 + (t381 + t379 + (t210 * t82 + t214 * t80) * qJD(5)) * t215, -t211 * t25 + t279 * t116 + (-t116 * t343 + t380 - t382) * t215, t214 * t215 * t26 + (-t210 * t342 - t280) * t80, -t211 * t26 + t280 * t116 + (t116 * t344 + t383 + t50) * t215, -t116 * t252 - t211 * t53, -t32 * t114 + t184 * t26 - t88 * t53 + t376 * t80 - t282 * t214 + (t210 * t284 - t32 * t346 + t2) * t211 - g(3) * t244 + t389 * t116 + (t181 * t271 + t7 * t214 - t32 * t344) * t215, -t32 * t115 - t184 * t25 + t89 * t53 + t376 * t82 + t282 * t210 + (t32 * t210 * qJD(3) + t214 * t284 - t1) * t211 - g(3) * (-t210 * t212 + t211 * t358) * t209 - t390 * t116 + (t10 * t181 - t7 * t210 - t32 * t343) * t215, t10 * t114 - t115 * t271 + t25 * t88 - t26 * t89 - t389 * t82 - t390 * t80 + t278 * t347 + (-t1 * t214 + t2 * t210 + (t10 * t210 - t214 * t271) * qJD(5) + t241) * t215, t1 * t89 + t2 * t88 + t7 * t184 - g(1) * (-pkin(9) * t365 + t400 * t159 + t332) - g(2) * (-pkin(9) * t366 + t400 * t157 + t333) - g(3) * ((pkin(4) * t212 + pkin(9) * t357) * t209 + t300) - t389 * t271 + t376 * t32 + t390 * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t371, t323, -t224, -t371, -t418, t140, -t107 * t124 + t232 - t384, t107 * t122 - t231 + t385, 0, 0, t140, t224, t418, t371, t323, -t371, pkin(3) * t56 - qJ(4) * t57 + (-t48 - t55) * t124 + (t46 + t356) * t122, t122 * t72 + t223 + t384 - 0.2e1 * t398, -t122 * t42 + t124 * t72 + t181 * t356 + 0.2e1 * t132 - t167 + t231, -t13 * pkin(3) - g(1) * t312 - g(2) * t315 - g(3) * t306 - t11 * qJ(4) + t356 * t48 - t42 * t72 - t46 * t55, -t305 * t82 - t379, (-t26 - t387) * t214 + (t25 + t310) * t210, t122 * t82 + t260, t214 * t310 + t381, -t122 * t80 + t243, t116 * t122, qJ(4) * t26 - t116 * t16 - t122 * t271 + t228 * t210 + t408 * t214 + t355 * t80, -qJ(4) * t25 - t10 * t122 + t116 * t17 - t408 * t210 + t228 * t214 + t355 * t82, t16 * t82 + t17 * t80 + (-t10 * t124 - t401 * t25 - t2 + (t401 * t80 - t10) * qJD(5)) * t214 + (-t124 * t271 + t401 * t26 - t1 + (-t401 * t82 - t271) * qJD(5)) * t210 + t249, t7 * qJ(4) - t10 * t17 + t271 * t16 - g(1) * (-pkin(9) * t102 + t312) - g(2) * (-pkin(9) * t98 + t315) - g(3) * (t306 - t393) + t355 * t32 - (qJD(5) * t278 + t1 * t210 + t2 * t214) * t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t224, t140 - t371, -t181 ^ 2 - t402, t223 - t386 - t398, 0, 0, 0, 0, 0, 0, t260 + t383, t243 + t382, t410 * t210 + t411 * t214, t181 * t32 + t413 * t210 + t412 * t214 - t249; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t392, -t80 ^ 2 + t82 ^ 2, -t411, -t392, t410, -t53, -g(1) * t64 - g(2) * t415 - g(3) * t96 - t32 * t82 + t412, g(1) * t65 + g(2) * t416 - g(3) * t97 + t32 * t80 - t413, 0, 0;];
tau_reg = t5;
