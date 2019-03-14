% Calculate inertial parameters regressor of coriolis matrix for
% S6PRPRPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:45
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRPRPR5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRPR5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:45:10
% EndTime: 2019-03-08 19:45:22
% DurationCPUTime: 8.34s
% Computational Cost: add. (6985->408), mult. (15772->557), div. (0->0), fcn. (18395->10), ass. (0->332)
t326 = sin(qJ(6));
t323 = sin(pkin(11));
t528 = cos(qJ(4));
t429 = t528 * t323;
t325 = cos(pkin(11));
t327 = sin(qJ(4));
t489 = t327 * t325;
t297 = t429 + t489;
t324 = sin(pkin(6));
t330 = cos(qJ(2));
t493 = t324 * t330;
t239 = t297 * t493;
t329 = cos(qJ(6));
t486 = t329 * t239;
t328 = sin(qJ(2));
t494 = t324 * t328;
t207 = -t326 * t494 + t486;
t491 = t326 * t239;
t208 = t329 * t494 + t491;
t529 = t326 / 0.2e1;
t482 = t208 * t529 + t207 * t329 / 0.2e1;
t521 = cos(pkin(6));
t269 = t323 * t521 + t325 * t494;
t347 = t323 * t494 - t325 * t521;
t204 = t269 * t327 + t347 * t528;
t193 = t326 * t204;
t391 = t329 * t493 - t193;
t487 = t329 * t204;
t164 = t326 * t493 + t487;
t534 = -t164 / 0.2e1;
t545 = (-t391 * t329 / 0.2e1 + t326 * t534) * t297;
t29 = t545 + t482;
t562 = qJD(2) * t29;
t561 = t29 * qJD(1);
t30 = t545 - t482;
t560 = t30 * qJD(2);
t344 = t327 * t347;
t430 = t528 * t269;
t205 = t430 - t344;
t314 = t528 * t325;
t490 = t327 * t323;
t295 = -t314 + t490;
t533 = -t295 / 0.2e1;
t158 = t205 * t533;
t414 = t494 / 0.2e1;
t508 = t204 * t297;
t544 = t158 + t508 / 0.2e1 + t414;
t495 = t324 ^ 2 * t328;
t305 = t490 * t493;
t400 = t528 * t493;
t384 = t325 * t400;
t240 = t384 - t305;
t507 = t205 * t240;
t68 = -t204 * t239 + t330 * t495 - t507;
t554 = t68 * qJD(1);
t559 = t544 * qJD(3) - t554;
t415 = -t494 / 0.2e1;
t357 = t415 + t158;
t342 = -t508 / 0.2e1 - t357;
t558 = -qJD(3) * t342 + t554;
t557 = qJD(2) * t68;
t535 = pkin(4) + pkin(9);
t556 = t295 * t535;
t524 = pkin(8) + qJ(3);
t405 = t524 * t325;
t406 = t524 * t323;
t236 = t327 * t405 + t528 * t406;
t345 = t297 * pkin(5) + t236;
t511 = t326 * t345;
t555 = t329 * t345;
t216 = t326 * t297;
t447 = t216 * qJD(2);
t460 = qJD(6) * t326;
t553 = t447 + t460;
t536 = t297 ^ 2;
t537 = t295 ^ 2;
t543 = t536 + t537;
t552 = qJD(3) * t543;
t542 = t537 - t536;
t551 = t542 * qJD(2);
t550 = t542 * qJD(4);
t549 = t543 * qJD(2);
t548 = t544 * qJD(2);
t220 = t329 * t295;
t404 = 0.2e1 * t326 * t220;
t321 = t326 ^ 2;
t322 = t329 ^ 2;
t530 = t322 / 0.2e1;
t407 = t530 + t321 / 0.2e1;
t546 = t205 * t407;
t315 = -t325 * pkin(3) - pkin(2);
t496 = t297 * qJ(5);
t366 = t315 - t496;
t165 = t366 + t556;
t92 = t165 * t326 - t555;
t93 = t329 * t165 + t511;
t28 = (t326 * t92 + t93 * t329) * t297;
t368 = t528 * t405;
t392 = t327 * t406;
t237 = t368 - t392;
t374 = t236 * t297 - t237 * t295;
t540 = qJD(3) * t374;
t539 = t342 * qJD(2);
t523 = t329 * t92;
t538 = -t523 / 0.2e1 - t345 / 0.2e1;
t372 = qJD(1) * t342 - qJD(2) * t374;
t532 = -t297 / 0.2e1;
t527 = pkin(4) * t295;
t526 = pkin(4) * t297;
t525 = t295 * pkin(5);
t522 = t93 * t326;
t520 = qJ(5) * t295;
t215 = t366 + t527;
t223 = t520 + t526;
t98 = -t215 * t297 - t223 * t295;
t519 = qJD(2) * t98;
t195 = t237 - t525;
t185 = t195 * t329;
t186 = t297 * t535 + t520;
t492 = t326 * t186;
t100 = t185 - t492;
t518 = t100 * t326;
t517 = t100 * t329;
t488 = t329 * t186;
t510 = t195 * t326;
t101 = t488 + t510;
t516 = t101 * t326;
t515 = t101 * t329;
t514 = t164 * t297;
t513 = t164 * t329;
t364 = t391 * t326;
t19 = (-t204 - t364 + t513) * t205;
t512 = t19 * qJD(1);
t509 = t204 * qJ(5);
t506 = t207 * t326;
t503 = t208 * t329;
t270 = -t520 / 0.2e1;
t390 = t407 * t297;
t351 = -t390 * t535 + t270;
t361 = t518 / 0.2e1 - t515 / 0.2e1;
t22 = t351 + t361;
t502 = t22 * qJD(2);
t24 = t164 * t207 - t208 * t391 + t507;
t501 = t24 * qJD(1);
t500 = t240 * qJ(5);
t499 = t240 * t329;
t498 = t269 * t325;
t497 = t295 * t326;
t273 = t321 * t297;
t274 = t322 * t297;
t283 = t297 * qJD(3);
t350 = t489 / 0.2e1 + t429 / 0.2e1;
t176 = (t532 + t350) * t493;
t452 = t176 * qJD(1);
t483 = t452 + t283;
t224 = t237 * qJD(4);
t480 = t224 - t452;
t373 = -t400 / 0.2e1;
t479 = t305 / 0.2e1 + t325 * t373;
t478 = -t305 / 0.2e1 + t384 / 0.2e1;
t413 = -t493 / 0.2e1;
t477 = t323 * t373 + t413 * t489;
t309 = t323 ^ 2 + t325 ^ 2;
t313 = t321 - t322;
t476 = t321 + t322;
t138 = t543 * t326;
t475 = qJD(2) * t138;
t173 = t542 * t326;
t474 = qJD(2) * t173;
t174 = t542 * t329;
t473 = qJD(2) * t174;
t472 = qJD(2) * t324;
t471 = qJD(2) * t326;
t470 = qJD(3) * t295;
t469 = qJD(4) * t204;
t468 = qJD(4) * t205;
t467 = qJD(4) * t220;
t466 = qJD(4) * t236;
t465 = qJD(4) * t326;
t464 = qJD(5) * t297;
t463 = qJD(5) * t326;
t462 = qJD(5) * t329;
t461 = qJD(6) * t216;
t459 = qJD(6) * t329;
t458 = qJD(6) * t535;
t125 = t390 + t273 / 0.2e1 + t274 / 0.2e1;
t457 = t125 * qJD(2);
t271 = t520 / 0.2e1;
t133 = 0.2e1 * t271 + t526;
t456 = t133 * qJD(2);
t343 = t347 * t323;
t135 = (-t495 + (t343 + t498) * t324) * t330;
t455 = t135 * qJD(1);
t139 = t476 * t297 * t295;
t454 = t139 * qJD(2);
t175 = t543 * t329;
t453 = t175 * qJD(2);
t412 = t493 / 0.2e1;
t393 = t297 * t412;
t177 = t393 + t477;
t451 = t177 * qJD(1);
t395 = t295 * t413;
t179 = t395 + t479;
t450 = t179 * qJD(1);
t218 = (t530 - t321 / 0.2e1) * t295;
t446 = t218 * qJD(6);
t445 = t220 * qJD(2);
t221 = -t273 - t274;
t444 = t221 * qJD(2);
t289 = t490 / 0.2e1 - t314 / 0.2e1;
t441 = t289 * qJD(2);
t440 = t536 * qJD(2);
t439 = t295 * qJD(2);
t438 = t295 * qJD(4);
t437 = t295 * qJD(5);
t436 = t297 * qJD(2);
t435 = t297 * qJD(4);
t434 = t309 * qJD(2);
t433 = t329 * qJD(4);
t428 = t215 * t436;
t427 = t536 * t471;
t426 = t326 * t438;
t425 = t326 * t433;
t424 = t297 * t460;
t423 = t297 * t459;
t422 = t295 * t436;
t232 = t295 * t435;
t421 = t328 * t472;
t420 = t330 * t472;
t419 = t326 * t439;
t418 = t326 * t459;
t267 = t329 * t436;
t417 = t205 * t529;
t416 = t240 * t529;
t411 = -t491 / 0.2e1;
t410 = t486 / 0.2e1;
t409 = t220 / 0.2e1;
t306 = t309 * qJ(3);
t403 = qJD(6) * t289 + t422;
t402 = qJD(2) * t315 + qJD(3);
t401 = qJD(6) + t436;
t399 = t295 * t421;
t398 = t297 * t421;
t397 = t537 * t418;
t396 = t223 * t413;
t394 = t295 * t412;
t389 = qJD(4) * t404;
t334 = t100 * t534 + t204 * t195 / 0.2e1 + t391 * t101 / 0.2e1;
t339 = -t482 * t535 + t500 / 0.2e1;
t1 = (-t522 / 0.2e1 - t538) * t205 + t334 + t339;
t5 = -t100 * t92 + t101 * t93 - t195 * t345;
t388 = -t1 * qJD(1) + t5 * qJD(2);
t6 = t28 + (t515 - t518) * t295;
t386 = t6 * qJD(2) + t561;
t45 = t215 * t223;
t365 = t239 * pkin(4) / 0.2e1 - t500 / 0.2e1;
t8 = t396 + t365;
t385 = t8 * qJD(1) + t45 * qJD(2);
t383 = t496 - t556;
t10 = (t100 - t185) * t297 + (t92 + t555) * t295;
t60 = t416 + (t164 / 0.2e1 - t487 / 0.2e1) * t295;
t382 = -t60 * qJD(1) + t10 * qJD(2);
t11 = (-t101 + t510) * t297 + (t93 - t511) * t295;
t340 = (t193 + t391) * t533;
t21 = -t499 / 0.2e1 + t340;
t381 = t21 * qJD(1) + t11 * qJD(2);
t14 = -t195 * t295 + (t522 - t523) * t297;
t335 = t158 + (-t364 / 0.2e1 + t513 / 0.2e1) * t297;
t358 = t506 / 0.2e1 - t503 / 0.2e1;
t17 = t335 + t358;
t380 = -qJD(1) * t17 - qJD(2) * t14;
t379 = qJD(2) * t28 + t561;
t46 = t195 * t220 + t297 * t92;
t51 = t411 + t514 / 0.2e1 + t357 * t329;
t378 = -qJD(1) * t51 + qJD(2) * t46;
t47 = t195 * t497 - t297 * t93;
t363 = t391 * t297;
t50 = t410 - t363 / 0.2e1 + t357 * t326;
t377 = -qJD(1) * t50 + qJD(2) * t47;
t376 = t516 + t517;
t375 = t236 * t239 + t237 * t240;
t178 = t394 + t478;
t99 = t215 * t295 - t223 * t297;
t370 = qJD(1) * t178 - qJD(2) * t99;
t369 = t401 * t326;
t336 = t498 / 0.2e1 + t343 / 0.2e1;
t168 = t414 - t336;
t367 = qJD(1) * t168 - qJD(2) * t306;
t332 = -t525 / 0.2e1 - t392 / 0.2e1 + t368 / 0.2e1;
t360 = -t517 / 0.2e1 - t516 / 0.2e1;
t26 = t332 + t360;
t319 = qJD(4) * qJ(5);
t333 = -t344 / 0.2e1 + t430 / 0.2e1;
t73 = t333 - t546;
t362 = qJD(1) * t73 + qJD(2) * t26 + t319;
t356 = -t532 * t535 + t271;
t355 = t295 * t369;
t346 = t186 / 0.2e1 + t356;
t103 = t346 * t326;
t354 = -qJ(5) * t433 - t103 * qJD(2);
t104 = t346 * t329;
t353 = qJ(5) * t465 - t104 * qJD(2);
t188 = -qJD(2) * t218 + t425;
t352 = (t239 * t297 - t240 * t295) * qJD(2);
t140 = t329 * t471 * t537 + qJD(4) * t218;
t222 = t313 * t537;
t349 = qJD(2) * t222 + t389;
t348 = qJD(2) * t404 - qJD(4) * t313;
t320 = qJ(5) * qJD(5);
t268 = t289 * qJD(4);
t241 = -t267 - t459;
t183 = t350 * t493 + t393;
t182 = t297 * t413 + t477;
t181 = t394 + t479;
t180 = t395 + t478;
t170 = t176 * qJD(2);
t169 = t414 + t336;
t134 = t271 + t270;
t102 = qJD(2) * t183 + t468;
t72 = t333 + t546;
t71 = -t510 - t488 / 0.2e1 + t356 * t329;
t70 = t185 - t492 / 0.2e1 + t356 * t326;
t61 = t164 * t533 + t204 * t409 + t416;
t53 = t363 / 0.2e1 + t295 * t417 + t326 * t415 + t410;
t52 = -t514 / 0.2e1 + t205 * t409 + t329 * t415 + t411;
t25 = t332 - t360;
t23 = t351 - t361;
t20 = t499 / 0.2e1 + t340;
t16 = t335 - t358;
t9 = t396 - t365;
t2 = t205 * t538 + t93 * t417 - t334 + t339;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t557, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t557, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t24 + qJD(4) * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t421, -t420, 0, 0, 0, 0, 0, 0, 0, 0, -t325 * t421, t323 * t421, t309 * t420, t455 + t169 * qJD(3) + (-pkin(2) * t328 + t306 * t330) * t472, 0, 0, 0, 0, 0, 0, qJD(4) * t182 + t399, qJD(4) * t181 + t398, t352 (t315 * t494 + t375) * qJD(2) + t559, 0, 0, 0, 0, 0, 0, t352, qJD(4) * t183 - t399, qJD(4) * t180 - t398 (t215 * t494 + t375) * qJD(2) + t9 * qJD(4) + t183 * qJD(5) + t559, 0, 0, 0, 0, 0, 0 (t207 * t297 - t220 * t240) * qJD(2) + t61 * qJD(4) + t53 * qJD(6) (-t208 * t297 + t240 * t497) * qJD(2) + t20 * qJD(4) + t52 * qJD(6), t30 * qJD(4) + (t503 - t506) * t439, t501 + (t195 * t240 - t207 * t92 + t208 * t93) * qJD(2) + t16 * qJD(3) + t2 * qJD(4) - t30 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t169 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t548, 0, 0, 0, 0, 0, 0, 0, 0, 0, t548, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t16; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t182 - t468, qJD(2) * t181 + t469, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, qJD(2) * t180 - t469, t9 * qJD(2) + (-pkin(4) * t205 - t509) * qJD(4) + t205 * qJD(5), 0, 0, 0, 0, 0, 0, qJD(2) * t61 - t204 * t465 + t205 * t459, qJD(2) * t20 - t204 * t433 - t205 * t460, -t468 * t476 + t560, t512 + t2 * qJD(2) + (-t205 * t476 * t535 - t509) * qJD(4) + t72 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t102, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t72 - t560; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t53 * qJD(2) + qJD(6) * t391 + t205 * t433, qJD(2) * t52 - qJD(6) * t164 - t205 * t465, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t168 - t455, 0, 0, 0, 0, 0, 0, -t177 * qJD(4), -t179 * qJD(4), 0, t558, 0, 0, 0, 0, 0, 0, 0, -t176 * qJD(4), -t178 * qJD(4), qJD(4) * t8 - qJD(5) * t176 + t558, 0, 0, 0, 0, 0, 0, -qJD(4) * t60 - qJD(6) * t50, qJD(4) * t21 - qJD(6) * t51, qJD(4) * t29, qJD(3) * t17 - qJD(4) * t1 - qJD(5) * t29 - t501; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t309 * qJD(3), t306 * qJD(3), -t232, t550, 0, t232, 0, 0, t315 * t435, -t315 * t438, t552, t540, 0, 0, 0, -t232, t550, t232, t552, qJD(4) * t98 + t297 * t437, qJD(4) * t99 + qJD(5) * t536, qJD(4) * t45 - t215 * t464 + t540, t232 * t321 + t397, -qJD(6) * t222 + t297 * t389, -qJD(4) * t173 + t295 * t423, t232 * t322 - t397, -qJD(4) * t174 - t295 * t424, -t232, qJD(3) * t175 + qJD(4) * t10 + qJD(6) * t47 + t463 * t536, -qJD(3) * t138 + qJD(4) * t11 + qJD(6) * t46 + t462 * t536, qJD(4) * t6 - qJD(5) * t139, qJD(3) * t14 + qJD(4) * t5 - qJD(5) * t28; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t434, -t367, 0, 0, 0, 0, 0, 0, 0, 0, t549, -t372, 0, 0, 0, 0, 0, 0, t549, 0, 0, qJD(4) * t134 - t372, 0, 0, 0, 0, 0, 0, t453, -t475, 0, qJD(4) * t23 - t380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t422, t551, -t438, t422, -t435, 0, t315 * t436 - t224 - t451, -t315 * t439 - t450 + t466, 0, 0, 0, t438, t435, -t422, t551, t422 (-t496 + t527) * qJD(4) - t437, t480 + t519, -t370 - t466, t134 * qJD(3) + (-pkin(4) * t237 - qJ(5) * t236) * qJD(4) + t237 * qJD(5) + t385, t446 + (t321 * t439 + t425) * t297 (t274 - t273) * qJD(4) + (-qJD(6) + t436) * t404, -t295 * t433 - t474, -t446 + (t322 * t439 - t425) * t297, t426 - t473, -t403 (-t329 * t383 - t511) * qJD(4) - t220 * qJD(5) + t70 * qJD(6) + t382, -t345 * t433 + t71 * qJD(6) + (qJD(4) * t383 + t437) * t326 + t381, -qJD(4) * t376 + t386, t23 * qJD(3) + (-qJ(5) * t345 - t376 * t535) * qJD(4) + t25 * qJD(5) + t388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t438, t422, t440, -t428 + t480, 0, 0, 0, 0, 0, 0, t427 - t467, t329 * t440 + t426, -t454, qJD(4) * t25 - t379; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t140, -t349, t401 * t220, -t140, -t355, -t268, qJD(4) * t70 - qJD(6) * t93 + t377, qJD(4) * t71 + qJD(6) * t92 + t378, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t168 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t539, 0, 0, 0, 0, 0, 0, 0, 0, 0, t539, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t434, t367, 0, 0, 0, 0, 0, 0, t435, -t438, -t549, t372, 0, 0, 0, 0, 0, 0, -t549, -t435, t438, qJD(4) * t133 + t372 - t464, 0, 0, 0, 0, 0, 0, -t423 + t426 - t453, t461 + t467 + t475, -t221 * qJD(4), -qJD(4) * t22 - qJD(5) * t125 + t380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, -t439, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, t439, t456, 0, 0, 0, 0, 0, 0, t419, t445, -t444, -t502; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t457; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t241, t553, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177 * qJD(2), t179 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t170, t178 * qJD(2), -qJD(2) * t8, 0, 0, 0, 0, 0, 0, t60 * qJD(2), -t21 * qJD(2), -t562, qJD(2) * t1 + qJD(5) * t73 - t512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t422, -t551, 0, -t422, 0, 0, -t297 * t402 + t451, t295 * t402 + t450, 0, 0, 0, 0, 0, t422, -t551, -t422, 0, t483 - t519, t370 - t470, -qJD(3) * t133 - t385, -t321 * t422 + t446, -0.2e1 * t329 * t355, -t424 + t474, -t322 * t422 - t446, -t423 + t473, t403, qJD(6) * t103 - t326 * t470 - t382, -qJD(3) * t220 + qJD(6) * t104 - t381, qJD(3) * t221 - t386, qJD(3) * t22 + qJD(5) * t26 - t388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, t439, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, -t439, -t456, 0, 0, 0, 0, 0, 0, -t419, -t445, t444, t502; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), t320, -t418, t313 * qJD(6), 0, t418, 0, 0, qJ(5) * t459 + t463, -qJ(5) * t460 + t462, 0, t320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t319, 0, 0, 0, 0, 0, 0, t465, t433, 0, t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, -t348, -t369, t188, t241, t441, t326 * t458 - t354, t329 * t458 - t353, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t170, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t73 + t562; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t422, -t440, t428 + t483, 0, 0, 0, 0, 0, 0, -t427 - t461 (-qJD(6) * t297 - t440) * t329, t454, qJD(3) * t125 - qJD(4) * t26 + t379; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, 0, 0, 0, 0, 0, 0, 0, 0, 0, t457; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4), -t319, 0, 0, 0, 0, 0, 0, -t465, -t433, 0, -t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t553, -t401 * t329, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50 * qJD(2), t51 * qJD(2), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t140, t349 (-t329 * t439 + t465) * t297, t140 (t419 + t433) * t297, -t268, -qJD(4) * t103 + qJD(5) * t216 + t283 * t329 - t377, -qJD(3) * t216 - qJD(4) * t104 + t297 * t462 - t378, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t267, -t447, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t188, t348, t326 * t436, -t188, t267, -t441, t354, t353, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t447, t267, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t3;