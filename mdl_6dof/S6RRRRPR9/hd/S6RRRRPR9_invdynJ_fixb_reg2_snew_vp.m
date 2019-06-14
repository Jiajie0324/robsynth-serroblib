% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRPR9
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
% Datum: 2019-05-07 22:28
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRPR9_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR9_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR9_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR9_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR9_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR9_invdynJ_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 22:23:16
% EndTime: 2019-05-07 22:24:29
% DurationCPUTime: 31.78s
% Computational Cost: add. (281808->777), mult. (603862->1173), div. (0->0), fcn. (498555->14), ass. (0->500)
t440 = sin(pkin(6));
t446 = sin(qJ(2));
t450 = cos(qJ(2));
t520 = qJD(1) * qJD(2);
t468 = -qJDD(1) * t450 + t446 * t520;
t464 = t468 * t440;
t460 = qJDD(3) + t464;
t458 = qJDD(4) + t460;
t439 = sin(pkin(12));
t445 = sin(qJ(3));
t449 = cos(qJ(3));
t442 = cos(pkin(6));
t495 = qJD(1) * t442 + qJD(2);
t527 = qJD(1) * t440;
t508 = t446 * t527;
t413 = -t445 * t508 + t449 * t495;
t414 = t445 * t495 + t449 * t508;
t444 = sin(qJ(4));
t448 = cos(qJ(4));
t394 = t413 * t444 + t414 * t448;
t504 = t450 * t520;
t519 = qJDD(1) * t440;
t417 = t440 * t504 + t446 * t519;
t492 = qJDD(1) * t442 + qJDD(2);
t463 = -t449 * t417 - t445 * t492;
t383 = t413 * qJD(3) - t463;
t498 = t417 * t445 - t449 * t492;
t471 = -qJD(3) * t414 - t498;
t499 = t383 * t444 - t448 * t471;
t322 = qJD(4) * t394 + t499;
t507 = t450 * t527;
t429 = -qJD(3) + t507;
t424 = -qJD(4) + t429;
t441 = cos(pkin(12));
t371 = t394 * t439 + t441 * t424;
t372 = t394 * t441 - t424 * t439;
t331 = t372 * t371;
t585 = t322 - t331;
t596 = t439 * t585;
t595 = t441 * t585;
t443 = sin(qJ(6));
t447 = cos(qJ(6));
t327 = t447 * t371 + t372 * t443;
t329 = -t371 * t443 + t372 * t447;
t278 = t329 * t327;
t320 = qJDD(6) + t322;
t587 = -t278 + t320;
t594 = t443 * t587;
t392 = -t448 * t413 + t414 * t444;
t352 = t394 * t392;
t583 = -t352 + t458;
t593 = t444 * t583;
t592 = t447 * t587;
t591 = t448 * t583;
t489 = t495 ^ 2;
t436 = t440 ^ 2;
t577 = qJD(1) ^ 2;
t526 = t436 * t577;
t539 = t413 * t414;
t457 = t460 + t539;
t589 = t445 * t457;
t588 = t449 * t457;
t534 = t440 * t446;
t435 = g(3) * t534;
t575 = sin(qJ(1));
t576 = cos(qJ(1));
t466 = g(1) * t575 - g(2) * t576;
t462 = qJDD(1) * pkin(1) + t466;
t525 = t440 * t577;
t455 = pkin(8) * t525 + t462;
t454 = t442 * t455;
t467 = g(1) * t576 + g(2) * t575;
t459 = pkin(8) * t519 - t467;
t565 = t577 * pkin(1);
t456 = t459 - t565;
t386 = t446 * t454 + t450 * t456 - t435;
t573 = pkin(2) * t450;
t488 = -pkin(9) * t446 - t573;
t473 = t450 * t488;
t582 = -t489 * pkin(2) + t492 * pkin(9);
t452 = t473 * t526 + t386 + t582;
t568 = pkin(9) * t450;
t574 = pkin(2) * t446;
t472 = (-t568 + 0.2e1 * t574) * qJD(2);
t566 = t442 * g(3);
t486 = -t417 * pkin(9) - t566;
t487 = -t568 + t574;
t510 = -pkin(1) - t573;
t567 = t440 * pkin(8);
t453 = (t510 * qJDD(1) + ((t442 * t487 - t567) * qJD(1) + t472) * qJD(1) - t466) * t440 + t486;
t305 = t445 * t453 + t449 * t452;
t397 = -pkin(3) * t429 - pkin(10) * t414;
t411 = t413 ^ 2;
t263 = -t411 * pkin(3) + pkin(10) * t471 + t429 * t397 + t305;
t403 = t413 * t429;
t362 = t403 + t383;
t451 = pkin(3) * t457 - pkin(10) * t362 - t445 * t452 + t449 * t453;
t201 = t448 * t263 + t444 * t451;
t347 = pkin(4) * t392 - qJ(5) * t394;
t578 = t424 ^ 2;
t163 = -pkin(4) * t578 + qJ(5) * t458 - t392 * t347 + t201;
t533 = t440 * t450;
t491 = g(3) * t533 - t450 * t454;
t355 = -t492 * pkin(2) - t489 * pkin(9) + t491 + (t459 + (t436 * t488 - pkin(1)) * t577) * t446;
t289 = -t471 * pkin(3) - t411 * pkin(10) + t414 * t397 + t355;
t323 = -t392 * qJD(4) + t448 * t383 + t444 * t471;
t379 = t392 * t424;
t293 = t379 + t323;
t198 = -t293 * qJ(5) + (-t394 * t424 + t322) * pkin(4) + t289;
t119 = 0.2e1 * qJD(5) * t372 + t163 * t439 - t441 * t198;
t120 = -0.2e1 * qJD(5) * t371 + t441 * t163 + t439 * t198;
t73 = t439 * t119 + t441 * t120;
t306 = t441 * t323 + t439 * t458;
t500 = t323 * t439 - t441 * t458;
t214 = -t327 * qJD(6) + t447 * t306 - t443 * t500;
t388 = qJD(6) + t392;
t309 = t388 * t327;
t586 = -t309 + t214;
t343 = t392 * t371;
t271 = -t343 - t306;
t584 = -t343 + t306;
t385 = t446 * t456 + t491;
t581 = t446 * t385 + t450 * t386;
t502 = t306 * t443 + t447 * t500;
t188 = (qJD(6) - t388) * t329 + t502;
t291 = (qJD(4) + t424) * t394 + t499;
t358 = (qJD(3) + t429) * t414 + t498;
t325 = t327 ^ 2;
t326 = t329 ^ 2;
t580 = t371 ^ 2;
t369 = t372 ^ 2;
t387 = t388 ^ 2;
t579 = t392 ^ 2;
t391 = t394 ^ 2;
t412 = t414 ^ 2;
t426 = t429 ^ 2;
t200 = t263 * t444 - t448 * t451;
t142 = -t200 * t448 + t201 * t444;
t572 = pkin(3) * t142;
t294 = -t379 + t323;
t228 = -t291 * t444 - t294 * t448;
t571 = pkin(3) * t228;
t570 = pkin(4) * t444;
t569 = pkin(8) * t445;
t336 = pkin(5) * t392 - pkin(11) * t372;
t101 = -pkin(5) * t580 - pkin(11) * t500 - t392 * t336 + t120;
t90 = pkin(5) * t585 + pkin(11) * t271 - t119;
t58 = t101 * t443 - t447 * t90;
t59 = t101 * t447 + t443 * t90;
t35 = t443 * t59 - t447 * t58;
t564 = t35 * t439;
t563 = t35 * t441;
t162 = -t458 * pkin(4) - t578 * qJ(5) + t347 * t394 + qJDD(5) + t200;
t562 = -pkin(4) * t162 + qJ(5) * t73;
t561 = t142 * t445;
t560 = t142 * t449;
t150 = pkin(5) * t500 - pkin(11) * t580 + t336 * t372 + t162;
t559 = t150 * t443;
t558 = t150 * t447;
t236 = t278 + t320;
t557 = t236 * t443;
t556 = t236 * t447;
t274 = t322 + t331;
t555 = t274 * t439;
t554 = t274 * t441;
t553 = t289 * t444;
t552 = t289 * t448;
t551 = t322 * t444;
t337 = -t352 - t458;
t550 = t337 * t444;
t549 = t337 * t448;
t548 = t355 * t445;
t547 = t355 * t449;
t546 = t372 * t392;
t376 = -t460 + t539;
t545 = t376 * t445;
t544 = t376 * t449;
t543 = t388 * t443;
t542 = t388 * t447;
t541 = t392 * t439;
t540 = t392 * t441;
t538 = t424 * t444;
t537 = t424 * t448;
t536 = t429 * t445;
t535 = t429 * t449;
t158 = t439 * t162;
t159 = t441 * t162;
t532 = t442 * t446;
t428 = t450 * t446 * t526;
t416 = t428 + t492;
t530 = t446 * t416;
t415 = -t428 + t492;
t528 = t450 * t415;
t524 = -qJD(3) + t429;
t518 = t444 * t278;
t517 = t448 * t278;
t516 = t444 * t331;
t515 = t448 * t331;
t514 = t450 * t352;
t513 = t450 * t539;
t321 = -t369 - t579;
t223 = -t321 * t439 - t554;
t512 = -pkin(4) * t584 + qJ(5) * t223 + t158;
t315 = -t579 - t580;
t217 = t315 * t441 - t596;
t266 = t500 + t546;
t511 = -pkin(4) * t266 + qJ(5) * t217 - t159;
t509 = -pkin(4) * t448 - pkin(3);
t437 = t446 ^ 2;
t506 = t437 * t526;
t438 = t450 ^ 2;
t505 = t438 * t526;
t36 = t443 * t58 + t447 * t59;
t244 = -t325 - t326;
t191 = t309 + t214;
t137 = -t188 * t447 + t191 * t443;
t30 = -pkin(5) * t244 + pkin(11) * t137 + t36;
t135 = -t188 * t443 - t191 * t447;
t32 = -pkin(11) * t135 - t35;
t80 = -t135 * t439 + t137 * t441;
t503 = -pkin(4) * t244 + qJ(5) * t80 + t441 * t30 + t439 * t32;
t143 = t200 * t444 + t448 * t201;
t304 = t445 * (t450 * (-t467 - t565) + t462 * t532 - t435 + t582) - t449 * t486 + (t449 * t466 + (-t449 * t510 + t450 * t569) * qJDD(1) + (((t449 * pkin(8) + t445 * t473) * t440 + (t446 * t569 - t449 * t487) * t442) * qJD(1) - t449 * t472) * qJD(1)) * t440;
t250 = t304 * t445 + t449 * t305;
t257 = -t387 - t325;
t169 = t257 * t443 + t592;
t170 = t257 * t447 - t594;
t123 = -t169 * t439 + t170 * t441;
t187 = (qJD(6) + t388) * t329 + t502;
t82 = -pkin(5) * t187 + pkin(11) * t170 - t558;
t95 = -pkin(11) * t169 + t559;
t497 = -pkin(4) * t187 + qJ(5) * t123 + t439 * t95 + t441 * t82;
t280 = -t326 - t387;
t193 = t280 * t447 - t557;
t103 = -pkin(11) * t193 + t558;
t194 = -t280 * t443 - t556;
t140 = -t193 * t439 + t194 * t441;
t84 = -pkin(5) * t586 + pkin(11) * t194 + t559;
t496 = -pkin(4) * t586 + qJ(5) * t140 + t439 * t103 + t441 * t84;
t267 = t500 - t546;
t212 = -t267 * t441 - t271 * t439;
t297 = -t369 - t580;
t494 = -pkin(4) * t297 + qJ(5) * t212 + t73;
t64 = -t162 * t448 + t444 * t73;
t493 = pkin(3) * t64 + t562;
t364 = -t391 - t578;
t300 = t364 * t448 + t550;
t490 = pkin(3) * t300 - t201;
t72 = -t119 * t441 + t120 * t439;
t484 = t304 * t449 - t305 * t445;
t483 = t436 * t446 * t504;
t482 = -pkin(1) + t488;
t171 = t223 * t444 - t448 * t584;
t481 = pkin(3) * t171 + t512;
t167 = t217 * t444 - t266 * t448;
t480 = pkin(3) * t167 + t511;
t69 = -t244 * t448 + t444 * t80;
t478 = pkin(3) * t69 + t503;
t344 = -t579 - t578;
t283 = t344 * t444 + t591;
t477 = pkin(3) * t283 - t200;
t19 = t36 * t441 - t564;
t34 = -pkin(5) * t150 + pkin(11) * t36;
t476 = -pkin(4) * t150 - pkin(11) * t564 + qJ(5) * t19 + t441 * t34;
t87 = t123 * t444 - t187 * t448;
t475 = pkin(3) * t87 + t497;
t91 = t140 * t444 - t448 * t586;
t474 = pkin(3) * t91 + t496;
t164 = t212 * t444 - t297 * t448;
t470 = pkin(3) * t164 + t494;
t469 = t495 * t527;
t15 = -t150 * t448 + t19 * t444;
t465 = pkin(3) * t15 + t476;
t421 = t450 * t469;
t420 = t446 * t469;
t419 = (t437 - t438) * t526;
t418 = -t489 - t505;
t408 = -t506 - t489;
t404 = t440 * t455 + t566;
t402 = -t420 - t464;
t401 = t420 - t464;
t400 = -t421 + t417;
t399 = -t412 + t426;
t398 = t411 - t426;
t396 = -t412 - t426;
t395 = t412 - t411;
t384 = -t426 - t411;
t375 = -t391 + t578;
t374 = t579 - t578;
t373 = t411 + t412;
t370 = (-t413 * t445 + t414 * t449) * t429;
t363 = t413 * t524 + t463;
t361 = -t403 + t383;
t359 = t414 * t524 - t498;
t357 = t383 * t445 - t414 * t535;
t356 = t413 * t536 + t449 * t471;
t350 = t391 - t579;
t349 = t398 * t445 - t544;
t348 = t399 * t449 + t589;
t346 = -t396 * t445 + t544;
t345 = t396 * t449 + t545;
t341 = -t369 + t579;
t340 = -t579 + t580;
t335 = t384 * t449 - t589;
t334 = t384 * t445 + t588;
t333 = (t392 * t448 - t394 * t444) * t424;
t332 = (t392 * t444 + t394 * t448) * t424;
t330 = -t369 + t580;
t324 = -t579 - t391;
t319 = t448 * t322;
t318 = -t358 * t449 + t362 * t445;
t316 = t359 * t445 + t361 * t449;
t314 = t374 * t448 + t550;
t313 = -t375 * t444 + t591;
t312 = t374 * t444 - t549;
t311 = t375 * t448 + t593;
t308 = -t326 + t387;
t307 = t325 - t387;
t301 = -t364 * t444 + t549;
t290 = (qJD(4) - t424) * t394 + t499;
t288 = t323 * t448 + t394 * t538;
t287 = t323 * t444 - t394 * t537;
t286 = -t392 * t537 + t551;
t285 = -t392 * t538 - t319;
t284 = t344 * t448 - t593;
t282 = (-t371 * t441 + t372 * t439) * t392;
t281 = (-t371 * t439 - t372 * t441) * t392;
t279 = t332 * t449 + t333 * t445;
t277 = t326 - t325;
t276 = pkin(2) * t363 + pkin(9) * t346 + t548;
t272 = pkin(2) * t359 + pkin(9) * t335 - t547;
t262 = t306 * t441 - t372 * t541;
t261 = t306 * t439 + t372 * t540;
t260 = t371 * t540 + t439 * t500;
t259 = -t371 * t541 + t441 * t500;
t254 = t312 * t449 + t314 * t445;
t253 = t311 * t449 + t313 * t445;
t252 = (-t327 * t447 + t329 * t443) * t388;
t251 = (-t327 * t443 - t329 * t447) * t388;
t248 = -t300 * t445 + t301 * t449;
t247 = t300 * t449 + t301 * t445;
t246 = t282 * t448 + t551;
t245 = t282 * t444 - t319;
t243 = t340 * t441 - t555;
t242 = -t341 * t439 + t595;
t241 = t340 * t439 + t554;
t240 = t341 * t441 + t596;
t238 = -pkin(10) * t300 + t552;
t234 = t262 * t448 + t516;
t233 = t260 * t448 - t516;
t232 = t262 * t444 - t515;
t231 = t260 * t444 + t515;
t230 = -t291 * t448 + t294 * t444;
t229 = -t290 * t448 - t293 * t444;
t227 = -t290 * t444 + t293 * t448;
t226 = -pkin(10) * t283 + t553;
t225 = t287 * t449 + t288 * t445;
t224 = t285 * t449 + t286 * t445;
t222 = t321 * t441 - t555;
t220 = -t283 * t445 + t284 * t449;
t219 = t283 * t449 + t284 * t445;
t218 = -pkin(2) * t355 + pkin(9) * t250;
t216 = t315 * t439 + t595;
t213 = -qJD(6) * t329 - t502;
t211 = -t266 * t441 - t439 * t584;
t210 = -t267 * t439 + t271 * t441;
t209 = -t266 * t439 + t441 * t584;
t207 = pkin(2) * t373 + pkin(9) * t318 + t250;
t206 = t307 * t447 - t557;
t205 = -t308 * t443 + t592;
t204 = t307 * t443 + t556;
t203 = t308 * t447 + t594;
t202 = -pkin(3) * t293 + pkin(10) * t301 + t553;
t195 = -pkin(3) * t290 + pkin(10) * t284 - t552;
t184 = t214 * t447 - t329 * t543;
t183 = t214 * t443 + t329 * t542;
t182 = -t213 * t443 + t327 * t542;
t181 = t213 * t447 + t327 * t543;
t180 = t243 * t448 - t267 * t444;
t179 = t242 * t448 - t271 * t444;
t178 = t243 * t444 + t267 * t448;
t177 = t242 * t444 + t271 * t448;
t176 = t211 * t448 - t330 * t444;
t175 = t211 * t444 + t330 * t448;
t174 = -t251 * t439 + t252 * t441;
t173 = t251 * t441 + t252 * t439;
t172 = t223 * t448 + t444 * t584;
t168 = t217 * t448 + t266 * t444;
t166 = t245 * t449 + t246 * t445;
t165 = t212 * t448 + t297 * t444;
t157 = t232 * t449 + t234 * t445;
t156 = t231 * t449 + t233 * t445;
t155 = -t228 * t445 + t230 * t449;
t154 = t228 * t449 + t230 * t445;
t153 = t227 * t449 + t229 * t445;
t152 = t174 * t448 + t320 * t444;
t151 = t174 * t444 - t320 * t448;
t148 = -t204 * t439 + t206 * t441;
t147 = -t203 * t439 + t205 * t441;
t146 = t204 * t441 + t206 * t439;
t145 = t203 * t441 + t205 * t439;
t144 = -qJ(5) * t222 + t159;
t141 = -qJ(5) * t216 + t158;
t139 = t193 * t441 + t194 * t439;
t136 = -t187 * t447 - t443 * t586;
t134 = -t187 * t443 + t447 * t586;
t133 = -t183 * t439 + t184 * t441;
t132 = -t181 * t439 + t182 * t441;
t131 = t183 * t441 + t184 * t439;
t130 = t181 * t441 + t182 * t439;
t129 = t178 * t449 + t180 * t445;
t128 = t177 * t449 + t179 * t445;
t127 = t175 * t449 + t176 * t445;
t126 = -pkin(3) * t289 + pkin(10) * t143;
t125 = -t171 * t445 + t172 * t449;
t124 = t171 * t449 + t172 * t445;
t122 = t169 * t441 + t170 * t439;
t116 = -t167 * t445 + t168 * t449;
t115 = t167 * t449 + t168 * t445;
t114 = -t164 * t445 + t165 * t449;
t113 = t164 * t449 + t165 * t445;
t112 = -pkin(2) * t293 + pkin(9) * t248 + t202 * t449 + t238 * t445;
t111 = t133 * t448 + t518;
t110 = t132 * t448 - t518;
t109 = t133 * t444 - t517;
t108 = t132 * t444 + t517;
t107 = -pkin(10) * t228 - t142;
t106 = -pkin(2) * t290 + pkin(9) * t220 + t195 * t449 + t226 * t445;
t105 = t151 * t449 + t152 * t445;
t104 = -pkin(3) * t324 + pkin(10) * t230 + t143;
t100 = t148 * t448 - t188 * t444;
t99 = t147 * t448 + t191 * t444;
t98 = t148 * t444 + t188 * t448;
t97 = t147 * t444 - t191 * t448;
t96 = -pkin(4) * t222 + t120;
t93 = -pkin(4) * t216 + t119;
t92 = t140 * t448 + t444 * t586;
t88 = t123 * t448 + t187 * t444;
t86 = t143 * t449 - t561;
t85 = t143 * t445 + t560;
t79 = -t134 * t439 + t136 * t441;
t78 = t135 * t441 + t137 * t439;
t77 = t134 * t441 + t136 * t439;
t75 = t277 * t444 + t448 * t79;
t74 = -t277 * t448 + t444 * t79;
t70 = t244 * t444 + t448 * t80;
t68 = t109 * t449 + t111 * t445;
t67 = t108 * t449 + t110 * t445;
t66 = -qJ(5) * t210 - t72;
t65 = t162 * t444 + t448 * t73;
t63 = t100 * t445 + t449 * t98;
t62 = t445 * t99 + t449 * t97;
t61 = -pkin(10) * t171 + t144 * t448 - t444 * t96;
t60 = -pkin(10) * t167 + t141 * t448 - t444 * t93;
t56 = -t445 * t91 + t449 * t92;
t55 = t445 * t92 + t449 * t91;
t54 = -pkin(4) * t78 - pkin(5) * t135;
t53 = -t445 * t87 + t449 * t88;
t52 = t445 * t88 + t449 * t87;
t51 = -pkin(3) * t222 + pkin(10) * t172 + t144 * t444 + t448 * t96;
t50 = -pkin(3) * t216 + pkin(10) * t168 + t141 * t444 + t448 * t93;
t49 = -pkin(2) * t324 + pkin(9) * t155 + t104 * t449 + t107 * t445;
t48 = -pkin(10) * t164 + t210 * t570 + t448 * t66;
t47 = -pkin(2) * t289 + pkin(9) * t86 - pkin(10) * t561 + t126 * t449;
t46 = pkin(10) * t165 + t210 * t509 + t444 * t66;
t45 = -qJ(5) * t139 + t103 * t441 - t439 * t84;
t44 = -pkin(4) * t139 - pkin(5) * t193 + t59;
t43 = t445 * t75 + t449 * t74;
t42 = -qJ(5) * t122 - t439 * t82 + t441 * t95;
t41 = -pkin(4) * t122 - pkin(5) * t169 + t58;
t40 = -t445 * t69 + t449 * t70;
t39 = t445 * t70 + t449 * t69;
t38 = -t445 * t64 + t449 * t65;
t37 = t445 * t65 + t449 * t64;
t28 = -pkin(10) * t64 + (-qJ(5) * t448 + t570) * t72;
t27 = -pkin(2) * t222 + pkin(9) * t125 + t445 * t61 + t449 * t51;
t26 = -pkin(2) * t216 + pkin(9) * t116 + t445 * t60 + t449 * t50;
t25 = -pkin(2) * t210 + pkin(9) * t114 + t445 * t48 + t449 * t46;
t24 = pkin(10) * t65 + (-qJ(5) * t444 + t509) * t72;
t23 = -pkin(10) * t91 - t44 * t444 + t448 * t45;
t22 = -pkin(10) * t87 - t41 * t444 + t42 * t448;
t21 = -pkin(3) * t139 + pkin(10) * t92 + t44 * t448 + t444 * t45;
t20 = -pkin(3) * t122 + pkin(10) * t88 + t41 * t448 + t42 * t444;
t18 = t36 * t439 + t563;
t16 = t150 * t444 + t19 * t448;
t14 = -qJ(5) * t78 - t30 * t439 + t32 * t441;
t13 = -pkin(4) * t18 - pkin(5) * t35;
t12 = -pkin(10) * t69 + t14 * t448 - t444 * t54;
t11 = -pkin(3) * t78 + pkin(10) * t70 + t14 * t444 + t448 * t54;
t10 = -pkin(11) * t563 - qJ(5) * t18 - t34 * t439;
t9 = -pkin(2) * t72 + pkin(9) * t38 + t24 * t449 + t28 * t445;
t8 = -pkin(2) * t139 + pkin(9) * t56 + t21 * t449 + t23 * t445;
t7 = -t15 * t445 + t16 * t449;
t6 = t15 * t449 + t16 * t445;
t5 = -pkin(2) * t122 + pkin(9) * t53 + t20 * t449 + t22 * t445;
t4 = -pkin(2) * t78 + pkin(9) * t40 + t11 * t449 + t12 * t445;
t3 = -pkin(10) * t15 + t10 * t448 - t13 * t444;
t2 = -pkin(3) * t18 + pkin(10) * t16 + t10 * t444 + t13 * t448;
t1 = -pkin(2) * t18 + pkin(9) * t7 + t2 * t449 + t3 * t445;
t17 = [0, 0, 0, 0, 0, qJDD(1), t466, t467, 0, 0, t417 * t534 + t483, t442 * t419 + (t446 * t402 + t450 * (t421 + t417)) * t440, t442 * t400 + (t530 + t450 * (t489 - t506)) * t440, -t436 * t450 * t468 - t483, t442 * t401 + (t446 * (-t489 + t505) + t528) * t440, t442 * t492, (-t385 + pkin(1) * (t416 * t450 + t418 * t446)) * t442 + (t450 * t404 + pkin(1) * t402 + pkin(8) * (t418 * t450 - t530)) * t440, -t404 * t534 - t442 * t386 + pkin(1) * (-t415 * t532 + t442 * t450 * t408 - t440 * (t495 * t507 + t417)) + (-t446 * t408 - t528) * t567, pkin(1) * ((-t400 * t450 + t401 * t446) * t442 - (-t437 - t438) * t436 * t525) + (t446 * t400 + t401 * t450) * t567 + t581 * t440, pkin(1) * (t440 * t404 + (-t385 * t450 + t386 * t446) * t442) + t581 * t567, t442 * t357 + (t446 * (t383 * t449 + t414 * t536) + t513) * t440, t442 * t316 + (t446 * (t359 * t449 - t361 * t445) - t450 * t395) * t440, t442 * t348 + (t446 * (-t399 * t445 + t588) - t450 * t362) * t440, t442 * t356 + (t446 * (t413 * t535 - t445 * t471) - t513) * t440, t442 * t349 + (t446 * (t398 * t449 + t545) + t450 * t358) * t440, -t460 * t533 + t442 * t370 + (-t413 * t449 - t414 * t445) * t429 * t534, (-pkin(9) * t334 + t548) * t534 + (-pkin(2) * t334 + t304) * t533 + t442 * t272 + pkin(1) * (-t440 * t334 + (t335 * t446 + t359 * t450) * t442) + (t450 * t335 - t446 * t359) * t567, (t276 + pkin(1) * (t346 * t446 + t363 * t450)) * t442 + (t446 * (-pkin(9) * t345 + t547) + t450 * (-pkin(2) * t345 + t305) - pkin(1) * t345 + pkin(8) * (t346 * t450 - t446 * t363)) * t440, (t207 + pkin(1) * (t318 * t446 + t373 * t450)) * t442 + (t446 * t484 + pkin(8) * (t318 * t450 - t446 * t373) + t482 * (-t358 * t445 - t362 * t449)) * t440, (t218 + pkin(1) * (t250 * t446 - t355 * t450)) * t442 + (pkin(8) * (t250 * t450 + t446 * t355) - t482 * t484) * t440, t442 * t225 + (t446 * (-t287 * t445 + t288 * t449) - t514) * t440, t442 * t153 + (t446 * (-t227 * t445 + t229 * t449) - t450 * t350) * t440, t442 * t253 + (t446 * (-t311 * t445 + t313 * t449) - t450 * t294) * t440, t442 * t224 + (t446 * (-t285 * t445 + t286 * t449) + t514) * t440, t442 * t254 + (t446 * (-t312 * t445 + t314 * t449) + t450 * t291) * t440, t442 * t279 + (t446 * (-t332 * t445 + t333 * t449) - t458 * t450) * t440, (t106 + pkin(1) * (t220 * t446 - t290 * t450)) * t442 + (t446 * (-pkin(9) * t219 - t195 * t445 + t226 * t449) + t450 * (-pkin(2) * t219 - t477) - pkin(1) * t219 + pkin(8) * (t220 * t450 + t446 * t290)) * t440, (t112 + pkin(1) * (t248 * t446 - t293 * t450)) * t442 + (t446 * (-pkin(9) * t247 - t202 * t445 + t238 * t449) + t450 * (-pkin(2) * t247 - t490) - pkin(1) * t247 + pkin(8) * (t248 * t450 + t293 * t446)) * t440, (t49 + pkin(1) * (t155 * t446 - t324 * t450)) * t442 + (t446 * (-pkin(9) * t154 - t104 * t445 + t107 * t449) + t450 * (-pkin(2) * t154 - t571) - pkin(1) * t154 + pkin(8) * (t155 * t450 + t446 * t324)) * t440, (t47 + pkin(1) * (-t289 * t450 + t446 * t86)) * t442 + (t446 * (-pkin(9) * t85 - pkin(10) * t560 - t126 * t445) + t450 * (-pkin(2) * t85 - t572) - pkin(1) * t85 + pkin(8) * (t446 * t289 + t450 * t86)) * t440, t442 * t157 + (t446 * (-t232 * t445 + t234 * t449) - t450 * t261) * t440, t442 * t127 + (t446 * (-t175 * t445 + t176 * t449) - t450 * t209) * t440, t442 * t128 + (t446 * (-t177 * t445 + t179 * t449) - t450 * t240) * t440, t442 * t156 + (t446 * (-t231 * t445 + t233 * t449) + t450 * t259) * t440, t442 * t129 + (t446 * (-t178 * t445 + t180 * t449) - t450 * t241) * t440, t442 * t166 + (t446 * (-t245 * t445 + t246 * t449) - t450 * t281) * t440, (t26 + pkin(1) * (t116 * t446 - t216 * t450)) * t442 + (t446 * (-pkin(9) * t115 - t445 * t50 + t449 * t60) + t450 * (-pkin(2) * t115 - t480) - pkin(1) * t115 + pkin(8) * (t116 * t450 + t446 * t216)) * t440, (t27 + pkin(1) * (t125 * t446 - t222 * t450)) * t442 + (t446 * (-pkin(9) * t124 - t445 * t51 + t449 * t61) + t450 * (-pkin(2) * t124 - t481) - pkin(1) * t124 + pkin(8) * (t125 * t450 + t446 * t222)) * t440, (t25 + pkin(1) * (t114 * t446 - t210 * t450)) * t442 + (t446 * (-pkin(9) * t113 - t445 * t46 + t449 * t48) + t450 * (-pkin(2) * t113 - t470) - pkin(1) * t113 + pkin(8) * (t114 * t450 + t446 * t210)) * t440, (t9 + pkin(1) * (t38 * t446 - t450 * t72)) * t442 + (t446 * (-pkin(9) * t37 - t24 * t445 + t28 * t449) + t450 * (-pkin(2) * t37 - t493) - pkin(1) * t37 + pkin(8) * (t38 * t450 + t446 * t72)) * t440, t442 * t68 + (t446 * (-t109 * t445 + t111 * t449) - t450 * t131) * t440, t442 * t43 + (t446 * (-t445 * t74 + t449 * t75) - t450 * t77) * t440, t442 * t62 + (t446 * (-t445 * t97 + t449 * t99) - t450 * t145) * t440, t442 * t67 + (t446 * (-t108 * t445 + t110 * t449) - t450 * t130) * t440, t442 * t63 + (t446 * (t100 * t449 - t445 * t98) - t450 * t146) * t440, t442 * t105 + (t446 * (-t151 * t445 + t152 * t449) - t450 * t173) * t440, (t5 + pkin(1) * (-t122 * t450 + t446 * t53)) * t442 + (t446 * (-pkin(9) * t52 - t20 * t445 + t22 * t449) + t450 * (-pkin(2) * t52 - t475) - pkin(1) * t52 + pkin(8) * (t446 * t122 + t450 * t53)) * t440, (t8 + pkin(1) * (-t139 * t450 + t446 * t56)) * t442 + (t446 * (-pkin(9) * t55 - t21 * t445 + t23 * t449) + t450 * (-pkin(2) * t55 - t474) - pkin(1) * t55 + pkin(8) * (t446 * t139 + t450 * t56)) * t440, (t4 + pkin(1) * (t40 * t446 - t450 * t78)) * t442 + (t446 * (-pkin(9) * t39 - t11 * t445 + t12 * t449) + t450 * (-pkin(2) * t39 - t478) - pkin(1) * t39 + pkin(8) * (t40 * t450 + t446 * t78)) * t440, (t1 + pkin(1) * (-t18 * t450 + t446 * t7)) * t442 + (t446 * (-pkin(9) * t6 - t2 * t445 + t3 * t449) + t450 * (-pkin(2) * t6 - t465) - pkin(1) * t6 + pkin(8) * (t446 * t18 + t450 * t7)) * t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t428, t419, t400, t428, t401, t492, -t385, -t386, 0, 0, t357, t316, t348, t356, t349, t370, t272, t276, t207, t218, t225, t153, t253, t224, t254, t279, t106, t112, t49, t47, t157, t127, t128, t156, t129, t166, t26, t27, t25, t9, t68, t43, t62, t67, t63, t105, t5, t8, t4, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t539, t395, t362, t539, -t358, t460, -t304, -t305, 0, 0, t352, t350, t294, -t352, -t291, t458, t477, t490, t571, t572, t261, t209, t240, -t259, t241, t281, t480, t481, t470, t493, t131, t77, t145, t130, t146, t173, t475, t474, t478, t465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t352, t350, t294, -t352, -t291, t458, -t200, -t201, 0, 0, t261, t209, t240, -t259, t241, t281, t511, t512, t494, t562, t131, t77, t145, t130, t146, t173, t497, t496, t503, t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t266, t584, t297, t162, 0, 0, 0, 0, 0, 0, t187, t586, t244, t150; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t278, t277, t191, -t278, -t188, t320, -t58, -t59, 0, 0;];
tauJ_reg  = t17;
