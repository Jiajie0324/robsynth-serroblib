% Calculate inertial parameters regressor of coriolis matrix for
% S5RRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:59
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRRR5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:58:35
% EndTime: 2019-12-05 18:58:47
% DurationCPUTime: 8.84s
% Computational Cost: add. (9939->491), mult. (19588->615), div. (0->0), fcn. (18171->8), ass. (0->363)
t375 = sin(qJ(3));
t545 = cos(qJ(2));
t470 = t545 * t375;
t376 = sin(qJ(2));
t378 = cos(qJ(3));
t512 = t376 * t378;
t324 = (t470 + t512) * pkin(1);
t590 = -t324 / 0.2e1;
t469 = t545 * t378;
t513 = t375 * t376;
t326 = (t469 - t513) * pkin(1);
t374 = sin(qJ(4));
t371 = t374 ^ 2;
t377 = cos(qJ(4));
t372 = t377 ^ 2;
t441 = t372 / 0.2e1 + t371 / 0.2e1;
t574 = t441 * t326;
t589 = pkin(3) * t590 + t574 * pkin(8);
t478 = qJD(4) + qJD(5);
t264 = t375 * pkin(2);
t363 = pkin(8) + t264;
t536 = pkin(9) + t363;
t327 = t536 * t374;
t328 = t536 * t377;
t373 = sin(qJ(5));
t544 = cos(qJ(5));
t432 = t544 * t327 + t373 * t328;
t567 = -t432 / 0.2e1;
t449 = t567 + t432 / 0.2e1;
t569 = -pkin(9) - pkin(8);
t348 = t569 * t374;
t349 = t569 * t377;
t252 = t373 * t348 - t544 * t349;
t587 = -t252 / 0.2e1;
t431 = -t544 * t348 - t373 * t349;
t586 = t431 / 0.2e1;
t476 = t545 * pkin(1);
t430 = t476 + pkin(2);
t350 = t378 * t430;
t318 = pkin(1) * t513 - t350;
t467 = t544 * t377;
t516 = t373 * t374;
t399 = t467 / 0.2e1 - t516 / 0.2e1;
t505 = t318 * t399;
t585 = t478 * t431;
t584 = t478 * t432;
t415 = t375 * t430;
t319 = pkin(1) * t512 + t415;
t313 = pkin(8) + t319;
t537 = pkin(9) + t313;
t245 = t537 * t374;
t246 = t537 * t377;
t433 = t544 * t245 + t373 * t246;
t583 = t478 * t433;
t144 = -t373 * t245 + t544 * t246;
t582 = t478 * t144;
t214 = -t373 * t327 + t544 * t328;
t581 = t478 * t214;
t580 = t478 * t252;
t565 = -t214 / 0.2e1;
t579 = -t433 / 0.2e1;
t468 = t544 * t374;
t515 = t373 * t377;
t335 = t468 + t515;
t411 = t467 - t516;
t193 = -t335 ^ 2 + t411 ^ 2;
t479 = -qJD(2) - qJD(3);
t436 = qJD(1) - t479;
t578 = t436 * t193;
t360 = t372 - t371;
t577 = t436 * t360;
t521 = t411 * t335;
t576 = t436 * t521;
t502 = t371 + t372;
t472 = t264 / 0.2e1;
t557 = t319 / 0.2e1;
t428 = t472 + t557;
t575 = t428 + t324 / 0.2e1;
t570 = pkin(3) / 0.2e1;
t450 = t214 / 0.2e1 + t565;
t451 = t579 + t433 / 0.2e1;
t8 = t450 * t335 - (t449 + t451) * t411;
t568 = t8 * qJD(4);
t312 = -pkin(3) + t318;
t539 = t377 * pkin(4);
t275 = t312 - t539;
t560 = -t275 / 0.2e1;
t538 = t378 * pkin(2);
t291 = t335 * t538;
t559 = t291 / 0.2e1;
t558 = -t312 / 0.2e1;
t555 = -t326 / 0.2e1;
t365 = -pkin(3) - t539;
t346 = t365 - t538;
t554 = t346 / 0.2e1;
t364 = -pkin(3) - t538;
t553 = -t364 / 0.2e1;
t552 = -t365 / 0.2e1;
t549 = t373 / 0.2e1;
t548 = t374 / 0.2e1;
t547 = -t377 / 0.2e1;
t546 = t377 / 0.2e1;
t543 = pkin(1) * t376;
t542 = pkin(4) * t373;
t541 = pkin(4) * t374;
t447 = -t431 / 0.2e1 + t586;
t448 = t252 / 0.2e1 + t587;
t14 = t448 * t335 - (t447 + t451) * t411;
t535 = t14 * qJD(4);
t20 = (t448 + t450) * t335 - (t447 + t449) * t411;
t534 = t20 * qJD(4);
t533 = pkin(2) * qJD(2);
t532 = pkin(2) * qJD(3);
t531 = pkin(3) * qJD(3);
t530 = qJD(4) * pkin(4);
t180 = t335 * t326;
t529 = t180 * t335;
t181 = t411 * t326;
t528 = t181 * t411;
t527 = t275 * t411;
t526 = t275 * t335;
t29 = t275 * t541;
t525 = t29 * qJD(1);
t175 = t335 * t318;
t176 = t411 * t318;
t31 = -t144 * t176 - t175 * t433 + t275 * t319;
t524 = t31 * qJD(1);
t523 = t324 * t377;
t33 = t144 * t181 + t180 * t433 + t275 * t324;
t522 = t33 * qJD(1);
t520 = t346 * t411;
t519 = t346 * t335;
t518 = t365 * t411;
t517 = t365 * t335;
t514 = t374 * t326;
t57 = -t175 * t335 - t176 * t411;
t511 = t57 * qJD(1);
t186 = t502 * t318;
t60 = -t186 * t313 + t312 * t319;
t510 = t60 * qJD(1);
t61 = t528 + t529;
t509 = t61 * qJD(1);
t208 = t502 * t326;
t63 = t208 * t313 + t312 * t324;
t508 = t63 * qJD(1);
t507 = (-t335 * t373 - t411 * t544) * t530;
t204 = t527 / 0.2e1;
t317 = t335 * t541;
t506 = t204 + t317;
t453 = t326 * t547;
t504 = t544 * t453 + t514 * t549;
t305 = t319 * qJD(3);
t320 = t324 * qJD(2);
t503 = -t320 - t305;
t501 = qJD(1) * t275;
t500 = qJD(1) * t312;
t499 = qJD(2) * t346;
t498 = qJD(2) * t364;
t497 = qJD(3) * t365;
t496 = qJD(5) * t275;
t495 = qJD(5) * t346;
t494 = qJD(5) * t365;
t126 = t318 * t324 + t319 * t326;
t493 = t126 * qJD(1);
t316 = t411 * t541;
t151 = -t316 + t526;
t492 = t151 * qJD(1);
t152 = t317 + t527;
t491 = t152 * qJD(1);
t413 = t590 + t428;
t171 = t413 * t377;
t490 = t171 * qJD(1);
t489 = t186 * qJD(1);
t488 = t208 * qJD(1);
t487 = t264 * qJD(1);
t266 = t350 / 0.2e1 + (-t476 / 0.2e1 + pkin(2) / 0.2e1) * t378;
t486 = t266 * qJD(1);
t485 = t318 * qJD(1);
t484 = t319 * qJD(1);
t483 = t324 * qJD(1);
t482 = t326 * qJD(1);
t481 = t374 * qJD(4);
t370 = t377 * qJD(4);
t480 = -qJD(1) - qJD(2);
t477 = t544 / 0.2e1;
t475 = t375 * t532;
t474 = t375 * t533;
t473 = t541 / 0.2e1;
t471 = -t538 / 0.2e1;
t466 = t411 * t501;
t465 = t335 * t501;
t464 = t374 * t500;
t463 = t377 * t500;
t462 = t411 * t484;
t461 = t335 * t484;
t460 = t374 * t484;
t459 = t411 * t483;
t458 = t335 * t483;
t457 = t374 * t483;
t446 = t559 - t175 / 0.2e1;
t292 = t411 * t538;
t445 = -t292 / 0.2e1 + t176 / 0.2e1;
t444 = -t346 / 0.2e1 + t560;
t443 = t552 + t560;
t442 = t365 / 0.2e1 + t554;
t440 = t545 * qJD(1);
t439 = t545 * qJD(2);
t438 = t544 * qJD(4);
t437 = t544 * qJD(5);
t435 = pkin(2) * t479;
t434 = t502 * t378;
t228 = t478 * t335;
t255 = t520 / 0.2e1;
t70 = t255 + t204 + t504;
t287 = t518 / 0.2e1;
t66 = t287 + t204 + t505;
t427 = t318 / 0.2e1 + t570 + t558;
t426 = t375 * t435;
t425 = t441 * t318;
t424 = t441 * t378;
t423 = t555 + t553 + t558;
t380 = t433 * t559 + t144 * t292 / 0.2e1 + t175 * t567 + t176 * t565 + t319 * t554 + t275 * t472;
t386 = -t180 * t586 + t181 * t587 + t324 * t552;
t2 = t380 + t386;
t47 = t214 * t292 + t346 * t264 + t291 * t432;
t422 = t2 * qJD(1) + t47 * qJD(2);
t383 = t449 * t144 + t214 * t579 - t433 * t565;
t402 = -t180 * t477 + t181 * t549;
t3 = (t444 * t374 + t402) * pkin(4) + t383;
t39 = t346 * t541;
t421 = -t3 * qJD(1) + t39 * qJD(2);
t119 = t291 * t335 + t292 * t411;
t26 = (-t180 / 0.2e1 + t446) * t335 - (t181 / 0.2e1 + t445) * t411;
t420 = -t26 * qJD(1) - t119 * qJD(2);
t184 = -t316 + t519;
t400 = t515 / 0.2e1 + t468 / 0.2e1;
t390 = t400 * t326;
t68 = t335 * t444 - t390;
t53 = t316 + t68;
t419 = t53 * qJD(1) - t184 * qJD(2);
t185 = t317 + t520;
t55 = t326 * t399 + t255 + t506;
t418 = -t55 * qJD(1) - t185 * qJD(2);
t209 = (t363 * t434 + t364 * t375) * pkin(2);
t379 = (t312 * t375 / 0.2e1 + t313 * t424) * pkin(2) - t363 * t425 + t364 * t557;
t36 = t379 - t589;
t417 = -t36 * qJD(1) - t209 * qJD(2);
t325 = pkin(2) * t434;
t81 = t502 * (t538 / 0.2e1 - t318 / 0.2e1 + t555);
t416 = -t81 * qJD(1) - t325 * qJD(2);
t414 = t471 + t570 + t553;
t205 = -t527 / 0.2e1;
t69 = -t520 / 0.2e1 + t205 + t504;
t410 = t69 * qJD(1) - t411 * t499;
t409 = t68 * qJD(1) - t335 * t499;
t155 = t423 * t374;
t408 = t155 * qJD(1) - t374 * t498;
t156 = t423 * t377;
t407 = t156 * qJD(1) - t377 * t498;
t106 = t413 * t411;
t406 = t106 * qJD(1) + t411 * t474;
t108 = t413 * t335;
t405 = -t108 * qJD(1) - t335 * t474;
t170 = t413 * t374;
t404 = -t170 * qJD(1) - t374 * t474;
t403 = t175 * t477 - t176 * t549;
t401 = -t291 * t477 + t292 * t549;
t398 = -t8 * qJD(2) - t14 * qJD(3);
t397 = -t8 * qJD(1) - t20 * qJD(3);
t23 = (-t374 * t442 + t401) * pkin(4);
t58 = t365 * t541;
t9 = (t374 * t443 + t403) * pkin(4);
t396 = -t9 * qJD(1) - t23 * qJD(2) + t58 * qJD(3);
t395 = -t14 * qJD(1) - t20 * qJD(2);
t202 = -t316 + t517;
t389 = t400 * t318;
t64 = t335 * t443 + t389;
t49 = t316 + t64;
t385 = t400 * t538;
t120 = -t335 * t442 - t385;
t98 = t316 + t120;
t394 = t49 * qJD(1) + t98 * qJD(2) - t202 * qJD(3);
t203 = t317 + t518;
t51 = t287 + t506 - t505;
t384 = t399 * t538;
t121 = -t411 * t442 - t384;
t99 = -t317 + t121;
t393 = -t51 * qJD(1) + t99 * qJD(2) - t203 * qJD(3);
t165 = t427 * t374;
t263 = t414 * t374;
t392 = t165 * qJD(1) + t263 * qJD(2) + t374 * t531;
t166 = t427 * t377;
t265 = t414 * t377;
t391 = t166 * qJD(1) + t265 * qJD(2) + t377 * t531;
t388 = t64 * qJD(1) + t120 * qJD(2) - t335 * t497;
t65 = -t518 / 0.2e1 + t205 + t505;
t387 = t65 * qJD(1) + t121 * qJD(2) - t411 * t497;
t206 = t526 / 0.2e1;
t256 = t519 / 0.2e1;
t71 = t256 + t206 - t390;
t288 = t517 / 0.2e1;
t67 = t288 + t206 + t389;
t122 = t287 + t255 - t384;
t123 = t288 + t256 - t385;
t369 = pkin(3) * t547;
t368 = -pkin(3) * t374 / 0.2e1;
t361 = t374 * t370;
t359 = t374 * t475;
t347 = t360 * qJD(4);
t345 = t364 * t546;
t344 = t364 * t548;
t337 = t365 * t473;
t323 = t346 * t473;
t322 = t326 * qJD(2);
t321 = t325 * qJD(3);
t311 = t335 * t475;
t310 = t411 * t475;
t304 = t318 * qJD(3);
t299 = t374 * t320;
t286 = t374 * t305;
t273 = t312 * t546;
t272 = t312 * t548;
t269 = t436 * t377 * t374;
t268 = t377 * t471 + t345 + t369;
t267 = t374 * t471 + t344 + t368;
t239 = t275 * t473;
t236 = t335 * t320;
t235 = t411 * t320;
t230 = t471 - t350 / 0.2e1 + (t513 - t469 / 0.2e1) * pkin(1);
t229 = -t264 / 0.2e1 - t415 / 0.2e1 + (-t512 - t470 / 0.2e1) * pkin(1);
t227 = t478 * t411;
t220 = t335 * t305;
t219 = t411 * t305;
t196 = t208 * qJD(2);
t179 = t186 * qJD(3);
t172 = -t523 / 0.2e1 - t428 * t377;
t169 = t324 * t548 + t428 * t374;
t168 = t318 * t546 + t273 + t369;
t167 = t318 * t548 + t272 + t368;
t158 = t345 + t273 + t453;
t157 = t344 + t272 - t514 / 0.2e1;
t148 = t411 * t228;
t147 = t478 * t521;
t118 = t119 * qJD(3);
t107 = t575 * t335;
t105 = t575 * t411;
t101 = t317 + t122;
t100 = -t316 + t123;
t92 = t478 * t193;
t80 = pkin(2) * t424 - t425 + t574;
t59 = t61 * qJD(2);
t56 = t317 + t70;
t54 = -t316 + t71;
t52 = t317 + t66;
t50 = -t316 + t67;
t48 = t57 * qJD(3);
t35 = t379 + t589;
t25 = t528 / 0.2e1 + t529 / 0.2e1 + t446 * t335 - t445 * t411;
t24 = pkin(4) * t401 + t323 + t337;
t10 = pkin(4) * t403 + t239 + t337;
t4 = pkin(4) * t402 + t239 + t323 - t383;
t1 = t380 - t386;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t543, -pkin(1) * t439, 0, 0, 0, 0, 0, 0, 0, 0, t503, -t322 + t304, 0, t126 * qJD(2), t361, t347, 0, -t361, 0, 0, t312 * t481 + t377 * t503, t312 * t370 + t286 + t299, t196 - t179, t63 * qJD(2) + t60 * qJD(3), t148, t92, 0, -t147, 0, 0, t151 * qJD(4) + t335 * t496 - t219 - t235, t152 * qJD(4) + t411 * t496 + t220 + t236, t48 + t59, t33 * qJD(2) + t31 * qJD(3) + t29 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t480 * t543, (-t440 - t439) * pkin(1), 0, 0, 0, 0, 0, 0, 0, 0, t229 * qJD(3) - t320 - t483, t230 * qJD(3) - t322 - t482, 0, t493 + (-t324 * t378 + t326 * t375) * t533, t361, t347, 0, -t361, 0, 0, t172 * qJD(3) + t157 * qJD(4) + t480 * t523, t169 * qJD(3) + t158 * qJD(4) + t299 + t457, t80 * qJD(3) + t196 + t488, t508 + (t208 * t363 + t324 * t364) * qJD(2) + t35 * qJD(3), t148, t92, 0, -t147, 0, 0, -t105 * qJD(3) + t54 * qJD(4) + t71 * qJD(5) - t235 - t459, t107 * qJD(3) + t56 * qJD(4) + t70 * qJD(5) + t236 + t458, t25 * qJD(3) + t509 + t568 + t59, t522 + (t180 * t432 + t181 * t214 + t324 * t346) * qJD(2) + t1 * qJD(3) + t4 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229 * qJD(2) - t305 - t484, t230 * qJD(2) + t304 + t485, 0, 0, t361, t347, 0, -t361, 0, 0, t172 * qJD(2) + t167 * qJD(4) + (-qJD(1) - qJD(3)) * t377 * t319, t169 * qJD(2) + t168 * qJD(4) + t286 + t460, t80 * qJD(2) - t179 - t489, t510 + t35 * qJD(2) + (-t319 * pkin(3) - pkin(8) * t186) * qJD(3), t148, t92, 0, -t147, 0, 0, -t105 * qJD(2) + t50 * qJD(4) + t67 * qJD(5) - t219 - t462, t107 * qJD(2) + t52 * qJD(4) + t66 * qJD(5) + t220 + t461, t25 * qJD(2) + t48 + t511 + t535, t524 + t1 * qJD(2) + (-t175 * t431 - t176 * t252 + t319 * t365) * qJD(3) + t10 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t269, t577, t370, -t269, -t481, 0, t157 * qJD(2) + t167 * qJD(3) - t313 * t370 + t464, t158 * qJD(2) + t168 * qJD(3) + t313 * t481 + t463, 0, 0, t576, t578, t227, -t576, -t228, 0, t54 * qJD(2) + t50 * qJD(3) + t492 - t582, t56 * qJD(2) + t52 * qJD(3) + t491 + t583, -t398 + t507, t525 + t4 * qJD(2) + t10 * qJD(3) + (-t144 * t544 - t373 * t433) * t530; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t576, t578, t227, -t576, -t228, 0, t71 * qJD(2) + t67 * qJD(3) + t465 - t582, t70 * qJD(2) + t66 * qJD(3) + t466 + t583, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1) * t543, pkin(1) * t440, 0, 0, 0, 0, 0, 0, 0, 0, -t264 * qJD(3) + t483, -t266 * qJD(3) + t482, 0, -t493, t361, t347, 0, -t361, 0, 0, -t171 * qJD(3) - t155 * qJD(4) + t377 * t483, t170 * qJD(3) - t156 * qJD(4) - t457, t81 * qJD(3) - t488, t36 * qJD(3) - t508, t148, t92, 0, -t147, 0, 0, -t106 * qJD(3) - t53 * qJD(4) - t68 * qJD(5) + t459, t108 * qJD(3) + t55 * qJD(4) - t69 * qJD(5) - t458, t26 * qJD(3) - t509 + t568, t2 * qJD(3) - t3 * qJD(4) - t522; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t475, -t378 * t532, 0, 0, t361, t347, 0, -t361, 0, 0, t364 * t481 - t377 * t475, t364 * t370 + t359, t321, t209 * qJD(3), t148, t92, 0, -t147, 0, 0, t184 * qJD(4) + t335 * t495 - t310, t185 * qJD(4) + t411 * t495 + t311, t118, t47 * qJD(3) + t39 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t426 - t487, t378 * t435 - t486, 0, 0, t361, t347, 0, -t361, 0, 0, t267 * qJD(4) + t377 * t426 - t490, t268 * qJD(4) + t359 - t404, t321 - t416, (-pkin(3) * t375 + pkin(8) * t434) * t532 - t417, t148, t92, 0, -t147, 0, 0, t100 * qJD(4) + t123 * qJD(5) - t310 - t406, t101 * qJD(4) + t122 * qJD(5) + t311 - t405, t118 - t420 + t534, (t292 * t252 + t264 * t365 + t291 * t431) * qJD(3) + t24 * qJD(4) + t422; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t269, t577, t370, -t269, -t481, 0, t267 * qJD(3) - t363 * t370 - t408, t268 * qJD(3) + t363 * t481 - t407, 0, 0, t576, t578, t227, -t576, -t228, 0, t100 * qJD(3) - t419 - t581, t101 * qJD(3) - t418 + t584, -t397 + t507, t24 * qJD(3) + (-t214 * t544 - t373 * t432) * t530 + t421; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t576, t578, t227, -t576, -t228, 0, t123 * qJD(3) - t409 - t581, t122 * qJD(3) - t410 + t584, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t264 * qJD(2) + t484, t266 * qJD(2) - t485, 0, 0, t361, t347, 0, -t361, 0, 0, t171 * qJD(2) - t165 * qJD(4) + t377 * t484, -t170 * qJD(2) - t166 * qJD(4) - t460, -t81 * qJD(2) + t489, -t36 * qJD(2) - t510, t148, t92, 0, -t147, 0, 0, t106 * qJD(2) - t49 * qJD(4) - t64 * qJD(5) + t462, -t108 * qJD(2) + t51 * qJD(4) - t65 * qJD(5) - t461, -t26 * qJD(2) - t511 + t535, -t2 * qJD(2) - t9 * qJD(4) - t524; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t474 + t487, t378 * t533 + t486, 0, 0, t361, t347, 0, -t361, 0, 0, -t263 * qJD(4) + t377 * t474 + t490, -t265 * qJD(4) + t404, t416, t417, t148, t92, 0, -t147, 0, 0, -t98 * qJD(4) - t120 * qJD(5) + t406, -t99 * qJD(4) - t121 * qJD(5) + t405, t420 + t534, -t23 * qJD(4) - t422; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t361, t347, 0, -t361, 0, 0, -pkin(3) * t481, -pkin(3) * t370, 0, 0, t148, t92, 0, -t147, 0, 0, t202 * qJD(4) + t335 * t494, t203 * qJD(4) + t411 * t494, 0, t58 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t269, t577, t370, -t269, -t481, 0, -pkin(8) * t370 - t392, pkin(8) * t481 - t391, 0, 0, t576, t578, t227, -t576, -t228, 0, -t394 - t580, -t393 + t585, -t395 + t507, (-t252 * t544 - t373 * t431) * t530 + t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t576, t578, t227, -t576, -t228, 0, -t388 - t580, -t387 + t585, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t269, -t577, 0, t269, 0, 0, t155 * qJD(2) + t165 * qJD(3) - t464, t156 * qJD(2) + t166 * qJD(3) - t463, 0, 0, -t576, -t578, 0, t576, 0, 0, t53 * qJD(2) + t49 * qJD(3) - t492, -t55 * qJD(2) - t51 * qJD(3) - t491, t398, t3 * qJD(2) + t9 * qJD(3) - t525; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t269, -t577, 0, t269, 0, 0, t263 * qJD(3) + t408, t265 * qJD(3) + t407, 0, 0, -t576, -t578, 0, t576, 0, 0, t98 * qJD(3) + t419, t99 * qJD(3) + t418, t397, t23 * qJD(3) - t421; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t269, -t577, 0, t269, 0, 0, t392, t391, 0, 0, -t576, -t578, 0, t576, 0, 0, t394, t393, t395, -t396; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t542, -pkin(4) * t437, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t478 * t542, (-t438 - t437) * pkin(4), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t576, -t578, 0, t576, 0, 0, t68 * qJD(2) + t64 * qJD(3) - t465, t69 * qJD(2) + t65 * qJD(3) - t466, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t576, -t578, 0, t576, 0, 0, t120 * qJD(3) + t409, t121 * qJD(3) + t410, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t576, -t578, 0, t576, 0, 0, t388, t387, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t373 * t530, pkin(4) * t438, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t5;