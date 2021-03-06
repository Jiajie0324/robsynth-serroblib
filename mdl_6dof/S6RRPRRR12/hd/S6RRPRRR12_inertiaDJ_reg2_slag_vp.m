% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRPRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPRRR12_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR12_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR12_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR12_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:41:43
% EndTime: 2019-03-09 14:42:02
% DurationCPUTime: 7.31s
% Computational Cost: add. (11179->473), mult. (26935->816), div. (0->0), fcn. (25961->10), ass. (0->243)
t136 = cos(qJ(5));
t133 = sin(qJ(4));
t137 = cos(qJ(4));
t291 = sin(qJ(5));
t100 = t136 * t133 + t291 * t137;
t231 = t291 * t133;
t260 = t136 * t137;
t101 = -t231 + t260;
t232 = t291 * t101;
t177 = (-t100 * t136 + t232) * qJD(5);
t299 = qJD(4) + qJD(5);
t71 = t299 * t100;
t222 = qJD(5) * t291;
t72 = -qJD(4) * t231 - t133 * t222 + t260 * t299;
t306 = (t136 * t71 - t291 * t72 + t177) * pkin(4);
t131 = sin(pkin(6));
t134 = sin(qJ(2));
t138 = cos(qJ(2));
t265 = cos(pkin(6));
t233 = pkin(1) * t265;
t209 = t138 * t233;
t173 = -t265 * pkin(2) - t209;
t294 = pkin(3) + pkin(8);
t237 = t131 * t294;
t152 = -t265 * pkin(9) + t134 * t237 + t173;
t253 = qJD(3) * t134;
t263 = qJ(3) * t138;
t295 = pkin(2) + pkin(9);
t305 = -qJD(4) * t152 - t131 * (-t253 + (t295 * t134 - t263) * qJD(2));
t132 = sin(qJ(6));
t129 = t132 ^ 2;
t135 = cos(qJ(6));
t130 = t135 ^ 2;
t257 = t129 - t130;
t300 = t257 * qJD(6);
t218 = t265 * t137;
t118 = qJD(4) * t218;
t252 = qJD(4) * t133;
t229 = t138 * t252;
t255 = qJD(2) * t134;
t180 = t137 * t255 + t229;
t163 = -t180 * t131 + t118;
t261 = t131 * t138;
t112 = t137 * t261;
t121 = t265 * t133;
t258 = t121 + t112;
t227 = t131 * t255;
t74 = t258 * qJD(4) - t133 * t227;
t235 = t133 * t261;
t93 = t218 - t235;
t298 = t136 * (qJD(5) * t258 + t74) + t291 * t163 + t93 * t222;
t58 = t136 * t93 - t291 * t258;
t304 = -t101 * t298 - t58 * t71;
t282 = t101 * t71;
t283 = t100 * t72;
t182 = -0.2e1 * t282 + 0.2e1 * t283;
t217 = qJD(2) * t265;
t206 = t138 * t217;
t214 = t265 * qJD(3);
t33 = t58 * qJD(5) + t136 * t163 - t291 * t74;
t143 = pkin(1) * t206 + t163 * pkin(4) + t33 * pkin(5) + pkin(11) * t298 - t227 * t294 + t214;
t264 = qJ(3) * t134;
t203 = -pkin(2) * t138 - t264;
t189 = -pkin(1) + t203;
t168 = t133 * (-pkin(9) * t138 + t189);
t158 = t134 * pkin(4) - t168;
t156 = t158 * t131;
t64 = t137 * t152;
t234 = -t93 * pkin(10) + t64;
t151 = t156 + t234;
t174 = t131 * (-t295 * t138 - pkin(1) - t264);
t45 = t133 * t152 + t137 * t174;
t190 = -t258 * pkin(10) + t45;
t23 = t136 * t190 + t291 * t151;
t262 = t131 * t134;
t21 = pkin(11) * t262 + t23;
t247 = qJD(6) * t132;
t254 = qJD(2) * t138;
t117 = t131 * t254;
t210 = t134 * t233;
t169 = t138 * t237 + t210;
t219 = t265 * qJ(3);
t77 = t219 + t169;
t56 = t258 * pkin(4) + t77;
t57 = t136 * t258 + t291 * t93;
t149 = t57 * pkin(5) - t58 * pkin(11) + t56;
t213 = pkin(4) * t117;
t162 = qJD(2) * t169;
t164 = qJD(4) * t174;
t30 = (t162 - t164) * t137 + t305 * t133;
t141 = t74 * pkin(10) + t213 + t30;
t244 = -t133 * t162 + t305 * t137;
t144 = t118 * pkin(10) - (pkin(10) * t180 - qJD(4) * t168) * t131 + t244;
t175 = t291 * t190;
t249 = qJD(5) * t136;
t8 = qJD(5) * t175 + t136 * t144 - t291 * t141 - t151 * t249;
t303 = -pkin(11) * t117 - qJD(6) * t149 + t8;
t2 = -t132 * t143 + t135 * t303 + t21 * t247;
t1 = t2 * t135;
t11 = -t132 * t21 + t135 * t149;
t12 = t132 * t149 + t135 * t21;
t201 = t11 * t135 + t12 * t132;
t126 = qJD(6) * t135;
t3 = -t21 * t126 + t132 * t303 + t135 * t143;
t161 = -t201 * qJD(6) - t132 * t3 - t1;
t155 = t136 * t234 - t175;
t20 = (-t134 * pkin(5) - t136 * t158) * t131 - t155;
t142 = qJD(5) * t23 - t136 * t141 - t291 * t144;
t7 = -pkin(5) * t117 + t142;
t223 = -t7 * t135 + t20 * t247;
t302 = -qJD(6) * t262 + t298;
t243 = pkin(8) * t262;
t176 = -t209 + t243;
t88 = t176 * qJD(2);
t29 = t133 * t164 + t244;
t44 = -t133 * t174 + t64;
t159 = -(t44 * t133 - t45 * t137) * qJD(4) - t29 * t133 + t30 * t137;
t98 = t101 ^ 2;
t297 = 0.2e1 * t131;
t296 = 0.2e1 * qJD(3);
t293 = pkin(5) * t71;
t292 = t20 * t126 + t7 * t132;
t290 = pkin(4) * t136;
t286 = pkin(10) + t295;
t207 = t286 * t252;
t104 = t286 * t133;
t220 = t286 * t137;
t76 = -t136 * t104 - t291 * t220;
t97 = qJD(4) * t220;
t47 = t76 * qJD(5) - t136 * t207 - t291 * t97;
t75 = -t291 * t104 + t136 * t220;
t289 = t47 * t75;
t285 = t75 * t126 + t47 * t132;
t284 = pkin(4) * qJD(5);
t25 = -t132 * t117 + t135 * t302 + t58 * t247;
t281 = t132 * t25;
t26 = -t135 * t117 + t58 * t126 - t132 * t302;
t280 = t132 * t26;
t50 = t132 * t58 - t135 * t262;
t279 = t132 * t50;
t51 = t132 * t262 + t135 * t58;
t278 = t132 * t51;
t277 = t132 * t71;
t276 = t132 * t72;
t95 = pkin(8) * t261 + t210;
t89 = t95 * qJD(2);
t275 = t134 * t89;
t274 = t135 * t25;
t273 = t135 * t26;
t272 = t135 * t50;
t271 = t135 * t51;
t270 = t135 * t71;
t269 = t135 * t72;
t268 = t136 * t57;
t267 = t137 * t74;
t125 = -pkin(5) - t290;
t266 = t71 * t125;
t212 = pkin(4) * t222;
t259 = t125 * t126 + t132 * t212;
t256 = t129 + t130;
t251 = qJD(4) * t137;
t250 = qJD(4) * t295;
t246 = 0.2e1 * t57 * t33;
t245 = 0.2e1 * t283;
t242 = t291 * pkin(4);
t241 = pkin(5) * t247;
t240 = pkin(5) * t126;
t239 = pkin(4) * t249;
t238 = t132 * t270;
t236 = t291 * t75;
t65 = t75 * t247;
t128 = t131 ^ 2;
t230 = t128 * t254;
t226 = t132 * t126;
t225 = t133 * t251;
t224 = t100 ^ 2 + t98;
t221 = t89 * t265;
t122 = pkin(4) * t133 + qJ(3);
t43 = t256 * t72;
t216 = t258 * t137;
t215 = t256 * t136;
t211 = t98 * t226;
t208 = t134 * t230;
t116 = pkin(4) * t251 + qJD(3);
t205 = t33 * t100 + t57 * t72;
t204 = -t101 * t47 + t71 * t75;
t200 = t11 * t132 - t12 * t135;
t178 = pkin(5) * t100 - pkin(11) * t101 + t122;
t167 = t135 * t178;
t39 = -t132 * t76 + t167;
t40 = t132 * t178 + t135 * t76;
t199 = t132 * t40 + t135 * t39;
t198 = t132 * t39 - t135 * t40;
t197 = t272 + t278;
t124 = t242 + pkin(11);
t193 = t100 * t124 - t101 * t125;
t192 = t217 * t262;
t191 = t131 * t206;
t188 = t137 * t227 - t118;
t28 = t57 * t126 + t132 * t33;
t186 = -t135 * t33 + t57 * t247;
t52 = t100 * t247 - t269;
t54 = -t101 * t126 + t277;
t185 = t101 * t247 + t270;
t183 = t125 * t247 - t135 * t212;
t181 = -t134 * t252 + t137 * t254;
t179 = (-t100 * t254 - t134 * t72) * t131;
t172 = pkin(5) * t72 + pkin(11) * t71 + t116;
t22 = t136 * t156 + t155;
t170 = t8 * t100 + t101 * t142 + t22 * t71 - t23 * t72;
t46 = t75 * qJD(5) + t136 * t97 - t291 * t207;
t165 = t100 * t46 - t72 * t76 - t204;
t16 = -qJD(6) * t167 - t132 * t172 + t135 * t46 + t76 * t247;
t17 = -qJD(6) * t40 + t132 * t46 + t135 * t172;
t4 = -t199 * qJD(6) - t132 * t17 - t135 * t16;
t160 = -t281 - t273 + (t271 + t279) * qJD(6);
t154 = pkin(4) * t177 - t124 * t72 - t266;
t145 = t188 * t133 + t267 + (-t216 + (t93 + t235) * t133) * qJD(4);
t127 = qJ(3) * t296;
t115 = -0.2e1 * t226;
t114 = 0.2e1 * t226;
t103 = -0.2e1 * t208;
t102 = 0.2e1 * t208;
t99 = -0.2e1 * t300;
t91 = t215 * t284;
t87 = 0.2e1 * (-t134 ^ 2 + t138 ^ 2) * t128 * qJD(2);
t85 = t173 + t243;
t84 = t189 * t131;
t83 = -t219 - t95;
t81 = t181 * t131;
t80 = (-t133 * t254 - t134 * t251) * t131;
t79 = -t214 + t88;
t78 = (-t253 + (pkin(2) * t134 - t263) * qJD(2)) * t131;
t69 = t214 + (-t294 * t262 + t209) * qJD(2);
t53 = t100 * t126 + t276;
t49 = (t101 * t254 - t134 * t71) * t131;
t48 = t214 - (t131 * t229 - t118) * pkin(4) + (t209 + (-pkin(4) * t137 - t294) * t262) * qJD(2);
t38 = t101 * t300 + t238;
t35 = -0.4e1 * t101 * t226 + t257 * t71;
t15 = t50 * t247 - t273;
t14 = t51 * t126 - t281;
t10 = -t197 * qJD(6) - t274 - t280;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, t87, 0.2e1 * t191, t103, -0.2e1 * t192, 0, -0.2e1 * t128 * pkin(1) * t255 - 0.2e1 * t221, -0.2e1 * pkin(1) * t230 + 0.2e1 * t265 * t88 (t275 - t138 * t88 + (-t134 * t95 + t138 * t176) * qJD(2)) * t297, 0.2e1 * t176 * t89 - 0.2e1 * t88 * t95, 0, -0.2e1 * t191, 0.2e1 * t192, t102, t87, t103 (t275 - t138 * t79 + (t134 * t83 + t138 * t85) * qJD(2)) * t297, 0.2e1 * t221 + 0.2e1 * (t138 * t78 - t255 * t84) * t131, -0.2e1 * t79 * t265 + 0.2e1 * (-t134 * t78 - t254 * t84) * t131, 0.2e1 * t78 * t84 + 0.2e1 * t79 * t83 + 0.2e1 * t85 * t89, -0.2e1 * t93 * t74, -0.2e1 * t163 * t93 + 0.2e1 * t258 * t74 (-t134 * t74 + t254 * t93) * t297, 0.2e1 * t258 * t163 (-t134 * t163 - t254 * t258) * t297, t102, 0.2e1 * t69 * t258 + 0.2e1 * t77 * t118 + 0.2e1 * (t30 * t134 - t180 * t77 + t254 * t44) * t131, 0.2e1 * t69 * t93 - 0.2e1 * t74 * t77 + 0.2e1 * (t134 * t29 - t254 * t45) * t131, -0.2e1 * t163 * t45 + 0.2e1 * t258 * t29 - 0.2e1 * t30 * t93 + 0.2e1 * t44 * t74, -0.2e1 * t29 * t45 + 0.2e1 * t30 * t44 + 0.2e1 * t69 * t77, -0.2e1 * t58 * t298, 0.2e1 * t298 * t57 - 0.2e1 * t58 * t33, 0.2e1 * t117 * t58 - 0.2e1 * t262 * t298, t246 (-t134 * t33 - t254 * t57) * t297, t102, 0.2e1 * t33 * t56 + 0.2e1 * t48 * t57 + 0.2e1 * (-t134 * t142 + t22 * t254) * t131, -0.2e1 * t117 * t23 + 0.2e1 * t262 * t8 - 0.2e1 * t298 * t56 + 0.2e1 * t48 * t58, 0.2e1 * t142 * t58 + 0.2e1 * t22 * t298 - 0.2e1 * t23 * t33 + 0.2e1 * t8 * t57, -0.2e1 * t142 * t22 - 0.2e1 * t23 * t8 + 0.2e1 * t48 * t56, -0.2e1 * t51 * t25, 0.2e1 * t25 * t50 - 0.2e1 * t26 * t51, -0.2e1 * t25 * t57 + 0.2e1 * t33 * t51, 0.2e1 * t50 * t26, -0.2e1 * t26 * t57 - 0.2e1 * t33 * t50, t246, 0.2e1 * t11 * t33 + 0.2e1 * t20 * t26 + 0.2e1 * t3 * t57 + 0.2e1 * t50 * t7, -0.2e1 * t12 * t33 + 0.2e1 * t2 * t57 - 0.2e1 * t20 * t25 + 0.2e1 * t51 * t7, 0.2e1 * t11 * t25 - 0.2e1 * t12 * t26 + 0.2e1 * t2 * t50 - 0.2e1 * t3 * t51, 0.2e1 * t11 * t3 - 0.2e1 * t12 * t2 + 0.2e1 * t20 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t117, 0, -t227, 0, -t89, t88, 0, 0, 0, -t117, t227, 0, 0, 0 (qJD(2) * t203 + qJD(3) * t138) * t131, t89, 0.2e1 * t214 - t88, -pkin(2) * t89 - qJ(3) * t79 - qJD(3) * t83, -t252 * t93 - t267, t137 * t188 + t74 * t133 + (-t93 * t137 + (t121 + 0.2e1 * t112) * t133) * qJD(4), t81, qJD(4) * t216 + t133 * t163, t80, 0, qJD(3) * t258 + qJ(3) * t118 + t69 * t133 + t77 * t251 + (-qJ(3) * t180 - t181 * t295) * t131, t133 * t295 * t117 - qJ(3) * t74 + qJD(3) * t93 + t69 * t137 + (t137 * t262 * t295 - t133 * t77) * qJD(4), -t145 * t295 - t159, t69 * qJ(3) + t77 * qJD(3) - t159 * t295, t304, t100 * t298 - t101 * t33 + t71 * t57 - t58 * t72, t49, t205, t179, 0, t100 * t48 + t116 * t57 + t122 * t33 + t56 * t72 + (-t134 * t47 - t254 * t75) * t131, t48 * t101 + t116 * t58 - t117 * t76 - t122 * t298 + t262 * t46 - t56 * t71, -t298 * t75 - t76 * t33 + t46 * t57 + t47 * t58 + t170, t116 * t56 + t122 * t48 + t142 * t75 - t22 * t47 - t23 * t46 - t76 * t8, -t51 * t270 + (-t247 * t51 - t274) * t101, t197 * t71 + (t281 - t273 + (-t271 + t279) * qJD(6)) * t101, -t100 * t25 - t101 * t186 - t270 * t57 + t51 * t72, -t50 * t277 + (t126 * t50 + t280) * t101, -t100 * t26 - t101 * t28 + t277 * t57 - t50 * t72, t205, t100 * t3 + t101 * t292 + t11 * t72 + t17 * t57 - t20 * t277 + t26 * t75 + t33 * t39 + t47 * t50, t100 * t2 - t101 * t223 - t12 * t72 + t16 * t57 - t20 * t270 - t25 * t75 - t33 * t40 + t47 * t51, t16 * t50 - t17 * t51 + t25 * t39 - t26 * t40 + t201 * t71 + (qJD(6) * t200 + t132 * t2 - t135 * t3) * t101, t11 * t17 - t12 * t16 - t2 * t40 + t20 * t47 + t3 * t39 + t7 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t296, t127, -0.2e1 * t225, 0.2e1 * (t133 ^ 2 - t137 ^ 2) * qJD(4), 0, 0.2e1 * t225, 0, 0, 0.2e1 * qJ(3) * t251 + 0.2e1 * qJD(3) * t133, -0.2e1 * qJ(3) * t252 + 0.2e1 * qJD(3) * t137, 0, t127, -0.2e1 * t282, 0.2e1 * t100 * t71 - 0.2e1 * t101 * t72, 0, t245, 0, 0, 0.2e1 * t100 * t116 + 0.2e1 * t122 * t72, 0.2e1 * t101 * t116 - 0.2e1 * t122 * t71, 0.2e1 * t165, 0.2e1 * t116 * t122 - 0.2e1 * t46 * t76 + 0.2e1 * t289, -0.2e1 * t130 * t282 - 0.2e1 * t211, 0.4e1 * t101 * t238 + 0.2e1 * t300 * t98, -0.2e1 * t100 * t185 + 0.2e1 * t101 * t269, -0.2e1 * t129 * t282 + 0.2e1 * t211, 0.2e1 * t100 * t54 - 0.2e1 * t101 * t276, t245, 0.2e1 * t100 * t17 + 0.2e1 * t101 * t285 - 0.2e1 * t277 * t75 + 0.2e1 * t39 * t72, -0.2e1 * t75 * t270 + 0.2e1 * t100 * t16 - 0.2e1 * t40 * t72 + 0.2e1 * (t47 * t135 - t65) * t101, 0.2e1 * t199 * t71 + 0.2e1 * (qJD(6) * t198 + t132 * t16 - t135 * t17) * t101, -0.2e1 * t16 * t40 + 0.2e1 * t17 * t39 + 0.2e1 * t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t117, 0, 0, t89, 0, 0, 0, 0, 0, 0, t81, t80, t145, t159, 0, 0, 0, 0, 0, 0, t49, t179, -t205 - t304, -t170, 0, 0, 0, 0, 0, 0, -t100 * t28 - t101 * t26 - t276 * t57 + t50 * t71, t100 * t186 + t101 * t25 - t269 * t57 + t51 * t71 (-t272 + t278) * t72 + t160 * t100, t100 * t161 - t101 * t7 + t20 * t71 - t200 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t182, -t165, 0, 0, 0, 0, 0, 0, -t126 * t224 - t132 * t182, -t135 * t182 + t224 * t247, 0, t100 * t4 - t198 * t72 + t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t100 * t43 - 0.2e1 * t282; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74, 0, -t163, t117, t30, t29, 0, 0, 0, 0, -t298, 0, -t33, t117, t136 * t213 - t212 * t262 - t142, -t213 * t291 - t239 * t262 + t8, t212 * t58 - t239 * t57 - t242 * t33 + t290 * t298 (-t291 * t8 - t136 * t142 + (t136 * t23 - t22 * t291) * qJD(5)) * pkin(4), t14, t10, t28, t15, -t186, 0, t125 * t26 - t28 * t124 + (-t132 * t268 + t291 * t50) * t284 + t223, -t125 * t25 + t186 * t124 + (-t135 * t268 + t291 * t51) * t284 + t292, -t1 + (-t50 * t239 - t124 * t26 + (t124 * t51 - t11) * qJD(6)) * t135 + (t51 * t239 - t124 * t25 - t3 + (t124 * t50 - t12) * qJD(6)) * t132, t7 * t125 + (-t136 * t200 + t20 * t291) * t284 + t161 * t124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t252, 0, -t251, 0, t133 * t250, t137 * t250, 0, 0, 0, 0, -t71, 0, -t72, 0, -t47, t46, t306 (-t291 * t46 - t136 * t47 + (t136 * t76 + t236) * qJD(5)) * pkin(4), -t38, t35, t53, t38, -t52, 0, t65 + (-qJD(6) * t193 - t47) * t135 + t154 * t132, t135 * t154 + t193 * t247 + t285, t4, t47 * t125 + (-t136 * t198 + t236) * t284 + t4 * t124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t252, -t251, 0, 0, 0, 0, 0, 0, 0, 0, -t71, -t72, 0, -t306, 0, 0, 0, 0, 0, 0, -t185, t54, t43, t266 + t124 * t43 + (t100 * t215 - t232) * t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t212, -0.2e1 * t239, 0, 0, t114, t99, 0, t115, 0, 0, 0.2e1 * t183, 0.2e1 * t259, 0.2e1 * t91, 0.2e1 * (t124 * t215 + t125 * t291) * t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t298, 0, -t33, t117, -t142, t8, 0, 0, t14, t10, t28, t15, -t186, 0, -pkin(5) * t26 - pkin(11) * t28 + t223, pkin(5) * t25 + pkin(11) * t186 + t292, pkin(11) * t160 + t161, -pkin(5) * t7 + pkin(11) * t161; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, 0, -t72, 0, -t47, t46, 0, 0, -t38, t35, t53, t38, -t52, 0, t65 + (-pkin(11) * t72 + t293) * t132 + (-t47 + (-pkin(5) * t101 - pkin(11) * t100) * qJD(6)) * t135, pkin(5) * t185 + pkin(11) * t52 + t285, t4, -pkin(5) * t47 + pkin(11) * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, -t72, 0, 0, 0, 0, 0, 0, 0, 0, -t185, t54, t43, pkin(11) * t43 - t293; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t212, -t239, 0, 0, t114, t99, 0, t115, 0, 0, t183 - t241, -t240 + t259, t91 (-pkin(5) * t291 + pkin(11) * t215) * t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114, t99, 0, t115, 0, 0, -0.2e1 * t241, -0.2e1 * t240, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t25, 0, -t26, t33, t3, t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t185, 0, t54, t72, t17, t16, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, t52, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t126, 0, -t247, 0, -t124 * t126 - t132 * t239, t124 * t247 - t135 * t239, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t126, 0, -t247, 0, -pkin(11) * t126, pkin(11) * t247, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;
