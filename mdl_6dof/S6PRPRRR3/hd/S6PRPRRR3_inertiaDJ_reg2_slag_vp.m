% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRPRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1,theta3]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 20:34
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRPRRR3_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR3_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR3_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRRR3_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 20:34:12
% EndTime: 2019-03-08 20:34:21
% DurationCPUTime: 2.72s
% Computational Cost: add. (5112->233), mult. (12166->429), div. (0->0), fcn. (13279->12), ass. (0->143)
t94 = sin(qJ(6));
t88 = t94 ^ 2;
t97 = cos(qJ(6));
t89 = t97 ^ 2;
t166 = t88 - t89;
t188 = t166 * qJD(6);
t182 = sin(qJ(4));
t141 = qJD(4) * t182;
t184 = cos(qJ(4));
t142 = qJD(4) * t184;
t90 = sin(pkin(12));
t92 = cos(pkin(12));
t168 = t92 * t141 + t90 * t142;
t192 = 0.2e1 * t168;
t191 = t88 + t89;
t114 = t182 * t90 - t184 * t92;
t183 = cos(qJ(5));
t106 = t183 * t114;
t146 = t184 * t90;
t113 = -t182 * t92 - t146;
t95 = sin(qJ(5));
t48 = -t113 * t95 + t106;
t49 = -t113 * t183 - t95 * t114;
t81 = -t92 * pkin(3) - pkin(2);
t53 = pkin(4) * t114 + t81;
t103 = t48 * pkin(5) - t49 * pkin(10) + t53;
t171 = pkin(8) + qJ(3);
t64 = t171 * t146;
t72 = t171 * t92;
t50 = -t182 * t72 - t64;
t118 = pkin(9) * t113 + t50;
t108 = t183 * t118;
t161 = qJD(5) * t95;
t122 = t90 * t141 - t92 * t142;
t132 = t171 * t182;
t138 = t182 * qJD(3);
t139 = t184 * qJD(3);
t39 = (qJD(4) * t132 - t139) * t90 - t92 * t138 - t72 * t142;
t189 = t122 * pkin(9) + t39;
t38 = qJD(4) * t64 + t90 * t138 - t92 * t139 + t72 * t141;
t36 = -t168 * pkin(9) - t38;
t51 = -t90 * t132 + t184 * t72;
t43 = -pkin(9) * t114 + t51;
t99 = -qJD(5) * t108 + t43 * t161 - t183 * t36 - t189 * t95;
t190 = -qJD(6) * t103 + t99;
t91 = sin(pkin(6));
t98 = cos(qJ(2));
t174 = t91 * t98;
t96 = sin(qJ(2));
t175 = t91 * t96;
t93 = cos(pkin(6));
t59 = -t90 * t175 + t92 * t93;
t60 = t92 * t175 + t90 * t93;
t115 = -t182 * t59 - t184 * t60;
t44 = -t182 * t60 + t184 * t59;
t29 = -t115 * t183 + t95 * t44;
t123 = t97 * t174 + t94 * t29;
t157 = t94 * t174;
t22 = t97 * t29 - t157;
t109 = t115 * qJD(4);
t110 = t91 * t113;
t162 = qJD(2) * t98;
t101 = t110 * t162 + t109;
t140 = qJD(5) * t183;
t151 = t91 * t162;
t34 = t114 * t151 + t60 * t141 - t59 * t142;
t100 = -t95 * t101 - t115 * t161 - t44 * t140 + t183 * t34;
t163 = qJD(2) * t96;
t76 = t91 * t163;
t5 = t123 * qJD(6) + t97 * t100 - t94 * t76;
t84 = qJD(6) * t97;
t6 = qJD(6) * t157 + t100 * t94 - t29 * t84 + t97 * t76;
t187 = (-t123 * t94 - t22 * t97) * qJD(6) + t5 * t94 - t6 * t97;
t27 = t95 * t118 + t183 * t43;
t15 = t103 * t97 - t94 * t27;
t16 = t103 * t94 + t97 * t27;
t147 = t168 * pkin(4);
t31 = qJD(5) * t106 - t113 * t161 + t183 * t122 + t95 * t168;
t32 = t49 * qJD(5) - t95 * t122 + t183 * t168;
t111 = t32 * pkin(5) + t31 * pkin(10) + t147;
t159 = qJD(6) * t94;
t3 = -t111 * t94 + t27 * t159 + t190 * t97;
t4 = t111 * t97 + t190 * t94 - t27 * t84;
t186 = t3 * t94 - t4 * t97 + (t15 * t94 - t16 * t97) * qJD(6);
t185 = pkin(4) * t95;
t13 = t27 * qJD(5) - t183 * t189 + t95 * t36;
t26 = t43 * t95 - t108;
t181 = t26 * t13;
t10 = t29 * qJD(5) - t183 * t101 - t95 * t34;
t28 = -t115 * t95 - t183 * t44;
t180 = t28 * t10;
t179 = t49 * t31;
t178 = t49 * t94;
t177 = t49 * t97;
t176 = t91 ^ 2 * t96;
t173 = t97 * t31;
t172 = t97 * t32;
t170 = t13 * t94 + t26 * t84;
t153 = pkin(4) * t161;
t152 = t183 * pkin(4);
t83 = -t152 - pkin(5);
t169 = t94 * t153 + t83 * t84;
t167 = t90 ^ 2 + t92 ^ 2;
t165 = pkin(4) * qJD(5);
t164 = qJD(2) * t91;
t158 = 0.2e1 * t48 * t32;
t156 = t94 * t173;
t155 = pkin(5) * t159;
t154 = pkin(5) * t84;
t150 = t94 * t84;
t149 = t94 * t183;
t148 = t97 * t183;
t143 = t167 * t98;
t47 = t49 ^ 2;
t137 = t47 * t150;
t136 = pkin(4) * t140;
t135 = 0.2e1 * t167 * qJD(3);
t131 = t10 * t26 + t28 * t13;
t130 = t15 * t97 + t16 * t94;
t128 = -t123 * t97 + t22 * t94;
t82 = pkin(10) + t185;
t126 = t48 * t82 - t49 * t83;
t125 = -t59 * t90 + t60 * t92;
t124 = -t97 * t153 + t83 * t159;
t121 = -t31 * t94 + t49 * t84;
t120 = t49 * t159 + t173;
t20 = t32 * t94 + t48 * t84;
t119 = t48 * t159 - t172;
t116 = t191 * t183;
t112 = (-t183 * t48 + t49 * t95) * qJD(5);
t1 = -t130 * qJD(6) - t3 * t97 - t4 * t94;
t2 = -t128 * qJD(6) - t5 * t97 - t6 * t94;
t104 = pkin(4) * t112 - t31 * t83 - t32 * t82;
t75 = -0.2e1 * t150;
t74 = 0.2e1 * t150;
t68 = -0.2e1 * t188;
t58 = t116 * t165;
t23 = t26 * t159;
t18 = t49 * t188 + t156;
t14 = -0.4e1 * t49 * t150 + t166 * t31;
t8 = -t10 * t97 + t28 * t159;
t7 = t10 * t94 + t28 * t84;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * (t125 * t91 - t176) * t162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t115 * t34 + 0.2e1 * t44 * t109 + 0.2e1 * (t110 * t44 - t176) * t162, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t100 * t29 - 0.2e1 * t162 * t176 + 0.2e1 * t180, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t123 * t6 - 0.2e1 * t22 * t5 + 0.2e1 * t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t76, -t151, 0, 0, 0, 0, 0, 0, 0, 0, -t92 * t76, t90 * t76, t143 * t164, t125 * qJD(3) + (-pkin(2) * t96 + qJ(3) * t143) * t164, 0, 0, 0, 0, 0, 0 (t114 * t163 - t98 * t168) * t91 (-t113 * t163 + t98 * t122) * t91, t101 * t113 + t34 * t114 + t115 * t168 + t44 * t122, t101 * t50 + t115 * t38 - t34 * t51 + t44 * t39 + t81 * t76, 0, 0, 0, 0, 0, 0 (t48 * t163 - t32 * t98) * t91 (t49 * t163 + t31 * t98) * t91, t10 * t49 + t100 * t48 - t28 * t31 - t29 * t32, -t100 * t27 - t147 * t174 - t29 * t99 + t53 * t76 + t131, 0, 0, 0, 0, 0, 0, t10 * t178 + t121 * t28 - t123 * t32 + t48 * t6, t10 * t177 - t120 * t28 - t22 * t32 + t48 * t5, t128 * t31 + t187 * t49, -t123 * t4 + t15 * t6 - t16 * t5 - t22 * t3 + t131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, qJ(3) * t135, 0.2e1 * t113 * t122, 0.2e1 * t113 * t168 + 0.2e1 * t122 * t114, 0, t114 * t192, 0, 0, t81 * t192, -0.2e1 * t81 * t122, 0.2e1 * t113 * t39 + 0.2e1 * t38 * t114 + 0.2e1 * t50 * t122 - 0.2e1 * t51 * t168, -0.2e1 * t38 * t51 + 0.2e1 * t39 * t50, -0.2e1 * t179, 0.2e1 * t31 * t48 - 0.2e1 * t32 * t49, 0, t158, 0, 0, 0.2e1 * t48 * t147 + 0.2e1 * t53 * t32, 0.2e1 * t49 * t147 - 0.2e1 * t53 * t31, 0.2e1 * t13 * t49 - 0.2e1 * t26 * t31 - 0.2e1 * t27 * t32 + 0.2e1 * t48 * t99, 0.2e1 * t53 * t147 - 0.2e1 * t27 * t99 + 0.2e1 * t181, -0.2e1 * t89 * t179 - 0.2e1 * t137, 0.4e1 * t49 * t156 + 0.2e1 * t47 * t188, -0.2e1 * t120 * t48 + 0.2e1 * t49 * t172, -0.2e1 * t88 * t179 + 0.2e1 * t137, -0.2e1 * t121 * t48 - 0.2e1 * t32 * t178, t158, 0.2e1 * t121 * t26 + 0.2e1 * t13 * t178 + 0.2e1 * t15 * t32 + 0.2e1 * t4 * t48, -0.2e1 * t120 * t26 + 0.2e1 * t13 * t177 - 0.2e1 * t16 * t32 + 0.2e1 * t3 * t48, 0.2e1 * t130 * t31 + 0.2e1 * t186 * t49, 0.2e1 * t15 * t4 - 0.2e1 * t16 * t3 + 0.2e1 * t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t168, -t122, 0, 0, 0, 0, 0, 0, 0, 0, t32, -t31, 0, t147, 0, 0, 0, 0, 0, 0, -t119, -t20, t191 * t31, -t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t101, t34, 0, 0, 0, 0, 0, 0, 0, 0, -t10, t100, 0, -t10 * t152 - t100 * t185 + t29 * t136 + t28 * t153, 0, 0, 0, 0, 0, 0, t8, t7, t2, t10 * t83 + (t123 * t149 + t22 * t148 + t28 * t95) * t165 + t2 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t122, 0, -t168, 0, t39, t38, 0, 0, 0, 0, -t31, 0, -t32, 0, -t13, t99 (t183 * t31 - t32 * t95 + t112) * pkin(4), -t13 * t152 + t27 * t136 + t26 * t153 - t99 * t185, -t18, t14, t20, t18, -t119, 0, t23 + (-t126 * qJD(6) - t13) * t97 + t104 * t94, t104 * t97 + t126 * t159 + t170, t1, t13 * t83 + (t16 * t148 - t15 * t149 + t26 * t95) * t165 + t1 * t82; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t153, -0.2e1 * t136, 0, 0, t74, t68, 0, t75, 0, 0, 0.2e1 * t124, 0.2e1 * t169, 0.2e1 * t58, 0.2e1 * (t116 * t82 + t83 * t95) * t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t10, t100, 0, 0, 0, 0, 0, 0, 0, 0, t8, t7, t2, -pkin(5) * t10 + pkin(10) * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t31, 0, -t32, 0, -t13, t99, 0, 0, -t18, t14, t20, t18, -t119, 0, t23 + (pkin(5) * t31 - pkin(10) * t32) * t94 + (-t13 + (-pkin(5) * t49 - pkin(10) * t48) * qJD(6)) * t97, t120 * pkin(5) + t119 * pkin(10) + t170, t1, -pkin(5) * t13 + pkin(10) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t153, -t136, 0, 0, t74, t68, 0, t75, 0, 0, t124 - t155, -t154 + t169, t58 (-pkin(5) * t95 + t116 * pkin(10)) * t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, t68, 0, t75, 0, 0, -0.2e1 * t155, -0.2e1 * t154, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t6, t5, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t120, 0, -t121, t32, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t159, -t84, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, 0, -t159, 0, -t94 * t136 - t82 * t84, -t97 * t136 + t82 * t159, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, 0, -t159, 0, -pkin(10) * t84, pkin(10) * t159, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t9;
