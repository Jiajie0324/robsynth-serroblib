% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 20:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRPRRP2_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP2_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP2_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP2_inertiaDJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 20:03:06
% EndTime: 2019-03-08 20:03:13
% DurationCPUTime: 2.34s
% Computational Cost: add. (1647->224), mult. (4559->369), div. (0->0), fcn. (4370->10), ass. (0->143)
t84 = sin(qJ(5));
t87 = cos(qJ(5));
t122 = pkin(5) * t87 + qJ(6) * t84;
t176 = t122 * qJD(5) - t87 * qJD(6);
t85 = sin(qJ(4));
t184 = t176 * t85;
t169 = cos(qJ(2));
t81 = sin(pkin(11));
t83 = cos(pkin(11));
t86 = sin(qJ(2));
t110 = t169 * t83 - t81 * t86;
t82 = sin(pkin(6));
t106 = t82 * t110;
t156 = cos(pkin(6));
t111 = t169 * t81 + t83 * t86;
t43 = t111 * t82;
t88 = cos(qJ(4));
t31 = t156 * t85 + t43 * t88;
t19 = t87 * t106 + t31 * t84;
t20 = -t84 * t106 + t31 * t87;
t120 = t19 * t87 - t20 * t84;
t108 = t156 * t88 - t43 * t85;
t155 = qJD(2) * t82;
t126 = t169 * t155;
t135 = t86 * t155;
t42 = -t83 * t126 + t81 * t135;
t18 = t108 * qJD(4) - t42 * t88;
t180 = -qJD(5) * t106 + t18;
t178 = qJD(2) * t111;
t183 = t82 * t178;
t76 = qJD(5) * t87;
t6 = t180 * t84 - t183 * t87 + t31 * t76;
t152 = qJD(5) * t84;
t7 = -t31 * t152 + t180 * t87 + t183 * t84;
t95 = t120 * qJD(5) + t6 * t84 + t7 * t87;
t148 = t88 * qJD(4);
t77 = t84 ^ 2;
t141 = t77 * t148;
t79 = t87 ^ 2;
t70 = t79 * t148;
t47 = t70 + t141;
t182 = t178 * t110 * t82 ^ 2;
t17 = t31 * qJD(4) - t42 * t85;
t168 = t17 * t85;
t181 = -t108 * t148 + t168;
t158 = t77 - t79;
t58 = t158 * qJD(5);
t170 = t85 * pkin(9);
t121 = pkin(5) * t84 - qJ(6) * t87;
t73 = pkin(2) * t81 + pkin(8);
t113 = t121 + t73;
t38 = t113 * t85;
t46 = t121 * qJD(5) - t84 * qJD(6);
t57 = -pkin(4) - t122;
t177 = qJD(4) * (-t57 * t88 + t170) - qJD(5) * t38 - t46 * t85;
t171 = pkin(9) * t88;
t124 = pkin(4) * t85 - t171;
t109 = t124 * qJD(4);
t75 = t85 * qJD(4);
t132 = t73 * t75;
t74 = -t83 * pkin(2) - pkin(3);
t114 = t74 - t170;
t172 = pkin(4) * t88;
t107 = t114 - t172;
t164 = t73 * t88;
t55 = t87 * t164;
t160 = t84 * t107 + t55;
t16 = -qJD(5) * t160 + t87 * t109 + t84 * t132;
t174 = 0.2e1 * qJD(6);
t173 = pkin(4) * t87;
t167 = t17 * t88;
t10 = t108 * t17;
t166 = t73 * t84;
t165 = t73 * t87;
t163 = t85 * t87;
t98 = t87 * t107;
t162 = qJD(5) * t98 + t84 * t109;
t159 = t47 * pkin(9);
t78 = t85 ^ 2;
t157 = -t88 ^ 2 + t78;
t154 = qJD(4) * t38;
t153 = qJD(4) * t87;
t151 = qJD(5) * t85;
t150 = qJD(5) * t88;
t147 = -0.2e1 * pkin(4) * qJD(5);
t146 = t84 * t164;
t145 = 0.2e1 * qJD(4) * t74;
t144 = pkin(5) * t75;
t143 = pkin(9) * t152;
t142 = pkin(9) * t76;
t140 = t73 * t152;
t139 = t84 * t150;
t138 = t85 * t76;
t137 = t87 * t150;
t134 = t84 * t76;
t133 = t85 * t148;
t131 = t87 * t148;
t130 = t73 * t148;
t129 = t157 * qJD(4);
t128 = t78 * t134;
t127 = t84 * t131;
t125 = -t170 - t172;
t24 = -qJ(6) * t88 + t160;
t25 = -t87 * t114 + (pkin(5) + t166 + t173) * t88;
t119 = t24 * t87 + t25 * t84;
t118 = -t24 * t84 + t25 * t87;
t27 = t98 - t146;
t117 = -t160 * t84 - t27 * t87;
t116 = -t160 * t87 + t27 * t84;
t9 = -t108 * t152 - t17 * t87;
t112 = 0.2e1 * t19 * t6 + 0.2e1 * t20 * t7 - 0.2e1 * t10;
t49 = t87 * t75 + t139;
t103 = qJD(4) * t110;
t102 = -t108 * t138 + t181 * t84 - t19 * t75 + t6 * t88;
t11 = (-qJD(6) - t140) * t88 + (qJ(6) - t165) * t75 + t162;
t12 = -t144 - t16;
t94 = t118 * qJD(5) + t11 * t87 + t12 * t84;
t15 = t49 * t73 - t162;
t93 = t117 * qJD(5) - t15 * t87 - t16 * t84;
t92 = t95 * pkin(9);
t90 = t19 * t138 - t167 + t20 * t131 - t108 * t75 + t7 * t163 + (t19 * t148 + (-qJD(5) * t20 + t6) * t85) * t84;
t89 = t120 * t148 + (t6 * t87 - t7 * t84 + (-t19 * t84 - t20 * t87) * qJD(5)) * t85;
t67 = -0.2e1 * t133;
t66 = -0.2e1 * t134;
t65 = 0.2e1 * t134;
t64 = pkin(9) * t137;
t60 = t79 * t133;
t59 = t77 * t133;
t51 = -t84 * t75 + t137;
t50 = t84 * t148 + t138;
t48 = t84 * t151 - t131;
t40 = 0.2e1 * t60 - 0.2e1 * t128;
t39 = 0.2e1 * t59 + 0.2e1 * t128;
t36 = t158 * t151 - t127;
t35 = -t84 * t129 + t85 * t137;
t34 = 0.4e1 * t85 * t134 + t141 - t70;
t33 = 0.2e1 * t85 * t139 + 0.2e1 * t157 * t153;
t32 = -0.2e1 * t85 * t127 + t78 * t58;
t29 = 0.2e1 * t59 + 0.2e1 * t60 - 0.2e1 * t133;
t21 = t113 * t148 + t184;
t8 = -t108 * t76 + t17 * t84;
t1 = (-t108 * t153 + t7) * t88 + (-qJD(4) * t20 - t9) * t85;
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t43 * t42 - 0.2e1 * t182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t31 * t18 - 0.2e1 * t10 - 0.2e1 * t182, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t135, -t126, 0, 0, 0, 0, 0, 0, 0, 0, -t183, t42, 0 (-t183 * t83 - t42 * t81) * pkin(2), 0, 0, 0, 0, 0, 0 (-t103 * t85 - t178 * t88) * t82 (-t103 * t88 + t178 * t85) * t82, t168 + t18 * t88 + (-t108 * t88 - t31 * t85) * qJD(4), -t108 * t130 - t132 * t31 + t164 * t18 + t168 * t73 + t183 * t74, 0, 0, 0, 0, 0, 0, t102, t1, t89, -t20 * t15 - t19 * t16 + t7 * t160 + t181 * t73 - t6 * t27, 0, 0, 0, 0, 0, 0, t102, t89, -t1, -t108 * t21 + t11 * t20 + t12 * t19 + t17 * t38 + t24 * t7 + t25 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t133, -0.2e1 * t129, 0, t67, 0, 0, t85 * t145, t88 * t145, 0, 0, t40, 0.2e1 * t32, t33, t39, 0.2e1 * t35, t67, 0.2e1 * t78 * t73 * t76 - 0.2e1 * t16 * t88 + 0.2e1 * (t27 + 0.2e1 * t146) * t75, -0.2e1 * t78 * t140 - 0.2e1 * t15 * t88 + 0.2e1 * (-t160 + 0.2e1 * t55) * t75, 0.2e1 * t117 * t148 + 0.2e1 * (qJD(5) * t116 + t15 * t84 - t16 * t87) * t85, 0.2e1 * t133 * t73 ^ 2 - 0.2e1 * t15 * t160 + 0.2e1 * t27 * t16, t40, t33, -0.2e1 * t32, t67, -0.2e1 * t35, t39, 0.2e1 * (t154 * t84 + t12) * t88 + 0.2e1 * (-qJD(4) * t25 + t21 * t84 + t38 * t76) * t85, 0.2e1 * t118 * t148 + 0.2e1 * (-qJD(5) * t119 - t11 * t84 + t12 * t87) * t85, 0.2e1 * (-t153 * t38 - t11) * t88 + 0.2e1 * (qJD(4) * t24 + t152 * t38 - t21 * t87) * t85, 0.2e1 * t11 * t24 + 0.2e1 * t12 * t25 + 0.2e1 * t21 * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t167 + t18 * t85 + (-t108 * t85 + t31 * t88) * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93 * t85 + (-t116 * t88 + t157 * t73) * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0 (qJD(4) * t119 - t21) * t88 + (t94 + t154) * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, -t18, 0, 0, 0, 0, 0, 0, 0, 0, t9, t8, t95, -pkin(4) * t17 + t92, 0, 0, 0, 0, 0, 0, t9, t95, -t8, -t108 * t46 + t17 * t57 + t92; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t148, 0, -t75, 0, -t130, t132, 0, 0, -t36, -t34, -t51, t36, t49, 0, t64 + (t166 - t173) * t151 + (t125 * t84 - t55) * qJD(4) (t124 * t84 + t163 * t73) * qJD(5) + (t125 * t87 + t146) * qJD(4), t93, -pkin(4) * t130 + t93 * pkin(9), -t36, -t51, t34, 0, -t49, t36, t64 + (t151 * t57 - t21) * t87 - t177 * t84, t94 (-t21 + (t57 * t85 + t171) * qJD(5)) * t84 + t177 * t87, pkin(9) * t94 + t21 * t57 + t38 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, -t148, 0, 0, 0, 0, 0, 0, 0, 0, -t49, -t51, t47, -pkin(4) * t75 + t159, 0, 0, 0, 0, 0, 0, -t49, t47, t51, -t46 * t88 + t57 * t75 + t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, -0.2e1 * t58, 0, t66, 0, 0, t84 * t147, t87 * t147, 0, 0, t65, 0, 0.2e1 * t58, 0, 0, t66, 0.2e1 * t152 * t57 - 0.2e1 * t46 * t87, 0, -0.2e1 * t46 * t84 - 0.2e1 * t57 * t76, 0.2e1 * t57 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t6, -t7, 0, 0, 0, 0, 0, 0, 0, 0, -t6, 0, t7, -pkin(5) * t6 + qJ(6) * t7 + qJD(6) * t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t48, 0, -t50, t75, t16, t15, 0, 0, 0, -t48, 0, t75, t50, 0, t16 + 0.2e1 * t144 (-pkin(5) * t148 - qJ(6) * t151) * t87 + (-qJ(6) * t148 + (pkin(5) * qJD(5) - qJD(6)) * t85) * t84 (-0.2e1 * qJD(6) - t140) * t88 + (0.2e1 * qJ(6) - t165) * t75 + t162, -pkin(5) * t12 + qJ(6) * t11 + qJD(6) * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t50, t48, 0, 0, 0, 0, 0, 0, 0, 0, -t50, 0, -t48, -t121 * t148 - t184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, -t152, 0, -t142, t143, 0, 0, 0, t76, 0, 0, t152, 0, -t142, -t176, -t143, -t176 * pkin(9); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t174, qJ(6) * t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, -t48, 0, t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t2;
