% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RRRRPP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4]';
% MDP [32x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRPP8_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:40
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRRRPP8_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(32,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP8_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP8_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP8_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [10x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [32 1]), ...
  'S6RRRRPP8_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [32x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 21:38:50
% EndTime: 2019-03-09 21:39:10
% DurationCPUTime: 12.11s
% Computational Cost: add. (10974->695), mult. (28391->870), div. (0->0), fcn. (21420->8), ass. (0->256)
t622 = sin(qJ(2));
t763 = cos(pkin(6));
t688 = t763 * qJD(1);
t672 = pkin(1) * t688;
t606 = t622 * t672;
t619 = sin(pkin(6));
t625 = cos(qJ(2));
t713 = qJD(1) * t625;
t608 = t619 * t713;
t573 = pkin(8) * t608 + t606;
t621 = sin(qJ(3));
t624 = cos(qJ(3));
t666 = pkin(3) * t621 - pkin(10) * t624;
t499 = t608 * t666 + t573;
t589 = t666 * qJD(3);
t790 = t499 - t589;
t656 = t688 + qJD(2);
t714 = qJD(1) * t619;
t695 = t622 * t714;
t550 = t621 * t695 - t624 * t656;
t544 = qJD(4) + t550;
t674 = t621 * t608;
t711 = qJD(3) * t621;
t789 = t674 - t711;
t570 = -pkin(8) * t695 + t625 * t672;
t650 = (pkin(2) * t622 - pkin(9) * t625) * t619;
t571 = qJD(1) * t650;
t719 = t624 * t570 + t621 * t571;
t492 = pkin(10) * t695 + t719;
t599 = -pkin(3) * t624 - pkin(10) * t621 - pkin(2);
t623 = cos(qJ(4));
t766 = pkin(9) * t624;
t612 = t623 * t766;
t620 = sin(qJ(4));
t708 = qJD(4) * t620;
t788 = -qJD(4) * t612 + t620 * t492 - t599 * t708;
t552 = t621 * t656 + t624 * t695;
t699 = qJD(1) * qJD(2);
t689 = t619 * t699;
t670 = t625 * t689;
t658 = t621 * t670;
t510 = t552 * qJD(3) + t658;
t787 = t510 * qJ(5) + t544 * qJD(5);
t657 = t624 * t670;
t629 = -qJD(3) * t550 + t657;
t661 = t608 - qJD(3);
t786 = -qJD(4) * t661 + t629;
t707 = qJD(4) * t623;
t785 = t623 * t492 - t599 * t707 + t790 * t620;
t616 = t619 ^ 2;
t784 = -0.2e1 * t616 * t699;
t783 = MDP(5) * (t622 ^ 2 - t625 ^ 2);
t502 = t552 * t620 + t623 * t661;
t525 = pkin(9) * t656 + t573;
t567 = (-pkin(2) * t625 - pkin(9) * t622 - pkin(1)) * t619;
t541 = qJD(1) * t567;
t481 = -t621 * t525 + t624 * t541;
t471 = pkin(3) * t661 - t481;
t504 = t623 * t552 - t620 * t661;
t637 = -t504 * qJ(5) + t471;
t767 = pkin(4) + pkin(5);
t412 = -t502 * t767 + qJD(6) - t637;
t782 = (qJD(6) + t412) * t504;
t781 = qJ(5) * t789 + qJD(5) * t624 + t785;
t671 = t622 * t689;
t455 = t552 * t707 + t620 * t786 - t623 * t671;
t780 = t455 * qJ(6) + t502 * qJD(6);
t454 = t552 * t708 - t620 * t671 - t623 * t786;
t746 = t502 * t544;
t779 = -t454 - t746;
t744 = t504 * t544;
t778 = -t455 - t744;
t482 = t624 * t525 + t621 * t541;
t777 = -qJD(5) * t620 - t482;
t776 = 0.2e1 * t787;
t739 = t619 * t622;
t580 = t621 * t739 - t624 * t763;
t738 = t619 * t625;
t693 = qJD(2) * t738;
t517 = -qJD(3) * t580 + t624 * t693;
t775 = -qJD(4) * t738 + t517;
t696 = pkin(1) * t763;
t773 = -pkin(8) * t739 + t625 * t696;
t772 = -t499 * t623 + t788;
t524 = -pkin(2) * t656 - t570;
t468 = t550 * pkin(3) - t552 * pkin(10) + t524;
t472 = -pkin(10) * t661 + t482;
t423 = t623 * t468 - t620 * t472;
t701 = qJD(5) - t423;
t422 = t502 * pkin(4) + t637;
t765 = pkin(10) * t510;
t771 = t422 * t544 - t765;
t759 = qJ(5) * t623;
t770 = t620 * t767 - t759;
t760 = qJ(5) * t620;
t769 = -t623 * t767 - t760;
t768 = t502 ^ 2;
t501 = t504 ^ 2;
t627 = qJD(1) ^ 2;
t508 = t510 * pkin(4);
t764 = pkin(10) - qJ(6);
t762 = qJ(5) * t455;
t761 = qJ(5) * t502;
t758 = qJ(6) * t550;
t757 = qJ(6) * t621;
t572 = qJD(2) * t650;
t561 = qJD(1) * t572;
t574 = t773 * qJD(2);
t562 = qJD(1) * t574;
t709 = qJD(3) * t624;
t677 = t525 * t709 + t541 * t711 - t624 * t561 + t621 * t562;
t438 = -pkin(3) * t671 + t677;
t407 = t455 * pkin(4) + t454 * qJ(5) - t504 * qJD(5) + t438;
t400 = -pkin(5) * t455 - t407;
t756 = t400 * t620;
t755 = t400 * t623;
t754 = t407 * t620;
t753 = t407 * t623;
t424 = t620 * t468 + t623 * t472;
t414 = qJ(6) * t502 + t424;
t531 = t544 * qJ(5);
t411 = t414 + t531;
t752 = t411 * t544;
t418 = t531 + t424;
t751 = t418 * t544;
t750 = t424 * t544;
t749 = t438 * t620;
t748 = t438 * t623;
t747 = t454 * t620;
t745 = t504 * t502;
t743 = t510 * t620;
t742 = t510 * t623;
t741 = t544 * t620;
t740 = t616 * t627;
t737 = t621 * t623;
t736 = t623 * t625;
t474 = t620 * t481;
t495 = pkin(3) * t552 + pkin(10) * t550;
t602 = t764 * t623;
t735 = t474 + (-t495 + t758) * t623 - t767 * t552 - qJD(4) * t602 + qJD(6) * t620;
t725 = t623 * t481 + t620 * t495;
t428 = t552 * qJ(5) + t725;
t704 = qJD(6) * t623;
t734 = t620 * t758 - t708 * t764 - t428 - t704;
t536 = (t620 * t622 + t624 * t736) * t714;
t697 = -pkin(9) * t620 - pkin(4);
t733 = -qJ(6) * t536 - t674 * t767 - (-qJ(6) * t709 - t589) * t623 - (qJ(6) * t708 - t704 + (-pkin(5) + t697) * qJD(3)) * t621 + t772;
t673 = t624 * t608;
t535 = t620 * t673 - t623 * t695;
t732 = -qJ(6) * t535 + (-pkin(9) * qJD(3) + qJ(6) * qJD(4)) * t737 + (qJD(6) * t621 + (-pkin(9) * qJD(4) + qJ(6) * qJD(3)) * t624) * t620 - t781;
t731 = t544 * t770 + t777;
t720 = -t621 * t570 + t624 * t571;
t648 = pkin(3) * t695 + t720;
t636 = qJ(5) * t536 + t648;
t642 = -pkin(9) - t770;
t705 = qJD(5) * t623;
t730 = -t535 * t767 - (qJD(4) * t769 + t705) * t621 - t642 * t709 + t636;
t710 = qJD(3) * t623;
t729 = -(-t621 * t710 - t624 * t708) * pkin(9) + t781;
t728 = -pkin(4) * t674 + t589 * t623 - t697 * t711 + t772;
t662 = pkin(4) * t620 - t759;
t727 = -t544 * t662 - t777;
t654 = pkin(9) + t662;
t663 = pkin(4) * t623 + t760;
t726 = pkin(4) * t535 - (qJD(4) * t663 - t705) * t621 - t654 * t709 - t636;
t565 = -pkin(2) * t763 - t773;
t581 = t621 * t763 + t624 * t739;
t487 = t580 * pkin(3) - t581 * pkin(10) + t565;
t639 = pkin(8) * t738 + t622 * t696;
t566 = pkin(9) * t763 + t639;
t721 = t624 * t566 + t621 * t567;
t489 = -pkin(10) * t738 + t721;
t724 = t620 * t487 + t623 * t489;
t722 = -t621 * t566 + t624 * t567;
t716 = t620 * t599 + t612;
t712 = qJD(2) * t622;
t703 = t524 * qJD(3);
t413 = qJ(6) * t504 + t423;
t702 = qJD(5) - t413;
t698 = pkin(10) * t708;
t431 = t580 * qJ(5) + t724;
t488 = pkin(3) * t738 - t722;
t694 = t619 * t712;
t692 = t544 * t708;
t687 = t487 * t623 - t620 * t489;
t611 = t620 * t766;
t685 = t599 * t623 - t611;
t683 = t544 * t623;
t682 = t625 * t661;
t681 = qJD(3) * t661;
t679 = t616 * t622 * t625 * MDP(4);
t646 = t525 * t711 - t541 * t709 - t621 * t561 - t624 * t562;
t437 = pkin(10) * t671 - t646;
t660 = pkin(8) * t670;
t450 = t510 * pkin(3) - pkin(10) * t629 + qJD(2) * t606 + t660;
t678 = t620 * t437 - t623 * t450 + t468 * t708 + t472 * t707;
t676 = -t566 * t709 - t567 * t711 + t624 * t572 - t621 * t574;
t669 = MDP(15) * t695;
t667 = pkin(1) * t784;
t528 = -qJ(5) * t624 + t716;
t665 = t620 * t709 - t535;
t664 = t623 * t709 - t536;
t402 = -t508 + t678;
t417 = -pkin(4) * t544 + t701;
t659 = t417 * t623 - t418 * t620;
t519 = t581 * t623 - t620 * t738;
t653 = qJ(5) * t519 - t488;
t645 = -t566 * t711 + t567 * t709 + t621 * t572 + t624 * t574;
t446 = pkin(10) * t694 + t645;
t516 = qJD(3) * t581 + t621 * t693;
t575 = t639 * qJD(2);
t460 = t516 * pkin(3) - t517 * pkin(10) + t575;
t652 = -t620 * t446 + t460 * t623 - t487 * t708 - t489 * t707;
t647 = t471 * t544 - t765;
t644 = -t623 * t437 - t620 * t450 - t468 * t707 + t472 * t708;
t643 = t623 * t446 + t620 * t460 + t487 * t707 - t489 * t708;
t641 = qJ(6) * t454 + t402;
t640 = t422 * t504 + t402;
t638 = pkin(3) * t694 + t676;
t401 = -t644 + t787;
t406 = t516 * qJ(5) + t580 * qJD(5) + t643;
t635 = pkin(1) * (-qJD(2) * t688 + t740);
t634 = t423 * t544 + t644;
t633 = t454 - t746;
t632 = -pkin(5) * t510 + t641;
t466 = -t581 * t708 + t620 * t694 + t623 * t775;
t630 = qJ(5) * t466 + qJD(5) * t519 + t638;
t615 = t624 * pkin(4);
t601 = t764 * t620;
t594 = -pkin(3) - t663;
t585 = pkin(3) - t769;
t568 = t654 * t621;
t563 = qJD(1) * t575;
t529 = t615 - t685;
t526 = t642 * t621;
t518 = t581 * t620 + t619 * t736;
t511 = t620 * t757 + t528;
t509 = pkin(5) * t624 + t611 + t615 + (-t599 - t757) * t623;
t465 = t581 * t707 + t620 * t775 - t623 * t694;
t459 = pkin(4) * t504 + t761;
t439 = pkin(4) * t518 - t653;
t434 = -t504 * t767 - t761;
t432 = -pkin(4) * t580 - t687;
t430 = -pkin(4) * t552 - t495 * t623 + t474;
t426 = -t518 * t767 + t653;
t419 = qJ(6) * t518 + t431;
t416 = -qJ(6) * t519 - t580 * t767 - t687;
t410 = -t544 * t767 + t702;
t409 = pkin(4) * t465 - t630;
t408 = -pkin(4) * t516 - t652;
t405 = -t465 * t767 + t630;
t399 = qJ(6) * t465 + qJD(6) * t518 + t406;
t398 = -qJ(6) * t466 - qJD(6) * t519 - t516 * t767 - t652;
t397 = t401 + t780;
t396 = -qJD(6) * t504 + t632;
t1 = [(MDP(6) * t693 - MDP(7) * t694) * (0.2e1 * t688 + qJD(2)) + (-t424 * t516 + t438 * t519 - t488 * t454 + t471 * t466 - t504 * t638 - t510 * t724 - t544 * t643 + t580 * t644) * MDP(24) + (t423 * t516 + t438 * t518 + t488 * t455 + t471 * t465 - t502 * t638 + t510 * t687 + t544 * t652 - t580 * t678) * MDP(23) + (-t562 * t763 - t574 * t656 + t625 * t667) * MDP(10) + (-t563 * t763 - t575 * t656 + t622 * t667) * MDP(9) + (-t482 * t694 + t524 * t517 + t575 * t552 + t563 * t581 + t565 * t629 + t645 * t661 - t646 * t738 - t671 * t721) * MDP(17) + (-t517 * t661 + t552 * t694 + t581 * t671 - t629 * t738) * MDP(13) + (-t676 * t661 + t575 * t550 + t565 * t510 + t563 * t580 + t524 * t516 + (t677 * t625 + (qJD(1) * t722 + t481) * t712) * t619) * MDP(16) + (t516 * t661 + (t510 * t625 + (-qJD(1) * t580 - t550) * t712) * t619) * MDP(14) + 0.2e1 * t679 * t699 + t783 * t784 + (-t402 * t580 + t407 * t518 - t408 * t544 + t409 * t502 - t417 * t516 + t422 * t465 - t432 * t510 + t439 * t455) * MDP(25) + (-t396 * t580 - t398 * t544 - t400 * t518 - t405 * t502 - t410 * t516 - t412 * t465 - t416 * t510 - t426 * t455) * MDP(29) + (t401 * t580 + t406 * t544 - t407 * t519 - t409 * t504 + t418 * t516 - t422 * t466 + t431 * t510 + t439 * t454) * MDP(27) + (-t455 * t580 - t465 * t544 - t502 * t516 - t510 * t518) * MDP(21) + (-t454 * t580 + t466 * t544 + t504 * t516 + t510 * t519) * MDP(20) + (t397 * t580 + t399 * t544 + t400 * t519 + t405 * t504 + t411 * t516 + t412 * t466 + t419 * t510 - t426 * t454) * MDP(30) + (t510 * t580 + t516 * t544) * MDP(22) + (-t616 * t713 - t619 * t661) * MDP(15) * t712 + (-t396 * t519 + t397 * t518 - t398 * t504 + t399 * t502 - t410 * t466 + t411 * t465 + t416 * t454 + t419 * t455) * MDP(31) + (t454 * t518 - t455 * t519 - t465 * t504 - t466 * t502) * MDP(19) + (-t401 * t518 + t402 * t519 - t406 * t502 + t408 * t504 + t417 * t466 - t418 * t465 - t431 * t455 - t432 * t454) * MDP(26) + (-t454 * t519 + t466 * t504) * MDP(18) + (t401 * t431 + t402 * t432 + t406 * t418 + t407 * t439 + t408 * t417 + t409 * t422) * MDP(28) + (t396 * t416 + t397 * t419 + t398 * t410 + t399 * t411 + t400 * t426 + t405 * t412) * MDP(32) + (t552 * t517 + t581 * t629) * MDP(11) + (-t581 * t510 - t552 * t516 - t517 * t550 - t580 * t629) * MDP(12); (-t716 * t510 + t648 * t504 - t471 * t536 + t785 * t544 + (t471 * t710 - t644 + (qJD(3) * t504 + t692) * pkin(9)) * t624 + (-t471 * t708 + t748 + t661 * t424 + (t544 * t710 - t454) * pkin(9)) * t621) * MDP(24) + (-pkin(2) * t510 + t621 * t703 + t720 * t661 - t573 * t550 + (pkin(9) * t681 - t563) * t624 + (-t481 * t622 + (-pkin(9) * t712 - t524 * t625) * t621) * t714) * MDP(16) + (-t624 * t681 + (t624 * t682 + (qJD(2) * t621 - t552) * t622) * t714) * MDP(13) + (t621 * t681 + (-t621 * t682 + (qJD(2) * t624 + t550) * t622) * t714) * MDP(14) + (-pkin(2) * t629 + t482 * t695 - t524 * t673 - t573 * t552 + t563 * t621 + t624 * t703 - t671 * t766 + (-pkin(9) * t711 - t719) * t661) * MDP(17) + (t685 * t510 + t648 * t502 - t471 * t535 + (-t790 * t623 + t788) * t544 + (t678 + (pkin(9) * t502 + t471 * t620) * qJD(3)) * t624 + (t471 * t707 + t749 - t661 * t423 + (qJD(3) * t741 + t455) * pkin(9)) * t621) * MDP(23) + (-t621 * t510 + t624 * t629 + t789 * t552 + (t673 - t709) * t550) * MDP(12) + ((-MDP(6) * t625 + MDP(7) * t622) * t619 * t763 - t679) * t627 + (-t401 * t624 + t454 * t568 + t510 * t528 - t729 * t544 + t726 * t504 - t664 * t422 + (-t418 * t661 + t422 * t708 - t753) * t621) * MDP(27) + (t402 * t624 + t455 * t568 - t510 * t529 + t728 * t544 - t726 * t502 + t665 * t422 + (t417 * t661 + t422 * t707 + t754) * t621) * MDP(25) + (-t397 * t624 - t454 * t526 + t510 * t511 + t732 * t544 - t730 * t504 + t664 * t412 + (-t411 * t661 - t412 * t708 + t755) * t621) * MDP(30) + (t396 * t624 - t455 * t526 - t509 * t510 + t733 * t544 + t730 * t502 - t665 * t412 + (t410 * t661 - t412 * t707 - t756) * t621) * MDP(29) + (t502 * t536 + t504 * t535 + (-t502 * t623 - t504 * t620) * t709 + (t747 - t455 * t623 + (t502 * t620 - t504 * t623) * qJD(4)) * t621) * MDP(19) + (t454 * t624 + t664 * t544 + (-t504 * t661 - t692 + t742) * t621) * MDP(20) + (t455 * t624 - t665 * t544 + (t502 * t661 - t544 * t707 - t743) * t621) * MDP(21) + (-t454 * t737 + (-t621 * t708 + t664) * t504) * MDP(18) + (t410 * t536 - t411 * t535 + t454 * t509 + t455 * t511 + t733 * t504 + t732 * t502 + (-t410 * t623 + t411 * t620) * t709 + (-t396 * t623 + t397 * t620 + (t410 * t620 + t411 * t623) * qJD(4)) * t621) * MDP(31) + (t396 * t509 + t397 * t511 + t400 * t526 - t410 * t733 + t411 * t732 - t412 * t730) * MDP(32) + (-t417 * t536 + t418 * t535 - t454 * t529 - t455 * t528 - t728 * t504 + t729 * t502 + t659 * t709 + (-t401 * t620 + t402 * t623 + (-t417 * t620 - t418 * t623) * qJD(4)) * t621) * MDP(26) + (t401 * t528 + t402 * t529 + t407 * t568 - t417 * t728 - t418 * t729 - t422 * t726) * MDP(28) + t661 * t669 + (-qJD(3) * t621 ^ 2 * t695 + ((qJD(3) * t656 + t670) * t621 - t661 * t552) * t624) * MDP(11) + t740 * t783 + (pkin(8) * t671 + t570 * t656 + t625 * t635) * MDP(10) + (-t544 * t621 * t661 - t510 * t624) * MDP(22) + (t573 * t656 + t622 * t635 - t660) * MDP(9); -t550 ^ 2 * MDP(12) + (-t550 * t608 + t657) * MDP(13) - t658 * MDP(14) + qJD(2) * t669 + (-t482 * t661 - t677) * MDP(16) + (-t481 * t661 + t524 * t550 + t646) * MDP(17) + (t504 * t683 - t747) * MDP(18) + (t620 * t778 + t623 * t779) * MDP(19) + (t544 * t683 + t743) * MDP(20) + (-t544 * t741 + t742) * MDP(21) + (-pkin(3) * t455 - t748 - t482 * t502 + (t474 + (-pkin(10) * qJD(4) - t495) * t623) * t544 + t647 * t620) * MDP(23) + (pkin(3) * t454 + t749 - t482 * t504 + (t698 + t725) * t544 + t647 * t623) * MDP(24) + (-t753 + t455 * t594 + (-pkin(10) * t707 + t430) * t544 - t727 * t502 + t771 * t620) * MDP(25) + (t428 * t502 - t430 * t504 + (t401 + t544 * t417 + (qJD(4) * t504 - t455) * pkin(10)) * t623 + (t402 - t751 + (qJD(4) * t502 - t454) * pkin(10)) * t620) * MDP(26) + (-t754 + t454 * t594 + (-t428 - t698) * t544 + t727 * t504 - t771 * t623) * MDP(27) + (t407 * t594 - t417 * t430 - t418 * t428 - t727 * t422 + (qJD(4) * t659 + t401 * t623 + t402 * t620) * pkin(10)) * MDP(28) + (-t412 * t741 - t455 * t585 + t502 * t731 - t510 * t601 + t544 * t735 + t755) * MDP(29) + (t412 * t683 - t454 * t585 - t504 * t731 + t510 * t602 + t544 * t734 + t756) * MDP(30) + (t454 * t601 + t455 * t602 + t735 * t504 + t734 * t502 + (-t410 * t544 - t397) * t623 + (-t396 + t752) * t620) * MDP(31) + (t396 * t601 + t397 * t602 + t400 * t585 - t410 * t735 + t411 * t734 - t412 * t731) * MDP(32) + (MDP(11) * t550 + MDP(12) * t552 - t608 * MDP(14) - t524 * MDP(16) - t504 * MDP(20) + t502 * MDP(21) - t544 * MDP(22) - t423 * MDP(23) + t424 * MDP(24) + t417 * MDP(25) - t418 * MDP(27) + t410 * MDP(29) - t411 * MDP(30)) * t552; MDP(18) * t745 + (t501 - t768) * MDP(19) - t633 * MDP(20) + (-t455 + t744) * MDP(21) + t510 * MDP(22) + (-t471 * t504 - t678 + t750) * MDP(23) + (t471 * t502 + t634) * MDP(24) + (-t459 * t502 + t508 - t640 + t750) * MDP(25) + (pkin(4) * t454 - t762 + (t418 - t424) * t504 + (t417 - t701) * t502) * MDP(26) + (-t422 * t502 + t459 * t504 - t634 + t776) * MDP(27) + (-pkin(4) * t402 + qJ(5) * t401 - t417 * t424 + t418 * t701 - t422 * t459) * MDP(28) + (t414 * t544 + t434 * t502 + (pkin(5) + t767) * t510 + t782 - t641) * MDP(29) + (t412 * t502 - t413 * t544 - t434 * t504 - t644 + t776 + t780) * MDP(30) + (t762 - t454 * t767 + (-t411 + t414) * t504 + (-t410 + t702) * t502) * MDP(31) + (qJ(5) * t397 - t396 * t767 - t410 * t414 + t411 * t702 - t412 * t434) * MDP(32); (t640 - t751) * MDP(28) + (t632 - t752 - t782) * MDP(32) + (MDP(25) + MDP(29)) * (-t510 + t745) + (MDP(27) + MDP(30)) * (-t544 ^ 2 - t501) + (-MDP(26) + MDP(31)) * t633; t778 * MDP(29) + t779 * MDP(30) + (-t501 - t768) * MDP(31) + (t410 * t504 - t411 * t502 + t400) * MDP(32);];
tauc  = t1;