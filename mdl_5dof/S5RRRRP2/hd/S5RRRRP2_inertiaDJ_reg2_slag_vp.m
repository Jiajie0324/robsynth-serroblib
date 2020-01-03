% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:12
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RRRRP2_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP2_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP2_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP2_inertiaDJ_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:11:46
% EndTime: 2020-01-03 12:11:49
% DurationCPUTime: 1.10s
% Computational Cost: add. (1547->147), mult. (3577->226), div. (0->0), fcn. (2949->6), ass. (0->112)
t107 = sin(qJ(4));
t108 = sin(qJ(3));
t144 = t107 * t108;
t163 = qJD(3) + qJD(4);
t164 = t163 * t144;
t109 = sin(qJ(2));
t159 = t109 * pkin(1);
t133 = pkin(7) + t159;
t162 = -pkin(8) - pkin(7);
t110 = cos(qJ(3));
t160 = cos(qJ(4));
t132 = t160 * t110;
t80 = -t132 + t144;
t161 = t80 * pkin(4);
t111 = cos(qJ(2));
t158 = t111 * pkin(1);
t146 = pkin(1) * qJD(2);
t102 = t109 * t146;
t141 = t108 * qJD(3);
t101 = pkin(3) * t141;
t81 = t107 * t110 + t160 * t108;
t54 = t163 * t81;
t45 = t54 * pkin(4) + t101;
t40 = t102 + t45;
t100 = -t110 * pkin(3) - pkin(2);
t88 = t100 - t158;
t62 = t88 + t161;
t157 = t40 * t80 + t62 * t54;
t127 = t160 * qJD(4);
t53 = -qJD(3) * t132 - t110 * t127 + t164;
t156 = t40 * t81 - t62 * t53;
t63 = t100 + t161;
t155 = t45 * t80 + t63 * t54;
t154 = t45 * t81 - t63 * t53;
t121 = pkin(3) * t127;
t153 = -t107 * pkin(3) * t54 - t80 * t121;
t152 = t54 * qJ(5) + t80 * qJD(5);
t85 = t102 + t101;
t151 = t88 * t54 + t85 * t80;
t150 = -t88 * t53 + t85 * t81;
t149 = t100 * t54 + t80 * t101;
t148 = -t100 * t53 + t81 * t101;
t124 = -pkin(8) - t133;
t117 = t124 * t108;
t68 = t107 * t117;
t104 = t110 * pkin(8);
t77 = t110 * t133 + t104;
t49 = t160 * t77 + t68;
t135 = t107 * t162;
t89 = t110 * pkin(7) + t104;
t59 = t108 * t135 + t160 * t89;
t103 = t110 * qJD(3);
t99 = -pkin(2) - t158;
t147 = t108 * t102 + t99 * t103;
t145 = t81 * qJ(5);
t105 = t108 ^ 2;
t106 = t110 ^ 2;
t143 = t105 + t106;
t142 = qJD(4) * t107;
t140 = t160 * pkin(3);
t139 = pkin(2) * t141;
t138 = pkin(2) * t103;
t137 = t111 * t146;
t136 = pkin(3) * t142;
t134 = t81 * t142;
t131 = t108 * t103;
t114 = qJD(3) * t124;
t122 = t110 * t137;
t112 = t108 * t114 + t122;
t123 = t108 * t137;
t113 = t110 * t114 - t123;
t69 = t160 * t117;
t13 = -qJD(4) * t69 - t107 * t113 - t160 * t112 + t77 * t142;
t3 = t13 + t152;
t48 = -t107 * t77 + t69;
t36 = t48 - t145;
t76 = t80 * qJ(5);
t37 = -t76 + t49;
t118 = t53 * qJ(5) - t81 * qJD(5);
t14 = -qJD(4) * t68 - t107 * t112 + t160 * t113 - t77 * t127;
t4 = t118 + t14;
t130 = t3 * t80 + t36 * t53 - t37 * t54 - t4 * t81;
t120 = t162 * t160;
t116 = qJD(3) * t120;
t83 = t108 * t120;
t24 = -qJD(4) * t83 - t135 * t103 - t108 * t116 + t89 * t142;
t11 = t24 + t152;
t25 = t110 * t116 - t89 * t127 - t162 * t164;
t12 = t118 + t25;
t58 = -t107 * t89 + t83;
t43 = t58 - t145;
t44 = -t76 + t59;
t129 = t11 * t80 - t12 * t81 + t43 * t53 - t44 * t54;
t128 = t13 * t80 - t14 * t81 + t48 * t53 - t49 * t54;
t126 = t24 * t80 - t25 * t81 + t58 * t53 - t59 * t54;
t125 = t143 * t111;
t119 = t133 * qJD(3);
t115 = -t110 * t102 + t99 * t141;
t98 = t140 + pkin(4);
t96 = -0.2e1 * t121;
t95 = -0.2e1 * t136;
t92 = -0.2e1 * t131;
t91 = 0.2e1 * t131;
t79 = 0.2e1 * (-t105 + t106) * qJD(3);
t71 = t125 * t146;
t52 = t53 * pkin(4);
t39 = -0.2e1 * t81 * t53;
t38 = 0.2e1 * t80 * t54;
t15 = 0.2e1 * t53 * t80 - 0.2e1 * t81 * t54;
t10 = (t160 * t53 + t134) * pkin(3) + t153;
t9 = pkin(3) * t134 + t98 * t53 + t153;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t102, -0.2e1 * t137, 0, 0, t91, t79, 0, t92, 0, 0, 0.2e1 * t115, 0.2e1 * t147, 0.2e1 * t71, 0.2e1 * (t133 * t158 * t143 + t99 * t159) * qJD(2), t39, t15, 0, t38, 0, 0, 0.2e1 * t151, 0.2e1 * t150, 0.2e1 * t128, -0.2e1 * t49 * t13 + 0.2e1 * t48 * t14 + 0.2e1 * t88 * t85, t39, t15, 0, t38, 0, 0, 0.2e1 * t157, 0.2e1 * t156, 0.2e1 * t130, -0.2e1 * t37 * t3 + 0.2e1 * t36 * t4 + 0.2e1 * t62 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t102, -t137, 0, 0, t91, t79, 0, t92, 0, 0, t115 - t139, -t138 + t147, t71, (-pkin(2) * t109 + pkin(7) * t125) * t146, t39, t15, 0, t38, 0, 0, t149 + t151, t148 + t150, t126 + t128, t85 * t100 + t88 * t101 - t13 * t59 + t14 * t58 - t49 * t24 + t48 * t25, t39, t15, 0, t38, 0, 0, t155 + t157, t154 + t156, t129 + t130, -t37 * t11 + t36 * t12 - t3 * t44 + t4 * t43 + t40 * t63 + t62 * t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91, t79, 0, t92, 0, 0, -0.2e1 * t139, -0.2e1 * t138, 0, 0, t39, t15, 0, t38, 0, 0, 0.2e1 * t149, 0.2e1 * t148, 0.2e1 * t126, 0.2e1 * t100 * t101 - 0.2e1 * t59 * t24 + 0.2e1 * t58 * t25, t39, t15, 0, t38, 0, 0, 0.2e1 * t155, 0.2e1 * t154, 0.2e1 * t129, -0.2e1 * t44 * t11 + 0.2e1 * t43 * t12 + 0.2e1 * t63 * t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, 0, -t141, 0, -t110 * t119 - t123, t108 * t119 - t122, 0, 0, 0, 0, -t53, 0, -t54, 0, t14, t13, t10, (t160 * t14 - t107 * t13 + (-t107 * t48 + t160 * t49) * qJD(4)) * pkin(3), 0, 0, -t53, 0, -t54, 0, t4, t3, t9, t4 * t98 + (-t107 * t3 + (-t107 * t36 + t160 * t37) * qJD(4)) * pkin(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, 0, -t141, 0, -pkin(7) * t103, pkin(7) * t141, 0, 0, 0, 0, -t53, 0, -t54, 0, t25, t24, t10, (t160 * t25 - t107 * t24 + (-t107 * t58 + t160 * t59) * qJD(4)) * pkin(3), 0, 0, -t53, 0, -t54, 0, t12, t11, t9, t12 * t98 + (-t107 * t11 + (-t107 * t43 + t160 * t44) * qJD(4)) * pkin(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t95, t96, 0, 0, 0, 0, 0, 0, 0, 0, t95, t96, 0, 0.2e1 * (t140 - t98) * t136; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, 0, -t54, 0, t14, t13, 0, 0, 0, 0, -t53, 0, -t54, 0, t4, t3, t52, t4 * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53, 0, -t54, 0, t25, t24, 0, 0, 0, 0, -t53, 0, -t54, 0, t12, t11, t52, t12 * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t136, -t121, 0, 0, 0, 0, 0, 0, 0, 0, -t136, -t121, 0, -pkin(4) * t136; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54, -t53, 0, t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t54, -t53, 0, t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t1;
