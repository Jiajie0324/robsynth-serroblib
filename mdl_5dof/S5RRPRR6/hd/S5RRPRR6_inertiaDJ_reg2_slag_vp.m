% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RRPRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RRPRR6_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR6_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR6_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR6_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:36:10
% EndTime: 2019-12-05 18:36:15
% DurationCPUTime: 1.34s
% Computational Cost: add. (2148->192), mult. (4760->301), div. (0->0), fcn. (4004->8), ass. (0->140)
t114 = sin(pkin(9));
t116 = sin(qJ(5));
t117 = sin(qJ(4));
t119 = cos(qJ(5));
t120 = cos(qJ(4));
t80 = t116 * t120 + t119 * t117;
t64 = t80 * t114;
t115 = cos(pkin(9));
t145 = t115 * pkin(3) + pkin(2);
t132 = -t114 * pkin(7) - t145;
t153 = cos(qJ(2)) * pkin(1);
t129 = -t153 + t132;
t184 = sin(qJ(2)) * pkin(1);
t109 = qJ(3) + t184;
t168 = t115 * t120;
t82 = t109 * t168;
t54 = t117 * t129 + t82;
t188 = qJD(4) * t54;
t104 = qJ(3) * t168;
t60 = t117 * t132 + t104;
t187 = qJD(4) * t60;
t159 = qJD(4) + qJD(5);
t186 = 0.2e1 * t115;
t185 = 0.2e1 * qJD(4);
t164 = qJD(4) * t117;
t142 = t114 * t164;
t166 = t119 * t120;
t146 = t114 * t166;
t167 = t116 * t117;
t149 = t114 * t167;
t41 = -qJD(5) * t149 - t116 * t142 + t159 * t146;
t163 = qJD(4) * t120;
t141 = t114 * t163;
t96 = pkin(4) * t141;
t134 = qJD(2) * t153;
t98 = t134 + qJD(3);
t61 = t114 * t98 + t96;
t170 = t114 * t117;
t107 = pkin(4) * t170;
t68 = t114 * t109 + t107;
t183 = t68 * t41 + t61 * t64;
t152 = qJD(2) * t184;
t169 = t115 * t117;
t130 = t120 * t152 - t98 * t169;
t31 = t130 - t188;
t160 = t115 * qJD(3);
t140 = t117 * t160;
t52 = -t140 - t187;
t182 = -t31 - t52;
t71 = t114 * qJD(3) + t96;
t78 = t114 * qJ(3) + t107;
t181 = t78 * t41 + t71 * t64;
t112 = t114 ^ 2;
t143 = t112 * t163;
t85 = t112 * t98;
t180 = t109 * t143 + t117 * t85;
t102 = t115 * t164;
t67 = t120 * t129;
t156 = qJD(4) * t67 + t117 * t152 + t98 * t168;
t30 = t109 * t102 - t156;
t179 = -t30 * t115 + t120 * t85;
t110 = t112 * qJD(3);
t178 = qJ(3) * t85 + t109 * t110;
t113 = t115 ^ 2;
t86 = t113 * t98;
t177 = t86 + t85;
t176 = qJ(3) * t143 + t117 * t110;
t175 = t30 * t117;
t76 = t120 * t132;
t171 = qJD(4) * t76 + t120 * t160;
t51 = qJ(3) * t102 - t171;
t174 = t51 * t117;
t56 = t159 * t80;
t173 = t56 * t115;
t172 = t120 * t110 - t51 * t115;
t111 = t113 * qJD(3);
t165 = t111 + t110;
t162 = qJD(5) * t116;
t161 = qJD(5) * t119;
t131 = (pkin(7) + pkin(8)) * t114 + t145;
t121 = (-t82 + (t153 + t131) * t117) * qJD(4) + t130;
t147 = t109 * t169;
t154 = t120 * t114 * pkin(8);
t123 = (-t147 - t154) * qJD(4) + t156;
t128 = -t154 + t67 + (-t109 * t117 - pkin(4)) * t115;
t125 = t119 * t128;
t155 = pkin(8) * t170;
t46 = -t155 + t54;
t4 = -qJD(5) * t125 - t116 * t121 - t119 * t123 + t46 * t162;
t40 = t159 * t64;
t65 = t146 - t149;
t158 = -t4 * t115 - t68 * t40 + t61 * t65;
t122 = -t140 + (t131 * t117 - t104) * qJD(4);
t127 = -t154 + t76 + (-qJ(3) * t117 - pkin(4)) * t115;
t124 = t119 * t127;
t148 = qJ(3) * t169;
t126 = (-t148 - t154) * qJD(4) + t171;
t58 = -t155 + t60;
t10 = -qJD(5) * t124 - t116 * t122 - t119 * t126 + t58 * t162;
t157 = -t10 * t115 - t78 * t40 + t71 * t65;
t151 = pkin(4) * t162;
t150 = pkin(4) * t161;
t144 = t112 * t164;
t18 = -t116 * t46 + t125;
t19 = t116 * t128 + t119 * t46;
t5 = -t19 * qJD(5) - t116 * t123 + t119 * t121;
t139 = t18 * t40 - t19 * t41 + t4 * t64 - t5 * t65;
t21 = t116 * t127 + t119 * t58;
t11 = -t21 * qJD(5) - t116 * t126 + t119 * t122;
t20 = -t116 * t58 + t124;
t138 = t10 * t64 - t11 * t65 + t20 * t40 - t21 * t41;
t137 = t114 * t115 * t185;
t136 = t114 * t152;
t135 = t115 * t152;
t133 = t117 * t143;
t108 = qJ(3) * t110;
t103 = t115 * t163;
t95 = t115 * t150;
t94 = t115 * t151;
t89 = -0.2e1 * t133;
t88 = 0.2e1 * t133;
t84 = t120 * t137;
t83 = t117 * t137;
t79 = t166 - t167;
t69 = t109 * t85;
t63 = (t117 ^ 2 - t120 ^ 2) * t112 * t185;
t59 = t76 - t148;
t57 = t59 * t142;
t55 = -t119 * t163 - t120 * t161 + t159 * t167;
t53 = t67 - t147;
t48 = t55 * t115;
t44 = t53 * t142;
t36 = t41 * t186;
t35 = t40 * t186;
t26 = -0.2e1 * t65 * t40;
t25 = 0.2e1 * t64 * t41;
t15 = 0.2e1 * t40 * t64 - 0.2e1 * t65 * t41;
t12 = (-t116 * t41 + t119 * t40 + (t116 * t65 - t119 * t64) * qJD(5)) * pkin(4);
t6 = t79 * t40 - t80 * t41 + t55 * t64 + t56 * t65;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t152, -0.2e1 * t134, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t135, 0.2e1 * t136, 0.2e1 * t177, 0.2e1 * t109 * t86 + 0.2e1 * t69 + 0.2e1 * (-t153 - pkin(2)) * t152, t89, t63, t83, t88, t84, 0, -0.2e1 * t31 * t115 + 0.2e1 * t180, -0.2e1 * t109 * t144 + 0.2e1 * t179, 0.2e1 * t44 + 0.2e1 * (t175 + (-t31 - t188) * t120) * t114, -0.2e1 * t54 * t30 + 0.2e1 * t53 * t31 + 0.2e1 * t69, t26, t15, t35, t25, t36, 0, -0.2e1 * t5 * t115 + 0.2e1 * t183, 0.2e1 * t158, 0.2e1 * t139, 0.2e1 * t18 * t5 - 0.2e1 * t19 * t4 + 0.2e1 * t68 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t152, -t134, 0, 0, 0, 0, 0, 0, 0, 0, -t135, t136, t165 + t177, -pkin(2) * t152 + (qJ(3) * t98 + qJD(3) * t109) * t113 + t178, t89, t63, t83, t88, t84, 0, t182 * t115 + t176 + t180, (-qJ(3) - t109) * t144 + t172 + t179, t44 + t57 + ((t30 + t51) * t117 + ((-t54 - t60) * qJD(4) + t182) * t120) * t114, -t30 * t60 + t31 * t59 - t54 * t51 + t53 * t52 + t178, t26, t15, t35, t25, t36, 0, (-t11 - t5) * t115 + t181 + t183, t157 + t158, t138 + t139, -t19 * t10 + t18 * t11 + t5 * t20 - t4 * t21 + t61 * t78 + t68 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t165, 0.2e1 * qJ(3) * t111 + 0.2e1 * t108, t89, t63, t83, t88, t84, 0, -0.2e1 * t52 * t115 + 0.2e1 * t176, -0.2e1 * qJ(3) * t144 + 0.2e1 * t172, 0.2e1 * t57 + 0.2e1 * (t174 + (-t52 - t187) * t120) * t114, -0.2e1 * t60 * t51 + 0.2e1 * t59 * t52 + 0.2e1 * t108, t26, t15, t35, t25, t36, 0, -0.2e1 * t11 * t115 + 0.2e1 * t181, 0.2e1 * t157, 0.2e1 * t138, -0.2e1 * t21 * t10 + 0.2e1 * t20 * t11 + 0.2e1 * t78 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t152, 0, 0, 0, 0, 0, 0, t102, t103, 0, -t175 + t31 * t120 + (-t117 * t53 + t120 * t54) * qJD(4), 0, 0, 0, 0, 0, 0, t173, -t48, t6, -t18 * t56 - t19 * t55 - t4 * t80 + t5 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, t103, 0, -t174 + t52 * t120 + (-t117 * t59 + t120 * t60) * qJD(4), 0, 0, 0, 0, 0, 0, t173, -t48, t6, -t10 * t80 + t11 * t79 - t20 * t56 - t21 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t80 * t55 - 0.2e1 * t79 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t142, 0, -t141, 0, t31, t30, 0, 0, 0, 0, -t40, 0, -t41, 0, t94 + t5, t4 + t95, t12, (-t116 * t4 + t119 * t5 + (-t116 * t18 + t119 * t19) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t142, 0, -t141, 0, t52, t51, 0, 0, 0, 0, -t40, 0, -t41, 0, t94 + t11, t10 + t95, t12, (-t10 * t116 + t11 * t119 + (-t116 * t20 + t119 * t21) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t164, -t163, 0, 0, 0, 0, 0, 0, 0, 0, -t56, t55, 0, (-t116 * t55 - t119 * t56 + (-t116 * t79 + t119 * t80) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t151, -0.2e1 * t150, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40, 0, -t41, 0, t5, t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40, 0, -t41, 0, t11, t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t56, t55, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t151, -t150, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t1;
