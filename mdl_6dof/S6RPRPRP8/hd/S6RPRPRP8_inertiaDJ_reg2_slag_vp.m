% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPRPRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPRPRP8_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP8_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP8_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP8_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:26:04
% EndTime: 2019-03-09 03:26:10
% DurationCPUTime: 1.91s
% Computational Cost: add. (2375->183), mult. (4682->308), div. (0->0), fcn. (4265->6), ass. (0->120)
t74 = sin(qJ(5));
t72 = t74 ^ 2;
t76 = cos(qJ(5));
t73 = t76 ^ 2;
t133 = t72 + t73;
t134 = t72 - t73;
t58 = t134 * qJD(5);
t129 = sin(pkin(9));
t77 = cos(qJ(3));
t108 = t129 * t77;
t130 = cos(pkin(9));
t75 = sin(qJ(3));
t55 = t130 * t75 + t108;
t50 = t55 * qJD(3);
t110 = t130 * t77;
t56 = -t129 * t75 + t110;
t140 = t56 * t50;
t49 = t56 * qJD(3);
t142 = t55 * t49;
t156 = 0.2e1 * t140 - 0.2e1 * t142;
t53 = t55 ^ 2;
t54 = t56 ^ 2;
t68 = qJD(5) * t74;
t157 = (t54 + t53) * t68 + t156 * t76;
t155 = (-t129 * t49 + t130 * t50) * pkin(3);
t78 = -pkin(1) - pkin(7);
t131 = qJ(4) - t78;
t57 = t131 * t75;
t40 = -t131 * t108 - t130 * t57;
t66 = t75 * pkin(3) + qJ(2);
t92 = t55 * pkin(4) - t56 * pkin(8) + t66;
t154 = t76 * t40 + t74 * t92;
t123 = t77 * qJD(3);
t46 = -t75 * qJD(4) - t131 * t123;
t125 = t75 * qJD(3);
t87 = -t77 * qJD(4) + t131 * t125;
t23 = t129 * t87 + t130 * t46;
t61 = pkin(3) * t123 + qJD(2);
t85 = t49 * pkin(4) + t50 * pkin(8) + t61;
t89 = t76 * t92;
t3 = -qJD(5) * t89 - t76 * t23 + t40 * t68 - t74 * t85;
t4 = -qJD(5) * t154 - t74 * t23 + t76 * t85;
t11 = -t74 * t40 + t89;
t99 = t11 * t74 - t154 * t76;
t152 = t99 * qJD(5) + t3 * t74 - t4 * t76;
t102 = t76 * pkin(5) + t74 * qJ(6);
t151 = t102 * qJD(5) - t76 * qJD(6);
t127 = t55 * qJD(6);
t132 = t49 * qJ(6);
t1 = t127 - t3 + t132;
t10 = -t55 * pkin(5) - t11;
t9 = qJ(6) * t55 + t154;
t103 = t10 * t74 + t76 * t9;
t147 = pkin(5) * t49;
t2 = -t147 - t4;
t150 = t103 * qJD(5) + t1 * t74 - t2 * t76;
t149 = 0.2e1 * qJD(2);
t148 = 0.2e1 * qJD(6);
t22 = t129 * t46 - t130 * t87;
t39 = t131 * t110 - t129 * t57;
t146 = t39 * t22;
t64 = t129 * pkin(3) + pkin(8);
t145 = t49 * t64;
t65 = -t130 * pkin(3) - pkin(4);
t144 = t50 * t65;
t143 = t50 * t76;
t141 = t55 * t64;
t139 = t56 * t74;
t138 = t56 * t76;
t137 = t74 * t49;
t136 = t76 * t49;
t135 = t133 * t145;
t69 = qJD(5) * t76;
t126 = t74 * qJD(6);
t122 = qJ(2) * qJD(3);
t38 = 0.2e1 * t142;
t121 = -0.2e1 * t137;
t119 = t74 * t143;
t118 = 0.2e1 * qJD(5) * t65;
t117 = 0.2e1 * t50 * t139 - t54 * t69;
t116 = t64 * t68;
t115 = t55 * t69;
t114 = t64 * t69;
t113 = t74 * t69;
t112 = t75 * t123;
t26 = t133 * t49;
t107 = t54 * t113;
t104 = t10 * t76 - t74 * t9;
t101 = pkin(5) * t74 - qJ(6) * t76;
t100 = t11 * t76 + t154 * t74;
t98 = -t22 * t56 + t39 * t50;
t48 = -pkin(5) * t68 + qJ(6) * t69 + t126;
t51 = -t102 + t65;
t97 = t56 * t48 + t50 * t51;
t95 = -t144 - t145;
t94 = -t56 * t65 + t141;
t30 = t115 + t137;
t28 = t55 * t68 - t136;
t31 = -t50 * t74 + t56 * t69;
t93 = t56 * t68 + t143;
t5 = -t101 * t50 + t151 * t56 + t22;
t88 = -t5 + (t51 * t56 - t141) * qJD(5);
t84 = -t23 * t55 - t40 * t49 - t98;
t14 = t101 * t56 + t39;
t82 = qJD(5) * t14 - t145 - t97;
t80 = t104 * qJD(5) + t1 * t76 + t2 * t74;
t79 = -t100 * qJD(5) - t3 * t76 - t4 * t74;
t71 = qJ(2) * t149;
t60 = -0.2e1 * t113;
t59 = 0.2e1 * t113;
t25 = t133 * t50;
t18 = -0.2e1 * t73 * t140 - 0.2e1 * t107;
t17 = -0.2e1 * t72 * t140 + 0.2e1 * t107;
t16 = t56 * t58 + t119;
t15 = 0.4e1 * t56 * t113 - t134 * t50;
t13 = 0.2e1 * t56 * t119 + t54 * t58;
t8 = t56 * t137 + t31 * t55;
t7 = 0.2e1 * t55 * t26 - 0.2e1 * t140;
t6 = 0.2e1 * t56 * t136 - 0.2e1 * t93 * t55;
t12 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t149, t71, -0.2e1 * t112, 0.2e1 * (t75 ^ 2 - t77 ^ 2) * qJD(3), 0, 0.2e1 * t112, 0, 0, 0.2e1 * qJD(2) * t75 + 0.2e1 * t77 * t122, 0.2e1 * qJD(2) * t77 - 0.2e1 * t75 * t122, 0, t71, -0.2e1 * t140, -0.2e1 * t56 * t49 + 0.2e1 * t50 * t55, 0, t38, 0, 0, 0.2e1 * t66 * t49 + 0.2e1 * t61 * t55, -0.2e1 * t66 * t50 + 0.2e1 * t61 * t56, 0.2e1 * t84, 0.2e1 * t40 * t23 + 0.2e1 * t66 * t61 + 0.2e1 * t146, t18, 0.2e1 * t13, t6, t17, -0.2e1 * t8, t38, 0.2e1 * t11 * t49 + 0.2e1 * t22 * t139 + 0.2e1 * t31 * t39 + 0.2e1 * t4 * t55, 0.2e1 * t22 * t138 - 0.2e1 * t154 * t49 + 0.2e1 * t3 * t55 - 0.2e1 * t93 * t39, 0.2e1 * t100 * t50 + 0.2e1 * t152 * t56, 0.2e1 * t11 * t4 - 0.2e1 * t154 * t3 + 0.2e1 * t146, t18, t6, -0.2e1 * t13, t38, 0.2e1 * t8, t17, -0.2e1 * t10 * t49 + 0.2e1 * t5 * t139 + 0.2e1 * t31 * t14 - 0.2e1 * t2 * t55, -0.2e1 * t104 * t50 - 0.2e1 * t150 * t56, 0.2e1 * t1 * t55 - 0.2e1 * t5 * t138 + 0.2e1 * t93 * t14 + 0.2e1 * t9 * t49, 0.2e1 * t1 * t9 + 0.2e1 * t10 * t2 + 0.2e1 * t14 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156, -t84, 0, 0, 0, 0, 0, 0, t55 * t121 - t53 * t69 + t117, t157, 0, -t99 * t49 + t79 * t55 + t98, 0, 0, 0, 0, 0, 0 (-t115 + t121) * t55 + t117, 0, -t157, t103 * t49 + t14 * t50 - t5 * t56 + t80 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t156, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7, 0, 0, 0, 0, 0, 0, 0, 0, 0, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, 0, -t123, 0, -t78 * t125, -t78 * t123, 0, 0, 0, 0, -t50, 0, -t49, 0, -t22, -t23, t155 (t129 * t23 - t130 * t22) * pkin(3), -t16, -t15, t30, t16, -t28, 0, -t22 * t76 + t95 * t74 + (t39 * t74 - t94 * t76) * qJD(5), t22 * t74 + t95 * t76 + (t39 * t76 + t94 * t74) * qJD(5), t79, t22 * t65 + t79 * t64, -t16, t30, t15, 0, t28, t16, t82 * t74 + t88 * t76, t80, t88 * t74 - t82 * t76, -t14 * t48 + t5 * t51 + t80 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, -t123, 0, 0, 0, 0, 0, 0, 0, 0, -t50, -t49, 0, -t155, 0, 0, 0, 0, 0, 0, -t93, -t31, t26, t135 + t144, 0, 0, 0, 0, 0, 0, -t93, t26, t31, t97 + t135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59, -0.2e1 * t58, 0, t60, 0, 0, t74 * t118, t76 * t118, 0, 0, t59, 0, 0.2e1 * t58, 0, 0, t60, 0.2e1 * t48 * t76 + 0.2e1 * t51 * t68, 0, 0.2e1 * t48 * t74 - 0.2e1 * t51 * t69, -0.2e1 * t51 * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, -t50, 0, t61, 0, 0, 0, 0, 0, 0, -t28, -t30, t25, -t152, 0, 0, 0, 0, 0, 0, -t28, t25, t30, t150; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t93, 0, -t31, t49, t4, t3, 0, 0, 0, -t93, 0, t49, t31, 0, t4 + 0.2e1 * t147, t102 * t50 + (t101 * qJD(5) - t126) * t56, 0.2e1 * t127 - t3 + 0.2e1 * t132, -pkin(5) * t2 + qJ(6) * t1 + qJD(6) * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t30, t28, 0, 0, 0, 0, 0, 0, 0, 0, -t30, 0, -t28, -t101 * t49 - t151 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, -t68, 0, -t114, t116, 0, 0, 0, t69, 0, 0, t68, 0, -t114, -t151, -t116, -t151 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t68, -t69, 0, 0, 0, 0, 0, 0, 0, 0, -t68, 0, t69, t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t148, qJ(6) * t148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t49, -t93, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, 0, t114; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t12;
