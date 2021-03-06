% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRRRP9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:29
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRRRP9_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP9_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRRP9_inertiaJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t70 = sin(qJ(5));
t71 = sin(qJ(4));
t73 = cos(qJ(5));
t74 = cos(qJ(4));
t44 = t70 * t71 - t73 * t74;
t59 = -t74 * pkin(4) - pkin(3);
t29 = t44 * pkin(5) + t59;
t110 = 0.2e1 * t29;
t109 = 0.2e1 * t59;
t72 = sin(qJ(3));
t108 = 0.2e1 * t72;
t107 = 0.2e1 * t74;
t106 = 2 * qJ(2);
t105 = -pkin(9) - pkin(8);
t104 = t70 * pkin(4);
t64 = t73 * pkin(4);
t75 = cos(qJ(3));
t103 = t75 * pkin(3);
t46 = t70 * t74 + t73 * t71;
t39 = t46 * t72;
t102 = t71 * t72;
t101 = t71 * t74;
t100 = t71 * t75;
t76 = -pkin(1) - pkin(7);
t99 = t71 * t76;
t98 = t72 * t76;
t49 = t72 * pkin(3) - t75 * pkin(8) + qJ(2);
t95 = t74 * t76;
t87 = t72 * t95;
t19 = t87 + (-pkin(9) * t75 + t49) * t71;
t97 = t73 * t19;
t96 = t74 * t72;
t57 = t74 * t75;
t94 = t75 * t44;
t93 = t75 * t46;
t92 = t75 * t72;
t91 = t75 * t76;
t65 = t71 ^ 2;
t67 = t74 ^ 2;
t90 = t65 + t67;
t66 = t72 ^ 2;
t68 = t75 ^ 2;
t54 = t66 + t68;
t89 = t93 * qJ(6);
t88 = -0.2e1 * t92;
t86 = t71 * t57;
t85 = t90 * t72;
t40 = t74 * t49;
t15 = -pkin(9) * t57 + t40 + (pkin(4) - t99) * t72;
t4 = t73 * t15 - t70 * t19;
t50 = t105 * t71;
t51 = t105 * t74;
t21 = t73 * t50 + t70 * t51;
t41 = pkin(4) * t100 - t91;
t84 = -pkin(8) * t72 - t103;
t5 = t70 * t15 + t97;
t23 = -t71 * t98 + t40;
t24 = t71 * t49 + t87;
t83 = -t23 * t71 + t24 * t74;
t22 = t70 * t50 - t73 * t51;
t36 = -t70 * t100 + t73 * t57;
t82 = -t36 * qJ(6) + t4;
t63 = t72 * pkin(5);
t1 = t63 + t82;
t81 = -t97 + (-t72 * pkin(4) - t15) * t70;
t80 = pkin(4) ^ 2;
t78 = 0.2e1 * pkin(5);
t77 = qJ(2) ^ 2;
t69 = t76 ^ 2;
t62 = t70 ^ 2 * t80;
t61 = -0.2e1 * t104;
t60 = t68 * t69;
t58 = t64 + pkin(5);
t48 = t54 * t76;
t43 = t46 ^ 2;
t42 = t44 ^ 2;
t38 = t44 * t72;
t37 = t44 * t104;
t35 = -t70 * t102 + t73 * t96;
t31 = t36 ^ 2;
t30 = t93 ^ 2;
t28 = t36 * t108;
t27 = t93 * t108;
t26 = t35 * t104;
t25 = t93 * t104;
t20 = -0.2e1 * t46 * t44;
t18 = t36 * t46;
t17 = t93 * t44;
t16 = pkin(5) * t93 + t41;
t13 = -0.2e1 * t36 * t93;
t12 = -t44 * qJ(6) + t22;
t11 = -t46 * qJ(6) + t21;
t10 = t35 ^ 2 + t39 ^ 2 + t68;
t9 = -t35 * t72 - t75 * t36;
t8 = -t39 * t72 - t75 * t93;
t7 = -t36 * t44 - t46 * t93;
t6 = -t35 * t44 + t39 * t46;
t3 = -t35 * t93 + t36 * t39;
t2 = t5 - t89;
t14 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -2 * pkin(1), t106, pkin(1) ^ 2 + t77, t68, t88, 0, t66, 0, 0, t72 * t106, t75 * t106, -0.2e1 * t48, t66 * t69 + t60 + t77, t67 * t68, -0.2e1 * t68 * t101, t92 * t107, t65 * t68, t71 * t88, t66, 0.2e1 * t23 * t72 - 0.2e1 * t68 * t99, -0.2e1 * t24 * t72 - 0.2e1 * t68 * t95, 0.2e1 * (-t23 * t74 - t24 * t71) * t75, t23 ^ 2 + t24 ^ 2 + t60, t31, t13, t28, t30, -t27, t66, 0.2e1 * t4 * t72 + 0.2e1 * t41 * t93, 0.2e1 * t41 * t36 - 0.2e1 * t5 * t72, -0.2e1 * t4 * t36 - 0.2e1 * t5 * t93, t4 ^ 2 + t41 ^ 2 + t5 ^ 2, t31, t13, t28, t30, -t27, t66, 0.2e1 * t1 * t72 + 0.2e1 * t16 * t93, 0.2e1 * t16 * t36 - 0.2e1 * t2 * t72, -0.2e1 * t1 * t36 - 0.2e1 * t2 * t93, t1 ^ 2 + t16 ^ 2 + t2 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(1), 0, 0, 0, 0, 0, 0, 0, 0, -t54, t48, 0, 0, 0, 0, 0, 0, -t54 * t71, -t54 * t74, 0, t68 * t76 + t83 * t72, 0, 0, 0, 0, 0, 0, t8, t9, t3, t5 * t35 - t39 * t4 - t41 * t75, 0, 0, 0, 0, 0, 0, t8, t9, t3, -t1 * t39 - t16 * t75 + t2 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90 * t66 + t68, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, 0, -t72, 0, t91, -t98, 0, 0, t86 (-t65 + t67) * t75, t102, -t86, t96, 0, t84 * t71 + t74 * t91, -t71 * t91 + t84 * t74, t83, pkin(3) * t91 + t83 * pkin(8), t18, t7, t39, t17, -t38, 0, t21 * t72 + t41 * t44 + t59 * t93, -t22 * t72 + t59 * t36 + t41 * t46, -t21 * t36 - t22 * t93 - t4 * t46 - t5 * t44, t4 * t21 + t5 * t22 + t41 * t59, t18, t7, t39, t17, -t38, 0, t11 * t72 + t16 * t44 + t29 * t93, -t12 * t72 + t16 * t46 + t29 * t36, -t1 * t46 - t11 * t36 - t12 * t93 - t2 * t44, t1 * t11 + t2 * t12 + t16 * t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, -t72, 0, 0, 0, 0, 0, 0, 0, 0, t57, -t100, t85, pkin(8) * t85 + t103, 0, 0, 0, 0, 0, 0, -t94, -t93, t6, -t21 * t39 + t35 * t22 - t75 * t59, 0, 0, 0, 0, 0, 0, -t94, -t93, t6, -t11 * t39 + t35 * t12 - t75 * t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t65, 0.2e1 * t101, 0, t67, 0, 0, pkin(3) * t107, -0.2e1 * pkin(3) * t71, 0.2e1 * t90 * pkin(8), t90 * pkin(8) ^ 2 + pkin(3) ^ 2, t43, t20, 0, t42, 0, 0, t44 * t109, t46 * t109, -0.2e1 * t21 * t46 - 0.2e1 * t22 * t44, t21 ^ 2 + t22 ^ 2 + t59 ^ 2, t43, t20, 0, t42, 0, 0, t44 * t110, t46 * t110, -0.2e1 * t11 * t46 - 0.2e1 * t12 * t44, t11 ^ 2 + t12 ^ 2 + t29 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t57, 0, -t100, t72, t23, -t24, 0, 0, 0, 0, t36, 0, -t93, t72, t72 * t64 + t4, t81, -t36 * t64 - t25 (t4 * t73 + t5 * t70) * pkin(4), 0, 0, t36, 0, -t93, t72, t58 * t72 + t1, t81 + t89, -t58 * t36 - t25, t1 * t58 + t2 * t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t102, -t96, 0, 0, 0, 0, 0, 0, 0, 0, -t39, -t35, 0, -t39 * t64 + t26, 0, 0, 0, 0, 0, 0, -t39, -t35, 0, -t39 * t58 + t26; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, 0, t74, 0, -t71 * pkin(8), -t74 * pkin(8), 0, 0, 0, 0, t46, 0, -t44, 0, t21, -t22, -t46 * t64 - t37 (t21 * t73 + t22 * t70) * pkin(4), 0, 0, t46, 0, -t44, 0, t11, -t12, -t58 * t46 - t37, t12 * t104 + t11 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t64, t61, 0, t73 ^ 2 * t80 + t62, 0, 0, 0, 0, 0, 1, 0.2e1 * t58, t61, 0, t58 ^ 2 + t62; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, 0, -t93, t72, t4, -t5, 0, 0, 0, 0, t36, 0, -t93, t72, 0.2e1 * t63 + t82, -t2, -t36 * pkin(5), t1 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t39, -t35, 0, 0, 0, 0, 0, 0, 0, 0, -t39, -t35, 0, -t39 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, 0, -t44, 0, t21, -t22, 0, 0, 0, 0, t46, 0, -t44, 0, t11, -t12, -t46 * pkin(5), t11 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t64, -t104, 0, 0, 0, 0, 0, 0, 0, 1, t78 + t64, -t104, 0, t58 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t78, 0, 0, pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, t36, 0, t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, t46, 0, t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t14;
