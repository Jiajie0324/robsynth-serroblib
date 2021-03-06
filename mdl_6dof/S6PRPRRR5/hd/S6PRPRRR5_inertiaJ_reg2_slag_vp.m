% Calculate inertial parameters regressor of joint inertia matrix for
% S6PRPRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 20:44
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6PRPRRR5_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR5_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRR5_inertiaJ_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t59 = sin(qJ(5));
t95 = t59 * pkin(4);
t45 = pkin(10) + t95;
t58 = sin(qJ(6));
t51 = t58 ^ 2;
t62 = cos(qJ(6));
t53 = t62 ^ 2;
t79 = t51 + t53;
t103 = t79 * t45;
t60 = sin(qJ(4));
t63 = cos(qJ(5));
t64 = cos(qJ(4));
t30 = t59 * t64 + t60 * t63;
t32 = -t59 * t60 + t63 * t64;
t102 = (t30 * t59 + t32 * t63) * pkin(4);
t28 = t30 ^ 2;
t29 = t32 ^ 2;
t101 = t28 + t29;
t57 = cos(pkin(6));
t56 = sin(pkin(6));
t65 = cos(qJ(2));
t84 = t56 * t65;
t22 = -t57 * t60 - t64 * t84;
t23 = t57 * t64 - t60 * t84;
t8 = -t22 * t63 + t23 * t59;
t100 = t8 ^ 2;
t66 = -pkin(2) - pkin(8);
t89 = -pkin(9) + t66;
t35 = t89 * t60;
t76 = t89 * t64;
t16 = t35 * t59 - t63 * t76;
t99 = t16 ^ 2;
t43 = pkin(4) * t60 + qJ(3);
t98 = 0.2e1 * t43;
t97 = 0.2e1 * qJ(3);
t96 = t32 * pkin(5);
t94 = t63 * pkin(4);
t93 = t8 * t16;
t92 = t8 * t32;
t91 = t8 * t62;
t46 = -pkin(5) - t94;
t90 = pkin(5) - t46;
t88 = t16 * t32;
t87 = t16 * t62;
t86 = t32 * t46;
t61 = sin(qJ(2));
t85 = t56 * t61;
t26 = t58 * t32;
t83 = t58 * t62;
t82 = t62 * t32;
t80 = pkin(10) * t79;
t52 = t60 ^ 2;
t54 = t64 ^ 2;
t39 = t52 + t54;
t78 = -0.2e1 * t32 * t30;
t14 = t79 * t30;
t74 = -pkin(10) * t30 - t96;
t12 = pkin(5) * t30 - pkin(10) * t32 + t43;
t18 = t63 * t35 + t59 * t76;
t3 = t12 * t62 - t18 * t58;
t4 = t12 * t58 + t18 * t62;
t1 = -t3 * t58 + t4 * t62;
t10 = t22 * t59 + t23 * t63;
t5 = -t10 * t58 + t62 * t85;
t6 = t10 * t62 + t58 * t85;
t2 = -t5 * t58 + t6 * t62;
t73 = t10 * t30 - t92;
t72 = -t18 * t30 + t88;
t11 = t22 * t64 + t23 * t60;
t71 = -t30 * t45 + t86;
t67 = qJ(3) ^ 2;
t50 = t56 ^ 2;
t42 = t50 * t61 ^ 2;
t40 = 0.2e1 * t83;
t38 = qJ(3) * t85;
t34 = t39 * t66;
t25 = t62 * t30;
t24 = t58 * t30;
t21 = t50 * t65 ^ 2 + t57 ^ 2 + t42;
t20 = t58 * t82;
t15 = t16 * t58;
t13 = (-t51 + t53) * t32;
t7 = t8 * t58;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t21, 0, 0, 0, 0, 0, 0, 0, 0, 0, t21, 0, 0, 0, 0, 0, 0, 0, 0, 0, t22 ^ 2 + t23 ^ 2 + t42, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 ^ 2 + t100 + t42, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5 ^ 2 + t6 ^ 2 + t100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, -t85, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t84, t85, pkin(2) * t84 + t38, 0, 0, 0, 0, 0, 0, t60 * t85, t64 * t85, -t11, t11 * t66 + t38, 0, 0, 0, 0, 0, 0, t30 * t85, t32 * t85, -t73, t10 * t18 + t43 * t85 + t93, 0, 0, 0, 0, 0, 0, t26 * t8 + t30 * t5, -t30 * t6 + t8 * t82 (-t5 * t62 - t58 * t6) * t32, t3 * t5 + t4 * t6 + t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(2), t97, pkin(2) ^ 2 + t67, t54, -0.2e1 * t64 * t60, 0, t52, 0, 0, t60 * t97, t64 * t97, -0.2e1 * t34, t39 * t66 ^ 2 + t67, t29, t78, 0, t28, 0, 0, t30 * t98, t32 * t98, 0.2e1 * t72, t18 ^ 2 + t43 ^ 2 + t99, t53 * t29, -0.2e1 * t29 * t83, 0.2e1 * t30 * t82, t51 * t29, t58 * t78, t28, 0.2e1 * t16 * t26 + 0.2e1 * t3 * t30, 0.2e1 * t16 * t82 - 0.2e1 * t30 * t4, 0.2e1 * (-t3 * t62 - t4 * t58) * t32, t3 ^ 2 + t4 ^ 2 + t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t84, 0, 0, 0, 0, 0, 0, 0, 0, 0, t11, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2 * t30 - t92; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t39, t34, 0, 0, 0, 0, 0, 0, 0, 0, -t101, -t72, 0, 0, 0, 0, 0, 0, -t101 * t58, -t101 * t62, 0, t1 * t30 - t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28 * t79 + t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t22, -t23, 0, 0, 0, 0, 0, 0, 0, 0, -t8, -t10, 0 (t10 * t59 - t63 * t8) * pkin(4), 0, 0, 0, 0, 0, 0, -t91, t7, t2, t2 * t45 + t8 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, 0, -t60, 0, t64 * t66, -t60 * t66, 0, 0, 0, 0, t32, 0, -t30, 0, -t16, -t18, -t102 (-t16 * t63 + t18 * t59) * pkin(4), t20, t13, t24, -t20, t25, 0, t58 * t71 - t87, t62 * t71 + t15, t1, t1 * t45 + t16 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t60, 0, 0, 0, 0, 0, 0, 0, 0, t32, -t30, 0, t102, 0, 0, 0, 0, 0, 0, t82, -t26, t14, t103 * t30 - t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t94, -0.2e1 * t95, 0 (t59 ^ 2 + t63 ^ 2) * pkin(4) ^ 2, t51, t40, 0, t53, 0, 0, -0.2e1 * t46 * t62, 0.2e1 * t46 * t58, 0.2e1 * t103, t45 ^ 2 * t79 + t46 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t8, -t10, 0, 0, 0, 0, 0, 0, 0, 0, -t91, t7, t2, -t8 * pkin(5) + pkin(10) * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, -t30, 0, -t16, -t18, 0, 0, t20, t13, t24, -t20, t25, 0, t58 * t74 - t87, t62 * t74 + t15, t1, -t16 * pkin(5) + pkin(10) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, -t30, 0, 0, 0, 0, 0, 0, 0, 0, t82, -t26, t14, pkin(10) * t14 + t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t94, -t95, 0, 0, t51, t40, 0, t53, 0, 0, t90 * t62, -t90 * t58, t80 + t103, -t46 * pkin(5) + pkin(10) * t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t51, t40, 0, t53, 0, 0, 0.2e1 * pkin(5) * t62, -0.2e1 * pkin(5) * t58, 0.2e1 * t80, pkin(10) ^ 2 * t79 + pkin(5) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t5, -t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, 0, -t26, t30, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t24, -t25, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58, 0, t62, 0, -t58 * t45, -t62 * t45, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t58, 0, t62, 0, -t58 * pkin(10), -t62 * pkin(10), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t9;
