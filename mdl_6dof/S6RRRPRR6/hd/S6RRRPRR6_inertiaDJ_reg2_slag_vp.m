% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRPRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:31
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPRR6_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR6_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR6_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR6_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:29:31
% EndTime: 2019-03-09 18:29:49
% DurationCPUTime: 7.10s
% Computational Cost: add. (14614->443), mult. (34386->804), div. (0->0), fcn. (32917->10), ass. (0->194)
t137 = sin(qJ(3));
t139 = cos(qJ(3));
t254 = sin(pkin(11));
t255 = cos(pkin(11));
t175 = t255 * t137 + t254 * t139;
t126 = t254 * t137;
t192 = -t255 * t139 + t126;
t262 = sin(qJ(5));
t264 = cos(qJ(5));
t172 = t262 * t175 + t264 * t192;
t256 = -qJ(4) - pkin(8);
t194 = t254 * t256;
t267 = t255 * t256;
t268 = -t255 * pkin(9) + t267;
t160 = (-t254 * pkin(9) + t194) * t139 + t268 * t137;
t188 = t256 * t126;
t161 = t126 * pkin(9) + t268 * t139 - t188;
t47 = t264 * t160 + t262 * t161;
t80 = t264 * t175 - t262 * t192;
t138 = sin(qJ(2));
t140 = cos(qJ(2));
t239 = t140 * qJD(2);
t243 = qJD(3) * t139;
t269 = t137 * t239 + t138 * t243;
t48 = t262 * t160 - t264 * t161;
t201 = t255 * pkin(3) + pkin(4);
t228 = t254 * pkin(3);
t166 = -t264 * t201 + t262 * t228;
t208 = qJD(3) * t254;
t209 = qJD(3) * t255;
t186 = -t137 * t208 + t139 * t209;
t130 = t138 * qJD(2);
t242 = qJD(3) * t140;
t222 = t139 * t242;
t266 = t137 * t130 - t222;
t226 = t139 * t239;
t244 = qJD(3) * t137;
t265 = t138 * t244 - t226;
t132 = t137 ^ 2;
t134 = t139 ^ 2;
t246 = t132 - t134;
t207 = qJD(3) * t246;
t133 = t138 ^ 2;
t206 = (-t140 ^ 2 + t133) * qJD(2);
t263 = cos(qJ(6));
t261 = pkin(2) * t139;
t260 = pkin(2) * t140;
t259 = pkin(7) * t137;
t258 = t138 * pkin(3);
t257 = t140 * pkin(5);
t187 = t192 * t138;
t198 = -t138 * pkin(8) - t260;
t190 = -pkin(1) + t198;
t111 = t139 * t190;
t231 = -pkin(3) - t259;
t250 = t138 * t139;
t170 = -qJ(4) * t250 + t140 * t231 + t111;
t252 = t137 * t138;
t249 = t139 * t140;
t125 = pkin(7) * t249;
t96 = t137 * t190 + t125;
t189 = -qJ(4) * t252 + t96;
t56 = t255 * t170 - t254 * t189;
t151 = -t140 * pkin(4) + pkin(9) * t187 + t56;
t101 = t175 * t138;
t57 = t254 * t170 + t255 * t189;
t49 = -pkin(9) * t101 + t57;
t29 = t262 * t151 + t264 * t49;
t106 = t262 * t201 + t264 * t228;
t136 = sin(qJ(6));
t253 = t136 * t106;
t251 = t137 * t140;
t183 = qJD(3) * t190;
t197 = pkin(2) * t138 - pkin(8) * t140;
t184 = t197 * qJD(2);
t248 = -t137 * t184 - t139 * t183;
t247 = t137 * t209 + t139 * t208;
t112 = pkin(3) * t252 + t138 * pkin(7);
t241 = qJD(4) * t139;
t240 = qJD(6) * t136;
t238 = -0.2e1 * pkin(1) * qJD(2);
t237 = -0.2e1 * pkin(2) * qJD(3);
t165 = pkin(5) - t166;
t163 = t263 * t165;
t98 = t166 * qJD(5);
t99 = t106 * qJD(5);
t236 = -qJD(6) * t163 + t136 * t99 + t263 * t98;
t235 = pkin(7) * t251;
t234 = pkin(5) * t130;
t129 = pkin(3) * t244;
t233 = pkin(5) * t240;
t128 = pkin(7) * t239;
t199 = t264 * t101 - t262 * t187;
t22 = -pkin(10) * t199 + t29;
t232 = t263 * t22;
t93 = t269 * pkin(3) + t128;
t127 = -t139 * pkin(3) - pkin(2);
t230 = t263 * t106;
t224 = t137 * t242;
t220 = t137 * t243;
t219 = t138 * t239;
t218 = t139 * t130;
t217 = t138 * t241;
t216 = qJD(5) * t262;
t215 = qJD(6) * t263;
t214 = t136 * t98 - t263 * t99;
t213 = qJD(3) * t256;
t211 = qJD(2) * t255;
t210 = qJD(2) * t254;
t205 = 0.2e1 * t219;
t204 = pkin(5) * t215;
t203 = t140 * t218;
t202 = t133 * t220;
t81 = t101 * pkin(4) + t112;
t43 = t264 * t151;
t28 = -t262 * t49 + t43;
t86 = t247 * pkin(4) + t129;
t95 = t111 - t235;
t193 = -t137 * t96 - t139 * t95;
t73 = -t186 * t138 - t210 * t249 - t211 * t251;
t58 = -t73 * pkin(4) + t93;
t171 = qJD(3) * t175;
t74 = t138 * t171 + t192 * t239;
t35 = t199 * qJD(5) - t262 * t73 + t264 * t74;
t150 = -t217 + (-t125 + (-t256 * t138 + pkin(1) + t260) * t137) * qJD(3) + (t256 * t249 + (-t231 + t261) * t138) * qJD(2);
t158 = (-pkin(7) * qJD(2) - qJ(4) * qJD(3)) * t250 + (-qJD(4) * t138 + (-pkin(7) * qJD(3) - qJ(4) * qJD(2)) * t140) * t137 - t248;
t154 = t254 * t158;
t30 = t255 * t150 - t154;
t143 = pkin(4) * t130 + t74 * pkin(9) + t30;
t155 = t255 * t158;
t31 = t254 * t150 + t155;
t144 = t73 * pkin(9) + t31;
t9 = -t29 * qJD(5) + t264 * t143 - t262 * t144;
t141 = t35 * pkin(10) + t234 + t9;
t173 = t264 * t187;
t185 = -qJD(5) * t173 - t101 * t216 - t262 * t74 - t264 * t73;
t8 = -qJD(5) * t43 - t262 * t143 - t264 * t144 + t216 * t49;
t164 = -pkin(10) * t185 - t8;
t70 = -t262 * t101 - t173;
t19 = -t70 * pkin(10) - t257 + t28;
t1 = -t136 * t141 - t263 * t164 - t19 * t215 + t22 * t240;
t11 = t136 * t19 + t232;
t181 = t263 * t199;
t180 = t218 + t224;
t177 = -qJD(4) * t137 + t139 * t213;
t176 = t137 * t213 + t241;
t174 = t80 * qJD(5) + t262 * t186 + t264 * t247;
t97 = pkin(4) * t192 + t127;
t41 = -t136 * t199 + t263 * t70;
t168 = t263 * t172;
t64 = pkin(7) * t180 + t248;
t65 = -t96 * qJD(3) + (pkin(7) * t252 + t139 * t197) * qJD(2);
t167 = qJD(3) * t193 - t137 * t65 - t139 * t64;
t55 = -t136 * t172 + t263 * t80;
t162 = -t136 * t164 + t263 * t141;
t72 = t136 * t165 + t230;
t76 = t255 * t176 + t254 * t177;
t75 = -t254 * t176 + t255 * t177;
t156 = t172 * qJD(5) - t264 * t186 + t262 * t247;
t2 = -qJD(6) * t11 + t162;
t153 = -t247 * pkin(9) + t76;
t152 = -pkin(9) * t186 + t75;
t23 = -t47 * qJD(5) - t262 * t152 - t264 * t153;
t149 = pkin(10) * t174 + t23;
t148 = t266 * pkin(7) + t265 * qJ(4) - t137 * t183 + t139 * t184 - t217;
t147 = -t80 * pkin(10) + t47;
t146 = t136 * t147;
t145 = t263 * t147;
t24 = -t48 * qJD(5) + t264 * t152 - t262 * t153;
t142 = pkin(10) * t156 + t24;
t120 = -0.2e1 * t219;
t85 = -t137 * t226 + t138 * t207;
t84 = -t139 * t267 + t188;
t83 = t137 * t267 + t139 * t194;
t71 = t163 - t253;
t61 = pkin(5) * t172 + t97;
t54 = t136 * t80 + t168;
t53 = pkin(5) * t199 + t81;
t45 = -qJD(6) * t72 + t214;
t44 = t106 * t240 + t236;
t40 = t136 * t70 + t181;
t38 = pkin(5) * t174 + t86;
t37 = -pkin(10) * t172 + t48;
t26 = pkin(5) * t185 + t58;
t21 = t55 * qJD(6) - t136 * t156 + t263 * t174;
t20 = qJD(6) * t168 + t136 * t174 + t263 * t156 + t80 * t240;
t17 = t263 * t37 + t146;
t16 = -t136 * t37 + t145;
t13 = t41 * qJD(6) - t136 * t35 + t263 * t185;
t12 = qJD(6) * t181 + t136 * t185 + t70 * t240 + t263 * t35;
t10 = -t136 * t22 + t263 * t19;
t4 = -qJD(6) * t146 + t136 * t149 + t263 * t142 - t37 * t215;
t3 = -qJD(6) * t145 - t136 * t142 + t263 * t149 + t37 * t240;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t205, -0.2e1 * t206, 0, t120, 0, 0, t138 * t238, t140 * t238, 0, 0, 0.2e1 * t134 * t219 - 0.2e1 * t202, 0.2e1 * t133 * t207 - 0.4e1 * t137 * t203, 0.2e1 * t138 * t224 + 0.2e1 * t139 * t206, 0.2e1 * t132 * t219 + 0.2e1 * t202, -0.2e1 * t137 * t206 + 0.2e1 * t138 * t222, t120, 0.2e1 * t95 * t130 - 0.2e1 * t140 * t65 + 0.2e1 * (t133 * t243 + t137 * t205) * pkin(7), -0.2e1 * t96 * t130 - 0.2e1 * t140 * t64 + 0.2e1 * (-t133 * t244 + 0.2e1 * t203) * pkin(7), 0.2e1 * t193 * t239 + 0.2e1 * (t137 * t64 - t139 * t65 + (t137 * t95 - t139 * t96) * qJD(3)) * t138, 0.2e1 * pkin(7) ^ 2 * t219 - 0.2e1 * t96 * t64 + 0.2e1 * t95 * t65, 0.2e1 * t187 * t74, 0.2e1 * t74 * t101 - 0.2e1 * t187 * t73, -0.2e1 * t130 * t187 + 0.2e1 * t74 * t140, -0.2e1 * t101 * t73, -0.2e1 * t101 * t130 - 0.2e1 * t140 * t73, t120, 0.2e1 * t93 * t101 - 0.2e1 * t112 * t73 + 0.2e1 * t130 * t56 - 0.2e1 * t140 * t30, -0.2e1 * t112 * t74 - 0.2e1 * t130 * t57 + 0.2e1 * t31 * t140 - 0.2e1 * t187 * t93, -0.2e1 * t31 * t101 + 0.2e1 * t187 * t30 + 0.2e1 * t56 * t74 + 0.2e1 * t57 * t73, 0.2e1 * t112 * t93 + 0.2e1 * t30 * t56 + 0.2e1 * t31 * t57, -0.2e1 * t70 * t35, -0.2e1 * t185 * t70 + 0.2e1 * t199 * t35, 0.2e1 * t130 * t70 + 0.2e1 * t140 * t35, 0.2e1 * t199 * t185, -0.2e1 * t130 * t199 + 0.2e1 * t140 * t185, t120, 0.2e1 * t130 * t28 - 0.2e1 * t9 * t140 + 0.2e1 * t185 * t81 + 0.2e1 * t199 * t58, -0.2e1 * t130 * t29 - 0.2e1 * t140 * t8 - 0.2e1 * t81 * t35 + 0.2e1 * t58 * t70, -0.2e1 * t185 * t29 + 0.2e1 * t199 * t8 + 0.2e1 * t28 * t35 - 0.2e1 * t9 * t70, 0.2e1 * t28 * t9 - 0.2e1 * t29 * t8 + 0.2e1 * t58 * t81, -0.2e1 * t41 * t12, 0.2e1 * t12 * t40 - 0.2e1 * t13 * t41, 0.2e1 * t12 * t140 + 0.2e1 * t130 * t41, 0.2e1 * t40 * t13, 0.2e1 * t13 * t140 - 0.2e1 * t130 * t40, t120, 0.2e1 * t10 * t130 + 0.2e1 * t53 * t13 - 0.2e1 * t140 * t2 + 0.2e1 * t26 * t40, -0.2e1 * t1 * t140 - 0.2e1 * t11 * t130 - 0.2e1 * t53 * t12 + 0.2e1 * t26 * t41, 0.2e1 * t1 * t40 + 0.2e1 * t10 * t12 - 0.2e1 * t11 * t13 - 0.2e1 * t2 * t41, -0.2e1 * t1 * t11 + 0.2e1 * t10 * t2 + 0.2e1 * t26 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t239, 0, -t130, 0, -t128, pkin(7) * t130, 0, 0, -t85, -0.4e1 * t138 * t220 - t239 * t246, t266, t85, t180, 0 (pkin(8) * t249 + (t259 - t261) * t138) * qJD(3) + (t137 * t198 - t125) * qJD(2) (pkin(7) * t250 + t137 * t197) * qJD(3) + (t139 * t198 + t235) * qJD(2), t167, -pkin(2) * t128 + pkin(8) * t167, -t175 * t74 - t186 * t187, -t186 * t101 + t175 * t73 + t187 * t247 + t74 * t192, qJD(2) * t101 - t140 * t186, t101 * t247 - t73 * t192, -t192 * t130 + t247 * t140, 0, t101 * t129 + t112 * t247 - t127 * t73 + t83 * t130 - t75 * t140 + t93 * t192, t112 * t186 - t127 * t74 - t129 * t187 - t130 * t84 + t76 * t140 + t175 * t93, -t76 * t101 - t30 * t175 - t56 * t186 + t75 * t187 - t31 * t192 - t57 * t247 + t84 * t73 + t83 * t74, t112 * t129 + t127 * t93 + t30 * t83 + t31 * t84 + t56 * t75 + t57 * t76, -t156 * t70 - t35 * t80, t156 * t199 + t172 * t35 - t174 * t70 - t185 * t80, t130 * t80 + t140 * t156, t172 * t185 + t174 * t199, -t130 * t172 + t140 * t174, 0, t130 * t47 - t24 * t140 + t172 * t58 + t174 * t81 + t185 * t97 + t199 * t86, -t130 * t48 - t23 * t140 - t156 * t81 - t97 * t35 + t58 * t80 + t86 * t70, t156 * t28 + t172 * t8 - t174 * t29 - t185 * t48 + t199 * t23 - t24 * t70 + t47 * t35 - t9 * t80, -t23 * t29 + t24 * t28 + t47 * t9 - t48 * t8 + t58 * t97 + t81 * t86, -t12 * t55 - t20 * t41, t12 * t54 - t13 * t55 + t20 * t40 - t21 * t41, t130 * t55 + t140 * t20, t13 * t54 + t21 * t40, -t130 * t54 + t140 * t21, 0, t61 * t13 + t130 * t16 - t140 * t4 + t53 * t21 + t26 * t54 + t38 * t40, -t61 * t12 - t130 * t17 - t140 * t3 - t53 * t20 + t26 * t55 + t38 * t41, t1 * t54 + t10 * t20 - t11 * t21 + t12 * t16 - t13 * t17 - t2 * t55 + t3 * t40 - t4 * t41, -t1 * t17 + t10 * t4 - t11 * t3 + t16 * t2 + t26 * t61 + t38 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t220, -0.2e1 * t207, 0, -0.2e1 * t220, 0, 0, t137 * t237, t139 * t237, 0, 0, 0.2e1 * t175 * t186, -0.2e1 * t175 * t247 - 0.2e1 * t186 * t192, 0, 0.2e1 * t192 * t247, 0, 0, 0.2e1 * t127 * t247 + 0.2e1 * t192 * t129, 0.2e1 * pkin(3) * t137 * t171 + 0.2e1 * t127 * t186, -0.2e1 * t75 * t175 - 0.2e1 * t83 * t186 - 0.2e1 * t76 * t192 - 0.2e1 * t84 * t247, 0.2e1 * t127 * t129 + 0.2e1 * t75 * t83 + 0.2e1 * t76 * t84, -0.2e1 * t80 * t156, 0.2e1 * t156 * t172 - 0.2e1 * t174 * t80, 0, 0.2e1 * t172 * t174, 0, 0, 0.2e1 * t172 * t86 + 0.2e1 * t174 * t97, -0.2e1 * t156 * t97 + 0.2e1 * t86 * t80, 0.2e1 * t156 * t47 + 0.2e1 * t172 * t23 - 0.2e1 * t174 * t48 - 0.2e1 * t24 * t80, -0.2e1 * t23 * t48 + 0.2e1 * t24 * t47 + 0.2e1 * t86 * t97, -0.2e1 * t55 * t20, 0.2e1 * t20 * t54 - 0.2e1 * t21 * t55, 0, 0.2e1 * t54 * t21, 0, 0, 0.2e1 * t21 * t61 + 0.2e1 * t38 * t54, -0.2e1 * t20 * t61 + 0.2e1 * t38 * t55, 0.2e1 * t16 * t20 - 0.2e1 * t17 * t21 + 0.2e1 * t3 * t54 - 0.2e1 * t4 * t55, 0.2e1 * t16 * t4 - 0.2e1 * t17 * t3 + 0.2e1 * t38 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t265, 0, -t269, t130, t65, t64, 0, 0, 0, 0, -t74, 0, t73, t130, t255 * t148 + 0.2e1 * t211 * t258 - t154, -t254 * t148 - 0.2e1 * t210 * t258 - t155 (t254 * t73 + t255 * t74) * pkin(3) (t254 * t31 + t255 * t30) * pkin(3), 0, 0, -t35, 0, -t185, t130, -t130 * t166 + t99 * t140 + t9, -t106 * t130 - t98 * t140 + t8, -t106 * t185 - t166 * t35 + t199 * t98 + t99 * t70, -t106 * t8 - t166 * t9 - t28 * t99 - t29 * t98, 0, 0, -t12, 0, -t13, t130, t130 * t71 - t45 * t140 + t2, -t130 * t72 - t140 * t44 + t1, t12 * t71 - t13 * t72 + t40 * t44 - t41 * t45, -t1 * t72 + t10 * t45 - t11 * t44 + t2 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t243, 0, -t244, 0, -pkin(8) * t243, pkin(8) * t244, 0, 0, 0, 0, t186, 0, -t247, 0, t75, -t76 (-t255 * t186 - t254 * t247) * pkin(3) (t254 * t76 + t255 * t75) * pkin(3), 0, 0, -t156, 0, -t174, 0, t24, t23, -t106 * t174 - t156 * t166 + t172 * t98 + t99 * t80, -t106 * t23 - t166 * t24 - t47 * t99 - t48 * t98, 0, 0, -t20, 0, -t21, 0, t4, t3, t20 * t71 - t21 * t72 + t44 * t54 - t45 * t55, t16 * t45 - t17 * t44 - t3 * t72 + t4 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t99, 0.2e1 * t98, 0, -0.2e1 * t106 * t98 + 0.2e1 * t166 * t99, 0, 0, 0, 0, 0, 0, 0.2e1 * t45, 0.2e1 * t44, 0, -0.2e1 * t44 * t72 + 0.2e1 * t45 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, -t74, 0, t93, 0, 0, 0, 0, 0, 0, t185, -t35, 0, t58, 0, 0, 0, 0, 0, 0, t13, -t12, 0, t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t247, t186, 0, t129, 0, 0, 0, 0, 0, 0, t174, -t156, 0, t86, 0, 0, 0, 0, 0, 0, t21, -t20, 0, t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35, 0, -t185, t130, t9, t8, 0, 0, 0, 0, -t12, 0, -t13, t130, t263 * t234 + (-t232 + (-t19 + t257) * t136) * qJD(6) + t162 (-t130 * t136 + t140 * t215) * pkin(5) + t1 (t263 * t12 - t13 * t136 + (t136 * t41 - t263 * t40) * qJD(6)) * pkin(5) (t263 * t2 - t1 * t136 + (-t10 * t136 + t263 * t11) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t156, 0, -t174, 0, t24, t23, 0, 0, 0, 0, -t20, 0, -t21, 0, t4, t3 (t263 * t20 - t136 * t21 + (t136 * t55 - t263 * t54) * qJD(6)) * pkin(5) (t263 * t4 - t136 * t3 + (-t136 * t16 + t263 * t17) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t99, t98, 0, 0, 0, 0, 0, 0, 0, 0 (-t230 + (-0.2e1 * pkin(5) + t166) * t136) * qJD(6) + t214 (-t263 * pkin(5) + t253) * qJD(6) + t236, 0 (t263 * t45 - t136 * t44 + (-t136 * t71 + t263 * t72) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t233, -0.2e1 * t204, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, 0, -t13, t130, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t20, 0, -t21, 0, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, t44, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t233, -t204, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;