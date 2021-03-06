% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRRRP9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:29
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRRRP9_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP9_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP9_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRRP9_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:28:31
% EndTime: 2019-03-09 06:28:44
% DurationCPUTime: 5.19s
% Computational Cost: add. (8060->487), mult. (17508->641), div. (0->0), fcn. (11402->6), ass. (0->238)
t209 = sin(qJ(3));
t211 = cos(qJ(3));
t231 = pkin(3) * t211 + pkin(8) * t209;
t170 = t231 * qJD(1);
t212 = -pkin(1) - pkin(7);
t190 = t212 * qJD(1) + qJD(2);
t208 = sin(qJ(4));
t210 = cos(qJ(4));
t290 = t210 * t211;
t112 = t208 * t170 + t190 * t290;
t280 = qJD(1) * t209;
t256 = t208 * t280;
t325 = -pkin(9) - pkin(8);
t258 = qJD(4) * t325;
t348 = -pkin(9) * t256 + t208 * t258 - t112;
t293 = t208 * t211;
t111 = t210 * t170 - t190 * t293;
t292 = t209 * t210;
t264 = pkin(9) * t292;
t347 = -t210 * t258 + (pkin(4) * t211 + t264) * qJD(1) + t111;
t276 = qJD(3) * t210;
t279 = qJD(1) * t211;
t162 = -t208 * t279 + t276;
t255 = t210 * t279;
t278 = qJD(3) * t208;
t163 = t255 + t278;
t207 = sin(qJ(5));
t324 = cos(qJ(5));
t102 = -t324 * t162 + t163 * t207;
t100 = t102 ^ 2;
t224 = t207 * t162 + t324 * t163;
t326 = t224 ^ 2;
t346 = -t100 + t326;
t270 = qJD(5) * t207;
t345 = pkin(4) * t270;
t344 = t324 * pkin(4);
t196 = qJD(4) + t280;
t188 = qJD(5) + t196;
t308 = t102 * t188;
t266 = qJD(3) * qJD(4);
t271 = qJD(4) * t211;
t250 = t208 * t271;
t330 = -t209 * t276 - t250;
t120 = -qJD(1) * t330 - t210 * t266;
t277 = qJD(3) * t209;
t253 = t208 * t277;
t249 = t210 * t271;
t283 = qJD(1) * t249 + t208 * t266;
t222 = qJD(1) * t253 - t283;
t246 = t324 * qJD(5);
t49 = t324 * t120 - t162 * t246 + t163 * t270 - t207 * t222;
t343 = -t49 + t308;
t342 = t102 * qJ(6);
t341 = t102 * t224;
t257 = t324 * t210;
t294 = t207 * t208;
t329 = qJD(4) + qJD(5);
t331 = t324 * qJD(4) + t246;
t285 = t207 * t256 - t210 * t331 - t257 * t280 + t294 * t329;
t166 = t207 * t210 + t324 * t208;
t110 = t329 * t166;
t144 = t166 * qJD(1);
t284 = t209 * t144 + t110;
t305 = t224 * t188;
t50 = qJD(5) * t224 - t207 * t120 - t324 * t222;
t340 = -t50 + t305;
t339 = t249 - t253;
t298 = t190 * t211;
t316 = qJD(3) * pkin(3);
t153 = -t298 - t316;
t114 = -t162 * pkin(4) + t153;
t160 = qJD(3) * t231 + qJD(2);
t133 = t160 * qJD(1);
t230 = pkin(3) * t209 - pkin(8) * t211;
t174 = qJ(2) + t230;
t146 = t174 * qJD(1);
t173 = t209 * t190;
t152 = qJD(3) * pkin(8) + t173;
t96 = t146 * t208 + t152 * t210;
t218 = -qJD(4) * t96 + t210 * t133;
t275 = qJD(3) * t211;
t41 = t120 * pkin(9) + (pkin(4) * qJD(1) - t190 * t208) * t275 + t218;
t254 = t190 * t275;
t272 = qJD(4) * t210;
t273 = qJD(4) * t208;
t55 = t208 * t133 + t146 * t272 - t152 * t273 + t210 * t254;
t45 = pkin(9) * t222 + t55;
t95 = t210 * t146 - t152 * t208;
t80 = -t163 * pkin(9) + t95;
t71 = pkin(4) * t196 + t80;
t81 = t162 * pkin(9) + t96;
t243 = -t207 * t41 - t71 * t246 + t81 * t270 - t324 * t45;
t338 = t114 * t102 + t243;
t265 = 0.2e1 * qJD(1);
t182 = t325 * t208;
t183 = t325 * t210;
t119 = t207 * t182 - t324 * t183;
t319 = qJD(5) * t119 + t348 * t207 + t347 * t324;
t318 = -t182 * t246 - t183 * t270 + t347 * t207 - t348 * t324;
t242 = -t102 * pkin(5) - qJD(6);
t64 = t114 - t242;
t337 = t64 * t224;
t291 = t209 * t212;
t187 = t210 * t291;
t123 = t208 * t174 + t187;
t113 = -pkin(9) * t293 + t123;
t159 = t210 * t174;
t245 = -t208 * t212 + pkin(4);
t99 = -pkin(9) * t290 + t245 * t209 + t159;
t62 = t324 * t113 + t207 * t99;
t336 = -t196 * t95 + t55;
t56 = -t208 * t254 + t218;
t335 = -t96 * t196 - t56;
t334 = qJ(6) * t224;
t232 = -t173 + (t256 + t273) * pkin(4);
t267 = qJD(1) * qJD(3);
t198 = t211 * t267;
t195 = pkin(5) * t198;
t332 = -t224 * qJD(6) + t195;
t206 = t211 ^ 2;
t282 = t209 ^ 2 - t206;
t244 = -t207 * t45 + t324 * t41;
t77 = t324 * t81;
t34 = t207 * t71 + t77;
t7 = -t34 * qJD(5) + t244;
t328 = -t114 * t224 + t7;
t327 = t209 * t329;
t75 = t207 * t81;
t33 = t324 * t71 - t75;
t21 = t33 - t334;
t20 = pkin(5) * t188 + t21;
t323 = t20 - t21;
t322 = pkin(5) * t279 - t285 * qJ(6) + t166 * qJD(6) + t319;
t223 = t257 - t294;
t321 = t284 * qJ(6) - t223 * qJD(6) + t318;
t235 = pkin(4) * t246;
t320 = -t207 * pkin(4) * t50 - t102 * t235;
t40 = t324 * t80 - t75;
t317 = t284 * pkin(5) + t232;
t314 = t210 * t95;
t313 = t49 * qJ(6);
t311 = t166 * t275 + (qJD(1) + t327) * t223;
t310 = t166 * t327 - t223 * t275 + t144;
t304 = t120 * t208;
t303 = t120 * t209;
t302 = t153 * t208;
t301 = t153 * t209;
t300 = t162 * t196;
t299 = t163 * t162;
t297 = t196 * t208;
t296 = t196 * t209;
t295 = t196 * t210;
t289 = t211 * t120;
t213 = qJD(3) ^ 2;
t288 = t213 * t209;
t287 = t213 * t211;
t214 = qJD(1) ^ 2;
t286 = t214 * qJ(2);
t281 = -t213 - t214;
t274 = qJD(3) * t212;
t268 = t163 * qJD(4);
t262 = qJD(2) * t265;
t261 = t207 * t293;
t260 = t208 * t291;
t259 = t211 * t214 * t209;
t203 = -pkin(4) * t210 - pkin(3);
t251 = t211 * t274;
t248 = t188 * t279;
t39 = -t207 * t80 - t77;
t61 = -t113 * t207 + t324 * t99;
t241 = qJD(1) * t123 + t96;
t239 = -t153 + t298;
t118 = t324 * t182 + t183 * t207;
t161 = pkin(4) * t293 - t211 * t212;
t238 = -t162 + t276;
t237 = -t163 + t278;
t236 = qJD(4) * t209 + qJD(1);
t234 = t324 * t277;
t233 = t207 * t198;
t229 = -t208 * t96 - t314;
t228 = t208 * t95 - t210 * t96;
t227 = t209 * t237;
t226 = t239 * qJD(3);
t225 = t50 * qJ(6) + t243;
t140 = t210 * t160;
t59 = t140 + (-t187 + (pkin(9) * t211 - t174) * t208) * qJD(4) + (t245 * t211 + t264) * qJD(3);
t78 = -qJD(4) * t260 + t208 * t160 + t174 * t272 + t210 * t251;
t63 = -pkin(9) * t339 + t78;
t16 = -t113 * t270 + t207 * t59 + t99 * t246 + t324 * t63;
t121 = t339 * pkin(4) + t209 * t274;
t219 = t222 * t210;
t3 = -t102 * qJD(6) - t225;
t90 = -pkin(4) * t222 + t190 * t277;
t17 = -qJD(5) * t62 - t207 * t63 + t324 * t59;
t30 = t50 * pkin(5) + t90;
t217 = qJD(4) * t229 - t56 * t208 + t55 * t210;
t215 = t7 + t313;
t204 = qJ(2) * t262;
t202 = pkin(5) + t344;
t184 = t209 * t198;
t156 = t188 * t235;
t137 = t211 * t257 - t261;
t136 = t223 * t209;
t135 = t166 * t211;
t134 = t166 * t209;
t130 = -pkin(5) * t223 + t203;
t124 = t188 * t275 + t184;
t122 = t159 - t260;
t108 = t135 * pkin(5) + t161;
t89 = qJ(6) * t223 + t119;
t88 = -t166 * qJ(6) + t118;
t82 = pkin(4) * t163 + pkin(5) * t224;
t79 = -qJD(4) * t123 - t208 * t251 + t140;
t70 = -qJD(5) * t261 + t207 * t330 - t208 * t234 + t290 * t331;
t68 = t110 * t211 - t207 * t253 + t210 * t234;
t54 = t70 * pkin(5) + t121;
t51 = -qJ(6) * t135 + t62;
t48 = pkin(5) * t209 - t137 * qJ(6) + t61;
t32 = -t284 * t188 + (qJD(3) * t223 + t102) * t279;
t31 = -t285 * t188 + (qJD(3) * t166 - t224) * t279;
t24 = t40 - t334;
t23 = t39 + t342;
t22 = t34 - t342;
t19 = t102 * t70 + t135 * t50;
t18 = -t137 * t49 - t224 * t68;
t15 = t284 * t102 - t223 * t50;
t14 = -t49 * t166 - t224 * t285;
t13 = -t70 * t188 - t50 * t209 + (-qJD(1) * t135 - t102) * t275;
t12 = -t68 * t188 - t49 * t209 + (qJD(1) * t137 + t224) * t275;
t11 = -t211 * t50 - t311 * t188 + (t102 * t209 - t134 * t279) * qJD(3);
t10 = t211 * t49 + t310 * t188 + (-t136 * t279 + t209 * t224) * qJD(3);
t9 = -t70 * qJ(6) - t135 * qJD(6) + t16;
t8 = pkin(5) * t275 + t68 * qJ(6) - t137 * qJD(6) + t17;
t5 = t102 * t68 + t135 * t49 - t137 * t50 - t224 * t70;
t4 = t285 * t102 - t166 * t50 - t223 * t49 - t224 * t284;
t2 = t215 + t332;
t1 = t310 * t102 - t134 * t49 - t136 * t50 + t224 * t311;
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t262, t204, -0.2e1 * t184, 0.2e1 * t282 * t267, -t288, 0.2e1 * t184, -t287, 0, -t212 * t288 + (qJ(2) * t275 + qJD(2) * t209) * t265, -t212 * t287 + (-qJ(2) * t277 + qJD(2) * t211) * t265, 0, t204, t163 * t330 - t210 * t289 (-t162 * t210 + t163 * t208) * t277 + (t219 + t304 + (-t162 * t208 - t163 * t210) * qJD(4)) * t211, -t196 * t250 - t303 + (t163 * t211 + (qJD(1) * t206 - t296) * t210) * qJD(3), -t162 * t339 - t222 * t293, -t196 * t249 - t283 * t209 + (t162 * t211 + (qJD(1) * t282 + t296) * t208) * qJD(3), t196 * t275 + t184, t79 * t196 + (t56 + (-t162 * t212 - t302) * qJD(3)) * t209 + (-t212 * t283 + t153 * t272 + (t208 * t173 + t95 + (t122 + t260) * qJD(1)) * qJD(3)) * t211, -t78 * t196 - t55 * t209 + (t120 * t212 - t153 * t273) * t211 + (-t241 * t211 + (t163 * t212 + t210 * t239) * t209) * qJD(3), t78 * t162 - t123 * t283 - t79 * t163 + t122 * t120 + (t208 * t241 + t314) * t277 + (qJD(4) * t228 - t55 * t208 - t56 * t210) * t211, t56 * t122 + t55 * t123 - t226 * t291 + t96 * t78 + t95 * t79, t18, t5, t12, t19, t13, t124, t121 * t102 + t114 * t70 + t90 * t135 + t161 * t50 + t17 * t188 + t7 * t209 + (qJD(1) * t61 + t33) * t275, t121 * t224 - t114 * t68 + t90 * t137 - t16 * t188 - t161 * t49 + t243 * t209 + (-qJD(1) * t62 - t34) * t275, -t102 * t16 + t135 * t243 - t137 * t7 - t17 * t224 + t33 * t68 - t34 * t70 + t49 * t61 - t50 * t62, t114 * t121 + t16 * t34 + t161 * t90 + t17 * t33 - t243 * t62 + t61 * t7, t18, t5, t12, t19, t13, t124, t54 * t102 + t108 * t50 + t30 * t135 + t8 * t188 + t2 * t209 + t64 * t70 + (qJD(1) * t48 + t20) * t275, t54 * t224 - t108 * t49 + t30 * t137 - t9 * t188 - t3 * t209 - t64 * t68 + (-qJD(1) * t51 - t22) * t275, -t102 * t9 - t135 * t3 - t137 * t2 + t20 * t68 - t22 * t70 - t224 * t8 + t48 * t49 - t50 * t51, t108 * t30 + t2 * t48 + t20 * t8 + t22 * t9 + t3 * t51 + t54 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t214, -t286, 0, 0, 0, 0, 0, 0, t281 * t209, t281 * t211, 0, -t286, 0, 0, 0, 0, 0, 0, -t211 * t283 - t236 * t295 + (-t162 * t209 - t196 * t293) * qJD(3), t289 + t236 * t297 + (-t196 * t290 + (t163 - t255) * t209) * qJD(3) (-t162 * t236 + t163 * t275 - t303) * t208 + (t162 * t275 + t163 * t236 + t209 * t222) * t210, -t228 * t275 + t229 * qJD(1) + (-t226 + t217) * t209, 0, 0, 0, 0, 0, 0, t11, t10, t1, t114 * t277 - t7 * t134 - t136 * t243 - t90 * t211 - t310 * t34 - t311 * t33, 0, 0, 0, 0, 0, 0, t11, t10, t1, -t2 * t134 + t3 * t136 - t20 * t311 - t30 * t211 - t22 * t310 + t277 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t259, -t282 * t214, 0, -t259, 0, 0, -t211 * t286, t209 * t286, 0, 0, t163 * t295 - t304 (-t120 + t300) * t210 + (qJD(1) * t227 - t268 - t283) * t208, t196 * t272 + (t196 * t292 + t211 * t237) * qJD(1), -t162 * t297 + t219, -t196 * t273 + (-t208 * t296 + t211 * t238) * qJD(1), -t196 * t279, -pkin(3) * t283 - t111 * t196 - t238 * t173 + (-pkin(8) * t295 + t302) * qJD(4) + (-t95 * t211 + (qJD(3) * t230 + t301) * t208) * qJD(1), pkin(3) * t120 + t112 * t196 + t190 * t227 + (pkin(8) * t297 + t153 * t210) * qJD(4) + (t211 * t96 + (-pkin(8) * t275 + t301) * t210) * qJD(1), t111 * t163 - t112 * t162 + ((-qJD(4) * t162 - t120) * pkin(8) + t335) * t208 + ((t222 + t268) * pkin(8) + t336) * t210, -t95 * t111 - t96 * t112 + (-t153 - t316) * t173 + t217 * pkin(8), t14, t4, t31, t15, t32, -t248, -t90 * t223 + t203 * t50 - t319 * t188 + t284 * t114 + t232 * t102 + (qJD(3) * t118 - t33) * t279, t90 * t166 - t203 * t49 + t318 * t188 - t285 * t114 + t232 * t224 + (-qJD(3) * t119 + t34) * t279, t318 * t102 + t118 * t49 - t119 * t50 - t7 * t166 - t223 * t243 + t224 * t319 - t284 * t34 + t285 * t33, t232 * t114 + t7 * t118 - t119 * t243 + t90 * t203 - t318 * t34 - t319 * t33, t14, t4, t31, t15, t32, -t248, t130 * t50 - t30 * t223 + t284 * t64 - t322 * t188 + t317 * t102 + (qJD(3) * t88 - t20) * t279, -t130 * t49 + t30 * t166 - t285 * t64 + t321 * t188 + t317 * t224 + (-qJD(3) * t89 + t22) * t279, t321 * t102 - t2 * t166 + t285 * t20 - t284 * t22 + t223 * t3 + t224 * t322 + t88 * t49 - t89 * t50, t30 * t130 + t2 * t88 - t322 * t20 - t321 * t22 + t3 * t89 + t317 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t299, -t162 ^ 2 + t163 ^ 2, -t120 - t300, t299, t163 * t196 + t222, t198, -t153 * t163 - t335, -t153 * t162 - t336, 0, 0, t341, t346, t343, -t341, t340, t198, -t39 * t188 + (-t102 * t163 - t188 * t270 + t198 * t324) * pkin(4) + t328, t40 * t188 - t156 + (-t163 * t224 - t233) * pkin(4) + t338, t49 * t344 + t320 + (t34 + t39 + t345) * t224 + (t40 - t33) * t102, -t33 * t39 - t34 * t40 + (t324 * t7 - t114 * t163 - t207 * t243 + (-t207 * t33 + t324 * t34) * qJD(5)) * pkin(4), t341, t346, t343, -t341, t340, t198, t202 * t198 + t313 - t337 - t82 * t102 - t23 * t188 + (-t77 + (-pkin(4) * t188 - t71) * t207) * qJD(5) + t244 + t332, -pkin(4) * t233 + t102 * t64 + t188 * t24 - t224 * t82 - t156 - t3, t202 * t49 + t320 + (t22 + t23 + t345) * t224 + (t24 - t20) * t102, t2 * t202 - t20 * t23 - t22 * t24 - t64 * t82 + (t207 * t3 + (-t20 * t207 + t22 * t324) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t341, t346, t343, -t341, t340, t198, t34 * t188 + t328, t188 * t33 + t338, 0, 0, t341, t346, t343, -t341, t340, t198, t22 * t188 + 0.2e1 * t195 + (t242 - t64) * t224 + t215, -t326 * pkin(5) + t21 * t188 + (qJD(6) + t64) * t102 + t225, t49 * pkin(5) - t102 * t323, t323 * t22 + (t2 - t337) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50 + t305, -t49 - t308, -t100 - t326, t22 * t102 + t20 * t224 + t30;];
tauc_reg  = t6;
