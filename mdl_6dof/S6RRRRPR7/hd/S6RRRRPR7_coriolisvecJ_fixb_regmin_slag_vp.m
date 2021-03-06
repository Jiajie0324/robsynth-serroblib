% Calculate minimal parameter regressor of coriolis joint torque vector for
% S6RRRRPR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tauc_reg [6x33]
%   minimal parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 22:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRPR7_coriolisvecJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR7_coriolisvecJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR7_coriolisvecJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR7_coriolisvecJ_fixb_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 22:34:09
% EndTime: 2019-03-09 22:34:38
% DurationCPUTime: 12.24s
% Computational Cost: add. (18366->530), mult. (47957->753), div. (0->0), fcn. (38905->12), ass. (0->272)
t281 = sin(pkin(6));
t291 = cos(qJ(2));
t371 = qJD(1) * t291;
t352 = t281 * t371;
t257 = -qJD(3) + t352;
t446 = qJD(4) - t257;
t287 = sin(qJ(2));
t290 = cos(qJ(3));
t373 = qJD(1) * t281;
t353 = t287 * t373;
t283 = cos(pkin(6));
t372 = qJD(1) * t283;
t358 = pkin(1) * t372;
t220 = -pkin(8) * t353 + t291 * t358;
t310 = (pkin(2) * t287 - pkin(9) * t291) * t281;
t221 = qJD(1) * t310;
t286 = sin(qJ(3));
t334 = -t286 * t220 + t290 * t221;
t411 = pkin(9) + pkin(10);
t355 = qJD(3) * t411;
t384 = t290 * t291;
t445 = (pkin(3) * t287 - pkin(10) * t384) * t373 + t334 + t290 * t355;
t327 = t286 * t352;
t376 = t290 * t220 + t286 * t221;
t443 = -pkin(10) * t327 + t286 * t355 + t376;
t288 = cos(qJ(6));
t362 = qJD(6) * t288;
t267 = qJD(2) + t372;
t328 = t286 * t353;
t201 = -t290 * t267 + t328;
t203 = t267 * t286 + t290 * t353;
t285 = sin(qJ(4));
t289 = cos(qJ(4));
t157 = t289 * t201 + t203 * t285;
t280 = sin(pkin(12));
t282 = cos(pkin(12));
t313 = t201 * t285 - t289 * t203;
t414 = -t282 * t157 + t280 * t313;
t444 = -t414 * t288 + t362;
t238 = t285 * t286 - t289 * t290;
t442 = t446 * t238;
t239 = t285 * t290 + t286 * t289;
t378 = t446 * t239;
t284 = sin(qJ(6));
t413 = -t157 * t280 - t282 * t313;
t100 = t284 * t446 + t288 * t413;
t105 = qJD(6) - t414;
t332 = t105 * t284;
t360 = qJD(1) * qJD(2);
t345 = t281 * t360;
t261 = t287 * t345;
t363 = qJD(6) * t284;
t326 = t291 * t345;
t366 = qJD(3) * t290;
t172 = -qJD(3) * t328 + t267 * t366 + t290 * t326;
t368 = qJD(2) * t291;
t349 = t286 * t368;
t367 = qJD(3) * t286;
t173 = (t287 * t366 + t349) * t373 + t267 * t367;
t294 = qJD(4) * t313 - t285 * t172 - t289 * t173;
t364 = qJD(4) * t289;
t365 = qJD(4) * t285;
t95 = t289 * t172 - t285 * t173 - t201 * t364 - t203 * t365;
t57 = t280 * t294 + t282 * t95;
t38 = t284 * t261 + t288 * t57 + t362 * t446 - t363 * t413;
t344 = -t288 * t261 + t284 * t57;
t39 = qJD(6) * t100 + t344;
t98 = t284 * t413 - t288 * t446;
t441 = -t100 * t332 - t284 * t39 + t38 * t288 - t444 * t98;
t439 = t445 * t289;
t259 = t411 * t286;
t260 = t411 * t290;
t438 = -t259 * t364 - t260 * t365 - t285 * t445 - t443 * t289;
t36 = t38 * t284;
t436 = t100 * t444 + t36;
t398 = t100 * t413;
t56 = t280 * t95 - t282 * t294;
t52 = t284 * t56;
t435 = t105 * t444 - t398 + t52;
t423 = qJ(5) * t157;
t264 = t287 * t358;
t224 = pkin(8) * t352 + t264;
t187 = pkin(9) * t267 + t224;
t215 = (-pkin(2) * t291 - pkin(9) * t287 - pkin(1)) * t281;
t197 = qJD(1) * t215;
t149 = -t187 * t286 + t290 * t197;
t131 = -pkin(10) * t203 + t149;
t121 = -pkin(3) * t257 + t131;
t150 = t187 * t290 + t197 * t286;
t132 = -pkin(10) * t201 + t150;
t130 = t289 * t132;
t79 = t121 * t285 + t130;
t64 = t79 - t423;
t402 = t280 * t64;
t422 = qJ(5) * t313;
t128 = t285 * t132;
t78 = t289 * t121 - t128;
t63 = t78 + t422;
t60 = pkin(4) * t446 + t63;
t29 = t282 * t60 - t402;
t27 = -pkin(5) * t446 - t29;
t434 = t27 * t414;
t403 = t413 * t98;
t433 = -qJ(5) * t378 - qJD(5) * t238 + t438;
t375 = -t285 * t259 + t289 * t260;
t432 = -pkin(4) * t353 + t442 * qJ(5) - qJD(4) * t375 - qJD(5) * t239 + t285 * t443 - t439;
t431 = t105 * t413;
t325 = -t224 + (-t327 + t367) * pkin(3);
t429 = pkin(4) * t378 + t325;
t61 = t282 * t64;
t30 = t280 * t60 + t61;
t28 = pkin(11) * t446 + t30;
t186 = -pkin(2) * t267 - t220;
t161 = pkin(3) * t201 + t186;
t116 = pkin(4) * t157 + qJD(5) + t161;
t48 = -pkin(5) * t414 - pkin(11) * t413 + t116;
t13 = t28 * t288 + t284 * t48;
t222 = qJD(2) * t310;
t210 = qJD(1) * t222;
t387 = t281 * t287;
t268 = pkin(8) * t387;
t409 = pkin(1) * t291;
t225 = (t283 * t409 - t268) * qJD(2);
t211 = qJD(1) * t225;
t296 = -qJD(3) * t150 + t290 * t210 - t286 * t211;
t86 = pkin(3) * t261 - pkin(10) * t172 + t296;
t305 = -t187 * t367 + t197 * t366 + t286 * t210 + t290 * t211;
t89 = -pkin(10) * t173 + t305;
t299 = -qJD(4) * t79 - t285 * t89 + t289 * t86;
t17 = pkin(4) * t261 - qJ(5) * t95 + qJD(5) * t313 + t299;
t331 = -t121 * t364 + t132 * t365 - t285 * t86 - t289 * t89;
t19 = qJ(5) * t294 - qJD(5) * t157 - t331;
t6 = t17 * t282 - t19 * t280;
t4 = -pkin(5) * t261 - t6;
t428 = t13 * t413 + t27 * t362 + t4 * t284;
t317 = t28 * t284 - t288 * t48;
t427 = t27 * t363 - t4 * t288 + t317 * t413;
t426 = pkin(5) * t413 - pkin(11) * t414;
t425 = pkin(4) * t313;
t421 = t313 * t157;
t382 = -t280 * t442 + t282 * t378;
t420 = -t280 * t378 - t282 * t442;
t419 = -t157 ^ 2 + t313 ^ 2;
t418 = t157 * t446 + t95;
t417 = t157 * t161 + t331;
t416 = t161 * t313 + t299;
t415 = -t313 * t446 + t294;
t407 = -t280 * t433 + t282 * t432;
t405 = t280 * t432 + t282 * t433;
t231 = t283 * t286 + t290 * t387;
t386 = t281 * t291;
t214 = pkin(8) * t386 + (pkin(1) * t287 + pkin(9)) * t283;
t335 = -t214 * t286 + t290 * t215;
t138 = -pkin(3) * t386 - pkin(10) * t231 + t335;
t230 = -t283 * t290 + t286 * t387;
t377 = t290 * t214 + t286 * t215;
t144 = -pkin(10) * t230 + t377;
t381 = t285 * t138 + t289 * t144;
t212 = pkin(8) * t326 + qJD(2) * t264;
t148 = pkin(3) * t173 + t212;
t73 = -pkin(4) * t294 + t148;
t15 = pkin(5) * t56 - pkin(11) * t57 + t73;
t7 = t280 * t17 + t282 * t19;
t5 = pkin(11) * t261 + t7;
t1 = -qJD(6) * t317 + t284 * t15 + t288 * t5;
t169 = t289 * t230 + t231 * t285;
t181 = qJD(3) * t231 + t281 * t349;
t350 = t281 * t368;
t182 = -qJD(3) * t230 + t290 * t350;
t113 = -qJD(4) * t169 - t285 * t181 + t289 * t182;
t170 = -t230 * t285 + t231 * t289;
t304 = -t214 * t367 + t215 * t366 + t286 * t222 + t290 * t225;
t102 = -pkin(10) * t181 + t304;
t295 = -qJD(3) * t377 + t290 * t222 - t286 * t225;
t370 = qJD(2) * t287;
t351 = t281 * t370;
t97 = pkin(3) * t351 - pkin(10) * t182 + t295;
t297 = -qJD(4) * t381 - t285 * t102 + t289 * t97;
t22 = pkin(4) * t351 - qJ(5) * t113 - qJD(5) * t170 + t297;
t114 = qJD(4) * t170 + t289 * t181 + t285 * t182;
t306 = t289 * t102 + t138 * t364 - t144 * t365 + t285 * t97;
t24 = -qJ(5) * t114 - qJD(5) * t169 + t306;
t11 = t280 * t22 + t282 * t24;
t406 = pkin(5) * t353 - t407;
t338 = t289 * t138 - t144 * t285;
t74 = -pkin(4) * t386 - qJ(5) * t170 + t338;
t76 = -qJ(5) * t169 + t381;
t43 = t280 * t74 + t282 * t76;
t404 = pkin(3) * qJD(4);
t341 = -t131 * t285 - t130;
t309 = t341 + t423;
t385 = t282 * t285;
t383 = t289 * t131 - t128;
t69 = t383 + t422;
t400 = -t280 * t69 + t282 * t309 + (t280 * t289 + t385) * t404;
t388 = t280 * t285;
t399 = -t280 * t309 - t282 * t69 + (t282 * t289 - t388) * t404;
t176 = -t238 * t280 + t239 * t282;
t395 = t176 * t284;
t394 = t176 * t288;
t393 = t201 * t257;
t392 = t203 * t257;
t391 = t257 * t286;
t390 = t257 * t290;
t277 = t281 ^ 2;
t389 = t277 * qJD(1) ^ 2;
t226 = t283 * pkin(1) * t370 + pkin(8) * t350;
t274 = pkin(3) * t289 + pkin(4);
t228 = pkin(3) * t385 + t280 * t274;
t374 = t287 ^ 2 - t291 ^ 2;
t369 = qJD(2) * t290;
t357 = t287 * t389;
t356 = t284 * t386;
t275 = -pkin(3) * t290 - pkin(2);
t354 = t277 * t371;
t346 = t277 * t360;
t218 = pkin(11) + t228;
t321 = pkin(3) * t203 - t425;
t343 = qJD(6) * t218 + t321 + t426;
t271 = pkin(4) * t280 + pkin(11);
t342 = qJD(6) * t271 - t425 + t426;
t340 = -t284 * t420 - t288 * t353;
t339 = t284 * t353 - t288 * t420;
t333 = -t289 * t259 - t260 * t285;
t330 = t267 + t372;
t329 = 0.2e1 * t346;
t162 = pkin(3) * t181 + t226;
t175 = t282 * t238 + t239 * t280;
t312 = pkin(4) * t238 + t275;
t122 = pkin(5) * t175 - pkin(11) * t176 + t312;
t324 = pkin(11) * t353 - qJD(6) * t122 - t405;
t165 = -qJ(5) * t238 + t375;
t308 = -qJ(5) * t239 + t333;
t124 = t282 * t165 + t280 * t308;
t323 = -pkin(5) * t382 + pkin(11) * t420 + qJD(6) * t124 - t429;
t322 = -0.2e1 * pkin(1) * t346;
t319 = -t271 * t56 - t434;
t318 = -t218 * t56 - t434;
t10 = t22 * t282 - t24 * t280;
t42 = -t280 * t76 + t282 * t74;
t41 = -pkin(11) * t386 + t43;
t125 = t282 * t169 + t170 * t280;
t126 = -t169 * t280 + t170 * t282;
t213 = t268 + (-pkin(2) - t409) * t283;
t171 = t230 * pkin(3) + t213;
t298 = pkin(4) * t169 + t171;
t58 = pkin(5) * t125 - pkin(11) * t126 + t298;
t316 = t284 * t58 + t288 * t41;
t315 = -t284 * t41 + t288 * t58;
t53 = t288 * t56;
t311 = t53 + (t284 * t414 - t363) * t105;
t227 = -pkin(3) * t388 + t274 * t282;
t117 = t126 * t284 + t288 * t386;
t307 = pkin(4) * t114 + t162;
t302 = t176 * t362 - t340;
t301 = -t176 * t363 - t339;
t2 = -qJD(6) * t13 + t288 * t15 - t284 * t5;
t272 = -pkin(4) * t282 - pkin(5);
t217 = -pkin(5) - t227;
t123 = t165 * t280 - t282 * t308;
t118 = t126 * t288 - t356;
t68 = t113 * t282 - t114 * t280;
t67 = t113 * t280 + t282 * t114;
t45 = -qJD(6) * t356 + t126 * t362 + t284 * t68 - t288 * t351;
t44 = -qJD(6) * t117 + t284 * t351 + t288 * t68;
t40 = pkin(5) * t386 - t42;
t32 = t282 * t63 - t402;
t31 = t280 * t63 + t61;
t20 = pkin(5) * t67 - pkin(11) * t68 + t307;
t9 = pkin(11) * t351 + t11;
t8 = -pkin(5) * t351 - t10;
t3 = [0, 0, 0, t287 * t291 * t329, -t374 * t329, t330 * t350, -t330 * t351, 0, -t212 * t283 - t226 * t267 + t287 * t322, -t211 * t283 - t225 * t267 + t291 * t322, t172 * t231 + t182 * t203, -t172 * t230 - t173 * t231 - t181 * t203 - t182 * t201, -t182 * t257 + (-t172 * t291 + (qJD(1) * t231 + t203) * t370) * t281, t181 * t257 + (t173 * t291 + (-qJD(1) * t230 - t201) * t370) * t281 (-t257 * t281 - t354) * t370, -t295 * t257 + t226 * t201 + t213 * t173 + t212 * t230 + t186 * t181 + (-t296 * t291 + (qJD(1) * t335 + t149) * t370) * t281, t304 * t257 + t226 * t203 + t213 * t172 + t212 * t231 + t186 * t182 + (t305 * t291 + (-qJD(1) * t377 - t150) * t370) * t281, -t113 * t313 + t170 * t95, -t113 * t157 + t114 * t313 - t169 * t95 + t170 * t294, t113 * t446 + (-t291 * t95 + (qJD(1) * t170 - t313) * t370) * t281, -t114 * t446 + (-t291 * t294 + (-qJD(1) * t169 - t157) * t370) * t281 (t281 * t446 - t354) * t370, t297 * t446 + t162 * t157 - t171 * t294 + t148 * t169 + t161 * t114 + (-t299 * t291 + (qJD(1) * t338 + t78) * t370) * t281, -t306 * t446 - t162 * t313 + t171 * t95 + t148 * t170 + t161 * t113 + (-t331 * t291 + (-qJD(1) * t381 - t79) * t370) * t281, -t10 * t413 + t11 * t414 - t125 * t7 - t126 * t6 - t29 * t68 - t30 * t67 - t42 * t57 - t43 * t56, t29 * t10 + t30 * t11 + t116 * t307 + t298 * t73 + t6 * t42 + t7 * t43, t100 * t44 + t118 * t38, -t100 * t45 - t117 * t38 - t118 * t39 - t44 * t98, t100 * t67 + t105 * t44 + t118 * t56 + t125 * t38, -t105 * t45 - t117 * t56 - t125 * t39 - t67 * t98, t105 * t67 + t125 * t56 (-qJD(6) * t316 + t288 * t20 - t284 * t9) * t105 + t315 * t56 + t2 * t125 - t317 * t67 + t8 * t98 + t40 * t39 + t4 * t117 + t27 * t45 -(qJD(6) * t315 + t284 * t20 + t288 * t9) * t105 - t316 * t56 - t1 * t125 - t13 * t67 + t8 * t100 + t40 * t38 + t4 * t118 + t27 * t44; 0, 0, 0, -t291 * t357, t374 * t389 (qJD(2) - t267) * t352, t267 * t353 - t261, 0, pkin(1) * t357 + t224 * t267 - t212, pkin(8) * t261 + t220 * t267 + (-t283 * t360 + t389) * t409, t172 * t286 - t203 * t390 (t172 + t393) * t290 + (-t173 + t392) * t286, -t257 * t366 + (t257 * t384 + (qJD(2) * t286 - t203) * t287) * t373, t257 * t367 + (-t291 * t391 + (t201 + t369) * t287) * t373, t257 * t353, -pkin(2) * t173 - t212 * t290 + t334 * t257 - t224 * t201 + (pkin(9) * t390 + t186 * t286) * qJD(3) + (-t149 * t287 + (-pkin(9) * t370 - t186 * t291) * t286) * t373, -pkin(2) * t172 + t212 * t286 - t376 * t257 - t224 * t203 + (-pkin(9) * t391 + t186 * t290) * qJD(3) + (-t186 * t384 + (-pkin(9) * t369 + t150) * t287) * t373, t95 * t239 + t313 * t442, t157 * t442 - t238 * t95 + t239 * t294 + t313 * t378, -t442 * t446 + (qJD(2) * t239 + t313) * t353, -t378 * t446 + (-qJD(2) * t238 + t157) * t353, -t446 * t353, t148 * t238 - t275 * t294 - (t260 * t364 + (-qJD(4) * t259 - t443) * t285 + t439) * t446 + t378 * t161 + t325 * t157 + (qJD(2) * t333 - t78) * t353, t148 * t239 + t275 * t95 - t438 * t446 - t442 * t161 - t325 * t313 + (-qJD(2) * t375 + t79) * t353, t123 * t57 - t124 * t56 - t175 * t7 - t176 * t6 - t29 * t420 - t382 * t30 + t405 * t414 - t407 * t413, t116 * t429 - t6 * t123 + t7 * t124 + t407 * t29 + t405 * t30 + t73 * t312, t100 * t301 + t38 * t394, t339 * t98 + t340 * t100 + (-t36 - t288 * t39 + (-t100 * t288 + t284 * t98) * qJD(6)) * t176, t100 * t382 + t105 * t301 + t175 * t38 + t394 * t56, -t105 * t302 - t175 * t39 - t382 * t98 - t395 * t56, t105 * t382 + t56 * t175 (t122 * t288 - t124 * t284) * t56 + t2 * t175 + t123 * t39 + t4 * t395 + t406 * t98 - t382 * t317 + (t284 * t324 - t288 * t323) * t105 + t302 * t27 -(t122 * t284 + t124 * t288) * t56 - t1 * t175 + t123 * t38 + t4 * t394 - t382 * t13 + (t284 * t323 + t288 * t324) * t105 + t406 * t100 + t301 * t27; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t203 * t201, -t201 ^ 2 + t203 ^ 2, t172 - t393, -t173 - t392, t261, -t150 * t257 - t186 * t203 + t296, -t149 * t257 + t186 * t201 - t305, -t421, t419, t418, t415, t261, -t341 * t446 + (-t157 * t203 + t261 * t289 - t365 * t446) * pkin(3) + t416, t383 * t446 + (t203 * t313 - t261 * t285 - t364 * t446) * pkin(3) + t417, -t227 * t57 - t228 * t56 + (t29 + t399) * t414 + (t30 + t400) * t413, -t116 * t321 + t6 * t227 + t7 * t228 - t29 * t400 + t30 * t399, t436, t441, t435, -t105 * t332 + t403 + t53, -t431, t217 * t39 + t400 * t98 + t318 * t284 + (-t284 * t399 - t288 * t343) * t105 + t427, t217 * t38 + t318 * t288 + t400 * t100 + (t284 * t343 - t288 * t399) * t105 + t428; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t421, t419, t418, t415, t261, t446 * t79 + t416, t446 * t78 + t417 (-t280 * t56 - t282 * t57) * pkin(4) + (-t32 + t29) * t414 + (t30 - t31) * t413, t29 * t31 - t30 * t32 + (t116 * t313 + t280 * t7 + t282 * t6) * pkin(4), t436, t441, t435, t311 + t403, -t431, t272 * t39 - t31 * t98 + t319 * t284 + (t284 * t32 - t288 * t342) * t105 + t427, -t31 * t100 + t272 * t38 + t319 * t288 + (t284 * t342 + t288 * t32) * t105 + t428; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t413 ^ 2 - t414 ^ 2, t29 * t413 - t30 * t414 + t73, 0, 0, 0, 0, 0, t311 - t403, -t105 ^ 2 * t288 - t398 - t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100 * t98, t100 ^ 2 - t98 ^ 2, t105 * t98 + t38, -t344 + (-qJD(6) + t105) * t100, t56, -t100 * t27 + t105 * t13 + t2, -t105 * t317 + t27 * t98 - t1;];
tauc_reg  = t3;
