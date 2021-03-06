% Calculate minimal parameter regressor of coriolis joint torque vector for
% S5RRRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d1,d2,d3,d4,d5]';
% 
% Output:
% tauc_reg [5x31]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:58
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S5RRRRR12_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR12_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR12_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5RRRRR12_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:55:12
% EndTime: 2019-12-31 22:55:34
% DurationCPUTime: 7.79s
% Computational Cost: add. (11152->524), mult. (34121->773), div. (0->0), fcn. (28285->12), ass. (0->249)
t225 = cos(pkin(6));
t232 = cos(qJ(3));
t233 = cos(qJ(2));
t340 = t232 * t233;
t228 = sin(qJ(3));
t229 = sin(qJ(2));
t343 = t228 * t229;
t254 = -t225 * t343 + t340;
t224 = sin(pkin(5));
t334 = qJD(1) * t224;
t175 = t254 * t334;
t223 = sin(pkin(6));
t331 = qJD(3) * t232;
t307 = t223 * t331;
t379 = -t175 + t307;
t351 = cos(pkin(5));
t314 = pkin(1) * t351;
t290 = t233 * t314;
t212 = qJD(1) * t290;
t281 = t224 * (-pkin(9) * t225 - pkin(8));
t259 = t229 * t281;
t155 = qJD(1) * t259 + t212;
t291 = t229 * t314;
t238 = t233 * t281 - t291;
t156 = t238 * qJD(1);
t366 = pkin(9) * t223;
t248 = (pkin(2) * t229 - t233 * t366) * t224;
t183 = qJD(1) * t248;
t345 = t225 * t228;
t348 = t223 * t228;
t214 = pkin(9) * t348;
t344 = t225 * t232;
t373 = pkin(2) * t344 - t214;
t378 = t373 * qJD(3) - t155 * t232 - t156 * t345 - t183 * t348;
t100 = -t156 * t223 + t183 * t225;
t341 = t229 * t232;
t342 = t228 * t233;
t256 = t225 * t341 + t342;
t174 = t256 * t334;
t377 = pkin(3) * t174 - pkin(10) * t175 + t100 - (pkin(3) * t228 - pkin(10) * t232) * t223 * qJD(3);
t313 = t229 * t334;
t289 = t223 * t313;
t376 = -pkin(10) * t289 + t378;
t255 = t225 * t342 + t341;
t247 = t255 * t224;
t297 = t351 * qJD(1);
t262 = t297 + qJD(2);
t249 = t262 * t223;
t125 = qJD(1) * t247 + t228 * t249;
t231 = cos(qJ(4));
t312 = t233 * t334;
t206 = t223 * t312;
t324 = t206 - qJD(3);
t240 = -t225 * t262 + t324;
t169 = t231 * t240;
t227 = sin(qJ(4));
t90 = t125 * t227 + t169;
t89 = qJD(5) + t90;
t193 = -t225 * t231 + t227 * t348;
t339 = -t193 * qJD(4) - t227 * t289 + t231 * t379;
t194 = t225 * t227 + t231 * t348;
t338 = t194 * qJD(4) + t227 * t379 + t231 * t289;
t332 = qJD(3) * t228;
t308 = t223 * t332;
t375 = t174 - t308;
t347 = t223 * t232;
t336 = pkin(2) * t345 + pkin(9) * t347;
t374 = qJD(3) * t336 - t155 * t228;
t286 = t225 * t312;
t202 = t232 * t286;
t288 = t228 * t313;
t123 = -t232 * t249 - t202 + t288;
t121 = qJD(4) + t123;
t353 = t156 * t344 - (-pkin(3) * t313 - t183 * t232) * t223 + t374;
t187 = pkin(10) * t225 + t336;
t188 = (-pkin(3) * t232 - pkin(10) * t228 - pkin(2)) * t223;
t337 = t187 * t231 + t188 * t227;
t327 = qJD(4) * t231;
t329 = qJD(4) * t227;
t372 = t187 * t329 - t188 * t327 + t227 * t377 - t231 * t376;
t371 = t225 * t340 - t343;
t239 = pkin(2) * t351 + t259;
t122 = pkin(2) * qJD(2) + qJD(1) * t239 + t212;
t180 = (-pkin(2) * t233 - t229 * t366 - pkin(1)) * t224;
t170 = qJD(1) * t180;
t85 = -t122 * t223 + t170 * t225;
t49 = pkin(3) * t123 - pkin(10) * t125 + t85;
t346 = t224 * t233;
t245 = pkin(8) * t346 + t291;
t117 = t245 * qJD(1) + (t249 + t286) * pkin(9);
t61 = t117 * t232 + t122 * t345 + t170 * t348;
t51 = -pkin(10) * t240 + t61;
t19 = t227 * t49 + t231 * t51;
t276 = qJD(2) * t297;
t260 = pkin(1) * t276;
t210 = t233 * t260;
t251 = qJD(2) * t259;
t139 = qJD(1) * t251 + t210;
t158 = t238 * qJD(2);
t140 = qJD(1) * t158;
t184 = qJD(2) * t248;
t177 = qJD(1) * t184;
t309 = t225 * t331;
t243 = t117 * t332 - t122 * t309 - t139 * t232 - t140 * t345 - t170 * t307 - t177 * t348;
t323 = qJD(1) * qJD(2);
t305 = t224 * t323;
t285 = t229 * t305;
t263 = t223 * t285;
t30 = pkin(10) * t263 - t243;
t246 = qJD(3) * t249;
t284 = t233 * t305;
t293 = -qJD(2) * t225 - qJD(3);
t93 = qJD(3) * t202 + t293 * t288 + (t246 + t284) * t232;
t367 = qJD(2) * t256 + qJD(3) * t255;
t235 = t367 * t224;
t241 = t228 * t246;
t94 = qJD(1) * t235 + t241;
t95 = -t140 * t223 + t177 * t225;
t41 = pkin(3) * t94 - pkin(10) * t93 + t95;
t6 = -qJD(4) * t19 - t227 * t30 + t231 * t41;
t4 = -pkin(4) * t94 - t6;
t92 = t125 * t231 - t227 * t240;
t370 = (pkin(4) * t92 + pkin(11) * t89) * t89 + t4;
t47 = qJD(4) * t92 + t227 * t93 - t231 * t263;
t226 = sin(qJ(5));
t230 = cos(qJ(5));
t46 = -qJD(4) * t169 - t125 * t329 + t227 * t263 + t231 * t93;
t66 = t121 * t226 + t230 * t92;
t15 = qJD(5) * t66 + t226 * t46 - t230 * t94;
t60 = -t228 * t117 + (t122 * t225 + t170 * t223) * t232;
t301 = t351 * t223;
t142 = (t225 * t346 + t301) * pkin(9) + t245;
t154 = t290 + t239;
t369 = -t228 * t142 + (t154 * t225 + t180 * t223) * t232;
t147 = -t224 * t371 - t232 * t301;
t148 = t228 * t301 + t247;
t97 = -t154 * t223 + t180 * t225;
t58 = pkin(3) * t147 - pkin(10) * t148 + t97;
t300 = t351 * t225;
t192 = t223 * t346 - t300;
t316 = t142 * t232 + t154 * t345 + t180 * t348;
t63 = -pkin(10) * t192 + t316;
t268 = t227 * t58 + t231 * t63;
t213 = qJD(2) * t290;
t157 = t213 + t251;
t242 = -t142 * t332 + t154 * t309 + t157 * t232 + t158 * t345 + t180 * t307 + t184 * t348;
t333 = qJD(2) * t224;
t311 = t229 * t333;
t287 = t223 * t311;
t36 = pkin(10) * t287 + t242;
t101 = -t158 * t223 + t184 * t225;
t280 = qJD(3) * t301;
t98 = t228 * t280 + t235;
t99 = t232 * t280 + (qJD(2) * t254 + qJD(3) * t371) * t224;
t44 = pkin(3) * t98 - pkin(10) * t99 + t101;
t368 = -qJD(4) * t268 - t227 * t36 + t231 * t44;
t310 = t225 * t332;
t33 = -t117 * t331 - t122 * t310 - t139 * t228 + t140 * t344 - t170 * t308 + t177 * t347;
t31 = -pkin(3) * t263 - t33;
t12 = pkin(4) * t47 - pkin(11) * t46 + t31;
t17 = pkin(11) * t121 + t19;
t50 = pkin(3) * t240 - t60;
t22 = pkin(4) * t90 - pkin(11) * t92 + t50;
t273 = t17 * t226 - t22 * t230;
t5 = t227 * t41 + t231 * t30 + t327 * t49 - t329 * t51;
t3 = pkin(11) * t94 + t5;
t1 = -qJD(5) * t273 + t12 * t226 + t230 * t3;
t234 = qJD(1) ^ 2;
t64 = -t121 * t230 + t226 * t92;
t365 = t64 * t89;
t364 = t66 * t89;
t79 = pkin(3) * t125 + pkin(10) * t123;
t363 = t227 * t79 + t231 * t60;
t361 = pkin(4) * t375 + t337 * qJD(4) + t376 * t227 + t377 * t231;
t161 = t194 * t226 + t230 * t347;
t360 = -t161 * qJD(5) - t226 * t375 + t230 * t339;
t318 = t226 * t347;
t325 = qJD(5) * t230;
t359 = -qJD(5) * t318 + t194 * t325 + t226 * t339 + t230 * t375;
t358 = t121 * t90;
t326 = qJD(5) * t226;
t14 = t121 * t325 + t226 * t94 + t230 * t46 - t326 * t92;
t357 = t14 * t226;
t356 = t226 * t47;
t355 = t230 * t47;
t354 = t92 * t121;
t352 = -t61 + t121 * (pkin(4) * t227 - pkin(11) * t231);
t350 = t123 * t231;
t220 = t224 ^ 2;
t349 = t220 * t234;
t335 = t229 ^ 2 - t233 ^ 2;
t330 = qJD(4) * t226;
t328 = qJD(4) * t230;
t321 = t89 * t330;
t320 = t89 * t328;
t319 = t233 * t349;
t306 = t220 * t323;
t298 = t230 * t89;
t209 = -pkin(4) * t231 - pkin(11) * t227 - pkin(3);
t296 = pkin(11) * t125 - qJD(5) * t209 + t363;
t295 = t121 * t231;
t294 = 0.2e1 * t306;
t292 = -t142 * t331 - t154 * t310 - t157 * t228 - t180 * t308;
t186 = t214 + (-pkin(2) * t232 - pkin(3)) * t225;
t104 = pkin(4) * t193 - pkin(11) * t194 + t186;
t283 = pkin(11) * t375 - qJD(5) * t104 + t372;
t106 = -pkin(11) * t347 + t337;
t282 = -pkin(4) * t338 + pkin(11) * t339 + qJD(5) * t106 - t353;
t279 = t224 * t234 * t351;
t278 = -0.2e1 * pkin(1) * t306;
t10 = t17 * t230 + t22 * t226;
t24 = pkin(11) * t147 + t268;
t102 = t148 * t227 + t192 * t231;
t103 = t148 * t231 - t192 * t227;
t62 = pkin(3) * t192 - t369;
t34 = pkin(4) * t102 - pkin(11) * t103 + t62;
t272 = t226 * t34 + t230 * t24;
t271 = -t226 * t24 + t230 * t34;
t18 = -t227 * t51 + t231 * t49;
t269 = -t227 * t63 + t231 * t58;
t75 = t103 * t230 + t147 * t226;
t74 = t103 * t226 - t147 * t230;
t265 = -t187 * t227 + t188 * t231;
t264 = t223 ^ 2 * t285;
t261 = 0.2e1 * t297 + qJD(2);
t258 = -t325 * t89 - t356;
t257 = -t326 * t89 + t355;
t253 = t227 * t44 + t231 * t36 + t327 * t58 - t329 * t63;
t252 = -pkin(10) * t94 + t121 * t50;
t16 = -pkin(4) * t121 - t18;
t244 = -pkin(11) * t47 + (t16 + t18) * t89;
t2 = -qJD(5) * t10 + t12 * t230 - t226 * t3;
t237 = qJD(3) * t240;
t236 = t262 * t245;
t37 = -t158 * t344 + (-pkin(3) * t311 - t184 * t232) * t223 - t292;
t162 = t194 * t230 - t318;
t105 = pkin(4) * t347 - t265;
t77 = t125 * t226 - t230 * t350;
t76 = -t125 * t230 - t226 * t350;
t54 = -qJD(4) * t102 + t227 * t287 + t231 * t99;
t53 = qJD(4) * t103 + t227 * t99 - t231 * t287;
t28 = -pkin(4) * t125 + t227 * t60 - t231 * t79;
t23 = -pkin(4) * t147 - t269;
t21 = -qJD(5) * t74 + t226 * t98 + t230 * t54;
t20 = qJD(5) * t75 + t226 * t54 - t230 * t98;
t13 = pkin(4) * t53 - pkin(11) * t54 + t37;
t8 = -pkin(4) * t98 - t368;
t7 = pkin(11) * t98 + t253;
t9 = [0, 0, 0, t229 * t233 * t294, -t335 * t294, t261 * t233 * t333, -t261 * t311, 0, -qJD(2) * t236 + t229 * t278 - t245 * t276, t233 * t278 - (-pkin(8) * t311 + t213) * t262 - (-pkin(8) * t285 + t210) * t351, t125 * t99 + t148 * t93, -t123 * t99 - t125 * t98 - t147 * t93 - t148 * t94, -t99 * t240 - t93 * t192 + (qJD(1) * t148 + t125) * t287, t98 * t240 + t94 * t192 + (-qJD(1) * t147 - t123) * t287, (-t206 + (t300 - t192) * qJD(1) - t293) * t287, -((t158 * t225 + t184 * t223) * t232 + t292) * t240 - t33 * t192 + t101 * t123 + t97 * t94 + t95 * t147 + t85 * t98 + (qJD(1) * t369 + t60) * t287, t242 * t240 - t243 * t192 + t101 * t125 + t97 * t93 + t95 * t148 + t85 * t99 + (-qJD(1) * t316 - t61) * t287, t103 * t46 + t54 * t92, -t102 * t46 - t103 * t47 - t53 * t92 - t54 * t90, t103 * t94 + t121 * t54 + t147 * t46 + t92 * t98, -t102 * t94 - t121 * t53 - t147 * t47 - t90 * t98, t121 * t98 + t147 * t94, t31 * t102 + t121 * t368 + t6 * t147 + t18 * t98 + t269 * t94 + t37 * t90 + t62 * t47 + t50 * t53, t103 * t31 - t121 * t253 - t147 * t5 - t19 * t98 - t268 * t94 + t37 * t92 + t46 * t62 + t50 * t54, t14 * t75 + t21 * t66, -t14 * t74 - t15 * t75 - t20 * t66 - t21 * t64, t102 * t14 + t21 * t89 + t47 * t75 + t53 * t66, -t102 * t15 - t20 * t89 - t47 * t74 - t53 * t64, t102 * t47 + t53 * t89, (-qJD(5) * t272 + t13 * t230 - t226 * t7) * t89 + t271 * t47 + t2 * t102 - t273 * t53 + t8 * t64 + t23 * t15 + t4 * t74 + t16 * t20, -(qJD(5) * t271 + t13 * t226 + t230 * t7) * t89 - t272 * t47 - t1 * t102 - t10 * t53 + t8 * t66 + t23 * t14 + t4 * t75 + t16 * t21; 0, 0, 0, -t229 * t319, t335 * t349, -t233 * t279, t229 * t279, 0, -pkin(8) * t284 + qJD(1) * t236 + (pkin(1) * t349 - t260) * t229, -t210 + pkin(1) * t319 + (-pkin(8) * t313 + t212) * t297 + t212 * qJD(2), t125 * t379 + t93 * t348, t123 * t175 + t125 * t174 + (-t228 * t94 + t232 * t93 + (-t123 * t232 - t125 * t228) * qJD(3)) * t223, t228 * t264 + t93 * t225 + t175 * t240 + (-t125 * t313 - t232 * t237) * t223, t232 * t264 - t94 * t225 - t174 * t240 + (t123 * t313 + t228 * t237) * t223, -(t225 * t297 - t324) * t289, t33 * t225 - t223 * pkin(2) * t94 - t95 * t347 - t100 * t123 - t375 * t85 + (qJD(2) * t373 - t60) * t289 + ((t156 * t225 + t183 * t223) * t232 + t374) * t240, t243 * t225 - t100 * t125 - t85 * t175 + (t85 * t331 - pkin(2) * t93 + t95 * t228 + (-qJD(2) * t336 + t61) * t313) * t223 + t378 * t240, t194 * t46 + t339 * t92, -t193 * t46 - t194 * t47 - t338 * t92 - t339 * t90, -t174 * t92 + t194 * t94 + (-t232 * t46 + t332 * t92) * t223 + t339 * t121, t174 * t90 - t193 * t94 + (t232 * t47 - t332 * t90) * t223 - t338 * t121, -t121 * t375 - t347 * t94, t265 * t94 - t6 * t347 + t186 * t47 + t31 * t193 + t353 * t90 + t338 * t50 - t375 * t18 + ((-qJD(4) * t187 - t377) * t231 + (-qJD(4) * t188 - t376) * t227) * t121, t121 * t372 + t186 * t46 + t19 * t375 + t31 * t194 - t337 * t94 + t339 * t50 + t347 * t5 + t353 * t92, t14 * t162 + t360 * t66, -t14 * t161 - t15 * t162 - t359 * t66 - t360 * t64, t14 * t193 + t162 * t47 + t338 * t66 + t360 * t89, -t15 * t193 - t161 * t47 - t338 * t64 - t359 * t89, t193 * t47 + t338 * t89, (t104 * t230 - t106 * t226) * t47 + t2 * t193 + t105 * t15 + t4 * t161 - t338 * t273 + (t226 * t283 - t230 * t282) * t89 + t361 * t64 + t359 * t16, -(t104 * t226 + t106 * t230) * t47 - t1 * t193 + t105 * t14 + t4 * t162 + (t226 * t282 + t230 * t283) * t89 + t361 * t66 + t360 * t16 - t338 * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125 * t123, -t123 ^ 2 + t125 ^ 2, -t123 * t240 + t93, -t125 * t240 - t334 * t367 - t241, t263, -t125 * t85 - t240 * t61 + t33, t85 * t123 - t240 * t60 + t243, t227 * t46 + t295 * t92, (t46 - t358) * t231 + (-t47 - t354) * t227, t121 * t295 - t125 * t92 + t227 * t94, -t121 ^ 2 * t227 + t125 * t90 + t231 * t94, -t121 * t125, -pkin(3) * t47 - t18 * t125 - t61 * t90 + (-t31 + (-pkin(10) * qJD(4) - t79) * t121) * t231 + (t60 * t121 + t252) * t227, -pkin(3) * t46 + t19 * t125 + t31 * t227 - t61 * t92 + (pkin(10) * t329 + t363) * t121 + t252 * t231, t14 * t227 * t230 + (-t227 * t326 + t230 * t327 - t77) * t66, t64 * t77 + t66 * t76 + (-t226 * t66 - t230 * t64) * t327 + (-t357 - t15 * t230 + (t226 * t64 - t230 * t66) * qJD(5)) * t227, -t77 * t89 + (-t14 + t320) * t231 + (t121 * t66 + t257) * t227, t76 * t89 + (t15 - t321) * t231 + (-t121 * t64 + t258) * t227, t121 * t227 * t89 - t231 * t47, t209 * t355 - t16 * t76 - t28 * t64 + (t226 * t296 + t230 * t352) * t89 + (t16 * t330 - t2 + (qJD(4) * t64 + t258) * pkin(10)) * t231 + (t16 * t325 + t4 * t226 - t121 * t273 + (t15 + t321) * pkin(10)) * t227, -t209 * t356 - t16 * t77 - t28 * t66 + (-t226 * t352 + t230 * t296) * t89 + (t16 * t328 + t1 + (qJD(4) * t66 - t257) * pkin(10)) * t231 + (-t16 * t326 + t4 * t230 - t121 * t10 + (t14 + t320) * pkin(10)) * t227; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t92 * t90, -t90 ^ 2 + t92 ^ 2, t46 + t358, t354 - t47, t94, t121 * t19 - t50 * t92 + t6, t121 * t18 + t50 * t90 - t5, t298 * t66 + t357, (t14 - t365) * t230 + (-t15 - t364) * t226, t298 * t89 - t66 * t92 + t356, -t226 * t89 ^ 2 + t64 * t92 + t355, -t89 * t92, -pkin(4) * t15 - t19 * t64 + t226 * t244 - t230 * t370 + t273 * t92, -pkin(4) * t14 + t10 * t92 - t19 * t66 + t226 * t370 + t230 * t244; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66 * t64, -t64 ^ 2 + t66 ^ 2, t14 + t365, -t15 + t364, t47, t10 * t89 - t16 * t66 + t2, t16 * t64 - t273 * t89 - t1;];
tauc_reg = t9;
