% Calculate time derivative of joint inertia matrix for
% S6RRPPRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d5,d6,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [7x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 09:16
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRPPRR6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPPRR6_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPPRR6_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPPRR6_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPPRR6_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPPRR6_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPPRR6_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 09:13:06
% EndTime: 2019-03-09 09:13:46
% DurationCPUTime: 26.55s
% Computational Cost: add. (38111->1012), mult. (59914->1373), div. (0->0), fcn. (61782->10), ass. (0->462)
t363 = cos(qJ(2));
t360 = sin(qJ(2));
t547 = Icges(4,5) * t360;
t551 = Icges(3,4) * t360;
t618 = t547 - t551 + (-Icges(3,2) - Icges(4,3)) * t363;
t546 = Icges(4,5) * t363;
t550 = Icges(3,4) * t363;
t617 = t546 - t550 + (-Icges(3,1) - Icges(4,1)) * t360;
t495 = pkin(10) + qJ(5);
t473 = sin(t495);
t474 = cos(t495);
t283 = t360 * t474 - t363 * t473;
t361 = sin(qJ(1));
t364 = cos(qJ(1));
t375 = -t360 * t473 - t363 * t474;
t253 = t375 * t361;
t359 = sin(qJ(6));
t362 = cos(qJ(6));
t231 = t253 * t359 + t362 * t364;
t232 = -t253 * t362 + t359 * t364;
t252 = t283 * t361;
t125 = Icges(7,5) * t232 + Icges(7,6) * t231 - Icges(7,3) * t252;
t127 = Icges(7,4) * t232 + Icges(7,2) * t231 - Icges(7,6) * t252;
t129 = Icges(7,1) * t232 + Icges(7,4) * t231 - Icges(7,5) * t252;
t255 = t375 * t364;
t233 = t255 * t359 - t361 * t362;
t234 = -t255 * t362 - t359 * t361;
t254 = t283 * t364;
t49 = -t125 * t254 + t127 * t233 + t129 * t234;
t126 = Icges(7,5) * t234 + Icges(7,6) * t233 - Icges(7,3) * t254;
t128 = Icges(7,4) * t234 + Icges(7,2) * t233 - Icges(7,6) * t254;
t130 = Icges(7,1) * t234 + Icges(7,4) * t233 - Icges(7,5) * t254;
t50 = -t126 * t254 + t128 * t233 + t130 * t234;
t28 = t361 * t50 - t49 * t364;
t171 = -Icges(6,5) * t253 + Icges(6,6) * t252 + Icges(6,3) * t364;
t173 = -Icges(6,4) * t253 + Icges(6,2) * t252 + Icges(6,6) * t364;
t175 = -Icges(6,1) * t253 + Icges(6,4) * t252 + Icges(6,5) * t364;
t384 = -t171 * t361 + t173 * t254 - t175 * t255;
t174 = -Icges(6,4) * t255 + Icges(6,2) * t254 - Icges(6,6) * t361;
t176 = -Icges(6,1) * t255 + Icges(6,4) * t254 - Icges(6,5) * t361;
t172 = -Icges(6,5) * t255 + Icges(6,6) * t254 - Icges(6,3) * t361;
t539 = t172 * t361;
t73 = t174 * t254 - t176 * t255 - t539;
t605 = t361 * t73 - t364 * t384 + t28;
t47 = -t125 * t252 + t127 * t231 + t129 * t232;
t48 = -t126 * t252 + t128 * t231 + t130 * t232;
t27 = t361 * t48 - t47 * t364;
t385 = t171 * t364 + t252 * t173 - t253 * t175;
t538 = t172 * t364;
t72 = t252 * t174 - t253 * t176 + t538;
t606 = t361 * t72 - t364 * t385 + t27;
t616 = (t361 * t606 + t364 * t605) * qJD(1);
t540 = qJ(4) * t364;
t356 = sin(pkin(10));
t532 = t356 * t360;
t494 = pkin(4) * t532;
t357 = cos(pkin(10));
t342 = pkin(4) * t357 + pkin(3);
t569 = pkin(3) - t342;
t598 = t363 * t569 - t494;
t615 = t361 * t598 + t540;
t614 = (t617 * t360 + t363 * t618) * qJD(2);
t223 = rSges(6,1) * t283 + rSges(6,2) * t375;
t354 = t361 ^ 2;
t355 = t364 ^ 2;
t510 = t354 + t355;
t613 = t223 * t510;
t222 = Icges(6,1) * t283 + Icges(6,4) * t375;
t611 = t222 / 0.2e1;
t610 = -t252 / 0.2e1;
t609 = -t254 / 0.2e1;
t608 = -t375 / 0.2e1;
t607 = -t283 / 0.2e1;
t579 = t361 / 0.2e1;
t578 = -t364 / 0.2e1;
t443 = -Icges(3,2) * t360 + t550;
t266 = Icges(3,6) * t361 + t364 * t443;
t447 = Icges(3,1) * t363 - t551;
t270 = Icges(3,5) * t361 + t364 * t447;
t425 = t266 * t360 - t270 * t363;
t402 = t425 * t361;
t265 = -Icges(3,6) * t364 + t361 * t443;
t269 = -Icges(3,5) * t364 + t361 * t447;
t426 = t265 * t360 - t269 * t363;
t403 = t426 * t364;
t439 = Icges(4,3) * t360 + t546;
t260 = Icges(4,6) * t361 + t364 * t439;
t445 = Icges(4,1) * t363 + t547;
t268 = Icges(4,4) * t361 + t364 * t445;
t427 = t260 * t360 + t268 * t363;
t404 = t427 * t361;
t259 = -Icges(4,6) * t364 + t361 * t439;
t267 = -Icges(4,4) * t364 + t361 * t445;
t428 = t259 * t360 + t267 * t363;
t405 = t428 * t364;
t458 = -rSges(7,1) * t232 - rSges(7,2) * t231;
t131 = -rSges(7,3) * t252 - t458;
t573 = pkin(5) * t253;
t527 = -pkin(9) * t252 + t131 - t573;
t604 = t527 * t364;
t358 = -pkin(8) - qJ(4);
t344 = t364 * t358;
t352 = t364 * pkin(7);
t603 = t344 + t352;
t602 = t283 * qJD(1);
t530 = t360 * t364;
t601 = -rSges(3,2) * t530 + t361 * rSges(3,3);
t600 = -t253 * rSges(6,1) + t252 * rSges(6,2);
t531 = t356 * t363;
t424 = -t357 * t360 + t531;
t599 = qJD(2) * t424;
t440 = Icges(3,5) * t363 - Icges(3,6) * t360;
t261 = -Icges(3,3) * t364 + t361 * t440;
t441 = Icges(4,4) * t363 + Icges(4,6) * t360;
t263 = -Icges(4,2) * t364 + t361 * t441;
t367 = (-qJD(2) + qJD(5)) * t283;
t506 = qJD(1) * t361;
t160 = t364 * t367 + t375 * t506;
t504 = qJD(1) * t364;
t108 = -qJD(6) * t234 - t160 * t359 - t362 * t504;
t109 = qJD(6) * t233 + t160 * t362 - t359 * t504;
t372 = t375 * qJD(2);
t448 = qJD(5) * t473;
t449 = qJD(5) * t474;
t528 = t363 * t364;
t159 = -t361 * t602 - t364 * t372 - t448 * t530 - t449 * t528;
t53 = Icges(7,5) * t109 + Icges(7,6) * t108 - Icges(7,3) * t159;
t54 = Icges(7,4) * t109 + Icges(7,2) * t108 - Icges(7,6) * t159;
t55 = Icges(7,1) * t109 + Icges(7,4) * t108 - Icges(7,5) * t159;
t13 = t108 * t128 + t109 * t130 - t126 * t159 + t233 * t54 + t234 * t55 - t254 * t53;
t165 = -Icges(7,3) * t375 + (Icges(7,5) * t362 - Icges(7,6) * t359) * t283;
t166 = -Icges(7,6) * t375 + (Icges(7,4) * t362 - Icges(7,2) * t359) * t283;
t167 = -Icges(7,5) * t375 + (Icges(7,1) * t362 - Icges(7,4) * t359) * t283;
t450 = qJD(2) * t473;
t451 = qJD(2) * t474;
t218 = (-t448 + t450) * t363 + (t449 - t451) * t360;
t496 = qJD(6) * t283;
t478 = t359 * t496;
t219 = qJD(5) * t375 - t372;
t533 = t219 * t362;
t409 = -t478 + t533;
t477 = t362 * t496;
t534 = t219 * t359;
t410 = -t477 - t534;
t84 = Icges(7,5) * t409 + Icges(7,6) * t410 + Icges(7,3) * t218;
t85 = Icges(7,4) * t409 + Icges(7,2) * t410 + Icges(7,6) * t218;
t86 = Icges(7,1) * t409 + Icges(7,4) * t410 + Icges(7,5) * t218;
t16 = t108 * t166 + t109 * t167 - t159 * t165 + t233 * t85 + t234 * t86 - t254 * t84;
t529 = t361 * t363;
t161 = -t360 * t361 * t450 - qJD(5) * t253 - t364 * t602 - t451 * t529;
t162 = -qJD(1) * t255 + t361 * t367;
t110 = -qJD(6) * t232 - t162 * t359 - t362 * t506;
t111 = qJD(6) * t231 + t162 * t362 - t359 * t506;
t386 = Icges(7,5) * t111 + Icges(7,6) * t110 + Icges(7,3) * t161;
t387 = Icges(7,4) * t111 + Icges(7,2) * t110 + Icges(7,6) * t161;
t388 = Icges(7,1) * t111 + Icges(7,4) * t110 + Icges(7,5) * t161;
t366 = t108 * t127 + t109 * t129 - t159 * t125 + t233 * t387 + t234 * t388 - t254 * t386;
t61 = -t165 * t254 + t166 * t233 + t167 * t234;
t1 = -t13 * t254 - t50 * t159 - t16 * t375 + t49 * t161 + t61 * t218 - t252 * t366;
t60 = -t165 * t252 + t166 * t231 + t167 * t232;
t19 = -t252 * t47 - t254 * t48 - t375 * t60;
t14 = t110 * t128 + t111 * t130 + t126 * t161 + t231 * t54 + t232 * t55 - t252 * t53;
t17 = t110 * t166 + t111 * t167 + t161 * t165 + t231 * t85 + t232 * t86 - t252 * t84;
t365 = t110 * t127 + t111 * t129 + t161 * t125 + t231 * t387 + t232 * t388 - t252 * t386;
t2 = -t14 * t254 - t48 * t159 + t47 * t161 - t17 * t375 + t60 * t218 - t252 * t365;
t20 = -t252 * t49 - t254 * t50 - t375 * t61;
t3 = t13 * t361 - t366 * t364 + (t361 * t49 + t364 * t50) * qJD(1);
t4 = t14 * t361 - t365 * t364 + (t361 * t47 + t364 * t48) * qJD(1);
t436 = -t127 * t359 + t129 * t362;
t51 = -t125 * t375 + t283 * t436;
t435 = -t128 * t359 + t130 * t362;
t52 = -t126 * t375 + t283 * t435;
t10 = t126 * t218 - t375 * t53 + t435 * t219 + (-t359 * t54 + t362 * t55 + (-t128 * t362 - t130 * t359) * qJD(6)) * t283;
t560 = t10 * t361;
t9 = t218 * t125 - t375 * t386 + t436 * t219 + (t362 * t388 - t359 * t387 + (-t127 * t362 - t129 * t359) * qJD(6)) * t283;
t571 = t9 * t364;
t597 = (t20 * t578 - t361 * t19 / 0.2e1) * qJD(1) + t159 * t28 / 0.2e1 - t161 * t27 / 0.2e1 - t218 * (t52 * t361 - t364 * t51) / 0.2e1 - t4 * t610 - t3 * t609 - (t560 - t571 + (t51 * t361 + t52 * t364) * qJD(1)) * t608 - t1 * t579 - t2 * t578;
t132 = t234 * rSges(7,1) + t233 * rSges(7,2) - t254 * rSges(7,3);
t526 = -t255 * pkin(5) - pkin(9) * t254 + t132;
t58 = -t361 * t527 - t364 * t526;
t56 = t109 * rSges(7,1) + t108 * rSges(7,2) - t159 * rSges(7,3);
t554 = t160 * pkin(5) - t159 * pkin(9) + t56;
t459 = -t111 * rSges(7,1) - t110 * rSges(7,2);
t57 = t161 * rSges(7,3) - t459;
t572 = t162 * pkin(5);
t596 = -(t161 * pkin(9) + t57 + t572) * t361 - t554 * t364;
t595 = 2 * m(3);
t594 = 2 * m(4);
t593 = 2 * m(5);
t592 = 2 * m(6);
t591 = 2 * m(7);
t590 = m(4) / 0.2e1;
t589 = m(5) / 0.2e1;
t588 = m(6) / 0.2e1;
t587 = m(7) / 0.2e1;
t586 = -pkin(2) - pkin(3);
t380 = Icges(6,5) * t162 - Icges(6,6) * t161 - Icges(6,3) * t506;
t381 = -Icges(6,4) * t162 + Icges(6,2) * t161 + Icges(6,6) * t506;
t382 = Icges(6,1) * t162 - Icges(6,4) * t161 - Icges(6,5) * t506;
t93 = Icges(6,5) * t160 + Icges(6,6) * t159 - Icges(6,3) * t504;
t94 = Icges(6,4) * t160 + Icges(6,2) * t159 - Icges(6,6) * t504;
t95 = Icges(6,1) * t160 + Icges(6,4) * t159 - Icges(6,5) * t504;
t6 = (t159 * t174 + t160 * t176 + t254 * t94 - t255 * t95 - t361 * t93) * t361 - (t159 * t173 + t160 * t175 - t171 * t504 - t254 * t381 - t255 * t382 - t361 * t380) * t364 + (t73 * t364 + (t384 - t538) * t361) * qJD(1);
t585 = t6 + t3;
t7 = (-t161 * t174 + t162 * t176 + t252 * t94 - t253 * t95 + t364 * t93) * t361 - (-t161 * t173 + t162 * t175 - t171 * t506 - t252 * t381 - t253 * t382 + t364 * t380) * t364 + (t72 * t364 + (t385 - t539) * t361) * qJD(1);
t584 = -t7 - t4;
t423 = t357 * t363 + t532;
t236 = -Icges(5,4) * t424 - Icges(5,2) * t423;
t583 = t236 / 0.2e1;
t237 = -Icges(5,1) * t424 - Icges(5,4) * t423;
t582 = t237 / 0.2e1;
t581 = -t423 / 0.2e1;
t580 = -t424 / 0.2e1;
t577 = -rSges(4,1) - pkin(2);
t576 = -rSges(7,3) - pkin(9);
t327 = rSges(3,1) * t360 + rSges(3,2) * t363;
t575 = m(3) * t327;
t574 = m(6) * t223;
t570 = -pkin(2) - t342;
t568 = -pkin(7) - t358;
t390 = t283 * t362 * t86 + t218 * t165 - t166 * t534 + t167 * t533 - t375 * t84;
t557 = t359 * t85;
t66 = -t165 * t375 + (-t166 * t359 + t167 * t362) * t283;
t567 = -((-t557 + (-t166 * t362 - t167 * t359) * qJD(6)) * t283 + t390) * t375 + t66 * t218;
t566 = rSges(4,1) * t360;
t565 = rSges(4,2) * t364;
t564 = rSges(3,3) * t364;
t563 = rSges(5,3) * t361;
t562 = rSges(5,3) * t364;
t561 = rSges(6,3) * t364;
t350 = t361 * rSges(4,2);
t556 = -rSges(4,3) - qJ(3);
t555 = -rSges(5,3) - qJ(4);
t87 = rSges(7,1) * t409 + rSges(7,2) * t410 + rSges(7,3) * t218;
t552 = pkin(5) * t219 + pkin(9) * t218 + t87;
t541 = qJ(3) * t360;
t177 = t561 + t600;
t537 = t177 * t364;
t343 = t361 * t358;
t525 = t160 * rSges(6,1) + t159 * rSges(6,2);
t168 = -rSges(7,3) * t375 + (rSges(7,1) * t362 - rSges(7,2) * t359) * t283;
t524 = pkin(5) * t283 - pkin(9) * t375 + t168;
t287 = t423 * qJD(2);
t198 = t287 * t364 + t424 * t506;
t199 = t364 * t599 - t423 * t506;
t523 = t199 * rSges(5,1) + t198 * rSges(5,2);
t278 = t424 * t364;
t279 = t423 * t364;
t522 = t279 * rSges(5,1) - t278 * rSges(5,2);
t457 = pkin(2) * t363 + t541;
t290 = t457 * t361;
t341 = pkin(2) * t528;
t291 = qJ(3) * t530 + t341;
t521 = t361 * t290 + t364 * t291;
t284 = qJD(2) * t457 - qJD(3) * t363;
t463 = rSges(4,1) * t363 + rSges(4,3) * t360;
t520 = -t463 * qJD(2) - t284;
t340 = pkin(3) * t528;
t311 = -qJ(4) * t361 + t340;
t519 = -t291 - t311;
t325 = pkin(2) * t360 - qJ(3) * t363;
t292 = t325 * t506;
t482 = t360 * t506;
t518 = pkin(3) * t482 + t292;
t493 = pkin(4) * t531;
t470 = qJD(2) * t493;
t517 = t358 * t504 + t364 * t470;
t326 = -rSges(4,3) * t363 + t566;
t516 = -t325 - t326;
t499 = qJD(2) * t364;
t479 = t363 * t499;
t498 = qJD(3) * t360;
t515 = qJ(3) * t479 + t364 * t498;
t514 = rSges(4,2) * t504 + rSges(4,3) * t479;
t513 = rSges(3,2) * t482 + rSges(3,3) * t504;
t501 = qJD(2) * t361;
t481 = t360 * t501;
t512 = pkin(3) * t481 + qJ(4) * t506;
t511 = t364 * pkin(1) + t361 * pkin(7);
t509 = qJD(1) * t223;
t262 = Icges(3,3) * t361 + t364 * t440;
t508 = qJD(1) * t262;
t264 = Icges(4,2) * t361 + t364 * t441;
t507 = qJD(1) * t264;
t505 = qJD(1) * t363;
t502 = qJD(2) * t360;
t500 = qJD(2) * t363;
t497 = qJD(4) * t361;
t492 = t9 / 0.2e1 + t17 / 0.2e1;
t490 = t16 / 0.2e1 + t10 / 0.2e1;
t489 = t51 / 0.2e1 + t60 / 0.2e1;
t488 = -t61 / 0.2e1 - t52 / 0.2e1;
t332 = pkin(2) * t481;
t480 = t360 * t499;
t389 = -t361 * t505 - t480;
t487 = t361 * (qJD(1) * t341 + t361 * t498 - t332 + (t360 * t504 + t361 * t500) * qJ(3)) + t364 * (pkin(2) * t389 - qJ(3) * t482 + t515) + t290 * t504;
t484 = t342 * t528 + t364 * t494 + t343;
t217 = -t311 + t484;
t486 = -t217 + t519;
t256 = -t360 * t569 - t493;
t485 = t256 * t506 + t518;
t348 = pkin(7) * t504;
t483 = t348 + t515;
t274 = rSges(4,1) * t528 + rSges(4,3) * t530 + t350;
t476 = -pkin(3) * t360 - t325;
t475 = -pkin(4) * t356 - qJ(3);
t245 = t516 * t364;
t472 = qJD(1) * t524;
t471 = -qJD(4) * t364 + t332;
t310 = pkin(3) * t529 + t540;
t469 = t361 * t310 + t364 * t311 + t521;
t468 = t511 + t291;
t240 = -rSges(5,1) * t424 - rSges(5,2) * t423;
t467 = -t240 + t476;
t466 = -t256 + t476;
t465 = -pkin(3) * t500 - t284;
t178 = -t255 * rSges(6,1) + t254 * rSges(6,2) - rSges(6,3) * t361;
t464 = rSges(3,1) * t363 - rSges(3,2) * t360;
t200 = -qJD(1) * t278 + t287 * t361;
t201 = qJD(1) * t279 + t361 * t599;
t462 = t201 * rSges(5,1) + t200 * rSges(5,2);
t276 = t424 * t361;
t277 = t423 * t361;
t461 = -t277 * rSges(5,1) + t276 * rSges(5,2);
t460 = -t162 * rSges(6,1) + t161 * rSges(6,2);
t74 = t131 * t375 - t168 * t252;
t75 = -t132 * t375 + t168 * t254;
t456 = t361 * t75 + t364 * t74;
t377 = t360 * t475 + t363 * t570 - pkin(1);
t374 = t377 * t361;
t78 = -t252 * t576 + t374 + t458 + t573 + t603;
t393 = t468 + t484;
t79 = t393 + t526;
t455 = t361 * t79 + t364 * t78;
t454 = -t361 * (-rSges(6,3) * t506 - t460) - t364 * (-rSges(6,3) * t504 + t525);
t370 = t374 - t561;
t116 = t370 - t600 + t603;
t117 = t178 + t393;
t437 = t116 * t364 + t117 * t361;
t394 = t363 * t586 - pkin(1) - t541;
t371 = t361 * t394 + t364 * t555;
t145 = t352 + t371 + t461;
t146 = t361 * t555 + t340 + t468 + t522;
t434 = t145 * t364 + t146 * t361;
t112 = -t361 * t177 - t178 * t364;
t422 = -t223 + t466;
t275 = rSges(3,1) * t528 + t601;
t421 = -rSges(5,1) * t287 + rSges(5,2) * t599 + t465;
t420 = qJD(2) * t598 + t465;
t419 = -pkin(1) - t464;
t170 = t467 * t364;
t220 = Icges(6,5) * t283 + Icges(6,6) * t375;
t221 = Icges(6,4) * t283 + Icges(6,2) * t375;
t418 = t173 * t608 + t175 * t607 + t220 * t578 + t221 * t610 + t253 * t611 - t489;
t417 = t174 * t608 + t176 * t607 + t220 * t579 + t221 * t609 + t255 * t611 + t488;
t414 = t361 * ((pkin(3) * t505 + qJD(4)) * t364 - t512) + t364 * (pkin(3) * t389 - qJ(4) * t504 - t497) + t310 * t504 + t487;
t216 = -t344 - t615;
t413 = t361 * t216 + t364 * t217 + t469;
t408 = t466 - t524;
t142 = rSges(6,1) * t219 - rSges(6,2) * t218;
t407 = -t142 + t420;
t406 = qJD(2) * t327;
t398 = qJD(2) * (-Icges(4,4) * t360 + Icges(4,6) * t363);
t397 = qJD(2) * (-Icges(3,5) * t360 - Icges(3,6) * t363);
t136 = t422 * t364;
t391 = t420 - t552;
t99 = t408 * t364;
t383 = t360 * t556 + t363 * t577 - pkin(1);
t293 = t342 * t481;
t379 = t361 * (t361 * t470 - t293 + (-t364 * t598 + t343) * qJD(1) + t512) + t364 * (qJD(1) * t615 + t569 * t480 + t517) + t216 * t504 + t414;
t378 = t383 * t361;
t376 = t480 * t570 + t483 + t517;
t373 = t377 * t364;
t369 = t293 + (t475 * t500 - t498) * t361 + t471;
t303 = t464 * qJD(2);
t273 = t361 * t464 - t564;
t272 = t361 * t463 - t565;
t244 = t516 * t361;
t243 = t275 + t511;
t242 = t361 * t419 + t352 + t564;
t227 = Icges(5,1) * t287 - Icges(5,4) * t599;
t226 = Icges(5,4) * t287 - Icges(5,2) * t599;
t225 = Icges(5,5) * t287 - Icges(5,6) * t599;
t209 = t361 * t398 + t507;
t208 = -qJD(1) * t263 + t364 * t398;
t207 = t361 * t397 + t508;
t206 = -qJD(1) * t261 + t364 * t397;
t203 = t468 + t274;
t202 = t352 + t378 + t565;
t190 = t522 - t563;
t189 = -t461 + t562;
t188 = Icges(5,1) * t279 - Icges(5,4) * t278 - Icges(5,5) * t361;
t187 = Icges(5,1) * t277 - Icges(5,4) * t276 + Icges(5,5) * t364;
t186 = Icges(5,4) * t279 - Icges(5,2) * t278 - Icges(5,6) * t361;
t185 = Icges(5,4) * t277 - Icges(5,2) * t276 + Icges(5,6) * t364;
t184 = Icges(5,5) * t279 - Icges(5,6) * t278 - Icges(5,3) * t361;
t183 = Icges(5,5) * t277 - Icges(5,6) * t276 + Icges(5,3) * t364;
t180 = t327 * t501 + ((-rSges(3,3) - pkin(7)) * t361 + t419 * t364) * qJD(1);
t179 = rSges(3,1) * t389 - rSges(3,2) * t479 - pkin(1) * t506 + t348 + t513;
t169 = t467 * t361;
t164 = qJD(1) * t245 + t361 * t520;
t163 = t326 * t506 + t364 * t520 + t292;
t158 = t361 * t262 - t364 * t425;
t157 = t361 * t261 - t403;
t156 = t361 * t264 + t364 * t427;
t155 = t361 * t263 + t405;
t154 = -t262 * t364 - t402;
t153 = -t261 * t364 - t361 * t426;
t152 = -t264 * t364 + t404;
t151 = -t263 * t364 + t361 * t428;
t144 = t361 * t272 + t274 * t364 + t521;
t141 = Icges(6,1) * t219 - Icges(6,4) * t218;
t140 = Icges(6,4) * t219 - Icges(6,2) * t218;
t139 = Icges(6,5) * t219 - Icges(6,6) * t218;
t135 = t422 * t361;
t134 = t332 + (-t498 + (t363 * t556 + t566) * qJD(2)) * t361 + ((-rSges(4,2) - pkin(7)) * t361 + t383 * t364) * qJD(1);
t133 = qJD(1) * t378 + t480 * t577 + t483 + t514;
t124 = Icges(5,1) * t201 + Icges(5,4) * t200 - Icges(5,5) * t506;
t123 = Icges(5,1) * t199 + Icges(5,4) * t198 - Icges(5,5) * t504;
t122 = Icges(5,4) * t201 + Icges(5,2) * t200 - Icges(5,6) * t506;
t121 = Icges(5,4) * t199 + Icges(5,2) * t198 - Icges(5,6) * t504;
t120 = Icges(5,5) * t201 + Icges(5,6) * t200 - Icges(5,3) * t506;
t119 = Icges(5,5) * t199 + Icges(5,6) * t198 - Icges(5,3) * t504;
t114 = t524 * t364;
t113 = t524 * t361;
t105 = qJD(1) * t170 + t361 * t421;
t104 = t240 * t506 + t364 * t421 + t518;
t98 = t408 * t361;
t92 = t361 * t189 + t190 * t364 + t469;
t89 = (-qJ(3) * t500 - t498) * t361 + ((rSges(5,3) - pkin(7)) * t361 + t394 * t364) * qJD(1) - t462 + t471 + t512;
t88 = qJD(1) * t371 + t480 * t586 + t483 - t497 + t523;
t83 = -t184 * t361 - t186 * t278 + t188 * t279;
t82 = -t183 * t361 - t185 * t278 + t187 * t279;
t81 = t184 * t364 - t276 * t186 + t277 * t188;
t80 = t183 * t364 - t276 * t185 + t277 * t187;
t69 = -t131 * t254 + t132 * t252;
t68 = qJD(1) * t136 + t361 * t407;
t67 = t223 * t506 + t364 * t407 + t485;
t65 = t364 * t514 + (-t326 * t354 - t355 * t566) * qJD(2) + (t364 * t272 + (-t274 - t291 + t350) * t361) * qJD(1) + t487;
t64 = -t112 + t413;
t63 = ((rSges(6,3) + t568) * t361 + t373) * qJD(1) + t369 + t460;
t62 = qJD(1) * t370 + t376 - t497 + t525;
t44 = t361 * t552 + t364 * t472;
t43 = t364 * t552 - t506 * t524;
t40 = (t178 * t361 - t537) * qJD(1) + t454;
t39 = t413 - t58;
t38 = qJD(1) * t99 + t361 * t391;
t37 = t361 * t472 + t364 * t391 + t485;
t36 = t361 * t462 + t364 * t523 + ((t189 - t562) * t364 + (-t190 + t519 - t563) * t361) * qJD(1) + t414;
t35 = -t174 * t218 + t176 * t219 + t283 * t95 + t375 * t94;
t34 = -t218 * t173 + t219 * t175 + t283 * t382 - t375 * t381;
t33 = t139 * t364 + t252 * t140 - t253 * t141 - t161 * t221 + t162 * t222 - t220 * t506;
t32 = -t361 * t139 + t254 * t140 - t255 * t141 + t159 * t221 + t160 * t222 - t220 * t504;
t31 = -t572 + t576 * t161 + (t361 * t568 + t373) * qJD(1) + t369 + t459;
t30 = (qJD(1) * t377 - qJD(4)) * t361 + t376 + t554;
t26 = -t131 * t218 + t161 * t168 - t252 * t87 + t375 * t57;
t25 = t132 * t218 + t159 * t168 + t254 * t87 - t375 * t56;
t22 = (t537 + (-t178 + t486) * t361) * qJD(1) + t379 - t454;
t21 = -t131 * t159 - t132 * t161 + t252 * t56 - t254 * t57;
t15 = (t361 * t526 - t604) * qJD(1) + t596;
t8 = (t604 + (t486 - t526) * t361) * qJD(1) + t379 - t596;
t5 = [-t166 * t477 - t167 * t478 + t390 - t423 * t226 - t424 * t227 + t375 * t140 - t599 * t236 + t287 * t237 - t218 * t221 + t219 * t222 + (t30 * t79 + t31 * t78) * t591 + (t116 * t63 + t117 * t62) * t592 + (t145 * t89 + t146 * t88) * t593 + (t133 * t203 + t134 * t202) * t594 + (t179 * t243 + t180 * t242) * t595 + (t141 - t557) * t283 + (t447 + t445 + t618) * t502 + (t443 - t439 - t617) * t500; t560 / 0.2e1 + m(5) * (t104 * t145 + t105 * t146 + t169 * t88 + t170 * t89) + m(6) * (t116 * t67 + t117 * t68 + t135 * t62 + t136 * t63) + m(7) * (t30 * t98 + t31 * t99 + t37 * t78 + t38 * t79) + m(4) * (t133 * t244 + t134 * t245 + t163 * t202 + t164 * t203) - t571 / 0.2e1 + (-t121 * t423 - t123 * t424 - t186 * t599 + t188 * t287 + t198 * t236 + t199 * t237 - t278 * t226 + t279 * t227 + t16 + t32 + t35) * t579 + (-t122 * t423 - t124 * t424 - t185 * t599 + t187 * t287 + t200 * t236 + t201 * t237 - t276 * t226 + t277 * t227 + t17 + t33 + t34) * t578 + (-t405 / 0.2e1 + t403 / 0.2e1 + t404 / 0.2e1 - t402 / 0.2e1 + (t440 + t441) * (t354 / 0.2e1 + t355 / 0.2e1)) * qJD(2) + (m(3) * (-t180 * t327 - t242 * t303) + t614 * t579 + t225 * t578) * t364 + (m(3) * (-t179 * t327 - t243 * t303) - t225 * t579 + t614 * t578) * t361 + ((t186 * t581 + t188 * t580 - t278 * t583 + t279 * t582 - t243 * t575 + (-t260 / 0.2e1 + t266 / 0.2e1) * t363 + (t268 / 0.2e1 + t270 / 0.2e1) * t360 - t417) * t364 + (t185 * t581 + t187 * t580 - t276 * t583 + t277 * t582 + t242 * t575 + (-t259 / 0.2e1 + t265 / 0.2e1) * t363 + (t267 / 0.2e1 + t269 / 0.2e1) * t360 - t418) * t361 + ((t259 - t265) * t363 + (-t267 - t269) * t360) * t579 + ((-t260 + t266) * t363 + (t268 + t270) * t360) * t578) * qJD(1); t361 * ((-t361 * t119 - t278 * t121 + t279 * t123 + t198 * t186 + t199 * t188) * t361 - (-t361 * t120 - t278 * t122 + t279 * t124 + t198 * t185 + t199 * t187) * t364 + (t82 * t361 + t364 * t83) * qJD(1)) - t364 * ((t119 * t364 - t276 * t121 + t277 * t123 + t200 * t186 + t201 * t188) * t361 - (t120 * t364 - t276 * t122 + t277 * t124 + t200 * t185 + t201 * t187) * t364 + (t361 * t80 + t81 * t364) * qJD(1)) - t364 * t7 - t364 * t4 + t361 * t6 + t361 * t3 - t364 * ((t364 * t209 + (t152 - t405) * qJD(1)) * t364 + (t151 * qJD(1) + (t260 * t500 - t268 * t502 + t507) * t361 + (-t208 + (-t259 * t363 + t267 * t360) * qJD(2) + t427 * qJD(1)) * t364) * t361) - t364 * ((t364 * t207 + (t154 + t403) * qJD(1)) * t364 + (t153 * qJD(1) + (-t266 * t500 - t270 * t502 + t508) * t361 + (-t206 + (t265 * t363 + t269 * t360) * qJD(2) - t425 * qJD(1)) * t364) * t361) + (t37 * t99 + t38 * t98 + t39 * t8) * t591 + (t135 * t68 + t136 * t67 + t22 * t64) * t592 + (t104 * t170 + t105 * t169 + t36 * t92) * t593 + (t144 * t65 + t163 * t245 + t164 * t244) * t594 + ((t361 * t273 + t275 * t364) * ((qJD(1) * t273 - t364 * t406 + t513) * t364 + (-t361 * t406 + (-t275 + t601) * qJD(1)) * t361) + t510 * t327 * t303) * t595 + t361 * ((t361 * t206 + (t157 + t402) * qJD(1)) * t361 + (t158 * qJD(1) + (t265 * t500 + t269 * t502) * t364 + (-t207 + (-t266 * t363 - t270 * t360) * qJD(2) + (t262 - t426) * qJD(1)) * t361) * t364) + t361 * ((t361 * t208 + (t155 - t404) * qJD(1)) * t361 + (t156 * qJD(1) + (-t259 * t500 + t267 * t502) * t364 + (-t209 + (t260 * t363 - t268 * t360) * qJD(2) + (t264 + t428) * qJD(1)) * t361) * t364) + ((-t151 - t153 - t80) * t364 + (t152 + t154 + t81) * t361 + t606) * t506 + ((-t155 - t157 - t82) * t364 + (t156 + t158 + t83) * t361 + t605) * t504; 0.2e1 * (t455 * t587 + t437 * t588 + t434 * t589 + (t202 * t364 + t203 * t361) * t590) * t500 + 0.2e1 * ((t30 * t361 + t31 * t364 + t504 * t79 - t506 * t78) * t587 + (-t116 * t506 + t117 * t504 + t361 * t62 + t364 * t63) * t588 + (-t145 * t506 + t146 * t504 + t361 * t88 + t364 * t89) * t589 + (t133 * t361 + t134 * t364 - t202 * t506 + t203 * t504) * t590) * t360; 0.2e1 * ((t499 * t99 + t501 * t98 - t8) * t587 + (t135 * t501 + t136 * t499 - t22) * t588 + (t169 * t501 + t170 * t499 - t36) * t589 + (t244 * t501 + t245 * t499 - t65) * t590) * t363 + 0.2e1 * ((qJD(2) * t39 + t361 * t38 + t364 * t37 + t504 * t98 - t506 * t99) * t587 + (qJD(2) * t64 + t135 * t504 - t136 * t506 + t361 * t68 + t364 * t67) * t588 + (qJD(2) * t92 + t104 * t364 + t105 * t361 + t169 * t504 - t170 * t506) * t589 + (qJD(2) * t144 + t163 * t364 + t164 * t361 + t244 * t504 - t245 * t506) * t590) * t360; 0.4e1 * (t590 + t589 + t588 + t587) * (-0.1e1 + t510) * t360 * t500; m(7) * (-qJD(1) * t455 + t30 * t364 - t361 * t31) + m(6) * (-qJD(1) * t437 - t361 * t63 + t364 * t62) + m(5) * (-qJD(1) * t434 - t361 * t89 + t364 * t88); m(7) * (-t361 * t37 + t364 * t38 + (-t361 * t98 - t364 * t99) * qJD(1)) + m(6) * (-t361 * t67 + t364 * t68 + (-t135 * t361 - t136 * t364) * qJD(1)) + m(5) * (-t361 * t104 + t105 * t364 + (-t169 * t361 - t170 * t364) * qJD(1)); 0; 0; m(7) * (t113 * t30 + t114 * t31 + t43 * t78 + t44 * t79) + (m(6) * (t116 * t142 + t223 * t63) + t34 / 0.2e1 + t33 / 0.2e1 + (t117 * t574 + t417) * qJD(1) + t492) * t364 + (m(6) * (t117 * t142 + t223 * t62) - t32 / 0.2e1 - t35 / 0.2e1 + (-t116 * t574 + t418) * qJD(1) - t490) * t361; m(7) * (t113 * t38 + t114 * t37 + t15 * t39 + t43 * t99 + t44 * t98 + t58 * t8) + m(6) * (t112 * t22 + t40 * t64) + (m(6) * (t135 * t509 + t136 * t142 + t223 * t67) - t584) * t364 + (m(6) * (t135 * t142 - t136 * t509 + t223 * t68) - t585) * t361 - t616; 0.2e1 * ((qJD(2) * t613 - t40) * t588 + (t113 * t501 + t114 * t499 - t15) * t587) * t363 + 0.2e1 * ((qJD(2) * t112 + t142 * t510) * t588 + (qJD(2) * t58 + t113 * t504 - t114 * t506 + t361 * t44 + t364 * t43) * t587) * t360; m(7) * (-t43 * t361 + t364 * t44 + (-t113 * t361 - t114 * t364) * qJD(1)); t584 * t364 + t585 * t361 + (t112 * t40 + t142 * t613) * t592 + (t113 * t44 + t114 * t43 + t15 * t58) * t591 + t616; m(7) * (t25 * t79 + t26 * t78 + t30 * t75 + t31 * t74) - t490 * t254 - t492 * t252 + t489 * t161 + t488 * t159 + t567; m(7) * (t21 * t39 + t25 * t98 + t26 * t99 + t37 * t74 + t38 * t75 + t69 * t8) - t597; m(7) * ((qJD(2) * t456 - t21) * t363 + (qJD(2) * t69 + t25 * t361 + t26 * t364 + (-t361 * t74 + t364 * t75) * qJD(1)) * t360); m(7) * (-qJD(1) * t456 + t25 * t364 - t26 * t361); m(7) * (t113 * t25 + t114 * t26 + t15 * t69 + t21 * t58 + t43 * t74 + t44 * t75) + t597; -t159 * t20 - t254 * t1 + t161 * t19 - t252 * t2 + t218 * (-t252 * t51 - t254 * t52 - t375 * t66) - t375 * (-t10 * t254 - t52 * t159 + t51 * t161 - t9 * t252 + t567) + (t21 * t69 + t25 * t75 + t26 * t74) * t591;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t5(1) t5(2) t5(4) t5(7) t5(11) t5(16); t5(2) t5(3) t5(5) t5(8) t5(12) t5(17); t5(4) t5(5) t5(6) t5(9) t5(13) t5(18); t5(7) t5(8) t5(9) t5(10) t5(14) t5(19); t5(11) t5(12) t5(13) t5(14) t5(15) t5(20); t5(16) t5(17) t5(18) t5(19) t5(20) t5(21);];
Mq  = res;
