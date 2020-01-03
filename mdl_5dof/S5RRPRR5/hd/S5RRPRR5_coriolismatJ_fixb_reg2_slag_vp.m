% Calculate inertial parameters regressor of coriolis matrix for
% S5RRPRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d4,d5,theta3]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:04
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRPRR5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRPRR5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:04:03
% EndTime: 2020-01-03 12:04:11
% DurationCPUTime: 5.40s
% Computational Cost: add. (10082->323), mult. (19108->400), div. (0->0), fcn. (21032->8), ass. (0->270)
t302 = sin(qJ(4));
t300 = cos(pkin(9));
t303 = sin(qJ(2));
t432 = t303 * pkin(1);
t293 = qJ(3) + t432;
t429 = pkin(7) + t293;
t349 = t429 * t300;
t299 = sin(pkin(9));
t351 = t429 * t299;
t438 = cos(qJ(4));
t216 = -t302 * t351 + t438 * t349;
t371 = t438 * t300;
t405 = t302 * t299;
t321 = t371 - t405;
t434 = t321 * pkin(8);
t182 = t216 + t434;
t301 = sin(qJ(5));
t411 = t301 * t182;
t437 = cos(qJ(5));
t372 = t438 * t299;
t404 = t302 * t300;
t277 = t372 + t404;
t272 = t277 * pkin(8);
t323 = -t302 * t349 - t438 * t351;
t453 = -t272 + t323;
t476 = t437 * t453;
t103 = t476 - t411;
t451 = -t103 / 0.2e1;
t486 = qJD(4) + qJD(5);
t379 = qJD(1) + qJD(2);
t264 = t437 * t277;
t406 = t301 * t321;
t455 = t264 + t406;
t415 = t455 ^ 2;
t231 = t301 * t277 - t321 * t437;
t416 = t231 ^ 2;
t483 = -t415 + t416;
t485 = t379 * t483;
t430 = pkin(7) + qJ(3);
t350 = t430 * t300;
t352 = t430 * t299;
t322 = -t302 * t350 - t438 * t352;
t454 = -t272 + t322;
t475 = t437 * t454;
t446 = -t475 / 0.2e1;
t447 = -t476 / 0.2e1;
t480 = t301 * t454;
t358 = -t480 / 0.2e1;
t481 = t301 * t453;
t359 = -t481 / 0.2e1;
t477 = t379 * t455;
t484 = t231 * t477;
t240 = -t302 * t352 + t438 * t350;
t204 = t240 + t434;
t367 = t437 * t204;
t122 = t367 + t480;
t369 = t437 * t182;
t104 = t369 + t481;
t409 = t301 * t204;
t121 = t475 - t409;
t458 = t379 * t277;
t479 = t321 * t458;
t478 = t379 * t231;
t385 = t231 * qJD(5);
t474 = -t231 * qJD(4) - t385;
t473 = t231 * qJD(3);
t85 = t415 + t416;
t472 = t379 * t85;
t294 = -t300 * pkin(3) - pkin(2);
t304 = cos(qJ(2));
t431 = t304 * pkin(1);
t286 = t294 - t431;
t354 = t294 / 0.2e1 + t286 / 0.2e1;
t469 = t354 * t277;
t250 = -pkin(4) * t321 + t294;
t243 = t250 - t431;
t355 = t250 / 0.2e1 + t243 / 0.2e1;
t468 = t355 * t455;
t439 = t301 / 0.2e1;
t313 = -t231 * t439 - t455 * t437 / 0.2e1;
t117 = (-t277 / 0.2e1 + t313) * pkin(4);
t466 = t379 * t117;
t335 = t264 / 0.2e1;
t184 = 0.2e1 * t335 + t406;
t464 = t379 * t184;
t273 = t321 ^ 2;
t452 = t277 ^ 2;
t205 = t273 - t452;
t463 = t379 * t205;
t229 = t335 - t264 / 0.2e1;
t462 = t379 * t229;
t236 = t273 + t452;
t460 = t379 * t236;
t459 = t379 * t321;
t297 = t299 ^ 2;
t298 = t300 ^ 2;
t289 = t297 + t298;
t457 = t379 * t289;
t456 = t243 + t250;
t254 = t321 * t431;
t365 = t437 * t254;
t253 = t277 * t431;
t408 = t301 * t253;
t398 = -t365 / 0.2e1 + t408 / 0.2e1;
t366 = t437 * t253;
t407 = t301 * t254;
t399 = -t407 / 0.2e1 - t366 / 0.2e1;
t448 = -t122 / 0.2e1;
t436 = pkin(2) * t303;
t435 = pkin(4) * t301;
t433 = t277 * pkin(4);
t428 = pkin(1) * qJD(1);
t427 = pkin(1) * qJD(2);
t426 = qJD(4) * pkin(4);
t425 = t103 * t455;
t424 = t104 * t231;
t15 = t243 * t433;
t423 = t15 * qJD(1);
t185 = -t366 - t407;
t186 = t365 - t408;
t21 = t103 * t185 + t104 * t186 + t243 * t432;
t422 = t21 * qJD(1);
t421 = t323 * t277;
t420 = t216 * t321;
t22 = -t424 - t425;
t419 = t22 * qJD(1);
t418 = t455 * t121;
t417 = t231 * t122;
t414 = t322 * t277;
t413 = t240 * t321;
t66 = -t185 * t455 - t186 * t231;
t403 = t66 * qJD(1);
t87 = t216 * t254 - t253 * t323 + t286 * t432;
t402 = t87 * qJD(1);
t401 = (t231 * t437 - t301 * t455) * t426;
t137 = t253 * t277 + t254 * t321;
t235 = t236 * qJD(3);
t400 = t137 * qJD(2) + t235;
t345 = t289 * t304;
t271 = pkin(1) * t345;
t287 = t289 * qJD(3);
t397 = t271 * qJD(2) + t287;
t396 = qJD(1) * t243;
t395 = qJD(1) * t286;
t394 = qJD(2) * t250;
t393 = qJD(2) * t294;
t152 = t243 * t455;
t377 = t231 * t433;
t105 = -t152 - t377;
t392 = t105 * qJD(1);
t153 = t243 * t231;
t376 = t455 * t433;
t106 = t153 - t376;
t391 = t106 * qJD(1);
t110 = t420 - t421;
t390 = t110 * qJD(1);
t389 = t137 * qJD(1);
t255 = t289 * t293;
t224 = (-t436 + (t255 - t432) * t304) * pkin(1);
t388 = t224 * qJD(1);
t387 = t229 * qJD(5);
t386 = t455 * qJD(4);
t383 = t455 * qJD(5);
t382 = t255 * qJD(1);
t381 = t271 * qJD(1);
t267 = t321 * qJD(4);
t380 = t277 * qJD(4);
t356 = t448 - t104 / 0.2e1;
t4 = (t122 / 0.2e1 + t104 / 0.2e1 + t356) * t455;
t84 = t85 * qJD(3);
t378 = t4 * qJD(4) + t84;
t375 = t303 * t427;
t374 = t303 * t428;
t373 = t433 / 0.2e1;
t364 = t231 * t396;
t363 = t455 * t396;
t362 = t321 * t380;
t361 = t321 * t395;
t360 = t277 * t395;
t348 = t437 * qJD(4);
t347 = t437 * qJD(5);
t346 = pkin(1) * t379;
t340 = t231 * t374;
t339 = t455 * t374;
t338 = t321 * t374;
t337 = t277 * t374;
t336 = t299 * t374;
t334 = t303 * t346;
t333 = t4 * qJD(2);
t332 = t4 * qJD(1);
t17 = t250 * t433;
t305 = t103 * t448 - t122 * t451;
t314 = t186 * t439 + t185 * t437 / 0.2e1;
t5 = (-t355 * t277 + t314) * pkin(4) + t305;
t331 = -t5 * qJD(1) + t17 * qJD(2);
t295 = t432 / 0.2e1;
t11 = -t231 * t356 - (-t121 / 0.2e1 + t451) * t455 + t295;
t29 = -t417 - t418;
t330 = -t11 * qJD(1) + t29 * qJD(2);
t33 = t359 + t481 / 0.2e1;
t56 = t358 + t480 / 0.2e1;
t329 = -t33 * qJD(1) - t56 * qJD(2);
t34 = t447 + t476 / 0.2e1;
t57 = t446 + t475 / 0.2e1;
t328 = -t34 * qJD(1) - t57 * qJD(2);
t169 = t250 * t455;
t107 = -t169 - t377;
t318 = t377 + t152 / 0.2e1 + t169 / 0.2e1;
t37 = t318 - t399;
t327 = -t37 * qJD(1) + t107 * qJD(2);
t170 = t250 * t231;
t108 = t170 - t376;
t317 = t376 - t153 / 0.2e1 - t170 / 0.2e1;
t39 = t317 - t398;
t326 = -t39 * qJD(1) + t108 * qJD(2);
t130 = t413 - t414;
t54 = t295 + (t322 / 0.2e1 + t323 / 0.2e1) * t277 - (t240 / 0.2e1 + t216 / 0.2e1) * t321;
t325 = t54 * qJD(1) - t130 * qJD(2);
t306 = (qJ(3) + t293) * (t297 / 0.2e1 + t298 / 0.2e1);
t214 = -t432 / 0.2e1 + t306;
t285 = t289 * qJ(3);
t324 = t214 * qJD(1) + t285 * qJD(2);
t125 = t184 * qJD(5) + t386;
t63 = t355 * t231 + t398;
t320 = t63 * qJD(1) + t231 * t394;
t62 = t399 - t468;
t319 = t62 * qJD(1) - t394 * t455;
t308 = (-t404 / 0.2e1 - t372 / 0.2e1) * t431;
t138 = t308 - t469;
t316 = t138 * qJD(1) - t277 * t393;
t307 = (-t371 / 0.2e1 + t405 / 0.2e1) * t431;
t139 = -t321 * t354 + t307;
t315 = t139 * qJD(1) - t321 * t393;
t288 = t299 * t375;
t270 = t277 * qJD(3);
t266 = t321 * qJD(3);
t257 = t277 * t375;
t256 = t321 * t375;
t226 = t455 * qJD(3);
t222 = t229 * qJD(3);
t221 = t229 * qJD(4);
t213 = t295 + t306;
t212 = t455 * t375;
t211 = t231 * t375;
t196 = t205 * qJD(4);
t172 = t184 * qJD(3);
t141 = t308 + t469;
t140 = t307 + (t286 + t294) * t321 / 0.2e1;
t124 = -t184 * qJD(4) - t383;
t118 = t313 * pkin(4) + t373;
t116 = t117 * qJD(4);
t115 = t118 * qJD(3);
t114 = t118 * qJD(4);
t113 = t117 * qJD(3);
t82 = t474 * t455;
t78 = (t383 + t386) * t231;
t65 = t399 + t468;
t64 = t398 - t456 * t231 / 0.2e1;
t60 = t66 * qJD(2);
t59 = -t367 + 0.2e1 * t358;
t58 = t409 + 0.2e1 * t446;
t55 = t413 / 0.2e1 + t420 / 0.2e1 - t414 / 0.2e1 - t421 / 0.2e1 + t295;
t40 = t317 + t398;
t38 = t318 + t399;
t36 = -t369 + 0.2e1 * t359;
t35 = t411 + 0.2e1 * t447;
t30 = t486 * t483;
t12 = -t417 / 0.2e1 - t424 / 0.2e1 - t418 / 0.2e1 - t425 / 0.2e1 + t295;
t6 = t314 * pkin(4) + t456 * t373 - t305;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t375, -t304 * t427, 0, 0, 0, 0, 0, 0, 0, 0, -t300 * t375, t288, t397, t224 * qJD(2) + t255 * qJD(3), t362, t196, 0, -t362, 0, 0, t286 * t380 - t256, t286 * t267 + t257, t400, t87 * qJD(2) + t110 * qJD(3), t82, t30, 0, t78, 0, 0, -t105 * qJD(4) + t243 * t383 + t211, -t106 * qJD(4) - t243 * t385 + t212, t60 + t84, t21 * qJD(2) + t22 * qJD(3) + t15 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t334, -t304 * t346, 0, 0, 0, 0, 0, 0, 0, 0, -t300 * t334, t288 + t336, t381 + t397, t388 + t213 * qJD(3) + (qJ(3) * t345 - t436) * t427, t362, t196, 0, -t362, 0, 0, t141 * qJD(4) - t256 - t338, t140 * qJD(4) + t257 + t337, t389 + t400, t402 + (t254 * t240 - t253 * t322 + t294 * t432) * qJD(2) + t55 * qJD(3), t82, t30, 0, t78, 0, 0, t38 * qJD(4) + t65 * qJD(5) + t211 + t340, t40 * qJD(4) + t64 * qJD(5) + t212 + t339, t378 + t60 + t403, t422 + (t121 * t185 + t186 * t122 + t250 * t432) * qJD(2) + t12 * qJD(3) + t6 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t457, t213 * qJD(2) + t382, 0, 0, 0, 0, 0, 0, 0, 0, t460, t55 * qJD(2) + t390, 0, 0, 0, 0, 0, 0, t387, 0, t472, t12 * qJD(2) + t114 + t419; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t479, t463, t267, -t479, -t380, 0, t141 * qJD(2) - t216 * qJD(4) + t360, t140 * qJD(2) - qJD(4) * t323 + t361, 0, 0, -t484, t485, t474, t484, -t125, 0, t38 * qJD(2) - qJD(4) * t104 + t36 * qJD(5) - t392, t40 * qJD(2) - t103 * qJD(4) + t35 * qJD(5) - t391, t333 + t401, t423 + t6 * qJD(2) + t115 + (t103 * t301 - t104 * t437) * t426; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t484, t485, t474, t484, t124, 0, t65 * qJD(2) + t36 * qJD(4) - t104 * qJD(5) + t222 + t363, t64 * qJD(2) + t35 * qJD(4) - qJD(5) * t103 - t364, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t374, t304 * t428, 0, 0, 0, 0, 0, 0, 0, 0, t300 * t374, -t336, t287 - t381, t214 * qJD(3) - t388, t362, t196, 0, -t362, 0, 0, -t138 * qJD(4) + t338, -t139 * qJD(4) - t337, t235 - t389, -t54 * qJD(3) - t402, t82, t30, 0, t78, 0, 0, t37 * qJD(4) - t62 * qJD(5) - t340, t39 * qJD(4) - t63 * qJD(5) - t339, t378 - t403, -t11 * qJD(3) - t5 * qJD(4) - t422; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t287, t285 * qJD(3), t362, t196, 0, -t362, 0, 0, t294 * t380, t294 * t267, t235, t130 * qJD(3), t82, t30, 0, t78, 0, 0, -t107 * qJD(4) + t250 * t383, -t108 * qJD(4) - t250 * t385, t84, t29 * qJD(3) + t17 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t457, t324, 0, 0, 0, 0, 0, 0, 0, 0, t460, -t325, 0, 0, 0, 0, 0, 0, t387, 0, t472, t114 + t330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t479, t463, t267, -t479, -t380, 0, -t240 * qJD(4) - t316, -qJD(4) * t322 - t315, 0, 0, -t484, t485, t474, t484, -t125, 0, -qJD(4) * t122 + t59 * qJD(5) - t327, -t121 * qJD(4) + t58 * qJD(5) - t326, t332 + t401, t115 + (t121 * t301 - t122 * t437) * t426 + t331; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t484, t485, t474, t484, t124, 0, t59 * qJD(4) - t122 * qJD(5) + t222 - t319, t58 * qJD(4) - qJD(5) * t121 - t320, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t457, -t214 * qJD(2) - t382, 0, 0, 0, 0, 0, 0, t380, t267, -t460, t54 * qJD(2) - t390, 0, 0, 0, 0, 0, 0, t125, t474, -t472, t11 * qJD(2) - t116 - t419; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t457, -t324, 0, 0, 0, 0, 0, 0, t380, t267, -t460, t325, 0, 0, 0, 0, 0, 0, t125, t474, -t472, -t116 - t330; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t458, t459, 0, 0, 0, 0, 0, 0, 0, 0, t477, -t478, 0, -t466; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t464, -t478, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t479, -t463, 0, t479, 0, 0, t138 * qJD(2) - t270 - t360, t139 * qJD(2) - t266 - t361, 0, 0, t484, -t485, 0, -t484, -t387, 0, -t37 * qJD(2) - t33 * qJD(5) - t226 + t392, -t39 * qJD(2) + t34 * qJD(5) + t391 + t473, -t333, t5 * qJD(2) + t113 - t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t479, -t463, 0, t479, 0, 0, -t270 + t316, -t266 + t315, 0, 0, t484, -t485, 0, -t484, -t387, 0, -t56 * qJD(5) - t226 + t327, t57 * qJD(5) + t326 + t473, -t332, t113 - t331; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t458, -t459, 0, 0, 0, 0, 0, 0, 0, 0, -t477, t478, 0, t466; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t435, -pkin(4) * t347, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t462, 0, -t486 * t435 + t329, (-t348 - t347) * pkin(4) - t328, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t484, -t485, 0, -t484, t221, 0, t62 * qJD(2) + t33 * qJD(4) - t172 - t363, t63 * qJD(2) - t34 * qJD(4) + t364 + t473, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t484, -t485, 0, -t484, t221, 0, t56 * qJD(4) - t172 + t319, -t57 * qJD(4) + t320 + t473, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t464, t478, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t462, 0, t301 * t426 - t329, pkin(4) * t348 + t328, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t1;
