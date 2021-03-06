% Calculate inertial parameters regressor of coriolis joint torque vector for
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
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 19:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRPRR9_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR9_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR9_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRPRR9_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:10:18
% EndTime: 2019-03-09 19:11:18
% DurationCPUTime: 28.95s
% Computational Cost: add. (56090->851), mult. (174539->1170), div. (0->0), fcn. (145957->14), ass. (0->369)
t368 = cos(pkin(7));
t373 = sin(qJ(2));
t375 = cos(qJ(3));
t505 = t373 * t375;
t372 = sin(qJ(3));
t376 = cos(qJ(2));
t506 = t372 * t376;
t414 = t368 * t505 + t506;
t367 = sin(pkin(6));
t489 = qJD(1) * t367;
t301 = t414 * t489;
t366 = sin(pkin(7));
t486 = qJD(3) * t372;
t464 = t366 * t486;
t582 = t301 - t464;
t369 = cos(pkin(6));
t356 = t369 * t376 * pkin(1);
t348 = qJD(1) * t356;
t434 = t367 * (-pkin(10) * t368 - pkin(9));
t419 = t373 * t434;
t278 = qJD(1) * t419 + t348;
t547 = pkin(1) * t373;
t355 = t369 * t547;
t390 = t376 * t434 - t355;
t279 = t390 * qJD(1);
t546 = pkin(10) * t366;
t400 = (pkin(2) * t373 - t376 * t546) * t367;
t311 = qJD(1) * t400;
t485 = qJD(3) * t375;
t462 = t368 * t485;
t513 = t368 * t372;
t516 = t366 * t372;
t581 = pkin(2) * t462 - t375 * t278 - t279 * t513 - t311 * t516;
t512 = t368 * t375;
t515 = t366 * t375;
t182 = -t278 * t372 + t279 * t512 + t311 * t515;
t503 = t375 * t376;
t507 = t372 * t373;
t412 = -t368 * t507 + t503;
t302 = t412 * t489;
t353 = pkin(2) * t513;
t467 = t373 * t489;
t442 = t366 * t467;
t544 = -pkin(10) - qJ(4);
t580 = pkin(3) * t442 - qJ(4) * t302 + t182 - (t544 * t515 - t353) * qJD(3) + qJD(4) * t516;
t457 = t544 * t372;
t579 = qJ(4) * t301 + (qJD(3) * t457 + qJD(4) * t375) * t366 + t581;
t365 = sin(pkin(13));
t530 = cos(pkin(13));
t435 = t530 * t515;
t495 = -qJD(3) * t435 + t302 * t530 - t582 * t365;
t317 = (t365 * t375 + t372 * t530) * t366;
t494 = qJD(3) * t317 - t301 * t530 - t302 * t365;
t223 = -t279 * t366 + t368 * t311;
t190 = pkin(3) * t301 + t223;
t578 = pkin(3) * t464 - t190;
t498 = -t365 * t580 + t579 * t530;
t577 = pkin(11) * t442 - t498;
t576 = t494 * pkin(4) + t495 * pkin(11) + t578;
t499 = t579 * t365 + t530 * t580;
t371 = sin(qJ(5));
t374 = cos(qJ(5));
t482 = t371 * qJD(5);
t484 = qJD(5) * t374;
t497 = t317 * t482 - t368 * t484 + t371 * t442 + t374 * t495;
t277 = t317 * t374 + t368 * t371;
t496 = qJD(5) * t277 - t495 * t371 + t374 * t442;
t488 = qJD(1) * t369;
t446 = qJD(2) + t488;
t420 = t446 * t366;
t466 = t376 * t489;
t440 = t368 * t466;
t381 = t420 + t440;
t439 = t372 * t467;
t246 = t375 * t381 - t439;
t413 = t368 * t506 + t505;
t395 = t413 * t367;
t247 = qJD(1) * t395 + t372 * t420;
t192 = -t530 * t246 + t247 * t365;
t575 = -t192 - qJD(5);
t354 = pkin(2) * t512;
t286 = pkin(3) * t368 + t366 * t457 + t354;
t327 = pkin(10) * t515 + t353;
t305 = qJ(4) * t515 + t327;
t228 = t365 * t286 + t530 * t305;
t212 = pkin(11) * t368 + t228;
t316 = t365 * t516 - t435;
t336 = (-pkin(3) * t375 - pkin(2)) * t366;
t235 = pkin(4) * t316 - pkin(11) * t317 + t336;
t535 = -t212 * t482 + t235 * t484 + t576 * t371 - t577 * t374;
t500 = pkin(4) * t442 + t499;
t341 = t366 * t466;
t401 = t368 * t446 - t341;
t394 = -qJD(3) - t401;
t514 = t367 * t376;
t491 = pkin(9) * t514 + t355;
t319 = t491 * qJD(1);
t241 = pkin(10) * t381 + t319;
t393 = t369 * pkin(2) + t419;
t244 = qJD(2) * pkin(2) + qJD(1) * t393 + t348;
t306 = (-pkin(2) * t376 - t373 * t546 - pkin(1)) * t367;
t292 = qJD(1) * t306;
t170 = -t372 * t241 + t244 * t512 + t292 * t515;
t139 = -t247 * qJ(4) + t170;
t130 = -pkin(3) * t394 + t139;
t171 = (t244 * t368 + t292 * t366) * t372 + t375 * t241;
t140 = qJ(4) * t246 + t171;
t453 = t530 * t140;
t73 = t365 * t130 + t453;
t67 = -pkin(11) * t394 + t73;
t201 = -t244 * t366 + t368 * t292;
t179 = -pkin(3) * t246 + qJD(4) + t201;
t405 = t365 * t246 + t247 * t530;
t94 = pkin(4) * t192 - pkin(11) * t405 + t179;
t35 = -t371 * t67 + t374 * t94;
t487 = qJD(2) * t367;
t465 = t373 * t487;
t437 = qJD(1) * t465;
t337 = t366 * t437;
t344 = qJD(2) * t348;
t403 = qJD(2) * t419;
t260 = qJD(1) * t403 + t344;
t281 = t390 * qJD(2);
t261 = qJD(1) * t281;
t312 = qJD(2) * t400;
t304 = qJD(1) * t312;
t431 = -t372 * t260 + t261 * t512 + t304 * t515;
t115 = -t171 * qJD(3) + t431;
t406 = qJD(3) * t420;
t479 = qJD(1) * qJD(2);
t455 = t376 * t479;
t436 = t367 * t455;
t444 = t368 * qJD(2) + qJD(3);
t206 = t439 * t444 - t440 * t485 + (-t406 - t436) * t375;
t74 = pkin(3) * t337 + qJ(4) * t206 - qJD(4) * t247 + t115;
t549 = qJD(2) * t414 + qJD(3) * t413;
t378 = t549 * t367;
t397 = t372 * t406;
t207 = qJD(1) * t378 + t397;
t463 = t366 * t485;
t391 = t241 * t486 - t244 * t462 - t375 * t260 - t261 * t513 - t292 * t463 - t304 * t516;
t77 = -qJ(4) * t207 + qJD(4) * t246 - t391;
t34 = t365 * t74 + t530 * t77;
t32 = pkin(11) * t337 + t34;
t148 = -t365 * t206 + t530 * t207;
t149 = -t206 * t530 - t365 * t207;
t209 = -t261 * t366 + t368 * t304;
t157 = pkin(3) * t207 + t209;
t64 = pkin(4) * t148 - pkin(11) * t149 + t157;
t411 = -t374 * t32 - t371 * t64 + t482 * t67 - t94 * t484;
t574 = t35 * t575 - t411;
t552 = qJD(5) * t575;
t567 = -t192 * t575 - t552;
t573 = -t371 * t148 - t567 * t374;
t572 = -t494 * pkin(12) - t535;
t36 = t371 * t94 + t374 * t67;
t571 = t192 * t36;
t570 = -t496 * pkin(5) - t497 * pkin(12) - t500;
t79 = t139 * t365 + t453;
t569 = t79 + t575 * (pkin(5) * t371 - pkin(12) * t374);
t568 = t192 * t405;
t449 = t371 * t405 + t374 * t394;
t525 = t449 * t192;
t370 = sin(qJ(6));
t548 = cos(qJ(6));
t468 = t374 * t548;
t132 = -t192 * t468 + t370 * t405;
t459 = qJD(5) * t548;
t483 = qJD(6) * t370;
t388 = -t371 * t483 + t374 * t459 - t132;
t29 = -pkin(12) * t575 + t36;
t178 = -t371 * t394 + t374 * t405;
t136 = t365 * t140;
t72 = t130 * t530 - t136;
t66 = pkin(4) * t394 - t72;
t47 = pkin(5) * t449 - t178 * pkin(12) + t66;
t14 = t548 * t29 + t370 * t47;
t33 = -t365 * t77 + t530 * t74;
t31 = -pkin(4) * t337 - t33;
t389 = -t374 * t149 - t337 * t371;
t97 = qJD(5) * t449 + t389;
t450 = t371 * t149 - t374 * t337;
t98 = qJD(5) * t178 + t450;
t16 = pkin(5) * t98 + pkin(12) * t97 + t31;
t5 = pkin(12) * t148 - t411;
t2 = -qJD(6) * t14 + t548 * t16 - t370 * t5;
t551 = qJD(6) + t449;
t565 = -t551 * t14 - t2;
t359 = pkin(3) * t365 + pkin(11);
t564 = -t359 * t552 + t31;
t362 = t367 ^ 2;
t563 = -0.2e1 * t362 * t479;
t556 = t374 * t212 + t371 * t235;
t534 = -qJD(5) * t556 + t577 * t371 + t576 * t374;
t275 = t356 + t393;
t217 = -t275 * t366 + t368 * t306;
t553 = t368 * t503 - t507;
t266 = -t367 * t553 - t369 * t515;
t186 = pkin(3) * t266 + t217;
t267 = t369 * t516 + t395;
t204 = t266 * t530 + t267 * t365;
t205 = -t365 * t266 + t267 * t530;
t113 = pkin(4) * t204 - pkin(11) * t205 + t186;
t511 = t369 * t368;
t324 = t366 * t514 - t511;
t263 = (t366 * t369 + t368 * t514) * pkin(10) + t491;
t180 = -t263 * t372 + t275 * t512 + t306 * t515;
t142 = -pkin(3) * t324 - qJ(4) * t267 + t180;
t252 = t375 * t263;
t181 = t275 * t513 + t306 * t516 + t252;
t158 = -qJ(4) * t266 + t181;
t89 = t365 * t142 + t530 * t158;
t83 = -pkin(11) * t324 + t89;
t562 = t371 * t113 + t374 * t83;
t398 = t548 * t575;
t121 = t178 * t370 + t398;
t561 = t121 * t575;
t448 = t575 * t371;
t560 = t178 * t448;
t559 = t192 * t394;
t558 = t370 * t551;
t557 = t388 * t551;
t493 = -pkin(10) * t464 + t581;
t555 = t327 * qJD(3) + t182;
t454 = t371 * t32 - t374 * t64;
t8 = -qJD(5) * t36 - t454;
t123 = t548 * t178 - t370 * t575;
t38 = qJD(6) * t398 - t370 * t148 + t178 * t483 + t548 * t97;
t509 = t370 * t374;
t131 = -t192 * t509 - t405 * t548;
t430 = -t370 * t484 + t131;
t458 = qJD(6) * t548;
t387 = t371 * t458 - t430;
t510 = t370 * t371;
t550 = -t123 * t387 + t38 * t510;
t441 = t366 * t465;
t349 = qJD(2) * t356;
t280 = t349 + t403;
t126 = -t280 * t372 + t281 * t512 + t312 * t515 + (-t252 + (-t275 * t368 - t306 * t366) * t372) * qJD(3);
t222 = t369 * t463 + (t412 * qJD(2) + qJD(3) * t553) * t367;
t85 = pkin(3) * t441 - qJ(4) * t222 - qJD(4) * t267 + t126;
t125 = -t263 * t486 + t275 * t462 + t375 * t280 + t281 * t513 + t306 * t463 + t312 * t516;
t221 = t369 * t464 + t378;
t90 = -qJ(4) * t221 - qJD(4) * t266 + t125;
t49 = t365 * t85 + t530 * t90;
t46 = pkin(11) * t441 + t49;
t165 = t221 * t530 + t222 * t365;
t166 = -t365 * t221 + t222 * t530;
t224 = -t281 * t366 + t368 * t312;
t174 = pkin(3) * t221 + t224;
t69 = pkin(4) * t165 - pkin(11) * t166 + t174;
t12 = -qJD(5) * t562 - t371 * t46 + t374 * t69;
t415 = t370 * t29 - t548 * t47;
t1 = -qJD(6) * t415 + t370 * t16 + t548 * t5;
t377 = qJD(1) ^ 2;
t6 = -pkin(5) * t148 - t8;
t545 = t6 * t370;
t151 = pkin(12) * t316 + t556;
t227 = t286 * t530 - t365 * t305;
t211 = -t368 * pkin(4) - t227;
t276 = t317 * t371 - t374 * t368;
t167 = t276 * pkin(5) - t277 * pkin(12) + t211;
t101 = t548 * t151 + t370 * t167;
t543 = t101 * qJD(6) - t572 * t370 + t570 * t548;
t100 = -t370 * t151 + t548 * t167;
t542 = -t100 * qJD(6) + t570 * t370 + t572 * t548;
t541 = -t494 * pkin(5) - t534;
t184 = t205 * t371 + t324 * t374;
t540 = t184 * t98;
t539 = t276 * t98;
t538 = t370 * t98;
t451 = -t548 * t148 - t370 * t97;
t39 = qJD(6) * t123 + t451;
t537 = t374 * t39;
t536 = t374 * t98;
t360 = -pkin(3) * t530 - pkin(4);
t332 = -t374 * pkin(5) - t371 * pkin(12) + t360;
t270 = t370 * t332 + t359 * t468;
t120 = pkin(3) * t247 + pkin(4) * t405 + pkin(11) * t192;
t80 = t139 * t530 - t136;
t53 = t371 * t120 + t374 * t80;
t41 = pkin(12) * t405 + t53;
t533 = t270 * qJD(6) + t569 * t548 + (-t359 * t482 - t41) * t370;
t532 = -t371 * t98 - t449 * t484;
t269 = t548 * t332 - t359 * t509;
t518 = t359 * t371;
t531 = -qJD(6) * t269 + t569 * t370 + t548 * t41 + t459 * t518;
t529 = t123 * t121;
t528 = t123 * t192;
t527 = t148 * t204;
t526 = t148 * t316;
t524 = t178 * t449;
t523 = t178 * t405;
t522 = t405 * t449;
t521 = t405 ^ 2;
t520 = t192 ^ 2;
t519 = t247 * t246;
t517 = t362 * t377;
t502 = t277 * t483 - t316 * t458 - t494 * t370 + t497 * t548;
t234 = t548 * t277 + t370 * t316;
t501 = t234 * qJD(6) - t497 * t370 - t494 * t548;
t490 = t373 ^ 2 - t376 ^ 2;
t478 = t1 * t548;
t477 = t6 * t548;
t476 = pkin(3) * t486;
t474 = t39 * t548;
t473 = t548 * t98;
t472 = t376 * t517;
t469 = t371 * t548;
t460 = t367 * t369 * t377;
t452 = t123 * t482 + t38 * t374;
t445 = qJD(2) + 0.2e1 * t488;
t443 = t373 * t472;
t433 = pkin(1) * t563;
t48 = -t365 * t90 + t530 * t85;
t88 = t142 * t530 - t365 * t158;
t50 = t113 * t374 - t371 * t83;
t52 = t120 * t374 - t371 * t80;
t185 = t205 * t374 - t324 * t371;
t168 = -t212 * t371 + t235 * t374;
t422 = t366 ^ 2 * t437;
t421 = t362 * t373 * t455;
t43 = pkin(12) * t204 + t562;
t82 = t324 * pkin(4) - t88;
t59 = t184 * pkin(5) - t185 * pkin(12) + t82;
t19 = -t370 * t43 + t548 * t59;
t417 = -t14 * t370 + t415 * t548;
t416 = t548 * t14 + t370 * t415;
t20 = t370 * t59 + t548 * t43;
t409 = t430 * t551;
t135 = t548 * t185 + t370 * t204;
t11 = t113 * t484 + t371 * t69 + t374 * t46 - t482 * t83;
t313 = -pkin(9) * t437 + t344;
t402 = -t359 * t148 - t575 * t66;
t399 = -t458 * t551 - t538;
t396 = t449 * t548 + t458;
t323 = t491 * qJD(2);
t392 = -t388 * t121 - t39 * t469;
t386 = t405 * t394;
t385 = qJD(3) * t394;
t382 = t374 * t148 - t567 * t371;
t45 = -pkin(4) * t441 - t48;
t379 = qJD(6) * t417 - t2 * t370 + t478;
t326 = -pkin(9) * t367 * t373 + t356;
t325 = -pkin(10) * t516 + t354;
t322 = -pkin(9) * t465 + t349;
t318 = -pkin(9) * t467 + t348;
t314 = qJD(1) * t323;
t236 = (t368 * t488 + qJD(3) - t341) * t442;
t233 = t277 * t370 - t548 * t316;
t210 = (-t341 + (-t324 + t511) * qJD(1) + t444) * t441;
t150 = -pkin(5) * t316 - t168;
t134 = t185 * t370 - t548 * t204;
t116 = pkin(5) * t178 + pkin(12) * t449;
t112 = qJD(5) * t185 + t166 * t371 - t374 * t441;
t111 = -t374 * t166 + t205 * t482 + t324 * t484 - t371 * t441;
t55 = t135 * qJD(6) - t370 * t111 - t548 * t165;
t54 = t548 * t111 - t370 * t165 + t185 * t483 - t204 * t458;
t42 = -pkin(5) * t204 - t50;
t40 = -pkin(5) * t405 - t52;
t28 = pkin(5) * t575 - t35;
t25 = t370 * t116 + t548 * t35;
t24 = t548 * t116 - t370 * t35;
t21 = t112 * pkin(5) + t111 * pkin(12) + t45;
t10 = -pkin(5) * t165 - t12;
t9 = pkin(12) * t165 + t11;
t4 = -t20 * qJD(6) + t548 * t21 - t370 * t9;
t3 = t19 * qJD(6) + t370 * t21 + t548 * t9;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t421, t490 * t563, t445 * t376 * t487, -0.2e1 * t421, -t445 * t465, 0, -t314 * t369 - t323 * t446 + t373 * t433, -t313 * t369 - t322 * t446 + t376 * t433 (t313 * t376 + t314 * t373 + (-t318 * t376 - t319 * t373) * qJD(2) + (t322 * t376 + t323 * t373 + (-t326 * t376 - t373 * t491) * qJD(2)) * qJD(1)) * t367, t313 * t491 - t314 * t326 - t318 * t323 + t319 * t322, -t206 * t267 + t222 * t247, t206 * t266 - t207 * t267 - t221 * t247 + t222 * t246, -t222 * t394 + t206 * t324 + (qJD(1) * t267 + t247) * t441, t207 * t266 - t221 * t246, t221 * t394 + t207 * t324 + (-qJD(1) * t266 + t246) * t441, t210, -t126 * t394 - t115 * t324 - t224 * t246 + t217 * t207 + t209 * t266 + t201 * t221 + (qJD(1) * t180 + t170) * t441, t125 * t394 - t391 * t324 + t224 * t247 - t217 * t206 + t209 * t267 + t201 * t222 + (-qJD(1) * t181 - t171) * t441, -t115 * t267 + t125 * t246 - t126 * t247 - t170 * t222 - t171 * t221 + t180 * t206 - t181 * t207 + t266 * t391, t115 * t180 + t125 * t171 + t126 * t170 - t181 * t391 + t201 * t224 + t209 * t217, t149 * t205 + t166 * t405, -t148 * t205 - t149 * t204 - t165 * t405 - t166 * t192, -t166 * t394 - t149 * t324 + (qJD(1) * t205 + t405) * t441, t165 * t192 + t527, t165 * t394 + t148 * t324 + (-qJD(1) * t204 - t192) * t441, t210, -t48 * t394 - t33 * t324 + t174 * t192 + t186 * t148 + t157 * t204 + t179 * t165 + (qJD(1) * t88 + t72) * t441, t49 * t394 + t34 * t324 + t174 * t405 + t186 * t149 + t157 * t205 + t179 * t166 + (-qJD(1) * t89 - t73) * t441, -t148 * t89 - t149 * t88 - t165 * t73 - t166 * t72 - t192 * t49 - t204 * t34 - t205 * t33 - t405 * t48, t157 * t186 + t174 * t179 + t33 * t88 + t34 * t89 + t48 * t72 + t49 * t73, -t111 * t178 - t185 * t97, t111 * t449 - t112 * t178 + t184 * t97 - t185 * t98, t111 * t575 + t185 * t148 + t178 * t165 - t97 * t204, t112 * t449 + t540, t112 * t575 - t184 * t148 - t165 * t449 - t98 * t204, -t165 * t575 + t527, t66 * t112 - t12 * t575 + t50 * t148 + t35 * t165 + t31 * t184 + t8 * t204 + t449 * t45 + t82 * t98, t11 * t575 - t66 * t111 - t148 * t562 - t36 * t165 + t45 * t178 + t31 * t185 + t204 * t411 - t82 * t97, -t11 * t449 + t111 * t35 - t112 * t36 - t12 * t178 + t184 * t411 - t185 * t8 + t50 * t97 - t562 * t98, t11 * t36 + t12 * t35 + t31 * t82 - t411 * t562 + t45 * t66 + t50 * t8, -t123 * t54 - t135 * t38, t121 * t54 - t123 * t55 + t134 * t38 - t135 * t39, t112 * t123 + t135 * t98 - t184 * t38 - t54 * t551, t121 * t55 + t134 * t39, -t112 * t121 - t134 * t98 - t184 * t39 - t55 * t551, t112 * t551 + t540, t10 * t121 - t112 * t415 + t134 * t6 + t184 * t2 + t19 * t98 + t28 * t55 + t39 * t42 + t4 * t551, -t1 * t184 + t10 * t123 - t112 * t14 + t135 * t6 - t20 * t98 - t28 * t54 - t3 * t551 - t38 * t42, -t1 * t134 - t121 * t3 - t123 * t4 - t135 * t2 - t14 * t55 + t19 * t38 - t20 * t39 - t415 * t54, t1 * t20 + t10 * t28 + t14 * t3 + t19 * t2 - t4 * t415 + t42 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t443, t490 * t517, -t376 * t460, t443, t373 * t460, 0, -pkin(9) * t436 + t319 * t446 + (-t369 * t479 + t517) * t547, pkin(1) * t472 + t318 * t446 - t313, 0, 0, -t206 * t516 + (-t302 + t463) * t247, -t246 * t302 + t247 * t301 + (-t206 * t375 - t207 * t372 + (t246 * t375 - t247 * t372) * qJD(3)) * t366, t372 * t422 - t206 * t368 + t302 * t394 + (-t247 * t467 - t375 * t385) * t366, -t207 * t515 + t582 * t246, t375 * t422 - t207 * t368 - t301 * t394 + (-t246 * t467 + t372 * t385) * t366, -t236, t115 * t368 + t223 * t246 - t201 * t301 + (t201 * t486 - pkin(2) * t207 - t209 * t375 + (qJD(2) * t325 - t170) * t467) * t366 + t555 * t394, t391 * t368 - t223 * t247 - t201 * t302 + (t201 * t485 + pkin(2) * t206 + t209 * t372 + (-qJD(2) * t327 + t171) * t467) * t366 + t493 * t394, t170 * t302 + t171 * t301 + t206 * t325 - t207 * t327 + t555 * t247 + t493 * t246 + (-t391 * t375 - t115 * t372 + (-t170 * t375 - t171 * t372) * qJD(3)) * t366, -pkin(2) * t209 * t366 + t115 * t325 - t170 * t555 + t171 * t493 - t201 * t223 - t327 * t391, t149 * t317 - t405 * t495, -t148 * t317 - t149 * t316 + t192 * t495 - t405 * t494, t149 * t368 + (qJD(2) * t317 - t405) * t442 + t495 * t394, t192 * t494 + t526, -t148 * t368 + (-qJD(2) * t316 + t192) * t442 + t494 * t394, -t236, t33 * t368 + t336 * t148 + t157 * t316 - t190 * t192 + t494 * t179 + (t192 * t476 + (qJD(2) * t227 - t72) * t467) * t366 + t499 * t394, -t34 * t368 + t336 * t149 + t157 * t317 - t190 * t405 - t495 * t179 + (t405 * t476 + (-qJD(2) * t228 + t73) * t467) * t366 + t498 * t394, -t148 * t228 - t149 * t227 - t192 * t498 - t316 * t34 - t317 * t33 + t405 * t499 - t494 * t73 + t495 * t72, t157 * t336 + t578 * t179 + t227 * t33 + t228 * t34 + t498 * t73 - t499 * t72, -t178 * t497 - t277 * t97, -t178 * t496 + t276 * t97 - t277 * t98 + t449 * t497, t277 * t148 + t178 * t494 - t97 * t316 + t497 * t575, t449 * t496 + t539, -t276 * t148 - t98 * t316 - t449 * t494 + t496 * t575, -t494 * t575 + t526, t168 * t148 + t211 * t98 + t31 * t276 + t8 * t316 + t35 * t494 + t449 * t500 + t496 * t66 - t534 * t575, -t148 * t556 + t178 * t500 - t211 * t97 + t31 * t277 + t316 * t411 - t36 * t494 - t497 * t66 + t535 * t575, t168 * t97 - t178 * t534 + t276 * t411 - t277 * t8 + t35 * t497 - t36 * t496 - t449 * t535 - t556 * t98, t168 * t8 + t211 * t31 + t35 * t534 + t36 * t535 - t411 * t556 + t500 * t66, -t123 * t502 - t234 * t38, t121 * t502 - t123 * t501 + t233 * t38 - t234 * t39, t123 * t496 + t234 * t98 - t276 * t38 - t502 * t551, t121 * t501 + t233 * t39, -t121 * t496 - t233 * t98 - t276 * t39 - t501 * t551, t496 * t551 + t539, t100 * t98 + t121 * t541 + t150 * t39 + t2 * t276 + t233 * t6 + t28 * t501 - t415 * t496 - t543 * t551, -t1 * t276 - t101 * t98 + t123 * t541 - t14 * t496 - t150 * t38 + t234 * t6 - t28 * t502 + t542 * t551, -t1 * t233 + t100 * t38 - t101 * t39 + t121 * t542 + t123 * t543 - t14 * t501 - t2 * t234 - t415 * t502, t1 * t101 + t100 * t2 - t14 * t542 + t150 * t6 + t28 * t541 + t415 * t543; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t519, -t246 ^ 2 + t247 ^ 2, t246 * t394 - t206, t519, -t247 * t394 - t489 * t549 - t397, t337, t171 * t401 - t201 * t247 + t431, -t170 * t394 - t201 * t246 + t391, 0, 0, t568, -t520 + t521, t149 - t559, -t568, -t148 - t386, t337, -t79 * t394 - t179 * t405 + (-t247 * t192 + t337 * t530) * pkin(3) + t33, -t80 * t394 + t179 * t192 + (-t247 * t405 - t337 * t365) * pkin(3) - t34 (-t148 * t365 - t149 * t530) * pkin(3) + (t73 - t79) * t405 + (t80 - t72) * t192, t72 * t79 - t73 * t80 + (-t179 * t247 + t33 * t530 + t34 * t365) * pkin(3), -t178 * t374 * t575 - t371 * t97 (-t97 - t525) * t374 + t560 + t532, -t523 - t573, -t448 * t449 - t536, t382 + t522, t575 * t405, -t35 * t405 + t360 * t98 + t402 * t371 - t374 * t564 - t79 * t449 + t52 * t575, -t79 * t178 + t36 * t405 - t360 * t97 + t371 * t564 + t402 * t374 - t53 * t575, t449 * t53 + t178 * t52 + (-t192 * t35 - t359 * t98 - t411 + (t178 * t359 - t35) * qJD(5)) * t374 + (-t571 - t359 * t97 - t8 + (t359 * t449 - t36) * qJD(5)) * t371, t31 * t360 - t35 * t52 - t36 * t53 - t66 * t79 + (-t371 * t8 - t374 * t411 + (-t35 * t374 - t36 * t371) * qJD(5)) * t359, t123 * t388 - t38 * t469, t392 + t550 (t473 + t528) * t371 + t557 + t452, t121 * t387 + t39 * t510, t537 + t409 + (t399 + t561) * t371, -t448 * t551 - t536, -t40 * t121 - t28 * t131 + t269 * t98 - t533 * t551 + (-t2 + (t121 * t359 + t28 * t370) * qJD(5)) * t374 + (t28 * t458 + t359 * t39 + t415 * t575 + t545) * t371, -t40 * t123 - t28 * t132 - t270 * t98 + t531 * t551 + (t1 + (t123 * t359 + t548 * t28) * qJD(5)) * t374 + (t14 * t575 - t28 * t483 - t359 * t38 + t477) * t371, -t415 * t132 + t14 * t131 + t269 * t38 - t270 * t39 + t533 * t123 + t531 * t121 + t417 * t484 + (-t416 * qJD(6) - t1 * t370 - t548 * t2) * t371, t6 * t518 + t1 * t270 + t2 * t269 + (t359 * t484 - t40) * t28 - t531 * t14 + t533 * t415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t148 - t386, t149 + t559, -t520 - t521, t192 * t73 + t405 * t72 + t157, 0, 0, 0, 0, 0, 0, t382 - t522, -t523 + t573 (t97 - t525) * t374 - t560 + t532, -t405 * t66 + (-t36 * t575 + t8) * t374 + t574 * t371, 0, 0, 0, 0, 0, 0, -t537 + t409 + (t399 - t561) * t371 (-t473 + t528) * t371 - t557 + t452, t392 - t550, -t415 * t131 - t14 * t132 + (qJD(5) * t416 - t6) * t374 + (-t28 * t575 + t379) * t371; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t524, t178 ^ 2 - t449 ^ 2, -t389 + t525, -t524, t178 * t192 - t450, t148, -t66 * t178 - t454 + t571, t449 * t66 - t574, 0, 0, t123 * t396 - t38 * t370, -t38 * t548 - t396 * t121 + (-t123 * t551 - t39) * t370, -t123 * t178 + t396 * t551 + t538, t121 * t558 - t474, t121 * t178 - t551 * t558 + t473, -t551 * t178, -t477 - pkin(5) * t39 - t36 * t121 + t415 * t178 + (-pkin(12) * t458 - t24) * t551 + (-pkin(12) * t98 + t28 * t551) * t370, pkin(5) * t38 - t36 * t123 + t14 * t178 + t25 * t551 + t545 + t396 * t28 + (t483 * t551 - t473) * pkin(12), t478 + t25 * t121 + t24 * t123 + t396 * t415 + (t123 * t458 - t474) * pkin(12) + ((qJD(6) * t121 - t38) * pkin(12) + t565) * t370, -t6 * pkin(5) + pkin(12) * t379 - t14 * t25 + t24 * t415 - t28 * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t529, -t121 ^ 2 + t123 ^ 2, t121 * t551 - t38, -t529, -t451 + (-qJD(6) + t551) * t123, t98, -t28 * t123 - t565, t28 * t121 - t415 * t551 - t1, 0, 0;];
tauc_reg  = t7;
