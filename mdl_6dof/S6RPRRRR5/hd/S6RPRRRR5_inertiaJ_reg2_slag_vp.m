% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRRR5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRRR5_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t90 = sin(qJ(5));
t85 = t90 ^ 2;
t94 = cos(qJ(5));
t86 = t94 ^ 2;
t106 = t85 + t86;
t91 = sin(qJ(4));
t126 = t91 * pkin(3);
t77 = pkin(9) + t126;
t109 = t106 * t77;
t87 = sin(pkin(11));
t88 = cos(pkin(11));
t92 = sin(qJ(3));
t96 = cos(qJ(3));
t58 = -t92 * t87 + t96 * t88;
t59 = t96 * t87 + t92 * t88;
t95 = cos(qJ(4));
t48 = t91 * t58 + t95 * t59;
t137 = -0.2e1 * t48;
t113 = pkin(7) + qJ(2);
t65 = t113 * t87;
t66 = t113 * t88;
t49 = -t96 * t65 - t92 * t66;
t101 = -t59 * pkin(8) + t49;
t50 = -t92 * t65 + t96 * t66;
t34 = t58 * pkin(8) + t50;
t20 = -t95 * t101 + t91 * t34;
t136 = t20 ^ 2;
t46 = -t95 * t58 + t91 * t59;
t43 = t46 ^ 2;
t135 = 0.2e1 * t46;
t75 = -t88 * pkin(2) - pkin(1);
t54 = -t58 * pkin(3) + t75;
t134 = 0.2e1 * t54;
t133 = 0.2e1 * t59;
t122 = t95 * pkin(3);
t79 = -t94 * pkin(5) - pkin(4);
t67 = t79 - t122;
t132 = 0.2e1 * t67;
t131 = 0.2e1 * t79;
t130 = 0.2e1 * t88;
t115 = t94 * t48;
t128 = t46 * pkin(5);
t22 = t91 * t101 + t95 * t34;
t23 = t46 * pkin(4) - t48 * pkin(9) + t54;
t9 = -t90 * t22 + t94 * t23;
t7 = -pkin(10) * t115 + t128 + t9;
t116 = t94 * t22;
t8 = t116 + (-pkin(10) * t48 + t23) * t90;
t89 = sin(qJ(6));
t93 = cos(qJ(6));
t3 = t93 * t7 - t89 * t8;
t124 = t93 * t8;
t4 = t89 * t7 + t124;
t62 = t89 * t90 - t93 * t94;
t64 = t89 * t94 + t93 * t90;
t129 = -t3 * t64 - t4 * t62;
t127 = t89 * pkin(5);
t125 = t93 * pkin(5);
t123 = t94 * pkin(9);
t78 = -pkin(4) - t122;
t121 = pkin(4) - t78;
t120 = t20 * t94;
t118 = t90 * t48;
t26 = t93 * t115 - t89 * t118;
t119 = t26 * t62;
t32 = t64 * t46;
t39 = t90 * t46;
t117 = t90 * t94;
t114 = t94 * t77;
t56 = (-pkin(10) - t77) * t90;
t82 = t94 * pkin(10);
t57 = t82 + t114;
t41 = t93 * t56 - t89 * t57;
t42 = t89 * t56 + t93 * t57;
t112 = -t41 * t64 - t42 * t62;
t68 = (-pkin(10) - pkin(9)) * t90;
t69 = t82 + t123;
t52 = t93 * t68 - t89 * t69;
t53 = t89 * t68 + t93 * t69;
t111 = -t52 * t64 - t53 * t62;
t110 = t67 + t79;
t108 = t106 * pkin(9);
t83 = t87 ^ 2;
t84 = t88 ^ 2;
t107 = t83 + t84;
t105 = t46 * t137;
t104 = -pkin(4) * t48 - pkin(9) * t46;
t10 = t90 * t23 + t116;
t5 = t10 * t94 - t9 * t90;
t103 = t10 * t90 + t9 * t94;
t102 = -t46 * t77 + t48 * t78;
t72 = 0.2e1 * t117;
t61 = t64 ^ 2;
t60 = t62 ^ 2;
t51 = -0.2e1 * t64 * t62;
t45 = (-t62 * t89 - t64 * t93) * pkin(5);
t44 = t48 ^ 2;
t40 = t94 * t46;
t36 = t90 * t115;
t31 = t62 * t46;
t27 = (-t85 + t86) * t48;
t24 = t64 * t48;
t19 = t64 * t24;
t18 = t26 * t64;
t17 = t24 * t62;
t15 = t20 * t90;
t14 = pkin(5) * t118 + t20;
t13 = t14 * t64;
t12 = t14 * t62;
t11 = -t19 - t119;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t83, t87 * t130, 0, t84, 0, 0, pkin(1) * t130, -0.2e1 * pkin(1) * t87, 0.2e1 * t107 * qJ(2), t107 * qJ(2) ^ 2 + pkin(1) ^ 2, t59 ^ 2, t58 * t133, 0, t58 ^ 2, 0, 0, -0.2e1 * t75 * t58, t75 * t133, -0.2e1 * t49 * t59 + 0.2e1 * t50 * t58, t49 ^ 2 + t50 ^ 2 + t75 ^ 2, t44, t105, 0, t43, 0, 0, t46 * t134, t48 * t134, 0.2e1 * t20 * t48 - 0.2e1 * t22 * t46, t22 ^ 2 + t54 ^ 2 + t136, t86 * t44, -0.2e1 * t44 * t117, t115 * t135, t85 * t44, t90 * t105, t43, 0.2e1 * t118 * t20 + 0.2e1 * t9 * t46, -0.2e1 * t10 * t46 + 0.2e1 * t115 * t20, t103 * t137, t10 ^ 2 + t9 ^ 2 + t136, t26 ^ 2, -0.2e1 * t26 * t24, t26 * t135, t24 ^ 2, -t24 * t135, t43, 0.2e1 * t14 * t24 + 0.2e1 * t3 * t46, 0.2e1 * t14 * t26 - 0.2e1 * t4 * t46, -0.2e1 * t4 * t24 - 0.2e1 * t3 * t26, t14 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t88, t87, 0, -pkin(1), 0, 0, 0, 0, 0, 0, -t58, t59, 0, t75, 0, 0, 0, 0, 0, 0, t46, t48, 0, t54, 0, 0, 0, 0, 0, 0, t40, -t39, -t106 * t48, t103, 0, 0, 0, 0, 0, 0, -t31, -t32, -t19 + t119, -t3 * t62 + t4 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61 + t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59, 0, t58, 0, t49, -t50, 0, 0, 0, 0, t48, 0, -t46, 0, -t20, -t22 (-t46 * t91 - t48 * t95) * pkin(3) (-t20 * t95 + t22 * t91) * pkin(3), t36, t27, t39, -t36, t40, 0, t102 * t90 - t120, t102 * t94 + t15, t5, t20 * t78 + t5 * t77, t18, t11, t32, t17, -t31, 0, t67 * t24 + t41 * t46 + t12, t67 * t26 - t42 * t46 + t13, -t42 * t24 - t41 * t26 + t129, t14 * t67 + t3 * t41 + t4 * t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62 * t41 + t64 * t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t122, -0.2e1 * t126, 0 (t91 ^ 2 + t95 ^ 2) * pkin(3) ^ 2, t85, t72, 0, t86, 0, 0, -0.2e1 * t78 * t94, 0.2e1 * t78 * t90, 0.2e1 * t109, t106 * t77 ^ 2 + t78 ^ 2, t61, t51, 0, t60, 0, 0, t62 * t132, t64 * t132, 0.2e1 * t112, t41 ^ 2 + t42 ^ 2 + t67 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, 0, -t46, 0, -t20, -t22, 0, 0, t36, t27, t39, -t36, t40, 0, t104 * t90 - t120, t104 * t94 + t15, t5, -t20 * pkin(4) + pkin(9) * t5, t18, t11, t32, t17, -t31, 0, t79 * t24 + t52 * t46 + t12, t79 * t26 - t53 * t46 + t13, -t53 * t24 - t52 * t26 + t129, t14 * t79 + t3 * t52 + t4 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62 * t52 + t64 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t122, -t126, 0, 0, t85, t72, 0, t86, 0, 0, t121 * t94, -t121 * t90, t108 + t109, -t78 * pkin(4) + pkin(9) * t109, t61, t51, 0, t60, 0, 0, t110 * t62, t110 * t64, t111 + t112, t41 * t52 + t42 * t53 + t67 * t79; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t85, t72, 0, t86, 0, 0, 0.2e1 * pkin(4) * t94, -0.2e1 * pkin(4) * t90, 0.2e1 * t108, pkin(9) ^ 2 * t106 + pkin(4) ^ 2, t61, t51, 0, t60, 0, 0, t62 * t131, t64 * t131, 0.2e1 * t111, t52 ^ 2 + t53 ^ 2 + t79 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, 0, -t118, t46, t9, -t10, 0, 0, 0, 0, t26, 0, -t24, t46, t125 * t46 + t3, -t124 + (-t7 - t128) * t89 (-t24 * t89 - t26 * t93) * pkin(5) (t3 * t93 + t4 * t89) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, -t90, 0, 0, 0, 0, 0, 0, 0, 0, -t62, -t64, 0 (-t62 * t93 + t64 * t89) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, 0, t94, 0, -t90 * t77, -t114, 0, 0, 0, 0, t64, 0, -t62, 0, t41, -t42, t45 (t41 * t93 + t42 * t89) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, 0, t94, 0, -t90 * pkin(9), -t123, 0, 0, 0, 0, t64, 0, -t62, 0, t52, -t53, t45 (t52 * t93 + t53 * t89) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t125, -0.2e1 * t127, 0 (t89 ^ 2 + t93 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, 0, -t24, t46, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62, -t64, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, -t62, 0, t41, -t42, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, -t62, 0, t52, -t53, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t125, -t127, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;
