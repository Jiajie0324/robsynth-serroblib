% Calculate inertial parameters regressor of joint inertia matrix for
% S6RPRPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RPRPRR4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR4_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t60 = sin(qJ(6));
t63 = cos(qJ(6));
t64 = cos(qJ(5));
t65 = cos(qJ(3));
t82 = t64 * t65;
t61 = sin(qJ(5));
t85 = t61 * t65;
t18 = t60 * t85 - t63 * t82;
t30 = -t60 * t61 + t63 * t64;
t10 = t30 * t18;
t27 = t60 * t64 + t63 * t61;
t19 = t27 * t65;
t90 = t19 * t27;
t106 = t10 - t90;
t62 = sin(qJ(3));
t54 = t62 ^ 2;
t56 = t65 ^ 2;
t40 = t54 + t56;
t105 = (t27 * t60 + t30 * t63) * pkin(5);
t66 = -pkin(3) - pkin(8);
t104 = t66 * t65;
t102 = t27 ^ 2;
t26 = t30 ^ 2;
t103 = t26 + t102;
t45 = t61 * pkin(5) + qJ(4);
t101 = 0.2e1 * t45;
t100 = 0.2e1 * t62;
t99 = 0.2e1 * t65;
t98 = 0.2e1 * qJ(4);
t58 = sin(pkin(10));
t97 = t58 * pkin(1);
t59 = cos(pkin(10));
t96 = t59 * pkin(1);
t95 = t60 * pkin(5);
t94 = t62 * pkin(5);
t93 = t63 * pkin(5);
t44 = -pkin(2) - t96;
t51 = t62 * qJ(4);
t75 = t44 - t51;
t15 = t75 + t104;
t76 = pkin(9) * t65 - t15;
t43 = pkin(7) + t97;
t35 = t62 * t43;
t24 = t62 * pkin(4) + t35;
t87 = t61 * t24;
t6 = -t76 * t64 + t87;
t92 = t63 * t6;
t91 = t65 * pkin(3);
t89 = t27 * t18;
t88 = t30 * t19;
t86 = t61 * t62;
t84 = t62 * t27;
t83 = t64 * t61;
t81 = t65 * t62;
t80 = t40 * t43 ^ 2;
t37 = t65 * t43;
t25 = t65 * pkin(4) + t37;
t53 = t61 ^ 2;
t55 = t64 ^ 2;
t39 = t53 + t55;
t79 = t65 * qJ(4);
t78 = -0.2e1 * t81;
t77 = t61 * t82;
t21 = t64 * t24;
t5 = t76 * t61 + t21 + t94;
t1 = t63 * t5 - t60 * t6;
t2 = t60 * t5 + t92;
t74 = t1 * t30 + t2 * t27;
t7 = -t61 * t15 + t21;
t8 = t64 * t15 + t87;
t3 = t8 * t61 + t7 * t64;
t73 = -t62 * pkin(3) + t79;
t32 = (-pkin(9) + t66) * t61;
t50 = t64 * t66;
t33 = -t64 * pkin(9) + t50;
t11 = -t60 * t32 + t63 * t33;
t12 = t63 * t32 + t60 * t33;
t72 = t11 * t30 + t12 * t27;
t70 = t62 * t66 + t79;
t67 = qJ(4) ^ 2;
t49 = t64 * t62;
t48 = t55 * t56;
t47 = t53 * t56;
t42 = 0.2e1 * t81;
t31 = t39 * t66;
t29 = t39 * t65;
t23 = t75 - t91;
t22 = t30 * t62;
t17 = t19 ^ 2;
t16 = t18 ^ 2;
t14 = pkin(5) * t82 + t25;
t13 = 0.2e1 * t40 * t43;
t4 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t96, -0.2e1 * t97, 0 (t58 ^ 2 + t59 ^ 2) * pkin(1) ^ 2, t54, t42, 0, t56, 0, 0, -0.2e1 * t44 * t65, t44 * t100, t13, t44 ^ 2 + t80, 0, 0, 0, t54, t42, t56, t13, t23 * t99, -0.2e1 * t23 * t62, t23 ^ 2 + t80, t47, 0.2e1 * t56 * t83, t61 * t78, t48, t64 * t78, t54, 0.2e1 * t25 * t82 + 0.2e1 * t7 * t62, -0.2e1 * t25 * t85 - 0.2e1 * t8 * t62 (t61 * t7 - t64 * t8) * t99, t25 ^ 2 + t7 ^ 2 + t8 ^ 2, t17, -0.2e1 * t18 * t19, -t19 * t100, t16, t18 * t100, t54, 0.2e1 * t1 * t62 - 0.2e1 * t14 * t18, -0.2e1 * t14 * t19 - 0.2e1 * t2 * t62, 0.2e1 * t1 * t19 + 0.2e1 * t2 * t18, t1 ^ 2 + t14 ^ 2 + t2 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25 * t62 - t3 * t65, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1 * t18 + t14 * t62 - t2 * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47 + t48 + t54, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17 + t16 + t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, t65, 0, -t35, -t37, 0, 0, 0, -t62, -t65, 0, 0, 0, t73, t35, t37, t73 * t43, -t77 (t53 - t55) * t65, t49, t77, -t86, 0, t25 * t61 + t64 * t70, t25 * t64 - t61 * t70, -t3, t25 * qJ(4) + t3 * t66, -t88, t10 + t90, t22, -t89, -t84, 0, t11 * t62 + t14 * t27 - t45 * t18, -t12 * t62 + t14 * t30 - t45 * t19, t11 * t19 + t12 * t18 - t74, t1 * t11 + t2 * t12 + t14 * t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, -t62, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, t62, t51 + t91, 0, 0, 0, 0, 0, 0, t86, t49, t29, -t39 * t104 + t51, 0, 0, 0, 0, 0, 0, t84, t22, -t106, t18 * t11 - t19 * t12 + t62 * t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(3), t98, pkin(3) ^ 2 + t67, t55, -0.2e1 * t83, 0, t53, 0, 0, t61 * t98, t64 * t98, -0.2e1 * t31, t39 * t66 ^ 2 + t67, t26, -0.2e1 * t30 * t27, 0, t102, 0, 0, t27 * t101, t30 * t101, -0.2e1 * t72, t11 ^ 2 + t12 ^ 2 + t45 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, 0, 0, t35, 0, 0, 0, 0, 0, 0, t49, -t86, 0, t3, 0, 0, 0, 0, 0, 0, t22, -t84, t88 + t89, t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t29, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(3), 0, 0, 0, 0, 0, 0, 0, 0, -t39, t31, 0, 0, 0, 0, 0, 0, 0, 0, -t103, t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t85, 0, -t82, t62, t7, -t8, 0, 0, 0, 0, -t19, 0, t18, t62, t62 * t93 + t1, -t92 + (-t5 - t94) * t60 (t18 * t60 + t19 * t63) * pkin(5) (t1 * t63 + t2 * t60) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t82, t85, 0, 0, 0, 0, 0, 0, 0, 0, t18, t19, 0 (t18 * t63 - t19 * t60) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, -t61, 0, t50, -t61 * t66, 0, 0, 0, 0, t30, 0, -t27, 0, t11, -t12, -t105 (t11 * t63 + t12 * t60) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t61, 0, 0, 0, 0, 0, 0, 0, 0, t30, -t27, 0, t105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t93, -0.2e1 * t95, 0 (t60 ^ 2 + t63 ^ 2) * pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t19, 0, t18, t62, t1, -t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t18, t19, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, 0, -t27, 0, t11, -t12, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, -t27, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t93, -t95, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t4;
