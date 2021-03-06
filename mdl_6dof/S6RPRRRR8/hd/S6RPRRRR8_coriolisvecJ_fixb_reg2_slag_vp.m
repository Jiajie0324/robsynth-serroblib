% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRRRR8
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
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:22
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRRRR8_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR8_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR8_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRR8_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:21:13
% EndTime: 2019-03-09 07:21:28
% DurationCPUTime: 6.39s
% Computational Cost: add. (14029->514), mult. (28954->680), div. (0->0), fcn. (19886->8), ass. (0->261)
t365 = sin(qJ(4));
t290 = qJD(4) * t365;
t391 = qJD(3) * t365 + t290;
t234 = sin(qJ(5));
t238 = cos(qJ(4));
t356 = pkin(3) * qJD(4);
t301 = t238 * t356;
t235 = sin(qJ(3));
t240 = -pkin(1) - pkin(7);
t208 = t240 * qJD(1) + qJD(2);
t284 = pkin(8) * qJD(1) - t208;
t171 = t284 * t235;
t161 = t365 * t171;
t239 = cos(qJ(3));
t316 = qJD(1) * t239;
t172 = -pkin(8) * t316 + t239 * t208;
t121 = t238 * t172 + t161;
t186 = t238 * t235 + t365 * t239;
t177 = t186 * qJD(1);
t294 = t238 * t316;
t295 = t365 * t235;
t180 = -qJD(1) * t295 + t294;
t138 = pkin(4) * t180 + pkin(9) * t177;
t302 = pkin(3) * t316;
t122 = t138 + t302;
t237 = cos(qJ(5));
t70 = -t121 * t234 + t237 * t122;
t390 = -t234 * t301 - t70;
t71 = t237 * t121 + t234 * t122;
t389 = -t237 * t301 + t71;
t228 = qJD(3) + qJD(4);
t151 = t180 * t234 - t237 * t228;
t379 = qJD(5) + t177;
t388 = t151 * t379;
t153 = t180 * t237 + t228 * t234;
t387 = t153 * t379;
t233 = sin(qJ(6));
t236 = cos(qJ(6));
t260 = t151 * t233 - t236 * t153;
t94 = t236 * t151 + t153 * t233;
t363 = t94 * t260;
t303 = t365 * pkin(3);
t220 = t303 + pkin(9);
t361 = -pkin(10) - t220;
t285 = qJD(5) * t361;
t335 = t177 * t234;
t304 = pkin(10) * t335;
t386 = t234 * t285 - t304 - t389;
t334 = t177 * t237;
t273 = t180 * pkin(5) + pkin(10) * t334;
t385 = -t237 * t285 + t273 - t390;
t366 = -pkin(10) - pkin(9);
t297 = qJD(5) * t366;
t163 = qJD(3) * pkin(3) + t172;
t112 = t163 * t238 + t161;
t75 = t237 * t112 + t234 * t138;
t384 = t234 * t297 - t304 - t75;
t74 = -t112 * t234 + t237 * t138;
t383 = -t237 * t297 + t273 + t74;
t328 = t233 * t237;
t187 = t234 * t236 + t328;
t307 = qJD(5) + qJD(6);
t144 = t307 * t187;
t382 = t187 * t177 + t144;
t310 = qJD(6) * t236;
t312 = qJD(5) * t237;
t329 = t233 * t234;
t370 = t236 * t237 - t329;
t381 = t370 * t177 + t236 * t312 + t237 * t310 - t307 * t329;
t380 = t391 * qJD(1);
t378 = t260 ^ 2 - t94 ^ 2;
t326 = t238 * t239;
t265 = t228 * t326;
t320 = t380 * t235;
t135 = qJD(1) * t265 - t320;
t162 = t238 * t171;
t256 = -t365 * t163 + t162;
t105 = t228 * pkin(9) - t256;
t317 = qJD(1) * t235;
t197 = pkin(3) * t317 + qJD(1) * qJ(2);
t115 = pkin(4) * t177 - pkin(9) * t180 + t197;
t62 = t105 * t237 + t115 * t234;
t315 = qJD(3) * t235;
t164 = t284 * t315;
t267 = t365 * t164 + t171 * t290;
t314 = qJD(3) * t239;
t165 = t284 * t314;
t373 = t238 * (qJD(4) * t163 - t165);
t66 = t267 + t373;
t229 = qJD(1) * qJD(2);
t308 = qJD(1) * qJD(3);
t289 = t239 * t308;
t193 = pkin(3) * t289 + t229;
t276 = t228 * t238 * t317 + t239 * t380;
t77 = t135 * pkin(4) + pkin(9) * t276 + t193;
t19 = -qJD(5) * t62 - t234 * t66 + t237 * t77;
t313 = qJD(5) * t234;
t88 = t180 * t313 - t228 * t312 + t237 * t276;
t11 = pkin(5) * t135 + pkin(10) * t88 + t19;
t18 = -t105 * t313 + t115 * t312 + t234 * t77 + t237 * t66;
t298 = t180 * t312 + t228 * t313 - t234 * t276;
t12 = -t298 * pkin(10) + t18;
t51 = -pkin(10) * t151 + t62;
t353 = t236 * t51;
t61 = -t105 * t234 + t237 * t115;
t50 = -pkin(10) * t153 + t61;
t46 = pkin(5) * t379 + t50;
t21 = t233 * t46 + t353;
t4 = -qJD(6) * t21 + t236 * t11 - t12 * t233;
t104 = -pkin(4) * t228 - t112;
t78 = pkin(5) * t151 + t104;
t377 = t78 * t260 + t4;
t170 = qJD(6) + t379;
t311 = qJD(6) * t233;
t33 = t151 * t310 + t153 * t311 + t233 * t298 + t236 * t88;
t376 = t170 * t94 - t33;
t3 = (qJD(6) * t46 + t12) * t236 + t11 * t233 - t51 * t311;
t375 = t78 * t94 - t3;
t245 = qJD(6) * t260 + t233 * t88 - t236 * t298;
t374 = -t170 * t260 + t245;
t130 = t370 * t186;
t128 = t187 * t186;
t188 = -t295 + t326;
t217 = t235 * pkin(3) + qJ(2);
t139 = pkin(4) * t186 - pkin(9) * t188 + t217;
t362 = pkin(8) - t240;
t194 = t362 * t235;
t195 = t362 * t239;
t150 = -t238 * t194 - t365 * t195;
t141 = t237 * t150;
t86 = t234 * t139 + t141;
t120 = t365 * t172 - t162;
t258 = pkin(3) * t290 - t120;
t372 = t365 * t194 - t238 * t195;
t371 = (t313 + t335) * pkin(5);
t369 = qJD(4) * t256;
t145 = t228 * t186;
t368 = -t180 * t145 - t188 * t276;
t367 = 0.2e1 * t229;
t364 = pkin(3) * t238;
t181 = t361 * t234;
t227 = t237 * pkin(10);
t182 = t220 * t237 + t227;
t137 = t181 * t233 + t182 * t236;
t360 = qJD(6) * t137 + t233 * t386 + t236 * t385;
t136 = t181 * t236 - t182 * t233;
t359 = -qJD(6) * t136 + t233 * t385 - t236 * t386;
t198 = t366 * t234;
t199 = pkin(9) * t237 + t227;
t155 = t198 * t233 + t199 * t236;
t358 = qJD(6) * t155 + t233 * t384 + t236 * t383;
t154 = t198 * t236 - t199 * t233;
t357 = -qJD(6) * t154 + t233 * t383 - t236 * t384;
t266 = -t238 * t164 - t365 * t165;
t67 = t266 - t369;
t355 = t372 * t67;
t16 = t18 * t237;
t354 = t233 * t51;
t352 = t67 * t188;
t351 = t88 * t234;
t146 = -t235 * t391 + t265;
t350 = qJD(1) * t370 + t130 * t307 + t187 * t146;
t349 = t187 * qJD(1) + t128 * t307 - t146 * t370;
t348 = t371 + t258;
t107 = t135 * t186;
t347 = t135 * t234;
t346 = t135 * t237;
t345 = t145 * t234;
t344 = t145 * t237;
t343 = t146 * t228;
t342 = t151 * t234;
t341 = t151 * t237;
t340 = t153 * t151;
t339 = t153 * t234;
t338 = t153 * t237;
t337 = t170 * t180;
t336 = t379 * t180;
t332 = t180 * t177;
t331 = t188 * t234;
t330 = t188 * t237;
t241 = qJD(3) ^ 2;
t325 = t241 * t235;
t324 = t241 * t239;
t242 = qJD(1) ^ 2;
t323 = t242 * qJ(2);
t319 = t235 ^ 2 - t239 ^ 2;
t318 = -t241 - t242;
t209 = pkin(3) * t314 + qJD(2);
t306 = -t61 * t334 - t62 * t335 + t16;
t305 = 0.2e1 * qJD(1);
t299 = t239 * t242 * t235;
t222 = -pkin(5) * t237 - pkin(4);
t293 = t188 * t313;
t84 = pkin(4) * t146 + pkin(9) * t145 + t209;
t184 = qJD(3) * t195;
t269 = t362 * t315;
t90 = qJD(4) * t372 - t238 * t184 + t365 * t269;
t286 = -t234 * t90 + t237 * t84;
t85 = t237 * t139 - t150 * t234;
t282 = t237 * t379;
t278 = qJD(5) * t186 + qJD(1);
t275 = t235 * t289;
t274 = t256 + t371;
t272 = t104 * t312 + t62 * t180 + t67 * t234;
t268 = t298 * t237;
t63 = pkin(5) * t186 - pkin(10) * t330 + t85;
t76 = -pkin(10) * t331 + t86;
t35 = -t233 * t76 + t236 * t63;
t36 = t233 * t63 + t236 * t76;
t264 = t234 * t62 + t237 * t61;
t263 = t234 * t61 - t237 * t62;
t262 = t104 * t177 - t135 * t220;
t261 = t146 * t177 + t107;
t259 = t338 + t342;
t257 = t104 * t313 - t61 * t180 - t67 * t237;
t255 = t188 * t312 - t345;
t254 = -t293 - t344;
t31 = t139 * t312 - t150 * t313 + t234 * t84 + t237 * t90;
t20 = t236 * t46 - t354;
t39 = t298 * pkin(5) + t67;
t253 = -t180 * t20 - t370 * t39 + t382 * t78;
t252 = t180 * t21 + t39 * t187 + t381 * t78;
t251 = -t197 * t180 - t266;
t250 = t197 * t177 - t267;
t249 = -t4 * t187 - t20 * t381 - t21 * t382 + t3 * t370;
t247 = -qJD(5) * t264 - t19 * t234;
t246 = t112 * t145 + t146 * t256 - t66 * t186 + t352;
t244 = t247 + t16;
t91 = t150 * qJD(4) - t365 * t184 - t238 * t269;
t243 = qJD(5) * t259 - t268 - t351;
t225 = qJ(2) * t367;
t221 = -pkin(4) - t364;
t196 = t222 - t364;
t140 = t145 * t228;
t131 = t370 * t188;
t129 = t187 * t188;
t114 = pkin(5) * t331 - t372;
t108 = -t177 ^ 2 + t180 ^ 2;
t103 = t320 + (t180 - t294) * t228;
t102 = t177 * t228 - t276;
t56 = pkin(5) * t255 + t91;
t48 = -t153 * t180 + t282 * t379 + t347;
t47 = -t234 * t379 ^ 2 + t151 * t180 + t346;
t45 = t342 * t379 - t268;
t44 = t153 * t282 - t351;
t43 = -t145 * t328 - t233 * t293 - t311 * t331 + (t307 * t330 - t345) * t236;
t41 = t144 * t188 + t145 * t370;
t32 = -qJD(5) * t86 + t286;
t30 = t135 * t370 - t170 * t382 + t180 * t94;
t29 = t135 * t187 + t170 * t381 + t180 * t260;
t24 = t236 * t50 - t354;
t23 = -t233 * t50 - t353;
t22 = -pkin(10) * t255 + t31;
t17 = (-t88 - t388) * t237 + (-t298 - t387) * t234;
t15 = pkin(10) * t344 + pkin(5) * t146 + (-t141 + (pkin(10) * t188 - t139) * t234) * qJD(5) + t286;
t9 = t245 * t370 + t382 * t94;
t8 = -t33 * t187 - t260 * t381;
t7 = -qJD(6) * t36 + t15 * t236 - t22 * t233;
t6 = qJD(6) * t35 + t15 * t233 + t22 * t236;
t5 = t187 * t245 + t260 * t382 - t33 * t370 - t381 * t94;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t367, t225, -0.2e1 * t275, 0.2e1 * t319 * t308, -t325, 0.2e1 * t275, -t324, 0, -t240 * t325 + (qJ(2) * t314 + qJD(2) * t235) * t305, -t240 * t324 + (-qJ(2) * t315 + qJD(2) * t239) * t305, 0, t225, t368, -t188 * t135 + t145 * t177 - t180 * t146 + t186 * t276, -t140, t261, -t343, 0, t135 * t217 + t146 * t197 + t177 * t209 + t186 * t193 - t228 * t91, -t197 * t145 + t209 * t180 + t193 * t188 - t217 * t276 - t90 * t228, -t150 * t135 - t90 * t177 + t91 * t180 + t276 * t372 + t246, -t112 * t91 + t150 * t66 + t193 * t217 + t197 * t209 - t256 * t90 - t355, t153 * t254 - t330 * t88 (t339 + t341) * t145 + (-t268 + t351 + (-t338 + t342) * qJD(5)) * t188, t135 * t330 + t146 * t153 - t186 * t88 + t254 * t379, t151 * t255 + t298 * t331, -t135 * t331 - t151 * t146 - t186 * t298 - t255 * t379, t146 * t379 + t107, t104 * t255 + t85 * t135 + t61 * t146 + t91 * t151 + t19 * t186 - t298 * t372 + t32 * t379 + t331 * t67, t104 * t254 - t135 * t86 - t146 * t62 + t153 * t91 - t18 * t186 - t31 * t379 + t330 * t67 + t372 * t88, -t31 * t151 - t86 * t298 - t32 * t153 + t85 * t88 + t264 * t145 + (qJD(5) * t263 - t18 * t234 - t19 * t237) * t188, t104 * t91 + t18 * t86 + t19 * t85 + t31 * t62 + t32 * t61 - t355, -t131 * t33 + t260 * t41, t129 * t33 + t131 * t245 + t260 * t43 + t41 * t94, t131 * t135 - t146 * t260 - t170 * t41 - t186 * t33, -t129 * t245 + t43 * t94, -t129 * t135 - t146 * t94 - t170 * t43 + t186 * t245, t146 * t170 + t107, -t114 * t245 + t129 * t39 + t135 * t35 + t146 * t20 + t170 * t7 + t186 * t4 + t43 * t78 + t56 * t94, -t114 * t33 + t131 * t39 - t135 * t36 - t146 * t21 - t170 * t6 - t186 * t3 - t260 * t56 - t41 * t78, -t129 * t3 - t131 * t4 + t20 * t41 - t21 * t43 + t245 * t36 + t260 * t7 + t33 * t35 - t6 * t94, t114 * t39 + t20 * t7 + t21 * t6 + t3 * t36 + t35 * t4 + t56 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t242, -t323, 0, 0, 0, 0, 0, 0, t318 * t235, t318 * t239, 0, -t323, 0, 0, 0, 0, 0, 0, -qJD(1) * t177 - t140, -qJD(1) * t180 - t343, -t261 - t368, -qJD(1) * t197 - t246, 0, 0, 0, 0, 0, 0, -t186 * t347 + t145 * t151 - t188 * t298 + (-t234 * t146 - t237 * t278) * t379, -t186 * t346 + t145 * t153 + t188 * t88 + (-t146 * t237 + t234 * t278) * t379 (t339 - t341) * t146 + t259 * qJD(1) + t243 * t186, -qJD(1) * t264 + t104 * t145 - t146 * t263 + t186 * t244 - t352, 0, 0, 0, 0, 0, 0, -t128 * t135 + t145 * t94 - t170 * t350 + t188 * t245, -t130 * t135 - t145 * t260 + t170 * t349 + t188 * t33, -t128 * t33 + t130 * t245 - t260 * t350 + t349 * t94, -t128 * t4 + t130 * t3 + t145 * t78 - t188 * t39 - t20 * t350 - t21 * t349; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t299, -t319 * t242, 0, -t299, 0, 0, -t239 * t323, t235 * t323, 0, 0, t332, t108, t102, -t332, t103, 0, -t177 * t302 + t120 * t228 + (-t228 * t303 + t256) * qJD(4) + t251, -t180 * t302 + t121 * t228 + (t165 + (-pkin(3) * t228 - t163) * qJD(4)) * t238 + t250 (-t256 - t120) * t180 + (-t112 + t121) * t177 + (-t365 * t135 + t238 * t276 + (-t238 * t177 + t365 * t180) * qJD(4)) * pkin(3), t112 * t120 + t256 * t121 + (-t197 * t316 + t365 * t66 - t238 * t67 + (-t365 * t112 - t238 * t256) * qJD(4)) * pkin(3), t44, t17, t48, t45, t47, -t336, t221 * t298 + t262 * t234 + t258 * t151 + (-t220 * t312 + t390) * t379 + t257, -t221 * t88 + t262 * t237 + t258 * t153 + (t220 * t313 + t389) * t379 + t272, t71 * t151 + t70 * t153 + (-t151 * t301 - t220 * t298 + (t153 * t220 - t61) * qJD(5)) * t237 + (t153 * t301 - t220 * t88 - t19 + (t151 * t220 - t62) * qJD(5)) * t234 + t306, -t104 * t120 + t67 * t221 - t61 * t70 - t62 * t71 + (t365 * t104 - t263 * t238) * t356 + t244 * t220, t8, t5, t29, t9, t30, -t337, t135 * t136 - t170 * t360 - t196 * t245 + t348 * t94 + t253, -t135 * t137 + t170 * t359 - t196 * t33 - t260 * t348 + t252, t136 * t33 + t137 * t245 - t260 * t360 + t359 * t94 + t249, t136 * t4 + t137 * t3 + t196 * t39 - t20 * t360 - t21 * t359 + t348 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t332, t108, t102, -t332, t103, 0, -t228 * t256 + t251 + t369, t112 * t228 + t250 - t373, 0, 0, t44, t17, t48, t45, t47, -t336, -pkin(4) * t298 - t74 * t379 + t256 * t151 + t104 * t335 + (-t312 * t379 - t347) * pkin(9) + t257, t104 * t334 + pkin(4) * t88 + t256 * t153 + t379 * t75 + (t313 * t379 - t346) * pkin(9) + t272, pkin(9) * t243 + t75 * t151 + t74 * t153 + t247 + t306, -pkin(4) * t67 + pkin(9) * t244 + t104 * t256 - t61 * t74 - t62 * t75, t8, t5, t29, t9, t30, -t337, t135 * t154 - t170 * t358 - t222 * t245 + t274 * t94 + t253, -t135 * t155 + t170 * t357 - t222 * t33 - t260 * t274 + t252, t154 * t33 + t155 * t245 - t260 * t358 + t357 * t94 + t249, t154 * t4 + t155 * t3 - t20 * t358 - t21 * t357 + t222 * t39 + t274 * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t340, -t151 ^ 2 + t153 ^ 2, -t88 + t388, -t340, -t298 + t387, t135, -t104 * t153 + t379 * t62 + t19, t104 * t151 + t379 * t61 - t18, 0, 0, -t363, t378, t376, t363, t374, t135, -t170 * t23 + (t135 * t236 - t153 * t94 - t170 * t311) * pkin(5) + t377, t170 * t24 + (-t135 * t233 + t153 * t260 - t170 * t310) * pkin(5) + t375, -t20 * t94 - t21 * t260 - t23 * t260 + t24 * t94 + (t233 * t245 + t236 * t33 + (-t233 * t260 - t236 * t94) * qJD(6)) * pkin(5), -t20 * t23 - t21 * t24 + (-t153 * t78 + t233 * t3 + t236 * t4 + (-t20 * t233 + t21 * t236) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t363, t378, t376, t363, t374, t135, t170 * t21 + t377, t170 * t20 + t375, 0, 0;];
tauc_reg  = t1;
