% Calculate inertial parameters regressor of gravitation load for
% S7RRRRRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [7x1]
%   Generalized joint coordinates (joint angles)
% g_base [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [4x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[d1,d3,d5,d7]';
% 
% Output:
% taug_reg [7x(7*10)]
%   inertial parameter regressor of gravitation joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 08:31
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function taug_reg = S7RRRRRRR1_gravloadJ_reg2_slag_vp(qJ, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(7,1),zeros(3,1),zeros(4,1)}
assert(isreal(qJ) && all(size(qJ) == [7 1]), ...
  'S7RRRRRRR1_gravloadJ_reg2_slag_vp: qJ has to be [7x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S7RRRRRRR1_gravloadJ_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [4 1]), ...
  'S7RRRRRRR1_gravloadJ_reg2_slag_vp: pkin has to be [4x1] (double)');

%% Symbolic Calculation
% From gravload_joint_fixb_regressor_matlab.m
t104 = cos(qJ(7));
t105 = cos(qJ(6));
t106 = cos(qJ(5));
t100 = sin(qJ(4));
t107 = cos(qJ(4));
t102 = sin(qJ(2));
t103 = sin(qJ(1));
t143 = t102 * t103;
t108 = cos(qJ(3));
t101 = sin(qJ(3));
t110 = cos(qJ(1));
t133 = t110 * t101;
t109 = cos(qJ(2));
t139 = t103 * t109;
t82 = t108 * t139 + t133;
t60 = t100 * t143 + t82 * t107;
t132 = t110 * t108;
t81 = t101 * t139 - t132;
t99 = sin(qJ(5));
t35 = t60 * t106 - t81 * t99;
t142 = t102 * t107;
t59 = t82 * t100 - t103 * t142;
t98 = sin(qJ(6));
t11 = t35 * t105 + t59 * t98;
t34 = t81 * t106 + t60 * t99;
t97 = sin(qJ(7));
t163 = t34 * t104 + t11 * t97;
t162 = t11 * t104 - t34 * t97;
t12 = -t59 * t105 + t35 * t98;
t88 = g(1) * t110 + g(2) * t103;
t111 = -g(3) * t109 + t88 * t102;
t157 = pkin(3) * t100;
t154 = t97 * t99;
t153 = t100 * t98;
t152 = t104 * t99;
t151 = t105 * t97;
t150 = t106 * t98;
t149 = t107 * t99;
t147 = t100 * t105;
t146 = t101 * t102;
t145 = t101 * t109;
t144 = t102 * t100;
t141 = t102 * t108;
t140 = t102 * t110;
t138 = t104 * t105;
t137 = t105 * t106;
t136 = t106 * t107;
t135 = t109 * t100;
t134 = t109 * t107;
t131 = t99 * t146;
t130 = t101 * t144;
t129 = t106 * t146;
t128 = pkin(2) * t143 - pkin(3) * t59;
t86 = -t103 * t101 + t109 * t132;
t66 = t100 * t140 + t86 * t107;
t85 = -t103 * t108 - t109 * t133;
t40 = -t85 * t106 + t66 * t99;
t127 = -g(1) * t34 + g(2) * t40;
t65 = t86 * t100 - t107 * t140;
t126 = -g(1) * t59 + g(2) * t65;
t83 = t108 * t135 - t142;
t125 = -t102 * pkin(2) + t83 * pkin(3);
t124 = g(1) * t103 - g(2) * t110;
t123 = -pkin(2) * t140 + t65 * pkin(3);
t79 = t100 * t141 + t134;
t71 = t79 * t103;
t122 = -pkin(2) * t139 - t71 * pkin(3);
t73 = t79 * t110;
t121 = -t110 * t109 * pkin(2) - t73 * pkin(3);
t87 = t124 * t102;
t80 = t107 * t141 - t135;
t41 = t66 * t106 + t85 * t99;
t14 = t65 * t105 - t41 * t98;
t58 = t80 * t106 - t131;
t120 = g(1) * t14 - g(2) * t12 + g(3) * (t79 * t105 - t58 * t98);
t15 = t41 * t105 + t65 * t98;
t33 = t58 * t105 + t79 * t98;
t1 = g(1) * t15 + g(2) * t11 + g(3) * t33;
t57 = t80 * t99 + t129;
t119 = g(1) * t40 + g(2) * t34 + g(3) * t57;
t118 = g(1) * t41 + g(2) * t35 + g(3) * t58;
t46 = t82 * t106 - t81 * t149;
t48 = t86 * t106 + t85 * t149;
t69 = -t106 * t141 + t107 * t131;
t117 = g(1) * t48 + g(2) * t46 - g(3) * t69;
t72 = t80 * t103;
t52 = -t103 * t129 - t72 * t99;
t74 = t80 * t110;
t54 = -t110 * t129 - t74 * t99;
t84 = t108 * t134 + t144;
t63 = t106 * t145 + t84 * t99;
t116 = g(1) * t54 + g(2) * t52 + g(3) * t63;
t115 = g(1) * t65 + g(2) * t59 + g(3) * t79;
t114 = g(1) * t66 + g(2) * t60 + g(3) * t80;
t113 = g(1) * t73 + g(2) * t71 - g(3) * t83;
t112 = -g(1) * t85 + g(2) * t81 + g(3) * t146;
t8 = t119 * t98;
t75 = g(3) * t102 + t88 * t109;
t78 = pkin(2) * t87;
t70 = (-t101 * t136 - t108 * t99) * t102;
t68 = t75 * pkin(2);
t67 = t111 * t101;
t64 = t84 * t106 - t99 * t145;
t56 = -g(1) * t81 - g(2) * t85;
t55 = -t74 * t106 + t110 * t131;
t53 = t103 * t131 - t72 * t106;
t51 = t70 * t105 - t98 * t130;
t50 = -t105 * t130 - t70 * t98;
t49 = t85 * t136 - t86 * t99;
t47 = -t81 * t136 - t82 * t99;
t45 = -t79 * t137 + t80 * t98;
t44 = t80 * t105 + t79 * t150;
t43 = g(1) * t86 + g(2) * t82 + g(3) * t141;
t42 = t112 * t100;
t39 = t64 * t105 + t83 * t98;
t38 = t83 * t105 - t64 * t98;
t31 = t112 * t157;
t30 = t55 * t105 - t73 * t98;
t29 = -t73 * t105 - t55 * t98;
t28 = t53 * t105 - t71 * t98;
t27 = -t71 * t105 - t53 * t98;
t26 = t49 * t105 + t85 * t153;
t25 = t85 * t147 - t49 * t98;
t24 = t47 * t105 - t81 * t153;
t23 = -t81 * t147 - t47 * t98;
t22 = -t65 * t137 + t66 * t98;
t21 = t66 * t105 + t65 * t150;
t20 = -t59 * t137 + t60 * t98;
t19 = t60 * t105 + t59 * t150;
t18 = -g(1) * t128 - g(2) * t123;
t17 = t114 * pkin(3);
t16 = t115 * t99;
t9 = -g(1) * t121 - g(2) * t122 - g(3) * t125;
t7 = t15 * t104 - t40 * t97;
t6 = -t40 * t104 - t15 * t97;
t5 = -g(1) * t25 - g(2) * t23 - g(3) * t50;
t4 = -g(1) * t12 - g(2) * t14;
t3 = -g(1) * t21 - g(2) * t19 - g(3) * t44;
t2 = -g(1) * t29 - g(2) * t27 - g(3) * t38;
t10 = [0, 0, 0, 0, 0, 0, t124, t88, 0, 0, 0, 0, 0, 0, 0, 0, t124 * t109, -t87, -t88, 0, 0, 0, 0, 0, 0, 0, g(1) * t82 - g(2) * t86, t56, -t87, -t78, 0, 0, 0, 0, 0, 0, g(1) * t60 - g(2) * t66, t126, t56, -t78, 0, 0, 0, 0, 0, 0, g(1) * t35 - g(2) * t41, t127, -t126, t18, 0, 0, 0, 0, 0, 0, g(1) * t11 - g(2) * t15, t4, -t127, t18, 0, 0, 0, 0, 0, 0, g(1) * t162 - g(2) * t7, -g(1) * t163 - g(2) * t6, t4, -g(1) * (t12 * pkin(4) + t128) - g(2) * (t14 * pkin(4) + t123); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, t75, 0, 0, 0, 0, 0, 0, 0, 0, t111 * t108, -t67, t75, t68, 0, 0, 0, 0, 0, 0, g(1) * t74 + g(2) * t72 - g(3) * t84, -t113, -t67, t68, 0, 0, 0, 0, 0, 0, -g(1) * t55 - g(2) * t53 - g(3) * t64, t116, t113, t9, 0, 0, 0, 0, 0, 0, -g(1) * t30 - g(2) * t28 - g(3) * t39, t2, -t116, t9, 0, 0, 0, 0, 0, 0, -g(1) * (t30 * t104 - t54 * t97) - g(2) * (t28 * t104 - t52 * t97) - g(3) * (t39 * t104 - t63 * t97) -g(1) * (-t54 * t104 - t30 * t97) - g(2) * (-t52 * t104 - t28 * t97) - g(3) * (-t63 * t104 - t39 * t97) t2, -g(1) * (t29 * pkin(4) + t121) - g(2) * (t27 * pkin(4) + t122) - g(3) * (t38 * pkin(4) + t125); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, t43, 0, 0, 0, 0, 0, 0, 0, 0, t112 * t107, -t42, t43, 0, 0, 0, 0, 0, 0, 0, -g(1) * t49 - g(2) * t47 - g(3) * t70, t117, t42, t31, 0, 0, 0, 0, 0, 0, -g(1) * t26 - g(2) * t24 - g(3) * t51, t5, -t117, t31, 0, 0, 0, 0, 0, 0, -g(1) * (t26 * t104 - t48 * t97) - g(2) * (t24 * t104 - t46 * t97) - g(3) * (t51 * t104 + t69 * t97) -g(1) * (-t48 * t104 - t26 * t97) - g(2) * (-t46 * t104 - t24 * t97) - g(3) * (t69 * t104 - t51 * t97) t5, -g(1) * (t25 * pkin(4) + t85 * t157) - g(2) * (t23 * pkin(4) - t81 * t157) - g(3) * (-pkin(3) * t130 + t50 * pkin(4)); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, t114, 0, 0, 0, 0, 0, 0, 0, 0, t115 * t106, -t16, -t114, -t17, 0, 0, 0, 0, 0, 0, -g(1) * t22 - g(2) * t20 - g(3) * t45, t3, t16, -t17, 0, 0, 0, 0, 0, 0, -g(1) * (t22 * t104 + t65 * t154) - g(2) * (t20 * t104 + t59 * t154) - g(3) * (t45 * t104 + t79 * t154) -g(1) * (t65 * t152 - t22 * t97) - g(2) * (t59 * t152 - t20 * t97) - g(3) * (t79 * t152 - t45 * t97) t3, -g(1) * (pkin(3) * t66 + t21 * pkin(4)) - g(2) * (pkin(3) * t60 + t19 * pkin(4)) - g(3) * (t80 * pkin(3) + t44 * pkin(4)); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t119, t118, 0, 0, 0, 0, 0, 0, 0, 0, t119 * t105, -t8, -t118, 0, 0, 0, 0, 0, 0, 0, -g(1) * (-t40 * t138 - t41 * t97) - g(2) * (-t34 * t138 - t35 * t97) - g(3) * (-t57 * t138 - t58 * t97) -g(1) * (-t41 * t104 + t40 * t151) - g(2) * (-t35 * t104 + t34 * t151) - g(3) * (-t58 * t104 + t57 * t151) -t8, -pkin(4) * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t120, t1, 0, 0, 0, 0, 0, 0, 0, 0, -t120 * t104, t120 * t97, t1, t1 * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1) * t6 + g(2) * t163 - g(3) * (-t57 * t104 - t33 * t97) g(1) * t7 + g(2) * t162 - g(3) * (-t33 * t104 + t57 * t97) 0, 0;];
taug_reg  = t10;
