% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPRRRR9_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR9_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR9_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRR9_inertiaDJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:25:19
% EndTime: 2019-03-09 07:25:37
% DurationCPUTime: 7.06s
% Computational Cost: add. (7591->433), mult. (16796->751), div. (0->0), fcn. (15143->8), ass. (0->199)
t126 = cos(qJ(3));
t123 = sin(qJ(4));
t125 = cos(qJ(4));
t251 = sin(qJ(5));
t216 = t251 * t125;
t253 = cos(qJ(5));
t264 = t253 * t123 + t216;
t269 = t264 * t126;
t203 = t253 * qJD(5);
t268 = t253 * qJD(4) + t203;
t217 = t253 * t125;
t254 = -pkin(9) - pkin(8);
t190 = t254 * t251;
t88 = t123 * t190;
t263 = t254 * t217 - t88;
t267 = t263 * qJD(5);
t201 = t251 * qJD(5);
t202 = t251 * qJD(4);
t265 = t202 + t201;
t152 = t265 * t126;
t124 = sin(qJ(3));
t206 = qJD(3) * t251;
t184 = t124 * t206;
t189 = t126 * t217;
t258 = qJD(4) + qJD(5);
t246 = t258 * t189;
t158 = t125 * t184 - t246;
t207 = qJD(3) * t253;
t182 = t124 * t207;
t137 = (t182 + t152) * t123 + t158;
t191 = t254 * t253;
t61 = t123 * t191 + t254 * t216;
t249 = pkin(3) * t126;
t177 = pkin(8) * t124 + t249;
t262 = t125 * t177;
t71 = t264 * t124;
t114 = t251 * t123;
t260 = t114 - t217;
t72 = t260 * t124;
t261 = t268 * t123;
t178 = t254 * t126 + qJ(2);
t250 = pkin(3) * t124;
t259 = t178 + t250;
t118 = t123 ^ 2;
t120 = t125 ^ 2;
t238 = t118 - t120;
t197 = qJD(4) * t238;
t119 = t124 ^ 2;
t121 = t126 ^ 2;
t196 = (t119 - t121) * qJD(3);
t179 = t126 * t201;
t180 = t126 * t202;
t257 = t180 + t179 + t182;
t256 = t265 * t123 - t268 * t125;
t255 = 2 * qJD(2);
t252 = cos(qJ(6));
t248 = pkin(8) * t126;
t247 = t125 * pkin(3);
t127 = -pkin(1) - pkin(7);
t244 = t123 * t127;
t200 = pkin(4) - t244;
t143 = t178 * t125 + (t200 + t247) * t124;
t49 = t251 * t143;
t245 = t123 * t126;
t243 = t124 * t127;
t102 = t125 * t243;
t176 = -t248 + t250;
t166 = qJ(2) + t176;
t66 = t123 * t166 + t102;
t60 = -pkin(9) * t245 + t66;
t28 = t253 * t60 + t49;
t242 = t126 * t127;
t229 = t124 * qJD(3);
t112 = t127 * t229;
t232 = qJD(4) * t126;
t211 = t125 * t232;
t240 = pkin(4) * t211 + t112;
t237 = t118 + t120;
t235 = t119 + t121;
t234 = qJD(4) * t123;
t233 = qJD(4) * t125;
t122 = sin(qJ(6));
t231 = qJD(6) * t122;
t230 = t123 * qJD(2);
t228 = t125 * qJD(2);
t116 = t126 * qJD(3);
t227 = -0.2e1 * pkin(3) * qJD(4);
t226 = t253 * pkin(4);
t225 = t251 * pkin(4);
t224 = pkin(5) * t116;
t223 = pkin(4) * t234;
t222 = pkin(5) * t231;
t221 = t123 * t243;
t220 = t123 * t242;
t219 = t125 * t242;
t115 = -t125 * pkin(4) - pkin(3);
t215 = t123 * t229;
t214 = t125 * t229;
t213 = qJD(4) * t121 * t127;
t212 = t123 * t232;
t210 = t123 * t233;
t209 = t124 * t116;
t208 = t127 * t116;
t205 = qJD(6) * t252;
t199 = -0.2e1 * t222;
t198 = t126 * t237;
t86 = pkin(4) * t245 - t242;
t105 = 0.2e1 * t209;
t195 = pkin(4) * t203;
t194 = pkin(4) * t201;
t193 = pkin(5) * t205;
t192 = t265 * t125 + t261;
t188 = t123 * t214;
t187 = t121 * t210;
t186 = t226 + pkin(5);
t185 = t252 * t251;
t183 = t126 * t207;
t181 = t126 * t206;
t50 = t253 * t143;
t27 = -t251 * t60 + t50;
t175 = t252 * t269;
t150 = -t125 * t166 + t221;
t173 = t123 * t66 - t125 * t150;
t172 = -t123 * t150 - t125 * t66;
t169 = qJD(4) * t191;
t168 = qJD(4) * t190;
t167 = t123 * t180;
t165 = -t254 * t124 + t249;
t135 = t228 + (-t259 * t123 - t102) * qJD(4) + (t165 * t125 + t200 * t126) * qJD(3);
t136 = t230 + (t259 * t125 - t221) * qJD(4) + (t165 * t123 + t219) * qJD(3);
t130 = t253 * t135 - t251 * t136;
t129 = -qJD(5) * t49 - t60 * t203 + t130;
t35 = -t123 * t184 + t257 * t125 + t261 * t126;
t128 = t35 * pkin(10) + t129 + t224;
t8 = -qJD(5) * t50 - t251 * t135 - t253 * t136 + t60 * t201;
t134 = t137 * pkin(10) - t8;
t73 = -t126 * t114 + t189;
t154 = t124 * pkin(5) - t73 * pkin(10) + t27;
t149 = t252 * t154;
t21 = -pkin(10) * t269 + t28;
t1 = -qJD(6) * t149 - t122 * t128 - t252 * t134 + t21 * t231;
t44 = -t122 * t71 - t252 * t72;
t164 = t123 * t177;
t163 = t122 * t260;
t162 = t252 * t186;
t161 = t252 * t260;
t45 = -t122 * t269 + t252 * t73;
t37 = -t61 * qJD(5) - t123 * t169 - t125 * t168;
t151 = t122 * t154;
t39 = -t230 + t150 * qJD(4) + (-t164 - t219) * qJD(3);
t40 = t228 - t66 * qJD(4) + (-t220 + t262) * qJD(3);
t146 = -t173 * qJD(4) - t123 * t40 - t125 * t39;
t51 = -t252 * t195 - qJD(6) * t162 + (t251 * qJD(6) + t201) * t122 * pkin(4);
t145 = t123 * t152 - t246;
t144 = -pkin(10) * t264 + t61;
t11 = t252 * t21 + t151;
t142 = t122 * t144;
t141 = -t192 * pkin(10) - t37;
t139 = t252 * t144;
t138 = (qJD(5) + qJD(6)) * (-t122 * t253 - t185) * pkin(4);
t133 = -t122 * t134 + t252 * t128;
t132 = pkin(10) * t256 - t123 * t168 + t125 * t169 + t267;
t131 = -qJD(6) * t151 - t21 * t205 + t133;
t117 = qJ(2) * t255;
t81 = -t211 + t215;
t80 = t123 * t116 + t124 * t233;
t79 = -t212 - t214;
t78 = -t125 * t116 + t124 * t234;
t76 = pkin(4) * t185 + t122 * t186;
t75 = -t122 * t225 + t162;
t70 = pkin(5) * t260 + t115;
t64 = -pkin(4) * t215 + t240;
t63 = t126 * t197 + t188;
t59 = t252 * t264 - t163;
t58 = t122 * t264 + t161;
t57 = pkin(5) * t269 + t86;
t52 = t138 - t222;
t48 = t192 * pkin(5) + t223;
t46 = -pkin(10) * t260 - t263;
t43 = t122 * t73 + t175;
t42 = t122 * t72 - t252 * t71;
t38 = t267 + (t125 * t191 - t88) * qJD(4);
t36 = -qJD(3) * t269 + t258 * t72;
t34 = t123 * t181 - t125 * t183 + t258 * t71;
t24 = -t158 * pkin(5) + (-pkin(4) * t229 - t257 * pkin(5)) * t123 + t240;
t23 = t252 * t46 + t142;
t22 = -t122 * t46 + t139;
t17 = -qJD(6) * t163 - t122 * t256 + t252 * t192 + t205 * t264;
t16 = qJD(6) * t161 + t122 * t192 + t231 * t264 + t252 * t256;
t15 = t45 * qJD(6) - t122 * t35 - t252 * t137;
t14 = -t44 * qJD(6) + t122 * t34 + t252 * t36;
t13 = qJD(6) * t175 - t122 * t137 + t73 * t231 + t252 * t35;
t12 = -t122 * t36 + t71 * t205 - t72 * t231 + t252 * t34;
t10 = -t122 * t21 + t149;
t9 = -t28 * qJD(5) + t130;
t7 = -qJD(6) * t142 - t122 * t141 + t252 * t132 - t46 * t205;
t6 = -qJD(6) * t139 - t122 * t132 - t252 * t141 + t46 * t231;
t2 = -qJD(6) * t11 + t133;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t255, t117, -0.2e1 * t209, 0.2e1 * t196, 0, t105, 0, 0, 0.2e1 * qJ(2) * t116 + 0.2e1 * qJD(2) * t124, -0.2e1 * qJ(2) * t229 + 0.2e1 * qJD(2) * t126, 0, t117, -0.2e1 * t120 * t209 - 0.2e1 * t187, 0.2e1 * t121 * t197 + 0.4e1 * t126 * t188, -0.2e1 * t124 * t212 - 0.2e1 * t125 * t196, -0.2e1 * t118 * t209 + 0.2e1 * t187, 0.2e1 * t123 * t196 - 0.2e1 * t124 * t211, t105, -0.2e1 * t125 * t213 + 0.2e1 * t40 * t124 + 0.2e1 * (-t150 + 0.2e1 * t221) * t116, 0.2e1 * t123 * t213 + 0.2e1 * t39 * t124 + 0.2e1 * (-t66 + 0.2e1 * t102) * t116, 0.2e1 * t173 * t229 + 0.2e1 * (t172 * qJD(4) + t123 * t39 - t125 * t40) * t126, -0.2e1 * t127 ^ 2 * t209 - 0.2e1 * t150 * t40 - 0.2e1 * t66 * t39, -0.2e1 * t73 * t35, 0.2e1 * t137 * t73 + 0.2e1 * t269 * t35, 0.2e1 * t73 * t116 - 0.2e1 * t124 * t35, -0.2e1 * t269 * t137, 0.2e1 * t145 * t124 + 0.2e1 * (t119 * t264 - t126 * t269) * qJD(3), t105, 0.2e1 * t9 * t124 + 0.2e1 * t64 * t269 + 0.2e1 * t86 * (-t123 * t179 - t167 + t246) + 0.2e1 * (t27 * t126 - t71 * t86) * qJD(3), -0.2e1 * t28 * t116 + 0.2e1 * t124 * t8 - 0.2e1 * t35 * t86 + 0.2e1 * t64 * t73, 0.2e1 * t137 * t28 + 0.2e1 * t269 * t8 + 0.2e1 * t27 * t35 - 0.2e1 * t9 * t73, 0.2e1 * t27 * t9 - 0.2e1 * t28 * t8 + 0.2e1 * t64 * t86, -0.2e1 * t45 * t13, 0.2e1 * t13 * t43 - 0.2e1 * t15 * t45, 0.2e1 * t45 * t116 - 0.2e1 * t124 * t13, 0.2e1 * t43 * t15, -0.2e1 * t116 * t43 - 0.2e1 * t124 * t15, t105, 0.2e1 * t10 * t116 + 0.2e1 * t124 * t2 + 0.2e1 * t15 * t57 + 0.2e1 * t24 * t43, 0.2e1 * t1 * t124 - 0.2e1 * t11 * t116 - 0.2e1 * t13 * t57 + 0.2e1 * t24 * t45, 0.2e1 * t1 * t43 + 0.2e1 * t10 * t13 - 0.2e1 * t11 * t15 - 0.2e1 * t2 * t45, -0.2e1 * t1 * t11 + 0.2e1 * t10 * t2 + 0.2e1 * t24 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t235 * t233, t235 * t234, 0, -t172 * t116 + (t146 - 0.2e1 * t208) * t124, 0, 0, 0, 0, 0, 0, t36 * t124 + t145 * t126 + (0.2e1 * t269 * t124 - t71 * t126) * qJD(3), t124 * t34 + t126 * t35 + (t124 * t73 + t126 * t72) * qJD(3), -t137 * t72 + t269 * t34 - t71 * t35 - t36 * t73, -t126 * t64 + t86 * t229 + t27 * t36 - t28 * t34 - t71 * t9 + t72 * t8, 0, 0, 0, 0, 0, 0, t124 * t14 - t126 * t15 + (t124 * t43 + t126 * t42) * qJD(3), t12 * t124 + t126 * t13 + (t124 * t45 - t126 * t44) * qJD(3), t12 * t43 + t13 * t42 - t14 * t45 - t15 * t44, -t1 * t44 + t10 * t14 - t11 * t12 - t126 * t24 + t2 * t42 + t229 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-0.1e1 + t237) * t105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t34 * t72 - 0.2e1 * t36 * t71 - 0.2e1 * t209, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t12 * t44 + 0.2e1 * t14 * t42 - 0.2e1 * t209; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t229, 0, -t116, 0, -t112, -t208, 0, 0, -t63, -0.4e1 * t126 * t210 + t238 * t229, t80, t63, -t78, 0 (-t220 - t262) * qJD(4) + (t176 * t123 - t102) * qJD(3) (t164 - t219) * qJD(4) + (-t125 * t248 + (t244 + t247) * t124) * qJD(3), t146, -pkin(3) * t112 + pkin(8) * t146, -t256 * t73 - t264 * t35, t137 * t264 - t73 * t192 + t256 * t269 + t260 * t35, t116 * t264 - t124 * t256, -t137 * t260 + t192 * t269, -t116 * t260 - t192 * t124, 0, -t115 * t137 + t61 * t116 + t38 * t124 + t86 * t192 + t223 * t269 + t64 * t260, -t115 * t35 + t116 * t263 + t37 * t124 + t73 * t223 - t256 * t86 + t264 * t64, -t137 * t263 - t28 * t192 + t256 * t27 + t260 * t8 - t264 * t9 + t269 * t37 + t61 * t35 - t38 * t73, t115 * t64 + t86 * t223 + t263 * t8 + t27 * t38 - t28 * t37 + t61 * t9, -t13 * t59 - t16 * t45, t13 * t58 - t15 * t59 + t16 * t43 - t17 * t45, t59 * t116 - t124 * t16, t15 * t58 + t17 * t43, -t116 * t58 - t124 * t17, 0, t116 * t22 + t124 * t7 + t15 * t70 + t17 * t57 + t24 * t58 + t43 * t48, -t116 * t23 + t124 * t6 - t13 * t70 - t16 * t57 + t24 * t59 + t45 * t48, t1 * t58 + t10 * t16 - t11 * t17 + t13 * t22 - t15 * t23 - t2 * t59 + t43 * t6 - t45 * t7, -t1 * t23 + t10 * t7 - t11 * t6 + t2 * t22 + t24 * t70 + t48 * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t229, -t116, 0, 0, 0, 0, 0, 0, 0, 0, t79, t81, qJD(3) * t198 (pkin(8) * t198 - t250) * qJD(3), 0, 0, 0, 0, 0, 0, -t126 * t192 + t229 * t260, t126 * t256 + t229 * t264, t192 * t72 - t256 * t71 + t260 * t34 - t264 * t36, -pkin(4) * t212 + t115 * t229 + t263 * t34 + t36 * t61 + t37 * t72 - t38 * t71, 0, 0, 0, 0, 0, 0, -t126 * t17 + t229 * t58, t126 * t16 + t229 * t59, t12 * t58 - t14 * t59 + t16 * t42 - t17 * t44, -t12 * t23 - t126 * t48 + t14 * t22 + t229 * t70 + t42 * t7 - t44 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t210, -0.2e1 * t197, 0, -0.2e1 * t210, 0, 0, t123 * t227, t125 * t227, 0, 0, -0.2e1 * t264 * t256, -0.2e1 * t192 * t264 + 0.2e1 * t256 * t260, 0, 0.2e1 * t260 * t192, 0, 0, 0.2e1 * t115 * t192 + 0.2e1 * t223 * t260, -0.2e1 * t115 * t256 + 0.2e1 * t223 * t264, 0.2e1 * t192 * t263 + 0.2e1 * t256 * t61 + 0.2e1 * t260 * t37 - 0.2e1 * t264 * t38, 0.2e1 * t115 * t223 + 0.2e1 * t263 * t37 + 0.2e1 * t38 * t61, -0.2e1 * t59 * t16, 0.2e1 * t16 * t58 - 0.2e1 * t17 * t59, 0, 0.2e1 * t58 * t17, 0, 0, 0.2e1 * t17 * t70 + 0.2e1 * t48 * t58, -0.2e1 * t16 * t70 + 0.2e1 * t48 * t59, 0.2e1 * t16 * t22 - 0.2e1 * t17 * t23 + 0.2e1 * t58 * t6 - 0.2e1 * t59 * t7, 0.2e1 * t22 * t7 - 0.2e1 * t23 * t6 + 0.2e1 * t48 * t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t79, 0, t81, t116, t40, t39, 0, 0, 0, 0, -t35, 0, t137, t116, pkin(4) * t183 - t124 * t194 + t129 (-t124 * t203 - t181) * pkin(4) + t8 (t251 * (t123 * t182 + t158 + t167) + t35 * t253 + (-t253 * t269 + (t245 * t251 + t73) * t251) * qJD(5)) * pkin(4) (-t251 * t8 + t253 * t9 + (-t251 * t27 + t253 * t28) * qJD(5)) * pkin(4), 0, 0, -t13, 0, -t15, t116, t116 * t75 + t52 * t124 + t131, -t116 * t76 + t124 * t51 + t1, t13 * t75 - t15 * t76 + t43 * t51 - t45 * t52, -t1 * t76 + t10 * t52 - t11 * t51 + t2 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t80, t78, 0, 0, 0, 0, 0, 0, 0, 0, t36, t34, 0 (-t251 * t34 + t253 * t36 + (t251 * t71 - t253 * t72) * qJD(5)) * pkin(4), 0, 0, 0, 0, 0, 0, t14, t12, 0, -t12 * t76 + t14 * t75 + t42 * t52 - t44 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, 0, -t234, 0, -pkin(8) * t233, pkin(8) * t234, 0, 0, 0, 0, -t256, 0, -t192, 0, t38, t37, -t192 * t225 + t194 * t264 - t195 * t260 + t226 * t256 (-t251 * t37 + t253 * t38 + (-t251 * t61 - t253 * t263) * qJD(5)) * pkin(4), 0, 0, -t16, 0, -t17, 0, t7, t6, t16 * t75 - t17 * t76 + t51 * t58 - t52 * t59, t22 * t52 - t23 * t51 - t6 * t76 + t7 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t194, -0.2e1 * t195, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t52, 0.2e1 * t51, 0, -0.2e1 * t51 * t76 + 0.2e1 * t52 * t75; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t35, 0, t137, t116, t9, t8, 0, 0, 0, 0, -t13, 0, -t15, t116, -t124 * t222 + t252 * t224 + t131 (-t116 * t122 - t124 * t205) * pkin(5) + t1 (t252 * t13 - t122 * t15 + (t122 * t45 - t252 * t43) * qJD(6)) * pkin(5) (t252 * t2 - t1 * t122 + (-t10 * t122 + t252 * t11) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t36, t34, 0, 0, 0, 0, 0, 0, 0, 0, t14, t12, 0 (t252 * t14 - t12 * t122 + (-t122 * t42 + t252 * t44) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t256, 0, -t192, 0, t38, t37, 0, 0, 0, 0, -t16, 0, -t17, 0, t7, t6 (t252 * t16 - t122 * t17 + (t122 * t59 - t252 * t58) * qJD(6)) * pkin(5) (t252 * t7 - t122 * t6 + (-t122 * t22 + t252 * t23) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t194, -t195, 0, 0, 0, 0, 0, 0, 0, 0, t138 + t199, -t193 + t51, 0 (t252 * t52 - t122 * t51 + (-t122 * t75 + t252 * t76) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t199, -0.2e1 * t193, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t13, 0, -t15, t116, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t14, t12, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t16, 0, -t17, 0, t7, t6, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t52, t51, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t222, -t193, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
