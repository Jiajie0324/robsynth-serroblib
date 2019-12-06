% Calculate inertial parameters regressor of coriolis matrix for
% S5RPRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:10
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRRR1_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:09:58
% EndTime: 2019-12-05 18:10:14
% DurationCPUTime: 7.09s
% Computational Cost: add. (1598->452), mult. (5953->636), div. (0->0), fcn. (5542->6), ass. (0->369)
t268 = sin(qJ(4));
t272 = cos(qJ(3));
t459 = t268 * t272;
t267 = sin(qJ(5));
t269 = sin(qJ(3));
t271 = cos(qJ(4));
t457 = t269 * t271;
t375 = t267 * t457;
t270 = cos(qJ(5));
t450 = t272 * t270;
t172 = t375 + t450;
t462 = t267 * t172;
t455 = t270 * t271;
t374 = t269 * t455;
t451 = t272 * t267;
t174 = t374 - t451;
t476 = t174 * t270;
t81 = -t462 / 0.2e1 + t476 / 0.2e1;
t515 = t81 * qJD(5);
t262 = t268 ^ 2;
t265 = t271 ^ 2;
t181 = (t262 / 0.2e1 - t265 / 0.2e1) * t269;
t263 = t269 ^ 2;
t258 = t271 * t263;
t89 = t268 * qJD(1) * t258 + t181 * qJD(3);
t386 = t271 * qJD(3);
t244 = t268 * t386;
t104 = t181 * qJD(1) - t244;
t264 = t270 ^ 2;
t261 = t267 ^ 2;
t496 = t261 / 0.2e1;
t180 = (t496 - t264 / 0.2e1) * t268;
t481 = t172 * t270;
t346 = -t481 / 0.2e1;
t477 = t174 * t267;
t281 = (t346 - t477 / 0.2e1) * t268;
t456 = t270 * t262;
t514 = t267 * qJD(3) * t456 - qJD(1) * t281 + t180 * qJD(4);
t417 = qJD(1) * t174;
t513 = -qJD(3) * t281 - t81 * qJD(4) + t172 * t417;
t412 = qJD(4) * t270;
t243 = t267 * t412;
t512 = -t81 * qJD(1) + t180 * qJD(3) - t243;
t500 = 0.2e1 * t268;
t332 = t450 / 0.2e1;
t219 = t271 * t332;
t458 = t269 * t267;
t238 = t458 / 0.2e1;
t511 = t219 + t238;
t246 = t269 * t386;
t410 = qJD(4) * t272;
t248 = t268 * t410;
t510 = t246 + t248;
t339 = -t457 / 0.2e1;
t509 = -qJD(5) * t339 + t89;
t390 = t268 * qJD(5);
t508 = t390 / 0.2e1 + t104;
t503 = t281 * qJD(5);
t372 = t271 * t451;
t254 = t269 * t270;
t373 = qJ(2) * t254;
t156 = qJ(2) * t372 - t373;
t499 = -t156 / 0.2e1;
t176 = t271 * t450 + t458;
t158 = t176 * qJ(2);
t498 = -t158 / 0.2e1;
t497 = t174 / 0.2e1;
t340 = -t254 / 0.2e1;
t495 = -t262 / 0.2e1;
t494 = -t267 / 0.2e1;
t493 = t270 / 0.2e1;
t155 = t172 * qJ(2);
t175 = -t254 + t372;
t487 = qJ(2) * t174;
t2 = -t155 * t174 + t156 * t176 - t158 * t175 + t172 * t487;
t492 = t2 * qJD(1);
t452 = t272 * qJ(2);
t381 = t268 * t452;
t321 = t172 * t381;
t322 = t267 * t381;
t376 = t268 * t254;
t377 = t268 * t458;
t3 = t156 * t376 - t158 * t377 + t174 * t322 - t270 * t321;
t491 = t3 * qJD(1);
t6 = (t155 * t269 - t156 * t272 + (-t172 * t269 + t175 * t272) * qJ(2)) * t268;
t490 = t6 * qJD(1);
t7 = t158 * t459 - t176 * t381;
t489 = t7 * qJD(1);
t482 = t158 * t271;
t347 = -t482 / 0.2e1;
t484 = t156 * t271;
t348 = t484 / 0.2e1;
t9 = (t348 + t487 / 0.2e1) * t270 + (t347 + t155 / 0.2e1) * t267;
t488 = t9 * qJD(1);
t474 = t175 * t267;
t147 = -t474 / 0.2e1;
t480 = t172 * t271;
t310 = -t480 / 0.2e1 - t176 / 0.2e1;
t342 = t267 * t271 / 0.2e1;
t13 = t174 * t342 + t270 * t310 + t147;
t486 = t13 * qJD(1);
t266 = t272 ^ 2;
t463 = t262 * qJ(2);
t15 = t156 * t175 + t158 * t176 + t266 * t463;
t485 = t15 * qJD(1);
t483 = t158 * t270;
t479 = t172 * t272;
t478 = t174 * t175;
t475 = t174 * t271;
t473 = t175 * t269;
t472 = t175 * t270;
t471 = t176 * t172;
t470 = t176 * t267;
t469 = t176 * t270;
t18 = (t470 - t472) * t268;
t468 = t18 * qJD(1);
t21 = -t471 - t478;
t467 = t21 * qJD(1);
t22 = -t471 + t478;
t466 = t22 * qJD(1);
t293 = t155 * t494 - t487 * t493;
t338 = t457 / 0.2e1;
t24 = (qJ(2) * t338 + t293) * t268;
t465 = t24 * qJD(1);
t464 = t261 * t271;
t461 = t267 * t270;
t460 = t268 * t269;
t454 = t271 * t175;
t453 = t271 * t266;
t316 = t267 * t338;
t383 = 0.1e1 / 0.2e1 + t495;
t29 = t347 + (t383 * t450 + t316) * qJ(2);
t449 = t29 * qJD(1);
t336 = t455 / 0.2e1;
t315 = t269 * t336;
t30 = t348 + (-t383 * t451 + t315) * qJ(2);
t448 = t30 * qJD(1);
t343 = t269 * t495;
t279 = t172 * t342 + t261 * t343;
t34 = t472 / 0.2e1 + t279;
t447 = t34 * qJD(1);
t278 = t174 * t336 + t264 * t343;
t36 = -t470 / 0.2e1 + t278;
t446 = t36 * qJD(1);
t39 = -t172 * t376 - t174 * t377;
t445 = t39 * qJD(1);
t230 = t262 * t451;
t40 = -t230 - t454;
t444 = t40 * qJD(1);
t42 = -t156 * t460 + t321;
t443 = t42 * qJD(1);
t43 = (-t156 * t269 + t172 * t452) * t271;
t442 = t43 * qJD(1);
t382 = t174 * t452;
t44 = t158 * t457 - t271 * t382;
t441 = t44 * qJD(1);
t45 = (-t158 * t269 + t382) * t268;
t440 = t45 * qJD(1);
t334 = t451 / 0.2e1;
t313 = t271 * t334;
t51 = (t499 + (t313 + t340) * qJ(2)) * t268;
t439 = t51 * qJD(1);
t52 = (t511 * qJ(2) + t498) * t268;
t438 = t52 * qJD(1);
t210 = t262 * t238;
t345 = t480 / 0.2e1;
t308 = t345 + t511;
t54 = t210 + t308;
t437 = t54 * qJD(1);
t239 = -t458 / 0.2e1;
t211 = t262 * t239;
t333 = -t450 / 0.2e1;
t307 = t271 * t333 + t239 + t345;
t57 = t211 + t307;
t436 = t57 * qJD(1);
t314 = t262 * t340;
t295 = t314 + t340;
t58 = (-t174 / 0.2e1 + t334) * t271 + t295;
t435 = t58 * qJD(1);
t60 = (t497 + t334) * t271 + t295;
t434 = t60 * qJD(1);
t67 = (-t473 + t479) * t268;
t433 = t67 * qJD(1);
t68 = (-t473 - t479) * t268;
t432 = t68 * qJD(1);
t133 = t174 * t459;
t380 = t176 * t460;
t69 = t133 + t380;
t431 = t69 * qJD(1);
t70 = -t133 + t380;
t430 = t70 * qJD(1);
t213 = t268 * t332;
t289 = (t267 * t339 + t172 / 0.2e1) * t268;
t73 = t213 + t289;
t429 = t73 * qJD(1);
t337 = -t455 / 0.2e1;
t297 = t269 * t337 + t497;
t335 = -t451 / 0.2e1;
t80 = (t335 + t297) * t268;
t428 = t80 * qJD(1);
t84 = t263 * t262 * t267 - t172 * t457;
t427 = t84 * qJD(1);
t85 = -t174 * t457 + t263 * t456;
t426 = t85 * qJD(1);
t154 = t176 * t271;
t231 = t262 * t450;
t86 = -t231 - t154;
t425 = t86 * qJD(1);
t273 = qJ(2) ^ 2;
t371 = t272 * t273 * t269;
t420 = t262 + t265;
t87 = (t420 - 0.1e1) * t371;
t424 = t87 * qJD(1);
t385 = t272 * qJD(1);
t245 = t269 * t385;
t221 = t262 * t245;
t400 = t181 * qJD(4);
t423 = -t221 + t400;
t422 = t221 + t400;
t421 = -t261 - t264;
t232 = t264 - t261;
t233 = t265 - t262;
t235 = t266 - t263;
t234 = t266 + t263;
t419 = qJ(2) * qJD(1);
t418 = qJD(1) * t172;
t416 = qJD(2) * t269;
t415 = qJD(2) * t272;
t414 = qJD(4) * t267;
t413 = qJD(4) * t268;
t411 = qJD(4) * t271;
t409 = qJD(5) * t271;
t153 = (t266 * t420 + t263) * qJ(2);
t408 = t153 * qJD(1);
t191 = t234 * t268;
t177 = qJ(2) * t191;
t407 = t177 * qJD(1);
t224 = t234 * qJ(2);
t178 = t271 * t224;
t406 = t178 * qJD(1);
t403 = t180 * qJD(5);
t253 = t262 * t272;
t257 = t265 * t272;
t190 = -t253 - t257;
t399 = t190 * qJD(1);
t398 = t191 * qJD(1);
t192 = t235 * t268;
t397 = t192 * qJD(1);
t194 = t258 + t453;
t396 = t194 * qJD(1);
t195 = -t258 + t453;
t395 = t195 * qJD(1);
t394 = t224 * qJD(1);
t393 = t234 * qJD(1);
t392 = t235 * qJD(1);
t391 = t268 * qJD(3);
t389 = t269 * qJD(1);
t388 = t269 * qJD(3);
t387 = t269 * qJD(4);
t260 = t272 * qJD(3);
t11 = (-t483 / 0.2e1 + t156 * t494) * t271 + (t265 / 0.2e1 + (t264 / 0.2e1 + t496 - 0.1e1 / 0.2e1) * t262) * t452;
t384 = t24 * qJD(3) - t11 * qJD(4);
t379 = t262 * t458;
t378 = t268 * t461;
t370 = t267 * t391;
t369 = t270 * t391;
t368 = t268 * t387;
t367 = t268 * t412;
t366 = t271 * t410;
t365 = t269 * t390;
t364 = t270 * t390;
t362 = t267 * t411;
t361 = qJD(5) * t461;
t360 = t268 * t388;
t359 = t268 * t411;
t358 = t268 * t389;
t357 = t268 * t385;
t356 = qJ(2) * t388;
t355 = t269 * t260;
t354 = t270 * t411;
t353 = t271 * t260;
t352 = t267 * t409;
t351 = t270 * t409;
t350 = t271 * t389;
t349 = t271 * t385;
t344 = -t475 / 0.2e1;
t341 = -t459 / 0.2e1;
t331 = t391 / 0.2e1;
t330 = t389 / 0.2e1;
t329 = -0.2e1 * t378;
t328 = 0.2e1 * t378;
t323 = -qJD(4) + t385;
t320 = qJ(2) * t248;
t319 = t262 * t361;
t318 = t263 * t359;
t317 = t268 * t246;
t311 = t271 * t329;
t309 = -qJD(5) - t358;
t20 = -t268 * t273 * t453 + t156 * t322 + t381 * t483;
t306 = t20 * qJD(1) + t11 * qJD(2);
t14 = -t156 * t155 - t158 * t487 - t262 * t371;
t305 = t14 * qJD(1) + t24 * qJD(2);
t106 = (-0.1e1 - t421) * t271 * t268;
t303 = t11 * qJD(1) - t106 * qJD(2);
t188 = t233 * t267;
t214 = t268 * t333;
t290 = (-0.3e1 / 0.2e1 * t375 - t172 / 0.2e1) * t268;
t76 = t214 + t290;
t302 = t76 * qJD(1) + t188 * qJD(3);
t193 = t270 * t265 - t456;
t296 = 0.3e1 / 0.2e1 * t374 + t497;
t78 = (t335 + t296) * t268;
t301 = t78 * qJD(1) - t193 * qJD(3);
t185 = t323 * t268;
t186 = t323 * t271;
t300 = (-qJD(5) + t386) * t268;
t299 = -t412 + t418;
t298 = t414 + t417;
t294 = t271 * t335 + t254 / 0.2e1 + t314;
t292 = t269 * t186;
t291 = t358 - t386;
t189 = t233 * t263;
t288 = t189 * qJD(1) + 0.2e1 * t317;
t287 = -t233 * qJD(3) + t350 * t500;
t286 = t360 - t366;
t285 = t267 * t390 - t354;
t284 = t362 + t364;
t283 = qJD(5) + t291;
t19 = (-t462 + t476) * t268;
t26 = -t477 - t481;
t41 = t172 ^ 2 - t174 ^ 2;
t282 = t41 * qJD(1) - t19 * qJD(3) + t26 * qJD(4);
t148 = t474 / 0.2e1;
t5 = t267 * t344 + t148 + (t310 + t379) * t270;
t280 = t5 * qJD(1) + qJD(3) * t311;
t187 = t232 * t262;
t275 = t19 * qJD(1) + t187 * qJD(3) + qJD(4) * t328;
t274 = -t26 * qJD(1) + qJD(3) * t328 - t232 * qJD(4);
t255 = t264 * t271;
t252 = t413 / 0.2e1;
t251 = t388 / 0.2e1;
t247 = t267 * t413;
t212 = t268 * t334;
t209 = qJD(5) * t329;
t184 = t245 - t387 / 0.2e1;
t179 = t271 * t330 + t331;
t159 = qJD(4) * t338 + t272 * t331;
t152 = t469 / 0.2e1;
t135 = t262 * t355 + t318;
t79 = t268 * t297 + t212;
t77 = t268 * t296 + t212;
t75 = t213 + t290;
t74 = t214 + t289;
t61 = t475 / 0.2e1 + t294;
t59 = t344 + t294;
t56 = t211 + t308;
t55 = t210 + t307;
t53 = (t498 + (t219 + t239) * qJ(2)) * t268;
t50 = (t373 / 0.2e1 + qJ(2) * t313 + t499) * t268;
t35 = t470 / 0.2e1 + t278;
t33 = -t472 / 0.2e1 + t279;
t32 = t482 / 0.2e1 + t332 * t463 + (t316 + t332) * qJ(2);
t31 = -t484 / 0.2e1 + t335 * t463 + (t315 + t335) * qJ(2);
t25 = t26 * qJD(5);
t17 = t19 * qJD(5);
t12 = t152 + t148 + (t346 + t477 / 0.2e1) * t271;
t8 = (t156 * t493 + t158 * t494) * t271 + t293;
t4 = t172 * t337 + t147 + t152 + (t269 * t456 + t344) * t267;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), qJ(2) * qJD(2), t355, t235 * qJD(3), 0, -t355, 0, 0, 0, 0, t234 * qJD(2), t224 * qJD(2), t265 * t355 - t318, -t189 * qJD(4) - 0.2e1 * t272 * t317, -t195 * qJD(3) + t248 * t269, t135, t192 * qJD(3) + t269 * t366, -t355, t191 * qJD(2) + t178 * qJD(4), t194 * qJD(2) - t177 * qJD(4), 0, t153 * qJD(2) - t87 * qJD(3), (qJD(3) * t176 - t172 * qJD(5) - t269 * t367) * t174, t21 * qJD(3) - t39 * qJD(4) + t41 * qJD(5), t69 * qJD(3) - t85 * qJD(4) - t172 * t365, (qJD(3) * t175 + t174 * qJD(5) - t267 * t368) * t172, t68 * qJD(3) + t84 * qJD(4) - t174 * t365, t135, t67 * qJD(2) + t6 * qJD(3) + t43 * qJD(4) + t45 * qJD(5), -t70 * qJD(2) - t7 * qJD(3) - t44 * qJD(4) - t42 * qJD(5), t22 * qJD(2) + t2 * qJD(3) - t3 * qJD(4), t15 * qJD(2) + t14 * qJD(3) - t20 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t419, 0, 0, 0, 0, 0, 0, 0, 0, t393, t394, 0, 0, 0, 0, 0, 0, t398, t396, 0, t408, 0, 0, 0, 0, 0, 0, t74 * qJD(4) + t59 * qJD(5) + t433, t79 * qJD(4) + t55 * qJD(5) - t430, t12 * qJD(4) + t466, t485 + (-t271 * t272 + t469 + t474) * qJD(2) * t268 + t384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t245, t392, t260, -t245, -t388, 0, -qJ(2) * t260, t356, 0, 0, -t400 + (t265 * t389 + t244) * t272, (-t253 + t257) * qJD(3) + (-qJD(4) - t385) * t457 * t500, t360 - t395, -t268 * t353 + t422, t246 + t397, -t184, (-t353 + t368) * qJ(2), (t260 * t268 + t271 * t387) * qJ(2), -t420 * t356, -t424, t35 * qJD(4) + t503 + (t369 + t417) * t176, t467 + t4 * qJD(4) - t17 + (-t470 - t472) * t391, t431 + (t231 - t154) * qJD(3) + t77 * qJD(4) + t56 * qJD(5), t33 * qJD(4) - t503 + (t370 + t418) * t175, t432 + (-t230 + t454) * qJD(3) + t75 * qJD(4) + t61 * qJD(5), (-t386 + qJD(5) / 0.2e1) * t459 + t422, t490 + (-qJ(2) * t379 - t155 * t271) * qJD(3) + t50 * qJD(4) + t32 * qJD(5), -t489 + (-t262 * t373 - t271 * t487) * qJD(3) + t53 * qJD(4) + t31 * qJD(5), t492 + t8 * qJD(4) + (-t155 * t270 + t267 * t487) * t391, t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, -t288, t269 * t185, t89, t292, t251, qJ(2) * t286 + t406, t510 * qJ(2) - t407, 0, 0, t35 * qJD(3) - t298 * t376 + t515, t4 * qJD(3) - t232 * t368 + t25 - t445, t77 * qJD(3) + t269 * t362 - t426, t33 * qJD(3) - t299 * t377 - t515, t75 * qJD(3) + t269 * t354 + t427, t509, t74 * qJD(2) + t50 * qJD(3) + t285 * t452 + t442, t79 * qJD(2) + t53 * qJD(3) + t284 * t452 - t441, t12 * qJD(2) + t8 * qJD(3) + t320 * t421 - t491, -t306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t513, t282, t56 * qJD(3) + t172 * t309, t513, t61 * qJD(3) + t174 * t309, t159, t59 * qJD(2) + t32 * qJD(3) - t158 * qJD(5) + t267 * t320 + t440, t55 * qJD(2) + t31 * qJD(3) + t156 * qJD(5) + t270 * t320 - t443, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t419, 0, 0, 0, 0, 0, 0, t388, t260, -t393, -t394, 0, 0, 0, 0, 0, 0, -t398 + t510, -t286 - t396, t190 * qJD(3), -t408, 0, 0, 0, 0, 0, 0, t40 * qJD(3) + t73 * qJD(4) + t58 * qJD(5) - t433, t86 * qJD(3) + t80 * qJD(4) + t54 * qJD(5) + t430, t18 * qJD(3) + t13 * qJD(4) - t466, t384 - t485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389, t385, 0, 0, 0, 0, 0, 0, 0, 0, t350, -t358, t399, 0, 0, 0, 0, 0, 0, 0, t444, t425, t468, t465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t185, t186, 0, 0, 0, 0, 0, 0, 0, 0, -t352 - t367 + t429, t247 - t351 + t428, t486 + (t255 + t464) * qJD(4), -t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t284 + t435, t285 + t437, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t245, -t392, 0, t245, 0, 0, -t416, -t415, 0, 0, -t245 * t265 - t400, t292 * t500, -t366 + t395, t423, t248 - t397, t184, -t271 * t416, t268 * t416, -t190 * qJD(2), t424, t36 * qJD(4) - t176 * t417 + t503, t5 * qJD(4) - t17 - t467, t78 * qJD(4) + t57 * qJD(5) - t431, t34 * qJD(4) - t175 * t418 - t503, t76 * qJD(4) + t60 * qJD(5) - t432, qJD(5) * t341 + t423, -t40 * qJD(2) + t51 * qJD(4) - t29 * qJD(5) - t490, -t86 * qJD(2) + t52 * qJD(4) - t30 * qJD(5) + t489, -t18 * qJD(2) + t9 * qJD(4) - t492, -t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389, -t385, 0, 0, 0, 0, 0, 0, 0, 0, -t350, t358, -t399, 0, 0, 0, 0, 0, 0, 0, -t444, -t425, -t468, -t465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t359, t233 * qJD(4), 0, -t359, 0, 0, 0, 0, 0, 0, t264 * t359 - t319, qJD(4) * t311 - t187 * qJD(5), -t193 * qJD(4) + t268 * t352, t261 * t359 + t319, t188 * qJD(4) + t268 * t351, -t359, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t104, -t287, -t186, t104, t185, -t389 / 0.2e1, 0, 0, 0, 0, t446 - t403 + (t264 * t391 + t243) * t271, (t255 - t464) * qJD(4) + t209 + t280, t247 + t301, t447 + t403 + (t261 * t391 - t243) * t271, t302 + t367, t508, t439, t438, t488, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t514, -t275, t267 * t300 + t436, t514, t270 * t300 + t434, qJD(1) * t341 + t252, -t449, -t448, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t89, t288, -t291 * t272, -t89, (-t350 - t391) * t272, t251, -t268 * t415 - t406, -t271 * t415 + t407, 0, 0, -t36 * qJD(3) + t358 * t476 + t515, -t5 * qJD(3) + t25 + t445, -t78 * qJD(3) + t269 * t364 + t426, -t34 * qJD(3) + t358 * t462 - t515, -t76 * qJD(3) - t267 * t365 - t427, -t509, -t73 * qJD(2) - t51 * qJD(3) - t442, -t80 * qJD(2) - t52 * qJD(3) + t441, -t13 * qJD(2) - t9 * qJD(3) + t491, t306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t357, -t349, 0, 0, 0, 0, 0, 0, 0, 0, -t429, -t428, -t486, t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104, t287, t349, -t104, -t357, t330, 0, 0, 0, 0, -t244 * t264 - t403 - t446, t209 - t280, -t301 - t351, -t244 * t261 + t403 - t447, -t302 + t352, -t508, -t439, -t438, -t488, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t361, t232 * qJD(5), 0, -t361, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t512, -t274, t283 * t270, t512, -t283 * t267, -t179, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t513, -t282, -t57 * qJD(3) + t299 * t460, -t513, -t60 * qJD(3) + t298 * t460, t159, -t58 * qJD(2) + t29 * qJD(3) - t440, -t54 * qJD(2) + t30 * qJD(3) + t443, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t435, -t437, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t514, t275, -t436 + (-t370 + t412) * t271, -t514, -t434 + (-t369 - t414) * t271, t357 / 0.2e1 + t252, t449, t448, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t512, t274, -t291 * t270, -t512, t291 * t267, t179, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t1;
