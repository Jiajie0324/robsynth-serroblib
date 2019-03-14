% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRRPP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:40
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRPP8_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP8_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP8_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t97 = sin(qJ(4));
t91 = t97 ^ 2;
t100 = cos(qJ(4));
t93 = t100 ^ 2;
t179 = t91 + t93;
t102 = cos(qJ(2));
t95 = sin(pkin(6));
t140 = t95 * t102;
t101 = cos(qJ(3));
t99 = sin(qJ(2));
t156 = t95 * t99;
t96 = cos(pkin(6));
t98 = sin(qJ(3));
t55 = t101 * t156 + t96 * t98;
t32 = t100 * t140 + t55 * t97;
t145 = t32 * t100;
t34 = t100 * t55 - t140 * t97;
t28 = t34 * t97;
t9 = (t145 + t28) * t98;
t103 = pkin(4) + pkin(5);
t135 = t100 * qJ(5);
t178 = t103 * t97 - t135;
t139 = t97 * qJ(5);
t177 = t100 * t103 + t139;
t30 = t32 ^ 2;
t53 = -t101 * t96 + t156 * t98;
t176 = t53 ^ 2;
t175 = -0.2e1 * t55;
t118 = -pkin(4) * t100 - t139;
t63 = -pkin(3) + t118;
t174 = -0.2e1 * t63;
t173 = 0.2e1 * t95;
t172 = 0.2e1 * t98;
t171 = pkin(1) * t99;
t170 = pkin(3) * t97;
t169 = pkin(10) * t34;
t50 = t53 * pkin(4);
t168 = t97 * pkin(10);
t167 = t98 * pkin(9);
t166 = pkin(1) * t102;
t165 = pkin(9) * t100;
t164 = pkin(10) * t101;
t127 = pkin(8) * t140;
t43 = t127 + (pkin(9) + t171) * t96;
t44 = (-pkin(2) * t102 - pkin(9) * t99 - pkin(1)) * t95;
t20 = t101 * t44 - t43 * t98;
t18 = pkin(3) * t140 - t20;
t163 = t18 * t97;
t162 = t34 * t32;
t161 = t34 * t53;
t49 = t53 * qJ(5);
t73 = pkin(8) * t156;
t42 = t73 + (-pkin(2) - t166) * t96;
t17 = t53 * pkin(3) - t55 * pkin(10) + t42;
t21 = t101 * t43 + t44 * t98;
t19 = -pkin(10) * t140 + t21;
t7 = t100 * t19 + t17 * t97;
t4 = t49 + t7;
t160 = t4 * t100;
t159 = t53 * t32;
t158 = t55 * t98;
t157 = t7 * t100;
t155 = t96 * t99;
t45 = t97 * t53;
t154 = t97 * t98;
t153 = t98 * t53;
t152 = pkin(5) + t103;
t6 = t100 * t17 - t19 * t97;
t137 = t97 * t101;
t64 = -pkin(3) * t101 - pkin(10) * t98 - pkin(2);
t151 = pkin(9) * t137 - t100 * t64;
t133 = t100 * t101;
t41 = pkin(9) * t133 + t64 * t97;
t150 = t179 * pkin(10) ^ 2;
t149 = qJ(5) * t32;
t148 = t100 * t53;
t83 = t100 * t98;
t90 = t95 ^ 2;
t147 = t102 * t90;
t146 = t18 * t100;
t144 = t34 * t100;
t35 = (-pkin(9) - t178) * t98;
t143 = t35 * t100;
t119 = -pkin(4) * t97 + t135;
t47 = (pkin(9) - t119) * t98;
t142 = t47 * t100;
t46 = t53 * t101;
t58 = pkin(3) + t177;
t141 = t58 * t100;
t138 = t97 * t100;
t136 = t98 * t101;
t134 = t100 * qJ(6);
t132 = t101 * qJ(5);
t131 = -0.2e1 * t159;
t130 = pkin(10) * t45;
t129 = 0.2e1 * t140;
t128 = pkin(10) * t148;
t24 = t32 * t154;
t5 = -t50 - t6;
t126 = 0.2e1 * t49 + t7;
t89 = t101 * pkin(4);
t37 = t89 + t151;
t125 = -0.2e1 * t132 + t41;
t92 = t98 ^ 2;
t124 = t92 * t138;
t123 = t98 * t140;
t122 = t97 * t136;
t121 = t98 * t133;
t120 = t101 * t140;
t36 = -t132 + t41;
t117 = -t32 * t97 + t144;
t115 = t100 * t36 + t37 * t97;
t114 = t100 * t41 + t151 * t97;
t113 = t21 * t101 - t20 * t98;
t112 = t34 * qJ(5) - t18;
t111 = t34 * qJ(6) - t5;
t110 = -t101 * t32 + t153 * t97;
t16 = -t101 * t34 + t53 * t83;
t109 = t134 * t98 - t37;
t108 = pkin(9) ^ 2;
t106 = qJ(5) ^ 2;
t105 = 0.2e1 * qJ(5);
t94 = t101 ^ 2;
t88 = t100 * pkin(10);
t86 = t92 * t108;
t82 = t93 * t92;
t81 = t91 * t92;
t79 = t90 * t102 ^ 2;
t78 = -0.2e1 * t138;
t76 = pkin(10) * t137;
t72 = qJ(6) * t154;
t71 = t98 * t138;
t69 = -0.2e1 * t121;
t68 = 0.2e1 * t124;
t67 = 0.2e1 * t122;
t66 = t88 - t134;
t65 = (pkin(10) - qJ(6)) * t97;
t62 = 0.2e1 * t179 * pkin(10);
t61 = (t91 - t93) * t98;
t57 = pkin(1) * t155 + t127;
t56 = t166 * t96 - t73;
t31 = t34 ^ 2;
t29 = t32 * qJ(6);
t27 = t36 + t72;
t26 = pkin(10) * t145;
t25 = t98 * t144;
t23 = pkin(5) * t101 - t109;
t22 = 0.2e1 * t161;
t11 = 0.2e1 * t162;
t8 = pkin(4) * t32 - t112;
t3 = -t103 * t32 + t112;
t2 = t29 + t4;
t1 = -pkin(5) * t53 - t111;
t10 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t90 * t99 ^ 2, 0.2e1 * t99 * t147, t155 * t173, t79, t96 * t129, t96 ^ 2, 0.2e1 * pkin(1) * t147 + 0.2e1 * t56 * t96, -0.2e1 * t171 * t90 - 0.2e1 * t57 * t96 (t102 * t57 - t56 * t99) * t173, pkin(1) ^ 2 * t90 + t56 ^ 2 + t57 ^ 2, t55 ^ 2, t53 * t175, t140 * t175, t176, t53 * t129, t79, -0.2e1 * t140 * t20 + 0.2e1 * t42 * t53, 0.2e1 * t140 * t21 + 0.2e1 * t42 * t55, -0.2e1 * t20 * t55 - 0.2e1 * t21 * t53, t20 ^ 2 + t21 ^ 2 + t42 ^ 2, t31, -0.2e1 * t162, t22, t30, t131, t176, 0.2e1 * t18 * t32 + 0.2e1 * t53 * t6, 0.2e1 * t18 * t34 - 0.2e1 * t53 * t7, -0.2e1 * t32 * t7 - 0.2e1 * t34 * t6, t18 ^ 2 + t6 ^ 2 + t7 ^ 2, t31, t22, t11, t176, 0.2e1 * t159, t30, 0.2e1 * t32 * t8 - 0.2e1 * t5 * t53, -0.2e1 * t32 * t4 + 0.2e1 * t34 * t5, -0.2e1 * t34 * t8 + 0.2e1 * t4 * t53, t4 ^ 2 + t5 ^ 2 + t8 ^ 2, t31, t11, -0.2e1 * t161, t30, t131, t176, -0.2e1 * t1 * t53 - 0.2e1 * t3 * t32, 0.2e1 * t2 * t53 + 0.2e1 * t3 * t34, -0.2e1 * t1 * t34 + 0.2e1 * t2 * t32, t1 ^ 2 + t2 ^ 2 + t3 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156, 0, t140, t96, t56, -t57, 0, 0, t158, t101 * t55 - t153, -t123, -t46, -t120, 0, -pkin(2) * t53 + pkin(9) * t123 - t101 * t42, -pkin(2) * t55 + pkin(9) * t120 + t42 * t98 (-t46 + t158) * pkin(9) + t113, -t42 * pkin(2) + pkin(9) * t113, t25, -t9, t16, t24, -t110, -t46, -t6 * t101 - t151 * t53 + (pkin(9) * t32 + t163) * t98, t7 * t101 - t41 * t53 + (pkin(9) * t34 + t146) * t98, -t41 * t32 + t151 * t34 + (-t100 * t6 - t7 * t97) * t98, -t151 * t6 + t167 * t18 + t41 * t7, t25, t16, t9, -t46, t110, t24, t101 * t5 + t154 * t8 + t32 * t47 - t37 * t53, -t36 * t32 + t37 * t34 + (t100 * t5 - t4 * t97) * t98, -t101 * t4 - t34 * t47 + t36 * t53 - t8 * t83, t36 * t4 + t37 * t5 + t47 * t8, t25, t9, -t16, t24, -t110, -t46, t1 * t101 - t154 * t3 - t23 * t53 - t32 * t35, -t101 * t2 + t27 * t53 + t3 * t83 + t34 * t35, -t23 * t34 + t27 * t32 + (-t1 * t100 + t2 * t97) * t98, t1 * t23 + t2 * t27 + t3 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t92, 0.2e1 * t136, 0, t94, 0, 0, 0.2e1 * pkin(2) * t101, -0.2e1 * pkin(2) * t98, 0.2e1 * (t92 + t94) * pkin(9), pkin(2) ^ 2 + t108 * t94 + t86, t82, -0.2e1 * t124, t69, t81, t67, t94, 0.2e1 * pkin(9) * t92 * t97 + 0.2e1 * t101 * t151, 0.2e1 * t101 * t41 + 0.2e1 * t165 * t92 (t100 * t151 - t41 * t97) * t172, t151 ^ 2 + t41 ^ 2 + t86, t82, t69, t68, t94, -0.2e1 * t122, t81, 0.2e1 * t101 * t37 + 0.2e1 * t154 * t47 (t100 * t37 - t36 * t97) * t172, -0.2e1 * t101 * t36 - 0.2e1 * t142 * t98, t36 ^ 2 + t37 ^ 2 + t47 ^ 2, t82, t68, 0.2e1 * t121, t81, t67, t94, 0.2e1 * t101 * t23 - 0.2e1 * t154 * t35, -0.2e1 * t101 * t27 + 0.2e1 * t143 * t98 (-t100 * t23 + t27 * t97) * t172, t23 ^ 2 + t27 ^ 2 + t35 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, 0, -t53, -t140, t20, -t21, 0, 0, t28, t117, t45, -t145, t148, 0, -pkin(3) * t32 - t130 - t146, -pkin(3) * t34 - t128 + t163, t157 - t26 + (-t6 + t169) * t97, -t18 * pkin(3) + (-t6 * t97 + t157) * pkin(10), t28, t45, -t117, 0, -t148, -t145, -t100 * t8 + t32 * t63 - t130, t160 - t26 + (t5 + t169) * t97, -t34 * t63 - t8 * t97 + t128, t8 * t63 + (t5 * t97 + t160) * pkin(10), t28, -t117, -t45, -t145, t148, 0, t100 * t3 - t32 * t58 - t53 * t65, t3 * t97 + t34 * t58 + t53 * t66, -t1 * t97 - t100 * t2 + t32 * t66 - t34 * t65, t1 * t65 + t2 * t66 + t3 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t98, 0, t101, 0, -t167, -t101 * pkin(9), 0, 0, t71, -t61, -t137, -t71, -t133, 0, t76 + (-t165 - t170) * t98, pkin(9) * t154 + (-pkin(3) * t98 + t164) * t100, t114, -pkin(3) * t167 + pkin(10) * t114, t71, -t137, t61, 0, t133, -t71, t154 * t63 - t142 + t76, t115, -t47 * t97 + (-t63 * t98 - t164) * t100, pkin(10) * t115 + t47 * t63, t71, t61, t137, -t71, -t133, 0, t101 * t65 - t154 * t58 + t143, -t101 * t66 + t141 * t98 + t35 * t97 (t66 * t98 - t23) * t97 + (-t65 * t98 - t27) * t100, t23 * t65 + t27 * t66 + t35 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t91, 0.2e1 * t138, 0, t93, 0, 0, 0.2e1 * pkin(3) * t100, -0.2e1 * t170, t62, pkin(3) ^ 2 + t150, t91, 0, t78, 0, 0, t93, t100 * t174, t62, t97 * t174, t63 ^ 2 + t150, t91, t78, 0, t93, 0, 0, 0.2e1 * t141, 0.2e1 * t58 * t97, -0.2e1 * t100 * t66 - 0.2e1 * t65 * t97, t58 ^ 2 + t65 ^ 2 + t66 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t34, 0, -t32, t53, t6, -t7, 0, 0, 0, t34, 0, t53, t32, 0, -t5 + t50, -pkin(4) * t34 - t149, t126, -pkin(4) * t5 + qJ(5) * t4, 0, 0, -t34, 0, -t32, t53, t152 * t53 + t111, t29 + t126, t103 * t34 + t149, qJ(5) * t2 - t1 * t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t83, 0, -t154, -t101, -t151, -t41, 0, 0, 0, t83, 0, -t101, t154, 0, -0.2e1 * t89 - t151, t118 * t98, t125, -pkin(4) * t37 + qJ(5) * t36, 0, 0, -t83, 0, -t154, -t101, -t101 * t152 + t109, t72 + t125, t177 * t98, qJ(5) * t27 - t103 * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, t100, 0, -t168, -t88, 0, 0, 0, t97, 0, 0, -t100, 0, -t168, t119, t88, t119 * pkin(10), 0, 0, -t97, 0, t100, 0, -t65, t66, t178, qJ(5) * t66 - t103 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(4), 0, t105, pkin(4) ^ 2 + t106, 0, 0, 0, 0, 0, 1, 0.2e1 * t103, t105, 0, t103 ^ 2 + t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, t34, 0, t5, 0, 0, 0, 0, 0, 0, -t53, 0, -t34, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, t83, 0, t37, 0, 0, 0, 0, 0, 0, t101, 0, -t83, t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, t168, 0, 0, 0, 0, 0, 0, 0, 0, -t97, t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(4), 0, 0, 0, 0, 0, 0, -1, 0, 0, -t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t32, t34, 0, t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t154, t83, 0, t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, t97, 0, t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t10;