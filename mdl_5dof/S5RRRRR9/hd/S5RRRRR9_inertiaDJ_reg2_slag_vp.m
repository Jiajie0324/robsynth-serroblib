% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S5RRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% MMD_reg [((5+1)*5/2)x(5*10)]
%   inertial parameter regressor of inertia matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S5RRRRR9_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR9_inertiaDJ_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR9_inertiaDJ_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR9_inertiaDJ_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:29:53
% EndTime: 2019-12-31 22:30:05
% DurationCPUTime: 4.10s
% Computational Cost: add. (5584->334), mult. (13364->610), div. (0->0), fcn. (11780->8), ass. (0->160)
t109 = sin(qJ(2));
t108 = sin(qJ(3));
t110 = cos(qJ(3));
t212 = sin(qJ(4));
t183 = t212 * t110;
t214 = cos(qJ(4));
t74 = t214 * t108 + t183;
t207 = t74 * t109;
t184 = t214 * t110;
t215 = -pkin(8) - pkin(7);
t158 = t215 * t212;
t75 = t108 * t158;
t55 = -t215 * t184 + t75;
t223 = t55 * qJD(4);
t159 = t215 * t214;
t54 = t108 * t159 + t215 * t183;
t169 = t212 * qJD(4);
t170 = t212 * qJD(3);
t222 = t170 + t169;
t171 = t214 * qJD(4);
t221 = t214 * qJD(3) + t171;
t111 = cos(qJ(2));
t196 = t111 * qJD(2);
t199 = qJD(3) * t110;
t220 = t108 * t196 + t109 * t199;
t219 = qJD(3) + qJD(4);
t157 = t109 * t184;
t174 = qJD(2) * t212;
t175 = qJD(2) * t214;
t203 = t110 * t111;
t204 = t108 * t111;
t167 = t219 * t157 + t174 * t203 + t175 * t204;
t218 = t108 * t222;
t125 = -t109 * t218 + t167;
t98 = t212 * t108;
t151 = t98 - t184;
t103 = t108 ^ 2;
t105 = t110 ^ 2;
t202 = t103 - t105;
t165 = qJD(3) * t202;
t104 = t109 ^ 2;
t164 = (-t111 ^ 2 + t104) * qJD(2);
t101 = t109 * qJD(2);
t198 = qJD(3) * t111;
t181 = t108 * t198;
t137 = t101 * t110 + t181;
t211 = pkin(2) * t111;
t150 = -t109 * pkin(7) - t211;
t143 = -pkin(1) + t150;
t140 = t110 * t143;
t149 = pkin(2) * t109 - pkin(7) * t111;
t141 = t149 * t108;
t34 = pkin(6) * t137 - qJD(2) * t141 - qJD(3) * t140;
t217 = t109 * t215 - pkin(1) - t211;
t90 = t108 * t170;
t216 = t108 * t169 - t110 * t221 + t90;
t213 = cos(qJ(5));
t210 = t108 * pkin(6);
t102 = t109 * pkin(6);
t209 = t110 * pkin(2);
t186 = -pkin(3) - t210;
t126 = t217 * t110 + t186 * t111;
t44 = t212 * t126;
t205 = t108 * t109;
t97 = pkin(6) * t203;
t61 = t108 * t143 + t97;
t53 = -pkin(8) * t205 + t61;
t26 = t214 * t53 + t44;
t77 = pkin(3) * t205 + t102;
t200 = qJD(3) * t108;
t107 = sin(qJ(5));
t197 = qJD(5) * t107;
t195 = -0.2e1 * pkin(1) * qJD(2);
t194 = -0.2e1 * pkin(2) * qJD(3);
t193 = pkin(6) * t204;
t100 = pkin(6) * t196;
t57 = t220 * pkin(3) + t100;
t192 = t214 * pkin(3);
t191 = t212 * pkin(3);
t190 = pkin(4) * t101;
t189 = pkin(3) * t200;
t188 = pkin(4) * t197;
t99 = -t110 * pkin(3) - pkin(2);
t179 = t110 * t198;
t178 = t108 * t199;
t177 = t109 * t196;
t176 = t110 * t196;
t173 = qJD(5) * t213;
t168 = -0.2e1 * t188;
t166 = t221 * t108 + t222 * t110;
t163 = 0.2e1 * t177;
t162 = pkin(3) * t171;
t161 = pkin(3) * t169;
t160 = pkin(4) * t173;
t156 = t109 * t176;
t155 = t104 * t178;
t154 = t192 + pkin(4);
t153 = t213 * t212;
t152 = t213 * t207;
t45 = t214 * t126;
t25 = -t212 * t53 + t45;
t60 = t140 - t193;
t148 = -t108 * t61 - t110 * t60;
t145 = qJD(3) * t159;
t144 = qJD(3) * t158;
t117 = (-t217 * t108 - t97) * qJD(3) + (t215 * t203 + (-t186 + t209) * t109) * qJD(2);
t121 = -pkin(8) * t220 - t34;
t114 = t117 * t214 - t121 * t212;
t113 = -qJD(4) * t44 - t171 * t53 + t114;
t31 = t151 * t196 + t219 * t207;
t112 = t31 * pkin(9) + t113 + t190;
t8 = -qJD(4) * t45 - t212 * t117 - t214 * t121 + t169 * t53;
t119 = -pkin(9) * t125 - t8;
t63 = -t109 * t98 + t157;
t19 = -t111 * pkin(4) - t63 * pkin(9) + t25;
t22 = -pkin(9) * t207 + t26;
t1 = -t107 * t112 - t213 * t119 - t19 * t173 + t197 * t22;
t11 = t107 * t19 + t213 * t22;
t142 = t107 * t151;
t139 = t213 * t154;
t138 = t213 * t151;
t38 = -t107 * t207 + t213 * t63;
t32 = -t54 * qJD(4) - t108 * t145 - t110 * t144;
t35 = -t61 * qJD(3) + (pkin(6) * t205 + t110 * t149) * qJD(2);
t128 = qJD(3) * t148 - t108 * t35 - t110 * t34;
t42 = -qJD(5) * t139 - t213 * t162 + (qJD(5) * t212 + t169) * t107 * pkin(3);
t127 = -t74 * pkin(9) + t54;
t124 = -pkin(9) * t166 - t32;
t123 = t107 * t127;
t122 = t213 * t127;
t120 = (qJD(4) + qJD(5)) * (-t107 * t214 - t153) * pkin(3);
t118 = -t107 * t119 + t213 * t112;
t116 = -t173 * t22 - t19 * t197 + t118;
t115 = pkin(9) * t216 - t108 * t144 + t110 * t145 - t223;
t89 = -0.2e1 * t177;
t66 = pkin(3) * t153 + t107 * t154;
t65 = -t107 * t191 + t139;
t62 = pkin(4) * t151 + t99;
t56 = -t108 * t176 + t109 * t165;
t51 = pkin(4) * t207 + t77;
t50 = t213 * t74 - t142;
t49 = t107 * t74 + t138;
t43 = t120 - t188;
t40 = pkin(4) * t166 + t189;
t39 = -pkin(9) * t151 + t55;
t37 = t107 * t63 + t152;
t33 = -t223 + (t110 * t159 - t75) * qJD(3);
t23 = pkin(4) * t125 + t57;
t21 = t213 * t39 + t123;
t20 = -t107 * t39 + t122;
t15 = -qJD(5) * t142 - t107 * t216 + t166 * t213 + t173 * t74;
t14 = qJD(5) * t138 + t107 * t166 + t197 * t74 + t213 * t216;
t13 = qJD(5) * t38 - t107 * t31 + t125 * t213;
t12 = qJD(5) * t152 + t107 * t125 + t197 * t63 + t213 * t31;
t10 = -t107 * t22 + t19 * t213;
t9 = -qJD(4) * t26 + t114;
t6 = -qJD(5) * t123 - t107 * t124 + t115 * t213 - t173 * t39;
t5 = -qJD(5) * t122 - t107 * t115 - t124 * t213 + t197 * t39;
t2 = -qJD(5) * t11 + t118;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t163, -0.2e1 * t164, 0, t89, 0, 0, t109 * t195, t111 * t195, 0, 0, 0.2e1 * t105 * t177 - 0.2e1 * t155, 0.2e1 * t104 * t165 - 0.4e1 * t108 * t156, 0.2e1 * t109 * t181 + 0.2e1 * t110 * t164, 0.2e1 * t103 * t177 + 0.2e1 * t155, -0.2e1 * t108 * t164 + 0.2e1 * t109 * t179, t89, 0.2e1 * t60 * t101 - 0.2e1 * t111 * t35 + 0.2e1 * (t104 * t199 + t108 * t163) * pkin(6), -0.2e1 * t61 * t101 - 0.2e1 * t111 * t34 + 0.2e1 * (-t104 * t200 + 0.2e1 * t156) * pkin(6), 0.2e1 * t148 * t196 + 0.2e1 * (t108 * t34 - t110 * t35 + (t108 * t60 - t110 * t61) * qJD(3)) * t109, 0.2e1 * pkin(6) ^ 2 * t177 - 0.2e1 * t61 * t34 + 0.2e1 * t60 * t35, -0.2e1 * t63 * t31, -0.2e1 * t125 * t63 + 0.2e1 * t207 * t31, 0.2e1 * t101 * t63 + 0.2e1 * t111 * t31, 0.2e1 * t207 * t125, 0.2e1 * t111 * t167 + 0.2e1 * (-qJD(2) * t207 - t111 * t218) * t109, t89, -0.2e1 * t9 * t111 + 0.2e1 * t57 * t207 + 0.2e1 * t77 * t167 + 0.2e1 * (t25 * qJD(2) - t218 * t77) * t109, -0.2e1 * t101 * t26 - 0.2e1 * t111 * t8 - 0.2e1 * t77 * t31 + 0.2e1 * t57 * t63, -0.2e1 * t125 * t26 + 0.2e1 * t207 * t8 + 0.2e1 * t25 * t31 - 0.2e1 * t9 * t63, 0.2e1 * t25 * t9 - 0.2e1 * t26 * t8 + 0.2e1 * t57 * t77, -0.2e1 * t38 * t12, 0.2e1 * t12 * t37 - 0.2e1 * t13 * t38, 0.2e1 * t101 * t38 + 0.2e1 * t111 * t12, 0.2e1 * t37 * t13, -0.2e1 * t101 * t37 + 0.2e1 * t111 * t13, t89, 0.2e1 * t10 * t101 - 0.2e1 * t111 * t2 + 0.2e1 * t51 * t13 + 0.2e1 * t23 * t37, -0.2e1 * t1 * t111 - 0.2e1 * t101 * t11 - 0.2e1 * t51 * t12 + 0.2e1 * t23 * t38, 0.2e1 * t1 * t37 + 0.2e1 * t10 * t12 - 0.2e1 * t11 * t13 - 0.2e1 * t2 * t38, -0.2e1 * t1 * t11 + 0.2e1 * t10 * t2 + 0.2e1 * t23 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t196, 0, -t101, 0, -t100, pkin(6) * t101, 0, 0, -t56, -0.4e1 * t109 * t178 - t196 * t202, t101 * t108 - t179, t56, t137, 0, (pkin(7) * t203 + (-t209 + t210) * t109) * qJD(3) + (t108 * t150 - t97) * qJD(2), (t102 * t110 + t141) * qJD(3) + (t110 * t150 + t193) * qJD(2), t128, -pkin(2) * t100 + pkin(7) * t128, -t216 * t63 - t31 * t74, -t125 * t74 + t151 * t31 - t166 * t63 + t207 * t216, t101 * t74 + t111 * t216, t125 * t151 + t166 * t207, -t101 * t151 + t111 * t166, 0, t54 * t101 - t33 * t111 + t99 * t125 + t57 * t151 + t77 * t166 + t207 * t189, -t101 * t55 - t32 * t111 + t189 * t63 - t216 * t77 - t99 * t31 + t57 * t74, -t125 * t55 + t151 * t8 - t166 * t26 + t207 * t32 + t216 * t25 + t54 * t31 - t33 * t63 - t9 * t74, t189 * t77 + t25 * t33 - t26 * t32 + t54 * t9 - t55 * t8 + t57 * t99, -t12 * t50 - t14 * t38, t12 * t49 - t13 * t50 + t14 * t37 - t15 * t38, t101 * t50 + t111 * t14, t13 * t49 + t15 * t37, -t101 * t49 + t111 * t15, 0, t101 * t20 - t111 * t6 + t62 * t13 + t51 * t15 + t23 * t49 + t40 * t37, -t101 * t21 - t111 * t5 - t62 * t12 - t51 * t14 + t23 * t50 + t40 * t38, t1 * t49 + t10 * t14 - t11 * t15 + t12 * t20 - t13 * t21 - t2 * t50 + t37 * t5 - t38 * t6, -t1 * t21 + t10 * t6 - t11 * t5 + t2 * t20 + t23 * t62 + t40 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t178, -0.2e1 * t165, 0, -0.2e1 * t178, 0, 0, t108 * t194, t110 * t194, 0, 0, -0.2e1 * t74 * t216, 0.2e1 * t151 * t216 - 0.2e1 * t166 * t74, 0, 0.2e1 * t151 * t166, 0, 0, 0.2e1 * t151 * t189 + 0.2e1 * t166 * t99, 0.2e1 * t189 * t74 - 0.2e1 * t216 * t99, 0.2e1 * t151 * t32 - 0.2e1 * t166 * t55 + 0.2e1 * t216 * t54 - 0.2e1 * t33 * t74, 0.2e1 * t189 * t99 - 0.2e1 * t32 * t55 + 0.2e1 * t33 * t54, -0.2e1 * t50 * t14, 0.2e1 * t14 * t49 - 0.2e1 * t15 * t50, 0, 0.2e1 * t49 * t15, 0, 0, 0.2e1 * t15 * t62 + 0.2e1 * t40 * t49, -0.2e1 * t14 * t62 + 0.2e1 * t40 * t50, 0.2e1 * t14 * t20 - 0.2e1 * t15 * t21 + 0.2e1 * t49 * t5 - 0.2e1 * t50 * t6, 0.2e1 * t20 * t6 - 0.2e1 * t21 * t5 + 0.2e1 * t40 * t62; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t109 * t200 + t176, 0, -t220, t101, t35, t34, 0, 0, 0, 0, -t31, 0, -t125, t101, pkin(3) * t109 * t175 + t111 * t161 + t113, (-t109 * t174 + t111 * t171) * pkin(3) + t8, (t212 * (t109 * t90 - t167) + t31 * t214 + (-t207 * t214 + (t205 * t212 + t63) * t212) * qJD(4)) * pkin(3), (-t212 * t8 + t214 * t9 + (-t212 * t25 + t214 * t26) * qJD(4)) * pkin(3), 0, 0, -t12, 0, -t13, t101, t101 * t65 - t43 * t111 + t116, -t101 * t66 - t111 * t42 + t1, t12 * t65 - t13 * t66 + t37 * t42 - t38 * t43, -t1 * t66 + t10 * t43 - t11 * t42 + t2 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t199, 0, -t200, 0, -pkin(7) * t199, pkin(7) * t200, 0, 0, 0, 0, -t216, 0, -t166, 0, t33, t32, -t151 * t162 + t161 * t74 - t166 * t191 + t192 * t216, (-t212 * t32 + t214 * t33 + (-t212 * t54 + t214 * t55) * qJD(4)) * pkin(3), 0, 0, -t14, 0, -t15, 0, t6, t5, t14 * t65 - t15 * t66 + t42 * t49 - t43 * t50, t20 * t43 - t21 * t42 - t5 * t66 + t6 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t161, -0.2e1 * t162, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t43, 0.2e1 * t42, 0, -0.2e1 * t42 * t66 + 0.2e1 * t43 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t31, 0, -t125, t101, t9, t8, 0, 0, 0, 0, -t12, 0, -t13, t101, t111 * t188 + t190 * t213 + t116, (-t101 * t107 + t111 * t173) * pkin(4) + t1, (t213 * t12 - t107 * t13 + (t107 * t38 - t213 * t37) * qJD(5)) * pkin(4), (t213 * t2 - t1 * t107 + (-t10 * t107 + t11 * t213) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t216, 0, -t166, 0, t33, t32, 0, 0, 0, 0, -t14, 0, -t15, 0, t6, t5, (t213 * t14 - t107 * t15 + (t107 * t50 - t213 * t49) * qJD(5)) * pkin(4), (t213 * t6 - t107 * t5 + (-t107 * t20 + t21 * t213) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t161, -t162, 0, 0, 0, 0, 0, 0, 0, 0, t120 + t168, -t160 + t42, 0, (t213 * t43 - t107 * t42 + (-t107 * t65 + t213 * t66) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t168, -0.2e1 * t160, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, 0, -t13, t101, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t14, 0, -t15, 0, t6, t5, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, t42, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, -t160, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg = t3;
