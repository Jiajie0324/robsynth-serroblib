% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6PRRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,theta1]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 00:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6PRRRRP6_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP6_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP6_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRRP6_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRRP6_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRRP6_invdynJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 00:34:34
% EndTime: 2019-03-09 00:35:08
% DurationCPUTime: 19.37s
% Computational Cost: add. (16602->854), mult. (42426->1146), div. (0->0), fcn. (36371->14), ass. (0->383)
t317 = sin(pkin(7));
t322 = sin(qJ(3));
t326 = cos(qJ(3));
t392 = (pkin(3) * t322 - pkin(10) * t326) * t317;
t318 = sin(pkin(6));
t323 = sin(qJ(2));
t503 = t318 * t323;
t463 = qJD(1) * t503;
t580 = qJD(3) * t392 - t317 * t463;
t327 = cos(qJ(2));
t523 = cos(pkin(7));
t449 = t322 * t523;
t366 = -t323 * t449 + t326 * t327;
t240 = t366 * t318;
t448 = t326 * t523;
t506 = t317 * t322;
t269 = pkin(2) * t448 - pkin(9) * t506;
t258 = qJD(3) * t269;
t492 = -qJD(1) * t240 + t258;
t325 = cos(qJ(4));
t543 = pkin(10) * t325;
t504 = t317 * t326;
t270 = pkin(2) * t449 + pkin(9) * t504;
t250 = pkin(10) * t523 + t270;
t418 = -pkin(3) * t326 - pkin(10) * t322;
t251 = (-pkin(2) + t418) * t317;
t321 = sin(qJ(4));
t480 = qJD(4) * t325;
t482 = qJD(4) * t321;
t567 = -t250 * t482 + t251 * t480 + t580 * t321 + t492 * t325;
t364 = t322 * t327 + t323 * t448;
t239 = t364 * t318;
t259 = qJD(3) * t270;
t491 = -qJD(1) * t239 + t259;
t487 = qJD(1) * t327;
t286 = qJD(2) * pkin(2) + t318 * t487;
t446 = t523 * t286;
t319 = cos(pkin(6));
t488 = qJD(1) * t319;
t360 = t317 * t488 + t446;
t441 = t523 * qJD(2);
t398 = t441 + qJD(3);
t372 = qJD(4) * t398;
t437 = t523 * qJDD(2);
t395 = t437 + qJDD(3);
t483 = qJD(3) * t326;
t458 = t321 * t483;
t474 = qJDD(2) * t322;
t145 = (qJD(2) * (t322 * t480 + t458) + t321 * t474) * t317 + t321 * t372 - t325 * t395;
t135 = qJDD(5) + t145;
t579 = pkin(10) * t482;
t484 = qJD(3) * t322;
t460 = t317 * t484;
t578 = -pkin(11) * t460 - t567;
t266 = t321 * t506 - t325 * t523;
t459 = t317 * t483;
t204 = qJD(4) * t266 - t325 * t459;
t505 = t317 * t325;
t267 = t321 * t523 + t322 * t505;
t205 = qJD(4) * t267 + t317 * t458;
t577 = t205 * pkin(4) + t204 * pkin(11) + t491;
t417 = pkin(4) * t321 - pkin(11) * t325;
t485 = qJD(2) * t326;
t486 = qJD(2) * t317;
t273 = pkin(9) * t486 + t463;
t495 = t326 * t273;
t576 = -qJD(5) * t543 - t322 * t446 - t495 - (t322 * t488 + t417 * t485) * t317 + t417 * qJD(4);
t566 = -t250 * t480 - t251 * t482 - t492 * t321 + t580 * t325;
t305 = t317 * t485;
t410 = t305 - qJD(4);
t475 = qJD(2) * qJD(3);
t455 = t326 * t475;
t378 = t455 + t474;
t335 = t317 * t378 + t372;
t462 = t322 * t486;
t429 = t321 * t462;
t358 = qJD(4) * t429 - t321 * t395;
t562 = t335 * t325 - t358;
t575 = -qJD(5) * t410 + t562;
t428 = t321 * t305;
t574 = t428 - t482;
t236 = -t325 * t398 + t429;
t226 = qJD(5) + t236;
t544 = pkin(9) * t317;
t573 = qJDD(2) * t544 + (qJD(2) * t487 + qJDD(1) * t323) * t318 + t360 * qJD(3);
t238 = t321 * t398 + t325 * t462;
t320 = sin(qJ(5));
t324 = cos(qJ(5));
t187 = t238 * t320 + t324 * t410;
t189 = t324 * t238 - t320 * t410;
t427 = t325 * t305;
t221 = t320 * t427 - t324 * t462;
t497 = t324 * t326;
t222 = (t320 * t322 + t325 * t497) * t486;
t456 = t322 * t475;
t473 = qJDD(2) * t326;
t303 = t317 * t473;
t471 = qJDD(4) - t303;
t371 = t317 * t456 + t471;
t235 = t324 * t371;
t63 = qJD(5) * t189 + t562 * t320 - t235;
t535 = t324 * t63;
t479 = qJD(5) * t320;
t62 = t238 * t479 - t320 * t371 - t575 * t324;
t536 = t320 * t62;
t572 = ((t187 * t320 - t189 * t324) * qJD(5) - t535 + t536) * t321 - (t187 * t324 + t189 * t320) * t480 + t187 * t222 + t189 * t221;
t415 = t320 * t480 - t221;
t478 = qJD(5) * t324;
t518 = t135 * t320;
t571 = -t415 * t226 + (t187 * t410 - t226 * t478 - t518) * t321 + t325 * t63;
t439 = t187 * t226;
t513 = t189 * t226;
t570 = (t63 + t513) * t320 + (t62 + t439) * t324;
t169 = -t322 * t273 + t326 * t360;
t256 = qJD(2) * t392;
t114 = t325 * t169 + t321 * t256;
t104 = pkin(11) * t462 + t114;
t547 = pkin(4) * t325;
t297 = -pkin(11) * t321 - pkin(3) - t547;
t481 = qJD(4) * t324;
t530 = -t321 * t481 * pkin(10) - t324 * t104 + t297 * t478 + t576 * t320;
t249 = -pkin(3) * t523 - t269;
t158 = t266 * pkin(4) - t267 * pkin(11) + t249;
t172 = t325 * t250 + t321 * t251;
t160 = -pkin(11) * t504 + t172;
t528 = t158 * t478 - t160 * t479 + t577 * t320 - t578 * t324;
t524 = -pkin(4) * t460 - t566;
t565 = t238 * t410;
t564 = t114 + t579;
t563 = t320 * t158 + t324 * t160;
t521 = sin(pkin(12));
t443 = t521 * t323;
t522 = cos(pkin(12));
t444 = t522 * t327;
t355 = -t319 * t444 + t443;
t452 = t318 * t522;
t561 = t317 * t452 + t355 * t523;
t442 = t521 * t327;
t445 = t522 * t323;
t356 = t319 * t442 + t445;
t451 = t318 * t521;
t560 = -t317 * t451 + t356 * t523;
t559 = (qJDD(3) + 0.2e1 * t437) * t317;
t447 = t327 * t523;
t558 = -t322 * t323 + t326 * t447;
t557 = t427 - t480;
t412 = pkin(5) * t324 + qJ(6) * t320;
t170 = t322 * t360 + t495;
t151 = pkin(10) * t398 + t170;
t450 = t319 * t523;
t302 = qJD(1) * t450;
t185 = t302 + (qJD(2) * t418 - t286) * t317;
t84 = -t321 * t151 + t325 * t185;
t78 = pkin(4) * t410 - t84;
t34 = t187 * pkin(5) - t189 * qJ(6) + t78;
t542 = pkin(11) * t135;
t556 = t226 * t34 - t542;
t517 = t135 * t324;
t548 = t226 ^ 2;
t553 = -t187 * t238 + t320 * t548 - t517;
t529 = -t297 * t479 + (t104 + t579) * t320 + t576 * t324;
t527 = -qJD(5) * t563 + t578 * t320 + t577 * t324;
t549 = t189 ^ 2;
t328 = qJD(2) ^ 2;
t546 = pkin(5) * t135;
t541 = pkin(11) * t189;
t540 = qJ(6) * t205 + qJD(6) * t266 + t528;
t539 = -pkin(5) * t205 - t527;
t85 = t325 * t151 + t321 * t185;
t79 = -pkin(11) * t410 + t85;
t150 = -pkin(3) * t398 - t169;
t87 = t236 * pkin(4) - t238 * pkin(11) + t150;
t31 = t320 * t87 + t324 * t79;
t25 = qJ(6) * t226 + t31;
t538 = t226 * t25;
t537 = t226 * t31;
t533 = -t574 * qJ(6) - qJD(6) * t325 + t530;
t532 = t574 * pkin(5) - t529;
t113 = -t321 * t169 + t256 * t325;
t103 = -pkin(4) * t462 - t113;
t411 = pkin(5) * t320 - qJ(6) * t324;
t394 = pkin(10) + t411;
t531 = -pkin(5) * t221 + qJ(6) * t222 - t103 + (qJD(5) * t412 - qJD(6) * t324) * t321 + t394 * t480;
t206 = t267 * t320 + t317 * t497;
t106 = qJD(5) * t206 + t324 * t204 - t320 * t460;
t468 = t320 * t504;
t107 = -qJD(5) * t468 - t204 * t320 + t267 * t478 - t324 * t460;
t207 = t267 * t324 - t468;
t526 = pkin(5) * t107 + qJ(6) * t106 - qJD(6) * t207 + t524;
t525 = -qJD(6) * t320 + t226 * t411 - t85;
t168 = pkin(4) * t238 + pkin(11) * t236;
t43 = t320 * t168 + t324 * t84;
t520 = qJ(6) * t135;
t264 = t319 * t445 + t442;
t152 = t264 * t322 + t561 * t326;
t516 = t152 * t321;
t265 = -t319 * t443 + t444;
t154 = t265 * t322 + t560 * t326;
t515 = t154 * t321;
t514 = t189 * t187;
t200 = -t558 * t318 - t319 * t504;
t512 = t200 * t321;
t511 = t226 * t238;
t510 = t238 * t236;
t509 = t297 * t324;
t313 = t317 ^ 2;
t508 = t313 * t328;
t507 = t317 * t321;
t502 = t318 * t327;
t501 = t320 * t325;
t499 = t323 * t328;
t498 = t324 * t325;
t496 = t325 * t145;
t30 = -t320 * t79 + t324 * t87;
t494 = qJD(6) - t30;
t493 = qJDD(1) - g(3);
t469 = t317 * t503;
t490 = pkin(2) * t502 + pkin(9) * t469;
t247 = pkin(10) * t498 + t320 * t297;
t315 = t322 ^ 2;
t316 = t326 ^ 2;
t489 = t315 - t316;
t476 = t238 * qJD(4);
t147 = t152 * pkin(3);
t467 = -pkin(11) * t516 - t152 * t547 - t147;
t148 = t154 * pkin(3);
t466 = -pkin(11) * t515 - t154 * t547 - t148;
t199 = t200 * pkin(3);
t465 = -pkin(11) * t512 - t200 * t547 - t199;
t461 = qJD(2) * t503;
t457 = t187 ^ 2 - t549;
t454 = qJDD(1) * t317 * t319;
t304 = qJDD(1) * t502;
t426 = qJD(1) * t461;
t245 = qJDD(2) * pkin(2) + t304 - t426;
t301 = qJDD(1) * t450;
t377 = t456 - t473;
t119 = t301 + (pkin(3) * t377 - pkin(10) * t378 - t245) * t317;
t357 = -t245 * t449 + t273 * t484 - t322 * t454 - t573 * t326;
t60 = pkin(10) * t395 - t357;
t380 = -t321 * t119 + t151 * t482 - t185 * t480 - t325 * t60;
t13 = pkin(11) * t371 - t380;
t393 = -t245 * t448 + t273 * t483 + t573 * t322 - t326 * t454;
t61 = -pkin(3) * t395 + t393;
t28 = t145 * pkin(4) - pkin(11) * t562 + t61;
t4 = -t320 * t13 + t324 * t28 - t79 * t478 - t87 * t479;
t171 = -t321 * t250 + t251 * t325;
t440 = t326 * t410;
t438 = t226 * t324;
t436 = qJD(4) * t410;
t434 = -t325 * t119 + t151 * t480 + t185 * t482 + t321 * t60;
t433 = t322 * t326 * t508;
t430 = t317 * t461;
t424 = t322 * t455;
t419 = t317 * t328 * t523;
t416 = g(1) * t265 + g(2) * t264;
t159 = pkin(4) * t504 - t171;
t414 = t324 * t480 - t222;
t413 = (qJD(5) * t187 - t62) * pkin(11);
t24 = -pkin(5) * t226 + t494;
t409 = t24 * t324 - t25 * t320;
t408 = -t30 * t324 - t31 * t320;
t405 = t107 * t187 + t206 * t63;
t42 = t168 * t324 - t320 * t84;
t365 = t322 * t447 + t323 * t326;
t201 = t318 * t365 + t319 * t506;
t367 = t317 * t502 - t450;
t157 = t201 * t325 - t321 * t367;
t93 = t157 * t324 + t200 * t320;
t92 = t157 * t320 - t200 * t324;
t76 = t158 * t324 - t160 * t320;
t397 = 0.2e1 * t441 + qJD(3);
t396 = t240 * pkin(3) + pkin(10) * t239 + t490;
t3 = t324 * t13 + t320 * t28 + t87 * t478 - t479 * t79;
t389 = t321 * t410;
t388 = t226 * t78 - t542;
t137 = t319 * t460 + (qJD(2) * t364 + qJD(3) * t365) * t318;
t138 = t319 * t459 + (t366 * qJD(2) + t558 * qJD(3)) * t318;
t156 = t201 * t321 + t325 * t367;
t54 = -qJD(4) * t156 + t138 * t325 + t321 * t430;
t19 = qJD(5) * t93 - t137 * t324 + t320 * t54;
t20 = -qJD(5) * t92 + t137 * t320 + t324 * t54;
t387 = -t20 * t187 + t189 * t19 - t62 * t92 - t93 * t63;
t115 = -t200 * t501 - t201 * t324;
t153 = t264 * t326 - t561 * t322;
t65 = -t152 * t501 - t153 * t324;
t155 = t265 * t326 - t560 * t322;
t67 = -t154 * t501 - t155 * t324;
t386 = g(1) * t67 + g(2) * t65 + g(3) * t115;
t116 = -t200 * t498 + t201 * t320;
t66 = -t152 * t498 + t153 * t320;
t68 = -t154 * t498 + t155 * t320;
t385 = -g(1) * t68 - g(2) * t66 - g(3) * t116;
t192 = t240 * t325 + t321 * t469;
t125 = t192 * t320 - t239 * t324;
t180 = -t264 * t449 - t326 * t355;
t121 = t180 * t325 + t264 * t507;
t179 = t264 * t448 - t322 * t355;
t70 = t121 * t320 - t179 * t324;
t182 = -t265 * t449 - t326 * t356;
t123 = t182 * t325 + t265 * t507;
t181 = t265 * t448 - t322 * t356;
t72 = t123 * t320 - t181 * t324;
t384 = -g(1) * t72 - g(2) * t70 - g(3) * t125;
t126 = t192 * t324 + t239 * t320;
t71 = t121 * t324 + t179 * t320;
t73 = t123 * t324 + t181 * t320;
t383 = -g(1) * t73 - g(2) * t71 - g(3) * t126;
t202 = t317 * t355 - t452 * t523;
t94 = -t153 * t321 + t202 * t325;
t203 = t317 * t356 + t451 * t523;
t96 = -t155 * t321 + t203 * t325;
t382 = -g(1) * t96 - g(2) * t94 + g(3) * t156;
t95 = t153 * t325 + t202 * t321;
t97 = t155 * t325 + t203 * t321;
t381 = -g(1) * t97 - g(2) * t95 - g(3) * t157;
t53 = qJD(4) * t157 + t138 * t321 - t325 * t430;
t379 = -t135 * t92 + t156 * t63 + t53 * t187 - t19 * t226;
t120 = t180 * t321 - t264 * t505;
t122 = t182 * t321 - t265 * t505;
t191 = t240 * t321 - t325 * t469;
t376 = -g(1) * t122 - g(2) * t120 - g(3) * t191;
t375 = g(1) * t154 + g(2) * t152 + g(3) * t200;
t374 = g(1) * t155 + g(2) * t153 + g(3) * t201;
t373 = g(1) * t181 + g(2) * t179 + g(3) * t239;
t368 = -pkin(11) * t535 + t381;
t260 = t355 * pkin(2);
t363 = t180 * pkin(3) + pkin(10) * t179 + t264 * t544 - t260;
t261 = t356 * pkin(2);
t362 = t182 * pkin(3) + pkin(10) * t181 + t265 * t544 - t261;
t361 = t320 * t439 - t535;
t359 = t192 * pkin(4) + pkin(11) * t191 + t396;
t354 = t317 * t367;
t352 = t135 * t93 + t156 * t62 - t189 * t53 + t20 * t226;
t47 = -t152 * t324 + t320 * t95;
t49 = -t154 * t324 + t320 * t97;
t351 = g(1) * t49 + g(2) * t47 + g(3) * t92 + t4;
t350 = t106 * t187 - t107 * t189 + t206 * t62 - t207 * t63;
t349 = pkin(11) * qJD(5) * t226 - t382;
t348 = t107 * t226 + t135 * t206 + t187 * t205 + t266 * t63;
t14 = -pkin(4) * t371 + t434;
t5 = t63 * pkin(5) + t62 * qJ(6) - t189 * qJD(6) + t14;
t347 = -t349 - t5;
t346 = t14 + t349;
t345 = t121 * pkin(4) + pkin(11) * t120 + t363;
t344 = t123 * pkin(4) + pkin(11) * t122 + t362;
t343 = t354 * t475;
t342 = t321 * t434 - t325 * t380 - t374;
t48 = t152 * t320 + t324 * t95;
t50 = t154 * t320 + t324 * t97;
t339 = -g(1) * t50 - g(2) * t48 - g(3) * t93 + t3;
t338 = t189 * t34 + qJDD(6) - t351;
t337 = t320 * t321 * t63 + (t321 * t478 + t415) * t187;
t336 = t313 * t318 * t499 - qJDD(2) * t354;
t329 = t238 * t478 + t575 * t320 - t235 - t513;
t291 = -pkin(4) - t412;
t255 = t394 * t321;
t246 = -pkin(10) * t501 + t509;
t224 = -t286 * t317 + t302;
t214 = -t509 + (pkin(10) * t320 + pkin(5)) * t325;
t213 = -qJ(6) * t325 + t247;
t197 = -t245 * t317 + t301;
t149 = t156 * pkin(4);
t102 = pkin(5) * t189 + qJ(6) * t187;
t91 = t96 * pkin(4);
t90 = t94 * pkin(4);
t80 = pkin(5) * t206 - qJ(6) * t207 + t159;
t64 = -t135 * t325 - t226 * t389;
t56 = t135 * t266 + t205 * t226;
t52 = -pkin(5) * t266 - t76;
t51 = qJ(6) * t266 + t563;
t37 = -pkin(5) * t238 - t42;
t36 = qJ(6) * t238 + t43;
t35 = -t62 + t439;
t33 = -t189 * t238 + t226 * t438 + t518;
t29 = t189 * t438 - t536;
t23 = -t106 * t189 - t207 * t62;
t21 = -t321 * t324 * t62 + (-t321 * t479 + t414) * t189;
t7 = t325 * t62 + t414 * t226 + (-t189 * t410 - t226 * t479 + t517) * t321;
t6 = -t106 * t226 + t135 * t207 + t189 * t205 - t266 * t62;
t2 = qJDD(6) - t4 - t546;
t1 = qJD(6) * t226 + t3 + t520;
t8 = [0, 0, 0, 0, 0, 0, 0, 0, 0, t493, 0, 0, 0, 0, 0, 0 (qJDD(2) * t327 - t499) * t318 (-qJDD(2) * t323 - t327 * t328) * t318, 0, -g(3) + (t319 ^ 2 + (t323 ^ 2 + t327 ^ 2) * t318 ^ 2) * qJDD(1), 0, 0, 0, 0, 0, 0, -t137 * t398 - t200 * t395 - t322 * t343 - t326 * t336, -t138 * t398 - t201 * t395 + t322 * t336 - t326 * t343 ((t200 * t322 + t201 * t326) * qJDD(2) + (t137 * t322 + t138 * t326 + (t200 * t326 - t201 * t322) * qJD(3)) * qJD(2)) * t317, -t169 * t137 + t170 * t138 - t197 * t367 + t200 * t393 - t201 * t357 + t224 * t430 - g(3), 0, 0, 0, 0, 0, 0, t137 * t236 + t200 * t145 - t156 * t371 + t410 * t53, t137 * t238 - t157 * t371 + t562 * t200 + t410 * t54, -t157 * t145 + t156 * t562 - t54 * t236 + t53 * t238, t137 * t150 + t156 * t434 - t157 * t380 + t200 * t61 - t53 * t84 + t54 * t85 - g(3), 0, 0, 0, 0, 0, 0, t379, -t352, t387, t14 * t156 - t19 * t30 + t20 * t31 + t3 * t93 - t4 * t92 + t53 * t78 - g(3), 0, 0, 0, 0, 0, 0, t379, t387, t352, t1 * t93 + t156 * t5 + t19 * t24 + t2 * t92 + t20 * t25 + t34 * t53 - g(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), g(1) * t356 + g(2) * t355 - g(3) * t502 + t304, -t493 * t503 + t416, 0, 0 (qJDD(2) * t315 + 0.2e1 * t424) * t313, 0.2e1 * (t322 * t473 - t475 * t489) * t313, t559 * t322 + t397 * t459 (qJDD(2) * t316 - 0.2e1 * t424) * t313, t559 * t326 - t397 * t460, t395 * t523, t269 * t395 - t393 * t523 - g(1) * t182 - g(2) * t180 - g(3) * t240 + (-t197 * t326 + t224 * t484) * t317 + (-pkin(2) * t377 + t326 * t426) * t313 - t491 * t398, -t270 * t395 + t357 * t523 + (t197 * t322 + t224 * t483) * t317 + (-pkin(2) * t378 - t322 * t426) * t313 + t373 - t492 * t398 (-g(3) * t503 + (-qJD(3) * t169 + qJDD(2) * t270 - t357) * t326 + (-qJD(3) * t170 - qJDD(2) * t269 + t393) * t322 + ((t492 - t258) * t326 + (t491 - t259) * t322) * qJD(2) - t416) * t317, -t357 * t270 - t393 * t269 + g(1) * t261 + g(2) * t260 - g(3) * t490 + (-t197 * pkin(2) - pkin(9) * t416 - t224 * t463) * t317 + t492 * t170 - t491 * t169, -t238 * t204 + t562 * t267, -t267 * t145 + t204 * t236 - t238 * t205 - t562 * t266, t204 * t410 + t267 * t471 + ((qJD(2) * t267 + t238) * t484 - t562 * t326) * t317, t145 * t266 + t205 * t236, t205 * t410 - t266 * t471 + (t145 * t326 + (-qJD(2) * t266 - t236) * t484) * t317 (-t471 * t326 + (-t305 - t410) * t484) * t317, t171 * t471 + t249 * t145 + t61 * t266 + t150 * t205 - g(1) * t123 - g(2) * t121 - g(3) * t192 + (t434 * t326 + (qJD(2) * t171 + t84) * t484) * t317 + t491 * t236 - t566 * t410, -t150 * t204 - t172 * t371 + t491 * t238 + t249 * t562 + t61 * t267 - t380 * t504 + t567 * t410 - t460 * t85 - t376, -t172 * t145 - t171 * t562 + t84 * t204 - t85 * t205 - t567 * t236 - t566 * t238 + t266 * t380 + t267 * t434 - t373, -g(1) * t362 - g(2) * t363 - g(3) * t396 + t491 * t150 - t171 * t434 - t172 * t380 + t61 * t249 + t566 * t84 + t567 * t85, t23, t350, t6, t405, -t348, t56, t107 * t78 + t135 * t76 + t14 * t206 + t159 * t63 + t187 * t524 + t205 * t30 + t226 * t527 + t266 * t4 + t383, -t106 * t78 - t135 * t563 + t14 * t207 - t159 * t62 + t189 * t524 - t205 * t31 - t226 * t528 - t266 * t3 - t384, t106 * t30 - t107 * t31 - t187 * t528 - t189 * t527 - t206 * t3 - t207 * t4 - t563 * t63 + t62 * t76 + t376, -g(1) * t344 - g(2) * t345 - g(3) * t359 + t14 * t159 + t3 * t563 + t30 * t527 + t31 * t528 + t4 * t76 + t524 * t78, t23, t6, -t350, t56, t348, t405, t107 * t34 - t135 * t52 + t187 * t526 - t2 * t266 - t205 * t24 + t206 * t5 - t226 * t539 + t63 * t80 + t383, -t1 * t206 - t106 * t24 - t107 * t25 - t187 * t540 + t189 * t539 + t2 * t207 - t51 * t63 - t52 * t62 + t376, t1 * t266 + t106 * t34 + t135 * t51 - t189 * t526 + t205 * t25 - t207 * t5 + t226 * t540 + t62 * t80 + t384, t1 * t51 + t5 * t80 + t2 * t52 - g(1) * (pkin(5) * t73 + qJ(6) * t72 + t344) - g(2) * (pkin(5) * t71 + qJ(6) * t70 + t345) - g(3) * (pkin(5) * t126 + qJ(6) * t125 + t359) + t526 * t34 + t540 * t25 + t539 * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t433, t489 * t508, t317 * t474 - t326 * t419, t433, t322 * t419 + t303, t395, t170 * t398 - t224 * t462 + t375 - t393, t169 * t398 - t224 * t305 + t357 + t374, 0, 0, -t358 * t321 + (t321 * t335 - t565) * t325, t238 * t428 + t325 * t562 + (-t145 - t476) * t321 + t557 * t236, -t325 * t436 + t321 * t471 + (t325 * t440 + (qJD(3) * t321 - t238) * t322) * t486, -t236 * t389 - t496, t321 * t436 + t325 * t471 + (-t321 * t440 + (qJD(3) * t325 + t236) * t322) * t486, t410 * t462, -pkin(3) * t145 + t113 * t410 - t84 * t462 - t170 * t236 + (-pkin(10) * t371 - t150 * t410) * t321 + (pkin(10) * t436 + t375 - t61) * t325, -pkin(3) * t562 - g(1) * t515 - g(2) * t516 - g(3) * t512 - t557 * t150 - t170 * t238 + t61 * t321 - t371 * t543 - t564 * t410 + t462 * t85, t113 * t238 + t476 * t543 + t342 + t574 * t85 + t557 * t84 + t564 * t236 + (t321 * t562 - t496) * pkin(10), -t61 * pkin(3) + g(1) * t148 + g(2) * t147 + g(3) * t199 - t84 * t113 - t85 * t114 - t150 * t170 + ((-t321 * t85 - t325 * t84) * qJD(4) + t342) * pkin(10), t21, t572, t7, t337, t571, t64, -t103 * t187 + t135 * t246 - t221 * t78 + t529 * t226 + (-t4 + (pkin(10) * t187 + t320 * t78) * qJD(4)) * t325 + (pkin(10) * t63 + t14 * t320 - t30 * t410 + t478 * t78) * t321 + t385, -t103 * t189 - t135 * t247 - t222 * t78 - t530 * t226 + (t3 + (pkin(10) * t189 + t324 * t78) * qJD(4)) * t325 + (-pkin(10) * t62 + t14 * t324 + t31 * t410 - t479 * t78) * t321 + t386, t221 * t31 + t222 * t30 + t246 * t62 - t247 * t63 - t529 * t189 - t530 * t187 + t408 * t480 + (-t3 * t320 - t324 * t4 + (t30 * t320 - t31 * t324) * qJD(5) + t375) * t321, t3 * t247 + t4 * t246 - t78 * t103 - g(1) * t466 - g(2) * t467 - g(3) * t465 + t530 * t31 + t529 * t30 + (t14 * t321 + t480 * t78 - t374) * pkin(10), t21, t7, -t572, t64, -t571, t337, -t135 * t214 - t221 * t34 + t255 * t63 + (qJD(4) * t320 * t34 + t2) * t325 - t532 * t226 + t531 * t187 + (t24 * t410 + t320 * t5 + t34 * t478) * t321 + t385, -t213 * t63 - t214 * t62 + t221 * t25 - t222 * t24 + t532 * t189 - t533 * t187 + t409 * t480 + (-t1 * t320 + t2 * t324 + (-t24 * t320 - t25 * t324) * qJD(5) + t375) * t321, t135 * t213 + t222 * t34 + t255 * t62 + (-t34 * t481 - t1) * t325 + t533 * t226 - t531 * t189 + (-t25 * t410 - t324 * t5 + t34 * t479) * t321 - t386, t1 * t213 + t5 * t255 + t2 * t214 - g(1) * (pkin(5) * t68 + pkin(10) * t155 + qJ(6) * t67 + t466) - g(2) * (pkin(5) * t66 + pkin(10) * t153 + qJ(6) * t65 + t467) - g(3) * (pkin(5) * t116 + pkin(10) * t201 + qJ(6) * t115 + t465) + t531 * t34 + t533 * t25 + t532 * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t510, -t236 ^ 2 + t238 ^ 2, -t236 * t410 + t562, -t510, -t145 - t565, t371, -t150 * t238 - t410 * t85 + t382 - t434, t150 * t236 - t410 * t84 + t380 - t381, 0, 0, t29, -t570, t33, t361, -t553, -t511, -pkin(4) * t63 - t187 * t85 - t226 * t42 - t238 * t30 + t320 * t388 - t324 * t346, pkin(4) * t62 - t189 * t85 + t226 * t43 + t238 * t31 + t320 * t346 + t324 * t388, t187 * t43 + t189 * t42 + (-t236 * t30 + t3 + (-t30 + t541) * qJD(5)) * t324 + (-t4 + t413 - t537) * t320 + t368, -t14 * pkin(4) - g(1) * t91 - g(2) * t90 + g(3) * t149 - t30 * t42 - t31 * t43 - t78 * t85 + (qJD(5) * t408 + t3 * t324 - t4 * t320 + t381) * pkin(11), t29, t33, t570, -t511, t553, t361, t525 * t187 + t226 * t37 + t238 * t24 + t291 * t63 + t556 * t320 + t347 * t324, t187 * t36 - t189 * t37 + (t236 * t24 + t1 + (t24 + t541) * qJD(5)) * t324 + (t2 + t413 - t538) * t320 + t368, -t525 * t189 - t226 * t36 - t238 * t25 + t291 * t62 + t347 * t320 - t324 * t556, t5 * t291 - t25 * t36 - t24 * t37 - g(1) * (t412 * t96 + t91) - g(2) * (t412 * t94 + t90) - g(3) * (-t412 * t156 - t149) + t525 * t34 + (qJD(5) * t409 + t1 * t324 + t2 * t320 + t381) * pkin(11); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t514, -t457, t35, -t514, -t329, t135, -t189 * t78 + t351 + t537, t187 * t78 + t226 * t30 - t339, 0, 0, t514, t35, t457, t135, t329, -t514, -t102 * t187 - t338 + t537 + 0.2e1 * t546, pkin(5) * t62 - qJ(6) * t63 + (t25 - t31) * t189 + (t24 - t494) * t187, 0.2e1 * t520 + t102 * t189 - t187 * t34 + (0.2e1 * qJD(6) - t30) * t226 + t339, t1 * qJ(6) - t2 * pkin(5) - t34 * t102 - t24 * t31 - g(1) * (-pkin(5) * t49 + qJ(6) * t50) - g(2) * (-pkin(5) * t47 + qJ(6) * t48) - g(3) * (-pkin(5) * t92 + qJ(6) * t93) + t494 * t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t514 - t135, t35, -t548 - t549, t338 - t538 - t546;];
tau_reg  = t8;
