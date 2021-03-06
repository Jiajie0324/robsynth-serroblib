% Calculate matrix of centrifugal and coriolis load on the joints for
% S4RRRR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [5x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% Cq [4x4]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:26
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S4RRRR4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR4_coriolismatJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR4_coriolismatJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR4_coriolismatJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR4_coriolismatJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRRR4_coriolismatJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4RRRR4_coriolismatJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:25:42
% EndTime: 2019-12-31 17:26:05
% DurationCPUTime: 18.91s
% Computational Cost: add. (65717->652), mult. (88022->896), div. (0->0), fcn. (95959->8), ass. (0->406)
t520 = qJ(2) + qJ(3);
t506 = sin(t520);
t523 = sin(qJ(1));
t693 = t506 * t523;
t507 = cos(t520);
t524 = cos(qJ(4));
t526 = cos(qJ(1));
t672 = t524 * t526;
t521 = sin(qJ(4));
t675 = t523 * t521;
t455 = t507 * t675 + t672;
t663 = t526 * t521;
t674 = t523 * t524;
t456 = t507 * t674 - t663;
t795 = -t456 * rSges(5,1) + t455 * rSges(5,2);
t326 = rSges(5,3) * t693 - t795;
t457 = -t507 * t663 + t674;
t458 = t507 * t672 + t675;
t579 = t458 * rSges(5,1) + t457 * rSges(5,2);
t691 = t506 * t526;
t328 = rSges(5,3) * t691 + t579;
t741 = pkin(3) * t507;
t475 = pkin(7) * t506 + t741;
t519 = t526 ^ 2;
t233 = t526 * t328 + t519 * t475 + (t475 * t523 + t326) * t523;
t525 = cos(qJ(2));
t742 = pkin(2) * t525;
t503 = pkin(1) + t742;
t778 = -pkin(6) - pkin(5);
t504 = t523 * t778;
t517 = t526 * pkin(5);
t626 = -t523 * t503 - t526 * t778;
t644 = -t523 * (pkin(1) * t523 - t517 + t626) + t526 * (-t523 * pkin(5) - t504 + (-pkin(1) + t503) * t526);
t194 = t233 + t644;
t692 = t506 * t524;
t622 = rSges(5,1) * t692;
t476 = t523 * t622;
t694 = t506 * t521;
t621 = rSges(5,2) * t694;
t736 = rSges(5,3) * t507;
t363 = -t476 + (t621 + t736) * t523;
t684 = t507 * t526;
t627 = rSges(5,3) * t684 + t526 * t621;
t364 = -t526 * t622 + t627;
t494 = pkin(3) * t693;
t495 = pkin(7) * t684;
t685 = t507 * t523;
t251 = (-pkin(3) * t691 + t364 + t495) * t526 + (pkin(7) * t685 + t363 - t494) * t523;
t737 = rSges(5,1) * t524;
t578 = -rSges(5,2) * t521 + t737;
t398 = t506 * t578 - t736;
t639 = pkin(3) * t506 - pkin(7) * t507 + t398;
t522 = sin(qJ(2));
t743 = pkin(2) * t522;
t583 = t639 + t743;
t307 = t583 * t523;
t309 = t583 * t526;
t399 = rSges(5,3) * t506 + t507 * t578;
t638 = -t399 - t475;
t333 = t638 * t523;
t335 = t638 * t526;
t103 = t194 * t251 - t307 * t333 - t309 * t335;
t411 = rSges(4,1) * t685 - rSges(4,2) * t693 - t526 * rSges(4,3);
t595 = -rSges(4,2) * t691 + t523 * rSges(4,3);
t305 = t523 * t411 + t526 * (rSges(4,1) * t684 + t595);
t259 = t305 + t644;
t472 = rSges(4,1) * t506 + rSges(4,2) * t507;
t452 = t472 * t523;
t453 = t472 * t526;
t336 = -t523 * t452 - t526 * t453;
t738 = rSges(4,1) * t507;
t473 = -rSges(4,2) * t506 + t738;
t548 = t472 + t743;
t796 = t548 * t526;
t797 = t548 * t523;
t178 = t259 * t336 + (t523 * t797 + t526 * t796) * t473;
t830 = -m(4) * t178 - m(5) * t103;
t319 = Icges(5,5) * t458 + Icges(5,6) * t457 + Icges(5,3) * t691;
t721 = Icges(5,4) * t524;
t574 = -Icges(5,2) * t521 + t721;
t394 = -Icges(5,6) * t507 + t506 * t574;
t360 = t394 * t526;
t722 = Icges(5,4) * t521;
t575 = Icges(5,1) * t524 - t722;
t396 = -Icges(5,5) * t507 + t506 * t575;
t362 = t396 * t526;
t570 = Icges(5,5) * t524 - Icges(5,6) * t521;
t392 = -Icges(5,3) * t507 + t506 * t570;
t723 = Icges(5,4) * t458;
t322 = Icges(5,2) * t457 + Icges(5,6) * t691 + t723;
t439 = Icges(5,4) * t457;
t325 = Icges(5,1) * t458 + Icges(5,5) * t691 + t439;
t565 = -t322 * t521 + t325 * t524;
t553 = -t392 * t526 - t565;
t164 = -t553 * t507 + (t360 * t521 - t362 * t524 + t319) * t506;
t395 = Icges(5,6) * t506 + t507 * t574;
t397 = Icges(5,5) * t506 + t507 * t575;
t393 = Icges(5,3) * t506 + t507 * t570;
t703 = t396 * t524;
t704 = t394 * t521;
t563 = t703 - t704;
t552 = t393 - t563;
t705 = t392 * t507;
t532 = t506 * t552 + t705;
t188 = t457 * t395 + t458 * t397 + t526 * t532;
t199 = -t552 * t507 + (-t395 * t521 + t397 * t524 + t392) * t506;
t317 = Icges(5,5) * t456 - Icges(5,6) * t455 + Icges(5,3) * t693;
t707 = t317 * t507;
t438 = Icges(5,4) * t456;
t320 = -Icges(5,2) * t455 + Icges(5,6) * t693 + t438;
t437 = Icges(5,4) * t455;
t324 = -Icges(5,1) * t456 - Icges(5,5) * t693 + t437;
t821 = t320 * t521 + t324 * t524;
t225 = t821 * t506 + t707;
t706 = t319 * t507;
t226 = t506 * t565 - t706;
t248 = t392 * t693 - t394 * t455 + t396 * t456;
t250 = t392 * t691 + t457 * t394 + t458 * t396;
t264 = t506 * t563 - t705;
t767 = -t507 / 0.2e1;
t819 = t506 / 0.2e1;
t829 = t199 * t767 + t264 * t819 + (-t225 + t248) * t685 / 0.4e1 + (t226 + t250) * t684 / 0.4e1 + t691 * (t164 + t188) / 0.4e1;
t761 = rSges(5,3) + pkin(7);
t790 = -t506 * t761 - t741;
t280 = t790 * t523 + t626 + t795;
t281 = -t504 + (t503 - t790) * t526 + t579;
t343 = -rSges(5,1) * t455 - rSges(5,2) * t456;
t344 = rSges(5,1) * t457 - rSges(5,2) * t458;
t443 = (-Icges(5,2) * t524 - t722) * t506;
t446 = (-Icges(5,1) * t521 - t721) * t506;
t440 = (-Icges(5,5) * t521 - Icges(5,6) * t524) * t506;
t688 = t507 * t440;
t124 = (-(t396 / 0.2e1 + t443 / 0.2e1) * t521 + (t446 / 0.2e1 - t394 / 0.2e1) * t524) * t506 + m(5) * (-t280 * t343 + t281 * t344) - t688 / 0.2e1;
t828 = t124 * qJD(1);
t210 = t317 * t693 - t320 * t455 - t324 * t456;
t211 = t319 * t693 - t455 * t322 + t456 * t325;
t569 = t210 * t523 + t211 * t526;
t35 = t248 * t507 - t506 * t569;
t212 = t317 * t691 + t457 * t320 - t458 * t324;
t213 = t319 * t691 + t457 * t322 + t458 * t325;
t568 = t523 * t212 + t213 * t526;
t826 = -t250 * t507 + t506 * t568;
t131 = -t210 * t526 + t211 * t523;
t608 = t693 / 0.4e1;
t610 = -t693 / 0.4e1;
t823 = -t212 * t526 + t213 * t523;
t825 = (t608 + t610) * t823;
t765 = t523 / 0.2e1;
t762 = t526 / 0.2e1;
t275 = t326 * t507 + t398 * t693;
t501 = Icges(4,4) * t507;
t469 = -Icges(4,2) * t506 + t501;
t470 = Icges(4,1) * t506 + t501;
t822 = -t469 - t470;
t408 = Icges(4,6) * t523 + t469 * t526;
t724 = Icges(4,4) * t506;
t471 = Icges(4,1) * t507 - t724;
t410 = Icges(4,5) * t523 + t471 * t526;
t370 = t410 * t685;
t467 = Icges(4,5) * t507 - Icges(4,6) * t506;
t699 = t467 * t526;
t406 = Icges(4,3) * t523 + t699;
t590 = t406 * t526 - t370;
t271 = -t408 * t693 - t590;
t407 = Icges(4,4) * t685 - Icges(4,2) * t693 - Icges(4,6) * t526;
t405 = Icges(4,5) * t685 - Icges(4,6) * t693 - Icges(4,3) * t526;
t489 = Icges(4,4) * t693;
t409 = Icges(4,1) * t685 - Icges(4,5) * t526 - t489;
t647 = -t523 * t405 - t409 * t684;
t272 = -t407 * t691 - t647;
t646 = t523 * t406 + t410 * t684;
t273 = -t408 * t691 + t646;
t588 = t408 * t506 - t405;
t701 = t407 * t506;
t763 = -t526 / 0.2e1;
t805 = t131 * t765 + t762 * t823;
t547 = (-t272 * t526 + t273 * t523) * t762 + ((t271 - t370 + (t406 + t701) * t526 + t647) * t526 + t646 * t523 + t823) * t763 + (-t131 + (t523 * t588 + t271 + t272 + t590) * t523 + (t523 * (-t409 * t507 + t701) + t273 - t646 + (t405 + t588) * t526) * t526) * t765 + t805;
t780 = m(4) / 0.2e1;
t779 = m(5) / 0.2e1;
t820 = -t506 / 0.2e1;
t818 = t507 / 0.2e1;
t817 = t523 / 0.4e1;
t816 = -t526 / 0.4e1;
t725 = Icges(3,4) * t522;
t479 = Icges(3,2) * t525 + t725;
t482 = Icges(3,1) * t525 - t725;
t806 = (t482 / 0.2e1 - t479 / 0.2e1) * t522;
t359 = t394 * t523;
t361 = t396 * t523;
t554 = -t392 * t523 + t821;
t163 = -t554 * t507 + (t359 * t521 - t361 * t524 + t317) * t506;
t187 = -t395 * t455 + t397 * t456 + t523 * t532;
t804 = t163 + t187;
t518 = t523 ^ 2;
t624 = t518 + t519;
t549 = -t507 * t761 - t621;
t628 = t476 + t494;
t300 = (t549 + t743) * t523 + t628;
t581 = (-pkin(3) - t737) * t506;
t611 = t495 + t627;
t301 = (t581 - t743) * t526 + t611;
t332 = t639 * t523;
t334 = t639 * t526;
t345 = -t411 + t626;
t346 = -t504 + (t503 + t738) * t526 + t595;
t550 = (-t345 * t526 - t346 * t523) * t473;
t654 = t335 * t280 + t333 * t281;
t661 = (-t300 * t334 - t301 * t332 + t654) * t779 + (t550 + (t523 * t796 - t526 * t797) * t472) * t780;
t315 = t523 * t549 + t628;
t316 = t526 * t581 + t611;
t662 = (-t307 * t316 - t309 * t315 + t654) * t779 + (-t452 * t796 + t453 * t797 + t550) * t780;
t802 = t661 - t662;
t514 = Icges(3,4) * t525;
t480 = -Icges(3,2) * t522 + t514;
t481 = Icges(3,1) * t522 + t514;
t113 = t233 * t251 - t332 * t333 - t334 * t335;
t227 = t624 * t472 * t473 + t305 * t336;
t794 = m(4) * t227 + m(5) * t113;
t337 = -Icges(5,5) * t455 - Icges(5,6) * t456;
t649 = -Icges(5,2) * t456 - t324 - t437;
t651 = -Icges(5,1) * t455 - t320 - t438;
t155 = t337 * t693 - t455 * t649 + t456 * t651;
t338 = Icges(5,5) * t457 - Icges(5,6) * t458;
t648 = -Icges(5,2) * t458 + t325 + t439;
t650 = Icges(5,1) * t457 - t322 - t723;
t156 = t338 * t693 - t455 * t648 + t456 * t650;
t84 = -t155 * t526 + t156 * t523;
t157 = t337 * t691 + t457 * t649 + t458 * t651;
t158 = t338 * t691 + t457 * t648 + t458 * t650;
t85 = -t157 * t526 + t158 * t523;
t740 = t84 * t763 + t85 * t765;
t640 = t396 + t443;
t641 = -t394 + t446;
t216 = t440 * t693 - t455 * t640 + t456 * t641;
t217 = t440 * t691 + t457 * t640 + t458 * t641;
t174 = -t338 * t507 + (-t521 * t648 + t524 * t650) * t506;
t712 = t174 * t523;
t173 = -t337 * t507 + (-t521 * t649 + t524 * t651) * t506;
t713 = t173 * t526;
t585 = -t713 / 0.4e1 + t712 / 0.4e1 + t217 * t817 + t216 * t816;
t670 = t526 * t826;
t680 = t523 * t35;
t788 = t670 / 0.4e1 - t680 / 0.4e1 + t826 * t816 + t35 * t817;
t435 = Icges(3,5) * t523 + t482 * t526;
t630 = -t479 * t526 + t435;
t682 = t522 * t523;
t498 = Icges(3,4) * t682;
t673 = t523 * t525;
t434 = Icges(3,1) * t673 - Icges(3,5) * t526 - t498;
t631 = -Icges(3,2) * t673 + t434 - t498;
t433 = Icges(3,6) * t523 + t480 * t526;
t632 = -t481 * t526 - t433;
t432 = Icges(3,4) * t673 - Icges(3,2) * t682 - Icges(3,6) * t526;
t633 = t481 * t523 + t432;
t786 = (-t630 * t523 + t526 * t631) * t522 + (t632 * t523 + t526 * t633) * t525;
t468 = Icges(4,2) * t507 + t724;
t634 = -t468 * t526 + t410;
t635 = -Icges(4,2) * t685 + t409 - t489;
t636 = -t470 * t526 - t408;
t637 = t470 * t523 + t407;
t785 = (-t634 * t523 + t526 * t635) * t506 + (t636 * t523 + t526 * t637) * t507;
t537 = -t395 * t694 / 0.2e1 + t397 * t692 / 0.2e1 + t468 * t820 + (t392 + t471) * t819 + (t704 + t393) * t767 + (t703 - t822) * t818;
t784 = 0.4e1 * qJD(1);
t783 = 2 * qJD(2);
t781 = 2 * qJD(3);
t564 = t526 * t326 - t328 * t523;
t254 = t564 * t506;
t277 = t507 * t328 + t398 * t691;
t612 = t254 * t251 + t275 * t335 - t277 * t333;
t201 = t564 * t507 + (t363 * t526 - t364 * t523) * t506;
t228 = (t398 * t523 + t363) * t507 + (t399 * t523 - t326) * t506;
t229 = (-t398 * t526 - t364) * t507 + (-t399 * t526 + t328) * t506;
t613 = t201 * t194 - t228 * t309 - t229 * t307;
t777 = m(5) * (t612 + t613);
t40 = t201 * t233 - t228 * t334 - t229 * t332 + t612;
t776 = m(5) * t40;
t278 = t523 * t343 + t344 * t526;
t165 = t194 * t278;
t183 = t233 * t278;
t451 = (-rSges(5,1) * t521 - rSges(5,2) * t524) * t506;
t772 = m(5) * (t165 + t183 + ((t309 + t334) * t526 + (t307 + t332) * t523) * t451);
t771 = m(5) * (t201 * t254 + t228 * t275 - t229 * t277);
t656 = t228 * t280 + t229 * t281;
t770 = m(5) * (t275 * t300 - t277 * t301 + t656);
t769 = m(5) * (t275 * t315 - t277 * t316 + t656);
t766 = -t523 / 0.2e1;
t739 = rSges(3,1) * t525;
t598 = pkin(1) + t739;
t625 = rSges(3,2) * t682 + t526 * rSges(3,3);
t375 = -t523 * t598 + t517 + t625;
t681 = t522 * t526;
t500 = rSges(3,2) * t681;
t376 = -t500 + t598 * t526 + (rSges(3,3) + pkin(5)) * t523;
t483 = rSges(3,1) * t522 + rSges(3,2) * t525;
t465 = t483 * t523;
t466 = t483 * t526;
t760 = m(3) * (t375 * t465 - t376 * t466);
t753 = m(4) * (t345 * t797 - t346 * t796);
t752 = m(4) * (t345 * t452 - t346 * t453);
t551 = (-t280 * t526 - t281 * t523) * t451;
t747 = m(5) * (-t307 * t344 + t309 * t343 + t551);
t746 = m(5) * (-t332 * t344 + t334 * t343 + t551);
t745 = m(5) * (t280 * t300 + t281 * t301);
t744 = m(5) * (t280 * t315 + t281 * t316);
t715 = t163 * t526;
t714 = t164 * t523;
t710 = t225 * t523;
t683 = t522 * t432;
t671 = t525 * t526;
t430 = Icges(3,5) * t673 - Icges(3,6) * t682 - Icges(3,3) * t526;
t643 = -t523 * t430 - t434 * t671;
t573 = Icges(3,5) * t525 - Icges(3,6) * t522;
t431 = Icges(3,3) * t523 + t526 * t573;
t642 = t523 * t431 + t435 * t671;
t623 = t772 / 0.2e1 + t740;
t609 = t693 / 0.2e1;
t606 = t691 / 0.2e1;
t596 = -t473 - t742;
t387 = t435 * t673;
t589 = t431 * t526 - t387;
t587 = t522 * t433 - t430;
t571 = Icges(4,5) * t506 + Icges(4,6) * t507;
t441 = t571 * t523;
t442 = t526 * t571;
t534 = t506 * t554 + t707;
t145 = t359 * t455 - t361 * t456 + t523 * t534;
t533 = t506 * t553 + t706;
t146 = t360 * t455 - t362 * t456 + t523 * t533;
t75 = -t145 * t526 + t146 * t523;
t147 = -t457 * t359 - t458 * t361 + t526 * t534;
t148 = -t457 * t360 - t458 * t362 + t526 * t533;
t76 = -t147 * t526 + t148 * t523;
t586 = (t76 - t518 * t442 + (t523 * t441 + t785) * t526) * t765 + (t75 - t519 * t441 + (t526 * t442 + t785) * t523) * t763;
t584 = t624 * t743;
t582 = t638 - t742;
t572 = -Icges(3,5) * t522 - Icges(3,6) * t525;
t567 = t226 * t526 - t710;
t562 = t407 * t507 + t409 * t506;
t546 = t788 + t825;
t545 = t254 * t278 + (-t275 * t526 + t277 * t523) * t451;
t544 = (-t468 + t471) * t507 + t822 * t506;
t27 = (-t187 + t569) * t507 + (t145 * t523 + t146 * t526 + t248) * t506;
t28 = (-t188 + t568) * t507 + (t147 * t523 + t148 * t526 + t250) * t506;
t543 = t27 * t763 + t28 * t765 + t76 * t606 + t75 * t609 + (t225 * t526 + t226 * t523) * t819 + (t714 - t715) * t767 - t740 + t805 * t507;
t538 = t804 * t608 + t829;
t112 = -t264 * t507 + t506 * t567;
t39 = (-t199 + t567) * t507 + (t163 * t523 + t164 * t526 + t264) * t506;
t63 = -t216 * t507 + (t155 * t523 + t156 * t526) * t506;
t64 = -t217 * t507 + (t157 * t523 + t158 * t526) * t506;
t535 = t112 * t820 - t27 * t693 / 0.2e1 - t28 * t691 / 0.2e1 + t39 * t818 + t64 * t765 + t63 * t763 - t771 + t84 * t609 + t85 * t606 + (t712 - t713 - t680 + t670) * t767;
t531 = -t715 / 0.2e1 + t714 / 0.2e1 + (t523 * t467 + t506 * t636 + t507 * t634 + t526 * t544 + t188) * t765 + (-t506 * t637 + t507 * t635 + t523 * t544 + t187 - t699) * t763 - t547;
t530 = t562 * t766 - t537 - t710 / 0.2e1 + (t562 + t225) * t765;
t529 = t538 + t585 - t788 + t825;
t528 = t538 + t546 - t585;
t527 = t804 * t610 + t546 + t585 - t829;
t485 = -rSges(3,2) * t522 + t739;
t460 = t572 * t526;
t459 = t572 * t523;
t403 = t596 * t526;
t401 = t596 * t523;
t310 = t582 * t526;
t308 = t582 * t523;
t299 = -t584 + t336;
t287 = -t507 * t344 - t451 * t691;
t286 = t343 * t507 + t451 * t693;
t285 = -t433 * t681 + t642;
t284 = -t432 * t681 - t643;
t283 = -t433 * t682 - t589;
t267 = (t343 * t526 - t344 * t523) * t506;
t242 = -t584 + t251;
t235 = -t688 + (-t521 * t640 + t524 * t641) * t506;
t231 = -t284 * t526 + t285 * t523;
t230 = -(-t523 * (-t525 * t434 + t683) - t430 * t526) * t526 + t283 * t523;
t139 = t183 + (t332 * t523 + t334 * t526) * t451;
t133 = t746 / 0.2e1;
t125 = t747 / 0.2e1;
t114 = t165 + (t307 * t523 + t309 * t526) * t451;
t108 = (t283 - t387 + (t431 + t683) * t526 + t643) * t526 + t642 * t523;
t107 = (t526 * t587 + t285 - t642) * t526 + (t523 * t587 + t284 + t589) * t523;
t70 = t537 + t744 + t752;
t68 = t769 / 0.2e1;
t66 = t770 / 0.2e1;
t57 = t537 + t806 + (t481 / 0.2e1 + t480 / 0.2e1) * t525 + t760 + t753 + t745;
t38 = t776 / 0.2e1;
t29 = t777 / 0.2e1;
t22 = m(5) * t139 + t740;
t21 = m(5) * t114 + t740;
t20 = t586 + t794;
t19 = t20 * qJD(3);
t18 = t586 - t830;
t17 = t38 - t777 / 0.2e1 + t623;
t16 = t29 - t776 / 0.2e1 + t623;
t13 = t771 + (t670 / 0.2e1 - t680 / 0.2e1 - t39 / 0.2e1) * t507 + (t28 * t762 + t27 * t765 + t112 / 0.2e1) * t506;
t12 = t13 * qJD(4);
t11 = (-t108 / 0.2e1 + t231 / 0.2e1) * t526 + (t230 / 0.2e1 + t107 / 0.2e1) * t523 + t547;
t10 = t547 + t802;
t9 = t547 - t802;
t8 = t531 + t661 + t662;
t7 = t29 + t38 - t772 / 0.2e1 + t543;
t6 = t68 + t133 + t529;
t5 = t68 - t746 / 0.2e1 + t528;
t4 = t133 - t769 / 0.2e1 + t527;
t3 = t66 + t125 + t529;
t2 = t66 - t747 / 0.2e1 + t528;
t1 = -t770 / 0.2e1 + t125 + t527;
t14 = [t57 * qJD(2) + t70 * qJD(3) + t124 * qJD(4), t57 * qJD(1) + t8 * qJD(3) + t3 * qJD(4) + (m(3) * ((-t375 * t526 - t376 * t523) * t485 + (-t465 * t526 + t466 * t523) * t483) / 0.2e1 + (t345 * t403 + t346 * t401) * t780 + (t280 * t310 + t281 * t308 - t300 * t309 - t301 * t307) * t779) * t783 + (t531 + (t522 * t632 + t525 * t630) * t765 + t108 * t762 + (t230 + t107) * t766 + (-t522 * t633 + t525 * t631 + t231) * t763 + (t518 / 0.2e1 + t519 / 0.2e1) * t573) * qJD(2), t70 * qJD(1) + t8 * qJD(2) + t531 * qJD(3) + t6 * qJD(4) + ((-t315 * t334 - t316 * t332 + t654) * t779 + (t550 + (-t452 * t526 + t453 * t523) * t472) * t780) * t781, t828 + t3 * qJD(2) + t6 * qJD(3) + (m(5) * (-t275 * t343 - t277 * t344 + t280 * t286 + t281 * t287) - t235 * t507 + ((t174 / 0.2e1 + t217 / 0.2e1) * t526 + (t173 / 0.2e1 + t216 / 0.2e1) * t523) * t506) * qJD(4); (t530 - (t481 + t480) * t525 / 0.2e1 - t806) * qJD(1) + t11 * qJD(2) + t9 * qJD(3) + t1 * qJD(4) + (-t760 / 0.4e1 - t753 / 0.4e1 - t745 / 0.4e1) * t784, t11 * qJD(1) + (m(5) * (t194 * t242 - t307 * t308 - t309 * t310) + m(4) * (t259 * t299 - t401 * t797 - t403 * t796) + m(3) * ((t523 * (rSges(3,1) * t673 - t625) + t526 * (rSges(3,1) * t671 + t523 * rSges(3,3) - t500)) * (-t523 * t465 - t466 * t526) + t624 * t485 * t483) + (t519 * t459 + (-t526 * t460 + t786) * t523) * t763 + (t518 * t460 + (-t523 * t459 + t786) * t526) * t765 + t586) * qJD(2) + t18 * qJD(3) + t21 * qJD(4), t9 * qJD(1) + t18 * qJD(2) + t16 * qJD(4) + ((t113 + t103) * t779 + (t178 + t227) * t780) * t781 + (t586 - t794) * qJD(3), t1 * qJD(1) + t21 * qJD(2) + t16 * qJD(3) + (t535 + m(5) * (t267 * t194 - t286 * t309 - t287 * t307 + t545)) * qJD(4); t530 * qJD(1) + t10 * qJD(2) + t547 * qJD(3) + t4 * qJD(4) + (-t752 / 0.4e1 - t744 / 0.4e1) * t784, t10 * qJD(1) + t19 + t17 * qJD(4) + ((t233 * t242 - t308 * t332 - t310 * t334 + t103) * t779 + (t305 * t299 + (-t401 * t523 - t403 * t526) * t472 + t178) * t780) * t783 + (t586 + t830) * qJD(2), qJD(1) * t547 + qJD(2) * t20 + qJD(4) * t22 + t19, t4 * qJD(1) + t17 * qJD(2) + t22 * qJD(3) + (t535 + m(5) * (t267 * t233 - t286 * t334 - t287 * t332 + t545)) * qJD(4); t2 * qJD(2) + t5 * qJD(3) - t828, t2 * qJD(1) + ((t242 * t254 + t275 * t310 - t277 * t308 - t114 + t613) * m(5) + t543) * qJD(2) + t7 * qJD(3) + t12, t5 * qJD(1) + t7 * qJD(2) + ((t40 - t139) * m(5) + t543) * qJD(3) + t12, (m(5) * (t254 * t267 + t275 * t286 - t277 * t287) + t507 ^ 2 * t235 / 0.2e1 + (t64 * t762 + t63 * t765 + (t173 * t523 + t174 * t526) * t767) * t506) * qJD(4) + (qJD(2) + qJD(3)) * t13;];
Cq = t14;
