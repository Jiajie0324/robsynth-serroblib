% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRPPRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPPRP3_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRP3_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRP3_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RRPPRP3_inertiaDJ_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:35:33
% EndTime: 2019-03-09 08:35:39
% DurationCPUTime: 1.96s
% Computational Cost: add. (1318->188), mult. (2598->318), div. (0->0), fcn. (1836->4), ass. (0->120)
t69 = qJ(3) + pkin(4);
t71 = sin(qJ(2));
t131 = pkin(2) + pkin(3);
t110 = pkin(8) + t131;
t73 = cos(qJ(2));
t95 = t110 * t73;
t136 = t69 * t71 + t95;
t135 = t131 * t73;
t121 = qJ(6) + t110;
t134 = -t110 * t71 + t69 * t73;
t70 = sin(qJ(5));
t65 = t70 ^ 2;
t72 = cos(qJ(5));
t67 = t72 ^ 2;
t126 = t65 - t67;
t133 = t126 * qJD(5);
t59 = t71 * qJD(2);
t105 = pkin(7) * t59;
t28 = -qJ(4) * t59 + t73 * qJD(4) + t105;
t132 = t134 * qJD(5) + t28;
t66 = t71 ^ 2;
t75 = 2 * qJD(3);
t62 = t73 * qJ(4);
t45 = t73 * pkin(7) - t62;
t130 = t45 * t28;
t127 = pkin(7) - qJ(4);
t44 = t127 * t71;
t37 = t72 * t44;
t83 = pkin(1) + t136;
t10 = t70 * t83 + t37;
t68 = t73 ^ 2;
t125 = t66 - t68;
t124 = qJ(3) * t73;
t123 = qJ(6) * t73;
t122 = t71 * qJ(3);
t120 = qJD(2) * t70;
t119 = qJD(2) * t72;
t61 = qJD(5) * t70;
t118 = qJD(5) * t72;
t117 = qJD(5) * t73;
t116 = t45 * qJD(3);
t115 = t70 * qJD(6);
t114 = t71 * qJD(3);
t113 = t72 * qJD(6);
t60 = t73 * qJD(2);
t112 = t73 * qJD(3);
t111 = qJ(6) * qJD(2);
t109 = -0.2e1 * pkin(1) * qJD(2);
t19 = t72 * t83;
t77 = t134 * qJD(2) + t114;
t85 = -t71 * qJD(4) + t127 * t60;
t108 = -qJD(5) * t19 - t70 * t77 - t72 * t85;
t107 = pkin(5) * t61;
t106 = pkin(5) * t118;
t104 = pkin(7) * t60;
t103 = t110 * t61;
t102 = t70 * t117;
t101 = t72 * t117;
t100 = t70 * t118;
t99 = t71 * t60;
t98 = t72 * t59;
t97 = t70 * t127;
t96 = pkin(1) + t122;
t9 = -t70 * t44 + t19;
t43 = t125 * qJD(2);
t94 = t70 * t98;
t93 = t68 * t100;
t86 = t70 * t59 - t101;
t13 = t86 * pkin(5) - t28;
t56 = t72 * pkin(5) + t69;
t92 = t56 * t117 - t13;
t7 = t71 * pkin(5) + t72 * t123 + t9;
t8 = t70 * t123 + t10;
t91 = -t7 * t72 - t70 * t8;
t90 = -t10 * t70 - t72 * t9;
t89 = -t73 * pkin(2) - t122;
t87 = t121 * t61;
t33 = t98 + t102;
t30 = -t62 + (-pkin(5) * t70 + pkin(7)) * t73;
t51 = qJD(3) - t107;
t84 = -qJD(5) * t30 - t51 * t73 + t56 * t59;
t82 = t89 * qJD(2) + t112;
t81 = -t37 - t70 * (t71 * pkin(4) + t96);
t12 = t72 * t77;
t76 = t12 + t73 * t113 + (t70 * qJD(4) - t72 * t111) * t71 + t81 * qJD(5);
t2 = (-t87 + (-t97 + pkin(5)) * qJD(2)) * t73 + t76;
t3 = -qJ(6) * t101 - t73 * t115 + (qJD(5) * t44 + t71 * t111) * t70 + t108;
t80 = t2 * t72 - t3 * t70 + (-t7 * t70 + t72 * t8) * qJD(5);
t4 = t44 * t61 + t108;
t5 = -t70 * t85 + t12 + (-t70 * t95 + t81) * qJD(5);
t79 = -t4 * t70 + t5 * t72 + (t10 * t72 - t70 * t9) * qJD(5);
t1 = t90 * qJD(5) - t4 * t72 - t5 * t70;
t78 = t136 * qJD(2) - qJD(5) * t45 - t112;
t63 = qJ(3) * t75;
t50 = -0.2e1 * t99;
t49 = 0.2e1 * t99;
t48 = -0.2e1 * t100;
t47 = 0.2e1 * t100;
t42 = -pkin(1) + t89;
t41 = t121 * t72;
t40 = t121 * t70;
t39 = -0.2e1 * t43;
t38 = -0.2e1 * t133;
t36 = t96 + t135;
t34 = -t71 * t118 - t70 * t60;
t32 = -t72 * t60 + t71 * t61;
t31 = (-t65 - t67) * t59;
t29 = -t114 + (pkin(2) * t71 - t124) * qJD(2);
t27 = t121 * t118 + t115;
t26 = -qJ(6) * t61 - t103 + t113;
t24 = t114 + (-t131 * t71 + t124) * qJD(2);
t23 = -0.2e1 * t67 * t99 - 0.2e1 * t93;
t22 = -0.2e1 * t65 * t99 + 0.2e1 * t93;
t21 = t126 * t117 + t94;
t20 = -0.4e1 * t73 * t100 + t126 * t59;
t16 = 0.2e1 * t71 * t101 - 0.2e1 * t70 * t43;
t15 = 0.2e1 * t71 * t102 + 0.2e1 * t125 * t119;
t14 = 0.2e1 * t68 * t133 + 0.4e1 * t73 * t94;
t6 = -t26 * t72 - t27 * t70 + (-t40 * t72 + t41 * t70) * qJD(5);
t11 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, t39, 0, t50, 0, 0, t71 * t109, t73 * t109, 0, 0, t49, 0, 0.2e1 * t43, 0, 0, t50, -0.2e1 * t29 * t73 + 0.2e1 * t42 * t59, 0, -0.2e1 * t29 * t71 - 0.2e1 * t42 * t60, 0.2e1 * t42 * t29, t50, t39, 0, t49, 0, 0, 0.2e1 * t24 * t71 + 0.2e1 * t36 * t60, -0.2e1 * t24 * t73 + 0.2e1 * t36 * t59, 0.2e1 * t66 * qJD(4) + 0.2e1 * t28 * t73 + 0.2e1 * (-0.2e1 * t44 * t73 + t45 * t71) * qJD(2), 0.2e1 * t36 * t24 + 0.2e1 * t44 * t85 - 0.2e1 * t130, t23, t14, t15, t22, t16, t49, 0.2e1 * (t45 * t120 + t5) * t71 + 0.2e1 * (qJD(2) * t9 - t45 * t118 + t28 * t70) * t73, 0.2e1 * (t45 * t119 + t4) * t71 + 0.2e1 * (-qJD(2) * t10 + t28 * t72 + t45 * t61) * t73, 0.2e1 * t90 * t59 + 0.2e1 * t79 * t73, -0.2e1 * t10 * t4 + 0.2e1 * t9 * t5 - 0.2e1 * t130, t23, t14, t15, t22, t16, t49, 0.2e1 * (t30 * t120 + t2) * t71 + 0.2e1 * (qJD(2) * t7 - t30 * t118 - t13 * t70) * t73, 0.2e1 * (t30 * t119 + t3) * t71 + 0.2e1 * (-qJD(2) * t8 - t13 * t72 + t30 * t61) * t73, 0.2e1 * t91 * t59 + 0.2e1 * t80 * t73, 0.2e1 * t30 * t13 + 0.2e1 * t7 * t2 - 0.2e1 * t8 * t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, 0, -t59, 0, -t104, t105, 0, 0, 0, t60, 0, 0, t59, 0, -t104, t82, -t105, t82 * pkin(7), 0, 0, -t59, 0, t60, 0, -t28, t85, -t112 + (t122 + t135) * qJD(2), -t28 * qJ(3) - t131 * t85 + t116, -t21, t20, t34, t21, t32, 0, -t132 * t72 + t78 * t70, t132 * t70 + t78 * t72, -t1, -t1 * t110 - t28 * t69 + t116, -t21, t20, t34, t21, t32, 0, t27 * t71 + t40 * t60 + t84 * t70 - t92 * t72, t26 * t71 + t41 * t60 + t92 * t70 + t84 * t72 (-t40 * t59 + t27 * t73 + t3 + (-t41 * t73 + t7) * qJD(5)) * t72 + (t41 * t59 - t26 * t73 + t2 + (-t40 * t73 + t8) * qJD(5)) * t70, t13 * t56 + t2 * t40 - t8 * t26 + t7 * t27 + t3 * t41 + t30 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, t63, 0, 0, 0, 0, 0, 0, t75, 0, 0, t63, t47, t38, 0, t48, 0, 0, 0.2e1 * qJD(3) * t72 - 0.2e1 * t69 * t61, -0.2e1 * qJD(3) * t70 - 0.2e1 * t69 * t118, 0, t69 * t75, t47, t38, 0, t48, 0, 0, 0.2e1 * t51 * t72 - 0.2e1 * t56 * t61, -0.2e1 * t56 * t118 - 0.2e1 * t51 * t70, -0.2e1 * t6, 0.2e1 * t41 * t26 + 0.2e1 * t40 * t27 + 0.2e1 * t56 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, 0, t104, 0, 0, 0, 0, 0, 0, 0, 0, -t60, t85, 0, 0, 0, 0, 0, 0, t34, t32, 0, t1, 0, 0, 0, 0, 0, 0, t34, t32, 0, qJD(5) * t91 - t2 * t70 - t3 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60, t59, 0, t24, 0, 0, 0, 0, 0, 0, -t32, t34, t31, t79, 0, 0, 0, 0, 0, 0, -t32, t34, t31, t80; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t26 * t70 + t27 * t72 + (-t40 * t70 - t41 * t72) * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t33, 0, -t86, t60, t5, t4, 0, 0, 0, 0, t33, 0, -t86, t60 (-t87 + (0.2e1 * pkin(5) - t97) * qJD(2)) * t73 + t76, t3, -t33 * pkin(5), t2 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t118, 0, t61, 0, t110 * t118, -t103, 0, 0, 0, 0, -t118, 0, t61, 0, t27, t26, t106, t27 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t118, t61, 0, 0, 0, 0, 0, 0, 0, 0, -t118, t61, 0, -t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t61, -t118, 0, 0, 0, 0, 0, 0, 0, 0, -t61, -t118, 0, -t107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, t33, 0, t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t61, -t118, 0, t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t11;