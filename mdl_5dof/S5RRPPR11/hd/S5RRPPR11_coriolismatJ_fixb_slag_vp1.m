% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RRPPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta4]';
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
% Datum: 2019-12-31 19:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RRPPR11_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPPR11_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPPR11_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPPR11_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:46:28
% EndTime: 2019-12-31 19:47:08
% DurationCPUTime: 28.88s
% Computational Cost: add. (37579->848), mult. (57882->1167), div. (0->0), fcn. (61236->8), ass. (0->488)
t528 = sin(qJ(2));
t529 = sin(qJ(1));
t706 = t528 * t529;
t507 = pkin(2) * t706;
t530 = cos(qJ(2));
t750 = rSges(4,3) + qJ(3);
t758 = rSges(4,2) * t528;
t357 = t507 + (-t530 * t750 - t758) * t529;
t531 = cos(qJ(1));
t699 = t530 * t531;
t493 = qJ(3) * t699;
t705 = t528 * t531;
t604 = -pkin(2) * t705 + t493;
t652 = rSges(4,2) * t705 + rSges(4,3) * t699;
t358 = t604 + t652;
t525 = sin(pkin(8));
t526 = cos(pkin(8));
t757 = rSges(5,2) * t526;
t599 = rSges(5,1) * t525 + t757;
t749 = rSges(5,3) + qJ(4);
t302 = t507 + (t749 * t528 + (-qJ(3) - t599) * t530) * t529;
t644 = pkin(2) + t749;
t633 = t525 * t699;
t658 = rSges(5,1) * t633 + t699 * t757;
t303 = -t644 * t705 + t493 + t658;
t573 = t302 * t531 + t303 * t529;
t527 = -pkin(7) - qJ(4);
t520 = pkin(8) + qJ(5);
t512 = sin(t520);
t513 = cos(t520);
t596 = rSges(6,1) * t512 + rSges(6,2) * t513;
t762 = pkin(4) * t525;
t621 = qJ(3) + t762;
t271 = t507 + ((rSges(6,3) - t527) * t528 + (-t596 - t621) * t530) * t529;
t657 = pkin(4) * t633 + t527 * t705;
t659 = t596 * t699;
t795 = rSges(6,3) + pkin(2);
t272 = -t705 * t795 + t493 + t657 + t659;
t576 = t271 * t531 + t272 * t529;
t519 = t531 * pkin(6);
t620 = rSges(4,1) * t531 - rSges(4,3) * t706;
t727 = qJ(3) * t528;
t622 = -pkin(1) - t727;
t333 = t519 + ((rSges(4,2) - pkin(2)) * t530 + t622) * t529 + t620;
t506 = rSges(4,2) * t699;
t763 = pkin(2) * t530;
t334 = -t506 + (rSges(4,1) + pkin(6)) * t529 + (t528 * t750 + pkin(1) + t763) * t531;
t700 = t529 * t530;
t678 = t333 * t699 + t334 * t700;
t492 = qJ(4) * t700;
t462 = pkin(3) * t531 - t492;
t701 = t529 * t526;
t439 = t525 * t531 + t528 * t701;
t702 = t529 * t525;
t632 = t528 * t702;
t440 = t526 * t531 - t632;
t848 = t440 * rSges(5,1) - t439 * rSges(5,2);
t243 = t519 + ((-rSges(5,3) - pkin(2)) * t530 + t622) * t529 + t462 + t848;
t437 = t526 * t705 - t702;
t438 = t525 * t705 + t701;
t601 = t438 * rSges(5,1) + t437 * rSges(5,2);
t245 = (pkin(3) + pkin(6)) * t529 + (t530 * t644 - t622) * t531 + t601;
t687 = t243 * t699 + t245 * t700;
t508 = pkin(4) * t526 + pkin(3);
t654 = t531 * t508 + t527 * t700;
t839 = t528 * t621 + t530 * t795 + pkin(1);
t703 = t529 * t513;
t407 = t512 * t531 + t528 * t703;
t704 = t529 * t512;
t408 = t513 * t531 - t528 * t704;
t849 = t408 * rSges(6,1) - t407 * rSges(6,2);
t218 = -t529 * t839 + t519 + t654 + t849;
t405 = t513 * t705 - t704;
t406 = t512 * t705 + t703;
t598 = t406 * rSges(6,1) + t405 * rSges(6,2);
t564 = -t527 * t699 + t598;
t220 = (pkin(6) + t508) * t529 + t839 * t531 + t564;
t691 = t218 * t699 + t220 * t700;
t829 = m(6) / 0.2e1;
t830 = m(5) / 0.2e1;
t831 = m(4) / 0.2e1;
t631 = (t528 * t576 + t691) * t829 + (t528 * t573 + t687) * t830 + ((t357 * t531 + t358 * t529) * t528 + t678) * t831;
t479 = pkin(2) * t528 - qJ(3) * t530;
t726 = qJ(4) * t528;
t613 = t479 + t726;
t642 = t530 * t762;
t693 = -qJ(4) - t527;
t842 = -rSges(6,3) * t528 + t530 * t596;
t565 = t528 * t693 + t613 - t642 - t842;
t267 = t565 * t529;
t269 = t565 * t531;
t841 = -rSges(5,3) * t528 + t530 * t599;
t603 = t613 - t841;
t317 = t603 * t529;
t319 = t603 * t531;
t595 = rSges(4,3) * t530 + t758;
t656 = t479 - t595;
t369 = t656 * t529;
t371 = t656 * t531;
t635 = (-t317 * t705 + t319 * t706 + t687) * t830 + (-t369 * t705 + t371 * t706 + t678) * t831 + (-t267 * t705 + t269 * t706 + t691) * t829;
t9 = t635 - t631;
t898 = t9 * qJD(1);
t897 = -t529 / 0.2e1;
t796 = t531 / 0.2e1;
t896 = Icges(4,1) + Icges(3,3);
t895 = Icges(4,4) - Icges(3,5);
t894 = Icges(4,5) - Icges(3,6);
t585 = Icges(6,5) * t512 + Icges(6,6) * t513;
t543 = -Icges(6,3) * t528 + t530 * t585;
t738 = Icges(6,4) * t512;
t588 = Icges(6,2) * t513 + t738;
t545 = -Icges(6,6) * t528 + t530 * t588;
t737 = Icges(6,4) * t513;
t591 = Icges(6,1) * t512 + t737;
t547 = -Icges(6,5) * t528 + t530 * t591;
t208 = -t407 * t545 + t408 * t547 - t543 * t700;
t284 = Icges(6,5) * t406 + Icges(6,6) * t405 + Icges(6,3) * t699;
t739 = Icges(6,4) * t406;
t287 = Icges(6,2) * t405 + Icges(6,6) * t699 + t739;
t392 = Icges(6,4) * t405;
t290 = Icges(6,1) * t406 + Icges(6,5) * t699 + t392;
t157 = t284 * t700 + t407 * t287 - t408 * t290;
t286 = -Icges(6,5) * t408 + Icges(6,6) * t407 + Icges(6,3) * t700;
t394 = Icges(6,4) * t408;
t289 = Icges(6,2) * t407 + Icges(6,6) * t700 - t394;
t393 = Icges(6,4) * t407;
t291 = Icges(6,1) * t408 - Icges(6,5) * t700 - t393;
t158 = t286 * t700 + t289 * t407 + t291 * t408;
t582 = t157 * t531 + t158 * t529;
t63 = t208 * t528 + t530 * t582;
t554 = (-t243 * t531 - t245 * t529) * t528;
t580 = -t218 * t531 - t220 * t529;
t555 = t580 * t528;
t747 = (-t317 * t699 + t319 * t700 + t554) * t830 + (-t267 * t699 + t269 * t700 + t555) * t829;
t748 = (t530 * t573 + t554) * t830 + (t530 * t576 + t555) * t829;
t865 = t747 - t748;
t893 = t865 * qJD(1);
t206 = -t405 * t545 - t406 * t547 - t543 * t699;
t155 = t284 * t699 + t405 * t287 + t406 * t290;
t156 = t286 * t699 + t405 * t289 - t406 * t291;
t583 = t155 * t531 + t529 * t156;
t891 = t206 * t528 + t530 * t583;
t472 = Icges(3,5) * t530 - Icges(3,6) * t528;
t473 = -Icges(4,4) * t530 + Icges(4,5) * t528;
t890 = (t472 + t473) * t531 + t896 * t529;
t885 = t531 * t896 + t895 * t700 - t894 * t706;
t720 = t286 * t528;
t880 = t289 * t513 - t291 * t512;
t174 = t880 * t530 - t720;
t740 = Icges(3,4) * t528;
t477 = Icges(3,1) * t530 - t740;
t414 = Icges(3,5) * t529 + t477 * t531;
t732 = Icges(4,6) * t530;
t469 = Icges(4,3) * t528 - t732;
t415 = Icges(4,5) * t529 + t469 * t531;
t888 = -t414 * t700 - t415 * t706;
t887 = t155 * t529 - t156 * t531;
t294 = rSges(6,3) * t700 - t849;
t235 = -t294 * t528 - t842 * t700;
t886 = t830 + t829;
t353 = t842 * t529;
t522 = t529 ^ 2;
t524 = t531 ^ 2;
t650 = t522 + t524;
t884 = t528 * t895 + t530 * t894;
t883 = t890 * t531 + t888;
t866 = -t414 * t699 - t415 * t705 - t890 * t529;
t500 = Icges(3,4) * t706;
t413 = Icges(3,1) * t700 - Icges(3,5) * t531 - t500;
t416 = Icges(4,5) * t531 + Icges(4,6) * t700 - Icges(4,3) * t706;
t882 = -t413 * t699 + t416 * t705 + t885 * t529;
t411 = Icges(3,4) * t700 - Icges(3,2) * t706 - Icges(3,6) * t531;
t495 = Icges(4,6) * t706;
t418 = Icges(4,4) * t531 + Icges(4,2) * t700 - t495;
t881 = t411 * t528 - t418 * t530;
t801 = t528 / 0.2e1;
t517 = Icges(3,4) * t530;
t734 = Icges(3,2) * t528;
t412 = Icges(3,6) * t529 + (t517 - t734) * t531;
t496 = Icges(4,6) * t705;
t417 = Icges(4,4) * t529 - Icges(4,2) * t699 + t496;
t869 = -t412 * t705 - t417 * t699 - t866;
t868 = t528 * t412 + t417 * t530 + t885;
t864 = -t411 * t705 - t412 * t706 - t417 * t700 + t418 * t699 - t882 - t883;
t328 = -Icges(5,4) * t440 + Icges(5,2) * t439 + Icges(5,6) * t700;
t331 = -Icges(5,1) * t440 + Icges(5,4) * t439 + Icges(5,5) * t700;
t570 = t328 * t439 - t331 * t440;
t851 = t650 * t530;
t385 = (t851 - t530) * t528;
t863 = -0.4e1 * t385;
t645 = m(5) / 0.4e1 + m(6) / 0.4e1;
t862 = -0.2e1 * t645;
t800 = t529 / 0.2e1;
t860 = t530 / 0.2e1;
t798 = -t531 / 0.2e1;
t379 = Icges(6,3) * t530 + t528 * t585;
t474 = Icges(3,2) * t530 + t740;
t589 = Icges(5,4) * t525 + Icges(5,2) * t526;
t546 = -Icges(5,6) * t528 + t530 * t589;
t592 = Icges(5,1) * t525 + Icges(5,4) * t526;
t548 = -Icges(5,5) * t528 + t530 * t592;
t586 = Icges(5,5) * t525 + Icges(5,6) * t526;
t710 = t513 * t545;
t712 = t512 * t547;
t802 = t526 / 0.2e1;
t804 = t525 / 0.2e1;
t854 = t528 * (-t548 * t804 - t546 * t802 - t712 / 0.2e1 - t710 / 0.2e1 + t477 / 0.2e1 - t474 / 0.2e1 - Icges(4,6) * t528 - Icges(4,3) * t530 / 0.2e1 + t586 * t801 + t379 / 0.2e1 + (Icges(4,2) + Icges(5,3)) * t860);
t853 = t530 * t586;
t321 = rSges(6,1) * t405 - rSges(6,2) * t406;
t322 = rSges(6,1) * t407 + rSges(6,2) * t408;
t571 = t321 * t529 - t322 * t531;
t222 = t571 * t530;
t852 = t650 * t528;
t753 = rSges(6,3) * t530;
t386 = t528 * t596 + t753;
t643 = t528 * t762;
t850 = -t530 * t693 - t386 - t643;
t847 = t884 * t531;
t846 = t884 * t529;
t550 = rSges(6,3) * t699 + t598;
t843 = -t531 * t294 + t529 * t550;
t422 = (Icges(6,2) * t512 - t737) * t530;
t423 = (-Icges(6,1) * t513 + t738) * t530;
t840 = -t512 * (t423 / 0.2e1 + t545 / 0.2e1) - t513 * (-t547 / 0.2e1 + t422 / 0.2e1);
t323 = Icges(5,5) * t438 + Icges(5,6) * t437 + Icges(5,3) * t699;
t325 = -Icges(5,5) * t440 + Icges(5,6) * t439 + Icges(5,3) * t700;
t729 = Icges(5,3) * t528;
t544 = -t729 + t853;
t361 = t544 * t529;
t362 = t544 * t531;
t445 = Icges(4,3) * t700 + t495;
t446 = Icges(4,3) * t699 + t496;
t584 = Icges(4,2) * t528 + t732;
t447 = t584 * t529;
t448 = t584 * t531;
t453 = -Icges(3,2) * t700 - t500;
t454 = t474 * t531;
t741 = Icges(3,1) * t528;
t593 = -t517 - t741;
t455 = t593 * t529;
t456 = t593 * t531;
t326 = Icges(5,4) * t438 + Icges(5,2) * t437 + Icges(5,6) * t699;
t709 = t526 * t326;
t717 = t331 * t525;
t329 = Icges(5,1) * t438 + Icges(5,4) * t437 + Icges(5,5) * t699;
t718 = t329 * t525;
t719 = t328 * t526;
t838 = ((-t361 - t717 - t719 + t416 + t447 + t411 - t455) * t531 + (t362 + t709 + t718 + t415 - t448 - t412 + t456) * t529) * t530 + ((t325 + t418 - t445 + t413 + t453) * t531 + (-t323 + t417 + t446 - t414 + t454) * t529) * t528;
t837 = 0.4e1 * t385;
t835 = 0.2e1 * qJD(1);
t834 = 0.4e1 * qJD(1);
t833 = 2 * qJD(2);
t828 = t63 / 0.2e1;
t354 = -rSges(6,3) * t705 + t659;
t164 = (t353 * t531 - t354 * t529) * t530 + t843 * t528;
t199 = (t386 * t529 - t294) * t530;
t200 = ((-t386 + t753) * t531 + t598) * t530 + (-t531 * t842 + t354) * t528;
t210 = t843 * t530;
t561 = t199 * t531 + t200 * t529 - t210;
t236 = -t528 * t550 - t699 * t842;
t689 = t235 * t699 - t236 * t700;
t824 = m(6) * (-t164 * t530 + t528 * t561 + t689);
t579 = -t235 * t531 + t236 * t529;
t823 = m(6) * (t561 * t530 + (t164 + t579) * t528);
t822 = m(6) * (t199 * t218 + t200 * t220 + t235 * t271 - t236 * t272);
t821 = m(6) * (-t164 * t210 + t199 * t235 - t200 * t236);
t230 = t236 * t705;
t552 = t236 * t531;
t820 = m(6) * (t528 * t552 - t230);
t231 = t236 * t699;
t819 = m(6) * (t530 * t552 - t231);
t424 = (-rSges(6,1) * t513 + rSges(6,2) * t512) * t530;
t818 = m(6) * (-t267 * t321 + t269 * t322 + t424 * t580);
t483 = t727 + t763;
t661 = t650 * t483;
t606 = -t529 * t462 + t531 * (t529 * pkin(3) + qJ(4) * t699) + t661;
t725 = qJ(4) * t530;
t143 = (pkin(4) * t632 + t294 + t462 - t654) * t529 + ((t643 - t725 + t753) * t531 + (-pkin(3) + t508) * t529 + t564) * t531 + t606;
t685 = -t267 * t700 - t269 * t699;
t817 = m(6) * (t143 * t852 + t685);
t350 = t545 * t531;
t352 = t547 * t531;
t575 = -t287 * t513 - t290 * t512;
t560 = t543 * t531 - t575;
t122 = (-t350 * t513 - t352 * t512 + t284) * t530 + t560 * t528;
t812 = t122 / 0.2e1;
t349 = t545 * t529;
t351 = t547 * t529;
t559 = t543 * t529 + t880;
t123 = (-t349 * t513 - t351 * t512 + t286) * t530 + t559 * t528;
t811 = -t123 / 0.2e1;
t311 = Icges(6,5) * t405 - Icges(6,6) * t406;
t682 = -Icges(6,2) * t406 + t290 + t392;
t684 = -Icges(6,1) * t405 + t287 + t739;
t132 = t311 * t528 + (t512 * t684 - t513 * t682) * t530;
t810 = t132 / 0.2e1;
t401 = Icges(5,5) * t530 + t528 * t592;
t806 = t401 / 0.2e1;
t805 = -t525 / 0.2e1;
t803 = -t526 / 0.2e1;
t799 = t529 / 0.4e1;
t797 = -t531 / 0.4e1;
t760 = rSges(3,1) * t530;
t623 = pkin(1) + t760;
t653 = rSges(3,2) * t706 + t531 * rSges(3,3);
t367 = -t529 * t623 + t519 + t653;
t504 = rSges(3,2) * t705;
t368 = -t504 + t623 * t531 + (rSges(3,3) + pkin(6)) * t529;
t481 = rSges(3,1) * t528 + rSges(3,2) * t530;
t457 = t481 * t529;
t459 = t481 * t531;
t794 = m(3) * (t367 * t457 - t368 * t459);
t241 = -t529 * (rSges(4,2) * t700 + t620) + t531 * (t529 * rSges(4,1) + rSges(4,3) * t705 - t506) + t661;
t674 = -t369 * t700 - t371 * t699;
t790 = m(4) * (t241 * t852 + t674);
t788 = m(4) * (t333 * t357 + t334 * t358);
t787 = m(4) * (-t333 * t706 + t334 * t705);
t185 = t529 * (rSges(5,3) * t700 - t848) + t531 * (rSges(5,3) * t699 + t601) + t606;
t679 = -t317 * t700 - t319 * t699;
t784 = m(5) * (t185 * t852 + t679);
t779 = m(5) * (t243 * t302 + t245 * t303);
t239 = t245 * t705;
t778 = m(5) * (-t243 * t706 + t239);
t240 = t245 * t699;
t777 = m(5) * (-t243 * t700 + t240);
t774 = m(6) * (t218 * t271 + t220 * t272);
t773 = m(6) * (-t210 * t851 + t528 * t579);
t772 = m(6) * (-t210 * t852 + t689);
t214 = t220 * t705;
t771 = m(6) * (-t218 * t706 + t214);
t215 = t220 * t699;
t770 = m(6) * (-t218 * t700 + t215);
t769 = m(6) * (-t235 * t706 - t230);
t768 = m(6) * (-t235 * t700 - t231);
t226 = t321 * t531 + t529 * t322;
t767 = m(6) * (-t226 * t530 - t424 * t852);
t766 = m(6) * (t226 * t528 - t424 * t851);
t765 = t571 * m(6) * t528;
t764 = m(6) * t222;
t761 = m(6) * qJD(5);
t752 = t529 * t63;
t751 = t531 * t891;
t723 = t220 * t531;
t722 = t245 * t531;
t721 = t284 * t528;
t716 = t543 * t528;
t383 = Icges(6,5) * t530 + t528 * t591;
t713 = t512 * t383;
t381 = Icges(6,6) * t530 + t528 * t588;
t711 = t513 * t381;
t421 = (-Icges(6,5) * t513 + Icges(6,6) * t512) * t530;
t707 = t528 * t421;
t683 = -Icges(6,1) * t407 + t289 - t394;
t681 = Icges(6,2) * t408 - t291 + t393;
t521 = t528 ^ 2;
t523 = t530 ^ 2;
t651 = t650 * t523;
t355 = -t523 + (0.1e1 - t650) * t521 + t651;
t677 = t355 * t886;
t359 = -t521 * t650 - t530 * t851;
t676 = t359 * t886;
t360 = t528 * t852 + t651;
t675 = t360 * t886;
t669 = -t545 - t423;
t668 = -t547 + t422;
t662 = t529 * (qJ(3) * t700 - t507) + t531 * t604;
t655 = rSges(4,2) * t530 - rSges(4,3) * t528 - t483;
t649 = qJD(1) * t530;
t648 = qJD(2) * t528;
t647 = qJD(2) * t530;
t646 = qJD(5) * t530;
t639 = -t63 / 0.2e1 + t828;
t542 = t530 * t560 - t721;
t109 = t405 * t350 + t406 * t352 + t531 * t542;
t541 = t530 * t559 - t720;
t110 = t405 * t349 + t406 * t351 + t531 * t541;
t569 = t710 + t712;
t557 = t379 - t569;
t540 = t530 * t557 + t716;
t149 = t405 * t381 + t406 * t383 + t531 * t540;
t15 = (t109 * t531 + t110 * t529 + t206) * t530 + (t149 - t583) * t528;
t111 = t311 * t699 + t405 * t682 - t406 * t684;
t312 = Icges(6,5) * t407 + Icges(6,6) * t408;
t112 = t312 * t699 + t405 * t681 - t406 * t683;
t56 = t111 * t529 - t112 * t531;
t638 = t56 / 0.2e1 - t15 / 0.2e1;
t107 = t350 * t407 - t352 * t408 + t529 * t542;
t108 = t349 * t407 - t351 * t408 + t529 * t541;
t148 = t381 * t407 - t383 * t408 + t529 * t540;
t14 = (t107 * t531 + t108 * t529 + t208) * t530 + (t148 - t582) * t528;
t113 = t311 * t700 + t407 * t682 + t408 * t684;
t114 = t312 * t700 + t407 * t681 + t408 * t683;
t57 = t113 * t529 - t114 * t531;
t637 = t57 / 0.2e1 - t14 / 0.2e1;
t176 = t323 * t699 + t437 * t326 + t438 * t329;
t628 = t700 / 0.4e1;
t624 = t473 / 0.2e1 + t472 / 0.2e1;
t612 = -t483 - t725;
t607 = m(4) / 0.4e1 + t645;
t572 = t317 * t529 + t319 * t531;
t577 = t267 * t529 + t269 * t531;
t53 = m(5) * (t185 * t851 + t528 * t572) + m(6) * (t143 * t851 + t528 * t577);
t133 = t312 * t528 + (t512 * t683 - t513 * t681) * t530;
t161 = t405 * t668 - t406 * t669 + t421 * t699;
t162 = t407 * t668 + t408 * t669 + t421 * t700;
t602 = t818 / 0.2e1 + (t132 + t161) * t799 + (t133 + t162) * t797;
t173 = t530 * t575 + t721;
t581 = t173 * t531 - t174 * t529;
t258 = -t322 * t528 + t424 * t700;
t259 = t528 * t321 - t424 * t699;
t578 = t258 * t531 + t259 * t529;
t566 = m(6) * (-t218 * t322 + t220 * t321) + t707 / 0.2e1;
t549 = -t63 * t799 + t891 * t797 + t752 / 0.4e1 + t751 / 0.4e1 + (t628 - t700 / 0.4e1) * t887;
t167 = (-t543 - t711 - t713) * t530 + t557 * t528;
t227 = t530 * t569 - t716;
t539 = t167 * t801 + t227 * t860 + t822 / 0.2e1 - (-t174 + t208) * t706 / 0.4e1 - (t173 + t206) * t705 / 0.4e1 + (t123 + t148) * t628 + (t122 + t149) * t699 / 0.4e1;
t538 = (t325 * t700 + t570 + t885 * t531 + (t413 * t530 - t416 * t528 - t881) * t529) * t798 + (t868 * t531 + t570 + t866 + t869) * t796 + (t325 * t699 + t868 * t529 + t864 + t883) * t800;
t537 = (t176 - t866) * t897 + (t176 + t869) * t800 + ((t881 + t890) * t531 + t864 + t882 + t888) * t798;
t268 = -t492 + (-t483 + t850) * t529;
t270 = (t612 + t850) * t531;
t403 = rSges(5,3) * t530 + t528 * t599;
t318 = -t492 + (-t403 - t483) * t529;
t320 = (-t403 + t612) * t531;
t534 = (t268 * t529 + t270 * t531 + t143) * t829 + (t318 * t529 + t320 * t531 + t185) * t830;
t399 = Icges(5,6) * t530 + t528 * t589;
t533 = t401 * t805 + t399 * t803 - t713 / 0.2e1 - t711 / 0.2e1 + t517 + t741 / 0.2e1 - t734 / 0.2e1 + t584 / 0.2e1 - t469 / 0.2e1 - t853 / 0.2e1 + t729 / 0.2e1 - t543 / 0.2e1;
t485 = -rSges(3,2) * t528 + t760;
t372 = t655 * t531;
t370 = t655 * t529;
t366 = t548 * t531;
t365 = t548 * t529;
t364 = t546 * t531;
t363 = t546 * t529;
t282 = t645 * t863;
t260 = t522 * t595 + t531 * t652 + t662;
t233 = t607 * t837;
t217 = t764 / 0.2e1;
t216 = t765 / 0.2e1;
t211 = t531 * (-rSges(5,3) * t705 + t658) - qJ(4) * t852 + t841 * t522 + t662;
t201 = (t707 + (t512 * t669 - t513 * t668) * t530) * t528;
t195 = t766 / 0.2e1;
t194 = t767 / 0.2e1;
t172 = (t354 + t657) * t531 + (-t650 + t524) * t726 + (t353 + (t527 * t528 + t642 + t726) * t529) * t529 + t662;
t166 = t768 / 0.2e1;
t165 = t769 / 0.2e1;
t154 = t359 * t862 + t675 + t677;
t153 = t360 * t862 + t676 + t677;
t152 = t355 * t862 + t675 + t676;
t116 = t772 / 0.2e1;
t115 = t773 / 0.2e1;
t92 = t770 + t777;
t77 = t530 * t840 + t566;
t76 = t227 * t528 + t530 * t581;
t67 = t819 / 0.2e1;
t66 = t820 / 0.2e1;
t65 = t771 + t778 + t787;
t61 = t143 * t226 + t424 * t577;
t55 = t109 * t529 - t110 * t531;
t54 = t107 * t529 - t108 * t531;
t51 = t166 + t67 - t764 / 0.2e1;
t50 = t165 + t66 - t765 / 0.2e1;
t49 = t217 + t166 - t819 / 0.2e1;
t48 = t217 + t67 - t768 / 0.2e1;
t47 = t216 + t165 - t820 / 0.2e1;
t46 = t216 + t66 - t769 / 0.2e1;
t41 = t823 / 0.2e1;
t40 = t824 / 0.2e1;
t38 = t162 * t528 + (t113 * t531 + t114 * t529) * t530;
t37 = t161 * t528 + (t111 * t531 + t112 * t529) * t530;
t36 = t784 + t790 + t817;
t29 = (t122 * t531 + t123 * t529 + t227) * t530 + (t167 - t581) * t528;
t28 = t116 + t40 - t767 / 0.2e1;
t27 = t115 + t41 - t766 / 0.2e1;
t26 = t195 + t115 - t823 / 0.2e1;
t25 = t195 + t41 - t773 / 0.2e1;
t24 = t194 + t116 - t824 / 0.2e1;
t23 = t194 + t40 - t772 / 0.2e1;
t22 = t530 * t533 + t774 + t779 + t788 + t794 + t854;
t13 = m(6) * t61 + t56 * t800 + t57 * t798;
t11 = t747 + t748;
t8 = t631 + t635;
t6 = t639 * t699;
t5 = t821 + (t15 * t796 + t14 * t800 + t76 / 0.2e1) * t530 + (-t751 / 0.2e1 - t752 / 0.2e1 + t29 / 0.2e1) * t528;
t4 = t529 * t538 + t531 * t537;
t3 = t539 + t602;
t2 = t549 - t822 / 0.2e1 + (-t167 / 0.2e1 + (t206 / 0.4e1 + t173 / 0.4e1) * t531 + (t208 / 0.4e1 - t174 / 0.4e1) * t529) * t528 + (-t227 / 0.2e1 + (-t149 / 0.4e1 - t122 / 0.4e1) * t531 + (-t148 / 0.4e1 - t123 / 0.4e1) * t529) * t530 + t602;
t1 = t549 + (t162 / 0.4e1 + t133 / 0.4e1) * t531 + (-t161 / 0.4e1 - t132 / 0.4e1) * t529 - t818 / 0.2e1 + t539;
t7 = [t22 * qJD(2) + t65 * qJD(3) + t92 * qJD(4) + t77 * qJD(5), t22 * qJD(1) + t8 * qJD(3) + t11 * qJD(4) + t3 * qJD(5) + ((t333 * t372 + t334 * t370 - t357 * t371 - t358 * t369) * t831 + (t243 * t320 + t245 * t318 - t302 * t319 - t303 * t317) * t830 + (t218 * t270 + t220 * t268 - t267 * t272 - t269 * t271) * t829) * t833 + ((-t148 / 0.2e1 - t399 * t439 / 0.2e1 + t440 * t806 + t811 + m(3) * (-t367 * t485 - t457 * t481) + t624 * t531 - t537) * qJD(2) + (t363 * t802 + t365 * t804 - t418 / 0.2e1 + t445 / 0.2e1 - t413 / 0.2e1 - t453 / 0.2e1 - t325 / 0.2e1) * t647 + (-t719 / 0.2e1 - t717 / 0.2e1 + t416 / 0.2e1 + t447 / 0.2e1 + t411 / 0.2e1 - t455 / 0.2e1 - t361 / 0.2e1) * t648) * t531 + ((t149 / 0.2e1 + t812 + m(3) * (-t368 * t485 + t459 * t481) + t437 * t399 / 0.2e1 + t438 * t806 + t624 * t529 - t538) * qJD(2) + (-t417 / 0.2e1 - t446 / 0.2e1 + t414 / 0.2e1 - t454 / 0.2e1 + t366 * t805 + t364 * t803 + t323 / 0.2e1) * t647 + (t709 / 0.2e1 + t415 / 0.2e1 - t448 / 0.2e1 + t456 / 0.2e1 + t718 / 0.2e1 - t412 / 0.2e1 + t362 / 0.2e1) * t648) * t529, qJD(1) * t65 + qJD(2) * t8 + qJD(5) * t47, qJD(1) * t92 + qJD(2) * t11 + qJD(5) * t49, t77 * qJD(1) + t3 * qJD(2) + t47 * qJD(3) + t49 * qJD(4) + (m(6) * (t218 * t258 + t220 * t259 - t235 * t322 - t236 * t321) + t201) * qJD(5) + ((t161 / 0.2e1 + t810 - t639) * t531 + (t133 / 0.2e1 + t162 / 0.2e1) * t529) * t646; t4 * qJD(2) + t9 * qJD(3) + t865 * qJD(4) + t2 * qJD(5) + (-t794 / 0.4e1 - t788 / 0.4e1 - t779 / 0.4e1 - t774 / 0.4e1) * t834 - t533 * t649 - t854 * qJD(1), t4 * qJD(1) + t36 * qJD(3) + t53 * qJD(4) + t13 * qJD(5) + (m(6) * (t143 * t172 - t267 * t268 - t269 * t270) + m(5) * (t185 * t211 - t317 * t318 - t319 * t320) + m(4) * (t241 * t260 - t369 * t370 - t371 * t372) + m(3) * ((t529 * (rSges(3,1) * t700 - t653) + t531 * (rSges(3,1) * t699 + t529 * rSges(3,3) - t504)) * (-t529 * t457 - t459 * t531) + t650 * t485 * t481) + (t55 + (t437 * t364 + t438 * t366) * t529 + (-t437 * t363 - t438 * t365 - t846 * t529 + t838) * t531 + t847 * t522) * t800 + (t54 - (t363 * t439 - t365 * t440) * t531 + t846 * t524 + (t439 * t364 - t440 * t366 - t847 * t531 + t838) * t529) * t798) * qJD(2), qJD(3) * t607 * t863 + t36 * qJD(2) + t152 * qJD(4) + t24 * qJD(5) + t898, t645 * t837 * qJD(4) + t53 * qJD(2) + t152 * qJD(3) + t26 * qJD(5) + t893, t2 * qJD(1) + t13 * qJD(2) + t24 * qJD(3) + t26 * qJD(4) + (-t76 / 0.2e1 + t638 * t531 + t637 * t529) * t646 + (m(6) * (-t222 * t143 - t210 * t226 - t258 * t269 - t259 * t267 + t424 * t579) + t38 * t798 + t37 * t800 - t821 + (-t29 / 0.2e1 + (-t133 / 0.2e1 + t891 / 0.2e1) * t531 + (t810 + t828) * t529) * t528) * qJD(5); -t9 * qJD(2) + t46 * qJD(5) + (-t771 / 0.4e1 - t787 / 0.4e1 - t778 / 0.4e1) * t834 + ((-t723 * t528 + t214) * t829 + (-t722 * t528 + t239) * t830) * t835, -t898 + t233 * qJD(3) + t153 * qJD(4) + t23 * qJD(5) + 0.4e1 * (-t817 / 0.4e1 - t784 / 0.4e1 - t790 / 0.4e1) * qJD(2) + ((-t530 * t172 + t685) * t829 + (-t530 * t211 + t679) * t830 + (-t530 * t260 + t674) * t831 + ((t370 * t529 + t372 * t531 + t241) * t831 + t534) * t528) * t833, t233 * qJD(2), t153 * qJD(2), t46 * qJD(1) + t23 * qJD(2) + (t222 * t530 + t528 * t578) * t761; -t865 * qJD(2) + t48 * qJD(5) + (-t770 / 0.4e1 - t777 / 0.4e1) * t834 + (t215 * t829 + t240 * t830 + (-t722 * t830 - t723 * t829) * t530) * t835, -t893 + (0.2e1 * t534 * t530 + 0.2e1 * ((t172 + t577) * t829 + (t211 + t572) * t830) * t528 - t53) * qJD(2) + t154 * qJD(3) + t282 * qJD(4) + t25 * qJD(5), t154 * qJD(2), t282 * qJD(2), t48 * qJD(1) + t25 * qJD(2) + (-t222 * t528 + t530 * t578) * t761; -t566 * qJD(1) + t1 * qJD(2) + t50 * qJD(3) + t51 * qJD(4) + t6 * qJD(5) - t840 * t649, t1 * qJD(1) + (((t55 / 0.2e1 + t174 / 0.2e1) * t530 + t637) * t531 + ((t54 / 0.2e1 + t173 / 0.2e1) * t530 - t638) * t529 + ((-t887 / 0.2e1 + t811) * t531 + (t157 * t897 + t158 * t796 + t812) * t529) * t528 + (t143 * t164 - t172 * t210 - t199 * t269 - t200 * t267 + t235 * t270 - t236 * t268 - t61) * m(6)) * qJD(2) + t28 * qJD(3) + t27 * qJD(4) + t5 * qJD(5), qJD(1) * t50 + qJD(2) * t28, qJD(1) * t51 + qJD(2) * t27, t6 * qJD(1) + t5 * qJD(2) + (m(6) * (t210 * t222 + t235 * t258 - t236 * t259) + t201 * t801 + (t37 * t796 + t38 * t800 + (t132 * t531 + t133 * t529) * t801) * t530) * qJD(5);];
Cq = t7;