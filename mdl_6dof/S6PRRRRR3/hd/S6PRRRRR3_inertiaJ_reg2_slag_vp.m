% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,d6,theta1]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 00:53
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRRRRR3_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR3_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRR3_inertiaJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t70 = sin(pkin(6));
t76 = sin(qJ(2));
t101 = t70 * t76;
t71 = cos(pkin(6));
t75 = sin(qJ(3));
t80 = cos(qJ(3));
t40 = t75 * t101 - t71 * t80;
t39 = t40 ^ 2;
t73 = sin(qJ(5));
t74 = sin(qJ(4));
t78 = cos(qJ(5));
t79 = cos(qJ(4));
t45 = t73 * t74 - t78 * t79;
t60 = -t79 * pkin(4) - pkin(3);
t33 = t45 * pkin(5) + t60;
t116 = 0.2e1 * t33;
t115 = 0.2e1 * t60;
t114 = -0.2e1 * t75;
t113 = -0.2e1 * t80;
t112 = 0.2e1 * t80;
t111 = -pkin(10) - pkin(9);
t110 = pkin(3) * t79;
t109 = pkin(8) * t74;
t67 = t75 ^ 2;
t108 = t67 * pkin(8);
t72 = sin(qJ(6));
t107 = t72 * pkin(5);
t106 = t73 * pkin(4);
t62 = t75 * pkin(8);
t77 = cos(qJ(6));
t50 = -t80 * pkin(3) - t75 * pkin(9) - pkin(2);
t44 = t79 * t50;
t95 = t79 * t75;
t23 = -pkin(10) * t95 + t44 + (-pkin(4) - t109) * t80;
t94 = t79 * t80;
t90 = pkin(8) * t94;
t27 = t90 + (-pkin(10) * t75 + t50) * t74;
t96 = t78 * t27;
t11 = t73 * t23 + t96;
t47 = t73 * t79 + t78 * t74;
t34 = t47 * t75;
t9 = -t34 * pkin(11) + t11;
t105 = t77 * t9;
t104 = t80 * pkin(4);
t103 = t80 * pkin(5);
t102 = t40 * t75;
t81 = cos(qJ(2));
t100 = t70 * t81;
t99 = t74 * t75;
t98 = t74 * t79;
t97 = t74 * t80;
t49 = pkin(4) * t99 + t62;
t66 = t74 ^ 2;
t68 = t79 ^ 2;
t93 = t66 + t68;
t92 = t75 * t112;
t91 = t77 * t106;
t89 = t74 * t95;
t10 = t78 * t23 - t73 * t27;
t36 = -t73 * t99 + t78 * t95;
t6 = -t36 * pkin(11) + t10 - t103;
t1 = t77 * t6 - t72 * t9;
t51 = t111 * t74;
t52 = t111 * t79;
t28 = t78 * t51 + t73 * t52;
t64 = t78 * pkin(4);
t59 = t64 + pkin(5);
t37 = -t72 * t106 + t77 * t59;
t2 = t72 * t6 + t105;
t42 = t80 * t101 + t71 * t75;
t25 = -t79 * t100 - t42 * t74;
t26 = -t74 * t100 + t42 * t79;
t88 = -t25 * t74 + t26 * t79;
t31 = -pkin(8) * t97 + t44;
t32 = t74 * t50 + t90;
t87 = -t31 * t74 + t32 * t79;
t86 = t42 * t80 + t102;
t29 = t73 * t51 - t78 * t52;
t83 = pkin(8) ^ 2;
t69 = t80 ^ 2;
t65 = t70 ^ 2;
t63 = t77 * pkin(5);
t61 = t67 * t83;
t56 = t65 * t81 ^ 2;
t38 = t72 * t59 + t91;
t24 = t34 * pkin(5) + t49;
t22 = -t72 * t45 + t77 * t47;
t20 = t77 * t45 + t72 * t47;
t18 = -t45 * pkin(11) + t29;
t17 = -t47 * pkin(11) + t28;
t16 = -t72 * t34 + t77 * t36;
t14 = t77 * t34 + t72 * t36;
t13 = t73 * t25 + t78 * t26;
t12 = t78 * t25 - t73 * t26;
t8 = t72 * t17 + t77 * t18;
t7 = t77 * t17 - t72 * t18;
t4 = t72 * t12 + t77 * t13;
t3 = t77 * t12 - t72 * t13;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65 * t76 ^ 2 + t71 ^ 2 + t56, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42 ^ 2 + t39 + t56, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25 ^ 2 + t26 ^ 2 + t39, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12 ^ 2 + t13 ^ 2 + t39, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3 ^ 2 + t4 ^ 2 + t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, -t101, 0, 0, 0, 0, 0, 0, 0, 0, t80 * t100, -t75 * t100, t86, pkin(2) * t100 + t86 * pkin(8), 0, 0, 0, 0, 0, 0, -t25 * t80 + t40 * t99, t26 * t80 + t40 * t95 (-t25 * t79 - t26 * t74) * t75, pkin(8) * t102 + t25 * t31 + t26 * t32, 0, 0, 0, 0, 0, 0, -t12 * t80 + t40 * t34, t13 * t80 + t40 * t36, -t12 * t36 - t13 * t34, t12 * t10 + t13 * t11 + t40 * t49, 0, 0, 0, 0, 0, 0, t40 * t14 - t3 * t80, t40 * t16 + t4 * t80, -t14 * t4 - t16 * t3, t3 * t1 + t4 * t2 + t40 * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t67, t92, 0, t69, 0, 0, pkin(2) * t112, pkin(2) * t114, 0.2e1 * (t67 + t69) * pkin(8), pkin(2) ^ 2 + t69 * t83 + t61, t68 * t67, -0.2e1 * t67 * t98, t94 * t114, t66 * t67, t74 * t92, t69, 0.2e1 * t74 * t108 - 0.2e1 * t31 * t80, 0.2e1 * t79 * t108 + 0.2e1 * t32 * t80, 0.2e1 * (-t31 * t79 - t32 * t74) * t75, t31 ^ 2 + t32 ^ 2 + t61, t36 ^ 2, -0.2e1 * t36 * t34, t36 * t113, t34 ^ 2, -t34 * t113, t69, -0.2e1 * t10 * t80 + 0.2e1 * t49 * t34, 0.2e1 * t11 * t80 + 0.2e1 * t49 * t36, -0.2e1 * t10 * t36 - 0.2e1 * t11 * t34, t10 ^ 2 + t11 ^ 2 + t49 ^ 2, t16 ^ 2, -0.2e1 * t16 * t14, t16 * t113, t14 ^ 2, t14 * t112, t69, -0.2e1 * t1 * t80 + 0.2e1 * t24 * t14, 0.2e1 * t24 * t16 + 0.2e1 * t2 * t80, -0.2e1 * t1 * t16 - 0.2e1 * t14 * t2, t1 ^ 2 + t2 ^ 2 + t24 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40, -t42, 0, 0, 0, 0, 0, 0, 0, 0, -t40 * t79, t40 * t74, t88, -t40 * pkin(3) + t88 * pkin(9), 0, 0, 0, 0, 0, 0, t40 * t45, t40 * t47, -t12 * t47 - t13 * t45, t12 * t28 + t13 * t29 + t40 * t60, 0, 0, 0, 0, 0, 0, t40 * t20, t40 * t22, -t20 * t4 - t22 * t3, t3 * t7 + t40 * t33 + t4 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, 0, t80, 0, -t62, -t80 * pkin(8), 0, 0, t89 (-t66 + t68) * t75, -t97, -t89, -t94, 0, -pkin(8) * t95 + (-pkin(3) * t75 + pkin(9) * t80) * t74, pkin(9) * t94 + (t109 - t110) * t75, t87, -pkin(3) * t62 + t87 * pkin(9), t36 * t47, -t47 * t34 - t36 * t45, -t47 * t80, t34 * t45, t45 * t80, 0, -t28 * t80 + t60 * t34 + t49 * t45, t29 * t80 + t60 * t36 + t49 * t47, -t10 * t47 - t11 * t45 - t28 * t36 - t29 * t34, t10 * t28 + t11 * t29 + t49 * t60, t16 * t22, -t14 * t22 - t16 * t20, -t22 * t80, t14 * t20, t20 * t80, 0, t33 * t14 + t24 * t20 - t7 * t80, t33 * t16 + t24 * t22 + t8 * t80, -t1 * t22 - t8 * t14 - t7 * t16 - t2 * t20, t1 * t7 + t2 * t8 + t24 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t66, 0.2e1 * t98, 0, t68, 0, 0, 0.2e1 * t110, -0.2e1 * pkin(3) * t74, 0.2e1 * t93 * pkin(9), t93 * pkin(9) ^ 2 + pkin(3) ^ 2, t47 ^ 2, -0.2e1 * t47 * t45, 0, t45 ^ 2, 0, 0, t45 * t115, t47 * t115, -0.2e1 * t28 * t47 - 0.2e1 * t29 * t45, t28 ^ 2 + t29 ^ 2 + t60 ^ 2, t22 ^ 2, -0.2e1 * t22 * t20, 0, t20 ^ 2, 0, 0, t20 * t116, t22 * t116, -0.2e1 * t20 * t8 - 0.2e1 * t22 * t7, t33 ^ 2 + t7 ^ 2 + t8 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, -t26, 0, 0, 0, 0, 0, 0, 0, 0, t12, -t13, 0 (t12 * t78 + t13 * t73) * pkin(4), 0, 0, 0, 0, 0, 0, t3, -t4, 0, t3 * t37 + t38 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95, 0, -t99, -t80, t31, -t32, 0, 0, 0, 0, t36, 0, -t34, -t80, -t78 * t104 + t10, -t96 + (-t23 + t104) * t73 (-t34 * t73 - t36 * t78) * pkin(4) (t10 * t78 + t11 * t73) * pkin(4), 0, 0, t16, 0, -t14, -t80, -t37 * t80 + t1, t38 * t80 - t2, -t14 * t38 - t37 * t16, t1 * t37 + t2 * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, t79, 0, -t74 * pkin(9), -t79 * pkin(9), 0, 0, 0, 0, t47, 0, -t45, 0, t28, -t29 (-t45 * t73 - t47 * t78) * pkin(4) (t28 * t78 + t29 * t73) * pkin(4), 0, 0, t22, 0, -t20, 0, t7, -t8, -t20 * t38 - t37 * t22, t7 * t37 + t38 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t64, -0.2e1 * t106, 0 (t73 ^ 2 + t78 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t37, -0.2e1 * t38, 0, t37 ^ 2 + t38 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, -t13, 0, 0, 0, 0, 0, 0, 0, 0, t3, -t4, 0 (t3 * t77 + t4 * t72) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, 0, -t34, -t80, t10, -t11, 0, 0, 0, 0, t16, 0, -t14, -t80, -t77 * t103 + t1, -t105 + (-t6 + t103) * t72 (-t14 * t72 - t16 * t77) * pkin(5) (t1 * t77 + t2 * t72) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, 0, -t45, 0, t28, -t29, 0, 0, 0, 0, t22, 0, -t20, 0, t7, -t8 (-t20 * t72 - t22 * t77) * pkin(5) (t7 * t77 + t72 * t8) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t64, -t106, 0, 0, 0, 0, 0, 0, 0, 1, t37 + t63, -t91 + (-pkin(5) - t59) * t72, 0 (t37 * t77 + t38 * t72) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t63, -0.2e1 * t107, 0 (t72 ^ 2 + t77 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t16, 0, -t14, -t80, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t22, 0, -t20, 0, t7, -t8, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t37, -t38, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t63, -t107, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t5;