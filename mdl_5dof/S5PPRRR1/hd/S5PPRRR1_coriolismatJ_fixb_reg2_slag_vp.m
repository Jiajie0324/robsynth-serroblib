% Calculate inertial parameters regressor of coriolis matrix for
% S5PPRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1,theta2]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:13
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PPRRR1_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR1_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR1_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPRRR1_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:12:56
% EndTime: 2019-12-05 15:12:58
% DurationCPUTime: 1.20s
% Computational Cost: add. (1129->106), mult. (2620->170), div. (0->0), fcn. (3078->8), ass. (0->96)
t128 = sin(pkin(9));
t129 = cos(pkin(9));
t138 = sin(qJ(3));
t139 = cos(qJ(3));
t73 = t139 * t128 + t138 * t129;
t92 = cos(qJ(4));
t69 = t92 * t73;
t90 = sin(qJ(4));
t95 = t138 * t128 - t139 * t129;
t94 = t90 * t95;
t152 = -t94 + t69;
t141 = t152 * pkin(4);
t108 = t90 * t73 + t92 * t95;
t89 = sin(qJ(5));
t87 = t89 ^ 2;
t91 = cos(qJ(5));
t88 = t91 ^ 2;
t112 = t88 / 0.2e1 + t87 / 0.2e1;
t156 = t112 * t108;
t159 = -t141 / 0.2e1 - pkin(7) * t156;
t121 = qJD(3) + qJD(4);
t158 = t108 * t90;
t157 = t152 * t92;
t137 = t108 * t152;
t136 = t87 + t88;
t155 = t136 * t108;
t154 = t121 * t108;
t153 = 0.2e1 * t152;
t80 = t88 - t87;
t151 = t121 * t80;
t148 = t152 / 0.2e1;
t115 = -t69 / 0.2e1;
t145 = -t89 / 0.2e1;
t144 = t89 / 0.2e1;
t143 = -t91 / 0.2e1;
t142 = t91 / 0.2e1;
t140 = t92 * pkin(3);
t135 = pkin(3) * qJD(4);
t134 = pkin(4) * qJD(4);
t133 = qJD(3) * pkin(3);
t3 = (0.1e1 - t136) * t137;
t132 = t3 * qJD(1);
t4 = -t152 * t155 + t137;
t131 = t4 * qJD(1);
t83 = -pkin(4) - t140;
t127 = qJD(3) * t83;
t113 = t148 - t152 / 0.2e1;
t17 = t113 * t91;
t126 = t17 * qJD(1);
t53 = t115 + t69 / 0.2e1;
t125 = t53 * qJD(1);
t124 = t152 * qJD(3);
t123 = t152 * qJD(4);
t122 = t89 * qJD(5);
t86 = t91 * qJD(5);
t120 = t90 * t135;
t119 = t90 * t133;
t118 = -t140 / 0.2e1;
t48 = t108 * t144;
t49 = t108 * t142;
t109 = t136 * t92;
t107 = pkin(3) * t121;
t104 = t90 * t107;
t82 = t90 * pkin(3) + pkin(7);
t93 = (t158 / 0.2e1 + t112 * t157) * pkin(3) - t82 * t156 + t83 * t148;
t2 = t93 - t159;
t51 = (t82 * t109 + t83 * t90) * pkin(3);
t103 = -t2 * qJD(1) - t51 * qJD(3);
t72 = pkin(3) * t109;
t102 = t72 * qJD(3);
t101 = t118 + pkin(4) / 0.2e1 - t83 / 0.2e1;
t58 = t101 * t89;
t100 = t58 * qJD(3) + t89 * t134;
t59 = t101 * t91;
t99 = t59 * qJD(3) + t91 * t134;
t98 = t89 * t127;
t97 = t91 * t127;
t14 = t113 * t89;
t96 = -t14 * qJD(1) - t89 * t119;
t81 = t89 * t86;
t79 = t89 * t120;
t76 = t80 * qJD(5);
t71 = t121 * t91 * t89;
t70 = t72 * qJD(4);
t61 = pkin(4) * t143 + t91 * t118 + t83 * t142;
t60 = pkin(4) * t145 + t89 * t118 + t83 * t144;
t25 = 0.2e1 * t115 + t94;
t22 = -t108 * t143 + t49;
t21 = 0.2e1 * t49;
t20 = -t108 * t145 + t48;
t19 = 0.2e1 * t48;
t18 = t153 * t143;
t13 = t153 * t144;
t5 = -0.2e1 * t156;
t1 = t93 + t159;
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t4 * qJD(3) + t3 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73 * qJD(3), t95 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, t25 * qJD(4) - t124, t154, 0, (-t157 - t158) * t133, 0, 0, 0, 0, 0, 0, t18 * qJD(4) + t20 * qJD(5) - t91 * t124, t13 * qJD(4) + t22 * qJD(5) + t89 * t124, -qJD(3) * t155 + t5 * qJD(4), t131 + (t152 * t83 - t155 * t82) * qJD(3) + t1 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t25 * qJD(3) - t123, t154, 0, 0, 0, 0, 0, 0, 0, 0, t18 * qJD(3) + t19 * qJD(5) - t91 * t123, t13 * qJD(3) + t21 * qJD(5) + t89 * t123, t5 * qJD(3) - qJD(4) * t155, t132 + t1 * qJD(3) + (-pkin(7) * t155 - t141) * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20 * qJD(3) + t19 * qJD(4) - t152 * t86, t22 * qJD(3) + t21 * qJD(4) + t122 * t152, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t122, -t86, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17 * qJD(4), t14 * qJD(4), 0, t2 * qJD(4) - t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t120, -t92 * t135, 0, 0, t81, t76, 0, -t81, 0, 0, -t91 * t120 + t83 * t122, t83 * t86 + t79, t70, t51 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t104 + t125, -t92 * t107, 0, 0, t81, t76, 0, -t81, 0, 0, t60 * qJD(5) - t91 * t104 - t126, t61 * qJD(5) + t79 - t96, t102 + t70, (-pkin(4) * t90 + pkin(7) * t109) * t135 - t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, t151, t86, -t71, -t122, 0, t60 * qJD(4) - t82 * t86 + t98, t61 * qJD(4) + t82 * t122 + t97, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t53 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t17 * qJD(3), -t14 * qJD(3), 0, -t2 * qJD(3) - t132; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t119 - t125, t92 * t133, 0, 0, t81, t76, 0, -t81, 0, 0, -t58 * qJD(5) + t91 * t119 + t126, -t59 * qJD(5) + t96, -t102, t103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81, t76, 0, -t81, 0, 0, -pkin(4) * t122, -pkin(4) * t86, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, t151, t86, -t71, -t122, 0, -pkin(7) * t86 - t100, pkin(7) * t122 - t99, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, -t151, 0, t71, 0, 0, t58 * qJD(4) - t98, t59 * qJD(4) - t97, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t71, -t151, 0, t71, 0, 0, t100, t99, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t6;
