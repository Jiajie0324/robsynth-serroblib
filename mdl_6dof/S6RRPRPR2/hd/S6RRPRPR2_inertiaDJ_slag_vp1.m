% Calculate time derivative of joint inertia matrix for
% S6RRPRPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
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
% Datum: 2019-03-09 10:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRPRPR2_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR2_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR2_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR2_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRPRPR2_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRPRPR2_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRPRPR2_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:12:06
% EndTime: 2019-03-09 10:12:45
% DurationCPUTime: 25.17s
% Computational Cost: add. (32059->966), mult. (31709->1297), div. (0->0), fcn. (28613->10), ass. (0->505)
t381 = qJ(2) + pkin(10);
t369 = qJ(4) + t381;
t360 = cos(t369);
t359 = sin(t369);
t614 = Icges(5,4) * t359;
t313 = Icges(5,2) * t360 + t614;
t602 = Icges(6,6) * t359;
t460 = Icges(6,3) * t360 + t602;
t692 = -t313 - t460;
t613 = Icges(5,4) * t360;
t314 = Icges(5,1) * t359 + t613;
t601 = Icges(6,6) * t360;
t462 = Icges(6,2) * t359 + t601;
t691 = t462 + t314;
t387 = sin(qJ(1));
t390 = cos(qJ(1));
t465 = Icges(5,5) * t360 - Icges(5,6) * t359;
t245 = Icges(5,3) * t387 + t390 * t465;
t470 = Icges(6,4) * t360 - Icges(6,5) * t359;
t254 = Icges(6,1) * t387 - t390 * t470;
t690 = t245 + t254;
t471 = -Icges(5,2) * t359 + t613;
t247 = Icges(5,6) * t387 + t390 * t471;
t461 = -Icges(6,3) * t359 + t601;
t250 = Icges(6,5) * t387 - t390 * t461;
t689 = t247 - t250;
t477 = Icges(5,1) * t360 - t614;
t249 = Icges(5,5) * t387 + t390 * t477;
t463 = Icges(6,2) * t360 - t602;
t252 = Icges(6,4) * t387 - t390 * t463;
t688 = t249 - t252;
t380 = qJD(2) + qJD(4);
t687 = (-t461 - t471) * t380;
t686 = (t463 + t477) * t380;
t311 = Icges(5,5) * t359 + Icges(5,6) * t360;
t469 = Icges(6,4) * t359 + Icges(6,5) * t360;
t680 = t311 - t469;
t678 = t359 * t692 + t691 * t360;
t244 = -Icges(5,3) * t390 + t387 * t465;
t653 = Icges(6,1) * t390 + t387 * t470;
t246 = -Icges(5,6) * t390 + t387 * t471;
t248 = -Icges(5,5) * t390 + t387 * t477;
t448 = t246 * t359 - t248 * t360;
t665 = t390 * t448;
t654 = Icges(6,4) * t390 + t387 * t463;
t655 = Icges(6,5) * t390 + t387 * t461;
t445 = -t359 * t655 + t360 * t654;
t666 = t390 * t445;
t685 = t665 - t666 + (-t244 + t653) * t387;
t684 = t246 + t655;
t683 = t248 + t654;
t682 = t653 * t390;
t416 = t380 * t460;
t417 = t380 * t462;
t446 = t250 * t359 - t252 * t360;
t447 = t247 * t359 - t249 * t360;
t681 = (t446 - t447) * t390 + t690 * t387;
t584 = t314 * t380;
t585 = t313 * t380;
t679 = (-t416 - t585 + t686) * t360 + (-t417 - t584 + t687) * t359 + t680 * qJD(1);
t164 = -qJD(1) * t248 - t390 * t584;
t169 = qJD(1) * t654 + t390 * t417;
t677 = -t380 * t689 + t164 - t169;
t162 = -qJD(1) * t246 - t390 * t585;
t167 = qJD(1) * t655 + t390 * t416;
t676 = -t380 * t688 - t162 + t167;
t548 = qJD(1) * t387;
t520 = t360 * t548;
t575 = t380 * t390;
t531 = t359 * t575;
t675 = t520 + t531;
t674 = (-t465 + t470) * t380 + t678 * qJD(1);
t317 = rSges(5,1) * t359 + rSges(5,2) * t360;
t425 = t317 * t380;
t386 = sin(qJ(2));
t389 = cos(qJ(2));
t617 = Icges(3,4) * t389;
t475 = -Icges(3,2) * t386 + t617;
t293 = Icges(3,6) * t387 + t390 * t475;
t618 = Icges(3,4) * t386;
t481 = Icges(3,1) * t389 - t618;
t295 = Icges(3,5) * t387 + t390 * t481;
t441 = t293 * t386 - t295 * t389;
t673 = t387 * t441;
t367 = sin(t381);
t368 = cos(t381);
t615 = Icges(4,4) * t368;
t473 = -Icges(4,2) * t367 + t615;
t270 = Icges(4,6) * t387 + t390 * t473;
t616 = Icges(4,4) * t367;
t479 = Icges(4,1) * t368 - t616;
t272 = Icges(4,5) * t387 + t390 * t479;
t443 = t270 * t367 - t272 * t368;
t672 = t387 * t443;
t671 = t387 * t446;
t670 = t387 * t447;
t377 = t389 * pkin(2);
t361 = t377 + pkin(1);
t632 = pkin(1) - t361;
t669 = t387 * t632;
t292 = -Icges(3,6) * t390 + t387 * t475;
t294 = -Icges(3,5) * t390 + t387 * t481;
t442 = t292 * t386 - t294 * t389;
t668 = t390 * t442;
t269 = -Icges(4,6) * t390 + t387 * t473;
t271 = -Icges(4,5) * t390 + t387 * t479;
t444 = t269 * t367 - t271 * t368;
t667 = t390 * t444;
t385 = sin(qJ(6));
t388 = cos(qJ(6));
t490 = rSges(7,1) * t385 + rSges(7,2) * t388;
t583 = t359 * t380;
t150 = t490 * t583 + (rSges(7,3) * t380 + (-rSges(7,1) * t388 + rSges(7,2) * t385) * qJD(6)) * t360;
t581 = t360 * t380;
t664 = -pkin(9) * t581 - t150;
t570 = t388 * t390;
t572 = t387 * t385;
t298 = t359 * t570 - t572;
t571 = t387 * t388;
t573 = t385 * t390;
t299 = t359 * t573 + t571;
t579 = t360 * t390;
t190 = t299 * rSges(7,1) + t298 * rSges(7,2) + rSges(7,3) * t579;
t300 = t359 * t571 + t573;
t301 = t359 * t572 - t570;
t491 = -t301 * rSges(7,1) - t300 * rSges(7,2);
t580 = t360 * t387;
t191 = rSges(7,3) * t580 - t491;
t663 = -t390 * t190 - t387 * t191;
t376 = t387 * pkin(5);
t319 = pkin(9) * t579 + t376;
t662 = -t190 - t319;
t234 = rSges(7,3) * t359 - t360 * t490;
t227 = t234 * t548;
t521 = t359 * t548;
t661 = pkin(9) * t521 + t227;
t660 = -pkin(9) * t359 - t234;
t373 = t387 * rSges(4,3);
t625 = rSges(4,2) * t367;
t659 = -t390 * t625 + t373;
t637 = pkin(2) * t386;
t496 = -pkin(3) * t367 - t637;
t432 = -t317 + t496;
t223 = t432 * t387;
t224 = t432 * t390;
t658 = t223 * t387 + t224 * t390;
t657 = qJD(1) * t244;
t489 = -rSges(6,2) * t360 + rSges(6,3) * t359;
t260 = -rSges(6,1) * t390 + t387 * t489;
t375 = t387 * rSges(6,1);
t624 = rSges(6,2) * t359;
t488 = rSges(6,3) * t360 + t624;
t529 = t360 * t575;
t547 = qJD(1) * t390;
t498 = rSges(6,1) * t547 + rSges(6,2) * t675 + rSges(6,3) * t529;
t577 = t380 * t387;
t656 = t387 * (t488 * t577 + (t390 * t489 + t375) * qJD(1)) + t390 * (-rSges(6,3) * t521 + t498) + t260 * t547;
t466 = Icges(4,5) * t368 - Icges(4,6) * t367;
t267 = -Icges(4,3) * t390 + t387 * t466;
t467 = Icges(3,5) * t389 - Icges(3,6) * t386;
t290 = -Icges(3,3) * t390 + t387 * t467;
t384 = -qJ(3) - pkin(7);
t379 = -pkin(8) + t384;
t554 = t379 - t384;
t636 = pkin(3) * t368;
t333 = t361 + t636;
t561 = t333 - t361;
t221 = t387 * t561 + t390 * t554;
t320 = -pkin(5) * t390 + pkin(9) * t580;
t366 = pkin(5) * t547;
t519 = t360 * t547;
t532 = t359 * t577;
t409 = t519 - t532;
t501 = qJD(1) * t359 + qJD(6);
t435 = t501 * t390;
t502 = qJD(6) * t359 + qJD(1);
t436 = t502 * t385;
t576 = t380 * t388;
t172 = t388 * t435 + (t360 * t576 - t436) * t387;
t437 = t388 * t502;
t530 = t360 * t577;
t173 = t387 * t437 + (t435 + t530) * t385;
t492 = t173 * rSges(7,1) + t172 * rSges(7,2);
t90 = rSges(7,3) * t409 + t492;
t398 = -t387 * t501 + t529;
t174 = t388 * t398 - t390 * t436;
t175 = t385 * t398 + t390 * t437;
t569 = t175 * rSges(7,1) + t174 * rSges(7,2);
t91 = -rSges(7,3) * t675 + t569;
t650 = (t191 + t320) * t547 + (-pkin(9) * t675 + t366 + t91) * t390 + (pkin(5) * t548 + pkin(9) * t409 + t90) * t387;
t649 = 2 * m(3);
t648 = 2 * m(4);
t647 = 2 * m(5);
t646 = 2 * m(6);
t645 = 2 * m(7);
t382 = t387 ^ 2;
t383 = t390 ^ 2;
t644 = m(6) / 0.2e1;
t643 = m(7) / 0.2e1;
t642 = t387 / 0.2e1;
t641 = -t390 / 0.2e1;
t640 = rSges(7,3) + pkin(9);
t350 = rSges(3,1) * t386 + rSges(3,2) * t389;
t639 = m(3) * t350;
t638 = m(5) * t317;
t635 = pkin(4) * t360;
t633 = t387 * pkin(7);
t378 = t390 * pkin(7);
t631 = -pkin(7) - t384;
t464 = Icges(7,5) * t385 + Icges(7,6) * t388;
t231 = Icges(7,3) * t359 - t360 * t464;
t611 = Icges(7,4) * t385;
t468 = Icges(7,2) * t388 + t611;
t232 = Icges(7,6) * t359 - t360 * t468;
t610 = Icges(7,4) * t388;
t476 = Icges(7,1) * t385 + t610;
t233 = Icges(7,5) * t359 - t360 * t476;
t594 = t233 * t385;
t100 = t231 * t359 + (-t232 * t388 - t594) * t360;
t148 = t468 * t583 + (Icges(7,6) * t380 + (Icges(7,2) * t385 - t610) * qJD(6)) * t360;
t147 = t464 * t583 + (Icges(7,3) * t380 + (-Icges(7,5) * t388 + Icges(7,6) * t385) * qJD(6)) * t360;
t540 = qJD(6) * t360;
t482 = t359 * t147 + t231 * t581 + t583 * t594 + (t359 * t576 + t385 * t540) * t232;
t149 = t476 * t583 + (Icges(7,5) * t380 + (-Icges(7,1) * t388 + t611) * qJD(6)) * t360;
t574 = t385 * t149;
t630 = ((-t574 + (-qJD(6) * t233 - t148) * t388) * t360 + t482) * t359 + t100 * t581;
t629 = rSges(3,1) * t389;
t628 = rSges(4,1) * t368;
t627 = rSges(5,1) * t360;
t626 = rSges(3,2) * t386;
t623 = rSges(3,3) * t390;
t184 = Icges(7,5) * t299 + Icges(7,6) * t298 + Icges(7,3) * t579;
t186 = Icges(7,4) * t299 + Icges(7,2) * t298 + Icges(7,6) * t579;
t188 = Icges(7,1) * t299 + Icges(7,4) * t298 + Icges(7,5) * t579;
t456 = t186 * t388 + t188 * t385;
t85 = Icges(7,5) * t175 + Icges(7,6) * t174 - Icges(7,3) * t675;
t87 = Icges(7,4) * t175 + Icges(7,2) * t174 - Icges(7,6) * t675;
t89 = Icges(7,1) * t175 + Icges(7,4) * t174 - Icges(7,5) * t675;
t22 = (t380 * t456 + t85) * t359 + (t184 * t380 - t385 * t89 - t388 * t87 + (t186 * t385 - t188 * t388) * qJD(6)) * t360;
t622 = t22 * t387;
t185 = Icges(7,5) * t301 + Icges(7,6) * t300 + Icges(7,3) * t580;
t187 = Icges(7,4) * t301 + Icges(7,2) * t300 + Icges(7,6) * t580;
t189 = Icges(7,1) * t301 + Icges(7,4) * t300 + Icges(7,5) * t580;
t455 = t187 * t388 + t189 * t385;
t84 = Icges(7,5) * t173 + Icges(7,6) * t172 + Icges(7,3) * t409;
t86 = Icges(7,4) * t173 + Icges(7,2) * t172 + Icges(7,6) * t409;
t88 = Icges(7,1) * t173 + Icges(7,4) * t172 + Icges(7,5) * t409;
t23 = (t380 * t455 + t84) * t359 + (t185 * t380 - t385 * t88 - t388 * t86 + (t187 * t385 - t189 * t388) * qJD(6)) * t360;
t621 = t23 * t390;
t374 = t387 * rSges(3,3);
t372 = t387 * rSges(5,3);
t620 = -rSges(6,3) - qJ(5);
t597 = qJ(5) * t359;
t593 = t269 * t368;
t592 = t270 * t368;
t591 = t271 * t367;
t590 = t272 * t367;
t589 = t292 * t389;
t588 = t293 * t389;
t587 = t294 * t386;
t586 = t295 * t386;
t582 = t359 * t390;
t578 = t379 * t390;
t318 = t390 * t333;
t352 = t390 * t361;
t222 = -t387 * t554 + t318 - t352;
t266 = -pkin(1) * t390 + t387 * t631 + t352;
t568 = -t222 - t266;
t228 = qJ(5) * t583 + (pkin(4) * t380 - qJD(5)) * t360;
t281 = t489 * t380;
t567 = -t228 - t281;
t493 = -rSges(5,2) * t359 + t627;
t257 = -rSges(5,3) * t390 + t387 * t493;
t258 = rSges(5,1) * t579 - rSges(5,2) * t582 + t372;
t159 = t387 * t257 + t390 * t258;
t265 = t384 * t390 + t378 - t669;
t566 = t387 * t265 + t390 * t266;
t283 = (t597 + t635) * t387;
t284 = pkin(4) * t579 + qJ(5) * t582;
t565 = t387 * t283 + t390 * t284;
t324 = t496 * qJD(2);
t304 = t390 * t324;
t370 = qJD(3) * t387;
t564 = t304 + t370;
t315 = pkin(4) * t359 - qJ(5) * t360;
t563 = -t315 + t488;
t541 = qJD(5) * t359;
t562 = qJ(5) * t529 + t390 * t541;
t560 = rSges(5,2) * t521 + rSges(5,3) * t547;
t518 = t367 * t548;
t559 = rSges(4,2) * t518 + rSges(4,3) * t547;
t517 = t386 * t548;
t356 = pkin(2) * t517;
t558 = pkin(3) * t518 + t356;
t354 = t379 * t548;
t371 = qJD(3) * t390;
t557 = t354 + t371;
t544 = qJD(2) * t386;
t535 = pkin(2) * t544;
t556 = t384 * t548 + t387 * t535;
t555 = t390 * t629 + t374;
t553 = t382 + t383;
t552 = qJD(1) * t245;
t551 = qJD(1) * t254;
t268 = Icges(4,3) * t387 + t390 * t466;
t550 = qJD(1) * t268;
t291 = Icges(3,3) * t387 + t390 * t467;
t549 = qJD(1) * t291;
t546 = qJD(2) * t367;
t545 = qJD(2) * t368;
t543 = qJD(2) * t387;
t542 = qJD(2) * t389;
t539 = -pkin(4) - t640;
t537 = t390 * t626;
t77 = t185 * t359 - t360 * t455;
t97 = t231 * t580 + t232 * t300 + t233 * t301;
t534 = t77 / 0.2e1 + t97 / 0.2e1;
t76 = t184 * t359 - t360 * t456;
t96 = t231 * t579 + t298 * t232 + t299 * t233;
t533 = -t96 / 0.2e1 - t76 / 0.2e1;
t329 = pkin(4) * t532;
t528 = t387 * (pkin(4) * t519 + t387 * t541 - t329 + (t359 * t547 + t530) * qJ(5)) + t390 * (-pkin(4) * t675 - qJ(5) * t521 + t562) + t283 * t547;
t527 = t387 * (-t387 * t425 + (t390 * t493 + t372) * qJD(1)) + t390 * (-rSges(5,1) * t675 - rSges(5,2) * t529 + t560) + t257 * t547;
t503 = t390 * t535;
t522 = -t371 - t556;
t526 = t387 * ((-t390 * t632 - t633) * qJD(1) + t522) + t390 * (-t503 + t370 + (t390 * t631 + t669) * qJD(1)) + t265 * t547;
t525 = -t284 + t568;
t285 = t315 * t548;
t524 = t285 + t558;
t523 = t329 + t557;
t516 = -t583 / 0.2e1;
t515 = t548 / 0.2e1;
t514 = t547 / 0.2e1;
t326 = rSges(4,1) * t367 + rSges(4,2) * t368;
t513 = -t326 - t637;
t218 = t563 * t390;
t163 = qJD(1) * t247 - t387 * t585;
t511 = t248 * t380 + t163;
t165 = qJD(1) * t249 - t387 * t584;
t509 = t246 * t380 - t165;
t166 = qJD(1) * t250 + t387 * t416;
t508 = t380 * t654 - t166;
t168 = qJD(1) * t252 + t387 * t417;
t506 = -t380 * t655 - t168;
t504 = -t387 * t379 + t318;
t500 = t387 * t221 + t390 * t222 + t566;
t259 = -rSges(6,2) * t579 + rSges(6,3) * t582 + t375;
t103 = t390 * t259 + t387 * t260 + t565;
t499 = t562 + t564;
t497 = -t315 + t660;
t495 = -t626 + t629;
t494 = -t625 + t628;
t67 = t184 * t579 + t298 * t186 + t299 * t188;
t68 = t185 * t579 + t298 * t187 + t299 * t189;
t487 = t387 * t68 + t390 * t67;
t43 = t67 * t387 - t390 * t68;
t69 = t184 * t580 + t186 * t300 + t188 * t301;
t70 = t185 * t580 + t187 * t300 + t189 * t301;
t486 = t387 * t70 + t390 * t69;
t44 = t69 * t387 - t390 * t70;
t485 = t387 * t77 + t390 * t76;
t484 = t76 * t387 - t390 * t77;
t483 = t359 * t620 - t333;
t480 = Icges(3,1) * t386 + t617;
t478 = Icges(4,1) * t367 + t615;
t474 = Icges(3,2) * t389 + t618;
t472 = Icges(4,2) * t368 + t616;
t404 = t360 * t539 - t333 - t597;
t399 = t404 * t387;
t101 = (pkin(5) - t379) * t390 + t399 + t491;
t431 = t504 + t284;
t102 = t431 - t662;
t459 = t101 * t390 + t102 * t387;
t116 = -t191 * t359 + t234 * t580;
t117 = t359 * t190 - t234 * t579;
t458 = t116 * t390 + t117 * t387;
t403 = (rSges(6,2) - pkin(4)) * t360 + t483;
t143 = (rSges(6,1) - t379) * t390 + t403 * t387;
t144 = t259 + t431;
t457 = t143 * t390 + t144 * t387;
t454 = t190 * t387 - t191 * t390;
t429 = -t333 - t493;
t200 = (rSges(5,3) - t379) * t390 + t429 * t387;
t201 = t258 + t504;
t451 = t200 * t390 + t201 * t387;
t438 = -t228 + t664;
t280 = t390 * t628 + t659;
t434 = -pkin(1) - t495;
t433 = -t315 + t496;
t152 = t497 * t390;
t430 = -t361 - t494;
t427 = t387 * (t387 * t324 + t547 * t561 - t354 + t556) + t390 * (-qJD(1) * t221 + t304 + t503) + t221 * t547 + t526;
t71 = t390 * t319 + t387 * t320 + t565 - t663;
t426 = (-t377 - t636) * qJD(2);
t424 = qJD(2) * t350;
t423 = qJD(2) * t326;
t422 = t488 + t433;
t419 = t380 * t469;
t418 = t380 * t311;
t415 = qJD(2) * t480;
t414 = qJD(2) * t478;
t413 = qJD(2) * t474;
t412 = qJD(2) * t472;
t411 = qJD(2) * (-Icges(3,5) * t386 - Icges(3,6) * t389);
t410 = qJD(2) * (-Icges(4,5) * t367 - Icges(4,6) * t368);
t108 = -t244 * t390 - t387 * t448;
t109 = -t245 * t390 - t670;
t114 = -t254 * t390 + t671;
t115 = t387 * t445 + t682;
t160 = -t390 * t418 - t657;
t161 = -t387 * t418 + t552;
t170 = t387 * t419 + t551;
t171 = qJD(1) * t653 + t390 * t419;
t18 = t174 * t186 + t175 * t188 - t184 * t675 + t298 * t87 + t299 * t89 + t579 * t85;
t19 = t174 * t187 + t175 * t189 - t185 * t675 + t298 * t86 + t299 * t88 + t579 * t84;
t9 = qJD(1) * t487 + t18 * t387 - t19 * t390;
t407 = t43 * t547 + t44 * t548 + ((-t108 - t115) * t548 + t685 * t547) * t390 + (t9 + ((t160 + t171) * t387 + (t670 - t671 - t685) * qJD(1)) * t387 + (t109 + t114) * t548 + t681 * t547 + ((-t161 - t170) * t387 + (t684 * t581 + t683 * t583 - t657) * t390 + (t677 * t387 + (-t165 + t168) * t390) * t360 + (t676 * t387 + (t163 - t166) * t390) * t359 + ((-t448 + t445 + t690) * t387 + t682 + t681) * qJD(1)) * t390) * t387;
t282 = t493 * t380;
t406 = -t282 + t426;
t405 = t426 - t228;
t178 = t422 * t390;
t402 = -t281 + t405;
t401 = t433 + t660;
t400 = t427 + t528;
t28 = t96 * t359 + t360 * t487;
t29 = t97 * t359 + t360 * t486;
t16 = t172 * t186 + t173 * t188 + t184 * t409 + t300 * t87 + t301 * t89 + t580 * t85;
t17 = t172 * t187 + t173 * t189 + t185 * t409 + t300 * t86 + t301 * t88 + t580 * t84;
t34 = t147 * t580 + t300 * t148 + t301 * t149 + t172 * t232 + t173 * t233 + t231 * t409;
t3 = (-t380 * t486 + t34) * t359 + (-qJD(1) * t44 + t16 * t390 + t17 * t387 + t380 * t97) * t360;
t35 = t147 * t579 + t298 * t148 + t299 * t149 + t174 * t232 + t175 * t233 - t231 * t675;
t4 = (-t380 * t487 + t35) * t359 + (-qJD(1) * t43 + t18 * t390 + t19 * t387 + t380 * t96) * t360;
t8 = qJD(1) * t486 + t16 * t387 - t17 * t390;
t397 = t3 * t641 + t4 * t642 + t359 * (qJD(1) * t485 - t621 + t622) / 0.2e1 + t29 * t515 + t28 * t514 + t484 * t581 / 0.2e1 + t8 * t580 / 0.2e1 + t9 * t579 / 0.2e1 + (t360 * t514 + t387 * t516) * t44 + (t390 * t516 - t520 / 0.2e1) * t43;
t396 = rSges(3,2) * t517 + rSges(3,3) * t547 - t390 * t424;
t127 = t401 * t390;
t395 = t405 + t664;
t14 = (t390 * t161 + (t109 + t665) * qJD(1)) * t390 + (t108 * qJD(1) + (-t162 * t359 + t164 * t360 - t247 * t581 - t249 * t583 + t552) * t387 + (-t160 + t509 * t360 + t511 * t359 + (-t244 - t447) * qJD(1)) * t390) * t387;
t15 = (t390 * t170 + (t114 - t666) * qJD(1)) * t390 + (t115 * qJD(1) + (t167 * t359 - t169 * t360 + t250 * t581 + t252 * t583 + t551) * t387 + (-t171 - t506 * t360 + t508 * t359 + (t653 + t446) * qJD(1)) * t390) * t387;
t394 = (-t8 - t14 - t15) * t390 + t407;
t391 = t622 / 0.2e1 - t621 / 0.2e1 + (t359 * t677 - t360 * t676 - t387 * t674 + t390 * t679 + t35) * t642 + (t34 + t674 * t390 + t679 * t387 + (t508 + t511) * t360 + (t506 - t509) * t359) * t641 + (t359 * t683 + t360 * t684 + t678 * t387 - t680 * t390 + t77 + t97) * t515 + (t359 * t688 + t360 * t689 + t680 * t387 + t678 * t390 + t76 + t96) * t514;
t334 = t495 * qJD(2);
t308 = t494 * qJD(2);
t297 = -t537 + t555;
t296 = t387 * t495 - t623;
t286 = t488 * t548;
t279 = -rSges(4,3) * t390 + t387 * t494;
t264 = t513 * t390;
t263 = t513 * t387;
t243 = t633 + (pkin(1) - t626) * t390 + t555;
t242 = t387 * t434 + t378 + t623;
t220 = -t387 * t384 + t280 + t352;
t219 = (rSges(4,3) - t384) * t390 + t430 * t387;
t217 = t563 * t387;
t210 = t387 * t411 + t549;
t209 = -qJD(1) * t290 + t390 * t411;
t195 = t387 * t410 + t550;
t194 = -qJD(1) * t267 + t390 * t410;
t193 = t350 * t543 + ((-rSges(3,3) - pkin(7)) * t387 + t434 * t390) * qJD(1);
t192 = (t378 + (-pkin(1) - t629) * t387) * qJD(1) + t396;
t180 = -t326 * t547 - t387 * t308 + (-t386 * t547 - t387 * t542) * pkin(2);
t179 = t326 * t548 + t356 + (-pkin(2) * t542 - t308) * t390;
t177 = t422 * t387;
t151 = t497 * t387;
t135 = t387 * t291 - t390 * t441;
t134 = t387 * t290 - t668;
t133 = -t291 * t390 - t673;
t132 = -t290 * t390 - t387 * t442;
t126 = t401 * t387;
t125 = t326 * t543 + (t390 * t430 - t373) * qJD(1) - t522;
t124 = t370 + (-t361 - t628) * t548 + (-qJD(1) * t384 + qJD(2) * t513) * t390 + t559;
t123 = qJD(1) * t224 + t387 * t406;
t122 = t317 * t548 + t390 * t406 + t558;
t121 = t387 * t268 - t390 * t443;
t120 = t387 * t267 - t667;
t119 = -t268 * t390 - t672;
t118 = -t267 * t390 - t387 * t444;
t107 = qJD(1) * t218 + t387 * t567;
t106 = t390 * t567 + t285 - t286;
t105 = (-t324 + t425) * t387 + (t390 * t429 - t372) * qJD(1) + t557;
t104 = -t390 * t425 + (-t578 + (-t333 - t627) * t387) * qJD(1) + t560 + t564;
t99 = t454 * t360;
t95 = qJD(1) * t178 + t387 * t402;
t94 = t390 * t402 - t286 + t524;
t81 = (-t541 - t324 + (t360 * t620 - t624) * t380) * t387 + (t390 * t403 - t375) * qJD(1) + t523;
t80 = -pkin(4) * t531 + (-t578 + (t483 - t635) * t387) * qJD(1) + t498 + t499;
t79 = qJD(1) * t152 + t387 * t438;
t78 = t390 * t438 + t285 + t661;
t75 = -t258 * t548 + t527;
t72 = t500 + t159;
t58 = qJD(1) * t127 + t387 * t395;
t57 = t390 * t395 + t524 + t661;
t52 = t103 + t500;
t51 = (-qJ(5) * t581 - t324 + (t380 * t640 - qJD(5)) * t359) * t387 + (t390 * t404 - t376) * qJD(1) - t492 + t523;
t50 = t366 + t539 * t531 + (t399 - t578) * qJD(1) + t499 + t569;
t49 = t71 + t500;
t48 = (-t259 - t284) * t548 + t528 + t656;
t47 = (-t234 * t577 - t90) * t359 + (t387 * t150 - t191 * t380 + t234 * t547) * t360;
t46 = (t234 * t575 + t91) * t359 + (-t150 * t390 + t190 * t380 + t227) * t360;
t31 = t454 * t583 + (qJD(1) * t663 - t387 * t91 + t390 * t90) * t360;
t30 = (-t258 + t568) * t548 + t427 + t527;
t25 = (-t284 + t662) * t548 + t528 + t650;
t24 = (-t259 + t525) * t548 + t400 + t656;
t11 = t400 + (t525 + t662) * t548 + t650;
t1 = [-t388 * t233 * t540 + t482 + (t143 * t81 + t144 * t80) * t646 + (t104 * t201 + t105 * t200) * t647 + (t124 * t220 + t125 * t219) * t648 + (t192 * t243 + t193 * t242) * t649 + (t101 * t51 + t102 * t50) * t645 + t692 * t583 + t691 * t581 + (-t472 + t479) * t546 + (t473 + t478) * t545 + (-t474 + t481) * t544 + (t475 + t480) * t542 + t686 * t359 + (-t148 * t388 - t574 - t687) * t360; t391 + ((t592 / 0.2e1 + t590 / 0.2e1 - t243 * t639 + t588 / 0.2e1 + t586 / 0.2e1) * t390 + (t593 / 0.2e1 + t591 / 0.2e1 + t589 / 0.2e1 + t587 / 0.2e1 + t242 * t639) * t387) * qJD(1) + m(3) * ((-t192 * t387 - t193 * t390) * t350 + (-t242 * t390 - t243 * t387) * t334) + m(4) * (t124 * t263 + t125 * t264 + t179 * t219 + t180 * t220) + m(5) * (t104 * t223 + t105 * t224 + t122 * t200 + t123 * t201) + m(6) * (t143 * t94 + t144 * t95 + t177 * t80 + t178 * t81) + m(7) * (t101 * t57 + t102 * t58 + t126 * t50 + t127 * t51) + ((-qJD(1) * t269 - t390 * t412) * t368 + (-qJD(1) * t271 - t390 * t414) * t367 + (-qJD(1) * t292 - t390 * t413) * t389 + (-qJD(1) * t294 - t390 * t415) * t386 + (-t441 - t443) * qJD(2)) * t642 + ((qJD(1) * t270 - t387 * t412) * t368 + (qJD(1) * t272 - t387 * t414) * t367 + (qJD(1) * t293 - t387 * t413) * t389 + (qJD(1) * t295 - t387 * t415) * t386 + (-t442 - t444) * qJD(2)) * t641 + (t467 + t466) * qJD(2) * (t382 / 0.2e1 + t383 / 0.2e1); t407 + t387 * ((t387 * t194 + (t120 + t672) * qJD(1)) * t387 + (t121 * qJD(1) + (t269 * t545 + t271 * t546) * t390 + (-t195 + (-t590 - t592) * qJD(2) + (t268 - t444) * qJD(1)) * t387) * t390) - t390 * ((t390 * t210 + (t133 + t668) * qJD(1)) * t390 + (t132 * qJD(1) + (-t293 * t542 - t295 * t544 + t549) * t387 + (-t209 + (t587 + t589) * qJD(2) - t441 * qJD(1)) * t390) * t387) - t390 * ((t390 * t195 + (t119 + t667) * qJD(1)) * t390 + (t118 * qJD(1) + (-t270 * t545 - t272 * t546 + t550) * t387 + (-t194 + (t591 + t593) * qJD(2) - t443 * qJD(1)) * t390) * t387) + (t122 * t224 + t123 * t223 + t30 * t72) * t647 + (t177 * t95 + t178 * t94 + t24 * t52) * t646 + (t11 * t49 + t126 * t58 + t127 * t57) * t645 + (t264 * t179 + t263 * t180 + (t387 * t279 + t280 * t390 + t566) * ((qJD(1) * t279 - t390 * t423 + t559) * t390 + (-t387 * t423 + (-t266 - t280 + t659) * qJD(1)) * t387 + t526)) * t648 - t390 * t8 - t390 * t14 - t390 * t15 + t387 * ((t387 * t209 + (t134 + t673) * qJD(1)) * t387 + (t135 * qJD(1) + (t292 * t542 + t294 * t544) * t390 + (-t210 + (-t586 - t588) * qJD(2) + (t291 - t442) * qJD(1)) * t387) * t390) + ((t387 * t296 + t297 * t390) * ((qJD(1) * t296 + t396) * t390 + (-t387 * t424 + (-t297 - t537 + t374) * qJD(1)) * t387) + t553 * t350 * t334) * t649 + ((-t118 - t132) * t390 + (t119 + t133) * t387) * t548 + ((-t120 - t134) * t390 + (t121 + t135) * t387) * t547; m(7) * (qJD(1) * t459 + t387 * t51 - t390 * t50) + m(6) * (qJD(1) * t457 + t387 * t81 - t390 * t80) + m(5) * (qJD(1) * t451 - t104 * t390 + t387 * t105) + m(4) * (-t124 * t390 + t387 * t125 + (t219 * t390 + t220 * t387) * qJD(1)); m(7) * (t387 * t57 - t390 * t58 + (t126 * t387 + t127 * t390) * qJD(1)) + m(6) * (t387 * t94 - t390 * t95 + (t177 * t387 + t178 * t390) * qJD(1)) + m(5) * (qJD(1) * t658 + t387 * t122 - t123 * t390) + m(4) * (t387 * t179 - t180 * t390 + (t263 * t387 + t264 * t390) * qJD(1)); 0; t391 + m(6) * (t106 * t143 + t107 * t144 + t217 * t80 + t218 * t81) + m(7) * (t101 * t78 + t102 * t79 + t151 * t50 + t152 * t51) + (-t104 * t387 - t105 * t390 + (t200 * t387 - t201 * t390) * qJD(1)) * t638 - m(5) * t451 * t282; m(7) * (t11 * t71 + t126 * t79 + t127 * t78 + t151 * t58 + t152 * t57 + t25 * t49) + m(6) * (t103 * t24 + t106 * t178 + t107 * t177 + t217 * t95 + t218 * t94 + t48 * t52) + t394 + (-t122 * t390 - t123 * t387 + (-t223 * t390 + t224 * t387) * qJD(1)) * t638 + m(5) * (t159 * t30 - t282 * t658 + t75 * t72); m(6) * (t106 * t387 - t107 * t390 + (t217 * t387 + t218 * t390) * qJD(1)) + m(7) * (t78 * t387 - t390 * t79 + (t151 * t387 + t152 * t390) * qJD(1)); (t151 * t79 + t152 * t78 + t25 * t71) * t645 + (t103 * t48 + t106 * t218 + t107 * t217) * t646 + (t282 * t317 * t553 + t159 * t75) * t647 + t394; 0.2e1 * (t457 * t644 + t459 * t643) * t581 + 0.2e1 * ((-t101 * t548 + t102 * t547 + t387 * t50 + t390 * t51) * t643 + (-t143 * t548 + t144 * t547 + t387 * t80 + t390 * t81) * t644) * t359; 0.2e1 * ((t126 * t577 + t127 * t575 - t11) * t643 + (t177 * t577 + t178 * t575 - t24) * t644) * t360 + 0.2e1 * ((t126 * t547 - t127 * t548 + t380 * t49 + t387 * t58 + t390 * t57) * t643 + (t177 * t547 - t178 * t548 + t380 * t52 + t387 * t95 + t390 * t94) * t644) * t359; 0; 0.2e1 * ((t151 * t577 + t152 * t575 - t25) * t643 + (t217 * t577 + t218 * t575 - t48) * t644) * t360 + 0.2e1 * ((t151 * t547 - t152 * t548 + t380 * t71 + t387 * t79 + t390 * t78) * t643 + (t103 * t380 + t106 * t390 + t107 * t387 + t217 * t547 - t218 * t548) * t644) * t359; 0.4e1 * (t644 + t643) * (-0.1e1 + t553) * t359 * t581; m(7) * (t101 * t47 + t102 * t46 + t116 * t51 + t117 * t50) + (-t387 * t534 + t390 * t533) * t583 + ((t35 / 0.2e1 + t22 / 0.2e1) * t390 + (t23 / 0.2e1 + t34 / 0.2e1) * t387 + (t387 * t533 + t390 * t534) * qJD(1)) * t360 + t630; t397 + m(7) * (-t11 * t99 + t116 * t57 + t117 * t58 + t126 * t46 + t127 * t47 + t31 * t49); m(7) * (qJD(1) * t458 + t47 * t387 - t390 * t46); t397 + m(7) * (t116 * t78 + t117 * t79 + t151 * t46 + t152 * t47 - t25 * t99 + t31 * t71); m(7) * ((t380 * t458 - t31) * t360 + (-t380 * t99 + t387 * t46 + t390 * t47 + (-t116 * t387 + t117 * t390) * qJD(1)) * t359); (t116 * t47 + t117 * t46 - t31 * t99) * t645 + ((-t390 * t28 - t387 * t29 - t359 * t485) * t380 + t630) * t359 + (t390 * t4 + t387 * t3 + t485 * t581 + (t100 * t380 + t22 * t390 + t23 * t387) * t359 + (-t387 * t28 + t390 * t29 - t359 * t484) * qJD(1)) * t360;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
