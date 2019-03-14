% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPRPP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta5]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRPP4_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP4_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP4_inertiaJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t74 = sin(qJ(2));
t67 = t74 ^ 2;
t76 = cos(qJ(2));
t69 = t76 ^ 2;
t126 = t67 + t69;
t121 = -0.2e1 * t74;
t71 = sin(pkin(9));
t72 = cos(pkin(9));
t73 = sin(qJ(4));
t75 = cos(qJ(4));
t38 = t71 * t75 + t72 * t73;
t40 = -t71 * t73 + t72 * t75;
t125 = (t38 * t71 + t40 * t72) * pkin(4);
t36 = t38 ^ 2;
t37 = t40 ^ 2;
t124 = t36 + t37;
t77 = -pkin(2) - pkin(8);
t99 = -qJ(5) + t77;
t45 = t99 * t73;
t90 = t99 * t75;
t22 = t71 * t45 - t72 * t90;
t24 = t72 * t45 + t71 * t90;
t92 = -t22 * t40 + t24 * t38;
t102 = t75 * t76;
t106 = t73 * t76;
t27 = -t72 * t102 + t71 * t106;
t123 = t27 ^ 2;
t57 = t73 * pkin(4) + qJ(3);
t122 = 0.2e1 * t57;
t120 = 0.2e1 * t76;
t119 = 0.2e1 * qJ(3);
t118 = t71 * pkin(4);
t117 = t72 * pkin(4);
t116 = t74 * pkin(4);
t62 = t74 * pkin(7);
t47 = t74 * pkin(3) + t62;
t42 = t75 * t47;
t94 = -t74 * qJ(3) - pkin(1);
t35 = t77 * t76 + t94;
t89 = qJ(5) * t76 - t35;
t13 = t89 * t73 + t116 + t42;
t108 = t73 * t47;
t15 = -t89 * t75 + t108;
t4 = t71 * t13 + t72 * t15;
t114 = t22 * t74;
t112 = t24 * t74;
t29 = t38 * t76;
t111 = t29 * t27;
t18 = t38 * t27;
t110 = t40 * t29;
t109 = t40 * t38;
t107 = t73 * t74;
t105 = t74 * t27;
t31 = t74 * t38;
t32 = t74 * t40;
t104 = t74 * t76;
t103 = t75 * t73;
t101 = t126 * pkin(7) ^ 2;
t64 = t76 * pkin(7);
t48 = t76 * pkin(3) + t64;
t66 = t73 ^ 2;
t68 = t75 ^ 2;
t50 = t66 + t68;
t100 = t76 * qJ(3);
t98 = -0.2e1 * t104;
t97 = t22 ^ 2 + t24 ^ 2;
t1 = t74 * qJ(6) + t4;
t96 = t73 * t102;
t33 = pkin(4) * t102 + t48;
t95 = -t22 * t29 + t24 * t27;
t93 = -t72 * t13 + t71 * t15;
t91 = t18 + t110;
t2 = -t74 * pkin(5) + t93;
t88 = t1 * t38 - t2 * t40;
t87 = t4 * t38 - t40 * t93;
t86 = -t74 * pkin(2) + t100;
t19 = -t73 * t35 + t42;
t20 = t75 * t35 + t108;
t5 = t19 * t75 + t20 * t73;
t85 = t40 * t27 + t29 * t38;
t53 = qJ(6) + t118;
t55 = pkin(5) + t117;
t84 = t38 * t53 + t55 * t40;
t82 = t74 * t77 + t100;
t81 = 0.2e1 * t92;
t78 = qJ(3) ^ 2;
t58 = t75 * t74;
t52 = 0.2e1 * t104;
t46 = -t76 * pkin(2) + t94;
t44 = 0.2e1 * t126 * pkin(7);
t43 = t50 * t77;
t26 = t29 ^ 2;
t25 = t29 * t121;
t16 = t38 * pkin(5) - t40 * qJ(6) + t57;
t6 = -t27 * pkin(5) + t29 * qJ(6) + t33;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t67, t52, 0, t69, 0, 0, pkin(1) * t120, pkin(1) * t121, t44, pkin(1) ^ 2 + t101, 0, 0, 0, t67, t52, t69, t44, t46 * t120, t46 * t121, t46 ^ 2 + t101, t66 * t69, 0.2e1 * t69 * t103, t73 * t98, t68 * t69, t75 * t98, t67, 0.2e1 * t48 * t102 + 0.2e1 * t19 * t74, -0.2e1 * t48 * t106 - 0.2e1 * t20 * t74 (t19 * t73 - t20 * t75) * t120, t19 ^ 2 + t20 ^ 2 + t48 ^ 2, t26, -0.2e1 * t111, t25, t123, 0.2e1 * t105, t67, -0.2e1 * t33 * t27 - 0.2e1 * t74 * t93, -0.2e1 * t33 * t29 - 0.2e1 * t4 * t74, 0.2e1 * t4 * t27 - 0.2e1 * t29 * t93, t33 ^ 2 + t4 ^ 2 + t93 ^ 2, t26, t25, 0.2e1 * t111, t67, -0.2e1 * t105, t123, -0.2e1 * t2 * t74 - 0.2e1 * t6 * t27, 0.2e1 * t1 * t27 - 0.2e1 * t2 * t29, 0.2e1 * t1 * t74 + 0.2e1 * t6 * t29, t1 ^ 2 + t2 ^ 2 + t6 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, t76, 0, -t62, -t64, 0, 0, 0, -t74, -t76, 0, 0, 0, t86, t62, t64, t86 * pkin(7), -t96 (t66 - t68) * t76, t58, t96, -t107, 0, t48 * t73 + t75 * t82, t48 * t75 - t73 * t82, -t5, t48 * qJ(3) + t5 * t77, -t110, t85, t32, -t18, -t31, 0, -t57 * t27 + t33 * t38 - t114, -t57 * t29 + t33 * t40 - t112, -t87 + t95, t22 * t93 + t4 * t24 + t33 * t57, -t110, t32, -t85, 0, t31, -t18, -t16 * t27 + t6 * t38 - t114, -t88 + t95, t16 * t29 - t6 * t40 + t112, t1 * t24 + t6 * t16 + t2 * t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -0.2e1 * pkin(2), t119, pkin(2) ^ 2 + t78, t68, -0.2e1 * t103, 0, t66, 0, 0, t73 * t119, t75 * t119, -0.2e1 * t43, t50 * t77 ^ 2 + t78, t37, -0.2e1 * t109, 0, t36, 0, 0, t38 * t122, t40 * t122, -t81, t57 ^ 2 + t97, t37, 0, 0.2e1 * t109, 0, 0, t36, 0.2e1 * t16 * t38, -t81, -0.2e1 * t16 * t40, t16 ^ 2 + t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, 0, t62, 0, 0, 0, 0, 0, 0, t58, -t107, 0, t5, 0, 0, 0, 0, 0, 0, t32, -t31, t91, t87, 0, 0, 0, 0, 0, 0, t32, t91, t31, t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t50, t43, 0, 0, 0, 0, 0, 0, 0, 0, -t124, t92, 0, 0, 0, 0, 0, 0, 0, -t124, 0, t92; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, 0, -t102, t74, t19, -t20, 0, 0, 0, 0, -t29, 0, t27, t74, t72 * t116 - t93, -t71 * t116 - t4 (t27 * t71 + t29 * t72) * pkin(4) (t4 * t71 - t72 * t93) * pkin(4), 0, -t29, 0, t74, -t27, 0 (pkin(5) + t55) * t74 - t93, t53 * t27 + t55 * t29, t53 * t74 + t1, t1 * t53 - t2 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, 0, -t73, 0, t75 * t77, -t73 * t77, 0, 0, 0, 0, t40, 0, -t38, 0, -t22, -t24, -t125 (-t22 * t72 + t24 * t71) * pkin(4), 0, t40, 0, 0, t38, 0, -t22, -t84, t24, -t22 * t55 + t24 * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75, -t73, 0, 0, 0, 0, 0, 0, 0, 0, t40, -t38, 0, t125, 0, 0, 0, 0, 0, 0, t40, 0, t38, t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t117, -0.2e1 * t118, 0 (t71 ^ 2 + t72 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 1, 0, 0, 0.2e1 * t55, 0, 0.2e1 * t53, t53 ^ 2 + t55 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t27, -t29, 0, t33, 0, 0, 0, 0, 0, 0, -t27, 0, t29, t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, t40, 0, t57, 0, 0, 0, 0, 0, 0, t38, 0, -t40, t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74, -t29, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, 0, t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t3;