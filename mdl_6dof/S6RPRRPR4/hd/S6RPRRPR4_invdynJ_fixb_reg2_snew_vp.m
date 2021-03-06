% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RPRRPR4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 22:31
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RPRRPR4_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR4_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR4_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPR4_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPR4_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR4_invdynJ_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 22:29:05
% EndTime: 2019-05-05 22:29:30
% DurationCPUTime: 13.34s
% Computational Cost: add. (109569->643), mult. (267965->955), div. (0->0), fcn. (215856->12), ass. (0->413)
t373 = sin(pkin(11));
t374 = sin(pkin(10));
t376 = cos(pkin(10));
t379 = sin(qJ(3));
t383 = cos(qJ(3));
t358 = (-t374 * t379 + t376 * t383) * qJD(1);
t404 = t374 * t383 + t376 * t379;
t359 = t404 * qJD(1);
t378 = sin(qJ(4));
t382 = cos(qJ(4));
t334 = t358 * t378 + t359 * t382;
t431 = t376 * qJDD(1);
t432 = t374 * qJDD(1);
t316 = -t379 * t432 + t383 * t431;
t435 = t359 * qJD(3);
t343 = t316 - t435;
t357 = t404 * qJDD(1);
t436 = qJD(3) * t358;
t345 = t357 + t436;
t412 = -t382 * t343 + t345 * t378;
t280 = qJD(4) * t334 + t412;
t372 = qJD(3) + qJD(4);
t375 = cos(pkin(11));
t319 = t334 * t373 - t375 * t372;
t321 = t334 * t375 + t372 * t373;
t288 = t321 * t319;
t492 = t280 - t288;
t502 = t373 * t492;
t501 = t375 * t492;
t377 = sin(qJ(6));
t381 = cos(qJ(6));
t284 = t381 * t319 + t321 * t377;
t286 = -t319 * t377 + t321 * t381;
t239 = t286 * t284;
t279 = qJDD(6) + t280;
t494 = -t239 + t279;
t500 = t377 * t494;
t332 = -t382 * t358 + t359 * t378;
t306 = t334 * t332;
t430 = qJDD(3) + qJDD(4);
t490 = -t306 + t430;
t499 = t378 * t490;
t347 = t358 * t359;
t488 = qJDD(3) + t347;
t498 = t379 * t488;
t497 = t381 * t494;
t496 = t382 * t490;
t495 = t383 * t488;
t385 = qJD(1) ^ 2;
t380 = sin(qJ(1));
t479 = cos(qJ(1));
t418 = g(1) * t380 - t479 * g(2);
t407 = -qJDD(2) + t418;
t478 = pkin(2) * t376;
t420 = pkin(1) + t478;
t370 = t374 ^ 2;
t371 = t376 ^ 2;
t437 = t370 + t371;
t338 = t420 * qJDD(1) + (pkin(7) * t437 + qJ(2)) * t385 + t407;
t355 = t358 ^ 2;
t406 = qJD(3) * pkin(3) - pkin(8) * t359;
t276 = pkin(3) * t343 + pkin(8) * t355 - t359 * t406 + t338;
t303 = pkin(4) * t332 - qJ(5) * t334;
t403 = g(1) * t479 + t380 * g(2);
t399 = -0.2e1 * qJD(2) * qJD(1) + t403;
t398 = -t385 * pkin(1) - t399;
t441 = t371 * t385;
t429 = pkin(2) * t441;
t474 = t374 * g(3);
t489 = (pkin(7) + qJ(2)) * qJDD(1);
t391 = -t429 - t474 + (t398 + t489) * t376;
t473 = t376 * g(3);
t392 = -t473 + (t385 * t420 + t399 - t489) * t374;
t402 = (-t345 + t436) * pkin(8);
t397 = pkin(3) * t488 + t402;
t388 = -t379 * t391 + t383 * t392 + t397;
t248 = -t355 * pkin(3) + t343 * pkin(8) - qJD(3) * t406 + t379 * t392 + t383 * t391;
t438 = t382 * t248;
t480 = t372 ^ 2;
t169 = -pkin(4) * t480 + qJ(5) * t430 - t332 * t303 + t378 * t388 + t438;
t405 = t343 * t378 + t345 * t382;
t281 = -qJD(4) * t332 + t405;
t326 = t372 * t332;
t257 = t281 - t326;
t177 = -t257 * qJ(5) + (t334 * t372 + t280) * pkin(4) - t276;
t117 = 0.2e1 * qJD(5) * t321 + t169 * t373 - t375 * t177;
t118 = -0.2e1 * qJD(5) * t319 + t375 * t169 + t373 * t177;
t65 = t373 * t117 + t375 * t118;
t275 = t375 * t281 + t373 * t430;
t413 = t281 * t373 - t375 * t430;
t185 = -t284 * qJD(6) + t381 * t275 - t377 * t413;
t328 = qJD(6) + t332;
t263 = t328 * t284;
t493 = -t263 + t185;
t298 = t332 * t319;
t234 = -t298 - t275;
t491 = -t298 + t275;
t465 = qJDD(1) * pkin(1);
t466 = qJ(2) * t385;
t354 = t407 + t465 + t466;
t487 = qJ(2) * t441 + t370 * t466 - t354 - t465;
t414 = t275 * t377 + t381 * t413;
t159 = (qJD(6) - t328) * t286 + t414;
t396 = qJDD(1) * qJ(2) + t398;
t395 = qJDD(1) * pkin(7) + t396;
t394 = t385 * t478 - t395;
t471 = t383 * g(3);
t472 = t379 * g(3);
t483 = t374 * (t383 * t394 + t472) - t376 * (t379 * t395 + t471);
t282 = t284 ^ 2;
t283 = t286 ^ 2;
t482 = t319 ^ 2;
t318 = t321 ^ 2;
t327 = t328 ^ 2;
t481 = t332 ^ 2;
t331 = t334 ^ 2;
t356 = t359 ^ 2;
t476 = pkin(4) * t378;
t81 = pkin(5) * t492 + pkin(9) * t234 - t117;
t292 = pkin(5) * t332 - pkin(9) * t321;
t88 = -pkin(5) * t482 - pkin(9) * t413 - t332 * t292 + t118;
t49 = t377 * t88 - t381 * t81;
t50 = t377 * t81 + t381 * t88;
t27 = t377 * t50 - t381 * t49;
t469 = t27 * t373;
t468 = t27 * t375;
t190 = t248 * t378 - t382 * t388;
t168 = -t430 * pkin(4) - t480 * qJ(5) + t303 * t334 + qJDD(5) + t190;
t467 = -pkin(4) * t168 + qJ(5) * t65;
t127 = pkin(5) * t413 - pkin(9) * t482 + t292 * t321 + t168;
t464 = t127 * t377;
t463 = t127 * t381;
t389 = t378 * t483 + t438;
t410 = t379 * t429;
t191 = t378 * (t397 + t410) + t389;
t130 = -t190 * t382 + t191 * t378;
t462 = t130 * t379;
t461 = t130 * t383;
t198 = t239 + t279;
t460 = t198 * t377;
t459 = t198 * t381;
t236 = t280 + t288;
t458 = t236 * t373;
t457 = t236 * t375;
t290 = -t410 - t483;
t291 = -t383 * t429 + (t383 * t395 - t472) * t376 + (t379 * t394 - t471) * t374;
t240 = -t290 * t383 + t291 * t379;
t456 = t240 * t374;
t455 = t276 * t378;
t454 = t276 * t382;
t453 = t280 * t378;
t301 = t306 + t430;
t452 = t301 * t378;
t451 = t301 * t382;
t450 = t321 * t332;
t449 = t328 * t377;
t448 = t328 * t381;
t447 = t332 * t373;
t446 = t332 * t375;
t445 = t338 * t379;
t444 = t338 * t383;
t340 = qJDD(3) - t347;
t443 = t340 * t379;
t442 = t340 * t383;
t440 = t372 * t378;
t439 = t372 * t382;
t164 = t373 * t168;
t165 = t375 * t168;
t434 = qJD(4) + t372;
t426 = t378 * t239;
t425 = t382 * t239;
t424 = t378 * t288;
t423 = t382 * t288;
t273 = -t318 - t481;
t194 = -t273 * t373 - t457;
t422 = -pkin(4) * t491 + qJ(5) * t194 + t164;
t265 = -t481 - t482;
t188 = t265 * t375 - t502;
t229 = t413 + t450;
t421 = -pkin(4) * t229 + qJ(5) * t188 - t165;
t419 = -pkin(4) * t382 - pkin(3);
t28 = t377 * t49 + t381 * t50;
t209 = -t282 - t283;
t162 = t263 + t185;
t114 = -t159 * t381 + t162 * t377;
t21 = -pkin(5) * t209 + pkin(9) * t114 + t28;
t112 = -t159 * t377 - t162 * t381;
t23 = -pkin(9) * t112 - t27;
t62 = -t112 * t373 + t114 * t375;
t417 = -pkin(4) * t209 + qJ(5) * t62 + t375 * t21 + t373 * t23;
t158 = (qJD(6) + t328) * t286 + t414;
t222 = -t327 - t282;
t139 = t222 * t381 - t500;
t67 = -pkin(5) * t158 + pkin(9) * t139 - t463;
t138 = t222 * t377 + t497;
t83 = -pkin(9) * t138 + t464;
t97 = -t138 * t373 + t139 * t375;
t416 = -pkin(4) * t158 + qJ(5) * t97 + t373 * t83 + t375 * t67;
t131 = t190 * t378 + t382 * t191;
t241 = t290 * t379 + t383 * t291;
t411 = t374 * (t374 * t396 + t473) + t376 * (t376 * t396 - t474);
t242 = -t283 - t327;
t150 = t242 * t381 - t460;
t151 = -t242 * t377 - t459;
t105 = -t150 * t373 + t151 * t375;
t69 = -pkin(5) * t493 + pkin(9) * t151 + t464;
t87 = -pkin(9) * t150 + t463;
t409 = -pkin(4) * t493 + qJ(5) * t105 + t373 * t87 + t375 * t69;
t230 = t413 - t450;
t182 = -t230 * t375 - t234 * t373;
t260 = -t318 - t482;
t408 = -pkin(4) * t260 + qJ(5) * t182 + t65;
t64 = -t117 * t375 + t118 * t373;
t16 = t28 * t375 - t469;
t26 = -pkin(5) * t127 + pkin(9) * t28;
t401 = -pkin(4) * t127 - pkin(9) * t469 + qJ(5) * t16 + t375 * t26;
t400 = (-qJD(4) + t372) * t334 - t412;
t384 = qJD(3) ^ 2;
t368 = t371 * qJDD(1);
t367 = t370 * qJDD(1);
t360 = t437 * t385;
t351 = -t356 - t384;
t350 = -t356 + t384;
t349 = t355 - t384;
t344 = t357 + 0.2e1 * t436;
t342 = -t316 + 0.2e1 * t435;
t337 = -t384 - t355;
t325 = -t331 + t480;
t324 = t481 - t480;
t323 = -t331 - t480;
t322 = -t355 - t356;
t312 = -t351 * t379 - t442;
t311 = t351 * t383 - t443;
t310 = t316 * t383 + t357 * t379;
t309 = t316 * t379 - t357 * t383;
t308 = t337 * t383 - t498;
t307 = t337 * t379 + t495;
t304 = t331 - t481;
t299 = -t481 - t480;
t296 = -t318 + t481;
t295 = -t481 + t482;
t294 = (-t332 * t382 + t334 * t378) * t372;
t293 = (-t332 * t378 - t334 * t382) * t372;
t287 = -t318 + t482;
t278 = -t481 - t331;
t277 = t382 * t280;
t271 = t324 * t382 - t452;
t270 = -t325 * t378 + t496;
t269 = t324 * t378 + t451;
t268 = t325 * t382 + t499;
t267 = -t323 * t378 - t451;
t266 = t323 * t382 - t452;
t262 = -t283 + t327;
t261 = t282 - t327;
t258 = t281 + t326;
t256 = -t332 * t434 + t405;
t253 = t334 * t434 + t412;
t252 = t281 * t382 - t334 * t440;
t251 = t281 * t378 + t334 * t439;
t250 = t332 * t439 + t453;
t249 = t332 * t440 - t277;
t247 = t299 * t382 - t499;
t246 = t299 * t378 + t496;
t245 = (-t319 * t375 + t321 * t373) * t332;
t244 = (-t319 * t373 - t321 * t375) * t332;
t238 = t283 - t282;
t226 = t275 * t375 - t321 * t447;
t225 = t275 * t373 + t321 * t446;
t224 = t319 * t446 + t373 * t413;
t223 = t319 * t447 - t375 * t413;
t221 = -pkin(8) * t266 - t454;
t220 = -t266 * t379 + t267 * t383;
t219 = t266 * t383 + t267 * t379;
t218 = (-t284 * t381 + t286 * t377) * t328;
t217 = (-t284 * t377 - t286 * t381) * t328;
t216 = -pkin(8) * t246 - t455;
t215 = t245 * t382 + t453;
t214 = t245 * t378 - t277;
t213 = t295 * t375 - t458;
t212 = -t296 * t373 + t501;
t211 = t295 * t373 + t457;
t210 = t296 * t375 + t502;
t208 = t258 * t378 + t382 * t400;
t207 = -t253 * t382 - t257 * t378;
t206 = -t258 * t382 + t378 * t400;
t205 = -t253 * t378 + t257 * t382;
t203 = t226 * t382 + t424;
t202 = t224 * t382 - t424;
t201 = t226 * t378 - t423;
t200 = t224 * t378 + t423;
t196 = -t246 * t379 + t247 * t383;
t195 = t246 * t383 + t247 * t379;
t193 = t273 * t375 - t458;
t187 = t265 * t373 + t501;
t184 = -qJD(6) * t286 - t414;
t183 = -pkin(3) * t256 + pkin(8) * t267 - t455;
t181 = -t229 * t375 - t373 * t491;
t180 = -t230 * t373 + t234 * t375;
t179 = -t229 * t373 + t375 * t491;
t174 = -pkin(3) * t253 + pkin(8) * t247 + t454;
t173 = t261 * t381 - t460;
t172 = -t262 * t377 + t497;
t171 = t261 * t377 + t459;
t170 = t262 * t381 + t500;
t155 = t185 * t381 - t286 * t449;
t154 = t185 * t377 + t286 * t448;
t153 = -t184 * t377 + t284 * t448;
t152 = t184 * t381 + t284 * t449;
t149 = t213 * t382 - t230 * t378;
t148 = t212 * t382 - t234 * t378;
t147 = t213 * t378 + t230 * t382;
t146 = t212 * t378 + t234 * t382;
t145 = t181 * t382 - t287 * t378;
t144 = t181 * t378 + t287 * t382;
t143 = t194 * t382 + t378 * t491;
t142 = t194 * t378 - t382 * t491;
t141 = t188 * t382 + t229 * t378;
t140 = t188 * t378 - t229 * t382;
t137 = t182 * t382 + t260 * t378;
t136 = t182 * t378 - t260 * t382;
t135 = -t217 * t373 + t218 * t375;
t134 = t217 * t375 + t218 * t373;
t133 = -t206 * t379 + t208 * t383;
t132 = t206 * t383 + t208 * t379;
t129 = t135 * t382 + t279 * t378;
t128 = t135 * t378 - t279 * t382;
t125 = -qJ(5) * t193 + t165;
t124 = pkin(3) * t276 + pkin(8) * t131;
t123 = -qJ(5) * t187 + t164;
t122 = -t171 * t373 + t173 * t375;
t121 = -t170 * t373 + t172 * t375;
t120 = t171 * t375 + t173 * t373;
t119 = t170 * t375 + t172 * t373;
t113 = -t158 * t381 - t377 * t493;
t111 = -t158 * t377 + t381 * t493;
t110 = -pkin(8) * t206 - t130;
t109 = -t154 * t373 + t155 * t375;
t108 = -t152 * t373 + t153 * t375;
t107 = t154 * t375 + t155 * t373;
t106 = t152 * t375 + t153 * t373;
t104 = t150 * t375 + t151 * t373;
t102 = -t142 * t379 + t143 * t383;
t101 = t142 * t383 + t143 * t379;
t100 = -pkin(3) * t278 + pkin(8) * t208 + t131;
t99 = -t140 * t379 + t141 * t383;
t98 = t140 * t383 + t141 * t379;
t96 = t138 * t375 + t139 * t373;
t94 = -t136 * t379 + t137 * t383;
t93 = t136 * t383 + t137 * t379;
t92 = t109 * t382 + t426;
t91 = t108 * t382 - t426;
t90 = t109 * t378 - t425;
t89 = t108 * t378 + t425;
t86 = -pkin(4) * t193 + t118;
t84 = -pkin(4) * t187 + t117;
t79 = t131 * t383 - t462;
t78 = t131 * t379 + t461;
t77 = t122 * t382 - t159 * t378;
t76 = t121 * t382 + t162 * t378;
t75 = t122 * t378 + t159 * t382;
t74 = t121 * t378 - t162 * t382;
t73 = t105 * t382 + t378 * t493;
t72 = t105 * t378 - t382 * t493;
t71 = t158 * t378 + t382 * t97;
t70 = -t158 * t382 + t378 * t97;
t61 = -t111 * t373 + t113 * t375;
t60 = t112 * t375 + t114 * t373;
t59 = t111 * t375 + t113 * t373;
t57 = t238 * t378 + t382 * t61;
t56 = -t238 * t382 + t378 * t61;
t55 = t209 * t378 + t382 * t62;
t54 = -t209 * t382 + t378 * t62;
t53 = -qJ(5) * t180 - t64;
t52 = t168 * t378 + t382 * t65;
t51 = -t168 * t382 + t378 * t65;
t47 = -pkin(8) * t142 + t125 * t382 - t378 * t86;
t46 = -pkin(8) * t140 + t123 * t382 - t378 * t84;
t45 = -pkin(4) * t60 - pkin(5) * t112;
t44 = -pkin(3) * t193 + pkin(8) * t143 + t125 * t378 + t382 * t86;
t43 = -t379 * t72 + t383 * t73;
t42 = t379 * t73 + t383 * t72;
t41 = -pkin(3) * t187 + pkin(8) * t141 + t123 * t378 + t382 * t84;
t40 = -t379 * t70 + t383 * t71;
t39 = t379 * t71 + t383 * t70;
t38 = -pkin(8) * t136 + t180 * t476 + t382 * t53;
t37 = pkin(8) * t137 + t180 * t419 + t378 * t53;
t36 = -qJ(5) * t104 - t373 * t69 + t375 * t87;
t35 = -pkin(4) * t104 - pkin(5) * t150 + t50;
t34 = -pkin(4) * t96 - pkin(5) * t138 + t49;
t33 = -qJ(5) * t96 - t373 * t67 + t375 * t83;
t32 = -t379 * t54 + t383 * t55;
t31 = t379 * t55 + t383 * t54;
t30 = -t379 * t51 + t383 * t52;
t29 = t379 * t52 + t383 * t51;
t24 = -pkin(8) * t51 + (-qJ(5) * t382 + t476) * t64;
t19 = pkin(8) * t52 + (-qJ(5) * t378 + t419) * t64;
t18 = -pkin(8) * t72 - t35 * t378 + t36 * t382;
t17 = -pkin(8) * t70 + t33 * t382 - t34 * t378;
t15 = t28 * t373 + t468;
t13 = -pkin(3) * t104 + pkin(8) * t73 + t35 * t382 + t36 * t378;
t12 = t127 * t378 + t16 * t382;
t11 = -t127 * t382 + t16 * t378;
t10 = -pkin(3) * t96 + pkin(8) * t71 + t33 * t378 + t34 * t382;
t9 = -qJ(5) * t60 - t21 * t373 + t23 * t375;
t8 = -pkin(4) * t15 - pkin(5) * t27;
t7 = -pkin(8) * t54 - t378 * t45 + t382 * t9;
t6 = -pkin(9) * t468 - qJ(5) * t15 - t26 * t373;
t5 = -pkin(3) * t60 + pkin(8) * t55 + t378 * t9 + t382 * t45;
t4 = -t11 * t379 + t12 * t383;
t3 = t11 * t383 + t12 * t379;
t2 = -pkin(8) * t11 - t378 * t8 + t382 * t6;
t1 = -pkin(3) * t15 + pkin(8) * t12 + t378 * t6 + t382 * t8;
t14 = [0, 0, 0, 0, 0, qJDD(1), t418, t403, 0, 0, t367, 0.2e1 * t374 * t431, 0, t368, 0, 0, -t487 * t376, t487 * t374, pkin(1) * t360 + qJ(2) * (t368 + t367) + t411, pkin(1) * t354 + qJ(2) * t411, t374 * (t345 * t383 - t379 * t435) + t376 * (t345 * t379 + t383 * t435), t374 * (-t342 * t383 - t344 * t379) + t376 * (-t342 * t379 + t344 * t383), t374 * (-t350 * t379 + t495) + t376 * (t350 * t383 + t498), t374 * (-t343 * t379 - t383 * t436) + t376 * (t343 * t383 - t379 * t436), t374 * (t349 * t383 - t443) + t376 * (t349 * t379 + t442), (t374 * (t358 * t383 + t359 * t379) + t376 * (t358 * t379 - t359 * t383)) * qJD(3), t374 * (-pkin(7) * t307 - t445) + t376 * (-pkin(2) * t342 + pkin(7) * t308 + t444) - pkin(1) * t342 + qJ(2) * (-t307 * t374 + t308 * t376), t374 * (-pkin(7) * t311 - t444) + t376 * (-pkin(2) * t344 + pkin(7) * t312 - t445) - pkin(1) * t344 + qJ(2) * (-t311 * t374 + t312 * t376), t374 * (-pkin(7) * t309 - t240) + t376 * (-pkin(2) * t322 + pkin(7) * t310 + t241) - pkin(1) * t322 + qJ(2) * (-t309 * t374 + t310 * t376), -pkin(7) * t456 + t376 * (pkin(2) * t338 + pkin(7) * t241) + pkin(1) * t338 + qJ(2) * (t241 * t376 - t456), t374 * (-t251 * t379 + t252 * t383) + t376 * (t251 * t383 + t252 * t379), t374 * (-t205 * t379 + t207 * t383) + t376 * (t205 * t383 + t207 * t379), t374 * (-t268 * t379 + t270 * t383) + t376 * (t268 * t383 + t270 * t379), t374 * (-t249 * t379 + t250 * t383) + t376 * (t249 * t383 + t250 * t379), t374 * (-t269 * t379 + t271 * t383) + t376 * (t269 * t383 + t271 * t379), t374 * (-t293 * t379 + t294 * t383) + t376 * (t293 * t383 + t294 * t379), t374 * (-pkin(7) * t195 - t174 * t379 + t216 * t383) + t376 * (-pkin(2) * t253 + pkin(7) * t196 + t174 * t383 + t216 * t379) - pkin(1) * t253 + qJ(2) * (-t195 * t374 + t196 * t376), t374 * (-pkin(7) * t219 - t183 * t379 + t221 * t383) + t376 * (-pkin(2) * t256 + pkin(7) * t220 + t183 * t383 + t221 * t379) - pkin(1) * t256 + qJ(2) * (-t219 * t374 + t220 * t376), t374 * (-pkin(7) * t132 - t100 * t379 + t110 * t383) + t376 * (-pkin(2) * t278 + pkin(7) * t133 + t100 * t383 + t110 * t379) - pkin(1) * t278 + qJ(2) * (-t132 * t374 + t133 * t376), t374 * (-pkin(7) * t78 - pkin(8) * t461 - t124 * t379) + t376 * (pkin(2) * t276 + pkin(7) * t79 - pkin(8) * t462 + t124 * t383) + pkin(1) * t276 + qJ(2) * (-t374 * t78 + t376 * t79), t374 * (-t201 * t379 + t203 * t383) + t376 * (t201 * t383 + t203 * t379), t374 * (-t144 * t379 + t145 * t383) + t376 * (t144 * t383 + t145 * t379), t374 * (-t146 * t379 + t148 * t383) + t376 * (t146 * t383 + t148 * t379), t374 * (-t200 * t379 + t202 * t383) + t376 * (t200 * t383 + t202 * t379), t374 * (-t147 * t379 + t149 * t383) + t376 * (t147 * t383 + t149 * t379), t374 * (-t214 * t379 + t215 * t383) + t376 * (t214 * t383 + t215 * t379), t374 * (-pkin(7) * t98 - t379 * t41 + t383 * t46) + t376 * (-pkin(2) * t187 + pkin(7) * t99 + t379 * t46 + t383 * t41) - pkin(1) * t187 + qJ(2) * (-t374 * t98 + t376 * t99), t374 * (-pkin(7) * t101 - t379 * t44 + t383 * t47) + t376 * (-pkin(2) * t193 + pkin(7) * t102 + t379 * t47 + t383 * t44) - pkin(1) * t193 + qJ(2) * (-t101 * t374 + t102 * t376), t374 * (-pkin(7) * t93 - t37 * t379 + t38 * t383) + t376 * (-pkin(2) * t180 + pkin(7) * t94 + t37 * t383 + t379 * t38) - pkin(1) * t180 + qJ(2) * (-t374 * t93 + t376 * t94), t374 * (-pkin(7) * t29 - t19 * t379 + t24 * t383) + t376 * (-pkin(2) * t64 + pkin(7) * t30 + t19 * t383 + t24 * t379) - pkin(1) * t64 + qJ(2) * (-t29 * t374 + t30 * t376), t374 * (-t379 * t90 + t383 * t92) + t376 * (t379 * t92 + t383 * t90), t374 * (-t379 * t56 + t383 * t57) + t376 * (t379 * t57 + t383 * t56), t374 * (-t379 * t74 + t383 * t76) + t376 * (t379 * t76 + t383 * t74), t374 * (-t379 * t89 + t383 * t91) + t376 * (t379 * t91 + t383 * t89), t374 * (-t379 * t75 + t383 * t77) + t376 * (t379 * t77 + t383 * t75), t374 * (-t128 * t379 + t129 * t383) + t376 * (t128 * t383 + t129 * t379), t374 * (-pkin(7) * t39 - t10 * t379 + t17 * t383) + t376 * (-pkin(2) * t96 + pkin(7) * t40 + t10 * t383 + t17 * t379) - pkin(1) * t96 + qJ(2) * (-t374 * t39 + t376 * t40), t374 * (-pkin(7) * t42 - t13 * t379 + t18 * t383) + t376 * (-pkin(2) * t104 + pkin(7) * t43 + t13 * t383 + t18 * t379) - pkin(1) * t104 + qJ(2) * (-t374 * t42 + t376 * t43), t374 * (-pkin(7) * t31 - t379 * t5 + t383 * t7) + t376 * (-pkin(2) * t60 + pkin(7) * t32 + t379 * t7 + t383 * t5) - pkin(1) * t60 + qJ(2) * (-t31 * t374 + t32 * t376), t374 * (-pkin(7) * t3 - t1 * t379 + t2 * t383) + t376 * (-pkin(2) * t15 + pkin(7) * t4 + t1 * t383 + t2 * t379) - pkin(1) * t15 + qJ(2) * (-t3 * t374 + t376 * t4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t431, t432, -t360, -t354, 0, 0, 0, 0, 0, 0, t342, t344, t322, -t338, 0, 0, 0, 0, 0, 0, t253, t256, t278, -t276, 0, 0, 0, 0, 0, 0, t187, t193, t180, t64, 0, 0, 0, 0, 0, 0, t96, t104, t60, t15; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t347, t356 - t355, t357, t347, t316, qJDD(3), -t290, -t291, 0, 0, t306, t304, t258, -t306, t400, t430, pkin(3) * t246 - t190, -t378 * (t402 + t410) + (-t378 * t488 + t266) * pkin(3) - t389, pkin(3) * t206, pkin(3) * t130, t225, t179, t210, t223, t211, t244, pkin(3) * t140 + t421, pkin(3) * t142 + t422, pkin(3) * t136 + t408, pkin(3) * t51 + t467, t107, t59, t119, t106, t120, t134, pkin(3) * t70 + t416, pkin(3) * t72 + t409, pkin(3) * t54 + t417, pkin(3) * t11 + t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t306, t304, t258, -t306, t400, t430, -t190, -t191, 0, 0, t225, t179, t210, t223, t211, t244, t421, t422, t408, t467, t107, t59, t119, t106, t120, t134, t416, t409, t417, t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229, t491, t260, t168, 0, 0, 0, 0, 0, 0, t158, t493, t209, t127; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t239, t238, t162, -t239, -t159, t279, -t49, -t50, 0, 0;];
tauJ_reg  = t14;
