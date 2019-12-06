% Calculate inertial parameters regressor of coriolis matrix for
% S5PRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:40
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRRRP1_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP1_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP1_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP1_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:40:22
% EndTime: 2019-12-05 16:40:26
% DurationCPUTime: 1.44s
% Computational Cost: add. (783->157), mult. (1692->178), div. (0->0), fcn. (1185->4), ass. (0->121)
t98 = cos(qJ(3));
t152 = t98 * pkin(2);
t84 = -pkin(3) - t152;
t158 = t84 / 0.2e1 - pkin(3) / 0.2e1;
t126 = qJD(2) + qJD(3);
t95 = sin(qJ(4));
t93 = t95 ^ 2;
t97 = cos(qJ(4));
t94 = t97 ^ 2;
t80 = t93 + t94;
t160 = t126 * t80;
t81 = t94 - t93;
t159 = t126 * t81;
t155 = pkin(4) * t95;
t96 = sin(qJ(3));
t154 = t96 * pkin(2);
t153 = t97 * pkin(4);
t83 = pkin(7) + t154;
t137 = qJ(5) + t83;
t51 = t137 * t95;
t150 = t51 * t95;
t52 = t137 * t97;
t149 = t52 * t97;
t85 = -pkin(3) - t153;
t68 = t85 - t152;
t59 = t68 * t95;
t148 = t68 * t97;
t144 = pkin(7) + qJ(5);
t69 = t144 * t95;
t147 = t69 * t95;
t70 = t144 * t97;
t146 = t70 * t97;
t74 = t85 * t95;
t145 = t85 * t97;
t114 = t80 * t98;
t50 = pkin(2) * t114;
t131 = t50 * qJD(2);
t43 = t50 * qJD(3);
t143 = t131 + t43;
t141 = pkin(2) * qJD(2);
t121 = t96 * t141;
t77 = t95 * t121;
t140 = pkin(2) * qJD(3);
t124 = t96 * t140;
t79 = t95 * t124;
t142 = t77 + t79;
t139 = pkin(3) * qJD(3);
t17 = t149 + t150;
t8 = (t17 * t98 + t68 * t96) * pkin(2);
t138 = t8 * qJD(2);
t136 = qJD(2) * t84;
t135 = t17 * qJD(2);
t18 = (t114 * t83 + t84 * t96) * pkin(2);
t134 = t18 * qJD(2);
t125 = t95 * t153;
t31 = -t59 + t125;
t133 = t31 * qJD(2);
t92 = t93 * pkin(4);
t41 = t92 + t148;
t132 = t41 * qJD(2);
t130 = t52 * qJD(4);
t129 = t70 * qJD(4);
t90 = t95 * qJD(4);
t128 = t95 * qJD(5);
t91 = t97 * qJD(4);
t127 = t97 * qJD(5);
t123 = pkin(4) * t91;
t122 = pkin(4) * t128;
t119 = t154 / 0.2e1;
t118 = -t152 / 0.2e1;
t117 = t95 * t136;
t116 = t97 * t136;
t115 = -t74 / 0.2e1 - t59 / 0.2e1;
t113 = pkin(2) * t126;
t112 = t97 * t124;
t111 = t95 * t118;
t110 = t97 * t118;
t66 = t126 * t95;
t67 = t126 * t97;
t22 = t146 + t147;
t39 = t149 / 0.2e1;
t13 = t39 - t149 / 0.2e1;
t3 = pkin(4) * t59;
t109 = qJD(1) * t13 + qJD(2) * t3;
t4 = t119 + (-t70 / 0.2e1 - t52 / 0.2e1) * t97 + (-t69 / 0.2e1 - t51 / 0.2e1) * t95;
t108 = -qJD(2) * t4 + qJD(3) * t22;
t78 = t97 * t121;
t107 = -t78 - t112;
t11 = (t118 + t153) * t95 + t115;
t42 = -t74 + t125;
t106 = -qJD(2) * t11 - qJD(3) * t42;
t56 = t146 / 0.2e1;
t20 = t56 - t146 / 0.2e1;
t105 = -qJD(2) * t13 - qJD(3) * t20;
t102 = t118 - t85 / 0.2e1 - t68 / 0.2e1;
t14 = t102 * t97 - t92;
t58 = t92 + t145;
t104 = -qJD(2) * t14 + qJD(3) * t58;
t103 = t118 - t158;
t27 = t103 * t95;
t101 = qJD(2) * t27 + t139 * t95;
t28 = t103 * t97;
t100 = qJD(2) * t28 + t139 * t97;
t1 = t102 * t155;
t9 = pkin(4) * t74;
t99 = qJD(1) * t20 - qJD(2) * t1 + qJD(3) * t9;
t89 = pkin(4) * t90;
t82 = t95 * t91;
t72 = t81 * qJD(4);
t71 = t80 * qJD(5);
t60 = pkin(4) * t66;
t47 = t95 * t67;
t30 = t158 * t97 + t110;
t29 = t158 * t95 + t111;
t19 = t20 * qJD(4);
t15 = t92 + t145 / 0.2e1 + t148 / 0.2e1 + t110;
t12 = (t118 - t153) * t95 - t115;
t10 = t13 * qJD(4);
t5 = t56 + t39 + t147 / 0.2e1 + t150 / 0.2e1 + t119;
t2 = pkin(4) * t111 + (t68 + t85) * t155 / 0.2e1;
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t90, -t91, 0, 0, 0, 0, 0, 0, 0, 0, -t90, -t91, 0, -t105 - t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124, -t98 * t140, 0, 0, t82, t72, 0, -t82, 0, 0, t84 * t90 - t112, t84 * t91 + t79, t43, t18 * qJD(3), t82, t72, 0, -t82, 0, 0, -qJD(4) * t31 - t112, qJD(4) * t41 + t79, t43 + t71, qJD(3) * t8 + qJD(4) * t3 + qJD(5) * t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t96 * t113, -t98 * t113, 0, 0, t82, t72, 0, -t82, 0, 0, qJD(4) * t29 + t107, qJD(4) * t30 + t142, t143, t134 + (-pkin(3) * t96 + pkin(7) * t114) * t140, t82, t72, 0, -t82, 0, 0, qJD(4) * t12 + t107, qJD(4) * t15 + t142, t143 + t71, t138 + t2 * qJD(4) + t5 * qJD(5) + (t22 * t98 + t85 * t96) * t140; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, t159, t91, -t47, -t90, 0, qJD(3) * t29 - t83 * t91 + t117, qJD(3) * t30 + t83 * t90 + t116, 0, 0, t47, t159, t91, -t47, -t90, 0, qJD(3) * t12 - t130 - t133, qJD(3) * t15 + qJD(4) * t51 + t132, -t123, -pkin(4) * t130 + qJD(3) * t2 + t109; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t160, qJD(3) * t5 + t135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t121, t98 * t141, 0, 0, t82, t72, 0, -t82, 0, 0, -qJD(4) * t27 + t78, -qJD(4) * t28 - t77, -t131, -t134, t82, t72, 0, -t82, 0, 0, -qJD(4) * t11 + t78, -qJD(4) * t14 - t77, -t131 + t71, -qJD(4) * t1 - qJD(5) * t4 - t138; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82, t72, 0, -t82, 0, 0, -pkin(3) * t90, -pkin(3) * t91, 0, 0, t82, t72, 0, -t82, 0, 0, -t42 * qJD(4), t58 * qJD(4), t71, qJD(4) * t9 + qJD(5) * t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, t159, t91, -t47, -t90, 0, -pkin(7) * t91 - t101, pkin(7) * t90 - t100, 0, 0, t47, t159, t91, -t47, -t90, 0, t106 - t129, qJD(4) * t69 + t104, -t123, -pkin(4) * t129 + t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t160, t108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t105; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47, -t159, 0, t47, 0, 0, qJD(3) * t27 - t117, qJD(3) * t28 - t116, 0, 0, -t47, -t159, 0, t47, 0, 0, qJD(3) * t11 - t128 + t133, qJD(3) * t14 - t127 - t132, 0, qJD(3) * t1 - t109 - t122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47, -t159, 0, t47, 0, 0, t101, t100, 0, 0, -t47, -t159, 0, t47, 0, 0, -t106 - t128, -t104 - t127, 0, -t99 - t122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, -t67, 0, -t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, t91, -t160, qJD(3) * t4 - t135 + t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, t91, -t160, -t108 + t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, t67, 0, t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t6;
