% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RRPRR16
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RRPRR16_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR16_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR16_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR16_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:47:26
% EndTime: 2019-12-31 20:47:37
% DurationCPUTime: 3.56s
% Computational Cost: add. (2857->304), mult. (7462->574), div. (0->0), fcn. (6657->8), ass. (0->188)
t74 = cos(qJ(4));
t169 = qJD(3) * t74;
t72 = sin(qJ(2));
t198 = pkin(3) + pkin(7);
t71 = sin(qJ(4));
t91 = t71 * qJ(3) + t74 * t198;
t199 = pkin(2) + pkin(8);
t75 = cos(qJ(2));
t113 = t199 * t75 + pkin(1);
t99 = t71 * t113;
t79 = t91 * t72 + t99;
t77 = -t79 * qJD(4) + t72 * t169;
t170 = qJD(3) * t72;
t90 = t74 * qJ(3) - t71 * t198;
t209 = -(t74 * t113 + t90 * t72) * qJD(4) - t71 * t170;
t69 = cos(pkin(5));
t196 = pkin(1) * t75;
t127 = -pkin(2) - t196;
t122 = pkin(8) - t127;
t101 = qJD(4) * t122;
t172 = qJD(2) * t72;
t145 = pkin(1) * t172;
t85 = -t74 * t101 + t71 * t145;
t208 = t85 * t69;
t207 = (-t71 * t101 - t74 * t145) * t69;
t197 = pkin(1) * t72;
t125 = qJ(3) + t197;
t206 = t125 * t69;
t110 = pkin(4) * t74 + pkin(9) * t71;
t73 = cos(qJ(5));
t205 = t73 * t110;
t68 = sin(pkin(5));
t185 = t68 * t72;
t204 = t198 * t185;
t153 = pkin(7) * t185;
t154 = t69 * t196;
t48 = -t153 + t154;
t39 = t48 * qJD(2);
t70 = sin(qJ(5));
t64 = t70 ^ 2;
t66 = t73 ^ 2;
t177 = t64 - t66;
t124 = qJD(5) * t177;
t201 = 0.2e1 * t68;
t200 = 0.2e1 * qJD(3);
t195 = t71 * pkin(4);
t134 = t68 * t172;
t184 = t68 * t75;
t42 = t74 * t184 + t69 * t71;
t166 = qJD(4) * t42;
t22 = -t71 * t134 + t166;
t149 = t71 * t184;
t43 = t69 * t74 - t149;
t25 = t70 * t185 + t43 * t73;
t171 = qJD(2) * t75;
t61 = t68 * t171;
t10 = t25 * qJD(5) - t22 * t70 - t73 * t61;
t194 = t10 * t73;
t160 = qJD(5) * t73;
t161 = qJD(5) * t70;
t11 = -t22 * t73 - t43 * t161 + (t72 * t160 + t70 * t171) * t68;
t193 = t11 * t70;
t163 = qJD(4) * t74;
t23 = -qJD(4) * t149 - t74 * t134 + t69 * t163;
t192 = t23 * t71;
t24 = -t73 * t185 + t43 * t70;
t191 = t24 * t70;
t190 = t24 * t73;
t189 = t25 * t70;
t188 = t25 * t73;
t152 = pkin(7) * t184;
t49 = t69 * t197 + t152;
t40 = t49 * qJD(2);
t187 = t40 * t69;
t186 = t40 * t72;
t183 = t70 * t74;
t182 = t71 * t199;
t102 = t122 * t69;
t173 = qJ(3) * t72;
t16 = t74 * (-t113 - t173) * t68 + t71 * (-t102 + t204);
t13 = pkin(9) * t185 + t16;
t181 = t73 * t13;
t180 = t73 * t74;
t179 = t74 * t22;
t178 = t74 * t199;
t176 = t64 + t66;
t65 = t71 ^ 2;
t67 = t74 ^ 2;
t175 = t65 - t67;
t174 = t65 + t67;
t168 = qJD(4) * t24;
t167 = qJD(4) * t25;
t165 = qJD(4) * t71;
t164 = qJD(4) * t73;
t162 = qJD(4) * t199;
t159 = qJD(5) * t74;
t158 = qJD(5) * t199;
t157 = t69 * qJD(3);
t156 = qJ(3) * qJD(4);
t155 = 0.2e1 * t42 * t23;
t151 = -0.2e1 * pkin(4) * qJD(5);
t150 = t199 * t185;
t148 = t70 * t182;
t147 = t70 * t178;
t146 = t73 * t182;
t144 = t199 * t72;
t143 = t198 * t75;
t63 = t68 ^ 2;
t142 = t63 * t171;
t141 = t70 * t166;
t140 = t42 * t164;
t139 = t71 * t162;
t138 = t74 * t162;
t137 = t70 * t159;
t136 = t70 * t158;
t135 = t73 * t159;
t133 = t70 * t160;
t131 = t71 * t164;
t130 = t73 * t163;
t128 = t71 * t163;
t126 = t176 * t74;
t123 = t175 * qJD(4);
t60 = 0.2e1 * t128;
t121 = t71 * t144;
t120 = t74 * t144;
t119 = t199 * t61;
t118 = t72 * t142;
t117 = t69 * t134;
t116 = t69 * t61;
t115 = t70 * t131;
t114 = t67 * t133;
t112 = t23 * pkin(4) + t22 * pkin(9);
t111 = t42 * pkin(4) - t43 * pkin(9);
t109 = -t74 * pkin(9) + t195;
t26 = t68 * t143 + t206;
t80 = t111 + t26;
t78 = t73 * t80;
t5 = -t70 * t13 + t78;
t6 = t70 * t80 + t181;
t108 = t5 * t73 + t6 * t70;
t107 = t5 * t70 - t6 * t73;
t106 = -pkin(2) * t75 - t173;
t105 = t189 + t190;
t100 = qJ(3) + t109;
t88 = t73 * t100;
t30 = t88 + t148;
t31 = t70 * t100 - t146;
t104 = t30 * t73 + t31 * t70;
t103 = t30 * t70 - t31 * t73;
t89 = -pkin(4) - t91;
t92 = t74 * t102;
t12 = t92 + (t89 * t72 - t99) * t68;
t4 = t207 + ((t89 * t75 + t121) * qJD(2) + t209) * t68;
t97 = t12 * t160 + t4 * t70;
t96 = t12 * t161 - t4 * t73;
t95 = t42 * t163 + t192;
t94 = t42 * t160 + t70 * t23;
t93 = t42 * t161 - t73 * t23;
t45 = -t131 - t137;
t47 = t70 * t165 - t135;
t87 = (pkin(9) - t90) * t75;
t20 = t157 + (t154 - t204) * qJD(2);
t1 = t13 * t161 - qJD(5) * t78 - t73 * (t208 + ((t120 + t87) * qJD(2) - t77) * t68) - t70 * (t112 + t20);
t2 = t73 * t112 + (-t70 * t111 - t181) * qJD(5) + (t73 * (pkin(1) * t171 + qJD(3)) + (-qJD(5) * t125 - t85) * t70) * t69 + ((-qJD(5) * t143 + t77) * t70 + (-t70 * t87 + (-t199 * t183 - t73 * t198) * t72) * qJD(2)) * t68;
t84 = -t108 * qJD(5) - t1 * t73 - t2 * t70;
t15 = t79 * t68 - t92;
t7 = -t208 + ((t90 * t75 - t120) * qJD(2) + t77) * t68;
t8 = -t207 + ((t91 * t75 - t121) * qJD(2) - t209) * t68;
t83 = -t7 * t71 + t8 * t74 + (-t15 * t71 + t16 * t74) * qJD(4);
t82 = -t194 + t193 + (t188 + t191) * qJD(5);
t17 = -t71 * t136 - t70 * (t110 * qJD(4) + qJD(3)) - qJD(5) * t88 + t199 * t130;
t18 = t73 * qJD(3) - t31 * qJD(5) + (t147 + t205) * qJD(4);
t81 = -t104 * qJD(5) - t17 * t73 - t18 * t70;
t62 = qJ(3) * t200;
t52 = -0.2e1 * t118;
t51 = 0.2e1 * t118;
t46 = t71 * t160 + t70 * t163;
t44 = t71 * t161 - t130;
t38 = 0.2e1 * (-t72 ^ 2 + t75 ^ 2) * t63 * qJD(2);
t37 = t127 * t69 + t153;
t36 = (-pkin(1) + t106) * t68;
t35 = -t152 - t206;
t33 = (-t72 * t165 + t74 * t171) * t68;
t32 = (-t72 * t163 - t71 * t171) * t68;
t29 = -t39 - t157;
t28 = t74 * t124 + t115;
t27 = (-t170 + (pkin(2) * t72 - qJ(3) * t75) * qJD(2)) * t68;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, t38, 0.2e1 * t116, t52, -0.2e1 * t117, 0, -0.2e1 * t63 * t145 - 0.2e1 * t187, -0.2e1 * pkin(1) * t142 - 0.2e1 * t39 * t69, (t39 * t75 + t186 + (-t48 * t75 - t49 * t72) * qJD(2)) * t201, 0.2e1 * t49 * t39 - 0.2e1 * t48 * t40, 0, -0.2e1 * t116, 0.2e1 * t117, t51, t38, t52, (-t29 * t75 + t186 + (t35 * t72 + t37 * t75) * qJD(2)) * t201, 0.2e1 * t187 + 0.2e1 * (-t36 * t172 + t27 * t75) * t68, -0.2e1 * t29 * t69 + 0.2e1 * (-t36 * t171 - t27 * t72) * t68, 0.2e1 * t36 * t27 + 0.2e1 * t35 * t29 + 0.2e1 * t37 * t40, -0.2e1 * t43 * t22, 0.2e1 * t22 * t42 - 0.2e1 * t43 * t23, (t43 * t171 - t22 * t72) * t201, t155, (-t42 * t171 - t23 * t72) * t201, t51, 0.2e1 * t20 * t42 + 0.2e1 * t26 * t23 + 0.2e1 * (t15 * t171 + t72 * t8) * t68, 0.2e1 * t20 * t43 - 0.2e1 * t26 * t22 + 0.2e1 * (-t16 * t171 + t7 * t72) * t68, 0.2e1 * t15 * t22 - 0.2e1 * t16 * t23 + 0.2e1 * t7 * t42 - 0.2e1 * t8 * t43, 0.2e1 * t15 * t8 - 0.2e1 * t16 * t7 + 0.2e1 * t26 * t20, 0.2e1 * t25 * t11, -0.2e1 * t25 * t10 - 0.2e1 * t11 * t24, 0.2e1 * t11 * t42 + 0.2e1 * t25 * t23, 0.2e1 * t24 * t10, -0.2e1 * t10 * t42 - 0.2e1 * t24 * t23, t155, 0.2e1 * t12 * t10 + 0.2e1 * t2 * t42 + 0.2e1 * t5 * t23 + 0.2e1 * t4 * t24, 0.2e1 * t1 * t42 + 0.2e1 * t12 * t11 - 0.2e1 * t6 * t23 + 0.2e1 * t4 * t25, 0.2e1 * t1 * t24 - 0.2e1 * t6 * t10 - 0.2e1 * t5 * t11 - 0.2e1 * t2 * t25, -0.2e1 * t6 * t1 + 0.2e1 * t12 * t4 + 0.2e1 * t5 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, 0, -t134, 0, -t40, -t39, 0, 0, 0, -t61, t134, 0, 0, 0, (t106 * qJD(2) + qJD(3) * t75) * t68, t40, 0.2e1 * t157 + t39, -t40 * pkin(2) - t29 * qJ(3) - t35 * qJD(3), -t43 * t165 - t179, t22 * t71 - t74 * t23 + (t42 * t71 - t43 * t74) * qJD(4), t33, t95, t32, 0, -t74 * t119 + qJ(3) * t23 + qJD(3) * t42 + t20 * t71 + (t71 * t150 + t26 * t74) * qJD(4), t71 * t119 - qJ(3) * t22 + qJD(3) * t43 + t20 * t74 + (t150 * t74 - t26 * t71) * qJD(4), (-t199 * t22 - t8) * t74 + (t199 * t23 + t7) * t71 + ((t199 * t42 - t16) * t74 + (-t199 * t43 + t15) * t71) * qJD(4), t20 * qJ(3) + t26 * qJD(3) - t199 * t83, t11 * t180 + t25 * t45, t105 * t165 + (-t194 - t193 + (-t188 + t191) * qJD(5)) * t74, (t11 - t140) * t71 + (-t93 + t167) * t74, t10 * t183 - t24 * t47, (-t10 + t141) * t71 + (-t94 - t168) * t74, t95, t18 * t42 + t30 * t23 + (t2 + (-t12 * t70 - t199 * t24) * qJD(4)) * t71 + (qJD(4) * t5 + t10 * t199 + t97) * t74, t17 * t42 - t31 * t23 + (t1 + (-t12 * t73 - t199 * t25) * qJD(4)) * t71 + (-qJD(4) * t6 + t11 * t199 - t96) * t74, -t31 * t10 - t30 * t11 + t17 * t24 - t18 * t25 + t108 * t165 + (qJD(5) * t107 + t1 * t70 - t2 * t73) * t74, -t1 * t31 - t6 * t17 + t5 * t18 + t2 * t30 - (t12 * t165 - t4 * t74) * t199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t200, t62, -0.2e1 * t128, 0.2e1 * t123, 0, t60, 0, 0, 0.2e1 * qJD(3) * t71 + 0.2e1 * t74 * t156, -0.2e1 * t156 * t71 + 0.2e1 * t169, 0, t62, -0.2e1 * t128 * t66 - 0.2e1 * t114, 0.4e1 * t115 * t74 + 0.2e1 * t124 * t67, -0.2e1 * t137 * t71 - 0.2e1 * t164 * t175, -0.2e1 * t128 * t64 + 0.2e1 * t114, 0.2e1 * t123 * t70 - 0.2e1 * t135 * t71, t60, 0.2e1 * t67 * t73 * t158 + 0.2e1 * t18 * t71 + 0.2e1 * (t30 - 0.2e1 * t148) * t163, -0.2e1 * t67 * t136 + 0.2e1 * t17 * t71 + 0.2e1 * (-t31 - 0.2e1 * t146) * t163, 0.2e1 * t104 * t165 + 0.2e1 * (qJD(5) * t103 + t17 * t70 - t18 * t73) * t74, -0.2e1 * t128 * t199 ^ 2 - 0.2e1 * t31 * t17 + 0.2e1 * t30 * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, 0, 0, t40, 0, 0, 0, 0, 0, 0, t33, t32, t179 - t192 + (-t42 * t74 + t43 * t71) * qJD(4), t83, 0, 0, 0, 0, 0, 0, (-t10 - t141) * t74 + (-t94 + t168) * t71, (-t11 - t140) * t74 + (t93 + t167) * t71, (t189 - t190) * t163 + t82 * t71, (-qJD(4) * t107 - t4) * t74 + (qJD(4) * t12 + t84) * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t174 * t160, t174 * t161, 0, -t103 * t163 + (t81 + 0.2e1 * t138) * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (-0.1e1 + t176) * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t22, 0, -t23, t61, t8, t7, 0, 0, t25 * t160 + t193, -qJD(5) * t105 - t70 * t10 + t11 * t73, t94, t161 * t24 - t194, -t93, 0, -pkin(4) * t10 - pkin(9) * t94 + t96, -pkin(4) * t11 + pkin(9) * t93 + t97, pkin(9) * t82 + t84, -t4 * pkin(4) + pkin(9) * t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t165, 0, -t163, 0, t139, t138, 0, 0, -t28, -0.4e1 * t133 * t74 + t165 * t177, t46, t28, -t44, 0, (t147 - t205) * qJD(5) + (t109 * t70 + t146) * qJD(4), (t110 * t70 + t178 * t73) * qJD(5) + (-pkin(9) * t180 + (t73 * pkin(4) - t199 * t70) * t71) * qJD(4), t81, pkin(4) * t139 + pkin(9) * t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t165, -t163, 0, 0, 0, 0, 0, 0, 0, 0, t45, t47, qJD(4) * t126, (pkin(9) * t126 - t195) * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t133, -0.2e1 * t124, 0, -0.2e1 * t133, 0, 0, t70 * t151, t73 * t151, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t11, 0, -t10, t23, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, 0, t47, t163, t18, t17, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, t44, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t160, 0, -t161, 0, -pkin(9) * t160, pkin(9) * t161, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t3;
