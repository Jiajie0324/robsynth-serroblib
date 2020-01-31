% Calculate inertial parameters regressor of coriolis matrix for
% S5RRPPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPPR11_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:48:04
% EndTime: 2019-12-31 19:48:13
% DurationCPUTime: 4.68s
% Computational Cost: add. (5518->367), mult. (10281->490), div. (0->0), fcn. (10358->6), ass. (0->283)
t254 = cos(qJ(2));
t251 = cos(pkin(8));
t394 = cos(qJ(5));
t311 = t394 * t251;
t220 = t254 * t311;
t250 = sin(pkin(8));
t252 = sin(qJ(5));
t364 = t252 * t250;
t166 = t254 * t364 - t220;
t312 = t394 * t250;
t363 = t252 * t251;
t191 = t312 + t363;
t169 = t191 * t254;
t194 = t311 - t364;
t401 = t194 / 0.2e1;
t403 = t191 / 0.2e1;
t75 = t166 * t401 + t169 * t403;
t422 = t75 * qJD(5);
t184 = t194 * qJD(5);
t253 = sin(qJ(2));
t219 = t253 * t311;
t299 = -t364 / 0.2e1;
t261 = t219 / 0.2e1 + (t299 + t401) * t253;
t410 = t261 * qJD(1);
t421 = -t184 - t410;
t362 = t252 * t253;
t165 = t250 * t362 - t219;
t168 = t191 * t253;
t282 = t165 * t191 + t168 * t194;
t420 = qJD(3) * t282;
t298 = t362 / 0.2e1;
t398 = t253 / 0.2e1;
t112 = t250 * t298 - t219 / 0.2e1 + t194 * t398;
t419 = t112 * qJD(5);
t334 = t194 * qJD(2);
t418 = -t75 * qJD(1) + t191 * t334;
t337 = t169 * qJD(1);
t417 = -qJD(2) * t75 + t166 * t337;
t244 = t250 ^ 2;
t245 = t251 ^ 2;
t223 = t244 + t245;
t248 = t253 ^ 2;
t249 = t254 ^ 2;
t225 = t249 - t248;
t416 = t334 - t337;
t262 = -t312 / 0.2e1 - t363 / 0.2e1;
t117 = (t403 + t262) * t254;
t415 = t117 * qJD(1) + t334;
t336 = t191 * qJD(2);
t340 = t166 * qJD(1);
t414 = t336 - t340;
t400 = t220 / 0.2e1;
t402 = -t194 / 0.2e1;
t116 = t400 + (t299 + t402) * t254;
t413 = t116 * qJD(1) + t336;
t213 = t253 * pkin(2) - t254 * qJ(3);
t187 = t253 * qJ(4) + t213;
t242 = t254 * pkin(6);
t243 = t254 * pkin(3);
t218 = t242 + t243;
t149 = t251 * t187 + t218 * t250;
t380 = t149 * t250;
t200 = t218 * t251;
t148 = -t250 * t187 + t200;
t381 = t148 * t251;
t412 = t380 + t381;
t411 = qJD(5) * t261;
t361 = t253 * qJ(3);
t391 = -pkin(2) - qJ(4);
t269 = t391 * t254 - t361;
t321 = t254 * qJD(3);
t350 = qJD(4) * t253;
t409 = t269 * qJD(2) + t321 - t350;
t408 = t169 ^ 2;
t188 = t191 ^ 2;
t407 = t194 ^ 2;
t406 = pkin(3) + pkin(6);
t405 = -t169 / 0.2e1;
t404 = -t191 / 0.2e1;
t399 = -t253 / 0.2e1;
t397 = t254 / 0.2e1;
t373 = t194 * t169;
t374 = t191 * t166;
t76 = -t373 - t374;
t396 = t76 * qJD(4);
t74 = t374 / 0.2e1 + t373 / 0.2e1;
t395 = t74 * qJD(4);
t393 = pkin(7) * t253;
t392 = t251 * pkin(4);
t102 = t254 * pkin(4) + t200 + (-t187 - t393) * t250;
t314 = t394 * t102;
t109 = t251 * t393 + t149;
t365 = t252 * t109;
t58 = t314 - t365;
t390 = t58 * t194;
t313 = t394 * t109;
t366 = t252 * t102;
t59 = t313 + t366;
t389 = t59 * t191;
t217 = t406 * t253;
t198 = t250 * t217;
t265 = -pkin(1) + t269;
t145 = t251 * t265 + t198;
t367 = t251 * t254;
t107 = -pkin(7) * t367 + t145;
t320 = pkin(7) - t391;
t368 = t251 * t217;
t255 = t253 * pkin(4) + t368 + (t320 * t254 + pkin(1) + t361) * t250;
t56 = t252 * t107 - t394 * t255;
t57 = t394 * t107 + t252 * t255;
t17 = t165 * t57 - t168 * t56;
t6 = t166 * t59 + t169 * t58 - t17;
t388 = t6 * qJD(1);
t177 = (-t392 - t406) * t253;
t318 = pkin(4) * t367;
t178 = t318 + t218;
t9 = t178 * t177 - t56 * t58 + t57 * t59;
t387 = t9 * qJD(1);
t32 = -t178 * t166 - t56 * t253;
t386 = qJD(1) * t32;
t33 = -t178 * t169 - t57 * t253;
t385 = qJD(1) * t33;
t144 = -t250 * t265 + t368;
t65 = (-t144 * t250 + t145 * t251) * t253;
t384 = qJD(1) * t65;
t369 = t250 * t254;
t66 = -t144 * t369 + t145 * t367;
t383 = qJD(1) * t66;
t67 = t165 * t166 + t168 * t169;
t382 = qJD(1) * t67;
t15 = t178 * t165 - t177 * t166 + t58 * t253 - t56 * t254;
t379 = t15 * qJD(1);
t16 = -t178 * t168 + t177 * t169 + t59 * t253 + t57 * t254;
t378 = t16 * qJD(1);
t201 = t320 * t250;
t291 = t320 * t251;
t151 = -t394 * t201 - t252 * t291;
t377 = t165 * t151;
t150 = -t252 * t201 + t394 * t291;
t376 = t168 * t150;
t375 = t17 * qJD(1);
t228 = t250 * pkin(4) + qJ(3);
t259 = t151 * t399 + t178 * t401 + t228 * t405;
t263 = -t365 / 0.2e1 + t314 / 0.2e1;
t21 = -t259 + t263;
t372 = t21 * qJD(1);
t260 = t150 * t398 + t178 * t404 + t228 * t166 / 0.2e1;
t264 = -t366 / 0.2e1 - t313 / 0.2e1;
t22 = -t260 + t264;
t371 = t22 * qJD(1);
t370 = t250 * t253;
t26 = t144 * t370 - t148 * t369 + (-t145 * t253 + t149 * t254) * t251;
t360 = t26 * qJD(1);
t27 = t144 * t148 + t145 * t149 - t218 * t217;
t359 = t27 * qJD(1);
t52 = t144 * t254 + t148 * t253 + (-t217 * t254 - t218 * t253) * t251;
t358 = t52 * qJD(1);
t53 = t149 * t253 - t218 * t370 + (t145 - t198) * t254;
t357 = t53 * qJD(1);
t68 = t165 * t169 + t166 * t168;
t356 = t68 * qJD(1);
t98 = -t165 * t253 + t166 * t254;
t355 = t98 * qJD(1);
t99 = t168 * t253 - t169 * t254;
t354 = t99 * qJD(1);
t353 = qJD(1) * t253;
t352 = qJD(4) * t166;
t351 = qJD(4) * t169;
t349 = qJD(5) * t169;
t348 = t112 * qJD(1);
t119 = t191 * t399 + t251 * t298 + t312 * t398;
t343 = t119 * qJD(1);
t120 = (t404 + t262) * t253;
t106 = t120 * qJD(1);
t287 = -t254 * pkin(2) - t361;
t204 = -pkin(1) + t287;
t159 = t204 * t254 + t213 * t253;
t342 = t159 * qJD(1);
t160 = -t204 * t253 + t213 * t254;
t341 = t160 * qJD(1);
t339 = t166 * qJD(5);
t167 = t223 * t254 * t253;
t338 = t167 * qJD(1);
t181 = t191 * qJD(5);
t193 = t223 * t249;
t335 = t193 * qJD(1);
t196 = t225 * t250;
t333 = t196 * qJD(1);
t197 = t225 * t251;
t332 = t197 * qJD(1);
t296 = -t244 / 0.2e1 - t245 / 0.2e1;
t203 = -0.1e1 / 0.2e1 + t296;
t331 = t203 * qJD(2);
t330 = t223 * qJD(2);
t329 = t225 * qJD(1);
t328 = t228 * qJD(2);
t327 = t248 * qJD(1);
t326 = t248 * qJD(3);
t325 = t250 * qJD(2);
t324 = t251 * qJD(2);
t323 = t253 * qJD(2);
t322 = t254 * qJD(1);
t240 = t254 * qJD(2);
t319 = -pkin(6) / 0.2e1 - pkin(3) / 0.2e1;
t317 = pkin(1) * t353;
t316 = pkin(1) * t322;
t315 = pkin(6) * t323;
t309 = t250 * t324;
t308 = t165 * t353;
t307 = t168 * t353;
t305 = t191 * t184;
t304 = t204 * t213 * qJD(1);
t303 = t204 * t353;
t302 = t250 * t327;
t301 = t251 * t327;
t300 = t250 * t240;
t227 = t253 * t240;
t226 = t253 * t322;
t297 = t242 / 0.2e1 + t243 / 0.2e1;
t295 = -0.2e1 * t250 * t367;
t246 = qJD(2) * qJ(3);
t274 = -t381 / 0.2e1 - t380 / 0.2e1;
t64 = t274 + t297;
t294 = t64 * qJD(1) + t246;
t163 = t253 * t337;
t293 = qJD(2) * t261 - t163;
t292 = qJD(4) + t328;
t290 = t319 * t253;
t289 = t251 * t226;
t288 = -t188 / 0.2e1 - t407 / 0.2e1;
t257 = -t151 * t166 / 0.2e1 + t57 * t403 + t150 * t169 / 0.2e1 + t56 * t402;
t266 = (-t392 / 0.2e1 + t319) * t253;
t11 = t266 + t257;
t55 = t150 * t194 - t151 * t191;
t286 = -qJD(1) * t11 + qJD(2) * t55;
t54 = t373 - t374;
t164 = t166 ^ 2;
t80 = t164 - t408;
t285 = qJD(1) * t80 + qJD(2) * t54;
t79 = -0.1e1 / 0.2e1 + t288;
t284 = qJD(1) * t74 + qJD(2) * t79;
t18 = t166 * t57 - t169 * t56;
t283 = -qJD(1) * t18 - qJD(3) * t74;
t103 = t188 - t407;
t281 = qJD(1) * t54 + qJD(2) * t103;
t108 = t164 + t408;
t280 = qJD(1) * t108 + qJD(2) * t76;
t256 = t377 / 0.2e1 - t376 / 0.2e1 + t318 / 0.2e1 + t297;
t276 = -t390 / 0.2e1 - t389 / 0.2e1;
t14 = t256 + t276;
t279 = t14 * qJD(1) + t328;
t152 = t188 + t407;
t278 = qJD(1) * t76 + qJD(2) * t152;
t189 = t223 * t391;
t275 = -t144 * t251 / 0.2e1 - t145 * t250 / 0.2e1;
t61 = t290 - t275;
t277 = -t61 * qJD(1) - t189 * qJD(2);
t268 = t254 * t350 + t326;
t267 = qJD(2) * t112 - t163 - t349;
t258 = t287 * qJD(2) + t321;
t247 = qJ(3) * qJD(3);
t237 = pkin(6) * t240;
t232 = t240 / 0.2e1;
t224 = t251 * t240;
t214 = t225 * qJD(2);
t202 = 0.1e1 / 0.2e1 + t296;
t190 = qJD(5) * t397 + t226;
t118 = t262 * t254 + t405;
t115 = t194 * t397 + t254 * t299 + t400;
t105 = t120 * qJD(5);
t104 = t119 * qJD(5);
t81 = -t181 + t106;
t78 = 0.1e1 / 0.2e1 + t288;
t77 = -t120 * qJD(2) - t253 * t340;
t63 = -t274 + t297;
t62 = t290 + t275;
t60 = t119 * qJD(2) + (qJD(5) + t353) * t166;
t51 = t54 * qJD(5);
t24 = t259 + t263;
t23 = t260 + t264;
t13 = t256 - t276;
t12 = t266 - t257;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t227, t214, 0, -t227, 0, 0, -pkin(1) * t323, -pkin(1) * t240, 0, 0, 0, 0, 0, t227, t214, -t227, 0, t160 * qJD(2) - t253 * t321, -t159 * qJD(2) + t326, (qJD(2) * t213 - qJD(3) * t253) * t204, -t244 * t227, t295 * t323, -t196 * qJD(2), -t245 * t227, -t197 * qJD(2), t227, t52 * qJD(2) + t250 * t268, -t53 * qJD(2) + t251 * t268, -t26 * qJD(2) + t167 * qJD(3) + t193 * qJD(4), qJD(2) * t27 - qJD(3) * t65 - qJD(4) * t66, (-qJD(2) * t168 - t339) * t169, qJD(2) * t68 + qJD(5) * t80, t99 * qJD(2) + t253 * t339, (-qJD(2) * t165 + t349) * t166, t98 * qJD(2) + t253 * t349, t227, t15 * qJD(2) + t33 * qJD(5) + (qJD(3) * t168 + t351) * t253, -t16 * qJD(2) - t32 * qJD(5) + (-qJD(3) * t165 - t352) * t253, qJD(2) * t6 + qJD(3) * t67 + qJD(4) * t108, qJD(2) * t9 + qJD(3) * t17 + qJD(4) * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t226, t329, t240, -t226, -t323, 0, -t237 - t317, t315 - t316, 0, 0, 0, -t240, t323, t226, t329, -t226, t258, t237 + t341, -t315 - t342, pkin(6) * t258 + t304, (-t244 * t322 + t309) * t253, (qJD(1) * t295 + (-t244 + t245) * qJD(2)) * t253, t224 - t333, (-t245 * t322 - t309) * t253, -t300 - t332, t226, -t198 * qJD(2) + t251 * t409 + t358, -t368 * qJD(2) - t250 * t409 - t357, -qJD(2) * t412 - t360, t359 + (-t217 * qJ(3) + t391 * t412) * qJD(2) + t63 * qJD(3) + t62 * qJD(4), t168 * t416 + t422, t356 + (-t194 * t165 - t168 * t191) * qJD(2) + t51, t194 * t240 + t104 + t354, t165 * t414 - t422, -t191 * t240 + t355 - t419, t190, t379 + (-t150 * t254 + t228 * t165 + t177 * t191) * qJD(2) + t115 * qJD(3) - t261 * qJD(4) + t24 * qJD(5), -t378 + (-t151 * t254 + t228 * t168 + t177 * t194) * qJD(2) + t118 * qJD(3) - t120 * qJD(4) + t23 * qJD(5), t388 + (t376 - t377 - t389 - t390) * qJD(2) - t420 + t396, t387 + (-t58 * t150 + t59 * t151 + t177 * t228) * qJD(2) + t13 * qJD(3) + t12 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t240, -t226, t327, t237 - t303, 0, 0, 0, 0, 0, 0, t224 + t302, -t300 + t301, t338, qJD(2) * t63 - t384, 0, 0, 0, 0, 0, 0, t115 * qJD(2) + t104 + t307, t118 * qJD(2) - t308 - t419, -qJD(2) * t282 + t382, t13 * qJD(2) + t375 + t395 + t420; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (t250 * t322 - t324) * t253, (t251 * t322 + t325) * t253, t335, qJD(2) * t62 - t383, 0, 0, 0, 0, 0, 0, -t293, t77, t280, qJD(2) * t12 - t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t417, t285, t60, t417, -t267, t232, qJD(2) * t24 + qJD(3) * t119 - qJD(5) * t57 + t385, qJD(2) * t23 - qJD(3) * t112 + qJD(5) * t56 - t386, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t226, -t329, 0, t226, 0, 0, t317, t316, 0, 0, 0, 0, 0, -t226, -t329, t226, 0, -t341, t342, -t304, t244 * t226, 0.2e1 * t250 * t289, t333, t245 * t226, t332, -t226, -t358, t357, t360, qJD(3) * t64 - qJD(4) * t61 - t359, t168 * t337 + t422, t51 - t356, t105 - t354, t165 * t340 - t422, -t355 - t411, -t190, qJD(3) * t116 - qJD(4) * t112 - qJD(5) * t21 - t379, qJD(3) * t117 - qJD(4) * t119 - qJD(5) * t22 + t378, -t388 + t396, qJD(3) * t14 - qJD(4) * t11 - t387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t247, 0, 0, 0, 0, 0, 0, qJD(3) * t250, qJD(3) * t251, t223 * qJD(4), -t189 * qJD(4) + t247, -t305, t103 * qJD(5), 0, t305, 0, 0, qJD(3) * t191 + t184 * t228, qJD(3) * t194 - t181 * t228, qJD(4) * t152, t228 * qJD(3) + t55 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t246, 0, 0, 0, 0, 0, 0, t325, t324, 0, t202 * qJD(4) + t294, 0, 0, 0, 0, 0, 0, t413, t415, 0, t78 * qJD(4) + t279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t330, t202 * qJD(3) + t277, 0, 0, 0, 0, 0, 0, -t348, -t343, t278, qJD(3) * t78 + t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t418, t281, t81, t418, t421, -t322 / 0.2e1, -t151 * qJD(5) + t194 * t328 - t372, t150 * qJD(5) - t191 * t328 - t371, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t226, -t327, t303, 0, 0, 0, 0, 0, 0, -t302, -t301, -t338, -qJD(2) * t64 + t384, 0, 0, 0, 0, 0, 0, -t116 * qJD(2) + t105 - t307, -t117 * qJD(2) + t308 - t411, -t382, -qJD(2) * t14 - t375 + t395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t246, 0, 0, 0, 0, 0, 0, -t325, -t324, 0, t203 * qJD(4) - t294, 0, 0, 0, 0, 0, 0, -t413, -t415, 0, t79 * qJD(4) - t279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t331, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81, t421, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t250 * t226, -t289, -t335, qJD(2) * t61 + t383, 0, 0, 0, 0, 0, 0, t267, t60, -t280, qJD(2) * t11 + t283; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t330, -t203 * qJD(3) - t277, 0, 0, 0, 0, 0, 0, t184 + t348, -t181 + t343, -t278, -qJD(3) * t79 - t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t331, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t416, -t414, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t417, -t285, t77, -t417, t293, t232, qJD(2) * t21 - qJD(3) * t120 + t351 - t385, qJD(2) * t22 + qJD(3) * t261 - t352 + t386, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t418, -t281, -t106, -t418, t410, t322 / 0.2e1, -t194 * t292 + t372, t191 * t292 + t371, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, t410, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t416, t414, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t1;