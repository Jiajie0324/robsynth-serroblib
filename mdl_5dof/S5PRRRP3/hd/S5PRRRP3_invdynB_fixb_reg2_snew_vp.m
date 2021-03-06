% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRRRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:44
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRRRP3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP3_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP3_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP3_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP3_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:44:18
% EndTime: 2019-12-05 16:44:27
% DurationCPUTime: 6.85s
% Computational Cost: add. (22293->471), mult. (46592->669), div. (0->0), fcn. (31822->8), ass. (0->348)
t507 = sin(qJ(4));
t510 = cos(qJ(4));
t511 = cos(qJ(3));
t508 = sin(qJ(3));
t547 = qJD(2) * t508;
t458 = -t510 * t511 * qJD(2) + t507 * t547;
t460 = (t507 * t511 + t508 * t510) * qJD(2);
t420 = t460 * t458;
t498 = qJDD(3) + qJDD(4);
t523 = -t498 + t420;
t600 = t523 * pkin(4);
t562 = t507 * t523;
t554 = t510 * t523;
t505 = cos(pkin(8));
t509 = sin(qJ(2));
t512 = cos(qJ(2));
t504 = sin(pkin(8));
t479 = t505 * g(1) + t504 * g(2);
t525 = t504 * g(1) - t505 * g(2);
t520 = t509 * t479 + t512 * t525;
t549 = t512 * t479 - t509 * t525;
t524 = -t509 * t520 - t512 * t549;
t384 = t509 * t549 - t512 * t520;
t572 = t504 * t384;
t331 = t505 * t524 + t572;
t567 = t505 * t384;
t604 = -t504 * t524 + t567;
t541 = t509 * qJDD(2);
t591 = qJD(2) ^ 2;
t475 = t512 * t591 + t541;
t540 = t512 * qJDD(2);
t476 = -t509 * t591 + t540;
t424 = -t504 * t475 + t505 * t476;
t502 = g(3) - qJDD(1);
t452 = pkin(5) * t475 - t512 * t502;
t517 = -pkin(5) * t476 - t509 * t502;
t603 = -qJ(1) * t424 + t504 * t452 + t505 * t517;
t595 = t505 * t475 + t504 * t476;
t601 = qJ(1) * t595 + t505 * t452 - t504 * t517;
t543 = qJD(2) * qJD(3);
t532 = t511 * t543;
t542 = t508 * qJDD(2);
t472 = t532 + t542;
t493 = t511 * qJDD(2);
t533 = t508 * t543;
t516 = -t493 + t533;
t391 = -t458 * qJD(4) + t510 * t472 - t507 * t516;
t499 = qJD(3) + qJD(4);
t448 = t499 * t458;
t596 = -t448 + t391;
t457 = t460 ^ 2;
t497 = t499 ^ 2;
t439 = -t457 - t497;
t415 = t420 + t498;
t563 = t507 * t415;
t371 = t510 * t439 - t563;
t555 = t510 * t415;
t372 = -t507 * t439 - t555;
t321 = t511 * t371 + t508 * t372;
t594 = -pkin(2) * t321 - pkin(3) * t371;
t456 = t458 ^ 2;
t404 = -t497 - t456;
t347 = t507 * t404 - t554;
t348 = t510 * t404 + t562;
t305 = t511 * t347 + t508 * t348;
t593 = -pkin(2) * t305 - pkin(3) * t347;
t522 = t507 * t472 + t510 * t516;
t366 = (qJD(4) - t499) * t460 + t522;
t430 = -t505 * t479 - t504 * t525;
t429 = -t504 * t479 + t505 * t525;
t370 = -t448 - t391;
t318 = -t366 * t507 + t510 * t370;
t320 = -t366 * t510 - t507 * t370;
t272 = -t508 * t318 + t511 * t320;
t394 = -t456 - t457;
t261 = t509 * t272 - t512 * t394;
t586 = pkin(5) * t261;
t306 = -t508 * t347 + t511 * t348;
t365 = (qJD(4) + t499) * t460 + t522;
t280 = t509 * t306 - t512 * t365;
t585 = pkin(5) * t280;
t322 = -t508 * t371 + t511 * t372;
t287 = t509 * t322 - t512 * t596;
t584 = pkin(5) * t287;
t270 = t511 * t318 + t508 * t320;
t583 = pkin(6) * t270;
t582 = pkin(6) * t305;
t581 = pkin(6) * t321;
t580 = pkin(7) * t318;
t579 = pkin(7) * t347;
t578 = pkin(7) * t371;
t262 = t512 * t272 + t509 * t394;
t218 = t505 * t261 + t504 * t262;
t577 = qJ(1) * t218;
t281 = t512 * t306 + t509 * t365;
t233 = t505 * t280 + t504 * t281;
t576 = qJ(1) * t233;
t288 = t512 * t322 + t509 * t596;
t240 = t505 * t287 + t504 * t288;
t575 = qJ(1) * t240;
t574 = t499 * t507;
t573 = t499 * t510;
t568 = t504 * t502;
t566 = t505 * t502;
t418 = -t591 * pkin(2) + qJDD(2) * pkin(6) - t549;
t398 = t508 * t418 + t511 * t502;
t487 = t508 * t591 * t511;
t480 = qJDD(3) + t487;
t353 = (-t472 + t532) * pkin(7) + t480 * pkin(3) - t398;
t401 = t511 * t418 - t508 * t502;
t482 = qJD(3) * pkin(3) - pkin(7) * t547;
t501 = t511 ^ 2;
t495 = t501 * t591;
t358 = -pkin(3) * t495 - pkin(7) * t516 - qJD(3) * t482 + t401;
t308 = -t510 * t353 + t507 * t358;
t534 = t391 * qJ(5) + t308;
t515 = -qJ(5) * t448 - t534;
t546 = qJD(5) * t460;
t273 = t515 - 0.2e1 * t546 - t600;
t565 = t507 * t273;
t417 = -qJDD(2) * pkin(2) - t591 * pkin(6) - t520;
t373 = t516 * pkin(3) - pkin(7) * t495 + t482 * t547 + t417;
t564 = t507 * t373;
t311 = t507 * t353 + t510 * t358;
t266 = -t510 * t308 + t507 * t311;
t561 = t508 * t266;
t560 = t508 * t417;
t559 = t508 * t480;
t481 = qJDD(3) - t487;
t558 = t508 * t481;
t557 = t510 * t273;
t556 = t510 * t373;
t553 = t511 * t266;
t552 = t511 * t417;
t473 = t493 - 0.2e1 * t533;
t551 = t511 * t473;
t550 = t511 * t481;
t500 = t508 ^ 2;
t548 = t500 + t501;
t545 = t500 * t591;
t539 = t509 * t420;
t538 = t512 * t420;
t537 = pkin(1) * t261 - pkin(2) * t394 + pkin(6) * t272;
t536 = pkin(1) * t280 - pkin(2) * t365 + pkin(6) * t306;
t535 = pkin(1) * t287 - pkin(2) * t596 + pkin(6) * t322;
t531 = -pkin(1) * t270 + pkin(5) * t262;
t530 = -pkin(1) * t305 + pkin(5) * t281;
t529 = -pkin(1) * t321 + pkin(5) * t288;
t528 = -pkin(3) * t394 + pkin(7) * t320;
t527 = -pkin(3) * t365 + pkin(7) * t348;
t526 = -pkin(3) * t596 + pkin(7) * t372;
t267 = t507 * t308 + t510 * t311;
t345 = t508 * t398 + t511 * t401;
t519 = t509 * t487;
t518 = t512 * t487;
t242 = -pkin(2) * t270 - pkin(3) * t318;
t344 = t511 * t398 - t508 * t401;
t390 = -t460 * qJD(4) - t522;
t440 = t499 * pkin(4) - t460 * qJ(5);
t514 = t390 * qJ(5) - 0.2e1 * qJD(5) * t458 - t499 * t440 + t311;
t303 = -t390 * pkin(4) - t456 * qJ(5) + t460 * t440 + qJDD(5) + t373;
t513 = qJD(3) ^ 2;
t486 = -t495 - t513;
t485 = t495 - t513;
t484 = -t513 - t545;
t483 = t513 - t545;
t478 = t495 - t545;
t477 = t495 + t545;
t474 = t548 * qJDD(2);
t471 = 0.2e1 * t532 + t542;
t470 = t511 * t480;
t469 = t548 * t543;
t454 = 0.2e1 * t546;
t446 = -t457 + t497;
t445 = t456 - t497;
t444 = t509 * qJDD(3) + t512 * t469;
t443 = t511 * t472 - t500 * t543;
t442 = -t512 * qJDD(3) + t509 * t469;
t441 = -t501 * t543 + t508 * t516;
t438 = -t508 * t484 - t550;
t437 = -t508 * t483 + t470;
t436 = t511 * t486 - t559;
t435 = t511 * t485 - t558;
t434 = t511 * t484 - t558;
t433 = t508 * t486 + t470;
t428 = t512 * t474 - t509 * t477;
t427 = t509 * t474 + t512 * t477;
t421 = -t508 * t471 + t551;
t419 = -t457 + t456;
t413 = t512 * t443 - t519;
t412 = t512 * t441 + t519;
t411 = t509 * t443 + t518;
t410 = t509 * t441 - t518;
t409 = t512 * t437 + t508 * t541;
t408 = t512 * t435 + t493 * t509;
t407 = t509 * t437 - t508 * t540;
t406 = t509 * t435 - t511 * t540;
t403 = t512 * t438 + t509 * t471;
t402 = t512 * t436 - t509 * t473;
t400 = t509 * t438 - t512 * t471;
t399 = t509 * t436 + t512 * t473;
t397 = (-t458 * t510 + t460 * t507) * t499;
t396 = (-t458 * t507 - t460 * t510) * t499;
t393 = t512 * t421 - t509 * t478;
t392 = t509 * t421 + t512 * t478;
t381 = -pkin(6) * t434 + t552;
t380 = -pkin(6) * t433 + t560;
t379 = t510 * t445 - t563;
t378 = -t507 * t446 - t554;
t377 = t507 * t445 + t555;
t376 = t510 * t446 - t562;
t375 = -t504 * t427 + t505 * t428;
t374 = t505 * t427 + t504 * t428;
t364 = pkin(1) * t502 + pkin(5) * t524;
t360 = -pkin(2) * t434 + t401;
t359 = -pkin(2) * t433 + t398;
t357 = t510 * t391 - t460 * t574;
t356 = t507 * t391 + t460 * t573;
t355 = -t507 * t390 + t458 * t573;
t354 = t510 * t390 + t458 * t574;
t342 = -t504 * t400 + t505 * t403;
t341 = -t504 * t399 + t505 * t402;
t340 = t505 * t400 + t504 * t403;
t339 = t505 * t399 + t504 * t402;
t338 = -t508 * t396 + t511 * t397;
t337 = t511 * t396 + t508 * t397;
t336 = -pkin(4) * t596 - qJ(5) * t415;
t335 = t512 * t338 + t509 * t498;
t334 = t509 * t338 - t512 * t498;
t333 = -pkin(5) * t427 + t512 * t344;
t332 = pkin(5) * t428 + t509 * t344;
t329 = -t508 * t377 + t511 * t379;
t328 = -t508 * t376 + t511 * t378;
t327 = t511 * t377 + t508 * t379;
t326 = t511 * t376 + t508 * t378;
t325 = t512 * t345 + t509 * t417;
t324 = t509 * t345 - t512 * t417;
t323 = t556 - t578;
t319 = -t510 * t365 - t507 * t596;
t317 = -t507 * t365 + t510 * t596;
t314 = t564 - t579;
t313 = -t508 * t356 + t511 * t357;
t312 = -t508 * t354 + t511 * t355;
t310 = t511 * t356 + t508 * t357;
t309 = t511 * t354 + t508 * t355;
t302 = -pkin(5) * t400 - t509 * t360 + t512 * t381;
t301 = -pkin(5) * t399 - t509 * t359 + t512 * t380;
t300 = t512 * t313 + t539;
t299 = t512 * t312 - t539;
t298 = t509 * t313 - t538;
t297 = t509 * t312 + t538;
t296 = -qJ(5) * t439 + t303;
t295 = t526 + t564;
t294 = t512 * t329 - t509 * t366;
t293 = t512 * t328 - t509 * t370;
t292 = t509 * t329 + t512 * t366;
t291 = t509 * t328 + t512 * t370;
t290 = -pkin(1) * t434 + pkin(5) * t403 + t512 * t360 + t509 * t381;
t289 = -pkin(1) * t433 + pkin(5) * t402 + t512 * t359 + t509 * t380;
t284 = t527 - t556;
t283 = -t504 * t334 + t505 * t335;
t282 = t505 * t334 + t504 * t335;
t277 = -t456 * pkin(4) + t514;
t276 = -t504 * t324 + t505 * t325;
t275 = t505 * t324 + t504 * t325;
t274 = -pkin(4) * t365 + qJ(5) * t404 - t303;
t271 = -t508 * t317 + t511 * t319;
t269 = t511 * t317 + t508 * t319;
t265 = t512 * t271 - t509 * t419;
t264 = t509 * t271 + t512 * t419;
t263 = -pkin(5) * t324 - (pkin(2) * t509 - pkin(6) * t512) * t344;
t258 = t454 + (-t370 + t448) * qJ(5) + t600 + t534;
t257 = t311 + t594;
t256 = t510 * t296 - t507 * t336 - t578;
t255 = -qJ(5) * t366 + (-t394 - t456) * pkin(4) + t514;
t254 = -pkin(3) * t373 + pkin(7) * t267;
t253 = -t504 * t298 + t505 * t300;
t252 = -t504 * t297 + t505 * t299;
t251 = t505 * t298 + t504 * t300;
t250 = t505 * t297 + t504 * t299;
t249 = t308 + t593;
t248 = qJ(5) * t554 - t507 * t274 - t579;
t247 = -t504 * t292 + t505 * t294;
t246 = -t504 * t291 + t505 * t293;
t245 = t505 * t292 + t504 * t294;
t244 = t505 * t291 + t504 * t293;
t243 = pkin(5) * t325 - (-pkin(2) * t512 - pkin(6) * t509 - pkin(1)) * t344;
t241 = -t504 * t287 + t505 * t288;
t239 = qJ(1) * t241;
t238 = -pkin(4) * t303 + qJ(5) * t277;
t237 = t507 * t296 + t510 * t336 + t526;
t236 = -t266 - t580;
t235 = qJ(5) * t562 + t510 * t274 + t527;
t234 = -t504 * t280 + t505 * t281;
t232 = qJ(1) * t234;
t231 = -t508 * t295 + t511 * t323 - t581;
t230 = (-t439 - t456) * pkin(4) + t514 + t594;
t229 = -pkin(4) * t370 + t242;
t228 = t267 + t528;
t227 = -t508 * t284 + t511 * t314 - t582;
t226 = t510 * t277 - t565;
t225 = t507 * t277 + t557;
t224 = t454 - t515 + t593 + 0.2e1 * t600;
t223 = t511 * t267 - t561;
t222 = t508 * t267 + t553;
t221 = -t504 * t264 + t505 * t265;
t220 = t505 * t264 + t504 * t265;
t219 = -t504 * t261 + t505 * t262;
t217 = qJ(1) * t219;
t216 = t512 * t223 + t509 * t373;
t215 = t509 * t223 - t512 * t373;
t214 = -t507 * t255 + t510 * t258 - t580;
t213 = t510 * t255 + t507 * t258 + t528;
t212 = -pkin(2) * t222 - pkin(3) * t266;
t211 = -t508 * t237 + t511 * t256 - t581;
t210 = -t508 * t235 + t511 * t248 - t582;
t209 = t512 * t231 - t509 * t257 - t584;
t208 = -t508 * t225 + t511 * t226;
t207 = t511 * t225 + t508 * t226;
t206 = t512 * t227 - t509 * t249 - t585;
t205 = t509 * t231 + t512 * t257 + t529;
t204 = -t508 * t228 + t511 * t236 - t583;
t203 = -pkin(7) * t225 - qJ(5) * t557 - t507 * t238;
t202 = t512 * t208 + t509 * t303;
t201 = t509 * t208 - t512 * t303;
t200 = t509 * t227 + t512 * t249 + t530;
t199 = -pkin(6) * t222 - pkin(7) * t553 - t508 * t254;
t198 = -t504 * t215 + t505 * t216;
t197 = t505 * t215 + t504 * t216;
t196 = -pkin(3) * t303 + pkin(7) * t226 - qJ(5) * t565 + t510 * t238;
t195 = t512 * t211 - t509 * t230 - t584;
t194 = t509 * t211 + t512 * t230 + t529;
t193 = t512 * t210 - t509 * t224 - t585;
t192 = -pkin(2) * t207 - pkin(3) * t225 - pkin(4) * t273;
t191 = t509 * t210 + t512 * t224 + t530;
t190 = t512 * t204 - t509 * t242 - t586;
t189 = -t508 * t213 + t511 * t214 - t583;
t188 = t509 * t204 + t512 * t242 + t531;
t187 = -t504 * t201 + t505 * t202;
t186 = t505 * t201 + t504 * t202;
t185 = t512 * t189 - t509 * t229 - t586;
t184 = -pkin(5) * t215 + t512 * t199 - t509 * t212;
t183 = t509 * t189 + t512 * t229 + t531;
t182 = -pkin(1) * t222 + pkin(5) * t216 + t509 * t199 + t512 * t212;
t181 = -pkin(6) * t207 - t508 * t196 + t511 * t203;
t180 = -pkin(5) * t201 + t512 * t181 - t509 * t192;
t179 = -pkin(1) * t207 + pkin(5) * t202 + t509 * t181 + t512 * t192;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t430, 0, 0, 0, 0, 0, 0, -t595, -t424, 0, t331, 0, 0, 0, 0, 0, 0, t341, t342, t375, t276, 0, 0, 0, 0, 0, 0, t234, t241, t219, t198, 0, 0, 0, 0, 0, 0, t234, t241, t219, t187; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t429, 0, 0, 0, 0, 0, 0, t424, -t595, 0, -t604, 0, 0, 0, 0, 0, 0, t339, t340, t374, t275, 0, 0, 0, 0, 0, 0, t233, t240, t218, t197, 0, 0, 0, 0, 0, 0, t233, t240, t218, t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t502, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t502, 0, 0, 0, 0, 0, 0, t433, t434, 0, -t344, 0, 0, 0, 0, 0, 0, t305, t321, t270, t222, 0, 0, 0, 0, 0, 0, t305, t321, t270, t207; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t568, -t566, -t429, -qJ(1) * t429, 0, 0, t424, 0, -t595, 0, t603, t601, t604, pkin(5) * t567 + qJ(1) * t604 - t504 * t364, -t504 * t411 + t505 * t413, -t504 * t392 + t505 * t393, -t504 * t407 + t505 * t409, -t504 * t410 + t505 * t412, -t504 * t406 + t505 * t408, -t504 * t442 + t505 * t444, -qJ(1) * t339 - t504 * t289 + t505 * t301, -qJ(1) * t340 - t504 * t290 + t505 * t302, -qJ(1) * t374 - t504 * t332 + t505 * t333, -qJ(1) * t275 - t504 * t243 + t505 * t263, t253, t221, t246, t252, t247, t283, -t504 * t200 + t505 * t206 - t576, -t504 * t205 + t505 * t209 - t575, -t504 * t188 + t505 * t190 - t577, -qJ(1) * t197 - t504 * t182 + t505 * t184, t253, t221, t246, t252, t247, t283, -t504 * t191 + t505 * t193 - t576, -t504 * t194 + t505 * t195 - t575, -t504 * t183 + t505 * t185 - t577, -qJ(1) * t186 - t504 * t179 + t505 * t180; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t566, -t568, t430, qJ(1) * t430, 0, 0, t595, 0, t424, 0, -t601, t603, t331, pkin(5) * t572 + qJ(1) * t331 + t505 * t364, t505 * t411 + t504 * t413, t505 * t392 + t504 * t393, t505 * t407 + t504 * t409, t505 * t410 + t504 * t412, t505 * t406 + t504 * t408, t505 * t442 + t504 * t444, qJ(1) * t341 + t505 * t289 + t504 * t301, qJ(1) * t342 + t505 * t290 + t504 * t302, qJ(1) * t375 + t505 * t332 + t504 * t333, qJ(1) * t276 + t505 * t243 + t504 * t263, t251, t220, t244, t250, t245, t282, t505 * t200 + t504 * t206 + t232, t505 * t205 + t504 * t209 + t239, t505 * t188 + t504 * t190 + t217, qJ(1) * t198 + t505 * t182 + t504 * t184, t251, t220, t244, t250, t245, t282, t505 * t191 + t504 * t193 + t232, t505 * t194 + t504 * t195 + t239, t505 * t183 + t504 * t185 + t217, qJ(1) * t187 + t505 * t179 + t504 * t180; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t525, t479, 0, 0, 0, 0, 0, 0, 0, qJDD(2), pkin(1) * t476 + t520, -pkin(1) * t475 + t549, 0, -pkin(1) * t384, (t472 + t532) * t508, t511 * t471 + t508 * t473, t511 * t483 + t559, t551, t508 * t485 + t550, 0, pkin(1) * t399 + pkin(2) * t473 + pkin(6) * t436 - t552, pkin(1) * t400 - pkin(2) * t471 + pkin(6) * t438 + t560, pkin(1) * t427 + pkin(2) * t477 + pkin(6) * t474 + t345, pkin(1) * t324 - pkin(2) * t417 + pkin(6) * t345, t310, t269, t326, t309, t327, t337, t511 * t284 + t508 * t314 + t536, t511 * t295 + t508 * t323 + t535, t511 * t228 + t508 * t236 + t537, pkin(1) * t215 - pkin(2) * t373 + pkin(6) * t223 - pkin(7) * t561 + t511 * t254, t310, t269, t326, t309, t327, t337, t511 * t235 + t508 * t248 + t536, t511 * t237 + t508 * t256 + t535, t511 * t213 + t508 * t214 + t537, pkin(1) * t201 - pkin(2) * t303 + pkin(6) * t208 + t511 * t196 + t508 * t203;];
tauB_reg = t1;
