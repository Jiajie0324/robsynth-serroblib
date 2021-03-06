% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRPP2
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% 
% Output:
% tau_reg [6x32]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRPP2_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP2_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP2_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP2_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP2_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP2_invdynJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:51:44
% EndTime: 2019-03-09 20:52:02
% DurationCPUTime: 7.67s
% Computational Cost: add. (9903->608), mult. (21651->703), div. (0->0), fcn. (15346->10), ass. (0->317)
t247 = sin(qJ(2));
t246 = sin(qJ(3));
t250 = cos(qJ(2));
t381 = t246 * t250;
t438 = cos(qJ(3));
t182 = t247 * t438 + t381;
t360 = qJD(2) + qJD(3);
t122 = t360 * t182;
t342 = t438 * t250;
t362 = t247 * qJDD(1);
t86 = qJD(1) * t122 - qJDD(1) * t342 + t246 * t362;
t85 = qJDD(4) + t86;
t245 = sin(qJ(4));
t249 = cos(qJ(4));
t296 = -t246 * t247 + t342;
t121 = t360 * t296;
t263 = t121 * qJD(1);
t260 = t182 * qJDD(1) + t263;
t337 = qJD(1) * t438;
t169 = -qJD(1) * t381 - t247 * t337;
t286 = t249 * t169 - t245 * t360;
t359 = qJDD(2) + qJDD(3);
t256 = qJD(4) * t286 - t245 * t260 + t249 * t359;
t368 = qJD(1) * t247;
t167 = t246 * t368 - t250 * t337;
t163 = qJD(4) + t167;
t398 = t286 * t163;
t464 = t256 + t398;
t366 = qJD(4) * t245;
t395 = t167 * t245;
t463 = -t366 - t395;
t462 = t85 * qJ(5) + t163 * qJD(5);
t252 = -pkin(8) - pkin(7);
t196 = t252 * t247;
t184 = qJD(1) * t196;
t197 = t252 * t250;
t186 = qJD(1) * t197;
t343 = t438 * t186;
t116 = t184 * t246 - t343;
t367 = qJD(3) * t246;
t322 = pkin(2) * t367 - t116;
t244 = qJ(2) + qJ(3);
t237 = sin(t244);
t251 = cos(qJ(1));
t387 = t237 * t251;
t248 = sin(qJ(1));
t389 = t237 * t248;
t461 = g(1) * t387 + g(2) * t389;
t327 = t249 * t360;
t291 = qJD(4) * t327 + t169 * t366 + t245 * t359 + t249 * t260;
t132 = -t169 * t245 - t327;
t401 = t132 * t163;
t460 = t291 - t401;
t238 = cos(t244);
t431 = g(3) * t238;
t444 = -t431 + t461;
t424 = qJD(2) * pkin(2);
t174 = t184 + t424;
t113 = t246 * t174 - t343;
t101 = pkin(9) * t360 + t113;
t363 = qJD(1) * qJD(2);
t335 = t247 * t363;
t221 = pkin(2) * t335;
t429 = t250 * pkin(2);
t233 = pkin(1) + t429;
t446 = -pkin(9) * t182 - t233;
t34 = t86 * pkin(3) - pkin(9) * t263 + qJDD(1) * t446 + t221;
t365 = qJD(4) * t249;
t334 = t250 * t363;
t124 = qJDD(2) * pkin(2) - t252 * (-t334 - t362);
t361 = t250 * qJDD(1);
t131 = t252 * (-t335 + t361);
t336 = qJD(3) * t438;
t273 = t246 * t124 - t131 * t438 + t174 * t336 + t186 * t367;
t47 = pkin(9) * t359 + t273;
t195 = t233 * qJD(1);
t96 = pkin(3) * t167 + pkin(9) * t169 - t195;
t293 = -t101 * t366 + t245 * t34 + t249 * t47 + t96 * t365;
t7 = t293 + t462;
t333 = t101 * t365 + t245 * t47 - t249 * t34 + t96 * t366;
t84 = t85 * pkin(4);
t445 = t84 - qJDD(5);
t9 = t333 - t445;
t459 = t9 * t245 + t7 * t249;
t170 = t246 * t186;
t112 = t438 * t174 + t170;
t100 = -pkin(3) * t360 - t112;
t283 = qJ(5) * t286 + t100;
t441 = pkin(4) + pkin(5);
t33 = -t132 * t441 + qJD(6) - t283;
t325 = -t438 * t124 - t246 * t131 + t174 * t367 - t186 * t336;
t48 = -t359 * pkin(3) + t325;
t13 = -pkin(4) * t256 - qJ(5) * t291 + qJD(5) * t286 + t48;
t5 = pkin(5) * t256 + qJDD(6) - t13;
t458 = -t5 * t245 - t33 * t365;
t417 = t249 * t85;
t457 = pkin(9) * (t163 * t366 - t417);
t239 = t245 * qJ(5);
t315 = t249 * pkin(4) + t239;
t357 = pkin(3) + t315;
t456 = t5 * t249 - t33 * t366;
t455 = -qJ(6) * t256 + t132 * qJD(6);
t454 = 0.2e1 * t462;
t394 = t167 * t249;
t371 = -pkin(4) * t395 + qJ(5) * t394;
t453 = -t371 + t322;
t63 = -t245 * t101 + t249 * t96;
t375 = qJD(5) - t63;
t452 = t122 * qJ(5) - qJD(5) * t296;
t161 = pkin(4) * t366 - qJ(5) * t365 - t245 * qJD(5);
t451 = t463 * pkin(5) - t161;
t226 = qJ(6) * t366;
t450 = qJ(6) * t395 + t226;
t130 = t286 ^ 2;
t154 = t163 ^ 2;
t449 = -t154 - t130;
t448 = t438 * t196 + t246 * t197;
t447 = -t238 * pkin(3) - t237 * pkin(9);
t319 = g(1) * t251 + g(2) * t248;
t379 = t249 * t251;
t383 = t245 * t248;
t156 = t238 * t383 + t379;
t378 = t251 * t245;
t380 = t248 * t249;
t158 = t238 * t378 - t380;
t390 = t237 * t245;
t281 = g(1) * t158 + g(2) * t156 + g(3) * t390 - t333;
t275 = t281 + t445;
t425 = qJ(6) * t291;
t443 = -(qJD(6) + t33) * t286 + t275 + t425;
t137 = t246 * t196 - t197 * t438;
t346 = qJD(2) * t252;
t185 = t247 * t346;
t187 = t250 * t346;
t79 = t137 * qJD(3) + t246 * t185 - t438 * t187;
t442 = t132 ^ 2;
t440 = pkin(5) * t85;
t439 = pkin(9) * t85;
t437 = pkin(2) * t247;
t436 = pkin(4) * t169;
t432 = g(2) * t252;
t430 = g(3) * t250;
t428 = pkin(9) - qJ(6);
t64 = t249 * t101 + t245 * t96;
t427 = pkin(9) * qJD(4);
t426 = qJ(5) * t256;
t423 = t13 * t245;
t422 = t163 * t64;
t53 = t132 * pkin(4) + t283;
t421 = t167 * t53;
t231 = pkin(2) * t246 + pkin(9);
t420 = t231 * t85;
t419 = t245 * t291;
t418 = t249 * t256;
t117 = t184 * t438 + t170;
t108 = -pkin(3) * t169 + pkin(9) * t167;
t99 = pkin(2) * t368 + t108;
t416 = t249 * t117 + t245 * t99;
t326 = pkin(2) * t336;
t302 = t326 - qJD(6);
t340 = t231 * t366;
t155 = t169 * qJ(5);
t51 = -t155 + t416;
t415 = t249 * t302 - t340 + t450 - t51;
t109 = t245 * t117;
t377 = -qJ(6) + t231;
t180 = t377 * t249;
t351 = t441 * t169;
t405 = qJ(6) * t167;
t414 = qJD(4) * t180 + t245 * t302 - t109 - (-t99 + t405) * t249 - t351;
t413 = t451 - t453;
t69 = t113 + t371;
t412 = t69 + t451;
t411 = t161 + t453;
t373 = t245 * t108 + t249 * t112;
t54 = -t155 + t373;
t410 = -pkin(9) * t366 - t249 * qJD(6) + t450 - t54;
t409 = t161 - t69;
t106 = t245 * t112;
t194 = t428 * t249;
t408 = qJD(4) * t194 - t245 * qJD(6) - t106 - (-t108 + t405) * t249 - t351;
t407 = qJ(5) * t132;
t406 = qJ(5) * t249;
t404 = t100 * t167;
t403 = t121 * t245;
t402 = t121 * t249;
t400 = t132 * t245;
t399 = t286 * t132;
t397 = t286 * t249;
t396 = t163 * t169;
t393 = t169 * t167;
t392 = t182 * t245;
t391 = t182 * t249;
t388 = t237 * t249;
t386 = t238 * t248;
t385 = t238 * t249;
t384 = t238 * t251;
t35 = -qJ(6) * t286 + t63;
t376 = qJD(5) - t35;
t111 = -pkin(3) * t296 + t446;
t372 = t245 * t111 + t249 * t137;
t370 = t461 * t249;
t242 = t247 ^ 2;
t369 = -t250 ^ 2 + t242;
t364 = qJD(5) * t249;
t355 = t247 * t424;
t74 = pkin(3) * t122 - pkin(9) * t121 + t355;
t78 = qJD(3) * t448 + t438 * t185 + t246 * t187;
t356 = t111 * t365 + t245 * t74 + t249 * t78;
t353 = t111 * t366 + t137 * t365 + t245 * t78;
t352 = t441 * t245;
t49 = t53 * t366;
t349 = t53 * t365;
t66 = -qJ(5) * t296 + t372;
t348 = t444 * t245;
t347 = g(1) * t384 + g(2) * t386 + g(3) * t237;
t345 = t245 * t438;
t344 = t249 * t438;
t341 = t182 * t365;
t339 = -t13 - t431;
t338 = -t48 - t431;
t157 = t238 * t380 - t378;
t332 = -t156 * pkin(4) + qJ(5) * t157;
t159 = t238 * t379 + t383;
t331 = -t158 * pkin(4) + qJ(5) * t159;
t125 = t245 * t137;
t330 = t111 * t249 - t125;
t328 = t163 * t249;
t324 = pkin(4) * t385 + t238 * t239 - t447;
t232 = -pkin(2) * t438 - pkin(3);
t323 = g(1) * t389 - g(2) * t387;
t36 = qJ(6) * t132 + t64;
t321 = g(1) * t156 - g(2) * t158;
t320 = g(1) * t157 - g(2) * t159;
t318 = g(1) * t248 - g(2) * t251;
t201 = pkin(9) * t386;
t317 = -qJ(6) * t386 + t201;
t205 = pkin(9) * t384;
t316 = -qJ(6) * t384 + t205;
t314 = pkin(4) * t245 - t406;
t42 = -pkin(4) * t163 + t375;
t147 = t163 * qJ(5);
t43 = t147 + t64;
t312 = -t245 * t43 + t249 * t42;
t311 = t245 * t326;
t310 = pkin(5) * t385 + t324;
t309 = t404 - t420;
t308 = -qJ(6) * t121 - qJD(6) * t182;
t307 = t249 * t74 - t353;
t306 = -t42 * t169 + t370 + t49;
t305 = t100 * t366 + t63 * t169 + t370;
t303 = -t233 + t447;
t301 = -t352 + t406;
t300 = -t249 * t441 - t239;
t176 = t232 - t315;
t299 = -0.2e1 * pkin(1) * t363 - pkin(7) * qJDD(2);
t297 = -t157 * pkin(4) - qJ(5) * t156 - t251 * t252;
t295 = t341 + t403;
t294 = -t182 * t366 + t402;
t292 = -t137 * t366 + t356;
t290 = pkin(3) * t384 + t159 * pkin(4) + pkin(9) * t387 + qJ(5) * t158 + t251 * t233;
t285 = t100 * t365 - t64 * t169 + t48 * t245 - t348;
t282 = t43 * t169 - t53 * t394 + t348 - t423;
t26 = t291 + t401;
t280 = t249 * t326 - t340;
t254 = qJD(2) ^ 2;
t279 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t254 + t318;
t255 = qJD(1) ^ 2;
t278 = pkin(1) * t255 - pkin(7) * qJDD(1) + t319;
t25 = t147 + t36;
t277 = t169 * t25 + t33 * t394 + t348 - t458;
t276 = -t195 * t169 - t325 + t444;
t274 = qJD(4) * t312 + t459;
t272 = t419 + t418 + (-t397 + t400) * qJD(4);
t20 = -t163 * t441 + t376;
t271 = -g(3) * t385 - t169 * t20 - t33 * t395 + t370 + t456;
t270 = -t347 + t459 + t463 * t43 + (t365 + t394) * t42;
t268 = -t286 * t53 - t275;
t267 = g(1) * t159 + g(2) * t157 + g(3) * t388 - t293;
t1 = qJD(6) * t286 - t425 - t440 + t9;
t2 = t7 + t455;
t266 = t25 * t366 + (-qJD(4) * t20 - t2) * t249 + (t167 * t25 - t1) * t245 - t20 * t394 + t347;
t265 = t163 * t63 + t267;
t264 = -t195 * t167 - t273 + t347;
t262 = (g(3) * qJ(6) + t319 * (pkin(3) - t300)) * t237;
t259 = -t399 - t85;
t258 = t237 * t319 * t357 - g(1) * t205 - g(2) * t201 - g(3) * t324;
t240 = t249 * pkin(5);
t198 = qJ(5) * t388;
t193 = t428 * t245;
t179 = t377 * t245;
t177 = t240 + t357;
t164 = -qJDD(1) * t233 + t221;
t146 = t240 - t176;
t87 = -t167 ^ 2 + t169 ^ 2;
t80 = -pkin(4) * t286 + t407;
t77 = t182 * t314 - t448;
t73 = -t169 * t360 - t86;
t72 = t167 * t360 + t260;
t68 = t182 * t301 + t448;
t67 = pkin(4) * t296 - t330;
t65 = t286 * t441 - t407;
t56 = -t108 * t249 + t106 + t436;
t52 = -t249 * t99 + t109 + t436;
t50 = qJ(6) * t392 + t66;
t41 = t125 + (-qJ(6) * t182 - t111) * t249 + t441 * t296;
t22 = t163 * t328 - t169 * t286 + t245 * t85;
t21 = -t132 * t169 - t154 * t245 + t417;
t19 = -t286 * t328 + t419;
t17 = t314 * t121 + (qJD(4) * t315 - t364) * t182 + t79;
t16 = t301 * t121 + (qJD(4) * t300 + t364) * t182 - t79;
t15 = -pkin(4) * t122 - t307;
t14 = t292 + t452;
t12 = qJ(6) * t341 + (-qJD(4) * t137 - t308) * t245 + t356 + t452;
t11 = t182 * t226 - t441 * t122 + (t308 - t74) * t249 + t353;
t10 = t464 * t245 + t460 * t249;
t3 = [qJDD(1), t318, t319, qJDD(1) * t242 + 0.2e1 * t247 * t334, 0.2e1 * t247 * t361 - 0.2e1 * t363 * t369, qJDD(2) * t247 + t250 * t254, qJDD(2) * t250 - t247 * t254, 0, t247 * t299 + t250 * t279, -t247 * t279 + t250 * t299, -t169 * t121 + t182 * t260, -t121 * t167 + t169 * t122 - t182 * t86 + t260 * t296, t121 * t360 + t182 * t359, -t122 * t360 + t296 * t359, 0, -t195 * t122 - t164 * t296 + t167 * t355 - t233 * t86 + t238 * t318 + t359 * t448 - t360 * t79, -t195 * t121 - t137 * t359 + t164 * t182 - t169 * t355 - t233 * t260 - t360 * t78 - t323, -t286 * t294 + t291 * t391 (-t132 * t249 + t245 * t286) * t121 + (-t419 + t418 + (t397 + t400) * qJD(4)) * t182, -t122 * t286 + t163 * t294 - t291 * t296 + t391 * t85, -t122 * t132 - t163 * t295 - t256 * t296 - t392 * t85, t122 * t163 - t296 * t85, t100 * t295 + t63 * t122 + t79 * t132 + t163 * t307 + t256 * t448 + t296 * t333 + t330 * t85 + t392 * t48 + t320, t100 * t294 - t64 * t122 - t163 * t292 - t286 * t79 - t291 * t448 + t293 * t296 - t372 * t85 + t391 * t48 - t321, t53 * t403 - t122 * t42 + t132 * t17 - t15 * t163 + t296 * t9 - t256 * t77 - t67 * t85 + (t349 + t423) * t182 + t320, -t132 * t14 - t286 * t15 + t291 * t67 + t256 * t66 + t312 * t121 + (-t245 * t7 + t249 * t9 + (-t245 * t42 - t249 * t43) * qJD(4)) * t182 + t323, -t53 * t402 + t122 * t43 + t286 * t17 + t14 * t163 - t296 * t7 - t291 * t77 + t66 * t85 + (-t13 * t249 + t49) * t182 + t321, t7 * t66 + t43 * t14 + t13 * t77 + t53 * t17 + t9 * t67 + t42 * t15 - g(1) * t297 - g(2) * t290 + (-g(1) * t303 + t432) * t248, t1 * t296 - t11 * t163 - t122 * t20 - t132 * t16 + t182 * t458 + t256 * t68 - t33 * t403 - t41 * t85 + t320, t12 * t163 + t122 * t25 - t16 * t286 + t182 * t456 - t2 * t296 + t291 * t68 + t33 * t402 + t50 * t85 + t321, t11 * t286 + t12 * t132 - t41 * t291 - t50 * t256 + (-t20 * t249 + t245 * t25) * t121 + (-t1 * t249 + t2 * t245 + (t20 * t245 + t249 * t25) * qJD(4)) * t182 - t323, t2 * t50 + t25 * t12 + t1 * t41 + t20 * t11 + t5 * t68 + t33 * t16 - g(1) * (-pkin(5) * t157 + t297) - g(2) * (pkin(5) * t159 - qJ(6) * t387 + t290) + (-g(1) * (qJ(6) * t237 + t303) + t432) * t248; 0, 0, 0, -t247 * t255 * t250, t369 * t255, t362, t361, qJDD(2), t247 * t278 - t430, g(3) * t247 + t250 * t278, -t393, t87, t72, t73, t359, t116 * t360 + (-t167 * t368 + t359 * t438 - t360 * t367) * pkin(2) + t276, t117 * t360 + (t169 * t368 - t246 * t359 - t336 * t360) * pkin(2) + t264, t19, t10, t22, t21, t396, -t232 * t256 + t338 * t249 + t309 * t245 + t322 * t132 + (-t311 + t109 + (-qJD(4) * t231 - t99) * t249) * t163 + t305, t232 * t291 + t309 * t249 - t322 * t286 + (-t280 + t416) * t163 + t285, -t176 * t256 + t339 * t249 + (-t420 + t421) * t245 + t411 * t132 + (-t231 * t365 - t311 + t52) * t163 + t306, t51 * t132 + t52 * t286 + (-t132 * t344 - t286 * t345) * qJD(3) * pkin(2) + t272 * t231 + t270, -t176 * t291 + (-qJD(4) * t53 + t420) * t249 + t411 * t286 + (-t51 + t280) * t163 + t282, t13 * t176 - t43 * t51 - t42 * t52 + t411 * t53 + (-t430 + t319 * t247 + (t344 * t43 + t345 * t42) * qJD(3)) * pkin(2) + t274 * t231 + t258, -t132 * t413 + t146 * t256 - t163 * t414 - t179 * t85 + t271, t146 * t291 + t163 * t415 + t180 * t85 - t286 * t413 + t277, t132 * t415 - t179 * t291 - t180 * t256 + t286 * t414 + t266, t2 * t180 + t1 * t179 + t5 * t146 - g(1) * (-t251 * t437 + t316) - g(2) * (-t248 * t437 + t317) - g(3) * (t310 + t429) + t413 * t33 + t415 * t25 + t414 * t20 + t262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t393, t87, t72, t73, t359, t113 * t360 + t276, t112 * t360 + t264, t19, t10, t22, t21, t396, pkin(3) * t256 + t106 * t163 - t113 * t132 + (t404 - t439) * t245 + ((-t108 - t427) * t163 + t338) * t249 + t305, -pkin(3) * t291 + t100 * t394 + t113 * t286 + t163 * t373 + t285 + t457, t163 * t56 + t357 * t256 + (t421 - t439) * t245 + t409 * t132 + (-t163 * t427 + t339) * t249 + t306, pkin(9) * t272 + t132 * t54 + t286 * t56 + t270, -t163 * t54 + t286 * t409 + t291 * t357 + t282 - t349 - t457, pkin(9) * t274 - t13 * t357 + t409 * t53 - t42 * t56 - t43 * t54 + t258, -t132 * t412 - t163 * t408 + t177 * t256 - t193 * t85 + t271, t163 * t410 + t177 * t291 + t194 * t85 - t286 * t412 + t277, t132 * t410 - t193 * t291 - t194 * t256 + t286 * t408 + t266, -g(1) * t316 - g(2) * t317 - g(3) * t310 + t1 * t193 + t5 * t177 + t2 * t194 + t20 * t408 + t25 * t410 + t33 * t412 + t262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t399, t130 - t442, t26, t256 - t398, t85, t100 * t286 + t281 + t422, t100 * t132 + t265, -t132 * t80 - t268 + t422 + t84, -pkin(4) * t291 + t426 - (t43 - t64) * t286 + (t42 - t375) * t132, -t132 * t53 - t286 * t80 - t265 + t454, t7 * qJ(5) - t9 * pkin(4) - t53 * t80 - t42 * t64 - g(1) * t331 - g(2) * t332 - g(3) * (-pkin(4) * t390 + t198) + t375 * t43 (pkin(5) + t441) * t85 + t132 * t65 + t163 * t36 + t443, t132 * t33 - t163 * t35 + t286 * t65 - t267 + t454 + t455, -t426 + t441 * t291 - (-t25 + t36) * t286 + (-t20 + t376) * t132, t2 * qJ(5) - t1 * t441 - t20 * t36 - t33 * t65 - g(1) * (-pkin(5) * t158 + t331) - g(2) * (-pkin(5) * t156 + t332) - g(3) * (-t237 * t352 + t198) + t376 * t25; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t259, t26, t449, -t163 * t43 + t268, t259, t449, -t26, -t163 * t25 - t440 - t443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t464, t460, -t130 - t442, -t132 * t25 - t20 * t286 + t444 + t5;];
tau_reg  = t3;
