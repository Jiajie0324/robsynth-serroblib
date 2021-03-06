% Calculate minimal parameter regressor of coriolis matrix for
% S6RPPPRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPPPRR4_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR4_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPPRR4_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPPRR4_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:35:55
% EndTime: 2019-03-09 01:35:58
% DurationCPUTime: 1.44s
% Computational Cost: add. (659->189), mult. (1400->275), div. (0->0), fcn. (1195->6), ass. (0->152)
t90 = sin(qJ(6));
t185 = 0.2e1 * t90;
t88 = sin(pkin(9));
t89 = cos(pkin(9));
t94 = -pkin(1) - pkin(2);
t45 = t89 * qJ(2) + t88 * t94 - qJ(4);
t149 = t45 * qJD(1);
t78 = t88 * qJD(2);
t107 = t78 + t149;
t92 = cos(qJ(6));
t93 = cos(qJ(5));
t168 = t92 * t93;
t116 = t168 * t185;
t84 = t90 ^ 2;
t86 = t92 ^ 2;
t66 = t86 - t84;
t97 = qJD(1) * t116 + t66 * qJD(5);
t170 = t92 * t88;
t91 = sin(qJ(5));
t174 = t90 * t91;
t36 = t89 * t174 + t170;
t184 = -t36 / 0.2e1;
t169 = t92 * t89;
t176 = t90 * t88;
t37 = t91 * t169 - t176;
t183 = -t37 / 0.2e1;
t85 = t91 ^ 2;
t182 = -t85 / 0.2e1;
t181 = t91 * pkin(8);
t180 = t93 * pkin(5);
t105 = t88 * qJ(2) - t89 * t94 + pkin(3);
t43 = pkin(7) + t105;
t179 = t43 * t90;
t87 = t93 ^ 2;
t178 = t87 * t90;
t77 = t87 * t92;
t57 = -t180 - t181;
t177 = t90 * t57;
t175 = t90 * t89;
t173 = t92 * t43;
t172 = t92 * t57;
t171 = t92 * t85;
t65 = t85 - t87;
t112 = -t91 * pkin(5) + t93 * pkin(8);
t95 = t112 + t45;
t11 = t43 * t174 - t92 * t95;
t137 = t93 * t179;
t1 = -t11 * t93 + (t137 + t172) * t91;
t167 = t1 * qJD(1);
t138 = t91 * t173;
t12 = t90 * t95 + t138;
t136 = t43 * t168;
t2 = t12 * t93 + (-t136 + t177) * t91;
t166 = t2 * qJD(1);
t3 = -t11 * t91 - t43 * t178;
t165 = t3 * qJD(1);
t4 = -t12 * t91 - t87 * t173;
t164 = t4 * qJD(1);
t120 = -t176 / 0.2e1;
t135 = 0.1e1 / 0.2e1 + t87 / 0.2e1;
t7 = (t120 + t37 / 0.2e1) * t91 + t135 * t169;
t163 = t7 * qJD(1);
t118 = -t170 / 0.2e1;
t8 = (t118 + t184) * t91 - t135 * t175;
t162 = t8 * qJD(1);
t161 = qJD(5) * t90;
t160 = qJD(5) * t92;
t159 = qJD(6) * t90;
t158 = qJD(6) * t92;
t119 = t175 / 0.2e1;
t109 = t91 * t119 + t184;
t14 = (t118 + t109) * t93;
t157 = t14 * qJD(1);
t117 = t169 / 0.2e1;
t108 = t91 * t117 + t183;
t15 = (t176 / 0.2e1 + t108) * t93;
t156 = t15 * qJD(1);
t17 = -t105 * t88 - t45 * t89;
t155 = t17 * qJD(1);
t18 = (t88 ^ 2 + t89 ^ 2) * qJ(2);
t154 = t18 * qJD(1);
t21 = (-t88 * t174 + t169) * t91 - t87 * t176;
t153 = t21 * qJD(1);
t22 = (t91 * t170 + t175) * t91 + t87 * t170;
t152 = t22 * qJD(1);
t30 = (t85 / 0.2e1 + t135) * t90;
t151 = t30 * qJD(1);
t31 = -t77 / 0.2e1 + (-0.1e1 / 0.2e1 + t182) * t92;
t150 = t31 * qJD(1);
t49 = t65 * t90;
t148 = t49 * qJD(1);
t50 = -t77 + t171;
t147 = t50 * qJD(1);
t146 = t65 * qJD(1);
t145 = t89 * qJD(2);
t144 = t91 * qJD(1);
t143 = t91 * qJD(4);
t81 = t91 * qJD(5);
t142 = t93 * qJD(1);
t141 = t93 * qJD(5);
t140 = t93 * qJD(6);
t139 = qJ(2) * qJD(1);
t134 = t90 * t140;
t133 = t91 * t158;
t132 = t92 * t140;
t131 = t88 * t144;
t130 = t90 * t141;
t129 = t90 * t158;
t128 = t90 * t160;
t127 = t89 * t144;
t126 = t92 * t141;
t125 = t91 * t141;
t124 = t88 * t142;
t123 = t89 * t142;
t122 = t89 * t141;
t121 = t91 * t142;
t115 = qJD(4) - t145;
t113 = qJD(5) * t116;
t75 = t91 * t159;
t111 = t75 - t126;
t110 = (qJD(6) - t144) * t93;
t106 = t181 / 0.2e1 + t180 / 0.2e1;
t100 = -t57 / 0.2e1 + t106;
t19 = t100 * t90;
t104 = pkin(5) * t160 + t19 * qJD(1);
t20 = t100 * t92;
t103 = pkin(5) * t161 - t20 * qJD(1);
t102 = t92 * t110;
t40 = (t84 / 0.2e1 - t86 / 0.2e1) * t93;
t101 = t40 * qJD(1) + t128;
t99 = t90 * qJD(1) * t77 - t40 * qJD(5);
t48 = t66 * t87;
t98 = -t48 * qJD(1) + t113;
t38 = t92 * t81 + t134;
t96 = t130 + t133;
t39 = t90 * t81 - t132;
t80 = t89 * qJD(1);
t79 = t88 * qJD(1);
t76 = -t141 / 0.2e1;
t74 = t92 * t144;
t73 = t90 * t144;
t44 = (t144 - qJD(6) / 0.2e1) * t93;
t35 = t40 * qJD(6);
t33 = t171 / 0.2e1 + t77 / 0.2e1 - t92 / 0.2e1;
t32 = -t178 / 0.2e1 + (t182 + 0.1e1 / 0.2e1) * t90;
t16 = (t108 + t120) * t93;
t13 = t88 * t168 / 0.2e1 + t109 * t93;
t10 = -t87 * t169 / 0.2e1 + t117 + (t183 + t120) * t91;
t9 = t87 * t119 - t175 / 0.2e1 + (t36 / 0.2e1 + t118) * t91;
t6 = -t137 + t172 / 0.2e1 + t106 * t92;
t5 = -t136 - t177 / 0.2e1 - t106 * t90;
t23 = [0, 0, 0, 0, qJD(2), qJ(2) * qJD(2), t78, t145, t18 * qJD(2), -t78, t115, -t17 * qJD(2) - t45 * qJD(4), -t125, t65 * qJD(5), 0, 0, 0, t115 * t91 - t45 * t141, t115 * t93 + t45 * t81, -t86 * t125 - t87 * t129, -t48 * qJD(6) + t91 * t113, -t50 * qJD(5) - t91 * t134, t49 * qJD(5) - t132 * t91, t125, -t21 * qJD(2) - t1 * qJD(5) - t4 * qJD(6) + t92 * t143, t22 * qJD(2) + t2 * qJD(5) + t3 * qJD(6) - t90 * t143; 0, 0, 0, 0, qJD(1), t139, t79, t80, t154, -t79, -t80, -t155, 0, 0, 0, 0, 0, -t127, -t123, 0, 0, 0, 0, 0, t13 * qJD(5) + t10 * qJD(6) - t153, t16 * qJD(5) + t9 * qJD(6) + t152; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), -t149, 0, 0, 0, 0, 0, t144, t142, 0, 0, 0, 0, 0, t33 * qJD(6) + t74, t32 * qJD(6) - t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t121, t146, t81, t141, 0, -t45 * t142 - t43 * t81, -t43 * t141 + t45 * t144, t35 + (-t86 * t142 + t128) * t91, qJD(6) * t116 + t97 * t91, -t130 - t147, -t126 + t148, t44, -t167 + t13 * qJD(2) + (t112 * t90 - t138) * qJD(5) + t6 * qJD(6), t166 + t16 * qJD(2) + (pkin(8) * t168 + (-pkin(5) * t92 + t179) * t91) * qJD(5) + t5 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t99, t98, t90 * t110, t102, t76, t10 * qJD(2) + t33 * qJD(4) + t6 * qJD(5) - t12 * qJD(6) - t164, t9 * qJD(2) + t32 * qJD(4) + t5 * qJD(5) + t11 * qJD(6) + t165; 0, 0, 0, 0, -qJD(1), -t139, -t79, -t80, -t154, t79, t80, -t88 * qJD(4) + t155, 0, 0, 0, 0, 0, -t88 * t141 + t127, t88 * t81 + t123, 0, 0, 0, 0, 0, t14 * qJD(5) - t7 * qJD(6) + t153, t15 * qJD(5) - t8 * qJD(6) - t152; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t89 * t81 - t124, t122 + t131, 0, 0, 0, 0, 0, t38 * t89 + t157, -t39 * t89 + t156; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37 * qJD(6) + t122 * t90 - t163, -t36 * qJD(6) + t122 * t92 - t162; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t141, t81, 0, 0, 0, 0, 0, t111, t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39, t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), t107, 0, 0, 0, 0, 0, -t144, -t142, 0, 0, 0, 0, 0, -t31 * qJD(6) - t74, -t30 * qJD(6) + t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t81, -t141, 0, 0, 0, 0, 0, -t38, t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t96 - t150, t111 - t151; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t121, -t146, 0, 0, 0, t107 * t93, -t107 * t91, t86 * t121 + t35, t102 * t185, -t133 + t147, t75 - t148, -t44, -t14 * qJD(2) + t20 * qJD(6) + t167, -t15 * qJD(2) - t19 * qJD(6) - t166; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t124, -t131, 0, 0, 0, 0, 0, -t157, -t156; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t129, t66 * qJD(6), 0, 0, 0, -pkin(5) * t159, -pkin(5) * t158; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, t97, -t74 + t158, t73 - t159, t142 / 0.2e1, -pkin(8) * t158 - t103, pkin(8) * t159 - t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, -t98 (t90 * t142 + t160) * t91 (t92 * t142 - t161) * t91, t76, t7 * qJD(2) + t31 * qJD(4) - t20 * qJD(5) + t164, t8 * qJD(2) + t30 * qJD(4) + t19 * qJD(5) - t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t163, t162; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t150, t151; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t101, -t97, t74, -t73, -t142 / 0.2e1, t103, t104; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t23;
