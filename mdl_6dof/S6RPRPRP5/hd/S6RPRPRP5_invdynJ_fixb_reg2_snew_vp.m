% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RPRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:51
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RPRPRP5_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP5_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP5_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP5_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP5_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP5_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:48:58
% EndTime: 2019-05-05 17:49:26
% DurationCPUTime: 15.66s
% Computational Cost: add. (42317->529), mult. (104850->722), div. (0->0), fcn. (80257->10), ass. (0->331)
t317 = sin(pkin(9));
t319 = cos(pkin(9));
t321 = sin(qJ(3));
t323 = cos(qJ(3));
t376 = t319 * t321;
t300 = (t317 * t323 + t376) * qJD(1);
t316 = sin(pkin(10));
t318 = cos(pkin(10));
t281 = -t318 * qJD(3) + t300 * t316;
t282 = qJD(3) * t316 + t300 * t318;
t320 = sin(qJ(5));
t322 = cos(qJ(5));
t238 = t322 * t281 + t282 * t320;
t362 = t319 * qJDD(1);
t363 = t317 * qJDD(1);
t297 = t321 * t362 + t323 * t363;
t368 = qJD(1) * t319;
t377 = t317 * t321;
t298 = qJD(1) * t377 - t323 * t368;
t365 = t298 * qJD(3);
t270 = -t365 + t297;
t250 = qJDD(3) * t316 + t270 * t318;
t351 = -t318 * qJDD(3) + t270 * t316;
t333 = -qJD(5) * t238 + t250 * t322 - t320 * t351;
t292 = qJD(5) + t298;
t388 = t238 * t292;
t433 = t333 - t388;
t341 = t321 * t363 - t323 * t362;
t364 = t300 * qJD(3);
t269 = t341 + t364;
t261 = qJDD(5) + t269;
t240 = -t281 * t320 + t282 * t322;
t387 = t240 * t238;
t184 = -t387 - t261;
t394 = t184 * t320;
t237 = t240 ^ 2;
t417 = t292 ^ 2;
t436 = -t237 - t417;
t118 = -t322 * t436 - t394;
t393 = t184 * t322;
t120 = t320 * t436 - t393;
t83 = t118 * t316 - t120 * t318;
t69 = t321 * t83 - t323 * t433;
t71 = t321 * t433 + t323 * t83;
t76 = t118 * t318 + t120 * t316;
t512 = -pkin(1) * t76 + qJ(2) * (t317 * t69 - t319 * t71);
t511 = pkin(7) * t69;
t510 = -pkin(2) * t76 - pkin(7) * t71;
t352 = t250 * t320 + t322 * t351;
t334 = (-qJD(5) + t292) * t240 - t352;
t419 = t238 ^ 2;
t221 = t419 - t417;
t140 = -t221 * t320 + t393;
t144 = -t221 * t322 - t394;
t99 = t140 * t316 - t144 * t318;
t508 = t317 * (t321 * t334 + t323 * t99) + t319 * (t321 * t99 - t334 * t323);
t505 = qJ(4) * t76;
t504 = pkin(3) * t76 + pkin(4) * t118;
t503 = pkin(3) * t433 - qJ(4) * t83;
t193 = t419 - t237;
t147 = (qJD(5) + t292) * t240 + t352;
t103 = -t147 * t320 + t322 * t433;
t399 = t433 * t320;
t106 = t147 * t322 + t399;
t55 = t103 * t316 + t106 * t318;
t500 = t317 * (t321 * t193 + t323 * t55) + t319 * (-t193 * t323 + t321 * t55);
t496 = pkin(8) * t118;
t495 = pkin(8) * t120;
t494 = t140 * t318 + t144 * t316;
t493 = -t103 * t318 + t106 * t316;
t431 = t388 + t333;
t222 = -t237 + t417;
t432 = -t387 + t261;
t392 = t432 * t320;
t466 = t322 * t222 + t392;
t175 = t322 * t432;
t467 = -t222 * t320 + t175;
t479 = -t316 * t466 + t318 * t467;
t492 = t317 * (t321 * t431 + t323 * t479) + t319 * (t321 * t479 - t323 * t431);
t430 = -t417 - t419;
t443 = t322 * t430 - t392;
t444 = t320 * t430 + t175;
t460 = t316 * t443 + t318 * t444;
t491 = pkin(1) * t460;
t490 = pkin(2) * t460;
t162 = -t419 - t237;
t425 = t320 * t431 + t322 * t334;
t426 = t320 * t334 - t322 * t431;
t441 = -t316 * t426 + t318 * t425;
t463 = -t162 * t323 + t321 * t441;
t489 = pkin(7) * t463;
t488 = qJ(4) * t460;
t461 = -t316 * t444 + t318 * t443;
t487 = qJ(4) * t461;
t484 = t321 * t461;
t483 = t323 * t461;
t482 = -pkin(3) * t460 - pkin(4) * t444;
t440 = t316 * t425 + t318 * t426;
t462 = t321 * t162 + t323 * t441;
t481 = -pkin(2) * t440 + pkin(7) * t462;
t480 = t316 * t467 + t318 * t466;
t478 = qJ(2) * (-t317 * t463 + t319 * t462) - pkin(1) * t440;
t474 = pkin(8) * t443;
t473 = pkin(8) * t444;
t472 = qJ(4) * t440;
t40 = -pkin(3) * t440 - pkin(4) * t426;
t465 = -pkin(4) * t162 + pkin(8) * t425;
t464 = -pkin(3) * t162 + qJ(4) * t441;
t456 = pkin(8) * t426;
t455 = qJ(6) * t433;
t243 = t282 * t281;
t435 = -t243 + t269;
t454 = t316 * t435;
t453 = t318 * t435;
t274 = t300 * t298;
t429 = -t274 + qJDD(3);
t451 = t321 * t429;
t447 = t323 * t429;
t411 = sin(qJ(1));
t412 = cos(qJ(1));
t347 = g(1) * t411 - t412 * g(2);
t339 = -qJDD(2) + t347;
t415 = qJD(1) ^ 2;
t367 = t415 * qJ(2);
t405 = qJDD(1) * pkin(1);
t293 = t339 + t367 + t405;
t312 = t317 ^ 2;
t313 = t319 ^ 2;
t369 = t312 + t313;
t442 = t367 * t369 - t293 - t405;
t356 = pkin(2) * t319 + pkin(1);
t264 = t356 * qJDD(1) + (pkin(7) * t369 + qJ(2)) * t415 + t339;
t358 = t321 * t387;
t361 = t323 * t387;
t176 = -qJD(5) * t240 - t352;
t380 = t292 * t322;
t360 = t238 * t380;
t338 = -t176 * t320 + t360;
t381 = t292 * t320;
t345 = t322 * t176 + t238 * t381;
t421 = -t316 * t345 + t318 * t338;
t439 = t317 * (t323 * t421 - t358) + t319 * (t321 * t421 + t361);
t336 = (-t238 * t320 - t240 * t322) * t292;
t216 = t240 * t381;
t344 = t216 - t360;
t422 = -t316 * t336 + t318 * t344;
t438 = t317 * (t321 * t261 + t323 * t422) + t319 * (-t323 * t261 + t321 * t422);
t437 = pkin(7) + qJ(2);
t254 = t298 * t281;
t210 = -t250 - t254;
t434 = t250 - t254;
t192 = pkin(5) * t238 - qJ(6) * t240;
t260 = pkin(3) * t298 - qJ(4) * t300;
t335 = g(1) * t412 + g(2) * t411;
t327 = (-t437 * qJDD(1) + (qJD(1) * t356 - (2 * qJD(2))) * qJD(1) + t335) * t317;
t409 = t319 * g(3);
t326 = t327 - t409;
t332 = qJDD(1) * qJ(2) - t335;
t413 = 2 * qJD(2);
t348 = -g(3) * t317 + t319 * (-pkin(1) * t415 + t332) + t368 * t413;
t253 = -pkin(2) * t313 * t415 + pkin(7) * t362 + t348;
t371 = t323 * t253;
t414 = qJD(3) ^ 2;
t177 = -pkin(3) * t414 + qJDD(3) * qJ(4) - t298 * t260 + t321 * t326 + t371;
t187 = (-t270 + t365) * qJ(4) + (t269 + t364) * pkin(3) - t264;
t112 = -0.2e1 * qJD(4) * t281 + t318 * t177 + t316 * t187;
t248 = pkin(4) * t298 - pkin(8) * t282;
t418 = t281 ^ 2;
t101 = -pkin(4) * t418 - pkin(8) * t351 - t248 * t298 + t112;
t111 = 0.2e1 * qJD(4) * t282 + t177 * t316 - t318 * t187;
t87 = pkin(4) * t435 + pkin(8) * t210 - t111;
t52 = t322 * t101 + t320 * t87;
t349 = -t261 * qJ(6) + t238 * t192 - t52;
t428 = -pkin(5) * (t436 + t417) - qJ(6) * t184 - t349;
t423 = t316 * t344 + t318 * t336;
t420 = t316 * t338 + t318 * t345;
t280 = t282 ^ 2;
t416 = t298 ^ 2;
t296 = t300 ^ 2;
t410 = pkin(5) * t322;
t51 = t101 * t320 - t322 * t87;
t29 = t320 * t52 - t322 * t51;
t408 = t29 * t316;
t407 = t29 * t318;
t406 = qJ(6) * t322;
t199 = t253 * t321 - t323 * t326;
t174 = -qJDD(3) * pkin(3) - t414 * qJ(4) + t260 * t300 + qJDD(4) + t199;
t117 = pkin(4) * t351 - t418 * pkin(8) + t248 * t282 + t174;
t404 = t117 * t320;
t403 = t117 * t322;
t200 = -g(3) * t376 + t321 * t327 + t371;
t156 = -t199 * t323 + t321 * t200;
t397 = t156 * t317;
t396 = t174 * t316;
t395 = t174 * t318;
t213 = t243 + t269;
t391 = t213 * t316;
t390 = t213 * t318;
t386 = t264 * t321;
t385 = t264 * t323;
t265 = qJDD(3) + t274;
t384 = t265 * t323;
t383 = t282 * t298;
t382 = t292 * t240;
t379 = t298 * t316;
t378 = t298 * t318;
t373 = t321 * t265;
t372 = t321 * t269;
t366 = qJD(6) * t292;
t359 = t323 * t243;
t357 = t321 * t243;
t355 = -pkin(3) * t323 - pkin(2);
t354 = -qJ(6) * t320 - pkin(4);
t30 = t320 * t51 + t322 * t52;
t74 = t111 * t316 + t318 * t112;
t157 = t199 * t321 + t323 * t200;
t350 = t317 * (t409 + ((-pkin(1) * qJD(1) + t413) * qJD(1) + t332) * t317) + t319 * t348;
t283 = 0.2e1 * t366;
t343 = t283 - t349;
t42 = -pkin(5) * t417 + t343;
t43 = -t261 * pkin(5) - qJ(6) * t417 + t192 * t240 + qJDD(6) + t51;
t346 = -pkin(5) * t43 + qJ(6) * t42;
t342 = -pkin(5) * t431 + qJ(6) * t334;
t73 = -t111 * t318 + t112 * t316;
t211 = t351 - t383;
t136 = t240 * t380 + t320 * t333;
t137 = t322 * t333 - t216;
t95 = -t136 * t316 + t137 * t318;
t331 = t317 * (t323 * t95 + t358) + t319 * (t321 * t95 - t361);
t330 = pkin(5) * t432 + qJ(6) * t430 - t43;
t329 = -t176 * pkin(5) + t117 - t455;
t328 = 0.2e1 * qJD(6) * t240 - t329;
t309 = t313 * qJDD(1);
t307 = t312 * qJDD(1);
t301 = t369 * t415;
t286 = -t296 - t414;
t285 = -t296 + t414;
t284 = t416 - t414;
t271 = 0.2e1 * t365 - t297;
t268 = t341 + 0.2e1 * t364;
t262 = -t416 - t414;
t258 = t323 * t269;
t252 = -t280 + t416;
t251 = -t416 + t418;
t244 = -t416 - t296;
t241 = -t280 + t418;
t234 = -t280 - t416;
t232 = -t321 * t286 - t384;
t231 = t286 * t323 - t373;
t230 = -t416 - t418;
t225 = t321 * t297 - t323 * t341;
t224 = -t297 * t323 - t321 * t341;
t219 = t262 * t323 - t451;
t218 = t321 * t262 + t447;
t217 = -t280 - t418;
t206 = t351 + t383;
t205 = (-t281 * t318 + t282 * t316) * t298;
t204 = t250 * t318 - t282 * t379;
t203 = t281 * t378 + t316 * t351;
t189 = t251 * t318 - t391;
t188 = -t252 * t316 + t453;
t179 = -t234 * t316 - t390;
t178 = t234 * t318 - t391;
t165 = t230 * t318 - t454;
t164 = t230 * t316 + t453;
t160 = -t210 * t316 - t211 * t318;
t159 = -t206 * t318 - t316 * t434;
t158 = t210 * t318 - t211 * t316;
t148 = -t176 + t382;
t131 = t179 * t323 + t321 * t434;
t130 = t321 * t179 - t323 * t434;
t125 = t165 * t323 + t321 * t206;
t124 = t321 * t165 - t206 * t323;
t123 = t160 * t323 + t321 * t217;
t122 = t321 * t160 - t217 * t323;
t116 = -qJ(4) * t178 + t395;
t113 = -qJ(4) * t164 + t396;
t92 = t136 * t318 + t137 * t316;
t89 = -pkin(3) * t178 + t112;
t88 = -pkin(3) * t164 + t111;
t80 = t403 + t496;
t75 = t404 - t473;
t72 = t321 * t148 + t483;
t70 = -t148 * t323 + t484;
t68 = -pkin(4) * t433 + t404 - t495;
t67 = t329 + (pkin(5) * t292 - 0.2e1 * qJD(6)) * t240;
t66 = -pkin(4) * t147 - t403 + t474;
t65 = t321 * t147 + t483;
t63 = -t147 * t323 + t484;
t59 = -qJ(4) * t158 - t73;
t49 = t328 + (-t148 - t382) * pkin(5);
t48 = -pkin(5) * t382 + t328 + t455;
t41 = -qJ(6) * t162 + t43;
t39 = (-t162 - t417) * pkin(5) + t343;
t38 = -t148 * t406 - t320 * t49 - t473;
t37 = -pkin(5) * t399 + t322 * t48 - t496;
t36 = t504 + t52;
t35 = t148 * t354 + t322 * t49 + t474;
t34 = t495 + t320 * t48 + (pkin(4) + t410) * t433;
t33 = -t316 * t68 + t318 * t80 + t505;
t32 = t482 + t51;
t31 = -t342 + t40;
t28 = -t316 * t66 + t318 * t75 - t488;
t27 = -t330 + t482;
t26 = -pkin(4) * t117 + pkin(8) * t30;
t25 = -0.2e1 * t366 - t428 - t504;
t24 = -t29 - t456;
t23 = t320 * t43 + t322 * t42;
t22 = t320 * t42 - t322 * t43;
t21 = t30 + t465;
t20 = -t320 * t39 + t322 * t41 - t456;
t19 = t320 * t41 + t322 * t39 + t465;
t18 = -t316 * t35 + t318 * t38 - t488;
t17 = t30 * t318 - t408;
t16 = t30 * t316 + t407;
t15 = -t316 * t34 + t318 * t37 - t505;
t14 = -pkin(8) * t22 + (pkin(5) * t320 - t406) * t67;
t13 = t321 * t117 + t17 * t323;
t12 = -t117 * t323 + t321 * t17;
t11 = -t22 * t316 + t23 * t318;
t10 = t22 * t318 + t23 * t316;
t9 = pkin(8) * t23 + (t354 - t410) * t67;
t8 = t11 * t323 + t321 * t67;
t7 = t321 * t11 - t323 * t67;
t6 = -pkin(3) * t16 - pkin(4) * t29;
t5 = -t21 * t316 + t24 * t318 - t472;
t4 = -t19 * t316 + t20 * t318 - t472;
t3 = -pkin(8) * t407 - qJ(4) * t16 - t26 * t316;
t2 = -pkin(3) * t10 - pkin(4) * t22 - t346;
t1 = -qJ(4) * t10 + t14 * t318 - t316 * t9;
t44 = [0, 0, 0, 0, 0, qJDD(1), t347, t335, 0, 0, t307, 0.2e1 * t317 * t362, 0, t309, 0, 0, -t442 * t319, t442 * t317, pkin(1) * t301 + qJ(2) * (t309 + t307) + t350, pkin(1) * t293 + qJ(2) * t350, t317 * (t270 * t323 - t321 * t364) + t319 * (t321 * t270 + t323 * t364), t317 * (-t268 * t323 + t321 * t271) + t319 * (-t321 * t268 - t271 * t323), t317 * (-t321 * t285 + t447) + t319 * (t285 * t323 + t451), t317 * (t323 * t365 + t372) + t319 * (t321 * t365 - t258), t317 * (t284 * t323 - t373) + t319 * (t321 * t284 + t384), (t317 * (-t298 * t323 + t300 * t321) + t319 * (-t298 * t321 - t300 * t323)) * qJD(3), t317 * (-pkin(7) * t218 - t386) + t319 * (-pkin(2) * t268 + pkin(7) * t219 + t385) - pkin(1) * t268 + qJ(2) * (-t218 * t317 + t219 * t319), t317 * (-pkin(7) * t231 - t385) + t319 * (pkin(2) * t271 + pkin(7) * t232 - t386) + pkin(1) * t271 + qJ(2) * (-t231 * t317 + t232 * t319), t317 * (-pkin(7) * t224 - t156) + t319 * (-pkin(2) * t244 + pkin(7) * t225 + t157) - pkin(1) * t244 + qJ(2) * (-t224 * t317 + t225 * t319), -pkin(7) * t397 + t319 * (pkin(2) * t264 + pkin(7) * t157) + pkin(1) * t264 + qJ(2) * (t157 * t319 - t397), t317 * (t204 * t323 + t357) + t319 * (t321 * t204 - t359), t317 * (t159 * t323 - t321 * t241) + t319 * (t321 * t159 + t241 * t323), t317 * (t188 * t323 - t321 * t210) + t319 * (t321 * t188 + t210 * t323), t317 * (t203 * t323 - t357) + t319 * (t321 * t203 + t359), t317 * (t189 * t323 - t321 * t211) + t319 * (t321 * t189 + t211 * t323), t317 * (t205 * t323 + t372) + t319 * (t205 * t321 - t258), t317 * (-pkin(7) * t124 + t113 * t323 - t321 * t88) + t319 * (-pkin(2) * t164 + pkin(7) * t125 + t321 * t113 + t323 * t88) - pkin(1) * t164 + qJ(2) * (-t124 * t317 + t125 * t319), t317 * (-pkin(7) * t130 + t116 * t323 - t321 * t89) + t319 * (-pkin(2) * t178 + pkin(7) * t131 + t321 * t116 + t323 * t89) - pkin(1) * t178 + qJ(2) * (-t130 * t317 + t131 * t319), t317 * (-pkin(7) * t122 + t323 * t59) + t319 * (pkin(7) * t123 + t321 * t59) + qJ(2) * (-t122 * t317 + t123 * t319) + (pkin(3) * t377 + t319 * t355 - pkin(1)) * t158, (t317 * (pkin(3) * t321 - qJ(4) * t323) + t319 * (-qJ(4) * t321 + t355) - pkin(1)) * t73 + t437 * (-t317 * (-t174 * t323 + t321 * t74) + t319 * (t321 * t174 + t323 * t74)), t331, -t500, t492, t439, t508, t438, t317 * (-pkin(7) * t63 + t28 * t323 - t321 * t32) + t319 * (pkin(7) * t65 + t321 * t28 + t32 * t323 - t490) - t491 + qJ(2) * (-t317 * t63 + t319 * t65), t317 * (-t321 * t36 + t323 * t33 - t511) + t319 * (t321 * t33 + t323 * t36 - t510) - t512, t317 * (-t321 * t40 + t323 * t5 - t489) + t319 * (t321 * t5 + t323 * t40 + t481) + t478, t317 * (-pkin(7) * t12 + t3 * t323 - t321 * t6) + t319 * (-pkin(2) * t16 + pkin(7) * t13 + t321 * t3 + t323 * t6) - pkin(1) * t16 + qJ(2) * (-t12 * t317 + t13 * t319), t331, t492, t500, t438, -t508, t439, t317 * (-pkin(7) * t70 + t18 * t323 - t321 * t27) + t319 * (pkin(7) * t72 + t321 * t18 + t27 * t323 - t490) - t491 + qJ(2) * (-t317 * t70 + t319 * t72), t317 * (-t321 * t31 + t323 * t4 - t489) + t319 * (t31 * t323 + t321 * t4 + t481) + t478, t317 * (t15 * t323 - t321 * t25 + t511) + t319 * (t321 * t15 + t25 * t323 + t510) + t512, t317 * (-pkin(7) * t7 + t1 * t323 - t321 * t2) + t319 * (-pkin(2) * t10 + pkin(7) * t8 + t321 * t1 + t2 * t323) - pkin(1) * t10 + qJ(2) * (-t317 * t7 + t319 * t8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t362, t363, -t301, -t293, 0, 0, 0, 0, 0, 0, t268, -t271, t244, -t264, 0, 0, 0, 0, 0, 0, t164, t178, t158, t73, 0, 0, 0, 0, 0, 0, t460, -t76, t440, t16, 0, 0, 0, 0, 0, 0, t460, t440, t76, t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t274, t296 - t416, t297, -t274, -t341, qJDD(3), -t199, -t200, 0, 0, t250 * t316 + t282 * t378, -t206 * t316 + t318 * t434, t252 * t318 + t454, t281 * t379 - t318 * t351, t251 * t316 + t390, (-t281 * t316 - t282 * t318) * t298, -pkin(3) * t206 + qJ(4) * t165 - t395, -pkin(3) * t434 + qJ(4) * t179 + t396, -pkin(3) * t217 + qJ(4) * t160 + t74, -pkin(3) * t174 + qJ(4) * t74, t92, -t493, t480, t420, -t494, t423, -pkin(3) * t147 + t316 * t75 + t318 * t66 + t487, t316 * t80 + t318 * t68 - t503, t21 * t318 + t24 * t316 + t464, -pkin(3) * t117 - pkin(8) * t408 + qJ(4) * t17 + t26 * t318, t92, t480, t493, t423, t494, t420, -pkin(3) * t148 + t316 * t38 + t318 * t35 + t487, t19 * t318 + t20 * t316 + t464, t316 * t37 + t318 * t34 + t503, -pkin(3) * t67 + qJ(4) * t11 + t14 * t316 + t318 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t206, t434, t217, t174, 0, 0, 0, 0, 0, 0, t147, t433, t162, t117, 0, 0, 0, 0, 0, 0, t148, t162, -t433, t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t387, -t193, t431, -t387, t334, t261, -t51, -t52, 0, 0, t387, t431, t193, t261, -t334, -t387, t330, t342, t283 + t428, t346; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t432, t431, t436, t43;];
tauJ_reg  = t44;
