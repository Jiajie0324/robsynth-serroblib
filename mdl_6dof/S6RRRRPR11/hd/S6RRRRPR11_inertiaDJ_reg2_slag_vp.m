% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 23:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRPR11_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR11_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR11_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR11_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 23:23:34
% EndTime: 2019-03-09 23:24:08
% DurationCPUTime: 15.13s
% Computational Cost: add. (20505->683), mult. (53880->1225), div. (0->0), fcn. (53078->12), ass. (0->271)
t162 = sin(qJ(4));
t165 = cos(qJ(4));
t335 = sin(pkin(12));
t268 = qJD(4) * t335;
t336 = cos(pkin(12));
t269 = qJD(4) * t336;
t326 = t162 * t269 + t165 * t268;
t245 = t162 * t335 - t165 * t336;
t167 = cos(qJ(2));
t337 = cos(pkin(6));
t300 = pkin(1) * t337;
t262 = t167 * t300;
t219 = -pkin(2) * t337 - t262;
t161 = sin(pkin(6));
t164 = sin(qJ(2));
t334 = t161 * t164;
t309 = pkin(8) * t334;
t108 = t219 + t309;
t163 = sin(qJ(3));
t276 = t337 * t163;
t166 = cos(qJ(3));
t330 = t164 * t166;
t226 = t161 * t330 + t276;
t118 = t163 * t334 - t166 * t337;
t345 = t118 * pkin(3);
t195 = -pkin(10) * t226 + t108 + t345;
t322 = qJD(2) * t164;
t287 = t161 * t322;
t263 = t164 * t300;
t218 = pkin(9) * t337 + t263;
t333 = t161 * t167;
t307 = pkin(8) * t333;
t208 = t218 + t307;
t204 = qJD(3) * t208;
t253 = pkin(2) * t164 - pkin(9) * t167;
t323 = qJD(2) * t161;
t231 = t253 * t323;
t220 = -t262 + t309;
t213 = t220 * qJD(2);
t303 = -pkin(9) * t164 - pkin(1);
t242 = -pkin(2) * t167 + t303;
t235 = t242 * t161;
t360 = -qJD(3) * t235 + t213;
t46 = t360 * t166 + (t204 - t231) * t163;
t363 = -pkin(10) * t287 - qJD(4) * t195 + t46;
t212 = t166 * t218;
t347 = pkin(8) * t166;
t193 = t212 + (t163 * t303 + (-pkin(2) * t163 - pkin(10) + t347) * t167) * t161;
t272 = qJD(2) * t337;
t257 = t164 * t272;
t321 = qJD(2) * t167;
t286 = t161 * t321;
t296 = qJD(3) * t334;
t132 = t163 * t296;
t267 = t337 * qJD(3);
t351 = -t166 * (t267 + t286) + t132;
t214 = t226 * qJD(3);
t88 = t163 * t286 + t214;
t362 = -pkin(1) * t257 - t88 * pkin(3) - pkin(8) * t286 - pkin(10) * t351 + qJD(4) * t193;
t357 = -qJD(4) * t333 - t351;
t359 = qJD(4) * t226 - t287;
t198 = -t162 * t359 + t165 * t357;
t197 = t198 * t162;
t316 = qJD(4) * t165;
t90 = -t162 * t333 + t165 * t226;
t361 = t316 * t90 + t197;
t238 = -t162 * t268 + t165 * t269;
t123 = t162 * t336 + t165 * t335;
t289 = t163 * t316;
t319 = qJD(3) * t166;
t358 = t162 * t319 + t289;
t299 = t336 * pkin(4);
t258 = t299 + pkin(5);
t298 = t335 * pkin(4);
t349 = sin(qJ(6));
t350 = cos(qJ(6));
t115 = t258 * t350 - t298 * t349;
t281 = t165 * t319;
t317 = qJD(4) * t162;
t356 = -t163 * t317 + t281;
t154 = qJD(3) * t163;
t315 = qJD(4) * t166;
t288 = t165 * t315;
t354 = t154 * t162 - t288;
t353 = t118 * t317 - t165 * t88;
t67 = t118 * t154 - t166 * t88;
t56 = t162 * t357 + t165 * t359;
t89 = t162 * t226 + t165 * t333;
t352 = -t165 * t56 + t317 * t89;
t157 = t162 ^ 2;
t159 = t165 ^ 2;
t325 = t157 - t159;
t266 = qJD(4) * t325;
t341 = -qJ(5) - pkin(10);
t348 = pkin(3) * t166;
t234 = t163 * t341 - pkin(2) - t348;
t329 = t165 * t166;
t308 = pkin(9) * t329;
t207 = t162 * t234 + t308;
t160 = t166 ^ 2;
t346 = pkin(9) * t161;
t344 = t162 * pkin(9);
t343 = t163 * pkin(4);
t155 = t163 * pkin(9);
t342 = t165 * pkin(3);
t176 = t118 * pkin(4) - t90 * qJ(5) - t162 * t193 + t165 * t195;
t201 = -pkin(10) * t276 + t219 + t345;
t211 = t163 * t242 + t167 * t347;
t205 = -t167 * pkin(10) + t211;
t240 = pkin(8) * t164 - pkin(10) * t330;
t42 = t165 * t212 + t162 * t201 + (t162 * t240 + t165 * t205) * t161;
t177 = -t89 * qJ(5) + t42;
t18 = t176 * t335 + t177 * t336;
t301 = -pkin(4) - t344;
t203 = t165 * t234 + t166 * t301;
t60 = t203 * t335 + t207 * t336;
t332 = t162 * t163;
t331 = t163 * t165;
t252 = -pkin(10) * t163 - t348;
t241 = -pkin(2) + t252;
t233 = qJD(4) * t241;
t251 = pkin(3) * t163 - pkin(10) * t166;
t236 = t251 * qJD(3);
t328 = -t162 * t236 - t165 * t233;
t92 = t245 * t341;
t327 = t123 * t163;
t126 = pkin(4) * t332 + t155;
t158 = t163 ^ 2;
t324 = t158 - t160;
t320 = qJD(3) * t165;
t318 = qJD(3) * t167;
t314 = t108 * qJD(3);
t313 = t165 * qJD(5);
t312 = -0.2e1 * pkin(2) * qJD(3);
t311 = -0.2e1 * pkin(3) * qJD(4);
t73 = 0.2e1 * t118 * t88;
t310 = t166 * t344;
t306 = t163 * t360 - t166 * t204;
t153 = pkin(9) * t319;
t152 = pkin(4) * t317;
t99 = pkin(4) * t358 + t153;
t151 = -pkin(4) * t165 - pkin(3);
t156 = t161 ^ 2;
t297 = t156 * t321;
t294 = t163 * t318;
t290 = t162 * t315;
t283 = t162 * t316;
t282 = t163 * t319;
t280 = t163 * t313;
t279 = qJD(6) * t350;
t278 = qJD(6) * t349;
t277 = qJD(4) * t341;
t271 = qJD(3) * t336;
t270 = qJD(3) * t335;
t265 = t324 * qJD(3);
t264 = 0.2e1 * t282;
t261 = t163 * t281;
t260 = t158 * t283;
t259 = t164 * t297;
t256 = t166 * t271;
t255 = t166 * t270;
t250 = t350 * t327;
t53 = t335 * t198;
t249 = t336 * t56 + t53;
t248 = t335 * t90 + t336 * t89;
t19 = t162 * t362 + t165 * t363;
t20 = t162 * t363 - t165 * t362;
t247 = -t20 * t162 - t19 * t165;
t47 = t166 * t231 + t306;
t246 = -t47 * t163 - t46 * t166;
t102 = t165 * t241 - t310;
t103 = t162 * t241 + t308;
t244 = -t102 * t165 - t103 * t162;
t44 = (-pkin(3) * t164 - t166 * t253) * t323 - t306;
t70 = -t163 * t208 + t166 * t235;
t66 = pkin(3) * t333 - t70;
t239 = t44 * t162 + t316 * t66;
t237 = t118 * t316 + t162 * t88;
t15 = -pkin(11) * t248 + t18;
t186 = t198 * t336 - t335 * t56;
t170 = t88 * pkin(4) - qJ(5) * t198 - t90 * qJD(5) + t20;
t183 = t56 * qJ(5) + t89 * qJD(5) + t19;
t6 = t170 * t336 + t183 * t335;
t168 = t88 * pkin(5) - pkin(11) * t186 + t6;
t7 = t170 * t335 - t183 * t336;
t169 = -pkin(11) * t249 + t7;
t17 = t176 * t336 - t177 * t335;
t62 = -t335 * t89 + t336 * t90;
t173 = t118 * pkin(5) - t62 * pkin(11) + t17;
t172 = t350 * t173;
t1 = -qJD(6) * t172 + t15 * t278 - t168 * t349 - t169 * t350;
t217 = t162 * t255 + t163 * t326 - t165 * t256;
t184 = -t280 - t207 * qJD(4) + (t341 * t329 + (-t301 + t342) * t163) * qJD(3);
t196 = (-pkin(9) * qJD(3) - qJ(5) * qJD(4)) * t331 + (-t163 * qJD(5) + (-pkin(9) * qJD(4) - qJ(5) * qJD(3)) * t166) * t162 - t328;
t190 = t335 * t196;
t33 = t184 * t336 - t190;
t174 = pkin(5) * t154 + pkin(11) * t217 + t33;
t216 = -t162 * t256 - t163 * t238 - t165 * t255;
t191 = t336 * t196;
t34 = t184 * t335 + t191;
t175 = pkin(11) * t216 + t34;
t112 = t245 * t163;
t59 = t203 * t336 - t207 * t335;
t182 = -t166 * pkin(5) + t112 * pkin(11) + t59;
t180 = t350 * t182;
t50 = -pkin(11) * t327 + t60;
t10 = -qJD(6) * t180 - t174 * t349 - t175 * t350 + t278 * t50;
t230 = t350 * t248;
t229 = t349 * t248;
t228 = t163 * t322 - t166 * t318;
t227 = t163 * t320 + t290;
t225 = t350 * t245;
t224 = -qJD(5) * t162 + t165 * t277;
t223 = t162 * t277 + t313;
t121 = t263 + t307;
t78 = -t112 * t350 - t327 * t349;
t84 = t123 * t350 - t245 * t349;
t68 = pkin(9) * t227 + t328;
t69 = -t103 * qJD(4) + (pkin(9) * t332 + t165 * t251) * qJD(3);
t206 = qJD(4) * t244 - t162 * t69 - t165 * t68;
t51 = t89 * pkin(4) + t66;
t91 = t123 * t341;
t116 = t258 * t349 + t298 * t350;
t202 = -t123 * pkin(11) + t91;
t28 = t56 * pkin(4) + t44;
t200 = t350 * t202;
t199 = t349 * t202;
t80 = t223 * t336 + t224 * t335;
t79 = -t223 * t335 + t224 * t336;
t189 = t165 * t198 - t317 * t90;
t188 = -pkin(11) * t326 + t80;
t185 = -pkin(11) * t238 + t79;
t181 = pkin(9) * t354 - qJ(5) * t356 - t162 * t233 + t165 * t236 - t280;
t179 = t349 * t182;
t11 = -qJD(6) * t179 + t174 * t350 - t175 * t349 - t279 * t50;
t171 = t349 * t173;
t2 = -qJD(6) * t171 - t15 * t279 + t168 * t350 - t169 * t349;
t143 = -0.2e1 * t282;
t127 = -0.2e1 * t259;
t114 = qJD(2) * t121;
t107 = t116 * qJD(6);
t106 = t115 * qJD(6);
t104 = pkin(5) * t245 + t151;
t96 = pkin(5) * t326 + t152;
t93 = -t162 * t281 + t163 * t266;
t86 = pkin(5) * t327 + t126;
t83 = t123 * t349 + t225;
t81 = -pkin(11) * t245 + t92;
t77 = -t112 * t349 + t250;
t71 = t161 * t211 + t212;
t61 = -pkin(5) * t216 + t99;
t55 = qJD(6) * t84 + t238 * t349 + t326 * t350;
t54 = qJD(6) * t225 + t123 * t278 - t238 * t350 + t326 * t349;
t49 = t350 * t81 + t199;
t48 = -t349 * t81 + t200;
t41 = -t162 * t212 + t165 * t201 + (-t162 * t205 + t165 * t240) * t161;
t40 = qJD(6) * t78 - t216 * t350 - t217 * t349;
t39 = qJD(6) * t250 - t112 * t278 - t216 * t349 + t217 * t350;
t38 = t350 * t62 - t229;
t37 = t349 * t62 + t230;
t35 = pkin(5) * t248 + t51;
t27 = t350 * t50 + t179;
t26 = -t349 * t50 + t180;
t22 = -qJD(6) * t199 + t185 * t350 - t188 * t349 - t279 * t81;
t21 = -qJD(6) * t200 - t185 * t349 - t188 * t350 + t278 * t81;
t16 = pkin(5) * t249 + t28;
t13 = -qJD(6) * t229 + t186 * t349 + t249 * t350 + t279 * t62;
t12 = qJD(6) * t230 - t186 * t350 + t249 * t349 + t278 * t62;
t9 = t15 * t350 + t171;
t8 = -t15 * t349 + t172;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t259, 0.2e1 * (-t164 ^ 2 + t167 ^ 2) * t156 * qJD(2), 0.2e1 * t272 * t333, t127, -0.2e1 * t161 * t257, 0, -0.2e1 * pkin(1) * t156 * t322 - 0.2e1 * t114 * t337, -0.2e1 * pkin(1) * t297 + 0.2e1 * t213 * t337, 0.2e1 * t114 * t334 - 0.2e1 * t121 * t287 - 0.2e1 * t213 * t333 + 0.2e1 * t220 * t286, 0.2e1 * t114 * t220 - 0.2e1 * t121 * t213, -0.2e1 * t226 * t351, 0.2e1 * t118 * t351 - 0.2e1 * t226 * t88, 0.2e1 * t226 * t287 + 0.2e1 * t333 * t351, t73, 0.2e1 * (-t118 * t322 + t167 * t88) * t161, t127, 0.2e1 * t108 * t88 + 0.2e1 * t114 * t118 + 0.2e1 * (-t167 * t47 + t322 * t70) * t161, -0.2e1 * t108 * t351 + 0.2e1 * t114 * t226 - 0.2e1 * t287 * t71 - 0.2e1 * t333 * t46, 0.2e1 * t118 * t46 - 0.2e1 * t226 * t47 + 0.2e1 * t351 * t70 - 0.2e1 * t71 * t88, 0.2e1 * t108 * t114 - 0.2e1 * t46 * t71 + 0.2e1 * t47 * t70, 0.2e1 * t90 * t198, -0.2e1 * t198 * t89 - 0.2e1 * t90 * t56, 0.2e1 * t118 * t198 + 0.2e1 * t88 * t90, 0.2e1 * t89 * t56, -0.2e1 * t118 * t56 - 0.2e1 * t88 * t89, t73, 0.2e1 * t118 * t20 + 0.2e1 * t41 * t88 + 0.2e1 * t44 * t89 + 0.2e1 * t56 * t66, 0.2e1 * t19 * t118 + 0.2e1 * t198 * t66 - 0.2e1 * t42 * t88 + 0.2e1 * t44 * t90, 0.2e1 * t19 * t89 - 0.2e1 * t198 * t41 - 0.2e1 * t20 * t90 - 0.2e1 * t42 * t56, -0.2e1 * t19 * t42 + 0.2e1 * t20 * t41 + 0.2e1 * t44 * t66, 0.2e1 * t62 * t186, -0.2e1 * t186 * t248 - 0.2e1 * t249 * t62, 0.2e1 * t118 * t186 + 0.2e1 * t62 * t88, 0.2e1 * t248 * t249, -0.2e1 * t118 * t249 - 0.2e1 * t248 * t88, t73, 0.2e1 * t118 * t6 + 0.2e1 * t17 * t88 + 0.2e1 * t248 * t28 + 0.2e1 * t249 * t51, -0.2e1 * t118 * t7 - 0.2e1 * t18 * t88 + 0.2e1 * t186 * t51 + 0.2e1 * t28 * t62, -0.2e1 * t17 * t186 - 0.2e1 * t18 * t249 - 0.2e1 * t248 * t7 - 0.2e1 * t6 * t62, 0.2e1 * t17 * t6 + 0.2e1 * t18 * t7 + 0.2e1 * t28 * t51, -0.2e1 * t38 * t12, 0.2e1 * t12 * t37 - 0.2e1 * t13 * t38, -0.2e1 * t118 * t12 + 0.2e1 * t38 * t88, 0.2e1 * t37 * t13, -0.2e1 * t118 * t13 - 0.2e1 * t37 * t88, t73, 0.2e1 * t118 * t2 + 0.2e1 * t13 * t35 + 0.2e1 * t16 * t37 + 0.2e1 * t8 * t88, 0.2e1 * t1 * t118 - 0.2e1 * t12 * t35 + 0.2e1 * t16 * t38 - 0.2e1 * t88 * t9, 0.2e1 * t1 * t37 + 0.2e1 * t12 * t8 - 0.2e1 * t13 * t9 - 0.2e1 * t2 * t38, -0.2e1 * t1 * t9 + 0.2e1 * t16 * t35 + 0.2e1 * t2 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t286, 0, -t287, 0, -t114, t213, 0, 0, t160 * t296 + (-t132 + (0.2e1 * t267 + t286) * t166) * t163, -t118 * t319 - t166 * t351 + (-t214 - t88) * t163, t228 * t161, t67 (t166 * t322 + t294) * t161, 0, -pkin(2) * t88 - t114 * t166 + t163 * t314 - t228 * t346, pkin(2) * t351 + t114 * t163 - t294 * t346 + (-pkin(9) * t287 + t314) * t166, pkin(9) * t67 + t226 * t153 - t71 * t154 - t155 * t351 - t70 * t319 + t246, -pkin(2) * t114 + ((-t71 * t163 - t70 * t166) * qJD(3) + t246) * pkin(9), t163 * t189 + t281 * t90, -t163 * t197 - t56 * t331 - t356 * t89 - t358 * t90, t118 * t356 + t90 * t154 - t166 * t198 + t88 * t331, t89 * t289 + (t163 * t56 + t319 * t89) * t162 (-qJD(3) * t118 * t162 + t56) * t166 + (-qJD(3) * t89 - t237) * t163, t67, t102 * t88 + t118 * t69 + (-t20 + (pkin(9) * t89 + t162 * t66) * qJD(3)) * t166 + (pkin(9) * t56 + t41 * qJD(3) + t239) * t163, -t103 * t88 + t68 * t118 + t153 * t90 - t154 * t42 + t198 * t155 - t19 * t166 + t331 * t44 + t356 * t66, -t102 * t198 - t103 * t56 + t19 * t332 - t20 * t331 - t356 * t41 - t358 * t42 + t68 * t89 - t69 * t90, t102 * t20 - t103 * t19 + t41 * t69 - t42 * t68 + (t44 * t163 + t319 * t66) * pkin(9), -t112 * t186 - t217 * t62, t112 * t249 - t186 * t327 + t216 * t62 + t217 * t248, -t112 * t88 - t118 * t217 + t154 * t62 - t166 * t186, -t216 * t248 + t249 * t327, t118 * t216 - t154 * t248 + t166 * t249 - t327 * t88, t67, t33 * t118 + t126 * t249 + t154 * t17 - t6 * t166 - t216 * t51 + t248 * t99 + t28 * t327 + t59 * t88, -t28 * t112 - t34 * t118 + t126 * t186 - t154 * t18 + t7 * t166 - t217 * t51 - t60 * t88 + t99 * t62, t6 * t112 + t17 * t217 + t18 * t216 - t186 * t59 - t248 * t34 - t249 * t60 - t327 * t7 - t33 * t62, t126 * t28 + t17 * t33 + t18 * t34 + t51 * t99 + t59 * t6 + t60 * t7, -t12 * t78 - t38 * t39, t12 * t77 - t13 * t78 + t37 * t39 - t38 * t40, -t118 * t39 + t12 * t166 + t154 * t38 + t78 * t88, t13 * t77 + t37 * t40, -t118 * t40 + t13 * t166 - t154 * t37 - t77 * t88, t67, t11 * t118 + t13 * t86 + t154 * t8 + t16 * t77 - t166 * t2 + t26 * t88 + t35 * t40 + t37 * t61, -t1 * t166 + t10 * t118 - t12 * t86 - t154 * t9 + t16 * t78 - t27 * t88 - t35 * t39 + t38 * t61, t1 * t77 + t10 * t37 - t11 * t38 + t12 * t26 - t13 * t27 - t2 * t78 + t39 * t8 - t40 * t9, -t1 * t27 - t10 * t9 + t11 * t8 + t16 * t86 + t2 * t26 + t35 * t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t264, -0.2e1 * t265, 0, t143, 0, 0, t163 * t312, t166 * t312, 0, 0, 0.2e1 * t159 * t282 - 0.2e1 * t260, 0.2e1 * t158 * t266 - 0.4e1 * t162 * t261, 0.2e1 * t163 * t290 + 0.2e1 * t320 * t324, 0.2e1 * t157 * t282 + 0.2e1 * t260, -0.2e1 * t162 * t265 + 0.2e1 * t163 * t288, t143, 0.2e1 * t102 * t154 - 0.2e1 * t166 * t69 + 0.2e1 * (t158 * t316 + t162 * t264) * pkin(9), -0.2e1 * t103 * t154 - 0.2e1 * t166 * t68 + 0.2e1 * (-t158 * t317 + 0.2e1 * t261) * pkin(9), 0.2e1 * t244 * t319 + 0.2e1 * (t162 * t68 - t165 * t69 + (t102 * t162 - t103 * t165) * qJD(4)) * t163, 0.2e1 * pkin(9) ^ 2 * t282 + 0.2e1 * t102 * t69 - 0.2e1 * t103 * t68, 0.2e1 * t112 * t217, -0.2e1 * t112 * t216 + 0.2e1 * t217 * t327, -0.2e1 * t112 * t154 + 0.2e1 * t166 * t217, -0.2e1 * t327 * t216, -0.2e1 * t154 * t327 - 0.2e1 * t166 * t216, t143, -0.2e1 * t126 * t216 + 0.2e1 * t154 * t59 - 0.2e1 * t33 * t166 + 0.2e1 * t327 * t99, -0.2e1 * t112 * t99 - 0.2e1 * t126 * t217 - 0.2e1 * t154 * t60 + 0.2e1 * t166 * t34, 0.2e1 * t112 * t33 + 0.2e1 * t216 * t60 + 0.2e1 * t217 * t59 - 0.2e1 * t327 * t34, 0.2e1 * t126 * t99 + 0.2e1 * t33 * t59 + 0.2e1 * t34 * t60, -0.2e1 * t78 * t39, 0.2e1 * t39 * t77 - 0.2e1 * t40 * t78, 0.2e1 * t154 * t78 + 0.2e1 * t166 * t39, 0.2e1 * t77 * t40, -0.2e1 * t154 * t77 + 0.2e1 * t166 * t40, t143, -0.2e1 * t11 * t166 + 0.2e1 * t154 * t26 + 0.2e1 * t40 * t86 + 0.2e1 * t61 * t77, -0.2e1 * t10 * t166 - 0.2e1 * t154 * t27 - 0.2e1 * t39 * t86 + 0.2e1 * t61 * t78, 0.2e1 * t10 * t77 - 0.2e1 * t11 * t78 + 0.2e1 * t26 * t39 - 0.2e1 * t27 * t40, -0.2e1 * t10 * t27 + 0.2e1 * t11 * t26 + 0.2e1 * t61 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t351, 0, -t88, t287, t47, t46, 0, 0, t361, -t162 * t56 - t316 * t89 + t189, t237, t352, -t353, 0, -pkin(3) * t56 - pkin(10) * t237 - t44 * t165 + t317 * t66, -pkin(3) * t198 + pkin(10) * t353 + t239, -t316 * t41 - t317 * t42 + t247 + (t352 + t361) * pkin(10), -pkin(3) * t44 + ((-t162 * t42 - t165 * t41) * qJD(4) + t247) * pkin(10), t123 * t186 + t238 * t62, -t123 * t249 - t186 * t245 - t238 * t248 - t326 * t62, t118 * t238 + t123 * t88, t245 * t249 + t248 * t326, -t118 * t326 - t245 * t88, 0, t118 * t79 + t151 * t249 + t152 * t248 + t245 * t28 + t326 * t51 + t88 * t91, -t80 * t118 + t28 * t123 + t151 * t186 + t152 * t62 + t238 * t51 - t92 * t88, -t6 * t123 - t17 * t238 - t18 * t326 - t186 * t91 - t245 * t7 - t248 * t80 - t249 * t92 - t79 * t62, t151 * t28 + t152 * t51 + t17 * t79 + t18 * t80 + t6 * t91 + t7 * t92, -t12 * t84 - t38 * t54, t12 * t83 - t13 * t84 + t37 * t54 - t38 * t55, -t118 * t54 + t84 * t88, t13 * t83 + t37 * t55, -t118 * t55 - t83 * t88, 0, t104 * t13 + t118 * t22 + t16 * t83 + t35 * t55 + t37 * t96 + t48 * t88, -t104 * t12 + t118 * t21 + t16 * t84 - t35 * t54 + t38 * t96 - t49 * t88, t1 * t83 + t12 * t48 - t13 * t49 - t2 * t84 + t21 * t37 - t22 * t38 + t54 * t8 - t55 * t9, -t1 * t49 + t104 * t16 + t2 * t48 - t21 * t9 + t22 * t8 + t35 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t319, 0, -t154, 0, -t153, pkin(9) * t154, 0, 0, -t93, -0.4e1 * t163 * t283 - t319 * t325, t354, t93, t227, 0 (pkin(10) * t329 + (-t342 + t344) * t163) * qJD(4) + (t162 * t252 - t308) * qJD(3) (pkin(9) * t331 + t162 * t251) * qJD(4) + (t165 * t252 + t310) * qJD(3), t206, -pkin(3) * t153 + pkin(10) * t206, -t112 * t238 - t123 * t217, t112 * t326 + t123 * t216 + t217 * t245 - t238 * t327, t123 * t154 - t166 * t238, -t216 * t245 + t326 * t327, -t154 * t245 + t166 * t326, 0, t126 * t326 - t151 * t216 + t152 * t327 + t154 * t91 - t79 * t166 + t245 * t99, -t112 * t152 + t99 * t123 + t126 * t238 - t151 * t217 - t154 * t92 + t80 * t166, t79 * t112 - t33 * t123 + t216 * t92 + t217 * t91 - t238 * t59 - t245 * t34 - t326 * t60 - t327 * t80, t126 * t152 + t151 * t99 + t33 * t91 + t34 * t92 + t59 * t79 + t60 * t80, -t39 * t84 - t54 * t78, t39 * t83 - t40 * t84 + t54 * t77 - t55 * t78, t154 * t84 + t166 * t54, t40 * t83 + t55 * t77, -t154 * t83 + t166 * t55, 0, t104 * t40 + t154 * t48 - t166 * t22 + t55 * t86 + t61 * t83 + t77 * t96, -t104 * t39 - t154 * t49 - t166 * t21 - t54 * t86 + t61 * t84 + t78 * t96, t10 * t83 - t11 * t84 + t21 * t77 - t22 * t78 + t26 * t54 - t27 * t55 + t39 * t48 - t40 * t49, -t10 * t49 + t104 * t61 + t11 * t48 - t21 * t27 + t22 * t26 + t86 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t283, -0.2e1 * t266, 0, -0.2e1 * t283, 0, 0, t162 * t311, t165 * t311, 0, 0, 0.2e1 * t123 * t238, -0.2e1 * t123 * t326 - 0.2e1 * t238 * t245, 0, 0.2e1 * t245 * t326, 0, 0, 0.2e1 * t151 * t326 + 0.2e1 * t152 * t245, 0.2e1 * t123 * t152 + 0.2e1 * t151 * t238, -0.2e1 * t79 * t123 - 0.2e1 * t238 * t91 - 0.2e1 * t245 * t80 - 0.2e1 * t326 * t92, 0.2e1 * t151 * t152 + 0.2e1 * t79 * t91 + 0.2e1 * t80 * t92, -0.2e1 * t84 * t54, 0.2e1 * t54 * t83 - 0.2e1 * t55 * t84, 0, 0.2e1 * t83 * t55, 0, 0, 0.2e1 * t104 * t55 + 0.2e1 * t83 * t96, -0.2e1 * t104 * t54 + 0.2e1 * t84 * t96, 0.2e1 * t21 * t83 - 0.2e1 * t22 * t84 + 0.2e1 * t48 * t54 - 0.2e1 * t49 * t55, 0.2e1 * t104 * t96 - 0.2e1 * t21 * t49 + 0.2e1 * t22 * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t198, 0, -t56, t88, t20, t19, 0, 0, 0, 0, t186, 0, -t249, t88, t299 * t88 + t6, -t298 * t88 - t7 (-t198 * t336 ^ 2 - t335 * t53) * pkin(4) (t335 * t7 + t336 * t6) * pkin(4), 0, 0, -t12, 0, -t13, t88, -t107 * t118 + t115 * t88 + t2, -t106 * t118 - t116 * t88 + t1, -t106 * t37 + t107 * t38 + t115 * t12 - t116 * t13, -t1 * t116 + t106 * t9 - t107 * t8 + t115 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, 0, -t358, t154, t69, t68, 0, 0, 0, 0, -t217, 0, t216, t154, t181 * t336 + 0.2e1 * t271 * t343 - t190, -t181 * t335 - 0.2e1 * t270 * t343 - t191 (t216 * t335 + t217 * t336) * pkin(4) (t33 * t336 + t335 * t34) * pkin(4), 0, 0, -t39, 0, -t40, t154, t107 * t166 + t115 * t154 + t11, t106 * t166 - t116 * t154 + t10, -t106 * t77 + t107 * t78 + t115 * t39 - t116 * t40, -t10 * t116 + t106 * t27 - t107 * t26 + t11 * t115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t316, 0, -t317, 0, -pkin(10) * t316, pkin(10) * t317, 0, 0, 0, 0, t238, 0, -t326, 0, t79, -t80 (-t238 * t336 - t326 * t335) * pkin(4) (t335 * t80 + t336 * t79) * pkin(4), 0, 0, -t54, 0, -t55, 0, t22, t21, -t106 * t83 + t107 * t84 + t115 * t54 - t116 * t55, t106 * t49 - t107 * t48 + t115 * t22 - t116 * t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t107, -0.2e1 * t106, 0, 0.2e1 * t106 * t116 - 0.2e1 * t107 * t115; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t249, t186, 0, t28, 0, 0, 0, 0, 0, 0, t13, -t12, 0, t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t216, -t217, 0, t99, 0, 0, 0, 0, 0, 0, t40, -t39, 0, t61; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t326, t238, 0, t152, 0, 0, 0, 0, 0, 0, t55, -t54, 0, t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t12, 0, -t13, t88, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t39, 0, -t40, t154, t11, t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t54, 0, -t55, 0, t22, t21, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t107, -t106, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
