% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRPR5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 20:33
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRPR5_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR5_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR5_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR5_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR5_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPR5_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 20:30:59
% EndTime: 2019-05-07 20:31:42
% DurationCPUTime: 14.32s
% Computational Cost: add. (53050->586), mult. (106379->771), div. (0->0), fcn. (77597->10), ass. (0->365)
t353 = sin(qJ(3));
t357 = cos(qJ(3));
t358 = cos(qJ(2));
t354 = sin(qJ(2));
t420 = qJD(1) * t354;
t324 = -t357 * t358 * qJD(1) + t353 * t420;
t321 = qJD(4) + t324;
t473 = t321 ^ 2;
t425 = t353 * t358;
t326 = (t354 * t357 + t425) * qJD(1);
t348 = qJD(2) + qJD(3);
t352 = sin(qJ(4));
t356 = cos(qJ(4));
t305 = t326 * t352 - t356 * t348;
t474 = t305 ^ 2;
t284 = t474 - t473;
t343 = t354 * qJDD(1);
t416 = qJD(1) * qJD(2);
t403 = t358 * t416;
t331 = t343 + t403;
t344 = t358 * qJDD(1);
t404 = t354 * t416;
t332 = t344 - t404;
t395 = t331 * t353 - t357 * t332;
t278 = -qJD(3) * t326 - t395;
t276 = qJDD(4) - t278;
t307 = t356 * t326 + t352 * t348;
t432 = t307 * t305;
t224 = -t432 - t276;
t443 = t224 * t352;
t189 = -t284 * t356 - t443;
t288 = t321 * t307;
t381 = t331 * t357 + t332 * t353;
t279 = -qJD(3) * t324 + t381;
t415 = qJDD(2) + qJDD(3);
t397 = t279 * t352 - t356 * t415;
t378 = qJD(4) * t307 + t397;
t207 = -t288 + t378;
t540 = t354 * (t189 * t357 + t207 * t353) + t358 * (t189 * t353 - t207 * t357);
t303 = t307 ^ 2;
t488 = -t303 - t473;
t174 = t356 * t488 + t443;
t539 = pkin(1) * t174;
t538 = pkin(2) * t174;
t537 = pkin(3) * t174;
t536 = pkin(9) * t174;
t442 = t224 * t356;
t176 = -t352 * t488 + t442;
t535 = pkin(9) * t176;
t534 = t176 * t353;
t533 = t176 * t357;
t372 = -t356 * t279 - t352 * t415;
t234 = -t305 * qJD(4) - t372;
t433 = t305 * t321;
t484 = -t433 + t234;
t445 = t484 * t352;
t490 = t288 + t378;
t143 = t490 * t356 + t445;
t487 = t303 - t474;
t530 = t354 * (t143 * t357 - t353 * t487) + t358 * (t143 * t353 + t357 * t487);
t485 = -t432 + t276;
t441 = t485 * t352;
t482 = -t473 - t474;
t493 = t356 * t482 - t441;
t513 = t353 * t493 - t357 * t490;
t527 = pkin(2) * t513;
t526 = pkin(8) * t513;
t185 = -t284 * t352 + t442;
t440 = t485 * t356;
t494 = t352 * t482 + t440;
t512 = t353 * t490 + t357 * t493;
t525 = -pkin(2) * t494 + pkin(8) * t512;
t524 = pkin(7) * (-t354 * t513 + t358 * t512) - pkin(1) * t494;
t483 = t433 + t234;
t285 = -t303 + t473;
t514 = -t285 * t352 + t440;
t523 = t354 * (t353 * t483 + t357 * t514) + t358 * (t353 * t514 - t357 * t483);
t520 = pkin(3) * t494;
t519 = pkin(9) * t493;
t518 = pkin(9) * t494;
t515 = t356 * t285 + t441;
t444 = t484 * t356;
t141 = -t490 * t352 + t444;
t486 = t303 + t474;
t511 = pkin(3) * t486;
t510 = -qJ(5) * t352 - pkin(3);
t509 = qJ(5) * t484;
t351 = sin(qJ(6));
t355 = cos(qJ(6));
t261 = -t355 * t305 + t307 * t351;
t263 = t305 * t351 + t307 * t355;
t216 = t263 * t261;
t274 = -qJDD(6) + t276;
t492 = -t216 - t274;
t508 = t351 * t492;
t505 = t353 * t486;
t298 = t326 * t324;
t489 = -t298 + t415;
t503 = t353 * t489;
t501 = t355 * t492;
t498 = t357 * t486;
t496 = t357 * t489;
t314 = t348 * t324;
t253 = t279 - t314;
t350 = t358 ^ 2;
t468 = sin(qJ(1));
t469 = cos(qJ(1));
t391 = g(1) * t468 - t469 * g(2);
t373 = qJDD(1) * pkin(1) + t391;
t471 = qJD(1) ^ 2;
t281 = (pkin(8) * t350 + pkin(7)) * t471 + t332 * pkin(2) - (qJD(2) * pkin(2) - pkin(8) * t420) * t420 + t373;
t157 = -t253 * pkin(9) + (t326 * t348 - t278) * pkin(3) - t281;
t374 = g(1) * t469 + g(2) * t468;
t455 = qJDD(1) * pkin(7);
t368 = -t374 + t455;
t365 = -pkin(1) * t471 + t368;
t362 = t354 * t365;
t466 = t331 * pkin(8);
t386 = qJDD(2) * pkin(2) - t466;
t359 = qJD(2) ^ 2;
t463 = pkin(8) * qJD(2);
t465 = t354 * g(3);
t268 = t358 * t368 - t465 + t332 * pkin(8) - t359 * pkin(2) + (t354 * t463 + (-pkin(1) * t358 - pkin(2) * t350) * qJD(1)) * qJD(1);
t423 = t357 * t268;
t219 = t423 + t353 * (-t362 + t386) + (-g(3) + (pkin(2) * t420 + t463) * qJD(1)) * t425;
t295 = pkin(3) * t324 - pkin(9) * t326;
t472 = t348 ^ 2;
t171 = -pkin(3) * t472 + pkin(9) * t415 - t324 * t295 + t219;
t103 = -t356 * t157 + t171 * t352;
t104 = t352 * t157 + t356 * t171;
t64 = t352 * t103 + t356 * t104;
t152 = -t261 * qJD(6) + t355 * t234 + t351 * t378;
t318 = -qJD(6) + t321;
t244 = t261 * t318;
t491 = t244 + t152;
t265 = pkin(4) * t305 - qJ(5) * t307;
t392 = -t276 * qJ(5) + t305 * t265 - t104;
t481 = -pkin(4) * (t488 + t473) - qJ(5) * t224 - t392;
t94 = -t276 * pkin(4) - qJ(5) * t473 + t265 * t307 + qJDD(5) + t103;
t61 = -pkin(5) * t485 - pkin(10) * t483 + t94;
t389 = -pkin(5) * t321 - pkin(10) * t307;
t419 = qJD(5) * t321;
t313 = 0.2e1 * t419;
t383 = t313 - t392;
t92 = -pkin(4) * t473 + t383;
t65 = -pkin(5) * t474 + pkin(10) * t378 + t321 * t389 + t92;
t35 = t351 * t65 - t355 * t61;
t36 = t351 * t61 + t355 * t65;
t21 = -t35 * t355 + t351 * t36;
t22 = t35 * t351 + t355 * t36;
t470 = pkin(4) + pkin(5);
t480 = qJ(5) * t22 - t21 * t470;
t398 = t234 * t351 - t355 * t378;
t120 = (qJD(6) + t318) * t263 + t398;
t123 = -t244 + t152;
t73 = -t120 * t351 - t123 * t355;
t75 = -t120 * t355 + t123 * t351;
t479 = qJ(5) * t75 - t470 * t73;
t259 = t261 ^ 2;
t315 = t318 ^ 2;
t195 = -t315 - t259;
t129 = t195 * t351 + t501;
t130 = t195 * t355 - t508;
t478 = qJ(5) * t130 - t129 * t470 + t35;
t260 = t263 ^ 2;
t225 = -t260 - t315;
t178 = -t216 + t274;
t453 = t178 * t351;
t135 = t225 * t355 + t453;
t452 = t178 * t355;
t136 = -t225 * t351 + t452;
t477 = qJ(5) * t136 - t135 * t470 + t36;
t428 = t321 * t356;
t410 = t305 * t428;
t364 = t352 * t378 + t410;
t411 = t357 * t432;
t412 = t353 * t432;
t476 = t354 * (t357 * t364 - t412) + t358 * (t353 * t364 + t411);
t429 = t321 * t352;
t282 = t307 * t429;
t387 = t282 - t410;
t475 = t354 * (t276 * t353 + t357 * t387) + t358 * (-t357 * t276 + t353 * t387);
t322 = t324 ^ 2;
t323 = t326 ^ 2;
t467 = pkin(3) * t353;
t464 = t358 * g(3);
t218 = t353 * t268 - t357 * (-t354 * t368 - t464 + (t358 * t463 + (t358 * pkin(2) + pkin(1)) * t420) * qJD(1) + t386);
t170 = -t415 * pkin(3) - t472 * pkin(9) + t326 * t295 + t218;
t366 = t378 * pkin(4) + t170 - t509;
t402 = pkin(4) * t321 - 0.2e1 * qJD(5);
t71 = t397 * pkin(5) + t474 * pkin(10) + t366 + (pkin(5) * qJD(4) - t389 + t402) * t307;
t460 = t351 * t71;
t459 = t355 * t71;
t458 = -pkin(3) * t170 + pkin(9) * t64;
t456 = qJ(5) * t356;
t153 = -t218 * t357 + t219 * t353;
t454 = t153 * t354;
t447 = t483 * t352;
t446 = t483 * t356;
t438 = t281 * t353;
t437 = t281 * t357;
t292 = t298 + t415;
t435 = t292 * t353;
t434 = t292 * t357;
t431 = t318 * t351;
t430 = t318 * t355;
t427 = t348 * t353;
t426 = t348 * t357;
t166 = t352 * t170;
t337 = t358 * t471 * t354;
t334 = qJDD(2) + t337;
t424 = t354 * t334;
t167 = t356 * t170;
t422 = t358 * (qJDD(2) - t337);
t418 = qJD(3) + t348;
t414 = t353 * t216;
t413 = t357 * t216;
t214 = (qJD(4) + t321) * t305 + t372;
t409 = pkin(3) * t214 + t166 + t535;
t408 = -pkin(3) * t490 - t167 + t519;
t407 = -pkin(3) * t357 - pkin(2);
t10 = -pkin(10) * t22 - t470 * t71;
t16 = -pkin(10) * t21 - qJ(5) * t71;
t8 = t21 * t352 + t22 * t356;
t405 = -pkin(3) * t71 + pkin(9) * t8 + t356 * t10 + t352 * t16;
t165 = -t259 - t260;
t12 = -pkin(10) * t75 + t165 * t470 - t22;
t14 = -pkin(10) * t73 + qJ(5) * t165 - t21;
t42 = t352 * t73 + t356 * t75;
t401 = pkin(3) * t165 + pkin(9) * t42 + t356 * t12 + t352 * t14;
t119 = (qJD(6) - t318) * t263 + t398;
t27 = -pkin(10) * t130 + t119 * t470 - t459;
t43 = -pkin(10) * t129 + qJ(5) * t119 - t460;
t78 = t129 * t352 + t130 * t356;
t400 = pkin(3) * t119 + pkin(9) * t78 + t356 * t27 + t352 * t43;
t29 = -pkin(10) * t136 + t470 * t491 + t460;
t45 = -pkin(10) * t135 + qJ(5) * t491 - t459;
t89 = t135 * t352 + t136 * t356;
t399 = pkin(3) * t491 + pkin(9) * t89 + t356 * t29 + t352 * t45;
t154 = t218 * t353 + t357 * t219;
t309 = t362 + t464;
t310 = t358 * t365 - t465;
t396 = t354 * t309 + t358 * t310;
t144 = -t207 * t356 + t447;
t80 = (t486 - t473) * pkin(4) + t383;
t82 = qJ(5) * t486 + t94;
t394 = pkin(9) * t144 + t352 * t82 + t356 * t80 + t511;
t209 = (-qJD(4) + t321) * t307 - t397;
t146 = t209 * t356 + t447;
t393 = pkin(9) * t146 + t511 + t64;
t390 = -pkin(4) * t94 + qJ(5) * t92;
t388 = t305 * t429 - t356 * t378;
t385 = -pkin(4) * t483 - qJ(5) * t207;
t382 = -t103 * t356 + t104 * t352;
t363 = 0.2e1 * qJD(5) * t307 - t366;
t85 = -pkin(4) * t288 + t363 + t509;
t379 = pkin(3) * t484 + pkin(4) * t444 + t352 * t85 - t535;
t86 = (-t490 - t288) * pkin(4) + t363;
t377 = t356 * t86 + t490 * t510 + t519;
t375 = (-t305 * t352 - t307 * t356) * t321;
t370 = (-qJD(3) + t348) * t326 - t395;
t100 = t307 * t402 + t366;
t48 = t352 * t94 + t356 * t92;
t369 = pkin(9) * t48 + (-pkin(4) * t356 + t510) * t100;
t201 = t234 * t356 - t282;
t361 = t354 * (t357 * t201 + t412) + t358 * (t353 * t201 - t411);
t360 = pkin(4) * t485 + qJ(5) * t482 - t94;
t349 = t354 ^ 2;
t346 = t350 * t471;
t345 = t349 * t471;
t333 = t344 - 0.2e1 * t404;
t330 = t343 + 0.2e1 * t403;
t327 = pkin(7) * t471 + t373;
t312 = -t323 + t472;
t311 = t322 - t472;
t308 = -t323 - t472;
t297 = t323 - t322;
t291 = -t472 - t322;
t280 = -t322 - t323;
t256 = -t308 * t353 - t434;
t255 = t308 * t357 - t435;
t254 = t279 + t314;
t252 = -t324 * t418 + t381;
t249 = t326 * t418 + t395;
t243 = t291 * t357 - t503;
t242 = t291 * t353 + t496;
t241 = -t260 + t315;
t240 = t259 - t315;
t215 = t260 - t259;
t200 = t234 * t352 + t307 * t428;
t192 = t254 * t353 + t357 * t370;
t191 = -t254 * t357 + t353 * t370;
t182 = (t261 * t355 - t263 * t351) * t318;
t181 = (-t261 * t351 - t263 * t355) * t318;
t151 = -qJD(6) * t263 - t398;
t150 = t240 * t355 + t453;
t149 = -t241 * t351 + t501;
t148 = -t240 * t351 + t452;
t147 = -t241 * t355 - t508;
t142 = t209 * t352 - t446;
t140 = -t207 * t352 - t446;
t133 = -t214 * t353 + t533;
t131 = t214 * t357 + t534;
t127 = -t353 * t484 - t533;
t125 = t357 * t484 - t534;
t116 = t152 * t355 + t263 * t431;
t115 = -t152 * t351 + t263 * t430;
t114 = -t151 * t351 - t261 * t430;
t113 = -t151 * t355 + t261 * t431;
t112 = -t181 * t352 + t182 * t356;
t111 = t181 * t356 + t182 * t352;
t110 = t167 - t536;
t109 = t146 * t357 - t505;
t108 = t144 * t357 - t505;
t107 = t146 * t353 + t498;
t106 = t144 * t353 + t498;
t105 = t166 - t518;
t98 = -t148 * t352 + t150 * t356;
t97 = -t147 * t352 + t149 * t356;
t96 = t148 * t356 + t150 * t352;
t95 = t147 * t356 + t149 * t352;
t93 = -pkin(3) * t140 - t385;
t91 = t104 - t537;
t90 = t103 - t520;
t88 = -t135 * t356 + t136 * t352;
t77 = -t129 * t356 + t130 * t352;
t74 = -t119 * t355 - t351 * t491;
t72 = t119 * t351 - t355 * t491;
t69 = -t115 * t352 + t116 * t356;
t68 = -t113 * t352 + t114 * t356;
t67 = t115 * t356 + t116 * t352;
t66 = t113 * t356 + t114 * t352;
t59 = -t360 - t520;
t58 = -t353 * t491 + t357 * t89;
t57 = t353 * t89 + t357 * t491;
t56 = -0.2e1 * t419 - t481 + t537;
t55 = -t352 * t86 - t456 * t490 - t518;
t54 = -pkin(4) * t445 + t356 * t85 + t536;
t52 = -t170 * t357 + t353 * t64;
t51 = -t119 * t353 + t357 * t78;
t50 = t119 * t357 + t353 * t78;
t49 = -pkin(9) * t142 - t382;
t47 = t352 * t92 - t356 * t94;
t41 = -t352 * t72 + t356 * t74;
t40 = t352 * t75 - t356 * t73;
t39 = t352 * t74 + t356 * t72;
t34 = -t165 * t353 + t357 * t42;
t33 = t165 * t357 + t353 * t42;
t32 = -pkin(9) * t140 - t352 * t80 + t356 * t82;
t31 = t100 * t353 + t357 * t48;
t30 = -t100 * t357 + t353 * t48;
t25 = -pkin(9) * t47 + (pkin(4) * t352 - t456) * t100;
t24 = -pkin(3) * t47 - t390;
t23 = -pkin(3) * t88 - t477;
t20 = -pkin(3) * t77 - t478;
t19 = -pkin(3) * t40 - t479;
t18 = -pkin(9) * t88 - t29 * t352 + t356 * t45;
t17 = -pkin(9) * t77 - t27 * t352 + t356 * t43;
t7 = -t21 * t356 + t22 * t352;
t5 = t353 * t71 + t357 * t8;
t4 = t353 * t8 - t357 * t71;
t3 = -pkin(9) * t40 - t12 * t352 + t14 * t356;
t2 = -pkin(9) * t7 - t10 * t352 + t16 * t356;
t1 = -pkin(3) * t7 - t480;
t6 = [0, 0, 0, 0, 0, qJDD(1), t391, t374, 0, 0, (t331 + t403) * t354, t330 * t358 + t333 * t354, t424 + t358 * (-t345 + t359), (t332 - t404) * t358, t354 * (t346 - t359) + t422, 0, t358 * t327 + pkin(1) * t333 + pkin(7) * (t358 * (-t346 - t359) - t424), -t354 * t327 - pkin(1) * t330 + pkin(7) * (-t422 - t354 * (-t345 - t359)), pkin(1) * (t345 + t346) + (t349 + t350) * t455 + t396, pkin(1) * t327 + pkin(7) * t396, t354 * (t279 * t357 - t326 * t427) + t358 * (t279 * t353 + t326 * t426), t354 * (-t249 * t357 - t253 * t353) + t358 * (-t249 * t353 + t253 * t357), t354 * (-t312 * t353 + t496) + t358 * (t312 * t357 + t503), t354 * (-t278 * t353 + t324 * t426) + t358 * (t278 * t357 + t324 * t427), t354 * (t311 * t357 - t435) + t358 * (t311 * t353 + t434), (t354 * (-t324 * t357 + t326 * t353) + t358 * (-t324 * t353 - t326 * t357)) * t348, t354 * (-pkin(8) * t242 - t438) + t358 * (-pkin(2) * t249 + pkin(8) * t243 + t437) - pkin(1) * t249 + pkin(7) * (-t242 * t354 + t243 * t358), t354 * (-pkin(8) * t255 - t437) + t358 * (-pkin(2) * t252 + pkin(8) * t256 - t438) - pkin(1) * t252 + pkin(7) * (-t255 * t354 + t256 * t358), t354 * (-pkin(8) * t191 - t153) + t358 * (-pkin(2) * t280 + pkin(8) * t192 + t154) - pkin(1) * t280 + pkin(7) * (-t191 * t354 + t192 * t358), -pkin(8) * t454 + t358 * (pkin(2) * t281 + pkin(8) * t154) + pkin(1) * t281 + pkin(7) * (t154 * t358 - t454), t361, -t530, t523, t476, -t540, t475, t354 * (t105 * t357 - t353 * t90 - t526) + t358 * (t105 * t353 + t357 * t90 + t525) + t524, t354 * (-pkin(8) * t131 + t110 * t357 - t353 * t91) + t358 * (pkin(8) * t133 + t110 * t353 + t357 * t91 - t538) - t539 + pkin(7) * (-t131 * t354 + t133 * t358), t354 * (-pkin(8) * t107 + t357 * t49) + t358 * (pkin(8) * t109 + t353 * t49) + pkin(7) * (-t107 * t354 + t109 * t358) + (t354 * t467 + t358 * t407 - pkin(1)) * t142, (t354 * (-pkin(9) * t357 + t467) + t358 * (-pkin(9) * t353 + t407) - pkin(1)) * t382 + (pkin(7) + pkin(8)) * (-t354 * t52 + t358 * (t170 * t353 + t357 * t64)), t361, t523, t530, t475, t540, t476, t354 * (-t353 * t59 + t357 * t55 - t526) + t358 * (t353 * t55 + t357 * t59 + t525) + t524, t354 * (-pkin(8) * t106 + t32 * t357 - t353 * t93) + t358 * (-pkin(2) * t140 + pkin(8) * t108 + t32 * t353 + t357 * t93) - pkin(1) * t140 + pkin(7) * (-t106 * t354 + t108 * t358), t354 * (-pkin(8) * t125 - t353 * t56 + t357 * t54) + t358 * (pkin(8) * t127 + t353 * t54 + t357 * t56 + t538) + t539 + pkin(7) * (-t125 * t354 + t127 * t358), t354 * (-pkin(8) * t30 - t24 * t353 + t25 * t357) + t358 * (-pkin(2) * t47 + pkin(8) * t31 + t24 * t357 + t25 * t353) - pkin(1) * t47 + pkin(7) * (-t30 * t354 + t31 * t358), t354 * (t357 * t69 - t414) + t358 * (t353 * t69 + t413), t354 * (-t215 * t353 + t357 * t41) + t358 * (t215 * t357 + t353 * t41), t354 * (-t123 * t353 + t357 * t97) + t358 * (t123 * t357 + t353 * t97), t354 * (t357 * t68 + t414) + t358 * (t353 * t68 - t413), t354 * (t120 * t353 + t357 * t98) + t358 * (-t120 * t357 + t353 * t98), t354 * (t112 * t357 + t274 * t353) + t358 * (t112 * t353 - t274 * t357), t354 * (-pkin(8) * t50 + t17 * t357 - t20 * t353) + t358 * (-pkin(2) * t77 + pkin(8) * t51 + t17 * t353 + t20 * t357) - pkin(1) * t77 + pkin(7) * (-t354 * t50 + t358 * t51), t354 * (-pkin(8) * t57 + t18 * t357 - t23 * t353) + t358 * (-pkin(2) * t88 + pkin(8) * t58 + t18 * t353 + t23 * t357) - pkin(1) * t88 + pkin(7) * (-t354 * t57 + t358 * t58), t354 * (-pkin(8) * t33 - t19 * t353 + t3 * t357) + t358 * (-pkin(2) * t40 + pkin(8) * t34 + t19 * t357 + t3 * t353) - pkin(1) * t40 + pkin(7) * (-t33 * t354 + t34 * t358), t354 * (-pkin(8) * t4 - t1 * t353 + t2 * t357) + t358 * (-pkin(2) * t7 + pkin(8) * t5 + t1 * t357 + t2 * t353) - pkin(1) * t7 + pkin(7) * (-t354 * t4 + t358 * t5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t337, t345 - t346, t343, t337, t344, qJDD(2), -t309, -t310, 0, 0, t298, t297, t254, -t298, t370, t415, pkin(2) * t242 - t218, -t423 - t353 * (pkin(8) * t403 - t309 - t466) + (-t334 * t353 + t255) * pkin(2), pkin(2) * t191, pkin(2) * t153, t200, t141, t515, t388, -t185, t375, t408 + t527, pkin(2) * t131 + t409, pkin(2) * t107 + t393, pkin(2) * t52 + t458, t200, t515, -t141, t375, t185, t388, t377 + t527, pkin(2) * t106 + t394, pkin(2) * t125 + t379, pkin(2) * t30 + t369, t67, t39, t95, t66, t96, t111, pkin(2) * t50 + t400, pkin(2) * t57 + t399, pkin(2) * t33 + t401, pkin(2) * t4 + t405; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t298, t297, t254, -t298, t370, t415, -t218, -t219, 0, 0, t200, t141, t515, t388, -t185, t375, t408, t409, t393, t458, t200, t515, -t141, t375, t185, t388, t377, t394, t379, t369, t67, t39, t95, t66, t96, t111, t400, t399, t401, t405; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t432, t487, t483, -t432, -t207, t276, -t103, -t104, 0, 0, t432, t483, -t487, t276, t207, -t432, t360, t385, t313 + t481, t390, -t216, -t215, -t123, t216, t120, t274, t478, t477, t479, t480; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t485, t483, t488, t94, 0, 0, 0, 0, 0, 0, t129, t135, t73, t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t216, t215, t123, -t216, -t120, -t274, -t35, -t36, 0, 0;];
tauJ_reg  = t6;
