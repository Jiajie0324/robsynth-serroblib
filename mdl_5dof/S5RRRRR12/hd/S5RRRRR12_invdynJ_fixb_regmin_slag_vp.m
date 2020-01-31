% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S5RRRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d1,d2,d3,d4,d5]';
% 
% Output:
% tau_reg [5x31]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:58
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S5RRRRR12_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR12_invdynJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR12_invdynJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRR12_invdynJ_fixb_regmin_slag_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR12_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5RRRRR12_invdynJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:55:16
% EndTime: 2019-12-31 22:55:44
% DurationCPUTime: 11.28s
% Computational Cost: add. (13837->654), mult. (40163->960), div. (0->0), fcn. (34067->14), ass. (0->302)
t277 = sin(qJ(5));
t276 = cos(pkin(5));
t280 = sin(qJ(2));
t441 = sin(qJ(1));
t369 = t441 * t280;
t284 = cos(qJ(2));
t285 = cos(qJ(1));
t406 = t284 * t285;
t227 = -t276 * t406 + t369;
t368 = t441 * t284;
t405 = t285 * t280;
t228 = t276 * t405 + t368;
t279 = sin(qJ(3));
t283 = cos(qJ(3));
t273 = sin(pkin(6));
t274 = sin(pkin(5));
t413 = t274 * t285;
t376 = t273 * t413;
t275 = cos(pkin(6));
t412 = t275 * t279;
t130 = t227 * t412 - t228 * t283 + t279 * t376;
t186 = -t227 * t273 + t275 * t413;
t278 = sin(qJ(4));
t282 = cos(qJ(4));
t88 = t130 * t282 + t186 * t278;
t461 = t277 * t88;
t281 = cos(qJ(5));
t460 = t281 * t88;
t407 = t283 * t284;
t410 = t279 * t280;
t315 = -t275 * t410 + t407;
t212 = t315 * t274;
t204 = qJD(1) * t212;
t393 = qJD(3) * t283;
t361 = t273 * t393;
t459 = -t204 + t361;
t440 = pkin(1) * t276;
t267 = t284 * t440;
t259 = qJD(1) * t267;
t334 = t274 * (pkin(9) * t275 + pkin(8));
t319 = t280 * t334;
t182 = -qJD(1) * t319 + t259;
t439 = pkin(1) * t280;
t266 = t276 * t439;
t293 = -t284 * t334 - t266;
t183 = t293 * qJD(1);
t438 = pkin(9) * t273;
t318 = pkin(2) * t280 - t284 * t438;
t397 = qJD(1) * t274;
t215 = t318 * t397;
t418 = t273 * t279;
t262 = pkin(9) * t418;
t411 = t275 * t283;
t451 = pkin(2) * t411 - t262;
t458 = t451 * qJD(3) - t283 * t182 - t183 * t412 - t215 * t418;
t117 = -t183 * t273 + t275 * t215;
t408 = t280 * t283;
t409 = t279 * t284;
t317 = t275 * t408 + t409;
t211 = t317 * t274;
t203 = qJD(1) * t211;
t457 = pkin(3) * t203 - pkin(10) * t204 + t117 - (pkin(3) * t279 - pkin(10) * t283) * t273 * qJD(3);
t367 = t280 * t397;
t342 = t273 * t367;
t456 = -pkin(10) * t342 + t458;
t225 = -t282 * t275 + t278 * t418;
t402 = -qJD(4) * t225 - t278 * t342 + t459 * t282;
t417 = t273 * t282;
t226 = t275 * t278 + t279 * t417;
t401 = qJD(4) * t226 + t459 * t278 + t282 * t342;
t394 = qJD(3) * t279;
t362 = t273 * t394;
t455 = t203 - t362;
t416 = t273 * t283;
t399 = pkin(2) * t412 + pkin(9) * t416;
t454 = t399 * qJD(3) - t279 * t182;
t366 = t284 * t397;
t339 = t275 * t366;
t240 = t283 * t339;
t396 = qJD(1) * t276;
t348 = qJD(2) + t396;
t320 = t348 * t273;
t341 = t279 * t367;
t154 = -t283 * t320 - t240 + t341;
t152 = qJD(4) + t154;
t316 = t275 * t409 + t408;
t302 = t316 * t274;
t156 = qJD(1) * t302 + t279 * t320;
t299 = t273 * t366 - t275 * t348 - qJD(3);
t198 = t282 * t299;
t108 = t156 * t278 + t198;
t107 = qJD(5) + t108;
t385 = qJDD(1) * t276;
t261 = qJDD(2) + t385;
t287 = qJD(2) * t317 + qJD(3) * t316;
t311 = qJD(3) * t320;
t383 = t284 * qJDD(1);
t356 = t274 * t383;
t338 = t275 * t356;
t384 = qJDD(1) * t280;
t81 = -t261 * t416 + t274 * (qJD(1) * t287 + t279 * t384) + t279 * t311 - t283 * t338;
t453 = t130 * t278 - t186 * t282;
t270 = t274 ^ 2;
t442 = 0.2e1 * t270;
t426 = t183 * t411 - (-pkin(3) * t367 - t215 * t283) * t273 + t454;
t219 = pkin(10) * t275 + t399;
t220 = (-pkin(3) * t283 - pkin(10) * t279 - pkin(2)) * t273;
t400 = t282 * t219 + t278 * t220;
t389 = qJD(4) * t282;
t391 = qJD(4) * t278;
t450 = t219 * t391 - t220 * t389 + t457 * t278 - t456 * t282;
t449 = t275 * t407 - t410;
t414 = t274 * t284;
t310 = pkin(8) * t414 + t266;
t448 = t270 * t439 + t310 * t276;
t386 = qJD(1) * qJD(2);
t358 = t280 * t386;
t337 = t274 * t358;
t161 = t261 * t275 + qJDD(3) + (t337 - t356) * t273;
t380 = qJD(2) * t440;
t345 = qJD(1) * t380;
t371 = pkin(8) * t356 + qJDD(1) * t266 + t284 * t345;
t296 = -pkin(8) * t337 + t371;
t100 = (t261 * t273 + (-t358 + t383) * t275 * t274) * pkin(9) + t296;
t379 = pkin(1) * t383;
t258 = t276 * t379;
t359 = t284 * t386;
t308 = -t359 - t384;
t106 = pkin(2) * t261 - t280 * t345 + t308 * t334 + t258;
t304 = t318 * qJD(2);
t312 = -pkin(2) * t284 - t280 * t438 - pkin(1);
t133 = (qJD(1) * t304 + qJDD(1) * t312) * t274;
t148 = t310 * qJD(1) + (t320 + t339) * pkin(9);
t298 = t276 * pkin(2) - t319;
t153 = qJD(2) * pkin(2) + qJD(1) * t298 + t259;
t208 = t312 * t274;
t199 = qJD(1) * t208;
t363 = t275 * t393;
t297 = -t283 * t100 - t106 * t412 - t133 * t418 + t148 * t394 - t153 * t363 - t199 * t361;
t17 = pkin(10) * t161 - t297;
t58 = -t106 * t273 + t275 * t133;
t357 = t274 * t384;
t80 = qJD(3) * t240 + t261 * t418 + t279 * t338 + (-t275 * qJD(2) - qJD(3)) * t341 + (t274 * t359 + t311 + t357) * t283;
t23 = pkin(3) * t81 - pkin(10) * t80 + t58;
t105 = -t153 * t273 + t275 * t199;
t50 = pkin(3) * t154 - pkin(10) * t156 + t105;
t65 = t283 * t148 + t153 * t412 + t199 * t418;
t54 = -pkin(10) * t299 + t65;
t27 = t278 * t50 + t282 * t54;
t6 = -qJD(4) * t27 - t17 * t278 + t282 * t23;
t40 = -qJD(4) * t198 - t156 * t391 + t278 * t161 + t282 * t80;
t110 = t282 * t156 - t278 * t299;
t70 = t110 * t281 + t152 * t277;
t77 = qJDD(4) + t81;
t15 = qJD(5) * t70 + t277 * t40 - t281 * t77;
t177 = t276 * t418 + t302;
t224 = t273 * t414 - t276 * t275;
t121 = t177 * t278 + t224 * t282;
t229 = -t276 * t368 - t405;
t230 = -t276 * t369 + t406;
t370 = t274 * t441;
t343 = t273 * t370;
t132 = t230 * t283 + (t229 * t275 + t343) * t279;
t188 = -t229 * t273 + t275 * t370;
t89 = -t132 * t278 + t188 * t282;
t309 = g(1) * t89 + g(2) * t453 - g(3) * t121;
t4 = -pkin(4) * t77 - t6;
t447 = t107 * (pkin(4) * t110 + t107 * pkin(11)) + t309 + t4;
t251 = -pkin(4) * t282 - pkin(11) * t278 - pkin(3);
t41 = qJD(4) * t110 - t282 * t161 + t278 * t80;
t39 = qJDD(5) + t41;
t446 = (-t65 + t152 * (pkin(4) * t278 - pkin(11) * t282)) * t107 + t251 * t39;
t64 = -t279 * t148 + (t153 * t275 + t199 * t273) * t283;
t171 = (t273 * t276 + t275 * t414) * pkin(9) + t310;
t181 = t267 + t298;
t445 = -t279 * t171 + (t181 * t275 + t208 * t273) * t283;
t114 = -t181 * t273 + t275 * t208;
t176 = -t274 * t449 - t276 * t416;
t62 = pkin(3) * t176 - pkin(10) * t177 + t114;
t373 = t283 * t171 + t181 * t412 + t208 * t418;
t67 = -pkin(10) * t224 + t373;
t324 = t278 * t62 + t282 * t67;
t260 = t284 * t380;
t184 = -qJD(2) * t319 + t260;
t185 = t293 * qJD(2);
t216 = t274 * t304;
t294 = -t171 * t394 + t181 * t363 + t283 * t184 + t185 * t412 + t208 * t361 + t216 * t418;
t395 = qJD(2) * t280;
t365 = t274 * t395;
t340 = t273 * t365;
t43 = pkin(10) * t340 + t294;
t115 = t274 * t287 + t276 * t362;
t116 = t276 * t361 + (t315 * qJD(2) + qJD(3) * t449) * t274;
t118 = -t185 * t273 + t275 * t216;
t48 = pkin(3) * t115 - pkin(10) * t116 + t118;
t443 = -qJD(4) * t324 - t278 * t43 + t282 * t48;
t5 = t282 * t17 + t278 * t23 + t50 * t389 - t54 * t391;
t3 = pkin(11) * t77 + t5;
t22 = pkin(11) * t152 + t27;
t53 = pkin(3) * t299 - t64;
t30 = t108 * pkin(4) - t110 * pkin(11) + t53;
t329 = t22 * t277 - t281 * t30;
t364 = t275 * t394;
t25 = -t279 * t100 + t106 * t411 + t133 * t416 - t148 * t393 - t153 * t364 - t199 * t362;
t18 = -pkin(3) * t161 - t25;
t8 = pkin(4) * t41 - pkin(11) * t40 + t18;
t1 = -t329 * qJD(5) + t277 * t8 + t281 * t3;
t286 = qJD(1) ^ 2;
t94 = pkin(3) * t156 + pkin(10) * t154;
t436 = t278 * t94 + t282 * t64;
t434 = t455 * pkin(4) + qJD(4) * t400 + t456 * t278 + t457 * t282;
t433 = pkin(10) * qJD(4);
t68 = t110 * t277 - t281 * t152;
t432 = t107 * t68;
t431 = t107 * t70;
t387 = qJD(5) * t281;
t388 = qJD(5) * t277;
t14 = -t110 * t388 + t152 * t387 + t277 * t77 + t281 * t40;
t430 = t14 * t277;
t428 = t277 * t39;
t427 = t281 * t39;
t424 = t108 * t152;
t423 = t110 * t152;
t422 = t154 * t282;
t421 = t228 * t279;
t420 = t270 * t286;
t419 = t273 * t278;
t415 = t274 * t280;
t191 = t226 * t277 + t281 * t416;
t404 = -qJD(5) * t191 - t455 * t277 + t402 * t281;
t375 = t277 * t416;
t403 = -qJD(5) * t375 + t226 * t387 + t402 * t277 + t455 * t281;
t271 = t280 ^ 2;
t398 = -t284 ^ 2 + t271;
t392 = qJD(4) * t277;
t390 = qJD(4) * t281;
t378 = t284 * t420;
t377 = t273 * t415;
t360 = t274 * t276 * t286;
t350 = t152 * t282;
t349 = t107 * t281;
t347 = qJD(2) + 0.2e1 * t396;
t346 = t261 + t385;
t344 = -t171 * t393 - t181 * t364 - t279 * t184 - t208 * t362;
t218 = t262 + (-pkin(2) * t283 - pkin(3)) * t275;
t123 = pkin(4) * t225 - pkin(11) * t226 + t218;
t336 = t455 * pkin(11) - qJD(5) * t123 + t450;
t126 = -pkin(11) * t416 + t400;
t335 = -t401 * pkin(4) + t402 * pkin(11) + qJD(5) * t126 - t426;
t92 = t156 * t277 - t281 * t422;
t332 = t281 * t389 - t92;
t12 = t22 * t281 + t277 * t30;
t32 = pkin(11) * t176 + t324;
t122 = t177 * t282 - t224 * t278;
t66 = pkin(3) * t224 - t445;
t37 = pkin(4) * t121 - pkin(11) * t122 + t66;
t328 = t277 * t37 + t281 * t32;
t327 = -t277 * t32 + t281 * t37;
t26 = -t278 * t54 + t282 * t50;
t325 = -t278 * t67 + t282 * t62;
t85 = t122 * t281 + t176 * t277;
t84 = t122 * t277 - t176 * t281;
t321 = -t219 * t278 + t220 * t282;
t314 = t278 * t48 + t282 * t43 + t62 * t389 - t67 * t391;
t313 = -pkin(10) * t77 + t152 * t53;
t127 = t227 * t411 + t283 * t376 + t421;
t131 = -t229 * t411 + t230 * t279 - t283 * t343;
t306 = g(1) * t131 + g(2) * t127 + g(3) * t176;
t305 = -g(1) * t132 + g(2) * t130 - g(3) * t177;
t301 = -t18 + t306;
t21 = -pkin(4) * t152 - t26;
t295 = -pkin(11) * t39 + (t21 + t26) * t107;
t292 = qJD(3) * t299;
t2 = -qJD(5) * t12 - t277 * t3 + t281 * t8;
t290 = pkin(10) * qJD(5) * t107 - t306;
t289 = t299 * t377;
t288 = (pkin(11) * t156 - qJD(5) * t251 + t436) * t107 + t305;
t44 = -t185 * t411 + (-pkin(3) * t365 - t216 * t283) * t273 - t344;
t192 = t226 * t281 - t375;
t157 = t212 * t282 + t278 * t377;
t147 = t229 * t283 - t230 * t412;
t146 = t229 * t279 + t230 * t411;
t145 = -t227 * t283 - t228 * t412;
t144 = -t227 * t279 + t228 * t411;
t129 = -t421 + (-t227 * t275 - t376) * t283;
t125 = pkin(4) * t416 - t321;
t112 = t147 * t282 + t230 * t419;
t111 = t145 * t282 + t228 * t419;
t91 = -t281 * t156 - t277 * t422;
t90 = t132 * t282 + t188 * t278;
t57 = -qJD(4) * t121 + t116 * t282 + t278 * t340;
t56 = qJD(4) * t122 + t116 * t278 - t282 * t340;
t52 = t131 * t277 + t281 * t90;
t51 = t131 * t281 - t277 * t90;
t35 = -pkin(4) * t156 + t278 * t64 - t282 * t94;
t31 = -pkin(4) * t176 - t325;
t29 = -qJD(5) * t84 + t115 * t277 + t281 * t57;
t28 = qJD(5) * t85 - t115 * t281 + t277 * t57;
t13 = pkin(4) * t56 - pkin(11) * t57 + t44;
t10 = -pkin(4) * t115 - t443;
t9 = pkin(11) * t115 + t314;
t7 = [qJDD(1), g(1) * t441 - g(2) * t285, g(1) * t285 + g(2) * t441, (qJDD(1) * t271 + 0.2e1 * t284 * t358) * t270, (t280 * t383 - t398 * t386) * t442, (t347 * t284 * qJD(2) + t346 * t280) * t274, (t346 * t284 - t347 * t395) * t274, t261 * t276, t379 * t442 + (-pkin(8) * t415 + t267) * t261 + (-pkin(8) * t357 + t258) * t276 + g(1) * t228 - g(2) * t230 - t310 * qJD(2) ^ 2 - 0.2e1 * t448 * t386, -(-pkin(8) * t365 + t260) * t348 - t310 * t261 - t296 * t276 - g(1) * t227 - g(2) * t229 + t308 * pkin(1) * t442, t116 * t156 + t177 * t80, -t115 * t156 - t116 * t154 - t176 * t80 - t177 * t81, -t116 * t299 + t156 * t340 + t177 * t161 - t80 * t224, t115 * t299 - t154 * t340 - t176 * t161 + t81 * t224, -qJD(2) * t289 - t161 * t224, -((t185 * t275 + t216 * t273) * t283 + t344) * t299 + t445 * t161 - t25 * t224 + t64 * t340 + t118 * t154 + t114 * t81 + t58 * t176 + t105 * t115 - g(1) * t130 - g(2) * t132, g(1) * t129 + g(2) * t131 + t105 * t116 + t114 * t80 + t118 * t156 - t373 * t161 + t58 * t177 - t224 * t297 + t294 * t299 - t65 * t340, t110 * t57 + t122 * t40, -t108 * t57 - t110 * t56 - t121 * t40 - t122 * t41, t110 * t115 + t122 * t77 + t152 * t57 + t176 * t40, -t108 * t115 - t121 * t77 - t152 * t56 - t176 * t41, t115 * t152 + t176 * t77, -g(1) * t88 - g(2) * t90 + t44 * t108 + t26 * t115 + t18 * t121 + t152 * t443 + t6 * t176 + t325 * t77 + t66 * t41 + t53 * t56, g(1) * t453 - g(2) * t89 + t44 * t110 - t27 * t115 + t18 * t122 - t314 * t152 - t5 * t176 - t324 * t77 + t66 * t40 + t53 * t57, t14 * t85 + t29 * t70, -t14 * t84 - t15 * t85 - t28 * t70 - t29 * t68, t107 * t29 + t121 * t14 + t39 * t85 + t56 * t70, -t107 * t28 - t121 * t15 - t39 * t84 - t56 * t68, t107 * t56 + t121 * t39, (-qJD(5) * t328 + t13 * t281 - t277 * t9) * t107 + t327 * t39 + t2 * t121 - t329 * t56 + t10 * t68 + t31 * t15 + t4 * t84 + t21 * t28 - g(1) * (t129 * t277 + t460) - g(2) * t52, -(qJD(5) * t327 + t13 * t277 + t281 * t9) * t107 - t328 * t39 - t1 * t121 - t12 * t56 + t10 * t70 + t31 * t14 + t4 * t85 + t21 * t29 - g(1) * (t129 * t281 - t461) - g(2) * t51; 0, 0, 0, -t280 * t378, t398 * t420, -t284 * t360 + t357, t280 * t360 + t356, t261, -g(1) * t229 + g(2) * t227 + t258 + (-pkin(8) * t384 - g(3) * t284) * t274 + t448 * t286, pkin(1) * t378 + (-pkin(8) * t367 + t259) * t396 + g(1) * t230 + g(2) * t228 + g(3) * t415 + t259 * qJD(2) - t371, t459 * t156 + t80 * t418, t154 * t204 + t156 * t203 + (-t279 * t81 + t283 * t80 + (-t154 * t283 - t156 * t279) * qJD(3)) * t273, t80 * t275 + t204 * t299 + (-t156 * t367 + t279 * t161 - t283 * t292) * t273, -t81 * t275 - t203 * t299 + (t154 * t367 + t283 * t161 + t279 * t292) * t273, qJD(1) * t289 + t161 * t275, t451 * t161 + t25 * t275 - t273 * pkin(2) * t81 - t58 * t416 - t64 * t342 - t117 * t154 - g(1) * t147 - g(2) * t145 - g(3) * t212 - t455 * t105 + ((t183 * t275 + t215 * t273) * t283 + t454) * t299, -t399 * t161 + t297 * t275 - t117 * t156 - t105 * t204 + g(1) * t146 + g(2) * t144 + g(3) * t211 + (-pkin(2) * t80 + t105 * t393 + t58 * t279 + t65 * t367) * t273 + t458 * t299, t402 * t110 + t226 * t40, -t402 * t108 - t401 * t110 - t225 * t40 - t226 * t41, -t110 * t455 + t402 * t152 + t226 * t77 - t40 * t416, t108 * t455 - t401 * t152 - t225 * t77 + t41 * t416, -t152 * t455 - t77 * t416, t321 * t77 - t6 * t416 + t218 * t41 + t18 * t225 - g(1) * t112 - g(2) * t111 - g(3) * t157 + t401 * t53 - t455 * t26 + ((-qJD(4) * t219 - t457) * t282 + (-qJD(4) * t220 - t456) * t278) * t152 + t426 * t108, -t400 * t77 + t5 * t416 + t218 * t40 + t18 * t226 - g(1) * (-t147 * t278 + t230 * t417) - g(2) * (-t145 * t278 + t228 * t417) - g(3) * (-t212 * t278 + t282 * t377) + t402 * t53 + t455 * t27 + t450 * t152 + t426 * t110, t14 * t192 + t404 * t70, -t14 * t191 - t15 * t192 - t403 * t70 - t404 * t68, t107 * t404 + t14 * t225 + t192 * t39 + t401 * t70, -t107 * t403 - t15 * t225 - t191 * t39 - t401 * t68, t107 * t401 + t225 * t39, (t123 * t281 - t126 * t277) * t39 + t2 * t225 + t125 * t15 + t4 * t191 - g(1) * (t112 * t281 + t146 * t277) - g(2) * (t111 * t281 + t144 * t277) - g(3) * (t157 * t281 + t211 * t277) + t434 * t68 + t403 * t21 - t401 * t329 + (t277 * t336 - t281 * t335) * t107, -(t123 * t277 + t126 * t281) * t39 - t1 * t225 + t125 * t14 + t4 * t192 - g(1) * (-t112 * t277 + t146 * t281) - g(2) * (-t111 * t277 + t144 * t281) - g(3) * (-t157 * t277 + t211 * t281) + t434 * t70 + t404 * t21 - t401 * t12 + (t277 * t335 + t281 * t336) * t107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156 * t154, -t154 ^ 2 + t156 ^ 2, -t154 * t299 + t80, -t156 * t299 - t81, t161, -t105 * t156 - t299 * t65 + t25 + t306, t105 * t154 - t299 * t64 + t297 - t305, t110 * t350 + t278 * t40, (t40 - t424) * t282 + (-t41 - t423) * t278, -t110 * t156 + t152 * t350 + t278 * t77, -t152 ^ 2 * t278 + t108 * t156 + t282 * t77, -t152 * t156, -pkin(3) * t41 - t65 * t108 - t26 * t156 + (t64 * t152 + t313) * t278 + ((-t94 - t433) * t152 + t301) * t282, -pkin(3) * t40 + t436 * t152 + t27 * t156 - t65 * t110 + t313 * t282 + (t152 * t433 - t301) * t278, t14 * t278 * t281 + (-t278 * t388 + t332) * t70, t68 * t92 + t70 * t91 + (-t277 * t70 - t281 * t68) * t389 + (-t430 - t15 * t281 + (t277 * t68 - t281 * t70) * qJD(5)) * t278, -t14 * t282 + t332 * t107 + (-t107 * t388 + t152 * t70 + t427) * t278, t15 * t282 + (-t277 * t389 + t91) * t107 + (-t107 * t387 - t152 * t68 - t428) * t278, t107 * t152 * t278 - t282 * t39, -t21 * t91 - t35 * t68 + t446 * t281 + t288 * t277 + (t21 * t392 - t2 + (qJD(4) * t68 - t428) * pkin(10) - t290 * t281) * t282 + (t21 * t387 + t4 * t277 - t152 * t329 + (t107 * t392 + t15) * pkin(10)) * t278, -t21 * t92 - t35 * t70 - t446 * t277 + t288 * t281 + (t21 * t390 + t1 + (qJD(4) * t70 - t427) * pkin(10) + t290 * t277) * t282 + (-t21 * t388 + t4 * t281 - t152 * t12 + (t107 * t390 + t14) * pkin(10)) * t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t110 * t108, -t108 ^ 2 + t110 ^ 2, t40 + t424, -t41 + t423, t77, -t110 * t53 + t152 * t27 - t309 + t6, g(1) * t90 - g(2) * t88 + g(3) * t122 + t108 * t53 + t152 * t26 - t5, t349 * t70 + t430, (t14 - t432) * t281 + (-t15 - t431) * t277, t107 * t349 - t110 * t70 + t428, -t107 ^ 2 * t277 + t110 * t68 + t427, -t107 * t110, -pkin(4) * t15 + t110 * t329 - t27 * t68 + t295 * t277 - t281 * t447, -pkin(4) * t14 + t12 * t110 - t27 * t70 + t277 * t447 + t295 * t281; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70 * t68, -t68 ^ 2 + t70 ^ 2, t14 + t432, -t15 + t431, t39, t12 * t107 - t21 * t70 - g(1) * t51 - g(2) * (t127 * t281 + t461) + g(3) * t84 + t2, -t329 * t107 + t21 * t68 + g(1) * t52 - g(2) * (-t127 * t277 + t460) + g(3) * t85 - t1;];
tau_reg = t7;