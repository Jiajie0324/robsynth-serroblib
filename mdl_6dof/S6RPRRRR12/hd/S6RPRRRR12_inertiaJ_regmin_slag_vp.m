% Calculate minimal parameter regressor of joint inertia matrix for
% S6RPRRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x35]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:05
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRRR12_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR12_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RPRRRR12_inertiaJ_regmin_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t101 = cos(qJ(3));
t90 = cos(pkin(14));
t92 = cos(pkin(7));
t132 = t90 * t92;
t88 = sin(pkin(7));
t89 = sin(pkin(6));
t93 = cos(pkin(6));
t105 = t89 * t132 + t88 * t93;
t86 = sin(pkin(14));
t136 = t86 * t89;
t97 = sin(qJ(3));
t75 = t97 * t136;
t104 = -t105 * t101 + t75;
t156 = -0.2e1 * t104;
t100 = cos(qJ(4));
t134 = t88 * t97;
t46 = t93 * t134 + (t101 * t86 + t97 * t132) * t89;
t144 = pkin(11) * t46;
t112 = t88 * t101;
t147 = pkin(1) * t93;
t78 = t90 * t147;
t47 = t93 * pkin(2) + t78 + (-pkin(10) * t92 - qJ(2)) * t136;
t130 = t92 * t47;
t116 = qJ(2) * t89;
t66 = t90 * t116 + t86 * t147;
t45 = t105 * pkin(10) + t66;
t54 = (-pkin(10) * t86 * t88 - pkin(2) * t90 - pkin(1)) * t89;
t25 = t101 * t130 + t54 * t112 - t97 * t45;
t133 = t89 * t90;
t63 = -t88 * t133 + t93 * t92;
t91 = cos(pkin(8));
t20 = t63 * pkin(3) - t91 * t144 + t25;
t32 = -t88 * t47 + t92 * t54;
t87 = sin(pkin(8));
t22 = t104 * pkin(3) - t87 * t144 + t32;
t106 = t20 * t91 + t22 * t87;
t103 = t104 * t91;
t102 = t63 * t87 - t103;
t26 = t101 * t45 + (t88 * t54 + t130) * t97;
t17 = t102 * pkin(11) + t26;
t96 = sin(qJ(4));
t11 = t106 * t100 - t96 * t17;
t29 = t46 * t100 + t102 * t96;
t34 = -t104 * t87 - t63 * t91;
t95 = sin(qJ(5));
t99 = cos(qJ(5));
t18 = t29 * t95 + t34 * t99;
t155 = -0.2e1 * t18;
t113 = t87 * t100;
t28 = t100 * t103 - t63 * t113 + t46 * t96;
t154 = 0.2e1 * t28;
t153 = -0.2e1 * t29;
t135 = t87 * t96;
t68 = t99 * t135 + t95 * t91;
t94 = sin(qJ(6));
t98 = cos(qJ(6));
t51 = t98 * t113 + t94 * t68;
t152 = -0.2e1 * t51;
t151 = -0.2e1 * t68;
t150 = -0.2e1 * t95;
t149 = 0.2e1 * t99;
t82 = t89 ^ 2;
t148 = pkin(1) * t82;
t146 = pkin(3) * t96;
t145 = pkin(5) * t98;
t143 = pkin(12) * t94;
t13 = -t87 * t20 + t91 * t22;
t10 = t28 * pkin(4) - t29 * pkin(12) + t13;
t12 = t100 * t17 + t106 * t96;
t9 = -t34 * pkin(12) + t12;
t5 = t99 * t10 - t95 * t9;
t3 = -t28 * pkin(5) - t5;
t142 = t3 * t94;
t141 = t3 * t98;
t19 = t29 * t99 - t34 * t95;
t15 = t19 * t98 + t28 * t94;
t140 = t15 * t94;
t109 = pkin(11) * t113;
t61 = t109 + (pkin(12) + t146) * t91;
t62 = (-pkin(4) * t100 - pkin(12) * t96 - pkin(3)) * t87;
t41 = -t95 * t61 + t99 * t62;
t39 = pkin(5) * t113 - t41;
t139 = t39 * t94;
t138 = t39 * t98;
t52 = -t94 * t113 + t98 * t68;
t137 = t52 * t94;
t131 = t91 * t96;
t129 = t94 * t18;
t67 = t95 * t135 - t99 * t91;
t128 = t94 * t67;
t127 = t94 * t95;
t126 = t94 * t98;
t125 = t94 * t99;
t124 = t95 * t18;
t123 = t95 * t28;
t122 = t95 * t67;
t121 = t98 * t18;
t120 = t98 * t67;
t119 = t98 * t95;
t118 = t98 * t99;
t117 = t99 * t28;
t81 = t87 ^ 2;
t115 = t100 * t81;
t114 = t100 * t91;
t111 = t95 * t149;
t110 = 0.2e1 * t113;
t108 = t95 * t113;
t107 = t99 * t113;
t6 = t95 * t10 + t99 * t9;
t42 = t99 * t61 + t95 * t62;
t79 = pkin(11) * t135;
t60 = t79 + (-pkin(3) * t100 - pkin(4)) * t91;
t8 = t34 * pkin(4) - t11;
t85 = t98 ^ 2;
t84 = t95 ^ 2;
t83 = t94 ^ 2;
t72 = -t99 * pkin(5) - t95 * pkin(13) - pkin(4);
t70 = pkin(3) * t131 + t109;
t69 = pkin(3) * t114 - t79;
t65 = -t86 * t116 + t78;
t64 = -t87 * t112 + t91 * t92;
t57 = pkin(12) * t118 + t94 * t72;
t56 = -pkin(12) * t125 + t98 * t72;
t49 = t92 * t135 + (t100 * t97 + t101 * t131) * t88;
t48 = -t112 * t114 - t92 * t113 + t96 * t134;
t40 = -pkin(13) * t113 + t42;
t38 = t67 * pkin(5) - t68 * pkin(13) + t60;
t37 = t99 * t49 + t95 * t64;
t36 = t95 * t49 - t99 * t64;
t31 = t98 * t37 + t94 * t48;
t30 = -t94 * t37 + t98 * t48;
t24 = t94 * t38 + t98 * t40;
t23 = t98 * t38 - t94 * t40;
t14 = t19 * t94 - t28 * t98;
t7 = t18 * pkin(5) - t19 * pkin(13) + t8;
t4 = t28 * pkin(13) + t6;
t2 = t98 * t4 + t94 * t7;
t1 = -t94 * t4 + t98 * t7;
t16 = [1, 0, 0, 0.2e1 * t90 * t148 + 0.2e1 * t65 * t93, -0.2e1 * t86 * t148 - 0.2e1 * t66 * t93, 0.2e1 * (-t65 * t86 + t66 * t90) * t89, t82 * pkin(1) ^ 2 + t65 ^ 2 + t66 ^ 2, t46 ^ 2, t46 * t156, 0.2e1 * t63 * t46, t63 * t156, t63 ^ 2, 0.2e1 * t32 * t104 + 0.2e1 * t25 * t63, -0.2e1 * t26 * t63 + 0.2e1 * t32 * t46, t29 ^ 2, t28 * t153, t34 * t153, t34 * t154, t34 ^ 2, -0.2e1 * t11 * t34 + 0.2e1 * t13 * t28, 0.2e1 * t12 * t34 + 0.2e1 * t13 * t29, t19 ^ 2, t19 * t155, t19 * t154, t28 * t155, t28 ^ 2, 0.2e1 * t8 * t18 + 0.2e1 * t5 * t28, 0.2e1 * t8 * t19 - 0.2e1 * t6 * t28, t15 ^ 2, -0.2e1 * t15 * t14, 0.2e1 * t15 * t18, t14 * t155, t18 ^ 2, 0.2e1 * t1 * t18 + 0.2e1 * t3 * t14, 0.2e1 * t3 * t15 - 0.2e1 * t2 * t18; 0, 0, 0, -t133, t136, 0, -t89 * pkin(1), 0, 0, 0, 0, 0, t92 * t75 + (-t92 * t105 + t88 * t63) * t101, -t63 * t134 + t92 * t46, 0, 0, 0, 0, 0, t64 * t28 + t48 * t34, t64 * t29 + t49 * t34, 0, 0, 0, 0, 0, t48 * t18 - t36 * t28, t48 * t19 - t37 * t28, 0, 0, 0, 0, 0, t36 * t14 + t30 * t18, t36 * t15 - t31 * t18; 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, -t104, t63, t25, -t26, t29 * t135 (t100 * t29 - t28 * t96) * t87, -t34 * t135 + t91 * t29, -t34 * t113 - t91 * t28, -t34 * t91, t11 * t91 - t69 * t34 + (-pkin(3) * t28 - t100 * t13) * t87, -t12 * t91 + t70 * t34 + (-pkin(3) * t29 + t13 * t96) * t87, t19 * t68, -t68 * t18 - t19 * t67, -t113 * t19 + t68 * t28, t113 * t18 - t67 * t28, -t28 * t113, -t113 * t5 + t60 * t18 + t41 * t28 + t8 * t67, t113 * t6 + t60 * t19 - t42 * t28 + t8 * t68, t15 * t52, -t52 * t14 - t15 * t51, t15 * t67 + t52 * t18, -t14 * t67 - t51 * t18, t18 * t67, t1 * t67 + t39 * t14 + t23 * t18 + t3 * t51, t39 * t15 - t24 * t18 - t2 * t67 + t3 * t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, -t134, 0, 0, 0, 0, 0, -t64 * t113 - t48 * t91, t64 * t135 - t49 * t91, 0, 0, 0, 0, 0, t113 * t36 + t48 * t67, t113 * t37 + t48 * t68, 0, 0, 0, 0, 0, t30 * t67 + t36 * t51, -t31 * t67 + t36 * t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t81 * t96 ^ 2, 0.2e1 * t96 * t115, 0.2e1 * t87 * t131, t91 * t110, t91 ^ 2, 0.2e1 * pkin(3) * t115 + 0.2e1 * t69 * t91, -0.2e1 * t81 * t146 - 0.2e1 * t70 * t91, t68 ^ 2, t67 * t151, t113 * t151, t67 * t110, t81 * t100 ^ 2, -0.2e1 * t113 * t41 + 0.2e1 * t60 * t67, 0.2e1 * t113 * t42 + 0.2e1 * t60 * t68, t52 ^ 2, t52 * t152, 0.2e1 * t52 * t67, t67 * t152, t67 ^ 2, 0.2e1 * t23 * t67 + 0.2e1 * t39 * t51, -0.2e1 * t24 * t67 + 0.2e1 * t39 * t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29, -t28, -t34, t11, -t12, t19 * t95, t19 * t99 - t124, t123, t117, 0, -pkin(4) * t18 - pkin(12) * t123 - t8 * t99, -pkin(4) * t19 - pkin(12) * t117 + t8 * t95, t15 * t119 (-t14 * t98 - t140) * t95, t119 * t18 - t15 * t99, -t124 * t94 + t14 * t99, -t18 * t99, -t1 * t99 + t56 * t18 + (pkin(12) * t14 + t142) * t95, -t57 * t18 + t2 * t99 + (pkin(12) * t15 + t141) * t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t48, -t49, 0, 0, 0, 0, 0, -t48 * t99, t48 * t95, 0, 0, 0, 0, 0, t127 * t36 - t30 * t99, t119 * t36 + t31 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, t113, t91, t69, -t70, t68 * t95, t68 * t99 - t122, -t108, -t107, 0, -pkin(4) * t67 + pkin(12) * t108 - t60 * t99, -pkin(4) * t68 + pkin(12) * t107 + t60 * t95, t52 * t119 (-t51 * t98 - t137) * t95, t119 * t67 - t52 * t99, -t122 * t94 + t51 * t99, -t67 * t99, -t23 * t99 + t56 * t67 + (pkin(12) * t51 + t139) * t95, t24 * t99 - t57 * t67 + (pkin(12) * t52 + t138) * t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t84, t111, 0, 0, 0, pkin(4) * t149, pkin(4) * t150, t85 * t84, -0.2e1 * t84 * t126, t118 * t150, t94 * t111, t99 ^ 2, 0.2e1 * t143 * t84 - 0.2e1 * t56 * t99, 0.2e1 * t84 * pkin(12) * t98 + 0.2e1 * t57 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19, -t18, t28, t5, -t6, t140, -t94 * t14 + t15 * t98, t129, t121, 0, -pkin(5) * t14 - pkin(13) * t129 - t141, -pkin(5) * t15 - pkin(13) * t121 + t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t36, -t37, 0, 0, 0, 0, 0, -t36 * t98, t36 * t94; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, -t67, -t113, t41, -t42, t137, -t94 * t51 + t52 * t98, t128, t120, 0, -pkin(5) * t51 - pkin(13) * t128 - t138, -pkin(5) * t52 - pkin(13) * t120 + t139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95, t99, 0, -t95 * pkin(12), -t99 * pkin(12), t94 * t119 (-t83 + t85) * t95, -t125, -t118, 0, -pkin(12) * t119 + (-pkin(5) * t95 + pkin(13) * t99) * t94, pkin(13) * t118 + (t143 - t145) * t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t83, 0.2e1 * t126, 0, 0, 0, 0.2e1 * t145, -0.2e1 * pkin(5) * t94; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t15, -t14, t18, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, -t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, -t51, t67, t23, -t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t119, -t127, -t99, t56, -t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, t98, 0, -t94 * pkin(13), -t98 * pkin(13); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t16;