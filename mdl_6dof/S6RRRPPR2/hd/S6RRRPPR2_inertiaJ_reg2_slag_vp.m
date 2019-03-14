% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRPPR2_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR2_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR2_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t67 = cos(qJ(3));
t56 = t67 * pkin(2);
t54 = t56 + pkin(3);
t61 = sin(pkin(10));
t62 = cos(pkin(10));
t64 = sin(qJ(3));
t97 = t64 * pkin(2);
t80 = t62 * t97;
t109 = -(pkin(3) + t54) * t61 - t80;
t65 = sin(qJ(2));
t68 = cos(qJ(2));
t39 = t64 * t65 - t67 * t68;
t41 = t64 * t68 + t67 * t65;
t23 = t62 * t39 + t61 * t41;
t25 = -t61 * t39 + t62 * t41;
t55 = -t68 * pkin(2) - pkin(1);
t30 = t39 * pkin(3) + t55;
t72 = -t25 * qJ(5) + t30;
t9 = t23 * pkin(4) + t72;
t108 = -0.2e1 * t9;
t21 = t23 ^ 2;
t22 = t25 ^ 2;
t37 = t61 * t54 + t80;
t33 = qJ(5) + t37;
t107 = t33 ^ 2;
t99 = t61 * pkin(3);
t50 = qJ(5) + t99;
t106 = t50 ^ 2;
t105 = 0.2e1 * t30;
t104 = 0.2e1 * t55;
t63 = sin(qJ(6));
t103 = 0.2e1 * t63;
t66 = cos(qJ(6));
t102 = 0.2e1 * t66;
t101 = 0.2e1 * t68;
t100 = -pkin(8) - pkin(7);
t98 = t62 * pkin(3);
t95 = t25 * t23;
t94 = t33 * t23;
t93 = t33 * t50;
t92 = t50 * t23;
t57 = t63 ^ 2;
t91 = t57 * t23;
t90 = t63 * t23;
t89 = t63 * t25;
t88 = t66 * t23;
t20 = t66 * t25;
t87 = t66 * t63;
t86 = t33 + t50;
t85 = -t62 * t54 + t61 * t97;
t59 = t66 ^ 2;
t84 = t57 + t59;
t58 = t65 ^ 2;
t60 = t68 ^ 2;
t83 = t58 + t60;
t82 = -0.2e1 * t95;
t81 = 0.2e1 * t95;
t35 = -pkin(4) + t85;
t43 = t100 * t65;
t44 = t100 * t68;
t28 = t64 * t43 - t67 * t44;
t17 = -t39 * qJ(4) + t28;
t27 = t67 * t43 + t64 * t44;
t73 = -t41 * qJ(4) + t27;
t10 = t61 * t17 - t62 * t73;
t12 = t62 * t17 + t61 * t73;
t79 = t10 ^ 2 + t12 ^ 2;
t52 = -pkin(4) - t98;
t48 = -pkin(9) + t52;
t29 = t84 * t48;
t78 = -t85 + t98;
t6 = (pkin(4) + pkin(9)) * t23 + t72;
t7 = t25 * pkin(5) + t10;
t2 = -t63 * t6 + t66 * t7;
t3 = t66 * t6 + t63 * t7;
t1 = t2 * t66 + t3 * t63;
t77 = -t2 * t63 + t3 * t66;
t32 = -pkin(9) + t35;
t76 = -t25 * t32 + t94;
t75 = -t25 * t48 + t92;
t74 = 0.2e1 * t10 * t25 - 0.2e1 * t12 * t23;
t49 = -0.2e1 * t87;
t19 = t59 * t23;
t18 = t23 * t87;
t15 = t84 * t32;
t14 = t19 - t91;
t8 = -t23 * pkin(5) + t12;
t5 = t8 * t66;
t4 = t8 * t63;
t11 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t58, t65 * t101, 0, t60, 0, 0, pkin(1) * t101, -0.2e1 * pkin(1) * t65, 0.2e1 * t83 * pkin(7), t83 * pkin(7) ^ 2 + pkin(1) ^ 2, t41 ^ 2, -0.2e1 * t41 * t39, 0, t39 ^ 2, 0, 0, t39 * t104, t41 * t104, -0.2e1 * t27 * t41 - 0.2e1 * t28 * t39, t27 ^ 2 + t28 ^ 2 + t55 ^ 2, t22, t82, 0, t21, 0, 0, t23 * t105, t25 * t105, t74, t30 ^ 2 + t79, 0, 0, 0, t22, t82, t21, t74, t23 * t108, t25 * t108, t9 ^ 2 + t79, t57 * t21, 0.2e1 * t21 * t87, t63 * t81, t59 * t21, t66 * t81, t22, 0.2e1 * t2 * t25 - 0.2e1 * t8 * t88, -0.2e1 * t3 * t25 + 0.2e1 * t8 * t90, 0.2e1 * t77 * t23, t2 ^ 2 + t3 ^ 2 + t8 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, 0, t68, 0, -t65 * pkin(7), -t68 * pkin(7), 0, 0, 0, 0, t41, 0, -t39, 0, t27, -t28 (-t39 * t64 - t41 * t67) * pkin(2) (t27 * t67 + t28 * t64) * pkin(2), 0, 0, t25, 0, -t23, 0, -t10, -t12, -t37 * t23 + t25 * t85, t10 * t85 + t12 * t37, 0, -t25, t23, 0, 0, 0, t35 * t25 - t94, t10, t12, t10 * t35 + t12 * t33, t18, t14, t20, -t18, -t89, 0, -t76 * t66 + t4, t76 * t63 + t5, -t1, t1 * t32 + t8 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t56, -0.2e1 * t97, 0 (t64 ^ 2 + t67 ^ 2) * pkin(2) ^ 2, 0, 0, 0, 0, 0, 1, -0.2e1 * t85, -0.2e1 * t37, 0, t37 ^ 2 + t85 ^ 2, 1, 0, 0, 0, 0, 0, 0, 0.2e1 * t35, 0.2e1 * t33, t35 ^ 2 + t107, t59, t49, 0, t57, 0, 0, t33 * t103, t33 * t102, -0.2e1 * t15, t84 * t32 ^ 2 + t107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41, 0, -t39, 0, t27, -t28, 0, 0, 0, 0, t25, 0, -t23, 0, -t10, -t12 (-t23 * t61 - t25 * t62) * pkin(3) (-t10 * t62 + t12 * t61) * pkin(3), 0, -t25, t23, 0, 0, 0, t52 * t25 - t92, t10, t12, t10 * t52 + t12 * t50, t18, t14, t20, -t18, -t89, 0, -t75 * t66 + t4, t75 * t63 + t5, -t1, t1 * t48 + t8 * t50; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t56, -t97, 0, 0, 0, 0, 0, 0, 0, 1, t78, t109, 0 (t37 * t61 - t62 * t85) * pkin(3), 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(4) - t78, 0.2e1 * qJ(5) - t109, t35 * t52 + t93, t59, t49, 0, t57, 0, 0, t86 * t63, t86 * t66 (-t32 - t48) * t84, t32 * t29 + t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t98, -0.2e1 * t99, 0 (t61 ^ 2 + t62 ^ 2) * pkin(3) ^ 2, 1, 0, 0, 0, 0, 0, 0, 0.2e1 * t52, 0.2e1 * t50, t52 ^ 2 + t106, t59, t49, 0, t57, 0, 0, t50 * t103, t50 * t102, -0.2e1 * t29, t84 * t48 ^ 2 + t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23, t25, 0, t30, 0, 0, 0, 0, 0, 0, 0, -t23, -t25, t9, 0, 0, 0, 0, 0, 0, -t89, -t20, t19 + t91, t77; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25, 0, 0, t10, 0, 0, 0, 0, 0, 0, t20, -t89, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, t35, 0, 0, 0, 0, 0, 0, 0, 0, -t84, t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, t52, 0, 0, 0, 0, 0, 0, 0, 0, -t84, t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, 0, t88, t25, t2, -t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, -t63, 0, t66 * t32, -t63 * t32, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, -t63, 0, t66 * t48, -t63 * t48, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t63, -t66, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, -t63, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t11;