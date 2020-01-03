% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RRRRR6
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
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 12:16
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RRRRR6_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR6_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR6_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR6_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR6_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRRR6_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRRR6_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 12:14:48
% EndTime: 2020-01-03 12:15:08
% DurationCPUTime: 12.92s
% Computational Cost: add. (107289->672), mult. (67925->810), div. (0->0), fcn. (62840->10), ass. (0->433)
t568 = qJ(1) + qJ(2);
t561 = cos(t568);
t567 = qJ(3) + qJ(4);
t563 = qJ(5) + t567;
t553 = sin(t563);
t554 = cos(t563);
t496 = rSges(6,1) * t553 + rSges(6,2) * t554;
t558 = sin(t567);
t776 = pkin(4) * t558;
t569 = sin(qJ(3));
t777 = pkin(3) * t569;
t521 = -t776 - t777;
t599 = t496 - t521;
t377 = t599 * t561;
t559 = sin(t568);
t627 = t496 + t776;
t881 = t627 * t559;
t898 = t377 * t881;
t560 = cos(t567);
t511 = rSges(5,1) * t558 + rSges(5,2) * t560;
t469 = t511 * t561;
t628 = t511 + t777;
t879 = t628 * t559;
t364 = t879 * t469;
t453 = t496 * t561;
t349 = t881 * t453;
t760 = Icges(6,4) * t553;
t495 = Icges(6,1) * t554 - t760;
t415 = -Icges(6,5) * t561 + t495 * t559;
t718 = t554 * t559;
t370 = t415 * t718;
t717 = t554 * t561;
t721 = t553 * t561;
t412 = Icges(6,5) * t717 - Icges(6,6) * t721 + Icges(6,3) * t559;
t517 = Icges(6,4) * t721;
t416 = Icges(6,1) * t717 + Icges(6,5) * t559 - t517;
t414 = Icges(6,4) * t717 - Icges(6,2) * t721 + Icges(6,6) * t559;
t744 = t414 * t553;
t604 = t416 * t554 - t744;
t897 = -t559 * t412 - t561 * t604 - t370;
t761 = Icges(5,4) * t558;
t510 = Icges(5,1) * t560 - t761;
t428 = -Icges(5,5) * t561 + t510 * t559;
t706 = t559 * t560;
t382 = t428 * t706;
t701 = t560 * t561;
t713 = t558 * t561;
t425 = Icges(5,5) * t701 - Icges(5,6) * t713 + Icges(5,3) * t559;
t524 = Icges(5,4) * t713;
t429 = Icges(5,1) * t701 + Icges(5,5) * t559 - t524;
t427 = Icges(5,4) * t701 - Icges(5,2) * t713 + Icges(5,6) * t559;
t740 = t427 * t558;
t602 = t429 * t560 - t740;
t896 = -t559 * t425 - t561 * t602 - t382;
t571 = cos(qJ(3));
t564 = t571 * pkin(3);
t555 = t564 + pkin(2);
t775 = pkin(4) * t560;
t520 = t555 + t775;
t573 = -pkin(8) - pkin(7);
t566 = -pkin(9) + t573;
t722 = t553 * t559;
t643 = -rSges(6,2) * t722 - t561 * rSges(6,3);
t770 = rSges(6,1) * t554;
t347 = t561 * t566 + (t520 + t770) * t559 + t643;
t774 = sin(qJ(1)) * pkin(1);
t334 = t347 + t774;
t895 = -t334 + t347;
t489 = t561 * t520;
t619 = rSges(6,1) * t717 - rSges(6,2) * t721;
t348 = t489 + (rSges(6,3) - t566) * t559 + t619;
t565 = cos(qJ(1)) * pkin(1);
t335 = t565 + t348;
t894 = -t335 + t348;
t714 = t558 * t559;
t642 = -rSges(5,2) * t714 - t561 * rSges(5,3);
t693 = t561 * t573;
t771 = rSges(5,1) * t560;
t365 = t693 + (t555 + t771) * t559 + t642;
t356 = t365 + t774;
t893 = -t356 + t365;
t525 = t561 * t555;
t620 = rSges(5,1) * t701 - rSges(5,2) * t713;
t366 = t525 + (rSges(5,3) - t573) * t559 + t620;
t357 = t565 + t366;
t892 = -t357 + t366;
t491 = Icges(6,5) * t554 - Icges(6,6) * t553;
t733 = t491 * t559;
t411 = -Icges(6,3) * t561 + t733;
t891 = t559 * t411 + t415 * t717;
t506 = Icges(5,5) * t560 - Icges(5,6) * t558;
t730 = t506 * t559;
t424 = -Icges(5,3) * t561 + t730;
t890 = t559 * t424 + t428 * t701;
t544 = Icges(6,4) * t554;
t493 = -Icges(6,2) * t553 + t544;
t871 = Icges(6,1) * t553 + t544;
t889 = t493 + t871;
t545 = Icges(5,4) * t560;
t508 = -Icges(5,2) * t558 + t545;
t870 = Icges(5,1) * t558 + t545;
t888 = t508 + t870;
t562 = Icges(4,4) * t571;
t531 = -Icges(4,2) * t569 + t562;
t869 = Icges(4,1) * t569 + t562;
t887 = t531 + t869;
t846 = m(4) / 0.2e1;
t845 = m(5) / 0.2e1;
t844 = m(6) / 0.2e1;
t829 = -t559 / 0.2e1;
t885 = t559 / 0.2e1;
t828 = -t561 / 0.2e1;
t826 = m(3) * (-t565 * (rSges(3,1) * t559 + rSges(3,2) * t561) + t774 * (t561 * rSges(3,1) - rSges(3,2) * t559));
t772 = rSges(4,1) * t571;
t536 = -rSges(4,2) * t569 + t772;
t882 = t536 * t846;
t880 = t627 * t561;
t878 = t628 * t561;
t556 = t559 ^ 2;
t557 = t561 ^ 2;
t637 = t556 + t557;
t513 = -rSges(5,2) * t558 + t771;
t726 = t513 * t561;
t326 = t365 * t726;
t452 = t496 * t559;
t490 = t559 * t521;
t379 = t490 - t452;
t669 = t379 * t880 + t898;
t497 = -rSges(6,2) * t553 + t770;
t626 = -t497 - t775;
t405 = t626 * t559;
t470 = t561 * t497;
t407 = pkin(4) * t701 + t470;
t676 = t407 * t347 + t405 * t348;
t742 = t878 * t511;
t750 = t366 * t513;
t683 = (t669 + t676) * t844 + (t326 - t364 + (t742 - t750) * t559) * t845;
t468 = t511 * t559;
t663 = -t468 * t878 + t364;
t375 = t599 * t559;
t672 = t375 * t880 - t898;
t727 = t513 * t559;
t684 = (t672 + t676) * t844 + (-t366 * t727 + t326 + t663) * t845;
t877 = t683 - t684;
t318 = t356 * t726;
t677 = t407 * t334 + t405 * t335;
t752 = t357 * t513;
t685 = (t669 + t677) * t844 + (t318 - t364 + (t742 - t752) * t559) * t845;
t686 = (t672 + t677) * t844 + (-t357 * t727 + t318 + t663) * t845;
t876 = t685 - t686;
t827 = t561 / 0.2e1;
t875 = t827 + t828;
t534 = rSges(4,1) * t569 + rSges(4,2) * t571;
t485 = t534 * t559;
t486 = t534 * t561;
t172 = t334 * t348 - t347 * t335;
t190 = t356 * t366 - t365 * t357;
t551 = t561 * pkin(7);
t705 = t559 * t569;
t639 = -rSges(4,2) * t705 - t561 * rSges(4,3);
t385 = -t551 + (pkin(2) + t772) * t559 + t639;
t373 = t385 + t774;
t694 = t561 * t571;
t695 = t561 * t569;
t597 = rSges(4,1) * t694 - rSges(4,2) * t695 + rSges(4,3) * t559;
t638 = t561 * pkin(2) + t559 * pkin(7);
t386 = t597 + t638;
t374 = t386 + t565;
t205 = t373 * t386 - t385 * t374;
t387 = t559 * (t693 + t551 + (-pkin(2) + t555) * t559);
t397 = t559 * (rSges(5,1) * t706 + t642);
t410 = t559 * t573 - t525 + t638;
t430 = t559 * rSges(5,3) + t620;
t213 = t387 + t397 + (-t410 + t430) * t561;
t352 = -t559 * t468 - t469 * t561;
t135 = t213 * t352 + t726 * t878 + t727 * t879;
t421 = rSges(6,3) * t559 + t619;
t636 = t566 - t573;
t661 = -t559 * t636 + t421 + t489 - t525;
t392 = t559 * (rSges(6,1) * t718 + t643);
t662 = t559 * (t636 * t561 + (t520 - t555) * t559) + t392;
t161 = t387 + (-t410 + t661) * t561 + t662;
t423 = t559 * t452;
t338 = -t453 * t561 - t423;
t287 = -t637 * t776 + t338;
t670 = -t375 * t405 + t377 * t407;
t88 = t161 * t287 + t670;
t868 = m(5) * t135 + m(6) * t88;
t635 = qJD(1) + qJD(2);
t688 = (t894 * t880 + t895 * t881) * t844 + (t893 * t559 + t892 * t561) * t511 * t845;
t193 = -t334 * t881 - t335 * t880;
t197 = -t347 * t881 - t348 * t880;
t209 = -t356 * t468 - t357 * t469;
t214 = -t365 * t468 - t366 * t469;
t866 = (t197 + t193) * t844 + (t214 + t209) * t845;
t631 = (t892 * t878 + t893 * t879) * t845 + ((-t374 + t386) * t561 + (-t373 + t385) * t559) * t534 * t846 + (t895 * t375 + t894 * t377) * t844;
t189 = t334 * t379 - t377 * t335;
t192 = t347 * t379 - t377 * t348;
t201 = -t356 * t879 - t357 * t878;
t204 = -t365 * t879 - t366 * t878;
t229 = -t373 * t485 - t374 * t486;
t236 = -t385 * t485 - t386 * t486;
t864 = (t204 + t201) * t845 + (t236 + t229) * t846 + (t192 + t189) * t844;
t656 = Icges(6,2) * t717 - t416 + t517;
t492 = Icges(6,2) * t554 + t760;
t657 = -t492 * t559 + t415;
t658 = t561 * t871 + t414;
t413 = -Icges(6,6) * t561 + t493 * t559;
t659 = -t559 * t871 - t413;
t863 = t553 * (-t559 * t656 - t561 * t657) + t554 * (t559 * t658 + t561 * t659);
t862 = t889 * t553 + (t492 - t495) * t554;
t652 = Icges(5,2) * t701 - t429 + t524;
t507 = Icges(5,2) * t560 + t761;
t653 = -t507 * t559 + t428;
t654 = t561 * t870 + t427;
t426 = -Icges(5,6) * t561 + t508 * t559;
t655 = -t559 * t870 - t426;
t861 = t558 * (-t559 * t652 - t561 * t653) + t560 * (t559 * t654 + t561 * t655);
t860 = t888 * t558 + (t507 - t510) * t560;
t762 = Icges(4,4) * t569;
t530 = Icges(4,2) * t571 + t762;
t533 = Icges(4,1) * t571 - t762;
t859 = t887 * t569 + (t530 - t533) * t571;
t540 = Icges(4,4) * t695;
t444 = Icges(4,1) * t694 + Icges(4,5) * t559 - t540;
t648 = -Icges(4,2) * t694 + t444 - t540;
t442 = Icges(4,4) * t694 - Icges(4,2) * t695 + Icges(4,6) * t559;
t650 = t561 * t869 + t442;
t858 = -t569 * t648 - t571 * t650;
t443 = -Icges(4,5) * t561 + t533 * t559;
t649 = -t530 * t559 + t443;
t441 = -Icges(4,6) * t561 + t531 * t559;
t651 = t559 * t869 + t441;
t857 = -t569 * t649 - t571 * t651;
t856 = t887 * t571 / 0.2e1 + (t533 / 0.2e1 - t530 / 0.2e1) * t569;
t237 = -t561 * t424 - t426 * t714 + t382;
t383 = t429 * t706;
t238 = t561 * t425 + t427 * t714 - t383;
t739 = t428 * t560;
t741 = t426 * t558;
t855 = (-t237 * t561 - t238 * t559) * t885 + ((t383 + (t424 - t740) * t559 - t890) * t559 + ((t424 + t602) * t561 + (t739 + t741) * t559 + t896) * t561) * t829 + ((-t238 + (t425 - t739) * t561 + t890) * t561 + (t237 + (t425 + t741) * t559 + t896) * t559) * t828;
t854 = t888 * t560 / 0.2e1 + (t510 / 0.2e1 - t507 / 0.2e1) * t558;
t224 = -t561 * t411 - t413 * t722 + t370;
t371 = t416 * t718;
t225 = t561 * t412 + t414 * t722 - t371;
t743 = t415 * t554;
t745 = t413 * t553;
t624 = (-t224 * t561 - t225 * t559) * t885 + ((t371 + (t411 - t744) * t559 - t891) * t559 + ((t411 + t604) * t561 + (t743 + t745) * t559 + t897) * t561) * t829 + ((-t225 + (t412 - t743) * t561 + t891) * t561 + (t224 + (t412 + t745) * t559 + t897) * t559) * t828;
t622 = t889 * t554 / 0.2e1 + (-t492 / 0.2e1 + t495 / 0.2e1) * t553;
t852 = 4 * qJD(1);
t850 = 4 * qJD(2);
t849 = 2 * qJD(3);
t848 = 2 * qJD(4);
t199 = t561 * t661 + t662;
t681 = t199 * t338 + t470 * t880;
t682 = t161 * t338 + t377 * t470;
t731 = t497 * t559;
t840 = m(6) * ((t375 + t881) * t731 + t681 + t682);
t313 = t421 * t561 + t392;
t207 = t313 * t287;
t354 = t407 * t453;
t746 = t405 * t496;
t838 = m(6) * (t207 + t354 + (t375 * t497 - t746) * t559 + t682);
t228 = t559 * (pkin(3) * t705 + t490) - t423 + (-(-t521 - t777) * t561 - t453) * t561;
t582 = t354 + (t497 * t881 - t746) * t559 + t681;
t836 = m(6) * (t228 * t313 + t582);
t666 = -t405 * t881 + t407 * t880;
t832 = m(6) * (t199 * t228 + t666);
t822 = m(4) * t205;
t820 = m(4) * t229;
t819 = m(4) * t236;
t809 = m(5) * t190;
t320 = t430 * t561 + t397;
t196 = t637 * t511 * t513 + t320 * t352;
t194 = m(5) * t196;
t807 = m(5) * t201;
t806 = m(5) * t204;
t805 = m(5) * t209;
t804 = m(5) * t214;
t200 = -t334 * t452 - t335 * t453;
t202 = -t347 * t452 - t348 * t453;
t799 = m(6) * (t202 + t200);
t795 = m(6) * (t895 * t559 + t894 * t561) * t496;
t288 = t334 * t470;
t616 = -t335 * t731 + t288;
t667 = t375 * t453 - t377 * t452;
t794 = m(6) * (t616 + t667);
t295 = t347 * t470;
t615 = -t348 * t731 + t295;
t793 = m(6) * (t615 + t667);
t332 = t379 * t453;
t749 = t377 * t496;
t755 = t335 * t497;
t792 = m(6) * (t288 + t332 + (t749 - t755) * t559);
t664 = -t452 * t880 + t349;
t791 = m(6) * (t616 + t664);
t753 = t348 * t497;
t790 = m(6) * (t295 + t332 + (t749 - t753) * t559);
t747 = t880 * t496;
t789 = m(6) * (t288 - t349 + (t747 - t755) * t559);
t788 = m(6) * (t615 + t664);
t787 = m(6) * (t295 - t349 + (t747 - t753) * t559);
t786 = m(6) * t172;
t186 = t637 * t496 * t497 + t313 * t338;
t784 = m(6) * t186;
t783 = m(6) * t189;
t782 = m(6) * t192;
t781 = m(6) * t193;
t780 = m(6) * t197;
t779 = m(6) * t200;
t778 = m(6) * t202;
t606 = Icges(6,5) * t553 + Icges(6,6) * t554;
t445 = t559 * t606;
t446 = t606 * t561;
t773 = (t556 * t446 + (-t559 * t445 + t863) * t561) * t829 + (-t557 * t445 + (t561 * t446 - t863) * t559) * t828;
t738 = t441 * t569;
t737 = t442 * t569;
t736 = t443 * t571;
t735 = t453 * t496;
t734 = t469 * t511;
t529 = Icges(4,5) * t571 - Icges(4,6) * t569;
t725 = t529 * t559;
t704 = t559 * t571;
t674 = (t375 + t379) * t377;
t634 = t836 / 0.2e1 + t773;
t632 = -t784 + t773;
t629 = t199 * t287 + t666;
t625 = t452 * t453;
t607 = Icges(5,5) * t558 + Icges(5,6) * t560;
t462 = t559 * t607;
t463 = t607 * t561;
t623 = (-t557 * t462 + (t561 * t463 - t861) * t559) * t828 + (t556 * t463 + (-t559 * t462 + t861) * t561) * t829 + t773;
t621 = t637 * t777;
t613 = t194 + t623;
t612 = t799 / 0.2e1 + t622;
t608 = Icges(4,5) * t569 + Icges(4,6) * t571;
t600 = t444 * t571 - t737;
t89 = t375 * t731 + t682;
t112 = t731 * t881 + t681;
t594 = t624 + t855;
t593 = -t624 + (t553 * t658 + t554 * t656 + t561 * t862 - t733) * t829 + (-t491 * t561 + t553 * t659 + t554 * t657 - t559 * t862) * t828;
t592 = -t622 + t875 * (t414 * t554 + t416 * t553);
t591 = t622 + t854;
t583 = t591 + t866;
t581 = t591 + t856;
t580 = t581 + t864;
t579 = t593 - t855 + (t558 * t654 + t560 * t652 + t561 * t860 - t730) * t829 + (-t506 * t561 + t558 * t655 - t559 * t860 + t560 * t653) * t828;
t578 = t592 - t854 + t875 * (t427 * t560 + t429 * t558);
t576 = t579 * qJD(4);
t575 = t578 - t856 + t875 * (t571 * t442 + t569 * t444);
t400 = t443 * t704;
t439 = -Icges(4,3) * t561 + t725;
t255 = -t561 * t439 - t441 * t705 + t400;
t401 = t444 * t704;
t440 = Icges(4,5) * t694 - Icges(4,6) * t695 + Icges(4,3) * t559;
t256 = t440 * t561 + t442 * t705 - t401;
t187 = -t255 * t561 - t256 * t559;
t402 = t441 * t695;
t257 = -t439 * t559 - t443 * t694 + t402;
t258 = t559 * t440 + t561 * t600;
t188 = -t257 * t561 - t258 * t559;
t78 = (t257 + t401 - t402 + (t439 - t737) * t559) * t559 + (-t400 - t258 + (t439 + t600) * t561 + (t736 + t738) * t559) * t561;
t79 = (-t256 + t402 + (t440 - t736) * t561) * t561 + (t255 - t400 + (t440 + t738) * t559) * t559;
t574 = (t78 * t885 + t579 + (-t529 * t561 - t559 * t859 - t569 * t651 + t571 * t649) * t828 + (t188 + t79) * t827 + (t561 * t859 + t569 * t650 - t571 * t648 + t187 - t725) * t829) * qJD(3);
t543 = pkin(3) * t694;
t480 = t608 * t561;
t479 = t559 * t608;
t434 = t543 + t726;
t432 = (-t513 - t564) * t559;
t381 = t468 * t469;
t378 = t543 + t407;
t376 = (t626 - t564) * t559;
t311 = t352 - t621;
t215 = -t621 + t228;
t156 = t622 + t778;
t150 = t622 + t779;
t147 = t787 / 0.2e1;
t146 = t788 / 0.2e1;
t141 = t789 / 0.2e1;
t140 = t790 / 0.2e1;
t139 = t791 / 0.2e1;
t134 = t792 / 0.2e1;
t133 = t793 / 0.2e1;
t130 = t794 / 0.2e1;
t123 = t795 / 0.2e1;
t85 = t591 + t780 + t804;
t81 = t591 + t781 + t805;
t67 = t786 + t809 + t822 + t826;
t63 = t838 / 0.2e1;
t58 = t581 + t782 + t806 + t819;
t57 = t581 + t783 + t807 + t820;
t46 = t840 / 0.2e1;
t45 = -t795 / 0.2e1 + t612;
t44 = t123 + t612;
t43 = t773 + t784;
t42 = t43 * qJD(5);
t41 = m(6) * t112 + t773;
t37 = m(6) * t89 + t773;
t36 = t123 - t799 / 0.2e1 + t592;
t35 = t583 + t688;
t34 = t583 - t688;
t33 = t613 + t832;
t31 = t624 * qJD(5);
t30 = t623 + t868;
t29 = t578 + t688 - t866;
t28 = t63 - t840 / 0.2e1 + t634;
t27 = t46 - t838 / 0.2e1 + t634;
t26 = t46 + t63 - t836 / 0.2e1 + t773;
t25 = t580 + t631;
t24 = t580 - t631;
t23 = t146 - t787 / 0.2e1 + t624;
t22 = t147 - t788 / 0.2e1 + t624;
t21 = t139 - t789 / 0.2e1 + t624;
t20 = t141 - t791 / 0.2e1 + t624;
t19 = t133 - t790 / 0.2e1 + t624;
t18 = t140 - t793 / 0.2e1 + t624;
t17 = t130 - t792 / 0.2e1 + t624;
t16 = t134 - t794 / 0.2e1 + t624;
t15 = t146 + t147 + t593;
t14 = t139 + t141 + t593;
t13 = t575 + t631 - t864;
t12 = t133 + t140 + t593;
t11 = t130 + t134 + t593;
t9 = t594 * qJD(4);
t8 = t594 + t877;
t7 = t594 - t877;
t6 = (-t188 / 0.2e1 - t79 / 0.2e1) * t561 + (-t78 / 0.2e1 + t187 / 0.2e1) * t559 + t594;
t5 = t6 * qJD(3);
t4 = t594 + t876;
t3 = t594 - t876;
t2 = t579 + t683 + t684;
t1 = t579 + t685 + t686;
t10 = [qJD(2) * t67 + qJD(3) * t57 + qJD(4) * t81 + qJD(5) * t150, t67 * qJD(1) + t25 * qJD(3) + t35 * qJD(4) + t44 * qJD(5) + 0.2e1 * (t826 / 0.2e1 + t172 * t844 + t190 * t845 + t205 * t846) * qJD(2), t57 * qJD(1) + t25 * qJD(2) + t574 + t1 * qJD(4) + t11 * qJD(5) + ((t373 * t561 - t374 * t559) * t882 + (t356 * t434 + t357 * t432) * t845 + (t334 * t378 + t335 * t376 + t674) * t844) * t849, t81 * qJD(1) + t35 * qJD(2) + t1 * qJD(3) + t576 + t14 * qJD(5) + ((t318 - t381 + (t734 - t752) * t559) * t845 + t677 * t844) * t848, t150 * qJD(1) + t44 * qJD(2) + t11 * qJD(3) + t14 * qJD(4) + ((t288 + (t735 - t755) * t559 - t625) * m(6) + t593) * qJD(5); t24 * qJD(3) + t34 * qJD(4) + t45 * qJD(5) + (-t786 / 0.4e1 - t809 / 0.4e1 - t822 / 0.4e1 - t826 / 0.4e1) * t852, qJD(3) * t58 + qJD(4) * t85 + qJD(5) * t156, t24 * qJD(1) + t58 * qJD(2) + t574 + t2 * qJD(4) + t12 * qJD(5) + ((t385 * t561 - t386 * t559) * t882 + (t365 * t434 + t366 * t432) * t845 + (t347 * t378 + t348 * t376 + t674) * t844) * t849, t34 * qJD(1) + t85 * qJD(2) + t2 * qJD(3) + t576 + t15 * qJD(5) + (t676 * t844 + (t326 - t381 + (t734 - t750) * t559) * t845) * t848, t45 * qJD(1) + t156 * qJD(2) + t12 * qJD(3) + t15 * qJD(4) + ((t295 + (t735 - t753) * t559 - t625) * m(6) + t593) * qJD(5); t575 * qJD(1) + t13 * qJD(2) + t5 + t3 * qJD(4) + t17 * qJD(5) + (-t820 / 0.4e1 - t807 / 0.4e1 - t783 / 0.4e1) * t852, t13 * qJD(1) + t575 * qJD(2) + t5 + t7 * qJD(4) + t19 * qJD(5) + (-t819 / 0.4e1 - t782 / 0.4e1 - t806 / 0.4e1) * t850, (m(6) * (t161 * t215 - t375 * t376 + t377 * t378) + m(5) * (t213 * t311 - t432 * t879 + t434 * t878) + m(4) * ((t561 * t597 + t559 * (rSges(4,1) * t704 + t639)) * (-t485 * t559 - t486 * t561) + t637 * t536 * t534) + (t556 * t480 + (t857 * t561 + (-t479 - t858) * t559) * t561) * t829 + (-t557 * t479 + (t858 * t559 + (t480 - t857) * t561) * t559) * t828 + t623) * qJD(3) + t30 * qJD(4) + t37 * qJD(5) + t635 * t6, t3 * qJD(1) + t7 * qJD(2) + t30 * qJD(3) + t26 * qJD(5) + ((t629 + t88) * t844 + (t135 + t196) * t845) * t848 + (t623 - t194 - t832) * qJD(4), t17 * qJD(1) + t19 * qJD(2) + t37 * qJD(3) + t26 * qJD(4) + (m(6) * (t89 + t186) + t632) * qJD(5); t578 * qJD(1) + t29 * qJD(2) + t4 * qJD(3) + t9 + t21 * qJD(5) + (-t781 / 0.4e1 - t805 / 0.4e1) * t852, t29 * qJD(1) + t8 * qJD(3) + t9 + t23 * qJD(5) + (-t804 / 0.4e1 - t780 / 0.4e1) * t850 + t578 * qJD(2), t4 * qJD(1) + t8 * qJD(2) + t33 * qJD(4) + t27 * qJD(5) + ((t161 * t228 + t199 * t215 - t376 * t881 + t378 * t880 + t670) * t844 + (t311 * t320 + (-t432 * t559 + t434 * t561) * t511 + t135) * t845) * t849 + (t623 - t868) * qJD(3), t33 * qJD(3) + (m(6) * t629 + t613) * qJD(4) + t41 * qJD(5) + t635 * t594, t21 * qJD(1) + t23 * qJD(2) + t27 * qJD(3) + t41 * qJD(4) + (m(6) * (t112 + t186) + t632) * qJD(5); (t592 - t779) * qJD(1) + t36 * qJD(2) + t16 * qJD(3) + t20 * qJD(4) + t31, t36 * qJD(1) + (t592 - t778) * qJD(2) + t18 * qJD(3) + t22 * qJD(4) + t31, t16 * qJD(1) + t18 * qJD(2) + ((t215 * t313 + (-t376 * t559 + t378 * t561) * t496) * m(6) + t773) * qJD(3) + t28 * qJD(4) + t42, t20 * qJD(1) + t22 * qJD(2) + t28 * qJD(3) + ((t207 - t112 + t582) * m(6) + t773) * qJD(4) + t42, t42 + (qJD(3) + qJD(4)) * t43 + t635 * t624;];
Cq = t10;
