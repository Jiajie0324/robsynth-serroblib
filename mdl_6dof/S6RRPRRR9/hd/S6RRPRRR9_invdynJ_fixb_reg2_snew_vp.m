% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRPRRR9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 23:12
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRPRRR9_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR9_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR9_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR9_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR9_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR9_invdynJ_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 23:07:36
% EndTime: 2019-05-06 23:08:21
% DurationCPUTime: 25.28s
% Computational Cost: add. (265847->766), mult. (605852->1141), div. (0->0), fcn. (503728->14), ass. (0->483)
t560 = -2 * qJD(3);
t427 = sin(qJ(6));
t423 = sin(pkin(12));
t425 = cos(pkin(12));
t426 = cos(pkin(6));
t475 = qJD(1) * t426 + qJD(2);
t424 = sin(pkin(6));
t430 = sin(qJ(2));
t502 = qJD(1) * t430;
t485 = t424 * t502;
t392 = t423 * t485 - t425 * t475;
t393 = t423 * t475 + t425 * t485;
t429 = sin(qJ(4));
t433 = cos(qJ(4));
t367 = -t392 * t433 - t429 * t393;
t368 = -t392 * t429 + t393 * t433;
t428 = sin(qJ(5));
t432 = cos(qJ(5));
t331 = t367 * t428 + t368 * t432;
t434 = cos(qJ(2));
t503 = qJD(1) * t424;
t483 = qJD(2) * t503;
t496 = qJDD(1) * t424;
t399 = t430 * t496 + t434 * t483;
t472 = qJDD(1) * t426 + qJDD(2);
t371 = t425 * t399 + t423 * t472;
t477 = t399 * t423 - t425 * t472;
t314 = t367 * qJD(4) + t433 * t371 - t429 * t477;
t479 = t371 * t429 + t433 * t477;
t457 = -qJD(4) * t368 - t479;
t481 = t428 * t314 - t432 * t457;
t249 = -t331 * qJD(5) - t481;
t248 = qJDD(6) - t249;
t431 = cos(qJ(6));
t501 = qJD(1) * t434;
t484 = t424 * t501;
t411 = -qJD(4) + t484;
t460 = -qJD(5) + t411;
t310 = t331 * t427 + t431 * t460;
t312 = t431 * t331 - t427 * t460;
t264 = t312 * t310;
t550 = t248 - t264;
t559 = t427 * t550;
t329 = -t432 * t367 + t368 * t428;
t282 = t331 * t329;
t400 = -t430 * t483 + t434 * t496;
t458 = -qJDD(4) + t400;
t394 = -qJDD(5) + t458;
t549 = -t282 - t394;
t558 = t428 * t549;
t557 = t431 * t550;
t556 = t432 * t549;
t250 = -t329 * qJD(5) + t432 * t314 + t428 * t457;
t322 = t329 * t460;
t555 = t322 + t250;
t456 = t460 ^ 2;
t470 = t475 ^ 2;
t468 = -pkin(2) * t434 - qJ(3) * t430;
t396 = t468 * t503;
t435 = qJD(1) ^ 2;
t541 = sin(qJ(1));
t542 = cos(qJ(1));
t453 = g(1) * t542 + g(2) * t541;
t395 = -t435 * pkin(1) + pkin(8) * t496 - t453;
t452 = g(1) * t541 - g(2) * t542;
t538 = pkin(8) * t424;
t442 = qJDD(1) * pkin(1) + t435 * t538 + t452;
t440 = t426 * t442;
t478 = t430 * t395 - t434 * t440;
t340 = qJDD(3) - t472 * pkin(2) - t470 * qJ(3) + (g(3) * t434 + t396 * t502) * t424 + t478;
t372 = -pkin(3) * t484 - pkin(9) * t393;
t544 = t392 ^ 2;
t283 = t477 * pkin(3) - t544 * pkin(9) + t393 * t372 + t340;
t348 = -pkin(4) * t411 - pkin(10) * t368;
t365 = t367 ^ 2;
t211 = -t457 * pkin(4) - t365 * pkin(10) + t368 * t348 + t283;
t450 = t460 * t331;
t140 = t211 - t555 * pkin(11) + (-t249 - t450) * pkin(5);
t514 = t392 * t393;
t451 = -t400 - t514;
t379 = t392 * t484;
t354 = t379 - t371;
t509 = t424 * t430;
t438 = -g(3) * t509 + t430 * t440;
t341 = -t470 * pkin(2) + t472 * qJ(3) + (t396 * t503 + t395) * t434 + t438;
t463 = t475 * qJD(1);
t454 = t430 * t463;
t455 = t434 * t463;
t537 = t426 * g(3);
t342 = -t400 * pkin(2) - t537 - t399 * qJ(3) + (pkin(2) * t454 - qJ(3) * t455 - t442) * t424;
t469 = -t341 * t423 + t425 * t342 + t393 * t560;
t545 = pkin(9) * t354 + t469;
t437 = t451 * pkin(3) + t545;
t279 = t425 * t341 + t423 * t342 + t392 * t560;
t441 = -pkin(9) * t477 + t372 * t484 + t279;
t439 = -pkin(3) * t544 + t441;
t201 = t429 * t437 + t433 * t439;
t170 = -t365 * pkin(4) + pkin(10) * t457 + t411 * t348 + t201;
t200 = t429 * t439 - t433 * t437;
t358 = t367 * t411;
t298 = t358 + t314;
t515 = t367 * t368;
t443 = -t458 + t515;
t436 = t443 * pkin(4) - pkin(10) * t298 - t200;
t108 = t432 * t170 + t428 * t436;
t280 = pkin(5) * t329 - pkin(11) * t331;
t95 = -pkin(5) * t456 - t394 * pkin(11) - t329 * t280 + t108;
t71 = -t431 * t140 + t427 * t95;
t72 = t140 * t427 + t431 * t95;
t44 = t427 * t71 + t431 * t72;
t554 = t423 * t451;
t553 = t425 * t451;
t552 = t429 * t443;
t551 = t433 * t443;
t548 = -t358 + t314;
t380 = t393 * t484;
t547 = t380 + t477;
t508 = t424 * t434;
t361 = g(3) * t508 + t478;
t362 = t434 * t395 + t438;
t546 = t430 * t361 + t434 * t362;
t326 = qJD(6) + t329;
t482 = t250 * t427 + t431 * t394;
t189 = (qJD(6) - t326) * t312 + t482;
t295 = (qJD(4) + t411) * t368 + t479;
t308 = t310 ^ 2;
t309 = t312 ^ 2;
t325 = t326 ^ 2;
t327 = t329 ^ 2;
t328 = t331 ^ 2;
t366 = t368 ^ 2;
t390 = t393 ^ 2;
t409 = t411 ^ 2;
t420 = t424 ^ 2;
t107 = t170 * t428 - t432 * t436;
t65 = -t107 * t432 + t108 * t428;
t543 = pkin(4) * t65;
t221 = t331 * t411 + t481;
t224 = -t322 + t250;
t161 = -t221 * t428 - t224 * t432;
t540 = pkin(4) * t161;
t539 = pkin(5) * t428;
t94 = t394 * pkin(5) - pkin(11) * t456 + t280 * t331 + t107;
t536 = -pkin(5) * t94 + pkin(11) * t44;
t91 = t427 * t94;
t535 = t429 * t65;
t92 = t431 * t94;
t534 = t433 * t65;
t143 = -t200 * t433 + t201 * t429;
t533 = t143 * t423;
t532 = t143 * t425;
t205 = t248 + t264;
t531 = t205 * t427;
t530 = t205 * t431;
t529 = t211 * t428;
t528 = t211 * t432;
t272 = -t282 + t394;
t527 = t272 * t428;
t526 = t272 * t432;
t525 = t283 * t429;
t524 = t283 * t433;
t319 = t458 + t515;
t523 = t319 * t429;
t522 = t319 * t433;
t521 = t326 * t427;
t520 = t326 * t431;
t519 = t340 * t423;
t518 = t340 * t425;
t355 = t400 - t514;
t517 = t355 * t423;
t516 = t355 * t425;
t513 = t411 * t429;
t512 = t411 * t433;
t511 = t420 * t434;
t510 = t420 * t435;
t489 = t430 * t511;
t410 = t435 * t489;
t398 = t410 + t472;
t506 = t430 * t398;
t397 = -t410 + t472;
t504 = t434 * t397;
t497 = qJD(6) + t326;
t257 = -t309 - t325;
t166 = -t257 * t427 - t530;
t467 = -t250 * t431 + t394 * t427;
t194 = t310 * t497 + t467;
t495 = pkin(5) * t194 + pkin(11) * t166 + t91;
t255 = -t325 - t308;
t156 = t255 * t431 - t559;
t190 = -t312 * t497 - t482;
t494 = pkin(5) * t190 + pkin(11) * t156 - t92;
t493 = t428 * t264;
t492 = t432 * t264;
t491 = t310 * t521;
t490 = t430 ^ 2 * t510;
t488 = t434 * t282;
t487 = t434 * t515;
t486 = -pkin(5) * t432 - pkin(4);
t66 = t107 * t428 + t432 * t108;
t144 = t200 * t429 + t433 * t201;
t232 = t425 * t279 - t423 * t469;
t275 = t326 * t310;
t449 = -qJD(6) * t310 - t467;
t193 = t275 + t449;
t136 = -t189 * t431 + t193 * t427;
t241 = t308 + t309;
t476 = pkin(5) * t241 + pkin(11) * t136 + t44;
t31 = t428 * t44 - t432 * t94;
t474 = pkin(4) * t31 + t536;
t473 = t508 * t514;
t301 = -t328 - t456;
t246 = t301 * t432 + t527;
t471 = pkin(4) * t246 - t108;
t43 = t427 * t72 - t431 * t71;
t466 = -t279 * t423 - t425 * t469;
t117 = t156 * t428 + t190 * t432;
t465 = pkin(4) * t117 + t494;
t119 = t166 * t428 + t194 * t432;
t464 = pkin(4) * t119 + t495;
t462 = -pkin(1) + t468;
t276 = -t456 - t327;
t228 = t276 * t428 + t556;
t461 = pkin(4) * t228 - t107;
t111 = t136 * t428 + t241 * t432;
t459 = pkin(4) * t111 + t476;
t448 = t428 * t322;
t447 = t428 * t450;
t446 = t432 * t322;
t445 = t432 * t450;
t444 = -t426 * t435 + t463;
t418 = t434 ^ 2 * t510;
t404 = t424 * t455;
t403 = t424 * t454;
t402 = -t418 + t490;
t401 = -t418 - t470;
t389 = -t490 - t470;
t387 = t400 * t508;
t381 = t424 * t442 + t537;
t378 = -t390 - t418;
t377 = -t390 + t418;
t376 = -t418 + t544;
t375 = t400 - t403;
t374 = t400 + t403;
t373 = -t404 + t399;
t363 = -t418 - t544;
t353 = t379 + t371;
t351 = -t380 + t477;
t350 = -t366 + t409;
t349 = t365 - t409;
t347 = (t392 * t423 + t393 * t425) * t484;
t346 = -t390 - t544;
t345 = t371 * t423 - t380 * t425;
t344 = -t379 * t423 - t425 * t477;
t343 = -t366 - t409;
t336 = -t378 * t423 + t516;
t335 = t376 * t423 - t516;
t334 = t377 * t425 + t554;
t333 = t378 * t425 + t517;
t332 = t366 - t365;
t324 = -t409 - t365;
t318 = -t328 + t456;
t317 = t327 - t456;
t316 = t363 * t425 - t554;
t315 = t363 * t423 + t553;
t307 = (-t367 * t433 - t368 * t429) * t411;
t306 = (-t367 * t429 + t368 * t433) * t411;
t304 = -t354 * t423 - t425 * t547;
t302 = -t351 * t423 + t353 * t425;
t300 = -t365 - t366;
t294 = (qJD(4) - t411) * t368 + t479;
t293 = t349 * t433 + t523;
t292 = -t350 * t429 + t551;
t291 = t349 * t429 - t522;
t290 = t350 * t433 + t552;
t289 = t314 * t433 + t368 * t513;
t288 = t314 * t429 - t368 * t512;
t287 = t367 * t512 - t429 * t457;
t286 = t367 * t513 + t433 * t457;
t285 = -t343 * t429 + t522;
t284 = t343 * t433 + t523;
t281 = t328 - t327;
t271 = -t309 + t325;
t270 = t308 - t325;
t269 = t312 * t520;
t268 = t324 * t433 - t552;
t267 = t324 * t429 + t551;
t266 = t446 - t447;
t265 = t448 + t445;
t263 = t309 - t308;
t262 = t306 * t425 + t307 * t423;
t261 = -pkin(2) * t353 + qJ(3) * t336 + t519;
t260 = -pkin(2) * t351 + qJ(3) * t316 - t518;
t258 = -t327 - t328;
t254 = t317 * t432 + t527;
t253 = -t318 * t428 + t556;
t252 = t317 * t428 - t526;
t251 = t318 * t432 + t558;
t247 = -t301 * t428 + t526;
t245 = -t295 * t433 + t298 * t429;
t244 = -t294 * t433 - t429 * t548;
t243 = -t295 * t429 - t298 * t433;
t242 = -t294 * t429 + t433 * t548;
t239 = t291 * t425 + t293 * t423;
t238 = t290 * t425 + t292 * t423;
t237 = t288 * t425 + t289 * t423;
t236 = t286 * t425 + t287 * t423;
t235 = -t284 * t423 + t285 * t425;
t234 = t284 * t425 + t285 * t423;
t233 = -pkin(9) * t284 + t524;
t230 = -pkin(9) * t267 + t525;
t229 = t276 * t432 - t558;
t227 = (-t310 * t431 + t312 * t427) * t326;
t226 = -t269 - t491;
t220 = (0.2e1 * qJD(5) - t411) * t331 + t481;
t219 = -t267 * t423 + t268 * t425;
t218 = t267 * t425 + t268 * t423;
t217 = t432 * t250 + t447;
t216 = t428 * t250 - t445;
t215 = -t428 * t249 - t446;
t214 = t432 * t249 - t448;
t213 = -t265 * t429 + t266 * t433;
t212 = t265 * t433 + t266 * t429;
t210 = -qJD(6) * t312 - t482;
t208 = -pkin(2) * t340 + qJ(3) * t232;
t207 = -pkin(3) * t548 + pkin(9) * t285 + t525;
t203 = -pkin(3) * t294 + pkin(9) * t268 - t524;
t202 = -pkin(2) * t346 + qJ(3) * t304 + t232;
t198 = -t252 * t429 + t254 * t433;
t197 = -t251 * t429 + t253 * t433;
t196 = t252 * t433 + t254 * t429;
t195 = t251 * t433 + t253 * t429;
t192 = -t275 + t449;
t186 = -t246 * t429 + t247 * t433;
t185 = t246 * t433 + t247 * t429;
t184 = -t243 * t423 + t245 * t425;
t183 = t243 * t425 + t245 * t423;
t182 = t242 * t425 + t244 * t423;
t181 = -t312 * t521 + t431 * t449;
t180 = -t427 * t449 - t269;
t179 = -t210 * t427 + t310 * t520;
t178 = t210 * t431 + t491;
t177 = t227 * t432 + t248 * t428;
t176 = t227 * t428 - t248 * t432;
t175 = t270 * t431 - t531;
t174 = -t271 * t427 + t557;
t173 = t270 * t427 + t530;
t172 = t271 * t431 + t559;
t171 = -pkin(10) * t246 + t528;
t168 = -t228 * t429 + t229 * t433;
t167 = t228 * t433 + t229 * t429;
t165 = t257 * t431 - t531;
t163 = -t221 * t432 + t224 * t428;
t162 = -t220 * t432 - t428 * t555;
t160 = -t220 * t428 + t432 * t555;
t159 = -pkin(10) * t228 + t529;
t155 = t255 * t427 + t557;
t154 = -t216 * t429 + t217 * t433;
t153 = -t214 * t429 + t215 * t433;
t152 = t216 * t433 + t217 * t429;
t151 = t214 * t433 + t215 * t429;
t149 = t212 * t425 + t213 * t423;
t148 = t181 * t432 + t493;
t147 = t179 * t432 - t493;
t146 = t181 * t428 - t492;
t145 = t179 * t428 + t492;
t142 = -pkin(4) * t555 + pkin(10) * t247 + t529;
t141 = -pkin(4) * t220 + pkin(10) * t229 - t528;
t138 = t196 * t425 + t198 * t423;
t137 = t195 * t425 + t197 * t423;
t135 = t190 * t431 - t192 * t427;
t134 = -t189 * t427 - t193 * t431;
t133 = t190 * t427 + t192 * t431;
t131 = -t185 * t423 + t186 * t425;
t130 = t185 * t425 + t186 * t423;
t129 = -pkin(3) * t283 + pkin(9) * t144;
t128 = -pkin(2) * t548 + qJ(3) * t235 + t207 * t425 + t233 * t423;
t127 = t175 * t432 - t189 * t428;
t126 = t174 * t432 + t193 * t428;
t125 = t175 * t428 + t189 * t432;
t124 = t174 * t428 - t193 * t432;
t123 = -t176 * t429 + t177 * t433;
t122 = t176 * t433 + t177 * t429;
t121 = -pkin(9) * t243 - t143;
t120 = t166 * t432 - t194 * t428;
t118 = t156 * t432 - t190 * t428;
t116 = -pkin(2) * t294 + qJ(3) * t219 + t203 * t425 + t230 * t423;
t115 = t135 * t432 + t263 * t428;
t114 = t135 * t428 - t263 * t432;
t113 = -pkin(3) * t300 + pkin(9) * t245 + t144;
t112 = t136 * t432 - t241 * t428;
t110 = -t167 * t423 + t168 * t425;
t109 = t167 * t425 + t168 * t423;
t105 = -t161 * t429 + t163 * t433;
t104 = -t160 * t429 + t162 * t433;
t103 = t161 * t433 + t163 * t429;
t102 = t160 * t433 + t162 * t429;
t101 = t152 * t425 + t154 * t423;
t100 = t151 * t425 + t153 * t423;
t99 = -t146 * t429 + t148 * t433;
t98 = -t145 * t429 + t147 * t433;
t97 = t146 * t433 + t148 * t429;
t96 = t145 * t433 + t147 * t429;
t90 = t144 * t425 - t533;
t89 = t144 * t423 + t532;
t88 = -pkin(9) * t185 - t142 * t429 + t171 * t433;
t87 = -pkin(11) * t165 + t92;
t86 = -t125 * t429 + t127 * t433;
t85 = -t124 * t429 + t126 * t433;
t84 = t125 * t433 + t127 * t429;
t83 = t124 * t433 + t126 * t429;
t82 = -pkin(11) * t155 + t91;
t81 = -pkin(9) * t167 - t141 * t429 + t159 * t433;
t80 = t122 * t425 + t123 * t423;
t79 = -t119 * t429 + t120 * t433;
t78 = t119 * t433 + t120 * t429;
t77 = -pkin(3) * t555 + pkin(9) * t186 + t142 * t433 + t171 * t429;
t76 = -t117 * t429 + t118 * t433;
t75 = t117 * t433 + t118 * t429;
t74 = -t114 * t429 + t115 * t433;
t73 = t114 * t433 + t115 * t429;
t68 = -t111 * t429 + t112 * t433;
t67 = t111 * t433 + t112 * t429;
t64 = -pkin(3) * t220 + pkin(9) * t168 + t141 * t433 + t159 * t429;
t63 = -t103 * t423 + t105 * t425;
t62 = t103 * t425 + t105 * t423;
t61 = t102 * t425 + t104 * t423;
t60 = t423 * t99 + t425 * t97;
t59 = t423 * t98 + t425 * t96;
t58 = -pkin(4) * t211 + pkin(10) * t66;
t57 = -pkin(2) * t300 + qJ(3) * t184 + t113 * t425 + t121 * t423;
t56 = -pkin(5) * t165 + t72;
t55 = -pkin(5) * t155 + t71;
t54 = -pkin(10) * t161 - t65;
t53 = -pkin(4) * t258 + pkin(10) * t163 + t66;
t52 = -pkin(2) * t283 - pkin(9) * t533 + qJ(3) * t90 + t129 * t425;
t51 = t423 * t86 + t425 * t84;
t50 = t423 * t85 + t425 * t83;
t49 = -t423 * t78 + t425 * t79;
t48 = t423 * t79 + t425 * t78;
t47 = -t423 * t75 + t425 * t76;
t46 = t423 * t76 + t425 * t75;
t45 = t423 * t74 + t425 * t73;
t41 = -t423 * t67 + t425 * t68;
t40 = t423 * t68 + t425 * t67;
t39 = t433 * t66 - t535;
t38 = t429 * t66 + t534;
t37 = -pkin(2) * t555 + qJ(3) * t131 + t423 * t88 + t425 * t77;
t36 = -pkin(11) * t134 - t43;
t35 = -pkin(2) * t220 + qJ(3) * t110 + t423 * t81 + t425 * t64;
t34 = -pkin(10) * t119 - t428 * t56 + t432 * t87;
t33 = -pkin(10) * t117 - t428 * t55 + t432 * t82;
t32 = t428 * t94 + t432 * t44;
t30 = -pkin(4) * t165 + pkin(10) * t120 + t428 * t87 + t432 * t56;
t29 = -pkin(4) * t155 + pkin(10) * t118 + t428 * t82 + t432 * t55;
t28 = -pkin(9) * t103 - t429 * t53 + t433 * t54;
t27 = -pkin(3) * t258 + pkin(9) * t105 + t429 * t54 + t433 * t53;
t26 = -pkin(10) * t111 + t134 * t539 + t36 * t432;
t25 = pkin(10) * t112 + t134 * t486 + t36 * t428;
t24 = -t38 * t423 + t39 * t425;
t23 = t38 * t425 + t39 * t423;
t22 = -pkin(9) * t38 - pkin(10) * t534 - t429 * t58;
t21 = -pkin(3) * t211 + pkin(9) * t39 - pkin(10) * t535 + t433 * t58;
t20 = -t31 * t429 + t32 * t433;
t19 = t31 * t433 + t32 * t429;
t18 = -pkin(9) * t78 - t30 * t429 + t34 * t433;
t17 = -pkin(9) * t75 - t29 * t429 + t33 * t433;
t16 = -pkin(10) * t31 + (-pkin(11) * t432 + t539) * t43;
t15 = -pkin(3) * t165 + pkin(9) * t79 + t30 * t433 + t34 * t429;
t14 = -pkin(3) * t155 + pkin(9) * t76 + t29 * t433 + t33 * t429;
t13 = -pkin(2) * t258 + qJ(3) * t63 + t27 * t425 + t28 * t423;
t12 = -pkin(9) * t67 - t25 * t429 + t26 * t433;
t11 = -pkin(3) * t134 + pkin(9) * t68 + t25 * t433 + t26 * t429;
t10 = pkin(10) * t32 + (-pkin(11) * t428 + t486) * t43;
t9 = -t19 * t423 + t20 * t425;
t8 = t19 * t425 + t20 * t423;
t7 = -pkin(2) * t211 + qJ(3) * t24 + t21 * t425 + t22 * t423;
t6 = -pkin(2) * t165 + qJ(3) * t49 + t15 * t425 + t18 * t423;
t5 = -pkin(2) * t155 + qJ(3) * t47 + t14 * t425 + t17 * t423;
t4 = -pkin(2) * t134 + qJ(3) * t41 + t11 * t425 + t12 * t423;
t3 = -pkin(9) * t19 - t10 * t429 + t16 * t433;
t2 = -pkin(3) * t43 + pkin(9) * t20 + t10 * t433 + t16 * t429;
t1 = -pkin(2) * t43 + qJ(3) * t9 + t2 * t425 + t3 * t423;
t42 = [0, 0, 0, 0, 0, qJDD(1), t452, t453, 0, 0, (t424 * t399 + t444 * t511) * t430, t426 * t402 + (t430 * t375 + t434 * (t404 + t399)) * t424, t426 * t373 + (t506 + t434 * (t470 - t490)) * t424, -t444 * t489 + t387, t426 * t374 + (t430 * (t418 - t470) + t504) * t424, t426 * t472, (-t361 + pkin(1) * (t398 * t434 + t401 * t430)) * t426 + (t434 * t381 + pkin(1) * t375 + pkin(8) * (t401 * t434 - t506)) * t424, -t381 * t509 - t426 * t362 + pkin(1) * (-t424 * (t475 * t484 + t399) + (t389 * t434 - t397 * t430) * t426) + (-t389 * t430 - t504) * t538, pkin(1) * (-t373 * t434 + t374 * t430) * t426 + (t373 * t430 + t374 * t434) * t538 + (pkin(1) * (t418 + t490) + t546) * t424, pkin(1) * (t381 * t424 + (-t361 * t434 + t362 * t430) * t426) + t546 * t538, (t371 * t425 + t380 * t423) * t509 - t473 + t426 * t345, t426 * t302 + (t430 * (-t351 * t425 - t353 * t423) + t434 * (-t390 + t544)) * t424, t426 * t334 + (t430 * (-t377 * t423 + t553) + t434 * t354) * t424, (-t379 * t425 + t423 * t477) * t509 + t473 + t426 * t344, t426 * t335 + (t430 * (t376 * t425 + t517) + t434 * t547) * t424, t426 * t347 + t387 + t420 * t430 * (t392 * t425 - t393 * t423) * t501, (t260 + pkin(1) * (t316 * t430 - t351 * t434)) * t426 + (t430 * (-qJ(3) * t315 + t519) + t434 * (-pkin(2) * t315 - t469) - pkin(1) * t315 + pkin(8) * (t316 * t434 + t351 * t430)) * t424, (t261 + pkin(1) * (t336 * t430 - t353 * t434)) * t426 + (t430 * (-qJ(3) * t333 + t518) + t434 * (-pkin(2) * t333 + t279) - pkin(1) * t333 + pkin(8) * (t336 * t434 + t353 * t430)) * t424, (t202 + pkin(1) * (t304 * t430 - t346 * t434)) * t426 + (t430 * t466 + pkin(8) * (t304 * t434 + t346 * t430) + t462 * (t354 * t425 - t423 * t547)) * t424, (t208 + pkin(1) * (t232 * t430 - t340 * t434)) * t426 + (pkin(8) * (t232 * t434 + t340 * t430) - t462 * t466) * t424, t426 * t237 + (t430 * (-t288 * t423 + t289 * t425) + t487) * t424, t426 * t182 + (t430 * (-t242 * t423 + t244 * t425) - t434 * t332) * t424, t426 * t238 + (t430 * (-t290 * t423 + t292 * t425) - t434 * t298) * t424, t426 * t236 + (t430 * (-t286 * t423 + t287 * t425) - t487) * t424, t426 * t239 + (t430 * (-t291 * t423 + t293 * t425) + t434 * t295) * t424, (-t306 * t423 + t307 * t425) * t509 + t458 * t508 + t426 * t262, (-qJ(3) * t218 - t203 * t423 + t230 * t425) * t509 + (-pkin(2) * t218 + t429 * t441 - t433 * t545 + (-t429 * t544 - t433 * t451 - t267) * pkin(3)) * t508 + t426 * t116 + pkin(1) * (-t218 * t424 + (t219 * t430 - t294 * t434) * t426) + (t219 * t434 + t294 * t430) * t538, (t128 + pkin(1) * (t235 * t430 - t434 * t548)) * t426 + (t430 * (-qJ(3) * t234 - t207 * t423 + t233 * t425) + t434 * (-pkin(2) * t234 - pkin(3) * t284 + t201) - pkin(1) * t234 + pkin(8) * (t235 * t434 + t430 * t548)) * t424, (t57 + pkin(1) * (t184 * t430 - t300 * t434)) * t426 + (t430 * (-qJ(3) * t183 - t113 * t423 + t121 * t425) + t434 * (-pkin(2) * t183 - pkin(3) * t243) - pkin(1) * t183 + pkin(8) * (t184 * t434 + t300 * t430)) * t424, (t52 + pkin(1) * (-t283 * t434 + t430 * t90)) * t426 + (t430 * (-pkin(9) * t532 - qJ(3) * t89 - t129 * t423) + t434 * (-pkin(2) * t89 - pkin(3) * t143) - pkin(1) * t89 + pkin(8) * (t283 * t430 + t434 * t90)) * t424, t426 * t101 + (t430 * (-t152 * t423 + t154 * t425) - t488) * t424, t426 * t61 + (t430 * (-t102 * t423 + t104 * t425) - t434 * t281) * t424, t426 * t137 + (t430 * (-t195 * t423 + t197 * t425) - t434 * t224) * t424, t426 * t100 + (t430 * (-t151 * t423 + t153 * t425) + t488) * t424, t426 * t138 + (t430 * (-t196 * t423 + t198 * t425) + t434 * t221) * t424, t426 * t149 + (t430 * (-t212 * t423 + t213 * t425) + t434 * t394) * t424, (t35 + pkin(1) * (t110 * t430 - t220 * t434)) * t426 + (t430 * (-qJ(3) * t109 - t423 * t64 + t425 * t81) + t434 * (-pkin(2) * t109 - pkin(3) * t167 - t461) - pkin(1) * t109 + pkin(8) * (t110 * t434 + t220 * t430)) * t424, (t37 + pkin(1) * (t131 * t430 - t434 * t555)) * t426 + (t430 * (-qJ(3) * t130 - t423 * t77 + t425 * t88) + t434 * (-pkin(2) * t130 - pkin(3) * t185 - t471) - pkin(1) * t130 + pkin(8) * (t131 * t434 + t430 * t555)) * t424, (t13 + pkin(1) * (-t258 * t434 + t430 * t63)) * t426 + (t430 * (-qJ(3) * t62 - t27 * t423 + t28 * t425) + t434 * (-pkin(2) * t62 - pkin(3) * t103 - t540) - pkin(1) * t62 + pkin(8) * (t258 * t430 + t434 * t63)) * t424, (t7 + pkin(1) * (-t211 * t434 + t24 * t430)) * t426 + (t430 * (-qJ(3) * t23 - t21 * t423 + t22 * t425) + t434 * (-pkin(2) * t23 - pkin(3) * t38 - t543) - pkin(1) * t23 + pkin(8) * (t211 * t430 + t24 * t434)) * t424, t426 * t60 + (t430 * (-t423 * t97 + t425 * t99) + t434 * t180) * t424, t426 * t45 + (t430 * (-t423 * t73 + t425 * t74) - t434 * t133) * t424, t426 * t50 + (t430 * (-t423 * t83 + t425 * t85) - t434 * t172) * t424, t426 * t59 + (t430 * (-t423 * t96 + t425 * t98) - t434 * t178) * t424, t426 * t51 + (t430 * (-t423 * t84 + t425 * t86) - t434 * t173) * t424, t426 * t80 + (t430 * (-t122 * t423 + t123 * t425) - t434 * t226) * t424, (t5 + pkin(1) * (-t155 * t434 + t430 * t47)) * t426 + (t430 * (-qJ(3) * t46 - t14 * t423 + t17 * t425) + t434 * (-pkin(2) * t46 - pkin(3) * t75 - t465) - pkin(1) * t46 + pkin(8) * (t155 * t430 + t434 * t47)) * t424, (t6 + pkin(1) * (-t165 * t434 + t430 * t49)) * t426 + (t430 * (-qJ(3) * t48 - t15 * t423 + t18 * t425) + t434 * (-pkin(2) * t48 - pkin(3) * t78 - t464) - pkin(1) * t48 + pkin(8) * (t165 * t430 + t434 * t49)) * t424, (t4 + pkin(1) * (-t134 * t434 + t41 * t430)) * t426 + (t430 * (-qJ(3) * t40 - t11 * t423 + t12 * t425) + t434 * (-pkin(2) * t40 - pkin(3) * t67 - t459) - pkin(1) * t40 + pkin(8) * (t134 * t430 + t41 * t434)) * t424, (t1 + pkin(1) * (-t43 * t434 + t430 * t9)) * t426 + (t430 * (-qJ(3) * t8 - t2 * t423 + t3 * t425) + t434 * (-pkin(2) * t8 - pkin(3) * t19 - t474) - pkin(1) * t8 + pkin(8) * (t43 * t430 + t434 * t9)) * t424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t410, t402, t373, t410, t374, t472, -t361, -t362, 0, 0, t345, t302, t334, t344, t335, t347, t260, t261, t202, t208, t237, t182, t238, t236, t239, t262, t116, t128, t57, t52, t101, t61, t137, t100, t138, t149, t35, t37, t13, t7, t60, t45, t50, t59, t51, t80, t5, t6, t4, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t351, t353, t346, t340, 0, 0, 0, 0, 0, 0, t294, t548, t300, t283, 0, 0, 0, 0, 0, 0, t220, t555, t258, t211, 0, 0, 0, 0, 0, 0, t155, t165, t134, t43; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t515, t332, t298, t515, -t295, -t458, -t200, -t201, 0, 0, t282, t281, t224, -t282, -t221, -t394, t461, t471, t540, t543, -t180, t133, t172, t178, t173, t226, t465, t464, t459, t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t282, t281, t224, -t282, -t221, -t394, -t107, -t108, 0, 0, -t180, t133, t172, t178, t173, t226, t494, t495, t476, t536; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t264, t263, t193, -t264, -t189, t248, -t71, -t72, 0, 0;];
tauJ_reg  = t42;
