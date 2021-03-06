% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,theta1,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 22:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRRPP1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPP1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPP1_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t67 = sin(pkin(11));
t69 = cos(pkin(11));
t71 = sin(qJ(4));
t74 = cos(qJ(4));
t45 = t67 * t74 + t69 * t71;
t72 = sin(qJ(3));
t35 = t45 * t72;
t128 = t35 ^ 2;
t68 = sin(pkin(6));
t73 = sin(qJ(2));
t109 = t68 * t73;
t70 = cos(pkin(6));
t75 = cos(qJ(3));
t39 = t72 * t109 - t70 * t75;
t38 = t39 ^ 2;
t43 = t67 * t71 - t69 * t74;
t127 = t43 ^ 2;
t59 = -t74 * pkin(4) - pkin(3);
t126 = 0.2e1 * t59;
t125 = -0.2e1 * t72;
t124 = 0.2e1 * t75;
t123 = pkin(3) * t74;
t122 = pkin(8) * t71;
t64 = t72 ^ 2;
t121 = t64 * pkin(8);
t120 = t67 * pkin(4);
t119 = t69 * pkin(4);
t61 = t72 * pkin(8);
t118 = t75 * pkin(4);
t100 = -qJ(5) - pkin(9);
t50 = t100 * t74;
t88 = t100 * t71;
t28 = -t67 * t50 - t69 * t88;
t117 = t28 * t75;
t30 = -t69 * t50 + t67 * t88;
t116 = t30 * t75;
t115 = t35 * t43;
t104 = t74 * t72;
t107 = t71 * t72;
t37 = t69 * t104 - t67 * t107;
t114 = t37 * t35;
t113 = t39 * t45;
t112 = t39 * t72;
t111 = t45 * t43;
t110 = t45 * t75;
t76 = cos(qJ(2));
t108 = t68 * t76;
t106 = t71 * t74;
t105 = t71 * t75;
t103 = t74 * t75;
t102 = t75 * t35;
t101 = t75 * t43;
t49 = -t75 * pkin(3) - t72 * pkin(9) - pkin(2);
t46 = t74 * t49;
t98 = qJ(5) * t72;
t21 = -t74 * t98 + t46 + (-pkin(4) - t122) * t75;
t95 = pkin(8) * t103;
t26 = t95 + (t49 - t98) * t71;
t7 = t67 * t21 + t69 * t26;
t48 = pkin(4) * t107 + t61;
t63 = t71 ^ 2;
t65 = t74 ^ 2;
t99 = t63 + t65;
t97 = t72 * t124;
t96 = t28 ^ 2 + t30 ^ 2;
t94 = t71 * t104;
t41 = t75 * t109 + t70 * t72;
t24 = -t74 * t108 - t41 * t71;
t25 = -t71 * t108 + t41 * t74;
t11 = t67 * t24 + t69 * t25;
t9 = -t69 * t24 + t67 * t25;
t93 = t11 * t30 + t9 * t28;
t92 = -t11 * t35 + t9 * t37;
t91 = -t11 * t43 + t9 * t45;
t90 = t11 ^ 2 + t9 ^ 2 + t38;
t89 = t39 * t35 + t9 * t75;
t87 = t28 * t37 - t30 * t35;
t86 = -t69 * t21 + t67 * t26;
t85 = t11 * t75 + t39 * t37;
t84 = -t24 * t71 + t25 * t74;
t32 = -pkin(8) * t105 + t46;
t33 = t71 * t49 + t95;
t83 = -t32 * t71 + t33 * t74;
t82 = -t45 * t35 - t37 * t43;
t81 = t41 * t75 + t112;
t80 = 0.2e1 * t28 * t45 - 0.2e1 * t30 * t43;
t78 = pkin(8) ^ 2;
t66 = t75 ^ 2;
t62 = t68 ^ 2;
t60 = t64 * t78;
t57 = pkin(5) + t119;
t54 = t62 * t76 ^ 2;
t53 = qJ(6) + t120;
t42 = t45 ^ 2;
t34 = t37 ^ 2;
t31 = -0.2e1 * t37 * t75;
t23 = t39 * t43;
t20 = t37 * t45;
t15 = t43 * pkin(5) - t45 * qJ(6) + t59;
t12 = t35 * pkin(5) - t37 * qJ(6) + t48;
t5 = t75 * pkin(5) + t86;
t4 = -t75 * qJ(6) + t7;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62 * t73 ^ 2 + t70 ^ 2 + t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41 ^ 2 + t38 + t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24 ^ 2 + t25 ^ 2 + t38, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t108, -t109, 0, 0, 0, 0, 0, 0, 0, 0, t75 * t108, -t72 * t108, t81, pkin(2) * t108 + t81 * pkin(8), 0, 0, 0, 0, 0, 0, t39 * t107 - t24 * t75, t39 * t104 + t25 * t75 (-t24 * t74 - t25 * t71) * t72, pkin(8) * t112 + t24 * t32 + t25 * t33, 0, 0, 0, 0, 0, 0, t89, t85, t92, t11 * t7 + t39 * t48 + t86 * t9, 0, 0, 0, 0, 0, 0, t89, t92, -t85, t11 * t4 + t39 * t12 + t9 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t64, t97, 0, t66, 0, 0, pkin(2) * t124, pkin(2) * t125, 0.2e1 * (t64 + t66) * pkin(8), pkin(2) ^ 2 + t66 * t78 + t60, t65 * t64, -0.2e1 * t64 * t106, t103 * t125, t63 * t64, t71 * t97, t66, 0.2e1 * t71 * t121 - 0.2e1 * t32 * t75, 0.2e1 * t74 * t121 + 0.2e1 * t33 * t75, 0.2e1 * (-t32 * t74 - t33 * t71) * t72, t32 ^ 2 + t33 ^ 2 + t60, t34, -0.2e1 * t114, t31, t128, 0.2e1 * t102, t66, 0.2e1 * t48 * t35 + 0.2e1 * t75 * t86, 0.2e1 * t48 * t37 + 0.2e1 * t7 * t75, -0.2e1 * t7 * t35 + 0.2e1 * t37 * t86, t48 ^ 2 + t7 ^ 2 + t86 ^ 2, t34, t31, 0.2e1 * t114, t66, -0.2e1 * t102, t128, 0.2e1 * t12 * t35 + 0.2e1 * t5 * t75, -0.2e1 * t4 * t35 + 0.2e1 * t5 * t37, -0.2e1 * t12 * t37 - 0.2e1 * t4 * t75, t12 ^ 2 + t4 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t39, -t41, 0, 0, 0, 0, 0, 0, 0, 0, -t39 * t74, t39 * t71, t84, -t39 * pkin(3) + t84 * pkin(9), 0, 0, 0, 0, 0, 0, t23, t113, t91, t39 * t59 + t93, 0, 0, 0, 0, 0, 0, t23, t91, -t113, t39 * t15 + t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, t75, 0, -t61, -t75 * pkin(8), 0, 0, t94 (-t63 + t65) * t72, -t105, -t94, -t103, 0, -pkin(8) * t104 + (-pkin(3) * t72 + pkin(9) * t75) * t71, pkin(9) * t103 + (t122 - t123) * t72, t83, -pkin(3) * t61 + t83 * pkin(9), t20, t82, -t110, t115, t101, 0, t59 * t35 + t48 * t43 + t117, t59 * t37 + t48 * t45 + t116, -t7 * t43 + t45 * t86 + t87, t28 * t86 + t7 * t30 + t48 * t59, t20, -t110, -t82, 0, -t101, t115, t12 * t43 + t15 * t35 + t117, -t4 * t43 + t5 * t45 + t87, -t12 * t45 - t15 * t37 - t116, t12 * t15 + t5 * t28 + t4 * t30; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t63, 0.2e1 * t106, 0, t65, 0, 0, 0.2e1 * t123, -0.2e1 * pkin(3) * t71, 0.2e1 * t99 * pkin(9), t99 * pkin(9) ^ 2 + pkin(3) ^ 2, t42, -0.2e1 * t111, 0, t127, 0, 0, t43 * t126, t45 * t126, t80, t59 ^ 2 + t96, t42, 0, 0.2e1 * t111, 0, 0, t127, 0.2e1 * t15 * t43, t80, -0.2e1 * t15 * t45, t15 ^ 2 + t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, -t25, 0, 0, 0, 0, 0, 0, 0, 0, -t9, -t11, 0 (t11 * t67 - t69 * t9) * pkin(4), 0, 0, 0, 0, 0, 0, -t9, 0, t11, t11 * t53 - t9 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, 0, -t107, -t75, t32, -t33, 0, 0, 0, 0, t37, 0, -t35, -t75, -t69 * t118 - t86, t67 * t118 - t7 (-t35 * t67 - t37 * t69) * pkin(4) (t67 * t7 - t69 * t86) * pkin(4), 0, t37, 0, -t75, t35, 0 (-pkin(5) - t57) * t75 - t86, -t53 * t35 - t57 * t37 (-qJ(6) - t53) * t75 + t7, t4 * t53 - t5 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, 0, t74, 0, -t71 * pkin(9), -t74 * pkin(9), 0, 0, 0, 0, t45, 0, -t43, 0, -t28, -t30 (-t43 * t67 - t45 * t69) * pkin(4) (-t28 * t69 + t30 * t67) * pkin(4), 0, t45, 0, 0, t43, 0, -t28, -t53 * t43 - t57 * t45, t30, -t28 * t57 + t30 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t119, -0.2e1 * t120, 0 (t67 ^ 2 + t69 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 1, 0, 0, 0.2e1 * t57, 0, 0.2e1 * t53, t53 ^ 2 + t57 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, t37, 0, t48, 0, 0, 0, 0, 0, 0, t35, 0, -t37, t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, t45, 0, t59, 0, 0, 0, 0, 0, 0, t43, 0, -t45, t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, t37, 0, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, 0, t28; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t1;
