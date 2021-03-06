% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPPRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPPRRP5_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP5_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP5_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRRP5_inertiaDJ_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:08:47
% EndTime: 2019-03-09 02:08:51
% DurationCPUTime: 1.65s
% Computational Cost: add. (964->171), mult. (2020->289), div. (0->0), fcn. (1427->4), ass. (0->119)
t63 = pkin(1) + qJ(3);
t65 = sin(qJ(4));
t132 = t65 * pkin(4);
t67 = cos(qJ(4));
t88 = -t67 * pkin(8) + t132;
t79 = t88 + t63;
t55 = t67 * qJD(4);
t62 = -pkin(7) + qJ(2);
t97 = t62 * t55;
t81 = -t65 * qJD(2) - t97;
t136 = -qJD(5) * t79 + t81;
t53 = t65 * qJD(4);
t135 = -qJ(6) * t53 + t67 * qJD(6);
t64 = sin(qJ(5));
t58 = t64 ^ 2;
t66 = cos(qJ(5));
t60 = t66 ^ 2;
t123 = t58 - t60;
t80 = -t67 * qJD(2) + t62 * t53;
t89 = pkin(4) * t67 + pkin(8) * t65;
t134 = t89 * qJD(5) + t80;
t133 = 0.2e1 * qJD(5);
t131 = t66 * pkin(5);
t115 = qJD(5) * t67;
t102 = t66 * t115;
t30 = -t64 * t53 + t102;
t9 = t30 * pkin(5) + t80;
t130 = t9 * t64;
t129 = t9 * t66;
t124 = -qJ(6) - pkin(8);
t37 = t124 * t64;
t128 = t37 * t67;
t38 = t124 * t66;
t127 = t38 * t67;
t126 = t64 * t65;
t125 = t65 * t66;
t39 = t62 * t125;
t15 = t64 * t79 + t39;
t122 = t58 + t60;
t59 = t65 ^ 2;
t61 = t67 ^ 2;
t121 = t59 - t61;
t120 = t59 + t61;
t119 = qJ(6) * t67;
t33 = (pkin(5) * t64 - t62) * t67;
t118 = qJD(4) * t33;
t117 = qJD(4) * t66;
t56 = qJD(5) * t64;
t116 = qJD(5) * t65;
t57 = qJD(5) * t66;
t114 = t61 * qJD(2);
t113 = t63 * qJD(3);
t110 = qJ(2) * qJD(2);
t109 = t62 * t126;
t108 = -0.2e1 * t56;
t107 = pkin(5) * t55;
t52 = pkin(5) * t56;
t106 = t66 * t119;
t105 = t64 * t115;
t104 = t62 * t116;
t103 = t65 * t57;
t101 = t33 * t56;
t100 = t64 * t57;
t99 = t66 * t53;
t98 = t65 * t55;
t51 = -pkin(4) - t131;
t95 = -t51 + t131;
t94 = t122 * t67;
t93 = t121 * qJD(4);
t45 = 0.2e1 * t98;
t76 = t89 * qJD(4) + qJD(3);
t92 = t136 * t66 - t64 * t76;
t91 = t64 * t99;
t90 = t61 * t100;
t32 = t66 * t79;
t5 = -t106 + t32 + (-t62 * t64 + pkin(5)) * t65;
t6 = -t64 * t119 + t15;
t87 = t5 * t66 + t6 * t64;
t86 = t5 * t64 - t6 * t66;
t85 = pkin(5) * t58 + t51 * t66;
t14 = t32 - t109;
t84 = t14 * t66 + t15 * t64;
t83 = t14 * t64 - t15 * t66;
t82 = t37 * t64 + t38 * t66;
t78 = t99 + t105;
t29 = t64 * t55 + t103;
t75 = t88 * qJD(4) - t62 * t115;
t70 = t136 * t64 + t66 * t76;
t69 = qJ(6) * t105 + t70 + (-t104 - t135) * t66;
t1 = t69 + t107;
t2 = (t106 + t109) * qJD(5) + t92 + t135 * t64;
t74 = t86 * qJD(5) - t1 * t66 + t2 * t64;
t3 = t64 * t104 + t92;
t4 = -t62 * t103 + t70;
t73 = t83 * qJD(5) + t3 * t64 - t4 * t66;
t72 = -t84 * qJD(5) - t3 * t66 - t4 * t64;
t18 = -t66 * qJD(6) - t124 * t56;
t19 = -t64 * qJD(6) + t124 * t57;
t71 = -t18 * t66 - t19 * t64 + (-t37 * t66 + t38 * t64) * qJD(5);
t68 = 0.2e1 * qJD(2);
t46 = t62 * t114;
t44 = -0.2e1 * t100;
t43 = 0.2e1 * t100;
t35 = t120 * qJD(2);
t34 = -0.2e1 * t123 * qJD(5);
t28 = t120 * t57;
t26 = t64 * t116 - t66 * t55;
t25 = t120 * t56;
t24 = qJD(4) * t94;
t23 = t122 * t53;
t17 = -0.2e1 * t60 * t98 - 0.2e1 * t90;
t16 = -0.2e1 * t58 * t98 + 0.2e1 * t90;
t13 = t123 * t115 + t91;
t12 = -0.4e1 * t67 * t100 + t123 * t53;
t11 = -0.2e1 * t65 * t102 + 0.2e1 * t64 * t93;
t10 = -0.2e1 * t65 * t105 - 0.2e1 * t121 * t117;
t8 = t123 * t61 * t133 + 0.4e1 * t67 * t91;
t7 = (-0.1e1 + t122) * t45;
t20 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, 0.2e1 * t110, 0, 0, 0, 0, 0, 0, 0, t68, 0.2e1 * qJD(3), 0.2e1 * t110 + 0.2e1 * t113, -0.2e1 * t98, 0.2e1 * t93, 0, t45, 0, 0, 0.2e1 * qJD(3) * t65 + 0.2e1 * t63 * t55, 0.2e1 * qJD(3) * t67 - 0.2e1 * t63 * t53, -0.2e1 * t35, 0.2e1 * t59 * t62 * qJD(2) + 0.2e1 * t113 + 0.2e1 * t46, t17, t8, t10, t16, t11, t45, 0.2e1 * t4 * t65 + 0.2e1 * (-t64 * qJD(2) - t62 * t57) * t61 + 0.2e1 * (t14 + 0.2e1 * t109) * t55, 0.2e1 * t3 * t65 + 0.2e1 * (-qJD(2) * t66 + t62 * t56) * t61 + 0.2e1 * (-t15 + 0.2e1 * t39) * t55, 0.2e1 * t84 * t53 + 0.2e1 * t73 * t67, -0.2e1 * t62 ^ 2 * t98 + 0.2e1 * t14 * t4 - 0.2e1 * t15 * t3 + 0.2e1 * t46, t17, t8, t10, t16, t11, t45, 0.2e1 * (-t64 * t118 + t1) * t65 + 0.2e1 * (qJD(4) * t5 + t33 * t57 + t130) * t67, 0.2e1 * (-t33 * t117 + t2) * t65 + 0.2e1 * (-qJD(4) * t6 - t101 + t129) * t67, 0.2e1 * t87 * t53 + 0.2e1 * t74 * t67, 0.2e1 * t5 * t1 - 0.2e1 * t6 * t2 + 0.2e1 * t33 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), 0, 0, 0, 0, 0, 0, -t55, t53, 0, -qJD(3), 0, 0, 0, 0, 0, 0, t26, t29, -t23, t73, 0, 0, 0, 0, 0, 0, t26, t29, -t23, t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, 0, 0, 0, 0, 0, 0, -t28, t25, 0, t114 - t83 * t55 + (t72 - 0.2e1 * t97) * t65, 0, 0, 0, 0, 0, 0, -t28, t25, 0 (-t86 * qJD(4) - t9) * t67 + (-t87 * qJD(5) - t1 * t64 - t2 * t66 + t118) * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, 0, -t55, 0, -t80, t81, 0, 0, -t13, t12, t29, t13, -t26, 0, -t134 * t66 + t75 * t64, t134 * t64 + t75 * t66, t72, -t80 * pkin(4) + t72 * pkin(8), -t13, t12, t29, t13, -t26, 0, t19 * t65 - t129 + (-t51 * t126 + t128) * qJD(4) + (t33 * t64 + t85 * t67) * qJD(5), t18 * t65 + t130 + (-t51 * t125 + t127) * qJD(4) + (t95 * t67 * t64 + t33 * t66) * qJD(5) (t37 * t53 - t19 * t67 - t2 + (-t5 + t127) * qJD(5)) * t66 + (-t38 * t53 + t18 * t67 - t1 + (-t6 + t128) * qJD(5)) * t64, pkin(5) * t101 + t1 * t37 - t6 * t18 + t5 * t19 + t2 * t38 + t9 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82 * qJD(5) + t64 * t18 - t66 * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, -t55, 0, 0, 0, 0, 0, 0, 0, 0, -t78, -t30, t24 (pkin(8) * t94 - t132) * qJD(4), 0, 0, 0, 0, 0, 0, -t78, -t30, t24 (-qJD(4) * t82 - t52) * t67 + (qJD(4) * t51 + t71) * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, t34, 0, t44, 0, 0, pkin(4) * t108, -0.2e1 * pkin(4) * t57, 0, 0, t43, t34, 0, t44, 0, 0, t95 * t108, t85 * t133, 0.2e1 * t71, 0.2e1 * t38 * t18 + 0.2e1 * t37 * t19 + 0.2e1 * t51 * t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t78, 0, -t30, t55, t4, t3, 0, 0, 0, 0, -t78, 0, -t30, t55, t69 + 0.2e1 * t107, t2, t78 * pkin(5), t1 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, t57, 0, 0, 0, 0, 0, 0, 0, 0, t56, t57, 0, t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t29, t26, 0, 0, 0, 0, 0, 0, 0, 0, -t29, t26, 0, -t29 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t57, 0, -t56, 0, -pkin(8) * t57, pkin(8) * t56, 0, 0, 0, 0, t57, 0, -t56, 0, t19, t18, -pkin(5) * t57, t19 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, -t78, 0, t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, t57, 0, t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t20;
