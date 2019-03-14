% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRPRRP5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:06
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRRP5_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP5_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP5_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP5_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP5_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP5_invdynJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:05:34
% EndTime: 2019-03-09 12:06:04
% DurationCPUTime: 17.40s
% Computational Cost: add. (22878->856), mult. (64856->1092), div. (0->0), fcn. (53161->12), ass. (0->411)
t323 = sin(pkin(6));
t332 = cos(qJ(2));
t521 = cos(pkin(11));
t432 = t332 * t521;
t410 = t323 * t432;
t290 = qJD(1) * t410;
t328 = sin(qJ(2));
t520 = sin(pkin(11));
t433 = t328 * t520;
t411 = t323 * t433;
t388 = qJD(1) * t411;
t249 = t388 - t290;
t360 = qJD(4) + t249;
t331 = cos(qJ(4));
t560 = qJD(4) * t360;
t576 = t249 * t360 + t560;
t584 = t576 * t331;
t324 = cos(pkin(6));
t312 = t324 * t332 * pkin(1);
t306 = qJD(1) * t312;
t538 = pkin(8) + qJ(3);
t443 = t538 * t328;
t415 = t323 * t443;
t236 = -qJD(1) * t415 + t306;
t494 = t324 * t328;
t311 = pkin(1) * t494;
t496 = t323 * t332;
t237 = (t496 * t538 + t311) * qJD(1);
t430 = t521 * t237;
t165 = t236 * t520 + t430;
t327 = sin(qJ(4));
t583 = -t165 + t360 * (pkin(4) * t327 - pkin(10) * t331);
t361 = t328 * t521 + t332 * t520;
t353 = qJD(1) * t361;
t253 = t323 * t353;
t330 = cos(qJ(5));
t326 = sin(qJ(5));
t492 = t326 * t331;
t183 = -t249 * t492 - t330 * t253;
t471 = qJD(4) * t331;
t582 = -t326 * t471 + t183;
t475 = qJD(1) * t324;
t420 = qJD(2) + t475;
t219 = t331 * t253 + t327 * t420;
t409 = qJD(2) * t432;
t198 = -qJD(2) * t388 + (qJD(1) * t409 + qJDD(1) * t361) * t323;
t370 = qJD(4) * t420 + t198;
t463 = qJDD(1) * t324;
t308 = qJDD(2) + t463;
t466 = t327 * qJD(4);
t426 = -t253 * t466 + t327 * t308;
t343 = t370 * t331 + t426;
t505 = t249 * t327;
t562 = t466 + t505;
t581 = t562 * t219 - t331 * t343;
t469 = qJD(5) * t330;
t359 = t469 * t327 - t582;
t580 = qJD(5) * t360 + t343;
t287 = qJDD(1) * t410;
t352 = qJD(2) * t361;
t400 = qJDD(1) * t433;
t338 = (t352 * qJD(1) + t400) * t323;
t197 = -t287 + t338;
t319 = pkin(2) * t332 + pkin(1);
t398 = t319 * qJDD(1);
t464 = qJD(1) * qJD(2);
t440 = t328 * t464;
t413 = t323 * t440;
t460 = pkin(2) * t413 + qJDD(3);
t235 = -t323 * t398 + t460;
t107 = pkin(3) * t197 - pkin(9) * t198 + t235;
t369 = t324 * pkin(2) - t415;
t220 = qJD(2) * pkin(2) + qJD(1) * t369 + t306;
t144 = t520 * t220 + t430;
t136 = pkin(9) * t420 + t144;
t269 = -qJD(1) * t319 * t323 + qJD(3);
t160 = pkin(3) * t249 - pkin(9) * t253 + t269;
t457 = pkin(1) * t463;
t305 = t332 * t457;
t441 = t324 * t464;
t417 = pkin(1) * t441;
t381 = -t328 * t417 + t305;
t436 = qJD(2) * t538;
t472 = qJD(3) * t328;
t140 = pkin(2) * t308 + (-qJDD(1) * t443 + (-t332 * t436 - t472) * qJD(1)) * t323 + t381;
t365 = qJD(3) * t332 - t328 * t436;
t461 = qJDD(1) * t332;
t438 = t323 * t461;
t453 = pkin(8) * t438 + t328 * t457 + t332 * t417;
t155 = (qJ(3) * t461 + qJD(1) * t365) * t323 + t453;
t87 = t520 * t140 + t521 * t155;
t81 = pkin(9) * t308 + t87;
t379 = -t327 * t107 + t136 * t466 - t160 * t471 - t331 * t81;
t88 = -t327 * t136 + t331 * t160;
t579 = -t360 * t88 - t379;
t486 = t330 * t331;
t184 = -t249 * t486 + t253 * t326;
t470 = qJD(5) * t326;
t578 = t470 * t327 - t330 * t471 + t184;
t421 = -t331 * t107 + t136 * t471 + t160 * t466 + t327 * t81;
t89 = t331 * t136 + t327 * t160;
t577 = t360 * t89 - t421;
t561 = t249 * t331 + t471;
t280 = t433 - t432;
t329 = sin(qJ(1));
t333 = cos(qJ(1));
t479 = t361 * t324;
t205 = t329 * t280 - t333 * t479;
t495 = t323 * t333;
t185 = -t205 * t327 + t331 * t495;
t210 = -t333 * t280 - t329 * t479;
t497 = t323 * t329;
t189 = t210 * t327 - t331 * t497;
t257 = t361 * t323;
t230 = t257 * t327 - t324 * t331;
t375 = g(1) * t189 + g(2) * t185 + g(3) * t230;
t186 = -t205 * t331 - t327 * t495;
t354 = t324 * t280;
t206 = -t329 * t361 - t333 * t354;
t575 = t186 * t326 + t206 * t330;
t574 = t186 * t330 - t206 * t326;
t320 = t323 ^ 2;
t573 = 0.2e1 * t320;
t316 = pkin(2) * t520 + pkin(9);
t449 = t316 * t466;
t227 = t520 * t237;
t166 = t236 * t521 - t227;
t474 = qJD(1) * t328;
t451 = t323 * t474;
t178 = pkin(2) * t451 + pkin(3) * t253 + pkin(9) * t249;
t103 = t331 * t166 + t327 * t178;
t91 = pkin(10) * t253 + t103;
t570 = t583 * t330 + (t449 + t91) * t326;
t317 = -pkin(2) * t521 - pkin(3);
t408 = t331 * pkin(4) + t327 * pkin(10);
t278 = -t408 + t317;
t569 = t278 * t469 + t326 * t583 - t330 * t91;
t150 = t219 * t326 - t330 * t360;
t217 = t253 * t327 - t331 * t420;
t215 = qJD(5) + t217;
t516 = t150 * t215;
t335 = qJDD(4) + t197;
t64 = t219 * t470 - t326 * t335 - t330 * t580;
t568 = -t64 - t516;
t152 = t330 * t219 + t326 * t360;
t514 = t152 * t215;
t65 = t219 * t469 + t326 * t580 - t330 * t335;
t567 = t65 + t514;
t566 = t150 * t360;
t565 = t249 * t420;
t564 = t578 * t215;
t284 = t316 * t486;
t226 = t326 * t278 + t284;
t459 = qJDD(4) - t287;
t563 = t459 + t338;
t477 = pkin(8) * t496 + t311;
t262 = t477 * qJD(2);
t209 = t329 * t354 - t333 * t361;
t256 = t411 - t410;
t372 = -g(1) * t209 - g(2) * t206 + g(3) * t256;
t190 = t210 * t331 + t327 * t497;
t119 = -t190 * t326 - t209 * t330;
t231 = t257 * t331 + t324 * t327;
t180 = t231 * t326 - t256 * t330;
t559 = -g(1) * t119 + g(2) * t575 + g(3) * t180;
t493 = t326 * t327;
t558 = -t152 * t359 + t64 * t493;
t482 = -t521 * t140 + t520 * t155;
t80 = -t308 * pkin(3) + t482;
t557 = -t80 + t372;
t556 = t152 ^ 2;
t555 = t253 ^ 2;
t334 = qJD(1) ^ 2;
t554 = pkin(1) * t323;
t427 = t327 * t198 - t331 * t308;
t114 = t219 * qJD(4) + t427;
t113 = qJDD(5) + t114;
t553 = pkin(5) * t113;
t552 = pkin(5) * t326;
t487 = t329 * t332;
t489 = t328 * t333;
t272 = -t324 * t487 - t489;
t548 = g(1) * t272;
t547 = g(1) * t329;
t540 = g(3) * t332;
t539 = t150 * pkin(5);
t325 = -qJ(6) - pkin(10);
t76 = pkin(10) * t360 + t89;
t143 = t220 * t521 - t227;
t135 = -pkin(3) * t420 - t143;
t83 = t217 * pkin(4) - t219 * pkin(10) + t135;
t40 = -t326 * t76 + t330 * t83;
t33 = -qJ(6) * t152 + t40;
t27 = pkin(5) * t215 + t33;
t537 = -t33 + t27;
t234 = t312 + t369;
t245 = qJ(3) * t496 + t477;
t173 = t234 * t521 - t520 * t245;
t161 = -t324 * pkin(3) - t173;
t104 = t230 * pkin(4) - t231 * pkin(10) + t161;
t174 = t520 * t234 + t521 * t245;
t162 = pkin(9) * t324 + t174;
t309 = pkin(2) * t496;
t478 = -t256 * pkin(3) + t309;
t412 = pkin(9) * t257 + t478;
t182 = -t412 - t554;
t106 = t331 * t162 + t327 * t182;
t96 = pkin(10) * t256 + t106;
t53 = t326 * t104 + t330 * t96;
t536 = qJ(6) * t64;
t535 = qJ(6) * t65;
t15 = -pkin(4) * t335 + t65 * pkin(5) + qJDD(6) + t421;
t534 = t15 * t326;
t41 = t326 * t83 + t330 * t76;
t34 = -qJ(6) * t150 + t41;
t533 = t215 * t34;
t532 = t215 * t40;
t531 = t215 * t41;
t26 = -t563 * pkin(4) + t421;
t530 = t26 * t326;
t529 = t331 * t65;
t468 = qJD(6) * t330;
t528 = pkin(5) * t505 + qJ(6) * t184 - t327 * t468 + (pkin(5) * t327 - qJ(6) * t486) * qJD(4) + (-t284 + (qJ(6) * t327 - t278) * t326) * qJD(5) + t570;
t467 = t316 * qJD(4);
t491 = t327 * t330;
t527 = qJ(6) * t183 + (-qJ(6) * qJD(5) - t467) * t491 + (-qJD(6) * t327 + (-qJ(6) * qJD(4) - qJD(5) * t316) * t331) * t326 + t569;
t526 = (-t330 * t466 - t331 * t470) * t316 + t569;
t525 = -t226 * qJD(5) + t570;
t446 = t331 * t467;
t102 = -t327 * t166 + t178 * t331;
t90 = -pkin(4) * t253 - t102;
t524 = pkin(5) * t359 + t446 - t90;
t435 = qJD(5) * t325;
t509 = t217 * t326;
t139 = pkin(4) * t219 + pkin(10) * t217;
t61 = t326 * t139 + t330 * t88;
t523 = -qJ(6) * t509 + t326 * t435 + t468 - t61;
t508 = t217 * t330;
t60 = t330 * t139 - t326 * t88;
t522 = -pkin(5) * t219 - qJ(6) * t508 - qJD(6) * t326 + t330 * t435 - t60;
t429 = qJD(6) + t539;
t75 = -pkin(4) * t360 - t88;
t59 = t429 + t75;
t519 = qJD(4) * t59;
t518 = t113 * t326;
t517 = t113 * t330;
t515 = t152 * t150;
t513 = t152 * t249;
t510 = t215 * t219;
t507 = t219 * t217;
t506 = t219 * t253;
t503 = t253 * t217;
t502 = t253 * t249;
t501 = t316 * t327;
t500 = t316 * t331;
t499 = t320 * t334;
t498 = t323 * t328;
t490 = t328 * t329;
t485 = t331 * t114;
t484 = t332 * t333;
t321 = t328 ^ 2;
t322 = t332 ^ 2;
t476 = t321 - t322;
t473 = qJD(2) * t328;
t465 = qJD(4) - t290;
t462 = qJDD(1) * t328;
t456 = t332 * t499;
t455 = t324 * t484;
t454 = t375 * t326;
t452 = pkin(9) + t552;
t450 = t323 * t473;
t445 = t323 * t324 * t334;
t444 = t538 * t323;
t442 = pkin(1) * t573;
t439 = t332 * t464;
t437 = g(2) * t495 - g(3) * t324;
t52 = t330 * t104 - t326 * t96;
t25 = t563 * pkin(10) - t379;
t38 = t114 * pkin(4) - pkin(10) * t343 + t80;
t3 = t330 * t25 + t326 * t38 + t83 * t469 - t76 * t470;
t428 = t152 * t466 + t331 * t64;
t105 = -t327 * t162 + t182 * t331;
t265 = pkin(2) * t494 - t444;
t425 = -t265 * t329 + t333 * t319;
t424 = t327 * t360;
t423 = t215 * t330;
t422 = pkin(2) * t450;
t419 = qJD(2) + 0.2e1 * t475;
t418 = t308 + t463;
t416 = t328 * t456;
t414 = t328 * t439;
t406 = -g(1) * t575 - g(2) * t119;
t120 = t190 * t330 - t209 * t326;
t405 = g(1) * t574 - g(2) * t120;
t404 = -g(1) * t185 + g(2) * t189;
t403 = g(1) * t206 - g(2) * t209;
t402 = g(1) * t333 + g(2) * t329;
t401 = t210 * pkin(3) + t425;
t397 = -t27 * t330 - t326 * t34;
t396 = t27 * t326 - t330 * t34;
t395 = t327 * t421 - t331 * t379;
t394 = -t326 * t41 - t330 * t40;
t393 = t326 * t40 - t330 * t41;
t307 = qJD(2) * t312;
t221 = t323 * t365 + t307;
t341 = -t323 * t472 + (-t332 * t444 - t311) * qJD(2);
t137 = t221 * t520 - t521 * t341;
t181 = t231 * t330 + t256 * t326;
t392 = -t265 * t333 - t319 * t329;
t318 = pkin(5) * t330 + pkin(4);
t391 = t318 * t331 - t325 * t327;
t294 = pkin(2) * t455;
t390 = -t490 * pkin(2) + t206 * pkin(3) + t294;
t389 = t253 * t420;
t387 = -t327 * t114 - t217 * t561;
t138 = t221 * t521 + t341 * t520;
t251 = qJD(2) * t411 - t323 * t409;
t252 = t323 * t352;
t179 = pkin(3) * t252 + pkin(9) * t251 + t422;
t58 = -t327 * t138 - t162 * t471 + t179 * t331 - t182 * t466;
t95 = -pkin(4) * t256 - t105;
t386 = pkin(3) * t205 + t392;
t57 = t331 * t138 - t162 * t466 + t327 * t179 + t182 * t471;
t50 = pkin(10) * t252 + t57;
t171 = qJD(4) * t231 - t251 * t327;
t172 = -qJD(4) * t230 - t251 * t331;
t72 = t171 * pkin(4) - t172 * pkin(10) + t137;
t11 = t104 * t469 + t326 * t72 + t330 * t50 - t470 * t96;
t385 = t582 * t215;
t384 = -t215 * t469 - t518;
t383 = -pkin(10) * t113 + t215 * t75;
t380 = -g(1) * t497 + t437;
t378 = -t439 - t462;
t377 = -g(1) * (-t209 * t492 + t210 * t330) - g(2) * (-t205 * t330 - t206 * t492) - g(3) * (t256 * t492 + t257 * t330);
t376 = -g(1) * (t209 * t486 + t210 * t326) - g(2) * (-t205 * t326 + t206 * t486) - g(3) * (-t256 * t486 + t257 * t326);
t374 = -g(1) * t190 - g(2) * t186 - g(3) * t231;
t373 = g(1) * t210 - g(2) * t205 + g(3) * t257;
t371 = -pkin(9) * t209 + t401;
t366 = -pkin(9) * t205 + t390;
t364 = -t15 + t375;
t363 = -t26 + t375;
t51 = -pkin(4) * t252 - t58;
t362 = t378 * pkin(8);
t357 = pkin(9) * t206 + t386;
t356 = t150 * t578 - t65 * t491;
t355 = pkin(2) * t272 + t209 * pkin(3);
t347 = g(1) * t120 + g(2) * t574 + g(3) * t181 - t3;
t4 = -qJD(5) * t41 - t25 * t326 + t330 * t38;
t12 = -qJD(5) * t53 - t326 * t50 + t330 * t72;
t346 = pkin(9) * t210 + t355;
t345 = qJD(5) * t394 + t3 * t330 - t4 * t326;
t342 = -t327 * t576 + t331 * t335;
t340 = t4 + t559;
t339 = (-qJD(2) * t353 - t400) * t323;
t337 = t287 + t339;
t336 = -qJDD(4) + t337;
t296 = t325 * t330;
t295 = t325 * t326;
t286 = t308 * t324;
t282 = -t309 - t554;
t276 = -pkin(8) * t498 + t312;
t273 = -t324 * t490 + t484;
t271 = -t324 * t489 - t487;
t270 = -t455 + t490;
t268 = (t316 + t552) * t327;
t264 = t330 * t278;
t261 = -pkin(8) * t450 + t307;
t260 = t477 * qJD(1);
t259 = -pkin(8) * t451 + t306;
t244 = t249 ^ 2;
t225 = -t316 * t492 + t264;
t216 = -qJ(6) * t493 + t226;
t213 = t323 * t362 + t381;
t212 = -pkin(8) * t413 + t453;
t199 = -qJ(6) * t491 + t264 + (-t316 * t326 - pkin(5)) * t331;
t149 = t150 ^ 2;
t94 = t252 * t326 - t231 * t470 + (qJD(5) * t256 + t172) * t330;
t93 = qJD(5) * t181 + t172 * t326 - t252 * t330;
t73 = -pkin(5) * t509 + t89;
t69 = pkin(5) * t180 + t95;
t68 = -t149 + t556;
t66 = -t113 * t331 + t215 * t424;
t63 = t113 * t230 + t171 * t215;
t46 = -t152 * t219 + t215 * t423 + t518;
t45 = -t215 ^ 2 * t326 + t150 * t219 + t517;
t44 = -t65 + t514;
t43 = -t64 + t516;
t42 = -qJ(6) * t180 + t53;
t37 = pkin(5) * t230 - qJ(6) * t181 + t52;
t32 = t326 * t516 - t330 * t65;
t31 = t152 * t423 - t326 * t64;
t30 = pkin(5) * t93 + t51;
t23 = t150 * t93 + t180 * t65;
t22 = t152 * t94 - t181 * t64;
t21 = t150 * t359 + t493 * t65;
t20 = -t152 * t578 - t491 * t64;
t19 = t529 + t385 + (t384 - t566) * t327;
t18 = -t529 + t385 + (t384 + t566) * t327;
t17 = (t513 - t517) * t327 + t564 + t428;
t16 = (t513 + t517) * t327 - t564 + t428;
t14 = t113 * t181 + t152 * t171 + t215 * t94 - t230 * t64;
t13 = -t113 * t180 - t150 * t171 - t215 * t93 - t230 * t65;
t10 = -t567 * t326 + t568 * t330;
t9 = -qJ(6) * t93 - qJD(6) * t180 + t11;
t8 = -t150 * t94 - t152 * t93 + t180 * t64 - t181 * t65;
t7 = t356 + t558;
t6 = t356 - t558;
t5 = pkin(5) * t171 - qJ(6) * t94 - qJD(6) * t181 + t12;
t2 = -qJD(6) * t150 + t3 - t535;
t1 = -qJD(6) * t152 + t4 + t536 + t553;
t24 = [0, 0, 0, 0, 0, qJDD(1), -g(2) * t333 + t547, t402, 0, 0 (qJDD(1) * t321 + 0.2e1 * t414) * t320 (t328 * t461 - t464 * t476) * t573 (qJD(2) * t332 * t419 + t328 * t418) * t323 (qJDD(1) * t322 - 0.2e1 * t414) * t320 (t332 * t418 - t419 * t473) * t323, t286, -t262 * t420 + t276 * t308 + t213 * t324 - g(1) * t271 - g(2) * t273 + (-t440 + t461) * t442, -g(1) * t270 - g(2) * t272 - t212 * t324 - t261 * t420 - t308 * t477 + t378 * t442 ((-t259 * qJD(2) + qJDD(1) * t477 + t212 + (-qJD(2) * t276 + t261) * qJD(1)) * t332 + (-t260 * qJD(2) - qJDD(1) * t276 - t213) * t328 - t402) * t323, t212 * t477 + t260 * t261 + t213 * t276 - t259 * t262 + t320 * qJDD(1) * pkin(1) ^ 2 - g(1) * (-pkin(1) * t329 + pkin(8) * t495) - g(2) * (pkin(1) * t333 + pkin(8) * t497) t198 * t257 - t251 * t253, -t197 * t257 - t198 * t256 + t249 * t251 - t252 * t253, t198 * t324 - t251 * t420 + t257 * t308, t197 * t256 + t249 * t252, -t197 * t324 - t252 * t420 - t256 * t308, t286, -g(1) * t205 - g(2) * t210 - t137 * t420 + t173 * t308 + t282 * t197 + t235 * t256 + t249 * t422 + t269 * t252 - t324 * t482, -t138 * t420 - t174 * t308 + t282 * t198 + t235 * t257 - t269 * t251 + t253 * t422 - t87 * t324 + t403, t137 * t253 - t138 * t249 + t143 * t251 - t144 * t252 - t173 * t198 - t174 * t197 - t256 * t87 + t257 * t482 - t323 * t402, -g(1) * t392 - g(2) * t425 - t143 * t137 + t144 * t138 - t173 * t482 + t87 * t174 + t235 * t282 + t269 * t422, t219 * t172 + t231 * t343, -t231 * t114 - t219 * t171 - t172 * t217 - t230 * t343, t172 * t360 + t219 * t252 + t231 * t335 + t256 * t343, t114 * t230 + t171 * t217, -t171 * t465 - t230 * t459 - t114 * t256 - t217 * t252 + (-t230 * t400 + (-t171 * t433 - t230 * t352) * qJD(1)) * t323, t459 * t256 + t465 * t252 + (t256 * t400 + (t252 * t433 + t256 * t352) * qJD(1)) * t323, g(1) * t186 - g(2) * t190 + t105 * t335 + t161 * t114 + t135 * t171 + t137 * t217 + t80 * t230 + t88 * t252 - t256 * t421 + t360 * t58, t106 * t336 + t135 * t172 + t137 * t219 + t161 * t343 + t80 * t231 - t89 * t252 + t256 * t379 - t360 * t57 + t404, -t105 * t343 - t106 * t114 - t89 * t171 - t88 * t172 - t57 * t217 - t58 * t219 + t230 * t379 + t231 * t421 - t403, -g(1) * t357 - g(2) * t371 - t105 * t421 - t106 * t379 + t135 * t137 + t80 * t161 + t89 * t57 + t88 * t58, t22, t8, t14, t23, t13, t63, t113 * t52 + t12 * t215 + t150 * t51 + t171 * t40 + t180 * t26 + t230 * t4 + t65 * t95 + t75 * t93 + t405, -t11 * t215 - t113 * t53 + t152 * t51 - t171 * t41 + t181 * t26 - t230 * t3 - t64 * t95 + t75 * t94 + t406, -t11 * t150 - t12 * t152 - t180 * t3 - t181 * t4 - t40 * t94 - t41 * t93 + t52 * t64 - t53 * t65 - t404, t3 * t53 + t41 * t11 + t4 * t52 + t40 * t12 + t26 * t95 + t75 * t51 - g(1) * (-pkin(4) * t186 - pkin(10) * t185 + t357) - g(2) * (pkin(4) * t190 + pkin(10) * t189 + t371) t22, t8, t14, t23, t13, t63, t1 * t230 + t113 * t37 + t15 * t180 + t150 * t30 + t171 * t27 + t215 * t5 + t59 * t93 + t65 * t69 + t405, -t113 * t42 + t15 * t181 + t152 * t30 - t171 * t34 - t2 * t230 - t215 * t9 + t59 * t94 - t64 * t69 + t406, -t1 * t181 - t150 * t9 - t152 * t5 - t180 * t2 - t27 * t94 - t34 * t93 + t37 * t64 - t42 * t65 - t404, t2 * t42 + t34 * t9 + t1 * t37 + t27 * t5 + t15 * t69 + t59 * t30 - g(1) * (t185 * t325 - t186 * t318 + t206 * t452 + t386) - g(2) * (-t189 * t325 + t190 * t318 - t209 * t452 + t401); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t416, t476 * t499, t323 * t462 - t332 * t445, t416, t328 * t445 + t438, t308, t305 + t260 * t420 - t548 + g(2) * t270 + (-t441 + t499) * t328 * pkin(1) + (t362 - t540) * t323, pkin(1) * t456 + t259 * t420 + g(1) * t273 - g(2) * t271 + (pkin(8) * t464 + g(3)) * t498 - t453, 0, 0, t502, -t244 + t555, t198 + t565, -t502, t389 + t337, t308, t165 * t420 - t269 * t253 + (-t249 * t451 + t308 * t521) * pkin(2) + t372 - t482, t166 * t420 + t269 * t249 + (-t253 * t451 - t308 * t520) * pkin(2) + t373 - t87 (t144 - t165) * t253 + (-t143 + t166) * t249 + (-t197 * t520 - t198 * t521) * pkin(2), -g(2) * t294 + t143 * t165 - t144 * t166 + (t87 * t520 - t482 * t521 - t548 + g(2) * t490 + (-t269 * t474 - t540) * t323) * pkin(2), t426 * t327 + (t219 * t360 + t327 * t370) * t331, t387 - t581, t563 * t327 - t506 + t584, t217 * t424 - t485, t342 + t503, -t360 * t253, -t102 * t360 + t317 * t114 + t562 * t135 - t165 * t217 - t88 * t253 + t557 * t331 - t335 * t501 - t500 * t560, t103 * t360 + t561 * t135 - t165 * t219 + t89 * t253 + t317 * t343 - t557 * t327 + t336 * t500 + t501 * t560, -t316 * t485 + t343 * t501 - t373 + t395 - t562 * t89 - t561 * t88 + (t102 + t446) * t219 + (t103 + t449) * t217, t80 * t317 - t89 * t103 - t88 * t102 - t135 * t165 - g(1) * t346 - g(2) * t366 - g(3) * t412 + ((-t327 * t89 - t331 * t88) * qJD(4) + t395) * t316, t20, t7, t16, t21, t19, t66, t113 * t225 - t150 * t90 - t183 * t75 + t525 * t215 + (-t4 + (t150 * t316 + t326 * t75) * qJD(4)) * t331 + (t316 * t65 + t360 * t40 + t469 * t75 + t530) * t327 + t376, -t113 * t226 - t152 * t90 - t184 * t75 - t526 * t215 + (t3 + (t152 * t316 + t330 * t75) * qJD(4)) * t331 + (t26 * t330 - t316 * t64 - t360 * t41 - t470 * t75) * t327 + t377, t183 * t41 + t184 * t40 + t225 * t64 - t226 * t65 - t525 * t152 - t526 * t150 + t394 * t471 + (qJD(5) * t393 - t3 * t326 - t330 * t4 + t372) * t327, t3 * t226 + t4 * t225 - t75 * t90 - g(1) * (t209 * t408 + t346) - g(2) * (t206 * t408 + t366) - g(3) * (-t256 * t408 + t412) + t526 * t41 + t525 * t40 + (t26 * t327 + t471 * t75) * t316, t20, t7, t16, t21, t19, t66, t113 * t199 - t183 * t59 + t268 * t65 + (t326 * t519 - t1) * t331 + t528 * t215 + t524 * t150 + (t27 * t360 + t469 * t59 + t534) * t327 + t376, -t113 * t216 - t184 * t59 - t268 * t64 + (t330 * t519 + t2) * t331 - t527 * t215 + t524 * t152 + (t15 * t330 - t34 * t360 - t470 * t59) * t327 + t377, t183 * t34 + t184 * t27 + t199 * t64 - t216 * t65 - t528 * t152 - t527 * t150 + t397 * t471 + (qJD(5) * t396 - t1 * t330 - t2 * t326 + t372) * t327, t2 * t216 + t1 * t199 + t15 * t268 - g(1) * (t209 * t391 + t210 * t452 + t355) - g(2) * (-t205 * t452 + t206 * t391 + t390) - g(3) * (-t256 * t391 + t257 * t452 + t478) + t524 * t59 + t527 * t34 + t528 * t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389 + t197, t198 - t565, -t244 - t555, t143 * t253 + t144 * t249 + (-t398 - t547) * t323 + t437 + t460, 0, 0, 0, 0, 0, 0, t342 - t503, -t506 - t584 + (-t459 + t339) * t327, t387 + t581, -t135 * t253 + t327 * t579 + t331 * t577 + t380, 0, 0, 0, 0, 0, 0, t18, t17, t6, t183 * t40 - t184 * t41 + (-qJD(4) * t393 - t26) * t331 + (t360 * t75 + t345) * t327 + t380, 0, 0, 0, 0, 0, 0, t18, t17, t6, t183 * t27 - t184 * t34 + (-qJD(4) * t396 - t15) * t331 + (qJD(5) * t397 - t1 * t326 + t2 * t330 + t360 * t59) * t327 + t380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t507, -t217 ^ 2 + t219 ^ 2, t217 * t360 + t343, -t507, t219 * t249 - t427, t335, -t135 * t219 + t375 + t577, t135 * t217 - t374 - t579, 0, 0, t31, t10, t46, t32, t45, -t510, -pkin(4) * t65 - t150 * t89 - t215 * t60 - t219 * t40 + t383 * t326 + (-pkin(10) * qJD(5) * t215 + t363) * t330, pkin(4) * t64 - t152 * t89 + t219 * t41 + t530 + (pkin(10) * t470 + t61) * t215 + t383 * t330 - t454, t150 * t61 + t152 * t60 + (t3 - t532 + (qJD(5) * t152 - t65) * pkin(10)) * t330 + (-t4 - t531 + (qJD(5) * t150 - t64) * pkin(10)) * t326 + t374, -t40 * t60 - t41 * t61 - t75 * t89 + t363 * pkin(4) + (t345 + t374) * pkin(10), t31, t10, t46, t32, t45, -t510, t113 * t295 - t150 * t73 - t219 * t27 - t318 * t65 + t522 * t215 + (t217 * t59 + (t59 + t539) * qJD(5)) * t326 + t364 * t330, t59 * t508 + t113 * t296 + t534 - t152 * t73 + t219 * t34 + t318 * t64 - t523 * t215 + (t152 * t552 + t330 * t59) * qJD(5) - t454, t295 * t64 + t296 * t65 - t522 * t152 - t523 * t150 + (-t215 * t27 + t2) * t330 + (-t1 - t533) * t326 + t374, -t2 * t296 + t1 * t295 - t15 * t318 - g(1) * (-t189 * t318 - t190 * t325) - g(2) * (-t185 * t318 - t186 * t325) - g(3) * (-t230 * t318 - t231 * t325) + (pkin(5) * t470 - t73) * t59 + t523 * t34 + t522 * t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t515, t68, t43, -t515, t44, t113, -t152 * t75 + t340 + t531, t150 * t75 + t347 + t532, 0, 0, t515, t68, t43, -t515, t44, t113, 0.2e1 * t553 + t536 + t533 + (-t429 - t59) * t152 + t340, -pkin(5) * t556 + t535 + t215 * t33 + (qJD(6) + t59) * t150 + t347, pkin(5) * t64 - t150 * t537, t537 * t34 + (-t59 * t152 + t1 + t559) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t567, t568, -t149 - t556, t34 * t150 + t27 * t152 - t364;];
tau_reg  = t24;