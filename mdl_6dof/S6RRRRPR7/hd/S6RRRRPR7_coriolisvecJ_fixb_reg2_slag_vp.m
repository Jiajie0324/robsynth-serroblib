% Calculate inertial parameters regressor of coriolis joint torque vector for
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
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 22:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRPR7_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR7_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR7_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR7_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 22:34:10
% EndTime: 2019-03-09 22:34:51
% DurationCPUTime: 20.87s
% Computational Cost: add. (39705->757), mult. (103171->1028), div. (0->0), fcn. (83206->12), ass. (0->328)
t339 = cos(qJ(2));
t336 = sin(qJ(2));
t331 = sin(pkin(6));
t418 = qJD(1) * t331;
t394 = t336 * t418;
t332 = cos(pkin(6));
t417 = qJD(1) * t332;
t402 = pkin(1) * t417;
t266 = -pkin(8) * t394 + t339 * t402;
t353 = (pkin(2) * t336 - pkin(9) * t339) * t331;
t267 = qJD(1) * t353;
t335 = sin(qJ(3));
t338 = cos(qJ(3));
t203 = -t335 * t266 + t338 * t267;
t469 = -pkin(10) - pkin(9);
t398 = qJD(3) * t469;
t427 = t338 * t339;
t520 = (pkin(3) * t336 - pkin(10) * t427) * t418 + t203 - t338 * t398;
t204 = t338 * t266 + t335 * t267;
t416 = qJD(1) * t339;
t393 = t331 * t416;
t370 = t335 * t393;
t519 = -pkin(10) * t370 - t335 * t398 + t204;
t467 = cos(qJ(4));
t396 = t467 * t338;
t334 = sin(qJ(4));
t428 = t334 * t335;
t351 = t396 - t428;
t387 = qJD(4) * t467;
t473 = qJD(3) + qJD(4);
t421 = -qJD(3) * t396 - t338 * t387 + t351 * t393 + t428 * t473;
t286 = t334 * t338 + t335 * t467;
t420 = (-t393 + t473) * t286;
t337 = cos(qJ(6));
t410 = qJD(6) * t337;
t374 = qJD(2) + t417;
t245 = t335 * t394 - t338 * t374;
t247 = t335 * t374 + t338 * t394;
t194 = t245 * t467 + t334 * t247;
t330 = sin(pkin(12));
t352 = -t334 * t245 + t247 * t467;
t449 = cos(pkin(12));
t138 = t449 * t194 + t330 * t352;
t506 = t138 * t337;
t518 = t410 + t506;
t306 = -qJD(3) + t393;
t297 = -qJD(4) + t306;
t333 = sin(qJ(6));
t482 = -t330 * t194 + t352 * t449;
t125 = t337 * t297 + t333 * t482;
t127 = -t297 * t333 + t337 * t482;
t415 = qJD(2) * t336;
t392 = t331 * t415;
t310 = qJD(1) * t392;
t366 = qJD(3) * t394;
t405 = qJD(1) * qJD(2);
t385 = t339 * t405;
t365 = t331 * t385;
t487 = qJD(3) * t374 + t365;
t399 = t335 * t487 + t338 * t366;
t412 = qJD(4) * t334;
t470 = t335 * t366 - t338 * t487;
t122 = t245 * t387 + t247 * t412 + t334 * t399 + t467 * t470;
t123 = -t245 * t412 + t247 * t387 - t334 * t470 + t467 * t399;
t76 = -t122 * t449 - t330 * t123;
t381 = -t337 * t310 + t333 * t76;
t56 = qJD(6) * t127 + t381;
t453 = -t125 * t410 - t333 * t56;
t502 = qJD(6) + t138;
t515 = t502 * t333;
t477 = t127 * t515;
t411 = qJD(6) * t333;
t55 = t297 * t410 - t333 * t310 - t337 * t76 + t411 * t482;
t517 = -t125 * t506 - t337 * t55 + t453 - t477;
t308 = t469 * t335;
t309 = t469 * t338;
t235 = t334 * t308 - t467 * t309;
t426 = qJD(4) * t235 - t519 * t334 + t520 * t467;
t425 = -t308 * t387 - t309 * t412 + t520 * t334 + t519 * t467;
t414 = qJD(3) * t335;
t516 = t370 - t414;
t514 = pkin(4) * t394 - qJ(5) * t421 + t286 * qJD(5) + t426;
t513 = qJ(5) * t420 - qJD(5) * t351 + t425;
t442 = t138 ^ 2;
t444 = t482 ^ 2;
t512 = -t442 + t444;
t52 = t55 * t333;
t510 = t127 * t518 - t52;
t445 = t127 * t482;
t380 = t122 * t330 - t449 * t123;
t71 = t333 * t380;
t509 = t502 * t518 - t445 - t71;
t313 = t336 * t402;
t270 = pkin(8) * t393 + t313;
t230 = pkin(9) * t374 + t270;
t261 = (-pkin(2) * t339 - pkin(9) * t336 - pkin(1)) * t331;
t241 = qJD(1) * t261;
t185 = -t230 * t335 + t338 * t241;
t163 = -pkin(10) * t247 + t185;
t152 = -pkin(3) * t306 + t163;
t186 = t230 * t338 + t241 * t335;
t164 = -pkin(10) * t245 + t186;
t397 = t467 * t164;
t101 = t334 * t152 + t397;
t488 = t194 * qJ(5);
t83 = t101 - t488;
t456 = t330 * t83;
t161 = t334 * t164;
t100 = t467 * t152 - t161;
t478 = qJ(5) * t352;
t82 = t100 - t478;
t79 = -pkin(4) * t297 + t82;
t45 = t449 * t79 - t456;
t41 = t297 * pkin(5) - t45;
t508 = t138 * t41;
t441 = t138 * t297;
t507 = t76 - t441;
t80 = t449 * t83;
t46 = t330 * t79 + t80;
t42 = -pkin(11) * t297 + t46;
t229 = -pkin(2) * t374 - t266;
t198 = t245 * pkin(3) + t229;
t147 = t194 * pkin(4) + qJD(5) + t198;
t67 = t138 * pkin(5) - pkin(11) * t482 + t147;
t358 = t333 * t42 - t337 * t67;
t505 = t138 * t358;
t489 = t138 * t482;
t424 = -t330 * t421 + t420 * t449;
t423 = -t330 * t420 - t421 * t449;
t364 = -pkin(3) * t516 - t270;
t443 = t482 * t297;
t504 = t380 - t443;
t16 = t333 * t67 + t337 * t42;
t256 = pkin(8) * t365 + qJD(2) * t313;
t184 = pkin(3) * t399 + t256;
t93 = t123 * pkin(4) + t184;
t22 = -pkin(5) * t380 - t76 * pkin(11) + t93;
t268 = qJD(2) * t353;
t254 = qJD(1) * t268;
t431 = t331 * t336;
t316 = pkin(8) * t431;
t429 = t332 * t339;
t281 = pkin(1) * t429 - t316;
t271 = t281 * qJD(2);
t255 = qJD(1) * t271;
t377 = t338 * t254 - t335 * t255;
t413 = qJD(3) * t338;
t111 = pkin(3) * t310 + pkin(10) * t470 - t230 * t413 - t241 * t414 + t377;
t142 = -t230 * t414 + t241 * t413 + t335 * t254 + t338 * t255;
t114 = -pkin(10) * t399 + t142;
t44 = -qJD(4) * t101 + t467 * t111 - t334 * t114;
t25 = pkin(4) * t310 + t122 * qJ(5) - qJD(5) * t352 + t44;
t371 = -t334 * t111 - t467 * t114 - t152 * t387 + t164 * t412;
t27 = -qJ(5) * t123 - qJD(5) * t194 - t371;
t10 = t330 * t25 + t449 * t27;
t8 = pkin(11) * t310 + t10;
t3 = -qJD(6) * t16 + t337 * t22 - t333 * t8;
t501 = -t138 * t16 - t3;
t500 = pkin(5) * t482 + pkin(11) * t138;
t499 = t147 * t138 - t10;
t459 = t330 * t514 + t449 * t513;
t448 = t125 * t482;
t497 = t502 * t482;
t422 = pkin(4) * t420 + t364;
t496 = t16 * t502 + t3;
t9 = t449 * t25 - t330 * t27;
t495 = -t147 * t482 + t9;
t2 = -qJD(6) * t358 + t333 * t22 + t337 * t8;
t494 = t358 * t502 + t2;
t7 = -pkin(5) * t310 - t9;
t493 = t482 * t16 + t7 * t333 + t41 * t410;
t492 = -t337 * t7 + t482 * t358 + t41 * t411;
t491 = pkin(11) * t394 + t459;
t490 = t424 * pkin(5) - t423 * pkin(11) + t422;
t438 = t194 * t352;
t485 = -t194 ^ 2 + t352 ^ 2;
t484 = -t194 * t297 - t122;
t483 = t194 * t198 + t371;
t327 = t331 ^ 2;
t480 = -0.2e1 * t327 * t405;
t479 = pkin(4) * t352;
t460 = -t330 * t513 + t449 * t514;
t430 = t331 * t339;
t282 = t332 * t336 * pkin(1) + pkin(8) * t430;
t260 = pkin(9) * t332 + t282;
t200 = -t260 * t335 + t338 * t261;
t277 = t332 * t335 + t338 * t431;
t172 = -pkin(3) * t430 - pkin(10) * t277 + t200;
t201 = t338 * t260 + t335 * t261;
t276 = -t332 * t338 + t335 * t431;
t178 = -pkin(10) * t276 + t201;
t116 = t334 * t172 + t467 * t178;
t369 = t338 * t393;
t474 = t369 - t413;
t472 = -t198 * t352 + t44;
t471 = -t297 * t352 - t123;
t340 = qJD(1) ^ 2;
t466 = pkin(1) * t339;
t464 = pkin(9) * t338;
t1 = t2 * t337;
t215 = t286 * t330 - t351 * t449;
t216 = t286 * t449 + t330 * t351;
t325 = -pkin(3) * t338 - pkin(2);
t258 = -pkin(4) * t351 + t325;
t155 = pkin(5) * t215 - pkin(11) * t216 + t258;
t206 = qJ(5) * t351 + t235;
t234 = t308 * t467 + t334 * t309;
t346 = -t286 * qJ(5) + t234;
t157 = t206 * t449 + t330 * t346;
t96 = t155 * t337 - t157 * t333;
t463 = qJD(6) * t96 + t490 * t333 - t491 * t337;
t97 = t155 * t333 + t157 * t337;
t462 = -qJD(6) * t97 + t491 * t333 + t490 * t337;
t391 = qJD(2) * t430;
t224 = qJD(3) * t277 + t335 * t391;
t225 = -qJD(3) * t276 + t338 * t391;
t144 = t334 * t224 - t225 * t467 + t276 * t387 + t277 * t412;
t211 = -t334 * t276 + t277 * t467;
t154 = -qJD(3) * t201 + t338 * t268 - t335 * t271;
t124 = pkin(3) * t392 - t225 * pkin(10) + t154;
t153 = -t260 * t414 + t261 * t413 + t335 * t268 + t338 * t271;
t131 = -pkin(10) * t224 + t153;
t58 = -qJD(4) * t116 + t467 * t124 - t334 * t131;
t34 = pkin(4) * t392 + t144 * qJ(5) - t211 * qJD(5) + t58;
t145 = qJD(4) * t211 + t224 * t467 + t334 * t225;
t210 = t276 * t467 + t277 * t334;
t57 = t334 * t124 + t467 * t131 + t172 * t387 - t178 * t412;
t36 = -qJ(5) * t145 - qJD(5) * t210 + t57;
t14 = t330 * t34 + t449 * t36;
t461 = pkin(5) * t394 + t460;
t115 = t467 * t172 - t178 * t334;
t94 = -pkin(4) * t430 - qJ(5) * t211 + t115;
t98 = -qJ(5) * t210 + t116;
t62 = t330 * t94 + t449 * t98;
t458 = pkin(3) * qJD(4);
t158 = t210 * t449 + t211 * t330;
t457 = t158 * t380;
t54 = t56 * t337;
t455 = t380 * t215;
t103 = -t334 * t163 - t397;
t347 = t103 + t488;
t384 = t449 * t334;
t104 = t467 * t163 - t161;
t89 = t104 - t478;
t451 = -t330 * t89 + t347 * t449 + (t330 * t467 + t384) * t458;
t432 = t330 * t334;
t269 = (t449 * t467 - t432) * t458;
t50 = t330 * t347 + t449 * t89;
t450 = t269 - t50;
t447 = t125 * t333;
t446 = t127 * t125;
t437 = t216 * t333;
t436 = t216 * t337;
t435 = t247 * t245;
t434 = t306 * t335;
t433 = t327 * t340;
t324 = pkin(3) * t467 + pkin(4);
t274 = pkin(3) * t384 + t330 * t324;
t419 = t336 ^ 2 - t339 ^ 2;
t409 = t245 * qJD(3);
t408 = t247 * qJD(3);
t401 = t336 * t433;
t400 = t333 * t430;
t395 = t327 * t416;
t390 = t306 * t414;
t389 = t338 * t408;
t167 = pkin(3) * t247 + t479;
t70 = t167 + t500;
t17 = -t333 * t50 + t337 * t70;
t383 = -t269 * t333 - t17;
t18 = t333 * t70 + t337 * t50;
t382 = t269 * t337 - t18;
t379 = -t333 * t423 - t337 * t394;
t378 = t333 * t394 - t337 * t423;
t373 = qJD(2) + 0.2e1 * t417;
t372 = t339 * t401;
t368 = t247 * t393;
t367 = t297 * t394;
t363 = t399 * t338;
t362 = pkin(1) * t480;
t321 = pkin(4) * t330 + pkin(11);
t360 = t321 * t380 + t508;
t264 = pkin(11) + t274;
t359 = t264 * t380 + t508;
t60 = -pkin(11) * t430 + t62;
t159 = -t330 * t210 + t211 * t449;
t259 = t316 + (-pkin(2) - t466) * t332;
t213 = t276 * pkin(3) + t259;
t165 = t210 * pkin(4) + t213;
t77 = t158 * pkin(5) - t159 * pkin(11) + t165;
t29 = t333 * t77 + t337 * t60;
t28 = -t333 * t60 + t337 * t77;
t143 = -t186 * qJD(3) + t377;
t357 = t142 * t338 - t143 * t335;
t356 = t327 * t336 * t385;
t72 = t337 * t380;
t355 = -t72 + (-t138 * t333 - t411) * t502;
t148 = t159 * t333 + t337 * t430;
t13 = -t330 * t36 + t34 * t449;
t61 = -t330 * t98 + t449 * t94;
t273 = -pkin(3) * t432 + t324 * t449;
t349 = t216 * t410 - t379;
t348 = -t216 * t411 - t378;
t272 = t282 * qJD(2);
t199 = t224 * pkin(3) + t272;
t344 = t1 - t3 * t333 + (-t16 * t333 + t337 * t358) * qJD(6);
t109 = t145 * pkin(4) + t199;
t322 = -pkin(4) * t449 - pkin(5);
t263 = -pkin(5) - t273;
t220 = (-t297 * t331 - t395) * t415;
t156 = t206 * t330 - t346 * t449;
t149 = t159 * t337 - t400;
t88 = -t144 * t449 - t330 * t145;
t87 = -t144 * t330 + t145 * t449;
t74 = t479 + t500;
t64 = -qJD(6) * t400 + t159 * t410 + t333 * t88 - t337 * t392;
t63 = qJD(6) * t148 - t333 * t392 - t337 * t88;
t59 = pkin(5) * t430 - t61;
t48 = t449 * t82 - t456;
t47 = t330 * t82 + t80;
t30 = t87 * pkin(5) - t88 * pkin(11) + t109;
t20 = t333 * t74 + t337 * t48;
t19 = -t333 * t48 + t337 * t74;
t12 = pkin(11) * t392 + t14;
t11 = -pkin(5) * t392 - t13;
t5 = -qJD(6) * t29 - t333 * t12 + t337 * t30;
t4 = qJD(6) * t28 + t337 * t12 + t333 * t30;
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t356, t419 * t480, t373 * t391, -0.2e1 * t356, -t373 * t392, 0, -t256 * t332 - t272 * t374 + t336 * t362, -t255 * t332 - t271 * t374 + t339 * t362 (t255 * t339 + t256 * t336 + (-t266 * t339 - t270 * t336) * qJD(2) + (t271 * t339 + t272 * t336 + (-t281 * t339 - t282 * t336) * qJD(2)) * qJD(1)) * t331, t255 * t282 - t256 * t281 - t266 * t272 + t270 * t271, t247 * t225 - t277 * t470, -t247 * t224 - t225 * t245 + t276 * t470 - t277 * t399, -t225 * t306 + t247 * t392 + t277 * t310 + t430 * t470, t245 * t224 + t276 * t399, t224 * t306 + (t399 * t339 + (-qJD(1) * t276 - t245) * t415) * t331 (-t306 * t331 - t395) * t415, -t154 * t306 + t272 * t245 + t259 * t399 + t256 * t276 + t229 * t224 + (-t143 * t339 + (qJD(1) * t200 + t185) * t415) * t331, t142 * t430 + t153 * t306 - t186 * t392 - t201 * t310 + t229 * t225 + t272 * t247 + t256 * t277 - t259 * t470, -t142 * t276 - t143 * t277 - t153 * t245 - t154 * t247 - t185 * t225 - t186 * t224 + t200 * t470 - t201 * t399, t142 * t201 + t143 * t200 + t153 * t186 + t154 * t185 + t229 * t272 + t256 * t259, -t122 * t211 - t144 * t352, t122 * t210 - t123 * t211 + t144 * t194 - t145 * t352, t144 * t297 + (t122 * t339 + (qJD(1) * t211 + t352) * t415) * t331, t123 * t210 + t145 * t194, t145 * t297 + (t123 * t339 + (-qJD(1) * t210 - t194) * t415) * t331, t220, t123 * t213 + t145 * t198 + t184 * t210 + t194 * t199 - t297 * t58 + (-t339 * t44 + (qJD(1) * t115 + t100) * t415) * t331, -t122 * t213 - t144 * t198 + t184 * t211 + t352 * t199 + t297 * t57 + (-t339 * t371 + (-qJD(1) * t116 - t101) * t415) * t331, t100 * t144 - t101 * t145 + t115 * t122 - t116 * t123 - t194 * t57 + t210 * t371 - t211 * t44 - t352 * t58, t100 * t58 + t101 * t57 + t115 * t44 - t116 * t371 + t184 * t213 + t198 * t199, t159 * t76 + t482 * t88, -t138 * t88 - t158 * t76 + t159 * t380 - t482 * t87, -t88 * t297 + (-t339 * t76 + (qJD(1) * t159 + t482) * t415) * t331, t138 * t87 - t457, t87 * t297 + (-t339 * t380 + (-qJD(1) * t158 - t138) * t415) * t331, t220, t109 * t138 - t13 * t297 + t147 * t87 + t158 * t93 - t165 * t380 + (-t339 * t9 + (qJD(1) * t61 + t45) * t415) * t331, t109 * t482 + t14 * t297 + t147 * t88 + t93 * t159 + t165 * t76 + (t10 * t339 + (-qJD(1) * t62 - t46) * t415) * t331, -t10 * t158 - t13 * t482 - t138 * t14 - t159 * t9 + t380 * t62 - t45 * t88 - t46 * t87 - t61 * t76, t10 * t62 + t109 * t147 + t13 * t45 + t14 * t46 + t165 * t93 + t61 * t9, -t127 * t63 - t149 * t55, t125 * t63 - t127 * t64 + t148 * t55 - t149 * t56, t127 * t87 - t149 * t380 - t158 * t55 - t502 * t63, t125 * t64 + t148 * t56, -t125 * t87 + t148 * t380 - t158 * t56 - t502 * t64, t502 * t87 - t457, t11 * t125 + t148 * t7 + t158 * t3 - t28 * t380 - t358 * t87 + t41 * t64 + t5 * t502 + t56 * t59, t11 * t127 + t149 * t7 - t158 * t2 - t16 * t87 + t29 * t380 - t4 * t502 - t41 * t63 - t55 * t59, -t125 * t4 - t127 * t5 - t148 * t2 - t149 * t3 - t16 * t64 + t28 * t55 - t29 * t56 - t358 * t63, t11 * t41 + t16 * t4 + t2 * t29 + t28 * t3 - t358 * t5 + t59 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t372, t419 * t433, -t331 * t340 * t429, t372, t374 * t394 - t310, 0, pkin(1) * t401 + t270 * t374 - t256, pkin(8) * t310 + t266 * t374 + (-t332 * t405 + t433) * t466, 0, 0, -t335 * t470 - t338 * t368 + t389, t245 * t369 + (-t470 - t409) * t338 + (t368 - t399 - t408) * t335, -t306 * t413 + (t306 * t427 + (qJD(2) * t335 - t247) * t336) * t418, -t245 * t434 - t363, t390 + (-t339 * t434 + (qJD(2) * t338 + t245) * t336) * t418, t306 * t394, -pkin(2) * t399 - t256 * t338 + t203 * t306 - t270 * t245 + (t229 * t335 + t306 * t464) * qJD(3) + (-t185 * t336 + (-pkin(9) * t415 - t229 * t339) * t335) * t418, pkin(2) * t470 - pkin(9) * t390 + t186 * t394 - t204 * t306 - t229 * t474 - t270 * t247 + t256 * t335 - t310 * t464, t203 * t247 + t204 * t245 + t357 + t516 * t186 + t474 * t185 + ((-t470 + t409) * t335 - t363 + t389) * pkin(9), -t256 * pkin(2) - t185 * t203 - t186 * t204 - t229 * t270 + ((-t185 * t338 - t186 * t335) * qJD(3) + t357) * pkin(9), -t122 * t286 - t352 * t421, -t122 * t351 - t286 * t123 + t194 * t421 - t352 * t420, t421 * t297 + (qJD(2) * t286 - t352) * t394, -t123 * t351 + t194 * t420, t420 * t297 + (qJD(2) * t351 + t194) * t394, t367, t123 * t325 - t184 * t351 + t426 * t297 + t420 * t198 + t364 * t194 + (qJD(2) * t234 - t100) * t394, -t122 * t325 + t184 * t286 - t425 * t297 - t421 * t198 + t364 * t352 + (-qJD(2) * t235 + t101) * t394, t100 * t421 - t101 * t420 + t122 * t234 - t123 * t235 + t194 * t425 - t286 * t44 - t351 * t371 + t352 * t426, -t100 * t426 - t101 * t425 + t184 * t325 + t198 * t364 + t234 * t44 - t235 * t371, t76 * t216 + t423 * t482, -t138 * t423 - t76 * t215 + t216 * t380 - t424 * t482, -t423 * t297 + (qJD(2) * t216 - t482) * t394, t138 * t424 - t455, t424 * t297 + (-qJD(2) * t215 + t138) * t394, t367, t215 * t93 - t258 * t380 + t460 * t297 + t424 * t147 + t422 * t138 + (-qJD(2) * t156 - t45) * t394, t216 * t93 + t258 * t76 - t459 * t297 + t423 * t147 + t422 * t482 + (-qJD(2) * t157 + t46) * t394, -t10 * t215 + t138 * t459 + t156 * t76 + t157 * t380 - t216 * t9 - t423 * t45 - t424 * t46 + t460 * t482, t10 * t157 + t147 * t422 - t156 * t9 + t258 * t93 - t45 * t460 - t459 * t46, t127 * t348 - t436 * t55, t379 * t127 + t378 * t125 + (t52 - t54 + (-t127 * t337 + t447) * qJD(6)) * t216, t127 * t424 - t55 * t215 + t348 * t502 - t380 * t436, t125 * t349 + t437 * t56, -t125 * t424 - t56 * t215 - t349 * t502 + t380 * t437, t424 * t502 - t455, t125 * t461 + t156 * t56 + t215 * t3 + t349 * t41 - t358 * t424 - t380 * t96 + t437 * t7 + t462 * t502, t127 * t461 - t156 * t55 - t16 * t424 - t2 * t215 + t348 * t41 + t380 * t97 + t436 * t7 - t463 * t502, t55 * t96 - t56 * t97 + t379 * t16 - t378 * t358 - t462 * t127 - t463 * t125 + (-t2 * t333 - t3 * t337 + (-t16 * t337 - t333 * t358) * qJD(6)) * t216, t156 * t7 + t16 * t463 + t2 * t97 + t3 * t96 - t358 * t462 + t41 * t461; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t435, -t245 ^ 2 + t247 ^ 2, -t245 * t306 - t470, -t435, -t247 * t306 - t399, t310, -t186 * t306 - t229 * t247 + t143, -t185 * t306 + t229 * t245 - t142, 0, 0, t438, t485, t484, -t438, t471, t310, t103 * t297 + (-t194 * t247 + t297 * t412 + t310 * t467) * pkin(3) + t472, -t104 * t297 + (-t247 * t352 + t297 * t387 - t310 * t334) * pkin(3) + t483, -t100 * t194 + t101 * t352 + t103 * t352 + t104 * t194 + (t467 * t122 - t123 * t334 + (-t194 * t467 + t334 * t352) * qJD(4)) * pkin(3), -t100 * t103 - t101 * t104 + (t467 * t44 - t198 * t247 - t334 * t371 + (-t100 * t334 + t101 * t467) * qJD(4)) * pkin(3), t489, t512, t507, -t489, t504, t310, -t167 * t138 + t273 * t310 + t297 * t451 + t495, -t167 * t482 - t274 * t310 + t297 * t450 + t499, -t273 * t76 + t274 * t380 + (t451 + t46) * t482 + (-t450 - t45) * t138, t10 * t274 - t147 * t167 + t9 * t273 - t45 * t451 + t450 * t46, t510, t517, t509, t447 * t502 - t54, -t502 * t515 + t448 - t72, -t497, t263 * t56 + t359 * t333 + t451 * t125 + (-t264 * t410 + t383) * t502 + t492, -t263 * t55 + t359 * t337 + t451 * t127 + (t264 * t411 - t382) * t502 + t493, t125 * t18 + t127 * t17 + t1 + (-t125 * t269 + t505 - t264 * t56 + (t127 * t264 + t358) * qJD(6)) * t337 + (t127 * t269 - t264 * t55 + (t125 * t264 - t16) * qJD(6) + t501) * t333, t16 * t382 + t263 * t7 + t264 * t344 - t358 * t383 + t41 * t451; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t438, t485, t484, -t438, t471, t310, -t101 * t297 + t472, -t100 * t297 + t483, 0, 0, t489, t512, t507, -t489, t504, t310, -t47 * t297 + (-t138 * t352 + t310 * t449) * pkin(4) + t495, -t48 * t297 + (-t310 * t330 - t352 * t482) * pkin(4) + t499 (t330 * t380 - t449 * t76) * pkin(4) + (t46 - t47) * t482 + (t48 - t45) * t138, t45 * t47 - t46 * t48 + (t10 * t330 - t147 * t352 + t449 * t9) * pkin(4), t510, t517, t509, t125 * t515 - t54, t355 + t448, -t497, -t125 * t47 + t322 * t56 + t360 * t333 + (-t321 * t410 - t19) * t502 + t492, -t127 * t47 - t322 * t55 + t360 * t337 + (t321 * t411 + t20) * t502 + t493, t125 * t20 + t127 * t19 + t1 + (t505 - t321 * t56 + (t127 * t321 + t358) * qJD(6)) * t337 + (-t321 * t55 + (t125 * t321 - t16) * qJD(6) + t501) * t333, -t16 * t20 + t19 * t358 + t321 * t344 + t7 * t322 - t41 * t47; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t380 - t443, t76 + t441, -t442 - t444, t138 * t46 + t45 * t482 + t93, 0, 0, 0, 0, 0, 0, t355 - t448, -t337 * t502 ^ 2 - t445 + t71 (-t125 * t138 + t55) * t337 + t477 + t453, t333 * t494 + t337 * t496 - t41 * t482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t446, -t125 ^ 2 + t127 ^ 2, t125 * t502 - t55, -t446, -t381 + (-qJD(6) + t502) * t127, -t380, -t41 * t127 + t496, t41 * t125 - t494, 0, 0;];
tauc_reg  = t6;
