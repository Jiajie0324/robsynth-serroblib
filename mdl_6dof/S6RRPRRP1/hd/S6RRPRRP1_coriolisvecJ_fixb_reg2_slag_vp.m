% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRPRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:42
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPRRP1_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP1_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP1_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP1_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:41:15
% EndTime: 2019-03-09 11:41:32
% DurationCPUTime: 7.25s
% Computational Cost: add. (15032->499), mult. (38704->627), div. (0->0), fcn. (29609->8), ass. (0->275)
t232 = sin(qJ(5));
t234 = sin(qJ(2));
t236 = cos(qJ(2));
t335 = cos(pkin(10));
t276 = qJD(1) * t335;
t264 = t236 * t276;
t334 = sin(pkin(10));
t275 = qJD(1) * t334;
t194 = -t234 * t275 + t264;
t250 = -t335 * t234 - t334 * t236;
t195 = t250 * qJD(1);
t233 = sin(qJ(4));
t362 = cos(qJ(4));
t255 = -t233 * t194 + t362 * t195;
t235 = cos(qJ(5));
t295 = qJD(2) + qJD(4);
t267 = t235 * t295;
t128 = -t232 * t255 - t267;
t299 = qJD(5) * t235;
t262 = qJD(2) * t275;
t214 = t234 * t262;
t263 = qJD(2) * t276;
t180 = t236 * t263 - t214;
t286 = qJD(4) * t362;
t302 = qJD(4) * t233;
t307 = t234 * t263 + t236 * t262;
t241 = -t362 * t180 - t194 * t286 - t195 * t302 + t233 * t307;
t131 = t232 * t295 - t235 * t255;
t301 = qJD(5) * t131;
t76 = -t232 * t241 + t301;
t341 = -t128 * t299 - t232 * t76;
t144 = t362 * t194 + t195 * t233;
t380 = qJD(5) - t144;
t396 = t380 * t232;
t368 = t131 * t396;
t384 = t144 * t235;
t300 = qJD(5) * t232;
t75 = -qJD(5) * t267 + t235 * t241 - t255 * t300;
t73 = t235 * t75;
t400 = t128 * t384 + t341 - t368 - t73;
t357 = -qJ(3) - pkin(7);
t281 = qJD(2) * t357;
t188 = t236 * qJD(3) + t234 * t281;
t166 = t188 * qJD(1);
t189 = -t234 * qJD(3) + t236 * t281;
t167 = t189 * qJD(1);
t127 = -t334 * t166 + t335 * t167;
t113 = -t180 * pkin(8) + t127;
t130 = t335 * t166 + t334 * t167;
t114 = -pkin(8) * t307 + t130;
t212 = t357 * t236;
t207 = qJD(1) * t212;
t197 = t334 * t207;
t210 = t357 * t234;
t206 = qJD(1) * t210;
t352 = qJD(2) * pkin(2);
t201 = t206 + t352;
t146 = t335 * t201 + t197;
t359 = t195 * pkin(8);
t121 = qJD(2) * pkin(3) + t146 + t359;
t279 = t335 * t207;
t147 = t334 * t201 - t279;
t360 = t194 * pkin(8);
t125 = t147 + t360;
t243 = -t233 * t113 - t362 * t114 - t121 * t286 + t125 * t302;
t272 = t233 * t180 + t362 * t307;
t381 = qJD(4) * t255;
t105 = t272 - t381;
t296 = qJD(1) * qJD(2);
t285 = t234 * t296;
t221 = pkin(2) * t285;
t153 = pkin(3) * t307 + t221;
t59 = t105 * pkin(4) + pkin(9) * t241 + t153;
t85 = t233 * t121 + t362 * t125;
t82 = pkin(9) * t295 + t85;
t225 = -t236 * pkin(2) - pkin(1);
t305 = qJD(1) * t225;
t208 = qJD(3) + t305;
t152 = -t194 * pkin(3) + t208;
t89 = -pkin(4) * t144 + pkin(9) * t255 + t152;
t278 = -t232 * t59 + t235 * t243 - t89 * t299 + t82 * t300;
t256 = t76 * qJ(6) + t278;
t3 = -qJD(6) * t128 - t256;
t45 = t232 * t89 + t235 * t82;
t9 = -qJD(5) * t45 + t232 * t243 + t235 * t59;
t242 = t75 * qJ(6) + t9;
t361 = t105 * pkin(5);
t1 = -t131 * qJD(6) + t242 + t361;
t36 = -qJ(6) * t128 + t45;
t347 = t36 * t380;
t371 = t1 + t347;
t399 = -t371 * t232 + t3 * t235;
t44 = -t232 * t82 + t235 * t89;
t398 = t380 * t44;
t151 = t335 * t206 + t197;
t133 = t151 + t359;
t223 = t335 * pkin(2) + pkin(3);
t289 = t334 * pkin(2);
t187 = t233 * t223 + t362 * t289;
t150 = -t334 * t206 + t279;
t252 = t150 - t360;
t338 = t187 * qJD(4) - t133 * t233 + t362 * t252;
t397 = -t85 - t338;
t367 = t144 * t295;
t395 = -t241 - t367;
t321 = t144 ^ 2;
t322 = t255 ^ 2;
t394 = -t321 + t322;
t370 = t380 * t45 + t9;
t385 = t144 * t232;
t393 = (t300 - t385) * pkin(5);
t273 = -t362 * t113 + t233 * t114;
t40 = qJD(4) * t85 + t273;
t18 = t76 * pkin(5) + t40;
t277 = t128 * pkin(5) + qJD(6);
t84 = t362 * t121 - t233 * t125;
t81 = -pkin(4) * t295 - t84;
t67 = t277 + t81;
t355 = t18 * t232 + t67 * t299;
t392 = -t255 * t36 - t384 * t67 + t355;
t35 = -qJ(6) * t131 + t44;
t22 = pkin(5) * t380 + t35;
t284 = -t18 * t235 + t67 * t300;
t391 = t22 * t255 - t385 * t67 + t284;
t390 = qJ(6) * t385 + t235 * qJD(6);
t72 = t75 * t232;
t388 = -t72 + (t299 - t384) * t131;
t102 = t232 * t105;
t308 = t299 * t380 + t102;
t325 = t131 * t255;
t387 = -t380 * t384 + t308 + t325;
t329 = t128 * t255;
t386 = t380 * t255;
t316 = t144 * t255;
t383 = -t278 - t398;
t298 = t255 * qJD(2);
t382 = -t298 - t272;
t282 = -t40 * t235 + t81 * t300;
t378 = t44 * t255 + t282;
t353 = t40 * t232 + t81 * t299;
t377 = -t45 * t255 + t353;
t375 = -t152 * t144 + t243;
t374 = t152 * t255 - t273;
t109 = -pkin(4) * t255 - pkin(9) * t144;
t229 = t235 * qJ(6);
t373 = pkin(5) * t255 + t144 * t229;
t372 = -0.2e1 * t296;
t186 = t362 * t223 - t233 * t289;
t173 = t186 * qJD(4);
t93 = t362 * t133 + t233 * t252;
t339 = t173 - t93;
t304 = qJD(1) * t234;
t226 = pkin(2) * t304;
t162 = -pkin(3) * t195 + t226;
t94 = t109 + t162;
t52 = t232 * t94 + t235 * t93;
t369 = -t235 * t173 + t52;
t104 = t235 * t105;
t366 = t300 * t380 - t104;
t251 = t334 * t234 - t335 * t236;
t365 = qJD(2) * t251;
t364 = t131 ^ 2;
t363 = t195 ^ 2;
t237 = qJD(2) ^ 2;
t358 = t235 * pkin(5);
t7 = t278 * t235;
t356 = -qJ(6) - pkin(9);
t354 = t22 - t35;
t154 = t335 * t210 + t334 * t212;
t138 = pkin(8) * t250 + t154;
t155 = t334 * t210 - t335 * t212;
t139 = -t251 * pkin(8) + t155;
t101 = t233 * t138 + t362 * t139;
t98 = t235 * t101;
t245 = t362 * t251;
t148 = -t233 * t250 + t245;
t249 = t233 * t251;
t149 = -t250 * t362 - t249;
t169 = pkin(3) * t251 + t225;
t99 = t148 * pkin(4) - t149 * pkin(9) + t169;
t61 = t232 * t99 + t98;
t100 = -t362 * t138 + t139 * t233;
t351 = t100 * t40;
t348 = t22 * t235;
t74 = t76 * t235;
t184 = pkin(9) + t187;
t309 = -qJ(6) - t184;
t271 = qJD(5) * t309;
t344 = t232 * t271 - t369 + t390;
t51 = -t232 * t93 + t235 * t94;
t343 = (-qJD(6) - t173) * t232 + t235 * t271 - t51 + t373;
t340 = t338 + t393;
t280 = qJD(5) * t356;
t58 = t232 * t109 + t235 * t84;
t337 = t232 * t280 + t390 - t58;
t57 = t235 * t109 - t232 * t84;
t336 = -t232 * qJD(6) + t235 * t280 + t373 - t57;
t333 = t105 * t148;
t246 = qJD(2) * t250;
t110 = -t233 * t246 + t245 * t295 - t250 * t302;
t332 = t110 * t232;
t331 = t110 * t235;
t330 = t128 * t380;
t328 = t128 * t232;
t327 = t131 * t128;
t326 = t131 * t380;
t315 = t149 * t232;
t314 = t195 * t194;
t238 = qJD(1) ^ 2;
t312 = t236 * t238;
t311 = t237 * t234;
t310 = t237 * t236;
t137 = t335 * t188 + t334 * t189;
t306 = t234 ^ 2 - t236 ^ 2;
t303 = qJD(2) * t195;
t116 = pkin(8) * t246 + t137;
t136 = -t334 * t188 + t335 * t189;
t239 = pkin(8) * t365 + t136;
t53 = t362 * t116 + t138 * t286 - t139 * t302 + t233 * t239;
t111 = -qJD(4) * t249 - t233 * t365 - t362 * t246 - t250 * t286;
t227 = t234 * t352;
t163 = -pkin(3) * t246 + t227;
t66 = t111 * pkin(4) + t110 * pkin(9) + t163;
t294 = t232 * t66 + t235 * t53 + t99 * t299;
t291 = t234 * t312;
t287 = t149 * t299;
t283 = -t232 * t53 + t235 * t66;
t60 = -t101 * t232 + t235 * t99;
t274 = pkin(1) * t372;
t269 = t380 * t235;
t266 = t236 * t285;
t265 = t393 - t85;
t261 = t232 * t45 + t235 * t44;
t260 = t232 * t44 - t235 * t45;
t259 = -t105 * t184 - t144 * t81;
t258 = qJ(6) * t110 - qJD(6) * t149;
t183 = -pkin(4) - t186;
t257 = t380 * t385 - t366;
t254 = t287 - t332;
t253 = -t149 * t300 - t331;
t244 = -qJD(5) * t261 - t9 * t232 - t7;
t54 = qJD(4) * t101 + t233 * t116 - t362 * t239;
t224 = -pkin(4) - t358;
t211 = pkin(9) * t235 + t229;
t209 = t356 * t232;
t192 = t194 ^ 2;
t164 = t183 - t358;
t157 = t184 * t235 + t229;
t156 = t309 * t232;
t126 = t128 ^ 2;
t77 = pkin(5) * t315 + t100;
t69 = -t126 + t364;
t49 = -qJ(6) * t315 + t61;
t48 = t326 - t76;
t47 = -t75 + t330;
t46 = t111 * t380 + t333;
t42 = pkin(5) * t148 - t149 * t229 + t60;
t33 = t128 * t396 - t74;
t32 = t328 * t380 - t74;
t28 = -t269 * t380 - t102 + t325;
t25 = t257 + t329;
t24 = t257 - t329;
t23 = -t380 * t396 + t104 - t329;
t21 = pkin(5) * t254 + t54;
t20 = t128 * t254 + t76 * t315;
t19 = t131 * t253 - t149 * t73;
t14 = (t128 * t144 + t75) * t235 + t368 + t341;
t13 = -t61 * qJD(5) + t283;
t12 = -t101 * t300 + t294;
t11 = -t149 * t102 - t128 * t111 - t76 * t148 - t254 * t380;
t10 = t149 * t104 + t131 * t111 - t75 * t148 + t253 * t380;
t6 = -qJ(6) * t287 + (-qJD(5) * t101 + t258) * t232 + t294;
t5 = (t128 * t235 + t131 * t232) * t110 + (t72 - t74 + (-t131 * t235 + t328) * qJD(5)) * t149;
t4 = t111 * pkin(5) + t258 * t235 + (-t98 + (qJ(6) * t149 - t99) * t232) * qJD(5) + t283;
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t266, t306 * t372, t310, -0.2e1 * t266, -t311, 0, -pkin(7) * t310 + t234 * t274, pkin(7) * t311 + t236 * t274, 0, 0, -t180 * t250 + t195 * t365, -t180 * t251 - t194 * t365 - t195 * t246 + t250 * t307, -t251 * t237, t194 * t246 + t251 * t307, t250 * t237, 0, -t194 * t227 + t225 * t307 + t226 * t365 + (-t208 * t250 + t136) * qJD(2), -t137 * qJD(2) + t225 * t180 - t195 * t227 - t208 * t365 - t221 * t250, t127 * t250 - t130 * t251 + t136 * t195 + t137 * t194 + t146 * t365 + t147 * t246 - t154 * t180 - t155 * t307, t127 * t154 + t130 * t155 + t146 * t136 + t147 * t137 + (t208 + t305) * t227, t110 * t255 - t149 * t241, -t149 * t105 - t110 * t144 + t111 * t255 + t148 * t241, -t110 * t295, -t111 * t144 + t333, -t111 * t295, 0, t169 * t105 + t152 * t111 - t144 * t163 + t153 * t148 - t295 * t54, -t152 * t110 + t153 * t149 - t163 * t255 - t169 * t241 - t295 * t53, -t100 * t241 - t101 * t105 + t84 * t110 - t85 * t111 + t144 * t53 + t148 * t243 + t40 * t149 - t255 * t54, -t101 * t243 + t152 * t163 + t153 * t169 + t53 * t85 - t54 * t84 + t351, t19, t5, t10, t20, t11, t46, t100 * t76 + t60 * t105 + t44 * t111 + t54 * t128 + t13 * t380 + t9 * t148 + t353 * t149 - t81 * t332, -t100 * t75 - t61 * t105 - t45 * t111 - t12 * t380 + t54 * t131 + t148 * t278 - t149 * t282 - t81 * t331, -t12 * t128 - t13 * t131 + t60 * t75 - t61 * t76 + t261 * t110 + (qJD(5) * t260 + t232 * t278 - t9 * t235) * t149, t12 * t45 + t13 * t44 - t278 * t61 + t54 * t81 + t60 * t9 + t351, t19, t5, t10, t20, t11, t46, t1 * t148 + t42 * t105 + t22 * t111 + t21 * t128 + t355 * t149 - t67 * t332 + t380 * t4 + t77 * t76, -t49 * t105 - t36 * t111 + t21 * t131 - t3 * t148 - t149 * t284 - t67 * t331 - t380 * t6 - t77 * t75, -t6 * t128 - t4 * t131 + t42 * t75 - t49 * t76 + (t232 * t36 + t348) * t110 + (-t1 * t235 - t3 * t232 + (t22 * t232 - t235 * t36) * qJD(5)) * t149, t1 * t42 + t18 * t77 + t21 * t67 + t22 * t4 + t3 * t49 + t36 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t291, t306 * t238, 0, t291, 0, 0, t238 * pkin(1) * t234, pkin(1) * t312, 0, 0, t314, -t192 + t363, -t214 + (t264 - t194) * qJD(2), -t314, -t303 - t307, 0, -t150 * qJD(2) + t194 * t226 + t208 * t195 + t127, qJD(2) * t151 - t194 * t208 + t195 * t226 - t130 -(t147 + t150) * t195 + (-t151 + t146) * t194 + (-t180 * t335 - t307 * t334) * pkin(2), -t146 * t150 - t147 * t151 + (t335 * t127 + t334 * t130 - t208 * t304) * pkin(2), t316, t394, t395, -t316, t382, 0, -t338 * qJD(2) + t397 * qJD(4) + t162 * t144 + t374, t162 * t255 - t295 * t339 + t375, -t187 * t105 + t186 * t241 + t397 * t255 + (t339 + t84) * t144, -t152 * t162 - t40 * t186 - t187 * t243 - t338 * t84 + t339 * t85, t388, t400, t387, t33, t24, t386, t183 * t76 + t259 * t232 + t338 * t128 + (-t232 * t173 - t184 * t299 - t51) * t380 + t378, -t183 * t75 + t259 * t235 + t338 * t131 + (t184 * t300 + t369) * t380 + t377, t52 * t128 + t51 * t131 - t7 + (-t128 * t173 + t144 * t44 - t184 * t76 + (t131 * t184 - t44) * qJD(5)) * t235 + (t131 * t173 + t144 * t45 - t184 * t75 - t9 + (t128 * t184 - t45) * qJD(5)) * t232, -t260 * t173 + t40 * t183 + t244 * t184 + t338 * t81 - t44 * t51 - t45 * t52, t388, t400, t387, t33, t24, t386, t156 * t105 + t340 * t128 + t164 * t76 + t343 * t380 + t391, -t157 * t105 + t340 * t131 - t164 * t75 - t344 * t380 + t392, -t344 * t128 - t343 * t131 + t156 * t75 - t157 * t76 - t22 * t269 + t399, t1 * t156 + t3 * t157 + t18 * t164 + t22 * t343 + t340 * t67 + t344 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t303 + t307, -t214 + (t264 + t194) * qJD(2), -t192 - t363, -t146 * t195 - t147 * t194 + t221, 0, 0, 0, 0, 0, 0, t272 - t298 - 0.2e1 * t381, -t241 + t367, -t321 - t322, -t85 * t144 - t255 * t84 + t153, 0, 0, 0, 0, 0, 0, t25, t28, t14, t232 * t383 + t370 * t235 + t81 * t255, 0, 0, 0, 0, 0, 0, t25, t28, t14, t67 * t255 + t371 * t235 + (-t22 * t380 + t3) * t232; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t316, t394, t395, -t316, t382, 0, t85 * qJD(2) + t374, t295 * t84 + t375, 0, 0, t388, t400, t387, t32, t23, t386, -pkin(4) * t76 - pkin(9) * t308 - t85 * t128 - t380 * t57 - t385 * t81 + t378, pkin(4) * t75 + pkin(9) * t366 - t85 * t131 + t380 * t58 - t384 * t81 + t377, t58 * t128 + t57 * t131 - t7 + (-t398 + (-t76 + t301) * pkin(9)) * t235 + ((qJD(5) * t128 - t75) * pkin(9) - t370) * t232, -t40 * pkin(4) + pkin(9) * t244 - t44 * t57 - t45 * t58 - t81 * t85, t388, t400, t387, t32, t23, t386, t209 * t105 + t265 * t128 + t224 * t76 + t336 * t380 + t391, -t211 * t105 + t131 * t265 - t224 * t75 - t337 * t380 + t392, -t337 * t128 - t336 * t131 + t209 * t75 - t211 * t76 - t380 * t348 + t399, t1 * t209 + t18 * t224 + t3 * t211 + t22 * t336 + t265 * t67 + t337 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t327, t69, t47, -t327, t48, t105, -t81 * t131 + t370, t128 * t81 - t383, 0, 0, t327, t69, t47, -t327, t48, t105, 0.2e1 * t361 + t347 + (-t277 - t67) * t131 + t242, -t364 * pkin(5) + t35 * t380 + (qJD(6) + t67) * t128 + t256, t75 * pkin(5) - t128 * t354, t354 * t36 + (-t67 * t131 + t1) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76 + t326, -t75 - t330, -t126 - t364, t36 * t128 + t22 * t131 + t18;];
tauc_reg  = t2;
