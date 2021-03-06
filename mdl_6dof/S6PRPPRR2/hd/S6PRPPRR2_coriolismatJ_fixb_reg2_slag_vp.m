% Calculate inertial parameters regressor of coriolis matrix for
% S6PRPPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta3]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRPPRR2_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPPRR2_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPPRR2_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPPRR2_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:20:10
% EndTime: 2019-03-08 19:20:15
% DurationCPUTime: 4.20s
% Computational Cost: add. (3819->308), mult. (9478->466), div. (0->0), fcn. (10269->10), ass. (0->239)
t255 = sin(qJ(6));
t398 = -t255 / 0.2e1;
t404 = 0.2e1 * t255;
t256 = sin(qJ(5));
t252 = t256 ^ 2;
t259 = cos(qJ(5));
t254 = t259 ^ 2;
t220 = t252 - t254;
t383 = sin(pkin(11));
t241 = pkin(2) * t383 + qJ(4);
t335 = t241 * qJD(2);
t384 = sin(pkin(6));
t298 = t384 * t383;
t392 = cos(qJ(2));
t281 = t392 * t298;
t257 = sin(qJ(2));
t385 = cos(pkin(11));
t299 = t385 * t384;
t287 = t257 * t299;
t186 = t287 + t281;
t263 = t287 / 0.2e1 + t281 / 0.2e1;
t399 = -t254 / 0.2e1;
t315 = -t252 / 0.2e1 + t399;
t77 = t186 * t315 + t263;
t403 = qJD(1) * t77 + t335;
t386 = cos(pkin(6));
t313 = t386 * t259;
t185 = t257 * t298 - t299 * t392;
t373 = t185 * t256;
t282 = t313 + t373;
t274 = qJD(5) * t282;
t258 = cos(qJ(6));
t391 = t256 * pkin(5);
t304 = -pkin(9) * t259 + t391;
t272 = t241 + t304;
t306 = -pkin(2) * t385 - pkin(3);
t240 = -pkin(8) + t306;
t363 = t256 * t240;
t159 = t255 * t363 - t258 * t272;
t402 = t159 * t398 + t363 / 0.2e1;
t251 = t255 ^ 2;
t253 = t258 ^ 2;
t221 = t253 - t251;
t358 = t258 * t259;
t310 = t358 * t404;
t278 = qJD(2) * t310 - qJD(5) * t221;
t369 = t186 * t258;
t99 = t255 * t282 - t369;
t401 = t99 / 0.2e1;
t400 = t252 / 0.2e1;
t397 = -t256 / 0.2e1;
t396 = t256 / 0.2e1;
t395 = t258 / 0.2e1;
t394 = -t259 / 0.2e1;
t268 = t186 * t255 + t258 * t282;
t264 = t268 * t259;
t275 = t282 * t259;
t161 = -t185 * t259 + t256 * t386;
t307 = t253 / 0.2e1 + t251 / 0.2e1 - 0.1e1 / 0.2e1;
t288 = t161 * t307;
t364 = t255 * t259;
t7 = t264 * t395 + t364 * t401 - t275 / 0.2e1 - t256 * t288;
t393 = t7 * qJD(5);
t390 = t256 * pkin(9);
t389 = t259 * pkin(5);
t329 = t240 * t364;
t212 = t389 + t390;
t361 = t258 * t212;
t172 = -t329 + t361;
t328 = t240 * t358;
t366 = t255 * t212;
t173 = t328 + t366;
t360 = t258 * t240;
t330 = t256 * t360;
t160 = t255 * t272 + t330;
t378 = t160 * t256;
t380 = t159 * t256;
t21 = (t173 * t259 / 0.2e1 - t378 / 0.2e1) * t258 + (t172 * t394 - t380 / 0.2e1) * t255 + (t400 + t399) * t240;
t388 = t21 * qJD(5);
t357 = t259 * t256;
t377 = t160 * t259;
t379 = t159 * t259;
t23 = -t240 * t357 + (t173 * t396 + t377 / 0.2e1) * t258 + (t172 * t397 + t379 / 0.2e1) * t255;
t365 = t255 * t256;
t126 = t160 * t365;
t319 = -t365 / 0.2e1;
t57 = t126 / 0.2e1 + t160 * t319;
t387 = qJD(5) * t23 - qJD(6) * t57;
t372 = t185 * t258;
t110 = -t186 * t365 - t372;
t362 = t256 * t258;
t374 = t185 * t255;
t111 = t186 * t362 - t374;
t320 = t111 * t395;
t284 = t110 * t398 + t320;
t30 = (t186 * t397 + t284) * t259;
t382 = qJD(1) * t30;
t73 = t161 * t258;
t376 = t161 * t259;
t375 = t185 * t241;
t371 = t186 * t252;
t370 = t186 * t254;
t368 = t254 * t255;
t245 = t254 * t258;
t359 = t258 * t252;
t276 = t282 * t256;
t28 = (-t185 + t276 - t376) * t186;
t356 = t28 * qJD(1);
t52 = t377 + (t173 - 0.2e1 * t328) * t256;
t355 = t52 * qJD(2);
t354 = t57 * qJD(2);
t353 = t57 * qJD(4);
t346 = qJD(5) * t259;
t234 = t255 * t346;
t344 = qJD(6) * t258;
t239 = t256 * t344;
t352 = t239 + t234;
t351 = t251 + t253;
t206 = -t245 + t359;
t350 = qJD(2) * t206;
t349 = qJD(4) * t256;
t348 = qJD(5) * t256;
t347 = qJD(5) * t258;
t345 = qJD(6) * t255;
t311 = t351 * t259;
t181 = t256 * t311 - t357;
t343 = t181 * qJD(5);
t342 = t185 * qJD(2);
t184 = t186 * qJD(2);
t188 = (-0.1e1 / 0.2e1 + t315) * t255;
t341 = t188 * qJD(2);
t189 = t245 / 0.2e1 + (0.1e1 / 0.2e1 + t400) * t258;
t340 = t189 * qJD(2);
t243 = t251 * t259;
t244 = t253 * t259;
t197 = t243 / 0.2e1 - t244 / 0.2e1;
t339 = t197 * qJD(6);
t204 = -t243 - t244;
t338 = t204 * qJD(2);
t205 = t220 * t255;
t337 = t205 * qJD(2);
t336 = t220 * qJD(2);
t334 = t256 * qJD(2);
t333 = t259 * qJD(2);
t332 = t259 * qJD(6);
t331 = t389 / 0.2e1;
t327 = t255 * t347;
t326 = t258 * t346;
t325 = t255 * t332;
t324 = t258 * t332;
t323 = t241 * t334;
t322 = t241 * t333;
t321 = t255 * t344;
t237 = t256 * t346;
t236 = t256 * t333;
t318 = -t364 / 0.2e1;
t317 = -t362 / 0.2e1;
t316 = t358 / 0.2e1;
t314 = pkin(9) * t351;
t312 = qJD(2) * t384;
t309 = qJD(5) * t351;
t308 = t254 * t321;
t305 = -t369 / 0.2e1 - t99 / 0.2e1;
t303 = qJD(5) * t310;
t301 = t185 / 0.2e1 + t376 / 0.2e1;
t238 = t256 * t345;
t300 = t238 - t326;
t9 = -t99 * t110 + t111 * t268 - t186 * t376;
t297 = qJD(1) * t9 + qJD(3) * t30;
t180 = t370 / 0.2e1;
t266 = t268 * t255;
t262 = t99 * t395 - t266 / 0.2e1;
t10 = t256 * t284 + t180 + t262;
t64 = -t159 * t258 + t160 * t255;
t296 = -qJD(1) * t10 + qJD(2) * t64;
t261 = t266 * t396 + t317 * t99;
t14 = t261 - t284;
t29 = t159 * t362 - t126 + (t172 * t258 + t255 * t173) * t259;
t295 = qJD(1) * t14 - qJD(2) * t29;
t17 = ((-t373 / 0.2e1 - t313 / 0.2e1) * t255 - t305) * t259;
t51 = -t379 + (t172 + 0.2e1 * t329) * t256;
t294 = -t17 * qJD(1) + t51 * qJD(2);
t293 = -t172 * t255 + t173 * t258;
t108 = -t240 * t368 - t380;
t25 = t255 * t301 + t256 * t305;
t292 = qJD(1) * t25 + qJD(2) * t108;
t109 = -t254 * t360 - t378;
t24 = (t282 * t396 - t301) * t258;
t291 = qJD(1) * t24 - qJD(2) * t109;
t290 = (-qJD(6) - t334) * t259;
t289 = t390 / 0.2e1 + t331;
t280 = t212 / 0.2e1 + t289;
t163 = t280 * t255;
t286 = pkin(5) * t347 - qJD(2) * t163;
t164 = t280 * t258;
t285 = pkin(5) * qJD(5) * t255 + qJD(2) * t164;
t283 = t258 * t290;
t176 = -qJD(2) * t197 + t327;
t165 = qJD(2) * t245 * t255 + qJD(5) * t197;
t203 = t221 * t254;
t279 = qJD(2) * t203 + t303;
t265 = t268 * t258;
t12 = (-t255 * t99 - t265 + t282) * t161;
t8 = t265 * t397 + t99 * t319 + t276 / 0.2e1 - t259 * t288;
t277 = t12 * qJD(1) + t8 * qJD(3) + t7 * qJD(4);
t273 = t275 / 0.2e1;
t260 = t172 * t401 - t268 * t173 / 0.2e1 + t240 * t273;
t267 = pkin(9) * t284 + t186 * t331;
t2 = (t160 * t395 - t402) * t161 + t260 + t267;
t31 = -t240 ^ 2 * t357 - t159 * t172 + t160 * t173;
t271 = -t2 * qJD(1) + t31 * qJD(2) + t21 * qJD(3) + t23 * qJD(4);
t144 = t220 * t307;
t270 = t8 * qJD(1) + t21 * qJD(2) - t181 * qJD(3) - t144 * qJD(4);
t269 = t7 * qJD(1) + t23 * qJD(2) - t144 * qJD(3) + t181 * qJD(4);
t242 = t346 / 0.2e1;
t235 = t258 * t334;
t233 = t255 * t348;
t232 = t255 * t334;
t213 = t241 * qJD(4);
t200 = t236 + t332 / 0.2e1;
t196 = t233 - t324;
t195 = t256 * t347 + t325;
t191 = -t359 / 0.2e1 - t245 / 0.2e1 + t395;
t190 = t255 * t400 + t368 / 0.2e1 + t398;
t162 = t240 * t370;
t129 = t144 * qJD(5);
t113 = -t329 + t361 / 0.2e1 - t289 * t258;
t112 = -t328 - t366 / 0.2e1 + t289 * t255;
t76 = t371 / 0.2e1 + t180 + t263;
t71 = t161 * t255;
t27 = t268 * t397 + t161 * t316 + t186 * t319 - t372 / 0.2e1;
t26 = t99 * t396 + t161 * t318 + t186 * t317 + t374 / 0.2e1;
t19 = -t264 / 0.2e1 + t258 * t273 + t186 * t318;
t18 = t186 * t316 + t255 * t273 + t394 * t99;
t13 = t261 + t284;
t11 = t110 * t319 + t256 * t320 + t180 - t262;
t3 = -t160 * t73 / 0.2e1 - t260 + t267 + t402 * t161;
t1 = qJD(2) * t30 + qJD(5) * t8;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t28 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t9 + qJD(5) * t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257 * t312, -t392 * t312, 0, 0, 0, 0, 0, 0, 0, 0, -t184, t342, 0 (-t185 * t383 - t186 * t385) * qJD(2) * pkin(2), 0, 0, 0, 0, 0, 0, 0, t184, -t342 (t186 * t306 - t375) * qJD(2) + t186 * qJD(4), 0, 0, 0, 0, 0, 0, -t185 * t334 + t186 * t346, -t185 * t333 - t186 * t348 (-t252 - t254) * t184, t356 + (t240 * t371 + t162 - t375) * qJD(2) + t76 * qJD(4), 0, 0, 0, 0, 0, 0 (t110 * t256 - t186 * t368) * qJD(2) + t18 * qJD(5) + t27 * qJD(6) (-t111 * t256 - t186 * t245) * qJD(2) + t19 * qJD(5) + t26 * qJD(6), t13 * qJD(5) + (-t110 * t258 - t111 * t255) * t333 (-t110 * t159 + t111 * t160 + t162) * qJD(2) + t11 * qJD(4) + t3 * qJD(5) + t297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t184, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t76, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t11 + t393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t186 * t333 - t274, qJD(5) * t161 - t186 * t334, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t18 + qJD(6) * t71 - t258 * t274, qJD(2) * t19 + qJD(6) * t73 + t255 * t274, t13 * qJD(2) - t161 * t309, t3 * qJD(2) + (-pkin(5) * t282 - t161 * t314) * qJD(5) + t277; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t27 + qJD(5) * t71 - qJD(6) * t268, qJD(2) * t26 + qJD(5) * t73 + qJD(6) * t99, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t77 - t356, 0, 0, 0, 0, 0, 0, -qJD(5) * t17 - qJD(6) * t24, -t25 * qJD(6), qJD(5) * t14, -qJD(4) * t10 - qJD(5) * t2 - t297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t213, -t237, t220 * qJD(5), 0, t237, 0, 0, t241 * t346 + t349, qJD(4) * t259 - t241 * t348, 0, t213, -t237 * t253 - t308, -qJD(6) * t203 + t256 * t303, -qJD(5) * t206 - t256 * t325, -t237 * t251 + t308, qJD(5) * t205 - t256 * t324, t237, qJD(5) * t51 + qJD(6) * t109 + t258 * t349, -qJD(5) * t52 - qJD(6) * t108 - t255 * t349, qJD(4) * t204 - qJD(5) * t29, qJD(4) * t64 + qJD(5) * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t382 + t388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t335, 0, 0, 0, 0, 0, 0, t334, t333, 0, t403, 0, 0, 0, 0, 0, 0, qJD(6) * t191 + t235, qJD(6) * t190 - t232, t338, t296 + t387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t236, t336, -t348, t236, -t346, 0, -t240 * t348 + t322, -t240 * t346 - t323, 0, 0, -t339 + (-t253 * t333 - t327) * t256, t256 * t278 - 0.2e1 * t259 * t321, t234 - t350, t339 + (-t251 * t333 + t327) * t256, t326 + t337, t200 (t255 * t304 - t330) * qJD(5) + t113 * qJD(6) + t294, -t355 + (-pkin(9) * t358 + (pkin(5) * t258 + t240 * t255) * t256) * qJD(5) + t112 * qJD(6), qJD(5) * t293 + t295 (-pkin(5) * t363 + pkin(9) * t293) * qJD(5) + t271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t165, -t279, t255 * t290, t165, t283, t242, qJD(4) * t191 + qJD(5) * t113 - qJD(6) * t160 - t291, qJD(4) * t190 + qJD(5) * t112 + qJD(6) * t159 - t292, 0, -t353; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t382 + t388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t343; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t129; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t346, t348, 0, 0, 0, 0, 0, 0, 0, 0, t300, t352, -t256 * t309 (-t256 * t314 - t389) * qJD(5) + t270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t196, t195, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t77, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t10 + t393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t335, 0, 0, 0, 0, 0, 0, -t334, -t333, 0, -t403, 0, 0, 0, 0, 0, 0, -qJD(6) * t189 - t235, -qJD(6) * t188 + t232, -t338, -t296 + t387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t129; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t343; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t348, -t346, 0, 0, 0, 0, 0, 0, 0, 0, -t195, t196, -t204 * qJD(5) (pkin(9) * t311 - t391) * qJD(5) + t269; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t340 - t352, t300 - t341, 0, -t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t17 * qJD(2), 0, -qJD(2) * t14, qJD(2) * t2 - t277; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t236, -t336, 0, -t236, 0, 0, -t322, t323, 0, 0, t236 * t253 - t339, t283 * t404, t239 + t350, t236 * t251 + t339, -t238 - t337, -t200, -qJD(6) * t164 - t294, qJD(6) * t163 + t355, -t295, -t271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t269; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t321, t221 * qJD(6), 0, -t321, 0, 0, -pkin(5) * t345, -pkin(5) * t344, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t176, -t278, t235 + t344, -t176, -t232 - t345, -t333 / 0.2e1, -pkin(9) * t344 - t285, pkin(9) * t345 - t286, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24 * qJD(2), t25 * qJD(2), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t165, t279 (t255 * t333 - t347) * t256, -t165, t236 * t258 + t233, t242, qJD(4) * t189 + qJD(5) * t164 + t291, qJD(4) * t188 - qJD(5) * t163 + t292, 0, t353; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t340, t341, 0, t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t176, t278, -t235, t176, t232, t333 / 0.2e1, t285, t286, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t4;
