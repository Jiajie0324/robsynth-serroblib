% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRPRRR14
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% tauc_reg [6x35]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRPRRR14_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR14_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR14_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RRPRRR14_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:08:39
% EndTime: 2019-03-09 15:09:21
% DurationCPUTime: 15.80s
% Computational Cost: add. (38656->714), mult. (122543->1053), div. (0->0), fcn. (107760->16), ass. (0->339)
t343 = sin(pkin(14));
t346 = sin(pkin(6));
t355 = cos(qJ(2));
t510 = cos(pkin(14));
t445 = t510 * t355;
t348 = cos(pkin(7));
t352 = sin(qJ(2));
t493 = t348 * t352;
t375 = t346 * (-t343 * t493 + t445);
t299 = qJD(1) * t375;
t351 = sin(qJ(4));
t449 = t352 * t510;
t374 = t346 * (t343 * t355 + t348 * t449);
t296 = qJD(1) * t374;
t344 = sin(pkin(8));
t347 = cos(pkin(8));
t345 = sin(pkin(7));
t484 = qJD(1) * t346;
t463 = t352 * t484;
t434 = t345 * t463;
t381 = -t296 * t347 + t344 * t434;
t526 = cos(qJ(4));
t425 = t526 * t510;
t467 = t344 * t526;
t536 = t345 * (-t343 * t351 + t347 * t425) + t348 * t467;
t488 = t536 * qJD(4) - t299 * t526 - t351 * t381;
t446 = t510 * t351;
t464 = t526 * t343;
t499 = t344 * t351;
t274 = t348 * t499 + (t347 * t446 + t464) * t345;
t496 = t346 * t352;
t397 = t345 * t467 * t496;
t466 = t347 * t526;
t487 = qJD(1) * t397 + t274 * qJD(4) - t296 * t466 - t299 * t351;
t511 = cos(pkin(6));
t468 = pkin(1) * t511;
t435 = t355 * t468;
t332 = qJD(1) * t435;
t455 = -qJ(3) * t348 - pkin(10);
t415 = t352 * t455;
t399 = t346 * t415;
t282 = qJD(1) * t399 + t332;
t436 = t352 * t468;
t495 = t346 * t355;
t366 = t455 * t495 - t436;
t283 = t366 * qJD(1);
t509 = qJ(3) * t345;
t398 = pkin(2) * t352 - t355 * t509;
t305 = t398 * t484;
t450 = t348 * t510;
t451 = t345 * t510;
t190 = -t282 * t343 + t283 * t450 + t305 * t451;
t524 = pkin(11) * t347;
t153 = pkin(3) * t434 - t299 * t524 + t190;
t212 = -t283 * t345 + t348 * t305;
t525 = pkin(11) * t344;
t186 = pkin(3) * t296 - t299 * t525 + t212;
t482 = qJD(3) * t345;
t503 = t343 * t344;
t401 = t153 * t344 - t347 * t186 + t482 * t503;
t501 = t343 * t348;
t502 = t343 * t345;
t191 = t510 * t282 + t283 * t501 + t305 * t502;
t151 = pkin(11) * t381 + t191;
t314 = pkin(2) * t501 + qJ(3) * t451;
t263 = (t344 * t348 + t347 * t451) * pkin(11) + t314;
t336 = pkin(2) * t450;
t277 = pkin(3) * t348 + t336 + (-qJ(3) - t524) * t502;
t301 = (-pkin(3) * t510 - pkin(11) * t503 - pkin(2)) * t345;
t367 = -t351 * t263 + t277 * t466 + t301 * t467;
t494 = t347 * t351;
t543 = (-t343 * t494 + t425) * t482 + t367 * qJD(4) - t526 * t151 - t153 * t494 - t186 * t499;
t443 = t511 * qJD(1);
t406 = t443 + qJD(2);
t382 = t406 * t510;
t326 = t343 * t463;
t497 = t346 * t348;
t403 = t445 * t497;
t383 = qJD(1) * t403 - t326;
t359 = -t345 * t382 - t383;
t462 = t355 * t484;
t379 = t345 * t462 - t348 * t406;
t357 = -t344 * t379 - t347 * t359;
t236 = -t296 * t344 - t347 * t434;
t541 = pkin(12) * t236 + t543;
t540 = -t487 * pkin(4) + pkin(12) * t488 - t401;
t390 = t406 * t345;
t304 = t348 * t462 + t390;
t504 = t343 * t304;
t532 = -t345 ^ 2 - t348 ^ 2;
t217 = t463 * t510 * t532 - t504;
t218 = t510 * t304 + t326 * t532;
t181 = t217 * t494 + t218 * t526;
t458 = qJD(4) * t526;
t431 = t344 * t458;
t542 = t181 - t431;
t252 = t526 * t263;
t539 = (t347 * t464 + t446) * t482 + (t252 + (t277 * t347 + t301 * t344) * t351) * qJD(4) - t351 * t151 + t153 * t466 + t186 * t467;
t310 = t344 * t451 - t347 * t348;
t350 = sin(qJ(5));
t354 = cos(qJ(5));
t215 = t274 * t350 + t354 * t310;
t490 = -qJD(5) * t215 + t236 * t350 + t488 * t354;
t216 = t274 * t354 - t310 * t350;
t489 = qJD(5) * t216 - t354 * t236 + t488 * t350;
t538 = t357 * t526;
t473 = qJD(1) * qJD(2);
t456 = t346 * t473;
t429 = t352 * t456;
t407 = t345 * t429;
t424 = t510 * t484;
t400 = qJD(2) * t424;
t428 = t355 * t456;
t486 = t343 * t428 + t400 * t493;
t444 = t486 * t347;
t537 = t344 * t407 - t444;
t245 = t352 * t424 + t504;
t183 = t245 * t351 - t538;
t182 = qJD(5) + t183;
t185 = t526 * t245 + t351 * t357;
t365 = t344 * t359 - t347 * t379;
t362 = -qJD(4) - t365;
t207 = t354 * t362;
t112 = t185 * t350 + t207;
t110 = qJD(6) + t112;
t513 = -t236 * pkin(4) + t539;
t315 = -t347 * t354 + t350 * t499;
t535 = -t217 * t344 * t350 + qJD(5) * t315 + t354 * t542;
t208 = -t277 * t344 + t347 * t301;
t167 = -pkin(4) * t536 - pkin(12) * t274 + t208;
t469 = t277 * t494 + t301 * t499 + t252;
t174 = -pkin(12) * t310 + t469;
t491 = t350 * t167 + t354 * t174;
t180 = -t217 * t466 + t351 * t218;
t480 = qJD(4) * t351;
t460 = t344 * t480;
t534 = t180 - t460;
t498 = t344 * t354;
t316 = t347 * t350 + t351 * t498;
t533 = qJD(5) * t316 - t217 * t498 - t350 * t542;
t476 = qJD(5) * t354;
t478 = qJD(5) * t350;
t531 = -t167 * t476 + t174 * t478 + t540 * t350 - t354 * t541;
t529 = qJD(3) * t379;
t114 = t354 * t185 - t350 * t362;
t290 = t355 * t400 - t429 * t501;
t389 = qJD(2) * t397;
t419 = -qJD(1) * t389 + t351 * t290 + t526 * t444;
t102 = qJD(4) * t185 + t419;
t384 = pkin(10) * t495 + t436;
t241 = qJ(3) * t304 + qJD(1) * t384;
t370 = pkin(2) * t511 + t399;
t246 = qJD(2) * pkin(2) + qJD(1) * t370 + t332;
t302 = (-pkin(2) * t355 - t352 * t509 - pkin(1)) * t346;
t293 = qJD(1) * t302;
t172 = t510 * t241 + t246 * t501 + t293 * t502;
t111 = pkin(11) * t357 + t172;
t171 = -t343 * t241 + t246 * t450 + t293 * t451;
t115 = -pkin(3) * t379 - t245 * t524 + t171;
t206 = -t345 * t246 + t348 * t293 + qJD(3);
t139 = pkin(3) * t359 - t245 * t525 + t206;
t51 = t526 * t111 + t115 * t494 + t139 * t499;
t46 = -pkin(12) * t362 + t51;
t72 = -t115 * t344 + t347 * t139;
t48 = pkin(4) * t183 - pkin(12) * t185 + t72;
t17 = t350 * t48 + t354 * t46;
t225 = -t344 * t486 - t347 * t407;
t418 = qJD(2) * t443;
t404 = pkin(1) * t418;
t329 = t355 * t404;
t492 = t348 * t355;
t364 = (qJD(2) * t415 + qJD(3) * t492) * t346;
t213 = qJD(1) * t364 + qJD(3) * t390 + t329;
t481 = qJD(3) * t352;
t242 = qJD(2) * t366 - t481 * t497;
t231 = t242 * qJD(1);
t270 = (qJD(2) * t398 - t345 * t481) * t346;
t258 = qJD(1) * t270;
t144 = t510 * t213 + t231 * t501 + t258 * t502;
t100 = pkin(11) * t537 + t144;
t143 = -t213 * t343 + t231 * t450 + t258 * t451;
t103 = pkin(3) * t407 - t290 * t524 + t143;
t198 = -t345 * t231 + t348 * t258;
t146 = pkin(3) * t486 - t290 * t525 + t198;
t430 = t347 * t458;
t378 = -t526 * t100 - t103 * t494 + t111 * t480 - t115 * t430 - t139 * t431 - t146 * t499;
t19 = -pkin(12) * t225 - t378;
t101 = qJD(4) * t538 - t245 * t480 + t526 * t290 + t351 * t537;
t71 = -t103 * t344 + t347 * t146;
t41 = pkin(4) * t102 - pkin(12) * t101 + t71;
t6 = -qJD(5) * t17 - t19 * t350 + t354 * t41;
t4 = -pkin(5) * t102 - t6;
t528 = t110 * (pkin(5) * t114 + pkin(13) * t110) + t4;
t349 = sin(qJ(6));
t353 = cos(qJ(6));
t64 = -qJD(5) * t207 + t354 * t101 - t185 * t478 - t350 * t225;
t77 = t114 * t353 + t182 * t349;
t30 = qJD(6) * t77 - t353 * t102 + t349 * t64;
t65 = qJD(5) * t114 + t350 * t101 + t354 * t225;
t297 = qJD(2) * t374;
t483 = qJD(2) * t352;
t461 = t346 * t483;
t433 = t345 * t461;
t237 = -t297 * t344 - t347 * t433;
t333 = qJD(2) * t435;
t448 = t511 * t345;
t224 = qJD(3) * t448 + t333 + t364;
t157 = t510 * t224 + t242 * t501 + t270 * t502;
t380 = -t297 * t347 + t344 * t433;
t119 = pkin(11) * t380 + t157;
t156 = -t224 * t343 + t242 * t450 + t270 * t451;
t298 = qJD(2) * t375;
t123 = pkin(3) * t433 - t298 * t524 + t156;
t385 = t346 * t492 + t448;
t268 = qJ(3) * t385 + t384;
t280 = t435 + t370;
t188 = t510 * t268 + t280 * t501 + t302 * t502;
t271 = t343 * t496 - t448 * t510 - t403;
t447 = t511 * t348;
t386 = t345 * t495 - t447;
t373 = t386 * t344;
t363 = -t271 * t347 - t373;
t136 = pkin(11) * t363 + t188;
t187 = -t343 * t268 + t280 * t450 + t302 * t451;
t272 = t343 * t385 + t346 * t449;
t140 = -pkin(3) * t386 - t272 * t524 + t187;
t201 = -t242 * t345 + t348 * t270;
t160 = pkin(3) * t297 - t298 * t525 + t201;
t210 = -t280 * t345 + t348 * t302;
t166 = pkin(3) * t271 - t272 * t525 + t210;
t376 = t526 * t119 + t123 * t494 - t136 * t480 + t140 * t430 + t160 * t499 + t166 * t431;
t26 = -pkin(12) * t237 + t376;
t214 = -t271 * t344 + t347 * t386;
t471 = t526 * t136 + t140 * t494 + t166 * t499;
t56 = -pkin(12) * t214 + t471;
t194 = t271 * t466 + t272 * t351 + t373 * t526;
t195 = t272 * t526 + t351 * t363;
t78 = -t140 * t344 + t347 * t166;
t59 = pkin(4) * t194 - pkin(12) * t195 + t78;
t410 = t350 * t59 + t354 * t56;
t124 = qJD(4) * t195 + t297 * t466 + t298 * t351 - t389;
t125 = -qJD(4) * t194 + t298 * t526 + t351 * t380;
t74 = -t123 * t344 + t347 * t160;
t44 = pkin(4) * t124 - pkin(12) * t125 + t74;
t527 = -qJD(5) * t410 - t26 * t350 + t354 * t44;
t459 = t347 * t480;
t22 = -t351 * t100 + t103 * t466 - t111 * t458 - t115 * t459 - t139 * t460 + t146 * t467;
t20 = pkin(4) * t225 - t22;
t12 = pkin(5) * t65 - pkin(13) * t64 + t20;
t5 = t354 * t19 + t350 * t41 - t46 * t478 + t48 * t476;
t3 = pkin(13) * t102 + t5;
t15 = pkin(13) * t182 + t17;
t50 = -t351 * t111 + t115 * t466 + t139 * t467;
t45 = pkin(4) * t362 - t50;
t28 = t112 * pkin(5) - t114 * pkin(13) + t45;
t414 = t15 * t349 - t28 * t353;
t1 = -qJD(6) * t414 + t12 * t349 + t3 * t353;
t356 = qJD(1) ^ 2;
t90 = pkin(4) * t185 + pkin(12) * t183;
t523 = t350 * t90 + t354 * t50;
t522 = -t487 * pkin(5) + t491 * qJD(5) + t541 * t350 + t540 * t354;
t196 = t216 * t349 + t353 * t536;
t520 = -qJD(6) * t196 + t349 * t487 + t353 * t490;
t197 = t216 * t353 - t349 * t536;
t519 = qJD(6) * t197 + t349 * t490 - t353 * t487;
t75 = t114 * t349 - t353 * t182;
t518 = t110 * t75;
t517 = t110 * t77;
t474 = qJD(6) * t353;
t475 = qJD(6) * t349;
t29 = t349 * t102 - t114 * t475 + t182 * t474 + t353 * t64;
t516 = t29 * t349;
t515 = t349 * t65;
t514 = t353 * t65;
t512 = -t51 + t182 * (pkin(5) * t350 - pkin(13) * t354);
t508 = t112 * t182;
t507 = t114 * t182;
t506 = t183 * t354;
t339 = t346 ^ 2;
t505 = t339 * t356;
t485 = t352 ^ 2 - t355 ^ 2;
t479 = qJD(5) * t349;
t477 = qJD(5) * t353;
t472 = t355 * t505;
t457 = t339 * t473;
t328 = -pkin(5) * t354 - pkin(13) * t350 - pkin(4);
t442 = pkin(13) * t185 - qJD(6) * t328 + t523;
t440 = t182 * t354;
t439 = t110 * t353;
t438 = 0.2e1 * t457;
t173 = t310 * pkin(4) - t367;
t87 = t215 * pkin(5) - t216 * pkin(13) + t173;
t427 = -pkin(13) * t487 - qJD(6) * t87 + t531;
t80 = -pkin(13) * t536 + t491;
t426 = -pkin(5) * t489 + pkin(13) * t490 + qJD(6) * t80 - t513;
t423 = t346 * t356 * t511;
t422 = -0.2e1 * pkin(1) * t457;
t85 = t185 * t349 - t353 * t506;
t420 = t353 * t476 - t85;
t10 = t15 * t353 + t28 * t349;
t24 = pkin(13) * t194 + t410;
t137 = t195 * t350 + t214 * t354;
t138 = t195 * t354 - t214 * t350;
t369 = -t351 * t136 + t140 * t466 + t166 * t467;
t55 = t214 * pkin(4) - t369;
t35 = t137 * pkin(5) - t138 * pkin(13) + t55;
t413 = t24 * t353 + t349 * t35;
t412 = -t24 * t349 + t35 * t353;
t16 = -t350 * t46 + t354 * t48;
t409 = -t350 * t56 + t354 * t59;
t82 = t138 * t353 + t194 * t349;
t81 = t138 * t349 - t194 * t353;
t408 = t167 * t354 - t174 * t350;
t405 = 0.2e1 * t443 + qJD(2);
t396 = -t110 * t474 - t515;
t395 = -t110 * t475 + t514;
t394 = t354 * t26 + t350 * t44 + t59 * t476 - t478 * t56;
t392 = -pkin(12) * t102 + t182 * t45;
t388 = -t349 * t316 - t353 * t467;
t387 = -t353 * t316 + t349 * t467;
t14 = -pkin(5) * t182 - t16;
t377 = -pkin(13) * t65 + (t14 + t16) * t110;
t2 = -qJD(6) * t10 + t353 * t12 - t3 * t349;
t361 = -t351 * t119 + t123 * t466 - t136 * t458 - t140 * t459 + t160 * t467 - t166 * t460;
t360 = t406 * t384;
t27 = t237 * pkin(4) - t361;
t313 = -qJ(3) * t502 + t336;
t84 = -t353 * t185 - t349 * t506;
t79 = pkin(5) * t536 - t408;
t70 = -qJD(5) * t137 + t125 * t354 - t237 * t350;
t69 = qJD(5) * t138 + t125 * t350 + t237 * t354;
t37 = -qJD(6) * t81 + t124 * t349 + t353 * t70;
t36 = qJD(6) * t82 - t124 * t353 + t349 * t70;
t33 = -pkin(5) * t185 + t350 * t50 - t354 * t90;
t23 = -pkin(5) * t194 - t409;
t13 = t69 * pkin(5) - t70 * pkin(13) + t27;
t8 = -pkin(5) * t124 - t527;
t7 = pkin(13) * t124 + t394;
t9 = [0, 0, 0, t352 * t355 * t438, -t485 * t438, t405 * qJD(2) * t495, -t405 * t461, 0, -qJD(2) * t360 + t352 * t422 - t384 * t418 -(-pkin(10) * t461 + t333) * t406 - (-pkin(10) * t429 + t329) * t511 + t355 * t422, -t201 * t383 + t210 * t486 + t198 * t271 + t206 * t297 - t156 * t379 + t143 * t447 + (-t201 * t382 + (-t143 * t355 + (qJD(1) * t187 + t171) * t483) * t346) * t345, t201 * t245 + t210 * t290 + t198 * t272 + t206 * t298 + t157 * t379 - t144 * t447 + (t144 * t355 + (-qJD(1) * t188 - t172) * t483) * t346 * t345, -t143 * t272 - t144 * t271 - t156 * t245 - t157 * t359 - t171 * t298 - t172 * t297 - t187 * t290 - t188 * t486, t143 * t187 + t144 * t188 + t156 * t171 + t157 * t172 + t198 * t210 + t201 * t206, t101 * t195 + t125 * t185, -t101 * t194 - t102 * t195 - t124 * t185 - t125 * t183, -t214 * t101 - t125 * t362 - t237 * t185 - t225 * t195, t214 * t102 + t124 * t362 + t237 * t183 + t225 * t194, t225 * t214 + t237 * t362, t78 * t102 + t72 * t124 + t74 * t183 + t71 * t194 - t22 * t214 - t225 * t369 - t50 * t237 - t361 * t362, t78 * t101 + t72 * t125 + t74 * t185 + t71 * t195 - t214 * t378 + t225 * t471 + t51 * t237 + t362 * t376, t114 * t70 + t138 * t64, -t112 * t70 - t114 * t69 - t137 * t64 - t138 * t65, t102 * t138 + t114 * t124 + t182 * t70 + t194 * t64, -t102 * t137 - t112 * t124 - t182 * t69 - t194 * t65, t102 * t194 + t124 * t182, t409 * t102 + t27 * t112 + t16 * t124 + t20 * t137 + t182 * t527 + t6 * t194 + t45 * t69 + t55 * t65, -t102 * t410 + t27 * t114 - t17 * t124 + t20 * t138 - t182 * t394 - t5 * t194 + t45 * t70 + t55 * t64, t29 * t82 + t37 * t77, -t29 * t81 - t30 * t82 - t36 * t77 - t37 * t75, t110 * t37 + t137 * t29 + t65 * t82 + t69 * t77, -t110 * t36 - t137 * t30 - t65 * t81 - t69 * t75, t110 * t69 + t137 * t65 (-qJD(6) * t413 + t13 * t353 - t349 * t7) * t110 + t412 * t65 + t2 * t137 - t414 * t69 + t8 * t75 + t23 * t30 + t4 * t81 + t14 * t36 -(qJD(6) * t412 + t13 * t349 + t353 * t7) * t110 - t413 * t65 - t1 * t137 - t10 * t69 + t8 * t77 + t23 * t29 + t4 * t82 + t14 * t37; 0, 0, 0, -t352 * t472, t485 * t505, -t355 * t423, t352 * t423, 0, -pkin(10) * t428 + qJD(1) * t360 + (pkin(1) * t505 - t404) * t352, -t329 + (-pkin(10) * t463 + t332) * t443 + pkin(1) * t472 + t332 * qJD(2), t143 * t348 + t212 * t383 - t206 * t296 + t190 * t379 + (-pkin(2) * t486 - t198 * t510 + t343 * t529 + t212 * t382 + (qJD(2) * t313 - t171) * t463) * t345, -t144 * t348 - t212 * t245 - t206 * t299 - t191 * t379 + (-pkin(2) * t290 + t198 * t343 + t510 * t529 + (-qJD(2) * t314 + t172) * t463) * t345, -t313 * t290 - t314 * t486 + t190 * t245 + t171 * t299 - t191 * t383 + t172 * t296 + (-t143 * t343 + t144 * t510 - t191 * t382) * t345 + (t343 * t245 + (t390 * t510 + t383) * t510) * t482, t143 * t313 + t144 * t314 - t171 * t190 - t172 * t191 - t206 * t212 + (-pkin(2) * t198 + (-t171 * t343 + t172 * t510) * qJD(3)) * t345, t101 * t274 + t185 * t488, t101 * t536 - t102 * t274 - t183 * t488 - t185 * t487, -t310 * t101 + t236 * t185 - t225 * t274 - t362 * t488, t310 * t102 - t236 * t183 - t225 * t536 + t362 * t487, t225 * t310 - t236 * t362, t208 * t102 + t183 * t401 - t22 * t310 - t225 * t367 + t50 * t236 + t362 * t539 + t487 * t72 - t536 * t71, t208 * t101 + t185 * t401 + t225 * t469 - t51 * t236 + t71 * t274 - t378 * t310 + t543 * t362 + t488 * t72, t114 * t490 + t216 * t64, -t112 * t490 - t114 * t489 - t215 * t64 - t216 * t65, t102 * t216 + t114 * t487 + t182 * t490 - t536 * t64, -t102 * t215 - t112 * t487 - t182 * t489 + t536 * t65, -t102 * t536 + t182 * t487, t173 * t65 + t20 * t215 + t408 * t102 - t6 * t536 + t489 * t45 + ((-qJD(5) * t174 - t540) * t354 + (-qJD(5) * t167 - t541) * t350) * t182 + t487 * t16 + t513 * t112, -t491 * t102 + t513 * t114 - t487 * t17 + t173 * t64 + t182 * t531 + t20 * t216 + t490 * t45 + t5 * t536, t197 * t29 + t520 * t77, -t196 * t29 - t197 * t30 - t519 * t77 - t520 * t75, t110 * t520 + t197 * t65 + t215 * t29 + t489 * t77, -t110 * t519 - t196 * t65 - t215 * t30 - t489 * t75, t110 * t489 + t215 * t65 (-t349 * t80 + t353 * t87) * t65 + t2 * t215 + t79 * t30 + t4 * t196 - t489 * t414 + t522 * t75 + t519 * t14 + (t349 * t427 - t353 * t426) * t110 -(t349 * t87 + t353 * t80) * t65 - t1 * t215 + t79 * t29 + t4 * t197 + t522 * t77 + t520 * t14 + (t349 * t426 + t353 * t427) * t110 - t489 * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t217 * t379 + t486, -t218 * t379 + t290, t217 * t245 + t218 * t359, -t171 * t217 - t172 * t218 + t198, 0, 0, 0, 0, 0, t347 * t102 - t180 * t362 + (t217 * t183 - t225 * t526 + t362 * t480) * t344, t347 * t101 - t181 * t362 + (t217 * t185 + t351 * t225 + t362 * t458) * t344, 0, 0, 0, 0, 0, -t315 * t102 - t112 * t534 - t182 * t533 - t65 * t467, -t316 * t102 - t114 * t534 + t182 * t535 - t64 * t467, 0, 0, 0, 0, 0, t315 * t30 + t388 * t65 + t533 * t75 + (qJD(6) * t387 + t349 * t535 - t353 * t534) * t110, t315 * t29 + t387 * t65 + t533 * t77 + (-qJD(6) * t388 + t349 * t534 + t353 * t535) * t110; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t183 * t185, -t183 ^ 2 + t185 ^ 2, -t183 * t362 + t101, t365 * t185 - t419, -t225, -t72 * t185 - t362 * t51 + t22, t72 * t183 - t362 * t50 + t378, t114 * t440 + t350 * t64 (t64 - t508) * t354 + (-t65 - t507) * t350, t102 * t350 - t114 * t185 + t182 * t440, -t182 ^ 2 * t350 + t102 * t354 + t112 * t185, -t182 * t185, -pkin(4) * t65 - t51 * t112 - t16 * t185 + (-t20 + (-pkin(12) * qJD(5) - t90) * t182) * t354 + (t50 * t182 + t392) * t350, -pkin(4) * t64 - t51 * t114 + t17 * t185 + t20 * t350 + (pkin(12) * t478 + t523) * t182 + t392 * t354, t29 * t350 * t353 + (-t350 * t475 + t420) * t77, t75 * t85 + t77 * t84 + (-t349 * t77 - t353 * t75) * t476 + (-t516 - t30 * t353 + (t349 * t75 - t353 * t77) * qJD(6)) * t350, -t29 * t354 + t420 * t110 + (t182 * t77 + t395) * t350, t30 * t354 + (-t349 * t476 + t84) * t110 + (-t182 * t75 + t396) * t350, t110 * t182 * t350 - t354 * t65, t328 * t514 - t14 * t84 - t33 * t75 + (t349 * t442 + t353 * t512) * t110 + (t14 * t479 - t2 + (qJD(5) * t75 + t396) * pkin(12)) * t354 + (t14 * t474 + t4 * t349 - t182 * t414 + (t110 * t479 + t30) * pkin(12)) * t350, -t328 * t515 - t14 * t85 - t33 * t77 + (-t349 * t512 + t353 * t442) * t110 + (t14 * t477 + t1 + (qJD(5) * t77 - t395) * pkin(12)) * t354 + (-t14 * t475 + t4 * t353 - t182 * t10 + (t110 * t477 + t29) * pkin(12)) * t350; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t114 * t112, -t112 ^ 2 + t114 ^ 2, t64 + t508, t507 - t65, t102, -t114 * t45 + t17 * t182 + t6, t112 * t45 + t16 * t182 - t5, t439 * t77 + t516 (t29 - t518) * t353 + (-t30 - t517) * t349, t110 * t439 - t114 * t77 + t515, -t110 ^ 2 * t349 + t114 * t75 + t514, -t110 * t114, -pkin(5) * t30 + t114 * t414 - t17 * t75 + t377 * t349 - t353 * t528, -pkin(5) * t29 + t10 * t114 - t17 * t77 + t349 * t528 + t377 * t353; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77 * t75, -t75 ^ 2 + t77 ^ 2, t29 + t518, -t30 + t517, t65, t10 * t110 - t14 * t77 + t2, -t110 * t414 + t14 * t75 - t1;];
tauc_reg  = t9;
