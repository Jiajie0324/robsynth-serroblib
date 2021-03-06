% Calculate inertial parameters regressor of coriolis matrix for
% S5RPPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:00
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPPRR7_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR7_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRR7_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRR7_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:59:58
% EndTime: 2019-12-31 18:00:01
% DurationCPUTime: 1.66s
% Computational Cost: add. (1418->180), mult. (2602->257), div. (0->0), fcn. (2103->6), ass. (0->150)
t117 = sin(qJ(5));
t213 = 0.2e1 * t117;
t209 = -t117 / 0.2e1;
t120 = cos(qJ(4));
t116 = t120 ^ 2;
t118 = sin(qJ(4));
t211 = t118 ^ 2;
t83 = -t116 + t211;
t119 = cos(qJ(5));
t185 = t119 * t120;
t144 = t185 * t213;
t114 = t117 ^ 2;
t115 = t119 ^ 2;
t84 = t115 - t114;
t129 = qJD(1) * t144 - t84 * qJD(4);
t103 = -cos(pkin(8)) * pkin(1) - pkin(2) - pkin(6);
t157 = t103 * t185;
t204 = t120 * pkin(4);
t205 = t118 * pkin(7);
t75 = t204 + t205;
t202 = t117 * t75;
t49 = t157 + t202;
t198 = t49 * t119;
t189 = t117 * t120;
t158 = t103 * t189;
t201 = t119 * t75;
t48 = -t158 + t201;
t199 = t48 * t117;
t212 = t198 / 0.2e1 - t199 / 0.2e1;
t210 = -t116 / 0.2e1;
t104 = sin(pkin(8)) * pkin(1) + qJ(3);
t203 = t120 * pkin(7);
t132 = t104 - t203;
t206 = t118 * pkin(4);
t125 = t132 + t206;
t124 = t117 * t125;
t187 = t119 * t103;
t159 = t118 * t187;
t123 = t124 + t159;
t122 = t123 * t118;
t121 = t123 * t117;
t32 = t118 * t121;
t11 = t32 / 0.2e1 + t122 * t209;
t184 = t120 * t118;
t188 = t118 * t103;
t43 = t117 * t188 - t119 * t125;
t4 = t123 * t185 / 0.2e1 + t43 * t189 / 0.2e1 - t103 * t184 + t212 * t118;
t208 = qJD(4) * t4 - qJD(5) * t11;
t207 = t117 * pkin(4);
t200 = t43 * t119;
t5 = t118 * t200 - t32 + (t117 * t49 + t119 * t48) * t120;
t197 = t5 * qJD(1);
t8 = -t43 * t120 + (t48 + 0.2e1 * t158) * t118;
t196 = t8 * qJD(1);
t9 = t120 * t124 + (-t157 + t49) * t118;
t195 = t9 * qJD(1);
t167 = qJD(5) * t119;
t102 = t118 * t167;
t162 = t120 * qJD(4);
t97 = t117 * t162;
t194 = t102 + t97;
t193 = t11 * qJD(1);
t192 = t11 * qJD(3);
t191 = t116 * t117;
t190 = t117 * t119;
t186 = t119 * t211;
t18 = t121 - t200;
t183 = t18 * qJD(1);
t19 = -t103 * t191 - t43 * t118;
t182 = t19 * qJD(1);
t20 = -t116 * t187 - t122;
t181 = t20 * qJD(1);
t171 = t114 + t115;
t145 = t171 * t120;
t52 = t118 * t145 - t184;
t180 = t52 * qJD(4);
t160 = t211 / 0.2e1;
t147 = 0.1e1 / 0.2e1 + t160;
t54 = (t210 - t147) * t117;
t179 = t54 * qJD(1);
t108 = t116 * t119;
t55 = t108 / 0.2e1 + t147 * t119;
t178 = t55 * qJD(1);
t106 = t114 * t120;
t107 = t115 * t120;
t63 = t106 / 0.2e1 - t107 / 0.2e1;
t177 = t63 * qJD(5);
t70 = -t106 - t107;
t176 = t70 * qJD(1);
t71 = t83 * t117;
t175 = t71 * qJD(1);
t72 = -t108 + t186;
t174 = t72 * qJD(1);
t173 = t83 * qJD(1);
t170 = qJD(3) * t118;
t169 = qJD(4) * t119;
t168 = qJD(5) * t117;
t166 = t104 * qJD(1);
t165 = t118 * qJD(1);
t164 = t118 * qJD(4);
t163 = t120 * qJD(1);
t161 = t120 * qJD(5);
t154 = t117 * t161;
t153 = t119 * t161;
t152 = t104 * t165;
t151 = t104 * t163;
t150 = t117 * t167;
t149 = t117 * t169;
t148 = t119 * t162;
t100 = t118 * t162;
t99 = t118 * t163;
t146 = t171 * t118;
t143 = t116 * t150;
t140 = qJD(4) * t144;
t101 = t118 * t168;
t139 = t101 - t148;
t138 = t198 - t199;
t137 = (-qJD(5) - t165) * t120;
t136 = t205 / 0.2e1 + t204 / 0.2e1;
t131 = t75 / 0.2e1 + t136;
t45 = t131 * t119;
t135 = qJD(1) * t45 + qJD(4) * t207;
t44 = t131 * t117;
t134 = pkin(4) * t169 - qJD(1) * t44;
t51 = -qJD(1) * t63 + t149;
t133 = t119 * t137;
t46 = qJD(1) * t116 * t190 + qJD(4) * t63;
t69 = t84 * t116;
t130 = qJD(1) * t69 + t140;
t2 = t103 * t210 + t212 * t120 + (-t132 * t190 / 0.2e1 + t43 * t209 + (-(t187 + t207) * t119 / 0.2e1 + t103 / 0.2e1) * t118) * t118;
t6 = -t103 ^ 2 * t184 + t123 * t49 - t43 * t48;
t128 = t6 * qJD(1) + t2 * qJD(2) + t4 * qJD(3);
t38 = t83 * (t115 / 0.2e1 + t114 / 0.2e1 - 0.1e1 / 0.2e1);
t127 = t2 * qJD(1) - t52 * qJD(2) - t38 * qJD(3);
t126 = t4 * qJD(1) - t38 * qJD(2) + t52 * qJD(3);
t105 = t162 / 0.2e1;
t98 = t119 * t165;
t96 = t117 * t164;
t95 = t117 * t165;
t76 = t104 * qJD(3);
t66 = t99 + t161 / 0.2e1;
t62 = t96 - t153;
t61 = t119 * t164 + t154;
t57 = -t186 / 0.2e1 - t108 / 0.2e1 + t119 / 0.2e1;
t56 = t117 * t160 + t191 / 0.2e1 + t209;
t35 = t38 * qJD(4);
t22 = -t158 + t201 / 0.2e1 - t136 * t119;
t21 = -t157 - t202 / 0.2e1 + t136 * t117;
t1 = t2 * qJD(4);
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t76, -t100, t83 * qJD(4), 0, t100, 0, 0, t104 * t162 + t170, qJD(3) * t120 - t104 * t164, 0, t76, -t100 * t115 - t143, -qJD(5) * t69 + t118 * t140, -qJD(4) * t72 - t118 * t154, -t100 * t114 + t143, qJD(4) * t71 - t118 * t153, t100, qJD(4) * t8 + qJD(5) * t20 + t119 * t170, -qJD(4) * t9 - qJD(5) * t19 - t117 * t170, qJD(3) * t70 - qJD(4) * t5, qJD(3) * t18 + qJD(4) * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t166, 0, 0, 0, 0, 0, 0, t165, t163, 0, t166, 0, 0, 0, 0, 0, 0, qJD(5) * t57 + t98, qJD(5) * t56 - t95, t176, t183 + t208; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t99, t173, -t164, t99, -t162, 0, -t103 * t164 + t151, -t103 * t162 - t152, 0, 0, -t177 + (-t115 * t163 - t149) * t118, t118 * t129 - 0.2e1 * t120 * t150, t97 - t174, t177 + (-t114 * t163 + t149) * t118, t148 + t175, t66, t196 + (-t159 + (-t203 + t206) * t117) * qJD(4) + t22 * qJD(5), -t195 + (-pkin(7) * t185 + (pkin(4) * t119 + t103 * t117) * t118) * qJD(4) + t21 * qJD(5), qJD(4) * t138 - t197, (-pkin(4) * t188 + pkin(7) * t138) * qJD(4) + t128; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, -t130, t117 * t137, t46, t133, t105, t57 * qJD(3) + t22 * qJD(4) - qJD(5) * t123 + t181, qJD(3) * t56 + qJD(4) * t21 + qJD(5) * t43 - t182, 0, -t192; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t162, t164, 0, 0, 0, 0, 0, 0, 0, 0, t139, t194, -qJD(4) * t146, (-pkin(7) * t146 - t204) * qJD(4) + t127; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, t61, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t166, 0, 0, 0, 0, 0, 0, -t165, -t163, 0, -t166, 0, 0, 0, 0, 0, 0, -qJD(5) * t55 - t98, -qJD(5) * t54 + t95, -t176, -t183 + t208; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t164, -t162, 0, 0, 0, 0, 0, 0, 0, 0, -t61, t62, -t70 * qJD(4), (pkin(7) * t145 - t206) * qJD(4) + t126; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t178 - t194, t139 - t179, 0, -t193; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, -t173, 0, -t99, 0, 0, -t151, t152, 0, 0, t115 * t99 - t177, t133 * t213, t102 + t174, t114 * t99 + t177, -t101 - t175, -t66, -qJD(5) * t45 - t196, qJD(5) * t44 + t195, t197, -t128; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t127; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t126; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t150, t84 * qJD(5), 0, -t150, 0, 0, -pkin(4) * t168, -pkin(4) * t167, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t51, -t129, t98 + t167, -t51, -t95 - t168, -t163 / 0.2e1, -pkin(7) * t167 - t135, pkin(7) * t168 - t134, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, t130, (t117 * t163 - t169) * t118, -t46, t119 * t99 + t96, t105, qJD(3) * t55 + qJD(4) * t45 - t181, qJD(3) * t54 - qJD(4) * t44 + t182, 0, t192; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t178, t179, 0, t193; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t51, t129, -t98, t51, t95, t163 / 0.2e1, t135, t134, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t3;
