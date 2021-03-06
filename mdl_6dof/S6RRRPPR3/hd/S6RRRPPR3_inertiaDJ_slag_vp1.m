% Calculate time derivative of joint inertia matrix for
% S6RRRPPR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6]';
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
% Datum: 2019-03-09 15:30
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPPR3_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR3_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR3_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRPPR3_inertiaDJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR3_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPPR3_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPPR3_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:28:26
% EndTime: 2019-03-09 15:29:03
% DurationCPUTime: 26.07s
% Computational Cost: add. (25781->987), mult. (34608->1302), div. (0->0), fcn. (30901->8), ass. (0->511)
t402 = qJ(2) + qJ(3);
t394 = cos(t402);
t393 = sin(t402);
t629 = Icges(5,5) * t393;
t340 = -Icges(5,3) * t394 + t629;
t638 = Icges(4,4) * t393;
t344 = Icges(4,2) * t394 + t638;
t635 = Icges(6,4) * t393;
t493 = Icges(6,1) * t394 + t635;
t714 = -t344 - t493 + t340;
t628 = Icges(5,5) * t394;
t346 = Icges(5,1) * t393 - t628;
t637 = Icges(4,4) * t394;
t347 = Icges(4,1) * t393 + t637;
t634 = Icges(6,4) * t394;
t486 = Icges(6,2) * t393 + t634;
t713 = t346 + t347 + t486;
t405 = sin(qJ(1));
t408 = cos(qJ(1));
t479 = Icges(6,5) * t393 - Icges(6,6) * t394;
t270 = -Icges(6,3) * t405 + t408 * t479;
t482 = Icges(4,5) * t394 - Icges(4,6) * t393;
t274 = Icges(4,3) * t405 + t408 * t482;
t487 = Icges(5,4) * t394 + Icges(5,6) * t393;
t278 = Icges(5,2) * t405 + t408 * t487;
t712 = -t270 + t274 + t278;
t481 = Icges(5,3) * t393 + t628;
t272 = Icges(5,6) * t405 + t408 * t481;
t488 = -Icges(4,2) * t393 + t637;
t280 = Icges(4,6) * t405 + t408 * t488;
t492 = Icges(6,1) * t393 - t634;
t282 = -Icges(6,5) * t405 + t408 * t492;
t711 = t272 - t280 + t282;
t485 = -Icges(6,2) * t394 + t635;
t276 = -Icges(6,6) * t405 + t408 * t485;
t494 = Icges(5,1) * t394 + t629;
t284 = Icges(5,4) * t405 + t408 * t494;
t495 = Icges(4,1) * t394 - t638;
t286 = Icges(4,5) * t405 + t408 * t495;
t710 = t276 - t284 - t286;
t399 = qJD(2) + qJD(3);
t709 = (-t481 + t488 - t492) * t399;
t708 = (-t485 + t494 + t495) * t399;
t700 = t393 * t714 + t713 * t394;
t341 = Icges(4,5) * t393 + Icges(4,6) * t394;
t343 = Icges(5,4) * t393 - Icges(5,6) * t394;
t480 = Icges(6,5) * t394 + Icges(6,6) * t393;
t699 = t480 + t341 + t343;
t400 = t405 ^ 2;
t439 = t399 * t486;
t442 = t399 * t493;
t574 = qJD(1) * t405;
t546 = t394 * t574;
t601 = t399 * t408;
t707 = t393 * t601 + t546;
t409 = -pkin(8) - pkin(7);
t404 = sin(qJ(2));
t571 = qJD(2) * t404;
t564 = pkin(2) * t571;
t706 = qJD(1) * t409 + t564;
t269 = Icges(6,3) * t408 + t405 * t479;
t273 = -Icges(4,3) * t408 + t405 * t482;
t277 = -Icges(5,2) * t408 + t405 * t487;
t271 = -Icges(5,6) * t408 + t405 * t481;
t283 = -Icges(5,4) * t408 + t405 * t494;
t469 = t271 * t393 + t283 * t394;
t686 = t408 * t469;
t275 = Icges(6,6) * t408 + t405 * t485;
t281 = Icges(6,5) * t408 + t405 * t492;
t467 = t275 * t394 - t281 * t393;
t687 = t408 * t467;
t279 = -Icges(4,6) * t408 + t405 * t488;
t285 = -Icges(4,5) * t408 + t405 * t495;
t465 = t279 * t393 - t285 * t394;
t688 = t408 * t465;
t705 = -t686 + t687 + t688 + (t269 - t273 - t277) * t405;
t464 = t280 * t393 - t286 * t394;
t466 = t276 * t394 - t282 * t393;
t468 = t272 * t393 + t284 * t394;
t704 = (-t464 - t466 + t468) * t408 + t712 * t405;
t703 = -t271 + t279 - t281;
t702 = -t275 + t283 + t285;
t609 = t347 * t399;
t610 = t346 * t399;
t611 = t344 * t399;
t612 = t340 * t399;
t701 = (t612 - t611 - t442 + t708) * t394 + (-t610 - t609 - t439 - t709) * t393 + t699 * qJD(1);
t189 = -qJD(1) * t271 - t408 * t612;
t197 = -qJD(1) * t279 - t408 * t611;
t199 = -qJD(1) * t281 + t408 * t442;
t698 = t399 * t710 + t189 - t197 + t199;
t193 = -qJD(1) * t275 + t408 * t439;
t201 = -qJD(1) * t283 - t408 * t610;
t203 = -qJD(1) * t285 - t408 * t609;
t697 = t399 * t711 - t193 + t201 + t203;
t696 = (t479 - t482 - t487) * t399 + t700 * qJD(1);
t407 = cos(qJ(2));
t370 = rSges(3,1) * t404 + rSges(3,2) * t407;
t446 = qJD(2) * t370;
t695 = t405 * t446;
t639 = Icges(3,4) * t407;
t490 = -Icges(3,2) * t404 + t639;
t315 = Icges(3,6) * t405 + t408 * t490;
t640 = Icges(3,4) * t404;
t497 = Icges(3,1) * t407 - t640;
t317 = Icges(3,5) * t405 + t408 * t497;
t462 = t315 * t404 - t317 * t407;
t694 = t405 * t462;
t693 = t405 * t464;
t692 = t405 * t466;
t691 = t405 * t468;
t389 = pkin(2) * t407 + pkin(1);
t657 = pkin(1) - t389;
t690 = t405 * t657;
t314 = -Icges(3,6) * t408 + t405 * t490;
t316 = -Icges(3,5) * t408 + t405 * t497;
t463 = t314 * t404 - t316 * t407;
t689 = t408 * t463;
t403 = sin(qJ(6));
t406 = cos(qJ(6));
t504 = rSges(7,1) * t406 - rSges(7,2) * t403;
t608 = t393 * t399;
t171 = t504 * t608 + (rSges(7,3) * t399 + (rSges(7,1) * t403 + rSges(7,2) * t406) * qJD(6)) * t394;
t513 = pkin(5) * t393 + pkin(9) * t394;
t685 = -t513 * t399 - t171;
t597 = t406 * t408;
t600 = t403 * t405;
t333 = -t393 * t600 + t597;
t598 = t405 * t406;
t599 = t403 * t408;
t334 = t393 * t598 + t599;
t505 = -t334 * rSges(7,1) - t333 * rSges(7,2);
t605 = t394 * t405;
t220 = rSges(7,3) * t605 - t505;
t335 = -t393 * t599 - t598;
t336 = t393 * t597 - t600;
t604 = t394 * t408;
t221 = t336 * rSges(7,1) + t335 * rSges(7,2) + rSges(7,3) * t604;
t684 = -t405 * t220 - t408 * t221;
t607 = t393 * t408;
t326 = pkin(5) * t607 + pkin(9) * t604;
t683 = -t221 - t326;
t264 = rSges(7,3) * t393 - t394 * t504;
t352 = -pkin(5) * t394 + pkin(9) * t393;
t682 = -t264 - t352;
t681 = qJD(1) * t269;
t680 = qJD(1) * t273;
t679 = qJD(1) * t277;
t483 = Icges(3,5) * t407 - Icges(3,6) * t404;
t312 = -Icges(3,3) * t408 + t405 * t483;
t524 = qJD(1) * t393 + qJD(6);
t558 = t394 * t601;
t678 = t405 * t524 - t558;
t674 = 2 * m(3);
t673 = 2 * m(4);
t672 = 2 * m(5);
t671 = 2 * m(6);
t670 = 2 * m(7);
t401 = t408 ^ 2;
t669 = m(5) / 0.2e1;
t668 = m(6) / 0.2e1;
t667 = m(7) / 0.2e1;
t666 = -pkin(3) - pkin(4);
t665 = t405 / 0.2e1;
t664 = -t408 / 0.2e1;
t663 = -rSges(5,1) - pkin(3);
t662 = rSges(7,3) + pkin(9);
t661 = m(3) * t370;
t350 = rSges(4,1) * t393 + rSges(4,2) * t394;
t660 = m(4) * t350;
t659 = pkin(2) * t404;
t658 = t405 * pkin(7);
t398 = t408 * pkin(7);
t656 = -pkin(5) - qJ(4);
t655 = -pkin(7) - t409;
t654 = rSges(3,1) * t407;
t653 = rSges(4,1) * t394;
t652 = rSges(5,1) * t393;
t651 = rSges(6,1) * t393;
t650 = rSges(3,2) * t404;
t649 = rSges(6,2) * t393;
t648 = rSges(3,3) * t408;
t214 = Icges(7,5) * t334 + Icges(7,6) * t333 + Icges(7,3) * t605;
t216 = Icges(7,4) * t334 + Icges(7,2) * t333 + Icges(7,6) * t605;
t218 = Icges(7,1) * t334 + Icges(7,4) * t333 + Icges(7,5) * t605;
t474 = t216 * t403 - t218 * t406;
t525 = -qJD(6) * t393 - qJD(1);
t456 = t406 * t525;
t603 = t399 * t405;
t559 = t394 * t603;
t184 = t405 * t456 + (-t408 * t524 - t559) * t403;
t455 = t525 * t403;
t602 = t399 * t406;
t185 = t524 * t597 + (t394 * t602 + t455) * t405;
t573 = qJD(1) * t408;
t545 = t394 * t573;
t561 = t393 * t603;
t432 = t545 - t561;
t95 = Icges(7,5) * t185 + Icges(7,6) * t184 + Icges(7,3) * t432;
t97 = Icges(7,4) * t185 + Icges(7,2) * t184 + Icges(7,6) * t432;
t99 = Icges(7,1) * t185 + Icges(7,4) * t184 + Icges(7,5) * t432;
t25 = (-t399 * t474 + t95) * t393 + (t214 * t399 + t403 * t97 - t406 * t99 + (t216 * t406 + t218 * t403) * qJD(6)) * t394;
t647 = t25 * t408;
t215 = Icges(7,5) * t336 + Icges(7,6) * t335 + Icges(7,3) * t604;
t217 = Icges(7,4) * t336 + Icges(7,2) * t335 + Icges(7,6) * t604;
t219 = Icges(7,1) * t336 + Icges(7,4) * t335 + Icges(7,5) * t604;
t473 = t217 * t403 - t219 * t406;
t182 = t403 * t678 + t408 * t456;
t183 = -t406 * t678 + t408 * t455;
t94 = Icges(7,5) * t183 + Icges(7,6) * t182 - Icges(7,3) * t707;
t96 = Icges(7,4) * t183 + Icges(7,2) * t182 - Icges(7,6) * t707;
t98 = Icges(7,1) * t183 + Icges(7,4) * t182 - Icges(7,5) * t707;
t26 = (-t399 * t473 + t94) * t393 + (t215 * t399 + t403 * t96 - t406 * t98 + (t217 * t406 + t219 * t403) * qJD(6)) * t394;
t646 = t26 * t405;
t397 = t405 * rSges(5,2);
t396 = t405 * rSges(3,3);
t395 = t405 * rSges(4,3);
t645 = t405 * rSges(6,3);
t644 = t408 * rSges(6,3);
t643 = -rSges(6,1) - qJ(4);
t642 = -rSges(5,3) - qJ(4);
t478 = Icges(7,5) * t406 - Icges(7,6) * t403;
t261 = Icges(7,3) * t393 - t394 * t478;
t633 = Icges(7,4) * t403;
t491 = Icges(7,1) * t406 - t633;
t263 = Icges(7,5) * t393 - t394 * t491;
t632 = Icges(7,4) * t406;
t484 = -Icges(7,2) * t403 + t632;
t262 = Icges(7,6) * t393 - t394 * t484;
t618 = t262 * t403;
t120 = t261 * t393 + (-t263 * t406 + t618) * t394;
t168 = t478 * t608 + (Icges(7,3) * t399 + (Icges(7,5) * t403 + Icges(7,6) * t406) * qJD(6)) * t394;
t169 = t484 * t608 + (Icges(7,6) * t399 + (Icges(7,2) * t406 + t633) * qJD(6)) * t394;
t170 = t491 * t608 + (Icges(7,5) * t399 + (Icges(7,1) * t403 + t632) * qJD(6)) * t394;
t567 = qJD(6) * t394;
t606 = t394 * t399;
t413 = t406 * t262 * t567 + t393 * t168 + t261 * t606 - t608 * t618 + (t169 * t403 - t170 * t406) * t394 + (t393 * t602 + t403 * t567) * t263;
t641 = t120 * t606 + t413 * t393;
t510 = -rSges(4,2) * t393 + t653;
t310 = t510 * t399;
t617 = t310 * t405;
t616 = t314 * t407;
t615 = t315 * t407;
t614 = t316 * t404;
t613 = t317 * t404;
t596 = t408 * t409;
t595 = -qJ(5) - t409;
t594 = t183 * rSges(7,1) + t182 * rSges(7,2);
t267 = t398 + t596 - t690;
t373 = t408 * t389;
t268 = -t408 * pkin(1) + t405 * t655 + t373;
t593 = t405 * t267 + t408 * t268;
t254 = qJ(4) * t608 + (pkin(3) * t399 - qJD(4)) * t394;
t509 = rSges(5,1) * t394 + rSges(5,3) * t393;
t309 = t509 * t399;
t592 = -t254 - t309;
t290 = -t408 * rSges(4,3) + t405 * t510;
t293 = rSges(4,1) * t604 - rSges(4,2) * t607 + t395;
t186 = t405 * t290 + t408 * t293;
t292 = rSges(5,1) * t604 + rSges(5,3) * t607 + t397;
t324 = pkin(3) * t604 + qJ(4) * t607;
t591 = -t292 - t324;
t323 = (pkin(3) * t394 + qJ(4) * t393) * t405;
t590 = t405 * t323 + t408 * t324;
t381 = pkin(4) * t604;
t338 = -t405 * qJ(5) + t381;
t589 = -t324 - t338;
t348 = pkin(3) * t393 - qJ(4) * t394;
t327 = t348 * t574;
t349 = -rSges(5,3) * t394 + t652;
t588 = t349 * t574 + t327;
t547 = t393 * t574;
t587 = pkin(4) * t547 + t327;
t586 = -t348 - t349;
t569 = qJD(4) * t393;
t585 = qJ(4) * t558 + t408 * t569;
t584 = rSges(5,2) * t573 + rSges(5,3) * t558;
t583 = -pkin(4) * t561 - qJ(5) * t574;
t582 = rSges(4,2) * t547 + rSges(4,3) * t573;
t581 = t706 * t405;
t580 = t408 * t654 + t396;
t579 = t400 + t401;
t578 = qJD(1) * t270;
t577 = qJD(1) * t274;
t576 = qJD(1) * t278;
t313 = Icges(3,3) * t405 + t408 * t483;
t575 = qJD(1) * t313;
t570 = qJD(2) * t407;
t568 = qJD(5) * t405;
t566 = pkin(4) * t606;
t565 = t408 * t650;
t563 = pkin(2) * t570;
t562 = -rSges(6,3) + t595;
t109 = t261 * t605 + t262 * t333 + t263 * t334;
t89 = t214 * t393 + t394 * t474;
t557 = t89 / 0.2e1 + t109 / 0.2e1;
t110 = t261 * t604 + t262 * t335 + t263 * t336;
t90 = t215 * t393 + t394 * t473;
t556 = -t90 / 0.2e1 - t110 / 0.2e1;
t362 = pkin(3) * t561;
t430 = t393 * t573 + t559;
t555 = t405 * (pkin(3) * t545 + qJ(4) * t430 + t405 * t569 - t362) + t408 * (-pkin(3) * t707 - qJ(4) * t547 + t585) + t323 * t573;
t447 = t350 * t399;
t554 = t405 * (-t405 * t447 + (t408 * t510 + t395) * qJD(1)) + t408 * (-rSges(4,1) * t707 - rSges(4,2) * t558 + t582) + t290 * t573;
t553 = t405 * ((-t408 * t657 - t658) * qJD(1) - t581) + t408 * (-t408 * t564 + (t408 * t655 + t690) * qJD(1)) + t267 * t573;
t515 = rSges(6,1) * t607 - rSges(6,2) * t604;
t291 = t515 - t645;
t552 = -t291 + t589;
t508 = rSges(6,1) * t394 + t649;
t551 = -t508 * t574 + t587;
t550 = rSges(6,1) * t558 + rSges(6,2) * t707;
t549 = t362 + t581;
t548 = -t662 + t666;
t544 = t404 * t574;
t245 = t264 * t574;
t543 = -t608 / 0.2e1;
t542 = t574 / 0.2e1;
t541 = t573 / 0.2e1;
t540 = -t350 - t659;
t539 = -pkin(4) * t393 - t348;
t244 = t586 * t408;
t190 = qJD(1) * t272 - t405 * t612;
t537 = t283 * t399 - t190;
t194 = qJD(1) * t276 + t405 * t439;
t535 = t281 * t399 - t194;
t198 = qJD(1) * t280 - t405 * t611;
t533 = t285 * t399 + t198;
t200 = qJD(1) * t282 + t405 * t442;
t531 = -t275 * t399 - t200;
t202 = qJD(1) * t284 - t405 * t610;
t529 = t271 * t399 + t202;
t204 = qJD(1) * t286 - t405 * t609;
t527 = t279 * t399 - t204;
t526 = -t405 * t409 + t373;
t523 = t589 + t683;
t522 = t352 * t574 + t245 + t587;
t289 = -t408 * rSges(5,2) + t405 * t509;
t121 = t405 * t289 + t408 * t292 + t590;
t337 = pkin(4) * t605 + t408 * qJ(5);
t521 = t405 * t337 + t408 * t338 + t590;
t520 = t373 + t381 + t324;
t519 = -t254 - t566;
t518 = t586 - t659;
t517 = t508 + t539;
t516 = t562 * t408;
t514 = -t254 - t563;
t512 = -t568 + t585;
t511 = -t650 + t654;
t507 = -rSges(6,2) * t394 + t651;
t506 = rSges(7,1) * t185 + rSges(7,2) * t184;
t73 = t214 * t605 + t216 * t333 + t218 * t334;
t74 = t215 * t605 + t217 * t333 + t219 * t334;
t45 = t405 * t74 - t408 * t73;
t503 = t405 * t73 + t408 * t74;
t75 = t214 * t604 + t216 * t335 + t218 * t336;
t76 = t215 * t604 + t217 * t335 + t219 * t336;
t46 = t405 * t76 - t408 * t75;
t502 = t405 * t75 + t408 * t76;
t501 = t405 * t90 - t408 * t89;
t500 = t405 * t89 + t408 * t90;
t499 = t393 * t643 - t389;
t498 = t549 - t583;
t496 = Icges(3,1) * t404 + t639;
t489 = Icges(3,2) * t407 + t640;
t421 = t393 * t656 + t394 * t548 - t389;
t411 = t405 * t421 + t408 * t595;
t114 = t411 + t505;
t115 = t405 * t595 + t520 - t683;
t477 = t114 * t408 + t115 * t405;
t136 = -t220 * t393 + t264 * t605;
t137 = t221 * t393 - t264 * t604;
t476 = t136 * t408 + t137 * t405;
t424 = (rSges(6,2) + t666) * t394 + t499;
t148 = t405 * t424 + t516;
t149 = t405 * t562 + t515 + t520;
t475 = t148 * t408 + t149 * t405;
t472 = t220 * t408 - t221 * t405;
t308 = t507 * t399;
t458 = -t308 + t519;
t457 = t539 + t682;
t454 = -t309 + t514;
t453 = -pkin(1) - t511;
t452 = t539 - t659;
t234 = t518 * t408;
t224 = t517 * t408;
t451 = -t389 - t510;
t450 = t405 * (-t349 * t603 + (t408 * t509 + t397) * qJD(1)) + t408 * (-rSges(5,1) * t707 - rSges(5,3) * t547 + t584) + t289 * t573 + t555;
t449 = t405 * ((pkin(4) * qJD(1) * t394 + qJD(5)) * t408 + t583) + t408 * (-pkin(4) * t707 - qJ(5) * t573 - t568) + t337 * t573 + t555;
t288 = t405 * t507 + t644;
t104 = t405 * t288 + t408 * t291 + t521;
t448 = t519 + t685;
t445 = t508 + t452;
t440 = t399 * t343;
t438 = t399 * t341;
t436 = t399 * t480;
t435 = qJD(2) * t496;
t434 = qJD(2) * t489;
t433 = qJD(2) * (-Icges(3,5) * t404 - Icges(3,6) * t407);
t147 = t457 * t408;
t429 = t452 + t682;
t428 = t514 - t566;
t325 = t513 * t405;
t56 = t405 * t325 + t408 * t326 + t521 - t684;
t211 = t445 * t408;
t427 = t393 * t642 + t394 * t663 - t389;
t426 = -t308 + t428;
t425 = t405 * (t508 * t603 + (t408 * t507 - t645) * qJD(1)) + t408 * ((-t405 * t651 - t644) * qJD(1) + t550) + t288 * t573 + t449;
t141 = t429 * t408;
t19 = t182 * t216 + t183 * t218 - t214 * t707 + t335 * t97 + t336 * t99 + t604 * t95;
t20 = t182 * t217 + t183 * t219 - t215 * t707 + t335 * t96 + t336 * t98 + t604 * t94;
t36 = t168 * t604 + t169 * t335 + t170 * t336 + t182 * t262 + t183 * t263 - t261 * t707;
t3 = (-t399 * t502 + t36) * t393 + (-qJD(1) * t46 + t110 * t399 + t19 * t405 + t20 * t408) * t394;
t30 = t109 * t393 + t394 * t503;
t31 = t110 * t393 + t394 * t502;
t21 = t184 * t216 + t185 * t218 + t214 * t432 + t333 * t97 + t334 * t99 + t605 * t95;
t22 = t184 * t217 + t185 * t219 + t215 * t432 + t333 * t96 + t334 * t98 + t605 * t94;
t37 = t168 * t605 + t169 * t333 + t170 * t334 + t184 * t262 + t185 * t263 + t261 * t432;
t4 = (-t399 * t503 + t37) * t393 + (-qJD(1) * t45 + t399 * t109 + t21 * t405 + t22 * t408) * t394;
t8 = qJD(1) * t502 - t19 * t408 + t20 * t405;
t9 = qJD(1) * t503 - t21 * t408 + t22 * t405;
t423 = t3 * t665 + t4 * t664 + t393 * (qJD(1) * t500 + t646 - t647) / 0.2e1 + t30 * t542 + t31 * t541 + t501 * t606 / 0.2e1 + t9 * t605 / 0.2e1 + t8 * t604 / 0.2e1 + (t408 * t543 - t546 / 0.2e1) * t46 + (t394 * t541 + t405 * t543) * t45;
t422 = t428 + t685;
t420 = rSges(3,2) * t544 + rSges(3,3) * t573 - t408 * t446;
t124 = t269 * t408 - t405 * t467;
t125 = t270 * t408 - t692;
t126 = -t277 * t408 + t405 * t469;
t127 = -t278 * t408 + t691;
t128 = -t273 * t408 - t405 * t465;
t129 = -t274 * t408 - t693;
t187 = t408 * t436 - t681;
t188 = t405 * t436 + t578;
t191 = -t408 * t438 - t680;
t192 = -t405 * t438 + t577;
t195 = -t408 * t440 - t679;
t196 = -t405 * t440 + t576;
t419 = t46 * t573 + (t8 + (-t187 + t195 + t191) * t400 + t704 * t573) * t405 + (t45 + (t692 - t691 + t693 - t705 + t125 + t127 + t129) * t405) * t574 + ((-t124 - t126 - t128) * t574 + t705 * t573 + (t704 * qJD(1) + (-t679 - t680 + t681 + t702 * t608 + t703 * t606 + (t194 - t202 - t204) * t394 + (-t190 + t198 - t200) * t393) * t408 + (t188 - t192 - t196 + t697 * t394 + t698 * t393 + (-t467 + t469 - t465 + t712) * qJD(1)) * t405) * t405) * t408;
t418 = t427 * t405;
t100 = -rSges(7,3) * t707 + t594;
t101 = rSges(7,3) * t432 + t506;
t363 = pkin(5) * t558;
t417 = t449 + (t220 + t325) * t573 + (-pkin(5) * t547 - pkin(9) * t707 + t100 + t363) * t408 + (pkin(5) * t430 + pkin(9) * t432 + t101) * t405;
t15 = (-t408 * t188 + (t125 + t687) * qJD(1)) * t408 + (t124 * qJD(1) + (-t193 * t394 + t199 * t393 + t276 * t608 + t282 * t606 - t578) * t405 + (t187 - t535 * t394 + t531 * t393 + (t269 - t466) * qJD(1)) * t408) * t405;
t16 = (t196 * t408 + (t127 - t686) * qJD(1)) * t408 + (t126 * qJD(1) + (t189 * t393 + t201 * t394 + t272 * t606 - t284 * t608 + t576) * t405 + (-t195 - t529 * t394 + t537 * t393 + (-t277 + t468) * qJD(1)) * t408) * t405;
t17 = (t192 * t408 + (t129 + t688) * qJD(1)) * t408 + (t128 * qJD(1) + (-t197 * t393 + t203 * t394 - t280 * t606 - t286 * t608 + t577) * t405 + (-t191 + t527 * t394 + t533 * t393 + (-t273 - t464) * qJD(1)) * t408) * t405;
t412 = t419 + (-t9 - t16 - t15 - t17) * t408;
t410 = t646 / 0.2e1 - t647 / 0.2e1 + (t393 * t697 - t394 * t698 - t405 * t696 + t408 * t701 + t36) * t665 + (t37 + t696 * t408 + t701 * t405 + (t531 + t533 + t537) * t394 + (-t527 + t529 + t535) * t393) * t664 + (t393 * t702 + t394 * t703 + t405 * t700 - t408 * t699 + t109 + t89) * t542 + (-t393 * t710 - t394 * t711 + t699 * t405 + t700 * t408 + t110 + t90) * t541;
t385 = pkin(2) * t544;
t360 = t511 * qJD(2);
t319 = -t565 + t580;
t318 = t405 * t511 - t648;
t266 = t540 * t408;
t265 = t540 * t405;
t251 = t658 + (pkin(1) - t650) * t408 + t580;
t250 = t405 * t453 + t398 + t648;
t243 = t586 * t405;
t236 = t293 + t526;
t235 = (rSges(4,3) - t409) * t408 + t451 * t405;
t233 = t518 * t405;
t228 = t405 * t433 + t575;
t227 = -qJD(1) * t312 + t408 * t433;
t223 = t517 * t405;
t210 = t445 * t405;
t207 = t695 + ((-rSges(3,3) - pkin(7)) * t405 + t453 * t408) * qJD(1);
t206 = (t398 + (-pkin(1) - t654) * t405) * qJD(1) + t420;
t173 = t526 - t591;
t172 = (rSges(5,2) - t409) * t408 + t418;
t165 = -t350 * t573 - t617 + (-t404 * t573 - t405 * t570) * pkin(2);
t164 = t350 * t574 + t385 + (-t310 - t563) * t408;
t146 = t457 * t405;
t145 = t313 * t405 - t408 * t462;
t144 = t312 * t405 - t689;
t143 = -t313 * t408 - t694;
t142 = -t312 * t408 - t405 * t463;
t140 = t429 * t405;
t139 = t350 * t603 + (t408 * t451 - t395) * qJD(1) + t581;
t138 = (-t389 - t653) * t574 + (-t447 - t706) * t408 + t582;
t123 = qJD(1) * t244 + t405 * t592;
t122 = t408 * t592 + t588;
t118 = qJD(1) * t234 + t405 * t454;
t117 = t408 * t454 + t385 + t588;
t116 = t186 + t593;
t113 = t472 * t394;
t112 = qJD(1) * t224 + t405 * t458;
t111 = t408 * t458 + t551;
t106 = qJD(1) * t211 + t405 * t426;
t105 = t408 * t426 + t385 + t551;
t103 = (-t569 + (t394 * t642 + t652) * t399) * t405 + (t408 * t427 - t397) * qJD(1) + t549;
t102 = (t608 * t663 - t564) * t408 + (t418 - t596) * qJD(1) + t584 + t585;
t91 = t121 + t593;
t88 = -qJD(5) * t408 + (-t569 + (t394 * t643 - t649) * t399) * t405 + (t408 * t424 + t645) * qJD(1) + t498;
t87 = (t608 * t666 - t564) * t408 + (t516 + (t394 * t666 + t499) * t405) * qJD(1) + t512 + t550;
t86 = -t293 * t574 + t554;
t77 = t104 + t593;
t60 = qJD(1) * t147 + t405 * t448;
t59 = t408 * t448 + t522;
t58 = qJD(1) * t141 + t405 * t422;
t57 = t408 * t422 + t385 + t522;
t55 = t56 + t593;
t54 = (-t569 + (t393 * t662 + t394 * t656) * t399) * t405 + (qJD(1) * t421 - qJD(5)) * t408 + t498 - t506;
t53 = t363 + (t548 * t608 - t564) * t408 + t411 * qJD(1) + t512 + t594;
t52 = (-t268 - t293) * t574 + t553 + t554;
t51 = (-t264 * t603 - t101) * t393 + (t171 * t405 - t220 * t399 + t264 * t573) * t394;
t50 = (t264 * t601 + t100) * t393 + (-t171 * t408 + t221 * t399 + t245) * t394;
t49 = t574 * t591 + t450;
t38 = t552 * t574 + t425;
t33 = (-t268 + t591) * t574 + t450 + t553;
t32 = -t472 * t608 + (qJD(1) * t684 - t100 * t405 + t101 * t408) * t394;
t27 = (-t268 + t552) * t574 + t425 + t553;
t18 = t523 * t574 + t417;
t11 = t417 + (-t268 + t523) * t574 + t553;
t1 = [(t114 * t54 + t115 * t53) * t670 + (t148 * t88 + t149 * t87) * t671 + (t102 * t173 + t103 * t172) * t672 + (t138 * t236 + t139 * t235) * t673 + (t206 * t251 + t207 * t250) * t674 + t413 + (-t489 + t497) * t571 + (t496 + t490) * t570 + t714 * t608 + t713 * t606 + t709 * t394 + t708 * t393; (t401 / 0.2e1 + t400 / 0.2e1) * t483 * qJD(2) + t410 + (-qJD(2) * t462 + (-qJD(1) * t314 - t408 * t434) * t407 + (-qJD(1) * t316 - t408 * t435) * t404) * t665 + m(7) * (t114 * t57 + t115 * t58 + t140 * t53 + t141 * t54) + m(6) * (t105 * t148 + t106 * t149 + t210 * t87 + t211 * t88) + m(5) * (t102 * t233 + t103 * t234 + t117 * t172 + t118 * t173) + m(4) * (t138 * t265 + t139 * t266 + t164 * t235 + t165 * t236) + m(3) * ((-t206 * t405 - t207 * t408) * t370 + (-t250 * t408 - t251 * t405) * t360) + (-qJD(2) * t463 + (qJD(1) * t315 - t405 * t434) * t407 + (qJD(1) * t317 - t405 * t435) * t404) * t664 + ((t615 / 0.2e1 + t613 / 0.2e1 - t251 * t661) * t408 + (t250 * t661 + t616 / 0.2e1 + t614 / 0.2e1) * t405) * qJD(1); -t408 * ((t408 * t228 + (t143 + t689) * qJD(1)) * t408 + (t142 * qJD(1) + (-t315 * t570 - t317 * t571 + t575) * t405 + (-t227 + (t614 + t616) * qJD(2) - t462 * qJD(1)) * t408) * t405) + ((t318 * t405 + t319 * t408) * ((qJD(1) * t318 + t420) * t408 + (-t695 + (-t319 - t565 + t396) * qJD(1)) * t405) + t579 * t370 * t360) * t674 + (t55 * t11 + t140 * t58 + t141 * t57) * t670 + (t105 * t211 + t106 * t210 + t27 * t77) * t671 + (t117 * t234 + t118 * t233 + t33 * t91) * t672 + (t116 * t52 + t164 * t266 + t165 * t265) * t673 - t408 * t9 - t408 * t16 - t408 * t15 - t408 * t17 + (-t144 * t408 + t145 * t405) * t573 + (-t142 * t408 + t143 * t405) * t574 + t405 * ((t405 * t227 + (t144 + t694) * qJD(1)) * t405 + (t145 * qJD(1) + (t314 * t570 + t316 * t571) * t408 + (-t228 + (-t613 - t615) * qJD(2) + (t313 - t463) * qJD(1)) * t405) * t408) + t419; t410 + m(7) * (t114 * t59 + t115 * t60 + t146 * t53 + t147 * t54) + m(6) * (t111 * t148 + t112 * t149 + t223 * t87 + t224 * t88) + m(5) * (t102 * t243 + t103 * t244 + t122 * t172 + t123 * t173) + (-t138 * t405 - t139 * t408 + (t235 * t405 - t236 * t408) * qJD(1)) * t660 + m(4) * (-t235 * t408 - t236 * t405) * t310; m(7) * (t56 * t11 + t140 * t60 + t141 * t59 + t146 * t58 + t147 * t57 + t18 * t55) + m(6) * (t104 * t27 + t105 * t224 + t106 * t223 + t111 * t211 + t112 * t210 + t38 * t77) + m(5) * (t117 * t244 + t118 * t243 + t121 * t33 + t122 * t234 + t123 * t233 + t49 * t91) + t412 + (-t164 * t408 - t165 * t405 + (-t265 * t408 + t266 * t405) * qJD(1)) * t660 + m(4) * (-t266 * t310 * t408 + t116 * t86 + t186 * t52 - t265 * t617); (t310 * t350 * t579 + t186 * t86) * t673 + t412 + (t146 * t60 + t147 * t59 + t56 * t18) * t670 + (t104 * t38 + t111 * t224 + t112 * t223) * t671 + (t121 * t49 + t122 * t244 + t123 * t243) * t672; 0.2e1 * (t477 * t667 + (t172 * t408 + t173 * t405) * t669 + t475 * t668) * t606 + 0.2e1 * ((-t114 * t574 + t115 * t573 + t405 * t53 + t408 * t54) * t667 + (t102 * t405 + t103 * t408 - t172 * t574 + t173 * t573) * t669 + (-t148 * t574 + t149 * t573 + t405 * t87 + t408 * t88) * t668) * t393; 0.2e1 * ((t140 * t603 + t141 * t601 - t11) * t667 + (t210 * t603 + t211 * t601 - t27) * t668 + (t233 * t603 + t234 * t601 - t33) * t669) * t394 + 0.2e1 * ((t140 * t573 - t141 * t574 + t399 * t55 + t405 * t58 + t408 * t57) * t667 + (t105 * t408 + t106 * t405 + t210 * t573 - t211 * t574 + t399 * t77) * t668 + (t117 * t408 + t118 * t405 + t233 * t573 - t234 * t574 + t399 * t91) * t669) * t393; 0.2e1 * ((t146 * t603 + t147 * t601 - t18) * t667 + (t223 * t603 + t224 * t601 - t38) * t668 + (t243 * t603 + t244 * t601 - t49) * t669) * t394 + 0.2e1 * ((t146 * t573 - t147 * t574 + t399 * t56 + t405 * t60 + t408 * t59) * t667 + (t104 * t399 + t111 * t408 + t112 * t405 + t223 * t573 - t224 * t574) * t668 + (t121 * t399 + t122 * t408 + t123 * t405 + t243 * t573 - t244 * t574) * t669) * t393; 0.4e1 * (t669 + t668 + t667) * (-0.1e1 + t579) * t393 * t606; m(7) * (-qJD(1) * t477 - t405 * t54 + t408 * t53) + m(6) * (-qJD(1) * t475 - t405 * t88 + t408 * t87); m(7) * (-t405 * t57 + t408 * t58 + (-t140 * t405 - t141 * t408) * qJD(1)) + m(6) * (-t105 * t405 + t106 * t408 + (-t210 * t405 - t211 * t408) * qJD(1)); m(7) * (-t405 * t59 + t408 * t60 + (-t146 * t405 - t147 * t408) * qJD(1)) + m(6) * (-t111 * t405 + t112 * t408 + (-t223 * t405 - t224 * t408) * qJD(1)); 0; 0; m(7) * (t114 * t51 + t115 * t50 + t136 * t54 + t137 * t53) + (-t405 * t557 + t408 * t556) * t608 + ((t26 / 0.2e1 + t36 / 0.2e1) * t408 + (t25 / 0.2e1 + t37 / 0.2e1) * t405 + (t405 * t556 + t408 * t557) * qJD(1)) * t394 + t641; m(7) * (t11 * t113 + t136 * t57 + t137 * t58 + t140 * t50 + t141 * t51 + t32 * t55) + t423; m(7) * (t113 * t18 + t136 * t59 + t137 * t60 + t146 * t50 + t147 * t51 + t32 * t56) + t423; m(7) * ((t399 * t476 - t32) * t394 + (t113 * t399 + t405 * t50 + t408 * t51 + (-t136 * t405 + t137 * t408) * qJD(1)) * t393); m(7) * (-qJD(1) * t476 - t405 * t51 + t408 * t50); (t113 * t32 + t136 * t51 + t137 * t50) * t670 + ((-t405 * t30 - t408 * t31 - t393 * t500) * t399 + t641) * t393 + (t408 * t3 + t405 * t4 + t500 * t606 + (t120 * t399 + t25 * t405 + t26 * t408) * t393 + (t408 * t30 - t405 * t31 - t393 * t501) * qJD(1)) * t394;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
