% Calculate inertial parameters regressor of coriolis joint torque vector for
% S5RRRRP11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d4]';
% 
% Output:
% tauc_reg [5x(5*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:20
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S5RRRRP11_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP11_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP11_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRP11_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:18:32
% EndTime: 2019-12-31 22:18:50
% DurationCPUTime: 6.78s
% Computational Cost: add. (8372->524), mult. (22628->705), div. (0->0), fcn. (16965->8), ass. (0->232)
t188 = cos(qJ(3));
t314 = pkin(8) * t188;
t185 = sin(qJ(3));
t273 = qJD(3) * t185;
t341 = pkin(8) * t273;
t186 = sin(qJ(2));
t288 = cos(pkin(5));
t260 = pkin(1) * t288;
t177 = t186 * t260;
t233 = pkin(3) * t185 - pkin(9) * t188;
t183 = sin(pkin(5));
t189 = cos(qJ(2));
t283 = t183 * t189;
t340 = qJD(4) * t314 - t233 * qJD(3) + (t177 + (pkin(7) + t233) * t283) * qJD(1);
t275 = qJD(1) * t189;
t173 = t183 * t275;
t339 = t185 * t173 - t273;
t250 = t288 * qJD(1);
t211 = t250 + qJD(2);
t276 = qJD(1) * t186;
t258 = t183 * t276;
t241 = t185 * t258;
t125 = -t188 * t211 + t241;
t121 = qJD(4) + t125;
t184 = sin(qJ(4));
t187 = cos(qJ(4));
t242 = t189 * t260;
t144 = -pkin(7) * t258 + qJD(1) * t242;
t107 = -pkin(2) * t211 - t144;
t127 = t185 * t211 + t188 * t258;
t65 = t125 * pkin(3) - t127 * pkin(9) + t107;
t225 = t173 - qJD(3);
t279 = pkin(7) * t283 + t177;
t141 = t288 * pkin(8) + t279;
t108 = qJD(2) * pkin(8) + t141 * qJD(1);
t142 = (-pkin(2) * t189 - pkin(8) * t186 - pkin(1)) * t183;
t120 = qJD(1) * t142;
t73 = t188 * t108 + t185 * t120;
t67 = -t225 * pkin(9) + t73;
t22 = t184 * t65 + t187 * t67;
t269 = qJD(4) * t187;
t270 = qJD(4) * t184;
t207 = (pkin(2) * t186 - pkin(8) * t189) * t183;
t146 = qJD(2) * t207;
t136 = qJD(1) * t146;
t284 = t183 * t186;
t154 = -pkin(7) * t284 + t242;
t148 = t154 * qJD(2);
t137 = qJD(1) * t148;
t271 = qJD(3) * t188;
t202 = t108 * t273 - t120 * t271 - t185 * t136 - t188 * t137;
t265 = qJD(1) * qJD(2);
t252 = t183 * t265;
t237 = t186 * t252;
t29 = pkin(9) * t237 - t202;
t236 = t189 * t252;
t214 = pkin(7) * t236;
t231 = qJD(2) * t250;
t322 = qJD(3) * t241 - t188 * (qJD(3) * t211 + t236);
t212 = t185 * t236;
t266 = t127 * qJD(3);
t98 = t212 + t266;
t52 = pkin(1) * t186 * t231 + t98 * pkin(3) + pkin(9) * t322 + t214;
t251 = t184 * t29 - t187 * t52 + t67 * t269 + t65 * t270;
t208 = t121 * t22 - t251;
t338 = qJD(4) * t225 + t322;
t337 = -t185 * t322 + t188 * t266;
t239 = t188 * t173;
t114 = t184 * t239 - t187 * t258;
t277 = qJD(1) * t183;
t281 = t187 * t189;
t115 = (t184 * t186 + t188 * t281) * t277;
t54 = t127 * t269 - t338 * t184 - t187 * t237;
t292 = t54 * t187;
t53 = t127 * t270 - t184 * t237 + t338 * t187;
t293 = t53 * t184;
t94 = t127 * t184 + t187 * t225;
t96 = t187 * t127 - t184 * t225;
t336 = ((t184 * t94 - t187 * t96) * qJD(4) - t292 + t293) * t185 - (t184 * t96 + t187 * t94) * t271 + t114 * t96 + t115 * t94;
t230 = t184 * t271 - t114;
t297 = t184 * t98;
t335 = -t230 * t121 + (-t121 * t269 + t225 * t94 - t297) * t185 + t188 * t54;
t291 = t96 * t121;
t300 = t121 * t94;
t334 = (t54 + t291) * t184 + (t53 + t300) * t187;
t180 = t183 ^ 2;
t253 = t180 * t265;
t333 = -0.2e1 * t253;
t18 = qJ(5) * t121 + t22;
t317 = pkin(4) * t98;
t2 = t251 - t317;
t332 = -t121 * t18 + t2;
t170 = -pkin(3) * t188 - pkin(9) * t185 - pkin(2);
t272 = qJD(3) * t187;
t145 = qJD(1) * t207;
t91 = t188 * t144 + t185 * t145;
t81 = pkin(9) * t258 + t91;
t305 = t185 * t272 * pkin(8) - t170 * t269 + t340 * t184 + t187 * t81;
t331 = t91 + t341;
t328 = t186 * t189;
t151 = t185 * t284 - t288 * t188;
t256 = qJD(2) * t283;
t102 = -qJD(3) * t151 + t188 * t256;
t327 = -qJD(4) * t283 + t102;
t326 = t239 - t271;
t72 = -t185 * t108 + t188 * t120;
t66 = t225 * pkin(3) - t72;
t20 = t94 * pkin(4) - t96 * qJ(5) + t66;
t315 = pkin(9) * t98;
t325 = t121 * t20 - t315;
t140 = -t288 * pkin(2) - t154;
t152 = t288 * t185 + t188 * t284;
t76 = t151 * pkin(3) - t152 * pkin(9) + t140;
t88 = t188 * t141 + t185 * t142;
t78 = -pkin(9) * t283 + t88;
t304 = t184 * t76 + t187 * t78;
t274 = qJD(2) * t186;
t257 = t183 * t274;
t55 = -t141 * t273 + t142 * t271 + t185 * t146 + t188 * t148;
t45 = pkin(9) * t257 + t55;
t101 = qJD(3) * t152 + t185 * t256;
t149 = t279 * qJD(2);
t59 = t101 * pkin(3) - t102 * pkin(9) + t149;
t11 = -qJD(4) * t304 - t184 * t45 + t187 * t59;
t306 = t170 * t270 + (-t81 - t341) * t184 + t340 * t187;
t319 = t96 ^ 2;
t318 = t121 ^ 2;
t190 = qJD(1) ^ 2;
t316 = pkin(9) * t96;
t40 = -t108 * t271 - t120 * t273 + t188 * t136 - t185 * t137;
t30 = -pkin(3) * t237 - t40;
t6 = pkin(4) * t54 + qJ(5) * t53 - qJD(5) * t96 + t30;
t313 = t184 * t6;
t312 = t187 * t6;
t311 = t20 * t96;
t310 = t96 * t94;
t309 = t339 * qJ(5) + qJD(5) * t188 + t305;
t308 = -t339 * pkin(4) - t306;
t226 = pkin(4) * t184 - qJ(5) * t187;
t209 = pkin(8) + t226;
t227 = pkin(4) * t187 + qJ(5) * t184;
t90 = -t185 * t144 + t145 * t188;
t80 = -pkin(3) * t258 - t90;
t307 = pkin(4) * t114 - qJ(5) * t115 + t80 - (qJD(4) * t227 - qJD(5) * t187) * t185 - t209 * t271;
t86 = pkin(3) * t127 + pkin(9) * t125;
t35 = t184 * t86 + t187 * t72;
t303 = qJ(5) * t98;
t299 = t151 * t98;
t298 = t184 * t30;
t296 = t187 * t30;
t295 = t187 * t98;
t290 = t98 * t188;
t289 = -t184 * qJD(5) + t121 * t226 - t73;
t287 = t121 * t127;
t286 = t127 * t125;
t238 = t127 * t173;
t285 = t180 * t190;
t282 = t187 * t170;
t21 = -t184 * t67 + t187 * t65;
t280 = qJD(5) - t21;
t135 = t184 * t170 + t187 * t314;
t278 = t186 ^ 2 - t189 ^ 2;
t267 = t107 * qJD(3);
t264 = pkin(9) * t270;
t263 = pkin(9) * t269;
t261 = t94 ^ 2 - t319;
t87 = -t185 * t141 + t142 * t188;
t249 = t189 * t225;
t248 = t121 * t184;
t247 = t121 * t187;
t246 = t225 * t183;
t245 = qJD(3) * t225;
t243 = t285 * t328;
t235 = t183 * t190 * t288;
t234 = pkin(1) * t333;
t77 = pkin(3) * t283 - t87;
t232 = (qJD(4) * t94 - t53) * pkin(9);
t229 = t187 * t271 - t115;
t103 = t152 * t184 + t183 * t281;
t62 = t152 * t269 + t327 * t184 - t187 * t257;
t228 = t103 * t54 + t62 * t94;
t223 = -t127 * t94 - t295;
t17 = -pkin(4) * t121 + t280;
t222 = t17 * t187 - t18 * t184;
t221 = -t184 * t22 - t187 * t21;
t34 = -t184 * t72 + t187 * t86;
t31 = -t184 * t78 + t187 * t76;
t215 = -t40 * t185 - t188 * t202;
t213 = t253 * t328;
t210 = 0.2e1 * t250 + qJD(2);
t56 = -t141 * t271 - t142 * t273 + t146 * t188 - t185 * t148;
t3 = t184 * t52 + t187 * t29 + t65 * t269 - t67 * t270;
t10 = t184 * t59 + t187 * t45 + t76 * t269 - t78 * t270;
t205 = t121 * t66 - t315;
t203 = t185 * t225;
t200 = t248 * t94 - t292;
t198 = pkin(1) * (-t231 + t285);
t104 = t152 * t187 - t184 * t283;
t63 = -t152 * t270 + t184 * t257 + t327 * t187;
t197 = t103 * t53 - t104 * t54 - t62 * t96 - t63 * t94;
t196 = t101 * t94 + t103 * t98 + t121 * t62 + t151 * t54;
t46 = -pkin(3) * t257 - t56;
t194 = t54 * t184 * t185 + (t185 * t269 + t230) * t94;
t191 = t54 - t291;
t165 = -pkin(3) - t227;
t147 = t279 * qJD(1);
t143 = t209 * t185;
t138 = qJD(1) * t149;
t134 = -t184 * t314 + t282;
t110 = -t282 + (pkin(8) * t184 + pkin(4)) * t188;
t109 = -qJ(5) * t188 + t135;
t58 = pkin(4) * t96 + qJ(5) * t94;
t51 = pkin(9) * t292;
t44 = -t121 * t203 - t290;
t41 = t101 * t121 + t299;
t33 = pkin(4) * t103 - qJ(5) * t104 + t77;
t26 = -pkin(4) * t151 - t31;
t25 = qJ(5) * t151 + t304;
t24 = -pkin(4) * t127 - t34;
t23 = qJ(5) * t127 + t35;
t19 = -t53 + t300;
t16 = t121 * t247 - t96 * t127 + t297;
t15 = t247 * t96 - t293;
t14 = -t104 * t53 + t63 * t96;
t13 = -t53 * t187 * t185 + (-t185 * t270 + t229) * t96;
t12 = pkin(4) * t62 - qJ(5) * t63 - qJD(5) * t104 + t46;
t9 = -t101 * pkin(4) - t11;
t8 = t188 * t53 + t229 * t121 + (-t121 * t270 - t225 * t96 + t295) * t185;
t7 = t101 * t96 + t104 * t98 + t121 * t63 - t151 * t53;
t5 = qJ(5) * t101 + qJD(5) * t151 + t10;
t1 = qJD(5) * t121 + t3 + t303;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t213, t278 * t333, t210 * t256, -0.2e1 * t213, -t210 * t257, 0, -t138 * t288 - t149 * t211 + t186 * t234, -t137 * t288 - t148 * t211 + t189 * t234, (t137 * t189 + t138 * t186 + (-t144 * t189 - t147 * t186) * qJD(2) + (t148 * t189 + t149 * t186 + (-t154 * t189 - t186 * t279) * qJD(2)) * qJD(1)) * t183, t137 * t279 - t138 * t154 - t144 * t149 + t147 * t148, t127 * t102 - t152 * t322, -t127 * t101 - t102 * t125 + t151 * t322 - t152 * t98, -t102 * t225 + t127 * t257 + t152 * t237 + t283 * t322, t101 * t125 + t299, t101 * t225 + (t98 * t189 + (-qJD(1) * t151 - t125) * t274) * t183, (-t180 * t275 - t246) * t274, -t56 * t225 + t149 * t125 + t140 * t98 + t138 * t151 + t107 * t101 + (-t40 * t189 + (qJD(1) * t87 + t72) * t274) * t183, t107 * t102 + t149 * t127 + t138 * t152 - t140 * t322 - t202 * t283 + t55 * t225 - t88 * t237 - t73 * t257, -t73 * t101 - t72 * t102 - t55 * t125 - t56 * t127 + t151 * t202 - t40 * t152 + t322 * t87 - t88 * t98, t107 * t149 + t138 * t140 - t202 * t88 + t40 * t87 + t55 * t73 + t56 * t72, t14, t197, t7, t228, -t196, t41, t101 * t21 + t103 * t30 + t11 * t121 - t151 * t251 + t31 * t98 + t46 * t94 + t54 * t77 + t62 * t66, -t10 * t121 - t101 * t22 + t104 * t30 - t151 * t3 - t304 * t98 + t46 * t96 - t53 * t77 + t63 * t66, -t10 * t94 - t103 * t3 + t104 * t251 - t11 * t96 - t21 * t63 - t22 * t62 - t304 * t54 + t31 * t53, t10 * t22 + t11 * t21 - t251 * t31 + t3 * t304 + t30 * t77 + t46 * t66, t14, t7, -t197, t41, t196, t228, -t101 * t17 + t103 * t6 + t12 * t94 - t121 * t9 - t151 * t2 + t20 * t62 - t26 * t98 + t33 * t54, -t1 * t103 + t104 * t2 + t17 * t63 - t18 * t62 - t25 * t54 - t26 * t53 - t5 * t94 + t9 * t96, t1 * t151 + t101 * t18 - t104 * t6 - t12 * t96 + t121 * t5 - t20 * t63 + t25 * t98 + t33 * t53, t1 * t25 + t12 * t20 + t17 * t9 + t18 * t5 + t2 * t26 + t33 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t243, t278 * t285, -t189 * t235, t243, t186 * t235, 0, t147 * t211 + t186 * t198 - t214, pkin(7) * t237 + t144 * t211 + t189 * t198, 0, 0, -t188 * t238 + t337, -t188 * t322 + t326 * t125 + (t238 - t266 - t98) * t185, -t188 * t245 + (t188 * t249 + (t185 * qJD(2) - t127) * t186) * t277, -t125 * t203 - t290, t185 * t245 + (-t185 * t249 + (qJD(2) * t188 + t125) * t186) * t277, t246 * t276, -pkin(2) * t98 + t185 * t267 + t90 * t225 - t147 * t125 + (pkin(8) * t245 - t138) * t188 + (-t186 * t72 + (-pkin(8) * t274 - t107 * t189) * t185) * t277, pkin(2) * t322 - t107 * t239 - t147 * t127 + t138 * t185 + t188 * t267 - t331 * t225 - t237 * t314 + t73 * t258, t90 * t127 + t215 + t339 * t73 + t326 * t72 + t331 * t125 + (-t290 + t337) * pkin(8), -pkin(2) * t138 - t107 * t147 - t72 * t90 - t73 * t91 + ((-t73 * t185 - t72 * t188) * qJD(3) + t215) * pkin(8), t13, t336, t8, t194, t335, t44, -t114 * t66 + t134 * t98 - t80 * t94 - t306 * t121 + (t251 + (pkin(8) * t94 + t184 * t66) * qJD(3)) * t188 + (pkin(8) * t54 - t21 * t225 + t269 * t66 + t298) * t185, -t115 * t66 - t135 * t98 - t80 * t96 + t305 * t121 + (t3 + (pkin(8) * t96 + t187 * t66) * qJD(3)) * t188 + (-pkin(8) * t53 + t22 * t225 - t270 * t66 + t296) * t185, t114 * t22 + t115 * t21 + t134 * t53 - t135 * t54 + t306 * t96 + t305 * t94 + t221 * t271 + (-t184 * t3 + t187 * t251 + (t184 * t21 - t187 * t22) * qJD(4)) * t185, -t134 * t251 + t135 * t3 - t66 * t80 - t305 * t22 - t306 * t21 + (t185 * t30 + t271 * t66) * pkin(8), t13, t8, -t336, t44, -t335, t194, -t110 * t98 - t114 * t20 + t143 * t54 - t307 * t94 + (qJD(3) * t184 * t20 + t2) * t188 + t308 * t121 + (t17 * t225 + t20 * t269 + t313) * t185, -t109 * t54 - t110 * t53 + t114 * t18 - t115 * t17 - t308 * t96 + t309 * t94 + t222 * t271 + (-t1 * t184 + t187 * t2 + (-t17 * t184 - t18 * t187) * qJD(4)) * t185, t109 * t98 + t115 * t20 + t143 * t53 + t307 * t96 + (-t20 * t272 - t1) * t188 - t309 * t121 + (-t18 * t225 + t20 * t270 - t312) * t185, t1 * t109 + t110 * t2 + t143 * t6 - t308 * t17 - t309 * t18 - t307 * t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t286, -t125 ^ 2 + t127 ^ 2, -t125 * t225 - t322, -t286, -t212 - t238, t237, -t107 * t127 - t73 * t225 + t40, t107 * t125 - t72 * t225 + t202, 0, 0, t15, -t334, t16, t200, -t318 * t184 - t223, -t287, -pkin(3) * t54 - t127 * t21 - t296 - t73 * t94 + (-t34 - t263) * t121 + t205 * t184, pkin(3) * t53 + t127 * t22 + t298 - t73 * t96 + (t35 + t264) * t121 + t205 * t187, t34 * t96 + t35 * t94 - t51 + (-t125 * t21 + t3 + (-t21 + t316) * qJD(4)) * t187 + (t232 - t208) * t184, -pkin(3) * t30 - t21 * t34 - t22 * t35 - t66 * t73 + (qJD(4) * t221 + t184 * t251 + t187 * t3) * pkin(9), t15, t16, t334, -t287, t121 * t248 + t223, t200, t127 * t17 + t165 * t54 - t312 + t289 * t94 + (t24 - t263) * t121 + t325 * t184, t23 * t94 - t24 * t96 - t51 + (t125 * t17 + t1 + (t17 + t316) * qJD(4)) * t187 + (t232 + t332) * t184, -t127 * t18 + t165 * t53 - t313 - t289 * t96 + (-t23 - t264) * t121 - t325 * t187, t165 * t6 - t17 * t24 - t18 * t23 + t289 * t20 + (qJD(4) * t222 + t1 * t187 + t184 * t2) * pkin(9); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t310, -t261, t19, -t310, -t191, t98, -t66 * t96 + t208, t121 * t21 + t66 * t94 - t3, 0, 0, t310, t19, t261, t98, t191, -t310, -t58 * t94 + t208 - t311 + 0.2e1 * t317, pkin(4) * t53 - qJ(5) * t54 + (t18 - t22) * t96 + (t17 - t280) * t94, 0.2e1 * t303 - t20 * t94 + t58 * t96 + (0.2e1 * qJD(5) - t21) * t121 + t3, -pkin(4) * t2 + qJ(5) * t1 - t17 * t22 + t18 * t280 - t20 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t310 - t98, t19, -t318 - t319, t311 + t332;];
tauc_reg = t4;