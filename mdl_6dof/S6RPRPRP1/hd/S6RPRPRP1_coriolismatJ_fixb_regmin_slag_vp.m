% Calculate minimal parameter regressor of coriolis matrix for
% S6RPRPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x22]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRPRP1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:03:05
% EndTime: 2019-03-09 03:03:13
% DurationCPUTime: 3.34s
% Computational Cost: add. (5965->266), mult. (10913->389), div. (0->0), fcn. (11629->8), ass. (0->242)
t215 = sin(qJ(3));
t206 = sin(pkin(9)) * pkin(1) + pkin(7);
t305 = qJ(4) + t206;
t188 = t305 * t215;
t217 = cos(qJ(3));
t191 = t305 * t217;
t212 = sin(pkin(10));
t338 = cos(pkin(10));
t107 = t338 * t188 + t212 * t191;
t216 = cos(qJ(5));
t367 = t107 * t216;
t368 = t367 / 0.2e1;
t214 = sin(qJ(5));
t169 = t338 * t191;
t319 = t212 * t188;
t364 = t169 - t319;
t332 = t364 * t214;
t331 = t364 * t216;
t255 = t338 * t215;
t318 = t212 * t217;
t196 = t255 + t318;
t124 = t214 * t196;
t254 = 0.2e1 * t216 * t124;
t194 = t212 * t215 - t338 * t217;
t354 = t194 * pkin(5);
t320 = t196 * t216;
t208 = -cos(pkin(9)) * pkin(1) - pkin(2);
t237 = -t217 * pkin(3) + t208;
t100 = t194 * pkin(4) - t196 * pkin(8) + t237;
t70 = -t216 * t100 + t332;
t59 = -qJ(6) * t320 - t70;
t47 = t59 + t354;
t366 = -t47 + t59;
t205 = t212 * pkin(3) + pkin(8);
t304 = qJ(6) + t205;
t190 = t304 * t216;
t275 = t59 / 0.2e1 - t47 / 0.2e1;
t365 = t275 * t190;
t122 = t214 * t194;
t113 = t122 * qJD(5);
t297 = qJD(3) * t216;
t180 = t196 * t297;
t363 = -t180 + t113;
t192 = t194 ^ 2;
t193 = t196 ^ 2;
t362 = -t193 - t192;
t276 = t354 / 0.2e1;
t361 = t276 + t275;
t189 = t255 / 0.2e1 + t318 / 0.2e1;
t353 = t215 * pkin(3);
t127 = t196 * pkin(4) + t194 * pkin(8) + t353;
t105 = t216 * t127;
t126 = t216 * t194;
t317 = t107 * t214;
t51 = t196 * pkin(5) + qJ(6) * t126 + t105 + t317;
t359 = t51 / 0.2e1;
t211 = t216 ^ 2;
t357 = -t211 / 0.2e1;
t356 = t214 / 0.2e1;
t355 = pkin(5) * t214;
t352 = t216 * pkin(5);
t71 = t214 * t100 + t331;
t60 = -qJ(6) * t124 + t71;
t344 = t60 * t216;
t348 = t47 * t214;
t351 = -t348 / 0.2e1 + t344 / 0.2e1;
t350 = pkin(5) * qJD(5);
t349 = qJD(3) * pkin(3);
t347 = t51 * t214;
t346 = t51 * t216;
t6 = t361 * t320;
t345 = t6 * qJD(1);
t104 = t214 * t127;
t339 = -t104 + t367;
t64 = qJ(6) * t122 - t339;
t343 = t64 * t214;
t342 = t64 * t216;
t235 = t276 - t275;
t7 = t235 * t216;
t341 = t7 * qJD(1);
t80 = pkin(5) * t124 + t107;
t340 = t80 * t214;
t280 = t193 - t192;
t87 = t280 * t214;
t337 = qJD(1) * t87;
t88 = t362 * t214;
t336 = qJD(1) * t88;
t89 = t280 * t216;
t335 = qJD(1) * t89;
t210 = t214 ^ 2;
t257 = -t210 / 0.2e1 + t357;
t250 = t257 * t196;
t85 = t250 + t189;
t334 = qJD(6) * t85;
t246 = t60 * t214 + t47 * t216;
t10 = (t343 + t346) * t196 - t246 * t194;
t333 = t10 * qJD(1);
t11 = t366 * t124;
t329 = t11 * qJD(1);
t12 = t235 * t214;
t328 = t12 * qJD(1);
t207 = -t338 * pkin(3) - pkin(4);
t198 = t207 - t352;
t321 = t196 * t198;
t260 = t321 / 0.2e1;
t324 = t190 * t216;
t187 = t304 * t214;
t326 = t187 * t214;
t219 = (-t324 / 0.2e1 - t326 / 0.2e1) * t194 + t260;
t234 = -t346 / 0.2e1 - t343 / 0.2e1;
t18 = t219 + t234;
t327 = t18 * qJD(1);
t19 = (-t70 + t332) * t196 + t105 * t194;
t325 = t19 * qJD(1);
t323 = t194 * t196;
t322 = t194 * t212;
t22 = t246 * t196;
t316 = t22 * qJD(1);
t31 = -t107 * t124 + t70 * t194;
t314 = t31 * qJD(1);
t32 = t107 * t320 - t71 * t194;
t313 = t32 * qJD(1);
t58 = t107 * t196 - t194 * t364;
t312 = t58 * qJD(1);
t66 = (0.1e1 / 0.2e1 + t257) * t323;
t310 = t66 * qJD(1);
t86 = t250 - t189;
t308 = t86 * qJD(1);
t307 = t86 * qJD(6);
t256 = t338 * t196;
t223 = -t322 / 0.2e1 - t256 / 0.2e1;
t93 = (-t215 / 0.2e1 + t223) * pkin(3);
t306 = t93 * qJD(1);
t201 = t210 + t211;
t202 = t211 - t210;
t302 = qJD(1) * t194;
t301 = qJD(1) * t196;
t300 = qJD(1) * t216;
t299 = qJD(1) * t217;
t298 = qJD(3) * t214;
t296 = qJD(4) * t216;
t295 = qJD(5) * t214;
t294 = qJD(5) * t216;
t112 = t122 * qJD(1);
t293 = t124 * qJD(1);
t292 = t126 * qJD(1);
t291 = t126 * qJD(3);
t183 = t210 * t194;
t184 = t211 * t194;
t128 = t183 + t184;
t290 = t128 * qJD(1);
t289 = t128 * qJD(3);
t129 = t201 * t193;
t288 = t129 * qJD(1);
t131 = t362 * t216;
t287 = t131 * qJD(1);
t286 = t362 * qJD(1);
t285 = t189 * qJD(1);
t284 = t201 * qJD(3);
t203 = -t215 ^ 2 + t217 ^ 2;
t283 = t203 * qJD(1);
t282 = t215 * qJD(3);
t281 = t217 * qJD(3);
t279 = pkin(5) * t320;
t278 = pkin(5) * t122;
t277 = pkin(5) * t295;
t274 = t190 * t124;
t272 = -t344 / 0.2e1;
t271 = -t104 / 0.2e1 + t368;
t270 = t196 * t295;
t269 = t196 * t294;
t268 = t194 * t301;
t267 = qJD(3) * t323;
t266 = t208 * t215 * qJD(1);
t265 = t208 * t299;
t264 = t214 * t294;
t263 = t214 * t297;
t262 = t215 * t299;
t261 = t196 * t300;
t259 = -t320 / 0.2e1;
t253 = pkin(5) * t269;
t252 = t214 * t276;
t251 = -qJD(5) - t302;
t249 = qJD(3) * t254;
t79 = t364 - t278;
t4 = (t342 / 0.2e1 - t347 / 0.2e1 + t80 / 0.2e1) * t196 + (t272 + t348 / 0.2e1 + t79 / 0.2e1) * t194;
t5 = t47 * t51 + t60 * t64 + t79 * t80;
t248 = t5 * qJD(1) + t4 * qJD(2);
t9 = t80 * t279 + t366 * t60;
t247 = t9 * qJD(1) + t6 * qJD(2);
t68 = (0.1e1 - t201) * t323;
t245 = t4 * qJD(1) + t68 * qJD(2);
t2 = -t365 + (t359 + t198 * t259 - t340 / 0.2e1) * pkin(5);
t72 = t198 * t355;
t244 = -t2 * qJD(1) + t72 * qJD(3);
t16 = t80 * t196 + (-t344 + t348) * t194;
t243 = -t16 * qJD(1) - t66 * qJD(2);
t20 = (-t71 + t331) * t196 + (-t367 + t339) * t194;
t242 = t20 * qJD(1);
t29 = t237 * t353;
t241 = t29 * qJD(1);
t239 = -t324 - t326;
t238 = -t194 * t207 - t196 * t205;
t236 = t251 * t216;
t233 = t205 * t194 / 0.2e1 - t207 * t196 / 0.2e1;
t222 = t233 * t216;
t27 = -t105 / 0.2e1 - t222;
t232 = -t27 * qJD(1) - t207 * t298;
t218 = t233 * t214 + t368;
t25 = t218 - t271;
t231 = -t25 * qJD(1) - t207 * t297;
t230 = t196 * t236;
t120 = (t210 / 0.2e1 + t357) * t196;
t229 = -t120 * qJD(1) + t263;
t228 = t189 * qJD(5) + t268;
t137 = -t274 / 0.2e1;
t227 = -t187 * t259 + t137 + t351;
t226 = t193 * t214 * t300 + t120 * qJD(3);
t130 = t202 * t193;
t225 = t130 * qJD(1) + t249;
t224 = qJD(1) * t254 - t202 * qJD(3);
t220 = -t169 / 0.2e1 + t319 / 0.2e1 + t252;
t15 = t220 + t227;
t221 = t15 * qJD(1) - t85 * qJD(2) - qJD(3) * t239;
t182 = t189 * qJD(3);
t179 = t196 * t298;
t154 = (t261 + t298) * pkin(5);
t117 = t126 * qJD(5);
t111 = t122 * qJD(3);
t110 = t120 * qJD(5);
t92 = t353 / 0.2e1 + t223 * pkin(3);
t91 = -t112 - t295;
t63 = t137 + t274 / 0.2e1 + t278;
t28 = t107 * t356 + t317 / 0.2e1 + t105 / 0.2e1 - t222;
t26 = t218 + t271;
t17 = t219 - t234;
t14 = -t220 + t227;
t13 = t59 * t356 + t252 + t272 + t351;
t8 = t361 * t216;
t3 = t260 * t352 + t365 + (t340 / 0.2e1 + t359) * pkin(5);
t1 = qJD(3) * t4 + qJD(4) * t66 + qJD(5) * t6;
t21 = [0, 0, 0, 0, t215 * t281, t203 * qJD(3), 0, 0, 0, t208 * t282, t208 * t281, -qJD(4) * t362, qJD(3) * t29 + qJD(4) * t58, -t193 * t264 - t211 * t267, -t130 * qJD(5) + t194 * t249, t89 * qJD(3) - t194 * t270, -t87 * qJD(3) - t194 * t269, t267, t19 * qJD(3) - qJD(4) * t88 + t32 * qJD(5), t20 * qJD(3) - qJD(4) * t131 + t31 * qJD(5), -t10 * qJD(3) - t11 * qJD(5) + qJD(6) * t129, qJD(3) * t5 + qJD(4) * t16 + qJD(5) * t9 - qJD(6) * t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, t262, t283, t281, -t282, 0, -t206 * t281 + t266, t206 * t282 + t265 (t338 * t194 - t196 * t212) * t349 (-t107 * t212 - t338 * t364) * t349 + t92 * qJD(4) + t241, -t110 + (-t211 * t301 - t263) * t194 (t183 - t184) * qJD(3) + (-qJD(5) + t302) * t254, t179 + t335, t180 - t337, t228, t325 + (t214 * t238 - t331) * qJD(3) + t28 * qJD(5) (t216 * t238 + t332) * qJD(3) + t26 * qJD(5) + t242, -t333 + (-t347 + t342 + (-t187 * t216 + t190 * t214) * t194) * qJD(3) + t8 * qJD(5) (-t51 * t187 + t64 * t190 + t79 * t198) * qJD(3) + t17 * qJD(4) + t3 * qJD(5) + t14 * qJD(6) + t248; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t286, qJD(3) * t92 + t312, 0, 0, 0, 0, 0, -t336, -t287, 0, t17 * qJD(3) + t13 * qJD(5) - t243 + t334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t226, -t225, t251 * t124, t230, t182, t28 * qJD(3) - t71 * qJD(5) + t313, qJD(3) * t26 + qJD(5) * t70 + t314, pkin(5) * t270 + t8 * qJD(3) - t329, qJD(3) * t3 + qJD(4) * t13 - t60 * t350 + t247; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t288, t14 * qJD(3) + qJD(4) * t85 - t316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, -t282, -t281, 0 (-t256 - t322) * t349, 0, 0, 0, 0, 0, t363, t117 + t179, -t289 (t194 * t239 + t321) * qJD(3) + t63 * qJD(5) - t307 + t245; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111 - t269, t270 + t291, 0, t63 * qJD(3) - t253 + t345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86 * qJD(3); 0, 0, 0, 0, -t262, -t283, 0, 0, 0, -t266, -t265, 0, qJD(4) * t93 - t241, t211 * t268 - t110, 0.2e1 * t214 * t230, t117 - t335, -t113 + t337, -t228, t27 * qJD(5) - t196 * t296 - t325, qJD(4) * t124 + t25 * qJD(5) - t242, -qJD(4) * t128 - t7 * qJD(5) + t333, qJD(4) * t18 - qJD(5) * t2 + qJD(6) * t15 - t248; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t245 - t334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t264, t202 * qJD(5), 0, 0, 0, t207 * t295, t207 * t294, t201 * qJD(6), t72 * qJD(5) - qJD(6) * t239; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t306, 0, 0, 0, 0, 0, -t261, t293, -t290, t327; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229, -t224, t292 + t294, t91, -t285, -t205 * t294 - t232, t205 * t295 - t231, -pkin(5) * t294 - t341, -t190 * t350 + t244; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284, t221; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t286, -qJD(3) * t93 - t312, 0, 0, 0, 0, 0, t336 - t363, -t124 * qJD(3) - t194 * t294 + t287, t289, -t18 * qJD(3) - t12 * qJD(5) + t243 + t307; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t306, 0, 0, 0, 0, 0, t261, -t293, t290, -t327; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91, t236, 0, -t277 - t328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t226, t225, t214 * t268 - t291, t194 * t261 + t111, t182, -t27 * qJD(3) + qJD(4) * t122 - t313, -t25 * qJD(3) + t194 * t296 - t314, qJD(3) * t7 + t329, t2 * qJD(3) + t12 * qJD(4) - qJD(6) * t279 - t247; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t229, t224, -t292, t112, t285, t232, t231, t341, -qJD(6) * t355 - t244; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112, t194 * t300, 0, t328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t288, -t15 * qJD(3) - t86 * qJD(4) + t253 + t316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t85 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t284, -t221 + t277; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t21;
