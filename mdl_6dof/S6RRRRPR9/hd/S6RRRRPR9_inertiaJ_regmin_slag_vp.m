% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRRRPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x35]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 22:59
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRPR9_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR9_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR9_inertiaJ_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t106 = sin(pkin(12));
t108 = cos(pkin(12));
t131 = t106 ^ 2 + t108 ^ 2;
t132 = t131 * qJ(5);
t115 = cos(qJ(3));
t111 = sin(qJ(4));
t112 = sin(qJ(3));
t133 = t111 * t112;
t153 = cos(qJ(4));
t79 = -t153 * t115 + t133;
t160 = -0.2e1 * t79;
t107 = sin(pkin(6));
t116 = cos(qJ(2));
t136 = t107 * t116;
t109 = cos(pkin(6));
t113 = sin(qJ(2));
t137 = t107 * t113;
t89 = t112 * t137;
t121 = t109 * t115 - t89;
t127 = pkin(8) * t136;
t152 = pkin(1) * t113;
t68 = t127 + (pkin(9) + t152) * t109;
t69 = (-pkin(2) * t116 - pkin(9) * t113 - pkin(1)) * t107;
t45 = t112 * t69 + t115 * t68;
t35 = pkin(10) * t121 + t45;
t125 = t153 * t35;
t128 = pkin(3) * t136;
t44 = -t112 * t68 + t115 * t69;
t71 = t109 * t112 + t115 * t137;
t31 = -t71 * pkin(10) - t128 + t44;
t20 = t111 * t31 + t125;
t16 = -qJ(5) * t136 + t20;
t47 = t111 * t71 - t153 * t121;
t48 = t111 * t121 + t153 * t71;
t149 = t116 * pkin(1);
t90 = pkin(8) * t137;
t99 = -t115 * pkin(3) - pkin(2);
t55 = t89 * pkin(3) + t90 + (t99 - t149) * t109;
t24 = t47 * pkin(4) - t48 * qJ(5) + t55;
t7 = t106 * t24 + t108 * t16;
t5 = t7 * t108;
t6 = -t106 * t16 + t108 * t24;
t119 = -t6 * t106 + t5;
t161 = -0.2e1 * t47;
t151 = t108 * pkin(5);
t126 = t153 * pkin(3);
t98 = -t126 - pkin(4);
t82 = t98 - t151;
t159 = 0.2e1 * t82;
t96 = -pkin(4) - t151;
t158 = 0.2e1 * t96;
t157 = 0.2e1 * t99;
t156 = 0.2e1 * t115;
t155 = -pkin(10) - pkin(9);
t154 = pkin(4) - t98;
t150 = t111 * pkin(3);
t147 = t111 * t35 - t153 * t31;
t122 = t153 * t112;
t80 = t111 * t115 + t122;
t56 = t79 * pkin(4) - t80 * qJ(5) + t99;
t88 = t155 * t115;
t65 = t155 * t133 - t153 * t88;
t33 = t106 * t56 + t108 * t65;
t146 = t82 + t96;
t95 = qJ(5) + t150;
t145 = t131 * t95;
t144 = t106 * t47;
t143 = t106 * t80;
t142 = t108 * t80;
t141 = t108 * t95;
t17 = pkin(4) * t136 + t147;
t15 = t17 * t106;
t140 = t17 * t108;
t64 = -t111 * t88 - t155 * t122;
t58 = t64 * t106;
t139 = t64 * t108;
t104 = t107 ^ 2;
t138 = t104 * t116;
t135 = t108 * qJ(5);
t134 = t109 * t113;
t130 = -0.2e1 * t136;
t129 = 0.2e1 * t136;
t124 = t112 * t136;
t123 = t115 * t136;
t32 = -t106 * t65 + t108 * t56;
t120 = -pkin(4) * t80 - qJ(5) * t79;
t118 = -t79 * t95 + t80 * t98;
t18 = -t32 * t106 + t33 * t108;
t110 = sin(qJ(6));
t114 = cos(qJ(6));
t78 = t114 * t106 + t110 * t108;
t77 = t110 * t106 - t114 * t108;
t102 = t108 * pkin(11);
t93 = t104 * t116 ^ 2;
t84 = t102 + t135;
t83 = (-pkin(11) - qJ(5)) * t106;
t76 = t78 ^ 2;
t75 = t102 + t141;
t74 = (-pkin(11) - t95) * t106;
t73 = pkin(1) * t134 + t127;
t72 = t109 * t149 - t90;
t67 = t90 + (-pkin(2) - t149) * t109;
t63 = t78 * t79;
t62 = t77 * t79;
t61 = t110 * t83 + t114 * t84;
t60 = -t110 * t84 + t114 * t83;
t59 = -0.2e1 * t78 * t77;
t54 = t110 * t74 + t114 * t75;
t53 = -t110 * t75 + t114 * t74;
t50 = t77 * t80;
t49 = t78 * t80;
t46 = pkin(5) * t143 + t64;
t43 = t50 * t78;
t42 = -t106 * t136 + t108 * t48;
t41 = t106 * t48 + t108 * t136;
t40 = t78 * t47;
t39 = t77 * t47;
t37 = t46 * t78;
t36 = t46 * t77;
t29 = -pkin(11) * t143 + t33;
t28 = t79 * pkin(5) - pkin(11) * t142 + t32;
t27 = -t78 * t49 + t50 * t77;
t26 = -t110 * t41 + t114 * t42;
t25 = t110 * t42 + t114 * t41;
t21 = t26 * t78;
t13 = t110 * t28 + t114 * t29;
t12 = -t110 * t29 + t114 * t28;
t11 = t41 * pkin(5) + t17;
t10 = t11 * t78;
t9 = t11 * t77;
t8 = -t78 * t25 - t26 * t77;
t4 = -t41 * pkin(11) + t7;
t3 = t47 * pkin(5) - t42 * pkin(11) + t6;
t2 = t110 * t3 + t114 * t4;
t1 = -t110 * t4 + t114 * t3;
t14 = [1, 0, 0, t104 * t113 ^ 2, 0.2e1 * t113 * t138, 0.2e1 * t107 * t134, t109 * t129, t109 ^ 2, 0.2e1 * pkin(1) * t138 + 0.2e1 * t72 * t109, -0.2e1 * t104 * t152 - 0.2e1 * t73 * t109, t71 ^ 2, 0.2e1 * t71 * t121, t71 * t130, t121 * t130, t93, -0.2e1 * t121 * t67 - 0.2e1 * t44 * t136, 0.2e1 * t45 * t136 + 0.2e1 * t67 * t71, t48 ^ 2, t48 * t161, t48 * t130, t47 * t129, t93, 0.2e1 * t136 * t147 + 0.2e1 * t55 * t47, 0.2e1 * t20 * t136 + 0.2e1 * t55 * t48, 0.2e1 * t17 * t41 + 0.2e1 * t6 * t47, 0.2e1 * t17 * t42 - 0.2e1 * t7 * t47, -0.2e1 * t7 * t41 - 0.2e1 * t6 * t42, t17 ^ 2 + t6 ^ 2 + t7 ^ 2, t26 ^ 2, -0.2e1 * t26 * t25, 0.2e1 * t26 * t47, t25 * t161, t47 ^ 2, 0.2e1 * t1 * t47 + 0.2e1 * t11 * t25, 0.2e1 * t11 * t26 - 0.2e1 * t2 * t47; 0, 0, 0, 0, 0, t137, t136, t109, t72, -t73, t71 * t112, t112 * t121 + t71 * t115, -t124, -t123, 0, pkin(2) * t121 + pkin(9) * t124 - t67 * t115, -pkin(2) * t71 + pkin(9) * t123 + t67 * t112, t48 * t80, -t80 * t47 - t48 * t79, -t80 * t136, t79 * t136, 0, t64 * t136 + t99 * t47 + t55 * t79, t65 * t136 + t99 * t48 + t55 * t80, t80 * t15 + t32 * t47 + t64 * t41 + t6 * t79, t80 * t140 - t33 * t47 + t64 * t42 - t7 * t79, -t32 * t42 - t33 * t41 + (-t106 * t7 - t108 * t6) * t80, t17 * t64 + t6 * t32 + t7 * t33, -t26 * t50, t50 * t25 - t26 * t49, t26 * t79 - t50 * t47, -t25 * t79 - t49 * t47, t47 * t79, t1 * t79 + t11 * t49 + t12 * t47 + t46 * t25, -t11 * t50 - t13 * t47 - t2 * t79 + t46 * t26; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t112 ^ 2, t112 * t156, 0, 0, 0, pkin(2) * t156, -0.2e1 * pkin(2) * t112, t80 ^ 2, t80 * t160, 0, 0, 0, t79 * t157, t80 * t157, 0.2e1 * t32 * t79 + 0.2e1 * t80 * t58, 0.2e1 * t80 * t139 - 0.2e1 * t33 * t79, 0.2e1 * (-t106 * t33 - t108 * t32) * t80, t32 ^ 2 + t33 ^ 2 + t64 ^ 2, t50 ^ 2, 0.2e1 * t50 * t49, t50 * t160, t49 * t160, t79 ^ 2, 0.2e1 * t12 * t79 + 0.2e1 * t46 * t49, -0.2e1 * t13 * t79 - 0.2e1 * t46 * t50; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, t121, -t136, t44, -t45, 0, 0, t48, -t47, -t136, -t126 * t136 - t147, -t125 + (-t31 + t128) * t111, -t95 * t144 + t98 * t41 - t140, -t47 * t141 + t98 * t42 + t15, -t41 * t141 + t5 + (t42 * t95 - t6) * t106, t119 * t95 + t17 * t98, t21, t8, t40, -t39, 0, t82 * t25 + t53 * t47 + t9, t82 * t26 - t54 * t47 + t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, t115, 0, -t112 * pkin(9), -t115 * pkin(9), 0, 0, t80, -t79, 0, -t64, -t65, t106 * t118 - t139, t108 * t118 + t58, t18, t18 * t95 + t64 * t98, -t43, t27, t63, -t62, 0, t82 * t49 + t53 * t79 + t36, -t82 * t50 - t54 * t79 + t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t126, -0.2e1 * t150, -0.2e1 * t98 * t108, 0.2e1 * t98 * t106, 0.2e1 * t145, t131 * t95 ^ 2 + t98 ^ 2, t76, t59, 0, 0, 0, t77 * t159, t78 * t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, -t47, -t136, -t147, -t20, -pkin(4) * t41 - qJ(5) * t144 - t140, -pkin(4) * t42 - t47 * t135 + t15 (t106 * t42 - t108 * t41) * qJ(5) + t119, -t17 * pkin(4) + qJ(5) * t119, t21, t8, t40, -t39, 0, t96 * t25 + t60 * t47 + t9, t96 * t26 - t61 * t47 + t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t80, -t79, 0, -t64, -t65, t106 * t120 - t139, t108 * t120 + t58, t18, -t64 * pkin(4) + qJ(5) * t18, -t43, t27, t63, -t62, 0, t96 * t49 + t60 * t79 + t36, -t96 * t50 - t61 * t79 + t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t126, -t150, t154 * t108, -t154 * t106, t132 + t145, -t98 * pkin(4) + t95 * t132, t76, t59, 0, 0, 0, t146 * t77, t146 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(4) * t108, -0.2e1 * pkin(4) * t106, 0.2e1 * t132, t131 * qJ(5) ^ 2 + pkin(4) ^ 2, t76, t59, 0, 0, 0, t77 * t158, t78 * t158; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41, t42, 0, t17, 0, 0, 0, 0, 0, t25, t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, t142, 0, t64, 0, 0, 0, 0, 0, t49, -t50; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t108, t106, 0, t98, 0, 0, 0, 0, 0, t77, t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t108, t106, 0, -pkin(4), 0, 0, 0, 0, 0, t77, t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, -t25, t47, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t50, -t49, t79, t12, -t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78, -t77, 0, t53, -t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78, -t77, 0, t60, -t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t14;