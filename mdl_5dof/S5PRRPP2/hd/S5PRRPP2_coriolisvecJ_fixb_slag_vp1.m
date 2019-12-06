% Calculate vector of centrifugal and Coriolis load on the joints for
% S5PRRPP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,theta1,theta4]';
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
% tauc [5x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:10
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5PRRPP2_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPP2_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPP2_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRPP2_coriolisvecJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPP2_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRPP2_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRRPP2_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:08:43
% EndTime: 2019-12-05 16:10:04
% DurationCPUTime: 64.48s
% Computational Cost: add. (19459->816), mult. (34332->1151), div. (0->0), fcn. (32980->8), ass. (0->373)
t778 = Icges(5,4) - Icges(6,5);
t779 = Icges(5,1) + Icges(6,1);
t748 = Icges(6,4) + Icges(5,5);
t747 = Icges(5,6) - Icges(6,6);
t791 = Icges(6,2) + Icges(5,3);
t794 = Icges(4,3) + t791;
t719 = Icges(5,2) + Icges(6,3);
t380 = qJ(3) + pkin(8);
t375 = sin(t380);
t793 = t778 * t375;
t376 = cos(t380);
t382 = cos(pkin(7));
t381 = sin(pkin(7));
t387 = cos(qJ(2));
t609 = t381 * t387;
t290 = -t382 * t375 + t376 * t609;
t790 = t778 * t290;
t606 = t382 * t387;
t292 = t375 * t381 + t376 * t606;
t789 = t778 * t292;
t289 = t375 * t609 + t376 * t382;
t788 = t778 * t289;
t291 = t375 * t606 - t381 * t376;
t787 = t778 * t291;
t786 = t747 * t375 - t748 * t376;
t785 = t779 * t376 - t793;
t385 = sin(qJ(2));
t610 = t381 * t385;
t740 = t719 * t289 - t747 * t610 - t790;
t607 = t382 * t385;
t739 = t719 * t291 - t747 * t607 - t789;
t763 = t779 * t290 + t748 * t610 - t788;
t762 = t779 * t292 + t748 * t607 - t787;
t632 = Icges(5,4) * t376;
t486 = -Icges(5,2) * t375 + t632;
t784 = t385 * t486 - t747 * t387;
t384 = sin(qJ(3));
t386 = cos(qJ(3));
t483 = Icges(4,5) * t386 - Icges(4,6) * t384;
t300 = -Icges(4,3) * t387 + t385 * t483;
t771 = t786 * t385 + t791 * t387;
t782 = t300 - t771;
t605 = t384 * t387;
t335 = -t381 * t605 - t382 * t386;
t604 = t386 * t387;
t608 = t382 * t384;
t336 = t381 * t604 - t608;
t728 = Icges(4,5) * t336 + Icges(4,6) * t335 - t747 * t289 + t748 * t290 + t610 * t794;
t337 = t381 * t386 - t382 * t605;
t611 = t381 * t384;
t338 = t382 * t604 + t611;
t727 = Icges(4,5) * t338 + Icges(4,6) * t337 - t747 * t291 + t748 * t292 + t607 * t794;
t625 = Icges(6,5) * t376;
t361 = t385 * t625;
t612 = t375 * t385;
t759 = Icges(6,3) * t612 + t361 - t784;
t717 = t785 * t385 - t748 * t387;
t781 = (t483 - t786) * t387 + t794 * t385;
t780 = (-Icges(4,5) * t384 - Icges(4,6) * t386 - t748 * t375 - t747 * t376) * t385;
t638 = Icges(4,4) * t338;
t191 = Icges(4,2) * t337 + Icges(4,6) * t607 + t638;
t332 = Icges(4,4) * t337;
t193 = Icges(4,1) * t338 + Icges(4,5) * t607 + t332;
t734 = t191 * t335 + t193 * t336 + t739 * t289 + t762 * t290 + t727 * t610;
t639 = Icges(4,4) * t336;
t190 = Icges(4,2) * t335 + Icges(4,6) * t610 + t639;
t331 = Icges(4,4) * t335;
t192 = Icges(4,1) * t336 + Icges(4,5) * t610 + t331;
t733 = t190 * t337 + t192 * t338 + t740 * t291 + t763 * t292 + t728 * t607;
t481 = Icges(6,3) * t375 + t625;
t705 = (-t481 + t486) * t387 + t747 * t385;
t704 = -t748 * t385 - t785 * t387;
t777 = (-t719 * t376 - t793) * t385;
t735 = t190 * t335 + t192 * t336 + t740 * t289 + t763 * t290 + t728 * t610;
t692 = t191 * t337 + t193 * t338 + t739 * t291 + t762 * t292 + t727 * t607;
t636 = Icges(4,4) * t386;
t487 = -Icges(4,2) * t384 + t636;
t302 = -Icges(4,6) * t387 + t385 * t487;
t637 = Icges(4,4) * t384;
t492 = Icges(4,1) * t386 - t637;
t304 = -Icges(4,5) * t387 + t385 * t492;
t776 = t759 * t289 + t717 * t290 + t302 * t335 + t304 * t336 + t782 * t610;
t775 = t759 * t291 + t717 * t292 + t302 * t337 + t304 * t338 + t782 * t607;
t571 = qJD(3) * t387;
t536 = t381 * t571;
t574 = qJD(2) * t385;
t540 = t381 * t574;
t217 = -t376 * t536 + (qJD(3) * t382 + t540) * t375;
t218 = -qJD(3) * t289 - t376 * t540;
t242 = -qJD(3) * t336 + t384 * t540;
t539 = t386 * t574;
t243 = qJD(3) * t335 - t381 * t539;
t573 = qJD(2) * t387;
t543 = t381 * t573;
t774 = Icges(4,5) * t243 + Icges(4,6) * t242 + t747 * t217 + t748 * t218 + t543 * t794;
t542 = t382 * t574;
t219 = -qJD(3) * t292 + t375 * t542;
t220 = -qJD(3) * t291 - t376 * t542;
t244 = -qJD(3) * t338 + t384 * t542;
t245 = qJD(3) * t337 - t382 * t539;
t541 = t382 * t573;
t773 = Icges(4,5) * t245 + Icges(4,6) * t244 + t747 * t219 + t748 * t220 + t541 * t794;
t772 = t781 * qJD(2) + t780 * qJD(3);
t754 = -t191 * t384 + t193 * t386 + t739 * t375 + t762 * t376;
t753 = -t190 * t384 + t192 * t386 + t740 * t375 + t763 * t376;
t770 = t734 * t382;
t769 = t733 * t381;
t378 = t381 ^ 2;
t379 = t382 ^ 2;
t681 = t378 + t379;
t768 = m(3) * qJD(2) ^ 2 * (rSges(3,1) * t385 + rSges(3,2) * t387) * t681;
t767 = -t719 * t217 - t778 * t218 - t747 * t543;
t766 = -t719 * t219 - t778 * t220 - t747 * t541;
t765 = t778 * t217 + t779 * t218 + t748 * t543;
t764 = t778 * t219 + t779 * t220 + t748 * t541;
t761 = t705 * qJD(2) + t777 * qJD(3);
t311 = (-Icges(5,1) * t375 - t632) * t385;
t572 = qJD(3) * t385;
t760 = -(-Icges(6,1) * t375 + t625) * t572 - qJD(3) * t311 + t704 * qJD(2);
t758 = t759 * t375 + t717 * t376;
t757 = -t772 * t385 - t573 * t782;
t756 = t773 * t385 + t727 * t573;
t755 = t774 * t385 + t728 * t573;
t752 = t692 * t382 + t769;
t751 = t735 * t381 + t770;
t750 = t775 * t385;
t749 = t776 * t385;
t746 = t771 * t387;
t537 = t381 * t572;
t575 = qJD(2) * t382;
t352 = t537 - t575;
t535 = t382 * t572;
t576 = qJD(2) * t381;
t351 = t535 + t576;
t743 = t351 * t381;
t745 = -t352 * t382 + t743;
t732 = t753 * t385 - t728 * t387;
t731 = t754 * t385 - t727 * t387;
t467 = -t302 * t384 + t304 * t386;
t744 = -t467 - t758;
t667 = t351 / 0.2e1;
t665 = t352 / 0.2e1;
t712 = t385 * t758 + t746;
t615 = t300 * t387;
t111 = t385 * t467 - t615;
t741 = t111 + t712;
t736 = -t385 * t481 + t784;
t118 = Icges(4,4) * t243 + Icges(4,2) * t242 + Icges(4,6) * t543;
t120 = Icges(4,1) * t243 + Icges(4,4) * t242 + Icges(4,5) * t543;
t698 = t118 * t335 + t120 * t336 + t190 * t242 + t192 * t243 - t217 * t740 + t218 * t763 + t289 * t767 + t290 * t765 + t381 * t755;
t119 = Icges(4,4) * t245 + Icges(4,2) * t244 + Icges(4,6) * t541;
t121 = Icges(4,1) * t245 + Icges(4,4) * t244 + Icges(4,5) * t541;
t697 = t119 * t335 + t121 * t336 + t191 * t242 + t193 * t243 - t217 * t739 + t218 * t762 + t289 * t766 + t290 * t764 + t381 * t756;
t696 = t118 * t337 + t120 * t338 + t190 * t244 + t192 * t245 - t219 * t740 + t220 * t763 + t291 * t767 + t292 * t765 + t382 * t755;
t695 = t119 * t337 + t121 * t338 + t191 * t244 + t193 * t245 - t219 * t739 + t220 * t762 + t291 * t766 + t292 * t764 + t382 * t756;
t303 = Icges(4,6) * t385 + t387 * t487;
t348 = (-Icges(4,2) * t386 - t637) * t385;
t200 = qJD(2) * t303 + qJD(3) * t348;
t305 = Icges(4,5) * t385 + t387 * t492;
t349 = (-Icges(4,1) * t384 - t636) * t385;
t201 = qJD(2) * t305 + qJD(3) * t349;
t726 = (-t200 * t337 - t201 * t338 + t219 * t759 - t220 * t717 - t244 * t302 - t245 * t304 + t291 * t761 + t292 * t760 + t382 * t757) * t387 + (t387 * t752 + t750) * qJD(2);
t725 = (-t200 * t335 - t201 * t336 + t217 * t759 - t218 * t717 - t242 * t302 - t243 * t304 + t289 * t761 + t290 * t760 + t381 * t757) * t387 + (t387 * t751 + t749) * qJD(2);
t724 = t744 + t781;
t723 = (-t381 * t782 - t753) * t352 + (-t382 * t782 - t754) * t351;
t722 = t696 * t665 + t695 * t667 + t726 * qJD(3) / 0.2e1;
t716 = (t351 * t734 + t352 * t735 - t571 * t776) * t381 + (t351 * t692 + t352 * t733 - t571 * t775) * t382;
t714 = t780 * t571 + (-Icges(4,5) * t335 + Icges(4,6) * t336 + t289 * t748 + t747 * t290) * t352 + (-Icges(4,5) * t337 + Icges(4,6) * t338 + t291 * t748 + t747 * t292) * t351;
t689 = t381 * t732 + t382 * t731;
t713 = rSges(6,1) + pkin(4);
t711 = rSges(6,3) + qJ(5);
t709 = t736 * t381;
t708 = t736 * t382;
t707 = t717 * t381;
t706 = t717 * t382;
t507 = pkin(4) * t376 + qJ(5) * t375;
t508 = rSges(6,1) * t376 + rSges(6,3) * t375;
t703 = rSges(6,2) * t387 + (-t507 - t508) * t385;
t142 = rSges(5,1) * t290 - rSges(5,2) * t289 + rSges(5,3) * t610;
t144 = rSges(5,1) * t292 - rSges(5,2) * t291 + rSges(5,3) * t607;
t661 = pkin(3) * t386;
t259 = qJ(4) * t385 + t387 * t661;
t195 = pkin(3) * t611 + t259 * t382;
t597 = -t144 - t195;
t702 = t142 * t382 + t381 * t597;
t640 = Icges(3,4) * t387;
t641 = Icges(3,4) * t385;
t701 = -(-Icges(3,2) * t387 - t641) * t574 + (-Icges(3,1) * t385 - t640) * t573;
t700 = qJD(3) * t725 + t351 * t697 + t352 * t698;
t678 = (qJD(2) * t753 - t774) * t387 + (-t118 * t384 + t120 * t386 + t765 * t376 + t767 * t375 + (-t190 * t386 - t192 * t384 - t375 * t763 + t376 * t740) * qJD(3) + t728 * qJD(2)) * t385;
t677 = (qJD(2) * t754 - t773) * t387 + (-t119 * t384 + t121 * t386 + t764 * t376 + t766 * t375 + (-t191 * t386 - t193 * t384 - t375 * t762 + t376 * t739) * qJD(3) + t727 * qJD(2)) * t385;
t565 = t111 * qJD(3);
t694 = t351 * t731 + t352 * t732 - t387 * t565 - t571 * t712;
t691 = (-t571 * t724 + t723) * t385;
t690 = t351 * t727 + t352 * t728;
t688 = -t615 + t746;
t258 = -qJ(4) * t387 + t385 * t661;
t214 = t258 * t382;
t509 = rSges(5,1) * t376 - rSges(5,2) * t375;
t273 = -rSges(5,3) * t387 + t385 * t509;
t682 = t273 * t382 + t214;
t588 = -t258 - t273;
t680 = (t717 + t777) * t571 + (t290 * t719 - t763 + t788) * t352 + (t292 * t719 - t762 + t787) * t351;
t679 = (Icges(6,1) * t612 - t311 - t361 - t759) * t571 + (-t289 * t779 + t740 - t790) * t352 + (-t291 * t779 + t739 - t789) * t351;
t676 = t741 * t574 + (t772 * t387 + (t200 * t384 - t201 * t386 + t760 * t376 + t761 * t375 + (t302 * t386 + t304 * t384 + t375 * t717 - t376 * t759) * qJD(3)) * t385 + (-t385 * t782 + t387 * t744 + t689) * qJD(2)) * t387;
t675 = t714 * t385;
t674 = t375 * t573 + t376 * t572;
t510 = rSges(4,1) * t386 - rSges(4,2) * t384;
t317 = -rSges(4,3) * t387 + t385 * t510;
t403 = t351 * (-Icges(4,2) * t338 + t193 + t332) + t352 * (-Icges(4,2) * t336 + t192 + t331) - t571 * (t304 + t348);
t668 = -t351 / 0.2e1;
t666 = -t352 / 0.2e1;
t656 = pkin(3) * qJD(3);
t569 = qJD(5) * t289;
t643 = rSges(6,2) * t543 - t217 * t711 + t218 * t713 + t569;
t568 = qJD(5) * t291;
t642 = rSges(6,2) * t541 - t219 * t711 + t220 * t713 + t568;
t363 = pkin(2) * t387 + pkin(6) * t385;
t356 = qJD(2) * t363;
t614 = t356 * t382;
t108 = rSges(5,1) * t220 + rSges(5,2) * t219 + rSges(5,3) * t541;
t377 = qJD(4) * t385;
t370 = t382 * t377;
t561 = t384 * t656;
t393 = -qJD(2) * t258 - t387 * t561;
t560 = t386 * t656;
t125 = t381 * t560 + t382 * t393 + t370;
t603 = -t108 - t125;
t368 = t381 * t377;
t124 = t381 * t393 - t382 * t560 + t368;
t194 = -pkin(3) * t608 + t259 * t381;
t147 = t194 * t541;
t602 = t124 * t607 + t147;
t274 = rSges(6,2) * t385 + t387 * t508;
t313 = (-rSges(6,1) * t375 + rSges(6,3) * t376) * t385;
t566 = qJD(5) * t385;
t358 = t375 * t566;
t601 = t358 + t674 * qJ(5) + (-t375 * t572 + t376 * t573) * pkin(4) + qJD(2) * t274 + qJD(3) * t313;
t600 = rSges(6,2) * t610 + t289 * t711 + t290 * t713;
t599 = -t142 - t194;
t598 = rSges(6,2) * t607 + t291 * t711 + t292 * t713;
t275 = rSges(5,3) * t385 + t387 * t509;
t314 = (-rSges(5,1) * t375 - rSges(5,2) * t376) * t385;
t159 = qJD(2) * t275 + qJD(3) * t314;
t570 = qJD(4) * t387;
t198 = qJD(2) * t259 - t385 * t561 - t570;
t596 = -t159 - t198;
t595 = t387 * t194 + t258 * t610;
t594 = -t289 * t713 + t290 * t711;
t334 = t337 * pkin(3);
t593 = rSges(5,1) * t291 + rSges(5,2) * t292 - t334;
t318 = rSges(4,3) * t385 + t387 * t510;
t350 = (-rSges(4,1) * t384 - rSges(4,2) * t386) * t385;
t204 = qJD(2) * t318 + qJD(3) * t350;
t590 = -t204 - t356;
t589 = t703 * t381;
t586 = t507 * t387 + t274;
t362 = pkin(2) * t385 - pkin(6) * t387;
t448 = qJD(2) * t362;
t329 = t381 * t448;
t330 = t382 * t448;
t585 = -t329 * t576 - t330 * t575;
t584 = -t381 * t329 - t382 * t330;
t581 = t681 * t448;
t579 = -(-pkin(4) * t375 + qJ(5) * t376) * t385 - t313;
t578 = -t317 - t362;
t345 = t363 * t381;
t346 = t363 * t382;
t577 = t381 * t345 + t382 * t346;
t567 = qJD(5) * t375;
t564 = qJD(2) * qJD(3);
t563 = qJD(2) * qJD(4);
t562 = pkin(3) * t384 * t385;
t559 = -t125 - t642;
t238 = t258 * t543;
t556 = t387 * t124 + t198 * t610 + t238;
t555 = -t198 - t601;
t554 = -t194 - t600;
t553 = -t195 - t598;
t552 = -t356 + t596;
t551 = t291 * t713 - t292 * t711 - t334;
t550 = -t382 * t703 + t214;
t549 = -t258 + t703;
t548 = -t362 + t588;
t547 = t362 * t576;
t546 = t362 * t575;
t545 = t363 * t576;
t544 = t363 * t575;
t161 = t195 * t572;
t162 = t194 * t571;
t534 = t376 * t566;
t531 = t345 * t576 + t346 * t575 + qJD(1);
t530 = t387 * t564;
t529 = t387 * t563;
t525 = -t571 / 0.2e1;
t524 = t571 / 0.2e1;
t523 = t564 / 0.2e1;
t522 = qJD(3) * t238 + t124 * t571 + t352 * t198 + t382 * t529;
t521 = t381 * t124 + t382 * t125 + t584;
t520 = -t356 + t555;
t519 = t381 * t194 + t382 * t195 + t577;
t518 = -t362 + t549;
t513 = t385 * t523;
t512 = t387 * t523;
t511 = t368 - t547;
t106 = rSges(5,1) * t218 + rSges(5,2) * t217 + rSges(5,3) * t543;
t496 = qJD(3) * t147 + t351 * t124 + t385 * t563 + t585;
t10 = t106 * t351 + t603 * t352 + t530 * t702 + t496;
t434 = t351 * t194 + t531 - t570;
t50 = t142 * t351 + t352 * t597 + t434;
t506 = t10 * t142 + t50 * t106;
t213 = t258 * t381;
t495 = t382 * t162 - t351 * t213 + t377 - t581;
t494 = Icges(3,1) * t387 - t641;
t489 = -Icges(3,2) * t385 + t640;
t484 = -Icges(3,5) * t385 - Icges(3,6) * t387;
t196 = rSges(4,1) * t336 + rSges(4,2) * t335 + rSges(4,3) * t610;
t197 = rSges(4,1) * t338 + rSges(4,2) * t337 + rSges(4,3) * t607;
t471 = t196 * t382 - t197 * t381;
t465 = t381 * t512;
t464 = t382 * t512;
t463 = qJD(2) * t161 - t356 * t576 + t381 * t529;
t462 = t381 * t570 + t161 - t545;
t64 = t351 * t588 + t571 * t597 + t511;
t438 = t352 * t258 + t162 + t370 - t546;
t65 = t142 * t571 + t273 * t352 + t438;
t441 = t64 * t144 + t599 * t65;
t74 = t196 * t351 - t197 * t352 + t531;
t439 = t74 * t471;
t435 = qJD(2) * t484;
t39 = t351 * t600 + t352 * t553 + t358 + t434;
t7 = qJD(3) * t534 + t643 * t351 + t559 * t352 + (t567 + (t381 * t553 + t382 * t600) * qJD(3)) * t573 + t496;
t433 = t39 * t643 + t600 * t7;
t431 = -t213 * t571 + t258 * t536 + t352 * t259 + t382 * t570 - t544;
t48 = t351 * t549 + t553 * t571 + t511 + t569;
t49 = -t352 * t703 + t571 * t600 + t438 + t568;
t426 = t48 * t598 + t49 * t554;
t410 = (-(-Icges(3,6) * t382 + t381 * t489) * t387 - (-Icges(3,5) * t382 + t381 * t494) * t385) * qJD(2) + t701 * t381;
t409 = (-(Icges(3,6) * t381 + t382 * t489) * t387 - (Icges(3,5) * t381 + t382 * t494) * t385) * qJD(2) + t701 * t382;
t404 = (Icges(4,1) * t337 - t191 - t638) * t351 + (Icges(4,1) * t335 - t190 - t639) * t352 - (-t302 + t349) * t571;
t392 = (t39 * t600 + t48 * t549) * t382 + (t39 * t553 - t49 * t703) * t381;
t340 = t484 * t382;
t339 = t484 * t381;
t333 = t335 * pkin(3);
t322 = t382 * t435;
t321 = t381 * t435;
t293 = t351 * t562;
t278 = t333 * t571;
t255 = (-t352 + t537) * t387;
t254 = (t351 - t535) * t387;
t251 = t304 * t382;
t250 = t304 * t381;
t249 = t302 * t382;
t248 = t302 * t381;
t240 = t351 * t333;
t216 = rSges(4,1) * t337 - rSges(4,2) * t338;
t215 = rSges(4,1) * t335 - rSges(4,2) * t336;
t203 = t745 * t385;
t182 = -rSges(5,1) * t289 - rSges(5,2) * t290;
t163 = t195 * t574;
t156 = t194 * t607;
t123 = rSges(4,1) * t245 + rSges(4,2) * t244 + rSges(4,3) * t541;
t122 = rSges(4,1) * t243 + rSges(4,2) * t242 + rSges(4,3) * t543;
t90 = t196 * t571 + t317 * t352 - t546;
t89 = -t197 * t571 - t317 * t351 - t547;
t55 = t122 * t571 + t204 * t352 + (-t614 + (-t196 * t385 + t317 * t609) * qJD(3)) * qJD(2);
t54 = -t123 * t571 - t204 * t351 + (-t356 * t381 + (t197 * t385 - t317 * t606) * qJD(3)) * qJD(2);
t47 = t122 * t351 - t123 * t352 + t471 * t530 + t585;
t30 = t106 * t571 + t159 * t352 + (-t614 + (t273 * t609 + t385 * t599) * qJD(3)) * qJD(2) + t522;
t29 = t596 * t351 + (t144 * t574 + (t575 * t588 + t603) * t387) * qJD(3) + t463;
t9 = -t356 * t575 - qJD(5) * t219 + t601 * t352 + (t643 * t387 + (t385 * t554 - t609 * t703) * qJD(2)) * qJD(3) + t522;
t8 = -qJD(5) * t217 + t555 * t351 + (t598 * t574 + (t549 * t575 + t559) * t387) * qJD(3) + t463;
t1 = [m(4) * t47 + m(5) * t10 + m(6) * t7 - t768; -(t340 * qJD(2) * t378 - t339 * t381 * t575) * t576 / 0.2e1 - (t381 * (-t322 * t382 + t381 * t409) - (-t321 * t382 + t381 * t410) * t382) * t575 + ((t322 * t381 + t382 * t409) * t381 - t382 * (t321 * t381 + t382 * t410)) * t576 + (t339 * qJD(2) * t379 - t340 * t382 * t576) * t575 / 0.2e1 + (-t49 * (-t358 * t382 + t431) - t48 * (-t358 * t381 + t462) - t49 * t586 * t352 - t48 * (-t259 - t586) * t351 - (t426 * t385 + (t48 * t550 + t49 * t589 + t392) * t387) * qJD(3) + t7 * t519 + (t49 * t520 + t518 * t9 + t598 * t7) * t382 + (t48 * t520 + t518 * t8 + t433) * t381 + (-t589 * t351 - t550 * t352 + t642 * t382 - t387 * t567 - t495 + t521) * t39) * m(6) + (-t65 * (t275 * t352 + t431) - t64 * (t462 + (-t259 - t275) * t351) - t50 * (-t273 * t743 + t352 * t682 + t495) - (t441 * t385 + (t64 * (t382 * t588 + t682) + t50 * t702) * t387) * qJD(3) + t10 * t519 + t50 * t521 + (t10 * t144 + t50 * t108 + t30 * t548 + t552 * t65) * t382 + (t29 * t548 + t552 * t64 + t506) * t381) * m(5) + (t47 * t577 + (t47 * t197 + t55 * t578 + t590 * t90) * t382 + (t47 * t196 + t54 * t578 + t590 * t89) * t381 - t90 * (t318 * t352 - t544) - t89 * (-t318 * t351 - t545) - ((-t196 * t90 + t197 * t89) * t385 + t439 * t387) * qJD(3) + (t122 * t381 + t123 * t382 + t317 * t745 + t581 + t584) * t74) * m(4) + (((t291 * t705 + t292 * t704 - t303 * t337 - t305 * t338 + t769) * t387 + t750) * qJD(3) + (((t688 + t692) * qJD(3) + t690) * t387 + t691) * t382 + (-t248 * t337 - t250 * t338 + t291 * t709 - t292 * t707) * t352 + (-t249 * t337 - t251 * t338 + t291 * t708 - t292 * t706) * t351) * t668 + (t381 * t695 - t382 * t696) * t667 + (((t289 * t705 + t290 * t704 - t303 * t335 - t305 * t336 + t770) * t387 + t749) * qJD(3) + (((t688 + t735) * qJD(3) + t690) * t387 + t691) * t381 + (-t248 * t335 - t250 * t336 + t289 * t709 - t290 * t707) * t352 + (-t249 * t335 - t251 * t336 + t289 * t708 - t290 * t706) * t351) * t666 + (t381 * t697 - t382 * t698) * t665 + t381 * t722 - t700 * t382 / 0.2e1 - t694 * t572 / 0.2e1 + ((t565 + t712 * qJD(3) + (t248 * t384 - t250 * t386 + t375 * t709 - t376 * t707 + t728) * t352 + (t249 * t384 - t251 * t386 + t375 * t708 - t376 * t706 + t727) * t351) * t385 + ((t724 * t387 + (t303 * t384 - t305 * t386 + t375 * t705 + t376 * t704 - t782) * t385 + t689) * qJD(3) - t723) * t387) * t524 + (t381 * t731 - t382 * t732) * t513 + (t381 * t734 - t382 * t735) * t465 + (t692 * t381 - t382 * t733) * t464 + (t381 * t677 - t382 * t678 + t716) * t525 + (-t681 + 0.1e1) * (rSges(3,1) * t387 - rSges(3,2) * t385) * t768; (-t49 * (qJD(5) * t292 + t278) - t48 * (qJD(5) * t290 + t293) - t39 * (t240 + t534) - (t39 * t594 + t48 * t579) * t351 - (t48 * t551 + t49 * t594) * t571 - (t49 * (-t562 - t579) + t39 * t551) * t352 + t9 * t595 + t49 * t556 + t48 * t163 + t7 * t156 + t39 * t602 + (qJD(2) * t392 + t48 * t559 + t49 * t643 + t553 * t8 + t600 * t9) * t387 + (t426 * qJD(2) + (t48 * t555 + t549 * t8 + t433) * t382 + (t39 * t559 + t49 * t601 + t553 * t7 - t703 * t9) * t381) * t385) * m(6) + (t30 * t595 + t65 * t556 + t64 * t163 + t10 * t156 + t50 * t602 + (t30 * t142 + t65 * t106 + t29 * t597 + t64 * t603 + ((t50 * t142 + t588 * t64) * t382 + (t65 * t273 + t50 * t597) * t381) * qJD(2)) * t387 + (t441 * qJD(2) + (t29 * t588 + t596 * t64 + t506) * t382 + (t10 * t597 + t65 * t159 + t30 * t273 + t50 * t603) * t381) * t385 - t65 * (t182 * t571 + t278) - t64 * (-t314 * t351 + t571 * t593 + t293) - t50 * (t182 * t351 + t240) - (t65 * (t314 - t562) + t50 * t593) * t352) * m(5) + (-t90 * (t215 * t571 + t350 * t352) - t89 * (-t216 * t571 - t350 * t351) - t74 * (t215 * t351 - t216 * t352) + (t90 * t122 - t89 * t123 + t55 * t196 - t54 * t197 + (t439 + (t381 * t90 - t382 * t89) * t317) * qJD(2)) * t387 + (t90 * (-qJD(2) * t196 + t204 * t381) + t89 * (qJD(2) * t197 - t204 * t382) + t47 * t471 + t74 * (t122 * t382 - t123 * t381) + (t381 * t55 - t382 * t54) * t317) * t385) * m(4) + (t291 * t680 + t292 * t679 + t337 * t403 + t338 * t404 - t382 * t675) * t668 + ((t381 * t696 + t382 * t695) * t385 + t726) * t667 + (t289 * t680 + t290 * t679 + t335 * t403 + t336 * t404 - t381 * t675) * t666 + ((t381 * t698 + t382 * t697) * t385 + t725) * t665 - (qJD(3) * t676 + t351 * t677 + t352 * t678) * t387 / 0.2e1 + t700 * t610 / 0.2e1 + t607 * t722 + t694 * t574 / 0.2e1 + ((t381 * t678 + t382 * t677) * t385 + t676) * t525 + (t714 * t387 + (t375 * t680 + t376 * t679 - t384 * t403 + t404 * t386) * t385) * t524 + (t689 * t385 - t387 * t741) * t513 + (t385 * t751 - t387 * t776) * t465 + (t385 * t752 - t387 * t775) * t464 + t716 * t573 / 0.2e1; m(5) * (-t10 * t387 + t29 * t610 + t30 * t607) + m(6) * (-t387 * t7 + t607 * t9 + t610 * t8) - m(5) * (t203 * t50 + t254 * t64 + t255 * t65) - m(6) * (t203 * t39 + t254 * t48 + t255 * t49) + 0.2e1 * (m(5) * (t385 * t50 + t606 * t65 + t609 * t64) / 0.2e1 + m(6) * (t385 * t39 + t48 * t609 + t49 * t606) / 0.2e1) * qJD(2); (t7 * t612 + t289 * t8 + t291 * t9 + (-t289 * t571 - t352 * t612 - t219) * t49 + (t291 * t571 + t351 * t612 - t217) * t48 + (-t289 * t351 + t291 * t352 + t674) * t39) * m(6);];
tauc = t1(:);
