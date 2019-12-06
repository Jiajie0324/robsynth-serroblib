% Calculate matrix of centrifugal and coriolis load on the joints for
% S5PRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
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
% Datum: 2019-12-05 16:46
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5PRRRP4_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP4_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP4_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP4_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRRP4_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRRP4_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRRRP4_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:45:39
% EndTime: 2019-12-05 16:46:03
% DurationCPUTime: 19.35s
% Computational Cost: add. (60091->683), mult. (82299->968), div. (0->0), fcn. (89139->8), ass. (0->416)
t734 = rSges(6,1) + pkin(4);
t717 = rSges(6,3) + qJ(5);
t753 = -Icges(5,1) - Icges(6,1);
t752 = Icges(6,4) + Icges(5,5);
t751 = Icges(5,2) + Icges(6,3);
t750 = Icges(5,6) - Icges(6,6);
t467 = sin(pkin(8));
t466 = qJ(2) + qJ(3);
t462 = sin(t466);
t463 = cos(t466);
t469 = sin(qJ(4));
t471 = cos(qJ(4));
t745 = t717 * t469 + t734 * t471;
t735 = rSges(6,2) * t463 - t745 * t462;
t749 = t735 * t467;
t468 = cos(pkin(8));
t748 = t735 * t468;
t604 = t468 * t471;
t609 = t467 * t469;
t439 = t463 * t609 + t604;
t605 = t468 * t469;
t608 = t467 * t471;
t440 = t463 * t608 - t605;
t747 = t752 * t439 + t750 * t440;
t441 = t463 * t605 - t608;
t442 = t463 * t604 + t609;
t746 = t752 * t441 + t750 * t442;
t617 = t462 * t468;
t638 = Icges(6,5) * t441;
t313 = Icges(6,1) * t442 + Icges(6,4) * t617 + t638;
t421 = Icges(5,4) * t441;
t315 = Icges(5,1) * t442 + Icges(5,5) * t617 - t421;
t744 = t751 * t442 - t313 - t315 + t421 - t638;
t618 = t462 * t467;
t639 = Icges(6,5) * t439;
t312 = Icges(6,1) * t440 + Icges(6,4) * t618 + t639;
t420 = Icges(5,4) * t439;
t314 = Icges(5,1) * t440 + Icges(5,5) * t618 - t420;
t743 = t751 * t440 - t312 - t314 + t420 - t639;
t419 = Icges(6,5) * t442;
t305 = Icges(6,6) * t617 + Icges(6,3) * t441 + t419;
t644 = Icges(5,4) * t442;
t311 = -Icges(5,2) * t441 + Icges(5,6) * t617 + t644;
t742 = t753 * t441 + t305 - t311 + t419 - t644;
t418 = Icges(6,5) * t440;
t304 = Icges(6,6) * t618 + Icges(6,3) * t439 + t418;
t645 = Icges(5,4) * t440;
t310 = -Icges(5,2) * t439 + Icges(5,6) * t618 + t645;
t741 = t753 * t439 + t304 - t310 + t418 - t645;
t740 = (-t752 * t469 - t750 * t471) * t462;
t739 = -t743 * t439 - t741 * t440 + t747 * t618;
t738 = t744 * t439 + t742 * t440 - t746 * t618;
t737 = t743 * t441 + t741 * t442 - t747 * t617;
t736 = t744 * t441 + t742 * t442 - t746 * t617;
t464 = t467 ^ 2;
t465 = t468 ^ 2;
t726 = t464 + t465;
t637 = Icges(6,5) * t469;
t529 = Icges(6,1) * t471 + t637;
t390 = -Icges(6,4) * t463 + t462 * t529;
t643 = Icges(5,4) * t469;
t530 = Icges(5,1) * t471 - t643;
t392 = -Icges(5,5) * t463 + t462 * t530;
t732 = t392 + t390 + (-t751 * t471 + t637 - t643) * t462;
t615 = t462 * t471;
t457 = Icges(6,5) * t615;
t616 = t462 * t469;
t634 = Icges(6,6) * t463;
t382 = Icges(6,3) * t616 + t457 - t634;
t642 = Icges(5,4) * t471;
t524 = -Icges(5,2) * t469 + t642;
t388 = -Icges(5,6) * t463 + t462 * t524;
t731 = t388 - (-Icges(5,1) * t469 - t642) * t462 + Icges(6,1) * t616 - t382 - t457;
t730 = t740 * t463;
t537 = rSges(5,1) * t471 - rSges(5,2) * t469;
t395 = -rSges(5,3) * t463 + t462 * t537;
t371 = t395 * t467;
t373 = t395 * t468;
t449 = rSges(4,1) * t462 + rSges(4,2) * t463;
t321 = t726 * t449;
t729 = t738 * t467 + t739 * t468;
t728 = t736 * t467 - t737 * t468;
t521 = -Icges(4,5) * t462 - Icges(4,6) * t463;
t470 = sin(qJ(2));
t472 = cos(qJ(2));
t725 = 0.2e1 * t470 * (Icges(3,1) - Icges(3,2)) * t472 + (-0.2e1 * t470 ^ 2 + 0.2e1 * t472 ^ 2) * Icges(3,4);
t693 = m(5) / 0.2e1;
t692 = m(6) / 0.2e1;
t670 = t467 / 0.2e1;
t669 = -t468 / 0.2e1;
t519 = Icges(6,5) * t471 + Icges(6,3) * t469;
t481 = -t462 * t519 + t634;
t358 = t481 * t467;
t366 = t390 * t467;
t523 = Icges(6,4) * t471 + Icges(6,6) * t469;
t386 = -Icges(6,2) * t463 + t462 * t523;
t514 = t304 * t469 + t312 * t471;
t502 = t386 * t467 + t514;
t308 = Icges(6,4) * t440 + Icges(6,2) * t618 + Icges(6,6) * t439;
t626 = t308 * t463;
t477 = -t462 * t502 + t626;
t160 = t358 * t439 - t366 * t440 + t467 * t477;
t359 = t481 * t468;
t367 = t390 * t468;
t513 = t305 * t469 + t313 * t471;
t501 = t386 * t468 + t513;
t309 = Icges(6,4) * t442 + Icges(6,2) * t617 + Icges(6,6) * t441;
t625 = t309 * t463;
t476 = -t462 * t501 + t625;
t161 = t359 * t439 - t367 * t440 + t467 * t476;
t209 = t304 * t439 + t308 * t618 + t312 * t440;
t245 = t382 * t439 + t386 * t618 + t390 * t440;
t383 = Icges(6,6) * t462 + t463 * t519;
t391 = Icges(6,4) * t462 + t463 * t529;
t509 = t382 * t469 + t390 * t471;
t495 = (Icges(6,2) * t462 + t463 * t523 - t509) * t463;
t623 = t386 * t463;
t210 = t305 * t439 + t309 * t618 + t313 * t440;
t632 = t210 * t468;
t37 = (t632 - t383 * t439 - t391 * t440 + (t209 - t623) * t467) * t463 + (t161 * t468 + t245 + (t160 - t495) * t467) * t462;
t364 = t388 * t467;
t368 = t392 * t467;
t520 = Icges(5,5) * t471 - Icges(5,6) * t469;
t384 = -Icges(5,3) * t463 + t462 * t520;
t512 = -t310 * t469 + t314 * t471;
t500 = -t384 * t467 - t512;
t306 = Icges(5,5) * t440 - Icges(5,6) * t439 + Icges(5,3) * t618;
t628 = t306 * t463;
t479 = t462 * t500 + t628;
t162 = t364 * t439 - t368 * t440 + t467 * t479;
t365 = t388 * t468;
t369 = t392 * t468;
t511 = -t311 * t469 + t315 * t471;
t499 = -t384 * t468 - t511;
t307 = Icges(5,5) * t442 - Icges(5,6) * t441 + Icges(5,3) * t617;
t627 = t307 * t463;
t478 = t462 * t499 + t627;
t163 = t365 * t439 - t369 * t440 + t467 * t478;
t211 = t306 * t618 - t310 * t439 + t314 * t440;
t246 = t384 * t618 - t388 * t439 + t392 * t440;
t389 = Icges(5,6) * t462 + t463 * t524;
t393 = Icges(5,5) * t462 + t463 * t530;
t508 = -t388 * t469 + t392 * t471;
t494 = (Icges(5,3) * t462 + t463 * t520 - t508) * t463;
t624 = t384 * t463;
t212 = t307 * t618 - t311 * t439 + t315 * t440;
t631 = t212 * t468;
t38 = (t631 + t389 * t439 - t393 * t440 + (t211 - t624) * t467) * t463 + (t163 * t468 + t246 + (t162 - t494) * t467) * t462;
t723 = t37 + t38;
t164 = t358 * t441 - t366 * t442 + t468 * t477;
t165 = t359 * t441 - t367 * t442 + t468 * t476;
t214 = t305 * t441 + t309 * t617 + t313 * t442;
t247 = t382 * t441 + t386 * t617 + t390 * t442;
t213 = t304 * t441 + t308 * t617 + t312 * t442;
t630 = t213 * t467;
t39 = (t630 - t383 * t441 - t391 * t442 + (t214 - t623) * t468) * t463 + (t164 * t467 + t247 + (t165 - t495) * t468) * t462;
t166 = t364 * t441 - t368 * t442 + t468 * t479;
t167 = t365 * t441 - t369 * t442 + t468 * t478;
t216 = t307 * t617 - t311 * t441 + t315 * t442;
t248 = t384 * t617 - t388 * t441 + t392 * t442;
t215 = t306 * t617 - t310 * t441 + t314 * t442;
t629 = t215 * t467;
t40 = (t629 + t389 * t441 - t393 * t442 + (t216 - t624) * t468) * t463 + (t166 * t467 + t248 + (t167 - t494) * t468) * t462;
t722 = t40 + t39;
t721 = (t732 * t439 + t731 * t440) * t463 + (t738 * t468 + (-t730 - t739) * t467) * t462;
t720 = (t732 * t441 + t731 * t442) * t463 + ((-t730 + t736) * t468 + t737 * t467) * t462;
t719 = (-t160 - t162) * t468 + (t161 + t163) * t467;
t718 = (-t164 - t166) * t468 + (t165 + t167) * t467;
t522 = -Icges(3,5) * t470 - Icges(3,6) * t472;
t443 = t522 * t467;
t444 = t522 * t468;
t716 = t747 * t463 + (t469 * t743 + t471 * t741) * t462;
t715 = t746 * t463 + (t469 * t744 + t742 * t471) * t462;
t592 = rSges(6,2) * t618 + t717 * t439 + t734 * t440;
t714 = rSges(6,2) * t617 + t717 * t441 + t734 * t442;
t491 = -t467 * t714 + t592 * t468;
t153 = t491 * t463 + (-t467 * t748 + t468 * t749) * t462;
t579 = rSges(6,2) * t462 + t745 * t463;
t185 = (t579 * t467 - t592) * t462;
t186 = (-t579 * t468 + t714) * t462;
t452 = pkin(3) * t463 + pkin(7) * t462;
t574 = t726 * t452;
t196 = t467 * t592 + t468 * t714 + t574;
t317 = rSges(5,1) * t440 - rSges(5,2) * t439 + rSges(5,3) * t618;
t319 = rSges(5,1) * t442 - rSges(5,2) * t441 + rSges(5,3) * t617;
t510 = t317 * t468 - t319 * t467;
t208 = t510 * t463 + (-t371 * t468 + t373 * t467) * t462;
t397 = rSges(5,3) * t462 + t463 * t537;
t231 = (t397 * t467 - t317) * t462;
t232 = (-t397 * t468 + t319) * t462;
t235 = t467 * t317 + t468 * t319 + t574;
t451 = pkin(3) * t462 - pkin(7) * t463;
t561 = -t451 + t735;
t279 = t561 * t467;
t281 = t561 * t468;
t580 = -t395 - t451;
t322 = t580 * t467;
t324 = t580 * t468;
t575 = t726 * t451;
t707 = -t467 * t371 - t468 * t373;
t251 = -t575 + t707;
t252 = t510 * t462;
t265 = t317 * t463 + t395 * t618;
t266 = -t319 * t463 - t395 * t617;
t578 = -t397 - t452;
t323 = t578 * t467;
t325 = t578 * t468;
t564 = t252 * t251 + t265 * t325 + t266 * t323;
t202 = t491 * t462;
t702 = t467 * t749 + t468 * t748;
t223 = -t575 + t702;
t233 = -t462 * t749 + t592 * t463;
t234 = t462 * t748 - t463 * t714;
t560 = -t452 - t579;
t280 = t560 * t467;
t282 = t560 * t468;
t566 = t202 * t223 + t233 * t282 + t234 * t280;
t505 = (t153 * t196 + t185 * t281 + t186 * t279 + t566) * t692 + (t208 * t235 + t231 * t324 + t232 * t322 + t564) * t693;
t659 = pkin(2) * t472;
t586 = t726 * t659;
t203 = t235 + t586;
t660 = pkin(2) * t470;
t547 = -t451 - t660;
t539 = -t395 + t547;
t295 = t539 * t467;
t297 = t539 * t468;
t567 = t208 * t203 + t231 * t297 + t232 * t295;
t180 = t196 + t586;
t507 = t547 + t735;
t272 = t507 * t467;
t274 = t507 * t468;
t569 = t153 * t180 + t185 * t274 + t186 * t272;
t656 = (t566 + t569) * t692 + (t564 + t567) * t693;
t709 = t656 - t505;
t328 = t439 * t467 + t441 * t468;
t612 = t463 * t469;
t278 = (-t328 + t612) * t616;
t550 = t612 / 0.2e1;
t291 = (t550 - t328 / 0.2e1) * m(6);
t652 = m(6) * qJD(5);
t601 = t291 * qJD(1) + t278 * t652;
t705 = m(6) * (t153 * t202 + t185 * t233 + t186 * t234) + m(5) * (t208 * t252 + t231 * t265 + t232 * t266);
t570 = qJD(2) + qJD(3);
t589 = -t441 * t734 + t442 * t717;
t590 = -t439 * t734 + t440 * t717;
t224 = t590 * t467 + t589 * t468;
t573 = (-t469 * t734 + t471 * t717) * t462;
t326 = t573 * t467;
t327 = t573 * t468;
t100 = t196 * t224 - t279 * t326 - t281 * t327;
t345 = -rSges(5,1) * t439 - rSges(5,2) * t440;
t349 = -rSges(5,1) * t441 - rSges(5,2) * t442;
t267 = t345 * t467 + t349 * t468;
t179 = t203 * t267;
t195 = t235 * t267;
t436 = (-rSges(5,1) * t469 - rSges(5,2) * t471) * t462;
t84 = t180 * t224 - t272 * t326 - t274 * t327;
t704 = (t100 + t84) * t692 + (t179 + t195 + ((-t297 - t324) * t468 + (-t295 - t322) * t467) * t436) * t693;
t541 = t729 * t669 + t728 * t670;
t701 = t726 * t521;
t699 = 2 * qJD(2);
t698 = 4 * qJD(2);
t697 = 2 * qJD(3);
t696 = 4 * qJD(3);
t695 = 2 * qJD(4);
t694 = m(4) / 0.2e1;
t516 = -t233 * t468 - t234 * t467;
t687 = m(6) * (t185 * t441 + t186 * t439 + (t202 * t463 + (t153 + t516) * t462) * t469);
t299 = (t439 * t468 - t441 * t467) * t462;
t461 = t462 ^ 2;
t356 = t439 * t463 + t461 * t609;
t357 = -t441 * t463 - t461 * t605;
t488 = t202 * t328 + t516 * t616;
t684 = m(6) * (t180 * t299 + t272 * t357 + t274 * t356 + t488);
t683 = m(6) * (t196 * t299 + t279 * t357 + t281 * t356 + t488);
t158 = t180 * t328;
t187 = t196 * t328;
t682 = m(6) * (t158 + t187 + ((-t274 - t281) * t468 + (-t272 - t279) * t467) * t616);
t168 = t180 * t612;
t515 = -t272 * t467 - t274 * t468;
t493 = t515 * t616;
t563 = t223 * t616 + t439 * t280 + t441 * t282;
t681 = m(6) * (t168 + t493 + t563);
t562 = t224 * t616 - t439 * t326 - t441 * t327;
t680 = m(6) * (t180 * t615 + t272 * t440 + t274 * t442 + t562);
t497 = (-t279 * t467 - t281 * t468) * t462;
t80 = (t196 * t463 + t497) * t469 + t563;
t679 = m(6) * t80;
t81 = t180 * t223 + t272 * t280 + t274 * t282;
t678 = m(6) * t81;
t677 = m(6) * (t196 * t615 + t279 * t440 + t281 * t442 + t562);
t676 = m(6) * t84;
t85 = t196 * t223 + t279 * t280 + t281 * t282;
t675 = m(6) * t85;
t672 = -t463 / 0.2e1;
t123 = -t245 * t463 + (t209 * t467 + t632) * t462;
t124 = -t246 * t463 + (t211 * t467 + t631) * t462;
t125 = -t247 * t463 + (t214 * t468 + t630) * t462;
t126 = -t248 * t463 + (t216 * t468 + t629) * t462;
t259 = t462 * t509 - t623;
t225 = t462 * t514 - t626;
t226 = t462 * t513 - t625;
t518 = t225 * t467 + t226 * t468;
t135 = -t259 * t463 + t462 * t518;
t260 = t508 * t462 - t624;
t227 = t462 * t512 - t628;
t228 = t462 * t511 - t627;
t517 = t227 * t467 + t228 * t468;
t136 = -t260 * t463 + t462 * t517;
t181 = t502 * t463 + (t358 * t469 - t366 * t471 + t308) * t462;
t182 = t501 * t463 + (t359 * t469 - t367 * t471 + t309) * t462;
t49 = (t495 + t518) * t463 + (t182 * t468 + t181 * t467 - (t383 * t469 + t391 * t471 + t386) * t463 + t259) * t462;
t183 = -t500 * t463 + (t364 * t469 - t368 * t471 + t306) * t462;
t184 = -t499 * t463 + (t365 * t469 - t369 * t471 + t307) * t462;
t50 = (t494 + t517) * t463 + (t184 * t468 + t183 * t467 - (-t389 * t469 + t393 * t471 + t384) * t463 + t260) * t462;
t3 = (-t49 / 0.2e1 - t50 / 0.2e1 + (t125 / 0.2e1 + t126 / 0.2e1) * t468 + (t123 / 0.2e1 + t124 / 0.2e1) * t467) * t463 + (t135 / 0.2e1 + t136 / 0.2e1 + (t39 / 0.2e1 + t40 / 0.2e1) * t468 + (t37 / 0.2e1 + t38 / 0.2e1) * t467) * t462 + t705;
t61 = 0.2e1 * (t153 / 0.4e1 - t224 / 0.4e1) * m(6) + 0.2e1 * (t208 / 0.4e1 - t267 / 0.4e1) * m(5);
t603 = t61 * qJD(1);
t668 = t3 * qJD(4) + t603;
t450 = rSges(4,1) * t463 - rSges(4,2) * t462;
t294 = t726 * t450;
t253 = t294 + t586;
t549 = -t449 - t660;
t398 = t549 * t467;
t400 = t549 * t468;
t194 = -t253 * t321 + (-t398 * t467 - t400 * t468) * t450;
t667 = m(4) * t194;
t229 = (-t294 + t450) * t321;
t666 = m(4) * t229;
t127 = t203 * t251 + t295 * t323 + t297 * t325;
t665 = m(5) * t127;
t137 = t235 * t251 + t322 * t323 + t324 * t325;
t664 = m(5) * t137;
t663 = m(5) * (t179 + (-t295 * t467 - t297 * t468) * t436);
t662 = m(5) * (t195 + (-t322 * t467 - t324 * t468) * t436);
t661 = m(6) * t100;
t655 = m(6) * qJD(2);
t654 = m(6) * qJD(3);
t653 = m(6) * qJD(4);
t614 = t463 * t467;
t613 = t463 * t468;
t555 = t615 / 0.2e1;
t283 = (t555 - t299 / 0.2e1) * m(6);
t572 = t283 * qJD(1);
t155 = -m(4) * t321 + m(5) * t251 + m(6) * t223;
t292 = m(6) * t550 + t328 * t692;
t62 = (t208 + t267) * t693 + (t153 + t224) * t692;
t568 = t155 * qJD(3) + t62 * qJD(4) + t292 * qJD(5);
t565 = t202 * t224 - t233 * t327 - t234 * t326;
t558 = t618 / 0.2e1;
t556 = t617 / 0.2e1;
t548 = -t450 - t659;
t546 = -t452 - t659;
t540 = t726 * t660;
t538 = -t397 + t546;
t455 = rSges(3,1) * t470 + rSges(3,2) * t472;
t506 = t546 - t579;
t422 = t521 * t467;
t423 = t521 * t468;
t504 = (t464 * t423 + (-t467 * t422 + t701) * t468 + t718) * t670 + (t465 * t422 + (-t468 * t423 + t701) * t467 + t719) * t669;
t503 = t541 + t704;
t496 = -t540 - t575;
t492 = t252 * t267 + (-t265 * t468 - t266 * t467) * t436;
t490 = t467 * t725 + t444;
t489 = -t468 * t725 + t443;
t475 = -t541 + ((-t225 - t227) * t468 + (t226 + t228) * t467) * t462 / 0.2e1 + ((-t181 - t183) * t468 + (t182 + t184) * t467) * t672 + t722 * t670 + t723 * t669 + t719 * t558 + t718 * t556 + ((-t209 - t211) * t468 + (t210 + t212) * t467) * t614 / 0.2e1 + ((-t213 - t215) * t468 + (t214 + t216) * t467) * t613 / 0.2e1;
t474 = (-t705 - (t136 + t135) * t462 / 0.2e1 + (t467 * t715 - t468 * t716) * t672 + (t50 + t49) * t463 / 0.2e1 + t720 * t670 + t721 * t669 - t723 * t618 / 0.2e1 + t729 * t558 - t722 * t617 / 0.2e1 + t728 * t556 - (t123 + t124) * t614 / 0.2e1 - (t126 + t125) * t613 / 0.2e1) * qJD(4) - t603;
t401 = t548 * t468;
t399 = t548 * t467;
t351 = t726 * t455;
t298 = t538 * t468;
t296 = t538 * t467;
t287 = -t540 - t321;
t284 = m(6) * t555 + t299 * t692;
t277 = -t349 * t463 - t436 * t617;
t276 = t345 * t463 + t436 * t618;
t275 = t506 * t468;
t273 = t506 * t467;
t270 = t461 * t469 * t471 + t439 * t440 + t441 * t442;
t261 = (t345 * t468 - t349 * t467) * t462;
t242 = t496 + t707;
t237 = -t462 * t327 - t589 * t463;
t236 = t590 * t463 + t573 * t618;
t218 = t496 + t702;
t217 = (-t589 * t467 + t590 * t468) * t462;
t139 = t469 * t497 + t187;
t130 = t158 + t493;
t99 = t202 * t299 + t233 * t356 + t234 * t357;
t82 = t677 / 0.2e1;
t79 = t679 / 0.2e1;
t77 = t680 / 0.2e1;
t63 = t681 / 0.2e1;
t57 = -qJD(4) * t61 - qJD(5) * t291;
t55 = t682 / 0.2e1;
t53 = t683 / 0.2e1;
t51 = t684 / 0.2e1;
t25 = -t687 / 0.2e1;
t24 = t687 / 0.2e1;
t19 = t63 + t79 - t682 / 0.2e1;
t18 = t55 + t79 - t681 / 0.2e1;
t17 = t55 + t63 - t679 / 0.2e1;
t16 = t82 + t24 - t683 / 0.2e1;
t15 = t53 + t82 + t25;
t14 = t53 + t24 - t677 / 0.2e1;
t13 = t541 + t661 + t662;
t12 = t77 + t24 - t684 / 0.2e1;
t11 = t51 + t77 + t25;
t10 = t51 + t24 - t680 / 0.2e1;
t9 = t541 + t663 + t676;
t8 = t504 + t664 + t666 + t675;
t7 = t8 * qJD(3);
t6 = t504 + t665 + t667 + t678;
t5 = t503 + t709;
t4 = t503 - t709;
t1 = t475 + t505 + t656 - t704;
t2 = [0, (-m(3) * t351 / 0.2e1 + t287 * t694 + t242 * t693 + t218 * t692) * t699 + t568, qJD(2) * t155 + t568, (t217 * t692 + t261 * t693) * t695 + t284 * qJD(5) + t570 * t62, qJD(4) * t284 + t292 * t570; t57, ((t465 * t443 + (t489 * t467 + (-t444 + t490) * t468) * t467) * t669 + m(6) * (t180 * t218 + t272 * t273 + t274 * t275) + m(5) * (t203 * t242 + t295 * t296 + t297 * t298) + m(4) * (t253 * t287 + t398 * t399 + t400 * t401) + (t464 * t444 + (t490 * t468 + (-t443 + t489) * t467) * t468) * t670 + t504 + m(3) * (-t351 + t455) * (rSges(3,1) * t472 - rSges(3,2) * t470) * t726) * qJD(2) + t6 * qJD(3) + t9 * qJD(4) + t130 * t652, t6 * qJD(2) + t504 * qJD(3) + t5 * qJD(4) + t17 * qJD(5) + (-t675 / 0.4e1 - t664 / 0.4e1 - t666 / 0.4e1) * t696 + ((t137 + t127) * t693 + (t194 + t229) * t694 + (t85 + t81) * t692) * t697, t9 * qJD(2) + t5 * qJD(3) + t11 * qJD(5) + ((t180 * t217 + t236 * t274 + t237 * t272 + t565) * t692 + (t203 * t261 + t276 * t297 + t277 * t295 + t492) * t693) * t695 + t474, t17 * qJD(3) + t11 * qJD(4) + t130 * t655 - t601; t57, t504 * qJD(2) + t7 + t4 * qJD(4) + t18 * qJD(5) + (-t678 / 0.4e1 - t665 / 0.4e1 - t667 / 0.4e1) * t698 + ((t196 * t218 + t273 * t279 + t275 * t281 + t81) * t692 + (t235 * t242 + t296 * t322 + t298 * t324 + t127) * t693 + (t287 * t294 + (-t399 * t467 - t401 * t468) * t449 + t194) * t694) * t699, t8 * qJD(2) + t13 * qJD(4) + t139 * t652 + t7, t4 * qJD(2) + t13 * qJD(3) + t15 * qJD(5) + ((t196 * t217 + t236 * t281 + t237 * t279 + t565) * t692 + (t235 * t261 + t276 * t324 + t277 * t322 + t492) * t693) * t695 + t474, t18 * qJD(2) + t15 * qJD(4) + t139 * t654 - t601; -qJD(5) * t283 + t570 * t61, t475 * qJD(2) + t1 * qJD(3) + t10 * qJD(5) + (-t663 / 0.4e1 - t676 / 0.4e1) * t698 + ((t202 * t218 + t233 * t275 + t234 * t273 + t569) * t692 + (t242 * t252 + t265 * t298 + t266 * t296 + t567) * t693) * t699 + t668, t1 * qJD(2) + t475 * qJD(3) + t14 * qJD(5) + (-t661 / 0.4e1 - t662 / 0.4e1) * t696 + t505 * t697 + t668, (m(6) * (t202 * t217 + t233 * t236 + t234 * t237) + m(5) * (t252 * t261 + t265 * t276 + t266 * t277) + (t740 * t463 ^ 2 + (t715 * t468 + t716 * t467 + (t732 * t469 + t731 * t471) * t463) * t462) * t672 + t721 * t558 + t720 * t556) * qJD(4) + t99 * t652 + t570 * t3, -t572 + t10 * qJD(2) + t14 * qJD(3) + t99 * t653 + (t299 * t616 + t356 * t441 + t357 * t439 - t270) * t652; qJD(4) * t283 + t570 * t291, (t273 * t439 + t275 * t441 + t168 + (t218 + t515) * t616 - t130) * t655 + t19 * qJD(3) + t12 * qJD(4) + t601, t19 * qJD(2) + (t80 - t139) * t654 + t16 * qJD(4) + t601, t572 + t12 * qJD(2) + t16 * qJD(3) + (t233 * t442 + t234 * t440 + t236 * t441 + t237 * t439 + (t202 * t471 + t217 * t469) * t462 - t99) * t653 + t270 * t652, 0.4e1 * (t270 * qJD(4) / 0.4e1 + (qJD(2) / 0.4e1 + qJD(3) / 0.4e1) * t278) * m(6);];
Cq = t2;