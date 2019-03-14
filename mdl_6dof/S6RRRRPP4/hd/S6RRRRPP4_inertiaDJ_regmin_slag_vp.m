% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S6RRRRPP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x30]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:04
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRPP4_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP4_inertiaDJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP4_inertiaDJ_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP4_inertiaDJ_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 21:02:35
% EndTime: 2019-03-09 21:02:42
% DurationCPUTime: 2.70s
% Computational Cost: add. (5934->286), mult. (14321->498), div. (0->0), fcn. (12586->8), ass. (0->146)
t126 = sin(qJ(2));
t125 = sin(qJ(3));
t129 = cos(qJ(2));
t175 = qJD(2) * t129;
t158 = t125 * t175;
t128 = cos(qJ(3));
t173 = qJD(3) * t128;
t199 = t126 * t173 + t158;
t124 = sin(qJ(4));
t127 = cos(qJ(4));
t193 = pkin(8) + pkin(9);
t163 = t193 * t125;
t196 = t193 * t128;
t185 = -t124 * t163 + t127 * t196;
t198 = t124 * t196 + t127 * t163;
t197 = -0.4e1 * t126;
t91 = t124 * t128 + t125 * t127;
t77 = t91 * t126;
t179 = t128 * t129;
t107 = pkin(7) * t179;
t140 = -pkin(2) * t129 - pkin(8) * t126;
t96 = -pkin(1) + t140;
t183 = t125 * t96 + t107;
t157 = t128 * t175;
t174 = qJD(3) * t125;
t195 = -t126 * t174 + t157;
t121 = t128 ^ 2;
t178 = t125 ^ 2 - t121;
t147 = t178 * qJD(3);
t194 = qJD(3) + qJD(4);
t172 = qJD(3) * t129;
t155 = t125 * t172;
t176 = qJD(2) * t128;
t136 = t126 * t176 + t155;
t139 = pkin(2) * t126 - pkin(8) * t129;
t94 = t139 * qJD(2);
t50 = pkin(7) * t136 - t125 * t94 - t96 * t173;
t130 = 2 * qJD(6);
t170 = qJD(4) * t127;
t171 = qJD(4) * t124;
t117 = qJD(2) * t126;
t159 = t125 * t117;
t184 = pkin(7) * t159 + t128 * t94;
t40 = (pkin(3) * t126 - pkin(9) * t179) * qJD(2) + (-t107 + (pkin(9) * t126 - t96) * t125) * qJD(3) + t184;
t45 = -pkin(9) * t199 - t50;
t180 = t126 * t128;
t191 = pkin(7) * t125;
t89 = t128 * t96;
t63 = -pkin(9) * t180 + t89 + (-pkin(3) - t191) * t129;
t181 = t125 * t126;
t68 = -pkin(9) * t181 + t183;
t18 = -t124 * t40 - t127 * t45 - t63 * t170 + t68 * t171;
t47 = -t171 * t181 + (t194 * t180 + t158) * t127 + t195 * t124;
t11 = -qJ(5) * t47 - qJD(5) * t77 - t18;
t123 = sin(pkin(10));
t182 = cos(pkin(10));
t150 = -t124 * t45 + t127 * t40;
t65 = t127 * t68;
t187 = t124 * t63 + t65;
t19 = -t187 * qJD(4) + t150;
t90 = t124 * t125 - t127 * t128;
t46 = -t90 * t175 - t194 * t77;
t78 = t90 * t126;
t9 = pkin(4) * t117 - qJ(5) * t46 + qJD(5) * t78 + t19;
t4 = t182 * t11 + t123 * t9;
t192 = pkin(3) * t127;
t131 = -t91 * qJ(5) - t198;
t55 = -qJ(5) * t90 + t185;
t34 = t123 * t55 - t182 * t131;
t148 = t182 * t124;
t75 = (t123 * t127 + t148) * qJD(4) * pkin(3);
t190 = t34 * t75;
t53 = -t123 * t77 - t182 * t78;
t189 = t53 * t75;
t62 = -t123 * t90 + t182 * t91;
t188 = t62 * t75;
t149 = -t124 * t68 + t127 * t63;
t31 = -pkin(4) * t129 + qJ(5) * t78 + t149;
t36 = -qJ(5) * t77 + t187;
t23 = t123 * t31 + t182 * t36;
t112 = pkin(4) + t192;
t80 = pkin(3) * t148 + t123 * t112;
t95 = pkin(3) * t181 + t126 * pkin(7);
t120 = t126 ^ 2;
t177 = -t129 ^ 2 + t120;
t169 = qJD(6) * t129;
t168 = -0.2e1 * pkin(1) * qJD(2);
t167 = -0.2e1 * pkin(2) * qJD(3);
t166 = qJ(6) * t117 + t4;
t115 = pkin(3) * t174;
t165 = pkin(3) * t171;
t164 = pkin(3) * t170;
t114 = pkin(7) * t175;
t69 = t199 * pkin(3) + t114;
t113 = -pkin(3) * t128 - pkin(2);
t66 = t194 * t90;
t138 = t66 * qJ(5) - t91 * qJD(5);
t142 = qJD(4) * t196;
t143 = qJD(4) * t163;
t48 = t198 * qJD(3) + t124 * t142 + t127 * t143;
t67 = t194 * t91;
t29 = -t67 * qJ(5) - t90 * qJD(5) - t48;
t132 = t185 * qJD(3);
t49 = -t185 * qJD(4) - t132;
t14 = t123 * t29 - t182 * (t138 + t49);
t15 = t182 * t29 + (t124 * t143 - t127 * t142 - t132 + t138) * t123;
t35 = t123 * t131 + t182 * t55;
t160 = t14 * t34 + t35 * t15;
t153 = t128 * t172;
t152 = t125 * t173;
t151 = t126 * t175;
t56 = pkin(4) * t67 + t115;
t3 = -t11 * t123 + t182 * t9;
t146 = t177 * qJD(2);
t145 = 0.2e1 * t151;
t141 = t125 * t157;
t64 = pkin(4) * t77 + t95;
t2 = -pkin(5) * t117 - t3;
t71 = pkin(4) * t90 + t113;
t37 = pkin(4) * t47 + t69;
t76 = -t123 * t165 + t182 * t164;
t22 = -t123 * t36 + t182 * t31;
t25 = t123 * t46 + t182 * t47;
t26 = -t123 * t47 + t182 * t46;
t52 = -t123 * t78 + t182 * t77;
t137 = t14 * t53 - t15 * t52 - t35 * t25 + t26 * t34;
t79 = -t123 * t124 * pkin(3) + t182 * t112;
t41 = -t123 * t66 + t182 * t67;
t42 = -t123 * t67 - t182 * t66;
t61 = t123 * t91 + t182 * t90;
t134 = 0.2e1 * t14 * t62 - 0.2e1 * t15 * t61 + 0.2e1 * t34 * t42 - 0.2e1 * t35 * t41;
t109 = -t182 * pkin(4) - pkin(5);
t108 = pkin(4) * t123 + qJ(6);
t104 = -0.2e1 * t151;
t74 = -pkin(5) - t79;
t73 = qJ(6) + t80;
t72 = qJD(6) + t76;
t51 = -t183 * qJD(3) + t184;
t33 = pkin(5) * t61 - qJ(6) * t62 + t71;
t27 = pkin(5) * t52 - qJ(6) * t53 + t64;
t21 = t129 * pkin(5) - t22;
t20 = -qJ(6) * t129 + t23;
t17 = pkin(5) * t41 - qJ(6) * t42 - qJD(6) * t62 + t56;
t5 = pkin(5) * t25 - qJ(6) * t26 - qJD(6) * t53 + t37;
t1 = t166 - t169;
t6 = [0, 0, 0, t145, -0.2e1 * t146, 0, 0, 0, t126 * t168, t129 * t168, -0.2e1 * t120 * t152 + 0.2e1 * t121 * t151, 0.2e1 * t120 * t147 + t141 * t197, 0.2e1 * t126 * t155 + 0.2e1 * t177 * t176, -0.2e1 * t125 * t146 + 0.2e1 * t126 * t153, t104, 0.2e1 * t89 * t117 - 0.2e1 * t51 * t129 + 0.2e1 * (t120 * t173 + t125 * t151) * pkin(7), -0.2e1 * t50 * t129 - 0.2e1 * t183 * t117 + 0.2e1 * (-t120 * t174 + t128 * t145) * pkin(7), -0.2e1 * t78 * t46, -0.2e1 * t46 * t77 + 0.2e1 * t47 * t78, -0.2e1 * t78 * t117 - 0.2e1 * t129 * t46, -0.2e1 * t77 * t117 + 0.2e1 * t129 * t47, t104, 0.2e1 * t149 * t117 - 0.2e1 * t19 * t129 + 0.2e1 * t95 * t47 + 0.2e1 * t69 * t77, -0.2e1 * t187 * t117 - 0.2e1 * t18 * t129 + 0.2e1 * t95 * t46 - 0.2e1 * t69 * t78, -0.2e1 * t22 * t26 - 0.2e1 * t23 * t25 - 0.2e1 * t3 * t53 - 0.2e1 * t4 * t52, 0.2e1 * t22 * t3 + 0.2e1 * t23 * t4 + 0.2e1 * t37 * t64, -0.2e1 * t21 * t117 + 0.2e1 * t129 * t2 + 0.2e1 * t25 * t27 + 0.2e1 * t5 * t52, -0.2e1 * t1 * t52 + 0.2e1 * t2 * t53 - 0.2e1 * t20 * t25 + 0.2e1 * t21 * t26, -0.2e1 * t1 * t129 + 0.2e1 * t117 * t20 - 0.2e1 * t26 * t27 - 0.2e1 * t5 * t53, 0.2e1 * t1 * t20 + 0.2e1 * t2 * t21 + 0.2e1 * t27 * t5; 0, 0, 0, 0, 0, t175, -t117, 0, -t114, pkin(7) * t117, -t126 * t147 + t141, t152 * t197 - t178 * t175, -t153 + t159, t136, 0 (pkin(8) * t179 + (-pkin(2) * t128 + t191) * t126) * qJD(3) + (t125 * t140 - t107) * qJD(2) (pkin(7) * t180 + t125 * t139) * qJD(3) + (t128 * t140 + t129 * t191) * qJD(2), t46 * t91 + t66 * t78, -t46 * t90 - t47 * t91 + t66 * t77 + t67 * t78, t91 * t117 + t129 * t66, -t90 * t117 + t129 * t67, 0, t113 * t47 + t77 * t115 - t117 * t198 - t49 * t129 + t95 * t67 + t69 * t90, t113 * t46 - t78 * t115 - t185 * t117 - t48 * t129 - t95 * t66 + t69 * t91, -t22 * t42 - t23 * t41 - t3 * t62 - t4 * t61 + t137, -t14 * t22 + t15 * t23 - t3 * t34 + t35 * t4 + t37 * t71 + t56 * t64, -t34 * t117 + t129 * t14 + t17 * t52 + t25 * t33 + t27 * t41 + t5 * t61, -t1 * t61 + t2 * t62 - t20 * t41 + t21 * t42 + t137, t117 * t35 - t129 * t15 - t17 * t53 - t26 * t33 - t27 * t42 - t5 * t62, t1 * t35 + t14 * t21 + t15 * t20 + t17 * t27 + t2 * t34 + t33 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t152, -0.2e1 * t147, 0, 0, 0, t125 * t167, t128 * t167, -0.2e1 * t91 * t66, 0.2e1 * t66 * t90 - 0.2e1 * t67 * t91, 0, 0, 0, 0.2e1 * t113 * t67 + 0.2e1 * t90 * t115, -0.2e1 * t113 * t66 + 0.2e1 * t91 * t115, t134, 0.2e1 * t56 * t71 + 0.2e1 * t160, 0.2e1 * t17 * t61 + 0.2e1 * t33 * t41, t134, -0.2e1 * t17 * t62 - 0.2e1 * t33 * t42, 0.2e1 * t17 * t33 + 0.2e1 * t160; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t195, -t199, t117, t51, t50, 0, 0, t46, -t47, t117, t117 * t192 + (-t65 + (pkin(3) * t129 - t63) * t124) * qJD(4) + t150 (-t124 * t117 + t129 * t170) * pkin(3) + t18, -t25 * t80 - t26 * t79 - t52 * t76 + t189, -t22 * t75 + t23 * t76 + t3 * t79 + t4 * t80, -t74 * t117 + t129 * t75 - t2, -t25 * t73 + t26 * t74 - t52 * t72 + t189, t73 * t117 + (-qJD(6) - t72) * t129 + t166, t1 * t73 + t2 * t74 + t20 * t72 + t21 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, -t174, 0, -pkin(8) * t173, pkin(8) * t174, 0, 0, -t66, -t67, 0, t49, t48, -t41 * t80 - t42 * t79 - t61 * t76 + t188, -t14 * t79 + t15 * t80 + t35 * t76 + t190, -t14, -t41 * t73 + t42 * t74 - t61 * t72 + t188, t15, t14 * t74 + t15 * t73 + t35 * t72 + t190; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t165, -0.2e1 * t164, 0, -0.2e1 * t75 * t79 + 0.2e1 * t76 * t80, -0.2e1 * t75, 0, 0.2e1 * t72, 0.2e1 * t72 * t73 + 0.2e1 * t74 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, -t47, t117, t19, t18 (-t123 * t25 - t182 * t26) * pkin(4) (t123 * t4 + t182 * t3) * pkin(4), -t109 * t117 - t2, -qJD(6) * t52 - t108 * t25 + t109 * t26, t108 * t117 + t166 - 0.2e1 * t169, qJD(6) * t20 + t1 * t108 + t109 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, -t67, 0, t49, t48 (-t123 * t41 - t182 * t42) * pkin(4) (t123 * t15 - t182 * t14) * pkin(4), -t14, -qJD(6) * t61 - t108 * t41 + t109 * t42, t15, qJD(6) * t35 + t108 * t15 + t109 * t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t165, -t164, 0 (t123 * t76 - t182 * t75) * pkin(4), -t75, 0, t130 + t76, qJD(6) * t73 + t108 * t72 + t109 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, t108 * t130; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t37, t25, 0, -t26, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t56, t41, 0, -t42, t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t117, t26, 0, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, 0, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t6;