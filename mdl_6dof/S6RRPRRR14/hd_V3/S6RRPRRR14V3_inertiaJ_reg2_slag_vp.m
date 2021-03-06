% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPRRR14V3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-04-12 15:12
% Revision: b693519ea345eb34ae9622239e7f1167217e9d53 (2019-04-09)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRRR14V3_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR14V3_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S6RRPRRR14V3_inertiaJ_reg2_slag_vp: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t47 = cos(qJ(5));
t49 = cos(qJ(2));
t45 = sin(qJ(2));
t48 = cos(qJ(4));
t31 = t48 * t45;
t43 = sin(qJ(5));
t73 = t43 * t31;
t14 = t49 * t47 + t73;
t122 = t14 ^ 2;
t42 = sin(qJ(6));
t46 = cos(qJ(6));
t44 = sin(qJ(4));
t94 = t47 * t44;
t12 = t42 * t94 + t46 * t48;
t121 = -0.2e1 * t12;
t120 = -0.2e1 * t14;
t119 = 0.2e1 * t43;
t118 = 2 * qJ(3);
t72 = t47 * t31;
t16 = -t49 * t43 + t72;
t28 = t44 * t45;
t4 = t16 * t46 + t42 * t28;
t117 = t4 * t47;
t100 = t44 * t46;
t2 = -t45 * t100 + t16 * t42;
t116 = t47 * t2;
t115 = t14 * t47;
t114 = t16 * t43;
t113 = t16 * t47;
t93 = t47 * t46;
t17 = -t42 * t48 + t44 * t93;
t112 = t17 * t47;
t34 = t42 ^ 2;
t111 = t34 * t43;
t36 = t44 ^ 2;
t110 = t36 * t43;
t109 = t36 * t47;
t37 = t45 ^ 2;
t50 = qJ(3) ^ 2;
t108 = t37 * t50;
t40 = t48 ^ 2;
t107 = t40 * t50;
t106 = t42 * t43;
t105 = t42 * t44;
t104 = t42 * t46;
t9 = t43 * t14;
t103 = t43 * t44;
t102 = t43 * t47;
t101 = t43 * t48;
t99 = t44 * t48;
t98 = t45 * t49;
t97 = t46 * t43;
t96 = t47 * t12;
t95 = t47 * t42;
t92 = t47 * t48;
t35 = t43 ^ 2;
t39 = t47 ^ 2;
t91 = t35 + t39;
t90 = qJ(3) * t45;
t89 = qJ(3) * t49;
t88 = t44 * qJ(3);
t87 = t48 * qJ(3);
t86 = -0.2e1 * t102;
t85 = 0.2e1 * t102;
t84 = -0.2e1 * t99;
t83 = 0.2e1 * t99;
t82 = -0.2e1 * t98;
t81 = 0.2e1 * t98;
t80 = t4 * t106;
t79 = t14 * t103;
t78 = t17 * t106;
t77 = t36 * t108;
t76 = t35 * t105;
t75 = t42 * t9;
t74 = t43 * t28;
t71 = t35 * t100;
t70 = t14 * t97;
t69 = t42 * t97;
t68 = t43 * t94;
t67 = t44 * t31;
t66 = t35 * t87;
t65 = t43 * t87;
t64 = t45 * t88;
t63 = t45 * t89;
t62 = t47 * t87;
t61 = t45 * t87;
t60 = t91 * t44;
t59 = 0.2e1 * t63;
t58 = t50 * t67;
t57 = t35 * t64;
t56 = t43 * t64;
t55 = t47 * t64;
t54 = (t36 + t40) * t118;
t5 = t12 * t90;
t6 = -t42 * t61 + t46 * t55;
t53 = -t5 * t42 - t6 * t46;
t10 = (-t42 * t92 + t100) * qJ(3);
t11 = (t46 * t92 + t105) * qJ(3);
t52 = -t10 * t42 + t11 * t46;
t51 = -t114 + t115;
t41 = t49 ^ 2;
t38 = t46 ^ 2;
t33 = t36 * t50;
t30 = t38 * t43;
t29 = t38 * t35;
t27 = t36 * t37;
t26 = t35 * t36;
t24 = t34 * t35;
t23 = t37 * t107;
t22 = t35 * t107;
t21 = t45 * t94;
t19 = t35 * t77;
t8 = t12 * t97;
t1 = t2 * t97;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t37, t81, 0, t41, 0, 0, 0, 0, 0, 0, t37, 0, t82, 0, 0, t41, t59, 0, t37 * t118, t108, t40 * t37, t37 * t84, t48 * t82, t27, t44 * t81, t41, t48 * t59, -0.2e1 * t44 * t63, t37 * t54, t23 + t77, t16 ^ 2, t16 * t120, 0.2e1 * t16 * t28, t122, t28 * t120, t27 (t110 * t37 + t14 * t31) * t118 (t109 * t37 + t16 * t31) * t118, 0.2e1 * t51 * t64, t39 * t77 + t19 + t23, t4 ^ 2, -0.2e1 * t4 * t2, 0.2e1 * t4 * t14, t2 ^ 2, t2 * t120, t122, 0.2e1 * t5 * t14 - 0.2e1 * t2 * t56, 0.2e1 * t6 * t14 - 0.2e1 * t4 * t56, 0.2e1 * t6 * t2 - 0.2e1 * t5 * t4, t5 ^ 2 + t6 ^ 2 + t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, 0, t49, 0, 0, 0, 0, 0, 0, t45, 0, 0, -t49, 0, 0, t89, 0, 0, t67 (-t36 + t40) * t45, -t44 * t49, -t67, -t48 * t49, 0, t49 * t88, t49 * t87, 0, 0, t16 * t94 (-t114 - t115) * t44, t109 * t45 - t16 * t48, t79, -t110 * t45 + t14 * t48, -t67 (t14 - t73) * t88 (t16 - t72) * t88, -t51 * t87 (0.1e1 - t91) * t58, t4 * t17, -t4 * t12 - t17 * t2, t103 * t4 + t17 * t14, t2 * t12, -t103 * t2 - t12 * t14, t79, t10 * t14 + (t44 * t5 + (-t12 * t28 + t2 * t48) * qJ(3)) * t43, -t11 * t14 + (t44 * t6 + (-t17 * t28 + t4 * t48) * qJ(3)) * t43, -t10 * t4 - t11 * t2 + t6 * t12 - t5 * t17, t5 * t10 - t6 * t11 - t35 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t118, t50, t36, t83, 0, t40, 0, 0, 0, 0, t54, t33 + t107, t39 * t36, t36 * t86, t47 * t84, t26, t43 * t83, t40, t43 * t54, t47 * t54, 0, t107 * t39 + t22 + t33, t17 ^ 2, t17 * t121, 0.2e1 * t17 * t103, t12 ^ 2, t103 * t121, t26 (t10 * t44 + t12 * t87) * t119 (-t11 * t44 + t17 * t87) * t119, -0.2e1 * t10 * t17 - 0.2e1 * t11 * t12, t10 ^ 2 + t11 ^ 2 + t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, 0, 0, 0, 0, 0, 0, 0, 0, t28, t31, 0, 0, 0, 0, 0, 0, 0, 0, t21, -t74, -t9 - t113, 0, 0, 0, 0, 0, 0, 0, -t75 - t116, -t70 - t117, -t1 + t80 (t53 + t55) * t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t48, t44, 0, 0, 0, 0, 0, 0, 0, 0, -t92, t101, -t60, 0, 0, 0, 0, 0, 0, 0, -t76 - t96, -t71 - t112, -t8 + t78 (t52 - t62) * t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91, 0, 0, 0, 0, 0, 0, 0, 0, 0, t29 + t24 + t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t31, 0, -t28, -t49, -t61, t64, 0, 0, t114, -t9 + t113, t74, -t115, t21, 0, -t47 * t61, t43 * t61, -t60 * t90, 0, t4 * t97, -t1 - t80, t70 - t117, t2 * t106, -t75 + t116, -t115, -t42 * t57 - t5 * t47, -t46 * t57 - t6 * t47 (t42 * t6 - t46 * t5) * t43, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, 0, t48, 0, -t88, -t87, 0, 0, t68 (-t35 + t39) * t44, -t101, -t68, -t92, 0, -t47 * t88, t43 * t88, t91 * t87, 0, t17 * t97, -t8 - t78, t71 - t112, t12 * t106, -t76 + t96, -t68, -t10 * t47 + t42 * t66, t11 * t47 + t46 * t66 (-t10 * t46 - t11 * t42) * t43, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t35, t85, 0, t39, 0, 0, 0, 0, 0, 0, t29, -0.2e1 * t35 * t104, t46 * t86, t24, t42 * t85, t39, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t16, 0, -t14, t28, t56, t55, 0, 0, t4 * t42, -t42 * t2 + t4 * t46, t42 * t14, -t2 * t46, t46 * t14, 0, t46 * t56, -t42 * t56, t53, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, 0, -t103, -t48, -t65, -t62, 0, 0, t17 * t42, -t42 * t12 + t17 * t46, t42 * t103, -t12 * t46, t44 * t97, 0, -t46 * t65, t42 * t65, t52, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, -t43, 0, 0, 0, 0, 0, 0, 0, 0, t93, -t95, t30 + t111, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, 0, t47, 0, 0, 0, 0, 0, t69, t30 - t111, -t95, -t69, -t93, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t34, 0.2e1 * t104, 0, t38, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t4, 0, -t2, t14, t5, t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17, 0, -t12, t103, t10, -t11, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, -t97, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97, 0, -t106, -t47, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, 0, t46, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0;];
MM_reg  = t3;
