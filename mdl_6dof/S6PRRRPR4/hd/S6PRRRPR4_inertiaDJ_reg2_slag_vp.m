% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRRRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1,theta5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRRRPR4_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR4_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR4_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR4_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:20:28
% EndTime: 2019-03-08 23:20:42
% DurationCPUTime: 4.88s
% Computational Cost: add. (5715->395), mult. (14840->724), div. (0->0), fcn. (14193->12), ass. (0->178)
t124 = sin(qJ(4));
t127 = cos(qJ(4));
t222 = sin(pkin(12));
t223 = cos(pkin(12));
t160 = t222 * t124 - t223 * t127;
t176 = qJD(4) * t222;
t177 = qJD(4) * t223;
t82 = -t124 * t176 + t127 * t177;
t87 = t223 * t124 + t222 * t127;
t125 = sin(qJ(3));
t128 = cos(qJ(3));
t204 = t128 * qJD(3);
t207 = qJD(4) * t127;
t236 = t124 * t204 + t125 * t207;
t235 = -0.4e1 * t125;
t214 = t124 * t177 + t127 * t176;
t170 = t223 * pkin(4) + pkin(5);
t198 = t222 * pkin(4);
t231 = sin(qJ(6));
t232 = cos(qJ(6));
t79 = t232 * t170 - t231 * t198;
t187 = t127 * t204;
t208 = qJD(4) * t124;
t234 = -t125 * t208 + t187;
t116 = t125 * qJD(3);
t206 = qJD(4) * t128;
t194 = t127 * t206;
t233 = t124 * t116 - t194;
t118 = t124 ^ 2;
t120 = t127 ^ 2;
t213 = t118 - t120;
t175 = qJD(4) * t213;
t230 = t124 * pkin(8);
t229 = t125 * pkin(4);
t228 = t127 * pkin(3);
t227 = t128 * pkin(3);
t122 = sin(pkin(6));
t129 = cos(qJ(2));
t210 = qJD(2) * t129;
t192 = t122 * t210;
t123 = cos(pkin(6));
t126 = sin(qJ(2));
t220 = t122 * t126;
t84 = t123 * t125 + t128 * t220;
t58 = t84 * qJD(3) + t125 * t192;
t83 = -t123 * t128 + t125 * t220;
t41 = t83 * t58;
t226 = -qJ(5) - pkin(9);
t199 = -pkin(4) - t230;
t217 = t125 * t127;
t165 = -t125 * pkin(9) - t227;
t158 = -pkin(2) + t165;
t89 = t127 * t158;
t54 = -qJ(5) * t217 + t199 * t128 + t89;
t218 = t124 * t125;
t216 = t127 * t128;
t110 = pkin(8) * t216;
t70 = t124 * t158 + t110;
t61 = -qJ(5) * t218 + t70;
t32 = t222 * t54 + t223 * t61;
t153 = qJD(4) * t158;
t164 = pkin(3) * t125 - pkin(9) * t128;
t154 = t164 * qJD(3);
t225 = -t124 * t154 - t127 * t153;
t63 = t160 * t226;
t224 = t58 * t125;
t221 = qJD(3) * t83;
t219 = t122 * t129;
t215 = t87 * t125;
t92 = pkin(4) * t218 + t125 * pkin(8);
t119 = t125 ^ 2;
t212 = -t128 ^ 2 + t119;
t211 = qJD(2) * t126;
t209 = qJD(3) * t127;
t205 = t127 * qJD(5);
t203 = -0.2e1 * pkin(2) * qJD(3);
t202 = -0.2e1 * pkin(3) * qJD(4);
t201 = t128 * t230;
t115 = pkin(4) * t208;
t114 = pkin(8) * t204;
t200 = t83 * t208;
t67 = t236 * pkin(4) + t114;
t113 = -t127 * pkin(4) - pkin(3);
t196 = t124 * t206;
t193 = t122 * t211;
t189 = t124 * t207;
t188 = t125 * t204;
t186 = t125 * t205;
t185 = qJD(6) * t232;
t184 = qJD(6) * t231;
t183 = qJD(4) * t226;
t179 = qJD(3) * t223;
t178 = qJD(3) * t222;
t174 = t212 * qJD(3);
t173 = 0.2e1 * t188;
t172 = t124 * t187;
t171 = t119 * t189;
t169 = t128 * t179;
t168 = t128 * t178;
t163 = t232 * t215;
t155 = t124 * t219 - t84 * t127;
t59 = -t84 * t124 - t127 * t219;
t162 = t124 * t155 - t127 * t59;
t69 = t89 - t201;
t161 = -t124 * t70 - t127 * t69;
t157 = t58 * t124 + t83 * t207;
t156 = -t58 * t127 + t200;
t147 = -t124 * t169 - t82 * t125 - t127 * t168;
t133 = -t186 + (-t110 + (-t226 * t125 + pkin(2) + t227) * t124) * qJD(4) + (t226 * t216 + (-t199 + t228) * t125) * qJD(3);
t138 = (-pkin(8) * qJD(3) - qJ(5) * qJD(4)) * t217 + (-qJD(5) * t125 + (-pkin(8) * qJD(4) - qJ(5) * qJD(3)) * t128) * t124 - t225;
t136 = t223 * t138;
t16 = t222 * t133 + t136;
t130 = t147 * pkin(10) + t16;
t135 = t222 * t138;
t14 = t223 * t133 - t135;
t47 = t124 * t168 + t214 * t125 - t127 * t169;
t131 = pkin(5) * t116 + t47 * pkin(10) + t14;
t31 = -t222 * t61 + t223 * t54;
t77 = t160 * t125;
t143 = -t128 * pkin(5) + t77 * pkin(10) + t31;
t141 = t232 * t143;
t25 = -t215 * pkin(10) + t32;
t1 = -qJD(6) * t141 - t232 * t130 - t231 * t131 + t25 * t184;
t34 = t155 * t222 + t223 * t59;
t35 = -t155 * t223 + t222 * t59;
t19 = t231 * t34 + t232 * t35;
t151 = t127 * t116 + t196;
t150 = t232 * t160;
t149 = -t124 * qJD(5) + t127 * t183;
t148 = t124 * t183 + t205;
t46 = -t231 * t215 - t232 * t77;
t53 = -t231 * t160 + t232 * t87;
t57 = t128 * t192 - t221;
t28 = t155 * qJD(4) - t57 * t124 + t127 * t193;
t29 = t59 * qJD(4) + t124 * t193 + t57 * t127;
t146 = t162 * qJD(4) - t28 * t124 + t29 * t127;
t38 = t151 * pkin(8) + t225;
t39 = -t70 * qJD(4) + (pkin(8) * t218 + t127 * t164) * qJD(3);
t145 = t161 * qJD(4) - t39 * t124 - t38 * t127;
t144 = t224 + t57 * t128 + (-t125 * t84 + t128 * t83) * qJD(3);
t62 = t87 * t226;
t80 = t231 * t170 + t232 * t198;
t142 = -t87 * pkin(10) + t62;
t140 = t232 * t142;
t139 = t231 * t142;
t11 = t231 * t143 + t232 * t25;
t49 = t223 * t148 + t222 * t149;
t48 = -t222 * t148 + t223 * t149;
t137 = -t82 * pkin(10) + t48;
t134 = -t214 * pkin(10) + t49;
t132 = t233 * pkin(8) - t234 * qJ(5) - t124 * t153 + t127 * t154 - t186;
t2 = -t11 * qJD(6) - t231 * t130 + t232 * t131;
t105 = -0.2e1 * t188;
t73 = t80 * qJD(6);
t72 = t79 * qJD(6);
t71 = t160 * pkin(5) + t113;
t65 = t214 * pkin(5) + t115;
t64 = t125 * t175 - t172;
t55 = t215 * pkin(5) + t92;
t52 = t231 * t87 + t150;
t50 = -t160 * pkin(10) + t63;
t45 = -t231 * t77 + t163;
t33 = -t147 * pkin(5) + t67;
t27 = t53 * qJD(6) + t232 * t214 + t231 * t82;
t26 = qJD(6) * t150 + t87 * t184 + t231 * t214 - t232 * t82;
t24 = t232 * t50 + t139;
t23 = -t231 * t50 + t140;
t21 = t46 * qJD(6) - t232 * t147 - t231 * t47;
t20 = qJD(6) * t163 - t231 * t147 - t77 * t184 + t232 * t47;
t18 = -t231 * t35 + t232 * t34;
t17 = t222 * t28 + t223 * t29;
t15 = -t222 * t29 + t223 * t28;
t10 = -t231 * t25 + t141;
t6 = -qJD(6) * t139 - t231 * t134 + t232 * t137 - t50 * t185;
t5 = -qJD(6) * t140 - t232 * t134 - t231 * t137 + t50 * t184;
t4 = -t19 * qJD(6) + t232 * t15 - t231 * t17;
t3 = -t231 * t15 - t232 * t17 + t35 * t184 - t34 * t185;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t122 ^ 2 * t126 * t210 + 0.2e1 * t84 * t57 + 0.2e1 * t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t155 * t29 + 0.2e1 * t59 * t28 + 0.2e1 * t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t34 * t15 + 0.2e1 * t35 * t17 + 0.2e1 * t41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t18 * t4 - 0.2e1 * t19 * t3 + 0.2e1 * t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t193, -t192, 0, 0, 0, 0, 0, 0, 0, 0 (-t129 * t116 - t128 * t211) * t122 (t125 * t211 - t129 * t204) * t122, t144, -pkin(2) * t193 + pkin(8) * t144, 0, 0, 0, 0, 0, 0 (t124 * t221 - t28) * t128 + (qJD(3) * t59 + t157) * t125 (t83 * t209 + t29) * t128 + (qJD(3) * t155 - t156) * t125, t162 * t204 + (-t124 * t29 - t127 * t28 + (t124 * t59 + t127 * t155) * qJD(4)) * t125, t28 * t69 + t29 * t70 + t155 * t38 + t59 * t39 + (t83 * t204 + t224) * pkin(8), 0, 0, 0, 0, 0, 0, t34 * t116 - t15 * t128 - t83 * t147 + t58 * t215, -t35 * t116 + t17 * t128 - t83 * t47 - t58 * t77, t35 * t147 + t15 * t77 - t17 * t215 + t34 * t47, t34 * t14 + t15 * t31 + t35 * t16 + t17 * t32 + t58 * t92 + t83 * t67, 0, 0, 0, 0, 0, 0, t116 * t18 - t4 * t128 + t83 * t21 + t58 * t45, -t116 * t19 - t3 * t128 - t83 * t20 + t58 * t46, t18 * t20 - t19 * t21 + t3 * t45 - t4 * t46, -t19 * t1 + t4 * t10 - t3 * t11 + t18 * t2 + t83 * t33 + t58 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, -0.2e1 * t174, 0, t105, 0, 0, t125 * t203, t128 * t203, 0, 0, 0.2e1 * t120 * t188 - 0.2e1 * t171, 0.2e1 * t119 * t175 + t172 * t235, 0.2e1 * t125 * t196 + 0.2e1 * t212 * t209, 0.2e1 * t118 * t188 + 0.2e1 * t171, -0.2e1 * t124 * t174 + 0.2e1 * t125 * t194, t105, 0.2e1 * t69 * t116 - 0.2e1 * t39 * t128 + 0.2e1 * (t119 * t207 + t124 * t173) * pkin(8), -0.2e1 * t70 * t116 - 0.2e1 * t38 * t128 + 0.2e1 * (-t119 * t208 + t127 * t173) * pkin(8), 0.2e1 * t161 * t204 + 0.2e1 * (t124 * t38 - t127 * t39 + (t124 * t69 - t127 * t70) * qJD(4)) * t125, 0.2e1 * pkin(8) ^ 2 * t188 - 0.2e1 * t70 * t38 + 0.2e1 * t69 * t39, 0.2e1 * t77 * t47, -0.2e1 * t77 * t147 + 0.2e1 * t47 * t215, -0.2e1 * t77 * t116 + 0.2e1 * t47 * t128, -0.2e1 * t215 * t147, -0.2e1 * t215 * t116 - 0.2e1 * t147 * t128, t105, 0.2e1 * t31 * t116 - 0.2e1 * t14 * t128 - 0.2e1 * t92 * t147 + 0.2e1 * t67 * t215, -0.2e1 * t32 * t116 + 0.2e1 * t16 * t128 - 0.2e1 * t92 * t47 - 0.2e1 * t67 * t77, 0.2e1 * t14 * t77 + 0.2e1 * t32 * t147 - 0.2e1 * t16 * t215 + 0.2e1 * t31 * t47, 0.2e1 * t31 * t14 + 0.2e1 * t32 * t16 + 0.2e1 * t92 * t67, -0.2e1 * t46 * t20, 0.2e1 * t20 * t45 - 0.2e1 * t46 * t21, 0.2e1 * t116 * t46 + 0.2e1 * t20 * t128, 0.2e1 * t45 * t21, -0.2e1 * t116 * t45 + 0.2e1 * t21 * t128, t105, 0.2e1 * t10 * t116 - 0.2e1 * t2 * t128 + 0.2e1 * t55 * t21 + 0.2e1 * t33 * t45, -0.2e1 * t1 * t128 - 0.2e1 * t11 * t116 - 0.2e1 * t55 * t20 + 0.2e1 * t33 * t46, 0.2e1 * t1 * t45 + 0.2e1 * t10 * t20 - 0.2e1 * t11 * t21 - 0.2e1 * t2 * t46, -0.2e1 * t11 * t1 + 0.2e1 * t10 * t2 + 0.2e1 * t55 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t58, -t57, 0, 0, 0, 0, 0, 0, 0, 0, t156, t157, t146, -t58 * pkin(3) + pkin(9) * t146, 0, 0, 0, 0, 0, 0, t58 * t160 + t83 * t214, t58 * t87 + t83 * t82, -t15 * t87 - t17 * t160 - t35 * t214 - t34 * t82, pkin(4) * t200 + t58 * t113 + t15 * t62 + t17 * t63 + t34 * t48 + t35 * t49, 0, 0, 0, 0, 0, 0, t83 * t27 + t58 * t52, -t83 * t26 + t58 * t53, t18 * t26 - t19 * t27 + t3 * t52 - t4 * t53, t18 * t6 - t19 * t5 + t4 * t23 - t3 * t24 + t58 * t71 + t83 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t204, 0, -t116, 0, -t114, pkin(8) * t116, 0, 0, -t64, t189 * t235 - t213 * t204, t233, t64, t151, 0 (pkin(9) * t216 + (-t228 + t230) * t125) * qJD(4) + (t165 * t124 - t110) * qJD(3) (pkin(8) * t217 + t164 * t124) * qJD(4) + (t165 * t127 + t201) * qJD(3), t145, -pkin(3) * t114 + pkin(9) * t145, -t47 * t87 - t77 * t82, t87 * t147 + t47 * t160 + t77 * t214 - t82 * t215, t87 * t116 - t82 * t128, -t147 * t160 + t215 * t214, -t160 * t116 + t214 * t128, 0, -t113 * t147 + t215 * t115 + t62 * t116 - t48 * t128 + t67 * t160 + t92 * t214, -t113 * t47 - t77 * t115 - t63 * t116 + t49 * t128 + t67 * t87 + t92 * t82, -t14 * t87 + t63 * t147 - t16 * t160 - t32 * t214 - t49 * t215 - t31 * t82 + t62 * t47 + t48 * t77, t67 * t113 + t115 * t92 + t14 * t62 + t16 * t63 + t31 * t48 + t32 * t49, -t20 * t53 - t46 * t26, t20 * t52 - t53 * t21 + t26 * t45 - t46 * t27, t116 * t53 + t26 * t128, t21 * t52 + t45 * t27, -t116 * t52 + t27 * t128, 0, t116 * t23 - t6 * t128 + t71 * t21 + t55 * t27 + t33 * t52 + t65 * t45, -t116 * t24 - t5 * t128 - t71 * t20 - t55 * t26 + t33 * t53 + t65 * t46, t1 * t52 + t10 * t26 - t11 * t27 - t2 * t53 + t23 * t20 - t24 * t21 + t5 * t45 - t6 * t46, -t1 * t24 + t10 * t6 - t11 * t5 + t2 * t23 + t33 * t71 + t55 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t189, -0.2e1 * t175, 0, -0.2e1 * t189, 0, 0, t124 * t202, t127 * t202, 0, 0, 0.2e1 * t87 * t82, -0.2e1 * t82 * t160 - 0.2e1 * t87 * t214, 0, 0.2e1 * t160 * t214, 0, 0, 0.2e1 * t113 * t214 + 0.2e1 * t160 * t115, 0.2e1 * t113 * t82 + 0.2e1 * t87 * t115, -0.2e1 * t49 * t160 - 0.2e1 * t63 * t214 - 0.2e1 * t48 * t87 - 0.2e1 * t62 * t82, 0.2e1 * t113 * t115 + 0.2e1 * t62 * t48 + 0.2e1 * t63 * t49, -0.2e1 * t53 * t26, 0.2e1 * t26 * t52 - 0.2e1 * t53 * t27, 0, 0.2e1 * t52 * t27, 0, 0, 0.2e1 * t71 * t27 + 0.2e1 * t65 * t52, -0.2e1 * t71 * t26 + 0.2e1 * t65 * t53, 0.2e1 * t23 * t26 - 0.2e1 * t24 * t27 + 0.2e1 * t5 * t52 - 0.2e1 * t6 * t53, 0.2e1 * t23 * t6 - 0.2e1 * t24 * t5 + 0.2e1 * t71 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28, -t29, 0, 0, 0, 0, 0, 0, 0, 0, t15, -t17, 0 (t223 * t15 + t222 * t17) * pkin(4), 0, 0, 0, 0, 0, 0, t4, t3, 0, -t18 * t73 + t19 * t72 - t3 * t80 + t4 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t234, 0, -t236, t116, t39, t38, 0, 0, 0, 0, -t47, 0, t147, t116, t223 * t132 + 0.2e1 * t179 * t229 - t135, -t222 * t132 - 0.2e1 * t178 * t229 - t136 (t222 * t147 + t223 * t47) * pkin(4) (t223 * t14 + t222 * t16) * pkin(4), 0, 0, -t20, 0, -t21, t116, t116 * t79 + t73 * t128 + t2, -t116 * t80 + t72 * t128 + t1, t79 * t20 - t80 * t21 - t72 * t45 + t73 * t46, -t1 * t80 - t10 * t73 + t11 * t72 + t2 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t207, 0, -t208, 0, -pkin(9) * t207, pkin(9) * t208, 0, 0, 0, 0, t82, 0, -t214, 0, t48, -t49 (-t222 * t214 - t223 * t82) * pkin(4) (t222 * t49 + t223 * t48) * pkin(4), 0, 0, -t26, 0, -t27, 0, t6, t5, t79 * t26 - t80 * t27 - t72 * t52 + t73 * t53, -t23 * t73 + t24 * t72 - t5 * t80 + t6 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t73, -0.2e1 * t72, 0, 0.2e1 * t80 * t72 - 0.2e1 * t79 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t147, -t47, 0, t67, 0, 0, 0, 0, 0, 0, t21, -t20, 0, t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t214, t82, 0, t115, 0, 0, 0, 0, 0, 0, t27, -t26, 0, t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t20, 0, -t21, t116, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t26, 0, -t27, 0, t6, t5, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, -t72, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t7;
