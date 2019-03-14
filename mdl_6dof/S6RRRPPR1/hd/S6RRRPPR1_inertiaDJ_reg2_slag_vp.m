% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4,theta5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPPR1_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR1_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR1_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR1_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:23:16
% EndTime: 2019-03-09 15:23:24
% DurationCPUTime: 4.22s
% Computational Cost: add. (9460->296), mult. (20845->522), div. (0->0), fcn. (20719->10), ass. (0->180)
t138 = sin(pkin(11));
t136 = t138 ^ 2;
t140 = cos(pkin(11));
t137 = t140 ^ 2;
t203 = t136 + t137;
t242 = qJD(5) * t203;
t243 = 0.2e1 * t242;
t139 = sin(pkin(10));
t235 = cos(qJ(3));
t184 = qJD(3) * t235;
t175 = pkin(2) * t184;
t142 = sin(qJ(3));
t200 = qJD(3) * t142;
t194 = pkin(2) * t200;
t214 = cos(pkin(10));
t102 = -t139 * t194 + t175 * t214;
t98 = qJD(5) + t102;
t241 = t203 * t98;
t240 = qJD(2) + qJD(3);
t143 = sin(qJ(2));
t144 = cos(qJ(2));
t114 = t142 * t144 + t143 * t235;
t161 = qJD(3) * t114;
t154 = -qJD(2) * t114 - t161;
t190 = t235 * t144;
t205 = t142 * t143;
t86 = -qJD(2) * t190 - t144 * t184 + t205 * t240;
t58 = -t139 * t86 - t154 * t214;
t59 = t139 * t154 - t214 * t86;
t165 = -t190 + t205;
t79 = t114 * t139 + t165 * t214;
t80 = t114 * t214 - t139 * t165;
t172 = t58 * t80 + t59 * t79;
t239 = -0.2e1 * t172;
t237 = -pkin(8) - pkin(7);
t141 = sin(qJ(6));
t234 = cos(qJ(6));
t188 = t234 * t140;
t238 = -t138 * t141 + t188;
t196 = t235 * pkin(2);
t131 = t196 + pkin(3);
t179 = t214 * t142;
t104 = pkin(2) * t179 + t131 * t139;
t99 = qJ(5) + t104;
t236 = -pkin(9) - t99;
t233 = pkin(2) * t142;
t232 = pkin(3) * t139;
t231 = t140 * pkin(5);
t230 = t143 * pkin(2);
t169 = t86 * qJ(4) - t114 * qJD(4);
t174 = t237 * t235;
t116 = t143 * t174;
t120 = t237 * t144;
t193 = t142 * t237;
t201 = qJD(2) * t144;
t63 = -t116 * t240 - t120 * t200 - t193 * t201;
t41 = qJ(4) * t154 - qJD(4) * t165 - t63;
t115 = t143 * t193;
t158 = (t144 * t174 - t115) * qJD(2);
t91 = -t120 * t235 + t115;
t64 = -qJD(3) * t91 + t158;
t26 = t139 * t41 - t214 * (t169 + t64);
t90 = t120 * t142 + t116;
t166 = -qJ(4) * t114 + t90;
t71 = -qJ(4) * t165 + t91;
t46 = t139 * t71 - t166 * t214;
t229 = t46 * t26;
t128 = qJ(5) + t232;
t228 = -pkin(9) - t128;
t189 = t234 * t138;
t206 = t141 * t140;
t113 = t189 + t206;
t107 = t113 * qJD(6);
t219 = t138 * t59;
t19 = pkin(5) * t219 + t26;
t218 = t138 * t80;
t36 = pkin(5) * t218 + t46;
t227 = t107 * t36 - t19 * t238;
t183 = qJD(6) * t234;
t199 = qJD(6) * t141;
t186 = t138 * t199;
t106 = -t140 * t183 + t186;
t226 = -t106 * t36 + t113 * t19;
t23 = t59 * t189 - t80 * t186 + (t141 * t59 + t183 * t80) * t140;
t48 = t113 * t80;
t225 = t106 * t48 - t113 * t23;
t132 = -t144 * pkin(2) - pkin(1);
t97 = pkin(3) * t165 + t132;
t157 = t79 * pkin(4) + t97;
t155 = -t80 * qJ(5) + t157;
t47 = t139 * t166 + t214 * t71;
t28 = t138 * t155 + t140 * t47;
t101 = (t139 * t235 + t179) * qJD(3) * pkin(2);
t103 = t131 * t214 - t139 * t233;
t100 = -pkin(4) - t103;
t95 = t100 - t231;
t224 = -t101 * t238 + t107 * t95;
t223 = t101 * t113 - t106 * t95;
t221 = t101 * t80;
t220 = t138 * t47;
t54 = t138 * t58;
t217 = t140 * t26;
t216 = t140 * t59;
t215 = t46 * t101;
t213 = t101 * t138;
t212 = t101 * t140;
t211 = t238 * t107;
t210 = t113 * t106;
t187 = t214 * pkin(3);
t130 = -t187 - pkin(4);
t118 = t130 - t231;
t209 = t118 * t106;
t208 = t118 * t107;
t202 = qJD(2) * t143;
t42 = 0.2e1 * t79 * t58;
t198 = 0.2e1 * t80 * t59;
t197 = -0.2e1 * pkin(1) * qJD(2);
t195 = pkin(2) * t202;
t52 = t138 * t216;
t151 = t79 * pkin(5) - t220 + ((-pkin(9) - qJ(5)) * t80 + t157) * t140;
t149 = t234 * t151;
t24 = -pkin(9) * t218 + t28;
t11 = -t141 * t24 + t149;
t150 = t141 * t151;
t12 = t234 * t24 + t150;
t152 = t214 * t41 + t139 * (-qJD(3) * t115 + t120 * t184 + t169);
t147 = t139 * t158 + t152;
t164 = t58 * pkin(4) - t59 * qJ(5) - t80 * qJD(5);
t148 = -pkin(3) * t154 + t164 + t195;
t145 = t58 * pkin(5) - pkin(9) * t216 - t138 * t147 + t140 * t148;
t146 = -pkin(9) * t219 + t138 * t148 + t140 * t147;
t3 = -qJD(6) * t149 - t141 * t145 - t146 * t234 + t199 * t24;
t4 = -qJD(6) * t150 - t141 * t146 + t145 * t234 - t183 * t24;
t192 = t106 * t11 - t107 * t12 - t113 * t4 - t238 * t3;
t191 = t141 * t236;
t185 = t143 * t201;
t182 = t228 * t138;
t181 = t234 * qJD(5);
t168 = t236 * t189;
t135 = t140 * pkin(9);
t89 = t140 * t99 + t135;
t38 = -qJD(6) * t168 - t98 * t188 + (qJD(6) * t89 + t138 * t98) * t141;
t39 = -t89 * t183 - t98 * t206 + (-qJD(6) * t191 - t234 * t98) * t138;
t61 = -t141 * t89 + t168;
t62 = t138 * t191 + t234 * t89;
t178 = t106 * t61 - t107 * t62 - t113 * t39 - t238 * t38;
t108 = t128 * t140 + t135;
t167 = t234 * t182;
t65 = -t140 * t181 - qJD(6) * t167 + (qJD(5) * t138 + qJD(6) * t108) * t141;
t66 = -t108 * t183 - qJD(5) * t206 + (-t199 * t228 - t181) * t138;
t75 = -t141 * t108 + t167;
t76 = t108 * t234 + t141 * t182;
t177 = t106 * t75 - t107 * t76 - t113 * t66 - t238 * t65;
t173 = t26 * t80 + t46 * t59;
t171 = t106 * t79 - t113 * t58;
t22 = t80 * t107 - t238 * t59;
t49 = t238 * t80;
t170 = -t107 * t49 - t22 * t238;
t153 = -(-t143 * t184 - t144 * t200) * pkin(3) + t164;
t156 = t139 * (t190 * t237 - t115);
t159 = pkin(3) * t114 + t230;
t13 = -t138 * t152 + t140 * t153 + (-t138 * t156 + t140 * t159) * qJD(2);
t14 = t140 * t152 + t138 * t153 + (t138 * t159 + t140 * t156) * qJD(2);
t5 = -t13 * t138 + t14 * t140;
t163 = -qJD(5) * t79 - t128 * t58 + t130 * t59;
t162 = t132 * t114;
t160 = t100 * t59 - t58 * t99 - t79 * t98 + t221;
t85 = -0.2e1 * t210;
t84 = -0.2e1 * t211;
t77 = pkin(3) * t161 + qJD(2) * t159;
t60 = -0.2e1 * t106 * t238 - 0.2e1 * t107 * t113;
t55 = t140 * t58;
t33 = -t107 * t79 + t238 * t58;
t29 = (-t136 + t137) * t59;
t27 = t140 * t155 - t220;
t25 = t26 * t138;
t16 = t107 * t48 - t23 * t238;
t15 = -t106 * t49 - t113 * t22;
t6 = t170 + t225;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t185, 0.2e1 * (-t143 ^ 2 + t144 ^ 2) * qJD(2), 0, -0.2e1 * t185, 0, 0, t143 * t197, t144 * t197, 0, 0, -0.2e1 * t114 * t86, 0.2e1 * t114 * t154 + 0.2e1 * t165 * t86, 0, -0.2e1 * t165 * t154, 0, 0, 0.2e1 * qJD(3) * t162 + 0.2e1 * (t165 * t230 + t162) * qJD(2), 0.2e1 * t114 * t195 - 0.2e1 * t132 * t86, -0.2e1 * t64 * t114 + 0.2e1 * t154 * t91 + 0.2e1 * t165 * t63 + 0.2e1 * t90 * t86, 0.2e1 * t132 * t195 - 0.2e1 * t63 * t91 + 0.2e1 * t64 * t90, t198, t239, 0, t42, 0, 0, 0.2e1 * t58 * t97 + 0.2e1 * t77 * t79, 0.2e1 * t59 * t97 + 0.2e1 * t77 * t80, -0.2e1 * t147 * t79 - 0.2e1 * t47 * t58 + 0.2e1 * t173, 0.2e1 * t147 * t47 + 0.2e1 * t97 * t77 + 0.2e1 * t229, t137 * t198, -0.4e1 * t80 * t52, 0.2e1 * t172 * t140, t136 * t198, t138 * t239, t42, 0.2e1 * t13 * t79 + 0.2e1 * t138 * t173 + 0.2e1 * t27 * t58, -0.2e1 * t14 * t79 + 0.2e1 * t140 * t173 - 0.2e1 * t28 * t58, 0.2e1 * (-t13 * t80 - t27 * t59) * t140 + 0.2e1 * (-t14 * t80 - t28 * t59) * t138, 0.2e1 * t13 * t27 + 0.2e1 * t14 * t28 + 0.2e1 * t229, -0.2e1 * t49 * t22, 0.2e1 * t22 * t48 - 0.2e1 * t23 * t49, -0.2e1 * t22 * t79 + 0.2e1 * t49 * t58, 0.2e1 * t48 * t23, -0.2e1 * t23 * t79 - 0.2e1 * t48 * t58, t42, 0.2e1 * t11 * t58 + 0.2e1 * t19 * t48 + 0.2e1 * t23 * t36 + 0.2e1 * t4 * t79, -0.2e1 * t12 * t58 + 0.2e1 * t19 * t49 - 0.2e1 * t22 * t36 + 0.2e1 * t3 * t79, 0.2e1 * t11 * t22 - 0.2e1 * t12 * t23 + 0.2e1 * t3 * t48 - 0.2e1 * t4 * t49, 0.2e1 * t11 * t4 - 0.2e1 * t12 * t3 + 0.2e1 * t19 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t201, 0, -t202, 0, -pkin(7) * t201, pkin(7) * t202, 0, 0, 0, 0, -t86, 0, t154, 0, t64, t63, t114 * t194 + t154 * t233 - t165 * t175 + t196 * t86 (t235 * t64 - t63 * t142 + (-t142 * t90 + t235 * t91) * qJD(3)) * pkin(2), 0, 0, t59, 0, -t58, 0, -t26, -t147, -t102 * t79 - t103 * t59 - t104 * t58 + t221, t47 * t102 - t26 * t103 + t104 * t147 + t215, t52, t29, t54, -t52, t55, 0, t138 * t160 - t217, t140 * t160 + t25, t5, t100 * t26 + t215 + (t14 * t99 + t28 * t98) * t140 + (-t13 * t99 - t27 * t98) * t138, t15, t6, -t171, t16, t33, 0, t101 * t48 + t23 * t95 + t39 * t79 + t58 * t61 + t227, t101 * t49 - t22 * t95 + t38 * t79 - t58 * t62 + t226, t22 * t61 - t23 * t62 + t38 * t48 - t39 * t49 + t192, t101 * t36 + t11 * t39 - t12 * t38 + t19 * t95 - t3 * t62 + t4 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t194, -0.2e1 * t175, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t101, -0.2e1 * t102, 0, -0.2e1 * t101 * t103 + 0.2e1 * t102 * t104, 0, 0, 0, 0, 0, 0, -0.2e1 * t212, 0.2e1 * t213, 0.2e1 * t241, 0.2e1 * t100 * t101 + 0.2e1 * t241 * t99, t85, t60, 0, t84, 0, 0, 0.2e1 * t224, 0.2e1 * t223, 0.2e1 * t178, 0.2e1 * t101 * t95 - 0.2e1 * t38 * t62 + 0.2e1 * t39 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86, 0, t154, 0, t64, t63, 0, 0, 0, 0, t59, 0, -t58, 0, -t26, -t147 (-t139 * t58 - t214 * t59) * pkin(3), t147 * t232 - t187 * t26, t52, t29, t54, -t52, t55, 0, t138 * t163 - t217, t140 * t163 + t25, t5, t130 * t26 + t5 * t128 + (-t138 * t27 + t140 * t28) * qJD(5), t15, t6, -t171, t16, t33, 0, t118 * t23 + t58 * t75 + t66 * t79 + t227, -t118 * t22 - t58 * t76 + t65 * t79 + t226, t22 * t75 - t23 * t76 + t48 * t65 - t49 * t66 + t192, t11 * t66 + t118 * t19 - t12 * t65 - t3 * t76 + t4 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t194, -t175, 0, 0, 0, 0, 0, 0, 0, 0, -t101, -t102, 0 (-t101 * t214 + t102 * t139) * pkin(3), 0, 0, 0, 0, 0, 0, -t212, t213, t242 + t241, t101 * t130 + t128 * t241 + t242 * t99, t85, t60, 0, t84, 0, 0, t208 + t224, -t209 + t223, t177 + t178, t101 * t118 - t38 * t76 + t39 * t75 + t61 * t66 - t62 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t243, t128 * t243, t85, t60, 0, t84, 0, 0, 0.2e1 * t208, -0.2e1 * t209, 0.2e1 * t177, -0.2e1 * t65 * t76 + 0.2e1 * t66 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58, t59, 0, t77, 0, 0, 0, 0, 0, 0, t55, -t54, -t203 * t59, t13 * t140 + t138 * t14, 0, 0, 0, 0, 0, 0, t33, t171, -t170 + t225, -t106 * t12 - t107 * t11 - t113 * t3 + t238 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106 * t62 - t107 * t61 - t113 * t38 + t238 * t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106 * t76 - t107 * t75 - t113 * t65 + t238 * t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t210 - 0.2e1 * t211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t219, t216, 0, t26, 0, 0, 0, 0, 0, 0, t23, -t22, 0, t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, 0, 0, 0, 0, 0, 0, t107, -t106, 0, t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t107, -t106, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t22, 0, -t23, t58, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, 0, -t107, 0, t39, t38, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, 0, -t107, 0, t66, t65, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t107, t106, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t1;