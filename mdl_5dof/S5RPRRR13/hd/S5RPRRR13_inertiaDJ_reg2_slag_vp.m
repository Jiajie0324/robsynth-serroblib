% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RPRRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:16
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RPRRR13_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR13_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR13_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRR13_inertiaDJ_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:15:28
% EndTime: 2019-12-31 19:15:33
% DurationCPUTime: 1.83s
% Computational Cost: add. (1798->221), mult. (4061->416), div. (0->0), fcn. (3356->6), ass. (0->124)
t66 = cos(qJ(4));
t67 = cos(qJ(3));
t140 = pkin(3) * t67;
t65 = sin(qJ(3));
t84 = pkin(7) * t65 + t140;
t147 = t66 * t84;
t137 = sin(qJ(5));
t64 = sin(qJ(4));
t105 = t137 * t64;
t138 = cos(qJ(5));
t106 = t138 * t66;
t76 = t106 - t105;
t28 = t76 * t65;
t98 = t138 * qJD(5);
t146 = t138 * qJD(4) + t98;
t60 = t64 ^ 2;
t62 = t66 ^ 2;
t130 = t60 - t62;
t97 = qJD(4) * t130;
t61 = t65 ^ 2;
t63 = t67 ^ 2;
t96 = (t61 - t63) * qJD(3);
t145 = qJD(4) + qJD(5);
t142 = -pkin(8) - pkin(7);
t144 = t142 * t67 + qJ(2);
t143 = 2 * qJD(2);
t141 = pkin(3) * t66;
t139 = t65 * pkin(3);
t42 = t137 * t66 + t138 * t64;
t18 = t145 * t42;
t136 = t18 * t65;
t135 = t18 * t67;
t68 = -pkin(1) - pkin(6);
t134 = t64 * t68;
t133 = t65 * t68;
t132 = t66 * t67;
t131 = t67 * t68;
t52 = t66 * t133;
t83 = -pkin(7) * t67 + t139;
t78 = qJ(2) + t83;
t25 = t64 * t78 + t52;
t129 = t60 + t62;
t127 = t61 + t63;
t126 = qJD(4) * t64;
t125 = qJD(4) * t66;
t124 = qJD(4) * t67;
t123 = qJD(4) * t68;
t122 = t65 * qJD(3);
t121 = t66 * qJD(2);
t58 = t67 * qJD(3);
t120 = qJ(2) * qJD(3);
t119 = -0.2e1 * pkin(3) * qJD(4);
t118 = t64 * t133;
t117 = t64 * t131;
t116 = pkin(4) * t126;
t115 = t42 * t58;
t114 = t66 * t122;
t113 = t64 * t124;
t112 = t64 * t123;
t111 = t66 * t124;
t110 = t64 * t125;
t109 = t68 * t122;
t108 = t65 * t58;
t107 = t68 * t58;
t104 = pkin(4) - t134;
t103 = t129 * t67;
t102 = qJD(3) * t138;
t101 = qJD(3) * t137;
t100 = qJD(5) * t137;
t53 = 0.2e1 * t108;
t95 = t63 * t110;
t94 = t64 * t114;
t93 = t67 * t105;
t92 = pkin(4) * t98;
t91 = pkin(4) * t100;
t90 = t142 * t138;
t89 = t142 * t137;
t88 = t65 * t102;
t87 = t65 * t101;
t86 = t67 * t102;
t85 = t67 * t101;
t77 = t66 * t78;
t24 = t77 - t118;
t82 = t24 * t66 + t25 * t64;
t81 = t24 * t64 - t25 * t66;
t80 = t64 * t90;
t79 = t64 * t89;
t34 = t64 * t122 - t111;
t14 = t65 * t112 - t64 * (t84 * qJD(3) + qJD(2)) - qJD(4) * t77 - t66 * t107;
t19 = -t64 * t67 * pkin(8) + t25;
t69 = t121 + (-t52 + (-t139 - t144) * t64) * qJD(4) + (t104 * t67 + (-t142 * t65 + t140) * t66) * qJD(3);
t74 = t144 * t66 + (t104 + t141) * t65;
t72 = t138 * t74;
t73 = t34 * pkin(8) - t14;
t1 = -qJD(5) * t72 + t19 * t100 - t137 * t69 - t138 * t73;
t50 = t142 * t66;
t21 = -t138 * t50 + t79;
t15 = t121 - t25 * qJD(4) + (-t117 + t147) * qJD(3);
t75 = -t82 * qJD(4) - t14 * t66 - t15 * t64;
t71 = t137 * t74;
t70 = -t137 * t73 + t138 * t69;
t7 = t138 * t19 + t71;
t59 = qJ(2) * t143;
t57 = -pkin(4) * t66 - pkin(3);
t40 = (pkin(4) * t64 - t68) * t67;
t33 = t65 * t125 + t64 * t58;
t32 = -t113 - t114;
t31 = t65 * t126 - t66 * t58;
t29 = t67 * t106 - t93;
t27 = t42 * t67;
t26 = t42 * t65;
t23 = -t34 * pkin(4) + t109;
t22 = t67 * t97 + t94;
t20 = t137 * t50 + t80;
t17 = (t137 * qJD(4) + t100) * t64 - t146 * t66;
t13 = -t21 * qJD(5) + (t66 * t90 - t79) * qJD(4);
t12 = -t50 * t100 - t89 * t125 - t145 * t80;
t11 = t146 * t132 - t145 * t93 - t64 * t88 - t66 * t87;
t10 = -t145 * t28 - t115;
t9 = -t64 * t87 + t66 * t88 + t135;
t8 = t64 * t85 - t66 * t86 + t136;
t6 = -t137 * t19 + t72;
t2 = -t7 * qJD(5) + t70;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, t59, -0.2e1 * t108, 0.2e1 * t96, 0, t53, 0, 0, 0.2e1 * qJD(2) * t65 + 0.2e1 * t67 * t120, 0.2e1 * qJD(2) * t67 - 0.2e1 * t65 * t120, 0, t59, -0.2e1 * t62 * t108 - 0.2e1 * t95, 0.2e1 * t63 * t97 + 0.4e1 * t67 * t94, -0.2e1 * t65 * t113 - 0.2e1 * t66 * t96, -0.2e1 * t60 * t108 + 0.2e1 * t95, -0.2e1 * t65 * t111 + 0.2e1 * t64 * t96, t53, -0.2e1 * t63 * t66 * t123 + 0.2e1 * t15 * t65 + 0.2e1 * (t24 + 0.2e1 * t118) * t58, 0.2e1 * t63 * t112 + 0.2e1 * t14 * t65 + 0.2e1 * (-t25 + 0.2e1 * t52) * t58, 0.2e1 * t82 * t122 + 0.2e1 * (t81 * qJD(4) + t14 * t64 - t15 * t66) * t67, -0.2e1 * t68 ^ 2 * t108 - 0.2e1 * t25 * t14 + 0.2e1 * t24 * t15, -0.2e1 * t29 * t9, -0.2e1 * t11 * t29 + 0.2e1 * t27 * t9, 0.2e1 * t29 * t58 - 0.2e1 * t65 * t9, 0.2e1 * t27 * t11, -0.2e1 * t11 * t65 - 0.2e1 * t27 * t58, t53, 0.2e1 * t11 * t40 + 0.2e1 * t2 * t65 + 0.2e1 * t23 * t27 + 0.2e1 * t58 * t6, 0.2e1 * t1 * t65 + 0.2e1 * t23 * t29 - 0.2e1 * t40 * t9 - 0.2e1 * t58 * t7, 0.2e1 * t1 * t27 - 0.2e1 * t11 * t7 - 0.2e1 * t2 * t29 + 0.2e1 * t6 * t9, -0.2e1 * t1 * t7 + 0.2e1 * t2 * t6 + 0.2e1 * t23 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t127 * t125, t127 * t126, 0, -t81 * t58 + (t75 - 0.2e1 * t107) * t65, 0, 0, 0, 0, 0, 0, t10 * t65 - t67 * t11 + (-t26 * t67 + t27 * t65) * qJD(3), t8 * t65 + t67 * t9 + (-t28 * t67 + t29 * t65) * qJD(3), -t10 * t29 - t11 * t28 - t26 * t9 + t27 * t8, -t1 * t28 + t10 * t6 + t122 * t40 - t2 * t26 - t23 * t67 - t7 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (-0.1e1 + t129) * t53, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t10 * t26 - 0.2e1 * t28 * t8 - 0.2e1 * t108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t122, 0, -t58, 0, -t109, -t107, 0, 0, -t22, -0.4e1 * t67 * t110 + t130 * t122, t33, t22, -t31, 0, (-t117 - t147) * qJD(4) + (t83 * t64 - t52) * qJD(3), (-t66 * t131 + t84 * t64) * qJD(4) + (-pkin(7) * t132 + (t134 + t141) * t65) * qJD(3), t75, -pkin(3) * t109 + pkin(7) * t75, -t17 * t29 - t42 * t9, -t11 * t42 + t17 * t27 - t18 * t29 - t76 * t9, -t17 * t65 + t115, -t11 * t76 + t18 * t27, t58 * t76 - t136, 0, t11 * t57 + t116 * t27 + t13 * t65 + t18 * t40 + t20 * t58 - t23 * t76, t116 * t29 + t12 * t65 - t17 * t40 - t21 * t58 + t23 * t42 - t57 * t9, -t1 * t76 - t11 * t21 + t12 * t27 - t13 * t29 + t17 * t6 - t18 * t7 - t2 * t42 + t20 * t9, -t1 * t21 + t116 * t40 - t12 * t7 + t13 * t6 + t2 * t20 + t23 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t122, -t58, 0, 0, 0, 0, 0, 0, 0, 0, t32, t34, qJD(3) * t103, (pkin(7) * t103 - t139) * qJD(3), 0, 0, 0, 0, 0, 0, -t122 * t76 - t135, t122 * t42 + t17 * t67, -t10 * t42 - t17 * t26 - t18 * t28 - t76 * t8, -pkin(4) * t113 + t10 * t20 - t12 * t28 + t122 * t57 - t13 * t26 - t21 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t110, -0.2e1 * t97, 0, -0.2e1 * t110, 0, 0, t64 * t119, t66 * t119, 0, 0, -0.2e1 * t42 * t17, -0.2e1 * t17 * t76 - 0.2e1 * t18 * t42, 0, -0.2e1 * t76 * t18, 0, 0, -0.2e1 * t116 * t76 + 0.2e1 * t18 * t57, 0.2e1 * t116 * t42 - 0.2e1 * t17 * t57, -0.2e1 * t12 * t76 - 0.2e1 * t13 * t42 + 0.2e1 * t17 * t20 - 0.2e1 * t18 * t21, 0.2e1 * t116 * t57 - 0.2e1 * t12 * t21 + 0.2e1 * t13 * t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, 0, t34, t58, t15, t14, 0, 0, 0, 0, -t9, 0, -t11, t58, pkin(4) * t86 - qJD(5) * t71 - t19 * t98 - t65 * t91 + t70, (-t65 * t98 - t85) * pkin(4) + t1, (t138 * t9 - t137 * t11 + (t137 * t29 - t138 * t27) * qJD(5)) * pkin(4), (t138 * t2 - t137 * t1 + (-t137 * t6 + t138 * t7) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t33, t31, 0, 0, 0, 0, 0, 0, 0, 0, t10, t8, 0, (t138 * t10 - t137 * t8 + (t137 * t26 + t138 * t28) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, 0, -t126, 0, -pkin(7) * t125, pkin(7) * t126, 0, 0, 0, 0, -t17, 0, -t18, 0, t13, t12, (t138 * t17 - t137 * t18 + (t137 * t42 + t138 * t76) * qJD(5)) * pkin(4), (t138 * t13 - t137 * t12 + (-t137 * t20 + t138 * t21) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t91, -0.2e1 * t92, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t9, 0, -t11, t58, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10, t8, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, 0, -t18, 0, t13, t12, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t91, -t92, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t3;
