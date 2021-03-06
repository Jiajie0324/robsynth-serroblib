% Calculate minimal parameter regressor of coriolis matrix for
% S6PRRPRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x24]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:44
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRRPRP4_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP4_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP4_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP4_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:44:01
% EndTime: 2019-03-08 21:44:11
% DurationCPUTime: 4.27s
% Computational Cost: add. (3395->367), mult. (7335->566), div. (0->0), fcn. (7104->8), ass. (0->287)
t245 = sin(qJ(5));
t349 = qJD(5) * t245;
t249 = cos(qJ(3));
t251 = -pkin(3) - pkin(9);
t246 = sin(qJ(3));
t371 = t246 * qJ(4);
t286 = -t249 * t251 + t371;
t170 = -pkin(2) - t286;
t410 = pkin(4) + pkin(8);
t204 = t410 * t246;
t248 = cos(qJ(5));
t186 = t248 * t204;
t120 = t170 * t245 - t186;
t372 = t245 * t249;
t96 = qJ(6) * t372 - t120;
t411 = t96 / 0.2e1;
t398 = t246 * pkin(5);
t88 = t96 + t398;
t413 = -t88 / 0.2e1;
t324 = t411 + t413;
t326 = t398 / 0.2e1;
t268 = (t326 - t324) * t245;
t416 = qJD(2) * t268;
t419 = pkin(5) * t349 + t416;
t418 = -t88 + t96;
t393 = t88 * t245;
t374 = t245 * t204;
t121 = t170 * t248 + t374;
t366 = t248 * t249;
t97 = -qJ(6) * t366 + t121;
t30 = (-t97 * t248 + t393) * t246;
t417 = -qJ(6) + t251;
t240 = t245 ^ 2;
t242 = t248 ^ 2;
t214 = t240 - t242;
t333 = t249 * qJD(2);
t318 = t248 * t333;
t262 = qJD(3) * t214 + 0.2e1 * t245 * t318;
t351 = qJD(4) * t249;
t415 = qJD(3) * t286 - t351;
t244 = sin(pkin(6));
t247 = sin(qJ(2));
t367 = t247 * t248;
t250 = cos(qJ(2));
t369 = t246 * t250;
t145 = (t245 * t369 + t367) * t244;
t365 = t248 * t250;
t320 = t244 * t365;
t392 = cos(pkin(6));
t225 = t392 * t249;
t377 = t244 * t247;
t323 = t246 * t377;
t165 = -t225 + t323;
t383 = t165 * t245;
t127 = t320 - t383;
t402 = -t246 / 0.2e1;
t309 = t127 * t402;
t376 = t244 * t250;
t321 = t245 * t376;
t382 = t165 * t248;
t126 = t321 + t382;
t310 = t126 * t402;
t368 = t247 * t245;
t144 = (t246 * t365 - t368) * t244;
t408 = t144 / 0.2e1;
t25 = (t309 + t408) * t248 + (t310 + t145 / 0.2e1) * t245;
t364 = t25 * qJD(1);
t414 = qJD(5) * t268 - t364;
t239 = pkin(3) * t246;
t391 = qJ(4) * t249;
t203 = t239 - t391;
t174 = pkin(9) * t246 + t203;
t237 = t249 * pkin(8);
t238 = t249 * pkin(4);
t205 = t237 + t238;
t188 = t205 * t248;
t396 = t249 * pkin(5);
t94 = t396 + t188 + (-qJ(6) * t246 - t174) * t245;
t412 = t94 / 0.2e1;
t409 = -t127 / 0.2e1;
t191 = t417 * t245;
t407 = -t191 / 0.2e1;
t406 = -t240 / 0.2e1;
t405 = t242 / 0.2e1;
t404 = -t245 / 0.2e1;
t403 = t245 / 0.2e1;
t401 = -t248 / 0.2e1;
t400 = t248 / 0.2e1;
t399 = t249 / 0.2e1;
t397 = t248 * pkin(5);
t395 = pkin(5) * qJD(5);
t13 = t418 * t366;
t390 = qJD(2) * t13;
t388 = qJD(2) * t25;
t387 = qJD(2) * t30;
t160 = t248 * t174;
t187 = t205 * t245;
t361 = t160 + t187;
t370 = t246 * t248;
t98 = qJ(6) * t370 + t361;
t11 = t98 * t366 - t94 * t372 + t30;
t386 = t11 * qJD(2);
t385 = t126 * t248;
t384 = t127 * t245;
t381 = t191 * t246;
t192 = t417 * t248;
t380 = t192 * t246;
t299 = t392 * t246;
t322 = t249 * t377;
t166 = t299 + t322;
t21 = (-t165 - t384 + t385) * t166;
t379 = t21 * qJD(1);
t319 = t249 * t376;
t22 = t126 * t144 - t127 * t145 + t166 * t319;
t378 = t22 * qJD(1);
t375 = t245 * t174;
t373 = t245 * t246;
t276 = t126 * t404 + t127 * t401;
t26 = t144 * t401 + t145 * t404 + t276 * t246;
t363 = t26 * qJD(2);
t61 = -t165 * t244 * t369 + (-t166 * t249 + t377) * t376;
t362 = t61 * qJD(1);
t213 = t240 + t242;
t241 = t246 ^ 2;
t243 = t249 ^ 2;
t215 = t243 - t241;
t182 = t215 * t245;
t360 = qJD(2) * t182;
t185 = t215 * t248;
t359 = qJD(2) * t185;
t358 = qJD(2) * t246;
t357 = qJD(2) * t247;
t356 = qJD(2) * t248;
t355 = qJD(3) * qJ(4);
t354 = qJD(3) * t166;
t353 = qJD(4) * t245;
t352 = qJD(4) * t248;
t350 = qJD(5) * t127;
t348 = qJD(5) * t246;
t347 = qJD(5) * t248;
t346 = qJD(5) * t251;
t291 = -pkin(3) * t249 - t371;
t193 = -pkin(2) + t291;
t128 = t193 * t249 + t203 * t246;
t345 = t128 * qJD(2);
t129 = -t193 * t246 + t203 * t249;
t344 = t129 * qJD(2);
t158 = t213 * t249 * t246;
t343 = t158 * qJD(2);
t183 = t213 * t243;
t342 = t183 * qJD(2);
t300 = t406 - t242 / 0.2e1;
t200 = -0.1e1 / 0.2e1 + t300;
t341 = t200 * qJD(3);
t340 = t213 * qJD(3);
t339 = t215 * qJD(2);
t338 = t241 * qJD(2);
t337 = t245 * qJD(3);
t336 = t246 * qJD(3);
t335 = t246 * qJD(4);
t334 = t248 * qJD(3);
t235 = t249 * qJD(3);
t332 = t249 * qJD(5);
t331 = pkin(5) * t372;
t330 = pkin(2) * t358;
t329 = pkin(2) * t333;
t327 = pkin(8) * t336;
t325 = t397 / 0.2e1;
t317 = t245 * t334;
t316 = t245 * t235;
t315 = t245 * t332;
t314 = t248 * t332;
t313 = t193 * t358;
t312 = qJD(2) * t376;
t220 = t246 * t235;
t219 = t246 * t333;
t222 = t248 * t235;
t311 = t245 * t347;
t308 = -t376 / 0.2e1;
t307 = t376 / 0.2e1;
t306 = -t373 / 0.2e1;
t305 = t372 / 0.2e1;
t304 = -t366 / 0.2e1;
t303 = t366 / 0.2e1;
t302 = t365 / 0.2e1;
t301 = t237 / 0.2e1 + t238 / 0.2e1;
t298 = qJD(2) * (t241 + t243);
t297 = -t331 / 0.2e1;
t296 = qJD(5) + t358;
t295 = t245 * t222;
t293 = t166 * t305;
t292 = t249 * t307;
t163 = (-t397 - t410) * t246;
t164 = pkin(5) * t366 + t205;
t252 = (t97 * t403 + t88 * t400 + t163 / 0.2e1) * t166 + t126 * t412 + t98 * t409 - t165 * t164 / 0.2e1;
t226 = pkin(5) * t245 + qJ(4);
t254 = -t144 * t192 / 0.2e1 + t145 * t407 + t249 * t226 * t308;
t2 = t252 + t254;
t9 = t163 * t164 + t88 * t94 + t97 * t98;
t290 = t2 * qJD(1) + t9 * qJD(2);
t12 = -t164 * t331 + t418 * t97;
t3 = t324 * t127 + (t408 + t293) * pkin(5);
t288 = -qJD(1) * t3 + qJD(2) * t12;
t5 = -t324 * t191 + (t164 * t401 + t226 * t305 + t412) * pkin(5);
t65 = t226 * t397;
t287 = -qJD(2) * t5 + qJD(3) * t65;
t28 = (-t120 - t186) * t249 - t375 * t246;
t53 = (t245 * t307 - t126 / 0.2e1 + t382 / 0.2e1) * t249;
t285 = -t53 * qJD(1) + t28 * qJD(2);
t29 = t361 * t246 - t205 * t373 + (t121 - t374) * t249;
t54 = (t244 * t302 + t409 - t383 / 0.2e1) * t249;
t284 = -t54 * qJD(1) - t29 * qJD(2);
t31 = t97 * t366 - t88 * t372;
t34 = (t307 + t276) * t249;
t283 = -qJD(1) * t34 - qJD(2) * t31;
t257 = (-t368 / 0.2e1 + t246 * t302) * t244;
t266 = t309 + t293;
t38 = t257 + t266;
t71 = -t121 * t246 - t205 * t372;
t282 = -qJD(1) * t38 + qJD(2) * t71;
t256 = (-t367 / 0.2e1 + t250 * t306) * t244;
t267 = t166 * t304 + t310;
t39 = t256 - t267;
t70 = -t120 * t246 + t205 * t366;
t281 = -qJD(1) * t39 - qJD(2) * t70;
t123 = t191 * t245 + t192 * t248;
t280 = -t338 - t348;
t279 = t225 / 0.2e1 - t323 / 0.2e1;
t278 = t391 / 0.2e1 - t239 / 0.2e1;
t277 = -t385 / 0.2e1 + t384 / 0.2e1;
t275 = t251 * t402 - t391 / 0.2e1;
t36 = (t203 / 0.2e1 + t278) * t376;
t274 = -t193 * t203 * qJD(2) + t36 * qJD(1);
t273 = t296 * t372;
t105 = (t174 / 0.2e1 + t275) * t245;
t272 = -qJ(4) * t334 - t105 * qJD(2);
t261 = t275 * t248;
t106 = t160 / 0.2e1 + t261;
t271 = qJ(4) * t337 - t106 * qJD(2);
t173 = (t405 + t406) * t249;
t270 = qJD(2) * t173 + t317;
t269 = t245 * t333 - t334;
t265 = -qJD(3) * t165 + t249 * t312;
t125 = t246 * t312 + t354;
t264 = t243 * t245 * t356 - qJD(3) * t173;
t184 = t214 * t243;
t263 = -qJD(2) * t184 + 0.2e1 * t295;
t253 = (-t97 / 0.2e1 + t192 * t399) * t245 + (t249 * t407 + t413) * t248;
t17 = (pkin(8) / 0.2e1 + pkin(4) / 0.2e1 + t325) * t246 + t253;
t32 = -t277 + t279;
t260 = -qJD(1) * t32 + qJD(2) * t17 - qJD(3) * t123;
t20 = (t380 / 0.2e1 - t98 / 0.2e1) * t245 + (-t381 / 0.2e1 + t396 / 0.2e1 - t94 / 0.2e1) * t248 + t301;
t258 = t299 / 0.2e1 + t322 / 0.2e1;
t64 = t300 * t166 + t258;
t259 = qJD(1) * t64 + qJD(2) * t20 + qJD(3) * t226;
t255 = t291 * qJD(3) + t351;
t232 = pkin(8) * t235;
t227 = t235 / 0.2e1;
t221 = t246 * t356;
t218 = t245 * t358;
t199 = 0.1e1 / 0.2e1 + t300;
t181 = -t221 - t347;
t180 = -t218 - t349;
t175 = t219 + t332 / 0.2e1;
t171 = t269 * pkin(5);
t162 = t173 * qJD(5);
t143 = (t247 * t333 + t250 * t336) * t244;
t142 = (-t250 * t235 + t246 * t357) * t244;
t75 = -t187 - t160 / 0.2e1 + t261;
t74 = t188 - t375 / 0.2e1 + t275 * t245;
t63 = t258 + (t240 / 0.2e1 + t405) * t166;
t56 = t127 * t399 + t165 * t305 + t248 * t292;
t55 = t126 * t399 + t165 * t304 + t245 * t292;
t41 = t257 - t266;
t40 = t256 + t267;
t37 = t203 * t308 + t278 * t376;
t35 = t126 * t305 + t127 * t303 + t292;
t33 = t277 + t279;
t19 = pkin(5) * t303 + t98 * t403 + t94 * t400 + (t191 * t401 + t192 * t403) * t246 + t301;
t18 = -pkin(5) * t370 / 0.2e1 + t253 + t410 * t402;
t15 = t96 * t403 - t393 / 0.2e1 + t245 * t326;
t10 = t166 * t397;
t8 = pkin(5) * t306 - t324 * t245;
t6 = pkin(5) * t412 + t164 * t325 + t191 * t411 + t226 * t297 + t88 * t407;
t4 = t96 * t409 + t127 * t88 / 0.2e1 + t166 * t297 + pkin(5) * t408;
t1 = t252 - t254;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t61, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t22 + qJD(3) * t21; 0, 0, -t244 * t357, -t312, 0, 0, 0, 0, 0, -t143, t142, t298 * t376, t143, -t142, -t362 + t37 * qJD(3) + (t193 * t357 + (pkin(8) * t298 + t335) * t250) * t244, 0, 0, 0, 0, 0 (t144 * t246 + t243 * t320) * qJD(2) + t55 * qJD(3) + t41 * qJD(5) (-t145 * t246 - t243 * t321) * qJD(2) + t56 * qJD(3) + t40 * qJD(5), t26 * qJD(3) + (t144 * t245 - t145 * t248) * t333, t378 + (t144 * t88 + t145 * t97 + t164 * t319) * qJD(2) + t1 * qJD(3) - t26 * qJD(4) + t4 * qJD(5) + t35 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, -t125, -t265, 0, t125, t265, t37 * qJD(2) + (-pkin(3) * t166 - qJ(4) * t165) * qJD(3) + t166 * qJD(4), 0, 0, 0, 0, 0, qJD(2) * t55 - t165 * t337 + t166 * t347, qJD(2) * t56 - t165 * t334 - t166 * t349, -t213 * t354 + t363, t379 + t1 * qJD(2) + (t123 * t166 - t165 * t226) * qJD(3) + t63 * qJD(4) + t10 * qJD(5) + t33 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t63 - t363; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t41 + t166 * t334 + t350, qJD(2) * t40 - qJD(5) * t126 - t166 * t337, 0, pkin(5) * t350 + qJD(2) * t4 + qJD(3) * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t35 + qJD(3) * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t36 + t362, 0, 0, 0, 0, 0, -qJD(3) * t53 - qJD(5) * t38, -qJD(3) * t54 - qJD(5) * t39, qJD(3) * t25, qJD(3) * t2 - qJD(4) * t25 - qJD(5) * t3 - qJD(6) * t34 - t378; 0, 0, 0, 0, t220, t215 * qJD(3), 0, 0, 0, -pkin(2) * t336, -pkin(2) * t235, 0, qJD(3) * t129 - t249 * t335, -qJD(3) * t128 + qJD(4) * t241 (qJD(3) * t203 - t335) * t193, -t220 * t240 + t243 * t311, -qJD(5) * t184 - 0.2e1 * t246 * t295, -qJD(3) * t182 - t246 * t314, -qJD(3) * t185 + t246 * t315, t220, qJD(3) * t28 + qJD(5) * t71 + t241 * t353, -qJD(3) * t29 - qJD(5) * t70 + t241 * t352, -qJD(3) * t11 + qJD(4) * t158 - qJD(5) * t13 + qJD(6) * t183, qJD(3) * t9 + qJD(4) * t30 + qJD(5) * t12 - qJD(6) * t31; 0, 0, 0, 0, t219, t339, t235, -t336, 0, -t232 - t330, t327 - t329, t255, t232 + t344, -t327 - t345, pkin(8) * t255 - t274, -t162 + (-t240 * t333 + t317) * t246, -t246 * t262 + 0.2e1 * t249 * t311, t222 - t360, -t316 - t359, t175, t74 * qJD(5) - t204 * t337 - t248 * t415 + t285, t75 * qJD(5) - t204 * t334 + t245 * t415 + t284, t364 - t386 + ((-t94 + t381) * t248 + (-t98 - t380) * t245) * qJD(3) + t8 * qJD(5) (t163 * t226 + t191 * t98 + t192 * t94) * qJD(3) + t19 * qJD(4) + t6 * qJD(5) + t18 * qJD(6) + t290; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t235, -t219, t338, t232 - t313, 0, 0, 0, 0, 0, t245 * t338 + t222, t248 * t338 - t316, t343, qJD(3) * t19 + qJD(5) * t15 - t364 + t387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t264, t263, -t296 * t366, t273, t227, qJD(3) * t74 - qJD(5) * t121 + t282, qJD(3) * t75 + qJD(5) * t120 + t281, pkin(5) * t314 + qJD(3) * t8 - t390, qJD(3) * t6 + qJD(4) * t15 - t395 * t97 + t288; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t342, qJD(3) * t18 + t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t36, 0, 0, 0, 0, 0, t53 * qJD(2), t54 * qJD(2), -t388, -qJD(2) * t2 + qJD(4) * t64 - qJD(6) * t32 - t379; 0, 0, 0, 0, -t219, -t339, 0, 0, 0, t330, t329, 0, -t344, t345, t274, t219 * t240 - t162, 0.2e1 * t248 * t273, -t245 * t348 + t360, -t246 * t347 + t359, -t175, qJD(5) * t105 - t285, qJD(5) * t106 - t284, t386 + t414, qJD(4) * t20 - qJD(5) * t5 + qJD(6) * t17 - t290; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), qJ(4) * qJD(4), -t311, t214 * qJD(5), 0, 0, 0, qJ(4) * t347 + t353, -qJ(4) * t349 + t352, qJD(6) * t213, qJD(4) * t226 + qJD(5) * t65 - qJD(6) * t123; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t355, 0, 0, 0, 0, 0, t337, t334, 0, qJD(6) * t199 + t259; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t270, t262, t180, t181, -t333 / 0.2e1, -t245 * t346 - t272, -t248 * t346 - t271, t419, -t191 * t395 + t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t340, qJD(4) * t199 + t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t64 + t388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t219, -t338, t313, 0, 0, 0, 0, 0, t280 * t245, t280 * t248, -t343, -qJD(3) * t20 - t387 - t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t355, 0, 0, 0, 0, 0, -t337, -t334, 0, qJD(6) * t200 - t259; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180, t181, 0, -t419; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38 * qJD(2), t39 * qJD(2), 0, qJD(2) * t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t264, -t263 (t318 + t337) * t246, -t269 * t246, t227, -qJD(3) * t105 + t245 * t335 - t282, -qJD(3) * t106 + t248 * t335 - t281, -qJD(3) * t268 + t390, qJD(3) * t5 + qJD(4) * t268 + qJD(6) * t331 - t288; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t270, -t262, t218, t221, t333 / 0.2e1, t272, t271, -t416, -qJD(6) * t397 - t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t218, t221, 0, t416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t171; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t34 + qJD(3) * t32; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t342, -pkin(5) * t315 - qJD(3) * t17 - t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t340, pkin(5) * t347 - qJD(4) * t200 - t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t171; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t7;
