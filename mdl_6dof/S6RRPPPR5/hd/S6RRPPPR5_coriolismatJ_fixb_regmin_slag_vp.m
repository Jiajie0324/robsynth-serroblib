% Calculate minimal parameter regressor of coriolis matrix for
% S6RRPPPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d6,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x29]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:24
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRPPPR5_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPPR5_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPPR5_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPPPR5_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:23:47
% EndTime: 2019-03-09 08:24:01
% DurationCPUTime: 6.08s
% Computational Cost: add. (2955->495), mult. (6578->642), div. (0->0), fcn. (6207->6), ass. (0->356)
t451 = pkin(4) + qJ(3);
t256 = cos(pkin(9));
t450 = (pkin(3) + qJ(5)) * t256;
t260 = cos(qJ(2));
t249 = t260 * qJ(5);
t258 = sin(qJ(2));
t393 = t256 * t258;
t449 = pkin(4) * t393 + t249;
t445 = t256 ^ 2;
t255 = sin(pkin(9));
t446 = t255 ^ 2;
t314 = t445 + t446;
t191 = t314 * qJ(3);
t346 = t191 * qJD(2);
t251 = t260 * pkin(7);
t240 = t251 / 0.2e1;
t387 = t258 * qJ(3);
t297 = -pkin(2) * t260 - t387;
t193 = -pkin(1) + t297;
t395 = t255 * t260;
t230 = pkin(7) * t395;
t133 = t193 * t256 - t230;
t392 = t256 * t260;
t233 = pkin(7) * t392;
t134 = t255 * t193 + t233;
t440 = -t256 / 0.2e1;
t277 = t133 * t255 / 0.2e1 + t134 * t440;
t45 = t240 + t277;
t448 = -qJD(1) * t45 + t346;
t382 = t260 * qJ(4);
t118 = -t134 + t382;
t252 = t260 * pkin(3);
t119 = -t133 + t252;
t439 = t256 / 0.2e1;
t441 = -t255 / 0.2e1;
t278 = t118 * t439 + t119 * t441;
t231 = pkin(3) * t395;
t316 = -t392 / 0.2e1;
t333 = qJ(4) * t316 + t231 / 0.2e1 + t240;
t32 = t278 + t333;
t447 = -qJD(1) * t32 + t346;
t444 = -pkin(3) / 0.2e1;
t259 = cos(qJ(6));
t385 = t259 * t255;
t257 = sin(qJ(6));
t390 = t257 * t256;
t178 = t385 + t390;
t443 = t178 / 0.2e1;
t391 = t257 * t255;
t179 = t256 * t259 - t391;
t442 = t179 / 0.2e1;
t438 = t258 / 0.2e1;
t437 = -t260 / 0.2e1;
t436 = t260 / 0.2e1;
t435 = pkin(7) * t255;
t250 = t258 * pkin(7);
t433 = -pkin(5) - qJ(4);
t384 = t259 * t258;
t389 = t257 * t258;
t149 = t255 * t389 - t256 * t384;
t210 = t259 * t392;
t388 = t257 * t260;
t152 = t255 * t388 - t210;
t67 = t230 + t252 + (pkin(8) * t258 - t193) * t256 + t449;
t334 = t255 * (-pkin(4) - pkin(8));
t68 = t258 * t334 + t260 * t433 + t134;
t27 = t257 * t67 - t259 * t68;
t383 = t260 * qJ(3);
t205 = t258 * pkin(2) - t383;
t180 = t255 * t205;
t247 = t258 * qJ(4);
t72 = t180 + t247 + (-pkin(7) * t256 + pkin(5)) * t258 + t260 * t334;
t427 = t259 * t72;
t234 = pkin(4) * t392;
t332 = -pkin(3) - t435;
t266 = t234 + (-qJ(5) + t332) * t258;
t71 = (pkin(8) * t260 - t205) * t256 + t266;
t430 = t257 * t71;
t397 = t255 * qJ(5);
t267 = t256 * t433 + t397;
t396 = t255 * t258;
t369 = pkin(3) * t396 + t250;
t90 = t258 * t267 + t369;
t368 = t231 + t251;
t91 = t260 * t267 + t368;
t1 = (t427 - t430) * t260 + t27 * t258 - t91 * t149 - t90 * t152;
t432 = t1 * qJD(1);
t151 = t178 * t258;
t153 = t178 * t260;
t28 = t257 * t68 + t259 * t67;
t428 = t259 * t71;
t429 = t257 * t72;
t2 = (t428 + t429) * t260 - t28 * t258 + t91 * t151 + t90 * t153;
t431 = t2 * qJD(1);
t82 = t119 + t449;
t426 = t260 * t82;
t143 = t255 * t433 - pkin(2) - t450;
t200 = t451 * t255;
t169 = pkin(8) * t255 + t200;
t201 = t451 * t256;
t170 = pkin(8) * t256 + t201;
t89 = t169 * t259 + t170 * t257;
t261 = -t143 * t151 / 0.2e1 + t89 * t437 + t90 * t442;
t281 = -t430 / 0.2e1 + t427 / 0.2e1;
t3 = t261 + t281;
t425 = t3 * qJD(1);
t88 = t169 * t257 - t170 * t259;
t262 = t143 * t149 / 0.2e1 + t88 * t436 - t90 * t178 / 0.2e1;
t280 = -t429 / 0.2e1 - t428 / 0.2e1;
t4 = t262 + t280;
t424 = t4 * qJD(1);
t295 = t256 * qJ(4) - t397;
t114 = t258 * t295 - t369;
t115 = t260 * t295 - t368;
t394 = t256 * t205;
t87 = t266 - t394;
t96 = -pkin(4) * t396 - t118;
t138 = -pkin(7) * t393 + t180;
t120 = -t138 - t247;
t97 = -pkin(4) * t395 - t120;
t7 = t114 * t115 + t82 * t87 + t96 * t97;
t423 = t7 * qJD(1);
t8 = -t96 * t395 - t97 * t396 + (t258 * t87 + t426) * t256;
t422 = t8 * qJD(1);
t9 = -t90 * t149 - t260 * t27;
t421 = t9 * qJD(1);
t41 = (t118 * t255 + t119 * t256) * t258;
t419 = qJD(1) * t41;
t48 = (t133 * t256 + t134 * t255) * t258;
t417 = qJD(1) * t48;
t144 = -t247 * t256 + t369;
t411 = t118 * t260;
t49 = t144 * t393 - t411;
t416 = qJD(1) * t49;
t69 = t149 * t258 - t152 * t260;
t415 = qJD(1) * t69;
t70 = -t151 * t258 + t153 * t260;
t414 = qJD(1) * t70;
t10 = -t90 * t151 - t260 * t28;
t413 = t10 * qJD(1);
t292 = t114 * t260 + t115 * t258;
t11 = -t255 * t292 - t82 * t258 + t87 * t260;
t412 = t11 * qJD(1);
t121 = t258 * t332 - t394;
t145 = -t256 * t382 + t368;
t12 = t118 * t120 + t119 * t121 + t144 * t145;
t410 = t12 * qJD(1);
t15 = t256 * t292 + t96 * t258 - t97 * t260;
t409 = t15 * qJD(1);
t16 = (t119 * t260 + t121 * t258) * t256 + (t120 * t258 + t411) * t255;
t408 = t16 * qJD(1);
t339 = pkin(7) * t396;
t137 = t339 + t394;
t17 = (t133 * t260 + t137 * t258) * t256 + (t134 * t260 + t138 * t258) * t255;
t407 = t17 * qJD(1);
t289 = t144 * t260 + t145 * t258;
t18 = t118 * t258 - t120 * t260 + t256 * t289;
t406 = t18 * qJD(1);
t19 = -t119 * t258 + t121 * t260 + t255 * t289;
t405 = t19 * qJD(1);
t404 = t200 * t258;
t403 = t200 * t260;
t402 = t201 * t258;
t401 = t201 * t260;
t313 = t255 * qJ(4) + pkin(2);
t162 = t313 + t450;
t315 = t180 / 0.2e1 + t247 / 0.2e1;
t335 = pkin(4) * t437;
t336 = -t250 / 0.2e1;
t22 = -t403 / 0.2e1 + (t336 - t114 / 0.2e1) * t256 + (t162 * t438 + t335) * t255 + t315;
t400 = t22 * qJD(1);
t254 = t260 ^ 2;
t399 = t254 * t257;
t398 = t254 * t259;
t386 = t258 * t260;
t29 = pkin(7) ^ 2 * t386 + t133 * t137 + t134 * t138;
t381 = t29 * qJD(1);
t30 = (-t255 * t96 + t256 * t82) * t258;
t380 = t30 * qJD(1);
t36 = -t149 * t153 - t151 * t152;
t379 = t36 * qJD(1);
t37 = -t114 * t396 + t426;
t378 = t37 * qJD(1);
t38 = t114 * t393 - t260 * t96;
t377 = t38 * qJD(1);
t43 = -t133 * t258 + (t137 - 0.2e1 * t339) * t260;
t376 = t43 * qJD(1);
t44 = t138 * t260 + (-t134 + 0.2e1 * t233) * t258;
t375 = t44 * qJD(1);
t83 = -t210 / 0.2e1 + (t391 / 0.2e1 + t442) * t260;
t374 = t83 * qJD(1);
t84 = t210 / 0.2e1 + (-t391 / 0.2e1 + t442) * t260;
t373 = t84 * qJD(1);
t320 = t395 / 0.2e1;
t85 = t178 * t436 + t259 * t320 + t388 * t439;
t372 = t85 * qJD(1);
t86 = (t443 - t385 / 0.2e1 - t390 / 0.2e1) * t260;
t371 = t86 * qJD(1);
t253 = t258 ^ 2;
t194 = t253 * t445 + t254;
t243 = t255 * qJD(3);
t328 = t258 * t243;
t198 = t260 * t328;
t370 = t194 * qJD(4) + t198;
t104 = t151 * t396 + t398;
t367 = qJD(1) * t104;
t105 = -t149 * t393 + t398;
t366 = qJD(1) * t105;
t365 = qJD(1) * t151;
t364 = qJD(2) * t178;
t363 = qJD(2) * t179;
t362 = qJD(2) * t255;
t361 = qJD(2) * t256;
t360 = qJD(3) * t260;
t301 = t446 / 0.2e1 - t445 / 0.2e1;
t155 = (-0.1e1 / 0.2e1 + t301) * t258;
t359 = qJD(4) * t155;
t358 = qJD(4) * t255;
t357 = qJD(4) * t256;
t356 = qJD(4) * t260;
t355 = qJD(5) * t256;
t354 = qJD(6) * t179;
t353 = qJD(6) * t260;
t102 = t149 * t396 + t399;
t352 = t102 * qJD(1);
t103 = t151 * t393 + t399;
t351 = t103 * qJD(1);
t350 = t149 * qJD(3);
t349 = t149 * qJD(6);
t348 = t151 * qJD(3);
t177 = t314 * t253;
t347 = t177 * qJD(1);
t163 = t177 * qJD(3);
t165 = t178 * qJD(6);
t345 = t314 * qJD(2);
t203 = t314 * qJD(3);
t224 = t254 - t253;
t344 = t224 * qJD(1);
t343 = t258 * qJD(1);
t342 = t258 * qJD(2);
t341 = t260 * qJD(1);
t340 = t260 * qJD(2);
t338 = pkin(1) * t343;
t337 = pkin(1) * t341;
t331 = t255 * t355;
t330 = t257 * t353;
t329 = t255 * t357;
t217 = t255 * t361;
t327 = t255 * t341;
t221 = qJD(3) * t393;
t326 = t257 * t341;
t325 = t258 * t340;
t324 = t258 * t341;
t323 = t259 * t341;
t322 = t149 * t441;
t321 = -t396 / 0.2e1;
t319 = -t394 / 0.2e1;
t318 = -t393 / 0.2e1;
t317 = t393 / 0.2e1;
t132 = t151 * t341;
t312 = qJD(2) * t84 - t132;
t154 = (0.1e1 / 0.2e1 + t301) * t258;
t311 = qJD(1) * t154 - t217;
t110 = qJD(1) * t155 - t217;
t188 = t258 * t217;
t124 = qJD(1) * t194 + t188;
t195 = t253 * t446 + t254;
t310 = qJD(1) * t195 - t188;
t190 = t256 * t253 * t255 * qJD(1);
t100 = qJD(2) * t154 + t190;
t309 = qJD(2) * t155 + t190;
t220 = t260 * t243;
t308 = t154 * qJD(4) - t220;
t307 = -qJD(6) + t341;
t306 = qJD(2) * t143 + qJD(3);
t305 = t258 * t331;
t304 = t255 * t324;
t303 = t256 * t324;
t302 = -t435 / 0.2e1 + t444;
t300 = t82 / 0.2e1 - t402 / 0.2e1;
t299 = t404 / 0.2e1 + t96 / 0.2e1;
t298 = t234 / 0.2e1 + t319;
t187 = -t256 * pkin(3) - t313;
t296 = -t187 * t260 + t387;
t26 = -t149 * t178 + t151 * t179;
t47 = t149 ^ 2 - t151 ^ 2;
t294 = qJD(1) * t47 + qJD(2) * t26;
t74 = t178 ^ 2 - t179 ^ 2;
t293 = qJD(1) * t26 + qJD(2) * t74;
t291 = -t120 * t256 + t121 * t255;
t290 = -t137 * t255 + t138 * t256;
t113 = t200 * t255 + t201 * t256;
t14 = -t251 / 0.2e1 - t231 / 0.2e1 + (t382 / 0.2e1 + t299) * t256 + (-t249 / 0.2e1 + t300) * t255;
t288 = qJD(1) * t14 + qJD(2) * t113;
t287 = qJD(1) * t149 - t364;
t286 = -t363 + t365;
t285 = -qJD(5) * t255 + t357;
t284 = t355 + t358;
t283 = -qJ(5) / 0.2e1 + t302;
t199 = t260 * t221;
t282 = t253 * t329 - t199;
t279 = t114 * t441 + t401 / 0.2e1;
t40 = t149 * t442 + t151 * t443;
t276 = -qJD(2) * t40 + t149 * t365;
t20 = (t162 * t440 + t283) * t258 + t279 + t298;
t275 = -qJD(1) * t20 + t162 * t362;
t274 = -qJD(1) * t40 + t178 * t363;
t53 = t322 + (t178 * t439 + t257 / 0.2e1) * t258;
t273 = qJD(1) * t53 + t178 * t362;
t227 = -t384 / 0.2e1;
t264 = t149 * t440 + t178 * t321;
t59 = t227 + t264;
t272 = qJD(1) * t59 + t178 * t361;
t226 = t384 / 0.2e1;
t265 = t151 * t441 + t179 * t317;
t55 = t226 + t265;
t271 = qJD(1) * t55 + t179 * t362;
t225 = -t389 / 0.2e1;
t263 = t151 * t439 + t396 * t442;
t57 = t225 + t263;
t270 = -qJD(1) * t57 + t179 * t361;
t34 = t258 * t444 + (t336 + t144 / 0.2e1) * t255 + (-t205 / 0.2e1 + t187 * t438 + t383 / 0.2e1) * t256;
t269 = -qJD(1) * t34 - t187 * t362;
t268 = qJD(2) * t83 + qJD(6) * t151 - t132;
t176 = t256 * t343 + t362;
t174 = t255 * t343 - t361;
t242 = t446 * qJD(4);
t236 = t342 / 0.2e1;
t228 = t259 * t353;
t222 = t256 * t341;
t189 = t258 * t329;
t183 = t191 * qJD(3);
t182 = t307 * t259;
t181 = t307 * t257;
t175 = (t341 - qJD(6) / 0.2e1) * t258;
t161 = t174 * t256;
t160 = t176 * t255;
t147 = t176 * t260;
t146 = -t256 * t340 + t304;
t60 = t225 - t263;
t58 = t226 + t264;
t56 = t227 + t265;
t54 = t178 * t317 + t225 + t322;
t46 = t240 - t277;
t42 = t85 * qJD(2) - t149 * t341;
t39 = t40 * qJD(6);
t35 = qJ(3) * t316 + t144 * t441 + t187 * t318 + t258 * t302 + t319;
t33 = -t278 + t333;
t31 = -t86 * qJD(2) + t149 * t307;
t24 = t26 * qJD(6);
t23 = t403 / 0.2e1 + t162 * t321 + t114 * t439 + pkin(7) * t318 + t255 * t335 + t315;
t21 = t162 * t317 + t258 * t283 - t279 + t298;
t13 = qJ(5) * t320 + t255 * t300 + t256 * t299 + t333;
t6 = -t261 + t281;
t5 = -t262 + t280;
t25 = [0, 0, 0, t325, t224 * qJD(2), 0, 0, 0, -pkin(1) * t342, -pkin(1) * t340, -qJD(2) * t43 + t199, qJD(2) * t44 - t198, -qJD(2) * t17 + t163, qJD(2) * t29 - qJD(3) * t48, t16 * qJD(2) + t356 * t396 + t163, -qJD(2) * t19 + t282, -qJD(2) * t18 + t370, qJD(2) * t12 + qJD(3) * t41 - qJD(4) * t49, qJD(2) * t15 - t253 * t331 + t370, -t8 * qJD(2) - t284 * t386 - t163, qJD(2) * t11 + qJD(5) * t195 - t282, qJD(2) * t7 + qJD(3) * t30 + qJD(4) * t38 + qJD(5) * t37 (qJD(2) * t153 - t349) * t151, qJD(2) * t36 + qJD(6) * t47, -t70 * qJD(2) + t260 * t349, -t69 * qJD(2) + t151 * t353, -t325, -t1 * qJD(2) + t105 * qJD(4) + t102 * qJD(5) - t10 * qJD(6) + t260 * t348, t2 * qJD(2) - t103 * qJD(4) + t104 * qJD(5) + t9 * qJD(6) - t260 * t350; 0, 0, 0, t324, t344, t340, -t342, 0, -pkin(7) * t340 - t338, pkin(7) * t342 - t337, -t376 + (t255 * t297 - t233) * qJD(2) + t220, t375 + t230 * qJD(2) + (qJD(2) * t297 + t360) * t256, qJD(2) * t290 - t407, t381 + (-pkin(2) * t251 + qJ(3) * t290) * qJD(2) + t46 * qJD(3), qJD(2) * t291 + t408, -t405 + (t145 * t256 + t255 * t296) * qJD(2) + t308, -t145 * t362 - t406 + t189 + (qJD(2) * t296 - t360) * t256, t410 + (qJ(3) * t291 + t145 * t187) * qJD(2) + t33 * qJD(3) + t35 * qJD(4), t409 + (t115 * t255 + t162 * t392 + t402) * qJD(2) - t256 * t360 + t189 - t155 * qJD(5), -t422 + ((-t97 - t403) * t256 + (-t87 + t401) * t255) * qJD(2), t412 + (t115 * t256 - t162 * t395 - t404) * qJD(2) - t305 - t308, t423 + (t115 * t162 + t200 * t87 + t201 * t97) * qJD(2) + t13 * qJD(3) + t21 * qJD(4) + t23 * qJD(5), t153 * t286 + t39, t379 + (t152 * t179 + t153 * t178) * qJD(2) + t24, -qJD(6) * t86 - t179 * t342 - t414, -qJD(6) * t83 + t178 * t342 - t415, -t175, -t432 + (t143 * t152 - t178 * t91 - t258 * t88) * qJD(2) - t84 * qJD(3) + t54 * qJD(4) + t58 * qJD(5) + t6 * qJD(6), t431 + (t143 * t153 - t179 * t91 - t258 * t89) * qJD(2) + t85 * qJD(3) + t56 * qJD(4) + t60 * qJD(5) + t5 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t147, -t146, t347, qJD(2) * t46 - t417, t347, -t147, t146, qJD(2) * t33 + t419, t146, -t347, t147, qJD(2) * t13 + t380, 0, 0, 0, 0, 0, -t312, t42; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t304, t100, t124, qJD(2) * t35 - t416, t124, -t304, -t100, qJD(2) * t21 + t377, 0, 0, 0, 0, 0, qJD(2) * t54 + t366, qJD(2) * t56 - t351; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t309, -t303, t310, qJD(2) * t23 + t378, 0, 0, 0, 0, 0, qJD(2) * t58 + t352, qJD(2) * t60 + t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t276, t294, t31, -t268, t236, qJD(2) * t6 - qJD(6) * t28 - t413, qJD(2) * t5 + qJD(6) * t27 + t421; 0, 0, 0, -t324, -t344, 0, 0, 0, t338, t337, t376, -t375, t407, -qJD(3) * t45 - t381, -t256 * t356 - t408, t359 + t405, t189 + t406, -qJD(3) * t32 - qJD(4) * t34 - t410, -qJD(5) * t154 + t189 - t409, t260 * t285 + t422, -t305 - t359 - t412, qJD(3) * t14 - qJD(4) * t20 - qJD(5) * t22 - t423, -t153 * t365 + t39, t24 - t379, -qJD(6) * t85 + t414, -qJD(6) * t84 + t415, t175, -qJD(3) * t83 + qJD(4) * t53 + qJD(5) * t59 - qJD(6) * t3 + t432, qJD(3) * t86 + qJD(4) * t55 - qJD(5) * t57 - qJD(6) * t4 - t431; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t203, t183, t203, -t329, t242, -t187 * t358 + t183, t242 + t331, -t203, t284 * t256, t113 * qJD(3) + t162 * t284, -t179 * t165, t74 * qJD(6), 0, 0, 0, -t143 * t354 + t178 * t284, t143 * t165 + t179 * t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t345, t448, t345, 0, 0, t447, 0, -t345, 0, t288, 0, 0, 0, 0, 0, -t374, t371; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t222, t110, t160, t269, t160, t222, -t110, t275, 0, 0, 0, 0, 0, t273, t271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t311, -t327, -t161, t162 * t361 - t400, 0, 0, 0, 0, 0, t272, t270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t274, t293, t165 - t372, t354 - t373, -t343 / 0.2e1, -qJD(6) * t89 - t143 * t363 - t425, qJD(6) * t88 + t143 * t364 - t424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t303, t304, -t347, qJD(2) * t45 + t417, -t347, t303, -t304, qJD(2) * t32 - t258 * t357 - t419, -t304, t347, -t303, -t14 * qJD(2) - t258 * t285 - t380, 0, 0, 0, 0, 0, t268, t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t345, -t448, -t345, 0, 0, -t358 - t447, 0, t345, 0, -t284 - t288, 0, 0, 0, 0, 0, -t354 + t374, t165 - t371; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t176, 0, 0, 0, -t176, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t174, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t286, -t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t146, -t309, -t124, qJD(2) * t34 + t221 + t416, -t124, t146, t309, t20 * qJD(2) + qJD(5) * t260 + t221 - t377, 0, 0, 0, 0, 0, -qJD(2) * t53 + t228 - t366, -t55 * qJD(2) - t330 + t351; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t222, -t110, -t160, t243 - t269, -t160, -t222, t110, t243 - t275, 0, 0, 0, 0, 0, -t273, -t271; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t176, 0, 0, 0, t176, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t341, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t182, -t181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t100, t147, -t310, t22 * qJD(2) - t328 - t356 - t378, 0, 0, 0, 0, 0, -t59 * qJD(2) + t330 - t352, qJD(2) * t57 + t228 - t367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t311, t327, t161, t400 + (-qJD(2) * t162 + qJD(3)) * t256, 0, 0, 0, 0, 0, -t272, -t270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t174, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t341, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t181, t182; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t276, -t294, t42, t312, t236, t413 + t3 * qJD(2) - t348 + (-qJD(4) * t259 - qJD(5) * t257) * t260, -t421 + t4 * qJD(2) + t350 + (qJD(4) * t257 - qJD(5) * t259) * t260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t274, -t293, t372, t373, t343 / 0.2e1, t179 * t306 + t425, -t178 * t306 + t424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t286, t287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t323, t326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t326, -t323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t25;
