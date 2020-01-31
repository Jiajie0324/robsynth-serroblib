% Calculate inertial parameters regressor of coriolis matrix for
% S5RRPRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:11
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPRP10_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP10_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP10_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPRP10_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:11:11
% EndTime: 2019-12-31 20:11:18
% DurationCPUTime: 4.25s
% Computational Cost: add. (3068->353), mult. (5819->452), div. (0->0), fcn. (4849->4), ass. (0->282)
t385 = pkin(3) + pkin(6);
t243 = sin(qJ(2));
t379 = t243 * pkin(4);
t242 = sin(qJ(4));
t245 = cos(qJ(2));
t348 = t242 * t245;
t246 = -pkin(2) - pkin(7);
t342 = t245 * t246;
t347 = t243 * qJ(3);
t150 = -pkin(1) - t347 + t342;
t244 = cos(qJ(4));
t390 = t385 * t243;
t86 = t242 * t150 - t244 * t390;
t70 = -qJ(5) * t348 + t86;
t67 = -t70 + t379;
t392 = t67 + t70;
t173 = (-qJ(5) + t246) * t244;
t357 = t173 * t243;
t345 = t243 * t244;
t343 = t245 * qJ(3);
t179 = t243 * pkin(2) - t343;
t157 = t243 * pkin(7) + t179;
t136 = t244 * t157;
t234 = t245 * pkin(6);
t235 = t245 * pkin(3);
t184 = t234 + t235;
t170 = t184 * t242;
t90 = t136 + t170;
t75 = qJ(5) * t345 + t90;
t391 = -t75 - t357;
t87 = t244 * t150 + t242 * t390;
t33 = (t242 * t86 + t87 * t244) * t243;
t373 = t67 * t242;
t344 = t244 * t245;
t71 = -qJ(5) * t344 + t87;
t26 = (-t71 * t244 + t373) * t243;
t227 = t242 * qJD(2);
t309 = t245 * qJD(1);
t283 = t244 * t309;
t163 = t227 + t283;
t228 = t244 * qJD(2);
t389 = t242 * t309 - t228;
t387 = -t70 * t242 / 0.2e1 - t373 / 0.2e1;
t238 = t242 ^ 2;
t240 = t244 ^ 2;
t196 = t238 - t240;
t117 = t196 * qJD(2) + 0.2e1 * t242 * t283;
t171 = t184 * t244;
t346 = t243 * qJ(5);
t377 = t245 * pkin(4);
t69 = t377 + t171 + (-t157 - t346) * t242;
t386 = t69 / 0.2e1;
t351 = t242 * qJ(5);
t172 = t242 * t246 - t351;
t384 = -t172 / 0.2e1;
t383 = -t238 / 0.2e1;
t382 = t242 / 0.2e1;
t381 = -t243 / 0.2e1;
t380 = t242 * pkin(4);
t378 = t244 * pkin(4);
t299 = -t379 / 0.2e1;
t190 = t242 * t299;
t3 = t190 + t387;
t376 = t3 * qJD(1);
t139 = (-t378 - t385) * t243;
t140 = pkin(4) * t344 + t184;
t5 = t140 * t139 + t67 * t69 + t71 * t75;
t375 = t5 * qJD(1);
t6 = t75 * t344 - t69 * t348 + t26;
t374 = t6 * qJD(1);
t304 = pkin(4) * t348;
t7 = -t140 * t304 - t392 * t71;
t372 = t7 * qJD(1);
t8 = t392 * t344;
t369 = t8 * qJD(1);
t350 = t242 * t157;
t89 = t171 - t350;
t368 = t89 * t244;
t349 = t242 * t243;
t189 = pkin(4) * t349 / 0.2e1;
t9 = t189 - t387;
t367 = t9 * qJD(1);
t366 = t90 * t242;
t11 = t90 * t344 - t89 * t348 - t33;
t365 = t11 * qJD(1);
t12 = -t184 * t390 - t86 * t89 + t87 * t90;
t364 = t12 * qJD(1);
t363 = t139 * t242;
t362 = t139 * t244;
t361 = t140 * t244;
t17 = (t67 + t362) * t245 + (t69 - t361) * t243;
t360 = t17 * qJD(1);
t359 = t172 * t243;
t358 = t172 * t245;
t356 = t173 * t245;
t18 = t75 * t243 - t140 * t349 + (t71 + t363) * t245;
t355 = t18 * qJD(1);
t215 = qJ(3) + t380;
t354 = t215 * t242;
t295 = t385 * t245;
t22 = -t86 * t245 + (t89 + (-t295 - t184) * t244) * t243;
t353 = t22 * qJD(1);
t23 = t87 * t245 - t184 * t349 + (-t242 * t295 + t90) * t243;
t352 = t23 * qJD(1);
t341 = t26 * qJD(1);
t27 = t71 * t344 - t67 * t348;
t340 = t27 * qJD(1);
t339 = t33 * qJD(1);
t241 = t245 ^ 2;
t34 = -t71 * t243 + (-t140 * t245 - t241 * t378) * t242;
t338 = t34 * qJD(1);
t39 = -t241 * t238 * pkin(4) + t140 * t344 - t70 * t243;
t337 = t39 * qJD(1);
t46 = t184 * t344 - t86 * t243;
t336 = t46 * qJD(1);
t47 = -t184 * t348 - t87 * t243;
t335 = t47 * qJD(1);
t334 = t71 * qJD(4);
t265 = -t245 * pkin(2) - t347;
t174 = -pkin(1) + t265;
t94 = t174 * t245 + t179 * t243;
t333 = t94 * qJD(1);
t95 = -t174 * t243 + t179 * t245;
t332 = t95 * qJD(1);
t195 = t238 + t240;
t239 = t243 ^ 2;
t197 = t241 - t239;
t331 = qJD(1) * t243;
t330 = qJD(1) * t244;
t329 = qJD(3) * t243;
t231 = qJD(3) * t244;
t328 = qJD(4) * t242;
t327 = qJD(4) * t243;
t326 = qJD(4) * t244;
t325 = qJD(4) * t246;
t134 = t195 * t245 * t243;
t324 = t134 * qJD(1);
t273 = t240 / 0.2e1 + t383;
t154 = t273 * t245;
t323 = t154 * qJD(4);
t165 = t197 * t242;
t322 = t165 * qJD(1);
t166 = t195 * t241;
t321 = t166 * qJD(1);
t168 = t197 * t244;
t320 = t168 * qJD(1);
t319 = t172 * qJD(4);
t274 = t383 - t240 / 0.2e1;
t176 = -0.1e1 / 0.2e1 + t274;
t318 = t176 * qJD(2);
t317 = t195 * qJD(2);
t316 = t197 * qJD(1);
t315 = t215 * qJD(2);
t314 = t239 * qJD(1);
t313 = t239 * qJD(3);
t312 = t242 * qJD(5);
t311 = t243 * qJD(2);
t310 = t244 * qJD(5);
t229 = t245 * qJD(2);
t308 = t245 * qJD(3);
t307 = t245 * qJD(4);
t128 = -t350 / 0.2e1;
t306 = t128 + t171 / 0.2e1;
t129 = -t136 / 0.2e1;
t305 = t129 - t170 / 0.2e1;
t303 = pkin(1) * t331;
t302 = pkin(1) * t309;
t301 = pkin(4) * t328;
t300 = pkin(6) * t311;
t298 = t378 / 0.2e1;
t297 = t377 / 0.2e1;
t291 = t242 * t307;
t290 = t244 * t307;
t289 = t174 * t179 * qJD(1);
t288 = t174 * t331;
t287 = t242 * t229;
t285 = t245 * t312;
t204 = t243 * t229;
t203 = t243 * t309;
t208 = t242 * t326;
t284 = t242 * t228;
t282 = t245 * t310;
t281 = -t361 / 0.2e1;
t280 = -t359 / 0.2e1;
t279 = t357 / 0.2e1;
t278 = t354 / 0.2e1;
t277 = -t215 * t245 / 0.2e1;
t276 = -t346 / 0.2e1;
t275 = t234 / 0.2e1 + t235 / 0.2e1;
t236 = qJD(2) * qJ(3);
t255 = -t368 / 0.2e1 - t366 / 0.2e1;
t29 = t255 + t275;
t270 = t29 * qJD(1) + t236;
t269 = qJD(4) + t331;
t268 = t241 * t208;
t266 = t245 * t284;
t262 = t366 + t368;
t250 = t245 * t278 + t281;
t1 = (t70 / 0.2e1 + t67 / 0.2e1) * t172 + (t386 + t250) * pkin(4);
t41 = t215 * t378;
t261 = -t1 * qJD(1) + t41 * qJD(2);
t247 = (-t358 / 0.2e1 - t67 / 0.2e1) * t244 + (-t71 / 0.2e1 + t356 / 0.2e1) * t242;
t13 = (pkin(6) / 0.2e1 + pkin(3) / 0.2e1 + t298) * t243 + t247;
t91 = t172 * t242 + t173 * t244;
t260 = t13 * qJD(1) - t91 * qJD(2);
t135 = (t215 + t380) * t244;
t20 = t281 + (-t351 / 0.2e1 + t172 / 0.2e1) * t243 + (t278 + (0.1e1 - t273) * pkin(4)) * t245 + t306;
t259 = -t20 * qJD(1) + t135 * qJD(2);
t152 = t240 * pkin(4) - t354;
t254 = t140 * t382 + t279;
t24 = (t276 + (t380 + t215 / 0.2e1) * t245) * t244 + t254 + t305;
t258 = -t24 * qJD(1) + t152 * qJD(2);
t16 = (t279 - t75 / 0.2e1) * t242 + (t280 + t297 - t69 / 0.2e1) * t244 + t275;
t257 = t16 * qJD(1) + t315;
t256 = -t314 - t327;
t253 = t246 * t381 - t343 / 0.2e1;
t249 = t253 * t244;
t82 = t136 / 0.2e1 + t249;
t252 = qJ(3) * t227 - t82 * qJD(1);
t81 = (t157 / 0.2e1 + t253) * t242;
t251 = -qJ(3) * t228 - t81 * qJD(1);
t131 = t269 * t348;
t105 = t154 * qJD(1) + t284;
t97 = t242 * t241 * t330 - t154 * qJD(2);
t167 = t196 * t241;
t102 = -t167 * qJD(1) + 0.2e1 * t266;
t248 = t265 * qJD(2) + t308;
t237 = qJ(3) * qJD(3);
t230 = qJD(3) * t242;
t224 = pkin(6) * t229;
t219 = -t309 / 0.2e1;
t218 = t309 / 0.2e1;
t217 = t229 / 0.2e1;
t211 = t244 * t308;
t210 = t244 * t229;
t207 = t243 * t330;
t206 = t243 * t231;
t205 = t244 * t313;
t202 = t242 * t331;
t201 = t242 * t329;
t200 = t242 * t313;
t181 = t197 * qJD(2);
t180 = t196 * qJD(4);
t175 = 0.1e1 / 0.2e1 + t274;
t162 = -t207 - t326;
t161 = -t202 - t328;
t158 = t203 + t307 / 0.2e1;
t151 = t389 * pkin(4);
t148 = t256 * t244;
t147 = t244 * t314 - t287;
t146 = t256 * t242;
t145 = t242 * t314 + t210;
t133 = t269 * t344;
t132 = t163 * t243;
t130 = t242 * t203 - t243 * t228;
t119 = t134 * qJD(3);
t114 = -t240 * t204 - t268;
t113 = -t238 * t204 + t268;
t110 = -t243 * t326 + t320;
t109 = -t287 - t320;
t108 = -t242 * t327 + t322;
t107 = t210 - t322;
t104 = -t168 * qJD(2) + t243 * t291;
t101 = -t165 * qJD(2) - t243 * t290;
t100 = 0.2e1 * t244 * t131;
t99 = t240 * t203 + t323;
t96 = t238 * t203 - t323;
t93 = -t167 * qJD(4) - 0.2e1 * t243 * t266;
t77 = t323 + (-t240 * t309 - t284) * t243;
t76 = -t323 + (-t238 * t309 + t284) * t243;
t74 = -t117 * t243 + 0.2e1 * t245 * t208;
t51 = -t170 + t129 + t249;
t50 = t242 * t253 + t128 + t171;
t28 = -t255 + t275;
t25 = -t254 + t305 + (t277 + t276 - t304) * t244;
t21 = t240 * t297 + t242 * t276 + t377 * t383 - t250 + t280 + t306 + t377;
t15 = t275 - t391 * t382 + (t384 * t243 + t297 + t386) * t244;
t14 = t244 * t299 + t385 * t381 + t247;
t10 = t189 + t387;
t4 = t190 - t387;
t2 = pkin(4) * t386 + t140 * t298 + t277 * t380 + t392 * t384;
t19 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t204, t181, 0, -t204, 0, 0, -pkin(1) * t311, -pkin(1) * t229, 0, 0, 0, 0, 0, t204, t181, -t204, 0, t95 * qJD(2) - t243 * t308, -t94 * qJD(2) + t313, (qJD(2) * t179 - t329) * t174, t113, t93, t101, t114, t104, t204, t22 * qJD(2) + t47 * qJD(4) + t200, -t23 * qJD(2) - t46 * qJD(4) + t205, -t11 * qJD(2) + t119, t12 * qJD(2) - t33 * qJD(3), t113, t93, t101, t114, t104, t204, t17 * qJD(2) + t34 * qJD(4) + t243 * t285 + t200, -t18 * qJD(2) - t39 * qJD(4) + t243 * t282 + t205, -t6 * qJD(2) + t8 * qJD(4) + t166 * qJD(5) + t119, t5 * qJD(2) + t26 * qJD(3) + t7 * qJD(4) - t27 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t203, t316, t229, -t203, -t311, 0, -t224 - t303, t300 - t302, 0, 0, 0, -t229, t311, t203, t316, -t203, t248, t224 + t332, -t300 - t333, pkin(6) * t248 + t289, t76, t74, t107, t77, t109, t158, t353 + (t244 * t342 + (-qJ(3) * t244 - t385 * t242) * t243) * qJD(2) + t211 + t50 * qJD(4), -t352 + (-t242 * t342 + (qJ(3) * t242 - t385 * t244) * t243) * qJD(2) - t242 * t308 + t51 * qJD(4), -qJD(2) * t262 - t365, t364 + (-qJ(3) * t390 + t246 * t262) * qJD(2) + t28 * qJD(3), t76, t74, t107, t77, t109, t158, t360 + (-t215 * t345 + t356 + t363) * qJD(2) + t211 + t21 * qJD(4) - t243 * t310, -t355 + (-t358 + t362) * qJD(2) + t25 * qJD(4) + (-t308 + (qJD(5) + t315) * t243) * t242, -t374 + ((-t69 + t359) * t244 + t391 * t242) * qJD(2) + t4 * qJD(4), t375 + (t139 * t215 + t75 * t172 + t69 * t173) * qJD(2) + t15 * qJD(3) + t2 * qJD(4) + t14 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229, -t203, t314, t224 - t288, 0, 0, 0, 0, 0, 0, t145, t147, t324, t28 * qJD(2) - t339, 0, 0, 0, 0, 0, 0, t145, t147, t324, t15 * qJD(2) + t10 * qJD(4) + t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, t102, -t133, -t97, t131, t217, t50 * qJD(2) - t87 * qJD(4) + t335, t51 * qJD(2) + t86 * qJD(4) - t336, 0, 0, t97, t102, -t133, -t97, t131, t217, t21 * qJD(2) - t334 + t338, t25 * qJD(2) + t70 * qJD(4) - t337, pkin(4) * t290 + t4 * qJD(2) + t369, -pkin(4) * t334 + t2 * qJD(2) + t10 * qJD(3) + t372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, t132, t321, t14 * qJD(2) - t340; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t203, -t316, 0, t203, 0, 0, t303, t302, 0, 0, 0, 0, 0, -t203, -t316, t203, 0, -t332, t333, -t289, t96, t100, t108, t99, t110, -t158, t81 * qJD(4) - t353, t82 * qJD(4) + t352, t365, t29 * qJD(3) - t364, t96, t100, t108, t99, t110, -t158, -t20 * qJD(4) - t360, -t24 * qJD(4) + t355, -t3 * qJD(4) + t374, t16 * qJD(3) - t1 * qJD(4) + t13 * qJD(5) - t375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t237, -t208, t180, 0, t208, 0, 0, qJ(3) * t326 + t230, -qJ(3) * t328 + t231, 0, t237, -t208, t180, 0, t208, 0, 0, t135 * qJD(4) + t230, t152 * qJD(4) + t231, t195 * qJD(5), t215 * qJD(3) + t41 * qJD(4) - t91 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t236, 0, 0, 0, 0, 0, 0, t227, t228, 0, t270, 0, 0, 0, 0, 0, 0, t227, t228, 0, t175 * qJD(5) + t257; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t105, t117, t161, t105, t162, t219, -t242 * t325 - t251, -t244 * t325 - t252, 0, 0, -t105, t117, t161, t105, t162, t219, t259 - t319, -t173 * qJD(4) + t258, t301 - t376, -pkin(4) * t319 + t261; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t317, t175 * qJD(3) + t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t203, -t314, t288, 0, 0, 0, 0, 0, 0, t146, t148, -t324, -t29 * qJD(2) + t339, 0, 0, 0, 0, 0, 0, t146, t148, -t324, -t16 * qJD(2) - t9 * qJD(4) - t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t236, 0, 0, 0, 0, 0, 0, -t227, -t228, 0, -t270, 0, 0, 0, 0, 0, 0, -t227, -t228, 0, t176 * qJD(5) - t257; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t161, t162, 0, 0, 0, 0, 0, 0, 0, 0, t161, t162, 0, -t301 - t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t97, -t102, t132, t97, -t130, t217, -t81 * qJD(2) + t201 - t335, -t82 * qJD(2) + t206 + t336, 0, 0, -t97, -t102, t132, t97, -t130, t217, t20 * qJD(2) + t201 + t285 - t338, t24 * qJD(2) + t206 + t282 + t337, t3 * qJD(2) - t369, pkin(4) * t285 + t1 * qJD(2) + t9 * qJD(3) - t372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105, -t117, t202, -t105, t207, t218, t251, t252, 0, 0, t105, -t117, t202, -t105, t207, t218, -t259 - t310, -t258 + t312, t376, -pkin(4) * t310 - t261; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t202, t207, 0, 0, 0, 0, 0, 0, 0, 0, t202, t207, 0, t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389, t163, 0, t151; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t131, -t133, -t321, -pkin(4) * t291 - t13 * qJD(2) + t340; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t326, -t328, -t317, pkin(4) * t326 - t176 * qJD(3) - t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389, -t163, 0, -t151; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t19;