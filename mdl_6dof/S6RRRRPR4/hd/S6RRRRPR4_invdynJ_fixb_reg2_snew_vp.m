% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRPR4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 20:14
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRPR4_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR4_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR4_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR4_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR4_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR4_invdynJ_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 20:11:38
% EndTime: 2019-05-07 20:12:20
% DurationCPUTime: 18.24s
% Computational Cost: add. (182175->677), mult. (368475->979), div. (0->0), fcn. (276621->12), ass. (0->438)
t414 = sin(qJ(3));
t418 = cos(qJ(3));
t419 = cos(qJ(2));
t415 = sin(qJ(2));
t481 = qJD(1) * t415;
t386 = -t418 * t419 * qJD(1) + t414 * t481;
t383 = qJD(4) + t386;
t528 = t383 ^ 2;
t487 = t414 * t419;
t388 = (t415 * t418 + t487) * qJD(1);
t413 = sin(qJ(4));
t417 = cos(qJ(4));
t477 = qJD(2) + qJD(3);
t372 = t388 * t413 - t417 * t477;
t373 = t417 * t388 + t413 * t477;
t410 = sin(pkin(11));
t411 = cos(pkin(11));
t340 = t411 * t372 + t373 * t410;
t530 = t340 ^ 2;
t284 = -t528 - t530;
t342 = -t372 * t410 + t373 * t411;
t303 = t342 * t340;
t403 = t415 * qJDD(1);
t478 = qJD(1) * qJD(2);
t462 = t419 * t478;
t393 = t403 + t462;
t404 = t419 * qJDD(1);
t463 = t415 * t478;
t394 = t404 - t463;
t454 = t414 * t393 - t418 * t394;
t351 = -t388 * qJD(3) - t454;
t350 = qJDD(4) - t351;
t534 = -t303 + t350;
t543 = t411 * t534;
t210 = t284 * t410 + t543;
t436 = t418 * t393 + t414 * t394;
t352 = -t386 * qJD(3) + t436;
t379 = t477 * t386;
t331 = t352 - t379;
t409 = t419 ^ 2;
t524 = sin(qJ(1));
t525 = cos(qJ(1));
t446 = g(1) * t524 - t525 * g(2);
t430 = qJDD(1) * pkin(1) + t446;
t527 = qJD(1) ^ 2;
t354 = (pkin(8) * t409 + pkin(7)) * t527 + t394 * pkin(2) - (qJD(2) * pkin(2) - pkin(8) * t481) * t481 + t430;
t452 = t477 * t388;
t249 = -t331 * pkin(9) + (-t351 + t452) * pkin(3) - t354;
t431 = g(1) * t525 + g(2) * t524;
t512 = qJDD(1) * pkin(7);
t425 = -t431 + t512;
t422 = -pkin(1) * t527 + t425;
t421 = t415 * t422;
t520 = t393 * pkin(8);
t439 = qJDD(2) * pkin(2) - t520;
t420 = qJD(2) ^ 2;
t517 = pkin(8) * qJD(2);
t519 = t415 * g(3);
t345 = t419 * t425 - t519 + t394 * pkin(8) - t420 * pkin(2) + (t415 * t517 + (-pkin(1) * t419 - pkin(2) * t409) * qJD(1)) * qJD(1);
t485 = t418 * t345;
t306 = t485 + t414 * (-t421 + t439) + (-g(3) + (pkin(2) * t481 + t517) * qJD(1)) * t487;
t363 = pkin(3) * t386 - pkin(9) * t388;
t474 = t477 ^ 2;
t475 = qJDD(2) + qJDD(3);
t264 = -pkin(3) * t474 + pkin(9) * t475 - t386 * t363 + t306;
t198 = -t417 * t249 + t264 * t413;
t429 = -t417 * t352 - t413 * t475;
t315 = -t372 * qJD(4) - t429;
t358 = t383 * t372;
t295 = t358 + t315;
t347 = t373 * t372;
t532 = -t347 + t350;
t162 = pkin(4) * t532 - qJ(5) * t295 - t198;
t199 = t413 * t249 + t417 * t264;
t355 = pkin(4) * t383 - qJ(5) * t373;
t432 = -t373 * qJD(4) - t413 * t352 + t417 * t475;
t529 = t372 ^ 2;
t172 = -pkin(4) * t529 + qJ(5) * t432 - t383 * t355 + t199;
t444 = -0.2e1 * qJD(5) * t342 + t411 * t162 - t172 * t410;
t545 = pkin(4) * t210 + t444;
t544 = t410 * t534;
t412 = sin(qJ(6));
t416 = cos(qJ(6));
t299 = t416 * t340 + t342 * t412;
t301 = -t340 * t412 + t342 * t416;
t244 = t301 * t299;
t349 = qJDD(6) + t350;
t535 = -t244 + t349;
t542 = t412 * t535;
t541 = t413 * t532;
t366 = t388 * t386;
t531 = -t366 + t475;
t540 = t414 * t531;
t539 = t416 * t535;
t538 = t417 * t532;
t537 = t418 * t531;
t253 = -t315 * t410 + t411 * t432;
t254 = t411 * t315 + t410 * t432;
t187 = -qJD(6) * t299 + t253 * t412 + t254 * t416;
t381 = qJD(6) + t383;
t280 = t381 * t299;
t536 = t187 - t280;
t140 = t413 * t198 + t417 * t199;
t323 = t383 * t340;
t533 = -t323 + t254;
t237 = t323 + t254;
t297 = t299 ^ 2;
t298 = t301 ^ 2;
t339 = t342 ^ 2;
t370 = t373 ^ 2;
t380 = t381 ^ 2;
t384 = t386 ^ 2;
t385 = t388 ^ 2;
t480 = qJD(5) * t340;
t335 = -0.2e1 * t480;
t483 = t410 * t162 + t411 * t172;
t109 = t335 + t483;
t73 = t109 * t410 + t411 * t444;
t526 = pkin(4) * t73;
t523 = pkin(3) * t414;
t500 = t342 * t383;
t435 = t253 + t500;
t179 = -t237 * t411 + t410 * t435;
t522 = pkin(4) * t179;
t518 = t419 * g(3);
t92 = pkin(5) * t534 - pkin(10) * t237 + t444;
t317 = pkin(5) * t383 - pkin(10) * t342;
t94 = -pkin(5) * t530 + pkin(10) * t253 - t317 * t383 + t109;
t53 = t412 * t94 - t416 * t92;
t54 = t412 * t92 + t416 * t94;
t30 = t412 * t54 - t416 * t53;
t516 = t30 * t410;
t515 = t30 * t411;
t514 = t413 * t73;
t513 = t417 * t73;
t305 = t345 * t414 - t418 * (-t415 * t425 - t518 + (t419 * t517 + (t419 * pkin(2) + pkin(1)) * t481) * qJD(1) + t439);
t263 = -t475 * pkin(3) - t474 * pkin(9) + t363 * t388 + t305;
t201 = -t432 * pkin(4) - t529 * qJ(5) + t355 * t373 + qJDD(5) + t263;
t137 = -t253 * pkin(5) - pkin(10) * t530 + t317 * t342 + t201;
t511 = t137 * t412;
t510 = t137 * t416;
t509 = t201 * t410;
t508 = t201 * t411;
t215 = t244 + t349;
t507 = t215 * t412;
t506 = t215 * t416;
t245 = -t305 * t418 + t306 * t414;
t505 = t245 * t415;
t269 = t303 + t350;
t504 = t269 * t410;
t503 = t269 * t411;
t308 = t347 + t350;
t502 = t308 * t413;
t501 = t308 * t417;
t499 = t350 * t414;
t498 = t354 * t414;
t497 = t354 * t418;
t360 = t366 + t475;
t496 = t360 * t414;
t495 = t360 * t418;
t494 = t381 * t412;
t493 = t381 * t416;
t492 = t383 * t373;
t491 = t383 * t410;
t490 = t383 * t411;
t489 = t383 * t413;
t488 = t383 * t417;
t259 = t413 * t263;
t399 = t419 * t527 * t415;
t396 = qJDD(2) + t399;
t486 = t415 * t396;
t260 = t417 * t263;
t484 = t419 * (qJDD(2) - t399);
t482 = -pkin(3) * t263 + pkin(9) * t140;
t476 = 0.2e1 * qJD(3) + qJD(2);
t473 = t414 * t244;
t472 = t418 * t244;
t471 = t414 * t303;
t470 = t418 * t303;
t469 = t414 * t347;
t468 = t418 * t347;
t338 = -t370 - t528;
t267 = -t338 * t413 - t501;
t296 = (qJD(4) + t383) * t372 + t429;
t467 = pkin(3) * t296 + pkin(9) * t267 + t259;
t325 = -t528 - t529;
t258 = t325 * t417 - t541;
t292 = t432 - t492;
t466 = pkin(3) * t292 + pkin(9) * t258 - t260;
t465 = -pkin(3) * t418 - pkin(2);
t31 = t412 * t53 + t416 * t54;
t17 = t31 * t410 + t515;
t18 = t31 * t411 - t516;
t12 = -t17 * t413 + t18 * t417;
t27 = -pkin(5) * t137 + pkin(10) * t31;
t5 = -pkin(4) * t137 - pkin(10) * t516 + qJ(5) * t18 + t27 * t411;
t9 = -pkin(10) * t515 - qJ(5) * t17 - t27 * t410;
t461 = -pkin(3) * t137 + pkin(9) * t12 + t413 * t9 + t417 * t5;
t195 = -t297 - t298;
t155 = t187 + t280;
t456 = -t416 * t253 + t254 * t412;
t428 = (-qJD(6) + t381) * t301 - t456;
t103 = t155 * t412 + t416 * t428;
t23 = -pkin(5) * t195 + pkin(10) * t103 + t31;
t101 = -t155 * t416 + t412 * t428;
t24 = -pkin(10) * t101 - t30;
t70 = -t101 * t410 + t103 * t411;
t14 = -pkin(4) * t195 + qJ(5) * t70 + t23 * t411 + t24 * t410;
t68 = t101 * t411 + t103 * t410;
t16 = -qJ(5) * t68 - t23 * t410 + t24 * t411;
t40 = -t413 * t68 + t417 * t70;
t460 = -pkin(3) * t195 + pkin(9) * t40 + t417 * t14 + t413 * t16;
t151 = (qJD(6) + t381) * t301 + t456;
t219 = -t380 - t297;
t165 = t219 * t412 + t539;
t166 = t219 * t416 - t542;
t113 = -t165 * t410 + t166 * t411;
t82 = -pkin(5) * t151 + pkin(10) * t166 - t510;
t95 = -pkin(10) * t165 + t511;
t42 = -pkin(4) * t151 + qJ(5) * t113 + t410 * t95 + t411 * t82;
t112 = t165 * t411 + t166 * t410;
t49 = -qJ(5) * t112 - t410 * t82 + t411 * t95;
t77 = -t112 * t413 + t113 * t417;
t459 = -pkin(3) * t151 + pkin(9) * t77 + t413 * t49 + t417 * t42;
t271 = -t298 - t380;
t188 = t271 * t416 - t507;
t106 = -pkin(10) * t188 + t510;
t189 = -t271 * t412 - t506;
t121 = -t188 * t410 + t189 * t411;
t86 = -pkin(5) * t536 + pkin(10) * t189 + t511;
t47 = -pkin(4) * t536 + qJ(5) * t121 + t106 * t410 + t411 * t86;
t120 = t188 * t411 + t189 * t410;
t51 = -qJ(5) * t120 + t106 * t411 - t410 * t86;
t85 = -t120 * t413 + t121 * t417;
t458 = -pkin(3) * t536 + pkin(9) * t85 + t413 * t51 + t417 * t47;
t74 = t411 * t109 - t410 * t444;
t246 = t305 * t414 + t418 * t306;
t375 = t421 + t518;
t376 = t419 * t422 - t519;
t455 = t415 * t375 + t419 * t376;
t181 = t237 * t410 + t411 * t435;
t118 = -t179 * t413 + t181 * t417;
t255 = -t339 - t530;
t56 = -pkin(4) * t255 + qJ(5) * t181 + t74;
t60 = -qJ(5) * t179 - t73;
t453 = -pkin(3) * t255 + pkin(9) * t118 + t413 * t60 + t417 * t56;
t211 = t284 * t411 - t544;
t233 = -t253 + t500;
t123 = -pkin(4) * t233 + qJ(5) * t211 - t508;
t142 = -qJ(5) * t210 + t509;
t159 = -t210 * t413 + t211 * t417;
t451 = -pkin(3) * t233 + pkin(9) * t159 + t417 * t123 + t413 * t142;
t310 = -t339 - t528;
t221 = -t310 * t410 - t503;
t131 = -pkin(4) * t533 + qJ(5) * t221 + t509;
t220 = t310 * t411 - t504;
t150 = -qJ(5) * t220 + t508;
t170 = -t220 * t413 + t221 * t417;
t450 = -pkin(3) * t533 + pkin(9) * t170 + t417 * t131 + t413 * t150;
t426 = t432 + t492;
t226 = t295 * t413 + t417 * t426;
t318 = t370 + t529;
t449 = pkin(3) * t318 + pkin(9) * t226 + t140;
t448 = pkin(4) * t17 + pkin(5) * t30;
t447 = pkin(4) * t220 - t483;
t445 = pkin(4) * t68 + pkin(5) * t101;
t443 = t414 * t379;
t442 = t414 * t452;
t441 = t418 * t379;
t440 = t418 * t452;
t437 = -t198 * t417 + t199 * t413;
t45 = t417 * t74 - t514;
t62 = -pkin(4) * t201 + qJ(5) * t74;
t434 = -pkin(3) * t201 + pkin(9) * t45 - qJ(5) * t514 + t417 * t62;
t433 = qJD(2) * t388 - t454;
t427 = pkin(4) * t112 + pkin(5) * t165 - t53;
t424 = pkin(4) * t120 + pkin(5) * t188 - t54;
t408 = t415 ^ 2;
t406 = t409 * t527;
t405 = t408 * t527;
t395 = t404 - 0.2e1 * t463;
t392 = t403 + 0.2e1 * t462;
t389 = pkin(7) * t527 + t430;
t378 = t474 - t385;
t377 = t384 - t474;
t374 = -t385 - t474;
t365 = t385 - t384;
t359 = -t474 - t384;
t357 = -t370 + t528;
t356 = -t528 + t529;
t353 = -t384 - t385;
t346 = t418 * t350;
t344 = t370 - t529;
t333 = -t374 * t414 - t495;
t332 = t374 * t418 - t496;
t330 = t352 + t379;
t329 = -t386 * t476 + t436;
t326 = t388 * t476 + t454;
t322 = t359 * t418 - t540;
t321 = t359 * t414 + t537;
t320 = -t339 + t528;
t319 = -t528 + t530;
t312 = (-t372 * t417 + t373 * t413) * t383;
t311 = (-t372 * t413 - t373 * t417) * t383;
t302 = t339 - t530;
t294 = -t358 + t315;
t288 = t315 * t417 - t373 * t489;
t287 = t315 * t413 + t373 * t488;
t286 = t372 * t488 - t413 * t432;
t285 = t372 * t489 + t417 * t432;
t283 = t330 * t414 + t418 * t433;
t282 = -t330 * t418 + t414 * t433;
t279 = -t298 + t380;
t278 = t297 - t380;
t277 = t356 * t417 - t502;
t276 = -t357 * t413 + t538;
t275 = t356 * t413 + t501;
t274 = t357 * t417 + t541;
t273 = (-t340 * t411 + t342 * t410) * t383;
t272 = (-t340 * t410 - t342 * t411) * t383;
t266 = t338 * t417 - t502;
t257 = t325 * t413 + t538;
t243 = t298 - t297;
t242 = t319 * t411 - t504;
t241 = -t320 * t410 + t543;
t240 = t319 * t410 + t503;
t239 = t320 * t411 + t544;
t230 = t254 * t411 - t342 * t491;
t229 = t254 * t410 + t342 * t490;
t228 = -t253 * t410 + t340 * t490;
t227 = t253 * t411 + t340 * t491;
t225 = t292 * t417 - t294 * t413;
t224 = -t295 * t417 + t413 * t426;
t223 = t292 * t413 + t294 * t417;
t218 = (-t299 * t416 + t301 * t412) * t381;
t217 = (-t299 * t412 - t301 * t416) * t381;
t213 = t267 * t418 - t296 * t414;
t212 = t267 * t414 + t296 * t418;
t209 = t258 * t418 - t292 * t414;
t208 = t258 * t414 + t292 * t418;
t207 = -t272 * t413 + t273 * t417;
t206 = t272 * t417 + t273 * t413;
t205 = -pkin(9) * t266 + t260;
t204 = t226 * t418 - t318 * t414;
t203 = t226 * t414 + t318 * t418;
t202 = -pkin(9) * t257 + t259;
t193 = t278 * t416 - t507;
t192 = -t279 * t412 + t539;
t191 = t278 * t412 + t506;
t190 = t279 * t416 + t542;
t186 = -qJD(6) * t301 - t456;
t185 = -t240 * t413 + t242 * t417;
t184 = -t239 * t413 + t241 * t417;
t183 = t240 * t417 + t242 * t413;
t182 = t239 * t417 + t241 * t413;
t180 = -t233 * t411 - t410 * t533;
t178 = -t233 * t410 + t411 * t533;
t177 = -t229 * t413 + t230 * t417;
t176 = -t227 * t413 + t228 * t417;
t175 = t229 * t417 + t230 * t413;
t174 = t227 * t417 + t228 * t413;
t173 = -pkin(3) * t266 + t199;
t171 = -pkin(3) * t257 + t198;
t169 = t220 * t417 + t221 * t413;
t164 = -t217 * t410 + t218 * t411;
t163 = t217 * t411 + t218 * t410;
t158 = t210 * t417 + t211 * t413;
t146 = t187 * t416 - t301 * t494;
t145 = t187 * t412 + t301 * t493;
t144 = -t186 * t412 + t299 * t493;
t143 = t186 * t416 + t299 * t494;
t135 = t170 * t418 + t414 * t533;
t134 = t170 * t414 - t418 * t533;
t133 = t159 * t418 + t233 * t414;
t132 = t159 * t414 - t233 * t418;
t129 = -t191 * t410 + t193 * t411;
t128 = -t190 * t410 + t192 * t411;
t127 = t191 * t411 + t193 * t410;
t126 = t190 * t411 + t192 * t410;
t124 = t140 * t414 - t263 * t418;
t119 = -pkin(9) * t224 - t437;
t117 = -t178 * t413 + t180 * t417;
t116 = t179 * t417 + t181 * t413;
t115 = t178 * t417 + t180 * t413;
t111 = -t163 * t413 + t164 * t417;
t110 = t163 * t417 + t164 * t413;
t105 = t118 * t418 + t255 * t414;
t104 = t118 * t414 - t255 * t418;
t102 = -t151 * t416 - t412 * t536;
t100 = -t151 * t412 + t416 * t536;
t99 = -t145 * t410 + t146 * t411;
t98 = -t143 * t410 + t144 * t411;
t97 = t145 * t411 + t146 * t410;
t96 = t143 * t411 + t144 * t410;
t93 = -pkin(3) * t116 - t522;
t90 = -t127 * t413 + t129 * t417;
t89 = -t126 * t413 + t128 * t417;
t88 = t127 * t417 + t129 * t413;
t87 = t126 * t417 + t128 * t413;
t84 = t120 * t417 + t121 * t413;
t81 = -pkin(3) * t169 + t335 - t447;
t80 = -pkin(9) * t169 - t131 * t413 + t150 * t417;
t79 = -pkin(3) * t158 - t545;
t78 = -pkin(9) * t158 - t123 * t413 + t142 * t417;
t76 = t112 * t417 + t113 * t413;
t72 = t414 * t536 + t418 * t85;
t71 = t414 * t85 - t418 * t536;
t69 = -t100 * t410 + t102 * t411;
t67 = t100 * t411 + t102 * t410;
t66 = -t413 * t97 + t417 * t99;
t65 = -t413 * t96 + t417 * t98;
t64 = t413 * t99 + t417 * t97;
t63 = t413 * t98 + t417 * t96;
t58 = t151 * t414 + t418 * t77;
t57 = -t151 * t418 + t414 * t77;
t44 = t413 * t74 + t513;
t39 = -t413 * t67 + t417 * t69;
t38 = t413 * t70 + t417 * t68;
t37 = t413 * t69 + t417 * t67;
t35 = t201 * t414 + t418 * t45;
t34 = -t201 * t418 + t414 * t45;
t33 = t195 * t414 + t40 * t418;
t32 = -t195 * t418 + t40 * t414;
t29 = -pkin(3) * t84 - t424;
t28 = -pkin(9) * t116 - t413 * t56 + t417 * t60;
t26 = -pkin(3) * t76 - t427;
t25 = -pkin(3) * t44 - t526;
t22 = -pkin(3) * t38 - t445;
t21 = -pkin(9) * t44 - qJ(5) * t513 - t413 * t62;
t20 = -pkin(9) * t84 - t413 * t47 + t417 * t51;
t19 = -pkin(9) * t76 - t413 * t42 + t417 * t49;
t11 = t17 * t417 + t18 * t413;
t7 = t12 * t418 + t137 * t414;
t6 = t12 * t414 - t137 * t418;
t3 = -pkin(9) * t38 - t14 * t413 + t16 * t417;
t2 = -pkin(3) * t11 - t448;
t1 = -pkin(9) * t11 - t413 * t5 + t417 * t9;
t4 = [0, 0, 0, 0, 0, qJDD(1), t446, t431, 0, 0, (t393 + t462) * t415, t392 * t419 + t395 * t415, t486 + t419 * (-t405 + t420), (t394 - t463) * t419, t415 * (t406 - t420) + t484, 0, t419 * t389 + pkin(1) * t395 + pkin(7) * (t419 * (-t406 - t420) - t486), -t415 * t389 - pkin(1) * t392 + pkin(7) * (-t484 - t415 * (-t405 - t420)), pkin(1) * (t405 + t406) + (t408 + t409) * t512 + t455, pkin(1) * t389 + pkin(7) * t455, t415 * (t418 * t352 - t442) + t419 * (t414 * t352 + t440), t415 * (-t326 * t418 - t331 * t414) + t419 * (-t326 * t414 + t331 * t418), t415 * (-t378 * t414 + t537) + t419 * (t378 * t418 + t540), t415 * (-t414 * t351 + t441) + t419 * (t418 * t351 + t443), t415 * (t377 * t418 - t496) + t419 * (t377 * t414 + t495), t415 * (-t441 + t442) + t419 * (-t443 - t440), t415 * (-pkin(8) * t321 - t498) + t419 * (-pkin(2) * t326 + pkin(8) * t322 + t497) - pkin(1) * t326 + pkin(7) * (-t321 * t415 + t322 * t419), t415 * (-pkin(8) * t332 - t497) + t419 * (-pkin(2) * t329 + pkin(8) * t333 - t498) - pkin(1) * t329 + pkin(7) * (-t332 * t415 + t333 * t419), t415 * (-pkin(8) * t282 - t245) + t419 * (-pkin(2) * t353 + pkin(8) * t283 + t246) - pkin(1) * t353 + pkin(7) * (-t282 * t415 + t283 * t419), -pkin(8) * t505 + t419 * (pkin(2) * t354 + pkin(8) * t246) + pkin(1) * t354 + pkin(7) * (t246 * t419 - t505), t415 * (t288 * t418 + t469) + t419 * (t288 * t414 - t468), t415 * (t225 * t418 + t344 * t414) + t419 * (t225 * t414 - t344 * t418), t415 * (t276 * t418 + t295 * t414) + t419 * (t276 * t414 - t295 * t418), t415 * (t286 * t418 - t469) + t419 * (t286 * t414 + t468), t415 * (t277 * t418 + t414 * t426) + t419 * (t277 * t414 - t418 * t426), t415 * (t312 * t418 + t499) + t419 * (t312 * t414 - t346), t415 * (-pkin(8) * t208 - t171 * t414 + t202 * t418) + t419 * (-pkin(2) * t257 + pkin(8) * t209 + t171 * t418 + t202 * t414) - pkin(1) * t257 + pkin(7) * (-t208 * t415 + t209 * t419), t415 * (-pkin(8) * t212 - t173 * t414 + t205 * t418) + t419 * (-pkin(2) * t266 + pkin(8) * t213 + t173 * t418 + t205 * t414) - pkin(1) * t266 + pkin(7) * (-t212 * t415 + t213 * t419), t415 * (-pkin(8) * t203 + t119 * t418) + t419 * (pkin(8) * t204 + t119 * t414) + pkin(7) * (-t203 * t415 + t204 * t419) + (t415 * t523 + t419 * t465 - pkin(1)) * t224, (t415 * (-pkin(9) * t418 + t523) + t419 * (-pkin(9) * t414 + t465) - pkin(1)) * t437 + (pkin(7) + pkin(8)) * (-t124 * t415 + (t140 * t418 + t263 * t414) * t419), t415 * (t177 * t418 + t471) + t419 * (t177 * t414 - t470), t415 * (t117 * t418 + t302 * t414) + t419 * (t117 * t414 - t302 * t418), t415 * (t184 * t418 + t237 * t414) + t419 * (t184 * t414 - t237 * t418), t415 * (t176 * t418 - t471) + t419 * (t176 * t414 + t470), t415 * (t185 * t418 + t414 * t435) + t419 * (t185 * t414 - t418 * t435), t415 * (t207 * t418 + t499) + t419 * (t207 * t414 - t346), t415 * (-pkin(8) * t132 - t414 * t79 + t418 * t78) + t419 * (-pkin(2) * t158 + pkin(8) * t133 + t414 * t78 + t418 * t79) - pkin(1) * t158 + pkin(7) * (-t132 * t415 + t133 * t419), t415 * (-pkin(8) * t134 - t414 * t81 + t418 * t80) + t419 * (-pkin(2) * t169 + pkin(8) * t135 + t414 * t80 + t418 * t81) - pkin(1) * t169 + pkin(7) * (-t134 * t415 + t135 * t419), t415 * (-pkin(8) * t104 + t28 * t418 - t414 * t93) + t419 * (-pkin(2) * t116 + pkin(8) * t105 + t28 * t414 + t418 * t93) - pkin(1) * t116 + pkin(7) * (-t104 * t415 + t105 * t419), t415 * (-pkin(8) * t34 + t21 * t418 - t25 * t414) + t419 * (-pkin(2) * t44 + pkin(8) * t35 + t21 * t414 + t25 * t418) - pkin(1) * t44 + pkin(7) * (-t34 * t415 + t35 * t419), t415 * (t418 * t66 + t473) + t419 * (t414 * t66 - t472), t415 * (t243 * t414 + t39 * t418) + t419 * (-t243 * t418 + t39 * t414), t415 * (t155 * t414 + t418 * t89) + t419 * (-t155 * t418 + t414 * t89), t415 * (t418 * t65 - t473) + t419 * (t414 * t65 + t472), t415 * (t414 * t428 + t418 * t90) + t419 * (t414 * t90 - t418 * t428), t415 * (t111 * t418 + t349 * t414) + t419 * (t111 * t414 - t349 * t418), t415 * (-pkin(8) * t57 + t19 * t418 - t26 * t414) + t419 * (-pkin(2) * t76 + pkin(8) * t58 + t19 * t414 + t26 * t418) - pkin(1) * t76 + pkin(7) * (-t415 * t57 + t419 * t58), t415 * (-pkin(8) * t71 + t20 * t418 - t29 * t414) + t419 * (-pkin(2) * t84 + pkin(8) * t72 + t20 * t414 + t29 * t418) - pkin(1) * t84 + pkin(7) * (-t415 * t71 + t419 * t72), t415 * (-pkin(8) * t32 - t22 * t414 + t3 * t418) + t419 * (-pkin(2) * t38 + pkin(8) * t33 + t22 * t418 + t3 * t414) - pkin(1) * t38 + pkin(7) * (-t32 * t415 + t33 * t419), t415 * (-pkin(8) * t6 + t1 * t418 - t2 * t414) + t419 * (-pkin(2) * t11 + pkin(8) * t7 + t1 * t414 + t2 * t418) - pkin(1) * t11 + pkin(7) * (-t415 * t6 + t419 * t7); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t399, t405 - t406, t403, t399, t404, qJDD(2), -t375, -t376, 0, 0, t366, t365, t330, -t366, t433, t475, pkin(2) * t321 - t305, -t485 - t414 * (pkin(8) * t462 - t375 - t520) + (-t396 * t414 + t332) * pkin(2), pkin(2) * t282, pkin(2) * t245, t287, t223, t274, t285, t275, t311, pkin(2) * t208 + t466, pkin(2) * t212 + t467, pkin(2) * t203 + t449, pkin(2) * t124 + t482, t175, t115, t182, t174, t183, t206, pkin(2) * t132 + t451, pkin(2) * t134 + t450, pkin(2) * t104 + t453, pkin(2) * t34 + t434, t64, t37, t87, t63, t88, t110, pkin(2) * t57 + t459, pkin(2) * t71 + t458, pkin(2) * t32 + t460, pkin(2) * t6 + t461; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t366, t365, t330, -t366, t433, t475, -t305, -t306, 0, 0, t287, t223, t274, t285, t275, t311, t466, t467, t449, t482, t175, t115, t182, t174, t183, t206, t451, t450, t453, t434, t64, t37, t87, t63, t88, t110, t459, t458, t460, t461; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t347, t344, t295, -t347, t426, t350, -t198, -t199, 0, 0, t303, t302, t237, -t303, t435, t350, t545, t447 + 0.2e1 * t480, t522, t526, t244, t243, t155, -t244, t428, t349, t427, t424, t445, t448; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, t533, t255, t201, 0, 0, 0, 0, 0, 0, t151, t536, t195, t137; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t244, t243, t155, -t244, t428, t349, -t53, -t54, 0, 0;];
tauJ_reg  = t4;
