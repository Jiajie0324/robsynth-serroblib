% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRPRRP9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% 
% Output:
% tau_reg [6x30]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:35
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRRP9_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP9_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP9_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP9_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP9_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP9_invdynJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:34:07
% EndTime: 2019-03-09 12:34:26
% DurationCPUTime: 9.86s
% Computational Cost: add. (13155->632), mult. (32616->851), div. (0->0), fcn. (26783->14), ass. (0->302)
t272 = sin(pkin(11));
t274 = cos(pkin(11));
t279 = sin(qJ(4));
t283 = cos(qJ(4));
t216 = t272 * t279 - t283 * t274;
t273 = sin(pkin(6));
t284 = cos(qJ(2));
t398 = t273 * t284;
t298 = t216 * t398;
t176 = qJD(1) * t298;
t209 = t216 * qJD(4);
t439 = t209 - t176;
t217 = t272 * t283 + t274 * t279;
t299 = t217 * t398;
t391 = -qJD(1) * t299 + t217 * qJD(4);
t280 = sin(qJ(2));
t324 = pkin(2) * t280 - qJ(3) * t284;
t387 = qJD(1) * t273;
t201 = t324 * t387;
t356 = t280 * t387;
t275 = cos(pkin(6));
t386 = qJD(1) * t275;
t366 = pkin(1) * t386;
t202 = -pkin(8) * t356 + t284 * t366;
t139 = t274 * t201 - t202 * t272;
t303 = (-pkin(9) * t274 * t284 + pkin(3) * t280) * t273;
t109 = qJD(1) * t303 + t139;
t140 = t272 * t201 + t274 * t202;
t385 = qJD(1) * t284;
t251 = t273 * t385;
t332 = t272 * t251;
t122 = -pkin(9) * t332 + t140;
t424 = pkin(9) + qJ(3);
t229 = t424 * t272;
t230 = t424 * t274;
t321 = -t229 * t283 - t230 * t279;
t461 = -qJD(3) * t216 + qJD(4) * t321 - t279 * t109 - t283 * t122;
t460 = -pkin(10) * t356 + t461;
t244 = pkin(8) * t251;
t203 = t280 * t366 + t244;
t168 = pkin(3) * t332 + t203;
t459 = t391 * pkin(4) + pkin(10) * t439 - t168;
t278 = sin(qJ(5));
t282 = cos(qJ(5));
t253 = qJD(2) + t386;
t189 = t253 * t274 - t272 * t356;
t190 = t253 * t272 + t274 * t356;
t322 = t189 * t279 + t190 * t283;
t374 = t251 - qJD(4);
t104 = -t278 * t374 + t282 * t322;
t129 = -t283 * t189 + t190 * t279;
t449 = qJD(5) + t129;
t409 = t449 * t278;
t458 = t104 * t409;
t432 = cos(qJ(1));
t358 = t432 * t280;
t281 = sin(qJ(1));
t395 = t281 * t284;
t212 = t275 * t358 + t395;
t357 = t432 * t284;
t396 = t280 * t281;
t214 = -t275 * t396 + t357;
t326 = g(1) * t214 + g(2) * t212;
t400 = t273 * t280;
t296 = -g(3) * t400 - t326;
t372 = qJD(1) * qJD(2);
t352 = t280 * t372;
t330 = t273 * t352;
t369 = qJDD(1) * t284;
t250 = t273 * t369;
t368 = qJDD(4) - t250;
t302 = t330 + t368;
t371 = qJDD(1) * t275;
t252 = qJDD(2) + t371;
t223 = t274 * t252;
t351 = t284 * t372;
t370 = qJDD(1) * t280;
t308 = t351 + t370;
t294 = t308 * t273;
t156 = t272 * t294 - t223;
t404 = t252 * t272;
t157 = t274 * t294 + t404;
t379 = qJD(4) * t283;
t380 = qJD(4) * t279;
t306 = t279 * t156 - t283 * t157 - t189 * t379 + t190 * t380;
t339 = t282 * t374;
t378 = qJD(5) * t278;
t31 = qJD(5) * t339 - t278 * t302 + t282 * t306 + t322 * t378;
t177 = qJ(3) * t253 + t203;
t318 = -pkin(2) * t284 - qJ(3) * t280 - pkin(1);
t198 = t318 * t273;
t182 = qJD(1) * t198;
t111 = -t177 * t272 + t274 * t182;
t76 = -pkin(3) * t251 - pkin(9) * t190 + t111;
t112 = t274 * t177 + t272 * t182;
t85 = pkin(9) * t189 + t112;
t38 = t279 * t76 + t283 * t85;
t35 = -pkin(10) * t374 + t38;
t170 = -pkin(2) * t253 + qJD(3) - t202;
t127 = -pkin(3) * t189 + t170;
t49 = pkin(4) * t129 - pkin(10) * t322 + t127;
t17 = t278 * t49 + t282 * t35;
t341 = t283 * t156 + t279 * t157;
t435 = qJD(4) * t322;
t62 = t341 + t435;
t254 = pkin(8) * t400;
t365 = pkin(1) * qJD(2) * t275;
t334 = qJD(1) * t365;
t364 = pkin(1) * t371;
t333 = qJD(2) * t244 + qJDD(1) * t254 + t280 * t334 - t284 * t364;
t434 = -t252 * pkin(2) + qJDD(3);
t134 = t333 + t434;
t84 = t156 * pkin(3) + t134;
t21 = t62 * pkin(4) + pkin(10) * t306 + t84;
t307 = t352 - t369;
t360 = -pkin(8) * t250 - t280 * t364 - t284 * t334;
t293 = -pkin(8) * t330 - t360;
t117 = qJ(3) * t252 + qJD(3) * t253 + t293;
t290 = qJD(2) * t324 - qJD(3) * t280;
t123 = (qJD(1) * t290 + qJDD(1) * t318) * t273;
t67 = -t117 * t272 + t274 * t123;
t43 = pkin(3) * t273 * t307 - pkin(9) * t157 + t67;
t68 = t274 * t117 + t272 * t123;
t51 = -pkin(9) * t156 + t68;
t312 = -t279 * t43 - t283 * t51 - t76 * t379 + t380 * t85;
t9 = pkin(10) * t302 - t312;
t4 = -qJD(5) * t17 + t282 * t21 - t278 * t9;
t61 = qJDD(5) + t62;
t1 = pkin(5) * t61 + qJ(6) * t31 - qJD(6) * t104 + t4;
t102 = t278 * t322 + t339;
t13 = -qJ(6) * t102 + t17;
t457 = t13 * t449 + t1;
t16 = -t278 * t35 + t282 * t49;
t12 = -qJ(6) * t104 + t16;
t11 = pkin(5) * t449 + t12;
t377 = qJD(5) * t282;
t314 = -t278 * t21 - t282 * t9 + t35 * t378 - t49 * t377;
t289 = -t278 * t306 - t282 * t302;
t32 = qJD(5) * t104 + t289;
t2 = -qJ(6) * t32 - qJD(6) * t102 - t314;
t456 = -t11 * t449 + t2;
t453 = t102 * t129;
t452 = t129 * t374;
t211 = -t275 * t357 + t396;
t213 = t275 * t395 + t358;
t328 = g(1) * t213 + g(2) * t211;
t451 = -g(3) * t398 + t328;
t276 = -qJ(6) - pkin(10);
t450 = -qJ(6) * t129 + qJD(5) * t276;
t269 = pkin(11) + qJ(4);
t265 = sin(t269);
t266 = cos(t269);
t359 = t273 * t432;
t159 = t212 * t266 - t265 * t359;
t448 = t159 * t278 - t211 * t282;
t447 = t159 * t282 + t211 * t278;
t268 = t273 ^ 2;
t367 = 0.2e1 * t268;
t446 = pkin(3) * t272;
t445 = t459 * t282;
t444 = t102 * t322;
t443 = t104 * t322;
t442 = t251 * t322;
t441 = t451 * t265;
t113 = t279 * t122;
t174 = -t229 * t279 + t230 * t283;
t440 = qJD(3) * t217 + qJD(4) * t174 + t283 * t109 - t113;
t399 = t273 * t281;
t163 = t214 * t266 + t265 * t399;
t120 = -t163 * t278 + t213 * t282;
t196 = t265 * t275 + t266 * t400;
t362 = t282 * t398;
t437 = g(2) * t448 - g(3) * (-t196 * t278 - t362) - g(1) * t120;
t263 = pkin(3) * t274 + pkin(2);
t155 = pkin(4) * t216 - pkin(10) * t217 - t263;
t436 = t155 * t377 + t459 * t278 + t282 * t460;
t433 = t104 ^ 2;
t431 = pkin(1) * t280;
t423 = -t12 + t11;
t142 = -t176 * t282 + t278 * t356;
t164 = t282 * t174;
t320 = qJ(6) * t209 - qJD(6) * t217;
t422 = qJ(6) * t142 - t164 * qJD(5) + t320 * t282 + t445 + ((qJ(6) * t217 - t155) * qJD(5) - t460) * t278 + t391 * pkin(5);
t421 = -t102 * t377 - t278 * t32;
t141 = -t176 * t278 - t282 * t356;
t353 = t217 * t377;
t420 = (-qJD(5) * t174 + t320) * t278 + t436 + (t141 - t353) * qJ(6);
t37 = -t279 * t85 + t283 * t76;
t71 = pkin(4) * t322 + pkin(10) * t129;
t419 = t278 * t71 + t282 * t37;
t389 = pkin(8) * t398 + t275 * t431;
t197 = qJ(3) * t275 + t389;
t136 = t274 * t197 + t272 * t198;
t207 = t272 * t400 - t275 * t274;
t108 = -pkin(9) * t207 + t136;
t135 = -t197 * t272 + t274 * t198;
t208 = t272 * t275 + t274 * t400;
t92 = -pkin(3) * t398 - pkin(9) * t208 + t135;
t414 = t283 * t108 + t279 * t92;
t53 = -pkin(10) * t398 + t414;
t143 = t283 * t207 + t208 * t279;
t144 = -t207 * t279 + t208 * t283;
t200 = t254 + (-pkin(1) * t284 - pkin(2)) * t275;
t153 = pkin(3) * t207 + t200;
t66 = pkin(4) * t143 - pkin(10) * t144 + t153;
t418 = t278 * t66 + t282 * t53;
t416 = t278 * t31;
t415 = t278 * t61;
t413 = pkin(4) * t356 + t440;
t412 = qJD(6) * t282 + t450 * t278 - t419;
t70 = t282 * t71;
t411 = -pkin(5) * t322 - t70 + t450 * t282 + (-qJD(6) + t37) * t278;
t406 = t217 * t278;
t405 = t217 * t282;
t403 = t252 * t275;
t402 = t266 * t278;
t401 = t268 * qJD(1) ^ 2;
t397 = t278 * t284;
t393 = t278 * t155 + t164;
t180 = t290 * t273;
t382 = qJD(2) * t280;
t355 = t273 * t382;
t319 = -pkin(8) * t355 + t284 * t365;
t186 = qJD(3) * t275 + t319;
t119 = t272 * t180 + t274 * t186;
t381 = qJD(2) * t284;
t354 = t273 * t381;
t204 = pkin(8) * t354 + t280 * t365;
t390 = t432 * pkin(1) + pkin(8) * t399;
t270 = t280 ^ 2;
t388 = -t284 ^ 2 + t270;
t384 = qJD(2) * t272;
t383 = qJD(2) * t274;
t376 = qJD(2) - t253;
t373 = qJ(3) * qJDD(1);
t363 = t284 * t401;
t237 = t273 * t397;
t331 = t272 * t354;
t169 = pkin(3) * t331 + t204;
t350 = -t281 * pkin(1) + pkin(8) * t359;
t349 = pkin(5) * t278 + t424;
t348 = -t278 * t53 + t282 * t66;
t346 = t279 * t51 - t283 * t43 + t85 * t379 + t76 * t380;
t345 = -t279 * t108 + t283 * t92;
t343 = t209 * t278 + t141;
t342 = t209 * t282 + t142;
t118 = t274 * t180 - t186 * t272;
t340 = t449 ^ 2;
t337 = t449 * t282;
t336 = t253 + t386;
t335 = t252 + t371;
t52 = pkin(4) * t398 - t345;
t158 = t212 * t265 + t266 * t359;
t162 = t214 * t265 - t266 * t399;
t329 = -g(1) * t158 + g(2) * t162;
t327 = -g(1) * t211 + g(2) * t213;
t325 = g(1) * t212 - g(2) * t214;
t106 = -pkin(9) * t331 + t119;
t89 = qJD(2) * t303 + t118;
t323 = -t279 * t106 - t108 * t379 + t283 * t89 - t92 * t380;
t317 = -t134 + t328;
t315 = g(1) * t432 + g(2) * t281;
t124 = t144 * t278 + t362;
t309 = t283 * t106 - t108 * t380 + t279 * t89 + t92 * t379;
t24 = pkin(10) * t355 + t309;
t97 = -qJD(2) * t298 - qJD(4) * t143;
t98 = qJD(2) * t299 + qJD(4) * t144;
t44 = pkin(4) * t98 - pkin(10) * t97 + t169;
t311 = t282 * t24 + t278 * t44 + t66 * t377 - t378 * t53;
t34 = pkin(4) * t374 - t37;
t310 = -pkin(10) * t61 + t34 * t449;
t195 = t265 * t400 - t275 * t266;
t305 = g(1) * t162 + g(2) * t158 + g(3) * t195;
t304 = -g(1) * t163 - g(2) * t159 - g(3) * t196;
t301 = -t343 + t353;
t300 = -t217 * t378 - t342;
t295 = -qJ(3) * t382 + (qJD(3) - t170) * t284;
t292 = t451 * t266;
t25 = -pkin(4) * t355 - t323;
t291 = t451 - t333;
t288 = -qJD(5) * t418 - t24 * t278 + t282 * t44;
t10 = -pkin(4) * t302 + t346;
t287 = pkin(10) * qJD(5) * t449 + t10 - t305;
t7 = t32 * pkin(5) + qJDD(6) + t10;
t264 = pkin(5) * t282 + pkin(4);
t235 = t276 * t282;
t234 = t276 * t278;
t149 = t282 * t155;
t125 = t144 * t282 - t237;
t121 = t163 * t282 + t213 * t278;
t99 = t102 ^ 2;
t79 = -qJ(6) * t406 + t393;
t72 = pkin(5) * t216 - qJ(6) * t405 - t174 * t278 + t149;
t59 = t282 * t61;
t55 = -qJD(5) * t237 + t144 * t377 + t278 * t97 - t282 * t355;
t54 = qJD(5) * t124 - t278 * t355 - t282 * t97;
t28 = t102 * pkin(5) + qJD(6) + t34;
t22 = -qJ(6) * t124 + t418;
t15 = pkin(5) * t143 - qJ(6) * t125 + t348;
t6 = -qJ(6) * t55 - qJD(6) * t124 + t311;
t5 = pkin(5) * t98 + qJ(6) * t54 - qJD(6) * t125 + t288;
t3 = [qJDD(1), g(1) * t281 - g(2) * t432, t315 (qJDD(1) * t270 + 0.2e1 * t280 * t351) * t268 (t280 * t369 - t372 * t388) * t367 (t280 * t335 + t336 * t381) * t273 (t284 * t335 - t336 * t382) * t273, t403, -t204 * t253 - t254 * t252 - t333 * t275 + (t284 * t403 - t307 * t367) * pkin(1) + t325, -pkin(1) * t308 * t367 - t252 * t389 - t253 * t319 - t275 * t293 + t327, t134 * t207 + t200 * t156 - t204 * t189 + t325 * t274 + (-t315 * t272 + (qJD(1) * t135 + t111) * t382 + (-qJD(1) * t118 - qJDD(1) * t135 + t170 * t384 - t67) * t284) * t273, t134 * t208 + t200 * t157 + t204 * t190 - t325 * t272 + (-t315 * t274 + (-qJD(1) * t136 - t112) * t382 + (qJD(1) * t119 + qJDD(1) * t136 + t170 * t383 + t68) * t284) * t273, -t118 * t190 + t119 * t189 - t135 * t157 - t136 * t156 - t207 * t68 - t208 * t67 + (-t111 * t274 - t112 * t272) * t354 - t327, t68 * t136 + t112 * t119 + t67 * t135 + t111 * t118 + t134 * t200 + t170 * t204 - g(1) * (-pkin(2) * t212 - qJ(3) * t211 + t350) - g(2) * (pkin(2) * t214 + qJ(3) * t213 + t390) -t144 * t306 + t322 * t97, -t97 * t129 + t143 * t306 - t144 * t62 - t322 * t98, -t97 * t374 + t144 * t368 + (t306 * t284 + (qJD(1) * t144 + t322) * t382) * t273, t98 * t374 - t143 * t368 + (t62 * t284 + (-qJD(1) * t143 - t129) * t382) * t273 (-t368 * t284 + (-0.2e1 * t251 + qJD(4)) * t382) * t273, g(1) * t159 - g(2) * t163 + t127 * t98 + t169 * t129 + t84 * t143 + t153 * t62 + t302 * t345 - t323 * t374 + t346 * t398 + t355 * t37, t309 * t374 - t414 * t368 + t169 * t322 - t153 * t306 + t84 * t144 + t127 * t97 + (-t312 * t284 + (-qJD(1) * t414 - t38) * t382) * t273 + t329, -t104 * t54 - t125 * t31, t102 * t54 - t104 * t55 + t124 * t31 - t125 * t32, t104 * t98 + t125 * t61 - t143 * t31 - t449 * t54, -t102 * t98 - t124 * t61 - t143 * t32 - t449 * t55, t143 * t61 + t449 * t98, g(1) * t447 - g(2) * t121 + t10 * t124 + t25 * t102 + t4 * t143 + t16 * t98 + t288 * t449 + t52 * t32 + t34 * t55 + t348 * t61, -g(1) * t448 - g(2) * t120 + t10 * t125 + t25 * t104 + t314 * t143 - t17 * t98 - t52 * t31 - t311 * t449 - t34 * t54 - t418 * t61, -t1 * t125 - t102 * t6 - t104 * t5 + t11 * t54 - t124 * t2 - t13 * t55 + t15 * t31 - t22 * t32 - t329, t2 * t22 + t13 * t6 + t1 * t15 + t11 * t5 + t7 * (pkin(5) * t124 + t52) + t28 * (pkin(5) * t55 + t25) - g(1) * (t158 * t276 - t159 * t264 - t211 * t349 - t212 * t263 + t359 * t446 + t350) - g(2) * (-t162 * t276 + t163 * t264 + t213 * t349 + t214 * t263 + t399 * t446 + t390); 0, 0, 0, -t280 * t363, t388 * t401 (t376 * t385 + t370) * t273, -t356 * t376 + t250, t252, t203 * t253 + t401 * t431 + t291, pkin(1) * t363 + t202 * t253 + (pkin(8) * t372 + g(3)) * t400 + t326 + t360, -pkin(2) * t156 + t189 * t203 + t317 * t274 + ((-g(3) * t274 + t272 * t373) * t284 + (-t111 * t280 + t139 * t284 + t272 * t295) * qJD(1)) * t273, -pkin(2) * t157 - t190 * t203 - t317 * t272 + ((g(3) * t272 + t274 * t373) * t284 + (t112 * t280 - t140 * t284 + t274 * t295) * qJD(1)) * t273, t139 * t190 - t140 * t189 + (-qJ(3) * t156 + qJD(3) * t189 + t111 * t251 + t68) * t274 + (qJ(3) * t157 + qJD(3) * t190 + t112 * t251 - t67) * t272 + t296, -t111 * t139 - t112 * t140 - t170 * t203 + (-t111 * t272 + t112 * t274) * qJD(3) + (-t134 + t451) * pkin(2) + (-t272 * t67 + t274 * t68 + t296) * qJ(3), -t217 * t306 - t322 * t439, t129 * t439 + t216 * t306 - t217 * t62 - t322 * t391, t217 * t302 - t322 * t356 + t439 * t374, t129 * t356 - t216 * t302 + t391 * t374, t374 * t356, t391 * t127 - t168 * t129 + t84 * t216 - t263 * t62 + t302 * t321 - t37 * t356 + t440 * t374 + t292, -t439 * t127 - t168 * t322 - t174 * t302 + t84 * t217 + t263 * t306 + t38 * t356 + t374 * t461 - t441, t104 * t300 - t31 * t405, t343 * t104 + t342 * t102 + (t416 - t282 * t32 + (t102 * t278 - t104 * t282) * qJD(5)) * t217, t104 * t391 - t216 * t31 + t300 * t449 + t405 * t61, -t102 * t391 - t216 * t32 - t301 * t449 - t406 * t61, t216 * t61 + t391 * t449, -t34 * t141 + t149 * t61 - t321 * t32 + t4 * t216 + t391 * t16 + t445 * t449 + t413 * t102 + ((-t174 * t449 + t217 * t34) * qJD(5) + t292) * t282 + (t10 * t217 - t174 * t61 - t34 * t209 + (-qJD(5) * t155 - t460) * t449 + t296) * t278, -t393 * t61 + t314 * t216 + t321 * t31 + t10 * t405 - g(1) * (t213 * t402 + t214 * t282) - g(2) * (t211 * t402 + t212 * t282) - g(3) * (-t266 * t397 + t280 * t282) * t273 - t391 * t17 + (t174 * t378 - t436) * t449 + t413 * t104 + t300 * t34, t31 * t72 - t32 * t79 + t343 * t13 + t342 * t11 - t422 * t104 - t420 * t102 + t441 + (-t1 * t282 - t2 * t278 + (t11 * t278 - t13 * t282) * qJD(5)) * t217, t2 * t79 + t1 * t72 + t7 * (pkin(5) * t406 - t321) + t420 * t13 + t422 * t11 + t451 * (t264 * t266 - t265 * t276 + t263) + (-t113 + (qJD(3) * t274 - qJD(4) * t229) * t279 + (qJD(3) * t272 + qJD(4) * t230 + t109) * t283 + t301 * pkin(5) + pkin(4) * qJD(1) * t400) * t28 + t296 * t349; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t223 + (t272 * t370 + (-t190 + t384) * t385) * t273, t404 + (t274 * t370 + (-t189 + t383) * t385) * t273, -t189 ^ 2 - t190 ^ 2, t111 * t190 - t112 * t189 - t291 + t434, 0, 0, 0, 0, 0, t341 + 0.2e1 * t435 - t442, -t306 + t452, 0, 0, 0, 0, 0, -t278 * t340 - t444 + t59, -t282 * t340 - t415 - t443 (t31 - t453) * t282 + t458 + t421, t278 * t456 - t322 * t28 + t282 * t457 - t451; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t322 * t129, -t129 ^ 2 + t322 ^ 2, -t306 - t452, -t341 - t442, t302, -t127 * t322 - t374 * t38 + t305 - t346, t127 * t129 - t37 * t374 - t304 + t312, t104 * t337 - t416 (-t31 - t453) * t282 - t458 + t421, t337 * t449 + t415 - t443, -t409 * t449 + t444 + t59, -t449 * t322, -pkin(4) * t32 - t38 * t102 - t70 * t449 - t16 * t322 + (t37 * t449 + t310) * t278 - t287 * t282, pkin(4) * t31 - t38 * t104 + t17 * t322 + t278 * t287 + t282 * t310 + t419 * t449, -t412 * t102 - t411 * t104 + t234 * t31 + t235 * t32 - t278 * t457 + t282 * t456 + t304, -t2 * t235 + t1 * t234 - t7 * t264 - g(1) * (-t162 * t264 - t163 * t276) - g(2) * (-t158 * t264 - t159 * t276) - g(3) * (-t195 * t264 - t196 * t276) + (pkin(5) * t409 - t38) * t28 + t412 * t13 + t411 * t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t104 * t102, -t99 + t433, t102 * t449 - t31, -t289 + (-qJD(5) + t449) * t104, t61, -t34 * t104 + t17 * t449 + t4 + t437, t16 * t449 + t34 * t102 + g(1) * t121 + g(2) * t447 - g(3) * (-t196 * t282 + t237) + t314, pkin(5) * t31 - t102 * t423, t423 * t13 + (-t28 * t104 + t1 + t437) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t99 - t433, t13 * t102 + t11 * t104 - t305 + t7;];
tau_reg  = t3;
