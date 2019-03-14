% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RPRRPR10
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RPRRPR10_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR10_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR10_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPR10_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPR10_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPR10_invdynJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:37:17
% EndTime: 2019-03-09 05:37:32
% DurationCPUTime: 8.41s
% Computational Cost: add. (7590->637), mult. (14422->776), div. (0->0), fcn. (9062->8), ass. (0->303)
t227 = cos(qJ(3));
t212 = t227 * pkin(8);
t223 = sin(qJ(3));
t433 = t223 * pkin(3) + qJ(2) - t212;
t127 = t433 * qJD(1);
t230 = -pkin(1) - pkin(7);
t180 = t230 * qJD(1) + qJD(2);
t156 = t223 * t180;
t134 = qJD(3) * pkin(8) + t156;
t222 = sin(qJ(4));
t226 = cos(qJ(4));
t65 = t226 * t127 - t222 * t134;
t364 = qJD(5) - t65;
t354 = qJD(1) * t223;
t455 = -t354 - qJD(4);
t221 = sin(qJ(6));
t225 = cos(qJ(6));
t416 = pkin(4) + pkin(5);
t351 = qJD(3) * t222;
t353 = qJD(1) * t227;
t147 = t226 * t353 + t351;
t449 = -t147 * pkin(9) + t364;
t32 = t416 * t455 + t449;
t173 = t455 * qJ(5);
t340 = t226 * qJD(3);
t145 = t222 * t353 - t340;
t66 = t127 * t222 + t134 * t226;
t49 = pkin(9) * t145 + t66;
t35 = -t173 + t49;
t11 = -t221 * t35 + t225 * t32;
t339 = qJD(6) + t455;
t454 = t11 * t339;
t12 = t221 * t32 + t225 * t35;
t453 = t12 * t339;
t278 = -t225 * t145 + t147 * t221;
t80 = t145 * t221 + t147 * t225;
t404 = t80 * t278;
t348 = qJD(4) * t222;
t415 = pkin(8) - pkin(9);
t296 = pkin(3) * t227 + pkin(8) * t223;
t152 = t296 * qJD(1);
t369 = t227 * t180;
t86 = t222 * t152 + t226 * t369;
t72 = qJ(5) * t353 + t86;
t452 = -pkin(9) * t222 * t354 + t415 * t348 + t72;
t170 = t415 * t226;
t328 = t416 * t227;
t377 = t223 * t226;
t254 = pkin(9) * t377 - t328;
t85 = t226 * t152 - t222 * t369;
t451 = -qJD(1) * t254 + qJD(4) * t170 + t85;
t228 = cos(qJ(1));
t216 = g(2) * t228;
t224 = sin(qJ(1));
t217 = g(1) * t224;
t432 = t217 - t216;
t450 = t227 * t432;
t144 = qJD(3) * t296 + qJD(2);
t347 = qJD(4) * t223;
t448 = -t230 * t347 + t144;
t329 = t416 * t222;
t386 = qJ(5) * t226;
t263 = -t386 + t329;
t232 = qJD(1) ^ 2;
t365 = t232 * qJ(2);
t289 = -t432 - t365;
t447 = -t278 ^ 2 + t80 ^ 2;
t345 = qJD(4) * t227;
t318 = t222 * t345;
t253 = t223 * t340 + t318;
t335 = t227 * qJDD(1);
t68 = qJD(1) * t253 - qJD(4) * t340 - t222 * qJDD(3) - t226 * t335;
t350 = qJD(3) * t223;
t321 = t222 * t350;
t69 = -qJD(1) * t321 + qJD(4) * t147 - t226 * qJDD(3) + t222 * t335;
t310 = -t221 * t68 - t225 * t69;
t17 = qJD(6) * t80 + t310;
t446 = t339 * t80 - t17;
t342 = qJD(6) * t225;
t343 = qJD(6) * t221;
t16 = -t145 * t342 + t147 * t343 - t221 * t69 + t225 * t68;
t427 = t278 * t339 - t16;
t300 = qJD(1) + t347;
t320 = t227 * t340;
t352 = qJD(3) * t147;
t338 = qJD(1) * qJD(3);
t312 = t227 * t338;
t336 = t223 * qJDD(1);
t143 = qJDD(4) + t312 + t336;
t371 = t226 * t143;
t445 = -t455 * (t222 * t300 - t320) + (t352 - t371) * t223 + t227 * t68;
t383 = t147 * t226;
t396 = t69 * t226;
t397 = t68 * t222;
t444 = t227 * (qJD(4) * (t145 * t222 - t383) - t396 + t397) + (t145 * t226 + t147 * t222) * t350;
t370 = t226 * t227;
t379 = t222 * t227;
t114 = t221 * t370 - t225 * t379;
t346 = qJD(4) * t226;
t75 = qJD(1) * t144 + qJDD(1) * t433;
t174 = t230 * qJDD(1) + qJDD(2);
t349 = qJD(3) * t227;
t91 = qJDD(3) * pkin(8) + t174 * t223 + t180 * t349;
t304 = t127 * t348 + t134 * t346 + t222 * t91 - t226 * t75;
t280 = qJDD(5) + t304;
t7 = pkin(9) * t68 - t416 * t143 + t280;
t133 = t143 * qJ(5);
t171 = t455 * qJD(5);
t20 = t127 * t346 - t134 * t348 + t222 * t75 + t226 * t91;
t13 = t133 - t171 + t20;
t9 = pkin(9) * t69 + t13;
t2 = -t12 * qJD(6) - t221 * t9 + t225 * t7;
t373 = t224 * t226;
t376 = t223 * t228;
t130 = t222 * t376 + t373;
t367 = t228 * t226;
t374 = t224 * t222;
t131 = t223 * t367 - t374;
t306 = -t130 * t225 + t131 * t221;
t135 = -qJD(3) * pkin(3) - t369;
t250 = t147 * qJ(5) - t135;
t43 = -t416 * t145 + t250;
t128 = t223 * t374 - t367;
t129 = t222 * t228 + t223 * t373;
t63 = t128 * t225 - t129 * t221;
t443 = -g(1) * t63 - g(2) * t306 + g(3) * t114 - t43 * t80 + t2;
t271 = t147 * t455;
t272 = t145 * t455;
t442 = (t69 - t271) * t222 + (-t272 + t68) * t226;
t382 = t222 * qJ(5);
t262 = -t416 * t226 - t382;
t439 = -pkin(3) + t262;
t437 = t69 + t271;
t380 = t222 * t225;
t275 = t221 * t226 - t380;
t258 = t223 * t275;
t219 = t223 ^ 2;
t220 = t227 ^ 2;
t356 = t219 + t220;
t309 = t356 * t174;
t434 = t222 * qJD(5) + t156;
t368 = t227 * t228;
t333 = g(2) * t368;
t406 = g(3) * t223;
t431 = t406 + t333;
t429 = qJD(4) - qJD(6);
t428 = -t221 * t346 - t222 * t342 + t225 * t348 + t226 * t343;
t410 = pkin(8) * t143;
t55 = pkin(4) * t145 - t250;
t426 = -t455 * t55 - t410;
t332 = pkin(8) * qJD(4) * t455;
t423 = t332 + t406 - t450;
t259 = -t348 * t455 - t371;
t381 = t222 * t223;
t422 = qJD(1) * (-t145 * t227 - t381 * t455) + t259;
t260 = t222 * t143 - t346 * t455;
t420 = t223 * (-t351 * t455 - t69) - t227 * (qJD(3) * t145 + t260);
t150 = t221 * t222 + t225 * t226;
t115 = t150 * t227;
t264 = -t221 * t7 - t225 * t9 - t32 * t342 + t343 * t35;
t279 = t130 * t221 + t131 * t225;
t64 = t128 * t221 + t129 * t225;
t419 = g(1) * t64 - g(2) * t279 + g(3) * t115 + t278 * t43 + t264;
t418 = t147 ^ 2;
t417 = 0.2e1 * qJ(2);
t412 = pkin(4) * t143;
t411 = pkin(4) * t222;
t409 = pkin(8) * t147;
t407 = g(3) * t212;
t405 = t227 * pkin(9);
t169 = t415 * t222;
t95 = t169 * t225 - t170 * t221;
t403 = qJD(6) * t95 + t451 * t221 - t452 * t225;
t96 = t169 * t221 + t170 * t225;
t402 = -qJD(6) * t96 + t452 * t221 + t451 * t225;
t401 = t455 * t263 + t434;
t53 = -t173 + t66;
t400 = t455 * t53;
t399 = t455 * t66;
t157 = -qJ(5) * t221 - t225 * t416;
t395 = qJD(6) * t157 - t221 * t49 + t449 * t225;
t158 = qJ(5) * t225 - t221 * t416;
t394 = -qJD(6) * t158 - t449 * t221 - t225 * t49;
t286 = -t386 + t411;
t393 = -t286 * t455 - t434;
t236 = t429 * t150;
t392 = -t150 * qJD(1) - t223 * t236 + t275 * t349;
t255 = qJD(3) * t150;
t391 = -t275 * qJD(1) - t227 * t255 - t429 * t258;
t113 = t150 * t223;
t390 = qJD(1) * t113 - qJD(6) * t150 + t221 * t348 + t225 * t346;
t389 = qJD(1) * t258 - t428;
t388 = pkin(1) * qJDD(1);
t387 = qJ(5) * t145;
t384 = t145 * t147;
t378 = t223 * t224;
t375 = t223 * t230;
t372 = t224 * t227;
t231 = qJD(3) ^ 2;
t366 = t230 * t231;
t363 = g(3) * t377 + t226 * t333;
t98 = t222 * t433 + t226 * t375;
t362 = pkin(3) * t372 + pkin(8) * t378;
t361 = g(1) * t368 + g(2) * t372;
t331 = 0.2e1 * qJD(1) * qJD(2);
t360 = (qJDD(1) * qJ(2) + t331) * qJ(2);
t359 = t228 * pkin(1) + t224 * qJ(2);
t357 = t219 - t220;
t355 = -t231 - t232;
t344 = qJD(5) * t226;
t337 = qJDD(3) * t223;
t334 = pkin(8) * t372;
t195 = g(2) * t376;
t330 = t230 * t224;
t327 = t224 * t370;
t326 = t227 * t232 * t223;
t93 = t223 * qJ(5) + t98;
t324 = g(1) * t378 + g(3) * t227 - t195;
t323 = t228 * pkin(7) + t359;
t319 = t230 * t349;
t315 = t455 * t353;
t313 = t145 ^ 2 - t418;
t308 = -t128 * pkin(4) + qJ(5) * t129;
t307 = t130 * pkin(4) - qJ(5) * t131;
t177 = t222 * t375;
t97 = t226 * t433 - t177;
t305 = t339 ^ 2;
t303 = t356 * qJDD(1);
t302 = -pkin(8) * t396 - t324;
t301 = qJDD(2) - t388;
t299 = pkin(4) * t327 + t372 * t382 + t362;
t298 = pkin(3) * t378 + t323;
t297 = t223 * t312;
t295 = g(1) * t130 + g(2) * t128;
t294 = -g(1) * t131 - g(2) * t129;
t293 = g(1) * t228 + g(2) * t224;
t155 = t227 * t174;
t290 = qJDD(3) * pkin(3) - t180 * t350 + t155;
t288 = (qJD(4) * t145 - t68) * pkin(8);
t287 = pkin(4) * t226 + t382;
t62 = t177 + (-t433 - t405) * t226 - t416 * t223;
t74 = pkin(9) * t379 + t93;
t27 = -t221 * t74 + t225 * t62;
t28 = t221 * t62 + t225 * t74;
t52 = pkin(4) * t455 + t364;
t285 = t222 * t53 - t226 * t52;
t284 = t222 * t52 + t226 * t53;
t283 = t222 * t66 + t226 * t65;
t282 = t222 * t65 - t226 * t66;
t211 = t228 * qJ(2);
t273 = pkin(3) * t376 - pkin(8) * t368 + t211;
t270 = pkin(3) + t287;
t268 = -g(1) * t128 + g(2) * t130 - g(3) * t379;
t47 = -t222 * t319 + t448 * t226 - t433 * t348;
t267 = qJDD(1) * t417 + t331;
t257 = qJDD(3) * t230 + t338 * t417;
t256 = -g(1) * t372 + t332;
t252 = t226 * t345 - t321;
t249 = t129 * pkin(4) + t128 * qJ(5) + t298;
t46 = t448 * t222 + t226 * t319 + t433 * t346;
t247 = -t135 * t455 - t410;
t246 = t131 * pkin(4) + t130 * qJ(5) + t273;
t244 = -t268 - t304;
t243 = -t222 * t272 - t396;
t242 = -qJ(5) * t68 + qJD(5) * t147 + t290;
t34 = qJ(5) * t349 + t223 * qJD(5) + t46;
t241 = t267 - t293;
t14 = t280 - t412;
t240 = -qJD(4) * t285 + t13 * t226 + t14 * t222;
t239 = -qJD(4) * t283 + t20 * t226 + t222 * t304;
t238 = t145 * t252 + t379 * t69;
t237 = t147 * t55 + qJDD(5) - t244;
t235 = g(1) * t129 - g(2) * t131 + g(3) * t370 - t455 * t65 - t20;
t234 = -t143 * t381 - t227 * t69 + t145 * t350 - (-t222 * t349 - t226 * t300) * t455;
t233 = -t145 * t320 - t69 * t377 + t300 * t383 + (t145 * t300 + t147 * t349 - t68 * t223) * t222;
t206 = qJDD(3) * t227;
t186 = qJ(5) * t370;
t138 = -qJDD(6) + t143;
t112 = t221 * t377 - t223 * t380;
t102 = -t186 + (-t230 + t411) * t227;
t94 = -pkin(4) * t223 - t97;
t92 = t186 + (t230 - t329) * t227;
t89 = t143 * t223 - t349 * t455;
t87 = pkin(4) * t147 + t387;
t73 = -pkin(4) * t353 - t85;
t56 = -t416 * t147 - t387;
t51 = (qJD(4) * t287 - t344) * t227 + (t230 - t286) * t350;
t45 = -t68 - t272;
t44 = -pkin(4) * t349 - t47;
t40 = (-t147 * t227 - t377 * t455) * qJD(1) + t260;
t38 = t223 * t255 + t227 * t428;
t37 = qJD(3) * t258 + t227 * t236;
t33 = (qJD(4) * t262 + t344) * t227 + (-t230 + t263) * t350;
t30 = -t226 * t271 - t397;
t29 = pkin(9) * t252 + t34;
t26 = pkin(9) * t318 + qJD(3) * t254 - t47;
t25 = -t147 * t253 - t370 * t68;
t22 = (t340 * t455 - t68) * t223 + (-t259 + t352) * t227;
t15 = pkin(4) * t69 - t242;
t10 = -t416 * t69 + t242;
t4 = -qJD(6) * t28 - t221 * t29 + t225 * t26;
t3 = qJD(6) * t27 + t221 * t26 + t225 * t29;
t1 = [0, 0, 0, 0, 0, qJDD(1), t432, t293, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, qJDD(2) - t432 - 0.2e1 * t388, t241, -t301 * pkin(1) - g(1) * (-t224 * pkin(1) + t211) - g(2) * t359 + t360, qJDD(1) * t220 - 0.2e1 * t297, -0.2e1 * t223 * t335 + 0.2e1 * t338 * t357, -t223 * t231 + t206, qJDD(1) * t219 + 0.2e1 * t297, -t227 * t231 - t337, 0, t257 * t227 + (t241 - t366) * t223, -t257 * t223 + (t267 - t366) * t227 - t361, -t230 * t303 - t309 + t432, -g(1) * (t211 + t330) - g(2) * t323 + t230 * t309 + t360, t25, t444, t22, t238, t420, t89, t97 * t143 - t47 * t455 + (-t304 + (-t135 * t222 + t145 * t230) * qJD(3)) * t223 + (qJD(3) * t65 + t135 * t346 - t222 * t290 - t230 * t69) * t227 + t294, -t98 * t143 + t46 * t455 + (-t20 + (-t135 * t226 + t147 * t230) * qJD(3)) * t223 + (-qJD(3) * t66 - t135 * t348 - t226 * t290 + t230 * t68) * t227 + t295, -t46 * t145 - t47 * t147 + t97 * t68 - t98 * t69 + t283 * t350 + (qJD(4) * t282 - t20 * t222 + t226 * t304) * t227 + t361, t20 * t98 + t66 * t46 - t304 * t97 + t65 * t47 - g(1) * (t330 + t273) - g(2) * (t298 - t334) + (t135 * t350 + t227 * t290) * t230, t25, t22, -t444, t89, -t420, t238, t102 * t69 - t94 * t143 + t51 * t145 + t44 * t455 + (-t351 * t55 - t14) * t223 + (-qJD(3) * t52 + t15 * t222 + t346 * t55) * t227 + t294, -t34 * t145 + t44 * t147 - t94 * t68 - t93 * t69 + t285 * t350 + (-qJD(4) * t284 - t13 * t222 + t14 * t226) * t227 + t361, t102 * t68 + t93 * t143 - t51 * t147 - t34 * t455 + (t340 * t55 + t13) * t223 + (qJD(3) * t53 - t15 * t226 + t348 * t55) * t227 - t295, t13 * t93 + t53 * t34 + t15 * t102 + t55 * t51 + t14 * t94 + t52 * t44 - g(1) * (t330 + t246) - g(2) * (t249 - t334) -t115 * t16 - t38 * t80, t114 * t16 - t115 * t17 + t278 * t38 + t37 * t80, -t115 * t138 + t16 * t223 - t339 * t38 - t349 * t80, t114 * t17 - t278 * t37, t114 * t138 + t17 * t223 + t278 * t349 + t339 * t37, t138 * t223 - t339 * t349, -g(1) * t279 - g(2) * t64 + t10 * t114 - t11 * t349 - t27 * t138 + t92 * t17 - t2 * t223 + t278 * t33 + t339 * t4 - t43 * t37, g(1) * t306 - g(2) * t63 + t10 * t115 + t12 * t349 + t28 * t138 - t92 * t16 - t223 * t264 - t3 * t339 + t33 * t80 - t43 * t38, t11 * t38 + t114 * t264 - t115 * t2 + t12 * t37 + t16 * t27 - t17 * t28 - t278 * t3 - t4 * t80 - t361, -t264 * t28 + t12 * t3 + t2 * t27 + t11 * t4 + t10 * t92 + t43 * t33 - g(1) * (t131 * pkin(5) + pkin(9) * t368 + t246) - g(2) * (t129 * pkin(5) + t249) + (g(2) * t415 * t227 - g(1) * t230) * t224; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t232, t289 + t301, 0, 0, 0, 0, 0, 0, t223 * t355 + t206, t227 * t355 - t337, -t303, t309 + t289, 0, 0, 0, 0, 0, 0, t234, t445, t233, -t283 * qJD(1) + (-qJD(3) * t282 + t290) * t227 + (qJD(3) * t135 + t239) * t223 - t432, 0, 0, 0, 0, 0, 0, t234, t233, -t445, -t285 * qJD(1) + (qJD(3) * t284 - t15) * t227 + (qJD(3) * t55 + t240) * t223 - t432, 0, 0, 0, 0, 0, 0, t112 * t138 + t227 * t17 - t278 * t350 - t339 * t392, t113 * t138 - t227 * t16 + t339 * t391 - t80 * t350, -t112 * t16 - t113 * t17 + t278 * t391 + t392 * t80, t10 * t227 - t392 * t11 - t2 * t112 - t113 * t264 - t391 * t12 - t43 * t350 - t432; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t326, -t357 * t232, t335, -t326, -t336, qJDD(3), t289 * t227 + t155 + t406 (-t174 + t365) * t223 + t324, 0, 0, t30, -t442, t40, t243, -t422, t315, -t65 * t353 - t145 * t156 - pkin(3) * t69 + t85 * t455 + (t256 + t290) * t226 + t247 * t222 + t363, t66 * t353 - t147 * t156 + pkin(3) * t68 - t86 * t455 + t247 * t226 + (-t423 - t290) * t222, t145 * t86 + t147 * t85 + (-t65 * t354 + t20 + (-t65 + t409) * qJD(4)) * t226 + (t304 + t288 + t399) * t222 + t302, -t66 * t86 - t65 * t85 - t135 * t156 - g(1) * t362 - t407 + (t290 + t431) * pkin(3) + (t239 + t195) * pkin(8), t30, t40, t442, t315, t422, t243, t52 * t353 - t270 * t69 - t73 * t455 + t393 * t145 + (-t15 + t256) * t226 + t426 * t222 + t363, t72 * t145 - t73 * t147 + (t52 * t354 + t13 + (t52 + t409) * qJD(4)) * t226 + (t14 + t288 + t400) * t222 + t302, -t53 * t353 - t270 * t68 + t72 * t455 - t393 * t147 - t426 * t226 + (-t15 + t423) * t222, -t53 * t72 - t52 * t73 - g(1) * t299 - t407 + t393 * t55 + (t240 + t195) * pkin(8) + (-t15 + t431) * t270, t16 * t275 + t390 * t80, t150 * t16 + t17 * t275 - t278 * t390 - t389 * t80, t138 * t275 + t339 * t390 + t80 * t353, t150 * t17 + t278 * t389, t150 * t138 - t278 * t353 - t339 * t389, t339 * t353, t11 * t353 + g(3) * t113 - t95 * t138 - t439 * t17 + t402 * t339 + t389 * t43 + t401 * t278 + (t10 - t450) * t150, -g(3) * t112 - t10 * t275 + t96 * t138 + t439 * t16 + t401 * t80 + t390 * t43 - t403 * t339 + (-t12 * qJD(1) + t275 * t432) * t227, -t390 * t11 - t389 * t12 + t150 * t264 + t16 * t95 - t17 * t96 + t2 * t275 - t278 * t403 - t402 * t80 + t324, -t264 * t96 + t2 * t95 - t10 * t439 - g(1) * (pkin(5) * t327 + t299) - g(3) * (t212 - t405) + t401 * t43 + t403 * t12 + t402 * t11 + (pkin(9) * t217 - g(3) * (-pkin(5) * t226 - t270)) * t223 - (-t415 * t223 + t439 * t227) * t216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t384, -t313, t45, -t384, -t437, t143, -t135 * t147 + t244 - t399, t135 * t145 + t235, 0, 0, t384, t45, t313, t143, t437, -t384, -t145 * t87 - t237 - t399 + 0.2e1 * t412, pkin(4) * t68 - qJ(5) * t69 + (t53 - t66) * t147 + (t52 - t364) * t145, -t145 * t55 + t147 * t87 + 0.2e1 * t133 - 0.2e1 * t171 - t235, t13 * qJ(5) - t14 * pkin(4) - t55 * t87 - t52 * t66 - g(1) * t308 - g(2) * t307 - g(3) * (-pkin(4) * t379 + t186) + t364 * t53, -t404, -t447, -t427, t404, -t446, t138, -t157 * t138 - t278 * t56 + t339 * t394 - t443, t158 * t138 - t339 * t395 - t56 * t80 - t419, t157 * t16 - t158 * t17 + (t11 - t395) * t278 + (-t12 - t394) * t80, -t264 * t158 + t2 * t157 - t43 * t56 - g(1) * (-pkin(5) * t128 + t308) - g(2) * (pkin(5) * t130 + t307) - g(3) * (-t222 * t328 + t186) + t395 * t12 + t394 * t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t143 + t384, t45, -t455 ^ 2 - t418, t237 + t400 - t412, 0, 0, 0, 0, 0, 0, -t225 * t138 - t147 * t278 - t221 * t305, t221 * t138 - t147 * t80 - t225 * t305, t446 * t221 - t427 * t225, -t43 * t147 + (t2 + t453) * t225 + (-t264 - t454) * t221 + t268; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t404, t447, t427, -t404, -t310 + (-qJD(6) + t339) * t80, -t138, t443 + t453, t419 + t454, 0, 0;];
tau_reg  = t1;