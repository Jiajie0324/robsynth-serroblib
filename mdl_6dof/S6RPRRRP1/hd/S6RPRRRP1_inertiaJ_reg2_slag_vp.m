% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:57
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRRP1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP1_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t72 = sin(qJ(5));
t66 = t72 ^ 2;
t75 = cos(qJ(5));
t68 = t75 ^ 2;
t129 = t66 + t68;
t73 = sin(qJ(4));
t112 = t73 * pkin(3);
t60 = pkin(9) + t112;
t95 = t129 * t60;
t74 = sin(qJ(3));
t76 = cos(qJ(4));
t77 = cos(qJ(3));
t42 = t73 * t77 + t76 * t74;
t104 = t66 * t42;
t32 = t68 * t42;
t18 = t32 + t104;
t83 = pkin(5) * t72 - t75 * qJ(6);
t128 = t83 * t42;
t70 = sin(pkin(10));
t115 = t70 * pkin(1);
t57 = pkin(7) + t115;
t108 = pkin(8) + t57;
t36 = t108 * t77;
t88 = t108 * t74;
t14 = t73 * t36 + t76 * t88;
t127 = t14 ^ 2;
t40 = t73 * t74 - t76 * t77;
t126 = t40 ^ 2;
t125 = 0.2e1 * t42;
t71 = cos(pkin(10));
t114 = t71 * pkin(1);
t58 = -pkin(2) - t114;
t44 = -t77 * pkin(3) + t58;
t124 = 0.2e1 * t44;
t123 = -0.2e1 * t72;
t122 = 0.2e1 * t74;
t121 = -0.2e1 * t75;
t120 = pkin(9) * t40;
t119 = t40 * pkin(4);
t118 = t40 * pkin(5);
t7 = t14 + t128;
t117 = t7 * t72;
t116 = t7 * t75;
t113 = t72 * pkin(9);
t111 = t75 * pkin(9);
t110 = t76 * pkin(3);
t61 = -pkin(4) - t110;
t109 = pkin(4) - t61;
t13 = -t42 * pkin(9) + t119 + t44;
t16 = t76 * t36 - t73 * t88;
t6 = t72 * t13 + t75 * t16;
t107 = t14 * t40;
t106 = t14 * t75;
t105 = t40 * t60;
t30 = t72 * t42;
t103 = t72 * t60;
t102 = t72 * t75;
t34 = t75 * t42;
t101 = t75 * t60;
t100 = t95 * t42;
t99 = t18 * pkin(9);
t84 = -t75 * pkin(5) - t72 * qJ(6);
t45 = -pkin(4) + t84;
t35 = t45 - t110;
t98 = -t35 - t45;
t97 = t95 * pkin(9);
t96 = t129 * t60 ^ 2;
t94 = t129 * pkin(9) ^ 2;
t93 = t129 * pkin(9);
t67 = t74 ^ 2;
t69 = t77 ^ 2;
t92 = t67 + t69;
t91 = t40 * qJ(6);
t90 = t40 * t30;
t39 = t42 ^ 2;
t89 = t39 * t102;
t87 = -t75 * t13 + t72 * t16;
t86 = -pkin(4) * t42 - t120;
t3 = t91 + t6;
t4 = t87 - t118;
t1 = t3 * t75 + t4 * t72;
t2 = t6 * t75 + t72 * t87;
t85 = -t42 * t45 + t120;
t82 = t35 * t42 - t105;
t81 = t42 * t61 - t105;
t55 = -0.2e1 * t102;
t54 = 0.2e1 * t102;
t43 = 0.2e1 * t93;
t33 = t75 * t40;
t31 = t68 * t39;
t29 = t72 * t40;
t28 = t66 * t39;
t24 = t72 * t34;
t23 = 0.2e1 * t95;
t20 = t93 + t95;
t19 = 0.2e1 * t40 * t34;
t17 = -t32 + t104;
t12 = t14 * t72;
t8 = t31 + t28 + t126;
t5 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t114, -0.2e1 * t115, 0 (t70 ^ 2 + t71 ^ 2) * pkin(1) ^ 2, t67, t77 * t122, 0, t69, 0, 0, -0.2e1 * t58 * t77, t58 * t122, 0.2e1 * t92 * t57, t92 * t57 ^ 2 + t58 ^ 2, t39, -0.2e1 * t42 * t40, 0, t126, 0, 0, t40 * t124, t42 * t124, 0.2e1 * t14 * t42 - 0.2e1 * t16 * t40, t16 ^ 2 + t44 ^ 2 + t127, t31, -0.2e1 * t89, t19, t28, -0.2e1 * t90, t126, 0.2e1 * t14 * t30 - 0.2e1 * t40 * t87, 0.2e1 * t14 * t34 - 0.2e1 * t6 * t40 (-t6 * t72 + t75 * t87) * t125, t6 ^ 2 + t87 ^ 2 + t127, t31, t19, 0.2e1 * t89, t126, 0.2e1 * t90, t28, 0.2e1 * t7 * t30 - 0.2e1 * t4 * t40 (-t3 * t72 + t4 * t75) * t125, 0.2e1 * t3 * t40 - 0.2e1 * t7 * t34, t3 ^ 2 + t4 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t16 * t42 + t107, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2 * t42 + t107, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1 * t42 + t7 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39 + t126, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8, 0, 0, 0, 0, 0, 0, 0, 0, 0, t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, t77, 0, -t74 * t57, -t77 * t57, 0, 0, 0, 0, t42, 0, -t40, 0, -t14, -t16 (-t40 * t73 - t42 * t76) * pkin(3) (-t14 * t76 + t16 * t73) * pkin(3), t24, -t17, t29, -t24, t33, 0, t72 * t81 - t106, t75 * t81 + t12, t2, t14 * t61 + t2 * t60, t24, t29, t17, 0, -t33, -t24, t82 * t72 - t116, t1, -t82 * t75 - t117, t1 * t60 + t7 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77, -t74, 0, 0, 0, 0, 0, 0, 0, 0, -t40, -t42, 0 (-t40 * t76 + t42 * t73) * pkin(3), 0, 0, 0, 0, 0, 0, -t33, t29, t18, t40 * t61 + t100, 0, 0, 0, 0, 0, 0, -t33, t18, -t29, t40 * t35 + t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t110, -0.2e1 * t112, 0 (t73 ^ 2 + t76 ^ 2) * pkin(3) ^ 2, t66, t54, 0, t68, 0, 0, t61 * t121, 0.2e1 * t61 * t72, t23, t61 ^ 2 + t96, t66, 0, t55, 0, 0, t68, t35 * t121, t23, t35 * t123, t35 ^ 2 + t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, 0, -t40, 0, -t14, -t16, 0, 0, t24, -t17, t29, -t24, t33, 0, t86 * t72 - t106, t86 * t75 + t12, t2, -t14 * pkin(4) + t2 * pkin(9), t24, t29, t17, 0, -t33, -t24, -t85 * t72 - t116, t1, t85 * t75 - t117, t1 * pkin(9) + t7 * t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40, -t42, 0, 0, 0, 0, 0, 0, 0, 0, -t33, t29, t18, t99 - t119, 0, 0, 0, 0, 0, 0, -t33, t18, -t29, t40 * t45 + t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t110, -t112, 0, 0, t66, t54, 0, t68, 0, 0, t109 * t75, -t109 * t72, t20, -t61 * pkin(4) + t97, t66, 0, t55, 0, 0, t68, t98 * t75, t20, t98 * t72, t35 * t45 + t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t66, t54, 0, t68, 0, 0, 0.2e1 * pkin(4) * t75, pkin(4) * t123, t43, pkin(4) ^ 2 + t94, t66, 0, t55, 0, 0, t68, t45 * t121, t43, t45 * t123, t45 ^ 2 + t94; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t34, 0, -t30, t40, -t87, -t6, 0, 0, 0, t34, 0, t40, t30, 0, -t87 + 0.2e1 * t118, t84 * t42, 0.2e1 * t91 + t6, -t4 * pkin(5) + t3 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t30, -t34, 0, 0, 0, 0, 0, 0, 0, 0, -t30, 0, t34, -t128; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, t75, 0, -t103, -t101, 0, 0, 0, t72, 0, 0, -t75, 0, -t103, -t83, t101, -t83 * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, t75, 0, -t113, -t111, 0, 0, 0, t72, 0, 0, -t75, 0, -t113, -t83, t111, -t83 * pkin(9); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0.2e1 * pkin(5), 0, 0.2e1 * qJ(6), pkin(5) ^ 2 + qJ(6) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40, t34, 0, t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t72, 0, t113; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t5;
