% Calculate inertial parameters regressor of joint inertia matrix time derivative for
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
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 23:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRPR10_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR10_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR10_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR10_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 23:08:32
% EndTime: 2019-03-09 23:08:53
% DurationCPUTime: 8.27s
% Computational Cost: add. (12207->516), mult. (31327->862), div. (0->0), fcn. (30894->10), ass. (0->246)
t137 = sin(qJ(3));
t274 = cos(pkin(6));
t228 = t274 * qJD(3);
t134 = sin(pkin(6));
t141 = cos(qJ(2));
t262 = qJD(2) * t141;
t237 = t134 * t262;
t183 = t228 + t237;
t320 = t137 * t183;
t294 = cos(qJ(4));
t296 = -pkin(10) - pkin(9);
t219 = t296 * t294;
t136 = sin(qJ(4));
t140 = cos(qJ(3));
t267 = t136 * t140;
t82 = -t137 * t219 - t296 * t267;
t138 = sin(qJ(2));
t244 = pkin(1) * t274;
t218 = t138 * t244;
t178 = pkin(9) * t274 + t218;
t171 = t137 * t178;
t245 = -pkin(9) * t138 - pkin(1);
t290 = t137 * pkin(8);
t270 = t134 * t140;
t92 = t137 * t274 + t138 * t270;
t154 = t171 + t92 * pkin(10) - (t140 * t245 + (-t140 * pkin(2) - pkin(3) - t290) * t141) * t134;
t231 = t274 * t140;
t271 = t134 * t138;
t185 = t137 * t271 - t231;
t269 = t134 * t141;
t251 = pkin(8) * t269;
t163 = t178 + t251;
t201 = -pkin(2) * t141 + t245;
t191 = t201 * t134;
t67 = t137 * t191 + t140 * t163;
t166 = -pkin(10) * t185 + t67;
t34 = -t136 * t166 - t294 * t154;
t135 = sin(qJ(6));
t132 = t135 ^ 2;
t139 = cos(qJ(6));
t133 = t139 ^ 2;
t264 = t132 - t133;
t309 = t264 * qJD(6);
t35 = -t136 * t154 + t294 * t166;
t263 = qJD(2) * t138;
t203 = qJD(3) * t219;
t243 = t296 * qJD(3);
t58 = qJD(4) * t82 - t137 * t203 - t243 * t267;
t242 = t294 * t140;
t205 = t296 * t242;
t268 = t136 * t137;
t83 = t296 * t268 - t205;
t319 = t134 * (t141 * t58 + t263 * t83);
t102 = t137 * t294 + t267;
t232 = qJD(4) * t294;
t308 = qJD(3) + qJD(4);
t80 = -qJD(3) * t242 - t140 * t232 + t308 * t268;
t318 = (t102 * t263 + t141 * t80) * t134;
t101 = -t242 + t268;
t81 = t308 * t102;
t317 = (t101 * t263 - t141 * t81) * t134;
t316 = -pkin(8) * t271 + t141 * t244;
t32 = pkin(4) * t269 - t34;
t176 = t136 * t185;
t74 = t294 * t92 - t176;
t150 = t74 * pkin(5) + pkin(11) * t269 + t32;
t240 = qJD(3) * t271;
t246 = t140 * t240 + t320;
t108 = t137 * t240;
t303 = -t183 * t140 + t108;
t153 = -qJD(4) * t176 - t136 * t303 + t232 * t92 + t294 * t246;
t229 = qJD(2) * t274;
t213 = t138 * t229;
t215 = t246 * pkin(3);
t170 = t294 * t185;
t258 = qJD(4) * t136;
t42 = qJD(4) * t170 + t136 * t246 + t258 * t92 + t294 * t303;
t19 = pkin(1) * t213 + pkin(4) * t153 + pkin(8) * t237 + t42 * qJ(5) - t74 * qJD(5) + t215;
t315 = -pkin(11) * t153 - qJD(6) * t150 - t19;
t314 = qJD(3) * t163 - qJD(2) * t134 * (pkin(2) * t138 - pkin(9) * t141);
t261 = qJD(3) * t137;
t249 = pkin(3) * t261;
t177 = qJ(5) * t80 - qJD(5) * t102 + t249;
t182 = t102 * pkin(5) + t82;
t297 = pkin(4) + pkin(11);
t313 = -qJD(6) * t182 - t297 * t81 - t177;
t172 = qJD(2) * t316;
t312 = -qJD(3) * t191 - t172;
t175 = qJD(3) * t185;
t311 = t137 * t175 - t246 * t140;
t310 = -qJD(6) * t269 - t153;
t73 = t136 * t92 + t170;
t307 = 0.2e1 * t73 * t153;
t59 = -t140 * t203 - qJD(4) * t205 + (qJD(4) * t296 + t243) * t268;
t306 = -t153 * t83 - t82 * t42 + t58 * t73 + t59 * t74;
t305 = t101 * t153 + t73 * t81;
t304 = t42 * t101 - t102 * t153 + t80 * t73 - t74 * t81;
t116 = t134 * t263;
t302 = -t73 * t116 + t153 * t269;
t301 = -0.2e1 * t153 * t74 + 0.2e1 * t42 * t73;
t300 = t141 ^ 2;
t299 = -0.2e1 * t134;
t298 = 0.2e1 * t134;
t143 = 0.2e1 * qJD(5);
t31 = qJ(5) * t269 - t35;
t24 = -pkin(5) * t73 - t31;
t255 = qJD(6) * t139;
t112 = qJ(5) * t116;
t225 = pkin(3) * t116;
t50 = t312 * t137 - t314 * t140;
t148 = pkin(10) * t303 + t225 + t50;
t49 = t314 * t137 + t312 * t140;
t151 = -pkin(10) * t246 - t49;
t12 = -qJD(4) * t34 - t136 * t148 - t294 * t151;
t157 = -t112 + t12;
t236 = qJD(5) * t269;
t9 = t157 + t236;
t7 = -pkin(5) * t153 - t9;
t295 = t7 * t135 + t24 * t255;
t293 = pkin(3) * t136;
t292 = pkin(9) * t134;
t146 = t35 * qJD(4) + t136 * t151 - t294 * t148;
t224 = pkin(4) * t116;
t11 = t146 - t224;
t144 = -t42 * pkin(5) - pkin(11) * t116 + t11;
t256 = qJD(6) * t135;
t87 = -pkin(2) * t274 - t316;
t75 = pkin(3) * t185 + t87;
t155 = -t74 * qJ(5) + t75;
t28 = t297 * t73 + t155;
t1 = -t135 * t144 + t315 * t139 + t256 * t28;
t291 = t1 * t135;
t6 = t7 * t139;
t51 = -t81 * pkin(5) - t58;
t72 = -t101 * pkin(5) + t83;
t287 = t51 * t135 + t72 * t255;
t286 = t101 * t81;
t156 = -t80 * pkin(5) + t59;
t126 = -pkin(3) * t140 - pkin(2);
t200 = -qJ(5) * t102 + t126;
t64 = t101 * t297 + t200;
t17 = -t135 * t156 + t313 * t139 + t256 * t64;
t285 = t135 * t17;
t26 = (qJD(6) * t73 + t116) * t135 + t310 * t139;
t284 = t135 * t26;
t27 = t116 * t139 - t310 * t135 + t255 * t73;
t283 = t135 * t27;
t282 = t135 * t42;
t61 = -t135 * t73 + t139 * t269;
t281 = t135 * t61;
t280 = t135 * t81;
t279 = t139 * t26;
t278 = t139 * t27;
t60 = t135 * t269 + t139 * t73;
t277 = t139 * t60;
t276 = t139 * t81;
t48 = t51 * t139;
t97 = t218 + t251;
t89 = qJD(2) * t97;
t275 = t89 * t137;
t273 = qJD(6) * t72;
t223 = pkin(3) * t232;
t115 = t223 + qJD(5);
t122 = qJ(5) + t293;
t272 = t115 * t122;
t266 = t115 * t135 + t122 * t255;
t265 = qJ(5) * t255 + qJD(5) * t135;
t260 = qJD(3) * t140;
t259 = qJD(3) * t141;
t254 = qJD(6) * t297;
t33 = -0.2e1 * t74 * t42;
t253 = -0.2e1 * pkin(2) * qJD(3);
t252 = 0.2e1 * t286;
t70 = -0.2e1 * t102 * t80;
t250 = t294 * pkin(3);
t248 = pkin(9) * t260;
t127 = pkin(3) * t258;
t247 = t135 * t276;
t131 = t134 ^ 2;
t241 = t131 * t262;
t239 = t137 * t259;
t125 = -t250 - pkin(4);
t121 = -pkin(11) + t125;
t238 = t121 * t255;
t234 = t137 * t260;
t233 = t135 * t255;
t230 = -qJD(6) * t61 - t26;
t227 = t74 * t127;
t226 = t139 * t127;
t99 = t101 ^ 2;
t221 = t99 * t233;
t216 = t138 * t241;
t212 = -t58 * t83 + t59 * t82;
t25 = -t102 * t42 - t74 * t80;
t15 = -t135 * t28 + t139 * t150;
t16 = t135 * t150 + t139 * t28;
t211 = t135 * t16 + t139 * t15;
t210 = -t135 * t15 + t139 * t16;
t44 = -t135 * t64 + t139 * t182;
t45 = t135 * t182 + t139 * t64;
t209 = t135 * t45 + t139 * t44;
t208 = -t135 * t44 + t139 * t45;
t207 = t135 * t60 - t139 * t61;
t206 = -t50 * t137 - t49 * t140;
t204 = -qJ(5) * t81 - qJD(5) * t101;
t202 = qJ(5) * t115 + qJD(5) * t122;
t91 = (t132 + t133) * t127;
t199 = t141 * t42 + t263 * t74;
t197 = t255 * t74 - t282;
t29 = -t139 * t42 - t256 * t74;
t194 = t102 * t255 - t135 * t80;
t62 = -t102 * t256 - t139 * t80;
t193 = qJD(6) * (qJ(5) * t101 + t102 * t297);
t192 = qJD(6) * (t101 * t122 - t102 * t121);
t189 = 0.2e1 * t101 * t80 - 0.2e1 * t102 * t81;
t186 = t137 * t263 - t140 * t259;
t184 = t297 * t80 + t204;
t179 = t116 * t82 - t269 * t59;
t174 = -t101 * t115 + t102 * t127 - t122 * t81;
t165 = 0.2e1 * t101 * t58 + 0.2e1 * t102 * t59 - 0.2e1 * t80 * t82 - 0.2e1 * t81 * t83;
t2 = t315 * t135 + t139 * t144 - t255 * t28;
t164 = qJD(6) * t210 + t139 * t2 - t291;
t162 = -t121 * t80 + t174;
t18 = t313 * t135 + t139 * t156 - t255 * t64;
t161 = qJD(6) * t208 + t139 * t18 - t285;
t145 = t127 * t269 - t146;
t130 = qJ(5) * t143;
t129 = qJD(5) * t139;
t114 = -0.2e1 * t233;
t113 = 0.2e1 * t233;
t106 = t115 * t139;
t104 = -0.2e1 * t216;
t100 = 0.2e1 * t309;
t76 = pkin(4) * t101 + t200;
t66 = -t171 + (t140 * t201 - t141 * t290) * t134;
t65 = t215 + t89;
t56 = -t101 * t309 + t247;
t53 = pkin(4) * t81 + t177;
t52 = -0.4e1 * t101 * t233 - t264 * t81;
t40 = t73 * pkin(4) + t155;
t21 = t256 * t61 + t278;
t20 = -t255 * t60 + t284;
t14 = t15 * t256;
t8 = -qJD(6) * t207 - t279 - t283;
t3 = -t44 * t256 - t285 + (qJD(6) * t45 + t18) * t139;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t216, 0.2e1 * (-t138 ^ 2 + t300) * t131 * qJD(2), 0.2e1 * t229 * t269, t104, t213 * t299, 0, -0.2e1 * pkin(1) * t131 * t263 - 0.2e1 * t274 * t89, -0.2e1 * pkin(1) * t241 - 0.2e1 * t172 * t274, -0.2e1 * t116 * t97 + 0.2e1 * t172 * t269 - 0.2e1 * t237 * t316 + 0.2e1 * t271 * t89, 0.2e1 * t172 * t97 - 0.2e1 * t316 * t89, -0.2e1 * t92 * t303, 0.2e1 * t185 * t303 - 0.2e1 * t246 * t92 (-(t140 * t228 - t108) * t141 + (t138 * t92 - t270 * t300) * qJD(2)) * t298, 0.2e1 * t185 * t246, -0.2e1 * t116 * t185 + 0.2e1 * t246 * t269, t104, -0.2e1 * t89 * t231 + 0.2e1 * t87 * t246 + 0.2e1 * (-t50 * t141 + (qJD(2) * t66 + t275) * t138) * t134, -0.2e1 * t116 * t67 - 0.2e1 * t269 * t49 - 0.2e1 * t303 * t87 + 0.2e1 * t89 * t92, 0.2e1 * t185 * t49 - 0.2e1 * t246 * t67 + 0.2e1 * t303 * t66 - 0.2e1 * t50 * t92, -0.2e1 * t49 * t67 + 0.2e1 * t50 * t66 + 0.2e1 * t87 * t89, t33, t301, t199 * t298, t307, 0.2e1 * t302, t104, 0.2e1 * t116 * t34 + 0.2e1 * t146 * t269 + 0.2e1 * t153 * t75 + 0.2e1 * t65 * t73, -0.2e1 * t42 * t75 + 0.2e1 * t65 * t74 + 0.2e1 * (-t12 * t141 - t263 * t35) * t134, 0.2e1 * t12 * t73 + 0.2e1 * t146 * t74 - 0.2e1 * t153 * t35 + 0.2e1 * t34 * t42, -0.2e1 * t12 * t35 - 0.2e1 * t146 * t34 + 0.2e1 * t65 * t75, t104, t199 * t299, -0.2e1 * t302, t33, t301, t307, 0.2e1 * t11 * t74 + 0.2e1 * t153 * t31 - 0.2e1 * t32 * t42 + 0.2e1 * t9 * t73, -0.2e1 * t11 * t269 + 0.2e1 * t116 * t32 - 0.2e1 * t153 * t40 - 0.2e1 * t19 * t73, -0.2e1 * t19 * t74 + 0.2e1 * t40 * t42 + 0.2e1 * (t141 * t9 - t263 * t31) * t134, 0.2e1 * t11 * t32 + 0.2e1 * t19 * t40 + 0.2e1 * t31 * t9, -0.2e1 * t61 * t27, 0.2e1 * t26 * t61 + 0.2e1 * t27 * t60, 0.2e1 * t27 * t74 + 0.2e1 * t42 * t61, -0.2e1 * t60 * t26, -0.2e1 * t26 * t74 - 0.2e1 * t42 * t60, t33, -0.2e1 * t15 * t42 + 0.2e1 * t2 * t74 + 0.2e1 * t24 * t26 - 0.2e1 * t60 * t7, 0.2e1 * t1 * t74 + 0.2e1 * t16 * t42 + 0.2e1 * t24 * t27 - 0.2e1 * t61 * t7, -0.2e1 * t1 * t60 - 0.2e1 * t15 * t27 - 0.2e1 * t16 * t26 + 0.2e1 * t2 * t61, -0.2e1 * t1 * t16 + 0.2e1 * t15 * t2 + 0.2e1 * t24 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t237, 0, -t116, 0, -t89, -t172, 0, 0, -t108 * t137 + (t92 * qJD(3) + t320) * t140, -t137 * t246 - t261 * t92 + (-t303 - t175) * t140, t186 * t134, t311 (t140 * t263 + t239) * t134, 0, -pkin(2) * t246 - t89 * t140 - t186 * t292 + t261 * t87, -pkin(9) * t116 * t140 + pkin(2) * t303 - t239 * t292 + t260 * t87 + t275, t248 * t92 - t260 * t66 - t261 * t67 + t206 + (-t137 * t303 + t311) * pkin(9), -pkin(2) * t89 + ((-t67 * t137 - t66 * t140) * qJD(3) + t206) * pkin(9), t25, t304, t318, t305, -t317, 0, t65 * t101 + t126 * t153 + t249 * t73 + t75 * t81 - t179, t102 * t65 - t126 * t42 + t249 * t74 - t75 * t80 - t319, t12 * t101 + t102 * t146 + t34 * t80 - t35 * t81 + t306, -t12 * t83 + t126 * t65 + t146 * t82 + t249 * t75 - t34 * t59 - t35 * t58, 0, -t318, t317, t25, t304, t305, t9 * t101 + t11 * t102 + t31 * t81 - t32 * t80 + t306, -t19 * t101 - t153 * t76 - t40 * t81 - t53 * t73 + t179, -t102 * t19 + t40 * t80 + t42 * t76 - t53 * t74 + t319, t11 * t82 + t19 * t76 + t31 * t58 + t32 * t59 + t40 * t53 - t83 * t9, -t61 * t280 + (-t255 * t61 + t283) * t101, t207 * t81 + (-t284 + t278 + (t277 + t281) * qJD(6)) * t101, t101 * t197 + t102 * t27 + t280 * t74 + t61 * t80, t60 * t276 + (-t256 * t60 - t279) * t101, t101 * t29 - t102 * t26 + t276 * t74 - t60 * t80, t25, -t24 * t276 + t102 * t2 - t15 * t80 + t18 * t74 + t26 * t72 - t42 * t44 - t51 * t60 + (t24 * t256 - t6) * t101, t1 * t102 + t101 * t295 + t16 * t80 + t17 * t74 + t24 * t280 + t27 * t72 + t42 * t45 - t51 * t61, -t17 * t60 + t18 * t61 - t26 * t45 - t27 * t44 + t210 * t81 + (-qJD(6) * t211 - t1 * t139 - t135 * t2) * t101, -t1 * t45 + t15 * t18 - t16 * t17 + t2 * t44 + t24 * t51 + t7 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t234, 0.2e1 * (-t137 ^ 2 + t140 ^ 2) * qJD(3), 0, -0.2e1 * t234, 0, 0, t137 * t253, t140 * t253, 0, 0, t70, t189, 0, t252, 0, 0, 0.2e1 * t101 * t249 + 0.2e1 * t126 * t81, 0.2e1 * t102 * t249 - 0.2e1 * t126 * t80, t165, 0.2e1 * t126 * t249 + 0.2e1 * t212, 0, 0, 0, t70, t189, t252, t165, -0.2e1 * t101 * t53 - 0.2e1 * t76 * t81, -0.2e1 * t102 * t53 + 0.2e1 * t76 * t80, 0.2e1 * t53 * t76 + 0.2e1 * t212, 0.2e1 * t132 * t286 + 0.2e1 * t221, 0.4e1 * t101 * t247 - 0.2e1 * t99 * t309, 0.2e1 * t101 * t194 + 0.2e1 * t102 * t280, 0.2e1 * t133 * t286 - 0.2e1 * t221, 0.2e1 * t101 * t62 + 0.2e1 * t102 * t276, t70, -0.2e1 * t72 * t276 + 0.2e1 * t102 * t18 - 0.2e1 * t44 * t80 + 0.2e1 * (t256 * t72 - t48) * t101, 0.2e1 * t101 * t287 + 0.2e1 * t102 * t17 + 0.2e1 * t280 * t72 + 0.2e1 * t45 * t80, 0.2e1 * t208 * t81 + 0.2e1 * (-qJD(6) * t209 - t135 * t18 - t139 * t17) * t101, -0.2e1 * t17 * t45 + 0.2e1 * t18 * t44 + 0.2e1 * t51 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t303, 0, -t246, t116, t50, t49, 0, 0, 0, 0, -t42, 0, -t153, t116, t225 * t294 + t145 (-t136 * t263 + t141 * t232) * t134 * pkin(3) + t12, -t153 * t293 - t223 * t73 + t250 * t42 + t227 (-t294 * t146 - t12 * t136 + (-t136 * t34 + t294 * t35) * qJD(4)) * pkin(3), t116, t42, t153, 0, 0, 0, -t115 * t73 - t122 * t153 - t125 * t42 + t227, t116 * t125 - t145 - t224, t122 * t116 + (-qJD(5) - t115) * t269 - t157, t11 * t125 - t115 * t31 - t122 * t9 + t127 * t32, t21, t8, t29, t20, -t197, 0, -t115 * t60 + t121 * t29 + t122 * t26 + t226 * t74 + t295, -t74 * t238 - t115 * t61 + t122 * t27 + t6 + (-qJD(6) * t24 + t121 * t42 - t227) * t135, t14 + (t121 * t230 + t127 * t60 + t1) * t135 + (t61 * t127 - t121 * t27 - t2 + (t121 * t60 - t16) * qJD(6)) * t139, t115 * t24 + t121 * t164 + t122 * t7 + t127 * t211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260, 0, -t261, 0, -t248, pkin(9) * t261, 0, 0, 0, 0, -t80, 0, -t81, 0, -t59, t58 (t294 * t80 - t136 * t81 + (-t101 * t294 + t102 * t136) * qJD(4)) * pkin(3) (-t294 * t59 - t136 * t58 + (t136 * t82 + t294 * t83) * qJD(4)) * pkin(3), 0, t80, t81, 0, 0, 0, -t125 * t80 + t174, t59, -t58, t115 * t83 - t122 * t58 + t125 * t59 + t127 * t82, t56, t52, t62, -t56, -t194, 0, t135 * t192 + t139 * t162 + t287, t48 + t139 * t192 + (-t162 - t273) * t135, -t3, t115 * t72 + t121 * t161 + t122 * t51 + t127 * t209; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t127, -0.2e1 * t223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t127, 0.2e1 * t115, 0.2e1 * t125 * t127 + 0.2e1 * t272, t114, t100, 0, t113, 0, 0, 0.2e1 * t266, -0.2e1 * t122 * t256 + 0.2e1 * t106, -0.2e1 * t91, 0.2e1 * t121 * t91 + 0.2e1 * t272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t42, 0, -t153, t116, -t146, t12, 0, 0, t116, t42, t153, 0, 0, 0, pkin(4) * t42 - qJ(5) * t153 - qJD(5) * t73, t146 - 0.2e1 * t224, 0.2e1 * t112 - t12 - 0.2e1 * t236, -pkin(4) * t11 - qJ(5) * t9 - qJD(5) * t31, t21, t8, t29, t20, -t197, 0, qJ(5) * t26 - qJD(5) * t60 - t29 * t297 + t295, -t297 * t282 + qJ(5) * t27 - qJD(5) * t61 + t6 + (t139 * t297 * t74 - t135 * t24) * qJD(6), t14 + (-t230 * t297 + t1) * t135 + (t297 * t27 - t2 + (-t297 * t60 - t16) * qJD(6)) * t139, qJ(5) * t7 + qJD(5) * t24 - t164 * t297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t80, 0, -t81, 0, -t59, t58, 0, 0, 0, t80, t81, 0, 0, 0, pkin(4) * t80 + t204, t59, -t58, -pkin(4) * t59 - qJ(5) * t58 + qJD(5) * t83, t56, t52, t62, -t56, -t194, 0, t135 * t193 + t139 * t184 + t287, t48 + t139 * t193 + (-t184 - t273) * t135, -t3, qJ(5) * t51 + qJD(5) * t72 - t161 * t297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t127, -t223, 0, 0, 0, 0, 0, 0, 0, 0, 0, t127, t143 + t223, -pkin(4) * t127 + t202, t114, t100, 0, t113, 0, 0, t265 + t266, t106 + t129 + (-qJ(5) - t122) * t256, -t91, -t297 * t91 + t202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, t130, t114, t100, 0, t113, 0, 0, 0.2e1 * t265, -0.2e1 * qJ(5) * t256 + 0.2e1 * t129, 0, t130; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t42, t116, 0, t11, 0, 0, 0, 0, 0, 0, t29, -t197, -t284 - t278 + (t277 - t281) * qJD(6), -t291 - t14 + (qJD(6) * t16 + t2) * t139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t80, 0, 0, t59, 0, 0, 0, 0, 0, 0, t62, -t194, 0, t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t127, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t27, 0, -t26, -t42, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t255 * t101 + t280, 0, -t256 * t101 + t276, -t80, t18, t17, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t256, 0, -t255, 0, -t121 * t256 + t226, -t127 * t135 - t238, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t256, 0, -t255, 0, t135 * t254, t139 * t254, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t256, -t255, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t4;