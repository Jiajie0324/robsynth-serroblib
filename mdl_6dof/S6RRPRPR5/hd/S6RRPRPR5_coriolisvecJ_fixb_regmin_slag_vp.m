% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRPRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
% 
% Output:
% tauc_reg [6x30]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPRPR5_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR5_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR5_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR5_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:35:11
% EndTime: 2019-03-09 10:35:31
% DurationCPUTime: 7.15s
% Computational Cost: add. (11629->510), mult. (35369->722), div. (0->0), fcn. (28783->12), ass. (0->246)
t242 = sin(pkin(11));
t245 = cos(pkin(11));
t248 = sin(qJ(2));
t251 = cos(qJ(2));
t272 = t242 * t251 + t245 * t248;
t243 = sin(pkin(6));
t316 = qJD(1) * t243;
t200 = t272 * t316;
t250 = cos(qJ(4));
t342 = cos(pkin(6));
t298 = t342 * qJD(1);
t271 = t298 + qJD(2);
t224 = t250 * t271;
t247 = sin(qJ(4));
t165 = t200 * t247 - t224;
t164 = qJD(6) + t165;
t306 = t248 * t316;
t322 = t245 * t251;
t308 = t243 * t322;
t197 = qJD(1) * t308 - t242 * t306;
t194 = qJD(4) - t197;
t241 = sin(pkin(12));
t244 = cos(pkin(12));
t255 = -t250 * t200 - t247 * t271;
t116 = -t244 * t194 - t241 * t255;
t249 = cos(qJ(6));
t118 = t194 * t241 - t244 * t255;
t246 = sin(qJ(6));
t341 = t118 * t246;
t362 = -t249 * t116 - t341;
t364 = t164 * t362;
t307 = pkin(1) * t342;
t290 = t251 * t307;
t231 = qJD(1) * t290;
t354 = pkin(8) + qJ(3);
t303 = t354 * t248;
t289 = t243 * t303;
t186 = -qJD(1) * t289 + t231;
t291 = t248 * t307;
t326 = t243 * t251;
t196 = t354 * t326 + t291;
t187 = t196 * qJD(1);
t323 = t245 * t187;
t133 = t186 * t242 + t323;
t363 = -qJD(5) * t247 - t133 + t194 * (pkin(4) * t247 - qJ(5) * t250);
t328 = t241 * t250;
t150 = t197 * t328 - t244 * t200;
t324 = t244 * t250;
t151 = t197 * t324 + t200 * t241;
t219 = t241 * t249 + t244 * t246;
t311 = qJD(6) * t249;
t312 = qJD(6) * t247;
t313 = qJD(4) * t250;
t325 = t244 * t247;
t329 = t241 * t246;
t348 = -t249 * t150 - t151 * t246 + t219 * t313 + t311 * t325 - t312 * t329;
t273 = t116 * t246 - t118 * t249;
t361 = t164 * t273;
t314 = qJD(4) * t247;
t331 = t197 * t247;
t359 = -t314 + t331;
t310 = qJD(1) * qJD(2);
t301 = t243 * t310;
t287 = t251 * t301;
t288 = t248 * t301;
t193 = -t242 * t288 + t245 * t287;
t119 = qJD(4) * t224 + t250 * t193 - t200 * t314;
t206 = t272 * t243;
t198 = qJD(2) * t206;
t192 = qJD(1) * t198;
t84 = t119 * t241 - t244 * t192;
t85 = t119 * t244 + t192 * t241;
t23 = -qJD(6) * t273 + t246 * t85 + t249 * t84;
t295 = t194 * t247;
t358 = t23 * t250 + t295 * t362;
t315 = qJD(2) * t243;
t305 = t248 * t315;
t357 = pkin(2) * t305;
t235 = pkin(2) * t242 + pkin(9);
t304 = t235 * t314;
t176 = t242 * t187;
t134 = t186 * t245 - t176;
t148 = pkin(2) * t306 + pkin(3) * t200 - pkin(9) * t197;
t318 = t250 * t134 + t247 * t148;
t62 = qJ(5) * t200 + t318;
t347 = t363 * t244 + (t304 + t62) * t241;
t356 = -t241 * t363 + t244 * t62;
t120 = -qJD(4) * t255 + t247 * t193;
t218 = -t249 * t244 + t329;
t208 = t218 * t247;
t349 = t150 * t246 - t151 * t249 - t218 * t313 - t219 * t312;
t355 = t120 * t208 - t164 * t349;
t252 = qJD(1) ^ 2;
t353 = pkin(10) + qJ(5);
t257 = pkin(2) * t342 - t289;
t168 = qJD(2) * pkin(2) + qJD(1) * t257 + t231;
t112 = t242 * t168 + t323;
t105 = pkin(9) * t271 + t112;
t285 = (-pkin(2) * t251 - pkin(1)) * t243;
t267 = qJD(1) * t285;
t213 = qJD(3) + t267;
t129 = -pkin(3) * t197 - pkin(9) * t200 + t213;
t228 = pkin(2) * t288;
t130 = pkin(3) * t192 - pkin(9) * t193 + t228;
t279 = qJD(2) * t298;
t269 = pkin(1) * t279;
t229 = t251 * t269;
t256 = (-qJD(2) * t303 + qJD(3) * t251) * t243;
t160 = qJD(1) * t256 + t229;
t327 = t243 * t248;
t172 = -qJD(2) * t196 - qJD(3) * t327;
t253 = qJD(1) * t172;
t90 = t245 * t160 + t242 * t253;
t262 = -t105 * t314 + t129 * t313 + t247 * t130 + t250 * t90;
t20 = qJ(5) * t192 + qJD(5) * t194 + t262;
t89 = t160 * t242 - t245 * t253;
t42 = pkin(4) * t120 - qJ(5) * t119 + qJD(5) * t255 + t89;
t10 = t244 * t20 + t241 * t42;
t205 = t242 * t327 - t308;
t232 = qJD(2) * t290;
t171 = t232 + t256;
t108 = t171 * t245 + t172 * t242;
t184 = t290 + t257;
t144 = t242 * t184 + t245 * t196;
t132 = pkin(9) * t342 + t144;
t199 = (-t242 * t248 + t322) * t315;
t149 = pkin(3) * t198 - pkin(9) * t199 + t357;
t152 = pkin(3) * t205 - pkin(9) * t206 + t285;
t260 = t250 * t108 - t132 * t314 + t247 * t149 + t152 * t313;
t31 = qJ(5) * t198 + qJD(5) * t205 + t260;
t107 = t171 * t242 - t245 * t172;
t180 = t206 * t250 + t247 * t342;
t141 = qJD(4) * t180 + t199 * t247;
t263 = -t206 * t247 + t250 * t342;
t142 = qJD(4) * t263 + t199 * t250;
t48 = pkin(4) * t141 - qJ(5) * t142 - qJD(5) * t180 + t107;
t13 = t241 * t48 + t244 * t31;
t61 = t250 * t105 + t247 * t129;
t54 = qJ(5) * t194 + t61;
t111 = t245 * t168 - t176;
t104 = -pkin(3) * t271 - t111;
t57 = t165 * pkin(4) + qJ(5) * t255 + t104;
t25 = t241 * t57 + t244 * t54;
t106 = -pkin(4) * t255 + qJ(5) * t165;
t60 = -t247 * t105 + t129 * t250;
t45 = t241 * t106 + t244 * t60;
t319 = t250 * t132 + t247 * t152;
t66 = qJ(5) * t205 + t319;
t143 = t245 * t184 - t242 * t196;
t131 = -pkin(3) * t342 - t143;
t73 = -pkin(4) * t263 - t180 * qJ(5) + t131;
t36 = t241 * t73 + t244 * t66;
t293 = t105 * t313 + t129 * t314 - t250 * t130 + t247 * t90;
t26 = -pkin(4) * t192 + t293;
t351 = t241 * t26;
t350 = t244 * t26;
t346 = -t244 * t304 - t356;
t300 = pkin(5) * t241 + t235;
t127 = t247 * t134;
t63 = -pkin(4) * t200 - t148 * t250 + t127;
t345 = -pkin(5) * t150 + t300 * t313 - t63;
t344 = t164 * t218;
t343 = t164 * t219;
t339 = t120 * t241;
t338 = t120 * t244;
t337 = t165 * t194;
t336 = t165 * t200;
t335 = t165 * t241;
t334 = t255 * t194;
t333 = t255 * t200;
t332 = t192 * t247;
t238 = t243 ^ 2;
t330 = t238 * t252;
t53 = -pkin(4) * t194 + qJD(5) - t60;
t320 = -qJD(5) + t53;
t236 = -pkin(2) * t245 - pkin(3);
t216 = -pkin(4) * t250 - qJ(5) * t247 + t236;
t174 = t241 * t216 + t235 * t324;
t317 = t248 ^ 2 - t251 ^ 2;
t309 = t251 * t330;
t302 = t238 * t310;
t9 = -t20 * t241 + t244 * t42;
t12 = -t241 * t31 + t244 * t48;
t24 = -t241 * t54 + t244 * t57;
t35 = -t241 * t66 + t244 * t73;
t44 = t244 * t106 - t241 * t60;
t297 = -t247 * t132 + t152 * t250;
t294 = t194 * t250;
t292 = 0.2e1 * t302;
t207 = t219 * t247;
t286 = -t207 * t120 - t348 * t164;
t284 = t243 * t252 * t342;
t283 = -0.2e1 * pkin(1) * t302;
t6 = pkin(5) * t120 - pkin(10) * t85 + t9;
t7 = -pkin(10) * t84 + t10;
t282 = t246 * t6 + t249 * t7;
t162 = -pkin(10) * t241 * t247 + t174;
t281 = pkin(5) * t331 - pkin(10) * t151 + qJD(6) * t162 - (pkin(5) * t247 - pkin(10) * t324) * qJD(4) - t347;
t210 = t244 * t216;
t157 = -pkin(10) * t325 + t210 + (-t235 * t241 - pkin(5)) * t250;
t280 = -pkin(10) * t150 - qJD(6) * t157 - (-pkin(10) * t328 - t235 * t325) * qJD(4) + t356;
t278 = t10 * t244 - t241 * t9;
t14 = pkin(5) * t165 - pkin(10) * t118 + t24;
t16 = -pkin(10) * t116 + t25;
t3 = t14 * t249 - t16 * t246;
t4 = t14 * t246 + t16 * t249;
t147 = t180 * t244 + t205 * t241;
t18 = -pkin(5) * t263 - pkin(10) * t147 + t35;
t146 = t180 * t241 - t205 * t244;
t27 = -pkin(10) * t146 + t36;
t276 = t18 * t249 - t246 * t27;
t275 = t18 * t246 + t249 * t27;
t274 = -t24 * t241 + t244 * t25;
t74 = t249 * t146 + t147 * t246;
t75 = -t146 * t246 + t147 * t249;
t270 = 0.2e1 * t298 + qJD(2);
t268 = -t247 * t108 - t132 * t313 + t149 * t250 - t152 * t314;
t266 = t250 * t192 + t359 * t194;
t67 = -pkin(4) * t205 - t297;
t226 = t353 * t241;
t265 = pkin(10) * t335 - qJD(5) * t244 + qJD(6) * t226 + t45;
t227 = t353 * t244;
t264 = pkin(10) * t165 * t244 - pkin(5) * t255 + qJD(5) * t241 + qJD(6) * t227 + t44;
t22 = -qJD(6) * t341 - t116 * t311 - t246 * t84 + t249 * t85;
t261 = -t22 * t250 + t359 * t273;
t259 = t104 * t194 - t235 * t192;
t34 = -pkin(4) * t198 - t268;
t258 = -pkin(8) * t326 - t291;
t2 = -qJD(6) * t4 - t246 * t7 + t249 * t6;
t254 = t271 * t258;
t237 = -pkin(5) * t244 - pkin(4);
t211 = t300 * t247;
t173 = -t235 * t328 + t210;
t92 = t142 * t244 + t198 * t241;
t91 = t142 * t241 - t198 * t244;
t51 = -pkin(5) * t335 + t61;
t50 = pkin(5) * t146 + t67;
t43 = pkin(5) * t116 + t53;
t33 = qJD(6) * t75 + t246 * t92 + t249 * t91;
t32 = -qJD(6) * t74 - t246 * t91 + t249 * t92;
t17 = pkin(5) * t91 + t34;
t15 = pkin(5) * t84 + t26;
t11 = -pkin(10) * t91 + t13;
t8 = pkin(5) * t141 - pkin(10) * t92 + t12;
t1 = qJD(6) * t3 + t282;
t5 = [0, 0, 0, t248 * t251 * t292, -t317 * t292, t270 * t251 * t315, -t270 * t305, 0, qJD(2) * t254 + t248 * t283 + t258 * t279, t251 * t283 - (-pkin(8) * t305 + t232) * t271 - (-pkin(8) * t288 + t229) * t342, t107 * t200 + t108 * t197 - t111 * t199 - t112 * t198 - t143 * t193 - t144 * t192 - t205 * t90 + t206 * t89, -t111 * t107 + t112 * t108 - t89 * t143 + t90 * t144 + (t213 + t267) * t357, t119 * t180 - t142 * t255, t119 * t263 - t120 * t180 + t141 * t255 - t142 * t165, t119 * t205 + t142 * t194 + t180 * t192 - t198 * t255, -t120 * t205 - t141 * t194 - t165 * t198 + t192 * t263, t192 * t205 + t194 * t198, t104 * t141 + t107 * t165 + t131 * t120 + t192 * t297 + t194 * t268 + t60 * t198 - t205 * t293 - t263 * t89, t104 * t142 - t107 * t255 + t131 * t119 + t89 * t180 - t192 * t319 - t194 * t260 - t61 * t198 - t205 * t262, t116 * t34 + t12 * t165 + t120 * t35 + t141 * t24 + t146 * t26 - t263 * t9 + t53 * t91 + t67 * t84, t10 * t263 + t118 * t34 - t120 * t36 - t13 * t165 - t141 * t25 + t147 * t26 + t53 * t92 + t67 * t85, -t10 * t146 - t116 * t13 - t118 * t12 - t147 * t9 - t24 * t92 - t25 * t91 - t35 * t85 - t36 * t84, t10 * t36 + t12 * t24 + t13 * t25 + t26 * t67 + t34 * t53 + t35 * t9, t22 * t75 - t273 * t32, -t22 * t74 - t23 * t75 + t273 * t33 + t32 * t362, t120 * t75 - t141 * t273 + t164 * t32 - t22 * t263, -t120 * t74 + t141 * t362 - t164 * t33 + t23 * t263, -t120 * t263 + t141 * t164 (-qJD(6) * t275 - t11 * t246 + t249 * t8) * t164 + t276 * t120 - t2 * t263 + t3 * t141 - t17 * t362 + t50 * t23 + t15 * t74 + t43 * t33 -(qJD(6) * t276 + t11 * t249 + t246 * t8) * t164 - t275 * t120 + t1 * t263 - t4 * t141 - t17 * t273 + t50 * t22 + t15 * t75 + t43 * t32; 0, 0, 0, -t248 * t309, t317 * t330, -t251 * t284, t248 * t284, 0, -pkin(8) * t287 - qJD(1) * t254 + (pkin(1) * t330 - t269) * t248, -t229 + pkin(1) * t309 + (-pkin(8) * t306 + t231) * t298 + t231 * qJD(2) (t112 - t133) * t200 + (t111 - t134) * t197 + (-t192 * t242 - t193 * t245) * pkin(2), t111 * t133 - t112 * t134 + (-t213 * t306 + t242 * t90 - t245 * t89) * pkin(2), t119 * t247 - t255 * t294 (t119 - t337) * t250 + (-t120 + t334) * t247, t194 * t294 + t332 + t333, t266 + t336, -t194 * t200, t236 * t120 - t133 * t165 - t60 * t200 - t89 * t250 + (t127 + (-qJD(4) * t235 - t148) * t250) * t194 + t259 * t247, t236 * t119 + t133 * t255 + t61 * t200 + t89 * t247 + (t304 + t318) * t194 + t259 * t250, -t116 * t63 + t120 * t173 - t150 * t53 + t347 * t165 + (-t9 + (t116 * t235 + t241 * t53) * qJD(4)) * t250 + (t194 * t24 + t235 * t84 + t351) * t247, -t118 * t63 - t120 * t174 - t151 * t53 - t346 * t165 + (t10 + (t118 * t235 + t244 * t53) * qJD(4)) * t250 + (-t194 * t25 + t235 * t85 + t350) * t247, t150 * t25 + t151 * t24 - t173 * t85 - t174 * t84 + (-t10 * t241 - t244 * t9) * t247 - t347 * t118 - t346 * t116 + (-t24 * t244 - t241 * t25) * t313, t10 * t174 + t173 * t9 - t53 * t63 + t346 * t25 + t347 * t24 + (t247 * t26 + t313 * t53) * t235, -t208 * t22 - t273 * t349, -t207 * t22 + t208 * t23 + t273 * t348 + t349 * t362, t261 - t355, t286 + t358, -t120 * t250 + t164 * t295 (t157 * t249 - t162 * t246) * t120 - t2 * t250 + t211 * t23 + t15 * t207 - t345 * t362 + t348 * t43 + t3 * t295 + (t246 * t280 - t249 * t281) * t164 -(t157 * t246 + t162 * t249) * t120 + t1 * t250 + t211 * t22 - t15 * t208 - t345 * t273 + t349 * t43 - t4 * t295 + (t246 * t281 + t249 * t280) * t164; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t197 ^ 2 - t200 ^ 2, t111 * t200 - t112 * t197 + t228, 0, 0, 0, 0, 0, t266 - t336, -t194 ^ 2 * t250 - t332 + t333, -t250 * t84 + (-t241 * t313 + t150) * t165 + (t116 * t194 - t339) * t247, -t250 * t85 + (-t244 * t313 + t151) * t165 + (t118 * t194 - t338) * t247, t116 * t151 - t118 * t150 + (t241 * t85 - t244 * t84) * t247 + (-t116 * t244 + t118 * t241) * t313, t150 * t24 - t151 * t25 + (qJD(4) * t274 - t26) * t250 + (t194 * t53 + t278) * t247, 0, 0, 0, 0, 0, t286 - t358, t261 + t355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t255 * t165, -t165 ^ 2 + t255 ^ 2, t119 + t337, -t120 - t334, t192, t104 * t255 + t194 * t61 - t293, t104 * t165 + t194 * t60 - t262, -qJ(5) * t339 - pkin(4) * t84 - t116 * t61 + t255 * t24 - t350 + (t241 * t320 - t44) * t165, -qJ(5) * t338 - pkin(4) * t85 - t118 * t61 - t255 * t25 + t351 + (t244 * t320 + t45) * t165, t116 * t45 + t118 * t44 + (-qJ(5) * t84 - qJD(5) * t116 - t165 * t24 + t10) * t244 + (qJ(5) * t85 + qJD(5) * t118 - t165 * t25 - t9) * t241, -pkin(4) * t26 + qJ(5) * t278 + qJD(5) * t274 - t24 * t44 - t25 * t45 - t53 * t61, t219 * t22 + t273 * t344, -t218 * t22 - t219 * t23 + t273 * t343 - t344 * t362, t120 * t219 - t164 * t344 - t255 * t273, -t120 * t218 - t164 * t343 + t255 * t362, t164 * t255 (-t226 * t249 - t227 * t246) * t120 + t237 * t23 + t15 * t218 + t3 * t255 + t51 * t362 + t343 * t43 + (t246 * t265 - t249 * t264) * t164 -(-t226 * t246 + t227 * t249) * t120 + t237 * t22 + t15 * t219 - t4 * t255 + t51 * t273 - t344 * t43 + (t246 * t264 + t249 * t265) * t164; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t118 * t165 + t84, -t116 * t165 + t85, -t116 ^ 2 - t118 ^ 2, t116 * t25 + t118 * t24 + t26, 0, 0, 0, 0, 0, t23 - t361, t22 + t364; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t273 * t362, t273 ^ 2 - t362 ^ 2, t22 - t364, -t23 - t361, t120, t164 * t4 + t273 * t43 + t2, -t43 * t362 - t282 + (-qJD(6) + t164) * t3;];
tauc_reg  = t5;