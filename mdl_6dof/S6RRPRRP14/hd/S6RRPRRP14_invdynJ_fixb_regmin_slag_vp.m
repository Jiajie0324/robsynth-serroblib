% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRPRRP14
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
% 
% Output:
% tau_reg [6x32]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 13:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRRP14_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP14_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP14_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP14_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP14_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP14_invdynJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 13:09:55
% EndTime: 2019-03-09 13:10:17
% DurationCPUTime: 10.28s
% Computational Cost: add. (10207->720), mult. (24322->908), div. (0->0), fcn. (18488->10), ass. (0->336)
t252 = cos(qJ(2));
t244 = sin(pkin(6));
t248 = sin(qJ(2));
t401 = qJD(1) * t248;
t372 = t244 * t401;
t245 = cos(pkin(6));
t402 = qJD(1) * t245;
t380 = pkin(1) * t402;
t408 = -pkin(8) * t372 + t252 * t380;
t387 = qJD(3) - t408;
t247 = sin(qJ(4));
t251 = cos(qJ(4));
t338 = pkin(4) * t251 + pkin(10) * t247;
t478 = qJD(4) * t338 - (-pkin(3) - t338) * t372 + t387;
t250 = cos(qJ(5));
t481 = t478 * t250;
t386 = qJD(1) * qJD(2);
t363 = t248 * t386;
t342 = t244 * t363;
t383 = qJDD(1) * t252;
t360 = t244 * t383;
t480 = t342 - t360;
t385 = qJDD(1) * t245;
t226 = qJDD(2) + t385;
t392 = qJD(4) * t252;
t367 = t244 * t392;
t310 = -qJD(1) * t367 + t226;
t228 = qJD(2) + t402;
t395 = qJD(4) * t228;
t70 = t310 * t247 + (t395 - t480) * t251;
t68 = qJDD(5) + t70;
t246 = sin(qJ(5));
t343 = t251 * t372;
t143 = t228 * t246 - t250 * t343;
t400 = qJD(1) * t252;
t371 = t244 * t400;
t426 = t228 * t247;
t151 = t251 * t371 + t426;
t147 = qJD(5) + t151;
t324 = qJD(4) + t372;
t153 = t228 * t251 - t247 * t371;
t97 = t250 * t153 + t246 * t324;
t302 = t324 * t97;
t391 = qJD(5) * t246;
t438 = t250 * t68;
t307 = -t147 * t391 + t438;
t393 = qJD(4) * t251;
t366 = t250 * t393;
t362 = t252 * t386;
t384 = qJDD(1) * t248;
t287 = t362 + t384;
t275 = t287 * t244;
t268 = qJDD(4) + t275;
t298 = t250 * t324;
t365 = t251 * t392;
t398 = qJD(2) * t248;
t368 = t247 * t398;
t278 = -t365 + t368;
t394 = qJD(4) * t247;
t413 = t251 * t226;
t300 = t228 * t394 - t413;
t359 = t247 * t383;
t475 = (qJD(1) * t278 - t359) * t244 - t300;
t33 = -qJD(5) * t298 + t153 * t391 - t246 * t268 - t250 * t475;
t435 = t251 * t33;
t479 = t247 * (t302 - t307) - (-t143 + t366) * t147 + t435;
t254 = -pkin(2) - pkin(9);
t424 = t244 * t248;
t381 = g(3) * t424;
t249 = sin(qJ(1));
t414 = t249 * t252;
t253 = cos(qJ(1));
t415 = t248 * t253;
t181 = t245 * t415 + t414;
t412 = t252 * t253;
t417 = t248 * t249;
t183 = -t245 * t417 + t412;
t473 = -g(1) * t183 - g(2) * t181;
t276 = -t473 + t381;
t472 = qJD(4) * t324;
t204 = t226 * qJ(3);
t205 = t228 * qJD(3);
t379 = pkin(1) * qJD(2) * t245;
t348 = qJD(1) * t379;
t378 = pkin(1) * t385;
t346 = t480 * pkin(8) - t248 * t378 - t252 * t348;
t71 = -t204 - t205 + t346;
t280 = pkin(3) * t360 - t71;
t54 = -pkin(3) * t342 + t280;
t476 = -t254 * t472 - t276 + t54;
t241 = t244 ^ 2;
t382 = 0.2e1 * t241;
t297 = t153 * t324;
t337 = pkin(4) * t247 - pkin(10) * t251;
t191 = qJ(3) + t337;
t418 = t247 * t250;
t407 = t246 * t191 + t254 * t418;
t431 = qJD(5) * t97;
t34 = t246 * t475 - t250 * t268 + t431;
t390 = qJD(5) * t250;
t224 = pkin(2) * t372;
t432 = qJ(3) * t252;
t325 = pkin(9) * t248 - t432;
t403 = qJD(1) * t244;
t136 = t325 * t403 + t224;
t220 = pkin(8) * t371;
t170 = t248 * t380 + t220;
t138 = pkin(3) * t371 + t170;
t409 = t251 * t136 + t247 * t138;
t62 = pkin(10) * t371 + t409;
t474 = -t191 * t390 - t478 * t246 + t250 * t62 - t254 * t366;
t388 = pkin(3) * t372 + t387;
t357 = -qJ(3) * t248 - pkin(1);
t314 = -pkin(2) * t252 + t357;
t141 = t314 * t403;
t471 = t141 * t372 + qJDD(3);
t182 = t245 * t414 + t415;
t423 = t244 * t249;
t124 = -t182 * t251 + t247 * t423;
t422 = t244 * t252;
t178 = t245 * t247 + t251 * t422;
t180 = -t245 * t412 + t417;
t421 = t244 * t253;
t304 = t180 * t251 + t247 * t421;
t283 = g(1) * t124 - g(2) * t304 + g(3) * t178;
t284 = t252 * t254 + t357;
t109 = t284 * t403;
t89 = t228 * t254 + t388;
t44 = -t247 * t109 + t251 * t89;
t37 = -pkin(4) * t324 - t44;
t95 = t153 * t246 - t298;
t21 = t95 * pkin(5) - t97 * qJ(6) + t37;
t463 = pkin(10) * t68;
t470 = t147 * t21 - t463;
t305 = -t180 * t247 + t251 * t421;
t76 = t181 * t250 + t246 * t305;
t77 = -t181 * t246 + t250 * t305;
t370 = t244 * t398;
t219 = pkin(2) * t370;
t396 = qJD(3) * t248;
t270 = qJD(2) * t325 - t396;
t108 = t244 * t270 + t219;
t230 = pkin(8) * t424;
t373 = -pkin(1) * t252 - pkin(2);
t113 = pkin(3) * t424 + t230 + (-pkin(9) + t373) * t245;
t406 = pkin(2) * t422 + qJ(3) * t424;
t460 = pkin(9) * t252;
t133 = (-pkin(1) - t460) * t244 - t406;
t462 = pkin(1) * t248;
t236 = t245 * t462;
t465 = pkin(3) + pkin(8);
t139 = (t422 * t465 + t236) * qJD(2);
t285 = t251 * t108 + t113 * t393 - t133 * t394 + t247 * t139;
t397 = qJD(2) * t252;
t369 = t244 * t397;
t27 = pkin(10) * t369 + t285;
t410 = t247 * t113 + t251 * t133;
t58 = pkin(10) * t424 + t410;
t405 = pkin(8) * t422 + t236;
t157 = -t245 * qJ(3) - t405;
t132 = pkin(3) * t422 - t157;
t375 = t247 * t422;
t179 = t245 * t251 - t375;
t66 = pkin(4) * t178 - pkin(10) * t179 + t132;
t320 = t246 * t66 + t250 * t58;
t223 = t252 * t379;
t238 = t245 * qJD(3);
t112 = -t370 * t465 + t223 + t238;
t120 = -qJD(4) * t178 + t244 * t368;
t121 = t245 * t393 - t247 * t367 - t251 * t370;
t40 = pkin(4) * t121 - pkin(10) * t120 + t112;
t468 = -qJD(5) * t320 - t246 * t27 + t250 * t40;
t467 = t97 ^ 2;
t466 = t147 ^ 2;
t464 = pkin(5) * t68;
t461 = pkin(2) * t226;
t454 = t97 * t95;
t88 = pkin(4) * t153 + pkin(10) * t151;
t453 = t246 * t88 + t250 * t44;
t364 = t254 * t391;
t451 = (qJD(6) - t364) * t247 - t474 + (t343 + t393) * qJ(6);
t419 = t246 * t254;
t356 = -pkin(5) + t419;
t450 = -pkin(5) * t343 + t407 * qJD(5) - t246 * t62 + t356 * t393 - t481;
t344 = t247 * t372;
t144 = t246 * t344 - t250 * t371;
t416 = t248 * t250;
t155 = (t246 * t252 + t247 * t416) * t244;
t145 = qJD(1) * t155;
t326 = pkin(5) * t246 - qJ(6) * t250;
t309 = -t254 + t326;
t327 = pkin(5) * t250 + qJ(6) * t246;
t353 = -t247 * t136 + t138 * t251;
t61 = -pkin(4) * t371 - t353;
t449 = -pkin(5) * t144 + qJ(6) * t145 - t61 + (qJD(5) * t327 - qJD(6) * t250) * t251 - t309 * t394;
t448 = pkin(10) * qJD(5);
t447 = qJ(6) * t68;
t45 = t251 * t109 + t247 * t89;
t38 = pkin(10) * t324 + t45;
t206 = t228 * qJ(3);
t106 = t206 + t138;
t46 = pkin(4) * t151 - pkin(10) * t153 + t106;
t20 = t246 * t46 + t250 * t38;
t14 = qJ(6) * t147 + t20;
t446 = t14 * t147;
t445 = t147 * t20;
t444 = t147 * t95;
t443 = t246 * t33;
t442 = t246 * t68;
t441 = t246 * t95;
t440 = t246 * t97;
t439 = t250 * t34;
t437 = t250 * t95;
t436 = t250 * t97;
t434 = t97 * t147;
t433 = -qJD(6) * t246 + t147 * t326 - t45;
t428 = t191 * t250;
t427 = t226 * t245;
t425 = t241 * qJD(1) ^ 2;
t420 = t246 * t247;
t19 = -t246 * t38 + t250 * t46;
t411 = qJD(6) - t19;
t242 = t248 ^ 2;
t404 = -t252 ^ 2 + t242;
t399 = qJD(2) * t247;
t389 = qJD(2) - t228;
t377 = t252 * t425;
t376 = t246 * t424;
t361 = t244 * t384;
t345 = -pkin(8) * t361 - qJD(2) * t220 - t248 * t348 + t252 * t378;
t318 = qJDD(3) - t345;
t50 = pkin(3) * t275 + t226 * t254 + t318;
t198 = pkin(2) * t342;
t59 = t198 + (qJD(1) * t270 + qJDD(1) * t284) * t244;
t299 = t109 * t394 - t247 * t50 - t251 * t59 - t89 * t393;
t11 = pkin(10) * t268 - t299;
t17 = t300 * pkin(10) + t70 * pkin(4) + (pkin(10) * t359 + (-pkin(3) * t398 - pkin(10) * t278) * qJD(1)) * t244 + t280;
t358 = t246 * t11 - t250 * t17 + t38 * t390 + t46 * t391;
t355 = t109 * t393 + t247 * t59 - t251 * t50 + t89 * t394;
t354 = t113 * t251 - t247 * t133;
t352 = t147 * t250;
t351 = t228 + t402;
t350 = 0.2e1 * t362;
t349 = t226 + t385;
t347 = t248 * t377;
t125 = t182 * t247 + t251 * t423;
t74 = t125 * t246 - t183 * t250;
t340 = g(1) * t76 + g(2) * t74;
t75 = t125 * t250 + t183 * t246;
t339 = -g(1) * t77 - g(2) * t75;
t336 = g(1) * t304 + g(2) * t124;
t335 = g(1) * t180 - g(2) * t182;
t333 = g(1) * t253 + g(2) * t249;
t330 = t246 * t394 + t144;
t329 = t250 * t394 + t145;
t123 = t179 * t250 + t376;
t306 = -t179 * t246 + t244 * t416;
t328 = pkin(5) * t306 + qJ(6) * t123;
t13 = -pkin(5) * t147 + t411;
t323 = t13 * t250 - t14 * t246;
t322 = t13 * t246 + t14 * t250;
t319 = -t246 * t58 + t250 * t66;
t158 = -pkin(1) * t244 - t406;
t317 = qJD(2) * (-qJD(1) * t158 - t141);
t316 = -pkin(8) * t370 + t223;
t315 = -t247 * t108 - t113 * t394 - t133 * t393 + t139 * t251;
t313 = pkin(4) + t327;
t312 = -g(1) * t182 - g(2) * t180 + g(3) * t422;
t311 = t253 * pkin(1) + t183 * pkin(2) + pkin(8) * t423 + qJ(3) * t182;
t308 = -t147 * t390 - t442;
t3 = t250 * t11 + t246 * t17 - t38 * t391 + t46 * t390;
t303 = t246 * t40 + t250 * t27 + t66 * t390 - t391 * t58;
t301 = t147 * t37 - t463;
t296 = t324 * t251;
t295 = -qJ(3) * t397 - t396;
t140 = t244 * t295 + t219;
t72 = t198 + (qJD(1) * t295 + qJDD(1) * t314) * t244;
t294 = qJD(1) * t140 + qJDD(1) * t158 + t72;
t154 = t247 * t376 - t250 * t422;
t91 = t180 * t250 + t181 * t420;
t93 = t182 * t250 + t183 * t420;
t289 = g(1) * t93 + g(2) * t91 + g(3) * t154;
t92 = -t180 * t246 + t181 * t418;
t94 = -t182 * t246 + t183 * t418;
t288 = -g(1) * t94 - g(2) * t92 - g(3) * t155;
t286 = t363 - t383;
t57 = -pkin(4) * t424 - t354;
t282 = -g(1) * t125 + g(2) * t305 - g(3) * t179;
t281 = -pkin(1) * t249 - t181 * pkin(2) + pkin(8) * t421 - qJ(3) * t180;
t171 = t405 * qJD(2);
t279 = -g(1) * t181 + g(2) * t183 + t171 * t228;
t277 = t324 * t403;
t274 = t473 - t346;
t272 = -t312 + t345;
t271 = (t389 * t400 + t384) * t244;
t28 = -pkin(4) * t369 - t315;
t269 = g(1) * t74 - g(2) * t76 - g(3) * t306 - t358;
t267 = t147 * t448 - t283;
t12 = -pkin(4) * t268 + t355;
t5 = t34 * pkin(5) + t33 * qJ(6) - t97 * qJD(6) + t12;
t266 = -t267 - t5;
t150 = t251 * t268;
t1 = qJD(6) * t147 + t3 + t447;
t2 = qJDD(6) + t358 - t464;
t265 = qJD(5) * t323 + t1 * t250 + t2 * t246;
t264 = t170 * t228 + t272;
t263 = -g(1) * t75 + g(2) * t77 - g(3) * t123 + t3;
t261 = t21 * t97 + qJDD(6) - t269;
t259 = -t248 * t277 - t472;
t142 = t228 * t250 + t246 * t343;
t258 = -t68 * t420 - t251 * t34 + (-t246 * t393 - t247 * t390 - t142) * t147 + (t344 + t394) * t95;
t257 = t247 * t259 + t150;
t174 = t182 * pkin(2);
t172 = t180 * pkin(2);
t168 = -qJ(3) * t371 + t224;
t159 = t245 * t373 + t230;
t156 = t309 * t251;
t146 = -t238 - t316;
t135 = t247 * t356 - t428;
t134 = -t206 - t170;
t131 = qJ(6) * t247 + t407;
t130 = -pkin(2) * t228 + t387;
t84 = t318 - t461;
t56 = qJD(5) * t306 + t120 * t250 + t246 * t369;
t55 = qJD(5) * t123 + t120 * t246 - t250 * t369;
t47 = pkin(5) * t97 + qJ(6) * t95;
t32 = -t328 + t57;
t25 = -pkin(5) * t178 - t319;
t24 = qJ(6) * t178 + t320;
t23 = -pkin(5) * t153 + t246 * t44 - t250 * t88;
t22 = qJ(6) * t153 + t453;
t18 = -t33 + t444;
t8 = pkin(5) * t55 - qJ(6) * t56 - qJD(6) * t123 + t28;
t7 = -pkin(5) * t121 - t468;
t6 = qJ(6) * t121 + qJD(6) * t178 + t303;
t4 = [qJDD(1), g(1) * t249 - g(2) * t253, t333 (qJDD(1) * t242 + t248 * t350) * t241 (t248 * t383 - t386 * t404) * t382 (t248 * t349 + t351 * t397) * t244 (t252 * t349 - t351 * t398) * t244, t427, -t230 * t226 + t345 * t245 + (t252 * t427 - t286 * t382) * pkin(1) - t279, -pkin(1) * t287 * t382 - t226 * t405 - t228 * t316 + t245 * t346 - t335 ((qJD(2) * t130 - qJDD(1) * t157 - t71 + (qJD(2) * t159 - t146) * qJD(1)) * t252 + (qJD(2) * t134 + qJDD(1) * t159 + t84 + (qJD(2) * t157 + t171) * qJD(1)) * t248 - t333) * t244, t159 * t226 + t245 * t84 + (t248 * t317 + t252 * t294) * t244 + t279, -t146 * t228 - t157 * t226 - t245 * t71 + (-t248 * t294 + t252 * t317) * t244 + t335, -g(1) * t281 - g(2) * t311 + t130 * t171 + t134 * t146 + t141 * t140 + t71 * t157 + t72 * t158 + t84 * t159, t153 * t120 + t179 * t475, -t120 * t151 - t153 * t121 - t178 * t475 - t179 * t70, t120 * qJD(4) + t179 * qJDD(4) + ((qJD(1) * t179 + t153) * t397 + ((t179 - t375) * qJDD(1) + (t244 * t278 + t120) * qJD(1) - t300) * t248) * t244, -t121 * qJD(4) - t178 * qJDD(4) + ((-qJD(1) * t178 - t151) * t397 + (-qJD(1) * t121 - qJDD(1) * t178 - t70) * t248) * t244 (qJD(2) * t392 + (qJDD(4) + (t350 + t384) * t244) * t248) * t244, -g(1) * t305 - g(2) * t125 + t106 * t121 + t112 * t151 + t132 * t70 + t54 * t178 + t268 * t354 + t315 * t324 - t355 * t424 + t369 * t44, t112 * t153 + t132 * (t247 * t342 - t300) + t54 * t179 + t106 * t120 - t285 * t324 + t410 * (-qJDD(4) - t361) + t299 * t424 + (t132 * (-qJD(1) * t393 - qJDD(1) * t247) + (-qJD(1) * t410 - t45) * qJD(2)) * t422 + t336, -t123 * t33 + t56 * t97, -t123 * t34 - t306 * t33 - t55 * t97 - t56 * t95, t121 * t97 + t123 * t68 + t147 * t56 - t178 * t33, -t121 * t95 - t147 * t55 - t178 * t34 + t306 * t68, t121 * t147 + t178 * t68, -t12 * t306 + t19 * t121 + t147 * t468 - t178 * t358 + t28 * t95 + t319 * t68 + t57 * t34 + t37 * t55 + t339, t12 * t123 - t20 * t121 - t147 * t303 - t3 * t178 + t28 * t97 - t320 * t68 - t57 * t33 + t37 * t56 + t340, -t121 * t13 - t147 * t7 - t178 * t2 + t21 * t55 - t25 * t68 - t306 * t5 + t32 * t34 + t8 * t95 + t339, t1 * t306 + t123 * t2 + t13 * t56 - t14 * t55 - t24 * t34 - t25 * t33 - t6 * t95 + t7 * t97 - t336, t1 * t178 + t121 * t14 - t123 * t5 + t147 * t6 - t21 * t56 + t24 * t68 + t32 * t33 - t8 * t97 - t340, t1 * t24 + t14 * t6 + t5 * t32 + t21 * t8 + t2 * t25 + t13 * t7 - g(1) * (pkin(3) * t421 + pkin(4) * t305 + pkin(5) * t77 - pkin(9) * t181 + pkin(10) * t304 + qJ(6) * t76 + t281) - g(2) * (pkin(3) * t423 + pkin(4) * t125 + pkin(5) * t75 + pkin(9) * t183 + pkin(10) * t124 + qJ(6) * t74 + t311); 0, 0, 0, -t347, t404 * t425, t271 (-t389 * t401 + t383) * t244, t226, t425 * t462 + t264, pkin(1) * t377 + t228 * t408 - t274 + t381 ((-pkin(2) * t248 + t432) * qJDD(1) + ((-qJ(3) * qJD(2) - t134 - t170) * t248 + (-pkin(2) * qJD(2) - t130 + t387) * t252) * qJD(1)) * t244, -t168 * t371 - t264 - 0.2e1 * t461 + t471, 0.2e1 * t204 + t205 + t387 * t228 + (-g(3) * t248 + (t141 * t252 + t168 * t248) * qJD(1)) * t244 + t274, -t71 * qJ(3) - t84 * pkin(2) - t141 * t168 - t130 * t170 - g(1) * (qJ(3) * t183 - t174) - g(2) * (qJ(3) * t181 - t172) - g(3) * t406 - t387 * t134, t310 * t251 ^ 2 + ((t244 * t286 - t395) * t251 - t297) * t247 (-t70 - t297) * t251 + (-t413 + (t151 + t426) * qJD(4) + (t359 + (t365 + (t151 - t399) * t248) * qJD(1)) * t244) * t247, -t153 * t371 + t257, -t247 * qJDD(4) + (t151 * t400 - t247 * t287) * t244 + t259 * t251, -t252 * t277, qJ(3) * t70 + t106 * t296 + t254 * t150 + t388 * t151 + t247 * t476 - t353 * t324 - t44 * t371, t409 * t324 + t45 * t371 + t388 * t153 + (-t254 * qJDD(4) + (-t106 - t206) * qJD(4) + (qJ(3) * t286 - t106 * t401 - t254 * t287) * t244) * t247 + (qJ(3) * t310 + t476) * t251, -t250 * t435 + (-t251 * t391 - t329) * t97, t144 * t97 + t145 * t95 + (t437 + t440) * t394 + (t443 - t439 + (-t436 + t441) * qJD(5)) * t251, -t247 * t33 - t329 * t147 + (t302 + t307) * t251, -t247 * t34 + t330 * t147 + (-t324 * t95 + t308) * t251, t147 * t296 + t247 * t68, t68 * t428 - t37 * t144 - t61 * t95 + (t481 + (-qJD(5) * t191 + t62) * t246) * t147 + (-t37 * t246 * qJD(4) - t358 + (qJD(4) * t95 + t308) * t254) * t247 + (t19 * t372 + t37 * t390 + t12 * t246 - t254 * t34 + (-t147 * t419 + t19) * qJD(4)) * t251 + t288, -t407 * t68 - t61 * t97 - t37 * t145 + t474 * t147 + (t147 * t364 - t3 + (-t250 * t37 + t254 * t97) * qJD(4)) * t247 + (t12 * t250 - t20 * t324 + t254 * t33 - t37 * t391) * t251 + t289, -t135 * t68 + t156 * t34 - t2 * t247 + t449 * t95 - t330 * t21 - t450 * t147 + (-t13 * t324 + t21 * t390 + t246 * t5) * t251 + t288, -t13 * t145 - t131 * t34 - t135 * t33 + t14 * t144 + t450 * t97 - t451 * t95 - t323 * t394 + (-qJD(5) * t322 - t1 * t246 + t2 * t250 + t276) * t251, t1 * t247 + t131 * t68 + t156 * t33 - t449 * t97 + t329 * t21 + t451 * t147 + (t14 * t324 + t21 * t391 - t250 * t5) * t251 - t289, t1 * t131 + t5 * t156 + t2 * t135 - g(1) * (pkin(5) * t94 - pkin(9) * t182 + qJ(6) * t93 - t174) - g(2) * (pkin(5) * t92 - pkin(9) * t180 + qJ(6) * t91 - t172) + t449 * t21 + t451 * t14 + t450 * t13 + t473 * t191 + (-pkin(5) * t155 - qJ(6) * t154 - t406 - (t248 * t337 + t460) * t244) * g(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t271, t226 + t347, -t228 ^ 2 - t242 * t425, t134 * t228 - t272 - t461 + t471, 0, 0, 0, 0, 0, -t228 * t151 + t257, -t247 * t268 - t228 * t153 + (-t324 * t372 - t472) * t251, 0, 0, 0, 0, 0, t258, t479, t258, t142 * t97 + t143 * t95 + (-t437 + t440) * t393 + (-t443 - t439 + (t436 + t441) * qJD(5)) * t247, -t479, t13 * t142 - t14 * t143 + (qJD(4) * t322 - t5) * t251 + (t21 * t324 + t265) * t247 + t312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t153 * t151, -t151 ^ 2 + t153 ^ 2, t413 + (t151 - t426) * qJD(4) + (-t359 + (-t365 + (t151 + t399) * t248) * qJD(1)) * t244, -t70 + t297, t268, -t106 * t153 + t324 * t45 + t283 - t355, t106 * t151 + t324 * t44 - t282 + t299, t352 * t97 - t443 (-t33 - t444) * t250 + (-t34 - t434) * t246, t147 * t352 - t153 * t97 + t442, t153 * t95 - t246 * t466 + t438, -t147 * t153, -pkin(4) * t34 - t19 * t153 - t45 * t95 + (t44 * t147 + t301) * t246 + (-t12 + (-t88 - t448) * t147 + t283) * t250, pkin(4) * t33 + t453 * t147 + t20 * t153 - t45 * t97 + t301 * t250 + (t12 + t267) * t246, t13 * t153 + t147 * t23 + t246 * t470 + t266 * t250 - t313 * t34 + t433 * t95, t22 * t95 - t23 * t97 + (t1 + t147 * t13 + (-t34 + t431) * pkin(10)) * t250 + (t2 - t446 + (qJD(5) * t95 - t33) * pkin(10)) * t246 + t282, -t14 * t153 - t147 * t22 + t266 * t246 - t250 * t470 - t313 * t33 - t433 * t97, -t13 * t23 - t14 * t22 + t433 * t21 + (t265 + t282) * pkin(10) + (-t5 + t283) * t313; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t454, -t95 ^ 2 + t467, t18, t434 - t34, t68, -t37 * t97 + t269 + t445, t147 * t19 + t37 * t95 - t263, -t47 * t95 - t261 + t445 + 0.2e1 * t464, pkin(5) * t33 - qJ(6) * t34 + (t14 - t20) * t97 + (t13 - t411) * t95, 0.2e1 * t447 - t21 * t95 + t47 * t97 + (0.2e1 * qJD(6) - t19) * t147 + t263, t1 * qJ(6) - t2 * pkin(5) - t21 * t47 - t13 * t20 - g(1) * (-pkin(5) * t74 + qJ(6) * t75) - g(2) * (pkin(5) * t76 - qJ(6) * t77) - g(3) * t328 + t411 * t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t454 - t68, t18, -t466 - t467, t261 - t446 - t464;];
tau_reg  = t4;