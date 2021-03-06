% Calculate inertial parameters regressor of coriolis matrix for
% S5PRRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:28
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRRPR5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:28:02
% EndTime: 2019-12-05 16:28:17
% DurationCPUTime: 5.25s
% Computational Cost: add. (4894->331), mult. (11614->521), div. (0->0), fcn. (13301->10), ass. (0->270)
t267 = sin(pkin(10));
t270 = sin(qJ(3));
t424 = cos(pkin(10));
t326 = t424 * t270;
t273 = cos(qJ(3));
t446 = qJ(4) + pkin(7);
t381 = t446 * t273;
t195 = t267 * t381 + t326 * t446;
t269 = sin(qJ(5));
t451 = t195 * t269;
t272 = cos(qJ(5));
t450 = t195 * t272;
t394 = t267 * t270;
t443 = t424 * t381 - t394 * t446;
t268 = sin(pkin(5));
t271 = sin(qJ(2));
t392 = t268 * t271;
t425 = cos(pkin(5));
t229 = t270 * t392 - t425 * t273;
t230 = t425 * t270 + t273 * t392;
t156 = t424 * t229 + t267 * t230;
t447 = t156 / 0.2e1;
t449 = t443 * t447;
t393 = t267 * t273;
t237 = t326 + t393;
t274 = cos(qJ(2));
t391 = t268 * t274;
t198 = t237 * t391;
t257 = t267 * pkin(3) + pkin(8);
t258 = -t424 * pkin(3) - pkin(4);
t325 = t424 * t273;
t292 = t325 - t394;
t199 = t292 * t391;
t388 = t269 * t199;
t164 = t272 * t392 - t388;
t347 = t269 * t392;
t384 = t272 * t199;
t165 = t347 + t384;
t444 = t165 * t272 / 0.2e1 - t164 * t269 / 0.2e1;
t448 = -t198 * t258 / 0.2e1 - t444 * t257;
t409 = t443 * t269;
t408 = t443 * t272;
t387 = t269 * t272;
t322 = 0.2e1 * t237 * t387;
t233 = t292 ^ 2;
t234 = t237 ^ 2;
t445 = -t234 - t233;
t351 = t234 - t233;
t293 = -t267 * t229 + t424 * t230;
t440 = -t293 / 0.2e1;
t439 = t195 / 0.2e1;
t438 = t292 / 0.2e1;
t437 = -t237 / 0.2e1;
t436 = t237 / 0.2e1;
t265 = t272 ^ 2;
t435 = -t265 / 0.2e1;
t434 = t269 / 0.2e1;
t433 = -t272 / 0.2e1;
t432 = t270 * pkin(3);
t430 = qJD(3) * pkin(3);
t259 = -t273 * pkin(3) - pkin(2);
t289 = -pkin(4) * t292 - t237 * pkin(8) + t259;
t86 = -t272 * t289 + t409;
t429 = t269 * t86;
t87 = t269 * t289 + t408;
t428 = t87 * t272;
t178 = t237 * pkin(4) - pkin(8) * t292 + t432;
t386 = t272 * t178;
t88 = t386 + t451;
t427 = t88 * t272;
t390 = t269 * t178;
t89 = -t450 + t390;
t426 = t89 * t269;
t126 = -t269 * t391 + t272 * t293;
t419 = t126 * t272;
t125 = t269 * t293 + t272 * t391;
t421 = t125 * t269;
t12 = (t293 - t419 - t421) * t156;
t423 = t12 * qJD(1);
t422 = t125 * t292;
t420 = t126 * t292;
t417 = t156 * t198;
t416 = t156 * t237;
t415 = t293 * t292;
t413 = t164 * t272;
t412 = t165 * t269;
t19 = -t125 * t164 + t126 * t165 + t417;
t410 = t19 * qJD(1);
t406 = t195 * t237;
t403 = t198 * t195;
t401 = t198 * t269;
t400 = t198 * t272;
t328 = t447 - t156 / 0.2e1;
t318 = t328 * t292;
t23 = (t440 + t293 / 0.2e1) * t237 - t318;
t399 = t23 * qJD(2);
t398 = t237 * t258;
t397 = t237 * t272;
t396 = t257 * t292;
t263 = t269 ^ 2;
t280 = -(t435 - t263 / 0.2e1) * t396 + t398 / 0.2e1;
t301 = -t427 / 0.2e1 - t426 / 0.2e1;
t26 = t280 + t301;
t395 = t26 * qJD(2);
t175 = t269 * t237;
t248 = t268 ^ 2 * t271 * t274;
t47 = t199 * t293 - t248 + t417;
t382 = t47 * qJD(1);
t252 = t265 - t263;
t380 = qJD(2) * t268;
t379 = qJD(2) * t271;
t378 = qJD(2) * t273;
t377 = qJD(3) * t272;
t376 = qJD(5) * t269;
t375 = qJD(5) * t272;
t103 = -t248 + (t229 * t270 + t230 * t273) * t391;
t374 = t103 * qJD(1);
t129 = t351 * t269;
t373 = t129 * qJD(2);
t130 = t445 * t269;
t372 = t130 * qJD(2);
t131 = t351 * t272;
t371 = t131 * qJD(2);
t346 = -t424 / 0.2e1;
t287 = t237 * t346 + t267 * t438;
t146 = (-t270 / 0.2e1 + t287) * pkin(3);
t370 = t146 * qJD(2);
t369 = t351 * qJD(2);
t368 = t293 * qJD(3);
t171 = (t263 / 0.2e1 + t435) * t237;
t367 = t171 * qJD(5);
t172 = t269 * t292;
t366 = t172 * qJD(2);
t365 = t175 * qJD(2);
t177 = t272 * t292;
t364 = t177 * qJD(2);
t227 = t263 * t292;
t228 = t265 * t292;
t179 = -t227 - t228;
t363 = t179 * qJD(2);
t181 = t445 * t272;
t362 = t181 * qJD(2);
t361 = t445 * qJD(2);
t232 = t326 / 0.2e1 + t393 / 0.2e1;
t360 = t232 * qJD(2);
t359 = t292 * qJD(2);
t358 = t292 * qJD(4);
t357 = t237 * qJD(2);
t356 = t237 * qJD(3);
t355 = t237 * qJD(4);
t264 = t270 ^ 2;
t266 = t273 ^ 2;
t253 = t266 - t264;
t354 = t253 * qJD(2);
t353 = t270 * qJD(3);
t352 = t273 * qJD(3);
t350 = pkin(2) * t270 * qJD(2);
t349 = pkin(2) * t378;
t345 = t292 * t375;
t344 = t292 * t357;
t343 = t292 * t356;
t342 = t268 * t379;
t341 = t274 * t380;
t340 = t269 * t375;
t339 = t269 * t377;
t338 = t270 * t352;
t337 = t272 * t357;
t336 = -t416 / 0.2e1;
t335 = t416 / 0.2e1;
t334 = t272 * t447;
t333 = t392 / 0.2e1;
t332 = -t391 / 0.2e1;
t331 = t391 / 0.2e1;
t330 = -t388 / 0.2e1;
t329 = -t384 / 0.2e1;
t327 = t439 - t195 / 0.2e1;
t324 = (t263 + t265) * t156;
t323 = (t264 + t266) * t274;
t321 = -qJD(5) + t359;
t320 = t234 * t340;
t317 = qJD(3) * t322;
t300 = t293 * t439 + t449;
t275 = -(t428 / 0.2e1 + t429 / 0.2e1) * t156 - t125 * t88 / 0.2e1 + t126 * t89 / 0.2e1 + t300;
t2 = t275 + t448;
t8 = t195 * t443 - t86 * t88 + t87 * t89;
t316 = t2 * qJD(1) + t8 * qJD(2);
t315 = -t88 * t269 + t89 * t272;
t285 = (t125 * t433 + t126 * t434) * t292;
t21 = -t285 - t444;
t5 = (t426 + t427) * t237 - (-t87 * t269 + t272 * t86) * t292;
t314 = t21 * qJD(1) - t5 * qJD(2);
t58 = t259 * t432;
t278 = -t195 * t440 - t300 + t449;
t288 = t199 * t267 / 0.2e1 + t198 * t346;
t6 = (t270 * t331 + t288) * pkin(3) + t278;
t313 = -t6 * qJD(1) + t58 * qJD(2);
t279 = -(-t419 / 0.2e1 - t421 / 0.2e1) * t292 + t335;
t299 = -t413 / 0.2e1 - t412 / 0.2e1;
t11 = t279 + t299;
t24 = t406 - (-t428 - t429) * t292;
t312 = t11 * qJD(1) + t24 * qJD(2);
t283 = t293 * t436 - t318;
t277 = t125 * t437 + t283 * t269;
t13 = t400 / 0.2e1 + t277;
t17 = (-t86 + t409) * t237 - (t88 - t451) * t292;
t311 = t13 * qJD(1) + t17 * qJD(2);
t276 = t126 * t437 + t283 * t272;
t16 = -t401 / 0.2e1 + t276;
t18 = (-t87 + t408) * t237 - (-t89 - t450) * t292;
t310 = t16 * qJD(1) + t18 * qJD(2);
t309 = t23 * qJD(1);
t296 = t333 + t336;
t30 = t330 - t420 / 0.2e1 + t296 * t272;
t50 = t195 * t397 + t292 * t87;
t308 = t30 * qJD(1) - t50 * qJD(2);
t31 = t329 + t422 / 0.2e1 - t296 * t269;
t49 = -t195 * t175 - t292 * t86;
t307 = -t31 * qJD(1) + t49 * qJD(2);
t59 = -t415 / 0.2e1 + t296;
t71 = t292 * t443 + t406;
t306 = -t59 * qJD(1) + t71 * qJD(2);
t305 = -t237 * t257 + t258 * t292;
t304 = t321 * t272;
t132 = (t436 - t232) * t391;
t162 = t259 * t237 - t292 * t432;
t303 = -t132 * qJD(1) + t162 * qJD(2);
t286 = -t325 / 0.2e1 + t394 / 0.2e1;
t133 = (t438 + t286) * t391;
t163 = t237 * t432 + t259 * t292;
t302 = -t133 * qJD(1) + t163 * qJD(2);
t297 = -t396 / 0.2e1 - t398 / 0.2e1;
t295 = t237 * t304;
t137 = -t171 * qJD(2) + t339;
t294 = t232 * qJD(5) - t344;
t104 = t234 * qJD(2) * t387 + t171 * qJD(3);
t180 = t252 * t234;
t291 = t180 * qJD(2) + t317;
t290 = qJD(2) * t322 - t252 * qJD(3);
t284 = t178 / 0.2e1 + t297;
t43 = t269 * t327 - t272 * t284;
t67 = t328 * t269;
t282 = -t258 * t269 * qJD(3) + t67 * qJD(1) - t43 * qJD(2);
t41 = t269 * t284 + t272 * t327;
t68 = t328 * t272;
t281 = t68 * qJD(1) - t41 * qJD(2) - t258 * t377;
t254 = t270 * t378;
t231 = t292 * qJD(3);
t226 = t232 * qJD(3);
t225 = t272 * t356;
t168 = t172 * qJD(5);
t145 = t432 / 0.2e1 + t287 * pkin(3);
t144 = t366 - t376;
t135 = -t232 * t391 + t237 * t332;
t134 = t286 * t391 - t292 * t331;
t70 = -t156 * t433 + t334;
t69 = t156 * t434 + t269 * t447;
t60 = t415 / 0.2e1 + t335 + t333;
t44 = t451 + t386 / 0.2e1 - t297 * t272;
t42 = t450 - t390 / 0.2e1 + t297 * t269;
t33 = t420 / 0.2e1 + t237 * t334 + t330 + t272 * t333;
t32 = -t422 / 0.2e1 + t269 * t336 + t329 - t347 / 0.2e1;
t25 = t280 - t301;
t22 = t23 * qJD(3);
t20 = -t285 + t444;
t15 = t401 / 0.2e1 + t276;
t14 = -t400 / 0.2e1 + t277;
t10 = t279 - t299;
t7 = pkin(3) * t288 + t332 * t432 - t278;
t1 = t275 - t448;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t47 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t19 * qJD(2) + t12 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t342, -t341, 0, 0, 0, 0, 0, 0, 0, 0, (-t271 * t378 - t274 * t353) * t268, (t270 * t379 - t274 * t352) * t268, t323 * t380, t374 + (-pkin(2) * t271 + pkin(7) * t323) * t380, 0, 0, 0, 0, 0, 0, t135 * qJD(3) - t292 * t342, t134 * qJD(3) + t237 * t342, (t198 * t237 + t199 * t292) * qJD(2) + t22, t382 + (t199 * t443 + t259 * t392 + t403) * qJD(2) + t7 * qJD(3) + t60 * qJD(4), 0, 0, 0, 0, 0, 0, (-t164 * t292 + t198 * t175) * qJD(2) + t14 * qJD(3) + t33 * qJD(5), (t165 * t292 + t198 * t397) * qJD(2) + t15 * qJD(3) + t32 * qJD(5), t20 * qJD(3) + (-t412 - t413) * t357, t410 + (-t164 * t86 + t165 * t87 + t403) * qJD(2) + t1 * qJD(3) + t10 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t230 * qJD(3) - t270 * t341, t229 * qJD(3) - t273 * t341, 0, 0, 0, 0, 0, 0, 0, 0, t135 * qJD(2) - t368, t134 * qJD(2) + qJD(3) * t156, t399, t7 * qJD(2) + (-t156 * t267 - t293 * t424) * t430, 0, 0, 0, 0, 0, 0, t14 * qJD(2) + t69 * qJD(5) - t272 * t368, t15 * qJD(2) + t70 * qJD(5) + t269 * t368, t20 * qJD(2) - qJD(3) * t324, t423 + t1 * qJD(2) + (-t257 * t324 + t258 * t293) * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t60 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t10 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t33 * qJD(2) + t69 * qJD(3) - t126 * qJD(5), t32 * qJD(2) + t70 * qJD(3) + t125 * qJD(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t374, 0, 0, 0, 0, 0, 0, -t132 * qJD(3), -t133 * qJD(3), t22, -t6 * qJD(3) - t59 * qJD(4) - t382, 0, 0, 0, 0, 0, 0, t13 * qJD(3) - t30 * qJD(5), t16 * qJD(3) - t31 * qJD(5), t21 * qJD(3), t2 * qJD(3) + t11 * qJD(4) - t410; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t338, t253 * qJD(3), 0, -t338, 0, 0, -pkin(2) * t353, -pkin(2) * t352, 0, 0, t343, -t351 * qJD(3), 0, -t343, 0, 0, t162 * qJD(3), t163 * qJD(3), -qJD(4) * t445, t58 * qJD(3) + t71 * qJD(4), t265 * t343 - t320, -t180 * qJD(5) - t292 * t317, t237 * t292 * t376 + t131 * qJD(3), t263 * t343 + t320, -t129 * qJD(3) + t237 * t345, -t343, t17 * qJD(3) - t130 * qJD(4) + t50 * qJD(5), t18 * qJD(3) - t181 * qJD(4) + t49 * qJD(5), -t5 * qJD(3), t8 * qJD(3) + t24 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t254, t354, t352, -t254, -t353, 0, -pkin(7) * t352 - t350, pkin(7) * t353 - t349, 0, 0, t344, -t369, t231, -t344, -t356, 0, -qJD(3) * t443 + t303, qJD(3) * t195 + t302, (-t237 * t267 - t292 * t424) * t430 + t309, (-t195 * t267 - t424 * t443) * t430 + t145 * qJD(4) + t313, -t367 - (-t265 * t357 - t339) * t292, (-t227 + t228) * qJD(3) + (-qJD(5) - t359) * t322, t269 * t356 + t371, t367 - (-t263 * t357 + t339) * t292, t225 - t373, t294, (t269 * t305 - t408) * qJD(3) + t44 * qJD(5) + t311, (t272 * t305 + t409) * qJD(3) + t42 * qJD(5) + t310, qJD(3) * t315 + t314, (t257 * t315 + t258 * t443) * qJD(3) + t25 * qJD(4) + t316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t361, t145 * qJD(3) + t306, 0, 0, 0, 0, 0, 0, -t372, -t362, 0, t25 * qJD(3) + t312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t104, -t291, t321 * t175, t104, t295, t226, t44 * qJD(3) - t87 * qJD(5) - t308, t42 * qJD(3) + t86 * qJD(5) + t307, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t132 * qJD(2), t133 * qJD(2), -t399, t6 * qJD(2), 0, 0, 0, 0, 0, 0, -t13 * qJD(2) - t67 * qJD(5), -t16 * qJD(2) - t68 * qJD(5), -t21 * qJD(2), -t2 * qJD(2) - t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t254, -t354, 0, t254, 0, 0, t350, t349, 0, 0, -t344, t369, 0, t344, 0, 0, -t303 - t355, -t302 - t358, -t309, t146 * qJD(4) - t313, -t265 * t344 - t367, 0.2e1 * t269 * t295, -t177 * qJD(5) - t371, -t263 * t344 + t367, t168 + t373, -t294, t43 * qJD(5) - t272 * t355 - t311, t175 * qJD(4) + t41 * qJD(5) - t310, -t179 * qJD(4) - t314, t26 * qJD(4) - t316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t340, t252 * qJD(5), 0, -t340, 0, 0, t258 * t376, t258 * t375, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t357, -t359, 0, t370, 0, 0, 0, 0, 0, 0, -t337, t365, -t363, t395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t137, -t290, -t364 + t375, -t137, t144, -t360, -t257 * t375 - t282, t257 * t376 - t281, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t59 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t11 * qJD(2); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, t231, t361, -t146 * qJD(3) - t306, 0, 0, 0, 0, 0, 0, t168 + t225 + t372, -t175 * qJD(3) + t345 + t362, t179 * qJD(3), -t26 * qJD(3) - t312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t357, t359, 0, -t370, 0, 0, 0, 0, 0, 0, t337, -t365, t363, -t395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, t304, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30 * qJD(2) + t67 * qJD(3), t31 * qJD(2) + t68 * qJD(3), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, t291, t177 * qJD(3) - t269 * t344, -t104, -t172 * qJD(3) - t292 * t337, t226, -t43 * qJD(3) - t172 * qJD(4) + t308, -t41 * qJD(3) - t272 * t358 - t307, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t137, t290, t364, t137, -t366, t360, t282, t281, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t366, -t272 * t359, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t3;
