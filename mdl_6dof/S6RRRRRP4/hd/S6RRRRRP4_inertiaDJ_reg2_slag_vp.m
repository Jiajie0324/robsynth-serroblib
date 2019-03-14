% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRRP4_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP4_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP4_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP4_inertiaDJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:15:41
% EndTime: 2019-03-10 01:15:57
% DurationCPUTime: 5.64s
% Computational Cost: add. (10451->426), mult. (23184->651), div. (0->0), fcn. (21929->8), ass. (0->223)
t198 = cos(qJ(4));
t192 = t198 * pkin(10);
t328 = sin(qJ(3));
t279 = t328 * pkin(2);
t247 = t279 + pkin(9);
t230 = t198 * t247;
t155 = t230 + t192;
t195 = sin(qJ(5));
t196 = sin(qJ(4));
t246 = -pkin(10) - t247;
t224 = t196 * t246;
t329 = cos(qJ(5));
t213 = t329 * t224;
t117 = t195 * t155 - t213;
t218 = t195 * t224;
t118 = t329 * t155 + t218;
t301 = t195 * t196;
t335 = qJD(4) + qJD(5);
t257 = t329 * qJD(5);
t339 = t329 * qJD(4) + t257;
t125 = -t339 * t198 + t335 * t301;
t269 = t329 * t196;
t300 = t195 * t198;
t162 = t269 + t300;
t126 = t335 * t162;
t268 = t329 * t198;
t160 = -t268 + t301;
t223 = qJD(4) * t246;
t330 = cos(qJ(3));
t260 = qJD(3) * t330;
t250 = pkin(2) * t260;
t242 = t198 * t250;
t207 = t196 * t223 + t242;
t243 = t196 * t250;
t208 = -t198 * t223 + t243;
t287 = qJD(5) * t195;
t59 = -qJD(5) * t213 + t155 * t287 + t195 * t208 - t329 * t207;
t60 = qJD(5) * t218 + t155 * t257 + t195 * t207 + t329 * t208;
t333 = -t117 * t125 - t118 * t126 + t59 * t160 + t60 * t162;
t345 = 0.2e1 * t333;
t172 = t198 * pkin(9) + t192;
t331 = -pkin(10) - pkin(9);
t249 = t331 * t329;
t234 = t196 * t249;
t133 = t195 * t172 - t234;
t135 = t329 * t172 + t331 * t301;
t232 = qJD(4) * t249;
t271 = t331 * qJD(4);
t92 = -qJD(5) * t234 + t172 * t287 - t196 * t232 - t271 * t300;
t93 = t172 * t257 - t198 * t232 + (qJD(5) * t331 + t271) * t301;
t334 = -t133 * t125 - t135 * t126 + t92 * t160 + t93 * t162;
t344 = 0.2e1 * t334;
t197 = sin(qJ(2));
t332 = -pkin(8) - pkin(7);
t272 = qJD(2) * t332;
t166 = t197 * t272;
t171 = t332 * t197;
t199 = cos(qJ(2));
t173 = t332 * t199;
t259 = qJD(3) * t328;
t210 = t330 * t166 + t171 * t260 + t173 * t259;
t267 = t328 * t199;
t235 = t332 * t267;
t205 = qJD(2) * t235 + t210;
t270 = t330 * t199;
t161 = t328 * t197 - t270;
t163 = t330 * t197 + t267;
t187 = -t199 * pkin(2) - pkin(1);
t215 = t161 * pkin(3) - t163 * pkin(9) + t187;
t343 = -qJD(4) * t215 - t205;
t191 = qJD(4) * t198;
t336 = qJD(2) + qJD(3);
t127 = t336 * t161;
t299 = t196 * t127;
t227 = t163 * t191 - t299;
t342 = t334 + t333;
t193 = t196 ^ 2;
t194 = t198 ^ 2;
t290 = t193 - t194;
t337 = t290 * qJD(4);
t341 = 0.2e1 * t160 * t125 - 0.2e1 * t126 * t162;
t340 = t193 + t194;
t288 = qJD(4) * t196;
t266 = t163 * t288;
t297 = t198 * t127;
t226 = t266 + t297;
t136 = t328 * t171 - t330 * t173;
t83 = -t196 * t136 + t198 * t215;
t84 = t198 * t136 + t196 * t215;
t338 = -t196 * t83 + t198 * t84;
t128 = t336 * t163;
t286 = t197 * qJD(2);
t276 = pkin(2) * t286;
t214 = t128 * pkin(3) + t127 * pkin(9) + t276;
t27 = -t136 * t191 + t196 * t343 + t198 * t214;
t201 = t128 * pkin(4) + t226 * pkin(10) + t27;
t26 = t136 * t288 - t196 * t214 + t198 * t343;
t206 = -pkin(10) * t227 - t26;
t204 = t195 * t206 - t329 * t201;
t302 = t163 * t198;
t326 = t161 * pkin(4);
t55 = -pkin(10) * t302 + t326 + t83;
t303 = t163 * t196;
t72 = -pkin(10) * t303 + t84;
t69 = t329 * t72;
t315 = t195 * t55 + t69;
t8 = -qJD(5) * t315 - t204;
t200 = 2 * qJD(6);
t327 = pkin(9) * t128;
t122 = t128 * pkin(5);
t325 = t198 * pkin(4);
t274 = t163 * t301;
t110 = t163 * t268 - t274;
t35 = t126 * t163 + t127 * t268 - t195 * t299;
t36 = -t127 * t269 - t195 * t266 - qJD(5) * t274 + (-t127 * t195 + t339 * t163) * t198;
t94 = t136 * qJD(3) + t328 * t166 - t270 * t272;
t46 = pkin(4) * t227 + t94;
t14 = t36 * pkin(5) + t35 * qJ(6) - t110 * qJD(6) + t46;
t134 = -t330 * t171 - t328 * t173;
t104 = pkin(4) * t303 + t134;
t109 = t162 * t163;
t43 = t109 * pkin(5) - t110 * qJ(6) + t104;
t324 = t43 * t126 + t14 * t160;
t323 = t43 * t125 - t14 * t162;
t322 = t104 * t126 + t46 * t160;
t321 = -t104 * t125 + t46 * t162;
t186 = -pkin(3) - t325;
t119 = t160 * pkin(5) - t162 * qJ(6) + t186;
t281 = t330 * pkin(2);
t108 = -t281 + t119;
t190 = pkin(2) * t259;
t189 = pkin(4) * t288;
t71 = t126 * pkin(5) + t125 * qJ(6) - t162 * qJD(6) + t189;
t62 = t190 + t71;
t319 = t108 * t126 + t62 * t160;
t318 = t108 * t125 - t62 * t162;
t317 = t119 * t126 + t71 * t160;
t316 = t119 * t125 - t71 * t162;
t313 = pkin(2) * qJD(3);
t312 = t134 * t94;
t307 = t134 * t191 + t94 * t196;
t304 = t163 * t127;
t298 = t196 * t128;
t296 = t198 * t128;
t167 = t190 + t189;
t185 = -t281 - pkin(3);
t170 = t185 - t325;
t295 = t170 * t126 + t167 * t160;
t294 = -t170 * t125 + t167 * t162;
t293 = t186 * t126 + t160 * t189;
t292 = -t186 * t125 + t162 * t189;
t291 = t185 * t191 + t196 * t190;
t285 = t199 * qJD(2);
t284 = -0.2e1 * pkin(1) * qJD(2);
t283 = 0.2e1 * t109 * t36;
t282 = 0.2e1 * t160 * t126;
t102 = 0.2e1 * t161 * t128;
t280 = t329 * pkin(4);
t278 = pkin(3) * t288;
t277 = pkin(3) * t191;
t275 = pkin(4) * t287;
t273 = t196 * t297;
t264 = t196 * t191;
t263 = t197 * t285;
t31 = -t195 * t72 + t329 * t55;
t7 = -t195 * t201 - t329 * t206 - t55 * t257 + t287 * t72;
t262 = t31 * t125 - t126 * t315 + t7 * t160 - t8 * t162;
t121 = t128 * qJ(6);
t154 = t161 * qJD(6);
t2 = t121 + t154 - t7;
t28 = t161 * qJ(6) + t315;
t29 = -t161 * pkin(5) - t31;
t4 = -t122 - t8;
t261 = -t29 * t125 - t28 * t126 - t2 * t160 + t4 * t162;
t256 = t117 * t60 - t118 * t59;
t255 = t133 * t93 - t135 * t92;
t158 = t163 ^ 2;
t248 = t158 * t264;
t245 = t109 * t35 - t36 * t110;
t244 = t84 * t196 + t83 * t198;
t241 = t109 * t126 + t36 * t160;
t240 = t109 * t128 + t36 * t161;
t239 = -t117 * t128 - t60 * t161;
t238 = t118 * t128 - t59 * t161;
t237 = -t133 * t128 - t93 * t161;
t236 = t135 * t128 - t92 * t161;
t67 = t126 * t161 + t160 * t128;
t231 = t196 * t247;
t229 = qJD(4) * t247;
t225 = t161 * t288 - t296;
t222 = t185 * t288 - t190 * t198;
t221 = t59 * t109 + t60 * t110 - t117 * t35 - t118 * t36;
t220 = t92 * t109 + t93 * t110 - t133 * t35 - t135 * t36;
t219 = t117 * t93 - t118 * t92 + t133 * t60 - t59 * t135;
t217 = t340 * t330;
t212 = t161 * t247 - t185 * t163;
t12 = t109 * t125 - t126 * t110 + t160 * t35 - t36 * t162;
t9 = -qJD(4) * t244 - t27 * t196 - t26 * t198;
t209 = -t328 * t128 + (-t330 * t161 + t328 * t163) * qJD(3);
t203 = pkin(2) * t209 - t185 * t127 - t327;
t202 = (-t69 + (-t55 - t326) * t195) * qJD(5) - t204;
t188 = pkin(4) * t257;
t184 = -t280 - pkin(5);
t181 = t195 * pkin(4) + qJ(6);
t180 = -0.2e1 * t275;
t177 = t188 + qJD(6);
t176 = -0.2e1 * t264;
t175 = 0.2e1 * t264;
t159 = -0.2e1 * t337;
t148 = t217 * t313;
t123 = t134 * t288;
t103 = -0.2e1 * t162 * t125;
t99 = t161 * t191 + t298;
t80 = t163 * t337 + t273;
t73 = pkin(5) * t125 - t126 * qJ(6) - t160 * qJD(6);
t66 = -t125 * t161 + t162 * t128;
t65 = t127 * t290 - 0.4e1 * t163 * t264;
t50 = (t329 * t125 - t126 * t195 + (-t329 * t160 + t162 * t195) * qJD(5)) * pkin(4);
t45 = -t184 * t125 - t181 * t126 - t177 * t160 + t162 * t275;
t30 = -0.2e1 * t110 * t35;
t19 = -t110 * t125 - t35 * t162;
t18 = 0.2e1 * t110 * t128 - 0.2e1 * t35 * t161;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t263, 0.2e1 * (-t197 ^ 2 + t199 ^ 2) * qJD(2), 0, -0.2e1 * t263, 0, 0, t197 * t284, t199 * t284, 0, 0, -0.2e1 * t304, 0.2e1 * t127 * t161 - 0.2e1 * t163 * t128, 0, t102, 0, 0, 0.2e1 * t187 * t128 + 0.2e1 * t161 * t276, -0.2e1 * t187 * t127 + 0.2e1 * t163 * t276, -0.2e1 * t134 * t127 - 0.2e1 * t136 * t128 - 0.2e1 * t161 * t205 + 0.2e1 * t94 * t163, 0.2e1 * t136 * t210 + 0.2e1 * t312 + 0.2e1 * (t187 * t197 * pkin(2) + t136 * t235) * qJD(2), -0.2e1 * t194 * t304 - 0.2e1 * t248, 0.2e1 * t158 * t337 + 0.4e1 * t163 * t273, -0.2e1 * t161 * t226 + 0.2e1 * t163 * t296, -0.2e1 * t193 * t304 + 0.2e1 * t248, -0.2e1 * t161 * t227 - 0.2e1 * t163 * t298, t102, 0.2e1 * t83 * t128 + 0.2e1 * t134 * t227 + 0.2e1 * t27 * t161 + 0.2e1 * t94 * t303, -0.2e1 * t84 * t128 - 0.2e1 * t134 * t226 + 0.2e1 * t26 * t161 + 0.2e1 * t94 * t302, 0.2e1 * t244 * t127 + 0.2e1 * (-t338 * qJD(4) + t196 * t26 - t198 * t27) * t163, -0.2e1 * t84 * t26 + 0.2e1 * t83 * t27 + 0.2e1 * t312, t30, 0.2e1 * t245, t18, t283, -0.2e1 * t240, t102, 0.2e1 * t104 * t36 + 0.2e1 * t46 * t109 + 0.2e1 * t31 * t128 + 0.2e1 * t8 * t161, -0.2e1 * t104 * t35 + 0.2e1 * t46 * t110 - 0.2e1 * t128 * t315 + 0.2e1 * t7 * t161, 0.2e1 * t7 * t109 - 0.2e1 * t8 * t110 + 0.2e1 * t31 * t35 - 0.2e1 * t315 * t36, 0.2e1 * t104 * t46 + 0.2e1 * t31 * t8 - 0.2e1 * t315 * t7, t30, t18, -0.2e1 * t245, t102, 0.2e1 * t240, t283, 0.2e1 * t14 * t109 - 0.2e1 * t29 * t128 - 0.2e1 * t4 * t161 + 0.2e1 * t43 * t36, -0.2e1 * t2 * t109 + 0.2e1 * t4 * t110 - 0.2e1 * t28 * t36 - 0.2e1 * t29 * t35, -0.2e1 * t14 * t110 + 0.2e1 * t28 * t128 + 0.2e1 * t2 * t161 + 0.2e1 * t43 * t35, 0.2e1 * t43 * t14 + 0.2e1 * t28 * t2 + 0.2e1 * t29 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t285, 0, -t286, 0, -pkin(7) * t285, pkin(7) * t286, 0, 0, 0, 0, -t127, 0, -t128, 0, -t94, -t205 (t330 * t127 + t209) * pkin(2), t134 * t190 + t136 * t250 + t205 * t279 - t281 * t94, -t80, t65, t99, t80, -t225, 0, t123 + (-qJD(4) * t212 - t94) * t198 + t203 * t196, t198 * t203 + t212 * t288 + t307, t9, -t26 * t230 - t27 * t231 + t94 * t185 + (-t230 * t83 - t231 * t84) * qJD(4) + (t134 * t328 + t338 * t330) * t313, t19, t12, t66, t241, -t67, 0, t167 * t109 + t170 * t36 + t239 + t322, t167 * t110 - t170 * t35 - t238 + t321, t221 + t262, t104 * t167 - t8 * t117 - t7 * t118 + t46 * t170 - t31 * t60 - t315 * t59, t19, t66, -t12, 0, t67, t241, t108 * t36 + t62 * t109 + t239 + t324, t221 + t261, t108 * t35 - t62 * t110 + t238 + t323, t14 * t108 + t4 * t117 + t2 * t118 - t28 * t59 + t29 * t60 + t43 * t62; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t190, -0.2e1 * t250, 0, 0, t175, t159, 0, t176, 0, 0, 0.2e1 * t222, 0.2e1 * t291, 0.2e1 * t148, 0.2e1 * (t340 * t247 * t281 + t185 * t279) * qJD(3), t103, t341, 0, t282, 0, 0, 0.2e1 * t295, 0.2e1 * t294, t345, 0.2e1 * t170 * t167 + 0.2e1 * t256, t103, 0, -t341, 0, 0, t282, 0.2e1 * t319, t345, 0.2e1 * t318, 0.2e1 * t108 * t62 + 0.2e1 * t256; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t127, 0, -t128, 0, -t94, -t205, 0, 0, -t80, t65, t99, t80, -t225, 0, t123 + (pkin(3) * t127 - t327) * t196 + (-t94 + (-pkin(3) * t163 - pkin(9) * t161) * qJD(4)) * t198, pkin(3) * t226 + pkin(9) * t225 + t307, t9, -t94 * pkin(3) + pkin(9) * t9, t19, t12, t66, t241, -t67, 0, t109 * t189 + t186 * t36 + t237 + t322, t110 * t189 - t186 * t35 - t236 + t321, t220 + t262, t104 * t189 - t8 * t133 - t7 * t135 + t46 * t186 - t31 * t93 - t315 * t92, t19, t66, -t12, 0, t67, t241, t71 * t109 + t119 * t36 + t237 + t324, t220 + t261, -t71 * t110 + t119 * t35 + t236 + t323, t14 * t119 + t4 * t133 + t2 * t135 - t28 * t92 + t29 * t93 + t43 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t190, -t250, 0, 0, t175, t159, 0, t176, 0, 0, t222 - t278, -t277 + t291, t148 (-t328 * pkin(3) + t217 * pkin(9)) * t313, t103, t341, 0, t282, 0, 0, t293 + t295, t292 + t294, t342, t167 * t186 + t170 * t189 + t219, t103, 0, -t341, 0, 0, t282, t317 + t319, t342, t316 + t318, t108 * t71 + t119 * t62 + t219; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t175, t159, 0, t176, 0, 0, -0.2e1 * t278, -0.2e1 * t277, 0, 0, t103, t341, 0, t282, 0, 0, 0.2e1 * t293, 0.2e1 * t292, t344, 0.2e1 * t186 * t189 + 0.2e1 * t255, t103, 0, -t341, 0, 0, t282, 0.2e1 * t317, t344, 0.2e1 * t316, 0.2e1 * t119 * t71 + 0.2e1 * t255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t226, 0, -t227, t128, t27, t26, 0, 0, 0, 0, -t35, 0, -t36, t128, t128 * t280 + t202 (-t128 * t195 - t161 * t257) * pkin(4) + t7 (t329 * t35 - t195 * t36 + (-t329 * t109 + t110 * t195) * qJD(5)) * pkin(4) (t329 * t8 - t195 * t7 + (-t195 * t31 + t315 * t329) * qJD(5)) * pkin(4), 0, -t35, 0, t128, t36, 0, -t184 * t128 + t122 + t202, -t109 * t177 + t110 * t275 - t181 * t36 - t184 * t35, t128 * t181 + t161 * t177 + t2, t177 * t28 + t181 * t2 + t184 * t4 + t275 * t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t191, 0, -t288, 0, -t198 * t229 - t243, t196 * t229 - t242, 0, 0, 0, 0, -t125, 0, -t126, 0, -t60, t59, t50 (-t329 * t60 - t195 * t59 + (t117 * t195 + t329 * t118) * qJD(5)) * pkin(4), 0, -t125, 0, 0, t126, 0, -t60, t45, -t59, t117 * t275 + t118 * t177 - t181 * t59 + t184 * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t191, 0, -t288, 0, -pkin(9) * t191, pkin(9) * t288, 0, 0, 0, 0, -t125, 0, -t126, 0, -t93, t92, t50 (-t329 * t93 - t195 * t92 + (t133 * t195 + t329 * t135) * qJD(5)) * pkin(4), 0, -t125, 0, 0, t126, 0, -t93, t45, -t92, t133 * t275 + t135 * t177 - t181 * t92 + t184 * t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180, -0.2e1 * t188, 0, 0, 0, 0, 0, 0, 0, 0, t180, 0, 0.2e1 * t177, 0.2e1 * t177 * t181 + 0.2e1 * t184 * t275; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35, 0, -t36, t128, t8, t7, 0, 0, 0, -t35, 0, t128, t36, 0, 0.2e1 * t122 + t8, pkin(5) * t35 - qJ(6) * t36 - qJD(6) * t109, 0.2e1 * t121 + 0.2e1 * t154 - t7, -pkin(5) * t4 + qJ(6) * t2 + qJD(6) * t28; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, 0, -t126, 0, -t60, t59, 0, 0, 0, -t125, 0, 0, t126, 0, -t60, t73, -t59, -pkin(5) * t60 - qJ(6) * t59 + qJD(6) * t118; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, 0, -t126, 0, -t93, t92, 0, 0, 0, -t125, 0, 0, t126, 0, -t93, t73, -t92, -pkin(5) * t93 - qJ(6) * t92 + qJD(6) * t135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t275, -t188, 0, 0, 0, 0, 0, 0, 0, 0, -t275, 0, t200 + t188, -pkin(5) * t275 + qJ(6) * t177 + qJD(6) * t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t200, qJ(6) * t200; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t128, -t35, 0, t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, 0, t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, 0, t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t275; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t1;