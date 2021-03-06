% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRRP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% tau_reg [6x35]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRP4_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP4_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP4_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP4_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP4_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP4_invdynJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:15:51
% EndTime: 2019-03-10 01:16:10
% DurationCPUTime: 9.66s
% Computational Cost: add. (15850->606), mult. (34519->759), div. (0->0), fcn. (25626->14), ass. (0->328)
t293 = cos(qJ(2));
t296 = -pkin(8) - pkin(7);
t248 = t296 * t293;
t229 = qJD(1) * t248;
t289 = sin(qJ(3));
t211 = t289 * t229;
t290 = sin(qJ(2));
t246 = t296 * t290;
t227 = qJD(1) * t246;
t465 = cos(qJ(3));
t158 = t227 * t465 + t211;
t367 = qJD(3) * t465;
t503 = -pkin(2) * t367 + t158;
t409 = t289 * t293;
t225 = t290 * t465 + t409;
t282 = qJD(2) + qJD(3);
t163 = t282 * t225;
t375 = t465 * t293;
t388 = t290 * qJDD(1);
t121 = qJD(1) * t163 - qJDD(1) * t375 + t289 * t388;
t120 = qJDD(4) + t121;
t118 = qJDD(5) + t120;
t368 = qJD(1) * t465;
t394 = qJD(1) * t290;
t206 = t289 * t394 - t293 * t368;
t208 = -qJD(1) * t409 - t290 * t368;
t149 = -pkin(3) * t208 + pkin(9) * t206;
t134 = pkin(2) * t394 + t149;
t288 = sin(qJ(4));
t292 = cos(qJ(4));
t502 = -t292 * t134 + t288 * t503;
t501 = t288 * t134 + t292 * t503;
t392 = qJD(4) * t288;
t428 = t206 * t288;
t500 = t392 + t428;
t269 = pkin(2) * t289 + pkin(9);
t452 = -pkin(10) - t269;
t361 = qJD(4) * t452;
t386 = pkin(10) * t428;
t499 = -t288 * t361 + t386 + t501;
t427 = t206 * t292;
t354 = -t208 * pkin(4) + pkin(10) * t427;
t498 = t292 * t361 - t354 + t502;
t295 = -pkin(10) - pkin(9);
t377 = qJD(4) * t295;
t445 = qJD(2) * pkin(2);
t213 = t227 + t445;
t154 = t213 * t465 + t211;
t399 = t288 * t149 + t292 * t154;
t497 = -t288 * t377 + t386 + t399;
t140 = t292 * t149;
t496 = t154 * t288 + t292 * t377 - t140 - t354;
t287 = sin(qJ(5));
t464 = cos(qJ(5));
t374 = t464 * t288;
t224 = t287 * t292 + t374;
t471 = qJD(4) + qJD(5);
t161 = t471 * t224;
t493 = t224 * t206 + t161;
t413 = t287 * t288;
t328 = t464 * t292 - t413;
t365 = t464 * qJD(5);
t476 = t464 * qJD(4) + t365;
t492 = t328 * t206 + t292 * t476 - t413 * t471;
t170 = t288 * t208 + t282 * t292;
t171 = -t208 * t292 + t282 * t288;
t106 = -t464 * t170 + t171 * t287;
t135 = -t282 * pkin(3) - t154;
t103 = -t170 * pkin(4) + t135;
t331 = t287 * t170 + t171 * t464;
t48 = t106 * pkin(5) - qJ(6) * t331 + t103;
t495 = t106 * t48;
t494 = t103 * t106;
t439 = t331 * t106;
t479 = t500 * pkin(4);
t286 = qJ(2) + qJ(3);
t277 = sin(t286);
t294 = cos(qJ(1));
t419 = t277 * t294;
t291 = sin(qJ(1));
t420 = t277 * t291;
t491 = g(1) * t419 + g(2) * t420;
t332 = -t289 * t290 + t375;
t162 = t282 * t332;
t391 = qJD(4) * t292;
t490 = t162 * t288 + t225 * t391;
t466 = t331 ^ 2;
t489 = -t106 ^ 2 + t466;
t201 = qJD(4) + t206;
t192 = qJD(5) + t201;
t281 = qJDD(2) + qJDD(3);
t303 = t162 * qJD(1);
t301 = t225 * qJDD(1) + t303;
t300 = qJD(4) * t170 + t288 * t281 + t301 * t292;
t382 = -t208 * t391 + t282 * t392 + t288 * t301;
t343 = t292 * t281 - t382;
t390 = qJD(5) * t287;
t33 = -t170 * t365 + t171 * t390 - t287 * t343 - t464 * t300;
t20 = t106 * t192 - t33;
t62 = pkin(5) * t331 + qJ(6) * t106;
t488 = t201 ^ 2;
t214 = t452 * t288;
t280 = t292 * pkin(10);
t215 = t269 * t292 + t280;
t330 = t214 * t464 - t287 * t215;
t486 = -qJD(5) * t330 - t498 * t287 + t464 * t499;
t148 = t287 * t214 + t215 * t464;
t485 = -qJD(5) * t148 + t287 * t499 + t498 * t464;
t484 = pkin(5) * t493 - qJ(6) * t492 - qJD(6) * t224 + t479;
t245 = t295 * t288;
t247 = pkin(9) * t292 + t280;
t329 = t245 * t464 - t287 * t247;
t483 = -qJD(5) * t329 - t287 * t496 + t464 * t497;
t174 = t287 * t245 + t247 * t464;
t482 = -qJD(5) * t174 + t287 * t497 + t464 * t496;
t115 = t118 * qJ(6);
t185 = t192 * qJD(6);
t481 = t115 + t185;
t212 = t465 * t229;
t157 = t289 * t227 - t212;
t393 = qJD(3) * t289;
t480 = -pkin(2) * t393 + t157;
t453 = t293 * pkin(2);
t273 = pkin(1) + t453;
t477 = -pkin(9) * t225 - t273;
t371 = t225 * t392;
t434 = t162 * t292;
t475 = -t371 + t434;
t406 = t292 * t120;
t474 = t201 * t392 - t406;
t473 = t465 * t246 + t289 * t248;
t350 = g(1) * t294 + g(2) * t291;
t279 = cos(t286);
t404 = t292 * t294;
t411 = t288 * t291;
t196 = t279 * t411 + t404;
t407 = t291 * t292;
t410 = t288 * t294;
t198 = -t279 * t410 + t407;
t472 = -g(1) * t198 + g(2) * t196;
t116 = t118 * pkin(5);
t470 = t116 - qJDD(6);
t34 = t170 * t390 + t171 * t365 + t287 * t300 - t464 * t343;
t469 = t192 * t331 - t34;
t285 = qJ(4) + qJ(5);
t276 = sin(t285);
t278 = cos(t285);
t416 = t279 * t291;
t181 = t276 * t416 + t278 * t294;
t403 = t294 * t276;
t408 = t291 * t278;
t183 = t279 * t403 - t408;
t244 = t273 * qJD(1);
t132 = pkin(3) * t206 + pkin(9) * t208 - t244;
t155 = t289 * t213 - t212;
t136 = pkin(9) * t282 + t155;
t389 = qJD(1) * qJD(2);
t364 = t290 * t389;
t264 = pkin(2) * t364;
t66 = t121 * pkin(3) - pkin(9) * t303 + qJDD(1) * t477 + t264;
t348 = -t136 * t391 + t292 * t66;
t363 = t293 * t389;
t167 = qJDD(2) * pkin(2) - t296 * (-t363 - t388);
t387 = t293 * qJDD(1);
t169 = t296 * (-t364 + t387);
t309 = t289 * t167 - t169 * t465 + t213 * t367 + t229 * t393;
t76 = t281 * pkin(9) + t309;
t13 = t120 * pkin(4) - pkin(10) * t300 - t132 * t392 - t288 * t76 + t348;
t326 = t132 * t391 - t136 * t392 + t288 * t66 + t292 * t76;
t18 = pkin(10) * t343 + t326;
t93 = t292 * t132 - t136 * t288;
t68 = -pkin(10) * t171 + t93;
t59 = pkin(4) * t201 + t68;
t94 = t288 * t132 + t292 * t136;
t69 = pkin(10) * t170 + t94;
t359 = -t464 * t13 + t287 * t18 + t69 * t365 + t59 * t390;
t423 = t276 * t277;
t320 = g(1) * t183 + g(2) * t181 + g(3) * t423 - t359;
t307 = t331 * t48 - t320 - t470;
t468 = -t103 * t331 + t320;
t378 = qJD(2) * t296;
t228 = t290 * t378;
t230 = t293 * t378;
t113 = qJD(3) * t473 + t465 * t228 + t289 * t230;
t153 = -pkin(3) * t332 + t477;
t175 = t289 * t246 - t248 * t465;
t168 = t292 * t175;
t384 = t290 * t445;
t102 = pkin(3) * t163 - pkin(9) * t162 + t384;
t99 = t292 * t102;
t24 = -pkin(10) * t434 + pkin(4) * t163 - t113 * t288 + t99 + (-t168 + (pkin(10) * t225 - t153) * t288) * qJD(4);
t325 = t288 * t102 + t292 * t113 + t153 * t391 - t175 * t392;
t30 = -pkin(10) * t490 + t325;
t144 = t292 * t153;
t424 = t225 * t292;
t83 = -pkin(4) * t332 - pkin(10) * t424 - t175 * t288 + t144;
t397 = t288 * t153 + t168;
t425 = t225 * t288;
t97 = -pkin(10) * t425 + t397;
t336 = t287 * t83 + t464 * t97;
t467 = -qJD(5) * t336 + t24 * t464 - t287 * t30;
t266 = g(3) * t277;
t458 = g(3) * t279;
t457 = g(3) * t288;
t456 = t208 * pkin(5);
t455 = t281 * pkin(3);
t454 = t292 * pkin(4);
t195 = t208 * qJ(6);
t449 = t195 - t486;
t448 = -t456 - t485;
t447 = -t480 + t484;
t446 = -t155 + t484;
t383 = t464 * t69;
t28 = t287 * t59 + t383;
t444 = t192 * t28;
t443 = t287 * t69;
t442 = t195 - t483;
t441 = -t456 - t482;
t36 = t464 * t68 - t443;
t440 = pkin(4) * t365 + qJD(6) - t36;
t438 = t135 * t206;
t437 = t330 * t118;
t436 = t148 * t118;
t433 = t171 * t201;
t432 = t329 * t118;
t431 = t174 * t118;
t430 = t192 * t208;
t429 = t201 * t208;
t426 = t208 * t206;
t422 = t276 * t279;
t421 = t277 * t278;
t418 = t277 * t295;
t417 = t278 * t279;
t271 = pkin(3) + t454;
t238 = t279 * t271;
t415 = t279 * t294;
t414 = t279 * t295;
t412 = t288 * t120;
t405 = t292 * t170;
t27 = t464 * t59 - t443;
t402 = qJD(6) - t27;
t396 = t479 - t480;
t283 = t290 ^ 2;
t395 = -t293 ^ 2 + t283;
t385 = t465 * pkin(2);
t381 = pkin(5) * t417 + qJ(6) * t422 + t238;
t380 = g(3) * t422 - t276 * t491;
t379 = g(1) * t415 + g(2) * t416 + t266;
t126 = t135 * t392;
t127 = t135 * t391;
t356 = -t465 * t167 - t289 * t169 + t213 * t393 - t229 * t367;
t77 = t356 - t455;
t369 = -t77 - t458;
t362 = pkin(4) * t288 - t296;
t360 = t287 * t13 + t464 * t18 + t59 * t365 - t69 * t390;
t358 = -qJD(4) * t132 - t76;
t272 = -t385 - pkin(3);
t35 = t287 * t68 + t383;
t355 = pkin(4) * t390 - t35;
t353 = -t155 + t479;
t352 = -g(1) * t181 + g(2) * t183;
t182 = t279 * t408 - t403;
t184 = t276 * t291 + t278 * t415;
t351 = g(1) * t182 - g(2) * t184;
t349 = g(1) * t291 - g(2) * t294;
t345 = -g(3) * t417 + t278 * t491;
t344 = t93 * t208 + t292 * t491 + t126;
t133 = pkin(4) * t425 - t473;
t341 = pkin(5) * t278 + qJ(6) * t276 + t271;
t338 = -t287 * t97 + t464 * t83;
t335 = -0.2e1 * pkin(1) * t389 - pkin(7) * qJDD(2);
t334 = t238 + t273 - t418;
t333 = t287 * t24 + t464 * t30 + t83 * t365 - t390 * t97;
t114 = t289 * t228 - t230 * t465 + t246 * t393 - t248 * t367;
t150 = -pkin(5) * t328 - t224 * qJ(6) - t271;
t73 = pkin(4) * t490 + t114;
t321 = g(1) * t184 + g(2) * t182 + g(3) * t421 - t360;
t297 = qJD(2) ^ 2;
t319 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t297 + t349;
t298 = qJD(1) ^ 2;
t318 = pkin(1) * t298 - pkin(7) * qJDD(1) + t350;
t47 = -pkin(4) * t343 + t77;
t10 = t34 * pkin(5) + t33 * qJ(6) - qJD(6) * t331 + t47;
t26 = t192 * qJ(6) + t28;
t317 = -t10 * t224 + t208 * t26 - t48 * t492 - t380;
t316 = t103 * t492 - t28 * t208 + t47 * t224 + t380;
t315 = -t244 * t208 - t356 - t458 + t491;
t2 = t360 + t481;
t25 = -t192 * pkin(5) + t402;
t4 = t359 - t470;
t314 = t2 * t328 + t4 * t224 + t25 * t492 - t26 * t493 - t379;
t312 = t192 * t27 + t321;
t311 = -t10 * t328 - t208 * t25 + t48 * t493 + t345;
t310 = t103 * t493 + t27 * t208 - t47 * t328 + t345;
t306 = -g(1) * (-t183 * pkin(5) + t184 * qJ(6)) - g(2) * (-t181 * pkin(5) + t182 * qJ(6)) - g(3) * (-pkin(5) * t423 + qJ(6) * t421);
t305 = t135 * t427 - t94 * t208 + t279 * t457 + t127 + (-t491 + t77) * t288;
t304 = -t244 * t206 - t309 + t379;
t299 = t300 * t292;
t270 = -pkin(4) * t464 - pkin(5);
t265 = pkin(4) * t287 + qJ(6);
t243 = t272 - t454;
t203 = -qJDD(1) * t273 + t264;
t199 = t279 * t404 + t411;
t197 = -t279 * t407 + t410;
t142 = t328 * t225;
t141 = t224 * t225;
t138 = -t385 + t150;
t123 = -t206 ^ 2 + t208 ^ 2;
t101 = -t208 * t282 - t121;
t100 = t206 * t282 + t301;
t65 = t141 * pkin(5) - t142 * qJ(6) + t133;
t54 = pkin(4) * t171 + t62;
t53 = t162 * t374 - t287 * t371 - t390 * t425 + (t162 * t287 + t225 * t476) * t292;
t52 = t161 * t225 - t162 * t328;
t51 = t171 * t208 + t292 * t488 + t412;
t50 = t170 * t208 - t288 * t488 + t406;
t49 = t433 * t292 + ((qJD(4) * t282 + t301) * t292 + (qJD(4) * t208 + t281) * t288) * t288;
t46 = pkin(5) * t332 - t338;
t45 = -qJ(6) * t332 + t336;
t32 = -t106 * t208 + t118 * t328 - t192 * t493;
t31 = t118 * t224 + t192 * t492 + t208 * t331;
t19 = t170 * t391 - t171 * t500 + t206 * t405 + t288 * t343 + t299;
t15 = -t224 * t33 + t331 * t492;
t14 = t53 * pkin(5) + t52 * qJ(6) - t142 * qJD(6) + t73;
t7 = -t163 * pkin(5) - t467;
t6 = qJ(6) * t163 - qJD(6) * t332 + t333;
t5 = -t106 * t492 - t224 * t34 - t328 * t33 - t331 * t493;
t1 = [qJDD(1), t349, t350, qJDD(1) * t283 + 0.2e1 * t290 * t363, 0.2e1 * t290 * t387 - 0.2e1 * t389 * t395, qJDD(2) * t290 + t293 * t297, qJDD(2) * t293 - t290 * t297, 0, t290 * t335 + t293 * t319, -t290 * t319 + t293 * t335, -t208 * t162 + t225 * t301, -t225 * t121 - t162 * t206 + t208 * t163 + t301 * t332, t162 * t282 + t225 * t281, -t163 * t282 + t281 * t332, 0, -t114 * t282 - t121 * t273 - t163 * t244 - t203 * t332 + t206 * t384 + t279 * t349 + t281 * t473, -g(1) * t420 + g(2) * t419 - t113 * t282 - t244 * t162 - t175 * t281 + t203 * t225 - t208 * t384 - t273 * t301, t171 * t475 + t225 * t299, t162 * t405 - t170 * t371 - t171 * t490 - t300 * t425 + t343 * t424, t171 * t163 + t201 * t475 + t225 * t406 - t300 * t332, t170 * t163 - t201 * t490 - t225 * t412 - t332 * t343, -t120 * t332 + t163 * t201 (-t175 * t391 + t99) * t201 + t144 * t120 - t348 * t332 + t93 * t163 - t114 * t170 + t473 * t343 + t225 * t127 - g(1) * t197 - g(2) * t199 + ((-qJD(4) * t153 - t113) * t201 - t175 * t120 - t358 * t332 + t77 * t225 + t135 * t162) * t288, -g(1) * t196 - g(2) * t198 + t114 * t171 - t120 * t397 - t126 * t225 + t135 * t434 - t94 * t163 - t201 * t325 - t300 * t473 + t326 * t332 + t424 * t77, -t142 * t33 - t331 * t52, t106 * t52 + t141 * t33 - t142 * t34 - t331 * t53, t118 * t142 + t163 * t331 - t192 * t52 + t33 * t332, -t106 * t163 - t118 * t141 - t192 * t53 + t332 * t34, -t118 * t332 + t163 * t192, t103 * t53 + t73 * t106 + t338 * t118 + t133 * t34 + t47 * t141 + t27 * t163 + t192 * t467 + t332 * t359 + t351, -t103 * t52 - t118 * t336 - t133 * t33 + t47 * t142 - t28 * t163 - t192 * t333 + t331 * t73 + t332 * t360 + t352, t10 * t141 + t106 * t14 - t118 * t46 - t163 * t25 - t192 * t7 + t332 * t4 + t34 * t65 + t48 * t53 + t351, -t106 * t6 - t141 * t2 + t142 * t4 - t25 * t52 - t26 * t53 + t277 * t349 - t33 * t46 + t331 * t7 - t34 * t45, -t10 * t142 + t118 * t45 - t14 * t331 + t163 * t26 + t192 * t6 - t2 * t332 + t33 * t65 + t48 * t52 - t352, t2 * t45 + t26 * t6 + t10 * t65 + t48 * t14 + t4 * t46 + t25 * t7 - g(1) * (-pkin(5) * t182 - qJ(6) * t181) - g(2) * (pkin(5) * t184 + qJ(6) * t183) + (-g(1) * t362 - g(2) * t334) * t294 + (g(1) * t334 - g(2) * t362) * t291; 0, 0, 0, -t290 * t298 * t293, t395 * t298, t388, t387, qJDD(2), -g(3) * t293 + t290 * t318, g(3) * t290 + t293 * t318, -t426, t123, t100, t101, t281, t157 * t282 + (-t206 * t394 + t281 * t465 - t282 * t393) * pkin(2) + t315, t158 * t282 + (t208 * t394 - t281 * t289 - t282 * t367) * pkin(2) + t304, t49, t19, t51, t50, t429, t272 * t382 + (-t272 * t281 + t369) * t292 + (-t269 * t120 + t438) * t288 + t480 * t170 + (-t269 * t391 + t502) * t201 + t344, -t480 * t171 + t201 * t501 + t474 * t269 + t272 * t300 + t305, t15, t5, t31, t32, t430, t396 * t106 + t192 * t485 + t243 * t34 + t310 + t437, t192 * t486 - t243 * t33 + t396 * t331 + t316 - t436, t106 * t447 + t138 * t34 - t192 * t448 + t311 + t437, -t106 * t449 - t148 * t34 + t33 * t330 + t331 * t448 + t314, t138 * t33 + t192 * t449 - t331 * t447 + t317 + t436, t2 * t148 + t10 * t138 - t4 * t330 - g(3) * (t381 - t418 + t453) + t447 * t48 + t449 * t26 + t448 * t25 + t350 * (pkin(2) * t290 + t277 * t341 + t414); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t426, t123, t100, t101, t281, t155 * t282 + t315, t154 * t282 + t304, t49, t19, t51, t50, t429, -pkin(3) * t382 - t140 * t201 + t155 * t170 + (-pkin(9) * t120 + t154 * t201 + t438) * t288 + (-qJD(4) * pkin(9) * t201 + t369 + t455) * t292 + t344, -pkin(3) * t300 + pkin(9) * t474 - t155 * t171 + t201 * t399 + t305, t15, t5, t31, t32, t430, t353 * t106 + t192 * t482 - t271 * t34 + t310 + t432, t192 * t483 + t271 * t33 + t353 * t331 + t316 - t431, t106 * t446 + t150 * t34 - t192 * t441 + t311 + t432, -t106 * t442 - t174 * t34 + t329 * t33 + t331 * t441 + t314, t150 * t33 + t192 * t442 - t331 * t446 + t317 + t431, t2 * t174 + t10 * t150 - t4 * t329 - g(3) * t381 + t446 * t48 + t350 * t414 + t442 * t26 + t441 * t25 + (g(3) * t295 + t341 * t350) * t277; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t171 * t170, -t170 ^ 2 + t171 ^ 2, -t170 * t201 + t300, t343 + t433, t120, -t135 * t171 + t201 * t94 + (t358 + t266) * t288 + t348 + t472, g(1) * t199 - g(2) * t197 - t135 * t170 + t201 * t93 + t266 * t292 - t326, t439, t489, t20, t469, t118, t35 * t192 + (-t106 * t171 + t118 * t464 - t192 * t390) * pkin(4) + t468, t494 + t36 * t192 + (-t118 * t287 - t171 * t331 - t192 * t365) * pkin(4) + t321, -t106 * t54 - t118 * t270 - t192 * t355 - t307, -t265 * t34 - t270 * t33 + (t26 + t355) * t331 + (-t440 + t25) * t106, t118 * t265 + t192 * t440 + t331 * t54 - t321 + t481 - t495, t2 * t265 + t4 * t270 - t48 * t54 - t25 * t35 + t440 * t26 + (t25 * t390 + t277 * t457 + t472) * pkin(4) + t306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t439, t489, t20, t469, t118, t444 + t468, t312 + t494, -t106 * t62 + t116 - t307 + t444, pkin(5) * t33 - qJ(6) * t34 + (t26 - t28) * t331 + (t25 - t402) * t106, t331 * t62 + 0.2e1 * t115 + 0.2e1 * t185 - t312 - t495, -t4 * pkin(5) + t2 * qJ(6) - t25 * t28 + t26 * t402 - t48 * t62 + t306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t439 - t118, t20, -t192 ^ 2 - t466, -t192 * t26 + t307;];
tau_reg  = t1;
