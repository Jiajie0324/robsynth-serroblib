% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPRP11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 17:50
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPRP11_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP11_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP11_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t94 = sin(qJ(3));
t87 = t94 ^ 2;
t97 = cos(qJ(3));
t89 = t97 ^ 2;
t155 = t87 + t89;
t91 = sin(pkin(6));
t95 = sin(qJ(2));
t138 = t91 * t95;
t92 = cos(pkin(6));
t47 = t138 * t94 - t92 * t97;
t154 = t47 ^ 2;
t49 = t138 * t97 + t92 * t94;
t45 = t49 ^ 2;
t153 = -0.2e1 * t49;
t93 = sin(qJ(5));
t75 = pkin(5) * t93 + qJ(4);
t152 = 0.2e1 * t75;
t151 = 0.2e1 * t91;
t150 = -0.2e1 * t94;
t149 = 0.2e1 * t97;
t148 = 0.2e1 * qJ(4);
t147 = pkin(3) + pkin(10);
t146 = pkin(1) * t95;
t98 = cos(qJ(2));
t145 = pkin(1) * t98;
t144 = t49 * pkin(5);
t143 = t94 * pkin(5);
t96 = cos(qJ(5));
t142 = t96 * pkin(5);
t137 = t91 * t98;
t32 = t137 * t93 + t47 * t96;
t141 = t32 * t93;
t140 = t47 * t97;
t41 = t49 * t93;
t43 = t49 * t94;
t85 = t91 ^ 2;
t139 = t85 * t98;
t81 = t94 * pkin(9);
t64 = pkin(4) * t94 + t81;
t136 = t93 * t64;
t135 = t93 * t94;
t134 = t93 * t97;
t133 = t93 * t147;
t132 = t94 * t97;
t33 = t137 * t96 - t47 * t93;
t26 = t96 * t33;
t131 = t96 * t93;
t130 = t96 * t97;
t79 = t96 * t147;
t123 = pkin(8) * t137;
t39 = t123 + (pkin(9) + t146) * t92;
t40 = (-pkin(2) * t98 - pkin(9) * t95 - pkin(1)) * t91;
t21 = t39 * t97 + t40 * t94;
t129 = t155 * pkin(9) ^ 2;
t83 = t97 * pkin(9);
t65 = pkin(4) * t97 + t83;
t86 = t93 ^ 2;
t88 = t96 ^ 2;
t67 = t86 + t88;
t128 = qJ(4) * t97;
t127 = qJ(6) * t97;
t126 = t47 * t153;
t125 = t92 * t151;
t124 = -0.2e1 * t132;
t122 = t32 * t130;
t121 = t33 * t134;
t120 = t49 * t137;
t119 = t47 * t137;
t118 = t94 * t137;
t117 = t97 * t137;
t116 = qJ(4) * t137;
t20 = -t39 * t94 + t40 * t97;
t70 = pkin(3) * t137;
t19 = -t20 + t70;
t7 = pkin(4) * t49 + pkin(10) * t137 + t19;
t69 = pkin(8) * t138;
t38 = t69 + (-pkin(2) - t145) * t92;
t102 = -t49 * qJ(4) + t38;
t8 = t147 * t47 + t102;
t3 = t7 * t96 - t8 * t93;
t115 = -t94 * qJ(4) - pkin(2);
t53 = -t147 * t97 + t115;
t27 = -t53 * t93 + t64 * t96;
t114 = pkin(9) * t118;
t113 = pkin(9) * t117;
t112 = t127 * t93 + t27;
t104 = qJ(6) * t33 + t3;
t1 = t104 + t144;
t4 = t7 * t93 + t8 * t96;
t2 = qJ(6) * t32 + t4;
t111 = t1 * t96 + t2 * t93;
t110 = t3 * t96 + t4 * t93;
t109 = -pkin(3) * t94 + t128;
t18 = t116 - t21;
t108 = -t18 * t97 + t19 * t94;
t107 = -t20 * t94 + t21 * t97;
t28 = t53 * t96 + t136;
t11 = t27 * t96 + t28 * t93;
t106 = -t47 * t94 + t49 * t97;
t105 = -t147 * t94 + t128;
t103 = (t43 - t140) * pkin(9);
t9 = -pkin(4) * t47 - t18;
t100 = qJ(4) ^ 2;
t78 = t96 * t94;
t77 = t88 * t89;
t76 = t86 * t89;
t73 = t85 * t98 ^ 2;
t72 = -0.2e1 * t131;
t71 = 0.2e1 * t132;
t66 = t93 * t130;
t63 = t96 * t124;
t62 = t93 * t124;
t61 = 0.2e1 * t89 * t131;
t60 = -pkin(3) * t97 + t115;
t59 = -qJ(6) * t96 - t79;
t58 = (-qJ(6) - t147) * t93;
t57 = 0.2e1 * t155 * pkin(9);
t56 = t67 * t147;
t54 = (t86 - t88) * t97;
t52 = t146 * t92 + t123;
t51 = t145 * t92 - t69;
t46 = pkin(5) * t130 + t65;
t44 = t49 * t96;
t31 = t58 * t93 + t59 * t96;
t30 = t33 ^ 2;
t29 = t32 ^ 2;
t25 = t136 + (t53 - t127) * t96;
t24 = t112 + t143;
t23 = t33 * t153;
t22 = 0.2e1 * t32 * t49;
t17 = -t130 * t49 + t32 * t94;
t16 = -t134 * t49 - t33 * t94;
t15 = t47 * pkin(3) + t102;
t14 = -0.2e1 * t33 * t32;
t13 = t26 + t141;
t12 = t32 * t96 + t33 * t93;
t10 = (t26 - t141) * t97;
t5 = -pkin(5) * t32 + t9;
t6 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t85 * t95 ^ 2, 0.2e1 * t95 * t139, t95 * t125, t73, t98 * t125, t92 ^ 2, 0.2e1 * pkin(1) * t139 + 0.2e1 * t51 * t92, -0.2e1 * t146 * t85 - 0.2e1 * t52 * t92 (-t51 * t95 + t52 * t98) * t151, pkin(1) ^ 2 * t85 + t51 ^ 2 + t52 ^ 2, t45, t126, -0.2e1 * t120, t154, 0.2e1 * t119, t73, -0.2e1 * t137 * t20 + 0.2e1 * t38 * t47, 0.2e1 * t137 * t21 + 0.2e1 * t38 * t49, -0.2e1 * t20 * t49 - 0.2e1 * t21 * t47, t20 ^ 2 + t21 ^ 2 + t38 ^ 2, t73, 0.2e1 * t120, -0.2e1 * t119, t45, t126, t154, 0.2e1 * t18 * t47 + 0.2e1 * t19 * t49, -0.2e1 * t137 * t19 - 0.2e1 * t15 * t47, 0.2e1 * t137 * t18 - 0.2e1 * t15 * t49, t15 ^ 2 + t18 ^ 2 + t19 ^ 2, t30, t14, t23, t29, t22, t45, 0.2e1 * t3 * t49 - 0.2e1 * t32 * t9, -0.2e1 * t33 * t9 - 0.2e1 * t4 * t49, 0.2e1 * t3 * t33 + 0.2e1 * t32 * t4, t3 ^ 2 + t4 ^ 2 + t9 ^ 2, t30, t14, t23, t29, t22, t45, 0.2e1 * t1 * t49 - 0.2e1 * t32 * t5, -0.2e1 * t2 * t49 - 0.2e1 * t33 * t5, 0.2e1 * t1 * t33 + 0.2e1 * t2 * t32, t1 ^ 2 + t2 ^ 2 + t5 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t138, 0, t137, t92, t51, -t52, 0, 0, t43, t106, -t118, -t140, -t117, 0, -pkin(2) * t47 - t38 * t97 + t114, -pkin(2) * t49 + t38 * t94 + t113, t103 + t107, -t38 * pkin(2) + pkin(9) * t107, 0, t118, t117, t43, t106, -t140, t103 + t108, t15 * t97 - t47 * t60 - t114, -t15 * t94 - t49 * t60 - t113, pkin(9) * t108 + t15 * t60, t121, t10, t16, -t122, t17, t43, t130 * t9 + t27 * t49 + t3 * t94 - t32 * t65, -t134 * t9 - t28 * t49 - t33 * t65 - t4 * t94, t27 * t33 + t28 * t32 + (t3 * t93 - t4 * t96) * t97, t27 * t3 + t28 * t4 + t65 * t9, t121, t10, t16, -t122, t17, t43, t1 * t94 + t130 * t5 + t24 * t49 - t32 * t46, -t134 * t5 - t2 * t94 - t25 * t49 - t33 * t46, t24 * t33 + t25 * t32 + (t1 * t93 - t2 * t96) * t97, t1 * t24 + t2 * t25 + t46 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t87, t71, 0, t89, 0, 0, pkin(2) * t149, pkin(2) * t150, t57, pkin(2) ^ 2 + t129, 0, 0, 0, t87, t71, t89, t57, t60 * t149, t60 * t150, t60 ^ 2 + t129, t76, t61, t62, t77, t63, t87, 0.2e1 * t130 * t65 + 0.2e1 * t27 * t94, -0.2e1 * t134 * t65 - 0.2e1 * t28 * t94 (t27 * t93 - t28 * t96) * t149, t27 ^ 2 + t28 ^ 2 + t65 ^ 2, t76, t61, t62, t77, t63, t87, 0.2e1 * t130 * t46 + 0.2e1 * t24 * t94, -0.2e1 * t134 * t46 - 0.2e1 * t25 * t94 (t24 * t93 - t25 * t96) * t149, t24 ^ 2 + t25 ^ 2 + t46 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, 0, -t47, -t137, t20, -t21, 0, 0, -t137, -t49, t47, 0, 0, 0, -pkin(3) * t49 - qJ(4) * t47, -t20 + 0.2e1 * t70, -0.2e1 * t116 + t21, -pkin(3) * t19 - qJ(4) * t18, -t26, t12, t44, -t141, -t41, 0, -qJ(4) * t32 - t49 * t79 + t9 * t93, -qJ(4) * t33 + t133 * t49 + t9 * t96 (-t147 * t33 - t3) * t96 + (-t147 * t32 - t4) * t93, t9 * qJ(4) - t110 * t147, -t26, t12, t44, -t141, -t41, 0, -t32 * t75 + t49 * t59 + t5 * t93, -t33 * t75 - t49 * t58 + t5 * t96, t32 * t58 + t33 * t59 - t111, t1 * t59 + t2 * t58 + t5 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, 0, t97, 0, -t81, -t83, 0, 0, 0, -t94, -t97, 0, 0, 0, t109, t81, t83, t109 * pkin(9), -t66, t54, t78, t66, -t135, 0, t105 * t96 + t65 * t93, -t105 * t93 + t65 * t96, -t11, t65 * qJ(4) - t11 * t147, -t66, t54, t78, t66, -t135, 0, t130 * t75 + t46 * t93 + t59 * t94, -t134 * t75 + t46 * t96 - t58 * t94 (-t58 * t97 - t24) * t96 + (t59 * t97 - t25) * t93, t24 * t59 + t25 * t58 + t46 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(3), t148, pkin(3) ^ 2 + t100, t88, t72, 0, t86, 0, 0, t93 * t148, t96 * t148, 0.2e1 * t56, t147 ^ 2 * t67 + t100, t88, t72, 0, t86, 0, 0, t93 * t152, t96 * t152, -0.2e1 * t31, t58 ^ 2 + t59 ^ 2 + t75 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, -t137, 0, t19, 0, 0, 0, 0, 0, 0, t44, -t41, t13, t110, 0, 0, 0, 0, 0, 0, t44, -t41, t13, t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, 0, 0, t81, 0, 0, 0, 0, 0, 0, t78, -t135, 0, t11, 0, 0, 0, 0, 0, 0, t78, -t135, 0, t24 * t96 + t25 * t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(3), 0, 0, 0, 0, 0, 0, 0, 0, -t67, -t56, 0, 0, 0, 0, 0, 0, 0, 0, -t67, t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t33, 0, t32, t49, t3, -t4, 0, 0, 0, 0, -t33, 0, t32, t49, t104 + 0.2e1 * t144, -t2, t33 * pkin(5), t1 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t134, 0, -t130, t94, t27, -t28, 0, 0, 0, 0, -t134, 0, -t130, t94, t112 + 0.2e1 * t143, -t25, pkin(5) * t134, t24 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, 0, -t93, 0, -t79, t133, 0, 0, 0, 0, t96, 0, -t93, 0, t59, -t58, -t142, t59 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96, -t93, 0, 0, 0, 0, 0, 0, 0, 0, t96, -t93, 0, t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * pkin(5), 0, 0, pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t32, -t33, 0, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, -t134, 0, t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, t96, 0, t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t6;