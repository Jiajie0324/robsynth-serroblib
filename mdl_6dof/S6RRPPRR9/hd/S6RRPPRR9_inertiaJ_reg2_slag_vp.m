% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPRR9_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR9_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR9_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t121 = pkin(3) + pkin(8);
t61 = sin(pkin(6));
t68 = sin(qJ(2));
t44 = t61 * t68;
t62 = cos(pkin(6));
t71 = cos(qJ(2));
t108 = t62 * t71;
t41 = pkin(1) * t108;
t53 = t62 * pkin(2);
t87 = t62 * qJ(4) + t41 + t53;
t12 = t121 * t44 - t87;
t67 = sin(qJ(5));
t70 = cos(qJ(5));
t23 = -t70 * t44 + t62 * t67;
t128 = t23 ^ 2;
t64 = pkin(2) + qJ(4);
t127 = t64 ^ 2;
t126 = -0.2e1 * t23;
t125 = 0.2e1 * t61;
t124 = 0.2e1 * t64;
t69 = cos(qJ(6));
t123 = 0.2e1 * t69;
t122 = 0.2e1 * t70;
t45 = t61 * t71;
t109 = t62 * t68;
t27 = pkin(1) * t109 + pkin(8) * t45;
t52 = t62 * qJ(3);
t20 = -t52 - t27;
t38 = pkin(3) * t45;
t17 = t38 - t20;
t10 = pkin(4) * t45 - t62 * pkin(9) + t17;
t63 = qJ(3) - pkin(9);
t79 = -t64 * t71 - pkin(1);
t11 = (-t63 * t68 + t79) * t61;
t5 = t70 * t10 - t67 * t11;
t3 = -pkin(5) * t45 - t5;
t66 = sin(qJ(6));
t120 = t3 * t66;
t119 = t3 * t69;
t118 = t70 * pkin(5);
t25 = t67 * t44 + t62 * t70;
t13 = t25 * t66 - t69 * t45;
t117 = t13 * t69;
t15 = t25 * t69 + t66 * t45;
t116 = t15 * t66;
t115 = t15 * t69;
t114 = t23 * t67;
t113 = t25 * t70;
t54 = t61 ^ 2;
t112 = t54 * t71;
t57 = t66 ^ 2;
t111 = t57 * t70;
t60 = t70 ^ 2;
t110 = t60 * t63;
t107 = t66 * t13;
t106 = t66 * t23;
t47 = t66 * t67;
t105 = t66 * t69;
t104 = t66 * t70;
t103 = t67 * t63;
t102 = t69 * t23;
t101 = t69 * t67;
t49 = t69 * t70;
t100 = t70 * t13;
t99 = t70 * t15;
t98 = t70 * t23;
t97 = t70 * t63;
t96 = t70 * t67;
t59 = t69 ^ 2;
t95 = t57 + t59;
t58 = t67 ^ 2;
t37 = t58 + t60;
t94 = qJ(3) * t68;
t93 = -0.2e1 * t96;
t92 = t68 * t112;
t91 = t61 * t109;
t90 = t61 * t108;
t89 = t67 * t45;
t35 = t70 * t45;
t88 = t66 * t49;
t86 = 0.2e1 * t52 + t27;
t85 = t95 * t67;
t84 = pkin(8) * t44 - t41;
t83 = -pkin(10) * t67 - t118;
t6 = t67 * t10 + t70 * t11;
t4 = pkin(10) * t45 + t6;
t8 = -(-pkin(4) - t121) * t44 - t87;
t7 = t23 * pkin(5) - t25 * pkin(10) - t8;
t1 = -t66 * t4 + t69 * t7;
t2 = t69 * t4 + t66 * t7;
t82 = -t1 * t69 - t2 * t66;
t81 = -t1 * t66 + t2 * t69;
t80 = t5 * t70 + t6 * t67;
t78 = t116 - t117;
t29 = t67 * pkin(5) - t70 * pkin(10) + t64;
t18 = -t66 * t103 + t69 * t29;
t19 = t63 * t101 + t66 * t29;
t77 = -t18 * t69 - t19 * t66;
t76 = -t18 * t66 + t19 * t69;
t75 = -t113 - t114;
t73 = qJ(3) ^ 2;
t72 = 0.2e1 * qJ(3);
t56 = t63 ^ 2;
t55 = t62 ^ 2;
t48 = t59 * t70;
t46 = t60 * t56;
t43 = t54 * t71 ^ 2;
t42 = t54 * t68 ^ 2;
t36 = qJ(3) * t45;
t32 = 0.2e1 * t92;
t31 = -0.2e1 * t90;
t30 = 0.2e1 * t91;
t28 = t37 * t63;
t22 = -t53 + t84;
t21 = (-pkin(2) * t71 - pkin(1) - t94) * t61;
t16 = (t79 - t94) * t61;
t9 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t42, t32, t30, t43, 0.2e1 * t90, t55, 0.2e1 * pkin(1) * t112 - 0.2e1 * t62 * t84, -0.2e1 * t54 * pkin(1) * t68 - 0.2e1 * t27 * t62 (t27 * t71 + t68 * t84) * t125, t54 * pkin(1) ^ 2 + t27 ^ 2 + t84 ^ 2, t55, -0.2e1 * t91, t31, t42, t32, t43 (-t20 * t71 + t22 * t68) * t125, 0.2e1 * t21 * t45 + 0.2e1 * t22 * t62, -0.2e1 * t20 * t62 - 0.2e1 * t21 * t44, t20 ^ 2 + t21 ^ 2 + t22 ^ 2, t55, t31, t30, t43, -0.2e1 * t92, t42 (t12 * t68 + t17 * t71) * t125, -0.2e1 * t16 * t44 + 0.2e1 * t17 * t62, -0.2e1 * t12 * t62 - 0.2e1 * t16 * t45, t12 ^ 2 + t16 ^ 2 + t17 ^ 2, t25 ^ 2, t25 * t126, 0.2e1 * t25 * t45, t128, t45 * t126, t43, -0.2e1 * t8 * t23 + 0.2e1 * t5 * t45, -0.2e1 * t8 * t25 - 0.2e1 * t6 * t45, -0.2e1 * t6 * t23 - 0.2e1 * t5 * t25, t5 ^ 2 + t6 ^ 2 + t8 ^ 2, t15 ^ 2, -0.2e1 * t15 * t13, 0.2e1 * t15 * t23, t13 ^ 2, t13 * t126, t128, 0.2e1 * t1 * t23 + 0.2e1 * t3 * t13, 0.2e1 * t3 * t15 - 0.2e1 * t2 * t23, -0.2e1 * t1 * t15 - 0.2e1 * t2 * t13, t1 ^ 2 + t2 ^ 2 + t3 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, 0, t45, t62, -t84, -t27, 0, 0, t62, -t44, -t45, 0, 0, 0, -pkin(2) * t44 + t36, -0.2e1 * t53 + t84, t86, -t22 * pkin(2) - t20 * qJ(3), t62, -t45, t44, 0, 0, 0, -t64 * t44 + t36, t38 + t86, t64 * t62 - t12, t17 * qJ(3) - t12 * t64, t113, -t25 * t67 - t98, t35, t114, -t89, 0, t64 * t23 + t63 * t35 - t8 * t67, t64 * t25 - t63 * t89 - t8 * t70, t75 * t63 - t80, t80 * t63 - t8 * t64, t69 * t99 (-t116 - t117) * t70, t15 * t67 + t69 * t98, t66 * t100, -t13 * t67 - t66 * t98, t114, t1 * t67 + t18 * t23 + (-t13 * t63 + t120) * t70, -t19 * t23 - t2 * t67 + (-t15 * t63 + t119) * t70, -t19 * t13 - t18 * t15 + t70 * t82, t1 * t18 + t2 * t19 - t3 * t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(2), t72, pkin(2) ^ 2 + t73, 1, 0, 0, 0, 0, 0, 0, t72, t124, t73 + t127, t60, t93, 0, t58, 0, 0, t67 * t124, t64 * t122, -0.2e1 * t28, t58 * t56 + t127 + t46, t59 * t60, -0.2e1 * t60 * t105, t96 * t123, t57 * t60, t66 * t93, t58, -0.2e1 * t66 * t110 + 0.2e1 * t18 * t67, -0.2e1 * t69 * t110 - 0.2e1 * t19 * t67, t77 * t122, t18 ^ 2 + t19 ^ 2 + t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, t62, 0, t22, 0, 0, 0, 0, 0, 0, t44, 0, -t62, t12, 0, 0, 0, 0, 0, 0, -t23, -t25, 0, t8, 0, 0, 0, 0, 0, 0, -t102, t106, t107 + t115, t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -1, -t64, 0, 0, 0, 0, 0, 0, -t67, -t70, 0, -t64, 0, 0, 0, 0, 0, 0, -t101, t47, t48 + t111, t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, t62, 0, t17, 0, 0, 0, 0, 0, 0, t35, -t89, t75, t80, 0, 0, 0, 0, 0, 0, -t23 * t47 - t100, -t101 * t23 - t99, t78 * t67, -t3 * t70 + t67 * t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, qJ(3), 0, 0, 0, 0, 0, 0, 0, 0, -t37, t28, 0, 0, 0, 0, 0, 0, -t37 * t66, -t37 * t69, 0, t67 * t76 + t110; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58 * t95 + t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, -t23, t45, t5, -t6, 0, 0, t116, -t107 + t115, t106, -t117, t102, 0, -pkin(5) * t13 - pkin(10) * t106 - t119, -pkin(5) * t15 - pkin(10) * t102 + t120, pkin(10) * t78 + t81, -t3 * pkin(5) + pkin(10) * t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70, 0, -t67, 0, t97, -t103, 0, 0, t88, t48 - t111, t47, -t88, t101, 0, t83 * t66 + t69 * t97, -t66 * t97 + t69 * t83, t76, pkin(5) * t97 + pkin(10) * t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70, -t67, 0, 0, 0, 0, 0, 0, 0, 0, t49, -t104, t85, pkin(10) * t85 + t118; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t57, 0.2e1 * t105, 0, t59, 0, 0, pkin(5) * t123, -0.2e1 * pkin(5) * t66, 0.2e1 * t95 * pkin(10), pkin(10) ^ 2 * t95 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t15, 0, -t13, t23, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, 0, -t104, t67, t18, -t19, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t69, t66, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47, -t101, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, t69, 0, -t66 * pkin(10), -t69 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t9;