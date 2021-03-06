% Calculate inertial parameters regressor of joint inertia matrix for
% S6RRPRRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% MM_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRPRRP8_inertiaJ_reg2_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP8_inertiaJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP8_inertiaJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_matlab.m
t67 = sin(pkin(10));
t68 = cos(pkin(10));
t70 = sin(qJ(4));
t73 = cos(qJ(4));
t120 = -t70 * t67 + t73 * t68;
t50 = t73 * t67 + t70 * t68;
t71 = sin(qJ(2));
t42 = t50 * t71;
t44 = t120 * t71;
t69 = sin(qJ(5));
t72 = cos(qJ(5));
t24 = t72 * t42 + t69 * t44;
t119 = t24 ^ 2;
t30 = -t120 * t72 + t69 * t50;
t118 = t30 ^ 2;
t57 = -t68 * pkin(3) - pkin(2);
t41 = -pkin(4) * t120 + t57;
t117 = 0.2e1 * t41;
t116 = 0.2e1 * t57;
t74 = cos(qJ(2));
t115 = -0.2e1 * t74;
t65 = t71 ^ 2;
t114 = t65 * pkin(7);
t62 = t71 * pkin(7);
t113 = t72 * pkin(4);
t112 = t74 * pkin(4);
t111 = t74 * pkin(5);
t101 = t68 * t71;
t52 = -t74 * pkin(2) - t71 * qJ(3) - pkin(1);
t47 = t68 * t52;
t33 = -pkin(8) * t101 + t47 + (-pkin(7) * t67 - pkin(3)) * t74;
t103 = t67 * t71;
t100 = t68 * t74;
t39 = pkin(7) * t100 + t67 * t52;
t35 = -pkin(8) * t103 + t39;
t19 = t73 * t33 - t70 * t35;
t10 = -t44 * pkin(9) - t112 + t19;
t20 = t70 * t33 + t73 * t35;
t17 = -t42 * pkin(9) + t20;
t4 = t69 * t10 + t72 * t17;
t94 = pkin(8) + qJ(3);
t85 = t94 * t68;
t86 = t94 * t67;
t37 = -t70 * t86 + t73 * t85;
t27 = pkin(9) * t120 + t37;
t36 = -t70 * t85 - t73 * t86;
t80 = -t50 * pkin(9) + t36;
t14 = t69 * t27 - t72 * t80;
t110 = t14 * t74;
t16 = t72 * t27 + t69 * t80;
t109 = t16 * t74;
t108 = t24 * t30;
t26 = -t69 * t42 + t72 * t44;
t107 = t26 * t24;
t32 = t120 * t69 + t72 * t50;
t106 = t32 * t30;
t105 = t32 * t74;
t104 = t67 * t68;
t102 = t67 * t74;
t98 = t71 * t74;
t96 = t74 * t24;
t95 = t74 * t30;
t51 = pkin(3) * t103 + t62;
t63 = t67 ^ 2;
t64 = t68 ^ 2;
t93 = t63 + t64;
t92 = t74 * qJ(6);
t91 = 0.2e1 * t98;
t90 = t14 ^ 2 + t16 ^ 2;
t89 = t67 * t101;
t88 = t14 * t26 - t16 * t24;
t87 = -t72 * t10 + t69 * t17;
t34 = t42 * pkin(4) + t51;
t84 = -pkin(2) * t71 + qJ(3) * t74;
t83 = t24 * t32 + t26 * t30;
t38 = -pkin(7) * t102 + t47;
t82 = -t38 * t67 + t39 * t68;
t81 = 0.2e1 * t14 * t32 - 0.2e1 * t16 * t30;
t78 = pkin(7) ^ 2;
t77 = 0.2e1 * pkin(5);
t75 = 0.2e1 * qJ(6);
t66 = t74 ^ 2;
t61 = t65 * t78;
t60 = t69 * pkin(4);
t58 = pkin(5) + t113;
t56 = t60 + qJ(6);
t29 = t32 ^ 2;
t23 = t26 ^ 2;
t21 = t26 * t115;
t18 = t26 * t32;
t13 = t30 * pkin(5) - t32 * qJ(6) + t41;
t7 = t24 * pkin(5) - t26 * qJ(6) + t34;
t2 = t87 + t111;
t1 = -t92 + t4;
t3 = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t65, t91, 0, t66, 0, 0, 0.2e1 * pkin(1) * t74, -0.2e1 * pkin(1) * t71, 0.2e1 * (t65 + t66) * pkin(7), pkin(1) ^ 2 + t66 * t78 + t61, t64 * t65, -0.2e1 * t65 * t104, -0.2e1 * t68 * t98, t63 * t65, t67 * t91, t66, 0.2e1 * t67 * t114 - 0.2e1 * t38 * t74, 0.2e1 * t68 * t114 + 0.2e1 * t39 * t74, 0.2e1 * (-t38 * t68 - t39 * t67) * t71, t38 ^ 2 + t39 ^ 2 + t61, t44 ^ 2, -0.2e1 * t44 * t42, t44 * t115, t42 ^ 2, -t42 * t115, t66, -0.2e1 * t19 * t74 + 0.2e1 * t51 * t42, 0.2e1 * t20 * t74 + 0.2e1 * t51 * t44, -0.2e1 * t19 * t44 - 0.2e1 * t20 * t42, t19 ^ 2 + t20 ^ 2 + t51 ^ 2, t23, -0.2e1 * t107, t21, t119, 0.2e1 * t96, t66, 0.2e1 * t34 * t24 + 0.2e1 * t74 * t87, 0.2e1 * t34 * t26 + 0.2e1 * t4 * t74, -0.2e1 * t24 * t4 + 0.2e1 * t26 * t87, t34 ^ 2 + t4 ^ 2 + t87 ^ 2, t23, t21, 0.2e1 * t107, t66, -0.2e1 * t96, t119, 0.2e1 * t2 * t74 + 0.2e1 * t7 * t24, -0.2e1 * t1 * t24 + 0.2e1 * t2 * t26, -0.2e1 * t1 * t74 - 0.2e1 * t7 * t26, t1 ^ 2 + t2 ^ 2 + t7 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, 0, t74, 0, -t62, -t74 * pkin(7), 0, 0, t89 (-t63 + t64) * t71, -t102, -t89, -t100, 0, -pkin(7) * t101 + t84 * t67, pkin(7) * t103 + t84 * t68, t82, -pkin(2) * t62 + t82 * qJ(3), t44 * t50, t120 * t44 - t42 * t50, -t50 * t74, -t42 * t120, -t120 * t74, 0, -t120 * t51 - t36 * t74 + t57 * t42, t37 * t74 + t57 * t44 + t51 * t50, t120 * t20 - t19 * t50 - t36 * t44 - t37 * t42, t19 * t36 + t20 * t37 + t51 * t57, t18, -t83, -t105, t108, t95, 0, t41 * t24 + t34 * t30 + t110, t41 * t26 + t34 * t32 + t109, -t30 * t4 + t32 * t87 + t88, t14 * t87 + t16 * t4 + t34 * t41, t18, -t105, t83, 0, -t95, t108, t13 * t24 + t7 * t30 + t110, -t1 * t30 + t2 * t32 + t88, -t13 * t26 - t7 * t32 - t109, t1 * t16 + t13 * t7 + t14 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, t63, 0.2e1 * t104, 0, t64, 0, 0, 0.2e1 * pkin(2) * t68, -0.2e1 * pkin(2) * t67, 0.2e1 * t93 * qJ(3), t93 * qJ(3) ^ 2 + pkin(2) ^ 2, t50 ^ 2, 0.2e1 * t50 * t120, 0, t120 ^ 2, 0, 0, -t120 * t116, t50 * t116, 0.2e1 * t120 * t37 - 0.2e1 * t36 * t50, t36 ^ 2 + t37 ^ 2 + t57 ^ 2, t29, -0.2e1 * t106, 0, t118, 0, 0, t30 * t117, t32 * t117, t81, t41 ^ 2 + t90, t29, 0, 0.2e1 * t106, 0, 0, t118, 0.2e1 * t13 * t30, t81, -0.2e1 * t13 * t32, t13 ^ 2 + t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, t101, 0, t62, 0, 0, 0, 0, 0, 0, t42, t44, 0, t51, 0, 0, 0, 0, 0, 0, t24, t26, 0, t34, 0, 0, 0, 0, 0, 0, t24, 0, -t26, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t68, t67, 0, -pkin(2), 0, 0, 0, 0, 0, 0, -t120, t50, 0, t57, 0, 0, 0, 0, 0, 0, t30, t32, 0, t41, 0, 0, 0, 0, 0, 0, t30, 0, -t32, t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, 0, -t42, -t74, t19, -t20, 0, 0, 0, 0, t26, 0, -t24, -t74, -t72 * t112 - t87, t69 * t112 - t4 (-t24 * t69 - t26 * t72) * pkin(4) (t4 * t69 - t72 * t87) * pkin(4), 0, t26, 0, -t74, t24, 0 (-pkin(5) - t58) * t74 - t87, -t56 * t24 - t58 * t26 (-qJ(6) - t56) * t74 + t4, t1 * t56 - t2 * t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, 0, t120, 0, t36, -t37, 0, 0, 0, 0, t32, 0, -t30, 0, -t14, -t16 (-t30 * t69 - t32 * t72) * pkin(4) (-t14 * t72 + t16 * t69) * pkin(4), 0, t32, 0, 0, t30, 0, -t14, -t56 * t30 - t58 * t32, t16, -t14 * t58 + t16 * t56; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t113, -0.2e1 * t60, 0 (t69 ^ 2 + t72 ^ 2) * pkin(4) ^ 2, 0, 0, 0, 1, 0, 0, 0.2e1 * t58, 0, 0.2e1 * t56, t56 ^ 2 + t58 ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t26, 0, -t24, -t74, -t87, -t4, 0, 0, 0, t26, 0, -t74, t24, 0, -t87 - 0.2e1 * t111, -pkin(5) * t26 - qJ(6) * t24, -0.2e1 * t92 + t4, -pkin(5) * t2 + qJ(6) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, -t30, 0, -t14, -t16, 0, 0, 0, t32, 0, 0, t30, 0, -t14, -pkin(5) * t32 - qJ(6) * t30, t16, -pkin(5) * t14 + qJ(6) * t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t113, -t60, 0, 0, 0, 0, 0, 1, 0, 0, t77 + t113, 0, t75 + t60, t58 * pkin(5) + t56 * qJ(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t77, 0, t75, pkin(5) ^ 2 + qJ(6) ^ 2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, t26, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;];
MM_reg  = t3;
