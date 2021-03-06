% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRPRRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPRRR8_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR8_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR8_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR8_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:05:30
% EndTime: 2019-03-09 14:05:47
% DurationCPUTime: 6.02s
% Computational Cost: add. (14278->397), mult. (33021->713), div. (0->0), fcn. (32519->10), ass. (0->177)
t119 = sin(pkin(11));
t120 = cos(pkin(11));
t233 = cos(qJ(4));
t222 = pkin(8) + qJ(3);
t235 = t233 * t222;
t160 = pkin(9) * t233 + t235;
t230 = sin(qJ(4));
t236 = t230 * t222;
t241 = -pkin(9) * t230 - t236;
t139 = -t119 * t160 + t120 * t241;
t140 = t119 * t241 + t120 * t160;
t229 = sin(qJ(5));
t232 = cos(qJ(5));
t242 = -t139 * t232 + t140 * t229;
t123 = cos(qJ(2));
t122 = sin(qJ(2));
t224 = t123 * pkin(2);
t165 = -t122 * t222 - pkin(1) - t224;
t225 = t119 * pkin(7);
t204 = pkin(3) + t225;
t148 = t120 * t165 - t123 * t204;
t211 = t120 * t123 * pkin(7);
t149 = t119 * t165 + t211;
t54 = t148 * t233 - t149 * t230;
t202 = t230 * t119;
t203 = t233 * t120;
t162 = t202 - t203;
t163 = t119 * t233 + t120 * t230;
t79 = -t162 * t229 + t163 * t232;
t193 = t230 * qJD(3);
t240 = -qJD(4) * t235 - t193;
t239 = -qJD(3) * t233 + qJD(4) * t236;
t100 = t163 * qJD(4);
t238 = 0.2e1 * t100;
t109 = qJD(4) * t202;
t170 = -qJD(4) * t203 + t109;
t237 = -0.2e1 * t170;
t46 = t139 * t229 + t140 * t232;
t55 = t148 * t230 + t149 * t233;
t234 = (t122 ^ 2 - t123 ^ 2) * qJD(2);
t64 = -t119 * t240 + t239 * t120;
t231 = cos(qJ(6));
t228 = pkin(2) * t122;
t121 = sin(qJ(6));
t227 = pkin(4) * t121;
t226 = t100 * pkin(4);
t114 = t122 * pkin(7);
t223 = t123 * pkin(5);
t171 = t162 * t122;
t130 = -t123 * pkin(4) + pkin(9) * t171 + t54;
t39 = t229 * t130;
t93 = t163 * t122;
t47 = -pkin(9) * t93 + t55;
t29 = t232 * t47 + t39;
t221 = t119 * t122;
t216 = t123 * qJD(2);
t112 = pkin(7) * t216;
t201 = t119 * t216;
t101 = pkin(3) * t201 + t112;
t102 = pkin(3) * t221 + t114;
t219 = qJD(3) * t123;
t218 = qJD(6) * t121;
t113 = t122 * qJD(2);
t217 = t122 * qJD(3);
t215 = -0.2e1 * pkin(1) * qJD(2);
t214 = -qJD(5) * t79 + t229 * t170;
t213 = t123 * t225;
t212 = t120 * t114;
t208 = pkin(4) * t113;
t207 = pkin(5) * t113;
t206 = pkin(5) * t218;
t176 = -t171 * t229 + t232 * t93;
t20 = -pkin(10) * t176 + t29;
t205 = t231 * t20;
t111 = -t120 * pkin(3) - pkin(2);
t200 = t119 * t217;
t199 = t120 * t216;
t198 = t120 * t217;
t197 = t122 * t216;
t196 = qJD(5) * t232;
t195 = qJD(6) * t231;
t192 = t229 * qJD(5);
t191 = -0.2e1 * t206;
t190 = 0.2e1 * t197;
t189 = pkin(4) * t196;
t188 = pkin(4) * t192;
t187 = pkin(5) * t195;
t186 = t119 * t199;
t185 = pkin(4) * t232 + pkin(5);
t158 = qJD(2) * t163;
t71 = -t122 * t170 + t123 * t158;
t58 = t71 * pkin(4) + t101;
t81 = t93 * pkin(4) + t102;
t184 = t231 * t229;
t115 = t119 ^ 2;
t116 = t120 ^ 2;
t182 = 0.2e1 * (t115 + t116) * qJD(3);
t181 = -0.2e1 * t234;
t40 = t232 * t130;
t28 = -t229 * t47 + t40;
t175 = -qJ(3) * t122 - t224;
t174 = -qJ(3) * t123 + t228;
t82 = -t198 + (pkin(7) * t221 + t120 * t174) * qJD(2);
t83 = -t200 + (t119 * t174 - t212) * qJD(2);
t173 = -t119 * t82 + t120 * t83;
t172 = -pkin(1) + t175;
t70 = t100 * t122 + t162 * t216;
t35 = qJD(5) * t176 + t229 * t71 + t232 * t70;
t169 = -t123 * t222 + t228;
t141 = -t198 + (t120 * t169 + t122 * t204) * qJD(2);
t143 = -t200 + (t119 * t169 - t212) * qJD(2);
t31 = -qJD(4) * t55 + t233 * t141 - t230 * t143;
t126 = t70 * pkin(9) + t208 + t31;
t30 = -qJD(4) * t54 - t230 * t141 - t233 * t143;
t138 = -t71 * pkin(9) - t30;
t9 = -qJD(5) * t39 + t126 * t232 - t138 * t229 - t196 * t47;
t124 = t35 * pkin(10) + t207 + t9;
t161 = t232 * t171;
t168 = -qJD(5) * t161 - t192 * t93 - t229 * t70 + t232 * t71;
t8 = -qJD(5) * t40 - t126 * t229 - t138 * t232 + t192 * t47;
t145 = -pkin(10) * t168 - t8;
t69 = -t229 * t93 - t161;
t19 = -pkin(10) * t69 - t223 + t28;
t1 = -t121 * t124 - t145 * t231 - t19 * t195 + t20 * t218;
t11 = t121 * t19 + t205;
t167 = t100 * t232 - t214;
t166 = t231 * t185;
t164 = t231 * t176;
t99 = t229 * t163;
t157 = qJD(5) * t99 + t170 * t232;
t153 = t232 * t162;
t42 = -t121 * t176 + t231 * t69;
t151 = t239 * t119;
t150 = t99 + t153;
t91 = pkin(4) * t162 + t111;
t77 = -qJD(6) * t166 - t231 * t189 + (qJD(6) * t229 + t192) * t227;
t147 = t231 * t150;
t53 = -t121 * t150 + t231 * t79;
t142 = -t121 * t145 + t124 * t231;
t137 = (qJD(5) + qJD(6)) * (-t121 * t232 - t184) * pkin(4);
t134 = qJD(5) * t153 + t100 * t229 + t157;
t2 = -qJD(6) * t11 + t142;
t133 = -t100 * pkin(9) - t64;
t132 = t109 * pkin(9) + (-qJD(4) * t160 - t193) * t120 + t151;
t23 = qJD(5) * t242 - t229 * t132 - t232 * t133;
t131 = pkin(10) * t167 + t23;
t129 = -t79 * pkin(10) - t242;
t128 = t121 * t129;
t127 = t231 * t129;
t24 = -qJD(5) * t46 + t232 * t132 - t229 * t133;
t125 = pkin(10) * t134 + t24;
t108 = -0.2e1 * t197;
t98 = pkin(4) * t184 + t121 * t185;
t97 = -t227 * t229 + t166;
t89 = t119 * t172 + t211;
t88 = t120 * t172 - t213;
t85 = -t119 * t236 + t120 * t235;
t84 = -t119 * t235 - t120 * t236;
t78 = t137 - t206;
t65 = t120 * t240 + t151;
t59 = pkin(5) * t150 + t91;
t52 = t121 * t79 + t147;
t51 = pkin(5) * t176 + t81;
t43 = pkin(5) * t167 + t226;
t41 = t121 * t69 + t164;
t37 = -pkin(10) * t150 + t46;
t27 = pkin(5) * t168 + t58;
t22 = qJD(6) * t53 - t121 * t134 + t167 * t231;
t21 = qJD(6) * t147 + t121 * t167 + t134 * t231 + t218 * t79;
t17 = t231 * t37 + t128;
t16 = -t121 * t37 + t127;
t13 = qJD(6) * t42 - t121 * t35 + t168 * t231;
t12 = qJD(6) * t164 + t121 * t168 + t218 * t69 + t231 * t35;
t10 = -t121 * t20 + t19 * t231;
t4 = -qJD(6) * t128 + t121 * t131 + t125 * t231 - t195 * t37;
t3 = -qJD(6) * t127 - t121 * t125 + t131 * t231 + t218 * t37;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t190, t181, 0, t108, 0, 0, t122 * t215, t123 * t215, 0, 0, t116 * t190, -0.4e1 * t122 * t186, 0.2e1 * t120 * t234, t115 * t190, t119 * t181, t108, -0.2e1 * t123 * t82 + 0.2e1 * (t88 + 0.2e1 * t213) * t113, 0.2e1 * t123 * t83 + 0.2e1 * (-t89 + 0.2e1 * t211) * t113, 0.2e1 * (-t119 * t83 - t120 * t82) * t122 + 0.2e1 * (-t119 * t89 - t120 * t88) * t216, 0.2e1 * pkin(7) ^ 2 * t197 + 0.2e1 * t82 * t88 + 0.2e1 * t83 * t89, 0.2e1 * t171 * t70, 0.2e1 * t171 * t71 + 0.2e1 * t70 * t93, -0.2e1 * t113 * t171 + 0.2e1 * t70 * t123, 0.2e1 * t93 * t71, -0.2e1 * t113 * t93 + 0.2e1 * t123 * t71, t108, 0.2e1 * t101 * t93 + 0.2e1 * t102 * t71 + 0.2e1 * t113 * t54 - 0.2e1 * t123 * t31, -0.2e1 * t101 * t171 - 0.2e1 * t102 * t70 - 0.2e1 * t113 * t55 - 0.2e1 * t30 * t123, 0.2e1 * t171 * t31 + 0.2e1 * t30 * t93 + 0.2e1 * t54 * t70 - 0.2e1 * t55 * t71, 0.2e1 * t101 * t102 - 0.2e1 * t30 * t55 + 0.2e1 * t31 * t54, -0.2e1 * t69 * t35, -0.2e1 * t168 * t69 + 0.2e1 * t176 * t35, 0.2e1 * t113 * t69 + 0.2e1 * t123 * t35, 0.2e1 * t176 * t168, -0.2e1 * t113 * t176 + 0.2e1 * t123 * t168, t108, 0.2e1 * t113 * t28 - 0.2e1 * t123 * t9 + 0.2e1 * t168 * t81 + 0.2e1 * t176 * t58, -0.2e1 * t113 * t29 - 0.2e1 * t123 * t8 - 0.2e1 * t35 * t81 + 0.2e1 * t58 * t69, -0.2e1 * t168 * t29 + 0.2e1 * t176 * t8 + 0.2e1 * t28 * t35 - 0.2e1 * t69 * t9, 0.2e1 * t28 * t9 - 0.2e1 * t29 * t8 + 0.2e1 * t58 * t81, -0.2e1 * t42 * t12, 0.2e1 * t12 * t41 - 0.2e1 * t13 * t42, 0.2e1 * t113 * t42 + 0.2e1 * t12 * t123, 0.2e1 * t41 * t13, -0.2e1 * t113 * t41 + 0.2e1 * t123 * t13, t108, 0.2e1 * t10 * t113 - 0.2e1 * t123 * t2 + 0.2e1 * t13 * t51 + 0.2e1 * t27 * t41, -0.2e1 * t1 * t123 - 0.2e1 * t11 * t113 - 0.2e1 * t12 * t51 + 0.2e1 * t27 * t42, 0.2e1 * t1 * t41 + 0.2e1 * t10 * t12 - 0.2e1 * t11 * t13 - 0.2e1 * t2 * t42, -0.2e1 * t1 * t11 + 0.2e1 * t10 * t2 + 0.2e1 * t27 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t216, 0, -t113, 0, -t112, pkin(7) * t113, 0, 0, t186 (-t115 + t116) * t216, t119 * t113, -t186, t120 * t113, 0, t119 * t219 + (t119 * t175 - t211) * qJD(2), t120 * t219 + (t120 * t175 + t213) * qJD(2), t173, -pkin(2) * t112 + (-t119 * t88 + t120 * t89) * qJD(3) + t173 * qJ(3), -t163 * t70 + t170 * t171, t100 * t171 + t162 * t70 - t163 * t71 + t170 * t93, t122 * t158 + t123 * t170, t100 * t93 + t162 * t71, t100 * t123 - t113 * t162, 0, t100 * t102 + t101 * t162 + t111 * t71 + t113 * t84 - t123 * t65, t101 * t163 - t102 * t170 - t111 * t70 - t113 * t85 - t64 * t123, -t55 * t100 + t162 * t30 - t163 * t31 + t170 * t54 + t171 * t65 + t64 * t93 + t84 * t70 - t85 * t71, t101 * t111 - t30 * t85 + t31 * t84 + t54 * t65 - t55 * t64, -t134 * t69 - t35 * t79, t134 * t176 + t150 * t35 - t167 * t69 - t168 * t79, t113 * t79 + t123 * t134, t150 * t168 + t167 * t176, -t113 * t150 + t123 * t167, 0, -t113 * t242 - t24 * t123 + t150 * t58 + t167 * t81 + t168 * t91 + t176 * t226, -t113 * t46 - t23 * t123 - t134 * t81 + t226 * t69 - t91 * t35 + t58 * t79, t134 * t28 + t150 * t8 - t167 * t29 - t168 * t46 + t176 * t23 - t24 * t69 - t242 * t35 - t9 * t79, t226 * t81 - t23 * t29 + t24 * t28 - t242 * t9 - t46 * t8 + t58 * t91, -t12 * t53 - t21 * t42, t12 * t52 - t13 * t53 + t21 * t41 - t22 * t42, t113 * t53 + t123 * t21, t13 * t52 + t22 * t41, -t113 * t52 + t123 * t22, 0, t113 * t16 - t123 * t4 + t13 * t59 + t22 * t51 + t27 * t52 + t41 * t43, -t113 * t17 - t12 * t59 - t123 * t3 - t21 * t51 + t27 * t53 + t42 * t43, t1 * t52 + t10 * t21 - t11 * t22 + t12 * t16 - t13 * t17 - t2 * t53 + t3 * t41 - t4 * t42, -t1 * t17 + t10 * t4 - t11 * t3 + t16 * t2 + t27 * t59 + t43 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t182, qJ(3) * t182, t163 * t237, -0.2e1 * t100 * t163 + 0.2e1 * t162 * t170, 0, t162 * t238, 0, 0, t111 * t238, t111 * t237, -0.2e1 * t85 * t100 + 0.2e1 * t162 * t64 - 0.2e1 * t163 * t65 + 0.2e1 * t170 * t84, -0.2e1 * t64 * t85 + 0.2e1 * t65 * t84, -0.2e1 * t79 * t134, 0.2e1 * t134 * t150 - 0.2e1 * t167 * t79, 0, 0.2e1 * t150 * t167, 0, 0, 0.2e1 * t150 * t226 + 0.2e1 * t167 * t91, -0.2e1 * t134 * t91 + 0.2e1 * t226 * t79, -0.2e1 * t134 * t242 + 0.2e1 * t150 * t23 - 0.2e1 * t167 * t46 - 0.2e1 * t24 * t79, 0.2e1 * t226 * t91 - 0.2e1 * t23 * t46 - 0.2e1 * t24 * t242, -0.2e1 * t53 * t21, 0.2e1 * t21 * t52 - 0.2e1 * t22 * t53, 0, 0.2e1 * t52 * t22, 0, 0, 0.2e1 * t22 * t59 + 0.2e1 * t43 * t52, -0.2e1 * t21 * t59 + 0.2e1 * t43 * t53, 0.2e1 * t16 * t21 - 0.2e1 * t17 * t22 + 0.2e1 * t3 * t52 - 0.2e1 * t4 * t53, 0.2e1 * t16 * t4 - 0.2e1 * t17 * t3 + 0.2e1 * t43 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t201, t199, 0, t112, 0, 0, 0, 0, 0, 0, t71, -t70, 0, t101, 0, 0, 0, 0, 0, 0, t168, -t35, 0, t58, 0, 0, 0, 0, 0, 0, t13, -t12, 0, t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, -t170, 0, 0, 0, 0, 0, 0, 0, 0, t167, -t134, 0, t226, 0, 0, 0, 0, 0, 0, t22, -t21, 0, t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, 0, -t71, t113, t31, t30, 0, 0, 0, 0, -t35, 0, -t168, t113, t123 * t188 + t208 * t232 + t9 (-t113 * t229 + t123 * t196) * pkin(4) + t8 (-t229 * t168 + t232 * t35 + (-t176 * t232 + t229 * t69) * qJD(5)) * pkin(4) (-t229 * t8 + t232 * t9 + (-t229 * t28 + t232 * t29) * qJD(5)) * pkin(4), 0, 0, -t12, 0, -t13, t113, t113 * t97 - t78 * t123 + t2, -t113 * t98 - t123 * t77 + t1, t12 * t97 - t13 * t98 + t41 * t77 - t42 * t78, -t1 * t98 + t10 * t78 - t11 * t77 + t2 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t170, 0, -t100, 0, t65, t64, 0, 0, 0, 0, -t134, 0, -t167, 0, t24, t23 (t229 * t214 + t232 * t157 + (t229 * t79 - t232 * t99) * qJD(5)) * pkin(4) (-t229 * t23 + t232 * t24 + (t229 * t242 + t232 * t46) * qJD(5)) * pkin(4), 0, 0, -t21, 0, -t22, 0, t4, t3, t21 * t97 - t22 * t98 + t52 * t77 - t53 * t78, t16 * t78 - t17 * t77 - t3 * t98 + t4 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t188, -0.2e1 * t189, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t78, 0.2e1 * t77, 0, -0.2e1 * t77 * t98 + 0.2e1 * t78 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35, 0, -t168, t113, t9, t8, 0, 0, 0, 0, -t12, 0, -t13, t113, t231 * t207 + (-t205 + (-t19 + t223) * t121) * qJD(6) + t142 (-t113 * t121 + t123 * t195) * pkin(5) + t1 (t231 * t12 - t121 * t13 + (t121 * t42 - t231 * t41) * qJD(6)) * pkin(5) (t231 * t2 - t1 * t121 + (-t10 * t121 + t11 * t231) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t134, 0, -t167, 0, t24, t23, 0, 0, 0, 0, -t21, 0, -t22, 0, t4, t3 (t231 * t21 - t121 * t22 + (t121 * t53 - t231 * t52) * qJD(6)) * pkin(5) (t231 * t4 - t121 * t3 + (-t121 * t16 + t17 * t231) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, -t189, 0, 0, 0, 0, 0, 0, 0, 0, t137 + t191, -t187 + t77, 0 (t231 * t78 - t121 * t77 + (-t121 * t97 + t231 * t98) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t191, -0.2e1 * t187, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, 0, -t13, t113, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t21, 0, -t22, 0, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78, t77, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t206, -t187, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;
