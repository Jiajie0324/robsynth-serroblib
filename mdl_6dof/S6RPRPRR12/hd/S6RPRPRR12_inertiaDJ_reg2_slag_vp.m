% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPRPRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPRPRR12_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR12_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR12_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRR12_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:19:58
% EndTime: 2019-03-09 04:20:05
% DurationCPUTime: 2.74s
% Computational Cost: add. (2750->263), mult. (5394->449), div. (0->0), fcn. (4473->6), ass. (0->147)
t173 = sin(qJ(6));
t174 = cos(qJ(6));
t182 = qJD(5) + qJD(6);
t82 = sin(qJ(5));
t84 = cos(qJ(5));
t50 = t173 * t84 + t174 * t82;
t22 = t182 * t50;
t136 = t174 * qJD(6);
t137 = t174 * qJD(5);
t138 = qJD(6) * t173;
t97 = t173 * qJD(5) + t138;
t23 = (t137 + t136) * t84 - t97 * t82;
t143 = t173 * t82;
t144 = t174 * t84;
t51 = t144 - t143;
t187 = (qJD(6) * (-t173 * t51 + t174 * t50) + t173 * t23 - t174 * t22) * pkin(5);
t175 = pkin(3) + pkin(8);
t83 = sin(qJ(3));
t184 = t175 * t83;
t116 = qJ(2) + t184;
t85 = cos(qJ(3));
t164 = t85 * qJ(4);
t100 = -t116 + t164;
t176 = -pkin(1) - pkin(7);
t154 = pkin(4) - t176;
t74 = t83 * qJD(3);
t186 = -qJD(5) * t100 + t154 * t74;
t127 = -t85 * qJD(4) + qJD(2);
t131 = t154 * t85;
t165 = qJ(4) * t83;
t180 = t175 * t85 + t165;
t185 = -t180 * qJD(3) - qJD(5) * t131 - t127;
t75 = t85 * qJD(3);
t68 = t83 * t75;
t63 = 0.2e1 * t68;
t78 = t82 ^ 2;
t80 = t84 ^ 2;
t167 = t78 + t80;
t139 = qJD(3) * t173;
t183 = -t85 * t136 + t83 * t139;
t161 = qJD(5) * t84;
t43 = t83 * t161 + t82 * t75;
t79 = t83 ^ 2;
t81 = t85 ^ 2;
t134 = (t79 - t81) * qJD(3);
t168 = t78 - t80;
t133 = t168 * qJD(5);
t158 = t83 * qJD(4);
t73 = t83 * t176;
t54 = -t83 * pkin(4) + t73;
t159 = t54 * qJD(5);
t179 = qJD(3) * (t164 - t184) + t158 - t159;
t10 = t185 * t82 - t186 * t84;
t20 = -t82 * t116 + (t82 * qJ(4) + t84 * t154) * t85;
t21 = -t84 * t100 + t82 * t131;
t110 = t20 * t82 - t21 * t84;
t9 = t185 * t84 + t186 * t82;
t3 = -qJD(5) * t110 + t10 * t84 - t9 * t82;
t178 = 0.2e1 * qJD(2);
t177 = 0.2e1 * qJD(4);
t172 = t50 * t23;
t171 = t51 * t22;
t170 = t82 * t83;
t169 = t83 * t22;
t163 = qJD(3) * t54;
t162 = qJD(5) * t82;
t160 = qJD(5) * t85;
t157 = t84 * qJD(3);
t156 = qJ(2) * qJD(3);
t155 = qJ(4) * qJD(5);
t153 = pkin(9) + t175;
t152 = t82 * t175;
t151 = t84 * t175;
t150 = t82 * t160;
t148 = t84 * t160;
t146 = t84 * t75;
t145 = t82 * t161;
t142 = qJD(5) * t175;
t141 = t176 * qJD(3);
t140 = qJD(3) * t174;
t132 = qJD(5) * (t79 + t81);
t130 = t153 * t84;
t129 = t82 * t146;
t128 = t79 * t145;
t126 = t83 * t144;
t125 = pkin(5) * t136;
t124 = pkin(5) * t138;
t123 = t83 * t141;
t122 = t85 * t140;
t121 = t83 * t140;
t120 = t84 * t137;
t117 = t85 * t139;
t70 = t85 * t141;
t48 = -pkin(4) * t75 + t70;
t114 = -t83 * pkin(3) + t164;
t13 = -qJD(6) * t126 - t117 * t84 - t120 * t83 - t122 * t82 + t97 * t170;
t33 = t50 * t83;
t113 = -t51 * t13 - t33 * t22;
t15 = t117 * t82 - t122 * t84 + t169;
t31 = t143 * t83 - t126;
t112 = t50 * t15 + t23 * t31;
t111 = t20 * t84 + t21 * t82;
t109 = t171 - t172;
t106 = t153 * t162;
t104 = t174 * t130;
t103 = t173 * t130;
t17 = -t22 * t85 - t51 * t74;
t102 = -t23 * t85 + t50 * t74;
t41 = -t83 * t162 + t146;
t19 = t84 * t83 * pkin(9) + t21;
t86 = -pkin(5) * t74 - t43 * pkin(9) + t10;
t90 = t85 * pkin(5) - pkin(9) * t170 + t100 * t82 + t131 * t84;
t88 = t174 * t90;
t89 = pkin(9) * t41 - t9;
t1 = -qJD(6) * t88 + t138 * t19 - t173 * t86 - t174 * t89;
t87 = t173 * t90;
t2 = -qJD(6) * t87 - t19 * t136 - t173 * t89 + t174 * t86;
t7 = -t173 * t19 + t88;
t8 = t174 * t19 + t87;
t95 = -t1 * t50 + t2 * t51 - t7 * t22 + t8 * t23;
t94 = t180 * qJD(5) + t48;
t53 = t153 * t82;
t11 = t182 * t104 - t173 * t106 - t53 * t138;
t12 = t182 * t103 + t174 * t106 + t53 * t136;
t25 = t173 * t53 - t104;
t26 = -t174 * t53 - t103;
t93 = t11 * t50 - t12 * t51 + t25 * t22 - t26 * t23;
t14 = -t85 * t120 + (t85 * t97 + t121) * t82 + t183 * t84;
t32 = t51 * t85;
t34 = t50 * t85;
t92 = t14 * t50 - t17 * t51 + t32 * t22 - t34 * t23;
t77 = qJ(2) * t178;
t76 = qJ(4) * t177;
t71 = t82 * pkin(5) + qJ(4);
t65 = pkin(5) * t161 + qJD(4);
t64 = -0.2e1 * t68;
t52 = qJ(2) - t114;
t49 = 0.2e1 * t134;
t44 = -t82 * t74 + t148;
t42 = t83 * t157 + t150;
t40 = t167 * t74;
t36 = qJD(3) * t114 + t158;
t35 = t73 + (-pkin(5) * t84 - pkin(4)) * t83;
t29 = (pkin(3) * t85 + t165) * qJD(3) + t127;
t28 = -t133 * t83 + t129;
t24 = -pkin(5) * t41 + t48;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t178, t77, t64, t49, 0, t63, 0, 0, 0.2e1 * qJD(2) * t83 + 0.2e1 * t85 * t156, 0.2e1 * qJD(2) * t85 - 0.2e1 * t83 * t156, 0, t77, 0, 0, 0, t64, t49, t63, 0, -0.2e1 * t29 * t83 - 0.2e1 * t52 * t75, -0.2e1 * t29 * t85 + 0.2e1 * t52 * t74, 0.2e1 * t52 * t29, 0.2e1 * t68 * t78 + 0.2e1 * t128, 0.4e1 * t129 * t83 - 0.2e1 * t133 * t79, -0.2e1 * t134 * t82 + 0.2e1 * t148 * t83, 0.2e1 * t68 * t80 - 0.2e1 * t128, -0.2e1 * t134 * t84 - 0.2e1 * t150 * t83, t64, 0.2e1 * (-t54 * t157 + t10) * t85 + 0.2e1 * (-qJD(3) * t20 + t82 * t159 - t48 * t84) * t83, 0.2e1 * (t82 * t163 + t9) * t85 + 0.2e1 * (qJD(3) * t21 + t84 * t159 + t48 * t82) * t83, -0.2e1 * t110 * t75 + 0.2e1 * (-qJD(5) * t111 - t10 * t82 - t84 * t9) * t83, 0.2e1 * t20 * t10 - 0.2e1 * t21 * t9 + 0.2e1 * t54 * t48, -0.2e1 * t33 * t13, 0.2e1 * t13 * t31 - 0.2e1 * t33 * t15, -0.2e1 * t13 * t85 - 0.2e1 * t33 * t74, 0.2e1 * t31 * t15, -0.2e1 * t15 * t85 + 0.2e1 * t31 * t74, t64, 0.2e1 * t35 * t15 + 0.2e1 * t2 * t85 + 0.2e1 * t24 * t31 - 0.2e1 * t7 * t74, 0.2e1 * t1 * t85 - 0.2e1 * t35 * t13 + 0.2e1 * t24 * t33 + 0.2e1 * t8 * t74, 0.2e1 * t1 * t31 + 0.2e1 * t7 * t13 - 0.2e1 * t8 * t15 - 0.2e1 * t2 * t33, -0.2e1 * t8 * t1 + 0.2e1 * t7 * t2 + 0.2e1 * t35 * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t82 * t132, t84 * t132, 0 (qJD(3) * t111 + t48) * t83 + (t163 - t3) * t85, 0, 0, 0, 0, 0, 0, t83 * t15 - t17 * t85 + (t31 * t85 + t32 * t83) * qJD(3), -t83 * t13 - t14 * t85 + (t33 * t85 - t34 * t83) * qJD(3), -t32 * t13 - t14 * t31 + t34 * t15 + t17 * t33, t1 * t34 + t8 * t14 - t17 * t7 - t2 * t32 + t24 * t83 + t35 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-t167 + 0.1e1) * t63, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t34 * t14 + 0.2e1 * t17 * t32 + 0.2e1 * t68; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74, 0, -t75, 0, -t123, -t70, 0, 0, 0, t74, t75, 0, 0, 0, -t36, t123, t70, qJD(4) * t73 + (-pkin(3) * t73 + t176 * t164) * qJD(3), t28, -0.4e1 * t83 * t145 - t168 * t75, -t42, -t28, -t44, 0, -t179 * t84 + t94 * t82, t179 * t82 + t94 * t84, -t3, t9 * t152 - t10 * t151 + t48 * qJ(4) + t54 * qJD(4) + (-t151 * t21 + t152 * t20) * qJD(5), t113, t13 * t50 - t51 * t15 + t22 * t31 - t33 * t23, t17, t112, t102, 0, t12 * t85 + t71 * t15 + t35 * t23 + t24 * t50 - t25 * t74 + t65 * t31, t11 * t85 - t71 * t13 - t35 * t22 + t24 * t51 + t26 * t74 + t65 * t33, t11 * t31 - t12 * t33 + t25 * t13 - t26 * t15 - t95, -t1 * t26 - t8 * t11 + t7 * t12 + t2 * t25 + t24 * t71 + t35 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74, -t75, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, t75, t36, 0, 0, 0, 0, 0, 0, t43, t41, -t40, t158 + (-t167 * t184 + t164) * qJD(3), 0, 0, 0, 0, 0, 0, t83 * t23 + t50 * t75, t51 * t75 - t169, -t92, t34 * t11 - t32 * t12 + t14 * t26 - t17 * t25 + t83 * t65 + t71 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177, t76, -0.2e1 * t145, 0.2e1 * t133, 0, 0.2e1 * t145, 0, 0, 0.2e1 * qJD(4) * t82 + 0.2e1 * t84 * t155, 0.2e1 * qJD(4) * t84 - 0.2e1 * t82 * t155, 0, t76, -0.2e1 * t171, 0.2e1 * t22 * t50 - 0.2e1 * t51 * t23, 0, 0.2e1 * t172, 0, 0, 0.2e1 * t71 * t23 + 0.2e1 * t65 * t50, -0.2e1 * t71 * t22 + 0.2e1 * t65 * t51, 0.2e1 * t93, -0.2e1 * t26 * t11 + 0.2e1 * t25 * t12 + 0.2e1 * t71 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74, 0, 0, t123, 0, 0, 0, 0, 0, 0, -t42, -t44, 0, t3, 0, 0, 0, 0, 0, 0, t17, t102, -t112 - t113, t95; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, 0, 0, 0, 0, 0, 0, 0, 0, 0, t40, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t109, -t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t109; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, 0, t41, -t74, t10, t9, 0, 0, 0, 0, -t13, 0, -t15, -t74, -pkin(5) * t121 - t124 * t85 + t2, t183 * pkin(5) + t1 (t174 * t13 - t173 * t15 + (t173 * t33 - t174 * t31) * qJD(6)) * pkin(5) (t174 * t2 - t173 * t1 + (-t173 * t7 + t174 * t8) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, t44, 0, 0, 0, 0, 0, 0, 0, 0, -t17, -t14, 0 (-t174 * t17 + t173 * t14 + (t173 * t32 - t174 * t34) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t162, 0, -t161, 0, t82 * t142, t84 * t142, 0, 0, 0, 0, -t22, 0, -t23, 0, t12, t11, -t187 (t174 * t12 - t173 * t11 + (-t173 * t25 + t174 * t26) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t162, -t161, 0, 0, 0, 0, 0, 0, 0, 0, -t22, -t23, 0, t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t124, -0.2e1 * t125, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t13, 0, -t15, -t74, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, -t14, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t22, 0, -t23, 0, t12, t11, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t22, -t23, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124, -t125, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t4;