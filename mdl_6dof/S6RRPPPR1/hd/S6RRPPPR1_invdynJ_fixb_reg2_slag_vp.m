% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRPPPR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta3,theta4]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:08
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPPPR1_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR1_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPPR1_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPPPR1_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPPPR1_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPPR1_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:08:25
% EndTime: 2019-03-09 08:08:38
% DurationCPUTime: 6.74s
% Computational Cost: add. (9404->605), mult. (22231->742), div. (0->0), fcn. (16692->12), ass. (0->303)
t230 = sin(pkin(9));
t237 = cos(qJ(2));
t234 = sin(qJ(2));
t366 = cos(pkin(9));
t311 = t366 * t234;
t186 = t230 * t237 + t311;
t170 = t186 * qJD(1);
t229 = sin(pkin(10));
t231 = cos(pkin(10));
t141 = t231 * qJD(2) - t170 * t229;
t233 = sin(qJ(6));
t236 = cos(qJ(6));
t274 = qJD(2) * t229 + t231 * t170;
t418 = t141 * t236 + t233 * t274;
t429 = t418 ^ 2;
t419 = -t141 * t233 + t236 * t274;
t428 = t419 ^ 2;
t310 = t366 * t237;
t208 = qJD(1) * t310;
t330 = qJD(1) * qJD(2);
t317 = t234 * t330;
t248 = qJDD(1) * t186 - t230 * t317;
t125 = qJD(2) * t208 + t248;
t93 = -t231 * qJDD(2) + t125 * t229;
t94 = qJDD(2) * t229 + t125 * t231;
t26 = qJD(6) * t419 + t233 * t94 - t236 * t93;
t336 = qJD(1) * t234;
t167 = t230 * t336 - t208;
t331 = qJD(6) - t167;
t425 = t331 * t419;
t427 = -t26 + t425;
t426 = t331 * t418;
t226 = qJ(2) + pkin(9);
t224 = cos(t226);
t215 = g(3) * t224;
t232 = -qJ(3) - pkin(7);
t313 = qJD(2) * t232;
t254 = -qJD(3) * t234 + t237 * t313;
t318 = t232 * t234;
t116 = qJDD(2) * pkin(2) + qJD(1) * t254 + qJDD(1) * t318;
t165 = qJD(3) * t237 + t234 * t313;
t195 = t232 * t237;
t127 = qJD(1) * t165 - qJDD(1) * t195;
t64 = t366 * t116 - t230 * t127;
t270 = qJDD(2) * pkin(3) - qJDD(4) + t64;
t319 = t270 - t215;
t223 = sin(t226);
t235 = sin(qJ(1));
t238 = cos(qJ(1));
t296 = g(1) * t238 + g(2) * t235;
t410 = t296 * t223;
t243 = -t410 - t319;
t185 = t229 * t233 + t231 * t236;
t173 = t185 * qJD(6);
t368 = -t185 * t167 + t173;
t403 = -t229 * t236 + t231 * t233;
t333 = qJD(6) * t236;
t334 = qJD(6) * t233;
t406 = -t229 * t333 + t231 * t334;
t424 = -t403 * t167 + t406;
t423 = t141 * t167;
t169 = t186 * qJD(2);
t329 = t234 * qJDD(1);
t289 = -qJDD(1) * t310 + t230 * t329;
t124 = qJD(1) * t169 + t289;
t389 = pkin(2) * t237;
t220 = pkin(1) + t389;
t155 = pkin(2) * t317 - qJDD(1) * t220 + qJDD(3);
t39 = pkin(3) * t124 - qJ(4) * t125 - qJD(4) * t170 + t155;
t65 = t230 * t116 + t366 * t127;
t58 = qJDD(2) * qJ(4) + qJD(2) * qJD(4) + t65;
t18 = -t229 * t58 + t231 * t39;
t293 = qJDD(5) - t18;
t392 = pkin(4) + pkin(5);
t6 = -pkin(8) * t94 - t124 * t392 + t293;
t189 = qJD(1) * t318;
t376 = qJD(2) * pkin(2);
t182 = t189 + t376;
t190 = qJD(1) * t195;
t312 = t366 * t190;
t123 = t230 * t182 - t312;
t108 = qJD(2) * qJ(4) + t123;
t193 = -qJD(1) * t220 + qJD(3);
t87 = pkin(3) * t167 - qJ(4) * t170 + t193;
t50 = -t229 * t108 + t231 * t87;
t300 = qJD(5) - t50;
t24 = -pkin(8) * t274 - t167 * t392 + t300;
t51 = t231 * t108 + t229 * t87;
t38 = t167 * qJ(5) + t51;
t29 = -pkin(8) * t141 + t38;
t8 = t233 * t24 + t236 * t29;
t19 = t229 * t39 + t231 * t58;
t12 = t124 * qJ(5) + t167 * qJD(5) + t19;
t9 = pkin(8) * t93 + t12;
t2 = -qJD(6) * t8 - t233 * t9 + t236 * t6;
t422 = t331 * t8 + t2;
t283 = t233 * t29 - t236 * t24;
t1 = -qJD(6) * t283 + t233 * t6 + t236 * t9;
t421 = t283 * t331 + t1;
t25 = t141 * t333 - t233 * t93 - t236 * t94 + t274 * t334;
t420 = -t25 + t426;
t417 = t274 ^ 2;
t416 = t392 * t93;
t14 = -pkin(4) * t124 + t293;
t415 = -t167 * t38 + t14;
t414 = t167 * t274;
t413 = t231 * t392;
t409 = -t224 * pkin(3) - t223 * qJ(4);
t387 = g(1) * t235;
t408 = -g(2) * t238 + t387;
t109 = t229 * t124;
t166 = t167 ^ 2;
t308 = t166 * t231 + t109;
t360 = t274 * t170;
t407 = t308 + t360;
t335 = qJD(5) * t274;
t405 = -qJ(5) * t94 - t335;
t110 = t231 * t124;
t341 = t166 * t229 - t110;
t362 = t141 * t170;
t404 = -t341 + t362;
t402 = t170 * qJD(2);
t401 = t185 * t25 + t419 * t424;
t117 = -qJDD(6) + t124;
t399 = t117 * t403 - t331 * t368;
t259 = -t230 * t234 + t310;
t172 = t259 * qJD(2);
t279 = t124 * t186 + t167 * t172;
t398 = -t141 * t169 + t229 * t279 - t259 * t93;
t364 = qJ(5) * t231;
t397 = t229 * t392 - t364;
t359 = t274 * t229;
t361 = t141 * t231;
t277 = t359 - t361;
t369 = t231 * t94;
t83 = t229 * t93;
t396 = t167 * t277 - t369 + t83;
t245 = t270 - t405;
t13 = t245 - t416;
t395 = t13 + t410;
t370 = t231 * t93;
t371 = t229 * t94;
t394 = t172 * t277 + t186 * (t370 + t371);
t393 = t170 ^ 2;
t391 = pkin(4) * t93;
t390 = pkin(2) * t234;
t388 = pkin(8) * t229;
t385 = g(2) * t232;
t214 = g(3) * t223;
t383 = g(3) * t237;
t382 = t231 * pkin(4);
t381 = t419 * t418;
t212 = pkin(2) * t230 + qJ(4);
t380 = -pkin(8) + t212;
t179 = t380 * t229;
t180 = t380 * t231;
t111 = t179 * t236 - t180 * t233;
t175 = t230 * t190;
t129 = t189 * t366 + t175;
t118 = t229 * t129;
t99 = pkin(2) * t336 + pkin(3) * t170 + qJ(4) * t167;
t28 = t118 + (pkin(8) * t167 - t99) * t231 - t392 * t170;
t357 = t167 * t229;
t60 = t231 * t129 + t229 * t99;
t45 = t170 * qJ(5) + t60;
t33 = -pkin(8) * t357 + t45;
t379 = qJD(4) * t185 + qJD(6) * t111 - t233 * t28 - t236 * t33;
t112 = t179 * t233 + t180 * t236;
t378 = -qJD(4) * t403 - qJD(6) * t112 + t233 * t33 - t236 * t28;
t101 = t165 * t366 + t230 * t254;
t327 = t234 * t376;
t77 = pkin(3) * t169 - qJ(4) * t172 - qJD(4) * t186 + t327;
t41 = t231 * t101 + t229 * t77;
t374 = t170 * t418;
t373 = t170 * t419;
t365 = pkin(7) * qJDD(1);
t358 = t167 * t170;
t356 = t223 * t238;
t355 = t224 * t231;
t354 = t224 * t235;
t353 = t224 * t238;
t352 = t229 * qJ(5);
t350 = t229 * t235;
t346 = t231 * t238;
t345 = t232 * t238;
t344 = t235 * t231;
t343 = t238 * t229;
t122 = t366 * t182 + t175;
t272 = qJD(2) * pkin(3) - qJD(4) + t122;
t251 = qJ(5) * t274 + t272;
t48 = -pkin(4) * t141 - t251;
t342 = qJD(4) - t48;
t120 = -pkin(3) * t259 - qJ(4) * t186 - t220;
t136 = -t195 * t366 + t230 * t318;
t69 = t229 * t120 + t231 * t136;
t340 = (g(1) * t346 + g(2) * t344) * t223;
t339 = -g(2) * t356 + t223 * t387;
t227 = t234 ^ 2;
t228 = t237 ^ 2;
t338 = t227 - t228;
t337 = t227 + t228;
t332 = -qJD(4) - t272;
t328 = t237 * qJDD(1);
t326 = t212 * t110;
t240 = qJD(1) ^ 2;
t325 = t234 * t240 * t237;
t56 = -qJ(5) * t259 + t69;
t206 = t238 * t220;
t324 = pkin(3) * t353 + qJ(4) * t356 + t206;
t323 = g(1) * t353 + g(2) * t354 + t214;
t17 = -t245 + t391;
t320 = -t17 - t215;
t316 = pkin(3) + t352;
t89 = t229 * t101;
t40 = t231 * t77 - t89;
t59 = t231 * t99 - t118;
t128 = t189 * t230 - t312;
t309 = t229 * qJD(5) - t167 * t397 + t128;
t131 = t229 * t136;
t68 = t120 * t231 - t131;
t100 = t165 * t230 - t366 * t254;
t135 = -t195 * t230 - t232 * t311;
t307 = t331 ^ 2;
t27 = t169 * qJ(5) - qJD(5) * t259 + t41;
t306 = t26 * t403 + t368 * t418;
t305 = t237 * t317;
t196 = qJ(4) * t354;
t304 = -t235 * t390 + t196;
t199 = qJ(4) * t353;
t303 = -t238 * t390 + t199;
t302 = t389 - t409;
t301 = t185 * t117 + t331 * t424;
t219 = -pkin(2) * t366 - pkin(3);
t299 = -pkin(3) * t223 - t390;
t156 = t224 * t350 + t346;
t158 = t224 * t343 - t344;
t298 = -g(1) * t156 + g(2) * t158;
t157 = t224 * t344 - t343;
t159 = t224 * t346 + t350;
t297 = g(1) * t157 - g(2) * t159;
t292 = t341 + t362;
t291 = qJD(4) * t361 - t212 * t370 - t323;
t290 = pkin(4) * t229 - t364;
t288 = -t12 * t229 + t14 * t231;
t287 = t17 * t186 + t172 * t48;
t286 = -t18 * t231 - t19 * t229;
t285 = -t229 * t50 + t231 * t51;
t34 = t131 + (-pkin(8) * t186 - t120) * t231 + t392 * t259;
t43 = t186 * t388 + t56;
t15 = -t233 * t43 + t236 * t34;
t16 = t233 * t34 + t236 * t43;
t282 = -t172 * t272 - t186 * t270;
t280 = qJD(4) * t274 + t212 * t94;
t61 = -t124 * t259 + t167 * t169;
t278 = -t141 ^ 2 - t417;
t276 = t156 * t236 - t157 * t233;
t275 = t156 * t233 + t157 * t236;
t271 = -t220 + t409;
t269 = -t141 * t357 - t370;
t265 = -0.2e1 * pkin(1) * t330 - pkin(7) * qJDD(2);
t264 = -t157 * pkin(4) - qJ(5) * t156 - t345;
t263 = t93 + t414;
t262 = pkin(4) * t355 + t224 * t352 + t302;
t261 = g(3) * t403;
t260 = (-t141 * t172 + t186 * t93) * t229;
t258 = t159 * pkin(4) + qJ(5) * t158 + t324;
t256 = t219 - t352;
t255 = -qJD(5) * t186 * t231 + t100;
t253 = -g(1) * t158 - g(2) * t156 - t214 * t229;
t252 = t94 + t423;
t239 = qJD(2) ^ 2;
t250 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t239 + t408;
t249 = pkin(1) * t240 + t296 - t365;
t247 = -t369 - t83 + (t359 + t361) * t167;
t244 = (-g(1) * t271 + t385) * t235;
t242 = t243 + t405;
t178 = t256 - t382;
t148 = -t256 + t413;
t104 = t185 * t186;
t103 = t403 * t186;
t96 = t158 * t233 + t159 * t236;
t95 = t158 * t236 - t159 * t233;
t70 = t186 * t290 + t135;
t67 = -t167 * t290 + t128;
t63 = -t186 * t397 - t135;
t57 = pkin(4) * t259 - t68;
t55 = t172 * t403 + t173 * t186;
t54 = -t172 * t185 + t186 * t406;
t49 = t231 * t414 + t371;
t46 = -pkin(4) * t170 - t59;
t44 = t172 * t290 + t255;
t42 = (t172 * t274 + t186 * t94) * t231;
t37 = -pkin(4) * t167 + t300;
t35 = t308 - t360;
t32 = t141 * t392 + t251;
t31 = -t172 * t397 - t255;
t30 = -pkin(4) * t169 - t40;
t23 = t172 * t388 + t27;
t22 = t89 + (-pkin(8) * t172 - t77) * t231 - t392 * t169;
t20 = t169 * t274 + t231 * t279 - t259 * t94;
t4 = -qJD(6) * t16 + t22 * t236 - t23 * t233;
t3 = qJD(6) * t15 + t22 * t233 + t23 * t236;
t5 = [0, 0, 0, 0, 0, qJDD(1), t408, t296, 0, 0, qJDD(1) * t227 + 0.2e1 * t305, 0.2e1 * t234 * t328 - 0.2e1 * t330 * t338, qJDD(2) * t234 + t237 * t239, qJDD(1) * t228 - 0.2e1 * t305, qJDD(2) * t237 - t234 * t239, 0, t234 * t265 + t237 * t250, -t234 * t250 + t237 * t265, 0.2e1 * t337 * t365 - t296, -g(1) * (-pkin(1) * t235 + pkin(7) * t238) - g(2) * (pkin(1) * t238 + pkin(7) * t235) + (pkin(7) ^ 2 * t337 + pkin(1) ^ 2) * qJDD(1), t125 * t186 + t170 * t172, t125 * t259 - t169 * t170 - t279, qJD(2) * t172 + qJDD(2) * t186, t61, -qJD(2) * t169 + qJDD(2) * t259, 0, -qJDD(2) * t135 - t124 * t220 - t155 * t259 + t169 * t193 + t408 * t224 + (t167 * t390 - t100) * qJD(2), -qJDD(2) * t136 - t125 * t220 + t155 * t186 + t172 * t193 + (t170 * t390 - t101) * qJD(2) - t339, t100 * t170 - t101 * t167 - t122 * t172 - t123 * t169 - t124 * t136 + t125 * t135 - t186 * t64 + t259 * t65 - t296, t65 * t136 + t123 * t101 - t64 * t135 - t122 * t100 - t155 * t220 + t193 * t327 - g(1) * (-t220 * t235 - t345) - g(2) * (-t232 * t235 + t206) t42, -t394, t20, t260, -t398, t61, -t100 * t141 + t124 * t68 + t135 * t93 + t167 * t40 + t169 * t50 - t18 * t259 + t229 * t282 + t297, t100 * t274 - t124 * t69 + t135 * t94 - t167 * t41 - t169 * t51 + t19 * t259 + t231 * t282 + t298, t141 * t41 - t274 * t40 - t68 * t94 - t69 * t93 + t286 * t186 + (-t229 * t51 - t231 * t50) * t172 + t339, g(1) * t345 - g(2) * t324 - t100 * t272 - t135 * t270 + t18 * t68 + t19 * t69 + t50 * t40 + t51 * t41 + t244, t42, t20, t394, t61, t398, t260, -t124 * t57 + t14 * t259 - t141 * t44 - t167 * t30 - t169 * t37 + t229 * t287 + t70 * t93 + t297, t141 * t27 + t274 * t30 - t56 * t93 + t57 * t94 + t288 * t186 + (-t229 * t38 + t231 * t37) * t172 + t339, -t12 * t259 + t124 * t56 + t167 * t27 + t169 * t38 - t231 * t287 - t274 * t44 - t70 * t94 - t298, -g(1) * t264 - g(2) * t258 + t12 * t56 + t14 * t57 + t17 * t70 + t38 * t27 + t37 * t30 + t48 * t44 + t244, -t104 * t25 - t419 * t54, t103 * t25 - t104 * t26 + t418 * t54 - t419 * t55, -t104 * t117 - t169 * t419 - t25 * t259 - t331 * t54, t103 * t26 + t418 * t55, t103 * t117 + t169 * t418 - t259 * t26 - t331 * t55, -t117 * t259 - t169 * t331, g(1) * t275 - g(2) * t96 + t13 * t103 - t15 * t117 + t169 * t283 + t2 * t259 + t63 * t26 + t31 * t418 + t32 * t55 + t331 * t4, g(1) * t276 - g(2) * t95 - t1 * t259 + t13 * t104 + t16 * t117 + t8 * t169 - t63 * t25 - t3 * t331 + t31 * t419 - t32 * t54, -t1 * t103 - t104 * t2 + t15 * t25 - t16 * t26 - t283 * t54 - t3 * t418 - t4 * t419 - t55 * t8 - t339, t1 * t16 + t8 * t3 + t2 * t15 - t283 * t4 + t13 * t63 + t32 * t31 - g(1) * (-pkin(5) * t157 + t264) - g(2) * (pkin(5) * t159 - pkin(8) * t356 + t258) + (-g(1) * (pkin(8) * t223 + t271) + t385) * t235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t325, t338 * t240, t329, t325, t328, qJDD(2), t234 * t249 - t383, g(3) * t234 + t237 * t249, 0, 0, t358, -t166 + t393 (t208 + t167) * qJD(2) + t248, -t358, -t289, qJDD(2), t128 * qJD(2) - t193 * t170 - t215 + t410 + (qJDD(2) * t366 - t167 * t336) * pkin(2) + t64, qJD(2) * t129 + t167 * t193 + (-qJDD(2) * t230 - t170 * t336) * pkin(2) + t323 - t65 (t123 - t128) * t170 + (-t122 + t129) * t167 + (-t124 * t230 - t125 * t366) * pkin(2), t122 * t128 - t123 * t129 + (t366 * t64 - t383 + t230 * t65 + (-qJD(1) * t193 + t296) * t234) * pkin(2), t49, -t396, t35, t269, -t292, -t358, -t212 * t109 + t128 * t141 - t170 * t50 + t219 * t93 + t319 * t231 + (t229 * t332 - t59) * t167 + t340, -t326 - t128 * t274 + t170 * t51 + t219 * t94 + (t231 * t332 + t60) * t167 + t243 * t229, -t141 * t60 + t274 * t59 + (-t167 * t50 + t19) * t231 + (-t167 * t51 - t18 + t280) * t229 + t291, -t270 * t219 - t51 * t60 - t50 * t59 + t272 * t128 - g(1) * (t238 * t299 + t199) - g(2) * (t235 * t299 + t196) - g(3) * t302 + (-t18 * t229 + t19 * t231) * t212 + t285 * qJD(4), t49, t35, t396, -t358, t292, t269, t141 * t67 + t167 * t46 + t170 * t37 + t178 * t93 + t320 * t231 + (qJD(5) * t141 - t124 * t212 - t167 * t342) * t229 + t340, -t141 * t45 - t274 * t46 + (t167 * t37 + t12) * t231 + (t280 + t415) * t229 + t291, t326 + t274 * t67 - t170 * t38 - t178 * t94 + (t231 * t342 - t45) * t167 + (t410 + t320 + t335) * t229, t17 * t178 - t38 * t45 - t48 * t67 - t37 * t46 - g(1) * t303 - g(2) * t304 - g(3) * t262 + (qJD(4) * t38 + t12 * t212) * t231 + (qJD(4) * t37 - qJD(5) * t48 + t14 * t212) * t229 + (t316 + t382) * t410, t25 * t403 - t368 * t419, t306 + t401, t373 + t399, t185 * t26 - t418 * t424, t301 - t374, t331 * t170, -t111 * t117 + t148 * t26 + t378 * t331 - t283 * t170 + t309 * t418 - t424 * t32 + (-t215 + t395) * t185, t112 * t117 - t148 * t25 - t8 * t170 + t224 * t261 + t309 * t419 - t368 * t32 - t331 * t379 - t395 * t403, -t1 * t185 + t111 * t25 - t112 * t26 + t2 * t403 - t283 * t368 - t378 * t419 - t379 * t418 + t424 * t8 + t323, t1 * t112 + t2 * t111 + t13 * t148 - g(1) * (-pkin(8) * t353 + t303) - g(2) * (-pkin(8) * t354 + t304) - g(3) * (pkin(5) * t355 + t262) + t379 * t8 - t378 * t283 + t309 * t32 + (g(3) * pkin(8) + t296 * (t316 + t413)) * t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t289 + 0.2e1 * t402 (t208 - t167) * qJD(2) + t248, -t166 - t393, t122 * t170 + t123 * t167 + t155 - t408, 0, 0, 0, 0, 0, 0, t404, -t407, t247, t167 * t285 + t170 * t272 - t286 - t408, 0, 0, 0, 0, 0, 0, t404, t247, t407, -t170 * t48 + (t229 * t37 + t231 * t38) * t167 - t288 - t408, 0, 0, 0, 0, 0, 0, t301 + t374, t373 - t399, t306 - t401, -t1 * t403 + t170 * t32 - t185 * t2 - t283 * t424 - t368 * t8 - t408; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t263, t252, t278, -t141 * t51 + t274 * t50 + t243, 0, 0, 0, 0, 0, 0, t263, t278, -t252, -t141 * t38 - t274 * t37 + t242 + t391, 0, 0, 0, 0, 0, 0, -t26 - t425, t25 + t426, t428 + t429, t283 * t419 - t418 * t8 + t242 + t416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t141 * t274 - t289 - t402, t94 - t423, -t166 - t417, t274 * t48 + t253 + t415, 0, 0, 0, 0, 0, 0, -t117 * t236 - t233 * t307 - t274 * t418, t117 * t233 - t236 * t307 - t274 * t419, t233 * t427 - t420 * t236, t233 * t421 + t236 * t422 - t32 * t274 + t253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t381, t428 - t429, t420, -t381, t427, -t117, -g(1) * t95 - g(2) * t276 + t223 * t261 - t32 * t419 + t422, g(1) * t96 + g(2) * t275 + t185 * t214 + t32 * t418 - t421, 0, 0;];
tau_reg  = t5;