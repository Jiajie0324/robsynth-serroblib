% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRPR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 21:26
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRPR7_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR7_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR7_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR7_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR7_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR7_invdynJ_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 21:21:08
% EndTime: 2019-05-07 21:22:09
% DurationCPUTime: 26.20s
% Computational Cost: add. (296022->779), mult. (649957->1157), div. (0->0), fcn. (538678->14), ass. (0->497)
t442 = sin(pkin(12));
t448 = sin(qJ(3));
t452 = cos(qJ(3));
t445 = cos(pkin(6));
t487 = qJD(1) * t445 + qJD(2);
t443 = sin(pkin(6));
t449 = sin(qJ(2));
t520 = qJD(1) * t449;
t499 = t443 * t520;
t409 = t448 * t499 - t452 * t487;
t410 = t448 * t487 + t452 * t499;
t447 = sin(qJ(4));
t451 = cos(qJ(4));
t388 = -t409 * t451 - t447 * t410;
t389 = -t409 * t447 + t410 * t451;
t444 = cos(pkin(12));
t344 = -t444 * t388 + t389 * t442;
t346 = t442 * t388 + t444 * t389;
t300 = t346 * t344;
t453 = cos(qJ(2));
t521 = qJD(1) * t443;
t497 = qJD(2) * t521;
t512 = qJDD(1) * t443;
t418 = -t449 * t497 + t453 * t512;
t412 = -qJDD(3) + t418;
t411 = -qJDD(4) + t412;
t571 = -t300 - t411;
t581 = t442 * t571;
t580 = t444 * t571;
t446 = sin(qJ(6));
t417 = t449 * t512 + t453 * t497;
t486 = qJDD(1) * t445 + qJDD(2);
t460 = -t452 * t417 - t448 * t486;
t378 = -t409 * qJD(3) - t460;
t461 = -t448 * t417 + t452 * t486;
t459 = -t410 * qJD(3) + t461;
t315 = t388 * qJD(4) + t451 * t378 + t447 * t459;
t491 = t378 * t447 - t451 * t459;
t471 = -qJD(4) * t389 - t491;
t492 = t315 * t442 - t444 * t471;
t264 = qJDD(6) + t492;
t498 = t453 * t521;
t431 = -qJD(3) + t498;
t426 = -qJD(4) + t431;
t450 = cos(qJ(6));
t322 = t346 * t446 + t450 * t426;
t324 = t346 * t450 - t426 * t446;
t275 = t324 * t322;
t572 = t264 - t275;
t579 = t446 * t572;
t350 = t388 * t389;
t570 = t350 - t411;
t578 = t447 * t570;
t577 = t450 * t572;
t576 = t451 * t570;
t542 = t346 * t426;
t238 = t492 - t542;
t484 = t487 ^ 2;
t483 = -pkin(2) * t453 - pkin(9) * t449;
t416 = t483 * t521;
t454 = qJD(1) ^ 2;
t564 = sin(qJ(1));
t565 = cos(qJ(1));
t467 = g(1) * t565 + g(2) * t564;
t413 = -t454 * pkin(1) + pkin(8) * t512 - t467;
t466 = g(1) * t564 - g(2) * t565;
t527 = t443 * t454;
t458 = qJDD(1) * pkin(1) + pkin(8) * t527 + t466;
t457 = t445 * t458;
t490 = t413 * t449 - t453 * t457;
t354 = -t486 * pkin(2) - t484 * pkin(9) + (g(3) * t453 + t416 * t520) * t443 + t490;
t392 = -pkin(3) * t431 - pkin(10) * t410;
t567 = t409 ^ 2;
t290 = -t459 * pkin(3) - t567 * pkin(10) + t392 * t410 + t354;
t368 = -pkin(4) * t426 - qJ(5) * t389;
t386 = t388 ^ 2;
t214 = -t471 * pkin(4) - t386 * qJ(5) + t368 * t389 + qJDD(5) + t290;
t266 = t444 * t315 + t442 * t471;
t332 = t344 * t426;
t241 = t332 + t266;
t139 = pkin(5) * t238 - pkin(11) * t241 + t214;
t519 = qJD(5) * t344;
t337 = -0.2e1 * t519;
t529 = t443 * t449;
t455 = -g(3) * t529 + t449 * t457;
t355 = t486 * pkin(9) - t484 * pkin(2) + (t416 * t521 + t413) * t453 + t455;
t475 = t487 * qJD(1);
t468 = t449 * t475;
t469 = t453 * t475;
t559 = t445 * g(3);
t356 = -t418 * pkin(2) - t417 * pkin(9) - t559 + (pkin(2) * t468 - pkin(9) * t469 - t458) * t443;
t304 = t355 * t448 - t452 * t356;
t398 = t409 * t431;
t363 = -t398 + t378;
t537 = t410 * t409;
t462 = -t412 - t537;
t263 = t462 * pkin(3) - pkin(10) * t363 - t304;
t305 = t452 * t355 + t448 * t356;
t270 = -pkin(3) * t567 + pkin(10) * t459 + t431 * t392 + t305;
t208 = t447 * t263 + t451 * t270;
t159 = -t386 * pkin(4) + qJ(5) * t471 + t426 * t368 + t208;
t207 = -t451 * t263 + t270 * t447;
t374 = t388 * t426;
t295 = t374 + t315;
t456 = pkin(4) * t570 - qJ(5) * t295 - t207;
t522 = t444 * t159 + t442 * t456;
t100 = t337 + t522;
t298 = pkin(5) * t344 - pkin(11) * t346;
t566 = t426 ^ 2;
t97 = -pkin(5) * t566 - pkin(11) * t411 - t298 * t344 + t100;
t67 = -t450 * t139 + t446 * t97;
t68 = t139 * t446 + t450 * t97;
t43 = t446 * t67 + t450 * t68;
t439 = t443 ^ 2;
t575 = t439 * (-t445 * t454 + t475);
t574 = t448 * t462;
t573 = t452 * t462;
t569 = -t374 + t315;
t528 = t443 * t453;
t383 = g(3) * t528 + t490;
t384 = t453 * t413 + t455;
t568 = t449 * t383 + t453 * t384;
t341 = qJD(6) + t344;
t493 = t266 * t446 + t450 * t411;
t195 = (qJD(6) - t341) * t324 + t493;
t292 = t389 * (qJD(4) + t426) + t491;
t359 = (qJD(3) + t431) * t410 - t461;
t320 = t322 ^ 2;
t321 = t324 ^ 2;
t340 = t341 ^ 2;
t342 = t344 ^ 2;
t343 = t346 ^ 2;
t387 = t389 ^ 2;
t408 = t410 ^ 2;
t429 = t431 ^ 2;
t148 = -t207 * t451 + t208 * t447;
t563 = pkin(3) * t148;
t235 = -t292 * t447 - t295 * t451;
t562 = pkin(3) * t235;
t561 = pkin(5) * t442;
t560 = pkin(8) * t443;
t495 = t159 * t442 - t444 * t456;
t96 = t411 * pkin(5) - t566 * pkin(11) + (0.2e1 * qJD(5) + t298) * t346 + t495;
t93 = t446 * t96;
t518 = qJD(5) * t346;
t510 = 0.2e1 * t518;
t99 = t495 + t510;
t61 = t100 * t442 - t444 * t99;
t558 = t447 * t61;
t94 = t450 * t96;
t557 = t451 * t61;
t556 = t148 * t448;
t555 = t148 * t452;
t212 = t264 + t275;
t554 = t212 * t446;
t553 = t212 * t450;
t552 = t214 * t442;
t551 = t214 * t444;
t286 = -t300 + t411;
t550 = t286 * t442;
t549 = t286 * t444;
t548 = t290 * t447;
t547 = t290 * t451;
t327 = t350 + t411;
t546 = t327 * t447;
t545 = t327 * t451;
t544 = t341 * t446;
t543 = t341 * t450;
t541 = t354 * t448;
t540 = t354 * t452;
t371 = t412 - t537;
t539 = t371 * t448;
t538 = t371 * t452;
t536 = t426 * t442;
t535 = t426 * t444;
t534 = t426 * t447;
t533 = t426 * t451;
t532 = t431 * t448;
t531 = t431 * t452;
t530 = t439 * t454;
t430 = t453 * t449 * t530;
t415 = t430 + t486;
t525 = t449 * t415;
t414 = -t430 + t486;
t523 = t453 * t414;
t517 = qJD(3) - t431;
t513 = qJD(6) + t341;
t32 = t43 * t442 - t444 * t96;
t511 = pkin(4) * t32 - pkin(5) * t96 + pkin(11) * t43;
t509 = t442 * t275;
t508 = t444 * t275;
t440 = t449 ^ 2;
t507 = t440 * t530;
t441 = t453 ^ 2;
t506 = t441 * t530;
t505 = t453 * t300;
t504 = t453 * t350;
t503 = t453 * t537;
t317 = -t343 - t566;
t254 = t317 * t444 + t550;
t502 = pkin(4) * t254 - t522;
t62 = t444 * t100 + t442 * t99;
t39 = t447 * t62 + t557;
t60 = pkin(4) * t61;
t501 = pkin(3) * t39 + t60;
t500 = -pkin(5) * t444 - pkin(4);
t239 = t492 + t542;
t242 = -t332 + t266;
t178 = -t239 * t442 - t242 * t444;
t180 = -t239 * t444 + t242 * t442;
t112 = t178 * t451 + t180 * t447;
t176 = pkin(4) * t178;
t496 = pkin(3) * t112 + t176;
t149 = t207 * t447 + t451 * t208;
t248 = t304 * t448 + t452 * t305;
t267 = -t321 - t340;
t170 = -t267 * t446 - t553;
t479 = -t266 * t450 + t411 * t446;
t200 = t322 * t513 + t479;
t126 = t170 * t442 + t200 * t444;
t489 = pkin(4) * t126 + pkin(5) * t200 + pkin(11) * t170 + t93;
t260 = -t340 - t320;
t162 = t260 * t450 - t579;
t196 = -t324 * t513 - t493;
t123 = t162 * t442 + t196 * t444;
t488 = pkin(4) * t123 + pkin(5) * t196 + pkin(11) * t162 - t94;
t365 = -t387 - t566;
t302 = t365 * t451 + t546;
t485 = pkin(3) * t302 - t208;
t297 = -t566 - t342;
t232 = t297 * t442 + t580;
t482 = pkin(4) * t232 - t495;
t217 = -qJD(6) * t322 - t479;
t289 = t341 * t322;
t199 = t217 + t289;
t144 = -t195 * t450 + t199 * t446;
t252 = t320 + t321;
t116 = t144 * t442 + t252 * t444;
t481 = pkin(4) * t116 + pkin(5) * t252 + pkin(11) * t144 + t43;
t33 = t43 * t444 + t442 * t96;
t19 = t32 * t451 + t33 * t447;
t480 = pkin(3) * t19 + t511;
t42 = t446 * t68 - t450 * t67;
t478 = t304 * t452 - t305 * t448;
t477 = -pkin(1) + t483;
t255 = -t317 * t442 + t549;
t187 = t254 * t451 + t255 * t447;
t476 = pkin(3) * t187 + t502;
t334 = -t566 - t386;
t278 = t334 * t447 + t576;
t474 = pkin(3) * t278 - t207;
t124 = t162 * t444 - t196 * t442;
t81 = t123 * t451 + t124 * t447;
t473 = pkin(3) * t81 + t488;
t127 = t170 * t444 - t200 * t442;
t83 = t126 * t451 + t127 * t447;
t472 = pkin(3) * t83 + t489;
t470 = qJD(6) * t324 + t493;
t233 = t297 * t444 - t581;
t171 = t232 * t451 + t233 * t447;
t465 = pkin(3) * t171 + t482;
t117 = t144 * t444 - t252 * t442;
t73 = t116 * t451 + t117 * t447;
t464 = pkin(3) * t73 + t481;
t422 = t443 * t469;
t421 = t443 * t468;
t420 = (t440 - t441) * t530;
t419 = -t484 - t506;
t404 = -t507 - t484;
t400 = t411 * t528;
t399 = t443 * t458 + t559;
t397 = t418 - t421;
t396 = t418 + t421;
t395 = -t422 + t417;
t394 = -t408 + t429;
t393 = -t429 + t567;
t391 = -t408 - t429;
t390 = t408 - t567;
t379 = -t429 - t567;
t370 = -t387 + t566;
t369 = t386 - t566;
t367 = t408 + t567;
t366 = (t409 * t448 + t410 * t452) * t431;
t364 = t409 * t517 + t460;
t362 = t398 + t378;
t360 = -t410 * t517 + t461;
t358 = t378 * t448 - t410 * t531;
t357 = -t409 * t532 + t452 * t459;
t349 = t387 - t386;
t348 = t393 * t448 - t538;
t347 = t394 * t452 + t574;
t339 = -0.2e1 * t518;
t338 = 0.2e1 * t519;
t336 = -t391 * t448 + t538;
t335 = t391 * t452 + t539;
t331 = -t343 + t566;
t330 = t342 - t566;
t326 = t379 * t452 - t574;
t325 = t379 * t448 + t573;
t319 = (-t388 * t451 - t389 * t447) * t426;
t318 = (-t388 * t447 + t389 * t451) * t426;
t316 = -t386 - t387;
t312 = -t359 * t452 + t363 * t448;
t310 = t360 * t448 + t362 * t452;
t309 = t369 * t451 + t546;
t308 = -t370 * t447 + t576;
t307 = t369 * t447 - t545;
t306 = t370 * t451 + t578;
t303 = -t365 * t447 + t545;
t299 = t342 - t343;
t291 = (qJD(4) - t426) * t389 + t491;
t285 = -t321 + t340;
t284 = t320 - t340;
t283 = t315 * t451 + t389 * t534;
t282 = t315 * t447 - t389 * t533;
t281 = t388 * t533 - t447 * t471;
t280 = t388 * t534 + t451 * t471;
t279 = t334 * t451 - t578;
t277 = (t344 * t444 - t346 * t442) * t426;
t276 = (t344 * t442 + t346 * t444) * t426;
t274 = t321 - t320;
t273 = t318 * t452 + t319 * t448;
t272 = pkin(2) * t364 + pkin(9) * t336 + t541;
t271 = pkin(2) * t360 + pkin(9) * t326 - t540;
t269 = -t342 - t343;
t259 = t330 * t444 + t550;
t258 = -t331 * t442 + t580;
t257 = t330 * t442 - t549;
t256 = t331 * t444 + t581;
t250 = t307 * t452 + t309 * t448;
t249 = t306 * t452 + t308 * t448;
t246 = -t302 * t448 + t303 * t452;
t245 = t302 * t452 + t303 * t448;
t244 = -pkin(10) * t302 + t547;
t237 = -t292 * t451 + t295 * t447;
t236 = -t291 * t451 - t447 * t569;
t234 = -t291 * t447 + t451 * t569;
t230 = t266 * t444 + t346 * t536;
t229 = t266 * t442 - t346 * t535;
t228 = -t344 * t535 + t442 * t492;
t227 = -t344 * t536 - t444 * t492;
t226 = (-t322 * t450 + t324 * t446) * t341;
t225 = (-t322 * t446 - t324 * t450) * t341;
t224 = -pkin(10) * t278 + t548;
t223 = t282 * t452 + t283 * t448;
t222 = t280 * t452 + t281 * t448;
t221 = -t278 * t448 + t279 * t452;
t220 = t278 * t452 + t279 * t448;
t219 = -t276 * t447 + t277 * t451;
t218 = t276 * t451 + t277 * t447;
t216 = -pkin(2) * t354 + pkin(9) * t248;
t210 = pkin(2) * t367 + pkin(9) * t312 + t248;
t209 = -pkin(3) * t569 + pkin(10) * t303 + t548;
t205 = -pkin(3) * t291 + pkin(10) * t279 - t547;
t204 = -t257 * t447 + t259 * t451;
t203 = -t256 * t447 + t258 * t451;
t202 = t257 * t451 + t259 * t447;
t201 = t256 * t451 + t258 * t447;
t198 = t217 - t289;
t192 = t217 * t450 - t324 * t544;
t191 = t217 * t446 + t324 * t543;
t190 = t322 * t543 + t446 * t470;
t189 = -t322 * t544 + t450 * t470;
t188 = -t254 * t447 + t255 * t451;
t186 = t226 * t444 + t264 * t442;
t185 = t226 * t442 - t264 * t444;
t184 = t284 * t450 - t554;
t183 = -t285 * t446 + t577;
t182 = t284 * t446 + t553;
t181 = t285 * t450 + t579;
t179 = -t238 * t444 - t241 * t442;
t177 = -t238 * t442 + t241 * t444;
t175 = -t235 * t448 + t237 * t452;
t174 = t235 * t452 + t237 * t448;
t173 = t234 * t452 + t236 * t448;
t172 = -t232 * t447 + t233 * t451;
t169 = t267 * t450 - t554;
t168 = -qJ(5) * t254 + t551;
t166 = -t229 * t447 + t230 * t451;
t165 = -t227 * t447 + t228 * t451;
t164 = t229 * t451 + t230 * t447;
t163 = t227 * t451 + t228 * t447;
t161 = t260 * t446 + t577;
t157 = t218 * t452 + t219 * t448;
t156 = t192 * t444 + t509;
t155 = t190 * t444 - t509;
t154 = t192 * t442 - t508;
t153 = t190 * t442 + t508;
t150 = -qJ(5) * t232 + t552;
t147 = -pkin(4) * t241 + qJ(5) * t255 + t552;
t146 = t202 * t452 + t204 * t448;
t145 = t201 * t452 + t203 * t448;
t143 = t196 * t450 - t198 * t446;
t142 = -t195 * t446 - t199 * t450;
t141 = t196 * t446 + t198 * t450;
t137 = -pkin(4) * t238 + qJ(5) * t233 - t551;
t136 = -t187 * t448 + t188 * t452;
t135 = t187 * t452 + t188 * t448;
t134 = t184 * t444 - t195 * t442;
t133 = t183 * t444 + t199 * t442;
t132 = t184 * t442 + t195 * t444;
t131 = t183 * t442 - t199 * t444;
t130 = -pkin(3) * t290 + pkin(10) * t149;
t129 = -t185 * t447 + t186 * t451;
t128 = t185 * t451 + t186 * t447;
t121 = t143 * t444 + t274 * t442;
t120 = t143 * t442 - t274 * t444;
t119 = -pkin(2) * t569 + pkin(9) * t246 + t209 * t452 + t244 * t448;
t118 = -pkin(10) * t235 - t148;
t114 = -t178 * t447 + t180 * t451;
t113 = -t177 * t447 + t179 * t451;
t111 = t177 * t451 + t179 * t447;
t110 = -t171 * t448 + t172 * t452;
t109 = t171 * t452 + t172 * t448;
t108 = t164 * t452 + t166 * t448;
t107 = t163 * t452 + t165 * t448;
t106 = -pkin(2) * t291 + pkin(9) * t221 + t205 * t452 + t224 * t448;
t105 = -pkin(3) * t316 + pkin(10) * t237 + t149;
t104 = -t154 * t447 + t156 * t451;
t103 = -t153 * t447 + t155 * t451;
t102 = t154 * t451 + t156 * t447;
t101 = t153 * t451 + t155 * t447;
t92 = t149 * t452 - t556;
t91 = t149 * t448 + t555;
t90 = -pkin(10) * t187 - t147 * t447 + t168 * t451;
t89 = -t132 * t447 + t134 * t451;
t88 = -t131 * t447 + t133 * t451;
t87 = t132 * t451 + t134 * t447;
t86 = t131 * t451 + t133 * t447;
t85 = t128 * t452 + t129 * t448;
t84 = -t126 * t447 + t127 * t451;
t82 = -t123 * t447 + t124 * t451;
t80 = -pkin(11) * t169 + t94;
t79 = -pkin(11) * t161 + t93;
t78 = -t120 * t447 + t121 * t451;
t77 = t120 * t451 + t121 * t447;
t76 = -pkin(10) * t171 - t137 * t447 + t150 * t451;
t75 = -pkin(3) * t241 + pkin(10) * t188 + t147 * t451 + t168 * t447;
t74 = -t116 * t447 + t117 * t451;
t72 = -t112 * t448 + t114 * t452;
t71 = t112 * t452 + t114 * t448;
t70 = t111 * t452 + t113 * t448;
t69 = -pkin(3) * t238 + pkin(10) * t172 + t137 * t451 + t150 * t447;
t64 = t102 * t452 + t104 * t448;
t63 = t101 * t452 + t103 * t448;
t59 = -pkin(4) * t214 + qJ(5) * t62;
t58 = -pkin(2) * t316 + pkin(9) * t175 + t105 * t452 + t118 * t448;
t57 = -pkin(5) * t169 + t68;
t56 = -pkin(5) * t161 + t67;
t55 = -qJ(5) * t178 - t61;
t54 = -pkin(4) * t269 + qJ(5) * t180 + t62;
t53 = -pkin(2) * t290 + pkin(9) * t92 - pkin(10) * t556 + t130 * t452;
t52 = t448 * t89 + t452 * t87;
t51 = t448 * t88 + t452 * t86;
t50 = -t448 * t83 + t452 * t84;
t49 = t448 * t84 + t452 * t83;
t48 = -t448 * t81 + t452 * t82;
t47 = t448 * t82 + t452 * t81;
t46 = t448 * t78 + t452 * t77;
t45 = -t448 * t73 + t452 * t74;
t44 = t448 * t74 + t452 * t73;
t40 = t451 * t62 - t558;
t38 = -pkin(2) * t241 + pkin(9) * t136 + t448 * t90 + t452 * t75;
t37 = -pkin(11) * t142 - t42;
t36 = -pkin(2) * t238 + pkin(9) * t110 + t448 * t76 + t452 * t69;
t35 = -qJ(5) * t126 - t442 * t57 + t444 * t80;
t34 = -qJ(5) * t123 - t442 * t56 + t444 * t79;
t30 = -pkin(4) * t169 + qJ(5) * t127 + t442 * t80 + t444 * t57;
t29 = -pkin(4) * t161 + qJ(5) * t124 + t442 * t79 + t444 * t56;
t28 = -pkin(10) * t112 - t447 * t54 + t451 * t55;
t27 = -qJ(5) * t116 + t142 * t561 + t37 * t444;
t26 = -pkin(3) * t269 + pkin(10) * t114 + t447 * t55 + t451 * t54;
t25 = qJ(5) * t117 + t142 * t500 + t37 * t442;
t24 = -t39 * t448 + t40 * t452;
t23 = t39 * t452 + t40 * t448;
t22 = -pkin(10) * t39 - qJ(5) * t557 - t447 * t59;
t21 = -pkin(3) * t214 + pkin(10) * t40 - qJ(5) * t558 + t451 * t59;
t20 = -t32 * t447 + t33 * t451;
t18 = -pkin(10) * t83 - t30 * t447 + t35 * t451;
t17 = -pkin(10) * t81 - t29 * t447 + t34 * t451;
t16 = -pkin(3) * t169 + pkin(10) * t84 + t30 * t451 + t35 * t447;
t15 = -pkin(3) * t161 + pkin(10) * t82 + t29 * t451 + t34 * t447;
t14 = -qJ(5) * t32 + (-pkin(11) * t444 + t561) * t42;
t13 = -pkin(2) * t269 + pkin(9) * t72 + t26 * t452 + t28 * t448;
t12 = -pkin(10) * t73 - t25 * t447 + t27 * t451;
t11 = -pkin(3) * t142 + pkin(10) * t74 + t25 * t451 + t27 * t447;
t10 = qJ(5) * t33 + (-pkin(11) * t442 + t500) * t42;
t9 = -t19 * t448 + t20 * t452;
t8 = t19 * t452 + t20 * t448;
t7 = -pkin(2) * t214 + pkin(9) * t24 + t21 * t452 + t22 * t448;
t6 = -pkin(2) * t169 + pkin(9) * t50 + t16 * t452 + t18 * t448;
t5 = -pkin(2) * t161 + pkin(9) * t48 + t15 * t452 + t17 * t448;
t4 = -pkin(2) * t142 + pkin(9) * t45 + t11 * t452 + t12 * t448;
t3 = -pkin(10) * t19 - t10 * t447 + t14 * t451;
t2 = -pkin(3) * t42 + pkin(10) * t20 + t10 * t451 + t14 * t447;
t1 = -pkin(2) * t42 + pkin(9) * t9 + t2 * t452 + t3 * t448;
t31 = [0, 0, 0, 0, 0, qJDD(1), t466, t467, 0, 0, (t443 * t417 + t453 * t575) * t449, t445 * t420 + (t449 * t397 + t453 * (t422 + t417)) * t443, t445 * t395 + (t525 + t453 * (t484 - t507)) * t443, (t443 * t418 - t449 * t575) * t453, t445 * t396 + (t449 * (-t484 + t506) + t523) * t443, t445 * t486, (-t383 + pkin(1) * (t415 * t453 + t419 * t449)) * t445 + (t453 * t399 + pkin(1) * t397 + pkin(8) * (t419 * t453 - t525)) * t443, -t399 * t529 - t445 * t384 + pkin(1) * (-t443 * (t487 * t498 + t417) + (t404 * t453 - t414 * t449) * t445) + (-t404 * t449 - t523) * t560, pkin(1) * ((-t395 * t453 + t396 * t449) * t445 - (-t440 - t441) * t439 * t527) + (t395 * t449 + t396 * t453) * t560 + t568 * t443, pkin(1) * (t443 * t399 + (-t383 * t453 + t384 * t449) * t445) + t568 * t560, t445 * t358 + (t449 * (t378 * t452 + t410 * t532) - t503) * t443, t445 * t310 + (t449 * (t360 * t452 - t362 * t448) - t453 * t390) * t443, t445 * t347 + (t449 * (-t394 * t448 + t573) - t453 * t363) * t443, t445 * t357 + (t449 * (-t409 * t531 - t448 * t459) + t503) * t443, t445 * t348 + (t449 * (t393 * t452 + t539) + t453 * t359) * t443, t412 * t528 + t445 * t366 + (t409 * t452 - t410 * t448) * t431 * t529, (t271 + pkin(1) * (t326 * t449 + t360 * t453)) * t445 + (t449 * (-pkin(9) * t325 + t541) + t453 * (-pkin(2) * t325 + t304) - pkin(1) * t325 + pkin(8) * (t326 * t453 - t360 * t449)) * t443, (t272 + pkin(1) * (t336 * t449 + t364 * t453)) * t445 + (t449 * (-pkin(9) * t335 + t540) + t453 * (-pkin(2) * t335 + t305) - pkin(1) * t335 + pkin(8) * (t336 * t453 - t364 * t449)) * t443, (t210 + pkin(1) * (t312 * t449 + t367 * t453)) * t445 + (t449 * t478 + pkin(8) * (t312 * t453 - t367 * t449) + t477 * (-t359 * t448 - t363 * t452)) * t443, (t216 + pkin(1) * (t248 * t449 - t354 * t453)) * t445 + (pkin(8) * (t248 * t453 + t354 * t449) - t477 * t478) * t443, t445 * t223 + (t449 * (-t282 * t448 + t283 * t452) + t504) * t443, t445 * t173 + (t449 * (-t234 * t448 + t236 * t452) - t453 * t349) * t443, t445 * t249 + (t449 * (-t306 * t448 + t308 * t452) - t453 * t295) * t443, t445 * t222 + (t449 * (-t280 * t448 + t281 * t452) - t504) * t443, t445 * t250 + (t449 * (-t307 * t448 + t309 * t452) + t453 * t292) * t443, (-t318 * t448 + t319 * t452) * t529 + t400 + t445 * t273, (t106 + pkin(1) * (t221 * t449 - t291 * t453)) * t445 + (t449 * (-pkin(9) * t220 - t205 * t448 + t224 * t452) + t453 * (-pkin(2) * t220 - t474) - pkin(1) * t220 + pkin(8) * (t221 * t453 + t291 * t449)) * t443, (t119 + pkin(1) * (t246 * t449 - t453 * t569)) * t445 + (t449 * (-pkin(9) * t245 - t209 * t448 + t244 * t452) + t453 * (-pkin(2) * t245 - t485) - pkin(1) * t245 + pkin(8) * (t246 * t453 + t449 * t569)) * t443, (t58 + pkin(1) * (t175 * t449 - t316 * t453)) * t445 + (t449 * (-pkin(9) * t174 - t105 * t448 + t118 * t452) + t453 * (-pkin(2) * t174 - t562) - pkin(1) * t174 + pkin(8) * (t175 * t453 + t316 * t449)) * t443, (t53 + pkin(1) * (-t290 * t453 + t449 * t92)) * t445 + (t449 * (-pkin(9) * t91 - pkin(10) * t555 - t130 * t448) + t453 * (-pkin(2) * t91 - t563) - pkin(1) * t91 + pkin(8) * (t290 * t449 + t453 * t92)) * t443, t445 * t108 + (t449 * (-t164 * t448 + t166 * t452) - t505) * t443, t445 * t70 + (t449 * (-t111 * t448 + t113 * t452) + t453 * t299) * t443, t445 * t145 + (t449 * (-t201 * t448 + t203 * t452) - t453 * t242) * t443, t445 * t107 + (t449 * (-t163 * t448 + t165 * t452) + t505) * t443, t445 * t146 + (t449 * (-t202 * t448 + t204 * t452) + t453 * t239) * t443, (-t218 * t448 + t219 * t452) * t529 + t400 + t445 * t157, (t36 + pkin(1) * (t110 * t449 - t238 * t453)) * t445 + (t449 * (-pkin(9) * t109 - t448 * t69 + t452 * t76) + t453 * (-pkin(2) * t109 - t465 + t510) - pkin(1) * t109 + pkin(8) * (t110 * t453 + t238 * t449)) * t443, (t38 + pkin(1) * (t136 * t449 - t241 * t453)) * t445 + (t449 * (-pkin(9) * t135 - t448 * t75 + t452 * t90) + t453 * (-pkin(2) * t135 + t337 - t476) - pkin(1) * t135 + pkin(8) * (t136 * t453 + t241 * t449)) * t443, (t13 + pkin(1) * (-t269 * t453 + t449 * t72)) * t445 + (t449 * (-pkin(9) * t71 - t26 * t448 + t28 * t452) + t453 * (-pkin(2) * t71 - t496) - pkin(1) * t71 + pkin(8) * (t269 * t449 + t453 * t72)) * t443, (t7 + pkin(1) * (-t214 * t453 + t24 * t449)) * t445 + (t449 * (-pkin(9) * t23 - t21 * t448 + t22 * t452) + t453 * (-pkin(2) * t23 - t501) - pkin(1) * t23 + pkin(8) * (t214 * t449 + t24 * t453)) * t443, t445 * t64 + (t449 * (-t102 * t448 + t104 * t452) - t453 * t191) * t443, t445 * t46 + (t449 * (-t448 * t77 + t452 * t78) - t453 * t141) * t443, t445 * t51 + (t449 * (-t448 * t86 + t452 * t88) - t453 * t181) * t443, t445 * t63 + (t449 * (-t101 * t448 + t103 * t452) + t453 * t189) * t443, t445 * t52 + (t449 * (-t448 * t87 + t452 * t89) - t453 * t182) * t443, t445 * t85 + (t449 * (-t128 * t448 + t129 * t452) - t453 * t225) * t443, (t5 + pkin(1) * (-t161 * t453 + t449 * t48)) * t445 + (t449 * (-pkin(9) * t47 - t15 * t448 + t17 * t452) + t453 * (-pkin(2) * t47 - t473) - pkin(1) * t47 + pkin(8) * (t161 * t449 + t453 * t48)) * t443, (t6 + pkin(1) * (-t169 * t453 + t449 * t50)) * t445 + (t449 * (-pkin(9) * t49 - t16 * t448 + t18 * t452) + t453 * (-pkin(2) * t49 - t472) - pkin(1) * t49 + pkin(8) * (t169 * t449 + t453 * t50)) * t443, (t4 + pkin(1) * (-t142 * t453 + t449 * t45)) * t445 + (t449 * (-pkin(9) * t44 - t11 * t448 + t12 * t452) + t453 * (-pkin(2) * t44 - t464) - pkin(1) * t44 + pkin(8) * (t142 * t449 + t45 * t453)) * t443, (t1 + pkin(1) * (-t42 * t453 + t449 * t9)) * t445 + (t449 * (-pkin(9) * t8 - t2 * t448 + t3 * t452) + t453 * (-pkin(2) * t8 - t480) - pkin(1) * t8 + pkin(8) * (t42 * t449 + t453 * t9)) * t443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t430, t420, t395, t430, t396, t486, -t383, -t384, 0, 0, t358, t310, t347, t357, t348, t366, t271, t272, t210, t216, t223, t173, t249, t222, t250, t273, t106, t119, t58, t53, t108, t70, t145, t107, t146, t157, t36, t38, t13, t7, t64, t46, t51, t63, t52, t85, t5, t6, t4, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t537, t390, t363, -t537, -t359, -t412, -t304, -t305, 0, 0, -t350, t349, t295, t350, -t292, -t411, t474, t485, t562, t563, t300, -t299, t242, -t300, -t239, -t411, t339 + t465, t338 + t476, t496, t501, t191, t141, t181, -t189, t182, t225, t473, t472, t464, t480; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t350, t349, t295, t350, -t292, -t411, -t207, -t208, 0, 0, t300, -t299, t242, -t300, -t239, -t411, t339 + t482, t338 + t502, t176, t60, t191, t141, t181, -t189, t182, t225, t488, t489, t481, t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t238, t241, t269, t214, 0, 0, 0, 0, 0, 0, t161, t169, t142, t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t275, t274, t199, -t275, -t195, t264, -t67, -t68, 0, 0;];
tauJ_reg  = t31;
