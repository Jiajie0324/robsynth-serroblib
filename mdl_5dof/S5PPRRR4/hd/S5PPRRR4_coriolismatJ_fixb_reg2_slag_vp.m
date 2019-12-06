% Calculate inertial parameters regressor of coriolis matrix for
% S5PPRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PPRRR4_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR4_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR4_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5PPRRR4_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:19:50
% EndTime: 2019-12-05 15:19:58
% DurationCPUTime: 4.26s
% Computational Cost: add. (4922->305), mult. (14671->539), div. (0->0), fcn. (17384->12), ass. (0->243)
t288 = sin(qJ(4));
t291 = cos(qJ(4));
t286 = sin(pkin(6));
t289 = sin(qJ(3));
t409 = t286 * t289;
t424 = cos(pkin(6));
t246 = t288 * t424 + t291 * t409;
t290 = cos(qJ(5));
t242 = t290 * t246;
t287 = sin(qJ(5));
t432 = cos(qJ(3));
t370 = t286 * t432;
t344 = t287 * t370;
t318 = t242 - t344;
t447 = t318 / 0.2e1;
t423 = sin(pkin(5));
t331 = cos(pkin(11)) * t423;
t425 = cos(pkin(5));
t446 = t425 * t286 + t424 * t331;
t281 = t287 ^ 2;
t283 = t290 ^ 2;
t271 = t283 - t281;
t380 = t288 * qJD(3);
t365 = t290 * t380;
t445 = t271 * qJD(4) - 0.2e1 * t287 * t365;
t349 = sin(pkin(11)) * t423;
t200 = t289 * t349 - t446 * t432;
t419 = t200 * t290;
t201 = t446 * t289 + t432 * t349;
t294 = -t286 * t331 + t425 * t424;
t144 = t201 * t291 + t294 * t288;
t421 = t144 * t287;
t84 = -t419 + t421;
t444 = t84 / 0.2e1;
t442 = t144 / 0.2e1;
t441 = t200 / 0.2e1;
t440 = -t201 / 0.2e1;
t343 = t290 * t370;
t407 = t287 * t246;
t204 = t343 + t407;
t439 = -t204 / 0.2e1;
t438 = t246 / 0.2e1;
t437 = -t287 / 0.2e1;
t436 = -t288 / 0.2e1;
t435 = t290 / 0.2e1;
t434 = -t291 / 0.2e1;
t433 = t291 / 0.2e1;
t431 = pkin(8) * t200;
t430 = t144 * pkin(8);
t429 = t288 * pkin(4);
t428 = t291 * pkin(8);
t427 = t291 * pkin(9);
t426 = t287 * t84;
t143 = t201 * t288 - t294 * t291;
t422 = t143 * t288;
t420 = t144 * t291;
t112 = t200 * t288;
t114 = t200 * t291;
t418 = t201 * t287;
t417 = t201 * t290;
t416 = t204 * t287;
t415 = t204 * t291;
t368 = t291 * t432;
t401 = t289 * t290;
t229 = (-t287 * t368 + t401) * t286;
t414 = t229 * t287;
t404 = t287 * t289;
t230 = (t290 * t368 + t404) * t286;
t413 = t230 * t290;
t333 = -t291 * pkin(4) - t288 * pkin(9);
t320 = -pkin(3) + t333;
t403 = t287 * t291;
t377 = pkin(8) * t403;
t231 = -t290 * t320 + t377;
t412 = t231 * t291;
t397 = t290 * t291;
t375 = pkin(8) * t397;
t232 = t287 * t320 + t375;
t411 = t232 * t291;
t282 = t288 ^ 2;
t410 = t282 * t287;
t408 = t287 * t231;
t266 = -t427 + t429;
t406 = t287 * t266;
t405 = t287 * t288;
t402 = t288 * t290;
t400 = t290 * t232;
t399 = t290 * t266;
t398 = t290 * t282;
t396 = -t281 - t283;
t284 = t291 ^ 2;
t272 = t284 - t282;
t395 = qJD(3) * t286;
t394 = qJD(3) * t291;
t393 = qJD(4) * t287;
t392 = qJD(4) * t290;
t391 = qJD(5) * t287;
t390 = qJD(5) * t290;
t389 = qJD(5) * t291;
t388 = t144 * qJD(4);
t387 = t200 * qJD(3);
t386 = t201 * qJD(3);
t385 = t246 * qJD(4);
t247 = (t281 / 0.2e1 - t283 / 0.2e1) * t288;
t384 = t247 * qJD(5);
t257 = t272 * t287;
t383 = t257 * qJD(3);
t258 = t290 * t284 - t398;
t382 = t258 * qJD(3);
t381 = t272 * qJD(3);
t379 = t288 * qJD(4);
t378 = t291 * qJD(4);
t277 = pkin(8) * t405;
t376 = pkin(8) * t402;
t374 = pkin(3) * t380;
t373 = pkin(3) * t394;
t372 = pkin(4) * t441;
t371 = pkin(8) * t438;
t369 = t288 * t432;
t367 = t432 * t282;
t366 = t432 * t284;
t364 = t287 * t389;
t363 = t290 * t389;
t362 = t287 * t390;
t361 = t287 * t392;
t360 = t288 * t378;
t275 = t291 * t380;
t359 = t290 * t379;
t358 = t114 / 0.2e1;
t357 = t414 / 0.2e1;
t245 = t288 * t409 - t291 * t424;
t356 = t245 * t436;
t355 = -t405 / 0.2e1;
t354 = t405 / 0.2e1;
t353 = t402 / 0.2e1;
t352 = t401 / 0.2e1;
t351 = pkin(9) * t396;
t350 = qJD(4) * t432;
t347 = qJD(4) * t396;
t346 = -qJD(5) + t394;
t345 = t245 * t369;
t342 = t282 * t362;
t340 = t287 * t359;
t339 = qJD(3) * t370;
t338 = -t370 / 0.2e1;
t337 = t370 / 0.2e1;
t336 = t369 / 0.2e1;
t335 = -t368 / 0.2e1;
t334 = t419 / 0.2e1 + t444;
t332 = t440 + t422 / 0.2e1;
t108 = t200 * t403 + t417;
t109 = -t200 * t397 + t418;
t325 = t144 * t290 + t200 * t287;
t10 = -t84 * t108 + t325 * t109 - t143 * t112;
t5 = t109 * t447 + t325 * t230 / 0.2e1 + t108 * t439 - t84 * t229 / 0.2e1 + (-t200 * t245 / 0.2e1 + t143 * t337) * t288;
t330 = t10 * qJD(1) + t5 * qJD(2);
t311 = t325 * t290;
t11 = (t144 - t311 - t426) * t143;
t310 = t318 * t290;
t6 = (-t311 / 0.2e1 - t426 / 0.2e1 + t442) * t245 + (-t310 / 0.2e1 - t416 / 0.2e1 + t438) * t143;
t329 = t11 * qJD(1) + t6 * qJD(2);
t37 = (t246 - t310 - t416) * t245;
t328 = t6 * qJD(1) + t37 * qJD(2);
t39 = -t204 * t229 + t318 * t230 + t286 * t345;
t327 = t5 * qJD(1) + t39 * qJD(2);
t19 = (t246 * t434 + t356) * t200 + (t143 * t336 + t289 * t441 + t368 * t442 + t432 * t440) * t286;
t23 = (t201 - t420 - t422) * t200;
t326 = t23 * qJD(1) + t19 * qJD(2);
t240 = t277 + t399;
t241 = -t376 + t406;
t324 = -t240 * t287 + t241 * t290;
t323 = t290 * t338;
t140 = (t246 * t368 - t289 * t370 + t345) * t286;
t322 = t19 * qJD(1) + t140 * qJD(2);
t142 = t241 * t291 + (-t232 + 0.2e1 * t375) * t288;
t321 = t142 * qJD(3);
t319 = t346 * t288;
t317 = t427 / 0.2e1 - t429 / 0.2e1;
t307 = -t266 / 0.2e1 + t317;
t202 = t307 * t287;
t316 = pkin(4) * t392 + t202 * qJD(3);
t203 = t307 * t290;
t315 = pkin(4) * t393 - t203 * qJD(3);
t314 = t108 * t437 + t109 * t435;
t313 = -t413 / 0.2e1 + t357;
t312 = t290 * t319;
t216 = -t247 * qJD(3) + t361;
t308 = -t415 / 0.2e1 + t245 * t355;
t205 = t287 * qJD(3) * t398 + t247 * qJD(4);
t256 = t271 * t282;
t306 = t256 * qJD(3) + 0.2e1 * t340;
t304 = t314 * pkin(9);
t295 = t240 * t444 - t325 * t241 / 0.2e1;
t297 = t400 / 0.2e1 + t408 / 0.2e1 - t428 / 0.2e1;
t2 = t297 * t143 + t288 * t372 + t430 * t436 + t295 + t304;
t292 = t240 * t439 + t241 * t447 - t297 * t245;
t22 = (pkin(4) * t337 + t371) * t288 + t313 * pkin(9) + t292;
t85 = t291 * pkin(8) ^ 2 * t288 - t231 * t240 + t232 * t241;
t303 = -t2 * qJD(1) + t22 * qJD(2) + t85 * qJD(3);
t293 = (t325 * t437 + t84 * t435) * t291;
t14 = t293 - t314;
t298 = t318 * t437;
t47 = t291 * t298 + t357 + (t415 / 0.2e1 - t230 / 0.2e1) * t290;
t69 = (t240 * t288 - t412) * t290 + (t241 * t288 + t411) * t287;
t302 = t14 * qJD(1) + t47 * qJD(2) - t69 * qJD(3);
t141 = t231 * t288 + (t240 - 0.2e1 * t277) * t291;
t16 = (-t421 / 0.2e1 + t334) * t288;
t66 = (t323 + t204 / 0.2e1 - t407 / 0.2e1) * t288;
t301 = -t16 * qJD(1) - t66 * qJD(2) - t141 * qJD(3);
t198 = -pkin(8) * t410 - t412;
t25 = t332 * t287 + t334 * t291;
t296 = (t290 * t335 - t404 / 0.2e1) * t286;
t95 = t296 - t308;
t300 = t25 * qJD(1) + t95 * qJD(2) - t198 * qJD(3);
t199 = -pkin(8) * t398 - t411;
t24 = (-t420 / 0.2e1 - t332) * t290;
t94 = t242 * t434 + t286 * t352 + t290 * t356;
t299 = t24 * qJD(1) + t94 * qJD(2) + t199 * qJD(3);
t279 = t379 / 0.2e1;
t264 = t286 * pkin(8) * t367;
t250 = qJD(5) * t436 + t275;
t188 = t282 * t431;
t187 = t277 + t399 / 0.2e1 + t317 * t290;
t186 = t376 - t406 / 0.2e1 - t317 * t287;
t167 = t245 * t290;
t166 = t245 * t287;
t97 = t318 * t433 + t245 * t353 + (t287 * t335 + t352) * t286;
t96 = t296 + t308;
t68 = t286 * t287 * t336 + t246 * t353 + t318 * t436;
t67 = t204 * t436 + t246 * t354 + t288 * t323;
t52 = t143 * t290;
t50 = t143 * t287;
t46 = (t204 * t435 + t298) * t291 - t313;
t27 = t325 * t433 + t143 * t353 + t287 * t358 + t417 / 0.2e1;
t26 = t84 * t434 + t143 * t355 + t290 * t358 - t418 / 0.2e1;
t21 = t288 * t371 + t338 * t429 + t292 + (t413 / 0.2e1 - t414 / 0.2e1) * pkin(9);
t18 = t144 * t353 + t200 * t355 + t325 * t436;
t17 = t144 * t354 + t200 * t353 + t84 * t436;
t13 = t293 + t314;
t4 = t19 * qJD(3);
t3 = t143 * t428 / 0.2e1 + (t430 / 0.2e1 + t372) * t288 + t304 - t295 - (t400 + t408) * t143 / 0.2e1;
t1 = t5 * qJD(3) + t6 * qJD(4);
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t23 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * qJD(3) + t11 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t4, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t386, t387, 0, 0, 0, 0, 0, 0, 0, 0, t112 * qJD(4) - t291 * t386, t114 * qJD(4) + t201 * t380, (-t282 - t284) * t387, (-t201 * pkin(3) - t284 * t431 - t188) * qJD(3) + t326, 0, 0, 0, 0, 0, 0, (-t108 * t291 - t200 * t410) * qJD(3) + t17 * qJD(4) + t27 * qJD(5), (t109 * t291 - t200 * t398) * qJD(3) + t18 * qJD(4) + t26 * qJD(5), t13 * qJD(4) + (-t108 * t290 - t287 * t109) * t380, (-t108 * t231 + t109 * t232 - t188) * qJD(3) + t3 * qJD(4) + t330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112 * qJD(3) - t388, t114 * qJD(3) + t143 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, t17 * qJD(3) + t50 * qJD(5) - t290 * t388, t18 * qJD(3) + t52 * qJD(5) + t287 * t388, t13 * qJD(3) + t143 * t347, t3 * qJD(3) + (-t144 * pkin(4) + t143 * t351) * qJD(4) + t329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t27 * qJD(3) + t50 * qJD(4) - qJD(5) * t325, t26 * qJD(3) + t52 * qJD(4) + t84 * qJD(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t4, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t39 * qJD(3) + t37 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t289 * t395, -t339, 0, 0, 0, 0, 0, 0, 0, 0, (-t288 * t350 - t289 * t394) * t286, (t289 * t380 - t291 * t350) * t286, (t367 + t366) * t395, (t264 + (-pkin(3) * t289 + pkin(8) * t366) * t286) * qJD(3) + t322, 0, 0, 0, 0, 0, 0, (-t229 * t291 + t282 * t344) * qJD(3) + t67 * qJD(4) + t97 * qJD(5), (t230 * t291 + t282 * t343) * qJD(3) + t68 * qJD(4) + t96 * qJD(5), t46 * qJD(4) + (-t229 * t290 - t230 * t287) * t380, (-t229 * t231 + t230 * t232 + t264) * qJD(3) + t21 * qJD(4) + t327; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t288 * t339 - t385, t245 * qJD(4) - t291 * t339, 0, 0, 0, 0, 0, 0, 0, 0, t67 * qJD(3) + t166 * qJD(5) - t290 * t385, t68 * qJD(3) + t167 * qJD(5) + t287 * t385, t46 * qJD(3) + t245 * t347, t21 * qJD(3) + (-t246 * pkin(4) + t245 * t351) * qJD(4) + t328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97 * qJD(3) + t166 * qJD(4) - qJD(5) * t318, t96 * qJD(3) + t167 * qJD(4) + t204 * qJD(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t326, 0, 0, 0, 0, 0, 0, -t16 * qJD(4) - t24 * qJD(5), -t25 * qJD(5), t14 * qJD(4), -t2 * qJD(4) - t330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t322, 0, 0, 0, 0, 0, 0, -t66 * qJD(4) - t94 * qJD(5), -t95 * qJD(5), t47 * qJD(4), t22 * qJD(4) - t327; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t360, t272 * qJD(4), 0, -t360, 0, 0, -pkin(3) * t379, -pkin(3) * t378, 0, 0, t283 * t360 - t342, -t256 * qJD(5) - 0.2e1 * t291 * t340, -t258 * qJD(4) + t288 * t364, t281 * t360 + t342, t257 * qJD(4) + t288 * t363, -t360, -t141 * qJD(4) - t199 * qJD(5), t142 * qJD(4) + t198 * qJD(5), -t69 * qJD(4), t85 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t275, t381, t378, -t275, -t379, 0, -pkin(8) * t378 - t374, pkin(8) * t379 - t373, 0, 0, -t384 + (t283 * t380 + t361) * t291, -0.2e1 * t288 * t362 + t445 * t291, t287 * t379 - t382, t384 + (t281 * t380 - t361) * t291, t359 + t383, -t250, (t287 * t333 - t375) * qJD(4) + t187 * qJD(5) + t301, (t290 * t333 + t377) * qJD(4) + t186 * qJD(5) + t321, qJD(4) * t324 + t302, (-pkin(4) * t428 + pkin(9) * t324) * qJD(4) + t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t205, -t306, t287 * t319, t205, t312, t279, t187 * qJD(4) - t232 * qJD(5) - t299, t186 * qJD(4) + t231 * qJD(5) - t300, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t16 * qJD(3), 0, -t14 * qJD(3), t2 * qJD(3) - t329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66 * qJD(3), 0, -t47 * qJD(3), -t22 * qJD(3) - t328; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t275, -t381, 0, t275, 0, 0, t374, t373, 0, 0, -t275 * t283 - t384, 0.2e1 * t287 * t312, -t363 + t382, -t275 * t281 + t384, t364 - t383, t250, t203 * qJD(5) - t301, -t202 * qJD(5) - t321, -t302, -t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t362, t271 * qJD(5), 0, -t362, 0, 0, -pkin(4) * t391, -pkin(4) * t390, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t216, t445, -t346 * t290, -t216, t346 * t287, -t380 / 0.2e1, -pkin(9) * t390 - t315, pkin(9) * t391 - t316, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24 * qJD(3), t25 * qJD(3), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94 * qJD(3), t95 * qJD(3), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t205, t306, (-t287 * t380 + t392) * t291, -t205, (-t365 - t393) * t291, t279, -t203 * qJD(4) + t299, t202 * qJD(4) + t300, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t216, -t445, t290 * t394, t216, -t287 * t394, t380 / 0.2e1, t315, t316, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t7;