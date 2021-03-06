% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRRP7
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
% 
% Output:
% tau_reg [6x33]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRP7_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP7_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP7_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP7_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP7_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP7_invdynJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:43:14
% EndTime: 2019-03-10 01:43:46
% DurationCPUTime: 13.76s
% Computational Cost: add. (17559->686), mult. (42204->918), div. (0->0), fcn. (34137->14), ass. (0->337)
t310 = sin(qJ(2));
t315 = cos(qJ(2));
t361 = pkin(2) * t310 - pkin(9) * t315;
t304 = sin(pkin(6));
t436 = qJD(1) * t304;
t227 = t361 * t436;
t314 = cos(qJ(3));
t216 = t314 * t227;
t398 = t310 * t436;
t305 = cos(pkin(6));
t435 = qJD(1) * t305;
t414 = pkin(1) * t435;
t226 = -pkin(8) * t398 + t315 * t414;
t309 = sin(qJ(3));
t316 = -pkin(10) - pkin(9);
t404 = qJD(3) * t316;
t450 = t314 * t315;
t536 = -t226 * t309 + t216 + (pkin(3) * t310 - pkin(10) * t450) * t436 - t314 * t404;
t308 = sin(qJ(4));
t313 = cos(qJ(4));
t244 = t308 * t309 - t313 * t314;
t418 = qJD(3) + qJD(4);
t183 = t418 * t244;
t434 = qJD(1) * t315;
t397 = t304 * t434;
t196 = t244 * t397;
t547 = t183 - t196;
t245 = t308 * t314 + t309 * t313;
t443 = (-t397 + t418) * t245;
t312 = cos(qJ(5));
t425 = qJD(5) * t312;
t285 = qJD(2) + t435;
t366 = t309 * t398;
t211 = t285 * t314 - t366;
t212 = t285 * t309 + t314 * t398;
t354 = t313 * t211 - t212 * t308;
t528 = t354 * t312;
t546 = t425 - t528;
t307 = sin(qJ(5));
t264 = -qJD(3) + t397;
t348 = -qJD(4) + t264;
t334 = t312 * t348;
t353 = t211 * t308 + t313 * t212;
t119 = t307 * t353 + t334;
t121 = -t307 * t348 + t312 * t353;
t421 = qJDD(1) * t305;
t284 = qJDD(2) + t421;
t430 = qJD(3) * t314;
t422 = qJD(1) * qJD(2);
t391 = t315 * t422;
t420 = qJDD(1) * t310;
t541 = t391 + t420;
t526 = t541 * t304;
t137 = -qJD(3) * t366 + t309 * t284 + t285 * t430 + t526 * t314;
t432 = qJD(2) * t315;
t394 = t309 * t432;
t431 = qJD(3) * t309;
t138 = -t314 * t284 + t285 * t431 + t304 * (qJD(1) * (t310 * t430 + t394) + t309 * t420);
t355 = t313 * t137 - t308 * t138;
t320 = qJD(4) * t354 + t355;
t392 = t310 * t422;
t365 = t304 * t392;
t419 = qJDD(1) * t315;
t283 = t304 * t419;
t417 = qJDD(3) - t283;
t224 = t365 + t417;
t330 = qJDD(4) + t224;
t426 = qJD(5) * t307;
t36 = qJD(5) * t334 - t307 * t330 - t312 * t320 + t353 * t426;
t318 = t307 * t320 - t312 * t330;
t37 = qJD(5) * t121 + t318;
t145 = qJD(5) - t354;
t543 = t145 * t307;
t545 = -t119 * t546 - t121 * t543 - t307 * t37 - t36 * t312;
t380 = t308 * t137 + t313 * t138;
t62 = qJD(4) * t353 + t380;
t59 = qJDD(5) + t62;
t57 = t312 * t59;
t544 = t119 * t353 - t145 * t543 + t57;
t428 = qJD(4) * t313;
t229 = pkin(8) * t397 + t310 * t414;
t194 = pkin(9) * t285 + t229;
t350 = -pkin(2) * t315 - pkin(9) * t310 - pkin(1);
t223 = t350 * t304;
t206 = qJD(1) * t223;
t134 = t194 * t314 + t206 * t309;
t108 = pkin(10) * t211 + t134;
t105 = t308 * t108;
t133 = -t194 * t309 + t314 * t206;
t107 = -pkin(10) * t212 + t133;
t65 = t107 * t313 - t105;
t538 = -pkin(3) * t428 + t65;
t367 = t309 * t397;
t439 = t314 * t226 + t309 * t227;
t142 = -pkin(10) * t367 + t439;
t246 = t309 * t404;
t267 = t316 * t309;
t268 = t316 * t314;
t352 = t267 * t313 + t268 * t308;
t542 = qJD(4) * t352 + (-t142 + t246) * t313 - t536 * t308;
t362 = -t229 + (-t367 + t431) * pkin(3);
t429 = qJD(4) * t308;
t413 = pkin(1) * qJD(2) * t305;
t369 = qJD(1) * t413;
t409 = pkin(1) * t421;
t405 = -pkin(8) * t283 - t310 * t409 - t315 * t369;
t329 = -pkin(8) * t365 - t405;
t156 = pkin(9) * t284 + t329;
t344 = t361 * qJD(2);
t158 = (qJD(1) * t344 + qJDD(1) * t350) * t304;
t322 = -qJD(3) * t134 - t309 * t156 + t314 * t158;
t45 = pkin(3) * t224 - pkin(10) * t137 + t322;
t342 = -t314 * t156 - t309 * t158 + t194 * t431 - t206 * t430;
t48 = -pkin(10) * t138 - t342;
t98 = -pkin(3) * t264 + t107;
t384 = -t108 * t429 + t308 * t45 + t313 * t48 + t98 * t428;
t11 = pkin(11) * t330 + t384;
t368 = t526 * pkin(8) + t310 * t369 - t315 * t409;
t157 = -t284 * pkin(2) + t368;
t92 = t138 * pkin(3) + t157;
t16 = t62 * pkin(4) - pkin(11) * t320 + t92;
t106 = t313 * t108;
t55 = t308 * t98 + t106;
t52 = -pkin(11) * t348 + t55;
t193 = -pkin(2) * t285 - t226;
t152 = -pkin(3) * t211 + t193;
t68 = -pkin(4) * t354 - pkin(11) * t353 + t152;
t27 = t307 * t68 + t312 * t52;
t5 = -qJD(5) * t27 - t307 * t11 + t312 * t16;
t1 = pkin(5) * t59 + qJ(6) * t36 - qJD(6) * t121 + t5;
t26 = -t307 * t52 + t312 * t68;
t17 = -qJ(6) * t121 + t26;
t13 = pkin(5) * t145 + t17;
t18 = -qJ(6) * t119 + t27;
t347 = -t312 * t11 - t307 * t16 - t68 * t425 + t426 * t52;
t3 = -qJ(6) * t37 - qJD(6) * t119 - t347;
t497 = cos(qJ(1));
t400 = t497 * t310;
t311 = sin(qJ(1));
t451 = t311 * t315;
t238 = t305 * t400 + t451;
t303 = qJ(3) + qJ(4);
t297 = sin(t303);
t298 = cos(t303);
t403 = t304 * t497;
t175 = t238 * t298 - t297 * t403;
t399 = t497 * t315;
t452 = t310 * t311;
t240 = -t305 * t452 + t399;
t457 = t304 * t311;
t179 = t240 * t298 + t297 * t457;
t458 = t304 * t310;
t220 = t297 * t305 + t298 * t458;
t339 = g(1) * t179 + g(2) * t175 + g(3) * t220;
t540 = -t339 + (-t145 * t18 - t1) * t307 + (-t13 * t145 + t3) * t312;
t539 = -pkin(11) * t398 + t542;
t537 = t443 * pkin(4) + pkin(11) * t547 + t362;
t359 = -g(1) * t240 - g(2) * t238;
t535 = -g(3) * t458 + t359;
t33 = t36 * t307;
t533 = t121 * t546 - t33;
t532 = -t121 * t353 + t145 * t546 + t307 * t59;
t54 = t313 * t98 - t105;
t51 = pkin(4) * t348 - t54;
t530 = t354 * t51;
t383 = t108 * t428 + t308 * t48 - t313 * t45 + t98 * t429;
t12 = -pkin(4) * t330 + t383;
t174 = t238 * t297 + t298 * t403;
t178 = t240 * t297 - t298 * t457;
t219 = t297 * t458 - t305 * t298;
t340 = g(1) * t178 + g(2) * t174 + g(3) * t219;
t332 = -t12 + t340;
t527 = t353 * t354;
t93 = pkin(4) * t353 - pkin(11) * t354;
t79 = pkin(3) * t212 + t93;
t525 = t307 * t79 + t312 * t538;
t237 = -t305 * t399 + t452;
t239 = t305 * t451 + t400;
t455 = t304 * t315;
t331 = -g(1) * t239 - g(2) * t237 + g(3) * t455;
t524 = t353 ^ 2 - t354 ^ 2;
t523 = -t152 * t354 + t339 - t384;
t299 = t312 * qJ(6);
t522 = -pkin(5) * t353 + t299 * t354;
t521 = t175 * t307 - t237 * t312;
t520 = t175 * t312 + t237 * t307;
t519 = t354 * t264 + t355;
t300 = t304 ^ 2;
t416 = 0.2e1 * t300;
t296 = t312 * qJD(6);
t292 = pkin(3) * t308 + pkin(11);
t449 = -qJ(6) - t292;
t375 = qJD(5) * t449;
t470 = t354 * t307;
t514 = qJ(6) * t470 + t307 * t375 + t296 - t525;
t77 = t312 * t79;
t513 = t312 * t375 + t522 - t77 + (-qJD(6) + t538) * t307;
t64 = t107 * t308 + t106;
t363 = pkin(3) * t429 - t64;
t512 = t145 * t353;
t511 = t331 * t297;
t510 = t537 * t312;
t135 = t308 * t142;
t199 = t267 * t308 - t268 * t313;
t509 = qJD(4) * t199 + t246 * t308 + t536 * t313 - t135;
t496 = pkin(1) * t310;
t438 = pkin(8) * t455 + t305 * t496;
t222 = pkin(9) * t305 + t438;
t440 = t314 * t222 + t309 * t223;
t140 = -t179 * t307 + t239 * t312;
t407 = t312 * t455;
t508 = g(2) * t521 - g(3) * (-t220 * t307 - t407) - g(1) * t140;
t295 = pkin(3) * t314 + pkin(2);
t173 = pkin(4) * t244 - pkin(11) * t245 - t295;
t507 = t173 * t425 + t537 * t307 + t539 * t312;
t505 = -t26 * t353 + t51 * t426;
t503 = t27 * t353 - t332 * t307 + t51 * t425;
t501 = -t152 * t353 + t340 - t383;
t500 = -t264 * t353 - t380;
t498 = t121 ^ 2;
t234 = -t305 * t314 + t309 * t458;
t495 = pkin(3) * t234;
t494 = pkin(3) * t313;
t306 = -qJ(6) - pkin(11);
t485 = -t17 + t13;
t160 = -t196 * t312 + t307 * t398;
t188 = t312 * t199;
t351 = qJ(6) * t183 - qJD(6) * t245;
t484 = qJ(6) * t160 - t188 * qJD(5) + t351 * t312 + t510 + ((qJ(6) * t245 - t173) * qJD(5) - t539) * t307 + t443 * pkin(5);
t159 = -t196 * t307 - t312 * t398;
t393 = t245 * t425;
t483 = (-qJD(5) * t199 + t351) * t307 + t507 + (-t393 + t159) * qJ(6);
t482 = t307 * t93 + t312 * t54;
t456 = t304 * t314;
t235 = t305 * t309 + t310 * t456;
t377 = -t222 * t309 + t314 * t223;
t116 = -pkin(3) * t455 - pkin(10) * t235 + t377;
t127 = -pkin(10) * t234 + t440;
t448 = t308 * t116 + t313 * t127;
t71 = -pkin(11) * t455 + t448;
t161 = t313 * t234 + t235 * t308;
t162 = -t234 * t308 + t235 * t313;
t286 = pkin(8) * t458;
t221 = t286 + (-pkin(1) * t315 - pkin(2)) * t305;
t168 = t221 + t495;
t86 = pkin(4) * t161 - pkin(11) * t162 + t168;
t480 = t307 * t86 + t312 * t71;
t476 = pkin(4) * t398 + t509;
t386 = qJD(5) * t306;
t474 = t296 - t482 + (qJ(6) * t354 + t386) * t307;
t89 = t312 * t93;
t473 = t312 * t386 - t89 + (-qJD(6) + t54) * t307 + t522;
t468 = t211 * t264;
t467 = t212 * t264;
t463 = t238 * t309;
t462 = t245 * t307;
t461 = t245 * t312;
t460 = t298 * t307;
t459 = t300 * qJD(1) ^ 2;
t454 = t305 * t315;
t453 = t307 * t315;
t293 = pkin(5) * t312 + pkin(4);
t446 = -t174 * t293 - t175 * t306;
t445 = -t178 * t293 - t179 * t306;
t442 = t307 * t173 + t188;
t441 = -t219 * t293 - t220 * t306;
t395 = t304 * t432;
t231 = pkin(8) * t395 + t310 * t413;
t301 = t310 ^ 2;
t437 = -t315 ^ 2 + t301;
t433 = qJD(2) * t310;
t427 = qJD(5) * t145;
t424 = qJD(2) - t285;
t408 = t315 * t459;
t270 = t304 * t453;
t402 = t309 * t497;
t401 = t314 * t497;
t396 = t304 * t433;
t388 = pkin(5) * t307 - t316;
t387 = -t307 * t71 + t312 * t86;
t385 = qJDD(4) + t417;
t382 = t116 * t313 - t308 * t127;
t379 = t183 * t307 + t159;
t378 = t183 * t312 + t160;
t376 = t238 * t314 - t304 * t402;
t372 = t285 + t435;
t370 = t284 + t421;
t185 = qJD(3) * t235 + t304 * t394;
t153 = pkin(3) * t185 + t231;
t360 = -g(1) * t174 + g(2) * t178;
t70 = pkin(4) * t455 - t382;
t356 = -t292 * t59 - t530;
t186 = -qJD(3) * t234 + t314 * t395;
t228 = t304 * t344;
t230 = (pkin(1) * t454 - t286) * qJD(2);
t323 = -qJD(3) * t440 + t314 * t228 - t230 * t309;
t78 = pkin(3) * t396 - pkin(10) * t186 + t323;
t341 = -t222 * t431 + t223 * t430 + t309 * t228 + t314 * t230;
t83 = -pkin(10) * t185 + t341;
t349 = -t116 * t429 - t127 * t428 - t308 * t83 + t313 * t78;
t143 = t162 * t307 + t407;
t189 = -t240 * t309 + t311 * t456;
t343 = t116 * t428 - t127 * t429 + t308 * t78 + t313 * t83;
t20 = pkin(11) * t396 + t343;
t90 = -qJD(4) * t161 - t185 * t308 + t186 * t313;
t91 = qJD(4) * t162 + t313 * t185 + t186 * t308;
t41 = pkin(4) * t91 - pkin(11) * t90 + t153;
t345 = t312 * t20 + t307 * t41 + t86 * t425 - t426 * t71;
t338 = -t304 * t401 - t463;
t337 = -t379 + t393;
t336 = -t245 * t426 - t378;
t328 = -pkin(9) * t224 - t193 * t264;
t327 = t331 * t298;
t21 = -pkin(4) * t396 - t349;
t326 = -qJD(5) * t480 - t20 * t307 + t312 * t41;
t321 = pkin(9) * qJD(3) * t264 - t157 - t331;
t8 = t37 * pkin(5) + qJDD(6) + t12;
t294 = -pkin(4) - t494;
t266 = pkin(11) * t312 + t299;
t265 = t306 * t307;
t243 = t292 * t312 + t299;
t242 = t449 * t307;
t190 = t240 * t314 + t309 * t457;
t167 = t312 * t173;
t144 = t162 * t312 - t270;
t141 = t179 * t312 + t239 * t307;
t118 = t119 ^ 2;
t104 = -qJ(6) * t462 + t442;
t94 = pkin(5) * t244 - t199 * t307 - t245 * t299 + t167;
t61 = -qJD(5) * t270 + t162 * t425 + t307 * t90 - t312 * t396;
t60 = qJD(5) * t143 - t307 * t396 - t312 * t90;
t42 = t119 * pkin(5) + qJD(6) + t51;
t29 = -qJ(6) * t143 + t480;
t24 = pkin(5) * t161 - qJ(6) * t144 + t387;
t7 = -qJ(6) * t61 - qJD(6) * t143 + t345;
t6 = pkin(5) * t91 + qJ(6) * t60 - qJD(6) * t144 + t326;
t2 = [qJDD(1), g(1) * t311 - g(2) * t497, g(1) * t497 + g(2) * t311 (qJDD(1) * t301 + 0.2e1 * t310 * t391) * t300 (t310 * t419 - t422 * t437) * t416 (t310 * t370 + t372 * t432) * t304 (t315 * t370 - t372 * t433) * t304, t284 * t305, -t231 * t285 - t286 * t284 - t368 * t305 + g(1) * t238 - g(2) * t240 + (t284 * t454 + (-t392 + t419) * t416) * pkin(1), -pkin(1) * t416 * t541 - g(1) * t237 + g(2) * t239 - t230 * t285 - t438 * t284 - t329 * t305, t137 * t235 + t186 * t212, -t137 * t234 - t138 * t235 - t185 * t212 + t186 * t211, -t186 * t264 + t224 * t235 + (-t137 * t315 + t212 * t433) * t304, t185 * t264 - t224 * t234 + (t138 * t315 + t211 * t433) * t304 (-t224 * t315 - t264 * t433) * t304, -t323 * t264 + t377 * t224 - t231 * t211 + t221 * t138 + t157 * t234 + t193 * t185 + g(1) * t376 - g(2) * t190 + (t133 * t433 - t315 * t322) * t304, t341 * t264 - t440 * t224 + t231 * t212 + t221 * t137 + t157 * t235 + t193 * t186 - g(1) * t463 - g(2) * t189 + (-g(1) * t401 - t134 * t433 - t315 * t342) * t304, t162 * t320 + t353 * t90, -t161 * t320 - t162 * t62 - t353 * t91 + t354 * t90, t90 * t418 + t162 * t385 + (-t320 * t315 + t353 * t433 + (t162 * t433 - t315 * t90) * qJD(1)) * t304, -t91 * t418 - t161 * t385 + (t354 * t433 + t62 * t315 + (-t161 * t433 + t315 * t91) * qJD(1)) * t304 (-t385 * t315 + (-0.2e1 * t397 + t418) * t433) * t304, g(1) * t175 - g(2) * t179 + t152 * t91 - t153 * t354 + t92 * t161 + t168 * t62 + t330 * t382 - t348 * t349 + t383 * t455 + t396 * t54, t152 * t90 + t153 * t353 + t92 * t162 + t168 * t320 - t330 * t448 + t343 * t348 + t384 * t455 - t396 * t55 + t360, -t121 * t60 - t144 * t36, t119 * t60 - t121 * t61 + t143 * t36 - t144 * t37, t121 * t91 + t144 * t59 - t145 * t60 - t161 * t36, -t119 * t91 - t143 * t59 - t145 * t61 - t161 * t37, t145 * t91 + t161 * t59, g(1) * t520 - g(2) * t141 + t21 * t119 + t12 * t143 + t326 * t145 + t5 * t161 + t26 * t91 + t70 * t37 + t387 * t59 + t51 * t61, -g(1) * t521 - g(2) * t140 + t12 * t144 + t21 * t121 - t345 * t145 + t347 * t161 - t27 * t91 - t70 * t36 - t480 * t59 - t51 * t60, -t1 * t144 - t119 * t7 - t121 * t6 + t13 * t60 - t143 * t3 - t18 * t61 + t24 * t36 - t29 * t37 - t360, t3 * t29 + t18 * t7 + t1 * t24 + t13 * t6 + t8 * (pkin(5) * t143 + t70) + t42 * (pkin(5) * t61 + t21) - g(1) * (-t311 * pkin(1) + t174 * t306 - t175 * t293 - t238 * t295 + (pkin(3) * t402 + pkin(8) * t497) * t304 - t388 * t237) - g(2) * (t497 * pkin(1) - t178 * t306 + t179 * t293 + t240 * t295 + (pkin(3) * t309 + pkin(8)) * t457 + t388 * t239); 0, 0, 0, -t310 * t408, t437 * t459 (t424 * t434 + t420) * t304, -t398 * t424 + t283, t284, t229 * t285 + t459 * t496 - t331 - t368, pkin(1) * t408 + t226 * t285 + (pkin(8) * t422 + g(3)) * t458 - t359 + t405, t137 * t309 - t314 * t467 (t137 - t468) * t314 + (-t138 + t467) * t309, -t264 * t430 + t224 * t309 + (-t212 * t310 + t264 * t450) * t436, t264 * t431 + t224 * t314 + (-t264 * t309 * t315 - t211 * t310) * t436, t264 * t398, -t133 * t398 - pkin(2) * t138 + t229 * t211 + t216 * t264 + (-t226 * t264 + t328) * t309 + t321 * t314, -pkin(2) * t137 + t134 * t398 - t229 * t212 - t264 * t439 - t309 * t321 + t314 * t328, t245 * t320 - t353 * t547, -t244 * t320 - t245 * t62 - t353 * t443 - t354 * t547, t245 * t330 + t348 * t547 - t353 * t398, -t244 * t330 + t348 * t443 - t354 * t398, t348 * t398, t443 * t152 + t92 * t244 - t295 * t62 + t330 * t352 + t348 * t509 - t354 * t362 - t54 * t398 - t327, -t152 * t547 - t199 * t330 + t92 * t245 - t295 * t320 + t348 * t542 + t362 * t353 + t55 * t398 + t511, t121 * t336 - t36 * t461, t379 * t121 + t378 * t119 + (t33 - t312 * t37 + (t119 * t307 - t121 * t312) * qJD(5)) * t245, t121 * t443 + t145 * t336 - t244 * t36 + t461 * t59, -t119 * t443 - t145 * t337 - t244 * t37 - t462 * t59, t145 * t443 + t244 * t59, -t51 * t159 + t167 * t59 - t352 * t37 + t5 * t244 + t443 * t26 + t510 * t145 + t476 * t119 + ((-t145 * t199 + t245 * t51) * qJD(5) - t327) * t312 + (t12 * t245 - t51 * t183 - t199 * t59 + (-qJD(5) * t173 - t539) * t145 + t535) * t307, -t442 * t59 + t347 * t244 + t352 * t36 + t12 * t461 - g(1) * (t239 * t460 + t240 * t312) - g(2) * (t237 * t460 + t238 * t312) - g(3) * (-t298 * t453 + t310 * t312) * t304 - t443 * t27 + (t199 * t426 - t507) * t145 + t476 * t121 + t336 * t51, -t104 * t37 + t36 * t94 + t379 * t18 + t378 * t13 - t484 * t121 - t483 * t119 - t511 + (-t1 * t312 - t3 * t307 + (t13 * t307 - t18 * t312) * qJD(5)) * t245, t3 * t104 + t1 * t94 + t8 * (pkin(5) * t462 - t352) + t483 * t18 + t484 * t13 - t331 * (t293 * t298 - t297 * t306 + t295) + (-t135 + (qJD(4) * t267 + t246) * t308 + (-qJD(4) * t268 + t536) * t313 + t337 * pkin(5) + pkin(4) * qJD(1) * t458) * t42 + t535 * t388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t212 * t211, -t211 ^ 2 + t212 ^ 2, t137 + t468, -t138 - t467, t224, -g(1) * t189 - g(2) * t338 + g(3) * t234 - t134 * t264 - t193 * t212 + t322, g(1) * t190 + g(2) * t376 + g(3) * t235 - t133 * t264 - t193 * t211 + t342, -t527, t524, t519, t500, t330, -t64 * t348 + (t212 * t354 + t313 * t330 + t348 * t429) * pkin(3) + t501, -t65 * t348 + (-t212 * t353 - t308 * t330 + t348 * t428) * pkin(3) + t523, t533, t545, t532, t544, -t512, -t77 * t145 + t294 * t37 + t363 * t119 + (t538 * t145 + t356) * t307 + (-t292 * t427 + t332) * t312 + t505, -t294 * t36 + t356 * t312 + t363 * t121 + (t292 * t426 + t525) * t145 + t503, -t514 * t119 - t513 * t121 + t242 * t36 - t243 * t37 + t540, t3 * t243 + t1 * t242 + t8 * (-t293 - t494) - g(1) * (pkin(3) * t189 + t445) - g(2) * (pkin(3) * t338 + t446) - g(3) * (t441 - t495) + ((t426 - t470) * pkin(5) + t363) * t42 + t514 * t18 + t513 * t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t527, t524, t519, t500, t330, -t348 * t55 + t501, -t348 * t54 + t523, t533, t545, t532, t544, -t512, -pkin(4) * t37 - t55 * t119 - t89 * t145 + (-pkin(11) * t59 + t145 * t54 - t530) * t307 + (-pkin(11) * t427 + t332) * t312 + t505, pkin(4) * t36 + t482 * t145 - t55 * t121 - t51 * t528 + (t145 * t426 - t57) * pkin(11) + t503, -t474 * t119 - t473 * t121 + t265 * t36 - t266 * t37 + t540, t3 * t266 + t1 * t265 - t8 * t293 - g(1) * t445 - g(2) * t446 - g(3) * t441 + (pkin(5) * t543 - t55) * t42 + t474 * t18 + t473 * t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t121 * t119, -t118 + t498, t119 * t145 - t36, -t318 + (-qJD(5) + t145) * t121, t59, -t51 * t121 + t27 * t145 + t5 + t508, t26 * t145 + t51 * t119 + g(1) * t141 + g(2) * t520 - g(3) * (-t220 * t312 + t270) + t347, pkin(5) * t36 - t119 * t485, t485 * t18 + (-t42 * t121 + t1 + t508) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t118 - t498, t18 * t119 + t13 * t121 - t340 + t8;];
tau_reg  = t2;
