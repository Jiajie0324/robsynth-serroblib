% Calculate vector of centrifugal and Coriolis load on the joints for
% S6PPRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
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
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:58
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6PPRRRP2_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRP2_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRP2_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRRP2_coriolisvecJ_fixb_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PPRRRP2_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PPRRRP2_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PPRRRP2_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:56:03
% EndTime: 2019-03-08 18:57:56
% DurationCPUTime: 102.98s
% Computational Cost: add. (139546->1355), mult. (404061->1871), div. (0->0), fcn. (509682->14), ass. (0->488)
t815 = Icges(6,4) - Icges(7,5);
t807 = Icges(6,1) + Icges(7,1);
t806 = Icges(7,4) + Icges(6,5);
t805 = Icges(6,2) + Icges(7,3);
t814 = Icges(7,2) + Icges(6,3);
t813 = Icges(6,6) - Icges(7,6);
t681 = sin(pkin(11));
t684 = cos(pkin(12));
t574 = t681 * t684;
t680 = sin(pkin(12));
t685 = cos(pkin(11));
t578 = t685 * t680;
t687 = cos(pkin(6));
t486 = t578 * t687 + t574;
t497 = sin(qJ(3));
t697 = cos(qJ(3));
t573 = t681 * t680;
t580 = t685 * t684;
t506 = -t580 * t687 + t573;
t682 = sin(pkin(7));
t683 = sin(pkin(6));
t577 = t683 * t682;
t686 = cos(pkin(7));
t803 = t506 * t686 + t685 * t577;
t460 = t486 * t697 - t497 * t803;
t579 = t685 * t683;
t479 = t506 * t682 - t579 * t686;
t496 = sin(qJ(4));
t696 = cos(qJ(4));
t419 = t460 * t696 + t479 * t496;
t459 = t486 * t497 + t697 * t803;
t495 = sin(qJ(5));
t695 = cos(qJ(5));
t339 = t419 * t695 + t459 * t495;
t831 = t815 * t339;
t487 = -t573 * t687 + t580;
t507 = t574 * t687 + t578;
t576 = t683 * t681;
t743 = t507 * t686 - t682 * t576;
t462 = t487 * t697 - t497 * t743;
t480 = t507 * t682 + t576 * t686;
t421 = t462 * t696 + t480 * t496;
t461 = t487 * t497 + t697 * t743;
t341 = t421 * t695 + t461 * t495;
t830 = t815 * t341;
t575 = t683 * t680;
t739 = t684 * t686 * t683 + t687 * t682;
t478 = t497 * t739 + t697 * t575;
t485 = -t577 * t684 + t686 * t687;
t464 = t478 * t696 + t485 * t496;
t501 = -t497 * t575 + t697 * t739;
t423 = t464 * t695 - t495 * t501;
t829 = t815 * t423;
t553 = -t464 * t495 - t501 * t695;
t828 = t815 * t553;
t554 = -t421 * t495 + t461 * t695;
t827 = t815 * t554;
t555 = -t419 * t495 + t459 * t695;
t826 = t815 * t555;
t446 = t459 * qJD(3);
t552 = -t460 * t496 + t479 * t696;
t329 = qJD(4) * t552 - t446 * t696;
t447 = t460 * qJD(3);
t146 = qJD(5) * t339 + t329 * t495 - t447 * t695;
t147 = qJD(5) * t555 + t329 * t695 + t447 * t495;
t328 = qJD(4) * t419 - t446 * t496;
t825 = -t146 * t805 + t147 * t815 + t328 * t813;
t448 = t461 * qJD(3);
t551 = -t462 * t496 + t480 * t696;
t331 = qJD(4) * t551 - t448 * t696;
t449 = t462 * qJD(3);
t148 = qJD(5) * t341 + t331 * t495 - t449 * t695;
t149 = qJD(5) * t554 + t331 * t695 + t449 * t495;
t330 = qJD(4) * t421 - t448 * t496;
t824 = -t148 * t805 + t149 * t815 + t330 * t813;
t823 = t146 * t813 - t147 * t806 - t328 * t814;
t822 = t148 * t813 - t149 * t806 - t330 * t814;
t821 = -t815 * t146 + t147 * t807 + t806 * t328;
t820 = -t815 * t148 + t149 * t807 + t806 * t330;
t467 = t501 * qJD(3);
t550 = -t478 * t496 + t485 * t696;
t413 = qJD(4) * t550 + t467 * t696;
t468 = t478 * qJD(3);
t253 = qJD(5) * t423 + t413 * t495 - t468 * t695;
t254 = qJD(5) * t553 + t413 * t695 + t468 * t495;
t412 = qJD(4) * t464 + t467 * t496;
t819 = -t253 * t805 + t254 * t815 + t412 * t813;
t818 = t253 * t813 - t254 * t806 - t412 * t814;
t817 = -t815 * t253 + t254 * t807 + t806 * t412;
t784 = t552 * t813 - t555 * t805 - t831;
t783 = t551 * t813 - t554 * t805 - t830;
t782 = t339 * t806 - t552 * t814 + t555 * t813;
t781 = t341 * t806 - t551 * t814 + t554 * t813;
t780 = t339 * t807 - t806 * t552 + t826;
t779 = t341 * t807 - t806 * t551 + t827;
t768 = t550 * t813 - t553 * t805 - t829;
t767 = t423 * t806 - t550 * t814 + t553 * t813;
t766 = t423 * t807 - t806 * t550 + t828;
t798 = rSges(7,1) + pkin(5);
t785 = rSges(7,3) + qJ(6);
t475 = qJD(3) * t479;
t424 = qJD(4) * t459 + t475;
t713 = t424 / 0.2e1;
t476 = qJD(3) * t480;
t425 = qJD(4) * t461 + t476;
t711 = t425 / 0.2e1;
t484 = qJD(3) * t485;
t465 = -qJD(4) * t501 + t484;
t703 = t465 / 0.2e1;
t816 = qJD(4) / 0.2e1;
t797 = t784 * t146 + t780 * t147 + t782 * t328 + t821 * t339 + t823 * t552 + t825 * t555;
t796 = t783 * t146 + t779 * t147 + t781 * t328 + t820 * t339 + t822 * t552 + t824 * t555;
t795 = t784 * t148 + t780 * t149 + t782 * t330 + t821 * t341 + t823 * t551 + t825 * t554;
t794 = t783 * t148 + t779 * t149 + t781 * t330 + t820 * t341 + t822 * t551 + t824 * t554;
t791 = t784 * t253 + t780 * t254 + t782 * t412 + t821 * t423 + t823 * t550 + t825 * t553;
t790 = t783 * t253 + t779 * t254 + t781 * t412 + t820 * t423 + t822 * t550 + t824 * t553;
t788 = t768 * t146 + t766 * t147 + t767 * t328 + t817 * t339 + t818 * t552 + t819 * t555;
t787 = t768 * t148 + t766 * t149 + t767 * t330 + t817 * t341 + t818 * t551 + t819 * t554;
t786 = t768 * t253 + t766 * t254 + t767 * t412 + t817 * t423 + t818 * t550 + t819 * t553;
t755 = t780 * t339 - t782 * t552 - t784 * t555;
t754 = t779 * t339 - t781 * t552 - t783 * t555;
t753 = t780 * t341 - t782 * t551 - t784 * t554;
t752 = t779 * t341 - t781 * t551 - t783 * t554;
t751 = t780 * t423 - t782 * t550 - t784 * t553;
t750 = t779 * t423 - t781 * t550 - t783 * t553;
t749 = t766 * t339 - t767 * t552 - t768 * t555;
t748 = t766 * t341 - t767 * t551 - t768 * t554;
t747 = t766 * t423 - t767 * t550 - t768 * t553;
t812 = -t805 * t495 + t815 * t695;
t811 = t813 * t495 - t806 * t695;
t810 = -t815 * t495 + t807 * t695;
t150 = Icges(5,5) * t329 - Icges(5,6) * t328 + Icges(5,3) * t447;
t152 = Icges(5,4) * t329 - Icges(5,2) * t328 + Icges(5,6) * t447;
t154 = Icges(5,1) * t329 - Icges(5,4) * t328 + Icges(5,5) * t447;
t231 = Icges(5,5) * t419 + Icges(5,6) * t552 + Icges(5,3) * t459;
t676 = Icges(5,4) * t419;
t233 = Icges(5,2) * t552 + Icges(5,6) * t459 + t676;
t414 = Icges(5,4) * t552;
t235 = Icges(5,1) * t419 + Icges(5,5) * t459 + t414;
t48 = t150 * t461 + t152 * t551 + t154 * t421 + t231 * t449 - t233 * t330 + t235 * t331;
t151 = Icges(5,5) * t331 - Icges(5,6) * t330 + Icges(5,3) * t449;
t153 = Icges(5,4) * t331 - Icges(5,2) * t330 + Icges(5,6) * t449;
t155 = Icges(5,1) * t331 - Icges(5,4) * t330 + Icges(5,5) * t449;
t232 = Icges(5,5) * t421 + Icges(5,6) * t551 + Icges(5,3) * t461;
t675 = Icges(5,4) * t421;
t234 = Icges(5,2) * t551 + Icges(5,6) * t461 + t675;
t415 = Icges(5,4) * t551;
t236 = Icges(5,1) * t421 + Icges(5,5) * t461 + t415;
t49 = t151 * t461 + t153 * t551 + t155 * t421 + t232 * t449 - t234 * t330 + t236 * t331;
t353 = Icges(5,5) * t464 + Icges(5,6) * t550 - Icges(5,3) * t501;
t674 = Icges(5,4) * t464;
t354 = Icges(5,2) * t550 - Icges(5,6) * t501 + t674;
t458 = Icges(5,4) * t550;
t355 = Icges(5,1) * t464 - Icges(5,5) * t501 + t458;
t113 = t353 * t461 + t354 * t551 + t355 * t421;
t79 = t231 * t461 + t233 * t551 + t235 * t421;
t80 = t232 * t461 + t234 * t551 + t236 * t421;
t534 = t113 * t468 + t447 * t79 + t449 * t80;
t255 = Icges(5,5) * t413 - Icges(5,6) * t412 + Icges(5,3) * t468;
t256 = Icges(5,4) * t413 - Icges(5,2) * t412 + Icges(5,6) * t468;
t257 = Icges(5,1) * t413 - Icges(5,4) * t412 + Icges(5,5) * t468;
t55 = t255 * t461 + t256 * t551 + t257 * t421 - t330 * t354 + t331 * t355 + t353 * t449;
t635 = qJD(4) * t447;
t262 = qJD(5) * t328 + t635;
t634 = qJD(4) * t449;
t263 = qJD(5) * t330 + t634;
t296 = -qJD(5) * t552 + t424;
t297 = -qJD(5) * t551 + t425;
t631 = qJD(4) * t468;
t361 = qJD(5) * t412 + t631;
t402 = -qJD(5) * t550 + t465;
t800 = t262 * t753 + t263 * t752 + t296 * t795 + t297 * t794 + t361 * t748 + t402 * t787;
t809 = t534 * t816 + t48 * t713 + t49 * t711 + t55 * t703 + t800 / 0.2e1;
t46 = t150 * t459 + t152 * t552 + t154 * t419 + t231 * t447 - t233 * t328 + t235 * t329;
t47 = t151 * t459 + t153 * t552 + t155 * t419 + t232 * t447 - t234 * t328 + t236 * t329;
t112 = t353 * t459 + t354 * t552 + t355 * t419;
t77 = t231 * t459 + t233 * t552 + t235 * t419;
t78 = t232 * t459 + t234 * t552 + t236 * t419;
t535 = t112 * t468 + t447 * t77 + t449 * t78;
t54 = t255 * t459 + t256 * t552 + t257 * t419 - t328 * t354 + t329 * t355 + t353 * t447;
t801 = t262 * t755 + t263 * t754 + t296 * t797 + t297 * t796 + t361 * t749 + t402 * t788;
t808 = t535 * t816 + t46 * t713 + t47 * t711 + t54 * t703 + t801 / 0.2e1;
t802 = t785 * t495 + t695 * t798;
t799 = t262 * t751 + t263 * t750 + t296 * t791 + t297 * t790 + t361 * t747 + t402 * t786;
t793 = t296 * t755 + t297 * t754 + t402 * t749;
t792 = t296 * t753 + t297 * t752 + t402 * t748;
t789 = t296 * t751 + t297 * t750 + t402 * t747;
t611 = t495 * t696;
t375 = -t459 * t611 - t460 * t695;
t588 = t696 * t695;
t376 = -t459 * t588 + t460 * t495;
t662 = t459 * t496;
t778 = -t375 * t805 + t376 * t815 - t662 * t813;
t377 = -t461 * t611 - t462 * t695;
t378 = -t461 * t588 + t462 * t495;
t661 = t461 * t496;
t777 = -t377 * t805 + t378 * t815 - t661 * t813;
t776 = t375 * t813 - t376 * t806 + t662 * t814;
t775 = t377 * t813 - t378 * t806 + t661 * t814;
t774 = -t375 * t815 + t376 * t807 - t662 * t806;
t773 = -t377 * t815 + t378 * t807 - t661 * t806;
t772 = t419 * t813 + t552 * t812;
t771 = t421 * t813 + t551 * t812;
t770 = t419 * t806 + t552 * t810;
t769 = t421 * t806 + t551 * t810;
t289 = pkin(4) * t419 - pkin(10) * t552;
t657 = -rSges(7,2) * t552 + t339 * t798 - t555 * t785;
t614 = -t289 - t657;
t291 = pkin(4) * t421 - pkin(10) * t551;
t655 = -rSges(7,2) * t551 + t341 * t798 - t554 * t785;
t613 = -t291 - t655;
t434 = -t478 * t695 + t501 * t611;
t435 = t478 * t495 + t501 * t588;
t660 = t501 * t496;
t765 = -t434 * t805 + t435 * t815 + t660 * t813;
t764 = t434 * t813 - t435 * t806 - t660 * t814;
t763 = -t434 * t815 + t435 * t807 + t660 * t806;
t762 = t464 * t813 + t550 * t812;
t761 = t464 * t806 + t550 * t810;
t401 = pkin(4) * t464 - pkin(10) * t550;
t644 = -rSges(7,2) * t550 + t423 * t798 - t553 * t785;
t612 = -t401 - t644;
t760 = (-t464 * t814 + t495 * t768 + t550 * t811 + t695 * t766) * t402 + (-t421 * t814 + t495 * t783 + t551 * t811 + t695 * t779) * t297 + (-t419 * t814 + t495 * t784 + t552 * t811 + t695 * t780) * t296;
t50 = -t150 * t501 + t152 * t550 + t154 * t464 + t231 * t468 - t233 * t412 + t235 * t413;
t51 = -t151 * t501 + t153 * t550 + t155 * t464 + t232 * t468 - t234 * t412 + t236 * t413;
t106 = -t231 * t501 + t233 * t550 + t235 * t464;
t107 = -t232 * t501 + t234 * t550 + t236 * t464;
t116 = -t353 * t501 + t354 * t550 + t355 * t464;
t533 = t106 * t447 + t107 * t449 + t116 * t468;
t66 = -t255 * t501 + t256 * t550 + t257 * t464 + t353 * t468 - t354 * t412 + t355 * t413;
t757 = qJD(4) * t533 + t424 * t50 + t425 * t51 + t465 * t66 + t799;
t156 = rSges(5,1) * t329 - rSges(5,2) * t328 + rSges(5,3) * t447;
t157 = rSges(5,1) * t331 - rSges(5,2) * t330 + rSges(5,3) * t449;
t237 = rSges(5,1) * t419 + rSges(5,2) * t552 + rSges(5,3) * t459;
t238 = rSges(5,1) * t421 + rSges(5,2) * t551 + rSges(5,3) * t461;
t572 = t237 * t449 - t238 * t447;
t756 = t572 * qJD(4) + t156 * t425 - t157 * t424;
t746 = t419 * rSges(7,2) + t552 * t802;
t745 = t421 * rSges(7,2) + t551 * t802;
t744 = t464 * rSges(7,2) + t550 * t802;
t373 = -pkin(3) * t446 + pkin(9) * t447;
t374 = -pkin(3) * t448 + pkin(9) * t449;
t587 = t373 * t476 - t374 * t475;
t742 = (t423 * t805 - t766 - t828) * t402 + (t341 * t805 - t779 - t827) * t297 + (t339 * t805 - t780 - t826) * t296;
t741 = (t553 * t807 + t768 - t829) * t402 + (t554 * t807 + t783 - t830) * t297 + (t555 * t807 + t784 - t831) * t296;
t740 = (-t423 * t813 + t553 * t806) * t402 + (-t341 * t813 + t554 * t806) * t297 + (-t339 * t813 + t555 * t806) * t296;
t626 = qJD(6) * t554;
t690 = rSges(7,2) * t330 + t148 * t785 + t149 * t798 - t626;
t627 = qJD(6) * t555;
t691 = rSges(7,2) * t328 + t146 * t785 + t147 * t798 - t627;
t738 = -t655 * t262 + t657 * t263 - t690 * t296 + t691 * t297;
t164 = pkin(4) * t329 + pkin(10) * t328;
t129 = t425 * t164;
t226 = t289 * t634;
t609 = t291 * t635;
t165 = pkin(4) * t331 + pkin(10) * t330;
t663 = t424 * t165;
t513 = t129 + t226 + t587 - t609 - t663;
t628 = qJD(6) * t253;
t10 = t513 + t628 + t738;
t737 = 0.2e1 * t10;
t273 = pkin(4) * t413 + pkin(10) * t412;
t433 = pkin(3) * t467 + pkin(9) * t468;
t585 = t374 * t484 - t433 * t476;
t512 = t465 * t165 - t273 * t425 + t291 * t631 - t401 * t634 + t585;
t625 = qJD(6) * t553;
t659 = rSges(7,2) * t412 + t253 * t785 + t254 * t798 - t625;
t11 = qJD(6) * t146 - t263 * t644 - t297 * t659 + t361 * t655 + t402 * t690 + t512;
t736 = 0.2e1 * t11;
t583 = -t373 * t484 + t433 * t475;
t511 = -t164 * t465 + t424 * t273 - t289 * t631 + t401 * t635 + t583;
t12 = qJD(6) * t148 + t262 * t644 + t296 * t659 - t361 * t657 - t402 * t691 + t511;
t735 = 0.2e1 * t12;
t393 = pkin(3) * t460 + pkin(9) * t459;
t395 = pkin(3) * t462 + pkin(9) * t461;
t623 = qJD(2) * t687 + qJD(1);
t539 = t393 * t476 - t395 * t475 + t623;
t523 = t425 * t289 - t291 * t424 + t539;
t40 = -t296 * t655 + t297 * t657 + t523 - t625;
t734 = 0.2e1 * t40;
t443 = pkin(3) * t478 - pkin(9) * t501;
t493 = qJD(2) * t576;
t562 = -t393 * t484 + t443 * t475 + t493;
t524 = -t289 * t465 + t424 * t401 + t562;
t43 = t296 * t644 - t402 * t657 + t524 - t626;
t733 = 0.2e1 * t43;
t561 = qJD(2) * t579;
t522 = t395 * t484 - t443 * t476 - t561;
t505 = t465 * t291 - t425 * t401 + t522;
t44 = -t297 * t644 + t402 * t655 + t505 - t627;
t732 = 0.2e1 * t44;
t731 = m(7) / 0.2e1;
t730 = t262 / 0.2e1;
t729 = t263 / 0.2e1;
t728 = -t296 / 0.2e1;
t727 = t296 / 0.2e1;
t726 = -t297 / 0.2e1;
t725 = t297 / 0.2e1;
t722 = t361 / 0.2e1;
t719 = -t402 / 0.2e1;
t718 = t402 / 0.2e1;
t714 = -t424 / 0.2e1;
t712 = -t425 / 0.2e1;
t704 = -t465 / 0.2e1;
t99 = rSges(6,1) * t149 - rSges(6,2) * t148 + rSges(6,3) * t330;
t693 = t296 * t99;
t97 = rSges(6,1) * t147 - rSges(6,2) * t146 + rSges(6,3) * t328;
t692 = t297 * t97;
t689 = -t164 - t97;
t688 = -t165 - t99;
t679 = Icges(4,4) * t460;
t678 = Icges(4,4) * t462;
t677 = Icges(4,4) * t478;
t143 = rSges(6,1) * t339 + rSges(6,2) * t555 - rSges(6,3) * t552;
t667 = t143 * t263;
t145 = rSges(6,1) * t341 + rSges(6,2) * t554 - rSges(6,3) * t551;
t666 = t145 * t262;
t124 = rSges(6,1) * t254 - rSges(6,2) * t253 + rSges(6,3) * t412;
t658 = -t124 - t273;
t656 = -t143 - t289;
t654 = -t145 - t291;
t653 = t461 * t164 + t449 * t289;
t652 = -t165 * t501 + t468 * t291;
t343 = t480 * t373;
t651 = t480 * t164 + t343;
t360 = t485 * t374;
t650 = t485 * t165 + t360;
t649 = t339 * t785 + t555 * t798;
t648 = t341 * t785 + t554 * t798;
t647 = -rSges(7,2) * t662 + t375 * t785 + t376 * t798;
t646 = -rSges(7,2) * t661 + t377 * t785 + t378 * t798;
t645 = t459 * t273 + t447 * t401;
t247 = rSges(6,1) * t423 + rSges(6,2) * t553 - rSges(6,3) * t550;
t643 = -t247 - t401;
t404 = t479 * t433;
t642 = t479 * t273 + t404;
t357 = t480 * t393;
t641 = t480 * t289 + t357;
t364 = t485 * t395;
t640 = t485 * t291 + t364;
t639 = t423 * t785 + t553 * t798;
t638 = rSges(7,2) * t660 + t434 * t785 + t435 * t798;
t637 = 0.2e1 * t587;
t411 = t479 * t443;
t636 = t479 * t401 + t411;
t633 = qJD(4) * t460;
t632 = qJD(4) * t462;
t630 = qJD(4) * t478;
t629 = qJD(5) * t496;
t624 = qJD(6) * t495;
t622 = 2 * m(4);
t621 = 2 * m(5);
t620 = 2 * m(6);
t619 = 0.2e1 * m(7);
t617 = -t164 - t691;
t616 = -t165 - t690;
t615 = -t273 - t659;
t608 = t635 / 0.2e1;
t607 = t634 / 0.2e1;
t606 = t631 / 0.2e1;
t600 = t622 / 0.2e1;
t599 = -t621 / 0.2e1;
t598 = t621 / 0.2e1;
t597 = -t620 / 0.2e1;
t596 = t620 / 0.2e1;
t595 = -t619 / 0.2e1;
t594 = t619 / 0.2e1;
t288 = pkin(4) * t552 + pkin(10) * t419;
t290 = pkin(4) * t551 + pkin(10) * t421;
t591 = t425 * t288 - t290 * t424;
t400 = pkin(4) * t550 + pkin(10) * t464;
t590 = t465 * t290 - t400 * t425;
t589 = -t288 * t465 + t424 * t400;
t392 = -pkin(3) * t459 + pkin(9) * t460;
t394 = -pkin(3) * t461 + pkin(9) * t462;
t586 = t392 * t476 - t394 * t475;
t442 = pkin(3) * t501 + pkin(9) * t478;
t584 = t394 * t484 - t442 * t476;
t582 = -t392 * t484 + t442 * t475;
t356 = rSges(5,1) * t464 + rSges(5,2) * t550 - rSges(5,3) * t501;
t571 = -t237 * t468 + t356 * t447;
t570 = t238 * t468 - t356 * t449;
t349 = rSges(4,1) * t460 - rSges(4,2) * t459 + rSges(4,3) * t479;
t350 = rSges(4,1) * t462 - rSges(4,2) * t461 + rSges(4,3) * t480;
t569 = t349 * t480 - t350 * t479;
t428 = rSges(4,1) * t478 + rSges(4,2) * t501 + rSges(4,3) * t485;
t568 = -t349 * t485 + t428 * t479;
t567 = t350 * t485 - t428 * t480;
t371 = -rSges(4,1) * t446 - rSges(4,2) * t447;
t372 = -rSges(4,1) * t448 - rSges(4,2) * t449;
t566 = t371 * t480 - t372 * t479;
t432 = rSges(4,1) * t467 - rSges(4,2) * t468;
t565 = -t371 * t485 + t432 * t479;
t564 = t372 * t485 - t432 * t480;
t563 = -pkin(4) * t696 - pkin(10) * t496;
t560 = -rSges(5,1) * t696 + rSges(5,2) * t496;
t559 = -rSges(6,1) * t695 + rSges(6,2) * t495;
t556 = -0.2e1 * t663 + 0.2e1 * t129 - 0.2e1 * t609 + 0.2e1 * t226 + t637;
t549 = -Icges(5,1) * t696 + Icges(5,4) * t496;
t548 = -Icges(5,4) * t696 + Icges(5,2) * t496;
t547 = -Icges(5,5) * t696 + Icges(5,6) * t496;
t186 = t566 * qJD(3);
t530 = (Icges(5,5) * t552 - Icges(5,6) * t419) * t424 + (Icges(5,5) * t551 - Icges(5,6) * t421) * t425 + (Icges(5,5) * t550 - Icges(5,6) * t464) * t465;
t529 = (-Icges(4,5) * t459 - Icges(4,6) * t460) * t479 + (-Icges(4,5) * t461 - Icges(4,6) * t462) * t480 + (Icges(4,5) * t501 - Icges(4,6) * t478) * t485;
t528 = t10 * t657 + t40 * t691;
t527 = t11 * t655 + t44 * t690;
t526 = t12 * t644 + t43 * t659;
t517 = (Icges(5,1) * t551 - t234 - t675) * t425 + (Icges(5,1) * t552 - t233 - t676) * t424 + (Icges(5,1) * t550 - t354 - t674) * t465;
t516 = (Icges(5,2) * t421 - t236 - t415) * t425 + (Icges(5,2) * t419 - t235 - t414) * t424 + (Icges(5,2) * t464 - t355 - t458) * t465;
t344 = -Icges(4,2) * t459 + Icges(4,6) * t479 + t679;
t345 = -Icges(4,2) * t461 + Icges(4,6) * t480 + t678;
t426 = Icges(4,2) * t501 + Icges(4,6) * t485 + t677;
t515 = (-Icges(4,1) * t461 - t345 - t678) * t480 + (-Icges(4,1) * t459 - t344 - t679) * t479 + (Icges(4,1) * t501 - t426 - t677) * t485;
t456 = Icges(4,4) * t459;
t346 = Icges(4,1) * t460 + Icges(4,5) * t479 - t456;
t457 = Icges(4,4) * t461;
t347 = Icges(4,1) * t462 + Icges(4,5) * t480 - t457;
t474 = Icges(4,4) * t501;
t427 = Icges(4,1) * t478 + Icges(4,5) * t485 + t474;
t514 = (Icges(4,2) * t462 - t347 + t457) * t480 + (Icges(4,2) * t460 - t346 + t456) * t479 + (Icges(4,2) * t478 - t427 - t474) * t485;
t379 = t563 * t459;
t380 = t563 * t461;
t510 = t289 * t632 - t291 * t633 + t425 * t379 - t380 * t424 + t586;
t436 = t563 * t501;
t509 = t291 * t630 + t465 * t380 - t401 * t632 + t425 * t436 + t584;
t508 = -t289 * t630 - t379 * t465 + t401 * t633 - t424 * t436 + t582;
t500 = (Icges(5,3) * t462 + t234 * t496 - t236 * t696 + t461 * t547) * t425 + (Icges(5,3) * t460 + t233 * t496 - t235 * t696 + t459 * t547) * t424 + (Icges(5,3) * t478 + t354 * t496 - t355 * t696 - t501 * t547) * t465;
t441 = rSges(4,1) * t501 - rSges(4,2) * t478;
t437 = t501 * t629 + t630;
t431 = Icges(4,1) * t467 - Icges(4,4) * t468;
t430 = Icges(4,4) * t467 - Icges(4,2) * t468;
t429 = Icges(4,5) * t467 - Icges(4,6) * t468;
t408 = t478 * rSges(5,3) - t501 * t560;
t407 = Icges(5,5) * t478 - t501 * t549;
t406 = Icges(5,6) * t478 - t501 * t548;
t399 = rSges(5,1) * t550 - rSges(5,2) * t464;
t391 = -rSges(4,1) * t461 - rSges(4,2) * t462;
t390 = -rSges(4,1) * t459 - rSges(4,2) * t460;
t383 = -t461 * t629 + t632;
t382 = -t459 * t629 + t633;
t370 = -Icges(4,1) * t448 - Icges(4,4) * t449;
t369 = -Icges(4,1) * t446 - Icges(4,4) * t447;
t368 = -Icges(4,4) * t448 - Icges(4,2) * t449;
t367 = -Icges(4,4) * t446 - Icges(4,2) * t447;
t366 = -Icges(4,5) * t448 - Icges(4,6) * t449;
t365 = -Icges(4,5) * t446 - Icges(4,6) * t447;
t326 = t459 * t401;
t321 = t464 * rSges(6,3) - t550 * t559;
t313 = t462 * rSges(5,3) + t461 * t560;
t312 = t460 * rSges(5,3) + t459 * t560;
t311 = Icges(5,5) * t462 + t461 * t549;
t310 = Icges(5,5) * t460 + t459 * t549;
t309 = Icges(5,6) * t462 + t461 * t548;
t308 = Icges(5,6) * t460 + t459 * t548;
t305 = rSges(6,1) * t435 - rSges(6,2) * t434 + rSges(6,3) * t660;
t294 = rSges(6,1) * t553 - rSges(6,2) * t423;
t281 = rSges(5,1) * t551 - rSges(5,2) * t421;
t280 = rSges(5,1) * t552 - rSges(5,2) * t419;
t265 = t501 * t291;
t258 = rSges(5,1) * t413 - rSges(5,2) * t412 + rSges(5,3) * t468;
t248 = t461 * t289;
t230 = t564 * qJD(3);
t229 = t565 * qJD(3);
t220 = t421 * rSges(6,3) - t551 * t559;
t218 = t419 * rSges(6,3) - t552 * t559;
t204 = qJD(3) * t567 - t561;
t203 = qJD(3) * t568 + t493;
t202 = rSges(6,1) * t378 - rSges(6,2) * t377 - rSges(6,3) * t661;
t200 = rSges(6,1) * t376 - rSges(6,2) * t375 - rSges(6,3) * t662;
t184 = rSges(6,1) * t554 - rSges(6,2) * t341;
t180 = rSges(6,1) * t555 - rSges(6,2) * t339;
t160 = qJD(3) * t569 + t623;
t111 = t465 * t238 - t425 * t356 + t522;
t110 = -t237 * t465 + t356 * t424 + t562;
t83 = t237 * t425 - t238 * t424 + t539;
t68 = qJD(4) * t570 + t157 * t465 - t258 * t425 + t585;
t67 = qJD(4) * t571 - t156 * t465 + t258 * t424 + t583;
t57 = t402 * t145 - t297 * t247 + t505;
t56 = -t143 * t402 + t247 * t296 + t524;
t53 = t587 + t756;
t52 = t143 * t297 - t145 * t296 + t523;
t45 = t106 * t424 + t107 * t425 + t116 * t465;
t42 = t113 * t465 + t424 * t79 + t425 * t80;
t41 = t112 * t465 + t424 * t77 + t425 * t78;
t33 = -t124 * t297 + t145 * t361 - t247 * t263 + t402 * t99 + t512;
t32 = t124 * t296 - t143 * t361 + t247 * t262 - t402 * t97 + t511;
t21 = t513 - t666 + t667 + t692 - t693;
t1 = [m(6) * (t556 - 0.2e1 * t666 + 0.2e1 * t667 + 0.2e1 * t692 - 0.2e1 * t693) / 0.2e1 + t186 * t600 + (t556 + 0.2e1 * t628 + 0.2e1 * t738) * t731 + (t637 / 0.2e1 + t756) * m(5); (t10 * t687 - t11 * t579 + t12 * t576) * t594 + (t21 * t687 + t32 * t576 - t33 * t579) * t596 + (t53 * t687 + t576 * t67 - t579 * t68) * t598 + (t186 * t687 + t229 * t576 - t230 * t579) * t600; -(t485 * (t478 * t515 + t485 * t529 - t501 * t514) + t480 * (t461 * t514 + t462 * t515 + t480 * t529) + t479 * (t459 * t514 + t460 * t515 + t479 * t529)) * qJD(3) ^ 2 / 0.2e1 + ((t478 * t232 + t309 * t550 + t464 * t311) * t425 + (t478 * t231 + t308 * t550 + t464 * t310) * t424 + (t478 * t353 + t406 * t550 + t464 * t407) * t465 + (t106 * t460 + t107 * t462 + t116 * t478) * qJD(4) - t500 * t501) * t704 + ((-t344 * t468 + t346 * t467 + t365 * t485 + t367 * t501 + t369 * t478) * t479 + (-t345 * t468 + t347 * t467 + t366 * t485 + t368 * t501 + t370 * t478) * t480 + (-t426 * t468 + t427 * t467 + t429 * t485 + t430 * t501 + t431 * t478) * t485) * t484 + ((-t344 * t447 - t346 * t446 + t365 * t479 - t367 * t459 + t369 * t460) * t479 + (-t345 * t447 - t347 * t446 + t366 * t479 - t368 * t459 + t370 * t460) * t480 + (-t426 * t447 - t427 * t446 + t429 * t479 - t430 * t459 + t431 * t460) * t485) * t475 + ((-t344 * t449 - t346 * t448 + t365 * t480 - t367 * t461 + t369 * t462) * t479 + (-t345 * t449 - t347 * t448 + t366 * t480 - t368 * t461 + t370 * t462) * t480 + (-t426 * t449 - t427 * t448 + t429 * t480 - t430 * t461 + t431 * t462) * t485) * t476 + t757 * t485 / 0.2e1 - t41 * t633 / 0.2e1 + ((t460 * t232 + t309 * t552 + t419 * t311) * t425 + (t460 * t231 + t308 * t552 + t419 * t310) * t424 + (t460 * t353 + t406 * t552 + t419 * t407) * t465 + (t112 * t478 + t460 * t77 + t462 * t78) * qJD(4) + t500 * t459) * t714 + (t106 * t479 + t107 * t480 + t116 * t485) * t606 + (t113 * t485 + t479 * t79 + t480 * t80) * t607 + (t112 * t485 + t479 * t77 + t480 * t78) * t608 + (t56 * (-t143 * t437 - t200 * t402 + t247 * t382 + t296 * t305 + t508) + t57 * (t145 * t437 + t202 * t402 - t247 * t383 - t297 * t305 + t509) + t52 * (t143 * t383 - t145 * t382 + t200 * t297 - t202 * t296 + t510)) * t597 + (t67 * (t356 * t479 + t411 + (-t237 - t393) * t485) + t110 * (t258 * t479 + t404 + (-t156 - t373) * t485) + t68 * (t238 * t485 + t364 + (-t356 - t443) * t480) + t111 * (t157 * t485 + t360 + (-t258 - t433) * t480) + t53 * (t237 * t480 + t357 + (-t238 - t395) * t479) + t83 * (t156 * t480 + t343 + (-t157 - t374) * t479)) * t598 + (t479 * t48 + t480 * t49 + t485 * t55) * t711 + (t46 * t479 + t47 * t480 + t485 * t54) * t713 + (t43 * (qJD(6) * t377 + t296 * t638 + t382 * t644 - t402 * t647 - t437 * t657 + t508) + t44 * (qJD(6) * t375 - t297 * t638 - t383 * t644 + t402 * t646 + t437 * t655 + t509) + t40 * (qJD(6) * t434 - t296 * t646 + t297 * t647 - t382 * t655 + t383 * t657 + t510)) * t595 - t789 * t437 / 0.2e1 + (t479 * t791 + t480 * t790 + t485 * t786) * t718 - t792 * t383 / 0.2e1 - t793 * t382 / 0.2e1 + (t479 * t795 + t480 * t794 + t485 * t787) * t725 + (t479 * t797 + t480 * t796 + t485 * t788) * t727 + (t110 * (-t312 * t465 + t408 * t424 + (-t237 * t478 + t356 * t460) * qJD(4) + t582) + t111 * (t313 * t465 - t408 * t425 + (t238 * t478 - t356 * t462) * qJD(4) + t584) + t83 * (t312 * t425 - t313 * t424 + (t237 * t462 - t238 * t460) * qJD(4) + t586)) * t599 + (t160 * t566 + t186 * t569 + t203 * t565 + t204 * t564 + t229 * t568 + t230 * t567) * t600 + (t479 * t751 + t480 * t750 + t485 * t747) * t722 + (t747 * t437 + (t423 * t763 + t434 * t768 + t435 * t766 + t550 * t764 + t553 * t765 + t660 * t767) * t402 + t750 * t383 + t751 * t382 + (t423 * t773 + t434 * t783 + t435 * t779 + t550 * t775 + t553 * t777 + t660 * t781) * t297 + (t423 * t774 + t434 * t784 + t435 * t780 + t550 * t776 + t553 * t778 + t660 * t782) * t296) * t719 + (t479 * t753 + t480 * t752 + t485 * t748) * t729 + (t748 * t437 + (t341 * t763 + t377 * t768 + t378 * t766 + t551 * t764 + t554 * t765 - t661 * t767) * t402 + t752 * t383 + t753 * t382 + (t341 * t773 + t377 * t783 + t378 * t779 + t551 * t775 + t554 * t777 - t661 * t781) * t297 + (t341 * t774 + t377 * t784 + t378 * t780 + t551 * t776 + t554 * t778 - t661 * t782) * t296) * t726 + (t479 * t755 + t480 * t754 + t485 * t749) * t730 + (t749 * t437 + (t339 * t763 + t375 * t768 + t376 * t766 + t552 * t764 + t555 * t765 - t662 * t767) * t402 + t754 * t383 + t755 * t382 + (t339 * t773 + t375 * t783 + t376 * t779 + t552 * t775 + t555 * t777 - t662 * t781) * t297 + (t339 * t774 + t375 * t784 + t376 * t780 + t552 * t776 + t555 * t778 - t662 * t782) * t296) * t728 + ((t462 * t232 + t309 * t551 + t421 * t311) * t425 + (t462 * t231 + t308 * t551 + t421 * t310) * t424 + (t462 * t353 + t406 * t551 + t421 * t407) * t465 + (t113 * t478 + t460 * t79 + t462 * t80) * qJD(4) + t500 * t461) * t712 - (t203 * (-t390 * t485 + t441 * t479) + t204 * (t391 * t485 - t441 * t480) + t160 * (t390 * t480 - t391 * t479)) * qJD(3) * t622 / 0.2e1 + (t32 * (t247 * t479 + (-t393 + t656) * t485 + t636) + t56 * (t124 * t479 + (-t373 + t689) * t485 + t642) + t33 * (t145 * t485 + (-t443 + t643) * t480 + t640) + t57 * (t485 * t99 + (-t433 + t658) * t480 + t650) + t21 * (t143 * t480 + (-t395 + t654) * t479 + t641) + t52 * (t480 * t97 + (-t374 + t688) * t479 + t651)) * t596 + (t479 * t50 + t480 * t51 + t485 * t66) * t703 - t45 * t630 / 0.2e1 - t42 * t632 / 0.2e1 + (t636 * t735 + t640 * t736 + t641 * t737 + t642 * t733 + t650 * t732 + t651 * t734 + 0.2e1 * (t12 * (-t393 + t614) + t43 * (-t373 + t617) + t527) * t485 + 0.2e1 * (t11 * (-t443 + t612) + t44 * (-t433 + t615) + t528) * t480 + 0.2e1 * (t10 * (-t395 + t613) + t40 * (-t374 + t616) + t526) * t479) * t731 + t479 * t808 + t480 * t809; (t67 * (t237 * t501 + t356 * t459) + t110 * (t156 * t501 + t258 * t459 + t571) + t68 * (-t238 * t501 - t356 * t461) + t111 * (-t157 * t501 - t258 * t461 + t570) + t53 * (t237 * t461 - t238 * t459) + t83 * (t156 * t461 - t157 * t459 + t572)) * t598 + (t459 * t50 + t461 * t51 - t501 * t66 + t533) * t703 + (t32 * (t247 * t459 - t501 * t656 + t326) + t56 * (t124 * t459 + t247 * t447 + t468 * t656 - t501 * t689 + t645) + t33 * (-t145 * t501 + t461 * t643 - t265) + t57 * (t145 * t468 + t449 * t643 + t461 * t658 - t501 * t99 + t652) + t21 * (t143 * t461 + t459 * t654 + t248) + t52 * (t143 * t449 + t447 * t654 + t459 * t688 + t461 * t97 + t653)) * t596 - m(7) * ((t296 * t744 - t402 * t746 + t551 * t624 + t589) * t733 + (-t297 * t744 + t402 * t745 + t552 * t624 + t590) * t732 + (-t296 * t745 + t297 * t746 + t550 * t624 + t591) * t734 + 0.2e1 * ((-t43 * t657 + t44 * t655) * t464 + (t40 * t657 - t44 * t644) * t421 + (-t40 * t655 + t43 * t644) * t419) * qJD(5)) / 0.2e1 + (t464 * t517 - t501 * t530 - t516 * t550) * t704 + (t106 * t459 + t107 * t461 - t116 * t501) * t606 + (-t113 * t501 + t459 * t79 + t461 * t80) * t607 + (-t112 * t501 + t459 * t77 + t461 * t78) * t608 + (t459 * t48 + t461 * t49 - t501 * t55 + t534) * t711 + (t459 * t46 + t461 * t47 - t501 * t54 + t535) * t713 - t757 * t501 / 0.2e1 + (t419 * t517 + t459 * t530 - t516 * t552) * t714 + (t56 * (-t218 * t402 + t296 * t321 + (-t143 * t464 + t247 * t419) * qJD(5) + t589) + t57 * (t220 * t402 - t297 * t321 + (t145 * t464 - t247 * t421) * qJD(5) + t590) + t52 * (t218 * t297 - t220 * t296 + (t143 * t421 - t145 * t419) * qJD(5) + t591)) * t597 + (t45 + t789) * t468 / 0.2e1 + (t447 * t751 + t449 * t750 + t459 * t791 + t461 * t790 + t468 * t747 - t501 * t786) * t718 + (t42 + t792) * t449 / 0.2e1 + (t41 + t793) * t447 / 0.2e1 + (t447 * t753 + t449 * t752 + t459 * t795 + t461 * t794 + t468 * t748 - t501 * t787) * t725 + (t447 * t755 + t449 * t754 + t459 * t797 + t461 * t796 + t468 * t749 - t501 * t788) * t727 + (t110 * (-t280 * t465 + t399 * t424) + t111 * (t281 * t465 - t399 * t425) + t83 * (t280 * t425 - t281 * t424)) * t599 + (t760 * t550 + (t423 * t761 + t464 * t767 + t553 * t762) * t402 + (t423 * t769 + t464 * t781 + t553 * t771) * t297 + (t423 * t770 + t464 * t782 + t553 * t772) * t296 + (t419 * t751 + t421 * t750 + t464 * t747) * qJD(5)) * t719 + (t459 * t751 + t461 * t750 - t501 * t747) * t722 + (t760 * t551 + (t341 * t761 + t421 * t767 + t554 * t762) * t402 + (t341 * t769 + t421 * t781 + t554 * t771) * t297 + (t341 * t770 + t421 * t782 + t554 * t772) * t296 + (t419 * t753 + t421 * t752 + t464 * t748) * qJD(5)) * t726 + (t459 * t753 + t461 * t752 - t501 * t748) * t729 + (t760 * t552 + (t339 * t761 + t419 * t767 + t555 * t762) * t402 + (t339 * t769 + t419 * t781 + t555 * t771) * t297 + (t339 * t770 + t419 * t782 + t555 * t772) * t296 + (t419 * t755 + t421 * t754 + t464 * t749) * qJD(5)) * t728 + (t459 * t755 + t461 * t754 - t501 * t749) * t730 + (t421 * t517 + t461 * t530 - t516 * t551) * t712 - (t419 * t793 + t421 * t792 + t464 * t789) * qJD(5) / 0.2e1 + (t248 * t737 - t265 * t736 + t326 * t735 + t645 * t733 + t652 * t732 + t653 * t734 + (t614 * t733 + t655 * t732) * t468 + (t612 * t732 + t657 * t734) * t449 + (t613 * t734 + t644 * t733) * t447 - 0.2e1 * (t12 * t614 + t43 * t617 + t527) * t501 + 0.2e1 * (t11 * t612 + t44 * t615 + t528) * t461 + 0.2e1 * (t10 * t613 + t40 * t616 + t526) * t459) * t731 + t459 * t808 + t461 * t809; (t32 * (t143 * t550 - t247 * t552) + t56 * (-t124 * t552 - t143 * t412 + t247 * t328 + t550 * t97) + t33 * (-t145 * t550 + t247 * t551) + t57 * (t124 * t551 + t145 * t412 - t247 * t330 - t550 * t99) + t21 * (-t143 * t551 + t145 * t552) + t52 * (t143 * t330 - t145 * t328 - t551 * t97 + t552 * t99)) * t596 + (t56 * (-t180 * t402 + t294 * t296) + t57 * (t184 * t402 - t294 * t297) + t52 * (t180 * t297 - t184 * t296)) * t597 + (t43 * (qJD(6) * t341 + t296 * t639 - t402 * t649) + t44 * (qJD(6) * t339 - t297 * t639 + t402 * t648) + t40 * (qJD(6) * t423 - t296 * t648 + t297 * t649)) * t595 + (t12 * (t550 * t657 - t552 * t644) + t43 * (t328 * t644 - t412 * t657 + t550 * t691 - t552 * t659) + t11 * (-t550 * t655 + t551 * t644) + t44 * (-t330 * t644 + t412 * t655 - t550 * t690 + t551 * t659) + t10 * (-t551 * t657 + t552 * t655) + t40 * (-t328 * t655 + t330 * t657 - t551 * t691 + t552 * t690)) * t594 + (-t550 * t749 - t551 * t754 - t552 * t755) * t730 + (-t550 * t748 - t551 * t752 - t552 * t753) * t729 + (t339 * t741 - t552 * t740 - t555 * t742) * t728 + (t755 * t328 + t754 * t330 + t749 * t412 - t550 * t788 - t551 * t796 - t552 * t797) * t727 + (t341 * t741 - t551 * t740 - t554 * t742) * t726 + (t753 * t328 + t752 * t330 + t748 * t412 - t550 * t787 - t551 * t794 - t552 * t795) * t725 + t793 * t328 / 0.2e1 + t792 * t330 / 0.2e1 + (-t550 * t747 - t551 * t750 - t552 * t751) * t722 + (t423 * t741 - t550 * t740 - t553 * t742) * t719 + (t751 * t328 + t750 * t330 + t747 * t412 - t550 * t786 - t551 * t790 - t552 * t791) * t718 + t789 * t412 / 0.2e1 - t801 * t552 / 0.2e1 - t800 * t551 / 0.2e1 - t799 * t550 / 0.2e1; (-t10 * t553 - t11 * t555 - t12 * t554 + (-t297 * t553 + t402 * t554 + t146) * t44 + (t296 * t553 - t402 * t555 + t148) * t43 + (-t296 * t554 + t297 * t555 + t253) * t40) * m(7);];
tauc  = t1(:);
