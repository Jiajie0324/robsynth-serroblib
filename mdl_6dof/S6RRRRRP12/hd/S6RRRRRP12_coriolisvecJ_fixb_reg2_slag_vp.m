% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRRRRP12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 03:26
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRRP12_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP12_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP12_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRP12_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 03:20:39
% EndTime: 2019-03-10 03:21:37
% DurationCPUTime: 26.10s
% Computational Cost: add. (45488->885), mult. (136258->1194), div. (0->0), fcn. (112158->12), ass. (0->389)
t366 = cos(qJ(2));
t550 = cos(pkin(6));
t500 = pkin(1) * t550;
t351 = t366 * t500;
t343 = qJD(1) * t351;
t364 = sin(qJ(2));
t360 = sin(pkin(6));
t549 = cos(pkin(7));
t435 = t360 * (-pkin(10) * t549 - pkin(9));
t415 = t364 * t435;
t262 = qJD(1) * t415 + t343;
t350 = t364 * t500;
t384 = t366 * t435 - t350;
t263 = t384 * qJD(1);
t359 = sin(pkin(7));
t414 = (-pkin(10) * t359 * t366 + pkin(2) * t364) * t360;
t295 = qJD(1) * t414;
t576 = cos(qJ(3));
t460 = t549 * t576;
t363 = sin(qJ(3));
t537 = t359 * t363;
t318 = pkin(2) * t460 - pkin(10) * t537;
t480 = t363 * t549;
t592 = t318 * qJD(3) - t576 * t262 - t263 * t480 - t295 * t537;
t402 = -t364 * t480 + t366 * t576;
t522 = qJD(1) * t360;
t283 = t402 * t522;
t484 = t576 * qJD(3);
t464 = t359 * t484;
t588 = t464 - t283;
t200 = -t263 * t359 + t549 * t295;
t400 = t363 * t366 + t364 * t460;
t282 = t400 * t522;
t614 = -pkin(3) * t282 + pkin(11) * t283 - t200 + (pkin(3) * t363 - pkin(11) * t576) * t359 * qJD(3);
t491 = t364 * t522;
t467 = t359 * t491;
t613 = pkin(11) * t467 - t592;
t362 = sin(qJ(4));
t365 = cos(qJ(4));
t315 = t362 * t537 - t365 * t549;
t594 = qJD(4) * t315 + t362 * t467 - t588 * t365;
t316 = t362 * t549 + t365 * t537;
t526 = qJD(4) * t316 + t588 * t362 + t365 * t467;
t520 = qJD(3) * t363;
t489 = t359 * t520;
t593 = t282 - t489;
t499 = t359 * t576;
t320 = pkin(2) * t480 + pkin(10) * t499;
t612 = t320 * qJD(3) - t363 * t262 + t263 * t460;
t466 = t363 * t491;
t476 = t550 * qJD(1);
t444 = t476 + qJD(2);
t418 = t359 * t444;
t439 = t366 * t460;
t422 = t360 * t439;
t525 = -qJD(1) * t422 - t576 * t418;
t230 = t466 + t525;
t407 = qJD(4) + t230;
t303 = pkin(11) * t549 + t320;
t304 = (-pkin(3) * t576 - pkin(11) * t363 - pkin(2)) * t359;
t518 = qJD(4) * t365;
t519 = qJD(4) * t362;
t597 = -t303 * t519 + t304 * t518 + t362 * t614 - t613 * t365;
t497 = t576 * t295;
t591 = -(-pkin(3) * t491 - t497) * t359 + t612;
t611 = -t593 * pkin(12) + t597;
t534 = t360 * t366;
t524 = pkin(9) * t534 + t350;
t308 = t524 * qJD(1);
t479 = t366 * t549;
t461 = t360 * t479;
t225 = t308 + (qJD(1) * t461 + t418) * pkin(10);
t386 = pkin(2) * t550 + t415;
t229 = qJD(2) * pkin(2) + qJD(1) * t386 + t343;
t536 = t359 * t364;
t291 = (-pkin(2) * t366 - pkin(10) * t536 - pkin(1)) * t360;
t276 = qJD(1) * t291;
t148 = t576 * t225 + (t229 * t549 + t276 * t359) * t363;
t610 = -t148 + t407 * (pkin(4) * t362 - pkin(12) * t365);
t609 = -t526 * pkin(4) - t594 * pkin(12) - t591;
t513 = qJD(1) * qJD(2);
t482 = t360 * t513;
t441 = t576 * t482;
t192 = (qJD(2) * t549 + qJD(3)) * t466 - t366 * t441 + t525 * qJD(3);
t265 = t384 * qJD(2);
t247 = qJD(1) * t265;
t296 = qJD(2) * t414;
t287 = qJD(1) * t296;
t272 = t549 * t287;
t401 = t363 * t479 + t364 * t576;
t389 = t401 * qJD(3);
t608 = qJD(2) * t400 + t389;
t374 = t608 * t522;
t417 = t363 * t444;
t406 = qJD(3) * t417;
t116 = t192 * pkin(11) + t272 + (pkin(3) * t406 - t247) * t359 + pkin(3) * t374;
t185 = -t229 * t359 + t549 * t276;
t390 = t401 * t360;
t232 = qJD(1) * t390 + t359 * t417;
t128 = pkin(3) * t230 - pkin(11) * t232 + t185;
t502 = t359 * t534;
t514 = qJD(1) * t502 - qJD(3);
t387 = -t444 * t549 + t514;
t131 = -pkin(11) * t387 + t148;
t340 = qJD(2) * t343;
t404 = qJD(2) * t415;
t246 = qJD(1) * t404 + t340;
t438 = qJD(3) * t460;
t399 = t225 * t520 - t229 * t438 - t576 * t246 - t247 * t480 - t276 * t464 - t287 * t537;
t463 = t364 * t482;
t445 = t359 * t463;
t96 = pkin(11) * t445 - t399;
t21 = t365 * t116 - t128 * t519 - t131 * t518 - t362 * t96;
t377 = t608 * t360;
t397 = t359 * t406;
t371 = qJD(1) * t377 + t397;
t18 = -pkin(4) * t371 - t21;
t596 = -t303 * t518 - t304 * t519 + t613 * t362 + t365 * t614;
t361 = sin(qJ(5));
t575 = cos(qJ(5));
t268 = t361 * t316 + t499 * t575;
t528 = qJD(5) * t268 + t593 * t361 + t594 * t575;
t468 = t361 * t499;
t485 = qJD(5) * t575;
t527 = -qJD(5) * t468 + t316 * t485 - t594 * t361 + t593 * t575;
t189 = t232 * t362 + t365 * t387;
t188 = qJD(5) + t189;
t74 = t362 * t128 + t365 * t131;
t70 = pkin(12) * t407 + t74;
t147 = -t363 * t225 + t229 * t460 + t276 * t499;
t130 = pkin(3) * t387 - t147;
t191 = t365 * t232 - t362 * t387;
t81 = t189 * pkin(4) - t191 * pkin(12) + t130;
t32 = t361 * t81 + t575 * t70;
t420 = -t362 * t116 - t128 * t518 + t131 * t519 - t365 * t96;
t17 = pkin(12) * t371 - t420;
t474 = t362 * t192 + t365 * t445;
t515 = t191 * qJD(4);
t124 = -t474 + t515;
t381 = qJD(4) * t387 + t192;
t408 = -t232 * t519 + t362 * t445;
t376 = t365 * t381 - t408;
t475 = t549 * qJD(3);
t459 = t363 * t475;
t102 = -t225 * t484 - t229 * t459 - t363 * t246 + t247 * t460 - t276 * t489 + t287 * t499;
t97 = -pkin(3) * t445 - t102;
t38 = t124 * pkin(4) + pkin(12) * t376 + t97;
t517 = qJD(5) * t361;
t477 = t361 * t17 - t575 * t38 + t70 * t485 + t81 * t517;
t436 = t188 * t32 - t477;
t541 = t230 * t362;
t607 = t519 + t541;
t388 = t575 * t407;
t153 = t191 * t361 - t388;
t493 = t575 * t189;
t409 = t485 + t493;
t66 = -qJD(5) * t388 + t191 * t517 - t361 * t371 + t376 * t575;
t507 = t66 * t575;
t396 = t361 * t407;
t155 = t191 * t575 + t396;
t544 = t155 * t188;
t67 = qJD(5) * t396 + t191 * t485 - t361 * t376 - t575 * t371;
t606 = t409 * t153 + t361 * (t67 + t544) + t507;
t532 = t361 * t365;
t175 = -t230 * t532 - t232 * t575;
t498 = t365 * t575;
t176 = -t230 * t498 + t361 * t232;
t494 = t575 * t155;
t506 = t67 * t575;
t558 = t66 * t361;
t605 = t362 * (qJD(5) * (-t153 * t361 + t494) + t506 - t558) + (t153 * t575 + t155 * t361) * t518 - t176 * t153 - t155 * t175;
t455 = t361 * t518 - t175;
t533 = t361 * t124;
t604 = t455 * t188 + t362 * (t153 * t407 + t188 * t485 + t533) - t365 * t67;
t356 = t360 ^ 2;
t603 = -0.2e1 * t356 * t513;
t495 = t575 * t124;
t410 = t188 * t517 - t495;
t601 = pkin(12) * t410;
t574 = pkin(5) * t124;
t2 = t477 - t574;
t25 = t188 * qJ(6) + t32;
t600 = -t188 * t25 + t2;
t302 = -pkin(3) * t549 - t318;
t207 = t315 * pkin(4) - t316 * pkin(12) + t302;
t215 = t365 * t303 + t362 * t304;
t209 = -pkin(12) * t499 + t215;
t566 = -t207 * t485 + t209 * t517 + t609 * t361 - t611 * t575;
t557 = t593 * pkin(4) - t596;
t339 = -pkin(4) * t365 - pkin(12) * t362 - pkin(3);
t486 = qJD(4) * t575;
t179 = pkin(3) * t232 + pkin(11) * t230;
t112 = t365 * t147 + t362 * t179;
t95 = pkin(12) * t232 + t112;
t553 = -t575 * t95 + t339 * t485 + (-t362 * t486 - t365 * t517) * pkin(11) + t610 * t361;
t598 = pkin(11) * t519 + t112;
t595 = t361 * t207 + t575 * t209;
t590 = t359 * t497 + t612;
t589 = qJD(2) * t282 + qJD(3) * t232;
t372 = -t397 - t374;
t540 = t230 * t365;
t587 = -t518 - t540;
t478 = t550 * t359;
t462 = t363 * t478;
t198 = qJD(3) * t462 + t377;
t248 = (t461 + t478) * pkin(10) + t524;
t261 = t351 + t386;
t344 = qJD(2) * t351;
t264 = t344 + t404;
t117 = -t248 * t520 + t261 * t438 + t576 * t264 + t265 * t480 + t291 * t464 + t296 * t537;
t521 = qJD(2) * t364;
t490 = t360 * t521;
t465 = t359 * t490;
t108 = pkin(11) * t465 + t117;
t440 = t576 * t478;
t531 = t363 * t364;
t199 = qJD(3) * t440 + ((t439 - t531) * qJD(3) + t402 * qJD(2)) * t360;
t201 = -t265 * t359 + t549 * t296;
t122 = pkin(3) * t198 - pkin(11) * t199 + t201;
t195 = -t261 * t359 + t549 * t291;
t254 = t360 * t531 - t422 - t440;
t255 = t462 + t390;
t143 = pkin(3) * t254 - pkin(11) * t255 + t195;
t166 = t576 * t248 + t261 * t480 + t291 * t537;
t453 = t550 * t549;
t314 = -t453 + t502;
t150 = -pkin(11) * t314 + t166;
t29 = t365 * t108 + t362 * t122 + t143 * t518 - t150 * t519;
t26 = pkin(12) * t198 + t29;
t391 = -t248 * t484 - t261 * t459 - t363 * t264 + t265 * t460 - t291 * t489;
t496 = t576 * t296;
t109 = (-pkin(3) * t490 - t496) * t359 - t391;
t206 = t255 * t365 - t314 * t362;
t136 = qJD(4) * t206 + t199 * t362 - t365 * t465;
t205 = t255 * t362 + t314 * t365;
t137 = -qJD(4) * t205 + t199 * t365 + t362 * t465;
t50 = t136 * pkin(4) - t137 * pkin(12) + t109;
t165 = -t363 * t248 + t261 * t460 + t291 * t499;
t149 = t314 * pkin(3) - t165;
t103 = t205 * pkin(4) - t206 * pkin(12) + t149;
t88 = t362 * t143 + t365 * t150;
t84 = pkin(12) * t254 + t88;
t564 = t361 * t103 + t575 * t84;
t8 = -qJD(5) * t564 - t361 * t26 + t50 * t575;
t552 = -pkin(11) * (-t361 * t519 + t365 * t485) + t361 * t95 - t339 * t517 + t610 * t575;
t567 = qJD(5) * t595 + t611 * t361 + t609 * t575;
t269 = t316 * t575 - t468;
t580 = t153 * t528 - t155 * t527 + t268 * t66 - t269 * t67;
t579 = t124 * t268 + t153 * t526 + t188 * t527 + t315 * t67;
t578 = t155 ^ 2;
t577 = t188 ^ 2;
t367 = qJD(1) ^ 2;
t573 = pkin(11) * t365;
t572 = pkin(12) * t124;
t571 = t362 * pkin(11);
t9 = t67 * pkin(5) + t66 * qJ(6) - t155 * qJD(6) + t18;
t570 = t9 * t361;
t569 = -t526 * qJ(6) - qJD(6) * t315 + t566;
t568 = t526 * pkin(5) - t567;
t565 = -t527 * pkin(5) - t528 * qJ(6) + qJD(6) * t269 - t557;
t73 = t365 * t128 - t362 * t131;
t69 = -pkin(4) * t407 - t73;
t33 = t153 * pkin(5) - t155 * qJ(6) + t69;
t563 = t155 * t33;
t562 = t18 * t361;
t556 = t607 * qJ(6) - t365 * qJD(6) + t553;
t555 = -t607 * pkin(5) - t552;
t432 = -pkin(5) * t361 + qJ(6) * t575;
t419 = pkin(11) - t432;
t433 = pkin(5) * t575 + t361 * qJ(6);
t111 = -t362 * t147 + t179 * t365;
t94 = -pkin(4) * t232 - t111;
t554 = -pkin(5) * t175 + qJ(6) * t176 + (qJD(5) * t433 - qJD(6) * t575) * t362 + t419 * t518 - t94;
t551 = -t361 * qJD(6) - t188 * t432 - t74;
t133 = pkin(4) * t191 + pkin(12) * t189;
t55 = t361 * t133 + t575 * t73;
t548 = qJ(6) * t124;
t547 = t124 * t205;
t546 = t124 * t315;
t545 = t155 * t153;
t543 = t188 * t191;
t542 = t191 * t189;
t539 = t232 * t230;
t538 = t356 * t367;
t535 = t360 * t364;
t530 = t365 * t124;
t31 = -t361 * t70 + t575 * t81;
t529 = qJD(6) - t31;
t298 = pkin(11) * t498 + t361 * t339;
t523 = t364 ^ 2 - t366 ^ 2;
t516 = t130 * qJD(4);
t3 = t575 * t17 + t361 * t38 + t81 * t485 - t517 * t70;
t1 = qJD(6) * t188 + t3 + t548;
t512 = t1 * t575;
t511 = t3 * t575;
t510 = t9 * t575;
t508 = t18 * t575;
t24 = -t188 * pkin(5) + t529;
t505 = t575 * t24;
t504 = t575 * t31;
t503 = t366 * t538;
t492 = t575 * t339;
t488 = qJD(4) + t525;
t487 = t153 ^ 2 - t578;
t481 = t366 * t513;
t87 = t143 * t365 - t362 * t150;
t214 = -t362 * t303 + t304 * t365;
t473 = t188 * t361;
t472 = t407 * t362;
t471 = pkin(12) * t494;
t470 = pkin(12) * t485;
t469 = t364 * t503;
t458 = t360 * t367 * t550;
t457 = pkin(1) * t603;
t208 = pkin(4) * t499 - t214;
t454 = (qJD(5) * t153 - t66) * pkin(12);
t171 = t206 * t361 - t254 * t575;
t172 = t206 * t575 + t254 * t361;
t77 = qJD(5) * t172 + t137 * t361 - t198 * t575;
t452 = t153 * t77 + t171 * t67;
t451 = -t21 * t362 - t365 * t420;
t446 = t356 * t364 * t481;
t443 = 0.2e1 * t476 + qJD(2);
t30 = -t362 * t108 + t122 * t365 - t143 * t519 - t150 * t518;
t437 = t365 * t486 - t176;
t83 = -pkin(4) * t254 - t87;
t431 = -t25 * t361 + t505;
t430 = -t32 * t361 - t504;
t54 = t133 * t575 - t361 * t73;
t43 = t103 * t575 - t361 * t84;
t7 = t103 * t485 + t575 * t26 + t361 * t50 - t517 * t84;
t427 = -t191 * t153 - t495;
t151 = t207 * t575 - t361 * t209;
t421 = t153 * t527 + t268 * t67;
t299 = -pkin(9) * t463 + t340;
t416 = t366 * (t475 + qJD(2));
t27 = -pkin(4) * t198 - t30;
t398 = t153 * t473 - t506;
t395 = qJD(4) * t407;
t312 = t524 * qJD(2);
t78 = t137 * t575 + t198 * t361 - t206 * t517 + t254 * t485;
t394 = t153 * t78 + t155 * t77 - t171 * t66 + t172 * t67;
t393 = t254 * t397;
t392 = t124 * t171 + t136 * t153 + t188 * t77 + t205 * t67;
t385 = t364 * (qJD(2) * t460 + t484);
t382 = qJD(3) * t387;
t380 = t67 * t361 * t362 + (t362 * t485 + t455) * t153;
t379 = t230 * t407 + t395;
t370 = t359 * t372;
t369 = t359 * t371;
t368 = t67 - t544;
t355 = t359 ^ 2;
t335 = -pkin(4) - t433;
t319 = -pkin(9) * t535 + t351;
t311 = -pkin(9) * t490 + t344;
t306 = -pkin(9) * t491 + t343;
t305 = t419 * t362;
t300 = qJD(1) * t312;
t297 = -pkin(11) * t532 + t492;
t279 = -t492 + (pkin(11) * t361 + pkin(5)) * t365;
t278 = -qJ(6) * t365 + t298;
t193 = -t359 * t247 + t272;
t157 = pkin(5) * t268 - qJ(6) * t269 + t208;
t135 = -t315 * pkin(5) - t151;
t134 = qJ(6) * t315 + t595;
t118 = t359 * t496 + t391;
t100 = pkin(5) * t155 + qJ(6) * t153;
t68 = t188 * t472 - t530;
t63 = pkin(12) * t506;
t62 = t188 * t526 + t546;
t60 = t136 * t188 + t547;
t51 = pkin(5) * t171 - qJ(6) * t172 + t83;
t42 = -t191 * pkin(5) - t54;
t41 = qJ(6) * t191 + t55;
t40 = t153 * t188 - t66;
t39 = -t155 * t191 + t188 * t409 + t533;
t35 = -t205 * pkin(5) - t43;
t34 = qJ(6) * t205 + t564;
t28 = t155 * t409 - t558;
t22 = -t155 * t528 - t269 * t66;
t19 = -t362 * t507 + (-t362 * t517 + t437) * t155;
t14 = t155 * t78 - t172 * t66;
t13 = t66 * t365 + t437 * t188 + (t155 * t407 - t410) * t362;
t12 = t124 * t269 + t155 * t526 - t188 * t528 - t315 * t66;
t11 = t124 * t172 + t136 * t155 + t188 * t78 - t205 * t66;
t10 = pkin(5) * t77 - qJ(6) * t78 - qJD(6) * t172 + t27;
t6 = -t136 * pkin(5) - t8;
t5 = qJ(6) * t136 + qJD(6) * t205 + t7;
t4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t446, t523 * t603, t443 * qJD(2) * t534, -0.2e1 * t446, -t443 * t490, 0, -t300 * t550 - t312 * t444 + t364 * t457, -t299 * t550 - t311 * t444 + t366 * t457 (t299 * t366 + t300 * t364 + (-t306 * t366 - t308 * t364) * qJD(2) + (t311 * t366 + t312 * t364 + (-t319 * t366 - t364 * t524) * qJD(2)) * qJD(1)) * t360, t299 * t524 - t300 * t319 - t306 * t312 + t308 * t311, -t192 * t255 + t199 * t232, t192 * t254 - t232 * t198 - t199 * t230 + t255 * t372, -t199 * t387 + t192 * t314 + (qJD(1) * t255 + t232) * t465, t230 * t198 + t254 * t374 + t393, t198 * t387 + t314 * t397 + (-t230 * t359 * t521 + (t314 * t389 + (-t254 * t536 + t314 * t400) * qJD(2)) * qJD(1)) * t360 (-qJD(2) * t387 - t314 * t513) * t359 * t535, -t102 * t314 - t118 * t387 + t147 * t465 + t165 * t445 + t185 * t198 + t193 * t254 + t195 * t371 + t201 * t230, t117 * t387 - t399 * t314 + t201 * t232 - t195 * t192 + t193 * t255 + t185 * t199 + (-qJD(1) * t166 - t148) * t465, -t102 * t255 - t117 * t230 - t118 * t232 - t147 * t199 - t148 * t198 + t165 * t192 + t166 * t372 + t254 * t399, t102 * t165 + t117 * t148 + t118 * t147 - t166 * t399 + t185 * t201 + t193 * t195, t191 * t137 - t206 * t376, -t206 * t124 - t191 * t136 - t137 * t189 + t205 * t376, t137 * t407 + t191 * t198 + t206 * t371 - t254 * t376, t136 * t189 + t547, -t136 * t488 - t205 * t397 - t124 * t254 - t189 * t198 + (-t205 * t385 + (-t136 * t364 - t205 * t416) * t363) * t522, t393 + t488 * t198 + (t254 * t385 + (t364 * t198 + t254 * t416) * t363) * t522, t109 * t189 + t149 * t124 + t130 * t136 + t73 * t198 + t97 * t205 + t21 * t254 + t30 * t407 + t371 * t87, t109 * t191 + t130 * t137 - t149 * t376 - t74 * t198 + t97 * t206 + t254 * t420 - t29 * t407 + t372 * t88, -t88 * t124 - t74 * t136 - t73 * t137 - t29 * t189 - t30 * t191 + t205 * t420 - t21 * t206 + t376 * t87, t109 * t130 + t149 * t97 + t21 * t87 + t29 * t74 + t30 * t73 - t420 * t88, t14, -t394, t11, t452, -t392, t60, t124 * t43 + t136 * t31 + t153 * t27 + t171 * t18 + t188 * t8 - t205 * t477 + t67 * t83 + t69 * t77, -t124 * t564 - t136 * t32 + t155 * t27 + t172 * t18 - t188 * t7 - t205 * t3 - t66 * t83 + t69 * t78, -t153 * t7 - t155 * t8 - t171 * t3 + t172 * t477 - t31 * t78 - t32 * t77 + t43 * t66 - t564 * t67, t18 * t83 + t27 * t69 + t3 * t564 + t31 * t8 + t32 * t7 - t43 * t477, t14, t11, t394, t60, t392, t452, t10 * t153 - t124 * t35 - t136 * t24 + t171 * t9 - t188 * t6 - t2 * t205 + t33 * t77 + t51 * t67, -t1 * t171 - t153 * t5 + t155 * t6 + t172 * t2 + t24 * t78 - t25 * t77 - t34 * t67 - t35 * t66, t1 * t205 - t10 * t155 + t124 * t34 + t136 * t25 - t172 * t9 + t188 * t5 - t33 * t78 + t51 * t66, t1 * t34 + t10 * t33 + t2 * t35 + t24 * t6 + t25 * t5 + t51 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t469, t523 * t538, -t366 * t458, t469, t364 * t458, 0, -t360 * pkin(9) * t481 + t308 * t444 + (-qJD(2) * t476 + t538) * t364 * pkin(1), pkin(1) * t503 + t306 * t444 - t299, 0, 0, -t192 * t537 + t232 * t588, -t192 * t499 - t230 * t588 + t232 * t593 + t363 * t370, t355 * t363 * t463 - t192 * t549 + t283 * t387 + (-t232 * t491 - t382 * t576) * t359, -t230 * t593 + t576 * t370, t355 * t364 * t441 + t230 * t467 - t282 * t387 + t372 * t549 + t382 * t537 -(qJD(1) * t453 - t514) * t467, -pkin(2) * t369 + t102 * t549 - t147 * t467 - t185 * t593 - t193 * t499 - t200 * t230 + t318 * t445 + t387 * t590, t399 * t549 - t200 * t232 - t185 * t283 + (t185 * t484 + pkin(2) * t192 + t193 * t363 + (-qJD(2) * t320 + t148) * t491) * t359 + t592 * t387, -t102 * t537 - t147 * t588 + t148 * t593 + t318 * t192 - t230 * t592 + t232 * t590 + t320 * t372 - t399 * t499, -pkin(2) * t193 * t359 + t102 * t318 - t147 * t590 + t148 * t592 - t185 * t200 - t320 * t399, -t191 * t594 - t316 * t376, -t316 * t124 + t189 * t594 - t191 * t526 + t315 * t376, -t191 * t593 + t316 * t371 + t376 * t499 - t407 * t594, t189 * t526 + t546, t124 * t499 + t189 * t593 - t315 * t371 - t407 * t526, -t576 * t369 - t407 * t593, t302 * t124 + t130 * t526 + t189 * t591 - t21 * t499 + t214 * t371 + t97 * t315 + t407 * t596 - t593 * t73, -t130 * t594 + t191 * t591 + t215 * t372 - t302 * t376 + t97 * t316 - t407 * t597 - t420 * t499 + t593 * t74, -t215 * t124 - t189 * t597 - t191 * t596 - t21 * t316 + t214 * t376 + t315 * t420 - t526 * t74 + t594 * t73, t130 * t591 + t21 * t214 - t215 * t420 + t302 * t97 + t596 * t73 + t597 * t74, t22, t580, t12, t421, -t579, t62, t124 * t151 + t153 * t557 + t18 * t268 - t188 * t567 + t208 * t67 + t31 * t526 - t315 * t477 + t527 * t69, -t124 * t595 + t155 * t557 + t18 * t269 + t188 * t566 - t208 * t66 - t3 * t315 - t32 * t526 - t528 * t69, t151 * t66 + t153 * t566 + t155 * t567 - t268 * t3 + t269 * t477 + t31 * t528 - t32 * t527 - t595 * t67, -t151 * t477 + t18 * t208 + t3 * t595 - t31 * t567 - t32 * t566 + t557 * t69, t22, t12, -t580, t62, t579, t421, -t124 * t135 - t153 * t565 + t157 * t67 + t188 * t568 - t2 * t315 - t24 * t526 + t268 * t9 + t33 * t527, -t1 * t268 - t134 * t67 - t135 * t66 + t153 * t569 - t155 * t568 + t2 * t269 - t24 * t528 - t25 * t527, t1 * t315 + t124 * t134 + t155 * t565 + t157 * t66 - t188 * t569 + t25 * t526 - t269 * t9 + t33 * t528, t1 * t134 + t135 * t2 + t157 * t9 - t24 * t568 - t25 * t569 - t33 * t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t539, -t230 ^ 2 + t232 ^ 2, -t230 * t387 - t192, -t539, -t232 * t387 + t372, t445, -t148 * t387 - t185 * t232 + t102, -t147 * t387 + t185 * t230 + t399, 0, 0, t408 * t362 + (t191 * t407 - t362 * t381) * t365, -t191 * t541 - t365 * t376 + (-t124 - t515) * t362 + t587 * t189, -t191 * t232 + t362 * t589 + t365 * t379, t189 * t472 - t530, t189 * t232 - t362 * t379 + t365 * t589, -t407 * t232, -pkin(3) * t124 - t111 * t407 + t130 * t541 - t148 * t189 - t73 * t232 + t362 * t516 - t97 * t365 - t371 * t571 - t395 * t573, pkin(3) * t376 + t130 * t540 - t148 * t191 + t74 * t232 + t97 * t362 + t365 * t516 + t372 * t573 + t407 * t598, -pkin(11) * t530 + t111 * t191 + t598 * t189 - t376 * t571 + t515 * t573 + t587 * t73 - t607 * t74 + t451, -pkin(3) * t97 - t111 * t73 - t112 * t74 - t130 * t148 + ((-t74 * t362 - t73 * t365) * qJD(4) + t451) * pkin(11), t19, -t605, t13, t380, -t604, t68, t297 * t124 - t94 * t153 - t69 * t175 + t552 * t188 + (t477 + (pkin(11) * t153 + t361 * t69) * qJD(4)) * t365 + (pkin(11) * t67 + t31 * t407 + t485 * t69 + t562) * t362, -t298 * t124 - t94 * t155 - t69 * t176 - t553 * t188 + (t3 + (pkin(11) * t155 + t575 * t69) * qJD(4)) * t365 + (-pkin(11) * t66 - t32 * t407 - t517 * t69 + t508) * t362, t32 * t175 + t31 * t176 + t297 * t66 - t298 * t67 - t552 * t155 - t553 * t153 + t430 * t518 + (t575 * t477 - t3 * t361 + (t31 * t361 - t32 * t575) * qJD(5)) * t362, -t297 * t477 + t298 * t3 - t69 * t94 + t553 * t32 + t552 * t31 + (t18 * t362 + t518 * t69) * pkin(11), t19, t13, t605, t68, t604, t380, -t279 * t124 + t2 * t365 + t305 * t67 + t455 * t33 - t555 * t188 + t554 * t153 + (-t24 * t407 + t33 * t485 + t570) * t362, t25 * t175 - t24 * t176 - t278 * t67 - t279 * t66 + t555 * t155 - t556 * t153 + t431 * t518 + (t575 * t2 - t1 * t361 + (-t24 * t361 - t25 * t575) * qJD(5)) * t362, -t1 * t365 + t278 * t124 + t305 * t66 - t437 * t33 + t556 * t188 - t554 * t155 + (t25 * t407 + t33 * t517 - t510) * t362, t1 * t278 + t2 * t279 + t24 * t555 + t25 * t556 + t305 * t9 + t33 * t554; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t542, -t189 ^ 2 + t191 ^ 2, t189 * t407 - t376, -t542, t191 * t230 + t474, t371, -t130 * t191 + t407 * t74 + t21, t130 * t189 + t407 * t73 + t420, 0, 0, t28, -t606, t39, t398, -t361 * t577 - t427, -t543, -t508 - pkin(4) * t67 - t74 * t153 - t31 * t191 + (-t470 - t54) * t188 + (t188 * t69 - t572) * t361, pkin(4) * t66 - t74 * t155 + t55 * t188 + t32 * t191 + t409 * t69 + t562 + t601, -t31 * t493 + t511 + t55 * t153 + t54 * t155 - t63 + (t471 - t504) * qJD(5) + (t454 - t436) * t361, -t18 * pkin(4) - t31 * t54 - t32 * t55 - t69 * t74 + (qJD(5) * t430 + t361 * t477 + t511) * pkin(12), t28, t39, t606, -t543, t188 * t473 + t427, t398, -t510 + t24 * t191 + t335 * t67 + (-t470 + t42) * t188 + t551 * t153 + (t188 * t33 - t572) * t361, t24 * t493 + t512 + t41 * t153 - t42 * t155 - t63 + (t471 + t505) * qJD(5) + (t454 + t600) * t361, -t155 * t551 - t41 * t188 - t25 * t191 - t33 * t409 + t335 * t66 - t570 - t601, -t24 * t42 - t25 * t41 + t9 * t335 + t551 * t33 + (qJD(5) * t431 + t2 * t361 + t512) * pkin(12); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t545, -t487, t40, -t545, -t368, t124, -t155 * t69 + t436, t153 * t69 + t188 * t31 - t3, 0, 0, t545, t40, t487, t124, t368, -t545, -t100 * t153 + t436 - t563 + 0.2e1 * t574, pkin(5) * t66 - qJ(6) * t67 + (t25 - t32) * t155 + (t24 - t529) * t153, 0.2e1 * t548 + t100 * t155 - t153 * t33 + (0.2e1 * qJD(6) - t31) * t188 + t3, -pkin(5) * t2 + qJ(6) * t1 - t100 * t33 - t24 * t32 + t25 * t529; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t545 - t124, t40, -t577 - t578, t563 + t600;];
tauc_reg  = t4;
