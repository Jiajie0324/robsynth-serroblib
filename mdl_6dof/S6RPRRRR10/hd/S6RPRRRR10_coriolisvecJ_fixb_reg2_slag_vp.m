% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRRRR10_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR10_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR10_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRRR10_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:34:11
% EndTime: 2019-03-09 07:34:50
% DurationCPUTime: 17.51s
% Computational Cost: add. (48864->692), mult. (159119->964), div. (0->0), fcn. (137031->14), ass. (0->293)
t286 = sin(pkin(6));
t284 = sin(pkin(13));
t287 = cos(pkin(13));
t291 = sin(qJ(3));
t416 = cos(pkin(7));
t357 = t291 * t416;
t436 = cos(qJ(3));
t312 = t284 * t357 - t287 * t436;
t308 = t286 * t312;
t243 = qJD(1) * t308;
t285 = sin(pkin(7));
t368 = t285 * t436;
t475 = qJD(3) * t368 + t243;
t333 = t416 * t436;
t417 = cos(pkin(6));
t356 = t417 * t285;
t399 = t286 * t287;
t298 = t333 * t399 + t436 * t356;
t386 = qJD(1) * t286;
t364 = t284 * t386;
t219 = -qJD(1) * t298 + t291 * t364;
t230 = t286 * (t284 * t436 + t287 * t357) + t291 * t356;
t223 = t230 * qJD(1);
t175 = pkin(3) * t223 + pkin(10) * t219;
t290 = sin(qJ(4));
t293 = cos(qJ(4));
t352 = qJD(1) * t417;
t340 = pkin(1) * t352;
t363 = t287 * t386;
t249 = qJ(2) * t363 + t284 * t340;
t306 = (t399 * t416 + t356) * pkin(9);
t206 = qJD(1) * t306 + t249;
t269 = t287 * t340;
t401 = t284 * t286;
t300 = t417 * pkin(2) + (-pkin(9) * t416 - qJ(2)) * t401;
t217 = qJD(1) * t300 + t269;
t402 = t284 * t285;
t244 = (-pkin(2) * t287 - pkin(9) * t402 - pkin(1)) * t286;
t237 = qJD(1) * t244 + qJD(2);
t451 = -t291 * t206 + t217 * t333 + t237 * t368;
t103 = t290 * t175 + t293 * t451;
t438 = -pkin(11) - pkin(10);
t369 = qJD(4) * t438;
t406 = t219 * t290;
t474 = -pkin(11) * t406 + t290 * t369 - t103;
t292 = cos(qJ(6));
t378 = qJD(6) * t292;
t330 = t417 * t416;
t245 = -qJD(1) * t330 + t285 * t363 - qJD(3);
t184 = -t290 * t223 - t245 * t293;
t185 = t223 * t293 - t245 * t290;
t289 = sin(qJ(5));
t435 = cos(qJ(5));
t127 = -t435 * t184 + t185 * t289;
t463 = t127 * t292;
t473 = t378 + t463;
t400 = t285 * t291;
t252 = t290 * t416 + t293 * t400;
t343 = t285 * t364;
t392 = qJD(4) * t252 + t290 * t475 + t293 * t343;
t251 = -t290 * t400 + t293 * t416;
t391 = -qJD(4) * t251 + t290 * t343 - t293 * t475;
t365 = t435 * t293;
t398 = t289 * t290;
t256 = -t365 + t398;
t338 = qJD(4) * t365;
t360 = qJD(5) * t435;
t446 = qJD(4) + qJD(5);
t390 = t256 * t219 - t293 * t360 + t398 * t446 - t338;
t397 = t289 * t293;
t257 = t290 * t435 + t397;
t389 = (t219 + t446) * t257;
t288 = sin(qJ(6));
t216 = qJD(4) + t219;
t309 = qJD(5) + t216;
t305 = t292 * t309;
t321 = t289 * t184 + t185 * t435;
t106 = t288 * t321 - t305;
t108 = t288 * t309 + t292 * t321;
t462 = qJD(6) + t127;
t470 = t462 * t288;
t222 = t230 * qJD(3);
t204 = qJD(1) * t222;
t379 = qJD(6) * t288;
t382 = qJD(4) * t293;
t383 = qJD(4) * t290;
t371 = t291 * t401;
t342 = qJD(3) * t371;
t375 = qJD(1) * qJD(3);
t439 = qJD(1) * t342 - t298 * t375;
t152 = t223 * t383 + t245 * t382 + t293 * t439;
t153 = t223 * t382 - t245 * t383 - t290 * t439;
t381 = qJD(5) * t289;
t76 = t435 * t152 + t289 * t153 - t184 * t360 + t185 * t381;
t51 = -qJD(6) * t305 - t288 * t204 + t292 * t76 + t321 * t379;
t380 = qJD(6) * t108;
t52 = -t292 * t204 - t288 * t76 + t380;
t472 = -t106 * t473 - t108 * t470 - t288 * t52 - t51 * t292;
t349 = t289 * t152 - t435 * t153;
t77 = qJD(5) * t321 - t349;
t73 = t292 * t77;
t471 = t106 * t321 - t462 * t470 + t73;
t266 = t438 * t290;
t267 = t438 * t293;
t319 = t266 * t435 + t289 * t267;
t102 = t293 * t175 - t290 * t451;
t91 = pkin(11) * t219 * t293 + pkin(4) * t223 + t102;
t420 = qJD(5) * t319 - t289 * t91 + t369 * t397 + t435 * t474;
t146 = t291 * (t217 * t416 + t237 * t285) + t436 * t206;
t334 = -t146 + (t383 + t406) * pkin(4);
t48 = t51 * t288;
t468 = t108 * t473 - t48;
t421 = t288 * t77 + t378 * t462;
t467 = -t108 * t321 + t462 * t463 + t421;
t176 = -t217 * t285 + t416 * t237;
t120 = pkin(3) * t219 - pkin(10) * t223 + t176;
t122 = -t245 * pkin(10) + t146;
t89 = t120 * t290 + t122 * t293;
t75 = pkin(11) * t184 + t89;
t425 = t289 * t75;
t88 = t293 * t120 - t122 * t290;
t74 = -pkin(11) * t185 + t88;
t68 = pkin(4) * t216 + t74;
t32 = t435 * t68 - t425;
t30 = -pkin(5) * t309 - t32;
t466 = t127 * t30;
t465 = pkin(5) * t389 + pkin(12) * t390 + t334;
t464 = -pkin(12) * t223 + t420;
t410 = t127 * t321;
t320 = t251 * t435 - t289 * t252;
t394 = qJD(5) * t320 - t289 * t392 - t391 * t435;
t310 = t284 * t333 + t287 * t291;
t307 = t286 * t310;
t242 = qJD(1) * t307;
t384 = qJD(3) * t291;
t332 = t285 * t384 - t242;
t461 = -t127 ^ 2 + t321 ^ 2;
t92 = pkin(5) * t321 + pkin(12) * t127;
t460 = t127 * t309 - t76;
t302 = qJD(2) * t308;
t447 = qJD(3) * t451;
t116 = -qJD(1) * t302 + t447;
t385 = qJD(2) * t286;
t341 = t385 * t402;
t326 = qJD(1) * t341;
t165 = t204 * pkin(3) + pkin(10) * t439 + t326;
t58 = -qJD(4) * t89 - t116 * t290 + t293 * t165;
t38 = pkin(4) * t204 + pkin(11) * t152 + t58;
t57 = t293 * t116 + t120 * t382 - t122 * t383 + t290 * t165;
t44 = -pkin(11) * t153 + t57;
t354 = -t289 * t38 - t68 * t360 + t75 * t381 - t435 * t44;
t121 = t245 * pkin(3) - t451;
t99 = -t184 * pkin(4) + t121;
t459 = t99 * t127 + t354;
t372 = t435 * t75;
t33 = t289 * t68 + t372;
t31 = pkin(12) * t309 + t33;
t65 = t127 * pkin(5) - pkin(12) * t321 + t99;
t16 = t288 * t65 + t292 * t31;
t301 = qJD(2) * t307;
t448 = qJD(3) * t146;
t117 = qJD(1) * t301 + t448;
t93 = t153 * pkin(4) + t117;
t24 = t77 * pkin(5) + t76 * pkin(12) + t93;
t7 = pkin(12) * t204 - t354;
t3 = -qJD(6) * t16 + t292 * t24 - t288 * t7;
t456 = -t16 * t462 - t3;
t241 = t289 * t266 - t267 * t435;
t418 = t241 * qJD(5) + t289 * t474 - t338 * t438 + t435 * t91;
t455 = -t216 * t88 + t57;
t454 = -t216 * t89 - t58;
t453 = t462 * t321;
t452 = t286 ^ 2 * (t284 ^ 2 + t287 ^ 2);
t370 = pkin(1) * t417;
t273 = t287 * t370;
t231 = t273 + t300;
t186 = -t231 * t285 + t416 * t244;
t229 = -t298 + t371;
t136 = pkin(3) * t229 - pkin(10) * t230 + t186;
t388 = qJ(2) * t399 + t284 * t370;
t225 = t306 + t388;
t215 = t436 * t225;
t355 = t416 * t231;
t157 = t244 * t400 + t291 * t355 + t215;
t250 = t285 * t399 - t330;
t144 = -pkin(10) * t250 + t157;
t95 = t290 * t136 + t293 * t144;
t208 = t289 * t251 + t252 * t435;
t393 = qJD(5) * t208 - t289 * t391 + t392 * t435;
t156 = -t291 * t225 + t231 * t333 + t244 * t368;
t328 = t288 * t31 - t292 * t65;
t449 = t16 * t292 + t288 * t328;
t358 = t289 * t44 - t435 * t38;
t10 = -qJD(5) * t33 - t358;
t8 = -t204 * pkin(5) - t10;
t444 = -t8 * t292 + t30 * t379 + t321 * t328;
t443 = t16 * t321 + t8 * t288 + t30 * t378;
t442 = -t99 * t321 - t358;
t440 = t216 * t321 + t349;
t192 = t230 * t293 - t250 * t290;
t94 = t293 * t136 - t144 * t290;
t80 = pkin(4) * t229 - pkin(11) * t192 + t94;
t191 = t230 * t290 + t250 * t293;
t87 = -pkin(11) * t191 + t95;
t434 = t289 * t80 + t435 * t87;
t221 = -qJD(3) * t298 + t342;
t164 = -qJD(4) * t191 - t221 * t293;
t131 = qJD(3) * t156 - t302;
t170 = pkin(3) * t222 + pkin(10) * t221 + t341;
t64 = -qJD(4) * t95 - t131 * t290 + t293 * t170;
t46 = pkin(4) * t222 - pkin(11) * t164 + t64;
t163 = qJD(4) * t192 - t221 * t290;
t63 = t293 * t131 + t136 * t382 - t144 * t383 + t290 * t170;
t54 = -pkin(11) * t163 + t63;
t14 = -qJD(5) * t434 - t289 * t54 + t435 * t46;
t2 = -qJD(6) * t328 + t24 * t288 + t292 * t7;
t1 = t2 * t292;
t433 = t462 * t328;
t147 = t191 * t435 + t192 * t289;
t431 = t147 * t77;
t426 = t256 * t77;
t50 = t52 * t292;
t280 = -pkin(4) * t293 - pkin(3);
t226 = pkin(5) * t256 - pkin(12) * t257 + t280;
t182 = t226 * t292 - t241 * t288;
t424 = qJD(6) * t182 + t288 * t465 + t292 * t464;
t183 = t226 * t288 + t241 * t292;
t423 = -qJD(6) * t183 - t288 * t464 + t292 * t465;
t419 = t223 * pkin(5) + t418;
t415 = t106 * t288;
t414 = t108 * t106;
t409 = t184 * t216;
t408 = t185 * t184;
t407 = t185 * t216;
t177 = t204 * t229;
t405 = t223 * t219;
t404 = t257 * t288;
t403 = t257 * t292;
t193 = -t288 * t208 - t292 * t368;
t396 = qJD(6) * t193 + t288 * t332 + t292 * t394;
t315 = -t292 * t208 + t288 * t368;
t395 = qJD(6) * t315 - t288 * t394 + t292 * t332;
t376 = qJD(1) * qJD(2);
t367 = t436 * t117;
t359 = t286 * t376;
t351 = -t292 * t223 + t288 * t390;
t350 = t223 * t288 + t292 * t390;
t348 = t216 * t290;
t347 = t216 * t293;
t344 = pkin(4) * t360;
t34 = t289 * t74 + t372;
t337 = pkin(4) * t381 - t34;
t294 = qJD(1) ^ 2;
t336 = t286 * t294 * t417;
t278 = pkin(4) * t289 + pkin(12);
t329 = -t278 * t77 + t466;
t40 = pkin(12) * t229 + t434;
t143 = t250 * pkin(3) - t156;
t109 = t191 * pkin(4) + t143;
t148 = -t289 * t191 + t192 * t435;
t66 = t147 * pkin(5) - t148 * pkin(12) + t109;
t18 = t288 * t66 + t292 * t40;
t17 = -t288 * t40 + t292 * t66;
t114 = t148 * t292 + t229 * t288;
t327 = (-qJ(2) * t364 + t269) * t284 - t249 * t287;
t41 = -t289 * t87 + t435 * t80;
t13 = t289 * t46 + t80 * t360 - t381 * t87 + t435 * t54;
t322 = -0.2e1 * t352 * t385;
t317 = -pkin(10) * t204 + t121 * t216;
t314 = t257 * t378 - t351;
t313 = -t257 * t379 - t350;
t299 = t1 - t3 * t288 + (-t16 * t288 + t292 * t328) * qJD(6);
t132 = t301 + (t215 + (t244 * t285 + t355) * t291) * qJD(3);
t98 = t163 * pkin(4) + t132;
t279 = -pkin(4) * t435 - pkin(5);
t113 = t148 * t288 - t229 * t292;
t85 = qJD(5) * t148 + t163 * t435 + t289 * t164;
t84 = t289 * t163 - t164 * t435 + t191 * t360 + t192 * t381;
t81 = pkin(4) * t185 + t92;
t62 = qJD(6) * t114 - t222 * t292 - t288 * t84;
t61 = t148 * t379 - t222 * t288 - t229 * t378 + t292 * t84;
t39 = -t229 * pkin(5) - t41;
t35 = t435 * t74 - t425;
t27 = t85 * pkin(5) + t84 * pkin(12) + t98;
t22 = t288 * t92 + t292 * t32;
t21 = -t288 * t32 + t292 * t92;
t20 = t288 * t81 + t292 * t35;
t19 = -t288 * t35 + t292 * t81;
t12 = -t222 * pkin(5) - t14;
t11 = pkin(12) * t222 + t13;
t5 = -qJD(6) * t18 - t11 * t288 + t27 * t292;
t4 = qJD(6) * t17 + t11 * t292 + t27 * t288;
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284 * t322, t287 * t322, 0.2e1 * t376 * t452 ((t287 * t388 + (qJ(2) * t401 - t273) * t284) * qJD(1) - t327) * t385, -t223 * t221 - t230 * t439, -t230 * t204 + t221 * t219 - t223 * t222 + t229 * t439, t221 * t245 + t250 * t439, t219 * t222 + t177, t204 * t250 + t222 * t245, 0, t117 * t250 + t132 * t245 + t176 * t222 + t186 * t204 + (qJD(1) * t229 + t219) * t341, t116 * t250 + t131 * t245 - t176 * t221 - t186 * t439 + t223 * t341 + t230 * t326, -t116 * t229 + t117 * t230 - t131 * t219 + t132 * t223 - t146 * t222 + t156 * t439 - t157 * t204 + t221 * t451, t116 * t157 - t117 * t156 + t131 * t146 - t132 * t451 + (qJD(1) * t186 + t176) * t341, -t152 * t192 + t164 * t185, t152 * t191 - t153 * t192 - t163 * t185 + t164 * t184, -t152 * t229 + t164 * t216 + t185 * t222 + t192 * t204, t153 * t191 - t163 * t184, -t153 * t229 - t163 * t216 + t184 * t222 - t191 * t204, t216 * t222 + t177, t117 * t191 + t121 * t163 - t132 * t184 + t143 * t153 + t204 * t94 + t216 * t64 + t222 * t88 + t229 * t58, t117 * t192 + t121 * t164 + t132 * t185 - t143 * t152 - t204 * t95 - t216 * t63 - t222 * t89 - t229 * t57, t152 * t94 - t153 * t95 - t163 * t89 - t164 * t88 + t184 * t63 - t185 * t64 - t191 * t57 - t192 * t58, t117 * t143 + t121 * t132 + t57 * t95 + t58 * t94 + t63 * t89 + t64 * t88, -t148 * t76 - t321 * t84, t127 * t84 + t147 * t76 - t148 * t77 - t321 * t85, t148 * t204 + t222 * t321 - t76 * t229 - t309 * t84, t127 * t85 + t431, -t127 * t222 - t147 * t204 - t77 * t229 - t309 * t85, t222 * t309 + t177, t10 * t229 + t109 * t77 + t98 * t127 + t14 * t309 + t93 * t147 + t41 * t204 + t32 * t222 + t99 * t85, -t109 * t76 - t13 * t309 + t93 * t148 - t204 * t434 - t33 * t222 + t229 * t354 + t321 * t98 - t99 * t84, -t10 * t148 - t127 * t13 - t14 * t321 + t147 * t354 + t32 * t84 - t33 * t85 + t41 * t76 - t434 * t77, t10 * t41 + t109 * t93 + t13 * t33 + t14 * t32 - t354 * t434 + t98 * t99, -t108 * t61 - t114 * t51, t106 * t61 - t108 * t62 + t113 * t51 - t114 * t52, t108 * t85 + t114 * t77 - t147 * t51 - t462 * t61, t106 * t62 + t113 * t52, -t106 * t85 - t113 * t77 - t147 * t52 - t462 * t62, t462 * t85 + t431, t106 * t12 + t113 * t8 + t147 * t3 + t17 * t77 + t30 * t62 - t328 * t85 + t39 * t52 + t462 * t5, t108 * t12 + t114 * t8 - t147 * t2 - t16 * t85 - t18 * t77 - t30 * t61 - t39 * t51 - t4 * t462, -t106 * t4 - t108 * t5 - t113 * t2 - t114 * t3 - t16 * t62 + t17 * t51 - t18 * t52 - t328 * t61, t12 * t30 + t16 * t4 + t17 * t3 + t18 * t2 - t328 * t5 + t39 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284 * t336, t287 * t336, -t294 * t452, t327 * t386, 0, 0, 0, 0, 0, 0, t204 * t416 - t219 * t343 + t245 * t332, -t223 * t343 + t245 * t475 - t416 * t439, -t204 * t400 - t219 * t475 + t223 * t332 + t368 * t439, t451 * t242 + t146 * t243 + (-t367 + t116 * t291 + (t146 * t436 - t291 * t451) * qJD(3) + (qJD(2) * t416 - t176) * t364) * t285, 0, 0, 0, 0, 0, 0, -t153 * t368 - t184 * t332 + t251 * t204 - t216 * t392, t152 * t368 + t185 * t332 - t252 * t204 + t216 * t391, t152 * t251 - t153 * t252 - t184 * t391 + t185 * t392, t121 * t332 + t58 * t251 + t57 * t252 - t285 * t367 - t391 * t89 - t392 * t88, 0, 0, 0, 0, 0, 0, t127 * t332 + t204 * t320 - t309 * t393 - t368 * t77, -t208 * t204 - t309 * t394 + t321 * t332 + t368 * t76, -t127 * t394 - t208 * t77 + t320 * t76 + t321 * t393, t10 * t320 - t354 * t208 - t99 * t242 + t394 * t33 - t393 * t32 + (t384 * t99 - t436 * t93) * t285, 0, 0, 0, 0, 0, 0, t106 * t393 + t193 * t77 - t320 * t52 + t395 * t462, t108 * t393 + t315 * t77 + t320 * t51 - t396 * t462, -t106 * t396 - t108 * t395 + t193 * t51 + t315 * t52, t16 * t396 + t193 * t3 - t2 * t315 + t30 * t393 - t320 * t8 - t328 * t395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t405, -t219 ^ 2 + t223 ^ 2, -t219 * t245 - t439, -t405, -t223 * t245 - t230 * t375, 0, -t146 * t245 - t176 * t223 - t310 * t359 - t448, t176 * t219 - t245 * t451 + t312 * t359 - t447, 0, 0, -t152 * t290 + t185 * t347 (-t152 + t409) * t293 + (-t153 - t407) * t290, -t185 * t223 + t204 * t290 + t216 * t347, -t153 * t293 - t184 * t348, -t184 * t223 + t204 * t293 - t216 * t348, -t216 * t223, -pkin(3) * t153 - t117 * t293 + t146 * t184 - t223 * t88 + (-pkin(10) * t382 - t102) * t216 + t317 * t290, pkin(3) * t152 + t117 * t290 - t146 * t185 + t223 * t89 + (pkin(10) * t383 + t103) * t216 + t317 * t293, t102 * t185 - t103 * t184 + ((qJD(4) * t185 - t153) * pkin(10) + t455) * t293 + ((-qJD(4) * t184 - t152) * pkin(10) + t454) * t290, -pkin(3) * t117 - t102 * t88 - t103 * t89 - t121 * t146 + (-t290 * t58 + t293 * t57 + (-t290 * t89 - t293 * t88) * qJD(4)) * pkin(10), -t257 * t76 - t321 * t390, t127 * t390 + t256 * t76 - t257 * t77 - t321 * t389, t257 * t204 - t321 * t223 - t309 * t390, t127 * t389 + t426, t127 * t223 - t256 * t204 - t309 * t389, -t309 * t223, t127 * t334 + t204 * t319 - t32 * t223 + t93 * t256 + t280 * t77 - t309 * t418 + t389 * t99, -t241 * t204 + t33 * t223 + t93 * t257 - t280 * t76 - t309 * t420 + t321 * t334 - t390 * t99, -t10 * t257 - t127 * t420 - t241 * t77 + t256 * t354 + t319 * t76 + t32 * t390 + t321 * t418 - t33 * t389, t10 * t319 - t241 * t354 + t280 * t93 - t32 * t418 + t33 * t420 + t334 * t99, t108 * t313 - t403 * t51, t351 * t108 + t350 * t106 + (t48 - t50 + (-t108 * t292 + t415) * qJD(6)) * t257, t108 * t389 - t256 * t51 + t313 * t462 + t403 * t77, t106 * t314 + t404 * t52, -t106 * t389 - t256 * t52 - t314 * t462 - t404 * t77, t389 * t462 + t426, t106 * t419 + t182 * t77 + t256 * t3 + t30 * t314 - t319 * t52 - t328 * t389 + t404 * t8 + t423 * t462, t108 * t419 - t16 * t389 - t183 * t77 - t2 * t256 + t30 * t313 + t319 * t51 + t403 * t8 - t424 * t462, t182 * t51 - t183 * t52 + t351 * t16 - t350 * t328 - t423 * t108 - t424 * t106 + (-qJD(6) * t449 - t2 * t288 - t292 * t3) * t257, t16 * t424 + t182 * t3 + t183 * t2 + t30 * t419 - t319 * t8 - t328 * t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t408, -t184 ^ 2 + t185 ^ 2, -t152 - t409, t408, -t153 + t407, t204, -t121 * t185 - t454, -t121 * t184 - t455, 0, 0, t410, t461, t460, -t410, t440, t204, t34 * t216 + (t34 - t33) * qJD(5) + (-t185 * t127 + t204 * t435 - t309 * t381) * pkin(4) + t442, t35 * t309 + (-t185 * t321 - t289 * t204 - t309 * t360) * pkin(4) + t459, t33 * t321 + t35 * t127 - t32 * t127 - t34 * t321 + (t435 * t76 - t289 * t77 + (-t127 * t435 + t289 * t321) * qJD(5)) * pkin(4), t32 * t34 - t33 * t35 + (t435 * t10 - t185 * t99 - t289 * t354 + (-t289 * t32 + t33 * t435) * qJD(5)) * pkin(4), t468, t472, t467, t415 * t462 - t50, t471, -t453, t279 * t52 + t329 * t288 + t337 * t106 + (-t278 * t378 - t288 * t344 - t19) * t462 + t444, -t279 * t51 + t329 * t292 + t337 * t108 + (t278 * t379 - t292 * t344 + t20) * t462 + t443, t20 * t106 + t19 * t108 + t1 + (-t106 * t344 + t127 * t328 - t278 * t52 + (t108 * t278 + t328) * qJD(6)) * t292 + (t108 * t344 - t127 * t16 - t278 * t51 - t3 + (t106 * t278 - t16) * qJD(6)) * t288, t328 * t19 - t16 * t20 + t8 * t279 - t30 * t34 + (t289 * t30 + t435 * t449) * qJD(5) * pkin(4) + t299 * t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t410, t461, t460, -t410, t440, t204, t216 * t33 + t442, t309 * t32 + t459, 0, 0, t468, t472, t467, t106 * t470 - t50, t471, -t453, -pkin(5) * t52 - pkin(12) * t421 - t106 * t33 - t21 * t462 + t288 * t466 + t444, t30 * t463 + pkin(5) * t51 - t108 * t33 + t462 * t22 + (t379 * t462 - t73) * pkin(12) + t443, t106 * t22 + t108 * t21 + t1 + (t433 + (-t52 + t380) * pkin(12)) * t292 + ((qJD(6) * t106 - t51) * pkin(12) + t456) * t288, -pkin(5) * t8 + pkin(12) * t299 - t16 * t22 + t21 * t328 - t30 * t33; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t414, -t106 ^ 2 + t108 ^ 2, t106 * t462 - t51, -t414, t108 * t462 - t52, t77, -t108 * t30 - t456, t106 * t30 - t2 - t433, 0, 0;];
tauc_reg  = t6;
