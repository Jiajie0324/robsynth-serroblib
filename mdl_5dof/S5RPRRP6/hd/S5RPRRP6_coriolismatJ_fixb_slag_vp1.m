% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RPRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
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
% Datum: 2019-12-31 18:43
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RPRRP6_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP6_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP6_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP6_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRP6_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRP6_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRP6_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:42:11
% EndTime: 2019-12-31 18:42:52
% DurationCPUTime: 33.62s
% Computational Cost: add. (66476->791), mult. (79909->1093), div. (0->0), fcn. (87196->8), ass. (0->468)
t505 = qJ(1) + pkin(8);
t502 = sin(t505);
t508 = sin(qJ(4));
t512 = cos(qJ(3));
t694 = t508 * t512;
t503 = cos(t505);
t511 = cos(qJ(4));
t698 = t503 * t511;
t425 = t502 * t694 + t698;
t690 = t511 * t512;
t700 = t503 * t508;
t426 = t502 * t690 - t700;
t509 = sin(qJ(3));
t704 = t502 * t509;
t312 = Icges(6,5) * t426 - Icges(6,6) * t425 + Icges(6,3) * t704;
t315 = Icges(5,5) * t426 - Icges(5,6) * t425 + Icges(5,3) * t704;
t412 = Icges(6,4) * t426;
t318 = -Icges(6,2) * t425 + Icges(6,6) * t704 + t412;
t415 = Icges(5,4) * t426;
t321 = -Icges(5,2) * t425 + Icges(5,6) * t704 + t415;
t411 = Icges(6,4) * t425;
t325 = -Icges(6,1) * t426 - Icges(6,5) * t704 + t411;
t414 = Icges(5,4) * t425;
t328 = -Icges(5,1) * t426 - Icges(5,5) * t704 + t414;
t882 = (t312 + t315) * t704 + (-t325 - t328) * t426 + (-t318 - t321) * t425;
t427 = t502 * t511 - t503 * t694;
t705 = t502 * t508;
t428 = t503 * t690 + t705;
t699 = t503 * t509;
t314 = Icges(6,5) * t428 + Icges(6,6) * t427 + Icges(6,3) * t699;
t317 = Icges(5,5) * t428 + Icges(5,6) * t427 + Icges(5,3) * t699;
t726 = Icges(6,4) * t428;
t320 = Icges(6,2) * t427 + Icges(6,6) * t699 + t726;
t729 = Icges(5,4) * t428;
t323 = Icges(5,2) * t427 + Icges(5,6) * t699 + t729;
t413 = Icges(6,4) * t427;
t326 = Icges(6,1) * t428 + Icges(6,5) * t699 + t413;
t416 = Icges(5,4) * t427;
t329 = Icges(5,1) * t428 + Icges(5,5) * t699 + t416;
t881 = (t314 + t317) * t704 + (t326 + t329) * t426 + (-t320 - t323) * t425;
t724 = Icges(6,4) * t511;
t574 = -Icges(6,2) * t508 + t724;
t433 = -Icges(6,6) * t512 + t509 * t574;
t725 = Icges(6,4) * t508;
t576 = Icges(6,1) * t511 - t725;
t437 = -Icges(6,5) * t512 + t509 * t576;
t571 = Icges(6,5) * t511 - Icges(6,6) * t508;
t429 = -Icges(6,3) * t512 + t509 * t571;
t693 = t509 * t429;
t250 = -t425 * t433 + t426 * t437 + t502 * t693;
t727 = Icges(5,4) * t511;
t575 = -Icges(5,2) * t508 + t727;
t435 = -Icges(5,6) * t512 + t509 * t575;
t728 = Icges(5,4) * t508;
t577 = Icges(5,1) * t511 - t728;
t439 = -Icges(5,5) * t512 + t509 * t577;
t572 = Icges(5,5) * t511 - Icges(5,6) * t508;
t431 = -Icges(5,3) * t512 + t509 * t572;
t692 = t509 * t431;
t251 = -t425 * t435 + t426 * t439 + t502 * t692;
t829 = t250 + t251;
t880 = t882 * t502 + t881 * t503;
t763 = t509 / 0.2e1;
t762 = -t512 / 0.2e1;
t769 = t502 / 0.2e1;
t767 = -t503 / 0.2e1;
t617 = t829 * t762 + t880 * t763;
t254 = t427 * t433 + t428 * t437 + t503 * t693;
t185 = t312 * t699 + t427 * t318 - t325 * t428;
t186 = t314 * t699 + t427 * t320 + t428 * t326;
t568 = t185 * t502 + t186 * t503;
t868 = -t512 * t254 + t509 * t568;
t255 = t427 * t435 + t428 * t439 + t503 * t692;
t187 = t315 * t699 + t427 * t321 - t328 * t428;
t188 = t317 * t699 + t427 * t323 + t428 * t329;
t567 = t187 * t502 + t188 * t503;
t869 = -t512 * t255 + t509 * t567;
t616 = t868 / 0.2e1 + t869 / 0.2e1;
t342 = -Icges(6,5) * t425 - Icges(6,6) * t426;
t344 = -Icges(5,5) * t425 - Icges(5,6) * t426;
t876 = t342 + t344;
t343 = Icges(6,5) * t427 - Icges(6,6) * t428;
t345 = Icges(5,5) * t427 - Icges(5,6) * t428;
t875 = t343 + t345;
t737 = rSges(5,1) * t511;
t582 = -rSges(5,2) * t508 + t737;
t536 = t582 * t509;
t450 = -rSges(5,3) * t512 + t536;
t808 = -t426 * rSges(5,1) + t425 * rSges(5,2);
t333 = rSges(5,3) * t704 - t808;
t711 = t333 * t512;
t271 = t450 * t704 + t711;
t498 = pkin(4) * t511 + pkin(3);
t702 = t502 * t512;
t874 = -t426 * rSges(6,1) + t425 * rSges(6,2) + pkin(4) * t700 - t498 * t702;
t746 = pkin(3) * t512;
t507 = -qJ(5) - pkin(7);
t742 = pkin(7) + t507;
t812 = t742 * t509;
t660 = (t746 + t812) * t502 - rSges(6,3) * t704 + t874;
t589 = t660 * t512;
t743 = pkin(3) - t498;
t810 = t743 * t509;
t736 = rSges(6,1) * t511;
t579 = -rSges(6,2) * t508 + t736;
t852 = t509 * t579 + (-rSges(6,3) + t742) * t512;
t647 = -t810 + t852;
t220 = t647 * t704 - t589;
t661 = -Icges(5,2) * t428 + t329 + t416;
t663 = -Icges(6,2) * t428 + t326 + t413;
t873 = t661 + t663;
t662 = -Icges(5,2) * t426 - t328 - t414;
t664 = -Icges(6,2) * t426 - t325 - t411;
t872 = t662 + t664;
t665 = Icges(5,1) * t427 - t323 - t729;
t667 = Icges(6,1) * t427 - t320 - t726;
t871 = t665 + t667;
t666 = -Icges(5,1) * t425 - t321 - t415;
t668 = -Icges(6,1) * t425 - t318 - t412;
t870 = t666 + t668;
t713 = t315 * t512;
t849 = t321 * t508 + t328 * t511;
t213 = t849 * t509 + t713;
t715 = t312 * t512;
t850 = t318 * t508 + t325 * t511;
t210 = t850 * t509 + t715;
t860 = rSges(6,1) + pkin(4);
t300 = rSges(6,2) * t426 + t860 * t425;
t301 = -t428 * rSges(6,2) + t860 * t427;
t225 = (t300 * t503 + t301 * t502) * t509;
t864 = -t210 - t213;
t563 = -t320 * t508 + t326 * t511;
t714 = t314 * t512;
t211 = t509 * t563 - t714;
t561 = -t323 * t508 + t329 * t511;
t712 = t317 * t512;
t214 = t509 * t561 - t712;
t863 = t211 + t214;
t862 = -t185 * t503 + t186 * t502;
t861 = -t187 * t503 + t188 * t502;
t590 = -sin(qJ(1)) * pkin(1) + t503 * pkin(6);
t732 = -rSges(6,3) + t507;
t260 = (t732 * t509 - pkin(2)) * t502 + t590 + t874;
t734 = rSges(6,3) * t509;
t745 = pkin(4) * t508;
t747 = cos(qJ(1)) * pkin(1);
t807 = t428 * rSges(6,1) + t427 * rSges(6,2) - t507 * t699;
t261 = t747 + (pkin(6) + t745) * t502 + (t498 * t512 + pkin(2) + t734) * t503 + t807;
t177 = -t260 * t704 + t261 * t699;
t859 = t177 * m(6) * qJD(1);
t858 = -t872 * t425 + t870 * t426 + t876 * t704;
t857 = -t873 * t425 + t871 * t426 + t875 * t704;
t856 = t872 * t427 + t870 * t428 + t876 * t699;
t855 = t873 * t427 + t871 * t428 + t875 * t699;
t457 = (-Icges(6,5) * t508 - Icges(6,6) * t511) * t509;
t459 = (-Icges(6,2) * t511 - t725) * t509;
t641 = t437 + t459;
t461 = (-Icges(6,1) * t508 - t724) * t509;
t643 = -t433 + t461;
t215 = -t425 * t641 + t426 * t643 + t457 * t704;
t458 = (-Icges(5,5) * t508 - Icges(5,6) * t511) * t509;
t460 = (-Icges(5,2) * t511 - t728) * t509;
t640 = t439 + t460;
t462 = (-Icges(5,1) * t508 - t727) * t509;
t642 = -t435 + t462;
t216 = -t425 * t640 + t426 * t642 + t458 * t704;
t854 = -t215 - t216;
t217 = t427 * t641 + t428 * t643 + t457 * t699;
t218 = t427 * t640 + t428 * t642 + t458 * t699;
t853 = -t217 - t218;
t500 = t502 ^ 2;
t501 = t503 ^ 2;
t633 = t500 + t501;
t848 = -m(5) / 0.2e1;
t847 = -m(6) / 0.2e1;
t373 = t433 * t502;
t377 = t437 * t502;
t546 = -t429 * t502 + t850;
t154 = -t546 * t512 + (t373 * t508 - t377 * t511 + t312) * t509;
t375 = t435 * t502;
t379 = t439 * t502;
t544 = -t431 * t502 + t849;
t156 = -t544 * t512 + (t375 * t508 - t379 * t511 + t315) * t509;
t836 = t154 + t156;
t374 = t433 * t503;
t378 = t437 * t503;
t545 = -t429 * t503 - t563;
t155 = -t545 * t512 + (t374 * t508 - t378 * t511 + t314) * t509;
t376 = t435 * t503;
t380 = t439 * t503;
t543 = -t431 * t503 - t561;
t157 = -t543 * t512 + (t376 * t508 - t380 * t511 + t317) * t509;
t835 = t155 + t157;
t166 = -t342 * t512 + (-t664 * t508 + t668 * t511) * t509;
t168 = -t344 * t512 + (-t662 * t508 + t666 * t511) * t509;
t834 = t166 + t168;
t167 = -t343 * t512 + (-t663 * t508 + t667 * t511) * t509;
t169 = -t345 * t512 + (-t661 * t508 + t665 * t511) * t509;
t833 = t167 + t169;
t434 = Icges(6,6) * t509 + t512 * t574;
t438 = Icges(6,5) * t509 + t512 * t576;
t430 = Icges(6,3) * t509 + t512 * t571;
t559 = -t508 * t433 + t511 * t437;
t542 = t430 - t559;
t707 = t429 * t512;
t520 = t509 * t542 + t707;
t194 = -t425 * t434 + t426 * t438 + t502 * t520;
t436 = Icges(5,6) * t509 + t512 * t575;
t440 = Icges(5,5) * t509 + t512 * t577;
t432 = Icges(5,3) * t509 + t512 * t572;
t558 = -t508 * t435 + t511 * t439;
t541 = t432 - t558;
t706 = t431 * t512;
t519 = t509 * t541 + t706;
t195 = -t425 * t436 + t426 * t440 + t502 * t519;
t832 = t194 + t195;
t196 = t427 * t434 + t428 * t438 + t503 * t520;
t197 = t427 * t436 + t428 * t440 + t503 * t519;
t831 = t196 + t197;
t231 = -t542 * t512 + (-t508 * t434 + t511 * t438 + t429) * t509;
t232 = -t541 * t512 + (-t508 * t436 + t511 * t440 + t431) * t509;
t830 = t231 + t232;
t828 = t254 + t255;
t397 = Icges(4,4) * t702 - Icges(4,2) * t704 - Icges(4,6) * t503;
t504 = Icges(4,4) * t512;
t721 = Icges(4,2) * t509;
t398 = Icges(4,6) * t502 + (t504 - t721) * t503;
t730 = Icges(4,4) * t509;
t475 = Icges(4,1) * t512 - t730;
t400 = Icges(4,5) * t502 + t475 * t503;
t366 = t400 * t702;
t471 = Icges(4,5) * t512 - Icges(4,6) * t509;
t396 = Icges(4,3) * t502 + t471 * t503;
t588 = t396 * t503 - t366;
t395 = Icges(4,5) * t702 - Icges(4,6) * t704 - Icges(4,3) * t503;
t482 = Icges(4,4) * t704;
t399 = Icges(4,1) * t702 - Icges(4,5) * t503 - t482;
t697 = t503 * t512;
t653 = -t502 * t395 - t399 * t697;
t827 = -t397 * t699 - t398 * t704 - t588 - t653;
t279 = t509 * t559 - t707;
t280 = t509 * t558 - t706;
t826 = t279 + t280;
t760 = rSges(5,3) + pkin(7);
t801 = t760 * t509 + pkin(2) + t746;
t269 = -t801 * t502 + t590 + t808;
t825 = t864 * t502 + t863 * t503;
t824 = -t502 / 0.2e1;
t765 = t503 / 0.2e1;
t823 = -t509 / 0.2e1;
t822 = t512 / 0.2e1;
t819 = t854 * t512 + (t858 * t502 + t857 * t503) * t509;
t818 = t853 * t512 + (t856 * t502 + t855 * t503) * t509;
t591 = t743 * t512;
t744 = pkin(7) * t509;
t659 = pkin(4) * t705 + (-t591 - t744) * t503 + rSges(6,3) * t699 + t807;
t813 = t512 * t659;
t806 = t154 / 0.2e1 + t156 / 0.2e1;
t805 = -t155 / 0.2e1 - t157 / 0.2e1;
t583 = t428 * rSges(5,1) + t427 * rSges(5,2);
t270 = t502 * pkin(6) + t801 * t503 + t583 + t747;
t487 = pkin(3) * t509 - pkin(7) * t512;
t611 = t487 + t647;
t295 = t611 * t502;
t297 = t611 * t503;
t357 = -rSges(5,1) * t425 - rSges(5,2) * t426;
t359 = rSges(5,1) * t427 - rSges(5,2) * t428;
t639 = t450 + t487;
t362 = t639 * t502;
t364 = t639 * t503;
t463 = (-rSges(6,1) * t508 - rSges(6,2) * t511) * t509;
t695 = t508 * t509;
t586 = pkin(4) * t695 - t463;
t385 = t586 * t502;
t386 = t586 * t503;
t464 = (-rSges(5,1) * t508 - rSges(5,2) * t511) * t509;
t804 = (t357 * t364 - t359 * t362 + (-t269 * t503 - t270 * t502) * t464) * t848 + (t260 * t386 + t261 * t385 - t295 * t301 - t297 * t300) * t847;
t489 = pkin(3) * t704;
t656 = t489 + (-t498 * t509 - t852) * t502;
t646 = t512 * t579 - t591 + t734 - t812;
t799 = t509 * t646 + t512 * t647;
t148 = t799 * t502 + t660 * t509 + t656 * t512;
t491 = pkin(7) * t697;
t612 = t509 * t698;
t614 = t503 * t695;
t637 = rSges(6,2) * t614 + rSges(6,3) * t697;
t696 = t507 * t512;
t655 = -t491 + (-t696 + t810) * t503 - rSges(6,1) * t612 + t637;
t149 = -t799 * t503 + t659 * t509 - t655 * t512;
t221 = t647 * t699 + t813;
t382 = t450 * t502;
t452 = rSges(5,3) * t509 + t512 * t582;
t557 = t450 * t512 + t452 * t509;
t233 = -t333 * t509 - t382 * t512 + t502 * t557;
t337 = rSges(5,3) * t699 + t583;
t636 = rSges(5,2) * t614 + rSges(5,3) * t697;
t384 = -rSges(5,1) * t612 + t636;
t234 = t337 * t509 - t384 * t512 - t503 * t557;
t710 = t337 * t512;
t273 = t450 * t699 + t710;
t310 = (t732 * t512 + (t498 + t579) * t509) * t502;
t311 = (-t696 + (-t498 - t736) * t509) * t503 + t637;
t339 = t489 + (-t760 * t512 + t536) * t502;
t340 = t491 + (-pkin(3) - t737) * t699 + t636;
t803 = (t148 * t260 + t149 * t261 + t220 * t310 - t221 * t311) * t847 + (t233 * t269 + t234 * t270 + t271 * t339 - t273 * t340) * t848;
t595 = t439 / 0.2e1 + t437 / 0.2e1;
t597 = t435 / 0.2e1 + t433 / 0.2e1;
t800 = -t508 * (t460 / 0.2e1 + t459 / 0.2e1 + t595) + t511 * (t462 / 0.2e1 + t461 / 0.2e1 - t597);
t731 = Icges(4,1) * t509;
t798 = t508 * t597 - t511 * t595 + t430 / 0.2e1 + t432 / 0.2e1 - t504 + t721 / 0.2e1 - t731 / 0.2e1;
t472 = Icges(4,2) * t512 + t730;
t797 = t508 * (t436 / 0.2e1 + t434 / 0.2e1) - t511 * (t440 / 0.2e1 + t438 / 0.2e1) - t429 / 0.2e1 - t431 / 0.2e1 + t472 / 0.2e1 - t475 / 0.2e1;
t795 = 0.4e1 * qJD(1);
t794 = 2 * qJD(3);
t792 = 2 * qJD(4);
t791 = 4 * qJD(4);
t790 = m(5) / 0.2e1;
t788 = m(6) / 0.2e1;
t189 = (-t382 * t509 + t711) * t503 + (-t384 * t509 - t710) * t502;
t240 = (t333 * t503 - t337 * t502) * t509;
t785 = m(5) * (t189 * t240 + t233 * t271 - t234 * t273);
t100 = (t509 * t656 - t589) * t503 + (-t509 * t655 - t813) * t502;
t173 = (-t659 * t502 - t503 * t660) * t509;
t677 = t220 * t697 - t221 * t702;
t780 = m(6) * (-t100 * t512 + (t148 * t503 + t149 * t502 + t173) * t509 + t677);
t779 = m(6) * (t100 * t173 + t148 * t220 - t149 * t221);
t488 = t744 + t746;
t649 = t633 * t488;
t159 = -t502 * t660 + t659 * t503 + t649;
t227 = -t300 * t502 + t301 * t503;
t774 = m(6) * (t159 * t227 - t295 * t385 - t297 * t386);
t456 = t633 * t509;
t773 = m(6) * (t173 * t456 + t677);
t770 = t456 / 0.2e1;
t766 = -t503 / 0.4e1;
t738 = rSges(4,1) * t512;
t592 = pkin(2) + t738;
t634 = rSges(4,2) * t704 + t503 * rSges(4,3);
t360 = -t502 * t592 + t590 + t634;
t484 = rSges(4,2) * t699;
t361 = t747 - t484 + t592 * t503 + (rSges(4,3) + pkin(6)) * t502;
t476 = rSges(4,1) * t509 + rSges(4,2) * t512;
t447 = t476 * t502;
t448 = t476 * t503;
t759 = m(4) * (t360 * t447 - t361 * t448);
t223 = t333 * t502 + t337 * t503 + t649;
t267 = t357 * t502 + t359 * t503;
t758 = m(5) * (t223 * t267 + (t362 * t502 + t364 * t503) * t464);
t756 = m(5) * (t269 * t339 + t270 * t340);
t755 = m(5) * (-t269 * t357 + t270 * t359);
t673 = t260 * t697 + t261 * t702;
t754 = m(6) * (-t295 * t699 + t297 * t704 + t673);
t753 = m(6) * (-t220 * t704 - t221 * t699);
t752 = m(6) * ((t310 * t503 + t311 * t502) * t509 + t673);
t751 = m(6) * (t260 * t300 + t261 * t301);
t750 = m(6) * (t260 * t310 + t261 * t311);
t749 = m(6) * (-t227 * t512 + (t385 * t502 + t386 * t503) * t509);
t748 = m(6) * t225;
t740 = m(6) * qJD(3);
t739 = m(6) * qJD(5);
t708 = t397 * t509;
t691 = t509 * t512;
t52 = 0.2e1 * (t100 / 0.4e1 - t227 / 0.4e1) * m(6) + 0.2e1 * (t189 / 0.4e1 - t267 / 0.4e1) * m(5);
t687 = t52 * qJD(2);
t669 = -t295 * t702 - t297 * t697;
t652 = t502 * t396 + t400 * t697;
t650 = t502 * (pkin(7) * t702 - t489) + t503 * (-pkin(3) * t699 + t491);
t638 = -t452 - t488;
t635 = t633 * t691;
t632 = qJD(1) * t509;
t631 = qJD(1) * t512;
t630 = qJD(3) * t502;
t629 = qJD(3) * t503;
t628 = qJD(4) * t509;
t627 = qJD(4) * t512;
t394 = (t770 + t823) * m(6);
t625 = t394 * qJD(2);
t524 = t509 * t546 + t715;
t130 = t373 * t425 - t377 * t426 + t502 * t524;
t523 = t509 * t545 + t714;
t131 = t374 * t425 - t378 * t426 + t502 * t523;
t522 = t509 * t544 + t713;
t132 = t375 * t425 - t379 * t426 + t502 * t522;
t521 = t509 * t543 + t712;
t133 = t376 * t425 - t380 * t426 + t502 * t521;
t622 = (-t832 + t880) * t822 + ((t131 + t133) * t503 + (t130 + t132) * t502 + t829) * t763;
t134 = -t373 * t427 - t377 * t428 + t503 * t524;
t135 = -t374 * t427 - t378 * t428 + t503 * t523;
t136 = -t375 * t427 - t379 * t428 + t503 * t522;
t137 = -t376 * t427 - t380 * t428 + t503 * t521;
t621 = (t568 + t567 - t831) * t822 + ((t135 + t137) * t503 + (t134 + t136) * t502 + t828) * t763;
t620 = (t836 * t502 + t835 * t503 + t826) * t823 + (t825 - t830) * t762;
t619 = t858 * t765 + t857 * t824;
t618 = t856 * t767 + t855 * t769;
t615 = t826 * t822 + t825 * t823;
t610 = -t488 - t646;
t607 = t704 / 0.4e1;
t600 = t166 / 0.2e1 + t168 / 0.2e1;
t599 = -t167 / 0.2e1 - t169 / 0.2e1;
t593 = t458 / 0.2e1 + t457 / 0.2e1;
t587 = t398 * t509 - t395;
t578 = -t504 - t731;
t573 = -Icges(4,5) * t509 - Icges(4,6) * t512;
t555 = -t619 - t622;
t554 = t618 - t621;
t551 = (t745 * t509 - t463) * t509;
t443 = -Icges(4,2) * t702 - t482;
t445 = t578 * t502;
t535 = (t397 - t445) * t512 + (t399 + t443) * t509;
t444 = t472 * t503;
t446 = t578 * t503;
t534 = (-t398 + t446) * t512 + (-t400 + t444) * t509;
t266 = -t398 * t699 + t652;
t533 = (t503 * t587 + t266 - t652) * t765 + (-t502 * (-t399 * t512 + t708) - t395 * t503) * t767 + (t502 * t587 + t588 + t827) * t769;
t532 = t266 * t769 + t652 * t824 + (-t366 + (t396 + t708) * t503 + t653 + t827) * t767;
t525 = -t804 + (t833 - t853) * t502 / 0.4e1 + (t834 - t854) * t766;
t515 = (-t704 / 0.4e1 + t607) * (t862 + t861) + (t766 + t503 / 0.4e1) * (t868 + t869);
t514 = -t803 + t826 * t763 + t830 * t762 + (t832 + t836) * t607 + (t829 + t864) * t702 / 0.4e1 + (t831 + t835) * t699 / 0.4e1 + (t828 + t863) * t697 / 0.4e1;
t478 = -rSges(4,2) * t509 + t738;
t442 = t573 * t503;
t441 = t573 * t502;
t393 = (t763 + t770) * m(6);
t390 = t635 - t691;
t365 = t638 * t503;
t363 = t638 * t502;
t341 = -t447 * t502 - t448 * t503;
t298 = t610 * t503;
t296 = t610 * t502;
t294 = -t359 * t512 - t464 * t699;
t293 = t357 * t512 + t464 * t704;
t258 = (t357 * t503 - t359 * t502) * t509;
t257 = -t301 * t512 + t503 * t551;
t256 = -t300 * t512 - t502 * t551;
t249 = -t512 * t458 + (-t508 * t640 + t511 * t642) * t509;
t248 = -t512 * t457 + (-t508 * t641 + t511 * t643) * t509;
t236 = -t382 * t502 + t384 * t503 + t650;
t230 = t748 / 0.2e1;
t176 = t502 * t656 + t503 * t655 + t650;
t174 = t749 / 0.2e1;
t127 = t752 / 0.2e1;
t124 = t753 / 0.2e1;
t116 = t754 / 0.2e1;
t90 = t159 * t456 + t669;
t74 = t773 / 0.2e1;
t66 = -t136 * t503 + t137 * t502;
t65 = -t134 * t503 + t135 * t502;
t64 = -t132 * t503 + t133 * t502;
t63 = -t130 * t503 + t131 * t502;
t59 = t800 * t509 - t593 * t512 + t751 + t755;
t53 = (t189 + t267) * t790 + (t100 + t227) * t788;
t47 = -t797 * t509 - t798 * t512 + t750 + t756 + t759;
t45 = t116 - t752 / 0.2e1;
t44 = t116 + t127;
t43 = t127 - t754 / 0.2e1;
t18 = t124 + t230;
t17 = t124 - t748 / 0.2e1;
t16 = t230 - t753 / 0.2e1;
t13 = t780 / 0.2e1;
t10 = t74 + t174 - t780 / 0.2e1;
t9 = t74 + t13 - t749 / 0.2e1;
t8 = t174 + t13 - t773 / 0.2e1;
t7 = t502 * t618 + t503 * t619 + t758 + t774;
t6 = t502 * t533 + t503 * t532;
t4 = t785 + t779 + (t502 * t617 + t503 * t616 + t620) * t512 + (t502 * t622 + t503 * t621 - t615) * t509;
t3 = t515 + (-t280 / 0.2e1 - t279 / 0.2e1 + (-t197 / 0.4e1 - t196 / 0.4e1 - t157 / 0.4e1 - t155 / 0.4e1) * t503 + (-t195 / 0.4e1 - t194 / 0.4e1 - t156 / 0.4e1 - t154 / 0.4e1) * t502) * t509 + t525 + (t232 / 0.2e1 + t231 / 0.2e1 + (-t255 / 0.4e1 - t254 / 0.4e1 - t214 / 0.4e1 - t211 / 0.4e1) * t503 + (-t251 / 0.4e1 - t250 / 0.4e1 + t213 / 0.4e1 + t210 / 0.4e1) * t502) * t512 + t803;
t2 = t514 + (t216 / 0.4e1 + t215 / 0.4e1 + t168 / 0.4e1 + t166 / 0.4e1) * t503 + (-t218 / 0.4e1 - t217 / 0.4e1 - t169 / 0.4e1 - t167 / 0.4e1) * t502 + t515 + t804;
t1 = t514 + t525;
t5 = [t47 * qJD(3) + t59 * qJD(4) + t177 * t739, 0, t47 * qJD(1) + t1 * qJD(4) + t44 * qJD(5) + ((t260 * t298 + t261 * t296 - t295 * t311 - t297 * t310) * t788 + (t269 * t365 + t270 * t363 - t339 * t364 - t340 * t362) * t790) * t794 + (m(4) * (-t360 * t478 - t447 * t476) - t195 / 0.2e1 - t194 / 0.2e1 + t471 * t765 + (-t399 / 0.2e1 - t443 / 0.2e1) * t512 + (t397 / 0.2e1 - t445 / 0.2e1) * t509 - t532 - t806) * t629 + (m(4) * (-t361 * t478 + t448 * t476) + t196 / 0.2e1 + t197 / 0.2e1 + t471 * t769 + (t400 / 0.2e1 - t444 / 0.2e1) * t512 + (-t398 / 0.2e1 + t446 / 0.2e1) * t509 - t533 - t805) * t630, t59 * qJD(1) + t1 * qJD(3) + t18 * qJD(5) + ((t269 * t293 + t270 * t294 - t271 * t357 - t273 * t359) * t790 + (t220 * t300 - t221 * t301 + t256 * t260 + t257 * t261) * t788) * t792 + (-t249 - t248) * t627 + ((t218 / 0.2e1 + t217 / 0.2e1 - t599) * t503 + (t216 / 0.2e1 + t215 / 0.2e1 + t600) * t502) * t628, t44 * qJD(3) + t18 * qJD(4) + t859; 0, 0, (m(4) * t341 / 0.2e1 + t236 * t790 + t176 * t788) * t794 + t53 * qJD(4) + t393 * qJD(5), t53 * qJD(3) + (-t225 * t788 + t258 * t790) * t792, t393 * qJD(3); t6 * qJD(3) + t3 * qJD(4) + t45 * qJD(5) + (-t750 / 0.4e1 - t756 / 0.4e1 - t759 / 0.4e1) * t795 + t798 * t631 + t797 * t632, -qJD(4) * t52 + qJD(5) * t394, t6 * qJD(1) + t7 * qJD(4) + t90 * t739 + (m(6) * (t159 * t176 - t295 * t296 - t297 * t298) + m(5) * (t223 * t236 - t362 * t363 - t364 * t365) + m(4) * (t476 * t478 * t633 + (t502 * (rSges(4,1) * t702 - t634) + t503 * (rSges(4,1) * t697 + t502 * rSges(4,3) - t484)) * t341) + (t65 + t66 + t500 * t442 + (t535 * t503 + (-t441 + t534) * t502) * t503) * t769 + (t64 + t63 + t501 * t441 + (t534 * t502 + (-t442 + t535) * t503) * t502) * t767) * qJD(3), t3 * qJD(1) - t687 + t7 * qJD(3) + (t767 * t819 + t769 * t818) * qJD(4) + t10 * qJD(5) + (-t779 / 0.4e1 - t785 / 0.4e1) * t791 + ((t223 * t258 + t240 * t267 - t293 * t364 - t294 * t362 + (-t271 * t503 + t273 * t502) * t464) * t790 + (-t159 * t225 + t173 * t227 + t220 * t386 - t221 * t385 - t256 * t297 - t257 * t295) * t788) * t792 + ((t600 - t616) * t503 + (t599 - t617) * t502 - t620) * t627 + (t502 * t555 + t503 * t554 + t615) * t628, t45 * qJD(1) + t625 + t90 * t740 + t10 * qJD(4) + (-t456 * t512 - t390 + t635) * t739; t2 * qJD(3) + t17 * qJD(5) + t593 * t631 + (-t755 / 0.4e1 - t751 / 0.4e1) * t795 - t800 * t632, qJD(3) * t52, t2 * qJD(1) + t687 + t4 * qJD(4) + t9 * qJD(5) + 0.4e1 * (-t774 / 0.4e1 - t758 / 0.4e1) * qJD(3) + ((t189 * t223 - t233 * t364 - t234 * t362 + t236 * t240 + t271 * t365 - t273 * t363) * t790 + (t100 * t159 - t148 * t297 - t149 * t295 + t173 * t176 + t220 * t298 - t221 * t296) * t788) * t794 + ((t862 / 0.2e1 + t861 / 0.2e1 + t806) * t512 + (t65 / 0.2e1 + t66 / 0.2e1 + t210 / 0.2e1 + t213 / 0.2e1) * t509 + t555) * t629 + ((t882 * t767 + t881 * t769 + t805) * t512 + (t64 / 0.2e1 + t63 / 0.2e1 + t211 / 0.2e1 + t214 / 0.2e1) * t509 - t554) * t630, t4 * qJD(3) + ((-t173 * t225 + t220 * t256 - t221 * t257) * m(6) / 0.4e1 + (t240 * t258 + t271 * t293 - t273 * t294) * m(5) / 0.4e1) * t791 + (t248 / 0.2e1 + t249 / 0.2e1) * qJD(4) * t512 ^ 2 + (t819 * t769 + t818 * t765 + (t834 * t502 + t833 * t503) * t762) * t628, qJD(1) * t17 + qJD(3) * t9; t43 * qJD(3) + t16 * qJD(4) - t859, -t394 * qJD(3), t43 * qJD(1) - t625 + (-t176 * t512 + (t296 * t502 + t298 * t503 + t159) * t509 - t90 + t669) * t740 + t8 * qJD(4) + t390 * t739, t16 * qJD(1) + t8 * qJD(3) + m(6) * (t225 * t512 + (t256 * t503 + t257 * t502) * t509) * qJD(4), t390 * t740;];
Cq = t5;