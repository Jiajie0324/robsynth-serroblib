% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6PRRRRR6
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
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d2,d3,d4,d5,d6,theta1]';
% 
% Output:
% tau_reg [6x32]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6PRRRRR6_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR6_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRR6_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRRR6_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRRR6_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6PRRRRR6_invdynJ_fixb_regmin_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:25:08
% EndTime: 2019-03-09 01:25:54
% DurationCPUTime: 21.87s
% Computational Cost: add. (18628->802), mult. (52817->1204), div. (0->0), fcn. (47235->18), ass. (0->382)
t331 = sin(pkin(6));
t333 = cos(pkin(7));
t343 = cos(qJ(3));
t344 = cos(qJ(2));
t492 = t343 * t344;
t338 = sin(qJ(3));
t339 = sin(qJ(2));
t499 = t338 * t339;
t379 = -t333 * t499 + t492;
t262 = t379 * t331;
t474 = qJD(3) * t343;
t445 = t333 * t474;
t561 = -pkin(2) * t445 + qJD(1) * t262;
t330 = sin(pkin(7));
t332 = cos(pkin(8));
t406 = t330 * (-pkin(11) * t332 - pkin(10));
t389 = t338 * t406;
t560 = qJD(3) * t389 - t561;
t329 = sin(pkin(8));
t503 = t333 * t338;
t322 = pkin(2) * t503;
t509 = t330 * t343;
t481 = pkin(10) * t509 + t322;
t504 = t332 * t343;
t222 = (t329 * t333 + t330 * t504) * pkin(11) + t481;
t502 = t333 * t343;
t323 = pkin(2) * t502;
t231 = pkin(3) * t333 + t323 + t389;
t233 = (t343 * t406 - t322) * qJD(3);
t540 = pkin(11) * t329;
t388 = -pkin(3) * t343 - t338 * t540;
t260 = (-pkin(2) + t388) * t330;
t368 = (pkin(3) * t338 - t343 * t540) * t330;
t267 = qJD(3) * t368;
t337 = sin(qJ(4));
t342 = cos(qJ(4));
t496 = t339 * t343;
t497 = t338 * t344;
t381 = -t333 * t496 - t497;
t261 = t381 * t331;
t251 = qJD(1) * t261;
t508 = t331 * t339;
t451 = qJD(1) * t508;
t417 = t330 * t451;
t359 = t251 * t332 + t329 * t417;
t473 = qJD(4) * t342;
t441 = t332 * t473;
t443 = t329 * t473;
t466 = t337 * qJD(4);
t506 = t332 * t337;
t514 = t329 * t337;
t559 = -t222 * t466 + t231 * t441 + t233 * t506 + t260 * t443 + t267 * t514 - t337 * t359 + t342 * t560;
t488 = (t267 - t417) * t332 + (-t233 + t251) * t329;
t494 = t342 * t343;
t501 = t337 * t338;
t383 = -t332 * t501 + t494;
t477 = qJD(2) * t330;
t252 = t383 * t477;
t558 = -t252 + t443;
t287 = pkin(10) * t477 + t451;
t511 = t330 * t332;
t459 = pkin(11) * t511;
t478 = qJD(1) * t344;
t536 = qJD(2) * pkin(2);
t301 = t331 * t478 + t536;
t334 = cos(pkin(6));
t479 = qJD(1) * t334;
t452 = t330 * t479;
t306 = t343 * t452;
t483 = t301 * t502 + t306;
t174 = (-qJD(2) * t459 - t287) * t338 + t483;
t448 = qJD(2) * t504;
t493 = t343 * t287;
t175 = -t301 * t503 - t493 + (-pkin(11) * t448 - t338 * t479) * t330;
t266 = qJD(2) * t368;
t318 = pkin(11) * t514;
t505 = t332 * t342;
t548 = pkin(3) * t505 - t318;
t557 = t548 * qJD(4) - t342 * t174 - t175 * t506 - t266 * t514;
t475 = qJD(3) * t338;
t447 = t330 * t475;
t413 = t329 * t447;
t556 = -pkin(12) * t413 - t559;
t546 = t332 * t494 - t501;
t172 = t333 * t443 + (t383 * qJD(3) + qJD(4) * t546) * t330;
t498 = t338 * t342;
t500 = t337 * t343;
t384 = t332 * t500 + t498;
t385 = t332 * t498 + t500;
t346 = qJD(3) * t385 + qJD(4) * t384;
t444 = t329 * t466;
t173 = t330 * t346 + t333 * t444;
t555 = -pkin(4) * t173 + pkin(12) * t172 - t488;
t127 = -t175 * t329 + t332 * t266;
t250 = t385 * t477;
t554 = pkin(4) * t250 - pkin(12) * t252 + t127 - (pkin(4) * t337 - pkin(12) * t342) * t329 * qJD(4);
t450 = t338 * t477;
t416 = t329 * t450;
t553 = -pkin(12) * t416 + t557;
t442 = t332 * t466;
t552 = t222 * t473 + t231 * t442 + t260 * t444 + t337 * t560 + t342 * t359;
t336 = sin(qJ(5));
t341 = cos(qJ(5));
t283 = -t341 * t332 + t336 * t514;
t487 = -qJD(5) * t283 - t336 * t416 + t341 * t558;
t513 = t329 * t341;
t284 = t332 * t336 + t337 * t513;
t486 = qJD(5) * t284 + t336 * t558 + t341 * t416;
t551 = t250 - t444;
t512 = t329 * t342;
t482 = pkin(3) * t506 + pkin(11) * t512;
t550 = t482 * qJD(4) - t337 * t174;
t412 = t330 * t448;
t295 = t342 * t412;
t476 = qJD(2) * t333;
t422 = qJD(3) + t476;
t390 = t422 * t329;
t414 = t337 * t450;
t206 = -t342 * t390 - t295 + t414;
t204 = qJD(5) + t206;
t361 = t384 * t330;
t208 = qJD(2) * t361 + t337 * t390;
t458 = t329 * t509;
t360 = qJD(2) * t458 - t332 * t422 - qJD(4);
t246 = t341 * t360;
t156 = t208 * t336 + t246;
t152 = qJD(6) + t156;
t463 = qJDD(2) * t333;
t317 = qJDD(3) + t463;
t374 = qJD(4) * t390;
t461 = qJDD(2) * t343;
t436 = t330 * t461;
t410 = t332 * t436;
t462 = qJDD(2) * t338;
t118 = -t317 * t512 + t330 * (qJD(2) * t346 + t337 * t462) + t337 * t374 - t342 * t410;
t530 = t175 * t505 - (-pkin(4) * t450 - t266 * t342) * t329 + t550;
t277 = -t332 * t333 + t458;
t453 = t342 * t222 + t231 * t506 + t260 * t514;
t106 = -pkin(12) * t277 + t453;
t469 = qJD(5) * t341;
t471 = qJD(5) * t336;
t168 = -t231 * t329 + t332 * t260;
t225 = -t330 * t546 - t333 * t512;
t228 = t333 * t514 + t361;
t93 = pkin(4) * t225 - pkin(12) * t228 + t168;
t549 = t106 * t471 + t555 * t336 + t341 * t556 - t93 * t469;
t528 = -t233 * t505 + (-pkin(4) * t447 - t267 * t342) * t329 + t552;
t270 = pkin(12) * t332 + t482;
t271 = (-pkin(4) * t342 - pkin(12) * t337 - pkin(3)) * t329;
t484 = t341 * t270 + t336 * t271;
t547 = t270 * t471 - t271 * t469 + t336 * t554 - t341 * t553;
t215 = qJD(2) * t413 + t317 * t332 - t329 * t436 + qJDD(4);
t507 = t331 * t344;
t316 = qJDD(1) * t507;
t449 = qJD(2) * t508;
t411 = qJD(1) * t449;
t265 = qJDD(2) * pkin(2) + t316 - t411;
t464 = qJDD(1) * t334;
t314 = t333 * t464;
t465 = qJD(2) * qJD(3);
t370 = t338 * t465 - t461;
t439 = t343 * t465;
t371 = t439 + t462;
t136 = t314 + (pkin(3) * t370 - t371 * t540 - t265) * t330;
t378 = t301 * t333 + t452;
t155 = t493 + t378 * t338 + (t390 + t412) * pkin(11);
t161 = pkin(3) * t422 + t174;
t315 = t333 * t479;
t191 = t315 + (qJD(2) * t388 - t301) * t330;
t255 = pkin(10) * qJDD(2) * t330 + (qJD(2) * t478 + qJDD(1) * t339) * t331;
t438 = t330 * t464;
t397 = qJD(3) * t306 + t343 * t255 + t265 * t503 + t301 * t445 + t338 * t438;
t355 = -t287 * t475 + t397;
t84 = (t317 * t329 - t370 * t511) * pkin(11) + t355;
t485 = t265 * t502 + t343 * t438;
t85 = pkin(3) * t317 + (-qJDD(2) * t459 - t255) * t338 + t175 * qJD(3) + t485;
t357 = -t136 * t514 + t155 * t466 - t161 * t441 - t191 * t443 - t342 * t84 - t85 * t506;
t14 = pkin(12) * t215 - t357;
t437 = t330 * t462;
t117 = qJD(4) * t295 + t317 * t514 + t337 * t410 + (-qJD(3) * t332 - qJD(4)) * t414 + (t330 * t439 + t374 + t437) * t342;
t49 = t332 * t136 - t329 * t85;
t27 = pkin(4) * t118 - pkin(12) * t117 + t49;
t66 = t342 * t155 + t161 * t506 + t191 * t514;
t53 = -pkin(12) * t360 + t66;
t107 = -t161 * t329 + t332 * t191;
t64 = pkin(4) * t206 - pkin(12) * t208 + t107;
t29 = t336 * t64 + t341 * t53;
t6 = -qJD(5) * t29 - t14 * t336 + t341 * t27;
t65 = -t337 * t155 + (t161 * t332 + t191 * t329) * t342;
t158 = t341 * t208 - t336 * t360;
t525 = sin(pkin(14));
t428 = t525 * t339;
t526 = cos(pkin(14));
t429 = t526 * t344;
t279 = t334 * t429 - t428;
t427 = t525 * t344;
t430 = t526 * t339;
t280 = t334 * t430 + t427;
t432 = t331 * t526;
t408 = t330 * t432;
t178 = -t280 * t338 + (t279 * t333 - t408) * t343;
t364 = -t279 * t330 - t333 * t432;
t123 = -t178 * t329 + t332 * t364;
t282 = -t334 * t428 + t429;
t281 = -t334 * t427 - t430;
t431 = t331 * t525;
t362 = t281 * t333 + t330 * t431;
t180 = -t282 * t338 + t343 * t362;
t363 = -t281 * t330 + t333 * t431;
t124 = -t180 * t329 + t332 * t363;
t380 = t333 * t497 + t496;
t510 = t330 * t338;
t227 = t331 * t380 + t334 * t510;
t382 = t333 * t492 - t499;
t226 = t331 * t382 + t334 * t509;
t278 = -t330 * t507 + t333 * t334;
t393 = t226 * t332 + t278 * t329;
t122 = t227 * t342 + t337 * t393;
t177 = -t226 * t329 + t278 * t332;
t74 = t122 * t336 - t177 * t341;
t179 = t279 * t503 + t280 * t343 - t338 * t408;
t353 = t364 * t329;
t77 = t179 * t342 + (t178 * t332 + t353) * t337;
t181 = t282 * t343 + t338 * t362;
t352 = t363 * t329;
t79 = t181 * t342 + (t180 * t332 + t352) * t337;
t375 = g(1) * (t124 * t341 - t336 * t79) + g(2) * (t123 * t341 - t336 * t77) - g(3) * t74;
t116 = qJDD(5) + t118;
t4 = -pkin(5) * t116 - t6;
t545 = t152 * (pkin(5) * t158 + pkin(13) * t152) + t375 + t4;
t310 = -pkin(5) * t341 - pkin(13) * t336 - pkin(4);
t56 = qJD(5) * t158 + t336 * t117 - t341 * t215;
t54 = qJDD(6) + t56;
t544 = t152 * (-t66 + t204 * (pkin(5) * t336 - pkin(13) * t341)) + t310 * t54;
t543 = -t337 * t222 + t342 * (t231 * t332 + t260 * t329);
t335 = sin(qJ(6));
t340 = cos(qJ(6));
t110 = t158 * t340 + t204 * t335;
t55 = -qJD(5) * t246 + t341 * t117 - t208 * t471 + t336 * t215;
t26 = qJD(6) * t110 - t340 * t116 + t335 * t55;
t5 = t341 * t14 + t336 * t27 + t64 * t469 - t471 * t53;
t3 = pkin(13) * t116 + t5;
t22 = pkin(13) * t204 + t29;
t52 = pkin(4) * t360 - t65;
t30 = t156 * pkin(5) - t158 * pkin(13) + t52;
t399 = t22 * t335 - t30 * t340;
t17 = t136 * t512 - t155 * t473 - t161 * t442 - t191 * t444 - t337 * t84 + t85 * t505;
t15 = -pkin(4) * t215 - t17;
t8 = pkin(5) * t56 - pkin(13) * t55 + t15;
t1 = -t399 * qJD(6) + t340 * t3 + t335 * t8;
t396 = t341 * t106 + t336 * t93;
t541 = -qJD(5) * t396 + t336 * t556 - t555 * t341;
t345 = qJD(2) ^ 2;
t539 = -pkin(5) * t173 - t541;
t537 = pkin(12) * qJD(5);
t467 = qJD(6) * t340;
t468 = qJD(6) * t335;
t25 = t335 * t116 - t158 * t468 + t204 * t467 + t340 * t55;
t535 = t25 * t335;
t533 = t335 * t54;
t532 = t340 * t54;
t531 = t551 * pkin(5) + t484 * qJD(5) + t553 * t336 + t554 * t341;
t134 = pkin(4) * t208 + pkin(12) * t206;
t527 = t336 * t134 + t341 * t65;
t108 = t158 * t335 - t340 * t204;
t524 = t108 * t152;
t523 = t110 * t152;
t522 = t156 * t204;
t521 = t158 * t204;
t520 = t206 * t341;
t519 = t227 * t337;
t518 = t278 * t330;
t326 = t330 ^ 2;
t517 = t326 * t345;
t516 = t329 * t330;
t515 = t329 * t336;
t495 = t339 * t345;
t491 = qJDD(1) - g(3);
t236 = t284 * t335 + t340 * t512;
t490 = -qJD(6) * t236 - t335 * t551 + t340 * t487;
t457 = t335 * t512;
t489 = -qJD(6) * t457 + t284 * t467 + t335 * t487 + t340 * t551;
t327 = t338 ^ 2;
t480 = -t343 ^ 2 + t327;
t472 = qJD(5) * t335;
t470 = qJD(5) * t340;
t456 = t330 * t508;
t446 = t330 * t474;
t440 = t330 * t333 * t345;
t424 = t204 * t341;
t423 = t152 * t340;
t421 = qJD(3) + 0.2e1 * t476;
t420 = t317 + t463;
t419 = t326 * t331 * t495;
t415 = t330 * t449;
t105 = pkin(4) * t277 - t543;
t182 = t228 * t336 + t341 * t277;
t183 = t228 * t341 - t277 * t336;
t50 = pkin(5) * t182 - pkin(13) * t183 + t105;
t409 = -pkin(13) * t173 - qJD(6) * t50 + t549;
t38 = pkin(13) * t225 + t396;
t89 = -qJD(5) * t182 + t172 * t341 + t336 * t413;
t90 = qJD(5) * t183 + t172 * t336 - t341 * t413;
t407 = -pkin(5) * t90 + pkin(13) * t89 + qJD(6) * t38 - t528;
t269 = t318 + (-pkin(3) * t342 - pkin(4)) * t332;
t184 = pkin(5) * t283 - pkin(13) * t284 + t269;
t403 = pkin(13) * t551 - qJD(6) * t184 + t547;
t186 = -pkin(13) * t512 + t484;
t402 = -pkin(5) * t486 + pkin(13) * t487 + qJD(6) * t186 - t530;
t129 = t208 * t335 - t340 * t520;
t400 = t340 * t469 - t129;
t10 = t22 * t340 + t30 * t335;
t28 = -t336 * t53 + t341 * t64;
t395 = -t106 * t336 + t341 * t93;
t121 = -t226 * t505 - t278 * t512 + t519;
t75 = t122 * t341 + t177 * t336;
t40 = t121 * t340 - t335 * t75;
t41 = t121 * t335 + t340 * t75;
t126 = t183 * t340 + t225 * t335;
t125 = t183 * t335 - t340 * t225;
t391 = -t270 * t336 + t271 * t341;
t193 = -t279 * t338 - t280 * t502;
t387 = t193 * t332 + t280 * t516;
t195 = -t281 * t338 - t282 * t502;
t386 = t195 * t332 + t282 * t516;
t376 = -pkin(12) * t116 + t204 * t52;
t76 = -t178 * t505 + t179 * t337 - t342 * t353;
t78 = -t180 * t505 + t181 * t337 - t342 * t352;
t373 = g(1) * t78 + g(2) * t76 + g(3) * t121;
t372 = -g(1) * t79 - g(2) * t77 - g(3) * t122;
t367 = t261 * t332 + t329 * t456;
t365 = -t15 + t373;
t170 = -t334 * t447 + (qJD(2) * t381 - qJD(3) * t380) * t331;
t358 = t170 * t332 + t329 * t415;
t21 = -pkin(5) * t204 - t28;
t356 = -pkin(13) * t54 + (t21 + t28) * t152;
t351 = qJD(4) * t360;
t350 = pkin(12) * qJD(6) * t152 - t373;
t2 = -qJD(6) * t10 - t335 * t3 + t340 * t8;
t348 = t329 * t360 * t510;
t347 = (pkin(13) * t208 - qJD(6) * t310 + t527) * t152 + t372;
t256 = -t301 * t330 + t315;
t237 = t284 * t340 - t457;
t221 = -t265 * t330 + t314;
t205 = -t261 * t329 + t332 * t456;
t196 = t281 * t343 - t282 * t503;
t194 = t279 * t343 - t280 * t503;
t185 = pkin(5) * t512 - t391;
t171 = t334 * t446 + (qJD(2) * t379 + qJD(3) * t382) * t331;
t160 = t262 * t342 + t337 * t367;
t159 = t262 * t337 - t342 * t367;
t154 = -t195 * t329 + t282 * t511;
t153 = -t193 * t329 + t280 * t511;
t151 = t226 * t342 - t227 * t506;
t150 = t226 * t337 + t227 * t505;
t137 = -t170 * t329 + t332 * t415;
t128 = -t340 * t208 - t335 * t520;
t112 = t151 * t341 + t227 * t515;
t111 = t160 * t341 + t205 * t336;
t104 = t180 * t342 - t181 * t506;
t103 = t180 * t337 + t181 * t505;
t102 = t178 * t342 - t179 * t506;
t101 = t178 * t337 + t179 * t505;
t100 = t196 * t342 + t337 * t386;
t99 = t196 * t337 - t342 * t386;
t98 = t194 * t342 + t337 * t387;
t97 = t194 * t337 - t342 * t387;
t68 = t104 * t341 + t181 * t515;
t67 = t102 * t341 + t179 * t515;
t63 = t100 * t341 + t154 * t336;
t62 = t153 * t336 + t341 * t98;
t48 = t171 * t342 + t358 * t337 + (t342 * t393 - t519) * qJD(4);
t47 = qJD(4) * t122 + t171 * t337 - t342 * t358;
t45 = t124 * t336 + t341 * t79;
t43 = t123 * t336 + t341 * t77;
t37 = -pkin(5) * t225 - t395;
t36 = qJD(6) * t126 - t340 * t173 + t335 * t89;
t35 = -qJD(6) * t125 + t173 * t335 + t340 * t89;
t33 = -pkin(5) * t208 - t134 * t341 + t336 * t65;
t19 = -qJD(5) * t74 + t137 * t336 + t341 * t48;
t18 = qJD(5) * t75 - t137 * t341 + t336 * t48;
t7 = [t491, 0 (qJDD(2) * t344 - t495) * t331 (-qJDD(2) * t339 - t344 * t345) * t331, 0, 0, 0, 0, 0, t170 * t422 + t226 * t317 - t343 * t419 + t370 * t518, -t171 * t422 - t227 * t317 + t338 * t419 + t371 * t518, 0, 0, 0, 0, 0, t177 * t118 - t121 * t215 + t137 * t206 + t360 * t47, t177 * t117 - t122 * t215 + t137 * t208 + t360 * t48, 0, 0, 0, 0, 0, -t116 * t74 + t121 * t56 + t156 * t47 - t18 * t204, -t116 * t75 + t121 * t55 + t158 * t47 - t19 * t204, 0, 0, 0, 0, 0 (-qJD(6) * t41 - t19 * t335 + t340 * t47) * t152 + t40 * t54 + t18 * t108 + t74 * t26 -(qJD(6) * t40 + t19 * t340 + t335 * t47) * t152 - t41 * t54 + t18 * t110 + t74 * t25; 0, qJDD(2), -g(1) * t281 - g(2) * t279 - g(3) * t507 + t316, g(1) * t282 + g(2) * t280 - t491 * t508 (qJDD(2) * t327 + 0.2e1 * t338 * t439) * t326, 0.2e1 * (t338 * t461 - t465 * t480) * t326 (t338 * t420 + t421 * t474) * t330 (t343 * t420 - t421 * t475) * t330, t317 * t333, t323 * t317 + (-t287 * t474 + t485) * t333 - t251 * t422 - g(1) * t196 - g(2) * t194 - g(3) * t262 + (-pkin(10) * qJD(3) * t422 - t221) * t509 + ((-t255 + ((-t301 - t536) * t333 - pkin(2) * qJD(3)) * qJD(3)) * t333 + (-pkin(10) * t317 + (t256 - t315) * qJD(3)) * t330) * t338 + (-pkin(2) * t370 + t343 * t411) * t326, t221 * t510 + t256 * t446 - t481 * t317 - t355 * t333 - g(1) * t195 - g(2) * t193 - g(3) * t261 + (-pkin(2) * t371 - t338 * t411) * t326 + (pkin(10) * t447 + t561) * t422, t117 * t228 + t172 * t208, -t117 * t225 - t118 * t228 - t172 * t206 - t173 * t208, -t277 * t117 - t172 * t360 + t208 * t413 + t215 * t228, t277 * t118 + t173 * t360 - t206 * t413 - t215 * t225, -qJD(3) * t348 - t215 * t277, t168 * t118 + t49 * t225 + t107 * t173 + t543 * t215 - t17 * t277 + t65 * t413 - g(1) * t100 - g(2) * t98 - g(3) * t160 + t488 * t206 + (-(t233 * t332 + t267 * t329) * t342 + t552) * t360, g(1) * t99 + g(2) * t97 + g(3) * t159 + t107 * t172 + t168 * t117 + t208 * t488 - t215 * t453 + t49 * t228 - t357 * t277 + t360 * t559 - t413 * t66, t158 * t89 + t183 * t55, -t156 * t89 - t158 * t90 - t182 * t55 - t183 * t56, t116 * t183 + t158 * t173 + t204 * t89 + t225 * t55, -t116 * t182 - t156 * t173 - t204 * t90 - t225 * t56, t116 * t225 + t173 * t204, -g(1) * t63 - g(2) * t62 - g(3) * t111 + t105 * t56 + t395 * t116 + t15 * t182 + t528 * t156 + t28 * t173 + t204 * t541 + t6 * t225 + t52 * t90, -t396 * t116 - t5 * t225 - t29 * t173 + t105 * t55 + t15 * t183 + t52 * t89 - g(1) * (-t100 * t336 + t154 * t341) - g(2) * (t153 * t341 - t336 * t98) - g(3) * (-t160 * t336 + t205 * t341) + t549 * t204 + t528 * t158, t110 * t35 + t126 * t25, -t108 * t35 - t110 * t36 - t125 * t25 - t126 * t26, t110 * t90 + t126 * t54 + t152 * t35 + t182 * t25, -t108 * t90 - t125 * t54 - t152 * t36 - t182 * t26, t152 * t90 + t182 * t54 (-t335 * t38 + t340 * t50) * t54 + t2 * t182 - t399 * t90 + t37 * t26 + t4 * t125 + t21 * t36 - g(1) * (t335 * t99 + t340 * t63) - g(2) * (t335 * t97 + t340 * t62) - g(3) * (t111 * t340 + t159 * t335) + (t335 * t409 - t340 * t407) * t152 + t539 * t108 -(t335 * t50 + t340 * t38) * t54 - t1 * t182 - t10 * t90 + t37 * t25 + t4 * t126 + t21 * t35 - g(1) * (-t335 * t63 + t340 * t99) - g(2) * (-t335 * t62 + t340 * t97) - g(3) * (-t111 * t335 + t159 * t340) + (t335 * t407 + t340 * t409) * t152 + t539 * t110; 0, 0, 0, 0, -t338 * t343 * t517, t480 * t517, -t343 * t440 + t437, t338 * t440 + t436, t317, -g(1) * t180 - g(2) * t178 - g(3) * t226 - t338 * t255 + (t333 * t493 + (-t256 * t330 + t333 * t378) * t338) * qJD(2) + t485, g(1) * t181 + g(2) * t179 + g(3) * t227 + (-t256 * t509 + (-t338 * t287 + t483) * t333) * qJD(2) + t483 * qJD(3) - t397, t117 * t514 + t208 * t558, t206 * t252 + t208 * t250 + (t117 * t342 - t118 * t337 + (-t206 * t342 - t208 * t337) * qJD(4)) * t329, t332 * t117 + t360 * t252 + (-t208 * t450 + t215 * t337 - t342 * t351) * t329, -t332 * t118 - t360 * t250 + (t206 * t450 + t215 * t342 + t337 * t351) * t329, qJD(2) * t348 + t215 * t332, -t329 * pkin(3) * t118 - t49 * t512 + t548 * t215 + t17 * t332 - t127 * t206 - t65 * t416 - g(1) * t104 - g(2) * t102 - g(3) * t151 - t551 * t107 + ((t175 * t332 + t266 * t329) * t342 + t550) * t360, -t482 * t215 + t357 * t332 - t127 * t208 - t107 * t252 + g(1) * t103 + g(2) * t101 + g(3) * t150 + (-pkin(3) * t117 + t107 * t473 + t337 * t49 + t450 * t66) * t329 + t557 * t360, t158 * t487 + t284 * t55, -t156 * t487 - t158 * t486 - t283 * t55 - t284 * t56, t116 * t284 - t158 * t551 + t204 * t487 - t512 * t55, -t116 * t283 + t156 * t551 - t204 * t486 + t512 * t56, -t116 * t512 - t204 * t551, t391 * t116 - t6 * t512 + t269 * t56 + t15 * t283 - g(1) * t68 - g(2) * t67 - g(3) * t112 + t486 * t52 - t551 * t28 + ((-qJD(5) * t270 - t554) * t341 + (-qJD(5) * t271 - t553) * t336) * t204 + t530 * t156, -t484 * t116 + t5 * t512 + t269 * t55 + t15 * t284 - g(1) * (-t104 * t336 + t181 * t513) - g(2) * (-t102 * t336 + t179 * t513) - g(3) * (-t151 * t336 + t227 * t513) + t487 * t52 + t551 * t29 + t547 * t204 + t530 * t158, t110 * t490 + t237 * t25, -t108 * t490 - t110 * t489 - t236 * t25 - t237 * t26, t110 * t486 + t152 * t490 + t237 * t54 + t25 * t283, -t108 * t486 - t152 * t489 - t236 * t54 - t26 * t283, t152 * t486 + t283 * t54 (t184 * t340 - t186 * t335) * t54 + t2 * t283 + t185 * t26 + t4 * t236 - g(1) * (t103 * t335 + t340 * t68) - g(2) * (t101 * t335 + t340 * t67) - g(3) * (t112 * t340 + t150 * t335) - t486 * t399 + t489 * t21 + (t335 * t403 - t340 * t402) * t152 + t531 * t108 -(t184 * t335 + t186 * t340) * t54 - t1 * t283 + t185 * t25 + t4 * t237 - g(1) * (t103 * t340 - t335 * t68) - g(2) * (t101 * t340 - t335 * t67) - g(3) * (-t112 * t335 + t150 * t340) + t490 * t21 + (t335 * t402 + t340 * t403) * t152 + t531 * t110 - t486 * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206 * t208, -t206 ^ 2 + t208 ^ 2, -t206 * t360 + t117, -t360 * t208 - t118, t215, -t107 * t208 - t360 * t66 + t17 + t373, t107 * t206 - t360 * t65 + t357 - t372, t158 * t424 + t336 * t55 (t55 - t522) * t341 + (-t56 - t521) * t336, t116 * t336 - t158 * t208 + t204 * t424, -t204 ^ 2 * t336 + t116 * t341 + t156 * t208, -t204 * t208, -pkin(4) * t56 - t66 * t156 - t28 * t208 + (t65 * t204 + t376) * t336 + ((-t134 - t537) * t204 + t365) * t341, -pkin(4) * t55 + t527 * t204 + t29 * t208 - t66 * t158 + t376 * t341 + (t204 * t537 - t365) * t336, t25 * t336 * t340 + (-t336 * t468 + t400) * t110, t108 * t129 + t110 * t128 + (-t108 * t340 - t110 * t335) * t469 + (-t535 - t26 * t340 + (t108 * t335 - t110 * t340) * qJD(6)) * t336, -t25 * t341 + t400 * t152 + (t110 * t204 - t152 * t468 + t532) * t336, t26 * t341 + (-t335 * t469 + t128) * t152 + (-t108 * t204 - t152 * t467 - t533) * t336, t152 * t204 * t336 - t341 * t54, -t33 * t108 - t21 * t128 + t544 * t340 + t347 * t335 + (t21 * t472 - t2 + (qJD(5) * t108 - t533) * pkin(12) - t350 * t340) * t341 + (t21 * t467 + t4 * t335 - t204 * t399 + (t152 * t472 + t26) * pkin(12)) * t336, -t33 * t110 - t21 * t129 - t544 * t335 + t347 * t340 + (t21 * t470 + t1 + (qJD(5) * t110 - t532) * pkin(12) + t350 * t335) * t341 + (-t21 * t468 + t4 * t340 - t204 * t10 + (t152 * t470 + t25) * pkin(12)) * t336; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t158 * t156, -t156 ^ 2 + t158 ^ 2, t55 + t522, t521 - t56, t116, -t158 * t52 + t204 * t29 - t375 + t6, g(1) * t45 + g(2) * t43 + g(3) * t75 + t156 * t52 + t204 * t28 - t5, t110 * t423 + t535 (t25 - t524) * t340 + (-t26 - t523) * t335, -t110 * t158 + t152 * t423 + t533, -t152 ^ 2 * t335 + t108 * t158 + t532, -t152 * t158, -pkin(5) * t26 - t29 * t108 + t158 * t399 + t356 * t335 - t340 * t545, -pkin(5) * t25 + t10 * t158 - t29 * t110 + t335 * t545 + t356 * t340; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t110 * t108, -t108 ^ 2 + t110 ^ 2, t25 + t524, -t26 + t523, t54, t10 * t152 - t21 * t110 - g(1) * (-t335 * t45 + t340 * t78) - g(2) * (-t335 * t43 + t340 * t76) - g(3) * t40 + t2, -t399 * t152 + t21 * t108 - g(1) * (-t335 * t78 - t340 * t45) - g(2) * (-t335 * t76 - t340 * t43) + g(3) * t41 - t1;];
tau_reg  = t7;
