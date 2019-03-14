% Calculate minimal parameter regressor of joint inertia matrix for
% S6RRRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% MM_reg [((6+1)*6/2)x38]
%   minimal parameter regressor of joint inertia matrix
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 03:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MM_reg = S6RRRRRR2_inertiaJ_regmin_slag_vp(qJ, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR2_inertiaJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR2_inertiaJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertia_joint_joint_fixb_regressor_minpar_matlab.m
t111 = cos(qJ(4));
t88 = sin(qJ(3));
t89 = sin(qJ(2));
t92 = cos(qJ(3));
t93 = cos(qJ(2));
t62 = t88 * t93 + t89 * t92;
t87 = sin(qJ(4));
t95 = t88 * t89 - t92 * t93;
t36 = t111 * t95 + t62 * t87;
t125 = -0.2e1 * t36;
t124 = 0.2e1 * t36;
t78 = -t93 * pkin(2) - pkin(1);
t49 = pkin(3) * t95 + t78;
t123 = 0.2e1 * t49;
t122 = 0.2e1 * t78;
t121 = 0.2e1 * t93;
t120 = pkin(7) + pkin(8);
t86 = sin(qJ(5));
t119 = pkin(4) * t86;
t118 = t36 * pkin(5);
t85 = sin(qJ(6));
t117 = t85 * pkin(5);
t116 = t87 * pkin(3);
t115 = t88 * pkin(2);
t90 = cos(qJ(6));
t114 = t90 * pkin(5);
t66 = t120 * t89;
t68 = t120 * t93;
t44 = t88 * t66 - t92 * t68;
t26 = -pkin(9) * t95 - t44;
t42 = -t66 * t92 - t68 * t88;
t94 = -pkin(9) * t62 + t42;
t17 = t111 * t26 + t87 * t94;
t91 = cos(qJ(5));
t105 = t91 * t17;
t37 = t111 * t62 - t87 * t95;
t15 = t36 * pkin(4) - t37 * pkin(10) + t49;
t5 = t105 + (-pkin(11) * t37 + t15) * t86;
t113 = t90 * t5;
t112 = t91 * pkin(10);
t16 = -t111 * t94 + t26 * t87;
t110 = t16 * t91;
t81 = t92 * pkin(2);
t76 = t81 + pkin(3);
t101 = -t111 * t76 + t115 * t87;
t52 = -pkin(4) + t101;
t109 = t52 * t91;
t80 = t111 * pkin(3);
t75 = -t80 - pkin(4);
t108 = t75 * t91;
t107 = t86 * t37;
t106 = t86 * t91;
t104 = t91 * t37;
t99 = t111 * t115;
t55 = -t76 * t87 - t99;
t53 = pkin(10) - t55;
t103 = t91 * t53;
t74 = pkin(10) + t116;
t102 = t91 * t74;
t100 = t37 * t125;
t77 = -pkin(5) * t91 - pkin(4);
t7 = t15 * t91 - t17 * t86;
t4 = -pkin(11) * t104 + t118 + t7;
t1 = t4 * t90 - t5 * t85;
t98 = -pkin(4) * t37 - pkin(10) * t36;
t97 = -t36 * t53 + t37 * t52;
t96 = -t36 * t74 + t37 * t75;
t61 = t85 * t91 + t86 * t90;
t60 = t85 * t86 - t90 * t91;
t84 = t91 ^ 2;
t83 = t86 ^ 2;
t82 = pkin(4) * t91;
t79 = t91 * pkin(11);
t72 = 0.2e1 * t106;
t70 = t75 * t86;
t67 = t79 + t112;
t65 = (-pkin(10) - pkin(11)) * t86;
t64 = t77 - t80;
t59 = t61 ^ 2;
t58 = t79 + t102;
t57 = (-pkin(11) - t74) * t86;
t51 = t77 * t61;
t50 = t77 * t60;
t48 = t52 * t86;
t47 = t77 + t101;
t46 = t64 * t61;
t45 = t64 * t60;
t43 = t65 * t85 + t67 * t90;
t41 = t65 * t90 - t67 * t85;
t40 = t79 + t103;
t39 = (-pkin(11) - t53) * t86;
t38 = -0.2e1 * t61 * t60;
t35 = t37 ^ 2;
t34 = t36 ^ 2;
t33 = t47 * t61;
t32 = t47 * t60;
t31 = t57 * t85 + t58 * t90;
t30 = t57 * t90 - t58 * t85;
t29 = t91 * t36;
t28 = t86 * t36;
t27 = t86 * t104;
t24 = t61 * t36;
t23 = t60 * t36;
t22 = t39 * t85 + t40 * t90;
t21 = t39 * t90 - t40 * t85;
t20 = (-t83 + t84) * t37;
t19 = t60 * t37;
t18 = t61 * t37;
t14 = t16 * t86;
t13 = t19 * t61;
t11 = pkin(5) * t107 + t16;
t10 = t11 * t61;
t9 = t11 * t60;
t8 = t15 * t86 + t105;
t6 = -t18 * t61 + t19 * t60;
t2 = t4 * t85 + t113;
t3 = [1, 0, 0, t89 ^ 2, t89 * t121, 0, 0, 0, pkin(1) * t121, -0.2e1 * pkin(1) * t89, t62 ^ 2, -0.2e1 * t62 * t95, 0, 0, 0, t95 * t122, t62 * t122, t35, t100, 0, 0, 0, t36 * t123, t37 * t123, t84 * t35, -0.2e1 * t35 * t106, t104 * t124, t86 * t100, t34, 0.2e1 * t107 * t16 + 0.2e1 * t36 * t7, 0.2e1 * t104 * t16 - 0.2e1 * t36 * t8, t19 ^ 2, 0.2e1 * t19 * t18, -t19 * t124, t18 * t125, t34, 0.2e1 * t1 * t36 + 0.2e1 * t11 * t18, -0.2e1 * t11 * t19 - 0.2e1 * t2 * t36; 0, 0, 0, 0, 0, t89, t93, 0, -t89 * pkin(7), -t93 * pkin(7), 0, 0, t62, -t95, 0, t42, t44, 0, 0, t37, -t36, 0, -t16, -t17, t27, t20, t28, t29, 0, t86 * t97 - t110, t91 * t97 + t14, -t13, t6, t24, -t23, 0, t18 * t47 + t21 * t36 + t9, -t19 * t47 - t22 * t36 + t10; 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t81, -0.2e1 * t115, 0, 0, 0, 0, 1, -0.2e1 * t101, 0.2e1 * t55, t83, t72, 0, 0, 0, -0.2e1 * t109, 0.2e1 * t48, t59, t38, 0, 0, 0, 0.2e1 * t32, 0.2e1 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, -t95, 0, t42, t44, 0, 0, t37, -t36, 0, -t16, -t17, t27, t20, t28, t29, 0, t86 * t96 - t110, t91 * t96 + t14, -t13, t6, t24, -t23, 0, t18 * t64 + t30 * t36 + t9, -t19 * t64 - t31 * t36 + t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t81, -t115, 0, 0, 0, 0, 1, t80 - t101, -t99 + (-pkin(3) - t76) * t87, t83, t72, 0, 0, 0 (-t52 - t75) * t91, t70 + t48, t59, t38, 0, 0, 0, t45 + t32, t46 + t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t80, -0.2e1 * t116, t83, t72, 0, 0, 0, -0.2e1 * t108, 0.2e1 * t70, t59, t38, 0, 0, 0, 0.2e1 * t45, 0.2e1 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, -t36, 0, -t16, -t17, t27, t20, t28, t29, 0, t86 * t98 - t110, t91 * t98 + t14, -t13, t6, t24, -t23, 0, t18 * t77 + t36 * t41 + t9, -t19 * t77 - t36 * t43 + t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -t101, t55, t83, t72, 0, 0, 0, t82 - t109, t48 - t119, t59, t38, 0, 0, 0, t50 + t32, t51 + t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t80, -t116, t83, t72, 0, 0, 0, t82 - t108, t70 - t119, t59, t38, 0, 0, 0, t50 + t45, t51 + t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, t83, t72, 0, 0, 0, 0.2e1 * t82, -0.2e1 * t119, t59, t38, 0, 0, 0, 0.2e1 * t50, 0.2e1 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, -t107, t36, t7, -t8, 0, 0, -t19, -t18, t36, t114 * t36 + t1, -t113 + (-t4 - t118) * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, t91, 0, -t86 * t53, -t103, 0, 0, t61, -t60, 0, t21, -t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, t91, 0, -t86 * t74, -t102, 0, 0, t61, -t60, 0, t30, -t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, t91, 0, -t86 * pkin(10), -t112, 0, 0, t61, -t60, 0, t41, -t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0.2e1 * t114, -0.2e1 * t117; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t19, -t18, t36, t1, -t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t60, 0, t21, -t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t60, 0, t30, -t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t61, -t60, 0, t41, -t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, t114, -t117; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;];
MM_reg  = t3;