% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPPRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPPRRR6_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR6_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR6_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRR6_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:31:29
% EndTime: 2019-03-09 02:31:36
% DurationCPUTime: 2.48s
% Computational Cost: add. (2308->249), mult. (4842->451), div. (0->0), fcn. (4062->6), ass. (0->133)
t70 = sin(qJ(4));
t137 = qJD(5) * t70;
t67 = -pkin(7) + qJ(2);
t72 = cos(qJ(4));
t153 = pkin(4) * t72;
t98 = pkin(8) * t70 + t153;
t159 = t98 * qJD(4) - t67 * t137 + qJD(3);
t150 = sin(qJ(6));
t69 = sin(qJ(5));
t119 = t150 * t69;
t151 = cos(qJ(6));
t71 = cos(qJ(5));
t120 = t151 * t71;
t85 = t120 - t119;
t28 = t85 * t70;
t112 = t151 * qJD(6);
t158 = t151 * qJD(5) + t112;
t63 = t69 ^ 2;
t65 = t71 ^ 2;
t144 = t63 - t65;
t111 = qJD(5) * t144;
t64 = t70 ^ 2;
t66 = t72 ^ 2;
t110 = (t64 - t66) * qJD(4);
t157 = qJD(5) + qJD(6);
t154 = -pkin(9) - pkin(8);
t68 = pkin(1) + qJ(3);
t156 = t154 * t72 + t68;
t134 = t70 * qJD(4);
t87 = -qJD(2) * t72 + t67 * t134;
t155 = t98 * qJD(5) + t87;
t152 = t70 * pkin(4);
t42 = t150 * t71 + t151 * t69;
t19 = t157 * t42;
t149 = t19 * t70;
t148 = t19 * t72;
t147 = t85 * t19;
t114 = qJD(6) * t150;
t18 = (t150 * qJD(5) + t114) * t69 - t158 * t71;
t146 = t42 * t18;
t145 = t70 * t67;
t52 = t71 * t145;
t97 = -t72 * pkin(8) + t152;
t86 = t97 + t68;
t25 = t69 * t86 + t52;
t143 = t63 + t65;
t141 = t64 + t66;
t140 = qJD(2) * t67;
t139 = qJD(3) * t68;
t138 = qJD(5) * t69;
t62 = qJD(5) * t71;
t136 = qJD(5) * t72;
t135 = t70 * qJD(2);
t61 = t72 * qJD(4);
t133 = qJ(2) * qJD(2);
t132 = -0.2e1 * qJD(5) * pkin(4);
t131 = t69 * t145;
t130 = pkin(5) * t138;
t129 = t42 * t61;
t128 = t67 * t61;
t127 = t69 * t136;
t125 = t71 * t136;
t124 = t69 * t62;
t123 = t71 * t134;
t122 = t71 * t61;
t121 = t70 * t61;
t118 = -t69 * t67 + pkin(5);
t117 = t143 * t72;
t116 = qJD(4) * t151;
t115 = qJD(4) * t150;
t54 = 0.2e1 * t121;
t109 = t69 * t123;
t108 = t66 * t124;
t107 = t72 * t119;
t106 = pkin(5) * t112;
t105 = pkin(5) * t114;
t104 = t154 * t151;
t103 = t154 * t150;
t102 = t70 * t115;
t101 = t70 * t116;
t100 = t72 * t116;
t99 = t72 * t115;
t11 = t71 * t101 - t69 * t102 + t148;
t29 = t72 * t120 - t107;
t96 = -t11 * t85 - t19 * t29;
t13 = -t69 * t101 + (t158 * t72 - t102) * t71 - t157 * t107;
t27 = t42 * t72;
t95 = -t13 * t42 + t18 * t27;
t24 = t71 * t86 - t131;
t94 = t24 * t71 + t25 * t69;
t93 = t24 * t69 - t25 * t71;
t92 = t69 * t104;
t91 = t69 * t103;
t90 = -t18 * t70 + t129;
t89 = -t61 * t85 + t149;
t88 = -t128 - t135;
t35 = t69 * t134 - t125;
t17 = -t69 * t72 * pkin(9) + t25;
t74 = -t69 * t135 + t71 * qJD(3) + (-t52 + (-t152 - t156) * t69) * qJD(5) + (t118 * t72 + (-t154 * t70 + t153) * t71) * qJD(4);
t79 = t156 * t71 + (t71 * pkin(4) + t118) * t70;
t77 = t151 * t79;
t84 = qJD(5) * t86;
t8 = -t67 * t122 + (-t135 - t84) * t71 - t159 * t69;
t78 = t35 * pkin(9) - t8;
t1 = -qJD(6) * t77 + t17 * t114 - t150 * t74 - t151 * t78;
t51 = t154 * t71;
t22 = -t151 * t51 + t91;
t82 = t97 * qJD(4) - t67 * t136;
t9 = t159 * t71 + (-t84 + t88) * t69;
t81 = t93 * qJD(5) + t69 * t8 - t71 * t9;
t80 = -t94 * qJD(5) - t69 * t9 - t71 * t8;
t76 = t150 * t79;
t75 = -t150 * t78 + t151 * t74;
t7 = t151 * t17 + t76;
t73 = 0.2e1 * qJD(2);
t60 = -pkin(5) * t71 - pkin(4);
t55 = t66 * t140;
t43 = t141 * qJD(2);
t40 = (pkin(5) * t69 - t67) * t72;
t34 = t69 * t61 + t70 * t62;
t33 = -t123 - t127;
t32 = t69 * t137 - t122;
t26 = t42 * t70;
t23 = t72 * t111 + t109;
t21 = t150 * t51 + t92;
t20 = -t35 * pkin(5) + t87;
t15 = -t22 * qJD(6) + (t71 * t104 - t91) * qJD(5);
t14 = -t103 * t62 - t51 * t114 - t157 * t92;
t12 = -t157 * t28 - t129;
t10 = -t71 * t100 + t69 * t99 + t149;
t6 = -t150 * t17 + t77;
t2 = -t7 * qJD(6) + t75;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0.2e1 * t133, 0, 0, 0, 0, 0, 0, 0, t73, 0.2e1 * qJD(3), 0.2e1 * t133 + 0.2e1 * t139, -0.2e1 * t121, 0.2e1 * t110, 0, t54, 0, 0, 0.2e1 * qJD(3) * t70 + 0.2e1 * t68 * t61, 0.2e1 * qJD(3) * t72 - 0.2e1 * t68 * t134, -0.2e1 * t43, 0.2e1 * t64 * t140 + 0.2e1 * t139 + 0.2e1 * t55, -0.2e1 * t65 * t121 - 0.2e1 * t108, 0.4e1 * t109 * t72 + 0.2e1 * t111 * t66, -0.2e1 * t110 * t71 - 0.2e1 * t70 * t127, -0.2e1 * t121 * t63 + 0.2e1 * t108, 0.2e1 * t110 * t69 - 0.2e1 * t125 * t70, t54, 0.2e1 * t70 * t9 + 0.2e1 * (-t69 * qJD(2) - t67 * t62) * t66 + 0.2e1 * (t24 + 0.2e1 * t131) * t61, 0.2e1 * t70 * t8 + 0.2e1 * (-qJD(2) * t71 + t67 * t138) * t66 + 0.2e1 * (-t25 + 0.2e1 * t52) * t61, 0.2e1 * t94 * t134 + 0.2e1 * t72 * t81, -0.2e1 * t121 * t67 ^ 2 + 0.2e1 * t24 * t9 - 0.2e1 * t25 * t8 + 0.2e1 * t55, -0.2e1 * t29 * t11, 0.2e1 * t11 * t27 - 0.2e1 * t13 * t29, -0.2e1 * t11 * t70 + 0.2e1 * t29 * t61, 0.2e1 * t27 * t13, -0.2e1 * t13 * t70 - 0.2e1 * t27 * t61, t54, 0.2e1 * t13 * t40 + 0.2e1 * t2 * t70 + 0.2e1 * t20 * t27 + 0.2e1 * t6 * t61, 0.2e1 * t1 * t70 - 0.2e1 * t11 * t40 + 0.2e1 * t20 * t29 - 0.2e1 * t61 * t7, 0.2e1 * t1 * t27 + 0.2e1 * t11 * t6 - 0.2e1 * t13 * t7 - 0.2e1 * t2 * t29, -0.2e1 * t1 * t7 + 0.2e1 * t2 * t6 + 0.2e1 * t20 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), 0, 0, 0, 0, 0, 0, -t61, t134, 0, -qJD(3), 0, 0, 0, 0, 0, 0, t32, t34, -t143 * t134, t81, 0, 0, 0, 0, 0, 0, t89, t90, -t95 + t96, t1 * t42 + t18 * t7 + t19 * t6 - t2 * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t146 - 0.2e1 * t147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, 0, 0, 0, 0, 0, 0, -t141 * t62, t141 * t138, 0, qJD(2) * t66 - t93 * t61 + (t80 - 0.2e1 * t128) * t70, 0, 0, 0, 0, 0, 0, t12 * t70 - t13 * t72 + (-t26 * t72 + t27 * t70) * qJD(4), t10 * t70 + t11 * t72 + (-t28 * t72 + t29 * t70) * qJD(4), t10 * t27 - t11 * t26 - t12 * t29 - t13 * t28, -t1 * t28 - t10 * t7 + t12 * t6 + t134 * t40 - t2 * t26 - t20 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * t42 - t12 * t85 + t18 * t28 - t19 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-0.1e1 + t143) * t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t10 * t28 - 0.2e1 * t12 * t26 - 0.2e1 * t121; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t134, 0, -t61, 0, -t87, t88, 0, 0, -t23, -0.4e1 * t72 * t124 + t144 * t134, t34, t23, -t32, 0, -t155 * t71 + t82 * t69, t155 * t69 + t82 * t71, t80, -pkin(4) * t87 + pkin(8) * t80, -t11 * t42 - t18 * t29, t95 + t96, t90, -t13 * t85 + t19 * t27, -t89, 0, t13 * t60 + t27 * t130 + t15 * t70 + t19 * t40 - t20 * t85 + t21 * t61, -t11 * t60 + t130 * t29 + t14 * t70 - t18 * t40 + t20 * t42 - t22 * t61, -t1 * t85 + t11 * t21 - t13 * t22 + t14 * t27 - t15 * t29 + t18 * t6 - t19 * t7 - t2 * t42, -t1 * t22 + t130 * t40 - t14 * t7 + t15 * t6 + t2 * t21 + t20 * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t14 * t42 - t15 * t85 + t18 * t22 + t19 * t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t134, -t61, 0, 0, 0, 0, 0, 0, 0, 0, t33, t35, qJD(4) * t117 (pkin(8) * t117 - t152) * qJD(4), 0, 0, 0, 0, 0, 0, -t134 * t85 - t148, t134 * t42 + t18 * t72, -t10 * t85 - t12 * t42 - t18 * t26 - t19 * t28, -pkin(5) * t127 - t10 * t22 + t12 * t21 + t134 * t60 - t14 * t28 - t15 * t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t124, -0.2e1 * t111, 0, -0.2e1 * t124, 0, 0, t69 * t132, t71 * t132, 0, 0, -0.2e1 * t146, -0.2e1 * t18 * t85 - 0.2e1 * t19 * t42, 0, -0.2e1 * t147, 0, 0, -0.2e1 * t130 * t85 + 0.2e1 * t19 * t60, 0.2e1 * t130 * t42 - 0.2e1 * t18 * t60, -0.2e1 * t14 * t85 - 0.2e1 * t15 * t42 + 0.2e1 * t18 * t21 - 0.2e1 * t19 * t22, 0.2e1 * t130 * t60 - 0.2e1 * t14 * t22 + 0.2e1 * t15 * t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t33, 0, t35, t61, t9, t8, 0, 0, 0, 0, -t11, 0, -t13, t61, pkin(5) * t100 - qJD(6) * t76 - t105 * t70 - t112 * t17 + t75 (-t112 * t70 - t99) * pkin(5) + t1 (t151 * t11 - t150 * t13 + (t150 * t29 - t151 * t27) * qJD(6)) * pkin(5) (t151 * t2 - t150 * t1 + (-t150 * t6 + t151 * t7) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t138, t62, 0, 0, 0, 0, 0, 0, 0, 0, t19, -t18, 0 (t151 * t19 + t150 * t18 + (t150 * t85 - t151 * t42) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t34, t32, 0, 0, 0, 0, 0, 0, 0, 0, t12, t10, 0 (t151 * t12 - t150 * t10 + (t150 * t26 + t151 * t28) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, -t138, 0, -pkin(8) * t62, pkin(8) * t138, 0, 0, 0, 0, -t18, 0, -t19, 0, t15, t14 (t151 * t18 - t150 * t19 + (t150 * t42 + t151 * t85) * qJD(6)) * pkin(5) (t151 * t15 - t150 * t14 + (-t150 * t21 + t151 * t22) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t105, -0.2e1 * t106, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t11, 0, -t13, t61, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19, -t18, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t18, 0, -t19, 0, t15, t14, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t105, -t106, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
