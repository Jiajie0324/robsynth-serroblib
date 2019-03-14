% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRRRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x38]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 04:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRRR6_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR6_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR6_inertiaJ_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t113 = sin(qJ(4));
t110 = cos(pkin(6));
t162 = cos(qJ(3));
t114 = sin(qJ(3));
t109 = sin(pkin(6));
t115 = sin(qJ(2));
t141 = t109 * t115;
t94 = t114 * t141;
t120 = -t110 * t162 + t94;
t161 = cos(qJ(4));
t124 = t109 * t162;
t75 = t110 * t114 + t115 * t124;
t51 = t113 * t75 + t161 * t120;
t172 = -0.2e1 * t51;
t171 = 0.2e1 * t51;
t136 = t113 * t114;
t86 = -t161 * t162 + t136;
t170 = -0.2e1 * t86;
t169 = 0.2e1 * t86;
t127 = t161 * pkin(3);
t102 = -t127 - pkin(4);
t117 = cos(qJ(5));
t155 = t117 * pkin(5);
t90 = t102 - t155;
t168 = 0.2e1 * t90;
t103 = -pkin(4) - t155;
t167 = 0.2e1 * t103;
t104 = -t162 * pkin(3) - pkin(2);
t166 = 0.2e1 * t104;
t165 = -pkin(9) - pkin(10);
t164 = t51 * pkin(5);
t163 = t86 * pkin(5);
t160 = pkin(1) * t115;
t111 = sin(qJ(6));
t159 = t111 * pkin(5);
t158 = t113 * pkin(3);
t116 = cos(qJ(6));
t157 = t116 * pkin(5);
t112 = sin(qJ(5));
t118 = cos(qJ(2));
t140 = t109 * t118;
t52 = -t113 * t120 + t161 * t75;
t42 = t112 * t52 + t117 * t140;
t129 = pkin(8) * t140;
t71 = t129 + (pkin(9) + t160) * t110;
t72 = (-pkin(2) * t118 - pkin(9) * t115 - pkin(1)) * t109;
t46 = t114 * t72 + t162 * t71;
t34 = -pkin(10) * t120 + t46;
t126 = t161 * t34;
t130 = pkin(3) * t140;
t45 = -t114 * t71 + t162 * t72;
t30 = -t75 * pkin(10) - t130 + t45;
t18 = t113 * t30 + t126;
t16 = -pkin(11) * t140 + t18;
t153 = t118 * pkin(1);
t95 = pkin(8) * t141;
t56 = t94 * pkin(3) + t95 + (t104 - t153) * t110;
t21 = t51 * pkin(4) - t52 * pkin(11) + t56;
t7 = t112 * t21 + t117 * t16;
t5 = -t42 * pkin(12) + t7;
t156 = t116 * t5;
t154 = t117 * pkin(11);
t152 = pkin(4) - t102;
t151 = t113 * t34 - t161 * t30;
t47 = t112 * t51;
t123 = t161 * t114;
t88 = t113 * t162 + t123;
t150 = t112 * t88;
t128 = t162 * pkin(9);
t93 = t162 * pkin(10) + t128;
t68 = t165 * t136 + t161 * t93;
t148 = t117 * t68;
t59 = t86 * pkin(4) - t88 * pkin(11) + t104;
t28 = t148 + (-pkin(12) * t88 + t59) * t112;
t149 = t116 * t28;
t48 = t117 * t51;
t147 = t117 * t88;
t15 = pkin(4) * t140 + t151;
t14 = t15 * t112;
t146 = t15 * t117;
t43 = -t112 * t140 + t117 * t52;
t38 = t43 * t112;
t145 = t43 * t117;
t66 = t113 * t93 - t165 * t123;
t61 = t66 * t112;
t144 = t66 * t117;
t143 = t103 + t90;
t106 = t109 ^ 2;
t142 = t106 * t118;
t139 = t110 * t115;
t101 = pkin(11) + t158;
t138 = t112 * t101;
t137 = t112 * t117;
t135 = t117 * t101;
t134 = 0.2e1 * t162;
t133 = t88 * t170;
t132 = -0.2e1 * t140;
t131 = 0.2e1 * t140;
t125 = t114 * t140;
t6 = -t112 * t16 + t117 * t21;
t4 = -t43 * pkin(12) + t164 + t6;
t1 = -t111 * t5 + t116 * t4;
t32 = -t112 * t68 + t117 * t59;
t27 = -pkin(12) * t147 + t163 + t32;
t12 = -t111 * t28 + t116 * t27;
t122 = t118 * t124;
t121 = -pkin(4) * t88 - pkin(11) * t86;
t119 = -t101 * t86 + t102 * t88;
t87 = t111 * t117 + t116 * t112;
t85 = t111 * t112 - t116 * t117;
t108 = t117 ^ 2;
t107 = t112 ^ 2;
t105 = t117 * pkin(12);
t98 = t106 * t118 ^ 2;
t97 = 0.2e1 * t137;
t92 = t105 + t154;
t91 = (-pkin(11) - pkin(12)) * t112;
t84 = t88 ^ 2;
t83 = t87 ^ 2;
t82 = t86 ^ 2;
t81 = t105 + t135;
t80 = (-pkin(12) - t101) * t112;
t79 = pkin(1) * t139 + t129;
t78 = t110 * t153 - t95;
t77 = t117 * t86;
t76 = t112 * t86;
t74 = t88 * t137;
t70 = t95 + (-pkin(2) - t153) * t110;
t67 = t111 * t91 + t116 * t92;
t65 = -t111 * t92 + t116 * t91;
t64 = t87 * t86;
t63 = t85 * t86;
t62 = -0.2e1 * t87 * t85;
t60 = (-t107 + t108) * t88;
t58 = t111 * t80 + t116 * t81;
t57 = -t111 * t81 + t116 * t80;
t54 = t85 * t88;
t53 = t87 * t88;
t50 = t51 ^ 2;
t49 = pkin(5) * t150 + t66;
t44 = t54 * t87;
t41 = t87 * t51;
t40 = t51 * t86;
t39 = t85 * t51;
t36 = t49 * t87;
t35 = t49 * t85;
t33 = t112 * t59 + t148;
t25 = -t87 * t53 + t54 * t85;
t24 = -t111 * t42 + t116 * t43;
t23 = -t112 * t42 + t145;
t22 = t111 * t43 + t116 * t42;
t19 = t24 * t87;
t13 = t111 * t27 + t149;
t11 = t42 * pkin(5) + t15;
t10 = t11 * t87;
t9 = t11 * t85;
t8 = -t87 * t22 - t24 * t85;
t2 = t111 * t4 + t156;
t3 = [1, 0, 0, t106 * t115 ^ 2, 0.2e1 * t115 * t142, 0.2e1 * t109 * t139, t110 * t131, t110 ^ 2, 0.2e1 * pkin(1) * t142 + 0.2e1 * t78 * t110, -0.2e1 * t106 * t160 - 0.2e1 * t79 * t110, t75 ^ 2, -0.2e1 * t75 * t120, t75 * t132, t120 * t131, t98, 0.2e1 * t120 * t70 - 0.2e1 * t140 * t45, 0.2e1 * t140 * t46 + 0.2e1 * t70 * t75, t52 ^ 2, t52 * t172, t52 * t132, t51 * t131, t98, 0.2e1 * t140 * t151 + 0.2e1 * t56 * t51, 0.2e1 * t140 * t18 + 0.2e1 * t56 * t52, t43 ^ 2, -0.2e1 * t43 * t42, t43 * t171, t42 * t172, t50, 0.2e1 * t15 * t42 + 0.2e1 * t6 * t51, 0.2e1 * t15 * t43 - 0.2e1 * t7 * t51, t24 ^ 2, -0.2e1 * t24 * t22, t24 * t171, t22 * t172, t50, 0.2e1 * t1 * t51 + 0.2e1 * t11 * t22, 0.2e1 * t11 * t24 - 0.2e1 * t2 * t51; 0, 0, 0, 0, 0, t141, t140, t110, t78, -t79, t75 * t114, -t114 * t120 + t75 * t162, -t125, -t122, 0, -pkin(2) * t120 + pkin(9) * t125 - t70 * t162, -pkin(2) * t75 + pkin(9) * t122 + t70 * t114, t52 * t88, -t88 * t51 - t52 * t86, -t88 * t140, t86 * t140, 0, t104 * t51 + t140 * t66 + t56 * t86, t104 * t52 + t140 * t68 + t56 * t88, t88 * t145 (-t117 * t42 - t38) * t88, t147 * t51 + t43 * t86, -t150 * t51 - t42 * t86, t40, t14 * t88 + t32 * t51 + t66 * t42 + t6 * t86, t146 * t88 - t33 * t51 + t66 * t43 - t7 * t86, -t24 * t54, t54 * t22 - t24 * t53, t24 * t86 - t54 * t51, -t22 * t86 - t53 * t51, t40, t1 * t86 + t11 * t53 + t12 * t51 + t49 * t22, -t11 * t54 - t13 * t51 - t2 * t86 + t49 * t24; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t114 ^ 2, t114 * t134, 0, 0, 0, pkin(2) * t134, -0.2e1 * pkin(2) * t114, t84, t133, 0, 0, 0, t86 * t166, t88 * t166, t108 * t84, -0.2e1 * t84 * t137, t147 * t169, t112 * t133, t82, 0.2e1 * t32 * t86 + 0.2e1 * t61 * t88, 0.2e1 * t144 * t88 - 0.2e1 * t33 * t86, t54 ^ 2, 0.2e1 * t54 * t53, -t54 * t169, t53 * t170, t82, 0.2e1 * t12 * t86 + 0.2e1 * t49 * t53, -0.2e1 * t13 * t86 - 0.2e1 * t49 * t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, -t120, -t140, t45, -t46, 0, 0, t52, -t51, -t140, -t127 * t140 - t151, -t126 + (-t30 + t130) * t113, t38, t23, t47, t48, 0, t102 * t42 - t138 * t51 - t146, t102 * t43 - t135 * t51 + t14, t19, t8, t41, -t39, 0, t90 * t22 + t57 * t51 + t9, t90 * t24 - t58 * t51 + t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114, t162, 0, -t114 * pkin(9), -t128, 0, 0, t88, -t86, 0, -t66, -t68, t74, t60, t76, t77, 0, t112 * t119 - t144, t117 * t119 + t61, -t44, t25, t64, -t63, 0, t90 * t53 + t57 * t86 + t35, -t90 * t54 - t58 * t86 + t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t127, -0.2e1 * t158, t107, t97, 0, 0, 0, -0.2e1 * t102 * t117, 0.2e1 * t102 * t112, t83, t62, 0, 0, 0, t85 * t168, t87 * t168; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, -t51, -t140, -t151, -t18, t38, t23, t47, t48, 0, -pkin(4) * t42 - pkin(11) * t47 - t146, -pkin(4) * t43 - pkin(11) * t48 + t14, t19, t8, t41, -t39, 0, t103 * t22 + t65 * t51 + t9, t103 * t24 - t67 * t51 + t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88, -t86, 0, -t66, -t68, t74, t60, t76, t77, 0, t112 * t121 - t144, t117 * t121 + t61, -t44, t25, t64, -t63, 0, t103 * t53 + t65 * t86 + t35, -t103 * t54 - t67 * t86 + t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t127, -t158, t107, t97, 0, 0, 0, t152 * t117, -t152 * t112, t83, t62, 0, 0, 0, t143 * t85, t143 * t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t107, t97, 0, 0, 0, 0.2e1 * pkin(4) * t117, -0.2e1 * pkin(4) * t112, t83, t62, 0, 0, 0, t85 * t167, t87 * t167; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, -t42, t51, t6, -t7, 0, 0, t24, -t22, t51, t157 * t51 + t1, -t156 + (-t4 - t164) * t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t147, -t150, t86, t32, -t33, 0, 0, -t54, -t53, t86, t157 * t86 + t12, -t149 + (-t27 - t163) * t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, t117, 0, -t138, -t135, 0, 0, t87, -t85, 0, t57, -t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, t117, 0, -t112 * pkin(11), -t154, 0, 0, t87, -t85, 0, t65, -t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t157, -0.2e1 * t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, -t22, t51, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t54, -t53, t86, t12, -t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, -t85, 0, t57, -t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t87, -t85, 0, t65, -t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t157, -t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t3;