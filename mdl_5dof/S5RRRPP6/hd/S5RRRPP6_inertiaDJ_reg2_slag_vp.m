% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,theta4]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:03
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RRRPP6_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP6_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP6_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRPP6_inertiaDJ_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:02:00
% EndTime: 2019-12-31 21:02:06
% DurationCPUTime: 1.87s
% Computational Cost: add. (1805->221), mult. (4744->409), div. (0->0), fcn. (3866->6), ass. (0->125)
t89 = cos(qJ(2));
t136 = t89 * qJD(2);
t86 = sin(qJ(3));
t123 = t86 * t136;
t88 = cos(qJ(3));
t139 = qJD(3) * t88;
t87 = sin(qJ(2));
t158 = t87 * t139 + t123;
t157 = -0.4e1 * t87;
t141 = cos(pkin(8));
t117 = t141 * t88;
t140 = qJD(3) * t86;
t85 = sin(pkin(8));
t49 = qJD(3) * t117 - t85 * t140;
t81 = t86 ^ 2;
t83 = t88 ^ 2;
t144 = t81 - t83;
t115 = qJD(3) * t144;
t82 = t87 ^ 2;
t114 = (-t89 ^ 2 + t82) * qJD(2);
t156 = 2 * qJD(5);
t155 = pkin(6) * t86;
t154 = t85 * pkin(3);
t153 = t87 * pkin(3);
t152 = t89 * pkin(2);
t109 = -t87 * pkin(7) - t152;
t101 = -pkin(1) + t109;
t56 = t88 * t101;
t108 = pkin(2) * t87 - pkin(7) * t89;
t96 = t108 * qJD(2);
t146 = -qJD(3) * t56 - t86 * t96;
t149 = t87 * t88;
t14 = (-pkin(6) * qJD(2) - qJ(4) * qJD(3)) * t149 + (-t87 * qJD(4) + (-pkin(6) * qJD(3) - qJ(4) * qJD(2)) * t89) * t86 - t146;
t137 = t88 * qJD(4);
t142 = qJ(4) * t88;
t79 = t87 * qJD(2);
t124 = t86 * t79;
t145 = pkin(6) * t124 + t88 * t96;
t147 = -qJ(4) - pkin(7);
t148 = t88 * t89;
t71 = pkin(6) * t148;
t9 = -t87 * t137 + (-t89 * t142 + t153) * qJD(2) + (-t71 + (-t147 * t87 + pkin(1) + t152) * t86) * qJD(3) + t145;
t4 = t141 * t14 + t85 * t9;
t151 = t85 * t86;
t150 = t86 * t87;
t34 = -t87 * t142 + t56 + (-pkin(3) - t155) * t89;
t43 = t86 * t101 + t71;
t37 = -qJ(4) * t150 + t43;
t18 = t141 * t37 + t85 * t34;
t58 = pkin(3) * t150 + t87 * pkin(6);
t138 = qJD(3) * t89;
t135 = t89 * qJD(5);
t112 = qJD(2) * t141;
t107 = t89 * t112;
t120 = t88 * t136;
t27 = -t86 * t107 - t85 * t120 - t49 * t87;
t118 = t141 * t86;
t54 = t85 * t88 + t118;
t45 = t54 * t87;
t134 = -0.2e1 * t45 * t27;
t48 = t54 * qJD(3);
t53 = -t117 + t151;
t133 = 0.2e1 * t53 * t48;
t132 = t89 * t155;
t131 = -0.2e1 * pkin(1) * qJD(2);
t130 = -0.2e1 * pkin(2) * qJD(3);
t129 = qJ(5) * t79 + t4;
t77 = pkin(6) * t136;
t41 = t158 * pkin(3) + t77;
t78 = pkin(3) * t140;
t128 = t86 * t138;
t126 = t88 * t138;
t122 = t86 * t139;
t121 = t87 * t136;
t76 = -t88 * pkin(3) - pkin(2);
t3 = -t85 * t14 + t141 * t9;
t116 = qJD(3) * t147;
t47 = t86 * t116 + t137;
t93 = -t86 * qJD(4) + t88 * t116;
t29 = -t141 * t93 + t85 * t47;
t30 = t141 * t47 + t85 * t93;
t63 = t147 * t88;
t38 = -t147 * t118 - t85 * t63;
t39 = -t141 * t63 + t147 * t151;
t119 = t38 * t29 + t39 * t30;
t113 = 0.2e1 * t121;
t111 = t86 * t120;
t110 = t82 * t122;
t28 = -t88 * t107 + t85 * t123 + t87 * t48;
t46 = t87 * t117 - t85 * t150;
t105 = t46 * t27 + t28 * t45;
t104 = -t27 * t53 + t45 * t48;
t42 = t56 - t132;
t103 = -t42 * t88 - t43 * t86;
t102 = t54 * t48 + t49 * t53;
t100 = t27 * t89 + t45 * t79;
t99 = t29 * t89 - t38 * t79;
t98 = -t30 * t89 + t39 * t79;
t97 = -t89 * t48 + t53 * t79;
t17 = t141 * t34 - t85 * t37;
t95 = t39 * t27 - t38 * t28 + t29 * t46 - t30 * t45;
t94 = t88 * t79 + t128;
t92 = 0.2e1 * t29 * t54 - 0.2e1 * t30 * t53 + 0.2e1 * t38 * t49 - 0.2e1 * t39 * t48;
t91 = t54 * t27 + t28 * t53 - t49 * t45 - t46 * t48;
t24 = t94 * pkin(6) + t146;
t25 = -t43 * qJD(3) + t145;
t90 = t103 * qJD(3) - t24 * t88 - t25 * t86;
t74 = -t141 * pkin(3) - pkin(4);
t72 = qJ(5) + t154;
t68 = -0.2e1 * t121;
t40 = t87 * t115 - t111;
t36 = 0.2e1 * t54 * t49;
t32 = t53 * pkin(4) - t54 * qJ(5) + t76;
t31 = -t49 * t89 + t54 * t79;
t23 = t45 * pkin(4) - t46 * qJ(5) + t58;
t21 = t48 * pkin(4) - t49 * qJ(5) - t54 * qJD(5) + t78;
t19 = -0.2e1 * t46 * t28;
t13 = 0.2e1 * t28 * t89 + 0.2e1 * t46 * t79;
t12 = t89 * pkin(4) - t17;
t11 = -t89 * qJ(5) + t18;
t6 = -t28 * t54 + t46 * t49;
t5 = -t27 * pkin(4) + t28 * qJ(5) - t46 * qJD(5) + t41;
t2 = -pkin(4) * t79 - t3;
t1 = t129 - t135;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t113, -0.2e1 * t114, 0, t68, 0, 0, t87 * t131, t89 * t131, 0, 0, 0.2e1 * t83 * t121 - 0.2e1 * t110, t111 * t157 + 0.2e1 * t82 * t115, 0.2e1 * t88 * t114 + 0.2e1 * t87 * t128, 0.2e1 * t81 * t121 + 0.2e1 * t110, -0.2e1 * t86 * t114 + 0.2e1 * t87 * t126, t68, 0.2e1 * t42 * t79 - 0.2e1 * t25 * t89 + 0.2e1 * (t86 * t113 + t82 * t139) * pkin(6), -0.2e1 * t43 * t79 - 0.2e1 * t24 * t89 + 0.2e1 * (t88 * t113 - t82 * t140) * pkin(6), 0.2e1 * t103 * t136 + 0.2e1 * (t24 * t86 - t25 * t88 + (t42 * t86 - t43 * t88) * qJD(3)) * t87, 0.2e1 * pkin(6) ^ 2 * t121 - 0.2e1 * t43 * t24 + 0.2e1 * t42 * t25, t19, 0.2e1 * t105, t13, t134, -0.2e1 * t100, t68, 0.2e1 * t17 * t79 - 0.2e1 * t58 * t27 - 0.2e1 * t3 * t89 + 0.2e1 * t41 * t45, -0.2e1 * t18 * t79 - 0.2e1 * t58 * t28 + 0.2e1 * t4 * t89 + 0.2e1 * t41 * t46, 0.2e1 * t17 * t28 + 0.2e1 * t18 * t27 - 0.2e1 * t3 * t46 - 0.2e1 * t4 * t45, 0.2e1 * t17 * t3 + 0.2e1 * t18 * t4 + 0.2e1 * t58 * t41, t19, t13, -0.2e1 * t105, t68, 0.2e1 * t100, t134, -0.2e1 * t12 * t79 + 0.2e1 * t2 * t89 - 0.2e1 * t23 * t27 + 0.2e1 * t5 * t45, -0.2e1 * t1 * t45 + 0.2e1 * t11 * t27 - 0.2e1 * t12 * t28 + 0.2e1 * t2 * t46, -0.2e1 * t1 * t89 + 0.2e1 * t11 * t79 + 0.2e1 * t23 * t28 - 0.2e1 * t5 * t46, 0.2e1 * t11 * t1 + 0.2e1 * t12 * t2 + 0.2e1 * t23 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t136, 0, -t79, 0, -t77, pkin(6) * t79, 0, 0, -t40, t122 * t157 - t144 * t136, t124 - t126, t40, t94, 0, (pkin(7) * t148 + (-pkin(2) * t88 + t155) * t87) * qJD(3) + (t109 * t86 - t71) * qJD(2), (pkin(6) * t149 + t108 * t86) * qJD(3) + (t109 * t88 + t132) * qJD(2), t90, -pkin(2) * t77 + pkin(7) * t90, t6, t91, t31, t104, -t97, 0, -t76 * t27 + t41 * t53 + t45 * t78 + t58 * t48 + t99, -t76 * t28 + t41 * t54 + t46 * t78 + t58 * t49 - t98, -t17 * t49 - t18 * t48 - t3 * t54 - t4 * t53 + t95, -t17 * t29 + t18 * t30 - t3 * t38 + t4 * t39 + t41 * t76 + t58 * t78, t6, t31, -t91, 0, t97, t104, t21 * t45 + t23 * t48 - t32 * t27 + t5 * t53 + t99, -t1 * t53 - t11 * t48 + t12 * t49 + t2 * t54 + t95, -t21 * t46 - t23 * t49 + t32 * t28 - t5 * t54 + t98, t1 * t39 + t11 * t30 + t12 * t29 + t2 * t38 + t23 * t21 + t5 * t32; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t122, -0.2e1 * t115, 0, -0.2e1 * t122, 0, 0, t86 * t130, t88 * t130, 0, 0, t36, -0.2e1 * t102, 0, t133, 0, 0, 0.2e1 * t76 * t48 + 0.2e1 * t53 * t78, 0.2e1 * t76 * t49 + 0.2e1 * t54 * t78, t92, 0.2e1 * t76 * t78 + 0.2e1 * t119, t36, 0, 0.2e1 * t102, 0, 0, t133, 0.2e1 * t21 * t53 + 0.2e1 * t32 * t48, t92, -0.2e1 * t21 * t54 - 0.2e1 * t32 * t49, 0.2e1 * t32 * t21 + 0.2e1 * t119; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t87 * t140 + t120, 0, -t158, t79, t25, t24, 0, 0, 0, 0, -t28, 0, t27, t79, t112 * t153 + t3, -t79 * t154 - t4, (t141 * t28 + t27 * t85) * pkin(3), (t141 * t3 + t4 * t85) * pkin(3), 0, -t28, 0, t79, -t27, 0, (pkin(4) - t74) * t79 + t3, -qJD(5) * t45 + t72 * t27 - t74 * t28, t72 * t79 + t129 - 0.2e1 * t135, t11 * qJD(5) + t1 * t72 + t2 * t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, 0, -t140, 0, -pkin(7) * t139, pkin(7) * t140, 0, 0, 0, 0, t49, 0, -t48, 0, -t29, -t30, (-t141 * t49 - t48 * t85) * pkin(3), (-t141 * t29 + t30 * t85) * pkin(3), 0, t49, 0, 0, t48, 0, -t29, -qJD(5) * t53 - t72 * t48 + t74 * t49, t30, t39 * qJD(5) + t29 * t74 + t30 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156, t72 * t156; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t27, -t28, 0, t41, 0, 0, 0, 0, 0, 0, -t27, 0, t28, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48, t49, 0, t78, 0, 0, 0, 0, 0, 0, t48, 0, -t49, t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t79, -t28, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t49, 0, t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t7;
