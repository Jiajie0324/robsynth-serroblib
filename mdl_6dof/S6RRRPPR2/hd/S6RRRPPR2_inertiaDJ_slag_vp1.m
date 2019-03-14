% Calculate time derivative of joint inertia matrix for
% S6RRRPPR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4]';
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
% Datum: 2019-03-09 15:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPPR2_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR2_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR2_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR2_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR2_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPPR2_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPPR2_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:24:59
% EndTime: 2019-03-09 15:25:37
% DurationCPUTime: 26.09s
% Computational Cost: add. (34424->996), mult. (34251->1319), div. (0->0), fcn. (30625->10), ass. (0->516)
t409 = qJ(2) + qJ(3);
t393 = pkin(10) + t409;
t386 = cos(t393);
t385 = sin(t393);
t642 = Icges(5,4) * t385;
t339 = Icges(5,2) * t386 + t642;
t630 = Icges(6,6) * t385;
t486 = Icges(6,3) * t386 + t630;
t721 = t339 + t486;
t641 = Icges(5,4) * t386;
t340 = Icges(5,1) * t385 + t641;
t629 = Icges(6,6) * t386;
t488 = Icges(6,2) * t385 + t629;
t720 = t488 + t340;
t412 = sin(qJ(1));
t415 = cos(qJ(1));
t497 = -Icges(5,2) * t385 + t641;
t270 = Icges(5,6) * t412 + t415 * t497;
t487 = -Icges(6,3) * t385 + t629;
t273 = Icges(6,5) * t412 - t415 * t487;
t719 = t270 - t273;
t502 = Icges(5,1) * t386 - t642;
t272 = Icges(5,5) * t412 + t415 * t502;
t489 = Icges(6,2) * t386 - t630;
t275 = Icges(6,4) * t412 - t415 * t489;
t718 = t272 - t275;
t406 = qJD(2) + qJD(3);
t717 = (-t487 - t497) * t406;
t716 = (t489 + t502) * t406;
t491 = Icges(5,5) * t386 - Icges(5,6) * t385;
t268 = Icges(5,3) * t412 + t415 * t491;
t496 = Icges(6,4) * t386 - Icges(6,5) * t385;
t277 = Icges(6,1) * t412 - t415 * t496;
t396 = sin(t409);
t397 = cos(t409);
t492 = Icges(4,5) * t397 - Icges(4,6) * t396;
t299 = Icges(4,3) * t412 + t415 * t492;
t715 = t268 + t277 + t299;
t337 = Icges(5,5) * t385 + Icges(5,6) * t386;
t352 = Icges(4,5) * t396 + Icges(4,6) * t397;
t495 = Icges(6,4) * t385 + Icges(6,5) * t386;
t703 = t337 - t495 + t352;
t644 = Icges(4,4) * t396;
t353 = Icges(4,2) * t397 + t644;
t643 = Icges(4,4) * t397;
t354 = Icges(4,1) * t396 + t643;
t714 = t353 * t396 - t354 * t397 + t385 * t721 - t720 * t386;
t269 = -Icges(5,6) * t415 + t412 * t497;
t684 = Icges(6,5) * t415 + t412 * t487;
t713 = t269 + t684;
t271 = -Icges(5,5) * t415 + t412 * t502;
t683 = Icges(6,4) * t415 + t412 * t489;
t712 = t271 + t683;
t399 = t412 * rSges(4,3);
t658 = rSges(4,1) * t397;
t518 = -rSges(4,2) * t396 + t658;
t307 = t415 * t518 + t399;
t407 = t412 ^ 2;
t682 = Icges(6,1) * t415 + t412 * t496;
t711 = t682 * t415;
t442 = t406 * t486;
t443 = t406 * t488;
t616 = t340 * t406;
t181 = -qJD(1) * t271 - t415 * t616;
t186 = qJD(1) * t683 + t415 * t443;
t709 = -t406 * t719 + t181 - t186;
t617 = t339 * t406;
t179 = -qJD(1) * t269 - t415 * t617;
t184 = qJD(1) * t684 + t415 * t442;
t708 = -t406 * t718 - t179 + t184;
t577 = qJD(1) * t412;
t552 = t386 * t577;
t604 = t406 * t415;
t564 = t385 * t604;
t707 = t552 + t564;
t416 = -pkin(8) - pkin(7);
t411 = sin(qJ(2));
t574 = qJD(2) * t411;
t567 = pkin(2) * t574;
t706 = qJD(1) * t416 + t567;
t267 = -Icges(5,3) * t415 + t412 * t491;
t298 = -Icges(4,3) * t415 + t412 * t492;
t477 = t269 * t385 - t271 * t386;
t690 = t415 * t477;
t474 = -t385 * t684 + t386 * t683;
t691 = t415 * t474;
t498 = -Icges(4,2) * t396 + t643;
t300 = -Icges(4,6) * t415 + t412 * t498;
t503 = Icges(4,1) * t397 - t644;
t302 = -Icges(4,5) * t415 + t412 * t503;
t473 = t300 * t396 - t302 * t397;
t692 = t415 * t473;
t705 = t690 - t691 + t692 + (-t267 - t298 + t682) * t412;
t301 = Icges(4,6) * t412 + t415 * t498;
t303 = Icges(4,5) * t412 + t415 * t503;
t472 = t301 * t396 - t303 * t397;
t475 = t273 * t385 - t275 * t386;
t476 = t270 * t385 - t272 * t386;
t704 = (-t472 + t475 - t476) * t415 + t715 * t412;
t314 = t498 * t406;
t315 = t503 * t406;
t614 = t354 * t406;
t615 = t353 * t406;
t702 = (t315 - t615) * t397 + (-t314 - t614) * t396 + (-t442 - t617 + t716) * t386 + (-t443 - t616 + t717) * t385 + t703 * qJD(1);
t700 = (t491 + t492 - t496) * t406 + t714 * qJD(1);
t343 = rSges(5,1) * t385 + rSges(5,2) * t386;
t455 = t343 * t406;
t414 = cos(qJ(2));
t376 = rSges(3,1) * t411 + rSges(3,2) * t414;
t453 = qJD(2) * t376;
t699 = t412 * t453;
t645 = Icges(3,4) * t414;
t500 = -Icges(3,2) * t411 + t645;
t323 = Icges(3,6) * t412 + t415 * t500;
t646 = Icges(3,4) * t411;
t505 = Icges(3,1) * t414 - t646;
t325 = Icges(3,5) * t412 + t415 * t505;
t470 = t323 * t411 - t325 * t414;
t698 = t412 * t470;
t697 = t412 * t472;
t696 = t412 * t475;
t695 = t412 * t476;
t387 = t414 * pkin(2) + pkin(1);
t661 = pkin(1) - t387;
t694 = t412 * t661;
t322 = -Icges(3,6) * t415 + t412 * t500;
t324 = -Icges(3,5) * t415 + t412 * t505;
t471 = t322 * t411 - t324 * t414;
t693 = t415 * t471;
t413 = cos(qJ(6));
t600 = t413 * t415;
t410 = sin(qJ(6));
t603 = t410 * t412;
t329 = t385 * t600 - t603;
t601 = t412 * t413;
t602 = t410 * t415;
t330 = t385 * t602 + t601;
t609 = t386 * t415;
t216 = t330 * rSges(7,1) + t329 * rSges(7,2) + rSges(7,3) * t609;
t331 = t385 * t601 + t602;
t332 = t385 * t603 - t600;
t515 = -rSges(7,1) * t332 - rSges(7,2) * t331;
t610 = t386 * t412;
t217 = rSges(7,3) * t610 - t515;
t689 = -t415 * t216 - t412 * t217;
t402 = t412 * pkin(5);
t345 = pkin(9) * t609 + t402;
t688 = -t216 - t345;
t613 = t385 * t406;
t248 = qJ(5) * t613 + (pkin(4) * t406 - qJD(5)) * t386;
t513 = -rSges(6,2) * t386 + rSges(6,3) * t385;
t687 = -t513 * t406 - t248;
t686 = qJD(1) * t267;
t685 = qJD(1) * t298;
t493 = Icges(3,5) * t414 - Icges(3,6) * t411;
t320 = -Icges(3,3) * t415 + t412 * t493;
t405 = -qJ(4) + t416;
t583 = t405 - t416;
t664 = pkin(3) * t397;
t360 = t387 + t664;
t589 = t360 - t387;
t241 = t412 * t589 + t415 * t583;
t678 = 2 * m(3);
t677 = 2 * m(4);
t676 = 2 * m(5);
t675 = 2 * m(6);
t674 = 2 * m(7);
t408 = t415 ^ 2;
t673 = m(6) / 0.2e1;
t672 = m(7) / 0.2e1;
t671 = t412 / 0.2e1;
t670 = -t415 / 0.2e1;
t669 = rSges(7,3) + pkin(9);
t668 = m(3) * t376;
t654 = rSges(4,2) * t397;
t355 = rSges(4,1) * t396 + t654;
t667 = m(4) * t355;
t666 = pkin(2) * t411;
t665 = pkin(3) * t396;
t663 = pkin(4) * t386;
t662 = t412 * pkin(7);
t404 = t415 * pkin(7);
t660 = -pkin(7) - t416;
t659 = rSges(3,1) * t414;
t657 = rSges(5,1) * t386;
t656 = rSges(3,2) * t411;
t653 = rSges(6,2) * t385;
t652 = rSges(3,3) * t415;
t527 = qJD(1) * t385 + qJD(6);
t562 = t386 * t604;
t427 = -t412 * t527 + t562;
t528 = qJD(6) * t385 + qJD(1);
t464 = t528 * t410;
t193 = t413 * t427 - t415 * t464;
t465 = t413 * t528;
t194 = t410 * t427 + t415 * t465;
t100 = Icges(7,1) * t194 + Icges(7,4) * t193 - Icges(7,5) * t707;
t210 = Icges(7,5) * t330 + Icges(7,6) * t329 + Icges(7,3) * t609;
t212 = Icges(7,4) * t330 + Icges(7,2) * t329 + Icges(7,6) * t609;
t214 = Icges(7,1) * t330 + Icges(7,4) * t329 + Icges(7,5) * t609;
t482 = t212 * t413 + t214 * t410;
t96 = Icges(7,5) * t194 + Icges(7,6) * t193 - Icges(7,3) * t707;
t98 = Icges(7,4) * t194 + Icges(7,2) * t193 - Icges(7,6) * t707;
t25 = (t406 * t482 + t96) * t385 + (-t100 * t410 + t210 * t406 - t413 * t98 + (t212 * t410 - t214 * t413) * qJD(6)) * t386;
t651 = t25 * t412;
t211 = Icges(7,5) * t332 + Icges(7,6) * t331 + Icges(7,3) * t610;
t213 = Icges(7,4) * t332 + Icges(7,2) * t331 + Icges(7,6) * t610;
t215 = Icges(7,1) * t332 + Icges(7,4) * t331 + Icges(7,5) * t610;
t481 = t213 * t413 + t215 * t410;
t463 = t527 * t415;
t605 = t406 * t413;
t191 = t413 * t463 + (t386 * t605 - t464) * t412;
t606 = t406 * t412;
t563 = t386 * t606;
t192 = t412 * t465 + (t463 + t563) * t410;
t576 = qJD(1) * t415;
t551 = t386 * t576;
t565 = t385 * t606;
t437 = t551 - t565;
t95 = Icges(7,5) * t192 + Icges(7,6) * t191 + Icges(7,3) * t437;
t97 = Icges(7,4) * t192 + Icges(7,2) * t191 + Icges(7,6) * t437;
t99 = Icges(7,1) * t192 + Icges(7,4) * t191 + Icges(7,5) * t437;
t26 = (t406 * t481 + t95) * t385 + (t211 * t406 - t410 * t99 - t413 * t97 + (t213 * t410 - t215 * t413) * qJD(6)) * t386;
t650 = t26 * t415;
t401 = t412 * rSges(6,1);
t400 = t412 * rSges(3,3);
t398 = t412 * rSges(5,3);
t649 = -rSges(6,3) - qJ(5);
t490 = Icges(7,5) * t410 + Icges(7,6) * t413;
t251 = Icges(7,3) * t385 - t386 * t490;
t639 = Icges(7,4) * t410;
t494 = Icges(7,2) * t413 + t639;
t252 = Icges(7,6) * t385 - t386 * t494;
t638 = Icges(7,4) * t413;
t501 = Icges(7,1) * t410 + t638;
t253 = Icges(7,5) * t385 - t386 * t501;
t623 = t253 * t410;
t114 = t251 * t385 + (-t252 * t413 - t623) * t386;
t166 = t494 * t613 + (Icges(7,6) * t406 + (Icges(7,2) * t410 - t638) * qJD(6)) * t386;
t165 = t490 * t613 + (Icges(7,3) * t406 + (-Icges(7,5) * t413 + Icges(7,6) * t410) * qJD(6)) * t386;
t571 = qJD(6) * t386;
t611 = t386 * t406;
t506 = t385 * t165 + t251 * t611 + t613 * t623 + (t385 * t605 + t410 * t571) * t252;
t167 = t501 * t613 + (Icges(7,5) * t406 + (-Icges(7,1) * t413 + t639) * qJD(6)) * t386;
t624 = t167 * t410;
t648 = t114 * t611 + ((-t624 + (-qJD(6) * t253 - t166) * t413) * t386 + t506) * t385;
t625 = qJ(5) * t385;
t318 = t518 * t406;
t622 = t318 * t412;
t621 = t322 * t414;
t620 = t323 * t414;
t619 = t324 * t411;
t618 = t325 * t411;
t612 = t385 * t415;
t608 = t396 * t406;
t607 = t397 * t406;
t599 = t415 * t405;
t598 = t194 * rSges(7,1) + t193 * rSges(7,2);
t347 = t415 * t360;
t377 = t415 * t387;
t242 = -t412 * t583 + t347 - t377;
t597 = t412 * t241 + t415 * t242;
t283 = rSges(5,1) * t609 - rSges(5,2) * t612 + t398;
t596 = -t242 - t283;
t309 = pkin(4) * t609 + qJ(5) * t612;
t595 = -t242 - t309;
t290 = t415 * t416 + t404 - t694;
t291 = -t415 * pkin(1) + t412 * t660 + t377;
t594 = t412 * t290 + t415 * t291;
t306 = -t415 * rSges(4,3) + t412 * t518;
t203 = t412 * t306 + t415 * t307;
t341 = pkin(4) * t385 - qJ(5) * t386;
t550 = t396 * t577;
t372 = pkin(3) * t550;
t593 = t341 * t577 + t372;
t592 = t343 * t577 + t372;
t344 = -pkin(3) * t608 - t567;
t591 = qJD(4) * t412 + t415 * t344;
t572 = qJD(5) * t385;
t590 = qJ(5) * t562 + t415 * t572;
t553 = t385 * t577;
t588 = rSges(5,2) * t553 + rSges(5,3) * t576;
t587 = rSges(4,2) * t550 + rSges(4,3) * t576;
t586 = qJD(4) * t415 + t405 * t577;
t585 = t706 * t412;
t584 = t415 * t659 + t400;
t582 = t407 + t408;
t581 = qJD(1) * t268;
t580 = qJD(1) * t277;
t579 = qJD(1) * t299;
t321 = Icges(3,3) * t412 + t415 * t493;
t578 = qJD(1) * t321;
t573 = qJD(2) * t414;
t570 = -pkin(4) - t669;
t569 = pkin(3) * t607;
t568 = t415 * t656;
t566 = pkin(2) * t573;
t108 = t251 * t609 + t252 * t329 + t253 * t330;
t88 = t210 * t385 - t386 * t482;
t561 = -t88 / 0.2e1 - t108 / 0.2e1;
t109 = t251 * t610 + t252 * t331 + t253 * t332;
t89 = t211 * t385 - t386 * t481;
t560 = t89 / 0.2e1 + t109 / 0.2e1;
t529 = t415 * t567;
t559 = t412 * (t344 * t412 + t576 * t589 + t585 - t586) + t415 * (-qJD(1) * t241 + t529 + t591) + t241 * t576;
t454 = t355 * t406;
t558 = t412 * (qJD(1) * t307 - t412 * t454) + t415 * (-t604 * t654 + (-t396 * t604 - t397 * t577) * rSges(4,1) + t587) + t306 * t576;
t557 = t412 * ((-t415 * t661 - t662) * qJD(1) - t585) + t415 * (-t529 + (t415 * t660 + t694) * qJD(1)) + t290 * t576;
t284 = -rSges(6,2) * t609 + rSges(6,3) * t612 + t401;
t556 = -t284 + t595;
t512 = rSges(6,3) * t386 + t653;
t555 = -t512 * t577 + t593;
t351 = pkin(4) * t565;
t554 = t351 + t586;
t549 = t411 * t577;
t514 = rSges(7,1) * t410 + rSges(7,2) * t413;
t254 = rSges(7,3) * t385 - t386 * t514;
t247 = t254 * t577;
t548 = -t613 / 0.2e1;
t547 = t577 / 0.2e1;
t546 = t576 / 0.2e1;
t545 = -t355 - t666;
t544 = -t341 - t665;
t543 = -t343 - t665;
t180 = qJD(1) * t270 - t412 * t617;
t541 = t271 * t406 + t180;
t182 = qJD(1) * t272 - t412 * t616;
t539 = t269 * t406 - t182;
t183 = qJD(1) * t273 + t412 * t442;
t538 = t406 * t683 - t183;
t185 = qJD(1) * t275 + t412 * t443;
t536 = -t406 * t684 - t185;
t206 = -qJD(1) * t300 - t415 * t615;
t534 = t303 * t406 + t206;
t207 = qJD(1) * t301 - t412 * t615;
t533 = t302 * t406 + t207;
t208 = -qJD(1) * t302 - t415 * t614;
t532 = -t301 * t406 + t208;
t209 = qJD(1) * t303 - t412 * t614;
t531 = t300 * t406 - t209;
t530 = -t412 * t405 + t347;
t526 = t595 + t688;
t517 = -rSges(5,2) * t385 + t657;
t282 = -rSges(5,3) * t415 + t412 * t517;
t107 = t412 * t282 + t415 * t283 + t597;
t308 = (t625 + t663) * t412;
t525 = t412 * t308 + t415 * t309 + t597;
t524 = pkin(9) * t553 + t247 + t593;
t523 = t590 + t591;
t522 = rSges(6,1) * t576 + rSges(6,2) * t707 + rSges(6,3) * t562;
t521 = t512 + t544;
t520 = -t665 - t666;
t519 = -t656 + t659;
t516 = rSges(7,1) * t192 + rSges(7,2) * t191;
t72 = t210 * t609 + t212 * t329 + t214 * t330;
t73 = t211 * t609 + t213 * t329 + t215 * t330;
t511 = t412 * t73 + t415 * t72;
t47 = t412 * t72 - t415 * t73;
t74 = t210 * t610 + t212 * t331 + t214 * t332;
t75 = t211 * t610 + t213 * t331 + t215 * t332;
t510 = t412 * t75 + t415 * t74;
t48 = t412 * t74 - t415 * t75;
t509 = t412 * t89 + t415 * t88;
t508 = t412 * t88 - t415 * t89;
t507 = t385 * t649 - t360;
t504 = Icges(3,1) * t411 + t645;
t499 = Icges(3,2) * t414 + t646;
t434 = t386 * t570 - t360 - t625;
t428 = t434 * t412;
t115 = (pkin(5) - t405) * t415 + t428 + t515;
t460 = t530 + t309;
t116 = t460 - t688;
t485 = t115 * t415 + t116 * t412;
t128 = -t217 * t385 + t254 * t610;
t129 = t216 * t385 - t254 * t609;
t484 = t128 * t415 + t129 * t412;
t432 = (rSges(6,2) - pkin(4)) * t386 + t507;
t159 = (rSges(6,1) - t405) * t415 + t432 * t412;
t160 = t284 + t460;
t483 = t159 * t415 + t160 * t412;
t480 = t216 * t412 - t217 * t415;
t466 = -t569 + t687;
t462 = -pkin(1) - t519;
t461 = -t343 + t520;
t221 = t521 * t415;
t459 = -t387 - t518;
t458 = -t360 - t517;
t457 = t412 * (pkin(4) * t551 + t412 * t572 - t351 + (t385 * t576 + t563) * qJ(5)) + t415 * (-pkin(4) * t707 - qJ(5) * t553 + t590) + t308 * t576 + t559;
t456 = t412 * (-t412 * t455 + (t415 * t517 + t398) * qJD(1)) + t415 * (-rSges(5,1) * t707 - rSges(5,2) * t562 + t588) + t282 * t576 + t559;
t285 = -rSges(6,1) * t415 + t412 * t513;
t83 = t415 * t284 + t412 * t285 + t525;
t452 = -t341 + t512 + t520;
t451 = -pkin(9) * t385 - t254 + t544;
t446 = t406 * t495;
t445 = t406 * t352;
t444 = t406 * t337;
t441 = -t566 - t569;
t440 = qJD(2) * t504;
t439 = qJD(2) * t499;
t438 = qJD(2) * (-Icges(3,5) * t411 - Icges(3,6) * t414);
t244 = t461 * t415;
t305 = t517 * t406;
t435 = -t305 + t441;
t346 = -pkin(5) * t415 + pkin(9) * t610;
t56 = t415 * t345 + t412 * t346 + t525 - t689;
t197 = t452 * t415;
t155 = t451 * t415;
t170 = t514 * t613 + (rSges(7,3) * t406 + (-rSges(7,1) * t413 + rSges(7,2) * t410) * qJD(6)) * t386;
t433 = -t170 - t248 + (-pkin(9) * t386 - t664) * t406;
t431 = t441 + t687;
t430 = t451 - t666;
t429 = t412 * (t512 * t606 + (t415 * t513 + t401) * qJD(1)) + t415 * (-rSges(6,3) * t553 + t522) + t285 * t576 + t457;
t19 = t100 * t332 + t191 * t212 + t192 * t214 + t210 * t437 + t331 * t98 + t610 * t96;
t20 = t191 * t213 + t192 * t215 + t211 * t437 + t331 * t97 + t332 * t99 + t610 * t95;
t37 = t165 * t610 + t166 * t331 + t167 * t332 + t191 * t252 + t192 * t253 + t251 * t437;
t3 = (-t406 * t510 + t37) * t385 + (-qJD(1) * t48 + t406 * t109 + t19 * t415 + t20 * t412) * t386;
t31 = t108 * t385 + t386 * t511;
t32 = t109 * t385 + t386 * t510;
t21 = t100 * t330 + t193 * t212 + t194 * t214 - t210 * t707 + t329 * t98 + t609 * t96;
t22 = t193 * t213 + t194 * t215 - t211 * t707 + t329 * t97 + t330 * t99 + t609 * t95;
t38 = t165 * t609 + t166 * t329 + t167 * t330 + t193 * t252 + t194 * t253 - t251 * t707;
t4 = (-t406 * t511 + t38) * t385 + (-qJD(1) * t47 + t108 * t406 + t21 * t415 + t22 * t412) * t386;
t8 = qJD(1) * t510 + t19 * t412 - t20 * t415;
t9 = qJD(1) * t511 + t21 * t412 - t22 * t415;
t426 = t3 * t670 + t4 * t671 + t385 * (qJD(1) * t509 - t650 + t651) / 0.2e1 + t32 * t547 + t31 * t546 + t508 * t611 / 0.2e1 + t8 * t610 / 0.2e1 + t9 * t609 / 0.2e1 + (t386 * t546 + t412 * t548) * t48 + (t415 * t548 - t552 / 0.2e1) * t47;
t425 = rSges(3,2) * t549 + rSges(3,3) * t576 - t415 * t453;
t120 = -t267 * t415 - t412 * t477;
t121 = -t268 * t415 - t695;
t126 = -t277 * t415 + t696;
t127 = t412 * t474 + t711;
t130 = -t298 * t415 - t412 * t473;
t131 = -t299 * t415 - t697;
t177 = -t415 * t444 - t686;
t178 = -t412 * t444 + t581;
t187 = t412 * t446 + t580;
t188 = qJD(1) * t682 + t415 * t446;
t204 = -t415 * t445 - t685;
t205 = -t412 * t445 + t579;
t424 = (t9 + (t177 + t188 + t204) * t407 + ((-t534 * t396 + t532 * t397 - t178 - t187 - t205) * t412 + (t207 * t396 - t209 * t397 + t300 * t607 + t302 * t608 + t713 * t611 + t712 * t613 - t685 - t686) * t415 + (t709 * t412 + (-t182 + t185) * t415) * t386 + (t708 * t412 + (t180 - t183) * t415) * t385 + ((-t477 + t474 - t473 + t715) * t412 + t711 + t704) * qJD(1)) * t415) * t412 + (t412 * t704 + t415 * t705 + t47) * t576 + (t48 + (-t120 - t127 - t130) * t415 + (t695 - t696 + t697 - t705 + t121 + t126 + t131) * t412) * t577;
t141 = t430 * t415;
t101 = rSges(7,3) * t437 + t516;
t102 = -rSges(7,3) * t707 + t598;
t392 = pkin(5) * t576;
t423 = t457 + (t217 + t346) * t576 + (-pkin(9) * t707 + t102 + t392) * t415 + (pkin(5) * t577 + pkin(9) * t437 + t101) * t412;
t422 = t433 - t566;
t14 = (t178 * t415 + (t121 + t690) * qJD(1)) * t415 + (t120 * qJD(1) + (-t179 * t385 + t181 * t386 - t270 * t611 - t272 * t613 + t581) * t412 + (-t177 + t539 * t386 + t541 * t385 + (-t267 - t476) * qJD(1)) * t415) * t412;
t15 = (t187 * t415 + (t126 - t691) * qJD(1)) * t415 + (t127 * qJD(1) + (t184 * t385 - t186 * t386 + t273 * t611 + t275 * t613 + t580) * t412 + (-t188 - t536 * t386 + t538 * t385 + (t682 + t475) * qJD(1)) * t415) * t412;
t18 = (t205 * t415 + (t131 + t692) * qJD(1)) * t415 + (t130 * qJD(1) + (-t206 * t396 + t208 * t397 - t301 * t607 - t303 * t608 + t579) * t412 + (-t204 + t531 * t397 + t533 * t396 + (-t298 - t472) * qJD(1)) * t415) * t412;
t418 = t424 + (-t8 - t18 - t14 - t15) * t415;
t417 = -t650 / 0.2e1 + t651 / 0.2e1 + (t385 * t709 - t386 * t708 + t396 * t532 + t397 * t534 + t412 * t700 + t415 * t702 + t38) * t671 + (-t396 * t531 + t397 * t533 + t37 + (t538 + t541) * t386 + (t536 - t539) * t385 - t700 * t415 + t702 * t412) * t670 + (t300 * t397 + t302 * t396 + t712 * t385 + t386 * t713 - t412 * t714 - t703 * t415 + t109 + t89) * t547 + (t301 * t397 + t303 * t396 + t718 * t385 + t386 * t719 + t703 * t412 - t415 * t714 + t108 + t88) * t546;
t382 = pkin(2) * t549;
t359 = t519 * qJD(2);
t328 = -t568 + t584;
t327 = t412 * t519 - t652;
t289 = t545 * t415;
t288 = t545 * t412;
t264 = t662 + (pkin(1) - t656) * t415 + t584;
t263 = t412 * t462 + t404 + t652;
t260 = t543 * t415;
t259 = t543 * t412;
t243 = t461 * t412;
t240 = -t412 * t416 + t307 + t377;
t239 = (rSges(4,3) - t416) * t415 + t459 * t412;
t232 = t412 * t438 + t578;
t231 = -qJD(1) * t320 + t415 * t438;
t223 = t283 + t530;
t222 = (rSges(5,3) - t405) * t415 + t458 * t412;
t220 = t521 * t412;
t219 = t699 + ((-rSges(3,3) - pkin(7)) * t412 + t462 * t415) * qJD(1);
t218 = (t404 + (-pkin(1) - t659) * t412) * qJD(1) + t425;
t196 = t452 * t412;
t190 = -t355 * t576 - t622 + (-t411 * t576 - t412 * t573) * pkin(2);
t189 = t355 * t577 + t382 + (-t318 - t566) * t415;
t158 = -t343 * t576 - t305 * t412 + (-t396 * t576 - t397 * t606) * pkin(3);
t157 = (-t305 - t569) * t415 + t592;
t154 = t451 * t412;
t149 = t321 * t412 - t415 * t470;
t148 = t320 * t412 - t693;
t147 = -t321 * t415 - t698;
t146 = -t320 * t415 - t412 * t471;
t145 = t355 * t606 + (t415 * t459 - t399) * qJD(1) + t585;
t144 = (-t387 - t658) * t577 + (-t454 - t706) * t415 + t587;
t140 = t430 * t412;
t135 = qJD(1) * t244 + t412 * t435;
t134 = t415 * t435 + t382 + t592;
t119 = (-t344 + t455) * t412 + (t415 * t458 - t398) * qJD(1) + t586;
t118 = -t415 * t455 + (-t599 + (-t360 - t657) * t412) * qJD(1) + t588 + t591;
t117 = t203 + t594;
t113 = t480 * t386;
t111 = qJD(1) * t221 + t412 * t466;
t110 = t415 * t466 + t555;
t106 = qJD(1) * t197 + t412 * t431;
t105 = t415 * t431 + t382 + t555;
t92 = -t307 * t577 + t558;
t91 = (-t572 - t344 + (t386 * t649 - t653) * t406) * t412 + (t415 * t432 - t401) * qJD(1) + t554;
t90 = -pkin(4) * t564 + (-t599 + (t507 - t663) * t412) * qJD(1) + t522 + t523;
t80 = t107 + t594;
t77 = qJD(1) * t155 + t412 * t433;
t76 = t415 * t433 + t524;
t63 = qJD(1) * t141 + t412 * t422;
t62 = t415 * t422 + t382 + t524;
t57 = t83 + t594;
t55 = (-qJ(5) * t611 - t344 + (t406 * t669 - qJD(5)) * t385) * t412 + (t415 * t434 - t402) * qJD(1) - t516 + t554;
t54 = t392 + t570 * t564 + (t428 - t599) * qJD(1) + t523 + t598;
t53 = (-t291 - t307) * t577 + t557 + t558;
t52 = t56 + t594;
t51 = (-t254 * t606 - t101) * t385 + (t170 * t412 - t217 * t406 + t254 * t576) * t386;
t50 = (t254 * t604 + t102) * t385 + (-t170 * t415 + t216 * t406 + t247) * t386;
t44 = t577 * t596 + t456;
t34 = t480 * t613 + (qJD(1) * t689 + t101 * t415 - t102 * t412) * t386;
t33 = (-t291 + t596) * t577 + t456 + t557;
t28 = t556 * t577 + t429;
t27 = (-t291 + t556) * t577 + t429 + t557;
t16 = t526 * t577 + t423;
t11 = t423 + (-t291 + t526) * t577 + t557;
t1 = [-t353 * t608 + (t115 * t55 + t116 * t54) * t674 + (t159 * t91 + t160 * t90) * t675 + t396 * t315 + t397 * t314 + t354 * t607 + t506 + (t118 * t223 + t119 * t222) * t676 + (t144 * t240 + t145 * t239) * t677 + (t218 * t264 + t219 * t263) * t678 - t413 * t253 * t571 - t721 * t613 + t720 * t611 + (-t499 + t505) * t574 + (t500 + t504) * t573 + t716 * t385 + (-t166 * t413 - t624 - t717) * t386; (t408 / 0.2e1 + t407 / 0.2e1) * t493 * qJD(2) + ((t620 / 0.2e1 + t618 / 0.2e1 - t264 * t668) * t415 + (t263 * t668 + t621 / 0.2e1 + t619 / 0.2e1) * t412) * qJD(1) + t417 + m(7) * (t115 * t62 + t116 * t63 + t140 * t54 + t141 * t55) + m(6) * (t105 * t159 + t106 * t160 + t196 * t90 + t197 * t91) + m(5) * (t118 * t243 + t119 * t244 + t134 * t222 + t135 * t223) + m(4) * (t144 * t288 + t145 * t289 + t189 * t239 + t190 * t240) + m(3) * ((-t218 * t412 - t219 * t415) * t376 + (-t263 * t415 - t264 * t412) * t359) + (-qJD(2) * t470 + (-qJD(1) * t322 - t415 * t439) * t414 + (-qJD(1) * t324 - t415 * t440) * t411) * t671 + (-qJD(2) * t471 + (qJD(1) * t323 - t412 * t439) * t414 + (qJD(1) * t325 - t412 * t440) * t411) * t670; t424 + ((t327 * t412 + t328 * t415) * ((qJD(1) * t327 + t425) * t415 + (-t699 + (-t328 - t568 + t400) * qJD(1)) * t412) + t582 * t376 * t359) * t678 + (t11 * t52 + t140 * t63 + t141 * t62) * t674 + (t105 * t197 + t106 * t196 + t27 * t57) * t675 + (t134 * t244 + t135 * t243 + t33 * t80) * t676 + (t117 * t53 + t189 * t289 + t190 * t288) * t677 - t415 * t8 - t415 * t18 - t415 * t14 - t415 * t15 + t412 * ((t231 * t412 + (t148 + t698) * qJD(1)) * t412 + (t149 * qJD(1) + (t322 * t573 + t324 * t574) * t415 + (-t232 + (-t618 - t620) * qJD(2) + (t321 - t471) * qJD(1)) * t412) * t415) + (-t146 * t415 + t147 * t412) * t577 + (-t148 * t415 + t149 * t412) * t576 - t415 * ((t232 * t415 + (t147 + t693) * qJD(1)) * t415 + (t146 * qJD(1) + (-t323 * t573 - t325 * t574 + t578) * t412 + (-t231 + (t619 + t621) * qJD(2) - t470 * qJD(1)) * t415) * t412); t417 + m(7) * (t115 * t76 + t116 * t77 + t154 * t54 + t155 * t55) + m(6) * (t110 * t159 + t111 * t160 + t220 * t90 + t221 * t91) + m(5) * (t118 * t259 + t119 * t260 + t157 * t222 + t158 * t223) + (-t144 * t412 - t145 * t415 + (t239 * t412 - t240 * t415) * qJD(1)) * t667 + m(4) * (-t239 * t415 - t240 * t412) * t318; m(4) * (-t289 * t318 * t415 + t117 * t92 + t203 * t53 - t288 * t622) + m(7) * (t11 * t56 + t140 * t77 + t141 * t76 + t154 * t63 + t155 * t62 + t16 * t52) + m(6) * (t105 * t221 + t106 * t220 + t110 * t197 + t111 * t196 + t27 * t83 + t28 * t57) + m(5) * (t107 * t33 + t134 * t260 + t135 * t259 + t157 * t244 + t158 * t243 + t44 * t80) + t418 + (-t189 * t415 - t190 * t412 + (-t288 * t415 + t289 * t412) * qJD(1)) * t667; (t154 * t77 + t155 * t76 + t16 * t56) * t674 + (t110 * t221 + t111 * t220 + t28 * t83) * t675 + (t107 * t44 + t157 * t260 + t158 * t259) * t676 + (t318 * t355 * t582 + t203 * t92) * t677 + t418; m(7) * (qJD(1) * t485 + t412 * t55 - t415 * t54) + m(6) * (qJD(1) * t483 + t412 * t91 - t415 * t90) + m(5) * (-t118 * t415 + t119 * t412 + (t222 * t415 + t223 * t412) * qJD(1)); m(7) * (t412 * t62 - t415 * t63 + (t140 * t412 + t141 * t415) * qJD(1)) + m(6) * (t105 * t412 - t106 * t415 + (t196 * t412 + t197 * t415) * qJD(1)) + m(5) * (t134 * t412 - t135 * t415 + (t243 * t412 + t244 * t415) * qJD(1)); m(7) * (t412 * t76 - t415 * t77 + (t154 * t412 + t155 * t415) * qJD(1)) + m(6) * (t110 * t412 - t111 * t415 + (t220 * t412 + t221 * t415) * qJD(1)) + m(5) * (t157 * t412 - t158 * t415 + (t259 * t412 + t260 * t415) * qJD(1)); 0; 0.2e1 * (t483 * t673 + t485 * t672) * t611 + 0.2e1 * ((-t115 * t577 + t116 * t576 + t412 * t54 + t415 * t55) * t672 + (-t159 * t577 + t160 * t576 + t412 * t90 + t415 * t91) * t673) * t385; 0.2e1 * ((t140 * t606 + t141 * t604 - t11) * t672 + (t196 * t606 + t197 * t604 - t27) * t673) * t386 + 0.2e1 * ((t140 * t576 - t141 * t577 + t406 * t52 + t412 * t63 + t415 * t62) * t672 + (t105 * t415 + t106 * t412 + t196 * t576 - t197 * t577 + t406 * t57) * t673) * t385; 0.2e1 * ((t154 * t606 + t155 * t604 - t16) * t672 + (t220 * t606 + t221 * t604 - t28) * t673) * t386 + 0.2e1 * ((t154 * t576 - t155 * t577 + t406 * t56 + t412 * t77 + t415 * t76) * t672 + (t110 * t415 + t111 * t412 + t220 * t576 - t221 * t577 + t406 * t83) * t673) * t385; 0; 0.4e1 * (t673 + t672) * (-0.1e1 + t582) * t385 * t611; m(7) * (t115 * t51 + t116 * t50 + t128 * t55 + t129 * t54) + (-t412 * t560 + t415 * t561) * t613 + ((t25 / 0.2e1 + t38 / 0.2e1) * t415 + (t26 / 0.2e1 + t37 / 0.2e1) * t412 + (t412 * t561 + t415 * t560) * qJD(1)) * t386 + t648; t426 + m(7) * (-t11 * t113 + t128 * t62 + t129 * t63 + t140 * t50 + t141 * t51 + t34 * t52); t426 + m(7) * (-t113 * t16 + t128 * t76 + t129 * t77 + t154 * t50 + t155 * t51 + t34 * t56); m(7) * (qJD(1) * t484 + t412 * t51 - t415 * t50); m(7) * ((t406 * t484 - t34) * t386 + (-t113 * t406 + t412 * t50 + t415 * t51 + (-t128 * t412 + t129 * t415) * qJD(1)) * t385); (-t113 * t34 + t128 * t51 + t129 * t50) * t674 + ((-t415 * t31 - t412 * t32 - t385 * t509) * t406 + t648) * t385 + (t415 * t4 + t412 * t3 + t509 * t611 + (t114 * t406 + t25 * t415 + t26 * t412) * t385 + (-t412 * t31 + t415 * t32 - t385 * t508) * qJD(1)) * t386;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;