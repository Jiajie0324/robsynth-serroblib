% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:54
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRRPRR1_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR1_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR1_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR1_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:54:07
% EndTime: 2019-03-08 21:54:15
% DurationCPUTime: 2.86s
% Computational Cost: add. (5335->244), mult. (12660->450), div. (0->0), fcn. (13315->12), ass. (0->146)
t99 = sin(qJ(6));
t95 = t99 ^ 2;
t102 = cos(qJ(6));
t96 = t102 ^ 2;
t172 = t95 - t96;
t187 = t172 * qJD(6);
t167 = cos(pkin(12));
t139 = t167 * pkin(3) + pkin(4);
t166 = sin(pkin(12));
t149 = t166 * pkin(3);
t183 = sin(qJ(5));
t184 = cos(qJ(5));
t69 = t184 * t139 - t183 * t149;
t104 = cos(qJ(2));
t97 = sin(pkin(6));
t168 = t104 * t97;
t100 = sin(qJ(3));
t103 = cos(qJ(3));
t101 = sin(qJ(2));
t170 = t101 * t97;
t98 = cos(pkin(6));
t72 = -t100 * t170 + t103 * t98;
t73 = t100 * t98 + t103 * t170;
t46 = -t166 * t73 + t167 * t72;
t47 = t166 * t72 + t167 * t73;
t29 = t183 * t46 + t184 * t47;
t123 = t102 * t168 + t99 * t29;
t124 = -t102 * t29 + t99 * t168;
t128 = -t102 * t124 + t123 * t99;
t146 = qJD(5) * t183;
t152 = t184 * t46;
t162 = qJD(2) * t104;
t151 = t97 * t162;
t52 = t72 * qJD(3) + t103 * t151;
t53 = -t73 * qJD(3) - t100 * t151;
t34 = -t166 * t52 + t167 * t53;
t35 = t166 * t53 + t167 * t52;
t109 = -qJD(5) * t152 + t47 * t146 - t183 * t34 - t184 * t35;
t163 = qJD(2) * t101;
t88 = t97 * t163;
t5 = t123 * qJD(6) + t102 * t109 - t99 * t88;
t6 = t124 * qJD(6) + t102 * t88 + t99 * t109;
t186 = qJD(6) * t128 + t102 * t6 - t5 * t99;
t126 = t166 * t100 - t167 * t103;
t116 = t184 * t126;
t74 = t167 * t100 + t166 * t103;
t50 = t183 * t74 + t116;
t51 = -t183 * t126 + t184 * t74;
t92 = -t103 * pkin(3) - pkin(2);
t60 = t126 * pkin(4) + t92;
t108 = -t50 * pkin(5) + t51 * pkin(10) - t60;
t107 = t102 * t108;
t176 = -qJ(4) - pkin(8);
t81 = t176 * t100;
t82 = t176 * t103;
t54 = t166 * t82 + t167 * t81;
t118 = -t74 * pkin(9) + t54;
t55 = t166 * t81 - t167 * t82;
t45 = -t126 * pkin(9) + t55;
t27 = t183 * t118 + t184 * t45;
t15 = -t99 * t27 - t107;
t16 = t102 * t27 - t108 * t99;
t130 = t102 * t16 - t15 * t99;
t142 = qJD(3) * t166;
t143 = qJD(3) * t167;
t119 = -t100 * t142 + t103 * t143;
t144 = qJD(3) * t176;
t114 = -t100 * qJD(4) + t103 * t144;
t115 = qJD(4) * t103 + t100 * t144;
t43 = t167 * t114 - t166 * t115;
t106 = pkin(9) * t119 - t43;
t112 = t184 * t118;
t173 = t100 * t143 + t103 * t142;
t44 = t166 * t114 + t167 * t115;
t37 = -t173 * pkin(9) + t44;
t105 = -qJD(5) * t112 + t183 * t106 + t45 * t146 - t184 * t37;
t31 = qJD(5) * t116 - t184 * t119 + t74 * t146 + t183 * t173;
t32 = t51 * qJD(5) + t183 * t119 + t184 * t173;
t161 = t100 * qJD(3);
t154 = pkin(3) * t161;
t56 = t173 * pkin(4) + t154;
t111 = t32 * pkin(5) + t31 * pkin(10) + t56;
t164 = qJD(6) * t99;
t3 = qJD(6) * t107 + t102 * t105 - t111 * t99 + t27 * t164;
t4 = -qJD(6) * t16 + t102 * t111 + t105 * t99;
t185 = qJD(6) * t130 + t102 * t4 - t3 * t99;
t13 = t27 * qJD(5) + t184 * t106 + t183 * t37;
t26 = t183 * t45 - t112;
t182 = t26 * t13;
t70 = t183 * t139 + t184 * t149;
t62 = t70 * qJD(5);
t181 = t26 * t62;
t10 = t29 * qJD(5) + t183 * t35 - t184 * t34;
t28 = t183 * t47 - t152;
t180 = t28 * t10;
t179 = t28 * t62;
t178 = t51 * t31;
t177 = t51 * t99;
t93 = qJD(6) * t102;
t175 = t13 * t99 + t26 * t93;
t66 = -pkin(5) - t69;
t174 = t62 * t99 + t66 * t93;
t171 = t95 + t96;
t169 = t102 * t31;
t160 = t103 * qJD(3);
t159 = 0.2e1 * t50 * t32;
t158 = -0.2e1 * pkin(2) * qJD(3);
t157 = pkin(5) * t164;
t156 = t99 * t169;
t155 = pkin(5) * t93;
t153 = t51 * t164;
t24 = t26 * t164;
t150 = t99 * t93;
t61 = t69 * qJD(5);
t38 = t171 * t61;
t148 = t104 * t161;
t147 = t100 * t160;
t145 = -t102 * t62 + t66 * t164;
t49 = t51 ^ 2;
t141 = t49 * t150;
t140 = t97 ^ 2 * t101 * t162;
t136 = t10 * t26 + t28 * t13;
t135 = t10 * t51 - t28 * t31;
t134 = t13 * t51 - t26 * t31;
t133 = t31 * t50 - t32 * t51;
t132 = -t50 * t61 + t51 * t62;
t67 = pkin(10) + t70;
t131 = t50 * t67 - t51 * t66;
t129 = t102 * t15 + t16 * t99;
t127 = -t102 * t123 - t124 * t99;
t122 = t153 + t169;
t121 = -t31 * t99 + t51 * t93;
t120 = -t102 * t32 + t50 * t164;
t20 = t32 * t99 + t50 * t93;
t113 = -t31 * t66 - t32 * t67 + t132;
t1 = -t129 * qJD(6) - t102 * t3 - t4 * t99;
t2 = -t127 * qJD(6) - t102 * t5 - t6 * t99;
t110 = -t100 * t53 + t103 * t52 + (-t100 * t73 - t103 * t72) * qJD(3);
t85 = -0.2e1 * t150;
t84 = 0.2e1 * t150;
t78 = -0.2e1 * t187;
t18 = t51 * t187 + t156;
t14 = -0.4e1 * t51 * t150 + t172 * t31;
t8 = -t10 * t102 + t28 * t164;
t7 = t10 * t99 + t28 * t93;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t73 * t52 + 0.2e1 * t72 * t53 - 0.2e1 * t140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t46 * t34 + 0.2e1 * t47 * t35 - 0.2e1 * t140, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t109 * t29 - 0.2e1 * t140 + 0.2e1 * t180, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t123 * t6 + 0.2e1 * t124 * t5 + 0.2e1 * t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t88, -t151, 0, 0, 0, 0, 0, 0, 0, 0 (-t103 * t163 - t148) * t97 (t100 * t163 - t104 * t160) * t97, t110, -pkin(2) * t88 + pkin(8) * t110, 0, 0, 0, 0, 0, 0 (-t104 * t173 + t126 * t163) * t97 (-t104 * t119 + t74 * t163) * t97, -t46 * t119 - t35 * t126 - t47 * t173 - t34 * t74, t34 * t54 + t35 * t55 + t46 * t43 + t47 * t44 + (-pkin(3) * t148 + t163 * t92) * t97, 0, 0, 0, 0, 0, 0 (-t104 * t32 + t163 * t50) * t97 (t104 * t31 + t163 * t51) * t97, t109 * t50 - t29 * t32 + t135, -t109 * t27 - t29 * t105 + (-t104 * t56 + t163 * t60) * t97 + t136, 0, 0, 0, 0, 0, 0, t10 * t177 + t121 * t28 - t123 * t32 + t50 * t6, t102 * t135 + t124 * t32 - t28 * t153 + t5 * t50, t127 * t31 - t186 * t51, -t123 * t4 + t124 * t3 + t15 * t6 - t16 * t5 + t136; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t147, 0.2e1 * (-t100 ^ 2 + t103 ^ 2) * qJD(3), 0, -0.2e1 * t147, 0, 0, t100 * t158, t103 * t158, 0, 0, 0.2e1 * t74 * t119, -0.2e1 * t119 * t126 - 0.2e1 * t74 * t173, 0, 0.2e1 * t126 * t173, 0, 0, 0.2e1 * t126 * t154 + 0.2e1 * t92 * t173, 0.2e1 * t119 * t92 + 0.2e1 * t74 * t154, -0.2e1 * t54 * t119 - 0.2e1 * t44 * t126 - 0.2e1 * t55 * t173 - 0.2e1 * t43 * t74, 0.2e1 * t154 * t92 + 0.2e1 * t43 * t54 + 0.2e1 * t44 * t55, -0.2e1 * t178, 0.2e1 * t133, 0, t159, 0, 0, 0.2e1 * t32 * t60 + 0.2e1 * t50 * t56, -0.2e1 * t31 * t60 + 0.2e1 * t51 * t56, 0.2e1 * t105 * t50 - 0.2e1 * t27 * t32 + 0.2e1 * t134, -0.2e1 * t105 * t27 + 0.2e1 * t60 * t56 + 0.2e1 * t182, -0.2e1 * t178 * t96 - 0.2e1 * t141, 0.4e1 * t156 * t51 + 0.2e1 * t187 * t49, -0.2e1 * t102 * t133 - 0.2e1 * t153 * t50, -0.2e1 * t178 * t95 + 0.2e1 * t141, -0.2e1 * t121 * t50 - 0.2e1 * t177 * t32, t159, 0.2e1 * t121 * t26 + 0.2e1 * t13 * t177 + 0.2e1 * t15 * t32 + 0.2e1 * t4 * t50, 0.2e1 * t102 * t134 - 0.2e1 * t16 * t32 - 0.2e1 * t24 * t51 + 0.2e1 * t3 * t50, 0.2e1 * t129 * t31 - 0.2e1 * t185 * t51, 0.2e1 * t15 * t4 - 0.2e1 * t16 * t3 + 0.2e1 * t182; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53, -t52, 0, 0, 0, 0, 0, 0, 0, 0, t34, -t35, 0 (t166 * t35 + t167 * t34) * pkin(3), 0, 0, 0, 0, 0, 0, -t10, t109, 0, -t10 * t69 - t109 * t70 + t29 * t61 + t179, 0, 0, 0, 0, 0, 0, t8, t7, t2, t10 * t66 + t128 * t61 + t2 * t67 + t179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t160, 0, -t161, 0, -pkin(8) * t160, pkin(8) * t161, 0, 0, 0, 0, t119, 0, -t173, 0, t43, -t44 (-t167 * t119 - t166 * t173) * pkin(3) (t166 * t44 + t167 * t43) * pkin(3), 0, 0, -t31, 0, -t32, 0, -t13, t105, t31 * t69 - t32 * t70 + t132, -t105 * t70 - t13 * t69 + t27 * t61 + t181, -t18, t14, t20, t18, -t120, 0, t24 + (-qJD(6) * t131 - t13) * t102 + t113 * t99, t102 * t113 + t131 * t164 + t175, t1, t1 * t67 + t13 * t66 + t130 * t61 + t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t62, -0.2e1 * t61, 0, 0.2e1 * t61 * t70 - 0.2e1 * t62 * t69, t84, t78, 0, t85, 0, 0, 0.2e1 * t145, 0.2e1 * t174, 0.2e1 * t38, 0.2e1 * t38 * t67 + 0.2e1 * t62 * t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88, 0, 0, 0, 0, 0, 0, 0, 0, 0, t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, t119, 0, t154, 0, 0, 0, 0, 0, 0, t32, -t31, 0, t56, 0, 0, 0, 0, 0, 0, -t120, -t20, t171 * t31, t185; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t10, t109, 0, 0, 0, 0, 0, 0, 0, 0, t8, t7, t2, -pkin(5) * t10 + pkin(10) * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t31, 0, -t32, 0, -t13, t105, 0, 0, -t18, t14, t20, t18, -t120, 0, t24 + (pkin(5) * t31 - pkin(10) * t32) * t99 + (-t13 + (-pkin(5) * t51 - pkin(10) * t50) * qJD(6)) * t102, pkin(5) * t122 + pkin(10) * t120 + t175, t1, -pkin(5) * t13 + pkin(10) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62, -t61, 0, 0, t84, t78, 0, t85, 0, 0, t145 - t157, -t155 + t174, t38, -pkin(5) * t62 + pkin(10) * t38; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t84, t78, 0, t85, 0, 0, -0.2e1 * t157, -0.2e1 * t155, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t6, t5, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t122, 0, -t121, t32, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, 0, -t164, 0, -t61 * t99 - t67 * t93, -t102 * t61 + t164 * t67, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t164, -t93, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t93, 0, -t164, 0, -pkin(10) * t93, pkin(10) * t164, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t9;
