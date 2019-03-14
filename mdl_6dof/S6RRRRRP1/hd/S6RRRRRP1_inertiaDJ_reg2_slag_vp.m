% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRRP1
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
% Datum: 2019-03-10 00:59
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRRP1_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP1_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP1_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP1_inertiaDJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 00:58:14
% EndTime: 2019-03-10 00:58:29
% DurationCPUTime: 5.68s
% Computational Cost: add. (10672->425), mult. (23256->644), div. (0->0), fcn. (22676->8), ass. (0->203)
t140 = sin(qJ(5));
t138 = t140 ^ 2;
t143 = cos(qJ(5));
t139 = t143 ^ 2;
t257 = t138 + t139;
t141 = sin(qJ(4));
t249 = cos(qJ(3));
t214 = t249 * pkin(2);
t185 = t214 + pkin(3);
t248 = cos(qJ(4));
t168 = t248 * t185;
t196 = t249 * qJD(3);
t191 = pkin(2) * t196;
t247 = sin(qJ(3));
t195 = t247 * qJD(3);
t63 = -qJD(4) * t168 - t248 * t191 + (t247 * qJD(4) + t195) * t141 * pkin(2);
t193 = t257 * t63;
t184 = t248 * t247;
t261 = (qJD(3) + qJD(4)) * pkin(2) * (t249 * t141 + t184);
t142 = sin(qJ(2));
t252 = -pkin(8) - pkin(7);
t187 = t252 * t249;
t144 = cos(qJ(2));
t201 = t247 * t144;
t78 = t142 * t187 + t252 * t201;
t186 = t252 * t247;
t172 = qJD(2) * t186;
t173 = qJD(2) * t187;
t202 = t247 * t142;
t253 = -(t249 * qJD(2) + t196) * t144 + qJD(2) * t202 + t142 * t195;
t104 = t142 * t186;
t203 = t249 * t144;
t79 = -t252 * t203 + t104;
t258 = t79 * qJD(3);
t147 = pkin(9) * t253 - t142 * t172 + t144 * t173 - t258;
t103 = t249 * t142 + t201;
t159 = t103 * qJD(3);
t150 = -t103 * qJD(2) - t159;
t49 = -t78 * qJD(3) - t142 * t173 - t144 * t172;
t148 = t150 * pkin(9) - t49;
t220 = qJD(4) * t141;
t160 = -t103 * pkin(9) + t78;
t53 = t248 * t160;
t166 = t202 - t203;
t55 = -t166 * pkin(9) + t79;
t146 = -qJD(4) * t53 - t141 * t147 - t248 * t148 + t55 * t220;
t157 = t248 * t166;
t70 = t103 * t141 + t157;
t161 = t141 * t166;
t71 = t248 * t103 - t161;
t131 = -t144 * pkin(2) - pkin(1);
t84 = t166 * pkin(3) + t131;
t152 = t70 * pkin(4) - t71 * pkin(10) + t84;
t260 = -qJD(5) * t152 + t146;
t136 = qJD(5) * t143;
t204 = t71 * t136;
t34 = qJD(4) * t157 + t103 * t220 - t141 * t150 + t248 * t253;
t233 = t140 * t34;
t28 = t204 - t233;
t156 = t141 * t160;
t44 = t248 * t55 + t156;
t21 = -t140 * t44 + t143 * t152;
t22 = t140 * t152 + t143 * t44;
t256 = -t140 * t21 + t143 * t22;
t221 = t138 - t139;
t255 = t221 * qJD(5);
t197 = qJD(4) * t248;
t35 = -qJD(4) * t161 + t103 * t197 - t141 * t253 - t248 * t150;
t251 = t35 * pkin(5);
t232 = t140 * t71;
t43 = t141 * t55 - t53;
t32 = pkin(5) * t232 + t43;
t31 = t32 * t136;
t13 = qJD(4) * t156 + t141 * t148 - t248 * t147 + t55 * t197;
t8 = pkin(5) * t28 + t13;
t250 = t8 * t140 + t31;
t246 = t141 * pkin(3);
t245 = t142 * pkin(2);
t244 = t143 * pkin(5);
t243 = t43 * t13;
t208 = pkin(3) * t220;
t64 = t208 + t261;
t242 = t43 * t64;
t241 = t71 * t34;
t240 = -qJ(6) - pkin(10);
t39 = t43 * t136;
t239 = t13 * t140 + t39;
t135 = qJD(5) * t140;
t133 = pkin(5) * t135;
t54 = t133 + t64;
t212 = t247 * pkin(2);
t91 = -t141 * t212 + t168;
t85 = -pkin(4) - t91;
t82 = t85 - t244;
t238 = t82 * t136 + t54 * t140;
t237 = t85 * t136 + t64 * t140;
t213 = t248 * pkin(3);
t129 = -t213 - pkin(4);
t113 = t129 - t244;
t107 = t133 + t208;
t96 = t107 * t140;
t236 = t113 * t136 + t96;
t235 = qJD(4) * pkin(3);
t230 = t143 * t34;
t92 = pkin(2) * t184 + t141 * t185;
t86 = pkin(10) + t92;
t229 = qJ(6) + t86;
t228 = qJD(5) * t71;
t227 = t107 * t143;
t130 = -pkin(4) - t244;
t226 = t130 * t143;
t137 = t143 * qJ(6);
t128 = pkin(10) + t246;
t225 = qJ(6) + t128;
t189 = pkin(3) * t197;
t88 = t257 * t189;
t224 = t129 * t136 + t140 * t208;
t219 = qJD(5) * t138;
t222 = pkin(5) * t219 + t130 * t136;
t218 = t142 * qJD(2);
t134 = t143 * qJD(6);
t217 = t144 * qJD(2);
t29 = 0.2e1 * t70 * t35;
t216 = -0.2e1 * pkin(1) * qJD(2);
t61 = pkin(3) * t159 + (t103 * pkin(3) + t245) * qJD(2);
t149 = t35 * pkin(4) + t34 * pkin(10) + t61;
t215 = -t140 * t149 + t260 * t143;
t211 = pkin(4) * t135;
t210 = pkin(4) * t136;
t209 = pkin(2) * t218;
t207 = pkin(5) * t136;
t206 = t140 * t230;
t205 = t71 * t135;
t30 = t32 * t135;
t38 = t43 * t135;
t74 = t82 * t135;
t97 = t113 * t135;
t110 = t130 * t135;
t200 = t140 * t136;
t199 = t142 * t217;
t198 = -t143 * t8 + t30;
t80 = t85 * t135;
t194 = -t143 * t64 + t80;
t192 = -0.2e1 * t208;
t190 = pkin(2) * t195;
t69 = t71 ^ 2;
t188 = t69 * t200;
t183 = -t32 * t34 + t71 * t8;
t182 = t13 * t71 - t43 * t34;
t181 = t34 * t70 - t35 * t71;
t180 = -t34 * t82 + t54 * t71;
t179 = t63 * t70 + t64 * t71;
t178 = t70 * t86 - t71 * t85;
t177 = t128 * t70 - t129 * t71;
t176 = t140 * t22 + t143 * t21;
t108 = t129 * t135;
t171 = -t143 * t208 + t108;
t170 = t205 + t230;
t169 = t70 * t135 - t143 * t35;
t167 = t257 * t248;
t165 = (t141 * t71 - t248 * t70) * qJD(4);
t162 = t131 * t103;
t158 = -t34 * t85 - t35 * t86 + t179;
t5 = t44 * t135 + t215;
t6 = -t44 * t136 + t260 * t140 + t143 * t149;
t1 = -t176 * qJD(5) - t140 * t6 - t143 * t5;
t153 = pkin(3) * t165 - t128 * t35 - t129 * t34;
t145 = qJ(6) * t205 - t71 * t134 + t34 * t137 + t6;
t123 = -0.2e1 * t200;
t122 = 0.2e1 * t200;
t119 = t143 * t189;
t115 = pkin(10) * t143 + t137;
t114 = t240 * t140;
t102 = -0.2e1 * t255;
t100 = t128 * t143 + t137;
t99 = t225 * t140;
t90 = -t140 * qJD(6) + t240 * t136;
t89 = -t240 * t135 - t134;
t83 = t89 * t143;
t77 = t143 * t86 + t137;
t76 = t229 * t140;
t73 = (-t189 - qJD(6)) * t140 - t225 * t136;
t72 = t225 * t135 - t119 - t134;
t68 = t72 * t143;
t58 = t143 * t63;
t50 = -t258 + (t144 * t187 - t104) * qJD(2);
t48 = (-qJD(6) + t63) * t140 - t229 * t136;
t47 = t229 * t135 - t134 + t58;
t46 = t47 * t143;
t27 = t70 * t136 + t140 * t35;
t24 = -0.2e1 * t139 * t241 - 0.2e1 * t188;
t23 = -0.2e1 * t138 * t241 + 0.2e1 * t188;
t20 = -t139 * t228 + t71 * t219 + t206;
t19 = 0.4e1 * t71 * t206 + 0.2e1 * t255 * t69;
t18 = -qJ(6) * t232 + t22;
t15 = -0.4e1 * t71 * t200 + t221 * t34;
t14 = pkin(5) * t70 - t71 * t137 + t21;
t10 = 0.2e1 * t181 * t140 - 0.2e1 * t70 * t204;
t9 = -0.2e1 * t181 * t143 - 0.2e1 * t70 * t205;
t4 = qJ(6) * t204 + (-qJ(6) * t34 + qJD(5) * t44 + qJD(6) * t71) * t140 + t215;
t3 = t4 * t143;
t2 = t145 + t251;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t199, 0.2e1 * (-t142 ^ 2 + t144 ^ 2) * qJD(2), 0, -0.2e1 * t199, 0, 0, t142 * t216, t144 * t216, 0, 0, -0.2e1 * t103 * t253, 0.2e1 * t103 * t150 + 0.2e1 * t166 * t253, 0, -0.2e1 * t166 * t150, 0, 0, 0.2e1 * qJD(3) * t162 + 0.2e1 * (t166 * t245 + t162) * qJD(2), 0.2e1 * t103 * t209 - 0.2e1 * t131 * t253, -0.2e1 * t50 * t103 + 0.2e1 * t150 * t79 + 0.2e1 * t166 * t49 + 0.2e1 * t253 * t78, 0.2e1 * t131 * t209 - 0.2e1 * t49 * t79 + 0.2e1 * t50 * t78, -0.2e1 * t241, 0.2e1 * t181, 0, t29, 0, 0, 0.2e1 * t35 * t84 + 0.2e1 * t61 * t70, -0.2e1 * t34 * t84 + 0.2e1 * t61 * t71, 0.2e1 * t146 * t70 - 0.2e1 * t44 * t35 + 0.2e1 * t182, -0.2e1 * t146 * t44 + 0.2e1 * t84 * t61 + 0.2e1 * t243, t24, t19, t9, t23, t10, t29, 0.2e1 * t140 * t182 + 0.2e1 * t21 * t35 + 0.2e1 * t39 * t71 + 0.2e1 * t6 * t70, 0.2e1 * t143 * t182 - 0.2e1 * t22 * t35 - 0.2e1 * t38 * t71 + 0.2e1 * t5 * t70, 0.2e1 * t176 * t34 + 0.2e1 * (-qJD(5) * t256 + t140 * t5 - t143 * t6) * t71, 0.2e1 * t21 * t6 - 0.2e1 * t22 * t5 + 0.2e1 * t243, t24, t19, t9, t23, t10, t29, 0.2e1 * t14 * t35 + 0.2e1 * t140 * t183 + 0.2e1 * t2 * t70 + 0.2e1 * t31 * t71, 0.2e1 * t143 * t183 - 0.2e1 * t18 * t35 - 0.2e1 * t30 * t71 + 0.2e1 * t4 * t70, 0.2e1 * (t14 * t143 + t140 * t18) * t34 + 0.2e1 * (t140 * t4 - t143 * t2 + (t14 * t140 - t143 * t18) * qJD(5)) * t71, 0.2e1 * t14 * t2 - 0.2e1 * t18 * t4 + 0.2e1 * t32 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t217, 0, -t218, 0, -pkin(7) * t217, pkin(7) * t218, 0, 0, 0, 0, -t253, 0, t150, 0, t50, t49, t103 * t190 + t150 * t212 - t166 * t191 + t214 * t253 (t249 * t50 - t49 * t247 + (-t247 * t78 + t249 * t79) * qJD(3)) * pkin(2), 0, 0, -t34, 0, -t35, 0, -t13, t146, t34 * t91 - t35 * t92 + t179, -t13 * t91 - t146 * t92 - t44 * t63 + t242, -t20, t15, t27, t20, -t169, 0, t38 + (-qJD(5) * t178 - t13) * t143 + t158 * t140, t135 * t178 + t143 * t158 + t239, t1, t1 * t86 + t13 * t85 - t256 * t63 + t242, -t20, t15, t27, t20, -t169, 0, -t35 * t76 + t48 * t70 + t30 + (t228 * t82 - t8) * t143 + t180 * t140, t143 * t180 - t35 * t77 + t47 * t70 - t71 * t74 + t250, -t3 + (-t34 * t76 - t48 * t71 + (-t71 * t77 - t14) * qJD(5)) * t143 + (t34 * t77 + t47 * t71 - t2 + (-t71 * t76 - t18) * qJD(5)) * t140, t14 * t48 - t18 * t47 - t2 * t76 + t32 * t54 - t4 * t77 + t8 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t190, -0.2e1 * t191, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t64, 0.2e1 * t63, 0, -0.2e1 * t63 * t92 - 0.2e1 * t64 * t91, t122, t102, 0, t123, 0, 0, 0.2e1 * t194, 0.2e1 * t237, -0.2e1 * t193, -0.2e1 * t193 * t86 + 0.2e1 * t64 * t85, t122, t102, 0, t123, 0, 0, -0.2e1 * t143 * t54 + 0.2e1 * t74, 0.2e1 * t238, -0.2e1 * t140 * t48 - 0.2e1 * t46 + 0.2e1 * (-t140 * t77 + t143 * t76) * qJD(5), -0.2e1 * t47 * t77 - 0.2e1 * t48 * t76 + 0.2e1 * t54 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t253, 0, t150, 0, t50, t49, 0, 0, 0, 0, -t34, 0, -t35, 0, -t13, t146 (-t141 * t35 + t248 * t34 + t165) * pkin(3), -t13 * t213 - t146 * t246 + t189 * t44 + t43 * t208, -t20, t15, t27, t20, -t169, 0, t38 + (-qJD(5) * t177 - t13) * t143 + t153 * t140, t135 * t177 + t143 * t153 + t239, t1, t13 * t129 + (t43 * t141 + t248 * t256) * t235 + t1 * t128, -t20, t15, t27, t20, -t169, 0, t113 * t28 - t35 * t99 + t70 * t73 + t71 * t96 + t198, -t100 * t35 - t113 * t170 + t227 * t71 + t70 * t72 + t250, -t3 + (-t34 * t99 - t71 * t73 + (-t100 * t71 - t14) * qJD(5)) * t143 + (t100 * t34 + t71 * t72 - t2 + (-t71 * t99 - t18) * qJD(5)) * t140, -t100 * t4 + t107 * t32 + t113 * t8 + t14 * t73 - t18 * t72 - t2 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t190, -t191, 0, 0, 0, 0, 0, 0, 0, 0, t192 - t261, -t189 + t63, 0 (-t248 * t64 - t141 * t63 + (-t141 * t91 + t248 * t92) * qJD(4)) * pkin(3), t122, t102, 0, t123, 0, 0, t108 + t80 + (-t64 - t208) * t143, t224 + t237, t88 - t193, t64 * t129 - t128 * t193 + (t141 * t85 + t167 * t86) * t235, t122, t102, 0, t123, 0, 0, t74 + t97 + (-t107 - t54) * t143, t236 + t238, -t46 - t68 + (-t48 - t73) * t140 + ((t76 + t99) * t143 + (-t100 - t77) * t140) * qJD(5), -t100 * t47 + t107 * t82 + t113 * t54 - t48 * t99 - t72 * t77 - t73 * t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t192, -0.2e1 * t189, 0, 0, t122, t102, 0, t123, 0, 0, 0.2e1 * t171, 0.2e1 * t224, 0.2e1 * t88, 0.2e1 * (t128 * t167 + t129 * t141) * t235, t122, t102, 0, t123, 0, 0, 0.2e1 * t97 - 0.2e1 * t227, 0.2e1 * t236, -0.2e1 * t140 * t73 - 0.2e1 * t68 + 0.2e1 * (-t100 * t140 + t143 * t99) * qJD(5), -0.2e1 * t100 * t72 + 0.2e1 * t107 * t113 - 0.2e1 * t73 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t34, 0, -t35, 0, -t13, t146, 0, 0, -t20, t15, t27, t20, -t169, 0, t38 + (pkin(4) * t34 - pkin(10) * t35) * t140 + (-t13 + (-pkin(4) * t71 - pkin(10) * t70) * qJD(5)) * t143, pkin(4) * t170 + pkin(10) * t169 + t239, t1, -pkin(4) * t13 + pkin(10) * t1, -t20, t15, t27, t20, -t169, 0, -t130 * t233 + t114 * t35 + t70 * t90 + (pkin(5) * t138 + t226) * t228 + t198, -t34 * t226 - t115 * t35 + t70 * t89 + (-t130 + t244) * t205 + t250, -t3 + (t114 * t34 - t71 * t90 + (-t115 * t71 - t14) * qJD(5)) * t143 + (t115 * t34 + t71 * t89 - t2 + (t114 * t71 - t18) * qJD(5)) * t140, pkin(5) * t30 + t114 * t2 - t115 * t4 + t130 * t8 + t14 * t90 - t18 * t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t64, t63, 0, 0, t122, t102, 0, t123, 0, 0, t194 - t211, -t210 + t237, -t193, -pkin(4) * t64 - pkin(10) * t193, t122, t102, 0, t123, 0, 0, t110 + t74 + (-t54 - t133) * t143, t222 + t238, -t46 - t83 + (-t48 - t90) * t140 + ((-t114 + t76) * t143 + (-t115 - t77) * t140) * qJD(5), pkin(5) * t74 + t114 * t48 - t115 * t47 + t130 * t54 - t76 * t90 - t77 * t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t208, -t189, 0, 0, t122, t102, 0, t123, 0, 0, t171 - t211, -t210 + t224, t88 (-pkin(4) * t141 + pkin(10) * t167) * t235, t122, t102, 0, t123, 0, 0, t110 + t97 + (-t107 - t133) * t143, t222 + t236, -t68 - t83 + (-t73 - t90) * t140 + ((-t114 + t99) * t143 + (-t100 - t115) * t140) * qJD(5), pkin(5) * t97 - t100 * t89 + t107 * t130 + t114 * t73 - t115 * t72 - t90 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t122, t102, 0, t123, 0, 0, -0.2e1 * t211, -0.2e1 * t210, 0, 0, t122, t102, 0, t123, 0, 0, -0.2e1 * pkin(5) * t200 + 0.2e1 * t110, 0.2e1 * t222, -0.2e1 * t140 * t90 - 0.2e1 * t83 + 0.2e1 * (-t114 * t143 - t115 * t140) * qJD(5), 0.2e1 * pkin(5) * t110 + 0.2e1 * t114 * t90 - 0.2e1 * t115 * t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t170, 0, -t28, t35, t6, t5, 0, 0, 0, 0, -t170, 0, -t28, t35, t145 + 0.2e1 * t251, t4, t170 * pkin(5), t2 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t136, 0, -t135, 0, -t136 * t86 + t140 * t63, t135 * t86 + t58, 0, 0, 0, 0, t136, 0, -t135, 0, t48, t47, -t207, t48 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t136, 0, -t135, 0, -t128 * t136 - t140 * t189, t128 * t135 - t119, 0, 0, 0, 0, t136, 0, -t135, 0, t73, t72, -t207, t73 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t136, 0, -t135, 0, -pkin(10) * t136, pkin(10) * t135, 0, 0, 0, 0, t136, 0, -t135, 0, t90, t89, -t207, t90 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, -t170, 0, t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, t136, 0, t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, t136, 0, t107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, t136, 0, t133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t7;