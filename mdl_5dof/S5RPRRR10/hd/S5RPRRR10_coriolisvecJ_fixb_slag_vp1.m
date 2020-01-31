% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RPRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
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
% Datum: 2019-12-31 19:11
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RPRRR10_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR10_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR10_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR10_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR10_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR10_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRR10_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:09:44
% EndTime: 2019-12-31 19:10:36
% DurationCPUTime: 40.19s
% Computational Cost: add. (37177->1181), mult. (42358->1620), div. (0->0), fcn. (40177->10), ass. (0->552)
t455 = pkin(9) + qJ(3);
t439 = cos(t455);
t463 = cos(qJ(4));
t464 = cos(qJ(1));
t683 = t463 * t464;
t461 = sin(qJ(4));
t462 = sin(qJ(1));
t685 = t461 * t462;
t361 = t439 * t685 + t683;
t681 = t464 * t461;
t684 = t462 * t463;
t362 = t439 * t684 - t681;
t438 = sin(t455);
t693 = t438 * t462;
t204 = Icges(5,5) * t362 - Icges(5,6) * t361 + Icges(5,3) * t693;
t345 = Icges(5,4) * t362;
t207 = -Icges(5,2) * t361 + Icges(5,6) * t693 + t345;
t344 = Icges(5,4) * t361;
t211 = -Icges(5,1) * t362 - Icges(5,5) * t693 + t344;
t813 = t207 * t461 + t211 * t463;
t84 = -t204 * t439 - t438 * t813;
t457 = qJ(4) + qJ(5);
t444 = cos(t457);
t686 = t444 * t464;
t443 = sin(t457);
t688 = t443 * t462;
t325 = t439 * t688 + t686;
t682 = t464 * t443;
t687 = t444 * t462;
t326 = t439 * t687 - t682;
t167 = Icges(6,5) * t326 - Icges(6,6) * t325 + Icges(6,3) * t693;
t318 = Icges(6,4) * t326;
t170 = -Icges(6,2) * t325 + Icges(6,6) * t693 + t318;
t317 = Icges(6,4) * t325;
t174 = -Icges(6,1) * t326 - Icges(6,5) * t693 + t317;
t814 = t170 * t443 + t174 * t444;
t69 = -t167 * t439 - t438 * t814;
t440 = qJD(3) * t462;
t638 = qJD(4) * t438;
t373 = t464 * t638 + t440;
t636 = qJD(5) * t438;
t297 = t464 * t636 + t373;
t639 = qJD(3) * t464;
t374 = -t462 * t638 + t639;
t298 = -t462 * t636 + t374;
t65 = t167 * t693 - t170 * t325 - t174 * t326;
t327 = -t439 * t682 + t687;
t328 = t439 * t686 + t688;
t692 = t438 * t464;
t169 = Icges(6,5) * t328 + Icges(6,6) * t327 + Icges(6,3) * t692;
t717 = Icges(6,4) * t328;
t172 = Icges(6,2) * t327 + Icges(6,6) * t692 + t717;
t319 = Icges(6,4) * t327;
t175 = Icges(6,1) * t328 + Icges(6,5) * t692 + t319;
t66 = t169 * t693 - t325 * t172 + t326 * t175;
t456 = qJD(4) + qJD(5);
t585 = t439 * t456;
t791 = qJD(1) - t585;
t543 = Icges(6,5) * t444 - Icges(6,6) * t443;
t273 = -Icges(6,3) * t439 + t438 * t543;
t715 = Icges(6,4) * t444;
t545 = -Icges(6,2) * t443 + t715;
t275 = -Icges(6,6) * t439 + t438 * t545;
t716 = Icges(6,4) * t443;
t548 = Icges(6,1) * t444 - t716;
t277 = -Icges(6,5) * t439 + t438 * t548;
t99 = t273 * t693 - t275 * t325 + t277 * t326;
t35 = t297 * t66 - t298 * t65 + t791 * t99;
t100 = t273 * t692 + t275 * t327 + t277 * t328;
t67 = t167 * t692 + t327 * t170 - t174 * t328;
t68 = t169 * t692 + t327 * t172 + t328 * t175;
t36 = t100 * t791 + t297 * t68 - t298 * t67;
t544 = Icges(5,5) * t463 - Icges(5,6) * t461;
t286 = -Icges(5,3) * t439 + t438 * t544;
t718 = Icges(5,4) * t463;
t546 = -Icges(5,2) * t461 + t718;
t288 = -Icges(5,6) * t439 + t438 * t546;
t719 = Icges(5,4) * t461;
t549 = Icges(5,1) * t463 - t719;
t290 = -Icges(5,5) * t439 + t438 * t549;
t113 = t286 * t693 - t288 * t361 + t290 * t362;
t637 = qJD(4) * t439;
t415 = qJD(1) - t637;
t71 = t204 * t693 - t207 * t361 - t211 * t362;
t363 = -t439 * t681 + t684;
t364 = t439 * t683 + t685;
t206 = Icges(5,5) * t364 + Icges(5,6) * t363 + Icges(5,3) * t692;
t720 = Icges(5,4) * t364;
t209 = Icges(5,2) * t363 + Icges(5,6) * t692 + t720;
t346 = Icges(5,4) * t363;
t212 = Icges(5,1) * t364 + Icges(5,5) * t692 + t346;
t72 = t206 * t693 - t361 * t209 + t362 * t212;
t41 = t113 * t415 + t373 * t72 - t374 * t71;
t114 = t286 * t692 + t288 * t363 + t290 * t364;
t73 = t204 * t692 + t363 * t207 - t211 * t364;
t74 = t206 * t692 + t363 * t209 + t364 * t212;
t42 = t114 * t415 + t373 * t74 - t374 * t73;
t598 = t440 / 0.2e1;
t641 = qJD(1) * t464;
t601 = t641 / 0.2e1;
t806 = t438 * t601 + t439 * t598;
t596 = t639 / 0.2e1;
t642 = qJD(1) * t462;
t618 = t438 * t642;
t805 = t439 * t596 - t618 / 0.2e1;
t465 = -pkin(8) - pkin(7);
t752 = pkin(7) + t465;
t606 = t752 * t439;
t435 = pkin(4) * t463 + pkin(3);
t753 = pkin(3) - t435;
t266 = -t438 * t753 + t606;
t502 = t438 * t641 + t439 * t440;
t564 = rSges(6,1) * t326 - rSges(6,2) * t325;
t176 = rSges(6,3) * t693 + t564;
t690 = t439 * t462;
t384 = t435 * t690;
t630 = pkin(4) * t681;
t755 = t439 * pkin(3);
t799 = t438 * t752;
t193 = t630 - t384 + (t755 + t799) * t462;
t563 = rSges(6,1) * t444 - rSges(6,2) * t443;
t279 = -rSges(6,3) * t439 + t438 * t563;
t386 = pkin(3) * t438 - pkin(7) * t439;
t441 = qJD(2) * t462;
t571 = -t386 * t639 + t441;
t804 = -t176 * t791 + t193 * t415 - t266 * t374 - t279 * t298 + t571;
t567 = rSges(5,1) * t362 - rSges(5,2) * t361;
t213 = rSges(5,3) * t693 + t567;
t566 = rSges(5,1) * t463 - rSges(5,2) * t461;
t292 = -rSges(5,3) * t439 + t438 * t566;
t803 = -t213 * t415 - t292 * t374 + t571;
t802 = 0.2e1 * qJD(3);
t178 = t328 * rSges(6,1) + t327 * rSges(6,2) + rSges(6,3) * t692;
t689 = t439 * t464;
t417 = pkin(3) * t689;
t358 = pkin(7) * t692 + t417;
t425 = pkin(4) * t685;
t653 = t435 * t689 + t425;
t691 = t438 * t465;
t194 = -t464 * t691 - t358 + t653;
t387 = pkin(7) * t438 + t755;
t356 = t387 * t462;
t659 = t356 * t440 + t358 * t639;
t54 = t176 * t297 + t178 * t298 - t193 * t373 + t194 * t374 + t659;
t677 = t176 - t193;
t801 = t54 * t677;
t446 = t464 * qJ(2);
t402 = pkin(1) * t462 - t446;
t459 = cos(pkin(9));
t427 = pkin(2) * t459 + pkin(1);
t460 = -pkin(6) - qJ(2);
t432 = t464 * t460;
t650 = -t462 * t427 - t432;
t294 = t402 + t650;
t390 = qJD(1) * t402;
t796 = qJD(1) * t294 - t390;
t450 = t462 * rSges(4,3);
t306 = rSges(4,1) * t689 - rSges(4,2) * t692 + t450;
t410 = t464 * t427;
t588 = -t460 * t462 + t410;
t795 = t306 + t588;
t445 = t462 * qJ(2);
t404 = t464 * pkin(1) + t445;
t749 = rSges(3,2) * sin(pkin(9));
t751 = rSges(3,1) * t459;
t528 = t462 * rSges(3,3) + (-t749 + t751) * t464;
t794 = t404 + t528;
t426 = Icges(4,4) * t439;
t547 = -Icges(4,2) * t438 + t426;
t380 = Icges(4,1) * t438 + t426;
t790 = -qJD(1) * t356 + t796;
t707 = Icges(4,3) * t464;
t299 = Icges(4,5) * t690 - Icges(4,6) * t693 - t707;
t408 = Icges(4,4) * t693;
t714 = Icges(4,5) * t464;
t303 = Icges(4,1) * t690 - t408 - t714;
t710 = Icges(4,6) * t464;
t301 = Icges(4,4) * t690 - Icges(4,2) * t693 - t710;
t699 = t301 * t438;
t534 = -t303 * t439 + t699;
t120 = -t299 * t464 - t462 * t534;
t643 = qJD(1) * t439;
t583 = -qJD(4) + t643;
t613 = t438 * t639;
t789 = t462 * t583 + t613;
t586 = -t456 + t643;
t788 = t462 * t586 + t613;
t614 = t438 * t440;
t787 = t464 * t586 - t614;
t377 = Icges(4,5) * t439 - Icges(4,6) * t438;
t376 = Icges(4,5) * t438 + Icges(4,6) * t439;
t510 = qJD(3) * t376;
t721 = Icges(4,4) * t438;
t381 = Icges(4,1) * t439 - t721;
t304 = Icges(4,5) * t462 + t381 * t464;
t302 = Icges(4,6) * t462 + t464 * t547;
t698 = t302 * t438;
t533 = -t304 * t439 + t698;
t786 = -t464 * t510 + (-t377 * t462 + t533 + t707) * qJD(1);
t300 = Icges(4,3) * t462 + t377 * t464;
t645 = qJD(1) * t300;
t785 = qJD(1) * t534 - t462 * t510 + t645;
t378 = Icges(4,2) * t439 + t721;
t532 = t378 * t438 - t380 * t439;
t784 = qJD(1) * t532 + t377 * qJD(3);
t611 = t439 * t639;
t398 = pkin(7) * t611;
t744 = pkin(4) * qJD(4);
t626 = t463 * t744;
t619 = qJD(1) * t630 + t462 * t626 + t465 * t618;
t627 = t461 * t744;
t111 = -t398 + (pkin(7) * t642 + t639 * t753) * t438 + ((-qJD(3) * t465 - t627) * t464 + t753 * t642) * t439 + t619;
t267 = -t439 * t753 - t799;
t397 = pkin(3) * t614;
t584 = t439 * t627;
t694 = t438 * t435;
t112 = -t464 * t626 + t397 + (-t584 + (-t606 - t694) * qJD(3)) * t462 + (t267 * t464 + t425) * qJD(1);
t633 = qJD(1) * qJD(3);
t428 = t462 * t633;
t632 = qJD(3) * qJD(4);
t603 = t439 * t632;
t605 = qJD(1) * t638;
t281 = t462 * t603 + t464 * t605 + t428;
t191 = qJD(5) * t502 + t281;
t429 = t464 * t633;
t652 = t464 * t603 + t429;
t192 = qJD(5) * t611 - t456 * t618 + t652;
t282 = -t462 * t605 + t652;
t503 = -t439 * t642 - t613;
t234 = pkin(3) * t503 - pkin(7) * t618 + t398;
t235 = pkin(7) * t502 + qJD(1) * t417 - t397;
t496 = t234 * t639 + t235 * t440 + t356 * t429 - t358 * t428;
t530 = t464 * t791;
t142 = t443 * t788 + t444 * t530;
t143 = t443 * t530 - t444 * t788;
t625 = t143 * rSges(6,1) + t142 * rSges(6,2) + rSges(6,3) * t611;
t95 = -rSges(6,3) * t618 + t625;
t531 = t462 * t791;
t144 = -t443 * t787 + t444 * t531;
t145 = t443 * t531 + t444 * t787;
t565 = rSges(6,1) * t145 + rSges(6,2) * t144;
t96 = rSges(6,3) * t502 + t565;
t11 = t111 * t374 + t112 * t373 + t176 * t192 - t178 * t191 - t193 * t282 - t194 * t281 + t297 * t96 + t298 * t95 + t496;
t676 = t178 + t194;
t724 = t111 + t95;
t783 = -t11 * t676 - t54 * t724;
t782 = t462 * (-t378 * t464 + t304) - t464 * (-Icges(4,2) * t690 + t303 - t408);
t274 = Icges(6,3) * t438 + t439 * t543;
t536 = -t275 * t443 + t277 * t444;
t540 = -t172 * t443 + t175 * t444;
t781 = t297 * (-t273 * t464 - t540) - t298 * (-t273 * t462 + t814) + t791 * (t274 - t536);
t315 = (-Icges(6,2) * t444 - t716) * t438;
t780 = t297 * (-Icges(6,2) * t328 + t175 + t319) - t298 * (-Icges(6,2) * t326 - t174 - t317) + t791 * (t277 + t315);
t287 = Icges(5,3) * t438 + t439 * t544;
t535 = -t288 * t461 + t290 * t463;
t538 = -t209 * t461 + t212 * t463;
t779 = t373 * (-t286 * t464 - t538) - t374 * (-t286 * t462 + t813) + t415 * (t287 - t535);
t338 = (-Icges(5,2) * t463 - t719) * t438;
t778 = t373 * (-Icges(5,2) * t364 + t212 + t346) - t374 * (-Icges(5,2) * t362 - t211 - t344) + t415 * (t290 + t338);
t777 = t191 / 0.2e1;
t776 = t192 / 0.2e1;
t775 = t281 / 0.2e1;
t774 = t282 / 0.2e1;
t773 = -t297 / 0.2e1;
t772 = t297 / 0.2e1;
t771 = -t298 / 0.2e1;
t770 = t298 / 0.2e1;
t375 = t438 * t456;
t365 = qJD(3) * t375;
t769 = t365 / 0.2e1;
t768 = -t791 / 0.2e1;
t767 = t791 / 0.2e1;
t766 = -t373 / 0.2e1;
t765 = t373 / 0.2e1;
t764 = -t374 / 0.2e1;
t763 = t374 / 0.2e1;
t762 = -t415 / 0.2e1;
t761 = t415 / 0.2e1;
t760 = -t439 / 0.2e1;
t759 = t462 / 0.2e1;
t758 = -t464 / 0.2e1;
t757 = -rSges(5,3) - pkin(7);
t756 = pkin(4) * t461;
t754 = pkin(1) - t427;
t750 = rSges(4,1) * t439;
t748 = rSges(5,3) * t438;
t746 = rSges(6,3) * t438;
t90 = Icges(6,5) * t145 + Icges(6,6) * t144 + Icges(6,3) * t502;
t92 = Icges(6,4) * t145 + Icges(6,2) * t144 + Icges(6,6) * t502;
t94 = Icges(6,1) * t145 + Icges(6,4) * t144 + Icges(6,5) * t502;
t21 = (-qJD(3) * t814 - t90) * t439 + (qJD(3) * t167 + (-t170 * t456 + t94) * t444 + (t174 * t456 - t92) * t443) * t438;
t743 = t21 * t298;
t501 = t611 - t618;
t89 = Icges(6,5) * t143 + Icges(6,6) * t142 + Icges(6,3) * t501;
t91 = Icges(6,4) * t143 + Icges(6,2) * t142 + Icges(6,6) * t501;
t93 = Icges(6,1) * t143 + Icges(6,4) * t142 + Icges(6,5) * t501;
t22 = (qJD(3) * t540 - t89) * t439 + (qJD(3) * t169 + (-t172 * t456 + t93) * t444 + (-t175 * t456 - t91) * t443) * t438;
t742 = t22 * t297;
t186 = t415 * t684 + (-t464 * t583 + t614) * t461;
t640 = qJD(3) * t438;
t187 = t583 * t683 + (t461 * t415 - t463 * t640) * t462;
t104 = Icges(5,5) * t187 + Icges(5,6) * t186 + Icges(5,3) * t502;
t106 = Icges(5,4) * t187 + Icges(5,2) * t186 + Icges(5,6) * t502;
t108 = Icges(5,1) * t187 + Icges(5,4) * t186 + Icges(5,5) * t502;
t27 = (-qJD(3) * t813 - t104) * t439 + (qJD(3) * t204 - t106 * t461 + t108 * t463 + (-t207 * t463 + t211 * t461) * qJD(4)) * t438;
t741 = t27 * t374;
t529 = t415 * t464;
t184 = t461 * t789 + t463 * t529;
t185 = t461 * t529 - t463 * t789;
t103 = Icges(5,5) * t185 + Icges(5,6) * t184 + Icges(5,3) * t501;
t105 = Icges(5,4) * t185 + Icges(5,2) * t184 + Icges(5,6) * t501;
t107 = Icges(5,1) * t185 + Icges(5,4) * t184 + Icges(5,5) * t501;
t28 = (qJD(3) * t538 - t103) * t439 + (qJD(3) * t206 - t105 * t461 + t107 * t463 + (-t209 * t463 - t212 * t461) * qJD(4)) * t438;
t740 = t28 * t373;
t623 = t185 * rSges(5,1) + t184 * rSges(5,2) + rSges(5,3) * t611;
t109 = -rSges(5,3) * t618 + t623;
t293 = t439 * t566 + t748;
t349 = (-rSges(5,1) * t461 - rSges(5,2) * t463) * t438;
t190 = qJD(3) * t293 + qJD(4) * t349;
t215 = t364 * rSges(5,1) + t363 * rSges(5,2) + rSges(5,3) * t692;
t371 = qJD(3) * t387;
t516 = -t371 * t462 - t386 * t641;
t433 = qJ(2) * t641;
t634 = qJD(1) * qJD(2);
t646 = t433 + t441;
t656 = qJD(1) * (-pkin(1) * t642 + t646) + t462 * t634;
t620 = qJD(1) * (-t433 + (t462 * t754 - t432) * qJD(1)) + t656;
t582 = qJD(1) * t234 + t620;
t46 = t109 * t415 - t190 * t373 - t282 * t292 + (t215 * t638 + t516) * qJD(3) + t582;
t734 = t46 * t464;
t442 = qJD(2) * t464;
t505 = (t358 + t588) * qJD(1) - t386 * t440 - t442;
t80 = t215 * t415 - t292 * t373 + t505;
t733 = t462 * t80;
t568 = rSges(5,1) * t187 + rSges(5,2) * t186;
t110 = rSges(5,3) * t502 + t568;
t431 = t464 * t634;
t369 = qJD(1) * t404 - t442;
t422 = t460 * t642;
t668 = t422 - (-t464 * t754 - t445) * qJD(1) - t369;
t506 = t386 * t428 + t431 + (-t235 + t668) * qJD(1);
t697 = t371 * t464;
t47 = -t110 * t415 - t190 * t374 + t281 * t292 + (-t213 * t638 - t697) * qJD(3) + t506;
t732 = t47 * t462;
t62 = t178 * t791 + t194 * t415 - t266 * t373 - t279 * t297 + t505;
t731 = t62 * t194;
t730 = t69 * t191;
t70 = -t169 * t439 + t438 * t540;
t729 = t70 * t192;
t728 = t84 * t281;
t85 = -t206 * t439 + t438 * t538;
t727 = t85 * t282;
t726 = -rSges(6,3) + t465;
t115 = -t273 * t439 + t438 * t536;
t314 = (-Icges(6,5) * t443 - Icges(6,6) * t444) * t438;
t152 = qJD(3) * t274 + t314 * t456;
t276 = Icges(6,6) * t438 + t439 * t545;
t153 = qJD(3) * t276 + t315 * t456;
t278 = Icges(6,5) * t438 + t439 * t548;
t316 = (-Icges(6,1) * t443 - t715) * t438;
t154 = qJD(3) * t278 + t316 * t456;
t51 = (qJD(3) * t536 - t152) * t439 + (qJD(3) * t273 + (-t275 * t456 + t154) * t444 + (-t277 * t456 - t153) * t443) * t438;
t725 = t115 * t365 + t51 * t791;
t117 = -t286 * t439 + t438 * t535;
t335 = (-Icges(5,5) * t461 - Icges(5,6) * t463) * t438;
t181 = qJD(3) * t287 + qJD(4) * t335;
t289 = Icges(5,6) * t438 + t439 * t546;
t182 = qJD(3) * t289 + qJD(4) * t338;
t291 = Icges(5,5) * t438 + t439 * t549;
t341 = (-Icges(5,1) * t461 - t718) * t438;
t183 = qJD(3) * t291 + qJD(4) * t341;
t53 = (qJD(3) * t535 - t181) * t439 + (qJD(3) * t286 - t182 * t461 + t183 * t463 + (-t288 * t463 - t290 * t461) * qJD(4)) * t438;
t604 = t438 * t632;
t723 = t117 * t604 + t53 * t415;
t664 = t294 - t402;
t574 = (-t356 + t664) * qJD(1);
t61 = t574 + t804;
t704 = qJD(3) * t61;
t305 = rSges(4,1) * t690 - rSges(4,2) * t693 - t464 * rSges(4,3);
t382 = rSges(4,1) * t438 + rSges(4,2) * t439;
t615 = t382 * t639;
t572 = t441 - t615;
t124 = (-t305 + t664) * qJD(1) + t572;
t702 = t124 * t462;
t616 = t382 * t440;
t125 = qJD(1) * t795 - t442 - t616;
t351 = t382 * t464;
t701 = t125 * t351;
t696 = t376 * t462;
t695 = t376 * t464;
t280 = t439 * t563 + t746;
t320 = (-rSges(6,1) * t443 - rSges(6,2) * t444) * t438;
t158 = qJD(3) * t280 + t320 * t456;
t203 = qJD(3) * t267 - t438 * t627;
t680 = -t158 - t203;
t675 = -t190 - t371;
t672 = -t215 - t358;
t671 = t266 + t279;
t670 = -t462 * t299 - t303 * t689;
t669 = t462 * t300 + t304 * t689;
t665 = -t292 - t386;
t355 = t386 * t462;
t357 = t386 * t464;
t660 = -t355 * t440 - t357 * t639;
t657 = t462 * t356 + t464 * t358;
t655 = -t378 + t381;
t654 = t380 + t547;
t651 = rSges(4,2) * t618 + rSges(4,3) * t641;
t423 = t462 * t749;
t649 = rSges(3,3) * t641 + qJD(1) * t423;
t648 = t422 + t442;
t647 = t464 * rSges(3,3) + t423;
t644 = qJD(1) * t377;
t156 = -t462 * t532 - t695;
t635 = t156 * qJD(1);
t631 = t438 * t756;
t629 = t462 * t751;
t624 = -t371 + t680;
t622 = t464 * t234 + t462 * t235 + t356 * t641;
t621 = -t386 - t671;
t609 = t693 / 0.2e1;
t608 = t692 / 0.2e1;
t607 = -pkin(1) - t751;
t600 = t640 / 0.2e1;
t599 = -t440 / 0.2e1;
t225 = -rSges(6,1) * t325 - rSges(6,2) * t326;
t226 = rSges(6,1) * t327 - rSges(6,2) * t328;
t593 = t297 * t225 + t226 * t298;
t592 = t226 * t791 - t297 * t320;
t591 = -t225 * t791 - t298 * t320;
t269 = t304 * t690;
t590 = t300 * t464 - t269;
t589 = -t299 + t698;
t575 = qJD(4) * t600;
t573 = -qJD(1) * t357 - t387 * t440;
t569 = -rSges(4,2) * t438 + t750;
t562 = t462 * t66 - t464 * t65;
t561 = t462 * t65 + t464 * t66;
t560 = t462 * t68 - t464 * t67;
t559 = t462 * t67 + t464 * t68;
t558 = t462 * t70 - t464 * t69;
t557 = t462 * t69 + t464 * t70;
t556 = t462 * t72 - t464 * t71;
t555 = t462 * t71 + t464 * t72;
t554 = t462 * t74 - t464 * t73;
t553 = t462 * t73 + t464 * t74;
t552 = t462 * t85 - t464 * t84;
t551 = t462 * t84 + t464 * t85;
t542 = -t124 * t464 - t125 * t462;
t537 = t213 * t464 - t215 * t462;
t161 = t301 * t439 + t303 * t438;
t162 = t302 * t439 + t304 * t438;
t527 = -t435 * t439 - t427 - t746;
t350 = t382 * t462;
t515 = t61 * t266 - t54 * t676;
t514 = qJD(1) * t355 - t387 * t639;
t512 = qJD(3) * t380;
t511 = qJD(3) * t378;
t121 = -t302 * t693 - t590;
t509 = (-t120 * t464 + t121 * t462) * qJD(3);
t122 = -t301 * t692 - t670;
t123 = -t302 * t692 + t669;
t508 = (-t122 * t464 + t123 * t462) * qJD(3);
t163 = (t305 * t462 + t306 * t464) * qJD(3);
t507 = -t387 - t748;
t499 = -t204 * t374 + t206 * t373 + t286 * t415;
t498 = (-Icges(6,5) * t325 - Icges(6,6) * t326) * t298 - (Icges(6,5) * t327 - Icges(6,6) * t328) * t297 - t314 * t791;
t497 = (-Icges(5,5) * t361 - Icges(5,6) * t362) * t374 - (Icges(5,5) * t363 - Icges(5,6) * t364) * t373 - t335 * t415;
t495 = t301 * t464 - t302 * t462;
t494 = t438 * t498;
t493 = t438 * t497;
t484 = (-t438 * t654 + t439 * t655) * qJD(1);
t483 = (Icges(6,1) * t327 - t172 - t717) * t297 - (-Icges(6,1) * t325 - t170 - t318) * t298 + (-t275 + t316) * t791;
t481 = (Icges(5,1) * t363 - t209 - t720) * t373 - (-Icges(5,1) * t361 - t207 - t345) * t374 + (-t288 + t341) * t415;
t14 = t142 * t170 - t143 * t174 + t167 * t501 + t327 * t92 + t328 * t94 + t692 * t90;
t15 = t142 * t172 + t143 * t175 + t169 * t501 + t327 * t91 + t328 * t93 + t692 * t89;
t16 = t144 * t170 - t145 * t174 + t167 * t502 - t325 * t92 + t326 * t94 + t693 * t90;
t17 = t144 * t172 + t145 * t175 + t169 * t502 - t325 * t91 + t326 * t93 + t693 * t89;
t39 = t115 * t791 + t297 * t70 - t298 * t69;
t43 = t142 * t275 + t143 * t277 + t152 * t692 + t153 * t327 + t154 * t328 + t273 * t501;
t44 = t144 * t275 + t145 * t277 + t152 * t693 - t153 * t325 + t154 * t326 + t273 * t502;
t5 = t100 * t365 - t14 * t298 + t15 * t297 + t191 * t67 + t192 * t68 + t43 * t791;
t6 = -t16 * t298 + t17 * t297 + t191 * t65 + t192 * t66 + t365 * t99 + t44 * t791;
t477 = ((qJD(3) * t559 - t43) * t439 + (-qJD(1) * t560 + qJD(3) * t100 + t14 * t462 + t15 * t464) * t438) * t772 + (t327 * t780 + t483 * t328 - t464 * t494) * t773 + (-t325 * t780 + t326 * t483 - t462 * t494) * t770 + ((qJD(3) * t561 - t44) * t439 + (-qJD(1) * t562 + qJD(3) * t99 + t16 * t462 + t17 * t464) * t438) * t771 + (t498 * t439 + (-t443 * t780 + t444 * t483) * t438) * t768 + t6 * t609 + (t438 * t561 - t439 * t99) * t777 + (-t100 * t439 + t438 * t559) * t776 + t39 * t600 + t5 * t608 + (-t115 * t439 + t438 * t557) * t769 + ((qJD(3) * t557 - t51) * t439 + (-qJD(1) * t558 + qJD(3) * t115 + t21 * t462 + t22 * t464) * t438) * t767 + (t725 + t729 + t730 + t742 - t743) * t760 + t805 * t36 + t806 * t35;
t79 = t574 + t803;
t81 = t213 * t373 + t215 * t374 + t659;
t474 = t81 * t537 + (t462 * t79 - t464 * t80) * t292;
t198 = qJD(1) * t302 - t462 * t511;
t200 = qJD(1) * t304 - t462 * t512;
t473 = qJD(1) * t299 - qJD(3) * t161 - t198 * t438 + t200 * t439;
t197 = -t464 * t511 + (-t462 * t547 + t710) * qJD(1);
t199 = -t464 * t512 + (-t381 * t462 + t714) * qJD(1);
t472 = -qJD(3) * t162 - t197 * t438 + t199 * t439 + t645;
t367 = t547 * qJD(3);
t368 = t381 * qJD(3);
t471 = qJD(1) * t376 - t367 * t438 + t368 * t439 + (-t378 * t439 - t380 * t438) * qJD(3);
t19 = -t112 * t415 - t158 * t298 - t176 * t365 + t191 * t279 - t203 * t374 + t266 * t281 - t791 * t96 + (t193 * t638 - t697) * qJD(3) + t506;
t470 = t19 * (t439 * t176 + t279 * t693) + t61 * (t158 * t693 + t279 * t502 + t439 * t96) + t62 * (t178 * t640 + t279 * t618) + t11 * t176 * t692 + t54 * (t176 * t611 + t96 * t692);
t469 = -t438 * t782 + t495 * t439;
t468 = t779 * t438;
t467 = (-t167 * t298 + t169 * t297 + t273 * t791) * t439 + t781 * t438;
t370 = t569 * qJD(3);
t360 = t386 * t642;
t348 = t363 * pkin(4);
t347 = t361 * pkin(4);
t333 = t629 - t647;
t332 = t464 * t585;
t331 = t462 * t585;
t265 = t292 * t464;
t264 = t292 * t462;
t263 = t290 * t464;
t262 = t290 * t462;
t261 = t288 * t464;
t260 = t288 * t462;
t257 = t279 * t464;
t256 = t279 * t462;
t254 = t277 * t464;
t253 = t277 * t462;
t252 = t275 * t464;
t251 = t275 * t462;
t248 = qJD(1) * t794 - t442;
t247 = t441 + (-t333 - t402) * qJD(1);
t246 = rSges(5,1) * t363 - rSges(5,2) * t364;
t245 = -rSges(5,1) * t361 - rSges(5,2) * t362;
t231 = t464 * t266;
t230 = t462 * t266;
t202 = -qJD(3) * t350 + (t464 * t569 + t450) * qJD(1);
t201 = rSges(4,1) * t503 - rSges(4,2) * t611 + t651;
t189 = t431 + (-qJD(1) * t528 - t369) * qJD(1);
t188 = qJD(1) * (-qJD(1) * t629 + t649) + t656;
t157 = -t464 * t532 + t696;
t147 = t157 * qJD(1);
t98 = -t370 * t639 + t431 + (-t202 + t616 + t668) * qJD(1);
t97 = -t370 * t440 + (t201 - t615) * qJD(1) + t620;
t83 = -qJD(3) * t533 + t197 * t439 + t199 * t438;
t82 = -qJD(3) * t534 + t198 * t439 + t200 * t438;
t78 = t471 * t462 - t464 * t784;
t77 = t462 * t784 + t471 * t464;
t64 = t147 + t508;
t63 = t509 + t635;
t50 = t181 * t693 - t182 * t361 + t183 * t362 + t186 * t288 + t187 * t290 + t286 * t502;
t49 = t181 * t692 + t182 * t363 + t183 * t364 + t184 * t288 + t185 * t290 + t286 * t501;
t45 = t415 * t117 + t373 * t85 - t374 * t84;
t37 = t109 * t374 + t110 * t373 + t213 * t282 - t215 * t281 + t496;
t26 = t103 * t693 - t105 * t361 + t107 * t362 + t186 * t209 + t187 * t212 + t206 * t502;
t25 = t104 * t693 - t106 * t361 + t108 * t362 + t186 * t207 - t187 * t211 + t204 * t502;
t24 = t103 * t692 + t105 * t363 + t107 * t364 + t184 * t209 + t185 * t212 + t206 * t501;
t23 = t104 * t692 + t106 * t363 + t108 * t364 + t184 * t207 - t185 * t211 + t204 * t501;
t18 = t111 * t415 - t158 * t297 + t178 * t365 - t192 * t279 - t203 * t373 - t266 * t282 + t791 * t95 + (t194 * t638 + t516) * qJD(3) + t582;
t10 = t113 * t604 - t25 * t374 + t26 * t373 + t281 * t71 + t282 * t72 + t415 * t50;
t9 = t114 * t604 - t23 * t374 + t24 * t373 + t281 * t73 + t282 * t74 + t415 * t49;
t1 = [-(t82 + t78 + t64) * t639 / 0.2e1 + t42 * t763 + t36 * t770 + (t44 + t36) * t771 + (t47 * (-t567 + t650) + t79 * (t397 - t568 + t648) + t46 * (t410 - t672) + t80 * (-pkin(3) * t613 + t398 + t441 + t623) + (qJD(3) * t439 * t757 * t79 - t46 * t460 + t47 * t507) * t462 + ((t438 * t757 - t427 - t755) * t733 + (t79 * (-t427 + t507) - t80 * t460) * t464) * qJD(1) - (-t79 + t790 + t803) * t80) * m(5) + (t19 * (-t384 - t564 + t650) + t61 * (-t565 + t648) + t18 * (t410 + t178 + t653) + t62 * (t441 + t619 + t625) + (-t18 * t691 + t62 * (-t439 * t465 - t694) * qJD(3) + (t19 * t461 + (-t439 * t461 * t62 + t463 * t61) * qJD(4)) * pkin(4)) * t464 + (t61 * t584 - t18 * t460 + t19 * t726 * t438 + (t439 * t726 + t694) * t704) * t462 + ((t527 * t62 - t61 * t756) * t462 + (t61 * (t527 + t691) - t62 * t460) * t464) * qJD(1) - (-t61 + t790 + t804) * t62) * m(6) + (t63 - t635 + ((t464 * t589 + t123 - t669) * t464 + (t462 * t589 + t122 + t590) * t462) * qJD(3)) * t599 + (-qJD(3) * t532 + t367 * t439 + t368 * t438) * qJD(1) - t741 / 0.2e1 + t43 * t772 + t114 * t774 + t113 * t775 + t100 * t776 + t99 * t777 + t728 / 0.2e1 + t727 / 0.2e1 + ((t162 + t157) * t464 + (t161 + t156) * t462) * t633 / 0.2e1 + t729 / 0.2e1 + t730 / 0.2e1 + (t83 + t77) * t598 + t49 * t765 + t723 + t725 + (t147 + ((t121 - t269 + (t300 + t699) * t464 + t670) * t464 + t669 * t462) * qJD(3)) * t596 + t742 / 0.2e1 + t740 / 0.2e1 + (t189 * (t462 * t607 + t446 + t647) + t247 * t442 + t188 * t794 + t248 * (t646 + t649) + (t247 * (t607 + t749) * t464 + (t247 * (-rSges(3,3) - qJ(2)) + t248 * t607) * t462) * qJD(1) - (-qJD(1) * t333 - t247 - t390 + t441) * t248) * m(3) + (t98 * (-t305 + t650) + t124 * t648 + t97 * t795 + t125 * (t441 + t651) + (t382 * t702 - t701) * qJD(3) + ((-t124 * rSges(4,3) + t125 * (-t427 - t750)) * t462 + (t124 * (-t427 - t569) - t125 * t460) * t464) * qJD(1) - (-qJD(1) * t305 - t124 + t572 + t796) * t125) * m(4) + (t50 + t42) * t764 - t743 / 0.2e1; 0.2e1 * (t18 * t758 + t19 * t759) * m(6) + 0.2e1 * (-t734 / 0.2e1 + t732 / 0.2e1) * m(5) + 0.2e1 * (t758 * t97 + t759 * t98) * m(4) + 0.2e1 * (t188 * t758 + t189 * t759) * m(3); -(t41 * t462 + t42 * t464) * t637 / 0.2e1 + (t509 + t63 + t41 + t35) * t642 / 0.2e1 + (-(t124 * t350 - t701) * qJD(1) - (t163 * (-t350 * t462 - t351 * t464) + t542 * t569) * qJD(3) + 0.2e1 * t163 * (t201 * t464 + t202 * t462 + (t305 * t464 - t306 * t462) * qJD(1)) + t542 * t370 + (-t97 * t462 - t98 * t464 + (-t125 * t464 + t702) * qJD(1)) * t382) * m(4) - t45 * t638 / 0.2e1 - qJD(1) * ((t438 * t655 + t439 * t654) * qJD(1) + (t495 * t438 + t439 * t782) * qJD(3)) / 0.2e1 + t558 * t769 + (qJD(1) * t561 - t16 * t464 + t17 * t462) * t771 + (qJD(1) * t559 - t14 * t464 + t15 * t462) * t772 + t554 * t774 + t556 * t775 + t560 * t776 + t562 * t777 - t375 * t39 / 0.2e1 + (t79 * t360 + t37 * t657 + (t37 * t215 + t79 * t675 + (qJD(1) * t80 + t47) * t665) * t464 + (t79 * t292 * qJD(1) + t37 * t213 + t46 * t665 + t80 * t675) * t462 - t79 * (t264 * t415 - t293 * t374 + t514) - t80 * (-t265 * t415 - t293 * t373 + t573) - ((-t213 * t79 + t215 * t80) * t438 + t474 * t439) * qJD(4) + (t622 + (t213 * qJD(1) + t109) * t464 + (t672 * qJD(1) + t110) * t462 + t264 * t373 + t265 * t374 - t660) * t81) * m(5) + (qJD(1) * t78 + t10 + (t462 * (t472 * t462 - t464 * t786) - t464 * (t473 * t462 - t464 * t785) + (t120 * t462 + t121 * t464) * qJD(1)) * t802 + t6) * t758 + (qJD(1) * t77 + (t462 * (t462 * t786 + t472 * t464) - t464 * (t462 * t785 + t473 * t464) + (t122 * t462 + t123 * t464) * qJD(1)) * t802 + t5 + t9) * t759 + (qJD(1) * t551 - t27 * t464 + t28 * t462) * t761 + (qJD(1) * t555 - t25 * t464 + t26 * t462) * t764 + (qJD(1) * t553 - t23 * t464 + t24 * t462) * t765 + (qJD(1) * t557 - t21 * t464 + t22 * t462) * t767 + t552 * t575 + (t508 + t64 + t42 + t36) * t601 + qJD(1) * (t83 * t462 - t82 * t464 + (t161 * t462 + t162 * t464) * qJD(1)) / 0.2e1 + ((t252 * t325 - t254 * t326) * t297 + t66 * t332 - (t251 * t325 - t253 * t326) * t298 + t65 * t331 + (-t276 * t325 + t278 * t326) * t791 + t99 * t375 + t467 * t462) * t770 + ((-t252 * t327 - t254 * t328) * t297 + t68 * t332 - (-t251 * t327 - t253 * t328) * t298 + t67 * t331 + (t276 * t327 + t278 * t328) * t791 + t100 * t375 + t467 * t464) * t773 + (t115 * t375 + t69 * t331 + t70 * t332 - t781 * t439 + ((t252 * t443 - t254 * t444 + t169) * t297 - (t251 * t443 - t253 * t444 + t167) * t298 + (-t276 * t443 + t278 * t444 + t273) * t791) * t438) * t768 + ((t261 * t361 - t263 * t362) * t373 - (t260 * t361 - t262 * t362) * t374 + (-t289 * t361 + t291 * t362) * t415 + (t113 * t438 + t689 * t72) * qJD(4) + ((qJD(4) * t71 + t499) * t439 + t468) * t462) * t763 + ((-t261 * t363 - t263 * t364) * t373 - (-t260 * t363 - t262 * t364) * t374 + (t289 * t363 + t291 * t364) * t415 + (t114 * t438 + t690 * t73) * qJD(4) + ((qJD(4) * t74 + t499) * t439 + t468) * t464) * t766 + (((t261 * t461 - t263 * t463 + t206) * t373 - (t260 * t461 - t262 * t463 + t204) * t374 + (-t289 * t461 + t291 * t463 + t286) * t415 + t117 * qJD(4)) * t438 + (qJD(4) * t551 - t779) * t439) * t762 + (-t61 * (-t176 * t375 + t230 * t415 + t256 * t791 - t267 * t374 + t279 * t331 - t280 * t298 + t514) - t62 * (t178 * t375 - t231 * t415 - t257 * t791 - t267 * t373 - t279 * t332 - t280 * t297 + t573) - t54 * (t176 * t332 - t178 * t331 - t230 * t373 - t231 * t374 - t256 * t297 - t257 * t298 + t660) - ((t193 * t61 + t731) * t438 + (t54 * (-t193 * t464 - t194 * t462) + (t462 * t61 - t464 * t62) * t266) * t439) * qJD(4) + t61 * t360 + t11 * t657 + t54 * t622 + (t19 * t621 + t61 * t624 + (t62 * t621 + t801) * qJD(1) - t783) * t464 + (t18 * t621 + t62 * t624 + t11 * t677 + t54 * (t112 + t96) + (t61 * t671 + t54 * (-t358 - t676)) * qJD(1)) * t462) * m(6) + ((-t639 * t696 - t644) * t464 + (t484 + (t464 * t695 + t469) * qJD(3)) * t462) * t596 + ((-t440 * t695 + t644) * t462 + (t484 + (t462 * t696 + t469) * qJD(3)) * t464) * t599 - t331 * t35 / 0.2e1 - t332 * t36 / 0.2e1; (-t117 * t439 + t438 * t551) * t575 + (-t113 * t439 + t438 * t555) * t775 + (t363 * t778 + t481 * t364 - t464 * t493) * t766 + (-t361 * t778 + t362 * t481 - t462 * t493) * t763 + ((qJD(3) * t553 - t49) * t439 + (-qJD(1) * t554 + qJD(3) * t114 + t23 * t462 + t24 * t464) * t438) * t765 + t10 * t609 + t477 + (t723 + t727 + t728 + t740 - t741) * t760 + t45 * t600 + ((qJD(3) * t551 - t53) * t439 + (-qJD(1) * t552 + qJD(3) * t117 + t27 * t462 + t28 * t464) * t438) * t761 + ((qJD(3) * t555 - t50) * t439 + (-qJD(1) * t556 + qJD(3) * t113 + t25 * t462 + t26 * t464) * t438) * t764 + t9 * t608 + (t497 * t439 + (-t461 * t778 + t463 * t481) * t438) * t762 + (-t114 * t439 + t438 * t553) * t774 + t805 * t42 + t806 * t41 + (-t61 * (t347 * t415 + t374 * t631 + t591) - t62 * (t348 * t415 + t373 * t631 + t592) - t54 * (-t347 * t373 + t348 * t374 + t593) + (-t19 * t193 + t61 * t112 - t18 * t676 - t62 * t724 + ((-t54 * t193 - t62 * t671) * t464 + t515 * t462) * qJD(3)) * t439 + ((-t61 * t677 + t731) * qJD(3) + (qJD(1) * t515 - t11 * t193 + t54 * t112 - t18 * t671 + t62 * t680) * t464 + (t19 * t266 + t61 * t203 + (t62 * t266 - t801) * qJD(1) + t783) * t462) * t438 + t470) * m(6) + ((qJD(3) * t474 - t80 * t109 + t79 * t110 + t47 * t213 - t46 * t215) * t439 + (t79 * (-qJD(3) * t213 + t190 * t462) + t80 * (qJD(3) * t215 - t190 * t464) + t37 * t537 + t81 * (-t109 * t462 + t110 * t464 - t213 * t642 - t215 * t641) + (-t734 + t732 + (t464 * t79 + t733) * qJD(1)) * t292) * t438 - t79 * (-t245 * t415 - t349 * t374) - t80 * (t246 * t415 - t349 * t373) - t81 * (t245 * t373 + t246 * t374)) * m(5); t477 + (-t54 * t593 - t591 * t61 - t592 * t62 + (t62 * (-t279 * t639 - t95) + (-t440 * t54 - t18) * t178) * t439 + (-t176 * t704 + (-qJD(1) * t178 * t54 - t158 * t62 - t18 * t279) * t464 + (-t11 * t178 + t54 * (-qJD(1) * t176 - t95)) * t462) * t438 + t470) * m(6);];
tauc = t1(:);