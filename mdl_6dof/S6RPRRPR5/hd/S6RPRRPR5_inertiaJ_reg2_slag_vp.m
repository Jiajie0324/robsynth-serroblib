% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRPR5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPR5_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t50 = sin(pkin(10));
t51 = cos(pkin(10));
t54 = sin(qJ(3));
t57 = cos(qJ(3));
t31 = t50 * t54 - t51 * t57;
t33 = t50 * t57 + t51 * t54;
t53 = sin(qJ(4));
t56 = cos(qJ(4));
t22 = t31 * t56 + t33 * t53;
t24 = -t31 * t53 + t33 * t56;
t43 = -t51 * pkin(2) - pkin(1);
t28 = t31 * pkin(3) + t43;
t64 = -t24 * qJ(5) + t28;
t9 = pkin(4) * t22 + t64;
t94 = -0.2e1 * t9;
t20 = t22 ^ 2;
t21 = t24 ^ 2;
t87 = t53 * pkin(3);
t41 = qJ(5) + t87;
t93 = t41 ^ 2;
t92 = 0.2e1 * t28;
t91 = 0.2e1 * t41;
t90 = 0.2e1 * t43;
t89 = 0.2e1 * t51;
t59 = 0.2e1 * qJ(5);
t88 = pkin(4) + pkin(9);
t86 = t56 * pkin(3);
t85 = t24 * t22;
t84 = t41 * t22;
t52 = sin(qJ(6));
t47 = t52 ^ 2;
t83 = t47 * t22;
t82 = t52 * t22;
t81 = t52 * t24;
t55 = cos(qJ(6));
t80 = t55 * t22;
t19 = t55 * t24;
t79 = t55 * t52;
t78 = pkin(7) + qJ(2);
t45 = t50 ^ 2;
t46 = t51 ^ 2;
t77 = t45 + t46;
t48 = t55 ^ 2;
t76 = t47 + t48;
t75 = qJ(5) * t22;
t74 = t41 * qJ(5);
t73 = qJ(5) + t41;
t72 = -0.2e1 * t85;
t71 = 0.2e1 * t85;
t35 = t78 * t50;
t36 = t78 * t51;
t27 = -t35 * t54 + t36 * t57;
t16 = -pkin(8) * t31 + t27;
t26 = -t35 * t57 - t36 * t54;
t65 = -pkin(8) * t33 + t26;
t10 = t16 * t53 - t56 * t65;
t12 = t16 * t56 + t53 * t65;
t70 = t10 ^ 2 + t12 ^ 2;
t44 = -pkin(4) - t86;
t34 = t76 * t88;
t6 = t22 * t88 + t64;
t7 = pkin(5) * t24 + t10;
t2 = -t52 * t6 + t55 * t7;
t3 = t52 * t7 + t55 * t6;
t1 = t2 * t55 + t3 * t52;
t69 = -t2 * t52 + t3 * t55;
t39 = -pkin(9) + t44;
t68 = -t24 * t39 + t84;
t67 = t24 * t88 + t75;
t66 = 0.2e1 * t10 * t24 - 0.2e1 * t12 * t22;
t62 = -0.2e1 * pkin(4);
t60 = qJ(5) ^ 2;
t40 = -0.2e1 * t79;
t29 = t76 * t39;
t18 = t48 * t22;
t17 = t22 * t79;
t14 = t18 - t83;
t8 = -pkin(5) * t22 + t12;
t5 = t8 * t55;
t4 = t8 * t52;
t11 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t45, t50 * t89, 0, t46, 0, 0, pkin(1) * t89, -0.2e1 * pkin(1) * t50, 0.2e1 * t77 * qJ(2), qJ(2) ^ 2 * t77 + pkin(1) ^ 2, t33 ^ 2, -0.2e1 * t33 * t31, 0, t31 ^ 2, 0, 0, t31 * t90, t33 * t90, -0.2e1 * t26 * t33 - 0.2e1 * t27 * t31, t26 ^ 2 + t27 ^ 2 + t43 ^ 2, t21, t72, 0, t20, 0, 0, t22 * t92, t24 * t92, t66, t28 ^ 2 + t70, 0, 0, 0, t21, t72, t20, t66, t22 * t94, t24 * t94, t9 ^ 2 + t70, t47 * t20, 0.2e1 * t20 * t79, t52 * t71, t48 * t20, t55 * t71, t21, 0.2e1 * t2 * t24 - 0.2e1 * t8 * t80, -0.2e1 * t24 * t3 + 0.2e1 * t8 * t82, 0.2e1 * t69 * t22, t2 ^ 2 + t3 ^ 2 + t8 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t51, t50, 0, -pkin(1), 0, 0, 0, 0, 0, 0, t31, t33, 0, t43, 0, 0, 0, 0, 0, 0, t22, t24, 0, t28, 0, 0, 0, 0, 0, 0, 0, -t22, -t24, t9, 0, 0, 0, 0, 0, 0, -t81, -t19, t18 + t83, t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t33, 0, -t31, 0, t26, -t27, 0, 0, 0, 0, t24, 0, -t22, 0, -t10, -t12 (-t22 * t53 - t24 * t56) * pkin(3) (-t10 * t56 + t12 * t53) * pkin(3), 0, -t24, t22, 0, 0, 0, t24 * t44 - t84, t10, t12, t10 * t44 + t12 * t41, t17, t14, t19, -t17, -t81, 0, -t55 * t68 + t4, t52 * t68 + t5, -t1, t1 * t39 + t8 * t41; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t86, -0.2e1 * t87, 0 (t53 ^ 2 + t56 ^ 2) * pkin(3) ^ 2, 1, 0, 0, 0, 0, 0, 0, 0.2e1 * t44, t91, t44 ^ 2 + t93, t48, t40, 0, t47, 0, 0, t52 * t91, t55 * t91, -0.2e1 * t29, t39 ^ 2 * t76 + t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, 0, -t22, 0, -t10, -t12, 0, 0, 0, -t24, t22, 0, 0, 0, -pkin(4) * t24 - t75, t10, t12, -pkin(4) * t10 + qJ(5) * t12, t17, t14, t19, -t17, -t81, 0, -t55 * t67 + t4, t52 * t67 + t5, -t1, t8 * qJ(5) - t1 * t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t86, -t87, 0, 0, 1, 0, 0, 0, 0, 0, 0, t62 - t86, t59 + t87, -pkin(4) * t44 + t74, t48, t40, 0, t47, 0, 0, t73 * t52, t73 * t55 (-t39 + t88) * t76, -t34 * t39 + t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, t62, t59, pkin(4) ^ 2 + t60, t48, t40, 0, t47, 0, 0, t52 * t59, t55 * t59, 0.2e1 * t34, t76 * t88 ^ 2 + t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, 0, 0, t10, 0, 0, 0, 0, 0, 0, t19, -t81, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, t44, 0, 0, 0, 0, 0, 0, 0, 0, -t76, t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(4), 0, 0, 0, 0, 0, 0, 0, 0, -t76, -t34; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, 0, t80, t24, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t52, -t55, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, 0, -t52, 0, t55 * t39, -t52 * t39, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, 0, -t52, 0, -t55 * t88, t52 * t88, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, -t52, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t11;