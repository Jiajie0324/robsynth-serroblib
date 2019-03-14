% Calculate minimal parameter regressor of coriolis matrix for
% S6RRPPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x30]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:48
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRPPRR1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:48:16
% EndTime: 2019-03-09 08:48:28
% DurationCPUTime: 9.90s
% Computational Cost: add. (6867->431), mult. (13381->584), div. (0->0), fcn. (15778->8), ass. (0->337)
t277 = sin(qJ(6));
t278 = sin(qJ(5));
t276 = sin(pkin(10));
t279 = sin(qJ(2));
t281 = cos(qJ(2));
t469 = cos(pkin(10));
t248 = -t276 * t279 + t281 * t469;
t485 = -qJ(3) - pkin(7);
t259 = t485 * t281;
t342 = t469 * t259;
t258 = t485 * t279;
t446 = t276 * t258;
t515 = -t342 + t446;
t516 = -pkin(8) * t248 + t515;
t532 = t278 * t516;
t218 = t469 * t258 + t276 * t259;
t249 = t276 * t281 + t279 * t469;
t153 = pkin(8) * t249 + t218;
t491 = cos(qJ(5));
t547 = t491 * t153;
t553 = t547 + t532;
t556 = t553 * t277;
t63 = t556 / 0.2e1;
t64 = -t556 / 0.2e1;
t560 = t63 + t64;
t280 = cos(qJ(6));
t555 = t553 * t280;
t65 = t555 / 0.2e1;
t66 = -t555 / 0.2e1;
t559 = t65 + t66;
t530 = t491 * t516;
t550 = t278 * t153;
t72 = t530 - t550;
t558 = t277 * t72;
t557 = t280 * t72;
t375 = qJD(2) - qJD(5);
t504 = -t547 / 0.2e1;
t273 = qJD(6) * t280;
t519 = t491 * t248 + t278 * t249;
t531 = t280 * t519;
t536 = t531 / 0.2e1;
t540 = 0.2e1 * t536;
t541 = t540 * qJD(1);
t554 = t273 + t541;
t450 = t519 ^ 2;
t365 = t491 * t249;
t437 = t278 * t248;
t302 = t365 - t437;
t535 = t302 ^ 2;
t374 = t535 - t450;
t548 = t374 * t280;
t552 = qJD(1) * t548;
t549 = t374 * t277;
t551 = qJD(1) * t549;
t533 = t277 * t302;
t183 = -t533 / 0.2e1;
t184 = t533 / 0.2e1;
t539 = t184 + t183;
t546 = qJD(2) * t539;
t537 = -t531 / 0.2e1;
t538 = t536 + t537;
t545 = qJD(6) * t538;
t544 = qJD(6) * t540;
t543 = t374 * qJD(1);
t542 = t539 * qJD(3);
t205 = t365 / 0.2e1 - t437 / 0.2e1;
t526 = t302 * qJD(1);
t358 = t519 * t526;
t300 = qJD(6) * t205 + t358;
t331 = t530 / 0.2e1;
t487 = t302 * pkin(5);
t488 = t519 * pkin(9);
t115 = t487 + t488;
t500 = t302 / 0.2e1;
t534 = t519 / 0.2e1;
t489 = pkin(9) * t302;
t405 = qJD(5) * t519;
t308 = qJD(2) * t519 - t405;
t408 = qJD(3) * t302;
t529 = qJD(3) * t519;
t527 = t205 * qJD(1);
t247 = t249 ^ 2;
t518 = t248 ^ 2 + t247;
t525 = t518 * qJD(1);
t524 = t519 * qJD(1);
t404 = qJD(5) * t302;
t523 = qJD(2) * t302 - t404;
t522 = qJD(3) * t518;
t521 = 0.2e1 * t302;
t497 = -t342 / 0.2e1;
t267 = pkin(2) * t276 + qJ(4);
t269 = -pkin(2) * t469 - pkin(3);
t318 = -pkin(4) + t269;
t228 = t267 * t278 - t491 * t318;
t225 = pkin(5) + t228;
t274 = t277 ^ 2;
t275 = t280 ^ 2;
t262 = t275 - t274;
t520 = t262 * t375;
t502 = -t519 / 0.2e1;
t329 = t491 * t502;
t366 = t491 * t519;
t494 = -t278 / 0.2e1;
t517 = -t302 * t494 + t329 - t366 / 0.2e1;
t313 = -t218 * t249 + t248 * t515;
t514 = qJD(1) * t313;
t512 = qJD(3) * t313;
t511 = qJD(5) * t539;
t334 = 0.2e1 * t183;
t510 = qJD(5) * t334;
t507 = 0.2e1 * t225;
t442 = t277 * t280;
t361 = qJD(1) * t442;
t346 = t274 / 0.2e1 - t275 / 0.2e1;
t92 = t346 * t302;
t506 = -t361 * t535 + t375 * t92;
t499 = -t225 / 0.2e1;
t498 = -t249 / 0.2e1;
t496 = -t277 / 0.2e1;
t493 = t278 / 0.2e1;
t492 = t280 / 0.2e1;
t486 = t279 * pkin(2);
t484 = qJD(2) * pkin(2);
t370 = -pkin(2) * t281 - pkin(1);
t306 = t249 * qJ(4) - t370;
t136 = (pkin(3) + pkin(4)) * t248 + t306;
t327 = pkin(5) * t519 - t489;
t284 = t136 + t327;
t19 = -t280 * t284 + t558;
t296 = t302 * t72;
t242 = t248 * qJ(4);
t243 = t249 * pkin(3);
t206 = -t242 + t243 + t486;
t137 = -pkin(4) * t249 - t206;
t44 = t137 - t115;
t1 = t19 * t302 - t277 * t296 + t44 * t531;
t483 = t1 * qJD(1);
t20 = t277 * t284 + t557;
t444 = t277 * t519;
t2 = t20 * t302 - t280 * t296 - t44 * t444;
t482 = t2 * qJD(1);
t3 = (-t19 + t558) * t302 + t115 * t531;
t477 = t3 * qJD(1);
t229 = t267 * t491 + t278 * t318;
t226 = -pkin(9) + t229;
t347 = t228 / 0.2e1 + t499;
t285 = (-t226 / 0.2e1 + t229 / 0.2e1) * t302 + t347 * t519;
t282 = -t489 / 0.2e1 + pkin(5) * t534 + t285;
t5 = t277 * t282;
t476 = t5 * qJD(1);
t8 = t280 * t282;
t471 = t8 * qJD(1);
t304 = t226 * t534 + t302 * t499;
t292 = t44 / 0.2e1 + t304;
t9 = t292 * t277 + t559;
t470 = t9 * qJD(1);
t13 = t19 * t519 - t533 * t553;
t468 = qJD(1) * t13;
t432 = t280 * t302;
t14 = -t20 * t519 + t432 * t553;
t467 = qJD(1) * t14;
t26 = -t136 * t302 + t137 * t519;
t466 = qJD(1) * t26;
t27 = t136 * t519 + t137 * t302;
t465 = qJD(1) * t27;
t317 = -t450 - t535;
t37 = t317 * t277;
t462 = qJD(1) * t37;
t39 = t317 * t280;
t460 = qJD(1) * t39;
t201 = -t248 * pkin(3) - t306;
t49 = t201 * t249 - t206 * t248;
t457 = qJD(1) * t49;
t50 = -t201 * t248 - t206 * t249;
t456 = qJD(1) * t50;
t82 = (t534 + t502) * t442;
t453 = qJD(1) * t82;
t11 = -t292 * t280 + t560;
t452 = t11 * qJD(1);
t21 = t331 - t530 / 0.2e1;
t449 = t21 * qJD(1);
t22 = t504 + t547 / 0.2e1;
t448 = t22 * qJD(1);
t25 = t201 * t206;
t447 = t25 * qJD(1);
t348 = -t302 / 0.2e1 + t500;
t283 = t329 + t366 / 0.2e1 - t348 * t278;
t30 = t283 * t277;
t430 = t30 * qJD(1);
t32 = t283 * t280;
t429 = t32 * qJD(1);
t45 = t370 * t486;
t427 = t45 * qJD(1);
t294 = t491 * t500 + t493 * t519;
t288 = t249 / 0.2e1 + t294;
t51 = t288 * t277;
t425 = t51 * qJD(1);
t54 = t288 * t280;
t424 = t54 * qJD(1);
t349 = t302 * t493;
t160 = t280 * t349;
t80 = t432 * t494 + t160;
t423 = t80 * qJD(1);
t303 = -t267 * t248 / 0.2e1 + t269 * t498;
t270 = t486 / 0.2e1;
t332 = t270 - t242 / 0.2e1 + t243 / 0.2e1;
t83 = t303 + t332;
t422 = t83 * qJD(1);
t421 = t92 * qJD(1);
t420 = t92 * qJD(6);
t419 = t539 * qJD(1);
t418 = t334 * qJD(1);
t95 = 0.2e1 * t184;
t417 = t95 * qJD(1);
t97 = 0.2e1 * t534 * t277;
t89 = t97 * qJD(1);
t186 = -t444 / 0.2e1;
t99 = 0.2e1 * t186;
t416 = t99 * qJD(1);
t413 = qJD(1) * t281;
t410 = qJD(2) * t277;
t409 = qJD(2) * t280;
t407 = qJD(4) * t249;
t406 = qJD(4) * t278;
t403 = qJD(5) * t277;
t402 = qJD(5) * t280;
t401 = qJD(6) * t277;
t103 = t348 * t280;
t400 = t103 * qJD(1);
t104 = 0.2e1 * t500 * t280;
t399 = t104 * qJD(1);
t108 = 0.2e1 * t537;
t397 = t108 * qJD(1);
t114 = t262 * t535;
t395 = t114 * qJD(1);
t293 = t276 * t248 / 0.2e1 + t469 * t498;
t148 = (-t279 / 0.2e1 + t293) * pkin(2);
t392 = t148 * qJD(1);
t384 = t247 * qJD(1);
t383 = t248 * qJD(1);
t382 = t248 * qJD(2);
t381 = t249 * qJD(1);
t380 = t262 * qJD(6);
t263 = -t279 ^ 2 + t281 ^ 2;
t379 = t263 * qJD(1);
t378 = t278 * qJD(2);
t377 = t279 * qJD(2);
t376 = t281 * qJD(2);
t373 = pkin(1) * t279 * qJD(1);
t372 = pkin(1) * t413;
t364 = t136 * t524;
t363 = t136 * t526;
t362 = t275 * t526;
t360 = t519 * t407;
t359 = qJD(6) * t519 * t302;
t357 = t302 * t524;
t356 = t519 * t381;
t355 = t302 * t381;
t354 = t248 * t381;
t265 = t277 * t273;
t353 = t279 * t413;
t352 = t280 * t526;
t351 = t444 / 0.2e1;
t350 = t519 * t496;
t345 = qJD(6) * t491;
t344 = t491 * qJD(2);
t343 = t491 * qJD(4);
t341 = t375 * t277;
t340 = t375 * t280;
t339 = t277 * t356;
t338 = t280 * t356;
t337 = t302 * t265;
t335 = t302 * t361;
t328 = -pkin(5) / 0.2e1 + t347;
t326 = -t104 * qJD(5) + t302 * t409;
t324 = -0.2e1 * t335;
t323 = 0.2e1 * t335;
t322 = t280 * t341;
t321 = t277 * t340;
t4 = (-t20 + t557) * t302 - t115 * t444;
t319 = t4 * qJD(1) + t80 * qJD(4);
t315 = t225 * t519 + t226 * t302;
t312 = t302 * (-qJD(6) - t524);
t215 = t497 + t342 / 0.2e1;
t311 = qJD(1) * t215 + qJD(2) * t267;
t310 = qJD(2) * t229 + t406;
t307 = qJD(5) * t229 + t406;
t305 = t488 / 0.2e1 + t487 / 0.2e1;
t299 = qJD(2) * t225 - t343;
t298 = t308 * t302;
t297 = t115 / 0.2e1 + t305;
t257 = -qJD(5) * t491 + t344;
t130 = t328 * t277;
t17 = -t280 * t297 + t560;
t290 = pkin(5) * t403 - qJD(1) * t17 + qJD(2) * t130;
t131 = t328 * t280;
t15 = t277 * t297 + t559;
t289 = pkin(5) * t402 - qJD(1) * t15 + qJD(2) * t131;
t264 = t277 * t378;
t287 = -t278 * t403 + t280 * t345 + t264;
t266 = t280 * t378;
t286 = -t277 * t345 - t278 * t402 + t266;
t256 = t375 * t278;
t155 = 0.2e1 * t497 + t446;
t150 = -0.2e1 * t337;
t149 = 0.2e1 * t337;
t147 = pkin(2) * t293 + t270;
t133 = t507 * t492;
t132 = t507 * t277 / 0.2e1;
t117 = t324 - t520;
t116 = t323 + t520;
t113 = t375 * t205;
t100 = t186 + t351;
t98 = t351 + t350;
t91 = t103 * qJD(5);
t88 = t98 * qJD(6);
t87 = t97 * qJD(6);
t84 = -t303 + t332;
t81 = t540 * t277;
t76 = t80 * qJD(5);
t74 = t401 + t89;
t68 = -t322 - t421;
t67 = t321 + t421;
t53 = t249 * t492 - t280 * t294;
t52 = t249 * t496 + t277 * t294;
t35 = t274 * t502 + t275 * t534 - t346 * t519;
t33 = t280 * t517 + t160;
t31 = (t349 + t517) * t277;
t24 = 0.2e1 * t331 - t550;
t23 = -t532 + 0.2e1 * t504;
t18 = t115 * t492 - t280 * t305 + 0.2e1 * t63;
t16 = t115 * t496 + t277 * t305 + 0.2e1 * t65;
t12 = -t304 * t280 + t44 * t492 + 0.2e1 * t64;
t10 = t304 * t277 + t44 * t496 + 0.2e1 * t66;
t7 = -t558 + pkin(5) * t537 + (t489 / 0.2e1 + t285) * t280;
t6 = pkin(5) * t350 + pkin(9) * t184 + t285 * t277 + t557;
t28 = [0, 0, 0, t279 * t376, t263 * qJD(2), 0, 0, 0, -pkin(1) * t377, -pkin(1) * t376, t522, qJD(2) * t45 + t512, qJD(2) * t49 + t248 * t407, t522, qJD(2) * t50 + qJD(4) * t247, qJD(2) * t25 - t201 * t407 + t512, t298, t375 * t374, 0, 0, 0, qJD(2) * t26 + t136 * t404 + t360, qJD(2) * t27 - t136 * t405 + t302 * t407, -t265 * t535 + t275 * t298, -0.2e1 * t277 * t308 * t432 - t114 * qJD(6), -t277 * t359 - t375 * t548, -t280 * t359 + t375 * t549, -t523 * t519, qJD(2) * t1 + qJD(3) * t37 + qJD(5) * t3 + qJD(6) * t14 + t280 * t360, qJD(2) * t2 + qJD(3) * t39 + qJD(5) * t4 + qJD(6) * t13 - t277 * t360; 0, 0, 0, t353, t379, t376, -t377, 0, -pkin(7) * t376 - t373, pkin(7) * t377 - t372 (-t248 * t469 - t249 * t276) * t484, t427 + (t218 * t276 - t469 * t515) * t484 + t147 * qJD(3), -qJD(2) * t515 + t457 (t248 * t269 - t249 * t267) * qJD(2) + qJD(4) * t248, qJD(2) * t218 + t456, t447 + (t218 * t267 + t269 * t515) * qJD(2) + t84 * qJD(3) + t155 * qJD(4), t357, t543, -t308, -t523, 0, -qJD(2) * t72 + qJD(5) * t24 + t466, qJD(2) * t553 + qJD(5) * t23 + t465, qJD(5) * t81 + t420 + (-t277 * t409 + t362) * t519, t35 * qJD(5) + t149 + (-qJD(2) * t262 + t324) * t519, t302 * t410 + t510 + t545 - t552, t326 + t88 + t551, -t300, t483 + (t277 * t315 - t557) * qJD(2) + t31 * qJD(4) + t6 * qJD(5) + t12 * qJD(6), t482 + (t280 * t315 + t558) * qJD(2) + t542 + t33 * qJD(4) + t7 * qJD(5) + t10 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t525, qJD(2) * t147 + t514, 0, t525, 0, qJD(2) * t84 + t514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t88 - t91 + t462, t460 + t511 + t545 + t546; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t354, t382, t384, qJD(2) * t155 - t201 * t381, 0, 0, 0, 0, 0, t356, t355, 0, 0, 0, 0, 0, qJD(2) * t31 + qJD(6) * t53 + t338, qJD(2) * t33 + qJD(6) * t52 - t339 + t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t358, -t543, t308, t523, 0, qJD(2) * t24 - qJD(5) * t72 + t363, qJD(2) * t23 + qJD(5) * t553 - t364, qJD(2) * t81 - t420 + (-t277 * t402 - t362) * t519, t35 * qJD(2) + t150 + (-qJD(5) * t262 + t323) * t519, qJD(2) * t334 + t302 * t403 + t545 + t552, -qJD(2) * t104 + qJD(6) * t100 + t302 * t402 - t551, t300, t477 + t6 * qJD(2) - t103 * qJD(3) + (t277 * t327 - t557) * qJD(5) + t18 * qJD(6), t7 * qJD(2) + t542 + (t280 * t327 + t558) * qJD(5) + t16 * qJD(6) + t319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t506, t321 * t521 - t395, t277 * t312 + (qJD(2) + qJD(5)) * t538, t98 * qJD(2) + t100 * qJD(5) + t280 * t312, -t113, qJD(2) * t12 + qJD(3) * t98 + qJD(4) * t53 + qJD(5) * t18 - qJD(6) * t20 + t467, qJD(2) * t10 + qJD(3) * t538 + qJD(4) * t52 + qJD(5) * t16 + qJD(6) * t19 + t468; 0, 0, 0, -t353, -t379, 0, 0, 0, t373, t372, 0, qJD(3) * t148 - t427, -qJD(3) * t249 - t457, 0, qJD(3) * t248 - t456, -qJD(3) * t83 + qJD(4) * t215 - t447, -t357, -t543, 0, 0, 0, -qJD(5) * t21 - t408 - t466, qJD(5) * t22 - t465 + t529, qJD(5) * t82 - t275 * t357 + t420, t323 * t519 + t149, qJD(6) * t108 - t511 + t552, t87 - t91 - t551, t300, -qJD(4) * t30 + qJD(5) * t5 + qJD(6) * t11 - t280 * t408 - t483, qJD(3) * t95 - qJD(4) * t32 + qJD(5) * t8 + qJD(6) * t9 - t482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t267 * qJD(4), 0, 0, 0, 0, 0, t307, -t228 * qJD(5) + t343, t265, t380, 0, 0, 0, -t225 * t401 + t280 * t307, -t225 * t273 - t277 * t307; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t392, -t381, 0, t383, -t422, 0, 0, 0, 0, 0, -t526, t524, 0, 0, 0, 0, 0, -t352, t417; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t311, 0, 0, 0, 0, 0, t378, t344, 0, 0, 0, 0, 0, t266 - t430, -t264 - t429; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229 * t375 - t449, -t228 * t375 + t448, -t265 + t453, -t380, -t419, -t400, 0, t132 * qJD(6) + t229 * t340 + t476, t133 * qJD(6) - t229 * t341 + t471; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, t116, -t273 + t397, t74, t527, qJD(5) * t132 - t225 * t410 - t226 * t273 + t452, qJD(5) * t133 - t225 * t409 + t226 * t401 + t470; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t525, -qJD(2) * t148 - t514, t249 * qJD(2), -t525, -t382, qJD(2) * t83 - t407 - t514, 0, 0, 0, 0, 0, t523, -t308, 0, 0, 0, 0, 0, t326 + t87 - t462, -qJD(2) * t95 - t460 - t510 + t544; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t392, t381, 0, -t383, t422, 0, 0, 0, 0, 0, t526, -t524, 0, 0, 0, 0, 0, t352, -t417; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t526, t524, 0, 0, 0, 0, 0, -t399, -t418; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74, t554; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t354, 0, -t384, -t215 * qJD(2) + (qJD(1) * t201 + qJD(3)) * t249, 0, 0, 0, 0, 0, -t356, -t355, 0, 0, 0, 0, 0, qJD(2) * t30 - qJD(6) * t54 - t338, qJD(2) * t32 + qJD(6) * t51 + t339 + t76; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t311, 0, 0, 0, 0, 0, -t256, -t257, 0, 0, 0, 0, 0, -t286 + t430, t287 + t429; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t256, t257, 0, 0, 0, 0, 0, t286, -t287 + t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t257 * t277 - t273 * t278 - t424, t257 * t280 + t278 * t401 + t425; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t358, t543, 0, 0, 0, qJD(2) * t21 - t363 + t408, -qJD(2) * t22 + t364 - t529, -qJD(2) * t82 + t275 * t358 - t420, t324 * t519 + t150, -t552 + t544 + t546, qJD(2) * t103 + qJD(6) * t99 + t551, -t300, -qJD(2) * t5 + qJD(3) * t104 + qJD(6) * t17 - t477, -qJD(2) * t8 + qJD(3) * t334 + qJD(6) * t15 - t319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t310 + t449, t228 * qJD(2) - t343 - t448, -t265 - t453, -t380, t419, t400, 0, -t130 * qJD(6) - t280 * t310 - t476, -t131 * qJD(6) + t277 * t310 - t471; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t526, -t524, 0, 0, 0, 0, 0, t399, t418; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t378, -t344, 0, 0, 0, 0, 0, -t266, t264 - t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t265, t380, 0, 0, 0, -pkin(5) * t401, -pkin(5) * t273; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, t117, t554, -t401 + t416, -t527, -pkin(9) * t273 - t290, pkin(9) * t401 - t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t506, -t322 * t521 + t395, -qJD(2) * t108 - qJD(5) * t540 + t277 * t358, -qJD(2) * t97 - qJD(5) * t99 + t280 * t358, -t113, -qJD(2) * t11 - qJD(3) * t97 + qJD(4) * t54 - qJD(5) * t17 - t467, -qJD(2) * t9 - qJD(3) * t540 - qJD(4) * t51 - qJD(5) * t15 - t468; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, t117, -t397, -t89, -t527, t130 * qJD(5) + t277 * t299 - t452, t131 * qJD(5) + t280 * t299 - t470; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t89, -t541; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t277 * t344 + t424, -t280 * t344 - t425; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, t116, -t541, -t416, t527, t290, t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t28;