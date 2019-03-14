% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRRP11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 02:58
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRRP11_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP11_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP11_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRP11_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 02:53:38
% EndTime: 2019-03-10 02:54:33
% DurationCPUTime: 25.61s
% Computational Cost: add. (25787->819), mult. (77703->1410), div. (0->0), fcn. (78329->12), ass. (0->368)
t203 = sin(pkin(6));
t206 = sin(qJ(3));
t207 = sin(qJ(2));
t210 = cos(qJ(3));
t202 = sin(pkin(7));
t424 = cos(pkin(6));
t348 = t202 * t424;
t330 = t210 * t348;
t211 = cos(qJ(2));
t423 = cos(pkin(7));
t346 = t211 * t423;
t125 = -t330 + (t206 * t207 - t210 * t346) * t203;
t406 = t207 * t210;
t294 = t206 * t346 + t406;
t276 = t294 * qJD(3);
t328 = qJD(3) * t348;
t310 = t206 * t328;
t347 = t210 * t423;
t293 = t206 * t211 + t207 * t347;
t459 = t293 * qJD(2);
t231 = t203 * (-t459 - t276) - t310;
t477 = -0.2e1 * t231 * t125;
t309 = t203 * (-pkin(10) * t423 - pkin(9));
t371 = pkin(1) * t424;
t340 = t211 * t371;
t261 = t207 * t309 + t340;
t370 = t424 * pkin(2);
t252 = t370 + t261;
t372 = -pkin(2) * t211 - pkin(1);
t414 = t202 * t207;
t292 = t203 * (-pkin(10) * t414 + t372);
t229 = t202 * t292 + t423 * t252;
t280 = t203 * t346 + t348;
t341 = t207 * t371;
t410 = t203 * t211;
t287 = -pkin(9) * t410 - t341;
t245 = pkin(10) * t280 - t287;
t85 = -t206 * t245 + t210 * t229;
t205 = sin(qJ(4));
t209 = cos(qJ(4));
t331 = t206 * t348;
t461 = t294 * t203;
t254 = t331 + t461;
t249 = qJD(4) * t254;
t345 = t423 * qJD(3);
t300 = t211 * (t345 + qJD(2));
t397 = qJD(2) * t207;
t475 = -t205 * t249 + (t202 * t205 * t397 + t209 * t210 * t300) * t203;
t411 = t203 * t207;
t332 = t423 * t411;
t311 = qJD(2) * t332;
t367 = qJD(3) * t411;
t401 = (t311 + t367) * t206;
t283 = t210 * t328 - t401;
t301 = t202 * t410 - t423 * t424;
t284 = t301 * qJD(4);
t468 = -t209 * (-t284 + t283) - t475;
t474 = t125 * qJD(5) - t468;
t268 = t203 * t459;
t395 = qJD(3) * t202;
t412 = t202 * t210;
t473 = -t268 * t412 + (-t210 * t461 + (-t330 + t125) * t206) * t395;
t86 = t206 * t229 + t210 * t245;
t221 = -pkin(11) * t301 + t86;
t258 = qJD(2) * (t211 * t309 - t341);
t398 = qJD(2) * t203;
t282 = (-pkin(10) * t202 * t211 + pkin(2) * t207) * t398;
t267 = t280 * qJD(3);
t396 = qJD(2) * t211;
t352 = t203 * t396;
t465 = -t210 * (t267 + t352) + t401;
t470 = pkin(3) * t231 - pkin(11) * t465 + qJD(4) * t221 + t202 * t258 - t282 * t423;
t442 = t125 * pkin(3);
t224 = -pkin(11) * t254 - t202 * t252 + t292 * t423 + t442;
t353 = t203 * t397;
t334 = t202 * t353;
t457 = -qJD(2) * t261 - t229 * qJD(3);
t458 = qJD(3) * t245 - t202 * t282 - t423 * t258;
t56 = t206 * t458 + t210 * t457;
t471 = -pkin(11) * t334 - qJD(4) * t224 + t56;
t17 = t470 * t205 + t471 * t209;
t109 = t205 * t254 + t209 * t301;
t234 = -t205 * t301 + t209 * t254;
t77 = pkin(3) * t301 - t85;
t217 = t109 * pkin(4) - pkin(12) * t234 + t77;
t472 = pkin(12) * t231 - qJD(5) * t217 + t17;
t415 = t202 * t206;
t285 = -pkin(2) * t347 + pkin(10) * t415;
t147 = -pkin(3) * t423 + t285;
t375 = t205 * t415;
t153 = -t209 * t423 + t375;
t413 = t202 * t209;
t154 = t205 * t423 + t206 * t413;
t250 = t153 * pkin(4) - t154 * pkin(12) + t147;
t394 = qJD(3) * t206;
t355 = t202 * t394;
t163 = pkin(2) * t206 * t423 + pkin(10) * t412;
t263 = pkin(11) * t423 + t163;
t259 = qJD(4) * t263;
t326 = pkin(3) * t206 - pkin(11) * t210;
t297 = t326 * t395;
t272 = t285 * qJD(3);
t299 = (-pkin(3) * t210 - pkin(11) * t206 - pkin(2)) * t202;
t467 = -qJD(4) * t299 + t272;
t91 = t467 * t209 + (t259 - t297) * t205;
t469 = -pkin(12) * t355 - qJD(5) * t250 + t91;
t463 = -0.4e1 * t205;
t204 = sin(qJ(5));
t198 = t204 ^ 2;
t208 = cos(qJ(5));
t200 = t208 ^ 2;
t400 = t198 - t200;
t354 = t210 * t395;
t385 = t154 * qJD(4);
t127 = t205 * t354 + t385;
t195 = qJD(4) * t205;
t114 = -t209 * t127 + t153 * t195;
t71 = (t249 - t334) * t209 + (-t465 - t284) * t205;
t60 = t109 * t195 - t209 * t71;
t177 = qJD(4) * t375;
t344 = t423 * qJD(4);
t290 = t344 + t354;
t456 = -t209 * t290 + t177;
t455 = t205 * qJD(6) + (pkin(11) * qJD(5) + qJ(6) * qJD(4)) * t209;
t201 = t209 ^ 2;
t454 = t210 ^ 2;
t453 = 0.2e1 * t202;
t452 = 0.2e1 * qJD(3);
t451 = 0.2e1 * qJD(5);
t450 = t71 * pkin(5);
t89 = -t125 * t208 + t204 * t234;
t449 = t89 * pkin(5);
t448 = pkin(2) * t202;
t447 = pkin(5) * t208;
t446 = pkin(11) * t202;
t445 = pkin(11) * t204;
t444 = pkin(11) * t205;
t443 = pkin(11) * t209;
t441 = t125 * pkin(4);
t440 = t127 * pkin(5);
t128 = t154 * t204 + t208 * t412;
t439 = t128 * pkin(5);
t18 = t471 * t205 - t470 * t209;
t13 = pkin(4) * t231 - t18;
t232 = qJD(5) * t234;
t41 = (t231 + t232) * t208 + t474 * t204;
t5 = t41 * pkin(5) + t13;
t438 = t204 * t5;
t437 = t208 * t5;
t436 = -qJ(6) - pkin(12);
t47 = t205 * t224 + t209 * t221;
t45 = pkin(12) * t125 + t47;
t23 = t204 * t217 + t208 * t45;
t42 = t474 * t208 + (t310 - t232 + (t206 * t300 + (qJD(2) * t423 + qJD(3)) * t406) * t203) * t204;
t435 = t204 * t42;
t373 = t205 * t467 - t209 * t259;
t87 = (-t206 * pkin(4) - t209 * t326) * t395 - t373;
t194 = qJD(5) * t208;
t374 = t204 * t412;
t99 = -qJD(5) * t374 + t154 * t194 - t204 * t456 - t208 * t355;
t64 = t99 * pkin(5) + t87;
t434 = t204 * t64;
t433 = t204 * t89;
t90 = t125 * t204 + t208 * t234;
t432 = t204 * t90;
t98 = qJD(5) * t128 - t204 * t355 + t208 * t456;
t431 = t204 * t98;
t430 = t208 * t41;
t429 = t208 * t42;
t428 = t208 * t64;
t427 = t208 * t90;
t426 = t208 * t99;
t422 = t128 * t204;
t129 = t154 * t208 - t374;
t421 = t129 * t204;
t420 = t129 * t208;
t357 = t205 * t194;
t391 = qJD(4) * t209;
t157 = t204 * t391 + t357;
t379 = pkin(11) * t391;
t142 = pkin(5) * t157 + t379;
t419 = t142 * t204;
t418 = t142 * t208;
t179 = t436 * t204;
t417 = t179 * t205;
t180 = t436 * t208;
t416 = t180 * t205;
t409 = t204 * t205;
t408 = t204 * t209;
t407 = t205 * t208;
t405 = t208 * t209;
t118 = t205 * t299 + t209 * t263;
t111 = -pkin(12) * t412 + t118;
t79 = t208 * t111 + t204 * t250;
t325 = -pkin(4) * t209 - t205 * pkin(12);
t312 = -pkin(3) + t325;
t298 = qJD(5) * t312;
t324 = pkin(4) * t205 - pkin(12) * t209;
t303 = qJD(4) * t324;
t403 = -t204 * t303 - t208 * t298;
t366 = t204 * t195;
t402 = pkin(11) * t366 + t208 * t303;
t190 = pkin(11) * t405;
t145 = t204 * t312 + t190;
t199 = t205 ^ 2;
t399 = t199 - t201;
t393 = qJD(4) * t204;
t392 = qJD(4) * t208;
t390 = qJD(4) * t210;
t389 = qJD(5) * t204;
t388 = qJD(5) * t205;
t387 = qJD(5) * t209;
t383 = -0.2e1 * pkin(3) * qJD(4);
t63 = 0.2e1 * t109 * t71;
t119 = 0.2e1 * t153 * t127;
t382 = pkin(11) * t408;
t381 = -0.2e1 * t389;
t380 = pkin(5) * t195;
t378 = pkin(5) * t389;
t75 = t205 * t221;
t36 = -t209 * t224 - t441 + t449 + t75;
t377 = t36 * t389;
t117 = -t205 * t263 + t209 * t299;
t110 = pkin(4) * t412 - t117;
t93 = t110 + t439;
t376 = t93 * t389;
t197 = t203 ^ 2;
t369 = t197 * t396;
t196 = t202 ^ 2;
t368 = t196 * t394;
t364 = t125 * t195;
t362 = t205 * t390;
t361 = t208 * t391;
t171 = (pkin(5) * t204 + pkin(11)) * t205;
t360 = t171 * t389;
t359 = t204 * t388;
t358 = t204 * t387;
t356 = t208 * t387;
t351 = t204 * t194;
t350 = t205 * t391;
t192 = -pkin(4) - t447;
t349 = -t192 + t447;
t22 = -t204 * t45 + t208 * t217;
t78 = -t111 * t204 + t208 * t250;
t343 = t399 * qJD(4);
t342 = 0.2e1 * t350;
t339 = t196 * t353;
t337 = t199 * t351;
t336 = t210 * t368;
t335 = t207 * t369;
t333 = t204 * t361;
t329 = t424 * t398;
t327 = t206 * t345;
t323 = pkin(5) * t198 + t192 * t208;
t14 = pkin(5) * t109 - qJ(6) * t90 + t22;
t19 = -qJ(6) * t89 + t23;
t322 = -t14 * t208 - t19 * t204;
t321 = -t17 * t209 - t18 * t205;
t320 = -t204 * t23 - t208 * t22;
t65 = pkin(5) * t153 - qJ(6) * t129 + t78;
t70 = -qJ(6) * t128 + t79;
t319 = -t204 * t70 - t208 * t65;
t318 = -t204 * t79 - t208 * t78;
t317 = -t208 * t89 - t432;
t92 = t209 * t297 + t373;
t316 = -t92 * t205 - t91 * t209;
t51 = t109 * t127 + t153 * t71;
t314 = -t128 * t208 - t421;
t169 = t208 * t312;
t144 = t169 - t382;
t313 = -t144 * t208 - t145 * t204;
t270 = t202 * (t340 + t370);
t271 = pkin(9) * t414 + t372 * t423;
t46 = -t75 + (-pkin(11) * t331 - t270 + t442 + (-pkin(11) * t294 + t271) * t203) * t209;
t44 = -t46 - t441;
t308 = t13 * t204 + t194 * t44;
t307 = -t13 * t208 + t389 * t44;
t59 = t109 * t194 + t204 * t71;
t306 = t109 * t389 - t208 * t71;
t305 = t110 * t194 + t204 * t87;
t304 = t110 * t389 - t208 * t87;
t57 = t206 * t457 - t210 * t458;
t54 = -pkin(3) * t334 - t57;
t214 = t71 * pkin(4) + pkin(12) * t468 + t54;
t3 = -t204 * t214 + t472 * t208 + t389 * t45;
t113 = t127 * t204 + t153 * t194;
t302 = -t127 * t208 + t153 * t389;
t233 = pkin(2) * t327 + t127 * pkin(4) + pkin(10) * t354 + pkin(12) * t456;
t38 = t111 * t389 - t204 * t233 + t469 * t208;
t296 = t205 * t394 - t209 * t390;
t155 = -t359 + t361;
t156 = t205 * t392 + t358;
t289 = t202 * t301;
t286 = pkin(9) * t411 - t340;
t277 = qJD(3) * t289;
t4 = -t194 * t45 + t472 * t204 + t208 * t214;
t264 = qJD(5) * t320 - t204 * t4 - t208 * t3;
t39 = -t111 * t194 + t469 * t204 + t208 * t233;
t262 = qJD(5) * t318 - t204 * t39 - t208 * t38;
t115 = pkin(11) * t156 + t403;
t116 = -qJD(5) * t145 + t402;
t260 = qJD(5) * t313 - t115 * t208 - t116 * t204;
t251 = t202 * t254;
t237 = t202 * t465;
t235 = qJ(6) * t359 - t204 * t298 - t208 * t455 + t402;
t227 = t125 * t391 - t205 * t231;
t218 = t98 * qJ(6) - t129 * qJD(6) + t39;
t212 = -t42 * qJ(6) - t90 * qJD(6) + t4;
t187 = -0.2e1 * t350;
t186 = -0.2e1 * t351;
t185 = 0.2e1 * t351;
t172 = -0.2e1 * t336;
t170 = -0.2e1 * t400 * qJD(5);
t158 = -t356 + t366;
t152 = -qJD(6) * t204 + t194 * t436;
t151 = -t208 * qJD(6) - t389 * t436;
t150 = t287 * qJD(2);
t149 = t286 * qJD(2);
t148 = qJD(3) * t163;
t138 = 0.2e1 * t200 * t350 - 0.2e1 * t337;
t137 = 0.2e1 * t198 * t350 + 0.2e1 * t337;
t134 = t388 * t400 - t333;
t133 = t351 * t463 - t391 * t400;
t132 = -0.2e1 * t204 * t343 + 0.2e1 * t205 * t356;
t131 = 0.2e1 * t205 * t358 + 0.2e1 * t392 * t399;
t130 = -qJ(6) * t409 + t145;
t126 = t199 * t400 * t451 + t333 * t463;
t123 = -qJ(6) * t407 + t169 + (-pkin(5) - t445) * t209;
t105 = (pkin(2) * t332 - t202 * t287) * qJD(2);
t102 = t203 * t271 - t270;
t100 = (pkin(11) * qJD(4) + qJ(6) * qJD(5)) * t407 + t455 * t204 + t403;
t96 = t235 + t380;
t83 = -0.2e1 * t129 * t98;
t82 = 0.2e1 * t128 * t99;
t81 = t128 * t389 - t426;
t80 = t129 * t194 - t431;
t69 = -0.2e1 * t127 * t128 - 0.2e1 * t153 * t99;
t68 = 0.2e1 * t127 * t129 - 0.2e1 * t153 * t98;
t67 = t128 * t157 + t409 * t99;
t66 = t129 * t155 - t407 * t98;
t62 = (-t153 * t393 + t99) * t209 + (-qJD(4) * t128 - t113) * t205;
t61 = (t153 * t392 + t98) * t209 + (qJD(4) * t129 - t302) * t205;
t55 = 0.2e1 * t128 * t98 - 0.2e1 * t129 * t99;
t52 = qJD(5) * t314 - t204 * t99 - t208 * t98;
t37 = t314 * t391 + (t431 - t426 + (-t420 + t422) * qJD(5)) * t205;
t35 = 0.2e1 * t90 * t42;
t34 = 0.2e1 * t89 * t41;
t33 = t194 * t90 + t435;
t32 = t389 * t89 - t430;
t31 = t99 * qJ(6) + t128 * qJD(6) + t38;
t30 = t218 + t440;
t27 = t129 * t42 - t90 * t98;
t26 = t128 * t41 + t89 * t99;
t25 = t90 * t361 + (-t389 * t90 + t429) * t205;
t24 = t89 * t357 + (t205 * t41 + t391 * t89) * t204;
t21 = 0.2e1 * t109 * t42 + 0.2e1 * t71 * t90;
t20 = -0.2e1 * t109 * t41 - 0.2e1 * t71 * t89;
t16 = (-t109 * t393 + t41) * t209 + (-qJD(4) * t89 - t59) * t205;
t15 = (t109 * t392 - t42) * t209 + (qJD(4) * t90 - t306) * t205;
t11 = -t109 * t99 - t127 * t89 - t128 * t71 - t153 * t41;
t10 = -t109 * t98 + t127 * t90 + t129 * t71 + t153 * t42;
t9 = -0.2e1 * t41 * t90 - 0.2e1 * t42 * t89;
t8 = qJD(5) * t317 - t204 * t41 + t429;
t7 = -t128 * t42 - t129 * t41 + t89 * t98 - t90 * t99;
t6 = t317 * t391 + (-t435 - t430 + (-t427 + t433) * qJD(5)) * t205;
t2 = t41 * qJ(6) + t89 * qJD(6) + t3;
t1 = t212 + t450;
t12 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t335, 0.2e1 * (-t207 ^ 2 + t211 ^ 2) * t197 * qJD(2), 0.2e1 * t211 * t329, -0.2e1 * t335, -0.2e1 * t207 * t329, 0, -0.2e1 * pkin(1) * t197 * t397 + 0.2e1 * t150 * t424, -0.2e1 * pkin(1) * t369 + 0.2e1 * t149 * t424, 0.2e1 * (-t149 * t211 - t150 * t207 + (t207 * t287 + t211 * t286) * qJD(2)) * t203, 0.2e1 * t149 * t287 - 0.2e1 * t150 * t286, -0.2e1 * t254 * t465, 0.2e1 * t125 * t465 + 0.2e1 * t231 * t254, 0.2e1 * t251 * t353 + 0.2e1 * t301 * t465, t477, -0.2e1 * t125 * t334 - 0.2e1 * t231 * t301, -0.2e1 * t289 * t353, -0.2e1 * t57 * t301 + 0.2e1 * t105 * t125 + 0.2e1 * t102 * t310 + 0.2e1 * (t102 * t276 + (t102 * t293 + t414 * t85) * qJD(2)) * t203, -0.2e1 * t102 * t465 + 0.2e1 * t105 * t254 - 0.2e1 * t301 * t56 - 0.2e1 * t334 * t86, 0.2e1 * t56 * t125 + 0.2e1 * t231 * t86 - 0.2e1 * t254 * t57 + 0.2e1 * t465 * t85, 0.2e1 * t102 * t105 - 0.2e1 * t56 * t86 + 0.2e1 * t57 * t85, -0.2e1 * t234 * t468, 0.2e1 * t109 * t468 - 0.2e1 * t234 * t71, -0.2e1 * t125 * t468 - 0.2e1 * t231 * t234, t63, 0.2e1 * t109 * t231 - 0.2e1 * t71 * t125, t477, 0.2e1 * t54 * t109 + 0.2e1 * t18 * t125 - 0.2e1 * t231 * t46 + 0.2e1 * t77 * t71, 0.2e1 * t17 * t125 + 0.2e1 * t231 * t47 + 0.2e1 * t234 * t54 - 0.2e1 * t468 * t77, 0.2e1 * t17 * t109 - 0.2e1 * t18 * t234 + 0.2e1 * t46 * t468 - 0.2e1 * t47 * t71, -0.2e1 * t17 * t47 + 0.2e1 * t18 * t46 + 0.2e1 * t54 * t77, t35, t9, t21, t34, t20, t63, 0.2e1 * t109 * t4 + 0.2e1 * t13 * t89 + 0.2e1 * t22 * t71 + 0.2e1 * t41 * t44, 0.2e1 * t109 * t3 + 0.2e1 * t13 * t90 - 0.2e1 * t23 * t71 + 0.2e1 * t42 * t44, -0.2e1 * t22 * t42 - 0.2e1 * t23 * t41 + 0.2e1 * t3 * t89 - 0.2e1 * t4 * t90, 0.2e1 * t13 * t44 + 0.2e1 * t22 * t4 - 0.2e1 * t23 * t3, t35, t9, t21, t34, t20, t63, 0.2e1 * t1 * t109 + 0.2e1 * t14 * t71 + 0.2e1 * t36 * t41 + 0.2e1 * t5 * t89, 0.2e1 * t109 * t2 - 0.2e1 * t19 * t71 + 0.2e1 * t36 * t42 + 0.2e1 * t5 * t90, -0.2e1 * t1 * t90 - 0.2e1 * t14 * t42 - 0.2e1 * t19 * t41 + 0.2e1 * t2 * t89, 0.2e1 * t1 * t14 - 0.2e1 * t19 * t2 + 0.2e1 * t36 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t352, 0, -t353, 0, t150, t149, 0, 0 (t454 * t367 + ((0.2e1 * t267 + t352) * t210 - t401) * t206) * t202, -t125 * t354 - t210 * t237 + t231 * t415 - t251 * t394, t206 * t339 - t210 * t277 - t423 * t465, t473, t206 * t277 + t210 * t339 + t231 * t423, t202 * t311, t102 * t355 - t105 * t412 + t148 * t301 + t231 * t448 - t285 * t334 + t423 * t57, pkin(2) * t237 + t102 * t354 + t105 * t415 - t163 * t334 - t272 * t301 + t423 * t56, t125 * t272 + t148 * t254 + t163 * t231 - t285 * t465 - t354 * t85 - t355 * t86 - t412 * t56 - t415 * t57, -t105 * t448 - t85 * t148 - t56 * t163 - t272 * t86 - t285 * t57, -t154 * t468 - t234 * t456, t109 * t456 - t127 * t234 + t153 * t468 - t154 * t71, -t125 * t456 - t154 * t231 + t234 * t355 + t412 * t468, t51, t71 * t412 - t127 * t125 - t153 * t268 + (-t153 * t203 * t406 + (-t109 * t202 - t153 * t280) * t206) * qJD(3), t473, t148 * t109 - t117 * t231 + t92 * t125 + t77 * t127 + t147 * t71 + t54 * t153 - t18 * t412 + t355 * t46, t118 * t231 + t91 * t125 - t147 * t468 + t148 * t234 + t54 * t154 - t17 * t412 - t355 * t47 - t456 * t77, t91 * t109 + t117 * t468 - t118 * t71 - t47 * t127 + t17 * t153 - t18 * t154 - t234 * t92 + t456 * t46, t117 * t18 - t118 * t17 + t147 * t54 + t148 * t77 + t46 * t92 - t47 * t91, t27, t7, t10, t26, t11, t51, t109 * t39 + t110 * t41 + t127 * t22 + t128 * t13 + t153 * t4 + t44 * t99 + t71 * t78 + t87 * t89, t109 * t38 + t110 * t42 - t127 * t23 + t129 * t13 + t153 * t3 - t44 * t98 - t71 * t79 + t87 * t90, t128 * t3 - t129 * t4 + t22 * t98 - t23 * t99 + t38 * t89 - t39 * t90 - t41 * t79 - t42 * t78, t110 * t13 + t22 * t39 - t23 * t38 - t3 * t79 + t4 * t78 + t44 * t87, t27, t7, t10, t26, t11, t51, t1 * t153 + t109 * t30 + t127 * t14 + t128 * t5 + t36 * t99 + t41 * t93 + t64 * t89 + t65 * t71, t109 * t31 - t127 * t19 + t129 * t5 + t153 * t2 - t36 * t98 + t42 * t93 + t64 * t90 - t70 * t71, -t1 * t129 + t128 * t2 + t14 * t98 - t19 * t99 - t30 * t90 + t31 * t89 - t41 * t70 - t42 * t65, t1 * t65 + t14 * t30 - t19 * t31 - t2 * t70 + t36 * t64 + t5 * t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t336 (-t206 ^ 2 + t454) * t196 * t452, 0.2e1 * t345 * t412, t172, -0.2e1 * t202 * t327, 0, -0.2e1 * pkin(2) * t368 - 0.2e1 * t148 * t423 (-t196 * pkin(2) * t210 + t285 * t423) * t452, 0.2e1 * t148 * t415 - 0.2e1 * t163 * t355 - 0.2e1 * t272 * t412 + 0.2e1 * t285 * t354, 0.2e1 * t148 * t285 - 0.2e1 * t163 * t272, -0.2e1 * t154 * t456, -0.2e1 * t154 * t127 + 0.2e1 * t153 * t456 (-(t209 * t344 - t177) * t210 + (t154 * t206 - t413 * t454) * qJD(3)) * t453, t119 (t127 * t210 - t153 * t394) * t453, t172, 0.2e1 * t127 * t147 + 0.2e1 * t148 * t153 + 0.2e1 * (t117 * t394 - t210 * t92) * t202, -0.2e1 * t118 * t355 - 0.2e1 * t147 * t456 + 0.2e1 * t148 * t154 - 0.2e1 * t412 * t91, 0.2e1 * t117 * t456 - 0.2e1 * t118 * t127 + 0.2e1 * t91 * t153 - 0.2e1 * t92 * t154, 0.2e1 * t117 * t92 - 0.2e1 * t118 * t91 + 0.2e1 * t147 * t148, t83, t55, t68, t82, t69, t119, 0.2e1 * t110 * t99 + 0.2e1 * t127 * t78 + 0.2e1 * t128 * t87 + 0.2e1 * t153 * t39, -0.2e1 * t110 * t98 - 0.2e1 * t127 * t79 + 0.2e1 * t129 * t87 + 0.2e1 * t153 * t38, 0.2e1 * t128 * t38 - 0.2e1 * t129 * t39 + 0.2e1 * t78 * t98 - 0.2e1 * t79 * t99, 0.2e1 * t110 * t87 - 0.2e1 * t38 * t79 + 0.2e1 * t39 * t78, t83, t55, t68, t82, t69, t119, 0.2e1 * t127 * t65 + 0.2e1 * t128 * t64 + 0.2e1 * t153 * t30 + 0.2e1 * t93 * t99, -0.2e1 * t127 * t70 + 0.2e1 * t129 * t64 + 0.2e1 * t153 * t31 - 0.2e1 * t93 * t98, 0.2e1 * t128 * t31 - 0.2e1 * t129 * t30 + 0.2e1 * t65 * t98 - 0.2e1 * t70 * t99, 0.2e1 * t30 * t65 - 0.2e1 * t31 * t70 + 0.2e1 * t64 * t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t465, 0, t231, t334, t57, t56, 0, 0, t201 * t249 + ((-0.2e1 * t284 + t283) * t209 + t475) * t205, -t109 * t391 - t195 * t234 - t205 * t71 - t209 * t468, t227, t60, -t209 * t231 - t364, 0, -pkin(3) * t71 - pkin(11) * t227 + t195 * t77 - t54 * t209, pkin(3) * t468 + pkin(11) * t364 + t54 * t205 + t231 * t443 + t391 * t77, pkin(11) * t60 - t195 * t47 + t234 * t379 - t391 * t46 - t444 * t468 + t321, -pkin(3) * t54 + ((-t47 * t205 - t46 * t209) * qJD(4) + t321) * pkin(11), t25, t6, t15, t24, t16, t60, t109 * t116 + t144 * t71 + (-t4 + (pkin(11) * t89 + t204 * t44) * qJD(4)) * t209 + (pkin(11) * t41 + qJD(4) * t22 + t308) * t205, t109 * t115 - t145 * t71 + (-t3 + (pkin(11) * t90 + t208 * t44) * qJD(4)) * t209 + (pkin(11) * t42 - qJD(4) * t23 - t307) * t205, t115 * t89 - t116 * t90 - t144 * t42 - t145 * t41 + t320 * t391 + (t204 * t3 - t208 * t4 + (t204 * t22 - t208 * t23) * qJD(5)) * t205, -t115 * t23 + t116 * t22 + t144 * t4 - t145 * t3 + (t13 * t205 + t391 * t44) * pkin(11), t25, t6, t15, t24, t16, t60, t109 * t96 + t123 * t71 + t142 * t89 + t171 * t41 + (t36 * t393 - t1) * t209 + (qJD(4) * t14 + t194 * t36 + t438) * t205, t100 * t109 - t130 * t71 + t142 * t90 + t171 * t42 + (t36 * t392 - t2) * t209 + (-qJD(4) * t19 - t377 + t437) * t205, t100 * t89 - t123 * t42 - t130 * t41 - t90 * t96 + t322 * t391 + (-t1 * t208 + t2 * t204 + (t14 * t204 - t19 * t208) * qJD(5)) * t205, t1 * t123 - t100 * t19 - t130 * t2 + t14 * t96 + t142 * t36 + t171 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t354, 0, -t355, 0, -t148, t272, 0, 0, -t177 * t205 + (t205 * t290 + t385) * t209, -t153 * t391 - t209 * t456 + (-t127 - t385) * t205, t296 * t202, t114 (t209 * t394 + t362) * t202, 0, -pkin(3) * t127 + t147 * t195 - t148 * t209 - t296 * t446, pkin(3) * t456 + t147 * t391 + t148 * t205 - t355 * t443 - t362 * t446, pkin(11) * t114 - t117 * t391 - t118 * t195 + t154 * t379 - t444 * t456 + t316, -pkin(3) * t148 + ((-t117 * t209 - t118 * t205) * qJD(4) + t316) * pkin(11), t66, t37, t61, t67, t62, t114, t116 * t153 + t127 * t144 + (-t39 + (pkin(11) * t128 + t110 * t204) * qJD(4)) * t209 + (pkin(11) * t99 + qJD(4) * t78 + t305) * t205, t115 * t153 - t127 * t145 + (-t38 + (pkin(11) * t129 + t110 * t208) * qJD(4)) * t209 + (-pkin(11) * t98 - qJD(4) * t79 - t304) * t205, t115 * t128 - t116 * t129 + t144 * t98 - t145 * t99 + t318 * t391 + (t204 * t38 - t208 * t39 + (t204 * t78 - t208 * t79) * qJD(5)) * t205, -t115 * t79 + t116 * t78 + t144 * t39 - t145 * t38 + (t110 * t391 + t205 * t87) * pkin(11), t66, t37, t61, t67, t62, t114, t123 * t127 + t128 * t142 + t153 * t96 + t171 * t99 + (t393 * t93 - t30) * t209 + (qJD(4) * t65 + t194 * t93 + t434) * t205, t100 * t153 - t127 * t130 + t129 * t142 - t171 * t98 + (t392 * t93 - t31) * t209 + (-qJD(4) * t70 - t376 + t428) * t205, t100 * t128 + t123 * t98 - t129 * t96 - t130 * t99 + t319 * t391 + (t204 * t31 - t208 * t30 + (t204 * t65 - t208 * t70) * qJD(5)) * t205, -t100 * t70 + t123 * t30 - t130 * t31 + t142 * t93 + t171 * t64 + t65 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t342, -0.2e1 * t343, 0, t187, 0, 0, t205 * t383, t209 * t383, 0, 0, t138, t126, t131, t137, t132, t187, 0.2e1 * t144 * t195 - 0.2e1 * t116 * t209 + 0.2e1 * (t194 * t199 + t204 * t342) * pkin(11), -0.2e1 * t145 * t195 - 0.2e1 * t115 * t209 + 0.2e1 * (-t199 * t389 + t208 * t342) * pkin(11), 0.2e1 * t313 * t391 + 0.2e1 * (t115 * t204 - t116 * t208 + (t144 * t204 - t145 * t208) * qJD(5)) * t205, 0.2e1 * pkin(11) ^ 2 * t350 - 0.2e1 * t115 * t145 + 0.2e1 * t116 * t144, t138, t126, t131, t137, t132, t187, 0.2e1 * (t171 * t393 - t96) * t209 + 0.2e1 * (qJD(4) * t123 + t171 * t194 + t419) * t205, 0.2e1 * (t171 * t392 - t100) * t209 + 0.2e1 * (-qJD(4) * t130 - t360 + t418) * t205, 0.2e1 * (-t123 * t208 - t130 * t204) * t391 + 0.2e1 * (t100 * t204 - t208 * t96 + (t123 * t204 - t130 * t208) * qJD(5)) * t205, -0.2e1 * t100 * t130 + 0.2e1 * t123 * t96 + 0.2e1 * t142 * t171; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t468, 0, -t71, -t231, t18, t17, 0, 0, t33, t8, t59, t32, -t306, 0, -pkin(4) * t41 - pkin(12) * t59 + t307, -pkin(4) * t42 + pkin(12) * t306 + t308 (t435 - t430 + (t427 + t433) * qJD(5)) * pkin(12) + t264, -pkin(4) * t13 + pkin(12) * t264, t33, t8, t59, t32, -t306, 0, t109 * t152 + t179 * t71 + t192 * t41 - t437 + (t36 + t449) * t389, t109 * t151 + t180 * t71 + t192 * t42 + t438 + (pkin(5) * t432 + t208 * t36) * qJD(5), qJD(5) * t322 - t1 * t204 + t151 * t89 - t152 * t90 - t179 * t42 + t180 * t41 - t2 * t208, pkin(5) * t377 + t1 * t179 + t14 * t152 - t151 * t19 + t180 * t2 + t192 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t456, 0, -t127, t355, t92, t91, 0, 0, t80, t52, t113, t81, -t302, 0, -pkin(4) * t99 - pkin(12) * t113 + t304, pkin(4) * t98 + pkin(12) * t302 + t305 (-t431 - t426 + (t420 + t422) * qJD(5)) * pkin(12) + t262, -pkin(4) * t87 + pkin(12) * t262, t80, t52, t113, t81, -t302, 0, t127 * t179 + t152 * t153 + t192 * t99 - t428 + (t93 + t439) * t389, t127 * t180 + t151 * t153 - t192 * t98 + t434 + (pkin(5) * t421 + t208 * t93) * qJD(5), qJD(5) * t319 + t128 * t151 - t129 * t152 + t179 * t98 + t180 * t99 - t204 * t30 - t208 * t31, pkin(5) * t376 - t151 * t70 + t152 * t65 + t179 * t30 + t180 * t31 + t192 * t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t391, 0, -t195, 0, -t379, pkin(11) * t195, 0, 0, -t134, t133, t158, t134, t156, 0 (pkin(12) * t405 + (-pkin(4) * t208 + t445) * t205) * qJD(5) + (t204 * t325 - t190) * qJD(4) (pkin(11) * t407 + t204 * t324) * qJD(5) + (t208 * t325 + t382) * qJD(4), t260, -pkin(4) * t379 + pkin(12) * t260, -t134, t133, t158, t134, t156, 0, -t418 - t152 * t209 + (t192 * t408 + t417) * qJD(4) + (t171 * t204 + t205 * t323) * qJD(5), t419 - t151 * t209 + (t192 * t405 + t416) * qJD(4) + (t171 * t208 + t349 * t409) * qJD(5) (-t179 * t391 - t152 * t205 - t100 + (-t123 + t416) * qJD(5)) * t208 + (t180 * t391 + t151 * t205 - t96 + (-t130 + t417) * qJD(5)) * t204, pkin(5) * t360 + t100 * t180 + t123 * t152 - t130 * t151 + t142 * t192 + t179 * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t185, t170, 0, t186, 0, 0, pkin(4) * t381, -0.2e1 * pkin(4) * t194, 0, 0, t185, t170, 0, t186, 0, 0, t349 * t381, t323 * t451, -0.2e1 * t151 * t208 - 0.2e1 * t152 * t204 + 0.2e1 * (-t179 * t208 + t180 * t204) * qJD(5), 0.2e1 * t151 * t180 + 0.2e1 * t152 * t179 + 0.2e1 * t192 * t378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t42, 0, -t41, t71, t4, t3, 0, 0, 0, 0, t42, 0, -t41, t71, t212 + 0.2e1 * t450, t2, -t42 * pkin(5), t1 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t98, 0, -t99, t127, t39, t38, 0, 0, 0, 0, -t98, 0, -t99, t127, t218 + 0.2e1 * t440, t31, t98 * pkin(5), t30 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t155, 0, -t157, t195, t116, t115, 0, 0, 0, 0, t155, 0, -t157, t195, t235 + 0.2e1 * t380, t100, -t155 * pkin(5), t96 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t194, 0, -t389, 0, -pkin(12) * t194, pkin(12) * t389, 0, 0, 0, 0, t194, 0, -t389, 0, t152, t151, -pkin(5) * t194, t152 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t41, t42, 0, t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t99, -t98, 0, t64; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t157, t155, 0, t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389, t194, 0, t378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t12;