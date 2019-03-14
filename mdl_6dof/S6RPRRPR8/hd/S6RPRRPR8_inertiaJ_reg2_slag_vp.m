% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:25
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRPR8_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR8_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPR8_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t68 = cos(qJ(4));
t69 = cos(qJ(3));
t55 = t68 * t69;
t63 = sin(pkin(10));
t64 = cos(pkin(10));
t66 = sin(qJ(4));
t90 = t66 * t69;
t36 = t55 * t64 - t63 * t90;
t65 = sin(qJ(6));
t43 = t63 * t68 + t64 * t66;
t85 = t69 * t43;
t95 = cos(qJ(6));
t11 = t36 * t65 + t85 * t95;
t105 = -0.2e1 * t11;
t41 = t63 * t66 - t64 * t68;
t56 = -pkin(4) * t68 - pkin(3);
t31 = pkin(5) * t41 + t56;
t104 = 0.2e1 * t31;
t103 = 0.2e1 * t56;
t67 = sin(qJ(3));
t102 = 0.2e1 * t67;
t101 = 0.2e1 * t68;
t100 = 2 * qJ(2);
t99 = t63 * pkin(4);
t98 = t64 * pkin(4);
t97 = t67 * pkin(4);
t96 = t69 * pkin(3);
t94 = t41 * t67;
t93 = t43 * t67;
t92 = t66 * t67;
t91 = t66 * t68;
t70 = -pkin(1) - pkin(7);
t89 = t66 * t70;
t88 = t67 * t70;
t87 = t68 * t67;
t86 = t68 * t70;
t84 = t69 * t67;
t83 = t69 * t70;
t82 = -qJ(5) - pkin(8);
t47 = pkin(3) * t67 - pkin(8) * t69 + qJ(2);
t40 = t68 * t47;
t80 = qJ(5) * t69;
t19 = -t68 * t80 + t40 + (pkin(4) - t89) * t67;
t78 = t67 * t86;
t25 = t78 + (t47 - t80) * t66;
t9 = t19 * t63 + t25 * t64;
t58 = t66 ^ 2;
t60 = t68 ^ 2;
t81 = t58 + t60;
t59 = t67 ^ 2;
t61 = t69 ^ 2;
t51 = t59 + t61;
t79 = -0.2e1 * t84;
t77 = t66 * t55;
t8 = t19 * t64 - t25 * t63;
t4 = pkin(5) * t67 - pkin(9) * t36 + t8;
t5 = -pkin(9) * t85 + t9;
t1 = t4 * t95 - t5 * t65;
t76 = t81 * t67;
t48 = t82 * t66;
t49 = t82 * t68;
t26 = t48 * t64 + t49 * t63;
t44 = pkin(4) * t90 - t83;
t75 = -pkin(8) * t67 - t96;
t28 = -t66 * t88 + t40;
t29 = t47 * t66 + t78;
t74 = -t28 * t66 + t29 * t68;
t27 = t48 * t63 - t49 * t64;
t2 = t4 * t65 + t5 * t95;
t71 = qJ(2) ^ 2;
t62 = t70 ^ 2;
t57 = t61 * t62;
t54 = pkin(5) + t98;
t46 = t51 * t70;
t38 = t54 * t65 + t95 * t99;
t37 = t54 * t95 - t65 * t99;
t24 = pkin(5) * t85 + t44;
t22 = -t41 * t65 + t43 * t95;
t20 = t41 * t95 + t43 * t65;
t16 = -pkin(9) * t41 + t27;
t15 = -pkin(9) * t43 + t26;
t14 = t36 * t95 - t65 * t85;
t13 = -t65 * t93 - t94 * t95;
t10 = t65 * t94 - t93 * t95;
t7 = t15 * t65 + t16 * t95;
t6 = t15 * t95 - t16 * t65;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -2 * pkin(1), t100, pkin(1) ^ 2 + t71, t61, t79, 0, t59, 0, 0, t67 * t100, t69 * t100, -0.2e1 * t46, t59 * t62 + t57 + t71, t60 * t61, -0.2e1 * t61 * t91, t84 * t101, t58 * t61, t66 * t79, t59, 0.2e1 * t28 * t67 - 0.2e1 * t61 * t89, -0.2e1 * t29 * t67 - 0.2e1 * t61 * t86, 0.2e1 * (-t28 * t68 - t29 * t66) * t69, t28 ^ 2 + t29 ^ 2 + t57, t36 ^ 2, -0.2e1 * t36 * t85, t36 * t102, t85 ^ 2, -t85 * t102, t59, 0.2e1 * t44 * t85 + 0.2e1 * t67 * t8, 0.2e1 * t36 * t44 - 0.2e1 * t67 * t9, -0.2e1 * t36 * t8 - 0.2e1 * t85 * t9, t44 ^ 2 + t8 ^ 2 + t9 ^ 2, t14 ^ 2, t14 * t105, t14 * t102, t11 ^ 2, t67 * t105, t59, 0.2e1 * t1 * t67 + 0.2e1 * t11 * t24, 0.2e1 * t14 * t24 - 0.2e1 * t2 * t67, -0.2e1 * t1 * t14 - 0.2e1 * t11 * t2, t1 ^ 2 + t2 ^ 2 + t24 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(1), 0, 0, 0, 0, 0, 0, 0, 0, -t51, t46, 0, 0, 0, 0, 0, 0, -t51 * t66, -t51 * t68, 0, t61 * t70 + t67 * t74, 0, 0, 0, 0, 0, 0, -t67 * t93 - t69 * t85, -t36 * t69 + t67 * t94, t36 * t93 + t85 * t94, -t44 * t69 - t8 * t93 - t9 * t94, 0, 0, 0, 0, 0, 0, t10 * t67 - t11 * t69, -t13 * t67 - t14 * t69, -t10 * t14 - t11 * t13, t1 * t10 + t13 * t2 - t24 * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59 * t81 + t61, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93 ^ 2 + t94 ^ 2 + t61, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 ^ 2 + t13 ^ 2 + t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, -t67, 0, t83, -t88, 0, 0, t77 (-t58 + t60) * t69, t92, -t77, t87, 0, t66 * t75 + t68 * t83, -t66 * t83 + t68 * t75, t74, pkin(3) * t83 + pkin(8) * t74, t36 * t43, -t36 * t41 - t43 * t85, t93, t85 * t41, -t94, 0, t26 * t67 + t41 * t44 + t56 * t85, -t27 * t67 + t36 * t56 + t43 * t44, -t26 * t36 - t27 * t85 - t41 * t9 - t43 * t8, t26 * t8 + t27 * t9 + t44 * t56, t14 * t22, -t11 * t22 - t14 * t20, t22 * t67, t11 * t20, -t20 * t67, 0, t11 * t31 + t20 * t24 + t6 * t67, t14 * t31 + t22 * t24 - t67 * t7, -t1 * t22 - t11 * t7 - t14 * t6 - t2 * t20, t1 * t6 + t2 * t7 + t24 * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, -t67, 0, 0, 0, 0, 0, 0, 0, 0, t55, -t90, t76, pkin(8) * t76 + t96, 0, 0, 0, 0, 0, 0, -t69 * t41, -t85, t41 * t94 + t43 * t93, -t26 * t93 - t27 * t94 - t56 * t69, 0, 0, 0, 0, 0, 0, -t69 * t20, -t69 * t22, -t10 * t22 - t13 * t20, t10 * t6 + t13 * t7 - t31 * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t58, 0.2e1 * t91, 0, t60, 0, 0, pkin(3) * t101, -0.2e1 * pkin(3) * t66, 0.2e1 * t81 * pkin(8), pkin(8) ^ 2 * t81 + pkin(3) ^ 2, t43 ^ 2, -0.2e1 * t43 * t41, 0, t41 ^ 2, 0, 0, t41 * t103, t43 * t103, -0.2e1 * t26 * t43 - 0.2e1 * t27 * t41, t26 ^ 2 + t27 ^ 2 + t56 ^ 2, t22 ^ 2, -0.2e1 * t22 * t20, 0, t20 ^ 2, 0, 0, t20 * t104, t22 * t104, -0.2e1 * t20 * t7 - 0.2e1 * t22 * t6, t31 ^ 2 + t6 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t55, 0, -t90, t67, t28, -t29, 0, 0, 0, 0, t36, 0, -t85, t67, t64 * t97 + t8, -t63 * t97 - t9 (-t36 * t64 - t63 * t85) * pkin(4) (t63 * t9 + t64 * t8) * pkin(4), 0, 0, t14, 0, -t11, t67, t37 * t67 + t1, -t38 * t67 - t2, -t11 * t38 - t14 * t37, t1 * t37 + t2 * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t92, -t87, 0, 0, 0, 0, 0, 0, 0, 0, -t93, t94, 0 (-t63 * t94 - t64 * t93) * pkin(4), 0, 0, 0, 0, 0, 0, t10, -t13, 0, t10 * t37 + t13 * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, t68, 0, -t66 * pkin(8), -t68 * pkin(8), 0, 0, 0, 0, t43, 0, -t41, 0, t26, -t27 (-t41 * t63 - t43 * t64) * pkin(4) (t26 * t64 + t27 * t63) * pkin(4), 0, 0, t22, 0, -t20, 0, t6, -t7, -t20 * t38 - t22 * t37, t37 * t6 + t38 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t98, -0.2e1 * t99, 0 (t63 ^ 2 + t64 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 0, 0, 1, 0.2e1 * t37, -0.2e1 * t38, 0, t37 ^ 2 + t38 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85, t36, 0, t44, 0, 0, 0, 0, 0, 0, t11, t14, 0, t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t69, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41, t43, 0, t56, 0, 0, 0, 0, 0, 0, t20, t22, 0, t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t14, 0, -t11, t67, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10, -t13, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t22, 0, -t20, 0, t6, -t7, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t37, -t38, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t3;