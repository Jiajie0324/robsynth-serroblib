% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPRR2_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR2_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR2_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t96 = sin(qJ(5));
t89 = t96 ^ 2;
t100 = cos(qJ(5));
t91 = t100 ^ 2;
t124 = t89 + t91;
t93 = sin(pkin(11));
t139 = t93 * pkin(3);
t82 = pkin(9) + t139;
t126 = t124 * t82;
t101 = cos(qJ(3));
t102 = cos(qJ(2));
t97 = sin(qJ(3));
t98 = sin(qJ(2));
t72 = t101 * t102 - t97 * t98;
t74 = t101 * t98 + t97 * t102;
t94 = cos(pkin(11));
t50 = t93 * t72 + t94 * t74;
t152 = -0.2e1 * t50;
t142 = -pkin(8) - pkin(7);
t112 = t142 * t102;
t113 = t142 * t98;
t54 = t101 * t113 + t97 * t112;
t107 = -t74 * qJ(4) + t54;
t55 = -t101 * t112 + t97 * t113;
t38 = t72 * qJ(4) + t55;
t21 = -t94 * t107 + t93 * t38;
t151 = t21 ^ 2;
t48 = -t94 * t72 + t93 * t74;
t46 = t48 ^ 2;
t150 = 0.2e1 * t48;
t111 = -t100 * pkin(5) - pkin(4);
t136 = t97 * pkin(2);
t88 = t101 * pkin(2);
t85 = t88 + pkin(3);
t125 = t93 * t136 - t94 * t85;
t56 = t111 + t125;
t149 = 0.2e1 * t56;
t86 = -t102 * pkin(2) - pkin(1);
t59 = -t72 * pkin(3) + t86;
t148 = 0.2e1 * t59;
t147 = 0.2e1 * t74;
t138 = t94 * pkin(3);
t75 = t111 - t138;
t146 = 0.2e1 * t75;
t145 = 0.2e1 * t96;
t144 = -0.2e1 * t100;
t143 = 0.2e1 * t102;
t20 = t48 * pkin(4) - t50 * pkin(9) + t59;
t23 = t107 * t93 + t94 * t38;
t10 = t100 * t20 - t96 * t23;
t121 = t100 * t50;
t140 = t48 * pkin(5);
t7 = -pkin(10) * t121 + t10 + t140;
t122 = t100 * t23;
t8 = t122 + (-pkin(10) * t50 + t20) * t96;
t95 = sin(qJ(6));
t99 = cos(qJ(6));
t3 = t99 * t7 - t95 * t8;
t134 = t99 * t8;
t4 = t95 * t7 + t134;
t116 = t99 * t100;
t70 = t95 * t96 - t116;
t73 = t95 * t100 + t99 * t96;
t141 = -t3 * t73 - t4 * t70;
t137 = t95 * pkin(5);
t135 = t99 * pkin(5);
t132 = t96 * t50;
t26 = t50 * t116 - t95 * t132;
t133 = t26 * t70;
t36 = t73 * t48;
t41 = t96 * t48;
t114 = t94 * t136;
t64 = t93 * t85 + t114;
t62 = pkin(9) + t64;
t52 = (-pkin(10) - t62) * t96;
t120 = t100 * t62;
t87 = t100 * pkin(10);
t53 = t87 + t120;
t30 = t99 * t52 - t95 * t53;
t31 = t95 * t52 + t99 * t53;
t131 = -t30 * t73 - t31 * t70;
t66 = (-pkin(10) - t82) * t96;
t119 = t100 * t82;
t67 = t87 + t119;
t43 = t99 * t66 - t95 * t67;
t44 = t95 * t66 + t99 * t67;
t130 = -t43 * t73 - t44 * t70;
t129 = t56 + t75;
t128 = t124 * t62;
t61 = -pkin(4) + t125;
t83 = -pkin(4) - t138;
t127 = t61 + t83;
t90 = t98 ^ 2;
t92 = t102 ^ 2;
t123 = t90 + t92;
t118 = t21 * t100;
t117 = t96 * t100;
t115 = t48 * t152;
t110 = -t48 * t62 + t50 * t61;
t109 = -t48 * t82 + t50 * t83;
t11 = t96 * t20 + t122;
t5 = -t10 * t96 + t11 * t100;
t108 = t10 * t100 + t11 * t96;
t81 = 0.2e1 * t117;
t69 = t73 ^ 2;
t68 = t70 ^ 2;
t51 = -0.2e1 * t73 * t70;
t47 = t50 ^ 2;
t45 = (-t70 * t95 - t73 * t99) * pkin(5);
t42 = t100 * t48;
t40 = t50 * t117;
t35 = t70 * t48;
t27 = (-t89 + t91) * t50;
t24 = t73 * t50;
t19 = t21 * t96;
t18 = t73 * t24;
t17 = t26 * t73;
t16 = t24 * t70;
t14 = pkin(5) * t132 + t21;
t13 = t14 * t73;
t12 = t14 * t70;
t9 = -t18 - t133;
t1 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t90, t98 * t143, 0, t92, 0, 0, pkin(1) * t143, -0.2e1 * pkin(1) * t98, 0.2e1 * t123 * pkin(7), t123 * pkin(7) ^ 2 + pkin(1) ^ 2, t74 ^ 2, t72 * t147, 0, t72 ^ 2, 0, 0, -0.2e1 * t86 * t72, t86 * t147, -0.2e1 * t54 * t74 + 0.2e1 * t55 * t72, t54 ^ 2 + t55 ^ 2 + t86 ^ 2, t47, t115, 0, t46, 0, 0, t48 * t148, t50 * t148, 0.2e1 * t21 * t50 - 0.2e1 * t23 * t48, t23 ^ 2 + t59 ^ 2 + t151, t91 * t47, -0.2e1 * t47 * t117, t121 * t150, t89 * t47, t96 * t115, t46, 0.2e1 * t10 * t48 + 0.2e1 * t21 * t132, -0.2e1 * t11 * t48 + 0.2e1 * t50 * t118, t108 * t152, t10 ^ 2 + t11 ^ 2 + t151, t26 ^ 2, -0.2e1 * t26 * t24, t26 * t150, t24 ^ 2, -t24 * t150, t46, 0.2e1 * t14 * t24 + 0.2e1 * t3 * t48, 0.2e1 * t14 * t26 - 0.2e1 * t4 * t48, -0.2e1 * t4 * t24 - 0.2e1 * t3 * t26, t14 ^ 2 + t3 ^ 2 + t4 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, 0, t102, 0, -t98 * pkin(7), -t102 * pkin(7), 0, 0, 0, 0, t74, 0, t72, 0, t54, -t55 (-t101 * t74 + t72 * t97) * pkin(2) (t101 * t54 + t55 * t97) * pkin(2), 0, 0, t50, 0, -t48, 0, -t21, -t23, t125 * t50 - t64 * t48, t125 * t21 + t23 * t64, t40, t27, t41, -t40, t42, 0, t110 * t96 - t118, t100 * t110 + t19, t5, t21 * t61 + t5 * t62, t17, t9, t36, t16, -t35, 0, t56 * t24 + t30 * t48 + t12, t56 * t26 - t31 * t48 + t13, -t31 * t24 - t30 * t26 + t141, t14 * t56 + t3 * t30 + t4 * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t88, -0.2e1 * t136, 0 (t101 ^ 2 + t97 ^ 2) * pkin(2) ^ 2, 0, 0, 0, 0, 0, 1, -0.2e1 * t125, -0.2e1 * t64, 0, t125 ^ 2 + t64 ^ 2, t89, t81, 0, t91, 0, 0, t61 * t144, t61 * t145, 0.2e1 * t128, t124 * t62 ^ 2 + t61 ^ 2, t69, t51, 0, t68, 0, 0, t70 * t149, t73 * t149, 0.2e1 * t131, t30 ^ 2 + t31 ^ 2 + t56 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, t72, 0, t54, -t55, 0, 0, 0, 0, t50, 0, -t48, 0, -t21, -t23 (-t48 * t93 - t50 * t94) * pkin(3) (-t21 * t94 + t23 * t93) * pkin(3), t40, t27, t41, -t40, t42, 0, t109 * t96 - t118, t100 * t109 + t19, t5, t21 * t83 + t5 * t82, t17, t9, t36, t16, -t35, 0, t75 * t24 + t43 * t48 + t12, t75 * t26 - t44 * t48 + t13, -t44 * t24 - t43 * t26 + t141, t14 * t75 + t3 * t43 + t4 * t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t88, -t136, 0, 0, 0, 0, 0, 0, 0, 1, -t125 + t138, -t114 + (-pkin(3) - t85) * t93, 0 (-t125 * t94 + t64 * t93) * pkin(3), t89, t81, 0, t91, 0, 0, -t127 * t100, t127 * t96, t126 + t128, t62 * t126 + t61 * t83, t69, t51, 0, t68, 0, 0, t129 * t70, t129 * t73, t130 + t131, t30 * t43 + t31 * t44 + t56 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t138, -0.2e1 * t139, 0 (t93 ^ 2 + t94 ^ 2) * pkin(3) ^ 2, t89, t81, 0, t91, 0, 0, t83 * t144, t83 * t145, 0.2e1 * t126, t124 * t82 ^ 2 + t83 ^ 2, t69, t51, 0, t68, 0, 0, t70 * t146, t73 * t146, 0.2e1 * t130, t43 ^ 2 + t44 ^ 2 + t75 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, t50, 0, t59, 0, 0, 0, 0, 0, 0, t42, -t41, -t124 * t50, t108, 0, 0, 0, 0, 0, 0, -t35, -t36, -t18 + t133, -t3 * t70 + t4 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t30 * t70 + t31 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t43 * t70 + t44 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69 + t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t121, 0, -t132, t48, t10, -t11, 0, 0, 0, 0, t26, 0, -t24, t48, t48 * t135 + t3, -t134 + (-t7 - t140) * t95 (-t24 * t95 - t26 * t99) * pkin(5) (t3 * t99 + t4 * t95) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t100, 0, -t96 * t62, -t120, 0, 0, 0, 0, t73, 0, -t70, 0, t30, -t31, t45 (t30 * t99 + t31 * t95) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, t100, 0, -t96 * t82, -t119, 0, 0, 0, 0, t73, 0, -t70, 0, t43, -t44, t45 (t43 * t99 + t44 * t95) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, -t96, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t73, 0 (-t70 * t99 + t73 * t95) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t135, -0.2e1 * t137, 0 (t95 ^ 2 + t99 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, 0, -t24, t48, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, -t70, 0, t30, -t31, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, -t70, 0, t43, -t44, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, -t73, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t135, -t137, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t1;
