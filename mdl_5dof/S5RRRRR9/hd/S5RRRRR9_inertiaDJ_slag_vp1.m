% Calculate time derivative of joint inertia matrix for
% S5RRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% MqD [5x5]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRRR9_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR9_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR9_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR9_inertiaDJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR9_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRRR9_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRRR9_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:27:45
% EndTime: 2019-12-31 22:28:31
% DurationCPUTime: 22.70s
% Computational Cost: add. (68605->1132), mult. (80350->1517), div. (0->0), fcn. (77726->10), ass. (0->568)
t481 = sin(qJ(2));
t759 = -qJD(1) * t481 / 0.2e1;
t485 = cos(qJ(1));
t484 = cos(qJ(2));
t648 = qJD(2) * t484;
t608 = t648 / 0.2e1;
t482 = sin(qJ(1));
t653 = qJD(1) * t482;
t626 = t481 * t653;
t758 = t485 * t608 - t626 / 0.2e1;
t651 = qJD(1) * t485;
t609 = t651 / 0.2e1;
t757 = t481 * t609 + t482 * t608;
t619 = t482 * t648;
t500 = t481 * t651 + t619;
t483 = cos(qJ(3));
t645 = qJD(3) * t483;
t642 = pkin(3) * t645;
t486 = -pkin(8) - pkin(7);
t689 = t481 * t486;
t756 = qJD(1) * t689 + t642;
t741 = t482 / 0.2e1;
t650 = qJD(2) * t481;
t755 = -t650 / 0.2e1;
t722 = Icges(3,4) * t481;
t565 = Icges(3,1) * t484 - t722;
t400 = Icges(3,5) * t482 + t485 * t565;
t700 = t400 * t484;
t721 = Icges(3,4) * t484;
t560 = -Icges(3,2) * t481 + t721;
t397 = Icges(3,6) * t482 + t485 * t560;
t706 = t397 * t481;
t522 = -t700 + t706;
t754 = t482 * t522;
t399 = -Icges(3,5) * t485 + t482 * t565;
t702 = t399 * t484;
t396 = -Icges(3,6) * t485 + t482 * t560;
t708 = t396 * t481;
t523 = -t702 + t708;
t753 = t485 * t523;
t690 = t481 * t485;
t752 = -rSges(3,2) * t690 + t482 * rSges(3,3);
t555 = Icges(3,5) * t484 - Icges(3,6) * t481;
t393 = -Icges(3,3) * t485 + t482 * t555;
t652 = qJD(1) * t484;
t594 = -qJD(3) + t652;
t647 = qJD(2) * t485;
t617 = t481 * t647;
t751 = t482 * t594 + t617;
t477 = qJD(3) + qJD(4);
t597 = -t477 + t652;
t750 = t482 * t597 + t617;
t468 = qJD(5) + t477;
t599 = -t468 + t652;
t749 = t482 * t599 + t617;
t649 = qJD(2) * t482;
t620 = t481 * t649;
t748 = t485 * t597 - t620;
t747 = t485 * t599 - t620;
t478 = -pkin(9) + t486;
t655 = t478 - t486;
t601 = t655 * t481;
t480 = sin(qJ(3));
t694 = t480 * t482;
t459 = pkin(3) * t694;
t465 = t483 * pkin(3) + pkin(2);
t686 = t484 * t485;
t659 = -t465 * t686 - t459;
t479 = qJ(3) + qJ(4);
t470 = cos(t479);
t431 = pkin(4) * t470 + t465;
t469 = sin(t479);
t734 = pkin(3) * t480;
t434 = pkin(4) * t469 + t734;
t662 = t431 * t686 + t482 * t434;
t256 = -t485 * t601 + t659 + t662;
t471 = qJ(5) + t479;
t463 = sin(t471);
t464 = cos(t471);
t388 = -t463 * t686 + t464 * t482;
t389 = t463 * t482 + t464 * t686;
t291 = t389 * rSges(6,1) + t388 * rSges(6,2) + rSges(6,3) * t690;
t676 = t256 + t291;
t660 = t431 - t465;
t602 = t660 * t484;
t509 = -t478 * t481 + t602;
t693 = t480 * t485;
t460 = pkin(3) * t693;
t657 = t482 * t689 + t460;
t697 = t434 * t485;
t255 = t482 * t509 + t657 - t697;
t688 = t482 * t484;
t386 = -t463 * t688 - t464 * t485;
t387 = -t463 * t485 + t464 * t688;
t568 = -rSges(6,1) * t387 - rSges(6,2) * t386;
t691 = t481 * t482;
t290 = rSges(6,3) * t691 - t568;
t677 = t255 + t290;
t746 = -t482 * t677 - t485 * t676;
t745 = 2 * m(3);
t744 = 2 * m(4);
t743 = 2 * m(5);
t742 = 2 * m(6);
t740 = -t484 / 0.2e1;
t739 = -t485 / 0.2e1;
t738 = t485 / 0.2e1;
t737 = -rSges(4,3) - pkin(7);
t443 = rSges(3,1) * t481 + rSges(3,2) * t484;
t736 = m(3) * t443;
t735 = pkin(2) * t484;
t733 = pkin(4) * t477;
t732 = pkin(7) * t481;
t473 = t482 * pkin(6);
t731 = qJD(1) / 0.2e1;
t730 = pkin(2) - t465;
t729 = pkin(7) + t486;
t717 = Icges(5,4) * t470;
t557 = -Icges(5,2) * t469 + t717;
t695 = t477 * t481;
t718 = Icges(5,4) * t469;
t294 = (-Icges(5,2) * t470 - t718) * t695 + (Icges(5,6) * t481 + t484 * t557) * qJD(2);
t562 = Icges(5,1) * t470 - t718;
t381 = -Icges(5,5) * t484 + t562 * t481;
t553 = Icges(5,5) * t470 - Icges(5,6) * t469;
t293 = (-Icges(5,5) * t469 - Icges(5,6) * t470) * t695 + (Icges(5,3) * t481 + t484 * t553) * qJD(2);
t295 = (-Icges(5,1) * t469 - t717) * t695 + (Icges(5,5) * t481 + t484 * t562) * qJD(2);
t379 = -Icges(5,3) * t484 + t553 * t481;
t380 = -Icges(5,6) * t484 + t557 * t481;
t709 = t381 * t470;
t493 = -t484 * t293 + t379 * t650 + t648 * t709 + (t295 * t481 - t380 * t695) * t470;
t622 = t380 * t648;
t113 = (-t622 + (-t381 * t477 - t294) * t481) * t469 + t493;
t715 = Icges(6,4) * t464;
t556 = -Icges(6,2) * t463 + t715;
t696 = t468 * t481;
t716 = Icges(6,4) * t463;
t271 = (-Icges(6,2) * t464 - t716) * t696 + (Icges(6,6) * t481 + t484 * t556) * qJD(2);
t561 = Icges(6,1) * t464 - t716;
t375 = -Icges(6,5) * t484 + t561 * t481;
t552 = Icges(6,5) * t464 - Icges(6,6) * t463;
t270 = (-Icges(6,5) * t463 - Icges(6,6) * t464) * t696 + (Icges(6,3) * t481 + t484 * t552) * qJD(2);
t272 = (-Icges(6,1) * t463 - t715) * t696 + (Icges(6,5) * t481 + t484 * t561) * qJD(2);
t373 = -Icges(6,3) * t484 + t552 * t481;
t374 = -Icges(6,6) * t484 + t556 * t481;
t710 = t375 * t464;
t494 = -t484 * t270 + t373 * t650 + t648 * t710 + (t272 * t481 - t374 * t696) * t464;
t623 = t374 * t648;
t104 = (-t623 + (-t375 * t468 - t271) * t481) * t463 + t494;
t224 = -t373 * t484 + (-t374 * t463 + t710) * t481;
t221 = t224 * t650;
t600 = -t468 * t484 + qJD(1);
t521 = t482 * t600;
t259 = -t747 * t463 + t464 * t521;
t260 = t463 * t521 + t747 * t464;
t167 = Icges(6,5) * t260 + Icges(6,6) * t259 + Icges(6,3) * t500;
t169 = Icges(6,4) * t260 + Icges(6,2) * t259 + Icges(6,6) * t500;
t171 = Icges(6,1) * t260 + Icges(6,4) * t259 + Icges(6,5) * t500;
t284 = Icges(6,5) * t387 + Icges(6,6) * t386 + Icges(6,3) * t691;
t286 = Icges(6,4) * t387 + Icges(6,2) * t386 + Icges(6,6) * t691;
t288 = Icges(6,1) * t387 + Icges(6,4) * t386 + Icges(6,5) * t691;
t534 = -t286 * t463 + t288 * t464;
t41 = (qJD(2) * t534 - t167) * t484 + (qJD(2) * t284 + (-t286 * t468 + t171) * t464 + (-t288 * t468 - t169) * t463) * t481;
t519 = t485 * t600;
t257 = t749 * t463 + t464 * t519;
t258 = t463 * t519 - t749 * t464;
t618 = t484 * t647;
t499 = t618 - t626;
t166 = Icges(6,5) * t258 + Icges(6,6) * t257 + Icges(6,3) * t499;
t168 = Icges(6,4) * t258 + Icges(6,2) * t257 + Icges(6,6) * t499;
t170 = Icges(6,1) * t258 + Icges(6,4) * t257 + Icges(6,5) * t499;
t285 = Icges(6,5) * t389 + Icges(6,6) * t388 + Icges(6,3) * t690;
t287 = Icges(6,4) * t389 + Icges(6,2) * t388 + Icges(6,6) * t690;
t289 = Icges(6,1) * t389 + Icges(6,4) * t388 + Icges(6,5) * t690;
t533 = -t287 * t463 + t289 * t464;
t42 = (qJD(2) * t533 - t166) * t484 + (qJD(2) * t285 + (-t287 * t468 + t170) * t464 + (-t289 * t468 - t168) * t463) * t481;
t150 = -t284 * t484 + t481 * t534;
t151 = -t285 * t484 + t481 * t533;
t542 = t150 * t482 + t151 * t485;
t543 = t150 * t485 - t151 * t482;
t13 = t221 + (qJD(2) * t542 - t104) * t484 + (qJD(1) * t543 + t41 * t482 + t42 * t485) * t481;
t231 = -t379 * t484 + (-t380 * t469 + t709) * t481;
t230 = t231 * t650;
t598 = -t477 * t484 + qJD(1);
t520 = t482 * t598;
t277 = -t748 * t469 + t470 * t520;
t278 = t469 * t520 + t748 * t470;
t183 = Icges(5,5) * t278 + Icges(5,6) * t277 + Icges(5,3) * t500;
t185 = Icges(5,4) * t278 + Icges(5,2) * t277 + Icges(5,6) * t500;
t187 = Icges(5,1) * t278 + Icges(5,4) * t277 + Icges(5,5) * t500;
t405 = -t469 * t688 - t470 * t485;
t406 = -t469 * t485 + t470 * t688;
t300 = Icges(5,5) * t406 + Icges(5,6) * t405 + Icges(5,3) * t691;
t302 = Icges(5,4) * t406 + Icges(5,2) * t405 + Icges(5,6) * t691;
t304 = Icges(5,1) * t406 + Icges(5,4) * t405 + Icges(5,5) * t691;
t532 = -t302 * t469 + t304 * t470;
t52 = (qJD(2) * t532 - t183) * t484 + (qJD(2) * t300 + (-t302 * t477 + t187) * t470 + (-t304 * t477 - t185) * t469) * t481;
t518 = t485 * t598;
t275 = t750 * t469 + t470 * t518;
t276 = t469 * t518 - t750 * t470;
t182 = Icges(5,5) * t276 + Icges(5,6) * t275 + Icges(5,3) * t499;
t184 = Icges(5,4) * t276 + Icges(5,2) * t275 + Icges(5,6) * t499;
t186 = Icges(5,1) * t276 + Icges(5,4) * t275 + Icges(5,5) * t499;
t407 = -t469 * t686 + t470 * t482;
t408 = t469 * t482 + t470 * t686;
t301 = Icges(5,5) * t408 + Icges(5,6) * t407 + Icges(5,3) * t690;
t303 = Icges(5,4) * t408 + Icges(5,2) * t407 + Icges(5,6) * t690;
t305 = Icges(5,1) * t408 + Icges(5,4) * t407 + Icges(5,5) * t690;
t531 = -t303 * t469 + t305 * t470;
t53 = (qJD(2) * t531 - t182) * t484 + (qJD(2) * t301 + (-t303 * t477 + t186) * t470 + (-t305 * t477 - t184) * t469) * t481;
t158 = -t300 * t484 + t481 * t532;
t159 = -t301 * t484 + t481 * t531;
t540 = t158 * t482 + t159 * t485;
t541 = t158 * t485 - t159 * t482;
t728 = -t13 - t230 - (qJD(2) * t540 - t113) * t484 - (qJD(1) * t541 + t482 * t52 + t485 * t53) * t481;
t195 = t373 * t690 + t374 * t388 + t375 * t389;
t133 = t284 * t690 + t286 * t388 + t288 * t389;
t134 = t285 * t690 + t287 * t388 + t289 * t389;
t548 = t133 * t482 + t134 * t485;
t68 = -t195 * t484 + t481 * t548;
t203 = t379 * t690 + t380 * t407 + t381 * t408;
t141 = t300 * t690 + t302 * t407 + t304 * t408;
t142 = t301 * t690 + t303 * t407 + t305 * t408;
t544 = t141 * t482 + t142 * t485;
t76 = -t203 * t484 + t481 * t544;
t727 = -t68 - t76;
t726 = rSges(3,3) * t485;
t725 = rSges(5,3) * t481;
t724 = rSges(6,3) * t481;
t723 = -rSges(6,3) + t478;
t720 = Icges(4,4) * t480;
t719 = Icges(4,4) * t483;
t687 = t483 * t485;
t418 = -t480 * t688 - t687;
t419 = t483 * t688 - t693;
t574 = -rSges(4,1) * t419 - rSges(4,2) * t418;
t333 = rSges(4,3) * t691 - t574;
t711 = t333 * t485;
t707 = t396 * t484;
t705 = t397 * t484;
t563 = Icges(4,1) * t483 - t720;
t398 = -Icges(4,5) * t484 + t563 * t481;
t704 = t398 * t483;
t703 = t399 * t481;
t701 = t400 * t481;
t643 = qJD(3) * t734;
t415 = -t469 * t733 - t643;
t699 = t415 * t484;
t416 = t470 * t733 + t642;
t698 = t416 * t485;
t692 = t481 * t431;
t685 = -t113 - t104;
t637 = t258 * rSges(6,1) + t257 * rSges(6,2) + rSges(6,3) * t618;
t172 = -rSges(6,3) * t626 + t637;
t585 = t415 * t686 + t482 * t416 + t434 * t651 + t478 * t626;
t628 = qJD(1) * t460 + t756 * t482;
t684 = -t660 * t617 + (-t660 * t653 + (-qJD(2) * t655 + t643) * t485) * t484 + t585 - t628 + t172;
t569 = rSges(6,1) * t260 + rSges(6,2) * t259;
t173 = rSges(6,3) * t500 + t569;
t683 = t173 * t690 + t290 * t618;
t572 = rSges(5,1) * t278 + rSges(5,2) * t277;
t189 = rSges(5,3) * t500 + t572;
t571 = -rSges(5,1) * t406 - rSges(5,2) * t405;
t306 = rSges(5,3) * t691 - t571;
t682 = t189 * t690 + t306 * t618;
t634 = t276 * rSges(5,1) + t275 * rSges(5,2) + rSges(5,3) * t618;
t188 = -rSges(5,3) * t626 + t634;
t453 = pkin(7) * t618;
t219 = -t453 + (pkin(7) * t653 + t730 * t647) * t481 + ((-qJD(2) * t486 - t643) * t485 + t730 * t653) * t484 + t628;
t681 = -t188 - t219;
t451 = pkin(2) * t620;
t611 = t730 * t484;
t511 = -t611 - t732;
t596 = t484 * t643;
t566 = t465 * t620 + t482 * t596 + t756 * t485 + t486 * t619;
t220 = -pkin(7) * t619 + t451 + (t485 * t511 + t459) * qJD(1) - t566;
t335 = t482 * t511 - t657;
t680 = t220 * t690 + t335 * t618;
t273 = t290 * t690;
t679 = t255 * t690 + t273;
t251 = (t415 + t643) * t481 + (t602 - t601) * qJD(2);
t567 = rSges(6,1) * t464 - rSges(6,2) * t463;
t274 = (-rSges(6,1) * t463 - rSges(6,2) * t464) * t696 + (t484 * t567 + t724) * qJD(2);
t678 = -t251 - t274;
t376 = -rSges(6,3) * t484 + t567 * t481;
t675 = t291 * t650 + t376 * t626;
t307 = t408 * rSges(5,1) + t407 * rSges(5,2) + rSges(5,3) * t690;
t570 = rSges(5,1) * t470 - rSges(5,2) * t469;
t384 = -rSges(5,3) * t484 + t570 * t481;
t674 = t307 * t650 + t384 * t626;
t297 = (-rSges(5,1) * t469 - rSges(5,2) * t470) * t695 + (t484 * t570 + t725) * qJD(2);
t646 = qJD(3) * t481;
t616 = t480 * t646;
t347 = -pkin(3) * t616 + (-t729 * t481 - t611) * qJD(2);
t673 = -t297 - t347;
t672 = -t306 - t335;
t462 = pkin(2) * t686;
t423 = pkin(7) * t690 + t462;
t514 = -t485 * t689 - t659;
t336 = t514 - t423;
t671 = -t307 - t336;
t378 = -t730 * t481 + t729 * t484;
t368 = t378 * t653;
t670 = t336 * t650 + t481 * t368;
t669 = t484 * t335 + t378 * t691;
t420 = -t480 * t686 + t482 * t483;
t421 = t483 * t686 + t694;
t334 = t421 * rSges(4,1) + t420 * rSges(4,2) + rSges(4,3) * t690;
t668 = -t334 - t423;
t573 = rSges(4,1) * t483 - rSges(4,2) * t480;
t346 = (-rSges(4,1) * t480 - rSges(4,2) * t483) * t646 + (rSges(4,3) * t481 + t484 * t573) * qJD(2);
t578 = t732 + t735;
t432 = t578 * qJD(2);
t667 = -t346 - t432;
t348 = t660 * t481 + t484 * t655;
t666 = t348 + t376;
t232 = t484 * t290 + t376 * t691;
t236 = t484 * t306 + t384 * t691;
t444 = t481 * pkin(2) - t484 * pkin(7);
t425 = t444 * t653;
t665 = t368 + t425;
t664 = -t378 - t384;
t402 = -rSges(4,3) * t484 + t573 * t481;
t663 = -t402 - t444;
t422 = t578 * t482;
t661 = t482 * t422 + t485 * t423;
t658 = rSges(3,2) * t626 + rSges(3,3) * t651;
t656 = t485 * pkin(1) + t473;
t394 = Icges(3,3) * t482 + t485 * t555;
t654 = qJD(1) * t394;
t595 = -qJD(3) * t484 + qJD(1);
t517 = t483 * t595;
t317 = t482 * t517 + (-t485 * t594 + t620) * t480;
t516 = t595 * t480;
t318 = t594 * t687 + (-t483 * t650 + t516) * t482;
t554 = Icges(4,5) * t483 - Icges(4,6) * t480;
t337 = (-Icges(4,5) * t480 - Icges(4,6) * t483) * t646 + (Icges(4,3) * t481 + t484 * t554) * qJD(2);
t558 = -Icges(4,2) * t480 + t719;
t340 = (-Icges(4,2) * t483 - t720) * t646 + (Icges(4,6) * t481 + t484 * t558) * qJD(2);
t343 = (-Icges(4,1) * t480 - t719) * t646 + (Icges(4,5) * t481 + t484 * t563) * qJD(2);
t392 = -Icges(4,3) * t484 + t554 * t481;
t395 = -Icges(4,6) * t484 + t558 * t481;
t112 = t317 * t395 + t318 * t398 + t337 * t691 + t340 * t418 + t343 * t419 + t392 * t500;
t206 = Icges(4,5) * t318 + Icges(4,6) * t317 + Icges(4,3) * t500;
t208 = Icges(4,4) * t318 + Icges(4,2) * t317 + Icges(4,6) * t500;
t210 = Icges(4,1) * t318 + Icges(4,4) * t317 + Icges(4,5) * t500;
t327 = Icges(4,5) * t419 + Icges(4,6) * t418 + Icges(4,3) * t691;
t329 = Icges(4,4) * t419 + Icges(4,2) * t418 + Icges(4,6) * t691;
t331 = Icges(4,1) * t419 + Icges(4,4) * t418 + Icges(4,5) * t691;
t529 = -t329 * t480 + t331 * t483;
t58 = (qJD(2) * t529 - t206) * t484 + (qJD(2) * t327 - t208 * t480 + t210 * t483 + (-t329 * t483 - t331 * t480) * qJD(3)) * t481;
t641 = t58 / 0.2e1 + t112 / 0.2e1;
t315 = t751 * t480 + t485 * t517;
t316 = -t751 * t483 + t485 * t516;
t111 = t315 * t395 + t316 * t398 + t337 * t690 + t340 * t420 + t343 * t421 + t392 * t499;
t205 = Icges(4,5) * t316 + Icges(4,6) * t315 + Icges(4,3) * t499;
t207 = Icges(4,4) * t316 + Icges(4,2) * t315 + Icges(4,6) * t499;
t209 = Icges(4,1) * t316 + Icges(4,4) * t315 + Icges(4,5) * t499;
t328 = Icges(4,5) * t421 + Icges(4,6) * t420 + Icges(4,3) * t690;
t330 = Icges(4,4) * t421 + Icges(4,2) * t420 + Icges(4,6) * t690;
t332 = Icges(4,1) * t421 + Icges(4,4) * t420 + Icges(4,5) * t690;
t528 = -t330 * t480 + t332 * t483;
t59 = (qJD(2) * t528 - t205) * t484 + (qJD(2) * t328 - t207 * t480 + t209 * t483 + (-t330 * t483 - t332 * t480) * qJD(3)) * t481;
t640 = t59 / 0.2e1 + t111 / 0.2e1;
t639 = -t219 - t684;
t638 = -t347 + t678;
t636 = -t335 - t677;
t635 = -t336 - t676;
t633 = -t432 + t673;
t632 = t316 * rSges(4,1) + t315 * rSges(4,2) + rSges(4,3) * t618;
t631 = -t378 - t666;
t501 = -t482 * t652 - t617;
t630 = t482 * (pkin(7) * t500 + qJD(1) * t462 - t451) + t485 * (pkin(2) * t501 - pkin(7) * t626 + t453) + t422 * t651;
t629 = -t444 + t664;
t627 = t402 * t653;
t621 = t395 * t648;
t615 = t691 / 0.2e1;
t614 = t690 / 0.2e1;
t180 = -t327 * t484 + t481 * t529;
t225 = t392 * t691 + t395 * t418 + t398 * t419;
t613 = t180 / 0.2e1 + t225 / 0.2e1;
t181 = -t328 * t484 + t481 * t528;
t226 = t392 * t690 + t395 * t420 + t398 * t421;
t612 = t181 / 0.2e1 + t226 / 0.2e1;
t610 = t653 / 0.2e1;
t607 = -t431 * t484 - pkin(1);
t606 = t485 * t666;
t605 = t485 * t664;
t604 = t676 * t484;
t603 = t671 * t484;
t353 = t663 * t485;
t504 = (-t484 * t478 - t692) * qJD(2);
t149 = -t698 + (t504 + t699) * t482 + ((t434 - t734) * t482 + t509 * t485) * qJD(1) + t566;
t593 = t149 * t690 + t255 * t618 + t683;
t592 = t484 * t173 + t274 * t691 + t500 * t376;
t591 = t484 * t189 + t297 * t691 + t500 * t384;
t590 = t484 * t220 + t347 * t691 + t500 * t378;
t589 = t256 * t650 + t348 * t626 + t675;
t588 = -t432 + t638;
t587 = t482 * t335 + t485 * t336 + t661;
t136 = t484 * t255 + t348 * t691 + t232;
t586 = -t444 + t631;
t580 = t635 * t484;
t579 = t631 * t485;
t262 = t629 * t485;
t35 = t167 * t690 + t169 * t388 + t171 * t389 + t257 * t286 + t258 * t288 + t284 * t499;
t36 = t166 * t690 + t168 * t388 + t170 * t389 + t257 * t287 + t258 * t289 + t285 * t499;
t549 = t133 * t485 - t134 * t482;
t81 = t257 * t374 + t258 * t375 + t270 * t690 + t271 * t388 + t272 * t389 + t373 * t499;
t5 = (qJD(2) * t548 - t81) * t484 + (qJD(1) * t549 + qJD(2) * t195 + t35 * t482 + t36 * t485) * t481;
t194 = t373 * t691 + t374 * t386 + t375 * t387;
t37 = t167 * t691 + t169 * t386 + t171 * t387 + t259 * t286 + t260 * t288 + t284 * t500;
t38 = t166 * t691 + t168 * t386 + t170 * t387 + t259 * t287 + t260 * t289 + t285 * t500;
t131 = t284 * t691 + t286 * t386 + t288 * t387;
t132 = t285 * t691 + t287 * t386 + t289 * t387;
t550 = t131 * t482 + t132 * t485;
t551 = t131 * t485 - t132 * t482;
t82 = t259 * t374 + t260 * t375 + t270 * t691 + t271 * t386 + t272 * t387 + t373 * t500;
t6 = (qJD(2) * t550 - t82) * t484 + (qJD(1) * t551 + qJD(2) * t194 + t37 * t482 + t38 * t485) * t481;
t67 = -t194 * t484 + t550 * t481;
t577 = t5 * t690 + t6 * t691 + t68 * t618 + (-t224 * t484 + t481 * t542) * t650 + t500 * t67;
t576 = rSges(3,1) * t484 - rSges(3,2) * t481;
t575 = rSges(4,1) * t318 + rSges(4,2) * t317;
t559 = Icges(3,2) * t484 + t722;
t139 = t300 * t691 + t302 * t405 + t304 * t406;
t140 = t301 * t691 + t303 * t405 + t305 * t406;
t547 = t139 * t485 - t140 * t482;
t546 = t139 * t482 + t140 * t485;
t545 = t141 * t485 - t142 * t482;
t160 = t327 * t691 + t329 * t418 + t331 * t419;
t161 = t328 * t691 + t330 * t418 + t332 * t419;
t539 = t160 * t485 - t161 * t482;
t538 = t160 * t482 + t161 * t485;
t162 = t327 * t690 + t329 * t420 + t331 * t421;
t163 = t328 * t690 + t330 * t420 + t332 * t421;
t537 = t162 * t485 - t163 * t482;
t536 = t162 * t482 + t163 * t485;
t535 = t180 * t482 + t181 * t485;
t530 = -t306 * t482 - t307 * t485;
t527 = -t334 * t482 + t711;
t526 = -t333 * t482 - t334 * t485;
t404 = rSges(3,1) * t686 + t752;
t218 = t586 * t485;
t515 = -pkin(1) - t576;
t513 = -t465 * t484 - pkin(1) - t725;
t512 = t485 * t219 + t482 * t220 + t335 * t651 + t630;
t510 = qJD(2) * t443;
t508 = t737 * t481 - pkin(1) - t735;
t506 = qJD(2) * t559;
t505 = qJD(2) * (-Icges(3,5) * t481 - Icges(3,6) * t484);
t503 = t513 * t482;
t502 = t723 * t481 + t607;
t498 = t484 * t149 + t251 * t691 + t500 * t348 + t592;
t497 = t508 * t482;
t44 = t183 * t690 + t185 * t407 + t187 * t408 + t275 * t302 + t276 * t304 + t300 * t499;
t45 = t182 * t690 + t184 * t407 + t186 * t408 + t275 * t303 + t276 * t305 + t301 * t499;
t95 = t275 * t380 + t276 * t381 + t293 * t690 + t294 * t407 + t295 * t408 + t379 * t499;
t11 = (qJD(2) * t544 - t95) * t484 + (qJD(1) * t545 + qJD(2) * t203 + t44 * t482 + t45 * t485) * t481;
t202 = t379 * t691 + t380 * t405 + t381 * t406;
t46 = t183 * t691 + t185 * t405 + t187 * t406 + t277 * t302 + t278 * t304 + t300 * t500;
t47 = t182 * t691 + t184 * t405 + t186 * t406 + t277 * t303 + t278 * t305 + t301 * t500;
t96 = t277 * t380 + t278 * t381 + t293 * t691 + t294 * t405 + t295 * t406 + t379 * t500;
t12 = (qJD(2) * t546 - t96) * t484 + (qJD(1) * t547 + qJD(2) * t202 + t46 * t482 + t47 * t485) * t481;
t75 = -t202 * t484 + t481 * t546;
t496 = t11 * t690 + t12 * t691 + t76 * t618 + t577 + (-t231 * t484 + t481 * t540) * t650 + t500 * t75;
t19 = qJD(1) * t548 - t35 * t485 + t36 * t482;
t20 = qJD(1) * t550 - t37 * t485 + t38 * t482;
t495 = t19 * t614 + t20 * t615 + t5 * t741 + t6 * t739 + t543 * t755 + (qJD(1) * t542 - t41 * t485 + t42 * t482) * t740 + t67 * t610 + t68 * t609 - t758 * t549 - t757 * t551;
t492 = -t484 * t337 + t392 * t650 + t648 * t704 + (t343 * t483 - t395 * t645) * t481;
t491 = -t484 * t13 - t626 * t68 + t577;
t490 = t221 + (t41 + t82) * t615 + (t42 + t81) * t614 + (t151 + t195) * t758 + (t150 + t194) * t757;
t489 = t728 * t484 + t727 * t626 + t496;
t24 = qJD(1) * t544 - t44 * t485 + t45 * t482;
t25 = qJD(1) * t546 - t46 * t485 + t47 * t482;
t488 = t11 * t741 + t12 * t739 + t24 * t614 + t25 * t615 + t541 * t755 + (qJD(1) * t540 + t53 * t482 - t52 * t485) * t740 + t495 + t75 * t610 + t76 * t609 - t758 * t545 - t757 * t547;
t487 = t230 + t490 + (t52 + t96) * t615 + (t53 + t95) * t614 + (t159 + t203) * t758 + (t158 + t202) * t757;
t475 = t485 * pkin(6);
t467 = pkin(6) * t651;
t430 = t576 * qJD(2);
t427 = t555 * qJD(2);
t403 = t482 * t576 - t726;
t371 = t404 + t656;
t370 = t482 * t515 + t475 + t726;
t352 = t663 * t482;
t339 = t482 * t505 + t654;
t338 = -qJD(1) * t393 + t485 * t505;
t309 = t335 * t690;
t299 = t443 * t649 + ((-rSges(3,3) - pkin(6)) * t482 + t515 * t485) * qJD(1);
t298 = rSges(3,1) * t501 - rSges(3,2) * t618 - pkin(1) * t653 + t467 + t658;
t283 = t306 * t690;
t265 = t656 - t668;
t264 = t475 + t497 + t574;
t261 = t629 * t482;
t250 = -t334 * t484 - t402 * t690;
t249 = t333 * t484 + t402 * t691;
t246 = t394 * t482 - t485 * t522;
t245 = t393 * t482 - t753;
t244 = -t394 * t485 - t754;
t243 = -t393 * t485 - t482 * t523;
t242 = -t392 * t484 + (-t395 * t480 + t704) * t481;
t238 = t242 * t650;
t237 = -t307 * t484 - t384 * t690;
t235 = t514 + t307 + t656;
t234 = t475 + t503 + t571 + t657;
t233 = -t291 * t484 - t376 * t690;
t229 = t527 * t481;
t228 = qJD(1) * t353 + t482 * t667;
t227 = t485 * t667 + t425 + t627;
t223 = -t478 * t690 + t291 + t656 + t662;
t222 = t482 * t502 + t475 + t568 + t697;
t217 = t586 * t482;
t213 = -t307 * t691 + t283;
t212 = rSges(4,3) * t500 + t575;
t211 = -rSges(4,3) * t626 + t632;
t201 = -t291 * t691 + t273;
t196 = -t526 + t661;
t177 = t451 + t737 * t619 + (t485 * t508 - t473) * qJD(1) - t575;
t176 = -pkin(2) * t617 + qJD(1) * t497 + t453 + t467 + t632;
t175 = t481 * t605 + t603;
t174 = t236 + t669;
t153 = qJD(1) * t262 + t482 * t633;
t152 = t384 * t653 + t485 * t633 + t665;
t137 = -t481 * t606 - t604;
t135 = t671 * t691 + t283 + t309;
t130 = -rSges(5,3) * t619 + ((-pkin(6) - t734) * t482 + t513 * t485) * qJD(1) + t566 - t572;
t129 = t467 + (-t596 + (-t481 * t465 - t484 * t486) * qJD(2)) * t485 + qJD(1) * t503 + t628 + t634;
t128 = -t530 + t587;
t127 = (t402 * t649 + t212) * t484 + (-qJD(2) * t333 + t346 * t482 + t402 * t651) * t481;
t126 = (-t402 * t647 - t211) * t484 + (qJD(2) * t334 - t346 * t485 + t627) * t481;
t125 = (-t621 + (-qJD(3) * t398 - t340) * t481) * t480 + t492;
t124 = -t676 * t691 + t679;
t123 = t481 * t579 + t580;
t122 = t136 + t669;
t121 = t698 + (-t699 + (t723 * t484 + t692) * qJD(2)) * t482 + ((-pkin(6) - t434) * t482 + t502 * t485) * qJD(1) - t569;
t120 = t467 + t485 * t504 + (t607 - t724) * t653 + t585 + t637;
t119 = qJD(1) * t218 + t482 * t588;
t118 = t485 * t588 + t653 * t666 + t665;
t117 = -t306 * t650 + t591;
t116 = -t297 * t690 + (-t384 * t647 - t188) * t484 + t674;
t110 = -t290 * t650 + t592;
t109 = -t274 * t690 + (-t376 * t647 - t172) * t484 + t675;
t107 = t635 * t691 + t309 + t679;
t106 = t587 - t746;
t97 = t527 * t648 + (qJD(1) * t526 - t211 * t482 + t212 * t485) * t481;
t94 = t211 * t485 + t212 * t482 + (t482 * t668 + t711) * qJD(1) + t630;
t89 = -t226 * t484 + t481 * t536;
t88 = -t225 * t484 + t481 * t538;
t77 = -t307 * t619 + (qJD(1) * t530 - t188 * t482) * t481 + t682;
t69 = -t291 * t619 + (-t172 * t482 + (-t290 * t482 - t291 * t485) * qJD(1)) * t481 + t683;
t66 = t650 * t672 + t590 + t591;
t65 = t673 * t690 + (qJD(2) * t605 + t681) * t484 + t670 + t674;
t57 = t205 * t691 + t207 * t418 + t209 * t419 + t317 * t330 + t318 * t332 + t328 * t500;
t56 = t206 * t691 + t208 * t418 + t210 * t419 + t317 * t329 + t318 * t331 + t327 * t500;
t55 = t205 * t690 + t207 * t420 + t209 * t421 + t315 * t330 + t316 * t332 + t328 * t499;
t54 = t206 * t690 + t208 * t420 + t210 * t421 + t315 * t329 + t316 * t331 + t327 * t499;
t49 = -t650 * t677 + t498;
t48 = t678 * t690 + (-qJD(2) * t606 - t684) * t484 + t589;
t43 = t188 * t485 + t189 * t482 + (t306 * t485 + (-t423 + t671) * t482) * qJD(1) + t512;
t34 = t603 * t649 + (t681 * t482 + (t482 * t672 + t485 * t671) * qJD(1)) * t481 + t680 + t682;
t33 = t636 * t650 + t498 + t590;
t32 = t638 * t690 + (qJD(2) * t579 + t639) * t484 + t589 + t670;
t31 = -t604 * t649 + (t746 * qJD(1) - t684 * t482) * t481 + t593;
t30 = t684 * t485 + (t149 + t173) * t482 + (t677 * t485 + (-t423 + t635) * t482) * qJD(1) + t512;
t29 = qJD(1) * t538 + t482 * t57 - t485 * t56;
t28 = qJD(1) * t536 + t482 * t55 - t485 * t54;
t27 = t580 * t649 + (t639 * t482 + (t482 * t636 + t485 * t635) * qJD(1)) * t481 + t593 + t680;
t16 = (qJD(2) * t538 - t112) * t484 + (qJD(1) * t539 + qJD(2) * t225 + t482 * t56 + t485 * t57) * t481;
t15 = (qJD(2) * t536 - t111) * t484 + (qJD(1) * t537 + qJD(2) * t226 + t482 * t54 + t485 * t55) * t481;
t1 = [t492 - t398 * t616 + t493 + t494 + (t120 * t223 + t121 * t222) * t742 + (t129 * t235 + t130 * t234) * t743 + (t176 * t265 + t177 * t264) * t744 + (t298 * t371 + t299 * t370) * t745 + (-t559 + t565) * t650 + (Icges(3,1) * t481 + t560 + t721) * t648 + (-t481 * t340 - t621) * t480 + (-t481 * t294 - t381 * t695 - t622) * t469 + (-t481 * t271 - t375 * t696 - t623) * t463; m(6) * (t118 * t222 + t119 * t223 + t120 * t217 + t121 * t218) + m(5) * (t129 * t261 + t130 * t262 + t152 * t234 + t153 * t235) + m(4) * (t176 * t352 + t177 * t353 + t227 * t264 + t228 * t265) + (-t52 / 0.2e1 - t41 / 0.2e1 + (qJD(1) * t397 - t482 * t506) * t740 + t400 * t759 - t96 / 0.2e1 - t82 / 0.2e1 + m(3) * (-t299 * t443 - t370 * t430) + t427 * t738 + (t708 / 0.2e1 - t702 / 0.2e1) * qJD(2) - t641) * t485 + ((-t396 * qJD(1) - t485 * t506) * t484 / 0.2e1 + t399 * t759 + t53 / 0.2e1 + t42 / 0.2e1 + t95 / 0.2e1 + t81 / 0.2e1 + m(3) * (-t298 * t443 - t371 * t430) + t427 * t741 + (-t706 / 0.2e1 + t700 / 0.2e1) * qJD(2) + t640) * t482 + ((t159 / 0.2e1 + t151 / 0.2e1 + t705 / 0.2e1 + t701 / 0.2e1 - t371 * t736 + t195 / 0.2e1 + t203 / 0.2e1 + t612) * t485 + (t370 * t736 + t707 / 0.2e1 + t703 / 0.2e1 + t194 / 0.2e1 + t202 / 0.2e1 + t158 / 0.2e1 + t150 / 0.2e1 + t613) * t482) * qJD(1); t482 * t19 - t485 * t20 + (t106 * t30 + t118 * t218 + t119 * t217) * t742 + t482 * t24 + (t128 * t43 + t152 * t262 + t153 * t261) * t743 - t485 * t25 + t482 * t28 + (t196 * t94 + t227 * t353 + t228 * t352) * t744 - t485 * t29 + t482 * ((t338 * t482 + (t245 + t754) * qJD(1)) * t482 + (t246 * qJD(1) + (t396 * t648 + t399 * t650) * t485 + (-t339 + (-t701 - t705) * qJD(2) + (t394 - t523) * qJD(1)) * t482) * t485) - t485 * ((t485 * t339 + (t244 + t753) * qJD(1)) * t485 + (t243 * qJD(1) + (-t397 * t648 - t400 * t650 + t654) * t482 + (-t338 + (t703 + t707) * qJD(2) - t522 * qJD(1)) * t485) * t482) + ((t403 * t482 + t404 * t485) * ((qJD(1) * t403 - t485 * t510 + t658) * t485 + (-t482 * t510 + (-t404 + t752) * qJD(1)) * t482) + (t482 ^ 2 + t485 ^ 2) * t443 * t430) * t745 + (-t243 * t485 + t244 * t482 - t539 - t547 - t551) * t653 + (-t245 * t485 + t246 * t482 - t537 - t545 - t549) * t651; (t640 * t485 + t641 * t482 + (-t482 * t612 + t485 * t613) * qJD(1)) * t481 + (-t125 + (t482 * t613 + t485 * t612) * qJD(2) + t685) * t484 + t238 + m(6) * (t120 * t123 + t121 * t122 + t222 * t33 + t223 * t32) + m(5) * (t129 * t175 + t130 * t174 + t234 * t66 + t235 * t65) + m(4) * (t126 * t265 + t127 * t264 + t176 * t250 + t177 * t249) + t487; t488 + (-t539 * t608 + (qJD(1) * t180 + t59) * t740 + t15 / 0.2e1 + t88 * t731) * t482 + (-t537 * t608 + (qJD(1) * t181 - t58) * t740 - t16 / 0.2e1 + t89 * t731) * t485 + m(6) * (t106 * t27 + t107 * t30 + t118 * t122 + t119 * t123 + t217 * t32 + t218 * t33) + m(5) * (t128 * t34 + t135 * t43 + t152 * t174 + t153 * t175 + t261 * t65 + t262 * t66) + m(4) * (t126 * t352 + t127 * t353 + t196 * t97 + t227 * t249 + t228 * t250 + t229 * t94) + (qJD(2) * (-t180 * t485 + t181 * t482) / 0.2e1 + t28 * t738 + t29 * t741 + (t537 * t741 - t539 * t738) * qJD(1)) * t481; (t107 * t27 + t122 * t33 + t123 * t32) * t742 + (t135 * t34 + t174 * t66 + t175 * t65) * t743 + (t126 * t250 + t127 * t249 + t229 * t97) * t744 + t496 + (t125 * t484 - t238 + (t482 * t88 - t484 * t535 + t485 * t89) * qJD(2) + t728) * t484 + (-t484 * (t482 * t58 + t485 * t59) + t485 * t15 + t482 * t16 + (-t242 * t484 + t481 * t535) * qJD(2) + ((-t180 * t484 + t88) * t485 + (t181 * t484 + t727 - t89) * t482) * qJD(1)) * t481; t487 + t685 * t484 + m(6) * (t120 * t137 + t121 * t136 + t222 * t49 + t223 * t48) + m(5) * (t116 * t235 + t117 * t234 + t129 * t237 + t130 * t236); t488 + m(6) * (t106 * t31 + t118 * t136 + t119 * t137 + t124 * t30 + t217 * t48 + t218 * t49) + m(5) * (t116 * t261 + t117 * t262 + t128 * t77 + t152 * t236 + t153 * t237 + t213 * t43); t489 + m(6) * (t107 * t31 + t122 * t49 + t123 * t48 + t124 * t27 + t136 * t33 + t137 * t32) + m(5) * (t116 * t175 + t117 * t174 + t135 * t77 + t213 * t34 + t236 * t66 + t237 * t65); t489 + (t124 * t31 + t136 * t49 + t137 * t48) * t742 + (t116 * t237 + t117 * t236 + t213 * t77) * t743; t490 - t104 * t484 + m(6) * (t109 * t223 + t110 * t222 + t120 * t233 + t121 * t232); t495 + m(6) * (t106 * t69 + t109 * t217 + t110 * t218 + t118 * t232 + t119 * t233 + t201 * t30); m(6) * (t107 * t69 + t109 * t123 + t110 * t122 + t201 * t27 + t232 * t33 + t233 * t32) + t491; m(6) * (t109 * t137 + t110 * t136 + t124 * t69 + t201 * t31 + t232 * t49 + t233 * t48) + t491; (t109 * t233 + t110 * t232 + t201 * t69) * t742 + t491;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
