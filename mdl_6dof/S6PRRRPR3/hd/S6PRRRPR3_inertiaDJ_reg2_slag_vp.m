% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRRRPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRRRPR3_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR3_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR3_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPR3_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:14:01
% EndTime: 2019-03-08 23:14:09
% DurationCPUTime: 2.63s
% Computational Cost: add. (3076->250), mult. (7498->414), div. (0->0), fcn. (7293->10), ass. (0->151)
t178 = cos(qJ(4));
t182 = -pkin(9) - pkin(8);
t137 = t182 * t178;
t82 = sin(qJ(4));
t85 = cos(qJ(3));
t170 = t82 * t85;
t83 = sin(qJ(3));
t43 = -t137 * t83 - t170 * t182;
t179 = cos(qJ(2));
t80 = sin(pkin(6));
t147 = t80 * t179;
t177 = sin(qJ(2));
t146 = t80 * t177;
t164 = cos(pkin(6));
t49 = t146 * t85 + t164 * t83;
t110 = t146 * t83 - t164 * t85;
t98 = t178 * t110;
t35 = t49 * t82 + t98;
t81 = sin(qJ(6));
t84 = cos(qJ(6));
t113 = t147 * t84 - t35 * t81;
t191 = t113 * qJD(6);
t78 = t81 ^ 2;
t79 = t84 ^ 2;
t165 = t78 - t79;
t187 = t165 * qJD(6);
t143 = qJD(2) * t177;
t141 = t178 * qJD(4);
t145 = t178 * t85;
t171 = t82 * t83;
t186 = qJD(3) + qJD(4);
t41 = -qJD(3) * t145 - t85 * t141 + t171 * t186;
t57 = t178 * t83 + t170;
t190 = (t143 * t57 + t179 * t41) * t80;
t42 = t186 * t57;
t56 = -t145 + t171;
t189 = (t143 * t56 - t179 * t42) * t80;
t157 = t83 * qJD(3);
t151 = pkin(3) * t157;
t107 = t41 * qJ(5) - t57 * qJD(5) + t151;
t112 = t57 * pkin(5) + t43;
t183 = pkin(4) + pkin(10);
t188 = -qJD(6) * t112 - t183 * t42 - t107;
t100 = t110 * qJD(3);
t136 = qJD(2) * t147;
t91 = t136 * t85 - t100;
t92 = t49 * qJD(3) + t136 * t83;
t185 = -t49 * t157 + t92 * t83 + (t100 + t91) * t85;
t116 = t80 ^ 2 * t179 * t143;
t101 = t82 * t110;
t12 = -qJD(4) * t101 + t141 * t49 + t178 * t92 + t82 * t91;
t163 = qJD(4) * t82;
t11 = qJD(4) * t98 + t163 * t49 - t178 * t91 + t82 * t92;
t36 = t178 * t49 - t101;
t9 = t36 * t11;
t184 = 0.2e1 * t12 * t35 - 0.2e1 * t116 - 0.2e1 * t9;
t87 = 0.2e1 * qJD(5);
t160 = qJD(6) * t81;
t72 = -t85 * pkin(3) - pkin(2);
t121 = -t57 * qJ(5) + t72;
t30 = t183 * t56 + t121;
t122 = qJD(3) * t137;
t127 = t182 * t145;
t144 = t182 * qJD(3);
t24 = -t85 * t122 - qJD(4) * t127 + (qJD(4) * t182 + t144) * t171;
t88 = -t41 * pkin(5) + t24;
t3 = t30 * t160 + t188 * t84 - t81 * t88;
t181 = t3 * t81;
t135 = t80 * t143;
t26 = t147 * t81 + t35 * t84;
t6 = qJD(6) * t26 + t81 * t12 + t135 * t84;
t180 = t6 * t81;
t176 = t56 * t42;
t175 = t56 * t81;
t174 = t56 * t84;
t138 = pkin(3) * t141;
t64 = t138 + qJD(5);
t68 = pkin(3) * t82 + qJ(5);
t173 = t68 * t64;
t172 = t81 * t42;
t169 = t84 * t42;
t159 = qJD(6) * t84;
t23 = qJD(4) * t43 - t83 * t122 - t144 * t170;
t19 = -t42 * pkin(5) - t23;
t44 = t171 * t182 - t127;
t34 = -t56 * pkin(5) + t44;
t168 = t159 * t34 + t19 * t81;
t167 = t159 * t68 + t64 * t81;
t155 = qJ(5) * qJD(6);
t166 = qJD(5) * t81 + t155 * t84;
t162 = qJD(6) * t34;
t158 = qJD(6) * t183;
t156 = t85 * qJD(3);
t154 = 0.2e1 * t176;
t33 = -0.2e1 * t57 * t41;
t153 = -0.2e1 * pkin(2) * qJD(3);
t152 = t81 * t169;
t73 = pkin(3) * t163;
t149 = t83 * t156;
t148 = t81 * t159;
t142 = qJD(3) * t179;
t54 = t56 ^ 2;
t139 = t54 * t148;
t134 = t83 * t142;
t71 = -pkin(3) * t178 - pkin(4);
t133 = -t11 * t68 + t36 * t64;
t14 = t112 * t84 - t81 * t30;
t15 = t112 * t81 + t84 * t30;
t132 = t14 * t84 + t15 * t81;
t131 = -t14 * t81 + t15 * t84;
t130 = -t23 * t44 + t24 * t43;
t129 = -t113 * t81 + t26 * t84;
t128 = -t113 * t84 - t26 * t81;
t48 = (t78 + t79) * t73;
t125 = -t11 * qJ(5) + t36 * qJD(5);
t124 = -qJ(5) * t42 - qJD(5) * t56;
t123 = t64 * qJ(5) + t68 * qJD(5);
t120 = t159 * t57 - t41 * t81;
t28 = -t160 * t57 - t41 * t84;
t119 = t159 * t56 + t172;
t118 = t160 * t56 - t169;
t67 = -pkin(10) + t71;
t117 = qJD(6) * (t56 * t68 - t57 * t67);
t115 = qJD(6) * (qJ(5) * t56 + t183 * t57);
t114 = 0.2e1 * t41 * t56 - 0.2e1 * t42 * t57;
t111 = t183 * t41 + t124;
t106 = -t42 * t68 - t56 * t64 + t57 * t73;
t103 = -t11 * t44 + t12 * t43 - t36 * t23 + t35 * t24;
t102 = t11 * t56 + t12 * t57 - t35 * t41 - t36 * t42;
t97 = -t41 * t67 + t106;
t4 = -t30 * t159 + t188 * t81 + t84 * t88;
t96 = qJD(6) * t131 + t4 * t84 - t181;
t5 = t84 * t12 - t135 * t81 + t191;
t95 = qJD(6) * t128 + t5 * t84 + t180;
t94 = 0.2e1 * t23 * t56 + 0.2e1 * t24 * t57 - 0.2e1 * t41 * t43 - 0.2e1 * t42 * t44;
t76 = qJ(5) * t87;
t75 = qJD(5) * t84;
t63 = -0.2e1 * t148;
t62 = 0.2e1 * t148;
t60 = t64 * t84;
t55 = 0.2e1 * t187;
t37 = pkin(4) * t56 + t121;
t22 = -t187 * t56 + t152;
t21 = t42 * pkin(4) + t107;
t20 = -0.4e1 * t148 * t56 - t165 * t42;
t18 = t19 * t84;
t8 = -t11 * t84 - t160 * t36;
t7 = -t11 * t81 + t159 * t36;
t2 = -t26 * t160 + t180 + (t5 - t191) * t84;
t1 = -t14 * t160 - t181 + (qJD(6) * t15 + t4) * t84;
t10 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t110 * t92 + 0.2e1 * t49 * t91 - 0.2e1 * t116, 0, 0, 0, 0, 0, 0, 0, 0, 0, t184, 0, 0, 0, 0, 0, 0, 0, 0, 0, t184, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t113 * t6 + 0.2e1 * t26 * t5 - 0.2e1 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t135, -t136, 0, 0, 0, 0, 0, 0, 0, 0 (-t143 * t85 - t134) * t80 (-t142 * t85 + t143 * t83) * t80, t185, -pkin(2) * t135 + pkin(8) * t185, 0, 0, 0, 0, 0, 0, t189, t190, t102 (-pkin(3) * t134 + t143 * t72) * t80 + t103, 0, 0, 0, 0, 0, 0, t102, -t189, -t190 (t143 * t37 - t179 * t21) * t80 + t103, 0, 0, 0, 0, 0, 0, t11 * t174 + t118 * t36 - t26 * t41 + t5 * t57, -t11 * t175 - t113 * t41 + t119 * t36 - t6 * t57, t128 * t42 + (-qJD(6) * t129 - t5 * t81 + t6 * t84) * t56, -t11 * t34 + t113 * t3 + t14 * t5 + t15 * t6 + t19 * t36 + t26 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t149, 0.2e1 * (-t83 ^ 2 + t85 ^ 2) * qJD(3), 0, -0.2e1 * t149, 0, 0, t83 * t153, t85 * t153, 0, 0, t33, t114, 0, t154, 0, 0, 0.2e1 * t151 * t56 + 0.2e1 * t42 * t72, 0.2e1 * t151 * t57 - 0.2e1 * t41 * t72, t94, 0.2e1 * t151 * t72 + 0.2e1 * t130, 0, 0, 0, t33, t114, t154, t94, -0.2e1 * t21 * t56 - 0.2e1 * t37 * t42, -0.2e1 * t21 * t57 + 0.2e1 * t37 * t41, 0.2e1 * t21 * t37 + 0.2e1 * t130, 0.2e1 * t176 * t78 + 0.2e1 * t139, 0.4e1 * t152 * t56 - 0.2e1 * t187 * t54, 0.2e1 * t120 * t56 + 0.2e1 * t172 * t57, 0.2e1 * t176 * t79 - 0.2e1 * t139, 0.2e1 * t169 * t57 + 0.2e1 * t28 * t56, t33, 0.2e1 * t118 * t34 - 0.2e1 * t14 * t41 - 0.2e1 * t174 * t19 + 0.2e1 * t4 * t57, 0.2e1 * t119 * t34 + 0.2e1 * t15 * t41 + 0.2e1 * t175 * t19 + 0.2e1 * t3 * t57, 0.2e1 * t131 * t42 + 0.2e1 * (-qJD(6) * t132 - t3 * t84 - t4 * t81) * t56, 0.2e1 * t14 * t4 - 0.2e1 * t15 * t3 + 0.2e1 * t19 * t34; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t92, -t91, 0, 0, 0, 0, 0, 0, 0, 0, -t12, t11, 0 (-t178 * t12 - t11 * t82 + (t178 * t36 + t35 * t82) * qJD(4)) * pkin(3), 0, 0, 0, 0, 0, 0, 0, t12, -t11, t12 * t71 + t35 * t73 + t133, 0, 0, 0, 0, 0, 0, t7, t8, -t2, t129 * t73 + t67 * t95 + t133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156, 0, -t157, 0, -pkin(8) * t156, pkin(8) * t157, 0, 0, 0, 0, -t41, 0, -t42, 0, -t24, t23 (t178 * t41 - t42 * t82 + (-t178 * t56 + t57 * t82) * qJD(4)) * pkin(3) (-t178 * t24 - t23 * t82 + (t178 * t44 + t43 * t82) * qJD(4)) * pkin(3), 0, t41, t42, 0, 0, 0, -t41 * t71 + t106, t24, -t23, -t23 * t68 + t24 * t71 + t43 * t73 + t44 * t64, t22, t20, t28, -t22, -t120, 0, t117 * t81 + t84 * t97 + t168, t18 + t84 * t117 + (-t97 - t162) * t81, -t1, t132 * t73 + t19 * t68 + t34 * t64 + t67 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t73, -0.2e1 * t138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t73, 0.2e1 * t64, 0.2e1 * t71 * t73 + 0.2e1 * t173, t63, t55, 0, t62, 0, 0, 0.2e1 * t167, -0.2e1 * t160 * t68 + 0.2e1 * t60, -0.2e1 * t48, 0.2e1 * t48 * t67 + 0.2e1 * t173; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, t11, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, -t11, -pkin(4) * t12 + t125, 0, 0, 0, 0, 0, 0, t7, t8, -t2, -t183 * t95 + t125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t41, 0, -t42, 0, -t24, t23, 0, 0, 0, t41, t42, 0, 0, 0, pkin(4) * t41 + t124, t24, -t23, -pkin(4) * t24 - qJ(5) * t23 + qJD(5) * t44, t22, t20, t28, -t22, -t120, 0, t111 * t84 + t115 * t81 + t168, t18 + t84 * t115 + (-t111 - t162) * t81, -t1, t19 * qJ(5) + t34 * qJD(5) - t183 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73, -t138, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, t87 + t138, -pkin(4) * t73 + t123, t63, t55, 0, t62, 0, 0, t166 + t167, t60 + t75 + (-qJ(5) - t68) * t160, -t48, -t183 * t48 + t123; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, t76, t63, t55, 0, t62, 0, 0, 0.2e1 * t166, -0.2e1 * t155 * t81 + 0.2e1 * t75, 0, t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t41, 0, 0, t24, 0, 0, 0, 0, 0, 0, t28, -t120, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5, -t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t119, 0, -t118, -t41, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t160, 0, -t159, 0, -t160 * t67 + t73 * t84, -t159 * t67 - t73 * t81, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t160, 0, -t159, 0, t81 * t158, t84 * t158, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t160, -t159, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t10;
