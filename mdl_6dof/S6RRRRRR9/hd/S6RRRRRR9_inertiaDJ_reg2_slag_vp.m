% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 05:48
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRRR9_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR9_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR9_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRRRR9_inertiaDJ_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 05:39:15
% EndTime: 2019-03-10 05:40:41
% DurationCPUTime: 41.42s
% Computational Cost: add. (43046->1013), mult. (126291->1767), div. (0->0), fcn. (129858->14), ass. (0->408)
t179 = sin(pkin(6));
t183 = sin(qJ(2));
t182 = sin(qJ(3));
t187 = cos(qJ(2));
t498 = cos(pkin(7));
t399 = t187 * t498;
t186 = cos(qJ(3));
t485 = t183 * t186;
t327 = t182 * t399 + t485;
t400 = t186 * t498;
t486 = t182 * t187;
t255 = qJD(2) * (t183 * t400 + t486) + qJD(3) * t327;
t241 = t255 * t179;
t178 = sin(pkin(7));
t499 = cos(pkin(6));
t398 = qJD(3) * t499;
t366 = t182 * t398;
t345 = t178 * t366;
t229 = t345 + t241;
t369 = t186 * t399;
t488 = t182 * t183;
t325 = t369 - t488;
t401 = t186 * t499;
t370 = t178 * t401;
t520 = t179 * t325 + t370;
t555 = -0.2e1 * t229 * t520;
t342 = t179 * (-pkin(10) * t498 - pkin(9));
t439 = pkin(1) * t499;
t384 = t187 * t439;
t288 = t183 * t342 + t384;
t437 = t499 * pkin(2);
t274 = t437 + t288;
t443 = -pkin(2) * t187 - pkin(1);
t495 = t178 * t183;
t322 = t179 * (-pkin(10) * t495 + t443);
t227 = t178 * t322 + t498 * t274;
t172 = t178 ^ 2;
t553 = -t498 ^ 2 - t172;
t181 = sin(qJ(4));
t185 = cos(qJ(4));
t492 = t179 * t187;
t338 = t178 * t492 - t498 * t499;
t323 = t338 * pkin(11);
t307 = t178 * t499 + t179 * t399;
t385 = t183 * t439;
t318 = -pkin(9) * t492 - t385;
t263 = pkin(10) * t307 - t318;
t67 = t182 * t227 + t186 * t263;
t209 = -t323 + t67;
t283 = qJD(2) * (t187 * t342 - t385);
t474 = qJD(2) * t179;
t312 = (-pkin(10) * t178 * t187 + pkin(2) * t183) * t474;
t296 = t307 * qJD(3);
t472 = qJD(2) * t187;
t413 = t179 * t472;
t397 = t498 * qJD(2);
t367 = t183 * t397;
t346 = t179 * t367;
t469 = qJD(3) * t183;
t431 = t179 * t469;
t477 = (t346 + t431) * t182;
t543 = -t186 * (t296 + t413) + t477;
t549 = -pkin(3) * t229 - pkin(11) * t543 + qJD(4) * t209 + t178 * t283 - t312 * t498;
t402 = t182 * t499;
t278 = t178 * t402 + t179 * t327;
t222 = -pkin(3) * t520 - pkin(11) * t278;
t207 = -t178 * t274 + t322 * t498 + t222;
t473 = qJD(2) * t183;
t414 = t179 * t473;
t375 = t178 * t414;
t523 = -qJD(2) * t288 - t227 * qJD(3);
t524 = qJD(3) * t263 - t178 * t312 - t498 * t283;
t48 = t182 * t524 + t186 * t523;
t550 = -pkin(11) * t375 - qJD(4) * t207 + t48;
t18 = t181 * t549 + t185 * t550;
t234 = -t181 * t338 + t185 * t278;
t324 = t338 * pkin(3);
t98 = t181 * t278 + t185 * t338;
t217 = t98 * pkin(4) - pkin(12) * t234 + t324;
t66 = -t182 * t263 + t186 * t227;
t201 = t217 - t66;
t552 = -pkin(12) * t229 - qJD(5) * t201 + t18;
t275 = t520 * pkin(12);
t310 = t384 + t437;
t493 = t179 * t183;
t455 = pkin(9) * t493;
t289 = t310 - t455;
t343 = -t179 * pkin(1) - pkin(2) * t492;
t534 = t178 * t343 + t289 * t498;
t199 = t181 * (-t178 * t289 + t343 * t498 + t222) + t185 * (t182 * t534 - t186 * t318 - t323);
t510 = pkin(10) * t185;
t38 = (t370 + (t553 * t488 + t369) * t179) * t510 + t199;
t197 = -t275 + t38;
t49 = t182 * t523 - t186 * t524;
t45 = -pkin(3) * t375 - t49;
t271 = qJD(4) * t278;
t108 = t181 * t271;
t396 = t498 * qJD(3);
t336 = (t396 + qJD(2)) * t185;
t433 = qJD(2) * t178 * t181;
t481 = t186 * t187;
t265 = t179 * (t433 * t183 + t336 * t481) - t108;
t364 = t186 * t398;
t313 = t178 * t364 - t477;
t314 = t338 * qJD(4);
t542 = (-t314 + t313) * t185;
t545 = -t265 - t542;
t58 = (t271 - t375) * t185 + (-t543 - t314) * t181;
t551 = t58 * pkin(4) + pkin(12) * t545 - qJD(5) * t197 + t45;
t382 = pkin(2) * t400;
t311 = -pkin(3) * t498 - t382;
t496 = t178 * t182;
t456 = pkin(10) * t496;
t129 = t311 + t456;
t403 = t181 * t498;
t487 = t182 * t185;
t328 = t178 * t487 + t403;
t136 = t181 * t496 - t185 * t498;
t505 = t136 * pkin(4);
t238 = -pkin(12) * t328 + t129 + t505;
t470 = qJD(3) * t182;
t416 = t178 * t470;
t438 = pkin(2) * t498;
t383 = t182 * t438;
t309 = pkin(11) * t498 + t383;
t494 = t178 * t186;
t454 = pkin(10) * t494;
t290 = t309 + t454;
t285 = qJD(4) * t290;
t362 = pkin(3) * t182 - pkin(11) * t186;
t471 = qJD(3) * t178;
t333 = t362 * t471;
t316 = -t382 + t456;
t301 = t316 * qJD(3);
t442 = -pkin(11) * t182 - pkin(2);
t348 = -pkin(3) * t186 + t442;
t335 = t348 * t178;
t544 = -qJD(4) * t335 + t301;
t72 = t544 * t185 + (t285 - t333) * t181;
t548 = -pkin(12) * t416 - qJD(5) * t238 + t72;
t547 = qJD(5) * t520 + t545;
t303 = t328 * qJD(4);
t468 = qJD(3) * t186;
t415 = t178 * t468;
t114 = t181 * t415 + t303;
t298 = t185 * t309;
t235 = t298 + (t181 * t442 + (-pkin(3) * t181 - pkin(12) + t510) * t186) * t178;
t365 = t182 * t396;
t430 = qJD(4) * t496;
t155 = t181 * t430;
t395 = t498 * qJD(4);
t522 = -t185 * (t395 + t415) + t155;
t546 = -pkin(2) * t365 - t114 * pkin(4) - pkin(10) * t415 - pkin(12) * t522 + qJD(5) * t235;
t254 = t182 * t472 + t183 * t468 + t186 * t367 + t187 * t365;
t540 = (t254 * t98 - t325 * t58) * t179;
t180 = sin(qJ(5));
t184 = cos(qJ(5));
t231 = qJD(5) * t234;
t89 = t180 * t231;
t539 = t179 * (t255 * t180 + ((t182 * qJD(5) + t433) * t183 + (-qJD(5) * t498 + t336) * t481) * t184) + t180 * t345 - t89 + (-qJD(5) * t370 - t108 + t542) * t184;
t299 = (-t231 + t345) * t184 + t547 * t180;
t224 = t184 * t241 + t299;
t95 = t234 * t180;
t264 = t184 * t520 + t95;
t257 = qJD(5) * t264;
t538 = t180 * t257 + t224 * t184;
t537 = -t180 * t224 + t184 * t257;
t162 = t184 * t494;
t304 = qJD(5) * t328;
t253 = qJD(5) * t162 + t184 * t522 + (t304 - t416) * t180;
t115 = -t180 * t494 + t184 * t328;
t461 = t115 * qJD(5);
t536 = -t180 * t461 - t253 * t184;
t418 = t184 * t461;
t535 = -t253 * t180 + t418;
t479 = t180 * t328 + t162;
t393 = qJD(5) * t479;
t464 = qJD(5) * t180;
t423 = t186 * t464;
t480 = t180 * t522 - t184 * t304;
t521 = -t178 * (t184 * t470 + t423) - t480;
t533 = t180 * t393 - t184 * t521;
t531 = t553 * t493;
t514 = cos(qJ(6));
t404 = t514 * qJD(6);
t530 = t514 * qJD(5) + t404;
t466 = qJD(4) * t185;
t412 = t180 * t466;
t463 = qJD(5) * t184;
t329 = t181 * t463 + t412;
t425 = t181 * t464;
t529 = -t184 * t466 + t425;
t528 = -t114 * t184 + t136 * t464;
t171 = qJD(4) * t181;
t100 = -t185 * t114 + t136 * t171;
t527 = t180 * t58 + t98 * t463;
t526 = -t184 * t58 + t98 * t464;
t50 = t98 * t171 - t185 * t58;
t174 = t180 ^ 2;
t176 = t184 ^ 2;
t476 = t174 - t176;
t392 = qJD(5) * t476;
t525 = qJD(5) + qJD(6);
t467 = qJD(4) * t184;
t409 = t181 * t467;
t462 = qJD(5) * t185;
t424 = t180 * t462;
t330 = t409 + t424;
t511 = pkin(4) * t185;
t361 = -pkin(12) * t181 - t511;
t347 = -pkin(3) + t361;
t337 = t184 * t347;
t360 = pkin(4) * t181 - pkin(12) * t185;
t340 = t360 * t180;
t101 = pkin(11) * t330 - qJD(4) * t340 - qJD(5) * t337;
t515 = -pkin(13) - pkin(12);
t519 = t181 * t515 - pkin(3) - t511;
t518 = t182 ^ 2;
t177 = t185 ^ 2;
t517 = t186 ^ 2;
t516 = 0.2e1 * qJD(3);
t513 = sin(qJ(6));
t512 = pkin(2) * t178;
t509 = pkin(11) * t178;
t508 = pkin(11) * t181;
t507 = pkin(11) * t185;
t506 = pkin(12) * t180;
t504 = t180 * pkin(11);
t503 = t184 * pkin(4);
t22 = t180 * t201 + t184 * t197;
t64 = t180 * t238 + t184 * t235;
t491 = t180 * t181;
t490 = t180 * t185;
t489 = t181 * t184;
t484 = t184 * t185;
t482 = t185 * t186;
t168 = pkin(11) * t484;
t126 = t180 * t347 + t168;
t175 = t181 ^ 2;
t475 = t175 - t177;
t465 = qJD(4) * t186;
t53 = 0.2e1 * t98 * t58;
t459 = -0.2e1 * pkin(3) * qJD(4);
t458 = -0.2e1 * pkin(4) * qJD(5);
t105 = 0.2e1 * t136 * t114;
t457 = pkin(11) * t490;
t453 = t514 * pkin(5);
t452 = pkin(5) * t464;
t451 = pkin(11) * t171;
t450 = pkin(11) * t466;
t449 = pkin(12) * t463;
t444 = -t181 * t544 + t185 * t285;
t170 = -pkin(5) * t184 - pkin(4);
t440 = -pkin(5) - t504;
t436 = t514 * t184;
t435 = t513 * t180;
t173 = t179 ^ 2;
t434 = t173 * t472;
t432 = t172 * t470;
t428 = t181 * t465;
t421 = t184 * t462;
t420 = t115 * t466;
t417 = t136 * t466;
t411 = t180 * t463;
t410 = t181 * t466;
t408 = qJD(4) * t514;
t407 = qJD(4) * t513;
t406 = qJD(6) * t513;
t394 = qJD(4) * t479;
t391 = t475 * qJD(4);
t390 = 0.2e1 * t410;
t389 = pkin(5) * t404;
t388 = pkin(5) * t406;
t387 = t515 * t514;
t386 = t515 * t513;
t381 = t181 * t435;
t380 = t172 * t414;
t379 = t185 * t409;
t378 = t175 * t411;
t377 = t186 * t432;
t376 = t183 * t434;
t374 = t185 * t408;
t373 = t185 * t407;
t368 = t499 * t474;
t363 = qJD(4) * t401;
t6 = -t551 * t180 + t184 * t552;
t7 = t180 * t552 + t551 * t184;
t359 = -t7 * t180 - t6 * t184;
t358 = t514 * t479;
t357 = t513 * t479;
t356 = t185 * t394;
t41 = t114 * t98 + t136 * t58;
t19 = t181 * t550 - t185 * t549;
t354 = -t18 * t185 - t19 * t181;
t30 = t180 * t546 + t184 * t548;
t31 = t180 * t548 - t184 * t546;
t353 = -t31 * t180 - t30 * t184;
t73 = t185 * t333 - t444;
t352 = -t73 * t181 - t72 * t185;
t351 = t180 * t387;
t350 = t180 * t386;
t125 = t337 - t457;
t349 = -t125 * t184 - t126 * t180;
t68 = (-t182 * pkin(4) - t185 * t362) * t471 + t444;
t103 = -t181 * t290 + t185 * t335;
t99 = pkin(4) * t494 - t103;
t341 = t68 * t180 + t463 * t99;
t339 = t114 * t180 + t136 * t463;
t204 = t180 * t229 - t184 * t547 - t89;
t188 = t58 * pkin(5) - pkin(13) * t204 + t7;
t71 = -t180 * t520 + t184 * t234;
t192 = t98 * pkin(5) - t71 * pkin(13) - t180 * t197 + t184 * t201;
t191 = t514 * t192;
t193 = pkin(13) * t224 - t6;
t20 = -pkin(13) * t264 + t22;
t1 = -qJD(6) * t191 - t513 * t188 - t514 * t193 + t20 * t406;
t194 = t114 * pkin(5) + pkin(13) * t253 + t31;
t212 = t136 * pkin(5) - t115 * pkin(13) - t180 * t235 + t184 * t238;
t211 = t514 * t212;
t215 = -pkin(13) * t521 - t30;
t56 = -pkin(13) * t479 + t64;
t10 = -qJD(6) * t211 - t513 * t194 - t514 * t215 + t406 * t56;
t150 = t180 * t514 + t184 * t513;
t332 = t181 * t470 - t185 * t465;
t116 = -pkin(13) * t491 + t126;
t228 = (-t180 * t519 - t168) * qJD(5) + (t515 * t484 + (-t440 + t503) * t181) * qJD(4);
t244 = -pkin(13) * t329 - t101;
t284 = t184 * t519 + t440 * t185;
t268 = t514 * t284;
t46 = -qJD(6) * t268 + t116 * t406 - t513 * t228 - t514 * t244;
t320 = t178 * t338;
t142 = t383 + t454;
t317 = -t384 + t455;
t306 = qJD(3) * t320;
t305 = qJD(4) * t325;
t160 = t515 * t184;
t118 = -t160 * t514 + t350;
t300 = pkin(9) * t495 + t443 * t498;
t295 = pkin(10) * t482 + t181 * t348;
t102 = -t126 * qJD(5) + (pkin(11) * t491 + t184 * t360) * qJD(4);
t287 = qJD(5) * t349 - t101 * t184 - t102 * t180;
t273 = t178 * t278;
t272 = qJD(3) * t520;
t267 = t513 * t284;
t261 = t180 * t521 + t184 * t393;
t258 = qJD(4) * t264;
t256 = t185 * (-pkin(3) * t401 - pkin(11) * t402 - t310);
t113 = t525 * t150;
t250 = t514 * t264;
t249 = t513 * t264;
t248 = t185 * t258;
t243 = t178 * t543;
t82 = t116 * t514 + t267;
t237 = t514 * t228 - t244 * t513;
t226 = t185 * (-pkin(3) * t325 - pkin(11) * t327 + t300);
t223 = -0.2e1 * t172 * t182 * t364 + (t518 * t469 + ((-t397 - qJD(3)) * t485 + (-0.2e1 * t396 - qJD(2)) * t486) * t186) * t178 * t179;
t210 = t513 * t212;
t203 = t181 * t204;
t202 = t204 * t184;
t16 = -pkin(4) * t229 - t19;
t11 = -qJD(6) * t210 + t514 * t194 - t215 * t513 - t404 * t56;
t190 = t513 * t192;
t2 = -qJD(6) * t190 + t514 * t188 - t193 * t513 - t20 * t404;
t164 = -0.2e1 * t410;
t152 = -0.2e1 * t377;
t151 = (pkin(5) * t180 + pkin(11)) * t181;
t149 = t435 - t436;
t135 = t181 * t436 - t381;
t134 = t150 * t181;
t133 = t318 * qJD(2);
t132 = t317 * qJD(2);
t131 = qJD(3) * t142;
t123 = pkin(5) * t329 + t450;
t119 = t181 * t392 - t184 * t412;
t117 = t160 * t513 + t351;
t112 = (qJD(5) * t513 + t406) * t180 - t530 * t184;
t104 = t178 * t295 + t298;
t94 = (-t178 * t318 + t438 * t493) * qJD(2);
t93 = -t118 * qJD(6) + (t184 * t387 - t350) * qJD(5);
t92 = -t160 * t406 - t351 * t525 - t386 * t463;
t88 = -t178 * t310 + t179 * t300;
t87 = t180 * t374 + (t181 * t530 + t373) * t184 - t525 * t381;
t86 = t113 * t181 + t180 * t373 - t184 * t374;
t85 = t115 * t514 - t357;
t84 = t115 * t513 + t358;
t81 = -t116 * t513 + t268;
t74 = pkin(5) * t479 + t99;
t63 = -t180 * t298 + t184 * (-pkin(12) * t403 + t311 + t505) + (-t180 * (-t186 * pkin(12) + t295) + t184 * (pkin(10) * t182 - pkin(12) * t487)) * t178;
t62 = t324 - t66;
t61 = t181 * t209;
t54 = -t480 * pkin(5) + (-pkin(5) * t423 + (pkin(11) * t482 + (-pkin(3) * t185 + t170) * t182) * qJD(3)) * t178 + t444;
t52 = t514 * t71 - t249;
t51 = t513 * t71 + t250;
t47 = -qJD(6) * t82 + t237;
t43 = -qJD(6) * t357 + t115 * t404 - t253 * t513 + t514 * t521;
t42 = qJD(6) * t358 + t115 * t406 + t253 * t514 + t513 * t521;
t37 = t256 * t178 + t226 * t179 - t61;
t36 = t61 + (pkin(4) * t401 - t256) * t178 + (pkin(4) * t325 - t226) * t179;
t29 = t514 * t56 + t210;
t28 = -t513 * t56 + t211;
t27 = pkin(4) * t520 + pkin(5) * t264 - t185 * t207 + t61;
t21 = -t180 * (-t275 + t199) + t184 * (-t182 * t318 - t186 * t534 + t217) + (-(t182 * t531 + t186 * t307) * t490 + t184 * (t182 * t307 - t186 * t531)) * pkin(10);
t14 = -qJD(6) * t249 + t204 * t513 - t224 * t514 + t404 * t71;
t13 = qJD(6) * t250 - t204 * t514 - t224 * t513 + t406 * t71;
t12 = -pkin(5) * t224 + t16;
t9 = t20 * t514 + t190;
t8 = -t20 * t513 + t191;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t376, 0.2e1 * (-t183 ^ 2 + t187 ^ 2) * t173 * qJD(2), 0.2e1 * t187 * t368, -0.2e1 * t376, -0.2e1 * t183 * t368, 0, -0.2e1 * pkin(1) * t173 * t473 + 0.2e1 * t133 * t499, -0.2e1 * pkin(1) * t434 + 0.2e1 * t132 * t499, 0.2e1 * (-t132 * t187 - t133 * t183 + (t183 * t318 + t187 * t317) * qJD(2)) * t179, 0.2e1 * t132 * t318 - 0.2e1 * t133 * t317, -0.2e1 * t278 * t543, -0.2e1 * t229 * t278 - 0.2e1 * t520 * t543, 0.2e1 * t273 * t414 + 0.2e1 * t338 * t543, t555, 0.2e1 * t229 * t338 + 0.2e1 * t375 * t520, -0.2e1 * t320 * t414, 0.2e1 * t229 * t88 - 0.2e1 * t338 * t49 + 0.2e1 * t375 * t66 - 0.2e1 * t520 * t94, 0.2e1 * t278 * t94 - 0.2e1 * t338 * t48 - 0.2e1 * t375 * t67 - 0.2e1 * t543 * t88, -0.2e1 * t229 * t67 - 0.2e1 * t278 * t49 - 0.2e1 * t48 * t520 + 0.2e1 * t543 * t66, -0.2e1 * t48 * t67 + 0.2e1 * t49 * t66 + 0.2e1 * t88 * t94, -0.2e1 * t234 * t545, -0.2e1 * t234 * t58 + 0.2e1 * t545 * t98, 0.2e1 * t229 * t234 + 0.2e1 * t520 * t545, t53, 0.2e1 * (-t366 * t98 + t401 * t58) * t178 - 0.2e1 * t540, t555, -0.2e1 * t19 * t520 + 0.2e1 * t229 * t37 + 0.2e1 * t45 * t98 + 0.2e1 * t62 * t58, -0.2e1 * t18 * t520 - 0.2e1 * t229 * t38 + 0.2e1 * t234 * t45 - 0.2e1 * t545 * t62, 0.2e1 * t18 * t98 - 0.2e1 * t19 * t234 + 0.2e1 * t37 * t545 - 0.2e1 * t38 * t58, -0.2e1 * t18 * t38 + 0.2e1 * t19 * t37 + 0.2e1 * t45 * t62, 0.2e1 * t71 * t204, -0.2e1 * t204 * t264 + 0.2e1 * t224 * t71, 0.2e1 * t539 * t98 + 0.2e1 * t58 * t71, -0.2e1 * t264 * t224, 0.2e1 * t58 * (-t184 * t370 - t95) + 0.2e1 * t98 * t299 + 0.2e1 * t184 * t540, t53, 0.2e1 * t16 * t264 + 0.2e1 * t21 * t58 - 0.2e1 * t224 * t36 + 0.2e1 * t7 * t98, 0.2e1 * t16 * t71 + 0.2e1 * t204 * t36 - 0.2e1 * t22 * t58 + 0.2e1 * t6 * t98, -0.2e1 * t204 * t21 + 0.2e1 * t22 * t224 + 0.2e1 * t264 * t6 - 0.2e1 * t7 * t71, 0.2e1 * t16 * t36 + 0.2e1 * t21 * t7 - 0.2e1 * t22 * t6, -0.2e1 * t52 * t13, 0.2e1 * t13 * t51 - 0.2e1 * t14 * t52, -0.2e1 * t13 * t98 + 0.2e1 * t52 * t58, 0.2e1 * t51 * t14, -0.2e1 * t14 * t98 - 0.2e1 * t51 * t58, t53, 0.2e1 * t12 * t51 + 0.2e1 * t14 * t27 + 0.2e1 * t2 * t98 + 0.2e1 * t58 * t8, 0.2e1 * t1 * t98 + 0.2e1 * t12 * t52 - 0.2e1 * t13 * t27 - 0.2e1 * t58 * t9, 0.2e1 * t1 * t51 + 0.2e1 * t13 * t8 - 0.2e1 * t14 * t9 - 0.2e1 * t2 * t52, -0.2e1 * t1 * t9 + 0.2e1 * t12 * t27 + 0.2e1 * t2 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t413, 0, -t414, 0, t133, t132, 0, 0 (t517 * t431 + ((0.2e1 * t296 + t413) * t186 - t477) * t182) * t178, -t186 * t243 - t229 * t496 + t272 * t494 - t273 * t470, t182 * t380 - t186 * t306 - t498 * t543, t223, t182 * t306 + t186 * t380 - t229 * t498, t178 * t346, t131 * t338 - t229 * t512 - t316 * t375 + t416 * t88 + t49 * t498 - t494 * t94, pkin(2) * t243 - t142 * t375 - t301 * t338 + t415 * t88 + t48 * t498 + t496 * t94, t131 * t278 - t142 * t229 - t415 * t66 - t416 * t67 - t48 * t494 - t49 * t496 + (-t543 - t272) * t316, -t66 * t131 - t48 * t142 - t301 * t67 - t316 * t49 - t512 * t94, -t234 * t522 - t328 * t545, -t114 * t234 + t136 * t545 - t328 * t58 + t522 * t98, t229 * t328 + t234 * t416 + t494 * t545 + t520 * t522, t41, t114 * t520 - t136 * t229 - t416 * t98 + t494 * t58, t223, t103 * t229 + t62 * t114 + t129 * t58 + t131 * t98 + t45 * t136 - t19 * t494 + t37 * t416 - t520 * t73, -t104 * t229 - t129 * t545 + t131 * t234 - t18 * t494 + t328 * t45 - t38 * t416 - t520 * t72 - t522 * t62, t103 * t545 - t104 * t58 - t38 * t114 + t18 * t136 - t19 * t328 - t234 * t73 + t37 * t522 + t72 * t98, t103 * t19 - t104 * t18 + t129 * t45 + t131 * t62 + t37 * t73 - t38 * t72, t115 * t539 - t253 * t71, t115 * t224 - t204 * t479 + t253 * t264 - t521 * t71, t114 * t71 + t58 * t115 + t136 * t204 - t253 * t98, -t224 * t479 + t264 * t521, -t114 * t264 + t136 * t224 - t479 * t58 - t521 * t98, t41, t21 * t114 + t7 * t136 + t16 * t479 - t224 * t99 + t264 * t68 + t31 * t98 + t36 * t521 + t63 * t58, -t22 * t114 + t16 * t115 + t6 * t136 + t204 * t99 - t253 * t36 + t30 * t98 - t64 * t58 + t68 * t71, -t7 * t115 - t204 * t63 + t21 * t253 - t22 * t521 + t224 * t64 + t264 * t30 - t31 * t71 + t479 * t6, t16 * t99 + t21 * t31 - t22 * t30 + t36 * t68 - t6 * t64 + t63 * t7, -t13 * t85 - t42 * t52, t13 * t84 - t14 * t85 + t42 * t51 - t43 * t52, t114 * t52 - t13 * t136 - t42 * t98 + t58 * t85, t14 * t84 + t43 * t51, -t114 * t51 - t136 * t14 - t43 * t98 - t58 * t84, t41, t11 * t98 + t114 * t8 + t12 * t84 + t136 * t2 + t14 * t74 + t27 * t43 + t28 * t58 + t51 * t54, t1 * t136 + t10 * t98 - t114 * t9 + t12 * t85 - t13 * t74 - t27 * t42 - t29 * t58 + t52 * t54, t1 * t84 + t10 * t51 - t11 * t52 + t13 * t28 - t14 * t29 - t2 * t85 + t42 * t8 - t43 * t9, -t1 * t29 - t10 * t9 + t11 * t8 + t12 * t74 + t2 * t28 + t27 * t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t377 (t517 - t518) * t172 * t516, 0.2e1 * t396 * t494, t152, -0.2e1 * t178 * t365, 0, -0.2e1 * pkin(2) * t432 - 0.2e1 * t131 * t498 (-t172 * pkin(2) * t186 + t316 * t498) * t516, 0.2e1 * t131 * t496 - 0.2e1 * t142 * t416 - 0.2e1 * t301 * t494 + 0.2e1 * t316 * t415, 0.2e1 * t131 * t316 - 0.2e1 * t142 * t301, -0.2e1 * t328 * t522, -0.2e1 * t114 * t328 + 0.2e1 * t136 * t522, 0.2e1 * t328 * t416 + 0.2e1 * t494 * t522, t105, 0.2e1 * (t114 * t186 - t136 * t470) * t178, t152, 0.2e1 * t114 * t129 + 0.2e1 * t131 * t136 + 0.2e1 * (t103 * t470 - t186 * t73) * t178, -0.2e1 * t104 * t416 - 0.2e1 * t129 * t522 + 0.2e1 * t131 * t328 - 0.2e1 * t494 * t72, 0.2e1 * t103 * t522 - 0.2e1 * t104 * t114 + 0.2e1 * t72 * t136 - 0.2e1 * t328 * t73, 0.2e1 * t103 * t73 - 0.2e1 * t104 * t72 + 0.2e1 * t129 * t131, -0.2e1 * t115 * t253, -0.2e1 * t115 * t521 + 0.2e1 * t253 * t479, 0.2e1 * t114 * t115 - 0.2e1 * t136 * t253, 0.2e1 * t479 * t521, -0.2e1 * t114 * t479 - 0.2e1 * t136 * t521, t105, 0.2e1 * t63 * t114 + 0.2e1 * t31 * t136 + 0.2e1 * t479 * t68 + 0.2e1 * t521 * t99, -0.2e1 * t64 * t114 + 0.2e1 * t68 * t115 + 0.2e1 * t30 * t136 - 0.2e1 * t253 * t99, -0.2e1 * t31 * t115 + 0.2e1 * t253 * t63 + 0.2e1 * t30 * t479 - 0.2e1 * t521 * t64, -0.2e1 * t30 * t64 + 0.2e1 * t31 * t63 + 0.2e1 * t68 * t99, -0.2e1 * t85 * t42, 0.2e1 * t42 * t84 - 0.2e1 * t43 * t85, 0.2e1 * t114 * t85 - 0.2e1 * t136 * t42, 0.2e1 * t84 * t43, -0.2e1 * t114 * t84 - 0.2e1 * t136 * t43, t105, 0.2e1 * t11 * t136 + 0.2e1 * t114 * t28 + 0.2e1 * t43 * t74 + 0.2e1 * t54 * t84, 0.2e1 * t10 * t136 - 0.2e1 * t114 * t29 - 0.2e1 * t42 * t74 + 0.2e1 * t54 * t85, 0.2e1 * t10 * t84 - 0.2e1 * t11 * t85 + 0.2e1 * t28 * t42 - 0.2e1 * t29 * t43, -0.2e1 * t10 * t29 + 0.2e1 * t11 * t28 + 0.2e1 * t54 * t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t543, 0, -t229, t375, t49, t48, 0, 0, t177 * t271 + ((-0.2e1 * t314 + t313) * t185 + t265) * t181, -t171 * t234 - t58 * t181 - t185 * t545 - t466 * t98 (t181 * t366 - t185 * t363) * t178 + (t181 * t254 - t185 * t305) * t179, t50 (t181 * t363 + t185 * t366) * t178 + (t181 * t305 + t185 * t254) * t179, 0, -pkin(3) * t58 + t171 * t62 - t45 * t185 - t229 * t508 + t450 * t520, pkin(3) * t545 + t45 * t181 - t229 * t507 - t451 * t520 + t466 * t62, pkin(11) * t50 - t171 * t38 + t234 * t450 - t37 * t466 - t508 * t545 + t354, -pkin(3) * t45 + ((-t38 * t181 - t37 * t185) * qJD(4) + t354) * pkin(11), t181 * t202 - t529 * t71, -t180 * t203 + t181 * t538 - t184 * t248 - t329 * t71, t171 * t71 - t185 * t204 + t489 * t58 - t529 * t98, t180 * t248 + t181 * t537, -t181 * t258 - t185 * t224 - t329 * t98 - t491 * t58, t50, t102 * t98 + t125 * t58 + t16 * t491 + t171 * t21 - t7 * t185 - t224 * t508 + t264 * t450 + t329 * t36, pkin(11) * t203 + t101 * t98 - t126 * t58 + t16 * t489 - t171 * t22 - t6 * t185 - t36 * t529 + t450 * t71, t101 * t264 - t102 * t71 - t125 * t204 + t126 * t224 + t21 * t529 - t22 * t329 - t489 * t7 + t491 * t6, -t101 * t22 + t102 * t21 + t125 * t7 - t126 * t6 + (t16 * t181 + t36 * t466) * pkin(11), -t13 * t135 - t52 * t86, t13 * t134 - t135 * t14 + t51 * t86 - t52 * t87, t13 * t185 + t135 * t58 + t171 * t52 - t86 * t98, t134 * t14 + t51 * t87, -t134 * t58 + t14 * t185 - t171 * t51 - t87 * t98, t50, t12 * t134 + t123 * t51 + t14 * t151 + t171 * t8 - t185 * t2 + t27 * t87 + t47 * t98 + t58 * t81, -t1 * t185 + t12 * t135 + t123 * t52 - t13 * t151 - t171 * t9 - t27 * t86 + t46 * t98 - t58 * t82, t1 * t134 + t13 * t81 - t135 * t2 - t14 * t82 + t46 * t51 - t47 * t52 + t8 * t86 - t87 * t9, -t1 * t82 + t12 * t151 + t123 * t27 + t2 * t81 - t46 * t9 + t47 * t8; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t415, 0, -t416, 0, -t131, t301, 0, 0, t177 * t430 + (-t155 + (0.2e1 * t395 + t415) * t185) * t181, -t185 * t522 - t417 + (-t114 - t303) * t181, t332 * t178, t100 (t185 * t470 + t428) * t178, 0, -pkin(3) * t114 + t129 * t171 - t131 * t185 - t332 * t509, pkin(3) * t522 + t129 * t466 + t131 * t181 - t416 * t507 - t428 * t509, pkin(11) * t100 - t103 * t466 - t104 * t171 + t328 * t450 - t508 * t522 + t352, -pkin(3) * t131 + ((-t103 * t185 - t104 * t181) * qJD(4) + t352) * pkin(11), t181 * t536 + t184 * t420, -t115 * t412 - t184 * t356 + (t533 - t535) * t181, t114 * t489 + t115 * t171 - t136 * t425 + t184 * t417 + t185 * t253, t180 * t356 + t181 * t261 (-t136 * t180 * qJD(4) + t521) * t185 + (-t394 - t339) * t181, t100, t102 * t136 + t125 * t114 + (-t31 + (pkin(11) * t479 + t99 * t180) * qJD(4)) * t185 + (pkin(11) * t521 + t63 * qJD(4) + t341) * t181, pkin(11) * t420 + t101 * t136 - t126 * t114 - t171 * t64 - t30 * t185 - t253 * t508 + t489 * t68 - t529 * t99, t101 * t479 - t102 * t115 + t125 * t253 - t126 * t521 + t30 * t491 - t31 * t489 - t329 * t64 + t529 * t63, -t101 * t64 + t102 * t63 + t125 * t31 - t126 * t30 + (t68 * t181 + t466 * t99) * pkin(11), -t135 * t42 - t85 * t86, t134 * t42 - t135 * t43 + t84 * t86 - t85 * t87, t114 * t135 - t136 * t86 + t171 * t85 + t185 * t42, t134 * t43 + t84 * t87, -t114 * t134 - t136 * t87 - t171 * t84 + t185 * t43, t100, -t11 * t185 + t114 * t81 + t123 * t84 + t134 * t54 + t136 * t47 + t151 * t43 + t171 * t28 + t74 * t87, -t10 * t185 - t114 * t82 + t123 * t85 + t135 * t54 + t136 * t46 - t151 * t42 - t171 * t29 - t74 * t86, t10 * t134 - t11 * t135 + t28 * t86 - t29 * t87 + t42 * t81 - t43 * t82 + t46 * t84 - t47 * t85, -t10 * t82 + t11 * t81 + t123 * t74 + t151 * t54 + t28 * t47 - t29 * t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t390, -0.2e1 * t391, 0, t164, 0, 0, t181 * t459, t185 * t459, 0, 0, 0.2e1 * t176 * t410 - 0.2e1 * t378, 0.2e1 * t175 * t392 - 0.4e1 * t180 * t379, 0.2e1 * t181 * t424 + 0.2e1 * t467 * t475, 0.2e1 * t174 * t410 + 0.2e1 * t378, -0.2e1 * t180 * t391 + 0.2e1 * t181 * t421, t164, 0.2e1 * t125 * t171 - 0.2e1 * t102 * t185 + 0.2e1 * (t175 * t463 + t180 * t390) * pkin(11), -0.2e1 * t126 * t171 - 0.2e1 * t101 * t185 + 0.2e1 * (-t175 * t464 + 0.2e1 * t379) * pkin(11), 0.2e1 * t349 * t466 + 0.2e1 * (t101 * t180 - t102 * t184 + (t125 * t180 - t126 * t184) * qJD(5)) * t181, 0.2e1 * pkin(11) ^ 2 * t410 - 0.2e1 * t101 * t126 + 0.2e1 * t102 * t125, -0.2e1 * t135 * t86, 0.2e1 * t134 * t86 - 0.2e1 * t135 * t87, 0.2e1 * t135 * t171 + 0.2e1 * t185 * t86, 0.2e1 * t134 * t87, -0.2e1 * t134 * t171 + 0.2e1 * t185 * t87, t164, 0.2e1 * t123 * t134 + 0.2e1 * t151 * t87 + 0.2e1 * t171 * t81 - 0.2e1 * t185 * t47, 0.2e1 * t123 * t135 - 0.2e1 * t151 * t86 - 0.2e1 * t171 * t82 - 0.2e1 * t185 * t46, 0.2e1 * t134 * t46 - 0.2e1 * t135 * t47 + 0.2e1 * t81 * t86 - 0.2e1 * t82 * t87, 0.2e1 * t123 * t151 - 0.2e1 * t46 * t82 + 0.2e1 * t47 * t81; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t545, 0, -t58, t229, t19, t18, 0, 0, t180 * t539 + t463 * t71, -t464 * t71 + t202 - t537, t527, t538, -t526, 0, pkin(4) * t224 - pkin(12) * t527 - t16 * t184 + t36 * t464, -pkin(4) * t204 + pkin(12) * t526 + t16 * t180 + t36 * t463, pkin(12) * t538 + t204 * t506 - t21 * t463 - t22 * t464 + t449 * t71 + t359, -pkin(4) * t16 + ((-t180 * t22 - t184 * t21) * qJD(5) + t359) * pkin(12), -t112 * t52 - t13 * t150, t112 * t51 - t113 * t52 + t13 * t149 - t14 * t150, -t112 * t98 + t150 * t58, t113 * t51 + t14 * t149, -t113 * t98 - t149 * t58, 0, t113 * t27 + t117 * t58 + t12 * t149 + t14 * t170 + t452 * t51 + t93 * t98, -t112 * t27 - t118 * t58 + t12 * t150 - t13 * t170 + t452 * t52 + t92 * t98, t1 * t149 + t112 * t8 - t113 * t9 + t117 * t13 - t118 * t14 - t150 * t2 + t51 * t92 - t52 * t93, -t1 * t118 + t117 * t2 + t12 * t170 + t27 * t452 + t8 * t93 - t9 * t92; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t522, 0, -t114, t416, t73, t72, 0, 0, t535, -t261 + t536, t339, t533, -t528, 0, -pkin(4) * t521 - pkin(12) * t339 - t68 * t184 + t464 * t99, pkin(4) * t253 + pkin(12) * t528 + t341, -t253 * t506 - t463 * t63 - t464 * t64 + t353 + (t418 + t533) * pkin(12), -pkin(4) * t68 + ((-t180 * t64 - t184 * t63) * qJD(5) + t353) * pkin(12), -t112 * t85 - t150 * t42, t112 * t84 - t113 * t85 + t149 * t42 - t150 * t43, -t112 * t136 + t114 * t150, t113 * t84 + t149 * t43, -t113 * t136 - t114 * t149, 0, t113 * t74 + t114 * t117 + t136 * t93 + t149 * t54 + t170 * t43 + t452 * t84, -t112 * t74 - t114 * t118 + t136 * t92 + t150 * t54 - t170 * t42 + t452 * t85, t10 * t149 - t11 * t150 + t112 * t28 - t113 * t29 + t117 * t42 - t118 * t43 + t84 * t92 - t85 * t93, -t10 * t118 + t11 * t117 + t170 * t54 + t28 * t93 - t29 * t92 + t452 * t74; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t466, 0, -t171, 0, -t450, t451, 0, 0, -t119, -0.4e1 * t181 * t411 - t466 * t476, t171 * t180 - t421, t119, t330, 0 (pkin(12) * t484 + (-t503 + t504) * t181) * qJD(5) + (t180 * t361 - t168) * qJD(4) (pkin(11) * t489 + t340) * qJD(5) + (t184 * t361 + t457) * qJD(4), t287, -pkin(4) * t450 + pkin(12) * t287, -t112 * t135 - t150 * t86, t112 * t134 - t113 * t135 + t149 * t86 - t150 * t87, t112 * t185 + t150 * t171, t113 * t134 + t149 * t87, t113 * t185 - t149 * t171, 0, t113 * t151 + t117 * t171 + t123 * t149 + t134 * t452 + t170 * t87 - t185 * t93, -t112 * t151 - t118 * t171 + t123 * t150 + t135 * t452 - t170 * t86 - t185 * t92, t112 * t81 - t113 * t82 + t117 * t86 - t118 * t87 + t134 * t92 - t135 * t93 + t149 * t46 - t150 * t47, t117 * t47 - t118 * t46 + t123 * t170 + t151 * t452 + t81 * t93 - t82 * t92; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t411, -0.2e1 * t392, 0, -0.2e1 * t411, 0, 0, t180 * t458, t184 * t458, 0, 0, -0.2e1 * t150 * t112, 0.2e1 * t112 * t149 - 0.2e1 * t113 * t150, 0, 0.2e1 * t149 * t113, 0, 0, 0.2e1 * t113 * t170 + 0.2e1 * t149 * t452, -0.2e1 * t112 * t170 + 0.2e1 * t150 * t452, 0.2e1 * t112 * t117 - 0.2e1 * t113 * t118 + 0.2e1 * t149 * t92 - 0.2e1 * t150 * t93, 0.2e1 * t117 * t93 - 0.2e1 * t118 * t92 + 0.2e1 * t170 * t452; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t204, 0, t224, t58, t7, t6, 0, 0, 0, 0, -t13, 0, -t14, t58, -t388 * t98 + t453 * t58 + t2 (-t404 * t98 - t513 * t58) * pkin(5) + t1 (t514 * t13 - t513 * t14 + (-t51 * t514 + t513 * t52) * qJD(6)) * pkin(5) (t514 * t2 - t513 * t1 + (-t513 * t8 + t514 * t9) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t253, 0, -t521, t114, t31, t30, 0, 0, 0, 0, -t42, 0, -t43, t114, t114 * t453 - t136 * t388 + t11 (-t114 * t513 - t136 * t404) * pkin(5) + t10 (t514 * t42 - t513 * t43 + (t513 * t85 - t514 * t84) * qJD(6)) * pkin(5) (t514 * t11 - t513 * t10 + (-t28 * t513 + t29 * t514) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t529, 0, -t329, t171, t102, t101, 0, 0, 0, 0, -t86, 0, -t87, t171, pkin(5) * t181 * t408 - qJD(6) * t267 - t116 * t404 + t185 * t388 + t237 (-t181 * t407 + t185 * t404) * pkin(5) + t46 (t514 * t86 - t513 * t87 + (-t134 * t514 + t135 * t513) * qJD(6)) * pkin(5) (t514 * t47 - t513 * t46 + (-t513 * t81 + t514 * t82) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t463, 0, -t464, 0, -t449, pkin(12) * t464, 0, 0, 0, 0, -t112, 0, -t113, 0, t93, t92 (t514 * t112 - t513 * t113 + (-t149 * t514 + t150 * t513) * qJD(6)) * pkin(5) (t514 * t93 - t513 * t92 + (-t117 * t513 + t118 * t514) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t388, -0.2e1 * t389, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t13, 0, -t14, t58, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t42, 0, -t43, t114, t11, t10, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86, 0, -t87, t171, t47, t46, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t112, 0, -t113, 0, t93, t92, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t388, -t389, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
