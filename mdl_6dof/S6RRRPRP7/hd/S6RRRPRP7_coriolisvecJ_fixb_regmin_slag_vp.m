% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRRPRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauc_reg [6x30]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 17:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRPRP7_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP7_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP7_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP7_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 17:11:08
% EndTime: 2019-03-09 17:11:29
% DurationCPUTime: 8.92s
% Computational Cost: add. (14572->536), mult. (38281->730), div. (0->0), fcn. (30190->10), ass. (0->244)
t236 = sin(pkin(6));
t243 = cos(qJ(2));
t316 = qJD(1) * t243;
t224 = t236 * t316;
t267 = t224 - qJD(3);
t239 = sin(qJ(3));
t240 = sin(qJ(2));
t242 = cos(qJ(3));
t317 = qJD(1) * t240;
t298 = t236 * t317;
t237 = cos(pkin(6));
t318 = qJD(1) * t237;
t305 = pkin(1) * t318;
t183 = -pkin(8) * t298 + t243 * t305;
t260 = (pkin(2) * t240 - pkin(9) * t243) * t236;
t184 = qJD(1) * t260;
t284 = -t239 * t183 + t242 * t184;
t354 = -qJ(4) - pkin(9);
t291 = qJD(3) * t354;
t319 = qJD(1) * t236;
t327 = t242 * t243;
t373 = (pkin(3) * t240 - qJ(4) * t327) * t319 + t284 + t239 * qJD(4) - t242 * t291;
t275 = t239 * t224;
t323 = t242 * t183 + t239 * t184;
t372 = qJ(4) * t275 + t242 * qJD(4) + t239 * t291 - t323;
t235 = sin(pkin(11));
t341 = cos(pkin(11));
t199 = t235 * t242 + t341 * t239;
t322 = t267 * t199;
t256 = -t235 * t239 + t341 * t242;
t150 = t256 * t224;
t193 = t256 * qJD(3);
t371 = -t193 + t150;
t343 = -t373 * t235 + t372 * t341;
t221 = t240 * t305;
t186 = pkin(8) * t224 + t221;
t313 = qJD(3) * t239;
t370 = -t186 + (-t275 + t313) * pkin(3);
t369 = pkin(10) * t298 - t343;
t368 = -t322 * pkin(4) + t371 * pkin(10) + t370;
t344 = t372 * t235 + t373 * t341;
t306 = qJD(1) * qJD(2);
t292 = t236 * t306;
t274 = t243 * t292;
t177 = pkin(8) * t274 + qJD(2) * t221;
t277 = qJD(3) * t267;
t367 = -pkin(9) * t277 + t177;
t225 = qJD(2) + t318;
t166 = -t242 * t225 + t239 * t298;
t168 = t225 * t239 + t242 * t298;
t287 = -t341 * t166 - t168 * t235;
t361 = qJD(5) - t287;
t238 = sin(qJ(5));
t241 = cos(qJ(5));
t181 = (-pkin(2) * t243 - pkin(9) * t240 - pkin(1)) * t236;
t162 = qJD(1) * t181;
t155 = pkin(9) * t225 + t186;
t328 = t242 * t155;
t120 = t162 * t239 + t328;
t99 = -qJ(4) * t166 + t120;
t294 = t341 * t99;
t119 = -t239 * t155 + t242 * t162;
t98 = -t168 * qJ(4) + t119;
t87 = -t267 * pkin(3) + t98;
t46 = t235 * t87 + t294;
t41 = -t267 * pkin(10) + t46;
t154 = -pkin(2) * t225 - t183;
t126 = pkin(3) * t166 + qJD(4) + t154;
t257 = -t235 * t166 + t341 * t168;
t60 = -pkin(4) * t287 - pkin(10) * t257 + t126;
t20 = t238 * t60 + t241 * t41;
t10 = qJ(6) * t361 + t20;
t272 = t240 * t292;
t185 = qJD(2) * t260;
t175 = qJD(1) * t185;
t330 = t236 * t240;
t226 = pkin(8) * t330;
t357 = pkin(1) * t243;
t187 = (t237 * t357 - t226) * qJD(2);
t176 = qJD(1) * t187;
t286 = t242 * t175 - t239 * t176;
t312 = qJD(3) * t242;
t321 = t225 * t312 + t242 * t274;
t48 = -t321 * qJ(4) - t168 * qJD(4) + pkin(3) * t272 + (-t328 + (qJ(4) * t298 - t162) * t239) * qJD(3) + t286;
t254 = t155 * t313 - t162 * t312 - t239 * t175 - t242 * t176;
t273 = qJD(3) * t298;
t301 = t225 * t313 + t239 * t274 + t242 * t273;
t54 = -t301 * qJ(4) - t166 * qJD(4) - t254;
t18 = t235 * t48 + t341 * t54;
t14 = pkin(10) * t272 + t18;
t310 = qJD(5) * t241;
t311 = qJD(5) * t238;
t249 = t239 * t273 - t321;
t100 = -t235 * t249 + t341 * t301;
t116 = t301 * pkin(3) + t177;
t246 = -t235 * t301 - t341 * t249;
t36 = t100 * pkin(4) - pkin(10) * t246 + t116;
t290 = t238 * t14 - t241 * t36 + t41 * t310 + t60 * t311;
t356 = pkin(5) * t100;
t2 = t290 - t356;
t366 = t10 * t361 - t2;
t345 = pkin(4) * t298 + t344;
t364 = t166 * t267;
t363 = t168 * t267;
t299 = -pkin(3) * t242 - pkin(2);
t143 = -pkin(4) * t256 - pkin(10) * t199 + t299;
t217 = t354 * t239;
t218 = t354 * t242;
t153 = t235 * t217 - t341 * t218;
t325 = t238 * t143 + t241 * t153;
t329 = t236 * t243;
t180 = pkin(8) * t329 + (pkin(1) * t240 + pkin(9)) * t237;
t324 = t242 * t180 + t239 * t181;
t362 = -t143 * t310 + t153 * t311 - t368 * t238 + t369 * t241;
t282 = t241 * t267;
t105 = t238 * t257 + t282;
t107 = -t238 * t267 + t241 * t257;
t91 = t235 * t99;
t45 = t341 * t87 - t91;
t40 = t267 * pkin(4) - t45;
t21 = t105 * pkin(5) - t107 * qJ(6) + t40;
t230 = pkin(3) * t235 + pkin(10);
t332 = t230 * t100;
t360 = t21 * t361 - t332;
t194 = -t237 * t242 + t239 * t330;
t296 = qJD(2) * t329;
t147 = -qJD(3) * t194 + t242 * t296;
t195 = t237 * t239 + t242 * t330;
t247 = -t324 * qJD(3) + t242 * t185 - t239 * t187;
t315 = qJD(2) * t240;
t297 = t236 * t315;
t65 = pkin(3) * t297 - t147 * qJ(4) - t195 * qJD(4) + t247;
t146 = qJD(3) * t195 + t239 * t296;
t253 = -t180 * t313 + t181 * t312 + t239 * t185 + t242 * t187;
t70 = -qJ(4) * t146 - qJD(4) * t194 + t253;
t28 = t235 * t65 + t341 * t70;
t26 = pkin(10) * t297 + t28;
t285 = -t180 * t239 + t242 * t181;
t103 = -pkin(3) * t329 - qJ(4) * t195 + t285;
t113 = -qJ(4) * t194 + t324;
t69 = t235 * t103 + t341 * t113;
t64 = -pkin(10) * t329 + t69;
t139 = t341 * t194 + t235 * t195;
t140 = -t235 * t194 + t341 * t195;
t179 = t226 + (-pkin(2) - t357) * t237;
t248 = t194 * pkin(3) + t179;
t84 = t139 * pkin(4) - t140 * pkin(10) + t248;
t265 = t238 * t84 + t241 * t64;
t112 = t341 * t146 + t235 * t147;
t258 = -t235 * t146 + t341 * t147;
t188 = t237 * pkin(1) * t315 + pkin(8) * t296;
t271 = t146 * pkin(3) + t188;
t43 = t112 * pkin(4) - pkin(10) * t258 + t271;
t359 = -qJD(5) * t265 - t238 * t26 + t241 * t43;
t358 = t107 ^ 2;
t17 = -t235 * t54 + t341 * t48;
t13 = -pkin(4) * t272 - t17;
t56 = qJD(5) * t282 - t238 * t272 - t241 * t246 + t257 * t311;
t245 = t238 * t246 - t241 * t272;
t57 = qJD(5) * t107 + t245;
t7 = t57 * pkin(5) + t56 * qJ(6) - t107 * qJD(6) + t13;
t355 = t7 * t238;
t353 = t322 * qJ(6) + qJD(6) * t256 + t362;
t352 = -t322 * pkin(5) - t325 * qJD(5) + t369 * t238 + t368 * t241;
t136 = t150 * t238 - t241 * t298;
t137 = t150 * t241 + t238 * t298;
t268 = pkin(5) * t238 - qJ(6) * t241;
t269 = t241 * pkin(5) + t238 * qJ(6);
t351 = t136 * pkin(5) - t137 * qJ(6) - t268 * t193 - (qJD(5) * t269 - qJD(6) * t241) * t199 - t345;
t53 = t341 * t98 - t91;
t79 = pkin(3) * t168 + pkin(4) * t257 - pkin(10) * t287;
t350 = t238 * t79 + t241 * t53;
t348 = t107 * t21;
t347 = t56 * t238;
t346 = -t105 * t310 - t238 * t57;
t52 = t235 * t98 + t294;
t342 = -t238 * qJD(6) + t361 * t268 - t52;
t340 = t100 * qJ(6);
t339 = t105 * t287;
t338 = t107 * t105;
t337 = t107 * t257;
t336 = t361 * t241;
t335 = t257 * t105;
t334 = t153 * t100;
t333 = t199 * t241;
t232 = t236 ^ 2;
t331 = t232 * qJD(1) ^ 2;
t95 = t238 * t100;
t96 = t241 * t100;
t19 = -t238 * t41 + t241 * t60;
t326 = qJD(6) - t19;
t320 = t240 ^ 2 - t243 ^ 2;
t314 = qJD(2) * t242;
t309 = t154 * qJD(3);
t308 = qJD(2) - t225;
t303 = t240 * t331;
t302 = t238 * t329;
t295 = t230 * t311;
t293 = t232 * t306;
t289 = -t193 * t238 + t136;
t288 = t193 * t241 - t137;
t152 = -t341 * t217 - t235 * t218;
t283 = t107 * t361;
t281 = t243 * t267;
t280 = t361 * t238;
t279 = t267 * t236;
t278 = t225 + t318;
t276 = 0.2e1 * t293;
t231 = -t341 * pkin(3) - pkin(4);
t270 = -0.2e1 * pkin(1) * t293;
t27 = -t235 * t70 + t341 * t65;
t264 = -t238 * t64 + t241 * t84;
t68 = t341 * t103 - t235 * t113;
t263 = t96 + (t238 * t287 - t311) * t361;
t262 = -t287 * t336 + t310 * t361 + t95;
t261 = t20 * t361 - t290;
t63 = pkin(4) * t329 - t68;
t123 = t140 * t238 + t241 * t329;
t3 = t241 * t14 + t238 * t36 + t60 * t310 - t41 * t311;
t259 = t238 * t43 + t241 * t26 + t84 * t310 - t64 * t311;
t255 = t361 * t40 - t332;
t251 = t199 * t310 - t289;
t250 = t199 * t311 - t288;
t25 = -pkin(4) * t297 - t27;
t196 = -t269 + t231;
t124 = t140 * t241 - t302;
t115 = t199 * t268 + t152;
t94 = pkin(5) * t256 - t143 * t241 + t153 * t238;
t90 = -qJ(6) * t256 + t325;
t75 = -qJD(5) * t302 + t140 * t310 + t238 * t258 - t241 * t297;
t74 = qJD(5) * t123 - t238 * t297 - t241 * t258;
t71 = pkin(5) * t107 + qJ(6) * t105;
t31 = t123 * pkin(5) - t124 * qJ(6) + t63;
t29 = t105 * t361 - t56;
t23 = -pkin(5) * t139 - t264;
t22 = qJ(6) * t139 + t265;
t16 = -pkin(5) * t257 + t238 * t53 - t241 * t79;
t15 = qJ(6) * t257 + t350;
t9 = -pkin(5) * t361 + t326;
t8 = t75 * pkin(5) + t74 * qJ(6) - t124 * qJD(6) + t25;
t6 = -t112 * pkin(5) - t359;
t5 = qJ(6) * t112 + qJD(6) * t139 + t259;
t1 = qJD(6) * t361 + t3 + t340;
t4 = [0, 0, 0, t240 * t243 * t276, -t320 * t276, t278 * t296, -t278 * t297, 0, -t177 * t237 - t188 * t225 + t240 * t270, -t176 * t237 - t187 * t225 + t243 * t270, t168 * t147 - t195 * t249, -t168 * t146 - t147 * t166 + t194 * t249 - t195 * t301, -t147 * t267 + t249 * t329 + (qJD(1) * t195 + t168) * t297, t146 * t267 + (t301 * t243 + (-qJD(1) * t194 - t166) * t315) * t236 (-t232 * t316 - t279) * t315, -t247 * t267 + t188 * t166 + t179 * t301 + t177 * t194 + t154 * t146 + (-(-qJD(3) * t120 + t286) * t243 + (qJD(1) * t285 + t119) * t315) * t236, t253 * t267 + t188 * t168 + t179 * t321 + t177 * t195 + t154 * t147 + (-t254 * t243 + (-t120 * qJD(2) + (-t324 * qJD(2) - t179 * t313) * qJD(1)) * t240) * t236, -t69 * t100 - t46 * t112 - t18 * t139 - t17 * t140 - t246 * t68 - t257 * t27 - t258 * t45 + t28 * t287, t116 * t248 + t126 * t271 + t17 * t68 + t18 * t69 + t45 * t27 + t46 * t28, -t107 * t74 - t124 * t56, t105 * t74 - t107 * t75 + t123 * t56 - t124 * t57, t100 * t124 + t107 * t112 - t139 * t56 - t361 * t74, -t100 * t123 - t105 * t112 - t139 * t57 - t361 * t75, t100 * t139 + t112 * t361, t264 * t100 + t25 * t105 + t19 * t112 + t13 * t123 - t139 * t290 + t359 * t361 + t40 * t75 + t63 * t57, -t265 * t100 + t25 * t107 - t20 * t112 + t13 * t124 - t3 * t139 - t259 * t361 - t40 * t74 - t63 * t56, -t100 * t23 + t105 * t8 - t112 * t9 + t123 * t7 - t139 * t2 + t21 * t75 + t31 * t57 - t361 * t6, -t1 * t123 - t10 * t75 - t105 * t5 + t107 * t6 + t124 * t2 - t22 * t57 - t23 * t56 - t74 * t9, t1 * t139 + t10 * t112 + t100 * t22 - t107 * t8 - t124 * t7 + t21 * t74 + t31 * t56 + t361 * t5, t1 * t22 + t10 * t5 + t2 * t23 + t21 * t8 + t31 * t7 + t6 * t9; 0, 0, 0, -t243 * t303, t320 * t331, t308 * t224, -t308 * t298, 0, pkin(1) * t303 + t186 * t225 - t177, pkin(8) * t272 + t183 * t225 + (-t237 * t306 + t331) * t357, -t239 * t249 - t242 * t363 (t321 + t364) * t242 + (-t168 * qJD(3) + (t168 * t243 - t240 * t312) * t319 - t301) * t239, -t242 * t277 + (t242 * t281 + (qJD(2) * t239 - t168) * t240) * t319, t239 * t277 + (-t239 * t281 + (t166 + t314) * t240) * t319, t279 * t317, -pkin(2) * t301 + t239 * t309 + t284 * t267 - t186 * t166 - t367 * t242 + (-t119 * t240 + (-pkin(9) * t315 - t154 * t243) * t239) * t319, -pkin(2) * t321 + t242 * t309 - t323 * t267 - t186 * t168 + t367 * t239 + (-t154 * t327 + (pkin(2) * t313 - pkin(9) * t314 + t120) * t240) * t319, t152 * t246 - t17 * t199 + t18 * t256 + t344 * t257 + t343 * t287 + t322 * t46 + t371 * t45 - t334, t116 * t299 + t370 * t126 - t17 * t152 + t18 * t153 + t343 * t46 - t344 * t45, -t107 * t250 - t56 * t333, t289 * t107 - t288 * t105 + (t347 - t241 * t57 + (t105 * t238 - t107 * t241) * qJD(5)) * t199, -t322 * t107 + t199 * t96 - t250 * t361 + t256 * t56, t322 * t105 - t199 * t95 - t251 * t361 + t256 * t57, -t100 * t256 - t322 * t361, -t40 * t136 + t152 * t57 + t290 * t256 - t322 * t19 + t345 * t105 + (t40 * qJD(5) * t199 + t143 * t100 + (-qJD(5) * t153 + t368) * t361) * t241 + (-t334 + t13 * t199 + t40 * t193 + (-qJD(5) * t143 + t369) * t361) * t238, -t325 * t100 + t345 * t107 + t13 * t333 - t152 * t56 + t322 * t20 - t250 * t40 + t256 * t3 + t361 * t362, -t94 * t100 - t351 * t105 + t115 * t57 + t199 * t355 + t2 * t256 + t251 * t21 + t322 * t9 + t352 * t361, -t94 * t56 - t90 * t57 + t288 * t9 - t352 * t107 + t353 * t105 + t289 * t10 + (-t1 * t238 + t2 * t241 + (-t10 * t241 - t238 * t9) * qJD(5)) * t199, -t1 * t256 - t322 * t10 + t90 * t100 + t351 * t107 + t115 * t56 + t250 * t21 - t7 * t333 - t353 * t361, t1 * t90 - t353 * t10 + t7 * t115 + t2 * t94 - t351 * t21 - t352 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t168 * t166, -t166 ^ 2 + t168 ^ 2, -t249 - t364, -t301 - t363, t272, -t120 * t224 - t154 * t168 + t286, -t119 * t267 + t154 * t166 + t254 (-t235 * t100 - t341 * t246) * pkin(3) + (-t53 + t45) * t287 + (t46 - t52) * t257, t45 * t52 - t46 * t53 + (-t126 * t168 + t341 * t17 + t18 * t235) * pkin(3), t241 * t283 - t347 (-t56 + t339) * t241 - t107 * t280 + t346, t262 - t337, t263 + t335, -t361 * t257, -t52 * t105 - t19 * t257 + t231 * t57 + (-t13 + (-qJD(5) * t230 - t79) * t361) * t241 + (t361 * t53 + t255) * t238, -t52 * t107 + t20 * t257 + t13 * t238 - t231 * t56 + (t295 + t350) * t361 + t255 * t241, t9 * t257 + t196 * t57 - t7 * t241 + (-t230 * t310 + t16) * t361 + t342 * t105 + t360 * t238, t15 * t105 - t16 * t107 + (-t287 * t9 - t230 * t57 + t1 + (t107 * t230 + t9) * qJD(5)) * t241 + (t10 * t287 - t230 * t56 + t2 + (t105 * t230 - t10) * qJD(5)) * t238, -t10 * t257 + t196 * t56 - t355 + (-t15 - t295) * t361 - t342 * t107 - t360 * t241, -t10 * t15 - t9 * t16 + t7 * t196 + t342 * t21 + (t1 * t241 + t2 * t238 + (-t10 * t238 + t241 * t9) * qJD(5)) * t230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257 ^ 2 - t287 ^ 2, t257 * t45 - t287 * t46 + t116, 0, 0, 0, 0, 0, t263 - t335, -t336 * t361 - t337 - t95, -t280 * t361 - t335 + t96 (t56 + t339) * t241 + t238 * t283 + t346, t262 + t337, -t21 * t257 + t366 * t241 + (t361 * t9 + t1) * t238; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t338, -t105 ^ 2 + t358, t29, -t245 + (-qJD(5) + t361) * t107, t100, -t107 * t40 + t261, t105 * t40 + t19 * t361 - t3, -t105 * t71 + t261 - t348 + 0.2e1 * t356, pkin(5) * t56 - t57 * qJ(6) + (t10 - t20) * t107 + (t9 - t326) * t105, 0.2e1 * t340 - t21 * t105 + t71 * t107 + (0.2e1 * qJD(6) - t19) * t361 + t3, -t2 * pkin(5) + t1 * qJ(6) + t10 * t326 - t9 * t20 - t21 * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t100 + t338, t29, -t361 ^ 2 - t358, t348 - t366;];
tauc_reg  = t4;
