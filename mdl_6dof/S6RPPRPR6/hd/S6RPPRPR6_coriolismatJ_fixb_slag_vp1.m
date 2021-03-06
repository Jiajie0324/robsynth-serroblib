% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPPRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6]';
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
% Cq [6x6]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:51
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPPRPR6_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR6_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR6_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRPR6_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR6_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRPR6_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRPR6_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:50:44
% EndTime: 2019-03-09 01:51:07
% DurationCPUTime: 18.66s
% Computational Cost: add. (19889->717), mult. (49012->1030), div. (0->0), fcn. (51528->6), ass. (0->427)
t479 = sin(qJ(4));
t480 = sin(qJ(1));
t617 = t479 * t480;
t482 = cos(qJ(4));
t483 = cos(qJ(1));
t608 = t482 * t483;
t451 = qJ(5) * t608;
t545 = (-pkin(7) + qJ(2)) * t480;
t541 = -t451 + t545;
t651 = pkin(1) + qJ(3);
t652 = pkin(4) * t479;
t544 = t651 + t652;
t616 = t479 * t483;
t559 = t480 * rSges(6,1) + rSges(6,2) * t616 + rSges(6,3) * t608;
t269 = t483 * t544 + t541 - t559;
t264 = t480 * t269;
t613 = t480 * t482;
t578 = rSges(6,2) * t617 + rSges(6,3) * t613;
t449 = qJ(5) * t613;
t469 = t483 * qJ(2);
t579 = t449 + t469;
t268 = (-rSges(6,1) - pkin(7)) * t483 - t544 * t480 + t578 + t579;
t597 = t479 * t264 + t268 * t616;
t478 = sin(qJ(6));
t481 = cos(qJ(6));
t387 = t480 * t478 - t481 * t608;
t388 = t478 * t608 + t480 * t481;
t537 = t388 * rSges(7,1) - t387 * rSges(7,2);
t508 = t480 * pkin(5) + t537;
t694 = -rSges(7,3) - pkin(8);
t570 = pkin(4) - t694;
t725 = t479 * t570 + t651;
t207 = t483 * t725 - t508 + t541;
t389 = t478 * t483 + t481 * t613;
t610 = t481 * t483;
t390 = -t478 * t613 + t610;
t730 = -t390 * rSges(7,1) + t389 * rSges(7,2);
t746 = (-pkin(5) - pkin(7)) * t483 - t725 * t480 + t579 + t730;
t133 = t480 * t207 + t483 * t746;
t601 = t133 * t479;
t717 = m(7) / 0.2e1;
t718 = m(6) / 0.2e1;
t649 = rSges(7,1) * t478;
t535 = rSges(7,2) * t481 + t649;
t372 = rSges(7,3) * t482 + t479 * t535;
t443 = pkin(4) * t482 + qJ(5) * t479;
t286 = (pkin(8) * t482 + t372 + t443) * t480;
t415 = t483 * t443;
t467 = pkin(8) * t608;
t621 = t372 * t483;
t288 = t415 + t467 + t621;
t727 = -t286 * t483 + t288 * t480;
t534 = rSges(6,2) * t482 - rSges(6,3) * t479;
t335 = (t443 - t534) * t480;
t338 = -t483 * t534 + t415;
t728 = -t335 * t483 + t338 * t480;
t643 = (t482 * t728 + t597) * t718 + (t482 * t727 + t601) * t717;
t275 = (-t570 * t482 + (-qJ(5) - t535) * t479) * t480;
t333 = t479 * rSges(7,2) * t610 + rSges(7,3) * t608 + t616 * t649;
t411 = pkin(4) * t608 + qJ(5) * t616;
t589 = -t333 - t411;
t276 = t467 - t589;
t181 = t275 * t483 + t480 * t276;
t324 = ((rSges(6,2) - pkin(4)) * t482 + (-rSges(6,3) - qJ(5)) * t479) * t480;
t325 = -rSges(6,2) * t608 + rSges(6,3) * t616 + t411;
t244 = t324 * t483 + t480 * t325;
t644 = (-t244 * t482 + t597) * t718 + (-t181 * t482 + t601) * t717;
t745 = t643 - t644;
t767 = t745 * qJD(1);
t525 = Icges(7,5) * t478 + Icges(7,6) * t481;
t354 = Icges(7,3) * t482 + t479 * t525;
t635 = Icges(7,4) * t478;
t528 = Icges(7,2) * t481 + t635;
t358 = Icges(7,6) * t482 + t479 * t528;
t634 = Icges(7,4) * t481;
t457 = t479 * t634;
t618 = t478 * t479;
t633 = Icges(7,5) * t482;
t362 = Icges(7,1) * t618 + t457 + t633;
t188 = t354 * t617 - t358 * t389 + t362 * t390;
t289 = -Icges(7,5) * t388 + Icges(7,6) * t387 + Icges(7,3) * t616;
t636 = Icges(7,4) * t388;
t292 = Icges(7,2) * t387 + Icges(7,6) * t616 - t636;
t382 = Icges(7,4) * t387;
t295 = -Icges(7,1) * t388 + Icges(7,5) * t616 + t382;
t136 = t289 * t617 - t389 * t292 + t390 * t295;
t290 = Icges(7,5) * t390 - Icges(7,6) * t389 + Icges(7,3) * t617;
t384 = Icges(7,4) * t390;
t293 = -Icges(7,2) * t389 + Icges(7,6) * t617 + t384;
t383 = Icges(7,4) * t389;
t297 = -Icges(7,1) * t390 - Icges(7,5) * t617 + t383;
t137 = t290 * t617 - t293 * t389 - t297 * t390;
t523 = t136 * t483 + t137 * t480;
t64 = t188 * t482 + t479 * t523;
t496 = rSges(7,3) * t616 - t537;
t492 = t482 * t496;
t238 = t372 * t616 - t492;
t298 = rSges(7,3) * t617 - t730;
t624 = t298 * t482;
t764 = t372 * t617 - t624;
t162 = -t238 * t480 + t483 * t764;
t187 = t354 * t616 + t387 * t358 - t388 * t362;
t134 = t289 * t616 + t387 * t292 - t388 * t295;
t135 = t290 * t616 + t387 * t293 + t388 * t297;
t524 = t134 * t483 + t480 * t135;
t765 = t187 * t482 + t479 * t524;
t409 = rSges(5,1) * t613 - rSges(5,2) * t617;
t445 = rSges(5,1) * t482 - rSges(5,2) * t479;
t412 = t445 * t483;
t755 = m(5) / 0.2e1;
t561 = t181 * t717 + t244 * t718 + (-t409 * t483 + t480 * t412) * t755;
t754 = -m(7) / 0.2e1;
t602 = t727 * t754 - m(6) * t728 / 0.2e1;
t45 = t602 - t561;
t763 = qJD(1) * t45;
t476 = t480 ^ 2;
t477 = t483 ^ 2;
t448 = t476 + t477;
t336 = t448 * t445;
t731 = t286 * t480 + t288 * t483;
t560 = t731 * t717 + (t335 * t480 + t338 * t483) * t718 + t336 * t755;
t305 = -t480 * t409 - t412 * t483;
t737 = t325 * t483;
t562 = (t480 * t275 - t276 * t483) * t717 + (t480 * t324 - t737) * t718 + t305 * t755;
t38 = t562 - t560;
t762 = t38 * qJD(1);
t371 = Icges(6,1) * t483 - Icges(6,4) * t617 - Icges(6,5) * t613;
t470 = Icges(6,6) * t479;
t630 = Icges(6,3) * t482;
t366 = -Icges(6,5) * t480 + (-t630 - t470) * t483;
t631 = Icges(6,6) * t482;
t429 = Icges(6,2) * t479 + t631;
t368 = -Icges(6,4) * t480 - t429 * t483;
t512 = -t366 * t482 - t368 * t479;
t501 = -t371 + t512;
t638 = Icges(5,4) * t479;
t530 = Icges(5,2) * t482 + t638;
t360 = Icges(5,6) * t483 + t480 * t530;
t637 = Icges(5,4) * t482;
t532 = Icges(5,1) * t479 + t637;
t364 = Icges(5,5) * t483 + t480 * t532;
t453 = Icges(6,6) * t617;
t367 = Icges(6,5) * t483 - Icges(6,3) * t613 - t453;
t454 = Icges(6,6) * t613;
t369 = Icges(6,4) * t483 - Icges(6,2) * t617 - t454;
t511 = -t367 * t482 - t369 * t479;
t760 = -t360 * t482 - t364 * t479 - t511;
t759 = -t134 * t480 + t135 * t483;
t722 = 0.2e1 * t448;
t203 = t483 * t207;
t679 = m(6) * (-t268 * t480 + t483 * t269);
t84 = -t482 * t679 + m(7) * (-t203 * t482 + t746 * t613);
t757 = qJD(1) * t84;
t756 = t360 * t608 + t364 * t616 + t511 * t483;
t517 = t293 * t481 - t297 * t478;
t625 = t290 * t482;
t164 = t479 * t517 + t625;
t526 = Icges(5,5) * t479 + Icges(5,6) * t482;
t356 = Icges(5,3) * t483 + t480 * t526;
t615 = t480 * t356;
t747 = -t480 * t371 - t615 + t756;
t432 = Icges(6,4) * t479 + Icges(6,5) * t482;
t370 = -Icges(6,1) * t480 - t432 * t483;
t614 = t480 * t370;
t744 = -t614 + t760 * t480 + (-t356 + t501) * t483;
t743 = m(6) + m(7);
t700 = -t480 / 0.2e1;
t698 = t480 / 0.2e1;
t742 = -t483 / 0.2e1;
t696 = t483 / 0.2e1;
t315 = rSges(7,1) * t387 + rSges(7,2) * t388;
t316 = -rSges(7,1) * t389 - rSges(7,2) * t390;
t219 = t480 * t315 - t316 * t483;
t653 = m(7) * t219;
t736 = t448 * t482;
t355 = -Icges(7,3) * t479 + t482 * t525;
t428 = Icges(6,3) * t479 - t631;
t434 = -Icges(5,2) * t479 + t637;
t612 = t481 * t358;
t620 = t478 * t362;
t734 = t482 * (t620 / 0.2e1 + t612 / 0.2e1 + t355 / 0.2e1 - t532 / 0.2e1 - t434 / 0.2e1 - t429 / 0.2e1 + t428 / 0.2e1);
t568 = m(6) / 0.4e1 + m(7) / 0.4e1;
t733 = t568 * (0.1e1 - t448) * t482 * t479;
t527 = Icges(5,5) * t482 - Icges(5,6) * t479;
t529 = -Icges(6,4) * t482 + Icges(6,5) * t479;
t729 = (t527 + t529) * t480;
t398 = -Icges(7,2) * t618 + t457;
t403 = (Icges(7,1) * t481 - t635) * t479;
t724 = t478 * (t403 / 0.2e1 - t358 / 0.2e1) + t481 * (t362 / 0.2e1 + t398 / 0.2e1);
t723 = 0.2e1 * t736;
t721 = 0.4e1 * qJD(1);
t720 = 2 * qJD(4);
t716 = -t765 / 0.2e1;
t332 = t372 * t480;
t138 = (t332 * t479 + t624) * t483 + (-t479 * t333 - t492) * t480;
t191 = (t483 * t298 - t480 * t496) * t479;
t648 = rSges(7,3) * t479;
t374 = t482 * t535 - t648;
t167 = (t374 * t480 + t298) * t479;
t168 = (t333 - t621) * t482 + ((-t374 - t648) * t483 + t537) * t479;
t521 = t167 * t483 + t168 * t480;
t599 = -t238 * t617 + t616 * t764;
t713 = m(7) * (t138 * t479 + (t191 - t521) * t482 + t599);
t712 = m(7) * (t167 * t746 + t168 * t207 - t238 * t276 + t275 * t764);
t406 = (rSges(7,1) * t481 - rSges(7,2) * t478) * t479;
t709 = m(7) * (t133 * t406 + t286 * t315 - t288 * t316);
t310 = -Icges(7,5) * t389 - Icges(7,6) * t390;
t592 = -Icges(7,2) * t390 - t297 - t383;
t594 = Icges(7,1) * t389 + t293 + t384;
t122 = t310 * t482 + (-t478 * t594 + t481 * t592) * t479;
t704 = t122 / 0.2e1;
t702 = t448 / 0.2e1;
t701 = -t479 / 0.2e1;
t699 = -t480 / 0.4e1;
t697 = t482 / 0.2e1;
t695 = t483 / 0.4e1;
t693 = m(3) * ((rSges(3,3) * t483 + t469) * t483 + (rSges(3,3) + qJ(2)) * t476);
t567 = rSges(4,3) + t651;
t351 = rSges(4,2) * t483 - t480 * t567 + t469;
t352 = (rSges(4,2) + qJ(2)) * t480 + t567 * t483;
t692 = m(4) * (-t351 * t480 + t483 * t352);
t691 = m(4) * (t351 * t483 + t480 * t352);
t538 = rSges(5,1) * t479 + rSges(5,2) * t482;
t498 = t538 + t651;
t307 = t469 + (-rSges(5,3) - pkin(7)) * t483 - t498 * t480;
t471 = t480 * rSges(5,3);
t308 = t483 * t498 - t471 + t545;
t690 = m(5) * (-t307 * t409 + t308 * t412);
t689 = m(5) * (-t307 * t480 + t483 * t308);
t688 = m(5) * (t307 * t483 + t480 * t308);
t682 = m(6) * (t268 * t324 + t269 * t325);
t407 = pkin(4) * t617 - t449;
t410 = pkin(4) * t616 - t451;
t210 = (-t410 + t559) * t483 + (-rSges(6,1) * t483 - t407 + t578) * t480;
t590 = t335 * t617 + t338 * t616;
t681 = m(6) * (t210 * t736 + t590);
t678 = m(6) * (t268 * t483 + t264);
t144 = (-pkin(5) * t483 - pkin(8) * t617 - t298 - t407) * t480 + (t616 * t694 - t410 + t508) * t483;
t596 = t286 * t617 + t288 * t616;
t671 = m(7) * (t144 * t736 + t596);
t670 = m(7) * (t207 * t276 + t275 * t746);
t669 = m(7) * (t191 * t736 + t599);
t667 = m(7) * (-t480 * t746 + t203);
t666 = m(7) * t133;
t665 = m(7) * (t238 * t608 + t764 * t613);
t664 = m(7) * (-t238 * t483 - t480 * t764);
t663 = m(7) * t162;
t516 = -t315 * t483 - t480 * t316;
t662 = m(7) * (-t406 * t736 + t479 * t516);
t655 = t482 * t653;
t654 = m(7) * t516;
t650 = m(7) * qJD(6);
t647 = t480 * t64;
t645 = t483 * t765;
t632 = Icges(6,2) * t482;
t626 = t289 * t482;
t622 = t354 * t482;
t531 = Icges(7,1) * t478 + t634;
t363 = -Icges(7,5) * t479 + t482 * t531;
t619 = t478 * t363;
t359 = -Icges(7,6) * t479 + t482 * t528;
t611 = t481 * t359;
t395 = (Icges(7,5) * t481 - Icges(7,6) * t478) * t479;
t609 = t482 * t395;
t499 = m(7) * t521;
t510 = m(7) * t406 * t702;
t83 = -t499 / 0.2e1 + t510;
t607 = t83 * qJD(3);
t595 = -Icges(7,1) * t387 + t292 - t636;
t593 = Icges(7,2) * t388 + t295 + t382;
t586 = t358 - t403;
t361 = -Icges(5,6) * t480 + t483 * t530;
t436 = Icges(5,1) * t482 - t638;
t405 = t436 * t483;
t585 = t361 - t405;
t584 = t362 + t398;
t459 = Icges(5,4) * t608;
t365 = Icges(5,1) * t616 - Icges(5,5) * t480 + t459;
t402 = -Icges(5,2) * t616 + t459;
t583 = t365 + t402;
t394 = (t470 - t632) * t483;
t582 = t366 - t394;
t392 = t428 * t483;
t581 = t368 + t392;
t577 = qJD(1) * t479;
t576 = qJD(4) * t479;
t575 = qJD(4) * t482;
t574 = qJD(6) * t479;
t112 = t167 * t480 - t168 * t483;
t573 = t112 * qJD(2);
t569 = t718 + t717;
t193 = (-m(5) / 0.2e1 - m(4) / 0.2e1 - t569) * t722;
t572 = t193 * qJD(1);
t242 = t569 * t723;
t571 = t242 * qJD(1);
t565 = t112 * t717;
t563 = t716 + t765 / 0.2e1;
t225 = t483 * (-Icges(5,3) * t480 + t483 * t526) + t361 * t613 + t365 * t617;
t558 = t617 / 0.4e1;
t552 = t432 / 0.2e1 - t526 / 0.2e1;
t551 = -pkin(8) * t479 + t374;
t404 = t436 * t480;
t550 = (-t360 + t404) * t483;
t401 = t434 * t480;
t549 = (t364 + t401) * t483;
t393 = -Icges(6,2) * t613 + t453;
t548 = (t367 - t393) * t483;
t391 = Icges(6,3) * t617 - t454;
t547 = (-t369 - t391) * t483;
t309 = Icges(7,5) * t387 + Icges(7,6) * t388;
t121 = t309 * t482 + (-t478 * t595 + t481 * t593) * t479;
t151 = t387 * t584 + t388 * t586 + t395 * t616;
t152 = -t389 * t584 - t390 * t586 + t395 * t617;
t539 = t709 / 0.2e1 + (t121 + t151) * t699 + (t122 + t152) * t695;
t518 = t292 * t481 + t295 * t478;
t163 = t479 * t518 + t626;
t522 = t163 * t483 + t164 * t480;
t253 = -t316 * t482 + t406 * t617;
t254 = t482 * t315 - t406 * t616;
t520 = t253 * t483 + t254 * t480;
t439 = qJ(5) * t482 - t652;
t413 = t480 * t439;
t285 = t480 * t551 + t413;
t414 = t483 * t439;
t287 = t483 * t551 + t414;
t519 = t285 * t480 + t287 * t483;
t440 = rSges(6,2) * t479 + rSges(6,3) * t482;
t334 = t440 * t480 + t413;
t337 = t440 * t483 + t414;
t515 = t334 * t480 + t337 * t483;
t514 = t612 + t620;
t509 = m(7) * (t207 * t315 - t316 * t746) + t609 / 0.2e1;
t108 = t309 * t616 + t387 * t593 + t388 * t595;
t109 = t310 * t616 + t387 * t592 + t388 * t594;
t52 = -t108 * t480 + t109 * t483;
t110 = t309 * t617 - t389 * t593 - t390 * t595;
t111 = t310 * t617 - t389 * t592 - t390 * t594;
t53 = -t110 * t480 + t111 * t483;
t507 = t52 * t700 + t53 * t696;
t504 = t354 * t483 + t518;
t503 = t354 * t480 + t517;
t502 = t355 + t514;
t495 = t765 * t695 - t64 * t699 - t647 / 0.4e1 - t645 / 0.4e1 + (t558 - t617 / 0.4e1) * t759;
t350 = t483 * t370;
t230 = t480 * t512 + t350;
t494 = t356 * t477 / 0.2e1 + (t480 * t501 + t225 + t350 - t615 - t747) * t700 + (t230 + t225) * t698 + (t483 * t501 - t614 - t744) * t742;
t493 = t747 * t742 + (-t230 + t350 + t756) * t696 + ((t370 - t760) * t480 + t744) * t698;
t491 = t479 * t531 + t633;
t490 = t479 * t504 + t626;
t489 = t479 * t503 + t625;
t488 = t479 * t502 + t622;
t329 = t358 * t483;
t331 = t491 * t483;
t116 = t504 * t482 + (t329 * t481 + t331 * t478 - t289) * t479;
t328 = t358 * t480;
t330 = t491 * t480;
t117 = t503 * t482 + (t328 * t481 + t330 * t478 - t290) * t479;
t129 = -t359 * t389 + t363 * t390 + t480 * t488;
t130 = t387 * t359 - t388 * t363 + t483 * t488;
t160 = t502 * t482 + (-t354 + t611 + t619) * t479;
t223 = t479 * t514 + t622;
t487 = t160 * t697 + t223 * t701 + t712 / 0.2e1 + (t117 + t129) * t558 + (t116 + t130) * t616 / 0.4e1 + (t164 + t188) * t613 / 0.4e1 + (t163 + t187) * t608 / 0.4e1;
t484 = -t611 / 0.2e1 - t619 / 0.2e1 + t354 / 0.2e1 + t436 / 0.2e1 - t530 / 0.2e1 - t470 + t632 / 0.2e1 - t630 / 0.2e1;
t408 = t443 * t480;
t400 = t483 * t529;
t397 = t483 * t527;
t317 = t479 * t569 * t722;
t261 = 0.4e1 * t733;
t241 = t568 * t723 - t743 * t736 / 0.2e1;
t235 = -t737 + (t480 * t534 - t408) * t480;
t213 = t653 / 0.2e1;
t212 = t654 / 0.2e1;
t208 = t219 * t479;
t204 = -t655 / 0.2e1;
t192 = (-m(5) / 0.4e1 - m(4) / 0.4e1 - t568) * t722 + (m(4) + m(5) + t743) * t702;
t172 = t589 * t483 + (-t332 - t408) * t480 - pkin(8) * t736;
t170 = (t609 + (-t478 * t586 + t481 * t584) * t479) * t482;
t166 = t662 / 0.2e1;
t155 = t663 / 0.2e1;
t154 = t664 / 0.2e1;
t143 = t665 / 0.2e1;
t104 = qJD(4) * t565;
t102 = t669 / 0.2e1;
t100 = t387 * t328 - t388 * t330 + t483 * t489;
t99 = t387 * t329 - t388 * t331 + t483 * t490;
t98 = -t328 * t389 + t330 * t390 + t480 * t489;
t97 = -t329 * t389 + t331 * t390 + t480 * t490;
t82 = t499 / 0.2e1 + t510;
t73 = t144 * t516 + t406 * t731;
t72 = t479 * t724 + t509;
t69 = t223 * t482 + t479 * t522;
t66 = t667 + t679 + t689 + t692;
t65 = t671 + t681;
t55 = t666 + t678 + t688 + t691 + t693;
t51 = t155 - t654 / 0.2e1;
t50 = t154 - t653 / 0.2e1;
t49 = t213 + t154;
t48 = t213 - t664 / 0.2e1;
t47 = t212 + t155;
t46 = t212 - t663 / 0.2e1;
t43 = t561 + t602;
t42 = t100 * t483 - t99 * t480;
t41 = -t97 * t480 + t483 * t98;
t39 = t560 + t562;
t37 = t138 * t191 + t167 * t764 - t168 * t238;
t36 = t143 + t655 / 0.2e1;
t35 = t204 + t143;
t34 = t204 - t665 / 0.2e1;
t30 = t713 / 0.2e1;
t29 = t152 * t482 + (t110 * t483 + t111 * t480) * t479;
t28 = t151 * t482 + (t108 * t483 + t109 * t480) * t479;
t27 = -t479 * t484 + t670 + t682 + t690 + t734;
t20 = (t160 + t522) * t482 + (t116 * t483 + t117 * t480 - t223) * t479;
t19 = t102 + t30 - t662 / 0.2e1;
t18 = t166 + t102 - t713 / 0.2e1;
t17 = t166 + t30 - t669 / 0.2e1;
t12 = (t130 + t524) * t482 + (t100 * t480 + t483 * t99 - t187) * t479;
t11 = (t129 + t523) * t482 + (t480 * t98 + t483 * t97 - t188) * t479;
t9 = t643 + t644;
t7 = m(7) * t73 + t507;
t6 = t563 * t617;
t5 = m(7) * t37 + (t645 / 0.2e1 + t647 / 0.2e1 + t20 / 0.2e1) * t482 + (t12 * t696 + t11 * t698 - t69 / 0.2e1) * t479;
t4 = t480 * t494 + t483 * t493;
t3 = t487 + t539;
t2 = t495 + t487 - t709 / 0.2e1 + (t151 / 0.4e1 + t121 / 0.4e1) * t480 + (-t152 / 0.4e1 - t122 / 0.4e1) * t483;
t1 = t495 - t712 / 0.2e1 + (t223 / 0.2e1 + (-t130 / 0.4e1 - t116 / 0.4e1) * t483 + (-t129 / 0.4e1 - t117 / 0.4e1) * t480) * t479 + (-t160 / 0.2e1 + (-t187 / 0.4e1 - t163 / 0.4e1) * t483 + (-t188 / 0.4e1 - t164 / 0.4e1) * t480) * t482 + t539;
t8 = [t55 * qJD(2) + t66 * qJD(3) + t27 * qJD(4) + t84 * qJD(5) + t72 * qJD(6), qJD(1) * t55 + qJD(3) * t192 + qJD(4) * t39 + qJD(5) * t241 + qJD(6) * t47, qJD(1) * t66 + qJD(2) * t192 + qJD(4) * t43 + qJD(6) * t49, t27 * qJD(1) + t39 * qJD(2) + t43 * qJD(3) + t9 * qJD(5) + t3 * qJD(6) + ((t268 * t337 + t269 * t334 + t324 * t338 + t325 * t335) * t718 + (t207 * t285 + t275 * t288 + t276 * t286 + t287 * t746) * t717) * t720 + ((m(5) * (-t307 * t538 - t409 * t445) + t117 / 0.2e1 + t129 / 0.2e1 + t552 * t483 - t493) * qJD(4) + (t367 / 0.2e1 - t393 / 0.2e1 - t360 / 0.2e1 + t404 / 0.2e1) * t575 + (t369 / 0.2e1 + t391 / 0.2e1 - t364 / 0.2e1 - t401 / 0.2e1) * t576) * t483 + ((m(5) * (-t308 * t538 + t412 * t445) - t116 / 0.2e1 - t130 / 0.2e1 + t552 * t480 - t494) * qJD(4) + (-t366 / 0.2e1 + t394 / 0.2e1 + t361 / 0.2e1 - t405 / 0.2e1) * t575 + (-t368 / 0.2e1 - t392 / 0.2e1 + t365 / 0.2e1 + t402 / 0.2e1) * t576) * t480, qJD(2) * t241 + qJD(4) * t9 + qJD(6) * t35 + t757, t72 * qJD(1) + t47 * qJD(2) + t49 * qJD(3) + t3 * qJD(4) + t35 * qJD(5) + (m(7) * (t207 * t254 - t238 * t315 + t253 * t746 - t316 * t764) + t170) * qJD(6) + ((t151 / 0.2e1 + t121 / 0.2e1) * t483 + (t152 / 0.2e1 + t704 - t563) * t480) * t574; t193 * qJD(3) + t38 * qJD(4) + t242 * qJD(5) + t46 * qJD(6) + (-t666 / 0.4e1 - t678 / 0.4e1 - t688 / 0.4e1 - t691 / 0.4e1 - t693 / 0.4e1) * t721, 0, t572, t762 + ((-t334 * t483 + t337 * t480) * t718 + (-t285 * t483 + t287 * t480) * t717) * t720 + qJD(6) * t565, t571, t46 * qJD(1) + t104 + (t253 * t480 - t254 * t483) * t650; -t193 * qJD(2) - t45 * qJD(4) + t48 * qJD(6) + (-t667 / 0.4e1 - t679 / 0.4e1 - t689 / 0.4e1 - t692 / 0.4e1) * t721, -t572, 0, -t763 + (-m(5) * t538 * t702 + t515 * t718 + t519 * t717) * t720 + t317 * qJD(5) + t82 * qJD(6), t317 * qJD(4), t48 * qJD(1) + t82 * qJD(4) + t520 * t650; -t38 * qJD(2) + t45 * qJD(3) + t4 * qJD(4) + t745 * qJD(5) + t1 * qJD(6) + (-t690 / 0.4e1 - t682 / 0.4e1 - t670 / 0.4e1) * t721 + t484 * t577 - t734 * qJD(1), -t762 - t112 * t650 / 0.2e1, qJD(6) * t83 + t763, t4 * qJD(1) + t65 * qJD(5) + t7 * qJD(6) + (m(7) * (t144 * t172 + t285 * t286 + t287 * t288) + m(6) * (t210 * t235 + t334 * t335 + t337 * t338) + m(5) * ((-t480 * (rSges(5,3) * t483 + t480 * t538) + (-t483 * t538 + t471) * t483) * t305 - t336 * t538) + (t42 + ((t547 + t549) * t482 + ((t581 - t583) * t482 - t729) * t480 + (t548 + t550 + (-t582 + t585) * t480) * t479) * t483 + (t397 + t400) * t476) * t700 + (t41 + (-t483 * t397 + (-t480 * t583 + t549) * t482 + (t480 * t585 + t550) * t479) * t480 + (-t483 * t400 + (t480 * t581 + t547) * t482 + (-t480 * t582 + t548) * t479) * t480 + t729 * t477) * t696) * qJD(4), t65 * qJD(4) - 0.4e1 * qJD(5) * t733 + t18 * qJD(6) + t767, t1 * qJD(1) + t607 + t7 * qJD(4) + t18 * qJD(5) + t573 * t754 + (t69 / 0.2e1 + (t52 / 0.2e1 - t12 / 0.2e1) * t483 + (t53 / 0.2e1 - t11 / 0.2e1) * t480) * t574 + (t28 * t700 + t29 * t696 + (-t20 / 0.2e1 + (t704 + t716) * t483 + (-t121 / 0.2e1 - t64 / 0.2e1) * t480) * t482 + (-t208 * t144 + t162 * t406 + t191 * t516 + t253 * t288 + t254 * t286 - t37) * m(7)) * qJD(6); -t242 * qJD(2) - qJD(4) * t745 + t34 * qJD(6) - t757, -t571, 0, -t767 + t261 * qJD(5) + t17 * qJD(6) + 0.4e1 * (-t671 / 0.4e1 - t681 / 0.4e1) * qJD(4) + ((t479 * t172 + t596) * t717 + (t479 * t235 + t590) * t718 + ((t144 - t519) * t717 + (t210 - t515) * t718) * t482) * t720, t261 * qJD(4), t34 * qJD(1) + t17 * qJD(4) + (-t208 * t479 - t482 * t520) * t650; -t509 * qJD(1) + t51 * qJD(2) + t50 * qJD(3) + t2 * qJD(4) + t36 * qJD(5) + t6 * qJD(6) - t724 * t577, qJD(1) * t51 + t104, qJD(1) * t50 - qJD(4) * t83, t2 * qJD(1) - t607 + (t11 * t696 - (t136 * t480 - t137 * t483) * t613 / 0.2e1 + t41 * t617 / 0.2e1 + t759 * t608 / 0.2e1 + t42 * t616 / 0.2e1 + (-t163 * t480 + t164 * t483) * t701 + (-t116 * t480 + t117 * t483) * t697 + t12 * t700 - t507) * qJD(4) + t19 * qJD(5) + t5 * qJD(6) + (t573 / 0.2e1 + (t138 * t144 + t167 * t288 + t168 * t286 + t172 * t191 - t238 * t285 + t287 * t764 - t73) * qJD(4)) * m(7), qJD(1) * t36 + qJD(4) * t19, t6 * qJD(1) + t5 * qJD(4) + (t170 * t697 + m(7) * (-t191 * t208 - t238 * t254 + t253 * t764) + (t28 * t696 + t29 * t698 + (t121 * t483 + t122 * t480) * t697) * t479) * qJD(6);];
Cq  = t8;
