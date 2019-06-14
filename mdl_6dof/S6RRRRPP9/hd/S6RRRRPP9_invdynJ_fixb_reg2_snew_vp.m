% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRPP9
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 19:24
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRPP9_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP9_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP9_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP9_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP9_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP9_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 19:20:46
% EndTime: 2019-05-07 19:21:28
% DurationCPUTime: 17.83s
% Computational Cost: add. (46654->587), mult. (99632->738), div. (0->0), fcn. (78743->10), ass. (0->378)
t338 = sin(qJ(2));
t341 = cos(qJ(2));
t336 = sin(qJ(4));
t335 = cos(pkin(6));
t425 = qJD(1) * t335;
t329 = qJD(2) + t425;
t337 = sin(qJ(3));
t340 = cos(qJ(3));
t334 = sin(pkin(6));
t424 = qJD(1) * t338;
t403 = t334 * t424;
t307 = t329 * t337 + t340 * t403;
t423 = qJD(1) * t341;
t328 = t334 * t423;
t414 = qJDD(1) * t334;
t313 = qJD(2) * t328 + t338 * t414;
t393 = qJDD(1) * t335 + qJDD(2);
t396 = t337 * t313 - t340 * t393;
t266 = -t307 * qJD(3) - t396;
t265 = qJDD(4) - t266;
t339 = cos(qJ(4));
t415 = t328 - qJD(3);
t282 = t336 * t307 + t339 * t415;
t284 = t339 * t307 - t336 * t415;
t438 = t284 * t282;
t191 = t438 - t265;
t449 = t191 * t339;
t305 = -t340 * t329 + t337 * t403;
t301 = qJD(4) + t305;
t299 = t301 ^ 2;
t484 = t282 ^ 2;
t506 = -t299 - t484;
t529 = t506 * t336 - t449;
t364 = -t340 * t313 - t337 * t393;
t267 = -t305 * qJD(3) - t364;
t413 = qJDD(1) * t341;
t368 = (qJD(2) * t424 - t413) * t334;
t357 = qJDD(3) + t368;
t206 = qJD(4) * t284 + t267 * t336 - t339 * t357;
t437 = t301 * t284;
t507 = t206 + t437;
t450 = t191 * t336;
t530 = t506 * t339 + t450;
t541 = t337 * t507 + t340 * t530;
t559 = pkin(1) * (t338 * t541 - t341 * t529);
t251 = t484 - t299;
t503 = t438 + t265;
t520 = t339 * t503;
t141 = t251 * t336 + t520;
t518 = t503 * t336;
t147 = t251 * t339 - t518;
t508 = t206 - t437;
t96 = t147 * t337 + t508 * t340;
t608 = (t338 * (t147 * t340 - t508 * t337) - t341 * t141) * t334 + t335 * t96;
t543 = t337 * t530 - t340 * t507;
t557 = pkin(8) * (t338 * t529 + t341 * t541) - pkin(1) * t543;
t483 = t284 ^ 2;
t502 = -t483 - t299;
t547 = -t339 * t502 + t518;
t348 = t339 * t267 + t336 * t357;
t180 = t282 * (qJD(4) + t301) - t348;
t546 = t336 * t502 + t520;
t561 = t180 * t337 + t340 * t546;
t582 = pkin(1) * (t338 * t561 - t341 * t547);
t578 = pkin(2) * t543;
t573 = pkin(9) * t543;
t562 = -t180 * t340 + t337 * t546;
t581 = pkin(8) * (t338 * t547 + t341 * t561) - pkin(1) * t562;
t565 = -pkin(2) * t529 + pkin(9) * t541;
t177 = (-qJD(4) + t301) * t282 + t348;
t252 = -t483 + t299;
t548 = t252 * t339 - t450;
t567 = t341 * t548;
t144 = t252 * t336 + t449;
t590 = t144 * t340;
t591 = t144 * t337;
t93 = t177 * t340 + t591;
t602 = t334 * (t338 * (-t177 * t337 + t590) + t567) + t335 * t93;
t594 = pkin(2) * t562;
t593 = pkin(9) * t562;
t586 = -pkin(2) * t547 + pkin(9) * t561;
t517 = t507 * t339;
t107 = t180 * t336 - t517;
t235 = t484 - t483;
t533 = t235 * t337;
t532 = t235 * t340;
t76 = t107 * t337 + t532;
t465 = t507 * t336;
t97 = t180 * t339 + t465;
t596 = t334 * (t338 * (t107 * t340 - t533) + t341 * t97) + t335 * t76;
t555 = pkin(3) * t529;
t553 = pkin(10) * t529;
t592 = pkin(10) * t530;
t168 = t339 * t508;
t257 = t282 * t301;
t345 = -t282 * qJD(4) + t348;
t176 = t257 + t345;
t531 = t176 * t336 - t168;
t210 = t484 + t483;
t534 = t210 * t340;
t542 = t337 * t531 + t534;
t579 = pkin(2) * t542;
t576 = pkin(3) * t547;
t535 = t210 * t337;
t540 = t340 * t531 - t535;
t575 = pkin(9) * t540;
t574 = pkin(9) * t542;
t572 = pkin(10) * t546;
t571 = pkin(10) * t547;
t421 = qJD(5) * t301;
t566 = -0.2e1 * t421 - t576;
t564 = pkin(3) * t180 - t572;
t463 = t508 * t336;
t528 = -t176 * t339 - t463;
t560 = pkin(1) * (t338 * t540 - t341 * t528);
t558 = pkin(8) * (t338 * t528 + t341 * t540) - pkin(1) * t542;
t554 = pkin(10) * t528;
t545 = -pkin(3) * t507 + t592;
t538 = pkin(3) * t210;
t544 = pkin(10) * t531 + t538;
t537 = (t507 + t437) * pkin(4);
t536 = qJ(5) * t210;
t526 = qJ(5) * t506;
t410 = t340 * t438;
t436 = t301 * t336;
t247 = t284 * t436;
t427 = t339 * t345 - t247;
t489 = t337 * t427 - t410;
t525 = t335 * t489;
t435 = t301 * t339;
t408 = t282 * t435;
t375 = t206 * t336 + t408;
t490 = t337 * t375 + t410;
t524 = t335 * t490;
t516 = t257 - t345;
t387 = t247 - t408;
t439 = t265 * t337;
t261 = t340 * t265;
t493 = t337 * t387 - t261;
t509 = (t282 * t336 + t284 * t339) * t301;
t514 = t335 * t493 + (t341 * t509 + t338 * (t340 * t387 + t439)) * t334;
t412 = t415 ^ 2;
t434 = t307 * t305;
t353 = t357 - t434;
t512 = t337 * t353;
t510 = t340 * t353;
t291 = t415 * t305;
t228 = t291 + t267;
t248 = t284 * t435;
t505 = t336 * t345 + t248;
t478 = sin(qJ(1));
t479 = cos(qJ(1));
t373 = g(1) * t479 + g(2) * t478;
t482 = qJD(1) ^ 2;
t309 = -pkin(1) * t482 + pkin(8) * t414 - t373;
t372 = g(1) * t478 - g(2) * t479;
t418 = t334 * t482;
t352 = qJDD(1) * pkin(1) + pkin(8) * t418 + t372;
t350 = t335 * t352;
t397 = t338 * t309 - t341 * t350;
t432 = t334 * t341;
t269 = g(3) * t432 + t397;
t433 = t334 * t338;
t346 = -g(3) * t433 + t338 * t350;
t270 = t341 * t309 + t346;
t504 = t338 * t269 + t341 * t270;
t295 = 0.2e1 * t421;
t234 = pkin(4) * t282 - qJ(5) * t284;
t477 = pkin(2) * t341;
t391 = -pkin(9) * t338 - t477;
t426 = qJD(1) * t334;
t312 = t391 * t426;
t327 = t329 ^ 2;
t221 = t393 * pkin(9) - t327 * pkin(2) + (t312 * t426 + t309) * t341 + t346;
t471 = t335 * g(3);
t342 = -t313 * pkin(9) - t471 + ((-pkin(1) - t477) * qJDD(1) + (-pkin(8) * t426 - t341 * t329 * pkin(9) + (qJD(2) + t329) * t338 * pkin(2)) * qJD(1) - t372) * t334;
t150 = t340 * t221 + t337 * t342;
t271 = pkin(3) * t305 - pkin(10) * t307;
t114 = -pkin(3) * t412 + pkin(10) * t357 - t305 * t271 + t150;
t220 = -t393 * pkin(2) - t327 * pkin(9) + (g(3) * t341 + t312 * t424) * t334 + t397;
t395 = t415 * t307;
t117 = -t228 * pkin(10) + (-t266 - t395) * pkin(3) + t220;
t63 = t339 * t114 + t336 * t117;
t380 = t299 * pkin(4) - t265 * qJ(5) + t282 * t234 - t63;
t56 = t295 - t380;
t62 = t336 * t114 - t339 * t117;
t57 = -t265 * pkin(4) - t299 * qJ(5) + t284 * t234 + qJDD(5) + t62;
t32 = t336 * t57 + t339 * t56;
t400 = qJ(5) * t336 + pkin(3);
t473 = pkin(4) * t339;
t149 = t337 * t221 - t340 * t342;
t113 = -t357 * pkin(3) - t412 * pkin(10) + t307 * t271 + t149;
t356 = t206 * pkin(4) + qJ(5) * t516 + t113;
t475 = pkin(4) * t301;
t398 = -0.2e1 * qJD(5) + t475;
t59 = t284 * t398 + t356;
t500 = -(t400 + t473) * t59 + pkin(10) * t32;
t354 = t345 * pkin(5) + qJ(6) * t191 + t57;
t481 = -2 * qJD(6);
t46 = (pkin(5) * t282 + t481) * t301 + t354;
t246 = pkin(5) * t284 - qJ(6) * t301;
t362 = -t206 * pkin(5) - qJ(6) * t484 + t301 * t246 + qJDD(6) - t380;
t47 = t295 + t362;
t470 = pkin(4) + qJ(6);
t499 = qJ(5) * t47 - t46 * t470;
t422 = qJD(5) * t284;
t275 = 0.2e1 * t422;
t498 = -qJ(5) * t180 + t275;
t169 = qJ(5) * t508;
t497 = -t176 * t470 - t169;
t53 = t356 - 0.2e1 * t422 + t537;
t496 = t339 * t53 + t400 * t507 - t592;
t185 = qJ(5) * t503;
t495 = -t470 * t502 + t185;
t494 = t191 * t470 - t526;
t411 = t337 * t438;
t487 = t340 * t427 + t411;
t492 = -t432 * t505 + t433 * t487 + t525;
t409 = t282 * t436;
t161 = -t206 * t339 + t409;
t488 = t340 * t375 - t411;
t491 = -t161 * t432 + t433 * t488 + t524;
t52 = -pkin(4) * t437 - t356 + t498;
t486 = t572 + t336 * t52 - t180 * (pkin(3) + t473);
t303 = t305 ^ 2;
t304 = t307 ^ 2;
t331 = t334 ^ 2;
t476 = pkin(3) * t337;
t474 = pkin(4) * t336;
t472 = pkin(8) * t334;
t467 = t113 * t336;
t466 = t113 * t339;
t446 = t220 * t337;
t445 = t220 * t340;
t254 = -t434 - t357;
t441 = t254 * t337;
t440 = t254 * t340;
t419 = t331 * t482;
t322 = t341 * t338 * t419;
t310 = t322 + t393;
t430 = t338 * t310;
t311 = -t322 + t393;
t428 = t341 * t311;
t420 = qJD(6) * t282;
t417 = 0.2e1 * qJD(3) - t328;
t407 = t341 * t434;
t317 = t329 * t328;
t406 = t317 + t313;
t405 = -pkin(3) * t340 - pkin(2);
t332 = t338 ^ 2;
t402 = t332 * t419;
t333 = t341 ^ 2;
t401 = t333 * t419;
t399 = -pkin(4) * t177 - t169;
t45 = t336 * t62 + t339 * t63;
t90 = t149 * t337 + t340 * t150;
t394 = -t329 + t425;
t392 = -pkin(3) * t113 + pkin(10) * t45;
t390 = -pkin(4) * t57 + qJ(5) * t56;
t386 = t337 * t291;
t385 = t337 * t395;
t384 = t340 * t291;
t383 = t340 * t395;
t44 = t336 * t63 - t339 * t62;
t379 = t149 * t340 - t150 * t337;
t377 = -pkin(1) + t391;
t225 = t307 * t328 + t396;
t371 = -t466 + t545;
t370 = t467 + t564;
t369 = t45 + t544;
t367 = -pkin(4) * t502 + t185 - t380;
t355 = -pkin(5) * t484 + t356;
t349 = t206 * qJ(6) + t355;
t48 = 0.2e1 * t420 + (-t246 + t398) * t284 + t349;
t16 = pkin(5) * t47 - t470 * t48;
t23 = t336 * t46 + t339 * t47;
t24 = pkin(5) * t46 - qJ(5) * t48;
t363 = -pkin(3) * t48 + pkin(10) * t23 + t16 * t339 + t24 * t336;
t34 = -pkin(5) * t508 + t210 * t470 + t47;
t347 = t301 * t481 + t354;
t38 = t536 + (t176 + t257) * pkin(5) + t347;
t361 = t336 * t38 + t339 * t34 + t544;
t105 = t177 * t336 - t168;
t50 = pkin(4) * t210 + t56;
t51 = t57 + t536;
t360 = pkin(10) * t105 + t336 * t51 + t339 * t50 + t538;
t274 = -0.2e1 * t420;
t41 = -t349 + t274 + pkin(5) * t502 + (t246 - t475) * t284 + t498;
t66 = pkin(5) * t503 - t180 * t470;
t359 = t336 * t41 + t339 * t66 - t564;
t109 = pkin(5) * t191 - qJ(5) * t507;
t35 = -t355 + t275 + t274 + t284 * t246 + (-t507 - t206) * qJ(6) - t537 + pkin(5) * t506;
t358 = t109 * t336 + t339 * t35 + t545;
t351 = pkin(4) * t191 - t526 + t57;
t316 = t329 * t403;
t315 = (t332 - t333) * t419;
t314 = -t327 - t401;
t300 = -t402 - t327;
t292 = t334 * t352 + t471;
t290 = -t316 - t368;
t289 = t316 - t368;
t288 = -t317 + t313;
t287 = -t304 + t412;
t286 = t303 - t412;
t273 = -t304 - t412;
t272 = t304 - t303;
t268 = -t412 - t303;
t245 = t303 + t304;
t243 = t386 + t383;
t230 = t305 * t417 + t364;
t229 = -t291 + t267;
t226 = -t307 * t417 - t396;
t223 = t337 * t267 - t383;
t222 = t340 * t266 - t386;
t214 = t286 * t337 - t440;
t213 = t287 * t340 + t512;
t212 = -t273 * t337 + t440;
t211 = t273 * t340 + t441;
t202 = t268 * t340 - t512;
t201 = t268 * t337 + t510;
t198 = (-t282 * t339 + t284 * t336) * t301;
t195 = t248 + t409;
t183 = -t225 * t340 + t229 * t337;
t181 = t226 * t337 + t228 * t340;
t159 = t198 * t337 - t261;
t112 = pkin(2) * t230 + pkin(9) * t212 + t446;
t110 = pkin(2) * t226 + pkin(9) * t202 - t445;
t106 = t336 * t516 - t517;
t100 = -t339 * t516 - t465;
t99 = -t177 * t339 - t463;
t91 = -t176 * t340 - t591;
t75 = t106 * t337 + t532;
t72 = t105 * t340 - t535;
t69 = t105 * t337 + t534;
t67 = -pkin(2) * t220 + pkin(9) * t90;
t65 = t466 + t571;
t64 = t467 - t553;
t60 = pkin(2) * t245 + pkin(9) * t183 + t90;
t58 = -pkin(3) * t99 - t399;
t55 = t63 + t576;
t54 = t62 - t555;
t49 = -pkin(3) * t528 - t497;
t43 = -t367 + t566;
t42 = -t351 + t555;
t40 = t180 * t474 + t339 * t52 - t571;
t39 = qJ(5) * t517 - t336 * t53 + t553;
t37 = t113 * t337 + t340 * t45;
t36 = -t113 * t340 + t337 * t45;
t33 = -t44 - t554;
t31 = t336 * t56 - t339 * t57;
t30 = -t362 - t495 + t566;
t29 = t46 + t494 - t555;
t28 = t337 * t65 + t340 * t55 - t586;
t27 = t109 * t339 - t336 * t35 - t553;
t26 = t337 * t64 + t340 * t54 + t565;
t25 = -t336 * t66 + t339 * t41 - t571;
t22 = t336 * t47 - t339 * t46;
t21 = -pkin(10) * t99 - t336 * t50 + t339 * t51;
t20 = t32 * t340 + t337 * t59;
t19 = t32 * t337 - t340 * t59;
t18 = t337 * t33 + t405 * t528 + t575;
t17 = -pkin(10) * t31 + (-qJ(5) * t339 + t474) * t59;
t15 = -pkin(3) * t31 - t390;
t14 = t23 * t340 + t337 * t48;
t13 = t23 * t337 - t340 * t48;
t12 = t337 * t40 + t340 * t43 + t586;
t11 = t337 * t39 + t340 * t42 - t565;
t10 = -t336 * t34 + t339 * t38 - t554;
t9 = -pkin(2) * t99 + pkin(9) * t72 + t21 * t337 + t340 * t58;
t8 = t25 * t337 + t30 * t340 + t586;
t7 = t27 * t337 + t29 * t340 + t565;
t6 = pkin(9) * t37 + (-pkin(10) * t337 + t405) * t44;
t5 = -pkin(2) * t528 + t10 * t337 + t340 * t49 + t575;
t4 = -pkin(3) * t22 - t499;
t3 = -pkin(10) * t22 - t16 * t336 + t24 * t339;
t2 = -pkin(2) * t31 + pkin(9) * t20 + t15 * t340 + t17 * t337;
t1 = -pkin(2) * t22 + pkin(9) * t14 + t3 * t337 + t340 * t4;
t61 = [0, 0, 0, 0, 0, qJDD(1), t372, t373, 0, 0, (-t331 * t394 * t423 + t313 * t334) * t338, t335 * t315 + (t338 * t290 + t341 * t406) * t334, t335 * t288 + (t430 + t341 * (t327 - t402)) * t334, (t413 + (-qJD(2) + t394) * t424) * t331 * t341, t335 * t289 + (t338 * (-t327 + t401) + t428) * t334, t335 * t393, (-t269 + pkin(1) * (t310 * t341 + t314 * t338)) * t335 + (t341 * t292 + pkin(1) * t290 + pkin(8) * (t314 * t341 - t430)) * t334, -t292 * t433 - t335 * t270 + pkin(1) * (-t334 * t406 + (t300 * t341 - t311 * t338) * t335) + (-t338 * t300 - t428) * t472, pkin(1) * ((-t288 * t341 + t289 * t338) * t335 - (-t332 - t333) * t331 * t418) + (t338 * t288 + t289 * t341) * t472 + t504 * t334, pkin(1) * (t334 * t292 + (-t269 * t341 + t270 * t338) * t335) + t504 * t472, t335 * t223 + (t338 * (t340 * t267 + t385) - t407) * t334, t335 * t181 + (t338 * (t226 * t340 - t228 * t337) - t341 * t272) * t334, t335 * t213 + (t338 * (-t287 * t337 + t510) - t341 * t229) * t334, t335 * t222 + (t338 * (-t337 * t266 - t384) + t407) * t334, t335 * t214 + (t338 * (t286 * t340 + t441) + t341 * t225) * t334, t335 * t243 + (t338 * (t384 - t385) - t357 * t341) * t334, (t110 + pkin(1) * (t202 * t338 + t226 * t341)) * t335 + (t338 * (-pkin(9) * t201 + t446) + t341 * (-pkin(2) * t201 + t149) - pkin(1) * t201 + pkin(8) * (t202 * t341 - t338 * t226)) * t334, (t112 + pkin(1) * (t212 * t338 + t230 * t341)) * t335 + (t338 * (-pkin(9) * t211 + t445) + t341 * (-pkin(2) * t211 + t150) - pkin(1) * t211 + pkin(8) * (t212 * t341 - t338 * t230)) * t334, (t60 + pkin(1) * (t183 * t338 + t245 * t341)) * t335 + (t338 * t379 + pkin(8) * (t183 * t341 - t338 * t245) + t377 * (-t225 * t337 - t229 * t340)) * t334, (t67 + pkin(1) * (-t220 * t341 + t338 * t90)) * t335 + (pkin(8) * (t338 * t220 + t341 * t90) - t377 * t379) * t334, t492, t335 * t75 + (t338 * (t106 * t340 - t533) - t341 * t100) * t334, t335 * t91 + (t338 * (t176 * t337 - t590) - t567) * t334, t524 + (-t161 * t341 + t338 * t488) * t334, t608, t514, (t26 + t559) * t335 + (t338 * (-t337 * t54 + t340 * t64 - t573) + t341 * (-t371 - t578) + t557) * t334, (t28 - t582) * t335 + (t338 * (-t337 * t55 + t340 * t65 + t593) + t341 * (-t370 + t594) - t581) * t334, (t18 + t560) * t335 + (t338 * (t33 * t340 + t476 * t528 - t574) + t341 * (-t369 - t579) + t558) * t334, (t6 + pkin(1) * (t338 * t37 - t341 * t44)) * t335 + (t338 * (-pkin(9) * t36 + (-pkin(10) * t340 + t476) * t44) + t341 * (-pkin(2) * t36 - t392) - pkin(1) * t36 + pkin(8) * (t338 * t44 + t341 * t37)) * t334, t335 * t159 + (t338 * (t198 * t340 + t439) + t341 * t195) * t334, t602, -t608, t525 + (t338 * t487 - t341 * t505) * t334, t596, t491, (t9 + pkin(1) * (t338 * t72 - t341 * t99)) * t335 + (t338 * (-pkin(9) * t69 + t21 * t340 - t337 * t58) + t341 * (-pkin(2) * t69 - t360) - pkin(1) * t69 + pkin(8) * (t338 * t99 + t341 * t72)) * t334, (t11 - t559) * t335 + (t338 * (-t337 * t42 + t340 * t39 + t573) + t341 * (-t496 + t578) - t557) * t334, (t12 + t582) * t335 + (t338 * (-t337 * t43 + t340 * t40 - t593) + t341 * (-t486 - t594) + t581) * t334, (t2 + pkin(1) * (t20 * t338 - t31 * t341)) * t335 + (-pkin(1) * t19 + (pkin(8) * t31 - pkin(9) * t19 - t15 * t337 + t17 * t340) * t338 + (-pkin(2) * t19 + pkin(8) * t20 - t500) * t341) * t334, t514, -t608, -t602, t491, -t596, t492, (t5 + t560) * t335 + (t338 * (t10 * t340 - t337 * t49 - t574) + t341 * (-t361 - t579) + t558) * t334, (t8 + t582) * t335 + (t338 * (t25 * t340 - t30 * t337 - t593) + t341 * (-t359 - t594) + t581) * t334, (t7 + t559) * t335 + (t338 * (t27 * t340 - t29 * t337 - t573) + t341 * (-t358 - t578) + t557) * t334, (t1 + pkin(1) * (t14 * t338 - t22 * t341)) * t335 + (t338 * (-pkin(9) * t13 + t3 * t340 - t337 * t4) + t341 * (-pkin(2) * t13 - t363) - pkin(1) * t13 + pkin(8) * (t14 * t341 + t338 * t22)) * t334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t322, t315, t288, t322, t289, t393, -t269, -t270, 0, 0, t223, t181, t213, t222, t214, t243, t110, t112, t60, t67, t489, t75, t91, t490, t96, t493, t26, t28, t18, t6, t159, t93, -t96, t489, t76, t490, t9, t11, t12, t2, t493, -t96, -t93, t490, -t76, t489, t5, t8, t7, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t434, t272, t229, -t434, -t225, t357, -t149, -t150, 0, 0, t505, t100, t548, t161, t141, -t509, t371, t370, t369, t392, -t195, -t548, -t141, t505, -t97, t161, t360, t496, t486, t500, -t509, -t141, t548, t161, t97, t505, t361, t359, t358, t363; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t438, -t235, t176, -t438, -t508, t265, -t62, -t63, 0, 0, t265, -t177, t508, t438, -t235, -t438, t399, t351, t295 + t367, t390, t265, t508, t177, -t438, t235, t438, t497, t47 + t495, -pkin(5) * t257 - t347 - t494, t499; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177, -t191, t502, t57, 0, 0, 0, 0, 0, 0, t176, t502, t191, t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t508, t503, t506, t47;];
tauJ_reg  = t61;
