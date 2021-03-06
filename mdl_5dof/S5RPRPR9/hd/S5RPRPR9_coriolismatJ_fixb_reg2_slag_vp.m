% Calculate inertial parameters regressor of coriolis matrix for
% S5RPRPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:25
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRPR9_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR9_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR9_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRPR9_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:24:42
% EndTime: 2019-12-31 18:24:46
% DurationCPUTime: 1.87s
% Computational Cost: add. (1571->179), mult. (2817->246), div. (0->0), fcn. (2394->6), ass. (0->148)
t113 = sin(qJ(5));
t201 = 0.2e1 * t113;
t116 = cos(qJ(3));
t117 = -pkin(3) - pkin(7);
t200 = t116 * t117;
t114 = sin(qJ(3));
t115 = cos(qJ(5));
t97 = sin(pkin(8)) * pkin(1) + pkin(6);
t196 = pkin(4) + t97;
t64 = t196 * t114;
t192 = t115 * t64;
t183 = t114 * qJ(4);
t98 = -cos(pkin(8)) * pkin(1) - pkin(2);
t127 = t98 - t183;
t51 = t127 + t200;
t35 = t113 * t51 - t192;
t194 = t113 * t64;
t36 = t115 * t51 + t194;
t14 = (t113 * t35 + t36 * t115) * t114;
t108 = t113 ^ 2;
t110 = t115 ^ 2;
t169 = t108 + t110;
t157 = t116 * qJD(1);
t149 = t115 * t157;
t84 = t108 - t110;
t120 = t84 * qJD(3) + t149 * t201;
t156 = t116 * qJD(4);
t199 = qJD(3) * (t183 - t200) - t156;
t198 = -t108 / 0.2e1;
t195 = t116 * pkin(3);
t181 = t116 * qJ(4);
t78 = -t114 * pkin(3) + t181;
t67 = t114 * pkin(7) - t78;
t193 = t113 * t67;
t191 = t115 * t67;
t182 = t115 * t116;
t184 = t113 * t116;
t65 = t196 * t116;
t58 = t65 * t115;
t41 = t58 - t193;
t186 = t65 * t113;
t42 = t186 + t191;
t4 = t42 * t182 - t41 * t184 - t14;
t190 = t4 * qJD(1);
t189 = t41 * t115;
t188 = t42 * t113;
t6 = (-t35 - t192) * t116 + (t41 - t58) * t114;
t187 = t6 * qJD(1);
t7 = (t36 - t194) * t116 + (t42 - t186) * t114;
t185 = t7 * qJD(1);
t180 = t14 * qJD(1);
t20 = -t35 * t114 + t65 * t182;
t179 = t20 * qJD(1);
t21 = -t36 * t114 - t65 * t184;
t178 = t21 * qJD(1);
t63 = t127 - t195;
t43 = -t78 * t114 + t63 * t116;
t177 = t43 * qJD(1);
t44 = -t63 * t114 - t78 * t116;
t176 = t44 * qJD(1);
t142 = t114 * t169;
t56 = t116 * t142;
t175 = t56 * qJD(1);
t66 = (t110 / 0.2e1 + t198) * t116;
t174 = t66 * qJD(5);
t109 = t114 ^ 2;
t111 = t116 ^ 2;
t85 = t111 - t109;
t71 = t85 * t113;
t173 = t71 * qJD(1);
t73 = t85 * t115;
t172 = t73 * qJD(1);
t170 = t85 * qJD(1);
t168 = qJD(1) * t114;
t167 = qJD(1) * t115;
t166 = qJD(5) * t113;
t165 = qJD(5) * t114;
t164 = qJD(5) * t115;
t163 = qJD(5) * t117;
t162 = t109 * qJD(1);
t161 = t109 * qJD(4);
t160 = t113 * qJD(3);
t102 = t114 * qJD(3);
t159 = t114 * qJD(4);
t158 = t115 * qJD(3);
t103 = t116 * qJD(3);
t155 = t116 * qJD(5);
t154 = t63 * t78 * qJD(1);
t153 = t97 * t102;
t152 = t63 * t168;
t151 = t98 * t168;
t150 = t98 * t157;
t148 = t113 * t165;
t96 = t113 * t155;
t147 = t114 * t164;
t146 = t115 * t155;
t145 = t113 * t103;
t92 = t114 * t103;
t91 = t114 * t157;
t144 = t113 * t164;
t143 = t113 * t158;
t141 = t182 * t201;
t140 = qJD(5) + t168;
t139 = t111 * t144;
t138 = t113 * t91;
t136 = t116 * t143;
t135 = (t97 / 0.2e1 + pkin(4) / 0.2e1) * t116;
t126 = t189 / 0.2e1 + t188 / 0.2e1;
t2 = (-t65 / 0.2e1 + t126) * t116 + (-t36 * t113 / 0.2e1 + t35 * t115 / 0.2e1 + t64 / 0.2e1) * t114;
t3 = -t35 * t41 + t36 * t42 - t65 * t64;
t134 = t3 * qJD(1) - t2 * qJD(2);
t132 = t188 + t189;
t49 = -t114 * t116 + t56;
t131 = -t2 * qJD(1) - t49 * qJD(2);
t129 = t78 * qJD(3) + t159;
t128 = -t162 - t165;
t106 = qJD(3) * qJ(4);
t12 = t135 - t126;
t60 = (0.1e1 / 0.2e1 + t198 - t110 / 0.2e1) * t114;
t125 = t12 * qJD(1) + t60 * qJD(2) + t106;
t124 = -t117 * t114 / 0.2e1 - t181 / 0.2e1;
t119 = t67 / 0.2e1 + t124;
t40 = t119 * t115;
t123 = qJ(4) * t160 - t40 * qJD(1);
t39 = t119 * t113;
t122 = -qJ(4) * t158 - t39 * qJD(1);
t47 = t66 * qJD(1) + t143;
t45 = t113 * t111 * t167 - t66 * qJD(3);
t72 = t84 * t111;
t121 = -t72 * qJD(1) + 0.2e1 * t136;
t118 = (-t183 - t195) * qJD(3) + t156;
t107 = qJ(4) * qJD(4);
t99 = t103 / 0.2e1;
t95 = t115 * t103;
t94 = t114 * t167;
t93 = t114 * t158;
t90 = t113 * t168;
t79 = t85 * qJD(3);
t75 = t97 * t103;
t70 = -t94 - t164;
t69 = -t90 - t166;
t68 = t91 + t155 / 0.2e1;
t59 = (0.1e1 + t169) * t114 / 0.2e1;
t23 = -t186 - t191 / 0.2e1 + t124 * t115;
t22 = t58 - t193 / 0.2e1 + t124 * t113;
t11 = t135 + t126;
t1 = t2 * qJD(3);
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92, t79, 0, -t92, 0, 0, t98 * t102, t98 * t103, 0, 0, 0, 0, 0, t92, t79, -t92, 0, t44 * qJD(3) - t114 * t156, -t43 * qJD(3) + t161, -t129 * t63, -t108 * t92 + t139, -t72 * qJD(5) - 0.2e1 * t114 * t136, -t71 * qJD(3) - t114 * t146, -t110 * t92 - t139, -t73 * qJD(3) + t114 * t96, t92, t6 * qJD(3) + t21 * qJD(5) + t113 * t161, -t7 * qJD(3) - t20 * qJD(5) + t115 * t161, -t4 * qJD(3) + t56 * qJD(4), t3 * qJD(3) - t14 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91, t170, t103, -t91, -t102, 0, -t75 + t151, t150 + t153, 0, 0, 0, -t103, t102, t91, t170, -t91, t118, t75 + t176, -t153 - t177, t118 * t97 - t154, -t174 + (-t108 * t157 + t143) * t114, qJD(5) * t141 - t120 * t114, t95 - t173, t174 + (-t110 * t157 - t143) * t114, -t145 - t172, t68, t22 * qJD(5) - t199 * t115 - t64 * t160 + t187, t23 * qJD(5) + t199 * t113 - t64 * t158 - t185, -qJD(3) * t132 - t190, (-t64 * qJ(4) + t117 * t132) * qJD(3) + t11 * qJD(4) + t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, -t91, t162, t75 - t152, 0, 0, 0, 0, 0, 0, t113 * t162 + t95, t115 * t162 - t145, t175, t11 * qJD(3) - t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, t121, -t140 * t182, -t45, t96 + t138, t99, t22 * qJD(3) - t36 * qJD(5) + t178, t23 * qJD(3) + t35 * qJD(5) - t179, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t49 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t102, -t103, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, t103, t129, 0, 0, 0, 0, 0, 0, t145 + t147, t95 - t148, -t169 * t102, (t117 * t142 + t181) * qJD(3) + t59 * qJD(4) + t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t96 + t93, -t102 * t113 + t146, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t91, -t170, 0, t91, 0, 0, -t151, -t150, 0, 0, 0, 0, 0, -t91, -t170, t91, 0, -t176, t177, t154, t108 * t91 - t174, t140 * t141, -t148 + t173, t110 * t91 + t174, -t147 + t172, -t68, t39 * qJD(5) - t187, t40 * qJD(5) + t185, t190, t12 * qJD(4) - t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60 * qJD(4) - t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t107, -t144, t84 * qJD(5), 0, t144, 0, 0, qJ(4) * t164 + qJD(4) * t113, -qJ(4) * t166 + qJD(4) * t115, 0, t107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t106, 0, 0, 0, 0, 0, 0, t160, t158, 0, t125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47, t120, t69, t47, t70, -t157 / 0.2e1, -t113 * t163 - t122, -t115 * t163 - t123, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91, -t162, t152, 0, 0, 0, 0, 0, 0, t128 * t113, t128 * t115, -t175, -qJD(3) * t12 + t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t60 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t106, 0, 0, 0, 0, 0, 0, -t160, -t158, 0, -t125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t69, t70, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t45, -t121, (t149 + t160) * t114, t45, t93 - t138, t99, -qJD(3) * t39 + t113 * t159 - t178, -qJD(3) * t40 + t115 * t159 + t179, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, -t120, t90, -t47, t94, t157 / 0.2e1, t122, t123, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t90, t94, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t5;
