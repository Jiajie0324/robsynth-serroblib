% Calculate minimal parameter regressor of coriolis matrix for
% S4RRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,alpha2,d1,d2,d3,d4]';
% 
% Output:
% cmat_reg [(4*%NQJ)%x24]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S4RRRR6_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR6_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR6_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S4RRRR6_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:30:53
% EndTime: 2019-12-31 17:31:04
% DurationCPUTime: 5.11s
% Computational Cost: add. (3578->458), mult. (9859->708), div. (0->0), fcn. (10148->8), ass. (0->357)
t256 = sin(qJ(4));
t255 = sin(pkin(4));
t261 = cos(qJ(2));
t440 = t255 * t261;
t258 = sin(qJ(2));
t459 = cos(pkin(4));
t365 = pkin(1) * t459;
t328 = t258 * t365;
t207 = pkin(6) * t440 + t328;
t193 = t459 * pkin(7) + t207;
t312 = -pkin(2) * t261 - pkin(7) * t258;
t194 = (-pkin(1) + t312) * t255;
t257 = sin(qJ(3));
t260 = cos(qJ(3));
t88 = t257 * t193 - t260 * t194;
t77 = pkin(3) * t440 + t88;
t373 = t88 / 0.2e1 - t77 / 0.2e1;
t492 = t373 * t256;
t259 = cos(qJ(4));
t491 = t373 * t259;
t441 = t255 * t258;
t202 = t257 * t441 - t459 * t260;
t99 = t259 * t202;
t339 = -t99 / 0.2e1;
t371 = t256 * t440;
t335 = t459 * t257;
t204 = t260 * t441 + t335;
t445 = t204 * t259;
t147 = -t371 + t445;
t452 = t147 * t260;
t490 = t257 * t339 + t452 / 0.2e1;
t435 = t256 * t257;
t342 = -t435 / 0.2e1;
t424 = t259 * t261;
t370 = t255 * t424;
t446 = t204 * t256;
t145 = t370 + t446;
t455 = t145 * t260;
t278 = t202 * t342 + t455 / 0.2e1;
t250 = t256 ^ 2;
t252 = t259 ^ 2;
t238 = t252 - t250;
t489 = t238 * qJD(3);
t479 = -t257 / 0.2e1;
t347 = t202 * t479;
t476 = t260 / 0.2e1;
t282 = t204 * t476 + t347;
t488 = t282 * qJD(3);
t383 = t260 * qJD(2);
t242 = t257 * t383;
t333 = qJD(1) * t282 + t242;
t389 = t202 * qJD(1);
t280 = -qJD(2) * t282 + t204 * t389;
t487 = t202 ^ 2;
t486 = t145 / 0.2e1;
t485 = -t147 / 0.2e1;
t231 = t259 * t441;
t175 = t260 * t371 - t231;
t484 = -t175 / 0.2e1;
t421 = t260 * t261;
t431 = t258 * t256;
t176 = (t259 * t421 + t431) * t255;
t483 = -t176 / 0.2e1;
t482 = -t202 / 0.2e1;
t481 = t202 / 0.2e1;
t480 = t231 / 0.2e1;
t478 = t257 / 0.2e1;
t477 = -t260 / 0.2e1;
t475 = t202 * pkin(8);
t474 = t257 * pkin(3);
t473 = t260 * pkin(8);
t472 = -qJD(4) / 0.2e1;
t471 = -t77 + t88;
t470 = t256 * t88;
t206 = (pkin(2) * t258 - pkin(7) * t261) * t255;
t198 = t257 * t206;
t205 = pkin(6) * t441 - t261 * t365;
t199 = t260 * t205;
t406 = t198 - t199;
t92 = pkin(8) * t441 + t406;
t469 = t256 * t92;
t468 = t259 * t88;
t467 = t259 * t92;
t192 = -t459 * pkin(2) + t205;
t311 = t202 * pkin(3) - t204 * pkin(8);
t262 = t192 + t311;
t89 = t260 * t193 + t257 * t194;
t78 = -pkin(8) * t440 + t89;
t27 = t256 * t78 - t259 * t262;
t121 = t204 * pkin(3) + t475;
t430 = t259 * t121;
t5 = t89 * t145 - t27 * t204 + (t471 * t256 + t430) * t202;
t466 = t5 * qJD(1);
t28 = t256 * t262 + t259 * t78;
t439 = t256 * t121;
t6 = t89 * t147 - t28 * t204 + (t471 * t259 - t439) * t202;
t465 = t6 * qJD(1);
t372 = t257 * t440;
t229 = -t473 + t474;
t122 = t328 + (pkin(6) + t229) * t440;
t429 = t259 * t122;
t48 = t429 - t469;
t422 = t260 * t206;
t433 = t257 * t205;
t301 = t422 + t433;
t91 = -pkin(3) * t441 - t301;
t7 = t91 * t145 + t77 * t175 + t48 * t202 - t27 * t372;
t464 = t7 * qJD(1);
t463 = t77 * t259;
t438 = t256 * t122;
t49 = t438 + t467;
t8 = t91 * t147 + t77 * t176 - t49 * t202 - t28 * t372;
t462 = t8 * qJD(1);
t461 = t91 * t256;
t460 = t91 * t259;
t13 = -t77 * t145 + t27 * t202;
t458 = qJD(1) * t13;
t14 = t77 * t147 - t28 * t202;
t457 = t14 * qJD(1);
t456 = t145 * t257;
t454 = t147 * t256;
t453 = t147 * t259;
t451 = t176 * t256;
t310 = -t260 * pkin(3) - t257 * pkin(8);
t294 = -pkin(2) + t310;
t425 = t259 * t260;
t380 = pkin(7) * t425;
t178 = t256 * t294 + t380;
t450 = t178 * t204;
t19 = -t192 * t372 - t207 * t202 + t301 * t440 + t88 * t441;
t449 = t19 * qJD(1);
t448 = t192 * t260;
t20 = t207 * t204 + (-t89 * t258 + (t406 + t448) * t261) * t255;
t447 = t20 * qJD(1);
t154 = t99 * t435;
t22 = t154 + (-t455 / 0.2e1 + t483) * t259 + (-t452 / 0.2e1 + t175 / 0.2e1) * t256;
t444 = t22 * qJD(1);
t249 = t255 ^ 2;
t254 = t261 ^ 2;
t443 = t249 * t254;
t442 = t249 * t258;
t437 = t256 * t145;
t436 = t256 * t229;
t434 = t256 * t260;
t432 = t257 * t259;
t428 = t259 * t145;
t427 = t259 * t229;
t251 = t257 ^ 2;
t426 = t259 * t251;
t423 = t260 * t202;
t35 = -t176 * t145 - t147 * t175;
t420 = t35 * qJD(1);
t302 = t428 + t454;
t38 = t302 * t202;
t419 = t38 * qJD(1);
t45 = -t192 * t202 - t88 * t440;
t418 = t45 * qJD(1);
t46 = -t192 * t204 - t89 * t440;
t417 = t46 * qJD(1);
t338 = t425 / 0.2e1;
t275 = t147 * t338 + t252 * t347;
t51 = -t451 / 0.2e1 + t275;
t416 = t51 * qJD(1);
t52 = t145 * t204 - t487 * t256;
t415 = t52 * qJD(1);
t53 = t147 * t204 - t487 * t259;
t414 = t53 * qJD(1);
t345 = -t440 / 0.2e1;
t320 = t256 * t345;
t341 = t432 / 0.2e1;
t54 = t480 + t202 * t341 + (t320 + t485) * t260;
t413 = t54 * qJD(1);
t337 = t424 / 0.2e1;
t272 = (t260 * t337 + t431 / 0.2e1) * t255;
t55 = t272 - t278;
t412 = t55 * qJD(1);
t58 = -t145 * t372 - t175 * t202;
t411 = t58 * qJD(1);
t59 = t147 * t372 + t176 * t202;
t410 = t59 * qJD(1);
t69 = -t204 * t257 - t423;
t82 = t69 * t440;
t409 = t82 * qJD(1);
t95 = t256 * t202;
t408 = t95 * qJD(1);
t407 = t99 * qJD(1);
t253 = t260 ^ 2;
t239 = t253 - t251;
t405 = qJD(1) * t147;
t404 = qJD(1) * t261;
t403 = qJD(2) * t255;
t402 = qJD(2) * t261;
t401 = qJD(3) * t256;
t400 = qJD(3) * t257;
t399 = qJD(3) * t259;
t398 = qJD(3) * t260;
t397 = qJD(4) * t256;
t396 = qJD(4) * t259;
t395 = qJD(4) * t260;
t135 = -t202 * t441 + t257 * t443;
t394 = t135 * qJD(1);
t136 = -t204 * t441 + t260 * t443;
t393 = t136 * qJD(1);
t392 = t145 * qJD(4);
t149 = t249 * pkin(1) * t261 - t205 * t459;
t391 = t149 * qJD(1);
t150 = -pkin(1) * t442 - t207 * t459;
t390 = t150 * qJD(1);
t388 = t202 * qJD(3);
t387 = t204 * qJD(3);
t213 = (-t258 ^ 2 + t254) * t249;
t386 = t213 * qJD(1);
t385 = t255 * qJD(3);
t384 = t257 * qJD(2);
t382 = pkin(7) * t434;
t245 = pkin(7) * t435;
t381 = pkin(7) * t432;
t379 = -pkin(2) * t204 / 0.2e1;
t378 = pkin(3) * t486;
t377 = pkin(3) * t485;
t376 = pkin(3) * t483;
t375 = pkin(7) * t485;
t374 = t475 / 0.2e1;
t369 = t256 * t423;
t368 = t259 * t423;
t367 = -t467 / 0.2e1;
t366 = t77 * t256 / 0.2e1;
t364 = t255 * t404;
t363 = t255 * t402;
t362 = t259 * t384;
t361 = t261 * t385;
t360 = t256 * t395;
t359 = t259 * t395;
t358 = t147 * t389;
t356 = t249 * t404;
t355 = t258 * t403;
t354 = t256 * t396;
t353 = t256 * t399;
t352 = t257 * t398;
t351 = t257 * t399;
t349 = t147 * t478;
t346 = t441 / 0.2e1;
t344 = t440 / 0.2e1;
t343 = -t439 / 0.2e1;
t340 = t430 / 0.2e1;
t336 = t198 / 0.2e1 - t199 / 0.2e1;
t334 = t459 * qJD(1);
t332 = t245 + t427;
t331 = pkin(7) * t344;
t330 = -qJD(4) - t389;
t329 = -qJD(4) + t383;
t327 = t402 * t442;
t326 = t258 * t356;
t325 = t260 * t364;
t324 = t256 * t362;
t323 = t256 * t351;
t322 = t257 * t345;
t321 = t257 * t344;
t319 = t256 * t344;
t318 = t255 * t337;
t315 = t374 + t121 / 0.2e1;
t314 = t255 * t334;
t313 = t459 * t403;
t309 = 0.2e1 * t324;
t308 = pkin(8) * t322;
t307 = -qJD(3) + t364;
t177 = -t259 * t294 + t382;
t268 = t177 * t204 / 0.2e1 + t332 * t482;
t289 = pkin(3) * t484 - t460 / 0.2e1;
t299 = pkin(8) * t345 - t89 / 0.2e1;
t1 = (t340 - pkin(7) * t145 / 0.2e1 + t492) * t260 + (t27 / 0.2e1 + (pkin(7) * t481 + t299) * t256) * t257 + t268 + t289;
t73 = t177 * t257 + (t332 - 0.2e1 * t245) * t260;
t306 = -t1 * qJD(1) - t73 * qJD(2);
t2 = t376 + t450 / 0.2e1 + (t91 / 0.2e1 + t229 * t481) * t256 + (t343 + t375 + t491) * t260 + (t28 / 0.2e1 + t299 * t259) * t257;
t74 = t229 * t434 + (-t178 + t380) * t257;
t305 = -t2 * qJD(1) + t74 * qJD(2);
t140 = -pkin(7) * t426 - t178 * t260;
t283 = -t469 / 0.2e1 + t429 / 0.2e1;
t284 = t178 * t481 + t28 * t477;
t9 = (t375 - t463 / 0.2e1) * t257 + t283 + t284;
t304 = t9 * qJD(1) + t140 * qJD(2);
t83 = -t204 ^ 2 + t487;
t303 = t83 * qJD(1) + t69 * qJD(2);
t300 = t334 + qJD(2);
t267 = t177 * t482 + t27 * t476 + pkin(7) * t456 / 0.2e1;
t10 = t367 + (-t122 / 0.2e1 + t77 * t478) * t256 + t267;
t139 = -t251 * pkin(7) * t256 - t177 * t260;
t298 = t10 * qJD(1) - t139 * qJD(2);
t220 = t239 * t256;
t30 = t369 + (t318 + t446 / 0.2e1 + t486) * t257;
t297 = -t30 * qJD(1) + t220 * qJD(2);
t221 = t259 * t253 - t426;
t29 = -t368 + (t319 - t445 / 0.2e1 + t485) * t257;
t296 = -t29 * qJD(1) - t221 * qJD(2);
t295 = t69 * qJD(1) + t239 * qJD(2);
t293 = t329 * t257;
t292 = t383 - t389;
t291 = qJD(1) * t204 + t384;
t290 = t473 / 0.2e1 - t474 / 0.2e1;
t200 = t260 * t346 + t335 / 0.2e1;
t288 = t200 * qJD(1) + t384 / 0.2e1;
t43 = t379 + (t331 - t206 / 0.2e1) * t260 + (t192 / 0.2e1 - t205 / 0.2e1) * t257;
t287 = pkin(2) * t384 - t43 * qJD(1);
t263 = pkin(2) * t481 + t448 / 0.2e1 + pkin(7) * t322;
t41 = t263 + t336;
t286 = pkin(2) * t383 - t41 * qJD(1);
t285 = t255 * t312;
t281 = -t428 / 0.2e1 - t454 / 0.2e1;
t279 = t257 * t472 + t333;
t277 = -t229 / 0.2e1 + t290;
t34 = (-t437 + t453) * t257;
t47 = t145 ^ 2 - t147 ^ 2;
t276 = t47 * qJD(1) - t34 * qJD(2) - qJD(3) * t302;
t143 = t277 * t256;
t15 = t315 * t256 + t378 - t491;
t274 = pkin(3) * t399 - t15 * qJD(1) + t143 * qJD(2);
t144 = t277 * t259;
t17 = -t315 * t259 + t377 - t492;
t273 = pkin(3) * t401 - t17 * qJD(1) - t144 * qJD(2);
t61 = t281 * t257;
t63 = -t437 / 0.2e1 + t453 / 0.2e1;
t271 = -t61 * qJD(2) - t63 * qJD(3) + t145 * t405;
t208 = (t250 / 0.2e1 - t252 / 0.2e1) * t257;
t270 = t63 * qJD(1) - t208 * qJD(2) + t353;
t269 = t200 * qJD(4) + t280;
t266 = t256 * qJD(2) * t426 - t61 * qJD(1) + t208 * qJD(3);
t219 = t238 * t251;
t265 = t34 * qJD(1) + t219 * qJD(2) + 0.2e1 * t323;
t264 = qJD(1) * t302 + t309 - t489;
t247 = t400 / 0.2e1;
t230 = qJD(2) * t346;
t224 = -0.2e1 * t257 * t354;
t201 = t208 * qJD(4);
t195 = (t356 - t385 / 0.2e1) * t258;
t142 = qJD(2) * t321 + t200 * qJD(3);
t120 = t245 + t427 / 0.2e1 + t290 * t259;
t119 = t381 - t436 / 0.2e1 - t290 * t256;
t64 = t69 * qJD(3);
t62 = t63 * qJD(4);
t60 = t61 * qJD(4);
t57 = t260 * t320 + t480 + t490;
t56 = t272 + t278;
t50 = t451 / 0.2e1 + t275;
t44 = t260 * t331 + t379 + t192 * t478 + t433 / 0.2e1 + t422 / 0.2e1;
t42 = t263 - t336;
t36 = t302 * qJD(4);
t33 = t34 * qJD(4);
t32 = t204 * t341 + t257 * t319 + t349 + t368;
t31 = -t369 + t204 * t342 - t456 / 0.2e1 + t257 * t318;
t21 = t154 + t256 * t484 + t176 * t259 / 0.2e1 + t281 * t260;
t18 = pkin(8) * t339 + t377 + t366 + t470 / 0.2e1 + t340;
t16 = t256 * t374 + t378 + t463 / 0.2e1 + t468 / 0.2e1 + t343;
t12 = pkin(7) * t349 + t77 * t341 + t283 - t284;
t11 = t77 * t342 + t367 - t438 / 0.2e1 - t267;
t4 = (-t381 + t436) * t482 - t450 / 0.2e1 + (t439 - t468) * t476 + t28 * t479 + t89 * t341 + t77 * t338 + t259 * t308 + t376 + t461 / 0.2e1 + t490 * pkin(7);
t3 = (t430 + t470) * t477 + t27 * t479 + t89 * t435 / 0.2e1 + t260 * t366 + t256 * t308 - t268 + t289 + t278 * pkin(7);
t23 = [0, 0, 0, t327, t213 * qJD(2), t261 * t313, -t258 * t313, 0, t150 * qJD(2), -t149 * qJD(2), (t260 * t363 - t388) * t204, t82 * qJD(2) + t83 * qJD(3), -t136 * qJD(2) + t202 * t361, t135 * qJD(2) + t204 * t361, -t327, -t19 * qJD(2) - t46 * qJD(3), t20 * qJD(2) + t45 * qJD(3), (qJD(2) * t176 - t259 * t388 - t392) * t147, t35 * qJD(2) + t38 * qJD(3) + t47 * qJD(4), t59 * qJD(2) + t53 * qJD(3) - t202 * t392, -t147 * t202 * qJD(4) + t58 * qJD(2) - t52 * qJD(3), (t257 * t363 + t387) * t202, qJD(2) * t7 + qJD(3) * t5 + qJD(4) * t14, qJD(2) * t8 + qJD(3) * t6 + qJD(4) * t13; 0, 0, 0, t326, t386, t300 * t440, -t300 * t441, 0, -t207 * qJD(2) + t390, t205 * qJD(2) - t391, t255 * t291 * t421 + t488, t239 * t363 + t409 + t64, t257 * t355 - t393, t260 * t355 + t394, -t195, -t449 + (-t207 * t260 + t257 * t285) * qJD(2) + t44 * qJD(3), t447 + (t207 * t257 + t260 * t285) * qJD(2) + t42 * qJD(3), t50 * qJD(3) + t60 + (t362 + t405) * t176, t420 + t21 * qJD(3) - t33 + (-t175 * t259 - t451) * t384, t410 + (-t176 * t260 + t251 * t370) * qJD(2) + t32 * qJD(3) + t56 * qJD(4), t411 + (t175 * t260 - t251 * t371) * qJD(2) + t31 * qJD(3) + t57 * qJD(4), -t488 + (qJD(4) / 0.2e1 - t292) * t372, -t48 * t383 + t464 + t3 * qJD(3) + t12 * qJD(4) + (pkin(7) * t175 - t177 * t440 + t461) * t384, t49 * t383 + t462 + t4 * qJD(3) + t11 * qJD(4) + (pkin(7) * t176 - t178 * t440 + t460) * t384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t280, t303, t307 * t202, t307 * t204, t230, t44 * qJD(2) - t89 * qJD(3) - t417, t42 * qJD(2) + t88 * qJD(3) + t418, t50 * qJD(2) + t62 + (-t401 - t405) * t99, t21 * qJD(2) - t238 * t388 - t36 + t419, t32 * qJD(2) + t256 * t387 + t414, t31 * qJD(2) + t259 * t387 - t415, t269, t466 + t3 * qJD(2) + (t256 * t311 - t89 * t259) * qJD(3) + t18 * qJD(4), t465 + t4 * qJD(2) + (t89 * t256 + t259 * t311) * qJD(3) + t16 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t271, t276, t56 * qJD(2) + t145 * t330, t57 * qJD(2) + t147 * t330, t142, t12 * qJD(2) + t18 * qJD(3) - t28 * qJD(4) + t457, qJD(2) * t11 + qJD(3) * t16 + qJD(4) * t27 + t458; 0, 0, 0, -t326, -t386, -t261 * t314, t258 * t314, 0, -t390, t391, -t204 * t325 + t488, t64 - t409, -t260 * t361 + t393, t257 * t361 - t394, t195, t43 * qJD(3) + t449, t41 * qJD(3) - t447, t51 * qJD(3) - t176 * t405 + t60, t22 * qJD(3) - t33 - t420, -t29 * qJD(3) - t55 * qJD(4) - t410, -t30 * qJD(3) - t54 * qJD(4) - t411, -t488 + (-t389 + t472) * t372, -qJD(3) * t1 - qJD(4) * t9 - t464, -qJD(3) * t2 - qJD(4) * t10 - t462; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t352, t239 * qJD(3), 0, 0, 0, -pkin(2) * t400, -pkin(2) * t398, -t251 * t354 + t252 * t352, -t219 * qJD(4) - 0.2e1 * t260 * t323, -t221 * qJD(3) + t257 * t360, t220 * qJD(3) + t257 * t359, -t352, -t73 * qJD(3) - t140 * qJD(4), t74 * qJD(3) + t139 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t333, t295, -t307 * t260, t307 * t257, -qJD(1) * t441 / 0.2e1, -pkin(7) * t398 - t287, pkin(7) * t400 - t286, t416 - t201 + (t252 * t384 + t353) * t260, t444 + t224 + (-0.2e1 * t324 + t489) * t260, t256 * t400 + t296, t297 + t351, -t279, (t256 * t310 - t380) * qJD(3) + t120 * qJD(4) + t306, (t259 * t310 + t382) * qJD(3) + t119 * qJD(4) + t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t266, -t265, t256 * t293 - t412, t259 * t293 - t413, qJD(1) * t322 + t247, t120 * qJD(3) - t178 * qJD(4) - t304, t119 * qJD(3) + t177 * qJD(4) - t298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t280, -t303, t292 * t440, -t291 * t440, t230, -t43 * qJD(2) + t417, -t41 * qJD(2) - t418, -t51 * qJD(2) + t259 * t358 + t62, -t22 * qJD(2) - t36 - t419, t29 * qJD(2) + t99 * qJD(4) - t414, t30 * qJD(2) - t95 * qJD(4) + t415, -t269, qJD(2) * t1 + qJD(4) * t17 - t466, qJD(2) * t2 + qJD(4) * t15 - t465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t333, -t295, t325, -t257 * t364, qJD(1) * t346, t287, t286, -t242 * t252 - t201 - t416, t260 * t309 + t224 - t444, -t296 - t359, -t297 + t360, t279, t144 * qJD(4) - t306, -t143 * qJD(4) - t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t354, t238 * qJD(4), 0, 0, 0, -pkin(3) * t397, -pkin(3) * t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t270, -t264, -t259 * t329 + t407, t256 * t329 - t408, -t288, -pkin(8) * t396 - t273, pkin(8) * t397 - t274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t271, -t276, t55 * qJD(2) - t99 * qJD(3) + t145 * t389, t54 * qJD(2) + t95 * qJD(3) + t358, t142, qJD(2) * t9 - qJD(3) * t17 - t457, qJD(2) * t10 - qJD(3) * t15 - t458; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t266, t265, t412 + (-t256 * t384 + t399) * t260, t413 + (-t362 - t401) * t260, qJD(1) * t321 + t247, -t144 * qJD(3) + t304, t143 * qJD(3) + t298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t270, t264, t259 * t383 - t407, -t256 * t383 + t408, t288, t273, t274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t23;