% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6PRRRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1,theta5]';
% 
% Output:
% tauc_reg [6x29]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 23:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6PRRRPR7_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR7_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR7_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRPR7_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 23:44:37
% EndTime: 2019-03-08 23:44:59
% DurationCPUTime: 8.52s
% Computational Cost: add. (8035->511), mult. (22141->757), div. (0->0), fcn. (18322->14), ass. (0->242)
t225 = sin(pkin(7));
t232 = sin(qJ(3));
t327 = t225 * t232;
t215 = pkin(9) * t327;
t228 = cos(pkin(7));
t236 = cos(qJ(3));
t237 = cos(qJ(2));
t316 = t236 * t237;
t233 = sin(qJ(2));
t320 = t232 * t233;
t251 = -t228 * t320 + t316;
t226 = sin(pkin(6));
t309 = qJD(1) * t226;
t321 = t228 * t236;
t313 = t251 * t309 - (pkin(2) * t321 - t215) * qJD(3);
t265 = pkin(3) * t232 - pkin(10) * t236;
t250 = t265 * qJD(3);
t285 = t233 * t309;
t368 = (t250 - t285) * t225;
t231 = sin(qJ(4));
t235 = cos(qJ(4));
t305 = qJD(2) * t228;
t278 = qJD(3) + t305;
t307 = qJD(2) * t225;
t290 = t232 * t307;
t357 = -t231 * t290 + t235 * t278;
t159 = qJD(6) - t357;
t167 = t231 * t278 + t235 * t290;
t224 = sin(pkin(13));
t227 = cos(pkin(13));
t304 = qJD(2) * t236;
t289 = t225 * t304;
t366 = qJD(4) - t289;
t129 = t167 * t224 - t227 * t366;
t234 = cos(qJ(6));
t131 = t167 * t227 + t224 * t366;
t230 = sin(qJ(6));
t336 = t131 * t230;
t361 = -t234 * t129 - t336;
t367 = t361 * t159;
t326 = t225 * t236;
t295 = pkin(9) * t326;
t175 = t295 + (pkin(2) * t232 + pkin(10)) * t228;
t266 = -pkin(3) * t236 - pkin(10) * t232;
t176 = (-pkin(2) + t266) * t225;
t299 = qJD(4) * t235;
t300 = qJD(4) * t231;
t365 = -t175 * t300 + t176 * t299 + t368 * t231 - t313 * t235;
t318 = t233 * t236;
t319 = t232 * t237;
t253 = t228 * t318 + t319;
t322 = t228 * t232;
t311 = -t253 * t309 + (pkin(2) * t322 + t295) * qJD(3);
t302 = qJD(3) * t232;
t364 = -(qJ(5) * t302 - qJD(5) * t236) * t225 - t365;
t190 = -t235 * t228 + t231 * t327;
t303 = qJD(3) * t225;
t287 = t236 * t303;
t147 = -qJD(4) * t190 + t235 * t287;
t191 = t228 * t231 + t235 * t327;
t148 = qJD(4) * t191 + t231 * t287;
t363 = pkin(4) * t148 - qJ(5) * t147 - qJD(5) * t191 + t311;
t229 = cos(pkin(6));
t308 = qJD(1) * t229;
t291 = t225 * t308;
t193 = pkin(9) * t307 + t285;
t349 = qJD(2) * pkin(2);
t203 = t237 * t309 + t349;
t354 = t236 * t193 + t203 * t322;
t115 = t232 * t291 + t354;
t362 = -t231 * qJD(5) - t115 + t366 * (pkin(4) * t231 - qJ(5) * t235);
t258 = t129 * t230 - t131 * t234;
t360 = t159 * t258;
t358 = t175 * t299 + t176 * t300 - t313 * t231 - t368 * t235;
t351 = t364 * t224 + t363 * t227;
t350 = t363 * t224 - t364 * t227;
t288 = t225 * t302;
t344 = -pkin(4) * t288 + t358;
t294 = pkin(10) * t300;
t184 = t232 * t193;
t332 = t203 * t228;
t114 = t236 * (t291 + t332) - t184;
t179 = t265 * t307;
t314 = t235 * t114 + t231 * t179;
t71 = qJ(5) * t290 + t314;
t343 = t362 * t227 + (t294 + t71) * t224;
t356 = -t362 * t224 + t227 * t71;
t355 = t232 * t236;
t296 = qJD(2) * qJD(3);
t284 = t225 * t296;
t269 = t236 * t284;
t135 = qJD(4) * t167 + t231 * t269;
t134 = t357 * qJD(4) + t235 * t269;
t270 = t232 * t284;
t106 = t134 * t224 - t227 * t270;
t107 = t134 * t227 + t224 * t270;
t24 = -qJD(6) * t258 + t234 * t106 + t230 * t107;
t238 = qJD(2) ^ 2;
t353 = pkin(5) * t231;
t352 = pkin(11) + qJ(5);
t100 = pkin(10) * t278 + t115;
t214 = t228 * t308;
t128 = t214 + (qJD(2) * t266 - t203) * t225;
t140 = (t250 + t285) * t307;
t241 = t251 * qJD(2);
t271 = t229 * t287;
t75 = (t203 * t321 - t184) * qJD(3) + (t226 * t241 + t271) * qJD(1);
t244 = t100 * t300 - t128 * t299 - t231 * t140 - t235 * t75;
t16 = qJ(5) * t270 + qJD(5) * t366 - t244;
t242 = t253 * qJD(2);
t272 = t229 * t288;
t76 = t354 * qJD(3) + (t226 * t242 + t272) * qJD(1);
t32 = pkin(4) * t135 - qJ(5) * t134 - qJD(5) * t167 + t76;
t9 = t227 * t16 + t224 * t32;
t58 = t235 * t100 + t231 * t128;
t50 = qJ(5) * t366 + t58;
t99 = -pkin(3) * t278 - t114;
t59 = -pkin(4) * t357 - t167 * qJ(5) + t99;
t19 = t224 * t59 + t227 * t50;
t174 = t215 + (-pkin(2) * t236 - pkin(3)) * t228;
t101 = pkin(4) * t190 - qJ(5) * t191 + t174;
t312 = t235 * t175 + t231 * t176;
t104 = -qJ(5) * t326 + t312;
t48 = t224 * t101 + t227 * t104;
t280 = t100 * t299 + t128 * t300 - t235 * t140 + t231 * t75;
t17 = -pkin(4) * t270 + t280;
t348 = t17 * t224;
t347 = t17 * t227;
t328 = t224 * t235;
t151 = -t227 * t290 + t289 * t328;
t317 = t235 * t236;
t152 = (t224 * t232 + t227 * t317) * t307;
t329 = t224 * t230;
t197 = -t234 * t227 + t329;
t198 = t224 * t234 + t227 * t230;
t298 = qJD(6) * t231;
t346 = t151 * t230 - t152 * t234 - t197 * t299 - t198 * t298;
t297 = qJD(6) * t234;
t324 = t227 * t231;
t345 = -t234 * t151 - t152 * t230 + t198 * t299 + t297 * t324 - t298 * t329;
t342 = -t227 * t294 - t356;
t341 = t159 * t197;
t340 = t159 * t198;
t292 = pkin(5) * t224 + pkin(10);
t282 = -t231 * t114 + t179 * t235;
t74 = -pkin(4) * t290 - t282;
t339 = -pkin(5) * t151 + t292 * t299 - t74;
t120 = t147 * t224 - t227 * t288;
t338 = pkin(5) * t120 + t344;
t113 = pkin(4) * t167 - qJ(5) * t357;
t57 = -t231 * t100 + t128 * t235;
t37 = t224 * t113 + t227 * t57;
t337 = qJ(5) * t135;
t335 = t357 * t366;
t334 = t357 * t224;
t333 = t167 * t366;
t246 = t366 * t231;
t331 = t366 * t235;
t221 = t225 ^ 2;
t330 = t221 * t238;
t325 = t226 * t238;
t323 = t227 * t235;
t49 = -pkin(4) * t366 + qJD(5) - t57;
t315 = -qJD(5) + t49;
t208 = -pkin(4) * t235 - qJ(5) * t231 - pkin(3);
t164 = pkin(10) * t323 + t224 * t208;
t310 = t232 ^ 2 - t236 ^ 2;
t306 = qJD(2) * t226;
t301 = qJD(3) * t235;
t293 = t233 * t325;
t286 = t225 * t228 * t238;
t8 = -t16 * t224 + t227 * t32;
t18 = -t224 * t50 + t227 * t59;
t47 = t227 * t101 - t104 * t224;
t36 = t227 * t113 - t224 * t57;
t281 = -t231 * t175 + t176 * t235;
t279 = 0.2e1 * t221 * t296;
t277 = qJD(3) + 0.2e1 * t305;
t276 = t221 * t293;
t274 = t225 * t233 * t306;
t121 = t147 * t227 + t224 * t288;
t145 = t191 * t224 + t227 * t326;
t41 = -pkin(11) * t145 + t48;
t268 = -pkin(5) * t148 + pkin(11) * t121 + qJD(6) * t41 - t351;
t146 = t191 * t227 - t224 * t326;
t33 = pkin(5) * t190 - pkin(11) * t146 + t47;
t267 = pkin(11) * t120 - qJD(6) * t33 - t350;
t6 = pkin(5) * t135 - pkin(11) * t107 + t8;
t7 = -pkin(11) * t106 + t9;
t264 = t230 * t6 + t234 * t7;
t149 = -pkin(11) * t224 * t231 + t164;
t263 = -pkin(11) * t152 + qJD(6) * t149 + t289 * t353 - (-pkin(11) * t323 + t353) * qJD(4) - t343;
t195 = t227 * t208;
t138 = -pkin(11) * t324 + t195 + (-pkin(10) * t224 - pkin(5)) * t235;
t262 = -pkin(11) * t151 - qJD(6) * t138 - (-pkin(10) * t324 - pkin(11) * t328) * qJD(4) + t356;
t105 = pkin(4) * t326 - t281;
t11 = -pkin(5) * t357 - pkin(11) * t131 + t18;
t13 = -pkin(11) * t129 + t19;
t3 = t11 * t234 - t13 * t230;
t4 = t11 * t230 + t13 * t234;
t252 = t228 * t319 + t318;
t142 = t226 * t252 + t229 * t327;
t187 = -t225 * t226 * t237 + t228 * t229;
t103 = t142 * t235 + t187 * t231;
t254 = t228 * t316 - t320;
t141 = -t226 * t254 - t229 * t326;
t64 = -t103 * t224 + t141 * t227;
t65 = t103 * t227 + t141 * t224;
t260 = -t230 * t65 + t234 * t64;
t259 = t230 * t64 + t234 * t65;
t102 = t142 * t231 - t187 * t235;
t82 = t234 * t145 + t146 * t230;
t83 = -t145 * t230 + t146 * t234;
t158 = -t225 * t203 + t214;
t255 = t158 * t225 - t221 * t349;
t210 = t352 * t224;
t248 = -pkin(11) * t334 - qJD(5) * t227 + qJD(6) * t210 + t37;
t211 = t352 * t227;
t247 = -pkin(11) * t227 * t357 + pkin(5) * t167 + qJD(5) * t224 + qJD(6) * t211 + t36;
t23 = -qJD(6) * t336 - t230 * t106 + t234 * t107 - t129 * t297;
t240 = qJD(3) * t193 + t285 * t305;
t2 = -qJD(6) * t4 - t230 * t7 + t234 * t6;
t239 = -t158 * t307 - qJD(3) * t332 + (-t229 * t303 - t237 * t306) * qJD(1);
t220 = -pkin(5) * t227 - pkin(4);
t199 = t292 * t231;
t178 = t197 * t231;
t177 = t198 * t231;
t163 = -pkin(10) * t328 + t195;
t88 = t271 + (qJD(3) * t254 + t241) * t226;
t87 = t272 + (qJD(3) * t252 + t242) * t226;
t69 = pkin(5) * t145 + t105;
t45 = pkin(5) * t334 + t58;
t44 = -qJD(4) * t102 + t231 * t274 + t235 * t88;
t43 = qJD(4) * t103 + t231 * t88 - t235 * t274;
t40 = pkin(5) * t129 + t49;
t35 = qJD(6) * t83 + t234 * t120 + t230 * t121;
t34 = -qJD(6) * t82 - t230 * t120 + t234 * t121;
t26 = t224 * t87 + t227 * t44;
t25 = -t224 * t44 + t227 * t87;
t12 = pkin(5) * t106 + t17;
t1 = qJD(6) * t3 + t264;
t5 = [0, 0, -t293, -t237 * t325, 0, 0, 0, 0, 0, t187 * t270 - t236 * t276 - t278 * t87, t187 * t269 + t232 * t276 - t278 * t88, 0, 0, 0, 0, 0, -t102 * t270 + t135 * t141 - t357 * t87 - t366 * t43, -t103 * t270 + t134 * t141 + t167 * t87 - t366 * t44, t102 * t106 + t129 * t43 + t64 * t135 - t25 * t357, t102 * t107 + t131 * t43 - t65 * t135 + t26 * t357, -t106 * t65 - t107 * t64 - t129 * t26 - t131 * t25, t102 * t17 + t18 * t25 + t19 * t26 + t43 * t49 + t64 * t8 + t65 * t9, 0, 0, 0, 0, 0 (-qJD(6) * t259 - t230 * t26 + t234 * t25) * t159 + t260 * t135 - t43 * t361 + t102 * t24 -(qJD(6) * t260 + t230 * t25 + t234 * t26) * t159 - t259 * t135 - t43 * t258 + t102 * t23; 0, 0, 0, 0, t279 * t355, -t310 * t279, t277 * t287, -t277 * t288, 0 (-qJD(2) * t311 - t76) * t228 + (t232 * t255 - t311) * qJD(3) (qJD(2) * t313 - t75) * t228 + (t236 * t255 + t313) * qJD(3), t134 * t191 + t147 * t167, -t134 * t190 - t135 * t191 + t147 * t357 - t148 * t167, t147 * t366 + (-t134 * t236 + (qJD(2) * t191 + t167) * t302) * t225, -t148 * t366 + (t135 * t236 + (-qJD(2) * t190 + t357) * t302) * t225 (-t221 * t304 + t225 * t366) * t302, t174 * t135 + t99 * t148 + t76 * t190 - t358 * t366 - t311 * t357 + (t280 * t236 + (qJD(2) * t281 + t57) * t302) * t225, t174 * t134 + t99 * t147 + t76 * t191 - t365 * t366 + t311 * t167 + (-t244 * t236 + (-qJD(2) * t312 - t58) * t302) * t225, t105 * t106 + t120 * t49 + t344 * t129 + t135 * t47 + t145 * t17 + t148 * t18 + t190 * t8 - t351 * t357, t105 * t107 + t121 * t49 + t344 * t131 - t135 * t48 + t146 * t17 - t148 * t19 - t190 * t9 + t350 * t357, -t106 * t48 - t107 * t47 - t120 * t19 - t121 * t18 - t350 * t129 - t351 * t131 - t145 * t9 - t146 * t8, t105 * t17 + t351 * t18 + t350 * t19 + t344 * t49 + t47 * t8 + t48 * t9, t23 * t83 - t258 * t34, -t23 * t82 - t24 * t83 + t258 * t35 + t34 * t361, t135 * t83 - t148 * t258 + t159 * t34 + t190 * t23, -t135 * t82 + t148 * t361 - t159 * t35 - t190 * t24, t135 * t190 + t148 * t159 (-t230 * t41 + t234 * t33) * t135 + t2 * t190 + t3 * t148 + t69 * t24 + t12 * t82 + t40 * t35 - t338 * t361 + (t230 * t267 - t234 * t268) * t159 -(t230 * t33 + t234 * t41) * t135 - t1 * t190 - t4 * t148 + t69 * t23 + t12 * t83 + t40 * t34 - t338 * t258 + (t230 * t268 + t234 * t267) * t159; 0, 0, 0, 0, -t330 * t355, t310 * t330, -t236 * t286, t232 * t286, 0, t115 * t278 + t232 * t239 - t236 * t240, t114 * t278 + t232 * t240 + t236 * t239, t134 * t231 + t167 * t331 (t134 + t335) * t235 + (-t135 - t333) * t231, t366 * t299 + (-t366 * t317 + (t231 * qJD(3) - t167) * t232) * t307, -t366 * t300 + (t236 * t246 + (-t357 + t301) * t232) * t307, -t366 * t290, -pkin(3) * t135 - t76 * t235 - t282 * t366 + t115 * t357 + (-pkin(10) * t331 + t231 * t99) * qJD(4) + (-t232 * t57 + (-pkin(10) * t302 - t236 * t99) * t231) * t307, -pkin(3) * t134 + t76 * t231 - t115 * t167 + t314 * t366 + (pkin(10) * t246 + t235 * t99) * qJD(4) + (-t99 * t317 + (-pkin(10) * t301 + t58) * t232) * t307, -t129 * t74 + t135 * t163 - t151 * t49 - t343 * t357 + (-t8 + (pkin(10) * t129 + t224 * t49) * qJD(4)) * t235 + (pkin(10) * t106 + t18 * t366 + t348) * t231, -t131 * t74 - t135 * t164 - t152 * t49 + t342 * t357 + (t9 + (pkin(10) * t131 + t227 * t49) * qJD(4)) * t235 + (pkin(10) * t107 - t19 * t366 + t347) * t231, -t106 * t164 - t107 * t163 + t151 * t19 + t152 * t18 + (-t224 * t9 - t227 * t8) * t231 - t343 * t131 - t342 * t129 + (-t18 * t227 - t19 * t224) * t299, t163 * t8 + t164 * t9 - t49 * t74 + t342 * t19 + t343 * t18 + (t17 * t231 + t299 * t49) * pkin(10), -t23 * t178 - t258 * t346, -t177 * t23 + t178 * t24 + t258 * t345 + t346 * t361, -t135 * t178 + t159 * t346 - t23 * t235 - t246 * t258, -t135 * t177 - t159 * t345 + t235 * t24 + t246 * t361, -t135 * t235 + t159 * t246 (t138 * t234 - t149 * t230) * t135 - t2 * t235 + t199 * t24 + t12 * t177 - t339 * t361 + t345 * t40 + t3 * t246 + (t230 * t262 - t234 * t263) * t159 -(t138 * t230 + t149 * t234) * t135 + t1 * t235 + t199 * t23 - t12 * t178 - t339 * t258 + t346 * t40 - t4 * t246 + (t230 * t263 + t234 * t262) * t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t167 * t357, t167 ^ 2 - t357 ^ 2, t134 - t335, -t135 + t333, t270, -t167 * t99 + t366 * t58 - t280, -t357 * t99 + t366 * t57 + t244, -t224 * t337 - pkin(4) * t106 - t129 * t58 - t167 * t18 - t347 - (t224 * t315 - t36) * t357, -t227 * t337 - pkin(4) * t107 - t131 * t58 + t167 * t19 + t348 - (t227 * t315 + t37) * t357, t129 * t37 + t131 * t36 + (-qJ(5) * t106 - qJD(5) * t129 + t18 * t357 + t9) * t227 + (qJ(5) * t107 + qJD(5) * t131 + t19 * t357 - t8) * t224, -pkin(4) * t17 - t18 * t36 - t19 * t37 - t49 * t58 + (-t18 * t224 + t19 * t227) * qJD(5) + (-t224 * t8 + t227 * t9) * qJ(5), t23 * t198 + t258 * t341, -t197 * t23 - t198 * t24 + t258 * t340 - t341 * t361, t198 * t135 - t159 * t341 + t167 * t258, -t197 * t135 - t159 * t340 - t167 * t361, -t159 * t167 (-t210 * t234 - t211 * t230) * t135 + t220 * t24 + t12 * t197 - t3 * t167 + t45 * t361 + t340 * t40 + (t230 * t248 - t234 * t247) * t159 -(-t210 * t230 + t211 * t234) * t135 + t220 * t23 + t12 * t198 + t4 * t167 + t45 * t258 - t341 * t40 + (t230 * t247 + t234 * t248) * t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t131 * t357 + t106, t129 * t357 + t107, -t129 ^ 2 - t131 ^ 2, t129 * t19 + t131 * t18 + t17, 0, 0, 0, 0, 0, t24 - t360, t23 + t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t258 * t361, t258 ^ 2 - t361 ^ 2, t23 - t367, -t24 - t360, t135, t159 * t4 + t258 * t40 + t2, -t40 * t361 - t264 + (-qJD(6) + t159) * t3;];
tauc_reg  = t5;
