% Calculate matrix of centrifugal and coriolis load on the joints for
% S4RRRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3]';
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
% Datum: 2019-12-31 17:21
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S4RRRP7_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(6,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRP7_coriolismatJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRP7_coriolismatJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S4RRRP7_coriolismatJ_fixb_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRP7_coriolismatJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRRP7_coriolismatJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4RRRP7_coriolismatJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:20:11
% EndTime: 2019-12-31 17:20:46
% DurationCPUTime: 30.06s
% Computational Cost: add. (31790->765), mult. (79725->1074), div. (0->0), fcn. (88642->6), ass. (0->445)
t486 = cos(qJ(3));
t483 = sin(qJ(3));
t488 = cos(qJ(1));
t655 = t488 * t483;
t485 = sin(qJ(1));
t487 = cos(qJ(2));
t659 = t485 * t487;
t429 = t486 * t659 - t655;
t415 = Icges(5,5) * t429;
t658 = t486 * t488;
t428 = t483 * t659 + t658;
t484 = sin(qJ(2));
t662 = t484 * t485;
t301 = -Icges(5,6) * t662 - Icges(5,3) * t428 - t415;
t303 = Icges(4,5) * t429 - Icges(4,6) * t428 + Icges(4,3) * t662;
t306 = Icges(5,4) * t429 + Icges(5,2) * t662 + Icges(5,6) * t428;
t418 = Icges(4,4) * t429;
t309 = -Icges(4,2) * t428 + Icges(4,6) * t662 + t418;
t414 = Icges(5,5) * t428;
t312 = Icges(5,1) * t429 + Icges(5,4) * t662 + t414;
t417 = Icges(4,4) * t428;
t316 = -Icges(4,1) * t429 - Icges(4,5) * t662 + t417;
t846 = (t303 + t306) * t662 + (t312 - t316) * t429 + (-t301 - t309) * t428;
t657 = t487 * t488;
t660 = t485 * t483;
t431 = t486 * t657 + t660;
t416 = Icges(5,5) * t431;
t430 = -t485 * t486 + t487 * t655;
t661 = t484 * t488;
t302 = Icges(5,6) * t661 + Icges(5,3) * t430 + t416;
t305 = Icges(4,5) * t431 - Icges(4,6) * t430 + Icges(4,3) * t661;
t308 = Icges(5,4) * t431 + Icges(5,2) * t661 + Icges(5,6) * t430;
t687 = Icges(4,4) * t431;
t311 = -Icges(4,2) * t430 + Icges(4,6) * t661 + t687;
t682 = Icges(5,5) * t430;
t314 = Icges(5,1) * t431 + Icges(5,4) * t661 + t682;
t419 = Icges(4,4) * t430;
t317 = Icges(4,1) * t431 + Icges(4,5) * t661 - t419;
t845 = (t305 + t308) * t662 + (t314 + t317) * t429 + (t302 - t311) * t428;
t680 = Icges(5,5) * t486;
t466 = t484 * t680;
t664 = t483 * t484;
t676 = Icges(5,6) * t487;
t384 = Icges(5,3) * t664 + t466 - t676;
t551 = Icges(5,4) * t486 + Icges(5,6) * t483;
t390 = -Icges(5,2) * t487 + t551 * t484;
t681 = Icges(5,5) * t483;
t553 = Icges(5,1) * t486 + t681;
t396 = -Icges(5,4) * t487 + t553 * t484;
t237 = t384 * t428 + t390 * t662 + t396 * t429;
t549 = Icges(4,5) * t486 - Icges(4,6) * t483;
t386 = -Icges(4,3) * t487 + t549 * t484;
t685 = Icges(4,4) * t486;
t552 = -Icges(4,2) * t483 + t685;
t392 = -Icges(4,6) * t487 + t552 * t484;
t686 = Icges(4,4) * t483;
t554 = Icges(4,1) * t486 - t686;
t398 = -Icges(4,5) * t487 + t554 * t484;
t238 = t386 * t662 - t392 * t428 + t398 * t429;
t785 = t237 + t238;
t844 = t846 * t485 + t845 * t488;
t721 = t484 / 0.2e1;
t718 = -t487 / 0.2e1;
t690 = rSges(5,3) + qJ(4);
t712 = rSges(5,1) + pkin(3);
t842 = t690 * t483 + t712 * t486;
t812 = t842 * t484;
t720 = t485 / 0.2e1;
t716 = -t488 / 0.2e1;
t701 = pkin(2) * t487;
t463 = pkin(6) * t484 + t701;
t751 = t488 ^ 2;
t752 = t485 ^ 2;
t811 = t751 + t752;
t609 = t811 * t463;
t810 = t690 * t430 + t712 * t431;
t627 = rSges(5,2) * t661 + t810;
t767 = -t690 * t428 - t712 * t429;
t780 = rSges(5,2) * t662 - t767;
t166 = t485 * t780 + t627 * t488 + t609;
t263 = t712 * t428 - t690 * t429;
t264 = -t430 * t712 + t431 * t690;
t201 = -t263 * t485 + t264 * t488;
t765 = -t429 * rSges(4,1) + t428 * rSges(4,2);
t319 = rSges(4,3) * t662 - t765;
t559 = t431 * rSges(4,1) - t430 * rSges(4,2);
t323 = rSges(4,3) * t661 + t559;
t222 = t485 * t319 + t323 * t488 + t609;
t347 = -rSges(4,1) * t428 - rSges(4,2) * t429;
t352 = -rSges(4,1) * t430 - rSges(4,2) * t431;
t250 = t485 * t347 + t352 * t488;
t462 = pkin(2) * t484 - pkin(6) * t487;
t614 = -rSges(5,2) * t487 + t812;
t585 = t462 + t614;
t286 = t585 * t485;
t288 = t585 * t488;
t605 = (-t483 * t712 + t486 * t690) * t484;
t327 = t605 * t485;
t328 = t605 * t488;
t694 = rSges(4,1) * t486;
t558 = -rSges(4,2) * t483 + t694;
t512 = t558 * t484;
t779 = rSges(4,3) * t487 - t512;
t613 = -t779 + t462;
t329 = t613 * t485;
t331 = t613 * t488;
t446 = (-rSges(4,1) * t483 - rSges(4,2) * t486) * t484;
t843 = -m(4) * (t222 * t250 + (t329 * t485 + t331 * t488) * t446) - m(5) * (t166 * t201 + t286 * t327 + t288 * t328);
t588 = t785 * t718 + t844 * t721;
t700 = t485 * pkin(5);
t583 = pkin(1) + t701;
t711 = rSges(5,2) + pkin(6);
t758 = t711 * t484 + t583;
t235 = t488 * t758 + t700 + t810;
t481 = t488 * pkin(5);
t821 = -t485 * t758 + t481 + t767;
t827 = -t235 * t430 + t428 * t821;
t841 = t827 * m(5) * qJD(1);
t241 = t430 * t384 + t390 * t661 + t431 * t396;
t183 = -t430 * t301 + t306 * t661 + t431 * t312;
t184 = t430 * t302 + t308 * t661 + t431 * t314;
t545 = t485 * t183 + t184 * t488;
t829 = -t241 * t487 + t545 * t484;
t242 = t386 * t661 - t430 * t392 + t431 * t398;
t185 = t303 * t661 - t430 * t309 - t431 * t316;
t186 = t305 * t661 - t430 * t311 + t431 * t317;
t544 = t485 * t185 + t186 * t488;
t830 = -t242 * t487 + t544 * t484;
t587 = t830 / 0.2e1 + t829 / 0.2e1;
t335 = -Icges(4,5) * t428 - Icges(4,6) * t429;
t337 = -Icges(5,4) * t428 + Icges(5,6) * t429;
t837 = t335 + t337;
t336 = -Icges(4,5) * t430 - Icges(4,6) * t431;
t338 = -Icges(5,4) * t430 + Icges(5,6) * t431;
t836 = t336 + t338;
t631 = Icges(4,2) * t431 - t317 + t419;
t633 = Icges(5,3) * t431 - t314 - t682;
t834 = t631 + t633;
t632 = Icges(4,2) * t429 + t316 + t417;
t634 = Icges(5,3) * t429 - t312 - t414;
t833 = t632 + t634;
t635 = -Icges(4,1) * t430 - t311 - t687;
t637 = -Icges(5,1) * t430 + t302 + t416;
t832 = t635 + t637;
t636 = -Icges(4,1) * t428 - t309 - t418;
t638 = -Icges(5,1) * t428 - t301 + t415;
t831 = t636 + t638;
t669 = t306 * t487;
t808 = t301 * t483 - t312 * t486;
t212 = t808 * t484 + t669;
t671 = t303 * t487;
t807 = t309 * t483 + t316 * t486;
t215 = t807 * t484 + t671;
t371 = t779 * t485;
t823 = -t212 - t215;
t538 = t302 * t483 + t314 * t486;
t668 = t308 * t487;
t213 = t538 * t484 - t668;
t536 = -t311 * t483 + t317 * t486;
t670 = t305 * t487;
t216 = t536 * t484 - t670;
t822 = t213 + t216;
t820 = -t183 * t488 + t184 * t485;
t819 = -t185 * t488 + t186 * t485;
t258 = t319 * t487 - t779 * t662;
t818 = t833 * t428 + t831 * t429 + t837 * t662;
t817 = t834 * t428 + t832 * t429 + t836 * t662;
t816 = t833 * t430 + t831 * t431 + t837 * t661;
t815 = t834 * t430 + t832 * t431 + t836 * t661;
t436 = (-Icges(5,4) * t483 + Icges(5,6) * t486) * t484;
t432 = (Icges(5,3) * t486 - t681) * t484;
t617 = -t396 + t432;
t440 = -Icges(5,1) * t664 + t466;
t620 = t384 + t440;
t195 = t617 * t428 + t620 * t429 + t436 * t662;
t433 = (-Icges(4,5) * t483 - Icges(4,6) * t486) * t484;
t437 = (-Icges(4,2) * t486 - t686) * t484;
t616 = -t398 - t437;
t441 = (-Icges(4,1) * t483 - t685) * t484;
t619 = -t392 + t441;
t196 = t616 * t428 + t619 * t429 + t433 * t662;
t814 = -t196 - t195;
t197 = t617 * t430 + t620 * t431 + t436 * t661;
t198 = t616 * t430 + t619 * t431 + t433 * t661;
t813 = -t198 - t197;
t809 = t487 * t780 + t614 * t662;
t806 = -m(4) / 0.2e1;
t805 = -m(5) / 0.2e1;
t793 = t614 * t485;
t548 = Icges(5,3) * t483 + t680;
t500 = -t548 * t484 + t676;
t358 = t500 * t485;
t366 = t396 * t485;
t523 = t390 * t485 - t808;
t150 = t523 * t487 + (t358 * t483 - t366 * t486 + t306) * t484;
t364 = t392 * t485;
t368 = t398 * t485;
t521 = -t386 * t485 + t807;
t152 = -t521 * t487 + (t364 * t483 - t368 * t486 + t303) * t484;
t792 = t150 + t152;
t359 = t500 * t488;
t367 = t396 * t488;
t522 = t390 * t488 + t538;
t151 = t522 * t487 + (t359 * t483 - t367 * t486 + t308) * t484;
t365 = t392 * t488;
t369 = t398 * t488;
t520 = -t386 * t488 - t536;
t153 = -t520 * t487 + (t365 * t483 - t369 * t486 + t305) * t484;
t791 = t151 + t153;
t161 = -t337 * t487 + (t634 * t483 + t638 * t486) * t484;
t163 = -t335 * t487 + (t632 * t483 + t636 * t486) * t484;
t790 = t161 + t163;
t162 = -t338 * t487 + (t633 * t483 + t637 * t486) * t484;
t164 = -t336 * t487 + (t631 * t483 + t635 * t486) * t484;
t789 = t162 + t164;
t385 = Icges(5,6) * t484 + t548 * t487;
t397 = Icges(5,4) * t484 + t553 * t487;
t391 = Icges(5,2) * t484 + t551 * t487;
t534 = t483 * t384 + t486 * t396;
t519 = -t391 + t534;
t665 = t390 * t487;
t492 = -t519 * t484 + t665;
t173 = t385 * t428 + t397 * t429 + t492 * t485;
t393 = Icges(4,6) * t484 + t552 * t487;
t399 = Icges(4,5) * t484 + t554 * t487;
t387 = Icges(4,3) * t484 + t549 * t487;
t533 = -t483 * t392 + t486 * t398;
t518 = t387 - t533;
t667 = t386 * t487;
t493 = t518 * t484 + t667;
t174 = -t393 * t428 + t399 * t429 + t493 * t485;
t788 = t173 + t174;
t175 = t430 * t385 + t431 * t397 + t492 * t488;
t176 = -t430 * t393 + t431 * t399 + t493 * t488;
t787 = t175 + t176;
t206 = t519 * t487 + (t483 * t385 + t486 * t397 + t390) * t484;
t207 = -t518 * t487 + (-t483 * t393 + t486 * t399 + t386) * t484;
t786 = t206 + t207;
t784 = t241 + t242;
t251 = t534 * t484 - t665;
t252 = t533 * t484 - t667;
t783 = t251 + t252;
t394 = Icges(3,4) * t659 - Icges(3,2) * t662 - Icges(3,6) * t488;
t479 = Icges(3,4) * t487;
t679 = Icges(3,2) * t484;
t395 = Icges(3,6) * t485 + (t479 - t679) * t488;
t688 = Icges(3,4) * t484;
t456 = Icges(3,1) * t487 - t688;
t401 = Icges(3,5) * t485 + t456 * t488;
t374 = t401 * t659;
t452 = Icges(3,5) * t487 - Icges(3,6) * t484;
t389 = Icges(3,3) * t485 + t488 * t452;
t563 = t389 * t488 - t374;
t388 = Icges(3,5) * t659 - Icges(3,6) * t662 - Icges(3,3) * t488;
t467 = Icges(3,4) * t662;
t400 = Icges(3,1) * t659 - Icges(3,5) * t488 - t467;
t623 = -t485 * t388 - t400 * t657;
t782 = -t394 * t661 - t395 * t662 - t563 - t623;
t710 = rSges(4,3) + pkin(6);
t759 = t710 * t484 + t583;
t266 = -t485 * t759 + t481 + t765;
t781 = t485 * t823 + t822 * t488;
t778 = -t484 / 0.2e1;
t777 = -t485 / 0.2e1;
t776 = t487 / 0.2e1;
t714 = t488 / 0.2e1;
t774 = t814 * t487 + (t818 * t485 + t817 * t488) * t484;
t773 = t813 * t487 + (t816 * t485 + t815 * t488) * t484;
t764 = t150 / 0.2e1 + t152 / 0.2e1;
t763 = -t151 / 0.2e1 - t153 / 0.2e1;
t267 = t488 * t759 + t559 + t700;
t762 = (-t329 * t352 + t331 * t347 + (-t266 * t488 - t267 * t485) * t446) * t806 + (-t235 * t327 - t263 * t288 - t264 * t286 - t328 * t821) * t805;
t612 = rSges(5,2) * t484 + t487 * t842;
t154 = (t612 * t485 - t780) * t484;
t471 = rSges(5,2) * t657;
t624 = -t812 * t488 + t471;
t155 = (-t614 * t488 - t624) * t487 + (-t612 * t488 + t627) * t484;
t219 = t627 * t487 + t614 * t661;
t406 = rSges(4,3) * t484 + t558 * t487;
t220 = (t406 * t485 - t319) * t484;
t604 = t484 * rSges(4,2) * t655 + rSges(4,3) * t657;
t373 = -rSges(4,1) * t484 * t658 + t604;
t221 = (t488 * t779 - t373) * t487 + (-t406 * t488 + t323) * t484;
t260 = t487 * t323 - t661 * t779;
t473 = pkin(6) * t657;
t269 = t471 + t473 + (-pkin(2) - t842) * t661;
t472 = pkin(2) * t662;
t270 = t472 + (-t711 * t487 + t812) * t485;
t324 = t472 + (-t710 * t487 + t512) * t485;
t325 = t473 + (-pkin(2) - t694) * t661 + t604;
t761 = (t154 * t821 + t155 * t235 - t219 * t269 + t270 * t809) * t805 + (t220 * t266 + t221 * t267 + t258 * t324 - t260 * t325) * t806;
t569 = t398 / 0.2e1 + t396 / 0.2e1;
t571 = t392 / 0.2e1 - t384 / 0.2e1;
t757 = -(t437 / 0.2e1 - t432 / 0.2e1 + t569) * t483 + (t441 / 0.2e1 + t440 / 0.2e1 - t571) * t486;
t689 = Icges(3,1) * t484;
t755 = t571 * t483 - t569 * t486 + t387 / 0.2e1 + t391 / 0.2e1 - t479 + t679 / 0.2e1 - t689 / 0.2e1;
t453 = Icges(3,2) * t487 + t688;
t754 = (t393 / 0.2e1 - t385 / 0.2e1) * t483 - (t399 / 0.2e1 + t397 / 0.2e1) * t486 - t386 / 0.2e1 - t390 / 0.2e1 + t453 / 0.2e1 - t456 / 0.2e1;
t438 = -Icges(3,2) * t659 - t467;
t439 = t453 * t488;
t555 = -t479 - t689;
t442 = t555 * t485;
t443 = t555 * t488;
t753 = (t488 * (t394 - t442) + (-t395 + t443) * t485) * t487 + (t488 * (t400 + t438) + (-t401 + t439) * t485) * t484;
t749 = 0.4e1 * qJD(1);
t748 = 2 * qJD(2);
t746 = 2 * qJD(3);
t745 = 4 * qJD(3);
t744 = m(4) / 0.2e1;
t742 = m(5) / 0.2e1;
t535 = t319 * t488 - t323 * t485;
t188 = t535 * t487 + (t371 * t488 - t373 * t485) * t484;
t245 = t535 * t484;
t740 = m(4) * (t188 * t245 + t220 * t258 - t221 * t260);
t509 = -t627 * t485 + t488 * t780;
t127 = t509 * t487 + (-t624 * t485 - t488 * t793) * t484;
t178 = t509 * t484;
t541 = t219 * t485 - t488 * t809;
t735 = m(5) * (t430 * t154 + t428 * t155 + (t178 * t487 + (t127 + t541) * t484) * t483);
t734 = m(5) * (t127 * t178 + t154 * t809 - t155 * t219);
t299 = (t428 * t488 - t430 * t485) * t484;
t326 = t485 * t428 + t430 * t488;
t482 = t484 ^ 2;
t354 = t428 * t487 + t482 * t660;
t355 = -t487 * t430 - t482 * t655;
t732 = m(5) * (t299 * t166 + t178 * t326 - t355 * t286 - t354 * t288 + t541 * t664);
t728 = m(5) * (-t286 * t429 - t288 * t431 - t327 * t428 - t328 * t430 + (t166 * t486 + t201 * t483) * t484);
t727 = m(5) * (-t430 * t219 + t235 * t355 + t354 * t821 - t428 * t809);
t723 = m(5) * (t235 * t429 + t263 * t430 + t264 * t428 + t431 * t821);
t510 = (-t235 * t485 - t488 * t821) * t664;
t722 = m(5) * (t428 * t269 + t430 * t270 + t510);
t715 = -t488 / 0.4e1;
t695 = rSges(3,1) * t487;
t566 = pkin(1) + t695;
t603 = rSges(3,2) * t662 + t488 * rSges(3,3);
t356 = -t566 * t485 + t481 + t603;
t469 = rSges(3,2) * t661;
t357 = -t469 + t566 * t488 + (rSges(3,3) + pkin(5)) * t485;
t458 = rSges(3,1) * t484 + rSges(3,2) * t487;
t448 = t458 * t485;
t450 = t458 * t488;
t709 = m(3) * (t356 * t448 - t357 * t450);
t706 = m(4) * (t266 * t324 + t267 * t325);
t705 = m(4) * (-t266 * t347 + t267 * t352);
t704 = m(5) * (-t430 * t286 + t428 * t288 + t510);
t703 = m(5) * (t235 * t264 + t263 * t821);
t702 = m(5) * (t235 * t269 + t270 * t821);
t698 = m(5) * qJD(2);
t697 = m(5) * qJD(3);
t696 = m(5) * qJD(4);
t663 = t484 * t394;
t622 = t485 * t389 + t401 * t657;
t611 = -t406 - t463;
t610 = t485 * (pkin(6) * t659 - t472) + t488 * (-pkin(2) * t661 + t473);
t602 = qJD(1) * t484;
t601 = qJD(1) * t487;
t600 = qJD(2) * t485;
t599 = qJD(2) * t488;
t598 = qJD(3) * t484;
t597 = qJD(3) * t487;
t285 = (t483 * t487 - t326) * t664;
t596 = t285 * t696;
t495 = -t523 * t484 + t669;
t130 = t358 * t428 - t366 * t429 + t495 * t485;
t494 = -t522 * t484 + t668;
t131 = t359 * t428 - t367 * t429 + t494 * t485;
t497 = t521 * t484 + t671;
t132 = t364 * t428 - t368 * t429 + t497 * t485;
t496 = t520 * t484 + t670;
t133 = t365 * t428 - t369 * t429 + t496 * t485;
t593 = (-t788 + t844) * t776 + ((t131 + t133) * t488 + (t130 + t132) * t485 + t785) * t721;
t134 = t430 * t358 - t431 * t366 + t495 * t488;
t135 = t430 * t359 - t431 * t367 + t494 * t488;
t136 = t430 * t364 - t431 * t368 + t497 * t488;
t137 = t430 * t365 - t431 * t369 + t496 * t488;
t592 = (t544 + t545 - t787) * t776 + ((t135 + t137) * t488 + (t134 + t136) * t485 + t784) * t721;
t591 = (t485 * t792 + t488 * t791 + t783) * t778 + (t781 - t786) * t718;
t590 = t818 * t714 + t817 * t777;
t589 = t816 * t716 + t815 * t720;
t586 = t776 * t783 + t778 * t781;
t584 = -t463 - t612;
t581 = t662 / 0.4e1;
t574 = t161 / 0.2e1 + t163 / 0.2e1;
t573 = -t162 / 0.2e1 - t164 / 0.2e1;
t567 = t433 / 0.2e1 + t436 / 0.2e1;
t562 = t484 * t395 - t388;
t550 = -Icges(3,5) * t484 - Icges(3,6) * t487;
t540 = t286 * t485 + t288 * t488;
t531 = -t590 - t593;
t530 = t589 - t592;
t256 = -t395 * t661 + t622;
t508 = (-(-t487 * t400 + t663) * t485 - t388 * t488) * t716 + (t562 * t488 + t256 - t622) * t714 + (t562 * t485 + t563 + t782) * t720;
t507 = t622 * t777 + t256 * t720 + (-t374 + (t389 + t663) * t488 + t623 + t782) * t716;
t498 = -t762 + (t789 - t813) * t485 / 0.4e1 + (t790 - t814) * t715;
t490 = (-t662 / 0.4e1 + t581) * (t820 + t819) + (t715 + t488 / 0.4e1) * (t829 + t830);
t489 = -t761 + t783 * t721 + t786 * t718 + (t788 + t792) * t581 + (t787 + t791) * t661 / 0.4e1 + (t785 + t823) * t659 / 0.4e1 + (t784 + t822) * t657 / 0.4e1;
t460 = -rSges(3,2) * t484 + t695;
t435 = t550 * t488;
t434 = t550 * t485;
t332 = t611 * t488;
t330 = t611 * t485;
t289 = t584 * t488;
t287 = t584 * t485;
t272 = -t487 * t352 - t446 * t661;
t271 = t347 * t487 + t446 * t662;
t257 = t482 * t483 * t486 + t428 * t429 + t430 * t431;
t247 = (t347 * t488 - t352 * t485) * t484;
t243 = t485 * t371 + t373 * t488 + t610;
t229 = -t487 * t433 + (t616 * t483 + t619 * t486) * t484;
t228 = -t487 * t436 + (t617 * t483 + t620 * t486) * t484;
t225 = -t264 * t487 - t484 * t328;
t224 = -t263 * t487 + t605 * t662;
t210 = -t485 * t793 + t624 * t488 + t610;
t187 = (-t263 * t488 - t264 * t485) * t484;
t100 = t704 / 0.2e1;
t98 = t166 * t326 + t540 * t664;
t97 = t722 / 0.2e1;
t92 = t723 / 0.2e1;
t72 = t178 * t299 - t219 * t355 + t354 * t809;
t69 = t727 / 0.2e1;
t68 = -t136 * t488 + t137 * t485;
t67 = -t134 * t488 + t135 * t485;
t66 = -t132 * t488 + t133 * t485;
t65 = -t130 * t488 + t131 * t485;
t61 = t728 / 0.2e1;
t52 = t484 * t757 - t567 * t487 + t703 + t705;
t47 = t732 / 0.2e1;
t46 = -t484 * t754 - t487 * t755 + t702 + t706 + t709;
t20 = t97 - t704 / 0.2e1;
t19 = t100 + t97;
t18 = t100 - t722 / 0.2e1;
t16 = t735 / 0.2e1;
t13 = t92 - t727 / 0.2e1;
t12 = t69 + t92;
t11 = t69 - t723 / 0.2e1;
t10 = t61 + t16 - t732 / 0.2e1;
t9 = t47 + t61 - t735 / 0.2e1;
t8 = t47 + t16 - t728 / 0.2e1;
t7 = t589 * t485 + t590 * t488 - t843;
t6 = t508 * t485 + t507 * t488;
t4 = t740 + t734 + (t588 * t485 + t587 * t488 + t591) * t487 + (t593 * t485 + t592 * t488 - t586) * t484;
t3 = t489 + (-t198 / 0.4e1 - t197 / 0.4e1 - t164 / 0.4e1 - t162 / 0.4e1) * t485 + (t196 / 0.4e1 + t195 / 0.4e1 + t163 / 0.4e1 + t161 / 0.4e1) * t488 + t490 + t762;
t2 = t498 + (t207 / 0.2e1 + t206 / 0.2e1 + (-t242 / 0.4e1 - t241 / 0.4e1 - t216 / 0.4e1 - t213 / 0.4e1) * t488 + (-t238 / 0.4e1 - t237 / 0.4e1 + t215 / 0.4e1 + t212 / 0.4e1) * t485) * t487 + (-t252 / 0.2e1 - t251 / 0.2e1 + (-t176 / 0.4e1 - t175 / 0.4e1 - t153 / 0.4e1 - t151 / 0.4e1) * t488 + (-t174 / 0.4e1 - t173 / 0.4e1 - t152 / 0.4e1 - t150 / 0.4e1) * t485) * t484 + t490 + t761;
t1 = t498 + t489;
t5 = [t46 * qJD(2) + t52 * qJD(3) - t696 * t827, t46 * qJD(1) + t1 * qJD(3) + t19 * qJD(4) + ((t266 * t332 + t267 * t330 - t324 * t331 - t325 * t329) * t744 + (t235 * t287 - t269 * t286 - t270 * t288 + t289 * t821) * t742) * t748 + (-t173 / 0.2e1 - t174 / 0.2e1 + m(3) * (-t356 * t460 - t448 * t458) + t452 * t714 + (-t400 / 0.2e1 - t438 / 0.2e1) * t487 + (t394 / 0.2e1 - t442 / 0.2e1) * t484 - t507 - t764) * t599 + (t175 / 0.2e1 + t176 / 0.2e1 + m(3) * (-t357 * t460 + t450 * t458) + t452 * t720 + (t401 / 0.2e1 - t439 / 0.2e1) * t487 + (-t395 / 0.2e1 + t443 / 0.2e1) * t484 - t508 - t763) * t600, t52 * qJD(1) + t1 * qJD(2) + t12 * qJD(4) + ((-t219 * t264 + t224 * t821 + t225 * t235 + t263 * t809) * t742 + (-t258 * t347 - t260 * t352 + t266 * t271 + t267 * t272) * t744) * t746 + (-t229 - t228) * t597 + ((t198 / 0.2e1 + t197 / 0.2e1 - t573) * t488 + (t195 / 0.2e1 + t196 / 0.2e1 + t574) * t485) * t598, t19 * qJD(2) + t12 * qJD(3) - t841; t6 * qJD(2) + t2 * qJD(3) + t18 * qJD(4) + (-t709 / 0.4e1 - t706 / 0.4e1 - t702 / 0.4e1) * t749 + t755 * t601 + t754 * t602, t6 * qJD(1) + t7 * qJD(3) + t98 * t696 + (m(4) * (t222 * t243 - t329 * t330 - t331 * t332) + m(3) * ((t485 * (rSges(3,1) * t659 - t603) + t488 * (rSges(3,1) * t657 + t485 * rSges(3,3) - t469)) * (-t485 * t448 - t450 * t488) + t811 * t460 * t458) + m(5) * (t166 * t210 - t286 * t287 - t288 * t289) + (t68 + t752 * t435 + (-t485 * t434 + t753) * t488 + t67) * t720 + (t65 + t751 * t434 + (-t488 * t435 + t753) * t485 + t66) * t716) * qJD(2), t2 * qJD(1) + t7 * qJD(2) + (t716 * t774 + t720 * t773) * qJD(3) + t9 * qJD(4) + (-t740 / 0.4e1 - t734 / 0.4e1) * t745 + ((t166 * t187 + t178 * t201 + t219 * t327 - t224 * t288 - t225 * t286 - t328 * t809) * t742 + (t247 * t222 + t245 * t250 - t271 * t331 - t272 * t329 + (-t258 * t488 + t260 * t485) * t446) * t744) * t746 + ((t574 - t587) * t488 + (t573 - t588) * t485 - t591) * t597 + (t485 * t531 + t488 * t530 + t586) * t598, t18 * qJD(1) + t9 * qJD(3) + t698 * t98 - t596; t3 * qJD(2) + t11 * qJD(4) + t567 * t601 + (-t703 / 0.4e1 - t705 / 0.4e1) * t749 - t757 * t602, t3 * qJD(1) + t4 * qJD(3) + t8 * qJD(4) + ((t127 * t166 - t154 * t288 - t155 * t286 + t178 * t210 - t219 * t287 + t289 * t809) * t742 + (t188 * t222 - t220 * t331 - t221 * t329 + t243 * t245 + t258 * t332 - t260 * t330) * t744) * t748 + ((t820 / 0.2e1 + t819 / 0.2e1 + t764) * t487 + t531) * t599 + ((t846 * t716 + t845 * t720 + t763) * t487 - t530) * t600 + (((t67 / 0.2e1 + t68 / 0.2e1 + t212 / 0.2e1 + t215 / 0.2e1) * t488 + (t66 / 0.2e1 + t65 / 0.2e1 + t216 / 0.2e1 + t213 / 0.2e1) * t485) * t484 + t843) * qJD(2), t4 * qJD(2) + (t229 / 0.2e1 + t228 / 0.2e1) * qJD(3) * t487 ^ 2 + (m(5) * (t178 * t187 - t219 * t225 + t224 * t809) / 0.4e1 + (t245 * t247 + t258 * t271 - t260 * t272) * m(4) / 0.4e1) * t745 + t72 * t696 + (t774 * t720 + (t485 * t790 + t488 * t789) * t718 + t773 * t714) * t598, t11 * qJD(1) + t8 * qJD(2) + t72 * t697 + (t299 * t664 + t354 * t430 + t355 * t428 - t257) * t696; t20 * qJD(2) + t13 * qJD(3) + t841, t20 * qJD(1) + (t428 * t287 + t430 * t289 - t98 + (t166 * t487 + (t210 + t540) * t484) * t483) * t698 + t10 * qJD(3) + t596, t13 * qJD(1) + t10 * qJD(2) + (t809 * t431 - t219 * t429 + t224 * t430 + t225 * t428 + (t178 * t486 + t187 * t483) * t484 - t72) * t697 + t257 * t696, 0.4e1 * (t285 * qJD(2) / 0.4e1 + t257 * qJD(3) / 0.4e1) * m(5);];
Cq = t5;
