% Calculate minimal parameter regressor of coriolis matrix for
% S6PRRPRP5
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
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRRPRP5_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP5_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP5_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP5_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:49:24
% EndTime: 2019-03-08 21:49:34
% DurationCPUTime: 5.81s
% Computational Cost: add. (3766->472), mult. (8381->625), div. (0->0), fcn. (8074->8), ass. (0->357)
t277 = sin(pkin(6));
t281 = cos(qJ(5));
t283 = cos(qJ(2));
t431 = t281 * t283;
t377 = t277 * t431;
t279 = sin(qJ(3));
t282 = cos(qJ(3));
t280 = sin(qJ(2));
t449 = t277 * t280;
t471 = cos(pkin(6));
t185 = t279 * t449 - t282 * t471;
t278 = sin(qJ(5));
t457 = t185 * t278;
t128 = t377 - t457;
t347 = t471 * t279;
t186 = t282 * t449 + t347;
t264 = t281 * qJD(3);
t512 = t128 * qJD(5) + t186 * t264;
t284 = -pkin(3) - pkin(9);
t430 = t282 * t284;
t441 = t279 * qJ(4);
t509 = -t430 + t441;
t194 = -pkin(2) - t509;
t492 = pkin(4) + pkin(8);
t232 = t492 * t279;
t211 = t281 * t232;
t124 = t278 * t194 - t211;
t473 = t279 * pkin(5);
t110 = t124 - t473;
t349 = -t124 / 0.2e1 + t110 / 0.2e1;
t440 = t279 * qJ(6);
t444 = t278 * t232;
t125 = t281 * t194 + t444;
t107 = t125 + t440;
t495 = t125 / 0.2e1 - t107 / 0.2e1;
t11 = (t440 / 0.2e1 - t495) * t281 + (-t473 / 0.2e1 + t349) * t278;
t468 = t11 * qJD(2);
t434 = t281 * qJ(6);
t230 = -t278 * pkin(5) + t434;
t504 = t230 * qJD(5) + t278 * qJD(6);
t511 = t504 + t468;
t437 = t279 * t284;
t217 = qJ(4) - t230;
t452 = t217 * t282;
t510 = t452 / 0.2e1 + t437 / 0.2e1;
t262 = t278 * qJD(3);
t405 = qJD(5) * t281;
t448 = t277 * t283;
t378 = t278 * t448;
t317 = t185 * t281 + t378;
t357 = t448 / 0.2e1;
t337 = t278 * t357;
t432 = t281 * t282;
t353 = -t432 / 0.2e1;
t476 = t282 / 0.2e1;
t494 = t185 * t353 + t282 * t337 + t317 * t476;
t508 = qJD(2) * t494 - t185 * t262 + t186 * t405;
t435 = t280 * t278;
t157 = (-t279 * t431 + t435) * t277;
t276 = t282 ^ 2;
t507 = qJD(3) * t494 + (-t157 * t279 + t276 * t377) * qJD(2);
t263 = t279 * qJD(6);
t296 = -t317 * t278 / 0.2e1;
t478 = -t281 / 0.2e1;
t291 = (t128 * t478 + t296) * t279;
t438 = t279 * t283;
t158 = (t278 * t438 + t280 * t281) * t277;
t480 = t278 / 0.2e1;
t315 = t157 * t478 + t158 * t480;
t27 = t291 + t315;
t451 = t27 * qJD(1);
t506 = -t11 * qJD(5) - t263 * t278 - t451;
t442 = t278 * t282;
t356 = -t442 / 0.2e1;
t479 = t279 / 0.2e1;
t305 = t128 * t479 + t186 * t356;
t358 = -t448 / 0.2e1;
t336 = t281 * t358;
t359 = t449 / 0.2e1;
t49 = t278 * t359 + t279 * t336 - t305;
t505 = t49 * qJD(2) - t512;
t456 = t186 * t282;
t47 = (t185 * t479 + t456 / 0.2e1 - t449 / 0.2e1) * t281;
t424 = t47 * qJD(1);
t268 = t282 * pkin(8);
t270 = t282 * pkin(4);
t233 = t268 + t270;
t464 = t124 * t279;
t79 = t233 * t432 - t464;
t503 = t79 * qJD(2) + t424;
t271 = pkin(3) * t279;
t470 = qJ(4) * t282;
t231 = t271 - t470;
t200 = t279 * pkin(9) + t231;
t181 = t281 * t200;
t212 = t233 * t278;
t413 = t181 + t212;
t443 = t278 * t279;
t33 = t413 * t279 - t233 * t443 + (t125 - t444) * t282;
t490 = -t128 / 0.2e1;
t335 = t490 - t457 / 0.2e1;
t351 = t431 / 0.2e1;
t64 = (t277 * t351 + t335) * t282;
t419 = t64 * qJD(1);
t502 = -t33 * qJD(2) - t419;
t267 = t282 * qJ(6);
t111 = t267 + t413;
t447 = t278 * qJ(6);
t474 = pkin(5) * t281;
t229 = t447 + t474;
t149 = (-t229 - t492) * t279;
t253 = t278 * t267;
t255 = pkin(5) * t432;
t412 = t253 + t255;
t150 = t233 + t412;
t17 = t107 * t282 + t111 * t279 + (t149 * t282 - t150 * t279) * t278;
t501 = t17 * qJD(2) + t419;
t297 = (-t435 / 0.2e1 + t279 * t351) * t277;
t287 = t297 - t305;
t422 = t287 * qJD(1);
t469 = t107 * t279;
t55 = t150 * t442 + t469;
t500 = t55 * qJD(2) + t422;
t193 = t230 * t282;
t454 = t193 * t278;
t460 = t150 * t281;
t37 = -t464 + (t454 + t460) * t282;
t499 = t37 * qJD(2) + t424;
t463 = t125 * t279;
t36 = -t463 + (-t150 * t278 + t193 * t281) * t282;
t498 = t36 * qJD(2) - t422;
t292 = t278 * t349 - t281 * t495;
t12 = -t279 * t434 / 0.2e1 + pkin(5) * t443 / 0.2e1 + t292;
t497 = t12 * qJD(5) - t451;
t421 = t287 * qJD(2);
t496 = t287 * qJD(5);
t273 = t278 ^ 2;
t275 = t281 ^ 2;
t242 = t273 - t275;
t385 = t282 * qJD(2);
t375 = t281 * t385;
t339 = t278 * t375;
t302 = t242 * qJD(3) + 0.2e1 * t339;
t352 = t432 / 0.2e1;
t46 = t186 * t352 + t279 * t337 + t281 * t359 + t317 * t479;
t493 = t46 * qJD(2) + qJD(5) * t317 + t186 * t262;
t269 = t282 * pkin(5);
t213 = t233 * t281;
t445 = t278 * t200;
t345 = -t213 + t445;
t113 = -t269 + t345;
t491 = t113 / 0.2e1;
t489 = t128 / 0.2e1;
t488 = t150 / 0.2e1;
t487 = t186 / 0.2e1;
t486 = -t193 / 0.2e1;
t485 = t193 / 0.2e1;
t484 = t200 / 0.2e1;
t483 = t229 / 0.2e1;
t482 = -t273 / 0.2e1;
t481 = t275 / 0.2e1;
t477 = -t282 / 0.2e1;
t467 = t111 * t278;
t466 = t113 * t281;
t13 = (t111 * t282 - t469) * t281 + (-t110 * t279 + t113 * t282) * t278;
t462 = t13 * qJD(2);
t14 = -t107 * t442 + (t125 * t278 + (t110 - t124) * t281) * t282;
t461 = t14 * qJD(2);
t18 = (t149 * t281 - t110) * t282 + (-t113 - t460) * t279;
t458 = t18 * qJD(2);
t19 = (-t128 * t278 + t281 * t317 - t185) * t186;
t455 = t19 * qJD(1);
t379 = t282 * t448;
t20 = -t128 * t158 - t157 * t317 + t186 * t379;
t453 = t20 * qJD(1);
t450 = t27 * qJD(2);
t446 = t278 * t107;
t439 = t279 * t281;
t28 = t291 - t315;
t436 = t28 * qJD(2);
t433 = t281 * t110;
t32 = (-t124 - t211) * t282 + (-t345 - t213) * t279;
t429 = t32 * qJD(2);
t38 = (t107 * t281 + t110 * t278) * t279;
t425 = t38 * qJD(2);
t423 = t47 * qJD(2);
t418 = t64 * qJD(2);
t74 = -t185 * t277 * t438 + (t449 - t456) * t448;
t417 = t74 * qJD(1);
t169 = -t445 / 0.2e1;
t414 = t169 + t213 / 0.2e1;
t411 = t273 + t275;
t274 = t279 ^ 2;
t243 = t276 - t274;
t410 = qJD(2) * t280;
t409 = qJD(3) * qJ(4);
t408 = qJD(4) * t281;
t407 = qJD(4) * t282;
t406 = qJD(5) * t278;
t404 = qJD(5) * t284;
t403 = t124 * qJD(5);
t334 = -t282 * pkin(3) - t441;
t218 = -pkin(2) + t334;
t138 = t218 * t282 + t231 * t279;
t402 = t138 * qJD(2);
t139 = -t218 * t279 + t231 * t282;
t401 = t139 * qJD(2);
t177 = t411 * t282 * t279;
t400 = t177 * qJD(2);
t399 = t186 * qJD(3);
t208 = t243 * t278;
t398 = t208 * qJD(2);
t210 = t243 * t281;
t397 = t210 * qJD(2);
t396 = t217 * qJD(3);
t394 = t243 * qJD(2);
t393 = t274 * qJD(2);
t392 = t274 * qJD(4);
t390 = t279 * qJD(2);
t389 = t279 * qJD(3);
t388 = t279 * qJD(4);
t387 = t279 * qJD(5);
t386 = t281 * qJD(6);
t265 = t282 * qJD(3);
t384 = t284 * qJD(3);
t383 = -t212 / 0.2e1 - t267;
t382 = pkin(2) * t390;
t381 = pkin(2) * t385;
t380 = pkin(8) * t389;
t376 = -t460 / 0.2e1 + t510 * t278;
t374 = t278 * t387;
t373 = t278 * t404;
t372 = t281 * t387;
t371 = t281 * t404;
t370 = t218 * t390;
t369 = qJD(2) * t448;
t368 = t278 * t265;
t367 = t278 * t390;
t249 = t279 * t265;
t248 = t279 * t385;
t366 = t278 * t405;
t365 = t281 * t392;
t250 = t278 * t264;
t364 = t278 * t386;
t363 = t281 * t390;
t362 = t281 * t388;
t361 = t282 * t386;
t355 = -t437 / 0.2e1;
t348 = t481 + t482;
t344 = qJD(2) * (t274 + t276);
t178 = (-0.1e1 / 0.2e1 + t348) * t282;
t343 = t178 * qJD(2) + t250;
t195 = t348 * t282;
t342 = t195 * qJD(2) + t250;
t224 = t278 * t276 * t281 * qJD(2);
t341 = t195 * qJD(3) - t224;
t254 = qJD(5) + t390;
t340 = qJD(4) - t386;
t338 = t282 * t250;
t288 = t111 * t489 + t185 * t488 + t317 * t491;
t290 = t284 * t315 + t357 * t452;
t1 = (-t446 / 0.2e1 - t149 / 0.2e1 + t433 / 0.2e1) * t186 + t288 + t290;
t7 = t107 * t111 + t110 * t113 + t150 * t149;
t333 = -t1 * qJD(1) + t7 * qJD(2);
t285 = t186 * t486 + t317 * t495;
t320 = -t157 * pkin(5) / 0.2e1 + t158 * qJ(6) / 0.2e1;
t3 = t128 * t349 + t285 + t320;
t8 = -t107 * t124 + t110 * t125 + t150 * t193;
t332 = -t3 * qJD(1) + t8 * qJD(2);
t331 = qJ(4) * t353 + t281 * t355;
t80 = -t233 * t442 - t463;
t330 = -t80 * qJD(2) + t422;
t329 = t64 * qJD(3) + t47 * qJD(5);
t328 = -t466 + t467;
t134 = t217 * t281 + t229 * t278;
t199 = -t213 / 0.2e1;
t226 = t278 * t355;
t306 = t229 * t352 + t460 / 0.2e1 + t217 * t356 + t226;
t26 = -t269 + t199 + (t485 + t484) * t278 + t306;
t326 = -t26 * qJD(2) - t134 * qJD(3);
t135 = -t217 * t278 + t229 * t281;
t171 = -t181 / 0.2e1;
t289 = (t229 * t476 + t488) * t278 + (t486 + t510) * t281;
t22 = t171 + t289 + t383;
t325 = -t22 * qJD(2) + t135 * qJD(3);
t206 = t254 * t278;
t324 = t387 + t393;
t322 = t470 / 0.2e1 - t271 / 0.2e1;
t321 = -t111 * qJ(6) / 0.2e1 + pkin(5) * t491;
t319 = t447 / 0.2e1 + t474 / 0.2e1;
t316 = -t467 / 0.2e1 + t466 / 0.2e1;
t314 = t253 / 0.2e1 + t255 / 0.2e1 + t268 / 0.2e1 + t270 / 0.2e1;
t39 = (t231 / 0.2e1 + t322) * t448;
t313 = -t218 * t231 * qJD(2) + t39 * qJD(1);
t35 = t269 / 0.2e1 + t376 + t414;
t311 = -t35 * qJD(2) + t217 * t264;
t309 = t282 * t206;
t108 = t226 + (-t470 / 0.2e1 + t484) * t278;
t308 = -qJ(4) * t264 - t108 * qJD(2);
t170 = t181 / 0.2e1;
t109 = t170 + t331;
t307 = qJ(4) * t262 - t109 * qJD(2);
t304 = -t185 * qJD(3) + t282 * t369;
t127 = t279 * t369 + t399;
t209 = t242 * t276;
t303 = -t209 * qJD(2) + 0.2e1 * t338;
t65 = (t335 + t336) * t282;
t301 = (t158 * t279 + t276 * t378) * qJD(2) + t65 * qJD(3) + t46 * qJD(5);
t31 = t314 + t316;
t299 = t347 / 0.2e1 + t282 * t359;
t76 = (t482 - t275 / 0.2e1) * t186 + t299;
t300 = t76 * qJD(1) + t31 * qJD(2) + t396;
t15 = (-t229 / 0.2e1 + t319) * t186;
t286 = t150 * t483 + t217 * t485 + t284 * t292;
t6 = t286 + t321;
t298 = -t15 * qJD(1) + t6 * qJD(2) + t229 * t396;
t295 = qJD(3) * t334 + t407;
t294 = t65 * qJD(2) + t185 * t264 + t186 * t406;
t223 = t273 * t276 + t274;
t293 = -t223 * qJD(2) + t338 - t387;
t266 = qJD(4) * t278;
t261 = pkin(8) * t265;
t257 = t265 / 0.2e1;
t252 = t281 * t407;
t251 = t281 * t265;
t247 = t278 * t388;
t246 = t278 * t392;
t238 = t281 * t430;
t222 = t254 * qJ(6);
t207 = t254 * t281;
t201 = qJD(5) * t476 + t248;
t191 = t324 * t281;
t190 = t281 * t393 - t368;
t189 = t324 * t278;
t188 = t278 * t393 + t251;
t187 = -t275 * qJD(3) + t339;
t184 = t195 * qJD(5);
t179 = t273 * t476 + t275 * t477 + t477;
t173 = t254 * t432;
t172 = (t375 + t262) * t279;
t156 = (t280 * t385 + t283 * t389) * t277;
t155 = (-t265 * t283 + t280 * t390) * t277;
t122 = t125 * qJD(5);
t82 = -t212 + t171 + t331;
t81 = qJ(4) * t356 + t169 + t213 + t226;
t75 = t186 * t481 + t273 * t487 + t299;
t48 = t297 + t305;
t40 = t231 * t358 + t322 * t448;
t34 = t445 / 0.2e1 + t199 - t269 / 0.2e1 + t376;
t30 = t314 - t316;
t25 = t454 / 0.2e1 + t269 + t306 + t414;
t21 = t170 + t289 - t383;
t16 = (t317 * t480 + t296) * t284 + (t319 + t483) * t186;
t5 = t286 - t321;
t4 = t110 * t490 + t124 * t489 - t285 + t320;
t2 = -t186 * t433 / 0.2e1 - t288 + t290 + (t446 + t149) * t487;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t74 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t20 * qJD(2) + t19 * qJD(3); 0, 0, -t277 * t410, -t369, 0, 0, 0, 0, 0, -t156, t155, t344 * t448, t156, -t155, -t417 + t40 * qJD(3) + (t218 * t410 + (pkin(8) * t344 + t388) * t283) * t277, 0, 0, 0, 0, 0, t48 * qJD(5) + t507, -t301, -t49 * qJD(5) + t507, t28 * qJD(3) + (-t157 * t278 - t158 * t281) * t385, t301, t453 + (t158 * t107 + t157 * t110 + t150 * t379) * qJD(2) + t2 * qJD(3) - t28 * qJD(4) + t4 * qJD(5) + t49 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, -t127, -t304, 0, t127, t304, t40 * qJD(2) + (-t186 * pkin(3) - t185 * qJ(4)) * qJD(3) + t186 * qJD(4), 0, 0, 0, 0, 0, t508, -t294, t508, -t399 * t411 + t436, t294, -t185 * t396 + t455 + t2 * qJD(2) + t75 * qJD(4) + t16 * qJD(5) + (t384 * t411 - t386) * t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t75 * qJD(3) - t436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t48 * qJD(2) + t512, -t493, -t505, 0, t493, t4 * qJD(2) + t16 * qJD(3) + (t128 * pkin(5) + qJ(6) * t317) * qJD(5) - t128 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t39 * qJD(3) + t417, 0, 0, 0, 0, 0, -t496, -t329, -t496, t27 * qJD(3), t329, -t1 * qJD(3) - t27 * qJD(4) - t3 * qJD(5) + qJD(6) * t287 - t453; 0, 0, 0, 0, t249, t243 * qJD(3), 0, 0, 0, -pkin(2) * t389, -pkin(2) * t265, 0, t139 * qJD(3) - t282 * t388, -t138 * qJD(3) + t392 (qJD(3) * t231 - t388) * t218, -t249 * t273 + t276 * t366, -t209 * qJD(5) - 0.2e1 * t279 * t338, -t208 * qJD(3) - t282 * t372, -t210 * qJD(3) + t282 * t374, t249, t32 * qJD(3) + t80 * qJD(5) + t246, -t33 * qJD(3) - t79 * qJD(5) + t365, t18 * qJD(3) + t36 * qJD(5) + t276 * t364 + t246, -t13 * qJD(3) + t177 * qJD(4) - t14 * qJD(5) - t279 * t361, t17 * qJD(3) + t37 * qJD(5) + t223 * qJD(6) - t365, t7 * qJD(3) - t38 * qJD(4) + t8 * qJD(5) + t55 * qJD(6); 0, 0, 0, 0, t248, t394, t265, -t389, 0, -t261 - t382, t380 - t381, t295, t261 + t401, -t380 - t402, pkin(8) * t295 - t313, -t184 + (-t273 * t385 + t250) * t279, -t279 * t302 + 0.2e1 * t282 * t366, t251 - t398, -t368 - t397, t201, t429 + (-qJ(4) * t439 + t238 - t444) * qJD(3) + t252 + t81 * qJD(5), -t232 * t264 + t82 * qJD(5) + (qJD(3) * t509 - t407) * t278 + t502, t458 + (t149 * t278 - t217 * t439 + t238) * qJD(3) + t252 + t25 * qJD(5) + t179 * qJD(6), -qJD(3) * t328 - t462 - t497, -t149 * t264 + t21 * qJD(5) + (-t217 * t389 + (t340 + t384) * t282) * t278 + t501 (t149 * t217 + t284 * t328) * qJD(3) + t30 * qJD(4) + t5 * qJD(5) + t34 * qJD(6) + t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t265, -t248, t393, t261 - t370, 0, 0, 0, 0, 0, t188, t190, t188, t400, -t190, t30 * qJD(3) - t425 + t497; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t341, t303, -t173, t309, t257, t81 * qJD(3) - t122 - t330, t82 * qJD(3) + t403 - t503, t25 * qJD(3) - t122 + t498, -t12 * qJD(3) + qJD(5) * t412 - t361 - t461, t21 * qJD(3) + t263 - t403 + t499, t5 * qJD(3) + t12 * qJD(4) + (-t125 * pkin(5) - t124 * qJ(6)) * qJD(5) + t107 * qJD(6) + t332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t179 * qJD(3) + t224, -t173, -t293, t34 * qJD(3) + t107 * qJD(5) + t500; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t39 * qJD(2), 0, 0, 0, 0, 0, 0, t418, 0, -t450, -t418, t1 * qJD(2) + t76 * qJD(4) - t15 * qJD(5) - t455; 0, 0, 0, 0, -t248, -t394, 0, 0, 0, t382, t381, 0, -t401, t402, t313, t248 * t273 - t184, 0.2e1 * t281 * t309, -t374 + t398, -t372 + t397, -t201, t108 * qJD(5) - t429, t109 * qJD(5) - t502, t26 * qJD(5) - t178 * qJD(6) - t458, t462 + t506, t22 * qJD(5) - t278 * t361 - t501, t31 * qJD(4) + t6 * qJD(5) + t35 * qJD(6) - t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), qJ(4) * qJD(4), -t366, t242 * qJD(5), 0, 0, 0, qJ(4) * t405 + t266, -qJ(4) * t406 + t408, t134 * qJD(5) + t266 - t364, 0, -t135 * qJD(5) + t275 * qJD(6) - t408 (qJD(5) * t229 + t340) * t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t409, 0, 0, 0, 0, 0, t262, t264, t262, 0, -t264, t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t342, t302, -t206, -t207, -t385 / 0.2e1, -t308 - t373, -t307 - t371, -t326 - t373, -t511, -t325 + t371, t284 * t504 + t298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t343, -t206, -t187, -t311 + t373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t76 * qJD(3) + t450; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t248, -t393, t370, 0, 0, 0, 0, 0, -t189, -t191, -t189, -t400, t191, -t31 * qJD(3) + t425 - t506; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t409, 0, 0, 0, 0, 0, -t262, -t264, -t262, 0, t264, -t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t206, -t207, -t206, 0, t207, t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t421, t423, t421, 0, -t423, t3 * qJD(2) + t15 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t341, -t303, t172 (-t278 * t385 + t264) * t279, t257, -t108 * qJD(3) + t247 + t330, -t109 * qJD(3) + t362 + t503, -t26 * qJD(3) + t247 - t498, t11 * qJD(3) + t461, -t22 * qJD(3) + t263 - t362 - t499, qJ(6) * t263 - t6 * qJD(3) - t11 * qJD(4) - t332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t342, -t302, t367, t363, t385 / 0.2e1, t308, t307, t326, t468, t325, -t298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t367, t363, t367, 0, -t363, -t468; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), qJ(6) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t254, t222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t421; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t178 * qJD(3) - t224, t172, t293, -qJ(6) * t387 - t35 * qJD(3) - t247 - t500; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t343, t367, t187, t311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t254, -t222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t9;