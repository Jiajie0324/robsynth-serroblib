% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRPRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 13:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPRRR5_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR5_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR5_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR5_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 13:46:48
% EndTime: 2019-03-09 13:47:16
% DurationCPUTime: 11.18s
% Computational Cost: add. (16721->549), mult. (45076->989), div. (0->0), fcn. (45597->12), ass. (0->269)
t140 = sin(pkin(6));
t135 = t140 ^ 2;
t143 = sin(qJ(2));
t146 = cos(qJ(2));
t320 = sin(pkin(12));
t321 = cos(pkin(12));
t229 = t143 * t321 + t146 * t320;
t349 = qJD(2) * t229;
t211 = t135 * t349;
t369 = t140 * t349;
t142 = sin(qJ(4));
t145 = cos(qJ(4));
t264 = t320 * t143;
t265 = t321 * t146;
t228 = t265 - t264;
t346 = qJD(4) * t228;
t368 = (t142 * t349 - t145 * t346) * t140;
t220 = t145 * t229;
t322 = cos(pkin(6));
t266 = t322 * t142;
t184 = t140 * t220 + t266;
t291 = pkin(1) * t322;
t254 = t146 * t291;
t331 = pkin(8) + qJ(3);
t271 = t140 * t331;
t218 = -t143 * t271 + t254;
t196 = pkin(2) * t322 + t218;
t255 = t143 * t291;
t315 = t140 * t146;
t219 = t315 * t331 + t255;
t71 = t196 * t321 - t219 * t320;
t57 = -pkin(3) * t322 - t71;
t223 = t140 * t229;
t88 = t142 * t223 - t145 * t322;
t156 = t88 * pkin(4) - pkin(10) * t184 + t57;
t72 = t196 * t320 + t219 * t321;
t165 = pkin(9) * t322 + t72;
t309 = qJD(2) * t140;
t117 = t264 * t309;
t231 = t265 * t309 - t117;
t308 = qJD(2) * t143;
t277 = t140 * t308;
t260 = pkin(2) * t277;
t364 = -pkin(3) * t369 + pkin(9) * t231 + qJD(4) * t165 - t260;
t306 = qJD(3) * t140;
t182 = qJD(2) * t218 + t146 * t306;
t183 = -t143 * t306 + (-t146 * t271 - t255) * qJD(2);
t163 = t182 * t321 + t183 * t320;
t359 = t140 * t228;
t169 = -t140 * pkin(1) - pkin(2) * t315 - pkin(3) * t359 - pkin(9) * t223;
t365 = -qJD(4) * t169 - t163;
t20 = t142 * t364 + t145 * t365;
t367 = -pkin(10) * t369 - qJD(5) * t156 + t20;
t37 = t142 * t169 + t145 * t165;
t154 = -pkin(10) * t359 + t37;
t263 = t322 * qJD(4);
t203 = t263 + t231;
t209 = qJD(4) * t223;
t94 = t142 * t209;
t344 = -t145 * t203 + t94;
t51 = t182 * t320 - t321 * t183;
t70 = t142 * t203 + t145 * t209;
t366 = -t70 * pkin(4) - pkin(10) * t344 + qJD(5) * t154 - t51;
t141 = sin(qJ(5));
t144 = cos(qJ(5));
t177 = qJD(5) * t184;
t213 = qJD(5) * t228;
t185 = (t177 - t369) * t144 + (-t140 * t213 - t344) * t141;
t200 = t184 * t141 + t144 * t359;
t193 = qJD(5) * t200;
t356 = t141 * t193 - t185 * t144;
t347 = qJD(4) * t200;
t363 = -t142 * t347 + t145 * t185;
t348 = qJD(4) * t184;
t362 = -t142 * t348 - t145 * t344;
t361 = -0.4e1 * t142;
t360 = t143 * pkin(2);
t204 = t144 * t213;
t312 = t144 * t145;
t80 = t141 * t177;
t357 = t140 * (-t204 + (t141 * t229 + t265 * t312) * qJD(2)) + (-t94 + (-t117 + t263) * t145) * t144 - t80;
t355 = t141 * t185 + t144 * t193;
t339 = cos(qJ(6));
t269 = t339 * qJD(6);
t353 = t339 * qJD(5) + t269;
t302 = qJD(5) * t144;
t304 = qJD(4) * t145;
t230 = t141 * t304 + t142 * t302;
t284 = t144 * t304;
t303 = qJD(5) * t141;
t103 = t142 * t303 - t284;
t352 = t141 * t70 + t88 * t302;
t351 = -t144 * t70 + t88 * t303;
t350 = qJD(2) * t135;
t136 = t141 ^ 2;
t138 = t144 ^ 2;
t262 = qJD(5) * (t136 - t138);
t345 = qJD(5) + qJD(6);
t301 = qJD(5) * t145;
t280 = t141 * t301;
t305 = qJD(4) * t144;
t104 = t142 * t305 + t280;
t130 = pkin(2) * t320 + pkin(9);
t131 = -pkin(2) * t321 - pkin(3);
t333 = t145 * pkin(4);
t232 = t131 - t333;
t334 = t142 * pkin(10);
t225 = t232 - t334;
t212 = t144 * t225;
t335 = pkin(10) * t145;
t337 = pkin(4) * t142;
t245 = -t335 + t337;
t234 = t245 * t141;
t58 = -qJD(4) * t234 - qJD(5) * t212 + t104 * t130;
t341 = -pkin(11) - pkin(10);
t343 = t142 * t341 + t232;
t342 = 0.2e1 * t140;
t340 = t70 * pkin(5);
t338 = sin(qJ(6));
t336 = pkin(4) * t144;
t273 = qJD(4) * t338;
t248 = t145 * t273;
t274 = qJD(4) * t339;
t249 = t145 * t274;
t289 = t338 * t141;
t253 = t142 * t289;
t65 = t141 * t249 + (t142 * t353 + t248) * t144 - t345 * t253;
t114 = t141 * t339 + t144 * t338;
t99 = t114 * t142;
t332 = t99 * t65;
t290 = t339 * t144;
t100 = t142 * t290 - t253;
t161 = -t140 * t204 + t141 * t369 - t144 * t344 - t80;
t189 = t338 * t200;
t73 = t144 * t266 + (-t141 * t228 + t144 * t220) * t140;
t13 = -qJD(6) * t189 + t161 * t338 + t185 * t339 + t269 * t73;
t190 = t339 * t200;
t38 = t338 * t73 + t190;
t87 = t345 * t114;
t64 = t141 * t248 + t142 * t87 - t144 * t249;
t330 = -t100 * t13 + t64 * t38;
t19 = t141 * t156 + t144 * t154;
t329 = -t65 * t88 - t99 * t70;
t113 = t289 - t290;
t328 = -t100 * t87 + t64 * t113;
t327 = -t142 * t70 - t88 * t304;
t326 = t100 * t64;
t318 = t130 * t141;
t317 = t130 * t142;
t316 = t130 * t145;
t314 = t141 * t142;
t313 = t142 * t144;
t116 = t130 * t312;
t85 = t141 * t225 + t116;
t137 = t142 ^ 2;
t310 = -t145 ^ 2 + t137;
t307 = qJD(2) * t146;
t134 = qJD(4) * t142;
t42 = 0.2e1 * t88 * t70;
t300 = -0.2e1 * pkin(4) * qJD(5);
t299 = 0.2e1 * t322;
t298 = 0.2e1 * qJD(4) * t131;
t297 = pkin(5) * t303;
t294 = t141 * t316;
t293 = t73 * t302;
t292 = -t146 * pkin(2) - pkin(1);
t288 = t135 * t307;
t287 = t136 * t304;
t285 = t130 * t134;
t283 = t130 * t304;
t282 = qJD(5) * t130 * t137;
t278 = t144 * t301;
t276 = t141 * t302;
t275 = t142 * t304;
t272 = qJD(6) * t338;
t268 = -pkin(5) - t318;
t12 = qJD(6) * t190 - t161 * t339 + t185 * t338 + t272 * t73;
t39 = t339 * t73 - t189;
t267 = t12 * t145 + t39 * t134;
t261 = t310 * qJD(4);
t259 = pkin(5) * t269;
t258 = pkin(5) * t272;
t257 = t341 * t339;
t256 = t341 * t338;
t252 = t141 * t284;
t251 = t137 * t276;
t250 = t143 * t288;
t247 = t322 * t309;
t246 = -t333 - t334;
t244 = -t12 * t99 + t39 * t65;
t6 = t141 * t366 + t144 * t367;
t7 = t141 * t367 - t144 * t366;
t243 = -t7 * t141 - t6 * t144;
t242 = -t100 * t70 + t64 * t88;
t86 = (qJD(5) * t338 + t272) * t141 - t353 * t144;
t241 = -t114 * t65 + t86 * t99;
t84 = t212 - t294;
t240 = -t141 * t85 - t144 * t84;
t239 = t141 * t84 - t144 * t85;
t21 = t142 * t365 - t145 * t364;
t238 = -t21 * t142 - t20 * t145;
t237 = t141 * t257;
t236 = t141 * t256;
t235 = t13 * t145 - t134 * t38;
t40 = t134 * t88 - t145 * t70;
t233 = t113 * t134 - t145 * t87;
t147 = -pkin(11) * t161 + t340 + t7;
t15 = -pkin(11) * t200 + t19;
t18 = -t141 * t154 + t144 * t156;
t151 = t88 * pkin(5) - t73 * pkin(11) + t18;
t150 = t339 * t151;
t152 = -pkin(11) * t185 - t6;
t1 = -qJD(6) * t150 - t338 * t147 + t15 * t272 - t339 * t152;
t166 = (-t141 * t343 - t116) * qJD(5) + (t341 * t312 + (-t268 + t336) * t142) * qJD(4);
t172 = -pkin(11) * t230 - t58;
t176 = t144 * t343 + t268 * t145;
t174 = t339 * t176;
t79 = -pkin(11) * t314 + t85;
t22 = -qJD(6) * t174 - t338 * t166 - t339 * t172 + t272 * t79;
t227 = -pkin(8) * t315 - t255;
t226 = t143 * t140 * pkin(8) - t254;
t224 = t230 * t73;
t123 = t341 * t144;
t91 = -t123 * t339 + t236;
t210 = t228 * t350;
t201 = (-t19 * t141 - t18 * t144) * qJD(5) + t243;
t59 = -t85 * qJD(5) + (t130 * t314 + t144 * t245) * qJD(4);
t199 = qJD(5) * t240 - t141 * t59 - t144 * t58;
t198 = -t103 * t88 + t313 * t70;
t197 = -t230 * t88 - t314 * t70;
t188 = t145 * t347;
t175 = t142 * t356 - t144 * t188;
t173 = t338 * t176;
t46 = t339 * t79 + t173;
t171 = t339 * t166 - t172 * t338;
t55 = t142 * t165;
t32 = pkin(4) * t359 - t145 * t169 + t55;
t17 = -pkin(4) * t369 - t21;
t160 = t141 * t161;
t159 = t142 * t161;
t158 = t161 * t144;
t157 = t73 * t134 - t145 * t161;
t149 = t338 * t151;
t2 = -qJD(6) * t149 + t339 * t147 - t15 * t269 - t152 * t338;
t133 = -pkin(5) * t144 - pkin(4);
t127 = t138 * t304;
t125 = -0.2e1 * t275;
t121 = t138 * t275;
t119 = t136 * t275;
t115 = t292 * t140;
t106 = t134 * t141 - t278;
t102 = (pkin(5) * t141 + t130) * t142;
t98 = t227 * qJD(2);
t97 = t226 * qJD(2);
t92 = t142 * t262 - t252;
t90 = t123 * t338 + t237;
t89 = pkin(5) * t230 + t283;
t75 = (t142 * t346 + t145 * t349) * t140;
t74 = t114 * t134 + t145 * t86;
t68 = -t91 * qJD(6) + (t144 * t257 - t236) * qJD(5);
t67 = -t123 * t272 - t237 * t345 - t256 * t302;
t45 = -t338 * t79 + t174;
t36 = -t55 + t145 * (-pkin(3) * t228 - pkin(9) * t229 + t292) * t140;
t24 = pkin(5) * t200 + t32;
t23 = -qJD(6) * t46 + t171;
t11 = pkin(5) * t185 + t17;
t9 = t15 * t339 + t149;
t8 = -t15 * t338 + t150;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t250, 0.2e1 * (-t143 ^ 2 + t146 ^ 2) * t350, 0.2e1 * t146 * t247, -0.2e1 * t250, -0.2e1 * t143 * t247, 0, -0.2e1 * pkin(1) * t135 * t308 + 0.2e1 * t322 * t98, -0.2e1 * pkin(1) * t288 + 0.2e1 * t322 * t97 (-t143 * t98 - t146 * t97 + (t143 * t227 + t146 * t226) * qJD(2)) * t342, -0.2e1 * t226 * t98 + 0.2e1 * t227 * t97, 0.2e1 * t231 * t223, -0.2e1 * t211 * t229 + 0.2e1 * t231 * t359, t231 * t299, -0.2e1 * t228 * t211, -t369 * t299, 0, 0.2e1 * t115 * t369 - 0.2e1 * t210 * t360 - 0.2e1 * t322 * t51, 0.2e1 * t115 * t231 - 0.2e1 * t163 * t322 + 0.2e1 * t211 * t360, 0.2e1 * t163 * t359 + 0.2e1 * t223 * t51 - 0.2e1 * t231 * t71 - 0.2e1 * t369 * t72, 0.2e1 * t115 * t260 + 0.2e1 * t163 * t72 - 0.2e1 * t71 * t51, -0.2e1 * t184 * t344, -0.2e1 * t184 * t70 + 0.2e1 * t344 * t88, 0.2e1 * t184 * t369 + 0.2e1 * t344 * t359, t42 (t228 * t70 - t349 * t88) * t342, -0.2e1 * t229 * t210, -0.2e1 * t21 * t359 + 0.2e1 * t36 * t369 + 0.2e1 * t51 * t88 + 0.2e1 * t57 * t70, 0.2e1 * t184 * t51 - 0.2e1 * t20 * t359 - 0.2e1 * t344 * t57 - 0.2e1 * t369 * t37, -0.2e1 * t184 * t21 + 0.2e1 * t20 * t88 + 0.2e1 * t344 * t36 - 0.2e1 * t37 * t70, -0.2e1 * t20 * t37 + 0.2e1 * t21 * t36 + 0.2e1 * t51 * t57, 0.2e1 * t73 * t161, -0.2e1 * t161 * t200 - 0.2e1 * t185 * t73, 0.2e1 * t357 * t88 + 0.2e1 * t73 * t70, 0.2e1 * t200 * t185, -0.2e1 * t185 * t88 - 0.2e1 * t200 * t70, t42, 0.2e1 * t17 * t200 + 0.2e1 * t18 * t70 + 0.2e1 * t185 * t32 + 0.2e1 * t7 * t88, 0.2e1 * t161 * t32 + 0.2e1 * t17 * t73 - 0.2e1 * t19 * t70 + 0.2e1 * t6 * t88, -0.2e1 * t161 * t18 - 0.2e1 * t185 * t19 + 0.2e1 * t200 * t6 - 0.2e1 * t7 * t73, 0.2e1 * t17 * t32 + 0.2e1 * t18 * t7 - 0.2e1 * t19 * t6, -0.2e1 * t39 * t12, 0.2e1 * t12 * t38 - 0.2e1 * t13 * t39, -0.2e1 * t12 * t88 + 0.2e1 * t39 * t70, 0.2e1 * t38 * t13, -0.2e1 * t13 * t88 - 0.2e1 * t38 * t70, t42, 0.2e1 * t11 * t38 + 0.2e1 * t13 * t24 + 0.2e1 * t2 * t88 + 0.2e1 * t70 * t8, 0.2e1 * t1 * t88 + 0.2e1 * t11 * t39 - 0.2e1 * t12 * t24 - 0.2e1 * t70 * t9, 0.2e1 * t1 * t38 + 0.2e1 * t12 * t8 - 0.2e1 * t13 * t9 - 0.2e1 * t2 * t39, -0.2e1 * t1 * t9 + 0.2e1 * t11 * t24 + 0.2e1 * t2 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140 * t307, 0, -t277, 0, t98, t97, 0, 0, 0, 0, t231, 0, -t369, 0, -t51, -t163 (t321 * t117 + (-t146 * t321 ^ 2 - t229 * t320) * t309) * pkin(2) (t163 * t320 - t321 * t51) * pkin(2), -t142 * t344 + t145 * t348, t327 + t362, t368, t40, t75, 0, -t130 * t368 + t131 * t70 + t134 * t57 - t51 * t145, -t140 * t317 * t346 - t131 * t344 + t51 * t142 + t304 * t57 - t316 * t369, -t134 * t37 - t344 * t317 + t285 * t88 - t304 * t36 + t238 + (t348 - t70) * t316, t131 * t51 + ((-t142 * t37 - t145 * t36) * qJD(4) + t238) * t130, -t103 * t73 + t142 * t158, -t141 * t159 + t175 - t224, t157 + t198, t141 * t188 + t142 * t355, t197 + t363, t40, t134 * t18 - t7 * t145 + t17 * t314 + t185 * t317 + t230 * t32 + t316 * t347 + t59 * t88 + t84 * t70, -t103 * t32 + t130 * t159 - t134 * t19 - t6 * t145 + t17 * t313 + t283 * t73 + t58 * t88 - t85 * t70, t103 * t18 - t161 * t84 - t185 * t85 - t19 * t230 + t200 * t58 - t313 * t7 + t314 * t6 - t59 * t73, t18 * t59 - t19 * t58 - t6 * t85 + t7 * t84 + (t17 * t142 + t304 * t32) * t130, -t100 * t12 - t39 * t64, -t244 + t330, -t242 + t267, t13 * t99 + t38 * t65, t235 + t329, t40, t102 * t13 + t11 * t99 + t134 * t8 - t145 * t2 + t23 * t88 + t24 * t65 + t38 * t89 + t45 * t70, -t1 * t145 + t100 * t11 - t102 * t12 - t134 * t9 + t22 * t88 - t24 * t64 + t39 * t89 - t46 * t70, t1 * t99 - t100 * t2 + t12 * t45 - t13 * t46 + t22 * t38 - t23 * t39 + t64 * t8 - t65 * t9, -t1 * t46 + t102 * t11 + t2 * t45 - t22 * t9 + t23 * t8 + t24 * t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t275, -0.2e1 * t261, 0, t125, 0, 0, t142 * t298, t145 * t298, 0, 0, 0.2e1 * t121 - 0.2e1 * t251, 0.2e1 * t137 * t262 + t252 * t361, 0.2e1 * t142 * t280 + 0.2e1 * t305 * t310, 0.2e1 * t119 + 0.2e1 * t251, -0.2e1 * t141 * t261 + 0.2e1 * t142 * t278, t125, 0.2e1 * t144 * t282 - 0.2e1 * t145 * t59 + 0.2e1 * (t84 + 0.2e1 * t294) * t134, -0.2e1 * t141 * t282 - 0.2e1 * t145 * t58 + 0.2e1 * (-t85 + 0.2e1 * t116) * t134, 0.2e1 * t240 * t304 + 0.2e1 * (qJD(5) * t239 + t141 * t58 - t144 * t59) * t142, 0.2e1 * t130 ^ 2 * t275 - 0.2e1 * t58 * t85 + 0.2e1 * t59 * t84, -0.2e1 * t326, -0.2e1 * t100 * t65 + 0.2e1 * t99 * t64, 0.2e1 * t100 * t134 + 0.2e1 * t145 * t64, 0.2e1 * t332, -0.2e1 * t99 * t134 + 0.2e1 * t145 * t65, t125, 0.2e1 * t102 * t65 + 0.2e1 * t134 * t45 - 0.2e1 * t145 * t23 + 0.2e1 * t89 * t99, 0.2e1 * t100 * t89 - 0.2e1 * t102 * t64 - 0.2e1 * t134 * t46 - 0.2e1 * t145 * t22, -0.2e1 * t100 * t23 + 0.2e1 * t22 * t99 + 0.2e1 * t45 * t64 - 0.2e1 * t46 * t65, 0.2e1 * t102 * t89 - 0.2e1 * t22 * t46 + 0.2e1 * t23 * t45; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t369, t231, 0, t260, 0, 0, 0, 0, 0, 0, t75, -t368, t327 - t362, -t142 * t20 + t145 * t21 + (-t142 * t36 + t145 * t37) * qJD(4), 0, 0, 0, 0, 0, 0, t197 - t363, t157 - t198, t142 * t160 + t175 + t224 (-t17 + (-t141 * t18 + t144 * t19) * qJD(4)) * t145 + (qJD(4) * t32 + t201) * t142, 0, 0, 0, 0, 0, 0, -t235 + t329, t242 + t267, t244 + t330, -t1 * t100 - t11 * t145 + t134 * t24 - t2 * t99 - t64 * t9 - t65 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t199 * t142 + (t130 * t310 - t145 * t239) * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t100 * t22 + t102 * t134 - t145 * t89 - t23 * t99 - t45 * t65 - t46 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t119 + 0.2e1 * t121 - 0.2e1 * t275, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t275 - 0.2e1 * t326 + 0.2e1 * t332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t344, 0, -t70, t369, t21, t20, 0, 0, t141 * t357 + t293, -t303 * t73 + t158 - t355, t352, t356, -t351, 0, -pkin(4) * t185 - pkin(10) * t352 - t17 * t144 + t303 * t32, -pkin(4) * t161 + pkin(10) * t351 + t17 * t141 + t302 * t32, -t18 * t302 - t19 * t303 + t243 + (t160 + t293 + t356) * pkin(10), -pkin(4) * t17 + pkin(10) * t201, -t114 * t12 - t39 * t86, t113 * t12 - t114 * t13 + t38 * t86 - t39 * t87, t114 * t70 - t86 * t88, t113 * t13 + t38 * t87, -t113 * t70 - t87 * t88, 0, t11 * t113 + t13 * t133 + t24 * t87 + t297 * t38 + t68 * t88 + t70 * t90, t11 * t114 - t12 * t133 - t24 * t86 + t297 * t39 + t67 * t88 - t70 * t91, t1 * t113 - t114 * t2 + t12 * t90 - t13 * t91 + t38 * t67 - t39 * t68 + t8 * t86 - t87 * t9, -t1 * t91 + t11 * t133 + t2 * t90 + t24 * t297 - t67 * t9 + t68 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t304, 0, -t134, 0, -t283, t285, 0, 0, -t92, t276 * t361 + t127 - t287, t106, t92, t104, 0 (pkin(10) * t312 + (t318 - t336) * t142) * qJD(5) + (t141 * t246 - t116) * qJD(4) (t130 * t313 + t234) * qJD(5) + (t144 * t246 + t294) * qJD(4), t199, -pkin(4) * t283 + pkin(10) * t199, -t100 * t86 - t114 * t64, t241 + t328, t74, t113 * t65 + t87 * t99, -t233, 0, t102 * t87 + t113 * t89 + t133 * t65 + t134 * t90 - t145 * t68 + t297 * t99, t100 * t297 - t102 * t86 + t114 * t89 - t133 * t64 - t134 * t91 - t145 * t67, -t100 * t68 + t113 * t22 - t114 * t23 + t45 * t86 - t46 * t87 + t64 * t90 - t65 * t91 + t67 * t99, t102 * t297 + t133 * t89 - t22 * t91 + t23 * t90 + t45 * t68 - t46 * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t134, -t304, 0, 0, 0, 0, 0, 0, 0, 0, -t104, t106, t127 + t287 (-t337 + (t136 + t138) * t335) * qJD(4), 0, 0, 0, 0, 0, 0, t233, t74, -t241 + t328, -pkin(5) * t280 - t100 * t67 + t133 * t134 - t64 * t91 - t65 * t90 - t68 * t99; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t276, -0.2e1 * t262, 0, -0.2e1 * t276, 0, 0, t141 * t300, t144 * t300, 0, 0, -0.2e1 * t114 * t86, 0.2e1 * t113 * t86 - 0.2e1 * t114 * t87, 0, 0.2e1 * t113 * t87, 0, 0, 0.2e1 * t113 * t297 + 0.2e1 * t133 * t87, 0.2e1 * t114 * t297 - 0.2e1 * t133 * t86, 0.2e1 * t113 * t67 - 0.2e1 * t114 * t68 + 0.2e1 * t86 * t90 - 0.2e1 * t87 * t91, 0.2e1 * t133 * t297 - 0.2e1 * t67 * t91 + 0.2e1 * t68 * t90; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t161, 0, -t185, t70, t7, t6, 0, 0, 0, 0, -t12, 0, -t13, t70, -t258 * t88 + t339 * t340 + t2 (-t269 * t88 - t338 * t70) * pkin(5) + t1 (t339 * t12 - t338 * t13 + (t338 * t39 - t339 * t38) * qJD(6)) * pkin(5) (t339 * t2 - t338 * t1 + (-t338 * t8 + t339 * t9) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t103, 0, -t230, t134, t59, t58, 0, 0, 0, 0, -t64, 0, -t65, t134, pkin(5) * t142 * t274 - qJD(6) * t173 + t145 * t258 - t269 * t79 + t171 (-t142 * t273 + t145 * t269) * pkin(5) + t22 (t339 * t64 - t338 * t65 + (t100 * t338 - t339 * t99) * qJD(6)) * pkin(5) (t339 * t23 - t338 * t22 + (-t338 * t45 + t339 * t46) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t230, t103, 0, 0, 0, 0, 0, 0, 0, 0, -t65, t64, 0 (-t339 * t65 - t338 * t64 + (t100 * t339 + t338 * t99) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t302, 0, -t303, 0, -pkin(10) * t302, pkin(10) * t303, 0, 0, 0, 0, -t86, 0, -t87, 0, t68, t67 (t339 * t86 - t338 * t87 + (-t113 * t339 + t114 * t338) * qJD(6)) * pkin(5) (t339 * t68 - t338 * t67 + (-t338 * t90 + t339 * t91) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t258, -0.2e1 * t259, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, 0, -t13, t70, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t64, 0, -t65, t134, t23, t22, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, t64, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86, 0, -t87, 0, t68, t67, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t258, -t259, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
