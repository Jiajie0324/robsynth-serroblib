% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRPP8
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 19:10
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRPP8_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP8_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP8_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP8_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP8_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP8_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 19:06:23
% EndTime: 2019-05-07 19:07:03
% DurationCPUTime: 17.17s
% Computational Cost: add. (46697->587), mult. (99809->730), div. (0->0), fcn. (78928->10), ass. (0->371)
t341 = sin(qJ(2));
t344 = cos(qJ(2));
t338 = cos(pkin(6));
t422 = qJD(1) * t338;
t332 = qJD(2) + t422;
t340 = sin(qJ(3));
t343 = cos(qJ(3));
t337 = sin(pkin(6));
t421 = qJD(1) * t341;
t405 = t337 * t421;
t309 = t332 * t340 + t343 * t405;
t339 = sin(qJ(4));
t342 = cos(qJ(4));
t420 = qJD(1) * t344;
t331 = t337 * t420;
t413 = t331 - qJD(3);
t285 = t342 * t309 - t339 * t413;
t307 = -t343 * t332 + t340 * t405;
t302 = qJD(4) + t307;
t412 = qJDD(1) * t337;
t315 = qJD(2) * t331 + t341 * t412;
t396 = qJDD(1) * t338 + qJDD(2);
t367 = -t343 * t315 - t340 * t396;
t267 = -t307 * qJD(3) - t367;
t411 = qJDD(1) * t344;
t369 = (qJD(2) * t421 - t411) * t337;
t359 = qJDD(3) + t369;
t401 = t267 * t339 - t342 * t359;
t173 = (qJD(4) - t302) * t285 + t401;
t283 = t309 * t339 + t342 * t413;
t349 = -t342 * t267 - t339 * t359;
t347 = -t283 * qJD(4) - t349;
t437 = t283 * t302;
t502 = t437 + t347;
t461 = t502 * t339;
t104 = t173 * t342 - t461;
t282 = t285 ^ 2;
t486 = t283 ^ 2;
t208 = -t486 - t282;
t549 = t208 * t340;
t71 = t104 * t343 - t549;
t460 = t502 * t342;
t98 = t173 * t339 + t460;
t615 = pkin(1) * (t341 * t71 - t344 * t98);
t548 = t208 * t343;
t68 = t104 * t340 + t548;
t614 = pkin(8) * (t341 * t98 + t344 * t71) - pkin(1) * t68;
t182 = t437 - t347;
t459 = t182 * t339;
t206 = qJD(4) * t285 + t401;
t436 = t302 * t285;
t509 = t206 + t436;
t518 = t509 * t342;
t107 = -t518 + t459;
t504 = t282 - t486;
t457 = t182 * t342;
t519 = t509 * t339;
t565 = t457 + t519;
t76 = t107 * t340 - t343 * t504;
t600 = t338 * t76 + t337 * (t344 * t565 + t341 * (t107 * t343 + t504 * t340));
t485 = t302 ^ 2;
t500 = t486 - t485;
t242 = t285 * t283;
t399 = t340 * t315 - t343 * t396;
t266 = -t309 * qJD(3) - t399;
t265 = qJDD(4) - t266;
t507 = t242 + t265;
t523 = t507 * t339;
t145 = -t342 * t500 + t523;
t510 = t206 - t436;
t522 = t507 * t342;
t540 = t339 * t500 + t522;
t94 = t145 * t340 - t510 * t343;
t613 = t337 * (t341 * (t145 * t343 + t510 * t340) + t344 * t540) + t338 * t94;
t249 = t282 - t485;
t508 = -t242 + t265;
t521 = t508 * t339;
t138 = t249 * t342 - t521;
t520 = t508 * t342;
t544 = t249 * t339 + t520;
t561 = t340 * t544 - t343 * t502;
t571 = t337 * (t341 * (t340 * t502 + t343 * t544) + t344 * t138) + t338 * t561;
t611 = pkin(2) * t68;
t610 = pkin(9) * t68;
t609 = pkin(9) * t71;
t218 = -t485 - t282;
t566 = t218 * t339 + t522;
t577 = t343 * t566;
t569 = t182 * t340 + t577;
t131 = t218 * t342 - t523;
t586 = pkin(2) * t131;
t607 = pkin(9) * t569 + t586;
t580 = t131 * t344;
t606 = pkin(1) * (t341 * t569 + t580);
t579 = t340 * t566;
t572 = -t343 * t182 + t579;
t578 = t341 * t131;
t601 = pkin(8) * (t344 * t569 - t578) - pkin(1) * t572;
t598 = pkin(2) * t572;
t585 = pkin(3) * t131;
t596 = pkin(9) * t572;
t584 = pkin(10) * t131;
t587 = pkin(10) * t98;
t501 = -t485 - t486;
t541 = t342 * t501 - t521;
t563 = t340 * t541 - t343 * t509;
t568 = pkin(2) * t563;
t567 = pkin(9) * t563;
t583 = pkin(10) * t566;
t542 = t339 * t501 + t520;
t560 = t509 * t340 + t343 * t541;
t564 = -pkin(2) * t542 + pkin(9) * t560;
t554 = pkin(3) * t208;
t575 = -pkin(10) * t104 - t554;
t574 = -pkin(3) * t182 + t583;
t559 = pkin(1) * (t341 * t560 - t344 * t542);
t558 = pkin(8) * (t341 * t542 + t344 * t560) - pkin(1) * t563;
t553 = pkin(3) * t542;
t552 = pkin(10) * t542;
t538 = -pkin(3) * t509 + pkin(10) * t541;
t551 = qJ(5) * t182;
t550 = qJ(5) * t208;
t471 = qJ(5) * t501;
t543 = pkin(4) * t508 + t471;
t435 = t302 * t339;
t245 = t285 * t435;
t434 = t302 * t342;
t409 = t283 * t434;
t392 = t245 - t409;
t438 = t265 * t340;
t261 = t343 * t265;
t490 = t340 * t392 - t261;
t511 = (t283 * t339 + t285 * t342) * t302;
t512 = t344 * t511;
t535 = t338 * t490 + (t341 * (t343 * t392 + t438) + t512) * t337;
t533 = qJ(5) * t507;
t532 = qJ(6) * t502;
t238 = t343 * t242;
t424 = t342 * t347 - t245;
t491 = t340 * t424 - t238;
t530 = t338 * t491;
t159 = -t342 * t206 + t283 * t435;
t237 = t340 * t242;
t380 = t206 * t339 + t409;
t492 = t340 * t380 + t238;
t515 = t338 * t492 + (-t344 * t159 + t341 * (t343 * t380 - t237)) * t337;
t410 = t413 ^ 2;
t433 = t309 * t307;
t353 = t359 - t433;
t514 = t340 * t353;
t513 = t343 * t353;
t419 = qJD(5) * t302;
t293 = 0.2e1 * t419;
t418 = qJD(6) * t283;
t506 = 0.2e1 * t418 + t293;
t294 = -0.2e1 * t419;
t505 = -0.2e1 * t418 + t294;
t291 = t413 * t307;
t230 = t291 + t267;
t479 = sin(qJ(1));
t480 = cos(qJ(1));
t377 = g(1) * t480 + g(2) * t479;
t483 = qJD(1) ^ 2;
t311 = -pkin(1) * t483 + pkin(8) * t412 - t377;
t376 = g(1) * t479 - g(2) * t480;
t416 = t337 * t483;
t352 = qJDD(1) * pkin(1) + pkin(8) * t416 + t376;
t350 = t338 * t352;
t400 = t341 * t311 - t344 * t350;
t431 = t337 * t344;
t269 = g(3) * t431 + t400;
t432 = t337 * t341;
t348 = -g(3) * t432 + t341 * t350;
t270 = t344 * t311 + t348;
t503 = t341 * t269 + t344 * t270;
t386 = -pkin(5) * t302 - qJ(6) * t285;
t498 = t285 * t386 + qJDD(6);
t497 = -pkin(5) * t206 + t498;
t236 = pkin(4) * t283 - qJ(5) * t285;
t478 = pkin(2) * t344;
t394 = -pkin(9) * t341 - t478;
t423 = qJD(1) * t337;
t314 = t394 * t423;
t330 = t332 ^ 2;
t223 = t396 * pkin(9) - t330 * pkin(2) + (t314 * t423 + t311) * t344 + t348;
t474 = t338 * g(3);
t345 = -t315 * pkin(9) - t474 + ((-pkin(1) - t478) * qJDD(1) + (-pkin(8) * t423 - t344 * t332 * pkin(9) + (qJD(2) + t332) * t341 * pkin(2)) * qJD(1) - t376) * t337;
t150 = t343 * t223 + t340 * t345;
t271 = pkin(3) * t307 - pkin(10) * t309;
t114 = -pkin(3) * t410 + pkin(10) * t359 - t307 * t271 + t150;
t222 = -t396 * pkin(2) - t330 * pkin(9) + (g(3) * t344 + t314 * t421) * t337 + t400;
t398 = t413 * t309;
t117 = -t230 * pkin(10) + (-t266 - t398) * pkin(3) + t222;
t63 = t342 * t114 + t339 * t117;
t385 = pkin(4) * t485 - t265 * qJ(5) + t283 * t236 - t63;
t56 = t293 - t385;
t62 = t114 * t339 - t342 * t117;
t375 = -t265 * pkin(4) - qJ(5) * t485 + qJDD(5) + t62;
t444 = t236 * t285;
t57 = t375 + t444;
t32 = t339 * t57 + t342 * t56;
t149 = t223 * t340 - t343 * t345;
t113 = -t359 * pkin(3) - t410 * pkin(10) + t271 * t309 + t149;
t355 = t206 * pkin(4) + t113 + t551;
t59 = (pkin(4) * t302 - 0.2e1 * qJD(5)) * t285 + t355;
t496 = -(pkin(4) * t342 + qJ(5) * t339 + pkin(3)) * t59 + pkin(10) * t32;
t360 = -t265 * pkin(5) + t375 - t532;
t402 = -pkin(5) * t283 - t236;
t46 = (-0.2e1 * qJD(6) - t402) * t285 + t360;
t371 = -pkin(5) * t486 + t206 * qJ(6) + t302 * t386 - t385;
t47 = t371 + t506;
t482 = pkin(4) + pkin(5);
t495 = qJ(5) * t47 - t46 * t482;
t494 = qJ(5) * t173 + t482 * t502;
t493 = -t218 * t482 + t371 + t533;
t425 = t343 * t424 + t237;
t346 = t285 * t434 + t339 * t347;
t487 = -t346 * t431 + t425 * t432 + t530;
t305 = t307 ^ 2;
t306 = t309 ^ 2;
t334 = t337 ^ 2;
t484 = 0.2e1 * t285;
t477 = pkin(3) * t340;
t475 = pkin(8) * t337;
t470 = t113 * t339;
t469 = t113 * t342;
t448 = t222 * t340;
t447 = t222 * t343;
t253 = -t433 - t359;
t440 = t253 * t340;
t439 = t253 * t343;
t417 = t334 * t483;
t325 = t344 * t341 * t417;
t312 = t325 + t396;
t429 = t341 * t312;
t313 = -t325 + t396;
t427 = t344 * t313;
t415 = 0.2e1 * qJD(3) - t331;
t408 = t344 * t433;
t319 = t332 * t331;
t407 = t319 + t315;
t406 = -pkin(3) * t343 - pkin(2);
t335 = t341 ^ 2;
t404 = t335 * t417;
t336 = t344 ^ 2;
t403 = t336 * t417;
t45 = t339 * t62 + t342 * t63;
t90 = t149 * t340 + t343 * t150;
t397 = -t332 + t422;
t395 = -pkin(3) * t113 + pkin(10) * t45;
t393 = -pkin(4) * t57 + qJ(5) * t56;
t391 = t340 * t291;
t390 = t340 * t398;
t389 = t343 * t291;
t388 = t343 * t398;
t387 = -pkin(4) * t502 - qJ(5) * t510;
t44 = t339 * t63 - t342 * t62;
t384 = t149 * t343 - t150 * t340;
t382 = -pkin(1) + t394;
t227 = t309 * t331 + t399;
t374 = -t469 + t538;
t183 = (qJD(4) + t302) * t283 + t349;
t373 = pkin(3) * t183 + t470 - t583;
t372 = t45 + t575;
t354 = qJD(5) * t484 - t355;
t52 = -pkin(4) * t436 + t354 - t551;
t42 = t52 + (-t218 - t486) * qJ(6) + t497;
t66 = -qJ(6) * t507 - t182 * t482;
t370 = t339 * t42 + t342 * t66 + t574;
t109 = -qJ(5) * t509 + qJ(6) * t508;
t53 = (-t509 - t436) * pkin(4) + t354;
t37 = t53 + (-t501 - t486) * qJ(6) + (-t509 - t206) * pkin(5) + t498;
t368 = t109 * t339 + t342 * t37 + t538;
t366 = -pkin(4) * t457 + t339 * t52 + t574;
t48 = qJ(6) * t486 - t497 + t59;
t16 = -qJ(6) * t47 - t48 * t482;
t22 = t339 * t46 + t342 * t47;
t24 = -qJ(5) * t48 - qJ(6) * t46;
t365 = -pkin(3) * t48 + pkin(10) * t22 + t16 * t342 + t24 * t339;
t364 = -qJ(5) * t519 + t342 * t53 + t538;
t34 = -qJ(6) * t173 + t208 * t482 - t371 + t505;
t356 = qJD(6) * t484 - t360;
t38 = t285 * t402 + t356 + t532 + t550;
t363 = t339 * t38 + t34 * t342 - t575;
t106 = -t342 * t510 + t461;
t50 = -pkin(4) * t208 + t56;
t51 = t57 - t550;
t362 = pkin(10) * t106 + t339 * t51 + t342 * t50 - t554;
t361 = -pkin(4) * t218 - t385 + t533;
t351 = -t57 + t543;
t318 = t332 * t405;
t317 = (t335 - t336) * t417;
t316 = -t330 - t403;
t301 = -t404 - t330;
t292 = t337 * t352 + t474;
t290 = -t318 - t369;
t289 = t318 - t369;
t288 = -t319 + t315;
t287 = t410 - t306;
t286 = t305 - t410;
t274 = -t306 - t410;
t273 = t306 - t305;
t268 = -t410 - t305;
t244 = t305 + t306;
t243 = t391 + t388;
t232 = t307 * t415 + t367;
t231 = -t291 + t267;
t228 = -t309 * t415 - t399;
t225 = t340 * t267 - t388;
t224 = t343 * t266 - t391;
t215 = t286 * t340 - t439;
t214 = t287 * t343 + t514;
t212 = -t274 * t340 + t439;
t211 = t274 * t343 + t440;
t204 = t268 * t343 - t514;
t203 = t268 * t340 + t513;
t196 = (-t283 * t342 + t285 * t339) * t302;
t186 = -t227 * t343 + t231 * t340;
t184 = t228 * t340 + t230 * t343;
t155 = t196 * t340 - t261;
t112 = pkin(2) * t232 + pkin(9) * t212 + t448;
t110 = pkin(2) * t228 + pkin(9) * t204 - t447;
t100 = -t339 * t510 - t460;
t87 = -t183 * t340 - t577;
t84 = t183 * t343 - t579;
t72 = t106 * t343 + t549;
t69 = t106 * t340 - t548;
t67 = -pkin(2) * t222 + pkin(9) * t90;
t65 = t469 - t584;
t64 = t470 - t552;
t60 = pkin(2) * t244 + pkin(9) * t186 + t90;
t58 = -pkin(3) * t100 - t387;
t55 = t63 - t585;
t54 = t62 - t553;
t49 = -pkin(3) * t98 - t494;
t43 = -t351 - t553;
t41 = t294 - t361 + t585;
t40 = -qJ(5) * t518 - t339 * t53 - t552;
t39 = pkin(4) * t459 + t342 * t52 + t584;
t36 = t113 * t340 + t343 * t45;
t35 = -t113 * t343 + t340 * t45;
t33 = -t44 + t587;
t31 = t339 * t56 - t342 * t57;
t30 = -t493 + t505 + t585;
t29 = -t482 * t508 + t46 - t471 - t553;
t28 = -t339 * t66 + t342 * t42 + t584;
t27 = pkin(9) * t87 + t340 * t65 + t343 * t55 - t586;
t26 = t109 * t342 - t339 * t37 - t552;
t25 = t340 * t64 + t343 * t54 + t564;
t23 = -pkin(10) * t100 - t339 * t50 + t342 * t51;
t21 = t339 * t47 - t342 * t46;
t20 = t32 * t343 + t340 * t59;
t19 = t32 * t340 - t343 * t59;
t18 = t33 * t340 - t406 * t98 - t609;
t17 = -pkin(10) * t31 + (pkin(4) * t339 - qJ(5) * t342) * t59;
t15 = -pkin(3) * t31 - t393;
t14 = t340 * t40 + t343 * t43 + t564;
t13 = t22 * t343 + t340 * t48;
t12 = t22 * t340 - t343 * t48;
t11 = t340 * t39 + t343 * t41 + t607;
t10 = -t339 * t34 + t342 * t38 - t587;
t9 = -pkin(2) * t100 + pkin(9) * t72 + t23 * t340 + t343 * t58;
t8 = t28 * t340 + t30 * t343 + t607;
t7 = t26 * t340 + t29 * t343 + t564;
t6 = pkin(9) * t36 + (-pkin(10) * t340 + t406) * t44;
t5 = -pkin(2) * t98 + t10 * t340 + t343 * t49 + t609;
t4 = -pkin(3) * t21 - t495;
t3 = -pkin(10) * t21 - t16 * t339 + t24 * t342;
t2 = -pkin(2) * t31 + pkin(9) * t20 + t15 * t343 + t17 * t340;
t1 = -pkin(2) * t21 + pkin(9) * t13 + t3 * t340 + t343 * t4;
t61 = [0, 0, 0, 0, 0, qJDD(1), t376, t377, 0, 0, (-t334 * t397 * t420 + t315 * t337) * t341, t338 * t317 + (t341 * t290 + t344 * t407) * t337, t338 * t288 + (t429 + t344 * (t330 - t404)) * t337, (t411 + (-qJD(2) + t397) * t421) * t334 * t344, t338 * t289 + (t341 * (-t330 + t403) + t427) * t337, t338 * t396, (-t269 + pkin(1) * (t312 * t344 + t316 * t341)) * t338 + (t344 * t292 + pkin(1) * t290 + pkin(8) * (t316 * t344 - t429)) * t337, -t292 * t432 - t338 * t270 + pkin(1) * (-t337 * t407 + (t301 * t344 - t313 * t341) * t338) + (-t341 * t301 - t427) * t475, pkin(1) * ((-t288 * t344 + t289 * t341) * t338 - (-t335 - t336) * t334 * t416) + (t341 * t288 + t289 * t344) * t475 + t503 * t337, pkin(1) * (t337 * t292 + (-t269 * t344 + t270 * t341) * t338) + t503 * t475, t338 * t225 + (t341 * (t343 * t267 + t390) - t408) * t337, t338 * t184 + (t341 * (t228 * t343 - t230 * t340) - t344 * t273) * t337, t338 * t214 + (t341 * (-t287 * t340 + t513) - t344 * t231) * t337, t338 * t224 + (t341 * (-t340 * t266 - t389) + t408) * t337, t338 * t215 + (t341 * (t286 * t343 + t440) + t344 * t227) * t337, t338 * t243 + (t341 * (t389 - t390) - t359 * t344) * t337, (t110 + pkin(1) * (t204 * t341 + t228 * t344)) * t338 + (t341 * (-pkin(9) * t203 + t448) + t344 * (-pkin(2) * t203 + t149) - pkin(1) * t203 + pkin(8) * (t204 * t344 - t341 * t228)) * t337, (t112 + pkin(1) * (t212 * t341 + t232 * t344)) * t338 + (t341 * (-pkin(9) * t211 + t447) + t344 * (-pkin(2) * t211 + t150) - pkin(1) * t211 + pkin(8) * (t212 * t344 - t341 * t232)) * t337, (t60 + pkin(1) * (t186 * t341 + t244 * t344)) * t338 + (t341 * t384 + pkin(8) * (t186 * t344 - t341 * t244) + t382 * (-t227 * t340 - t231 * t343)) * t337, (t67 + pkin(1) * (-t222 * t344 + t341 * t90)) * t338 + (pkin(8) * (t341 * t222 + t344 * t90) - t382 * t384) * t337, t487, t600, t571, t515, -t613, t535, (t25 + t559) * t338 + (t341 * (-t340 * t54 + t343 * t64 - t567) + t344 * (-t374 - t568) + t558) * t337, (t27 + pkin(1) * (t341 * t87 - t580)) * t338 + (t341 * (-pkin(9) * t84 - t340 * t55 + t343 * t65) + t344 * (-pkin(2) * t84 - t373) - pkin(1) * t84 + pkin(8) * (t344 * t87 + t578)) * t337, (t18 - t615) * t338 + (t341 * (t33 * t343 - t477 * t98 + t610) + t344 * (-t372 + t611) - t614) * t337, (t6 + pkin(1) * (t341 * t36 - t344 * t44)) * t338 + (t341 * (-pkin(9) * t35 + (-pkin(10) * t343 + t477) * t44) + t344 * (-pkin(2) * t35 - t395) - pkin(1) * t35 + pkin(8) * (t341 * t44 + t344 * t36)) * t337, t487, t571, -t600, t535, t613, t515, (t14 + t559) * t338 + (t341 * (-t340 * t43 + t343 * t40 - t567) + t344 * (-t364 - t568) + t558) * t337, (t9 + pkin(1) * (-t100 * t344 + t341 * t72)) * t338 + (t341 * (-pkin(9) * t69 + t23 * t343 - t340 * t58) + t344 * (-pkin(2) * t69 - t362) - pkin(1) * t69 + pkin(8) * (t341 * t100 + t344 * t72)) * t337, (t11 + t606) * t338 + (t341 * (-t340 * t41 + t343 * t39 - t596) + t344 * (-t366 - t598) + t601) * t337, (t2 + pkin(1) * (t20 * t341 - t31 * t344)) * t338 + (-pkin(1) * t19 + (pkin(8) * t31 - pkin(9) * t19 - t15 * t340 + t17 * t343) * t341 + (-pkin(2) * t19 + pkin(8) * t20 - t496) * t344) * t337, t530 + (t341 * t425 - t344 * t346) * t337, -t600, -t571, t515, -t613, t338 * t155 + (t341 * (t196 * t343 + t438) + t512) * t337, (t7 + t559) * t338 + (t341 * (t26 * t343 - t29 * t340 - t567) + t344 * (-t368 - t568) + t558) * t337, (t8 + t606) * t338 + (t341 * (t28 * t343 - t30 * t340 - t596) + t344 * (-t370 - t598) + t601) * t337, (t5 + t615) * t338 + (t341 * (t10 * t343 - t340 * t49 - t610) + t344 * (-t363 - t611) + t614) * t337, (t1 + pkin(1) * (t13 * t341 - t21 * t344)) * t338 + (t341 * (-pkin(9) * t12 + t3 * t343 - t340 * t4) + t344 * (-pkin(2) * t12 - t365) - pkin(1) * t12 + pkin(8) * (t13 * t344 + t341 * t21)) * t337; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t325, t317, t288, t325, t289, t396, -t269, -t270, 0, 0, t225, t184, t214, t224, t215, t243, t110, t112, t60, t67, t491, t76, t561, t492, -t94, t490, t25, t27, t18, t6, t491, t561, -t76, t490, t94, t492, t14, t9, t11, t2, t491, -t76, -t561, t492, -t94, t155, t7, t8, t5, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t433, t273, t231, -t433, -t227, t359, -t149, -t150, 0, 0, t346, -t565, -t138, t159, t540, -t511, t374, t373, t372, t395, t346, -t138, t565, -t511, -t540, t159, t364, t362, t366, t496, t346, t565, t138, t159, t540, -t511, t368, t370, t363, t365; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t242, t504, t502, -t242, -t510, t265, -t62, -t63, 0, 0, t242, t502, -t504, t265, t510, -t242, t351, t387, t293 + t361, t393, t242, -t504, -t502, -t242, -t510, t265, -t444 + (t508 - t242) * pkin(5) + t356 + t543, t493 + t506, t494, t495; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t508, t502, t218, t57, 0, 0, 0, 0, 0, 0, -t508, t218, -t502, t46; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t509, -t182, t208, -t48;];
tauJ_reg  = t61;
