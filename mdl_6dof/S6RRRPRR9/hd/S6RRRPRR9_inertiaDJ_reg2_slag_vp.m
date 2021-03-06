% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRPRR9
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
% Datum: 2019-03-09 19:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPRR9_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR9_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR9_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRPRR9_inertiaDJ_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:10:17
% EndTime: 2019-03-09 19:11:14
% DurationCPUTime: 26.09s
% Computational Cost: add. (32054->729), mult. (97792->1316), div. (0->0), fcn. (100444->14), ass. (0->350)
t143 = sin(pkin(6));
t151 = cos(qJ(2));
t380 = qJD(2) * t151;
t335 = t143 * t380;
t401 = cos(pkin(7));
t329 = t151 * t401;
t309 = t143 * t329;
t142 = sin(pkin(7));
t402 = cos(pkin(6));
t331 = t142 * t402;
t254 = t309 + t331;
t459 = t254 * qJD(3);
t460 = t459 + t335;
t147 = sin(qJ(2));
t288 = t143 * (-pkin(10) * t401 - pkin(9));
t352 = pkin(1) * t402;
t321 = t151 * t352;
t229 = t147 * t288 + t321;
t350 = t402 * pkin(2);
t217 = t350 + t229;
t353 = -pkin(2) * t151 - pkin(1);
t391 = t142 * t147;
t266 = (-pkin(10) * t391 + t353) * t143;
t188 = t142 * t266 + t217 * t401;
t145 = sin(qJ(5));
t149 = cos(qJ(5));
t150 = cos(qJ(3));
t390 = t142 * t150;
t400 = cos(pkin(13));
t129 = t400 * t390;
t146 = sin(qJ(3));
t392 = t142 * t146;
t399 = sin(pkin(13));
t313 = t399 * t392;
t287 = t313 - t129;
t421 = qJD(5) * t287;
t441 = t150 * t399;
t264 = t146 * t400 + t441;
t423 = qJD(3) * t264;
t457 = t142 * t423;
t424 = t145 * t457 + t149 * t421;
t389 = t143 * t147;
t312 = t401 * t389;
t292 = qJD(2) * t312;
t347 = qJD(3) * t389;
t453 = t292 + t347;
t293 = t146 * t460 + t150 * t453;
t385 = t453 * t146;
t451 = -t150 * t460 + t385;
t187 = -t293 * t399 - t400 * t451;
t388 = t143 * t151;
t130 = t142 * t388;
t276 = -t401 * t402 + t130;
t177 = -qJD(5) * t276 + t187;
t381 = qJD(2) * t147;
t336 = t143 * t381;
t122 = t142 * t336;
t270 = -t146 * t147 + t150 * t329;
t330 = t150 * t402;
t220 = t142 * t330 + t143 * t270;
t221 = t143 * (t146 * t329 + t147 * t150) + t146 * t331;
t184 = t220 * t399 + t221 * t400;
t455 = -qJD(5) * t184 + t122;
t273 = t455 * t145;
t174 = t149 * t177 + t273;
t374 = qJD(5) * t145;
t61 = -t145 * t276 + t149 * t184;
t458 = -t149 * t174 + t374 * t61;
t322 = t147 * t352;
t263 = -pkin(9) * t388 - t322;
t209 = pkin(10) * t254 - t263;
t58 = t146 * t188 + t150 * t209;
t57 = -t146 * t209 + t150 * t188;
t193 = t293 * t400 - t399 * t451;
t207 = -t220 * t400 + t221 * t399;
t422 = qJD(5) * t207;
t431 = t145 * t193 + t149 * t422;
t121 = qJD(3) * t313;
t272 = qJD(3) * t129 - t121;
t234 = qJD(5) * t401 + t272;
t446 = t142 * t264;
t238 = qJD(5) * t446;
t98 = t145 * t238;
t419 = -t149 * t234 + t98;
t92 = t145 * t401 + t149 * t446;
t452 = -t149 * t419 - t374 * t92;
t450 = -0.4e1 * t145;
t449 = 0.2e1 * t272;
t448 = t146 * pkin(3);
t414 = t142 * pkin(2);
t192 = pkin(3) * t390 - pkin(4) * t287 + pkin(11) * t446 + t414;
t351 = pkin(2) * t401;
t319 = t150 * t351;
t413 = pkin(10) + qJ(4);
t332 = t142 * t413;
t246 = -t146 * t332 + t319;
t376 = qJD(4) * t142;
t218 = qJD(3) * t246 + t150 * t376;
t320 = t146 * t351;
t219 = -t146 * t376 + (-t150 * t332 - t320) * qJD(3);
t64 = t218 * t400 + t219 * t399;
t447 = qJD(5) * t192 - t64;
t136 = t142 ^ 2;
t318 = t136 * t336;
t445 = t145 * t177;
t444 = t145 * t234;
t440 = t193 * t287;
t148 = cos(qJ(6));
t144 = sin(qJ(6));
t371 = qJD(6) * t144;
t79 = t149 * t238 + t444;
t91 = t145 * t446 - t149 * t401;
t279 = -t148 * t79 + t371 * t91;
t439 = t279 * t145;
t37 = -t149 * t455 + t445;
t60 = t145 * t184 + t149 * t276;
t281 = -t148 * t37 + t371 * t60;
t438 = t281 * t145;
t170 = -pkin(3) * t276 - qJ(4) * t221 + t57;
t171 = qJ(4) * t220 + t58;
t26 = t170 * t400 - t171 * t399;
t24 = pkin(4) * t276 - t26;
t157 = t60 * pkin(5) - t61 * pkin(12) + t24;
t27 = t170 * t399 + t171 * t400;
t159 = -pkin(11) * t276 + t27;
t226 = qJD(2) * (t151 * t288 - t322);
t382 = qJD(2) * t143;
t258 = (-pkin(10) * t142 * t151 + pkin(2) * t147) * t382;
t277 = t293 * pkin(3);
t435 = -pkin(4) * t193 + pkin(11) * t187 + qJD(5) * t159 + t142 * t226 - t258 * t401 - t277;
t201 = qJD(3) * t209;
t430 = t188 * qJD(3);
t172 = -t146 * t201 + t150 * t430;
t427 = -qJ(4) * t293 + qJD(4) * t220;
t169 = t172 + t427;
t173 = -t146 * t430 - t150 * t201;
t214 = t221 * qJD(4);
t155 = t400 * t169 + t399 * (-(t150 * t459 - t385) * qJ(4) - t214 + t173);
t262 = pkin(9) * t389 - t321;
t227 = -pkin(10) * t312 - t262;
t429 = t401 * (-pkin(10) * t309 + t263) + t142 * (pkin(2) * t389 - pkin(10) * t130);
t418 = t429 * t146;
t176 = t150 * t227 + t418;
t358 = t142 * t389;
t165 = t400 * t176 + t399 * (pkin(3) * t358 - t146 * t227) + (-qJ(4) * t388 + t429) * t441;
t166 = pkin(3) * t220 - pkin(4) * t207 + pkin(11) * t184 + t142 * t217 - t266 * t401;
t436 = -(pkin(11) * t358 + t165) * qJD(2) - t155 + qJD(5) * t166;
t5 = t145 * t435 + t149 * t436;
t437 = -pkin(12) * t193 - qJD(6) * t157 + t5;
t228 = pkin(3) * t401 + t246;
t247 = t390 * t413 + t320;
t80 = t228 * t400 - t247 * t399;
t70 = -pkin(4) * t401 - t80;
t183 = t91 * pkin(5) - t92 * pkin(12) + t70;
t81 = t228 * t399 + t247 * t400;
t186 = pkin(11) * t401 + t81;
t378 = qJD(3) * t146;
t338 = t142 * t378;
t325 = pkin(3) * t338;
t432 = -pkin(4) * t457 + pkin(11) * t272 + qJD(5) * t186 - t325;
t32 = t145 * t432 + t149 * t447;
t434 = -pkin(12) * t457 - qJD(6) * t183 + t32;
t433 = qJD(6) * t207 + t174;
t428 = t142 * t258 + t226 * t401;
t426 = -qJD(6) * t287 + t419;
t138 = t144 ^ 2;
t140 = t148 ^ 2;
t327 = qJD(6) * (t138 - t140);
t420 = 0.2e1 * t207 * t193;
t417 = t150 ^ 2;
t416 = pkin(5) * t145;
t415 = pkin(12) * t149;
t370 = qJD(6) * t148;
t21 = t144 * t433 - t148 * t193 + t370 * t61;
t372 = qJD(5) * t149;
t344 = t148 * t372;
t387 = t145 * t148;
t44 = t144 * t61 - t148 * t207;
t412 = -t21 * t387 - t344 * t44;
t18 = -t145 * t166 + t149 * t159;
t411 = -t145 * t37 - t372 * t60;
t48 = -t144 * t426 - t148 * t457 + t370 * t92;
t83 = t144 * t92 - t148 * t287;
t410 = -t344 * t83 - t387 * t48;
t55 = -t145 * t192 + t149 * t186;
t409 = -t145 * t79 - t372 * t91;
t20 = -t144 * t193 - t148 * t433 + t371 * t61;
t408 = t144 * t20;
t47 = -t144 * t457 + t148 * t426 + t371 * t92;
t407 = t144 * t47;
t406 = t148 * t20;
t405 = t148 * t21;
t404 = t148 * t47;
t403 = t148 * t48;
t398 = qJD(5) * t44;
t397 = qJD(5) * t83;
t396 = qJD(6) * t44;
t395 = qJD(6) * t83;
t134 = pkin(3) * t399 + pkin(11);
t394 = t134 * t145;
t393 = t134 * t149;
t386 = t148 * t149;
t139 = t145 ^ 2;
t383 = -t149 ^ 2 + t139;
t379 = qJD(3) * t142;
t377 = qJD(3) * t150;
t375 = qJD(5) * t144;
t373 = qJD(5) * t148;
t369 = qJD(6) * t149;
t368 = 0.2e1 * t60 * t37;
t367 = 0.2e1 * t91 * t79;
t366 = -0.2e1 * pkin(5) * qJD(6);
t135 = -pkin(3) * t400 - pkin(4);
t365 = 0.2e1 * qJD(5) * t135;
t364 = t60 * t375;
t363 = t91 * t375;
t362 = t60 * t373;
t361 = t91 * t373;
t45 = t144 * t207 + t148 * t61;
t360 = t45 * t372;
t84 = t144 * t287 + t148 * t92;
t359 = t84 * t372;
t357 = t144 * t393;
t356 = t134 * t386;
t137 = t143 ^ 2;
t349 = t137 * t380;
t348 = t136 * t377;
t346 = t138 * t372;
t345 = t134 * t374;
t343 = t134 * t372;
t342 = qJD(6) * t134 * t139;
t341 = t144 * t369;
t340 = t145 * t370;
t339 = t148 * t369;
t337 = t142 * t377;
t334 = t144 * t370;
t333 = t145 * t372;
t326 = t383 * qJD(5);
t324 = t45 * t340;
t323 = t84 * t340;
t317 = t144 * t344;
t316 = t139 * t334;
t315 = t146 * t348;
t314 = t147 * t349;
t308 = t402 * t382;
t306 = t401 * t379;
t305 = -pkin(5) * t149 - pkin(12) * t145;
t304 = -t415 + t416;
t13 = pkin(12) * t207 + t18;
t7 = -t13 * t144 + t148 * t157;
t8 = t148 * t13 + t144 * t157;
t303 = -t144 * t8 - t148 * t7;
t302 = t144 * t7 - t148 * t8;
t6 = t145 * t436 - t149 * t435;
t301 = -t6 * t145 - t5 * t149;
t300 = t37 * t91 + t60 * t79;
t299 = pkin(3) * t122;
t50 = pkin(12) * t287 + t55;
t30 = -t144 * t50 + t148 * t183;
t31 = t144 * t183 + t148 * t50;
t298 = -t144 * t31 - t148 * t30;
t297 = t144 * t30 - t148 * t31;
t253 = -t305 - t135;
t241 = t148 * t253;
t89 = -t241 - t357;
t90 = -t144 * t253 + t356;
t296 = -t144 * t90 - t148 * t89;
t295 = t144 * t89 - t148 * t90;
t33 = t145 * t447 - t149 * t432;
t294 = -t33 * t145 - t32 * t149;
t17 = -t145 * t159 - t149 * t166;
t12 = -pkin(5) * t207 - t17;
t4 = -pkin(5) * t193 - t6;
t290 = t12 * t370 + t144 * t4;
t289 = t12 * t371 - t148 * t4;
t286 = -t149 * t37 + t374 * t60;
t285 = -t149 * t79 + t374 * t91;
t29 = -pkin(5) * t457 - t33;
t54 = -t145 * t186 - t149 * t192;
t49 = -pkin(5) * t287 - t54;
t284 = t144 * t29 + t370 * t49;
t283 = -t148 * t29 + t371 * t49;
t282 = t144 * t37 + t370 * t60;
t280 = t144 * t79 + t370 * t91;
t278 = t304 * t144;
t275 = t142 * t293;
t107 = t145 * t373 + t341;
t265 = t142 * t276;
t261 = -pkin(10) * t390 - t320;
t260 = pkin(10) * t392 - t319;
t257 = t321 + t350;
t251 = qJD(3) * t265;
t243 = pkin(9) * t391 + t353 * t401;
t239 = t136 * t423;
t235 = -0.2e1 * t457;
t225 = qJD(2) * t229;
t39 = -t146 * t428 - t150 * t225 - t172;
t162 = t39 - t427;
t40 = -t146 * t225 + t150 * t428 + t173;
t160 = qJ(4) * t451 - t214 + t299 + t40;
t25 = t400 * t160;
t161 = t162 * t399 + t25;
t154 = -pkin(4) * t122 + t37 * pkin(5) - pkin(12) * t174 - t161;
t1 = t13 * t371 - t144 * t154 + t148 * t437;
t2 = -t13 * t370 + t144 * t437 + t148 * t154;
t233 = qJD(6) * t303 - t1 * t148 - t144 * t2;
t63 = t218 * t399 - t219 * t400;
t180 = t79 * pkin(5) + pkin(12) * t419 + t63;
t10 = -t144 * t180 + t148 * t434 + t371 * t50;
t11 = t144 * t434 + t148 * t180 - t370 * t50;
t231 = qJD(6) * t298 - t10 * t148 - t11 * t144;
t72 = -qJD(5) * t278 + qJD(6) * t241 + t107 * t134;
t73 = -t90 * qJD(6) + (t144 * t394 + t148 * t304) * qJD(5);
t230 = qJD(6) * t296 - t144 * t73 - t148 * t72;
t216 = t142 * t221;
t215 = t142 * t220;
t210 = qJD(3) * t215;
t78 = (pkin(2) * t312 - t142 * t263) * qJD(2);
t200 = t142 * t207;
t199 = t142 * t451;
t195 = t207 * t379;
t182 = t142 * t184;
t179 = qJD(3) * t182;
t168 = -t169 * t399 + t25;
t132 = t140 * t372;
t131 = -0.2e1 * t333;
t128 = t140 * t333;
t127 = t138 * t333;
t120 = (-pkin(3) * t150 - pkin(2)) * t142;
t115 = t142 * t292;
t109 = t144 * t374 - t339;
t108 = -t144 * t372 - t340;
t106 = t145 * t371 - t344;
t105 = t263 * qJD(2);
t104 = t262 * qJD(2);
t103 = t261 * qJD(3);
t102 = t260 * qJD(3);
t94 = t145 * t327 - t317;
t93 = -0.2e1 * t265 * t336;
t85 = -t145 * t421 + t149 * t457;
t77 = -t257 * t142 + t243 * t143;
t76 = t84 * t374;
t62 = (-pkin(3) * t330 - t257) * t142 + (-pkin(3) * t270 + t243) * t143;
t56 = t277 + t78;
t43 = t45 * t374;
t38 = -t145 * t422 + t149 * t193;
t16 = qJD(2) * t165 + t155;
t15 = -t399 * (t150 * t229 + t418) * qJD(2) + t168;
t14 = (-pkin(4) * t358 + t176 * t399) * qJD(2) - t168;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t314, 0.2e1 * (-t147 ^ 2 + t151 ^ 2) * t137 * qJD(2), 0.2e1 * t151 * t308, -0.2e1 * t314, -0.2e1 * t147 * t308, 0, -0.2e1 * pkin(1) * t137 * t381 + 0.2e1 * t105 * t402, -0.2e1 * pkin(1) * t349 + 0.2e1 * t104 * t402, 0.2e1 * (-t104 * t151 - t105 * t147 + (t147 * t263 + t151 * t262) * qJD(2)) * t143, 0.2e1 * t104 * t263 - 0.2e1 * t105 * t262, -0.2e1 * t221 * t451, -0.2e1 * t220 * t451 - 0.2e1 * t221 * t293, 0.2e1 * t216 * t336 + 0.2e1 * t276 * t451, -0.2e1 * t220 * t293, 0.2e1 * t215 * t336 + 0.2e1 * t276 * t293, t93, 0.2e1 * t122 * t57 - 0.2e1 * t220 * t78 - 0.2e1 * t276 * t40 + 0.2e1 * t293 * t77, -0.2e1 * t122 * t58 + 0.2e1 * t221 * t78 - 0.2e1 * t276 * t39 - 0.2e1 * t451 * t77, -0.2e1 * t220 * t39 - 0.2e1 * t221 * t40 - 0.2e1 * t293 * t58 + 0.2e1 * t451 * t57, -0.2e1 * t39 * t58 + 0.2e1 * t40 * t57 + 0.2e1 * t77 * t78, 0.2e1 * t184 * t187, -0.2e1 * t184 * t193 - 0.2e1 * t187 * t207, 0.2e1 * t182 * t336 - 0.2e1 * t187 * t276, t420, 0.2e1 * t193 * t276 - 0.2e1 * t200 * t336, t93, 0.2e1 * t122 * t26 - 0.2e1 * t15 * t276 + 0.2e1 * t193 * t62 + 0.2e1 * t207 * t56, -0.2e1 * t122 * t27 + 0.2e1 * t16 * t276 + 0.2e1 * t184 * t56 + 0.2e1 * t187 * t62, -0.2e1 * t15 * t184 - 0.2e1 * t16 * t207 - 0.2e1 * t187 * t26 - 0.2e1 * t193 * t27, 0.2e1 * t15 * t26 + 0.2e1 * t16 * t27 + 0.2e1 * t56 * t62, 0.2e1 * t61 * t174, -0.2e1 * t174 * t60 - 0.2e1 * t37 * t61, 0.2e1 * t174 * t207 + 0.2e1 * t193 * t61, t368, -0.2e1 * t193 * t60 - 0.2e1 * t207 * t37, t420, 0.2e1 * t14 * t60 + 0.2e1 * t17 * t193 + 0.2e1 * t207 * t6 + 0.2e1 * t24 * t37, 0.2e1 * t14 * t61 + 0.2e1 * t174 * t24 - 0.2e1 * t18 * t193 + 0.2e1 * t207 * t5, -0.2e1 * t17 * t174 - 0.2e1 * t18 * t37 + 0.2e1 * t5 * t60 - 0.2e1 * t6 * t61, 0.2e1 * t14 * t24 + 0.2e1 * t17 * t6 - 0.2e1 * t18 * t5, -0.2e1 * t45 * t20, 0.2e1 * t20 * t44 - 0.2e1 * t21 * t45, -0.2e1 * t20 * t60 + 0.2e1 * t37 * t45, 0.2e1 * t44 * t21, -0.2e1 * t21 * t60 - 0.2e1 * t37 * t44, t368, 0.2e1 * t12 * t21 + 0.2e1 * t2 * t60 + 0.2e1 * t37 * t7 + 0.2e1 * t4 * t44, 0.2e1 * t1 * t60 - 0.2e1 * t12 * t20 - 0.2e1 * t37 * t8 + 0.2e1 * t4 * t45, 0.2e1 * t1 * t44 - 0.2e1 * t2 * t45 + 0.2e1 * t20 * t7 - 0.2e1 * t21 * t8, -0.2e1 * t1 * t8 + 0.2e1 * t12 * t4 + 0.2e1 * t2 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t335, 0, -t336, 0, t105, t104, 0, 0 (t417 * t347 + ((0.2e1 * t459 + t335) * t150 - t385) * t146) * t142, -t146 * t275 - t216 * t378 + (-t199 + t210) * t150, t146 * t318 - t150 * t251 - t401 * t451, -t146 * t210 - t150 * t275, t146 * t251 + t150 * t318 - t293 * t401, t115, -t103 * t276 + t40 * t401 + (-pkin(2) * t293 - t150 * t78 - t260 * t336 + t378 * t77) * t142, pkin(2) * t199 - t102 * t276 + t122 * t261 + t337 * t77 + t39 * t401 + t392 * t78, -t102 * t220 - t103 * t221 - t260 * t451 + t261 * t293 - t337 * t57 - t338 * t58 - t39 * t390 - t392 * t40, -t102 * t58 + t103 * t57 - t260 * t40 + t261 * t39 - t414 * t78, t184 * t272 + t187 * t446, -t179 * t264 - t187 * t287 - t193 * t446 - t207 * t272, t187 * t401 + t264 * t318 - t272 * t276, t200 * t423 + t440, -t122 * t287 - t193 * t401 + t276 * t457, t115, t120 * t193 + t122 * t80 + t15 * t401 + t195 * t448 + t276 * t63 + t287 * t56 + t457 * t62, t120 * t187 - t122 * t81 - t16 * t401 + t179 * t448 + t272 * t62 + t276 * t64 + t446 * t56, -t15 * t446 - t16 * t287 + t184 * t63 - t187 * t80 - t193 * t81 - t207 * t64 - t26 * t272 - t27 * t457, t120 * t56 + t15 * t80 + t16 * t81 - t26 * t63 + t27 * t64 + t325 * t62, t273 * t92 - t61 * t98 + (t177 * t92 + t234 * t61) * t149, -t174 * t91 - t37 * t92 + t419 * t60 - t61 * t79, t174 * t287 + t193 * t92 - t207 * t419 + t457 * t61, t300, -t193 * t91 - t207 * t79 - t287 * t37 - t457 * t60, t195 * t264 + t440, t14 * t91 + t17 * t457 + t193 * t54 + t207 * t33 + t24 * t79 + t287 * t6 + t70 * t37 + t63 * t60, t14 * t92 + t174 * t70 - t18 * t457 - t193 * t55 + t207 * t32 - t24 * t419 + t287 * t5 + t63 * t61, t17 * t419 - t174 * t54 - t18 * t79 + t32 * t60 - t33 * t61 - t55 * t37 + t5 * t91 - t6 * t92, t14 * t70 + t17 * t33 - t18 * t32 + t24 * t63 - t5 * t55 + t54 * t6, -t20 * t84 - t45 * t47, t20 * t83 - t21 * t84 + t44 * t47 - t45 * t48, -t20 * t91 + t37 * t84 + t45 * t79 - t47 * t60, t21 * t83 + t44 * t48, -t21 * t91 - t37 * t83 - t44 * t79 - t48 * t60, t300, t11 * t60 + t12 * t48 + t2 * t91 + t21 * t49 + t29 * t44 + t30 * t37 + t4 * t83 + t7 * t79, t1 * t91 + t10 * t60 - t12 * t47 - t20 * t49 + t29 * t45 - t31 * t37 + t4 * t84 - t79 * t8, t1 * t83 + t10 * t44 - t11 * t45 - t2 * t84 + t20 * t30 - t21 * t31 + t47 * t7 - t48 * t8, -t1 * t31 - t10 * t8 + t11 * t7 + t12 * t29 + t2 * t30 + t4 * t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t315, 0.2e1 * (-t146 ^ 2 + t417) * t136 * qJD(3), 0.2e1 * t150 * t306, -0.2e1 * t315, -0.2e1 * t146 * t306, 0, -0.2e1 * pkin(2) * t136 * t378 + 0.2e1 * t103 * t401, -0.2e1 * pkin(2) * t348 + 0.2e1 * t102 * t401, 0.2e1 * (-t102 * t150 - t103 * t146 + (t146 * t261 + t150 * t260) * qJD(3)) * t142, 0.2e1 * t102 * t261 - 0.2e1 * t103 * t260, t446 * t449, -0.2e1 * t239 * t264 - 0.2e1 * t272 * t287, t401 * t449, -t287 * t235, t401 * t235, 0, 0.2e1 * t120 * t457 + 0.2e1 * t287 * t325 - 0.2e1 * t401 * t63, 0.2e1 * t120 * t272 + 0.2e1 * t239 * t448 - 0.2e1 * t401 * t64, -0.2e1 * t272 * t80 - 0.2e1 * t287 * t64 + 0.2e1 * t446 * t63 - 0.2e1 * t457 * t81, 0.2e1 * t120 * t325 - 0.2e1 * t63 * t80 + 0.2e1 * t64 * t81, -0.2e1 * t92 * t419, 0.2e1 * t419 * t91 - 0.2e1 * t79 * t92, -0.2e1 * t287 * t419 + 0.2e1 * t457 * t92, t367, -0.2e1 * t287 * t79 - 0.2e1 * t457 * t91, 0.2e1 * t287 * t457, 0.2e1 * t287 * t33 + 0.2e1 * t457 * t54 + 0.2e1 * t63 * t91 + 0.2e1 * t70 * t79, 0.2e1 * t287 * t32 - 0.2e1 * t419 * t70 - 0.2e1 * t457 * t55 + 0.2e1 * t63 * t92, 0.2e1 * t32 * t91 - 0.2e1 * t33 * t92 + 0.2e1 * t419 * t54 - 0.2e1 * t55 * t79, -0.2e1 * t32 * t55 + 0.2e1 * t33 * t54 + 0.2e1 * t63 * t70, -0.2e1 * t84 * t47, 0.2e1 * t47 * t83 - 0.2e1 * t48 * t84, -0.2e1 * t47 * t91 + 0.2e1 * t79 * t84, 0.2e1 * t83 * t48, -0.2e1 * t48 * t91 - 0.2e1 * t79 * t83, t367, 0.2e1 * t11 * t91 + 0.2e1 * t29 * t83 + 0.2e1 * t30 * t79 + 0.2e1 * t48 * t49, 0.2e1 * t10 * t91 + 0.2e1 * t29 * t84 - 0.2e1 * t31 * t79 - 0.2e1 * t47 * t49, 0.2e1 * t10 * t83 - 0.2e1 * t11 * t84 + 0.2e1 * t30 * t47 - 0.2e1 * t31 * t48, -0.2e1 * t10 * t31 + 0.2e1 * t11 * t30 + 0.2e1 * t29 * t49; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t451, 0, -t293, t122, t40, t39, 0, 0, 0, 0, t187, 0, -t193, t122, t299 * t400 + t161, t162 * t400 + (-t160 - t299) * t399 (-t187 * t400 - t193 * t399) * pkin(3) (t15 * t400 + t16 * t399) * pkin(3), t273 * t145 + (t61 * qJD(5) + t445) * t149, t411 - t458, t431, t286, t38, 0, -t134 * t431 + t135 * t37 - t14 * t149 + t24 * t374, t135 * t174 + t14 * t145 - t193 * t393 + t24 * t372 + t394 * t422, -t17 * t372 + t174 * t394 - t18 * t374 + t343 * t61 + t345 * t60 - t37 * t393 + t301, t135 * t14 + ((-t145 * t18 - t149 * t17) * qJD(5) + t301) * t134, t45 * t344 + (-t371 * t45 - t406) * t145, -t324 + (-t360 + (t20 + t396) * t145) * t144 + t412, t43 + (t20 + t362) * t149 - t438, t44 * t340 + (t145 * t21 + t372 * t44) * t144 (t21 - t364) * t149 + (-t282 - t398) * t145, t286, t37 * t89 + t60 * t73 + (-t2 + (t12 * t144 + t134 * t44) * qJD(5)) * t149 + (qJD(5) * t7 + t134 * t21 + t290) * t145, -t37 * t90 + t60 * t72 + (-t1 + (t12 * t148 + t134 * t45) * qJD(5)) * t149 + (-qJD(5) * t8 - t134 * t20 - t289) * t145, t20 * t89 - t21 * t90 + t44 * t72 - t45 * t73 + t303 * t372 + (qJD(6) * t302 + t1 * t144 - t148 * t2) * t145, -t1 * t90 + t2 * t89 + t7 * t73 - t72 * t8 + (t12 * t372 + t145 * t4) * t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t337, 0, -t338, 0, t103, t102, 0, 0, 0, 0, t272, 0, -t457, 0, -t63, -t64 (t400 * t121 + (-t150 * t400 ^ 2 - t264 * t399) * t379) * pkin(3) (t399 * t64 - t400 * t63) * pkin(3), -t98 * t145 + (t92 * qJD(5) + t444) * t149, t409 + t452, t424, t285, t85, 0, -t134 * t424 + t135 * t79 - t63 * t149 + t374 * t70, -t135 * t419 + t63 * t145 + t372 * t70 - t393 * t457 + t394 * t421, t343 * t92 + t345 * t91 - t372 * t54 - t374 * t55 - t393 * t79 - t394 * t419 + t294, t135 * t63 + ((-t145 * t55 - t149 * t54) * qJD(5) + t294) * t134, t84 * t344 + (-t371 * t84 - t404) * t145, -t323 + (-t359 + (t47 + t395) * t145) * t144 + t410, t76 + (t47 + t361) * t149 - t439, t83 * t340 + (t145 * t48 + t372 * t83) * t144 (t48 - t363) * t149 + (-t280 - t397) * t145, t285, t73 * t91 + t79 * t89 + (-t11 + (t134 * t83 + t144 * t49) * qJD(5)) * t149 + (qJD(5) * t30 + t134 * t48 + t284) * t145, t72 * t91 - t79 * t90 + (-t10 + (t134 * t84 + t148 * t49) * qJD(5)) * t149 + (-qJD(5) * t31 - t134 * t47 - t283) * t145, t47 * t89 - t48 * t90 + t72 * t83 - t73 * t84 + t298 * t372 + (qJD(6) * t297 + t10 * t144 - t11 * t148) * t145, -t10 * t90 + t11 * t89 + t30 * t73 - t31 * t72 + (t145 * t29 + t372 * t49) * t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t333, -0.2e1 * t326, 0, t131, 0, 0, t145 * t365, t149 * t365, 0, 0, 0.2e1 * t128 - 0.2e1 * t316, 0.2e1 * t139 * t327 + t317 * t450, 0.2e1 * t145 * t341 + 0.2e1 * t373 * t383, 0.2e1 * t127 + 0.2e1 * t316, -0.2e1 * t144 * t326 + 0.2e1 * t145 * t339, t131, 0.2e1 * t148 * t342 - 0.2e1 * t149 * t73 + 0.2e1 * (t89 + 0.2e1 * t357) * t374, -0.2e1 * t144 * t342 - 0.2e1 * t149 * t72 + 0.2e1 * (-t90 + 0.2e1 * t356) * t374, 0.2e1 * t296 * t372 + 0.2e1 * (qJD(6) * t295 + t144 * t72 - t148 * t73) * t145, 0.2e1 * t134 ^ 2 * t333 - 0.2e1 * t72 * t90 + 0.2e1 * t73 * t89; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t193, t187, 0, t56, 0, 0, 0, 0, 0, 0, t38, -t431, t411 + t458, -t145 * t5 + t149 * t6 + (-t145 * t17 + t149 * t18) * qJD(5), 0, 0, 0, 0, 0, 0 (-t21 - t364) * t149 + (-t282 + t398) * t145, t43 + (t20 - t362) * t149 + t438, t324 + (t360 + (-t20 + t396) * t145) * t144 + t412 (-qJD(5) * t302 - t4) * t149 + (qJD(5) * t12 + t233) * t145; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t457, t272, 0, t325, 0, 0, 0, 0, 0, 0, t85, -t424, t409 - t452, -t145 * t32 + t149 * t33 + (-t145 * t54 + t149 * t55) * qJD(5), 0, 0, 0, 0, 0, 0 (-t48 - t363) * t149 + (-t280 + t397) * t145, t76 + (t47 - t361) * t149 + t439, t323 + (t359 + (-t47 + t395) * t145) * t144 + t410 (-qJD(5) * t297 - t29) * t149 + (qJD(5) * t49 + t231) * t145; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t230 * t145 + (t134 * t383 - t149 * t295) * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t127 + 0.2e1 * t128 - 0.2e1 * t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t174, 0, -t37, t193, t6, t5, 0, 0, t370 * t45 - t408, -t144 * t21 - t406 + (-t144 * t45 - t148 * t44) * qJD(6), t282, t371 * t44 - t405, -t281, 0, -pkin(5) * t21 - pkin(12) * t282 + t289, pkin(5) * t20 + pkin(12) * t281 + t290 (-t408 - t405 + (t144 * t44 + t148 * t45) * qJD(6)) * pkin(12) + t233, -pkin(5) * t4 + pkin(12) * t233; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t419, 0, -t79, t457, t33, t32, 0, 0, t370 * t84 - t407, -t144 * t48 - t404 + (-t144 * t84 - t148 * t83) * qJD(6), t280, t371 * t83 - t403, -t279, 0, -pkin(5) * t48 - pkin(12) * t280 + t283, pkin(5) * t47 + pkin(12) * t279 + t284 (-t407 - t403 + (t144 * t83 + t148 * t84) * qJD(6)) * pkin(12) + t231, -pkin(5) * t29 + pkin(12) * t231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t372, 0, -t374, 0, -t343, t345, 0, 0, -t94, t334 * t450 + t132 - t346, t109, t94, t107, 0 (pkin(12) * t386 + (-pkin(5) * t148 + t134 * t144) * t145) * qJD(6) + (t144 * t305 - t356) * qJD(5) (t134 * t387 + t278) * qJD(6) + (t148 * t305 + t357) * qJD(5), t230, -pkin(5) * t343 + pkin(12) * t230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t374, -t372, 0, 0, 0, 0, 0, 0, 0, 0, -t107, t109, t132 + t346 (-t416 + (t138 + t140) * t415) * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t334, -0.2e1 * t327, 0, -0.2e1 * t334, 0, 0, t144 * t366, t148 * t366, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t20, 0, -t21, t37, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t47, 0, -t48, t79, t11, t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, 0, t108, t374, t73, t72, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t108, t106, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t370, 0, -t371, 0, -pkin(12) * t370, pkin(12) * t371, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
