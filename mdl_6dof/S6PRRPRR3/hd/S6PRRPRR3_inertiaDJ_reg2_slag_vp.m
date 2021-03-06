% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d5,d6,theta1,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 22:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRRPRR3_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR3_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR3_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRPRR3_inertiaDJ_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 22:07:44
% EndTime: 2019-03-08 22:07:59
% DurationCPUTime: 5.95s
% Computational Cost: add. (7502->413), mult. (22350->763), div. (0->0), fcn. (23063->14), ass. (0->216)
t101 = sin(qJ(5));
t232 = cos(pkin(7));
t102 = sin(qJ(3));
t230 = sin(pkin(13));
t184 = t102 * t230;
t231 = cos(pkin(13));
t106 = cos(qJ(3));
t97 = sin(pkin(7));
t234 = t106 * t97;
t86 = t231 * t234;
t158 = t97 * t184 - t86;
t68 = t158 * qJD(3);
t159 = t232 * qJD(5) - t68;
t263 = t101 * t159;
t105 = cos(qJ(5));
t252 = qJD(5) * t158;
t262 = t105 * t252;
t217 = qJD(5) * t101;
t138 = t231 * t102 + t230 * t106;
t259 = t97 * t138;
t129 = qJD(5) * t259;
t66 = t101 * t129;
t251 = -t105 * t159 + t66;
t60 = t101 * t232 + t105 * t259;
t261 = -t105 * t251 - t60 * t217;
t260 = -0.4e1 * t101;
t103 = sin(qJ(2));
t98 = sin(pkin(6));
t229 = qJD(2) * t98;
t194 = t103 * t229;
t92 = t97 ^ 2;
t178 = t92 * t194;
t116 = t97 * pkin(2) + pkin(3) * t234 - pkin(4) * t158 + pkin(10) * t259;
t183 = t106 * t232;
t172 = pkin(2) * t183;
t244 = pkin(9) + qJ(4);
t193 = t97 * t244;
t132 = -t102 * t193 + t172;
t228 = qJD(4) * t97;
t118 = qJD(3) * t132 + t106 * t228;
t185 = t102 * t232;
t173 = pkin(2) * t185;
t119 = -t102 * t228 + (-t106 * t193 - t173) * qJD(3);
t30 = t231 * t118 + t230 * t119;
t258 = qJD(5) * t116 - t30;
t104 = cos(qJ(6));
t100 = sin(qJ(6));
t214 = qJD(6) * t100;
t45 = t105 * t129 + t263;
t59 = t101 * t259 - t105 * t232;
t150 = -t104 * t45 + t59 * t214;
t257 = t150 * t101;
t121 = t232 * pkin(3) + t132;
t133 = t244 * t234 + t173;
t46 = t231 * t121 - t230 * t133;
t36 = -t232 * pkin(4) - t46;
t110 = t59 * pkin(5) - t60 * pkin(11) + t36;
t131 = qJD(3) * t138;
t127 = t97 * t131;
t47 = t230 * t121 + t231 * t133;
t112 = t232 * pkin(10) + t47;
t128 = qJD(3) * t259;
t220 = qJD(3) * t102;
t196 = t97 * t220;
t179 = pkin(3) * t196;
t255 = -pkin(4) * t128 - t68 * pkin(10) + qJD(5) * t112 - t179;
t9 = t255 * t101 + t258 * t105;
t256 = -pkin(11) * t127 - qJD(6) * t110 + t9;
t254 = t101 * t127 + t262;
t253 = -qJD(6) * t158 + t251;
t177 = t97 * t194;
t107 = cos(qJ(2));
t182 = t107 * t232;
t223 = t103 * t106;
t99 = cos(pkin(6));
t43 = -t99 * t196 + ((-t102 * t182 - t223) * qJD(3) + (-t102 * t107 - t103 * t183) * qJD(2)) * t98;
t219 = qJD(3) * t106;
t195 = t97 * t219;
t224 = t102 * t103;
t44 = t99 * t195 + ((t106 * t182 - t224) * qJD(3) + (-t103 * t185 + t106 * t107) * qJD(2)) * t98;
t24 = t230 * t43 + t231 * t44;
t141 = t101 * t177 + t105 * t24;
t147 = t98 * t182 + t97 * t99;
t55 = t106 * t147 - t98 * t224;
t56 = t102 * t147 + t98 * t223;
t33 = t230 * t55 + t231 * t56;
t73 = -t98 * t107 * t97 + t99 * t232;
t27 = t101 * t33 - t73 * t105;
t221 = t27 * qJD(5);
t120 = t141 - t221;
t215 = qJD(5) * t105;
t93 = t100 ^ 2;
t95 = t104 ^ 2;
t186 = qJD(6) * (t93 - t95);
t250 = -0.2e1 * t68;
t249 = pkin(5) * t101;
t248 = pkin(11) * t105;
t28 = t101 * t73 + t105 * t33;
t12 = t28 * qJD(5) + t24 * t101 - t105 * t177;
t247 = t27 * t12;
t23 = t230 * t44 - t231 * t43;
t32 = t230 * t56 - t231 * t55;
t246 = t32 * t23;
t29 = t230 * t118 - t231 * t119;
t245 = t32 * t29;
t213 = qJD(6) * t104;
t18 = -t253 * t100 - t104 * t127 + t60 * t213;
t192 = t104 * t215;
t225 = t101 * t104;
t49 = t100 * t60 - t104 * t158;
t243 = -t18 * t225 - t49 * t192;
t26 = -t101 * t116 + t105 * t112;
t242 = -t101 * t45 - t59 * t215;
t94 = t101 ^ 2;
t240 = -t105 ^ 2 + t94;
t17 = -t100 * t127 + t253 * t104 + t60 * t214;
t239 = t100 * t17;
t90 = t230 * pkin(3) + pkin(10);
t238 = t101 * t90;
t237 = t104 * t17;
t236 = t104 * t18;
t235 = t105 * t90;
t233 = t12 * t101;
t227 = qJD(5) * t49;
t226 = qJD(6) * t49;
t222 = t104 * t105;
t218 = qJD(5) * t100;
t216 = qJD(5) * t104;
t212 = qJD(6) * t105;
t211 = 0.2e1 * t59 * t45;
t210 = -0.2e1 * pkin(5) * qJD(6);
t91 = -t231 * pkin(3) - pkin(4);
t209 = 0.2e1 * qJD(5) * t91;
t208 = pkin(3) * t220;
t207 = qJD(6) * t90 * t94;
t206 = t100 * t235;
t205 = t90 * t222;
t204 = t92 * t219;
t203 = t59 * t218;
t202 = t90 * t217;
t201 = t59 * t216;
t50 = t100 * t158 + t104 * t60;
t200 = t50 * t215;
t199 = t90 * t215;
t198 = t93 * t215;
t191 = t100 * t212;
t190 = t101 * t213;
t189 = t104 * t212;
t188 = t100 * t213;
t187 = t101 * t215;
t181 = t240 * qJD(5);
t176 = t94 * t188;
t175 = t50 * t190;
t174 = t102 * t204;
t171 = t100 * t192;
t169 = qJD(3) * t97 * t232;
t168 = -t105 * pkin(5) - t101 * pkin(11);
t167 = -t248 + t249;
t20 = pkin(11) * t158 + t26;
t7 = -t100 * t20 + t104 * t110;
t8 = t100 * t110 + t104 * t20;
t166 = -t100 * t8 - t104 * t7;
t165 = t100 * t7 - t104 * t8;
t10 = t258 * t101 - t255 * t105;
t164 = -t10 * t101 - t9 * t105;
t14 = -t100 * t28 + t104 * t32;
t15 = t100 * t32 + t104 * t28;
t163 = -t100 * t15 - t104 * t14;
t162 = t100 * t14 - t104 * t15;
t136 = -t168 - t91;
t130 = t104 * t136;
t57 = -t130 - t206;
t58 = -t100 * t136 + t205;
t161 = -t100 * t58 - t104 * t57;
t160 = t100 * t57 - t104 * t58;
t25 = -t101 * t112 - t105 * t116;
t19 = -pkin(5) * t158 - t25;
t6 = -pkin(5) * t127 - t10;
t156 = t100 * t6 + t19 * t213;
t155 = -t104 * t6 + t19 * t214;
t154 = -t105 * t45 + t59 * t217;
t153 = t100 * t12 + t27 * t213;
t152 = -t104 * t12 + t27 * t214;
t151 = t100 * t45 + t59 * t213;
t149 = t167 * t100;
t148 = t97 * t158;
t75 = t101 * t216 + t191;
t143 = -pkin(9) * t234 - t173;
t142 = t102 * t97 * pkin(9) - t172;
t126 = -0.2e1 * t128;
t113 = t45 * pkin(5) + pkin(11) * t251 + t29;
t1 = -t100 * t113 + t256 * t104 + t20 * t214;
t2 = t256 * t100 + t104 * t113 - t20 * t213;
t125 = t166 * qJD(6) - t1 * t104 - t100 * t2;
t3 = -t100 * t23 - t104 * t120 - t32 * t213 + t28 * t214;
t4 = -qJD(6) * t15 - t100 * t120 + t104 * t23;
t123 = t163 * qJD(6) - t100 * t4 - t104 * t3;
t38 = -qJD(5) * t149 + qJD(6) * t130 + t75 * t90;
t39 = -t58 * qJD(6) + (t100 * t238 + t104 * t167) * qJD(5);
t122 = qJD(6) * t161 - t100 * t39 - t104 * t38;
t115 = t141 * t105 - t28 * t217 + t233;
t88 = t95 * t215;
t87 = -0.2e1 * t187;
t85 = t95 * t187;
t84 = t93 * t187;
t82 = (-t106 * pkin(3) - pkin(2)) * t97;
t77 = t100 * t217 - t189;
t76 = -t100 * t215 - t190;
t74 = t101 * t214 - t192;
t72 = t143 * qJD(3);
t71 = t142 * qJD(3);
t62 = t101 * t186 - t171;
t61 = t73 * t177;
t51 = -t101 * t252 + t105 * t127;
t42 = t50 * t217;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t43 * t55 + 0.2e1 * t44 * t56 + 0.2e1 * t61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t24 * t33 + 0.2e1 * t246 + 0.2e1 * t61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t120 * t28 + 0.2e1 * t246 + 0.2e1 * t247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t14 * t4 - 0.2e1 * t15 * t3 + 0.2e1 * t247; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t194, -t107 * t229, 0, 0, 0, 0, 0, 0, 0, 0, -t106 * t178 + t73 * t196 + t43 * t232, t102 * t178 + t73 * t195 - t44 * t232 (-t102 * t43 + t106 * t44 + (-t102 * t56 - t106 * t55) * qJD(3)) * t97, -pkin(2) * t178 - t142 * t43 - t143 * t44 + t55 * t72 - t56 * t71, 0, 0, 0, 0, 0, 0, t73 * t127 + t148 * t194 - t23 * t232, t138 * t178 - t24 * t232 - t73 * t68, -t128 * t33 - t158 * t24 + t23 * t259 - t32 * t68, -t23 * t46 + t24 * t47 + t245 + t30 * t33 + (t194 * t82 + t208 * t73) * t97, 0, 0, 0, 0, 0, 0, -t12 * t158 - t127 * t27 + t23 * t59 + t32 * t45, -t120 * t158 - t128 * t28 + t23 * t60 - t251 * t32, t12 * t60 - t120 * t59 - t251 * t27 - t28 * t45, -t27 * t10 - t12 * t25 + t120 * t26 + t23 * t36 - t28 * t9 + t245, 0, 0, 0, 0, 0, 0, t12 * t49 + t14 * t45 + t18 * t27 + t4 * t59, t12 * t50 - t15 * t45 - t17 * t27 + t3 * t59, t14 * t17 - t15 * t18 + t3 * t49 - t4 * t50, -t1 * t15 + t12 * t19 + t14 * t2 + t27 * t6 - t3 * t8 + t4 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t174, 0.2e1 * (-t102 ^ 2 + t106 ^ 2) * t92 * qJD(3), 0.2e1 * t106 * t169, -0.2e1 * t174, -0.2e1 * t102 * t169, 0, -0.2e1 * t92 * pkin(2) * t220 + 0.2e1 * t72 * t232, -0.2e1 * pkin(2) * t204 + 0.2e1 * t71 * t232, 0.2e1 * (-t102 * t72 - t106 * t71 + (t102 * t143 + t106 * t142) * qJD(3)) * t97, -0.2e1 * t142 * t72 + 0.2e1 * t143 * t71, t259 * t250, -0.2e1 * t68 * t86 + 0.2e1 * (-t138 * t127 + t68 * t184) * t97, t232 * t250, -t158 * t126, t232 * t126, 0, 0.2e1 * t82 * t127 + 0.2e1 * t148 * t208 - 0.2e1 * t29 * t232, 0.2e1 * t92 * t102 * pkin(3) * t131 - 0.2e1 * t30 * t232 - 0.2e1 * t82 * t68, -0.2e1 * t128 * t47 - 0.2e1 * t158 * t30 + 0.2e1 * t259 * t29 + 0.2e1 * t46 * t68, 0.2e1 * t179 * t82 - 0.2e1 * t29 * t46 + 0.2e1 * t30 * t47, -0.2e1 * t60 * t251, 0.2e1 * t251 * t59 - 0.2e1 * t60 * t45, 0.2e1 * t127 * t60 - 0.2e1 * t158 * t251, t211, -0.2e1 * t127 * t59 - 0.2e1 * t158 * t45, 0.2e1 * t158 * t127, 0.2e1 * t10 * t158 + 0.2e1 * t127 * t25 + 0.2e1 * t29 * t59 + 0.2e1 * t36 * t45, -0.2e1 * t128 * t26 + 0.2e1 * t158 * t9 - 0.2e1 * t251 * t36 + 0.2e1 * t29 * t60, -0.2e1 * t10 * t60 + 0.2e1 * t25 * t251 - 0.2e1 * t26 * t45 + 0.2e1 * t9 * t59, 0.2e1 * t10 * t25 - 0.2e1 * t26 * t9 + 0.2e1 * t29 * t36, -0.2e1 * t50 * t17, 0.2e1 * t17 * t49 - 0.2e1 * t18 * t50, -0.2e1 * t17 * t59 + 0.2e1 * t45 * t50, 0.2e1 * t49 * t18, -0.2e1 * t18 * t59 - 0.2e1 * t45 * t49, t211, 0.2e1 * t18 * t19 + 0.2e1 * t2 * t59 + 0.2e1 * t45 * t7 + 0.2e1 * t49 * t6, 0.2e1 * t1 * t59 - 0.2e1 * t17 * t19 - 0.2e1 * t45 * t8 + 0.2e1 * t50 * t6, 0.2e1 * t1 * t49 + 0.2e1 * t17 * t7 - 0.2e1 * t18 * t8 - 0.2e1 * t2 * t50, -0.2e1 * t1 * t8 + 0.2e1 * t19 * t6 + 0.2e1 * t2 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t43, -t44, 0, 0, 0, 0, 0, 0, 0, 0, -t23, -t24, 0 (-t23 * t231 + t230 * t24) * pkin(3), 0, 0, 0, 0, 0, 0, -t105 * t23 + t217 * t32, t101 * t23 + t215 * t32, t115, t115 * t90 + t23 * t91, 0, 0, 0, 0, 0, 0 (t218 * t27 - t4) * t105 + (qJD(5) * t14 + t153) * t101 (t216 * t27 - t3) * t105 + (-qJD(5) * t15 - t152) * t101, t163 * t215 + (qJD(6) * t162 + t100 * t3 - t104 * t4) * t101, t14 * t39 - t15 * t38 - t3 * t58 + t4 * t57 + (t215 * t27 + t233) * t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t195, 0, -t196, 0, t72, t71, 0, 0, 0, 0, -t68, 0, -t128, 0, -t29, -t30 (-t128 * t230 + t231 * t68) * pkin(3) (t230 * t30 - t231 * t29) * pkin(3), -t66 * t101 + (t60 * qJD(5) + t263) * t105, t242 + t261, t254, t154, t51, 0, -t29 * t105 + t217 * t36 - t254 * t90 + t91 * t45, t29 * t101 - t128 * t235 + t215 * t36 + t238 * t252 - t251 * t91, t199 * t60 + t202 * t59 - t215 * t25 - t217 * t26 - t235 * t45 - t238 * t251 + t164, t29 * t91 + ((-t101 * t26 - t105 * t25) * qJD(5) + t164) * t90, t50 * t192 + (-t214 * t50 - t237) * t101, -t175 + (-t200 + (t17 + t226) * t101) * t100 + t243, t42 + (t17 + t201) * t105 - t257, t49 * t190 + (t101 * t18 + t215 * t49) * t100 (t18 - t203) * t105 + (-t151 - t227) * t101, t154, t39 * t59 + t45 * t57 + (-t2 + (t100 * t19 + t49 * t90) * qJD(5)) * t105 + (qJD(5) * t7 + t18 * t90 + t156) * t101, t38 * t59 - t45 * t58 + (-t1 + (t104 * t19 + t50 * t90) * qJD(5)) * t105 + (-qJD(5) * t8 - t17 * t90 - t155) * t101, t17 * t57 - t18 * t58 + t38 * t49 - t39 * t50 + t166 * t215 + (qJD(6) * t165 + t1 * t100 - t104 * t2) * t101, -t1 * t58 + t2 * t57 - t38 * t8 + t39 * t7 + (t101 * t6 + t19 * t215) * t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t187, -0.2e1 * t181, 0, t87, 0, 0, t101 * t209, t105 * t209, 0, 0, 0.2e1 * t85 - 0.2e1 * t176, t171 * t260 + 0.2e1 * t186 * t94, 0.2e1 * t101 * t191 + 0.2e1 * t240 * t216, 0.2e1 * t84 + 0.2e1 * t176, -0.2e1 * t100 * t181 + 0.2e1 * t101 * t189, t87, 0.2e1 * t104 * t207 - 0.2e1 * t105 * t39 + 0.2e1 * (t57 + 0.2e1 * t206) * t217, -0.2e1 * t100 * t207 - 0.2e1 * t105 * t38 + 0.2e1 * (-t58 + 0.2e1 * t205) * t217, 0.2e1 * t161 * t215 + 0.2e1 * (qJD(6) * t160 + t100 * t38 - t104 * t39) * t101, 0.2e1 * t187 * t90 ^ 2 - 0.2e1 * t38 * t58 + 0.2e1 * t39 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177, 0, 0, 0, 0, 0, 0, 0, 0, 0, t141 * t101 - t12 * t105 + t28 * t215, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-qJD(5) * t162 - t12) * t105 + (t123 + t221) * t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t127, -t68, 0, t179, 0, 0, 0, 0, 0, 0, t51, -t101 * t128 - t262, t242 - t261, t10 * t105 - t101 * t9 + (-t101 * t25 + t105 * t26) * qJD(5), 0, 0, 0, 0, 0, 0 (-t18 - t203) * t105 + (-t151 + t227) * t101, t42 + (t17 - t201) * t105 + t257, t175 + (t200 + (-t17 + t226) * t101) * t100 + t243 (-qJD(5) * t165 - t6) * t105 + (qJD(5) * t19 + t125) * t101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t122 * t101 + (-t160 * t105 + t240 * t90) * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t84 + 0.2e1 * t85 - 0.2e1 * t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, -t120, 0, 0, 0, 0, 0, 0, 0, 0, t152, t153, t123, -pkin(5) * t12 + pkin(11) * t123; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t251, 0, -t45, t127, t10, t9, 0, 0, t213 * t50 - t239, -t100 * t18 - t237 + (-t100 * t50 - t104 * t49) * qJD(6), t151, t214 * t49 - t236, -t150, 0, -pkin(5) * t18 - pkin(11) * t151 + t155, pkin(5) * t17 + pkin(11) * t150 + t156 (-t239 - t236 + (t100 * t49 + t104 * t50) * qJD(6)) * pkin(11) + t125, -pkin(5) * t6 + pkin(11) * t125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t215, 0, -t217, 0, -t199, t202, 0, 0, -t62, t188 * t260 - t198 + t88, t77, t62, t75, 0 (pkin(11) * t222 + (-pkin(5) * t104 + t100 * t90) * t101) * qJD(6) + (t100 * t168 - t205) * qJD(5) (t225 * t90 + t149) * qJD(6) + (t104 * t168 + t206) * qJD(5), t122, -pkin(5) * t199 + pkin(11) * t122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t217, -t215, 0, 0, 0, 0, 0, 0, 0, 0, -t75, t77, t88 + t198 (-t249 + (t93 + t95) * t248) * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t188, -0.2e1 * t186, 0, -0.2e1 * t188, 0, 0, t100 * t210, t104 * t210, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t4, t3, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, 0, -t18, t45, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74, 0, t76, t217, t39, t38, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76, t74, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t213, 0, -t214, 0, -pkin(11) * t213, pkin(11) * t214, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;
