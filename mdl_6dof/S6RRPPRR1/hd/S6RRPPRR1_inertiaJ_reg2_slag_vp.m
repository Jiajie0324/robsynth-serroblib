% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:48
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPPRR1_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR1_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR1_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t52 = sin(qJ(6));
t44 = t52 ^ 2;
t55 = cos(qJ(6));
t47 = t55 ^ 2;
t76 = t44 + t47;
t102 = t76 * pkin(9);
t50 = sin(pkin(10));
t89 = t50 * pkin(2);
t39 = qJ(4) + t89;
t53 = sin(qJ(5));
t56 = cos(qJ(5));
t51 = cos(pkin(10));
t88 = t51 * pkin(2);
t41 = pkin(3) + t88;
t68 = -pkin(4) - t41;
t29 = t39 * t56 + t53 * t68;
t26 = -pkin(9) + t29;
t69 = t76 * t26;
t54 = sin(qJ(2));
t77 = -qJ(3) - pkin(7);
t70 = t77 * t54;
t57 = cos(qJ(2));
t71 = t77 * t57;
t23 = t50 * t70 - t51 * t71;
t32 = t50 * t54 - t51 * t57;
t11 = t32 * pkin(8) + t23;
t21 = -t50 * t71 - t51 * t70;
t34 = t50 * t57 + t51 * t54;
t61 = -t34 * pkin(8) + t21;
t5 = t11 * t53 - t56 * t61;
t101 = t5 ^ 2;
t17 = -t32 * t56 + t34 * t53;
t100 = t17 ^ 2;
t99 = t32 ^ 2;
t98 = 0.2e1 * t17;
t19 = t32 * t53 + t34 * t56;
t97 = 0.2e1 * t19;
t43 = -t57 * pkin(2) - pkin(1);
t96 = 0.2e1 * t43;
t95 = -0.2e1 * t52;
t94 = 0.2e1 * t55;
t93 = 0.2e1 * t57;
t92 = t5 * t52;
t91 = t5 * t55;
t90 = t5 * t56;
t27 = t39 * t53 - t56 * t68;
t25 = pkin(5) + t27;
t87 = pkin(5) + t25;
t86 = t34 * t32;
t85 = t44 * t19;
t84 = t52 * t17;
t83 = t52 * t19;
t82 = t52 * t55;
t81 = t55 * t17;
t80 = t55 * t19;
t79 = t56 * t52;
t78 = t56 * t55;
t46 = t54 ^ 2;
t49 = t57 ^ 2;
t75 = t46 + t49;
t74 = -0.2e1 * t19 * t17;
t73 = -0.2e1 * t82;
t72 = t21 ^ 2 + t23 ^ 2;
t36 = t76 * t53;
t67 = -pkin(5) * t19 - pkin(9) * t17;
t62 = t34 * qJ(4) - t43;
t9 = (-pkin(3) - pkin(4)) * t32 + t62;
t4 = t17 * pkin(5) - t19 * pkin(9) + t9;
t7 = t56 * t11 + t53 * t61;
t2 = t4 * t55 - t52 * t7;
t3 = t4 * t52 + t55 * t7;
t66 = -t2 * t55 - t3 * t52;
t1 = -t2 * t52 + t3 * t55;
t65 = -t17 * t26 + t19 * t25;
t64 = -t17 * t53 - t19 * t56;
t63 = 0.2e1 * t21 * t34 - 0.2e1 * t23 * t32;
t48 = t56 ^ 2;
t45 = t53 ^ 2;
t38 = 0.2e1 * t82;
t31 = t34 ^ 2;
t16 = t19 ^ 2;
t15 = pkin(3) * t32 - t62;
t14 = t47 * t19;
t13 = t52 * t80;
t8 = -t14 + t85;
t6 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t46, t54 * t93, 0, t49, 0, 0, pkin(1) * t93, -0.2e1 * pkin(1) * t54, 0.2e1 * t75 * pkin(7), pkin(7) ^ 2 * t75 + pkin(1) ^ 2, t31, -0.2e1 * t86, 0, t99, 0, 0, t32 * t96, t34 * t96, t63, t43 ^ 2 + t72, t31, 0, 0.2e1 * t86, 0, 0, t99, 0.2e1 * t15 * t32, t63, -0.2e1 * t15 * t34, t15 ^ 2 + t72, t16, t74, 0, t100, 0, 0, t9 * t98, t9 * t97, -0.2e1 * t17 * t7 + 0.2e1 * t19 * t5, t7 ^ 2 + t9 ^ 2 + t101, t47 * t16, t16 * t73, t80 * t98, t44 * t16, t52 * t74, t100, 0.2e1 * t17 * t2 + 0.2e1 * t5 * t83, -0.2e1 * t17 * t3 + 0.2e1 * t5 * t80, t66 * t97, t2 ^ 2 + t3 ^ 2 + t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54, 0, t57, 0, -t54 * pkin(7), -t57 * pkin(7), 0, 0, 0, 0, t34, 0, -t32, 0, -t21, -t23 (-t32 * t50 - t34 * t51) * pkin(2) (-t21 * t51 + t23 * t50) * pkin(2), 0, t34, 0, 0, t32, 0, -t21, -t32 * t39 - t34 * t41, t23, -t21 * t41 + t23 * t39, 0, 0, -t19, 0, t17, 0, t5, t7, -t17 * t29 + t19 * t27, t27 * t5 + t29 * t7, -t13, t8, -t84, t13, -t81, 0, t52 * t65 + t91, t55 * t65 - t92, -t1, t1 * t26 + t5 * t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t88, -0.2e1 * t89, 0 (t50 ^ 2 + t51 ^ 2) * pkin(2) ^ 2, 0, 0, 0, 1, 0, 0, 0.2e1 * t41, 0, 0.2e1 * t39, t39 ^ 2 + t41 ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t27, 0.2e1 * t29, 0, t27 ^ 2 + t29 ^ 2, t44, t38, 0, t47, 0, 0, t25 * t94, t25 * t95, -0.2e1 * t69, t26 ^ 2 * t76 + t25 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, t34, 0, t43, 0, 0, 0, 0, 0, 0, t32, 0, -t34, t15, 0, 0, 0, 0, 0, 0, -t17, -t19, 0, -t9, 0, 0, 0, 0, 0, 0, -t81, t84, t14 + t85, t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t34, 0, t21, 0, 0, 0, 0, 0, 0, 0, 0, t64, t53 * t7 - t90, 0, 0, 0, 0, 0, 0, t64 * t52, t64 * t55, 0, t1 * t53 - t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t41, 0, 0, 0, 0, 0, 0, -t56, t53, 0, -t27 * t56 + t29 * t53, 0, 0, 0, 0, 0, 0, -t78, t79, -t36, -t25 * t56 + t26 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45 + t48, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45 * t76 + t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19, 0, -t17, 0, -t5, -t7, 0, 0, t13, -t8, t84, -t13, t81, 0, t52 * t67 - t91, t55 * t67 + t92, t1, -t5 * pkin(5) + pkin(9) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -t27, -t29, 0, 0, -t44, t73, 0, -t47, 0, 0, -t87 * t55, t87 * t52, t69 - t102, -t25 * pkin(5) + pkin(9) * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, -t53, 0, 0, 0, 0, 0, 0, 0, 0, t78, -t79, t36, t56 * pkin(5) + pkin(9) * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t44, t38, 0, t47, 0, 0, pkin(5) * t94, pkin(5) * t95, 0.2e1 * t102, pkin(9) ^ 2 * t76 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t80, 0, -t83, t17, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t52, 0, -t55, 0, -t52 * t26, -t55 * t26, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t55, t52, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t52 * t53, -t55 * t53, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, 0, t55, 0, -t52 * pkin(9), -t55 * pkin(9), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t6;