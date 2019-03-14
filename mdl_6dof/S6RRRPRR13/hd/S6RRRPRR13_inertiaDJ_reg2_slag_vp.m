% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRPRR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPRR13_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR13_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR13_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRPRR13_inertiaDJ_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:05:10
% EndTime: 2019-03-09 20:06:14
% DurationCPUTime: 30.12s
% Computational Cost: add. (31999->833), mult. (95029->1498), div. (0->0), fcn. (98411->14), ass. (0->356)
t143 = sin(pkin(6));
t146 = sin(qJ(3));
t150 = cos(qJ(2));
t408 = cos(pkin(7));
t335 = t150 * t408;
t147 = sin(qJ(2));
t149 = cos(qJ(3));
t386 = t147 * t149;
t256 = t146 * t335 + t386;
t142 = sin(pkin(7));
t409 = cos(pkin(6));
t339 = t142 * t409;
t313 = qJD(3) * t339;
t286 = t146 * t313;
t336 = t149 * t408;
t255 = t146 * t150 + t147 * t336;
t442 = t255 * qJD(2);
t179 = t143 * (qJD(3) * t256 + t442) + t286;
t389 = t146 * t147;
t361 = t143 * t389;
t316 = t143 * t335;
t120 = t149 * t316;
t129 = t149 * t339;
t384 = t120 + t129;
t282 = t361 - t384;
t61 = 0.2e1 * t179 * t282;
t236 = t256 * t143;
t338 = t146 * t409;
t202 = t142 * t338 + t236;
t200 = qJD(3) * t202;
t393 = t143 * t147;
t318 = t408 * t393;
t287 = qJD(2) * t318;
t379 = qJD(2) * t150;
t345 = t143 * t379;
t457 = t146 * t345 + t149 * t287 + t200;
t279 = t143 * (-t408 * pkin(10) - pkin(9));
t357 = pkin(1) * t409;
t330 = t150 * t357;
t208 = t147 * t279 + t330;
t356 = t409 * pkin(2);
t201 = t356 + t208;
t359 = -pkin(2) * t150 - pkin(1);
t395 = t142 * t147;
t252 = (-pkin(10) * t395 + t359) * t143;
t176 = t142 * t252 + t408 * t201;
t237 = t316 + t339;
t331 = t147 * t357;
t392 = t143 * t150;
t246 = -pkin(9) * t392 - t331;
t196 = pkin(10) * t237 - t246;
t59 = -t146 * t196 + t149 * t176;
t222 = t143 * t442;
t378 = qJD(3) * t142;
t394 = t142 * t149;
t433 = t146 ^ 2;
t58 = -t222 * t394 + ((-0.2e1 * t129 - t120) * t146 + (t433 * t147 - t149 * t256) * t143) * t378;
t267 = t142 * t392 - t409 * t408;
t54 = pkin(3) * t267 - t59;
t144 = cos(pkin(13));
t422 = pkin(11) + qJ(4);
t126 = t422 * t144;
t141 = sin(pkin(13));
t429 = cos(qJ(5));
t320 = t422 * t429;
t428 = sin(qJ(5));
t340 = t428 * qJD(4);
t341 = t429 * qJD(4);
t342 = qJD(5) * t428;
t446 = (-qJD(5) * t320 - t340) * t141 - t126 * t342 + t144 * t341;
t220 = t237 * qJD(3);
t350 = qJD(3) * t393;
t385 = (t287 + t350) * t146;
t455 = -(t220 + t345) * t149 + t385;
t334 = t408 * qJD(3);
t452 = t150 * (t334 + qJD(2));
t454 = (-qJ(4) * t452 - qJD(4) * t147) * t146;
t95 = t202 * t141;
t230 = t144 * t267 + t95;
t221 = t230 * pkin(11);
t182 = pkin(3) * t282 - qJ(4) * t202;
t241 = t330 + t356;
t363 = pkin(9) * t393;
t214 = t241 - t363;
t285 = -t143 * pkin(1) - pkin(2) * t392;
t166 = -t142 * t214 + t408 * t285 + t182;
t247 = t267 * qJ(4);
t337 = t146 * t408;
t396 = t142 * t146;
t167 = -t149 * t246 + t214 * t337 + t285 * t396 - t247;
t162 = t141 * t166 + t144 * t167;
t135 = t142 ^ 2;
t444 = -t408 ^ 2 - t135;
t188 = pkin(10) * (t129 + (t149 * t335 + t389 * t444) * t143);
t35 = t144 * t188 + t162;
t158 = -t221 + t35;
t81 = -t141 * t267 + t144 * t202;
t229 = pkin(4) * t282 - t81 * pkin(11);
t60 = t146 * t176 + t149 * t196;
t159 = t141 * (-t247 + t60) - t144 * (-t142 * t201 + t408 * t252 + t182) - t229;
t15 = t429 * t158 - t428 * t159;
t293 = t141 * t396 - t144 * t408;
t329 = pkin(2) * t337;
t239 = t408 * qJ(4) + t329;
t407 = qJ(4) * t146;
t304 = -pkin(3) * t149 - t407;
t283 = -pkin(2) + t304;
t390 = t144 * t149;
t86 = t144 * t239 + (pkin(10) * t390 + t141 * t283) * t142;
t173 = -pkin(11) * t293 + t86;
t391 = t144 * t146;
t107 = t141 * t408 + t142 * t391;
t223 = t141 * t239;
t424 = pkin(10) * t141;
t178 = t223 + t107 * pkin(11) - (t144 * (-pkin(2) - t407) + (-pkin(3) * t144 - pkin(4) - t424) * t149) * t142;
t49 = t429 * t173 - t428 * t178;
t39 = pkin(4) * t230 + t54;
t210 = t429 * t230;
t56 = t428 * t81 + t210;
t57 = -t428 * t230 + t429 * t81;
t164 = t56 * pkin(5) - t57 * pkin(12) + t39;
t199 = t202 * qJD(4);
t243 = t267 * qJD(4);
t380 = qJD(2) * t147;
t346 = t143 * t380;
t323 = t142 * t346;
t205 = qJ(4) * t323 - t243;
t207 = qJD(2) * (t150 * t279 - t331);
t284 = pkin(10) * t142 * t150 - pkin(2) * t147;
t381 = qJD(2) * t143;
t242 = t284 * t381;
t440 = -qJD(2) * t208 - qJD(3) * t176;
t441 = qJD(3) * t196 + t142 * t242 - t408 * t207;
t37 = t146 * t441 + t149 * t440;
t63 = (t149 * t313 - t385) * t144 + (t142 * t141 * t380 + t390 * t452) * t143;
t152 = t141 * (-t37 + t205) - t144 * (pkin(3) * t179 + qJ(4) * t455 - t142 * t207 - t408 * t242 - t199) + t63 * pkin(11) - t179 * pkin(4);
t187 = t385 * qJ(4) - t199;
t204 = pkin(3) * t393 - qJ(4) * t237;
t224 = pkin(3) * t237;
t160 = t141 * t187 + ((t141 * t224 - t144 * t196) * t146 + (t141 * t204 + t144 * t176) * t149) * qJD(3) - t144 * t243;
t245 = -t330 + t363;
t169 = t149 * (-pkin(10) * t318 - t245) + (-pkin(10) * t316 + t246) * t337;
t291 = pkin(2) * t318;
t405 = qJ(4) * t149;
t185 = t255 * pkin(3) * t143 - t392 * t405 + t291;
t165 = t141 * t185 + t144 * t169;
t292 = t141 * t331;
t364 = pkin(10) * t396;
t425 = pkin(9) * t150;
t366 = t141 * t425;
t70 = t455 * t141;
t153 = t70 * pkin(11) + ((t292 + (t366 + (-t150 * t364 + (pkin(2) * t146 + t422) * t147) * t144) * t143) * t142 + t165) * qJD(2) + t160;
t449 = t428 * t158 + t429 * t159;
t5 = t449 * qJD(5) + t428 * t152 - t429 * t153;
t451 = -pkin(12) * t179 - qJD(6) * t164 + t5;
t253 = t429 * t293;
t88 = t428 * t107 + t253;
t89 = t429 * t107 - t428 * t293;
t244 = -pkin(2) * t336 + t364;
t102 = -t408 * pkin(3) + t244;
t93 = pkin(4) * t293 + t102;
t183 = t88 * pkin(5) - t89 * pkin(12) + t93;
t103 = t244 * qJD(3);
t426 = pkin(3) * t146;
t303 = -t405 + t426;
t376 = qJD(3) * t149;
t347 = t142 * t376;
t322 = t144 * t347;
t333 = t408 * qJD(4);
t377 = qJD(3) * t146;
t348 = t142 * t377;
t375 = qJD(4) * t146;
t168 = t141 * (t333 - t103) - t144 * (t303 * qJD(3) - t375) * t142 + pkin(11) * t322 - pkin(4) * t348;
t312 = t149 * t334;
t225 = pkin(2) * t312 + t333;
t216 = t144 * t225;
t349 = t141 * t375;
t365 = pkin(10) * t391;
t172 = t216 + (-t349 + (-t365 + (-t422 * t149 + t426) * t141) * qJD(3)) * t142;
t448 = t428 * t173 + t429 * t178;
t27 = t448 * qJD(5) + t428 * t168 - t429 * t172;
t450 = -pkin(12) * t348 - qJD(6) * t183 + t27;
t354 = t429 * t144;
t116 = t428 * t141 - t354;
t117 = t429 * t141 + t428 * t144;
t133 = -pkin(4) * t144 - pkin(3);
t254 = pkin(5) * t116 - pkin(12) * t117 + t133;
t447 = -qJD(6) * t254 - t446;
t145 = sin(qJ(6));
t138 = t145 ^ 2;
t148 = cos(qJ(6));
t139 = t148 ^ 2;
t383 = t138 - t139;
t332 = qJD(6) * t383;
t439 = -qJ(4) * t147 + t146 * t284;
t438 = -qJ(4) * t286 + qJD(4) * t384;
t343 = qJD(5) * t429;
t108 = t141 * t342 - t144 * t343;
t109 = t117 * qJD(5);
t311 = pkin(5) * t109 + pkin(12) * t108;
t373 = qJD(6) * t145;
t319 = t422 * t428;
t99 = t429 * t126 - t141 * t319;
t41 = -t145 * t311 + t447 * t148 + t99 * t373;
t372 = qJD(6) * t148;
t42 = t447 * t145 + t148 * t311 - t99 * t372;
t66 = -t145 * t99 + t148 * t254;
t67 = t145 * t254 + t148 * t99;
t437 = t145 * t41 - t148 * t42 + (t145 * t66 - t148 * t67) * qJD(6);
t324 = t141 * t347;
t218 = qJD(5) * t253 + t107 * t342 + t428 * t324;
t358 = pkin(4) * t141 + pkin(10);
t68 = qJD(5) * t89 + t117 * t347;
t171 = t218 * pkin(12) + t68 * pkin(5) + (t329 + (-pkin(12) * t354 + t358) * t394) * qJD(3);
t47 = -pkin(12) * t394 + t49;
t10 = -t145 * t171 + t450 * t148 + t47 * t373;
t11 = t450 * t145 + t148 * t171 - t47 * t372;
t31 = -t145 * t47 + t148 * t183;
t32 = t145 * t183 + t148 * t47;
t436 = t10 * t145 - t11 * t148 + (t145 * t31 - t148 * t32) * qJD(6);
t13 = pkin(12) * t282 + t15;
t263 = t144 * t323 + t70;
t177 = qJD(5) * t210 - t428 * t263 + t81 * t342 - t429 * t63;
t38 = t146 * t440 - t149 * t441;
t36 = -pkin(3) * t323 - t38;
t29 = -pkin(4) * t263 + t36;
t33 = t57 * qJD(5) - t429 * t263 + t428 * t63;
t155 = t33 * pkin(5) + pkin(12) * t177 + t29;
t1 = t13 * t373 - t145 * t155 + t451 * t148;
t2 = -t13 * t372 + t451 * t145 + t148 * t155;
t7 = -t145 * t13 + t148 * t164;
t8 = t148 * t13 + t145 * t164;
t435 = t1 * t145 - t148 * t2 + (t145 * t7 - t148 * t8) * qJD(6);
t140 = t149 ^ 2;
t432 = 0.2e1 * t109;
t431 = 0.2e1 * t142;
t430 = 0.2e1 * qJD(3);
t427 = pkin(2) * t142;
t87 = t144 * t340 + t126 * t343 + (-qJD(5) * t319 + t341) * t141;
t98 = t428 * t126 + t141 * t320;
t423 = t98 * t87;
t45 = t145 * t282 + t148 * t57;
t18 = qJD(6) * t45 - t145 * t177 - t148 * t179;
t257 = t282 * t148;
t44 = t145 * t57 - t257;
t421 = -t145 * t18 - t44 * t372;
t197 = -t429 * t322 + t218;
t360 = t145 * t394;
t52 = -qJD(6) * t360 - t145 * t197 - t148 * t348 + t89 * t372;
t82 = t145 * t89 + t148 * t394;
t420 = -t145 * t52 - t82 * t372;
t17 = -qJD(6) * t257 - t145 * t179 + t148 * t177 + t57 * t373;
t419 = t145 * t17;
t418 = t145 * t44;
t51 = qJD(6) * t82 - t145 * t348 + t148 * t197;
t417 = t145 * t51;
t416 = t145 * t82;
t415 = t145 * t87;
t414 = t148 * t18;
t413 = t148 * t45;
t412 = t148 * t52;
t83 = t148 * t89 - t360;
t411 = t148 * t83;
t410 = t148 * t87;
t404 = t107 * t141;
t403 = t108 * t145;
t402 = t108 * t148;
t401 = t109 * t145;
t400 = t109 * t148;
t399 = t117 * t108;
t398 = t135 * t140;
t397 = t141 * t149;
t382 = qJD(2) * t142;
t371 = 0.2e1 * t56 * t33;
t370 = 0.2e1 * t88 * t68;
t368 = -0.2e1 * pkin(5) * qJD(6);
t367 = t116 * t432;
t362 = t145 * t402;
t136 = t143 ^ 2;
t352 = t136 * t379;
t351 = t135 * t376;
t344 = t145 * t372;
t328 = t135 * t346;
t114 = t117 ^ 2;
t327 = t114 * t344;
t326 = t146 * t351;
t325 = t147 * t352;
t134 = t141 ^ 2;
t137 = t144 ^ 2;
t321 = 0.2e1 * (t134 + t137) * qJD(4);
t314 = t409 * t381;
t310 = pkin(5) * t108 - pkin(12) * t109;
t309 = pkin(5) * t117 + pkin(12) * t116;
t307 = t145 * t8 + t148 * t7;
t305 = t33 * t88 + t56 * t68;
t301 = t109 * t56 + t116 * t33;
t300 = t109 * t88 + t116 * t68;
t79 = -t141 * t225 + (-t144 * t375 + (t144 * t303 + t146 * t424) * qJD(3)) * t142;
t80 = t216 + (-t349 + (t141 * t303 - t365) * qJD(3)) * t142;
t299 = -t79 * t141 + t80 * t144;
t298 = t145 * t32 + t148 * t31;
t295 = t145 * t67 + t148 * t66;
t290 = t141 * t322;
t289 = t408 * qJD(2) + qJD(3);
t12 = -pkin(5) * t282 + t449;
t6 = -t15 * qJD(5) - t429 * t152 - t428 * t153;
t4 = -pkin(5) * t179 - t6;
t281 = t12 * t372 + t145 * t4;
t280 = -t12 * t373 + t148 * t4;
t278 = -t148 * t17 - t45 * t373;
t28 = -t49 * qJD(5) - t429 * t168 - t428 * t172;
t26 = -pkin(5) * t348 - t28;
t46 = pkin(5) * t394 + t448;
t277 = t145 * t26 + t46 * t372;
t276 = t148 * t26 - t46 * t373;
t275 = t145 * t33 + t56 * t372;
t274 = -t148 * t33 + t56 * t373;
t273 = -t148 * t51 - t83 * t373;
t272 = t145 * t68 + t88 * t372;
t271 = -t148 * t68 + t88 * t373;
t270 = -t117 * t372 + t403;
t269 = -t117 * t373 - t402;
t268 = t116 * t372 + t401;
t266 = t142 * t293;
t265 = t144 * t293;
t262 = t149 * t289;
t259 = t142 * t282;
t258 = t149 * t282;
t251 = t146 * t452;
t250 = t289 * t386;
t249 = t147 * t262;
t248 = t142 * t267;
t112 = pkin(10) * t394 + t329;
t235 = qJD(3) * t248;
t219 = t142 * (t304 * qJD(3) + t149 * qJD(4));
t217 = -t307 * qJD(6) - t1 * t148 - t145 * t2;
t212 = -t298 * qJD(6) - t10 * t148 - t11 * t145;
t211 = -t295 * qJD(6) - t145 * t42 - t148 * t41;
t209 = t230 * t378;
t189 = t142 * t455;
t161 = -t141 * t167 + t144 * t166;
t121 = -0.2e1 * t326;
t106 = t246 * qJD(2);
t105 = t245 * qJD(2);
t104 = t112 * qJD(3);
t97 = (t358 * t394 + t329) * qJD(3);
t92 = -t116 * t373 + t400;
t85 = -t223 + (-pkin(10) * t397 + t144 * t283) * t142;
t77 = (-t142 * t246 + t291) * qJD(2);
t75 = t117 * t332 + t362;
t73 = -t142 * t241 + (pkin(9) * t395 + t408 * t359) * t143;
t34 = -t141 * t188 + t161;
t20 = ((t292 + (-t144 * t439 + t366) * t143) * t142 + t165) * qJD(2) + t160;
t19 = t141 * t243 + t144 * t187 + ((t141 * t196 + t144 * t224) * t146 + (-t141 * t176 + t144 * t204) * t149) * qJD(3) + (-t141 * t169 + t144 * t185 + (t144 * t331 + (t141 * t439 + t144 * t425) * t143) * t142) * qJD(2);
t14 = -t428 * (-t221 + t162) + t429 * (t161 + t229) - t117 * pkin(10) * (t149 * t237 + t361 * t444);
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t325, 0.2e1 * (-t147 ^ 2 + t150 ^ 2) * t136 * qJD(2), 0.2e1 * t150 * t314, -0.2e1 * t325, -0.2e1 * t147 * t314, 0, -0.2e1 * t136 * pkin(1) * t380 + 0.2e1 * t106 * t409, -0.2e1 * pkin(1) * t352 + 0.2e1 * t105 * t409, 0.2e1 * (-t105 * t150 - t106 * t147 + (t147 * t246 + t150 * t245) * qJD(2)) * t143, 0.2e1 * t105 * t246 - 0.2e1 * t106 * t245, -0.2e1 * t202 * t455, -0.2e1 * t179 * t202 + 0.2e1 * t282 * t455, 0.2e1 * t202 * t323 + 0.2e1 * t267 * t455, t61, 0.2e1 * t179 * t267 - 0.2e1 * t259 * t346, -0.2e1 * t248 * t346, -0.2e1 * t38 * t267 - 0.2e1 * t77 * t384 + 0.2e1 * t73 * t286 + 0.2e1 * (t73 * t251 + (t77 * t146 + t262 * t73 + t59 * t382) * t147) * t143, 0.2e1 * t202 * t77 - 0.2e1 * t267 * t37 - 0.2e1 * t60 * t323 - 0.2e1 * t455 * t73, -0.2e1 * t179 * t60 - 0.2e1 * t202 * t38 + 0.2e1 * t282 * t37 + 0.2e1 * t455 * t59, -0.2e1 * t37 * t60 + 0.2e1 * t38 * t59 + 0.2e1 * t73 * t77, 0.2e1 * t81 * t63, -0.2e1 * t230 * t63 + 0.2e1 * t263 * t81, -0.2e1 * t63 * t384 + 0.2e1 * t81 * t286 + 0.2e1 * (t81 * t249 + (t63 * t147 + t452 * t81) * t146) * t143, -0.2e1 * t230 * t263, -0.2e1 * t179 * t230 + 0.2e1 * t263 * t282, t61, -0.2e1 * t19 * t384 + 0.2e1 * t34 * t286 + 0.2e1 * t36 * t230 - 0.2e1 * t54 * t70 + 0.2e1 * (t34 * t251 + (-t144 * t382 * t54 + t19 * t146 + t262 * t34) * t147) * t143, 0.2e1 * t20 * t384 - 0.2e1 * t35 * t286 + 0.2e1 * t36 * t81 + 0.2e1 * t54 * t63 + 0.2e1 * (-t35 * t250 + (-t20 * t147 - t35 * t452) * t146) * t143, -0.2e1 * t19 * t81 - 0.2e1 * t20 * t230 + 0.2e1 * t263 * t35 - 0.2e1 * t34 * t63, 0.2e1 * t19 * t34 + 0.2e1 * t20 * t35 + 0.2e1 * t36 * t54, -0.2e1 * t57 * t177, 0.2e1 * t177 * t56 - 0.2e1 * t57 * t33, -0.2e1 * t177 * t282 + 0.2e1 * t457 * t57, t371, 0.2e1 * t33 * t384 - 0.2e1 * t56 * t286 + 0.2e1 * (-t56 * t249 + (-t33 * t147 - t452 * t56) * t146) * t143, t61, -0.2e1 * t6 * t384 + 0.2e1 * t14 * t286 + 0.2e1 * t29 * t56 + 0.2e1 * t39 * t33 + 0.2e1 * (t14 * t249 + (t14 * t452 + t6 * t147) * t146) * t143, -0.2e1 * t15 * t457 - 0.2e1 * t177 * t39 + 0.2e1 * t282 * t5 + 0.2e1 * t29 * t57, 0.2e1 * t14 * t177 - 0.2e1 * t15 * t33 + 0.2e1 * t5 * t56 - 0.2e1 * t6 * t57, 0.2e1 * t14 * t6 - 0.2e1 * t15 * t5 + 0.2e1 * t29 * t39, -0.2e1 * t45 * t17, 0.2e1 * t17 * t44 - 0.2e1 * t18 * t45, -0.2e1 * t17 * t56 + 0.2e1 * t33 * t45, 0.2e1 * t44 * t18, -0.2e1 * t18 * t56 - 0.2e1 * t33 * t44, t371, 0.2e1 * t12 * t18 + 0.2e1 * t2 * t56 + 0.2e1 * t33 * t7 + 0.2e1 * t4 * t44, 0.2e1 * t1 * t56 - 0.2e1 * t12 * t17 - 0.2e1 * t33 * t8 + 0.2e1 * t4 * t45, 0.2e1 * t1 * t44 + 0.2e1 * t17 * t7 - 0.2e1 * t18 * t8 - 0.2e1 * t2 * t45, -0.2e1 * t1 * t8 + 0.2e1 * t12 * t4 + 0.2e1 * t2 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t345, 0, -t346, 0, t106, t105, 0, 0 (t140 * t350 + ((0.2e1 * t220 + t345) * t149 - t385) * t146) * t142, -t149 * t189 - t259 * t376 + (-t179 - t200) * t396, t146 * t328 - t149 * t235 - t408 * t455, t58, t146 * t235 + t149 * t328 - t179 * t408, t142 * t287, t104 * t267 - t179 * t427 - t244 * t323 + t73 * t348 + t38 * t408 - t77 * t394, pkin(2) * t189 - t103 * t267 - t112 * t323 + t73 * t347 + t37 * t408 + t77 * t396, t103 * t282 + t104 * t202 - t112 * t179 - t244 * t455 - t59 * t347 - t60 * t348 - t37 * t394 - t38 * t396, -t103 * t60 - t104 * t59 - t112 * t37 - t244 * t38 - t77 * t427, t107 * t63 + t322 * t81, t107 * t263 - t63 * t293 + (-t81 * t141 - t144 * t230) * t347, -t63 * t394 + t107 * t222 + (t107 * t236 + (t107 * t338 + t144 * t258 + t81 * t146) * t142) * qJD(3), t209 * t397 - t263 * t293, -t141 * t258 * t378 - t146 * t209 - t179 * t293 - t263 * t394, t58, -t102 * t263 + t104 * t230 + t179 * t85 - t19 * t394 + t282 * t79 + t293 * t36 + t324 * t54 + t34 * t348, t102 * t63 + t104 * t81 + t36 * t107 - t179 * t86 + t20 * t394 - t282 * t80 + t322 * t54 - t348 * t35, -t80 * t230 + t86 * t263 - t20 * t293 - t79 * t81 - t85 * t63 - t19 * t107 + (-t141 * t35 - t144 * t34) * t347, t102 * t36 + t104 * t54 + t19 * t85 + t20 * t86 + t34 * t79 + t35 * t80, -t177 * t89 - t197 * t57, t177 * t88 + t197 * t56 - t89 * t33 - t57 * t68, t177 * t394 + t179 * t89 - t197 * t282 + t348 * t57, t305, -t68 * t282 + t33 * t394 - t88 * t222 + (-t88 * t143 * t386 + (-t56 * t142 - t237 * t88) * t146) * qJD(3), t58, t14 * t348 - t179 * t448 + t28 * t282 + t29 * t88 + t93 * t33 + t39 * t68 - t394 * t6 + t97 * t56, -t15 * t348 - t177 * t93 - t179 * t49 - t197 * t39 + t27 * t282 + t29 * t89 - t394 * t5 + t97 * t57, t14 * t197 - t15 * t68 - t177 * t448 + t27 * t56 - t28 * t57 - t49 * t33 + t5 * t88 - t6 * t89, t14 * t28 - t15 * t27 + t29 * t93 + t39 * t97 - t448 * t6 - t49 * t5, -t17 * t83 - t45 * t51, t17 * t82 - t18 * t83 + t44 * t51 - t45 * t52, -t17 * t88 + t33 * t83 + t45 * t68 - t51 * t56, t18 * t82 + t44 * t52, -t18 * t88 - t33 * t82 - t44 * t68 - t52 * t56, t305, t11 * t56 + t12 * t52 + t18 * t46 + t2 * t88 + t26 * t44 + t31 * t33 + t4 * t82 + t68 * t7, t1 * t88 + t10 * t56 - t12 * t51 - t17 * t46 + t26 * t45 - t32 * t33 + t4 * t83 - t68 * t8, t1 * t82 + t10 * t44 - t11 * t45 + t17 * t31 - t18 * t32 - t2 * t83 + t51 * t7 - t52 * t8, -t1 * t32 - t10 * t8 + t11 * t7 + t12 * t26 + t2 * t31 + t4 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t326 (t140 - t433) * t135 * t430, t312 * t431, t121, -0.2e1 * t334 * t396, 0, -0.2e1 * t135 * pkin(2) * t377 - 0.2e1 * t104 * t408, -0.2e1 * pkin(2) * t351 + 0.2e1 * t103 * t408 (-t103 * t149 + t104 * t146 + (-t112 * t146 + t149 * t244) * qJD(3)) * t431, -0.2e1 * t103 * t112 + 0.2e1 * t104 * t244, 0.2e1 * t107 * t322, 0.2e1 * (-t265 - t404) * t347 (t107 * t396 - t144 * t398) * t430, 0.2e1 * t141 * t266 * t376 (t141 * t398 - t146 * t266) * t430, t121, 0.2e1 * t104 * t293 + 0.2e1 * (-t79 * t149 + (t102 * t397 + t146 * t85) * qJD(3)) * t142, 0.2e1 * t104 * t107 + 0.2e1 * (t149 * t80 + (t102 * t390 - t146 * t86) * qJD(3)) * t142, -0.2e1 * t80 * t293 - 0.2e1 * t79 * t107 + 0.2e1 * (-t141 * t86 - t144 * t85) * t347, 0.2e1 * t102 * t104 + 0.2e1 * t79 * t85 + 0.2e1 * t80 * t86, -0.2e1 * t89 * t197, 0.2e1 * t197 * t88 - 0.2e1 * t89 * t68 (t218 * t149 + (-t142 * t140 * t354 + t89 * t146) * qJD(3)) * t431, t370 (t149 * t68 - t377 * t88) * t431, t121, 0.2e1 * t68 * t93 + 0.2e1 * t88 * t97 + 0.2e1 * (-t149 * t28 - t377 * t448) * t142, 0.2e1 * t97 * t89 - 0.2e1 * t93 * t218 + 0.2e1 * (-t27 * t149 + (t149 * t354 * t93 - t146 * t49) * qJD(3)) * t142, -0.2e1 * t197 * t448 + 0.2e1 * t27 * t88 - 0.2e1 * t28 * t89 - 0.2e1 * t49 * t68, -0.2e1 * t27 * t49 - 0.2e1 * t28 * t448 + 0.2e1 * t93 * t97, -0.2e1 * t83 * t51, 0.2e1 * t51 * t82 - 0.2e1 * t52 * t83, -0.2e1 * t51 * t88 + 0.2e1 * t68 * t83, 0.2e1 * t82 * t52, -0.2e1 * t52 * t88 - 0.2e1 * t68 * t82, t370, 0.2e1 * t11 * t88 + 0.2e1 * t26 * t82 + 0.2e1 * t31 * t68 + 0.2e1 * t46 * t52, 0.2e1 * t10 * t88 + 0.2e1 * t26 * t83 - 0.2e1 * t32 * t68 - 0.2e1 * t46 * t51, 0.2e1 * t10 * t82 - 0.2e1 * t11 * t83 + 0.2e1 * t31 * t51 - 0.2e1 * t32 * t52, -0.2e1 * t10 * t32 + 0.2e1 * t11 * t31 + 0.2e1 * t26 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t455, 0, -t179, t323, t38, t37, 0, 0, t63 * t141, t141 * t263 + t63 * t144, t141 * t179, t263 * t144, t144 * t179, 0, pkin(3) * t263 - t36 * t144 + ((-qJ(4) * t249 + t454) * t143 + t438) * t141, -pkin(3) * t63 + t36 * t141 + ((-qJ(4) * t250 + t454) * t143 + t438) * t144 (qJ(4) * t70 - qJD(4) * t95 + t144 * t205 + t20) * t144 + (qJ(4) * t63 + qJD(4) * t81 - t19) * t141, -pkin(3) * t36 + (-t141 * t34 + t144 * t35) * qJD(4) + (-t19 * t141 + t20 * t144) * qJ(4), -t57 * t108 - t117 * t177, t108 * t56 - t57 * t109 + t116 * t177 - t117 * t33, t108 * t384 + t117 * t286 + (t117 * t249 + (-t108 * t147 + t117 * t452) * t146) * t143, t301, t109 * t384 - t116 * t286 + (-t116 * t249 + (-t109 * t147 - t116 * t452) * t146) * t143, 0, t87 * t384 - t98 * t286 + t133 * t33 + t29 * t116 + t39 * t109 + (-t98 * t249 + (-t87 * t147 - t452 * t98) * t146) * t143, -t39 * t108 + t29 * t117 - t133 * t177 - t179 * t99 - t282 * t446, t14 * t108 - t15 * t109 + t5 * t116 - t6 * t117 - t177 * t98 - t99 * t33 - t446 * t56 + t87 * t57, t29 * t133 - t14 * t87 + t15 * t446 - t5 * t99 - t6 * t98, t117 * t278 - t402 * t45 (t145 * t45 + t148 * t44) * t108 + (t419 - t414 + (-t413 + t418) * qJD(6)) * t117, t109 * t45 - t116 * t17 - t117 * t274 - t402 * t56, -t117 * t421 - t403 * t44, -t109 * t44 - t116 * t18 - t117 * t275 + t403 * t56, t301, t109 * t7 + t116 * t2 + t117 * t281 - t12 * t403 + t18 * t98 + t33 * t66 + t42 * t56 + t44 * t87, t1 * t116 - t109 * t8 + t117 * t280 - t12 * t402 - t17 * t98 - t33 * t67 + t41 * t56 + t45 * t87, t307 * t108 + t117 * t435 + t17 * t66 - t18 * t67 + t41 * t44 - t42 * t45, -t1 * t67 + t12 * t87 + t2 * t66 + t4 * t98 - t41 * t8 + t42 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t347, 0, -t348, 0, -t104, t103, 0, 0, t290 (-t134 + t137) * t347, t141 * t348, -t290, t144 * t348, 0, -t104 * t144 + t141 * t219, t104 * t141 + t144 * t219 (-t265 + t404) * qJD(4) + t299, -pkin(3) * t104 + (-t141 * t85 + t144 * t86) * qJD(4) + t299 * qJ(4), -t89 * t108 - t117 * t197, t108 * t88 - t89 * t109 + t116 * t197 - t117 * t68 (t108 * t149 + t117 * t377) * t142, t300 (t109 * t149 - t116 * t377) * t142, 0, t109 * t93 + t116 * t97 + t133 * t68 + (t149 * t87 - t377 * t98) * t142, -t93 * t108 + t97 * t117 - t133 * t197 - t348 * t99 + t394 * t446, -t108 * t448 - t49 * t109 + t27 * t116 - t28 * t117 - t197 * t98 - t446 * t88 - t99 * t68 + t87 * t89, t97 * t133 - t27 * t99 - t28 * t98 + t446 * t49 + t448 * t87, t117 * t273 - t402 * t83 (t145 * t83 + t148 * t82) * t108 + (t417 - t412 + (-t411 + t416) * qJD(6)) * t117, t109 * t83 - t116 * t51 - t117 * t271 - t402 * t88, -t117 * t420 - t403 * t82, -t109 * t82 - t116 * t52 - t117 * t272 + t403 * t88, t300, t109 * t31 + t11 * t116 + t117 * t277 - t403 * t46 + t42 * t88 + t52 * t98 + t66 * t68 + t82 * t87, t10 * t116 - t109 * t32 + t117 * t276 - t402 * t46 + t41 * t88 - t51 * t98 - t67 * t68 + t83 * t87, t298 * t108 + t117 * t436 + t41 * t82 - t42 * t83 + t51 * t66 - t52 * t67, -t10 * t67 + t11 * t66 + t26 * t98 + t31 * t42 - t32 * t41 + t46 * t87; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t321, qJ(4) * t321, -0.2e1 * t399, 0.2e1 * t108 * t116 - 0.2e1 * t109 * t117, 0, t367, 0, 0, t133 * t432, -0.2e1 * t133 * t108, -0.2e1 * t98 * t108 - 0.2e1 * t99 * t109 - 0.2e1 * t116 * t446 + 0.2e1 * t87 * t117, 0.2e1 * t446 * t99 + 0.2e1 * t423, -0.2e1 * t139 * t399 - 0.2e1 * t327, 0.2e1 * t114 * t332 + 0.4e1 * t117 * t362, 0.2e1 * t116 * t269 + 0.2e1 * t117 * t400, -0.2e1 * t138 * t399 + 0.2e1 * t327, 0.2e1 * t116 * t270 - 0.2e1 * t117 * t401, t367, -0.2e1 * t98 * t403 + 0.2e1 * t109 * t66 + 0.2e1 * t116 * t42 + 0.2e1 * (t372 * t98 + t415) * t117, -0.2e1 * t98 * t402 - 0.2e1 * t109 * t67 + 0.2e1 * t116 * t41 + 0.2e1 * (-t373 * t98 + t410) * t117, 0.2e1 * t295 * t108 + 0.2e1 * t117 * t437, -0.2e1 * t41 * t67 + 0.2e1 * t42 * t66 + 0.2e1 * t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t263, t63, 0, t36, 0, 0, 0, 0, 0, 0, t33, -t177, 0, t29, 0, 0, 0, 0, 0, 0, -t274, -t275, -t278 + t421, -t435; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t324, t322, 0, t104, 0, 0, 0, 0, 0, 0, t68, -t197, 0, t97, 0, 0, 0, 0, 0, 0, -t271, -t272, -t273 + t420, -t436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t109, -t108, 0, 0, 0, 0, 0, 0, 0, 0, t92, -t268 (t138 + t139) * t108, -t437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t177, 0, -t33, t179, t6, t5, 0, 0, t372 * t45 - t419, t278 + t421, t275, t373 * t44 - t414, -t274, 0, -pkin(5) * t18 - pkin(12) * t275 - t280, pkin(5) * t17 + pkin(12) * t274 + t281 (-t419 - t414 + (t413 + t418) * qJD(6)) * pkin(12) + t217, -pkin(5) * t4 + pkin(12) * t217; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t197, 0, -t68, t348, t28, t27, 0, 0, t372 * t83 - t417, t273 + t420, t272, t373 * t82 - t412, -t271, 0, -pkin(5) * t52 - pkin(12) * t272 - t276, pkin(5) * t51 + pkin(12) * t271 + t277 (-t417 - t412 + (t411 + t416) * qJD(6)) * pkin(12) + t212, -pkin(5) * t26 + pkin(12) * t212; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t108, 0, -t109, 0, -t87, -t446, 0, 0, -t75, t108 * t383 - 0.4e1 * t117 * t344, t268, t75, t92, 0, -t410 + t310 * t145 + (t145 * t98 - t148 * t309) * qJD(6), t415 + t310 * t148 + (t145 * t309 + t148 * t98) * qJD(6), t211, -pkin(5) * t87 + pkin(12) * t211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t344, -0.2e1 * t332, 0, -0.2e1 * t344, 0, 0, t145 * t368, t148 * t368, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t17, 0, -t18, t33, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t51, 0, -t52, t68, t11, t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t269, 0, t270, t109, t42, t41, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t373, -t372, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t372, 0, -t373, 0, -pkin(12) * t372, pkin(12) * t373, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;