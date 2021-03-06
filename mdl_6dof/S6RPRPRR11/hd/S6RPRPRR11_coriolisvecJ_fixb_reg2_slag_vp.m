% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRPRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d5,d6,theta2,theta4]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRPRR11_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR11_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR11_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRPRR11_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:15:14
% EndTime: 2019-03-09 04:15:44
% DurationCPUTime: 14.72s
% Computational Cost: add. (35521->629), mult. (117501->904), div. (0->0), fcn. (101995->14), ass. (0->281)
t264 = sin(qJ(6));
t267 = cos(qJ(6));
t260 = sin(pkin(12));
t261 = sin(pkin(6));
t263 = cos(pkin(12));
t266 = sin(qJ(3));
t381 = sin(pkin(7));
t383 = cos(pkin(6));
t317 = t381 * t383;
t382 = cos(pkin(7));
t340 = t266 * t382;
t405 = cos(qJ(3));
t210 = t261 * (t260 * t405 + t263 * t340) + t266 * t317;
t205 = t210 * qJD(1);
t259 = sin(pkin(13));
t188 = t259 * t205;
t341 = t261 * t381;
t226 = t263 * t341 - t382 * t383;
t221 = qJD(1) * t226 - qJD(3);
t262 = cos(pkin(13));
t328 = t221 * t262 + t188;
t404 = cos(qJ(5));
t156 = t404 * t328;
t159 = t205 * t262 - t221 * t259;
t265 = sin(qJ(5));
t114 = t159 * t265 + t156;
t426 = qJD(6) + t114;
t327 = t426 ^ 2;
t370 = t260 * t261;
t351 = t266 * t370;
t325 = qJD(3) * t351;
t321 = t382 * t405;
t369 = t261 * t263;
t408 = -t405 * t317 - t321 * t369;
t413 = t408 * qJD(1);
t185 = qJD(1) * t325 + qJD(3) * t413;
t236 = t259 * t404 + t265 * t262;
t283 = t236 * t185;
t419 = t159 * t404 - t265 * t328;
t421 = t419 * qJD(5);
t77 = -t283 + t421;
t430 = -t264 * t327 + t267 * t77;
t358 = qJD(1) * t261;
t345 = t260 * t358;
t201 = t266 * t345 + t413;
t333 = qJD(1) * t383;
t324 = pkin(1) * t333;
t248 = t263 * t324;
t270 = t383 * pkin(2) + (-pkin(9) * t382 - qJ(2)) * t370;
t196 = qJD(1) * t270 + t248;
t220 = (-pkin(9) * t260 * t381 - pkin(2) * t263 - pkin(1)) * t261;
t214 = qJD(1) * t220 + qJD(2);
t148 = -t196 * t381 + t382 * t214;
t105 = t201 * pkin(3) - t205 * qJ(4) + t148;
t249 = qJ(2) * t369;
t225 = qJD(1) * t249 + t260 * t324;
t269 = (t369 * t382 + t317) * pkin(9);
t187 = qJD(1) * t269 + t225;
t135 = t266 * (t196 * t382 + t214 * t381) + t405 * t187;
t107 = -t221 * qJ(4) + t135;
t63 = t262 * t105 - t107 * t259;
t46 = pkin(4) * t201 - pkin(10) * t159 + t63;
t64 = t259 * t105 + t262 * t107;
t48 = -pkin(10) * t328 + t64;
t24 = t265 * t46 + t404 * t48;
t282 = qJD(5) + t201;
t22 = pkin(11) * t282 + t24;
t320 = t381 * t405;
t134 = -t266 * t187 + t196 * t321 + t214 * t320;
t106 = t221 * pkin(3) + qJD(4) - t134;
t78 = pkin(4) * t328 + t106;
t36 = t114 * pkin(5) - pkin(11) * t419 + t78;
t14 = t22 * t267 + t264 * t36;
t346 = t404 * t262;
t378 = t185 * t259;
t76 = t265 * (qJD(5) * t159 - t378) + qJD(5) * t156 + t185 * t346;
t272 = t261 * (t260 * t321 + t263 * t266);
t271 = qJD(2) * t272;
t407 = qJD(3) * t135;
t100 = qJD(1) * t271 + t407;
t84 = -pkin(4) * t378 + t100;
t30 = t77 * pkin(5) + t76 * pkin(11) + t84;
t204 = t210 * qJD(3);
t186 = qJD(1) * t204;
t343 = qJD(5) * t404;
t356 = qJD(5) * t265;
t368 = t262 * t185;
t323 = t260 * t341;
t302 = qJD(2) * t323;
t118 = t186 * pkin(3) + t185 * qJ(4) + qJD(1) * t302 - t205 * qJD(4);
t347 = t405 * t263;
t357 = qJD(2) * t261;
t241 = t347 * t357;
t300 = qJD(3) * t320;
t301 = qJD(3) * t321;
t331 = qJD(2) * t382;
t303 = t331 * t370;
t99 = -t266 * (qJD(1) * t303 + qJD(3) * t187) + qJD(1) * t241 + t196 * t301 + t214 * t300;
t91 = -t221 * qJD(4) + t99;
t61 = t262 * t118 - t259 * t91;
t47 = pkin(4) * t186 + pkin(10) * t368 + t61;
t62 = t259 * t118 + t262 * t91;
t50 = pkin(10) * t378 + t62;
t294 = -t265 * t47 - t46 * t343 + t356 * t48 - t404 * t50;
t5 = pkin(11) * t186 - t294;
t2 = -qJD(6) * t14 - t264 * t5 + t267 * t30;
t429 = t14 * t426 + t2;
t316 = t22 * t264 - t267 * t36;
t1 = -qJD(6) * t316 + t264 * t30 + t267 * t5;
t418 = t316 * t426 + t1;
t428 = t114 ^ 2;
t427 = t114 * t282;
t425 = t419 ^ 2;
t275 = t267 * t282;
t87 = t264 * t419 - t275;
t424 = t419 * t87;
t89 = t264 * t282 + t267 * t419;
t423 = t419 * t89;
t422 = t419 * t201;
t289 = -t265 * t259 + t346;
t144 = t289 * t201;
t229 = t259 * t356 - t262 * t343;
t362 = t229 - t144;
t361 = t282 * t236;
t401 = pkin(10) + qJ(4);
t243 = t401 * t259;
t244 = t401 * t262;
t290 = -t243 * t404 - t244 * t265;
t403 = pkin(10) * t262;
t147 = pkin(3) * t205 + qJ(4) * t201;
t82 = -t134 * t259 + t262 * t147;
t66 = pkin(4) * t205 + t201 * t403 + t82;
t375 = t201 * t259;
t83 = t262 * t134 + t259 * t147;
t73 = pkin(10) * t375 + t83;
t386 = qJD(4) * t289 + qJD(5) * t290 - t265 * t66 - t404 * t73;
t420 = t201 * t328 + t368;
t417 = -pkin(11) * t205 + t386;
t95 = -pkin(4) * t375 + t135;
t416 = -t361 * pkin(5) - pkin(11) * t362 + t95;
t219 = (-t260 * t340 + t347) * t358;
t304 = qJD(1) * t323;
t173 = -t259 * t219 + t262 * t304;
t174 = t262 * t219 + t259 * t304;
t287 = t404 * t320;
t339 = t266 * t381;
t227 = -t259 * t339 + t262 * t382;
t228 = t259 * t382 + t262 * t339;
t291 = t227 * t404 - t228 * t265;
t307 = t265 * t320;
t365 = -t265 * t173 - t174 * t404 + t291 * qJD(5) + (-t259 * t307 + t262 * t287) * qJD(3);
t218 = qJD(1) * t272;
t295 = qJD(3) * t339 - t218;
t412 = t159 * t201 - t378;
t349 = pkin(1) * t383;
t360 = t260 * t349 + t249;
t207 = t269 + t360;
t252 = t263 * t349;
t211 = t252 + t270;
t140 = t405 * t207 + (t382 * t211 + t381 * t220) * t266;
t216 = -t265 * t243 + t244 * t404;
t384 = qJD(4) * t236 + qJD(5) * t216 - t265 * t73 + t404 * t66;
t410 = t261 ^ 2 * (t260 ^ 2 + t263 ^ 2);
t209 = t351 + t408;
t149 = t186 * t209;
t409 = t201 * t204 + t149;
t181 = t265 * t227 + t228 * t404;
t364 = t173 * t404 - t174 * t265 + t181 * qJD(5) + (t259 * t287 + t262 * t307) * qJD(3);
t380 = qJD(6) * t89;
t39 = -t267 * t186 - t264 * t76 + t380;
t342 = t265 * t50 - t404 * t47;
t8 = -qJD(5) * t24 - t342;
t164 = t210 * t262 - t226 * t259;
t160 = -t211 * t381 + t382 * t220;
t123 = t209 * pkin(3) - t210 * qJ(4) + t160;
t130 = -qJ(4) * t226 + t140;
t70 = t262 * t123 - t130 * t259;
t55 = pkin(4) * t209 - pkin(10) * t164 + t70;
t163 = t210 * t259 + t226 * t262;
t71 = t259 * t123 + t262 * t130;
t60 = -pkin(10) * t163 + t71;
t397 = t265 * t55 + t404 * t60;
t203 = qJD(3) * t408 + t325;
t119 = t211 * t301 + t220 * t300 + t241 + (-qJD(3) * t207 - t303) * t266;
t101 = -t226 * qJD(4) + t119;
t138 = t204 * pkin(3) + t203 * qJ(4) - t210 * qJD(4) + t302;
t67 = -t101 * t259 + t262 * t138;
t52 = pkin(4) * t204 + t203 * t403 + t67;
t374 = t203 * t259;
t68 = t262 * t101 + t259 * t138;
t59 = pkin(10) * t374 + t68;
t12 = -qJD(5) * t397 - t265 * t59 + t404 * t52;
t406 = t201 ^ 2;
t402 = t89 * t87;
t255 = -pkin(4) * t262 - pkin(3);
t200 = -pkin(5) * t289 - pkin(11) * t236 + t255;
t151 = t200 * t264 + t216 * t267;
t400 = qJD(6) * t151 + t417 * t264 + t416 * t267;
t150 = t200 * t267 - t216 * t264;
t399 = -qJD(6) * t150 + t416 * t264 - t417 * t267;
t354 = qJD(6) * t267;
t398 = -t264 * t39 - t87 * t354;
t136 = t163 * t404 + t164 * t265;
t394 = t136 * t77;
t393 = t289 * t77;
t355 = qJD(6) * t264;
t38 = -qJD(6) * t275 - t264 * t186 + t267 * t76 + t355 * t419;
t392 = t264 * t38;
t391 = t264 * t77;
t390 = t264 * t87;
t389 = t264 * t89;
t388 = t267 * t39;
t387 = t267 * t87;
t385 = t205 * pkin(5) + t384;
t379 = t419 * t114;
t376 = t201 * t205;
t372 = t236 * t264;
t371 = t236 * t267;
t165 = -t264 * t181 - t267 * t320;
t367 = qJD(6) * t165 + t295 * t264 + t267 * t365;
t279 = -t267 * t181 + t264 * t320;
t366 = qJD(6) * t279 - t264 * t365 + t295 * t267;
t352 = qJD(1) * qJD(2);
t344 = t260 * t357;
t337 = t381 * t148;
t336 = t381 * t205;
t332 = qJD(1) * t381;
t124 = -t144 * t264 - t267 * t205;
t330 = t229 * t264 + t124;
t125 = -t144 * t267 + t205 * t264;
t329 = t229 * t267 + t125;
t326 = t426 * t267;
t268 = qJD(1) ^ 2;
t322 = t261 * t268 * t383;
t26 = pkin(11) * t209 + t397;
t137 = -t265 * t163 + t164 * t404;
t139 = -t266 * t207 + t211 * t321 + t220 * t320;
t133 = t226 * pkin(3) - t139;
t86 = t163 * pkin(4) + t133;
t40 = t136 * pkin(5) - t137 * pkin(11) + t86;
t16 = t26 * t267 + t264 * t40;
t15 = -t26 * t264 + t267 * t40;
t315 = t387 + t389;
t314 = -t106 * t203 - t133 * t185;
t97 = t137 * t267 + t209 * t264;
t313 = t185 * t209 + t201 * t203;
t312 = (-qJ(2) * t345 + t248) * t260 - t225 * t263;
t310 = t100 * t320;
t309 = t259 * t320;
t308 = t262 * t320;
t306 = t201 * t320;
t305 = t185 * t320;
t23 = -t265 * t48 + t404 * t46;
t27 = -t265 * t60 + t404 * t55;
t296 = -t267 * t38 - t355 * t89;
t11 = t265 * t52 + t55 * t343 - t356 * t60 + t404 * t59;
t293 = -0.2e1 * t333 * t357;
t21 = -pkin(5) * t282 - t23;
t292 = -pkin(11) * t77 + t21 * t426;
t285 = t236 * t354 - t330;
t284 = -t236 * t355 - t329;
t280 = -t159 * t259 - t262 * t328;
t276 = pkin(3) * t185 - qJ(4) * t186 + (-qJD(4) + t106) * t201;
t120 = qJD(3) * t140 + t271;
t92 = -pkin(4) * t374 + t120;
t96 = t137 * t264 - t209 * t267;
t81 = qJD(5) * t137 - t203 * t236;
t80 = t163 * t343 + t203 * t346 + (qJD(5) * t164 - t374) * t265;
t69 = pkin(5) * t419 + pkin(11) * t114;
t42 = qJD(6) * t97 - t204 * t267 - t264 * t80;
t41 = t137 * t355 - t204 * t264 - t209 * t354 + t267 * t80;
t31 = t81 * pkin(5) + t80 * pkin(11) + t92;
t25 = -t209 * pkin(5) - t27;
t18 = t23 * t267 + t264 * t69;
t17 = -t23 * t264 + t267 * t69;
t10 = -t204 * pkin(5) - t12;
t9 = pkin(11) * t204 + t11;
t6 = -t186 * pkin(5) - t8;
t4 = -qJD(6) * t16 - t264 * t9 + t267 * t31;
t3 = qJD(6) * t15 + t264 * t31 + t267 * t9;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260 * t293, t263 * t293, 0.2e1 * t352 * t410 ((t263 * t360 + (qJ(2) * t370 - t252) * t260) * qJD(1) - t312) * t357, -t185 * t210 - t203 * t205, -t186 * t210 - t204 * t205 + t313, t185 * t226 + t203 * t221, t409, t186 * t226 + t204 * t221, 0, t100 * t226 + t120 * t221 + t148 * t204 + t160 * t186 + (t201 * t381 + t209 * t332) * t344, t119 * t221 - t148 * t203 - t160 * t185 + t99 * t226 + (t210 * t332 + t336) * t344, t100 * t210 - t119 * t201 + t120 * t205 + t134 * t203 - t135 * t204 + t139 * t185 - t140 * t186 - t209 * t99, -t100 * t139 + t135 * t119 - t134 * t120 + t99 * t140 + (t160 * t332 + t337) * t344 (-t159 * t203 - t164 * t185) * t262, -t280 * t203 + (t163 * t262 + t164 * t259) * t185, t159 * t204 + t164 * t186 - t262 * t313 (-t185 * t163 - t203 * t328) * t259, -t163 * t186 - t204 * t328 + t259 * t313, t409, t100 * t163 + t120 * t328 + t70 * t186 + t67 * t201 + t63 * t204 + t61 * t209 + t259 * t314, t100 * t164 + t120 * t159 - t186 * t71 - t201 * t68 - t204 * t64 - t209 * t62 + t262 * t314, -t68 * t328 - t62 * t163 - t67 * t159 - t61 * t164 + (t259 * t64 + t262 * t63) * t203 + (t259 * t71 + t262 * t70) * t185, t100 * t133 + t106 * t120 + t61 * t70 + t62 * t71 + t63 * t67 + t64 * t68, -t137 * t76 - t419 * t80, t114 * t80 + t136 * t76 - t137 * t77 - t419 * t81, t137 * t186 + t204 * t419 - t76 * t209 - t282 * t80, t114 * t81 + t394, -t114 * t204 - t136 * t186 - t77 * t209 - t282 * t81, t204 * t282 + t149, t92 * t114 + t12 * t282 + t84 * t136 + t27 * t186 + t23 * t204 + t8 * t209 + t86 * t77 + t78 * t81, -t11 * t282 + t84 * t137 - t186 * t397 - t24 * t204 + t209 * t294 + t419 * t92 - t86 * t76 - t78 * t80, -t11 * t114 - t12 * t419 + t136 * t294 - t137 * t8 + t23 * t80 - t24 * t81 + t27 * t76 - t397 * t77, t11 * t24 + t12 * t23 + t27 * t8 - t294 * t397 + t78 * t92 + t84 * t86, -t38 * t97 - t41 * t89, t38 * t96 - t39 * t97 + t41 * t87 - t42 * t89, -t136 * t38 - t41 * t426 + t77 * t97 + t81 * t89, t39 * t96 + t42 * t87, -t136 * t39 - t42 * t426 - t77 * t96 - t81 * t87, t426 * t81 + t394, t10 * t87 + t136 * t2 + t15 * t77 + t21 * t42 + t25 * t39 - t316 * t81 + t4 * t426 + t6 * t96, -t1 * t136 + t10 * t89 - t14 * t81 - t16 * t77 - t21 * t41 - t25 * t38 - t3 * t426 + t6 * t97, -t1 * t96 - t14 * t42 + t15 * t38 - t16 * t39 - t2 * t97 - t3 * t87 - t316 * t41 - t4 * t89, t1 * t16 + t10 * t21 + t14 * t3 + t15 * t2 + t25 * t6 - t316 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t260 * t322, t263 * t322, -t268 * t410, t312 * t358, 0, 0, 0, 0, 0, 0, t186 * t382 - t201 * t304 + t221 * t295, -t205 * t304 - t382 * t185 + (t300 - t219) * t221, t305 - t186 * t339 + t219 * t201 - t218 * t205 + (t266 * t336 - t306) * qJD(3), -t310 + t99 * t339 + t134 * t218 - t135 * t219 + (-t134 * t339 + t135 * t320) * qJD(3) + (t331 * t381 - t337) * t345, 0, 0, 0, 0, 0, 0, t227 * t186 + t259 * t305 - t173 * t201 - t218 * t328 + (-t259 * t306 + t328 * t339) * qJD(3), t262 * t305 - t218 * t159 + t174 * t201 - t228 * t186 + (t159 * t339 - t262 * t306) * qJD(3), t174 * t328 + t173 * t159 + (t227 * t262 + t228 * t259) * t185 + (t159 * t309 - t308 * t328) * qJD(3), -t310 - t106 * t218 - t63 * t173 - t64 * t174 + t61 * t227 + t62 * t228 + (t106 * t339 + t308 * t64 - t309 * t63) * qJD(3), 0, 0, 0, 0, 0, 0, t114 * t295 + t186 * t291 - t282 * t364 - t320 * t77, -t181 * t186 - t282 * t365 + t295 * t419 + t320 * t76, -t114 * t365 - t181 * t77 + t291 * t76 + t364 * t419, -t181 * t294 - t23 * t364 + t24 * t365 + t291 * t8 + t295 * t78 - t320 * t84, 0, 0, 0, 0, 0, 0, t165 * t77 - t291 * t39 + t364 * t87 + t366 * t426, t279 * t77 + t291 * t38 + t364 * t89 - t367 * t426, t165 * t38 + t279 * t39 - t366 * t89 - t367 * t87, -t1 * t279 + t14 * t367 + t165 * t2 + t21 * t364 - t291 * t6 - t316 * t366; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t376, t205 ^ 2 - t406, -t201 * t221 - t185, -t376, -t205 * t221 - t186, 0, -t135 * t221 - t148 * t205 - t272 * t352 - t407, -t134 * t221 + t148 * t201 - t99, 0, 0, t412 * t262, t280 * t201 + (t259 ^ 2 - t262 ^ 2) * t185, -t159 * t205 + t186 * t259 + t262 * t406, t420 * t259, t262 * t186 + t205 * t328 - t259 * t406, -t376, -t100 * t262 - t135 * t328 - t82 * t201 - t63 * t205 + t259 * t276, t100 * t259 - t135 * t159 + t201 * t83 + t205 * t64 + t262 * t276, t82 * t159 + t83 * t188 + (-qJD(4) * t328 - t63 * t201 + t83 * t221 + t62) * t262 + (qJD(4) * t159 - t201 * t64 - t61) * t259, -pkin(3) * t100 - t106 * t135 - t63 * t82 - t64 * t83 + (-t259 * t63 + t262 * t64) * qJD(4) + (-t61 * t259 + t62 * t262) * qJ(4), -t236 * t76 - t362 * t419, t114 * t362 - t236 * t77 - t289 * t76 - t361 * t419, t236 * t186 - t205 * t419 - t282 * t362, t114 * t361 - t393, t114 * t205 + t186 * t289 - t282 * t361, -t282 * t205, -t95 * t114 + t186 * t290 - t23 * t205 + t255 * t77 - t282 * t384 - t289 * t84 + t361 * t78, -t216 * t186 + t24 * t205 + t84 * t236 - t255 * t76 - t282 * t386 - t362 * t78 - t419 * t95, -t114 * t386 - t216 * t77 + t23 * t362 - t236 * t8 - t24 * t361 - t289 * t294 + t290 * t76 + t384 * t419, -t216 * t294 - t23 * t384 + t24 * t386 + t255 * t84 + t290 * t8 - t78 * t95, t284 * t89 - t371 * t38, t124 * t89 + t125 * t87 + t315 * t229 + (t392 - t388 + (-t267 * t89 + t390) * qJD(6)) * t236, t284 * t426 + t289 * t38 + t361 * t89 + t371 * t77, t285 * t87 + t372 * t39, -t285 * t426 + t289 * t39 - t361 * t87 - t372 * t77, t361 * t426 - t393, t150 * t77 - t2 * t289 + t21 * t285 - t290 * t39 - t316 * t361 + t372 * t6 + t385 * t87 - t400 * t426, t1 * t289 - t14 * t361 - t151 * t77 + t21 * t284 + t290 * t38 + t371 * t6 + t385 * t89 + t399 * t426, t150 * t38 - t151 * t39 + t400 * t89 + t399 * t87 + t330 * t14 - t329 * t316 + (-t1 * t264 - t2 * t267 + (-t14 * t267 - t264 * t316) * qJD(6)) * t236, t1 * t151 - t14 * t399 + t150 * t2 + t21 * t385 - t290 * t6 + t316 * t400; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t412, -t420, -t159 ^ 2 - t328 ^ 2, t159 * t63 + t328 * t64 + t100, 0, 0, 0, 0, 0, 0, -t283 + 0.2e1 * t421 + t422, -t76 - t427, -t425 - t428, t114 * t24 + t23 * t419 + t84, 0, 0, 0, 0, 0, 0, -t424 + t430, -t267 * t327 - t391 - t423 -(t387 - t389) * t114 - t296 + t398, -t419 * t21 + t418 * t264 + t429 * t267; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t379, t425 - t428, -t76 + t427, -t379, t283 + t422, t186, t201 * t24 - t419 * t78 - t342, t78 * t114 + t23 * t282 + t294, 0, 0, t326 * t89 - t392, -t114 * t315 + t296 + t398, t326 * t426 + t391 - t423, t390 * t426 - t388, t424 + t430, -t426 * t419, -pkin(5) * t39 + t419 * t316 - t24 * t87 - t267 * t6 + (-pkin(11) * t354 - t17) * t426 + t292 * t264, pkin(5) * t38 + t419 * t14 - t24 * t89 + t264 * t6 + (pkin(11) * t355 + t18) * t426 + t292 * t267, t17 * t89 + t18 * t87 + ((-t39 + t380) * pkin(11) + t418) * t267 + ((qJD(6) * t87 - t38) * pkin(11) - t429) * t264, -pkin(5) * t6 + t316 * t17 - t14 * t18 - t21 * t24 + (t1 * t267 - t2 * t264 + (-t14 * t264 + t267 * t316) * qJD(6)) * pkin(11); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t402, -t87 ^ 2 + t89 ^ 2, t426 * t87 - t38, -t402, t426 * t89 - t39, t77, -t21 * t89 + t429, t21 * t87 - t418, 0, 0;];
tauc_reg  = t7;
