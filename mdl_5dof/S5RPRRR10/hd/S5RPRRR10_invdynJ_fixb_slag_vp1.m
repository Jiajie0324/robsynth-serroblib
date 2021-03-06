% Calculate vector of inverse dynamics joint torques for
% S5RPRRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
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
% tau [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:11
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S5RPRRR10_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRR10_invdynJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:09:44
% EndTime: 2019-12-31 19:10:43
% DurationCPUTime: 47.36s
% Computational Cost: add. (38453->1286), mult. (43616->1714), div. (0->0), fcn. (41318->10), ass. (0->590)
t501 = pkin(9) + qJ(3);
t483 = cos(t501);
t503 = qJ(4) + qJ(5);
t490 = cos(t503);
t510 = cos(qJ(1));
t747 = t490 * t510;
t489 = sin(t503);
t508 = sin(qJ(1));
t749 = t489 * t508;
t340 = t483 * t749 + t747;
t743 = t510 * t489;
t748 = t490 * t508;
t341 = t483 * t748 - t743;
t614 = t341 * rSges(6,1) - t340 * rSges(6,2);
t482 = sin(t501);
t756 = t482 * t508;
t183 = -rSges(6,3) * t756 - t614;
t470 = t483 * pkin(3);
t509 = cos(qJ(4));
t479 = pkin(4) * t509 + pkin(3);
t752 = t483 * t508;
t402 = t479 * t752;
t507 = sin(qJ(4));
t742 = t510 * t507;
t683 = pkin(4) * t742;
t624 = -t402 + t683;
t511 = -pkin(8) - pkin(7);
t814 = pkin(7) + t511;
t869 = t482 * t814;
t195 = (t470 + t869) * t508 + t624;
t867 = t483 * t814;
t815 = pkin(3) - t479;
t868 = t482 * t815;
t273 = t867 - t868;
t807 = rSges(6,2) * t489;
t809 = rSges(6,1) * t490;
t613 = -t807 + t809;
t287 = -rSges(6,3) * t483 + t482 * t613;
t693 = qJD(4) * t482;
t694 = qJD(3) * t510;
t392 = -t508 * t693 + t694;
t691 = qJD(5) * t482;
t307 = -t508 * t691 + t392;
t692 = qJD(4) * t483;
t451 = qJD(1) - t692;
t406 = pkin(3) * t482 - pkin(7) * t483;
t487 = qJD(2) * t508;
t619 = -t406 * t694 + t487;
t502 = qJD(4) + qJD(5);
t632 = t483 * t502;
t859 = qJD(1) - t632;
t887 = t183 * t859 + t195 * t451 - t273 * t392 - t287 * t307 + t619;
t744 = t509 * t510;
t746 = t507 * t508;
t380 = t483 * t746 + t744;
t745 = t508 * t509;
t381 = t483 * t745 - t742;
t617 = t381 * rSges(5,1) - t380 * rSges(5,2);
t216 = -rSges(5,3) * t756 - t617;
t810 = rSges(5,1) * t509;
t616 = -rSges(5,2) * t507 + t810;
t302 = -rSges(5,3) * t483 + t482 * t616;
t886 = t216 * t451 - t302 * t392 + t619;
t206 = Icges(5,5) * t381 - Icges(5,6) * t380 + Icges(5,3) * t756;
t361 = Icges(5,4) * t381;
t209 = -Icges(5,2) * t380 + Icges(5,6) * t756 + t361;
t360 = Icges(5,4) * t380;
t213 = -Icges(5,1) * t381 - Icges(5,5) * t756 + t360;
t882 = t209 * t507 + t213 * t509;
t86 = -t206 * t483 - t482 * t882;
t173 = Icges(6,5) * t341 - Icges(6,6) * t340 + Icges(6,3) * t756;
t327 = Icges(6,4) * t341;
t176 = -Icges(6,2) * t340 + Icges(6,6) * t756 + t327;
t326 = Icges(6,4) * t340;
t180 = -Icges(6,1) * t341 - Icges(6,5) * t756 + t326;
t883 = t176 * t489 + t180 * t490;
t71 = -t173 * t483 - t482 * t883;
t467 = t482 * rSges(6,3);
t288 = t483 * t613 + t467;
t505 = cos(pkin(9));
t471 = pkin(2) * t505 + pkin(1);
t506 = -pkin(6) - qJ(2);
t476 = t510 * t506;
t706 = -t508 * t471 - t476;
t884 = t706 - t614;
t590 = Icges(6,5) * t490 - Icges(6,6) * t489;
t281 = -Icges(6,3) * t483 + t482 * t590;
t779 = Icges(6,4) * t490;
t592 = -Icges(6,2) * t489 + t779;
t283 = -Icges(6,6) * t483 + t482 * t592;
t780 = Icges(6,4) * t489;
t595 = Icges(6,1) * t490 - t780;
t285 = -Icges(6,5) * t483 + t482 * t595;
t100 = t281 * t756 - t283 * t340 + t285 * t341;
t486 = qJD(3) * t508;
t391 = t510 * t693 + t486;
t306 = t510 * t691 + t391;
t67 = t173 * t756 - t176 * t340 - t180 * t341;
t342 = -t483 * t743 + t748;
t343 = t483 * t747 + t749;
t755 = t482 * t510;
t175 = Icges(6,5) * t343 + Icges(6,6) * t342 + Icges(6,3) * t755;
t781 = Icges(6,4) * t343;
t178 = Icges(6,2) * t342 + Icges(6,6) * t755 + t781;
t328 = Icges(6,4) * t342;
t181 = Icges(6,1) * t343 + Icges(6,5) * t755 + t328;
t68 = t175 * t756 - t340 * t178 + t341 * t181;
t35 = t100 * t859 + t306 * t68 - t307 * t67;
t101 = t281 * t755 + t283 * t342 + t285 * t343;
t69 = t173 * t755 + t342 * t176 - t180 * t343;
t70 = t175 * t755 + t342 * t178 + t343 * t181;
t36 = t101 * t859 + t306 * t70 - t307 * t69;
t591 = Icges(5,5) * t509 - Icges(5,6) * t507;
t295 = -Icges(5,3) * t483 + t482 * t591;
t782 = Icges(5,4) * t509;
t593 = -Icges(5,2) * t507 + t782;
t297 = -Icges(5,6) * t483 + t482 * t593;
t783 = Icges(5,4) * t507;
t596 = Icges(5,1) * t509 - t783;
t299 = -Icges(5,5) * t483 + t482 * t596;
t113 = t295 * t756 - t297 * t380 + t299 * t381;
t73 = t206 * t756 - t209 * t380 - t213 * t381;
t382 = -t483 * t742 + t745;
t383 = t483 * t744 + t746;
t208 = Icges(5,5) * t383 + Icges(5,6) * t382 + Icges(5,3) * t755;
t784 = Icges(5,4) * t383;
t211 = Icges(5,2) * t382 + Icges(5,6) * t755 + t784;
t362 = Icges(5,4) * t382;
t214 = Icges(5,1) * t383 + Icges(5,5) * t755 + t362;
t74 = t208 * t756 - t380 * t211 + t381 * t214;
t43 = t113 * t451 + t391 * t74 - t392 * t73;
t114 = t295 * t755 + t297 * t382 + t299 * t383;
t75 = t206 * t755 + t382 * t209 - t213 * t383;
t76 = t208 * t755 + t382 * t211 + t383 * t214;
t44 = t114 * t451 + t391 * t76 - t392 * t75;
t644 = t694 / 0.2e1;
t697 = qJD(1) * t508;
t663 = t482 * t697;
t874 = t483 * t644 - t663 / 0.2e1;
t646 = t486 / 0.2e1;
t696 = qJD(1) * t510;
t649 = t696 / 0.2e1;
t873 = t482 * t649 + t483 * t646;
t687 = qJD(3) * qJD(4);
t872 = qJDD(4) * t482 + t483 * t687;
t545 = t482 * t696 + t483 * t486;
t184 = t343 * rSges(6,1) + t342 * rSges(6,2) + rSges(6,3) * t755;
t751 = t483 * t510;
t455 = pkin(3) * t751;
t376 = pkin(7) * t755 + t455;
t464 = pkin(4) * t746;
t741 = t510 * t511;
t569 = t479 * t751 - t482 * t741 + t464;
t196 = t569 - t376;
t864 = t482 * pkin(7) + t470;
t374 = t864 * t508;
t719 = t374 * t486 + t376 * t694;
t54 = -t183 * t306 + t184 * t307 - t195 * t391 + t196 * t392 + t719;
t737 = -t183 - t195;
t871 = t54 * t737;
t492 = t510 * qJ(2);
t432 = pkin(1) * t508 - t492;
t304 = t432 + t706;
t416 = qJD(1) * t432;
t865 = qJD(1) * t304 - t416;
t466 = Icges(4,4) * t483;
t594 = -Icges(4,2) * t482 + t466;
t398 = Icges(4,1) * t482 + t466;
t491 = t508 * qJ(2);
t434 = t510 * pkin(1) + t491;
t571 = t509 * t451;
t698 = qJD(1) * t483;
t630 = -qJD(4) + t698;
t661 = t482 * t486;
t192 = t508 * t571 + (-t510 * t630 + t661) * t507;
t570 = t451 * t507;
t695 = qJD(3) * t482;
t193 = t630 * t744 + (-t509 * t695 + t570) * t508;
t618 = rSges(5,1) * t193 + rSges(5,2) * t192;
t110 = rSges(5,3) * t545 + t618;
t365 = (-rSges(5,1) * t507 - rSges(5,2) * t509) * t482;
t468 = t482 * rSges(5,3);
t194 = qJD(4) * t365 + (t483 * t616 + t468) * qJD(3);
t688 = qJD(1) * qJD(3);
t414 = -qJDD(3) * t510 + t508 * t688;
t652 = qJD(1) * t693;
t233 = t508 * t872 + t510 * t652 + t414;
t685 = t482 * t687 + qJDD(1);
t379 = -qJDD(4) * t483 + t685;
t425 = pkin(3) * t661;
t239 = pkin(7) * t545 + qJD(1) * t455 - t425;
t389 = t864 * qJD(3);
t724 = t304 - t432;
t665 = -t374 + t724;
t689 = qJD(1) * qJD(2);
t702 = qJDD(2) * t508 + t510 * t689;
t488 = qJD(2) * t510;
t387 = qJD(1) * t434 - t488;
t461 = t506 * t697;
t816 = pkin(1) - t471;
t728 = t461 - (-t510 * t816 - t491) * qJD(1) - t387;
t517 = t414 * t406 + (-t239 + t728) * qJD(1) + t665 * qJDD(1) - t389 * t694 + t702;
t41 = -t110 * t451 - t194 * t392 + t216 * t379 + t233 * t302 + t517;
t660 = t482 * t694;
t856 = t508 * t630 + t660;
t190 = t507 * t856 + t510 * t571;
t191 = -t509 * t856 + t510 * t570;
t658 = t483 * t694;
t669 = t191 * rSges(5,1) + t190 * rSges(5,2) + rSges(5,3) * t658;
t109 = -rSges(5,3) * t663 + t669;
t217 = t383 * rSges(5,1) + t382 * rSges(5,2) + rSges(5,3) * t755;
t413 = qJDD(3) * t508 + t510 * t688;
t629 = t510 * t872 + t413;
t232 = -t508 * t652 + t629;
t426 = pkin(7) * t658;
t546 = -t483 * t697 - t660;
t238 = pkin(3) * t546 - pkin(7) * t663 + t426;
t635 = t510 * t471 - t506 * t508;
t305 = t635 - t434;
t477 = qJ(2) * t696;
t701 = t477 + t487;
t567 = -qJDD(2) * t510 + qJD(1) * (-pkin(1) * t697 + t701) + qJDD(1) * t434 + t508 * t689;
t539 = qJD(1) * (-t477 + (t508 * t816 - t476) * qJD(1)) + qJDD(1) * t305 + t567;
t518 = qJD(1) * t238 + qJDD(1) * t376 - t389 * t486 - t406 * t413 + t539;
t42 = t109 * t451 - t194 * t391 + t217 * t379 - t232 * t302 + t518;
t861 = t41 * t508 - t42 * t510;
t860 = g(1) * t510 + g(2) * t508;
t858 = -qJD(1) * t374 + t865;
t504 = sin(pkin(9));
t808 = rSges(3,2) * t504;
t812 = rSges(3,1) * t505;
t350 = t508 * rSges(3,3) + (-t808 + t812) * t510;
t819 = g(1) * t508;
t857 = -g(2) * t510 + t819;
t771 = Icges(4,3) * t510;
t308 = Icges(4,5) * t752 - Icges(4,6) * t756 - t771;
t438 = Icges(4,4) * t756;
t778 = Icges(4,5) * t510;
t312 = Icges(4,1) * t752 - t438 - t778;
t774 = Icges(4,6) * t510;
t310 = Icges(4,4) * t752 - Icges(4,2) * t756 - t774;
t762 = t310 * t482;
t578 = -t312 * t483 + t762;
t121 = -t308 * t510 - t508 * t578;
t633 = -t502 + t698;
t855 = t508 * t633 + t660;
t854 = t510 * t633 - t661;
t395 = Icges(4,5) * t483 - Icges(4,6) * t482;
t394 = Icges(4,5) * t482 + Icges(4,6) * t483;
t549 = qJD(3) * t394;
t785 = Icges(4,4) * t482;
t399 = Icges(4,1) * t483 - t785;
t313 = Icges(4,5) * t508 + t399 * t510;
t311 = Icges(4,6) * t508 + t510 * t594;
t761 = t311 * t482;
t577 = -t313 * t483 + t761;
t853 = -t510 * t549 + (-t395 * t508 + t577 + t771) * qJD(1);
t309 = Icges(4,3) * t508 + t395 * t510;
t700 = qJD(1) * t309;
t852 = qJD(1) * t578 - t508 * t549 + t700;
t396 = Icges(4,2) * t483 + t785;
t574 = t396 * t482 - t398 * t483;
t851 = t574 * qJD(1) + t395 * qJD(3);
t806 = pkin(4) * qJD(4);
t673 = t509 * t806;
t664 = qJD(1) * t683 + t508 * t673 + t511 * t663;
t674 = t507 * t806;
t111 = -t426 + (pkin(7) * t697 + t694 * t815) * t482 + ((-qJD(3) * t511 - t674) * t510 + t815 * t697) * t483 + t664;
t543 = -t483 * t815 - t869;
t631 = t483 * t674;
t758 = t479 * t482;
t112 = -t510 * t673 + t425 + (-t631 + (-t758 - t867) * qJD(3)) * t508 + (t510 * t543 + t464) * qJD(1);
t136 = qJD(5) * t658 + (qJDD(5) * t510 - t502 * t697) * t482 + t629;
t137 = qJD(5) * t545 + qJDD(5) * t756 + t233;
t568 = t238 * t694 + t239 * t486 + t413 * t374 - t376 * t414;
t572 = t510 * t859;
t148 = t489 * t855 + t490 * t572;
t149 = t489 * t572 - t490 * t855;
t671 = t149 * rSges(6,1) + t148 * rSges(6,2) + rSges(6,3) * t658;
t97 = -rSges(6,3) * t663 + t671;
t573 = t508 * t859;
t150 = -t489 * t854 + t490 * t573;
t151 = t489 * t573 + t490 * t854;
t615 = rSges(6,1) * t151 + rSges(6,2) * t150;
t98 = rSges(6,3) * t545 + t615;
t11 = t111 * t392 + t112 * t391 - t136 * t183 - t137 * t184 - t195 * t232 - t196 * t233 + t306 * t98 + t307 * t97 + t568;
t736 = t184 + t196;
t788 = t111 + t97;
t850 = -t11 * t736 - t54 * t788;
t849 = t508 * (-t396 * t510 + t313) - t510 * (-Icges(4,2) * t752 + t312 - t438);
t282 = Icges(6,3) * t482 + t483 * t590;
t580 = -t283 * t489 + t285 * t490;
t585 = -t178 * t489 + t181 * t490;
t848 = t306 * (-t281 * t510 - t585) - t307 * (-t281 * t508 + t883) + t859 * (t282 - t580);
t324 = (-Icges(6,2) * t490 - t780) * t482;
t847 = t306 * (-Icges(6,2) * t343 + t181 + t328) - t307 * (-Icges(6,2) * t341 - t180 - t326) + t859 * (t285 + t324);
t296 = Icges(5,3) * t482 + t483 * t591;
t579 = -t297 * t507 + t299 * t509;
t582 = -t211 * t507 + t214 * t509;
t846 = t391 * (-t295 * t510 - t582) - t392 * (-t295 * t508 + t882) + t451 * (t296 - t579);
t354 = (-Icges(5,2) * t509 - t783) * t482;
t845 = t391 * (-Icges(5,2) * t383 + t214 + t362) - t392 * (-Icges(5,2) * t381 - t213 - t360) + t451 * (t299 + t354);
t844 = t136 / 0.2e1;
t843 = t137 / 0.2e1;
t842 = t232 / 0.2e1;
t841 = t233 / 0.2e1;
t272 = qJD(3) * t691 + (-qJDD(4) - qJDD(5)) * t483 + t685;
t840 = t272 / 0.2e1;
t839 = -t306 / 0.2e1;
t838 = t306 / 0.2e1;
t837 = -t307 / 0.2e1;
t836 = t307 / 0.2e1;
t835 = t379 / 0.2e1;
t834 = -t859 / 0.2e1;
t833 = t859 / 0.2e1;
t832 = -t391 / 0.2e1;
t831 = t391 / 0.2e1;
t830 = -t392 / 0.2e1;
t829 = t392 / 0.2e1;
t828 = t413 / 0.2e1;
t827 = t414 / 0.2e1;
t826 = -t451 / 0.2e1;
t825 = t451 / 0.2e1;
t824 = -t483 / 0.2e1;
t823 = t508 / 0.2e1;
t822 = -t510 / 0.2e1;
t821 = -rSges(5,3) - pkin(7);
t820 = pkin(4) * t507;
t116 = -t281 * t483 + t482 * t580;
t323 = (-Icges(6,5) * t489 - Icges(6,6) * t490) * t482;
t158 = qJD(3) * t282 + t323 * t502;
t284 = Icges(6,6) * t482 + t483 * t592;
t159 = qJD(3) * t284 + t324 * t502;
t286 = Icges(6,5) * t482 + t483 * t595;
t325 = (-Icges(6,1) * t489 - t779) * t482;
t160 = qJD(3) * t286 + t325 * t502;
t51 = (qJD(3) * t580 - t158) * t483 + (qJD(3) * t281 + (-t283 * t502 + t160) * t490 + (-t285 * t502 - t159) * t489) * t482;
t813 = t116 * t272 + t51 * t859;
t811 = rSges(4,1) * t483;
t92 = Icges(6,5) * t151 + Icges(6,6) * t150 + Icges(6,3) * t545;
t94 = Icges(6,4) * t151 + Icges(6,2) * t150 + Icges(6,6) * t545;
t96 = Icges(6,1) * t151 + Icges(6,4) * t150 + Icges(6,5) * t545;
t21 = (-qJD(3) * t883 - t92) * t483 + (qJD(3) * t173 + (-t176 * t502 + t96) * t490 + (t180 * t502 - t94) * t489) * t482;
t805 = t21 * t307;
t544 = t658 - t663;
t91 = Icges(6,5) * t149 + Icges(6,6) * t148 + Icges(6,3) * t544;
t93 = Icges(6,4) * t149 + Icges(6,2) * t148 + Icges(6,6) * t544;
t95 = Icges(6,1) * t149 + Icges(6,4) * t148 + Icges(6,5) * t544;
t22 = (qJD(3) * t585 - t91) * t483 + (qJD(3) * t175 + (-t178 * t502 + t95) * t490 + (-t181 * t502 - t93) * t489) * t482;
t804 = t22 * t306;
t104 = Icges(5,5) * t193 + Icges(5,6) * t192 + Icges(5,3) * t545;
t106 = Icges(5,4) * t193 + Icges(5,2) * t192 + Icges(5,6) * t545;
t108 = Icges(5,1) * t193 + Icges(5,4) * t192 + Icges(5,5) * t545;
t27 = (-qJD(3) * t882 - t104) * t483 + (qJD(3) * t206 - t106 * t507 + t108 * t509 + (-t209 * t509 + t213 * t507) * qJD(4)) * t482;
t803 = t27 * t392;
t103 = Icges(5,5) * t191 + Icges(5,6) * t190 + Icges(5,3) * t544;
t105 = Icges(5,4) * t191 + Icges(5,2) * t190 + Icges(5,6) * t544;
t107 = Icges(5,1) * t191 + Icges(5,4) * t190 + Icges(5,5) * t544;
t28 = (qJD(3) * t582 - t103) * t483 + (qJD(3) * t208 - t105 * t507 + t107 * t509 + (-t211 * t509 - t214 * t507) * qJD(4)) * t482;
t802 = t28 * t391;
t496 = t508 * rSges(4,3);
t723 = t305 + t434;
t548 = (t376 + t723) * qJD(1) - t406 * t486 - t488;
t82 = t217 * t451 - t302 * t391 + t548;
t795 = t508 * t82;
t62 = t184 * t859 + t196 * t451 - t273 * t391 - t287 * t306 + t548;
t794 = t62 * t196;
t793 = t71 * t137;
t72 = -t175 * t483 + t482 * t585;
t792 = t72 * t136;
t791 = t86 * t233;
t87 = -t208 * t483 + t482 * t582;
t790 = t87 * t232;
t789 = -rSges(6,3) + t511;
t118 = -t295 * t483 + t482 * t579;
t351 = (-Icges(5,5) * t507 - Icges(5,6) * t509) * t482;
t187 = qJD(3) * t296 + qJD(4) * t351;
t298 = Icges(5,6) * t482 + t483 * t593;
t188 = qJD(3) * t298 + qJD(4) * t354;
t300 = Icges(5,5) * t482 + t483 * t596;
t357 = (-Icges(5,1) * t507 - t782) * t482;
t189 = qJD(3) * t300 + qJD(4) * t357;
t53 = (qJD(3) * t579 - t187) * t483 + (qJD(3) * t295 - t188 * t507 + t189 * t509 + (-t297 * t509 - t299 * t507) * qJD(4)) * t482;
t787 = t118 * t379 + t53 * t451;
t622 = t665 * qJD(1);
t61 = t622 + t887;
t768 = qJD(3) * t61;
t400 = rSges(4,1) * t482 + rSges(4,2) * t483;
t620 = -t400 * t694 + t487;
t314 = rSges(4,1) * t752 - rSges(4,2) * t756 - t510 * rSges(4,3);
t666 = -t314 + t724;
t127 = qJD(1) * t666 + t620;
t765 = t127 * t508;
t315 = rSges(4,1) * t751 - rSges(4,2) * t755 + t496;
t128 = -t400 * t486 - t488 + (t315 + t723) * qJD(1);
t367 = t400 * t510;
t764 = t128 * t367;
t760 = t394 * t508;
t759 = t394 * t510;
t757 = t482 * t507;
t754 = t482 * t511;
t417 = t483 * t479;
t753 = t483 * t507;
t750 = t483 * t511;
t612 = -rSges(6,1) * t489 - rSges(6,2) * t490;
t329 = t612 * t482;
t164 = qJD(3) * t288 + t502 * t329;
t205 = qJD(3) * t543 - t482 * t674;
t740 = -t164 - t205;
t735 = -t194 - t389;
t732 = -t217 - t376;
t731 = t273 + t287;
t730 = -t508 * t308 - t312 * t751;
t729 = t508 * t309 + t313 * t751;
t725 = -t302 - t406;
t452 = pkin(7) * t752;
t373 = -pkin(3) * t756 + t452;
t454 = pkin(7) * t751;
t375 = -pkin(3) * t755 + t454;
t720 = t373 * t486 + t375 * t694;
t227 = -t340 * rSges(6,1) - t341 * rSges(6,2);
t228 = t342 * rSges(6,1) - t343 * rSges(6,2);
t716 = t508 * t374 + t510 * t376;
t290 = t350 + t434;
t714 = -t396 + t399;
t713 = t398 + t594;
t677 = t482 * t807;
t712 = rSges(6,3) * t752 + t508 * t677;
t711 = rSges(6,3) * t751 + t510 * t677;
t678 = rSges(5,2) * t757;
t710 = rSges(5,3) * t752 + t508 * t678;
t709 = rSges(5,3) * t751 + t510 * t678;
t708 = rSges(4,2) * t663 + rSges(4,3) * t696;
t682 = t508 * t812;
t462 = t508 * t808;
t703 = t510 * rSges(3,3) + t462;
t349 = t682 - t703;
t707 = -t432 - t349;
t705 = rSges(3,3) * t696 + qJD(1) * t462;
t704 = t461 + t488;
t699 = qJD(1) * t395;
t162 = -t508 * t574 - t759;
t690 = t162 * qJD(1);
t684 = pkin(4) * t757;
t681 = t482 * t810;
t680 = t482 * t809;
t670 = -t389 + t740;
t668 = t510 * t238 + t508 * t239 + t374 * t696;
t667 = -t406 - t731;
t656 = t756 / 0.2e1;
t655 = t755 / 0.2e1;
t654 = -pkin(1) - t812;
t648 = t695 / 0.2e1;
t647 = -t486 / 0.2e1;
t645 = -t694 / 0.2e1;
t642 = t789 * t482;
t640 = t306 * t227 + t228 * t307;
t639 = t228 * t859 - t306 * t329;
t638 = -t227 * t859 - t307 * t329;
t276 = t313 * t752;
t637 = t309 * t510 - t276;
t636 = -t308 + t761;
t621 = qJD(1) * t375 - t486 * t864;
t435 = rSges(2,1) * t510 - rSges(2,2) * t508;
t433 = rSges(2,1) * t508 + rSges(2,2) * t510;
t401 = -rSges(4,2) * t482 + t811;
t168 = t311 * t483 + t313 * t482;
t550 = qJD(3) * t396;
t199 = -t510 * t550 + (-t508 * t594 + t774) * qJD(1);
t551 = qJD(3) * t398;
t201 = -t510 * t551 + (-t399 * t508 + t778) * qJD(1);
t520 = -qJD(3) * t168 - t199 * t482 + t201 * t483 + t700;
t167 = t310 * t483 + t312 * t482;
t200 = qJD(1) * t311 - t508 * t550;
t202 = qJD(1) * t313 - t508 * t551;
t521 = qJD(1) * t308 - qJD(3) * t167 - t200 * t482 + t202 * t483;
t611 = t508 * (t508 * t853 + t520 * t510) - t510 * (t508 * t852 + t521 * t510);
t610 = t508 * (t520 * t508 - t510 * t853) - t510 * (t521 * t508 - t510 * t852);
t609 = t508 * t68 - t510 * t67;
t608 = t508 * t67 + t510 * t68;
t607 = t508 * t70 - t510 * t69;
t606 = t508 * t69 + t510 * t70;
t605 = t508 * t72 - t510 * t71;
t604 = t508 * t71 + t510 * t72;
t603 = t508 * t74 - t510 * t73;
t602 = t508 * t73 + t510 * t74;
t601 = t508 * t76 - t510 * t75;
t600 = t508 * t75 + t510 * t76;
t599 = t508 * t87 - t510 * t86;
t598 = t508 * t86 + t510 * t87;
t122 = -t311 * t756 - t637;
t589 = -t121 * t510 + t122 * t508;
t123 = -t310 * t755 - t730;
t124 = -t311 * t755 + t729;
t588 = -t123 * t510 + t124 * t508;
t587 = -t127 * t510 - t128 * t508;
t203 = rSges(4,1) * t546 - rSges(4,2) * t658 + t708;
t366 = t400 * t508;
t204 = -qJD(3) * t366 + (t401 * t510 + t496) * qJD(1);
t584 = t203 * t510 + t204 * t508;
t581 = -t216 * t510 - t217 * t508;
t576 = t314 * t508 + t315 * t510;
t575 = t396 * t483 + t398 * t482;
t364 = t382 * pkin(4);
t303 = -rSges(5,2) * t753 + t483 * t810 + t468;
t566 = t482 * t821 - t470;
t565 = -t417 - t471 - t467;
t554 = -t750 + t868;
t553 = t61 * t273 - t54 * t736;
t552 = -qJD(1) * t373 - t694 * t864;
t363 = t380 * pkin(4);
t542 = -t206 * t392 + t208 * t391 + t295 * t451;
t541 = (-Icges(6,5) * t340 - Icges(6,6) * t341) * t307 - (Icges(6,5) * t342 - Icges(6,6) * t343) * t306 - t323 * t859;
t540 = (-Icges(5,5) * t380 - Icges(5,6) * t381) * t392 - (Icges(5,5) * t382 - Icges(5,6) * t383) * t391 - t351 * t451;
t538 = t310 * t510 - t311 * t508;
t537 = t482 * t541;
t536 = t482 * t540;
t529 = (-t482 * t713 + t483 * t714) * qJD(1);
t528 = (Icges(6,1) * t342 - t178 - t781) * t306 - (-Icges(6,1) * t340 - t176 - t327) * t307 + (-t283 + t325) * t859;
t526 = (Icges(5,1) * t382 - t211 - t784) * t391 - (-Icges(5,1) * t380 - t209 - t361) * t392 + (-t297 + t357) * t451;
t16 = t148 * t176 - t149 * t180 + t173 * t544 + t342 * t94 + t343 * t96 + t755 * t92;
t17 = t148 * t178 + t149 * t181 + t175 * t544 + t342 * t93 + t343 * t95 + t755 * t91;
t18 = t150 * t176 - t151 * t180 + t173 * t545 - t340 * t94 + t341 * t96 + t756 * t92;
t19 = t150 * t178 + t151 * t181 + t175 * t545 - t340 * t93 + t341 * t95 + t756 * t91;
t39 = t116 * t859 + t306 * t72 - t307 * t71;
t45 = t148 * t283 + t149 * t285 + t158 * t755 + t159 * t342 + t160 * t343 + t281 * t544;
t46 = t150 * t283 + t151 * t285 + t158 * t756 - t159 * t340 + t160 * t341 + t281 * t545;
t5 = t101 * t272 + t136 * t70 + t137 * t69 - t16 * t307 + t17 * t306 + t45 * t859;
t6 = t100 * t272 + t136 * t68 + t137 * t67 - t18 * t307 + t19 * t306 + t46 * t859;
t523 = ((qJD(3) * t606 - t45) * t483 + (-qJD(1) * t607 + qJD(3) * t101 + t16 * t508 + t17 * t510) * t482) * t838 + (t342 * t847 + t528 * t343 - t510 * t537) * t839 + (-t340 * t847 + t341 * t528 - t508 * t537) * t836 + ((qJD(3) * t608 - t46) * t483 + (-qJD(1) * t609 + qJD(3) * t100 + t18 * t508 + t19 * t510) * t482) * t837 + (t541 * t483 + (-t489 * t847 + t490 * t528) * t482) * t834 + (-t101 * t483 + t482 * t606) * t844 + t6 * t656 + (-t100 * t483 + t482 * t608) * t843 + t39 * t648 + t5 * t655 + (-t116 * t483 + t482 * t604) * t840 + ((qJD(3) * t604 - t51) * t483 + (-qJD(1) * t605 + qJD(3) * t116 + t21 * t508 + t22 * t510) * t482) * t833 + (t792 + t793 + t804 - t805 + t813) * t824 + t874 * t36 + t873 * t35;
t81 = t622 + t886;
t83 = -t216 * t391 + t217 * t392 + t719;
t522 = t83 * t581 + (t508 * t81 - t510 * t82) * t302;
t385 = t594 * qJD(3);
t386 = t399 * qJD(3);
t519 = qJD(1) * t394 - qJD(3) * t575 - t385 * t482 + t386 * t483;
t14 = -t112 * t451 + t137 * t287 - t164 * t307 + t183 * t272 + t195 * t379 - t205 * t392 + t233 * t273 - t859 * t98 + t517;
t516 = -t11 * t183 * t755 + t14 * (-t183 * t483 + t287 * t756) + t54 * (-t183 * t658 + t98 * t755) + t61 * (t164 * t756 + t287 * t545 + t483 * t98) + t62 * (t184 * t695 + t287 * t663);
t515 = -t482 * t849 + t538 * t483;
t514 = t846 * t482;
t513 = (-t173 * t307 + t175 * t306 + t281 * t859) * t483 + t848 * t482;
t393 = t482 * t502;
t388 = t401 * qJD(3);
t378 = t406 * t697;
t348 = t510 * t632;
t347 = t508 * t632;
t274 = -t864 + t417 - t754;
t271 = -t510 * t681 + t709;
t270 = -t508 * t681 + t710;
t269 = t299 * t510;
t268 = t299 * t508;
t267 = t297 * t510;
t266 = t297 * t508;
t263 = -t510 * t680 + t711;
t262 = -t508 * t680 + t712;
t260 = t285 * t510;
t259 = t285 * t508;
t258 = t283 * t510;
t257 = t283 * t508;
t254 = qJD(1) * t290 - t488;
t253 = qJD(1) * t707 + t487;
t252 = rSges(5,1) * t382 - rSges(5,2) * t383;
t251 = -rSges(5,1) * t380 - rSges(5,2) * t381;
t235 = t510 * t554 - t454;
t234 = t508 * t554 - t452;
t169 = t576 * qJD(3);
t163 = -t510 * t574 + t760;
t153 = t163 * qJD(1);
t126 = qJDD(1) * t350 + qJD(1) * (-qJD(1) * t682 + t705) + t567;
t125 = t707 * qJDD(1) + (-qJD(1) * t350 - t387) * qJD(1) + t702;
t85 = -qJD(3) * t577 + t199 * t483 + t201 * t482;
t84 = -qJD(3) * t578 + t200 * t483 + t202 * t482;
t80 = t519 * t508 - t510 * t851;
t79 = t508 * t851 + t519 * t510;
t66 = qJD(1) * t203 + qJDD(1) * t315 - t388 * t486 - t400 * t413 + t539;
t65 = -t388 * t694 + t400 * t414 + t666 * qJDD(1) + (-t204 + t728) * qJD(1) + t702;
t64 = qJD(3) * t588 + t153;
t63 = qJD(3) * t589 + t690;
t50 = t187 * t756 - t188 * t380 + t189 * t381 + t192 * t297 + t193 * t299 + t295 * t545;
t49 = t187 * t755 + t188 * t382 + t189 * t383 + t190 * t297 + t191 * t299 + t295 * t544;
t47 = t451 * t118 + t391 * t87 - t392 * t86;
t37 = t109 * t392 + t110 * t391 - t216 * t232 - t217 * t233 + t568;
t26 = t103 * t756 - t105 * t380 + t107 * t381 + t192 * t211 + t193 * t214 + t208 * t545;
t25 = t104 * t756 - t106 * t380 + t108 * t381 + t192 * t209 - t193 * t213 + t206 * t545;
t24 = t103 * t755 + t105 * t382 + t107 * t383 + t190 * t211 + t191 * t214 + t208 * t544;
t23 = t104 * t755 + t106 * t382 + t108 * t383 + t190 * t209 - t191 * t213 + t206 * t544;
t15 = t111 * t451 - t136 * t287 - t164 * t306 + t184 * t272 + t196 * t379 - t205 * t391 - t232 * t273 + t859 * t97 + t518;
t10 = t113 * t379 + t232 * t74 + t233 * t73 - t25 * t392 + t26 * t391 + t451 * t50;
t9 = t114 * t379 - t23 * t392 + t232 * t76 + t233 * t75 + t24 * t391 + t451 * t49;
t1 = [(t85 + t79) * t646 + (t63 - t690 + ((t510 * t636 + t124 - t729) * t510 + (t508 * t636 + t123 + t637) * t508) * qJD(3)) * t647 + t44 * t829 + t36 * t836 + (t84 + t80 + t64) * t645 + (t50 + t44) * t830 + (t163 + t168) * t828 + (t253 * t488 + t254 * (t701 + t705) + (t253 * (t654 + t808) * t510 + (t253 * (-rSges(3,3) - qJ(2)) + t254 * t654) * t508) * qJD(1) - (-qJD(1) * t349 - t253 - t416 + t487) * t254 + (t126 - g(2)) * t290 + (t125 - g(1)) * (t508 * t654 + t492 + t703)) * m(3) + (t46 + t36) * t837 - t805 / 0.2e1 + (t162 + t167) * t827 + (m(2) * (t433 ^ 2 + t435 ^ 2) + t575 + Icges(3,2) * t505 ^ 2 + (Icges(3,1) * t504 + 0.2e1 * Icges(3,4) * t505) * t504 + Icges(2,3)) * qJDD(1) + t790 / 0.2e1 + t791 / 0.2e1 + t787 + (-(-t81 + t858 + t886) * t82 - t566 * t819 + t81 * (t425 - t618 + t704) + t82 * (-pkin(3) * t660 + t426 + t487 + t669) + (qJD(3) * t483 * t81 * t821 + t41 * t566) * t508 + ((-t471 + t566) * t795 + (t81 * (-t471 - t864 - t468) - t82 * t506) * t510) * qJD(1) + (-g(2) + t42) * (t635 - t732) + (-g(1) + t41) * (-t617 + t706)) * m(5) + (t153 + ((t122 - t276 + (t309 + t762) * t510 + t730) * t510 + t729 * t508) * qJD(3)) * t644 + t804 / 0.2e1 + (-g(1) * (t508 * t642 + t624 + t884) - (-t61 + t858 + t887) * t62 + t14 * (-t402 + t884) + t61 * (-t615 + t704) + t62 * (t487 + t664 + t671) + (t62 * (-t750 - t758) * qJD(3) + (t14 * t507 + (t509 * t61 - t62 * t753) * qJD(4)) * pkin(4)) * t510 + (t61 * t631 + t14 * t642 + (t483 * t789 + t758) * t768) * t508 + ((t565 * t62 - t61 * t820) * t508 + (t61 * (t565 + t754) - t62 * t506) * t510) * qJD(1) + (-g(2) + t15) * (t569 + t635 + t184)) * m(6) + (t127 * t704 + t128 * (t487 + t708) + (t400 * t765 - t764) * qJD(3) + ((-t127 * rSges(4,3) + t128 * (-t471 - t811)) * t508 + (t127 * (-t401 - t471) - t128 * t506) * t510) * qJD(1) - (-qJD(1) * t314 - t127 + t620 + t865) * t128 + (t66 - g(2)) * (t315 + t635) + (t65 - g(1)) * (-t314 + t706)) * m(4) - t803 / 0.2e1 + t802 / 0.2e1 + t792 / 0.2e1 + t793 / 0.2e1 - m(2) * (-g(1) * t433 + g(2) * t435) + (-qJD(3) * t574 + t385 * t483 + t386 * t482) * qJD(1) + t45 * t838 + t113 * t841 + t114 * t842 + t100 * t843 + t101 * t844 + t49 * t831 + t813; (-m(3) - m(4) - m(6)) * t857 + 0.2e1 * (t14 * t823 + t15 * t822) * m(6) + 0.2e1 * (t65 * t823 + t66 * t822) * m(4) + 0.2e1 * (t125 * t823 + t126 * t822) * m(3) + (-t857 + t861) * m(5); -(t508 * t43 + t510 * t44) * t692 / 0.2e1 + (t63 + t43 + t35) * t697 / 0.2e1 + (qJD(1) * t79 + qJD(3) * t611 + qJDD(1) * t163 + t123 * t414 + t124 * t413 + t5 + t9) * t823 + ((t121 * t508 + t122 * t510) * qJD(1) + t610) * t645 + ((t123 * t508 + t124 * t510) * qJD(1) + t611) * t646 + (t116 * t393 + t71 * t347 + t72 * t348 - t848 * t483 + ((t258 * t489 - t260 * t490 + t175) * t306 - (t257 * t489 - t259 * t490 + t173) * t307 + (-t284 * t489 + t286 * t490 + t281) * t859) * t482) * t834 + ((t258 * t340 - t260 * t341) * t306 + t68 * t348 - (t257 * t340 - t259 * t341) * t307 + t67 * t347 + (-t284 * t340 + t286 * t341) * t859 + t100 * t393 + t513 * t508) * t836 + ((-t258 * t342 - t260 * t343) * t306 + t70 * t348 - (-t257 * t342 - t259 * t343) * t307 + t69 * t347 + (t284 * t342 + t286 * t343) * t859 + t101 * t393 + t513 * t510) * t839 + (((t267 * t507 - t269 * t509 + t208) * t391 - (t266 * t507 - t268 * t509 + t206) * t392 + (-t298 * t507 + t300 * t509 + t295) * t451 + t118 * qJD(4)) * t482 + (qJD(4) * t598 - t846) * t483) * t826 + ((t267 * t380 - t269 * t381) * t391 - (t266 * t380 - t268 * t381) * t392 + (-t298 * t380 + t300 * t381) * t451 + (t113 * t482 + t74 * t751) * qJD(4) + ((qJD(4) * t73 + t542) * t483 + t514) * t508) * t829 + ((-t267 * t382 - t269 * t383) * t391 - (-t266 * t382 - t268 * t383) * t392 + (t298 * t382 + t300 * t383) * t451 + (t114 * t482 + t75 * t752) * qJD(4) + ((qJD(4) * t76 + t542) * t483 + t514) * t510) * t832 + (t64 + t44 + t36) * t649 + (-(t127 * t366 - t764) * qJD(1) - (t169 * (-t366 * t508 - t367 * t510) + t587 * t401) * qJD(3) + g(1) * t367 + g(2) * t366 - g(3) * t401 + (qJD(3) * t584 + t314 * t413 - t315 * t414) * t576 + t169 * ((t314 * t510 - t315 * t508) * qJD(1) + t584) + t587 * t388 + (-t66 * t508 - t65 * t510 + (-t128 * t510 + t765) * qJD(1)) * t400) * m(4) + ((-t694 * t760 - t699) * t510 + (t529 + (t510 * t759 + t515) * qJD(3)) * t508) * t644 + ((-t486 * t759 + t699) * t508 + (t529 + (t508 * t760 + t515) * qJD(3)) * t510) * t647 + (qJD(1) * t80 + qJD(3) * t610 + qJDD(1) * t162 + t121 * t414 + t122 * t413 + t10 + t6) * t822 + qJD(1) * (t508 * t85 - t510 * t84 + (t167 * t508 + t168 * t510) * qJD(1)) / 0.2e1 - t393 * t39 / 0.2e1 + (-t61 * (t183 * t393 - t234 * t451 - t262 * t859 - t274 * t392 + t287 * t347 - t288 * t307 + t552) - t62 * (t184 * t393 + t235 * t451 + t263 * t859 - t274 * t391 - t287 * t348 - t288 * t306 + t621) - t54 * (-t183 * t348 - t184 * t347 + t234 * t391 + t235 * t392 + t262 * t306 + t263 * t307 + t720) - ((t195 * t61 + t794) * t482 + (t54 * (-t195 * t510 - t196 * t508) + (t508 * t61 - t510 * t62) * t273) * t483) * qJD(4) + t61 * t378 + t11 * t716 + t54 * t668 + (t14 * t667 + t61 * t670 + (t62 * t667 + t871) * qJD(1) - t850) * t510 + (t15 * t667 + t62 * t670 + t11 * t737 + t54 * (t112 + t98) + (t61 * t731 + t54 * (-t376 - t736)) * qJD(1)) * t508 - g(1) * (-t483 * t741 + t711) - g(2) * (-t508 * t750 + t712) - g(3) * (t288 + t417) - (-g(3) * t511 + t860 * (-t479 - t809)) * t482) * m(6) - qJD(1) * ((t482 * t714 + t483 * t713) * qJD(1) + (t538 * t482 + t483 * t849) * qJD(3)) / 0.2e1 - t47 * t693 / 0.2e1 + (qJD(1) * t608 - t18 * t510 + t19 * t508) * t837 + (qJD(1) * t606 - t16 * t510 + t17 * t508) * t838 + t605 * t840 + t603 * t841 + t601 * t842 + t609 * t843 + t607 * t844 + (qJD(1) * t598 - t27 * t510 + t28 * t508) * t825 + t589 * t827 + t588 * t828 + (qJD(1) * t602 - t25 * t510 + t26 * t508) * t830 + (qJD(1) * t600 - t23 * t510 + t24 * t508) * t831 + (qJD(1) * t604 - t21 * t510 + t22 * t508) * t833 + t599 * t835 + (t81 * t378 + t37 * t716 + (t37 * t217 + t81 * t735 + (qJD(1) * t82 + t41) * t725) * t510 + (t81 * t302 * qJD(1) - t216 * t37 + t42 * t725 + t82 * t735) * t508 - t81 * (-t270 * t451 - t303 * t392 + t552) - t82 * (t271 * t451 - t303 * t391 + t621) - ((t216 * t81 + t217 * t82) * t482 + t522 * t483) * qJD(4) - g(1) * (t454 + t709) - g(2) * (t452 + t710) - g(3) * (t303 + t864) - t860 * t482 * (-pkin(3) - t810) + (t668 + (-qJD(1) * t216 + t109) * t510 + (t732 * qJD(1) + t110) * t508 - t270 * t391 - t271 * t392 - t720) * t83) * m(5) - t347 * t35 / 0.2e1 - t348 * t36 / 0.2e1 + qJDD(1) * (-t167 * t510 + t168 * t508) / 0.2e1; t523 + (t540 * t483 + (-t507 * t845 + t509 * t526) * t482) * t826 + t47 * t648 + t10 * t656 + ((qJD(3) * t602 - t50) * t483 + (-qJD(1) * t603 + qJD(3) * t113 + t25 * t508 + t26 * t510) * t482) * t830 + (-t380 * t845 + t381 * t526 - t508 * t536) * t829 + ((qJD(3) * t598 - t53) * t483 + (-qJD(1) * t599 + qJD(3) * t118 + t27 * t508 + t28 * t510) * t482) * t825 + (t787 + t790 + t791 + t802 - t803) * t824 + (-t118 * t483 + t482 * t598) * t835 + (t382 * t845 + t526 * t383 - t510 * t536) * t832 + ((qJD(3) * t600 - t49) * t483 + (-qJD(1) * t601 + qJD(3) * t114 + t23 * t508 + t24 * t510) * t482) * t831 + t9 * t655 + (-t114 * t483 + t482 * t600) * t842 + (-t113 * t483 + t482 * t602) * t841 + t874 * t44 + t873 * t43 + ((-t14 * t195 + t61 * t112 - t15 * t736 - t62 * t788 + ((-t54 * t195 - t62 * t731) * t510 + t553 * t508) * qJD(3)) * t483 + t516 - g(1) * (t364 + t228) - g(2) * (-t363 + t227) - t61 * (t363 * t451 + t392 * t684 + t638) - t62 * (t364 * t451 + t391 * t684 + t639) - t54 * (-t363 * t391 + t364 * t392 + t640) + ((-t61 * t737 + t794) * qJD(3) + (qJD(1) * t553 - t11 * t195 + t54 * t112 - t15 * t731 + t62 * t740) * t510 + (t14 * t273 + t61 * t205 + (t62 * t273 - t871) * qJD(1) + t850) * t508 - g(3) * (t612 - t820)) * t482) * m(6) + ((qJD(3) * t522 - t82 * t109 + t81 * t110 - t216 * t41 - t42 * t217) * t483 + (t81 * (qJD(3) * t216 + t194 * t508) + t82 * (qJD(3) * t217 - t194 * t510) + t37 * t581 + t83 * (-t109 * t508 + t110 * t510 + t216 * t697 - t217 * t696) + ((t510 * t81 + t795) * qJD(1) + t861) * t302) * t482 - t81 * (-t251 * t451 - t365 * t392) - t82 * (t252 * t451 - t365 * t391) - t83 * (t251 * t391 + t252 * t392) - g(1) * t252 - g(2) * t251 - g(3) * t365) * m(5); t523 + ((t62 * (-t287 * t694 - t97) + (-t486 * t54 - t15) * t184) * t483 + (t183 * t768 + (-qJD(1) * t184 * t54 - t15 * t287 - t164 * t62) * t510 + (-t11 * t184 + t54 * (qJD(1) * t183 - t97)) * t508) * t482 + t516 - t54 * t640 - t61 * t638 - t62 * t639 - g(1) * t228 - g(2) * t227 - g(3) * t329) * m(6);];
tau = t1;
